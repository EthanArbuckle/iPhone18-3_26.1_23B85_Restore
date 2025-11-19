google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::MpRepeatedFixed<true>(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v10 = a4 & 7;
  if (v10 == 2)
  {

    return google::protobuf::internal::TcParser::MpPackedFixed<true>(a1, a2, a3, a4, a5, a6);
  }

  v12 = (a5 + HIDWORD(a4));
  v13 = a5 + *(a5 + 6);
  v14 = *(v13 + 2);
  v15 = *(*(a5 + 4) + v14);
  v16 = *(a1 + v14);
  if (v16 != v15)
  {
    if ((*(v12 + 5) & 0x1C0) == 0xC0)
    {
      goto LABEL_7;
    }

LABEL_27:
    if (v10 != 5)
    {
      goto LABEL_41;
    }

    v17 = a6;
    v35 = *v12;
    v36 = *&v16[v35];
    if (v36 != &google::protobuf::internal::kZeroBuffer)
    {
      goto LABEL_34;
    }

    v37 = *(a1 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      v38 = a2;
      if (v37)
      {
LABEL_31:
        v36 = google::protobuf::Arena::Allocate(v37);
        *v36 = 0;
        *(v36 + 1) = v37;
        *&v16[v35] = v36;
        a2 = v38;
        while (1)
        {
LABEL_34:
          v40 = *a2;
          v41 = *v36;
          if (*v36 == v36[1])
          {
            v44 = a2;
            google::protobuf::RepeatedField<int>::Grow(v36, *v36, (v41 + 1));
            a2 = v44;
            v41 = *v36;
          }

          v42 = *(v36 + 1);
          *v36 = v41 + 1;
          *(v42 + 4 * v41) = v40;
          v26 = a2 + 4;
          if (*a3 <= (a2 + 4))
          {
            goto LABEL_47;
          }

          LODWORD(v43) = a2[4];
          v39 = a2 + 5;
          if (a2[4] < 0)
          {
            v43 = (v43 + (*v39 << 7) - 128);
            if (*v39 < 0)
            {
              google::protobuf::internal::ReadTagFallback((a2 + 4), v43);
              if (!v39)
              {
LABEL_50:

                return google::protobuf::internal::TcParser::Error(a1, v28, v29, v30, a5, v17);
              }

              LODWORD(v43) = v28;
            }

            else
            {
              v39 = a2 + 6;
            }
          }

          a2 = v39;
          if (v43 != a4)
          {
LABEL_42:
            if (*a3 <= v26)
            {
              goto LABEL_47;
            }

            v50 = *v26;
            v51 = &a5[(v50 & a5[4])];
            v45 = *(v51 + 6);
            v48 = *(v51 + 7) ^ v50;
            v46 = a1;
            a2 = v26;
            v47 = a3;
            v49 = a5;
            goto LABEL_44;
          }
        }
      }
    }

    else
    {
      v38 = a2;
      if (v37)
      {
        goto LABEL_31;
      }
    }

    operator new();
  }

  v52 = a6;
  v32 = *(v13 + 4);
  v33 = *(a1 + 8);
  if (v33)
  {
    v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    v53 = a2;
    if (v33)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v53 = a2;
    if (v33)
    {
LABEL_23:
      v34 = google::protobuf::Arena::Allocate(v33);
      goto LABEL_26;
    }
  }

  v34 = operator new(v32);
LABEL_26:
  *(a1 + v14) = v34;
  memcpy(v34, v15, v32);
  v16 = *(a1 + v14);
  LODWORD(a6) = v52;
  a2 = v53;
  if ((*(v12 + 5) & 0x1C0) != 0xC0)
  {
    goto LABEL_27;
  }

LABEL_7:
  if (v10 == 1)
  {
    v17 = a6;
    v18 = *v12;
    v19 = *&v16[v18];
    if (v19 != &google::protobuf::internal::kZeroBuffer)
    {
      goto LABEL_14;
    }

    v20 = *(a1 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      v21 = a2;
      if (v20)
      {
LABEL_11:
        v19 = google::protobuf::Arena::Allocate(v20);
        *v19 = 0;
        *(v19 + 1) = v20;
        *&v16[v18] = v19;
        a2 = v21;
        while (1)
        {
LABEL_14:
          v23 = *a2;
          v24 = *v19;
          if (*v19 == v19[1])
          {
            v31 = a2;
            google::protobuf::RepeatedField<long long>::Grow(v19, *v19);
            a2 = v31;
            v24 = *v19;
          }

          v25 = *(v19 + 1);
          *v19 = v24 + 1;
          *(v25 + 8 * v24) = v23;
          v26 = a2 + 8;
          if (*a3 <= (a2 + 8))
          {
            break;
          }

          LODWORD(v27) = a2[8];
          v22 = a2 + 9;
          if (a2[8] < 0)
          {
            v27 = (v27 + (*v22 << 7) - 128);
            if (*v22 < 0)
            {
              google::protobuf::internal::ReadTagFallback((a2 + 8), v27);
              if (!v22)
              {
                goto LABEL_50;
              }

              LODWORD(v27) = v28;
            }

            else
            {
              v22 = a2 + 10;
            }
          }

          a2 = v22;
          if (v27 != a4)
          {
            goto LABEL_42;
          }
        }

LABEL_47:
        if (*a5)
        {
          *(a1 + *a5) |= v17;
        }

        return v26;
      }
    }

    else
    {
      v21 = a2;
      if (v20)
      {
        goto LABEL_11;
      }
    }

    operator new();
  }

LABEL_41:
  v45 = *(a5 + 5);
  v46 = a1;
  v47 = a3;
  v48 = a4;
  v49 = a5;
LABEL_44:

  return v45(v46, a2, v47, v48, v49);
}

uint64_t google::protobuf::internal::TcParser::MpRepeatedString<true>(uint64_t a1, char *a2, void *a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  if ((a4 & 7) != 2)
  {
    v26 = *(a5 + 5);
    goto LABEL_80;
  }

  v93 = HIDWORD(a4);
  v10 = (a5 + HIDWORD(a4));
  v11 = *(v10 + 5);
  v12 = v11 & 0x1C0;
  v13 = a5 + *(a5 + 6);
  v14 = *(v13 + 2);
  v15 = *(*(a5 + 4) + v14);
  v95 = a1;
  v16 = *(a1 + v14);
  if (v16 != v15)
  {
    if (v12 == 256)
    {
      goto LABEL_4;
    }

    goto LABEL_77;
  }

  v27 = *(v13 + 4);
  v28 = *(a1 + 8);
  if (v28)
  {
    v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    v92 = (a5 + HIDWORD(a4));
    if (v28)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v92 = (a5 + HIDWORD(a4));
    if (v28)
    {
LABEL_15:
      v29 = google::protobuf::Arena::Allocate(v28);
      goto LABEL_76;
    }
  }

  v29 = operator new(v27);
LABEL_76:
  *(v95 + v14) = v29;
  memcpy(v29, v15, v27);
  v16 = *(v95 + v14);
  v10 = v92;
  if (v12 != 256)
  {
LABEL_77:
    v41 = v9;
LABEL_78:
    if (*v8 <= v41)
    {
LABEL_83:
      if (*a5)
      {
        *(v95 + *a5) |= a6;
      }

      return v41;
    }

    v90 = *v41;
    v91 = &a5[(v90 & a5[4])];
    v26 = *(v91 + 6);
    a4 = *(v91 + 7) ^ v90;
    a1 = v95;
    a2 = v41;
    a3 = v8;
LABEL_80:

    return v26(a1, a2, a3, a4, a5);
  }

LABEL_4:
  v17 = v11 & 0x600;
  v18 = *v10;
  v19 = *&v16[v18];
  if (v19 != &google::protobuf::internal::kZeroBuffer)
  {
    goto LABEL_8;
  }

  v20 = *(v95 + 8);
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    v21 = v10;
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_87:
    operator new();
  }

  v21 = v10;
  if (!v20)
  {
    goto LABEL_87;
  }

LABEL_7:
  v19 = google::protobuf::Arena::Allocate(v20);
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = v20;
  *&v16[v18] = v19;
  v10 = v21;
LABEL_8:
  if (!*(v19 + 16) || (v22 = google::protobuf::internal::ThreadSafeArena::thread_cache_(), *(v22 + 8) != *v23) || ((v24 = *v19, (*v19 & 1) != 0) ? (v25 = *(v24 - 1)) : (v25 = v24 != 0), v25 != *(v19 + 8)))
  {
    while (1)
    {
      v85 = v10;
      v86 = google::protobuf::internal::RepeatedPtrFieldBase::AddString(v19);
      v87 = google::protobuf::internal::InlineGreedyStringParser(v86, v9);
      if (!v87)
      {
        goto LABEL_61;
      }

      v41 = v87;
      v88 = v86[23];
      if (v88 < 0)
      {
        v89 = v86;
        v86 = *v86;
        v88 = *(v89 + 1);
      }

      if ((google::protobuf::internal::TcParser::MpVerifyUtf8(v86, v88, a5, v85, v17) & 1) == 0)
      {
        goto LABEL_61;
      }

      if (*v8 <= v41)
      {
        goto LABEL_83;
      }

      v9 = v41 + 1;
      LODWORD(v83) = *v41;
      v10 = v85;
      if (*v41 < 0)
      {
        v83 = (v83 + (*v9 << 7) - 128);
        if (*v9 < 0)
        {
          google::protobuf::internal::ReadTagFallback(v41, v83);
          v10 = v85;
          v9 = v84;
        }

        else
        {
          v9 = v41 + 2;
        }
      }

      if (v83 != v7)
      {
        goto LABEL_78;
      }
    }
  }

  v30 = *(v22 + 16);
  while (1)
  {
    v31 = *v9;
    if (*v9 < 0)
    {
      google::protobuf::internal::ReadSizeFallback(v9, *v9);
      if (!v45)
      {
        goto LABEL_61;
      }

      v32 = v45;
      v31 = v38;
      v33 = *(v30 + 5);
      if (v33)
      {
LABEL_23:
        v34 = v33 - 24;
        *(v30 + 5) = v34;
        v35 = (*(v30 + 4) + v34 + 16);
        v35->__r_.__value_.__r.__words[0] = 0;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v36 = *(v19 + 8);
        if (v36 > *(v19 + 12))
        {
          goto LABEL_36;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v32 = v9 + 1;
      v33 = *(v30 + 5);
      if (v33)
      {
        goto LABEL_23;
      }
    }

    v35 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v30);
    v35->__r_.__value_.__r.__words[0] = 0;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v36 = *(v19 + 8);
    if (v36 > *(v19 + 12))
    {
LABEL_36:
      *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v19, 1) = v35;
      ++*(*v19 - 1);
      v36 = *(v19 + 8);
      goto LABEL_27;
    }

LABEL_24:
    if (*v19)
    {
      *(*v19 + 8 * v36 + 7) = v35;
      ++*(*v19 - 1);
    }

    else
    {
      *v19 = v35;
    }

LABEL_27:
    *(v19 + 8) = v36 + 1;
    String = google::protobuf::internal::EpsCopyInputStream::ReadString(v8, v32, v31, v35);
    if (!String)
    {
      goto LABEL_61;
    }

    v41 = String;
    v42 = *v19 + 8 * *(v19 + 8) - 1;
    if ((*v19 & 1) == 0)
    {
      v42 = v19;
    }

    v43 = *v42;
    v44 = *(*v42 + 23);
    if ((v44 & 0x8000000000000000) == 0)
    {
      break;
    }

    v43 = *v43;
    v44 = *(*v42 + 8);
    if (v17 == 1024)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (*v8 <= v41)
    {
      goto LABEL_83;
    }

    v9 = v41 + 1;
    LODWORD(v47) = *v41;
    if (*v41 < 0)
    {
      v47 = (v47 + (*v9 << 7) - 128);
      if (*v9 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v41, v47);
        v9 = v48;
      }

      else
      {
        v9 = v41 + 2;
      }
    }

    if (v47 != v7)
    {
      goto LABEL_78;
    }
  }

  if (v17 != 1024)
  {
    goto LABEL_39;
  }

LABEL_38:
  if (utf8_range::IsStructurallyValid(v43, v44))
  {
    goto LABEL_39;
  }

  v49 = &a5[4 * a5[11]] + *(a5 + 6);
  v50 = 0xAAAAAAAAAAAAAAABLL * ((v93 - *(a5 + 4)) >> 2);
  v51 = __CFADD__(v50, 1);
  v52 = v50 + 1;
  v53 = &v49[v50 + 1];
  if (v51)
  {
    v54 = (a5[10] + 8) & 0x1FFF8;
  }

  else
  {
    if (v52 < 4)
    {
      v54 = (a5[10] + 8) & 0x1FFF8;
      v55 = &a5[4 * a5[11]] + *(a5 + 6);
      goto LABEL_59;
    }

    if (v52 >= 0x10)
    {
      v56 = v52 & 0xFFFFFFFFFFFFFFF0;
      v57 = 0uLL;
      v58 = ((a5[10] + 8) & 0x1FFF8);
      v46.i32[1] = -255;
      v59 = v52 & 0xFFFFFFFFFFFFFFF0;
      v60 = (&a5[4 * a5[11]] + *(a5 + 6));
      v61 = 0uLL;
      v62 = 0uLL;
      v63 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v67 = *v60++;
        v68 = vqtbl1q_s8(v67, xmmword_23CE4EF60);
        v69 = vqtbl1q_s8(v67, xmmword_23CE4EF70);
        v70 = vqtbl1q_s8(v67, xmmword_23CE4EF80);
        v71 = vqtbl1q_s8(v67, xmmword_23CE4EF90);
        v57 = vaddw_high_u32(v57, v69);
        v62 = vaddw_high_u32(v62, v68);
        v61 = vaddw_u32(v61, *v68.i8);
        v58 = vaddw_u32(v58, *v69.i8);
        v63 = vaddw_u32(v63, *v70.i8);
        v64 = vaddw_high_u32(v64, v70);
        v65 = vaddw_u32(v65, *v71.i8);
        v66 = vaddw_high_u32(v66, v71);
        v59 -= 16;
      }

      while (v59);
      v54 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v58, v63), vaddq_s64(v61, v65)), vaddq_s64(vaddq_s64(v57, v64), vaddq_s64(v62, v66))));
      if (v52 != v56)
      {
        if ((v52 & 0xC) == 0)
        {
          v55 = &v49[v56];
          goto LABEL_59;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v56 = 0;
      v54 = (a5[10] + 8) & 0x1FFF8;
LABEL_54:
      v55 = &v49[v52 & 0xFFFFFFFFFFFFFFFCLL];
      v72 = 0uLL;
      v73 = v54;
      v74 = &v49[v56];
      v75 = v56 - (v52 & 0xFFFFFFFFFFFFFFFCLL);
      v76.i64[0] = 255;
      v76.i64[1] = 255;
      do
      {
        v77 = *v74;
        v74 += 4;
        v46.i32[0] = v77;
        v78 = vmovl_u16(*&vmovl_u8(*v46.i8));
        v79.i64[0] = v78.u32[0];
        v79.i64[1] = v78.u32[1];
        v80 = vandq_s8(v79, v76);
        v79.i64[0] = v78.u32[2];
        v79.i64[1] = v78.u32[3];
        v46 = vandq_s8(v79, v76);
        v72 = vaddq_s64(v72, v46);
        v73 = vaddq_s64(v73, v80);
        v75 += 4;
      }

      while (v75);
      v54 = vaddvq_s64(vaddq_s64(v73, v72));
      if (v52 != (v52 & 0xFFFFFFFFFFFFFFFCLL))
      {
        do
        {
LABEL_59:
          v81 = *v55++;
          v54 += v81;
        }

        while (v55 != v53);
      }
    }
  }

  google::protobuf::internal::PrintUTF8ErrorLog(&v49[(a5[10] + 8) & 0x1FFF8], *v49, &v49[v54], *v53, "parsing");
LABEL_61:

  return google::protobuf::internal::TcParser::Error(v95, v38, v39, v40, a5, a6);
}

unsigned __int16 *google::protobuf::internal::TcParser::MpRepeatedMessageOrGroup<true,false>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  if ((a4 & 7) != 2)
  {
    v19 = *(a5 + 5);
LABEL_44:

    return v19(a1, a2, a3, a4, a5);
  }

  v11 = (a5 + HIDWORD(a4));
  v12 = *(v11 + 5);
  v13 = a5 + *(a5 + 6);
  v14 = *(v13 + 2);
  v15 = *(*(a5 + 4) + v14);
  v16 = *(a1 + v14);
  if (v16 == v15)
  {
    v20 = *(v13 + 4);
    v21 = *(a1 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      v50 = *(v11 + 5);
      if (v21)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v50 = *(v11 + 5);
      if (v21)
      {
LABEL_8:
        v22 = google::protobuf::Arena::Allocate(v21);
        goto LABEL_11;
      }
    }

    v22 = operator new(v20);
LABEL_11:
    *(v10 + v14) = v22;
    memcpy(v22, v15, v20);
    v16 = *(v10 + v14);
    v12 = v50;
    v17 = *v11;
    v18 = *&v16[v17];
    if (v18 == &google::protobuf::internal::kZeroBuffer)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v17 = *v11;
  v18 = *&v16[v17];
  if (v18 == &google::protobuf::internal::kZeroBuffer)
  {
LABEL_12:
    v23 = *(v10 + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      v51 = v12;
      if (v23)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v51 = v12;
      if (v23)
      {
LABEL_14:
        v18 = google::protobuf::Arena::Allocate(v23);
        *v18 = 0;
        *(v18 + 8) = 0;
        *(v18 + 16) = v23;
        *&v16[v17] = v18;
        v12 = v51;
        goto LABEL_15;
      }
    }

    operator new();
  }

LABEL_15:
  v24 = *(&v6[4 * *(v11 + 4)] + *(v6 + 6));
  if ((v12 & 0x600) != 0x200)
  {
    if ((v12 & 0x600) == 0x400)
    {
      v25 = *(v24 + 4);
      while (1)
      {
        v26 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v18, v25);
        v29 = *v9;
        if ((v29 & 0x80) != 0)
        {
          v34 = v26;
          google::protobuf::internal::ReadSizeFallback(v9, v29);
          v30 = v35;
          if (!v35)
          {
            goto LABEL_50;
          }

          v26 = v34;
          v36 = *(v8 + 88);
          v32 = __OFSUB__(v36, 1);
          v33 = v36 - 1;
          if (v33 < 0 != v32)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v30 = (v9 + 1);
          v31 = *(v8 + 88);
          v32 = __OFSUB__(v31, 1);
          v33 = v31 - 1;
          if (v33 < 0 != v32)
          {
            goto LABEL_50;
          }
        }

        v37 = *(v8 + 8);
        v38 = v29 + v30 - v37;
        *v8 = v37 + (v38 & (v38 >> 31));
        LODWORD(v37) = *(v8 + 28);
        *(v8 + 28) = v38;
        v39 = v37 - v38;
        *(v8 + 88) = v33;
        result = google::protobuf::internal::TcParser::ParseLoop(v26, v30, v8, v24);
        ++*(v8 + 88);
        v41 = *(v8 + 28) + v39;
        *(v8 + 28) = v41;
        if (*(v8 + 80))
        {
          goto LABEL_50;
        }

        v42 = *(v8 + 8) + (v41 & (v41 >> 31));
        *v8 = v42;
        if (!result)
        {
          goto LABEL_50;
        }

        if (v42 <= result)
        {
          goto LABEL_47;
        }

        v9 = (result + 1);
        LODWORD(v29) = *result;
        if (*result < 0)
        {
          v29 = v29 + (*v9 << 7) - 128;
          if (*v9 < 0)
          {
            v43 = result;
            google::protobuf::internal::ReadTagFallback(result, v29);
            v9 = v44;
            if (!v44)
            {
              goto LABEL_50;
            }

            result = v43;
          }

          else
          {
            v9 = (result + 1);
          }
        }

        if (v29 != v7)
        {
          goto LABEL_42;
        }
      }
    }

    v24 = *v24;
  }

  while (1)
  {
    v45 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v18, v24);
    result = google::protobuf::internal::ParseContext::ParseMessage(v8, v45, v9);
    if (!result)
    {
      break;
    }

    if (*v8 <= result)
    {
      goto LABEL_47;
    }

    v9 = (result + 1);
    LODWORD(v29) = *result;
    if (*result < 0)
    {
      v29 = v29 + (*v9 << 7) - 128;
      if (*v9 < 0)
      {
        v46 = result;
        google::protobuf::internal::ReadTagFallback(result, v29);
        v9 = v47;
        if (!v47)
        {
          break;
        }

        result = v46;
      }

      else
      {
        v9 = (result + 1);
      }
    }

    if (v29 != v7)
    {
LABEL_42:
      if (*v8 > result)
      {
        v48 = *result;
        v49 = &v6[(v48 & v6[4])];
        v19 = *(v49 + 6);
        a4 = *(v49 + 7) ^ v48;
        a2 = result;
        a1 = v10;
        a3 = v8;
        a5 = v6;
        goto LABEL_44;
      }

LABEL_47:
      if (*v6)
      {
        *(v10 + *v6) |= a6;
      }

      return result;
    }
  }

LABEL_50:

  return google::protobuf::internal::TcParser::Error(v10, v29, v27, v28, v6, a6);
}

unsigned __int16 *google::protobuf::internal::TcParser::MpRepeatedMessageOrGroup<true,true>(uint64_t a1, unsigned __int16 *a2, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  v7 = a4;
  if ((a4 & 7) != 3)
  {
    v19 = *(a5 + 5);
LABEL_6:

    return v19();
  }

  v11 = (a5 + HIDWORD(a4));
  v12 = *(v11 + 5);
  v13 = a5 + *(a5 + 6);
  v14 = *(v13 + 2);
  v15 = *(*(a5 + 4) + v14);
  v16 = *(a1 + v14);
  if (v16 == v15)
  {
    v21 = *(v13 + 4);
    v22 = *(a1 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      v46 = *(v11 + 5);
      if (v22)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v46 = *(v11 + 5);
      if (v22)
      {
LABEL_11:
        v23 = google::protobuf::Arena::Allocate(v22);
        goto LABEL_14;
      }
    }

    v23 = operator new(v21);
LABEL_14:
    *(a1 + v14) = v23;
    memcpy(v23, v15, v21);
    v16 = *(a1 + v14);
    v12 = v46;
    v17 = *v11;
    v18 = *&v16[v17];
    if (v18 == &google::protobuf::internal::kZeroBuffer)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v17 = *v11;
  v18 = *&v16[v17];
  if (v18 == &google::protobuf::internal::kZeroBuffer)
  {
LABEL_15:
    v24 = *(a1 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      v47 = v12;
      if (v24)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v47 = v12;
      if (v24)
      {
LABEL_17:
        v18 = google::protobuf::Arena::Allocate(v24);
        *v18 = 0;
        *(v18 + 8) = 0;
        *(v18 + 16) = v24;
        *&v16[v17] = v18;
        v12 = v47;
        goto LABEL_18;
      }
    }

    operator new();
  }

LABEL_18:
  v25 = *(&a5[4 * *(v11 + 4)] + *(a5 + 6));
  if ((v12 & 0x600) == 0x200)
  {
LABEL_37:
    while (1)
    {
      v37 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v18, v25);
      v38 = a3[11].i32[0];
      v32 = __OFSUB__(v38, 1);
      a3[11].i32[0] = --v38;
      if (v38 < 0 != v32)
      {
        break;
      }

      ++a3[11].i32[1];
      result = (*(*v37 + 56))(v37, a2, a3);
      a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
      v39 = a3[10].i32[0];
      a3[10].i32[0] = 0;
      if (v39 != v7 || result == 0)
      {
        break;
      }

      if (*a3 <= result)
      {
        goto LABEL_52;
      }

      a2 = (result + 1);
      LODWORD(v28) = *result;
      if (*result < 0)
      {
        v28 = v28 + (*a2 << 7) - 128;
        if (*a2 < 0)
        {
          v41 = result;
          google::protobuf::internal::ReadTagFallback(result, v28);
          a2 = v42;
          if (!v42)
          {
            break;
          }

          result = v41;
        }

        else
        {
          a2 = result + 1;
        }
      }

      if (v28 != v7)
      {
LABEL_50:
        if (*a3 > result)
        {
          v43 = *result;
          v44 = &a5[(v43 & a5[4])];
          v19 = *(v44 + 6);
          v45 = *(v44 + 7) ^ v43;
          goto LABEL_6;
        }

LABEL_52:
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
    if ((v12 & 0x600) != 0x400)
    {
      v25 = *v25;
      goto LABEL_37;
    }

    v26 = *(v25 + 4);
    while (1)
    {
      v27 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v18, v26);
      v31 = a3[11].i32[0];
      v32 = __OFSUB__(v31, 1);
      a3[11].i32[0] = --v31;
      if (v31 < 0 != v32)
      {
        break;
      }

      ++a3[11].i32[1];
      result = google::protobuf::internal::TcParser::ParseLoop(v27, a2, a3, v25);
      a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
      v33 = a3[10].i32[0];
      a3[10].i32[0] = 0;
      if (v33 != v7 || result == 0)
      {
        break;
      }

      if (*a3 <= result)
      {
        goto LABEL_52;
      }

      a2 = (result + 1);
      LODWORD(v28) = *result;
      if (*result < 0)
      {
        v28 = v28 + (*a2 << 7) - 128;
        if (*a2 < 0)
        {
          v35 = result;
          google::protobuf::internal::ReadTagFallback(result, v28);
          a2 = v36;
          if (!v36)
          {
            break;
          }

          result = v35;
        }

        else
        {
          a2 = result + 1;
        }
      }

      if (v28 != v7)
      {
        goto LABEL_50;
      }
    }
  }

  return google::protobuf::internal::TcParser::Error(a1, v28, v29, v30, a5, a6);
}

char *google::protobuf::internal::TcParser::SingularVarBigint<BOOL,unsigned short,false>(uint64_t a1, google::protobuf::internal *this, void *a3, uint64_t a4, unsigned __int16 *a5, int a6)
{
  v19 = HIWORD(a4);
  *v23 = 0;
  v6 = *this;
  if ((*this & 0x80) == 0)
  {
    v7 = *this & 0x7FLL;
    v8 = this + 1;
    goto LABEL_3;
  }

  if ((v6 & 0x8000) == 0)
  {
    v7 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
    v8 = this + 2;
    goto LABEL_3;
  }

  v18 = a3;
  v14 = google::protobuf::internal::VarintParseSlowArm(this, v23, v6);
  if (v14)
  {
    v8 = v14;
    v7 = *v23;
    a3 = v18;
LABEL_3:
    *(a1 + v19) = v7 != 0;
    if (*a3 <= v8)
    {
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v8;
    }

    else
    {
      v9 = *v8;
      v10 = &a5[(v9 & a5[4])];
      v11 = *(v10 + 6);
      v12 = *(v10 + 7) ^ v9;

      return v11(a1);
    }
  }

  return google::protobuf::internal::TcParser::Error(a1, v15, v16, v17, a5, a6);
}

char *google::protobuf::internal::TcParser::SingularVarBigint<unsigned int,unsigned short,false>(uint64_t a1, google::protobuf::internal *this, void *a3, uint64_t a4, unsigned __int16 *a5, int a6)
{
  v18 = HIWORD(a4);
  *v22 = 0;
  v6 = *this;
  if ((*this & 0x80) == 0)
  {
    LODWORD(v6) = v6 & 0x7F;
    v7 = this + 1;
    goto LABEL_3;
  }

  if ((v6 & 0x8000) == 0)
  {
    v6 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
    v7 = this + 2;
    goto LABEL_3;
  }

  v17 = a3;
  v13 = google::protobuf::internal::VarintParseSlowArm(this, v22, v6);
  if (v13)
  {
    v7 = v13;
    LODWORD(v6) = *v22;
    a3 = v17;
LABEL_3:
    *(a1 + v18) = v6;
    if (*a3 <= v7)
    {
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v7;
    }

    else
    {
      v8 = *v7;
      v9 = &a5[(v8 & a5[4])];
      v10 = *(v9 + 6);
      v11 = *(v9 + 7) ^ v8;

      return v10();
    }
  }

  return google::protobuf::internal::TcParser::Error(a1, v14, v15, v16, a5, a6);
}

char *google::protobuf::internal::TcParser::SingularVarBigint<unsigned long long,unsigned short,false>(uint64_t a1, google::protobuf::internal *this, void *a3, uint64_t a4, unsigned __int16 *a5, int a6)
{
  v19 = HIWORD(a4);
  *v23 = 0;
  v6 = *this;
  if ((*this & 0x80) == 0)
  {
    v7 = *this & 0x7FLL;
    v8 = this + 1;
    goto LABEL_3;
  }

  if ((v6 & 0x8000) == 0)
  {
    v7 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
    v8 = this + 2;
    goto LABEL_3;
  }

  v18 = a3;
  v14 = google::protobuf::internal::VarintParseSlowArm(this, v23, v6);
  if (v14)
  {
    v8 = v14;
    v7 = *v23;
    a3 = v18;
LABEL_3:
    *(a1 + v19) = v7;
    if (*a3 <= v8)
    {
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v8;
    }

    else
    {
      v9 = *v8;
      v10 = &a5[(v9 & a5[4])];
      v11 = *(v10 + 6);
      v12 = *(v10 + 7) ^ v9;

      return v11();
    }
  }

  return google::protobuf::internal::TcParser::Error(a1, v15, v16, v17, a5, a6);
}

char *google::protobuf::internal::TcParser::SingularVarBigint<int,unsigned char,true>(uint64_t a1, google::protobuf::internal *this, void *a3, uint64_t a4, unsigned __int16 *a5, int a6)
{
  v18 = HIWORD(a4);
  *v22 = 0;
  v6 = *this;
  if ((*this & 0x80) == 0)
  {
    LODWORD(v6) = v6 & 0x7F;
    v7 = this + 1;
    goto LABEL_3;
  }

  if ((v6 & 0x8000) == 0)
  {
    v6 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
    v7 = this + 2;
    goto LABEL_3;
  }

  v17 = a3;
  v13 = google::protobuf::internal::VarintParseSlowArm(this, v22, v6);
  if (v13)
  {
    v7 = v13;
    LODWORD(v6) = *v22;
    a3 = v17;
LABEL_3:
    *(a1 + v18) = -(v6 & 1) ^ (v6 >> 1);
    if (*a3 <= v7)
    {
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v7;
    }

    else
    {
      v8 = *v7;
      v9 = &a5[(v8 & a5[4])];
      v10 = *(v9 + 6);
      v11 = *(v9 + 7) ^ v8;

      return v10();
    }
  }

  return google::protobuf::internal::TcParser::Error(a1, v14, v15, v16, a5, a6);
}

char *google::protobuf::internal::TcParser::SingularVarBigint<long long,unsigned char,true>(uint64_t a1, google::protobuf::internal *this, void *a3, uint64_t a4, unsigned __int16 *a5, int a6)
{
  v19 = HIWORD(a4);
  *v23 = 0;
  v6 = *this;
  if ((*this & 0x80) == 0)
  {
    v7 = *this & 0x7FLL;
    v8 = this + 1;
    goto LABEL_3;
  }

  if ((v6 & 0x8000) == 0)
  {
    v7 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
    v8 = this + 2;
    goto LABEL_3;
  }

  v18 = a3;
  v14 = google::protobuf::internal::VarintParseSlowArm(this, v23, v6);
  if (v14)
  {
    v8 = v14;
    v7 = *v23;
    a3 = v18;
LABEL_3:
    *(a1 + v19) = -(v7 & 1) ^ (v7 >> 1);
    if (*a3 <= v8)
    {
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v8;
    }

    else
    {
      v9 = *v8;
      v10 = &a5[(v9 & a5[4])];
      v11 = *(v10 + 6);
      v12 = *(v10 + 7) ^ v9;

      return v11();
    }
  }

  return google::protobuf::internal::TcParser::Error(a1, v15, v16, v17, a5, a6);
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
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
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v6 + v5, &v21);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v10 = a3[1];
      v21 = *a3;
      v22 = v10;
      v23 = *(a3 + 4);
      v11 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v7, &v21);
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
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v24 + v13), &v24 + v14, &v21) == (&v24 + v14))
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

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *this, unint64_t a2, uint64_t a3)
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

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
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
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v6 + v5, &v21);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v10 = a3[1];
      v21 = *a3;
      v22 = v10;
      v23 = *(a3 + 4);
      v11 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v7, &v21);
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
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v24 + v13), &v24 + v14, &v21) == (&v24 + v14))
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

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *this, unint64_t a2, uint64_t a3)
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

      google::protobuf::internal::TcParser::AddUnknownEnum(*(a3 + 8), *(a3 + 16), (*(a3 + 24) + *(a3 + 24)) >> 1, v7);
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

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
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
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v6 + v5, &v21);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v10 = a3[1];
      v21 = *a3;
      v22 = v10;
      v23 = *(a3 + 4);
      v11 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v7, &v21);
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
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v24 + v13), &v24 + v14, &v21) == (&v24 + v14))
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

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *result, unint64_t a2, unsigned int **a3)
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
      google::protobuf::internal::TcParser::AddUnknownEnum(a3[1], a3[2], *(a3 + 24), v7);
      a2 = v19;
      result = v18;
    }

    while (v18 < v19);
  }

  return result;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
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
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v6 + v5, &v21);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v10 = a3[1];
      v21 = *a3;
      v22 = v10;
      v23 = *(a3 + 4);
      v11 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v7, &v21);
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
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v24 + v13), &v24 + v14, &v21) == (&v24 + v14))
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

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *result, unint64_t a2, unsigned int **a3)
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
      google::protobuf::internal::TcParser::AddUnknownEnum(a3[1], a3[2], (*(a3 + 12) + *(a3 + 12)) >> 1, v7);
      a2 = v19;
      result = v18;
    }

    while (v18 < v19);
  }

  return result;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3, int **a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = *this;
  if (*this < 0)
  {
    google::protobuf::internal::ReadSizeFallback(this, *this);
    v7 = v9;
  }

  else
  {
    v8 = (this + 1);
  }

  v10 = *a4;
  v11 = *a4[1] - *(a4 + 4);
  if (v11 <= 1008)
  {
    v12 = 1024;
  }

  else
  {
    v12 = v11 + 16;
  }

  if (v12 >= v7)
  {
    v12 = v7;
  }

  v13 = *v10;
  v14 = v13 + v12;
  if (v14 >= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFFLL;
  }

  else
  {
    v15 = v14;
  }

  if (v10[1] < v15)
  {
    v29 = v8;
    google::protobuf::RepeatedField<int>::Grow(v10, v13, v15);
    v8 = v29;
    if (!v29)
    {
      goto LABEL_21;
    }
  }

  else if (!v8)
  {
    goto LABEL_21;
  }

  v16 = *(a1 + 8);
  v17 = v16 - v8;
  if (v7 <= v16 - v8)
  {
LABEL_20:
    v24 = a3[1];
    v30 = *a3;
    v31 = v24;
    v32 = *(a3 + 4);
    google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v8, v8 + v7, &v30);
  }

  else
  {
    while (1)
    {
      v18 = a3[1];
      v30 = *a3;
      v31 = v18;
      v32 = *(a3 + 4);
      v19 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v8, v16, &v30);
      if (!v19)
      {
        break;
      }

      v20 = *(a1 + 8);
      v21 = v19 - v20;
      v22 = v7 - v17;
      if (v7 - v17 <= 16)
      {
        v35 = 0;
        v34 = 0;
        v33 = *v20;
        v26 = v22;
        v27 = a3[1];
        v30 = *a3;
        v31 = v27;
        v32 = *(a3 + 4);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v33 + v21), &v33 + v22, &v30) == (&v33 + v22))
        {
          v28 = *(a1 + 8) + v26;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v23 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v23)
      {
        break;
      }

      v7 = v7 - v17 - v21;
      v8 = (v23 + v21);
      v16 = *(a1 + 8);
      v17 = v16 - v8;
      if (v7 <= v16 - v8)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v25 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *result, unint64_t a2, unsigned __int8 *a3)
{
  if (result < a2)
  {
    v18 = v3;
    v19 = v4;
    do
    {
      while (1)
      {
        *v17 = 0;
        v6 = *result;
        if ((*result & 0x80) != 0)
        {
          if ((v6 & 0x8000) != 0)
          {
            v16 = a2;
            result = google::protobuf::internal::VarintParseSlowArm(result, v17, v6);
            if (!result)
            {
              return result;
            }

            v7 = *v17;
            a2 = v16;
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

        if ((v7 & 0x80000000) == 0 && *a3 >= v7)
        {
          break;
        }

        v12 = result;
        v13 = a2;
        google::protobuf::internal::TcParser::AddUnknownEnum(*(a3 + 1), *(a3 + 2), a3[24], v7);
        a2 = v13;
        result = v12;
        if (v12 >= v13)
        {
          return result;
        }
      }

      v8 = *(a3 + 4);
      v9 = HIDWORD(*v8);
      v10 = *v8;
      if (v10 == v9)
      {
        v14 = result;
        v15 = a2;
        google::protobuf::RepeatedField<int>::Grow(*(a3 + 4), HIDWORD(*v8), (v9 + 1));
        a2 = v15;
        result = v14;
        v10 = *v8;
      }

      v11 = v8[1];
      *v8 = v10 + 1;
      *(v11 + 4 * v10) = v7;
    }

    while (result < a2);
  }

  return result;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3, int **a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = *this;
  if (*this < 0)
  {
    google::protobuf::internal::ReadSizeFallback(this, *this);
    v7 = v9;
  }

  else
  {
    v8 = (this + 1);
  }

  v10 = *a4;
  v11 = *a4[1] - *(a4 + 4);
  if (v11 <= 1008)
  {
    v12 = 1024;
  }

  else
  {
    v12 = v11 + 16;
  }

  if (v12 >= v7)
  {
    v12 = v7;
  }

  v13 = *v10;
  v14 = v13 + v12;
  if (v14 >= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFFLL;
  }

  else
  {
    v15 = v14;
  }

  if (v10[1] < v15)
  {
    v29 = v8;
    google::protobuf::RepeatedField<int>::Grow(v10, v13, v15);
    v8 = v29;
    if (!v29)
    {
      goto LABEL_21;
    }
  }

  else if (!v8)
  {
    goto LABEL_21;
  }

  v16 = *(a1 + 8);
  v17 = v16 - v8;
  if (v7 <= v16 - v8)
  {
LABEL_20:
    v24 = a3[1];
    v30 = *a3;
    v31 = v24;
    v32 = *(a3 + 4);
    google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v8, v8 + v7, &v30);
  }

  else
  {
    while (1)
    {
      v18 = a3[1];
      v30 = *a3;
      v31 = v18;
      v32 = *(a3 + 4);
      v19 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v8, v16, &v30);
      if (!v19)
      {
        break;
      }

      v20 = *(a1 + 8);
      v21 = v19 - v20;
      v22 = v7 - v17;
      if (v7 - v17 <= 16)
      {
        v35 = 0;
        v34 = 0;
        v33 = *v20;
        v26 = v22;
        v27 = a3[1];
        v30 = *a3;
        v31 = v27;
        v32 = *(a3 + 4);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v33 + v21), &v33 + v22, &v30) == (&v33 + v22))
        {
          v28 = *(a1 + 8) + v26;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v23 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v23)
      {
        break;
      }

      v7 = v7 - v17 - v21;
      v8 = (v23 + v21);
      v16 = *(a1 + 8);
      v17 = v16 - v8;
      if (v7 <= v16 - v8)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v25 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *result, unint64_t a2, unsigned __int8 *a3)
{
  if (result < a2)
  {
    v18 = v3;
    v19 = v4;
    do
    {
      while (1)
      {
        *v17 = 0;
        v6 = *result;
        if ((*result & 0x80) != 0)
        {
          if ((v6 & 0x8000) != 0)
          {
            v16 = a2;
            result = google::protobuf::internal::VarintParseSlowArm(result, v17, v6);
            if (!result)
            {
              return result;
            }

            v7 = *v17;
            a2 = v16;
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

        if ((v7 & 0x80000000) == 0 && *a3 >= v7)
        {
          break;
        }

        v12 = result;
        v13 = a2;
        google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(a3 + 8, a3 + 16, a3 + 24, v7);
        a2 = v13;
        result = v12;
        if (v12 >= v13)
        {
          return result;
        }
      }

      v8 = *(a3 + 4);
      v9 = HIDWORD(*v8);
      v10 = *v8;
      if (v10 == v9)
      {
        v14 = result;
        v15 = a2;
        google::protobuf::RepeatedField<int>::Grow(*(a3 + 4), HIDWORD(*v8), (v9 + 1));
        a2 = v15;
        result = v14;
        v10 = *v8;
      }

      v11 = v8[1];
      *v8 = v10 + 1;
      *(v11 + 4 * v10) = v7;
    }

    while (result < a2);
  }

  return result;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3, int **a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = *this;
  if (*this < 0)
  {
    google::protobuf::internal::ReadSizeFallback(this, *this);
    v7 = v9;
  }

  else
  {
    v8 = (this + 1);
  }

  v10 = *a4;
  v11 = *a4[1] - *(a4 + 4);
  if (v11 <= 1008)
  {
    v12 = 1024;
  }

  else
  {
    v12 = v11 + 16;
  }

  if (v12 >= v7)
  {
    v12 = v7;
  }

  v13 = *v10;
  v14 = v13 + v12;
  if (v14 >= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFFLL;
  }

  else
  {
    v15 = v14;
  }

  if (v10[1] < v15)
  {
    v29 = v8;
    google::protobuf::RepeatedField<int>::Grow(v10, v13, v15);
    v8 = v29;
    if (!v29)
    {
      goto LABEL_21;
    }
  }

  else if (!v8)
  {
    goto LABEL_21;
  }

  v16 = *(a1 + 8);
  v17 = v16 - v8;
  if (v7 <= v16 - v8)
  {
LABEL_20:
    v24 = a3[1];
    v30 = *a3;
    v31 = v24;
    v32 = *(a3 + 4);
    google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v8, v8 + v7, &v30);
  }

  else
  {
    while (1)
    {
      v18 = a3[1];
      v30 = *a3;
      v31 = v18;
      v32 = *(a3 + 4);
      v19 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v8, v16, &v30);
      if (!v19)
      {
        break;
      }

      v20 = *(a1 + 8);
      v21 = v19 - v20;
      v22 = v7 - v17;
      if (v7 - v17 <= 16)
      {
        v35 = 0;
        v34 = 0;
        v33 = *v20;
        v26 = v22;
        v27 = a3[1];
        v30 = *a3;
        v31 = v27;
        v32 = *(a3 + 4);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v33 + v21), &v33 + v22, &v30) == (&v33 + v22))
        {
          v28 = *(a1 + 8) + v26;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v23 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v23)
      {
        break;
      }

      v7 = v7 - v17 - v21;
      v8 = (v23 + v21);
      v16 = *(a1 + 8);
      v17 = v16 - v8;
      if (v7 <= v16 - v8)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v25 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *result, unint64_t a2, unsigned __int8 *a3)
{
  if (result < a2)
  {
    v18 = v3;
    v19 = v4;
    do
    {
      while (1)
      {
        *v17 = 0;
        v6 = *result;
        if ((*result & 0x80) != 0)
        {
          if ((v6 & 0x8000) != 0)
          {
            v16 = a2;
            result = google::protobuf::internal::VarintParseSlowArm(result, v17, v6);
            if (!result)
            {
              return result;
            }

            v7 = *v17;
            a2 = v16;
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

        if (v7 >= 1 && *a3 >= v7)
        {
          break;
        }

        v12 = result;
        v13 = a2;
        google::protobuf::internal::TcParser::AddUnknownEnum(*(a3 + 1), *(a3 + 2), a3[24], v7);
        a2 = v13;
        result = v12;
        if (v12 >= v13)
        {
          return result;
        }
      }

      v8 = *(a3 + 4);
      v9 = HIDWORD(*v8);
      v10 = *v8;
      if (v10 == v9)
      {
        v14 = result;
        v15 = a2;
        google::protobuf::RepeatedField<int>::Grow(*(a3 + 4), HIDWORD(*v8), (v9 + 1));
        a2 = v15;
        result = v14;
        v10 = *v8;
      }

      v11 = v8[1];
      *v8 = v10 + 1;
      *(v11 + 4 * v10) = v7;
    }

    while (result < a2);
  }

  return result;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3, int **a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = *this;
  if (*this < 0)
  {
    google::protobuf::internal::ReadSizeFallback(this, *this);
    v7 = v9;
  }

  else
  {
    v8 = (this + 1);
  }

  v10 = *a4;
  v11 = *a4[1] - *(a4 + 4);
  if (v11 <= 1008)
  {
    v12 = 1024;
  }

  else
  {
    v12 = v11 + 16;
  }

  if (v12 >= v7)
  {
    v12 = v7;
  }

  v13 = *v10;
  v14 = v13 + v12;
  if (v14 >= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFFLL;
  }

  else
  {
    v15 = v14;
  }

  if (v10[1] < v15)
  {
    v29 = v8;
    google::protobuf::RepeatedField<int>::Grow(v10, v13, v15);
    v8 = v29;
    if (!v29)
    {
      goto LABEL_21;
    }
  }

  else if (!v8)
  {
    goto LABEL_21;
  }

  v16 = *(a1 + 8);
  v17 = v16 - v8;
  if (v7 <= v16 - v8)
  {
LABEL_20:
    v24 = a3[1];
    v30 = *a3;
    v31 = v24;
    v32 = *(a3 + 4);
    google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v8, v8 + v7, &v30);
  }

  else
  {
    while (1)
    {
      v18 = a3[1];
      v30 = *a3;
      v31 = v18;
      v32 = *(a3 + 4);
      v19 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v8, v16, &v30);
      if (!v19)
      {
        break;
      }

      v20 = *(a1 + 8);
      v21 = v19 - v20;
      v22 = v7 - v17;
      if (v7 - v17 <= 16)
      {
        v35 = 0;
        v34 = 0;
        v33 = *v20;
        v26 = v22;
        v27 = a3[1];
        v30 = *a3;
        v31 = v27;
        v32 = *(a3 + 4);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v33 + v21), &v33 + v22, &v30) == (&v33 + v22))
        {
          v28 = *(a1 + 8) + v26;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v23 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v23)
      {
        break;
      }

      v7 = v7 - v17 - v21;
      v8 = (v23 + v21);
      v16 = *(a1 + 8);
      v17 = v16 - v8;
      if (v7 <= v16 - v8)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v25 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *result, unint64_t a2, unsigned __int8 *a3)
{
  if (result < a2)
  {
    v18 = v3;
    v19 = v4;
    do
    {
      while (1)
      {
        *v17 = 0;
        v6 = *result;
        if ((*result & 0x80) != 0)
        {
          if ((v6 & 0x8000) != 0)
          {
            v16 = a2;
            result = google::protobuf::internal::VarintParseSlowArm(result, v17, v6);
            if (!result)
            {
              return result;
            }

            v7 = *v17;
            a2 = v16;
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

        if (v7 >= 1 && *a3 >= v7)
        {
          break;
        }

        v12 = result;
        v13 = a2;
        google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(a3 + 8, a3 + 16, a3 + 24, v7);
        a2 = v13;
        result = v12;
        if (v12 >= v13)
        {
          return result;
        }
      }

      v8 = *(a3 + 4);
      v9 = HIDWORD(*v8);
      v10 = *v8;
      if (v10 == v9)
      {
        v14 = result;
        v15 = a2;
        google::protobuf::RepeatedField<int>::Grow(*(a3 + 4), HIDWORD(*v8), (v9 + 1));
        a2 = v15;
        result = v14;
        v10 = *v8;
      }

      v11 = v8[1];
      *v8 = v10 + 1;
      *(v11 + 4 * v10) = v7;
    }

    while (result < a2);
  }

  return result;
}

void google::protobuf::internal::anonymous namespace::ReadStringNoArena(google::protobuf::internal *a1, uint64_t a2, google::protobuf::internal::ArenaStringPtr *this)
{
  v4 = *a1;
  if (*a1 < 0)
  {
    v6 = this;
    google::protobuf::internal::ReadSizeFallback(a1, *a1);
    if (!v7)
    {
      return;
    }

    v5 = v7;
    v4 = v8;
    this = v6;
  }

  else
  {
    v5 = a1 + 1;
  }

  v9 = google::protobuf::internal::ArenaStringPtr::Mutable(this, 0);

  google::protobuf::internal::EpsCopyInputStream::ReadString(a2, v5, v4, v9);
}

__int16 OUTLINED_FUNCTION_3_1@<H0>(int8x8_t a1@<D0>)
{
  a1.i32[0] = v1;
  a1.i16[0] = vaddlv_u8(vcnt_s8(a1));
  return a1.i16[0];
}

void google::protobuf::internal::DestroyString(void **this, const void *a2)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void google::protobuf::internal::InitProtobufDefaultsSlow(google::protobuf::internal *this)
{
  {
    google::protobuf::internal::fixed_address_empty_string = 0;
    unk_2810C1E10 = 0;
    qword_2810C1E18 = 0;
    google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyString, &google::protobuf::internal::fixed_address_empty_string, v1);
    atomic_store(1u, google::protobuf::internal::init_protobuf_defaults_state);
  }
}

uint64_t google::protobuf::internal::StringSpaceUsedExcludingSelfLong(unint64_t a1)
{
  if (*(a1 + 23) < 0 && (*a1 >= a1 ? (v1 = *a1 >= a1 + 24) : (v1 = 1), v1))
  {
    return (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    return 0;
  }
}

void global constructor keyed to_000101()
{
  {
    google::protobuf::internal::fixed_address_empty_string = 0;
    unk_2810C1E10 = 0;
    qword_2810C1E18 = 0;
    google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyString, &google::protobuf::internal::fixed_address_empty_string, v0);
    atomic_store(1u, google::protobuf::internal::init_protobuf_defaults_state);
  }
}

__n128 google::protobuf::internal::InlinedStringField::Set(uint64_t a1, __n128 *a2)
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
  return result;
}

uint64_t google::protobuf::internal::UntypedMapBase::DestroyTree(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v2 = *(**a2 + 32);
    if (*(a1 + 24))
    {
      return v2;
    }

    v4 = a2;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::clear_and_delete(*a2, (a2 + 8));
    a2 = v4;
  }

  else
  {
    v2 = 0;
    if (*(a1 + 24))
    {
      return v2;
    }
  }

  *a2 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
  *(a2 + 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
  *(a2 + 24) = 0;
  MEMORY[0x23EED9460](a2, 0x1020C4016EE4530);
  return v2;
}

unsigned __int8 *google::protobuf::internal::UntypedMapBase::EraseFromTree(uint64_t a1, unsigned int a2, unsigned __int8 *a3, unint64_t a4)
{
  v6 = *(*(a1 + 16) + 8 * a2);
  v8 = *(v6 - 1);
  v7 = (v6 - 1);
  if (*v8 == a3 && a4 == 0)
  {
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::erase(v7, a3, a4);
    if (v7[3])
    {
      return result;
    }

    goto LABEL_18;
  }

  if (a3[11])
  {
    if (a4 <= 0)
    {
      v13 = a3;
      while (1)
      {
        i = *v13;
        if (*(*v13 + 11))
        {
          break;
        }

        v11 = v13[8];
        v13 = *v13;
        if (v11)
        {
          goto LABEL_17;
        }
      }
    }

    LOBYTE(v11) = a4;
    i = a3;
  }

  else
  {
      ;
    }

    LOBYTE(v11) = i[10];
  }

LABEL_17:
  v14 = *&i[24 * (v11 - 1) + 32];
  *v14 = **v14;
  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::erase(v7, a3, a4);
  if (!v7[3])
  {
LABEL_18:
    if (!*(a1 + 24))
    {
      *v7 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
      v7[2] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
      v7[3] = 0;
      result = MEMORY[0x23EED9460](v7, 0x1020C4016EE4530);
    }

    *(*(a1 + 16) + 8 * a2) = 0;
  }

  return result;
}

void *google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(uint64_t a1, unsigned int a2, uint64_t (*a3)(void *), void *a4)
{
  v34 = a4;
  v6 = *(*(a1 + 16) + 8 * a2);
  if (v6)
  {
    v7 = (*(*(a1 + 16) + 8 * a2) & 1) == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v6 = google::protobuf::internal::UntypedMapBase::ConvertToTree(a1, *(*(a1 + 16) + 8 * a2), a3);
    *(*(a1 + 16) + 8 * a2) = v6;
  }

  v31[0] = a3(a4);
  v31[1] = v10;
  v36 = v31;
  v35 = &v34;
  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::insert_unique<google::protobuf::internal::VariantKey,std::piecewise_construct_t const&,std::tuple<google::protobuf::internal::VariantKey&&>,std::tuple<google::protobuf::internal::NodeBase *&>>((v6 - 1), v31, &std::piecewise_construct, &v36, &v35, &v32);
  v12 = v32;
  v13 = v33;
  if (v32 != **(v6 - 1) || v33 != 0)
  {
    if (v32[11])
    {
      LOBYTE(v15) = v33;
      i = v32;
      if (v33 <= 0)
      {
        v17 = v32;
        while (1)
        {
          i = *v17;
          if (*(*v17 + 11))
          {
            break;
          }

          v15 = v17[8];
          v17 = *v17;
          if (v15)
          {
            goto LABEL_21;
          }
        }

        LOBYTE(v15) = v33;
        i = v32;
      }
    }

    else
    {
        ;
      }

      LOBYTE(v15) = i[10];
    }

LABEL_21:
    **&i[24 * (v15 - 1) + 32] = v34;
  }

  if (v12[11])
  {
    v18 = (v13 + 1);
    if (v18 == v12[10])
    {
      v19 = v12;
      while (1)
      {
        v20 = *v19;
        if (*(*v19 + 11))
        {
          break;
        }

        v21 = v19[8];
        v19 = *v19;
        if (v21 != v20[10])
        {
          LOBYTE(v18) = v21;
          v22 = *(v6 + 15);
          if (v20 == v22 && v21 == v22[10])
          {
            goto LABEL_45;
          }

          goto LABEL_37;
        }
      }
    }

    v20 = v12;
    v24 = *(v6 + 15);
    if (v20 != v24 || v18 != v24[10])
    {
      goto LABEL_37;
    }

LABEL_45:
    v26 = 0;
    goto LABEL_46;
  }

  v27 = &v12[8 * (v13 + 1) + 256];
  do
  {
    v20 = *v27;
    v28 = *(*v27 + 11);
    v27 = *v27 + 256;
  }

  while (!v28);
  LOBYTE(v18) = 0;
  v29 = *(v6 + 15);
  if (v20 == v29 && v29[10] == 0)
  {
    goto LABEL_45;
  }

LABEL_37:
  v26 = *&v20[24 * v18 + 32];
LABEL_46:
  *v34 = v26;
  return result;
}

uint64_t google::protobuf::internal::UntypedMapBase::ConvertToTree(uint64_t a1, void *a2, uint64_t (*a3)(void *))
{
  v21 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    operator new();
  }

  AlignedWithCleanup = google::protobuf::Arena::AllocateAlignedWithCleanup(*(a1 + 24), 0x20uLL, 8uLL, google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::btree_map<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>>>);
  v7 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
  *AlignedWithCleanup = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
  *(AlignedWithCleanup + 8) = v5;
  *(AlignedWithCleanup + 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
  *(AlignedWithCleanup + 24) = 0;
  if (a2)
  {
    v8 = a2;
    do
    {
      v20[0] = a3(v8);
      v20[1] = v9;
      v22 = &v21;
      v23 = v20;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::insert_unique<google::protobuf::internal::VariantKey,std::piecewise_construct_t const&,std::tuple<google::protobuf::internal::VariantKey&&>,std::tuple<google::protobuf::internal::NodeBase *&>>(AlignedWithCleanup, v20, &std::piecewise_construct, &v23, &v22, &v19);
      v8 = *v21;
      v21 = v8;
    }

    while (v8);
    v10 = *(AlignedWithCleanup + 16);
    v7 = *AlignedWithCleanup;
  }

  else
  {
    v10 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
  }

  v11 = 0;
  v12 = v10[10];
  v13 = *v7;
  do
  {
    if (v10[11])
    {
      if (v12 <= 0)
      {
        v14 = v10;
        while (1)
        {
          v15 = *v14;
          if (*(*v14 + 11))
          {
            break;
          }

          v16 = v14[8];
          v14 = *v14;
          if (v16)
          {
            v10 = v15;
            v12 = v16;
            break;
          }
        }
      }
    }

    else
    {
      for (i = &v10[8 * v12]; ; i = &v10[8 * v10[10]])
      {
        v10 = *(i + 32);
        if (v10[11])
        {
          break;
        }
      }

      v12 = v10[10];
    }

    v21 = *&v10[24 * --v12 + 32];
    *v21 = v11;
    v11 = v21;
  }

  while (v12 || v10 != v13);
  return AlignedWithCleanup | 1;
}

absl::lts_20240722::hash_internal::MixingHashState *google::protobuf::internal::UntypedMapBase::TransferTree(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  if (*(a2 + 24))
  {
    v5 = *(**a2 + 32);
    if (*(a1 + 24))
    {
      goto LABEL_9;
    }

    v6 = a2;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::clear_and_delete(*a2, (a2 + 8));
    a2 = v6;
  }

  else
  {
    v5 = 0;
    if (*(a1 + 24))
    {
      goto LABEL_9;
    }
  }

  *a2 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
  *(a2 + 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
  *(a2 + 24) = 0;
  MEMORY[0x23EED9460](a2, 0x1020C4016EE4530);
  do
  {
LABEL_9:
    v8 = v5;
    v5 = *v5;
    result = a3(v8);
    v12 = v9;
    if (result)
    {
      result = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, result, v9, v10, v11);
      v12 = (((result + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (result + v12));
    }

    v13 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v12 ^ *(a1 + 8));
    v14 = (*(a1 + 4) - 1) & (((v13 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v13));
    v15 = *(a1 + 16);
    v16 = *(v15 + 8 * v14);
    if (v16)
    {
      if (v16)
      {
        goto LABEL_7;
      }

      v17 = 0;
      v18 = *(v15 + 8 * v14);
      do
      {
        ++v17;
        v18 = *v18;
      }

      while (v18);
      if (v17 > 7)
      {
LABEL_7:
        result = google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(a1, v14, a3, v8);
      }

      else
      {
        *v8 = v16;
        *(v15 + 8 * v14) = v8;
      }
    }

    else
    {
      *v8 = 0;
      *(v15 + 8 * v14) = v8;
      v19 = *(a1 + 12);
      if (v14 < v19)
      {
        v19 = v14;
      }

      *(a1 + 12) = v19;
    }
  }

  while (v5);
  return result;
}

uint64_t google::protobuf::internal::UntypedMapBase::FindFromTree(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a3;
  v13[1] = a4;
  v6 = (*(*(a1 + 16) + 8 * a2) - 1);
  v7 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::internal_find<google::protobuf::internal::VariantKey>(v6, v13);
  if (v7)
  {
    v9 = v8;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = v6[2];
  v9 = *(v7 + 10);
  if (a5)
  {
LABEL_3:
    *a5 = v7;
    *(a5 + 8) = v9;
  }

LABEL_4:
  v10 = v6[2];
  if (v10 == v7 && v9 == *(v10 + 10))
  {
    return 0;
  }

  else
  {
    return v7[3 * v9 + 4];
  }
}

uint64_t google::protobuf::internal::UntypedMapBase::SpaceUsedInTable(google::protobuf::internal::UntypedMapBase *this, uint64_t a2)
{
  v3 = *(this + 1);
  result = *this * a2 + 8 * v3;
  if (v3)
  {
    v5 = *(this + 2);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7)
      {
        result += 24 * *(v6 + 23) + 32;
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::clear_and_delete(unsigned __int8 **a1, uint64_t *a2)
{
  if (!*(a1 + 11) && *(a1 + 10))
  {
    v3 = *a1;
    do
    {
      a1 = a1[32];
    }

    while (!*(a1 + 11));
    v4 = *(a1 + 8);
    v5 = *a1;
    v6 = *&v5[8 * v4 + 256];
    if (!*(v6 + 11))
    {
      goto LABEL_22;
    }

LABEL_10:
    if (*a2)
    {
LABEL_11:
      if (v4 < v5[10])
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    while (1)
    {
      v10 = v5;
      operator delete(v6);
      v5 = v10;
      if (v4 < v10[10])
      {
LABEL_9:
        ++v4;
        v6 = *&v5[8 * v4 + 256];
        if (*(v6 + 11))
        {
          goto LABEL_10;
        }
      }

      else
      {
LABEL_12:
        v7 = *a2;
        if (*a2)
        {
          do
          {
            v8 = *v5;
            if (*v5 == v3)
            {
              return;
            }

            v9 = v5[8];
            v5 = *v5;
          }

          while (v9 >= v8[10]);
        }

        else
        {
          while (1)
          {
            v9 = v5[8];
            v8 = *v5;
            if (!v7)
            {
              operator delete(v5);
            }

            if (v8 == v3)
            {
              return;
            }

            if (v9 < v8[10])
            {
              break;
            }

            v7 = *a2;
            v5 = v8;
          }
        }

        v5 = v8;
        v4 = v9 + 1;
        v6 = *&v8[8 * v4 + 256];
        if (*(v6 + 11))
        {
          goto LABEL_10;
        }
      }

      do
      {
LABEL_22:
        v6 = v6[32];
      }

      while (!*(v6 + 11));
      v4 = *(v6 + 8);
      v5 = *v6;
      if (*a2)
      {
        goto LABEL_11;
      }
    }
  }

  if (!*a2)
  {

    operator delete(a1);
  }
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::erase(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a2[11];
  if (a2[11])
  {
    v4 = a2[10];
    if (v4 != (a3 + 1))
    {
      v5 = 24 * a3 + 16;
      v6 = 24 * (v4 - (a3 + 1));
      v7 = 24 * (a3 + 1) + 16;
      do
      {
        v8 = &a2[v5];
        v9 = *&a2[v7];
        *(v8 + 2) = *&a2[v7 + 16];
        *v8 = v9;
        v5 += 24;
        v7 += 24;
        v6 -= 24;
      }

      while (v6);
    }

    i = a2;
  }

  else
  {
      ;
    }

    v11 = &a2[24 * a3];
    v12 = &i[24 * i[10] - 24];
    v13 = *(v12 + 1);
    a3 = a3 & 0xFFFFFFFF00000000 | (i[10] - 1);
    *(v11 + 4) = *(v12 + 4);
    *(v11 + 1) = v13;
  }

  --i[10];
  --a1[3];
  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_after_delete(a1, i, a3);
  if (!v3)
  {
    if (result[11])
    {
      if (v15 + 1 == result[10])
      {
        v16 = result;
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
            return v17;
          }
        }
      }
    }

    else
    {
      v19 = &result[8 * (v15 + 1) + 256];
      do
      {
        v20 = *v19;
        v21 = *(*v19 + 11);
        v19 = *v19 + 256;
      }

      while (!v21);
      return v20;
    }
  }

  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_after_delete(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v19 = a2;
  v20 = a3;
  v6 = *a1;
  if (v6 == a2)
  {
    goto LABEL_8;
  }

  if (a2[10] > 4u)
  {
    goto LABEL_10;
  }

  v7 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::try_merge_or_rebalance(a1, &v19);
  v4 = v19;
  v3 = v3 & 0xFFFFFFFF00000000 | v20;
  if (!v7)
  {
    goto LABEL_10;
  }

  LODWORD(v20) = v19[8];
  v8 = *v19;
  v19 = v8;
  v6 = *a1;
  if (v8 == *a1)
  {
LABEL_8:
    if (v6[10])
    {
      if (a1[3])
      {
        goto LABEL_10;
      }
    }

    else if (v6[11])
    {
      a1[2] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
      *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::clear_and_delete(v6, a1 + 1);
      if (a1[3])
      {
        goto LABEL_10;
      }
    }

    else
    {
      v18 = *(v6 + 32);
      *v18 = **v18;
      *a1 = v18;
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::clear_and_delete(v6, a1 + 1);
      if (a1[3])
      {
        goto LABEL_10;
      }
    }

    result = a1[2];
    v15 = result[10];
    return result;
  }

  while (v8[10] <= 4u && absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::try_merge_or_rebalance(a1, &v19))
  {
    LODWORD(v20) = v19[8];
    v8 = *v19;
    v19 = v8;
    v6 = *a1;
    if (v8 == *a1)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v9 = v4[10];
  if (v3 != v9)
  {
    return v4;
  }

  v10 = v3 & 0xFFFFFFFF00000000;
  if (v4[11])
  {
    v11 = v10 | v9;
    v12 = v4;
    while (1)
    {
      result = *v12;
      if (*(*v12 + 11))
      {
        break;
      }

      v14 = v12[8];
      v11 = v11 & 0xFFFFFFFF00000000 | v14;
      v12 = *v12;
      if (v14 != result[10])
      {
        return result;
      }
    }

    return v4;
  }

  v16 = &v4[8 * v9 + 256];
  do
  {
    result = *v16;
    v17 = *(*v16 + 11);
    v16 = *v16 + 256;
  }

  while (!v17);
  return result;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::try_merge_or_rebalance(uint64_t a1, _DWORD *a2)
{
  v4 = *a2;
  v5 = **a2;
  v6 = *(*a2 + 8);
  if (*(*a2 + 8) && (v7 = *(v5 + 8 * (v6 - 1) + 256), v8 = v7[10] + 1, v8 + *(v4 + 10) <= 0xA))
  {
    a2[2] += v8;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::merge(v7, v4, (a1 + 8));
    if (*(a1 + 16) == v4)
    {
      *(a1 + 16) = v7;
    }

    *a2 = v7;
    return 1;
  }

  else
  {
    if (v6 >= *(v5 + 10))
    {
      goto LABEL_21;
    }

    v9 = *(v5 + 8 * (v6 + 1) + 256);
    v10 = *(v4 + 10);
    v11 = *(v9 + 10);
    if (v10 + v11 + 1 <= 0xA)
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::merge(*a2, *(v5 + 8 * (v6 + 1) + 256), (a1 + 8));
      if (*(a1 + 16) == v9)
      {
        *(a1 + 16) = v4;
      }

      return 1;
    }

    if (v11 < 6 || *(v4 + 10) && a2[2] < 1)
    {
LABEL_21:
      if (!*(*a2 + 8))
      {
        return 0;
      }

      v14 = *(v5 + 8 * (v6 - 1) + 256);
      v15 = *(v14 + 10);
      if (v15 < 6)
      {
        return 0;
      }

      v16 = *(v4 + 10);
      if (*(v4 + 10) && a2[2] >= v16)
      {
        return 0;
      }

      else
      {
        v17 = ((v15 - v16 + (((v15 - v16) & 0x8000) >> 15)) >> 1);
        v18 = (v15 - 1);
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_left_to_right(v14, v19, v4);
        result = 0;
        a2[2] += v19;
      }
    }

    else
    {
      if ((v11 - 1) >= ((v11 - v10 + (((v11 - v10) & 0x8000) >> 15)) >> 1))
      {
        v13 = ((v11 - v10 + (((v11 - v10) & 0x8000) >> 15)) >> 1);
      }

      else
      {
        v13 = (v11 - 1);
      }

      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_right_to_left(v4, v13, v9);
      return 0;
    }
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_right_to_left(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 10);
  v4 = *(result + 8);
  v5 = *result;
  v6 = &result[3 * *(result + 10)];
  v7 = *result + 24 * *(result + 8);
  v8 = *(v7 + 32);
  *(v6 + 1) = *(v7 + 16);
  v6[4] = v8;
  v9 = a3 + 16;
  v10 = a3 + 16 + 24 * (a2 - 1);
  if (a2 != 1)
  {
    v11 = 24 * v3 + 40;
    v12 = 24 * a2 - 24;
    v13 = (a3 + 16);
    do
    {
      v14 = result + v11;
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      v13 = (v13 + 24);
      v11 += 24;
      v12 -= 24;
    }

    while (v12);
    v5 = *result;
    v4 = *(result + 8);
  }

  v16 = v5 + 24 * v4;
  v17 = *v10;
  *(v16 + 32) = *(v10 + 16);
  *(v16 + 16) = v17;
  v18 = a2;
  if (*(a3 + 10) != a2)
  {
    v19 = 24 * *(a3 + 10) - 24 * a2;
    do
    {
      v20 = *(v9 + 24 * a2);
      *(v9 + 16) = *(v9 + 24 * a2 + 16);
      *v9 = v20;
      v9 += 24;
      v19 -= 24;
    }

    while (v19);
  }

  if (!*(result + 11))
  {
    if (a2)
    {
      v21 = (a3 + 256);
      v22 = 1;
      do
      {
        v23 = *(result + 10) + v22;
        v24 = *v21++;
        result[v23 + 32] = v24;
        *(v24 + 8) = v23;
        *v24 = result;
        ++v22;
        --v18;
      }

      while (v18);
    }

    if (*(a3 + 10) >= a2)
    {
      v25 = 0;
      v26 = a3 + 256;
      do
      {
        v27 = *(v26 + 8 * (v25 + a2));
        *(v26 + 8 * v25) = v27;
        *(v27 + 8) = v25;
        *v27 = a3;
        ++v25;
      }

      while ((*(a3 + 10) - a2) >= v25);
    }
  }

  *(result + 10) += a2;
  *(a3 + 10) -= a2;
  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a3 + 16;
  if (*(a3 + 10))
  {
    v4 = a3 - 8;
    v5 = 24 * *(a3 + 10);
    do
    {
      v6 = a3 - 8 + 24 * a2 + v5;
      v7 = *(v4 + v5);
      *(v6 + 16) = *(v4 + v5 + 16);
      *v6 = v7;
      v5 -= 24;
    }

    while (v5);
  }

  v8 = v3 + 24 * (a2 - 1);
  v9 = *result + 24 * *(result + 8);
  v10 = *(v9 + 16);
  *(v8 + 16) = *(v9 + 32);
  *v8 = v10;
  v11 = *(result + 10);
  if (a2 != 1)
  {
    v12 = -24 * a2;
    v13 = result + 24 * *(result + 10) + 40;
    do
    {
      v14 = *(v13 + v12);
      *(v3 + 16) = *(v13 + v12 + 16);
      *v3 = v14;
      v3 += 24;
      v12 += 24;
    }

    while (v12 != -24);
    v11 = *(result + 10);
  }

  v15 = *result + 24 * *(result + 8);
  v16 = result + 16 + 24 * (v11 - a2);
  v17 = *v16;
  *(v15 + 32) = *(v16 + 16);
  *(v15 + 16) = v17;
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v18 = a3 + 256;
      v19 = (*(a3 + 10) + 1);
      do
      {
        v20 = *(v18 + 8 * (v19 - 1));
        *(v18 + 8 * (v19 - 1 + a2)) = v20;
        *(v20 + 8) = v19 - 1 + a2;
        *v20 = a3;
        --v19;
      }

      while (v19);
    }

    if (a2)
    {
      v21 = 0;
      if ((a2 + 1) <= 2u)
      {
        v22 = 2;
      }

      else
      {
        v22 = (a2 + 1);
      }

      v23 = v22 - 1;
      do
      {
        v24 = *(result + 256 + 8 * (v21 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v21 + 256) = v24;
        *(v24 + 8) = v21;
        *v24 = a3;
        ++v21;
      }

      while (v23 != v21);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::merge(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[10];
  v4 = *a1 + 24 * a1[8];
  v5 = &a1[24 * a1[10]];
  v6 = *(v4 + 16);
  *(v5 + 4) = *(v4 + 32);
  *(v5 + 1) = v6;
  v7 = v3;
  if (*(a2 + 10))
  {
    v8 = (a2 + 16);
    v9 = &a1[24 * v3 + 40];
    v10 = 24 * *(a2 + 10);
    do
    {
      v11 = *v8;
      *(v9 + 16) = *(v8 + 2);
      *v9 = v11;
      v9 += 24;
      v8 = (v8 + 24);
      v10 -= 24;
    }

    while (v10);
    v7 = a1[10];
  }

  v12 = a1[11];
  if (a1[11])
  {
    LOBYTE(v13) = *(a2 + 10);
  }

  else
  {
    do
    {
      ++v7;
      v14 = *(a2 + 256 + 8 * v12);
      *&a1[8 * v7 + 256] = v14;
      *(v14 + 8) = v7;
      *v14 = a1;
      ++v12;
      v13 = *(a2 + 10);
    }

    while (v13 >= v12);
    LOBYTE(v7) = a1[10];
  }

  a1[10] = v7 + v13 + 1;
  *(a2 + 10) = 0;
  v15 = *a1;
  v16 = a1[8];
  v17 = *(*a1 + 10);
  v18 = v16 + 1;
  if ((v16 + 1) != v17)
  {
    v19 = v15 + 16 + 24 * (v16 + 1);
    v20 = v15 + 16 + 24 * a1[8];
    v21 = 24 * *(*a1 + 10) - 24 * (v16 + 1);
    do
    {
      v22 = *v19;
      *(v20 + 16) = *(v19 + 16);
      *v20 = v22;
      v20 += 24;
      v19 += 24;
      v21 -= 24;
    }

    while (v21);
  }

  if (!*(v15 + 11))
  {
    v23 = v15 + 256;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::clear_and_delete(*(v15 + 256 + 8 * (v16 + 1)), a3);
    v24 = v18 + 1;
    if (v17 >= (v18 + 1))
    {
      do
      {
        v25 = *(v23 + 8 * v24);
        *(v23 + 8 * (v24 - 1)) = v25;
        *(v25 + 8) = v24++ - 1;
      }

      while (v17 >= v24);
    }
  }

  *(v15 + 10) = v17 - 1;
}

void *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::insert_unique<google::protobuf::internal::VariantKey,std::piecewise_construct_t const&,std::tuple<google::protobuf::internal::VariantKey&&>,std::tuple<google::protobuf::internal::NodeBase *&>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD **a4@<X3>, void **a5@<X4>, uint64_t a6@<X8>)
{
  if (!a1[3])
  {
    v9 = a1[1];
    if (v9)
    {
      v10 = google::protobuf::Arena::AllocateForArray(v9, 0x28uLL);
    }

    else
    {
      v10 = operator new(0x28uLL);
    }

    *v10 = v10;
    v10[2] = 0x1000000;
    a1[2] = v10;
    *a1 = v10;
  }

  v12 = *a2;
  v11 = *(a2 + 8);
  v13 = *a1;
  v14 = *(*a1 + 10);
  if (!*(*a1 + 10))
  {
    goto LABEL_16;
  }

LABEL_7:
  v15 = 0;
  do
  {
    v16 = (v14 + v15) >> 1;
    v17 = v13 + 16 + 24 * v16;
    v18 = *(v17 + 8);
    if (v18 == v11)
    {
      if (*v17 && memcmp(*v17, v12, v11) < 0)
      {
LABEL_8:
        v15 = v16 + 1;
        v16 = v14;
      }
    }

    else if (v18 < v11)
    {
      goto LABEL_8;
    }

    v14 = v16;
  }

  while (v15 != v16);
  while (!*(v13 + 11))
  {
    v19 = v13 + 8 * v16 + 256;
    v13 = *v19;
    v14 = *(*v19 + 10);
    if (*(*v19 + 10))
    {
      goto LABEL_7;
    }

LABEL_16:
    LODWORD(v16) = 0;
  }

  v20 = v16;
  v21 = v16;
  result = v13;
  while (v21 == *(result + 10))
  {
    v21 = *(result + 8);
    result = *result;
    if (*(result + 11))
    {
      goto LABEL_29;
    }
  }

  v23 = &result[3 * v21];
  v24 = v23[3];
  if (v11 != v24)
  {
    if (v11 >= v24)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v12)
  {
    v25 = result;
    v26 = v21;
    v27 = memcmp(v12, v23[2], v11);
    v20 = v16;
    if ((v27 & 0x80000000) == 0)
    {
      v21 = v26;
      result = v25;
      goto LABEL_30;
    }

LABEL_29:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<google::protobuf::internal::VariantKey&&>,std::tuple<google::protobuf::internal::NodeBase *&>>(a1, v13, v20, a3, a4, a5);
    v28 = 1;
    goto LABEL_31;
  }

LABEL_30:
  v28 = 0;
LABEL_31:
  *a6 = result;
  *(a6 + 8) = v21;
  *(a6 + 16) = v28;
  return result;
}

void *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<google::protobuf::internal::VariantKey&&>,std::tuple<google::protobuf::internal::NodeBase *&>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD **a5, void **a6)
{
  v8 = a2;
  i = a2;
  v35 = a3;
  v10 = *(a2 + 11);
  if (*(a2 + 11))
  {
    if (*(a2 + 10) == v10)
    {
      goto LABEL_3;
    }

LABEL_14:
    v16 = v8;
    v17 = v35;
    v18 = *(v8 + 10);
    if (v18 <= v35)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v8 = *(a2 + 8 * a3 + 256);
  for (i = v8; !*(v8 + 11); i = v8)
  {
    v8 = *(v8 + 8 * *(v8 + 10) + 256);
  }

  LODWORD(v35) = *(v8 + 10);
  v10 = *(v8 + 11);
  if (!*(v8 + 11))
  {
    v10 = 10;
  }

  if (*(v8 + 10) != v10)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v10 > 9)
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_or_split(a1, &i);
    v16 = i;
    v17 = v35;
    v18 = *(i + 10);
    if (v18 <= v35)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v11 = 2 * (v10 & 0x7F);
    if (v11 >= 0xA)
    {
      v12 = 10;
    }

    else
    {
      v12 = v11;
    }

    v13 = 24 * v12 + 23;
    v14 = a1[1];
    if (v14)
    {
      v15 = google::protobuf::Arena::AllocateForArray(v14, v13 & 0x3F0);
    }

    else
    {
      v15 = operator new(v13 & 0x3F0);
    }

    v16 = v15;
    *v15 = v15;
    *(v15 + 4) = 0;
    *(v15 + 10) = 0;
    *(v15 + 11) = v12;
    i = v15;
    if (*(v8 + 10))
    {
      v19 = (v8 + 16);
      v20 = (v15 + 2);
      v21 = 24 * *(v8 + 10);
      do
      {
        v22 = *v19;
        *(v20 + 2) = *(v19 + 2);
        *v20 = v22;
        v20 += 24;
        v19 = (v19 + 24);
        v21 -= 24;
      }

      while (v21);
      v23 = *(v8 + 10);
    }

    else
    {
      v23 = 0;
    }

    *(v15 + 10) = v23;
    *(v8 + 10) = 0;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::clear_and_delete(v8, a1 + 1);
    a1[2] = v16;
    *a1 = v16;
    v17 = v35;
    v18 = *(v16 + 10);
    if (v18 <= v35)
    {
      goto LABEL_28;
    }
  }

LABEL_25:
  v24 = &v16[3 * v17 + 2 + 3 * (v18 - v17)];
  v25 = 24 * v17 - 24 * v18;
  do
  {
    *v24 = *(v24 - 24);
    *(v24 + 16) = *(v24 - 8);
    v24 -= 24;
    v25 += 24;
  }

  while (v25);
  v18 = *(v16 + 10);
LABEL_28:
  v26 = &v16[3 * v17];
  v27 = *a6;
  *(v26 + 1) = **a5;
  v26[4] = *v27;
  v28 = v18 + 1;
  *(v16 + 10) = v28;
  if (!*(v16 + 11))
  {
    v29 = v17 + 1;
    if (v29 < v28)
    {
      v30 = v16 + 32;
      do
      {
        v31 = v30[(v28 - 1)];
        v30[v28] = v31;
        *(v31 + 8) = v28;
      }

      while (v29 < --v28);
    }
  }

  ++a1[3];
  return i;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_or_split(void *a1, void **a2)
{
  v4 = *a2;
  v5 = **a2;
  if (*a2 == *a1)
  {
    v26 = a1[1];
    if (v26)
    {
      v27 = google::protobuf::Arena::AllocateForArray(v26, 0x158uLL);
    }

    else
    {
      v27 = operator new(0x158uLL);
    }

    *v27 = v5;
    v27[2] = 0;
    v28 = *a2;
    *(v27 + 32) = *a2;
    v28[8] = 0;
    *v28 = v27;
    *a1 = v27;
    v5 = v27;
    v23 = *(*a2 + 8) + 1;
    v24 = a1[1];
    if (*(*a2 + 11))
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

  v6 = v4[8];
  if (v4[8])
  {
    v7 = *&v5[2 * (v6 - 1) + 64];
    v8 = v7[10];
    if (v8 <= 9)
    {
      v9 = *(a2 + 2);
      v10 = (10 - v8) >> ((v9 & 0xFEu) < 0xA) <= 1u ? 1 : (10 - v8) >> ((v9 & 0xFEu) < 0xA);
      v11 = (v10 + v8);
      if (v10 <= v9 || v11 <= 9)
      {
        result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_right_to_left(*&v5[2 * (v6 - 1) + 64], v10, v4);
        v14 = *(a2 + 8) - v10;
        *(a2 + 2) = v14;
        if (v14 >= 0)
        {
          return result;
        }

        v30 = v14 + v7[10] + 1;
LABEL_43:
        *(a2 + 2) = v30;
        *a2 = v7;
        return result;
      }
    }
  }

  v15 = *(v5 + 10);
  if (v6 >= v15 || (v7 = *&v5[2 * (v6 + 1) + 64], v16 = v7[10], v16 > 9) || ((v17 = *(a2 + 2), (10 - v16) >> (v17 > 0) <= 1u) ? (v18 = 1) : (v18 = (10 - v16) >> (v17 > 0)), (v19 = (v18 + v16), (v4[10] - v18) < v17) ? (v20 = v19 > 9) : (v20 = 0), v20))
  {
    if (v15 == 10)
    {
      v31 = v5;
      v32 = v6;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_or_split(a1, &v31);
      v4 = *a2;
      v5 = **a2;
    }

    v23 = v4[8] + 1;
    v24 = a1[1];
    if (v4[11])
    {
LABEL_27:
      if (v24)
      {
        v25 = google::protobuf::Arena::AllocateForArray(v24, 0x100uLL);
      }

      else
      {
        v25 = operator new(0x100uLL);
      }

      v7 = v25;
      *v25 = v5;
      v25[8] = v23;
      *(v25 + 9) = 0;
      v25[11] = 10;
      result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::split(*a2, *(a2 + 2), v25);
      if (a1[2] == *a2)
      {
        a1[2] = v7;
      }

      v21 = *(a2 + 2);
      v22 = *(*a2 + 10);
      if (v21 > v22)
      {
        goto LABEL_42;
      }

      return result;
    }

LABEL_38:
    if (v24)
    {
      v29 = google::protobuf::Arena::AllocateForArray(v24, 0x158uLL);
    }

    else
    {
      v29 = operator new(0x158uLL);
    }

    v7 = v29;
    *v29 = v5;
    v29[8] = v23;
    *(v29 + 9) = 0;
    v29[11] = 0;
    result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::split(*a2, *(a2 + 2), v29);
    v21 = *(a2 + 2);
    v22 = *(*a2 + 10);
    if (v21 > v22)
    {
      goto LABEL_42;
    }

    return result;
  }

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_left_to_right(v4, v18, *&v5[2 * (v6 + 1) + 64]);
  v21 = *(a2 + 2);
  v22 = *(*a2 + 10);
  if (v21 > v22)
  {
LABEL_42:
    v30 = v21 + ~v22;
    goto LABEL_43;
  }

  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::split(unsigned __int8 *result, int a2, uint64_t a3)
{
  if (a2 == 10)
  {
    LOBYTE(v3) = 0;
  }

  else if (a2)
  {
    v3 = result[10] >> 1;
  }

  else
  {
    LOBYTE(v3) = result[10] - 1;
  }

  *(a3 + 10) = v3;
  v4 = result[10] - v3;
  result[10] = v4;
  v5 = result + 16;
  if (*(a3 + 10))
  {
    v6 = &v5[24 * v4];
    v7 = a3 + 16;
    v8 = 24 * *(a3 + 10);
    do
    {
      v9 = *v6;
      *(v7 + 16) = *(v6 + 2);
      *v7 = v9;
      v7 += 24;
      v6 += 24;
      v8 -= 24;
    }

    while (v8);
    v4 = result[10];
  }

  v10 = v4 - 1;
  result[10] = v4 - 1;
  v11 = *result;
  v12 = result[8];
  v13 = &v5[24 * v10];
  v14 = *(*result + 10);
  if (v14 > v12)
  {
    v15 = v11 + 24 * v12 + 24 * (v14 - v12) + 16;
    v16 = 24 * v12 - 24 * *(*result + 10);
    do
    {
      *v15 = *(v15 - 24);
      *(v15 + 16) = *(v15 - 8);
      v15 -= 24;
      v16 += 24;
    }

    while (v16);
    v14 = *(v11 + 10);
  }

  v17 = v11 + 24 * v12;
  v18 = *v13;
  *(v17 + 32) = *(v13 + 2);
  *(v17 + 16) = v18;
  v19 = v14 + 1;
  *(v11 + 10) = v14 + 1;
  if (!*(v11 + 11))
  {
    v20 = v12 + 1;
    if (v20 < v19)
    {
      v21 = v11 + 256;
      do
      {
        v22 = *(v21 + 8 * (v19 - 1));
        *(v21 + 8 * v19) = v22;
        *(v22 + 8) = v19;
      }

      while (v20 < --v19);
    }
  }

  *(*result + 8 * (result[8] + 1) + 256) = a3;
  v24 = result[11];
  if (!result[11])
  {
    v25 = result[10];
    do
    {
      v26 = *&result[8 * ++v25 + 256];
      *(a3 + 256 + 8 * v24) = v26;
      *(v26 + 8) = v24;
      *v26 = a3;
      ++v24;
    }

    while (*(a3 + 10) >= v24);
  }

  return result;
}

void google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::btree_map<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>>>(uint64_t a1)
{
  if (*(a1 + 24))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::clear_and_delete(*a1, (a1 + 8));
  }

  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 24) = 0;
}

uint64_t *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::internal_find<google::protobuf::internal::VariantKey>(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  v4 = *a1;
  v5 = *(*a1 + 10);
  if (!*(*a1 + 10))
  {
    goto LABEL_11;
  }

LABEL_2:
  v6 = 0;
  do
  {
    v7 = (v5 + v6) >> 1;
    v8 = &v4[3 * v7 + 2];
    v9 = *(v8 + 8);
    if (v9 == v2)
    {
      if (*v8 && memcmp(*v8, v3, v2) < 0)
      {
LABEL_3:
        v6 = v7 + 1;
        v7 = v5;
      }
    }

    else if (v9 < v2)
    {
      goto LABEL_3;
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
      goto LABEL_2;
    }

LABEL_11:
    LODWORD(v7) = 0;
  }

  while (v7 == *(v4 + 10))
  {
    LODWORD(v7) = *(v4 + 8);
    v4 = *v4;
    if (*(v4 + 11))
    {
      return 0;
    }
  }

  v10 = &v4[3 * v7];
  v11 = v10[3];
  if (v2 != v11)
  {
    if (v2 >= v11)
    {
      return v4;
    }

    return 0;
  }

  if (v3 && memcmp(v3, v10[2], v2) < 0)
  {
    return 0;
  }

  return v4;
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return google::protobuf::internal::UntypedMapBase::DestroyTree(v0, v1 - 1);
}

unint64_t google::protobuf::MessageLite::GetTypeName@<X0>(google::protobuf::MessageLite *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = (*(*this + 64))(this);
  v5 = v4;
  if (*(v4 + 12))
  {
    result = strlen((v4 + 16));
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a2[23] = result;
    if (result)
    {
      result = memmove(a2, (v5 + 16), result);
      a2[v7] = 0;
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    v8 = **(v4 + 24);

    return v8(this);
  }

  return result;
}

void google::protobuf::MessageLite::LogInitializationErrorMessage(google::protobuf::MessageLite *this)
{
  v18[12] = *MEMORY[0x277D85DE8];
  absl::lts_20240722::log_internal::LogMessage::LogMessage(v13, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/message_lite.cc", 145);
  v2 = (*(*this + 64))(this);
  v3 = v2;
  if (*(v2 + 12))
  {
    v4 = strlen((v2 + 16));
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    v17 = v4;
    if (v4)
    {
      memmove(__dst, (v3 + 16), v4);
    }

    *(__dst + v5) = 0;
  }

  else
  {
    (**(v2 + 24))(__dst, this);
  }

  if ((v17 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v7 = v17;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = (*(*this + 64))(this);
  if (*(v8 + 12))
  {
    operator new();
  }

  (*(*(v8 + 24) + 8))(__p, this);
  v18[0] = "Can't ";
  v18[1] = 6;
  v18[2] = "parse";
  v18[3] = 5;
  v18[4] = " message of type ";
  v18[5] = 18;
  v18[6] = v6;
  v18[7] = v7;
  v18[8] = " because it is missing required fields: ";
  v18[9] = 41;
  v9 = v15;
  v10 = __p;
  if ((v15 & 0x80u) != 0)
  {
    v10 = __p[0];
    v9 = __p[1];
  }

  v18[10] = v10;
  v18[11] = v9;
  absl::lts_20240722::strings_internal::CatPieces(v18, 6, &v12);
  if (v15 < 0)
  {
    operator delete(__p[0]);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    operator delete(__dst[0]);
    goto LABEL_22;
  }

  if (v17 < 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  absl::lts_20240722::log_internal::LogMessage::operator<<(v13, &v12);
  operations_research::sat::BruteForceOrthogonalPacking(&v12, v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_23CD6808C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a15);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a15);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::ParseFromString(google::protobuf::MessageLite *a1, char *a2, char *a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return google::protobuf::MessageLite::ParseFrom<(google::protobuf::MessageLite::ParseFlags)1,std::string_view>(a1, v4);
}

uint64_t google::protobuf::MessageLite::ParsePartialFromString(uint64_t a1, char *a2, size_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  (*(*a1 + 24))(a1);
  memset(v14, 0, sizeof(v14));
  v15 = 0u;
  v16 = 0;
  v17 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v18 = 0x80000000;
  v19 = 0;
  v20 = 0;
  if (a3 < 0x11)
  {
    if (a3)
    {
      memcpy(v14 + 8, a2, a3);
      v6 = v14 + 8;
      v13 = 0;
      v10 = v14 + a3 + 8;
      v11 = v14 + a3 + 8;
      v12 = 0;
      if (*(&v15 + 1) == 1)
      {
        *(&v15 + 1) = a2 - (v14 + 8);
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
    v10 = &a2[a3 - 16];
    v11 = v10;
    v12 = v14 + 8;
    v6 = a2;
  }

  if ((*(*a1 + 56))(a1, v6, &v10))
  {
    v7 = v16 == 0;
  }

  else
  {
    v7 = 0;
  }

  result = v7;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t google::protobuf::MessageLite::SerializePartialToZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 48))(this);
  if (v4 >> 31)
  {
    v9 = v4;
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/message_lite.cc", 463);
    v10 = (*(*this + 64))(this);
    v11 = v10;
    if (*(v10 + 12))
    {
      v12 = strlen((v10 + 16));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v20 = v12;
      if (v12)
      {
        memmove(__dst, (v11 + 16), v12);
      }

      *(__dst + v13) = 0;
    }

    else
    {
      (**(v10 + 24))(__dst, this);
    }

    v14 = absl::lts_20240722::log_internal::LogMessage::operator<<(v16, __dst);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, " exceeded maximum protobuf size of 2GB: ", 0x28uLL);
    v17 = v9;
    absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v14, &v17);
    if (v20 < 0)
    {
      operator delete(__dst[0]);
    }

    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v16);
    v6 = 0;
    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    __dst[0] = v19;
    __dst[1] = v19;
    v21 = a2;
    v22 = 0;
    v23 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
    v24 = 0;
    v5 = (*(*this + 72))(this);
    google::protobuf::io::EpsCopyOutputStream::Trim(__dst, v5);
    v6 = v22 ^ 1;
    v7 = *MEMORY[0x277D85DE8];
  }

  return v6 & 1;
}

void sub_23CD68504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a9);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v29 = *MEMORY[0x277D85DE8];
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 48))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (!(v5 >> 31))
  {
    v8 = v5 + size;
    v9 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = v2->__r_.__value_.__l.__size_;
      if (v9 < v8)
      {
        v12 = v2->__r_.__value_.__r.__words[2];
        v10 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        v11 = HIBYTE(v12);
        if (v10 - v9 >= v8 - v9)
        {
LABEL_8:
          if ((v11 & 0x80) != 0)
          {
            v15 = v2->__r_.__value_.__r.__words[0];
            v2->__r_.__value_.__l.__size_ = v8;
            *(v15 + v8) = 0;
            if ((SHIBYTE(v2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

          *(&v2->__r_.__value_.__s + 23) = v8 & 0x7F;
          v2->__r_.__value_.__s.__data_[v8] = 0;
          if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_15:
            v2 = v2->__r_.__value_.__r.__words[0];
          }

LABEL_16:
          __dst[0] = v2 + size + v6;
          __dst[1] = 0;
          v25 = 0;
          v26 = 0;
          v27 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
          v28 = 0;
          (*(*a1 + 72))(a1);
          goto LABEL_17;
        }

LABEL_7:
        std::string::__grow_by(v2, v10, v8 - v10, v9, v9, 0, 0);
        v2->__r_.__value_.__l.__size_ = v9;
        LOBYTE(v11) = *(&v2->__r_.__value_.__s + 23);
        goto LABEL_8;
      }
    }

    else if (v8 > v9)
    {
      v10 = 22;
      LOBYTE(v11) = *(&v2->__r_.__value_.__s + 23);
      if (22 - v9 >= v8 - v9)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    std::string::erase(v2, v5 + size, 0xFFFFFFFFFFFFFFFFLL);
    if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(v21, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/message_lite.cc", 511);
  v16 = (*(*a1 + 64))(a1);
  v17 = v16;
  if (*(v16 + 12))
  {
    v18 = strlen((v16 + 16));
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v24 = v18;
    if (v18)
    {
      memmove(__dst, (v17 + 16), v18);
    }

    *(__dst + v19) = 0;
  }

  else
  {
    (**(v16 + 24))(__dst, a1);
  }

  v20 = absl::lts_20240722::log_internal::LogMessage::operator<<(v21, __dst);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, " exceeded maximum protobuf size of 2GB: ", 0x28uLL);
  v22 = v6;
  absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v20, &v22);
  if (v24 < 0)
  {
    operator delete(__dst[0]);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v21);
LABEL_17:
  result = v7 == 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD68858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a9);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializeToString(uint64_t a1, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    *a2->__r_.__value_.__l.__data_ = 0;
    a2->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  return google::protobuf::MessageLite::AppendPartialToString(a1, a2);
}

BOOL google::protobuf::MessageLite::SerializeAsString@<W0>(google::protobuf::MessageLite *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = google::protobuf::MessageLite::AppendPartialToString(this, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_23CD688FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::Cord::~Cord(absl::lts_20240722::Cord *this, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  if (*this)
  {
    absl::lts_20240722::Cord::DestroyCordSlow(this, a2);
  }
}

void google::protobuf::internal::OnShutdownRun(google::protobuf::internal *this, void (*a2)(const void *), const void *a3)
{
  {
    operator new();
  }

  v5 = google::protobuf::internal::ShutdownData::get(void)::data;
  absl::lts_20240722::Mutex::Lock((google::protobuf::internal::ShutdownData::get(void)::data + 24));
  *&v6 = this;
  *(&v6 + 1) = a2;
  std::vector<std::pair<void (*)(void const*),void const*>>::push_back[abi:ne200100](v5, &v6);
  absl::lts_20240722::Mutex::Unlock((v5 + 24));
}

void std::vector<std::pair<void (*)(void const*),void const*>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
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

uint64_t google::protobuf::ZeroCopyCodedInputStream::Next(google::protobuf::io::CodedInputStream **this, const void **a2, int *a3)
{
  result = google::protobuf::io::CodedInputStream::GetDirectBufferPointer(this[1], a2, a3);
  if (result)
  {
    v6 = *a3;
    if ((v6 & 0x80000000) == 0)
    {
      v7 = this[1];
      v8 = *(v7 + 2) - *v7;
      if (v6 <= v8)
      {
        *v7 += v6;
      }

      else
      {
        v9 = result;
        google::protobuf::io::CodedInputStream::SkipFallback(v7, v6, v8);
        return v9;
      }
    }
  }

  return result;
}

uint64_t google::protobuf::ZeroCopyCodedInputStream::Skip(google::protobuf::ZeroCopyCodedInputStream *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(this + 1);
  v3 = *(v2 + 2) - *v2;
  if (v3 < a2)
  {
    return google::protobuf::io::CodedInputStream::SkipFallback(v2, a2, v3);
  }

  *v2 += a2;
  return 1;
}

uint64_t google::protobuf::ZeroCopyCodedInputStream::ReadCord(google::protobuf::io::CodedInputStream **this, absl::lts_20240722::Cord *a2, unsigned int a3)
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

  if (v4)
  {
    v10[0] = 0;
    v10[1] = 0;
    Cord = google::protobuf::io::CodedInputStream::ReadCord(this[1], v10, a3);
    absl::lts_20240722::Cord::Append(a2, v10);
    absl::lts_20240722::Cord::~Cord(v10, v9);
    return Cord;
  }

  else
  {
    v5 = this[1];

    return google::protobuf::io::CodedInputStream::ReadCord(v5, a2, a3);
  }
}

std::string *absl::lts_20240722::AbslStringify<absl::lts_20240722::strings_internal::StringifySink>(std::string *a1, unint64_t a2, __int16 a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = *&absl::lts_20240722::numbers_internal::kHexTable[(a2 >> 55) & 0x1FE];
  v10 = *&absl::lts_20240722::numbers_internal::kHexTable[(a2 >> 47) & 0x1FE];
  v11 = *&absl::lts_20240722::numbers_internal::kHexTable[(a2 >> 39) & 0x1FE];
  v3 = *&absl::lts_20240722::numbers_internal::kHexTable[(a2 >> 23) & 0x1FE];
  v12 = *&absl::lts_20240722::numbers_internal::kHexTable[(a2 >> 31) & 0x1FE];
  v13 = v3;
  v14 = *&absl::lts_20240722::numbers_internal::kHexTable[(a2 >> 15) & 0x1FE];
  v15 = *&absl::lts_20240722::numbers_internal::kHexTable[(a2 >> 7) & 0x1FE];
  v16 = *&absl::lts_20240722::numbers_internal::kHexTable[2 * a2];
  v4 = 16 - (__clz(a2 | 1) >> 2);
  if (a3 > v4)
  {
    v8 = 0x101010101010101 * HIBYTE(a3);
    v5 = &v17 - v4;
    *(v5 - 2) = v8;
    *(v5 - 1) = v8;
    v4 = a3;
  }

  result = absl::lts_20240722::strings_internal::StringifySink::Append(a1, &v17 - v4, v4);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::Next(google::protobuf::internal::EpsCopyInputStream *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = (this + 40);
    if (v2 == (this + 40))
    {
      *v3 = **(this + 1);
      if (*(this + 21) < 1)
      {
LABEL_15:
        if (*(this + 9) == 2)
        {
          *(this + 9) = *(this + 1) - v2;
        }

        v4 = this + 56;
        *(this + 1) = this + 56;
        *(this + 2) = 0;
        *(this + 6) = 0;
      }

      else
      {
        __src = 0;
        while (1)
        {
          if (!(*(**(this + 4) + 16))(*(this + 4), &__src, this + 24))
          {
            *(this + 21) = 0;
            goto LABEL_15;
          }

          v6 = *(this + 6);
          *(this + 21) -= v6;
          if (v6 >= 17)
          {
            break;
          }

          if (v6 >= 1)
          {
            memcpy(this + 56, __src, v6);
            v7 = (this + 72);
            v8 = *(this + 9);
            v4 = v3 + v6;
            *(this + 1) = v3 + v6;
            *(this + 2) = v3;
            if (v8 < 2)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }
        }

        v7 = (this + 72);
        v9 = *(this + 9);
        v4 = this + 56;
        v10 = __src;
        *(this + 56) = *__src;
        *(this + 1) = this + 56;
        *(this + 2) = v10;
        if (v9 <= 1)
        {
          goto LABEL_20;
        }

LABEL_19:
        *v7 = 1;
      }
    }

    else
    {
      v4 = v2 + *(this + 6) - 16;
      *(this + 1) = v4;
      *(this + 2) = v3;
      if (*(this + 9) == 1)
      {
        *(this + 9) = 2;
      }

      v3 = v2;
    }

LABEL_20:
    v11 = *(this + 7) + v3 - v4;
    *(this + 7) = v11;
    *this = &v4[v11 & (v11 >> 31)];
    return v3;
  }

  else
  {
    *this = *(this + 1);
    *(this + 20) = 1;
    return 0;
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::NextBuffer(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, int a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v5 = (this + 40);
  if (v3 == (this + 40))
  {
    *v5 = **(this + 1);
    if (*(this + 21) >= 1 && (a3 < 0 || (google::protobuf::internal::EpsCopyInputStream::ParseEndsInSlopRegion((this + 40), a2, a3) & 1) == 0))
    {
      __src = 0;
      while (1)
      {
        if (!(*(**(this + 4) + 16))(*(this + 4), &__src, this + 24))
        {
          *(this + 21) = 0;
          goto LABEL_17;
        }

        v7 = *(this + 6);
        *(this + 21) -= v7;
        if (v7 >= 17)
        {
          break;
        }

        if (v7 >= 1)
        {
          memcpy(this + 56, __src, v7);
          v9 = *(this + 9);
          v8 = (this + 72);
          *(v8 - 8) = v5 + v7;
          *(v8 - 7) = v5;
          if (v9 < 2)
          {
            return v5;
          }

          goto LABEL_21;
        }
      }

      v10 = *(this + 9);
      v8 = (this + 72);
      v11 = __src;
      *(v8 - 1) = *__src;
      *(v8 - 8) = v8 - 2;
      *(v8 - 7) = v11;
      if (v10 <= 1)
      {
        return v5;
      }

LABEL_21:
      *v8 = 1;
      return v5;
    }

    else
    {
LABEL_17:
      if (*(this + 9) == 2)
      {
        *(this + 9) = *(this + 1) - v3;
      }

      *(this + 1) = this + 56;
      *(this + 2) = 0;
      *(this + 6) = 0;
      return v5;
    }
  }

  else
  {
    *(this + 1) = v3 + *(this + 6) - 16;
    *(this + 2) = v5;
    if (*(this + 9) == 1)
    {
      *(this + 9) = 2;
      return v3;
    }

    else
    {
      return v3;
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::SkipFallback(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, int a3)
{
  v5 = *(this + 2) - a2 + 16;
  while (*(this + 2) && *(this + 7) >= 17)
  {
    result = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!result)
    {
      return result;
    }

    a3 -= v5;
    v5 = *(this + 2) - result;
    if (a3 <= v5)
    {
      return (result + a3 + 16);
    }
  }

  return 0;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadCordFallback(google::protobuf::internal::EpsCopyInputStream *this, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, absl::lts_20240722::Cord *a4)
{
  v5 = a3;
  v7 = *(this + 1);
  v8 = v7 - a2;
  if (*(this + 4))
  {
    v9 = *(this + 7) + v8;
    v10 = v9 - a3;
    if (v9 < a3)
    {
      return 0;
    }

    v16 = (v8 + 16);
    v17 = this + 40;
    if (v16 > 32 || (a2 - v17) >= 0x21)
    {
      absl::lts_20240722::Cord::Clear(a4, a2);
      (*(**(this + 4) + 24))(*(this + 4), v16);
      v20 = *(this + 21) + v16;
      *(this + 21) = v20;
      v21 = __OFSUB__(v20, v5);
      v22 = v20 - v5;
      if (v22 < 0 != v21)
      {
        return 0;
      }

      goto LABEL_29;
    }

    if (v8 || (v23 = *(this + 2)) == 0 || v23 == v17)
    {
      v5 = (a3 - v16);
      absl::lts_20240722::Cord::operator=(a4, a2, v16);
      v18 = *(this + 2);
      if (v18 == v17)
      {
        v25 = *(this + 21);
        v21 = __OFSUB__(v25, v5);
        v22 = v25 - v5;
        if (v22 < 0 != v21)
        {
          return 0;
        }

        goto LABEL_29;
      }

      if (!v18)
      {
        result = 0;
        *(this + 20) = 1;
        return result;
      }

      v19 = (*(this + 6) - 16);
    }

    else
    {
      absl::lts_20240722::Cord::Clear(a4, a2);
      v19 = *(this + 6);
    }

    (*(**(this + 4) + 24))(*(this + 4), v19);
    v24 = *(this + 21) + v19;
    *(this + 21) = v24;
    v21 = __OFSUB__(v24, v5);
    v22 = v24 - v5;
    if (v22 < 0 != v21)
    {
      return 0;
    }

LABEL_29:
    *(this + 21) = v22;
    if ((*(**(this + 4) + 48))(*(this + 4), a4, v5))
    {
      v26 = *(this + 4);
      __src = 0;
      v31 = 0;
      *(this + 7) = 0x7FFFFFFF;
      if ((*(*v26 + 16))(v26, &__src, &v31))
      {
        v27 = v31;
        *(this + 21) -= v31;
        if (v27 < 17)
        {
          *this = this + 56;
          *(this + 1) = this + 56;
          *(this + 2) = v17;
          v29 = this - v27 + 72;
          memcpy(v29, __src, v27);
          result = v29;
          v28 = *(this + 1);
        }

        else
        {
          result = __src;
          v28 = __src + v27 - 16;
          *(this + 1) = v28;
          *(this + 2) = v17;
          if (*(this + 9) == 1)
          {
            *(this + 9) = 2;
          }
        }
      }

      else
      {
        *(this + 21) = 0;
        *(this + 6) = 0;
        v28 = this + 40;
        result = this + 40;
        *(this + 1) = v17;
        *(this + 2) = 0;
      }

      v30 = v10 + result - v28;
      *(this + 7) = v30;
      *this = &v28[v30 & (v30 >> 31)];
      return result;
    }

    return 0;
  }

  if (v8 + 16 < a3)
  {
    v12 = v7 - a2 + 16;
    while (*(this + 2))
    {
      absl::lts_20240722::Cord::InlineRep::AppendArray(a4, a2, v12, 4u);
      if (*(this + 7) < 17)
      {
        break;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(this);
      if (!result)
      {
        return result;
      }

      LODWORD(v5) = v5 - v12;
      a2 = (result + 16);
      v12 = *(this + 2) - result;
      if (v5 <= v12)
      {
        v13 = v5;
        v14 = a4;
        v15 = a2;
        absl::lts_20240722::Cord::InlineRep::AppendArray(v14, a2, v5, 4u);
        return v15 + v13;
      }
    }

    return 0;
  }

  v13 = a3;
  v15 = a2;
  absl::lts_20240722::Cord::operator=(a4, a2, a3);
  return v15 + v13;
}

void *google::protobuf::internal::EpsCopyInputStream::InitFrom(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  __src = 0;
  v7 = 0;
  *(a1 + 28) = 0x7FFFFFFF;
  if ((*(*a2 + 16))(a2, &__src, &v7))
  {
    v3 = v7;
    *(a1 + 84) -= v7;
    if (v3 < 17)
    {
      *a1 = a1 + 56;
      *(a1 + 8) = a1 + 56;
      *(a1 + 16) = a1 + 40;
      v6 = (a1 - v3 + 72);
      memcpy(v6, __src, v3);
      return v6;
    }

    else
    {
      result = __src;
      *(a1 + 28) = *(a1 + 28) - v3 + 16;
      v5 = result + v3 - 16;
      *a1 = v5;
      *(a1 + 8) = v5;
      *(a1 + 16) = a1 + 40;
      if (*(a1 + 72) == 1)
      {
        *(a1 + 72) = 2;
      }
    }
  }

  else
  {
    *(a1 + 84) = 0;
    *(a1 + 24) = 0;
    result = (a1 + 40);
    *(a1 + 8) = a1 + 40;
    *(a1 + 16) = 0;
    *a1 = a1 + 40;
  }

  return result;
}

char *google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(unint64_t a1, std::string **this, google::protobuf::internal *a3, google::protobuf::internal::ParseContext *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a1 >> 3;
  if (!(a1 >> 3))
  {
    result = 0;
    goto LABEL_37;
  }

  v6 = a1;
  result = 0;
  v8 = v6 & 7;
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v11 = *a3;
        v9 = a3 + 8;
        v10 = v11;
        result = v9;
        v12 = *this;
        if (*this)
        {
          v13 = v9;
          v14 = (8 * v4) | 1u;
          if ((8 * v4) < 0x80)
          {
            LOBYTE(v15) = (8 * v4) | 1;
          }

          else
          {
            do
            {
              std::string::push_back(v12, v14 | 0x80);
              v15 = v14 >> 7;
              v16 = v14 >> 14;
              v14 >>= 7;
            }

            while (v16);
          }

          std::string::push_back(v12, v15);
          *__s = v10;
          std::string::append(*this, __s, 8uLL);
LABEL_31:
          result = v13;
          goto LABEL_37;
        }
      }

      else
      {
        result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseLengthDelimited(this, v4, a3, a4);
      }

      goto LABEL_37;
    }

    *__s = 0;
    if ((*a3 & 0x80) != 0)
    {
      if ((*a3 & 0x8000) != 0)
      {
        result = google::protobuf::internal::VarintParseSlowArm(a3, __s, *a3);
        if (!result)
        {
          goto LABEL_37;
        }

        v24 = *__s;
      }

      else
      {
        v24 = *a3 & 0x7FLL | (((*a3 >> 8) & 0x7FLL) << 7);
        result = a3 + 2;
      }
    }

    else
    {
      v24 = *a3 & 0x7FLL;
      result = a3 + 1;
    }

    v25 = *this;
    if (!*this)
    {
      goto LABEL_37;
    }

    v26 = result;
    v27 = (8 * v4);
    if (v27 < 0x80)
    {
      std::string::push_back(*this, v27);
      v30 = *this;
      if (v24 < 0x80)
      {
LABEL_35:
        LOBYTE(v31) = v24;
LABEL_36:
        std::string::push_back(v30, v31);
        result = v26;
        goto LABEL_37;
      }
    }

    else
    {
      do
      {
        std::string::push_back(v25, v27 | 0x80);
        v28 = v27 >> 7;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
      std::string::push_back(v25, v28);
      v30 = *this;
      if (v24 < 0x80)
      {
        goto LABEL_35;
      }
    }

    do
    {
      std::string::push_back(v30, v24 | 0x80);
      v31 = v24 >> 7;
      v32 = v24 >> 14;
      v24 >>= 7;
    }

    while (v32);
    goto LABEL_36;
  }

  switch(v8)
  {
    case 3:
      result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(this, v4, a3, a4);
      break;
    case 5:
      v19 = *a3;
      v17 = a3 + 4;
      v18 = v19;
      result = v17;
      v20 = *this;
      if (*this)
      {
        v13 = v17;
        v21 = (8 * v4) | 5u;
        if ((8 * v4) < 0x80)
        {
          LOBYTE(v22) = (8 * v4) | 5;
        }

        else
        {
          do
          {
            std::string::push_back(v20, v21 | 0x80);
            v22 = v21 >> 7;
            v23 = v21 >> 14;
            v21 >>= 7;
          }

          while (v23);
        }

        std::string::push_back(v20, v22);
        *__s = v18;
        std::string::append(*this, __s, 4uLL);
        goto LABEL_31;
      }

      break;
    case 4:
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__s, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/parse_context.h", 1286);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(__s, "Can't happen");
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(__s);
  }

LABEL_37:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<int>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
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
    v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<int> *,0>(v21, &v22);
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

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<int> *,0>(uint64_t a1, void *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  MEMORY[0x23EED9150](v4, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CD69CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CD69CD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<long long>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
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
    v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<long long> *,0>(v21, &v22);
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

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<long long> *,0>(uint64_t a1, void *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  MEMORY[0x23EED9150](v4, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CD69F34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CD69F48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<float>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
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
    v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<float> *,0>(v21, &v22);
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

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<float> *,0>(uint64_t a1, void *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  MEMORY[0x23EED9150](v4, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CD6A1A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CD6A1BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<double>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
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
    v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<double> *,0>(v21, &v22);
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

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<double> *,0>(uint64_t a1, void *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  MEMORY[0x23EED9150](v4, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CD6A41C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CD6A430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(std::string **this, int a2, char *a3, int32x2_t *a4)
{
  v7 = *this;
  v8 = 8 * a2;
  if (*this)
  {
    v9 = v8 | 3;
    if (v8 < 0x80)
    {
      LOBYTE(v10) = v8 | 3;
    }

    else
    {
      do
      {
        std::string::push_back(v7, v9 | 0x80);
        v10 = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v7, v10);
  }

  v12 = a4[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a4[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  ++a4[11].i32[1];
  result = google::protobuf::internal::WireFormatParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(this, a3, a4);
  a4[11] = vadd_s32(a4[11], 0xFFFFFFFF00000001);
  v15 = a4[10].i32[0];
  a4[10].i32[0] = 0;
  if (v15 != (v8 | 3) || result == 0)
  {
    return 0;
  }

  v17 = *this;
  if (v17)
  {
    v18 = v8 | 4;
    v19 = result;
    if (v8 < 0x80)
    {
      LOBYTE(v20) = v8 | 4;
    }

    else
    {
      do
      {
        std::string::push_back(v17, v18 | 0x80);
        v20 = v18 >> 7;
        v21 = v18 >> 14;
        v18 >>= 7;
      }

      while (v21);
    }

    std::string::push_back(v17, v20);
    return v19;
  }

  return result;
}

void OUTLINED_FUNCTION_3_3(uint64_t a1@<X8>)
{
  if (v1 >= 50000000)
  {
    v4 = 50000000;
  }

  else
  {
    v4 = v1;
  }

  std::string::reserve(v2, a1 + v4);
}

std::string *OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::internal::RepeatedPtrFieldBase::Reserve(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = ~*(this + 3) + a2;
  if (v2 >= 1)
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v2);
  }

  return this;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::AddInternal<void * (*)(google::protobuf::Arena *)>(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = *(a1 + 16);
  _X8 = *a1;
  __asm { PRFM            #0, [X8] }

  if (!*a1)
  {
    *(a1 + 8) = 1;
    v10 = a1;
    result = a2(v2);
    *v10 = result;
    return result;
  }

  if (_X8)
  {
    v12 = *(a1 + 8);
    if (v12 > *(a1 + 12))
    {
      v20 = a1;
      google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, 1);
      a1 = v20;
      v13 = (*v20 - 1);
      v15 = *v13;
      v12 = *(v20 + 8);
    }

    else
    {
      v14 = *(_X8 - 1);
      v13 = (_X8 - 1);
      if (v12 != v14)
      {
        *(a1 + 8) = v12 + 1;
        return *&v13[2 * v12 + 2];
      }

      v15 = *(a1 + 8);
    }

    *v13 = v15 + 1;
    v16 = &v13[2 * v12];
    *(a1 + 8) = v12 + 1;
    result = a2(v2);
    *(v16 + 1) = result;
    return result;
  }

  if (*(a1 + 8))
  {
    v17 = a1;
    v19 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, 1);
    result = a2(v2);
    *v19 = result;
    *(*v17 - 1) = 2;
    *(v17 + 8) = 2;
  }

  else
  {
    *(a1 + 8) = 1;
    return _X8;
  }

  return result;
}

void *google::protobuf::internal::RepeatedPtrFieldBase::AddString(google::protobuf::internal::RepeatedPtrFieldBase *this)
{
  v1 = *(this + 2);
  _X8 = *this;
  __asm { PRFM            #0, [X8] }

  if (*this)
  {
    if ((_X8 & 1) == 0)
    {
      if (*(this + 2))
      {
        google::protobuf::internal::RepeatedPtrFieldBase::AddString(this, *(this + 2), this + 2, &v16);
        return v16;
      }

      else
      {
        *(this + 2) = 1;
        return _X8;
      }
    }

    v10 = *(this + 2);
    if (v10 > *(this + 3))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, 1);
      v14 = (*this - 1);
      v12 = *(this + 2);
      ++*v14;
      v13 = v14 + 2;
      *(this + 2) = v12 + 1;
      if (v1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = (_X8 - 1);
      if (v10 != *(_X8 - 1))
      {
        *(this + 2) = v10 + 1;
        return *&v11[2 * v10 + 2];
      }

      v12 = *(this + 2);
      *v11 = v10 + 1;
      v13 = (_X8 + 7);
      *(this + 2) = v10 + 1;
      if (v1)
      {
LABEL_10:
        result = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(v1);
        *result = 0;
        result[1] = 0;
        result[2] = 0;
        *&v13[2 * v12] = result;
        return result;
      }
    }

    operator new();
  }

  *(this + 2) = 1;
  if (!v1)
  {
    operator new();
  }

  result = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(v1);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *this = result;
  return result;
}

uint64_t *google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(uint64_t *this, int a2, int a3)
{
  v3 = *this;
  if (*this)
  {
    v6 = *(v3 - 1);
    v4 = (v3 - 1);
    v5 = v6;
    LODWORD(v7) = a3 + a2;
    if (a3 + a2 < v6)
    {
      v8 = v7;
      v9 = v5 - v7;
      v10 = v9 >= 4 && (-8 * a3) > 0x1F;
      v7 = v7;
      if (!v10)
      {
        goto LABEL_19;
      }

      v7 = (v9 & 0xFFFFFFFFFFFFFFFCLL) + v7;
      v11 = &v4[2 * v8];
      v12 = v9 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *(v11 + 6);
        v14 = &v11[-2 * a3];
        *(v14 + 2) = *(v11 + 2);
        *(v14 + 6) = v13;
        v11 += 8;
        v12 -= 4;
      }

      while (v12);
      if (v9 != (v9 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_19:
        do
        {
          *&v4[2 * v7 + 2 + -2 * a3] = *&v4[2 * v7 + 2];
          ++v7;
        }

        while (v7 < v5);
      }
    }

    *v4 = v5 - a3;
    *(this + 2) -= a3;
  }

  else
  {
    if (!a2 && a3 == 1)
    {
      *this = 0;
    }

    *(this + 2) -= a3;
  }

  return this;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(google::protobuf::internal::RepeatedPtrFieldBase *this, const google::protobuf::MessageLite *a2)
{
  v2 = *(this + 2);
  _X8 = *this;
  __asm { PRFM            #0, [X8] }

  if (!*this)
  {
    *(this + 2) = 1;
    v10 = this;
    result = (*(*a2 + 16))(a2, v2);
    *v10 = result;
    return result;
  }

  if (_X8)
  {
    v12 = *(this + 2);
    if (v12 > *(this + 3))
    {
      v20 = this;
      google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, 1);
      this = v20;
      v13 = (*v20 - 1);
      v15 = *v13;
      v12 = *(v20 + 2);
    }

    else
    {
      v14 = *(_X8 - 1);
      v13 = (_X8 - 1);
      if (v12 != v14)
      {
        *(this + 2) = v12 + 1;
        return *&v13[2 * v12 + 2];
      }

      v15 = *(this + 2);
    }

    *v13 = v15 + 1;
    v16 = &v13[2 * v12];
    *(this + 2) = v12 + 1;
    result = (*(*a2 + 16))(a2, v2);
    *(v16 + 1) = result;
    return result;
  }

  if (*(this + 2))
  {
    v17 = this;
    v19 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, 1);
    result = (*(*a2 + 16))(a2, v2);
    *v19 = result;
    *(*v17 - 1) = 2;
    *(v17 + 2) = 2;
  }

  else
  {
    *(this + 2) = 1;
    return _X8;
  }

  return result;
}

uint64_t google::protobuf::internal::InternalOutOfLineDeleteMessageLite(uint64_t this, google::protobuf::MessageLite *a2)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  v5 = v3 + v4;
  v6 = *(a1 + 12) + 1;
  v7 = __OFSUB__(v3 + v4, v6);
  v8 = v3 + v4 - v6;
  if (!((v8 < 0) ^ v7 | (v8 == 0)))
  {
    v16 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v8);
    v17 = a2;
    v11 = v16;
    v3 = *(v17 + 8);
    v9 = *a1;
    if (*v17)
    {
      v12 = *v17 + 7;
    }

    else
    {
      v12 = v17;
    }

    if (v9)
    {
      goto LABEL_17;
    }

LABEL_9:
    v13 = (v9 != 0) - *(a1 + 8);
    if (v3 < v13)
    {
      v13 = v3;
    }

    if (v13 >= 1)
    {
      goto LABEL_20;
    }

LABEL_12:
    v14 = v12;
    goto LABEL_22;
  }

  v9 = *a1;
  v10 = *a1 + 7;
  if ((*a1 & 1) == 0)
  {
    v10 = a1;
  }

  v11 = (v10 + 8 * v4);
  if (*a2)
  {
    v12 = *a2 + 7;
  }

  else
  {
    v12 = a2;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  v13 = *(v9 - 1) - *(a1 + 8);
  if (v3 < v13)
  {
    v13 = v3;
  }

  if (v13 < 1)
  {
    goto LABEL_12;
  }

LABEL_20:
  v18 = v12 + 8 * v13;
  v14 = v12;
  do
  {
    v20 = *v11++;
    v19 = v20;
    v21 = *v14++;
    std::string::operator=(v19, v21);
  }

  while (v14 < v18);
LABEL_22:
  v22 = v12 + 8 * v3;
  v23 = *(a1 + 16);
  if (v23)
  {
    while (v14 < v22)
    {
      v24 = *v14;
      v25 = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(v23);
      v26 = v25;
      if (SHIBYTE(v24->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v25, v24->__r_.__value_.__l.__data_, v24->__r_.__value_.__l.__size_);
      }

      else
      {
        v27 = *&v24->__r_.__value_.__l.__data_;
        v25->__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v25->__r_.__value_.__l.__data_ = v27;
      }

      *v11++ = v26;
      ++v14;
    }
  }

  else if (v14 < v22)
  {
    operator new();
  }

  *(a1 + 8) = v5;
  v28 = *a1;
  if (*a1)
  {
    if (v5 <= *(v28 - 1))
    {
      return;
    }

    goto LABEL_34;
  }

  if (v5 > (v28 != 0))
  {
LABEL_34:
    *(v28 - 1) = v5;
  }
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeIntoClearedMessages(google::protobuf::internal::RepeatedPtrFieldBase *this, const google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  v2 = *this;
  v3 = (*this + 7);
  if ((*this & 1) == 0)
  {
    v3 = this;
  }

  v4 = *(this + 2);
  if (*a2)
  {
    v5 = (*a2 + 7);
  }

  else
  {
    v5 = a2;
  }

  if ((v2 & 1) == 0)
  {
    v6 = (v2 != 0) - v4;
    v7 = *(a2 + 2);
    if (v7 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v8 < 1)
    {
      return v8;
    }

LABEL_16:
    v11 = (v3 + 8 * v4);
    v12 = v8;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v5;
      v5 = (v5 + 8);
      (*(*v13 + 40))(v13, v15);
      --v12;
    }

    while (v12);
    return v8;
  }

  v9 = *(v2 - 1) - v4;
  v10 = *(a2 + 2);
  if (v10 >= v9)
  {
    v8 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (v8 >= 1)
  {
    goto LABEL_16;
  }

  return v8;
}

int *google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(int *this, const google::protobuf::internal::RepeatedPtrFieldBase *a2, void *(*a3)(google::protobuf::Arena *, const void *))
{
  v4 = this;
  v5 = *(a2 + 2);
  v6 = this[2];
  v7 = v5 + v6;
  v8 = this[3] + 1;
  v9 = __OFSUB__(v5 + v6, v8);
  v10 = v5 + v6 - v8;
  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
    v11 = *this;
    v12 = (*this + 7);
    if ((*this & 1) == 0)
    {
      v12 = this;
    }

    v13 = &v12[2 * v6];
    if (*a2)
    {
      v14 = (*a2 + 7);
    }

    else
    {
      v14 = a2;
    }

    if (v11)
    {
      goto LABEL_14;
    }

LABEL_9:
    v15 = v11 != 0;
    goto LABEL_15;
  }

  v16 = a2;
  this = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v10);
  a2 = v16;
  v13 = this;
  v5 = *(a2 + 2);
  v11 = *v4;
  if (*a2)
  {
    v14 = (*a2 + 7);
  }

  else
  {
    v14 = a2;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_14:
  v15 = *(v11 - 1);
LABEL_15:
  v17 = &v14[v5];
  if (v15 > v4[2])
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeIntoClearedMessages(v4, a2);
    v21 = 8 * this;
    v13 = (v13 + v21);
    v14 = (v14 + v21);
    if (v14 >= v17)
    {
      goto LABEL_19;
    }
  }

  else if (v14 >= v17)
  {
    goto LABEL_19;
  }

  v18 = *(v4 + 2);
  do
  {
    v19 = *v14++;
    this = a3(v18, v19);
    *v13 = this;
    v13 += 2;
  }

  while (v14 < v17);
LABEL_19:
  v4[2] = v7;
  v20 = *v4;
  if (*v4)
  {
    if (v7 <= *(v20 - 1))
    {
      return this;
    }
  }

  else if (v7 <= (v20 != 0))
  {
    return this;
  }

  *(v20 - 1) = v7;
  return this;
}

int *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::MessageLite>(int *this, uint64_t *a2)
{
  v2 = this;
  v3 = *(a2 + 2);
  v4 = this[2];
  v5 = v3 + v4;
  v6 = this[3] + 1;
  v7 = __OFSUB__(v3 + v4, v6);
  v8 = v3 + v4 - v6;
  if ((v8 < 0) ^ v7 | (v8 == 0))
  {
    v9 = *this;
    v10 = (*this + 7);
    if ((*this & 1) == 0)
    {
      v10 = this;
    }

    v11 = &v10[2 * v4];
    if (*a2)
    {
      v12 = (*a2 + 7);
    }

    else
    {
      v12 = a2;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_9:
    v13 = v9 != 0;
    goto LABEL_15;
  }

  v14 = a2;
  this = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v8);
  a2 = v14;
  v11 = this;
  v3 = *(a2 + 2);
  v9 = *v2;
  if (*a2)
  {
    v12 = (*a2 + 7);
  }

  else
  {
    v12 = a2;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_14:
  v13 = *(v9 - 1);
LABEL_15:
  v15 = *v12;
  v16 = &v12[v3];
  if (v13 > v2[2])
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeIntoClearedMessages(v2, a2);
    v21 = 8 * this;
    v11 = (v11 + v21);
    v12 = (v12 + v21);
    if (v12 >= v16)
    {
      goto LABEL_19;
    }
  }

  else if (v12 >= v16)
  {
    goto LABEL_19;
  }

  v17 = *(v2 + 2);
  do
  {
    v18 = (*(*v15 + 16))(v15, v17);
    *v11 = v18;
    v11 += 2;
    v19 = *v12++;
    this = (*(*v18 + 40))(v18, v19);
  }

  while (v12 < v16);
LABEL_19:
  v2[2] = v5;
  v20 = *v2;
  if (*v2)
  {
    if (v5 <= *(v20 - 1))
    {
      return this;
    }
  }

  else if (v5 <= (v20 != 0))
  {
    return this;
  }

  *(v20 - 1) = v5;
  return this;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt32(unsigned __int8 *this, unsigned int a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = 8 * this;
  v6 = *(a3 + 8);
  if (*a3 <= v6)
  {
    v11 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v6);
    a3 = v11;
    v6 = this;
    if (v5 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else if (v5 < 0x80)
  {
LABEL_3:
    LOBYTE(v7) = v5;
    goto LABEL_4;
  }

  do
  {
    *v6++ = v5 | 0x80;
    v7 = v5 >> 7;
    v12 = v5 >> 14;
    v5 >>= 7;
  }

  while (v12);
LABEL_4:
  *v6 = v7;
  v8 = v6 + 1;
  *(a3 + 8) = v8;
  v9 = a2;
  if (*a3 <= v8)
  {
    v13 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v8);
    a3 = v13;
    v8 = this;
    if (a2 < 0x80)
    {
      goto LABEL_6;
    }
  }

  else if (a2 < 0x80)
  {
LABEL_6:
    LOBYTE(v10) = a2;
    goto LABEL_7;
  }

  do
  {
    *v8++ = v9 | 0x80;
    v10 = v9 >> 7;
    v14 = v9 >> 14;
    v9 >>= 7;
  }

  while (v14);
LABEL_7:
  *v8 = v10;
  *(a3 + 8) = v8 + 1;
  return this;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64(unsigned __int8 *this, unint64_t a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = 8 * this;
  v6 = *(a3 + 8);
  if (*a3 <= v6)
  {
    v10 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v6);
    a3 = v10;
    v6 = this;
    if (v5 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else if (v5 < 0x80)
  {
LABEL_3:
    LOBYTE(v7) = v5;
    goto LABEL_4;
  }

  do
  {
    *v6++ = v5 | 0x80;
    v7 = v5 >> 7;
    v11 = v5 >> 14;
    v5 >>= 7;
  }

  while (v11);
LABEL_4:
  *v6 = v7;
  v8 = v6 + 1;
  *(a3 + 8) = v8;
  if (*a3 <= v8)
  {
    v12 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v8);
    a3 = v12;
    v8 = this;
    if (a2 < 0x80)
    {
      goto LABEL_6;
    }
  }

  else if (a2 < 0x80)
  {
LABEL_6:
    LOBYTE(v9) = a2;
    goto LABEL_7;
  }

  do
  {
    *v8++ = a2 | 0x80;
    v9 = a2 >> 7;
    v13 = a2 >> 14;
    a2 >>= 7;
  }

  while (v13);
LABEL_7:
  *v8 = v9;
  *(a3 + 8) = v8 + 1;
  return this;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteUInt32(unsigned __int8 *this, unsigned int a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = 8 * this;
  v6 = *(a3 + 8);
  if (*a3 <= v6)
  {
    v10 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v6);
    a3 = v10;
    v6 = this;
    if (v5 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else if (v5 < 0x80)
  {
LABEL_3:
    LOBYTE(v7) = v5;
    goto LABEL_4;
  }

  do
  {
    *v6++ = v5 | 0x80;
    v7 = v5 >> 7;
    v11 = v5 >> 14;
    v5 >>= 7;
  }

  while (v11);
LABEL_4:
  *v6 = v7;
  v8 = v6 + 1;
  *(a3 + 8) = v8;
  if (*a3 <= v8)
  {
    v12 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v8);
    a3 = v12;
    v8 = this;
    if (a2 < 0x80)
    {
      goto LABEL_6;
    }
  }

  else if (a2 < 0x80)
  {
LABEL_6:
    LOBYTE(v9) = a2;
    goto LABEL_7;
  }

  do
  {
    *v8++ = a2 | 0x80;
    v9 = a2 >> 7;
    v13 = a2 >> 14;
    a2 >>= 7;
  }

  while (v13);
LABEL_7:
  *v8 = v9;
  *(a3 + 8) = v8 + 1;
  return this;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteSInt32(unsigned __int8 *this, int a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = 8 * this;
  v6 = *(a3 + 8);
  if (*a3 <= v6)
  {
    v11 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v6);
    a3 = v11;
    v6 = this;
    if (v5 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else if (v5 < 0x80)
  {
LABEL_3:
    LOBYTE(v7) = v5;
    goto LABEL_4;
  }

  do
  {
    *v6++ = v5 | 0x80;
    v7 = v5 >> 7;
    v12 = v5 >> 14;
    v5 >>= 7;
  }

  while (v12);
LABEL_4:
  *v6 = v7;
  v8 = v6 + 1;
  *(a3 + 8) = v8;
  v9 = (2 * a2) ^ (a2 >> 31);
  if (*a3 <= v8)
  {
    v13 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v8);
    a3 = v13;
    v8 = this;
    if (v9 < 0x80)
    {
      goto LABEL_6;
    }
  }

  else if (v9 < 0x80)
  {
LABEL_6:
    LOBYTE(v10) = v9;
    goto LABEL_7;
  }

  do
  {
    *v8++ = v9 | 0x80;
    v10 = v9 >> 7;
    v14 = v9 >> 14;
    v9 >>= 7;
  }

  while (v14);
LABEL_7:
  *v8 = v10;
  *(a3 + 8) = v8 + 1;
  return this;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteSInt64(unsigned __int8 *this, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = 8 * this;
  v6 = *(a3 + 8);
  if (*a3 <= v6)
  {
    v11 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v6);
    a3 = v11;
    v6 = this;
    if (v5 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else if (v5 < 0x80)
  {
LABEL_3:
    LOBYTE(v7) = v5;
    goto LABEL_4;
  }

  do
  {
    *v6++ = v5 | 0x80;
    v7 = v5 >> 7;
    v12 = v5 >> 14;
    v5 >>= 7;
  }

  while (v12);
LABEL_4:
  *v6 = v7;
  v8 = v6 + 1;
  *(a3 + 8) = v8;
  v9 = (2 * a2) ^ (a2 >> 63);
  if (*a3 <= v8)
  {
    v13 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v8);
    a3 = v13;
    v8 = this;
    if (v9 < 0x80)
    {
      goto LABEL_6;
    }
  }

  else if (v9 < 0x80)
  {
LABEL_6:
    LOBYTE(v10) = v9;
    goto LABEL_7;
  }

  do
  {
    *v8++ = v9 | 0x80;
    v10 = v9 >> 7;
    v14 = v9 >> 14;
    v9 >>= 7;
  }

  while (v14);
LABEL_7:
  *v8 = v10;
  *(a3 + 8) = v8 + 1;
  return this;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteFixed32(uint64_t this, int a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v4 = 8 * this;
  v5 = (8 * this) | 5;
  v6 = *(a3 + 8);
  if (*a3 <= v6)
  {
    v9 = a2;
    v10 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, *(a3 + 8));
    a2 = v9;
    a3 = v10;
    v6 = this;
    if (v4 < 0x80)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_7:
      *v6++ = v5 | 0x80;
      v7 = v5 >> 7;
      v11 = v5 >> 14;
      v5 >>= 7;
    }

    while (v11);
    goto LABEL_4;
  }

  if (v4 >= 0x80)
  {
    goto LABEL_7;
  }

LABEL_3:
  LOBYTE(v7) = v5;
LABEL_4:
  *v6 = v7;
  v8 = v6 + 1;
  *(a3 + 8) = v8;
  if (*a3 <= v8)
  {
    v12 = a2;
    v13 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v8);
    *this = v12;
    *(v13 + 8) = this + 4;
  }

  else
  {
    *v8 = a2;
    *(a3 + 8) = v8 + 4;
  }

  return this;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteFixed64(uint64_t this, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v4 = 8 * this;
  v5 = (8 * this) | 1;
  v6 = *(a3 + 8);
  if (*a3 <= v6)
  {
    v9 = a2;
    v10 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, *(a3 + 8));
    a2 = v9;
    a3 = v10;
    v6 = this;
    if (v4 < 0x80)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_7:
      *v6++ = v5 | 0x80;
      v7 = v5 >> 7;
      v11 = v5 >> 14;
      v5 >>= 7;
    }

    while (v11);
    goto LABEL_4;
  }

  if (v4 >= 0x80)
  {
    goto LABEL_7;
  }

LABEL_3:
  LOBYTE(v7) = v5;
LABEL_4:
  *v6 = v7;
  v8 = v6 + 1;
  *(a3 + 8) = v8;
  if (*a3 <= v8)
  {
    v12 = a2;
    v13 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v8);
    *this = v12;
    *(v13 + 8) = this + 8;
  }

  else
  {
    *v8 = a2;
    *(a3 + 8) = v8 + 8;
  }

  return this;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteBool(uint64_t this, unsigned __int8 a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v4 = 8 * this;
  v5 = *(a3 + 8);
  if (*a3 <= v5)
  {
    v8 = a2;
    v9 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, *(a3 + 8));
    a2 = v8;
    a3 = v9;
    v5 = this;
    if (v4 < 0x80)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_7:
      *v5++ = v4 | 0x80;
      v6 = v4 >> 7;
      v10 = v4 >> 14;
      v4 >>= 7;
    }

    while (v10);
    goto LABEL_4;
  }

  if (v4 >= 0x80)
  {
    goto LABEL_7;
  }

LABEL_3:
  LOBYTE(v6) = v4;
LABEL_4:
  *v5 = v6;
  v7 = v5 + 1;
  *(a3 + 8) = v7;
  if (*a3 <= v7)
  {
    v11 = a2;
    v12 = a3;
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    *this = v11;
    *(v12 + 8) = this + 1;
  }

  else
  {
    *v7 = a2;
    *(a3 + 8) = v7 + 1;
  }

  return this;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteString(int a1, char *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = 8 * a1;
  v5 = (8 * a1) | 2;
  v6 = *(this + 8);
  if (*this <= v6)
  {
    v16 = a2;
    v17 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, *(this + 8));
    a2 = v16;
    v6 = v17;
    if (v4 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else if (v4 < 0x80)
  {
LABEL_3:
    LOBYTE(v7) = v5;
    goto LABEL_4;
  }

  do
  {
    *v6++ = v5 | 0x80;
    v7 = v5 >> 7;
    v18 = v5 >> 14;
    v5 >>= 7;
  }

  while (v18);
LABEL_4:
  *v6 = v7;
  v8 = v6 + 1;
  *(this + 8) = v8;
  v9 = a2[23];
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = *(a2 + 1);
    if (v9 >> 31)
    {
      google::protobuf::internal::WireFormatLite::WriteString(v9);
    }
  }

  if (*this <= v8)
  {
    v19 = a2;
    v20 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v8);
    a2 = v19;
    v8 = v20;
    if (v9 < 0x80)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_20:
      *v8++ = v9 | 0x80;
      v10 = v9 >> 7;
      v21 = v9 >> 14;
      LODWORD(v9) = v9 >> 7;
    }

    while (v21);
    goto LABEL_9;
  }

  if (v9 >= 0x80)
  {
    goto LABEL_20;
  }

LABEL_8:
  LOBYTE(v10) = v9;
LABEL_9:
  *v8 = v10;
  v11 = v8 + 1;
  *(this + 8) = v11;
  v12 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v13 = a2[23];
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = v13;
  if (*this - v11 < v13)
  {
    result = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, a2, v13, v11);
  }

  else
  {
    memcpy(v11, a2, v13);
    result = &v11[v14];
  }

  *(this + 8) = result;
  return result;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::InternalWriteGroup(google::protobuf::internal::WireFormatLite *this, uint64_t a2, const google::protobuf::MessageLite *a3, google::protobuf::io::EpsCopyOutputStream *a4, google::protobuf::io::EpsCopyOutputStream *a5)
{
  if (*a4 <= a3)
  {
    v14 = this;
    a3 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
    v15 = v14;
    v7 = 8 * v14;
    v8 = (8 * v15) | 3;
    if (v7 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 8 * this;
    v8 = (8 * this) | 3;
    if ((8 * this) < 0x80)
    {
LABEL_3:
      LOBYTE(v9) = v8;
      goto LABEL_4;
    }
  }

  do
  {
    *a3 = v8 | 0x80;
    a3 = (a3 + 1);
    v9 = v8 >> 7;
    v16 = v8 >> 14;
    v8 >>= 7;
  }

  while (v16);
LABEL_4:
  *a3 = v9;
  v10 = (*(*a2 + 72))(a2, a3 + 1, a4);
  if (*a4 <= v10)
  {
    v10 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v10);
    v11 = v7 | 4;
    if (v7 < 0x80)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = v7 | 4;
    if (v7 < 0x80)
    {
LABEL_6:
      LOBYTE(v12) = v11;
      goto LABEL_7;
    }
  }

  do
  {
    *v10++ = v11 | 0x80;
    v12 = v11 >> 7;
    v17 = v11 >> 14;
    v11 >>= 7;
  }

  while (v17);
LABEL_7:
  *v10 = v12;
  return v10 + 1;
}

uint64_t google::protobuf::internal::WireFormatLite::InternalWriteMessage(google::protobuf::internal::WireFormatLite *this, uint64_t a2, const google::protobuf::MessageLite *a3, unsigned __int8 *a4, google::protobuf::io::EpsCopyOutputStream *a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  if (*a5 <= a4)
  {
    v15 = this;
    v16 = a3;
    v17 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a5, a4);
    LODWORD(a3) = v16;
    a4 = v17;
    v8 = (8 * v15) | 2;
    if ((8 * v15) < 0x80)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_12:
      *a4++ = v8 | 0x80;
      v9 = v8 >> 7;
      v18 = v8 >> 14;
      v8 >>= 7;
    }

    while (v18);
    goto LABEL_4;
  }

  v8 = (8 * this) | 2;
  if ((8 * this) >= 0x80)
  {
    goto LABEL_12;
  }

LABEL_3:
  LOBYTE(v9) = v8;
LABEL_4:
  *a4 = v9;
  v10 = a4 + 1;
  if (a3 >= 0x80)
  {
    do
    {
      *v10++ = a3 | 0x80;
      v11 = a3 >> 7;
      v14 = a3 >> 14;
      LODWORD(a3) = a3 >> 7;
    }

    while (v14);
  }

  else
  {
    LOBYTE(v11) = a3;
  }

  *v10 = v11;
  v12 = *(*a2 + 72);

  return v12(a2, v10 + 1, a5);
}

void google::protobuf::internal::PrintUTF8ErrorLog(void **a1, void *a2, std::string::size_type a3, std::string::size_type a4, char *__s)
{
  v32 = *MEMORY[0x277D85DE8];
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  HIBYTE(v15) = 0;
  LOBYTE(v14[0]) = 0;
  if (a4)
  {
    v20 = " '";
    v21 = 2;
    if (a2)
    {
      v22 = a1;
      v23 = a2;
      v24 = ".";
      v25 = 1;
      v26 = a3;
      v27 = a4;
      v28 = "'";
      v29 = 1;
      absl::lts_20240722::strings_internal::CatPieces(&v20, 5, __p);
      *v14 = *&__p[0].__r_.__value_.__l.__data_;
      v6 = __p[0].__r_.__value_.__r.__words[2];
    }

    else
    {
      __p[0].__r_.__value_.__r.__words[0] = a3;
      __p[0].__r_.__value_.__l.__size_ = a4;
      v18[0] = "'";
      v18[1] = 1;
      absl::lts_20240722::StrCat(&v20, __p, v18, &v13);
      *v14 = *&v13.__r_.__value_.__l.__data_;
      v6 = v13.__r_.__value_.__r.__words[2];
    }

    v15 = v6;
  }

  if (v15 >= 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = v14[0];
  }

  if (v15 >= 0)
  {
    v8 = HIBYTE(v15);
  }

  else
  {
    v8 = v14[1];
  }

  if (__s)
  {
    v9 = strlen(__s);
  }

  else
  {
    v9 = 0;
  }

  v20 = "String field";
  v21 = 12;
  v22 = v7;
  v23 = v8;
  v24 = " contains invalid UTF-8 data when ";
  v25 = 34;
  v26 = __s;
  v27 = v9;
  v28 = " a protocol buffer. Use the 'bytes' type if you intend to send raw bytes. ";
  v29 = 74;
  v30 = v16;
  v31 = 0;
  absl::lts_20240722::strings_internal::CatPieces(&v20, 6, __p);
  v10 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v20, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/wire_format_lite.cc", 603);
  absl::lts_20240722::log_internal::LogMessage::operator<<(v10, __p);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v20);
  if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(v14[0]);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  operator delete(__p[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if ((SHIBYTE(v17) & 0x80000000) == 0)
  {
LABEL_18:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_21:
  operator delete(v16[0]);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23CD6BF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if ((a25 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::WireFormatLite::VerifyUtf8String(char *a1, int a2, int a3, const char *a4)
{
  result = utf8_range::IsStructurallyValid(a1, a2);
  if (!result)
  {
    v7 = "serializing";
    if (a3 != 1)
    {
      v7 = 0;
    }

    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = "parsing";
    }

    v9 = result;
    v10 = strlen(a4);
    google::protobuf::internal::PrintUTF8ErrorLog(&byte_23CE7F131, 0, a4, v10, v8);
    return v9;
  }

  return result;
}

uint64_t google::protobuf::internal::WireFormatLite::Int32Size(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  if (v1 == 1)
  {
    v3 = 0;
    result = 0;
LABEL_8:
    v9 = (v2 + 4 * v3);
    v10 = v1 - v3;
    do
    {
      v11 = *v9++;
      result += (640 - 9 * __clz(v11)) >> 6;
      --v10;
    }

    while (v10);
    return result;
  }

  v5 = 0;
  v6 = 0;
  v3 = v1 & 0x7FFFFFFE;
  v7 = (v2 + 4);
  v8 = v3;
  do
  {
    v5 += (640 - 9 * __clz(*(v7 - 1))) >> 6;
    v6 += (640 - 9 * __clz(*v7)) >> 6;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  result = v6 + v5;
  if (v3 != v1)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t google::protobuf::internal::WireFormatLite::Int64Size(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  if (v1 == 1)
  {
    v3 = 0;
    result = 0;
LABEL_8:
    v9 = (v2 + 8 * v3);
    v10 = v1 - v3;
    do
    {
      v11 = *v9++;
      result += (640 - 9 * __clz(v11)) >> 6;
      --v10;
    }

    while (v10);
    return result;
  }

  v5 = 0;
  v6 = 0;
  v3 = v1 & 0x7FFFFFFE;
  v7 = (v2 + 8);
  v8 = v3;
  do
  {
    v5 += (640 - 9 * __clz(*(v7 - 1))) >> 6;
    v6 += (640 - 9 * __clz(*v7)) >> 6;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  result = v6 + v5;
  if (v3 != v1)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t google::protobuf::io::ZeroCopyInputStream::ReadCord(google::protobuf::io::ZeroCopyInputStream *this, absl::lts_20240722::Cord *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a2;
  v62 = a3;
  if (a3 < 1)
  {
    return 1;
  }

  v8 = a3;
  a3 = a3;
  v10 = *a2;
  if (v10)
  {
    if (**(a2 + 1))
    {
LABEL_4:
      absl::lts_20240722::Cord::GetAppendBufferSlowPath(a2, 0x10, 0, a3, a5, a6, a7, a8, __p);
      LOBYTE(v11) = __p[0];
      a3 = v62;
      if (__p[0])
      {
        goto LABEL_36;
      }

LABEL_23:
      v21 = __p[0] + *__p[0] + 13;
      v22 = *(__p[0] + 12);
      if (v22 >= 0xBB)
      {
        v23 = 12;
      }

      else
      {
        v23 = 6;
      }

      if (v22 >= 0xBB)
      {
        v24 = -753677;
      }

      else
      {
        v24 = -3725;
      }

      v25 = v22 >= 0x43;
      if (v22 < 0x43)
      {
        v23 = 3;
      }

      v26 = v22 << v23;
      if (v25)
      {
        v27 = v24;
      }

      else
      {
        v27 = -29;
      }

      v28 = (v26 + v27) - *__p[0];
      goto LABEL_37;
    }
  }

  else if (v10 >> 1)
  {
    goto LABEL_4;
  }

  if (a3 >= 0x10)
  {
    v13 = 4083;
    if (a3 < 0xFF3uLL)
    {
      v13 = a3;
    }

    v14 = v13 + 13;
    if (a3 < 0x14)
    {
      v14 = 32;
    }

    v15 = -64;
    if (v14 < 0x201)
    {
      v15 = -8;
    }

    v16 = 64;
    if (v14 < 0x201)
    {
      v16 = 8;
    }

    v17 = (v14 + v16 - 1) & v15;
    v11 = operator new(v17);
    v18 = 6;
    if (v17 < 0x201)
    {
      v18 = 3;
    }

    v19 = v17 >> v18;
    if (v17 >= 0x201)
    {
      v20 = 58;
    }

    else
    {
      v20 = 2;
    }

    *v11 = xmmword_23CE30C30;
    v11[12] = v19 + v20;
    __p[0] = v11;
    a3 = v8;
    if (v11)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  LOBYTE(v11) = 1;
  LOBYTE(__p[0]) = 1;
  *(__p + 1) = 0;
  __p[1] = 0;
LABEL_36:
  v21 = __p + (v11 >> 1) + 1;
  v28 = 15 - (v11 >> 1);
LABEL_37:
  if (v28 >= a3)
  {
    v29 = a3;
  }

  else
  {
    v29 = v28;
  }

  v60[0] = &v63;
  v60[1] = __p;
  v60[2] = &v62;
  do
  {
    while (1)
    {
      v30 = v21;
      v65 = 0;
      v64 = 0;
      if (((*(*this + 16))(this, &v65, &v64) & 1) == 0)
      {
        goto LABEL_59;
      }

      v32 = v64;
      v31 = (v64 - v62);
      if (v64 > v62)
      {
        (*(*this + 24))(this, v31);
        v32 = v62;
      }

      if (!v32)
      {
LABEL_59:
        v46 = v63;
        v59 = *__p;
        LOBYTE(__p[0]) = 1;
        v47 = v59;
        if (v59)
        {
          v48 = v59 >> 1;
        }

        else
        {
          v47 = v59;
          v48 = *v59;
        }

        if (!v48)
        {
          goto LABEL_86;
        }

        if ((*v63 & 1) != 0 && (v49 = *(v63 + 1)) != 0 && !*v49)
        {
          if (*v63 != 1)
          {
            absl::lts_20240722::cord_internal::CordzInfo::Untrack((*v63 - 1));
          }

          if (atomic_fetch_add((v49 + 8), 0xFFFFFFFE) == 2)
          {
            absl::lts_20240722::cord_internal::CordRep::Destroy(v49, v31);
          }

          *v46 = 0;
          v46[1] = 0;
          v47 = v59;
          if ((v59 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else if ((v47 & 1) == 0)
        {
LABEL_67:
          v50 = v59;
          LOBYTE(v59) = 1;
          if (v50)
          {
            absl::lts_20240722::Cord::InlineRep::AppendTree(v46, v50, 2u);
            v12 = 0;
            goto LABEL_98;
          }

          v53 = 0;
          goto LABEL_85;
        }

        v50 = &v59 + 1;
        v53 = v47 >> 1;
        LOBYTE(v59) = 1;
LABEL_85:
        absl::lts_20240722::Cord::AppendPrecise(v46, v50, v53, 2u);
        v47 = v59;
LABEL_86:
        v12 = 0;
        if (v47)
        {
          goto LABEL_98;
        }

        v55 = &v59;
        goto LABEL_97;
      }

      v33 = v65;
      v34 = v30;
      if (v29)
      {
        v35 = v32;
        if (v29 >= v32)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v34 = google::protobuf::io::ZeroCopyInputStream::ReadCord(absl::lts_20240722::Cord *,int)::$_1::operator()(v60, v31);
        v29 = v38;
        v35 = v32;
        if (v38 >= v32)
        {
LABEL_54:
          v37 = v29;
          goto LABEL_55;
        }
      }

      do
      {
        memcpy(v34, v33, v29);
        v62 -= v29;
        if (__p[0])
        {
          LOBYTE(__p[0]) += 2 * v29;
        }

        else
        {
          *__p[0] += v29;
        }

        v34 = google::protobuf::io::ZeroCopyInputStream::ReadCord(absl::lts_20240722::Cord *,int)::$_1::operator()(v60, v36);
        v33 += v29;
        v35 -= v29;
        v29 = v37;
      }

      while (v35 > v37);
LABEL_55:
      v39 = v37;
      v40 = v34;
      memcpy(v34, v33, v35);
      v42 = v62 - v35;
      v62 -= v35;
      if (__p[0])
      {
        break;
      }

      *__p[0] += v35;
      v21 = &v40[v35];
      v29 = v39 - v35;
      if (v42 <= 0)
      {
        goto LABEL_57;
      }
    }

    LOBYTE(__p[0]) += 2 * v35;
    v21 = &v40[v35];
    v29 = v39 - v35;
  }

  while (v42 > 0);
LABEL_57:
  v43 = v63;
  v58 = *__p;
  LOBYTE(__p[0]) = 1;
  v44 = v58;
  if (v58)
  {
    v45 = v58 >> 1;
  }

  else
  {
    v44 = v58;
    v45 = *v58;
  }

  if (v45)
  {
    if ((*v63 & 1) != 0 && (v51 = *(v63 + 1)) != 0 && !*v51)
    {
      v56 = v63;
      if (*v63 != 1)
      {
        absl::lts_20240722::cord_internal::CordzInfo::Untrack((*v63 - 1));
      }

      if (atomic_fetch_add((v51 + 8), 0xFFFFFFFE) == 2)
      {
        absl::lts_20240722::cord_internal::CordRep::Destroy(v51, v41);
      }

      v43 = v56;
      *v56 = 0;
      v56[1] = 0;
      v44 = v58;
      if (v58)
      {
        goto LABEL_93;
      }

LABEL_75:
      v52 = v58;
      LOBYTE(v58) = 1;
      if (v52)
      {
        absl::lts_20240722::Cord::InlineRep::AppendTree(v43, v52, 2u);
        v12 = 1;
        goto LABEL_98;
      }

      v54 = 0;
    }

    else
    {
      if ((v44 & 1) == 0)
      {
        goto LABEL_75;
      }

LABEL_93:
      v52 = &v58 + 1;
      v54 = v44 >> 1;
      LOBYTE(v58) = 1;
    }

    absl::lts_20240722::Cord::AppendPrecise(v43, v52, v54, 2u);
    v44 = v58;
  }

  v12 = 1;
  if (v44)
  {
    goto LABEL_98;
  }

  v55 = &v58;
LABEL_97:
  operator delete(*v55);
LABEL_98:
  if ((__p[0] & 1) == 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

void sub_23CD6C6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if ((__p & 1) == 0)
  {
    operator delete(__p);
  }

  if ((a17 & 1) == 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::ZeroCopyInputStream::ReadCord(absl::lts_20240722::Cord *,int)::$_1::operator()(uint64_t a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *(a1 + 8);
  v4 = **a1;
  *__p = *v3;
  *v3 = 1;
  v5 = __p[0];
  if (__p[0])
  {
    v6 = SLOBYTE(__p[0]) >> 1;
  }

  else
  {
    v5 = __p[0];
    v6 = *__p[0];
  }

  if (v6)
  {
    if ((*v4 & 1) != 0 && (v7 = v4[1]) != 0 && !*v7)
    {
      if (*v4 != 1)
      {
        absl::lts_20240722::cord_internal::CordzInfo::Untrack((*v4 - 1));
      }

      if (atomic_fetch_add((v7 + 8), 0xFFFFFFFE) == 2)
      {
        absl::lts_20240722::cord_internal::CordRep::Destroy(v7, a2);
      }

      *v4 = 0;
      v4[1] = 0;
      v5 = __p[0];
      if ((__p[0] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v5 & 1) == 0)
    {
LABEL_9:
      v8 = __p[0];
      LOBYTE(__p[0]) = 1;
      if (v8)
      {
        absl::lts_20240722::Cord::InlineRep::AppendTree(v4, v8, 2u);
        goto LABEL_21;
      }

      v9 = 0;
      goto LABEL_18;
    }

    v8 = __p + 1;
    v9 = v5 >> 1;
    LOBYTE(__p[0]) = 1;
LABEL_18:
    absl::lts_20240722::Cord::AppendPrecise(v4, v8, v9, 2u);
    v5 = __p[0];
  }

  if ((v5 & 1) == 0)
  {
    operator delete(__p[0]);
  }

LABEL_21:
  v10 = **(a1 + 16);
  if (v10 < 0x10)
  {
    v18 = 1;
    v22 = *(a1 + 8);
    if (*v22)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v10 >= 0xFF3)
  {
    v11 = 4083;
  }

  else
  {
    v11 = **(a1 + 16);
  }

  v12 = v11 + 13;
  if (v10 >= 0x14)
  {
    v13 = v12;
  }

  else
  {
    v13 = 32;
  }

  v14 = -64;
  if (v13 < 0x201)
  {
    v14 = -8;
  }

  v15 = 64;
  if (v13 < 0x201)
  {
    v15 = 8;
  }

  v16 = (v13 + v15 - 1) & v14;
  v17 = operator new(v16);
  v18 = v17;
  v19 = 6;
  if (v16 < 0x201)
  {
    v19 = 3;
  }

  v20 = v16 >> v19;
  if (v16 >= 0x201)
  {
    v21 = 58;
  }

  else
  {
    v21 = 2;
  }

  *v17 = xmmword_23CE30C30;
  v17[12] = v20 + v21;
  v22 = *(a1 + 8);
  if ((*v22 & 1) == 0)
  {
LABEL_40:
    operator delete(*v22);
  }

LABEL_41:
  *v22 = v18;
  *(v22 + 8) = 0;
  v23 = *(a1 + 8);
  if (*v23)
  {
    v25 = *v23 >> 1;
    result = &v23[v25 + 1];
    v33 = 15;
  }

  else
  {
    v24 = *v23;
    v25 = *v24;
    result = v24 + *v24 + 13;
    v27 = *(v24 + 12);
    if (v27 >= 0xBB)
    {
      v28 = 12;
    }

    else
    {
      v28 = 6;
    }

    if (v27 >= 0xBB)
    {
      v29 = -753677;
    }

    else
    {
      v29 = -3725;
    }

    v30 = v27 >= 0x43;
    if (v27 < 0x43)
    {
      v28 = 3;
    }

    v31 = v27 << v28;
    if (v30)
    {
      v32 = v29;
    }

    else
    {
      v32 = -29;
    }

    v33 = (v31 + v32);
  }

  if (v33 - v25 >= **(a1 + 16))
  {
    v34 = **(a1 + 16);
  }

  return result;
}

void sub_23CD6C984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if ((__p & 1) == 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::ZeroCopyOutputStream::WriteCord(uint64_t a1, char *a2)
{
  v43[13] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (v4)
  {
    if (!**(a2 + 1))
    {
LABEL_52:
      result = 1;
      goto LABEL_53;
    }
  }

  else if (!(v4 >> 1))
  {
    goto LABEL_52;
  }

  memset(__n, 0, sizeof(__n));
  v5 = (*(*a1 + 16))(a1, &__n[1], __n);
  result = 0;
  if (v5)
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v41 = -1;
    v7 = *a2;
    if ((v7 & 1) == 0 || (v8 = *(a2 + 1)) == 0)
    {
      v17 = 0;
      v16 = v7 >> 1;
      if (v7)
      {
        v21 = 0;
      }

      else
      {
        v21 = a2 + 1;
      }

      v9 = v7 >> 1;
LABEL_21:
      while (v9)
      {
        v22 = v16;
        v23 = v21;
        while (v22 > __n[0])
        {
          memcpy(*&__n[1], v23, __n[0]);
          v23 += __n[0];
          v22 -= __n[0];
          if (((*(*a1 + 16))(a1, &__n[1], __n) & 1) == 0)
          {
            result = 0;
            goto LABEL_53;
          }
        }

        memcpy(*&__n[1], v23, v22);
        *&__n[1] += v22;
        __n[0] -= v22;
        v9 -= v16;
        *(&v39 + 1) = v9;
        if (v9)
        {
          if (v41 < 0 || !v43[v41])
          {
            v16 = 0;
            v21 = 0;
            v38 = 0uLL;
          }

          else if (v17)
          {
            v24 = v43[0];
            if (*(v43[0] + 15) - 1 == v42[0])
            {
              v25 = 0;
              do
              {
                if (v41 == v25)
                {
                  v29 = 0;
                  goto LABEL_43;
                }

                v26 = v25 + 1;
                v24 = v43[v25 + 1];
                v27 = v42[++v25] + 1;
              }

              while (v27 == *(v24 + 15));
              v42[v26] = v27;
              v28 = v26;
              do
              {
                v24 = *(v24 + 8 * v27 + 16);
                v14 = v28-- <= 1;
                v43[v28] = v24;
                v27 = *(v24 + 14);
                v42[v28] = v27;
              }

              while (!v14);
              v17 = v40;
            }

            else
            {
              v27 = ++v42[0];
            }

            v29 = *(v24 + 8 * v27 + 16);
LABEL_43:
            v16 = *v29;
            v17 -= *v29;
            v40 = v17;
            v30 = *(v29 + 12);
            if (v30 == 1)
            {
              v31 = *(v29 + 16);
              v29 = *(v29 + 24);
              v30 = *(v29 + 12);
            }

            else
            {
              v31 = 0;
            }

            if (v30 < 6)
            {
              v32 = *(v29 + 16);
            }

            else
            {
              v32 = v29 + 13;
            }

            v21 = (v32 + v31);
            v9 = *(&v39 + 1);
          }

          else
          {
            v16 = 0;
            v21 = 0;
          }
        }
      }

      goto LABEL_51;
    }

    v9 = *v8;
    *(&v39 + 1) = v9;
    if (!v9)
    {
LABEL_51:
      (*(*a1 + 24))(a1);
      goto LABEL_52;
    }

    v10 = *(v8 + 12);
    switch(v10)
    {
      case 2u:
        v8 = *(v8 + 16);
        v10 = *(v8 + 12);
        if (v10 == 3)
        {
LABEL_11:
          v11 = *(v8 + 13);
          v41 = *(v8 + 13);
          v12 = *(v8 + 14);
          v43[v11] = v8;
          v42[v11] = v12;
          if (v11)
          {
            v13 = v8;
            do
            {
              v13 = *(v13 + 8 * v12 + 16);
              *&v42[8 * v11 + 4] = v13;
              v12 = *(v13 + 14);
              v42[v11 - 1] = v12;
              v14 = v11-- > 1;
            }

            while (v14);
          }

          v15 = *(v43[0] + 8 * v12 + 16);
          v16 = *v15;
          v17 = *v8 - *v15;
          v40 = v17;
          v18 = *(v15 + 12);
          if (v18 == 1)
          {
            v19 = *(v15 + 16);
            v15 = *(v15 + 24);
            if (*(v15 + 12) < 6u)
            {
LABEL_16:
              v20 = *(v15 + 16);
LABEL_56:
              v21 = (v20 + v19);
              v9 = *(&v39 + 1);
              goto LABEL_21;
            }
          }

          else
          {
            v19 = 0;
            if (v18 < 6)
            {
              goto LABEL_16;
            }
          }

          v20 = v15 + 13;
          goto LABEL_56;
        }

        break;
      case 3u:
        goto LABEL_11;
      case 1u:
        v34 = *(v8 + 16);
        v35 = *(v8 + 24);
        v16 = *v8;
        if (*(v35 + 12) < 6u)
        {
LABEL_60:
          v36 = *(v35 + 16);
LABEL_63:
          v17 = 0;
          v21 = (v36 + v34);
          goto LABEL_21;
        }

        break;
      default:
        v34 = 0;
        v35 = v8;
        v16 = *v8;
        if (v10 < 6)
        {
          goto LABEL_60;
        }

        break;
    }

    v36 = v35 + 13;
    goto LABEL_63;
  }

LABEL_53:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

void google::protobuf::io::ZeroCopyOutputStream::WriteAliasedRaw(google::protobuf::io::ZeroCopyOutputStream *this, const void *a2)
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v2, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/io/zero_copy_stream.cc", 113);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v2, "This ZeroCopyOutputStream doesn't support aliasing. Reaching here usually means a ZeroCopyOutputStream implementation bug.");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v2);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<char *,0>(uint64_t a1, const char **a2)
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

void sub_23CD6CE94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CD6CEA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::ArrayInputStream::ArrayInputStream(uint64_t this, const void *a2, int a3, int a4)
{
  *this = &unk_284F44F80;
  *(this + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(this + 16) = a3;
  *(this + 20) = v4;
  *(this + 24) = 0;
  return this;
}

BOOL google::protobuf::io::ArrayInputStream::Next(google::protobuf::io::ArrayInputStream *this, const void **a2, int *a3)
{
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    *(this + 7) = 0;
    return 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 5))
    {
      v5 = *(this + 5);
    }

    *(this + 7) = v5;
    *a2 = (*(this + 1) + v3);
    *a3 = v5;
    *(this + 6) += *(this + 7);
    return v3 < v4;
  }
}

uint64_t google::protobuf::io::ArrayInputStream::BackUp(uint64_t this, signed int a2)
{
  v2 = *(this + 28);
  if (v2 < 1)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(*(this + 28), 0, "last_returned_size_ > 0");
  }

  if (v2 < a2)
  {
    google::protobuf::io::ArrayInputStream::BackUp(a2, v2);
  }

  if (a2 < 0)
  {
    google::protobuf::io::ArrayInputStream::BackUp(a2);
  }

  *(this + 24) = (*(this + 24) - a2);
  return this;
}

BOOL google::protobuf::io::ArrayInputStream::Skip(google::protobuf::io::ArrayInputStream *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::io::ArrayInputStream::Skip(a2);
  }

  v2 = *(this + 4);
  v3 = *(this + 6);
  v4 = v2 - v3 < a2;
  v5 = v2 - v3 >= a2;
  v6 = v3 + a2;
  if (!v4)
  {
    v2 = v6;
  }

  *(this + 6) = v2;
  *(this + 7) = 0;
  return v5;
}

void *google::protobuf::io::StringOutputStream::StringOutputStream(void *result, uint64_t a2)
{
  *result = &unk_284F44FC8;
  result[1] = a2;
  return result;
}

uint64_t google::protobuf::io::StringOutputStream::Next(google::protobuf::io::StringOutputStream *this, void **a2, int *a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    google::protobuf::io::StringOutputStream::Next(&v18);
  }

  v4 = *(v3 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = v3[1];
    v9 = v3[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v6 = 2 * v4;
    if (v4 < v8)
    {
      v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v4 + 0x7FFFFFFF < v6)
    {
      v6 = v4 + 0x7FFFFFFF;
    }

    if (v6 <= 0x10)
    {
      v6 = 16;
    }

    v7 = v6 - v4;
    if (v6 > v4)
    {
      v5 = HIBYTE(v9);
      if (v6 == v4)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

    v3[1] = v6;
    v3 = *v3;
  }

  else
  {
    LOBYTE(v5) = *(v3 + 23);
    v6 = 22;
    if (v5 >= 0x16u)
    {
      v6 = 2 * v4;
    }

    v7 = v6 - v4;
    if (v6 > v4)
    {
      v8 = 22;
LABEL_15:
      if (v8 - v4 < v7)
      {
        v10 = a3;
        v11 = this;
        v12 = a2;
        std::string::__grow_by(*(this + 1), v8, v7 - v8 + v4, v4, v4, 0, 0);
        a2 = v12;
        this = v11;
        a3 = v10;
        v3[1] = v4;
        LOBYTE(v5) = *(v3 + 23);
      }

      v13 = v4 + v7;
      if ((v5 & 0x80) != 0)
      {
        v3[1] = v13;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = v13 & 0x7F;
      }

      v14 = v3 + v13;
      goto LABEL_23;
    }

    *(v3 + 23) = v6;
  }

  v14 = v3 + v6;
LABEL_23:
  *v14 = 0;
  v3 = *(this + 1);
  LOBYTE(v5) = *(v3 + 23);
LABEL_24:
  if ((v5 & 0x80) != 0)
  {
    *a2 = (*v3 + v4);
    v15 = *(this + 1);
    v16 = *(v15 + 23);
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  *a2 = v3 + v4;
  v15 = *(this + 1);
  v16 = *(v15 + 23);
  if (v16 < 0)
  {
LABEL_26:
    v16 = *(v15 + 8);
  }

LABEL_27:
  *a3 = v16 - v4;
  return 1;
}
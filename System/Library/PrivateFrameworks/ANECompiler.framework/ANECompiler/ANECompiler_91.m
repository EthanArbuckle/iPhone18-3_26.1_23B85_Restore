google::protobuf::UnknownFieldSet *google::protobuf::FileOptions::Clear(google::protobuf::FileOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  if (*(this + 14) >= 1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 12);
  }

  v3 = *(this + 10);
  if (!v3)
  {
    goto LABEL_43;
  }

  if (v3)
  {
    v4 = *(this + 9) & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_6:
    if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    v6 = *(this + 11) & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v8 = *(this + 13) & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_33;
      }
    }

LABEL_10:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  v5 = *(this + 10) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_7:
  if ((v3 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v7 = *(this + 12) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_29;
    }
  }

LABEL_9:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_33:
  v9 = *(this + 14) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v3 & 0x40) != 0)
    {
LABEL_37:
      v10 = *(this + 15) & 0xFFFFFFFFFFFFFFFCLL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v3 & 0x80) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      }

      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_41;
      }

LABEL_43:
      if ((v3 & 0x700) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_44;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_11:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_43;
  }

LABEL_41:
  v11 = *(this + 16) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v11 + 23) & 0x80000000) == 0)
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    goto LABEL_43;
  }

  **v11 = 0;
  *(v11 + 8) = 0;
  if ((v3 & 0x700) == 0)
  {
    goto LABEL_57;
  }

LABEL_44:
  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_54;
  }

  v12 = *(this + 17) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_54;
    }

LABEL_46:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  *v12 = 0;
  *(v12 + 23) = 0;
  if ((v3 & 0x200) == 0)
  {
    goto LABEL_46;
  }

LABEL_54:
  v13 = *(this + 18) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v13 + 23) & 0x80000000) == 0)
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  **v13 = 0;
  *(v13 + 8) = 0;
  if ((v3 & 0x400) != 0)
  {
LABEL_56:
    result = google::protobuf::FeatureSet::Clear(*(this + 19));
  }

LABEL_57:
  if ((v3 & 0xF800) != 0)
  {
    *(this + 164) = 0;
    *(this + 40) = 0;
  }

  if ((v3 & 0xF0000) != 0)
  {
    *(this + 165) = 0;
    *(this + 42) = 1;
    *(this + 172) = 1;
  }

  v15 = *(this + 8);
  v14 = this + 8;
  *(v14 + 8) = 0;
  if (v15)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v14);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo::Clear(google::protobuf::UnknownFieldSet *this)
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

const google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorProto::_InternalSerialize(google::protobuf::FileDescriptorProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if (v9)
  {
    v11 = *(this + 22) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *(v11 + 23);
    if (v12 < 0 && (v12 = *(v11 + 8), v12 > 127) || *a3 - a2 + 14 < v12)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v11, a2);
      if ((v9 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *a2 = 10;
      v13 = a2 + 2;
      *(a2 + 1) = v12;
      if (*(v11 + 23) >= 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = *v11;
      }

      memcpy(v7 + 2, v14, v12);
      v7 = &v13[v12];
      if ((v9 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    v10 = *(this + 8);
    if (v10 < 1)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  if ((v9 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  v15 = *(this + 23) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 23);
  if (v16 < 0 && (v16 = *(v15 + 8), v16 > 127) || *a3 - v7 + 14 < v16)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 2, v15, v7);
    v10 = *(this + 8);
    if (v10 < 1)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *v7 = 18;
    v17 = v7 + 2;
    v7[1] = v16;
    if (*(v15 + 23) >= 0)
    {
      v18 = v15;
    }

    else
    {
      v18 = *v15;
    }

    memcpy(v7 + 2, v18, v16);
    v7 = &v17[v16];
    v10 = *(this + 8);
    if (v10 < 1)
    {
      goto LABEL_35;
    }
  }

LABEL_19:
  v19 = (this + 24);
  v20 = 8;
  do
  {
    while (1)
    {
      v21 = (*v19 & 1) != 0 ? (*v19 + v20 - 1) : (this + 24);
      v22 = *v21;
      v23 = *(*v21 + 23);
      if ((v23 & 0x8000000000000000) == 0 || (v23 = v22[1], v23 <= 127))
      {
        if (*a3 - v7 + 14 >= v23)
        {
          break;
        }
      }

      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 3, v22, v7);
      v20 += 8;
      if (!--v10)
      {
        goto LABEL_35;
      }
    }

    *v7 = 26;
    v7[1] = v23;
    if (*(v22 + 23) < 0)
    {
      v22 = *v22;
    }

    v24 = v7 + 2;
    memcpy(v7 + 2, v22, v23);
    v7 = &v24[v23];
    v20 += 8;
    --v10;
  }

  while (v10);
LABEL_35:
  v25 = *(this + 14);
  if (v25)
  {
    v26 = 0;
    v27 = (this + 48);
    do
    {
      if (*v27)
      {
        v28 = (*v27 + 8 * v26 + 7);
      }

      else
      {
        v28 = (this + 48);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(4, *v28, *(*v28 + 20), v7, a3, a6);
      ++v26;
    }

    while (v25 != v26);
  }

  v29 = *(this + 20);
  if (v29)
  {
    v30 = 0;
    v31 = (this + 72);
    do
    {
      if (*v31)
      {
        v32 = (*v31 + 8 * v30 + 7);
      }

      else
      {
        v32 = (this + 72);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(5, *v32, *(*v32 + 20), v7, a3, a6);
      ++v30;
    }

    while (v29 != v30);
  }

  v33 = *(this + 26);
  if (v33)
  {
    v34 = 0;
    v35 = (this + 96);
    do
    {
      if (*v35)
      {
        v36 = (*v35 + 8 * v34 + 7);
      }

      else
      {
        v36 = (this + 96);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(6, *v36, *(*v36 + 20), v7, a3, a6);
      ++v34;
    }

    while (v33 != v34);
  }

  v37 = *(this + 32);
  if (v37)
  {
    v38 = 0;
    v39 = (this + 120);
    do
    {
      if (*v39)
      {
        v40 = (*v39 + 8 * v38 + 7);
      }

      else
      {
        v40 = (this + 120);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(7, *v40, *(*v40 + 20), v7, a3, a6);
      ++v38;
    }

    while (v37 != v38);
  }

  if ((v9 & 8) == 0)
  {
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_61;
    }

LABEL_64:
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(9, *(this + 26), *(*(this + 26) + 40), v7, a3, a6);
    v41 = *(this + 36);
    if (v41 < 1)
    {
      goto LABEL_74;
    }

    goto LABEL_65;
  }

  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(8, *(this + 25), *(*(this + 25) + 44), v7, a3, a6);
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_64;
  }

LABEL_61:
  v41 = *(this + 36);
  if (v41 >= 1)
  {
LABEL_65:
    for (i = 0; i != v41; ++i)
    {
      if (*a3 <= v7)
      {
        v46 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
        v43 = *(*(this + 19) + 4 * i);
        *v46 = 80;
        v44 = v46 + 1;
        if (v43 >= 0x80)
        {
          do
          {
LABEL_72:
            *v44++ = v43 | 0x80;
            v45 = v43 >> 7;
            v47 = v43 >> 14;
            v43 >>= 7;
          }

          while (v47);
          goto LABEL_69;
        }
      }

      else
      {
        v43 = *(*(this + 19) + 4 * i);
        *v7 = 80;
        v44 = v7 + 1;
        if (v43 >= 0x80)
        {
          goto LABEL_72;
        }
      }

      LOBYTE(v45) = v43;
LABEL_69:
      *v44 = v45;
      v7 = v44 + 1;
    }
  }

LABEL_74:
  v48 = *(this + 40);
  if (v48 >= 1)
  {
    for (j = 0; j != v48; ++j)
    {
      if (*a3 <= v7)
      {
        v53 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
        v50 = *(*(this + 21) + 4 * j);
        *v53 = 88;
        v51 = v53 + 1;
        if (v50 >= 0x80)
        {
          do
          {
LABEL_82:
            *v51++ = v50 | 0x80;
            v52 = v50 >> 7;
            v54 = v50 >> 14;
            v50 >>= 7;
          }

          while (v54);
          goto LABEL_79;
        }
      }

      else
      {
        v50 = *(*(this + 21) + 4 * j);
        *v7 = 88;
        v51 = v7 + 1;
        if (v50 >= 0x80)
        {
          goto LABEL_82;
        }
      }

      LOBYTE(v52) = v50;
LABEL_79:
      *v51 = v52;
      v7 = v51 + 1;
    }
  }

  if ((v9 & 4) == 0)
  {
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_86;
    }

LABEL_95:
    if (*a3 <= v7)
    {
      v64 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      v61 = *(this + 54);
      *v64 = 112;
      v62 = v64 + 1;
      if (v61 < 0x80)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v61 = *(this + 54);
      *v7 = 112;
      v62 = v7 + 1;
      if (v61 < 0x80)
      {
LABEL_97:
        LOBYTE(v63) = v61;
        goto LABEL_98;
      }
    }

    do
    {
      *v62++ = v61 | 0x80;
      v63 = v61 >> 7;
      v65 = v61 >> 14;
      v61 >>= 7;
    }

    while (v65);
LABEL_98:
    *v62 = v63;
    v7 = v62 + 1;
    v55 = *(this + 1);
    if ((v55 & 1) == 0)
    {
      return v7;
    }

    goto LABEL_99;
  }

  v57 = *(this + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v58 = *(v57 + 23);
  if (v58 < 0 && (v58 = *(v57 + 8), v58 > 127) || *a3 - v7 + 14 < v58)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 12, v57, v7);
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_95;
    }
  }

  else
  {
    *v7 = 98;
    v59 = v7 + 2;
    v7[1] = v58;
    if (*(v57 + 23) >= 0)
    {
      v60 = v57;
    }

    else
    {
      v60 = *v57;
    }

    memcpy(v7 + 2, v60, v58);
    v7 = &v59[v58];
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_95;
    }
  }

LABEL_86:
  v55 = *(this + 1);
  if ((v55 & 1) == 0)
  {
    return v7;
  }

LABEL_99:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v55 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *google::protobuf::FileDescriptorProto::ByteSizeLong(google::protobuf::FileDescriptorProto *this)
{
  v2 = *(this + 8);
  if (v2 < 1)
  {
    v6 = *(this + 8);
    goto LABEL_20;
  }

  v3 = *(this + 3);
  if ((v3 & 1) == 0)
  {
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v6 = v2 + v2 * (v5 + ((352 - 9 * __clz(v5)) >> 6));
    goto LABEL_20;
  }

  v7 = v3 - 1;
  if (v2 == 1)
  {
    v8 = 0;
    v6 = 1;
LABEL_16:
    v17 = (v7 + 8 * v8 + 8);
    v18 = v2 - v8;
    do
    {
      v19 = *v17++;
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v6 += v21 + ((352 - 9 * __clz(v21)) >> 6);
      --v18;
    }

    while (v18);
    goto LABEL_20;
  }

  v9 = 0;
  v8 = v2 & 0x7FFFFFFE;
  v10 = v7 + 16;
  v11 = v8;
  v12 = *(this + 8);
  do
  {
    v13 = *(v10 - 8);
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    v16 = *(*v10 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    if (*(*v10 + 23) >= 0)
    {
      v16 = *(*v10 + 23);
    }

    v12 += v15 + ((352 - 9 * __clz(v15)) >> 6);
    v9 += v16 + ((352 - 9 * __clz(v16)) >> 6);
    v10 += 16;
    v11 -= 2;
  }

  while (v11);
  v6 = v9 + v12;
  if (v8 != v2)
  {
    goto LABEL_16;
  }

LABEL_20:
  v22 = *(this + 6);
  v23 = *(this + 14);
  v24 = v6 + v23;
  if (v22)
  {
    v25 = (v22 + 7);
  }

  else
  {
    v25 = (this + 48);
  }

  if (v23)
  {
    v26 = 8 * v23;
    do
    {
      v27 = *v25++;
      v28 = google::protobuf::DescriptorProto::ByteSizeLong(v27);
      v24 += &v28[(352 - 9 * __clz(v28)) >> 6];
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 9);
  v30 = *(this + 20);
  v31 = v24 + v30;
  if (v29)
  {
    v32 = (v29 + 7);
  }

  else
  {
    v32 = (this + 72);
  }

  if (v30)
  {
    v33 = 8 * v30;
    do
    {
      v34 = *v32++;
      v35 = google::protobuf::EnumDescriptorProto::ByteSizeLong(v34);
      v31 += &v35[(352 - 9 * __clz(v35)) >> 6];
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(this + 12);
  v37 = *(this + 26);
  v38 = v31 + v37;
  if (v36)
  {
    v39 = (v36 + 7);
  }

  else
  {
    v39 = (this + 96);
  }

  if (v37)
  {
    v40 = 8 * v37;
    do
    {
      v41 = *v39++;
      v42 = google::protobuf::ServiceDescriptorProto::ByteSizeLong(v41);
      v38 += &v42[(352 - 9 * __clz(v42)) >> 6];
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(this + 15);
  v44 = *(this + 32);
  v45 = v38 + v44;
  if (v43)
  {
    v46 = (v43 + 7);
  }

  else
  {
    v46 = (this + 120);
  }

  if (v44)
  {
    v47 = 8 * v44;
    do
    {
      v48 = *v46++;
      v49 = google::protobuf::FieldDescriptorProto::ByteSizeLong(v48);
      v45 += &v49[(352 - 9 * __clz(v49)) >> 6];
      v47 -= 8;
    }

    while (v47);
  }

  v50 = google::protobuf::internal::WireFormatLite::Int32Size(this + 36);
  v51 = *(this + 36);
  v52 = (v50 + v51 + google::protobuf::internal::WireFormatLite::Int32Size(this + 40) + *(this + 40) + v45);
  v53 = *(this + 4);
  if ((v53 & 0x3F) != 0)
  {
    if (v53)
    {
      v55 = *(this + 22) & 0xFFFFFFFFFFFFFFFCLL;
      v56 = *(v55 + 23);
      v57 = *(v55 + 8);
      if ((v56 & 0x80u) == 0)
      {
        v57 = v56;
      }

      v52 = (v52 + v57 + ((352 - 9 * __clz(v57)) >> 6) + 1);
      if ((v53 & 2) == 0)
      {
LABEL_47:
        if ((v53 & 4) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_61;
      }
    }

    else if ((v53 & 2) == 0)
    {
      goto LABEL_47;
    }

    v58 = *(this + 23) & 0xFFFFFFFFFFFFFFFCLL;
    v59 = *(v58 + 23);
    v60 = *(v58 + 8);
    if ((v59 & 0x80u) == 0)
    {
      v60 = v59;
    }

    v52 = (v52 + v60 + ((352 - 9 * __clz(v60)) >> 6) + 1);
    if ((v53 & 4) == 0)
    {
LABEL_48:
      if ((v53 & 8) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_64;
    }

LABEL_61:
    v61 = *(this + 24) & 0xFFFFFFFFFFFFFFFCLL;
    v62 = *(v61 + 23);
    v63 = *(v61 + 8);
    if ((v62 & 0x80u) == 0)
    {
      v63 = v62;
    }

    v52 = (v52 + v63 + ((352 - 9 * __clz(v63)) >> 6) + 1);
    if ((v53 & 8) == 0)
    {
LABEL_49:
      if ((v53 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_65;
    }

LABEL_64:
    v64 = google::protobuf::FileOptions::ByteSizeLong(*(this + 25));
    v52 = &v64[((352 - 9 * __clz(v64)) >> 6) + 1 + v52];
    if ((v53 & 0x10) == 0)
    {
LABEL_50:
      if ((v53 & 0x20) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

LABEL_65:
    v65 = *(this + 26);
    v66 = *(v65 + 24);
    v67 = *(v65 + 16);
    v68 = (v67 + 7);
    if (v67)
    {
      v69 = v68;
    }

    else
    {
      v69 = (v65 + 16);
    }

    if (v66)
    {
      v70 = 8 * v66;
      do
      {
        v71 = *v69++;
        v72 = google::protobuf::SourceCodeInfo_Location::ByteSizeLong(v71);
        v66 = (v66 + v72 + ((352 - 9 * __clz(v72)) >> 6));
        v70 -= 8;
      }

      while (v70);
    }

    else
    {
      v66 = 0;
    }

    v73 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v65, v66, (v65 + 40));
    v52 = &v73[v52 + 1 + ((352 - 9 * __clz(v73)) >> 6)];
    if ((v53 & 0x20) == 0)
    {
      goto LABEL_52;
    }

LABEL_51:
    v52 = (v52 + ((640 - 9 * __clz(*(this + 54))) >> 6) + 1);
  }

LABEL_52:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v52, this + 5);
}

uint64_t google::protobuf::FileDescriptorProto::IsInitialized(google::protobuf::FileDescriptorProto *this)
{
  v2 = (this + 48);
  v3 = *(this + 14);
  v4 = 8 * v3;
  v5 = v3 + 1;
  while (--v5 >= 1)
  {
    v6 = v4 - 8;
    v7 = (*v2 + v4 - 1);
    if ((*v2 & 1) == 0)
    {
      v7 = v2;
    }

    IsInitialized = google::protobuf::DescriptorProto::IsInitialized(*v7);
    v4 = v6;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v10 = (this + 72);
  v11 = *(this + 20);
  v12 = 8 * v11;
  v13 = v11 + 1;
  while (--v13 >= 1)
  {
    v14 = v12 - 8;
    v15 = (*v10 + v12 - 1);
    if ((*v10 & 1) == 0)
    {
      v15 = (this + 72);
    }

    v16 = google::protobuf::EnumDescriptorProto::IsInitialized(*v15);
    v12 = v14;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = (this + 96);
  v18 = *(this + 26);
  v19 = 8 * v18;
  v20 = v18 + 1;
  while (--v20 >= 1)
  {
    v21 = v19 - 8;
    v22 = (*v17 + v19 - 1);
    if ((*v17 & 1) == 0)
    {
      v22 = (this + 96);
    }

    v23 = google::protobuf::ServiceDescriptorProto::IsInitialized(*v22);
    v19 = v21;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = (this + 120);
  v25 = *(this + 32);
  v26 = 8 * v25;
  v27 = v25 + 1;
  while (--v27 >= 1)
  {
    v28 = v26 - 8;
    v29 = (*v24 + v26 - 1);
    if ((*v24 & 1) == 0)
    {
      v29 = (this + 120);
    }

    v30 = google::protobuf::FieldDescriptorProto::IsInitialized(*v29);
    v26 = v28;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 8) == 0)
  {
    return 1;
  }

  result = google::protobuf::FileOptions::IsInitialized(*(this + 25));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t google::protobuf::FileOptions::IsInitialized(google::protobuf::FileOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16), &google::protobuf::_FileOptions_default_instance_);
  if (result)
  {
    v3 = *(this + 14);
    v4 = *(this + 6);
    if (v4)
    {
      v6 = v4 - 1;
      while (v3 >= 1)
      {
        v7 = v3 - 1;
        IsInitialized = google::protobuf::UninterpretedOption::IsInitialized(*&v6[8 * v3]);
        v3 = v7;
        if (!IsInitialized)
        {
          return 0;
        }
      }
    }

    else
    {
      v5 = v3 + 1;
      while (--v5 >= 1)
      {
        if (!google::protobuf::UninterpretedOption::IsInitialized(v4))
        {
          return 0;
        }
      }
    }

    if ((*(this + 41) & 4) == 0)
    {
      return 1;
    }

    result = google::protobuf::FeatureSet::IsInitialized(*(this + 19));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *google::protobuf::DescriptorProto_ExtensionRange::DescriptorProto_ExtensionRange(void *result, uint64_t a2)
{
  *result = off_284F46000;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v4 + 1);
    }

    google::protobuf::ExtensionRangeOptions::SharedDtor(v4);
    MEMORY[0x23EED9460](v4, 0x10A1C401CF7E6C9);
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v4 + 1);
    }

    google::protobuf::ExtensionRangeOptions::SharedDtor(v4);
    MEMORY[0x23EED9460](v4, 0x10A1C401CF7E6C9);
  }

  JUMPOUT(0x23EED9460);
}

void *google::protobuf::DescriptorProto_ExtensionRange::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v5 = (this + 1);
  v4 = this[1];
  if ((v4 & 1) == 0)
  {
    v6 = *(a2 + 4);
    if ((v6 & 7) == 0)
    {
      goto LABEL_13;
    }

LABEL_3:
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      *(this + 8) = *(a2 + 8);
      if ((v6 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v7 = this;
    v8 = this[3];
    v9 = a2;
    v10 = *(a2 + 3);
    if (v8)
    {
      google::protobuf::ExtensionRangeOptions::MergeImpl(v8, v10, a3, a4);
      a2 = v9;
      this = v7;
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = google::protobuf::Arena::CopyConstruct<google::protobuf::ExtensionRangeOptions>(v4, v10);
      this = v7;
      v7[3] = v11;
      a2 = v9;
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    *(this + 9) = *(a2 + 9);
    goto LABEL_13;
  }

  v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    goto LABEL_3;
  }

LABEL_13:
  *(this + 4) |= v6;
  v12 = *(a2 + 1);
  if (v12)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ExtensionRange::Clear(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = this;
    google::protobuf::ExtensionRangeOptions::Clear(*(this + 3));
    this = v2;
  }

  if ((v1 & 6) != 0)
  {
    *(this + 4) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::ExtensionRangeOptions::Clear(google::protobuf::ExtensionRangeOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  if (*(this + 14) >= 1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 12);
  }

  if (*(this + 20) >= 1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 18);
  }

  v3 = *(this + 10);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      result = google::protobuf::FeatureSet::Clear(*(this + 12));
    }

    *(this + 26) = 1;
  }

  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v4);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ExtensionRange::_InternalSerialize(google::protobuf::DescriptorProto_ExtensionRange *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if ((v9 & 2) != 0)
  {
    v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<1>(a3, *(this + 8), a2);
    if ((v9 & 4) == 0)
    {
LABEL_3:
      if ((v9 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(3, *(this + 3), *(*(this + 3) + 44), v7, a3, a6);
      v10 = *(this + 1);
      if ((v10 & 1) == 0)
      {
        return v7;
      }

      goto LABEL_9;
    }
  }

  else if ((v9 & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<2>(a3, *(this + 9), v7);
  if (v9)
  {
    goto LABEL_8;
  }

LABEL_4:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return v7;
  }

LABEL_9:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<1>(google::protobuf::io::EpsCopyOutputStream *a1, unsigned int a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v8 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    *v8 = 8;
    v4 = v8 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 8;
    v4 = a3 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v6) = v5;
      goto LABEL_4;
    }
  }

  do
  {
    *v4++ = v5 | 0x80;
    v6 = v5 >> 7;
    v9 = v5 >> 14;
    v5 >>= 7;
  }

  while (v9);
LABEL_4:
  *v4 = v6;
  return v4 + 1;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<2>(google::protobuf::io::EpsCopyOutputStream *a1, unsigned int a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v8 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    *v8 = 16;
    v4 = v8 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 16;
    v4 = a3 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v6) = v5;
      goto LABEL_4;
    }
  }

  do
  {
    *v4++ = v5 | 0x80;
    v6 = v5 >> 7;
    v9 = v5 >> 14;
    v5 >>= 7;
  }

  while (v9);
LABEL_4:
  *v4 = v6;
  return v4 + 1;
}

char *google::protobuf::DescriptorProto_ExtensionRange::ByteSizeLong(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  v1 = *(this + 4);
  if ((v1 & 7) != 0)
  {
    if (v1)
    {
      v2 = this;
      v6 = google::protobuf::ExtensionRangeOptions::ByteSizeLong(*(this + 3));
      v3 = &v6[((352 - 9 * __clz(v6)) >> 6) + 1];
      if ((v1 & 2) != 0)
      {
LABEL_4:
        this = v2;
        v3 = (v3 + ((704 - 9 * __clz(v2[8])) >> 6));
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

LABEL_13:
        v3 = (v3 + ((704 - 9 * __clz(*(this + 9))) >> 6));
        v4 = (this + 20);

        return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, v4);
      }
    }

    else
    {
      v2 = this;
      v3 = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_4;
      }
    }

    this = v2;
    if ((v1 & 4) == 0)
    {
LABEL_5:
      v4 = (this + 20);

      return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, v4);
    }

    goto LABEL_13;
  }

  v3 = 0;
  v4 = (this + 20);

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, v4);
}

uint64_t google::protobuf::DescriptorProto_ExtensionRange::IsInitialized(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = google::protobuf::ExtensionRangeOptions::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t google::protobuf::ExtensionRangeOptions::IsInitialized(google::protobuf::ExtensionRangeOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16), &google::protobuf::_ExtensionRangeOptions_default_instance_);
  if (result)
  {
    v3 = *(this + 20);
    v4 = *(this + 9);
    if (v4)
    {
      v6 = v4 - 1;
      while (v3 >= 1)
      {
        v7 = v3 - 1;
        IsInitialized = google::protobuf::UninterpretedOption::IsInitialized(*&v6[8 * v3]);
        v3 = v7;
        if (!IsInitialized)
        {
          return 0;
        }
      }
    }

    else
    {
      v5 = v3 + 1;
      while (--v5 >= 1)
      {
        if (!google::protobuf::UninterpretedOption::IsInitialized(v4))
        {
          return 0;
        }
      }
    }

    if ((*(this + 40) & 1) == 0)
    {
      return 1;
    }

    result = google::protobuf::FeatureSet::IsInitialized(*(this + 12));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *google::protobuf::DescriptorProto_ReservedRange::DescriptorProto_ReservedRange(void *result, uint64_t a2)
{
  *result = off_284F45848;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void google::protobuf::DescriptorProto_ReservedRange::~DescriptorProto_ReservedRange(google::protobuf::DescriptorProto_ReservedRange *this)
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

void *google::protobuf::DescriptorProto_ReservedRange::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      *(this + 6) = *(a2 + 6);
    }

    if ((v3 & 2) != 0)
    {
      *(this + 7) = *(a2 + 7);
    }
  }

  *(this + 4) |= v3;
  v4 = *(a2 + 1);
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ReservedRange::Clear(google::protobuf::DescriptorProto_ReservedRange *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ReservedRange::_InternalSerialize(google::protobuf::DescriptorProto_ReservedRange *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  v7 = *(this + 4);
  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<2>(a3, *(this + 7), v5);
    v8 = *(this + 1);
    if ((v8 & 1) == 0)
    {
      return v5;
    }

    goto LABEL_7;
  }

  v5 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<1>(a3, *(this + 6), a2);
  if ((v7 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v5;
  }

LABEL_7:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v5, a3, a4);
}

char *google::protobuf::DescriptorProto_ReservedRange::ByteSizeLong(google::protobuf::DescriptorProto_ReservedRange *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = ((704 - 9 * __clz(*(this + 6))) >> 6);
      if ((v1 & 2) == 0)
      {
LABEL_9:
        v3 = (this + 20);
        return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, v3);
      }
    }

    else
    {
      v2 = 0;
      if ((v1 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    v2 = (v2 + ((704 - 9 * __clz(*(this + 7))) >> 6));
    goto LABEL_9;
  }

  v2 = 0;
  v3 = (this + 20);
  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, v3);
}

void *google::protobuf::DescriptorProto::DescriptorProto(void *result, uint64_t a2)
{
  *result = off_284F46138;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a2;
  result[6] = 0;
  result[7] = 0;
  result[8] = a2;
  result[9] = 0;
  result[10] = 0;
  result[11] = a2;
  result[12] = 0;
  result[13] = 0;
  result[14] = a2;
  result[15] = 0;
  result[16] = 0;
  result[17] = a2;
  result[18] = 0;
  result[19] = 0;
  result[20] = a2;
  result[21] = 0;
  result[22] = 0;
  result[23] = a2;
  result[24] = 0;
  result[25] = 0;
  result[26] = a2;
  result[27] = &google::protobuf::internal::fixed_address_empty_string;
  result[28] = 0;
  return result;
}

google::protobuf::DescriptorProto *google::protobuf::DescriptorProto::DescriptorProto(google::protobuf::DescriptorProto *this, google::protobuf::Arena *a2, const google::protobuf::DescriptorProto *a3)
{
  *(this + 1) = a2;
  v6 = (this + 8);
  *this = off_284F46138;
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
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a3 + 24), google::protobuf::Arena::CopyConstruct<google::protobuf::FieldDescriptorProto>);
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
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 24, (a3 + 96), google::protobuf::Arena::CopyConstruct<google::protobuf::DescriptorProto_ExtensionRange>);
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = a2;
  if (*(a3 + 32))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 30, (a3 + 120), google::protobuf::Arena::CopyConstruct<google::protobuf::FieldDescriptorProto>);
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = a2;
  if (*(a3 + 38))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 36, (a3 + 144), google::protobuf::Arena::CopyConstruct<google::protobuf::OneofDescriptorProto>);
  }

  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = a2;
  if (*(a3 + 44))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 42, (a3 + 168), google::protobuf::Arena::CopyConstruct<google::protobuf::DescriptorProto_ReservedRange>);
  }

  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = a2;
  if (*(a3 + 50))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 192, a3 + 192);
  }

  v8 = *(a3 + 27);
  if ((v8 & 3) != 0)
  {
    v8 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 216), a2);
  }

  *(this + 27) = v8;
  if ((*(this + 16) & 2) != 0)
  {
    v9 = google::protobuf::Arena::CopyConstruct<google::protobuf::MessageOptions>(a2, *(a3 + 28));
  }

  else
  {
    v9 = 0;
  }

  *(this + 28) = v9;
  return this;
}

void sub_23CDABEA8(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v8);
  google::protobuf::RepeatedPtrField<google::protobuf::DescriptorProto_ReservedRange>::~RepeatedPtrField(v7);
  google::protobuf::RepeatedPtrField<google::protobuf::OneofDescriptorProto>::~RepeatedPtrField(v6);
  google::protobuf::RepeatedPtrField<google::protobuf::FieldDescriptorProto>::~RepeatedPtrField(v5);
  google::protobuf::RepeatedPtrField<google::protobuf::DescriptorProto_ExtensionRange>::~RepeatedPtrField(v4);
  google::protobuf::RepeatedPtrField<google::protobuf::EnumDescriptorProto>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<google::protobuf::DescriptorProto>::~RepeatedPtrField(v2);
  google::protobuf::RepeatedPtrField<google::protobuf::FieldDescriptorProto>::~RepeatedPtrField((v1 + 24));
  _Unwind_Resume(a1);
}

void sub_23CDABF1C(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<google::protobuf::DescriptorProto>::~RepeatedPtrField(v2);
  google::protobuf::RepeatedPtrField<google::protobuf::FieldDescriptorProto>::~RepeatedPtrField((v1 + 24));
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorProto::~DescriptorProto(google::protobuf::DescriptorProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 27);
  v4 = *(this + 28);
  if (v4)
  {
    google::protobuf::MessageOptions::~MessageOptions(v4);
    MEMORY[0x23EED9460]();
  }

  google::protobuf::DescriptorProto::Impl_::~Impl_((this + 16));
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 27);
  v4 = *(this + 28);
  if (v4)
  {
    google::protobuf::MessageOptions::~MessageOptions(v4);
    MEMORY[0x23EED9460]();
  }

  google::protobuf::DescriptorProto::Impl_::~Impl_((this + 16));

  JUMPOUT(0x23EED9460);
}

void google::protobuf::DescriptorProto::MergeImpl(google::protobuf::DescriptorProto *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
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
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a2 + 24), google::protobuf::Arena::CopyConstruct<google::protobuf::FieldDescriptorProto>);
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
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 24, (a2 + 96), google::protobuf::Arena::CopyConstruct<google::protobuf::DescriptorProto_ExtensionRange>);
  }

  if (*(a2 + 32))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 30, (a2 + 120), google::protobuf::Arena::CopyConstruct<google::protobuf::FieldDescriptorProto>);
  }

  if (*(a2 + 38))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 36, (a2 + 144), google::protobuf::Arena::CopyConstruct<google::protobuf::OneofDescriptorProto>);
  }

  if (*(a2 + 44))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 42, (a2 + 168), google::protobuf::Arena::CopyConstruct<google::protobuf::DescriptorProto_ReservedRange>);
  }

  if (*(a2 + 50))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 192, a2 + 192);
  }

  v8 = *(a2 + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a2 + 27);
      *(this + 4) |= 1u;
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set<>(this + 27, (v9 & 0xFFFFFFFFFFFFFFFCLL), v10);
    }

    if ((v8 & 2) != 0)
    {
      v11 = *(this + 28);
      v12 = *(a2 + 28);
      if (!v11)
      {
        *(this + 28) = google::protobuf::Arena::CopyConstruct<google::protobuf::MessageOptions>(v7, v12);
        *(this + 4) |= v8;
        v13 = *(a2 + 1);
        if ((v13 & 1) == 0)
        {
          return;
        }

        goto LABEL_29;
      }

      google::protobuf::MessageOptions::MergeImpl(v11, v12, a3, a4);
    }
  }

  *(this + 4) |= v8;
  v13 = *(a2 + 1);
  if ((v13 & 1) == 0)
  {
    return;
  }

LABEL_29:

  google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8));
}

google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 8) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 6);
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

  if (*(v1 + 152) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 144));
  }

  if (*(v1 + 176) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 168));
  }

  if (*(v1 + 200) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(v1 + 192);
  }

  v2 = *(v1 + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_21;
    }

    v3 = *(v1 + 216) & 0xFFFFFFFFFFFFFFFCLL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_21:
      if ((v2 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_22:
      this = google::protobuf::MessageOptions::Clear(*(v1 + 224));
    }
  }

LABEL_23:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v4);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::MessageOptions::Clear(google::protobuf::MessageOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  if (*(this + 14) >= 1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 12);
  }

  v3 = *(this + 10);
  if (v3)
  {
    result = google::protobuf::FeatureSet::Clear(*(this + 9));
  }

  if ((v3 & 0x3E) != 0)
  {
    *(this + 84) = 0;
    *(this + 20) = 0;
  }

  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v4);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto::_InternalSerialize(google::protobuf::DescriptorProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if (v9)
  {
    v10 = *(this + 27) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *(v10 + 23);
    if (v11 < 0 && (v11 = *(v10 + 8), v11 > 127) || *a3 - a2 + 14 < v11)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v10, a2);
      v14 = *(this + 8);
      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    *a2 = 10;
    v12 = a2 + 2;
    *(a2 + 1) = v11;
    if (*(v10 + 23) >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = *v10;
    }

    memcpy(v7 + 2, v13, v11);
    v7 = &v12[v11];
  }

  v14 = *(this + 8);
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = 0;
  v16 = (this + 24);
  do
  {
    if (*v16)
    {
      v17 = (*v16 + 8 * v15 + 7);
    }

    else
    {
      v17 = (this + 24);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *v17, *(*v17 + 20), v7, a3, a6);
    ++v15;
  }

  while (v14 != v15);
LABEL_15:
  v18 = *(this + 14);
  if (v18)
  {
    v19 = 0;
    v20 = (this + 48);
    do
    {
      if (*v20)
      {
        v21 = (*v20 + 8 * v19 + 7);
      }

      else
      {
        v21 = (this + 48);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(3, *v21, *(*v21 + 20), v7, a3, a6);
      ++v19;
    }

    while (v18 != v19);
  }

  v22 = *(this + 20);
  if (v22)
  {
    v23 = 0;
    v24 = (this + 72);
    do
    {
      if (*v24)
      {
        v25 = (*v24 + 8 * v23 + 7);
      }

      else
      {
        v25 = (this + 72);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(4, *v25, *(*v25 + 20), v7, a3, a6);
      ++v23;
    }

    while (v22 != v23);
  }

  v26 = *(this + 26);
  if (v26)
  {
    v27 = 0;
    v28 = (this + 96);
    do
    {
      if (*v28)
      {
        v29 = (*v28 + 8 * v27 + 7);
      }

      else
      {
        v29 = (this + 96);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(5, *v29, *(*v29 + 20), v7, a3, a6);
      ++v27;
    }

    while (v26 != v27);
  }

  v30 = *(this + 32);
  if (v30)
  {
    v31 = 0;
    v32 = (this + 120);
    do
    {
      if (*v32)
      {
        v33 = (*v32 + 8 * v31 + 7);
      }

      else
      {
        v33 = (this + 120);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(6, *v33, *(*v33 + 20), v7, a3, a6);
      ++v31;
    }

    while (v30 != v31);
  }

  if ((v9 & 2) != 0)
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(7, *(this + 28), *(*(this + 28) + 44), v7, a3, a6);
  }

  v34 = *(this + 38);
  if (v34)
  {
    v35 = 0;
    v36 = (this + 144);
    do
    {
      if (*v36)
      {
        v37 = (*v36 + 8 * v35 + 7);
      }

      else
      {
        v37 = (this + 144);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(8, *v37, *(*v37 + 20), v7, a3, a6);
      ++v35;
    }

    while (v34 != v35);
  }

  v38 = *(this + 44);
  if (v38)
  {
    v39 = 0;
    v40 = (this + 168);
    do
    {
      if (*v40)
      {
        v41 = (*v40 + 8 * v39 + 7);
      }

      else
      {
        v41 = (this + 168);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(9, *v41, *(*v41 + 20), v7, a3, a6);
      ++v39;
    }

    while (v38 != v39);
  }

  v42 = *(this + 50);
  if (v42 >= 1)
  {
    v43 = (this + 192);
    v44 = 8;
    do
    {
      while (1)
      {
        v45 = (*v43 & 1) != 0 ? (*v43 + v44 - 1) : (this + 192);
        v46 = *v45;
        v47 = *(*v45 + 23);
        if ((v47 & 0x8000000000000000) == 0 || (v47 = v46[1], v47 <= 127))
        {
          if (*a3 - v7 + 14 >= v47)
          {
            break;
          }
        }

        v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 10, v46, v7);
        v44 += 8;
        if (!--v42)
        {
          goto LABEL_66;
        }
      }

      *v7 = 82;
      v7[1] = v47;
      if (*(v46 + 23) < 0)
      {
        v46 = *v46;
      }

      v48 = v7 + 2;
      memcpy(v7 + 2, v46, v47);
      v7 = &v48[v47];
      v44 += 8;
      --v42;
    }

    while (v42);
  }

LABEL_66:
  v49 = *(this + 1);
  if ((v49 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v49 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *google::protobuf::DescriptorProto::ByteSizeLong(google::protobuf::DescriptorProto *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = (this + 24);
  }

  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      v7 = google::protobuf::FieldDescriptorProto::ByteSizeLong(v6);
      v3 += &v7[(352 - 9 * __clz(v7)) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  v8 = *(this + 6);
  v9 = *(this + 14);
  v10 = v3 + v9;
  if (v8)
  {
    v11 = (v8 + 7);
  }

  else
  {
    v11 = (this + 48);
  }

  if (v9)
  {
    v12 = 8 * v9;
    do
    {
      v13 = *v11++;
      v14 = google::protobuf::DescriptorProto::ByteSizeLong(v13);
      v10 += v14 + ((352 - 9 * __clz(v14)) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 9);
  v16 = *(this + 20);
  v17 = v10 + v16;
  if (v15)
  {
    v18 = (v15 + 7);
  }

  else
  {
    v18 = (this + 72);
  }

  if (v16)
  {
    v19 = 8 * v16;
    do
    {
      v20 = *v18++;
      v21 = google::protobuf::EnumDescriptorProto::ByteSizeLong(v20);
      v17 += &v21[(352 - 9 * __clz(v21)) >> 6];
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 12);
  v23 = *(this + 26);
  v24 = v17 + v23;
  if (v22)
  {
    v25 = (v22 + 7);
  }

  else
  {
    v25 = this + 96;
  }

  if (v23)
  {
    v26 = 8 * v23;
    while (1)
    {
      v29 = *v25;
      v30 = *(*v25 + 16);
      if ((v30 & 7) != 0)
      {
        break;
      }

      v27 = 0;
LABEL_27:
      v28 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v29, v27, (v29 + 20));
      v24 += &v28[(352 - 9 * __clz(v28)) >> 6];
      v25 += 8;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_36;
      }
    }

    if (v30)
    {
      v31 = google::protobuf::ExtensionRangeOptions::ByteSizeLong(*(v29 + 24));
      v27 = &v31[((352 - 9 * __clz(v31)) >> 6) + 1];
      if ((v30 & 2) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v27 = 0;
      if ((v30 & 2) == 0)
      {
LABEL_34:
        if ((v30 & 4) != 0)
        {
          v27 = (v27 + ((704 - 9 * __clz(*(v29 + 36))) >> 6));
        }

        goto LABEL_27;
      }
    }

    v27 = (v27 + ((704 - 9 * __clz(*(v29 + 32))) >> 6));
    goto LABEL_34;
  }

LABEL_36:
  v32 = *(this + 15);
  v33 = *(this + 32);
  v34 = v24 + v33;
  if (v32)
  {
    v35 = (v32 + 7);
  }

  else
  {
    v35 = (this + 120);
  }

  if (v33)
  {
    v36 = 8 * v33;
    do
    {
      v37 = *v35++;
      v38 = google::protobuf::FieldDescriptorProto::ByteSizeLong(v37);
      v34 += &v38[(352 - 9 * __clz(v38)) >> 6];
      v36 -= 8;
    }

    while (v36);
  }

  v39 = *(this + 18);
  v40 = *(this + 38);
  v41 = v34 + v40;
  if (v39)
  {
    v42 = (v39 + 7);
  }

  else
  {
    v42 = this + 144;
  }

  if (v40)
  {
    for (i = 8 * v40; i; i -= 8)
    {
      v46 = *v42;
      v47 = *(*v42 + 16);
      if ((v47 & 3) != 0)
      {
        if (v47)
        {
          v48 = *(v46 + 24) & 0xFFFFFFFFFFFFFFFCLL;
          v49 = *(v48 + 23);
          v50 = *(v48 + 8);
          if ((v49 & 0x80u) == 0)
          {
            v50 = v49;
          }

          v44 = (v50 + ((352 - 9 * __clz(v50)) >> 6) + 1);
          if ((v47 & 2) == 0)
          {
            goto LABEL_48;
          }

LABEL_56:
          v51 = *v42;
          v52 = v44;
          v53 = google::protobuf::OneofOptions::ByteSizeLong(*(v46 + 32));
          v46 = v51;
          v44 = &v53[v52 + 1 + ((352 - 9 * __clz(v53)) >> 6)];
          goto LABEL_48;
        }

        v44 = 0;
        if ((v47 & 2) != 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v44 = 0;
      }

LABEL_48:
      v45 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v46, v44, (v46 + 20));
      v41 += &v45[(352 - 9 * __clz(v45)) >> 6];
      v42 += 8;
    }
  }

  v54 = *(this + 21);
  v55 = *(this + 44);
  v56 = v41 + v55;
  if (v54)
  {
    v57 = (v54 + 7);
  }

  else
  {
    v57 = this + 168;
  }

  if (v55)
  {
    for (j = 8 * v55; j; j -= 8)
    {
      v61 = *v57;
      v62 = *(*v57 + 16);
      if ((v62 & 3) != 0)
      {
        if (v62)
        {
          v59 = ((704 - 9 * __clz(*(v61 + 6))) >> 6);
          if ((v62 & 2) != 0)
          {
LABEL_69:
            v59 = (v59 + ((704 - 9 * __clz(*(v61 + 7))) >> 6));
          }
        }

        else
        {
          v59 = 0;
          if ((v62 & 2) != 0)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        v59 = 0;
      }

      v60 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v61, v59, v61 + 5);
      v56 += &v60[(352 - 9 * __clz(v60)) >> 6];
      v57 += 8;
    }
  }

  v63 = *(this + 50);
  v64 = (v56 + v63);
  if (v63 >= 1)
  {
    v65 = *(this + 24);
    if (v63 == 1)
    {
      v66 = 0;
LABEL_83:
      v78 = v65 - 1 + 8 * v66 + 8;
      v79 = v63 - v66;
      do
      {
        if (v65)
        {
          v80 = v78;
        }

        else
        {
          v80 = (this + 192);
        }

        v81 = *v80;
        v82 = *(v81 + 23);
        v83 = *(v81 + 8);
        if ((v82 & 0x80u) == 0)
        {
          v83 = v82;
        }

        v64 = (v64 + v83 + ((352 - 9 * __clz(v83)) >> 6));
        v78 += 8;
        --v79;
      }

      while (v79);
      goto LABEL_90;
    }

    v67 = 0;
    v66 = v63 & 0x7FFFFFFE;
    v68 = (v65 + 15);
    v69 = v66;
    do
    {
      v70 = v68 - 1;
      if (v65)
      {
        v71 = v68;
      }

      else
      {
        v70 = (this + 192);
        v71 = (this + 192);
      }

      v72 = *v70;
      v73 = *v71;
      v74 = *(v72 + 23);
      v75 = *(v73 + 23);
      v76 = *(v72 + 8);
      v77 = *(v73 + 8);
      if ((v74 & 0x80u) == 0)
      {
        v76 = v74;
      }

      if ((v75 & 0x80u) == 0)
      {
        v77 = v75;
      }

      v64 = (v64 + v76 + ((352 - 9 * __clz(v76)) >> 6));
      v67 += v77 + ((352 - 9 * __clz(v77)) >> 6);
      v68 += 2;
      v69 -= 2;
    }

    while (v69);
    v64 = (v64 + v67);
    if (v66 != v63)
    {
      goto LABEL_83;
    }
  }

LABEL_90:
  v84 = *(this + 4);
  if ((v84 & 3) != 0)
  {
    if (v84)
    {
      v85 = *(this + 27) & 0xFFFFFFFFFFFFFFFCLL;
      v86 = *(v85 + 23);
      v87 = *(v85 + 8);
      if ((v86 & 0x80u) == 0)
      {
        v87 = v86;
      }

      v64 = (v64 + v87 + ((352 - 9 * __clz(v87)) >> 6) + 1);
    }

    if ((v84 & 2) != 0)
    {
      v88 = v64;
      v89 = google::protobuf::MessageOptions::ByteSizeLong(*(this + 28));
      v64 = &v89[((352 - 9 * __clz(v89)) >> 6) + 1 + v88];
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v64, this + 5);
}

uint64_t google::protobuf::DescriptorProto::IsInitialized(google::protobuf::DescriptorProto *this)
{
  v2 = (this + 24);
  v3 = *(this + 8);
  v4 = 8 * v3;
  v5 = v3 + 1;
  while (--v5 >= 1)
  {
    v6 = v4 - 8;
    v7 = (*v2 + v4 - 1);
    if ((*v2 & 1) == 0)
    {
      v7 = v2;
    }

    IsInitialized = google::protobuf::FieldDescriptorProto::IsInitialized(*v7);
    v4 = v6;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v10 = (this + 48);
  v11 = *(this + 14);
  v12 = 8 * v11;
  v13 = v11 + 1;
  while (--v13 >= 1)
  {
    v14 = v12 - 8;
    v15 = (*v10 + v12 - 1);
    if ((*v10 & 1) == 0)
    {
      v15 = (this + 48);
    }

    v16 = google::protobuf::DescriptorProto::IsInitialized(*v15);
    v12 = v14;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = (this + 72);
  v18 = *(this + 20);
  v19 = 8 * v18;
  v20 = v18 + 1;
  while (--v20 >= 1)
  {
    v21 = v19 - 8;
    v22 = (*v17 + v19 - 1);
    if ((*v17 & 1) == 0)
    {
      v22 = (this + 72);
    }

    v23 = google::protobuf::EnumDescriptorProto::IsInitialized(*v22);
    v19 = v21;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = (this + 96);
  v25 = *(this + 26);
  v26 = 8 * v25;
  v27 = v25 + 1;
  while (--v27 >= 1)
  {
    v28 = v26 - 8;
    v29 = (*v24 + v26 - 1);
    if ((*v24 & 1) == 0)
    {
      v29 = (this + 96);
    }

    v30 = google::protobuf::DescriptorProto_ExtensionRange::IsInitialized(*v29);
    v26 = v28;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = (this + 120);
  v32 = *(this + 32);
  v33 = 8 * v32;
  v34 = v32 + 1;
  while (--v34 >= 1)
  {
    v35 = v33 - 8;
    v36 = (*v31 + v33 - 1);
    if ((*v31 & 1) == 0)
    {
      v36 = (this + 120);
    }

    v37 = google::protobuf::FieldDescriptorProto::IsInitialized(*v36);
    v33 = v35;
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  v38 = (this + 144);
  v39 = *(this + 38);
  v40 = 8 * v39;
  v41 = v39 + 1;
  while (--v41 >= 1)
  {
    v42 = v40 - 8;
    v43 = *v38 + v40 - 1;
    if (*v38)
    {
      v44 = v43;
    }

    else
    {
      v44 = (this + 144);
    }

    v45 = google::protobuf::OneofDescriptorProto::IsInitialized(*v44);
    result = 0;
    v40 = v42;
    if ((v45 & 1) == 0)
    {
      return result;
    }
  }

  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  result = google::protobuf::MessageOptions::IsInitialized(*(this + 28));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t google::protobuf::MessageOptions::IsInitialized(google::protobuf::MessageOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16), &google::protobuf::_MessageOptions_default_instance_);
  if (result)
  {
    v3 = *(this + 14);
    v4 = *(this + 6);
    if (v4)
    {
      v6 = v4 - 1;
      while (v3 >= 1)
      {
        v7 = v3 - 1;
        IsInitialized = google::protobuf::UninterpretedOption::IsInitialized(*&v6[8 * v3]);
        v3 = v7;
        if (!IsInitialized)
        {
          return 0;
        }
      }
    }

    else
    {
      v5 = v3 + 1;
      while (--v5 >= 1)
      {
        if (!google::protobuf::UninterpretedOption::IsInitialized(v4))
        {
          return 0;
        }
      }
    }

    if ((*(this + 40) & 1) == 0)
    {
      return 1;
    }

    result = google::protobuf::FeatureSet::IsInitialized(*(this + 9));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void google::protobuf::ExtensionRangeOptions_Declaration::~ExtensionRangeOptions_Declaration(google::protobuf::ExtensionRangeOptions_Declaration *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 4);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 4);

  JUMPOUT(0x23EED9460);
}

std::string *google::protobuf::ExtensionRangeOptions_Declaration::MergeImpl(std::string *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  v5 = *(a2 + 4);
  if ((v5 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v5)
  {
    v7 = *(a2 + 3);
    LODWORD(this->__r_.__value_.__r.__words[2]) |= 1u;
    size = this->__r_.__value_.__l.__size_;
    if (size)
    {
      this = google::protobuf::internal::ArenaStringPtr::Set<>(&this[1], (v7 & 0xFFFFFFFFFFFFFFFCLL), *(size & 0xFFFFFFFFFFFFFFFELL));
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      this = google::protobuf::internal::ArenaStringPtr::Set<>(&this[1], (v7 & 0xFFFFFFFFFFFFFFFCLL), size);
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    *(v4 + 40) = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
LABEL_6:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v9 = *(a2 + 4);
  *(v4 + 16) |= 2u;
  v10 = *(v4 + 8);
  if (v10)
  {
    this = google::protobuf::internal::ArenaStringPtr::Set<>((v4 + 32), (v9 & 0xFFFFFFFFFFFFFFFCLL), *(v10 & 0xFFFFFFFFFFFFFFFELL));
    if ((v5 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    this = google::protobuf::internal::ArenaStringPtr::Set<>((v4 + 32), (v9 & 0xFFFFFFFFFFFFFFFCLL), v10);
    if ((v5 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  if ((v5 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  *(v4 + 44) = *(a2 + 44);
  if ((v5 & 0x10) != 0)
  {
LABEL_7:
    *(v4 + 45) = *(a2 + 45);
  }

LABEL_8:
  *(v4 + 16) |= v5;
  v6 = *(a2 + 1);
  if (v6)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::ExtensionRangeOptions_Declaration::Clear(google::protobuf::ExtensionRangeOptions_Declaration *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(this + 4) & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  if ((v1 & 0x1C) != 0)
  {
    *(this + 22) = 0;
    *(this + 10) = 0;
  }

  v5 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v5)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::ExtensionRangeOptions_Declaration::_InternalSerialize(google::protobuf::ExtensionRangeOptions_Declaration *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    v4 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<1>(a3, *(this + 10), a2);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_16:
      v13 = *(this + 4) & 0xFFFFFFFFFFFFFFFCLL;
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = *(v13 + 8), v14 > 127) || *a3 - v4 + 14 < v14)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 3, v13, v4);
        if ((v6 & 8) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        *v4 = 26;
        v15 = v4 + 2;
        v4[1] = v14;
        if (*(v13 + 23) >= 0)
        {
          v16 = v13;
        }

        else
        {
          v16 = *v13;
        }

        memcpy(v4 + 2, v16, v14);
        v4 = &v15[v14];
        if ((v6 & 8) != 0)
        {
          goto LABEL_23;
        }
      }

LABEL_5:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_26:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v18 = *(this + 45);
      *v4 = 48;
      v4[1] = v18;
      v4 += 2;
      v7 = *(this + 1);
      if ((v7 & 1) == 0)
      {
        return v4;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 23);
  if (v10 < 0 && (v10 = *(v9 + 8), v10 > 127) || *a3 - v4 + 14 < v10)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 2, v9, v4);
    if ((v6 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v4 = 18;
    v11 = v4 + 2;
    v4[1] = v10;
    if (*(v9 + 23) >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = *v9;
    }

    memcpy(v4 + 2, v12, v10);
    v4 = &v11[v10];
    if ((v6 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 44);
  *v4 = 40;
  v4[1] = v17;
  v4 += 2;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

LABEL_29:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::ExtensionRangeOptions_Declaration::ByteSizeLong(google::protobuf::ExtensionRangeOptions_Declaration *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x1F) == 0)
  {
    v3 = 0;
    v4 = (this + 20);
    return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, v4);
  }

  if (v1)
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v2 = v7 + ((352 - 9 * __clz(v7)) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_10:
    v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((352 - 9 * __clz(v10)) >> 6) + 1;
  }

LABEL_13:
  if ((v1 & 4) != 0)
  {
    v2 += (704 - 9 * __clz(*(this + 10))) >> 6;
  }

  v3 = (v2 + ((v1 >> 3) & 2) + ((v1 >> 2) & 2));
  v4 = (this + 20);
  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, v4);
}

double google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F45D28;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 104) = 1;
  *(a1 + 96) = 0;
  return result;
}

google::protobuf::ExtensionRangeOptions *google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(google::protobuf::ExtensionRangeOptions *this, google::protobuf::Arena *a2, const google::protobuf::ExtensionRangeOptions *a3, double a4)
{
  *(this + 1) = a2;
  v7 = (this + 8);
  *this = off_284F45D28;
  v8 = *(a3 + 1);
  if (v8)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a3 + 10);
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  *(this + 8) = a2;
  if (*(a3 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a3 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::ExtensionRangeOptions_Declaration>);
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = a2;
  if (*(a3 + 20))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 18, (a3 + 72), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), this, (a3 + 16), a4);
  if (*(this + 40))
  {
    v9 = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(a2, *(a3 + 12));
  }

  else
  {
    v9 = 0;
  }

  *(this + 12) = v9;
  *(this + 26) = *(a3 + 26);
  return this;
}

void sub_23CDAD7C0(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration>::~RepeatedPtrField((v1 + 32));
  google::protobuf::internal::ExtensionSet::~ExtensionSet(v1);
  _Unwind_Resume(a1);
}

void google::protobuf::ExtensionRangeOptions::SharedDtor(google::protobuf::ExtensionRangeOptions *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v2 + 8));
    }

    google::protobuf::internal::ExtensionSet::~ExtensionSet((v2 + 16));
    MEMORY[0x23EED9460](v2, 0x10A1C4007999064);
  }

  if (*(this + 9))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 72));
  }

  if (*(this + 6))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 48));
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

void google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions(google::protobuf::ExtensionRangeOptions *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::ExtensionRangeOptions::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::ExtensionRangeOptions::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::ExtensionRangeOptions::MergeImpl(google::protobuf::ExtensionRangeOptions *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    if (!*(a2 + 14))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 14))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::ExtensionRangeOptions_Declaration>);
  }

LABEL_4:
  if (*(a2 + 20))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 18, (a2 + 72), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

  v8 = *(a2 + 10);
  if ((v8 & 3) != 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

    v9 = *(this + 12);
    v10 = *(a2 + 12);
    if (v9)
    {
      google::protobuf::FeatureSet::MergeImpl(v9, v10, a3, a4);
LABEL_10:
      if ((v8 & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    *(this + 12) = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(v7, v10);
    if ((v8 & 2) != 0)
    {
LABEL_11:
      *(this + 26) = *(a2 + 26);
    }
  }

LABEL_12:
  *(this + 10) |= v8;
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), &google::protobuf::_ExtensionRangeOptions_default_instance_, (a2 + 16), a4);
  v11 = *(a2 + 1);
  if (v11)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

int *google::protobuf::FeatureSet::Clear(google::protobuf::FeatureSet *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  if ((*(this + 40) & 0x3F) != 0)
  {
    *(this + 6) = 0;
    *(this + 7) = 0;
    *(this + 8) = 0;
  }

  v4 = *(this + 8);
  v3 = this + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::ExtensionRangeOptions::_InternalSerialize(google::protobuf::ExtensionRangeOptions *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v9 = *(this + 14);
  if (v9)
  {
    v10 = 0;
    v11 = (this + 48);
    do
    {
      if (*v11)
      {
        v12 = (*v11 + 8 * v10 + 7);
      }

      else
      {
        v12 = (this + 48);
      }

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *v12, *(*v12 + 20), a2, a3, a6);
      ++v10;
    }

    while (v9 != v10);
  }

  v13 = *(this + 10);
  if ((v13 & 2) == 0)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    v23 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    v15 = *(this + 26);
    *v23 = 24;
    v16 = v23 + 1;
    if (v15 < 0x80)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = *(this + 26);
    *a2 = 24;
    v16 = a2 + 1;
    if (v15 < 0x80)
    {
LABEL_13:
      LOBYTE(v17) = v15;
      goto LABEL_14;
    }
  }

  do
  {
    *v16++ = v15 | 0x80;
    v17 = v15 >> 7;
    v24 = v15 >> 14;
    v15 >>= 7;
  }

  while (v24);
LABEL_14:
  *v16 = v17;
  a2 = (v16 + 1);
  if ((v13 & 1) == 0)
  {
LABEL_9:
    v14 = *(this + 20);
    if (!v14)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_15:
  a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x32, *(this + 12), *(*(this + 12) + 44), a2, a3, a6);
  v14 = *(this + 20);
  if (!v14)
  {
    goto LABEL_21;
  }

LABEL_16:
  v18 = 0;
  v19 = (this + 72);
  do
  {
    if (*v19)
    {
      v20 = (*v19 + 8 * v18 + 7);
    }

    else
    {
      v20 = (this + 72);
    }

    a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x3E7, *v20, *(*v20 + 20), a2, a3, a6);
    ++v18;
  }

  while (v14 != v18);
LABEL_21:
  if (*(this + 13))
  {
    a2 = google::protobuf::internal::ExtensionSet::_InternalSerializeImpl((this + 16), &google::protobuf::_ExtensionRangeOptions_default_instance_, 0x3E8, 0x20000000, a2, a3);
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v21 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::ExtensionRangeOptions::ByteSizeLong(google::protobuf::ExtensionRangeOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 6);
  v4 = *(this + 14);
  v5 = v2 + v4;
  if (v3)
  {
    v6 = (v3 + 7);
  }

  else
  {
    v6 = (this + 48);
  }

  if (v4)
  {
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      v9 = google::protobuf::ExtensionRangeOptions_Declaration::ByteSizeLong(v8);
      v5 += &v9[(352 - 9 * __clz(v9)) >> 6];
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 9);
  v11 = *(this + 20);
  v12 = (v5 + 2 * v11);
  if (v10)
  {
    v13 = (v10 + 7);
  }

  else
  {
    v13 = (this + 72);
  }

  if (v11)
  {
    v14 = 8 * v11;
    do
    {
      v15 = *v13++;
      v16 = google::protobuf::UninterpretedOption::ByteSizeLong(v15);
      v12 = (v12 + v16 + ((352 - 9 * __clz(v16)) >> 6));
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(this + 10);
  if ((v17 & 3) != 0)
  {
    if (v17)
    {
      v18 = google::protobuf::FeatureSet::ByteSizeLong(*(this + 12));
      v12 = &v18[((352 - 9 * __clz(v18)) >> 6) + 2 + v12];
    }

    if ((v17 & 2) != 0)
    {
      v12 = (v12 + ((640 - 9 * __clz(*(this + 26))) >> 6) + 1);
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v12, this + 11);
}

void google::protobuf::ExtensionRangeOptions::CopyFrom(google::protobuf::ExtensionRangeOptions *this, const google::protobuf::ExtensionRangeOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::ExtensionRangeOptions::Clear(this);

    google::protobuf::ExtensionRangeOptions::MergeImpl(this, a2, v5, v6);
  }
}

double google::protobuf::FieldDescriptorProto::FieldDescriptorProto(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F45F30;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 32) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *&result = 0x100000001;
  *(a1 + 84) = 0x100000001;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

google::protobuf::FieldDescriptorProto *google::protobuf::FieldDescriptorProto::FieldDescriptorProto(google::protobuf::FieldDescriptorProto *this, google::protobuf::Arena *a2, const google::protobuf::FieldDescriptorProto *a3)
{
  *(this + 1) = a2;
  v6 = (this + 8);
  *this = off_284F45F30;
  v7 = *(a3 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 4) = *(a3 + 4);
  *(this + 5) = 0;
  v8 = *(a3 + 3);
  if ((v8 & 3) != 0)
  {
    v8 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 24), a2);
  }

  *(this + 3) = v8;
  v9 = *(a3 + 4);
  if ((v9 & 3) != 0)
  {
    v9 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 32), a2);
  }

  *(this + 4) = v9;
  v10 = *(a3 + 5);
  if ((v10 & 3) != 0)
  {
    v10 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 40), a2);
  }

  *(this + 5) = v10;
  v11 = *(a3 + 6);
  if ((v11 & 3) != 0)
  {
    v11 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 48), a2);
  }

  *(this + 6) = v11;
  v12 = *(a3 + 7);
  if ((v12 & 3) != 0)
  {
    v12 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 56), a2);
  }

  *(this + 7) = v12;
  if ((*(this + 16) & 0x20) != 0)
  {
    v13 = google::protobuf::Arena::CopyConstruct<google::protobuf::FieldOptions>(a2, *(a3 + 8));
  }

  else
  {
    v13 = 0;
  }

  *(this + 8) = v13;
  v14 = *(a3 + 72);
  *(this + 22) = *(a3 + 22);
  *(this + 72) = v14;
  return this;
}

void *google::protobuf::FieldDescriptorProto::SharedDtor(google::protobuf::FieldDescriptorProto *this)
{
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 4);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 5);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 6);
  result = google::protobuf::internal::ArenaStringPtr::Destroy(this + 7);
  v3 = *(this + 8);
  if (v3)
  {
    if (*(v3 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v3 + 1);
    }

    google::protobuf::FieldOptions::SharedDtor(v3);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

void google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(google::protobuf::FieldDescriptorProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::FieldDescriptorProto::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::FieldDescriptorProto::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::FieldDescriptorProto::MergeImpl(google::protobuf::FieldDescriptorProto *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, __n128 a4)
{
  v7 = (this + 8);
  v6 = *(this + 1);
  if ((v6 & 1) == 0)
  {
    v8 = *(this + 1);
    v9 = *(a2 + 4);
    if (!v9)
    {
      goto LABEL_28;
    }

LABEL_3:
    if ((v9 & 1) == 0)
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      v11 = *(a2 + 4);
      *(this + 4) |= 2u;
      v12 = *(this + 1);
      if (v12)
      {
        google::protobuf::internal::ArenaStringPtr::Set<>(this + 4, (v11 & 0xFFFFFFFFFFFFFFFCLL), *(v12 & 0xFFFFFFFFFFFFFFFELL));
        if ((v9 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        google::protobuf::internal::ArenaStringPtr::Set<>(this + 4, (v11 & 0xFFFFFFFFFFFFFFFCLL), v12);
        if ((v9 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

LABEL_6:
      if ((v9 & 8) == 0)
      {
        goto LABEL_7;
      }

LABEL_18:
      v15 = *(a2 + 6);
      *(this + 4) |= 8u;
      v16 = *(this + 1);
      if (v16)
      {
        google::protobuf::internal::ArenaStringPtr::Set<>(this + 6, (v15 & 0xFFFFFFFFFFFFFFFCLL), *(v16 & 0xFFFFFFFFFFFFFFFELL));
        if ((v9 & 0x10) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        google::protobuf::internal::ArenaStringPtr::Set<>(this + 6, (v15 & 0xFFFFFFFFFFFFFFFCLL), v16);
        if ((v9 & 0x10) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_8:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_9;
      }

LABEL_22:
      v19 = *(this + 8);
      v20 = *(a2 + 8);
      if (v19)
      {
        google::protobuf::FieldOptions::MergeImpl(v19, v20, v6, a4);
        if ((v9 & 0x40) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        *(this + 8) = google::protobuf::Arena::CopyConstruct<google::protobuf::FieldOptions>(v8, v20);
        if ((v9 & 0x40) != 0)
        {
          goto LABEL_26;
        }
      }

LABEL_10:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_28;
      }

LABEL_27:
      *(this + 19) = *(a2 + 19);
      goto LABEL_28;
    }

    v10 = *(a2 + 3);
    *(this + 4) |= 1u;
    if (v6)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 3, (v10 & 0xFFFFFFFFFFFFFFFCLL), *(v6 & 0xFFFFFFFFFFFFFFFELL));
      if ((v9 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 3, (v10 & 0xFFFFFFFFFFFFFFFCLL), v6);
      if ((v9 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_5:
    if ((v9 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    v13 = *(a2 + 5);
    *(this + 4) |= 4u;
    v14 = *(this + 1);
    if (v14)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 5, (v13 & 0xFFFFFFFFFFFFFFFCLL), *(v14 & 0xFFFFFFFFFFFFFFFELL));
      if ((v9 & 8) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 5, (v13 & 0xFFFFFFFFFFFFFFFCLL), v14);
      if ((v9 & 8) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_7:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v17 = *(a2 + 7);
    *(this + 4) |= 0x10u;
    v18 = *(this + 1);
    if (v18)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 7, (v17 & 0xFFFFFFFFFFFFFFFCLL), *(v18 & 0xFFFFFFFFFFFFFFFELL));
      if ((v9 & 0x20) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 7, (v17 & 0xFFFFFFFFFFFFFFFCLL), v18);
      if ((v9 & 0x20) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_9:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    *(this + 18) = *(a2 + 18);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v8 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  v9 = *(a2 + 4);
  if (v9)
  {
    goto LABEL_3;
  }

LABEL_28:
  if ((v9 & 0x700) == 0)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x100) != 0)
  {
    *(this + 80) = *(a2 + 80);
    if ((v9 & 0x200) == 0)
    {
LABEL_31:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_31;
  }

  *(this + 21) = *(a2 + 21);
  if ((v9 & 0x400) != 0)
  {
LABEL_32:
    *(this + 22) = *(a2 + 22);
  }

LABEL_33:
  *(this + 4) |= v9;
  v21 = *(a2 + 1);
  if (v21)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v21 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *google::protobuf::FieldDescriptorProto::Clear(google::protobuf::FieldDescriptorProto *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v1)
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_25:
    v7 = *(this + 5) & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_21:
  v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_5:
  if ((v1 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_29:
  v8 = *(this + 6) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_33;
    }

LABEL_7:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_33:
  v9 = *(this + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v9 + 23) & 0x80000000) == 0)
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v2 = this;
    google::protobuf::FieldOptions::Clear(*(this + 8));
    this = v2;
    goto LABEL_9;
  }

  **v9 = 0;
  *(v9 + 8) = 0;
  if ((v1 & 0x20) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v1 & 0xC0) != 0)
  {
    *(this + 9) = 0;
  }

  if ((v1 & 0x700) != 0)
  {
    *(this + 80) = 0;
    *(this + 84) = 0x100000001;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::FieldOptions::Clear(google::protobuf::FieldOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  *(this + 12) = 0;
  if (*(this + 18) >= 1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 16);
  }

  if (*(this + 24) >= 1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 22);
  }

  v3 = *(this + 10);
  if (v3)
  {
    result = google::protobuf::FeatureSet::Clear(*(this + 14));
  }

  if ((v3 & 0xFE) != 0)
  {
    *(this + 125) = 0;
    *(this + 15) = 0;
  }

  if ((v3 & 0x300) != 0)
  {
    *(this + 34) = 0;
    *(this + 133) = 0;
  }

  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v4);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FieldDescriptorProto::_InternalSerialize(google::protobuf::FieldDescriptorProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v16 = *(this + 4) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *(v16 + 23);
    if (v17 < 0 && (v17 = *(v16 + 8), v17 > 127) || *a3 - v7 + 14 < v17)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 2, v16, v7);
      if ((v9 & 0x40) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v7 = 18;
      v18 = v7 + 2;
      v7[1] = v17;
      if (*(v16 + 23) >= 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = *v16;
      }

      memcpy(v7 + 2, v19, v17);
      v7 = &v18[v17];
      if ((v9 & 0x40) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_4:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

  v12 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 23);
  if (v13 < 0 && (v13 = *(v12 + 8), v13 > 127) || *a3 - a2 + 14 < v13)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v12, a2);
    if ((v9 & 2) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *a2 = 10;
    v14 = a2 + 2;
    *(a2 + 1) = v13;
    if (*(v12 + 23) >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = *v12;
    }

    memcpy(v7 + 2, v15, v13);
    v7 = &v14[v13];
    if ((v9 & 2) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_3:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_4;
  }

LABEL_28:
  v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<3>(a3, *(this + 18), v7);
  if ((v9 & 0x200) == 0)
  {
LABEL_5:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_29:
  if (*a3 <= v7)
  {
    v39 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v20 = *(this + 21);
    *v39 = 32;
    v21 = v39 + 1;
    if (v20 < 0x80)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v20 = *(this + 21);
    *v7 = 32;
    v21 = v7 + 1;
    if (v20 < 0x80)
    {
LABEL_31:
      LOBYTE(v22) = v20;
      goto LABEL_32;
    }
  }

  do
  {
    *v21++ = v20 | 0x80;
    v22 = v20 >> 7;
    v40 = v20 >> 14;
    v20 >>= 7;
  }

  while (v40);
LABEL_32:
  *v21 = v22;
  v7 = v21 + 1;
  if ((v9 & 0x400) == 0)
  {
LABEL_6:
    if ((v9 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_33:
  if (*a3 <= v7)
  {
    v41 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v23 = *(this + 22);
    *v41 = 40;
    v24 = v41 + 1;
    if (v23 < 0x80)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v23 = *(this + 22);
    *v7 = 40;
    v24 = v7 + 1;
    if (v23 < 0x80)
    {
LABEL_35:
      LOBYTE(v25) = v23;
      goto LABEL_36;
    }
  }

  do
  {
    *v24++ = v23 | 0x80;
    v25 = v23 >> 7;
    v42 = v23 >> 14;
    v23 >>= 7;
  }

  while (v42);
LABEL_36:
  *v24 = v25;
  v7 = v24 + 1;
  if ((v9 & 4) == 0)
  {
LABEL_7:
    if ((v9 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_44:
    v30 = *(this + 6) & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *(v30 + 23);
    if (v31 < 0 && (v31 = *(v30 + 8), v31 > 127) || *a3 - v7 + 14 < v31)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 7, v30, v7);
      if ((v9 & 0x20) != 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *v7 = 58;
      v32 = v7 + 2;
      v7[1] = v31;
      if (*(v30 + 23) >= 0)
      {
        v33 = v30;
      }

      else
      {
        v33 = *v30;
      }

      memcpy(v7 + 2, v33, v31);
      v7 = &v32[v31];
      if ((v9 & 0x20) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_9:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_37:
  v26 = *(this + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v27 = *(v26 + 23);
  if (v27 < 0 && (v27 = *(v26 + 8), v27 > 127) || *a3 - v7 + 14 < v27)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 6, v26, v7);
    if ((v9 & 8) != 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    *v7 = 50;
    v28 = v7 + 2;
    v7[1] = v27;
    if (*(v26 + 23) >= 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = *v26;
    }

    memcpy(v7 + 2, v29, v27);
    v7 = &v28[v27];
    if ((v9 & 8) != 0)
    {
      goto LABEL_44;
    }
  }

LABEL_8:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_9;
  }

LABEL_51:
  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(8, *(this + 8), *(*(this + 8) + 44), v7, a3, a6);
  if ((v9 & 0x80) == 0)
  {
LABEL_10:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_53;
  }

LABEL_52:
  v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<9>(a3, *(this + 19), v7);
  if ((v9 & 0x10) == 0)
  {
LABEL_11:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_12;
    }

LABEL_60:
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    }

    v38 = *(this + 80);
    *v7 = 392;
    v7[2] = v38;
    v7 += 3;
    v10 = *(this + 1);
    if ((v10 & 1) == 0)
    {
      return v7;
    }

    goto LABEL_63;
  }

LABEL_53:
  v34 = *(this + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v35 = *(v34 + 23);
  if (v35 < 0 && (v35 = *(v34 + 8), v35 > 127) || *a3 - v7 + 14 < v35)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 10, v34, v7);
    if ((v9 & 0x100) != 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    *v7 = 82;
    v36 = v7 + 2;
    v7[1] = v35;
    if (*(v34 + 23) >= 0)
    {
      v37 = v34;
    }

    else
    {
      v37 = *v34;
    }

    memcpy(v7 + 2, v37, v35);
    v7 = &v36[v35];
    if ((v9 & 0x100) != 0)
    {
      goto LABEL_60;
    }
  }

LABEL_12:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return v7;
  }

LABEL_63:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<3>(google::protobuf::io::EpsCopyOutputStream *a1, unsigned int a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v8 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    *v8 = 24;
    v4 = v8 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 24;
    v4 = a3 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v6) = v5;
      goto LABEL_4;
    }
  }

  do
  {
    *v4++ = v5 | 0x80;
    v6 = v5 >> 7;
    v9 = v5 >> 14;
    v5 >>= 7;
  }

  while (v9);
LABEL_4:
  *v4 = v6;
  return v4 + 1;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<9>(google::protobuf::io::EpsCopyOutputStream *a1, unsigned int a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v8 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    *v8 = 72;
    v4 = v8 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 72;
    v4 = a3 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v6) = v5;
      goto LABEL_4;
    }
  }

  do
  {
    *v4++ = v5 | 0x80;
    v6 = v5 >> 7;
    v9 = v5 >> 14;
    v5 >>= 7;
  }

  while (v9);
LABEL_4:
  *v4 = v6;
  return v4 + 1;
}

char *google::protobuf::FieldDescriptorProto::ByteSizeLong(google::protobuf::FieldDescriptorProto *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_31;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = (v5 + ((352 - 9 * __clz(v5)) >> 6) + 1);
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 = (v2 + v8 + ((352 - 9 * __clz(v8)) >> 6) + 1);
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v10 = *(this + 5) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 = (v2 + v12 + ((352 - 9 * __clz(v12)) >> 6) + 1);
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(this + 6) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  v2 = (v2 + v15 + ((352 - 9 * __clz(v15)) >> 6) + 1);
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_25:
  v16 = *(this + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v2 = (v2 + v18 + ((352 - 9 * __clz(v18)) >> 6) + 1);
  if ((v1 & 0x20) == 0)
  {
LABEL_16:
    v9 = this;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_17;
    }

LABEL_29:
    this = v9;
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_28:
  v9 = this;
  v19 = v2;
  v20 = google::protobuf::FieldOptions::ByteSizeLong(*(this + 8));
  v2 = &v20[v19 + 1 + ((352 - 9 * __clz(v20)) >> 6)];
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  this = v9;
  v2 = (v2 + ((-9 * __clz(v9[18]) + 704) >> 6));
  if ((v1 & 0x80) != 0)
  {
LABEL_30:
    v2 = (v2 + ((-9 * __clz(*(this + 19)) + 704) >> 6));
  }

LABEL_31:
  if ((v1 & 0x700) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 = (v2 + 3);
    }

    if ((v1 & 0x200) != 0)
    {
      v2 = (v2 + ((-9 * __clz(*(this + 21)) + 640) >> 6) + 1);
    }

    if ((v1 & 0x400) != 0)
    {
      v2 = (v2 + ((-9 * __clz(*(this + 22)) + 640) >> 6) + 1);
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, this + 5);
}

uint64_t google::protobuf::FieldDescriptorProto::IsInitialized(google::protobuf::FieldDescriptorProto *this)
{
  if ((*(this + 16) & 0x20) == 0)
  {
    return 1;
  }

  result = google::protobuf::FieldOptions::IsInitialized(*(this + 8));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t google::protobuf::FieldOptions::IsInitialized(google::protobuf::FieldOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16), &google::protobuf::_FieldOptions_default_instance_);
  if (result)
  {
    v3 = *(this + 24);
    v4 = *(this + 11);
    if (v4)
    {
      v6 = v4 - 1;
      while (v3 >= 1)
      {
        v7 = v3 - 1;
        IsInitialized = google::protobuf::UninterpretedOption::IsInitialized(*&v6[8 * v3]);
        v3 = v7;
        if (!IsInitialized)
        {
          return 0;
        }
      }
    }

    else
    {
      v5 = v3 + 1;
      while (--v5 >= 1)
      {
        if (!google::protobuf::UninterpretedOption::IsInitialized(v4))
        {
          return 0;
        }
      }
    }

    if ((*(this + 40) & 1) == 0)
    {
      return 1;
    }

    result = google::protobuf::FeatureSet::IsInitialized(*(this + 14));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *google::protobuf::OneofDescriptorProto::OneofDescriptorProto(void *result, uint64_t a2)
{
  *result = off_284F45E60;
  result[1] = a2;
  result[2] = 0;
  result[3] = &google::protobuf::internal::fixed_address_empty_string;
  result[4] = 0;
  return result;
}

void google::protobuf::OneofDescriptorProto::~OneofDescriptorProto(google::protobuf::OneofDescriptorProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
  v4 = *(this + 4);
  if (v4)
  {
    google::protobuf::OneofOptions::~OneofOptions(v4);
    MEMORY[0x23EED9460]();
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
  v4 = *(this + 4);
  if (v4)
  {
    google::protobuf::OneofOptions::~OneofOptions(v4);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void google::protobuf::OneofDescriptorProto::MergeImpl(google::protobuf::OneofDescriptorProto *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v7 = (this + 8);
  v6 = *(this + 1);
  if (v6)
  {
    v8 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    v9 = *(a2 + 4);
    if ((v9 & 3) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = *(this + 1);
    v9 = *(a2 + 4);
    if ((v9 & 3) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v9)
  {
    v10 = *(a2 + 3);
    *(this + 4) |= 1u;
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set<>(this + 3, (v10 & 0xFFFFFFFFFFFFFFFCLL), v6);
  }

  if ((v9 & 2) != 0)
  {
    v11 = *(this + 4);
    v12 = *(a2 + 4);
    if (v11)
    {
      google::protobuf::OneofOptions::MergeImpl(v11, v12, v6, a4);
    }

    else
    {
      *(this + 4) = google::protobuf::Arena::CopyConstruct<google::protobuf::OneofOptions>(v8, v12);
    }
  }

LABEL_11:
  *(this + 4) |= v9;
  v13 = *(a2 + 1);
  if (v13)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *google::protobuf::OneofDescriptorProto::Clear(google::protobuf::OneofDescriptorProto *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      v4 = this;
      google::protobuf::OneofOptions::Clear(*(this + 4));
      this = v4;
    }
  }

LABEL_7:
  v6 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v6)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::OneofOptions::Clear(google::protobuf::OneofOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  if (*(this + 14) >= 1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 12);
  }

  if (*(this + 40))
  {
    result = google::protobuf::FeatureSet::Clear(*(this + 9));
  }

  v4 = *(this + 8);
  v3 = this + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::OneofDescriptorProto::_InternalSerialize(google::protobuf::OneofDescriptorProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *(this + 4), *(*(this + 4) + 44), v7, a3, a6);
    v10 = *(this + 1);
    if ((v10 & 1) == 0)
    {
      return v7;
    }

    goto LABEL_13;
  }

  v12 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 23);
  if (v13 < 0 && (v13 = *(v12 + 8), v13 > 127) || *a3 - a2 + 14 < v13)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v12, a2);
    if ((v9 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = 10;
    v14 = a2 + 2;
    *(a2 + 1) = v13;
    if (*(v12 + 23) >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = *v12;
    }

    memcpy(v7 + 2, v15, v13);
    v7 = &v14[v13];
    if ((v9 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_3:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return v7;
  }

LABEL_13:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *google::protobuf::OneofDescriptorProto::ByteSizeLong(google::protobuf::OneofDescriptorProto *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v6 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v3 = (v8 + ((352 - 9 * __clz(v8)) >> 6) + 1);
      if ((v2 & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
LABEL_12:
        v4 = (this + 20);

        return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, v4);
      }
    }

    v9 = this;
    v10 = v3;
    v11 = google::protobuf::OneofOptions::ByteSizeLong(*(this + 4));
    this = v9;
    v3 = &v11[v10 + 1 + ((352 - 9 * __clz(v11)) >> 6)];
    goto LABEL_12;
  }

  v3 = 0;
  v4 = (this + 20);

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, v4);
}

uint64_t google::protobuf::OneofDescriptorProto::IsInitialized(google::protobuf::OneofDescriptorProto *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  result = google::protobuf::OneofOptions::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t google::protobuf::OneofOptions::IsInitialized(google::protobuf::OneofOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16), &google::protobuf::_OneofOptions_default_instance_);
  if (result)
  {
    v3 = *(this + 14);
    v4 = *(this + 6);
    if (v4)
    {
      v6 = v4 - 1;
      while (v3 >= 1)
      {
        v7 = v3 - 1;
        IsInitialized = google::protobuf::UninterpretedOption::IsInitialized(*&v6[8 * v3]);
        v3 = v7;
        if (!IsInitialized)
        {
          return 0;
        }
      }
    }

    else
    {
      v5 = v3 + 1;
      while (--v5 >= 1)
      {
        if (!google::protobuf::UninterpretedOption::IsInitialized(v4))
        {
          return 0;
        }
      }
    }

    if ((*(this + 40) & 1) == 0)
    {
      return 1;
    }

    result = google::protobuf::FeatureSet::IsInitialized(*(this + 9));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *google::protobuf::EnumDescriptorProto_EnumReservedRange::EnumDescriptorProto_EnumReservedRange(void *result, uint64_t a2)
{
  *result = off_284F457E0;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void google::protobuf::EnumDescriptorProto_EnumReservedRange::~EnumDescriptorProto_EnumReservedRange(google::protobuf::EnumDescriptorProto_EnumReservedRange *this)
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

void *google::protobuf::EnumDescriptorProto_EnumReservedRange::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      *(this + 6) = *(a2 + 6);
    }

    if ((v3 & 2) != 0)
    {
      *(this + 7) = *(a2 + 7);
    }
  }

  *(this + 4) |= v3;
  v4 = *(a2 + 1);
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto_EnumReservedRange::Clear(google::protobuf::EnumDescriptorProto_EnumReservedRange *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto_EnumReservedRange::_InternalSerialize(google::protobuf::EnumDescriptorProto_EnumReservedRange *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  v7 = *(this + 4);
  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<2>(a3, *(this + 7), v5);
    v8 = *(this + 1);
    if ((v8 & 1) == 0)
    {
      return v5;
    }

    goto LABEL_7;
  }

  v5 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<1>(a3, *(this + 6), a2);
  if ((v7 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v5;
  }

LABEL_7:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v5, a3, a4);
}

char *google::protobuf::EnumDescriptorProto_EnumReservedRange::ByteSizeLong(google::protobuf::EnumDescriptorProto_EnumReservedRange *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = ((704 - 9 * __clz(*(this + 6))) >> 6);
      if ((v1 & 2) == 0)
      {
LABEL_9:
        v3 = (this + 20);
        return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, v3);
      }
    }

    else
    {
      v2 = 0;
      if ((v1 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    v2 = (v2 + ((704 - 9 * __clz(*(this + 7))) >> 6));
    goto LABEL_9;
  }

  v2 = 0;
  v3 = (this + 20);
  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, v3);
}

void *google::protobuf::EnumDescriptorProto::EnumDescriptorProto(void *result, uint64_t a2)
{
  *result = off_284F460D0;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a2;
  result[6] = 0;
  result[7] = 0;
  result[8] = a2;
  result[9] = 0;
  result[10] = 0;
  result[11] = a2;
  result[12] = &google::protobuf::internal::fixed_address_empty_string;
  result[13] = 0;
  return result;
}

google::protobuf::EnumDescriptorProto *google::protobuf::EnumDescriptorProto::EnumDescriptorProto(google::protobuf::EnumDescriptorProto *this, google::protobuf::Arena *a2, const google::protobuf::EnumDescriptorProto *a3)
{
  *(this + 1) = a2;
  v6 = (this + 8);
  *this = off_284F460D0;
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
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a3 + 24), google::protobuf::Arena::CopyConstruct<google::protobuf::EnumValueDescriptorProto>);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = a2;
  if (*(a3 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a3 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::EnumDescriptorProto_EnumReservedRange>);
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = a2;
  if (*(a3 + 20))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 72, a3 + 72);
  }

  v8 = *(a3 + 12);
  if ((v8 & 3) != 0)
  {
    v8 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 96), a2);
  }

  *(this + 12) = v8;
  if ((*(this + 16) & 2) != 0)
  {
    v9 = google::protobuf::Arena::CopyConstruct<google::protobuf::EnumOptions>(a2, *(a3 + 13));
  }

  else
  {
    v9 = 0;
  }

  *(this + 13) = v9;
  return this;
}

void sub_23CDAF944(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<google::protobuf::EnumDescriptorProto_EnumReservedRange>::~RepeatedPtrField(v2);
  google::protobuf::RepeatedPtrField<google::protobuf::EnumValueDescriptorProto>::~RepeatedPtrField((v1 + 24));
  _Unwind_Resume(a1);
}

void google::protobuf::EnumDescriptorProto::~EnumDescriptorProto(google::protobuf::EnumDescriptorProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 12);
  v4 = *(this + 13);
  if (v4)
  {
    google::protobuf::EnumOptions::~EnumOptions(v4);
    MEMORY[0x23EED9460]();
  }

  google::protobuf::EnumDescriptorProto::Impl_::~Impl_((this + 16));
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 12);
  v4 = *(this + 13);
  if (v4)
  {
    google::protobuf::EnumOptions::~EnumOptions(v4);
    MEMORY[0x23EED9460]();
  }

  google::protobuf::EnumDescriptorProto::Impl_::~Impl_((this + 16));

  JUMPOUT(0x23EED9460);
}

void google::protobuf::EnumDescriptorProto::MergeImpl(google::protobuf::EnumDescriptorProto *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
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
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a2 + 24), google::protobuf::Arena::CopyConstruct<google::protobuf::EnumValueDescriptorProto>);
  }

LABEL_4:
  if (*(a2 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::EnumDescriptorProto_EnumReservedRange>);
  }

  if (*(a2 + 20))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 72, a2 + 72);
  }

  v8 = *(a2 + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a2 + 12);
      *(this + 4) |= 1u;
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set<>(this + 12, (v9 & 0xFFFFFFFFFFFFFFFCLL), v10);
    }

    if ((v8 & 2) != 0)
    {
      v11 = *(this + 13);
      v12 = *(a2 + 13);
      if (!v11)
      {
        *(this + 13) = google::protobuf::Arena::CopyConstruct<google::protobuf::EnumOptions>(v7, v12);
        *(this + 4) |= v8;
        v13 = *(a2 + 1);
        if ((v13 & 1) == 0)
        {
          return;
        }

        goto LABEL_19;
      }

      google::protobuf::EnumOptions::MergeImpl(v11, v12, a3, a4);
    }
  }

  *(this + 4) |= v8;
  v13 = *(a2 + 1);
  if ((v13 & 1) == 0)
  {
    return;
  }

LABEL_19:

  google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8));
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 8) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 6);
  }

  if (*(v1 + 56) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 48));
  }

  if (*(v1 + 80) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(v1 + 72);
  }

  v2 = *(v1 + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_11;
    }

    v3 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFCLL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_11:
      if ((v2 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_12:
      this = google::protobuf::EnumOptions::Clear(*(v1 + 104));
    }
  }

LABEL_13:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v4);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumOptions::Clear(google::protobuf::EnumOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  if (*(this + 14) >= 1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 12);
  }

  if (*(this + 40))
  {
    result = google::protobuf::FeatureSet::Clear(*(this + 9));
  }

  v4 = *(this + 8);
  v3 = this + 8;
  v3[74] = 0;
  *(v3 + 36) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto::_InternalSerialize(google::protobuf::EnumDescriptorProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if (v9)
  {
    v10 = *(this + 12) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *(v10 + 23);
    if (v11 < 0 && (v11 = *(v10 + 8), v11 > 127) || *a3 - a2 + 14 < v11)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v10, a2);
      v14 = *(this + 8);
      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    *a2 = 10;
    v12 = a2 + 2;
    *(a2 + 1) = v11;
    if (*(v10 + 23) >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = *v10;
    }

    memcpy(v7 + 2, v13, v11);
    v7 = &v12[v11];
  }

  v14 = *(this + 8);
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = 0;
  v16 = (this + 24);
  do
  {
    if (*v16)
    {
      v17 = (*v16 + 8 * v15 + 7);
    }

    else
    {
      v17 = (this + 24);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *v17, *(*v17 + 20), v7, a3, a6);
    ++v15;
  }

  while (v14 != v15);
LABEL_15:
  if ((v9 & 2) != 0)
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(3, *(this + 13), *(*(this + 13) + 44), v7, a3, a6);
  }

  v18 = *(this + 14);
  if (v18)
  {
    v19 = 0;
    v20 = (this + 48);
    do
    {
      if (*v20)
      {
        v21 = (*v20 + 8 * v19 + 7);
      }

      else
      {
        v21 = (this + 48);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(4, *v21, *(*v21 + 20), v7, a3, a6);
      ++v19;
    }

    while (v18 != v19);
  }

  v22 = *(this + 20);
  if (v22 >= 1)
  {
    v23 = (this + 72);
    v24 = 8;
    do
    {
      while (1)
      {
        v25 = (*v23 & 1) != 0 ? (*v23 + v24 - 1) : (this + 72);
        v26 = *v25;
        v27 = *(*v25 + 23);
        if ((v27 & 0x8000000000000000) == 0 || (v27 = v26[1], v27 <= 127))
        {
          if (*a3 - v7 + 14 >= v27)
          {
            break;
          }
        }

        v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 5, v26, v7);
        v24 += 8;
        if (!--v22)
        {
          goto LABEL_36;
        }
      }

      *v7 = 42;
      v7[1] = v27;
      if (*(v26 + 23) < 0)
      {
        v26 = *v26;
      }

      v28 = v7 + 2;
      memcpy(v7 + 2, v26, v27);
      v7 = &v28[v27];
      v24 += 8;
      --v22;
    }

    while (v22);
  }

LABEL_36:
  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v29 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *google::protobuf::EnumDescriptorProto::ByteSizeLong(google::protobuf::EnumDescriptorProto *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = this + 24;
  }

  if (v3)
  {
    v5 = 8 * v3;
    while (1)
    {
      v8 = *v4;
      v9 = *(*v4 + 16);
      if ((v9 & 7) != 0)
      {
        break;
      }

      v6 = 0;
LABEL_7:
      v7 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v8, v6, (v8 + 20));
      v3 += &v7[(352 - 9 * __clz(v7)) >> 6];
      v4 += 8;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    if (v9)
    {
      v10 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v6 = (v12 + ((352 - 9 * __clz(v12)) >> 6) + 1);
      if ((v9 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
      if ((v9 & 2) == 0)
      {
LABEL_16:
        if ((v9 & 4) != 0)
        {
          v6 = (v6 + ((704 - 9 * __clz(*(v8 + 40))) >> 6));
        }

        goto LABEL_7;
      }
    }

    v13 = v6;
    v14 = google::protobuf::EnumValueOptions::ByteSizeLong(*(v8 + 32));
    v6 = &v14[v13 + 1 + ((352 - 9 * __clz(v14)) >> 6)];
    goto LABEL_16;
  }

  v3 = 0;
LABEL_19:
  v15 = *(this + 6);
  v16 = *(this + 14);
  v17 = v3 + v16;
  if (v15)
  {
    v18 = (v15 + 7);
  }

  else
  {
    v18 = this + 48;
  }

  if (v16)
  {
    for (i = 8 * v16; i; i -= 8)
    {
      v22 = *v18;
      v23 = *(*v18 + 16);
      if ((v23 & 3) != 0)
      {
        if (v23)
        {
          v20 = ((704 - 9 * __clz(*(v22 + 6))) >> 6);
          if ((v23 & 2) != 0)
          {
LABEL_31:
            v20 = (v20 + ((704 - 9 * __clz(*(v22 + 7))) >> 6));
          }
        }

        else
        {
          v20 = 0;
          if ((v23 & 2) != 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v22, v20, v22 + 5);
      v17 += &v21[(352 - 9 * __clz(v21)) >> 6];
      v18 += 8;
    }
  }

  v24 = *(this + 20);
  v25 = (v17 + v24);
  if (v24 >= 1)
  {
    v26 = *(this + 9);
    if ((v26 & 1) == 0)
    {
      v27 = *(v26 + 23);
      v28 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v28 = v27;
      }

      v29 = v28 + ((352 - 9 * __clz(v28)) >> 6);
      v25 = (v29 + v17 + v29 * (v24 - 1) + v24);
      goto LABEL_50;
    }

    v30 = v26 - 1;
    if (v24 == 1)
    {
      v31 = 0;
LABEL_46:
      v39 = (v30 + 8 * v31 + 8);
      v40 = v24 - v31;
      do
      {
        v41 = *v39++;
        v42 = *(v41 + 23);
        v43 = *(v41 + 8);
        if ((v42 & 0x80u) == 0)
        {
          v43 = v42;
        }

        v25 = (v25 + v43 + ((352 - 9 * __clz(v43)) >> 6));
        --v40;
      }

      while (v40);
      goto LABEL_50;
    }

    v32 = 0;
    v31 = v24 & 0x7FFFFFFE;
    v33 = v30 + 16;
    v34 = v31;
    do
    {
      v35 = *(v33 - 8);
      v36 = *(v35 + 23);
      v37 = *(v35 + 8);
      v38 = *(*v33 + 8);
      if ((v36 & 0x80u) == 0)
      {
        v37 = v36;
      }

      if (*(*v33 + 23) >= 0)
      {
        v38 = *(*v33 + 23);
      }

      v25 = (v25 + v37 + ((352 - 9 * __clz(v37)) >> 6));
      v32 += v38 + ((352 - 9 * __clz(v38)) >> 6);
      v33 += 16;
      v34 -= 2;
    }

    while (v34);
    v25 = (v25 + v32);
    if (v31 != v24)
    {
      goto LABEL_46;
    }
  }

LABEL_50:
  v44 = *(this + 4);
  if ((v44 & 3) != 0)
  {
    if (v44)
    {
      v45 = *(this + 12) & 0xFFFFFFFFFFFFFFFCLL;
      v46 = *(v45 + 23);
      v47 = *(v45 + 8);
      if ((v46 & 0x80u) == 0)
      {
        v47 = v46;
      }

      v25 = (v25 + v47 + ((352 - 9 * __clz(v47)) >> 6) + 1);
    }

    if ((v44 & 2) != 0)
    {
      v48 = v25;
      v49 = google::protobuf::EnumOptions::ByteSizeLong(*(this + 13));
      v25 = &v49[((352 - 9 * __clz(v49)) >> 6) + 1 + v48];
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v25, this + 5);
}

uint64_t google::protobuf::EnumDescriptorProto::IsInitialized(google::protobuf::EnumDescriptorProto *this)
{
  v2 = (this + 24);
  v3 = *(this + 8);
  v4 = 8 * v3;
  v5 = v3 + 1;
  while (--v5 >= 1)
  {
    v6 = v4 - 8;
    v7 = (*v2 + v4 - 1);
    if ((*v2 & 1) == 0)
    {
      v7 = v2;
    }

    IsInitialized = google::protobuf::EnumValueDescriptorProto::IsInitialized(*v7);
    v4 = v6;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  result = google::protobuf::EnumOptions::IsInitialized(*(this + 13));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t google::protobuf::EnumOptions::IsInitialized(google::protobuf::EnumOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16), &google::protobuf::_EnumOptions_default_instance_);
  if (result)
  {
    v3 = *(this + 14);
    v4 = *(this + 6);
    if (v4)
    {
      v6 = v4 - 1;
      while (v3 >= 1)
      {
        v7 = v3 - 1;
        IsInitialized = google::protobuf::UninterpretedOption::IsInitialized(*&v6[8 * v3]);
        v3 = v7;
        if (!IsInitialized)
        {
          return 0;
        }
      }
    }

    else
    {
      v5 = v3 + 1;
      while (--v5 >= 1)
      {
        if (!google::protobuf::UninterpretedOption::IsInitialized(v4))
        {
          return 0;
        }
      }
    }

    if ((*(this + 40) & 1) == 0)
    {
      return 1;
    }

    result = google::protobuf::FeatureSet::IsInitialized(*(this + 9));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(uint64_t result, uint64_t a2)
{
  *result = off_284F45F98;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(google::protobuf::EnumValueDescriptorProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
  v4 = *(this + 4);
  if (v4)
  {
    google::protobuf::EnumValueOptions::~EnumValueOptions(v4);
    MEMORY[0x23EED9460]();
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
  v4 = *(this + 4);
  if (v4)
  {
    google::protobuf::EnumValueOptions::~EnumValueOptions(v4);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void google::protobuf::EnumValueDescriptorProto::MergeImpl(google::protobuf::EnumValueDescriptorProto *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v7 = (this + 8);
  v6 = *(this + 1);
  if (v6)
  {
    v8 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    v9 = *(a2 + 4);
    if ((v9 & 7) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = *(this + 1);
    v9 = *(a2 + 4);
    if ((v9 & 7) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v10 = *(a2 + 3);
  *(this + 4) |= 1u;
  if ((v6 & 1) == 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 3, (v10 & 0xFFFFFFFFFFFFFFFCLL), v6);
    if ((v9 & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_5:
    if ((v9 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  google::protobuf::internal::ArenaStringPtr::Set<>(this + 3, (v10 & 0xFFFFFFFFFFFFFFFCLL), *(v6 & 0xFFFFFFFFFFFFFFFELL));
  if ((v9 & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_9:
  v11 = *(this + 4);
  v12 = *(a2 + 4);
  if (!v11)
  {
    *(this + 4) = google::protobuf::Arena::CopyConstruct<google::protobuf::EnumValueOptions>(v8, v12);
    if ((v9 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  google::protobuf::EnumValueOptions::MergeImpl(v11, v12, v6, a4);
  if ((v9 & 4) != 0)
  {
LABEL_13:
    *(this + 10) = *(a2 + 10);
  }

LABEL_14:
  *(this + 4) |= v9;
  v13 = *(a2 + 1);
  if (v13)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumValueDescriptorProto::Clear(google::protobuf::EnumValueDescriptorProto *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      v4 = this;
      google::protobuf::EnumValueOptions::Clear(*(this + 4));
      this = v4;
    }
  }

LABEL_7:
  v6 = *(this + 8);
  result = (this + 8);
  *(result + 8) = 0;
  *(result + 2) = 0;
  if (v6)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumValueOptions::Clear(google::protobuf::EnumValueOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  if (*(this + 14) >= 1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 12);
  }

  if (*(this + 40))
  {
    result = google::protobuf::FeatureSet::Clear(*(this + 9));
  }

  v4 = *(this + 8);
  v3 = this + 8;
  *(v3 + 36) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumValueDescriptorProto::_InternalSerialize(google::protobuf::EnumValueDescriptorProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if (v9)
  {
    v12 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *(v12 + 23);
    if (v13 < 0 && (v13 = *(v12 + 8), v13 > 127) || *a3 - a2 + 14 < v13)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v12, a2);
      if ((v9 & 4) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *a2 = 10;
      v14 = a2 + 2;
      *(a2 + 1) = v13;
      if (*(v12 + 23) >= 0)
      {
        v15 = v12;
      }

      else
      {
        v15 = *v12;
      }

      memcpy(v7 + 2, v15, v13);
      v7 = &v14[v13];
      if ((v9 & 4) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_3:
    if ((v9 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_14:
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(3, *(this + 4), *(*(this + 4) + 44), v7, a3, a6);
    v10 = *(this + 1);
    if ((v10 & 1) == 0)
    {
      return v7;
    }

    goto LABEL_15;
  }

  if ((v9 & 4) == 0)
  {
    goto LABEL_3;
  }

LABEL_13:
  v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<2>(a3, *(this + 10), v7);
  if ((v9 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return v7;
  }

LABEL_15:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *google::protobuf::EnumValueDescriptorProto::ByteSizeLong(google::protobuf::EnumValueDescriptorProto *this)
{
  v1 = *(this + 4);
  if ((v1 & 7) != 0)
  {
    if (v1)
    {
      v8 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v2 = (v10 + ((352 - 9 * __clz(v10)) >> 6) + 1);
      if ((v1 & 2) != 0)
      {
LABEL_4:
        v3 = this;
        v4 = v2;
        v5 = google::protobuf::EnumValueOptions::ByteSizeLong(*(this + 4));
        v2 = &v5[v4 + 1 + ((352 - 9 * __clz(v5)) >> 6)];
        if ((v1 & 4) != 0)
        {
          goto LABEL_5;
        }

LABEL_15:
        this = v3;
        v6 = v3 + 5;

        return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, v6);
      }
    }

    else
    {
      v2 = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_4;
      }
    }

    v3 = this;
    if ((v1 & 4) != 0)
    {
LABEL_5:
      this = v3;
      v2 = (v2 + ((704 - 9 * __clz(v3[10])) >> 6));
      v6 = v3 + 5;

      return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, v6);
    }

    goto LABEL_15;
  }

  v2 = 0;
  v6 = (this + 20);

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, v6);
}

uint64_t google::protobuf::EnumValueDescriptorProto::IsInitialized(google::protobuf::EnumValueDescriptorProto *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  result = google::protobuf::EnumValueOptions::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t google::protobuf::EnumValueOptions::IsInitialized(google::protobuf::EnumValueOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16), &google::protobuf::_EnumValueOptions_default_instance_);
  if (result)
  {
    v3 = *(this + 14);
    v4 = *(this + 6);
    if (v4)
    {
      v6 = v4 - 1;
      while (v3 >= 1)
      {
        v7 = v3 - 1;
        IsInitialized = google::protobuf::UninterpretedOption::IsInitialized(*&v6[8 * v3]);
        v3 = v7;
        if (!IsInitialized)
        {
          return 0;
        }
      }
    }

    else
    {
      v5 = v3 + 1;
      while (--v5 >= 1)
      {
        if (!google::protobuf::UninterpretedOption::IsInitialized(v4))
        {
          return 0;
        }
      }
    }

    if ((*(this + 40) & 1) == 0)
    {
      return 1;
    }

    result = google::protobuf::FeatureSet::IsInitialized(*(this + 9));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(void *result, uint64_t a2)
{
  *result = off_284F46068;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a2;
  result[6] = &google::protobuf::internal::fixed_address_empty_string;
  result[7] = 0;
  return result;
}

google::protobuf::ServiceDescriptorProto *google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(google::protobuf::ServiceDescriptorProto *this, google::protobuf::Arena *a2, const google::protobuf::ServiceDescriptorProto *a3)
{
  *(this + 1) = a2;
  v6 = (this + 8);
  *this = off_284F46068;
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
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a3 + 24), google::protobuf::Arena::CopyConstruct<google::protobuf::MethodDescriptorProto>);
  }

  v8 = *(a3 + 6);
  if ((v8 & 3) != 0)
  {
    v8 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 48), a2);
  }

  *(this + 6) = v8;
  if ((*(this + 16) & 2) != 0)
  {
    *(this + 7) = google::protobuf::Arena::CopyConstruct<google::protobuf::ServiceOptions>(a2, *(a3 + 7));
  }

  else
  {
    *(this + 7) = 0;
  }

  return this;
}

void google::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto(google::protobuf::ServiceDescriptorProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 6);
  v4 = *(this + 7);
  if (v4)
  {
    google::protobuf::ServiceOptions::~ServiceOptions(v4);
    MEMORY[0x23EED9460]();
  }

  if (*(this + 3))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 24));
  }
}

{
  google::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::ServiceDescriptorProto::MergeImpl(google::protobuf::ServiceDescriptorProto *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  if (v7)
  {
    v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    if (!*(a2 + 8))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(a2 + 8))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a2 + 24), google::protobuf::Arena::CopyConstruct<google::protobuf::MethodDescriptorProto>);
  }

LABEL_4:
  v8 = *(a2 + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a2 + 6);
      *(this + 4) |= 1u;
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set<>(this + 6, (v9 & 0xFFFFFFFFFFFFFFFCLL), v10);
    }

    if ((v8 & 2) != 0)
    {
      v11 = *(this + 7);
      v12 = *(a2 + 7);
      if (!v11)
      {
        *(this + 7) = google::protobuf::Arena::CopyConstruct<google::protobuf::ServiceOptions>(v7, v12);
        *(this + 4) |= v8;
        v13 = *(a2 + 1);
        if ((v13 & 1) == 0)
        {
          return;
        }

        goto LABEL_15;
      }

      google::protobuf::ServiceOptions::MergeImpl(v11, v12, a3, a4);
    }
  }

  *(this + 4) |= v8;
  v13 = *(a2 + 1);
  if ((v13 & 1) == 0)
  {
    return;
  }

LABEL_15:

  google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8));
}

google::protobuf::UnknownFieldSet *google::protobuf::ServiceDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 8) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 6);
  }

  v2 = *(v1 + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_7;
    }

    v3 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFCLL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_7:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_8:
      this = google::protobuf::ServiceOptions::Clear(*(v1 + 56));
    }
  }

LABEL_9:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v4);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::ServiceOptions::Clear(google::protobuf::ServiceOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  if (*(this + 14) >= 1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 12);
  }

  if (*(this + 40))
  {
    result = google::protobuf::FeatureSet::Clear(*(this + 9));
  }

  v4 = *(this + 8);
  v3 = this + 8;
  v3[72] = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::ServiceDescriptorProto::_InternalSerialize(google::protobuf::ServiceDescriptorProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if (v9)
  {
    v10 = *(this + 6) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *(v10 + 23);
    if (v11 < 0 && (v11 = *(v10 + 8), v11 > 127) || *a3 - a2 + 14 < v11)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v10, a2);
      v14 = *(this + 8);
      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    *a2 = 10;
    v12 = a2 + 2;
    *(a2 + 1) = v11;
    if (*(v10 + 23) >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = *v10;
    }

    memcpy(v7 + 2, v13, v11);
    v7 = &v12[v11];
  }

  v14 = *(this + 8);
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = 0;
  v16 = (this + 24);
  do
  {
    if (*v16)
    {
      v17 = (*v16 + 8 * v15 + 7);
    }

    else
    {
      v17 = (this + 24);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *v17, *(*v17 + 20), v7, a3, a6);
    ++v15;
  }

  while (v14 != v15);
LABEL_15:
  if ((v9 & 2) != 0)
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(3, *(this + 7), *(*(this + 7) + 44), v7, a3, a6);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *google::protobuf::ServiceDescriptorProto::ByteSizeLong(google::protobuf::ServiceDescriptorProto *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = (this + 24);
  }

  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      v7 = google::protobuf::MethodDescriptorProto::ByteSizeLong(v6);
      v3 = (v3 + v7 + ((352 - 9 * __clz(v7)) >> 6));
      v5 -= 8;
    }

    while (v5);
    v8 = *(this + 4);
    if ((v8 & 3) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    v8 = *(this + 4);
    if ((v8 & 3) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v8)
  {
    v9 = *(this + 6) & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v3 = (v3 + v11 + ((352 - 9 * __clz(v11)) >> 6) + 1);
  }

  if ((v8 & 2) != 0)
  {
    v12 = google::protobuf::ServiceOptions::ByteSizeLong(*(this + 7));
    v3 = &v12[v3 + 1 + ((352 - 9 * __clz(v12)) >> 6)];
  }

LABEL_16:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 5);
}

uint64_t google::protobuf::ServiceDescriptorProto::IsInitialized(google::protobuf::ServiceDescriptorProto *this)
{
  v2 = (this + 24);
  v3 = *(this + 8);
  v4 = 8 * v3;
  v5 = v3 + 1;
  while (--v5 >= 1)
  {
    v6 = v4 - 8;
    v7 = (*v2 + v4 - 1);
    if ((*v2 & 1) == 0)
    {
      v7 = v2;
    }

    IsInitialized = google::protobuf::MethodDescriptorProto::IsInitialized(*v7);
    v4 = v6;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  result = google::protobuf::ServiceOptions::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t google::protobuf::ServiceOptions::IsInitialized(google::protobuf::ServiceOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16), &google::protobuf::_ServiceOptions_default_instance_);
  if (result)
  {
    v3 = *(this + 14);
    v4 = *(this + 6);
    if (v4)
    {
      v6 = v4 - 1;
      while (v3 >= 1)
      {
        v7 = v3 - 1;
        IsInitialized = google::protobuf::UninterpretedOption::IsInitialized(*&v6[8 * v3]);
        v3 = v7;
        if (!IsInitialized)
        {
          return 0;
        }
      }
    }

    else
    {
      v5 = v3 + 1;
      while (--v5 >= 1)
      {
        if (!google::protobuf::UninterpretedOption::IsInitialized(v4))
        {
          return 0;
        }
      }
    }

    if ((*(this + 40) & 1) == 0)
    {
      return 1;
    }

    result = google::protobuf::FeatureSet::IsInitialized(*(this + 9));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::MethodDescriptorProto::MethodDescriptorProto(uint64_t result, uint64_t a2)
{
  *result = off_284F45EC8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 32) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

google::protobuf::MethodDescriptorProto *google::protobuf::MethodDescriptorProto::MethodDescriptorProto(google::protobuf::MethodDescriptorProto *this, google::protobuf::Arena *a2, const google::protobuf::MethodDescriptorProto *a3)
{
  *(this + 1) = a2;
  v6 = (this + 8);
  *this = off_284F45EC8;
  v7 = *(a3 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 4) = *(a3 + 4);
  *(this + 5) = 0;
  v8 = *(a3 + 3);
  if ((v8 & 3) != 0)
  {
    v8 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 24), a2);
  }

  *(this + 3) = v8;
  v9 = *(a3 + 4);
  if ((v9 & 3) != 0)
  {
    v9 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 32), a2);
  }

  *(this + 4) = v9;
  v10 = *(a3 + 5);
  if ((v10 & 3) != 0)
  {
    v10 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 40), a2);
  }

  *(this + 5) = v10;
  if ((*(this + 16) & 8) != 0)
  {
    v11 = google::protobuf::Arena::CopyConstruct<google::protobuf::MethodOptions>(a2, *(a3 + 6));
  }

  else
  {
    v11 = 0;
  }

  *(this + 6) = v11;
  *(this + 28) = *(a3 + 28);
  return this;
}

void google::protobuf::MethodDescriptorProto::~MethodDescriptorProto(google::protobuf::MethodDescriptorProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 4);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 5);
  v4 = *(this + 6);
  if (v4)
  {
    google::protobuf::MethodOptions::~MethodOptions(v4);
    MEMORY[0x23EED9460]();
  }
}

{
  google::protobuf::MethodDescriptorProto::~MethodDescriptorProto(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::MethodDescriptorProto::MergeImpl(google::protobuf::MethodDescriptorProto *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v7 = (this + 8);
  v6 = *(this + 1);
  if ((v6 & 1) == 0)
  {
    v8 = *(this + 1);
    v9 = *(a2 + 4);
    if ((v9 & 0x3F) == 0)
    {
      goto LABEL_22;
    }

LABEL_3:
    if ((v9 & 1) == 0)
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v11 = *(a2 + 4);
      *(this + 4) |= 2u;
      v12 = *(this + 1);
      if (v12)
      {
        google::protobuf::internal::ArenaStringPtr::Set<>(this + 4, (v11 & 0xFFFFFFFFFFFFFFFCLL), *(v12 & 0xFFFFFFFFFFFFFFFELL));
        if ((v9 & 4) != 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        google::protobuf::internal::ArenaStringPtr::Set<>(this + 4, (v11 & 0xFFFFFFFFFFFFFFFCLL), v12);
        if ((v9 & 4) != 0)
        {
          goto LABEL_14;
        }
      }

LABEL_6:
      if ((v9 & 8) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      v15 = *(this + 6);
      v16 = *(a2 + 6);
      if (v15)
      {
        google::protobuf::MethodOptions::MergeImpl(v15, v16, v6, a4);
        if ((v9 & 0x10) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        *(this + 6) = google::protobuf::Arena::CopyConstruct<google::protobuf::MethodOptions>(v8, v16);
        if ((v9 & 0x10) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_8:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_22;
      }

LABEL_21:
      *(this + 57) = *(a2 + 57);
      goto LABEL_22;
    }

    v10 = *(a2 + 3);
    *(this + 4) |= 1u;
    if (v6)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 3, (v10 & 0xFFFFFFFFFFFFFFFCLL), *(v6 & 0xFFFFFFFFFFFFFFFELL));
      if ((v9 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 3, (v10 & 0xFFFFFFFFFFFFFFFCLL), v6);
      if ((v9 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_5:
    if ((v9 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = *(a2 + 5);
    *(this + 4) |= 4u;
    v14 = *(this + 1);
    if (v14)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 5, (v13 & 0xFFFFFFFFFFFFFFFCLL), *(v14 & 0xFFFFFFFFFFFFFFFELL));
      if ((v9 & 8) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 5, (v13 & 0xFFFFFFFFFFFFFFFCLL), v14);
      if ((v9 & 8) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_7:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    *(this + 56) = *(a2 + 56);
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v8 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  v9 = *(a2 + 4);
  if ((v9 & 0x3F) != 0)
  {
    goto LABEL_3;
  }

LABEL_22:
  *(this + 4) |= v9;
  v17 = *(a2 + 1);
  if (v17)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v17 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *google::protobuf::MethodDescriptorProto::Clear(google::protobuf::MethodDescriptorProto *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v6 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v7 = *(this + 4) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v8 = *(this + 5) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v3 = this;
    google::protobuf::MethodOptions::Clear(*(this + 6));
    this = v3;
    goto LABEL_7;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 8) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = *(this + 8);
  result = (this + 8);
  *(result + 24) = 0;
  *(result + 2) = 0;
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::MethodOptions::Clear(google::protobuf::MethodOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  if (*(this + 14) >= 1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 12);
  }

  v3 = *(this + 10);
  if (v3)
  {
    result = google::protobuf::FeatureSet::Clear(*(this + 9));
  }

  if ((v3 & 6) != 0)
  {
    *(this + 10) = 0;
  }

  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v4);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::MethodDescriptorProto::_InternalSerialize(google::protobuf::MethodDescriptorProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if (v9)
  {
    v12 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *(v12 + 23);
    if (v13 < 0 && (v13 = *(v12 + 8), v13 > 127) || *a3 - a2 + 14 < v13)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v12, a2);
      if ((v9 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *a2 = 10;
      v14 = a2 + 2;
      *(a2 + 1) = v13;
      if (*(v12 + 23) >= 0)
      {
        v15 = v12;
      }

      else
      {
        v15 = *v12;
      }

      memcpy(v7 + 2, v15, v13);
      v7 = &v14[v13];
      if ((v9 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    if ((v9 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_23:
    v20 = *(this + 5) & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *(v20 + 23);
    if (v21 < 0 && (v21 = *(v20 + 8), v21 > 127) || *a3 - v7 + 14 < v21)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 3, v20, v7);
      if ((v9 & 8) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *v7 = 26;
      v22 = v7 + 2;
      v7[1] = v21;
      if (*(v20 + 23) >= 0)
      {
        v23 = v20;
      }

      else
      {
        v23 = *v20;
      }

      memcpy(v7 + 2, v23, v21);
      v7 = &v22[v21];
      if ((v9 & 8) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_5:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

  if ((v9 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  v16 = *(this + 4) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 23);
  if (v17 < 0 && (v17 = *(v16 + 8), v17 > 127) || *a3 - v7 + 14 < v17)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 2, v16, v7);
    if ((v9 & 4) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v7 = 18;
    v18 = v7 + 2;
    v7[1] = v17;
    if (*(v16 + 23) >= 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = *v16;
    }

    memcpy(v7 + 2, v19, v17);
    v7 = &v18[v17];
    if ((v9 & 4) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_4:
  if ((v9 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_30:
  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(4, *(this + 6), *(*(this + 6) + 44), v7, a3, a6);
  if ((v9 & 0x10) == 0)
  {
LABEL_6:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_34:
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    }

    v25 = *(this + 57);
    *v7 = 48;
    v7[1] = v25;
    v7 += 2;
    v10 = *(this + 1);
    if ((v10 & 1) == 0)
    {
      return v7;
    }

    goto LABEL_37;
  }

LABEL_31:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v24 = *(this + 56);
  *v7 = 40;
  v7[1] = v24;
  v7 += 2;
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_7:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return v7;
  }

LABEL_37:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *google::protobuf::MethodDescriptorProto::ByteSizeLong(google::protobuf::MethodDescriptorProto *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x3F) != 0)
  {
    if (v1)
    {
      v6 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v2 = v8 + ((352 - 9 * __clz(v8)) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          v14 = *(this + 5) & 0xFFFFFFFFFFFFFFFCLL;
          v15 = *(v14 + 23);
          v16 = *(v14 + 8);
          if ((v15 & 0x80u) == 0)
          {
            v16 = v15;
          }

          v2 += v16 + ((352 - 9 * __clz(v16)) >> 6) + 1;
          if ((v1 & 8) == 0)
          {
            goto LABEL_17;
          }
        }

        else if ((v1 & 8) == 0)
        {
          goto LABEL_17;
        }

        v12 = this;
        v13 = google::protobuf::MethodOptions::ByteSizeLong(*(this + 6));
        this = v12;
        v2 += &v13[((352 - 9 * __clz(v13)) >> 6) + 1];
LABEL_17:
        v3 = (v2 + ((v1 >> 4) & 2) + ((v1 >> 3) & 2));
        v4 = (this + 20);

        return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, v4);
      }
    }

    else
    {
      v2 = 0;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v9 = *(this + 4) & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((352 - 9 * __clz(v11)) >> 6) + 1;
    goto LABEL_14;
  }

  v3 = 0;
  v4 = (this + 20);

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, v4);
}

uint64_t google::protobuf::MethodDescriptorProto::IsInitialized(google::protobuf::MethodDescriptorProto *this)
{
  if ((*(this + 16) & 8) == 0)
  {
    return 1;
  }

  result = google::protobuf::MethodOptions::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t google::protobuf::MethodOptions::IsInitialized(google::protobuf::MethodOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16), &google::protobuf::_MethodOptions_default_instance_);
  if (result)
  {
    v3 = *(this + 14);
    v4 = *(this + 6);
    if (v4)
    {
      v6 = v4 - 1;
      while (v3 >= 1)
      {
        v7 = v3 - 1;
        IsInitialized = google::protobuf::UninterpretedOption::IsInitialized(*&v6[8 * v3]);
        v3 = v7;
        if (!IsInitialized)
        {
          return 0;
        }
      }
    }

    else
    {
      v5 = v3 + 1;
      while (--v5 >= 1)
      {
        if (!google::protobuf::UninterpretedOption::IsInitialized(v4))
        {
          return 0;
        }
      }
    }

    if ((*(this + 40) & 1) == 0)
    {
      return 1;
    }

    result = google::protobuf::FeatureSet::IsInitialized(*(this + 9));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

double google::protobuf::FileOptions::FileOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F45BF0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a2;
  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 88) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 104) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 112) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 120) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 128) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 136) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 168) = 1;
  *(a1 + 172) = 1;
  *(a1 + 159) = 0;
  *(a1 + 144) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 152) = 0;
  return result;
}

google::protobuf::FileOptions *google::protobuf::FileOptions::FileOptions(google::protobuf::FileOptions *this, google::protobuf::Arena *a2, const google::protobuf::FileOptions *a3, double a4)
{
  *(this + 1) = a2;
  v7 = (this + 8);
  *this = off_284F45BF0;
  v8 = *(a3 + 1);
  if (v8)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a3 + 10);
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  *(this + 8) = a2;
  if (*(a3 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a3 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

  v9 = *(a3 + 9);
  if ((v9 & 3) != 0)
  {
    v9 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 72), a2);
  }

  *(this + 9) = v9;
  v10 = *(a3 + 10);
  if ((v10 & 3) != 0)
  {
    v10 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 80), a2);
  }

  *(this + 10) = v10;
  v11 = *(a3 + 11);
  if ((v11 & 3) != 0)
  {
    v11 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 88), a2);
  }

  *(this + 11) = v11;
  v12 = *(a3 + 12);
  if ((v12 & 3) != 0)
  {
    v12 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 96), a2);
  }

  *(this + 12) = v12;
  v13 = *(a3 + 13);
  if ((v13 & 3) != 0)
  {
    v13 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 104), a2);
  }

  *(this + 13) = v13;
  v14 = *(a3 + 14);
  if ((v14 & 3) != 0)
  {
    v14 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 112), a2);
  }

  *(this + 14) = v14;
  v15 = *(a3 + 15);
  if ((v15 & 3) != 0)
  {
    v15 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 120), a2);
  }

  *(this + 15) = v15;
  v16 = *(a3 + 16);
  if ((v16 & 3) != 0)
  {
    v16 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 128), a2);
  }

  *(this + 16) = v16;
  v17 = *(a3 + 17);
  if ((v17 & 3) != 0)
  {
    v17 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 136), a2);
  }

  *(this + 17) = v17;
  v18 = *(a3 + 18);
  if ((v18 & 3) != 0)
  {
    v18 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 144), a2);
  }

  *(this + 18) = v18;
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), this, (a3 + 16), a4);
  if ((*(this + 41) & 4) != 0)
  {
    v19 = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(a2, *(a3 + 19));
  }

  else
  {
    v19 = 0;
  }

  *(this + 19) = v19;
  v20 = *(a3 + 20);
  *(this + 165) = *(a3 + 165);
  *(this + 20) = v20;
  return this;
}

void sub_23CDB2140(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<google::protobuf::UninterpretedOption>::~RepeatedPtrField((v1 + 32));
  google::protobuf::internal::ExtensionSet::~ExtensionSet(v1);
  _Unwind_Resume(a1);
}

void google::protobuf::FileOptions::SharedDtor(google::protobuf::FileOptions *this)
{
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 9);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 10);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 11);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 12);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 13);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 14);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 15);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 16);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 17);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 18);
  v2 = *(this + 19);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v2 + 8));
    }

    google::protobuf::internal::ExtensionSet::~ExtensionSet((v2 + 16));
    MEMORY[0x23EED9460](v2, 0x10A1C4007999064);
  }

  if (*(this + 6))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 48));
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

void google::protobuf::FileOptions::~FileOptions(google::protobuf::FileOptions *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::FileOptions::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::FileOptions::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::FileOptions::MergeImpl(google::protobuf::FileOptions *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    if (!*(a2 + 14))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 14))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

LABEL_4:
  v8 = *(a2 + 10);
  if (!v8)
  {
    goto LABEL_13;
  }

  if (v8)
  {
    v9 = *(a2 + 9);
    *(this + 10) |= 1u;
    v10 = *(this + 1);
    if (v10)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 9, (v9 & 0xFFFFFFFFFFFFFFFCLL), *(v10 & 0xFFFFFFFFFFFFFFFELL));
      if ((v8 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 9, (v9 & 0xFFFFFFFFFFFFFFFCLL), v10);
      if ((v8 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_7:
    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    v13 = *(a2 + 11);
    *(this + 10) |= 4u;
    v14 = *(this + 1);
    if (v14)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 11, (v13 & 0xFFFFFFFFFFFFFFFCLL), *(v14 & 0xFFFFFFFFFFFFFFFELL));
      if ((v8 & 8) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 11, (v13 & 0xFFFFFFFFFFFFFFFCLL), v14);
      if ((v8 & 8) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_9:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    v17 = *(a2 + 13);
    *(this + 10) |= 0x10u;
    v18 = *(this + 1);
    if (v18)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 13, (v17 & 0xFFFFFFFFFFFFFFFCLL), *(v18 & 0xFFFFFFFFFFFFFFFELL));
      if ((v8 & 0x20) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 13, (v17 & 0xFFFFFFFFFFFFFFFCLL), v18);
      if ((v8 & 0x20) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_11:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_27:
    v21 = *(a2 + 15);
    *(this + 10) |= 0x40u;
    v22 = *(this + 1);
    if (v22)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 15, (v21 & 0xFFFFFFFFFFFFFFFCLL), *(v22 & 0xFFFFFFFFFFFFFFFELL));
      if ((v8 & 0x80) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 15, (v21 & 0xFFFFFFFFFFFFFFFCLL), v22);
      if ((v8 & 0x80) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_13:
    if ((v8 & 0xFF00) == 0)
    {
      goto LABEL_53;
    }

LABEL_31:
    if ((v8 & 0x100) == 0)
    {
      if ((v8 & 0x200) == 0)
      {
        goto LABEL_33;
      }

LABEL_42:
      v27 = *(a2 + 18);
      *(this + 10) |= 0x200u;
      v28 = *(this + 1);
      if (v28)
      {
        google::protobuf::internal::ArenaStringPtr::Set<>(this + 18, (v27 & 0xFFFFFFFFFFFFFFFCLL), *(v28 & 0xFFFFFFFFFFFFFFFELL));
        if ((v8 & 0x400) != 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        google::protobuf::internal::ArenaStringPtr::Set<>(this + 18, (v27 & 0xFFFFFFFFFFFFFFFCLL), v28);
        if ((v8 & 0x400) != 0)
        {
          goto LABEL_44;
        }
      }

LABEL_34:
      if ((v8 & 0x800) == 0)
      {
        goto LABEL_35;
      }

LABEL_48:
      *(this + 160) = *(a2 + 160);
      if ((v8 & 0x1000) == 0)
      {
LABEL_36:
        if ((v8 & 0x2000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_50;
      }

LABEL_49:
      *(this + 161) = *(a2 + 161);
      if ((v8 & 0x2000) == 0)
      {
LABEL_37:
        if ((v8 & 0x4000) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_51;
      }

LABEL_50:
      *(this + 162) = *(a2 + 162);
      if ((v8 & 0x4000) == 0)
      {
LABEL_38:
        if ((v8 & 0x8000) == 0)
        {
          goto LABEL_53;
        }

LABEL_52:
        *(this + 164) = *(a2 + 164);
        goto LABEL_53;
      }

LABEL_51:
      *(this + 163) = *(a2 + 163);
      if ((v8 & 0x8000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    v25 = *(a2 + 17);
    *(this + 10) |= 0x100u;
    v26 = *(this + 1);
    if (v26)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 17, (v25 & 0xFFFFFFFFFFFFFFFCLL), *(v26 & 0xFFFFFFFFFFFFFFFELL));
      if ((v8 & 0x200) != 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 17, (v25 & 0xFFFFFFFFFFFFFFFCLL), v26);
      if ((v8 & 0x200) != 0)
      {
        goto LABEL_42;
      }
    }

LABEL_33:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_34;
    }

LABEL_44:
    v29 = *(this + 19);
    v30 = *(a2 + 19);
    if (v29)
    {
      google::protobuf::FeatureSet::MergeImpl(v29, v30, a3, a4);
      if ((v8 & 0x800) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(this + 19) = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(v7, v30);
      if ((v8 & 0x800) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_35:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_49;
  }

  if ((v8 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  v11 = *(a2 + 10);
  *(this + 10) |= 2u;
  v12 = *(this + 1);
  if (v12)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 10, (v11 & 0xFFFFFFFFFFFFFFFCLL), *(v12 & 0xFFFFFFFFFFFFFFFELL));
    if ((v8 & 4) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 10, (v11 & 0xFFFFFFFFFFFFFFFCLL), v12);
    if ((v8 & 4) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  if ((v8 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  v15 = *(a2 + 12);
  *(this + 10) |= 8u;
  v16 = *(this + 1);
  if (v16)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 12, (v15 & 0xFFFFFFFFFFFFFFFCLL), *(v16 & 0xFFFFFFFFFFFFFFFELL));
    if ((v8 & 0x10) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 12, (v15 & 0xFFFFFFFFFFFFFFFCLL), v16);
    if ((v8 & 0x10) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_10:
  if ((v8 & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v19 = *(a2 + 14);
  *(this + 10) |= 0x20u;
  v20 = *(this + 1);
  if (v20)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 14, (v19 & 0xFFFFFFFFFFFFFFFCLL), *(v20 & 0xFFFFFFFFFFFFFFFELL));
    if ((v8 & 0x40) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 14, (v19 & 0xFFFFFFFFFFFFFFFCLL), v20);
    if ((v8 & 0x40) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_12:
  if ((v8 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_29:
  v23 = *(a2 + 16);
  *(this + 10) |= 0x80u;
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 16, (v23 & 0xFFFFFFFFFFFFFFFCLL), v24);
    if ((v8 & 0xFF00) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_31;
  }

  google::protobuf::internal::ArenaStringPtr::Set<>(this + 16, (v23 & 0xFFFFFFFFFFFFFFFCLL), *(v24 & 0xFFFFFFFFFFFFFFFELL));
  if ((v8 & 0xFF00) != 0)
  {
    goto LABEL_31;
  }

LABEL_53:
  if ((v8 & 0xF0000) == 0)
  {
    goto LABEL_59;
  }

  if ((v8 & 0x10000) != 0)
  {
    *(this + 165) = *(a2 + 165);
    if ((v8 & 0x20000) == 0)
    {
LABEL_56:
      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_65;
    }
  }

  else if ((v8 & 0x20000) == 0)
  {
    goto LABEL_56;
  }

  *(this + 166) = *(a2 + 166);
  if ((v8 & 0x40000) == 0)
  {
LABEL_57:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_65:
  *(this + 42) = *(a2 + 42);
  if ((v8 & 0x80000) != 0)
  {
LABEL_58:
    *(this + 172) = *(a2 + 172);
  }

LABEL_59:
  *(this + 10) |= v8;
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), &google::protobuf::_FileOptions_default_instance_, (a2 + 16), a4);
  v31 = *(a2 + 1);
  if (v31)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v31 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

const google::protobuf::UnknownFieldSet *google::protobuf::FileOptions::_InternalSerialize(google::protobuf::FileOptions *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 10);
  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_30:
    v15 = *(this + 10) & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *(v15 + 23);
    if (v16 < 0 && (v16 = *(v15 + 8), v16 > 127) || *a3 - v7 + 14 < v16)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 8, v15, v7);
      if ((v9 & 0x40000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *v7 = 66;
      v17 = v7 + 2;
      v7[1] = v16;
      if (*(v15 + 23) >= 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = *v15;
      }

      memcpy(v7 + 2, v18, v16);
      v7 = &v17[v16];
      if ((v9 & 0x40000) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_4:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

  v11 = *(this + 9) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 23);
  if (v12 < 0 && (v12 = *(v11 + 8), v12 > 127) || *a3 - a2 + 14 < v12)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v11, a2);
    if ((v9 & 2) != 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *a2 = 10;
    v13 = a2 + 2;
    *(a2 + 1) = v12;
    if (*(v11 + 23) >= 0)
    {
      v14 = v11;
    }

    else
    {
      v14 = *v11;
    }

    memcpy(v7 + 2, v14, v12);
    v7 = &v13[v12];
    if ((v9 & 2) != 0)
    {
      goto LABEL_30;
    }
  }

LABEL_3:
  if ((v9 & 0x40000) == 0)
  {
    goto LABEL_4;
  }

LABEL_37:
  if (*a3 <= v7)
  {
    v67 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v19 = *(this + 42);
    *v67 = 72;
    v20 = v67 + 1;
    if (v19 < 0x80)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v19 = *(this + 42);
    *v7 = 72;
    v20 = v7 + 1;
    if (v19 < 0x80)
    {
LABEL_39:
      LOBYTE(v21) = v19;
      goto LABEL_40;
    }
  }

  do
  {
    *v20++ = v19 | 0x80;
    v21 = v19 >> 7;
    v68 = v19 >> 14;
    v19 >>= 7;
  }

  while (v68);
LABEL_40:
  *v20 = v21;
  v7 = v20 + 1;
  if ((v9 & 0x800) == 0)
  {
LABEL_5:
    if ((v9 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_44:
    v23 = *(this + 11) & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *(v23 + 23);
    if (v24 < 0 && (v24 = *(v23 + 8), v24 > 127) || *a3 - v7 + 14 < v24)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 11, v23, v7);
      if ((v9 & 0x4000) != 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *v7 = 90;
      v25 = v7 + 2;
      v7[1] = v24;
      if (*(v23 + 23) >= 0)
      {
        v26 = v23;
      }

      else
      {
        v26 = *v23;
      }

      memcpy(v7 + 2, v26, v24);
      v7 = &v25[v24];
      if ((v9 & 0x4000) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_7:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_54;
  }

LABEL_41:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v22 = *(this + 160);
  *v7 = 80;
  v7[1] = v22;
  v7 += 2;
  if ((v9 & 4) != 0)
  {
    goto LABEL_44;
  }

LABEL_6:
  if ((v9 & 0x4000) == 0)
  {
    goto LABEL_7;
  }

LABEL_51:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v27 = *(this + 163);
  *v7 = 384;
  v7[2] = v27;
  v7 += 3;
  if ((v9 & 0x8000) == 0)
  {
LABEL_8:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_54:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v28 = *(this + 164);
  *v7 = 392;
  v7[2] = v28;
  v7 += 3;
  if ((v9 & 0x10000) == 0)
  {
LABEL_9:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_57:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v29 = *(this + 165);
  *v7 = 400;
  v7[2] = v29;
  v7 += 3;
  if ((v9 & 0x1000) == 0)
  {
LABEL_10:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_60:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v30 = *(this + 161);
  *v7 = 416;
  v7[2] = v30;
  v7 += 3;
  if ((v9 & 0x20000) == 0)
  {
LABEL_11:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_63:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v31 = *(this + 166);
  *v7 = 440;
  v7[2] = v31;
  v7 += 3;
  if ((v9 & 0x2000) == 0)
  {
LABEL_12:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_69;
  }

LABEL_66:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v32 = *(this + 162);
  *v7 = 472;
  v7[2] = v32;
  v7 += 3;
  if ((v9 & 0x80000) == 0)
  {
LABEL_13:
    if ((v9 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_72:
    v34 = *(this + 12) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *(v34 + 23);
    if (v35 < 0 && (v35 = *(v34 + 8), v35 > 127) || *a3 - v7 + 13 < v35)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 36, v34, v7);
      if ((v9 & 0x10) != 0)
      {
        goto LABEL_79;
      }
    }

    else
    {
      *v7 = 674;
      v36 = v7 + 3;
      v7[2] = v35;
      if (*(v34 + 23) >= 0)
      {
        v37 = v34;
      }

      else
      {
        v37 = *v34;
      }

      memcpy(v7 + 3, v37, v35);
      v7 = &v36[v35];
      if ((v9 & 0x10) != 0)
      {
        goto LABEL_79;
      }
    }

LABEL_15:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_86:
    v42 = *(this + 14) & 0xFFFFFFFFFFFFFFFCLL;
    v43 = *(v42 + 23);
    if (v43 < 0 && (v43 = *(v42 + 8), v43 > 127) || *a3 - v7 + 13 < v43)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 39, v42, v7);
      if ((v9 & 0x40) != 0)
      {
        goto LABEL_93;
      }
    }

    else
    {
      *v7 = 698;
      v44 = v7 + 3;
      v7[2] = v43;
      if (*(v42 + 23) >= 0)
      {
        v45 = v42;
      }

      else
      {
        v45 = *v42;
      }

      memcpy(v7 + 3, v45, v43);
      v7 = &v44[v43];
      if ((v9 & 0x40) != 0)
      {
        goto LABEL_93;
      }
    }

LABEL_17:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_100:
    v50 = *(this + 16) & 0xFFFFFFFFFFFFFFFCLL;
    v51 = *(v50 + 23);
    if (v51 < 0 && (v51 = *(v50 + 8), v51 > 127) || *a3 - v7 + 13 < v51)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 41, v50, v7);
      if ((v9 & 0x100) != 0)
      {
        goto LABEL_107;
      }
    }

    else
    {
      *v7 = 714;
      v52 = v7 + 3;
      v7[2] = v51;
      if (*(v50 + 23) >= 0)
      {
        v53 = v50;
      }

      else
      {
        v53 = *v50;
      }

      memcpy(v7 + 3, v53, v51);
      v7 = &v52[v51];
      if ((v9 & 0x100) != 0)
      {
        goto LABEL_107;
      }
    }

LABEL_19:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_20;
    }

LABEL_114:
    v58 = *(this + 18) & 0xFFFFFFFFFFFFFFFCLL;
    v59 = *(v58 + 23);
    if (v59 < 0 && (v59 = *(v58 + 8), v59 > 127) || *a3 - v7 + 13 < v59)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 45, v58, v7);
      if ((v9 & 0x400) != 0)
      {
        goto LABEL_121;
      }
    }

    else
    {
      *v7 = 746;
      v60 = v7 + 3;
      v7[2] = v59;
      if (*(v58 + 23) >= 0)
      {
        v61 = v58;
      }

      else
      {
        v61 = *v58;
      }

      memcpy(v7 + 3, v61, v59);
      v7 = &v60[v59];
      if ((v9 & 0x400) != 0)
      {
        goto LABEL_121;
      }
    }

LABEL_21:
    v10 = *(this + 14);
    if (!v10)
    {
      goto LABEL_127;
    }

    goto LABEL_122;
  }

LABEL_69:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v33 = *(this + 172);
  *v7 = 504;
  v7[2] = v33;
  v7 += 3;
  if ((v9 & 8) != 0)
  {
    goto LABEL_72;
  }

LABEL_14:
  if ((v9 & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_79:
  v38 = *(this + 13) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = *(v38 + 23);
  if (v39 < 0 && (v39 = *(v38 + 8), v39 > 127) || *a3 - v7 + 13 < v39)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 37, v38, v7);
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_86;
    }
  }

  else
  {
    *v7 = 682;
    v40 = v7 + 3;
    v7[2] = v39;
    if (*(v38 + 23) >= 0)
    {
      v41 = v38;
    }

    else
    {
      v41 = *v38;
    }

    memcpy(v7 + 3, v41, v39);
    v7 = &v40[v39];
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_86;
    }
  }

LABEL_16:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_93:
  v46 = *(this + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v47 = *(v46 + 23);
  if (v47 < 0 && (v47 = *(v46 + 8), v47 > 127) || *a3 - v7 + 13 < v47)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 40, v46, v7);
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_100;
    }
  }

  else
  {
    *v7 = 706;
    v48 = v7 + 3;
    v7[2] = v47;
    if (*(v46 + 23) >= 0)
    {
      v49 = v46;
    }

    else
    {
      v49 = *v46;
    }

    memcpy(v7 + 3, v49, v47);
    v7 = &v48[v47];
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_100;
    }
  }

LABEL_18:
  if ((v9 & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_107:
  v54 = *(this + 17) & 0xFFFFFFFFFFFFFFFCLL;
  v55 = *(v54 + 23);
  if (v55 < 0 && (v55 = *(v54 + 8), v55 > 127) || *a3 - v7 + 13 < v55)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 44, v54, v7);
    if ((v9 & 0x200) != 0)
    {
      goto LABEL_114;
    }
  }

  else
  {
    *v7 = 738;
    v56 = v7 + 3;
    v7[2] = v55;
    if (*(v54 + 23) >= 0)
    {
      v57 = v54;
    }

    else
    {
      v57 = *v54;
    }

    memcpy(v7 + 3, v57, v55);
    v7 = &v56[v55];
    if ((v9 & 0x200) != 0)
    {
      goto LABEL_114;
    }
  }

LABEL_20:
  if ((v9 & 0x400) == 0)
  {
    goto LABEL_21;
  }

LABEL_121:
  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x32, *(this + 19), *(*(this + 19) + 44), v7, a3, a6);
  v10 = *(this + 14);
  if (!v10)
  {
    goto LABEL_127;
  }

LABEL_122:
  v62 = 0;
  v63 = (this + 48);
  do
  {
    if (*v63)
    {
      v64 = (*v63 + 8 * v62 + 7);
    }

    else
    {
      v64 = (this + 48);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x3E7, *v64, *(*v64 + 20), v7, a3, a6);
    ++v62;
  }

  while (v10 != v62);
LABEL_127:
  if (*(this + 13))
  {
    v7 = google::protobuf::internal::ExtensionSet::_InternalSerializeImpl((this + 16), &google::protobuf::_FileOptions_default_instance_, 0x3E8, 0x20000000, v7, a3);
  }

  v65 = *(this + 1);
  if ((v65 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v65 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, a4);
}

char *google::protobuf::FileOptions::ByteSizeLong(google::protobuf::FileOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 6);
  v4 = *(this + 14);
  v5 = (v2 + 2 * v4);
  if (v3)
  {
    v6 = (v3 + 7);
  }

  else
  {
    v6 = (this + 48);
  }

  if (v4)
  {
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v5 = (v5 + v9 + ((352 - 9 * __clz(v9)) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 10);
  if (!*(this + 10))
  {
    goto LABEL_19;
  }

  if (v10)
  {
    v18 = *(this + 9) & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *(v18 + 23);
    v20 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v20 = v19;
    }

    v5 = (v5 + v20 + ((352 - 9 * __clz(v20)) >> 6) + 1);
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_52;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v21 = *(this + 10) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v5 = (v5 + v23 + ((352 - 9 * __clz(v23)) >> 6) + 1);
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_52:
  v24 = *(this + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v24 + 23);
  v26 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v26 = v25;
  }

  v5 = (v5 + v26 + ((352 - 9 * __clz(v26)) >> 6) + 1);
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_55:
  v27 = *(this + 12) & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v5 = (v5 + v29 + ((352 - 9 * __clz(v29)) >> 6) + 2);
  if ((v10 & 0x10) == 0)
  {
LABEL_13:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_61:
    v33 = *(this + 14) & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *(v33 + 23);
    v35 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v35 = v34;
    }

    v5 = (v5 + v35 + ((352 - 9 * __clz(v35)) >> 6) + 2);
    if ((v10 & 0x40) == 0)
    {
LABEL_15:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    goto LABEL_64;
  }

LABEL_58:
  v30 = *(this + 13) & 0xFFFFFFFFFFFFFFFCLL;
  v31 = *(v30 + 23);
  v32 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v32 = v31;
  }

  v5 = (v5 + v32 + ((352 - 9 * __clz(v32)) >> 6) + 2);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_61;
  }

LABEL_14:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_64:
  v36 = *(this + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 23);
  v38 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v38 = v37;
  }

  v5 = (v5 + v38 + ((352 - 9 * __clz(v38)) >> 6) + 2);
  if ((v10 & 0x80) != 0)
  {
LABEL_16:
    v11 = *(this + 16) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v5 = (v5 + v13 + ((352 - 9 * __clz(v13)) >> 6) + 2);
  }

LABEL_19:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v10 & 0x100) == 0)
  {
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_22;
    }

LABEL_71:
    v42 = *(this + 18) & 0xFFFFFFFFFFFFFFFCLL;
    v43 = *(v42 + 23);
    v44 = *(v42 + 8);
    if ((v43 & 0x80u) == 0)
    {
      v44 = v43;
    }

    v5 = (v5 + v44 + ((352 - 9 * __clz(v44)) >> 6) + 2);
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v39 = *(this + 17) & 0xFFFFFFFFFFFFFFFCLL;
  v40 = *(v39 + 23);
  v41 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v41 = v40;
  }

  v5 = (v5 + v41 + ((352 - 9 * __clz(v41)) >> 6) + 2);
  if ((v10 & 0x200) != 0)
  {
    goto LABEL_71;
  }

LABEL_22:
  if ((v10 & 0x400) != 0)
  {
LABEL_23:
    v14 = google::protobuf::FeatureSet::ByteSizeLong(*(this + 19));
    v5 = &v14[v5 + 2 + ((352 - 9 * __clz(v14)) >> 6)];
  }

LABEL_24:
  v15 = v5 + ((v10 >> 10) & 2);
  if ((v10 & 0x1000) != 0)
  {
    v15 += 3;
  }

  if ((v10 & 0x2000) != 0)
  {
    v15 += 3;
  }

  if ((v10 & 0x4000) != 0)
  {
    v15 += 3;
  }

  if ((v10 & 0x8000) != 0)
  {
    v5 = (v15 + 3);
  }

  else
  {
    v5 = v15;
  }

LABEL_33:
  if ((v10 & 0xF0000) != 0)
  {
    v16 = (v5 + 3);
    if ((v10 & 0x10000) == 0)
    {
      v16 = v5;
    }

    if ((v10 & 0x20000) != 0)
    {
      v16 = (v16 + 3);
    }

    if ((v10 & 0x40000) != 0)
    {
      v16 = (v16 + ((640 - 9 * __clz(*(this + 42))) >> 6) + 1);
    }

    if ((v10 & 0x80000) != 0)
    {
      v5 = (v16 + 3);
    }

    else
    {
      v5 = v16;
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v5, this + 11);
}
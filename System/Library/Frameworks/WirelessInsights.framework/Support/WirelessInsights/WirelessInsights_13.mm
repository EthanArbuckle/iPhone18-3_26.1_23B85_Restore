uint64_t sub_100118BF8(uint64_t a1, unint64_t *a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v4 - **(a1 + 176)) >> 2) - 1 && *(v4 - 4) == a4)
  {
    *(a1 + 160) = 1;
    v5 = *a2;
    v6 = *(a1 + 184);
    if ((*a2 & 0x8000000000000000) != 0)
    {
      v8 = 0x8000000000000000;
      if (v5 == 0x8000000000000000 || 0x8000000000000000 / v6 * v6 > v5)
      {
        goto LABEL_8;
      }

      v7 = ~(-v5 / v6);
    }

    else
    {
      v7 = v5 / v6;
    }

    v8 = v7 * v6;
LABEL_8:
    *a2 = v8;
  }

  return 0;
}

uint64_t sub_100118C78(uint64_t a1, unsigned int *a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v4 - **(a1 + 176)) >> 2) - 1 && *(v4 - 4) == a4)
  {
    *(a1 + 160) = 1;
    v5 = *a2;
    v6 = *(a1 + 184);
    if ((v5 & 0x80000000) != 0)
    {
      v8 = 0x80000000;
      if (v5 == 0x80000000 || 0x80000000 / v6 * v6 > v5)
      {
        goto LABEL_8;
      }

      v7 = ~(-v5 / v6);
    }

    else
    {
      v7 = v5 / v6;
    }

    v8 = v7 * v6;
LABEL_8:
    *a2 = v8;
  }

  return 0;
}

uint64_t sub_100118CF8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 == v6)
  {
    return 1;
  }

  do
  {
    *v5 = *v5 / *(a1 + 184) * *(a1 + 184);
    ++v5;
  }

  while (v5 != v6);
  v7 = 0;
  *(a1 + 160) = 1;
  return v7;
}

uint64_t sub_100118D6C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 == v6)
  {
    return 1;
  }

  v7 = *(a1 + 184);
  do
  {
    *v5 = *v5 / v7 * v7;
    ++v5;
  }

  while (v5 != v6);
  v8 = 0;
  *(a1 + 160) = 1;
  return v8;
}

BOOL sub_100118DE0(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  if (!a2[1])
  {
    return 1;
  }

  v5 = 0;
  v6 = *a2;
  v7 = *a2;
  do
  {
    if ((*v7 & (1 << v5)) != 0)
    {
      v8 = *v7 | (1 << v5);
    }

    else
    {
      v8 = *v7 & ~(1 << v5);
    }

    *v7 = v8;
    v7 += v5 == 63;
    if (v5 == 63)
    {
      v5 = 0;
    }

    else
    {
      ++v5;
    }

    v9 = a2[1];
  }

  while (v7 != &v6[v9 >> 6] || v5 != (v9 & 0x3F));
  return !v9;
}

uint64_t sub_100118E7C(uint64_t a1, unint64_t **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    while (1)
    {
      v10 = *v5;
      v11 = *(a1 + 184);
      if ((*v5 & 0x8000000000000000) != 0)
      {
        v12 = 0x8000000000000000;
        if (v10 == 0x8000000000000000 || 0x8000000000000000 / v11 * v11 > v10)
        {
          goto LABEL_13;
        }

        v9 = ~(-v10 / v11);
      }

      else
      {
        v9 = v10 / v11;
      }

      v12 = v9 * v11;
LABEL_13:
      *v5++ = v12;
      if (v5 == v6)
      {
        v7 = 0;
        *(a1 + 160) = 1;
        return v7;
      }
    }
  }

  return 1;
}

uint64_t sub_100118F24(uint64_t a1, unsigned int **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return 1;
  }

  v7 = *(a1 + 184);
  do
  {
    v8 = *v5;
    if ((v8 & 0x80000000) == 0)
    {
      v9 = v8 / v7;
LABEL_7:
      v10 = v9 * v7;
      goto LABEL_10;
    }

    v10 = 0x80000000;
    if (v8 != 0x80000000 && 0x80000000 / v7 * v7 <= v8)
    {
      v9 = ~(-v8 / v7);
      goto LABEL_7;
    }

LABEL_10:
    *v5++ = v10;
  }

  while (v5 != v6);
  v12 = 0;
  *(a1 + 160) = 1;
  return v12;
}

uint64_t sub_100118FD0(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (*(this + 36))
    {
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback, a2);
  v9 = v8;
  v49 = HIDWORD(v8);
  *__p = *a2;
  v51 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *__p = v47;
  v51 = v48;
  BuiltinType = MetadataHelper::getBuiltinType();
  v46 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType();
  v12 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      __p[0] = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p) & 1) == 0)
          {
            if (!v49 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

LABEL_12:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }
        }

        else
        {
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, __p) & 1) == 0)
            {
              if (!v49 && (*(this + 36) & 1) != 0)
              {
                goto LABEL_47;
              }

              goto LABEL_12;
            }
          }

          else
          {
            __p[0] = *v26;
            *(this + 1) = v26 + 1;
          }
        }

        goto LABEL_77;
      }

      if (v9 != 2)
      {
        if (v9 == 5)
        {
          v43[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43) & 1) == 0)
          {
            if (!v49 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }

          __p[0] = v43[0];
        }

LABEL_77:
        v33 = sub_100119808(BuiltinType, __p[0], a3, a2, &v49, &v46);
LABEL_78:
        LOBYTE(BuiltinType) = v33;
        return BuiltinType & 1;
      }

      if (!v49 && (*(this + 36) & 1) != 0)
      {
        goto LABEL_47;
      }

LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parsing failed in metric");
      goto LABEL_113;
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_45;
      }

      v41[0] = 0;
      v23 = *(this + 1);
      if (v23 >= *(this + 2) || *v23 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v41[0] = *v23;
        *(this + 1) = v23 + 1;
      }

      __p[0] = 0;
      __p[1] = 0;
      v51 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        *v43 = *a2;
        v44 = *(a2 + 16);
        LOBYTE(BuiltinType) = sub_100118374(a3, __p);
      }

      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }

      v35 = __p[0];
      goto LABEL_103;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_45;
        }

        *v43 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v51 = *(a2 + 16);
        v28 = v49;
        v29 = a3;
        v30 = 1;
      }

      else
      {
        *v43 = 0;
        if (!sub_1000448B4(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v51 = *(a2 + 16);
        v28 = v49;
        v29 = a3;
        v30 = 0;
      }

LABEL_108:
      v33 = sub_100118684(v29, v27, __p, v28, v30);
      goto LABEL_78;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_45;
      }

      v43[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43))
      {
        goto LABEL_45;
      }

      v27 = v43[0];
      *__p = *a2;
      v51 = *(a2 + 16);
      v28 = v49;
      v29 = a3;
      v30 = 5;
      goto LABEL_108;
    }

    v41[0] = 0;
    if ((sub_1000448E0(this, v41) & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_100045794(__p, v41[0]);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
LABEL_101:
      v35 = __p[0];
      if (!__p[0])
      {
        goto LABEL_104;
      }

      __p[1] = __p[0];
LABEL_103:
      operator delete(v35);
LABEL_104:
      if ((String & 1) == 0)
      {
        goto LABEL_45;
      }

      return BuiltinType & 1;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001187A8(a3, __p[0], __p[1] - __p[0]);
LABEL_100:
    LOBYTE(BuiltinType) = v39;
    goto LABEL_101;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_45;
      }

      UnpackedType = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || (v25 = *v24, (v25 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &UnpackedType))
        {
          goto LABEL_45;
        }

        v25 = UnpackedType;
      }

      else
      {
        UnpackedType = *v24;
        *(this + 1) = v24 + 1;
      }

      *v41 = this;
      v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
      ++*(this + 14);
      *v40 = this;
      *__p = *a2;
      v51 = *(a2 + 16);
      *v43 = v47;
      v44 = v48;
      LOBYTE(BuiltinType) = sub_10011846C(a3, this);
      sub_10011A204(v40);
      v36 = *(this + 14);
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v38 < 0 == v37)
      {
        *(this + 14) = v38;
      }

      sub_100045760(v41);
      return BuiltinType & 1;
    }

    v41[0] = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || (v32 = *v31, (v32 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
      {
        goto LABEL_45;
      }

      v32 = v41[0];
    }

    else
    {
      v41[0] = *v31;
      *(this + 1) = v31 + 1;
    }

    sub_100045794(__p, v32);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
      goto LABEL_101;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001183F8(a3, __p);
    goto LABEL_100;
  }

  v40[0] = 0;
  v14 = *(this + 1);
  if (v14 >= *(this + 2) || *v14 < 0)
  {
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v40) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v40[0] = *v14;
    *(this + 1) = v14 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType();
  WireTypeForType = wis::reflect::getWireTypeForType();
  *v43 = this;
  v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40[0]);
  v43[2] = v16;
  __p[0] = 0;
  __p[1] = 0;
  v51 = 0;
  while (1)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if (v17 < 1)
    {
      break;
    }

    *v41 = 0;
    sub_10004490C(__p, v41);
    if (WireTypeForType > 1)
    {
      if (WireTypeForType == 5)
      {
        v41[0] = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v41);
        *(__p[1] - 1) = v41[0];
        goto LABEL_39;
      }

      if (WireTypeForType == 2)
      {
        goto LABEL_42;
      }
    }

    else if (WireTypeForType)
    {
      if (WireTypeForType == 1)
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p[1] - 1);
LABEL_39:
        if ((LittleEndian32Fallback & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = (__p[1] - 8);
      v20 = *(this + 1);
      if (v20 >= *(this + 2) || (v21 = *v20, (v21 & 0x8000000000000000) != 0))
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v19);
        goto LABEL_39;
      }

      *v19 = v21;
      *(this + 1) = v20 + 1;
    }
  }

  LOBYTE(BuiltinType) = sub_100119AC8(v12, __p, a3, a2, &v49, &UnpackedType);
LABEL_42:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
  if (v17 > 0)
  {
LABEL_45:
    if (!v49 && (*(this + 36) & 1) != 0)
    {
LABEL_47:
      LOBYTE(BuiltinType) = 1;
      return BuiltinType & 1;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
LABEL_113:
  }

  return BuiltinType & 1;
}

void sub_10011975C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100119808(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
{
  switch(a1)
  {
    case 1:
    case 15:
      wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
      v17 = *a5;
      v18 = *a6;
      v19 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v20 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v19, v20);
      v15 = *(a3 + 48);
      v16 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::encode();
      goto LABEL_7;
    case 2:
    case 16:
      wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
      v11 = *a5;
      v12 = *a6;
      v13 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v14 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
      v15 = *(a3 + 48);
      v16 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::encode();
LABEL_7:
      v21 = v16;
      goto LABEL_14;
    case 3:
    case 11:
    case 17:
    case 25:
      v31 = a2;
      goto LABEL_10;
    case 4:
    case 10:
    case 18:
    case 24:
      v29 = *a4;
      v30 = *(a4 + 16);
      v31 = a2;
      return sub_100118818(a3, &v31, &v29, *a5, *a6);
    case 5:
    case 19:
      v31 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
LABEL_10:
      v29 = *a4;
      v30 = *(a4 + 16);
      return sub_100118A18(a3, &v31, &v29, *a5, *a6);
    case 6:
    case 20:
      LODWORD(v31) = a2;
      goto LABEL_12;
    case 7:
    case 9:
    case 21:
    case 23:
      LODWORD(v31) = a2;
      v29 = *a4;
      v30 = *(a4 + 16);
      return sub_100118918(a3, &v31, &v29, *a5, *a6);
    case 8:
    case 22:
      LODWORD(v31) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
LABEL_12:
      v29 = *a4;
      v30 = *(a4 + 16);
      result = sub_100118B08(a3, &v31, &v29, *a5, *a6);
      break;
    case 12:
    case 26:
      v22 = a2 != 0;
      v23 = *a5;
      v24 = *a6;
      v25 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v26 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v25, v26);
      v15 = *(a3 + 48);
      v21 = sub_100047554(v24, v22);
LABEL_14:
      WireTypeForType = wis::reflect::getWireTypeForType();
      switch(WireTypeForType)
      {
        case 5:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v15, v21);
          break;
        case 1:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v15, v21);
          break;
        case 0:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v15, v21);
          break;
      }

      result = 1;
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  return result;
}

uint64_t sub_100119AC8(int a1, uint64_t **a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
{
  if (a1 <= 20)
  {
    if (a1 <= 17)
    {
      switch(a1)
      {
        case 15:
          sub_100044BD0(a2, __p);
          v24 = *a6;
          v25 = *(*(a3 + 176) + 8);
          if (*(a3 + 168) == ((v25 - **(a3 + 176)) >> 2) - 1 && *(v25 - 4) == *a5)
          {
            v26 = __p[0];
            if (__p[0] == __p[1])
            {
              goto LABEL_45;
            }
          }

          v27 = *(a3 + 48);
          v28 = wis::reflect::encodeTag();
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v27, v28);
          sub_1000481D0(*(a3 + 48), v24, __p);
          break;
        case 16:
          sub_100044E44(a2, __p);
          v36 = *a6;
          v37 = *(*(a3 + 176) + 8);
          if (*(a3 + 168) == ((v37 - **(a3 + 176)) >> 2) - 1 && *(v37 - 4) == *a5)
          {
            v26 = __p[0];
            if (__p[0] == __p[1])
            {
LABEL_45:
              if (v26)
              {
                __p[1] = v26;
                operator delete(v26);
              }

              return 1;
            }
          }

          v38 = *(a3 + 48);
          v39 = wis::reflect::encodeTag();
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v38, v39);
          sub_100049584(*(a3 + 48), v36, __p);
          break;
        case 17:
          sub_100045004(a2, v48);
          *__p = *a4;
          v50 = *(a4 + 16);
          v10 = *a6;
          v11 = sub_100118E7C(a3, v48, __p, *a5);
          if (v11 != 3)
          {
            if (!v11)
            {
              goto LABEL_56;
            }

            goto LABEL_57;
          }

          goto LABEL_58;
        default:
LABEL_66:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
      }

      v26 = __p[0];
      goto LABEL_45;
    }

    if (a1 != 18)
    {
      if (a1 == 19)
      {
        sub_10004513C(a2, v48);
        *__p = *a4;
        v50 = *(a4 + 16);
        v10 = *a6;
        v41 = sub_100118E7C(a3, v48, __p, *a5);
        if (v41 != 3)
        {
          if (!v41)
          {
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        goto LABEL_58;
      }

      sub_100044D0C(a2, v48);
      *__p = *a4;
      v50 = *(a4 + 16);
      v16 = *a6;
      v17 = sub_100118F24(a3, v48, __p, *a5);
      if (v17 == 3)
      {
        goto LABEL_58;
      }

      if (v17)
      {
        goto LABEL_57;
      }

LABEL_19:
      v18 = *(a3 + 48);
      v19 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v18, v19);
      sub_10004B5E8(*(a3 + 48), v16, v48);
      goto LABEL_57;
    }

    sub_100044B50(a2, v48);
    *__p = *a4;
    v50 = *(a4 + 16);
    v20 = *a6;
    v30 = sub_100118CF8(a3, v48, __p, *a5);
    if (v30 == 3)
    {
      goto LABEL_58;
    }

    if (v30)
    {
      goto LABEL_57;
    }

LABEL_25:
    v22 = *(a3 + 48);
    v23 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v22, v23);
    sub_100047808(*(a3 + 48), v20, v48);
    goto LABEL_57;
  }

  if (a1 <= 23)
  {
    if (a1 == 21)
    {
      sub_100044D0C(a2, v48);
      *__p = *a4;
      v50 = *(a4 + 16);
      v12 = *a6;
      v29 = sub_100118D6C(a3, v48, __p, *a5);
      if (v29 == 3)
      {
        goto LABEL_58;
      }

      if (v29)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (a1 == 22)
      {
        sub_100045278(a2, v48);
        *__p = *a4;
        v50 = *(a4 + 16);
        v16 = *a6;
        v40 = sub_100118F24(a3, v48, __p, *a5);
        if (v40 == 3)
        {
          goto LABEL_58;
        }

        if (v40)
        {
          goto LABEL_57;
        }

        goto LABEL_19;
      }

      sub_100044D0C(a2, v48);
      *__p = *a4;
      v50 = *(a4 + 16);
      v12 = *a6;
      v13 = sub_100118D6C(a3, v48, __p, *a5);
      if (v13 == 3)
      {
        goto LABEL_58;
      }

      if (v13)
      {
        goto LABEL_57;
      }
    }

    v14 = *(a3 + 48);
    v15 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v14, v15);
    sub_100048BBC(*(a3 + 48), v12, v48);
    goto LABEL_57;
  }

  if (a1 == 26)
  {
    sub_100044F80(a2, v48);
    *__p = *a4;
    v50 = *(a4 + 16);
    v31 = *a6;
    v32 = sub_100118DE0(a3, v48, __p, *a5);
    if (v32 == 3)
    {
      v35 = 0;
    }

    else
    {
      if (!v32)
      {
        v33 = *(a3 + 48);
        v34 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v34);
        sub_100049F70(*(a3 + 48), v31, v48);
      }

      v35 = 1;
    }

    v45 = v48[0];
    if (v48[0])
    {
      goto LABEL_61;
    }

    return v35;
  }

  if (a1 != 25)
  {
    if (a1 != 24)
    {
      goto LABEL_66;
    }

    sub_100044B50(a2, v48);
    *__p = *a4;
    v50 = *(a4 + 16);
    v20 = *a6;
    v21 = sub_100118CF8(a3, v48, __p, *a5);
    if (v21 == 3)
    {
      goto LABEL_58;
    }

    if (v21)
    {
      goto LABEL_57;
    }

    goto LABEL_25;
  }

  sub_100045004(a2, v48);
  *__p = *a4;
  v50 = *(a4 + 16);
  v10 = *a6;
  v42 = sub_100118E7C(a3, v48, __p, *a5);
  if (v42 != 3)
  {
    if (!v42)
    {
LABEL_56:
      v43 = *(a3 + 48);
      v44 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v43, v44);
      sub_10004AC20(*(a3 + 48), v10, v48);
    }

LABEL_57:
    v35 = 1;
    goto LABEL_59;
  }

LABEL_58:
  v35 = 0;
LABEL_59:
  v45 = v48[0];
  if (v48[0])
  {
    v48[1] = v48[0];
LABEL_61:
    operator delete(v45);
  }

  return v35;
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_10011A204(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_10011A240(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

void *sub_10011A27C(void *a1)
{
  *a1 = off_1002B2E98;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10011A2CC(void *a1)
{
  *a1 = off_1002B2E98;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10011A3CC(uint64_t a1, void *a2)
{
  *a2 = off_1002B2E98;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  result = sub_10000A964((a2 + 1), *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
  a2[4] = *(a1 + 32);
  return result;
}

void sub_10011A430(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_10011A448(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t sub_10011A48C(uint64_t a1, void *a2)
{
  v25 = 0uLL;
  v26 = 0;
  v3 = a2[1];
  if (!v3)
  {
    v3 = *(*a2 + 8);
  }

  v4 = *v3;
  v5 = v3[1] - *v3;
  v16[0] = 0;
  v16[1] = v4;
  v16[2] = v4 + v5;
  v17 = v5;
  v18 = 0;
  v19 = 0;
  v21 = xmmword_100240B70;
  v20 = v5;
  v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v23 = 0;
  v24 = 0;
  v6 = *(a1 + 32);
  sub_10011AED0(v11, (a2 + 2), &v25, a1 + 8);
  v15 = v6;
  v10[0] = 0;
  v10[1] = 0;
  v10[2] = 0xFFFFFFFFLL;
  if (sub_10011A698(v16, v10, v11))
  {
    v7 = v14[64];
    sub_1000447B8(v14);
    if (v13)
    {
      sub_100008350(v13);
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v12);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v11);
    wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v16);
    if (v7)
    {
      sub_100116804(a2, &v25);
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1000447B8(v14);
    if (v13)
    {
      sub_100008350(v13);
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v12);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v11);
    wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v16);
  }

  v8 = 0;
LABEL_12:
  if (v25.n128_u64[0])
  {
    v25.n128_u64[1] = v25.n128_u64[0];
    operator delete(v25.n128_u64[0]);
  }

  return v8;
}

void sub_10011A5F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011A60C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100044768(va);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream((v5 - 136));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10011A5C4);
  }

  JUMPOUT(0x10011A5F4);
}

uint64_t sub_10011A64C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011A698(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, void *a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (*(this + 36))
    {
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback, a2);
  v9 = v8;
  v51 = HIDWORD(v8);
  *__p = *a2;
  v48 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *__p = v49;
  v48 = v50;
  BuiltinType = MetadataHelper::getBuiltinType();
  v46 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType();
  v12 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      __p[0] = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p) & 1) == 0)
          {
            if (!v51 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

LABEL_12:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }
        }

        else
        {
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, __p) & 1) == 0)
            {
              if (!v51 && (*(this + 36) & 1) != 0)
              {
                goto LABEL_47;
              }

              goto LABEL_12;
            }
          }

          else
          {
            __p[0] = *v26;
            *(this + 1) = v26 + 1;
          }
        }

        goto LABEL_77;
      }

      if (v9 != 2)
      {
        if (v9 == 5)
        {
          v43[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43) & 1) == 0)
          {
            if (!v51 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }

          __p[0] = v43[0];
        }

LABEL_77:
        v33 = sub_10011AF58(BuiltinType, __p[0], a3, a2, &v51, &v46);
LABEL_78:
        LOBYTE(BuiltinType) = v33;
        return BuiltinType & 1;
      }

      if (!v51 && (*(this + 36) & 1) != 0)
      {
        goto LABEL_47;
      }

LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parsing failed in metric");
      goto LABEL_113;
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_45;
      }

      v41[0] = 0;
      v23 = *(this + 1);
      if (v23 >= *(this + 2) || *v23 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v41[0] = *v23;
        *(this + 1) = v23 + 1;
      }

      __p[0] = 0;
      __p[1] = 0;
      v48 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        *v43 = *a2;
        v44 = *(a2 + 16);
        LOBYTE(BuiltinType) = sub_100118374(a3, __p);
      }

      if ((SHIBYTE(v48) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }

      v35 = __p[0];
      goto LABEL_103;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_45;
        }

        *v43 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v48 = *(a2 + 16);
        v28 = v51;
        v29 = a3;
        v30 = 1;
      }

      else
      {
        *v43 = 0;
        if (!sub_1000448B4(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v48 = *(a2 + 16);
        v28 = v51;
        v29 = a3;
        v30 = 0;
      }

LABEL_108:
      v33 = sub_100118684(v29, v27, __p, v28, v30);
      goto LABEL_78;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_45;
      }

      v43[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43))
      {
        goto LABEL_45;
      }

      v27 = v43[0];
      *__p = *a2;
      v48 = *(a2 + 16);
      v28 = v51;
      v29 = a3;
      v30 = 5;
      goto LABEL_108;
    }

    v41[0] = 0;
    if ((sub_1000448E0(this, v41) & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_100045794(__p, v41[0]);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
LABEL_101:
      v35 = __p[0];
      if (!__p[0])
      {
        goto LABEL_104;
      }

      __p[1] = __p[0];
LABEL_103:
      operator delete(v35);
LABEL_104:
      if ((String & 1) == 0)
      {
        goto LABEL_45;
      }

      return BuiltinType & 1;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001187A8(a3, __p[0], __p[1] - __p[0]);
LABEL_100:
    LOBYTE(BuiltinType) = v39;
    goto LABEL_101;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_45;
      }

      UnpackedType = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || (v25 = *v24, (v25 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &UnpackedType))
        {
          goto LABEL_45;
        }

        v25 = UnpackedType;
      }

      else
      {
        UnpackedType = *v24;
        *(this + 1) = v24 + 1;
      }

      *v41 = this;
      v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
      ++*(this + 14);
      *v40 = this;
      *__p = *a2;
      v48 = *(a2 + 16);
      *v43 = v49;
      v44 = v50;
      LOBYTE(BuiltinType) = sub_10011B910(a3, this, __p, v51, v43);
      sub_10011DCD0(v40);
      v36 = *(this + 14);
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v38 < 0 == v37)
      {
        *(this + 14) = v38;
      }

      sub_100045760(v41);
      return BuiltinType & 1;
    }

    v41[0] = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || (v32 = *v31, (v32 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
      {
        goto LABEL_45;
      }

      v32 = v41[0];
    }

    else
    {
      v41[0] = *v31;
      *(this + 1) = v31 + 1;
    }

    sub_100045794(__p, v32);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
      goto LABEL_101;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001183F8(a3, __p);
    goto LABEL_100;
  }

  v40[0] = 0;
  v14 = *(this + 1);
  if (v14 >= *(this + 2) || *v14 < 0)
  {
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v40) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v40[0] = *v14;
    *(this + 1) = v14 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType();
  WireTypeForType = wis::reflect::getWireTypeForType();
  *v43 = this;
  v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40[0]);
  v43[2] = v16;
  __p[0] = 0;
  __p[1] = 0;
  v48 = 0;
  while (1)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if (v17 < 1)
    {
      break;
    }

    *v41 = 0;
    sub_10004490C(__p, v41);
    if (WireTypeForType > 1)
    {
      if (WireTypeForType == 5)
      {
        v41[0] = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v41);
        *(__p[1] - 1) = v41[0];
        goto LABEL_39;
      }

      if (WireTypeForType == 2)
      {
        goto LABEL_42;
      }
    }

    else if (WireTypeForType)
    {
      if (WireTypeForType == 1)
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p[1] - 1);
LABEL_39:
        if ((LittleEndian32Fallback & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = (__p[1] - 8);
      v20 = *(this + 1);
      if (v20 >= *(this + 2) || (v21 = *v20, (v21 & 0x8000000000000000) != 0))
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v19);
        goto LABEL_39;
      }

      *v19 = v21;
      *(this + 1) = v20 + 1;
    }
  }

  LOBYTE(BuiltinType) = sub_10011B1F0(v12, __p, a3, a2, &v51, &UnpackedType);
LABEL_42:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
  if (v17 > 0)
  {
LABEL_45:
    if (!v51 && (*(this + 36) & 1) != 0)
    {
LABEL_47:
      LOBYTE(BuiltinType) = 1;
      return BuiltinType & 1;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
LABEL_113:
  }

  return BuiltinType & 1;
}

void sub_10011AE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10011AED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (sub_10000BA58(a1, a3) + 2);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v6, a1);
  *(a1 + 48) = v6;
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a4;
  return a1;
}

void sub_10011AF34(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v2);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011AF58(int a1, uint64_t a2, void *a3, __int128 *a4, int *a5, int *a6)
{
  switch(a1)
  {
    case 1:
    case 15:
      wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
      v26 = v13;
      v24 = *a4;
      v25 = *(a4 + 2);
      v14 = *a6;
      return sub_10011BC2C(a3, &v26, &v24, *a5);
    case 2:
    case 16:
      wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
      LODWORD(v26) = v11;
      v24 = *a4;
      v25 = *(a4 + 2);
      v12 = *a6;
      return sub_10011BE30(a3, &v26, &v24, *a5);
    case 3:
    case 11:
    case 17:
    case 25:
      v26 = a2;
      goto LABEL_9;
    case 4:
    case 10:
    case 18:
    case 24:
      v24 = *a4;
      v25 = *(a4 + 2);
      v26 = a2;
      return sub_10011BB28(a3, &v26, &v24, *a5, *a6);
    case 5:
    case 19:
      v26 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
LABEL_9:
      v24 = *a4;
      v25 = *(a4 + 2);
      return sub_10011BF30(a3, &v26, &v24, *a5, *a6);
    case 6:
    case 20:
      LODWORD(v26) = a2;
      goto LABEL_11;
    case 7:
    case 9:
    case 21:
    case 23:
      LODWORD(v26) = a2;
      v24 = *a4;
      v25 = *(a4 + 2);
      return sub_10011BD2C(a3, &v26, &v24, *a5, *a6);
    case 8:
    case 22:
      LODWORD(v26) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
LABEL_11:
      v24 = *a4;
      v25 = *(a4 + 2);
      result = sub_10011C034(a3, &v26, &v24, *a5, *a6);
      break;
    case 12:
    case 26:
      v15 = a2 != 0;
      v16 = *a5;
      v17 = *a6;
      v18 = a3[6];
      wis::reflect::getWireTypeForType();
      v19 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v18, v19);
      v20 = a3[6];
      v21 = sub_100047554(v17, v15);
      WireTypeForType = wis::reflect::getWireTypeForType();
      switch(WireTypeForType)
      {
        case 5:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v20, v21);
          break;
        case 1:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v20, v21);
          break;
        case 0:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v20, v21);
          break;
      }

      result = 1;
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  return result;
}

uint64_t sub_10011B1F0(int a1, uint64_t **a2, uint64_t a3, __int128 *a4, int *a5, int *a6)
{
  if (a1 <= 20)
  {
    if (a1 <= 17)
    {
      switch(a1)
      {
        case 15:
          sub_100044BD0(a2, __p);
          v48 = *a4;
          v49 = *(a4 + 2);
          v24 = *a6;
          v25 = sub_10011C61C(a3, __p, &v48, *a5);
          if (v25 != 3)
          {
            if (!v25)
            {
              v26 = *(a3 + 48);
              v27 = wis::reflect::encodeTag();
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v26, v27);
              sub_1000481D0(*(a3 + 48), v24, __p);
            }

            goto LABEL_51;
          }

          goto LABEL_52;
        case 16:
          sub_100044E44(a2, __p);
          v48 = *a4;
          v49 = *(a4 + 2);
          v35 = *a6;
          v36 = sub_10011C7EC(a3, __p, &v48, *a5);
          if (v36 != 3)
          {
            if (!v36)
            {
              v37 = *(a3 + 48);
              v38 = wis::reflect::encodeTag();
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v37, v38);
              sub_100049584(*(a3 + 48), v35, __p);
            }

            goto LABEL_51;
          }

          goto LABEL_52;
        case 17:
          sub_100045004(a2, __p);
          v48 = *a4;
          v49 = *(a4 + 2);
          v10 = *a6;
          v11 = sub_10011C8D4(a3, __p, &v48, *a5);
          if (v11 != 3)
          {
            if (!v11)
            {
              goto LABEL_50;
            }

            goto LABEL_51;
          }

          goto LABEL_52;
      }

LABEL_60:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
    }

    if (a1 != 18)
    {
      if (a1 == 19)
      {
        sub_10004513C(a2, __p);
        v48 = *a4;
        v49 = *(a4 + 2);
        v10 = *a6;
        v40 = sub_10011C8D4(a3, __p, &v48, *a5);
        if (v40 != 3)
        {
          if (!v40)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        goto LABEL_52;
      }

      sub_100044D0C(a2, __p);
      v48 = *a4;
      v49 = *(a4 + 2);
      v16 = *a6;
      v17 = sub_10011C9BC(a3, __p, &v48, *a5);
      if (v17 == 3)
      {
        goto LABEL_52;
      }

      if (v17)
      {
        goto LABEL_51;
      }

LABEL_19:
      v18 = *(a3 + 48);
      v19 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v18, v19);
      sub_10004B5E8(*(a3 + 48), v16, __p);
      goto LABEL_51;
    }

    sub_100044B50(a2, __p);
    v48 = *a4;
    v49 = *(a4 + 2);
    v20 = *a6;
    v29 = sub_10011C534(a3, __p, &v48, *a5);
    if (v29 == 3)
    {
      goto LABEL_52;
    }

    if (v29)
    {
      goto LABEL_51;
    }

LABEL_25:
    v22 = *(a3 + 48);
    v23 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v22, v23);
    sub_100047808(*(a3 + 48), v20, __p);
    goto LABEL_51;
  }

  if (a1 <= 23)
  {
    if (a1 == 21)
    {
      sub_100044D0C(a2, __p);
      v48 = *a4;
      v49 = *(a4 + 2);
      v12 = *a6;
      v28 = sub_10011C704(a3, __p, &v48, *a5);
      if (v28 == 3)
      {
        goto LABEL_52;
      }

      if (v28)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (a1 == 22)
      {
        sub_100045278(a2, __p);
        v48 = *a4;
        v49 = *(a4 + 2);
        v16 = *a6;
        v39 = sub_10011C9BC(a3, __p, &v48, *a5);
        if (v39 == 3)
        {
          goto LABEL_52;
        }

        if (v39)
        {
          goto LABEL_51;
        }

        goto LABEL_19;
      }

      sub_100044D0C(a2, __p);
      v48 = *a4;
      v49 = *(a4 + 2);
      v12 = *a6;
      v13 = sub_10011C704(a3, __p, &v48, *a5);
      if (v13 == 3)
      {
        goto LABEL_52;
      }

      if (v13)
      {
        goto LABEL_51;
      }
    }

    v14 = *(a3 + 48);
    v15 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v14, v15);
    sub_100048BBC(*(a3 + 48), v12, __p);
    goto LABEL_51;
  }

  if (a1 == 26)
  {
    sub_100044F80(a2, __p);
    v48 = *a4;
    v49 = *(a4 + 2);
    v30 = *a6;
    v31 = sub_100118DE0(a3, __p, &v48, *a5);
    if (v31 == 3)
    {
      v34 = 0;
    }

    else
    {
      if (!v31)
      {
        v32 = *(a3 + 48);
        v33 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v32, v33);
        sub_100049F70(*(a3 + 48), v30, __p);
      }

      v34 = 1;
    }

    v44 = __p[0];
    if (__p[0])
    {
      goto LABEL_55;
    }

    return v34;
  }

  if (a1 != 25)
  {
    if (a1 != 24)
    {
      goto LABEL_60;
    }

    sub_100044B50(a2, __p);
    v48 = *a4;
    v49 = *(a4 + 2);
    v20 = *a6;
    v21 = sub_10011C534(a3, __p, &v48, *a5);
    if (v21 == 3)
    {
      goto LABEL_52;
    }

    if (v21)
    {
      goto LABEL_51;
    }

    goto LABEL_25;
  }

  sub_100045004(a2, __p);
  v48 = *a4;
  v49 = *(a4 + 2);
  v10 = *a6;
  v41 = sub_10011C8D4(a3, __p, &v48, *a5);
  if (v41 != 3)
  {
    if (!v41)
    {
LABEL_50:
      v42 = *(a3 + 48);
      v43 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v42, v43);
      sub_10004AC20(*(a3 + 48), v10, __p);
    }

LABEL_51:
    v34 = 1;
    goto LABEL_53;
  }

LABEL_52:
  v34 = 0;
LABEL_53:
  v44 = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
LABEL_55:
    operator delete(v44);
  }

  return v34;
}

BOOL sub_10011B910(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, int a4, __int128 *a5)
{
  v7 = *(a1 + 168);
  v8 = **(a1 + 176);
  if (v7 < (*(*(a1 + 176) + 8) - v8) >> 2 && *(v8 + 4 * v7) == a4)
  {
    *(a1 + 168) = v7 + 1;
    __p = 0;
    v27 = 0;
    v28 = 0;
    sub_10000BA58(v25, &__p);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v24, v25);
    v10 = *(a1 + 48);
    *(a1 + 48) = v24;
    while (1)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
      v12 = v11 < 1;
      if (v11 < 1)
      {
        break;
      }

      v22 = *a5;
      v23 = *(a5 + 2);
      if ((sub_10011CAA4(this, &v22, a1) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    --*(a1 + 168);
    *(a1 + 48) = v10;
LABEL_12:
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v24);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v25);
    if (v11 <= 0)
    {
      v18 = *(a1 + 48);
      v19 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v18, v19);
      v20 = *(a1 + 48);
      v21 = __p;
      LODWORD(v18) = v27 - __p;
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v20, v27 - __p);
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v20, v21, v18);
    }

    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v24[0] = 0;
    LODWORD(__p) = 0;
    wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(this, v24, &__p);
    LODWORD(__p) = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if ((__p & 0x80000000) == 0)
    {
      v13 = *(a1 + 48);
      v14 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
      v15 = *(a1 + 48);
      v16 = v24[0];
      LODWORD(v13) = __p;
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v15, __p);
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v15, v16, v13);
    }

    return 1;
  }

  return v12;
}

void sub_10011BAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19)
{
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10011BB28(void *a1, unint64_t *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(a1[22] + 8);
  if (a1[21] != ((v8 - *a1[22]) >> 2) - 1 || *(v8 - 4) != a4)
  {
    goto LABEL_5;
  }

  v9 = sub_10011C138(a1, a2);
  if (v9 != 3)
  {
    if (v9)
    {
      return 1;
    }

LABEL_5:
    v10 = a1[6];
    wis::reflect::getWireTypeForType();
    v11 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v10, v11);
    v12 = a1[6];
    v13 = sub_100047378(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v12, v13);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v12, v13);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v12, v13);
        break;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_10011BC2C(void *a1, double *a2, uint64_t a3, int a4)
{
  v6 = *(a1[22] + 8);
  if (a1[21] != ((v6 - *a1[22]) >> 2) - 1 || *(v6 - 4) != a4)
  {
    goto LABEL_5;
  }

  v7 = sub_10011C1B0(a1, a2);
  if (v7 != 3)
  {
    if (v7)
    {
      return 1;
    }

LABEL_5:
    v8 = a1[6];
    wis::reflect::getWireTypeForType();
    v9 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v8, v9);
    v10 = a1[6];
    v11 = *a2;
    v12 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::encode();
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v10, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v10, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v10, v12);
        break;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_10011BD2C(void *a1, unsigned int *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(a1[22] + 8);
  if (a1[21] != ((v8 - *a1[22]) >> 2) - 1 || *(v8 - 4) != a4)
  {
    goto LABEL_5;
  }

  v9 = sub_10011C254(a1, a2);
  if (v9 != 3)
  {
    if (v9)
    {
      return 1;
    }

LABEL_5:
    v10 = a1[6];
    wis::reflect::getWireTypeForType();
    v11 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v10, v11);
    v12 = a1[6];
    v13 = sub_100047468(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v12, v13);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v12, v13);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v12, v13);
        break;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_10011BE30(void *a1, float *a2, uint64_t a3, int a4)
{
  v6 = *(a1[22] + 8);
  if (a1[21] != ((v6 - *a1[22]) >> 2) - 1 || *(v6 - 4) != a4)
  {
    goto LABEL_5;
  }

  v7 = sub_10011C2CC(a1, a2);
  if (v7 != 3)
  {
    if (v7)
    {
      return 1;
    }

LABEL_5:
    v8 = a1[6];
    wis::reflect::getWireTypeForType();
    v9 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v8, v9);
    v10 = a1[6];
    v11 = *a2;
    v12 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::encode();
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v10, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v10, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v10, v12);
        break;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_10011BF30(void *a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(a1[22] + 8);
  if (a1[21] != ((v8 - *a1[22]) >> 2) - 1 || *(v8 - 4) != a4)
  {
    goto LABEL_5;
  }

  v9 = sub_10011C37C(a1, a2);
  if (v9 != 3)
  {
    if (v9)
    {
      return 1;
    }

LABEL_5:
    v10 = a1[6];
    wis::reflect::getWireTypeForType();
    v11 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v10, v11);
    v12 = a1[6];
    v13 = sub_10004762C(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v12, v13);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v12, v13);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v12, v13);
        break;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_10011C034(void *a1, unsigned int *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(a1[22] + 8);
  if (a1[21] != ((v8 - *a1[22]) >> 2) - 1 || *(v8 - 4) != a4)
  {
    goto LABEL_5;
  }

  v9 = sub_10011C458(a1, a2);
  if (v9 != 3)
  {
    if (v9)
    {
      return 1;
    }

LABEL_5:
    v10 = a1[6];
    wis::reflect::getWireTypeForType();
    v11 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v10, v11);
    v12 = a1[6];
    v13 = sub_10004771C(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v12, v13);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v12, v13);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v12, v13);
        break;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_10011C138(uint64_t a1, unint64_t *a2)
{
  *(a1 + 160) = 1;
  v3 = *a2;
  v4 = *a2;
  v5 = *(a1 + 184);
  if (*a2)
  {
    v6 = v5 > 0x13;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = vcvtpd_u64_f64(log10(v3));
    v8 = v7 >= v5;
    v9 = v7 - v5;
    if (v9 != 0 && v8)
    {
      v4 = __exp10(v9);
    }

    v4 *= v3 / v4;
  }

  *a2 = v4;
  return 0;
}

uint64_t sub_10011C1B0(uint64_t a1, double *a2)
{
  *(a1 + 160) = 1;
  v3 = *a2;
  v4 = *(a1 + 184);
  if (*a2 != 0.0 && v4 <= 0xF)
  {
    if (v3 <= 0.0)
    {
      v6 = -nextafter(-v3, 1.79769313e308);
    }

    else
    {
      v6 = nextafter(v3, 1.79769313e308);
    }

    v7 = log10(fabs(v6));
    v8 = __exp10((vcvtpd_s64_f64(v7) - v4));
    v3 = v6 - fmod(v6, v8);
  }

  *a2 = v3;
  return 0;
}

uint64_t sub_10011C254(uint64_t a1, unsigned int *a2)
{
  *(a1 + 160) = 1;
  v3 = *a2;
  v4 = *a2;
  v5 = *(a1 + 184);
  if (*a2)
  {
    v6 = v5 > 9;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = vcvtpd_u64_f64(log10(v3));
    v8 = v7 >= v5;
    v9 = v7 - v5;
    if (v9 != 0 && v8)
    {
      v4 = __exp10(v9);
    }

    v4 *= v3 / v4;
  }

  *a2 = v4;
  return 0;
}

uint64_t sub_10011C2CC(uint64_t a1, float *a2)
{
  *(a1 + 160) = 1;
  v3 = *a2;
  v4 = *(a1 + 184);
  if (*a2 != 0.0 && v4 <= 6)
  {
    if (v3 <= 0.0)
    {
      v6 = -nextafterf(-v3, 3.4028e38);
    }

    else
    {
      v6 = nextafterf(v3, 3.4028e38);
    }

    v7 = log10f(fabsf(v6));
    v8 = __exp10((vcvtps_s32_f32(v7) - v4));
    v3 = v6 - fmod(v6, v8);
  }

  *a2 = v3;
  return 0;
}

uint64_t sub_10011C37C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 160) = 1;
  v3 = *a2;
  v4 = *a2;
  v5 = *(a1 + 184);
  if (*a2)
  {
    v6 = v5 > 0x12;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (v3 < 1)
    {
      v4 = 0x8000000000000000;
      if (v3 != 0x8000000000000000)
      {
        v10 = vcvtpd_u64_f64(log10(-v3));
        v11 = -v3;
        v8 = v10 >= v5;
        v12 = v10 - v5;
        if (v12 != 0 && v8)
        {
          v11 = __exp10(v12);
        }

        if (0x8000000000000000 / v11 * v11 <= v3)
        {
          v4 = v11 * ~(-v3 / v11);
        }
      }
    }

    else
    {
      v7 = vcvtpd_u64_f64(log10(v3));
      v8 = v7 >= v5;
      v9 = v7 - v5;
      if (v9 != 0 && v8)
      {
        v4 = __exp10(v9);
      }

      v4 *= v3 / v4;
    }
  }

  *a2 = v4;
  return 0;
}

uint64_t sub_10011C458(uint64_t a1, unsigned int *a2)
{
  *(a1 + 160) = 1;
  v3 = *a2;
  v4 = *a2;
  v5 = *(a1 + 184);
  if (*a2)
  {
    v6 = v5 > 9;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (v3 < 1)
    {
      v4 = 0x80000000;
      if (v3 != 0x80000000)
      {
        v10 = vcvtpd_u64_f64(log10(-v3));
        v11 = -v3;
        v8 = v10 >= v5;
        v12 = v10 - v5;
        if (v12 != 0 && v8)
        {
          v11 = __exp10(v12);
        }

        if (0x80000000 / v11 * v11 <= v3)
        {
          v4 = v11 * ~(-v3 / v11);
        }
      }
    }

    else
    {
      v7 = vcvtpd_u64_f64(log10(v3));
      v8 = v7 >= v5;
      v9 = v7 - v5;
      if (v9 != 0 && v8)
      {
        v4 = __exp10(v9);
      }

      v4 *= v3 / v4;
    }
  }

  *a2 = v4;
  return 0;
}

uint64_t sub_10011C534(uint64_t a1, unint64_t **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == a2[1])
  {
    return 1;
  }

  do
  {
    v11 = *v6;
    result = sub_10011C138(a1, &v11);
    if (result)
    {
      if (result == 1)
      {
        v9 = a2[1];
        v10 = v9 - (v6 + 1);
        if (v9 != v6 + 1)
        {
          memmove(v6, v6 + 1, v9 - (v6 + 1));
        }

        a2[1] = (v6 + v10);
      }

      else if (result == 3)
      {
        return result;
      }
    }

    else
    {
      *v6++ = v11;
    }
  }

  while (v6 != a2[1]);
  return *a2 == v6;
}

uint64_t sub_10011C61C(uint64_t a1, char **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == a2[1])
  {
    return 1;
  }

  do
  {
    v11 = *v6;
    result = sub_10011C1B0(a1, &v11);
    if (result)
    {
      if (result == 1)
      {
        v9 = a2[1];
        v10 = v9 - (v6 + 8);
        if (v9 != v6 + 8)
        {
          memmove(v6, v6 + 8, v9 - (v6 + 8));
        }

        a2[1] = &v6[v10];
      }

      else if (result == 3)
      {
        return result;
      }
    }

    else
    {
      *v6 = v11;
      v6 += 8;
    }
  }

  while (v6 != a2[1]);
  return *a2 == v6;
}

uint64_t sub_10011C704(uint64_t a1, unsigned int **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == a2[1])
  {
    return 1;
  }

  do
  {
    v11 = *v6;
    result = sub_10011C254(a1, &v11);
    if (result)
    {
      if (result == 1)
      {
        v9 = a2[1];
        v10 = v9 - (v6 + 1);
        if (v9 != v6 + 1)
        {
          memmove(v6, v6 + 1, v9 - (v6 + 1));
        }

        a2[1] = (v6 + v10);
      }

      else if (result == 3)
      {
        return result;
      }
    }

    else
    {
      *v6++ = v11;
    }
  }

  while (v6 != a2[1]);
  return *a2 == v6;
}

uint64_t sub_10011C7EC(uint64_t a1, char **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == a2[1])
  {
    return 1;
  }

  do
  {
    v11 = *v6;
    result = sub_10011C2CC(a1, &v11);
    if (result)
    {
      if (result == 1)
      {
        v9 = a2[1];
        v10 = v9 - (v6 + 4);
        if (v9 != v6 + 4)
        {
          memmove(v6, v6 + 4, v9 - (v6 + 4));
        }

        a2[1] = &v6[v10];
      }

      else if (result == 3)
      {
        return result;
      }
    }

    else
    {
      *v6 = v11;
      v6 += 4;
    }
  }

  while (v6 != a2[1]);
  return *a2 == v6;
}

uint64_t sub_10011C8D4(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == a2[1])
  {
    return 1;
  }

  do
  {
    v11 = *v6;
    result = sub_10011C37C(a1, &v11);
    if (result)
    {
      if (result == 1)
      {
        v9 = a2[1];
        v10 = v9 - (v6 + 1);
        if (v9 != v6 + 1)
        {
          memmove(v6, v6 + 1, v9 - (v6 + 1));
        }

        a2[1] = (v6 + v10);
      }

      else if (result == 3)
      {
        return result;
      }
    }

    else
    {
      *v6++ = v11;
    }
  }

  while (v6 != a2[1]);
  return *a2 == v6;
}

uint64_t sub_10011C9BC(uint64_t a1, unsigned int **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == a2[1])
  {
    return 1;
  }

  do
  {
    v11 = *v6;
    result = sub_10011C458(a1, &v11);
    if (result)
    {
      if (result == 1)
      {
        v9 = a2[1];
        v10 = v9 - (v6 + 1);
        if (v9 != v6 + 1)
        {
          memmove(v6, v6 + 1, v9 - (v6 + 1));
        }

        a2[1] = (v6 + v10);
      }

      else if (result == 3)
      {
        return result;
      }
    }

    else
    {
      *v6++ = v11;
    }
  }

  while (v6 != a2[1]);
  return *a2 == v6;
}

uint64_t sub_10011CAA4(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, void *a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (*(this + 36))
    {
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback, a2);
  v9 = v8;
  v49 = HIDWORD(v8);
  *__p = *a2;
  v51 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *__p = v47;
  v51 = v48;
  BuiltinType = MetadataHelper::getBuiltinType();
  v46 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType();
  v12 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      __p[0] = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p) & 1) == 0)
          {
            if (!v49 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

LABEL_12:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }
        }

        else
        {
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, __p) & 1) == 0)
            {
              if (!v49 && (*(this + 36) & 1) != 0)
              {
                goto LABEL_47;
              }

              goto LABEL_12;
            }
          }

          else
          {
            __p[0] = *v26;
            *(this + 1) = v26 + 1;
          }
        }

        goto LABEL_77;
      }

      if (v9 != 2)
      {
        if (v9 == 5)
        {
          v43[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43) & 1) == 0)
          {
            if (!v49 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }

          __p[0] = v43[0];
        }

LABEL_77:
        v33 = sub_10011D2DC(BuiltinType, __p[0], a3, a2, &v49, &v46);
LABEL_78:
        LOBYTE(BuiltinType) = v33;
        return BuiltinType & 1;
      }

      if (!v49 && (*(this + 36) & 1) != 0)
      {
        goto LABEL_47;
      }

LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parsing failed in metric");
      goto LABEL_113;
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_45;
      }

      v41[0] = 0;
      v23 = *(this + 1);
      if (v23 >= *(this + 2) || *v23 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v41[0] = *v23;
        *(this + 1) = v23 + 1;
      }

      __p[0] = 0;
      __p[1] = 0;
      v51 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        *v43 = *a2;
        v44 = *(a2 + 16);
        LOBYTE(BuiltinType) = sub_100118374(a3, __p);
      }

      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }

      v35 = __p[0];
      goto LABEL_103;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_45;
        }

        *v43 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v51 = *(a2 + 16);
        v28 = v49;
        v29 = a3;
        v30 = 1;
      }

      else
      {
        *v43 = 0;
        if (!sub_1000448B4(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v51 = *(a2 + 16);
        v28 = v49;
        v29 = a3;
        v30 = 0;
      }

LABEL_108:
      v33 = sub_100118684(v29, v27, __p, v28, v30);
      goto LABEL_78;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_45;
      }

      v43[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43))
      {
        goto LABEL_45;
      }

      v27 = v43[0];
      *__p = *a2;
      v51 = *(a2 + 16);
      v28 = v49;
      v29 = a3;
      v30 = 5;
      goto LABEL_108;
    }

    v41[0] = 0;
    if ((sub_1000448E0(this, v41) & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_100045794(__p, v41[0]);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
LABEL_101:
      v35 = __p[0];
      if (!__p[0])
      {
        goto LABEL_104;
      }

      __p[1] = __p[0];
LABEL_103:
      operator delete(v35);
LABEL_104:
      if ((String & 1) == 0)
      {
        goto LABEL_45;
      }

      return BuiltinType & 1;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001187A8(a3, __p[0], __p[1] - __p[0]);
LABEL_100:
    LOBYTE(BuiltinType) = v39;
    goto LABEL_101;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_45;
      }

      UnpackedType = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || (v25 = *v24, (v25 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &UnpackedType))
        {
          goto LABEL_45;
        }

        v25 = UnpackedType;
      }

      else
      {
        UnpackedType = *v24;
        *(this + 1) = v24 + 1;
      }

      *v41 = this;
      v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
      ++*(this + 14);
      *v40 = this;
      *__p = *a2;
      v51 = *(a2 + 16);
      *v43 = v47;
      v44 = v48;
      LOBYTE(BuiltinType) = sub_10011B910(a3, this);
      sub_10011DC94(v40);
      v36 = *(this + 14);
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v38 < 0 == v37)
      {
        *(this + 14) = v38;
      }

      sub_100045760(v41);
      return BuiltinType & 1;
    }

    v41[0] = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || (v32 = *v31, (v32 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
      {
        goto LABEL_45;
      }

      v32 = v41[0];
    }

    else
    {
      v41[0] = *v31;
      *(this + 1) = v31 + 1;
    }

    sub_100045794(__p, v32);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
      goto LABEL_101;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001183F8(a3, __p);
    goto LABEL_100;
  }

  v40[0] = 0;
  v14 = *(this + 1);
  if (v14 >= *(this + 2) || *v14 < 0)
  {
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v40) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v40[0] = *v14;
    *(this + 1) = v14 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType();
  WireTypeForType = wis::reflect::getWireTypeForType();
  *v43 = this;
  v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40[0]);
  v43[2] = v16;
  __p[0] = 0;
  __p[1] = 0;
  v51 = 0;
  while (1)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if (v17 < 1)
    {
      break;
    }

    *v41 = 0;
    sub_10004490C(__p, v41);
    if (WireTypeForType > 1)
    {
      if (WireTypeForType == 5)
      {
        v41[0] = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v41);
        *(__p[1] - 1) = v41[0];
        goto LABEL_39;
      }

      if (WireTypeForType == 2)
      {
        goto LABEL_42;
      }
    }

    else if (WireTypeForType)
    {
      if (WireTypeForType == 1)
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p[1] - 1);
LABEL_39:
        if ((LittleEndian32Fallback & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = (__p[1] - 8);
      v20 = *(this + 1);
      if (v20 >= *(this + 2) || (v21 = *v20, (v21 & 0x8000000000000000) != 0))
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v19);
        goto LABEL_39;
      }

      *v19 = v21;
      *(this + 1) = v20 + 1;
    }
  }

  LOBYTE(BuiltinType) = sub_10011D574(v12, __p, a3, a2, &v49, &UnpackedType);
LABEL_42:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
  if (v17 > 0)
  {
LABEL_45:
    if (!v49 && (*(this + 36) & 1) != 0)
    {
LABEL_47:
      LOBYTE(BuiltinType) = 1;
      return BuiltinType & 1;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
LABEL_113:
  }

  return BuiltinType & 1;
}

void sub_10011D230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10011D2DC(int a1, uint64_t a2, void *a3, __int128 *a4, int *a5, int *a6)
{
  switch(a1)
  {
    case 1:
    case 15:
      wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
      v26 = v13;
      v24 = *a4;
      v25 = *(a4 + 2);
      v14 = *a6;
      return sub_10011BC2C(a3, &v26, &v24, *a5);
    case 2:
    case 16:
      wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
      LODWORD(v26) = v11;
      v24 = *a4;
      v25 = *(a4 + 2);
      v12 = *a6;
      return sub_10011BE30(a3, &v26, &v24, *a5);
    case 3:
    case 11:
    case 17:
    case 25:
      v26 = a2;
      goto LABEL_9;
    case 4:
    case 10:
    case 18:
    case 24:
      v24 = *a4;
      v25 = *(a4 + 2);
      v26 = a2;
      return sub_10011BB28(a3, &v26, &v24, *a5, *a6);
    case 5:
    case 19:
      v26 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
LABEL_9:
      v24 = *a4;
      v25 = *(a4 + 2);
      return sub_10011BF30(a3, &v26, &v24, *a5, *a6);
    case 6:
    case 20:
      LODWORD(v26) = a2;
      goto LABEL_11;
    case 7:
    case 9:
    case 21:
    case 23:
      LODWORD(v26) = a2;
      v24 = *a4;
      v25 = *(a4 + 2);
      return sub_10011BD2C(a3, &v26, &v24, *a5, *a6);
    case 8:
    case 22:
      LODWORD(v26) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
LABEL_11:
      v24 = *a4;
      v25 = *(a4 + 2);
      result = sub_10011C034(a3, &v26, &v24, *a5, *a6);
      break;
    case 12:
    case 26:
      v15 = a2 != 0;
      v16 = *a5;
      v17 = *a6;
      v18 = a3[6];
      wis::reflect::getWireTypeForType();
      v19 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v18, v19);
      v20 = a3[6];
      v21 = sub_100047554(v17, v15);
      WireTypeForType = wis::reflect::getWireTypeForType();
      switch(WireTypeForType)
      {
        case 5:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v20, v21);
          break;
        case 1:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v20, v21);
          break;
        case 0:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v20, v21);
          break;
      }

      result = 1;
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  return result;
}

uint64_t sub_10011D574(int a1, uint64_t **a2, uint64_t a3, __int128 *a4, int *a5, int *a6)
{
  if (a1 <= 20)
  {
    if (a1 <= 17)
    {
      switch(a1)
      {
        case 15:
          sub_100044BD0(a2, __p);
          v48 = *a4;
          v49 = *(a4 + 2);
          v24 = *a6;
          v25 = sub_10011C61C(a3, __p, &v48, *a5);
          if (v25 != 3)
          {
            if (!v25)
            {
              v26 = *(a3 + 48);
              v27 = wis::reflect::encodeTag();
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v26, v27);
              sub_1000481D0(*(a3 + 48), v24, __p);
            }

            goto LABEL_51;
          }

          goto LABEL_52;
        case 16:
          sub_100044E44(a2, __p);
          v48 = *a4;
          v49 = *(a4 + 2);
          v35 = *a6;
          v36 = sub_10011C7EC(a3, __p, &v48, *a5);
          if (v36 != 3)
          {
            if (!v36)
            {
              v37 = *(a3 + 48);
              v38 = wis::reflect::encodeTag();
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v37, v38);
              sub_100049584(*(a3 + 48), v35, __p);
            }

            goto LABEL_51;
          }

          goto LABEL_52;
        case 17:
          sub_100045004(a2, __p);
          v48 = *a4;
          v49 = *(a4 + 2);
          v10 = *a6;
          v11 = sub_10011C8D4(a3, __p, &v48, *a5);
          if (v11 != 3)
          {
            if (!v11)
            {
              goto LABEL_50;
            }

            goto LABEL_51;
          }

          goto LABEL_52;
      }

LABEL_60:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
    }

    if (a1 != 18)
    {
      if (a1 == 19)
      {
        sub_10004513C(a2, __p);
        v48 = *a4;
        v49 = *(a4 + 2);
        v10 = *a6;
        v40 = sub_10011C8D4(a3, __p, &v48, *a5);
        if (v40 != 3)
        {
          if (!v40)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        goto LABEL_52;
      }

      sub_100044D0C(a2, __p);
      v48 = *a4;
      v49 = *(a4 + 2);
      v16 = *a6;
      v17 = sub_10011C9BC(a3, __p, &v48, *a5);
      if (v17 == 3)
      {
        goto LABEL_52;
      }

      if (v17)
      {
        goto LABEL_51;
      }

LABEL_19:
      v18 = *(a3 + 48);
      v19 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v18, v19);
      sub_10004B5E8(*(a3 + 48), v16, __p);
      goto LABEL_51;
    }

    sub_100044B50(a2, __p);
    v48 = *a4;
    v49 = *(a4 + 2);
    v20 = *a6;
    v29 = sub_10011C534(a3, __p, &v48, *a5);
    if (v29 == 3)
    {
      goto LABEL_52;
    }

    if (v29)
    {
      goto LABEL_51;
    }

LABEL_25:
    v22 = *(a3 + 48);
    v23 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v22, v23);
    sub_100047808(*(a3 + 48), v20, __p);
    goto LABEL_51;
  }

  if (a1 <= 23)
  {
    if (a1 == 21)
    {
      sub_100044D0C(a2, __p);
      v48 = *a4;
      v49 = *(a4 + 2);
      v12 = *a6;
      v28 = sub_10011C704(a3, __p, &v48, *a5);
      if (v28 == 3)
      {
        goto LABEL_52;
      }

      if (v28)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (a1 == 22)
      {
        sub_100045278(a2, __p);
        v48 = *a4;
        v49 = *(a4 + 2);
        v16 = *a6;
        v39 = sub_10011C9BC(a3, __p, &v48, *a5);
        if (v39 == 3)
        {
          goto LABEL_52;
        }

        if (v39)
        {
          goto LABEL_51;
        }

        goto LABEL_19;
      }

      sub_100044D0C(a2, __p);
      v48 = *a4;
      v49 = *(a4 + 2);
      v12 = *a6;
      v13 = sub_10011C704(a3, __p, &v48, *a5);
      if (v13 == 3)
      {
        goto LABEL_52;
      }

      if (v13)
      {
        goto LABEL_51;
      }
    }

    v14 = *(a3 + 48);
    v15 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v14, v15);
    sub_100048BBC(*(a3 + 48), v12, __p);
    goto LABEL_51;
  }

  if (a1 == 26)
  {
    sub_100044F80(a2, __p);
    v48 = *a4;
    v49 = *(a4 + 2);
    v30 = *a6;
    v31 = sub_100118DE0(a3, __p, &v48, *a5);
    if (v31 == 3)
    {
      v34 = 0;
    }

    else
    {
      if (!v31)
      {
        v32 = *(a3 + 48);
        v33 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v32, v33);
        sub_100049F70(*(a3 + 48), v30, __p);
      }

      v34 = 1;
    }

    v44 = __p[0];
    if (__p[0])
    {
      goto LABEL_55;
    }

    return v34;
  }

  if (a1 != 25)
  {
    if (a1 != 24)
    {
      goto LABEL_60;
    }

    sub_100044B50(a2, __p);
    v48 = *a4;
    v49 = *(a4 + 2);
    v20 = *a6;
    v21 = sub_10011C534(a3, __p, &v48, *a5);
    if (v21 == 3)
    {
      goto LABEL_52;
    }

    if (v21)
    {
      goto LABEL_51;
    }

    goto LABEL_25;
  }

  sub_100045004(a2, __p);
  v48 = *a4;
  v49 = *(a4 + 2);
  v10 = *a6;
  v41 = sub_10011C8D4(a3, __p, &v48, *a5);
  if (v41 != 3)
  {
    if (!v41)
    {
LABEL_50:
      v42 = *(a3 + 48);
      v43 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v42, v43);
      sub_10004AC20(*(a3 + 48), v10, __p);
    }

LABEL_51:
    v34 = 1;
    goto LABEL_53;
  }

LABEL_52:
  v34 = 0;
LABEL_53:
  v44 = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
LABEL_55:
    operator delete(v44);
  }

  return v34;
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_10011DC94(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_10011DCD0(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

void *sub_10011DD0C(void *a1)
{
  *a1 = off_1002B2F18;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10011DD5C(void *a1)
{
  *a1 = off_1002B2F18;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  operator delete();
}

double sub_10011DE5C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B2F18;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  sub_10000A964(a2 + 8, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

void sub_10011DEC0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_10011DED8(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t sub_10011DF1C(uint64_t a1, void *a2)
{
  v25 = 0uLL;
  v26 = 0;
  v3 = a2[1];
  if (!v3)
  {
    v3 = *(*a2 + 8);
  }

  v4 = *v3;
  v5 = v3[1] - *v3;
  v16[0] = 0;
  v16[1] = v4;
  v16[2] = v4 + v5;
  v17 = v5;
  v18 = 0;
  v19 = 0;
  v21 = xmmword_100240B70;
  v20 = v5;
  v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v23 = 0;
  v24 = 0;
  v6 = *(a1 + 32);
  sub_10011E968(v11, (a2 + 2), &v25, a1 + 8);
  v15 = v6;
  v10[0] = 0;
  v10[1] = 0;
  v10[2] = 0xFFFFFFFFLL;
  if (sub_10011E130(v16, v10, v11))
  {
    v7 = v14[64];
    sub_1000447B8(v14);
    if (v13)
    {
      sub_100008350(v13);
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v12);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v11);
    wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v16);
    if (v7)
    {
      sub_100116804(a2, &v25);
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1000447B8(v14);
    if (v13)
    {
      sub_100008350(v13);
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v12);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v11);
    wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v16);
  }

  v8 = 0;
LABEL_12:
  if (v25.n128_u64[0])
  {
    v25.n128_u64[1] = v25.n128_u64[0];
    operator delete(v25.n128_u64[0]);
  }

  return v8;
}

void sub_10011E088(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    *(v1 - 64) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011E0A4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100044768(va);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream((v5 - 152));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10011E058);
  }

  JUMPOUT(0x10011E08CLL);
}

uint64_t sub_10011E0E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011E130(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (*(this + 36))
    {
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback, a2);
  v9 = v8;
  v51 = HIDWORD(v8);
  *__p = *a2;
  v48 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *__p = v49;
  v48 = v50;
  BuiltinType = MetadataHelper::getBuiltinType();
  v46 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType();
  v12 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      __p[0] = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p) & 1) == 0)
          {
            if (!v51 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

LABEL_12:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }
        }

        else
        {
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, __p) & 1) == 0)
            {
              if (!v51 && (*(this + 36) & 1) != 0)
              {
                goto LABEL_47;
              }

              goto LABEL_12;
            }
          }

          else
          {
            __p[0] = *v26;
            *(this + 1) = v26 + 1;
          }
        }

        goto LABEL_77;
      }

      if (v9 != 2)
      {
        if (v9 == 5)
        {
          v43[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43) & 1) == 0)
          {
            if (!v51 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }

          __p[0] = v43[0];
        }

LABEL_77:
        v33 = sub_10011E9F0(BuiltinType, __p[0], a3, a2, &v51, &v46);
LABEL_78:
        LOBYTE(BuiltinType) = v33;
        return BuiltinType & 1;
      }

      if (!v51 && (*(this + 36) & 1) != 0)
      {
        goto LABEL_47;
      }

LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parsing failed in metric");
      goto LABEL_113;
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_45;
      }

      v41[0] = 0;
      v23 = *(this + 1);
      if (v23 >= *(this + 2) || *v23 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v41[0] = *v23;
        *(this + 1) = v23 + 1;
      }

      __p[0] = 0;
      __p[1] = 0;
      v48 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        *v43 = *a2;
        v44 = *(a2 + 16);
        LOBYTE(BuiltinType) = sub_100118374(a3, __p);
      }

      if ((SHIBYTE(v48) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }

      v35 = __p[0];
      goto LABEL_103;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_45;
        }

        *v43 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v48 = *(a2 + 16);
        v28 = v51;
        v29 = a3;
        v30 = 1;
      }

      else
      {
        *v43 = 0;
        if (!sub_1000448B4(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v48 = *(a2 + 16);
        v28 = v51;
        v29 = a3;
        v30 = 0;
      }

LABEL_108:
      v33 = sub_100118684(v29, v27, __p, v28, v30);
      goto LABEL_78;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_45;
      }

      v43[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43))
      {
        goto LABEL_45;
      }

      v27 = v43[0];
      *__p = *a2;
      v48 = *(a2 + 16);
      v28 = v51;
      v29 = a3;
      v30 = 5;
      goto LABEL_108;
    }

    v41[0] = 0;
    if ((sub_1000448E0(this, v41) & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_100045794(__p, v41[0]);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
LABEL_101:
      v35 = __p[0];
      if (!__p[0])
      {
        goto LABEL_104;
      }

      __p[1] = __p[0];
LABEL_103:
      operator delete(v35);
LABEL_104:
      if ((String & 1) == 0)
      {
        goto LABEL_45;
      }

      return BuiltinType & 1;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001187A8(a3, __p[0], __p[1] - __p[0]);
LABEL_100:
    LOBYTE(BuiltinType) = v39;
    goto LABEL_101;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_45;
      }

      UnpackedType = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || (v25 = *v24, (v25 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &UnpackedType))
        {
          goto LABEL_45;
        }

        v25 = UnpackedType;
      }

      else
      {
        UnpackedType = *v24;
        *(this + 1) = v24 + 1;
      }

      *v41 = this;
      v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
      ++*(this + 14);
      *v40 = this;
      *__p = *a2;
      v48 = *(a2 + 16);
      *v43 = v49;
      v44 = v50;
      LOBYTE(BuiltinType) = sub_10011F410(a3, this, __p, v51, v43);
      sub_100120C20(v40);
      v36 = *(this + 14);
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v38 < 0 == v37)
      {
        *(this + 14) = v38;
      }

      sub_100045760(v41);
      return BuiltinType & 1;
    }

    v41[0] = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || (v32 = *v31, (v32 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
      {
        goto LABEL_45;
      }

      v32 = v41[0];
    }

    else
    {
      v41[0] = *v31;
      *(this + 1) = v31 + 1;
    }

    sub_100045794(__p, v32);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
      goto LABEL_101;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001183F8(a3, __p);
    goto LABEL_100;
  }

  v40[0] = 0;
  v14 = *(this + 1);
  if (v14 >= *(this + 2) || *v14 < 0)
  {
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v40) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v40[0] = *v14;
    *(this + 1) = v14 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType();
  WireTypeForType = wis::reflect::getWireTypeForType();
  *v43 = this;
  v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40[0]);
  v43[2] = v16;
  __p[0] = 0;
  __p[1] = 0;
  v48 = 0;
  while (1)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if (v17 < 1)
    {
      break;
    }

    *v41 = 0;
    sub_10004490C(__p, v41);
    if (WireTypeForType > 1)
    {
      if (WireTypeForType == 5)
      {
        v41[0] = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v41);
        *(__p[1] - 1) = v41[0];
        goto LABEL_39;
      }

      if (WireTypeForType == 2)
      {
        goto LABEL_42;
      }
    }

    else if (WireTypeForType)
    {
      if (WireTypeForType == 1)
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p[1] - 1);
LABEL_39:
        if ((LittleEndian32Fallback & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = (__p[1] - 8);
      v20 = *(this + 1);
      if (v20 >= *(this + 2) || (v21 = *v20, (v21 & 0x8000000000000000) != 0))
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v19);
        goto LABEL_39;
      }

      *v19 = v21;
      *(this + 1) = v20 + 1;
    }
  }

  LOBYTE(BuiltinType) = sub_10011ECF0(v12, __p, a3, a2, &v51, &UnpackedType);
LABEL_42:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
  if (v17 > 0)
  {
LABEL_45:
    if (!v51 && (*(this + 36) & 1) != 0)
    {
LABEL_47:
      LOBYTE(BuiltinType) = 1;
      return BuiltinType & 1;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
LABEL_113:
  }

  return BuiltinType & 1;
}

void sub_10011E8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10011E968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (sub_10000BA58(a1, a3) + 2);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v6, a1);
  *(a1 + 48) = v6;
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a4;
  return a1;
}

void sub_10011E9CC(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v2);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011E9F0(int a1, uint64_t a2, uint64_t a3, __int128 *a4, int *a5, int *a6)
{
  v10 = a2;
  switch(a1)
  {
    case 1:
    case 15:
      wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
      v51 = v24;
      v49 = *a4;
      v50 = *(a4 + 2);
      v25 = *a6;
      return sub_10011F628(a3, &v51, &v49, *a5);
    case 2:
    case 16:
      wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
      LODWORD(v51) = v21;
      v49 = *a4;
      v50 = *(a4 + 2);
      v22 = *a6;
      return sub_10011F730(a3, &v51, &v49, *a5);
    case 3:
    case 11:
    case 17:
    case 25:
      goto LABEL_8;
    case 4:
    case 10:
    case 18:
    case 24:
      v17 = *a5;
      v18 = *a6;
      v19 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v20 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v19, v20);
      v15 = *(a3 + 48);
      v16 = sub_100047378(v18, v10);
      break;
    case 5:
    case 19:
      v10 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
LABEL_8:
      v33 = *a5;
      v34 = *a6;
      v35 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v36 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v35, v36);
      v15 = *(a3 + 48);
      v16 = sub_10004762C(v34, v10);
      break;
    case 6:
    case 20:
      v37 = *a5;
      v38 = *a6;
      v39 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v40 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v39, v40);
      v15 = *(a3 + 48);
      v31 = v38;
      v32 = v10;
      goto LABEL_10;
    case 7:
    case 9:
    case 21:
    case 23:
      v11 = *a5;
      v12 = *a6;
      v13 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v14 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
      v15 = *(a3 + 48);
      v16 = sub_100047468(v12, v10);
      break;
    case 8:
    case 22:
      v26 = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
      v27 = *a5;
      v28 = *a6;
      v29 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v30 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v29, v30);
      v15 = *(a3 + 48);
      v31 = v28;
      v32 = v26;
LABEL_10:
      v16 = sub_10004771C(v31, v32);
      break;
    case 12:
    case 26:
      v41 = a2 != 0;
      v42 = *a5;
      v43 = *a6;
      v44 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v45 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v44, v45);
      v15 = *(a3 + 48);
      v16 = sub_100047554(v43, v41);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  v46 = v16;
  WireTypeForType = wis::reflect::getWireTypeForType();
  switch(WireTypeForType)
  {
    case 5:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v15, v46);
      break;
    case 1:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v15, v46);
      break;
    case 0:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v15, v46);
      break;
  }

  return 1;
}

uint64_t sub_10011ECF0(int a1, uint64_t **a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
{
  if (a1 <= 20)
  {
    if (a1 <= 17)
    {
      switch(a1)
      {
        case 15:
          sub_100044BD0(a2, v48);
          *__p = *a4;
          v50 = *(a4 + 16);
          v25 = *a6;
          v26 = sub_10011F840(a3, v48, __p, *a5);
          if (v26 != 3)
          {
            if (!v26)
            {
              v27 = *(a3 + 48);
              v28 = wis::reflect::encodeTag();
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v27, v28);
              sub_1000481D0(*(a3 + 48), v25, v48);
            }

            goto LABEL_48;
          }

          break;
        case 16:
          sub_100044E44(a2, v48);
          *__p = *a4;
          v50 = *(a4 + 16);
          v36 = *a6;
          v37 = sub_10011F8E0(a3, v48, __p, *a5);
          if (v37 != 3)
          {
            if (!v37)
            {
              v38 = *(a3 + 48);
              v39 = wis::reflect::encodeTag();
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v38, v39);
              sub_100049584(*(a3 + 48), v36, v48);
            }

LABEL_48:
            v35 = 1;
LABEL_67:
            v46 = v48[0];
            if (!v48[0])
            {
              return v35;
            }

            v48[1] = v48[0];
LABEL_71:
            operator delete(v46);
            return v35;
          }

          break;
        case 17:
          sub_100045004(a2, __p);
          v10 = *a6;
          v11 = *(*(a3 + 176) + 8);
          if (*(a3 + 168) == ((v11 - **(a3 + 176)) >> 2) - 1 && *(v11 - 4) == *a5)
          {
            v12 = __p[0];
            if (__p[0] == __p[1])
            {
              goto LABEL_62;
            }
          }

          goto LABEL_60;
        default:
LABEL_72:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
      }

      v35 = 0;
      goto LABEL_67;
    }

    if (a1 != 18)
    {
      if (a1 != 19)
      {
        sub_100044D0C(a2, __p);
        v17 = *a6;
        v18 = *(*(a3 + 176) + 8);
        if (*(a3 + 168) == ((v18 - **(a3 + 176)) >> 2) - 1 && *(v18 - 4) == *a5)
        {
          v12 = __p[0];
          if (__p[0] == __p[1])
          {
            goto LABEL_62;
          }
        }

        goto LABEL_22;
      }

      sub_10004513C(a2, __p);
      v10 = *a6;
      v41 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) == ((v41 - **(a3 + 176)) >> 2) - 1 && *(v41 - 4) == *a5)
      {
        v12 = __p[0];
        if (__p[0] == __p[1])
        {
          goto LABEL_62;
        }
      }

LABEL_60:
      v43 = *(a3 + 48);
      v44 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v43, v44);
      sub_10004AC20(*(a3 + 48), v10, __p);
      goto LABEL_61;
    }

    sub_100044B50(a2, __p);
    v21 = *a6;
    v30 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) == ((v30 - **(a3 + 176)) >> 2) - 1 && *(v30 - 4) == *a5)
    {
      v12 = __p[0];
      if (__p[0] == __p[1])
      {
        goto LABEL_62;
      }
    }

    goto LABEL_29;
  }

  if (a1 <= 23)
  {
    if (a1 == 21)
    {
      sub_100044D0C(a2, __p);
      v13 = *a6;
      v29 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) == ((v29 - **(a3 + 176)) >> 2) - 1 && *(v29 - 4) == *a5)
      {
        v12 = __p[0];
        if (__p[0] == __p[1])
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      if (a1 == 22)
      {
        sub_100045278(a2, __p);
        v17 = *a6;
        v40 = *(*(a3 + 176) + 8);
        if (*(a3 + 168) == ((v40 - **(a3 + 176)) >> 2) - 1 && *(v40 - 4) == *a5)
        {
          v12 = __p[0];
          if (__p[0] == __p[1])
          {
            goto LABEL_62;
          }
        }

LABEL_22:
        v19 = *(a3 + 48);
        v20 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v19, v20);
        sub_10004B5E8(*(a3 + 48), v17, __p);
        goto LABEL_61;
      }

      sub_100044D0C(a2, __p);
      v13 = *a6;
      v14 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) == ((v14 - **(a3 + 176)) >> 2) - 1 && *(v14 - 4) == *a5)
      {
        v12 = __p[0];
        if (__p[0] == __p[1])
        {
          goto LABEL_62;
        }
      }
    }

    v15 = *(a3 + 48);
    v16 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v15, v16);
    sub_100048BBC(*(a3 + 48), v13, __p);
LABEL_61:
    v12 = __p[0];
LABEL_62:
    if (v12)
    {
      __p[1] = v12;
      operator delete(v12);
    }

    return 1;
  }

  if (a1 != 26)
  {
    if (a1 == 25)
    {
      sub_100045004(a2, __p);
      v10 = *a6;
      v42 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) == ((v42 - **(a3 + 176)) >> 2) - 1 && *(v42 - 4) == *a5)
      {
        v12 = __p[0];
        if (__p[0] == __p[1])
        {
          goto LABEL_62;
        }
      }

      goto LABEL_60;
    }

    if (a1 != 24)
    {
      goto LABEL_72;
    }

    sub_100044B50(a2, __p);
    v21 = *a6;
    v22 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) == ((v22 - **(a3 + 176)) >> 2) - 1 && *(v22 - 4) == *a5)
    {
      v12 = __p[0];
      if (__p[0] == __p[1])
      {
        goto LABEL_62;
      }
    }

LABEL_29:
    v23 = *(a3 + 48);
    v24 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v23, v24);
    sub_100047808(*(a3 + 48), v21, __p);
    goto LABEL_61;
  }

  sub_100044F80(a2, v48);
  *__p = *a4;
  v50 = *(a4 + 16);
  v31 = *a6;
  v32 = sub_100118DE0(a3, v48, __p, *a5);
  if (v32 == 3)
  {
    v35 = 0;
  }

  else
  {
    if (!v32)
    {
      v33 = *(a3 + 48);
      v34 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v34);
      sub_100049F70(*(a3 + 48), v31, v48);
    }

    v35 = 1;
  }

  v46 = v48[0];
  if (v48[0])
  {
    goto LABEL_71;
  }

  return v35;
}

BOOL sub_10011F410(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, int a4, __int128 *a5)
{
  v7 = *(a1 + 168);
  v8 = **(a1 + 176);
  if (v7 < (*(*(a1 + 176) + 8) - v8) >> 2 && *(v8 + 4 * v7) == a4)
  {
    *(a1 + 168) = v7 + 1;
    __p = 0;
    v27 = 0;
    v28 = 0;
    sub_10000BA58(v25, &__p);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v24, v25);
    v10 = *(a1 + 48);
    *(a1 + 48) = v24;
    while (1)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
      v12 = v11 < 1;
      if (v11 < 1)
      {
        break;
      }

      v22 = *a5;
      v23 = *(a5 + 2);
      if ((sub_10011F98C(this, &v22, a1) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    --*(a1 + 168);
    *(a1 + 48) = v10;
LABEL_12:
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v24);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v25);
    if (v11 <= 0)
    {
      v18 = *(a1 + 48);
      v19 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v18, v19);
      v20 = *(a1 + 48);
      v21 = __p;
      LODWORD(v18) = v27 - __p;
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v20, v27 - __p);
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v20, v21, v18);
    }

    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v24[0] = 0;
    LODWORD(__p) = 0;
    wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(this, v24, &__p);
    LODWORD(__p) = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if ((__p & 0x80000000) == 0)
    {
      v13 = *(a1 + 48);
      v14 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
      v15 = *(a1 + 48);
      v16 = v24[0];
      LODWORD(v13) = __p;
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v15, __p);
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v15, v16, v13);
    }

    return 1;
  }

  return v12;
}

void sub_10011F5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19)
{
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10011F628(uint64_t a1, long double *a2, uint64_t a3, int a4)
{
  v6 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v6 - **(a1 + 176)) >> 2) - 1 && *(v6 - 4) == a4)
  {
    *(a1 + 160) = 1;
    v7 = *a2;
    *a2 = v7 - fmod(*a2, *(a1 + 184));
  }

  v8 = *(a1 + 48);
  wis::reflect::getWireTypeForType();
  v9 = wis::reflect::encodeTag();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v8, v9);
  v10 = *(a1 + 48);
  v11 = *a2;
  v12 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::encode();
  WireTypeForType = wis::reflect::getWireTypeForType();
  switch(WireTypeForType)
  {
    case 5:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v10, v12);
      break;
    case 1:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v10, v12);
      break;
    case 0:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v10, v12);
      break;
  }

  return 1;
}

uint64_t sub_10011F730(uint64_t a1, float *a2, uint64_t a3, int a4)
{
  v6 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v6 - **(a1 + 176)) >> 2) - 1 && *(v6 - 4) == a4)
  {
    *(a1 + 160) = 1;
    v7 = *a2;
    v8 = v7 - fmod(v7, *(a1 + 184));
    *a2 = v8;
  }

  v9 = *(a1 + 48);
  wis::reflect::getWireTypeForType();
  v10 = wis::reflect::encodeTag();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
  v11 = *(a1 + 48);
  v12 = *a2;
  v13 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::encode();
  WireTypeForType = wis::reflect::getWireTypeForType();
  switch(WireTypeForType)
  {
    case 5:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v13);
      break;
    case 1:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v13);
      break;
    case 0:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v13);
      break;
  }

  return 1;
}

uint64_t sub_10011F840(uint64_t a1, long double **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return 1;
  }

  do
  {
    v8 = *v5;
    *v5 = v8 - fmod(*v5, *(a1 + 184));
    ++v5;
  }

  while (v5 != v6);
  result = 0;
  *(a1 + 160) = 1;
  return result;
}

uint64_t sub_10011F8E0(uint64_t a1, float **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v4 - **(a1 + 176)) >> 2) - 1 || *(v4 - 4) != a4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return 1;
  }

  v8 = *(a1 + 184);
  do
  {
    v9 = *v5;
    v10 = v9 - fmod(v9, v8);
    *v5++ = v10;
  }

  while (v5 != v6);
  result = 0;
  *(a1 + 160) = 1;
  return result;
}

uint64_t sub_10011F98C(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (*(this + 36))
    {
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback, a2);
  v9 = v8;
  v49 = HIDWORD(v8);
  *__p = *a2;
  v51 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *__p = v47;
  v51 = v48;
  BuiltinType = MetadataHelper::getBuiltinType();
  v46 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType();
  v12 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      __p[0] = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p) & 1) == 0)
          {
            if (!v49 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

LABEL_12:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }
        }

        else
        {
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, __p) & 1) == 0)
            {
              if (!v49 && (*(this + 36) & 1) != 0)
              {
                goto LABEL_47;
              }

              goto LABEL_12;
            }
          }

          else
          {
            __p[0] = *v26;
            *(this + 1) = v26 + 1;
          }
        }

        goto LABEL_77;
      }

      if (v9 != 2)
      {
        if (v9 == 5)
        {
          v43[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43) & 1) == 0)
          {
            if (!v49 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }

          __p[0] = v43[0];
        }

LABEL_77:
        v33 = sub_1001201C4(BuiltinType, __p[0], a3, a2, &v49, &v46);
LABEL_78:
        LOBYTE(BuiltinType) = v33;
        return BuiltinType & 1;
      }

      if (!v49 && (*(this + 36) & 1) != 0)
      {
        goto LABEL_47;
      }

LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parsing failed in metric");
      goto LABEL_113;
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_45;
      }

      v41[0] = 0;
      v23 = *(this + 1);
      if (v23 >= *(this + 2) || *v23 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v41[0] = *v23;
        *(this + 1) = v23 + 1;
      }

      __p[0] = 0;
      __p[1] = 0;
      v51 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        *v43 = *a2;
        v44 = *(a2 + 16);
        LOBYTE(BuiltinType) = sub_100118374(a3, __p);
      }

      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }

      v35 = __p[0];
      goto LABEL_103;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_45;
        }

        *v43 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v51 = *(a2 + 16);
        v28 = v49;
        v29 = a3;
        v30 = 1;
      }

      else
      {
        *v43 = 0;
        if (!sub_1000448B4(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v51 = *(a2 + 16);
        v28 = v49;
        v29 = a3;
        v30 = 0;
      }

LABEL_108:
      v33 = sub_100118684(v29, v27, __p, v28, v30);
      goto LABEL_78;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_45;
      }

      v43[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43))
      {
        goto LABEL_45;
      }

      v27 = v43[0];
      *__p = *a2;
      v51 = *(a2 + 16);
      v28 = v49;
      v29 = a3;
      v30 = 5;
      goto LABEL_108;
    }

    v41[0] = 0;
    if ((sub_1000448E0(this, v41) & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_100045794(__p, v41[0]);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
LABEL_101:
      v35 = __p[0];
      if (!__p[0])
      {
        goto LABEL_104;
      }

      __p[1] = __p[0];
LABEL_103:
      operator delete(v35);
LABEL_104:
      if ((String & 1) == 0)
      {
        goto LABEL_45;
      }

      return BuiltinType & 1;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001187A8(a3, __p[0], __p[1] - __p[0]);
LABEL_100:
    LOBYTE(BuiltinType) = v39;
    goto LABEL_101;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_45;
      }

      UnpackedType = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || (v25 = *v24, (v25 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &UnpackedType))
        {
          goto LABEL_45;
        }

        v25 = UnpackedType;
      }

      else
      {
        UnpackedType = *v24;
        *(this + 1) = v24 + 1;
      }

      *v41 = this;
      v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
      ++*(this + 14);
      *v40 = this;
      *__p = *a2;
      v51 = *(a2 + 16);
      *v43 = v47;
      v44 = v48;
      LOBYTE(BuiltinType) = sub_10011F410(a3, this);
      sub_100120BE4(v40);
      v36 = *(this + 14);
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v38 < 0 == v37)
      {
        *(this + 14) = v38;
      }

      sub_100045760(v41);
      return BuiltinType & 1;
    }

    v41[0] = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || (v32 = *v31, (v32 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
      {
        goto LABEL_45;
      }

      v32 = v41[0];
    }

    else
    {
      v41[0] = *v31;
      *(this + 1) = v31 + 1;
    }

    sub_100045794(__p, v32);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
      goto LABEL_101;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001183F8(a3, __p);
    goto LABEL_100;
  }

  v40[0] = 0;
  v14 = *(this + 1);
  if (v14 >= *(this + 2) || *v14 < 0)
  {
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v40) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v40[0] = *v14;
    *(this + 1) = v14 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType();
  WireTypeForType = wis::reflect::getWireTypeForType();
  *v43 = this;
  v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40[0]);
  v43[2] = v16;
  __p[0] = 0;
  __p[1] = 0;
  v51 = 0;
  while (1)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if (v17 < 1)
    {
      break;
    }

    *v41 = 0;
    sub_10004490C(__p, v41);
    if (WireTypeForType > 1)
    {
      if (WireTypeForType == 5)
      {
        v41[0] = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v41);
        *(__p[1] - 1) = v41[0];
        goto LABEL_39;
      }

      if (WireTypeForType == 2)
      {
        goto LABEL_42;
      }
    }

    else if (WireTypeForType)
    {
      if (WireTypeForType == 1)
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p[1] - 1);
LABEL_39:
        if ((LittleEndian32Fallback & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = (__p[1] - 8);
      v20 = *(this + 1);
      if (v20 >= *(this + 2) || (v21 = *v20, (v21 & 0x8000000000000000) != 0))
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v19);
        goto LABEL_39;
      }

      *v19 = v21;
      *(this + 1) = v20 + 1;
    }
  }

  LOBYTE(BuiltinType) = sub_1001204C4(v12, __p, a3, a2, &v49, &UnpackedType);
LABEL_42:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
  if (v17 > 0)
  {
LABEL_45:
    if (!v49 && (*(this + 36) & 1) != 0)
    {
LABEL_47:
      LOBYTE(BuiltinType) = 1;
      return BuiltinType & 1;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
LABEL_113:
  }

  return BuiltinType & 1;
}

void sub_100120118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001201C4(int a1, uint64_t a2, uint64_t a3, __int128 *a4, int *a5, int *a6)
{
  v10 = a2;
  switch(a1)
  {
    case 1:
    case 15:
      wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
      v51 = v24;
      v49 = *a4;
      v50 = *(a4 + 2);
      v25 = *a6;
      return sub_10011F628(a3, &v51, &v49, *a5);
    case 2:
    case 16:
      wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
      LODWORD(v51) = v21;
      v49 = *a4;
      v50 = *(a4 + 2);
      v22 = *a6;
      return sub_10011F730(a3, &v51, &v49, *a5);
    case 3:
    case 11:
    case 17:
    case 25:
      goto LABEL_8;
    case 4:
    case 10:
    case 18:
    case 24:
      v17 = *a5;
      v18 = *a6;
      v19 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v20 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v19, v20);
      v15 = *(a3 + 48);
      v16 = sub_100047378(v18, v10);
      break;
    case 5:
    case 19:
      v10 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
LABEL_8:
      v33 = *a5;
      v34 = *a6;
      v35 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v36 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v35, v36);
      v15 = *(a3 + 48);
      v16 = sub_10004762C(v34, v10);
      break;
    case 6:
    case 20:
      v37 = *a5;
      v38 = *a6;
      v39 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v40 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v39, v40);
      v15 = *(a3 + 48);
      v31 = v38;
      v32 = v10;
      goto LABEL_10;
    case 7:
    case 9:
    case 21:
    case 23:
      v11 = *a5;
      v12 = *a6;
      v13 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v14 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
      v15 = *(a3 + 48);
      v16 = sub_100047468(v12, v10);
      break;
    case 8:
    case 22:
      v26 = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
      v27 = *a5;
      v28 = *a6;
      v29 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v30 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v29, v30);
      v15 = *(a3 + 48);
      v31 = v28;
      v32 = v26;
LABEL_10:
      v16 = sub_10004771C(v31, v32);
      break;
    case 12:
    case 26:
      v41 = a2 != 0;
      v42 = *a5;
      v43 = *a6;
      v44 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v45 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v44, v45);
      v15 = *(a3 + 48);
      v16 = sub_100047554(v43, v41);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  v46 = v16;
  WireTypeForType = wis::reflect::getWireTypeForType();
  switch(WireTypeForType)
  {
    case 5:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v15, v46);
      break;
    case 1:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v15, v46);
      break;
    case 0:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v15, v46);
      break;
  }

  return 1;
}

uint64_t sub_1001204C4(int a1, uint64_t **a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
{
  if (a1 <= 20)
  {
    if (a1 <= 17)
    {
      switch(a1)
      {
        case 15:
          sub_100044BD0(a2, v48);
          *__p = *a4;
          v50 = *(a4 + 16);
          v25 = *a6;
          v26 = sub_10011F840(a3, v48, __p, *a5);
          if (v26 != 3)
          {
            if (!v26)
            {
              v27 = *(a3 + 48);
              v28 = wis::reflect::encodeTag();
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v27, v28);
              sub_1000481D0(*(a3 + 48), v25, v48);
            }

            goto LABEL_48;
          }

          break;
        case 16:
          sub_100044E44(a2, v48);
          *__p = *a4;
          v50 = *(a4 + 16);
          v36 = *a6;
          v37 = sub_10011F8E0(a3, v48, __p, *a5);
          if (v37 != 3)
          {
            if (!v37)
            {
              v38 = *(a3 + 48);
              v39 = wis::reflect::encodeTag();
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v38, v39);
              sub_100049584(*(a3 + 48), v36, v48);
            }

LABEL_48:
            v35 = 1;
LABEL_67:
            v46 = v48[0];
            if (!v48[0])
            {
              return v35;
            }

            v48[1] = v48[0];
LABEL_71:
            operator delete(v46);
            return v35;
          }

          break;
        case 17:
          sub_100045004(a2, __p);
          v10 = *a6;
          v11 = *(*(a3 + 176) + 8);
          if (*(a3 + 168) == ((v11 - **(a3 + 176)) >> 2) - 1 && *(v11 - 4) == *a5)
          {
            v12 = __p[0];
            if (__p[0] == __p[1])
            {
              goto LABEL_62;
            }
          }

          goto LABEL_60;
        default:
LABEL_72:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
      }

      v35 = 0;
      goto LABEL_67;
    }

    if (a1 != 18)
    {
      if (a1 != 19)
      {
        sub_100044D0C(a2, __p);
        v17 = *a6;
        v18 = *(*(a3 + 176) + 8);
        if (*(a3 + 168) == ((v18 - **(a3 + 176)) >> 2) - 1 && *(v18 - 4) == *a5)
        {
          v12 = __p[0];
          if (__p[0] == __p[1])
          {
            goto LABEL_62;
          }
        }

        goto LABEL_22;
      }

      sub_10004513C(a2, __p);
      v10 = *a6;
      v41 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) == ((v41 - **(a3 + 176)) >> 2) - 1 && *(v41 - 4) == *a5)
      {
        v12 = __p[0];
        if (__p[0] == __p[1])
        {
          goto LABEL_62;
        }
      }

LABEL_60:
      v43 = *(a3 + 48);
      v44 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v43, v44);
      sub_10004AC20(*(a3 + 48), v10, __p);
      goto LABEL_61;
    }

    sub_100044B50(a2, __p);
    v21 = *a6;
    v30 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) == ((v30 - **(a3 + 176)) >> 2) - 1 && *(v30 - 4) == *a5)
    {
      v12 = __p[0];
      if (__p[0] == __p[1])
      {
        goto LABEL_62;
      }
    }

    goto LABEL_29;
  }

  if (a1 <= 23)
  {
    if (a1 == 21)
    {
      sub_100044D0C(a2, __p);
      v13 = *a6;
      v29 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) == ((v29 - **(a3 + 176)) >> 2) - 1 && *(v29 - 4) == *a5)
      {
        v12 = __p[0];
        if (__p[0] == __p[1])
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      if (a1 == 22)
      {
        sub_100045278(a2, __p);
        v17 = *a6;
        v40 = *(*(a3 + 176) + 8);
        if (*(a3 + 168) == ((v40 - **(a3 + 176)) >> 2) - 1 && *(v40 - 4) == *a5)
        {
          v12 = __p[0];
          if (__p[0] == __p[1])
          {
            goto LABEL_62;
          }
        }

LABEL_22:
        v19 = *(a3 + 48);
        v20 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v19, v20);
        sub_10004B5E8(*(a3 + 48), v17, __p);
        goto LABEL_61;
      }

      sub_100044D0C(a2, __p);
      v13 = *a6;
      v14 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) == ((v14 - **(a3 + 176)) >> 2) - 1 && *(v14 - 4) == *a5)
      {
        v12 = __p[0];
        if (__p[0] == __p[1])
        {
          goto LABEL_62;
        }
      }
    }

    v15 = *(a3 + 48);
    v16 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v15, v16);
    sub_100048BBC(*(a3 + 48), v13, __p);
LABEL_61:
    v12 = __p[0];
LABEL_62:
    if (v12)
    {
      __p[1] = v12;
      operator delete(v12);
    }

    return 1;
  }

  if (a1 != 26)
  {
    if (a1 == 25)
    {
      sub_100045004(a2, __p);
      v10 = *a6;
      v42 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) == ((v42 - **(a3 + 176)) >> 2) - 1 && *(v42 - 4) == *a5)
      {
        v12 = __p[0];
        if (__p[0] == __p[1])
        {
          goto LABEL_62;
        }
      }

      goto LABEL_60;
    }

    if (a1 != 24)
    {
      goto LABEL_72;
    }

    sub_100044B50(a2, __p);
    v21 = *a6;
    v22 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) == ((v22 - **(a3 + 176)) >> 2) - 1 && *(v22 - 4) == *a5)
    {
      v12 = __p[0];
      if (__p[0] == __p[1])
      {
        goto LABEL_62;
      }
    }

LABEL_29:
    v23 = *(a3 + 48);
    v24 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v23, v24);
    sub_100047808(*(a3 + 48), v21, __p);
    goto LABEL_61;
  }

  sub_100044F80(a2, v48);
  *__p = *a4;
  v50 = *(a4 + 16);
  v31 = *a6;
  v32 = sub_100118DE0(a3, v48, __p, *a5);
  if (v32 == 3)
  {
    v35 = 0;
  }

  else
  {
    if (!v32)
    {
      v33 = *(a3 + 48);
      v34 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v34);
      sub_100049F70(*(a3 + 48), v31, v48);
    }

    v35 = 1;
  }

  v46 = v48[0];
  if (v48[0])
  {
    goto LABEL_71;
  }

  return v35;
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_100120BE4(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_100120C20(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

void *sub_100120C5C(void *a1)
{
  *a1 = off_1002B2F98;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100120CAC(void *a1)
{
  *a1 = off_1002B2F98;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_100120DA4(uint64_t a1, void *a2)
{
  *a2 = off_1002B2F98;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return sub_10000A964((a2 + 1), *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
}

void sub_100120DE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_100120DF8(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t sub_100120E3C(uint64_t a1, void *a2)
{
  v23 = 0uLL;
  v24 = 0;
  v3 = a2[1];
  if (!v3)
  {
    v3 = *(*a2 + 8);
  }

  v4 = *v3;
  v5 = v3[1] - *v3;
  v14[0] = 0;
  v14[1] = v4;
  v14[2] = v4 + v5;
  v15 = v5;
  v16 = 0;
  v17 = 0;
  v19 = xmmword_100240B70;
  v18 = v5;
  v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v21 = 0;
  v22 = 0;
  sub_100121878(v10, (a2 + 2), &v23, a1 + 8);
  v9[0] = 0;
  v9[1] = 0;
  v9[2] = 0xFFFFFFFFLL;
  if (sub_100121040(v14, v9, v10))
  {
    v6 = v13[64];
    sub_1000447B8(v13);
    if (v12)
    {
      sub_100008350(v12);
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v11);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v10);
    wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v14);
    if (v6)
    {
      sub_100116804(a2, &v23);
      v7 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1000447B8(v13);
    if (v12)
    {
      sub_100008350(v12);
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v11);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v10);
    wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v14);
  }

  v7 = 0;
LABEL_12:
  if (v23.n128_u64[0])
  {
    v23.n128_u64[1] = v23.n128_u64[0];
    operator delete(v23.n128_u64[0]);
  }

  return v7;
}

void sub_100120F98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100120FB4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100044768(va);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream((v6 - 136));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x100120F6CLL);
  }

  JUMPOUT(0x100120F9CLL);
}

uint64_t sub_100120FF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100121040(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (*(this + 36))
    {
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback, a2);
  v9 = v8;
  v51 = HIDWORD(v8);
  *__p = *a2;
  v48 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *__p = v49;
  v48 = v50;
  BuiltinType = MetadataHelper::getBuiltinType();
  v46 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType();
  v12 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      __p[0] = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p) & 1) == 0)
          {
            if (!v51 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

LABEL_12:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }
        }

        else
        {
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, __p) & 1) == 0)
            {
              if (!v51 && (*(this + 36) & 1) != 0)
              {
                goto LABEL_47;
              }

              goto LABEL_12;
            }
          }

          else
          {
            __p[0] = *v26;
            *(this + 1) = v26 + 1;
          }
        }

        goto LABEL_77;
      }

      if (v9 != 2)
      {
        if (v9 == 5)
        {
          v43[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43) & 1) == 0)
          {
            if (!v51 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }

          __p[0] = v43[0];
        }

LABEL_77:
        v33 = sub_100121900(BuiltinType, __p[0], a3, a2, &v51, &v46);
LABEL_78:
        LOBYTE(BuiltinType) = v33;
        return BuiltinType & 1;
      }

      if (!v51 && (*(this + 36) & 1) != 0)
      {
        goto LABEL_47;
      }

LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parsing failed in metric");
      goto LABEL_113;
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_45;
      }

      v41[0] = 0;
      v23 = *(this + 1);
      if (v23 >= *(this + 2) || *v23 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v41[0] = *v23;
        *(this + 1) = v23 + 1;
      }

      __p[0] = 0;
      __p[1] = 0;
      v48 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        *v43 = *a2;
        v44 = *(a2 + 16);
        LOBYTE(BuiltinType) = sub_100122190(a3, __p, v43, v51);
      }

      if ((SHIBYTE(v48) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }

      v35 = __p[0];
      goto LABEL_103;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_45;
        }

        *v43 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v48 = *(a2 + 16);
        v28 = v51;
        v29 = a3;
        v30 = 1;
      }

      else
      {
        *v43 = 0;
        if (!sub_1000448B4(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v48 = *(a2 + 16);
        v28 = v51;
        v29 = a3;
        v30 = 0;
      }

LABEL_108:
      v33 = sub_100122548(v29, v27, __p, v28, v30);
      goto LABEL_78;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_45;
      }

      v43[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43))
      {
        goto LABEL_45;
      }

      v27 = v43[0];
      *__p = *a2;
      v48 = *(a2 + 16);
      v28 = v51;
      v29 = a3;
      v30 = 5;
      goto LABEL_108;
    }

    v41[0] = 0;
    if ((sub_1000448E0(this, v41) & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_100045794(__p, v41[0]);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
LABEL_101:
      v35 = __p[0];
      if (!__p[0])
      {
        goto LABEL_104;
      }

      __p[1] = __p[0];
LABEL_103:
      operator delete(v35);
LABEL_104:
      if ((String & 1) == 0)
      {
        goto LABEL_45;
      }

      return BuiltinType & 1;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001226A0(a3, __p[0], __p[1] - __p[0], v43, v51);
LABEL_100:
    LOBYTE(BuiltinType) = v39;
    goto LABEL_101;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_45;
      }

      UnpackedType = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || (v25 = *v24, (v25 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &UnpackedType))
        {
          goto LABEL_45;
        }

        v25 = UnpackedType;
      }

      else
      {
        UnpackedType = *v24;
        *(this + 1) = v24 + 1;
      }

      *v41 = this;
      v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
      ++*(this + 14);
      *v40 = this;
      *__p = *a2;
      v48 = *(a2 + 16);
      *v43 = v49;
      v44 = v50;
      LOBYTE(BuiltinType) = sub_1001222F0(a3, this, __p, v51, v43);
      sub_100123F34(v40);
      v36 = *(this + 14);
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v38 < 0 == v37)
      {
        *(this + 14) = v38;
      }

      sub_100045760(v41);
      return BuiltinType & 1;
    }

    v41[0] = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || (v32 = *v31, (v32 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
      {
        goto LABEL_45;
      }

      v32 = v41[0];
    }

    else
    {
      v41[0] = *v31;
      *(this + 1) = v31 + 1;
    }

    sub_100045794(__p, v32);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
      goto LABEL_101;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_100122248(a3, __p, v43, v51);
    goto LABEL_100;
  }

  v40[0] = 0;
  v14 = *(this + 1);
  if (v14 >= *(this + 2) || *v14 < 0)
  {
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v40) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v40[0] = *v14;
    *(this + 1) = v14 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType();
  WireTypeForType = wis::reflect::getWireTypeForType();
  *v43 = this;
  v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40[0]);
  v43[2] = v16;
  __p[0] = 0;
  __p[1] = 0;
  v48 = 0;
  while (1)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if (v17 < 1)
    {
      break;
    }

    *v41 = 0;
    sub_10004490C(__p, v41);
    if (WireTypeForType > 1)
    {
      if (WireTypeForType == 5)
      {
        v41[0] = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v41);
        *(__p[1] - 1) = v41[0];
        goto LABEL_39;
      }

      if (WireTypeForType == 2)
      {
        goto LABEL_42;
      }
    }

    else if (WireTypeForType)
    {
      if (WireTypeForType == 1)
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p[1] - 1);
LABEL_39:
        if ((LittleEndian32Fallback & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = (__p[1] - 8);
      v20 = *(this + 1);
      if (v20 >= *(this + 2) || (v21 = *v20, (v21 & 0x8000000000000000) != 0))
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v19);
        goto LABEL_39;
      }

      *v19 = v21;
      *(this + 1) = v20 + 1;
    }
  }

  LOBYTE(BuiltinType) = sub_100121B34(v12, __p, a3, a2, &v51, &UnpackedType);
LABEL_42:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
  if (v17 > 0)
  {
LABEL_45:
    if (!v51 && (*(this + 36) & 1) != 0)
    {
LABEL_47:
      LOBYTE(BuiltinType) = 1;
      return BuiltinType & 1;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
LABEL_113:
  }

  return BuiltinType & 1;
}

void sub_1001217CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100121878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (sub_10000BA58(a1, a3) + 2);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v6, a1);
  *(a1 + 48) = v6;
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a4;
  return a1;
}

void sub_1001218DC(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v2);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100121900(int a1, uint64_t a2, uint64_t a3, __int128 *a4, int *a5, int *a6)
{
  switch(a1)
  {
    case 1:
    case 15:
      wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
      v18 = v13;
      v16 = *a4;
      v17 = *(a4 + 2);
      v14 = *a6;
      return sub_100122834(a3, &v18, &v16, *a5);
    case 2:
    case 16:
      wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
      LODWORD(v18) = v11;
      v16 = *a4;
      v17 = *(a4 + 2);
      v12 = *a6;
      return sub_100122A10(a3, &v18, &v16, *a5);
    case 3:
    case 11:
    case 17:
    case 25:
      v18 = a2;
      goto LABEL_9;
    case 4:
    case 10:
    case 18:
    case 24:
      v16 = *a4;
      v17 = *(a4 + 2);
      v18 = a2;
      return sub_100122744(a3, &v18, &v16, *a5, *a6);
    case 5:
    case 19:
      v18 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
LABEL_9:
      v16 = *a4;
      v17 = *(a4 + 2);
      return sub_100122BEC(a3, &v18, &v16, *a5, *a6);
    case 6:
    case 20:
      LODWORD(v18) = a2;
      goto LABEL_11;
    case 7:
    case 9:
    case 21:
    case 23:
      LODWORD(v18) = a2;
      v16 = *a4;
      v17 = *(a4 + 2);
      return sub_100122920(a3, &v18, &v16, *a5, *a6);
    case 8:
    case 22:
      LODWORD(v18) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
LABEL_11:
      v16 = *a4;
      v17 = *(a4 + 2);
      result = sub_100122CDC(a3, &v18, &v16, *a5, *a6);
      break;
    case 12:
    case 26:
      LOBYTE(v18) = a2 != 0;
      v16 = *a4;
      v17 = *(a4 + 2);
      result = sub_100122AFC(a3, &v18, &v16, *a5, *a6);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  return result;
}

uint64_t sub_100121B34(int a1, int **a2, uint64_t a3, uint64_t a4, _DWORD *a5, int *a6)
{
  if (a1 > 20)
  {
    if (a1 <= 23)
    {
      if (a1 == 21)
      {
        sub_100044D0C(a2, __p);
        v11 = *a6;
        v27 = *(*(a3 + 176) + 8);
        if (*(a3 + 168) == ((v27 - **(a3 + 176)) >> 2) - 1 && *(v27 - 4) == *a5)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (a1 == 22)
        {
          sub_100045278(a2, __p);
          v15 = *a6;
          v35 = *(*(a3 + 176) + 8);
          if (*(a3 + 168) == ((v35 - **(a3 + 176)) >> 2) - 1 && *(v35 - 4) == *a5)
          {
            goto LABEL_49;
          }

          goto LABEL_19;
        }

        sub_100044D0C(a2, __p);
        v11 = *a6;
        v12 = *(*(a3 + 176) + 8);
        if (*(a3 + 168) == ((v12 - **(a3 + 176)) >> 2) - 1 && *(v12 - 4) == *a5)
        {
          goto LABEL_49;
        }
      }

      v13 = *(a3 + 48);
      v14 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
      sub_100048BBC(*(a3 + 48), v11, __p);
      goto LABEL_54;
    }

    if (a1 == 26)
    {
      sub_100044F80(a2, __p);
      v29 = *a6;
      v30 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) == ((v30 - **(a3 + 176)) >> 2) - 1 && *(v30 - 4) == *a5)
      {
        *(a3 + 160) = 1;
      }

      else
      {
        v38 = *(a3 + 48);
        v39 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v38, v39);
        sub_100049F70(*(a3 + 48), v29, __p);
      }

      v40 = __p[0];
      if (__p[0])
      {
        goto LABEL_56;
      }

      return 1;
    }

    if (a1 == 25)
    {
      sub_100045004(a2, __p);
      v9 = *a6;
      v37 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) != ((v37 - **(a3 + 176)) >> 2) - 1 || *(v37 - 4) != *a5)
      {
        goto LABEL_53;
      }

      goto LABEL_49;
    }

    if (a1 != 24)
    {
      goto LABEL_58;
    }

    sub_100044B50(a2, __p);
    v19 = *a6;
    v20 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) == ((v20 - **(a3 + 176)) >> 2) - 1 && *(v20 - 4) == *a5)
    {
      goto LABEL_49;
    }

LABEL_25:
    v21 = *(a3 + 48);
    v22 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v21, v22);
    sub_100047808(*(a3 + 48), v19, __p);
    goto LABEL_54;
  }

  if (a1 > 17)
  {
    if (a1 != 18)
    {
      if (a1 != 19)
      {
        sub_100044D0C(a2, __p);
        v15 = *a6;
        v16 = *(*(a3 + 176) + 8);
        if (*(a3 + 168) == ((v16 - **(a3 + 176)) >> 2) - 1 && *(v16 - 4) == *a5)
        {
          goto LABEL_49;
        }

LABEL_19:
        v17 = *(a3 + 48);
        v18 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v17, v18);
        sub_10004B5E8(*(a3 + 48), v15, __p);
        goto LABEL_54;
      }

      sub_10004513C(a2, __p);
      v9 = *a6;
      v36 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) != ((v36 - **(a3 + 176)) >> 2) - 1 || *(v36 - 4) != *a5)
      {
        goto LABEL_53;
      }

LABEL_49:
      *(a3 + 160) = 1;
      goto LABEL_54;
    }

    sub_100044B50(a2, __p);
    v19 = *a6;
    v28 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) == ((v28 - **(a3 + 176)) >> 2) - 1 && *(v28 - 4) == *a5)
    {
      goto LABEL_49;
    }

    goto LABEL_25;
  }

  if (a1 == 15)
  {
    sub_100044BD0(a2, __p);
    v23 = *a6;
    v24 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) != ((v24 - **(a3 + 176)) >> 2) - 1 || *(v24 - 4) != *a5)
    {
      v25 = *(a3 + 48);
      v26 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v25, v26);
      sub_1000481D0(*(a3 + 48), v23, __p);
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  if (a1 == 16)
  {
    sub_100044E44(a2, __p);
    v31 = *a6;
    v32 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) != ((v32 - **(a3 + 176)) >> 2) - 1 || *(v32 - 4) != *a5)
    {
      v33 = *(a3 + 48);
      v34 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v34);
      sub_100049584(*(a3 + 48), v31, __p);
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  if (a1 != 17)
  {
LABEL_58:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  sub_100045004(a2, __p);
  v9 = *a6;
  v10 = *(*(a3 + 176) + 8);
  if (*(a3 + 168) == ((v10 - **(a3 + 176)) >> 2) - 1 && *(v10 - 4) == *a5)
  {
    goto LABEL_49;
  }

LABEL_53:
  v41 = *(a3 + 48);
  v42 = wis::reflect::encodeTag();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v41, v42);
  sub_10004AC20(*(a3 + 48), v9, __p);
LABEL_54:
  v40 = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
LABEL_56:
    operator delete(v40);
  }

  return 1;
}

uint64_t sub_100122190(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v6 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v6 - **(a1 + 176)) >> 2) - 1 && *(v6 - 4) == a4)
  {
    *(a1 + 160) = 1;
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v7, v8);
    v9 = *(a1 + 48);
    v10 = a2[1];
    if (*(a2 + 23) >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v11 = v10;
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v9, v11);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v9, a2, v11);
  }

  return 1;
}

uint64_t sub_100122248(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v6 - **(a1 + 176)) >> 2) - 1 && *(v6 - 4) == a4)
  {
    *(a1 + 160) = 1;
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v7, v8);
    v9 = *(a1 + 48);
    v10 = *a2;
    v11 = *(a2 + 8) - *a2;
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v9, v11);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v9, v10, v11);
  }

  return 1;
}

uint64_t sub_1001222F0(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, int a4, __int128 *a5)
{
  *v24 = *a3;
  v25 = *(a3 + 16);
  *__p = *a5;
  v28 = *(a5 + 2);
  v8 = sub_100122DCC(a1, v24, a4);
  if (!v8)
  {
    v24[0] = 0;
    LODWORD(__p[0]) = 0;
    wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(a2, v24, __p);
    LODWORD(__p[0]) = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2);
    if ((__p[0] & 0x80000000) == 0)
    {
      v13 = *(a1 + 48);
      v14 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
      v15 = *(a1 + 48);
      v16 = v24[0];
      LODWORD(v13) = __p[0];
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v15, SLODWORD(__p[0]));
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v15, v16, v13);
    }

    return 1;
  }

  v9 = v8;
  if (v8 == 3)
  {
    return 0;
  }

  if (v8 == 1)
  {
    return 1;
  }

  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  sub_10000BA58(v26, __p);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v24, v26);
  v10 = *(a1 + 48);
  *(a1 + 48) = v24;
  while (1)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2);
    if (v11 < 1)
    {
      break;
    }

    v22 = *a5;
    v23 = *(a5 + 2);
    if ((sub_100122E30(a2, &v22, a1) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v9 = 0;
  --*(a1 + 168);
  *(a1 + 48) = v10;
LABEL_13:
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v24);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v26);
  if (v11 > 0 || v9 == 3)
  {
    v12 = 0;
  }

  else
  {
    if (!v9)
    {
      v17 = *(a1 + 48);
      v18 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v17, v18);
      v19 = *(a1 + 48);
      v20 = __p[0];
      LODWORD(v17) = LODWORD(__p[1]) - LODWORD(__p[0]);
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v19, __p[1] - __p[0]);
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v19, v20, v17);
    }

    v12 = 1;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v12;
}

void sub_100122504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100122548(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v7 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) != ((v7 - **(a1 + 176)) >> 2) - 1 || *(v7 - 4) != a4)
  {
    if (a5 == 5)
    {
      v14 = *(a1 + 48);
      v15 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v14, v15);
      v10 = *(a1 + 48);
      WireTypeForType = wis::reflect::getWireTypeForType();
      if (WireTypeForType != 5)
      {
        v13 = a2;
        if (WireTypeForType != 1)
        {
          if (WireTypeForType)
          {
            return 1;
          }

          v12 = v10;
          goto LABEL_14;
        }

        v17 = v10;
LABEL_18:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v17, v13);
        return 1;
      }
    }

    else
    {
      if (a5 > 1)
      {
        return 1;
      }

      v8 = *(a1 + 48);
      v9 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v8, v9);
      v10 = *(a1 + 48);
      v11 = wis::reflect::getWireTypeForType();
      if (v11 != 5)
      {
        if (v11 != 1)
        {
          if (v11)
          {
            return 1;
          }

          v12 = v10;
          v13 = a2;
LABEL_14:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v12, v13);
          return 1;
        }

        v17 = v10;
        v13 = a2;
        goto LABEL_18;
      }
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v10, a2);
    return 1;
  }

  *(a1 + 160) = 1;
  return 1;
}

uint64_t sub_1001226A0(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4, int a5)
{
  v8 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v8 - **(a1 + 176)) >> 2) - 1 && *(v8 - 4) == a5)
  {
    *(a1 + 160) = 1;
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, a3);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v11, a2, a3);
  }

  return 1;
}

uint64_t sub_100122744(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v8 - **(a1 + 176)) >> 2) - 1 && *(v8 - 4) == a4)
  {
    *(a1 + 160) = 1;
  }

  else
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_100047378(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}

uint64_t sub_100122834(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v6 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v6 - **(a1 + 176)) >> 2) - 1 && *(v6 - 4) == a4)
  {
    *(a1 + 160) = 1;
  }

  else
  {
    v7 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v8 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v7, v8);
    v9 = *(a1 + 48);
    v10 = *a2;
    v11 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::encode();
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v9, v11);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v9, v11);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v9, v11);
        break;
    }
  }

  return 1;
}

uint64_t sub_100122920(uint64_t a1, unsigned int *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v8 - **(a1 + 176)) >> 2) - 1 && *(v8 - 4) == a4)
  {
    *(a1 + 160) = 1;
  }

  else
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_100047468(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}

uint64_t sub_100122A10(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  v6 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v6 - **(a1 + 176)) >> 2) - 1 && *(v6 - 4) == a4)
  {
    *(a1 + 160) = 1;
  }

  else
  {
    v7 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v8 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v7, v8);
    v9 = *(a1 + 48);
    v10 = *a2;
    v11 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::encode();
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v9, v11);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v9, v11);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v9, v11);
        break;
    }
  }

  return 1;
}

uint64_t sub_100122AFC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v8 - **(a1 + 176)) >> 2) - 1 && *(v8 - 4) == a4)
  {
    *(a1 + 160) = 1;
  }

  else
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_100047554(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}

uint64_t sub_100122BEC(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v8 - **(a1 + 176)) >> 2) - 1 && *(v8 - 4) == a4)
  {
    *(a1 + 160) = 1;
  }

  else
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_10004762C(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}

uint64_t sub_100122CDC(uint64_t a1, unsigned int *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v8 - **(a1 + 176)) >> 2) - 1 && *(v8 - 4) == a4)
  {
    *(a1 + 160) = 1;
  }

  else
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_10004771C(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}

uint64_t sub_100122DCC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 168);
  v4 = **(a1 + 176);
  v5 = *(*(a1 + 176) + 8);
  v6 = (v5 - v4) >> 2;
  if (v3 == v6 - 1 && *(v5 - 4) == a3)
  {
    v7 = 1;
    *(a1 + 160) = 1;
  }

  else if (v3 < v6 && *(v4 + 4 * v3) == a3)
  {
    *(a1 + 168) = v3 + 1;
    return 2;
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_100122E30(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (*(this + 36))
    {
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback, a2);
  v9 = v8;
  v49 = HIDWORD(v8);
  *__p = *a2;
  v51 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *__p = v47;
  v51 = v48;
  BuiltinType = MetadataHelper::getBuiltinType();
  v46 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType();
  v12 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      __p[0] = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p) & 1) == 0)
          {
            if (!v49 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

LABEL_12:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }
        }

        else
        {
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, __p) & 1) == 0)
            {
              if (!v49 && (*(this + 36) & 1) != 0)
              {
                goto LABEL_47;
              }

              goto LABEL_12;
            }
          }

          else
          {
            __p[0] = *v26;
            *(this + 1) = v26 + 1;
          }
        }

        goto LABEL_77;
      }

      if (v9 != 2)
      {
        if (v9 == 5)
        {
          v43[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43) & 1) == 0)
          {
            if (!v49 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }

          __p[0] = v43[0];
        }

LABEL_77:
        v33 = sub_100123668(BuiltinType, __p[0], a3, a2, &v49, &v46);
LABEL_78:
        LOBYTE(BuiltinType) = v33;
        return BuiltinType & 1;
      }

      if (!v49 && (*(this + 36) & 1) != 0)
      {
        goto LABEL_47;
      }

LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parsing failed in metric");
      goto LABEL_113;
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_45;
      }

      v41[0] = 0;
      v23 = *(this + 1);
      if (v23 >= *(this + 2) || *v23 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v41[0] = *v23;
        *(this + 1) = v23 + 1;
      }

      __p[0] = 0;
      __p[1] = 0;
      v51 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        *v43 = *a2;
        v44 = *(a2 + 16);
        LOBYTE(BuiltinType) = sub_100122190(a3, __p, v43, v49);
      }

      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }

      v35 = __p[0];
      goto LABEL_103;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_45;
        }

        *v43 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v51 = *(a2 + 16);
        v28 = v49;
        v29 = a3;
        v30 = 1;
      }

      else
      {
        *v43 = 0;
        if (!sub_1000448B4(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v51 = *(a2 + 16);
        v28 = v49;
        v29 = a3;
        v30 = 0;
      }

LABEL_108:
      v33 = sub_100122548(v29, v27, __p, v28, v30);
      goto LABEL_78;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_45;
      }

      v43[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43))
      {
        goto LABEL_45;
      }

      v27 = v43[0];
      *__p = *a2;
      v51 = *(a2 + 16);
      v28 = v49;
      v29 = a3;
      v30 = 5;
      goto LABEL_108;
    }

    v41[0] = 0;
    if ((sub_1000448E0(this, v41) & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_100045794(__p, v41[0]);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
LABEL_101:
      v35 = __p[0];
      if (!__p[0])
      {
        goto LABEL_104;
      }

      __p[1] = __p[0];
LABEL_103:
      operator delete(v35);
LABEL_104:
      if ((String & 1) == 0)
      {
        goto LABEL_45;
      }

      return BuiltinType & 1;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001226A0(a3, __p[0], __p[1] - __p[0], v43, v49);
LABEL_100:
    LOBYTE(BuiltinType) = v39;
    goto LABEL_101;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_45;
      }

      UnpackedType = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || (v25 = *v24, (v25 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &UnpackedType))
        {
          goto LABEL_45;
        }

        v25 = UnpackedType;
      }

      else
      {
        UnpackedType = *v24;
        *(this + 1) = v24 + 1;
      }

      *v41 = this;
      v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
      ++*(this + 14);
      *v40 = this;
      *__p = *a2;
      v51 = *(a2 + 16);
      *v43 = v47;
      v44 = v48;
      LOBYTE(BuiltinType) = sub_1001222F0(a3, this, __p, v49, v43);
      sub_100123EF8(v40);
      v36 = *(this + 14);
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v38 < 0 == v37)
      {
        *(this + 14) = v38;
      }

      sub_100045760(v41);
      return BuiltinType & 1;
    }

    v41[0] = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || (v32 = *v31, (v32 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
      {
        goto LABEL_45;
      }

      v32 = v41[0];
    }

    else
    {
      v41[0] = *v31;
      *(this + 1) = v31 + 1;
    }

    sub_100045794(__p, v32);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
      goto LABEL_101;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_100122248(a3, __p, v43, v49);
    goto LABEL_100;
  }

  v40[0] = 0;
  v14 = *(this + 1);
  if (v14 >= *(this + 2) || *v14 < 0)
  {
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v40) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v40[0] = *v14;
    *(this + 1) = v14 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType();
  WireTypeForType = wis::reflect::getWireTypeForType();
  *v43 = this;
  v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40[0]);
  v43[2] = v16;
  __p[0] = 0;
  __p[1] = 0;
  v51 = 0;
  while (1)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if (v17 < 1)
    {
      break;
    }

    *v41 = 0;
    sub_10004490C(__p, v41);
    if (WireTypeForType > 1)
    {
      if (WireTypeForType == 5)
      {
        v41[0] = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v41);
        *(__p[1] - 1) = v41[0];
        goto LABEL_39;
      }

      if (WireTypeForType == 2)
      {
        goto LABEL_42;
      }
    }

    else if (WireTypeForType)
    {
      if (WireTypeForType == 1)
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p[1] - 1);
LABEL_39:
        if ((LittleEndian32Fallback & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = (__p[1] - 8);
      v20 = *(this + 1);
      if (v20 >= *(this + 2) || (v21 = *v20, (v21 & 0x8000000000000000) != 0))
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v19);
        goto LABEL_39;
      }

      *v19 = v21;
      *(this + 1) = v20 + 1;
    }
  }

  LOBYTE(BuiltinType) = sub_10012389C(v12, __p, a3, a2, &v49, &UnpackedType);
LABEL_42:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
  if (v17 > 0)
  {
LABEL_45:
    if (!v49 && (*(this + 36) & 1) != 0)
    {
LABEL_47:
      LOBYTE(BuiltinType) = 1;
      return BuiltinType & 1;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
LABEL_113:
  }

  return BuiltinType & 1;
}

void sub_1001235BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100123668(int a1, uint64_t a2, uint64_t a3, __int128 *a4, int *a5, int *a6)
{
  switch(a1)
  {
    case 1:
    case 15:
      wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
      v18 = v13;
      v16 = *a4;
      v17 = *(a4 + 2);
      v14 = *a6;
      return sub_100122834(a3, &v18, &v16, *a5);
    case 2:
    case 16:
      wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
      LODWORD(v18) = v11;
      v16 = *a4;
      v17 = *(a4 + 2);
      v12 = *a6;
      return sub_100122A10(a3, &v18, &v16, *a5);
    case 3:
    case 11:
    case 17:
    case 25:
      v18 = a2;
      goto LABEL_9;
    case 4:
    case 10:
    case 18:
    case 24:
      v16 = *a4;
      v17 = *(a4 + 2);
      v18 = a2;
      return sub_100122744(a3, &v18, &v16, *a5, *a6);
    case 5:
    case 19:
      v18 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
LABEL_9:
      v16 = *a4;
      v17 = *(a4 + 2);
      return sub_100122BEC(a3, &v18, &v16, *a5, *a6);
    case 6:
    case 20:
      LODWORD(v18) = a2;
      goto LABEL_11;
    case 7:
    case 9:
    case 21:
    case 23:
      LODWORD(v18) = a2;
      v16 = *a4;
      v17 = *(a4 + 2);
      return sub_100122920(a3, &v18, &v16, *a5, *a6);
    case 8:
    case 22:
      LODWORD(v18) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
LABEL_11:
      v16 = *a4;
      v17 = *(a4 + 2);
      result = sub_100122CDC(a3, &v18, &v16, *a5, *a6);
      break;
    case 12:
    case 26:
      LOBYTE(v18) = a2 != 0;
      v16 = *a4;
      v17 = *(a4 + 2);
      result = sub_100122AFC(a3, &v18, &v16, *a5, *a6);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  return result;
}

uint64_t sub_10012389C(int a1, int **a2, uint64_t a3, uint64_t a4, _DWORD *a5, int *a6)
{
  if (a1 > 20)
  {
    if (a1 <= 23)
    {
      if (a1 == 21)
      {
        sub_100044D0C(a2, __p);
        v11 = *a6;
        v27 = *(*(a3 + 176) + 8);
        if (*(a3 + 168) == ((v27 - **(a3 + 176)) >> 2) - 1 && *(v27 - 4) == *a5)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (a1 == 22)
        {
          sub_100045278(a2, __p);
          v15 = *a6;
          v35 = *(*(a3 + 176) + 8);
          if (*(a3 + 168) == ((v35 - **(a3 + 176)) >> 2) - 1 && *(v35 - 4) == *a5)
          {
            goto LABEL_49;
          }

          goto LABEL_19;
        }

        sub_100044D0C(a2, __p);
        v11 = *a6;
        v12 = *(*(a3 + 176) + 8);
        if (*(a3 + 168) == ((v12 - **(a3 + 176)) >> 2) - 1 && *(v12 - 4) == *a5)
        {
          goto LABEL_49;
        }
      }

      v13 = *(a3 + 48);
      v14 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
      sub_100048BBC(*(a3 + 48), v11, __p);
      goto LABEL_54;
    }

    if (a1 == 26)
    {
      sub_100044F80(a2, __p);
      v29 = *a6;
      v30 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) == ((v30 - **(a3 + 176)) >> 2) - 1 && *(v30 - 4) == *a5)
      {
        *(a3 + 160) = 1;
      }

      else
      {
        v38 = *(a3 + 48);
        v39 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v38, v39);
        sub_100049F70(*(a3 + 48), v29, __p);
      }

      v40 = __p[0];
      if (__p[0])
      {
        goto LABEL_56;
      }

      return 1;
    }

    if (a1 == 25)
    {
      sub_100045004(a2, __p);
      v9 = *a6;
      v37 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) != ((v37 - **(a3 + 176)) >> 2) - 1 || *(v37 - 4) != *a5)
      {
        goto LABEL_53;
      }

      goto LABEL_49;
    }

    if (a1 != 24)
    {
      goto LABEL_58;
    }

    sub_100044B50(a2, __p);
    v19 = *a6;
    v20 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) == ((v20 - **(a3 + 176)) >> 2) - 1 && *(v20 - 4) == *a5)
    {
      goto LABEL_49;
    }

LABEL_25:
    v21 = *(a3 + 48);
    v22 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v21, v22);
    sub_100047808(*(a3 + 48), v19, __p);
    goto LABEL_54;
  }

  if (a1 > 17)
  {
    if (a1 != 18)
    {
      if (a1 != 19)
      {
        sub_100044D0C(a2, __p);
        v15 = *a6;
        v16 = *(*(a3 + 176) + 8);
        if (*(a3 + 168) == ((v16 - **(a3 + 176)) >> 2) - 1 && *(v16 - 4) == *a5)
        {
          goto LABEL_49;
        }

LABEL_19:
        v17 = *(a3 + 48);
        v18 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v17, v18);
        sub_10004B5E8(*(a3 + 48), v15, __p);
        goto LABEL_54;
      }

      sub_10004513C(a2, __p);
      v9 = *a6;
      v36 = *(*(a3 + 176) + 8);
      if (*(a3 + 168) != ((v36 - **(a3 + 176)) >> 2) - 1 || *(v36 - 4) != *a5)
      {
        goto LABEL_53;
      }

LABEL_49:
      *(a3 + 160) = 1;
      goto LABEL_54;
    }

    sub_100044B50(a2, __p);
    v19 = *a6;
    v28 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) == ((v28 - **(a3 + 176)) >> 2) - 1 && *(v28 - 4) == *a5)
    {
      goto LABEL_49;
    }

    goto LABEL_25;
  }

  if (a1 == 15)
  {
    sub_100044BD0(a2, __p);
    v23 = *a6;
    v24 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) != ((v24 - **(a3 + 176)) >> 2) - 1 || *(v24 - 4) != *a5)
    {
      v25 = *(a3 + 48);
      v26 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v25, v26);
      sub_1000481D0(*(a3 + 48), v23, __p);
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  if (a1 == 16)
  {
    sub_100044E44(a2, __p);
    v31 = *a6;
    v32 = *(*(a3 + 176) + 8);
    if (*(a3 + 168) != ((v32 - **(a3 + 176)) >> 2) - 1 || *(v32 - 4) != *a5)
    {
      v33 = *(a3 + 48);
      v34 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v34);
      sub_100049584(*(a3 + 48), v31, __p);
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  if (a1 != 17)
  {
LABEL_58:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  sub_100045004(a2, __p);
  v9 = *a6;
  v10 = *(*(a3 + 176) + 8);
  if (*(a3 + 168) == ((v10 - **(a3 + 176)) >> 2) - 1 && *(v10 - 4) == *a5)
  {
    goto LABEL_49;
  }

LABEL_53:
  v41 = *(a3 + 48);
  v42 = wis::reflect::encodeTag();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v41, v42);
  sub_10004AC20(*(a3 + 48), v9, __p);
LABEL_54:
  v40 = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
LABEL_56:
    operator delete(v40);
  }

  return 1;
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_100123EF8(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_100123F34(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

void *sub_100123F70(void *a1)
{
  *a1 = off_1002B3018;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100123FC0(void *a1)
{
  *a1 = off_1002B3018;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_1001240C0(uint64_t a1, void *a2)
{
  *a2 = off_1002B3018;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  result = sub_10000A964((a2 + 1), *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
  a2[4] = *(a1 + 32);
  return result;
}

void sub_100124124(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_10012413C(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t sub_100124180(uint64_t a1, void *a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v2 = a2[1];
  if (!v2)
  {
    v2 = *(*a2 + 8);
  }

  v3 = *v2;
  v4 = v2[1] - *v2;
  v14[0] = 0;
  v14[1] = v3;
  v14[2] = v3 + v4;
  v15 = v4;
  v16 = 0;
  v17 = 0;
  v19 = xmmword_100240B70;
  v18 = v4;
  v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v21 = 0;
  v22 = 0;
  v5 = *(a1 + 32);
  sub_100124AEC(v9, (a2 + 2), &v23, a1 + 8);
  v13 = v5;
  v8[0] = 0;
  v8[1] = 0;
  v8[2] = 0xFFFFFFFFLL;
  sub_10012433C(v14, v8, v9);
  v6 = v12[64];
  sub_1000447B8(v12);
  if (v11)
  {
    sub_100008350(v11);
  }

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(&v10);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v9);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v14);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v6;
}

void sub_100124294(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100044768(va);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream((v5 - 136));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10012426CLL);
  }

  v8 = *(v5 - 56);
  if (v8)
  {
    *(v5 - 48) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001242F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012433C(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (*(this + 36))
    {
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback, a2);
  v9 = v8;
  v46 = HIDWORD(v8);
  *__p = *a2;
  v43 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *__p = v44;
  v43 = v45;
  BuiltinType = MetadataHelper::getBuiltinType();
  v41 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType();
  v12 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      __p[0] = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p) & 1) == 0)
          {
            if (!v46 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

LABEL_12:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_112;
          }
        }

        else
        {
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, __p) & 1) == 0)
            {
              if (!v46 && (*(this + 36) & 1) != 0)
              {
                goto LABEL_47;
              }

              goto LABEL_12;
            }
          }

          else
          {
            __p[0] = *v26;
            *(this + 1) = v26 + 1;
          }
        }

LABEL_77:
        LOBYTE(BuiltinType) = sub_100124B74(BuiltinType, __p[0], a3, a2, &v46, &v41);
        return BuiltinType & 1;
      }

      if (v9 != 2)
      {
        if (v9 == 5)
        {
          v38[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v38) & 1) == 0)
          {
            if (!v46 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_112;
          }

          __p[0] = v38[0];
        }

        goto LABEL_77;
      }

      if (!v46 && (*(this + 36) & 1) != 0)
      {
        goto LABEL_47;
      }

LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parsing failed in metric");
      goto LABEL_112;
    }

    if (!DecodingType)
    {
      if (v9 > 1u)
      {
        if (v9 == 2)
        {
          v38[0] = 0;
          if ((sub_1000448E0(this, v38) & 1) == 0)
          {
            goto LABEL_45;
          }

          sub_100045794(__p, v38[0]);
          Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v38[0]);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if ((Raw & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_45;
          }

          LODWORD(__p[0]) = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, __p) & 1) == 0)
          {
            goto LABEL_45;
          }
        }
      }

      else if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_45;
        }

        __p[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p))
        {
          goto LABEL_45;
        }
      }

      else
      {
        __p[0] = 0;
        if ((sub_1000448B4(this, __p) & 1) == 0)
        {
          goto LABEL_45;
        }
      }

LABEL_47:
      LOBYTE(BuiltinType) = 1;
      return BuiltinType & 1;
    }

    if (DecodingType != 13)
    {
      goto LABEL_45;
    }

    v36[0] = 0;
    v23 = *(this + 1);
    if (v23 >= *(this + 2) || *v23 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v36))
      {
        goto LABEL_45;
      }
    }

    else
    {
      v36[0] = *v23;
      *(this + 1) = v23 + 1;
    }

    __p[0] = 0;
    __p[1] = 0;
    v43 = 0;
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
    if (String)
    {
      *v38 = *a2;
      v39 = *(a2 + 16);
      LOBYTE(BuiltinType) = sub_1001254C8(a3, __p, v38, v46);
    }

    if (SHIBYTE(v43) < 0)
    {
      v30 = __p[0];
LABEL_101:
      operator delete(v30);
      goto LABEL_102;
    }

    goto LABEL_102;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_45;
      }

      UnpackedType = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || (v25 = *v24, (v25 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &UnpackedType))
        {
          goto LABEL_45;
        }

        v25 = UnpackedType;
      }

      else
      {
        UnpackedType = *v24;
        *(this + 1) = v24 + 1;
      }

      *v36 = this;
      v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
      ++*(this + 14);
      *v35 = this;
      *__p = *a2;
      v43 = *(a2 + 16);
      *v38 = v44;
      v39 = v45;
      LOBYTE(BuiltinType) = sub_100125630(a3, this, __p, v46, v38);
      sub_10012770C(v35);
      v31 = *(this + 14);
      v32 = __OFSUB__(v31, 1);
      v33 = v31 - 1;
      if (v33 < 0 == v32)
      {
        *(this + 14) = v33;
      }

      sub_100045760(v36);
      return BuiltinType & 1;
    }

    v36[0] = 0;
    v27 = *(this + 1);
    if (v27 >= *(this + 2) || (v28 = *v27, (v28 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v36))
      {
        goto LABEL_45;
      }

      v28 = v36[0];
    }

    else
    {
      v36[0] = *v27;
      *(this + 1) = v27 + 1;
    }

    sub_100045794(__p, v28);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v36[0]);
    if (String)
    {
      *v38 = *a2;
      v39 = *(a2 + 16);
      LOBYTE(BuiltinType) = sub_100125584(a3, __p, v38, v46);
    }

    v30 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
      goto LABEL_101;
    }

LABEL_102:
    if ((String & 1) == 0)
    {
      goto LABEL_45;
    }

    return BuiltinType & 1;
  }

  v35[0] = 0;
  v14 = *(this + 1);
  if (v14 >= *(this + 2) || *v14 < 0)
  {
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v35[0] = *v14;
    *(this + 1) = v14 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType();
  WireTypeForType = wis::reflect::getWireTypeForType();
  *v38 = this;
  v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35[0]);
  v38[2] = v16;
  __p[0] = 0;
  __p[1] = 0;
  v43 = 0;
  while (1)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if (v17 < 1)
    {
      break;
    }

    *v36 = 0;
    sub_10004490C(__p, v36);
    if (WireTypeForType > 1)
    {
      if (WireTypeForType == 5)
      {
        v36[0] = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v36);
        *(__p[1] - 1) = v36[0];
        goto LABEL_39;
      }

      if (WireTypeForType == 2)
      {
        goto LABEL_42;
      }
    }

    else if (WireTypeForType)
    {
      if (WireTypeForType == 1)
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p[1] - 1);
LABEL_39:
        if ((LittleEndian32Fallback & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = (__p[1] - 8);
      v20 = *(this + 1);
      if (v20 >= *(this + 2) || (v21 = *v20, (v21 & 0x8000000000000000) != 0))
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v19);
        goto LABEL_39;
      }

      *v19 = v21;
      *(this + 1) = v20 + 1;
    }
  }

  LOBYTE(BuiltinType) = sub_100124DA8(v12, __p, a3, a2, &v46, &UnpackedType);
LABEL_42:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
  if (v17 > 0)
  {
LABEL_45:
    if (!v46 && (*(this + 36) & 1) != 0)
    {
      goto LABEL_47;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
LABEL_112:
  }

  return BuiltinType & 1;
}

void sub_100124A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100124AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (sub_10000BA58(a1, a3) + 2);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v6, a1);
  *(a1 + 48) = v6;
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a4;
  return a1;
}

void sub_100124B50(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v2);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100124B74(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
{
  switch(a1)
  {
    case 1:
    case 15:
      wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
      v18 = v13;
      v16 = *a4;
      v17 = *(a4 + 16);
      v14 = *a6;
      return sub_100125978(a3, &v18, &v16, *a5);
    case 2:
    case 16:
      wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
      LODWORD(v18) = v11;
      v16 = *a4;
      v17 = *(a4 + 16);
      v12 = *a6;
      return sub_100125B54(a3, &v18, &v16, *a5);
    case 3:
    case 11:
    case 17:
    case 25:
      v18 = a2;
      goto LABEL_9;
    case 4:
    case 10:
    case 18:
    case 24:
      v16 = *a4;
      v17 = *(a4 + 16);
      v18 = a2;
      return sub_100125888(a3, &v18, &v16, *a5, *a6);
    case 5:
    case 19:
      v18 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
LABEL_9:
      v16 = *a4;
      v17 = *(a4 + 16);
      return sub_100125D30(a3, &v18, &v16, *a5, *a6);
    case 6:
    case 20:
      LODWORD(v18) = a2;
      goto LABEL_11;
    case 7:
    case 9:
    case 21:
    case 23:
      LODWORD(v18) = a2;
      v16 = *a4;
      v17 = *(a4 + 16);
      return sub_100125A64(a3, &v18, &v16, *a5, *a6);
    case 8:
    case 22:
      LODWORD(v18) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
LABEL_11:
      v16 = *a4;
      v17 = *(a4 + 16);
      result = sub_100125E20(a3, &v18, &v16, *a5, *a6);
      break;
    case 12:
    case 26:
      LOBYTE(v18) = a2 != 0;
      v16 = *a4;
      v17 = *(a4 + 16);
      result = sub_100125C40(a3, &v18, &v16, *a5, *a6);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  return result;
}

uint64_t sub_100124DA8(int a1, uint64_t **a2, uint64_t a3, __int128 *a4, int *a5, int *a6)
{
  if (a1 <= 20)
  {
    if (a1 <= 17)
    {
      switch(a1)
      {
        case 15:
          sub_100044BD0(a2, __p);
          v48 = *a4;
          v49 = *(a4 + 2);
          v24 = *a6;
          v25 = sub_10012622C(a3, __p, &v48, *a5);
          if (v25 != 3)
          {
            if (!v25)
            {
              v26 = *(a3 + 48);
              v27 = wis::reflect::encodeTag();
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v26, v27);
              sub_1000481D0(*(a3 + 48), v24, __p);
            }

            goto LABEL_51;
          }

          goto LABEL_52;
        case 16:
          sub_100044E44(a2, __p);
          v48 = *a4;
          v49 = *(a4 + 2);
          v35 = *a6;
          v36 = sub_100126328(a3, __p, &v48, *a5);
          if (v36 != 3)
          {
            if (!v36)
            {
              v37 = *(a3 + 48);
              v38 = wis::reflect::encodeTag();
              wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v37, v38);
              sub_100049584(*(a3 + 48), v35, __p);
            }

            goto LABEL_51;
          }

          goto LABEL_52;
        case 17:
          sub_100045004(a2, __p);
          v48 = *a4;
          v49 = *(a4 + 2);
          v10 = *a6;
          v11 = sub_1001261B0(a3, __p, &v48, *a5);
          if (v11 != 3)
          {
            if (!v11)
            {
              goto LABEL_50;
            }

            goto LABEL_51;
          }

          goto LABEL_52;
      }

LABEL_60:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
    }

    if (a1 != 18)
    {
      if (a1 == 19)
      {
        sub_10004513C(a2, __p);
        v48 = *a4;
        v49 = *(a4 + 2);
        v10 = *a6;
        v40 = sub_1001261B0(a3, __p, &v48, *a5);
        if (v40 != 3)
        {
          if (!v40)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        goto LABEL_52;
      }

      sub_100044D0C(a2, __p);
      v48 = *a4;
      v49 = *(a4 + 2);
      v16 = *a6;
      v17 = sub_100126464(a3, __p, &v48, *a5);
      if (v17 == 3)
      {
        goto LABEL_52;
      }

      if (v17)
      {
        goto LABEL_51;
      }

LABEL_19:
      v18 = *(a3 + 48);
      v19 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v18, v19);
      sub_10004B5E8(*(a3 + 48), v16, __p);
      goto LABEL_51;
    }

    sub_100044B50(a2, __p);
    v48 = *a4;
    v49 = *(a4 + 2);
    v20 = *a6;
    v29 = sub_1001261B0(a3, __p, &v48, *a5);
    if (v29 == 3)
    {
      goto LABEL_52;
    }

    if (v29)
    {
      goto LABEL_51;
    }

LABEL_25:
    v22 = *(a3 + 48);
    v23 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v22, v23);
    sub_100047808(*(a3 + 48), v20, __p);
    goto LABEL_51;
  }

  if (a1 <= 23)
  {
    if (a1 == 21)
    {
      sub_100044D0C(a2, __p);
      v48 = *a4;
      v49 = *(a4 + 2);
      v12 = *a6;
      v28 = sub_1001262AC(a3, __p, &v48, *a5);
      if (v28 == 3)
      {
        goto LABEL_52;
      }

      if (v28)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (a1 == 22)
      {
        sub_100045278(a2, __p);
        v48 = *a4;
        v49 = *(a4 + 2);
        v16 = *a6;
        v39 = sub_100126464(a3, __p, &v48, *a5);
        if (v39 == 3)
        {
          goto LABEL_52;
        }

        if (v39)
        {
          goto LABEL_51;
        }

        goto LABEL_19;
      }

      sub_100044D0C(a2, __p);
      v48 = *a4;
      v49 = *(a4 + 2);
      v12 = *a6;
      v13 = sub_1001262AC(a3, __p, &v48, *a5);
      if (v13 == 3)
      {
        goto LABEL_52;
      }

      if (v13)
      {
        goto LABEL_51;
      }
    }

    v14 = *(a3 + 48);
    v15 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v14, v15);
    sub_100048BBC(*(a3 + 48), v12, __p);
    goto LABEL_51;
  }

  if (a1 == 26)
  {
    sub_100044F80(a2, __p);
    v48 = *a4;
    v49 = *(a4 + 2);
    v30 = *a6;
    v31 = sub_1001263A8(a3, __p, &v48, *a5);
    if (v31 == 3)
    {
      v34 = 0;
    }

    else
    {
      if (!v31)
      {
        v32 = *(a3 + 48);
        v33 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v32, v33);
        sub_100049F70(*(a3 + 48), v30, __p);
      }

      v34 = 1;
    }

    v44 = __p[0];
    if (__p[0])
    {
      goto LABEL_55;
    }

    return v34;
  }

  if (a1 != 25)
  {
    if (a1 != 24)
    {
      goto LABEL_60;
    }

    sub_100044B50(a2, __p);
    v48 = *a4;
    v49 = *(a4 + 2);
    v20 = *a6;
    v21 = sub_1001261B0(a3, __p, &v48, *a5);
    if (v21 == 3)
    {
      goto LABEL_52;
    }

    if (v21)
    {
      goto LABEL_51;
    }

    goto LABEL_25;
  }

  sub_100045004(a2, __p);
  v48 = *a4;
  v49 = *(a4 + 2);
  v10 = *a6;
  v41 = sub_1001261B0(a3, __p, &v48, *a5);
  if (v41 != 3)
  {
    if (!v41)
    {
LABEL_50:
      v42 = *(a3 + 48);
      v43 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v42, v43);
      sub_10004AC20(*(a3 + 48), v10, __p);
    }

LABEL_51:
    v34 = 1;
    goto LABEL_53;
  }

LABEL_52:
  v34 = 0;
LABEL_53:
  v44 = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
LABEL_55:
    operator delete(v44);
  }

  return v34;
}

uint64_t sub_1001254C8(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v4 = a2;
  v13 = *a3;
  v14 = *(a3 + 2);
  v6 = sub_1001264E0(a1, a2, &v13, a4);
  if (v6 == 3)
  {
    return 0;
  }

  if (!v6)
  {
    v7 = *(a1 + 48);
    v8 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v7, v8);
    v9 = *(a1 + 48);
    v10 = v4[1];
    if (*(v4 + 23) >= 0)
    {
      v11 = *(v4 + 23);
    }

    else
    {
      v4 = *v4;
      v11 = v10;
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v9, v11);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v9, v4, v11);
  }

  return 1;
}

uint64_t sub_100125584(uint64_t a1, const void **a2, __int128 *a3, int a4)
{
  v13 = *a3;
  v14 = *(a3 + 2);
  v6 = sub_1001264E0(a1, a2, &v13, a4);
  if (v6 == 3)
  {
    return 0;
  }

  if (!v6)
  {
    v7 = *(a1 + 48);
    v8 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v7, v8);
    v9 = *(a1 + 48);
    v10 = *a2;
    v11 = a2[1] - *a2;
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v9, v11);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v9, v10, v11);
  }

  return 1;
}

uint64_t sub_100125630(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, int a4, __int128 *a5)
{
  *v24 = *a3;
  v25 = *(a3 + 16);
  *__p = *a5;
  v28 = *(a5 + 2);
  v8 = sub_100126540(a1, v24, a4);
  if (!v8)
  {
    v24[0] = 0;
    LODWORD(__p[0]) = 0;
    wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(a2, v24, __p);
    LODWORD(__p[0]) = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2);
    if ((__p[0] & 0x80000000) == 0)
    {
      v13 = *(a1 + 48);
      v14 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
      v15 = *(a1 + 48);
      v16 = v24[0];
      LODWORD(v13) = __p[0];
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v15, SLODWORD(__p[0]));
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v15, v16, v13);
    }

    return 1;
  }

  v9 = v8;
  if (v8 == 3)
  {
    return 0;
  }

  if (v8 == 1)
  {
    return 1;
  }

  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  sub_10000BA58(v26, __p);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v24, v26);
  v10 = *(a1 + 48);
  *(a1 + 48) = v24;
  while (1)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2);
    if (v11 < 1)
    {
      break;
    }

    v22 = *a5;
    v23 = *(a5 + 2);
    if ((sub_1001265CC(a2, &v22, a1) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v9 = 0;
  --*(a1 + 168);
  *(a1 + 48) = v10;
LABEL_13:
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v24);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v26);
  if (v11 > 0 || v9 == 3)
  {
    v12 = 0;
  }

  else
  {
    if (!v9)
    {
      v17 = *(a1 + 48);
      v18 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v17, v18);
      v19 = *(a1 + 48);
      v20 = __p[0];
      LODWORD(v17) = LODWORD(__p[1]) - LODWORD(__p[0]);
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v19, __p[1] - __p[0]);
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v19, v20, v17);
    }

    v12 = 1;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v12;
}

void sub_100125844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100125888(uint64_t a1, uint64_t *a2, __int128 *a3, int a4, int a5)
{
  v15 = *a3;
  v16 = *(a3 + 2);
  v8 = sub_100125F10(a1, a2, &v15, a4);
  if (v8 == 3)
  {
    return 0;
  }

  if (!v8)
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_100047378(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}

uint64_t sub_100125978(uint64_t a1, uint64_t *a2, __int128 *a3, int a4)
{
  v14 = *a3;
  v15 = *(a3 + 2);
  v6 = sub_100126060(a1, a2, &v14, a4);
  if (v6 == 3)
  {
    return 0;
  }

  if (!v6)
  {
    v7 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v8 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v7, v8);
    v9 = *(a1 + 48);
    v10 = *a2;
    v11 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::encode();
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v9, v11);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v9, v11);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v9, v11);
        break;
    }
  }

  return 1;
}

uint64_t sub_100125A64(uint64_t a1, unsigned int *a2, __int128 *a3, int a4, int a5)
{
  v15 = *a3;
  v16 = *(a3 + 2);
  v8 = sub_1001260B4(a1, a2, &v15, a4);
  if (v8 == 3)
  {
    return 0;
  }

  if (!v8)
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_100047468(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}

uint64_t sub_100125B54(uint64_t a1, int *a2, __int128 *a3, int a4)
{
  v14 = *a3;
  v15 = *(a3 + 2);
  v6 = sub_100126060(a1, a2, &v14, a4);
  if (v6 == 3)
  {
    return 0;
  }

  if (!v6)
  {
    v7 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v8 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v7, v8);
    v9 = *(a1 + 48);
    v10 = *a2;
    v11 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::encode();
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v9, v11);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v9, v11);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v9, v11);
        break;
    }
  }

  return 1;
}

uint64_t sub_100125C40(uint64_t a1, unsigned __int8 *a2, __int128 *a3, int a4, int a5)
{
  v15 = *a3;
  v16 = *(a3 + 2);
  v8 = sub_100126108(a1, a2, &v15, a4);
  if (v8 == 3)
  {
    return 0;
  }

  if (!v8)
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_100047554(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}

uint64_t sub_100125D30(uint64_t a1, uint64_t *a2, __int128 *a3, int a4, int a5)
{
  v15 = *a3;
  v16 = *(a3 + 2);
  v8 = sub_100125F10(a1, a2, &v15, a4);
  if (v8 == 3)
  {
    return 0;
  }

  if (!v8)
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_10004762C(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}

uint64_t sub_100125E20(uint64_t a1, int *a2, __int128 *a3, int a4, int a5)
{
  v15 = *a3;
  v16 = *(a3 + 2);
  v8 = sub_10012615C(a1, a2, &v15, a4);
  if (v8 == 3)
  {
    return 0;
  }

  if (!v8)
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_10004771C(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}

uint64_t sub_100125F10(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v4 - **(a1 + 176)) >> 2) - 1 && *(v4 - 4) == a4)
  {
    *(a1 + 160) = 1;
    v5 = *a2;
    sub_100125F64(a1);
  }

  return 1;
}

void sub_100125F64(uint64_t a1)
{
  pthread_mutex_lock(&stru_1002D4A58);
  v2 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  v3 = *(a1 + 184);
  sub_1000E2608(v2);
}
uint64_t sub_100126060(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v4 - **(a1 + 176)) >> 2) - 1 && *(v4 - 4) == a4)
  {
    *(a1 + 160) = 1;
    sub_100125F64(a1);
  }

  return 1;
}

uint64_t sub_1001260B4(uint64_t a1, unsigned int *a2, uint64_t a3, int a4)
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

uint64_t sub_100126108(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
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

uint64_t sub_10012615C(uint64_t a1, int *a2, uint64_t a3, int a4)
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

uint64_t sub_1001261B0(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v4 - **(a1 + 176)) >> 2) - 1 && *(v4 - 4) == a4)
  {
    if (*a2 != a2[1])
    {
      v5 = **a2;
      sub_100125F64(a1);
    }

    *(a1 + 160) = 1;
  }

  return 1;
}

uint64_t sub_10012622C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v4 - **(a1 + 176)) >> 2) - 1 && *(v4 - 4) == a4)
  {
    if (*a2 != a2[1])
    {
      sub_100125F64(a1);
    }

    *(a1 + 160) = 1;
  }

  return 1;
}

uint64_t sub_1001262AC(uint64_t a1, int **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v4 - **(a1 + 176)) >> 2) - 1 && *(v4 - 4) == a4)
  {
    if (*a2 != a2[1])
    {
      v5 = **a2;
      sub_100125F64(a1);
    }

    *(a1 + 160) = 1;
  }

  return 1;
}

uint64_t sub_100126328(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v4 - **(a1 + 176)) >> 2) - 1 && *(v4 - 4) == a4)
  {
    if (*a2 != a2[1])
    {
      sub_100125F64(a1);
    }

    *(a1 + 160) = 1;
  }

  return 1;
}

uint64_t sub_1001263A8(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v4 - **(a1 + 176)) >> 2) - 1 && *(v4 - 4) == a4)
  {
    if (a2[1] > 0x3F || (a2[1] & 0x3F) != 0)
    {
      v6 = **a2;
      sub_100125F64(a1);
    }

    *(a1 + 160) = 1;
  }

  return 1;
}

uint64_t sub_100126464(uint64_t a1, int **a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v4 - **(a1 + 176)) >> 2) - 1 && *(v4 - 4) == a4)
  {
    if (*a2 != a2[1])
    {
      v5 = **a2;
      sub_100125F64(a1);
    }

    *(a1 + 160) = 1;
  }

  return 1;
}

uint64_t sub_1001264E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v4 - **(a1 + 176)) >> 2) - 1 && *(v4 - 4) == a4)
  {
    sub_100125F64(a1);
  }

  return 1;
}

uint64_t sub_100126540(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 168);
  v4 = **(a1 + 176);
  v5 = *(*(a1 + 176) + 8);
  v6 = (v5 - v4) >> 2;
  if (v3 == v6 - 1 && *(v5 - 4) == a3)
  {
    sub_100125F64(a1);
  }

  if (v3 >= v6 || *(v4 + 4 * v3) != a3)
  {
    return 0;
  }

  *(a1 + 168) = v3 + 1;
  return 2;
}

uint64_t sub_1001265CC(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, uint64_t a3)
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
  v44 = HIDWORD(v8);
  *__p = *a2;
  v46 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *__p = v42;
  v46 = v43;
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
            if (!v44 && (*(this + 36) & 1) != 0)
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
              if (!v44 && (*(this + 36) & 1) != 0)
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
        LOBYTE(BuiltinType) = sub_100126D7C(BuiltinType, __p[0], a3, a2, &v44, &v41);
        return BuiltinType & 1;
      }

      if (v9 != 2)
      {
        if (v9 == 5)
        {
          v38[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v38) & 1) == 0)
          {
            if (!v44 && (*(this + 36) & 1) != 0)
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

      if (!v44 && (*(this + 36) & 1) != 0)
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
    v46 = 0;
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
    if (String)
    {
      *v38 = *a2;
      v39 = *(a2 + 16);
      LOBYTE(BuiltinType) = sub_1001254C8(a3, __p, v38, v44);
    }

    if (SHIBYTE(v46) < 0)
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
      v46 = *(a2 + 16);
      *v38 = v42;
      v39 = v43;
      LOBYTE(BuiltinType) = sub_100125630(a3, this, __p, v44, v38);
      sub_1001276D0(v35);
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
      LOBYTE(BuiltinType) = sub_100125584(a3, __p, v38, v44);
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
  v46 = 0;
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

  LOBYTE(BuiltinType) = sub_100126FB0(v12, __p, a3, a2, &v44, &UnpackedType);
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
    if (!v44 && (*(this + 36) & 1) != 0)
    {
      goto LABEL_47;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
LABEL_112:
  }

  return BuiltinType & 1;
}

void sub_100126CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100126D7C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
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

uint64_t sub_100126FB0(int a1, uint64_t **a2, uint64_t a3, __int128 *a4, int *a5, int *a6)
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

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_1001276D0(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_10012770C(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

uint64_t sub_100127748()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

void sub_100127784(wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream *a1)
{
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(a1);

  operator delete();
}

void sub_100127A94(xpc_object_t *a1, xpc_object_t *a2)
{
  v4 = *(qword_1002DBE98 + 128);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "insight_config:#I Running SendTestInsightsNow.", buf, 2u);
  }

  if (xpc_get_type(*a1) == &_xpc_type_connection && xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    reply = xpc_dictionary_create_reply(*a2);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (xpc_get_type(reply) == &_xpc_type_dictionary)
      {
        xpc_retain(reply);
        v6 = reply;
      }

      else
      {
        v6 = xpc_null_create();
      }
    }

    else
    {
      v6 = xpc_null_create();
      reply = 0;
    }

    xpc_release(reply);
    type = xpc_get_type(v6);
    v8 = *(qword_1002DBE98 + 128);
    if (type == &_xpc_type_dictionary)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_INFO))
      {
        xpc::object::to_string(buf, a2);
        v9 = v12 >= 0 ? buf : *buf;
        *v13 = 136315138;
        *&v13[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "insight_config:#I Received insight = %s", v13, 0xCu);
        if (v12 < 0)
        {
          operator delete(*buf);
        }
      }

      int64 = xpc_dictionary_get_int64(*a2, "InsightId");
      switch(int64)
      {
        case 4354:
          operator new();
        case 4353:
          operator new();
        case 4097:
          operator new();
      }

      if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
      {
        sub_100209DC4();
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
    {
      sub_100209D5C();
    }

    xpc_release(v6);
  }
}

void sub_100128008(xpc_object_t *a1, xpc_object_t *a2)
{
  v4 = *(qword_1002DBE98 + 128);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "insight_config:#I Received SendMockCellInfo.", buf, 2u);
  }

  if (xpc_get_type(*a1) == &_xpc_type_connection && xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    reply = xpc_dictionary_create_reply(*a2);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (xpc_get_type(reply) == &_xpc_type_dictionary)
      {
        xpc_retain(reply);
        v6 = reply;
      }

      else
      {
        v6 = xpc_null_create();
      }
    }

    else
    {
      v6 = xpc_null_create();
      reply = 0;
    }

    xpc_release(reply);
    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      length = 0;
      xpc_dictionary_get_data(*a2, "Payload", &length);
      operator new();
    }

    if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
    {
      sub_100209DF8();
    }

    xpc_release(v6);
  }
}

void sub_10012826C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&stru_1002D48E8);
  (*(*v2 + 8))(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

void sub_100128338(xpc_object_t *a1, xpc_object_t *a2)
{
  v4 = *(qword_1002DBE98 + 128);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "insight_config:#I Received GetConfigurationForLocation.", buf, 2u);
  }

  if (xpc_get_type(*a1) == &_xpc_type_connection && xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    reply = xpc_dictionary_create_reply(*a2);
    v6 = reply;
    if (reply)
    {
      object = reply;
    }

    else
    {
      v6 = xpc_null_create();
      object = v6;
      if (!v6)
      {
        v7 = xpc_null_create();
        v6 = 0;
        goto LABEL_12;
      }
    }

    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      xpc_retain(v6);
LABEL_13:
      xpc_release(v6);
      if (xpc_get_type(object) == &_xpc_type_dictionary)
      {
        pthread_mutex_lock(&stru_1002D48E8);
        if (!xmmword_1002D4928)
        {
          sub_1000308F8();
        }

        if (*(&xmmword_1002D4928 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_1002D4928 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&stru_1002D48E8);
        xpc_dictionary_get_double(*a2, "latitude");
        xpc_dictionary_get_double(*a2, "longitude");
        v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
        v9 = dispatch_queue_create("com.apple.wirelessinsightsd.insightshelpers", v8);
        v10 = dispatch_semaphore_create(0);
        if (v9)
        {
          dispatch_retain(v9);
        }

        if (object)
        {
          xpc_retain(object);
        }

        else
        {
          xpc_null_create();
        }

        if (v10)
        {
          dispatch_retain(v10);
        }

        v13 = 0;
        operator new();
      }

      if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
      {
        sub_100209E2C();
      }

      xpc_release(object);
      return;
    }

    v7 = xpc_null_create();
LABEL_12:
    object = v7;
    goto LABEL_13;
  }
}

void sub_100128714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001287F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_100128840(xpc_object_t *a1, xpc_object_t *a2)
{
  v4 = *(qword_1002DBE98 + 128);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "insight_config:#I Received SimulateAnomalyEventNow", buf, 2u);
  }

  if (xpc_get_type(*a1) == &_xpc_type_connection && xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    value = xpc_dictionary_get_value(*a2, "EventPayload");
    v6 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v6 = xpc_null_create();
      if (!v6)
      {
        v7 = xpc_null_create();
        v6 = 0;
        goto LABEL_14;
      }
    }

    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }

LABEL_14:
    xpc_release(v6);
    v12[0] = a2;
    v12[1] = "EventName";
    sub_100007DA4(v12, &object);
    memset(buf, 0, sizeof(buf));
    v17 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }

    xpc_release(object);
    v8 = *(qword_1002DBE98 + 128);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = __p;
      if (v15 < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "insight_config:#I eventName = %s", buf, 0xCu);
    }

    pthread_mutex_lock(&stru_1002D4780);
    v10 = xmmword_1002D47C0;
    if (!xmmword_1002D47C0)
    {
      sub_100089398();
    }

    if (*(&xmmword_1002D47C0 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D47C0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4780);
    v11 = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      v11 = xpc_null_create();
    }

    sub_100089E94(v10, __p, &v11);
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
  {
    sub_100209E60();
  }
}

void sub_100128BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100128CC8(xpc_connection_t *a1, xpc_object_t *a2)
{
  v4 = *(qword_1002DBE98 + 128);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "insight_config:#I Received requested to populate Federated Mobility Cell Map database", v11, 2u);
  }

  string = xpc_dictionary_get_string(*a2, "data");
  sub_100007ECC(__p, string);
  v6 = sub_1000EC814(__p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  reply = xpc_dictionary_create_reply(*a2);
  if (reply)
  {
    v8 = reply;
    object = reply;
  }

  else
  {
    v8 = xpc_null_create();
    object = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_12;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    xpc_retain(v8);
    goto LABEL_13;
  }

  v9 = xpc_null_create();
LABEL_12:
  object = v9;
LABEL_13:
  xpc_release(v8);
  v10 = object;
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v12 = xpc_BOOL_create(v6);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    v11[0] = &object;
    v11[1] = "success";
    sub_10000F50C(v11, &v12, &v13);
    xpc_release(v13);
    v13 = 0;
    xpc_release(v12);
    v12 = 0;
    xpc_connection_send_message(*a1, object);
    v10 = object;
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
  {
    sub_100209EC8();
  }

  xpc_release(v10);
}

void sub_100128EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100128EDC(xpc_connection_t *a1, xpc_object_t *a2)
{
  pthread_mutex_lock(&stru_1002D4ED0);
  v4 = xmmword_1002D4F10;
  if (!xmmword_1002D4F10)
  {
    sub_1000D01B4();
  }

  v5 = *(&xmmword_1002D4F10 + 1);
  if (*(&xmmword_1002D4F10 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4F10 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4ED0);
  p_object = a2;
  v13 = "model";
  sub_100007DA4(&p_object, &object);
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  v20 = 0;
  sub_1000D0E2C(&v15, v19, 1, __p);
  sub_1000D3F10(v19);
  v6 = v4 != 0;
  if (v4)
  {
    sub_1000D1010(v4, __p);
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
  {
    sub_100209EFC();
  }

  reply = xpc_dictionary_create_reply(*a2);
  v8 = reply;
  if (reply)
  {
    object = reply;
  }

  else
  {
    v8 = xpc_null_create();
    object = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    xpc_retain(v8);
    goto LABEL_19;
  }

  v9 = xpc_null_create();
LABEL_18:
  object = v9;
LABEL_19:
  xpc_release(v8);
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
    {
      sub_100209F30();
    }

    v6 = 0;
  }

  v10 = xpc_BOOL_create(v6);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  p_object = &object;
  v13 = "success";
  sub_10000F50C(&p_object, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  xpc_connection_send_message(*a1, object);
  xpc_release(object);
  sub_1000D3F90(&__p[1], LOBYTE(__p[0]));
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v5)
  {
    sub_100008350(v5);
  }
}

void sub_10012919C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002205C(exception_object);
}

uint64_t sub_100129280(uint64_t a1)
{
  *a1 = off_1002B30E8;
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

void sub_1001292E8(uint64_t a1)
{
  *a1 = off_1002B30E8;
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete();
}

void sub_100129408(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_1002B30E8;
  a2[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = a1[2];
  a2[2] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    a2[2] = xpc_null_create();
  }

  v6 = a1[3];
  a2[3] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void sub_10012949C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v3 = *(a1 + 8);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void sub_1001294FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete(a1);
}

void sub_100129558(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = a1[1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1174405120;
  v8[2] = sub_1001296A8;
  v8[3] = &unk_1002B3148;
  v8[4] = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[2];
  v10 = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v10 = xpc_null_create();
  }

  v7 = a1[3];
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  dispatch_async(v5, v8);
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v10);
  v10 = 0;
  if (v9)
  {
    sub_100008350(v9);
  }

  if (v4)
  {
    sub_100008350(v4);
  }
}

uint64_t sub_10012965C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

intptr_t sub_1001296A8(uint64_t a1)
{
  v2 = *(qword_1002DBE98 + 128);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "insight_config:#I Received config.", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    sub_1000CC0B8(v3, &v13);
    v11 = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      v11 = xpc_null_create();
    }

    *buf = a1 + 48;
    v10 = "CellularCoverageConfig";
    sub_1000CB5E8(buf, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(v11);
    v11 = 0;
    v7 = xpc_string_create("Request Succeeded");
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    *buf = a1 + 48;
    v10 = "Status";
    sub_10000F50C(buf, &v7, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(v7);
    v7 = 0;
    xpc_release(v13);
  }

  else
  {
    v5 = xpc_string_create("Request Failed, cellCoverageTile is nil");
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    *buf = a1 + 48;
    v10 = "Status";
    sub_10000F50C(buf, &v5, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v5);
    v5 = 0;
  }

  return dispatch_semaphore_signal(*(a1 + 56));
}

void sub_100129864(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[6];
  a1[6] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    a1[6] = xpc_null_create();
  }

  v6 = a2[7];
  a1[7] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void sub_1001298E8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {

    sub_100008350(v3);
  }
}

uint64_t sub_100129948()
{
  if ((byte_1002D4880 & 1) == 0)
  {
    byte_1002D4880 = 1;
    return __cxa_atexit(sub_10002973C, &stru_1002D4830, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100129984()
{
  if ((byte_1002D4938 & 1) == 0)
  {
    byte_1002D4938 = 1;
    return __cxa_atexit(sub_10002B41C, &stru_1002D48E8, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1001299C0()
{
  if ((byte_1002D47D0 & 1) == 0)
  {
    byte_1002D47D0 = 1;
    return __cxa_atexit(sub_10002340C, &stru_1002D4780, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1001299FC()
{
  if ((byte_1002D4F20 & 1) == 0)
  {
    byte_1002D4F20 = 1;
    return __cxa_atexit(sub_10004F914, &stru_1002D4ED0, &_mh_execute_header);
  }

  return result;
}

void sub_100129A38(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 0;
  if (v1)
  {
    v3 = *(a1 + 8);
    v13 = &v3[v1];
    do
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      if (v5)
      {
        v6 = *(v4 + 8);
        v7 = 8 * v5;
        do
        {
          v8 = *v6;
          if (*(*v6 + 96) >= 1)
          {
            v9 = *qword_1002DBE98;
            if (os_log_type_enabled(*qword_1002DBE98, OS_LOG_TYPE_INFO))
            {
              v10 = *(v8 + 8);
              v11 = *(v4 + 56);
              *buf = 67109376;
              LODWORD(v15[0]) = v10;
              WORD2(v15[0]) = 1024;
              *(v15 + 6) = v11;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "config:#I Found profile 0x%x with HW model spec in cid 0x%x", buf, 0xEu);
            }
          }

          sub_100129BCC(v8 + 88);
          ++v6;
          v7 -= 8;
        }

        while (v7);
      }

      v2 += v5;
      ++v3;
    }

    while (v3 != v13);
  }

  v12 = *qword_1002DBE98;
  if (os_log_type_enabled(*qword_1002DBE98, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v15[0] = v2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "config:#I HW model filter complete: no profiles removed; %zd total profiles", buf, 0xCu);
  }
}

uint64_t sub_100129BCC(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
      }

      else
      {
        *v2 = 0;
        *(v2 + 23) = 0;
      }

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

void sub_100129CB4(_Unwind_Exception *a1)
{
  sub_100129D94(v1 + 6);
  sub_100129DDC(v1 + 5);
  ctu::OsLogLogger::~OsLogLogger((v1 + 4));
  sub_100032AD8(v1);
  _Unwind_Resume(a1);
}

void *sub_100129CF0(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

uint64_t *sub_100129D94(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1000504D4(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_100129DDC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1000C51A0(v2);
    operator delete();
  }

  return a1;
}

void *sub_100129E28(uint64_t *a1)
{
  v2 = a1[9];
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    sub_1000E6958(v3);
    operator delete();
  }

  sub_100129D94(a1 + 6);
  sub_100129DDC(a1 + 5);
  ctu::OsLogLogger::~OsLogLogger((a1 + 4));

  return sub_100032AD8(a1);
}

void sub_100129EA8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    sub_10000C564(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_100129EF8(uint64_t a1@<X2>, void *a2@<X8>)
{
  if (a1)
  {
    sub_10012A994();
  }

  *a2 = 0;
}

void sub_100129FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012A094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008350(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012A1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008350(a11);
  }

  _Unwind_Resume(exception_object);
}

FILE *sub_10012A1BC@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  result = fopen(v3, "rb");
  if (result)
  {
    v5 = result;
    v6 = fileno(result);
    if ((v6 & 0x80000000) == 0)
    {
      wireless_diagnostics::google::protobuf::io::FileInputStream::FileInputStream(v14, v6, -1);
      v7[0] = v14;
      v7[1] = 0;
      v7[2] = 0;
      v8[0] = 0;
      *(v8 + 6) = 0;
      v9 = xmmword_100247FE0;
      v10 = 0;
      v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
      v12 = 0;
      v13 = 0;
      wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(v7);
      sub_10012A994();
    }

    *a2 = 0;
    return fclose(v5);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_10012A350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  fclose(v21);
  _Unwind_Resume(a1);
}

void *sub_10012A3AC(void *a1)
{
  *a1 = off_1002B31A8;
  v2 = a1[5];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_10012A3F8(void *a1)
{
  *a1 = off_1002B31A8;
  v1 = a1[5];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_10012A484(uint64_t result, int a2)
{
  *(result + 24) = a2;
  v2 = *(result + 32);
  if (v2)
  {
    if ((a2 - 1) <= 3)
    {
      v3 = dword_100247FF0[a2 - 1];
      *(v2 + 208) |= 0x10u;
      *(v2 + 200) = v3;
    }
  }

  return result;
}

uint64_t sub_10012A4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(a1 + 32);
  if (result)
  {
    v5 = (*(*result + 72))(result);
    if (v5)
    {
      sub_10000CA0C(a2, v5);
      v6 = *a2;
      v7 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    result = wireless_diagnostics::google::protobuf::MessageLite::SerializeToArray(*(a1 + 32), v6);
    if ((result & 1) == 0)
    {
      *(a2 + 8) = *a2;
    }
  }

  return result;
}

void sub_10012A55C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012A57C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) != *(a2 + 12) || *(a1 + 8) != *(a2 + 8) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v2 = *(a2 + 32);
  v3 = v2 == 0;
  v4 = v2 != 0;
  v5 = v3;
  if (*(a1 + 32))
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

void sub_10012A5D4(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = xpc_null_create();
  sub_10012A4CC(a1, &v16);
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_dictionary)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = xpc_null_create();
  v7 = *a2;
  *a2 = v5;
  xpc_release(v7);
  xpc_release(v6);
  v14 = xpc_data_create(v16, v17 - v16);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v12 = a2;
  v13 = "bin";
  sub_10000F50C(&v12, &v14, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
  v14 = 0;
  v10 = xpc_int64_create(*(a1 + 8));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v12 = a2;
  v13 = "iid";
  sub_10000F50C(&v12, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(*(a1 + 16));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v12 = a2;
  v13 = "task_date";
  sub_10000F50C(&v12, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_10012A800(xpc_object_t *a1@<X0>, void *a2@<X8>)
{
  if (xpc_get_type(*a1) == &_xpc_type_dictionary)
  {
    v9 = a1;
    v10 = "bin";
    sub_100007DA4(&v9, &object);
    v9 = a1;
    v10 = "iid";
    sub_100007DA4(&v9, &v8);
    v9 = a1;
    v10 = "task_date";
    sub_100007DA4(&v9, &v7);
    if (xpc_get_type(object) != &_xpc_type_data || xpc_get_type(v8) == &_xpc_type_null || xpc_get_type(v7) == &_xpc_type_null)
    {
      *a2 = 0;
    }

    else
    {
      xpc::dyn_cast_or_default(&v8, 0, v4);
      xpc::dyn_cast_or_default(&v7, 0, v5);
      bytes_ptr = xpc_data_get_bytes_ptr(object);
      xpc_data_get_length(object);
      sub_100129EF8(bytes_ptr, a2);
    }

    xpc_release(v7);
    xpc_release(v8);
    xpc_release(object);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_10012A954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

void *sub_10012A9F0(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002B31E0;
  awd::profile::DeviceConfiguration::DeviceConfiguration((a1 + 3));
  return a1;
}

void sub_10012AA6C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B31E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10012AAE8(uint64_t a1, int a2, uint64_t a3, __int128 *a4)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = (a1 + 32);
  *(a1 + 40) = 0;
  *a1 = off_1002B3230;
  v6 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v7 = *(a1 + 40);
  *v5 = v6;
  if (v7)
  {
    sub_100008350(v7);
    v8 = *v5;
    if (!*v5)
    {
      return a1;
    }
  }

  else
  {
    v8 = v6;
    if (!v6)
    {
      return a1;
    }
  }

  v9 = v8[52];
  if ((v9 & 0x10) != 0)
  {
    v10 = v8[50];
    if (v10 <= 3)
    {
      *(a1 + 24) = dword_100248000[v10];
    }
  }

  if (v9)
  {
    *(a1 + 12) = v8[8];
  }

  return a1;
}

void *sub_10012AB9C(void *a1)
{
  *a1 = off_1002B31A8;
  v2 = a1[5];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_10012ABE8(void *a1)
{
  *a1 = off_1002B31A8;
  v1 = a1[5];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

void *sub_10012AC5C(void *a1)
{
  *a1 = off_1002B31A8;
  v2 = a1[5];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_10012ACA8(void *a1)
{
  *a1 = off_1002B31A8;
  v1 = a1[5];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_10012B778()
{
  sub_100011294(v35, 0);
  pthread_mutex_lock(&stru_1002D4A58);
  v0 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v1 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  sub_1000E0584(v0, v33);
  if (v1)
  {
    sub_100008350(v1);
  }

  if ((v34 & 0x80u) == 0)
  {
    v2 = v34;
  }

  else
  {
    v2 = v33[1];
  }

  if (v2)
  {
    v3 = v36;
    if ((v36 & 0x80u) != 0)
    {
      v3 = v35[1];
    }

    if (v3)
    {
      if (v2 != v3 || ((v34 & 0x80u) == 0 ? (v4 = v33) : (v4 = v33[0]), (v36 & 0x80u) == 0 ? (v5 = v35) : (v5 = v35[0]), memcmp(v4, v5, v2)))
      {
        sub_10012BD1C(v33, v41);
        sub_10012BD1C(v35, v29);
        if ((v42 & 0x80u) == 0)
        {
          v6 = v42;
        }

        else
        {
          v6 = *&v41[8];
        }

        v7 = v30;
        if ((v30 & 0x80u) != 0)
        {
          v7 = v29[1];
        }

        if (v6 == v7 && ((v42 & 0x80u) == 0 ? (v8 = v41) : (v8 = *v41), (v30 & 0x80u) == 0 ? (v9 = v29) : (v9 = v29[0]), !memcmp(v8, v9, v6)))
        {
          if ((v44 & 0x80u) == 0)
          {
            v19 = v44;
          }

          else
          {
            v19 = v43[1];
          }

          v20 = v32;
          if ((v32 & 0x80u) != 0)
          {
            v20 = __p[1];
          }

          if (v19 == v20 && ((v44 & 0x80u) == 0 ? (v21 = v43) : (v21 = v43[0]), (v32 & 0x80u) == 0 ? (v22 = __p) : (v22 = __p[0]), !memcmp(v21, v22, v19)))
          {
            v26 = *(qword_1002DBE98 + 48);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v33;
              if ((v34 & 0x80u) != 0)
              {
                v27 = v33[0];
              }

              v28 = v35;
              if ((v36 & 0x80u) != 0)
              {
                v28 = v35[0];
              }

              *buf = 136446466;
              v38 = v27;
              v39 = 2082;
              v40 = v28;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#N Patch build update from %{public}s to %{public}s", buf, 0x16u);
            }

            v13 = 1;
          }

          else
          {
            v23 = *(qword_1002DBE98 + 48);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = v33;
              if ((v34 & 0x80u) != 0)
              {
                v24 = v33[0];
              }

              v25 = v35;
              if ((v36 & 0x80u) != 0)
              {
                v25 = v35[0];
              }

              *buf = 136446466;
              v38 = v24;
              v39 = 2082;
              v40 = v25;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#N Minor build update from %{public}s to %{public}s", buf, 0x16u);
            }

            v13 = 2;
          }
        }

        else
        {
          v10 = *(qword_1002DBE98 + 48);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v33;
            if ((v34 & 0x80u) != 0)
            {
              v11 = v33[0];
            }

            v12 = v35;
            if ((v36 & 0x80u) != 0)
            {
              v12 = v35[0];
            }

            *buf = 136446466;
            v38 = v11;
            v39 = 2082;
            v40 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Major build update from %{public}s to %{public}s", buf, 0x16u);
          }

          v13 = 3;
        }

        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if (v30 < 0)
        {
          operator delete(v29[0]);
        }

        if (v44 < 0)
        {
          operator delete(v43[0]);
        }

        if (v42 < 0)
        {
          operator delete(*v41);
        }

        goto LABEL_60;
      }

      v17 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10020A068(v5, v17);
      }
    }

    else
    {
      v16 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#N No build information available; weird.", v41, 2u);
      }
    }

    v13 = 0;
    goto LABEL_60;
  }

  v14 = *(qword_1002DBE98 + 48);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v35;
    if ((v36 & 0x80u) != 0)
    {
      v15 = v35[0];
    }

    *v41 = 136446210;
    *&v41[4] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N No old build information available; new build is %{public}s", v41, 0xCu);
  }

  v13 = 3;
LABEL_60:
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  return v13;
}

void sub_10012BC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100039D84(v26 - 80);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_10012BD1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = &v4[v5];
  v7 = v4;
  if (v5)
  {
    v7 = v4;
    while (1)
    {
      v8 = *v7;
      if (v8 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
      {
        break;
      }

      ++v7;
      if (!--v5)
      {
        v7 = v6;
LABEL_17:
        v9 = v6;
        goto LABEL_18;
      }
    }
  }

  v9 = v7;
  if (v7 != v6)
  {
    while (1)
    {
      v10 = *v9;
      if ((v10 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v10] & 0x400) != 0)
      {
        break;
      }

      if (++v9 == v6)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  sub_10012BE10(a2, v4, v7, v7 - v4);
  sub_10012BE10((a2 + 24), v7, v9, v9 - v7);
}

void sub_10012BE10(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t sub_10012BEDC()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

void sub_10012C08C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100008350(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10012C174(_Unwind_Exception *a1)
{
  ctu::OsLogLogger::~OsLogLogger((v1 + 4));
  sub_100032AD8(v1);
  _Unwind_Resume(a1);
}

void *sub_10012C190(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

void *sub_10012C234(uint64_t a1)
{
  v4 = (a1 + 232);
  sub_10012DC54(&v4);
  sub_10012DCD8(a1 + 200);
  sub_10012DCD8(a1 + 168);
  sub_10012DCD8(a1 + 136);
  v4 = (a1 + 112);
  sub_10012DC54(&v4);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v4 = (a1 + 64);
  sub_10012DBD0(&v4);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100008350(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  return sub_100032AD8(a1);
}

void sub_10012C2D0(void *a1, _BYTE *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1000081C8(&v7, a1);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_10012C404;
    v6[3] = &unk_1002B32A0;
    v6[4] = a1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1174405120;
    v9[2] = sub_10012DD58;
    v9[3] = &unk_1002B3380;
    v5 = v7;
    v9[5] = v7;
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9[4] = v6;
    sub_100160E88(a3, (v5 + 16), v9);
    if (v10)
    {
      sub_100008350(v10);
    }

    if (v8)
    {
      sub_100008350(v8);
    }
  }
}

void sub_10012C3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100008350(a22);
  }

  if (a15)
  {
    sub_100008350(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012C40C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#I Init WISBasebandManager", &buf, 2u);
  }

  v3 = *(a1 + 40);
  v4 = abm::kEventBasebandBootStateChange;
  v5 = *(a1 + 16);
  v34 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v42[0] = off_1002B33C0;
  v42[1] = a1;
  v42[3] = v42;
  sub_1000DC998(v3, v4, &v34, v42, &object);
  if (object)
  {
    dispatch_release(object);
  }

  sub_1000DD568(v42);
  if (v34)
  {
    dispatch_release(v34);
  }

  v6 = *(a1 + 40);
  v7 = abm::kEventServerStateChange;
  v8 = *(a1 + 16);
  v32 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v41[0] = off_1002B3450;
  v41[1] = a1;
  v41[3] = v41;
  sub_1000DC998(v6, v7, &v32, v41, &v33);
  if (v33)
  {
    dispatch_release(v33);
  }

  sub_1000DD568(v41);
  v9 = v32;
  if (v32)
  {
    dispatch_release(v32);
  }

  if (capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v9))
  {
    sub_100007ECC(&buf, abm::kKeyAppID);
    v39 = 0;
    memset(v40, 0, sizeof(v40));
    sub_10012E460(v40, &v39, v40, 1uLL);
    updated = abm::client::CreateOrUpdateEventFilter();
    if (*v40)
    {
      *&v40[8] = *v40;
      operator delete(*v40);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v11 = *(a1 + 40);
    v12 = abm::kEventTrigger;
    v13 = *(a1 + 16);
    v29 = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    v38[0] = off_1002B34D0;
    v38[1] = a1;
    v38[3] = v38;
    sub_1000DCA80(v11, v12, &v29, v38, &v30);
    if (v30)
    {
      dispatch_release(v30);
    }

    sub_1000DD568(v38);
    if (v29)
    {
      dispatch_release(v29);
    }

    v14 = *(a1 + 40);
    v15 = abm::kEventMetric;
    v16 = *(a1 + 16);
    v27 = v16;
    if (v16)
    {
      dispatch_retain(v16);
    }

    v37[0] = off_1002B3550;
    v37[1] = a1;
    v37[3] = v37;
    sub_1000DCA80(v14, v15, &v27, v37, &v28);
    if (v28)
    {
      dispatch_release(v28);
    }

    sub_1000DD568(v37);
    if (v27)
    {
      dispatch_release(v27);
    }

    v17 = *(a1 + 40);
    v18 = abm::kEventMetricSubmissionEnd;
    v19 = *(a1 + 16);
    v25 = v19;
    if (v19)
    {
      dispatch_retain(v19);
    }

    v36[0] = off_1002B35D0;
    v36[1] = a1;
    v36[3] = v36;
    sub_1000DCA80(v17, v18, &v25, v36, &v26);
    if (v26)
    {
      dispatch_release(v26);
    }

    sub_1000DD568(v36);
    if (v25)
    {
      dispatch_release(v25);
    }

    xpc_release(updated);
  }

  sub_1000DC8C8(*(a1 + 40));
  memset(&buf, 0, sizeof(buf));
  if (sub_1000DD2A8(*(a1 + 40)))
  {
    v20 = std::string::operator=((a1 + 88), &buf);
    *(a1 + 56) = sub_10012CA3C(v20, (a1 + 88));
  }

  v21 = *(a1 + 32);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v22 = *v22;
    }

    v23 = *(a1 + 56);
    if (v23 > 2)
    {
      v24 = "???";
    }

    else
    {
      v24 = off_1002B3730[v23];
    }

    *v40 = 136315394;
    *&v40[4] = v22;
    *&v40[12] = 2080;
    *&v40[14] = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "#I After init baseBandBootState = %s, insightsState = %s", v40, 0x16u);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_10012C874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000DD568(&a25);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_10012C930(void *a1, uint64_t a2, NSObject **a3)
{
  sub_100160D30(a3, &group[1]);
  sub_1000081C8(&v5, a1);
  operator new();
}

uint64_t sub_10012CA3C(uint64_t a1, const void **a2)
{
  v3 = strlen(abm::kBasebandBootStateIsReady);
  v4 = v3;
  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    if (v3 != a2[1])
    {
      goto LABEL_8;
    }

    if (v3 == -1)
    {
      sub_1000C3798();
    }

    v6 = *a2;
  }

  else
  {
    v6 = a2;
    if (v4 != v5)
    {
LABEL_8:
      v7 = strlen(abm::kBasebandBootStateDead);
      if ((v5 & 0x80000000) != 0)
      {
        if (v7 != a2[1])
        {
          return 1;
        }

        if (v7 == -1)
        {
          sub_1000C3798();
        }

        a2 = *a2;
      }

      else if (v7 != v5)
      {
        return 1;
      }

      return memcmp(a2, abm::kBasebandBootStateDead, v7) != 0;
    }
  }

  if (memcmp(v6, abm::kBasebandBootStateIsReady, v4))
  {
    goto LABEL_8;
  }

  return 2;
}

void sub_10012CB34(void *a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  sub_1000081C8(&v3, a1);
  operator new();
}

void sub_10012CC30(uint64_t a1, uint64_t *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v25 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v25 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v25 = v6;
LABEL_9:
  xpc_release(v5);
  if (xpc_get_type(v25) != &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_10020A0E0();
    }

    goto LABEL_29;
  }

  object = xpc_int64_create(4);
  if (!object)
  {
    object = xpc_null_create();
  }

  __p = &v25;
  v19 = abm::kKeyAppID;
  sub_10000F50C(&__p, &object, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(object);
  object = 0;
  v21 = xpc_int64_create(0);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  __p = &v25;
  v19 = abm::kKeyPayloadType;
  sub_10000F50C(&__p, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v7 = sub_1000EB900(*a2);
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_10000E4DC(&__p, *v7, v7[1], v7[1] - *v7);
  v8 = xpc_data_create(__p, v19 - __p);
  v9 = v8;
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v16 = v9;
    if (!v9)
    {
      v9 = 0;
      v16 = xpc_null_create();
      goto LABEL_20;
    }
  }

  xpc_retain(v9);
LABEL_20:
  v15[0] = &v25;
  v15[1] = abm::kKeyPayload;
  sub_10000F50C(v15, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v10 = *(a1 + 40);
  v14 = v25;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    v14 = xpc_null_create();
  }

  v11 = abm::kCommandAddConfiguration;
  v12 = *(a1 + 16);
  v13 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  v26[0] = off_1002B3650;
  v26[1] = a1;
  v26[3] = v26;
  sub_1000DCEB8(v10, v11, &v14, &v13, v26);
  sub_1000DD7E4(v26);
  if (v13)
  {
    dispatch_release(v13);
  }

  xpc_release(v14);
  v14 = 0;
  xpc_release(v9);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

LABEL_29:
  xpc_release(v25);
}

void sub_10012CF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002205C(exception_object);
}

void sub_10012D000(void *a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10012F164(&v4, a2);
  sub_1000081C8(v3, a1);
  operator new();
}

void sub_10012D128(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10012D138(void *a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10012F164(&v4, a2);
  sub_1000081C8(v3, a1);
  operator new();
}

void sub_10012D260(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10012D270(void *a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  sub_1000081C8(&v3, a1);
  operator new();
}

void sub_10012D388(void *a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  sub_1000081C8(&v3, a1);
  operator new();
}

void sub_10012D4A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10012FC10;
  v5[3] = &unk_1002B36D0;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10012FCA4;
    v10 = &unk_1002B3710;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10012FC40;
    v10 = &unk_1002B36F0;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void sub_10012D5C0(void *a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  sub_1000081C8(&v3, a1);
  operator new();
}

void sub_10012D6D8(void *a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  sub_1000081C8(&v3, a1);
  operator new();
}

void sub_10012D7F0(void *a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  sub_1000081C8(&v3, a1);
  operator new();
}

void sub_10012D980(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_10012DA54);
  __cxa_rethrow();
}

void sub_10012D9C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10012DA14(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012DA54(uint64_t result)
{
  if (result)
  {
    sub_10012C234(result);

    operator delete();
  }

  return result;
}

void *sub_10012DA94(void *a1)
{
  *a1 = off_1002B3330;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_10012DAE0(void *a1)
{
  *a1 = off_1002B3330;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_10012DB5C@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

void sub_10012DBD0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1000292F4(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10012DC54(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10009DE98(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10012DCD8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10012DD58(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 32);
  group = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }
}

void sub_10012DDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012DDD8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10012DDF4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

uint64_t *sub_10012DE04(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#I Shutting down WISBasebandManager", buf, 2u);
  }

  v4 = *(v2 + 40);
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  sub_1000DC930(v4);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  sub_10012DF00(&v8);
  return sub_1000082FC(&v7);
}

void sub_10012DECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_10012DF00(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10012DF00(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 8);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10012DFD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002B33C0;
  a2[1] = v2;
  return result;
}

void sub_10012DFFC(uint64_t a1, void **a2, uint64_t *a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = v7[4];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v10 = 136315138;
    *&v10[4] = abm::kEventBasebandBootStateChange;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#I Received event %s", v10, 0xCu);
  }

  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    *v10 = v5;
    v9 = v5;
  }

  else
  {
    v9 = xpc_null_create();
    *v10 = v9;
    if (!v9)
    {
      *v10 = xpc_null_create();
      goto LABEL_9;
    }
  }

  xpc_retain(v9);
LABEL_9:
  sub_10012D270(v7, v10);
}

void sub_10012E164(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10012E194(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012E250(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002B3450;
  a2[1] = v2;
  return result;
}

void sub_10012E27C(uint64_t a1, void **a2, uint64_t *a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = v7[4];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v10 = 136315138;
    *&v10[4] = abm::kEventServerStateChange;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#I Received event %s", v10, 0xCu);
  }

  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    *v10 = v5;
    v9 = v5;
  }

  else
  {
    v9 = xpc_null_create();
    *v10 = v9;
    if (!v9)
    {
      *v10 = xpc_null_create();
      goto LABEL_9;
    }
  }

  xpc_retain(v9);
LABEL_9:
  sub_10012D388(v7, v10);
}

void sub_10012E3E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10012E414(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012E460(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10012E4D4(result, a4);
  }

  return result;
}

void sub_10012E4B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012E4D4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100044B08(a1, a2);
  }

  sub_100033FD0();
}

uint64_t sub_10012E580(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002B34D0;
  a2[1] = v2;
  return result;
}

void sub_10012E5AC(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v19 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v19 = xpc_null_create();
  }

  v17[0] = &v19;
  v17[1] = abm::kKeyAppID;
  sub_100007DA4(v17, &object);
  v9 = xpc::dyn_cast_or_default(&object, 0, v8);
  xpc_release(object);
  if (!v9)
  {
    v17[0] = v19;
    if (v19)
    {
      xpc_retain(v19);
    }

    else
    {
      v17[0] = xpc_null_create();
    }

    sub_10012D5C0(v7, v17);
  }

  v10 = v7[4];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10020A114(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  xpc_release(v19);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_10012E704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  if (v13)
  {
    dispatch_release(v13);
  }

  xpc_release(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_10012E750(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012E80C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002B3550;
  a2[1] = v2;
  return result;
}

void sub_10012E838(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v19 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v19 = xpc_null_create();
  }

  v17[0] = &v19;
  v17[1] = abm::kKeyAppID;
  sub_100007DA4(v17, &object);
  v9 = xpc::dyn_cast_or_default(&object, 0, v8);
  xpc_release(object);
  if (!v9)
  {
    v17[0] = v19;
    if (v19)
    {
      xpc_retain(v19);
    }

    else
    {
      v17[0] = xpc_null_create();
    }

    sub_10012D6D8(v7, v17);
  }

  v10 = v7[4];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10020A180(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  xpc_release(v19);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_10012E990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  if (v13)
  {
    dispatch_release(v13);
  }

  xpc_release(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_10012E9DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012EA98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002B35D0;
  a2[1] = v2;
  return result;
}

void sub_10012EAC4(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v19 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v19 = xpc_null_create();
  }

  v17[0] = &v19;
  v17[1] = abm::kKeyAppID;
  sub_100007DA4(v17, &object);
  v9 = xpc::dyn_cast_or_default(&object, 0, v8);
  xpc_release(object);
  if (!v9)
  {
    v17[0] = v19;
    if (v19)
    {
      xpc_retain(v19);
    }

    else
    {
      v17[0] = xpc_null_create();
    }

    sub_10012D7F0(v7, v17);
  }

  v10 = v7[4];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10020A180(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  xpc_release(v19);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_10012EC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  if (v13)
  {
    dispatch_release(v13);
  }

  xpc_release(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_10012EC68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10012ECB4(void **a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = *v1;
  v3 = *(*v1 + 56);
  if (v3 == 2)
  {
    v8 = v2[4];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#I Pumping the insight to Baseband", buf, 2u);
    }

    v9 = v1[1];
    v1[1] = 0;
    *buf = v9;
    sub_10012CC30(v2, buf);
    sub_1000292F4(buf);
  }

  else if (v3 == 1)
  {
    v5 = v2[9];
    v4 = v2[10];
    if (v5 >= v4)
    {
      v12 = v2[8];
      v13 = v5 - v12;
      v14 = (v5 - v12) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        sub_100033FD0();
      }

      v16 = v4 - v12;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      v17 = v16 >= 0x7FFFFFFFFFFFFFF8;
      v18 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v17)
      {
        v18 = v15;
      }

      v32 = v2 + 8;
      if (v18)
      {
        sub_1000C63BC((v2 + 8), v18);
      }

      v19 = (v5 - v12) >> 3;
      v20 = (8 * v14);
      v21 = v1[1];
      v1[1] = 0;
      v22 = (8 * v14 - 8 * v19);
      *v20 = v21;
      v7 = v20 + 1;
      memcpy(v22, v12, v13);
      v23 = v2[8];
      v2[8] = v22;
      v2[9] = v7;
      v24 = v2[10];
      v2[10] = 0;
      v30 = v23;
      v31 = v24;
      *buf = v23;
      v29 = v23;
      sub_10012EF2C(buf);
    }

    else
    {
      v6 = v1[1];
      v1[1] = 0;
      *v5 = v6;
      v7 = v5 + 8;
    }

    v2[9] = v7;
    v10 = v2[4];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "#I Queued the insight";
      goto LABEL_20;
    }
  }

  else
  {
    v10 = v2[4];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "#I Baseband is in Error state, dropping the insight";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
    }
  }

  sub_10012EEDC(&v27);
  return sub_1000082FC(&v26);
}

void sub_10012EEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10012EEDC(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10012EEDC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000292F4((v1 + 8));
    operator delete();
  }

  return result;
}

uint64_t sub_10012EF2C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_1000292F4((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10012EFEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002B3650;
  a2[1] = v2;
  return result;
}

void sub_10012F018(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  v8 = *(*(a1 + 8) + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v4 == 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#I Pumping Insight to Baseband result=%{BOOL}d", v9, 8u);
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_10012F108(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10012F118(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012F164(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_10012F1E4(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v4 = *v1;
  v2 = (v1 + 1);
  v3 = v4;
  v5 = *(v4 + 120);
  if (v5 >= *(v4 + 128))
  {
    v6 = sub_10012F2CC((v3 + 112), v2);
  }

  else
  {
    sub_10012F3DC(v5, v2);
    v6 = v5 + 32;
    *(v3 + 120) = v5 + 32;
  }

  *(v3 + 120) = v6;
  sub_10012F27C(&v9);
  return sub_1000082FC(&v8);
}

void sub_10012F250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10012F27C(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10012F27C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10009DE98(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_10012F2CC(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100033FD0();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1000353B0(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  sub_10012F3DC(32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  sub_10012F474(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10012F4E4(&v14);
  return v13;
}

void sub_10012F3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10012F4E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012F3DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_10012F474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_10012F164(a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_10009DE98(v6);
      v6 += 32;
    }
  }
}

uint64_t sub_10012F4E4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_10009DE98(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_10012F534(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v4 = *v1;
  v2 = (v1 + 1);
  v3 = v4;
  v5 = *(v4 + 240);
  if (v5 >= *(v4 + 248))
  {
    v6 = sub_10012F2CC((v3 + 232), v2);
  }

  else
  {
    sub_10012F3DC(v5, v2);
    v6 = v5 + 32;
    *(v3 + 240) = v5 + 32;
  }

  *(v3 + 240) = v6;
  sub_10012F27C(&v9);
  return sub_1000082FC(&v8);
}

void sub_10012F5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10012F27C(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10012F5CC(uint64_t **a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  v4 = v1[1];
  v3 = (v1 + 1);
  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v24[0] = v3;
    v24[1] = abm::kKeyBasebandBootState;
    sub_100007DA4(v24, &object);
    __p = 0uLL;
    v29 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    v5 = (v2 + 88);
    if (*(v2 + 111) < 0)
    {
      operator delete(*v5);
    }

    *v5 = *v26;
    *(v2 + 104) = v27;
    HIBYTE(v27) = 0;
    LOBYTE(v26[0]) = 0;
    xpc_release(object);
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v7)
    {
      v8 = (v2 + 88);
      if (*(v2 + 111) < 0)
      {
        v8 = *v5;
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#I Baseband boot state = %s", &__p, 0xCu);
    }

    v9 = *(v2 + 112);
    v10 = *(v2 + 120);
    while (v9 != v10)
    {
      sub_10012F3DC(&__p, v9);
      v11 = *v3;
      v26[0] = v11;
      if (v11)
      {
        xpc_retain(v11);
      }

      else
      {
        v26[0] = xpc_null_create();
      }

      if (!v30)
      {
        sub_1000334A4();
      }

      (*(*v30 + 48))(v30, v26);
      xpc_release(v26[0]);
      v26[0] = 0;
      v7 = sub_10009DE98(&__p);
      v9 += 32;
    }

    v12 = sub_10012CA3C(v7, (v2 + 88));
    *(v2 + 56) = v12;
    if (v12)
    {
      if (v12 == 2)
      {
        v14 = *(v2 + 64);
        v13 = *(v2 + 72);
        if (v13 != v14)
        {
          v15 = *(v2 + 32);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LODWORD(__p) = 134217984;
            *(&__p + 4) = v13 - v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "#I Found %zu configs in the queue", &__p, 0xCu);
            v14 = *(v2 + 64);
            v13 = *(v2 + 72);
          }

          if (v14 != v13)
          {
            v16 = 1;
            do
            {
              v17 = *(v2 + 32);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                LODWORD(__p) = 67109120;
                DWORD1(__p) = v16;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#I Popping insight %u from the queue", &__p, 8u);
              }

              v18 = *v14;
              *v14 = 0;
              *&__p = 0;
              v24[0] = v18;
              sub_10012CC30(v2, v24);
              sub_1000292F4(v24);
              sub_1000292F4(&__p);
              ++v14;
              ++v16;
            }

            while (v14 != v13);
            v14 = *(v2 + 64);
            v13 = *(v2 + 72);
          }

          while (v13 != v14)
          {
            sub_1000292F4(--v13);
          }

          *(v2 + 72) = v14;
        }
      }
    }

    else
    {
      v20 = *(v2 + 64);
        ;
      }

      *(v2 + 72) = v20;
    }
  }

  else if (os_log_type_enabled(*(v2 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_10020A1EC();
  }

  sub_10012F9D4(&v23);
  return sub_1000082FC(&v22);
}

uint64_t *sub_10012F9D4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

uint64_t *sub_10012FA2C(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (xpc_get_type(*(v1 + 8)) == &_xpc_type_dictionary)
  {
    v4 = *(v2 + 232);
    v5 = *(v2 + 240);
    while (v4 != v5)
    {
      sub_10012F3DC(v10, v4);
      v6 = *(v1 + 8);
      object = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        object = xpc_null_create();
      }

      if (!v11)
      {
        sub_1000334A4();
      }

      (*(*v11 + 48))(v11, &object);
      xpc_release(object);
      object = 0;
      sub_10009DE98(v10);
      v4 += 32;
    }
  }

  else if (os_log_type_enabled(*(v2 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_10020A220();
  }

  sub_10012FBB8(&v8);
  return sub_1000082FC(&v7);
}

uint64_t *sub_10012FBB8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

void **sub_10012FC10@<X0>(void **result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result[5];
  if (*(v2 + 111) < 0)
  {
    return sub_10000FFF8(a2, *(v2 + 88), *(v2 + 96));
  }

  v3 = *(v2 + 88);
  *(a2 + 16) = *(v2 + 104);
  *a2 = v3;
  return result;
}

__n128 sub_10012FC40(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

__n128 sub_10012FCA4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

uint64_t *sub_10012FD08(capabilities::abs *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  if ((capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(a1) & 1) == 0 && os_log_type_enabled(*(v2 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_10020A254();
  }

  v4 = v1[1];
  v3 = (v1 + 1);
  type = xpc_get_type(v4);
  v6 = *(v2 + 32);
  if (type == &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(*(v2 + 32), OS_LOG_TYPE_INFO))
    {
      xpc::object::to_string(__p, v3);
      v7 = v14 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v16 = abm::kEventTrigger;
      v17 = 2080;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#I Received %s, Trigger = %s", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = *v3;
    __p[0] = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      __p[0] = xpc_null_create();
    }

    v9 = *(v2 + 160);
    if (!v9)
    {
      sub_1000334A4();
    }

    (*(*v9 + 48))(v9, __p);
    xpc_release(__p[0]);
  }

  else if (os_log_type_enabled(*(v2 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_10020A288();
  }

  sub_10012FF0C(&v12);
  return sub_1000082FC(&v11);
}

void sub_10012FEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10012FF0C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

uint64_t *sub_10012FF64(capabilities::abs *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  if ((capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(a1) & 1) == 0 && os_log_type_enabled(*(v2 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_10020A2BC();
  }

  v4 = v1[1];
  v3 = (v1 + 1);
  type = xpc_get_type(v4);
  v6 = *(v2 + 32);
  if (type == &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(*(v2 + 32), OS_LOG_TYPE_INFO))
    {
      xpc::object::to_string(__p, v3);
      v7 = v14 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v16 = abm::kEventMetric;
      v17 = 2080;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#I Received %s, Metric = %s", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = *v3;
    __p[0] = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      __p[0] = xpc_null_create();
    }

    v9 = *(v2 + 192);
    if (!v9)
    {
      sub_1000334A4();
    }

    (*(*v9 + 48))(v9, __p);
    xpc_release(__p[0]);
  }

  else if (os_log_type_enabled(*(v2 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_10020A2F0();
  }

  sub_100130168(&v12);
  return sub_1000082FC(&v11);
}

void sub_10013011C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100130168(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

uint64_t *sub_1001301C0(capabilities::abs *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  if ((capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(a1) & 1) == 0 && os_log_type_enabled(*(v2 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_10020A324();
  }

  v4 = v1[1];
  v3 = (v1 + 1);
  type = xpc_get_type(v4);
  v6 = *(v2 + 32);
  if (type == &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(*(v2 + 32), OS_LOG_TYPE_INFO))
    {
      xpc::object::to_string(__p, v3);
      v7 = v14 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v16 = abm::kEventMetricSubmissionEnd;
      v17 = 2080;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#I Received %s, Metric Submission End = %s", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = *v3;
    __p[0] = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      __p[0] = xpc_null_create();
    }

    v9 = *(v2 + 224);
    if (!v9)
    {
      sub_1000334A4();
    }

    (*(*v9 + 48))(v9, __p);
    xpc_release(__p[0]);
  }

  else if (os_log_type_enabled(*(v2 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_10020A358();
  }

  sub_1001303C4(&v12);
  return sub_1000082FC(&v11);
}

void sub_100130378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1001303C4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

void sub_10013041C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t sub_100130438()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

void sub_100130CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27)
{
  v32 = v27;
  v33 = *(v31 - 96);

  _Unwind_Resume(a1);
}

void sub_100131008(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1002D85E8;
  qword_1002D85E8 = v1;
}

id sub_100131178(uint64_t a1)
{
  [*(a1 + 32) setIsDataInitSuccess:0];
  v2 = +[TelephonyStateRelay sharedInstance];
  [*(a1 + 32) setCtRelay:v2];

  v3 = [*(a1 + 32) ctRelay];
  v4 = [v3 coreTelephonyClient];

  if (!v4 && os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_10020A38C();
  }

  v5 = [*(a1 + 32) ctRelay];
  [v5 addTelephonyStateDelegate:*(a1 + 32) withQueue:{objc_msgSend(*(a1 + 32), "queue")}];

  v6 = [*(a1 + 32) ctRelay];
  [v6 getAirplaneModeStatus:*(a1 + 32)];

  [*(a1 + 32) setAirplaneModeActive:0];
  v7 = [*(a1 + 32) ctRelay];
  [v7 getRadioStateForDelegate:*(a1 + 32)];

  [*(a1 + 32) setRadioState:&off_1002BF348];
  v8 = [*(a1 + 32) ctRelay];
  v9 = [v8 getStewieState];
  [*(a1 + 32) setStewieState:v9];

  return [*(a1 + 32) populateSubscriptionContextsInUse];
}

void sub_100132E8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 dataPreferred])
  {
    v5 = *(a1 + 32);
    v6 = [v4 rat];
    v7 = *(a1 + 40);
    v8 = [v4 isSatelliteSystem];
    v9 = [*(a1 + 32) airplaneModeActive];
    v10 = [v4 displayStatus];
    v11 = [v5 deriveRAT:v6 stewieState:v7 isSatelliteSystem:v8 airplaneModeActive:v9 displayStatus:v10];

    v12 = +[TelephonyStateRelay deriveDataIcon:stewieState:](TelephonyStateRelay, "deriveDataIcon:stewieState:", [v4 dataConnectionType], *(a1 + 40));
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = [v13 getNSString:"new_radio_access_technology"];
    v18[0] = v15;
    v19[0] = v11;
    v16 = [*(a1 + 32) getNSString:"new_cellular_icon"];
    v18[1] = v16;
    v19[1] = v12;
    v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    [v13 buildAndSubmitCAPayload:v4 currentTime:v14 changedFields:v17];
  }

  [v4 setStartTime:*(a1 + 48)];
}

void sub_1001331EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 dataPreferred])
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = [v5 getNSString:"new_baseband_operating_mode"];
    v10 = v7;
    v8 = [*(a1 + 32) getRadioStateString:*(a1 + 40)];
    v11 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v5 buildAndSubmitCAPayload:v4 currentTime:v6 changedFields:v9];
  }

  [v4 setStartTime:*(a1 + 48)];
}

void sub_10013344C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 dataPreferred])
  {
    v5 = *(a1 + 32);
    v6 = [v4 displayStatus];
    v7 = [v5 deriveRegistrationStatus:v6 airplaneModeActive:*(a1 + 48)];

    v8 = *(a1 + 32);
    v9 = [v4 rat];
    v10 = [*(a1 + 32) stewieState];
    v11 = [v4 isSatelliteSystem];
    v12 = *(a1 + 48);
    v13 = [v4 displayStatus];
    v14 = [v8 deriveRAT:v9 stewieState:v10 isSatelliteSystem:v11 airplaneModeActive:v12 displayStatus:v13];

    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = [v16 getNSString:"new_registration_state"];
    v20[0] = v17;
    v21[0] = v7;
    v18 = [*(a1 + 32) getNSString:"new_radio_access_technology"];
    v20[1] = v18;
    v21[1] = v14;
    v19 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    [v16 buildAndSubmitCAPayload:v4 currentTime:v15 changedFields:v19];
  }

  [v4 setStartTime:*(a1 + 40)];
}

void sub_100133A24(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v5 dataPreferred])
  {
    [*(a1 + 32) buildAndSubmitCAPayload:v5 currentTime:*(a1 + 48) changedFields:&__NSDictionary0__struct];
  }

  [v5 setStartTime:*(a1 + 48)];
  v6 = [*(a1 + 40) uuid];
  [v5 setDataPreferred:{objc_msgSend(v7, "isEqual:", v6)}];
}

void sub_100134B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, void *a26, void *a27)
{
  if ((v33 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_100135C7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) uuid];
      objc_claimAutoreleasedReturnValue();
      [v6 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020AED0();
    }
  }

  else
  {
    v7 = *(qword_1002DBE98 + 48);
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [*(a1 + 32) uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020AF20();
      }

      v8 = [*(a1 + 40) queue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100135EAC;
      v14[3] = &unk_1002B37C8;
      v14[4] = *(a1 + 40);
      v15 = v5;
      v16 = *(a1 + 32);
      v9 = *(a1 + 48);
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v17 = v9;
      v19 = v10;
      v12 = v11;
      v21 = *(a1 + 80);
      v13 = *(a1 + 72);
      v18 = v12;
      v20 = v13;
      dispatch_async(v8, v14);
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) uuid];
      objc_claimAutoreleasedReturnValue();
      sub_10020AF64();
    }
  }
}

void sub_100135EAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v37 = 0;
  v4 = [v2 extractCellInfo:v3 error:&v37];
  v5 = v37;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = v5;
    v8 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 48) uuid];
      v10 = [v7 localizedDescription];
      *buf = 138412546;
      v39 = v9;
      v40 = 2112;
      v41 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "RatRetentionMetric:#N Error while extracting data from cell for context %@: %@", buf, 0x16u);
    }

    v11 = [ExtractedCellInfo alloc];
    v12 = [*(a1 + 32) getNSString:"Unknown"];
    v13 = [*(a1 + 32) getNSString:"Unknown"];
    v14 = [*(a1 + 32) getNSString:"Unknown"];
    v15 = [(ExtractedCellInfo *)v11 init:v12 band:&off_1002BF360 frequencyRange:v13 nrnsaFrequencyRange:v14 bandwidth:&off_1002BF360 nrnsaBandwidth:&off_1002BF360 arfcn:&off_1002BF360 nrnsaArfcn:&off_1002BF360 gci:0];

    v4 = v15;
  }

  v36 = [*(a1 + 32) CTCellularDataTechnologyToString:{objc_msgSend(*(a1 + 56), "dataBearerTechnology")}];
  if (v36)
  {
    v16 = [v4 gci];
    if (v16)
    {
      [v4 gci];
    }

    else
    {
      [*(a1 + 32) getNSString:"unknown"];
    }
    v32 = ;

    v17 = [RatRetentionState alloc];
    v18 = *(a1 + 72);
    v31 = [*(a1 + 64) registrationDisplayStatus];
    v35 = [v4 rat];
    v34 = [v4 band];
    v33 = [v4 arfcn];
    v19 = [v4 nrnsaArfcn];
    v20 = [v4 bandwidth];
    v21 = [v4 nrnsaBandwidth];
    v22 = [v4 frequencyRange];
    v23 = [v4 nrnsaFrequencyRange];
    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 48) slotID]);
    BYTE1(v30) = *(a1 + 89);
    LOBYTE(v30) = 0;
    LOBYTE(v29) = *(a1 + 88);
    v25 = [(RatRetentionState *)v17 init:v18 displayStatus:v31 rat:v35 dataBearerTechnology:v36 band:v34 arfcn:v33 nrnsaArfcn:v19 bandwidth:v20 nrnsaBandwidth:v21 frequencyRange:v22 nrnsaFrequencyRange:v23 subsId:v24 dataPreferred:v29 lastKnownGci:v32 isSatelliteSystem:v30 isSatelliteProvisioned:*(a1 + 80) dataConnectionType:?];

    v26 = [*(a1 + 32) ctRelay];
    [v26 getSatelliteRegistrationStatus:*(a1 + 48) delegate:*(a1 + 32)];

    if (v25)
    {
      v27 = [*(a1 + 32) contextUUIDToStateMap];
      v28 = [*(a1 + 48) uuid];
      [v27 setObject:v25 forKey:v28];

      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [*(a1 + 48) uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020AFA8();
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 48) uuid];
      objc_claimAutoreleasedReturnValue();
      sub_10020AFF4();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    [*(a1 + 56) dataBearerTechnology];
    [*(a1 + 48) uuid];
    objc_claimAutoreleasedReturnValue();
    sub_10020B038();
  }
}

void sub_100136AC0(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&stru_1002D47D8);

  _Unwind_Resume(a1);
}

uint64_t sub_100136C1C(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2112;
  *(a2 + 10) = result;
  return result;
}

uint64_t sub_100136C34()
{
  if ((byte_1002D4828 & 1) == 0)
  {
    byte_1002D4828 = 1;
    return __cxa_atexit(sub_100029738, &stru_1002D47D8, &_mh_execute_header);
  }

  return result;
}

uint64_t *sub_100136C70(uint64_t *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100070504(v2, v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  return a1;
}

uint64_t sub_100136CD8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_100129EF8(a2, v15);
  v9 = *v15;
  *v15 = 0;
  v10 = *a1;
  *a1 = v9;
  if (v10)
  {
    (*(*v10 + 16))(v10);
    v11 = *v15;
    *v15 = 0;
    if (v11)
    {
      (*(*v11 + 16))(v11);
    }

    v9 = *a1;
  }

  v12 = *qword_1002DBE98;
  v13 = os_log_type_enabled(*qword_1002DBE98, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v13)
    {
      *v15 = 134217984;
      *&v15[4] = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "config:#E Configuration did not parse correctly (%zd bytes)", v15, 0xCu);
    }

    operator new();
  }

  if (v13)
  {
    *v15 = 134218240;
    *&v15[4] = a3;
    v16 = 1024;
    v17 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "config:#N Config parsed (%zd bytes, type=%d)", v15, 0x12u);
    v9 = *a1;
  }

  return sub_10012A484(v9, a6);
}

void *sub_100136EE4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      return sub_10000FFF8(a2, *v2, *(v2 + 1));
    }

    else
    {
      v3 = *v2;
      *(a2 + 16) = *(v2 + 2);
      *a2 = v3;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_100137148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100137160(void *a1, void *a2)
{
  *a1 = off_1002B3888;
  a1[1] = 0;
  v3 = (a1 + 1);
  v4 = a2;
  objc_storeWeak(v3, v4);

  return a1;
}

void *sub_1001371C8(void *a1, void *a2)
{
  objc_initWeak(&location, a2);
  sub_100137160(a1, location);
  objc_destroyWeak(&location);
  return a1;
}

void sub_100137210(uint64_t a1, uint64_t a2, void **a3)
{
  if (*(a2 + 23) < 0 && *(a2 + 8) == 59)
  {
    v5 = *a2;
    if (!memcmp(*a2, "com.apple.Baseband.cellularPowerLogBasebandPowerConsumption", 0x3BuLL))
    {
      v6 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_10020B0C4(v5, v6);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 8));
      if (WeakRetained)
      {
        v8 = *a3;
        object = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          object = xpc_null_create();
        }

        v20 = 0;
        v9 = [WISXPCUtils dictionaryFromPrimitivesXPCDict:&object error:&v20];
        v10 = v20;
        xpc_release(object);
        object = 0;
        if (v10 || !v9)
        {
          v15 = *(qword_1002DBE98 + 48);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10020B13C(v10, v15);
          }
        }

        else
        {
          v11 = [v9 valueForKey:@"power_stats_component"];
          v12 = [v11 isEqualToString:@"OVERALL"];

          if (v12)
          {
            v13 = [v9 valueForKey:@"duration_ms"];
            v14 = [v13 longLongValue];

            if (v14 < 21600001)
            {
              v16 = [WeakRetained queue];
              v17[0] = _NSConcreteStackBlock;
              v17[1] = 3221225472;
              v17[2] = sub_100137498;
              v17[3] = &unk_1002AD7E0;
              v18 = WeakRetained;
              v19 = v9;
              dispatch_async(v16, v17);
            }

            else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
            {
              sub_10020B1B4();
            }
          }
        }
      }
    }
  }
}

void sub_100137498(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 handleBasebandPowerMetricWithPayload:?];
}

void sub_1001378B0(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&stru_1002D4780);
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 112));

  _Unwind_Resume(a1);
}

void sub_10013794C(uint64_t a1)
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_10020B25C();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleChargingStateUpdate];
  }
}

void sub_100137A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WISPowerUsageMetricController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *sub_1001389A0(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001389D8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    sub_100008350(v4);
  }
}

WISPowerUsageMetricController **sub_100138AF8(WISPowerUsageMetricController **a1)
{
  *a1 = 0;
  v2 = objc_alloc_init(WISPowerUsageMetricController);
  v3 = *a1;
  *a1 = v2;

  return a1;
}

double sub_100138B50(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  return XPCEventPublisher.Token.rawValue.getter(v1, v2);
}

void sub_100138B8C(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  XPCEventPublisher.Token.rawValue.getter(v1, v2);

  operator delete();
}

void *sub_100138C48(void *a1, id *location)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002B38C8;
  WeakRetained = objc_loadWeakRetained(location);
  sub_1001371C8(a1 + 3, WeakRetained);

  return a1;
}

void sub_100138CC8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B38C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100138D44()
{
  if ((byte_1002D47D0 & 1) == 0)
  {
    byte_1002D47D0 = 1;
    return __cxa_atexit(sub_10002340C, &stru_1002D4780, &_mh_execute_header);
  }

  return result;
}

void sub_100139C00(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

BOOL sub_10013BCA4(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [*(a1 + 32) objectID];
  v5 = v3 == v4;

  return v5;
}

void sub_10013DC1C(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t sub_10013DC38()
{
  if (qword_1002DBF08)
  {
    (*(*qword_1002DBF08 + 8))(qword_1002DBF08);
  }

  if (qword_1002DBF10)
  {
    (*(*qword_1002DBF10 + 8))(qword_1002DBF10);
  }

  if (qword_1002DBF18)
  {
    (*(*qword_1002DBF18 + 8))(qword_1002DBF18);
  }

  if (qword_1002DBF20)
  {
    (*(*qword_1002DBF20 + 8))(qword_1002DBF20);
  }

  if (qword_1002DBF28)
  {
    (*(*qword_1002DBF28 + 8))(qword_1002DBF28);
  }

  if (qword_1002DBF30)
  {
    (*(*qword_1002DBF30 + 8))(qword_1002DBF30);
  }

  if (qword_1002DBF38)
  {
    (*(*qword_1002DBF38 + 8))(qword_1002DBF38);
  }

  if (qword_1002DBF40)
  {
    (*(*qword_1002DBF40 + 8))(qword_1002DBF40);
  }

  if (qword_1002DBF48)
  {
    (*(*qword_1002DBF48 + 8))(qword_1002DBF48);
  }

  result = qword_1002DBF50;
  if (qword_1002DBF50)
  {
    v1 = *(*qword_1002DBF50 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_10013E1B0(uint64_t result)
{
  *(result + 40) = 0;
  *(result + 48) = 0;
  *result = off_1002B3DA0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_10013E1E0()
{
  v0 = qword_1002DBF58;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[1] = sub_10013DE40;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_10013E264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_10013E278(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), *(a2 + 16) + a1[4]);
  if (*(a2 + 16) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 8) + 8 * v4);
      v6 = a1[5];
      v7 = a1[4];
      if (v7 >= v6)
      {
        if (v6 == a1[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v6 + 1);
          v6 = a1[5];
        }

        a1[5] = v6 + 1;
        operator new();
      }

      v8 = *(a1 + 1);
      a1[4] = v7 + 1;
      sub_10013EB60(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 16));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), *(a2 + 40) + a1[10]);
  if (*(a2 + 40) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 32) + 8 * v9);
      v11 = a1[11];
      v12 = a1[10];
      if (v12 >= v11)
      {
        if (v11 == a1[12])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v11 + 1);
          v11 = a1[11];
        }

        a1[11] = v11 + 1;
        operator new();
      }

      v13 = *(a1 + 4);
      a1[10] = v12 + 1;
      sub_10013EB60(*(v13 + 8 * v12), v10);
      ++v9;
    }

    while (v9 < *(a2 + 40));
  }
}

void sub_10013E4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013E4E0(uint64_t *a1)
{
  *a1 = off_1002B3968;
  sub_10013E1E0();
  sub_1000C8650(a1 + 4);
  sub_1000C8650(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10013E554(uint64_t *a1)
{
  sub_10013E4E0(a1);

  operator delete();
}

uint64_t sub_10013E5E8(uint64_t a1)
{
  sub_1000C85E0(a1 + 8);
  result = sub_1000C85E0(a1 + 32);
  *(a1 + 60) = 0;
  return result;
}

uint64_t sub_10013E61C(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_30;
        }

        while (1)
        {
          v22 = a1[11];
          v23 = a1[10];
          if (v23 >= v22)
          {
            if (v22 == a1[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v22 + 1);
              v22 = a1[11];
            }

            a1[11] = v22 + 1;
            operator new();
          }

          v24 = *(a1 + 4);
          a1[10] = v23 + 1;
          v25 = *(v24 + 8 * v23);
          v36 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36))
            {
              return 0;
            }
          }

          else
          {
            v36 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v36);
          if (!sub_10013EFD0(v25, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v31 = *(this + 14);
          v18 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v18)
          {
            *(this + 14) = v32;
          }

          v20 = *(this + 1);
          v33 = *(this + 2);
          if (v20 >= v33 || *v20 != 18)
          {
            break;
          }

LABEL_49:
          *(this + 1) = v20 + 1;
        }

        if (v20 == v33 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        break;
      }

      while (1)
      {
        v8 = a1[5];
        v9 = a1[4];
        if (v9 >= v8)
        {
          if (v8 == a1[6])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v8 + 1);
            v8 = a1[5];
          }

          a1[5] = v8 + 1;
          operator new();
        }

        v10 = *(a1 + 1);
        a1[4] = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v35 = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
          {
            return 0;
          }
        }

        else
        {
          v35 = *v12;
          *(this + 1) = v12 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
        if (!sub_10013EFD0(v11, this, v16) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
        v17 = *(this + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(this + 14) = v19;
        }

        v20 = *(this + 1);
        if (v20 >= *(this + 2))
        {
          break;
        }

        v21 = *v20;
        if (v21 != 10)
        {
          if (v21 != 18)
          {
            goto LABEL_1;
          }

          goto LABEL_49;
        }

        *(this + 1) = v20 + 1;
      }
    }

LABEL_30:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10013E9DC(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  return result;
}

uint64_t sub_10013EA70(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_10013F878(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 += v6 + v7;
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v8 = *(a1 + 40);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_10013F878(*(*(a1 + 32) + 8 * v10), a2);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      }

      else
      {
        v13 = 1;
      }

      v9 = (v12 + v9 + v13);
      ++v10;
    }

    while (v10 < *(a1 + 40));
  }

  *(a1 + 56) = v9;
  return v9;
}

void sub_10013EB60(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 8);
    *(a1 + 72) |= 1u;
    v8 = *(a1 + 8);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 16);
  *(a1 + 72) |= 2u;
  *(a1 + 16) = v9;
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(a2 + 20);
  *(a1 + 72) |= 4u;
  *(a1 + 20) = v10;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 24);
  *(a1 + 72) |= 8u;
  *(a1 + 24) = v11;
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_29:
    v13 = *(a2 + 32);
    *(a1 + 72) |= 0x20u;
    *(a1 + 32) = v13;
    v4 = *(a2 + 72);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_28:
  v12 = *(a2 + 28);
  *(a1 + 72) |= 0x10u;
  *(a1 + 28) = v12;
  v4 = *(a2 + 72);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_30:
  v14 = *(a2 + 36);
  *(a1 + 72) |= 0x40u;
  *(a1 + 36) = v14;
  v4 = *(a2 + 72);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 40);
    *(a1 + 72) |= 0x80u;
    *(a1 + 40) = v5;
    v4 = *(a2 + 72);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 44);
    *(a1 + 72) |= 0x100u;
    *(a1 + 44) = v15;
    v4 = *(a2 + 72);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 48);
  *(a1 + 72) |= 0x200u;
  *(a1 + 48) = v16;
  v4 = *(a2 + 72);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(a2 + 52);
  *(a1 + 72) |= 0x400u;
  *(a1 + 52) = v17;
  v4 = *(a2 + 72);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = *(a2 + 56);
  *(a1 + 72) |= 0x800u;
  *(a1 + 56) = v18;
  v4 = *(a2 + 72);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_36:
  v19 = *(a2 + 60);
  *(a1 + 72) |= 0x1000u;
  *(a1 + 60) = v19;
  if ((*(a2 + 72) & 0x2000) == 0)
  {
    return;
  }

LABEL_20:
  v6 = *(a2 + 64);
  *(a1 + 72) |= 0x2000u;
  *(a1 + 64) = v6;
}

void sub_10013EDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013EDFC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002B39E0;
  sub_10013EE54(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10013EE54(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  sub_10013E1E0();
}

void sub_10013EEC4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10013EDFC(a1);

  operator delete();
}

uint64_t sub_10013EF60(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    if (v1)
    {
      v2 = *(result + 8);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    v1 = *(result + 72);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 52) = 0;
    *(result + 44) = 0;
    *(result + 60) = 0;
  }

  *(result + 72) = 0;
  return result;
}

uint64_t sub_10013EFD0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
  {
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        *(a1 + 72) |= 1u;
        if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (result)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          if (v10 < v9 && *v10 == 16)
          {
            v11 = v10 + 1;
            *(this + 1) = v11;
            goto LABEL_30;
          }

          continue;
        }

        return result;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
LABEL_30:
        if (v11 < v9)
        {
          v19 = *v11;
          if ((v19 & 0x80000000) == 0)
          {
            *(a1 + 16) = v19;
            v20 = v11 + 1;
            *(this + 1) = v20;
LABEL_48:
            *(a1 + 72) |= 2u;
            if (v20 < v9 && *v20 == 24)
            {
              v16 = v20 + 1;
              *(this + 1) = v16;
              goto LABEL_51;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (result)
        {
          v20 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_48;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(this + 1);
        v9 = *(this + 2);
LABEL_51:
        if (v16 >= v9 || (v26 = *v16, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v26;
          v27 = v16 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 72) |= 4u;
        if (v27 >= v9 || *v27 != 32)
        {
          continue;
        }

        v17 = v27 + 1;
        *(this + 1) = v17;
LABEL_59:
        if (v17 >= v9 || (v28 = *v17, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v28;
          v29 = v17 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 72) |= 8u;
        if (v29 >= v9 || *v29 != 40)
        {
          continue;
        }

        v13 = v29 + 1;
        *(this + 1) = v13;
LABEL_67:
        v50 = 0;
        if (v13 >= v9 || (v30 = *v13, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
          if (!result)
          {
            return result;
          }

          v30 = v50;
          v31 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v31 = v13 + 1;
          *(this + 1) = v31;
        }

        *(a1 + 28) = -(v30 & 1) ^ (v30 >> 1);
        *(a1 + 72) |= 0x10u;
        if (v31 >= v9 || *v31 != 48)
        {
          continue;
        }

        v21 = v31 + 1;
        *(this + 1) = v21;
LABEL_75:
        v50 = 0;
        if (v21 >= v9 || (v32 = *v21, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
          if (!result)
          {
            return result;
          }

          v32 = v50;
          v33 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v33 = v21 + 1;
          *(this + 1) = v33;
        }

        *(a1 + 32) = v32;
        *(a1 + 72) |= 0x20u;
        if (v33 >= v9 || *v33 != 56)
        {
          continue;
        }

        v23 = v33 + 1;
        *(this + 1) = v23;
LABEL_83:
        if (v23 >= v9 || (v34 = *v23, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v35 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 36) = v34;
          v35 = v23 + 1;
          *(this + 1) = v35;
        }

        *(a1 + 72) |= 0x40u;
        if (v35 >= v9 || *v35 != 64)
        {
          continue;
        }

        v18 = v35 + 1;
        *(this + 1) = v18;
LABEL_91:
        if (v18 >= v9 || (v36 = *v18, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v37 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v36;
          v37 = v18 + 1;
          *(this + 1) = v37;
        }

        *(a1 + 72) |= 0x80u;
        if (v37 >= v9 || *v37 != 72)
        {
          continue;
        }

        v25 = v37 + 1;
        *(this + 1) = v25;
LABEL_99:
        if (v25 >= v9 || (v38 = *v25, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
          if (!result)
          {
            return result;
          }

          v39 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 44) = v38;
          v39 = v25 + 1;
          *(this + 1) = v39;
        }

        *(a1 + 72) |= 0x100u;
        if (v39 >= v9 || *v39 != 80)
        {
          continue;
        }

        v15 = v39 + 1;
        *(this + 1) = v15;
LABEL_107:
        if (v15 >= v9 || (v40 = *v15, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v41 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v40;
          v41 = v15 + 1;
          *(this + 1) = v41;
        }

        *(a1 + 72) |= 0x200u;
        if (v41 >= v9 || *v41 != 88)
        {
          continue;
        }

        v24 = v41 + 1;
        *(this + 1) = v24;
LABEL_115:
        if (v24 >= v9 || (v42 = *v24, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v43 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v42;
          v43 = v24 + 1;
          *(this + 1) = v43;
        }

        *(a1 + 72) |= 0x400u;
        if (v43 >= v9 || *v43 != 96)
        {
          continue;
        }

        v12 = v43 + 1;
        *(this + 1) = v12;
LABEL_123:
        v50 = 0;
        if (v12 >= v9 || (v44 = *v12, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
          if (!result)
          {
            return result;
          }

          v44 = v50;
          v45 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v45 = v12 + 1;
          *(this + 1) = v45;
        }

        *(a1 + 56) = -(v44 & 1) ^ (v44 >> 1);
        *(a1 + 72) |= 0x800u;
        if (v45 >= v9 || *v45 != 104)
        {
          continue;
        }

        v14 = v45 + 1;
        *(this + 1) = v14;
LABEL_131:
        v50 = 0;
        if (v14 >= v9 || (v46 = *v14, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
          if (!result)
          {
            return result;
          }

          v46 = v50;
          v47 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v47 = v14 + 1;
          *(this + 1) = v47;
        }

        *(a1 + 60) = -(v46 & 1) ^ (v46 >> 1);
        *(a1 + 72) |= 0x1000u;
        if (v47 >= v9 || *v47 != 112)
        {
          continue;
        }

        v22 = v47 + 1;
        *(this + 1) = v22;
LABEL_139:
        if (v22 >= v9 || (v48 = *v22, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v49 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v48;
          v49 = v22 + 1;
          *(this + 1) = v49;
        }

        *(a1 + 72) |= 0x2000u;
        if (v49 != v9 || !*(this + 11) && *(this + 6) != *(this + 10))
        {
          continue;
        }

        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v17 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_59;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_67;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v21 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_75;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v23 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_83;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v18 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_91;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v25 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_99;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_107;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v24 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_115;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_123;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_131;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v22 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_139;
      default:
LABEL_42:
        if (v7 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t sub_10013F6B8(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 72);
  if (v6)
  {
    v7 = *(result + 8);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = v5[18];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[18];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[18];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[18];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(5, v5[7], a2, a4);
  v6 = v5[18];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v5[8], a2, a4);
  v6 = v5[18];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[18];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[18];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[18];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
  v6 = v5[18];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[13], a2, a4);
  v6 = v5[18];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0xD, v5[15], a2, a4);
    if ((v5[18] & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0xC, v5[14], a2, a4);
  v6 = v5[18];
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return result;
  }

LABEL_29:
  v8 = v5[16];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v8, a2, a4);
}

uint64_t sub_10013F878(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_52;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 8);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(a1 + 72);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(a1 + 16);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_19:
  if ((v3 & 4) != 0)
  {
    v14 = *(a1 + 20);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v16 = *(a1 + 24);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_34:
  v18 = ((2 * *(a1 + 28)) ^ (*(a1 + 28) >> 31));
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_38:
  v20 = *(a1 + 32);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = 11;
  }

  else if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

LABEL_44:
  v22 = *(a1 + 36);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_48:
    v24 = *(a1 + 40);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v25 = 2;
    }

    v4 = (v25 + v4);
  }

LABEL_52:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v3 & 0x100) != 0)
  {
    v26 = *(a1 + 44);
    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v27 = 2;
    }

    v4 = (v27 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_55:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_68;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_55;
  }

  v28 = *(a1 + 48);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v29 = 2;
  }

  v4 = (v29 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_56:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_72;
  }

LABEL_68:
  v30 = *(a1 + 52);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v31 = 2;
  }

  v4 = (v31 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_57:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_76;
  }

LABEL_72:
  v32 = ((2 * *(a1 + 56)) ^ (*(a1 + 56) >> 31));
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v33 = 2;
  }

  v4 = (v33 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_58:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v34 = ((2 * *(a1 + 60)) ^ (*(a1 + 60) >> 31));
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v35 = 2;
  }

  v4 = (v35 + v4);
  if ((v3 & 0x2000) != 0)
  {
LABEL_80:
    v36 = *(a1 + 64);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 1;
    }

    else
    {
      v37 = 2;
    }

    v4 = (v37 + v4);
  }

LABEL_84:
  *(a1 + 68) = v4;
  return v4;
}

void sub_10013FB90(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      a1[5] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      a1[5] |= 2u;
      a1[3] = v6;
    }
  }
}

void sub_10013FC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013FC54(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002B3A58;
  sub_10013E1E0();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10013FCB0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10013FC54(a1);

  operator delete();
}

uint64_t sub_10013FD34(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_10013FD48(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[2] = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      a1[5] |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[3] = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        a1[5] |= 2u;
        if (v13 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10013FEC4(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_10013FF30(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v5 = *(a1 + 8);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(a1 + 12);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_14:
  *(a1 + 16) = v4;
  return v4;
}

void sub_10013FFDC(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 8);
      a1[6] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 24);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    a1[6] |= 2u;
    a1[3] = v7;
    if ((*(a2 + 24) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 16);
    a1[6] |= 4u;
    a1[4] = v5;
  }
}

void sub_1001400B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001400C8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002B3AD0;
  sub_10013E1E0();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100140124(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1001400C8(a1);

  operator delete();
}

uint64_t sub_1001401AC(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_1001401C4(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[2] = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      a1[6] |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[3] = v14;
          v15 = v12 + 1;
          *(this + 1) = v15;
        }

        a1[6] |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(this + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[4] = v16;
            v17 = v13 + 1;
            *(this + 1) = v17;
          }

          a1[6] |= 4u;
          if (v17 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

int *sub_1001403B0(int *result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[6];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
  v6 = v5[6];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = v5[4];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t sub_10014043C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if (*(a1 + 24))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 24);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 24) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 24);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
  }

LABEL_19:
  *(a1 + 20) = v4;
  return v4;
}

void sub_100140510(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 6), *(a2 + 32) + a1[8]);
  if (*(a2 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 24) + 8 * v4);
      v6 = a1[9];
      v7 = a1[8];
      if (v7 >= v6)
      {
        if (v6 == a1[10])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 6), v6 + 1);
          v6 = a1[9];
        }

        a1[9] = v6 + 1;
        operator new();
      }

      v8 = *(a1 + 3);
      a1[8] = v7 + 1;
      sub_10013FB90(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 32));
  }

  LOBYTE(v9) = *(a2 + 52);
  if (v9)
  {
    if (*(a2 + 52))
    {
      v11 = *(a2 + 8);
      a1[13] |= 1u;
      a1[2] = v11;
      v9 = *(a2 + 52);
      if ((v9 & 2) == 0)
      {
LABEL_14:
        if ((v9 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_14;
    }

    v12 = *(a2 + 12);
    a1[13] |= 2u;
    a1[3] = v12;
    v9 = *(a2 + 52);
    if ((v9 & 4) == 0)
    {
LABEL_15:
      if ((v9 & 8) == 0)
      {
        return;
      }

      goto LABEL_16;
    }

LABEL_20:
    v13 = *(a2 + 16);
    a1[13] |= 4u;
    a1[4] = v13;
    if ((*(a2 + 52) & 8) == 0)
    {
      return;
    }

LABEL_16:
    v10 = *(a2 + 20);
    a1[13] |= 8u;
    a1[5] = v10;
  }
}

void sub_1001406F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100140708(uint64_t *a1)
{
  *a1 = off_1002B3B48;
  sub_10013E1E0();
  sub_1000C8650(a1 + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100140770(uint64_t *a1)
{
  sub_100140708(a1);

  operator delete();
}

uint64_t sub_100140804(uint64_t a1)
{
  if (*(a1 + 52))
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = sub_1000C85E0(a1 + 24);
  *(a1 + 52) = 0;
  return result;
}

uint64_t sub_10014083C(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_40;
        }

        if (v7 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
LABEL_48:
          v36 = 0;
          if (v12 >= v9 || (v21 = *v12, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36);
            if (!result)
            {
              return result;
            }

            v21 = v36;
            v22 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v22 = v12 + 1;
            *(this + 1) = v22;
          }

          a1[5] = -(v21 & 1) ^ (v21 >> 1);
          a1[13] |= 8u;
          if (v22 < v9 && *v22 == 42)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

          while (1)
          {
            v23 = a1[9];
            v24 = a1[8];
            if (v24 >= v23)
            {
              if (v23 == a1[10])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 6), v23 + 1);
                v23 = a1[9];
              }

              a1[9] = v23 + 1;
              operator new();
            }

            v25 = *(a1 + 3);
            a1[8] = v24 + 1;
            v26 = *(v25 + 8 * v24);
            v37 = 0;
            v27 = *(this + 1);
            if (v27 >= *(this + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
              {
                return 0;
              }
            }

            else
            {
              v37 = *v27;
              *(this + 1) = v27 + 1;
            }

            v28 = *(this + 14);
            v29 = *(this + 15);
            *(this + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v37);
            if (!sub_10013FD48(v26, this, v31) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
            v32 = *(this + 14);
            v33 = __OFSUB__(v32, 1);
            v34 = v32 - 1;
            if (v34 < 0 == v33)
            {
              *(this + 14) = v34;
            }

            v22 = *(this + 1);
            v35 = *(this + 2);
            if (v22 >= v35 || *v22 != 42)
            {
              break;
            }

LABEL_55:
            *(this + 1) = v22 + 1;
          }

          if (v22 == v35 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(this + 1);
      v9 = *(this + 2);
      if (v13 >= v9 || (v14 = *v13, v14 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v15 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        a1[2] = v14;
        v15 = v13 + 1;
        *(this + 1) = v15;
      }

      a1[13] |= 1u;
      if (v15 < v9 && *v15 == 16)
      {
        v10 = v15 + 1;
        *(this + 1) = v10;
LABEL_32:
        if (v10 >= v9 || (v17 = *v10, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v18 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          a1[3] = v17;
          v18 = v10 + 1;
          *(this + 1) = v18;
        }

        a1[13] |= 2u;
        if (v18 < v9 && *v18 == 24)
        {
          v11 = v18 + 1;
          *(this + 1) = v11;
LABEL_40:
          if (v11 >= v9 || (v19 = *v11, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v20 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            a1[4] = v19;
            v20 = v11 + 1;
            *(this + 1) = v20;
          }

          a1[13] |= 4u;
          if (v20 < v9 && *v20 == 32)
          {
            v12 = v20 + 1;
            *(this + 1) = v12;
            goto LABEL_48;
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_32;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100140C44(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  if ((*(v5 + 52) & 8) != 0)
  {
LABEL_5:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(4, *(v5 + 20), a2, a4);
  }

LABEL_6:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  return result;
}

uint64_t sub_100140D14(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 52))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 52);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 52);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v8 = *(a1 + 16);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 52);
  }

  else
  {
    v9 = 2;
  }

  v4 += v9;
  if ((v3 & 8) != 0)
  {
LABEL_21:
    v10 = ((2 * *(a1 + 20)) ^ (*(a1 + 20) >> 31));
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_25:
  v12 = *(a1 + 32);
  v13 = (v12 + v4);
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = sub_10013FF30(*(*(a1 + 24) + 8 * v14), a2);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      }

      else
      {
        v17 = 1;
      }

      v13 = (v16 + v13 + v17);
      ++v14;
    }

    while (v14 < *(a1 + 32));
  }

  *(a1 + 48) = v13;
  return v13;
}

void sub_100140E7C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 8);
      a1[7] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 28);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    a1[7] |= 2u;
    a1[3] = v7;
    v4 = *(a2 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 16);
    a1[7] |= 4u;
    a1[4] = v8;
    if ((*(a2 + 28) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 20);
    a1[7] |= 8u;
    a1[5] = v5;
  }
}

void sub_100140F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100140F88(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002B3BC0;
  sub_10013E1E0();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100140FE4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100140F88(a1);

  operator delete();
}

uint64_t sub_100141068(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_10014107C(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(this + 1);
      v8 = *(this + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[2] = v12;
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      a1[7] |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(this + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[3] = v15;
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        a1[7] |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
LABEL_37:
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[4] = v17;
            v18 = v14 + 1;
            *(this + 1) = v18;
          }

          a1[7] |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(this + 1) = v18 + 1;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(this + 1) = v20;
            }

            a1[5] = -(v19 & 1) ^ (v19 >> 1);
            a1[7] |= 8u;
            if (v20 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

int *sub_1001412FC(int *result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[7];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[7];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
      if ((v5[7] & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[7];
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(4, v7, a2, a4);
}

uint64_t sub_1001413A4(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 28))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 28);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v8 = *(a1 + 16);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_21:
    v10 = ((2 * *(a1 + 20)) ^ (*(a1 + 20) >> 31));
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
  }

LABEL_25:
  *(a1 + 24) = v4;
  return v4;
}

void sub_1001414B0(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 8);
      a1[7] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 28);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    a1[7] |= 2u;
    a1[3] = v7;
    v4 = *(a2 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 16);
    a1[7] |= 4u;
    a1[4] = v8;
    if ((*(a2 + 28) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 20);
    a1[7] |= 8u;
    a1[5] = v5;
  }
}

void sub_1001415A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001415BC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002B3C38;
  sub_10013E1E0();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100141618(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1001415BC(a1);

  operator delete();
}

uint64_t sub_10014169C(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_1001416B0(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(this + 1);
      v8 = *(this + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[2] = v12;
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      a1[7] |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(this + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[3] = v15;
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        a1[7] |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
LABEL_37:
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[4] = v17;
            v18 = v14 + 1;
            *(this + 1) = v18;
          }

          a1[7] |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(this + 1) = v18 + 1;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(this + 1) = v20;
            }

            a1[5] = -(v19 & 1) ^ (v19 >> 1);
            a1[7] |= 8u;
            if (v20 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}
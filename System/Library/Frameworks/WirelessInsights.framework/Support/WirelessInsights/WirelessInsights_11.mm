uint64_t sub_1000F9A04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F9A50(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

void *sub_1000F9AC8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1002B1828;
  v7[0] = off_1002B1898;
  v7[3] = v7;
  sub_100068C74(a1, a2, v7);
  sub_1000690B8(v7);
  a1[6] = a3;
  sub_100068E40(a2, a1 + 7);
  *a1 = off_1002B1828;
  return a1;
}

void sub_1000F9B98(_Unwind_Exception *a1)
{
  *v1 = off_1002ACE88;
  sub_1000690B8((v1 + 2));
  _Unwind_Resume(a1);
}

void *sub_1000F9BD4(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_1000F9C4C(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

BOOL sub_1000F9D6C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 12);
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v53 = v5;
  v54 = v7;
LABEL_2:
  while (1)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
    if (v9 < 1)
    {
      break;
    }

    v10 = *(a4 + 8);
    if (v10 >= *(a4 + 16) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a4);
      *(a4 + 32) = TagFallback;
      if (!TagFallback)
      {
LABEL_14:
        sub_1000FA7A0(a4, 0);
        continue;
      }
    }

    else
    {
      *(a4 + 32) = TagFallback;
      *(a4 + 8) = v10 + 1;
      if (!TagFallback)
      {
        goto LABEL_14;
      }
    }

    v12 = wis::reflect::decodeTag(TagFallback, v8);
    v13 = v12;
    v14 = HIDWORD(v12);
    memset(v63, 0, sizeof(v63));
    v64 = 0xFFFFFFFFLL;
    MetricFileMetadataHelper::getSubfieldType();
    *v63 = v61;
    v64 = v62;
    BuiltinType = MetadataHelper::getBuiltinType();
    DecodingType = wis::reflect::getDecodingType();
    v17 = DecodingType;
    if (DecodingType > 13)
    {
      if ((DecodingType - 15) >= 0xC)
      {
        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v30 = *(a4 + 8);
          if (v30 >= *(a4 + 16) || (v31 = *v30, (v31 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            v31 = __p;
          }

          else
          {
            LODWORD(__p) = *v30;
            *(a4 + 8) = v30 + 1;
          }

          goto LABEL_134;
        }

        if (DecodingType != 27)
        {
          goto LABEL_12;
        }

        v63[0] = 0;
        v27 = *(a4 + 8);
        if (v27 >= *(a4 + 16) || (v28 = *v27, v28 < 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v63))
          {
            goto LABEL_12;
          }

          v28 = v63[0];
        }

        else
        {
          v63[0] = *v27;
          *(a4 + 8) = v27 + 1;
        }

        v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v28);
        ++*(a4 + 56);
        v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a4, v42);
        v43 = *(a4 + 56);
        v44 = __OFSUB__(v43, 1);
        v45 = v43 - 1;
        if (v45 < 0 == v44)
        {
          *(a4 + 56) = v45;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v41);
      }

      else
      {
        v60 = 0;
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v60))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v60 = *v18;
          *(a4 + 8) = v18 + 1;
        }

        wis::reflect::getUnpackedType();
        WireTypeForType = wis::reflect::getWireTypeForType();
        v58 = a4;
        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v60);
        v59 = v20;
        __p = 0;
        v56 = 0;
        v57 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
              {
                if (v17 > 20)
                {
                  if (v17 <= 23)
                  {
                    if (v17 == 22)
                    {
                      sub_100045278(&__p, v63);
                      goto LABEL_118;
                    }

                    goto LABEL_53;
                  }

                  if (v17 == 26)
                  {
                    sub_100044F80(&__p, v63);
                    v38 = *v63;
                    if (*v63)
                    {
                      goto LABEL_120;
                    }

                    goto LABEL_121;
                  }

                  if (v17 == 25)
                  {
                    goto LABEL_117;
                  }

                  if (v17 != 24)
                  {
LABEL_153:
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
                  }
                }

                else
                {
                  if (v17 <= 17)
                  {
                    switch(v17)
                    {
                      case 15:
                        sub_100044BD0(&__p, v63);
                        break;
                      case 16:
                        sub_100044E44(&__p, v63);
                        break;
                      case 17:
LABEL_117:
                        sub_100045004(&__p, v63);
                        break;
                      default:
                        goto LABEL_153;
                    }

LABEL_118:
                    v38 = *v63;
                    if (*v63)
                    {
                      *&v63[2] = *v63;
LABEL_120:
                      operator delete(v38);
                    }

LABEL_121:
                    if (__p)
                    {
                      v56 = __p;
                      operator delete(__p);
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
                    goto LABEL_2;
                  }

                  if (v17 != 18)
                  {
                    if (v17 == 19)
                    {
                      sub_10004513C(&__p, v63);
                      goto LABEL_118;
                    }

LABEL_53:
                    sub_100044D0C(&__p, v63);
                    goto LABEL_118;
                  }
                }

                sub_100044B50(&__p, v63);
                goto LABEL_118;
              }

              *v63 = 0;
              sub_10004490C(&__p, v63);
              if (WireTypeForType > 1)
              {
                break;
              }

              if (WireTypeForType)
              {
                if (WireTypeForType == 1)
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v56 - 1);
LABEL_30:
                  if ((LittleEndian64Fallback & 1) == 0)
                  {
                    goto LABEL_47;
                  }
                }
              }

              else
              {
                v23 = v56 - 1;
                v24 = *(a4 + 8);
                if (v24 >= *(a4 + 16) || (v25 = *v24, (v25 & 0x8000000000000000) != 0))
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v23);
                  goto LABEL_30;
                }

                *v23 = v25;
                *(a4 + 8) = v24 + 1;
              }
            }

            if (WireTypeForType != 5)
            {
              break;
            }

            v63[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v63);
            *(v56 - 1) = v63[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        while (WireTypeForType != 2);
LABEL_47:
        if (__p)
        {
          v56 = __p;
          operator delete(__p);
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
LABEL_12:
        sub_1000FA7A0(a4, v14);
      }
    }

    else
    {
      if ((DecodingType - 1) < 0xC)
      {
        *v63 = 0;
        if (v13 > 1u)
        {
          if (v13 == 2)
          {
            goto LABEL_12;
          }

          if (v13 == 5)
          {
            LODWORD(__p) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            *v63 = __p;
          }
        }

        else if (v13)
        {
          if (v13 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v63) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v29 = *(a4 + 8);
          if (v29 >= *(a4 + 16) || (*v29 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v63) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
            *v63 = *v29;
            *(a4 + 8) = v29 + 1;
          }
        }

        v32 = *v63;
        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            continue;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            continue;
          case 3:
          case 6:
          case 11:
          case 12:
          case 17:
          case 20:
          case 25:
          case 26:
            continue;
          case 4:
          case 18:
            if (v54 != v14)
            {
              continue;
            }

            v33 = v53;
            v34 = *(v53 + 56);
            if (v34)
            {
              goto LABEL_97;
            }

            goto LABEL_98;
          case 5:
          case 19:
            wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
            continue;
          case 7:
          case 21:
            if (v54 != v14)
            {
              continue;
            }

            v35 = v53;
            v36 = *(v53 + 56);
            if (v36)
            {
              goto LABEL_102;
            }

            goto LABEL_103;
          case 8:
          case 22:
            wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            continue;
          case 9:
          case 23:
            if (v54 != v14)
            {
              continue;
            }

            v35 = v53;
            v36 = *(v53 + 56);
            if (v36)
            {
LABEL_102:
              LODWORD(v32) = (*(*v36 + 16))(v36, *v63);
            }

LABEL_103:
            if (*(v35 + 48) <= v32)
            {
              goto LABEL_150;
            }

            continue;
          case 10:
          case 24:
            if (v54 != v14)
            {
              continue;
            }

            v33 = v53;
            v34 = *(v53 + 56);
            if (v34)
            {
LABEL_97:
              v32 = (*(*v34 + 24))(v34, *v63);
            }

LABEL_98:
            if (*(v33 + 48) <= v32)
            {
              goto LABEL_150;
            }

            continue;
          default:
            v50 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v50, "This should never happen, no matter what the input!");
        }
      }

      if (DecodingType)
      {
        if (DecodingType != 13)
        {
          goto LABEL_12;
        }

        LODWORD(__p) = 0;
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }
        }

        else
        {
          LODWORD(__p) = *v26;
          *(a4 + 8) = v26 + 1;
        }

        memset(v63, 0, sizeof(v63));
        v64 = 0;
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
        if ((SHIBYTE(v64) & 0x80000000) == 0)
        {
          goto LABEL_137;
        }

        v40 = *v63;
        goto LABEL_136;
      }

      if (v13 > 1u)
      {
        if (v13 != 2)
        {
          if (v13 != 5)
          {
            goto LABEL_12;
          }

          v63[0] = 0;
          Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v63);
          goto LABEL_146;
        }

        LODWORD(__p) = 0;
        v47 = *(a4 + 8);
        if (v47 >= *(a4 + 16) || (v31 = *v47, (v31 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }

          v31 = __p;
        }

        else
        {
          LODWORD(__p) = *v47;
          *(a4 + 8) = v47 + 1;
        }

LABEL_134:
        sub_100045794(v63, v31);
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v63, __p);
        v40 = *v63;
        if (*v63)
        {
          *&v63[2] = *v63;
LABEL_136:
          operator delete(v40);
        }

LABEL_137:
        if ((String & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_12;
        }

        *v63 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v63))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v63 = 0;
        v46 = *(a4 + 8);
        if (v46 < *(a4 + 16) && (*v46 & 0x80000000) == 0)
        {
          *(a4 + 8) = v46 + 1;
          continue;
        }

        Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v63);
LABEL_146:
        if ((Varint64Fallback & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_150:
  sub_1000447B8(&v52);
  if (v51)
  {
    sub_100008350(v51);
  }

  return v9 > 0;
}

uint64_t sub_1000FA754(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FA7A0(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

void *sub_1000FA818(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1002B1918;
  v7[0] = off_1002B1988;
  v7[3] = v7;
  sub_100068C74(a1, a2, v7);
  sub_1000690B8(v7);
  a1[6] = a3;
  sub_100068E40(a2, a1 + 7);
  *a1 = off_1002B1918;
  return a1;
}

void sub_1000FA8E8(_Unwind_Exception *a1)
{
  *v1 = off_1002ACE88;
  sub_1000690B8((v1 + 2));
  _Unwind_Resume(a1);
}

void *sub_1000FA924(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_1000FA99C(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

BOOL sub_1000FAABC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 12);
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v54 = v5;
  v55 = v7;
LABEL_2:
  while (1)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
    if (v9 < 1)
    {
      break;
    }

    v10 = *(a4 + 8);
    if (v10 >= *(a4 + 16) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a4);
      *(a4 + 32) = TagFallback;
      if (!TagFallback)
      {
LABEL_14:
        sub_1000FB540(a4, 0);
        continue;
      }
    }

    else
    {
      *(a4 + 32) = TagFallback;
      *(a4 + 8) = v10 + 1;
      if (!TagFallback)
      {
        goto LABEL_14;
      }
    }

    v12 = wis::reflect::decodeTag(TagFallback, v8);
    v13 = v12;
    v14 = HIDWORD(v12);
    memset(v64, 0, sizeof(v64));
    v65 = 0xFFFFFFFFLL;
    MetricFileMetadataHelper::getSubfieldType();
    *v64 = v62;
    v65 = v63;
    BuiltinType = MetadataHelper::getBuiltinType();
    DecodingType = wis::reflect::getDecodingType();
    v17 = DecodingType;
    if (DecodingType > 13)
    {
      if ((DecodingType - 15) >= 0xC)
      {
        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v30 = *(a4 + 8);
          if (v30 >= *(a4 + 16) || (v31 = *v30, (v31 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            v31 = __p;
          }

          else
          {
            LODWORD(__p) = *v30;
            *(a4 + 8) = v30 + 1;
          }

          goto LABEL_137;
        }

        if (DecodingType != 27)
        {
          goto LABEL_12;
        }

        v64[0] = 0;
        v27 = *(a4 + 8);
        if (v27 >= *(a4 + 16) || (v28 = *v27, v28 < 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v64))
          {
            goto LABEL_12;
          }

          v28 = v64[0];
        }

        else
        {
          v64[0] = *v27;
          *(a4 + 8) = v27 + 1;
        }

        v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v28);
        ++*(a4 + 56);
        v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a4, v43);
        v44 = *(a4 + 56);
        v45 = __OFSUB__(v44, 1);
        v46 = v44 - 1;
        if (v46 < 0 == v45)
        {
          *(a4 + 56) = v46;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v42);
      }

      else
      {
        v61 = 0;
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v61))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v61 = *v18;
          *(a4 + 8) = v18 + 1;
        }

        wis::reflect::getUnpackedType();
        WireTypeForType = wis::reflect::getWireTypeForType();
        v59 = a4;
        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v61);
        v60 = v20;
        __p = 0;
        v57 = 0;
        v58 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
              {
                if (v17 > 20)
                {
                  if (v17 <= 23)
                  {
                    if (v17 == 22)
                    {
                      sub_100045278(&__p, v64);
                      goto LABEL_121;
                    }

                    goto LABEL_53;
                  }

                  if (v17 == 26)
                  {
                    sub_100044F80(&__p, v64);
                    v39 = *v64;
                    if (*v64)
                    {
                      goto LABEL_123;
                    }

                    goto LABEL_124;
                  }

                  if (v17 == 25)
                  {
                    goto LABEL_120;
                  }

                  if (v17 != 24)
                  {
LABEL_156:
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
                  }
                }

                else
                {
                  if (v17 <= 17)
                  {
                    switch(v17)
                    {
                      case 15:
                        sub_100044BD0(&__p, v64);
                        break;
                      case 16:
                        sub_100044E44(&__p, v64);
                        break;
                      case 17:
LABEL_120:
                        sub_100045004(&__p, v64);
                        break;
                      default:
                        goto LABEL_156;
                    }

LABEL_121:
                    v39 = *v64;
                    if (*v64)
                    {
                      *&v64[2] = *v64;
LABEL_123:
                      operator delete(v39);
                    }

LABEL_124:
                    if (__p)
                    {
                      v57 = __p;
                      operator delete(__p);
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
                    goto LABEL_2;
                  }

                  if (v17 != 18)
                  {
                    if (v17 == 19)
                    {
                      sub_10004513C(&__p, v64);
                      goto LABEL_121;
                    }

LABEL_53:
                    sub_100044D0C(&__p, v64);
                    goto LABEL_121;
                  }
                }

                sub_100044B50(&__p, v64);
                goto LABEL_121;
              }

              *v64 = 0;
              sub_10004490C(&__p, v64);
              if (WireTypeForType > 1)
              {
                break;
              }

              if (WireTypeForType)
              {
                if (WireTypeForType == 1)
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v57 - 1);
LABEL_30:
                  if ((LittleEndian64Fallback & 1) == 0)
                  {
                    goto LABEL_47;
                  }
                }
              }

              else
              {
                v23 = v57 - 1;
                v24 = *(a4 + 8);
                if (v24 >= *(a4 + 16) || (v25 = *v24, (v25 & 0x8000000000000000) != 0))
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v23);
                  goto LABEL_30;
                }

                *v23 = v25;
                *(a4 + 8) = v24 + 1;
              }
            }

            if (WireTypeForType != 5)
            {
              break;
            }

            v64[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v64);
            *(v57 - 1) = v64[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        while (WireTypeForType != 2);
LABEL_47:
        if (__p)
        {
          v57 = __p;
          operator delete(__p);
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
LABEL_12:
        sub_1000FB540(a4, v14);
      }
    }

    else
    {
      if ((DecodingType - 1) < 0xC)
      {
        *v64 = 0;
        if (v13 > 1u)
        {
          if (v13 == 2)
          {
            goto LABEL_12;
          }

          if (v13 == 5)
          {
            LODWORD(__p) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            *v64 = __p;
          }
        }

        else if (v13)
        {
          if (v13 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v64) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v29 = *(a4 + 8);
          if (v29 >= *(a4 + 16) || (*v29 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v64) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
            *v64 = *v29;
            *(a4 + 8) = v29 + 1;
          }
        }

        v32 = *v64;
        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            continue;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            continue;
          case 3:
          case 17:
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 56);
            if (v34)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          case 4:
          case 7:
          case 9:
          case 10:
          case 12:
          case 18:
          case 21:
          case 23:
          case 24:
          case 26:
            continue;
          case 5:
          case 19:
            v32 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 56);
            if (v34)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          case 6:
          case 20:
            if (v55 == v14)
            {
              v35 = *(v54 + 56);
              if (v35)
              {
                LODWORD(v32) = (*(*v35 + 32))(v35, *v64);
              }

              if (*(v54 + 48) > v32)
              {
                goto LABEL_153;
              }
            }

            continue;
          case 8:
          case 22:
            v36 = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            if (v55 == v14)
            {
              v37 = *(v54 + 56);
              if (v37)
              {
                LODWORD(v36) = (*(*v37 + 32))(v37, v36);
              }

              if (*(v54 + 48) > v36)
              {
                goto LABEL_153;
              }
            }

            continue;
          case 11:
          case 25:
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 56);
            if (v34)
            {
LABEL_95:
              v32 = (*(*v34 + 40))(v34, v32);
            }

LABEL_96:
            if (v32 < *(v33 + 48))
            {
              goto LABEL_153;
            }

            continue;
          default:
            v51 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v51, "This should never happen, no matter what the input!");
        }
      }

      if (DecodingType)
      {
        if (DecodingType != 13)
        {
          goto LABEL_12;
        }

        LODWORD(__p) = 0;
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }
        }

        else
        {
          LODWORD(__p) = *v26;
          *(a4 + 8) = v26 + 1;
        }

        memset(v64, 0, sizeof(v64));
        v65 = 0;
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
        if ((SHIBYTE(v65) & 0x80000000) == 0)
        {
          goto LABEL_140;
        }

        v41 = *v64;
        goto LABEL_139;
      }

      if (v13 > 1u)
      {
        if (v13 != 2)
        {
          if (v13 != 5)
          {
            goto LABEL_12;
          }

          v64[0] = 0;
          Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v64);
          goto LABEL_149;
        }

        LODWORD(__p) = 0;
        v48 = *(a4 + 8);
        if (v48 >= *(a4 + 16) || (v31 = *v48, (v31 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }

          v31 = __p;
        }

        else
        {
          LODWORD(__p) = *v48;
          *(a4 + 8) = v48 + 1;
        }

LABEL_137:
        sub_100045794(v64, v31);
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v64, __p);
        v41 = *v64;
        if (*v64)
        {
          *&v64[2] = *v64;
LABEL_139:
          operator delete(v41);
        }

LABEL_140:
        if ((String & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_12;
        }

        *v64 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v64))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v64 = 0;
        v47 = *(a4 + 8);
        if (v47 < *(a4 + 16) && (*v47 & 0x80000000) == 0)
        {
          *(a4 + 8) = v47 + 1;
          continue;
        }

        Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v64);
LABEL_149:
        if ((Varint64Fallback & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_153:
  sub_1000447B8(&v53);
  if (v52)
  {
    sub_100008350(v52);
  }

  return v9 > 0;
}

uint64_t sub_1000FB4F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FB540(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

void *sub_1000FB5B8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1002B1A08;
  v7[0] = off_1002B1A78;
  v7[3] = v7;
  sub_100068C74(a1, a2, v7);
  sub_1000690B8(v7);
  a1[6] = a3;
  sub_100068E40(a2, a1 + 7);
  *a1 = off_1002B1A08;
  return a1;
}

void sub_1000FB688(_Unwind_Exception *a1)
{
  *v1 = off_1002ACE88;
  sub_1000690B8((v1 + 2));
  _Unwind_Resume(a1);
}

void *sub_1000FB6C4(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_1000FB73C(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

BOOL sub_1000FB85C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 12);
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v53 = v5;
  v54 = v7;
LABEL_2:
  while (1)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
    if (v9 < 1)
    {
      break;
    }

    v10 = *(a4 + 8);
    if (v10 >= *(a4 + 16) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a4);
      *(a4 + 32) = TagFallback;
      if (!TagFallback)
      {
LABEL_14:
        sub_1000FC290(a4, 0);
        continue;
      }
    }

    else
    {
      *(a4 + 32) = TagFallback;
      *(a4 + 8) = v10 + 1;
      if (!TagFallback)
      {
        goto LABEL_14;
      }
    }

    v12 = wis::reflect::decodeTag(TagFallback, v8);
    v13 = v12;
    v14 = HIDWORD(v12);
    memset(v63, 0, sizeof(v63));
    v64 = 0xFFFFFFFFLL;
    MetricFileMetadataHelper::getSubfieldType();
    *v63 = v61;
    v64 = v62;
    BuiltinType = MetadataHelper::getBuiltinType();
    DecodingType = wis::reflect::getDecodingType();
    v17 = DecodingType;
    if (DecodingType > 13)
    {
      if ((DecodingType - 15) >= 0xC)
      {
        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v30 = *(a4 + 8);
          if (v30 >= *(a4 + 16) || (v31 = *v30, (v31 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            v31 = __p;
          }

          else
          {
            LODWORD(__p) = *v30;
            *(a4 + 8) = v30 + 1;
          }

          goto LABEL_134;
        }

        if (DecodingType != 27)
        {
          goto LABEL_12;
        }

        v63[0] = 0;
        v27 = *(a4 + 8);
        if (v27 >= *(a4 + 16) || (v28 = *v27, v28 < 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v63))
          {
            goto LABEL_12;
          }

          v28 = v63[0];
        }

        else
        {
          v63[0] = *v27;
          *(a4 + 8) = v27 + 1;
        }

        v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v28);
        ++*(a4 + 56);
        v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a4, v42);
        v43 = *(a4 + 56);
        v44 = __OFSUB__(v43, 1);
        v45 = v43 - 1;
        if (v45 < 0 == v44)
        {
          *(a4 + 56) = v45;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v41);
      }

      else
      {
        v60 = 0;
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v60))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v60 = *v18;
          *(a4 + 8) = v18 + 1;
        }

        wis::reflect::getUnpackedType();
        WireTypeForType = wis::reflect::getWireTypeForType();
        v58 = a4;
        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v60);
        v59 = v20;
        __p = 0;
        v56 = 0;
        v57 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
              {
                if (v17 > 20)
                {
                  if (v17 <= 23)
                  {
                    if (v17 == 22)
                    {
                      sub_100045278(&__p, v63);
                      goto LABEL_118;
                    }

                    goto LABEL_53;
                  }

                  if (v17 == 26)
                  {
                    sub_100044F80(&__p, v63);
                    v38 = *v63;
                    if (*v63)
                    {
                      goto LABEL_120;
                    }

                    goto LABEL_121;
                  }

                  if (v17 == 25)
                  {
                    goto LABEL_117;
                  }

                  if (v17 != 24)
                  {
LABEL_153:
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
                  }
                }

                else
                {
                  if (v17 <= 17)
                  {
                    switch(v17)
                    {
                      case 15:
                        sub_100044BD0(&__p, v63);
                        break;
                      case 16:
                        sub_100044E44(&__p, v63);
                        break;
                      case 17:
LABEL_117:
                        sub_100045004(&__p, v63);
                        break;
                      default:
                        goto LABEL_153;
                    }

LABEL_118:
                    v38 = *v63;
                    if (*v63)
                    {
                      *&v63[2] = *v63;
LABEL_120:
                      operator delete(v38);
                    }

LABEL_121:
                    if (__p)
                    {
                      v56 = __p;
                      operator delete(__p);
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
                    goto LABEL_2;
                  }

                  if (v17 != 18)
                  {
                    if (v17 == 19)
                    {
                      sub_10004513C(&__p, v63);
                      goto LABEL_118;
                    }

LABEL_53:
                    sub_100044D0C(&__p, v63);
                    goto LABEL_118;
                  }
                }

                sub_100044B50(&__p, v63);
                goto LABEL_118;
              }

              *v63 = 0;
              sub_10004490C(&__p, v63);
              if (WireTypeForType > 1)
              {
                break;
              }

              if (WireTypeForType)
              {
                if (WireTypeForType == 1)
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v56 - 1);
LABEL_30:
                  if ((LittleEndian64Fallback & 1) == 0)
                  {
                    goto LABEL_47;
                  }
                }
              }

              else
              {
                v23 = v56 - 1;
                v24 = *(a4 + 8);
                if (v24 >= *(a4 + 16) || (v25 = *v24, (v25 & 0x8000000000000000) != 0))
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v23);
                  goto LABEL_30;
                }

                *v23 = v25;
                *(a4 + 8) = v24 + 1;
              }
            }

            if (WireTypeForType != 5)
            {
              break;
            }

            v63[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v63);
            *(v56 - 1) = v63[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        while (WireTypeForType != 2);
LABEL_47:
        if (__p)
        {
          v56 = __p;
          operator delete(__p);
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
LABEL_12:
        sub_1000FC290(a4, v14);
      }
    }

    else
    {
      if ((DecodingType - 1) < 0xC)
      {
        *v63 = 0;
        if (v13 > 1u)
        {
          if (v13 == 2)
          {
            goto LABEL_12;
          }

          if (v13 == 5)
          {
            LODWORD(__p) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            *v63 = __p;
          }
        }

        else if (v13)
        {
          if (v13 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v63) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v29 = *(a4 + 8);
          if (v29 >= *(a4 + 16) || (*v29 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v63) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
            *v63 = *v29;
            *(a4 + 8) = v29 + 1;
          }
        }

        v32 = *v63;
        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            continue;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            continue;
          case 3:
          case 6:
          case 11:
          case 12:
          case 17:
          case 20:
          case 25:
          case 26:
            continue;
          case 4:
          case 18:
            if (v54 != v14)
            {
              continue;
            }

            v33 = v53;
            v34 = *(v53 + 56);
            if (v34)
            {
              goto LABEL_97;
            }

            goto LABEL_98;
          case 5:
          case 19:
            wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
            continue;
          case 7:
          case 21:
            if (v54 != v14)
            {
              continue;
            }

            v35 = v53;
            v36 = *(v53 + 56);
            if (v36)
            {
              goto LABEL_102;
            }

            goto LABEL_103;
          case 8:
          case 22:
            wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            continue;
          case 9:
          case 23:
            if (v54 != v14)
            {
              continue;
            }

            v35 = v53;
            v36 = *(v53 + 56);
            if (v36)
            {
LABEL_102:
              LODWORD(v32) = (*(*v36 + 16))(v36, *v63);
            }

LABEL_103:
            if (*(v35 + 48) > v32)
            {
              goto LABEL_150;
            }

            continue;
          case 10:
          case 24:
            if (v54 != v14)
            {
              continue;
            }

            v33 = v53;
            v34 = *(v53 + 56);
            if (v34)
            {
LABEL_97:
              v32 = (*(*v34 + 24))(v34, *v63);
            }

LABEL_98:
            if (v32 < *(v33 + 48))
            {
              goto LABEL_150;
            }

            continue;
          default:
            v50 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v50, "This should never happen, no matter what the input!");
        }
      }

      if (DecodingType)
      {
        if (DecodingType != 13)
        {
          goto LABEL_12;
        }

        LODWORD(__p) = 0;
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }
        }

        else
        {
          LODWORD(__p) = *v26;
          *(a4 + 8) = v26 + 1;
        }

        memset(v63, 0, sizeof(v63));
        v64 = 0;
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
        if ((SHIBYTE(v64) & 0x80000000) == 0)
        {
          goto LABEL_137;
        }

        v40 = *v63;
        goto LABEL_136;
      }

      if (v13 > 1u)
      {
        if (v13 != 2)
        {
          if (v13 != 5)
          {
            goto LABEL_12;
          }

          v63[0] = 0;
          Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v63);
          goto LABEL_146;
        }

        LODWORD(__p) = 0;
        v47 = *(a4 + 8);
        if (v47 >= *(a4 + 16) || (v31 = *v47, (v31 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }

          v31 = __p;
        }

        else
        {
          LODWORD(__p) = *v47;
          *(a4 + 8) = v47 + 1;
        }

LABEL_134:
        sub_100045794(v63, v31);
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v63, __p);
        v40 = *v63;
        if (*v63)
        {
          *&v63[2] = *v63;
LABEL_136:
          operator delete(v40);
        }

LABEL_137:
        if ((String & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_12;
        }

        *v63 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v63))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v63 = 0;
        v46 = *(a4 + 8);
        if (v46 < *(a4 + 16) && (*v46 & 0x80000000) == 0)
        {
          *(a4 + 8) = v46 + 1;
          continue;
        }

        Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v63);
LABEL_146:
        if ((Varint64Fallback & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_150:
  sub_1000447B8(&v52);
  if (v51)
  {
    sub_100008350(v51);
  }

  return v9 > 0;
}

uint64_t sub_1000FC244(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FC290(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

void sub_1000FC430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001FC8D4(a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100008350(v12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000FC480(void *a1, const char *a2, dispatch_qos_class_t qos_class, const ctu::OsLogLogger *a4)
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

  ctu::OsLogLogger::OsLogLogger((a1 + 4), a4);
  return a1;
}

void *sub_1000FC518(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, a1);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    sub_100008350(v3);
  }

  v5 = (a1 + 64);
  sub_100075004(&v5);
  v5 = (a1 + 40);
  sub_100075004(&v5);
  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  return sub_100032AD8(a1);
}

void sub_1000FC590(uint64_t a1)
{
  *(a1 + 104) = sub_1000CCEA0(0);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  while (v2 != v3)
  {
    v4 = v2[1];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5 && *v2)
      {
        (*(**v2 + 16))(*v2, *(a1 + 104));
LABEL_10:
        sub_100008350(v5);
        goto LABEL_12;
      }

      v6 = v2[1];
      *v2 = 0;
      v2[1] = 0;
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v2 = 0;
      v2[1] = 0;
    }

LABEL_12:
    v2 += 2;
  }
}

void sub_1000FC658(uint64_t a1)
{
  v16[0] = off_1002B1CF0;
  v16[3] = v16;
  sub_1000850EC(v14);
  v2 = v14[0];
  v14[0] = 0uLL;
  v3 = *(a1 + 96);
  *(a1 + 88) = v2;
  if (v3)
  {
    sub_100008350(v3);
    if (*(&v14[0] + 1))
    {
      sub_100008350(*(&v14[0] + 1));
    }
  }

  sub_100085314(v16);
  if (!*(a1 + 88))
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "config:#E Config callbacks were not set up!", v14, 2u);
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = DarwinNotifyCenter;
  if (DarwinNotifyCenter)
  {
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1000FC918, @"com.apple.Preferences.ResetPrivacyWarningsNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(v6, a1, sub_1000FC990, @"com.apple.purplebuddy.setupdone", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000FCA08;
    handler[3] = &unk_1002B1AE8;
    handler[4] = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", global_queue, handler);
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1002096CC(v8);
    }

    sub_1000DD9F0(v14);
    v9 = *&v14[0];
    if (*&v14[0] != (v14 + 8))
    {
      do
      {
        if (*(v9 + 8) == 1)
        {
          sub_100039EB8((v9 + 40));
        }

        v10 = *(v9 + 1);
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = *(v9 + 2);
            v12 = *v11 == v9;
            v9 = v11;
          }

          while (!v12);
        }

        v9 = v11;
      }

      while (v11 != (v14 + 8));
    }

    sub_100067D18(v14, *(&v14[0] + 1));
  }

  else
  {
    v13 = *(a1 + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "config:#E Unable to get notification center for configuration reader.", v14, 2u);
    }
  }
}

void sub_1000FC918()
{
  v0 = *qword_1002DBE98;
  if (os_log_type_enabled(*qword_1002DBE98, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "config:#I In privacy reset callback", v1, 2u);
  }

  sub_1000FCE74();
}

void sub_1000FC990()
{
  v0 = *qword_1002DBE98;
  if (os_log_type_enabled(*qword_1002DBE98, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "config:#I Purple buddy setup done callback", v1, 2u);
  }

  sub_1000FCBEC();
}

void *sub_1000FCA08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "config:#N Woken up by notifyd.", &v10, 2u);
  }

  result = xpc_get_type(a2);
  if (&_xpc_type_error != &_xpc_type_dictionary && result == &_xpc_type_dictionary)
  {
    result = xpc_dictionary_get_value(a2, _xpc_event_key_name);
    if (result)
    {
      v7 = result;
      result = xpc_get_type(result);
      if (result == &_xpc_type_string)
      {
        result = xpc_string_get_string_ptr(v7);
        if (result)
        {
          v8 = result;
          v9 = *(v3 + 32);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136315138;
            v11 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "config:#N Woken up by notifyd, got event %s", &v10, 0xCu);
          }

          if (!strcmp(v8, "com.apple.wirelessinsightsd.ProfileChanged") || !strcmp(v8, "logging tasks have changed") || !strcmp(v8, "com.apple.wirelessinsightsd.AnonymityChangedCommandLine"))
          {
            sub_1000FCBEC();
          }

          if (!strcmp(v8, "com.apple.wirelessinsightsd.SubmissionPreferenceChanged") || !strcmp(v8, "com.apple.wirelessinsightsd.UISubmissionPreferenceChanged"))
          {
            sub_1000FCD30();
          }

          result = strcmp(v8, "com.apple.wirelessinsightsd.ResetPrivacyWarningsNotification");
          if (!result)
          {
            sub_1000FCE74();
          }
        }
      }
    }
  }

  return result;
}

void sub_1000FCD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FCE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FCF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FCFB8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000081C8(&v7, a1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1000FD0E4;
  v6[3] = &unk_1002B1B08;
  v6[4] = a1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_1000FEFF4;
  v9[3] = &unk_1002B1D78;
  v5 = v7;
  v9[5] = v7;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[4] = v6;
  sub_100160D80(a3, (v5 + 16), v9);
  if (v10)
  {
    sub_100008350(v10);
  }

  if (v8)
  {
    sub_100008350(v8);
  }
}

void sub_1000FD0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
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

void sub_1000FD0E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 88))
  {
    sub_10008524C((v1 + 88));
    v2 = *(v1 + 96);
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
    if (v2)
    {

      sub_100008350(v2);
    }
  }
}

void sub_1000FD13C(void *a1, int a2, uint64_t a3)
{
  if (a2 == 2)
  {
    sub_1000081C8(&v10, a1);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_1000FD728;
    v9[3] = &unk_1002B1B68;
    v9[4] = a1;
    v18 = _NSConcreteStackBlock;
    v19 = 1174405120;
    v20 = sub_1000FF030;
    v21 = &unk_1002B1DB0;
    v8 = v10;
    v23 = v10;
    v24 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v9;
    sub_100160E88(a3, (v8 + 16), &v18);
    if (v24)
    {
      sub_100008350(v24);
    }

    v6 = v11;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      sub_1000081C8(&v16, a1);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 0x40000000;
      v15[2] = sub_1000FD474;
      v15[3] = &unk_1002B1B28;
      v15[4] = a1;
      v18 = _NSConcreteStackBlock;
      v19 = 1174405120;
      v20 = sub_1000FF030;
      v21 = &unk_1002B1DB0;
      v5 = v16;
      v23 = v16;
      v24 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v15;
      sub_100160E88(a3, (v5 + 16), &v18);
      if (v24)
      {
        sub_100008350(v24);
      }

      v6 = v17;
      if (!v17)
      {
        return;
      }

LABEL_15:
      sub_100008350(v6);
      return;
    }

    sub_1000081C8(&v13, a1);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_1000FD47C;
    v12[3] = &unk_1002B1B48;
    v12[4] = a1;
    v18 = _NSConcreteStackBlock;
    v19 = 1174405120;
    v20 = sub_1000FF030;
    v21 = &unk_1002B1DB0;
    v7 = v13;
    v23 = v13;
    v24 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v12;
    sub_100160E88(a3, (v7 + 16), &v18);
    if (v24)
    {
      sub_100008350(v24);
    }

    v6 = v14;
    if (v14)
    {
      goto LABEL_15;
    }
  }
}

void sub_1000FD418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *(v22 - 40);
  if (v24)
  {
    sub_100008350(v24);
  }

  v25 = *(v22 - 96);
  if (v25)
  {
    sub_100008350(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FD48C(uint64_t a1, uint64_t a2, int a3)
{
  pthread_mutex_lock(&stru_1002D4A58);
  if (xmmword_1002D4A98)
  {
    v5 = *(&xmmword_1002D4A98 + 1);
    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    if (v5)
    {
      sub_100008350(v5);
    }

    sub_1000FD854(a1, a3);
    pthread_mutex_lock(&stru_1002D4F28);
    v6 = xmmword_1002D4F68;
    if (!xmmword_1002D4F68)
    {
      sub_1000662C0();
    }

    v7 = *(&xmmword_1002D4F68 + 1);
    if (*(&xmmword_1002D4F68 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4F68 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4F28);
    sub_100067610(v6, *(a1 + 104), &v8);
    if (v7)
    {
      sub_100008350(v7);
    }

    if (!v8)
    {
      sub_10012A004();
    }

    sub_1000FDA38(a1, v8);
  }

  sub_1000927A0();
}

void sub_1000FD69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 16))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000FD730(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000FF2BC;
  v5[3] = &unk_1002B1DE0;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000FF308;
    v10 = &unk_1002B1E20;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000FF2CC;
    v10 = &unk_1002B1E00;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

uint64_t sub_1000FD854(uint64_t a1, int a2)
{
  result = sub_1000CCEA0(a2);
  *(a1 + 104) = result;
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = v4[1];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7 && *v4)
        {
          (*(**v4 + 24))(*v4, *(a1 + 104));
        }

        else
        {
          v8 = v4[1];
          *v4 = 0;
          v4[1] = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_weak(v8);
          }

          if (!v7)
          {
            goto LABEL_11;
          }
        }

        sub_100008350(v7);
      }

      else
      {
        *v4 = 0;
        v4[1] = 0;
      }

LABEL_11:
      v4 += 2;
      if (v4 == v5)
      {
        result = *(a1 + 104);
        break;
      }
    }
  }

  if (!result)
  {
    v9 = *(a1 + 32);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "config:#N Metric collection disabled.  Loading 'disabled' configuration.", v10, 2u);
    }

    sub_1000FD974();
  }

  return result;
}

void sub_1000FDA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001FF974(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FDA38(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&stru_1002D4A58);
  v4 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v5 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  sub_1000E1870(v4, type);
  if (v5)
  {
    sub_100008350(v5);
  }

  if (!*type)
  {
    v6 = *(a1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "config:#N Set Config: Device has no current config assigned; assuming we are starting from nothing.", buf, 2u);
    }

    sub_10012A004();
  }

  sub_10012A57C(a2, *type);
  sub_1000F61F8();
}

void sub_1000FDF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12)
{
  pthread_mutex_unlock(&stru_1002D4A58);
  sub_1000E4850(&a11);
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    (*(*v13 + 16))(v13);
  }

  _Unwind_Resume(a1);
}

void sub_1000FE07C(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_null_create();
  if (xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    reply = xpc_dictionary_create_reply(*a2);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (xpc_get_type(reply) == &_xpc_type_dictionary)
      {
        xpc_retain(reply);
        v4 = reply;
      }

      else
      {
        v4 = xpc_null_create();
      }
    }

    else
    {
      v4 = xpc_null_create();
      reply = 0;
    }

    v6 = xpc_null_create();
    xpc_release(v3);
    xpc_release(v6);
    xpc_release(reply);
  }

  else
  {
    v4 = v3;
  }

  v9 = 0uLL;
  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    operator new();
  }

  v8 = v9;
  xpc_release(v4);
  sub_100007ECC(&__p, "Reconfig");
  sub_100074B20(&__p, &v8);
}

void sub_1000FE348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100008350(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FE38C(uint64_t a1, uint64_t a2)
{
  if ((*(sub_10012A4C4(a2) + 208) & 0x20) != 0)
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(sub_10012A4C4(a2) + 64);
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      v9 = 136315138;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "config:#I Display message to UI: %s", &v9, 0xCu);
    }

    v6 = *(sub_10012A4C4(a2) + 64);
    if (v6[23] < 0)
    {
      v6 = *v6;
    }

    v7 = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x8000100u);
    if (v7)
    {
      v8 = v7;
      CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, @"Diagnostics & Usage Message", v7, 0);
      CFRelease(v8);
    }
  }
}

void sub_1000FE4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  for (i = *(a1 + 48); v3 != i; v3 += 2)
  {
    v7 = v3[1];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8 && *v3)
      {
        (*(**v3 + 16))(*v3, a2, a3);
      }

      else
      {
        v9 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        if (v9)
        {
          std::__shared_weak_count::__release_weak(v9);
        }

        if (!v8)
        {
          continue;
        }
      }

      sub_100008350(v8);
    }

    else
    {
      *v3 = 0;
      v3[1] = 0;
    }
  }
}

void sub_1000FE590(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67109376;
    HIDWORD(__p[0]) = sub_100082628(a2);
    LOWORD(__p[1]) = 1024;
    *(&__p[1] + 2) = sub_100008780(a2);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "config:#N  ===== New DCID is %d with IID %d. Sending configuration. ====", __p, 0xEu);
  }

  v4 = sub_10012A4C4(a2);
  sub_100011294(__p, 4);
  sub_100129A38(v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_10012A4C4(a2);
  sub_1000C4B00(v5);
  v6 = sub_10012A4C4(a2);
  sub_100055988(v6);
  pthread_mutex_lock(&stru_1002D4C68);
  if (!xmmword_1002D4CA8)
  {
    sub_1000A1C94();
  }

  if (*(&xmmword_1002D4CA8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4CA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4C68);
  sub_1000A3734();
}

void sub_1000FE848(void *a1, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_1000081C8(&v3, a1);
  operator new();
}

void sub_1000FE934(void *a1, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_1000081C8(&v3, a1);
  operator new();
}

void sub_1000FEAE0(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void sub_1000FEB0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000FEB64(uint64_t a1, uint64_t a2)
{
  if (sub_10002B87C(a2, &off_1002B1C08))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_1000FEC20(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_1000FECF4);
  __cxa_rethrow();
}

void sub_1000FEC60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000FECB4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FECF4(uint64_t result)
{
  if (result)
  {
    sub_1000FC518(result);

    operator delete();
  }

  return result;
}

void *sub_1000FED34(void *a1)
{
  *a1 = off_1002B1C98;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_1000FED80(void *a1)
{
  *a1 = off_1002B1C98;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_1000FEDFC@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

void sub_1000FEED8()
{
  v0 = *qword_1002DBE98;
  if (os_log_type_enabled(*qword_1002DBE98, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "config:#I Config-Change notification received from system.", v3, 2u);
  }

  pthread_mutex_lock(&stru_1002D4B08);
  v2 = qword_1002D4B48;
  v1 = qword_1002D4B50;
  if (qword_1002D4B50)
  {
    atomic_fetch_add_explicit((qword_1002D4B50 + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4B08);
  if (v2)
  {
    sub_1000FCBEC();
  }

  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1000FEF8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008350(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000FEFA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FF004(uint64_t result, uint64_t a2)
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

void sub_1000FF020(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1000FF030(uint64_t a1, NSObject **a2)
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

void sub_1000FF08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FF0B0(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_1000FD48C(*v1, 1, 0);
}

void sub_1000FF0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF118(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000FF118(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100008350(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1000FF16C(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_1000FD48C(*v1, 1, 1);
}

void sub_1000FF1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF118(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000FF1D4(void **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  while (v3 != v4)
  {
    v5 = v3[1];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6 && *v3)
      {
        (*(**v3 + 32))(*v3);
LABEL_10:
        sub_100008350(v6);
        goto LABEL_12;
      }

      v7 = v3[1];
      *v3 = 0;
      v3[1] = 0;
      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      if (v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v3 = 0;
      v3[1] = 0;
    }

LABEL_12:
    v3 += 2;
  }

  sub_1000FF118(&v10);
  return sub_1000082FC(&v9);
}

void sub_1000FF298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100008350(v10);
  sub_1000FF118(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FF2CC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000FF308(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_1000FF344(uint64_t **a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  sub_1000FD854(*v1, 0);
  if (*(v2 + 104) == 2)
  {
    v3 = v1[1];
    v26 = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v26 = xpc_null_create();
    }

    sub_1000AD0D4(object, &v26);
    xpc_release(v26);
    v26 = 0;
    sub_100136EE4(object, &v25);
    if (sub_100136ECC(object))
    {
      v5 = sub_100136EDC(object);
      pthread_mutex_lock(&stru_1002D4F28);
      v6 = xmmword_1002D4F68;
      if (!xmmword_1002D4F68)
      {
        sub_1000662C0();
      }

      v7 = *(&xmmword_1002D4F68 + 1);
      if (*(&xmmword_1002D4F68 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_1002D4F68 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_1002D4F28);
      v8 = sub_1000672F8(v6, v5);
      if (v7)
      {
        sub_100008350(v7);
      }

      v9 = *(v2 + 32);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "config:#N Config saved; reselecting the best config", buf, 2u);
        }

        sub_1000FD48C(v2, 1, 0);
      }

      if (v10)
      {
        v12 = sub_100082628(v5);
        v13 = sub_100008780(v5);
        v14 = sub_10012A47C(v5);
        *buf = 67109632;
        *&buf[4] = v12;
        *&buf[8] = 1024;
        *&buf[10] = v13;
        *&buf[14] = 1024;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "config:#E Attempt to save config failed (dcid=%d, iid=%d, type=%d)", buf, 0x14u);
      }

      std::string::assign(&v25, "Config was not accepted");
    }

    else
    {
      v11 = *(v2 + 32);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "config:#E Config was not parsable. Ignoring the update.", buf, 2u);
      }
    }

    v15 = v1[2];
    if (!v15 || xpc_get_type(*v15) != &_xpc_type_dictionary)
    {
      goto LABEL_38;
    }

    v16 = sub_100136ECC(object);
    v23 = xpc_BOOL_create(v16);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    *buf = v1[2];
    *&buf[8] = "Success";
    sub_10000F50C(buf, &v23, &v24);
    xpc_release(v24);
    v24 = 0;
    xpc_release(v23);
    v23 = 0;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        v17 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_35;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v17 = &v25;
LABEL_35:
      v21 = xpc_string_create(v17);
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      *buf = v1[2];
      *&buf[8] = "Reason";
      sub_10000F50C(buf, &v21, &v22);
      xpc_release(v22);
      v22 = 0;
      xpc_release(v21);
      v21 = 0;
    }

LABEL_38:
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    sub_100136CD4(object);
    goto LABEL_41;
  }

  v4 = v1[2];
  if (v4 && xpc_get_type(*v4) == &_xpc_type_dictionary)
  {
    object[0] = xpc_BOOL_create(1);
    if (!object[0])
    {
      object[0] = xpc_null_create();
    }

    v25.__r_.__value_.__r.__words[0] = v1[2];
    v25.__r_.__value_.__l.__size_ = "Success";
    sub_10000F50C(&v25, object, buf);
    xpc_release(*buf);
    *buf = 0;
    xpc_release(object[0]);
  }

LABEL_41:
  sub_1000FF82C(&v20);
  return sub_1000082FC(&v19);
}

void sub_1000FF74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t object, char a22)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000FF82C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100008350(v2);
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      sub_100008350(v3);
    }

    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

uint64_t *sub_1000FF89C(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 56);
  if (v3 >= v4)
  {
    v7 = v2[5];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_100033FD0();
    }

    v10 = v4 - v7;
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

    v22[4] = v2 + 5;
    if (v11)
    {
      sub_10007546C((v2 + 5), v11);
    }

    v12 = 16 * v8;
    v13 = *(v1 + 8);
    *(16 * v8) = v13;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = v2[5];
    v15 = v2[6] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    v17 = v2[5];
    v2[5] = v16;
    v2[6] = v6;
    v18 = v2[7];
    v2[7] = 0;
    v22[2] = v17;
    v22[3] = v18;
    v22[0] = v17;
    v22[1] = v17;
    sub_1000754B4(v22);
  }

  else
  {
    v5 = *(v1 + 16);
    *v3 = *(v1 + 8);
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[6] = v6;
  sub_10001E298(&v21);
  return sub_1000082FC(&v20);
}

void sub_1000FF9C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_10001E298(va1);
  sub_1000082FC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000FF9E4(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 80);
  if (v3 >= v4)
  {
    v7 = v2[8];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_100033FD0();
    }

    v10 = v4 - v7;
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

    v22[4] = v2 + 8;
    if (v11)
    {
      sub_10007546C((v2 + 8), v11);
    }

    v12 = 16 * v8;
    v13 = *(v1 + 8);
    *(16 * v8) = v13;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = v2[8];
    v15 = v2[9] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    v17 = v2[8];
    v2[8] = v16;
    v2[9] = v6;
    v18 = v2[10];
    v2[10] = 0;
    v22[2] = v17;
    v22[3] = v18;
    v22[0] = v17;
    v22[1] = v17;
    sub_1000754B4(v22);
  }

  else
  {
    v5 = *(v1 + 16);
    *v3 = *(v1 + 8);
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[9] = v6;
  sub_10001E298(&v21);
  return sub_1000082FC(&v20);
}

void sub_1000FFB10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_10001E298(va1);
  sub_1000082FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FFB2C()
{
  if ((byte_1002D4B58 & 1) == 0)
  {
    byte_1002D4B58 = 1;
    return __cxa_atexit(sub_10004F8E8, &stru_1002D4B08, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000FFB68()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000FFBA4()
{
  if ((byte_1002D4F78 & 1) == 0)
  {
    byte_1002D4F78 = 1;
    return __cxa_atexit(sub_10004F918, &stru_1002D4F28, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000FFBE0()
{
  if ((byte_1002D4CB8 & 1) == 0)
  {
    byte_1002D4CB8 = 1;
    return __cxa_atexit(sub_10004F8F8, &stru_1002D4C68, &_mh_execute_header);
  }

  return result;
}

void sub_1000FFDCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WISCLLocationManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000FFFC0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) shouldUpdateLocation:1];

  objc_autoreleasePoolPop(v2);
}

void sub_1001000C0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) shouldUpdateLocation:0];

  objc_autoreleasePoolPop(v2);
}

void sub_1001001C0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = +[WISCLLocationManager sIsLocationAllowed:](WISCLLocationManager, "sIsLocationAllowed:", [*(*(a1 + 32) + 8) authorizationStatus]);

  objc_autoreleasePoolPop(v2);
}

void sub_1001003D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void sub_1001005A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void sub_100100764(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

id **sub_100100B20(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

id **sub_100100B70(uint64_t a1)
{
  v4 = a1;
  v2 = objc_autoreleasePoolPush();
  [*(*a1 + 8) setDesiredAccuracy:*(a1 + 8)];
  objc_autoreleasePoolPop(v2);
  return sub_100100B20(&v4);
}

void sub_100100BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100100B20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100100BD8(uint64_t a1, uint64_t a2)
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

id **sub_100100C58(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100083AB0((v1 + 1));

    operator delete();
  }

  return result;
}

id **sub_100100CB0(id *a1)
{
  v2 = a1;
  sub_100100CEC(*a1 + 24, (a1 + 1));
  return sub_100100C58(&v2);
}

uint64_t sub_100100CEC(uint64_t a1, uint64_t a2)
{
  sub_100100D70(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100100D70(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

id **sub_100100DF4(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

id **sub_100100E44(uint64_t a1)
{
  v4 = a1;
  v2 = objc_autoreleasePoolPush();
  if (*(*a1 + 48))
  {
    sub_100100ECC(*a1 + 24, [WISCLLocationManager sIsLocationAllowed:*(a1 + 8)]);
  }

  objc_autoreleasePoolPop(v2);
  return sub_100100DF4(&v4);
}

void sub_100100EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100100DF4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100100ECC(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000334A4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100100F20(uint64_t a1, uint64_t a2)
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

id **sub_100100FA0(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100083D38((v1 + 1));

    operator delete();
  }

  return result;
}

id **sub_100100FF8(id *a1)
{
  v2 = a1;
  sub_100101034(*a1 + 56, (a1 + 1));
  return sub_100100FA0(&v2);
}

uint64_t sub_100101034(uint64_t a1, uint64_t a2)
{
  sub_1001010B8(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1001010B8(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

id **sub_10010113C(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

id **sub_100101194(id *a1)
{
  v6 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = *a1;
  if ((*(*a1 + 120) & 1) == 0)
  {
    v4 = *(qword_1002DBE98 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "loc.mgr:#N Received first location update, changing the accuracy to Bystander", buf, 2u);
      v3 = *a1;
    }

    [v3 setDesiredLocationAccuracy:kCLLocationAccuracyBystander];
    v3 = *a1;
    *(*a1 + 120) = 1;
  }

  if (v3[10])
  {
    sub_10001A780((v3 + 7), a1[1]);
  }

  objc_autoreleasePoolPop(v2);
  return sub_10010113C(&v6);
}

void sub_10010126C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10010113C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100101280(uint64_t a1, uint64_t a2)
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

id **sub_100101300(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100085314((v1 + 1));

    operator delete();
  }

  return result;
}

id **sub_100101358(id *a1)
{
  v2 = a1;
  sub_100085394(*a1 + 88, (a1 + 1));
  return sub_100101300(&v2);
}

id **sub_100101394(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

id **sub_1001013E4(id *a1)
{
  v3 = a1;
  v1 = *(*a1 + 14);
  if (v1)
  {
    (*(*v1 + 48))(v1);
  }

  return sub_100101394(&v3);
}

void sub_100101444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100101394(va);
  _Unwind_Resume(a1);
}

void sub_100101704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  if (a14)
  {
    sub_100008350(a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100008350(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100101798(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001017B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1001017C4(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
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

void *sub_100101868(void *a1, double a2, double a3)
{
  *a1 = off_1002B1EF8;
  v4 = a1[9];
  if (v4)
  {
    sub_100008350(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    sub_100008350(v5);
  }

  XPCEventPublisher.Token.rawValue.getter(a2, a3);
  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_100032AD8(a1 + 1);
  return a1;
}

void sub_1001018DC(void *a1, double a2, double a3)
{
  sub_100101868(a1, a2, a3);

  operator delete();
}

void sub_100101914(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1000081C8(&v7, (a1 + 8));
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100101A48;
    v6[3] = &unk_1002B1F10;
    v6[4] = a1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1174405120;
    v9[2] = sub_100102370;
    v9[3] = &unk_1002B2110;
    v5 = v7;
    v9[5] = v7;
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9[4] = v6;
    sub_100160E88(a3, (v5 + 24), v9);
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

void sub_100101A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
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

void sub_100101A50(uint64_t a1)
{
  sub_1000081C8(&v1, (a1 + 8));
  *v2 = v1;
  if (*(&v1 + 1))
  {
    atomic_fetch_add_explicit((*(&v1 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  sub_100055B24();
}

void sub_100101B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008350(a12);
  }

  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100101B7C(uint64_t a1, uint64_t a2, NSObject **a3)
{
  sub_100160D30(a3, &group[1]);
  sub_1000081C8(&v5, (a1 + 8));
  operator new();
}

void sub_100101C88(uint64_t a1, int a2, const void **a3)
{
  pthread_mutex_lock(&stru_1002D4CC0);
  v6 = xmmword_1002D4D00;
  if (!xmmword_1002D4D00)
  {
    sub_1000ED560();
  }

  v7 = *(&xmmword_1002D4D00 + 1);
  if (*(&xmmword_1002D4D00 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4D00 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4CC0);
  if (a2 == 2)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = sub_1000C64B0(2u);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#I Handling Anomaly %s", buf, 0xCu);
    }

    sub_1000A9494(&v10, a3);
    sub_1000F0804(v6, &v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else if (a2 == 1)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = sub_1000C64B0(1u);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#I Handling Anamoly %s", buf, 0xCu);
    }

    sub_1000A9494(&cf, a3);
    sub_1000F0804(v6, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v7)
  {
    sub_100008350(v7);
  }
}

void sub_100101E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    sub_100008350(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100101EE0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100101FE8;
  v3[3] = &unk_1002B1F30;
  v3[4] = a1;
  sub_1000081C8(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1001021A4;
  block[3] = &unk_1002B2080;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100008350(v5);
  }

  if (v7)
  {
    sub_100008350(v7);
  }
}

void sub_100101FE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100056DD8(*(v1 + 48));
  v2 = *(v1 + 64);

  sub_10007299C(v2);
}

void sub_1001020A4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100102178);
  __cxa_rethrow();
}

void sub_1001020E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100102138(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100102178(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1001021B4(uint64_t result, uint64_t a2)
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

void sub_1001021D0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1001021E0(void *a1)
{
  *a1 = off_1002B20C0;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_10010222C(void *a1)
{
  *a1 = off_1002B20C0;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_1001022FC@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

void sub_100102370(uint64_t a1, NSObject **a2)
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

void sub_1001023CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001023F0(uint64_t result, uint64_t a2)
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

void sub_10010240C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_10010241C(uint64_t *a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = *(**a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#I Shutting down WISCellularAnomalyController", buf, 2u);
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(v1 + 8);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete();
}

uint64_t sub_1001024C0()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1001024FC()
{
  if ((byte_1002D4D10 & 1) == 0)
  {
    byte_1002D4D10 = 1;
    return __cxa_atexit(sub_10004F8FC, &stru_1002D4CC0, &_mh_execute_header);
  }

  return result;
}

void sub_100102F64(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  if (v1)
  {
    sub_100008350(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10010302C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1000081C8(&v4, (a1 + 8));
  v3 = v5;
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v5)
    {
      sub_100008350(v5);
    }
  }
}

uint64_t sub_100103088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100007ECC(&__p, "com.apple.wirelessinsightsd.ConnectionManagerSerialQueue");
  v13 = xpc_null_create();
  ctu::XpcServer::XpcServer();
  xpc_release(v13);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 72) = off_1002ACC50;
  ctu::OsLogLogger::OsLogLogger((a1 + 80), (qword_1002DBE98 + 8));
  *a1 = off_1002B2150;
  *(a1 + 72) = off_1002B2190;
  *(a1 + 88) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 104) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 120) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 136) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a1 + 152) = *a6;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 216;
  return a1;
}

void sub_1001031FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, uint64_t a11, dispatch_object_t object, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  XPCEventPublisher.Token.rawValue.getter(a9, a10);
  ctu::XpcServer::~XpcServer(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_100103254()
{
  result = sub_100085004();
  if (!result)
  {
    return result;
  }

  sub_1000DEE74(v13);
  pthread_mutex_lock(&stru_1002D4A58);
  v1 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v2 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  sub_1000DFC1C(v1);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = sub_100008EEC(&v14, "Current device configuration is ", 32);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = std::ostream::operator<<();
  v5 = sub_100008EEC(v4, " (hex 0x", 8);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = std::ostream::operator<<();
  sub_100008EEC(v6, ").", 2);
  std::stringbuf::str();
  if (v12 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = CFStringCreateWithCString(kCFAllocatorDefault, v7, 0x8000100u);
  v9 = v8;
  if ((v12 & 0x80000000) == 0)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  operator delete(__p[0]);
  if (v9)
  {
LABEL_15:
    CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, @"Device Configuration", v9, 0);
    CFRelease(v9);
  }

LABEL_16:
  v14 = v10;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10010357C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  pthread_mutex_unlock(&stru_1002D4A58);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1001035FC(dispatch_queue_t *a1)
{
  v2 = a1[10];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conn:#E Listener got xpc error. Not sure what to do bout that. Start again?", v3, 2u);
  }

  sub_100103668(a1);
}

void sub_100103668(dispatch_queue_t *a1)
{
  mach_service = xpc_connection_create_mach_service("com.apple.wirelessinsightsd", a1[3], 1uLL);
  if (!mach_service)
  {
    mach_service = xpc_null_create();
  }

  v3 = mach_service;
  if (xpc_get_type(mach_service) == &_xpc_type_connection)
  {
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    ctu::XpcServer::setListener_sync();
    xpc_release(object);
    object = 0;
    ctu::XpcServer::startListener_sync(a1);
    v9 = a1[10];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v5 = "conn:#I XPC listener started.";
      v6 = &v10;
      v7 = v9;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }
  }

  else
  {
    v4 = a1[10];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v5 = "conn:#E Unable to create listener in ConnectionManager::init_sync.";
      v6 = &v12;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, v8, v5, v6, 2u);
    }
  }

  xpc_release(v3);
}

void sub_100103780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *sub_1001037BC@<X0>(void *a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v5 = a1[22];
  if (v5 >= a1[23])
  {
    v7 = sub_100106228((a1 + 21), a2);
  }

  else
  {
    v6 = *a2;
    *v5 = *a2;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      *v5 = xpc_null_create();
    }

    v7 = (v5 + 1);
  }

  a1[22] = v7;
  result = a1[24];
  if (result)
  {
    result = _Block_copy(result);
  }

  *a3 = result;
  return result;
}

void sub_10010383C(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3)
{
  if (xpc_get_type(*a3) == &_xpc_type_null)
  {
    if (os_log_type_enabled(*(a1 + 80), OS_LOG_TYPE_ERROR))
    {
      sub_100209744();
    }
  }

  else if (xpc_get_type(*a2) == &_xpc_type_connection)
  {
    if (*a3 == &_xpc_error_connection_interrupted)
    {
      v13 = *(a1 + 80);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *a2;
        *buf = 134217984;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "conn:#I Got xpc error connection interrupted on connection 0x%p", buf, 0xCu);
      }
    }

    else if (*a3 == &_xpc_error_connection_invalid)
    {
      v6 = *(a1 + 80);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *a2;
        *buf = 134217984;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "conn:#I Got xpc error connection invalid on connection 0x%p", buf, 0xCu);
      }

      v8 = *(a1 + 168);
      v9 = *(a1 + 176);
      if (v8 != v9)
      {
        do
        {
          if (xpc_equal(*v8, *a2))
          {
            goto LABEL_15;
          }

          ++v8;
        }

        while (v8 != v9);
        v8 = v9;
LABEL_15:
        v9 = *(a1 + 176);
      }

      if (v8 != v9)
      {
        sub_100106534(buf, v8 + 1, v9, v8);
        sub_100105E34(a1 + 168, v10);
      }

      v11 = *(a1 + 88);
      v12 = *a2;
      object = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        object = xpc_null_create();
      }

      sub_1000EF748(v11, &object);
      xpc_release(object);
      object = 0;
      v15 = *(a1 + 136);
      v16 = *a2;
      aBlock = 0;
      v18 = xpc_null_create();
      sub_100064578(v15, v16, &v18, &aBlock);
    }
  }

  else if (os_log_type_enabled(*(a1 + 80), OS_LOG_TYPE_ERROR))
  {
    sub_100209710();
  }
}

void sub_100103AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, xpc_object_t a12)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100103B04(uint64_t *a1)
{
  v1 = *a1;
  xpc_connection_get_audit_token();
  v11[0] = v11[1];
  v2 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, v11);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.wirelessinsightsd.manager-access", 0);
    if (v4 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(v4)))
    {
      if (CFEqual(v4, kCFBooleanTrue))
      {
        v6 = 1;
      }

      else
      {
        v10 = *(qword_1002DBE98 + 8);
        v6 = 0;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11[0].val[0]) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "conn:#E Entitlement exists, but check failed.", v11, 2u);
          v6 = 0;
        }
      }
    }

    else
    {
      v7 = *(qword_1002DBE98 + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0].val[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conn:#E Entitlement couldnt be found", v11, 2u);
      }

      v6 = 0;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    CFRelease(v4);
LABEL_10:
    CFRelease(v3);
    return v6;
  }

  v8 = *(qword_1002DBE98 + 8);
  v6 = 0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0].val[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "conn:#E Entitlement query did not succeed", v11, 2u);
    return 0;
  }

  return v6;
}

void sub_100103CBC(uint64_t a1)
{
  if (os_log_type_enabled(*(*(a1 + 32) + 80), OS_LOG_TYPE_DEBUG))
  {
    sub_100209848();
  }
}

uint64_t sub_100103CFC(uint64_t result, uint64_t a2)
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

void sub_100103D18(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_100103D28(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    if (*(a3 + 23) >= 0)
    {
      v4 = a3;
    }

    else
    {
      v4 = *a3;
    }

    v6 = xpc_string_create(v4);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v5[0] = *(a1 + 32);
    v5[1] = "error";
    sub_10000F50C(v5, &v6, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v6);
  }
}

uint64_t sub_100103DBC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100103DD8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_100103DE8(uint64_t a1, xpc_object_t *a2)
{
  v4 = xpc_null_create();
  if (xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    reply = xpc_dictionary_create_reply(*a2);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (xpc_get_type(reply) == &_xpc_type_dictionary)
      {
        xpc_retain(reply);
        v5 = reply;
      }

      else
      {
        v5 = xpc_null_create();
      }
    }

    else
    {
      v5 = xpc_null_create();
      reply = 0;
    }

    v7 = xpc_null_create();
    xpc_release(v4);
    xpc_release(v7);
    xpc_release(reply);
  }

  else
  {
    v5 = v4;
  }

  memset(buf, 0, sizeof(buf));
  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    operator new();
  }

  xpc_release(v5);
  if (os_log_type_enabled(*(a1 + 80), OS_LOG_TYPE_ERROR))
  {
    sub_1002098BC();
  }
}

void sub_100104310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  pthread_mutex_unlock(&stru_1002D4B60);
  if (a21)
  {
    sub_100008350(a21);
  }

  if (v27)
  {
    sub_100008350(v27);
  }

  _Unwind_Resume(a1);
}

void sub_10010444C(void *a1, xpc_object_t *a2)
{
  *buf = a2;
  *&buf[8] = "cid";
  sub_100007DA4(buf, &object);
  v5 = xpc::dyn_cast_or_default(&object, 0, v4);
  xpc_release(object);
  v36 = v5;
  v6 = xpc_null_create();
  if (xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    reply = xpc_dictionary_create_reply(*a2);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (xpc_get_type(reply) == &_xpc_type_dictionary)
      {
        xpc_retain(reply);
        v7 = reply;
      }

      else
      {
        v7 = xpc_null_create();
      }
    }

    else
    {
      v7 = xpc_null_create();
      reply = 0;
    }

    v9 = xpc_null_create();
    xpc_release(v6);
    xpc_release(v9);
    xpc_release(reply);
  }

  else
  {
    v7 = v6;
  }

  *buf = 0;
  *&buf[8] = 0;
  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    operator new();
  }

  v11 = *buf;
  v10 = *&buf[8];
  xpc_release(v7);
  v33 = xpc_int64_create(12);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  *buf = v11;
  *&buf[8] = "WISMessageType";
  sub_10000F50C(buf, &v33, &v34);
  xpc_release(v34);
  v34 = 0;
  xpc_release(v33);
  v33 = 0;
  v12 = a1[10];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v36;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "conn:#I CoreAnalytics shim: Handling metadata request for 0x%x", buf, 8u);
  }

  if (xpc_dictionary_get_value(*a2, "needs_base"))
  {
    v13 = a1[25];
    if (!v13)
    {
      strcpy(buf, "/System/Library/Frameworks/WirelessInsights.framework/Support/AWDMetadata.bin");
      operator new();
    }

    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    readonly = xpc_shmem_create_readonly();
    v17 = readonly;
    if (readonly)
    {
      v31 = readonly;
    }

    else
    {
      v17 = xpc_null_create();
      v31 = v17;
      if (!v17)
      {
        v17 = 0;
        v31 = xpc_null_create();
        goto LABEL_23;
      }
    }

    xpc_retain(v17);
LABEL_23:
    *buf = v11;
    *&buf[8] = "base";
    sub_10000F50C(buf, &v31, &v32);
    xpc_release(v32);
    v32 = 0;
    xpc_release(v31);
    v31 = 0;
    xpc_release(v17);
  }

  v18 = v36;
  sub_100104964(a1, v36);
  v21 = a1[27];
  v20 = a1 + 27;
  v19 = v21;
  if (v21)
  {
    v22 = (v20 - 1);
    v23 = v20;
    do
    {
      v24 = *(v19 + 32);
      v25 = v24 >= v18;
      v26 = v24 < v18;
      if (v25)
      {
        v23 = v19;
      }

      v19 = *(v19 + 8 * v26);
    }

    while (v19);
    if (v23 != v20 && v18 >= *(v23 + 8))
    {
      *buf = &v36;
      v27 = *(sub_100106B64((v20 - 1), &v36)[5] + 8);
      *buf = &v36;
      v28 = *(sub_100106B64(v22, &v36)[5] + 16);
      v29 = xpc_shmem_create_readonly();
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      *buf = v11;
      *&buf[8] = "component";
      sub_10000F50C(buf, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v29 = 0;
    }
  }

  if (v10)
  {
    sub_100008350(v10);
  }
}

void sub_100104894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002205C(exception_object);
}

void sub_100104964(uint64_t a1, unsigned int a2)
{
  v39 = a2;
  v2 = *(a1 + 216);
  if (!v2)
  {
LABEL_6:
    strcpy(v40, "/System/Library/WirelessInsights/Metadata");
    sub_10005D4CC(&v35.__pn_, v40);
    std::__fs::filesystem::directory_iterator::directory_iterator(&__dst, &v35, 0, none);
    size = __dst.__pn_.__r_.__value_.__l.__size_;
    v6 = __dst.__pn_.__r_.__value_.__r.__words[0];
    *&__dst.__pn_.__r_.__value_.__l.__data_ = 0uLL;
    if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = size;
      operator delete(v35.__pn_.__r_.__value_.__l.__data_);
      size = v7;
    }

    v27 = size;
    if (size)
    {
      atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
      v38.__imp_.__ptr_ = v6;
      v38.__imp_.__cntrl_ = size;
      atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100008350(size);
    }

    else
    {
      v38.__imp_.__ptr_ = v6;
      v38.__imp_.__cntrl_ = 0;
    }

    while (1)
    {
      if (!v38.__imp_.__ptr_)
      {
LABEL_64:
        if (v38.__imp_.__cntrl_)
        {
          sub_100008350(v38.__imp_.__cntrl_);
        }

        if (v27)
        {
          sub_100008350(v27);
        }

        return;
      }

      v8 = std::__fs::filesystem::directory_iterator::__dereference(&v38);
      std::__fs::filesystem::__status(&v8->__p_, 0);
      if (v35.__pn_.__r_.__value_.__s.__data_[0] == 1)
      {
        break;
      }

LABEL_63:
      std::__fs::filesystem::directory_iterator::__increment(&v38, 0);
    }

    sub_10000A448(&v35);
    v9 = sub_100008EEC(&v35, "-0x", 3);
    *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 8;
    v10 = std::ostream::operator<<();
    sub_100008EEC(v10, "-", 1);
    if (SHIBYTE(v8->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_10000FFF8(&__dst, v8->__p_.__pn_.__r_.__value_.__l.__data_, v8->__p_.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v8->__p_;
    }

    sub_10005BC80(&__dst, &__p);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_10000FFF8(&v33, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v33 = __p;
    }

    std::stringbuf::str();
    v11 = HIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]);
    v12 = HIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]);
    if ((v33.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v33;
    }

    else
    {
      v13 = v33.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v33.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v33.__pn_.__r_.__value_.__l.__size_;
    }

    v14 = v31;
    v15 = v30[0];
    if ((v31 & 0x80u) == 0)
    {
      v16 = v30;
    }

    else
    {
      v16 = v30[0];
    }

    if ((v31 & 0x80u) == 0)
    {
      v17 = v31;
    }

    else
    {
      v17 = v30[1];
    }

    if (v17)
    {
      v18 = v13 + v11;
      if (v11 >= v17)
      {
        v22 = *v16;
        v23 = v13;
        do
        {
          v24 = v11 - v17;
          if (v24 == -1)
          {
            break;
          }

          v25 = memchr(v23, v22, v24 + 1);
          if (!v25)
          {
            break;
          }

          v19 = v25;
          if (!memcmp(v25, v16, v17))
          {
            goto LABEL_34;
          }

          v23 = (v19 + 1);
          v11 = v18 - (v19 + 1);
        }

        while (v11 >= v17);
      }

      v19 = v18;
LABEL_34:
      v21 = v19 == v18 || v19 - v13 == -1;
      if ((v14 & 0x80000000) == 0)
      {
LABEL_41:
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_42;
        }

LABEL_49:
        operator delete(v33.__pn_.__r_.__value_.__l.__data_);
LABEL_42:
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        if (!v21)
        {
          if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_10000FFF8(&v33, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v33 = __dst;
          }

          operator new();
        }

        if ((*(&__dst.__pn_.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
        }

        v35.__pn_.__r_.__value_.__r.__words[0] = v29;
        *(v35.__pn_.__r_.__value_.__r.__words + *(v29 - 24)) = v28;
        if (v37 < 0)
        {
          operator delete(v36);
        }

        std::locale::~locale(&v35.__pn_.__r_.__value_.__r.__words[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        if (!v21)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }
    }

    else
    {
      v21 = 0;
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }
    }

    operator delete(v15);
    if ((*(&v33.__pn_.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  while (1)
  {
    v4 = *(v2 + 8);
    if (v4 <= a2)
    {
      break;
    }

LABEL_5:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  if (v4 < a2)
  {
    ++v2;
    goto LABEL_5;
  }

  v26 = *(a1 + 80);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_1002098F0(a2, v26);
  }
}

void sub_100104E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    v46 = *(a11 + 80);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_100209968((v43 - 152), v46);
    }

    __cxa_end_catch();
    JUMPOUT(0x100104E18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100104FE8(uint64_t a1)
{
  v1 = *(a1 + 136);
  sub_10010302C(a1, v3);
  if (v3[0])
  {
    v2 = v3[0] + 72;
  }

  else
  {
    v2 = 0;
  }

  v4[0] = v2;
  v4[1] = v3[1];
  sub_100063D28(v1, v4);
}

void sub_100105044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008350(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010505C(uint64_t a1)
{
  sub_10010302C(a1, &v8);
  v3 = v8;
  v2 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100008350(v2);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_100005860;
  aBlock[3] = &unk_1002B2208;
  aBlock[4] = a1;
  aBlock[5] = v3;
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = _Block_copy(aBlock);
  v5 = *(a1 + 192);
  *(a1 + 192) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  sub_100103668(a1);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10010514C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100105174(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100105190(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1001051A0(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "conn:#N Closing connection listener port", buf, 2u);
  }

  object = xpc_null_create();
  ctu::XpcServer::setListener_sync();
  xpc_release(object);
}

void sub_100105240(uint64_t a1, uint64_t a2, NSObject **a3)
{
  sub_100160D30(a3, &object);
  sub_10010302C(a1, &v12);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_100105538;
  v9[3] = &unk_1002B2238;
  v6 = v12;
  v5 = v13;
  v9[4] = a1;
  v9[5] = v12;
  v10 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  group = object;
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(group);
  }

  sub_1000081C8(&v15, (a1 + 8));
  v7 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v18 = 1174405120;
  v19 = sub_100106CA4;
  v20 = &unk_1002B2480;
  v22 = v15;
  v23 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = v9;
  dispatch_async(v7, &block);
  if (v23)
  {
    sub_100008350(v23);
  }

  if (v16)
  {
    sub_100008350(v16);
  }

  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_100105664;
  v8[3] = &unk_1002B2298;
  v8[4] = a1;
  block = _NSConcreteStackBlock;
  v18 = 1174405120;
  v19 = sub_100106CE0;
  v20 = &unk_1002B24B8;
  v22 = v6;
  v23 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = v8;
  sub_100160E88(a3, (v6 + 24), &block);
  if (v23)
  {
    sub_100008350(v23);
  }

  if (v5)
  {
    sub_100008350(v5);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v10)
  {
    sub_100008350(v10);
  }

  if (v5)
  {
    sub_100008350(v5);
  }

  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }
}

void sub_1001054C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, dispatch_group_t group, uint64_t a23, uint64_t a24, dispatch_group_t object)
{
  v28 = *(v26 - 72);
  if (v28)
  {
    sub_100008350(v28);
  }

  if (v25)
  {
    sub_100008350(v25);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (a21)
  {
    sub_100008350(a21);
  }

  if (v25)
  {
    sub_100008350(v25);
  }

  if (object)
  {
    dispatch_group_leave(object);
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100105538(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "conn:#N Flush of all incoming requests complete.", v2, 2u);
  }
}

void sub_10010559C(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void sub_100105608(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {

    sub_100008350(v4);
  }
}

void sub_100105664(uint64_t a1, NSObject **a2)
{
  v3 = *(a1 + 32);
  sub_1001051A0(v3);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_1001057A8;
  v6[3] = &unk_1002B2268;
  v4 = *a2;
  v6[4] = v3;
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(group);
  }

  sub_1000081C8(&v10, (v3 + 8));
  v5 = *(v3 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100106CA4;
  block[3] = &unk_1002B2480;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v9)
  {
    sub_100008350(v9);
  }

  if (v11)
  {
    sub_100008350(v11);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_1001057A8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "conn:#N ConnectionManager closed all XPC services", v2, 2u);
  }
}

void sub_10010580C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2)
  {
    sub_10010302C(a1, &v8);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_10010593C;
    v7[3] = &unk_1002B22B8;
    v7[4] = a1;
    v5 = v8;
    v6 = v9;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1174405120;
    v10[2] = sub_100106CE0;
    v10[3] = &unk_1002B24B8;
    v10[5] = v8;
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10[4] = v7;
    sub_100160E88(a3, (v5 + 24), v10);
    if (v11)
    {
      sub_100008350(v11);
    }

    if (v6)
    {
      sub_100008350(v6);
    }
  }
}

void sub_100105918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100008350(a22);
  }

  if (v22)
  {
    sub_100008350(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100105944(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    xpc_null_create();
  }

  sub_1000081C8(&v4, (a1 + 8));
  operator new();
}

void sub_100105A70(uint64_t a1)
{
  sub_100105C90(a1);

  operator delete();
}

void sub_100105AB0(uint64_t a1)
{
  sub_100105C90(a1 - 72);

  operator delete();
}

uint64_t sub_100105AF0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void **sub_100105C40(void **a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

void sub_100105C90(uint64_t a1)
{
  *a1 = off_1002B2150;
  *(a1 + 72) = off_1002B2190;
  sub_100105D80(a1 + 208, *(a1 + 216));
  sub_100106188((a1 + 200), 0);
  v2 = *(a1 + 192);
  if (v2)
  {
    _Block_release(v2);
  }

  v10 = (a1 + 168);
  sub_100105DE0(&v10);
  v3 = *(a1 + 160);
  if (v3)
  {
    sub_100008350(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    sub_100008350(v4);
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    sub_100008350(v5);
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    sub_100008350(v6);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    sub_100008350(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 80));
  XPCEventPublisher.Token.rawValue.getter(v8, v9);
  ctu::XpcServer::~XpcServer(a1);
}

void sub_100105D80(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100105D80(a1, *a2);
    sub_100105D80(a1, a2[1]);
    sub_100106188(a2 + 5, 0);

    operator delete(a2);
  }
}

void sub_100105DE0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100105E34(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100105E34(uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; *i = 0)
  {
    v5 = *--i;
    xpc_release(v5);
  }

  *(a1 + 8) = a2;
}

void sub_100105F08(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100105FDC);
  __cxa_rethrow();
}

void sub_100105F48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100105F9C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100105FDC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void sub_100106008(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_100104FE8(*v1);
}

void sub_10010604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100057388(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

void *sub_100106068(void *a1)
{
  *a1 = off_1002B23A0;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_1001060B4(void *a1)
{
  *a1 = off_1002B23A0;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_100106130@<X0>(void *a1@<X8>)
{
  v2 = 1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

uint64_t sub_100106188(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1001061D4(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1001061D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    munmap(v2, *(a1 + 16));
    *(a1 + 8) = -1;
  }

  if (*a1)
  {
    fclose(*a1);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100106228(uint64_t a1, void **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_100033FD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_10009678C(a1, v7);
  }

  v8 = (8 * v2);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *v8 = *a2;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *v8 = xpc_null_create();
  }

  *&v18 = v8 + 1;
  v10 = *(a1 + 8);
  v11 = (v8 + *a1 - v10);
  sub_100106348(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1001064D4(&v16);
  return v15;
}

void sub_100106330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001064D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100106348(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, xpc_object_t *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7++ = xpc_null_create();
      a4 = ++v12;
    }

    while (v7 != a3);
  }

  v10 = 1;
  sub_100106400(a1, a2, a3);
  return sub_100106444(v9);
}

void sub_100106400(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      xpc_release(*v4);
      *v4++ = 0;
    }

    while (v4 != a3);
  }
}

uint64_t sub_100106444(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100106490(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_100106490(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *--v6;
      xpc_release(v7);
      *v6 = 0;
    }

    while (v6 != a5);
  }
}

uint64_t sub_1001064D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v5 = *(i - 8);
    v4 = (i - 8);
    *(a1 + 16) = v4;
    xpc_release(v5);
    *v4 = 0;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

xpc_object_t *sub_100106534(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = xpc_null_create();
      v8 = *a4;
      *a4 = v7;
      xpc_release(v8);
      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1001065A8(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100008350(v3);
  }

  return a1;
}

void *sub_100106600(void *a1)
{
  *a1 = off_1002B23F8;
  v2 = a1[3];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_10010664C(void *a1)
{
  *a1 = off_1002B23F8;
  v1 = a1[3];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_10010672C(uint64_t result, uint64_t a2)
{
  *a2 = off_1002B23F8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10010676C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_10010677C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100008350(v2);
  }

  operator delete(__p);
}

void sub_1001067BC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(*(a1 + 8) + 80);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = 0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 3);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "conn:#I ConsolidateDeviceDiagnostics: returning %zd files", &buf, 0xCu);
  }

  v5 = xpc_array_create(0, 0);
  v6 = v5;
  if (v5)
  {
    object = v5;
  }

  else
  {
    v6 = xpc_null_create();
    object = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_array)
  {
    xpc_retain(v6);
    goto LABEL_11;
  }

  v7 = xpc_null_create();
LABEL_10:
  object = v7;
LABEL_11:
  xpc_release(v6);
  sub_100106A28(&v12, v9, v10, &object);
  v11 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v11 = xpc_null_create();
  }

  *&buf = *(a1 + 16);
  *(&buf + 1) = "files";
  sub_1000947D8(&buf, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  xpc_release(object);
  *&buf = &v9;
  sub_1000388A4(&buf);
}

void sub_100106984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object, uint64_t a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002205C(exception_object);
}

uint64_t sub_1001069DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100106A28(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = v5;
      if (*(v5 + 23) < 0)
      {
        v7 = *v5;
      }

      v8 = xpc_string_create(v7);
      if (!v8)
      {
        v8 = xpc_null_create();
      }

      xpc_array_append_value(*a4, v8);
      xpc_release(v8);
      v5 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

FILE **sub_100106AD4(FILE **a1, char *__filename)
{
  *a1 = 0;
  a1[1] = -1;
  a1[2] = 0;
  v3 = fopen(__filename, "rb");
  *a1 = v3;
  if (v3)
  {
    v4 = fileno(v3);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v4;
      if (!fstat(v4, &v8))
      {
        st_size = v8.st_size;
        a1[2] = v8.st_size;
        a1[1] = mmap(0, st_size, 1, 1025, v5, 0);
      }
    }
  }

  return a1;
}

uint64_t *sub_100106B64(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100106C54(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100106188(v2 + 5, 0);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100106CB4(uint64_t result, uint64_t a2)
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

void sub_100106CD0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_100106CE0(uint64_t a1, NSObject **a2)
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

void sub_100106D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100106D60(uint64_t result, uint64_t a2)
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

void sub_100106D7C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

uint64_t *sub_100106D8C(void **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v3 = *(*v1 + 168);
  v2 = *(*v1 + 176);
  if (v3 != v2)
  {
    while (*v3 != v1[1])
    {
      if (++v3 == v2)
      {
        goto LABEL_9;
      }
    }
  }

  if (v3 != v2)
  {
    v4 = *(*v1 + 80);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      xpc::object::to_string(v8, (v1 + 2));
      sub_1002099E4(v8, buf, v4);
    }

    xpc_connection_send_message(*v3, v1[2]);
  }

LABEL_9:
  sub_100106E94(&v7);
  return sub_1000082FC(&v6);
}

uint64_t *sub_100106E94(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    operator delete();
  }

  return result;
}

uint64_t sub_100106EEC()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100106F28()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100106F64()
{
  if ((byte_1002D4B58 & 1) == 0)
  {
    byte_1002D4B58 = 1;
    return __cxa_atexit(sub_10004F8E8, &stru_1002D4B08, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100106FA0()
{
  if ((byte_1002D4CB8 & 1) == 0)
  {
    byte_1002D4CB8 = 1;
    return __cxa_atexit(sub_10004F8F8, &stru_1002D4C68, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100106FDC()
{
  if ((byte_1002D4F78 & 1) == 0)
  {
    byte_1002D4F78 = 1;
    return __cxa_atexit(sub_10004F918, &stru_1002D4F28, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100107018()
{
  if ((byte_1002D4D10 & 1) == 0)
  {
    byte_1002D4D10 = 1;
    return __cxa_atexit(sub_10004F8FC, &stru_1002D4CC0, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100107054()
{
  if ((byte_1002D54D8 & 1) == 0)
  {
    byte_1002D54D8 = 1;
    return __cxa_atexit(sub_100105AEC, &stru_1002D5488, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100107090()
{
  if ((byte_1002D4E18 & 1) == 0)
  {
    byte_1002D4E18 = 1;
    return __cxa_atexit(sub_10004F908, &stru_1002D4DC8, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1001070CC()
{
  if ((byte_1002D4BB0 & 1) == 0)
  {
    byte_1002D4BB0 = 1;
    return __cxa_atexit(sub_10004F8EC, &stru_1002D4B60, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100107108(void *a1)
{
  v1 = a1;
  v2 = _CTServerConnectionCreate();
  v3 = _CTServerConnectionCopyTraceProperty();
  if (v3)
  {
    v4 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      *v8 = v3;
      *&v8[4] = 1024;
      *&v8[6] = HIDWORD(v3);
      v9 = 2112;
      v10 = v1;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "WISABC:_CTServerConnectionCopyTraceProperty failed %d:%d for CTProperty: %@", buf, 0x18u);
    }
  }

  else
  {
    v6 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v8 = v1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "WISABC:#I Couldn't get the enablement value for CTProperty: %@", buf, 0xCu);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

id sub_100107354()
{
  v0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.symptomsd-diag"];
  v1 = [v0 valueForKey:@"autoFeedbackAssistantEnable"];
  v2 = [v1 BOOLValue];

  return v2;
}

void sub_1001073D8()
{
  sub_100011294(__p, 1);
  v0 = MGGetBoolAnswer();
  v1 = v11;
  if (v11 < 0)
  {
    if (__p[1] != 4)
    {
LABEL_13:
      operator delete(__p[0]);
      return;
    }

    v2 = __p[0];
  }

  else
  {
    if (v11 != 4)
    {
      return;
    }

    v2 = __p;
  }

  if (((*v2 == 1635018050) & v0) != 0)
  {
    v14[0] = @"switchName";
    v14[1] = @"status";
    v15[0] = @"ABCEnhancedBetaFeedbackSwitch";
    v3 = sub_100107354();
    v4 = @"Off";
    if (v3)
    {
      v4 = @"On";
    }

    v15[1] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v6 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "WISABC:#I Sending CA event with payload: %@", buf, 0xCu);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001075F0;
    v8[3] = &unk_1002AB460;
    v9 = v5;
    v7 = v5;
    sub_1000158DC(@"com.apple.Telephony.commCenterSwitchState", v8);

    v1 = v11;
  }

  if (v1 < 0)
  {
    goto LABEL_13;
  }
}

void sub_1001075B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001075F8(uint64_t *a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    if (a1[1] != 8)
    {
      goto LABEL_9;
    }

    v3 = *a1;
  }

  else
  {
    v3 = a1;
    if (v2 != 8)
    {
      goto LABEL_9;
    }
  }

  if (*v3 == 0x72616C756C6C6543 && *(a1 + 96) == 1 && (sub_100107108(@"BasebandTrace") & 1) == 0)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
    {
      sub_100209B48();
    }

    return;
  }

LABEL_9:
  if (*(v1 + 97) != 1 || (sub_100107108(@"CoreDump") & 1) != 0)
  {
    v4 = v1;
    if (*(v1 + 23) < 0)
    {
      v4 = *v1;
    }

    v5 = [NSString stringWithUTF8String:v4];
    v6 = v1 + 3;
    if (*(v1 + 47) < 0)
    {
      v6 = *v6;
    }

    v7 = [NSString stringWithUTF8String:v6];
    v8 = v1 + 6;
    if (*(v1 + 71) < 0)
    {
      v8 = *v8;
    }

    v9 = [NSString stringWithUTF8String:v8];
    v10 = v1 + 9;
    if (*(v1 + 95) < 0)
    {
      v10 = *v10;
    }

    v11 = [NSString stringWithUTF8String:v10];
    sub_100011294(&__p, 1);
    v12 = v30;
    if ((v30 & 0x80u) != 0)
    {
      v12 = v29;
    }

    if (v12)
    {
      if (v30 < 0)
      {
        if (v29 != 4)
        {
          goto LABEL_31;
        }

        p_p = __p;
      }

      else
      {
        if (v30 != 4)
        {
          goto LABEL_31;
        }

        p_p = &__p;
      }

      if (*p_p == 1635018050 && (sub_100107354() & 1) == 0)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
        {
          sub_100209BB0();
        }

        goto LABEL_52;
      }
    }

LABEL_31:
    v14 = objc_alloc_init(NSMutableDictionary);
    [v14 setObject:&__kCFBooleanTrue forKey:kSymptomDiagnosticActionLogArchive];
    [v14 setObject:&__kCFBooleanTrue forKey:kSymptomDiagnosticActionGetNetworkInfo];
    [v14 setObject:&__kCFBooleanTrue forKey:kSymptomDiagnosticActionCrashAndSpinLogs];
    v15 = kSymptomDiagnosticActionDiagnosticExtensions;
    [v14 setObject:&__kCFBooleanFalse forKey:kSymptomDiagnosticActionDiagnosticExtensions];
    if (*(v1 + 23) < 0)
    {
      if (v1[1] != 8 || **v1 != 0x72616C756C6C6543)
      {
        if (v1[1] == 9)
        {
          v1 = *v1;
LABEL_39:
          if (*v1 != 0x6E6F6870656C6554 || *(v1 + 8) != 121)
          {
            goto LABEL_46;
          }

          v18 = [NSString stringWithFormat:@"AutoBugCapture - Type: %@, SubType: %@", v7, v9];
          [v14 setObject:&__kCFBooleanTrue forKey:v15];
          v35 = kSymptomDiagnosticKeyPayloadDEParameters;
          v32[1] = v18;
          v33 = @"com.apple.DiagnosticExtensions.Cellular";
          v31[0] = @"CellularExtensionCommandKey";
          v31[1] = @"CellularExtensionDumpReasonKey";
          v32[0] = @"dump_attach";
          v19 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
          v34 = v19;
          v20 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          v36 = v20;
          v21 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];

LABEL_49:
          v22 = objc_alloc_init(SDRDiagnosticReporter);
          v23 = [v22 signatureWithDomain:v5 type:v7 subType:v9 subtypeContext:v11 detectedProcess:@"wirelessinsightsd" triggerThresholdValues:0];
          if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
          {
            sub_100209C18();
          }

          [v22 snapshotWithSignature:v23 delay:0 events:v21 payload:v14 actions:&stru_1002B2508 reply:0.0];

LABEL_52:
          if (v30 < 0)
          {
            operator delete(__p);
          }

          return;
        }

LABEL_46:
        if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
        {
          sub_100209BE4();
        }

        v21 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v16 = *(v1 + 23);
      if (v16 != 8)
      {
        if (v16 != 9)
        {
          goto LABEL_46;
        }

        goto LABEL_39;
      }

      if (*v1 != 0x72616C756C6C6543)
      {
        goto LABEL_46;
      }
    }

    v24 = [NSString stringWithFormat:@"AutoBugCapture - Type: %@, SubType: %@", v7, v9];
    [v14 setObject:&__kCFBooleanTrue forKey:v15];
    if (*(v1 + 99) == 1)
    {
      v53 = kSymptomDiagnosticKeyPayloadDEParameters;
      v50[1] = v24;
      v51 = @"com.apple.DiagnosticExtensions.Cellular";
      v49[0] = @"CellularExtensionCommandKey";
      v49[1] = @"CellularExtensionDumpReasonKey";
      v50[0] = @"dumpWithBasebandReset";
      v25 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
      v52 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v54 = v26;
      v27 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    }

    else
    {
      if (*(v1 + 98) == 1)
      {
        v47 = kSymptomDiagnosticKeyPayloadDEParameters;
        v45 = @"com.apple.DiagnosticExtensions.Cellular";
        v43[0] = @"CellularExtensionCommandKey";
        v43[1] = @"CellularExtensionDumpReasonKey";
        v44[0] = @"dump_attach";
        v44[1] = v24;
        v25 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
        v46 = v25;
        v26 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v48 = v26;
        [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      }

      else
      {
        v41 = kSymptomDiagnosticKeyPayloadDEParameters;
        v38[1] = v24;
        v39 = @"com.apple.DiagnosticExtensions.Cellular";
        v37[0] = @"CellularExtensionCommandKey";
        v37[1] = @"CellularExtensionDumpReasonKey";
        v38[0] = @"attach";
        v25 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
        v40 = v25;
        v26 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v42 = v26;
        [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      }
      v27 = ;
    }

    v21 = v27;

    goto LABEL_49;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
  {
    sub_100209B7C();
  }
}

void sub_100107D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v24 = v22;

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100107E70(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v4 = [v3 BOOLValue];

  v5 = *(qword_1002DBE98 + 112);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "WISABC:#I ABC case is submitted and accepted successfully", &v8, 2u);
    }
  }

  else if (v6)
  {
    v7 = [(NSDictionary *)v2 objectForKey:kSymptomDiagnosticReplyReason];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "WISABC:#I ABC case is rejected/dampened, errorCode = %@", &v8, 0xCu);
  }
}

void sub_100108238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  if (a14)
  {
    sub_100008350(a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100008350(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1001082D0(uint64_t a1)
{
  v7 = 458760;
  v8 = &v7;
  v2 = sub_10010A6C4(a1 + 48, &v7);
  v2[5] = sub_100108648;
  v2[6] = 0;
  v7 = 458759;
  v8 = &v7;
  v3 = sub_10010A6C4(a1 + 48, &v7);
  v3[5] = sub_10010875C;
  v3[6] = 0;
  v7 = 458768;
  v8 = &v7;
  v4 = sub_10010A6C4(a1 + 48, &v7);
  v4[5] = sub_100108870;
  v4[6] = 0;
  v7 = 458758;
  v8 = &v7;
  v5 = sub_10010A6C4(a1 + 48, &v7);
  v5[5] = sub_100108990;
  v5[6] = 0;
  v8 = &dword_100247318;
  result = sub_10010A6C4(a1 + 48, &dword_100247318);
  result[5] = sub_100108B3C;
  result[6] = 0;
  return result;
}

uint64_t sub_100108424(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100108440(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_100108450(void *a1)
{
  sub_1001084E0(a1 + 1, "TriggerMap", QOS_CLASS_DEFAULT, "trig");
  *a1 = &off_1002B2568;
  a1[7] = 0;
  a1[6] = a1 + 7;
  a1[11] = 0;
  a1[10] = 0;
  a1[8] = 0;
  a1[9] = a1 + 10;
  v2 = dispatch_queue_create("fQueriableMetricQueue", 0);
  a1[13] = 0;
  a1[14] = 0;
  a1[12] = v2;
  return a1;
}

void *sub_1001084E0(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
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

uint64_t sub_100108584(uint64_t a1)
{
  *a1 = &off_1002B2568;
  v2 = *(a1 + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    dispatch_release(v3);
  }

  sub_10010A600(a1 + 72, *(a1 + 80));
  sub_10001C4B0(a1 + 48, *(a1 + 56));
  XPCEventPublisher.Token.rawValue.getter(v4, v5);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_100032AD8((a1 + 8));
  return a1;
}

void sub_100108610(uint64_t a1)
{
  sub_100108584(a1);

  operator delete();
}

void sub_100108648(void *a1, uint64_t a2, unsigned int a3, const wireless_diagnostics::google::protobuf::MessageLite *a4)
{
  v8 = a1[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = HIDWORD(a2);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "trig:#I Submit startup metric for trigger 0x%x", buf, 8u);
  }

  v9 = a1[14];
  v10 = a1[13];
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100070574(&v10, a2, a3, a4);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_100108744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010875C(void *a1, uint64_t a2, unsigned int a3, const wireless_diagnostics::google::protobuf::MessageLite *a4)
{
  v8 = a1[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = HIDWORD(a2);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "trig:#I Submit shutdown metric for trigger 0x%x", buf, 8u);
  }

  v9 = a1[14];
  v10 = a1[13];
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100070730(&v10, a2, a3, a4);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_100108858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100108870(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = HIDWORD(a2);
  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v12 = a4;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "trig:#I Submit battery level change metric for metric 0x%x triggered because of trigger 0x%x", buf, 0xEu);
  }

  v8 = a1[14];
  v9 = a1[13];
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CD448();
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_100108978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100108990(uint64_t a1, uint64_t a2, unsigned int a3, const wireless_diagnostics::google::protobuf::MessageLite *a4)
{
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109376;
    v9[1] = a4;
    v10 = 1024;
    v11 = HIDWORD(a2);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "trig:#I Submit location's diagnostics allowed (0x%x) triggered because of trigger 0x%x", v9, 0xEu);
  }

  pthread_mutex_lock(&stru_1002D4CC0);
  v8 = xmmword_1002D4D00;
  if (!xmmword_1002D4D00)
  {
    sub_1000ED560();
  }

  if (*(&xmmword_1002D4D00 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4D00 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4CC0);
  sub_1000EE77C(v8, a2, a3, a4);
}

void sub_100108B3C(void *a1, uint64_t a2, uint64_t a3, const PB::Base *a4)
{
  v5 = HIDWORD(a2);
  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *&buf[4] = a4;
    LOWORD(v28) = 1024;
    *(&v28 + 2) = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "trig:#I Query aggregation (0x%x) for trigger 0x%x", buf, 0xEu);
  }

  v8 = a1[14];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      if (a1[13])
      {
        v10 = sub_10006F7F4(buf);
        WISTimestamp = wis::getWISTimestamp(v10);
        v37 |= 0x40u;
        v34 = WISTimestamp;
        pthread_mutex_lock(&stru_1002D4A58);
        v12 = xmmword_1002D4A98;
        if (!xmmword_1002D4A98)
        {
          sub_1000927A0();
        }

        v13 = *(&xmmword_1002D4A98 + 1);
        if (*(&xmmword_1002D4A98 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&stru_1002D4A58);
        sub_1000E24D0(v12, a4, &__str);
        if (v13)
        {
          sub_100008350(v13);
        }

        sub_10010A258(buf);
        std::string::operator=(v31, &__str);
        v15 = v37;
        v37 |= 3u;
        v28 = v20;
        v29 = v24;
        if (v20)
        {
          if (v25 == 1)
          {
            v16 = v15 | 0x83;
            v35 = 1;
          }

          else
          {
            v16 = v15 | 0x13;
            v32 = v21;
          }

          if (v26 == 1)
          {
            v17 = v16 | 0x100;
            v36 = v26;
          }

          else
          {
            v17 = v16 | 0x20;
            v33 = v22;
          }

          v37 = v17 | 0xC;
          v30 = vextq_s8(v23, v23, 8uLL);
        }

        wis::serializeMetric(&v18, buf, a4, v14);
        operator new();
      }

      sub_100008350(v9);
    }
  }
}

void sub_100108E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  pthread_mutex_unlock(&stru_1002D4A58);
  sub_10010A2CC(&a28);
  sub_100008350(v28);
  _Unwind_Resume(a1);
}

void sub_100108F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000081C8(&v5, (a1 + 8));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_10010A798;
  v7[3] = &unk_1002B27B0;
  v4 = v5;
  v7[5] = v5;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7[4] = &stru_1002B25A0;
  sub_100160D80(a3, (v4 + 24), v7);
  if (v8)
  {
    sub_100008350(v8);
  }

  if (v6)
  {
    sub_100008350(v6);
  }
}

void sub_100109018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100008350(a18);
  }

  if (a11)
  {
    sub_100008350(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100109040(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1000081C8(&v4, (a1 + 8));
  operator new();
}

void sub_100109154(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a2 + 16);
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "trig:#I TriggerMap::setConfiguration: parsing %d profiles", buf, 8u);
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(a2 + 8);
    v9 = &v8[v7];
    v52 = v9;
    do
    {
      v10 = *v8;
      v11 = *(*v8 + 132);
      if (v11)
      {
        v16 = *(v10 + 8);
        if ((v11 & 8) != 0)
        {
          v54 = v8;
          v18 = *(v10 + 64);
          v57 = *(v10 + 32);
          v19 = *(v10 + 48);
          if (!v19)
          {
LABEL_55:
            if (a3)
            {
              sub_1001095B0();
            }

            v8 = v54;
            v9 = v52;
            goto LABEL_58;
          }

          v20 = *(v10 + 40);
          v55 = &v20[v19];
          while (2)
          {
            v21 = *v20;
            if (v18 <= *(*v20 + 36))
            {
              v18 = *(*v20 + 36);
            }

            if ((*(v21 + 132) & 1) == 0)
            {
              v22 = *(a1 + 40);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "trig:#E Got metric definition with no id", buf, 2u);
              }

              goto LABEL_54;
            }

            v56 = *(v21 + 8);
            *buf = &v57;
            v23 = sub_10010A854(a1 + 72, &v57);
            *buf = &v56;
            v24 = sub_10010A934((v23 + 5), &v56);
            v25 = v24;
            v27 = *(v24 + 48);
            v26 = *(v24 + 56);
            if (v27 >= v26)
            {
              v29 = *(v24 + 40);
              v30 = v27 - v29;
              v31 = (v27 - v29) >> 2;
              v32 = v31 + 1;
              if ((v31 + 1) >> 62)
              {
                sub_100033FD0();
              }

              v33 = v26 - v29;
              if (v33 >> 1 > v32)
              {
                v32 = v33 >> 1;
              }

              v34 = v33 >= 0x7FFFFFFFFFFFFFFCLL;
              v35 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v34)
              {
                v35 = v32;
              }

              if (v35)
              {
                sub_10000A8C0(v24 + 40, v35);
              }

              v36 = v31;
              v37 = (4 * v31);
              v38 = &v37[-v36];
              *v37 = v16;
              v28 = v37 + 1;
              memcpy(v38, v29, v30);
              v24 = v25[5];
              v25[5] = v38;
              v25[6] = v28;
              v25[7] = 0;
              if (v24)
              {
                operator delete(v24);
              }
            }

            else
            {
              *v27 = v16;
              v28 = v27 + 4;
            }

            v25[6] = v28;
            v39 = *(v21 + 104);
            if (!v39)
            {
LABEL_54:
              if (++v20 == v55)
              {
                goto LABEL_55;
              }

              continue;
            }

            break;
          }

          v40 = *(v21 + 96);
          v41 = 8 * v39;
          while (2)
          {
            v42 = *v40;
            v43 = *(*v40 + 8);
            v44 = *(v43 + 23);
            if (v44 < 0)
            {
              if (v43[1] == 5)
              {
                v43 = *v43;
                goto LABEL_37;
              }
            }

            else
            {
              if (v44 != 5)
              {
                goto LABEL_49;
              }

LABEL_37:
              v45 = *v43;
              v46 = *(v43 + 4);
              if (v45 == 1634036835 && v46 == 114)
              {
                v48 = *(v42 + 16);
                if (!v48)
                {
                  v24 = awd::profile::ConfigurationParameter::default_instance(v24);
                  v48 = *(v24 + 16);
                }

                if ((*(v48 + 72) & 0x80) != 0)
                {
                  v49 = *(v42 + 16);
                  if (!v49)
                  {
                    v24 = awd::profile::ConfigurationParameter::default_instance(v24);
                    v49 = *(v24 + 16);
                  }

                  if (*(v49 + 44) == 1)
                  {
                    *(v25 + 64) = 1;
                    goto LABEL_53;
                  }
                }
              }
            }

LABEL_49:
            v50 = *(a1 + 40);
            v24 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
            if (v24)
            {
              v51 = *(v42 + 8);
              if (*(v51 + 23) < 0)
              {
                v51 = *v51;
              }

              *buf = 136315650;
              *&buf[4] = v51;
              v59 = 1024;
              v60 = v56;
              v61 = 1024;
              v62 = v16;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "trig:#E Unrecognized parameter '%s' for metric 0x%x in profile 0x%x", buf, 0x18u);
            }

LABEL_53:
            ++v40;
            v41 -= 8;
            if (!v41)
            {
              goto LABEL_54;
            }

            continue;
          }
        }

        v17 = *(a1 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v16;
          v13 = v17;
          v14 = "trig:#E Got profile 0x%x with no trigger id";
          v15 = 8;
          goto LABEL_11;
        }
      }

      else
      {
        v12 = *(a1 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = v12;
          v14 = "trig:#E Got profile with no profile id";
          v15 = 2;
LABEL_11:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
        }
      }

LABEL_58:
      ++v8;
    }

    while (v8 != v9);
  }
}

void sub_1001095B0()
{
  pthread_mutex_lock(&stru_1002D4A58);
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  sub_1000DF26C();
}

void sub_1001096B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11)
{
  pthread_mutex_unlock(&stru_1002D4A58);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v16 = *(v13 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      a9 = 67109376;
      a10 = v12;
      LOWORD(a11) = 1024;
      *(&a11 + 2) = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "trig:#E Unable to register trigger 0x%x for component 0x%x", &a9, 0xEu);
    }

    __cxa_end_catch();
    JUMPOUT(0x100109680);
  }

  _Unwind_Resume(a1);
}

void sub_10010977C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10012A4C4(a2);
  awd::profile::DeviceConfiguration::DeviceConfiguration(&v4, v3);
  sub_1000081C8(&v5, (a1 + 8));
  operator new();
}

void sub_100109A74(uint64_t a1, uint64_t a2, int a3)
{
  v10 = a2;
  v11 = a3;
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *&buf[4] = a2;
    v13 = 1024;
    v14 = HIDWORD(a2);
    v15 = 1024;
    LODWORD(v16) = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "trig:#I AWD Component is going to handle Trigger(cid=0x%x, trid=0x%x, sid=%u) it just got.", buf, 0x14u);
  }

  wis::asString();
  if (v9 >= 0)
  {
    v6 = &v8;
  }

  else
  {
    v6 = v8;
  }

  sub_100007ECC(__p, v6);
  sub_100008BF8(__p);
}

void sub_10010A008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, std::__shared_weak_count *a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v40)
  {
    dispatch_release(v40);
  }

  if (a34)
  {
    sub_100008350(a34);
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010A0C0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 40))
      {
        v5 = *(v3 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          sub_100209C4C(a1, v5);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 72);
      if (v9)
      {
        (*(*v9 + 40))(v9, 7, *(a1 + 88), *(a1 + 96));
      }

      sub_100008350(v8);
    }
  }

  if (v4)
  {
    sub_100008350(v4);
  }
}

void sub_10010A190(_Unwind_Exception *a1)
{
  sub_100008350(v2);
  if (v1)
  {
    sub_100008350(v1);
  }

  _Unwind_Resume(a1);
}

void *sub_10010A1B0(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[10];
  result[9] = a2[9];
  result[10] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10010A1FC(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_100008350(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t sub_10010A258(uint64_t result)
{
  if (!*(result + 40))
  {
    operator new();
  }

  return result;
}

void sub_10010A2CC(PB::Base *this)
{
  *this = off_1002AD0C8;
  v4 = *(this + 5);
  v2 = (this + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100070504(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_10010A3AC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10010A480);
  __cxa_rethrow();
}

void sub_10010A3EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10010A440(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010A480(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10010A4BC(uint64_t result, uint64_t a2)
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

void sub_10010A4D8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_10010A4E8(void *a1)
{
  *a1 = off_1002B2760;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_10010A534(void *a1)
{
  *a1 = off_1002B2760;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_10010A5B0@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

void sub_10010A600(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10010A600(a1, *a2);
    sub_10010A600(a1, a2[1]);
    sub_10010A660((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_10010A660(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10010A660(a1, *a2);
    sub_10010A660(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_10010A6C4(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10010A7A8(uint64_t result, uint64_t a2)
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

void sub_10010A7C4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_10010A7D4(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 112);
  *(v2 + 104) = v3;
  *(v2 + 112) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = v1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

uint64_t *sub_10010A854(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_10010A934(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_10010AA10(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v3 = (*v1 + 80);
  sub_10010A600(*v1 + 72, *v3);
  v2[9] = v3;
  v2[11] = 0;
  *v3 = 0;
  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = *(v1 + 24);
    while (*(*v6 + 56) != 7)
    {
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = *(v1 + 24);
  }

  if (v6 == (*(v1 + 24) + 8 * v4))
  {
LABEL_9:
    v7 = v2[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "trig:#I TriggerMap::setConfiguration: no configuration for wirelessinsightsd", buf, 2u);
    }
  }

  else
  {
    sub_100109154(v2, *v6, *(v1 + 8));
  }

  sub_10010AB24(&v10);
  return sub_1000082FC(&v9);
}

void sub_10010AB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10010AB24(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10010AB24(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    awd::profile::DeviceConfiguration::~DeviceConfiguration((v1 + 16));
    operator delete();
  }

  return result;
}

void sub_10010AB74(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = v1[2];
  sub_1001095B0();
}

void *sub_10010AC80(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[8];
    if (v2)
    {
      v1[9] = v2;
      operator delete(v2);
    }

    v3 = v1[5];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[5];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v1[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete();
  }

  return result;
}

void *sub_10010ACFC(uint64_t a1)
{
  v15 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          sub_100209CE0(a1, v6);
        }

        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        v9 = (v3 + (v8 >> 1));
        if (v8)
        {
          v7 = *(*v9 + v7);
        }

        v7(v9, *(a1 + 48), *(a1 + 56), *(a1 + 60), a1 + 64, a1 + 40);
        if (*(a1 + 88) == 1)
        {
          v10 = *(v3 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = *(a1 + 60);
            *buf = 67109120;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "trig:#I  -- trigger to reset aggregation: 0x%x", buf, 8u);
          }

          pthread_mutex_lock(&stru_1002D4A58);
          v12 = xmmword_1002D4A98;
          if (!xmmword_1002D4A98)
          {
            sub_1000927A0();
          }

          if (*(&xmmword_1002D4A98 + 1))
          {
            atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&stru_1002D4A58);
          v13 = *(a1 + 60);
          sub_1000E26F0(v12);
        }
      }

      sub_100008350(v5);
    }
  }

  return sub_10010AC80(&v15);
}

void sub_10010AEE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pthread_mutex_unlock(&stru_1002D4A58);
  sub_100008350(v2);
  sub_10010AC80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010AF48()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_10010AF84()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_10010AFC0()
{
  if ((byte_1002D4D10 & 1) == 0)
  {
    byte_1002D4D10 = 1;
    return __cxa_atexit(sub_10004F8FC, &stru_1002D4CC0, &_mh_execute_header);
  }

  return result;
}

void sub_10010AFFC(xpc_object_t *a1, xpc_object_t *a2)
{
  if (xpc_get_type(*a1) == &_xpc_type_connection && xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    v3 = xpc_null_create();
    if (xpc_get_type(*a2) == &_xpc_type_dictionary)
    {
      reply = xpc_dictionary_create_reply(*a2);
      if (reply || (reply = xpc_null_create()) != 0)
      {
        if (xpc_get_type(reply) == &_xpc_type_dictionary)
        {
          xpc_retain(reply);
          v4 = reply;
        }

        else
        {
          v4 = xpc_null_create();
        }
      }

      else
      {
        v4 = xpc_null_create();
        reply = 0;
      }

      v6 = xpc_null_create();
      xpc_release(v3);
      xpc_release(v6);
      xpc_release(reply);
    }

    else
    {
      v4 = v3;
    }

    __p[0] = 0;
    __p[1] = 0;
    if (xpc_get_type(v4) == &_xpc_type_dictionary)
    {
      operator new();
    }

    xpc_release(v4);
  }
}

void sub_10010B680(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    sub_100008350(v3);
  }

  if (v2)
  {
    sub_100008350(v2);
  }

  if (v1)
  {
    sub_100008350(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010B78C(xpc_object_t *a1, xpc_object_t *a2)
{
  if (xpc_get_type(*a1) == &_xpc_type_connection && xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    v3 = xpc_null_create();
    if (xpc_get_type(*a2) == &_xpc_type_dictionary)
    {
      reply = xpc_dictionary_create_reply(*a2);
      if (reply || (reply = xpc_null_create()) != 0)
      {
        if (xpc_get_type(reply) == &_xpc_type_dictionary)
        {
          xpc_retain(reply);
          v4 = reply;
        }

        else
        {
          v4 = xpc_null_create();
        }
      }

      else
      {
        v4 = xpc_null_create();
        reply = 0;
      }

      v6 = xpc_null_create();
      xpc_release(v3);
      xpc_release(v6);
      xpc_release(reply);
    }

    else
    {
      v4 = v3;
    }

    __p[0] = 0;
    __p[1] = 0;
    if (xpc_get_type(v4) == &_xpc_type_dictionary)
    {
      operator new();
    }

    xpc_release(v4);
  }
}

void sub_10010BA50(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&stru_1002D4A58);
  if (v1)
  {
    sub_100008350(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10010BAEC(xpc_object_t *a1, xpc_object_t *a2)
{
  if (xpc_get_type(*a1) != &_xpc_type_connection || xpc_get_type(*a2) != &_xpc_type_dictionary)
  {
    return;
  }

  reply = xpc_dictionary_create_reply(*a2);
  if (reply)
  {
    v5 = reply;
    v47 = reply;
  }

  else
  {
    v5 = xpc_null_create();
    v47 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    v6 = xpc_null_create();
LABEL_10:
    v47 = v6;
    goto LABEL_11;
  }

  xpc_retain(v5);
LABEL_11:
  xpc_release(v5);
  if (xpc_get_type(v47) == &_xpc_type_dictionary)
  {
    v7 = xpc_array_create(0, 0);
    if (v7 || (v7 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v7) == &_xpc_type_array)
      {
        xpc_retain(v7);
        v8 = v7;
      }

      else
      {
        v8 = xpc_null_create();
      }
    }

    else
    {
      v8 = xpc_null_create();
      v7 = 0;
    }

    xpc_release(v7);
    sub_1000DD9F0(&v44);
    v9 = v44;
    if (v44 != &v45)
    {
      do
      {
        sub_10005DC84(&v43.__pn_, (v9 + 5));
        std::__fs::filesystem::__status(&v43, 0);
        if (LOBYTE(__p[0]))
        {
          if (LOBYTE(__p[0]) != 255)
          {
            std::__fs::filesystem::__status(&v43, 0);
            if (LOBYTE(__p[0]) == 2)
            {
              std::__fs::filesystem::directory_iterator::directory_iterator(&v42, &v43, 0, none);
              ptr = v42.__imp_.__ptr_;
              cntrl = v42.__imp_.__cntrl_;
              if (v42.__imp_.__cntrl_)
              {
                atomic_fetch_add_explicit(&v42.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
                v12 = v42.__imp_.__cntrl_;
                v41.__imp_.__ptr_ = ptr;
                v41.__imp_.__cntrl_ = cntrl;
                if (v42.__imp_.__cntrl_)
                {
                  atomic_fetch_add_explicit(&v42.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_100008350(v12);
                }
              }

              else
              {
                v41.__imp_.__ptr_ = v42.__imp_.__ptr_;
                v41.__imp_.__cntrl_ = 0;
              }

              while (v41.__imp_.__ptr_)
              {
                v13 = std::__fs::filesystem::directory_iterator::__dereference(&v41);
                std::__fs::filesystem::__status(&v13->__p_, 0);
                if (LOBYTE(__p[0]) == 1)
                {
                  if (SHIBYTE(v13->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_10000FFF8(__p, v13->__p_.__pn_.__r_.__value_.__l.__data_, v13->__p_.__pn_.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    *__p = *&v13->__p_.__pn_.__r_.__value_.__l.__data_;
                    v39 = v13->__p_.__pn_.__r_.__value_.__r.__words[2];
                  }

                  sub_10012A1BC(__p, &v40);
                  if (SHIBYTE(v39) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v14 = v40;
                  if (v40)
                  {
                    sub_10005BC80(&v13->__p_, v35);
                    if (SHIBYTE(v36) < 0)
                    {
                      sub_10000FFF8(__p, v35[0], v35[1]);
                    }

                    else
                    {
                      *__p = *v35;
                      v39 = v36;
                    }

                    sub_10010C474(v14, __p, &object);
                    if (SHIBYTE(v39) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (SHIBYTE(v36) < 0)
                    {
                      operator delete(v35[0]);
                    }

                    if (xpc_get_type(object) == &_xpc_type_dictionary)
                    {
                      xpc_array_append_value(v8, object);
                    }

                    xpc_release(object);
                    v15 = v40;
                    v40 = 0;
                    if (v15)
                    {
                      (*(*v15 + 16))(v15);
                    }
                  }
                }

                std::__fs::filesystem::directory_iterator::__increment(&v41, 0);
              }

              if (v41.__imp_.__cntrl_)
              {
                sub_100008350(v41.__imp_.__cntrl_);
              }

              if (v42.__imp_.__cntrl_)
              {
                sub_100008350(v42.__imp_.__cntrl_);
              }
            }
          }
        }

        if (SHIBYTE(v43.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__pn_.__r_.__value_.__l.__data_);
        }

        v16 = v9[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v9[2];
            v18 = *v17 == v9;
            v9 = v17;
          }

          while (!v18);
        }

        v9 = v17;
      }

      while (v17 != &v45);
    }

    sub_100067D18(&v44, v45);
    v33 = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v33 = xpc_null_create();
    }

    v44 = &v47;
    v45 = "configs";
    sub_1000947D8(&v44, &v33, &v34);
    xpc_release(v34);
    v34 = 0;
    xpc_release(v33);
    v33 = 0;
    pthread_mutex_lock(&stru_1002D4F28);
    v19 = xmmword_1002D4F68;
    if (!xmmword_1002D4F68)
    {
      sub_1000662C0();
    }

    v20 = *(&xmmword_1002D4F68 + 1);
    if (*(&xmmword_1002D4F68 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4F68 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4F28);
    sub_100066828(v19, __p);
    if (v20)
    {
      sub_100008350(v20);
    }

    if (__p[0])
    {
      v46 = 7;
      strcpy(&v44, "default");
      sub_10010C474(__p[0], &v44, &v31);
      v43.__pn_.__r_.__value_.__r.__words[0] = &v47;
      v43.__pn_.__r_.__value_.__l.__size_ = "default";
      sub_1000CB5E8(&v43, &v31, &v32);
      xpc_release(v32);
      v32 = 0;
      xpc_release(v31);
      v31 = 0;
      if (v46 < 0)
      {
        operator delete(v44);
      }
    }

    v21 = xpc_array_create(0, 0);
    if (v21 || (v21 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v21) == &_xpc_type_array)
      {
        xpc_retain(v21);
        v22 = v21;
      }

      else
      {
        v22 = xpc_null_create();
      }
    }

    else
    {
      v22 = xpc_null_create();
      v21 = 0;
    }

    xpc_release(v21);
    pthread_mutex_lock(&stru_1002D4F28);
    v23 = xmmword_1002D4F68;
    if (!xmmword_1002D4F68)
    {
      sub_1000662C0();
    }

    v24 = *(&xmmword_1002D4F68 + 1);
    if (*(&xmmword_1002D4F68 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4F68 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4F28);
    sub_100067070(v23, &v44);
    if (v24)
    {
      sub_100008350(v24);
    }

    v25 = v44;
    if (v44 != &v45)
    {
      do
      {
        sub_10010C474(v25[7], (v25 + 4), &v43);
        xpc_array_append_value(v22, v43.__pn_.__r_.__value_.__l.__data_);
        xpc_release(v43.__pn_.__r_.__value_.__l.__data_);
        v26 = v25[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v25[2];
            v18 = *v27 == v25;
            v25 = v27;
          }

          while (!v18);
        }

        v25 = v27;
      }

      while (v27 != &v45);
    }

    sub_10010D48C(&v44, v45);
    v29 = v22;
    if (v22)
    {
      xpc_retain(v22);
    }

    else
    {
      v29 = xpc_null_create();
    }

    v44 = &v47;
    v45 = "fixed";
    sub_1000947D8(&v44, &v29, &v30);
    xpc_release(v30);
    v30 = 0;
    xpc_release(v29);
    v29 = 0;
    xpc_connection_send_message(*a1, v47);
    xpc_release(v22);
    v28 = __p[0];
    __p[0] = 0;
    if (v28)
    {
      (*(*v28 + 16))(v28);
    }

    xpc_release(v8);
  }

  xpc_release(v47);
}

void sub_10010C210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t object, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  pthread_mutex_unlock(&stru_1002D4F28);
  xpc_release(v39);
  if (a22)
  {
    (*(*a22 + 16))(a22);
  }

  xpc_release(v38);
  xpc_release(*(v40 - 88));
  _Unwind_Resume(a1);
}

void sub_10010C474(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  *a3 = v8;
LABEL_9:
  xpc_release(v7);
  v9 = sub_100082628(a1);
  object = xpc_int64_create(v9);
  if (!object)
  {
    object = xpc_null_create();
  }

  v16 = a3;
  v17 = "dcid";
  sub_10000F50C(&v16, &object, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(object);
  object = 0;
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v14 = xpc_string_create(v10);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v16 = a3;
  v17 = "title";
  sub_10000F50C(&v16, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = xpc_string_create(v11);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v16 = a3;
  v17 = "handle";
  sub_10000F50C(&v16, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
}

void sub_10010C670(xpc_object_t *a1, xpc_object_t *a2)
{
  if (xpc_get_type(*a1) == &_xpc_type_connection && xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    v3 = xpc_null_create();
    if (xpc_get_type(*a2) == &_xpc_type_dictionary)
    {
      reply = xpc_dictionary_create_reply(*a2);
      if (reply || (reply = xpc_null_create()) != 0)
      {
        if (xpc_get_type(reply) == &_xpc_type_dictionary)
        {
          xpc_retain(reply);
          v4 = reply;
        }

        else
        {
          v4 = xpc_null_create();
        }
      }

      else
      {
        v4 = xpc_null_create();
        reply = 0;
      }

      v6 = xpc_null_create();
      xpc_release(v3);
      xpc_release(v6);
      xpc_release(reply);
    }

    else
    {
      v4 = v3;
    }

    v54 = 0uLL;
    if (xpc_get_type(v4) == &_xpc_type_dictionary)
    {
      operator new();
    }

    v7 = v54;
    xpc_release(v4);
    if (!v54 || xpc_get_type(*v54) != &_xpc_type_dictionary)
    {
      goto LABEL_124;
    }

    *&v54 = a2;
    *(&v54 + 1) = "InvestigationId";
    sub_100007DA4(&v54, &object);
    v9 = xpc::dyn_cast_or_default(&object, 0, v8);
    xpc_release(object.__r_.__value_.__l.__data_);
    object.__r_.__value_.__r.__words[0] = a2;
    object.__r_.__value_.__l.__size_ = "config";
    sub_100007DA4(&object, &__p);
    v54 = 0uLL;
    v55 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v55) < 0)
    {
      operator delete(v54);
    }

    xpc_release(__p.__r_.__value_.__l.__data_);
    if (v50 < 0)
    {
      if (v49 != 7 || (*v48 == 1634100580 ? (v11 = *(v48 + 3) == 1953264993) : (v11 = 0), !v11))
      {
        if (v49 == 12)
        {
          if (*v48 == 0x2D6469692D746573 && *(v48 + 2) == 2037149295)
          {
            goto LABEL_38;
          }

LABEL_63:
          pthread_mutex_lock(&stru_1002D4F28);
          v24 = xmmword_1002D4F68;
          if (!xmmword_1002D4F68)
          {
            sub_1000662C0();
          }

          v25 = *(&xmmword_1002D4F68 + 1);
          if (*(&xmmword_1002D4F68 + 1))
          {
            atomic_fetch_add_explicit((*(&xmmword_1002D4F68 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&stru_1002D4F28);
          sub_100067104(v24, &v48, &v56);
          if (v25)
          {
            sub_100008350(v25);
          }

          if (v56)
          {
            v47 = v56;
          }

          else
          {
            sub_1000DD9F0(&v54);
            v26 = v54;
            if (v54 == (&v54 + 8))
            {
LABEL_89:
              sub_100067D18(&v54, *(&v54 + 1));
              v47 = 0;
            }

            else
            {
              while (1)
              {
                sub_10005DC84(&object, (v26 + 40));
                v27 = sub_10005DCEC(&object, &v48);
                wis::getWISTimestamp(v27);
                if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_10000FFF8(&__p, object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
                }

                else
                {
                  __p = object;
                }

                sub_10012A1BC(&__p, &v52);
                v28 = v52;
                v52 = 0;
                v29 = v56;
                v56 = v28;
                if (v29)
                {
                  (*(*v29 + 16))(v29);
                  v30 = v52;
                  v52 = 0;
                  if (v30)
                  {
                    (*(*v30 + 16))(v30);
                  }
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v31 = v56;
                if (v56)
                {
                  break;
                }

                if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(object.__r_.__value_.__l.__data_);
                }

                v32 = *(v26 + 1);
                if (v32)
                {
                  do
                  {
                    v33 = v32;
                    v32 = *v32;
                  }

                  while (v32);
                }

                else
                {
                  do
                  {
                    v33 = *(v26 + 2);
                    v10 = *v33 == v26;
                    v26 = v33;
                  }

                  while (!v10);
                }

                v26 = v33;
                if (v33 == (&v54 + 8))
                {
                  goto LABEL_89;
                }
              }

              v56 = 0;
              v47 = v31;
              if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(object.__r_.__value_.__l.__data_);
              }

              sub_100067D18(&v54, *(&v54 + 1));
            }

            v34 = v56;
            v56 = 0;
            if (v34)
            {
              (*(*v34 + 16))(v34);
            }
          }

          v18 = v47;
          if (v47)
          {
            sub_10012A4BC(v47, v9);
            sub_10012A484(v47, 4);
LABEL_102:
            pthread_mutex_lock(&stru_1002D4F28);
            v35 = xmmword_1002D4F68;
            if (!xmmword_1002D4F68)
            {
              sub_1000662C0();
            }

            v36 = *(&xmmword_1002D4F68 + 1);
            if (*(&xmmword_1002D4F68 + 1))
            {
              atomic_fetch_add_explicit((*(&xmmword_1002D4F68 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&stru_1002D4F28);
            sub_1000672F8(v35, v18);
            if (v36)
            {
              sub_100008350(v36);
            }

            pthread_mutex_lock(&stru_1002D4B08);
            v37 = qword_1002D4B48;
            v38 = qword_1002D4B50;
            if (qword_1002D4B50)
            {
              atomic_fetch_add_explicit((qword_1002D4B50 + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&stru_1002D4B08);
            if (v37)
            {
              sub_1000FCBEC();
            }

            v39 = sub_100082628(v18);
            v45 = xpc_int64_create(v39);
            if (!v45)
            {
              v45 = xpc_null_create();
            }

            *&v54 = v7;
            *(&v54 + 1) = "dcid";
            sub_10000F50C(&v54, &v45, &v46);
            xpc_release(v46);
            v46 = 0;
            xpc_release(v45);
            v45 = 0;
            v40 = sub_100008780(v18);
            v43 = xpc_int64_create(v40);
            if (!v43)
            {
              v43 = xpc_null_create();
            }

            *&v54 = v7;
            *(&v54 + 1) = "InvestigationId";
            sub_10000F50C(&v54, &v43, &v44);
            xpc_release(v44);
            v44 = 0;
            xpc_release(v43);
            v43 = 0;
            if (v38)
            {
              sub_100008350(v38);
            }

            (*(*v18 + 16))(v18);
LABEL_122:
            if (v50 < 0)
            {
              operator delete(v48);
            }

LABEL_124:
            if (*(&v7 + 1))
            {
              sub_100008350(*(&v7 + 1));
            }

            return;
          }

LABEL_119:
          v41 = xpc_string_create("No configuration found");
          if (!v41)
          {
            v41 = xpc_null_create();
          }

          *&v54 = v7;
          *(&v54 + 1) = "error";
          sub_10000F50C(&v54, &v41, &v42);
          xpc_release(v42);
          v42 = 0;
          xpc_release(v41);
          v41 = 0;
          goto LABEL_122;
        }

        if (v49 != 5)
        {
          goto LABEL_63;
        }

        v20 = v48;
LABEL_59:
        v21 = *v20;
        v22 = v20[4];
        if (v21 == 1851878498 && v22 == 107)
        {
          sub_10012A004();
        }

        goto LABEL_63;
      }
    }

    else
    {
      if (v50 != 7)
      {
        if (v50 == 12)
        {
          v10 = v48 == 0x2D6469692D746573 && v49 == 2037149295;
          if (!v10)
          {
            goto LABEL_63;
          }

LABEL_38:
          pthread_mutex_lock(&stru_1002D4B08);
          v14 = qword_1002D4B48;
          v13 = qword_1002D4B50;
          if (qword_1002D4B50)
          {
            atomic_fetch_add_explicit((qword_1002D4B50 + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&stru_1002D4B08);
          if (v14)
          {
            v15 = sub_1000FD730(v14);
            pthread_mutex_lock(&stru_1002D4F28);
            v16 = xmmword_1002D4F68;
            if (!xmmword_1002D4F68)
            {
              sub_1000662C0();
            }

            v17 = *(&xmmword_1002D4F68 + 1);
            if (*(&xmmword_1002D4F68 + 1))
            {
              atomic_fetch_add_explicit((*(&xmmword_1002D4F68 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&stru_1002D4F28);
            sub_100067610(v16, v15, &object);
            v18 = object.__r_.__value_.__r.__words[0];
            object.__r_.__value_.__r.__words[0] = 0;
            if (v17)
            {
              sub_100008350(v17);
            }

            if (v18)
            {
              sub_10012A484(v18, 4);
              sub_10012A4BC(v18, v9);
            }
          }

          else
          {
            v18 = 0;
          }

          if (v13)
          {
            sub_100008350(v13);
          }

          if (v18)
          {
            goto LABEL_102;
          }

          goto LABEL_119;
        }

        if (v50 != 5)
        {
          goto LABEL_63;
        }

        v20 = &v48;
        goto LABEL_59;
      }

      if (v48 != 1634100580 || *(&v48 + 3) != 1953264993)
      {
        goto LABEL_63;
      }
    }

    sub_10012A0AC();
  }
}
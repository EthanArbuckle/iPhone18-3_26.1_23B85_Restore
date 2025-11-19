uint64_t ID3ParserHandle::GetV1FrameInfoByID(int a1, uint64_t a2)
{
  v3 = 0x1E54495432;
  v4 = 3;
  result = 1852794431;
  if (a1 > 1129270604)
  {
    if (a1 > 1414091825)
    {
      if (a1 <= 1414677322)
      {
        if (a1 == 1414091826)
        {
LABEL_29:
          result = 0;
          *a2 = v3;
          *(a2 + 8) = v4;
          return result;
        }

        if (a1 != 1414546737)
        {
          return result;
        }

LABEL_11:
        v3 = 0x1E54504531;
        v4 = 33;
        goto LABEL_29;
      }

      if (a1 == 1414677323)
      {
        goto LABEL_26;
      }

      v7 = 1415136594;
LABEL_24:
      if (a1 != v7)
      {
        return result;
      }

      v3 = 0x454594552;
      v4 = 93;
      goto LABEL_29;
    }

    if (a1 != 1129270605)
    {
      if (a1 != 1413565506)
      {
        v6 = 1413697358;
        goto LABEL_18;
      }

LABEL_28:
      v3 = 0x1E54414C42;
      v4 = 63;
      goto LABEL_29;
    }

LABEL_27:
    v3 = 0x1E434F4D4DLL;
    v4 = 97;
    goto LABEL_29;
  }

  if (a1 <= 5525552)
  {
    if (a1 != 4411213)
    {
      if (a1 != 5521740)
      {
        v6 = 5522255;
LABEL_18:
        if (a1 != v6)
        {
          return result;
        }

        v3 = 0x154434F4ELL;
        v4 = 127;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (a1 > 5526577)
  {
    if (a1 == 5526578)
    {
      goto LABEL_29;
    }

    v7 = 5527877;
    goto LABEL_24;
  }

  if (a1 == 5525553)
  {
    goto LABEL_11;
  }

  if (a1 == 5526091)
  {
LABEL_26:
    v3 = 0x25452434BLL;
    v4 = 125;
    goto LABEL_29;
  }

  return result;
}

uint64_t ID3TagBase::CopyFrameData(ID3TagBase *this, char *__src, unsigned int a3, int a4, const void **a5)
{
  if (a5)
  {
    *a5 = 0;
    v7 = *(this + 14);
    if (v7 < a3)
    {
      v8 = __src;
      v9 = this + 24;
      do
      {
        v9 = *(v9 + 1);
        if (v9 == this + 24)
        {
          return 0xFFFFFFFFLL;
        }
      }

      while (*(v9 + 6) != a4);
      v10 = *(v9 + 5);
      if (v10 > a3)
      {
        return 0xFFFFFFFFLL;
      }

      v12 = *(v9 + 4);
      __p = 0;
      __dst = 0;
      v43 = 0;
      v13 = *(this + 16);
      if (v13 == 4)
      {
        v15 = __src[9];
        if ((v15 & 0xC) == 0 && (v15 & 3) != 1)
        {
          v14 = (v15 >> 1) & 1;
          goto LABEL_13;
        }
      }

      else if (v13 != 3 || __src[9] < 0x40u)
      {
        v14 = 0;
LABEL_13:
        if ((*(this + 68) & 1) == 0 && ((v14 | *(this + 69)) & 1) == 0)
        {
          result = 0;
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          if (__src[9])
          {
            std::vector<unsigned char>::reserve(&__p, v10 - 4);
            std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, __p, v8, &v8[*(this + 14)], *(this + 14));
            std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, __dst, &v8[*(this + 14) + 4], &v8[*(v9 + 5)], *(v9 + 5) - (*(this + 14) + 4));
LABEL_23:
            result = __p;
            v16 = __dst - __p - v7;
            if (__dst - __p != v7)
            {
              v17 = __p + v7;
              v18 = &v17[v16];
              v19 = v17;
              v20 = v17;
              v21 = v17;
              do
              {
                v22 = *v20++;
                *v21++ = v22;
                if (v22 == 255 && v20 < v18)
                {
                  v20 = v19 + 2;
                  v24 = v19[1];
                  if (v24)
                  {
                    v21 = v17 + 2;
                    v17[1] = v24;
                  }

                  else
                  {
                    LODWORD(v16) = v16 - 1;
                  }
                }

                v17 = v21;
                v19 = v20;
              }

              while (v20 < v18);
              result = __p;
            }

            LODWORD(v10) = v16 + v7;
            v13 = *(this + 16);
            v8 = result;
LABEL_36:
            if (v13 == 2)
            {
              v26 = v12 & 0xFFFF0000;
              if ((v12 & 0xFFFF0000) == 0x540000)
              {
                v25 = 5527640;
LABEL_41:
                if (v25 != v12)
                {
                  TextFrameString = ID3TagBase::CreateTextFrameString(this, v8, v10);
                  goto LABEL_75;
                }

                if (v13 == 2)
                {
                  v27 = 5724248;
                }

                else
                {
                  v27 = 1465407576;
                }

                v28 = v27 == v12;
                v29 = v27 == v12;
                if (!v28 && v13 == 2)
                {
                  v26 = v12 & 0xFFFF0000;
                  goto LABEL_72;
                }

LABEL_53:
                v30 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v13 == 2)), 0x1FuLL)), xmmword_18F901790, xmmword_18F901780);
                v31 = vdupq_n_s32(v12);
                if (v13 == 2)
                {
                  v32 = 5590100;
                }

                else
                {
                  v32 = 1431522388;
                }

                v33 = vmaxv_u16(vmovn_s32(vceqq_s32(v30, v31)));
                if (v13 == 2)
                {
                  v34 = 4670799;
                }

                else
                {
                  v34 = 1195724610;
                }

                if ((v33 & 1) != 0 || v32 == v12 || v34 == v12 || v12 == 1347570006)
                {
                  if (v13 == 2)
                  {
                    v36 = 4411213;
                  }

                  else
                  {
                    v36 = 1129270605;
                  }

                  if (v36 == v12 || v32 == v12)
                  {
                    TextFrameString = ID3TagBase::CreateExtendedTextDictionary(this, v8, v10);
                  }

                  else if (v12 == 1347570006)
                  {
                    TextFrameString = ID3TagBase::CreatePRIVFrameDictionary(this, v8, v10);
                  }

                  else
                  {
                    if (v13 == 2)
                    {
                      v39 = 5261635;
                    }

                    else
                    {
                      v39 = 1095780675;
                    }

                    if (v39 == v12)
                    {
                      TextFrameString = ID3TagBase::CreatePictureFrameDictionary(this, v8, v10);
                    }

                    else if (v29)
                    {
                      TextFrameString = ID3TagBase::CreateWXXXFrameDictionary(this, v8, v10);
                    }

                    else
                    {
                      if (v13 == 2)
                      {
                        v40 = 5527640;
                      }

                      else
                      {
                        v40 = 1415075928;
                      }

                      if (v40 == v12)
                      {
                        TextFrameString = ID3TagBase::CreateTXXXFrameDictionary(this, v8, v10);
                      }

                      else
                      {
                        if (v34 != v12)
                        {
LABEL_76:
                          if (result)
                          {
                            operator delete(result);
                            return 0;
                          }

                          return result;
                        }

                        TextFrameString = ID3TagBase::CreateGEOBFrameDictionary(this, v8, v10);
                      }
                    }
                  }
                }

                else
                {
                  TextFrameString = CFDataCreate(*MEMORY[0x1E695E480], &v8[*(this + 14)], (v10 - *(this + 14)));
                }

LABEL_75:
                *a5 = TextFrameString;
                result = __p;
                goto LABEL_76;
              }

              if (v12 != 5724248)
              {
LABEL_72:
                if (v26 == 5701632)
                {
                  goto LABEL_73;
                }

LABEL_50:
                v29 = 0;
                goto LABEL_53;
              }
            }

            else
            {
              if ((v12 & 0xFF000000) == 0x54000000)
              {
                v25 = 1415075928;
                goto LABEL_41;
              }

              if (v12 != 1465407576)
              {
                if ((v12 & 0xFF000000) == 0x57000000)
                {
LABEL_73:
                  v37 = *(this + 14);
                  v38 = strnlen(&v8[v37], (v10 - v37));
                  TextFrameString = CFURLCreateWithBytes(*MEMORY[0x1E695E480], &v8[v37], v38, 0x201u, 0);
                  goto LABEL_75;
                }

                goto LABEL_50;
              }
            }

            v29 = 1;
            goto LABEL_53;
          }
        }

        else
        {
          v7 = 0;
        }

        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, __src, &__src[v10], v10);
        goto LABEL_23;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_18F6C99C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef ID3ParserHandle::CopyV1String(ID3ParserHandle *this, int a2)
{
  v3 = 0;
  bytes = 0;
  v16 = 0;
  if (a2 <= 92)
  {
    switch(a2)
    {
      case 3:
        if ((*(this + 3))(*(this + 4), 0, 3, 30, &bytes, &v16))
        {
          return 0;
        }

        if (!*bytes)
        {
          goto LABEL_42;
        }

        v9 = 0;
        v10 = 0;
        do
        {
          if (bytes[v9] == 32)
          {
            ++v10;
          }

          else
          {
            if (!bytes[v9])
            {
              break;
            }

            v10 = 0;
          }

          ++v9;
        }

        while (v9 != 30);
        if (v9 != v10)
        {
          v3 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, (v9 - v10), 0x201u, 0);
        }

        else
        {
LABEL_42:
          v3 = 0;
        }

        (*(this + 3))(*(this + 4), 1, 3, 30, &bytes, &v16);
        break;
      case 33:
        if ((*(this + 3))(*(this + 4), 0, 33, 30, &bytes, &v16))
        {
          return 0;
        }

        if (!*bytes)
        {
          goto LABEL_66;
        }

        v13 = 0;
        v14 = 0;
        do
        {
          if (bytes[v13] == 32)
          {
            ++v14;
          }

          else
          {
            if (!bytes[v13])
            {
              break;
            }

            v14 = 0;
          }

          ++v13;
        }

        while (v13 != 30);
        if (v13 != v14)
        {
          v3 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, (v13 - v14), 0x201u, 0);
        }

        else
        {
LABEL_66:
          v3 = 0;
        }

        (*(this + 3))(*(this + 4), 1, 33, 30, &bytes, &v16);
        break;
      case 63:
        if ((*(this + 3))(*(this + 4), 0, 63, 30, &bytes, &v16))
        {
          return 0;
        }

        if (!*bytes)
        {
          goto LABEL_27;
        }

        v6 = 0;
        v7 = 0;
        do
        {
          if (bytes[v6] == 32)
          {
            ++v7;
          }

          else
          {
            if (!bytes[v6])
            {
              break;
            }

            v7 = 0;
          }

          ++v6;
        }

        while (v6 != 30);
        if (v6 != v7)
        {
          v3 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, (v6 - v7), 0x201u, 0);
        }

        else
        {
LABEL_27:
          v3 = 0;
        }

        (*(this + 3))(*(this + 4), 1, 63, 30, &bytes, &v16);
        break;
      default:
        return v3;
    }
  }

  else
  {
    if (a2 > 124)
    {
      if (a2 == 125)
      {
        if (!(*(this + 3))(*(this + 4), 0, 125, 2, &bytes, &v16))
        {
          if (*bytes || !bytes[1])
          {
            v3 = 0;
          }

          else
          {
            v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", bytes[1]);
          }

          (*(this + 3))(*(this + 4), 1, 125, 2, &bytes, &v16);
          return v3;
        }
      }

      else
      {
        if (a2 != 127)
        {
          return v3;
        }

        if (!(*(this + 3))(*(this + 4), 0, 127, 1, &bytes, &v16))
        {
          v8 = *bytes;
          if (v8 > 0x93)
          {
            v3 = 0;
          }

          else
          {
            v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], kGenreTable[v8], 0x201u);
          }

          (*(this + 3))(*(this + 4), 1, 127, 1, &bytes, &v16);
          return v3;
        }
      }

      return 0;
    }

    if (a2 != 93)
    {
      if (a2 != 97)
      {
        return v3;
      }

      if (!(*(this + 3))(*(this + 4), 0, 97, 30, &bytes, &v16))
      {
        if (!*bytes)
        {
          goto LABEL_14;
        }

        v4 = 0;
        v5 = 0;
        do
        {
          if (bytes[v4] == 32)
          {
            ++v5;
          }

          else
          {
            if (!bytes[v4])
            {
              break;
            }

            v5 = 0;
          }

          ++v4;
        }

        while (v4 != 30);
        if (v4 != v5)
        {
          v3 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, (v4 - v5), 0x201u, 0);
        }

        else
        {
LABEL_14:
          v3 = 0;
        }

        (*(this + 3))(*(this + 4), 1, 97, 30, &bytes, &v16);
        return v3;
      }

      return 0;
    }

    if ((*(this + 3))(*(this + 4), 0, 93, 4, &bytes, &v16))
    {
      return 0;
    }

    if (!*bytes)
    {
      goto LABEL_52;
    }

    v11 = 0;
    v12 = 0;
    do
    {
      if (bytes[v11] == 32)
      {
        ++v12;
      }

      else
      {
        if (!bytes[v11])
        {
          break;
        }

        v12 = 0;
      }

      ++v11;
    }

    while (v11 != 4);
    if (v11 != v12)
    {
      v3 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, (v11 - v12), 0x201u, 0);
    }

    else
    {
LABEL_52:
      v3 = 0;
    }

    (*(this + 3))(*(this + 4), 1, 93, 4, &bytes, &v16);
  }

  return v3;
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  if (__len < 1)
  {
    return;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v31 = (__dst - v11);
    memcpy(v13, __src, __len);
    v32 = &v13[__len];
    v33 = v10 - __dst;
    memcpy(v32, __dst, v10 - __dst);
    *(a1 + 8) = __dst;
    v34 = &v13[v11 - __dst];
    memcpy(v34, v11, v31);
    *a1 = v34;
    *(a1 + 8) = &v32[v33];
    *(a1 + 16) = 0;
    if (v11)
    {

      operator delete(v11);
    }

    return;
  }

  v16 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v24 = __dst;
    v25 = __src;
    v26 = __len;
    goto LABEL_27;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = &v10[v18];
  *(a1 + 8) = &v10[v18];
  if (v16 >= 1)
  {
    v20 = &__dst[__len];
    v21 = &v10[v18];
    if (&v19[-__len] < v10)
    {
      v22 = __dst - &__src[__len];
      v23 = __dst - __src;
      do
      {
        a4[v23++] = a4[v22++];
      }

      while (&a4[v22] < v10);
      v21 = &a4[v23];
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&__dst[__len], __dst, v19 - v20);
    }

    v24 = __dst;
    v25 = __src;
    v26 = v10 - __dst;
LABEL_27:

    memmove(v24, v25, v26);
  }
}

CFStringRef ID3TagBase::CreateTextFrameString(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v5 = (*(this + 14) + 1);
  v6 = (a3 - v5);
  if (a3 < v5)
  {
    return 0;
  }

  EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
  v9 = &a2[v5];
  v10 = ID3TagBase::StringSizeInBytes(v9, v6, EncodingFromFrame);
  if (v10)
  {
    v11 = a2 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || a3 < 4)
  {
    if (!a2)
    {
      return 0;
    }

LABEL_28:
    v21 = *MEMORY[0x1E695E480];
    v22 = v10;
    if ((EncodingFromFrame - 1) > 2u)
    {
      v23 = 513;
    }

    else
    {
      v23 = dword_18F9026A0[(EncodingFromFrame - 1)];
    }

    if (v10 >= 2 && (EncodingFromFrame - 1) <= 1)
    {
      v24 = *v9;
      if (v24 == 254)
      {
        if (v9[1] == 255)
        {
LABEL_36:
          v25 = 1;
LABEL_39:
          v26 = *MEMORY[0x1E695E480];

          return CFStringCreateWithBytes(v26, &a2[v5], v22, v23, v25);
        }
      }

      else if (v24 == 255 && v9[1] == 254)
      {
        goto LABEL_36;
      }
    }

    v25 = 0;
    goto LABEL_39;
  }

  v14 = bswap32(*a2);
  if (*(this + 16) == 2)
  {
    v14 >>= 8;
    v15 = 5522255;
  }

  else
  {
    v15 = 1413697358;
  }

  if (v15 != v14 || *v9 != 40)
  {
    goto LABEL_28;
  }

  if (v10 == 1)
  {
    return 0;
  }

  v16 = 0;
  v17 = &a2[v5 + 1];
  v18 = 1;
  do
  {
    v20 = *v17++;
    v19 = v20;
    if (v20 == 40)
    {
      ++v18;
    }

    else
    {
      if ((v19 - 48) > 9)
      {
        break;
      }

      ++v16;
    }

    --v10;
  }

  while (v10 > 1);
  if (!v16)
  {
    return 0;
  }

  return CreateCFStringFromV1GenreFrame(&a2[v5], v18, v16);
}

const __CFString *ID3TagBase::CreateExtendedTextDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) == 1)
  {
    v4 = *(this + 14);
    v5 = v4 + 4;
    if (a3 >= v4 + 4)
    {
      EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
      v8 = EncodingFromFrame - 1;
      v9 = (EncodingFromFrame - 1) >= 2 ? 1 : 2;
      v10 = v9 + v5;
      if (v9 + v5 <= a3)
      {
        v13 = EncodingFromFrame;
        v14 = (v4 + 1);
        cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v30 = 257;
        v15 = *MEMORY[0x1E695E480];
        v16 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], &a2[v14], 3, 0x201u, 0);
        if (!v16)
        {
          goto LABEL_38;
        }

        CACFDictionary::AddString(&cf, @"language", v16);
        CFRelease(v16);
        v17 = (a3 - v5);
        if (a3 <= v5)
        {
          goto LABEL_38;
        }

        v18 = &a2[v5];
        v19 = ID3TagBase::StringSizeInBytes(v18, v17, v13);
        if (v8 > 2u)
        {
          v20 = 513;
        }

        else
        {
          v20 = dword_18F9026A0[v8];
        }

        if (v19 >= 2 && v8 <= 1)
        {
          v21 = *v18;
          if (v21 == 254)
          {
            if (v18[1] == 255)
            {
LABEL_19:
              v22 = 1;
LABEL_22:
              v23 = CFStringCreateWithBytes(v15, v18, v19, v20, v22);
              if (!v23)
              {
                goto LABEL_38;
              }

              CACFDictionary::AddString(&cf, @"identifier", v23);
              CFRelease(v23);
              if (a3 <= v10 + v19)
              {
                goto LABEL_38;
              }

              v24 = &a2[(v10 + v19)];
              v25 = ID3TagBase::StringSizeInBytes(v24, (a3 - (v10 + v19)), v13);
              if (v8 > 2u)
              {
                v26 = 513;
              }

              else
              {
                v26 = dword_18F9026A0[v8];
              }

              if (v25 >= 2 && v8 <= 1)
              {
                v27 = *v24;
                if (v27 == 254)
                {
                  if (v24[1] == 255)
                  {
LABEL_32:
                    v28 = 1;
LABEL_35:
                    v11 = CFStringCreateWithBytes(v15, v24, v25, v26, v28);
                    if (!v11)
                    {
LABEL_39:
                      CACFDictionary::~CACFDictionary(&cf);
                      return v11;
                    }

                    CACFDictionary::AddString(&cf, @"text", v11);
                    CFRelease(v11);
                    if (cf)
                    {
                      CFRetain(cf);
                      v11 = cf;
                      goto LABEL_39;
                    }

LABEL_38:
                    v11 = 0;
                    goto LABEL_39;
                  }
                }

                else if (v27 == 255 && v24[1] == 254)
                {
                  goto LABEL_32;
                }
              }

              v28 = 0;
              goto LABEL_35;
            }
          }

          else if (v21 == 255 && v18[1] == 254)
          {
            goto LABEL_19;
          }
        }

        v22 = 0;
        goto LABEL_22;
      }
    }
  }

  return 0;
}

CFTypeRef ID3TagBase::CreatePRIVFrameDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v4 = 0;
  if (a2 && a3 >= 4)
  {
    if (*(this + 16) == 2 || *a2 != 1447645776)
    {
      return 0;
    }

    v7 = *(this + 14);
    if (v7 + 1 > a3)
    {
      return 0;
    }

    EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v20 = 257;
    v10 = ID3TagBase::StringSizeInBytes(&a2[v7], (a3 - v7), EncodingFromFrame);
    v11 = *MEMORY[0x1E695E480];
    v12 = v10;
    v13 = EncodingFromFrame - 1;
    if ((EncodingFromFrame - 1) > 2u)
    {
      v14 = 513;
    }

    else
    {
      v14 = dword_18F9026A0[(EncodingFromFrame - 1)];
    }

    v15 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], &a2[v7], v10, v14, 0);
    if (v15)
    {
      if (v13 >= 2)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      v17 = v16 + v7 + v12;
      if (a3 > v17 && (v18 = CFDataCreate(v11, &a2[v17], a3 - v17)) != 0)
      {
        CACFDictionary::AddString(&cf, @"identifier", v15);
        CFRelease(v15);
        CACFDictionary::AddData(&cf, @"data", v18);
        CFRelease(v18);
        if (cf)
        {
          CFRetain(cf);
          v4 = cf;
LABEL_25:
          CACFDictionary::~CACFDictionary(&cf);
          return v4;
        }
      }

      else
      {
        CFRelease(v15);
      }
    }

    v4 = 0;
    goto LABEL_25;
  }

  return v4;
}

CFTypeRef ID3TagBase::CreatePictureFrameDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v4 = 0;
  if (a2 && a3 >= 4)
  {
    v7 = bswap32(*a2);
    v8 = *(this + 16);
    if (v8 == 2)
    {
      v7 >>= 8;
      v9 = 5261635;
    }

    else
    {
      v9 = 1095780675;
    }

    if (v9 != v7)
    {
      return 0;
    }

    v10 = *(this + 14);
    v11 = v8 == 2 ? v10 + 5 : v10 + 3;
    if (v11 > a3)
    {
      return 0;
    }

    EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
    v14 = v10 + 1;
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v40 = 257;
    v15 = *(this + 14);
    v16 = EncodingFromFrame - 1;
    if (*(this + 16) == 2)
    {
      if (v16 >= 2)
      {
        v17 = 6;
      }

      else
      {
        v17 = 7;
      }

      if (v17 + v15 > a3)
      {
        goto LABEL_62;
      }

      v18 = *MEMORY[0x1E695E480];
      v19 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], &a2[v14], 3, 0x201u, 0);
      v20 = 1;
    }

    else
    {
      if (v16 >= 2)
      {
        v21 = 4;
      }

      else
      {
        v21 = 5;
      }

      if (v21 + v15 > a3)
      {
        goto LABEL_62;
      }

      v22 = &a2[v14];
      v23 = a3 - v14;
      if (a3 == v14)
      {
        LODWORD(v24) = 0;
      }

      else
      {
        v25 = 0;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        while (v22[v25])
        {
          if (v24 == ++v25)
          {
            goto LABEL_33;
          }
        }

        LODWORD(v24) = v25;
      }

LABEL_33:
      v18 = *MEMORY[0x1E695E480];
      v19 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v22, v24, 0x201u, 0);
      v20 = v24 + 1;
    }

    if (!v19)
    {
      goto LABEL_62;
    }

    CACFDictionary::AddString(&cf, @"MIME", v19);
    CFRelease(v19);
    v26 = *(this + 16) == 2 ? v10 + 4 : v20 + v14;
    if (v26 >= a3)
    {
      goto LABEL_62;
    }

    v27 = a2[v26];
    if (v27 > 0x14)
    {
      v27 = 0;
    }

    v28 = CFStringCreateWithCString(v18, kPictureTypeTable[v27], 0x201u);
    if (!v28)
    {
      goto LABEL_62;
    }

    CACFDictionary::AddString(&cf, @"picturetype", v28);
    CFRelease(v28);
    v29 = v26 + 1;
    if (a3 <= v29)
    {
      goto LABEL_62;
    }

    v30 = &a2[v29];
    v31 = ID3TagBase::StringSizeInBytes(v30, (a3 - v29), EncodingFromFrame);
    if (v16 > 2u)
    {
      v32 = 513;
    }

    else
    {
      v32 = dword_18F9026A0[v16];
    }

    if (v31 >= 2 && v16 <= 1)
    {
      v33 = *v30;
      if (v33 == 254)
      {
        if (v30[1] == 255)
        {
LABEL_51:
          v34 = 1;
LABEL_54:
          v35 = CFStringCreateWithBytes(v18, &a2[v29], v31, v32, v34);
          if (v35)
          {
            CACFDictionary::AddString(&cf, @"identifier", v35);
            CFRelease(v35);
            v36 = v16 >= 2 ? 1 : 2;
            v37 = v29 + v36 + v31;
            if (a3 > v37)
            {
              v38 = CFDataCreate(v18, &a2[v37], a3 - v37);
              if (v38)
              {
                CACFDictionary::AddData(&cf, @"data", v38);
                CFRelease(v38);
                if (cf)
                {
                  CFRetain(cf);
                  v4 = cf;
LABEL_63:
                  CACFDictionary::~CACFDictionary(&cf);
                  return v4;
                }
              }
            }
          }

LABEL_62:
          v4 = 0;
          goto LABEL_63;
        }
      }

      else if (v33 == 255 && v30[1] == 254)
      {
        goto LABEL_51;
      }
    }

    v34 = 0;
    goto LABEL_54;
  }

  return v4;
}

CFTypeRef ID3TagBase::CreateWXXXFrameDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v4 = 0;
  if (a2 && a3 >= 4)
  {
    v6 = bswap32(*a2);
    if (*(this + 16) == 2)
    {
      v6 >>= 8;
      v7 = 5724248;
    }

    else
    {
      v7 = 1465407576;
    }

    if (v7 != v6)
    {
      return 0;
    }

    v8 = *(this + 14) + 1;
    v9 = (a3 - v8);
    if (a3 < v8)
    {
      return 0;
    }

    EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
    v11 = EncodingFromFrame - 1;
    v12 = (EncodingFromFrame - 1) >= 2 ? 1 : 2;
    v13 = v12 + v8;
    if (v12 + v8 > a3)
    {
      return 0;
    }

    v15 = EncodingFromFrame;
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v28 = 257;
    v16 = &a2[v8];
    v17 = ID3TagBase::StringSizeInBytes(v16, v9, v15);
    v18 = *MEMORY[0x1E695E480];
    v19 = v17;
    if (v11 > 2u)
    {
      v20 = 513;
    }

    else
    {
      v20 = dword_18F9026A0[v11];
    }

    if (v17 >= 2 && v11 <= 1)
    {
      v21 = *v16;
      if (v21 == 254)
      {
        if (v16[1] == 255)
        {
LABEL_23:
          v22 = 1;
          goto LABEL_26;
        }
      }

      else if (v21 == 255 && v16[1] == 254)
      {
        goto LABEL_23;
      }
    }

    v22 = 0;
LABEL_26:
    v23 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v16, v17, v20, v22);
    if (v23 && (CACFDictionary::AddString(&cf, @"identifier", v23), CFRelease(v23), a3 > v13 + v19) && (v24 = &a2[v13 + v19], v25 = strnlen(v24, a3 - (v13 + v19)), (v26 = CFURLCreateWithBytes(v18, v24, v25, 0x201u, 0)) != 0) && (CACFDictionary::AddURL(&cf, @"text", v26), CFRelease(v26), cf))
    {
      CFRetain(cf);
      v4 = cf;
    }

    else
    {
      v4 = 0;
    }

    CACFDictionary::~CACFDictionary(&cf);
  }

  return v4;
}

const __CFString *ID3TagBase::CreateTXXXFrameDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v4 = 0;
  if (a2 && a3 >= 4)
  {
    v6 = bswap32(*a2);
    if (*(this + 16) == 2)
    {
      v6 >>= 8;
      v7 = 5527640;
    }

    else
    {
      v7 = 1415075928;
    }

    if (v7 != v6)
    {
      return 0;
    }

    v8 = *(this + 14) + 1;
    if (a3 < v8)
    {
      return 0;
    }

    EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
    v10 = EncodingFromFrame - 1;
    v11 = (EncodingFromFrame - 1) >= 2 ? 1 : 2;
    v12 = v11 + v8;
    if (v11 + v8 > a3)
    {
      return 0;
    }

    v14 = EncodingFromFrame;
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v29 = 257;
    v15 = &a2[v8];
    v16 = ID3TagBase::StringSizeInBytes(v15, (a3 - v8), v14);
    v17 = *MEMORY[0x1E695E480];
    v18 = v16;
    if (v10 > 2u)
    {
      v19 = 513;
    }

    else
    {
      v19 = dword_18F9026A0[v10];
    }

    if (v16 >= 2 && v10 <= 1)
    {
      v20 = *v15;
      if (v20 == 254)
      {
        if (v15[1] == 255)
        {
LABEL_23:
          v21 = 1;
LABEL_26:
          v22 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v15, v16, v19, v21);
          if (!v22)
          {
            goto LABEL_42;
          }

          CACFDictionary::AddString(&cf, @"identifier", v22);
          CFRelease(v22);
          if (a3 <= v12 + v18)
          {
            goto LABEL_42;
          }

          v23 = &a2[v12 + v18];
          v24 = ID3TagBase::StringSizeInBytes(v23, (a3 - (v12 + v18)), v14);
          if (v10 > 2u)
          {
            v25 = 513;
          }

          else
          {
            v25 = dword_18F9026A0[v10];
          }

          if (v24 >= 2 && v10 <= 1)
          {
            v26 = *v23;
            if (v26 == 254)
            {
              if (v23[1] == 255)
              {
LABEL_36:
                v27 = 1;
LABEL_39:
                v4 = CFStringCreateWithBytes(v17, v23, v24, v25, v27);
                if (!v4)
                {
LABEL_43:
                  CACFDictionary::~CACFDictionary(&cf);
                  return v4;
                }

                CACFDictionary::AddString(&cf, @"text", v4);
                CFRelease(v4);
                if (cf)
                {
                  CFRetain(cf);
                  v4 = cf;
                  goto LABEL_43;
                }

LABEL_42:
                v4 = 0;
                goto LABEL_43;
              }
            }

            else if (v26 == 255 && v23[1] == 254)
            {
              goto LABEL_36;
            }
          }

          v27 = 0;
          goto LABEL_39;
        }
      }

      else if (v20 == 255 && v15[1] == 254)
      {
        goto LABEL_23;
      }
    }

    v21 = 0;
    goto LABEL_26;
  }

  return v4;
}

CFTypeRef ID3TagBase::CreateGEOBFrameDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v4 = 0;
  if (a2 && a3 >= 4)
  {
    v6 = bswap32(*a2);
    if (*(this + 16) == 2)
    {
      v6 >>= 8;
      v7 = 4670799;
    }

    else
    {
      v7 = 1195724610;
    }

    if (v7 != v6)
    {
      return 0;
    }

    v8 = *(this + 14);
    v9 = v8 + 1;
    if (a3 < v8 + 1)
    {
      return 0;
    }

    EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
    v11 = v8 + 2;
    v12 = EncodingFromFrame - 1;
    v13 = (EncodingFromFrame - 1) >= 2 ? 1 : 2;
    if (v11 + 2 * v13 > a3)
    {
      return 0;
    }

    v15 = EncodingFromFrame;
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v39 = 257;
    v16 = &a2[v9];
    v17 = a3 - v9;
    if (a3 == v9)
    {
      LODWORD(v18) = 0;
    }

    else
    {
      v19 = 0;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      while (v16[v19])
      {
        if (v18 == ++v19)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v18) = v19;
    }

LABEL_24:
    v20 = *MEMORY[0x1E695E480];
    v21 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v16, v18, 0x201u, 0);
    if (!v21)
    {
      goto LABEL_55;
    }

    CACFDictionary::AddString(&cf, @"MIME", v21);
    CFRelease(v21);
    v22 = v11 + v18;
    if (a3 <= v22)
    {
      goto LABEL_55;
    }

    v23 = &a2[v22];
    v24 = ID3TagBase::StringSizeInBytes(v23, (a3 - v22), v15);
    if (v12 > 2u)
    {
      v25 = 513;
    }

    else
    {
      v25 = dword_18F9026A0[v12];
    }

    if (v24 >= 2 && v12 <= 1)
    {
      v26 = *v23;
      if (v26 == 254)
      {
        if (v23[1] == 255)
        {
LABEL_34:
          v27 = 1;
LABEL_37:
          v28 = CFStringCreateWithBytes(v20, &a2[v22], v24, v25, v27);
          if (!v28)
          {
            goto LABEL_55;
          }

          CACFDictionary::AddString(&cf, @"filename", v28);
          CFRelease(v28);
          v29 = v22 + v13 + v24;
          if (a3 <= v29)
          {
            goto LABEL_55;
          }

          v30 = &a2[v29];
          v31 = ID3TagBase::StringSizeInBytes(v30, (a3 - v29), v15);
          if (v12 > 2u)
          {
            v32 = 513;
          }

          else
          {
            v32 = dword_18F9026A0[v12];
          }

          if (v31 >= 2 && v12 <= 1)
          {
            v33 = *v30;
            if (v33 == 254)
            {
              if (v30[1] == 255)
              {
LABEL_47:
                v34 = 1;
LABEL_50:
                v35 = CFStringCreateWithBytes(v20, &a2[v29], v31, v32, v34);
                if (v35)
                {
                  CACFDictionary::AddString(&cf, @"identifier", v35);
                  CFRelease(v35);
                  v36 = v29 + v13 + v31;
                  if (a3 > v36)
                  {
                    v37 = CFDataCreate(v20, &a2[v36], a3 - v36);
                    if (v37)
                    {
                      CACFDictionary::AddData(&cf, @"data", v37);
                      CFRelease(v37);
                      if (cf)
                      {
                        CFRetain(cf);
                        v4 = cf;
LABEL_56:
                        CACFDictionary::~CACFDictionary(&cf);
                        return v4;
                      }
                    }
                  }
                }

LABEL_55:
                v4 = 0;
                goto LABEL_56;
              }
            }

            else if (v33 == 255 && v30[1] == 254)
            {
              goto LABEL_47;
            }
          }

          v34 = 0;
          goto LABEL_50;
        }
      }

      else if (v26 == 255 && v23[1] == 254)
      {
        goto LABEL_34;
      }
    }

    v27 = 0;
    goto LABEL_37;
  }

  return v4;
}

uint64_t ID3TagBase::GetEncodingFromFrame(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (a2 && a3 > 3)
  {
    v3 = bswap32(*a2);
    v4 = *(this + 16);
    if (v4 == 2)
    {
      v3 = v3 >> 8;
    }
  }

  else
  {
    v3 = 0;
    v4 = *(this + 16);
  }

  if (v4 == 2)
  {
    if (v3 == 5724248 || (v3 & 0xFFFF0000) == 0x540000)
    {
      goto LABEL_39;
    }

    if ((v3 & 0xFFFF0000) == 0x570000)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 1465407576 || (v3 & 0xFF000000) == 0x54000000)
    {
      goto LABEL_39;
    }

    if ((v3 & 0xFF000000) == 0x57000000)
    {
      return 0;
    }
  }

  v5 = 0;
  if (v3 > 1129270604)
  {
    if (v3 > 1331121732)
    {
      if (v3 > 1415075927)
      {
        if (v3 == 1431522388)
        {
          goto LABEL_39;
        }

        v6 = 1415075928;
      }

      else
      {
        if (v3 == 1331121733)
        {
          goto LABEL_39;
        }

        v6 = 1398361172;
      }
    }

    else if (v3 > 1195724609)
    {
      if (v3 == 1195724610)
      {
        goto LABEL_39;
      }

      v6 = 1229999187;
    }

    else
    {
      if (v3 == 1129270605)
      {
        goto LABEL_39;
      }

      v6 = 1129270610;
    }
  }

  else if (v3 > 5459027)
  {
    if (v3 > 5590099)
    {
      if (v3 == 5590100)
      {
        goto LABEL_39;
      }

      v6 = 1095780675;
    }

    else
    {
      if (v3 == 5459028)
      {
        goto LABEL_39;
      }

      v6 = 5527640;
    }
  }

  else if (v3 > 4804683)
  {
    if (v3 == 4804684)
    {
      goto LABEL_39;
    }

    v6 = 5261635;
  }

  else
  {
    if (v3 == 4411213)
    {
      goto LABEL_39;
    }

    v6 = 4670799;
  }

  if (v3 == v6)
  {
LABEL_39:
    v7 = *(this + 14);
    if (v7 + 1 <= a3)
    {
      return a2[v7];
    }

    return 0;
  }

  return v5;
}

uint64_t ID3TagBase::StringSizeInBytes(ID3TagBase *this, unsigned __int8 *a2, int a3)
{
  if ((a3 - 1) >= 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a2)
  {
    v5 = 0;
    result = 0;
    while (1)
    {
      if ((a3 - 1) >= 2)
      {
        if (!*(this + v5))
        {
          return result;
        }

        v7 = 1;
      }

      else
      {
        if (v5 + 1 >= a2 || !*(this + v5) && !*(this + v5 + 1))
        {
          return result;
        }

        v7 = 2;
      }

      result = (result + v7);
      v5 += v3;
      if (v5 >= a2)
      {
        return result;
      }
    }
  }

  return 0;
}

CFStringRef CreateCFStringFromV1GenreFrame(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  pStr = a3;
  memcpy(v11, &a1[a2], a3);
  v3 = *MEMORY[0x1E695E480];
  v4 = CFStringCreateWithPascalString(*MEMORY[0x1E695E480], &pStr, 0x201u);
  if (v4)
  {
    v5 = v4;
    IntValue = CFStringGetIntValue(v4);
    if (IntValue > 0x93)
    {
      v7 = 0;
    }

    else
    {
      v7 = CFStringCreateWithCString(v3, kGenreTable[IntValue], 0x201u);
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t ID3TagBase::TranslateV2IDToV3(ID3TagBase *this)
{
  if (this <= 5524819)
  {
    if (this > 5459027)
    {
      if (this <= 5522496)
      {
        if (this <= 5521999)
        {
          v30 = 5459028;
          v31 = 1398361172;
          if (this == 5521740)
          {
            v34 = 1413565506;
          }

          else
          {
            v34 = this;
          }

          if (this == 5461059)
          {
            v33 = 1398363203;
          }

          else
          {
            v33 = v34;
          }

          goto LABEL_154;
        }

        v5 = 5522254;
        if (this == 5522258)
        {
          v24 = 1413697360;
        }

        else
        {
          v24 = this;
        }

        if (this == 5522255)
        {
          v7 = 1413697358;
        }

        else
        {
          v7 = v24;
        }

        v8 = 5522000;
        v9 = 1413632077;
        v10 = this == 5522253;
        v11 = 1413697357;
      }

      else if (this > 5523788)
      {
        v5 = 5524544;
        if (this == 5524549)
        {
          v29 = 1414284622;
        }

        else
        {
          v29 = this;
        }

        if (this == 5524545)
        {
          v7 = 1414283598;
        }

        else
        {
          v7 = v29;
        }

        v8 = 5523789;
        v9 = 1414090053;
        v10 = this == 5524293;
        v11 = 1414219097;
      }

      else
      {
        v5 = 5522765;
        if (this == 5523028)
        {
          v14 = 1413893204;
        }

        else
        {
          v14 = this;
        }

        if (this == 5522766)
        {
          v7 = 1413828163;
        }

        else
        {
          v7 = v14;
        }

        v8 = 5522497;
        v9 = 1413759316;
        v10 = this == 5522521;
        v11 = 1413762137;
      }
    }

    else
    {
      if (this <= 4804683)
      {
        v5 = 4411968;
        if (this == 4670799)
        {
          v19 = 1195724610;
        }

        else
        {
          v19 = this;
        }

        if (this == 4543555)
        {
          v20 = 1163150159;
        }

        else
        {
          v20 = v19;
        }

        if (this == 4542805)
        {
          v21 = 1162958145;
        }

        else
        {
          v21 = this;
        }

        if (this == 4411969)
        {
          v22 = 1095061059;
        }

        else
        {
          v22 = v21;
        }

        if (this <= 4543554)
        {
          v7 = v22;
        }

        else
        {
          v7 = v20;
        }

        v8 = 4347206;
        v9 = 1380078918;
        if (this == 4411213)
        {
          v23 = 1129270605;
        }

        else
        {
          v23 = this;
        }

        if (this == 4410964)
        {
          v11 = 1346588244;
        }

        else
        {
          v11 = v23;
        }

LABEL_136:
        if (this == v8)
        {
          v17 = v9;
        }

        else
        {
          v17 = v11;
        }

LABEL_139:
        if (this <= v5)
        {
          return v17;
        }

        else
        {
          return v7;
        }
      }

      if (this > 5261634)
      {
        v5 = 5391701;
        if (this == 5396033)
        {
          v28 = 1381384516;
        }

        else
        {
          v28 = this;
        }

        if (this == 5391702)
        {
          v7 = 1381388866;
        }

        else
        {
          v7 = v28;
        }

        v8 = 5261635;
        v9 = 1095780675;
        v10 = this == 5263184;
        v11 = 1347375181;
      }

      else
      {
        v5 = 5063496;
        if (this == 5065804)
        {
          v6 = 1296845908;
        }

        else
        {
          v6 = this;
        }

        if (this == 5063497)
        {
          v7 = 1296254025;
        }

        else
        {
          v7 = v6;
        }

        v8 = 4804684;
        v9 = 1229999187;
        v10 = this == 5000779;
        v11 = 1279872587;
      }
    }

LABEL_134:
    if (!v10)
    {
      v11 = this;
    }

    goto LABEL_136;
  }

  if (this > 5526344)
  {
    if (this > 5590099)
    {
      if (this > 5718860)
      {
        v5 = 5722177;
        if (this == 5724248)
        {
          v27 = 1465407576;
        }

        else
        {
          v27 = this;
        }

        if (this == 5722178)
        {
          v7 = 1464882498;
        }

        else
        {
          v7 = v27;
        }

        v8 = 5718861;
        v9 = 1464029005;
        v10 = this == 5718864;
        v11 = 1464029008;
      }

      else
      {
        v5 = 5718353;
        if (this == 5718355)
        {
          v15 = 1464811859;
        }

        else
        {
          v15 = this;
        }

        if (this == 5718354)
        {
          v7 = 1464811858;
        }

        else
        {
          v7 = v15;
        }

        v8 = 5590100;
        v9 = 1431522388;
        v10 = this == 5718342;
        v11 = 1464811846;
      }
    }

    else
    {
      if (this <= 5526578)
      {
        v1 = 5526576;
        if (this == 5526578)
        {
          v2 = 1414091826;
        }

        else
        {
          v2 = this;
        }

        if (this == 5526577)
        {
          v2 = 1414091825;
        }

        if (this == 5526355)
        {
          v3 = 1414746949;
        }

        else
        {
          v3 = this;
        }

        if (this == 5526345)
        {
          v4 = 1414744410;
        }

        else
        {
          v4 = v3;
        }

LABEL_38:
        if (this <= v1)
        {
          return v4;
        }

        else
        {
          return v2;
        }
      }

      v5 = 5527639;
      if (this == 5527877)
      {
        v26 = 1415136594;
      }

      else
      {
        v26 = this;
      }

      if (this == 5527640)
      {
        v7 = 1415075928;
      }

      else
      {
        v7 = v26;
      }

      v8 = 5526579;
      v9 = 1414091827;
      v10 = this == 5527636;
      v11 = 1413830740;
    }

    goto LABEL_134;
  }

  if (this > 5525553)
  {
    if (this <= 5525569)
    {
      v1 = 5525555;
      if (this == 5525569)
      {
        v2 = 1414549331;
      }

      else
      {
        v2 = this;
      }

      if (this == 5525556)
      {
        v2 = 1414546740;
      }

      v12 = 1414546739;
      if (this != 5525555)
      {
        v12 = this;
      }

      if (this == 5525554)
      {
        v4 = 1414546738;
      }

      else
      {
        v4 = v12;
      }

      goto LABEL_38;
    }

    v5 = 5526083;
    if (this == 5526091)
    {
      v25 = 1414677323;
    }

    else
    {
      v25 = this;
    }

    if (this == 5526084)
    {
      v7 = 1414677569;
    }

    else
    {
      v7 = v25;
    }

    v8 = 5525570;
    v9 = 1414550850;
    v10 = this == 5526083;
    v11 = 1414746691;
    goto LABEL_134;
  }

  if (this > 5525323)
  {
    v5 = 5525331;
    if (this == 5525553)
    {
      v16 = 1414546737;
    }

    else
    {
      v16 = this;
    }

    if (this == 5525332)
    {
      v7 = 1414480204;
    }

    else
    {
      v7 = v16;
    }

    v17 = 1414483033;
    if (this == 5525330)
    {
      v18 = 1414484569;
    }

    else
    {
      v18 = this;
    }

    if (this != 5525324)
    {
      v17 = v18;
    }

    goto LABEL_139;
  }

  v30 = 5524820;
  v31 = 1414350148;
  if (this == 5525318)
  {
    v32 = 1414481486;
  }

  else
  {
    v32 = this;
  }

  if (this == 5525313)
  {
    v33 = 1414484037;
  }

  else
  {
    v33 = v32;
  }

LABEL_154:
  if (this == v30)
  {
    return v31;
  }

  else
  {
    return v33;
  }
}

BOOL ResynchroniseBytes(unsigned __int8 *a1, int a2, unsigned int a3, unsigned int *a4)
{
  v4 = 0;
  v5 = 0;
  if (a3 && a2)
  {
    v5 = 0;
    v4 = 0;
    v6 = a1;
    v7 = &a1[a2];
    while (1)
    {
      v8 = v6 + 1;
      v9 = *v6;
      *a1 = v9;
      if (v9 != 255 || v8 >= v7)
      {
        goto LABEL_11;
      }

      v8 = v6 + 2;
      v11 = v6[1];
      if (v11)
      {
        break;
      }

      v5 += 2;
      v6 = v8;
      ++a1;
      ++v4;
LABEL_13:
      if (v4 >= a3 || v6 >= v7)
      {
        goto LABEL_15;
      }
    }

    if (v4 + 1 < a3)
    {
      a1[1] = v11;
      a1 += 2;
      v5 += 2;
      v4 += 2;
      v6 = v8;
      goto LABEL_13;
    }

LABEL_11:
    v6 = v8;
    ++a1;
    ++v4;
    ++v5;
    goto LABEL_13;
  }

LABEL_15:
  if (a4)
  {
    *a4 = v5;
  }

  return v4 == a3;
}

void ID3TagBase::GetFrameDataSize(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v16 = 136315394;
    v17 = "ID3Parser.cpp";
    v18 = 1024;
    v19 = 1237;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  inDataSize is 0";
    goto LABEL_21;
  }

  v7 = *(this + 16);
  if (v7 < 3)
  {
    if (a3 > 5)
    {
      v14 = *(a2 + 2) & 0xFFFFFF00;
      goto LABEL_24;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v16 = 136315394;
    v17 = "ID3Parser.cpp";
    v18 = 1024;
    v19 = 1258;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  inDataSize is too small for a v1 frame";
LABEL_21:
    _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v13, &v16, 0x12u);
    goto LABEL_22;
  }

  if (v7 == 4)
  {
    if (a3 >= 9)
    {
      v8 = *(a2 + 1);
      v9 = bswap32(v8);
      if (v9 >= 0x80 && (v8 & 0x80808080) == 0)
      {
        v11 = (*(a2 + 1) << 6) & 0x1FC000 | ((*(a2 + 1) & 0x7F) << 21) | (*(a2 + 1) >> 9) & 0x3F80 | HIBYTE(*(a2 + 1));
      }

      else
      {
        v11 = v9;
      }

      goto LABEL_25;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v16 = 136315394;
    v17 = "ID3Parser.cpp";
    v18 = 1024;
    v19 = 1245;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  can't get v2.4 frame data size";
    goto LABEL_21;
  }

  if (a3 <= 7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "ID3Parser.cpp";
      v18 = 1024;
      v19 = 1250;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  inDataSize is too small for a v2 frame";
      goto LABEL_21;
    }

LABEL_22:
    v11 = 0;
    v9 = 0;
    goto LABEL_25;
  }

  v14 = *(a2 + 1);
LABEL_24:
  v11 = bswap32(v14);
  v9 = v11;
LABEL_25:
  *a4 = v11;
  if (a5)
  {
    *a5 = v9;
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t ID3TagBase::SetFrameDataSize(uint64_t this, unsigned __int8 *a2, unsigned int a3, unsigned int a4)
{
  if (a2)
  {
    v4 = *(this + 64);
    if (v4 < 3)
    {
      if (a3 >= 6 && !HIBYTE(a4))
      {
        v7 = a2[2];
        *(a2 + 2) = bswap32(a4);
        a2[2] = v7;
      }
    }

    else
    {
      if (v4 == 4)
      {
        if (a4 >> 28)
        {
          return this;
        }

        v5 = bswap32(a4);
        v6 = v5 & 0xF | (((v5 >> 14) & 0x7F) << 16) & 0x80FF81FF | (((v5 >> 21) & 0x7F) << 24) | (((v5 >> 8) & 0x3F) << 9);
      }

      else
      {
        if (a3 < 8)
        {
          return this;
        }

        v6 = bswap32(a4);
      }

      *(a2 + 1) = v6;
    }
  }

  return this;
}

uint64_t ID3TagBase::ProvideFrameData(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3, unsigned int a4, unsigned int *a5, int a6)
{
  if (*(this + 48))
  {
    return 0;
  }

  v34 = v6;
  v35 = v7;
  v11 = *(this + 14);
  if (v11 <= a3)
  {
    if (v11 + a4 > *(this + 13))
    {
LABEL_5:
      *(this + 48) = 1;
      return 0xFFFFFFFFLL;
    }

    v15 = this + 24;
    v16 = *(this + 10);
    if (!v16)
    {
      if (a4 != 10)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_24;
    }

    v17 = *(this + 4);
    v18 = (v16 - 1);
    if (v18)
    {
      v19 = v18 + 1;
      do
      {
        v17 = *(v17 + 8);
        --v19;
      }

      while (v19 > 1);
    }

    if (v17 == v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17 + 16;
    }

    v21 = *(v20 + 4) + *(v20 + 8);
    if (v21 > a4)
    {
      v22 = this + 24;
      while (1)
      {
        v22 = *(v22 + 1);
        if (v22 == v15)
        {
          break;
        }

        if (*(v22 + 6) == a4)
        {
          result = 0;
          if (a5)
          {
            *a5 = *(v22 + 5);
          }

          return result;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (v21 >= a4)
    {
LABEL_24:
      *v31 = 0;
      ID3TagBase::GetFrameDataSize(this, a2, a3, &v31[1], v31);
      if (a6)
      {
        v23 = v31;
      }

      else
      {
        v23 = &v31[1];
      }

      v24 = *v23;
      v25 = *(this + 14);
      if (!__CFADD__(v25, *v23) && v24 <= v25 - a4 + *(this + 13))
      {
        if (v24 || (!a2 || a3 <= 3 ? (v28 = 0, v27 = *(this + 16)) : ((v26 = bswap32(*a2), v27 = *(this + 16), v27 != 2) ? (v28 = v26) : (v28 = v26 >> 8)), ID3TagBase::IsValidFrameID(v27, v28)))
        {
          v29 = 0;
          v30 = v24 + v25;
          if (a2 && a3 >= 4)
          {
            LODWORD(v29) = bswap32(*a2);
            if (*(this + 16) == 2)
            {
              v29 = v29 >> 8;
            }

            else
            {
              v29 = v29;
            }
          }

          v32 = v29 | (v30 << 32);
          v33 = a4;
          std::list<ID3FrameInfo>::push_back();
        }
      }

      goto LABEL_5;
    }
  }

  return 0xFFFFFFFFLL;
}

BOOL ID3TagBase::IsValidFrameID(ID3TagBase *this, int a2)
{
  if (this == 4)
  {
    v7 = "CNEACNEA ARCCIPACIPA CIPIPSA        MMOCMMOC MOCRMOCRMOC    RCNERCNE MRC2UQEAUQE UQEOCTEOCTE CTEBOEGBOEG OEGDIRGDIRG    KNILKNIL KNLIDCMIDCM ICMTLLMTLLM LLMENWOENWO    TSCPTSCP SCPTNCPTNCP TNCMPOPMPOP POPSSOPSSOP    VIRPVIRP    FUBRFUBR FUB2AVRDAVR AVRBRVRBRVR VERKEES        NGIS        TLYSTLYS TLSCTYSCTYS CTSBLATBLAT LATMPBTMPBT PBTTACTTACT TCTPMCTPMCT PCTMOCTMOCT MCTNOCTNOCT OCTPOCTPOCT RCT    TADT ADTNEDT        SEDTSEDT SDTYLDTYLDT YDTRODT        CRDTREYT EYTLRDT        GTDT        CNETCNET NETTXETTXET TXTDEFTDEFT DFTTLFTTLFT TFTDIGTDIGT DIT    EMIT MITLPITSLPI LPI1TIT1TIT 1TT2TIT2TIT 2TT3TIT3TIT 3TTYEKTYEKT EKTDWKTDWKT WKTNALTNALT ALTNELTNELT ELTLCMT        DEMTDEMT TMTOOMT        LAOTLAOT TOTNFOTNFOT FOTYLOTYLOT LOTEPOTEPOT AOTLRDTYROT ROTNWOTNWOT    1EPT1EPT 1PT2EPT2EPT 2PT3EPT3EPT 3PT4EPT4EPT 4PTSOPTSOPT APTORPT        BUPTBUPT BPTKCRTKCRT KRT    ADRT DRTNSRTNSRT    OSRTOSRT        ZIST IST2OST2OST 2STAOST        COSTCOST CSTPOST        TOST        CRSTCRST CRTESSTESST SSTTSST        XXXTXXXT XXTDIFUDIFU IFURESURESU    TLSUTLSU TLUMOCWMOCW MCWPOCWPOCW PCWFAOWFAOW FAWRAOWRAOW RAWSAOWSAOW SAWSROWSROW    YAPWYAPW    BUPWBUPW BPWXXXWXXXW XXW";
    do
    {
      v9 = *v7;
      v7 += 12;
      v8 = v9;
      result = v9 != 0;
    }

    while (v9 != a2 && v8 != 0);
  }

  else if (this == 3)
  {
    v2 = "CNEA ARCCIPACIPA CIPIPSA        MMOCMMOC MOCRMOCRMOC    RCNERCNE MRC2UQEAUQE UQEOCTEOCTE CTEBOEGBOEG OEGDIRGDIRG    KNILKNIL KNLIDCMIDCM ICMTLLMTLLM LLMENWOENWO    TSCPTSCP SCPTNCPTNCP TNCMPOPMPOP POPSSOPSSOP    VIRPVIRP    FUBRFUBR FUB2AVRDAVR AVRBRVRBRVR VERKEES        NGIS        TLYSTLYS TLSCTYSCTYS CTSBLATBLAT LATMPBTMPBT PBTTACTTACT TCTPMCTPMCT PCTMOCTMOCT MCTNOCTNOCT OCTPOCTPOCT RCT    TADT ADTNEDT        SEDTSEDT SDTYLDTYLDT YDTRODT        CRDTREYT EYTLRDT        GTDT        CNETCNET NETTXETTXET TXTDEFTDEFT DFTTLFTTLFT TFTDIGTDIGT DIT    EMIT MITLPITSLPI LPI1TIT1TIT 1TT2TIT2TIT 2TT3TIT3TIT 3TTYEKTYEKT EKTDWKTDWKT WKTNALTNALT ALTNELTNELT ELTLCMT        DEMTDEMT TMTOOMT        LAOTLAOT TOTNFOTNFOT FOTYLOTYLOT LOTEPOTEPOT AOTLRDTYROT ROTNWOTNWOT    1EPT1EPT 1PT2EPT2EPT 2PT3EPT3EPT 3PT4EPT4EPT 4PTSOPTSOPT APTORPT        BUPTBUPT BPTKCRTKCRT KRT    ADRT DRTNSRTNSRT    OSRTOSRT        ZIST IST2OST2OST 2STAOST        COSTCOST CSTPOST        TOST        CRSTCRST CRTESSTESST SSTTSST        XXXTXXXT XXTDIFUDIFU IFURESURESU    TLSUTLSU TLUMOCWMOCW MCWPOCWPOCW PCWFAOWFAOW FAWRAOWRAOW RAWSAOWSAOW SAWSROWSROW    YAPWYAPW    BUPWBUPW BPWXXXWXXXW XXW";
    do
    {
      v4 = *v2;
      v2 += 12;
      v3 = v4;
      result = v4 != 0;
    }

    while (v4 != a2 && v3 != 0);
  }

  else
  {
    v11 = " ARCCIPACIPA CIPIPSA        MMOCMMOC MOCRMOCRMOC    RCNERCNE MRC2UQEAUQE UQEOCTEOCTE CTEBOEGBOEG OEGDIRGDIRG    KNILKNIL KNLIDCMIDCM ICMTLLMTLLM LLMENWOENWO    TSCPTSCP SCPTNCPTNCP TNCMPOPMPOP POPSSOPSSOP    VIRPVIRP    FUBRFUBR FUB2AVRDAVR AVRBRVRBRVR VERKEES        NGIS        TLYSTLYS TLSCTYSCTYS CTSBLATBLAT LATMPBTMPBT PBTTACTTACT TCTPMCTPMCT PCTMOCTMOCT MCTNOCTNOCT OCTPOCTPOCT RCT    TADT ADTNEDT        SEDTSEDT SDTYLDTYLDT YDTRODT        CRDTREYT EYTLRDT        GTDT        CNETCNET NETTXETTXET TXTDEFTDEFT DFTTLFTTLFT TFTDIGTDIGT DIT    EMIT MITLPITSLPI LPI1TIT1TIT 1TT2TIT2TIT 2TT3TIT3TIT 3TTYEKTYEKT EKTDWKTDWKT WKTNALTNALT ALTNELTNELT ELTLCMT        DEMTDEMT TMTOOMT        LAOTLAOT TOTNFOTNFOT FOTYLOTYLOT LOTEPOTEPOT AOTLRDTYROT ROTNWOTNWOT    1EPT1EPT 1PT2EPT2EPT 2PT3EPT3EPT 3PT4EPT4EPT 4PTSOPTSOPT APTORPT        BUPTBUPT BPTKCRTKCRT KRT    ADRT DRTNSRTNSRT    OSRTOSRT        ZIST IST2OST2OST 2STAOST        COSTCOST CSTPOST        TOST        CRSTCRST CRTESSTESST SSTTSST        XXXTXXXT XXTDIFUDIFU IFURESURESU    TLSUTLSU TLUMOCWMOCW MCWPOCWPOCW PCWFAOWFAOW FAWRAOWRAOW RAWSAOWSAOW SAWSROWSROW    YAPWYAPW    BUPWBUPW BPWXXXWXXXW XXW";
    do
    {
      v13 = *v11;
      v11 += 12;
      v12 = v13;
      result = v13 != 0;
    }

    while (v13 != a2 && v12 != 0);
  }

  return result;
}

void ID3ParserHandle::~ID3ParserHandle(ID3ParserHandle *this)
{
  ID3ParserHandle::~ID3ParserHandle(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325E68;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void FillInfoDictionaryFromID3Parser(CACFDictionary *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  theString = 0;
  v11 = 1413565506;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"album", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v11) = 1414546737;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"artist", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v11) = 1413632077;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"tempo", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v11) = 1414219097;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"key signature", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v11) = 1414677323;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"track number", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v11) = 1415136594;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"year", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v11) = 1413697357;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"composer", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v11) = 1413830740;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"lyricist", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v11) = 1414091826;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"title", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v11) = 1413697360;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"copyright", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v11) = 1413828163;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"encoding application", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v11) = 1413697358;
  v13 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
  {
    v13 = 8;
    if (!ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"genre", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  v3 = 0;
  cf = 0;
  do
  {
    LODWORD(v11) = 1129270605;
    HIDWORD(v11) = v3;
    v13 = 12;
    if (ID3ParserGetProperty(a2, 8, &v11, 1718185574, &v13, v14))
    {
      break;
    }

    v13 = 8;
    if (ID3ParserGetProperty(a2, 4, v15, 1717854580, &v13, &cf))
    {
      break;
    }

    v7 = 0;
    v8 = cf;
    v9 = 0;
    CACFDictionary::GetString(&v8, @"identifier", &v7);
    if (v7)
    {
      CFStringGetCString(v7, buffer, 256, 0x600u);
      v4 = *buffer != 1853183081;
      if (*buffer != 1853183081)
      {
        v7 = 0;
        CACFDictionary::GetString(&v8, @"text", &v7);
        if (v7 && CFStringGetLength(v7))
        {
          CACFDictionary::AddString(a1, @"comments", v7);
        }

        goto LABEL_71;
      }
    }

    else
    {
      v4 = 0;
    }

    ++v3;
LABEL_71:
    CFRelease(cf);
    cf = 0;
    CACFDictionary::~CACFDictionary(&v8);
  }

  while (!v4);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_18F6CCF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t ID3ParserGetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a5)
  {
    return 2003334207;
  }

  if (!a6)
  {
    return 2003334207;
  }

  v6 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v6)
  {
    return 2003334207;
  }

  v7 = *(*v6 + 32);

  return v7();
}

uint64_t ID3ParserOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    operator new();
  }

  return 2003334207;
}

void sub_18F6CD204(void *a1)
{
  MEMORY[0x193ADF220](v1, 0x10A1C4085EB5FF6);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F6CD1C8);
}

uint64_t ID3ParserClose()
{
  v0 = BaseOpaqueObject::ResolveOpaqueRef();
  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  return 0;
}

uint64_t ID3CreatorCallbackProc(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, void **a5, unsigned int *a6)
{
  *a5 = (a1[2] + a3);
  *a6 = *(a1 + 6) - a3;
  return 0;
}

void ID3Creator::ID3Creator(ID3Creator *this)
{
  *this = &unk_1F0325EA0;
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 28) = 0xA00000003;
  v2 = malloc_type_malloc(0xAuLL, 0x100004080B1215BuLL);
  if (!v2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_alloc::bad_alloc(exception);
  }

  *(this + 2) = v2;
  *(this + 6) = 10;
  v3 = *(this + 7);
  *v2 = 17481;
  v2[2] = 51;
  v2[3] = v3;
  *(v2 + 2) = 0;
  *(v2 + 6) = 167772160;
  *(this + 8) = 1;
}

uint64_t GetSoundCheckDictionaryFromID3(uint64_t a1, CACFDictionary *a2, _DWORD *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v18 = 2003334207;
  v24 = 0;
  v20 = 4;
  if (!ID3ParserGetProperty(a1, 0, 0, 1717792372, &v20, &v24) && v24)
  {
    v6 = 1;
    do
    {
      v21[0] = 1129270605;
      v21[1] = v6 - 1;
      v20 = 12;
      if (ID3ParserGetProperty(a1, 8, v21, 1718185574, &v20, v22))
      {
        goto LABEL_6;
      }

      theDict = 0;
      v20 = 8;
      if (ID3ParserGetProperty(a1, 4, &v23, 1717854580, &v20, &theDict))
      {
        goto LABEL_6;
      }

      if (a3)
      {
        *a3 = v23;
      }

      if (!a2)
      {
LABEL_6:
        v7 = 0;
      }

      else
      {
        Value = CFDictionaryGetValue(theDict, @"identifier");
        v11 = CFDictionaryGetValue(theDict, @"text");
        v7 = 0;
        if (Value)
        {
          v12 = v11;
          if (v11)
          {
            if (CFStringCompare(Value, @"iTunNORM", 0))
            {
              v7 = 0;
            }

            else
            {
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              *buffer = 0u;
              v26 = 0u;
              if (CFStringGetCString(v12, buffer, 128, 0x201u))
              {
                v14 = ParseiTunesNORMData(buffer, a2, v13);
                v7 = v14 == 0;
                v15 = v18;
                if (!v14)
                {
                  v15 = 0;
                }

                v18 = v15;
              }

              else
              {
                v7 = 0;
              }
            }
          }
        }

        CFRelease(theDict);
      }
    }

    while (v6++ < v24 && !v7);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v18;
}

void GetLIDFrameInfoFromID3(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v15 = 0;
  v11 = 4;
  if (!ID3ParserGetProperty(a1, 0, 0, 1717792372, &v11, &v15) && v15)
  {
    for (i = 0; i < v15; ++i)
    {
      v12[0] = 1129270605;
      v12[1] = i;
      v11 = 12;
      if (!ID3ParserGetProperty(a1, 8, v12, 1718185574, &v11, v13))
      {
        theDict = 0;
        v11 = 8;
        if (!ID3ParserGetProperty(a1, 4, &v14, 1717854580, &v11, &theDict))
        {
          Value = CFDictionaryGetValue(theDict, @"identifier");
          v6 = CFDictionaryGetValue(theDict, @"text");
          if (Value)
          {
            v7 = v6;
            if (v6)
            {
              if (CFStringCompare(Value, @"iTunLOUD", 0) == kCFCompareEqualTo)
              {
                if (a2)
                {
                  *a2 = v14;
                }

                if (a3)
                {
                  *a3 = CFStringGetLength(v7) + 1;
                }
              }
            }
          }

          CFRelease(theDict);
        }
      }
    }
  }
}

uint64_t ID3Creator::AddCommentFrame(ID3Creator *this, const void *__src, size_t __n, void *a4, const char *a5)
{
  if (*(this + 8) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = __n;
  v9 = __n + 13;
  v10 = *(this + 9);
  if (v10)
  {
    v11 = *(this + 6);
    v12 = *(this + 2);
    v13 = *(this + 8) + v9;
    v14 = v10 - v13;
    if (v10 < v13)
    {
      v15 = v13 - v10;
      v12 = reallocf(v12, v13 - v10 + v11);
      v16 = *(this + 6);
      if (v12)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 == -v15;
      }

      if (!v17)
      {
LABEL_28:
        exception = __cxa_allocate_exception(8uLL);
        v28 = std::bad_alloc::bad_alloc(exception);
      }

      v14 = 0;
      *(this + 2) = v12;
      *(this + 6) = v16 + v15;
    }

    v18 = &v12[v11 - v10];
    *(this + 9) = v14;
  }

  else
  {
    v20 = reallocf(*(this + 2), *(this + 6) + v9 + *(this + 8));
    v21 = *(this + 6);
    v22 = *(this + 8);
    if (!v20 && v22 + v21 != -13 - v6)
    {
      goto LABEL_28;
    }

    *(this + 2) = v20;
    v18 = &v20[v21];
    *(this + 6) = v21 + v9 + v22;
  }

  v18[2] = 77;
  *v18 = 20291;
  v23 = *(this + 7);
  if (v23 < 3)
  {
    v24 = v18 + 3;
  }

  else
  {
    v18[3] = 77;
    v24 = v18 + 4;
    v23 = *(this + 7);
  }

  if (v23 == 4)
  {
    v26 = bswap32(v9 & 0x7F | (((v9 >> 14) & 0x7F) << 16) & 0x80FF80FF | (((v9 >> 21) & 0x7F) << 24) | (((v9 >> 7) & 0x7F) << 8));
  }

  else
  {
    if (v23 != 3)
    {
      if (v23 == 2)
      {
        v25 = bswap32(v9);
        v24[2] = HIBYTE(v25);
        *v24 = v25 >> 8;
        v24 += 3;
      }

      goto LABEL_25;
    }

    v26 = bswap32(v9);
  }

  *v24 = v26;
  v24 += 4;
LABEL_25:
  if (*(this + 7) >= 3u)
  {
    *v24 = 0;
    v24 += 2;
  }

  *v24 = 0;
  *(v24 + 1) = 28261;
  v24[3] = 103;
  *(v24 + 4) = *a4;
  v24[12] = 0;
  memcpy(v24 + 13, __src, v6);
  result = 0;
  *(*(this + 2) + 6) = bswap32(*(this + 6) & 0x7F | (((*(this + 6) >> 14) & 0x7F) << 16) & 0x80FF80FF | (((*(this + 6) >> 21) & 0x7F) << 24) | (((*(this + 6) >> 7) & 0x7F) << 8));
  return result;
}

void GetPacketTableInfoFromID3(uint64_t a1, AudioFilePacketTableInfo *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  HIDWORD(v16) = 0;
  v13 = 4;
  if (!ID3ParserGetProperty(a1, 0, 0, 1717792372, &v13, &v16 + 4) && HIDWORD(v16))
  {
    v3 = 1;
    do
    {
      v14[0] = 1129270605;
      v14[1] = v3 - 1;
      v13 = 12;
      if (ID3ParserGetProperty(a1, 8, v14, 1718185574, &v13, v15) || (theDict = 0, v13 = 8, ID3ParserGetProperty(a1, 4, &v16, 1717854580, &v13, &theDict)))
      {
        v4 = 0;
      }

      else
      {
        Value = CFDictionaryGetValue(theDict, @"identifier");
        v8 = CFDictionaryGetValue(theDict, @"text");
        v4 = 0;
        if (Value)
        {
          v9 = v8;
          if (v8)
          {
            if (CFStringCompare(Value, @"iTunSMPB", 0))
            {
              goto LABEL_15;
            }

            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            *buffer = 0u;
            v18 = 0u;
            if (!CFStringGetCString(v9, buffer, 128, 0x201u))
            {
LABEL_15:
              v4 = 0;
            }

            else
            {
              if (!strcmp(buffer, " 00000000 00000000 00000000 0000000000000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000"))
              {
                break;
              }

              v4 = ParseiTunesSMPBData(&buffer[9], 119, a2) == 0;
            }
          }
        }

        CFRelease(theDict);
      }
    }

    while (v3++ < HIDWORD(v16) && !v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t AAAnalysisBase::ComputeNumberOfAnalysisFramesForLength(uint64_t this, uint64_t a2)
{
  if (!a2)
  {
    *(this + 56) = 1;
  }

  return this;
}

void AAAnalysisBase::~AAAnalysisBase(AAAnalysisBase *this)
{
  *this = &unk_1F0325EC0;
  MEMORY[0x193ADE5D0](this + 48);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325EC0;
  MEMORY[0x193ADE5D0](this + 48);
}

uint64_t AAAnalysisBase::AAAnalysisBase(uint64_t a1, __int128 *a2, AudioChannelLayout *a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F0325EC0;
  v8 = *a2;
  v9 = a2[1];
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 24) = v9;
  *(a1 + 8) = v8;
  CAAudioChannelLayout::CAAudioChannelLayout((a1 + 48), a3);
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  (*(*a1 + 80))(a1, a4);
  return a1;
}

uint64_t AudioFormatProperty_ValidateChannelLayout(const AudioChannelLayout *a1, unsigned int a2)
{
  if (a2 < 0xC)
  {
    return 4294967246;
  }

  mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
  if (a2 == 12)
  {
    if (mNumberChannelDescriptions)
    {
      return 4294967246;
    }
  }

  if (20 * mNumberChannelDescriptions + 12 > a2)
  {
    return 4294967246;
  }

  v27 = 0;
  Property = AudioFormatProperty_NumberOfChannelsForLayout(a1, &v27);
  if (!Property)
  {
    v6 = mNumberChannelDescriptions;
    v7 = mNumberChannelDescriptions == v27 || mNumberChannelDescriptions == 0;
    Property = v7 ? 0 : 4294967246;
    if (mNumberChannelDescriptions && mNumberChannelDescriptions == v27)
    {
      mChannelLayoutTag = a1->mChannelLayoutTag;
      inSpecifier = mChannelLayoutTag;
      if (mChannelLayoutTag == 0x10000)
      {
        outPropertyDataSize = 0;
        PropertyInfo = AudioFormatGetPropertyInfo(0x636D7062u, 4u, &a1->mChannelBitmap, &outPropertyDataSize);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        outPropertyData = 0;
        CADeprecated::CAAutoFree<unsigned char>::allocBytes(&outPropertyData, outPropertyDataSize, 1);
        v19 = outPropertyData;
        Property = AudioFormatGetProperty(0x636D7062u, 4u, &a1->mChannelBitmap, &outPropertyDataSize, outPropertyData);
        if (Property)
        {
LABEL_51:
          if (v19)
          {
            free(v19);
          }

          return Property;
        }

        v20 = a1->mNumberChannelDescriptions;
        if (v20)
        {
          v21 = 12;
          while (*(&a1->mChannelLayoutTag + v21) == *&v19[v21])
          {
            v21 += 20;
            if (!--v20)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        if (!mChannelLayoutTag)
        {
          mChannelDescriptions = a1->mChannelDescriptions;
          while (1)
          {
            mChannelLabel = mChannelDescriptions->mChannelLabel;
            ++mChannelDescriptions;
            v10 = mChannelLabel;
            if (mChannelLabel - 0x10000 < 0x40000)
            {
              goto LABEL_28;
            }

            if (v10 <= 50)
            {
              break;
            }

            if (v10 <= 199)
            {
              v15 = v10 - 51;
              v13 = v15 > 0x31;
              v14 = (1 << v15) & 0x200000000FFFFLL;
LABEL_24:
              if (v13 || v14 == 0)
              {
                return 560360820;
              }

              goto LABEL_28;
            }

            if (v10 > 300)
            {
              v17 = (v10 - 301) > 4 || v10 == 303;
              if (v17 && v10 != 500 && v10 != 400)
              {
                return 560360820;
              }
            }

            else if ((v10 - 200) >= 0xA)
            {
              return 560360820;
            }

LABEL_28:
            if (!--v6)
            {
              return 0;
            }
          }

          v12 = v10 + 1;
          v13 = v12 > 0x32;
          v14 = (1 << v12) & 0x47FFC000FFFFFLL;
          goto LABEL_24;
        }

        outPropertyDataSize = 0;
        PropertyInfo = AudioFormatGetPropertyInfo(0x636D706Cu, 4u, &inSpecifier, &outPropertyDataSize);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        outPropertyData = 0;
        CADeprecated::CAAutoFree<unsigned char>::allocBytes(&outPropertyData, outPropertyDataSize, 1);
        v19 = outPropertyData;
        Property = AudioFormatGetProperty(0x636D706Cu, 4u, &inSpecifier, &outPropertyDataSize, outPropertyData);
        if (Property)
        {
          goto LABEL_51;
        }

        v22 = a1->mNumberChannelDescriptions;
        if (v22)
        {
          v23 = 12;
          while (*(&a1->mChannelLayoutTag + v23) == *&v19[v23])
          {
            v23 += 20;
            if (!--v22)
            {
              goto LABEL_59;
            }
          }

LABEL_61:
          free(v19);
          return 4294967246;
        }
      }

      if (v19)
      {
LABEL_59:
        free(v19);
      }

      return 0;
    }
  }

  return Property;
}

void sub_18F6CDFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFormatProperty_LayoutTagForBitmap(int a1)
{
  if (a1 > 58)
  {
    if (a1 > 262)
    {
      if (a1 > 270)
      {
        if (a1 == 271)
        {
          return 8978437;
        }

        if (a1 == 319)
        {
          return 8192007;
        }
      }

      else
      {
        if (a1 == 263)
        {
          return 7536644;
        }

        if (a1 == 267)
        {
          return 8781828;
        }
      }
    }

    else if (a1 > 254)
    {
      if (a1 == 255)
      {
        return 8257544;
      }

      if (a1 == 259)
      {
        return 8585219;
      }
    }

    else
    {
      if (a1 == 59)
      {
        return 8847365;
      }

      if (a1 == 63)
      {
        return 7929862;
      }
    }

    return 0x10000;
  }

  if (a1 > 10)
  {
    if (a1 > 50)
    {
      if (a1 == 51)
      {
        return 8650756;
      }

      if (a1 == 55)
      {
        return 7667717;
      }
    }

    else
    {
      if (a1 == 11)
      {
        return 8716291;
      }

      if (a1 == 15)
      {
        return 8912900;
      }
    }

    return 0x10000;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      return 6553601;
    }

    if (a1 == 7)
    {
      return 7405571;
    }

    return 0x10000;
  }

  return 6619138;
}

uint64_t AudioFormatProperty_BitmapForLayoutTag(int a1)
{
  if (a1 > 8257543)
  {
    if (a1 > 8781827)
    {
      if (a1 > 8912899)
      {
        if (a1 == 8912900)
        {
          return 15;
        }

        if (a1 == 8978437)
        {
          return 271;
        }
      }

      else
      {
        if (a1 == 8781828)
        {
          return 267;
        }

        if (a1 == 8847365)
        {
          return 59;
        }
      }
    }

    else if (a1 > 8650755)
    {
      if (a1 == 8650756)
      {
        return 51;
      }

      if (a1 == 8716291)
      {
        return 11;
      }
    }

    else
    {
      if (a1 == 8257544)
      {
        return 255;
      }

      if (a1 == 8585219)
      {
        return 259;
      }
    }

    return 0;
  }

  if (a1 > 7536643)
  {
    if (a1 > 7929861)
    {
      if (a1 == 7929862)
      {
        return 63;
      }

      if (a1 == 8192007)
      {
        return 319;
      }
    }

    else
    {
      if (a1 == 7536644)
      {
        return 263;
      }

      if (a1 == 7667717)
      {
        return 55;
      }
    }

    return 0;
  }

  if (a1 != 6553601)
  {
    if (a1 == 6619138)
    {
      return 3;
    }

    if (a1 == 7405571)
    {
      return 7;
    }

    return 0;
  }

  return 4;
}

uint64_t AudioFormatProperty_WAVEChannelMaskForChannelLayout(const AudioChannelLayout *inSpecifier, unsigned int *a2)
{
  mChannelLayoutTag = inSpecifier->mChannelLayoutTag;
  if (inSpecifier->mChannelLayoutTag > 8716290)
  {
    if (mChannelLayoutTag > 12124163)
    {
      if (mChannelLayoutTag <= 12255237)
      {
        if (mChannelLayoutTag == 12124164)
        {
          v4 = 51;
          goto LABEL_56;
        }

        if (mChannelLayoutTag == 12189701)
        {
          v4 = 55;
          goto LABEL_56;
        }
      }

      else
      {
        switch(mChannelLayoutTag)
        {
          case 12255238:
            v4 = 63;
            goto LABEL_56;
          case 12320775:
            v4 = 1807;
            goto LABEL_56;
          case 12386312:
            v4 = 1599;
            goto LABEL_56;
        }
      }
    }

    else if (mChannelLayoutTag <= 8847364)
    {
      if (mChannelLayoutTag == 8716291)
      {
        v4 = 11;
        goto LABEL_56;
      }

      if (mChannelLayoutTag == 8781828)
      {
        v4 = 267;
        goto LABEL_56;
      }
    }

    else
    {
      switch(mChannelLayoutTag)
      {
        case 8847365:
          v4 = 1547;
          goto LABEL_56;
        case 8912900:
          v4 = 15;
          goto LABEL_56;
        case 8978437:
          v4 = 271;
          goto LABEL_56;
      }
    }

    goto LABEL_58;
  }

  if (mChannelLayoutTag > 7536643)
  {
    if (mChannelLayoutTag <= 7929861)
    {
      if (mChannelLayoutTag == 7536644)
      {
        v4 = 263;
        goto LABEL_56;
      }

      if (mChannelLayoutTag == 7667717)
      {
        v4 = 1543;
        goto LABEL_56;
      }
    }

    else
    {
      switch(mChannelLayoutTag)
      {
        case 7929862:
          v4 = 1551;
          goto LABEL_56;
        case 8585219:
          v4 = 259;
          goto LABEL_56;
        case 8650756:
          v4 = 1539;
          goto LABEL_56;
      }
    }

    goto LABEL_58;
  }

  if (mChannelLayoutTag > 6553600)
  {
    switch(mChannelLayoutTag)
    {
      case 6553601:
        v4 = 4;
        goto LABEL_56;
      case 6619138:
        v4 = 3;
        goto LABEL_56;
      case 7405571:
        v4 = 7;
LABEL_56:
        result = 0;
        *a2 = v4;
        return result;
    }

    goto LABEL_58;
  }

  if (mChannelLayoutTag)
  {
    if (mChannelLayoutTag == 0x10000)
    {
      mChannelBitmap = inSpecifier->mChannelBitmap;
      if ((mChannelBitmap & 0x630) == 0)
      {
        v6 = inSpecifier->mChannelBitmap;
LABEL_63:
        if (v6)
        {
          mChannelBitmap = v6;
        }

        goto LABEL_65;
      }

      if ((mChannelBitmap & 0x7C0) == 0)
      {
        v6 = mChannelBitmap & 0xFFFFF80F | (((mChannelBitmap >> 4) & 3) << 9);
        goto LABEL_63;
      }

LABEL_65:
      *a2 = mChannelBitmap;
      if (mChannelBitmap)
      {
        return 0;
      }

      else
      {
        return 560360820;
      }
    }

LABEL_58:
    ioPropertyDataSize = 4;
    outPropertyData = 0;
    result = AudioFormatGetProperty(0x626D7467u, 4u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
    if (result)
    {
      return result;
    }

    mChannelBitmap = outPropertyData;
    goto LABEL_65;
  }

  mNumberChannelDescriptions = inSpecifier->mNumberChannelDescriptions;
  if (!mNumberChannelDescriptions)
  {
    mChannelBitmap = 0;
    goto LABEL_65;
  }

  v8 = 0;
  mChannelBitmap = 0;
  mChannelDescriptions = inSpecifier->mChannelDescriptions;
  while (1)
  {
    mChannelLabel = mChannelDescriptions->mChannelLabel;
    ++mChannelDescriptions;
    v11 = mChannelLabel - 1;
    if (mChannelLabel - 1 > 0x21)
    {
      return 560360820;
    }

    if (((0x30003F9FFuLL >> v11) & 1) == 0)
    {
      return 560360820;
    }

    v12 = dword_18F90290C[v11];
    if (v12 <= v8)
    {
      return 560360820;
    }

    mChannelBitmap |= v12;
    v8 = v12;
    if (!--mNumberChannelDescriptions)
    {
      goto LABEL_65;
    }
  }
}

uint64_t AudioFormatProperty_LayoutTagForWAVEChannelMask(int a1, unsigned int *a2)
{
  v3 = a1;
  *a2 = 0;
  if ((a1 & 0x630) == 0)
  {
    goto LABEL_9;
  }

  if ((a1 & 0x1F0) == 0)
  {
    v3 = (a1 >> 5) & 0x30 | a1 & 0xFFFFF80F;
LABEL_9:
    result = AudioFormatProperty_LayoutTagForBitmap(v3);
    if (result == 0x10000)
    {
      *a2 = v3;
    }

    return result;
  }

  if (a1 <= 62)
  {
    if (a1 == 51)
    {
      return 12124164;
    }

    if (a1 == 55)
    {
      return 12189701;
    }
  }

  else
  {
    switch(a1)
    {
      case 63:
        return 12255238;
      case 1599:
        return 12386312;
      case 1807:
        return 12320775;
    }
  }

  return 0;
}

uint64_t AudioFormatProperty_ChannelLayoutSizeForWAVEChannelMask(int a1, unsigned int a2, int8x8_t a3)
{
  v3 = a1 & 0x3FFFF;
  a3.i32[0] = v3;
  v4 = vcnt_s8(a3);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.i32[0];
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4.i32[0];
  }

  if (v4.i32[0] <= v6)
  {
    if (v4.i32[0] != v6)
    {
      return 20 * v6 + 12;
    }
  }

  else
  {
    do
    {
      v3 &= ~(0x80000000 >> __clz(v3));
      --v5;
    }

    while (v5 > v6);
  }

  if (AudioFormatProperty_LayoutTagForWAVEChannelMask(v3, &v8))
  {
    return 32;
  }

  return 20 * v6 + 12;
}

void AudioFormatProperty_ChannelLayoutForWAVEChannelMask(int a1, unsigned int a2, AudioChannelLayout *a3, int8x8_t a4)
{
  v5 = a1 & 0x3FFFF;
  a4.i32[0] = a1 & 0x3FFFF;
  v6 = vcnt_s8(a4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.i32[0];
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v6.u32[0];
  }

  if (v6.i32[0] <= v8)
  {
    v10 = v6.i32[0];
    if (v6.i32[0] != v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v6.i32[0];
    do
    {
      v5 &= ~(0x80000000 >> __clz(v5));
      --v9;
    }

    while (v9 > v8);
    v10 = v8;
  }

  v40 = 0;
  v11 = AudioFormatProperty_LayoutTagForWAVEChannelMask(v5, &v40);
  if (v11)
  {
    v12 = v40;
    a3->mChannelLayoutTag = v11;
    *&a3->mChannelBitmap = v12;
    return;
  }

LABEL_11:
  *&a3->mChannelLayoutTag = 0;
  a3->mNumberChannelDescriptions = v8;
  mChannelDescriptions = a3->mChannelDescriptions;
  bzero(a3->mChannelDescriptions, 20 * v8);
  v14 = 0;
  if (v5)
  {
    v14 = 1;
    mChannelDescriptions->mChannelLabel = 1;
    if ((v5 & 2) == 0)
    {
LABEL_13:
      if ((v5 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_13;
  }

  v24 = v14++;
  mChannelDescriptions[v24].mChannelLabel = 2;
  if ((v5 & 4) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v25 = v14++;
  mChannelDescriptions[v25].mChannelLabel = 3;
  if ((v5 & 8) == 0)
  {
LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v26 = v14++;
  mChannelDescriptions[v26].mChannelLabel = 4;
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v27 = v14++;
  mChannelDescriptions[v27].mChannelLabel = 33;
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v28 = v14++;
  mChannelDescriptions[v28].mChannelLabel = 34;
  if ((v5 & 0x40) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v29 = v14++;
  mChannelDescriptions[v29].mChannelLabel = 7;
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v30 = v14++;
  mChannelDescriptions[v30].mChannelLabel = 8;
  if ((v5 & 0x100) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v31 = v14++;
  mChannelDescriptions[v31].mChannelLabel = 9;
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v32 = v14++;
  mChannelDescriptions[v32].mChannelLabel = 5;
  if ((v5 & 0x400) == 0)
  {
LABEL_22:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  v33 = v14++;
  mChannelDescriptions[v33].mChannelLabel = 6;
  if ((v5 & 0x800) == 0)
  {
LABEL_23:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  v34 = v14++;
  mChannelDescriptions[v34].mChannelLabel = 12;
  if ((v5 & 0x1000) == 0)
  {
LABEL_24:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  v35 = v14++;
  mChannelDescriptions[v35].mChannelLabel = 13;
  if ((v5 & 0x2000) == 0)
  {
LABEL_25:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  v36 = v14++;
  mChannelDescriptions[v36].mChannelLabel = 14;
  if ((v5 & 0x4000) == 0)
  {
LABEL_26:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  v37 = v14++;
  mChannelDescriptions[v37].mChannelLabel = 15;
  if ((v5 & 0x8000) == 0)
  {
LABEL_27:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

LABEL_61:
    v39 = v14++;
    mChannelDescriptions[v39].mChannelLabel = 17;
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_60:
  v38 = v14++;
  mChannelDescriptions[v38].mChannelLabel = 16;
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_61;
  }

LABEL_28:
  if ((v5 & 0x20000) != 0)
  {
LABEL_29:
    mChannelDescriptions[v14].mChannelLabel = 18;
  }

LABEL_30:
  if (v10 < v8)
  {
    v15 = 0;
    if (v8 >= v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = v8;
    }

    v17 = a3 + 20 * v16;
    v18 = ~v10 + v8;
    v19 = vdupq_n_s64(v18);
    v20 = (v18 + 4) & 0x1FFFFFFFCLL;
    v21 = v17 + 52;
    do
    {
      v22 = vdupq_n_s64(v15);
      v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_18F9016C0)));
      if (vuzp1_s16(v23, *v19.i8).u8[0])
      {
        *(v21 - 10) = 0;
      }

      if (vuzp1_s16(v23, *&v19).i8[2])
      {
        *(v21 - 5) = 0;
      }

      if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_18F9016B0)))).i32[1])
      {
        *v21 = 0;
        v21[5] = 0;
      }

      v15 += 4;
      v21 += 20;
    }

    while (v20 != v15);
  }

  if (v8)
  {
    do
    {
      SetDefaultChannelPosition(mChannelDescriptions++);
      --v8;
    }

    while (v8);
  }
}

int *AudioFormat_IsAmbisonicChannelLayout(int *result)
{
  if (result)
  {
    v1 = *result;
    if (*result && ((v2 = v1 & 0xFFFF0000, (v1 & 0xFFFF0000) == 0x6B0000) || v2 == 12517376 || v2 == 12451840))
    {
      return (*result != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void AudioFormatProperty_ChannelLayoutForBitmap(__int32 a1, AudioChannelLayout *a2, int8x8_t a3)
{
  *&a2->mChannelLayoutTag = 0;
  a3.i32[0] = a1;
  v5 = vcnt_s8(a3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  a2->mNumberChannelDescriptions = v5.i32[0];
  mChannelDescriptions = a2->mChannelDescriptions;
  bzero(a2->mChannelDescriptions, (20 * v5.i32[0]));
  v8 = 0;
  if (a1)
  {
    v8 = 1;
    mChannelDescriptions->mChannelLabel = 1;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v17 = v8++;
  mChannelDescriptions[v17].mChannelLabel = 2;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  v18 = v8++;
  mChannelDescriptions[v18].mChannelLabel = 3;
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  v19 = v8++;
  mChannelDescriptions[v19].mChannelLabel = 4;
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = v8++;
  mChannelDescriptions[v20].mChannelLabel = 5;
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  v21 = v8++;
  mChannelDescriptions[v21].mChannelLabel = 6;
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  v22 = v8++;
  mChannelDescriptions[v22].mChannelLabel = 7;
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  v23 = v8++;
  mChannelDescriptions[v23].mChannelLabel = 8;
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  v24 = v8++;
  mChannelDescriptions[v24].mChannelLabel = 9;
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  v25 = v8++;
  mChannelDescriptions[v25].mChannelLabel = 10;
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v26 = v8++;
  mChannelDescriptions[v26].mChannelLabel = 11;
  if ((a1 & 0x800) == 0)
  {
LABEL_13:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  v27 = v8++;
  mChannelDescriptions[v27].mChannelLabel = 12;
  if ((a1 & 0x1000) == 0)
  {
LABEL_14:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  v28 = v8++;
  mChannelDescriptions[v28].mChannelLabel = 13;
  if ((a1 & 0x2000) == 0)
  {
LABEL_15:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  v29 = v8++;
  mChannelDescriptions[v29].mChannelLabel = 14;
  if ((a1 & 0x4000) == 0)
  {
LABEL_16:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  v30 = v8++;
  mChannelDescriptions[v30].mChannelLabel = 15;
  if ((a1 & 0x8000) == 0)
  {
LABEL_17:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  v31 = v8++;
  mChannelDescriptions[v31].mChannelLabel = 16;
  if ((a1 & 0x10000) == 0)
  {
LABEL_18:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  v32 = v8++;
  mChannelDescriptions[v32].mChannelLabel = 17;
  if ((a1 & 0x20000) == 0)
  {
LABEL_19:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  v33 = v8++;
  mChannelDescriptions[v33].mChannelLabel = 18;
  if ((a1 & 0x200000) == 0)
  {
LABEL_20:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  v34 = v8++;
  mChannelDescriptions[v34].mChannelLabel = 49;
  if ((a1 & 0x800000) == 0)
  {
LABEL_21:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  v35 = v8++;
  mChannelDescriptions[v35].mChannelLabel = 51;
  if ((a1 & 0x1000000) == 0)
  {
LABEL_22:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  v36 = v8++;
  mChannelDescriptions[v36].mChannelLabel = 52;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_23:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_61:
  v37 = v8++;
  mChannelDescriptions[v37].mChannelLabel = 53;
  if ((a1 & 0x4000000) != 0)
  {
LABEL_24:
    v9 = v8++;
    mChannelDescriptions[v9].mChannelLabel = 54;
  }

LABEL_25:
  if (v8 < v6)
  {
    v10 = 0;
    v11 = v6 - v8;
    v12 = vdupq_n_s64(v11 - 1);
    v13 = (a2 + 20 * v8 + 52);
    do
    {
      v14 = vdupq_n_s64(v10);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_18F9016C0)));
      if (vuzp1_s16(v15, *v12.i8).u8[0])
      {
        v13[-2].mChannelDescriptions[0].mCoordinates[1] = NAN;
      }

      if (vuzp1_s16(v15, *&v12).i8[2])
      {
        v13[-1].mChannelDescriptions[0].mChannelLabel = -1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_18F9016B0)))).i32[1])
      {
        v13->mChannelLayoutTag = -1;
        v13->mChannelDescriptions[0].mCoordinates[0] = NAN;
      }

      v10 += 4;
      v13 = (v13 + 80);
    }

    while (((v11 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  if (a1)
  {
    if (v6 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v6;
    }

    do
    {
      SetDefaultChannelPosition(mChannelDescriptions++);
      --v16;
    }

    while (v16);
  }
}

uint64_t AudioFormat_AreChannelLayoutsEquivalent(const AudioChannelLayout *a1, const AudioChannelLayout *a2, unsigned int *a3)
{
  *a3 = 0;
  v16 = 0;
  v17 = 0;
  FullChannelLayout = AudioFormat_GetFullChannelLayout(a1, &v17);
  if (FullChannelLayout)
  {
    v6 = FullChannelLayout;
    v7 = 0;
    v8 = v17;
  }

  else
  {
    v6 = AudioFormat_GetFullChannelLayout(a2, &v16);
    v7 = v16;
    v8 = v17;
    if (!v6)
    {
      mNumberChannelDescriptions = v17->mNumberChannelDescriptions;
      if (mNumberChannelDescriptions == v16->mNumberChannelDescriptions)
      {
        if (mNumberChannelDescriptions)
        {
          v10 = 0;
          v11 = 20 * mNumberChannelDescriptions;
          while (1)
          {
            mChannelLabel = v17->mChannelDescriptions[v10 / 0x14].mChannelLabel;
            if (mChannelLabel != v16->mChannelDescriptions[v10 / 0x14].mChannelLabel || mChannelLabel == 100 && (v17->mChannelDescriptions[v10 / 0x14].mChannelFlags != v16->mChannelDescriptions[v10 / 0x14].mChannelFlags || v17->mChannelDescriptions[v10 / 0x14].mCoordinates[0] != v16->mChannelDescriptions[v10 / 0x14].mCoordinates[0] || v17->mChannelDescriptions[v10 / 0x14].mCoordinates[1] != v16->mChannelDescriptions[v10 / 0x14].mCoordinates[1] || v17->mChannelDescriptions[v10 / 0x14].mCoordinates[2] != v16->mChannelDescriptions[v10 / 0x14].mCoordinates[2]))
            {
              break;
            }

            v10 += 20;
            if (v11 == v10)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          v13 = HIWORD(v17->mChannelLayoutTag) << 16;
          v14 = HIWORD(v16->mChannelLayoutTag) << 16;
          if ((v13 != 12451840 || v14 != 12517376) && (v13 != 12517376 || v14 != 12451840))
          {
            v6 = 0;
            *a3 = 1;
            goto LABEL_19;
          }
        }
      }

      v6 = 0;
    }
  }

LABEL_19:
  free(v8);
  free(v7);
  return v6;
}

uint64_t AudioFormat_GetFullChannelLayout(const AudioChannelLayout *a1, AudioChannelLayout **a2)
{
  v10 = 0;
  v4 = AudioFormatProperty_NumberOfChannelsForLayout(a1, &v10);
  if (!v4)
  {
    v5 = 20 * v10 + 12;
    v6 = malloc_type_malloc(v5, 0x1000040E0EAB150uLL);
    *a2 = v6;
    mChannelLayoutTag = a1->mChannelLayoutTag;
    if (a1->mChannelLayoutTag == 0x10000)
    {
      AudioFormatProperty_ChannelLayoutForBitmap(a1->mChannelBitmap, v6, v7);
      return 0;
    }

    if (!mChannelLayoutTag)
    {
      memcpy(v6, a1, v5);
      return 0;
    }

    v4 = AudioFormatProperty_ChannelLayoutForTag(mChannelLayoutTag, v6);
    if (v4)
    {
      free(*a2);
      *a2 = 0;
    }
  }

  return v4;
}

uint64_t AudioFormatProperty_HashForChannelLayout(const AudioChannelLayout *a1, unsigned int *a2)
{
  *a2 = 0;
  v9 = 0;
  FullChannelLayout = AudioFormat_GetFullChannelLayout(a1, &v9);
  v4 = v9;
  if (!FullChannelLayout && v9->mNumberChannelDescriptions)
  {
    v5 = 0;
    v6 = *a2;
    v7 = &v9->mChannelDescriptions[0].mCoordinates[2];
    do
    {
      v6 = v6 - *(v7 - 4) + 8 * *(v7 - 4);
      *a2 = v6;
      if (*(v7 - 4) == 100)
      {
        v6 = ((((*(v7 - 1) * 11.0) + (*(v7 - 2) * 7.0)) + (*v7 * 13.0)) + v6);
        *a2 = v6;
      }

      ++v5;
      v7 += 5;
    }

    while (v5 < v4->mNumberChannelDescriptions);
  }

  free(v4);
  return FullChannelLayout;
}

uint64_t AudioFormatProperty_SpeakerHemispheresForChannelLayout(const AudioChannelLayout *this, const AudioChannelLayout *a2)
{
  mChannelLayoutTag = this->mChannelLayoutTag;
  if (this->mChannelLayoutTag)
  {
    v4 = CAAudioChannelLayout::NumberChannels(this, a2);
    v5 = CAAudioChannelLayout::Create(v4);
    if (this->mChannelLayoutTag == 0x10000)
    {
      AudioFormatProperty_ChannelLayoutForBitmap(this->mChannelBitmap, v5, v6);
    }

    else
    {
      AudioFormatProperty_ChannelLayoutForTag(this->mChannelLayoutTag, v5);
    }
  }

  else
  {
    v5 = this;
  }

  if (v5->mNumberChannelDescriptions)
  {
    v7 = 0;
    v8 = 0;
    mChannelDescriptions = v5->mChannelDescriptions;
    v10 = v5->mChannelLayoutTag;
    while (1)
    {
      v11 = *&mChannelDescriptions->mChannelLabel;
      v22 = mChannelDescriptions->mCoordinates[2];
      v21 = v11;
      if (!v10)
      {
        SetDefaultChannelPosition(&v21);
      }

      if (BYTE4(v21))
      {
        break;
      }

      if ((BYTE4(v21) & 2) != 0)
      {
        v12 = v8 | 2;
        if (*(&v21 + 2) <= 0.0)
        {
          v12 = v8;
        }

        if (*(&v21 + 2) < 0.0)
        {
          v12 = v8 | 1;
        }

        v13 = fabsf(*(&v21 + 2));
        v14 = v12 | 8;
        if (v13 >= 90.0)
        {
          v14 = v12;
        }

        v15 = v12 | 4;
        if (v13 > 90.0)
        {
          v8 = v15;
        }

        else
        {
          v8 = v14;
        }

        v16 = *(&v21 + 3) <= 0.0;
        if (*(&v21 + 3) >= 0.0)
        {
          goto LABEL_22;
        }

LABEL_34:
        v8 = v8 | 0x10;
      }

LABEL_35:
      ++v7;
      ++mChannelDescriptions;
      if (v7 >= v5->mNumberChannelDescriptions)
      {
        if (mChannelLayoutTag)
        {
          goto LABEL_37;
        }

        return v8;
      }
    }

    v17 = v8 | 2;
    if (*(&v21 + 2) <= 0.0)
    {
      v17 = v8;
    }

    if (*(&v21 + 2) < 0.0)
    {
      v17 = v8 | 1;
    }

    v18 = v17 | 8;
    if (*(&v21 + 3) <= 0.0)
    {
      v18 = v17;
    }

    v19 = v17 | 4;
    if (*(&v21 + 3) < 0.0)
    {
      v8 = v19;
    }

    else
    {
      v8 = v18;
    }

    v16 = v22 <= 0.0;
    if (v22 >= 0.0)
    {
LABEL_22:
      if (!v16)
      {
        v8 = v8 | 0x20;
      }

      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v8 = 0;
  if (mChannelLayoutTag)
  {
LABEL_37:
    MEMORY[0x193ADE5A0](v5);
  }

  return v8;
}

void AudioFormat_CompleteChannelLayoutWithCoordinates(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (**a1 || v3[2] <= 1u)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v4 = *(a1 + 8);
LABEL_4:
    v5 = *MEMORY[0x1E69E9840];

    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a2, v3, v4, v4 - v3);
    return;
  }

  v6 = v3 + 3;
  v4 = *(a1 + 8);
  if (v3 + 3 != v4)
  {
    v7 = v3 + 5;
    while (1)
    {
      v8 = 0;
      do
      {
        v9 = fabsf(*&v7[v8]);
      }

      while (v9 < 0.00000011921 && v8++ != 2);
      if (v9 >= 0.00000011921)
      {
        break;
      }

      v6 += 5;
      v7 += 5;
      if (v6 == v4)
      {
        goto LABEL_17;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_4;
  }

LABEL_17:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a2, v3, v4, v4 - v3);
  v11 = *a2;
  v12 = *(*a2 + 8);
  v13 = (a2[1] - *a2 - 12) / 0x14uLL;
  if (v13 < v12)
  {
LABEL_22:
    __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
  }

  v14 = v11 + 20;
  v15 = -1;
  while (++v15 < v12)
  {
    inSpecifier = *(v14 - 8);
    ioPropertyDataSize = 20;
    Property = AudioFormatGetProperty(0x6473636Cu, 4u, &inSpecifier, &ioPropertyDataSize, outPropertyData);
    if (Property)
    {
      v18 = CADefaultLog();
      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v28 = "AudioFormatChannelLayouts.cpp";
          v29 = 1024;
          v30 = 2832;
          v31 = 1024;
          v32 = inSpecifier;
          v33 = 1024;
          v34 = Property;
          _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get default coordinates for %u err: %d", buf, 0x1Eu);
        }
      }

      break;
    }

    *(v14 - 4) = v23;
    v17 = v24;
    *(v14 + 8) = v25;
    *v14 = v17;
    v14 += 20;
    v12 = *(v11 + 8);
    if (v13 < v12)
    {
      goto LABEL_22;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_18F6CF614(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t MP4BoxParser_FileType::Init(MP4BoxParser_FileType *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = MP4BoxParser::Initialize(this);
  if (!v2)
  {
    if (*(this + 5) != 1718909296)
    {
      v2 = 4294967294;
      goto LABEL_6;
    }

    if ((*(this + 3) - 129) < 0xFFFFFFFFFFFFFF93)
    {
      goto LABEL_4;
    }

    v19 = 0;
    v5 = (*(*this + 24))(this);
    v6 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v5, 8uLL, &v20);
    *(this + 7) = vrev32_s8(v20);
    v7 = *(this + 3) + 0x3FFFFFFF0;
    *(this + 16) = v7 >> 2;
    if (!(v7 >> 2))
    {
      v2 = v6;
      goto LABEL_6;
    }

    MP4BoxParser::GetDataSourceSize(*(this + 1), &v19);
    if (v8)
    {
      v2 = v8;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      *buf = 136315394;
      v22 = "MP4_BoxParser_FileType.cpp";
      v23 = 1024;
      v24 = 99;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  unable to determine data source size";
LABEL_11:
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
      goto LABEL_6;
    }

    v11 = (*(*this + 24))(this);
    if (v19 < (v11 + (v7 & 0xFFFFFFFC)) || *(this + 16) > 0x14u)
    {
LABEL_4:
      v2 = 0xFFFFFFFFLL;
      goto LABEL_6;
    }

    if (!*(this + 9))
    {
      v12 = malloc_type_malloc(v7 & 0xFFFFFFFC, 0x92CF1E95uLL);
      if ((v7 & 0xFFFFFFFC) != 0 && !v12)
      {
        exception = __cxa_allocate_exception(8uLL);
        v18 = std::bad_alloc::bad_alloc(exception);
      }

      *(this + 9) = v12;
    }

    v13 = (*(*this + 24))(this);
    DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v13 + 8, v7 & 0xFFFFFFFC, *(this + 9));
    if (DataSourceBytes)
    {
      v2 = DataSourceBytes;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      *buf = 136315394;
      v22 = "MP4_BoxParser_FileType.cpp";
      v23 = 1024;
      v24 = 107;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  unable to read compatible brand identifiers";
      goto LABEL_11;
    }

    if (*(this + 16))
    {
      v15 = 0;
      v16 = *(this + 9);
      do
      {
        v2 = 0;
        *(v16 + 4 * v15) = bswap32(*(v16 + 4 * v15));
        ++v15;
      }

      while (v15 < *(this + 16));
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_6:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void MP4BoxParser_FileType::~MP4BoxParser_FileType(MP4BoxParser_FileType *this)
{
  MP4BoxParser_FileType::~MP4BoxParser_FileType(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325F28;
  v2 = *(this + 9);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t MP4BoxParser_FileType::MP4BoxParser_FileType(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0330650;
  (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 8;
  *a1 = &unk_1F0325F28;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void swix::connection_config::~connection_config(swix::connection_config *this)
{
  if (*(this + 120) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 88);
  }

  v2 = *(this + 7);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(this + 6));
  *(this + 6) = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  if (*(this + 120) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 88);
  }

  v2 = *(this + 7);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(this + 6));
  *(this + 6) = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void XPCListener::~XPCListener(XPCListener *this)
{
  swix::connection::~connection(this);

  JUMPOUT(0x193ADF220);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::~lf_read_synchronized_write(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 24) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 9) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      *(a1 + 48) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

void std::vector<std::unique_ptr<RemoteAudioConverter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::unique_ptr<RemoteAudioConverter>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = atomic_load((a1 + 8));
    if (v3)
    {
      v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl::~table_impl(v3);
      MEMORY[0x193ADF220](v4, 0x1060C402CF69088);
    }

    std::mutex::~mutex((a1 + 48));
    v5 = *(a1 + 24);
    if (v5)
    {
      std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, v5);
      operator delete(*(a1 + 24));
    }

    return a1;
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

uint64_t std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      v6 = caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl::~table_impl(result);
      result = MEMORY[0x193ADF220](v6, 0x1060C402CF69088);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

unsigned int *caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::element_t::release(unsigned int *result)
{
  if ((atomic_fetch_add(result, 0xFFFF0000) & 0xFFFF0000) == 0x10000)
  {
    if (atomic_load(result))
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    else
    {
      caulk::mach::os_workgroup_managed::~os_workgroup_managed((result + 4));
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void AudioConverterServerGlobals::~AudioConverterServerGlobals(AudioConverterServerGlobals *this)
{
  std::unique_ptr<auoop::WorkgroupMirror>::reset[abi:ne200100](this + 18, 0);
  caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::~lf_read_synchronized_write(this + 64);

  caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::~lf_read_synchronized_write(this);
}

void caulk::synchronized<std::vector<std::unique_ptr<RemoteAudioConverter>>,std::recursive_mutex,caulk::empty_atomic_interface<std::vector<std::unique_ptr<RemoteAudioConverter>>>>::~synchronized(uint64_t a1)
{
  v2 = (a1 + 64);
  std::vector<std::unique_ptr<RemoteAudioConverter>>::__destroy_vector::operator()[abi:ne200100](&v2);

  std::recursive_mutex::~recursive_mutex(a1);
}

uint64_t std::optional<applesauce::xpc::endpoint>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    xpc_release(*a1);
    *a1 = 0;
  }

  return a1;
}

void ___ZN21AudioConverterService27setupMemoryPressureWarningsEv_block_invoke(uint64_t a1)
{
  buffer[58] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = getpid();
  v3 = proc_pid_rusage(v2, 6, buffer);
  v4 = buffer[9];
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v5 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    std::recursive_mutex::lock((v1 + 56));
    v7 = (*(v1 + 128) - *(v1 + 120)) >> 3;
    std::recursive_mutex::unlock((v1 + 56));
    v8 = atomic_load((v1 + 280));
    v10 = 136316418;
    v11 = "AudioConverterService.cpp";
    v12 = 1024;
    v13 = 136;
    v14 = 2048;
    v15 = v1;
    v16 = 2048;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterService -> %p: Memory pressure 80%% of the critical level at %llu bytes. Current number of connections: %u, Number of out-of-process converters: %u The service will shut down if the limit is exceeded.", &v10, 0x32u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void AudioConverterServiceRunInProcess(void *a1)
{
  if (AudioConverterServiceRunInProcess(void)::onceToken[0] != -1)
  {
    dispatch_once(AudioConverterServiceRunInProcess(void)::onceToken, &__block_literal_global_1412);
  }

  v2 = xpc_connection_create_from_endpoint(*(gService_0 + 40));
  if (v2)
  {
    v3 = v2;
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (object_getClass(v3) == MEMORY[0x1E69E9E68])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

LABEL_7:
  *a1 = xpc_null_create();
LABEL_9:
  xpc_release(v3);
}

void ___Z33AudioConverterServiceRunInProcessv_block_invoke(uint64_t a1, uint64_t a2, dispatch_queue_s *a3)
{
  object[18] = *MEMORY[0x1E69E9840];
  applesauce::xpc::connection::create(object, 0, a3);
  operator new();
}

void sub_18F6D04CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::valarray<float>::resize(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 8);
    if (v5 != v4)
    {
      *(a1 + 8) = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    operator new();
  }
}

float TruePeakAnalyzer::PeakValue(TruePeakAnalyzer *this)
{
  v1 = *(this + 10);
  v3 = *this;
  v2 = *(this + 1);
  if (v2 != *this)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v2 - v3) >> 7;
      if (v7 >= v5 >> 32)
      {
        TruePeak::GetStats();
        v8 = v10;
        v3 = *this;
        v2 = *(this + 1);
        v7 = (v2 - *this) >> 7;
      }

      else
      {
        v8 = *(this + 10);
      }

      if (v8 > v1)
      {
        v1 = v8;
      }

      ++v6;
      v5 += 0x100000000;
    }

    while (v6 < v7);
  }

  return v1;
}

float TruePeakAnalyzer::SamplePeakValue(TruePeakAnalyzer *this)
{
  v1 = (this + 44);
  v2 = *(this + 11);
  v4 = *this;
  v3 = *(this + 1);
  if (v3 != *this)
  {
    v6 = 0;
    v7 = 0;
    v8 = (v3 - *this) >> 7;
    do
    {
      if (v8 >= v6 >> 32)
      {
        v9 = &v11;
        TruePeak::GetStats();
        v4 = *this;
        v3 = *(this + 1);
      }

      else
      {
        v9 = v1;
      }

      if (*v9 > v2)
      {
        v2 = *v9;
      }

      ++v7;
      v8 = (v3 - v4) >> 7;
      v6 += 0x100000000;
    }

    while (v7 < v8);
  }

  return v2;
}

const void **applesauce::CF::ObjectRef<__IOSurface *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_18F6D094C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18F6D1044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x193ADE3E0](va);
  _Unwind_Resume(a1);
}

void AddApp(InterAppAudioAppInfo *a1, float a2, NSMutableArray *a3)
{
  v6 = [InterAppAudioApp alloc];
  *&v7 = a2;
  v8 = [(InterAppAudioApp *)v6 init:a1 iconSize:v7];
  [(NSMutableArray *)a3 addObject:v8];

  var2 = a1->var2;
  if (var2)
  {
    CFRelease(var2);
    a1->var2 = 0;
  }

  var3 = a1->var3;
  if (var3)
  {
    CFRelease(var3);
    a1->var3 = 0;
  }

  var4 = a1->var4;
  if (var4)
  {
    CFRelease(var4);
    a1->var4 = 0;
  }

  var5 = a1->var5;
  if (var5)
  {
    CFRelease(var5);
    a1->var5 = 0;
  }
}

void DSPGraph::Profiler::Profiler(uint64_t *a1, uint64_t *a2)
{
  DSPGraph::Profiler::Profiler(a1, a2);
}

{
  v4 = *MEMORY[0x1E69E9840];
  *a1 = *a2;
  v2 = a2[1];
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  *(a1 + 1) = 0u;
  a1[6] = 0;
  *(a1 + 2) = 0u;
  *(a1 + 14) = 1065353216;
  operator new();
}

{
  DSPGraph::Profiler::Profiler(a1, a2);
}

void sub_18F6D1834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](va);
  v9 = *(v6 + 8);
  *(v6 + 8) = 0;
  if (v9)
  {
    MEMORY[0x193ADF210](v9, 64);
  }

  MEMORY[0x193ADF220](v6, 0x1020C4062D53EE8);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::~__hash_table(v5);
  std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>>::reset[abi:ne200100](v7, 0);
  v10 = *(v4 + 8);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    DSPGraph::Graph::removeRenderCallback(*v2, *(v2 + 20));
    DSPGraph::Graph::removeRenderCallback(*v2, *(v2 + 16));
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      MEMORY[0x193ADF210](v3, 64);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t *std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    DSPGraph::Box::removeRenderCallback(*v2, *(v2 + 20));
    DSPGraph::Box::removeRenderCallback(*v2, *(v2 + 16));
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      MEMORY[0x193ADF210](v3, 64);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>::reset[abi:ne200100](v1 + 3, 0);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<DSPGraph::Profiler::TMetrics<DSPGraph::Box>::TMetrics(DSPGraph::Box*,double)::{lambda(DSPGraph::Box*,unsigned int)#2},std::allocator<DSPGraph::Profiler::TMetrics<DSPGraph::Box>::TMetrics(DSPGraph::Box*,double)::{lambda(DSPGraph::Box*,unsigned int)#2}>,void ()(DSPGraph::Box*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0326128;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<DSPGraph::Profiler::TMetrics<DSPGraph::Box>::TMetrics(DSPGraph::Box*,double)::{lambda(DSPGraph::Box*,unsigned int)#1},std::allocator<DSPGraph::Profiler::TMetrics<DSPGraph::Box>::TMetrics(DSPGraph::Box*,double)::{lambda(DSPGraph::Box*,unsigned int)#1}>,void ()(DSPGraph::Box*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F03260E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>::TMetrics(DSPGraph::Graph*,double)::{lambda(DSPGraph::Graph*,unsigned int)#2},std::allocator<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>::TMetrics(DSPGraph::Graph*,double)::{lambda(DSPGraph::Graph*,unsigned int)#2}>,void ()(DSPGraph::Graph*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0326098;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>::TMetrics(DSPGraph::Graph*,double)::{lambda(DSPGraph::Graph*,unsigned int)#1},std::allocator<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>::TMetrics(DSPGraph::Graph*,double)::{lambda(DSPGraph::Graph*,unsigned int)#1}>,void ()(DSPGraph::Graph*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0326050;
  a2[1] = v2;
  return result;
}

void DSPGraph::Profiler::~Profiler(DSPGraph::Profiler *this)
{
  if (*(this + 6))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::__deallocate_node(*(this + 5));
    *(this + 5) = 0;
    v2 = *(this + 4);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(this + 3) + 8 * i) = 0;
      }
    }

    *(this + 6) = 0;
  }

  std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>>::reset[abi:ne200100](this + 2, 0);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Box>>>>>::~__hash_table(this + 24);
  std::unique_ptr<DSPGraph::Profiler::TMetrics<DSPGraph::Graph>>::reset[abi:ne200100](this + 2, 0);
  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void DSPGraph::Profiler::copyStatistics(DSPGraph::Profiler *this@<X0>, CFDictionaryRef *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = (*this + 408);
  if (*(*this + 431) < 0)
  {
    v4 = *v4;
  }

  v17 = v4;
  DSPGraph::Metrics::getStatistics(v12, *(*(this + 2) + 8));
  DSPGraph::Profiler::copyStatistics(void)const::$_0::operator()(&v13, v12);
  v5 = v15;
  if (v15 >= v16)
  {
    v6 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<char const*,applesauce::CF::DictionaryRef>(&v14, &v17, &v13);
  }

  else
  {
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>(v15, v4, &v13);
    v6 = (v5 + 16);
  }

  v15 = v6;
  if (v13)
  {
    CFRelease(v13);
  }

  for (i = *(this + 5); i; i = *i)
  {
    v8 = DSPGraph::Graph::box(*this, i[2]);
    v9 = (v8 + 32);
    if (*(v8 + 55) < 0)
    {
      v9 = *v9;
    }

    v17 = v9;
    DSPGraph::Metrics::getStatistics(v12, *(i[3] + 8));
    DSPGraph::Profiler::copyStatistics(void)const::$_0::operator()(&v13, v12);
    v10 = v15;
    if (v15 >= v16)
    {
      v11 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<char const*,applesauce::CF::DictionaryRef>(&v14, &v17, &v13);
    }

    else
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>(v15, v9, &v13);
      v11 = (v10 + 16);
    }

    v15 = v11;
    if (v13)
    {
      CFRelease(v13);
    }
  }

  *a2 = applesauce::CF::details::make_CFDictionaryRef(&v14);
  v12[0] = &v14;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](v12);
}

void sub_18F6D20E0(_Unwind_Exception *a1)
{
  applesauce::CF::DictionaryRef::~DictionaryRef((v1 - 88));
  *(v1 - 56) = v1 - 80;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100]((v1 - 56));
  _Unwind_Resume(a1);
}

void DSPGraph::Profiler::copyStatistics(void)const::$_0::operator()(CFDictionaryRef *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(v12, "WNumBlocks", a2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v13, "WNumFrames", a2 + 1);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v14, "WCPUTime", a2 + 2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v15, "WCPUCycleCount", a2 + 3);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v16, "WCPUInstrCount", a2 + 4);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v17, "WWallClockTime", a2 + 5);
  applesauce::CF::TypeRef::TypeRef(&v18, "WPeakCPU");
  valuePtr = a2[6];
  if (!CFNumberCreate(0, kCFNumberDoubleType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v20, "WPeakCPUBlockNum", a2 + 7);
  LODWORD(valuePtr) = 0;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(&v21, "WAvgMemDelta", &valuePtr);
  v9 = 0;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(&v22, "CurrMem", &v9);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v23, "TNumBlocks", a2 + 8);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v24, "TNumFrames", a2 + 9);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v25, "TCPUTime", a2 + 10);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v26, "TCPUCycleCount", a2 + 11);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v27, "TCPUInstrCount", a2 + 12);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(v28, "TWallClockTime", a2 + 13);
  v10[0] = v12;
  v10[1] = 16;
  v4 = 0;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(v10);
  do
  {
    v5 = *&v28[v4 + 8];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *&v28[v4];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 -= 16;
  }

  while (v4 != -256);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_18F6D23E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v15 + 104));
  applesauce::CF::TypeRef::~TypeRef(v14);
  while (v14 != &a14)
  {
    v14 -= 2;
    applesauce::CF::TypeRefPair::~TypeRefPair(v14);
  }

  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>(applesauce::CF::TypeRef *a1, char *a2, const void **a3)
{
  result = applesauce::CF::TypeRef::TypeRef(a1, a2);
  v6 = *a3;
  if (v6)
  {
    result = CFRetain(v6);
  }

  *(a1 + 1) = v6;
  return result;
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<char const*,applesauce::CF::DictionaryRef>(uint64_t a1, char **a2, const void **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v7);
  }

  v14 = 0;
  v15 = 16 * v3;
  v16 = (16 * v3);
  std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>((16 * v3), *a2, a3);
  *&v16 = 16 * v3 + 16;
  v8 = *(a1 + 8);
  v9 = (16 * v3 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v14);
  return v13;
}

void sub_18F6D25CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(applesauce::CF::TypeRef *a1, char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_18F6D26AC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_18F6D2778(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  keys = 0;
  v32 = 0;
  v33 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v29 = 0;
  v30 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  v4 = keys;
  v5 = values;
  if (v3)
  {
    v6 = *a1;
    v26 = v2;
    v27 = *a1 + 16 * v3;
    v7 = v32;
    v8 = v33;
    v10 = v29;
    v9 = v30;
    do
    {
      v11 = *v6;
      if (v7 >= v8)
      {
        v12 = v7 - v4;
        v13 = (v7 - v4) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v4) >> 2 > v14)
        {
          v14 = (v8 - v4) >> 2;
        }

        if (v8 - v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v4, v12);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v6[1];
      if (v10 >= v9)
      {
        v18 = v10 - v5;
        v19 = (v10 - v5) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v5) >> 2 > v20)
        {
          v20 = (v9 - v5) >> 2;
        }

        if (v9 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v5, v18);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v6 += 2;
    }

    while (v6 != v27);
    v32 = v7;
    v33 = v8;
    v30 = v9;
    keys = v4;
    values = v5;
    v29 = v10;
    v2 = v26;
  }

  v23 = CFDictionaryCreate(0, v4, v5, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_18F6D2A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_RemoveUserData(AudioFileID *this, UInt32 a2, UInt32 a3)
{
  if (*(this + 120) == 1)
  {
    return AudioFileRemoveUserData(this[14], a2, a3);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_SetUserData(AudioFileID *this, UInt32 a2, UInt32 a3, UInt32 a4, const void *a5)
{
  if (*(this + 120) == 1)
  {
    return AudioFileSetUserData(this[14], a2, a3, a4, a5);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetUserDataAtOffset(AudioFileID *this, UInt32 a2, UInt32 a3, SInt64 a4, unsigned int *a5, void *a6)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetUserDataAtOffset(this[14], a2, a3, a4, a5, a6);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetUserData(AudioFileID *this, UInt32 a2, UInt32 a3, unsigned int *a4, void *a5)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetUserData(this[14], a2, a3, a4, a5);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetUserDataSize64(AudioFileID *this, UInt32 a2, UInt32 a3, unint64_t *a4)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetUserDataSize64(this[14], a2, a3, a4);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetUserDataSize(AudioFileID *this, UInt32 a2, UInt32 a3, unsigned int *a4)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetUserDataSize(this[14], a2, a3, a4);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_CountUserData(AudioFileID *this, UInt32 a2, unsigned int *a3)
{
  if (*(this + 120) == 1)
  {
    return AudioFileCountUserData(this[14], a2, a3);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_SetProperty(AudioFileRestrictedHandle *this, AudioFilePropertyID a2, UInt32 a3, CFDictionaryRef *inPropertyData)
{
  if (a2 == 1634495607)
  {
    if (a3 < 8)
    {
      return 561211770;
    }

    std::vector<unsigned char>::vector[abi:ne200100](v42, 0x2000);
    v9 = 0;
    v41 = 0;
    v6 = v42[0];
    do
    {
      v6 = (*(this + 7))(*(this + 6), v9, 0x2000, v6, &v41);
      if (v6)
      {
        goto LABEL_50;
      }

      if (v41 < 0xA)
      {
        break;
      }

      v6 = v42[0];
      v10 = ID3Size(v41, v42[0], v40);
      v9 += v10;
    }

    while (v10);
    AudioFileAllowListFilter::AudioFileAllowListFilter(v40, *inPropertyData);
    AudioFileFormatRegistry = GetAudioFileFormatRegistry();
    v12 = *(this + 11);
    v13 = *(this + 12);
    if (v12 == v13)
    {
      goto LABEL_34;
    }

    while (1)
    {
      AudioFileAllowListFilter::GetAllowedTypes(&v38, v40, v12);
      v14 = v38;
      v15 = v39;
      v16 = v38;
      if (v38 == v39)
      {
        v20 = 1;
        if (v38)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      while (1)
      {
        v17 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, *v16);
        if ((*(*v17 + 24))(v17, v41, v42[0]) != 1)
        {
          goto LABEL_18;
        }

        v18 = NewAudioFileHandle(v17);
        v19 = v18;
        if (!v18)
        {
          goto LABEL_18;
        }

        if (!(*(*v18 + 56))(v18, *(this + 6), *(this + 7), *(this + 8), *(this + 9), *(this + 10)))
        {
          break;
        }

        (*(*v19 + 8))(v19);
LABEL_18:
        if (++v16 == v15)
        {
          v20 = 1;
          goto LABEL_28;
        }
      }

      LODWORD(v32) = 40;
      if ((*(*v19 + 144))(v19, 1684434292, &v32, v36) || !AudioFileAllowListFilter::IsDataFormatAllowed(v40, v37))
      {
        (*(*v19 + 8))(v19);
        __p = 0;
        v34 = 0;
        v35 = 0;
        std::vector<AudioFileInfo>::__init_with_size[abi:ne200100]<AudioFileInfo*,AudioFileInfo*>(&__p, *(this + 11), *(this + 12), (*(this + 12) - *(this + 11)) >> 4);
        v6 = 1718449215;
        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }
      }

      else
      {
        v6 = 0;
        *(this + 14) = v19[2];
        *(this + 120) = 1;
      }

      v20 = 0;
LABEL_28:
      v14 = v38;
      if (v38)
      {
LABEL_29:
        operator delete(v14);
      }

LABEL_30:
      if ((v20 & 1) == 0)
      {
        goto LABEL_49;
      }

      if (++v12 == v13)
      {
        v12 = *(this + 11);
        v13 = *(this + 12);
LABEL_34:
        if (v12 == v13)
        {
LABEL_47:
          memset(v27, 0, sizeof(v27));
          std::vector<AudioFileInfo>::__init_with_size[abi:ne200100]<AudioFileInfo*,AudioFileInfo*>(v27, v12, v13, (v13 - v12) >> 4);
          v6 = 1954115647;
          if (v27[0])
          {
            operator delete(v27[0]);
          }

          goto LABEL_49;
        }

        v32 = *v12;
        AudioFileAllowListFilter::GetAllowedTypes(&v38, v40, &v32);
        v21 = v39;
        if (v38 == v39)
        {
LABEL_42:
          v26 = 1;
          goto LABEL_43;
        }

        v22 = v38;
        while (1)
        {
          v23 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, *v22);
          if ((*(*v23 + 24))(v23, v41, v42[0]))
          {
            v24 = NewAudioFileHandle(v23);
            v25 = v24;
            if (v24)
            {
              if (!(*(*v24 + 56))(v24, *(this + 6), *(this + 7), *(this + 8), *(this + 9), *(this + 10)))
              {
                v31 = 40;
                if ((*(*v25 + 144))(v25, 1684434292, &v31, v36) || !AudioFileAllowListFilter::IsDataFormatAllowed(v40, v37))
                {
                  (*(*v25 + 8))(v25);
                  v28 = 0;
                  v29 = 0;
                  v30 = 0;
                  std::vector<AudioFileInfo>::__init_with_size[abi:ne200100]<AudioFileInfo*,AudioFileInfo*>(&v28, *(this + 11), *(this + 12), (*(this + 12) - *(this + 11)) >> 4);
                  v6 = 1718449215;
                  if (v28)
                  {
                    v29 = v28;
                    operator delete(v28);
                  }
                }

                else
                {
                  v6 = 0;
                  *(this + 14) = v25[2];
                  *(this + 120) = 1;
                }

                v26 = 0;
LABEL_43:
                if (v38)
                {
                  operator delete(v38);
                }

                if (v26)
                {
                  v12 = *(this + 11);
                  v13 = *(this + 12);
                  goto LABEL_47;
                }

LABEL_49:
                AudioFileAllowListFilter::~AudioFileAllowListFilter(v40);
LABEL_50:
                if (v42[0])
                {
                  v42[1] = v42[0];
                  operator delete(v42[0]);
                }

                return v6;
              }

              (*(*v25 + 8))(v25);
            }
          }

          if (++v22 == v21)
          {
            goto LABEL_42;
          }
        }
      }
    }
  }

  if (*(this + 120) != 1)
  {
    return 4294967258;
  }

  v7 = *(this + 14);

  return AudioFileSetProperty(v7, a2, a3, inPropertyData);
}

void sub_18F6D3108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  AudioFileAllowListFilter::~AudioFileAllowListFilter(&a31);
  v33 = *(v31 - 112);
  if (v33)
  {
    *(v31 - 104) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<AudioFileInfo>::__init_with_size[abi:ne200100]<AudioFileInfo*,AudioFileInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioFileInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F6D3210(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioFileInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetProperty(AudioFileID *this, AudioFilePropertyID a2, unsigned int *a3, void *a4)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetProperty(this[14], a2, a3, a4);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_GetPropertyInfo(AudioFileID *this, AudioFilePropertyID a2, unsigned int *a3, unsigned int *a4)
{
  if (*(this + 120) == 1)
  {
    return AudioFileGetPropertyInfo(this[14], a2, a3, a4);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_WritePacketsWithDependencies(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 120) == 1)
  {
    return AudioFileWritePacketsWithDependencies(*(a1 + 112), a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_WritePackets(AudioFileID *this, Boolean a2, UInt32 a3, const AudioStreamPacketDescription *a4, SInt64 a5, unsigned int *a6, const void *a7)
{
  if (*(this + 120) == 1)
  {
    return AudioFileWritePackets(this[14], a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_ReadPacketData(AudioFileID *this, Boolean a2, unsigned int *a3, AudioStreamPacketDescription *a4, SInt64 a5, unsigned int *a6, void *a7)
{
  if (*(this + 120) == 1)
  {
    return AudioFileReadPacketData(this[14], a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_ReadPackets(AudioFileID *this, Boolean a2, unsigned int *a3, AudioStreamPacketDescription *a4, SInt64 a5, unsigned int *a6, void *a7)
{
  if (*(this + 120) == 1)
  {
    return AudioFileReadPackets(this[14], a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_WriteBytes(AudioFileID *this, Boolean a2, SInt64 a3, unsigned int *a4, const void *a5)
{
  if (*(this + 120) == 1)
  {
    return AudioFileWriteBytes(this[14], a2, a3, a4, a5);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_ReadBytes(AudioFileID *this, Boolean a2, SInt64 a3, unsigned int *a4, void *a5)
{
  if (*(this + 120) == 1)
  {
    return AudioFileReadBytes(this[14], a2, a3, a4, a5);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_Optimize(AudioFileID *this)
{
  if (*(this + 120) == 1)
  {
    return AudioFileOptimize(this[14]);
  }

  else
  {
    return 4294967258;
  }
}

uint64_t AudioFileRestrictedHandle::AFAPI_Close(AudioFileRestrictedHandle *this)
{
  if (*(this + 120) != 1)
  {
    return 4294967258;
  }

  result = AudioFileClose(*(this + 14));
  if (*(this + 120) == 1)
  {
    *(this + 120) = 0;
  }

  return result;
}

void AudioFileRestrictedHandle::~AudioFileRestrictedHandle(AudioFileID *this)
{
  AudioFileRestrictedHandle::~AudioFileRestrictedHandle(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032F4C0;
  if (*(this + 120) == 1)
  {
    AudioFileClose(this[14]);
    if (*(this + 120) == 1)
    {
      *(this + 120) = 0;
    }
  }

  v2 = this[11];
  if (v2)
  {
    this[12] = v2;
    operator delete(v2);
  }

  *this = &unk_1F032F3D8;
  v3 = this[3];
  if (v3)
  {
    this[4] = v3;
    operator delete(v3);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

int64_t AudioFileIPODLibHandle::AFAPI_GetProperty(AudioFileIPODLibHandle *this, unsigned int a2, unsigned int *a3, void *a4)
{
  v8 = IsBinaryProperty(a2);
  if ((v8 & 1) != 0 || a2 == 1633776244 || a2 == 1819243876 || a2 == 1768842863)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    v32 = 1;
    v30 = MEMORY[0x1E69E5060] + 16;
    xdict = v9;
    if (v9)
    {
      xpc_dictionary_set_uint64(v9, "type", 0x70726F70uLL);
      xpc_dictionary_set_uint64(xdict, "selector", a2);
    }

    v10 = *(this + 6);
    if (!v10[1])
    {
      goto LABEL_22;
    }

    v11 = xpc_connection_send_message_with_reply_sync(v10[1], xdict);
    v12 = v11;
    if (v11)
    {
      v13 = v11 == MEMORY[0x1E69E9E18];
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v11 == MEMORY[0x1E69E9E20])
    {
      if (!v11)
      {
LABEL_21:
        v10 = *(this + 6);
        if (!v10)
        {
LABEL_23:
          v15 = 2003334207;
          *(this + 6) = 0;
LABEL_24:
          XPC_Object::~XPC_Object(&v30);
          return v15;
        }

LABEL_22:
        (*(*v10 + 1))(v10);
        goto LABEL_23;
      }

LABEL_20:
      xpc_release(v12);
      goto LABEL_21;
    }

    if (object_getClass(v11) != MEMORY[0x1E69E9E80])
    {
      goto LABEL_20;
    }

    v29 = 1;
    v27 = MEMORY[0x1E69E5060] + 16;
    v28 = v12;
    value = xpc_dictionary_get_value(v12, "status");
    v18 = value;
    if (!value || object_getClass(value) != MEMORY[0x1E69E9EB0] || (v15 = xpc_int64_get_value(v18), !v15))
    {
      v15 = 2003334207;
      if (v28)
      {
        v19 = xpc_dictionary_get_value(v28, "data");
        v20 = v19;
        if (v19)
        {
          if (object_getClass(v19) == MEMORY[0x1E69E9E70])
          {
            length = xpc_data_get_length(v20);
            bytes_ptr = xpc_data_get_bytes_ptr(v20);
            if (HIDWORD(length))
            {
              v15 = 561211770;
            }

            else
            {
              if (v8)
              {
                if (*a3 >= length)
                {
                  v23 = length;
                }

                else
                {
                  v23 = *a3;
                }

                *a3 = v23;
                memcpy(a4, bytes_ptr, v23);
              }

              else
              {
                v26 = 1;
                v25 = CFDataCreate(0, bytes_ptr, length);
                v24 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], v25, 0, 0, 0);
                if (!v24)
                {
                  CACFData::~CACFData(&v25);
                  v15 = 1667787583;
                  goto LABEL_43;
                }

                *a3 = 8;
                *a4 = v24;
                CACFData::~CACFData(&v25);
              }

              v15 = 0;
            }
          }
        }
      }
    }

LABEL_43:
    XPC_Object::~XPC_Object(&v27);
    goto LABEL_24;
  }

  return 1886681407;
}

void sub_18F6D388C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  CACFData::~CACFData(&a9);
  XPC_Object::~XPC_Object(&a11);
  XPC_Object::~XPC_Object(&a14);
  _Unwind_Resume(a1);
}

uint64_t IsBinaryProperty(int a1)
{
  result = 1;
  if (a1 <= 1718775914)
  {
    if (a1 <= 1684434291)
    {
      if (a1 <= 1652125802)
      {
        if (a1 == 1650683508)
        {
          return result;
        }

        v3 = 1651663220;
        goto LABEL_31;
      }

      if (a1 == 1652125803 || a1 == 1667787108)
      {
        return result;
      }

      v3 = 1668112752;
    }

    else if (a1 > 1701082481)
    {
      if (a1 == 1701082482 || a1 == 1717988724)
      {
        return result;
      }

      v3 = 1718383476;
    }

    else
    {
      if (a1 == 1684434292 || a1 == 1685022310)
      {
        return result;
      }

      v3 = 1685289589;
    }

LABEL_31:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 > 1886086769)
  {
    if (a1 > 1886616164)
    {
      if (a1 == 1886616165 || a1 == 1920168566)
      {
        return result;
      }

      v3 = 1935832164;
    }

    else
    {
      if (a1 == 1886086770 || a1 == 1886090594)
      {
        return result;
      }

      v3 = 1886283375;
    }

    goto LABEL_31;
  }

  if (a1 > 1869640812)
  {
    if (a1 == 1869640813 || a1 == 1885564532)
    {
      return result;
    }

    v3 = 1886085753;
    goto LABEL_31;
  }

  if (a1 != 1718775915 && a1 != 1768174452)
  {
    v3 = 1835493731;
    goto LABEL_31;
  }

  return result;
}

void CACFData::~CACFData(CACFData *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

int64_t AudioFileIPODLibHandle::AFAPI_GetPropertyInfo(AudioFileIPODLibHandle *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  if ((IsBinaryProperty(a2) & 1) == 0 && a2 != 1633776244 && a2 != 1819243876 && a2 != 1768842863)
  {
    return 1886681407;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  v27 = 1;
  v25 = MEMORY[0x1E69E5060] + 16;
  xdict = v8;
  if (v8)
  {
    xpc_dictionary_set_uint64(v8, "type", 0x696E666FuLL);
    xpc_dictionary_set_uint64(xdict, "selector", a2);
  }

  v9 = *(this + 6);
  if (!v9[1])
  {
    goto LABEL_22;
  }

  v10 = xpc_connection_send_message_with_reply_sync(v9[1], xdict);
  v11 = v10;
  if (v10)
  {
    v12 = v10 == MEMORY[0x1E69E9E18];
  }

  else
  {
    v12 = 1;
  }

  if (v12 || v10 == MEMORY[0x1E69E9E20])
  {
    if (!v10)
    {
LABEL_21:
      v9 = *(this + 6);
      if (!v9)
      {
LABEL_23:
        *(this + 6) = 0;
        XPC_Object::~XPC_Object(&v25);
        return 2003334207;
      }

LABEL_22:
      (*(*v9 + 1))(v9);
      goto LABEL_23;
    }

LABEL_20:
    xpc_release(v11);
    goto LABEL_21;
  }

  if (object_getClass(v10) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_20;
  }

  v24 = 1;
  v22 = MEMORY[0x1E69E5060] + 16;
  v23 = v11;
  value = xpc_dictionary_get_value(v11, "status");
  v17 = value;
  if (!value || object_getClass(value) != MEMORY[0x1E69E9EB0] || (v14 = xpc_int64_get_value(v17), !v14))
  {
    if (a4)
    {
      if (v23)
      {
        v18 = xpc_dictionary_get_value(v23, "writable");
        v19 = v18;
        if (v18)
        {
          if (object_getClass(v18) == MEMORY[0x1E69E9F18])
          {
            *a4 = xpc_uint64_get_value(v19);
          }
        }
      }
    }

    if (a3 && v23 && (v20 = xpc_dictionary_get_value(v23, "size"), (v21 = v20) != 0) && object_getClass(v20) == MEMORY[0x1E69E9F18])
    {
      v14 = 0;
      *a3 = xpc_uint64_get_value(v21);
    }

    else
    {
      v14 = 0;
    }
  }

  XPC_Object::~XPC_Object(&v22);
  XPC_Object::~XPC_Object(&v25);
  return v14;
}

void sub_18F6D3D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  XPC_Object::~XPC_Object(&a9);
  XPC_Object::~XPC_Object(&a12);
  _Unwind_Resume(a1);
}

int64_t AudioFileIPODLibHandle::AFAPI_ReadPacketData(AudioFileIPODLibHandle *this, unsigned __int8 a2, unsigned int *a3, AudioStreamPacketDescription *a4, int64_t a5, unsigned int *a6, void *a7)
{
  v13 = xpc_dictionary_create(0, 0, 0);
  v56 = 1;
  v54 = MEMORY[0x1E69E5060] + 16;
  xdict = v13;
  if (v13)
  {
    xpc_dictionary_set_uint64(v13, "type", 0x72656164uLL);
    xpc_dictionary_set_uint64(xdict, "numbytes", *a3);
    xpc_dictionary_set_uint64(xdict, "numpackets", *a6);
    xpc_dictionary_set_int64(xdict, "startingPacket", a5);
  }

  v14 = *(this + 6);
  if (!v14[1])
  {
    goto LABEL_17;
  }

  v15 = xpc_connection_send_message_with_reply_sync(v14[1], xdict);
  v16 = v15;
  if (v15)
  {
    v17 = v15 == MEMORY[0x1E69E9E18];
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v15 != MEMORY[0x1E69E9E20])
  {
    if (object_getClass(v15) != MEMORY[0x1E69E9E80])
    {
      goto LABEL_15;
    }

    v53 = 1;
    v51 = MEMORY[0x1E69E5060] + 16;
    v52 = v16;
    value = xpc_dictionary_get_value(v16, "status");
    v22 = value;
    if (value)
    {
      if (object_getClass(value) == MEMORY[0x1E69E9EB0])
      {
        v19 = xpc_int64_get_value(v22);
        if (v19)
        {
LABEL_58:
          XPC_Object::~XPC_Object(&v51);
          XPC_Object::~XPC_Object(&v54);
          return v19;
        }
      }
    }

    if (v52)
    {
      v23 = xpc_dictionary_get_value(v52, "status");
      v24 = v23;
      if (v23 && object_getClass(v23) == MEMORY[0x1E69E9EB0])
      {
        xpc_int64_get_value(v24);
      }

      v25 = xpc_dictionary_get_value(v52, "numbytes");
      v26 = v25;
      v27 = MEMORY[0x1E69E9F18];
      if (v25 && object_getClass(v25) == v27)
      {
        *a3 = xpc_uint64_get_value(v26);
      }

      if (v52)
      {
        v28 = xpc_dictionary_get_value(v52, "numpackets");
        v29 = v28;
        if (v28)
        {
          if (object_getClass(v28) == v27)
          {
            *a6 = xpc_uint64_get_value(v29);
          }
        }
      }
    }

    v48 = 2;
    v47 = &unk_1F0326280;
    v49 = -1;
    v50 = 1;
    if (!v52)
    {
      goto LABEL_36;
    }

    v30 = xpc_dictionary_get_value(v52, "bufsize");
    v31 = v30;
    if (!v30)
    {
      goto LABEL_37;
    }

    if (object_getClass(v30) == MEMORY[0x1E69E9F18])
    {
      LODWORD(v31) = xpc_uint64_get_value(v31);
    }

    else
    {
LABEL_36:
      LODWORD(v31) = 0;
    }

LABEL_37:
    v32 = xpc_dictionary_dup_fd(v52, "bufFD");
    if (v32 >= 1)
    {
      HIDWORD(v48) = v31;
      v49 = v32;
    }

    if (*(this + 112) == 1)
    {
      CAAssertRtn();
    }

    else
    {
      if (v47[2](&v47))
      {
        (*(*(this + 7) + 16))(this + 56);
        inited = SharableMemoryBlock::InitClient();
        if (inited)
        {
          AudioFileIPODLibHandle::Fail(this, inited);
        }
      }

      v34 = *(this + 10);
      v35 = *v34;
      v36 = *(this + 15);
      if (v36)
      {
        v37 = *v36;
        if (*v36 >= v35)
        {
LABEL_47:
          if (v35 - 1 >= v37)
          {
            v44 = 0;
          }

          else
          {
            v38 = v34 + 8;
            *v36 = v35;
            v39 = v36 + 16;
            v41 = v34[2];
            v40 = v34[3];
            v42 = v34[1];
            v43 = v35;
            do
            {
              *v39 = v38;
              v38 = (v38 + v41);
              *(v39 - 2) = v42;
              *(v39 - 1) = v40;
              v39 += 2;
              --v43;
            }

            while (v43);
            if (v34[4])
            {
              v44 = v38;
            }

            else
            {
              v44 = 0;
            }
          }

          memcpy(a7, *(v36 + 2), *a3);
          if (a4 && v44)
          {
            memcpy(a4, v44, 16 * *a6);
          }

          SharableMemoryBlock::FDClientToken::~FDClientToken(&v47);
          v19 = 0;
          goto LABEL_58;
        }

        free(v36);
        *(this + 15) = 0;
      }

      v36 = malloc_type_malloc(16 * (v35 - 1) + 24, 0xBAAF0B94uLL);
      if (v36)
      {
        *(this + 15) = v36;
        *v36 = v35;
        v34 = *(this + 10);
        v37 = v35;
        v35 = *v34;
        goto LABEL_47;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v46 = std::bad_alloc::bad_alloc(exception);
  }

  if (v15)
  {
LABEL_15:
    xpc_release(v16);
  }

  v14 = *(this + 6);
  if (v14)
  {
LABEL_17:
    (*(*v14 + 1))(v14);
  }

  *(this + 6) = 0;
  XPC_Object::~XPC_Object(&v54);
  return 2003334207;
}

void sub_18F6D42DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  SharableMemoryBlock::FDClientToken::~FDClientToken(va);
  XPC_Object::~XPC_Object(va1);
  XPC_Object::~XPC_Object(va2);
  _Unwind_Resume(a1);
}

void AudioFileIPODLibHandle::Fail(AudioFileIPODLibHandle *this, int a2)
{
  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(this + 6) = 0;
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = a2;
  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
}

void SharableMemoryBlock::FDClientToken::~FDClientToken(SharableMemoryBlock::FDClientToken *this)
{
  *this = &unk_1F0326280;
  if (*(this + 20) == 1)
  {
    SharableMemoryBlock::FDClientToken::Reset(this);
  }
}

{
  SharableMemoryBlock::FDClientToken::~FDClientToken(this);

  JUMPOUT(0x193ADF220);
}

int64_t AudioFileIPODLibHandle::AFAPI_Close(AudioFileIPODLibHandle *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v16 = 1;
  v14 = MEMORY[0x1E69E5060] + 16;
  message = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "type", 0x636C6F73uLL);
  }

  v3 = *(this + 6);
  if (!v3[1])
  {
    goto LABEL_17;
  }

  v4 = xpc_connection_send_message_with_reply_sync(v3[1], message);
  v5 = v4;
  if (v4)
  {
    v6 = v4 == MEMORY[0x1E69E9E18];
  }

  else
  {
    v6 = 1;
  }

  if (v6 || v4 == MEMORY[0x1E69E9E20])
  {
    if (!v4)
    {
LABEL_16:
      v3 = *(this + 6);
      if (!v3)
      {
LABEL_18:
        *(this + 6) = 0;
        XPC_Object::~XPC_Object(&v14);
        return 2003334207;
      }

LABEL_17:
      (*(*v3 + 1))(v3);
      goto LABEL_18;
    }

LABEL_15:
    xpc_release(v5);
    goto LABEL_16;
  }

  if (object_getClass(v4) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_15;
  }

  v13 = 1;
  v12[0] = MEMORY[0x1E69E5060] + 16;
  v12[1] = v5;
  value = xpc_dictionary_get_value(v5, "status");
  v11 = value;
  if (!value || object_getClass(value) != MEMORY[0x1E69E9EB0] || (v8 = xpc_int64_get_value(v11), !v8))
  {
    v8 = 0;
  }

  XPC_Object::~XPC_Object(v12);
  XPC_Object::~XPC_Object(&v14);
  return v8;
}

void sub_18F6D45F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  XPC_Object::~XPC_Object(&a9);
  XPC_Object::~XPC_Object(&a12);
  _Unwind_Resume(a1);
}

void AudioFileIPODLibHandle::~AudioFileIPODLibHandle(AudioFileIPODLibHandle *this)
{
  AudioFileIPODLibHandle::~AudioFileIPODLibHandle(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0326170;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 6) = 0;
  }

  SharedAudioBufferList::~SharedAudioBufferList((this + 56));
  *this = &unk_1F032F3D8;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void SharedAudioBufferList::~SharedAudioBufferList(SharedAudioBufferList *this)
{
  *this = &unk_1F0326258;
  v2 = *(this + 8);
  if (v2)
  {
    free(v2);
    *(this + 8) = 0;
  }

  SharableMemoryBlock::~SharableMemoryBlock(this);
}

{
  SharedAudioBufferList::~SharedAudioBufferList(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AudioFileObjectHandle::AFAPI_RemoveUserData(AudioFileObjectHandle *this)
{
  v1 = *(this + 6);
  if ((v1[100] & 2) != 0)
  {
    return (*(*v1 + 608))();
  }

  else
  {
    return 1886547263;
  }
}

uint64_t AudioFileObjectHandle::AFAPI_SetUserData(AudioFileObjectHandle *this, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v5 = *(this + 6);
  if ((v5[100] & 2) != 0)
  {
    return (*(*v5 + 600))(v5, a2, a3, a4, a5);
  }

  else
  {
    return 1886547263;
  }
}

uint64_t AudioFileObjectHandle::AFAPI_SetProperty(AudioFileObjectHandle *this, int a2, unsigned int a3, const void *a4)
{
  v4 = *(this + 6);
  if (a2 == 1969321067 || (v4[100] & 2) != 0)
  {
    return (*(*v4 + 176))();
  }

  else
  {
    return 1886547263;
  }
}

uint64_t AudioFileObjectHandle::AFAPI_WritePacketsWithDependencies(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((v1[100] & 2) != 0)
  {
    return (*(*v1 + 152))(v1);
  }

  else
  {
    return 1886547263;
  }
}

uint64_t AudioFileObjectHandle::AFAPI_WriteBytes(AudioFileObjectHandle *this, uint64_t a2, uint64_t a3, unsigned int *a4, const void *a5)
{
  v5 = *(this + 6);
  if (v5[10])
  {
    return (*(*v5 + 80))(v5, a2, a3, a4, a5);
  }

  else
  {
    return 1869627199;
  }
}

uint64_t AudioFileObjectHandle::AFAPI_Initialize(AudioFileObjectHandle *this, const __CFURL *a2, const AudioStreamBasicDescription *a3, uint64_t a4)
{
  v7 = *(this + 6);
  AudioFileObject::SetURL(v7, a2);
  *(v7 + 100) = 3;
  *(v7 + 138) = (a4 & 2) == 0;
  v8 = *(*v7 + 32);

  return v8(v7, a2, a3, a4);
}

Class ___ZN22AudioFileIPODLibHandleC2EPK7__CFURLj_block_invoke(int a1, id a2)
{
  if (a2 != MEMORY[0x1E69E9E20] && a2 != 0 && a2 != MEMORY[0x1E69E9E18])
  {
    return object_getClass(a2);
  }

  return result;
}

Class ___ZN22AudioFileIPODLibHandleC2EPK7__CFURLj_block_invoke_2(int a1, id a2)
{
  if (a2)
  {
    return object_getClass(a2);
  }

  return result;
}

void AudioFileHandle::~AudioFileHandle(AudioFileHandle *this)
{
  *this = &unk_1F032F3D8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t MP4BoxParser_TrackFragmentHeader::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) != 1952868452)
    {
      return 4294967294;
    }

    v3 = (*(*this + 3))(this);
    result = MP4BoxParser::ReadDataSourceBytes(this[1], v3, 4uLL, this + 60);
    *(this + 15) = bswap32(*(this + 15));
    v4 = v3 + 4;
    v5 = *(this + 59);
    if (v5)
    {
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v3 + 4, 8uLL, this + 8);
      this[8] = bswap64(this[8]);
      v4 = v3 + 12;
      v5 = *(this + 59);
    }

    else if ((*(this + 57) & 2) != 0)
    {
      *(this + 89) = 1;
    }

    v6 = 0;
    if ((v5 & 2) != 0)
    {
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v4, 4uLL, &v6);
      *(this + 18) = bswap32(v6);
      v4 += 4;
      v5 = *(this + 59);
      if ((v5 & 8) == 0)
      {
LABEL_10:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    result = MP4BoxParser::ReadDataSourceBytes(this[1], v4, 4uLL, &v6);
    *(this + 19) = bswap32(v6);
    v4 += 4;
    v5 = *(this + 59);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
LABEL_13:
        *(this + 88) = (*(this + 57) & 1) == 0;
        return result;
      }

LABEL_12:
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v4, 4uLL, &v6);
      *(this + 21) = bswap32(v6);
      goto LABEL_13;
    }

LABEL_17:
    result = MP4BoxParser::ReadDataSourceBytes(this[1], v4, 4uLL, &v6);
    *(this + 20) = bswap32(v6);
    v4 += 4;
    if ((*(this + 59) & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return result;
}

void MP4BoxParser_TrackFragmentHeader::~MP4BoxParser_TrackFragmentHeader(MP4BoxParser_TrackFragmentHeader *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t MP4BoxParser_TrackFragmentHeader::MP4BoxParser_TrackFragmentHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 8;
  *a1 = &unk_1F03262A8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 72) = -1;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0;
  return a1;
}

uint64_t clientParamToFixedParam(int a1)
{
  result = 0;
  if (a1 > 1014)
  {
    if (a1 > 2000)
    {
      if (a1 <= 2010)
      {
        if (a1 != 2001)
        {
          if (a1 != 2010)
          {
            return result;
          }

          return 333;
        }

        return 331;
      }

      if (a1 != 2011)
      {
        if (a1 != 2012)
        {
          return result;
        }

        return 335;
      }

      return 334;
    }

    if (a1 == 1015)
    {
      return 332;
    }

    if (a1 == 1016)
    {
      return 337;
    }

    if (a1 != 2000)
    {
      return result;
    }

    return 330;
  }

  if (a1 <= 1010)
  {
    if (a1 != 1000)
    {
      if (a1 != 1001)
      {
        if (a1 != 1010)
        {
          return result;
        }

        return 333;
      }

      return 331;
    }

    return 330;
  }

  switch(a1)
  {
    case 1011:
      return 334;
    case 1012:
      return 335;
    case 1013:
      return 336;
    default:
      return 0;
  }
}

float clientParamValueToFixedParamValue(int a1, float result)
{
  if (a1 == 1015 || a1 == 1001)
  {
    return result * 0.5 + 0.5;
  }

  return result;
}

uint64_t clientParamToSynthParam(int a1, int *a2, float *a3, float a4)
{
  if (a1 > 1019)
  {
    v7 = 4294967292;
    if (a1 <= 2009)
    {
      switch(a1)
      {
        case 1020:
          return v7;
        case 2000:
          v28 = fminf(a4, 1.0);
          v25 = a4 <= 0.0;
          v6 = 0.0;
          if (!v25)
          {
            v6 = v28;
          }

          a1 = 5002;
          if (!a2)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
        case 2001:
          v12 = fminf(a4, 1.0);
          if (a4 <= -1.0)
          {
            v13 = -1.0;
          }

          else
          {
            v13 = v12;
          }

          v6 = v13 * 0.5 + 0.5;
          a1 = 5003;
          if (!a2)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
      }
    }

    else
    {
      if (a1 <= 2011)
      {
        if (a1 == 2010)
        {
          v18 = fminf(a4, 1.0);
          if (a4 <= -1.0)
          {
            v19 = -1.0;
          }

          else
          {
            v19 = v18;
          }

          v6 = (v19 * 63.5) + 63.5;
          a1 = 79;
          if (!a2)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v8 = fminf(a4, 1.0);
          if (a4 <= -1.0)
          {
            v9 = -1.0;
          }

          else
          {
            v9 = v8;
          }

          v6 = (v9 * 63.5) + 63.5;
          a1 = 80;
          if (!a2)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_77;
      }

      if (a1 == 2012)
      {
        v22 = fminf(a4, 1.0);
        if (a4 <= -1.0)
        {
          v23 = -1.0;
        }

        else
        {
          v23 = v22;
        }

        v6 = (v23 * 63.5) + 63.5;
        a1 = 81;
        if (!a2)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      if (a1 == 2020)
      {
        return v7;
      }
    }

    goto LABEL_43;
  }

  if (a1 <= 1010)
  {
    switch(a1)
    {
      case 1000:
        v24 = fminf(a4, 1.0);
        v25 = a4 <= 0.0;
        v6 = 0.0;
        if (!v25)
        {
          v6 = v24;
        }

        a1 = 5000;
        if (!a2)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      case 1001:
        v26 = fminf(a4, 1.0);
        if (a4 <= -1.0)
        {
          v27 = -1.0;
        }

        else
        {
          v27 = v26;
        }

        v6 = v27 * 0.5 + 0.5;
        a1 = 5001;
        if (!a2)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      case 1010:
        v10 = fminf(a4, 1.0);
        if (a4 <= -1.0)
        {
          v11 = -1.0;
        }

        else
        {
          v11 = v10;
        }

        v6 = (v11 * 63.5) + 63.5;
        a1 = 73;
        if (!a2)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
    }

    goto LABEL_43;
  }

  if (a1 > 1012)
  {
    if (a1 == 1013)
    {
      v20 = fminf(a4, 1.0);
      if (a4 <= -1.0)
      {
        v21 = -1.0;
      }

      else
      {
        v21 = v20;
      }

      v6 = v21 * 0.5 + 0.5;
      a1 = 5004;
      if (!a2)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if (a1 == 1015)
    {
      v14 = fminf(a4, 1.0);
      if (a4 <= -1.0)
      {
        v15 = -1.0;
      }

      else
      {
        v15 = v14;
      }

      v6 = v15 * 0.5 + 0.5;
      a1 = 5011;
      if (!a2)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

LABEL_43:
    if (a1 > 0xFF)
    {
      return 4294962494;
    }

    v30 = fminf(a4, 1.0) * 127.0;
    v25 = a4 <= 0.0;
    v6 = 0.0;
    if (!v25)
    {
      v6 = v30;
    }

    if (!a2)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (a1 == 1011)
  {
    v16 = fminf(a4, 1.0);
    if (a4 <= -1.0)
    {
      v17 = -1.0;
    }

    else
    {
      v17 = v16;
    }

    v6 = (v17 * 63.5) + 63.5;
    a1 = 75;
    if (!a2)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v4 = fminf(a4, 1.0);
    if (a4 <= -1.0)
    {
      v5 = -1.0;
    }

    else
    {
      v5 = v4;
    }

    v6 = (v5 * 63.5) + 63.5;
    a1 = 72;
    if (!a2)
    {
      goto LABEL_78;
    }
  }

LABEL_77:
  *a2 = a1;
LABEL_78:
  v7 = 0;
  if (a3)
  {
    *a3 = v6;
  }

  return v7;
}

void acv2::AudioConverterBase::description(acv2::AudioConverterBase *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = (*(*this + 56))(this);
  if (v4)
  {
    v5 = v4;
    CFRetain(v4);
    v35 = v5;
    v6 = CFGetTypeID(v5);
    if (v6 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v35 = 0;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "  ", 2);
  if (!v35)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "Could not construct");
  }

  v8 = __p;
  applesauce::CF::convert_to<std::string,0>(__p, v35);
  if (SBYTE7(v22) < 0)
  {
    v8 = __p[0];
  }

  v9 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " ", 1);
  v10 = MEMORY[0x193ADEE30](&v26, this);
  LOBYTE(v24[0]) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v24, 1);
  if (SBYTE7(v22) < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Input:  ", 8);
  v11 = *(this + 2);
  *__p = *(this + 1);
  v22 = v11;
  v23 = *(this + 6);
  v12 = v24;
  CA::StreamDescription::AsString(v24, __p, *__p, *&v11);
  if (v25 < 0)
  {
    v12 = v24[0];
  }

  v13 = strlen(v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v12, v13);
  v36 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, &v36, 1);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Output: ", 8);
  v14 = *(this + 72);
  *__p = *(this + 56);
  v22 = v14;
  v23 = *(this + 11);
  v15 = v24;
  CA::StreamDescription::AsString(v24, __p, *__p, *&v14);
  if (v25 < 0)
  {
    v15 = v24[0];
  }

  v16 = strlen(v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v15, v16);
  v36 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, &v36, 1);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if ((v33 & 0x10) != 0)
  {
    v18 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v18 = v29;
    }

    locale = v28[4].__locale_;
  }

  else
  {
    if ((v33 & 8) == 0)
    {
      v17 = 0;
      a2[23] = 0;
      goto LABEL_31;
    }

    locale = v28[1].__locale_;
    v18 = v28[3].__locale_;
  }

  v17 = v18 - locale;
  if ((v18 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  a2[23] = v17;
  if (v17)
  {
    memmove(a2, locale, v17);
  }

LABEL_31:
  a2[v17] = 0;
  v26 = *MEMORY[0x1E69E54E8];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v27 = MEMORY[0x1E69E5548] + 16;
  if (v31 < 0)
  {
    operator delete(v30);
  }

  v27 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v28);
  std::ostream::~ostream();
  MEMORY[0x193ADF120](&v34);
  if (v35)
  {
    CFRelease(v35);
  }
}

void sub_18F6D5800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v25 - 64));
  _Unwind_Resume(a1);
}

void acv2::AudioConverterBase::createCapturer(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = getenv("TMPDIR");
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = "/tmp";
  }

  v11 = getpid();
  v12 = acv2::AudioConverterBase::createCapturer(char const*,std::unique_ptr<AudioConverterCapturer> &,CA::StreamDescription const&,void *)::counter++;
  snprintf(__str, 0x80uLL, "%s/%d-%d-%d-%.f-%p%s.caf", v10, v11, v12, *(a4 + 28), *a4, a5, a2);
  std::string::basic_string[abi:ne200100]<0>(a1, __str);
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v13 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v16 = "AudioConverterBase.cpp";
    v17 = 1024;
    v18 = 68;
    v19 = 2080;
    v20 = __str;
    v21 = 2048;
    v22 = a5;
    _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Opening capturer %s for converter -> %p", buf, 0x26u);
  }

  operator new();
}

void sub_18F6D5E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x193ADF220](v23, 0x1032C40BE2BDED3);
  if (*(a17 + 23) < 0)
  {
    operator delete(*a17);
  }

  _Unwind_Resume(a1);
}

uint64_t MP4BoxParser_TrackFragment::Init(MP4BoxParser_TrackFragment *this)
{
  v2 = MP4BoxParser::Initialize(this);
  if (!v2)
  {
    if (*(this + 5) == 1953653094)
    {
      if (*(this + 64) == 1)
      {
        operator new();
      }

      v2 = 0;
      if ((*(**(this + 1) + 144))(*(this + 1)))
      {
        operator new();
      }
    }

    else
    {
      return 4294967294;
    }
  }

  return v2;
}

void MP4BoxParser_TrackFragment::~MP4BoxParser_TrackFragment(MP4BoxParser_TrackFragment *this)
{
  MP4BoxParser_TrackFragment::~MP4BoxParser_TrackFragment(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03262D8;
  if (*(this + 64) == 1)
  {
    v2 = *(this + 9);
    if (v2)
    {
      std::__list_imp<MP4BoxInfo>::clear(*(this + 9));
      MEMORY[0x193ADF220](v2, 0x1020C4062D53EE8);
    }
  }

  v3 = *(this + 10);
  if (v3)
  {
    CompressedPacketTable::~CompressedPacketTable(v3);
    MEMORY[0x193ADF220]();
  }

  v4 = *(this + 27);
  if (v4)
  {
    *(this + 28) = v4;
    operator delete(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    *(this + 24) = v5;
    operator delete(v5);
  }

  v6 = *(this + 20);
  if (v6)
  {
    *(this + 21) = v6;
    operator delete(v6);
  }

  v7 = *(this + 16);
  if (v7)
  {
    *(this + 17) = v7;
    operator delete(v7);
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

void std::__list_imp<MP4BoxInfo>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[6];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t MP4BoxParser_TrackFragment::GetTrackID(MP4BoxParser_TrackFragment *this, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a2 || (v2 = *(a2 + 8), v2 == a2))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  while (*(v2 + 16) != 1952868452)
  {
    v2 = *(v2 + 8);
    if (v2 == a2)
    {
      goto LABEL_9;
    }
  }

  MP4BoxParser_TrackFragmentHeader::MP4BoxParser_TrackFragmentHeader(&v8, this, *(v2 + 32));
  if (MP4BoxParser_TrackFragmentHeader::Init(&v8))
  {
    v3 = v9;
    v8 = &unk_1F0330650;
    v9 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    goto LABEL_9;
  }

  v4 = v10;
  v7 = v9;
  v8 = &unk_1F0330650;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_18F6D63CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_TrackFragment::ParsePackets(uint64_t this)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(this + 88))
  {
    goto LABEL_2;
  }

  v2 = this;
  v3 = *(this + 72);
  v4 = *(v3 + 8);
  if (v4 == v3)
  {
    goto LABEL_2;
  }

  while (*(v4 + 16) != 1952868452)
  {
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_2;
    }
  }

  MP4BoxParser_TrackFragmentHeader::MP4BoxParser_TrackFragmentHeader(&v60, *(this + 8), *(v4 + 32));
  if (!MP4BoxParser_TrackFragmentHeader::Init(&v60))
  {
    v5 = v62;
    if (v62 != -1)
    {
LABEL_12:
      v7 = v63;
      v6 = v64;
      if (v63 == -1 && (v7 = *(v2 + 272), v7 == -1))
      {
        v7 = 0;
      }

      else if (v7)
      {
        *(v2 + 248) = v7;
      }

      if (v6 == -1)
      {
        v8 = *(v2 + 276);
        v46 = v8 != -1;
        if (v8 == -1)
        {
          v6 = 0;
        }

        else
        {
          v6 = *(v2 + 276);
        }
      }

      else
      {
        v46 = 1;
      }

      if (v65 == 1)
      {
        v9 = *(v2 + 72);
        v10 = *(v9 + 8);
        if (v10 != v9)
        {
          v44 = v7;
          v45 = v6;
          v11 = 0;
          v12 = v5;
          v43 = v5;
          while (1)
          {
            v13 = 0;
            v14 = v10;
            do
            {
              if (*(v14 + 16) == 1953658222)
              {
                ++v13;
              }

              v14 = *(v14 + 8);
            }

            while (v14 != v9);
            if (v11 >= v13)
            {
              goto LABEL_79;
            }

            v15 = 0;
            while (*(v10 + 16) != 1953658222)
            {
LABEL_34:
              v10 = *(v10 + 8);
              if (v10 == v9)
              {
                goto LABEL_78;
              }
            }

            if (v15 != v11)
            {
              ++v15;
              goto LABEL_34;
            }

            v16 = *(v2 + 8);
            v17 = *(v10 + 32);
            v49 = &unk_1F0330650;
            (*(*v16 + 88))(&v50);
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = 0;
            v55 = 8;
            v49 = &unk_1F03306B8;
            v56 = 0u;
            v57 = 0u;
            v58 = -1;
            v59 = 0;
            if (!MP4BoxParser_TrackFragmentRun::Init(&v49))
            {
              if (v58 != -1)
              {
                v12 = v5 + v58;
              }

              v47 = HIDWORD(v57);
              if (HIDWORD(v57))
              {
                break;
              }
            }

LABEL_77:
            MP4BoxParser_TrackFragmentRun::~MP4BoxParser_TrackFragmentRun(&v49);
            v9 = *(v2 + 72);
LABEL_78:
            ++v11;
            v10 = *(v9 + 8);
            if (v10 == v9)
            {
              goto LABEL_79;
            }
          }

          v18 = 0;
          while (1)
          {
            *&v48 = v12;
            v19 = v7;
            if (BYTE1(v59) == 1)
            {
              v20 = (DWORD2(v57) * v18);
              if (*(&v56 + 1) - v56 < v20 + DWORD2(v57))
              {
                goto LABEL_76;
              }

              v19 = bswap32(*(v56 + v20 + 4 * v59));
            }

            if (!v19)
            {
LABEL_76:
              *(v2 + 88) += v47;
              v5 = v43;
              goto LABEL_77;
            }

            if (v19 > *(v2 + 248))
            {
              *(v2 + 248) = v19;
            }

            *(v2 + 240) += v19;
            HIDWORD(v48) = v19;
            v21 = *(v2 + 80);
            if (v21)
            {
              CompressedPacketTable::push_back(v21, &v48);
            }

            v22 = HIDWORD(v58);
            if (BYTE2(v59) == 1)
            {
              if (HIDWORD(v58) == -1)
              {
                v23 = (DWORD2(v57) * v18);
                if (*(&v56 + 1) - v56 < v23 + DWORD2(v57))
                {
LABEL_58:
                  *(v2 + 208) = 1;
LABEL_61:
                  v24 = (v18 + *(v2 + 88));
                  v26 = *(v2 + 224);
                  v25 = *(v2 + 232);
                  if (v26 >= v25)
                  {
                    v28 = *(v2 + 216);
                    v29 = v26 - v28;
                    v30 = (v26 - v28) >> 3;
                    v31 = v30 + 1;
                    if ((v30 + 1) >> 61)
                    {
                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    v32 = v25 - v28;
                    if (v32 >> 2 > v31)
                    {
                      v31 = v32 >> 2;
                    }

                    if (v32 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v33 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v33 = v31;
                    }

                    if (v33)
                    {
                      std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v33);
                    }

                    v34 = (v26 - v28) >> 3;
                    v35 = (8 * v30);
                    v36 = (8 * v30 - 8 * v34);
                    *v35 = v24;
                    v27 = v35 + 1;
                    memcpy(v36, v28, v29);
                    v37 = *(v2 + 216);
                    *(v2 + 216) = v36;
                    *(v2 + 224) = v27;
                    *(v2 + 232) = 0;
                    if (v37)
                    {
                      operator delete(v37);
                    }

                    v7 = v44;
                  }

                  else
                  {
                    *v26 = v24;
                    v27 = v26 + 8;
                  }

                  *(v2 + 224) = v27;
                  *(v2 + 208) = 1;
                  goto LABEL_75;
                }

                v22 = bswap32(*(v56 + v23 + 4 * ((BYTE1(v59) + v59) & 3)));
              }

              else if (v18)
              {
                goto LABEL_58;
              }
            }

            else
            {
              if (v18 != 0 || HIDWORD(v58) == -1)
              {
                v22 = v45;
              }

              if ((v18 != 0 || HIDWORD(v58) == -1) && !v46)
              {
                goto LABEL_75;
              }
            }

            *(v2 + 208) = 1;
            if ((v22 & 0x10000) == 0)
            {
              goto LABEL_61;
            }

LABEL_75:
            v12 += v19;
            if (v47 == ++v18)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_79:
        v38 = *(v2 + 8);
        v39 = *(v2 + 56);
        MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v39);
        MP4GetRollGroup(v38, v9, 0, 1919904876, v39 + 120, *(v2 + 88), v2 + 96);
        if ((*(v2 + 96) & 1) == 0)
        {
          v40 = *(v2 + 8);
          v41 = *(v2 + 72);
          v42 = *(v2 + 56);
          MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v42);
          MP4GetRollGroup(v40, v41, 0, 1886547820, v42 + 208, *(v2 + 88), v2 + 152);
        }
      }

      goto LABEL_81;
    }

    if ((v66 & 1) != 0 || !*(*(v2 + 56) + 76))
    {
      v5 = *(v2 + 256);
      goto LABEL_12;
    }
  }

LABEL_81:
  this = v61;
  v60 = &unk_1F0330650;
  v61 = 0;
  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_2:
  v1 = *MEMORY[0x1E69E9840];
  return this;
}
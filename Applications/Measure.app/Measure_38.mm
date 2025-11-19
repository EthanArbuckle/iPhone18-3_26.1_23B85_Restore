void sub_100295334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100295364(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v58 = v7 & 7;
  v57 = v7;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v8 = 1;
  v9 = *v3;
  __endptr = 0;
  if (v9 > 0x3C)
  {
    goto LABEL_4;
  }

  while (2)
  {
    if (((1 << v9) & 0x100003E01) != 0)
    {
LABEL_3:
      v4 = sub_100294910(v6, v4, 0);
      LODWORD(v9) = *v4;
      v8 = 1;
      goto LABEL_4;
    }

    if (v9 == 60)
    {
      v10 = v4[1];
      if (v10 == 33)
      {
        if (v4[2] == 45)
        {
          goto LABEL_3;
        }

        v11 = 0;
        v10 = 33;
      }

      else
      {
        v11 = 0;
      }

LABEL_9:
      v62[0] = 0;
      if (v11 || v10 == 47)
      {
        goto LABEL_134;
      }

      v13 = sub_100294C4C(v6, v4);
      v47 = v62[0];
      if (*(v62[0] + 8) == 1)
      {
        v42 = **(v62[0] + 16) == 95;
        v43 = *v2 & 7;
        if (v43 <= 4)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v42 = 0;
        v43 = *v2 & 7;
        if (v43 <= 4)
        {
LABEL_117:
          if (v42)
          {
            v48 = 5;
          }

          else
          {
            v48 = 6;
          }

          sub_100296108(v6, v48, v2);
          goto LABEL_121;
        }
      }

      if (v42 != (v43 == 5))
      {
        v44 = "Sequence element should not have name (use <_></_>)";
        if (v42)
        {
          v44 = "Map element should have a name";
        }

        sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), v44);
        sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2488);
      }

LABEL_121:
      if (v42)
      {
        v49 = sub_100233314(*(v2 + 2), 0);
      }

      else
      {
        v49 = sub_100283704(v6, v2, v47, 1);
      }

      v50 = v49;
      if (!v49)
      {
        *__s = 0;
        v61 = 0;
        *sub_1002A80E0(__s, 4) = 1835363429;
        sub_1002A8980(-215, __s, "icvXMLParseValue", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2494);
      }

      v51 = sub_100295364(v6, v13, v49, 0);
      if (!v42)
      {
        *v50 |= 0x40u;
      }

      *(v50 + 8) = 0;
      sub_100294C4C(v6, v51);
      sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Mismatched closing tag");
      sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2509);
    }

LABEL_4:
    v10 = v4[1];
    v11 = v9 == 0;
    if (v9 == 60 || v9 == 0)
    {
      goto LABEL_9;
    }

    if ((v8 & 1) == 0)
    {
      sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "There should be space between literals");
      sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2515);
    }

    v14 = v2;
    if (*v2)
    {
      if ((*v2 & 7u) <= 4)
      {
        v15 = sub_100231FEC(0, 0x60uLL, 0x20uLL, *(v6 + 16));
        if ((*v2 & 7) != 0)
        {
          v16 = v15;
          sub_100233314(v15, v2);
          v15 = v16;
        }

        *(v2 + 2) = v15;
        *v2 = 5;
        sub_1002321B8(v15, 8);
      }

      v14 = sub_100233314(*(v2 + 2), 0);
      *(v14 + 1) = 0;
    }

    if (v58 == 3)
    {
      goto LABEL_21;
    }

    if ((v9 - 48) < 0xA)
    {
      goto LABEL_81;
    }

    switch(v9)
    {
      case '+':
        goto LABEL_101;
      case '.':
        if ((v10 - 48) < 0xA || (v10 - 97) < 0x1A || (v10 - 65) <= 0x19)
        {
LABEL_81:
          if (v9 == 45 || v9 == 43)
          {
            v38 = v4 + 1;
          }

          else
          {
            v38 = v4;
          }

          do
          {
            __endptr = v38;
            v40 = *v38++;
            v39 = v40;
          }

          while ((v40 - 48) < 0xA);
          if (v39 == 101 || v39 == 46)
          {
            v41 = sub_100296BA0(v6, v4, &__endptr);
            *v14 = 2;
            *(v14 + 2) = v41;
            v19 = __endptr;
            if (__endptr != v4)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v46 = strtol(v4, &__endptr, 0);
            *v14 = 1;
            *(v14 + 4) = v46;
            v19 = __endptr;
            if (__endptr != v4)
            {
              goto LABEL_109;
            }
          }

          sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Invalid numeric value (inconsistent explicit type specification?)");
          sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2552);
        }

        break;
      case '-':
LABEL_101:
        if (v10 == 46 || (v10 - 48) < 0xA)
        {
          goto LABEL_81;
        }

        break;
    }

LABEL_21:
    bzero(__s, 0x1010uLL);
    v17 = 0;
    *v14 = 3;
    v18 = &v4[-(v9 != 34)];
    while (1)
    {
      v19 = (v18 + 1);
      v20 = v18[1];
      if (v20 - 48 < 0xA || (v20 & 0xFFFFFFDF) - 65 < 0x1A)
      {
        goto LABEL_36;
      }

      if (v20 == 34)
      {
        break;
      }

      if (v20 < 0x20 || v20 == 60)
      {
        if (v9 == 34)
        {
          sprintf(v62, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Closing  is expected");
          sub_1002A9248(-212, "icvXMLParseValue", v62, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2582);
        }

        goto LABEL_108;
      }

      if (v9 != 34 && v20 == 32)
      {
        goto LABEL_108;
      }

      if (v20 != 38)
      {
        if (v20 == 62 || v20 == 39)
        {
          sprintf(v62, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Literal ' or > are not allowed. Use &apos; or &gt;");
          sub_1002A9248(-212, "icvXMLParseValue", v62, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2587);
        }

LABEL_36:
        ++v18;
        goto LABEL_37;
      }

      v23 = v18 + 2;
      if (v18[2] == 35)
      {
        v25 = v18[3];
        v24 = (v18 + 3);
        v26 = v25 == 120;
        if (v25 == 120)
        {
          v27 = 16;
        }

        else
        {
          v27 = 10;
        }

        if (v26)
        {
          v28 = v24 + 1;
        }

        else
        {
          v28 = v24;
        }

        v29 = strtol(v28, &__endptr, v27);
        if ((v29 & 0xFFFFFF00) != 0 || (v18 = __endptr) == 0 || *__endptr != 59)
        {
          sprintf(v62, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Invalid numeric value in the string");
          sub_1002A9248(-212, "icvXMLParseValue", v62, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2603);
        }

        LOBYTE(v20) = v29;
      }

      else
      {
        v30 = (v18 + 3);
        do
        {
          __endptr = v30;
          v31 = *v30++;
          v20 = v31;
          v32 = (v31 & 0xFFFFFFDF) - 65;
        }

        while (v31 - 48 < 0xA || v32 < 0x1A);
        if (v20 != 59)
        {
          sprintf(v62, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Invalid character in the symbol entity name");
          sub_1002A9248(-212, "icvXMLParseValue", v62, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2612);
        }

        v18 = (v30 - 1);
        v34 = v30 - 1 - v23;
        switch(v34)
        {
          case 4:
            if (*v23 == 1936683105)
            {
              LOBYTE(v20) = 39;
              break;
            }

            if (*v23 != 1953461617)
            {
              goto LABEL_72;
            }

            LOBYTE(v20) = 34;
            break;
          case 3:
            if (*v23 == 28001 && v23[2] == 112)
            {
              LOBYTE(v20) = 38;
              break;
            }

LABEL_72:
            v36 = v34 + 2;
            memcpy(&__s[v17], v19, v34 + 2);
            v17 += v36;
            break;
          case 2:
            if (*v23 == 29804)
            {
              LOBYTE(v20) = 60;
              break;
            }

            if (*v23 != 29799)
            {
              goto LABEL_72;
            }

            LOBYTE(v20) = 62;
            break;
          default:
            goto LABEL_72;
        }
      }

LABEL_37:
      v22 = v17;
      __s[v17++] = v20;
      if (v22 >= 4095)
      {
        sprintf(v62, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Too long string literal");
        sub_1002A9248(-212, "icvXMLParseValue", v62, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2635);
      }
    }

    if (v9 != 34)
    {
      sprintf(v62, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "Literal  is not allowed within a string. Use &quot;");
      sub_1002A9248(-212, "icvXMLParseValue", v62, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2575);
    }

    v19 = (v18 + 2);
LABEL_108:
    *(v14 + 2) = sub_100231F7C(*(v6 + 16), __s, v17);
    *(v14 + 3) = v45;
LABEL_109:
    if (v58 - 1 >= 4)
    {
      v8 = 0;
      v4 = v19;
      v9 = *v19;
      __endptr = 0;
      if (v9 <= 0x3C)
      {
        continue;
      }

      goto LABEL_4;
    }

    break;
  }

  v4 = v19;
LABEL_134:
  v52 = *v2;
  v53 = *v2 & 7;
  if (v53)
  {
    v54 = v58;
    if (v58 >= 5 && v53 != v58 && v53 < 5)
    {
      goto LABEL_138;
    }

LABEL_143:
    if (v54)
    {
      goto LABEL_144;
    }
  }

  else
  {
    v54 = v58;
    if (v58 < 5)
    {
      goto LABEL_143;
    }

LABEL_138:
    if (v54 == 6)
    {
      v55 = 6;
    }

    else
    {
      v55 = 5;
    }

    sub_100296108(v6, v55, v2);
    v52 = *v2;
    v53 = *v2 & 7;
    v54 = v58;
LABEL_144:
    if (v54 != v53)
    {
      sprintf(__s, "%s(%d): %s", *(v6 + 96), *(v6 + 148), "The actual type is different from the specified type");
      sub_1002A9248(-212, "icvXMLParseValue", __s, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2657);
    }
  }

  if (v53 > 4)
  {
    **(v2 + 2) |= 0x100u;
  }

  *v2 = v52 | v57 & 0x10;
  return v4;
}

void sub_1002960E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100296108(uint64_t a1, int a2, void *a3)
{
  if ((a2 & 7) == 6)
  {
    if (*a3)
    {
      sprintf(v10, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Sequence element should not have name (use <_></_>)");
      sub_1002A9248(-212, "icvFSCreateCollection", v10, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 558);
    }

    v5 = *(a1 + 16);
    v6 = sub_100236364(0, 120, 48, v5);
    v6[27] = 16;
    v7 = sub_100231C8C(v5, 0x80uLL);
    *(v6 + 14) = v7;
    v7[6] = 0u;
    v7[7] = 0u;
    v7[4] = 0u;
    v7[5] = 0u;
    v7[2] = 0u;
    v7[3] = 0u;
    *v7 = 0u;
    v7[1] = 0u;
  }

  else
  {
    v8 = sub_100231FEC(0, 0x60uLL, 0x20uLL, *(a1 + 16));
    v6 = v8;
    if ((*a3 & 7) != 0)
    {
      sub_100233314(v8, a3);
    }
  }

  a3[2] = v6;
  *a3 = a2;
  return sub_1002321B8(v6, 8);
}

char *sub_100296268(uint64_t a1, char *a2)
{
  v3 = sub_100294910(a1, a2, 2);
  if (*(a1 + 152))
  {
    return v3;
  }

  v4 = *v3;
  if (v4 == 60)
  {
    return v3;
  }

  if (v4 < 0x20)
  {
    v7 = 0;
    if (!*v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = v3[++v7];
    }

    while (v8 > 0x1F);
    if (!v8)
    {
LABEL_11:
      sprintf(v12, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unexpected end of line");
      sub_1002A9248(-212, "icvXMLGetMultilineStringContent", v12, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2328);
    }
  }

  v5 = &v3[v7];
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (v7 <= 0x1F)
    {
      sprintf(v12, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unrecognized Base64 header");
      sub_1002A9248(-212, "icvXMLParseBase64", v12, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2347);
    }

    operator new();
  }

  return v5;
}

void sub_100296AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100296BA0(uint64_t a1, char *a2, char **a3)
{
  v4 = a2;
  v6 = strtod(a2, a3);
  v7 = *a3;
  if (**a3 != 46)
  {
LABEL_4:
    if (v7 == v4)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  *v7 = 44;
  v8 = strtod(v4, a3);
  *v7 = 46;
  if (*a3 > v7)
  {
    v7 = *a3;
    v6 = v8;
    goto LABEL_4;
  }

  *a3 = v7;
  if (v7 == v4)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((*v7 & 0xDFu) - 65 > 0x19)
  {
    return v6;
  }

LABEL_8:
  v9 = *v4;
  if (v9 == 45 || v9 == 43)
  {
    v11 = *++v4;
    v10 = v11;
    if (v9 == 45)
    {
      v6 = -INFINITY;
    }

    else
    {
      v6 = INFINITY;
    }

    if (v10 != 46)
    {
LABEL_14:
      sprintf(v13, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Bad format of floating-point constant");
      sub_1002A9248(-212, "icvProcessSpecialDouble", v13, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1059);
    }
  }

  else
  {
    v6 = INFINITY;
    if (v9 != 46)
    {
      goto LABEL_14;
    }
  }

  if (__toupper(v4[1]) != 73 || __toupper(v4[2]) != 78 || __toupper(v4[3]) != 70)
  {
    if (__toupper(v4[1]) != 78 || __toupper(v4[2]) != 65 || (v6 = NAN, __toupper(v4[3]) != 78))
    {
      sprintf(v13, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Bad format of floating-point constant");
      sub_1002A9248(-212, "icvProcessSpecialDouble", v13, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1068);
    }
  }

  *a3 = v4 + 4;
  return v6;
}

std::string *sub_100296DE4(std::string *this, std::string *a2, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v9 = this->__r_.__value_.__r.__words[2];
    v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = this->__r_.__value_.__r.__words[0];
    v7 = HIBYTE(v9);
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    v6 = 22;
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    v8 = this;
    if (this > a2)
    {
LABEL_12:
      if (v6 - size < v5)
      {
        v13 = a3;
        v14 = a2;
        std::string::__grow_by(this, v6, size - v6 + v5, size, size, 0, 0);
        a3 = v13;
        a2 = v14;
        this->__r_.__value_.__l.__size_ = size;
        v10 = this;
        if ((*(&this->__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_14:
          v11 = v10 + size;
          if (a3 == a2)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v10 = this;
        if ((v7 & 0x80) == 0)
        {
          goto LABEL_14;
        }
      }

      v11 = (this->__r_.__value_.__r.__words[0] + size);
      if (a3 == a2)
      {
LABEL_16:
        v11[v5] = 0;
        v12 = v5 + size;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          this->__r_.__value_.__l.__size_ = v12;
        }

        else
        {
          *(&this->__r_.__value_.__s + 23) = v12 & 0x7F;
        }

        return this;
      }

LABEL_15:
      memmove(v11, a2, v5);
      goto LABEL_16;
    }
  }

  if ((&v8->__r_.__value_.__l.__data_ + size + 1) <= a2)
  {
    goto LABEL_12;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100241528();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v19 = a3 - a2;
  if (a3 != a2)
  {
    memcpy(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
  if ((v19 & 0x80u) == 0)
  {
    v15 = __dst;
  }

  else
  {
    v15 = __dst[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v16 = v19;
  }

  else
  {
    v16 = __dst[1];
  }

  std::string::append(this, v15, v16);
  if (v19 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

void sub_100296FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100296FFC(uint64_t a1, char *a2, int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *a2;
        if (v6 != 35)
        {
          break;
        }

        if (&a2[-*(a1 + 128)] > 0x7FFFFFFF)
        {
          return a2;
        }

        *a2 = 0;
      }

      if (v6 != 32)
      {
        break;
      }

      ++a2;
    }

    if (v6 >= 0x20)
    {
      break;
    }

    if (v6 > 0xD || ((1 << v6) & 0x2401) == 0)
    {
      if (v6 == 9)
      {
        v5 = "Tabs are prohibited in YAML!";
      }

      else
      {
        v5 = "Invalid character";
      }

      sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), v5);
      sub_1002A9248(-212, "icvYMLSkipSpaces", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1322);
    }

    v8 = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
    if (!v8)
    {
      a2 = *(a1 + 128);
      *a2 = 3026478;
      *(a1 + 152) = 1;
      return a2;
    }

    a2 = v8;
    v9 = v8[(strlen(v8) - 1)];
    if (v9 != 10 && v9 != 13)
    {
      if (*(a1 + 352))
      {
        if (*(a1 + 368) < *(a1 + 360))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v11 = *(a1 + 104);
        if (v11)
        {
          if (!feof(v11))
          {
            goto LABEL_29;
          }
        }

        else
        {
          v12 = *(a1 + 112);
          if (!v12 || !gzeof(v12))
          {
LABEL_29:
            sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Too long string or a last string w/o newline");
            sub_1002A9248(-212, "icvYMLSkipSpaces", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1316);
          }
        }
      }
    }

    ++*(a1 + 148);
  }

  if (&a2[-*(a1 + 128)] < a3)
  {
    sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Incorrect indentation");
    sub_1002A9248(-212, "icvYMLSkipSpaces", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1296);
  }

  return a2;
}

char *sub_100297288(uint64_t a1)
{
  __chkstk_darwin(a1);
  LODWORD(v2) = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  bzero(__s, 0x1400uLL);
  __endptr = 0;
  v11 = *v8;
  v12 = v8[1];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  if (v11 != 33)
  {
    v13 = 0;
    goto LABEL_79;
  }

  if (v12 == 94 || v12 == 33)
  {
    v13 = 16;
    ++v8;
LABEL_24:
    v15 = v8;
    goto LABEL_25;
  }

  v13 = 0;
  if (v12 != 60)
  {
    goto LABEL_24;
  }

  v14 = 0;
  v15 = (v8 + 1);
  do
  {
    v16 = v8[v14++ + 2];
  }

  while (v16 >= 0x21 && v16 != 62);
  if (v16 == 62 && v14 >= 0x14)
  {
    v18 = *v15 == 0x6D61793A6761743CLL && *(v8 + 9) == 0x30322C67726F2E6CLL;
    if (v18 && *(v8 + 12) == 0x3A323030322C6772)
    {
      v8[v14 + 1] = 32;
      v15 = (v8 + 19);
      v13 = 16;
    }
  }

LABEL_25:
  v20 = 0;
  v21 = v15 + 1;
  do
  {
    __endptr = &v21[v20];
    v12 = v21[v20++];
  }

  while (v12 > 0x20);
  v22 = (v15 + 1);
  if (v20 == 1)
  {
    sprintf(&v97, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Empty type name");
    sub_1002A9248(-212, "icvYMLParseValue", &v97, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1503);
  }

  v15[v20] = 0;
  if ((v13 & 0x10) == 0 && v20 == 4)
  {
    if (*v22 == 29811 && v15[3] == 114)
    {
      v23 = 0;
      v13 = 3;
    }

    else if (*v22 == 28265 && v15[3] == 116)
    {
      v23 = 0;
      v13 = 1;
    }

    else
    {
      v23 = 0;
      if (*v22 == 25971 && v15[3] == 113)
      {
        v13 = 5;
      }

      else if (!(*(v15 + 1) ^ 0x616D | v15[3] ^ 0x70))
      {
        v13 = 6;
      }
    }

    goto LABEL_69;
  }

  if ((v13 & 0x10) == 0 && v20 == 6)
  {
    v23 = 0;
    if (!(*v22 ^ 0x616F6C66 | v15[5] ^ 0x74))
    {
      v13 = 2;
    }

    goto LABEL_69;
  }

  if ((v13 & 0x10) != 0 && v20 == 7)
  {
    if (*v22 == 1634625890 && *(v15 + 5) == 31090)
    {
      v28 = __endptr;
      *__endptr = v12;
      v29 = v28 + 1;
      do
      {
        v30 = *v29++;
      }

      while (v30 == 32);
      __endptr = v29;
      v12 = *v29;
      *v29 = 0;
      v13 = 5;
      v23 = 1;
      goto LABEL_69;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    v31 = qword_1004D5468;
    if (qword_1004D5468)
    {
      while (strcmp(*(v31 + 24), v22))
      {
        v31 = *(v31 + 16);
        if (!v31)
        {
          goto LABEL_65;
        }
      }

      v23 = 0;
      v6[1] = v31;
    }

    else
    {
LABEL_65:
      v23 = 0;
      v6[1] = 0;
      *v6 &= ~0x10u;
    }

    goto LABEL_69;
  }

  v23 = 0;
LABEL_69:
  v32 = __endptr;
  *__endptr = v12;
  v33 = sub_100296FFC(v10, v32, v2);
  v8 = v33;
  v11 = *v33;
  if ((v13 & 0x10) == 0)
  {
    switch(v13)
    {
      case 1:
        goto LABEL_99;
      case 2:
        goto LABEL_89;
      case 3:
        if (v11 != 39 && v11 != 34)
        {
          __endptr = v33;
          v59 = v33 - 1;
          v60 = *v33;
          if (v60 > 0x1F)
          {
            if ((v4 & 8) != 0)
            {
LABEL_205:
              v73 = v8 + 1;
              while (1)
              {
                v61 = v73 - 1;
                if (v60 == 44 || v60 == 93 || v60 == 125)
                {
                  break;
                }

                __endptr = v73;
                v74 = *v73++;
                v60 = v74;
                v59 = v61;
                if (v74 <= 0x1F)
                {
                  goto LABEL_220;
                }
              }

LABEL_221:
              if (v59 + 1 == v8)
              {
                goto LABEL_222;
              }

LABEL_225:
              if ((v4 & 8) != 0 || v60 != 58)
              {
                *v6 = 3;
                v89 = v61 - v8 + 1;
                v90 = v61 - 1;
                do
                {
                  --v89;
                  if (v90 <= v8)
                  {
                    break;
                  }

                  v91 = *v90--;
                }

                while (v91 == 32);
                v6[2] = sub_100231F7C(*(v10 + 16), v8, v89);
                v6[3] = v92;
                return __endptr;
              }

              v52 = 6;
              v51 = 1;
              goto LABEL_228;
            }

            goto LABEL_214;
          }

LABEL_224:
          v61 = v8;
          if (v59 + 1 == v8)
          {
LABEL_222:
            sub_100283B60(*(v10 + 96), *(v10 + 148), "icvYMLParseValue", "Invalid character", 1748);
          }

          goto LABEL_225;
        }

        if ((v23 & 1) == 0)
        {
          v13 = 3;
          goto LABEL_79;
        }

        return sub_100298200(v10, v33, v33 - *(v10 + 128));
    }
  }

  if (v23)
  {
    return sub_100298200(v10, v33, v33 - *(v10 + 128));
  }

LABEL_79:
  if ((v11 - 48) >= 0xA)
  {
    if (v11 > 44)
    {
      if (v11 > 90)
      {
        if (v11 == 91 || v11 == 123)
        {
          v41 = v11 == 91;
          if ((v4 & 8) != 0)
          {
            v2 = v2;
          }

          else
          {
            v2 = (v2 + 1);
          }

          if (v11 == 123)
          {
            v42 = 14;
          }

          else
          {
            v42 = 13;
          }

          v43 = v42 & 7;
          sub_100296108(v10, v43 | (16 * (v6[1] != 0)), v6);
          if (v41)
          {
            v44 = 93;
          }

          else
          {
            v44 = 125;
          }

          v93 = v44;
          v45 = v8 + 1;
          for (i = 1; ; i = i && (*v94 & 7u) < 5)
          {
            v94 = 0;
            v47 = sub_100296FFC(v10, v45, v2);
            v34 = v47;
            v48 = *v47;
            if ((v48 | 0x20) == 0x7D)
            {
              break;
            }

            if (*(v6[2] + 40))
            {
              if (v48 != 44)
              {
                sprintf(&v97, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Missing , between the elements");
                sub_1002A9248(-212, "icvYMLParseValue", &v97, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1700);
              }

              v34 = sub_100296FFC(v10, v47 + 1, v2);
            }

            if (v43 == 6)
            {
              v49 = sub_100298B20(v10, v34, v6, &v94);
              v34 = sub_100296FFC(v10, v49, v2);
              v50 = v94;
              if (!v94)
              {
                goto LABEL_131;
              }
            }

            else
            {
              if (*v34 == 93)
              {
                goto LABEL_155;
              }

              v50 = sub_100233314(v6[2], 0);
              v94 = v50;
              if (!v50)
              {
LABEL_131:
                v98 = 0;
                v97 = 0;
                *sub_1002A80E0(&v97, 4) = 1835363429;
                sub_1002A8980(-215, &v97, "icvYMLParseValue", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1715);
              }
            }

            v45 = sub_100297288(v10, v34, v50, v42, v2);
            if (v43 == 6)
            {
              *v94 |= 0x40u;
            }
          }

          if (v93 != v48)
          {
            sprintf(&v97, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "The wrong closing bracket");
            sub_1002A9248(-212, "icvYMLParseValue", &v97, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1692);
          }

          v34 = v47 + 1;
LABEL_155:
          v58 = !i;
          goto LABEL_249;
        }

        goto LABEL_136;
      }

      if (v11 != 45)
      {
        if (v11 == 46)
        {
          if (v12 - 48 < 0xA || v12 - 97 < 0x1A || v12 - 65 <= 0x19)
          {
            goto LABEL_80;
          }

LABEL_156:
          if ((v4 & 8) != 0)
          {
            __endptr = v8;
            v59 = v8 - 1;
            v60 = *v8;
            v61 = v8;
            if (v60 <= 0x1F)
            {
              goto LABEL_221;
            }

            goto LABEL_205;
          }

          if (v11 == 62 || v11 == 124)
          {
            sub_100283B60(*(v10 + 96), *(v10 + 148), "icvYMLParseValue", "Multi-line text literals are not supported", 1736);
          }

          if (v11 == 63)
          {
            sub_100283B60(*(v10 + 96), *(v10 + 148), "icvYMLParseValue", "Complex keys are not supported", 1734);
          }

          if (v13 != 3)
          {
            v73 = v8;
            do
            {
              __endptr = v73;
              v76 = *v73++;
              v60 = v76;
            }

            while (v76 >= 0x20 && v60 != 58);
            goto LABEL_220;
          }

          __endptr = v8;
          v60 = *v8;
          if (v60 > 0x1F)
          {
LABEL_214:
            v73 = v8 + 1;
            do
            {
              __endptr = v73;
              v75 = *v73++;
              v60 = v75;
            }

            while (v75 > 0x1F);
LABEL_220:
            v59 = v73 - 2;
            v61 = v73 - 1;
            goto LABEL_221;
          }

          v59 = v8 - 1;
          goto LABEL_224;
        }

LABEL_136:
        if ((v4 & 8) == 0 && v11 == 45)
        {
          v51 = 0;
          v52 = 5;
LABEL_228:
          sub_100296108(v10, v52 | (16 * (v6[1] != 0)), v6);
          v77 = v8 - *(v10 + 128);
          LOBYTE(v78) = 1;
          v34 = v8;
          while (1)
          {
            v94 = 0;
            if (v51)
            {
              v80 = sub_100298B20(v10, v34, v6, &v94);
              if (!v94)
              {
                goto LABEL_239;
              }
            }

            else
            {
              v81 = *v34;
              v80 = v34 + 1;
              if (v81 != 45)
              {
                sprintf(&v97, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Block sequence elements must be preceded with '-'");
                sub_1002A9248(-212, "icvYMLParseValue", &v97, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1785);
              }

              v94 = sub_100233314(v6[2], 0);
              if (!v94)
              {
LABEL_239:
                v98 = 0;
                v97 = 0;
                *sub_1002A80E0(&v97, 4) = 1835363429;
                sub_1002A8980(-215, &v97, "icvYMLParseValue", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1789);
              }
            }

            v82 = sub_100296FFC(v10, v80, v77 + 1);
            v83 = v94;
            v84 = sub_100297288(v10, v82, v94, v52, (v77 + 1));
            if (v51)
            {
              *v83 |= 0x40u;
            }

            v78 = v78 && (*v83 & 7u) < 5;
            v85 = sub_100296FFC(v10, v84, 0);
            v34 = v85;
            v86 = &v85[-*(v10 + 128)];
            if (v86 != v77)
            {
              break;
            }

            if (*v85 == 11822 && v85[2] == 46)
            {
              goto LABEL_248;
            }
          }

          if (v86 >= v77)
          {
            sprintf(&v97, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Incorrect indentation");
            sub_1002A9248(-212, "icvYMLParseValue", &v97, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1802);
          }

LABEL_248:
          v58 = !v78;
LABEL_249:
          if (v58)
          {
            v87 = 0;
          }

          else
          {
            v87 = 256;
          }

          *v6[2] |= v87;
          return v34;
        }

        goto LABEL_156;
      }

LABEL_105:
      if (v12 == 46 || v12 - 48 < 0xA)
      {
        goto LABEL_80;
      }

      goto LABEL_136;
    }

    if (v11 != 34 && v11 != 39)
    {
      if (v11 != 43)
      {
        goto LABEL_136;
      }

      goto LABEL_105;
    }

    *v6 = 3;
    if (v11 == 39)
    {
      v53 = 0;
      v34 = v8;
      while (1)
      {
        v55 = *++v34;
        v54 = v55;
        v56 = (v55 & 0xFFFFFFDF) - 65;
        v57 = v55 - 48 >= 0xA && v56 >= 0x1A;
        if (v57 && (v54 == 39 || v54 < 0x20))
        {
          if (v54 != 39)
          {
            sprintf(&v97, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Invalid character");
            sub_1002A9248(-212, "icvYMLParseValue", &v97, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1622);
          }

          LOBYTE(v54) = v8[2];
          v34 = v8 + 2;
          if (v54 != 39)
          {
            break;
          }
        }

        __s[v53++] = v54;
        v8 = v34;
        if (v53 >= 4096)
        {
          goto LABEL_197;
        }
      }

LABEL_198:
      v6[2] = sub_100231F7C(*(v10 + 16), __s, v53);
      v6[3] = v72;
      return v34;
    }

    v53 = 0;
    v62 = v8;
    while (1)
    {
      v64 = *++v62;
      v63 = v64;
      v65 = (v64 & 0xFFFFFFDF) - 65;
      if (v64 - 48 < 0xA || v65 < 0x1A)
      {
        goto LABEL_166;
      }

      if (v63 < 0x20)
      {
        sprintf(&v97, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Invalid character");
        sub_1002A9248(-212, "icvYMLParseValue", &v97, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1665);
      }

      if (v63 != 92)
      {
        break;
      }

      v62 = v8 + 2;
      v63 = v8[2];
      if (v63 > 0x6D)
      {
        switch(v63)
        {
          case 'n':
            __s[v53] = 10;
            goto LABEL_167;
          case 'r':
            LOBYTE(v63) = 13;
            goto LABEL_166;
          case 't':
            LOBYTE(v63) = 9;
            goto LABEL_166;
        }
      }

      else
      {
        switch(v63)
        {
          case '""':
            goto LABEL_166;
          case '\'':
            __s[v53] = 39;
            goto LABEL_167;
          case '\\':
            goto LABEL_166;
        }
      }

      if (v63 == 120)
      {
        v67 = 8;
LABEL_188:
        v68 = v8[5];
        v8[5] = 0;
        if (v63 == 120)
        {
          v69 = v8 + 3;
        }

        else
        {
          v69 = v8 + 2;
        }

        v70 = strtol(v69, &__endptr, v67);
        v8[5] = v68;
        if (__endptr == v69)
        {
          v71 = 120;
        }

        else
        {
          v71 = v70;
        }

        if (__endptr != v69)
        {
          v62 = __endptr;
        }

        __s[v53++] = v71;
        goto LABEL_161;
      }

      if ((v63 & 0xF8) == 0x30)
      {
        v67 = 16;
        goto LABEL_188;
      }

LABEL_161:
      v8 = v62;
      if (v53 >= 4096)
      {
LABEL_197:
        sprintf(&v97, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Too long string literal");
        sub_1002A9248(-212, "icvYMLParseValue", &v97, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1669);
      }
    }

    if (v63 == 34)
    {
      v34 = v8 + 2;
      goto LABEL_198;
    }

LABEL_166:
    __s[v53] = v63;
LABEL_167:
    ++v53;
    goto LABEL_161;
  }

LABEL_80:
  if (v11 == 45 || v11 == 43)
  {
    v36 = v8 + 1;
  }

  else
  {
    v36 = v8;
  }

  do
  {
    __endptr = v36;
    v38 = *v36++;
    v37 = v38;
  }

  while ((v38 - 48) < 0xA);
  if (v37 == 101 || v37 == 46)
  {
LABEL_89:
    v39 = sub_100296BA0(v10, v8, &__endptr);
    *v6 = 2;
    *(v6 + 2) = v39;
    v34 = __endptr;
    if (!__endptr)
    {
LABEL_101:
      sprintf(&v97, "%s(%d): %s", *(v10 + 96), *(v10 + 148), "Invalid numeric value (inconsistent explicit type specification?)");
      sub_1002A9248(-212, "icvYMLParseValue", &v97, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1601);
    }

    goto LABEL_100;
  }

LABEL_99:
  v40 = strtol(v8, &__endptr, 0);
  *v6 = 1;
  *(v6 + 4) = v40;
  v34 = __endptr;
  if (!__endptr)
  {
    goto LABEL_101;
  }

LABEL_100:
  if (v34 == v8)
  {
    goto LABEL_101;
  }

  return v34;
}

void sub_1002981B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100298200(uint64_t a1, char *a2, int a3)
{
  v5 = sub_100296FFC(a1, a2, 0);
  if (*(a1 + 152) || &v5[-*(a1 + 128)] != a3)
  {
    return v5;
  }

  v6 = -1;
  do
  {
    v7 = v5[++v6];
  }

  while (v7 > 0x1F);
  if (!v7)
  {
    sprintf(v13, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unexpected end of line");
    sub_1002A9248(-212, "icvYMLGetMultilineStringContent", v13, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1345);
  }

  v8 = &v5[v6];
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (v6 <= 0x1F)
    {
      sprintf(v13, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unrecognized Base64 header");
      sub_1002A9248(-212, "icvYMLParseBase64", v13, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1365);
    }

    operator new();
  }

  return v8;
}

void sub_100298A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100298B20(uint64_t a1, char *__s, uint64_t a3, uint64_t *a4)
{
  if (*__s == 45)
  {
    sprintf(v14, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Key may not start with '-'");
    sub_1002A9248(-212, "icvYMLParseKey", v14, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1432);
  }

  v8 = 0;
  do
  {
    v9 = __s[v8++];
  }

  while (v9 >= 0x20 && v9 != 58);
  if (v9 != 58)
  {
    sprintf(v14, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Missing ':'");
    sub_1002A9248(-212, "icvYMLParseKey", v14, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1438);
  }

  v10 = v8;
  do
  {
    v11 = __s[v10-- - 2];
  }

  while (v11 == 32);
  if (!v10)
  {
    sprintf(v14, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "An empty key");
    sub_1002A9248(-212, "icvYMLParseKey", v14, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1446);
  }

  v12 = sub_10028356C(a1, __s, v10, 1);
  *a4 = sub_100283704(a1, a3, v12, 1);
  return &__s[v8];
}

char *sub_100298CEC(uint64_t a1, char *a2)
{
  result = a2;
  while (1)
  {
    v5 = *result;
    if (v5 > 0x2F)
    {
      break;
    }

    if (((1 << v5) & 0x2401) != 0)
    {
      result = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
      v4 = result == 0;
      goto LABEL_3;
    }

    if (((1 << v5) & 0x100000200) != 0)
    {
      goto LABEL_7;
    }

    if (v5 != 47)
    {
      break;
    }

    v7 = *++result;
    v6 = v7;
    if (v7)
    {
      if (v6 == 42)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
      if (!result)
      {
        goto LABEL_33;
      }

      v6 = *result;
      if (v6 == 42)
      {
LABEL_22:
        ++result;
        do
        {
          while (1)
          {
            while (*result != 42)
            {
              if (*result)
              {
                goto LABEL_22;
              }

              result = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
              if (!result)
              {
                goto LABEL_33;
              }
            }

            v9 = *++result;
            v8 = v9;
            if (!v9)
            {
              break;
            }

            if (v8 == 47)
            {
              goto LABEL_7;
            }
          }

          result = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
          if (!result)
          {
            goto LABEL_33;
          }
        }

        while (*result != 47);
LABEL_7:
        v4 = 0;
        ++result;
        goto LABEL_3;
      }
    }

    if (v6 != 47)
    {
      sprintf(v10, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Not supported escape character");
      sub_1002A9248(-212, "icvJSONSkipSpaces", v10, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3335);
    }

    while (!v6)
    {
      result = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
      if (!result)
      {
        goto LABEL_33;
      }

LABEL_15:
      v6 = *result;
    }

    if (v6 != 10 && v6 != 13)
    {
      ++result;
      goto LABEL_15;
    }

    v4 = 0;
LABEL_3:
    if (v4)
    {
LABEL_33:
      result = *(a1 + 128);
      *result = 0;
      *(a1 + 152) = 1;
      return result;
    }
  }

  if (v5 <= 0x1F)
  {
    sprintf(v10, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid character in the stream");
    sub_1002A9248(-212, "icvJSONSkipSpaces", v10, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3353);
  }

  return result;
}

char *sub_100298F80(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 != 123)
  {
    sprintf(v22, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'{' - left-brace of map is missing");
    sub_1002A9248(-212, "icvJSONParseMap", v22, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3736);
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  sub_100296108(a1, 6, a3);
  v6 = sub_100298CEC(a1, a2 + 1);
  if (!v6)
  {
LABEL_35:
    sub_1003C85B4(a1, v22);
  }

  v7 = v6;
  while (!*(a1 + 152))
  {
    if (*v7 == 34)
    {
      v21 = 0;
      v8 = sub_1002995E4(a1, v7, a3, &v21);
      if (!v8)
      {
        goto LABEL_35;
      }

      v7 = v8;
      if (*(a1 + 152))
      {
        break;
      }

      v9 = sub_100298CEC(a1, v8);
      if (!v9)
      {
        goto LABEL_35;
      }

      v7 = v9;
      if (*(a1 + 152))
      {
        break;
      }

      v10 = v21;
      if (v21)
      {
        v11 = *v9;
        if (v11 == 123)
        {
          v12 = sub_100298F80(a1, v9, v21);
        }

        else if (v11 == 91)
        {
          v12 = sub_100299338(a1, v9, v21);
        }

        else
        {
          v12 = sub_100299878(a1, v9, v21);
        }

        *v10 |= 0x40u;
        v16 = sub_100298CEC(a1, v12);
        if (!v16)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v13 = sub_100299878(a1, v9, v19);
        if ((v19[0] & 7) != 3)
        {
          sprintf(v22, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "type_id should be of type string");
          sub_1002A9248(-212, "icvJSONParseMap", v22, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3772);
        }

        v14 = __s2;
        if (__s2 && (v15 = qword_1004D5468) != 0)
        {
          while (strcmp(*(v15 + 24), v14))
          {
            v15 = *(v15 + 16);
            if (!v15)
            {
              goto LABEL_22;
            }
          }

          *(a3 + 8) = v15;
          *a3 |= 0x10u;
          v16 = sub_100298CEC(a1, v13);
          if (!v16)
          {
            goto LABEL_35;
          }
        }

        else
        {
LABEL_22:
          *(a3 + 8) = 0;
          v16 = sub_100298CEC(a1, v13);
          if (!v16)
          {
            goto LABEL_35;
          }
        }
      }
    }

    else
    {
      v16 = sub_100298CEC(a1, v7);
      if (!v16)
      {
        goto LABEL_35;
      }
    }

    v7 = v16;
    if (*(a1 + 152))
    {
      break;
    }

    v17 = *v16;
    if (v17 != 44)
    {
      if (v17 != 125)
      {
        sprintf(v22, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unexpected character");
        sub_1002A9248(-212, "icvJSONParseMap", v22, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3796);
      }

      return v7 + 1;
    }

    v7 = sub_100298CEC(a1, v16 + 1);
    if (!v7)
    {
      goto LABEL_35;
    }
  }

  if (*v7 != 125)
  {
    sprintf(v22, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'}' - right-brace of map is missing");
    sub_1002A9248(-212, "icvJSONParseMap", v22, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3803);
  }

  return v7 + 1;
}

char *sub_100299338(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 != 91)
  {
    sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'[' - left-brace of seq is missing");
    sub_1002A9248(-212, "icvJSONParseSeq", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3682);
  }

  v5 = a2 + 1;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  v6 = sub_100231FEC(0, 0x60uLL, 0x20uLL, *(a1 + 16));
  if ((*a3 & 7) != 0)
  {
    v7 = v6;
    sub_100233314(v6, a3);
    v6 = v7;
  }

  a3[2] = v6;
  *a3 = 5;
  sub_1002321B8(v6, 8);
  v8 = sub_100298CEC(a1, v5);
  if (!v8)
  {
LABEL_21:
    sub_1003C8618(a1, v15);
  }

  while (!*(a1 + 152))
  {
    if (*v8 != 93)
    {
      v9 = sub_100233314(a3[2], 0);
      v10 = *v8;
      if (v10 == 123)
      {
        v11 = sub_100298F80(a1, v8, v9);
      }

      else if (v10 == 91)
      {
        v11 = sub_100299338(a1, v8, v9);
      }

      else
      {
        v11 = sub_100299878(a1, v8, v9);
      }

      v8 = v11;
    }

    v12 = sub_100298CEC(a1, v8);
    v8 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }

    if (*(a1 + 152))
    {
      break;
    }

    v13 = *v12;
    if (v13 != 44)
    {
      if (v13 != 93)
      {
        sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unexpected character");
        sub_1002A9248(-212, "icvJSONParseSeq", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3716);
      }

      return v8 + 1;
    }

    v8 = sub_100298CEC(a1, v12 + 1);
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (*v8 != 93)
  {
    sprintf(v15, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "']' - right-brace of seq is missing");
    sub_1002A9248(-212, "icvJSONParseSeq", v15, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3723);
  }

  return v8 + 1;
}

char *sub_1002995E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*a2 != 34)
  {
    sprintf(v18, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Key must start with ''");
    sub_1002A9248(-212, "icvJSONParseKey", v18, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3379);
  }

  v8 = (a2 + 1);
  v9 = -1;
  do
  {
    v11 = *v8++;
    v10 = v11;
    ++v9;
  }

  while (v11 >= 0x20 && v10 != 34);
  if (v10 != 34)
  {
    sprintf(v18, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Key must end with ''");
    sub_1002A9248(-212, "icvJSONParseKey", v18, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3388);
  }

  result = sub_100298CEC(a1, v8);
  if (result)
  {
    if (*(a1 + 152))
    {
      return 0;
    }

    else
    {
      v13 = result;
      v14 = v8 - 2;
      if (*result != 58)
      {
        sprintf(v18, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Missing ':' between key and value");
        sub_1002A9248(-212, "icvJSONParseKey", v18, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3397);
      }

      if (v14 <= a2)
      {
        sprintf(v18, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Key is empty");
        sub_1002A9248(-212, "icvJSONParseKey", v18, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3401);
      }

      if (v9 == 7 && (*(a2 + 1) == 1701869940 ? (v15 = *(a2 + 4) == 1684627301) : (v15 = 0), v15))
      {
        v17 = 0;
      }

      else
      {
        v16 = sub_10028356C(a1, (a2 + 1), v9, 1);
        v17 = sub_100283704(a1, a3, v16, 1);
      }

      *a4 = v17;
      return v13 + 1;
    }
  }

  return result;
}

char *sub_100299878(uint64_t a1, char *a2, void *a3)
{
  v5 = sub_100298CEC(a1, a2);
  v6 = v5;
  __endptr = v5;
  if (!v5 || *(a1 + 152))
  {
    sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unexpected End-Of-File");
    sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3421);
  }

  *a3 = 0u;
  *(a3 + 1) = 0u;
  v7 = *v5;
  if (v7 != 34)
  {
    v17 = v5;
    if ((v7 - 48) >= 0xA)
    {
      if (v7 != 43 && v7 != 45)
      {
        if (v7 != 46)
        {
          if ((v7 & 0xFFFFFFDF) - 65 < 0x1A)
          {
            __endptr = v5 + 1;
            if ((v5[1] & 0xDFu) - 65 > 0x19 || (__endptr = v5 + 2, (v5[2] & 0xDFu) - 65 > 0x19) || (__endptr = v5 + 3, (v5[3] & 0xDFu) - 65 > 0x19))
            {
              v29 = 0;
              v18 = 0;
            }

            else
            {
              __endptr = v5 + 4;
              if ((v5[4] & 0xDFu) - 65 > 0x19)
              {
                v29 = 1;
                v18 = 1;
              }

              else
              {
                __endptr = v5 + 5;
                if ((v5[5] & 0xDFu) - 65 > 0x19 || (__endptr = v5 + 6, (v5[6] & 0xDFu) - 65 > 0x19))
                {
                  v18 = 0;
                }

                else
                {
                  v18 = 0;
                  __endptr = v5 + 7;
                }

                v29 = 1;
              }
            }

            if (v29)
            {
              if (*v5 == 1819047278)
              {
                sub_100283B60(*(a1 + 96), *(a1 + 148), "icvJSONParseValue", "Value 'null' is not supported by this parser", 3652);
              }

              if (*v5 == 1702195828)
              {
                *(a3 + 4) = 1;
                *a3 = 1;
                return __endptr;
              }

              if ((v18 & 1) == 0 && *v5 == 1936482662 && v5[4] == 101)
              {
                *(a3 + 4) = 0;
                *a3 = 1;
                return __endptr;
              }
            }
          }

          sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unrecognized value");
          sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3666);
        }

        goto LABEL_98;
      }

      v17 = v5 + 1;
      __endptr = v5 + 1;
      v7 = v5[1];
    }

    if ((v7 - 48) <= 9)
    {
      v25 = v17 + 1;
      do
      {
        __endptr = v25;
        v26 = *v25++;
        v7 = v26;
      }

      while ((v26 - 48) < 0xA);
    }

    if (v7 != 101 && v7 != 46)
    {
      *(a3 + 4) = strtol(v5, &__endptr, 0);
      *a3 = 1;
      if (v6 < __endptr)
      {
        return __endptr;
      }

LABEL_101:
      sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid numeric value (inconsistent explicit type specification?)");
      sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3641);
    }

LABEL_98:
    *(a3 + 2) = sub_100296BA0(a1, v5, &__endptr);
    *a3 = 2;
    if (v6 < __endptr)
    {
      return __endptr;
    }

    goto LABEL_101;
  }

  v8 = 0;
  v9 = (v5 + 1);
  while (1)
  {
    v10 = v9->__r_.__value_.__s.__data_[v8];
    if ((v10 - 48) >= 0xA && (v10 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      break;
    }

    if (v8 > 9)
    {
      goto LABEL_19;
    }

LABEL_7:
    ++v8;
  }

  if (v10 == 36 && v8 < 0xA)
  {
    goto LABEL_7;
  }

  if (v8 < 8)
  {
    goto LABEL_20;
  }

LABEL_19:
  if (v9->__r_.__value_.__r.__words[0] != 0x2434366573616224)
  {
LABEL_20:
    memset(&v33, 0, sizeof(v33));
    std::string::reserve(&v33, 0x20000uLL);
    for (__endptr = (v6 + 1); ; __endptr = v9)
    {
      while (1)
      {
        v13 = v9;
        v14 = v9->__r_.__value_.__s.__data_[0];
        if (v14 > 0xC)
        {
          goto LABEL_24;
        }

LABEL_22:
        if (v14 == 10)
        {
          goto LABEL_23;
        }

        if (v14)
        {
          break;
        }

        sub_100296DE4(&v33, v9, v13);
        v9 = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
        __endptr = v9;
        if (!v9)
        {
          sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
          sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3582);
        }
      }

      do
      {
        v13 = (v13 + 1);
        __endptr = v13;
        v14 = v13->__r_.__value_.__s.__data_[0];
        if (v14 <= 0xC)
        {
          goto LABEL_22;
        }

LABEL_24:
        if (v14 == 13)
        {
LABEL_23:
          sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
          sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3597);
        }

        if (v14 == 34)
        {
          sub_100296DE4(&v33, v9, v13);
          if (*__endptr != 34)
          {
            sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
            sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3609);
          }

          ++__endptr;
          if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v33;
          }

          else
          {
            v19 = v33.__r_.__value_.__r.__words[0];
          }

          if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v20 = v33.__r_.__value_.__r.__words[1];
          }

          a3[2] = sub_100231F7C(*(a1 + 16), v19, v20);
          a3[3] = v21;
          *a3 = 3;
          goto LABEL_76;
        }
      }

      while (v14 != 92);
      sub_100296DE4(&v33, v9, v13);
      v15 = __endptr;
      v16 = __endptr[1];
      if (v16 <= 0x65)
      {
        if (__endptr[1] > 0x5Bu)
        {
          if (v16 != 92)
          {
            if (v16 != 98)
            {
              goto LABEL_49;
            }

            LOBYTE(v16) = 8;
          }
        }

        else if (v16 != 34 && v16 != 39)
        {
          goto LABEL_49;
        }
      }

      else if (__endptr[1] <= 0x71u)
      {
        if (v16 == 102)
        {
          LOBYTE(v16) = 12;
        }

        else
        {
          if (v16 != 110)
          {
            goto LABEL_49;
          }

          LOBYTE(v16) = 10;
        }
      }

      else
      {
        switch(v16)
        {
          case 'r':
            LOBYTE(v16) = 13;
            break;
          case 't':
            LOBYTE(v16) = 9;
            break;
          case 'u':
            sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'\\uXXXX' currently not supported");
            sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3568);
          default:
LABEL_49:
            sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid escape character");
            sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3569);
        }
      }

      std::string::append(&v33, 1uLL, v16);
      v9 = (v15 + 2);
    }
  }

  v22 = (v5 + 9);
  __endptr = v5 + 9;
  memset(&v33, 0, sizeof(v33));
  std::string::reserve(&v33, 0x20000uLL);
  while (1)
  {
    v23 = v22;
    v24 = v22->__r_.__value_.__s.__data_[0];
    if (v24 > 0xC)
    {
      break;
    }

    while (1)
    {
      if (v24 == 10)
      {
        goto LABEL_81;
      }

      if (!v24)
      {
        break;
      }

LABEL_86:
      v23 = (v23 + 1);
      __endptr = v23;
      v24 = v23->__r_.__value_.__s.__data_[0];
      if (v24 > 0xC)
      {
        goto LABEL_80;
      }
    }

    sub_100296DE4(&v33, v22, v23);
    v22 = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
    __endptr = v22;
    if (!v22)
    {
      sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
      sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3451);
    }
  }

LABEL_80:
  if (v24 == 13)
  {
LABEL_81:
    sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
    sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3466);
  }

  if (v24 != 34)
  {
    goto LABEL_86;
  }

  sub_100296DE4(&v33, v22, v23);
  if (*__endptr != 34)
  {
    sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "'' - right-quote of string is missing");
    sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3478);
  }

  ++__endptr;
  size = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v33.__r_.__value_.__l.__size_;
    if (v33.__r_.__value_.__l.__size_ > 0x1F)
    {
      goto LABEL_108;
    }
  }

  else if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) > 0x1F)
  {
LABEL_108:
    operator new();
  }

  if (size)
  {
    sprintf(v35, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unrecognized Base64 header");
    sub_1002A9248(-212, "icvJSONParseValue", v35, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3540);
  }

  v31 = sub_100231FEC(0, 0x60uLL, 0x20uLL, *(a1 + 16));
  if ((*a3 & 7) != 0)
  {
    v32 = v31;
    sub_100233314(v31, a3);
    v31 = v32;
  }

  a3[2] = v31;
  *a3 = 13;
  sub_1002321B8(v31, 8);
LABEL_76:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  return __endptr;
}

void sub_10029A810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029A8E0(const char *a1)
{
  if (sub_10028A808(a1, &v4) != 1 || v4 >= 5)
  {
    v3[0] = 0;
    v3[1] = 0;
    qmemcpy(sub_1002A80E0(v3, 33), "Too complex format for the matrix", 33);
    sub_1002A8980(-2, v3, "icvDecodeSimpleFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4785);
  }

  return (v5 & 7 | (8 * v4)) - 8;
}

void sub_10029A9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029A9D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_100288FB8(a1, a2, 6, "opencv-sequence");
  if ((a6 & 0x80000000) == 0)
  {
    sub_1002899A0(a1, "level", a6);
  }

  v9 = sub_10029AC28(a3, "dt", v14, 0, v15);
  __s[0] = 0;
  v10 = *a3;
  if ((*a3 & 0x4000) != 0)
  {
    *&__s[strlen(__s)] = 0x6465736F6C6320;
    if ((v10 & 0x8000) == 0)
    {
LABEL_5:
      if ((v10 & 0x3000) != 0x1000)
      {
        goto LABEL_6;
      }

LABEL_10:
      strcat(__s, " curve");
      if ((v10 & 0xFFF) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else if ((v10 & 0x8000) == 0)
  {
    goto LABEL_5;
  }

  strcat(__s, " hole");
  if ((v10 & 0x3000) == 0x1000)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v10 & 0xFFF) != 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (*(a3 + 44) != 1)
  {
    strcat(__s, " untyped");
  }

LABEL_13:
  if (__s[0])
  {
    v11 = &__s[1];
  }

  else
  {
    v11 = __s;
  }

  sub_100289AEC(a1, "flags", v11, 1);
  sub_1002899A0(a1, "count", *(a3 + 40));
  sub_100289AEC(a1, "dt", v9, 0);
  sub_10029AFA0(a1, a3, v14, 96);
  sub_100288FB8(a1, "data", 13, 0);
  for (i = *(a3 + 88); i; i = *(i + 8))
  {
    sub_100289C48(a1, *(i + 24), *(i + 20), v9);
    if (i == **(a3 + 88))
    {
      break;
    }
  }

  sub_10028984C(a1);
  return sub_10028984C(a1);
}

char *sub_10029AC28(unsigned int *a1, char *__s1, uint64_t a3, int a4, char *a5)
{
  if (!a3)
  {
    goto LABEL_18;
  }

  v8 = a3;
  v10 = 1;
  while (1)
  {
    v11 = *v8;
    if (!*v8)
    {
      goto LABEL_18;
    }

    if (*v11)
    {
      break;
    }

LABEL_3:
    v8 = *(v8 + 8);
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (strcmp(__s1, *v11))
  {
    v12 = 0;
    do
    {
      v13 = v11[v12 + 2];
      if (!v13)
      {
        goto LABEL_3;
      }

      v12 += 2;
    }

    while (strcmp(__s1, v13));
    v10 = v12 & 0xFFFFFFFE | 1;
  }

  v14 = v11[v10];
  if (v14)
  {
    v15 = sub_10028A808(v11[v10], &v24);
    v16 = a4;
    if (v15 >= 1)
    {
      v17 = 0;
      v16 = a4;
      do
      {
        v18 = (((*(&v24 + v17 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v24 + v17 + 1) & 7))) & 3);
        v16 = ((v16 + v18 - 1) & -v18) + v18 * *(&v24 + v17);
        v17 += 2;
      }

      while (v17 < (2 * v15));
    }

    if (a4)
    {
      if (v16 == a1[11])
      {
        return v14;
      }

LABEL_26:
      v24 = 0;
      v25 = 0;
      qmemcpy(sub_1002A80E0(&v24, 71), "The size of element calculated from dt and the elem_size do not match", 71);
      sub_1002A8980(-209, &v24, "icvGetFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5819);
    }

    v22 = (((HIDWORD(v24) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (BYTE4(v24) & 7))) & 3);
    if (((v16 + v22 - 1) & -v22) != a1[11])
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_18:
    v19 = *a1;
    v20 = a1[11];
    if ((*a1 & 0xFFF) != 0 || v20 == 1)
    {
      v21 = ((v19 >> 3) & 0x1FF) + 1;
      if (v21 << ((0xFA50u >> (2 * (v19 & 7))) & 3) != v20)
      {
        v24 = 0;
        v25 = 0;
        qmemcpy(sub_1002A80E0(&v24, 68), "Size of sequence element (elem_size) is inconsistent with seq->flags", 68);
        sub_1002A8980(-209, &v24, "icvGetFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5825);
      }

      sprintf(a5, "%d%c", v21, aUcwsifdr[v19 & 7]);
      if (a5[2])
      {
        return a5;
      }

      else
      {
        return &a5[*a5 == 49];
      }
    }

    else if (v20 <= a4)
    {
      return 0;
    }

    else
    {
      if (((v20 - a4) & 3) != 0)
      {
        sprintf(a5, "%uu");
      }

      else
      {
        sprintf(a5, "%ui");
      }

      return a5;
    }
  }

  return v14;
}

void sub_10029AF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029AFA0(uint64_t result, int *a2, uint64_t a3, int a4)
{
  v6 = result;
  if (a3)
  {
    v7 = a3;
    v8 = 1;
    while (1)
    {
      v9 = *v7;
      if (!*v7)
      {
        goto LABEL_18;
      }

      if (*v9)
      {
        break;
      }

LABEL_3:
      v7 = *(v7 + 8);
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    result = strcmp("header_dt", *v9);
    if (result)
    {
      v10 = 0;
      do
      {
        v11 = v9[v10 + 2];
        if (!v11)
        {
          goto LABEL_3;
        }

        result = strcmp("header_dt", v11);
        v10 += 2;
      }

      while (result);
      v8 = v10 & 0xFFFFFFFE | 1;
    }

    v12 = v9[v8];
    if (v12)
    {
      v13 = sub_10028A808(v9[v8], v26);
      v14 = a4;
      if (v13 >= 1)
      {
        v15 = 0;
        v14 = a4;
        do
        {
          v16 = (((HIDWORD(v26[v15 / 2]) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (HIDWORD(v26[v15 / 2]) & 7))) & 3);
          v14 = ((v14 + v16 - 1) & -v16) + v16 * LODWORD(v26[v15 / 2]);
          v15 += 2;
        }

        while (v15 < (2 * v13));
      }

      if (a4)
      {
        if (v14 <= a2[1])
        {
          goto LABEL_41;
        }
      }

      else
      {
        v22 = (((HIDWORD(v26[0]) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (BYTE4(v26[0]) & 7))) & 3);
        if (((v14 + v22 - 1) & -v22) <= a2[1])
        {
LABEL_41:
          sub_100289AEC(v6, "header_dt", v12, 0);
          sub_100288FB8(v6, "header_user_data", 13, 0);
          sub_100289C48(v6, (a2 + 24), 1, v12);
          return sub_10028984C(v6);
        }
      }

      v26[0] = 0;
      v26[1] = 0;
      qmemcpy(sub_1002A80E0(v26, 74), "The size of header calculated from header_dt is greater than header_size", 74);
      sub_1002A8980(-209, v26, "icvWriteHeaderData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5755);
    }
  }

LABEL_18:
  v17 = a2[1];
  v18 = v17 - a4;
  if (v17 <= a4)
  {
    return result;
  }

  v19 = *a2;
  if (HIWORD(*a2) != 17049)
  {
    goto LABEL_37;
  }

  v20 = v17 == 128 && (*a2 & 0xFFE) == 12;
  if (v20 && a2[11] == 8)
  {
    sub_100288FB8(v6, "rect", 14, 0);
    sub_1002899A0(v6, "x", a2[24]);
    sub_1002899A0(v6, "y", a2[25]);
    sub_1002899A0(v6, "width", a2[26]);
    sub_1002899A0(v6, "height", a2[27]);
    sub_10028984C(v6);
    v21 = a2[28];

    return sub_1002899A0(v6, "color", v21);
  }

  if ((v19 & 0x42993000) != 0x42991000 || (v19 & 0xFFF) != 0 || a2[11] != 1)
  {
LABEL_37:
    if ((v18 & 3) != 0)
    {
      v24 = (v17 - a4);
      v23 = "%uu";
    }

    else
    {
      v24 = v18 >> 2;
      v23 = "%ui";
    }

    v12 = v25;
    sprintf(v25, v23, v24);
    goto LABEL_41;
  }

  sub_100288FB8(v6, "origin", 14, 0);
  sub_1002899A0(v6, "x", a2[24]);
  sub_1002899A0(v6, "y", a2[25]);

  return sub_10028984C(v6);
}

void sub_10029B3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029B408(int **a1, int **a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 < 1)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  while (1)
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v5++;
    result = (v6 - v8);
    if (v6 != v8)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

void sub_10029B43C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  operator new();
}

void sub_10029B6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 40) = v13;
    operator delete(v13);
  }

  v14 = *v10;
  if (*v10)
  {
    *(v9 + 16) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10029B70C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  if (!a2)
  {
    v15 = 0;
    v16 = 0;
    v7 = sub_1002A80E0(&v15, 3);
    *(v7 + 2) = 99;
    *v7 = 29299;
    sub_1002A8980(-215, &v15, "RawDataToBinaryConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8036);
  }

  v8 = *(a4 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (!v8)
  {
    v15 = 0;
    v16 = 0;
    v9 = sub_1002A80E0(&v15, 11);
    *(v9 + 7) = 690518388;
    *v9 = *"!dt.empty()";
    sub_1002A8980(-215, &v15, "RawDataToBinaryConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8037);
  }

  if (a3 <= 0)
  {
    v15 = 0;
    v16 = 0;
    v10 = sub_1002A80E0(&v15, 7);
    *(v10 + 3) = 807419424;
    *v10 = 544105836;
    sub_1002A8980(-215, &v15, "RawDataToBinaryConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8038);
  }

  sub_10029B914(a1, a4);
  v11 = *a1;
  a1[1] = *a1;
  a1[2] = v11;
  if (*(a4 + 23) >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  v13 = sub_10028C47C(v12);
  a1[2] = *a1 + v13 * a3;
  a1[3] = v13;
  return a1;
}

void sub_10029B8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 40) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10029B914(void *a1, uint64_t a2)
{
  v32 = 0;
  v31 = 0;
  sub_100292868(v27, a2, 8);
  v3 = v27[0];
  if ((*(&v29[1].__locale_ + *(v27[0] - 24)) & 2) == 0)
  {
    v4 = 0;
LABEL_4:
    v5 = std::istream::operator>>();
    if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
    {
      std::ios_base::clear((v27 + *(v27[0] - 24)), 0);
      v32 = 1;
    }

    else if (!v32)
    {
      v25 = 0;
      v26 = 0;
      *sub_1002A80E0(&v25, 8) = 0x5530203E20746E63;
      sub_1002A8980(-215, &v25, "make_to_binary_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8090);
    }

    v6 = sub_10029BEB0(v27, &v31);
    if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
    {
      v3 = v27[0];
      goto LABEL_41;
    }

    while (1)
    {
      if (!v32--)
      {
        v3 = v27[0];
        if ((*(&v29[1].__locale_ + *(v27[0] - 24)) & 2) != 0)
        {
          goto LABEL_41;
        }

        goto LABEL_4;
      }

      v9 = sub_10029C020;
      if (v31 > 0x68u)
      {
        break;
      }

      v10 = 1;
      if (v31 == 99)
      {
        goto LABEL_29;
      }

      if (v31 != 100)
      {
        if (v31 != 102)
        {
          goto LABEL_25;
        }

        v11 = sub_10029C050;
LABEL_27:
        v9 = v11;
        v10 = 4;
        goto LABEL_29;
      }

      v9 = sub_10029C060;
      v10 = 8;
LABEL_29:
      v13 = (v4 + v10 - 1) & -v10;
      v15 = a1[5];
      v14 = a1[6];
      if (v15 < v14)
      {
        *v15 = v13;
        *(v15 + 1) = v9;
        v7 = (v15 + 16);
      }

      else
      {
        v16 = a1[4];
        v17 = v15 - v16;
        v18 = (v15 - v16) >> 4;
        v19 = v18 + 1;
        if ((v18 + 1) >> 60)
        {
          sub_10000918C();
        }

        v20 = v14 - v16;
        if (v20 >> 3 > v19)
        {
          v19 = v20 >> 3;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v21 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (!(v21 >> 60))
          {
            operator new();
          }

          sub_10000927C();
        }

        v22 = (16 * v18);
        *v22 = v13;
        v22[1] = v9;
        v7 = 16 * v18 + 16;
        memcpy(0, v16, v17);
        a1[4] = 0;
        a1[5] = v7;
        a1[6] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      a1[5] = v7;
      v4 = v13 + v10;
    }

    if (v31 > 0x74u)
    {
      v10 = 1;
      if (v31 == 117)
      {
        goto LABEL_29;
      }

      if (v31 != 119)
      {
LABEL_25:
        v25 = 0;
        v26 = 0;
        v12 = sub_1002A80E0(&v25, 19);
        *(v12 + 15) = 578056815;
        *v12 = *"!type not support";
        sub_1002A8980(-215, &v25, "make_to_binary_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8124);
      }

      goto LABEL_24;
    }

    if (v31 != 105)
    {
      if (v31 != 115)
      {
        goto LABEL_25;
      }

LABEL_24:
      v9 = sub_10029C030;
      v10 = 2;
      goto LABEL_29;
    }

    v11 = sub_10029C040;
    goto LABEL_27;
  }

LABEL_41:
  if ((*(&v29[1].__locale_ + *(v3 - 24)) & 2) == 0)
  {
    v25 = 0;
    v26 = 0;
    v23 = sub_1002A80E0(&v25, 9);
    *(v23 + 8) = 41;
    *v23 = *"iss.eof()";
    sub_1002A8980(-215, &v25, "make_to_binary_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8135);
  }

  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  std::locale::~locale(v29);
  std::istream::~istream();
  return std::ios::~ios();
}

void sub_10029BE44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_100292DB8(va1);
  _Unwind_Resume(a1);
}

void *sub_10029BEB0(void *a1, _BYTE *a2)
{
  std::istream::sentry::sentry();
  if (v8 == 1)
  {
    v4 = *(a1 + *(*a1 - 24) + 40);
    v5 = v4[3];
    if (v5 == v4[4])
    {
      LODWORD(v4) = (*(*v4 + 80))(v4);
      if (v4 == -1)
      {
        v6 = 6;
        goto LABEL_6;
      }
    }

    else
    {
      v4[3] = v5 + 1;
      LOBYTE(v4) = *v5;
    }

    v6 = 0;
    *a2 = v4;
LABEL_6:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v6);
  }

  return a1;
}

void sub_10029BF94(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x10029BF54);
  }

  __cxa_rethrow();
}

void **sub_10029C070(void **a1)
{
  if (a1[8] != a1[7])
  {
    sub_10029C17C(a1);
  }

  if (*(*a1 + 1) == 24)
  {
    sub_10028614C(*a1, "");
    v2 = *a1;
    v3 = (*a1)[16];
    v2[15] = v3;
    v4 = *(v2 + 22);
    if (v4 < 0)
    {
      *v3 = 10;
      sub_10028614C(v2, v2[16]);
      v3 = v2[16];
      v4 = *(v2 + 22);
      v5 = *(v2 + 16);
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *(v2 + 16);
      if (v4 == v5)
      {
LABEL_6:
        v6 = v4;
LABEL_9:
        v2[15] = v3 + v6;
        bzero((*a1)[16], *(*a1 + 22));
        (*a1)[15] = (*a1)[16];
        goto LABEL_10;
      }
    }

    v6 = v5;
    memset(v3, 32, v5);
    *(v2 + 22) = v5;
    v3 = v2[16];
    goto LABEL_9;
  }

LABEL_10:
  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

BOOL sub_10029C17C(void **a1)
{
  v2 = sub_100292270(a1[7], a1[4], 0, a1[8] - a1[7]);
  if (v2)
  {
    a1[8] = a1[7];
    v3 = *a1;
    if (*(*a1 + 1) == 24)
    {
      sub_10028614C(*a1, a1[4]);
    }

    else
    {
      strcpy(__s, "\n");
      v4 = *(v3 + 64);
      memset(__b, 32, v4);
      __b[v4] = 0;
      sub_10028614C(v3, __b);
      sub_10028614C(*a1, a1[4]);
      sub_10028614C(*a1, __s);
      v5 = *a1;
      v7 = *(v5 + 120);
      v6 = *(v5 + 128);
      v8 = *(v5 + 88);
      if (v7 > &v6[v8])
      {
        *v7 = 10;
        sub_10028614C(v5, *(v5 + 128));
        v6 = *(v5 + 128);
        LODWORD(v8) = *(v5 + 88);
      }

      v9 = *(v5 + 64);
      if (v8 == v9)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
        memset(v6, 32, v9);
        *(v5 + 88) = v9;
        v6 = *(v5 + 128);
      }

      *(v5 + 120) = &v6[v10];
    }
  }

  return v2 != 0;
}

uint64_t sub_10029C2DC(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (!a2)
  {
    v10 = 0;
    v11 = 0;
    v7 = sub_1002A80E0(&v10, 3);
    *(v7 + 2) = 99;
    *v7 = 29299;
    sub_1002A8980(-215, &v10, "BinaryToCvSeqConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8155);
  }

  if (!a4)
  {
    v10 = 0;
    v11 = 0;
    *sub_1002A80E0(&v10, 2) = 29796;
    sub_1002A8980(-215, &v10, "BinaryToCvSeqConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8156);
  }

  if (a3 < 0)
  {
    v10 = 0;
    v11 = 0;
    *sub_1002A80E0(&v10, 8) = 0x30203D3E206E656CLL;
    sub_1002A8980(-215, &v10, "BinaryToCvSeqConvertor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8157);
  }

  sub_10029C4AC(a1, a4);
  *(a1 + 56) = *(a1 + 32);
  v8 = sub_10028C47C(a4);
  *(a1 + 16) = *(a1 + 8) + v8 * a3;
  *(a1 + 24) = v8;
  return a1;
}

void sub_10029C440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 40) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10029C4AC(void *a1, char *__s)
{
  v37 = 0;
  v36 = 0;
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100241528();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v31 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  sub_100292868(v32, &__dst, 8);
  if (v31 < 0)
  {
    operator delete(__dst);
  }

  v6 = v32[0];
  if ((*(&v34[1].__locale_ + *(v32[0] - 24)) & 2) == 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = std::istream::operator>>();
      if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
      {
        std::ios_base::clear((v32 + *(v32[0] - 24)), 0);
        v37 = 1;
      }

      else if (!v37)
      {
        __dst = 0;
        v30 = 0;
        *sub_1002A80E0(&__dst, 8) = 0x5530203E20746E63;
        sub_1002A8980(-215, &__dst, "make_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8248);
      }

      v9 = sub_10029BEB0(v32, &v36);
      if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
      {
        v6 = v32[0];
        goto LABEL_65;
      }

LABEL_19:
      if (v37--)
      {
        break;
      }

LABEL_11:
      v6 = v32[0];
      if ((*(&v34[1].__locale_ + *(v32[0] - 24)) & 2) != 0)
      {
        goto LABEL_65;
      }
    }

    while (1)
    {
      v11 = sub_10029CD48;
      if (v36 <= 0x68u)
      {
        v12 = 1;
        switch(v36)
        {
          case 'c':
            goto LABEL_35;
          case 'd':
            v13 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
            v7 = v13 + 8;
            v15 = sub_10029CDC4;
            v16 = 6;
            v17 = a1[5];
            v18 = a1[6];
            if (v17 < v18)
            {
              goto LABEL_18;
            }

            break;
          case 'f':
            v13 = (v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            v7 = v13 + 4;
            v15 = sub_10029CDB4;
            v16 = 5;
            v17 = a1[5];
            v18 = a1[6];
            if (v17 < v18)
            {
LABEL_18:
              *v17 = v16;
              v17[1] = v13;
              v17[2] = v15;
              a1[5] = v17 + 3;
              goto LABEL_19;
            }

            break;
          default:
            goto LABEL_32;
        }
      }

      else
      {
        if (v36 > 0x74u)
        {
          if (v36 == 117)
          {
            v12 = 1;
          }

          else
          {
            if (v36 != 119)
            {
LABEL_32:
              __dst = 0;
              v30 = 0;
              v14 = sub_1002A80E0(&__dst, 19);
              *(v14 + 15) = 578056815;
              *v14 = *"!type not support";
              sub_1002A8980(-215, &__dst, "make_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8283);
            }

LABEL_31:
            v11 = sub_10029CD5C;
            v12 = 2;
          }

LABEL_35:
          v13 = (v7 + v12 - 1) & -v12;
          v7 = v13 + v12;
          if (v36 <= 0x68u)
          {
            v15 = v11;
            v16 = 1;
            v17 = a1[5];
            v18 = a1[6];
            if (v17 < v18)
            {
              goto LABEL_18;
            }
          }

          else if (v36 > 0x74u)
          {
            if (v36 == 117)
            {
              v16 = 0;
              v15 = v11;
              v17 = a1[5];
              v18 = a1[6];
              if (v17 < v18)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v15 = v11;
              v16 = 2;
              v17 = a1[5];
              v18 = a1[6];
              if (v17 < v18)
              {
                goto LABEL_18;
              }
            }
          }

          else
          {
            v15 = v11;
            v16 = 3;
            v17 = a1[5];
            v18 = a1[6];
            if (v17 < v18)
            {
              goto LABEL_18;
            }
          }

          goto LABEL_52;
        }

        if (v36 != 105)
        {
          if (v36 != 115)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        v13 = (v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v7 = v13 + 4;
        v15 = sub_10029CD7C;
        v16 = 4;
        v17 = a1[5];
        v18 = a1[6];
        if (v17 < v18)
        {
          goto LABEL_18;
        }
      }

LABEL_52:
      v19 = a1[4];
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v19) >> 3) + 1;
      if (v20 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10000918C();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v19) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_10000927C();
      }

      v23 = (8 * ((v17 - v19) >> 3));
      *v23 = v16;
      v23[1] = v13;
      v23[2] = v15;
      v24 = v23 + 3;
      v25 = v23 - (v17 - v19);
      memcpy(v25, v19, v17 - v19);
      a1[4] = v25;
      a1[5] = v24;
      a1[6] = 0;
      if (v19)
      {
        operator delete(v19);
      }

      a1[5] = v24;
      if (!v37--)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_65:
  if ((*(&v34[1].__locale_ + *(v6 - 24)) & 2) == 0)
  {
    __dst = 0;
    v30 = 0;
    v27 = sub_1002A80E0(&__dst, 9);
    *(v27 + 8) = 41;
    *v27 = *"iss.eof()";
    sub_1002A8980(-215, &__dst, "make_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8308);
  }

  if (a1[5] == a1[4])
  {
    __dst = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&__dst, 22), "binary_to_funcs.size()", 22);
    sub_1002A8980(-215, &__dst, "make_funcs", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8309);
  }

  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  std::locale::~locale(v34);
  std::istream::~istream();
  return std::ios::~ios();
}

void sub_10029CC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1002A8124(&__p);
  sub_100292DB8(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10029CD48(_BYTE *a1, _BYTE *a2)
{
  *a2 = 0;
  *a2 = *a1;
  return 1;
}

uint64_t sub_10029CD5C(unsigned __int8 *a1, _WORD *a2)
{
  *a2 = 0;
  v2 = *a1;
  *a2 = v2;
  *a2 = v2 | (a1[1] << 8);
  return 2;
}

uint64_t sub_10029CD7C(unsigned __int8 *a1, int *a2)
{
  *a2 = 0;
  v2 = *a1;
  *a2 = v2;
  v3 = v2 | (a1[1] << 8);
  *a2 = v3;
  v4 = v3 | (a1[2] << 16);
  *a2 = v4;
  *a2 = v4 | (a1[3] << 24);
  return 4;
}

uint64_t sub_10029CDD4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10029CEB8(void **a1)
{
  sub_1001FF694((a1 + 3), a1[2]);
  v2 = *(*a1 + 1);

  return v2(a1);
}

uint64_t sub_10029CF18()
{
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-sequence";
  v2 = 0;
  v5 = sub_10028CB90;
  v6 = sub_10028CBA8;
  v9 = sub_10028DA40;
  v7 = sub_10028CC48;
  v8 = sub_10028D858;
  sub_10028C72C(&v1);
  qword_1004D5478 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D5478, &_mh_execute_header);
  v1 = 0x4800000000;
  v2 = 0;
  v3 = 0;
  v4 = "opencv-sequence-tree";
  v5 = sub_10028CB90;
  v8 = sub_10028D858;
  v9 = sub_10028DA40;
  v6 = sub_10028CBA8;
  v7 = sub_10028DA50;
  sub_10028C72C(&v1);
  qword_1004D5480 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D5480, &_mh_execute_header);
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-graph";
  v2 = 0;
  v5 = sub_10028DD68;
  v6 = sub_10028DD8C;
  v9 = sub_10028F40C;
  v7 = sub_10028DE2C;
  v8 = sub_10028EE38;
  sub_10028C72C(&v1);
  qword_1004D5488 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D5488, &_mh_execute_header);
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-sparse-matrix";
  v2 = 0;
  v5 = sub_10028F414;
  v6 = sub_1001FCB74;
  v9 = sub_1001FCC70;
  v7 = sub_10028F42C;
  v8 = sub_10028F9A8;
  sub_10028C72C(&v1);
  qword_1004D5490 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D5490, &_mh_execute_header);
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-image";
  v2 = 0;
  v5 = sub_10028FCE8;
  v6 = sub_1001FF014;
  v9 = sub_1001FF4CC;
  v7 = sub_10028FCFC;
  v8 = sub_10029048C;
  sub_10028C72C(&v1);
  qword_1004D5498 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D5498, &_mh_execute_header);
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-matrix";
  v2 = 0;
  v5 = sub_1002907E8;
  v6 = sub_1001FB074;
  v9 = sub_1001FB1DC;
  v7 = sub_10029081C;
  v8 = sub_100290BCC;
  sub_10028C72C(&v1);
  qword_1004D54A0 = qword_1004D5468;
  __cxa_atexit(sub_10028CABC, &qword_1004D54A0, &_mh_execute_header);
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-nd-matrix";
  v2 = 0;
  v5 = sub_100290D5C;
  v6 = sub_100290D74;
  v9 = sub_1001FB718;
  v7 = sub_100290D78;
  v8 = sub_100291204;
  sub_10028C72C(&v1);
  qword_1004D54A8 = qword_1004D5468;
  return __cxa_atexit(sub_10028CABC, &qword_1004D54A8, &_mh_execute_header);
}

void *sub_10029D30C()
{
  v0 = sub_1002AA050();

  return sub_1002A9C00(v0);
}

unsigned int *sub_10029D334(unsigned int *result, int a2)
{
  if ((a2 & 0x7FFFFFFF) != 0)
  {
    v7 = v2;
    v8 = v3;
    if (a2 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    v5 = result;
    sub_1002A04E4(&v6, a2 >> 31, 156, v4);
    result = v5;
    *v5 = v6;
  }

  else
  {
    *result = (a2 >> 31) & 0xCF000000;
  }

  return result;
}

unsigned int *sub_10029D39C@<X0>(unsigned int *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = v2 & 0x7FFFFF;
  if ((~v2 & 0x7F800000) != 0)
  {
    v7 = (v2 >> 23);
    if (!(v2 >> 23))
    {
      if (!v3)
      {
        *a2 = (v2 << 32) & 0x8000000000000000;
        return result;
      }

      v8 = v2 << 16;
      if (v3 >= 0x10000)
      {
        v8 = v2 & 0x7FFFFF;
      }

      LODWORD(v9) = v8 << 8;
      if (HIBYTE(v8))
      {
        v9 = v8;
      }

      else
      {
        v9 = v9;
      }

      if (HIBYTE(v8))
      {
        v10 = 16 * (v3 < 0x10000);
      }

      else
      {
        v10 = (16 * (v3 < 0x10000)) | 8;
      }

      v11 = v10 + byte_1003E3D58[v9 >> 24] - 8;
      v3 <<= v11;
      v7 = -v11;
    }

    *a2 = ((v2 >> 31 << 63) | (v3 << 29)) + (v7 << 52) + 0x3800000000000000;
    return result;
  }

  v4 = (v2 >> 31 << 63) | 0x7FF0000000000000;
  v5 = (v2 << 29) | (v2 >> 31 << 63) | 0x7FF8000000000000;
  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  *a2 = v6;
  return result;
}

int *sub_10029D46C@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, int *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (((*a2 ^ *a1) & 0x80000000) != 0)
  {
    return sub_1002A0124(a3, v4, v5);
  }

  else
  {
    return sub_1002A02DC(a3, v4, v5);
  }
}

int *sub_10029D490@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (((*a2 ^ *a1) & 0x80000000) != 0)
  {
    return sub_1002A02DC(a3, v4, v5);
  }

  else
  {
    return sub_1002A0124(a3, v4, v5);
  }
}

int *sub_10029D4B4@<X0>(int *result@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *result;
  v4 = (*result >> 23);
  v5 = *result & 0x7FFFFF;
  v6 = (*a2 >> 23);
  v7 = *a2 & 0x7FFFFF;
  v8 = *a2 ^ *result;
  if (v4 == 255)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    if (v6 == 255 && v7 != 0)
    {
      goto LABEL_11;
    }

    v10 = v6 | v7;
LABEL_28:
    v15 = v8 & 0x80000000 | 0x7F800000;
    if (!v10)
    {
      v15 = -4194304;
    }

    *a3 = v15;
    return result;
  }

  if ((~*a2 & 0x7F800000) == 0)
  {
    if (v7)
    {
LABEL_11:
      if (v5)
      {
        v11 = (~v3 & 0x7F800000) == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v12 = *result;
      }

      else
      {
        v12 = *a2;
      }

      if ((v3 & 0x7FC00000) != 0x7F800000 || (v3 & 0x3FFFFF) == 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = *result;
      }

      *a3 = v14 | 0x400000;
      return result;
    }

    v10 = v4 | v5;
    goto LABEL_28;
  }

  if (!(*result >> 23))
  {
    if (!v5)
    {
      goto LABEL_59;
    }

    v16 = *result << 16;
    if (v5 >= 0x10000)
    {
      v16 = *result & 0x7FFFFF;
    }

    LODWORD(v17) = v16 << 8;
    if (HIBYTE(v16))
    {
      v17 = v16;
    }

    else
    {
      v17 = v17;
    }

    v18 = byte_1003E3D58[v17 >> 24];
    if (HIBYTE(v16))
    {
      v19 = 16 * (v5 < 0x10000);
    }

    else
    {
      v19 = (16 * (v5 < 0x10000)) | 8;
    }

    v20 = v19 + v18 - 8;
    v4 = 1 - v20;
    v5 <<= v20;
    if ((*a2 >> 23))
    {
      goto LABEL_51;
    }

LABEL_41:
    if (v7)
    {
      v21 = *a2 << 16;
      if (v7 >= 0x10000)
      {
        v21 = *a2 & 0x7FFFFF;
      }

      LODWORD(v22) = v21 << 8;
      if (HIBYTE(v21))
      {
        v22 = v21;
      }

      else
      {
        v22 = v22;
      }

      v23 = byte_1003E3D58[v22 >> 24];
      if (HIBYTE(v21))
      {
        v24 = 16 * (v7 < 0x10000);
      }

      else
      {
        v24 = (16 * (v7 < 0x10000)) | 8;
      }

      v25 = v24 + v23 - 8;
      v6 = 1 - v25;
      v7 <<= v25;
      goto LABEL_51;
    }

LABEL_59:
    *a3 = v8 & 0x80000000;
    return result;
  }

  if (!(*a2 >> 23))
  {
    goto LABEL_41;
  }

LABEL_51:
  v26 = v6 + v4;
  v27 = ((v7 << 8) | 0x80000000) * ((v5 << 7) | 0x40000000);
  v28 = HIDWORD(v27) | ((v27 & 0xFFFF8000) != 0);
  v29 = v27 >> 62 == 0;
  if (v29)
  {
    v30 = -128;
  }

  else
  {
    v30 = -127;
  }

  v31 = v26 + v30;
  v32 = v28 << v29;
  if (v31 >= 0xFD)
  {
    if ((v31 & 0x8000) != 0)
    {
      v33 = -v31;
      v34 = v33;
      v32 = (v32 >> v33) | (v32 << -v33 != 0);
      v31 = 0;
      if (v34 > 0x1E)
      {
        v32 = 1;
      }
    }

    else
    {
      if (v31 != 253 || ((v32 + 64) & 0x80000000) != 0)
      {
        *a3 = v8 & 0x80000000 | 0x7F800000;
        return result;
      }

      v31 = 253;
    }
  }

  v35 = v8 & 0x80000000;
  v36 = v31 << 23;
  v37 = ~((v32 & 0x7F) == 64) & ((v32 + 64) >> 7);
  if (!v37)
  {
    v36 = 0;
  }

  *a3 = (v37 | v35) + v36;
  return result;
}

int *sub_10029D700@<X0>(int *result@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *result;
  v4 = (*result >> 23);
  v5 = *a2;
  v6 = *result & 0x7FFFFF;
  v7 = *a2 & 0x7FFFFF;
  v8 = *a2 ^ *result;
  if (v4 == 255)
  {
    if (!v6)
    {
      if ((~v5 & 0x7F800000) == 0)
      {
        if (!v7)
        {
          goto LABEL_62;
        }

        goto LABEL_8;
      }

LABEL_61:
      *a3 = v8 & 0x80000000 | 0x7F800000;
      return result;
    }

LABEL_8:
    if (v6)
    {
      v9 = (~v3 & 0x7F800000) == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = *result;
    }

    else
    {
      v10 = *a2;
    }

    if ((v3 & 0x7FC00000) != 0x7F800000 || (v3 & 0x3FFFFF) == 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = *result;
    }

    *a3 = v12 | 0x400000;
    return result;
  }

  if ((~v5 & 0x7F800000) == 0)
  {
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_59:
    *a3 = v8 & 0x80000000;
    return result;
  }

  v13 = (v5 >> 23);
  if ((v5 >> 23))
  {
    if ((*result >> 23))
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (!v7)
    {
      if (!(v4 | v6))
      {
LABEL_62:
        *a3 = -4194304;
        return result;
      }

      goto LABEL_61;
    }

    v14 = *a2 << 16;
    if (v7 >= 0x10000)
    {
      v14 = *a2 & 0x7FFFFF;
    }

    LODWORD(v15) = v14 << 8;
    if (HIBYTE(v14))
    {
      v15 = v14;
    }

    else
    {
      v15 = v15;
    }

    v16 = byte_1003E3D58[v15 >> 24];
    if (HIBYTE(v14))
    {
      v17 = 16 * (v7 < 0x10000);
    }

    else
    {
      v17 = (16 * (v7 < 0x10000)) | 8;
    }

    v18 = v17 + v16 - 8;
    v13 = 1 - v18;
    v7 <<= v18;
    if ((*result >> 23))
    {
      goto LABEL_44;
    }
  }

  if (!v6)
  {
    goto LABEL_59;
  }

  v19 = *result << 16;
  if (v6 >= 0x10000)
  {
    v19 = *result & 0x7FFFFF;
  }

  LODWORD(v20) = v19 << 8;
  if (HIBYTE(v19))
  {
    v20 = v19;
  }

  else
  {
    v20 = v20;
  }

  v21 = byte_1003E3D58[v20 >> 24];
  if (HIBYTE(v19))
  {
    v22 = 16 * (v6 < 0x10000);
  }

  else
  {
    v22 = (16 * (v6 < 0x10000)) | 8;
  }

  v23 = v22 + v21 - 8;
  v4 = 1 - v23;
  v6 <<= v23;
LABEL_44:
  v24 = v4 - v13;
  v25 = v6 | 0x800000;
  v26 = v7 | 0x800000;
  if (v25 < v26)
  {
    v27 = 125;
  }

  else
  {
    v27 = 126;
  }

  v28 = v27 + v24;
  v29 = 30;
  if (v25 < v26)
  {
    v29 = 31;
  }

  v30 = v25 << v29;
  v31 = v30 / v26;
  if ((v30 / v26) * v26 == v30)
  {
    v32 = v30 / v26;
  }

  else
  {
    v32 = v31 + 1;
  }

  if ((v31 & 0x3F) != 0)
  {
    v32 = v31;
  }

  if (v28 >= 0xFDu)
  {
    if ((v28 & 0x8000) != 0)
    {
      v33 = -v28;
      v34 = v33;
      v35 = v32 != 0;
      v32 = (v32 >> v33) | (v32 << -v33 != 0);
      v28 = 0;
      if (v34 > 0x1E)
      {
        v32 = v35;
      }
    }

    else
    {
      if (v28 != 253 || ((v32 + 64) & 0x80000000) != 0)
      {
        goto LABEL_61;
      }

      v28 = 253;
    }
  }

  v36 = v8 & 0x80000000;
  v37 = v28 << 23;
  v38 = ~((v32 & 0x7F) == 64) & ((v32 + 64) >> 7);
  if (!v38)
  {
    v37 = 0;
  }

  *a3 = (v38 | v36) + v37;
  return result;
}

BOOL sub_10029D948(unsigned int *a1, int *a2)
{
  v2 = *a2;
  if ((~*a2 & 0x7F800000) == 0 && (*a2 & 0x7FFFFF) != 0)
  {
    return 0;
  }

  v4 = *a1;
  if ((~*a1 & 0x7F800000) == 0 && (*a1 & 0x7FFFFF) != 0)
  {
    return 0;
  }

  if (((v4 ^ v2) & 0x80000000) != 0)
  {
    v7 = ((v4 | v2) & 0x7FFFFFFF) != 0;
    return v2 < 0 && v7;
  }

  else if (v2 == v4)
  {
    return 0;
  }

  else
  {
    return (v2 < 0) ^ (v2 < v4);
  }
}

BOOL sub_10029D9C4(int *a1, unsigned int *a2)
{
  v2 = *a1;
  if ((~*a1 & 0x7F800000) == 0 && (*a1 & 0x7FFFFF) != 0)
  {
    return 0;
  }

  v4 = *a2;
  if ((~*a2 & 0x7F800000) == 0 && (*a2 & 0x7FFFFF) != 0)
  {
    return 0;
  }

  if (((v4 ^ v2) & 0x80000000) != 0)
  {
    v7 = ((v4 | v2) & 0x7FFFFFFF) != 0;
    return v2 < 0 && v7;
  }

  else if (v2 == v4)
  {
    return 0;
  }

  else
  {
    return (v2 < 0) ^ (v2 < v4);
  }
}

void *sub_10029DA40(void *result, int a2)
{
  if (a2)
  {
    if (a2 >= 0)
    {
      v2 = a2;
    }

    else
    {
      v2 = -a2;
    }

    v3 = v2 << 16;
    if (v2 >= 0x10000)
    {
      v3 = v2;
    }

    LODWORD(v4) = v3 << 8;
    if (HIBYTE(v3))
    {
      v4 = v3;
    }

    else
    {
      v4 = v4;
    }

    if (HIBYTE(v3))
    {
      v5 = 16 * (v2 < 0x10000);
    }

    else
    {
      v5 = (16 * (v2 < 0x10000)) | 8;
    }

    v6 = v5 + byte_1003E3D58[v4 >> 24] + 21;
    *result = (v2 << v6) + ((a2 >> 31) << 63) + ((1074 - v6) << 52);
  }

  else
  {
    *result = 0;
  }

  return result;
}

unint64_t *sub_10029DAC0(unint64_t *result, uint64_t a2)
{
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6[3] = v2;
    v6[4] = v3;
    if (a2 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    v5 = result;
    sub_1002A0A48(v6, a2 >> 63, 1084, v4);
    result = v5;
    *v5 = v6[0];
  }

  else
  {
    *result = (a2 >> 63) & 0xC3E0000000000000;
  }

  return result;
}

uint64_t sub_10029DB28(int *a1)
{
  v1 = *a1;
  v2 = (*a1 >> 23);
  if (v2 < 0x7F)
  {
    return 0;
  }

  v4 = v1 & 0x7FFFFF;
  if (v2 < 0x9E)
  {
    v5 = ((v4 << 8) | 0x80000000) >> (-98 - v2);
    if (v1 >= 0)
    {
      return v5;
    }

    else
    {
      return -v5;
    }
  }

  else if (v1 == -822083584)
  {
    return 0x80000000;
  }

  else if ((v2 != 255 || v4 == 0) && v1 <= -1)
  {
    return 0x80000000;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t sub_10029DB98(unsigned int *a1)
{
  v1 = *a1;
  v2 = (v1 >> 23);
  v3 = v1 & 0x7FFFFF;
  v4 = (v1 & 0x7FFFFF) == 0;
  if (v2 != 255)
  {
    v4 = 1;
  }

  if ((v1 & 0x80000000) == 0)
  {
    v4 = 0;
  }

  LODWORD(v5) = v3 | 0x800000;
  if ((v1 & 0x7F800000) != 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5 << 32;
  if (v2 <= 0xA9)
  {
    if (v2 < 0x6C)
    {
      v6 = v5 != 0;
      goto LABEL_14;
    }

    v6 = (v6 >> (-86 - v2)) | (v6 << ((v1 >> 23) + 22) != 0);
  }

  if (v6 > 0xFFFFFFFF7FFLL)
  {
LABEL_19:
    if (v4)
    {
      return 0x80000000;
    }

    else
    {
      return 0x7FFFFFFFLL;
    }
  }

LABEL_14:
  v7 = ((v6 + 2048) >> 12) & ~((v6 & 0xFFF) == 2048);
  if (v4)
  {
    result = -v7;
  }

  else
  {
    result = v7;
  }

  if (v7 && ((v4 ^ (result >= 0)) & 1) == 0)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10029DC5C(uint64_t *a1)
{
  v1 = *a1 >> 52;
  v2 = *a1 & 0xFFFFFFFFFFFFFLL;
  v3 = v2 == 0;
  v4 = v1 & 0x7FF;
  v5 = v2 | 0x10000000000000;
  if ((v1 & 0x7FF) != 0)
  {
    v2 |= 0x10000000000000uLL;
  }

  if (v4 != 2047)
  {
    v3 = 1;
  }

  v6 = *a1 < 0 && v3;
  if (v4 <= 0x426)
  {
    if (v4 < 0x3E9)
    {
      v2 = v2 != 0;
      goto LABEL_14;
    }

    v2 = (v5 >> (39 - v1)) | (v5 << (v1 + 25) != 0);
  }

  if (v2 > 0xFFFFFFFF7FFLL)
  {
LABEL_19:
    if (v6)
    {
      return 0x80000000;
    }

    else
    {
      return 0x7FFFFFFFLL;
    }
  }

LABEL_14:
  v7 = ((v2 + 2048) >> 12) & ~((v2 & 0xFFF) == 2048);
  if (v6)
  {
    result = -v7;
  }

  else
  {
    result = v7;
  }

  if (v7 && ((v6 ^ (result >= 0)) & 1) == 0)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10029DD18(uint64_t *a1)
{
  v1 = *a1 >> 52;
  v2 = *a1 & 0xFFFFFFFFFFFFFLL;
  v3 = v2 == 0;
  v4 = v1 & 0x7FF;
  v5 = v2 | 0x10000000000000;
  if ((v1 & 0x7FF) != 0)
  {
    v2 |= 0x10000000000000uLL;
  }

  if (v4 != 2047)
  {
    v3 = 1;
  }

  v6 = *a1 < 0 && v3;
  v7 = (v5 >> (39 - v1)) | (v5 << (v1 + 25) != 0);
  if (v4 < 0x3E9)
  {
    v7 = v2 != 0;
  }

  if (v4 > 0x426)
  {
    v7 = v2;
  }

  v8 = 4095;
  if (!v6)
  {
    v8 = 0;
  }

  v9 = v7 + v8;
  if (v9 >> 44 || (!v6 ? (result = (v9 >> 12)) : (result = -(v9 >> 12)), v9 >= 0x1000 && ((v6 ^ (result >= 0)) & 1) == 0))
  {
    if (v6)
    {
      return 0x80000000;
    }

    else
    {
      return 0x7FFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_10029DDC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*a1 >> 52) & 0x7FF;
  v3 = (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v2 != 2047)
  {
    v3 = 1;
  }

  if (v1 >= 0)
  {
    v3 = 0;
  }

  v4 = *a1 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  if (v2 < 0x433)
  {
    if (v2 < 0x3F4)
    {
      return 0;
    }

    else
    {
      v7 = v4 >> (51 - (*a1 >> 52));
      v8 = v4 << ((*a1 >> 52) - 51);
      if (v8 < 0)
      {
        v7 = (v7 + 1) & ~((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0);
      }

      v9 = v7 == 0;
      if (v3)
      {
        v7 = -v7;
      }

      v10 = 0x8000000000000000;
      if (!v3)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((v9 | v3 ^ (v7 >= 0)))
      {
        return v7;
      }

      else
      {
        return v10;
      }
    }
  }

  else if (v2 > 0x43E || (v5 = v4 << ((*a1 >> 52) - 51), (v5 & 0x8000000000000000) != 0))
  {
    if (v3)
    {
      return 0x8000000000000000;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (v1 >= 0)
  {
    return v5;
  }

  else
  {
    return -v5;
  }
}

uint64_t *sub_10029DE94@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  v3 = (*result >> 52) & 0x7FF;
  v4 = *result & 0xFFFFFFFFFFFFFLL;
  if (v3 == 2047)
  {
    v5 = HIDWORD(v2) & 0x80000000 | (v2 >> 29) & 0x3FFFFF | 0x7FC00000;
    if (!v4)
    {
      v5 = HIDWORD(v2) & 0x80000000 | 0x7F800000;
    }

    *a2 = v5;
    return result;
  }

  v6 = (v4 >> 22) | ((v2 & 0x3FFFFF) != 0);
  if (!(v3 | v6))
  {
    *a2 = HIDWORD(v2) & 0x80000000;
    return result;
  }

  v7 = v3 - 897;
  v8 = v6 | 0x40000000;
  if ((v3 - 897) >= 0xFD)
  {
    if (v3 > 0x380)
    {
      if (v3 != 1150 || v6 + 1073741888 < 0)
      {
        if (v2 >= 0)
        {
          v11 = 2139095040;
        }

        else
        {
          v11 = -8388608;
        }

        *a2 = v11;
        return result;
      }

      v7 = 253;
    }

    else
    {
      v8 = (v8 >> (-127 - (*result >> 52))) | (v8 << ((*result >> 52) + 127) != 0);
      v7 = 0;
      if ((897 - v3) > 0x1E)
      {
        v8 = 1;
      }
    }
  }

  v9 = v7 << 23;
  v10 = ~((v8 & 0x7F) == 64) & ((v8 + 64) >> 7);
  if (!v10)
  {
    v9 = 0;
  }

  *a2 = (v10 | HIDWORD(v2) & 0x80000000) + v9;
  return result;
}

unint64_t *sub_10029DFB4@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 >> 63;
  if (((*a2 ^ *a1) & 0x8000000000000000) != 0)
  {
    return sub_1002A0834(a3, v4, v5, v6);
  }

  else
  {
    return sub_1002A062C(a3, v4, v5, v6);
  }
}

unint64_t *sub_10029DFDC@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 >> 63;
  if (((*a2 ^ *a1) & 0x8000000000000000) != 0)
  {
    return sub_1002A062C(a3, v4, v5, v6);
  }

  else
  {
    return sub_1002A0834(a3, v4, v5, v6);
  }
}

unint64_t *sub_10029E004@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = (*result >> 52) & 0x7FF;
  v5 = *result & 0xFFFFFFFFFFFFFLL;
  v6 = (*a2 >> 52) & 0x7FF;
  v7 = *a2 & 0xFFFFFFFFFFFFFLL;
  v8 = *a2 ^ *result;
  if (v4 == 2047)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    if (v6 == 2047 && v7 != 0)
    {
      goto LABEL_11;
    }

    v10 = *a2 >> 52;
LABEL_28:
    v15 = v8 & 0x8000000000000000 | 0x7FF0000000000000;
    if (!(v10 & 0x7FF | v7))
    {
      v15 = 0xFFF8000000000000;
    }

    *a3 = v15;
    return result;
  }

  if (v6 == 2047)
  {
    if (v7)
    {
LABEL_11:
      if (v5)
      {
        v11 = (~v3 & 0x7FF0000000000000) == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v12 = *result;
      }

      else
      {
        v12 = *a2;
      }

      if ((v3 & 0x7FF8000000000000) != 0x7FF0000000000000 || (v3 & 0x7FFFFFFFFFFFFLL) == 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = *result;
      }

      *a3 = v14 | 0x8000000000000;
      return result;
    }

    v10 = v3 >> 52;
    v7 = *result & 0xFFFFFFFFFFFFFLL;
    goto LABEL_28;
  }

  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_61;
    }

    v4 = HIDWORD(v5);
    v16 = 32 * (HIDWORD(v5) == 0);
    if (!HIDWORD(v5))
    {
      v4 = *result & 0xFFFFFFFFFFFFFLL;
    }

    if (v4 < 0x10000)
    {
      v16 = (32 * (HIDWORD(v5) == 0)) | 0x10;
      LODWORD(v4) = v4 << 16;
    }

    v17 = v16 | 8;
    if (BYTE3(v4))
    {
      v17 = v16;
      v4 = v4;
    }

    else
    {
      v4 = (v4 << 8);
    }

    v18 = v17 + byte_1003E3D58[v4 >> 24] - 11;
    v5 <<= v18;
    LODWORD(v4) = 1 - v18;
    if (v6)
    {
      goto LABEL_49;
    }

LABEL_40:
    if (v7)
    {
      v6 = HIDWORD(v7);
      v19 = 32 * (HIDWORD(v7) == 0);
      if (!HIDWORD(v7))
      {
        v6 = *a2 & 0xFFFFFFFFFFFFFLL;
      }

      if (v6 < 0x10000)
      {
        v19 = (32 * (HIDWORD(v7) == 0)) | 0x10;
        LODWORD(v6) = v6 << 16;
      }

      v20 = v19 | 8;
      if (BYTE3(v6))
      {
        v20 = v19;
        v6 = v6;
      }

      else
      {
        v6 = (v6 << 8);
      }

      v21 = v20 + byte_1003E3D58[v6 >> 24] - 11;
      v7 <<= v21;
      LODWORD(v6) = 1 - v21;
      goto LABEL_49;
    }

LABEL_61:
    *a3 = v8 & 0x8000000000000000;
    return result;
  }

  if (!v6)
  {
    goto LABEL_40;
  }

LABEL_49:
  v22 = v6 + v4;
  v23 = v5 << 10;
  v24 = v23 | 0x4000000000000000;
  v25 = v7 << 11;
  v26 = v25 | 0x8000000000000000;
  v27 = (v23 | 0x4000000000000000) >> 32;
  v28 = (v25 | 0x8000000000000000) >> 32;
  v29 = v25 * v27;
  v30 = v28 * v23;
  v31 = __CFADD__(v30, v29);
  v32 = v30 + v29;
  v33 = &_mh_execute_header;
  if (!v31)
  {
    v33 = 0;
  }

  v34 = v26 * v24;
  v31 = v34 >= v32 << 32;
  v35 = v33 + HIDWORD(v32) + v28 * v27;
  if (!v31)
  {
    ++v35;
  }

  v36 = v35 | (v34 != 0);
  v37 = v35 >> 62 == 0;
  if (v37)
  {
    v38 = -1024;
  }

  else
  {
    v38 = -1023;
  }

  v39 = (v22 + v38);
  v40 = v36 << v37;
  if (v39 >= 0x7FD)
  {
    if ((v39 & 0x8000) != 0)
    {
      v41 = -v39;
      v42 = v36 != 0;
      v40 = (v40 >> v41) | (v40 << v39 != 0);
      v39 = 0;
      if (v41 > 0x3E)
      {
        v40 = v42;
      }
    }

    else
    {
      if (v39 != 2045 || ((v40 + 512) & 0x8000000000000000) != 0)
      {
        *a3 = v8 & 0x8000000000000000 | 0x7FF0000000000000;
        return result;
      }

      v39 = 2045;
    }
  }

  v43 = v8 & 0x8000000000000000;
  v44 = v39 << 52;
  v45 = ~((v40 & 0x3FF) == 512) & ((v40 + 512) >> 10);
  if (!v45)
  {
    v44 = 0;
  }

  *a3 = (v45 | v43) + v44;
  return result;
}

uint64_t *sub_10029E2BC@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = (*result >> 52) & 0x7FF;
  v5 = *result & 0xFFFFFFFFFFFFFLL;
  v6 = (*a2 >> 52) & 0x7FF;
  v7 = *a2 & 0xFFFFFFFFFFFFFLL;
  v8 = *a2 ^ *result;
  if (v4 == 2047)
  {
    if (!v5)
    {
      if (v6 == 2047)
      {
        if (!v7)
        {
          goto LABEL_60;
        }

        goto LABEL_9;
      }

LABEL_59:
      *a3 = v8 & 0x8000000000000000 | 0x7FF0000000000000;
      return result;
    }

LABEL_9:
    if (v5)
    {
      v9 = (~v3 & 0x7FF0000000000000) == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = *result;
    }

    else
    {
      v10 = *a2;
    }

    if ((v3 & 0x7FF8000000000000) != 0x7FF0000000000000 || (v3 & 0x7FFFFFFFFFFFFLL) == 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = *result;
    }

    *a3 = v12 | 0x8000000000000;
    return result;
  }

  if (v6)
  {
    if (v6 == 2047)
    {
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_52:
      *a3 = v8 & 0x8000000000000000;
      return result;
    }
  }

  else
  {
    if (!v7)
    {
      if (!(v4 | v5))
      {
LABEL_60:
        *a3 = 0xFFF8000000000000;
        return result;
      }

      goto LABEL_59;
    }

    v6 = HIDWORD(v7);
    v13 = 32 * (HIDWORD(v7) == 0);
    if (!HIDWORD(v7))
    {
      v6 = *a2 & 0xFFFFFFFFFFFFFLL;
    }

    if (v6 < 0x10000)
    {
      v13 = (32 * (HIDWORD(v7) == 0)) | 0x10;
      LODWORD(v6) = v6 << 16;
    }

    v14 = v13 | 8;
    if (BYTE3(v6))
    {
      v14 = v13;
      v6 = v6;
    }

    else
    {
      v6 = (v6 << 8);
    }

    v15 = v14 + byte_1003E3D58[v6 >> 24] - 11;
    v7 <<= v15;
    LODWORD(v6) = 1 - v15;
  }

  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_52;
    }

    v4 = HIDWORD(v5);
    v16 = 32 * (HIDWORD(v5) == 0);
    if (!HIDWORD(v5))
    {
      v4 = *result & 0xFFFFFFFFFFFFFLL;
    }

    if (v4 < 0x10000)
    {
      v16 = (32 * (HIDWORD(v5) == 0)) | 0x10;
      LODWORD(v4) = v4 << 16;
    }

    v17 = v16 | 8;
    if (BYTE3(v4))
    {
      v17 = v16;
      v4 = v4;
    }

    else
    {
      v4 = (v4 << 8);
    }

    v18 = v17 + byte_1003E3D58[v4 >> 24] - 11;
    v5 <<= v18;
    LODWORD(v4) = 1 - v18;
  }

  v19 = v4 - v6;
  v20 = v5 | 0x10000000000000;
  v21 = (v5 | 0x10000000000000) >= (v7 | 0x10000000000000);
  if ((v5 | 0x10000000000000) < (v7 | 0x10000000000000))
  {
    v22 = 1021;
  }

  else
  {
    v22 = 1022;
  }

  v23 = (v22 + v19);
  v24 = 10;
  if (!v21)
  {
    v24 = 11;
  }

  v25 = v20 << v24;
  v26 = ((v7 | 0x10000000000000) >> 21);
  v27 = 0x7FFFFFFFFFFFFFFFLL / v26 - 2;
  v28 = HIDWORD(v25) * v27;
  v29 = (v25 - ((v28 >> 31) & 0xFFFFFFFE) * v26) << 28;
  v30 = (v7 & 0x1FFFFF) << 7;
  v31 = v29 - ((v28 >> 31) & 0xFFFFFFFE) * v30;
  v32 = ((HIDWORD(v31) * v27) >> 32) + 4;
  v33 = (v28 & 0xFFFFFFFF00000000) + 16 * v32;
  if ((v32 & 0x1C) != 0)
  {
    if (v23 < 0x7FDu)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v33 &= 0xFFFFFFFFFFFFFE00;
    v34 = (2 * v32) & 0xFFFFFFF0;
    v35 = (v31 - v26 * v34) << 28;
    if (((v35 - v30 * v34) & 0x8000000000000000) != 0)
    {
      v33 -= 128;
      if (v23 < 0x7FDu)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v35 != v30 * v34)
      {
        ++v33;
      }

      if (v23 < 0x7FDu)
      {
        goto LABEL_65;
      }
    }
  }

  if ((v23 & 0x8000) != 0)
  {
    v36 = -v23;
    v37 = v33 != 0;
    v33 = (v33 >> v36) | (v33 << v23 != 0);
    v23 = 0;
    if (v36 > 0x3E)
    {
      v33 = v37;
    }
  }

  else
  {
    if (v23 != 2045 || ((v33 + 512) & 0x8000000000000000) != 0)
    {
      goto LABEL_59;
    }

    v23 = 2045;
  }

LABEL_65:
  v38 = v8 & 0x8000000000000000;
  v39 = v23 << 52;
  v40 = ~((v33 & 0x3FF) == 512) & ((v33 + 512) >> 10);
  if (!v40)
  {
    v39 = 0;
  }

  *a3 = (v40 | v38) + v39;
  return result;
}

BOOL sub_10029E5A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if ((~*a1 & 0x7FF0000000000000) == 0 && (*a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  v4 = *a2;
  if ((~*a2 & 0x7FF0000000000000) == 0 && (*a2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  return ((v4 | v2) & 0x7FFFFFFFFFFFFFFFLL) == 0 || v2 == v4;
}

BOOL sub_10029E5F0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((~*a1 & 0x7FF0000000000000) == 0 && (*a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  v4 = *a2;
  if ((~*a2 & 0x7FF0000000000000) == 0 && (*a2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  if (((v4 ^ v2) & 0x8000000000000000) != 0)
  {
    v7 = ((v4 | v2) & 0x7FFFFFFFFFFFFFFFLL) != 0;
    return v2 < 0 && v7;
  }

  else if (v2 == v4)
  {
    return 0;
  }

  else
  {
    return (v2 < 0) ^ (v2 < v4);
  }
}

BOOL sub_10029E66C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((~*a1 & 0x7FF0000000000000) == 0 && (*a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  v4 = *a2;
  if ((~*a2 & 0x7FF0000000000000) == 0 && (*a2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  if (((v4 ^ v2) & 0x8000000000000000) != 0)
  {
    return v2 < 0 || (v4 & 0x7FFFFFFFFFFFFFFFLL | v2) == 0;
  }

  else if (v2 == v4)
  {
    return 1;
  }

  else
  {
    return (v2 < 0) ^ (v2 < v4);
  }
}

uint64_t sub_10029E6F4@<X0>(uint64_t result@<X0>, int *a2@<X1>, int *a3@<X2>, int *a4@<X8>)
{
  v4 = *result;
  v5 = (*result >> 23);
  v6 = *result & 0x7FFFFF;
  v7 = *a3;
  v8 = (*a2 >> 23);
  v9 = *a2 & 0x7FFFFF;
  v10 = *a3 & 0x7FFFFF;
  v11 = *a2 ^ *result;
  if (v5 == 255)
  {
    if (!v6 && (!v9 || v8 != 255))
    {
      if (!(v8 | v9))
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    goto LABEL_9;
  }

  result = 2139095040;
  if ((~*a2 & 0x7F800000) == 0)
  {
    if (!v9)
    {
      if (!(v5 | v6))
      {
LABEL_35:
        v16 = -4194304;
        goto LABEL_36;
      }

LABEL_32:
      v16 = v11 & 0x80000000 | 0x7F800000;
      if ((~v7 & 0x7F800000) != 0)
      {
        goto LABEL_87;
      }

      if (!v10)
      {
        if (((v11 ^ v7) & 0x80000000) != 0)
        {
          goto LABEL_35;
        }

LABEL_87:
        *a4 = v16;
        return result;
      }

LABEL_22:
      if ((v16 & 0x7FC00000) == 0x7F800000 && (v16 & 0x3FFFFF) != 0)
      {
        *a4 = v16 | 0x400000;
        return result;
      }

      goto LABEL_36;
    }

LABEL_9:
    if (v6)
    {
      v12 = (~v4 & 0x7F800000) == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = v4;
    }

    else
    {
      v13 = *a2;
    }

    if ((v4 & 0x7FC00000) != 0x7F800000 || (v4 & 0x3FFFFF) == 0)
    {
      v15 = v13;
    }

    else
    {
      v15 = v4;
    }

    v16 = v15 | 0x400000;
    goto LABEL_22;
  }

  v17 = (v7 >> 23);
  if (v17 == 255)
  {
    v16 = *a3;
    if (v10)
    {
      v16 = 0;
LABEL_36:
      if ((v16 & 0x7FFFFF) == 0 || (~v16 & 0x7F800000) != 0)
      {
        v16 = *a3;
      }

      *a4 = v16 | 0x400000;
      return result;
    }

    goto LABEL_87;
  }

  if (v5)
  {
    if ((*a2 >> 23))
    {
      goto LABEL_62;
    }

    goto LABEL_52;
  }

  if (!v6)
  {
    goto LABEL_80;
  }

  v19 = v6 << 16;
  if (v6 >= 0x10000)
  {
    v19 = v6;
  }

  result = 16 * (v6 < 0x10000);
  LODWORD(v20) = v19 << 8;
  if (HIBYTE(v19))
  {
    v20 = v19;
  }

  else
  {
    v20 = v20;
  }

  v21 = byte_1003E3D58[v20 >> 24];
  if (HIBYTE(v19))
  {
    v22 = 16 * (v6 < 0x10000);
  }

  else
  {
    v22 = (16 * (v6 < 0x10000)) | 8;
  }

  v23 = v22 + v21 - 8;
  v5 = 1 - v23;
  v6 <<= v23;
  if (!(*a2 >> 23))
  {
LABEL_52:
    if (v9)
    {
      v24 = *a2 << 16;
      if (v9 >= 0x10000)
      {
        v24 = *a2 & 0x7FFFFF;
      }

      result = 16 * (v9 < 0x10000);
      LODWORD(v25) = v24 << 8;
      if (HIBYTE(v24))
      {
        v25 = v24;
      }

      else
      {
        v25 = v25;
      }

      v26 = byte_1003E3D58[v25 >> 24];
      if (HIBYTE(v24))
      {
        v27 = 16 * (v9 < 0x10000);
      }

      else
      {
        v27 = (16 * (v9 < 0x10000)) | 8;
      }

      v28 = v27 + v26 - 8;
      v8 = 1 - v28;
      v9 <<= v28;
      goto LABEL_62;
    }

LABEL_80:
    v16 = *a3;
    if (((v11 ^ v7) & 0x80000000) == 0 || v17 | v10)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_62:
  v29 = v8 + v5;
  v30 = ((v9 << 7) | 0x40000000) * ((v6 << 7) | 0x40000000);
  if (v30 >> 61)
  {
    v31 = -126;
  }

  else
  {
    v31 = -127;
  }

  v32 = v29 + v31;
  v33 = v30 << (v30 >> 61 == 0);
  if (!(v7 >> 23))
  {
    if (!v10)
    {
      v45 = v11 >> 31;
      v46 = v32 - 1;
      v47 = (v33 >> 31) | ((v33 & 0x7FFFC000) != 0);
      goto LABEL_123;
    }

    v34 = *a3 << 16;
    if (v10 >= 0x10000)
    {
      v34 = *a3 & 0x7FFFFF;
    }

    LODWORD(v35) = v34 << 8;
    result = HIBYTE(v34);
    if (result)
    {
      v35 = v34;
    }

    else
    {
      v35 = v35;
    }

    v36 = byte_1003E3D58[v35 >> 24];
    if (result)
    {
      v37 = 16 * (v10 < 0x10000);
    }

    else
    {
      v37 = (16 * (v10 < 0x10000)) | 8;
    }

    v38 = v37 + v36 - 8;
    v17 = 1 - v38;
    v10 <<= v38;
  }

  v39 = (v10 << 6) | 0x20000000;
  v40 = v32 - v17;
  if (((v11 ^ v7) & 0x80000000) == 0)
  {
    if (v40 <= 0)
    {
      if ((32 - v40) > 0x3E)
      {
        v43 = 1;
      }

      else
      {
        v43 = (v33 >> (32 - v40)) | (v33 << (v40 & 0x3F ^ 0x20u) != 0);
      }

      v44 = v43 + v39;
    }

    else
    {
      if ((v32 - v17) > 0x3Eu)
      {
        v41 = 1;
      }

      else
      {
        v41 = ((v39 << 32) >> (v32 - v17)) | (v39 << 32 << (v17 - v32) != 0);
      }

      v44 = ((v41 + v33) >> 32) | (v41 + v33 != 0);
      v17 = v32;
    }

    v45 = v11 >> 31;
    if (v44 >> 30)
    {
      v46 = v17;
    }

    else
    {
      v46 = v17 - 1;
    }

    if (v44 >> 30)
    {
      v47 = v44;
    }

    else
    {
      v47 = 2 * v44;
    }

    goto LABEL_123;
  }

  v42 = v39 << 32;
  if (((v32 - v17) & 0x8000) != 0)
  {
    v48 = -v40;
    if (v48 > 0x3E)
    {
      v49 = 1;
    }

    else
    {
      v49 = (v33 >> v48) | (v33 << v40 != 0);
    }

    v51 = v42 - v49;
    v45 = v7 >> 31;
  }

  else
  {
    if (v32 == v17)
    {
      if (v33 == v42)
      {
LABEL_86:
        v16 = 0;
        goto LABEL_87;
      }

      v52 = v11 >> 31;
      v45 = (v11 & 0x80000000) == 0;
      if ((v33 - v42) < 0)
      {
        v51 = v42 - v33;
      }

      else
      {
        v45 = v52;
        v51 = v33 - v42;
      }
    }

    else
    {
      if ((v32 - v17) > 0x3Eu)
      {
        v50 = 1;
      }

      else
      {
        v50 = (v42 >> (v32 - v17)) | (v42 << (v17 - v32) != 0);
      }

      v45 = v11 >> 31;
      v51 = v33 - v50;
    }

    v17 = v32;
  }

  v53 = HIDWORD(v51);
  v54 = 32 * (HIDWORD(v51) == 0);
  if (!HIDWORD(v51))
  {
    v53 = v51;
  }

  if (v53 < 0x10000)
  {
    v54 = (32 * (HIDWORD(v51) == 0)) | 0x10;
    LODWORD(v53) = v53 << 16;
  }

  v55 = v54 | 8;
  if (BYTE3(v53))
  {
    v55 = v54;
    v53 = v53;
  }

  else
  {
    v53 = (v53 << 8);
  }

  v56 = v55 + byte_1003E3D58[v53 >> 24];
  v46 = v17 - (v56 - 1);
  if (((v56 - 33) & 0x80) != 0)
  {
    v47 = (v51 >> (33 - v56)) | ((v51 & ~(-1 << (33 - v56))) != 0);
  }

  else
  {
    v47 = v51 << (v56 - 33);
  }

LABEL_123:
  if (v46 >= 0xFDu)
  {
    if ((v46 & 0x8000) != 0)
    {
      v57 = -v46;
      v58 = v57;
      v59 = v47 != 0;
      v47 = (v47 >> v57) | (v47 << -v57 != 0);
      v46 = 0;
      if (v58 > 0x1E)
      {
        v47 = v59;
      }
    }

    else
    {
      if (v46 != 253 || ((v47 + 64) & 0x80000000) != 0)
      {
        if (v45)
        {
          v65 = -8388608;
        }

        else
        {
          v65 = 2139095040;
        }

        *a4 = v65;
        return result;
      }

      v46 = 253;
    }
  }

  v60 = v47 + 64;
  v61 = ~((v47 & 0x7F) == 64);
  if (v45)
  {
    v62 = 0x80000000;
  }

  else
  {
    v62 = 0;
  }

  v63 = v46 << 23;
  v64 = v61 & (v60 >> 7);
  if (!v64)
  {
    v63 = 0;
  }

  *a4 = (v64 | v62) + v63;
  return result;
}

unint64_t *sub_10029EC4C(unint64_t *result, unint64_t *a2)
{
  v4 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
  if (v4 >= 0x7FF0000000000001)
  {
    *result = 0x7FFFFFFFFFFFFFFFLL;
    return result;
  }

  if (v4 == 0x7FF0000000000000)
  {
    if (*a2 == 0x7FF0000000000000)
    {
      *result = 0x7FF0000000000000;
    }

    else
    {
      *result = 0;
    }

    return result;
  }

  v51[3] = v2;
  v51[4] = v3;
  v5 = result;
  if (atomic_load_explicit(&qword_1004BD6A0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_1004BD6B0, memory_order_acquire))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v31 = a2;
    sub_1003C867C();
    a2 = v31;
    if (atomic_load_explicit(&qword_1004BD6B0, memory_order_acquire))
    {
LABEL_8:
      if (atomic_load_explicit(&qword_1004BD6C0, memory_order_acquire))
      {
        goto LABEL_9;
      }

      goto LABEL_87;
    }
  }

  v32 = a2;
  sub_1003C86F0();
  a2 = v32;
  if (atomic_load_explicit(&qword_1004BD6C0, memory_order_acquire))
  {
LABEL_9:
    if (atomic_load_explicit(&qword_1004BD6D0, memory_order_acquire))
    {
      goto LABEL_10;
    }

    goto LABEL_88;
  }

LABEL_87:
  v33 = a2;
  sub_1003C8770();
  a2 = v33;
  if (atomic_load_explicit(&qword_1004BD6D0, memory_order_acquire))
  {
LABEL_10:
    if (atomic_load_explicit(&qword_1004BD6E0, memory_order_acquire))
    {
      goto LABEL_11;
    }

LABEL_89:
    v35 = a2;
    sub_1003C8870();
    a2 = v35;
    if (atomic_load_explicit(&qword_1004BD6F0, memory_order_acquire))
    {
      goto LABEL_12;
    }

    goto LABEL_90;
  }

LABEL_88:
  v34 = a2;
  sub_1003C87F0();
  a2 = v34;
  if ((atomic_load_explicit(&qword_1004BD6E0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_11:
  if (atomic_load_explicit(&qword_1004BD6F0, memory_order_acquire))
  {
    goto LABEL_12;
  }

LABEL_90:
  v36 = a2;
  sub_1003C88F0();
  a2 = v36;
LABEL_12:
  v6 = a2;
  v7 = *a2;
  if ((v7 & 0x7FE0000000000000) < 0x4090000000000001)
  {
    sub_10029E004(v6, &qword_1003E3D38, v51);
    v8 = v51[0];
  }

  else
  {
    v8 = v7 & 0x8000000000000000 | 0x4107700000000000;
  }

  v51[0] = v8;
  v9 = v8 & 0xFFFFFFFFFFFFFLL;
  v10 = (v8 & 0xFFFFFFFFFFFFFLL) == 0;
  v11 = (v8 >> 52) & 0x7FF;
  if (v11)
  {
    v12 = v9 | 0x10000000000000;
  }

  else
  {
    v12 = v8 & 0xFFFFFFFFFFFFFLL;
  }

  if (v11 != 2047)
  {
    v10 = 1;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
  }

  if (v11 <= 0x426)
  {
    if (v11 < 0x3E9)
    {
      v12 = v12 != 0;
LABEL_29:
      v13 = ((v12 + 2048) >> 12) & ~((v12 & 0xFFF) == 2048);
      if (v10)
      {
        v14 = -v13;
      }

      else
      {
        v14 = ((v12 + 2048) >> 12) & ~((v12 & 0xFFF) == 2048);
      }

      if (!v13 || ((v10 ^ (v14 >= 0)) & 1) != 0)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v12 = ((v8 & 0xFFFFFFFFFFFFFLL | 0x10000000000000) >> (39 - v11)) | ((v8 & 0xFFFFFFFFFFFFFLL | 0x10000000000000) << ((v8 >> 52) + 25) != 0);
  }

  if (v12 <= 0xFFFFFFFF7FFLL)
  {
    goto LABEL_29;
  }

LABEL_34:
  if (v10)
  {
    v14 = 0x80000000;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

LABEL_37:
  v15 = v14 >> 6;
  if (v14 >> 6 >= 1024)
  {
    v15 = 1024;
  }

  if (v15 <= -1023)
  {
    v15 = -1023;
  }

  v50 = (v15 + 1023) << 52;
  v16 = (v8 >> 52) & 0x7FF;
  if (v16 > 0x3FE)
  {
    if (v16 < 0x433)
    {
      v22 = 1 << (51 - (v8 >> 52));
      v23 = v8 + (v22 >> 1);
      v24 = -1;
      if ((v23 & (v22 - 1)) == 0)
      {
        v24 = ~v22;
      }

      v19 = v24 & -v22 & v23;
    }

    else
    {
      v19 = v8;
      if (v9)
      {
        v19 = v8;
        if (v16 == 2047)
        {
          if ((v8 & 0x7FFFFFFFFFFFFLL) != 0 && (v8 & 0x7FF8000000000000) == 0x7FF0000000000000 || (~v8 & 0x7FF0000000000000) == 0)
          {
            v19 = v8 | 0x8000000000000;
          }

          else
          {
            v19 = 0x8000000000000;
          }
        }
      }
    }
  }

  else
  {
    v17 = v16 != 1022 || v9 == 0;
    v18 = v8 & 0x8000000000000000 | 0x3FF0000000000000;
    if (v17)
    {
      v18 = v8 & 0x8000000000000000;
    }

    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v8;
    }
  }

  v25 = v8 >> 63;
  if (((v19 ^ v8) & 0x8000000000000000) != 0)
  {
    sub_1002A062C(&v49, v8, v19, v25);
  }

  else
  {
    sub_1002A0834(&v49, v8, v19, v25);
  }

  sub_10029E004(&v49, &qword_1003E3D40, v51);
  sub_10029E004(&v50, &qword_1003E3D30, &v48);
  v47 = qword_1003E3E58[v14 & 0x3F];
  sub_10029E004(&v48, &v47, &v49);
  sub_10029E004(&qword_1004BD6E8, v51, &v37);
  v26 = v37 >> 63;
  if (((qword_1004BD6D8 ^ v37) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v38, v37, qword_1004BD6D8, v26);
  }

  else
  {
    sub_1002A062C(&v38, v37, qword_1004BD6D8, v26);
  }

  sub_10029E004(&v38, v51, &v39);
  v27 = v39 >> 63;
  if (((qword_1004BD6C8 ^ v39) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v40, v39, qword_1004BD6C8, v27);
  }

  else
  {
    sub_1002A062C(&v40, v39, qword_1004BD6C8, v27);
  }

  sub_10029E004(&v40, v51, &v41);
  v28 = v41 >> 63;
  if (((qword_1004BD6B8 ^ v41) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v42, v41, qword_1004BD6B8, v28);
  }

  else
  {
    sub_1002A062C(&v42, v41, qword_1004BD6B8, v28);
  }

  sub_10029E004(&v42, v51, &v43);
  v29 = v43 >> 63;
  if (((qword_1004BD6A8 ^ v43) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v44, v43, qword_1004BD6A8, v29);
  }

  else
  {
    sub_1002A062C(&v44, v43, qword_1004BD6A8, v29);
  }

  sub_10029E004(&v44, v51, &v45);
  v30 = v45 >> 63;
  if (((qword_1004BD698 ^ v45) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v46, v45, qword_1004BD698, v30);
  }

  else
  {
    sub_1002A062C(&v46, v45, qword_1004BD698, v30);
  }

  return sub_10029E004(&v49, &v46, v5);
}

unint64_t *sub_10029F110(unint64_t *result, void *a2)
{
  v4 = *a2;
  v5 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 > 0x7FF0000000000000)
  {
    goto LABEL_2;
  }

  if ((~v4 & 0x7FF0000000000000) != 0 || (v4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    if (v4 < 0)
    {
      if (v5)
      {
LABEL_2:
        *result = 0x7FFFFFFFFFFFFFFFLL;
        return result;
      }
    }

    else if (v4)
    {
      goto LABEL_10;
    }

    *result = 0xFFF0000000000000;
    return result;
  }

LABEL_10:
  v56[7] = v2;
  v56[8] = v3;
  v7 = result;
  if (atomic_load_explicit(&qword_1004BD700, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_1004BD710, memory_order_acquire))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v27 = a2;
    sub_1003C8970();
    a2 = v27;
    if (atomic_load_explicit(&qword_1004BD710, memory_order_acquire))
    {
LABEL_12:
      if (atomic_load_explicit(&qword_1004BD720, memory_order_acquire))
      {
        goto LABEL_13;
      }

      goto LABEL_67;
    }
  }

  v28 = a2;
  sub_1003C89BC();
  a2 = v28;
  if (atomic_load_explicit(&qword_1004BD720, memory_order_acquire))
  {
LABEL_13:
    if (atomic_load_explicit(&qword_1004BD730, memory_order_acquire))
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

LABEL_67:
  v29 = a2;
  sub_1003C8A30();
  a2 = v29;
  if (atomic_load_explicit(&qword_1004BD730, memory_order_acquire))
  {
LABEL_14:
    if (atomic_load_explicit(&qword_1004BD740, memory_order_acquire))
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

LABEL_68:
  v30 = a2;
  sub_1003C8AA4();
  a2 = v30;
  if (atomic_load_explicit(&qword_1004BD740, memory_order_acquire))
  {
LABEL_15:
    if (atomic_load_explicit(&qword_1004BD750, memory_order_acquire))
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_69:
  v31 = a2;
  sub_1003C8B18();
  a2 = v31;
  if (atomic_load_explicit(&qword_1004BD750, memory_order_acquire))
  {
LABEL_16:
    if (atomic_load_explicit(&qword_1004BD760, memory_order_acquire))
    {
      goto LABEL_17;
    }

LABEL_71:
    v33 = a2;
    sub_1003C8C00();
    a2 = v33;
    if (atomic_load_explicit(qword_1004BD770, memory_order_acquire))
    {
      goto LABEL_18;
    }

LABEL_72:
    v34 = a2;
    sub_1003C8C74();
    a2 = v34;
    goto LABEL_18;
  }

LABEL_70:
  v32 = a2;
  sub_1003C8B8C();
  a2 = v32;
  if ((atomic_load_explicit(&qword_1004BD760, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_17:
  if ((atomic_load_explicit(qword_1004BD770, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_18:
  v8 = *a2;
  v9 = *a2 >> 44;
  v55 = *a2 & 0xFFFFFFFFFFFLL | 0x3FF0000000000000;
  sub_1002A0834(&v55, v55, 0x3FF0000000000000uLL, 0);
  v10 = qword_1003E4060[2 * v9];
  v54 = qword_1003E4060[(2 * v9) | 1u];
  sub_10029E004(&v55, &v54, &v53);
  if (v9 == 255)
  {
    v50 = 0x4080000000000000;
    v51 = 0xBFF0000000000000;
    sub_10029E2BC(&v51, &v50, &v52);
    v11 = v53 >> 63;
    if (((v52 ^ v53) & 0x8000000000000000) != 0)
    {
      sub_1002A0834(v56, v53, v52, v11);
    }

    else
    {
      sub_1002A062C(v56, v53, v52, v11);
    }

    v53 = v56[0];
  }

  sub_10029E004(&v53, &v53, v56);
  v12 = ((v8 >> 52) & 0x7FF) - 1023;
  if (((v8 >> 52) & 0x7FF) == 0x3FF)
  {
    v17 = 0;
  }

  else
  {
    if (v12 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1023 - ((v8 >> 52) & 0x7FF);
    }

    if (v13 >= 0x100)
    {
      v14 = 16;
    }

    else
    {
      v14 = 24;
    }

    v15 = byte_1003E3D58[(v13 << v14) >> 24];
    if (v13 >= 0x100)
    {
      v16 = 37;
    }

    else
    {
      v16 = 45;
    }

    v17 = (v13 << (v15 + v16)) + ((v12 >> 31) << 63) + ((1074 - (v15 + v16)) << 52);
  }

  v49 = v17;
  sub_10029E004(&unk_1003E3D48, &v49, &v50);
  v18 = v50 >> 63;
  if (((v50 ^ v10) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v51, v50, v10, v18);
  }

  else
  {
    sub_1002A062C(&v51, v50, v10, v18);
  }

  sub_10029E004(&qword_1004BD768, v56, &v42);
  v19 = v42 >> 63;
  if (((qword_1004BD748 ^ v42) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v43, v42, qword_1004BD748, v19);
  }

  else
  {
    sub_1002A062C(&v43, v42, qword_1004BD748, v19);
  }

  sub_10029E004(&v43, v56, &v44);
  v20 = v44 >> 63;
  if (((qword_1004BD728 ^ v44) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v45, v44, qword_1004BD728, v20);
  }

  else
  {
    sub_1002A062C(&v45, v44, qword_1004BD728, v20);
  }

  sub_10029E004(&v45, v56, &v46);
  v21 = v46 >> 63;
  if (((qword_1004BD708 ^ v46) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v47, v46, qword_1004BD708, v21);
  }

  else
  {
    sub_1002A062C(&v47, v46, qword_1004BD708, v21);
  }

  sub_10029E004(&v47, v56, &v48);
  v22 = v51 >> 63;
  if (((v48 ^ v51) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v52, v51, v48, v22);
  }

  else
  {
    sub_1002A062C(&v52, v51, v48, v22);
  }

  sub_10029E004(&qword_1004BD758, v56, &v35);
  v23 = v35 >> 63;
  if (((qword_1004BD738 ^ v35) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v36, v35, qword_1004BD738, v23);
  }

  else
  {
    sub_1002A062C(&v36, v35, qword_1004BD738, v23);
  }

  sub_10029E004(&v36, v56, &v37);
  v24 = v37 >> 63;
  if (((qword_1004BD718 ^ v37) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v38, v37, qword_1004BD718, v24);
  }

  else
  {
    sub_1002A062C(&v38, v37, qword_1004BD718, v24);
  }

  sub_10029E004(&v38, v56, &v39);
  v25 = v39 >> 63;
  if (((qword_1004BD6F8 ^ v39) & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v40, v39, qword_1004BD6F8, v25);
  }

  else
  {
    sub_1002A062C(&v40, v39, qword_1004BD6F8, v25);
  }

  sub_10029E004(&v40, &v53, &v41);
  v26 = v52 >> 63;
  if (((v41 ^ v52) & 0x8000000000000000) != 0)
  {
    return sub_1002A0834(v7, v52, v41, v26);
  }

  else
  {
    return sub_1002A062C(v7, v52, v41, v26);
  }
}

uint64_t sub_10029F608@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v53 = *a2;
  v54 = v3;
  if (atomic_load_explicit(&qword_1004BD7A0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_1004BD7B0, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v49 = a3;
    sub_1003C8CE8();
    a3 = v49;
    if (atomic_load_explicit(&qword_1004BD7B0, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_1004BD7C0, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_172:
      v51 = a3;
      sub_1003C8D7C();
      a3 = v51;
      if (atomic_load_explicit(&qword_1004BD7D0, memory_order_acquire))
      {
        goto LABEL_5;
      }

LABEL_173:
      v52 = a3;
      sub_1003C8DC8();
      a3 = v52;
      goto LABEL_5;
    }
  }

  v50 = a3;
  sub_1003C8D30();
  a3 = v50;
  if ((atomic_load_explicit(&qword_1004BD7C0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_172;
  }

LABEL_4:
  if ((atomic_load_explicit(&qword_1004BD7D0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_173;
  }

LABEL_5:
  v4 = v53;
  v5 = v54;
  v6 = qword_1004BD798;
  v7 = (qword_1004BD798 & 0xFFFFFFFFFFFFFLL) != 0 && (~qword_1004BD798 & 0x7FF0000000000000) == 0;
  if (v7 || (~v53 & 0x7FF0000000000000) == 0 && (v53 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_15;
  }

  if (((qword_1004BD798 ^ v53) & 0x8000000000000000) == 0)
  {
    if (qword_1004BD798 != v53)
    {
      v8 = (qword_1004BD798 < 0) ^ (qword_1004BD798 < v53);
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((qword_1004BD798 & 0x8000000000000000) == 0)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = ((qword_1004BD798 | v53) & 0x7FFFFFFFFFFFFFFFLL) != 0;
LABEL_16:
  v9 = v54 & 0x7FFFFFFFFFFFFFFFLL;
  v10 = v53 & 0x7FFFFFFFFFFFFFFFLL;
  v11 = qword_1004BD7A8;
  v12 = (qword_1004BD7A8 & 0xFFFFFFFFFFFFFLL) != 0 && (~qword_1004BD7A8 & 0x7FF0000000000000) == 0;
  if (v12 || (~v54 & 0x7FF0000000000000) == 0 && (v54 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v13 = 0;
    *a3 = 0;
    result = 0x7FF0000000000001;
    if (v10 >= 0x7FF0000000000001)
    {
LABEL_48:
      if (a3 != &qword_1004BD7C8)
      {
        *a3 = qword_1004BD7C8;
      }

      return result;
    }
  }

  else
  {
    v13 = qword_1004BD7A8 < v9;
    if (qword_1004BD7A8 < 0)
    {
      v13 = ((qword_1004BD7A8 | v54) & 0x7FFFFFFFFFFFFFFFLL) != 0;
    }

    *a3 = 0;
    result = 0x7FF0000000000001;
    if (v10 >= 0x7FF0000000000001)
    {
      goto LABEL_48;
    }
  }

  if (v10 != 0x7FF0000000000000)
  {
    result = v4 & 0x7FF0000000000000;
    v20 = (v4 & 0x7FF0000000000000) != 0x7FF0000000000000;
    v21 = v4 & 0xFFFFFFFFFFFFFLL;
    if ((v4 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v20 = 1;
    }

    if (v20)
    {
      if (!v7 && (v4 == v6 || ((v6 | v4) & 0x7FFFFFFFFFFFFFFFLL) == 0))
      {
        if (a3 != &qword_1004BD7A8)
        {
          *a3 = v11;
        }

        return result;
      }

      if (!v12 && (v4 == v11 || ((v11 | v4) & 0x7FFFFFFFFFFFFFFFLL) == 0))
      {
        *a3 = v5;
        return result;
      }
    }

    if (v9 >= 0x7FF0000000000001)
    {
      goto LABEL_48;
    }

    if (v9 == 0x7FF0000000000000)
    {
      if (!v7 && v20)
      {
        if (((v6 ^ v4) & 0x8000000000000000) != 0)
        {
          if ((v4 & 0x8000000000000000) != 0 && ((v6 | v4) & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
LABEL_137:
            v19 = &qword_1004BD798;
            if (&qword_1004BD798 == a3)
            {
              return result;
            }

            goto LABEL_109;
          }
        }

        else if (v4 != v6 && ((v4 & 0x8000000000000000) != 0) != v4 < v6)
        {
          goto LABEL_137;
        }
      }

      v19 = &qword_1004BD7B8;
      if (&qword_1004BD7B8 == a3)
      {
        return result;
      }

      goto LABEL_109;
    }

    v25 = (v4 >> 52) & 0x7FF;
    if (v25 > 0x3FE)
    {
      if (v25 < 0x433)
      {
        v30 = 1 << (51 - (v4 >> 52));
        v31 = v4 + (v30 >> 1);
        v32 = -1;
        if ((v31 & (v30 - 1)) == 0)
        {
          v32 = ~v30;
        }

        v26 = v32 & -v30 & v31;
      }

      else
      {
        v26 = v4;
        if (v21 && v25 == 2047)
        {
          v28 = (v4 & 0x7FFFFFFFFFFFFLL) != 0 && (v4 & 0x7FF8000000000000) == 0x7FF0000000000000;
          v29 = v28 || result == 0x7FF0000000000000;
          v26 = v4 | 0x8000000000000;
          if (!v29)
          {
            v26 = 0x8000000000000;
          }
        }
      }
    }

    else
    {
      v26 = v4;
      if (v10)
      {
        v26 = v4 & 0x8000000000000000;
        if (v25 == 1022 && v21 != 0)
        {
          v26 |= 0x3FF0000000000000uLL;
        }
      }
    }

    if (!v20 || (~v26 & 0x7FF0000000000000) == 0 && (v26 & 0xFFFFFFFFFFFFFLL) != 0 || v4 != v26 && ((v26 | v4) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v33 = (~v5 & 0x7FF0000000000000) == 0;
      if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v33 = 0;
      }

      if (!v33 && !v7)
      {
        if (((v6 ^ v5) & 0x8000000000000000) != 0)
        {
          if (v5 < 0 && ((v6 | v5) & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            goto LABEL_48;
          }
        }

        else if (v5 != v6 && v5 < 0 != v5 < v6)
        {
          goto LABEL_48;
        }
      }

      v34 = a3;
      if (sub_10029E5A0(&v54, &qword_1004BD798))
      {
        result = sub_10029E5F0(&v53, &qword_1004BD798);
        if (result)
        {
          v35 = &qword_1004BD7B8;
        }

        else
        {
          result = sub_10029E5A0(&v53, &qword_1004BD798);
          v35 = &qword_1004BD7A8;
          if (!result)
          {
            v35 = &qword_1004BD798;
          }
        }

        if (v35 != v34)
        {
          *v34 = *v35;
        }
      }

      else
      {
        v58 = v5;
        sub_10029F110(&v57, &v58);
        sub_10029E004(&v53, &v57, &v58);
        return sub_10029EC4C(v34, &v58);
      }

      return result;
    }

    v36 = (v4 >> 52) & 0x7FF;
    if (((v4 >> 52) & 0x7FF) != 0)
    {
      v37 = v21 | 0x10000000000000;
    }

    else
    {
      v37 = v4 & 0xFFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v38 = v36 == 2047;
    }

    else
    {
      v38 = 0;
    }

    v40 = !v38 && (v4 & 0x8000000000000000) != 0;
    if (v36 <= 0x426)
    {
      if (v36 < 0x3E9)
      {
        v37 = v37 != 0;
        goto LABEL_142;
      }

      v37 = ((v21 | 0x10000000000000uLL) >> (39 - (v4 >> 52))) | ((v21 | 0x10000000000000) << ((v4 >> 52) + 25) != 0);
    }

    if (v37 > 0xFFFFFFFF7FFLL)
    {
LABEL_147:
      if (v40)
      {
        v42 = 0x80000000;
      }

      else
      {
        v42 = 0x7FFFFFFF;
      }

LABEL_150:
      v43 = (~v5 & 0x7FF0000000000000) != 0;
      if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v43 = 1;
      }

      if (v9 || !v43)
      {
        v56 = v5;
        v57 = 0x3FF0000000000000;
        if (v42 >= 0)
        {
          v45 = v42;
        }

        else
        {
          v45 = -v42;
        }

        if (v42 < 0)
        {
          v55 = 0x3FF0000000000000;
          v46 = a3;
          sub_10029E2BC(&v55, &v56, &v58);
          a3 = v46;
          v56 = v58;
        }

        v47 = a3;
        if (v45 >= 2)
        {
          do
          {
            if (v45)
            {
              sub_10029E004(&v57, &v56, &v58);
              v57 = v58;
            }

            sub_10029E004(&v56, &v56, &v58);
            v56 = v58;
            v48 = v45 > 3;
            v45 >>= 1;
          }

          while (v48);
        }

        result = sub_10029E004(&v57, &v56, &v58);
        *v47 = v58;
      }

      else
      {
        v44 = 0x3FF0000000000000;
        if (v42)
        {
          v44 = 0;
        }

        if (v42 < 0)
        {
          v44 = 0x7FF0000000000000;
        }

        *a3 = v44;
      }

      return result;
    }

LABEL_142:
    v41 = ((v37 + 2048) >> 12) & ~((v37 & 0xFFF) == 2048);
    if (v40)
    {
      v42 = -v41;
    }

    else
    {
      v42 = ((v37 + 2048) >> 12) & ~((v37 & 0xFFF) == 2048);
    }

    if (!v41 || ((v40 ^ (v42 >= 0)) & 1) != 0)
    {
      goto LABEL_150;
    }

    goto LABEL_147;
  }

  v15 = v8 ^ v13;
  v16 = (~v5 & 0x7FF0000000000000) == 0;
  if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v16 = 0;
  }

  if (v16 || v12)
  {
    v23 = v15 == 0;
    v17 = 368;
    if (!v23)
    {
      v17 = 336;
    }

    v18 = (&unk_1004BD648 + v17);
    if (v9 <= 0x7FF0000000000000)
    {
      v19 = v18;
    }

    else
    {
      v19 = &qword_1004BD7C8;
    }

    if (v19 == a3)
    {
      return result;
    }

LABEL_109:
    *a3 = *v19;
    return result;
  }

  v23 = v15 == 0;
  v22 = 368;
  if (!v23)
  {
    v22 = 336;
  }

  v23 = v9 > 0x7FF0000000000000 || ((v11 | v5) & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v23 || v9 == v11)
  {
    v22 = 384;
  }

  v19 = (&unk_1004BD648 + v22);
  if ((&unk_1004BD648 + v22) != a3)
  {
    goto LABEL_109;
  }

  return result;
}

uint64_t *sub_10029FD58@<X0>(uint64_t *result@<X0>, unsigned int *a2@<X8>)
{
  v2 = *result;
  v3 = *result & 0x7FFFFFFF;
  if (v3 >= 0x7F800001)
  {
    *a2 = 0x7FFFFFFF;
    return result;
  }

  if (v3 == 2139095040)
  {
    *a2 = v2;
    return result;
  }

  v5 = ((v2 >> 23) - 127) % 3;
  if (v5 >= 0)
  {
    v6 = -3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + v5;
  v28 = 0x4046A09E6653BA70;
  v29 = ((*&v2 & 0x7FFFFFLL) << 29) | ((v6 + v5 + 1023) << 52);
  v27 = 0x402D9E20660EDB21;
  sub_10029E004(&v28, &v29, &v18);
  if ((v18 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v19, v18, 0x406808F46C6116E0uLL, 1);
  }

  else
  {
    sub_1002A062C(&v19, v18, 0x406808F46C6116E0uLL, 0);
  }

  sub_10029E004(&v19, &v29, &v20);
  if ((v20 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v21, v20, 0x405DCA97439CAE14uLL, 1);
  }

  else
  {
    sub_1002A062C(&v21, v20, 0x405DCA97439CAE14uLL, 0);
  }

  sub_10029E004(&v21, &v29, &v22);
  if ((v22 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v23, v22, 0x402ADD70D2827500uLL, 1);
  }

  else
  {
    sub_1002A062C(&v23, v22, 0x402ADD70D2827500uLL, 0);
  }

  sub_10029E004(&v23, &v29, &v24);
  if ((v24 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v25, v24, 0x3FC4F15F83F55D2DuLL, 1);
  }

  else
  {
    sub_1002A062C(&v25, v24, 0x3FC4F15F83F55D2DuLL, 0);
  }

  sub_10029E004(&v27, &v29, &v10);
  if ((v10 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v11, v10, 0x4062FF15C0285815uLL, 1);
  }

  else
  {
    sub_1002A062C(&v11, v10, 0x4062FF15C0285815uLL, 0);
  }

  sub_10029E004(&v11, &v29, &v12);
  if ((v12 & 0x8000000000000000) != 0)
  {
    sub_1002A0834(&v13, v12, 0x406510D06A8112CEuLL, 1);
  }

  else
  {
    sub_1002A062C(&v13, v12, 0x406510D06A8112CEuLL, 0);
  }

  sub_10029E004(&v13, &v29, &v14);
  if ((v14 & 0x8000000000000000) == 0)
  {
    sub_1002A062C(&v15, v14, 0x4040FECBC9E2C375uLL, 0);
    sub_10029E004(&v15, &v29, &v16);
    v8 = v16;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    sub_1002A0834(&v17, v8, 0x3FF0000000000000uLL, 1);
    result = sub_10029E2BC(&v25, &v17, &v26);
    if (v3)
    {
      goto LABEL_29;
    }

LABEL_32:
    v9 = 0;
    goto LABEL_33;
  }

  sub_1002A0834(&v15, v14, 0x4040FECBC9E2C375uLL, 1);
  sub_10029E004(&v15, &v29, &v16);
  v8 = v16;
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  sub_1002A062C(&v17, v8, 0x3FF0000000000000uLL, 0);
  result = sub_10029E2BC(&v25, &v17, &v26);
  if (!v3)
  {
    goto LABEL_32;
  }

LABEL_29:
  v9 = (((v2 & 0x80000000) + ((((21846 * ((v2 >> 23) - 127 - v7)) >> 16) + ((21846 * ((v2 >> 23) - 127 - v7)) >> 31)) << 23)) | (v26 >> 29) & 0x7FFFFF) + 1056964608;
LABEL_33:
  *a2 = v9;
  return result;
}

int *sub_1002A0124(int *result, unsigned int a2, unsigned int a3)
{
  v3 = (a2 >> 23);
  v4 = a2 & 0x7FFFFF;
  v5 = a3 & 0x7FFFFF;
  v6 = (a3 >> 23);
  v7 = v3 - v6;
  if (v3 == v6)
  {
    if (v3 == 255)
    {
      if (!(v5 | v4))
      {
        *result = -4194304;
        return result;
      }

LABEL_13:
      if ((a2 & 0x7FC00000) == 0x7F800000 && (a2 & 0x3FFFFF) != 0)
      {
        *result = a2 | 0x400000;
      }

      else
      {
        if (v4)
        {
          v11 = (~a2 & 0x7F800000) == 0;
        }

        else
        {
          v11 = 0;
        }

        if (!v11)
        {
          a2 = a3;
        }

        *result = a2 | 0x400000;
      }

      return result;
    }

    v10 = v4 - v5;
    if (v4 == v5)
    {
      *result = 0;
    }

    else
    {
      v15 = v3 != 0;
      v16 = v3 - 1;
      if (!v15)
      {
        v16 = 0;
      }

      if (v10 >= 0)
      {
        v17 = v4 - v5;
      }

      else
      {
        v17 = v5 - v4;
      }

      v18 = v10 ^ a2;
      v19 = v17 << 16;
      if (v17 >= 0x10000)
      {
        v19 = v17;
      }

      LODWORD(v20) = v19 << 8;
      if (HIBYTE(v19))
      {
        v20 = v19;
      }

      else
      {
        v20 = v20;
      }

      if (HIBYTE(v19))
      {
        v21 = 16 * (v17 < 0x10000);
      }

      else
      {
        v21 = (16 * (v17 < 0x10000)) | 8;
      }

      v22 = v21 + byte_1003E3D58[v20 >> 24] - 8;
      v23 = v16 - v22;
      if (v23 >= 0)
      {
        LOBYTE(v16) = v22;
      }

      *result = (v18 & 0x80000000) + ((v23 & ~(v23 >> 31)) << 23) + (v17 << v16);
    }
  }

  else
  {
    v8 = v4 << 7;
    v9 = v5 << 7;
    if ((v7 & 0x80000000) != 0)
    {
      if (v6 == 255)
      {
        if (!v5)
        {
          *result = (a2 & 0x80000000) - 0x800000;
          return result;
        }

        goto LABEL_13;
      }

      v14 = (a2 & 0x80000000) == 0;
      if (v3)
      {
        v24 = 0x40000000;
      }

      else
      {
        v24 = v4 << 7;
      }

      v13 = v24 + v8;
      v7 = -v7;
    }

    else
    {
      if (v3 == 255)
      {
        if (!v4)
        {
          *result = a2;
          return result;
        }

        goto LABEL_13;
      }

      if ((a3 & 0x7F800000) != 0)
      {
        v12 = 0x40000000;
      }

      else
      {
        v12 = v5 << 7;
      }

      v13 = v12 + v9;
      v14 = a2 >> 31;
      v6 = v3;
      v9 = v8;
    }

    v25 = v9 | 0x40000000;
    v26 = v13 != 0;
    v27 = (v13 >> v7) | (v13 << -v7 != 0);
    if (v7 <= 0x1E)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    return sub_1002A04E4(result, v14, v6 - 1, v25 - v28);
  }

  return result;
}

unsigned int *sub_1002A02DC(unsigned int *result, unsigned int a2, unsigned int a3)
{
  v3 = (a2 >> 23);
  v4 = a2 & 0x7FFFFF;
  v5 = (a3 >> 23);
  v6 = a3 & 0x7FFFFF;
  v7 = v3 - v5;
  if (v3 != v5)
  {
    v8 = v4 << 6;
    v9 = v6 << 6;
    if ((v7 & 0x80000000) != 0)
    {
      if (v5 == 255)
      {
        if (!v6)
        {
          goto LABEL_44;
        }

LABEL_13:
        if ((a2 & 0x7FC00000) == 0x7F800000 && (a2 & 0x3FFFFF) != 0)
        {
          *result = a2 | 0x400000;
        }

        else
        {
          if (v4)
          {
            v16 = (~a2 & 0x7F800000) == 0;
          }

          else
          {
            v16 = 0;
          }

          if (!v16)
          {
            a2 = a3;
          }

          *result = a2 | 0x400000;
        }

        return result;
      }

      if ((a2 >> 23))
      {
        v17 = 0x20000000;
      }

      else
      {
        v17 = v4 << 6;
      }

      v18 = v17 + v8;
      v19 = v18 != 0;
      v20 = (v18 >> -v7) | (v18 << v7 != 0);
      if (-v7 <= 0x1E)
      {
        v19 = v20;
      }

      v3 = (a3 >> 23);
      v15 = v19 + 0x20000000 + v9;
      if (v15 >> 30)
      {
LABEL_39:
        if (v3 < 0xFD)
        {
          goto LABEL_48;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v3 == 255)
      {
        if (!v4)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }

      if ((a3 >> 23))
      {
        v11 = 0x20000000;
      }

      else
      {
        v11 = v6 << 6;
      }

      v12 = v11 + v9;
      v13 = v12 != 0;
      v14 = (v12 >> (v3 - v5)) | (v12 << (v5 - v3) != 0);
      if (v7 <= 0x1E)
      {
        v13 = v14;
      }

      v15 = v8 + 0x20000000 + v13;
      if (v15 >> 30)
      {
        goto LABEL_39;
      }
    }

    --v3;
    v15 *= 2;
    goto LABEL_39;
  }

  if (!(a2 >> 23))
  {
    *result = v6 + a2;
    return result;
  }

  if (v3 == 255)
  {
    if (!(v6 | v4))
    {
LABEL_5:
      *result = a2;
      return result;
    }

    goto LABEL_13;
  }

  v10 = (v6 + v4) | 0x1000000;
  if (v3 <= 0xFD && (v10 & 1) == 0)
  {
    *result = (a2 & 0x80000000 | (v3 << 23)) + (v10 >> 1);
    return result;
  }

  v15 = v10 << 6;
  if (v3 >= 0xFD)
  {
LABEL_40:
    if ((v3 & 0x80000000) != 0)
    {
      v15 = (v15 >> -v3) | (v15 << v3 != 0);
      v3 = 0;
      goto LABEL_48;
    }

    if (v3 == 253 && ((v15 + 64) & 0x80000000) == 0)
    {
      v3 = 253;
      goto LABEL_48;
    }

LABEL_44:
    *result = a2 & 0x80000000 | 0x7F800000;
    return result;
  }

LABEL_48:
  v21 = v3 << 23;
  v22 = ~((v15 & 0x7F) == 64) & ((v15 + 64) >> 7);
  if (!v22)
  {
    v21 = 0;
  }

  *result = (v22 | a2 & 0x80000000) + v21;
  return result;
}

int *sub_1002A04E4(int *result, int a2, int a3, unsigned int a4)
{
  v4 = a4 << 16;
  if (a4 >= 0x10000)
  {
    v4 = a4;
  }

  LODWORD(v5) = v4 << 8;
  if (HIBYTE(v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = v5;
  }

  v6 = byte_1003E3D58[v5 >> 24];
  if (HIBYTE(v4))
  {
    v7 = 16 * (a4 < 0x10000);
  }

  else
  {
    v7 = (16 * (a4 < 0x10000)) | 8;
  }

  v8 = (v7 + v6 - 1);
  v9 = a3 - v8;
  v10 = v8 - 7;
  if (v8 >= 7 && (a3 - v8) <= 0xFCu)
  {
    if (a2)
    {
      v11 = 0x80000000;
    }

    else
    {
      v11 = 0;
    }

    v12 = v9 << 23;
    if (!a4)
    {
      v12 = 0;
    }

    *result = (a4 << v10) + v11 + v12;
    return result;
  }

  v13 = a4 << v8;
  if ((a3 - v8) >= 0xFDu)
  {
    if ((v9 & 0x8000) != 0)
    {
      v14 = v13 != 0;
      v13 = (v13 >> (v8 - a3)) | (v13 << (a3 - v8) != 0);
      v9 = 0;
      if ((v8 - a3) > 0x1Eu)
      {
        v13 = v14;
      }
    }

    else
    {
      if ((a3 - v8) != 253 || ((v13 + 64) & 0x80000000) != 0)
      {
        if (a2)
        {
          v20 = -8388608;
        }

        else
        {
          v20 = 2139095040;
        }

        *result = v20;
        return result;
      }

      v9 = 253;
    }
  }

  v15 = v13 + 64;
  v16 = ~((v13 & 0x7F) == 64);
  if (a2)
  {
    v17 = 0x80000000;
  }

  else
  {
    v17 = 0;
  }

  v18 = v9 << 23;
  v19 = v16 & (v15 >> 7);
  if (!v19)
  {
    v18 = 0;
  }

  *result = (v19 | v17) + v18;
  return result;
}

unint64_t *sub_1002A062C(unint64_t *result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = (a2 >> 52) & 0x7FF;
  v5 = a2 & 0xFFFFFFFFFFFFFLL;
  v6 = (a3 >> 52) & 0x7FF;
  v7 = a3 & 0xFFFFFFFFFFFFFLL;
  v8 = v4 - v6;
  if (v4 != v6)
  {
    v9 = v5 << 9;
    v10 = v7 << 9;
    if (v4 - v6 < 0)
    {
      if (v6 == 2047)
      {
        if (!v7)
        {
          goto LABEL_44;
        }

        goto LABEL_13;
      }

      v17 = v9 | 0x2000000000000000;
      v18 = v5 << 10;
      if (v4)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      v20 = v19 != 0;
      v21 = (v19 >> -v8) | (v19 << v8 != 0);
      if (-v8 <= 0x3E)
      {
        v20 = v21;
      }

      v11 = v20 + 0x2000000000000000 + v10;
      if (!(v11 >> 62))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v4 == 2047)
      {
        if (v5)
        {
          goto LABEL_13;
        }

LABEL_8:
        *result = a2;
        return result;
      }

      if (v6)
      {
        v12 = v10 | 0x2000000000000000;
      }

      else
      {
        v12 = v7 << 10;
      }

      v13 = v12 != 0;
      v14 = (v12 >> v8) | (v12 << -v8 != 0);
      if (v8 <= 0x3E)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      v6 = (a2 >> 52) & 0x7FF;
      v11 = v9 + 0x2000000000000000 + v15;
      if (!(v11 >> 62))
      {
LABEL_25:
        v4 = (v6 - 1);
        v11 *= 2;
        if (v4 < 0x7FD)
        {
          goto LABEL_49;
        }

LABEL_40:
        if ((v4 & 0x80000000) != 0)
        {
          v11 = (v11 >> -v4) | (v11 << v4 != 0);
          v4 = 0;
          goto LABEL_49;
        }

        if (v4 == 2045 && ((v11 + 512) & 0x8000000000000000) == 0)
        {
          v4 = 2045;
          goto LABEL_49;
        }

LABEL_44:
        if (a4)
        {
          v22 = 0xFFF0000000000000;
        }

        else
        {
          v22 = 0x7FF0000000000000;
        }

        *result = v22;
        return result;
      }
    }

    v4 = v6;
    if (v6 < 0x7FD)
    {
LABEL_49:
      v23 = v11 + 512;
      v24 = ~((v11 & 0x3FF) == 512);
      v25 = 0x8000000000000000;
      if (!a4)
      {
        v25 = 0;
      }

      v26 = v4 << 52;
      v27 = v24 & (v23 >> 10);
      if (!v27)
      {
        v26 = 0;
      }

      *result = (v27 | v25) + v26;
      return result;
    }

    goto LABEL_40;
  }

  if (v4 != 2047)
  {
    if (!v4)
    {
      *result = v7 + a2;
      return result;
    }

    v11 = ((v7 + v5) << 9) | 0x4000000000000000;
    if (v4 < 0x7FD)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  if (!(v7 | v5))
  {
    goto LABEL_8;
  }

LABEL_13:
  if ((a2 & 0x7FF8000000000000) == 0x7FF0000000000000 && (a2 & 0x7FFFFFFFFFFFFLL) != 0)
  {
    *result = a2 | 0x8000000000000;
  }

  else
  {
    if (v5)
    {
      v16 = (~a2 & 0x7FF0000000000000) == 0;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      a2 = a3;
    }

    *result = a2 | 0x8000000000000;
  }

  return result;
}

unint64_t *sub_1002A0834(unint64_t *result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = (a2 >> 52) & 0x7FF;
  v5 = a2 & 0xFFFFFFFFFFFFFLL;
  v6 = (a3 >> 52) & 0x7FF;
  v7 = a3 & 0xFFFFFFFFFFFFFLL;
  v8 = v4 - v6;
  if (v4 == v6)
  {
    if (v4 == 2047)
    {
      if (!(v7 | v5))
      {
        *result = 0xFFF8000000000000;
        return result;
      }

      goto LABEL_30;
    }

    v11 = v5 - v7;
    if (v5 == v7)
    {
      *result = 0;
    }

    else
    {
      v12 = v4 != 0;
      v13 = v4 - 1;
      if (!v12)
      {
        v13 = 0;
      }

      v14 = a4 ^ 1;
      if ((v11 & 0x8000000000000000) != 0)
      {
        v11 = v7 - v5;
      }

      else
      {
        v14 = a4;
      }

      v15 = HIDWORD(v11);
      v16 = 32 * (HIDWORD(v11) == 0);
      if (!HIDWORD(v11))
      {
        v15 = v11;
      }

      if (v15 < 0x10000)
      {
        v16 = (32 * (HIDWORD(v11) == 0)) | 0x10;
        LODWORD(v15) = v15 << 16;
      }

      v17 = v16 | 8;
      if (BYTE3(v15))
      {
        v17 = v16;
        v15 = v15;
      }

      else
      {
        v15 = (v15 << 8);
      }

      v18 = byte_1003E3D58[v15 >> 24] + v17 - 11;
      v19 = v13 - v18;
      v20 = (v13 - v18);
      if (v20 >= 0)
      {
        LOBYTE(v13) = v18;
      }

      v22 = v14 == 0;
      v21 = 0x8000000000000000;
      if (v22)
      {
        v21 = 0;
      }

      *result = v21 + ((v19 & ~(v20 >> 31)) << 52) + (v11 << v13);
    }

    return result;
  }

  v9 = v5 << 10;
  v10 = v7 << 10;
  if (v4 - v6 >= 0)
  {
    if (v4 == 2047)
    {
      if (!v5)
      {
        *result = a2;
        return result;
      }

      goto LABEL_30;
    }

    v22 = v6 == 0;
    v23 = 0x4000000000000000;
    if (v22)
    {
      v23 = v7 << 10;
    }

    v24 = v23 + v10;
    v25 = v24 != 0;
    v26 = (v24 >> v8) | (v24 << -v8 != 0);
    if (v8 <= 0x3E)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }

    v28 = ((a2 >> 52) & 0x7FF) - 1;
    v29 = a4;
    v30 = (v9 | 0x4000000000000000) - v27;
    return sub_1002A0A48(result, v29, v28, v30);
  }

  if (v6 != 2047)
  {
    v31 = a4 ^ 1;
    v22 = v4 == 0;
    v32 = 0x4000000000000000;
    if (v22)
    {
      v32 = v5 << 10;
    }

    v33 = v32 + v9;
    v34 = v33 != 0;
    v35 = (v33 >> -v8) | (v33 << v8 != 0);
    if (-v8 <= 0x3E)
    {
      v36 = v35;
    }

    else
    {
      v36 = v34;
    }

    v28 = v6 - 1;
    v29 = v31;
    v30 = (v10 | 0x4000000000000000) - v36;
    return sub_1002A0A48(result, v29, v28, v30);
  }

  if (v7)
  {
LABEL_30:
    if ((a2 & 0x7FF8000000000000) == 0x7FF0000000000000 && (a2 & 0x7FFFFFFFFFFFFLL) != 0)
    {
      *result = a2 | 0x8000000000000;
    }

    else
    {
      if (v5)
      {
        v22 = (~a2 & 0x7FF0000000000000) == 0;
      }

      else
      {
        v22 = 0;
      }

      if (!v22)
      {
        a2 = a3;
      }

      *result = a2 | 0x8000000000000;
    }

    return result;
  }

  if (a4)
  {
    v37 = 0x7FF0000000000000;
  }

  else
  {
    v37 = 0xFFF0000000000000;
  }

  *result = v37;
  return result;
}

unint64_t *sub_1002A0A48(unint64_t *result, int a2, int a3, unint64_t a4)
{
  v4 = HIDWORD(a4);
  v5 = 32 * (HIDWORD(a4) == 0);
  if (!HIDWORD(a4))
  {
    v4 = a4;
  }

  if (v4 < 0x10000)
  {
    v5 = (32 * (HIDWORD(a4) == 0)) | 0x10;
    LODWORD(v4) = v4 << 16;
  }

  v6 = v5 | 8;
  v7 = BYTE3(v4);
  if (BYTE3(v4))
  {
    v4 = v4;
  }

  else
  {
    v4 = (v4 << 8);
  }

  v8 = byte_1003E3D58[v4 >> 24];
  if (v7)
  {
    v6 = v5;
  }

  v9 = (v6 + v8 - 1);
  v10 = (a3 - v9);
  v11 = v9 - 10;
  if (v9 >= 10 && (a3 - v9) <= 0x7FCu)
  {
    v12 = 0x8000000000000000;
    if (!a2)
    {
      v12 = 0;
    }

    v13 = v10 << 52;
    if (!a4)
    {
      v13 = 0;
    }

    *result = (a4 << v11) + v12 + v13;
    return result;
  }

  v14 = a4 << v9;
  if ((a3 - v9) < 0x7FDu)
  {
    goto LABEL_24;
  }

  if (((a3 - v9) & 0x8000) != 0)
  {
    v15 = -(a3 - v9);
    v16 = v14 != 0;
    v14 = (v14 >> v15) | (v14 << v10 != 0);
    v10 = 0;
    if (v15 > 0x3E)
    {
      v14 = v16;
    }

    goto LABEL_24;
  }

  if ((a3 - v9) == 2045 && ((v14 + 512) & 0x8000000000000000) == 0)
  {
    v10 = 2045;
LABEL_24:
    v17 = v14 + 512;
    v18 = ~((v14 & 0x3FF) == 512);
    v19 = 0x8000000000000000;
    if (!a2)
    {
      v19 = 0;
    }

    v20 = v10 << 52;
    v21 = v18 & (v17 >> 10);
    if (!v21)
    {
      v20 = 0;
    }

    *result = (v21 | v19) + v20;
    return result;
  }

  v22 = 0x7FF0000000000000;
  if (a2)
  {
    v22 = 0xFFF0000000000000;
  }

  *result = v22;
  return result;
}

uint64_t sub_1002A0BBC(uint64_t a1)
{
  sub_1002ACE7C(v28, &off_100475398);
  if ((sub_100271A88(a1, -1) & 0xFF8) != 0)
  {
    v20 = 0uLL;
    v2 = sub_1002A80E0(&v20, 7);
    *(v2 + 3) = 824196413;
    *v2 = 1025535587;
    sub_1002A8980(-215, &v20, "countNonZero", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 1358);
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v3 = *(a1 + 8);
    v4 = *v3;
    v5 = *(v3 + 16);
    v20 = *v3;
    v21 = v5;
    v22 = *(v3 + 32);
    v6 = *(v3 + 56);
    v23 = *(v3 + 48);
    v24 = v6;
    v25 = &v20 + 8;
    v26 = v27;
    v27[0] = 0;
    v27[1] = 0;
    if (v6)
    {
      atomic_fetch_add((v6 + 20), 1u);
      if (*(v3 + 4) <= 2)
      {
LABEL_6:
        v7 = *(v3 + 72);
        v8 = v26;
        *v26 = *v7;
        v8[1] = v7[1];
        goto LABEL_10;
      }
    }

    else if (SDWORD1(v4) <= 2)
    {
      goto LABEL_6;
    }

    DWORD1(v20) = 0;
    sub_100269B58(&v20, v3);
  }

  else
  {
    sub_1002703C0(a1, -1, &v20);
  }

LABEL_10:
  v9 = v20 & 7;
  v10 = off_1004753F8[v9];
  if (v9 == 7)
  {
    v18[0] = 0;
    v18[1] = 0;
    v11 = sub_1002A80E0(v18, 9);
    *(v11 + 8) = 48;
    *v11 = *"func != 0";
    sub_1002A8980(-215, v18, "countNonZero", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 1374);
  }

  v31[0] = &v20;
  v31[1] = 0;
  v30 = 0;
  sub_100267CC8(v18, v31, &v30, -1);
  v12 = 0;
  v13 = v19;
  v14 = -1;
  while (++v14 < v18[4])
  {
    v12 = (v10)(v30, v13) + v12;
    sub_100267D14(v18);
  }

  if (v24 && atomic_fetch_add((v24 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v20);
  }

  v24 = 0;
  v21 = 0u;
  v22 = 0u;
  if (SDWORD1(v20) >= 1)
  {
    v15 = 0;
    v16 = v25;
    do
    {
      *&v16[4 * v15++] = 0;
    }

    while (v15 < SDWORD1(v20));
  }

  if (v26 != v27)
  {
    j__free(v26);
  }

  if (v29)
  {
    sub_1002ACC1C(v28);
  }

  return v12;
}

void sub_1002A0E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A0F30(uint64_t a1, double *a2, unint64_t *a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  sub_1002ACE7C(v100, &off_1004753B8);
  v12 = sub_100271A88(a1, -1);
  v13 = v12;
  v14 = (v12 >> 3) & 0x1FF;
  if (v14)
  {
    v15 = sub_1002743D4(a6);
    if (a5 || a4 || !v15)
    {
      goto LABEL_8;
    }
  }

  else if (!sub_1002743D4(a6) && sub_100271A88(a6, -1))
  {
LABEL_8:
    v92 = 0uLL;
    qmemcpy(sub_1002A80E0(&v92, 100), "(cn == 1 && (_mask.empty() || _mask.type() == 0)) || (cn > 1 && _mask.empty() && !minIdx && !maxIdx)", 100);
    sub_1002A8980(-215, &v92, "minMaxIdx", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 2709);
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v16 = *(a1 + 8);
    v17 = *v16;
    v18 = *(v16 + 16);
    v92 = *v16;
    v93 = v18;
    v94 = *(v16 + 32);
    v19 = *(v16 + 56);
    v95 = *(v16 + 48);
    v96 = v19;
    v97 = &v92 + 8;
    v98 = v99;
    v99[0] = 0;
    v99[1] = 0;
    if (v19)
    {
      atomic_fetch_add((v19 + 20), 1u);
      if (*(v16 + 4) <= 2)
      {
LABEL_12:
        v20 = *(v16 + 72);
        v21 = v98;
        *v98 = *v20;
        v21[1] = v20[1];
        goto LABEL_16;
      }
    }

    else if (SDWORD1(v17) <= 2)
    {
      goto LABEL_12;
    }

    DWORD1(v92) = 0;
    sub_100269B58(&v92, v16);
  }

  else
  {
    sub_1002703C0(a1, -1, &v92);
  }

LABEL_16:
  if (sub_100271148(a6) == 0x10000)
  {
    v22 = *(a6 + 8);
    v23 = *v22;
    v24 = *(v22 + 16);
    v84 = *v22;
    v85 = v24;
    v86 = *(v22 + 32);
    v25 = *(v22 + 56);
    v87 = *(v22 + 48);
    v88 = v25;
    v89 = &v84 + 8;
    v90 = v91;
    v91[0] = 0;
    v91[1] = 0;
    if (v25)
    {
      atomic_fetch_add((v25 + 20), 1u);
      if (*(v22 + 4) <= 2)
      {
LABEL_19:
        v26 = *(v22 + 72);
        v27 = v90;
        *v90 = *v26;
        v27[1] = v26[1];
        goto LABEL_23;
      }
    }

    else if (SDWORD1(v23) <= 2)
    {
      goto LABEL_19;
    }

    DWORD1(v84) = 0;
    sub_100269B58(&v84, v22);
  }

  else
  {
    sub_1002703C0(a6, -1, &v84);
  }

LABEL_23:
  v72 = a3;
  v28 = v13 & 7;
  v29 = off_100475438[v13 & 7];
  if (v28 == 7)
  {
    v81[0] = 0;
    v81[1] = 0;
    v30 = sub_1002A80E0(v81, 9);
    *(v30 + 8) = 48;
    *v30 = *"func != 0";
    sub_1002A8980(-215, v81, "minMaxIdx", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 2722);
  }

  v104[0] = &v92;
  v104[1] = &v84;
  v104[2] = 0;
  v102 = 0;
  v103 = 0;
  sub_100267CC8(v81, v104, &v102, -1);
  v77 = 0x80000000;
  v78 = 0x7FFFFFFF;
  v75 = -INFINITY;
  v76 = INFINITY;
  v31 = &v78;
  if (v28 == 6)
  {
    v31 = &v74;
  }

  v32 = &v77;
  v79 = 0;
  v80 = 0;
  if (v28 == 6)
  {
    v32 = &v73;
  }

  v73 = 0xFFF0000000000000;
  v74 = INFINITY;
  if (v28 == 5)
  {
    v33 = &v76;
  }

  else
  {
    v33 = v31;
  }

  if (v28 == 5)
  {
    v34 = &v75;
  }

  else
  {
    v34 = v32;
  }

  if (v82)
  {
    v35 = 0;
    v36 = ((v14 + 1) * v83);
    v37 = 1;
    do
    {
      (v29)(v102, v103, v33, v34, &v80, &v79, v36, v37);
      sub_100267D14(v81);
      ++v35;
      v37 += v36;
    }

    while (v35 < v82);
  }

  if (v93)
  {
    if (SDWORD1(v92) >= 3)
    {
      v39 = (v97 + 4);
      v40 = 1;
      v41 = DWORD1(v92) & 0x7FFFFFFE;
      v42 = 1;
      do
      {
        v40 *= *(v39 - 1);
        v42 *= *v39;
        v39 += 2;
        v41 -= 2;
      }

      while (v41);
      v38 = v42 * v40;
      v43 = DWORD1(v92) - (DWORD1(v92) & 0x7FFFFFFE);
      if (v43)
      {
        v44 = &v97[8 * ((DWORD1(v92) >> 1) & 0x3FFFFFFF)];
        do
        {
          v45 = *v44;
          v44 += 4;
          v38 *= v45;
          --v43;
        }

        while (v43);
      }
    }

    else
    {
      v38 = SHIDWORD(v92) * SDWORD2(v92);
    }

    if (DWORD1(v92) && v38)
    {
      if (!v85)
      {
        goto LABEL_58;
      }

      if (SDWORD1(v84) >= 3)
      {
        v47 = (v89 + 4);
        v48 = 1;
        v49 = DWORD1(v84) & 0x7FFFFFFE;
        v50 = 1;
        do
        {
          v48 *= *(v47 - 1);
          v50 *= *v47;
          v47 += 2;
          v49 -= 2;
        }

        while (v49);
        v46 = v50 * v48;
        v51 = DWORD1(v84) - (DWORD1(v84) & 0x7FFFFFFE);
        if (v51)
        {
          v52 = &v89[8 * ((DWORD1(v84) >> 1) & 0x3FFFFFFF)];
          do
          {
            v53 = *v52;
            v52 += 4;
            v46 *= v53;
            --v51;
          }

          while (v51);
        }
      }

      else
      {
        v46 = SHIDWORD(v84) * SDWORD2(v84);
      }

      if (!DWORD1(v84) || !v46)
      {
LABEL_58:
        if (v80)
        {
          if (v79)
          {
            goto LABEL_60;
          }

LABEL_106:
          v79 = 1;
          v54 = v80;
LABEL_61:
          if (v28 == 5)
          {
            v74 = v76;
            v55 = v75;
          }

          else
          {
            if (v28 > 4)
            {
              goto LABEL_66;
            }

            v74 = v78;
            v55 = v77;
          }

          v73 = *&v55;
LABEL_66:
          if (!a2)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        }

        v80 = 1;
        if (!v79)
        {
          goto LABEL_106;
        }
      }
    }
  }

LABEL_60:
  v54 = v80;
  if (v80)
  {
    goto LABEL_61;
  }

  v73 = 0;
  v74 = 0.0;
  if (a2)
  {
LABEL_67:
    *a2 = v74;
  }

LABEL_68:
  if (v72)
  {
    *v72 = v73;
  }

  if (a4)
  {
    if (v54)
    {
      if (SDWORD1(v92) >= 1)
      {
        v56 = v97;
        v57 = v54 - 1;
        v58 = DWORD1(v92) - 1;
        do
        {
          v59 = *&v56[4 * v58];
          v60 = v57 / v59;
          a4[v58] = v57 % v59;
          v61 = v58-- + 1;
          v57 = v60;
        }

        while (v61 > 1);
      }
    }

    else if (SDWORD1(v92) >= 1)
    {
      memset(a4, 255, 4 * DWORD1(v92));
    }
  }

  if (a5)
  {
    if (v79)
    {
      if (SDWORD1(v92) >= 1)
      {
        v62 = v97;
        v63 = v79 - 1;
        v64 = DWORD1(v92) - 1;
        do
        {
          v65 = *&v62[4 * v64];
          v66 = v63 / v65;
          a5[v64] = v63 % v65;
          v67 = v64-- + 1;
          v63 = v66;
        }

        while (v67 > 1);
      }
    }

    else if (SDWORD1(v92) >= 1)
    {
      memset(a5, 255, 4 * DWORD1(v92));
    }
  }

  if (v88 && atomic_fetch_add((v88 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v84);
  }

  v88 = 0;
  v85 = 0u;
  v86 = 0u;
  if (SDWORD1(v84) >= 1)
  {
    v68 = 0;
    v69 = v89;
    do
    {
      *&v69[4 * v68++] = 0;
    }

    while (v68 < SDWORD1(v84));
  }

  if (v90 != v91)
  {
    j__free(v90);
  }

  if (v96 && atomic_fetch_add((v96 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v92);
  }

  v96 = 0;
  v93 = 0u;
  v94 = 0u;
  if (SDWORD1(v92) >= 1)
  {
    v70 = 0;
    v71 = v97;
    do
    {
      *&v71[4 * v70++] = 0;
    }

    while (v70 < SDWORD1(v92));
  }

  if (v98 != v99)
  {
    j__free(v98);
  }

  if (v101)
  {
    sub_1002ACC1C(v100);
  }
}

void sub_1002A1670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_1002A1748(uint64_t a1, char a2, uint64_t a3)
{
  sub_1002ACE7C(v178, &off_1004753D8);
  v6 = a2 & 7;
  v7 = a2 & 6;
  if (v7 != 4 && (v6 - 1) >= 2 && (v7 != 6 || sub_100271A88(a1, -1)))
  {
    v170 = 0uLL;
    qmemcpy(sub_1002A80E0(&v170, 173), "normType == NORM_INF || normType == NORM_L1 || normType == NORM_L2 || normType == NORM_L2SQR || ((normType == NORM_HAMMING || normType == NORM_HAMMING2) && _src.type() == 0)", 173);
    sub_1002A8980(-215, &v170, "norm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 3186);
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v8 = *(a1 + 8);
    v9 = *v8;
    v10 = *(v8 + 16);
    v170 = *v8;
    v171 = v10;
    v172 = *(v8 + 32);
    v11 = *(v8 + 56);
    v173 = *(v8 + 48);
    v174 = v11;
    v175 = &v170 + 8;
    v176 = v177;
    v177[0] = 0;
    v177[1] = 0;
    if (v11)
    {
      atomic_fetch_add((v11 + 20), 1u);
      if (*(v8 + 4) <= 2)
      {
LABEL_9:
        v12 = *(v8 + 72);
        v13 = v176;
        *v176 = *v12;
        v13[1] = v12[1];
        goto LABEL_13;
      }
    }

    else if (SDWORD1(v9) <= 2)
    {
      goto LABEL_9;
    }

    DWORD1(v170) = 0;
    sub_100269B58(&v170, v8);
  }

  else
  {
    sub_1002703C0(a1, -1, &v170);
  }

LABEL_13:
  if (sub_100271148(a3) == 0x10000)
  {
    v14 = *(a3 + 8);
    v15 = *v14;
    v16 = *(v14 + 16);
    v162 = *v14;
    v17 = *(v14 + 32);
    v163 = v16;
    v164 = v17;
    v18 = *(v14 + 56);
    v165 = *(v14 + 48);
    v166 = v18;
    v167 = &v162 + 8;
    v168 = v169;
    v169[0] = 0;
    v169[1] = 0;
    if (v18)
    {
      atomic_fetch_add((v18 + 20), 1u);
      if (*(v14 + 4) <= 2)
      {
LABEL_16:
        v19 = *(v14 + 72);
        v20 = v168;
        *v168 = *v19;
        v20[1] = v19[1];
        goto LABEL_20;
      }
    }

    else if (SDWORD1(v15) <= 2)
    {
      goto LABEL_16;
    }

    DWORD1(v162) = 0;
    sub_100269B58(&v162, v14);
  }

  else
  {
    sub_1002703C0(a3, -1, &v162);
  }

LABEL_20:
  v21 = v170 & 7;
  v155 = ((v170 >> 3) & 0x1FF) + 1;
  if ((v170 & 0x4000) != 0)
  {
    if (!v163)
    {
      goto LABEL_31;
    }

    if (SDWORD1(v162) >= 3)
    {
      v23 = (v167 + 4);
      v24 = 1;
      v25 = DWORD1(v162) & 0x7FFFFFFE;
      v26 = 1;
      do
      {
        v24 *= *(v23 - 1);
        v26 *= *v23;
        v23 += 2;
        v25 -= 2;
      }

      while (v25);
      v22 = v26 * v24;
      v27 = DWORD1(v162) - (DWORD1(v162) & 0x7FFFFFFE);
      if (v27)
      {
        v28 = &v167[8 * ((DWORD1(v162) >> 1) & 0x3FFFFFFF)];
        do
        {
          v29 = *v28;
          v28 += 4;
          v22 *= v29;
          --v27;
        }

        while (v27);
      }
    }

    else
    {
      v22 = SHIDWORD(v162) * SDWORD2(v162);
    }

    if (!DWORD1(v162) || !v22)
    {
LABEL_31:
      if (SDWORD1(v170) >= 3)
      {
        v31 = (v175 + 4);
        v32 = 1;
        v33 = DWORD1(v170) & 0x7FFFFFFE;
        v34 = 1;
        do
        {
          v32 *= *(v31 - 1);
          v34 *= *v31;
          v31 += 2;
          v33 -= 2;
        }

        while (v33);
        v30 = v34 * v32;
        v35 = DWORD1(v170) - (DWORD1(v170) & 0x7FFFFFFE);
        if (v35)
        {
          v36 = &v175[8 * ((DWORD1(v170) >> 1) & 0x3FFFFFFF)];
          do
          {
            v37 = *v36;
            v36 += 4;
            v30 *= v37;
            --v35;
          }

          while (v35);
        }
      }

      else
      {
        v30 = SHIDWORD(v170) * SDWORD2(v170);
      }

      v38 = v30 * v155;
      if (v30 * v155 == v30 * v155)
      {
        if ((v170 & 7) == 0)
        {
          if (v6 == 7)
          {
            v43 = sub_1002A2EC8(v171, v30 * v155, 2);
          }

          else
          {
            if (v6 != 6)
            {
              goto LABEL_76;
            }

            v43 = sub_1002A7F44(v171, v30 * v155);
          }

          v44 = v43;
          v45 = v166;
          if (!v166)
          {
            goto LABEL_194;
          }

          goto LABEL_192;
        }

        if (v21 == 5)
        {
          v39 = v171;
          switch(v6)
          {
            case 4:
              v40 = (v38 - 4);
              if (v38 < 4)
              {
                v41 = 0;
                v42 = 0.0;
                goto LABEL_64;
              }

              if (v40 > 0xB)
              {
                v47 = (v40 >> 2) + 1;
                v46 = 4 * (v47 & 0x3FFFFFFC);
                v48 = (v171 + 32);
                v42 = 0.0;
                v49 = v47 & 0x3FFFFFFC;
                do
                {
                  v50 = v48 - 8;
                  v186 = vld4_f32(v50);
                  v187 = vld4_f32(v48);
                  v51 = vcvtq_f64_f32(v186.val[0]);
                  v52 = vcvtq_f64_f32(v187.val[0]);
                  v53 = vcvtq_f64_f32(v186.val[1]);
                  v54 = vcvtq_f64_f32(v187.val[1]);
                  v55 = vcvtq_f64_f32(v186.val[2]);
                  v56 = vcvtq_f64_f32(v187.val[2]);
                  *v186.val[0].f32 = vcvtq_f64_f32(v186.val[3]);
                  *v186.val[1].f32 = vcvtq_f64_f32(v187.val[3]);
                  *v186.val[2].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v53, v53), v51, v51), v55, v55), *v186.val[0].f32, *v186.val[0].f32);
                  *v186.val[3].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v54, v54), v52, v52), v56, v56), *v186.val[1].f32, *v186.val[1].f32);
                  v42 = v42 + *&v186.val[2] + v57 + *&v186.val[3] + v58;
                  v48 += 16;
                  v49 -= 4;
                }

                while (v49);
                if (v47 == (v47 & 0x3FFFFFFC))
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v46 = 0;
                v42 = 0.0;
              }

              v59 = (v171 + 4 * v46 + 8);
              do
              {
                v60 = *(v59 - 2);
                v61 = *(v59 - 1);
                v62 = *v59;
                v63 = v59[1];
                v59 += 4;
                v42 = v42 + v61 * v61 + v60 * v60 + v62 * v62 + v63 * v63;
                v46 += 4;
              }

              while (v46 <= v40);
LABEL_63:
              v41 = (v40 & 0xFFFFFFFC) + 4;
LABEL_64:
              if (v41 >= v38)
              {
                goto LABEL_215;
              }

              v64 = v41;
              v65 = (~v41 + v38);
              if (v65 > 6)
              {
                v138 = v65 + 1;
                v139 = (v65 + 1) & 0x1FFFFFFF8;
                v66 = v139 + v64;
                v140 = (v171 + 4 * v64 + 16);
                v141 = v139;
                do
                {
                  v142 = *v140[-2].f32;
                  v143 = vcvtq_f64_f32(*v142.f32);
                  v144 = vcvt_hight_f64_f32(v142);
                  v145 = vcvtq_f64_f32(*v140);
                  v146 = vcvt_hight_f64_f32(*v140->f32);
                  v147 = vmulq_f64(v144, v144);
                  v148 = vmulq_f64(v143, v143);
                  v149 = vmulq_f64(v146, v146);
                  v150 = vmulq_f64(v145, v145);
                  v42 = v42 + v148.f64[0] + v148.f64[1] + v147.f64[0] + v147.f64[1] + v150.f64[0] + v150.f64[1] + v149.f64[0] + v149.f64[1];
                  v140 += 4;
                  v141 -= 8;
                }

                while (v141);
                if (v138 == v139)
                {
LABEL_215:
                  v44 = sqrt(v42);
                  v45 = v166;
                  if (v166)
                  {
                    goto LABEL_192;
                  }

                  goto LABEL_194;
                }
              }

              else
              {
                v66 = v64;
              }

              v151 = (v171 + 4 * v66);
              do
              {
                v152 = *v151++;
                v42 = v42 + v152 * v152;
                LODWORD(v66) = v66 + 1;
              }

              while (v38 > v66);
              goto LABEL_215;
            case 5:
              *v158 = 0;
              sub_1002A26AC(v171, 0, v158, v38, 1);
              goto LABEL_56;
            case 2:
              *v158 = 0;
              sub_1002A2A20(v171, 0, v158, v38, 1);
LABEL_56:
              v44 = *v158;
              v45 = v166;
              if (!v166)
              {
                goto LABEL_194;
              }

              goto LABEL_192;
            case 1:
              v67 = 0.0;
              if (v38 >= 1)
              {
                v68 = -(v38 & 0x7FFFFFFF);
                do
                {
                  v69 = *v39++;
                  v70 = fabsf(v69);
                  if (v67 < v70)
                  {
                    v67 = v70;
                  }
                }

                while (!__CFADD__(v68++, 1));
              }

              v44 = fmaxf(v67, 0.0);
              v45 = v166;
              if (v166)
              {
                goto LABEL_192;
              }

              goto LABEL_194;
          }
        }
      }
    }
  }

LABEL_76:
  if (v163)
  {
    if (SDWORD1(v162) >= 3)
    {
      v73 = (v167 + 4);
      v74 = 1;
      v75 = DWORD1(v162) & 0x7FFFFFFE;
      v76 = 1;
      do
      {
        v74 *= *(v73 - 1);
        v76 *= *v73;
        v73 += 2;
        v75 -= 2;
      }

      while (v75);
      v72 = v76 * v74;
      v77 = DWORD1(v162) - (DWORD1(v162) & 0x7FFFFFFE);
      if (v77)
      {
        v78 = &v167[8 * ((DWORD1(v162) >> 1) & 0x3FFFFFFF)];
        do
        {
          v79 = *v78;
          v78 += 4;
          v72 *= v79;
          --v77;
        }

        while (v77);
      }
    }

    else
    {
      v72 = SHIDWORD(v162) * SDWORD2(v162);
    }

    if (DWORD1(v162) && v72 && (v162 & 0xFFF) != 0)
    {
      *v158 = 0uLL;
      qmemcpy(sub_1002A80E0(v158, 32), "mask.empty() || mask.type() == 0", 32);
      sub_1002A8980(-215, v158, "norm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 3253);
    }
  }

  if (v7 != 6)
  {
    v81 = *(&off_100475478[8 * (v6 >> 1)] + v21);
    if (!v81)
    {
      *v158 = 0uLL;
      v82 = sub_1002A80E0(v158, 9);
      *(v82 + 8) = 48;
      *v82 = *"func != 0";
      sub_1002A8980(-215, v158, "norm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/stat.cpp", 3280);
    }

    v183 = &v170;
    v184 = &v162;
    v185 = 0;
    v180 = 0;
    v181 = 0;
    v157[0] = 0.0;
    sub_100267CC8(v158, &v183, &v180, -1);
    v83 = *&v158[40];
    v154 = v6;
    v153 = v21;
    if (v6 == 2 && v21 <= 3)
    {
      v156 = 0;
    }

    else
    {
      v156 = 0;
      if (v7 != 4 || v21 > 1)
      {
        if (*&v158[40] >= 1)
        {
          v130 = -1;
          while (++v130 < *&v158[32])
          {
            v81(v180, v181, v157, v83, v155);
            if (v181)
            {
              v181 = (v181 + (v83 & 0x7FFFFFFF));
            }

            sub_100267D14(v158);
          }

          goto LABEL_178;
        }

LABEL_175:
        v131 = -1;
        while (++v131 < *&v158[32])
        {
          sub_100267D14(v158);
        }

LABEL_178:
        if (v154 != 1)
        {
          v132 = sqrt(v157[0]);
          if (v154 == 4)
          {
            v44 = v132;
          }

          else
          {
            v44 = v157[0];
          }

          v45 = v166;
          if (v166)
          {
            goto LABEL_192;
          }

          goto LABEL_194;
        }

        if (v153 == 5)
        {
          v44 = *v157;
          v45 = v166;
          if (v166)
          {
            goto LABEL_192;
          }

          goto LABEL_194;
        }

        if (v153 == 6)
        {
          v44 = v157[0];
          v45 = v166;
          if (v166)
          {
            goto LABEL_192;
          }

          goto LABEL_194;
        }

        v44 = SLODWORD(v157[0]);
LABEL_191:
        v45 = v166;
        if (!v166)
        {
          goto LABEL_194;
        }

        goto LABEL_192;
      }
    }

    if (v21 < 2 && v6 == 2)
    {
      v85 = 0x800000;
    }

    else
    {
      v85 = 0x8000;
    }

    v86 = v85 / v155;
    if (v86 >= *&v158[40])
    {
      v87 = *&v158[40];
    }

    else
    {
      v87 = v86;
    }

    if (SDWORD1(v170) < 1)
    {
      v88 = 0;
      if (*&v158[40] <= 0)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v88 = v176[DWORD1(v170) - 1];
      if (*&v158[40] <= 0)
      {
        goto LABEL_175;
      }
    }

    v119 = 0;
    v120 = 0;
    v121 = v86 - v87;
    while (v120 < *&v158[32])
    {
      v122 = 0;
      ++v120;
      v123 = v180;
      v124 = v181;
      v125 = v83;
      do
      {
        while (1)
        {
          if (v87 >= v125)
          {
            v126 = v125;
          }

          else
          {
            v126 = v87;
          }

          v81(v123, v124, &v156, v126, v155);
          v119 += v126;
          if (v119 >= v121 || (v87 >= v125 ? (v127 = v125) : (v127 = v87), (v128 = v127 + v122, v120 >= *&v158[32]) ? (v129 = v128 < v83) : (v129 = 1), !v129))
          {
            v119 = 0;
            v157[0] = v157[0] + v156;
            v156 = 0;
          }

          v123 = v180 + v88 * v126;
          v180 = v123;
          if (!v181)
          {
            break;
          }

          v124 = (v181 + v126);
          v181 = v124;
          v122 += v87;
          v125 -= v87;
          if (v122 >= v83)
          {
            goto LABEL_150;
          }
        }

        v124 = 0;
        v122 += v87;
        v125 -= v87;
      }

      while (v122 < v83);
LABEL_150:
      sub_100267D14(v158);
    }

    goto LABEL_178;
  }

  if (v163)
  {
    if (SDWORD1(v162) >= 3)
    {
      v89 = (v167 + 4);
      v90 = 1;
      v91 = DWORD1(v162) & 0x7FFFFFFE;
      v92 = 1;
      do
      {
        v90 *= *(v89 - 1);
        v92 *= *v89;
        v89 += 2;
        v91 -= 2;
      }

      while (v91);
      v80 = v92 * v90;
      v93 = DWORD1(v162) - (DWORD1(v162) & 0x7FFFFFFE);
      if (v93)
      {
        v94 = &v167[8 * ((DWORD1(v162) >> 1) & 0x3FFFFFFF)];
        do
        {
          v95 = *v94;
          v94 += 4;
          v80 *= v95;
          --v93;
        }

        while (v93);
      }
    }

    else
    {
      v80 = SHIDWORD(v162) * SDWORD2(v162);
    }

    if (DWORD1(v162) && v80)
    {
      *v158 = 1124007936;
      memset(&v158[4], 0, 60);
      v159 = &v158[8];
      v160 = v161;
      v161[0] = 0;
      v161[1] = 0;
      v185 = 0;
      LODWORD(v183) = 16842752;
      v184 = &v170;
      v182 = 0;
      LODWORD(v180) = 16842752;
      v181 = &v162;
      LODWORD(v157[0]) = 33619968;
      *&v157[1] = v158;
      v157[2] = 0.0;
      v96 = sub_100276DA4();
      sub_1001D9360(&v183, &v180, v157, v96);
      v185 = 0;
      LODWORD(v183) = 16842752;
      v184 = v158;
      v97 = sub_100276DA4();
      v44 = sub_1002A1748(&v183, v6, v97);
      if (*&v158[56] && atomic_fetch_add((*&v158[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v158);
      }

      *&v158[56] = 0;
      memset(&v158[16], 0, 32);
      if (*&v158[4] >= 1)
      {
        v98 = 0;
        v99 = v159;
        do
        {
          *&v99[4 * v98++] = 0;
        }

        while (v98 < *&v158[4]);
      }

      if (v160 != v161)
      {
        j__free(v160);
      }

      goto LABEL_191;
    }
  }

  v183 = &v170;
  v184 = 0;
  v180 = 0;
  sub_100267CC8(v158, &v183, &v180, -1);
  v100 = 0;
  v101 = 0;
  v102 = *&v158[40];
  v103 = (*&v158[40] - 4);
  while (v101 < *&v158[32])
  {
    if (v6 == 6)
    {
      v104 = sub_1002A7F44(v180, v102);
      goto LABEL_128;
    }

    if (v102 >= 4)
    {
      v106 = 0;
      v104 = 0;
      do
      {
        v104 += byte_1003E5168[*(v180 + v106)] + byte_1003E5168[*(v180 + v106 + 1)] + byte_1003E5168[*(v180 + v106 + 2)] + byte_1003E5168[*(v180 + v106 + 3)];
        v106 += 4;
      }

      while (v106 <= v103);
      v105 = (v103 & 0xFFFFFFFC) + 4;
      if (v105 >= v102)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v105 = 0;
      v104 = 0;
      if (v102 <= 0)
      {
        goto LABEL_128;
      }
    }

    v107 = v105;
    v108 = (~v105 + v102);
    if (!v108)
    {
      v112 = v107;
LABEL_143:
      v117 = (v180 + v112);
      do
      {
        v118 = *v117++;
        v104 += byte_1003E5168[v118];
        LODWORD(v112) = v112 + 1;
      }

      while (v112 < v102);
      goto LABEL_128;
    }

    v109 = 0;
    v110 = v108 + 1;
    v111 = (v108 + 1) & 0x1FFFFFFFELL;
    v112 = v111 + v107;
    v113 = (v180 + v107 + 1);
    v114 = v111;
    do
    {
      v115 = *(v113 - 1);
      v116 = *v113;
      v113 += 2;
      v104 += byte_1003E5168[v115];
      v109 += byte_1003E5168[v116];
      v114 -= 2;
    }

    while (v114);
    v104 += v109;
    if (v110 != v111)
    {
      goto LABEL_143;
    }

LABEL_128:
    v100 += v104;
    ++v101;
    sub_100267D14(v158);
  }

  v44 = v100;
  v45 = v166;
  if (!v166)
  {
    goto LABEL_194;
  }

LABEL_192:
  if (atomic_fetch_add((v45 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v162);
  }

LABEL_194:
  v166 = 0;
  v163 = 0u;
  v164 = 0u;
  if (SDWORD1(v162) >= 1)
  {
    v133 = 0;
    v134 = v167;
    do
    {
      *&v134[4 * v133++] = 0;
    }

    while (v133 < SDWORD1(v162));
  }

  if (v168 != v169)
  {
    j__free(v168);
  }

  if (v174 && atomic_fetch_add((v174 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v170);
  }

  v174 = 0;
  v171 = 0u;
  v172 = 0u;
  if (SDWORD1(v170) >= 1)
  {
    v135 = 0;
    v136 = v175;
    do
    {
      *&v136[4 * v135++] = 0;
    }

    while (v135 < SDWORD1(v170));
  }

  if (v176 != v177)
  {
    j__free(v176);
  }

  if (v179)
  {
    sub_1002ACC1C(v178);
  }

  return v44;
}
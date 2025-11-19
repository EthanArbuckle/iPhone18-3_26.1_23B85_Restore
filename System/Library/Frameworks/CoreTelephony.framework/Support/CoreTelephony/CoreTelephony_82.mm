void sub_10053ED58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053EDA4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_10053EE24(uint64_t a1, void *cf, void *a3, int a4)
{
  if (!cf)
  {
    if (a4)
    {
      v12 = **(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PersonalityInfo::logPrefix(**(a1 + 24));
        v14 = (*(*a1 + 40))(a1);
        *v15 = 136316162;
        *&v15[4] = v13;
        v16 = 2080;
        v17 = " ";
        v18 = 2080;
        v19 = v14;
        v20 = 2080;
        v21 = ", ";
        v22 = 2080;
        v23 = [a3 UTF8String];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", v15, 0x34u);
      }
    }

    return 0;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFNumberGetTypeID())
  {
    if (os_log_type_enabled(**(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017742A0();
    }

    return 0;
  }

  *v15 = 0;
  v8 = CFGetTypeID(cf);
  TypeID = CFNumberGetTypeID();
  result = 0;
  if (v8 == TypeID)
  {
    ctu::cf::assign(v15, cf, v9);
    return *v15;
  }

  return result;
}

unint64_t sub_10053EFE0(uint64_t a1, void *cf, void *a3, int a4)
{
  if (!cf)
  {
    if (a4)
    {
      v13 = **(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = PersonalityInfo::logPrefix(**(a1 + 24));
        v15 = (*(*a1 + 40))(a1);
        *v17 = 136316162;
        *&v17[4] = v14;
        v18 = 2080;
        v19 = " ";
        v20 = 2080;
        v21 = v15;
        v22 = 2080;
        v23 = ", ";
        v24 = 2080;
        v25 = [a3 UTF8String];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", v17, 0x34u);
      }
    }

    goto LABEL_11;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFNumberGetTypeID())
  {
    if (os_log_type_enabled(**(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017742A0();
    }

LABEL_11:
    v12 = 0;
    v11 = 0;
    return v11 | v12;
  }

  *v17 = 0;
  v8 = CFGetTypeID(cf);
  TypeID = CFNumberGetTypeID();
  v11 = 0;
  if (v8 == TypeID)
  {
    ctu::cf::assign(v17, cf, v10);
    v11 = *v17;
  }

  v12 = v11 & 0xFFFFFFFFFFFFFF00;
  v11 = v11;
  return v11 | v12;
}

uint64_t sub_10053F1A8(uint64_t a1, CFTypeRef cf, void *a3, int a4)
{
  if (!cf)
  {
    if (a4)
    {
      v10 = **(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 24));
        v12 = (*(*a1 + 40))(a1);
        v14 = 136316162;
        v15 = v11;
        v16 = 2080;
        v17 = " ";
        v18 = 2080;
        v19 = v12;
        v20 = 2080;
        v21 = ", ";
        v22 = 2080;
        v23 = [a3 UTF8String];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", &v14, 0x34u);
      }
    }

    goto LABEL_9;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFBooleanGetTypeID())
  {
    if (os_log_type_enabled(**(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177435C();
    }

LABEL_9:
    v8 = 0;
    v9 = 0;
    return v8 | (v9 << 8);
  }

  v8 = CFBooleanGetValue(cf) != 0;
  v9 = 1;
  return v8 | (v9 << 8);
}

void sub_10053F344(CFTypeRef cf@<X1>, uint64_t a2@<X0>, void *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  if (cf)
  {
    v10 = CFGetTypeID(cf);
    if (v10 == CFArrayGetTypeID())
    {
      *v17 = cf;
      sub_10053F5B0(a5, v17);
    }

    else if (a4)
    {
      v14 = **(a2 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = PersonalityInfo::logPrefix(**(a2 + 24));
        v16 = (*(*a2 + 40))(a2);
        *v17 = 136316162;
        *&v17[4] = v15;
        v18 = 2080;
        v19 = " ";
        v20 = 2080;
        v21 = v16;
        v22 = 2080;
        v23 = ", ";
        v24 = 2080;
        v25 = [a3 UTF8String];
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#E %s%s%s%selement %s is of wrong format, expected array", v17, 0x34u);
      }
    }
  }

  else if (a4)
  {
    v11 = **(a2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(**(a2 + 24));
      v13 = (*(*a2 + 40))(a2);
      *v17 = 136316162;
      *&v17[4] = v12;
      v18 = 2080;
      v19 = " ";
      v20 = 2080;
      v21 = v13;
      v22 = 2080;
      v23 = ", ";
      v24 = 2080;
      v25 = [a3 UTF8String];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", v17, 0x34u);
    }
  }
}

void sub_10053F584(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    sub_100010250(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053F5B0(uint64_t a1, CFTypeRef *a2)
{
  if (*(a1 + 8) == 1)
  {
    v5 = 0;
    sub_1001FA5E0(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_100010250(&v5);
  }

  else
  {
    sub_1001FA5E0(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

void sub_10053F620(CFTypeRef cf@<X1>, uint64_t a2@<X0>, void *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  if (cf)
  {
    v9 = CFGetTypeID(cf);
    if (v9 == CFDictionaryGetTypeID())
    {
      *v16 = cf;
      sub_10053F884(a5, v16);
    }

    else
    {
      v13 = **(a2 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = PersonalityInfo::logPrefix(**(a2 + 24));
        v15 = (*(*a2 + 40))(a2);
        *v16 = 136316162;
        *&v16[4] = v14;
        v17 = 2080;
        v18 = " ";
        v19 = 2080;
        v20 = v15;
        v21 = 2080;
        v22 = ", ";
        v23 = 2080;
        v24 = [a3 UTF8String];
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#E %s%s%s%selement %s is of wrong format, expected dictionary", v16, 0x34u);
      }
    }
  }

  else if (a4)
  {
    v10 = **(a2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a2 + 24));
      v12 = (*(*a2 + 40))(a2);
      *v16 = 136316162;
      *&v16[4] = v11;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v12;
      v21 = 2080;
      v22 = ", ";
      v23 = 2080;
      v24 = [a3 UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", v16, 0x34u);
    }
  }
}

void sub_10053F858(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    sub_10001021C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053F884(uint64_t a1, CFTypeRef *a2)
{
  if (*(a1 + 8) == 1)
  {
    v5 = 0;
    sub_100010180(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_10001021C(&v5);
  }

  else
  {
    sub_100010180(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

void sub_10053F8F4(uint64_t a1, CFDictionaryRef theDict, void *key, uint64_t *a4)
{
  theArray = 0;
  v60 = 0;
  Value = CFDictionaryGetValue(theDict, key);
  sub_10053F344(Value, a1, key, 0, &theArray);
  if (v60 != 1)
  {
    return;
  }

  v55 = 0uLL;
  v56[0] = 0;
  sub_100540138(a4, &v55);
  *buf = &v55;
  sub_10013DFEC(buf);
  Count = CFArrayGetCount(theArray);
  sub_1005401B8(a4, Count);
  v9 = 0;
  v10 = @"5g-experience";
  v50 = a4;
  while (v9 < CFArrayGetCount(theArray))
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    *v56 = 0u;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
    v12 = ValueAtIndex;
    if (!ValueAtIndex)
    {
      goto LABEL_70;
    }

    v13 = CFGetTypeID(ValueAtIndex);
    if (v13 != CFDictionaryGetTypeID())
    {
      goto LABEL_70;
    }

    v14 = v10;
    *__p = 0u;
    v54 = 0u;
    v15 = CFDictionaryGetValue(v12, @"plan-type");
    sub_10053E1F4(v15, a1, @"plan-type", 0, __p);
    if (BYTE8(v54) == 1)
    {
      if (SBYTE7(v54) < 0)
      {
        if (__p[1] == 7 && *__p[0] == 1702126957 && *(__p[0] + 3) == 1684370021)
        {
          goto LABEL_32;
        }

        if (__p[1] != 9)
        {
          goto LABEL_28;
        }

        v16 = __p[0];
LABEL_18:
        v18 = *v16;
        v19 = *(v16 + 8);
        if (v18 != 0x65726574656D6E75 || v19 != 100)
        {
          goto LABEL_28;
        }

        LODWORD(v55) = 1;
      }

      else
      {
        if (BYTE7(v54) != 7)
        {
          if (BYTE7(v54) != 9)
          {
            goto LABEL_28;
          }

          v16 = __p;
          goto LABEL_18;
        }

        if (LODWORD(__p[0]) != 1702126957 || *(__p + 3) != 1684370021)
        {
LABEL_28:
          v22 = **(a1 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = PersonalityInfo::logPrefix(**(a1 + 24));
            v24 = (*(*a1 + 40))(a1);
            v25 = __p;
            if (SBYTE7(v54) < 0)
            {
              v25 = __p[0];
            }

            *buf = 136316162;
            *&buf[4] = v23;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v62 = v24;
            v63 = 2080;
            v64 = ", ";
            v65 = 2080;
            v66 = v25;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sinvalid plan type received - %s, ignored", buf, 0x34u);
          }

          goto LABEL_34;
        }

LABEL_32:
        LODWORD(v55) = 0;
      }

      BYTE4(v55) = 1;
    }

LABEL_34:
    v10 = v14;
    v26 = CFDictionaryGetValue(v12, v14);
    v27 = sub_10053F1A8(a1, v26, v14, 0);
    if ((v27 & 0x100) != 0)
    {
      WORD4(v55) = v27 & 0x1FF;
    }

    v28 = CFDictionaryGetValue(v12, @"volume-cap");
    v29 = sub_10053E54C(a1, v28, @"volume-cap", 0);
    if ((v29 & 0x100000000) != 0)
    {
      HIDWORD(v55) = v29;
      LOBYTE(v56[0]) = 1;
    }

    v51 = 0;
    v52 = 0;
    v30 = CFDictionaryGetValue(v12, @"supported-rat");
    sub_10053F344(v30, a1, @"supported-rat", 0, &v51);
    if (v52 == 1)
    {
      memset(buf, 0, sizeof(buf));
      sub_1001E9734(&v56[1], buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v31 = 0;
      while (2)
      {
        if (v31 >= CFArrayGetCount(v51))
        {
          a4 = v50;
          if (v56[1] == v57 && v58 == 1)
          {
            if (v56[1])
            {
              *&v57 = v56[1];
              operator delete(v56[1]);
            }

            LOBYTE(v58) = 0;
          }

          break;
        }

        v32 = CFArrayGetValueAtIndex(v51, v31);
        v33 = v32;
        if (v32 && (v34 = CFGetTypeID(v32), v34 == CFStringGetTypeID()))
        {
          if (CFStringCompare(v33, @"mmw", 0))
          {
            if (CFStringCompare(v33, @"sub6", 0))
            {
              v35 = **(a1 + 40);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v36 = PersonalityInfo::logPrefix(**(a1 + 24));
                v37 = (*(*a1 + 40))(a1);
                *buf = 136316162;
                *&buf[4] = v36;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 2080;
                v62 = v37;
                v63 = 2080;
                v64 = ", ";
                v65 = 2112;
                v66 = v33;
                v38 = v35;
                v39 = "#W %s%s%s%sinvalid supported rat received - %@, ignored";
                v40 = 52;
                goto LABEL_51;
              }
            }

            else
            {
              *buf = 1;
              sub_1001FDFFC(&v56[1], buf);
            }
          }

          else
          {
            *buf = 0;
            sub_1001FDFFC(&v56[1], buf);
          }
        }

        else
        {
          v41 = **(a1 + 40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = PersonalityInfo::logPrefix(**(a1 + 24));
            v43 = (*(*a1 + 40))(a1);
            v44 = CFArrayGetValueAtIndex(v51, v31);
            *buf = 136316418;
            *&buf[4] = v42;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v62 = v43;
            v63 = 2080;
            v64 = ", ";
            v65 = 2112;
            v66 = @"sub6";
            v67 = 2112;
            v68 = v44;
            v38 = v41;
            v39 = "#W %s%s%s%sarray %@ has a value of incorrect type: %@";
            v40 = 62;
LABEL_51:
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, buf, v40);
          }
        }

        ++v31;
        v10 = v14;
        continue;
      }
    }

    v45 = CFDictionaryGetValue(v12, @"sa-provisioned");
    v46 = sub_10053F1A8(a1, v45, @"sa-provisioned", 0);
    if ((v46 & 0x100) != 0)
    {
      WORD4(v58) = v46 & 0x1FF;
    }

    v47 = a4[1];
    if (v47 >= a4[2])
    {
      v49 = sub_100553FE8(a4, &v55);
    }

    else
    {
      v48 = v55;
      *(v47 + 16) = v56[0];
      *v47 = v48;
      sub_10017272C(v47 + 24, &v56[1]);
      *(v47 + 56) = WORD4(v58);
      v49 = v47 + 64;
      a4[1] = v47 + 64;
    }

    a4[1] = v49;
    if (v52 == 1)
    {
      sub_100010250(&v51);
    }

    if (BYTE8(v54) == 1 && SBYTE7(v54) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_70:
    if (v58 == 1 && v56[1])
    {
      *&v57 = v56[1];
      operator delete(v56[1]);
    }

    ++v9;
  }

  if (v60)
  {
    sub_100010250(&theArray);
  }
}

void sub_100540048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, const void *a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  sub_10013DFEC(&a39);
  if (a36 == 1)
  {
    sub_100010250(&a35);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100540138(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1001725F0(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void *sub_1005401B8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      sub_100172988(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_100540260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001E9CE4(va);
  _Unwind_Resume(a1);
}

void sub_100540274(uint64_t a1, const __CFDictionary *a2, void *a3, uint64_t a4)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v10;
    v25 = 2080;
    v26 = ", ";
    v27 = 2112;
    v28 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%slooking for KEY:%@", buf, 0x34u);
  }

  *buf = off_101E55B00;
  *&buf[8] = a1;
  *&buf[24] = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  theDict = 0;
  v22 = 0;
  Value = CFDictionaryGetValue(a2, a3);
  sub_10053F620(Value, a1, a3, 1, &theDict);
  if (v22 == 1)
  {
    v12 = CFDictionaryGetValue(theDict, @"alternate-server");
    if (v12)
    {
      v13 = CFGetTypeID(v12);
      if (v13 == CFStringGetTypeID())
      {
        memset(buf, 0, sizeof(buf));
        sub_100540560(a4 + 32, buf);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        memset(buf, 0, 24);
        ctu::cf::assign();
        v14 = *buf;
        v23[0] = *&buf[8];
        *(v23 + 7) = *&buf[15];
        v15 = buf[23];
        if (*(a4 + 55) < 0)
        {
          operator delete(*(a4 + 32));
        }

        v16 = v23[0];
        *(a4 + 32) = v14;
        *(a4 + 40) = v16;
        *(a4 + 47) = *(v23 + 7);
        *(a4 + 55) = v15;
        v17 = CFDictionaryGetValue(theDict, @"use-3gpp-rat");
        v18 = v17;
        if (v17)
        {
          v19 = CFGetTypeID(v17);
          if (v19 == CFBooleanGetTypeID())
          {
            buf[0] = 0;
            ctu::cf::assign(buf, v18, v20);
            *(a4 + 56) = buf[0];
          }
        }
      }
    }
  }

  if (v22 == 1)
  {
    sub_10001021C(&theDict);
  }
}

void sub_100540508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a10 == 1)
  {
    sub_10001021C(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100540560(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_1005405F0(uint64_t a1, const __CFDictionary *a2, void *a3, uint64_t a4)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    buf[0].n128_u32[0] = 136316162;
    *(buf[0].n128_u64 + 4) = v9;
    buf[0].n128_u16[6] = 2080;
    *(&buf[0].n128_u64[1] + 6) = " ";
    buf[1].n128_u16[3] = 2080;
    buf[1].n128_u64[1] = v10;
    buf[2].n128_u16[0] = 2080;
    *(buf[2].n128_u64 + 2) = ", ";
    buf[2].n128_u16[5] = 2112;
    *(&buf[2].n128_u64[1] + 4) = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%slooking for KEY:%@", buf, 0x34u);
  }

  buf[0].n128_u64[0] = off_101E55B80;
  buf[0].n128_u64[1] = a1;
  buf[1].n128_u64[1] = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  theDict = 0;
  v15 = 0;
  Value = CFDictionaryGetValue(a2, a3);
  sub_10053F620(Value, a1, a3, 1, &theDict);
  if (v15 == 1)
  {
    memset(buf, 0, sizeof(buf));
    sub_1005408F0(a4 + 80, buf);
    if (buf[3].n128_u8[8] == 1 && buf[3].n128_i8[7] < 0)
    {
      operator delete(buf[2].n128_u64[0]);
    }

    if (buf[1].n128_u8[8] == 1 && buf[1].n128_i8[7] < 0)
    {
      operator delete(buf[0].n128_u64[0]);
    }

    v12 = CFDictionaryGetValue(theDict, @"service-fqdn");
    sub_10053E1F4(v12, a1, @"service-fqdn", 0, buf);
    sub_10016A270(a4 + 80, buf);
    if (buf[1].n128_u8[8] == 1 && buf[1].n128_i8[7] < 0)
    {
      operator delete(buf[0].n128_u64[0]);
    }

    v13 = CFDictionaryGetValue(theDict, @"vendor-name");
    sub_10053E1F4(v13, a1, @"vendor-name", 0, buf);
    sub_10016A270(a4 + 112, buf);
    if (buf[1].n128_u8[8] == 1 && buf[1].n128_i8[7] < 0)
    {
      operator delete(buf[0].n128_u64[0]);
    }

    if (v15)
    {
      sub_10001021C(&theDict);
    }
  }
}

void sub_100540890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005408F0(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 64) == 1)
  {
    sub_10016A270(a1, a2);
    sub_10016A270(a1 + 32, a2 + 2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (a2[1].n128_u8[8] == 1)
    {
      v4 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = v4;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
      a2->n128_u64[0] = 0;
      *(a1 + 24) = 1;
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    if (a2[3].n128_u8[8] == 1)
    {
      v5 = a2[2];
      *(a1 + 48) = a2[3].n128_u64[0];
      *(a1 + 32) = v5;
      a2[2].n128_u64[1] = 0;
      a2[3].n128_u64[0] = 0;
      a2[2].n128_u64[0] = 0;
      *(a1 + 56) = 1;
    }

    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_1005409BC(uint64_t a1, const __CFDictionary *a2, void *a3, uint64_t a4)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v10;
    *v36 = 2080;
    *&v36[2] = ", ";
    *&v36[10] = 2112;
    *&v36[12] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%slooking for KEY:%@", buf, 0x34u);
  }

  *buf = off_101E55C00;
  *&buf[8] = a1;
  *&buf[24] = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  theDict = 0;
  v34 = 0;
  Value = CFDictionaryGetValue(a2, a3);
  sub_10053F620(Value, a1, a3, 0, &theDict);
  if (v34 == 1)
  {
    *v36 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_100540FB0(a4 + 152, buf);
    if (v36[0] == 1)
    {
      __p[0] = &buf[8];
      sub_1000087B4(__p);
    }

    v31 = 0;
    v32 = 0;
    v12 = CFDictionaryGetValue(theDict, @"service-tier");
    sub_10053F620(v12, a1, @"service-tier", 0, &v31);
    if (v32 != 1)
    {
      goto LABEL_24;
    }

    memset(buf, 0, sizeof(buf));
    sub_10054100C(a4 + 152, buf);
    __p[0] = &buf[8];
    sub_1000087B4(__p);
    v13 = CFDictionaryGetValue(v31, @"tier-id");
    v14 = sub_10053E54C(a1, v13, @"tier-id", 1);
    v15 = v14;
    if ((v14 & 0x100000000) != 0)
    {
      if ((v14 - 5) > 0xFFFFFFFB)
      {
        *(a4 + 152) = v14;
        v19 = CFDictionaryGetValue(v31, @"emergency");
        *(a4 + 156) = sub_10053F1A8(a1, v19, @"emergency", 0);
        v20 = CFDictionaryGetValue(v31, @"voice");
        *(a4 + 158) = sub_10053F1A8(a1, v20, @"voice", 0);
        if (*(a4 + 152) == 3)
        {
          theArray = 0;
          v30 = 0;
          v21 = CFDictionaryGetValue(v31, @"app-categories");
          sub_10053F344(v21, a1, @"app-categories", 0, &theArray);
          if (v30 == 1)
          {
            Count = CFArrayGetCount(theArray);
            if (Count)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
                if (ValueAtIndex)
                {
                  v25 = CFGetTypeID(ValueAtIndex);
                  if (v25 == CFStringGetTypeID())
                  {
                    __p[0] = 0;
                    __p[1] = 0;
                    v28 = 0;
                    memset(buf, 0, 24);
                    ctu::cf::assign();
                    *__p = *buf;
                    v28 = *&buf[16];
                    sub_100005308((a4 + 160), __p);
                    if (SHIBYTE(v28) < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }
                }
              }
            }
          }

          if (v30 == 1)
          {
            sub_100010250(&theArray);
          }
        }

        goto LABEL_24;
      }

      v16 = **(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(**(a1 + 24));
        v18 = (*(*a1 + 40))(a1);
        *buf = 136316418;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        *&buf[24] = v18;
        *v36 = 2080;
        *&v36[2] = ", ";
        *&v36[10] = 2112;
        *&v36[12] = @"tier-id";
        v37 = 1024;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%svalue for key %@ is out of bound: %d", buf, 0x3Au);
      }
    }

    if (*(a4 + 184) == 1)
    {
      *buf = a4 + 160;
      sub_1000087B4(buf);
      *(a4 + 184) = 0;
    }

LABEL_24:
    v26 = CFDictionaryGetValue(theDict, @"allow-carrier-app");
    *(a4 + 192) = sub_10053F1A8(a1, v26, @"allow-carrier-app", 0);
    if (v32)
    {
      sub_10001021C(&v31);
    }

    if (v34)
    {
      sub_10001021C(&theDict);
    }
  }
}

void sub_100540EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, __int16 a17, char a18, char a19, int a20, const void *a21, __int16 a22, char a23, char a24, int a25, const void *a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a17 == 1)
  {
    sub_100010250(&a16);
  }

  if (a22 == 1)
  {
    sub_10001021C(&a21);
  }

  if (a27 == 1)
  {
    sub_10001021C(&a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100540FB0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    sub_1005541C0(a1, a2);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    sub_10055416C(a1, a2);
  }

  return a1;
}

uint64_t sub_10054100C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2 + 1;
  *a1 = *a2;
  if (v4 == 1)
  {
    sub_100071A6C(a1 + 8);
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 24) = a2[3];
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 24) = a2[3];
    *v5 = 0;
    a2[2] = 0;
    a2[3] = 0;
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_1005410A0(CFDictionaryRef theDict@<X2>, uint64_t a2@<X0>, uint64_t a3@<X4>, void *a4@<X8>)
{
  theArray = 0;
  v14 = 0;
  Value = CFDictionaryGetValue(theDict, @"response");
  sub_10053F344(Value, a2, @"response", 0, &theArray);
  if (v14)
  {
    v7 = **(a2 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a2 + 24));
      v9 = (*(*a2 + 40))(a2);
      Count = CFArrayGetCount(theArray);
      buf[0] = 136316162;
      *&buf[1] = v8;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v9;
      v21 = 2080;
      v22 = ", ";
      v23 = 2048;
      v24 = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sthere are %lu entitlement responses", buf, 0x34u);
    }

    v11 = *(*a3 + 8);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    LOBYTE(v15) = 1;
    sub_10055B658();
  }

  *a4 = 0;
  a4[1] = 0;
  if (v14 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_1005417C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, const void *a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a26)
  {
    sub_100004A34(a26);
  }

  if (a9)
  {
    sub_100004A34(a9);
  }

  if (a28 == 1)
  {
    sub_100010250(&a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_100541D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, char a26)
{
  if (a26 == 1)
  {
    sub_100010250(&a25);
  }

  sub_100004A34(a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100541DC8(uint64_t a1, int a2, int *a3, int a4)
{
  v8 = a2;
  v9 = a2;
  v6 = *a3;
  v10 = &v9;
  *(sub_10030C46C(a1, &v9) + 8) = v6;
  v10 = &v8;
  result = sub_10030C46C(a1 + 24, &v8);
  *(result + 8) = a4;
  return result;
}

BOOL sub_100541E50(uint64_t a1, int a2)
{
  if (a2 == 6008)
  {
    v4 = **(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 24));
      v6 = (*(*a1 + 40))(a1);
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = v6;
      v14 = 2080;
      v15 = ", ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smax number of devices reached", &v8, 0x2Au);
    }
  }

  return a2 == 6000;
}

void sub_100542EEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100542FD4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100554274(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

std::string *sub_100543054(std::string *__dst, std::string *__str)
{
  if (__dst[2].__r_.__value_.__s.__data_[8] == 1)
  {
    std::string::operator=(__dst, __str);
    sub_10012BF3C(__dst + 1, __str + 1);
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v4 = *&__str->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v4;
    }

    sub_10006F264(&__dst[1], &__str[1]);
    __dst[2].__r_.__value_.__s.__data_[8] = 1;
  }

  return __dst;
}

void sub_1005430E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1005430FC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v7 = a2;
  sub_10055BA84(a1, a2, a3);
  v8 = &v7;
  result = sub_10030C46C(a1 + 24, &v7);
  *(result + 8) = a4;
  return result;
}

atomic_ullong *sub_100543158@<X0>(CFDictionaryRef theDict@<X2>, uint64_t a2@<X0>, uint64_t *a3@<X1>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v5 = *a3;
  if (!*a3)
  {
    operator new();
  }

  result = a3[1];
  if (result)
  {
    atomic_fetch_add_explicit(result + 1, 1uLL, memory_order_relaxed);
  }

  *a4 = v5;
  a4[1] = result;
  if (theDict)
  {
    result = CFDictionaryGetValue(theDict, @"provisioning-elements");
    v7 = result;
    if (result)
    {
      v8 = CFGetTypeID(result);
      result = CFArrayGetTypeID();
      if (v8 == result)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        result = [(atomic_ullong *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v9 = result;
        if (result)
        {
          v10 = *v21;
          v11 = (v5 + 8);
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v20 + 1) + 8 * v12);
              if (v13)
              {
                v14 = CFGetTypeID(*(*(&v20 + 1) + 8 * v12));
                if (v14 == CFDictionaryGetTypeID())
                {
                  v15 = sub_10053DF9C(a2, v13, @"name");
                  if (v15 != -1)
                  {
                    v16 = *v11;
                    if (!*v11)
                    {
                      goto LABEL_23;
                    }

                    v17 = v5 + 8;
                    do
                    {
                      if (*(v16 + 32) >= v15)
                      {
                        v17 = v16;
                      }

                      v16 = *(v16 + 8 * (*(v16 + 32) < v15));
                    }

                    while (v16);
                    if (v17 == v11 || *(v17 + 32) > v15)
                    {
LABEL_23:
                      v18 = 0;
                      v19 = 0;
                      sub_1003F8470(v5, v15, &v18);
                      if (v19)
                      {
                        sub_100004A34(v19);
                      }
                    }
                  }
                }
              }

              v12 = (v12 + 1);
            }

            while (v12 != v9);
            result = [(atomic_ullong *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
            v9 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

void sub_1005433A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100543FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, const void *a57, __int16 a58, char a59, char a60)
{
  if (a58 == 1)
  {
    sub_100010250(&a57);
  }

  sub_100004A34(a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005440F8(uint64_t a1, int a2, uint64_t *a3, int a4)
{
  v7 = a2;
  sub_1003F8470(a1, a2, a3);
  v8 = &v7;
  result = sub_10030C46C(a1 + 24, &v7);
  *(result + 8) = a4;
  return result;
}

void sub_100544AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v40);
  _Unwind_Resume(a1);
}

void sub_100544F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, char a23)
{
  if (a23 == 1)
  {
    sub_100010250(&a22);
  }

  sub_100004A34(a10);
  _Unwind_Resume(a1);
}

void sub_100545384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, char a23)
{
  if (a23 == 1)
  {
    sub_100010250(&a22);
  }

  sub_100004A34(a10);
  _Unwind_Resume(a1);
}

void *sub_1005453D0(uint64_t a1)
{
  *a1 = off_101E554F8;

  return sub_10053DF3C(a1);
}

const void **sub_100545434@<X0>(CFDictionaryRef theDict@<X2>, const void **a2@<X0>, void *a3@<X8>)
{
  v65 = 0;
  v64 = 0u;
  v62 = 0u;
  memset(v63, 0, sizeof(v63));
  v57 = 0u;
  v55 = 0;
  v56 = &v57;
  v58 = v59;
  v59[0] = 0;
  v60 = v61;
  memset(v61, 0, sizeof(v61));
  v59[1] = 0;
  theDicta = 0;
  Value = CFDictionaryGetValue(theDict, a2[6]);
  sub_10053F620(Value, a2, a2[6], 0, &theDicta);
  if (v55)
  {
    cf = 0;
    v53 = 0;
    v6 = CFDictionaryGetValue(theDicta, a2[7]);
    sub_10053F620(v6, a2, a2[7], 0, &cf);
    if (v53 == 1 && ((v51 = cf) == 0 ? (v7 = 0) : (CFRetain(cf), v7 = v51), (v8 = sub_1005459B8(a2, v7, &v56), sub_10001021C(&v51), (v50 = cf) == 0) ? (v9 = 0) : (CFRetain(cf), v9 = v50), (v10 = sub_100545BF8(a2, v9, &v60), sub_10001021C(&v50), (v49 = cf) == 0) ? (v11 = 0) : (CFRetain(cf), v11 = v49), v12 = v8 | v10 | sub_100545E40(a2, v11, &v58), sub_10001021C(&v49), v12 == 1))
    {
      v13 = v56;
      if (v56 == &v57)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 0.0;
        do
        {
          v15 = v13[6];
          v16 = v15 < v14 || v14 == 0.0;
          if (v16 && v15 != 0.0)
          {
            v14 = v13[6];
          }

          v18 = *(v13 + 1);
          if (v18)
          {
            do
            {
              v19 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v19 = *(v13 + 2);
              v16 = *v19 == v13;
              v13 = v19;
            }

            while (!v16);
          }

          v13 = v19;
        }

        while (v19 != &v57);
      }

      v21 = v60;
      if (v60 != v61)
      {
        do
        {
          v22 = v21[7];
          if ((v22 < v14 || v14 == 0.0) && v22 != 0.0)
          {
            v14 = v21[7];
          }

          v25 = *(v21 + 1);
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = *(v21 + 2);
              v16 = *v26 == v21;
              v21 = v26;
            }

            while (!v16);
          }

          v21 = v26;
        }

        while (v26 != v61);
      }

      v27 = v58;
      if (v58 != v59)
      {
        do
        {
          v28 = v27[9];
          if ((v28 < v14 || v14 == 0.0) && v28 != 0.0)
          {
            v14 = v27[9];
          }

          v31 = *(v27 + 1);
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = *(v27 + 2);
              v16 = *v32 == v27;
              v27 = v32;
            }

            while (!v16);
          }

          v27 = v32;
        }

        while (v32 != v59);
      }

      *(&v64 + 1) = v14;
      sub_10164D2D0(&v56);
      sub_10164D2C4(&v62);
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    v47 = 0;
    v48 = 0;
    v33 = CFDictionaryGetValue(theDicta, a2[8]);
    sub_10053F620(v33, a2, a2[8], 0, &v47);
    if (v48 == 1)
    {
      v46 = v47;
      if (v47)
      {
        CFRetain(v47);
        v34 = v46;
      }

      else
      {
        v34 = 0;
      }

      v35 = sub_100546084(a2, v34, &v62);
      sub_10001021C(&v46);
      v45 = v47;
      if (v47)
      {
        CFRetain(v47);
        v36 = v45;
      }

      else
      {
        v36 = 0;
      }

      v37 = sub_100546374(a2, v36, &v62);
      sub_10001021C(&v45);
      v38 = v47;
      v44 = v47;
      if (v47)
      {
        CFRetain(v47);
      }

      v39 = sub_100546680(a2, v38, &v62);
      sub_10001021C(&v44);
      v40 = v47;
      v43 = v47;
      if (v47)
      {
        CFRetain(v47);
      }

      v41 = v35 | v37 | v39 | sub_100546970(a2, v40, &v62);
      sub_10001021C(&v43);
      if (v41 == 1)
      {
        sub_10164D2C4(&v62);
        goto LABEL_78;
      }
    }

    if (v20)
    {
LABEL_78:
      sub_10055C144();
    }

    *a3 = 0;
    a3[1] = 0;
    if (v48 == 1)
    {
      sub_10001021C(&v47);
    }

    if (v53 == 1)
    {
      sub_10001021C(&cf);
    }

    if (v55)
    {
      sub_10001021C(&theDicta);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  sub_10006DCAC(&v60, v61[0]);
  sub_10006DCAC(&v58, v59[0]);
  sub_10006DCAC(&v56, v57);
  sub_100005978(&v63[1]);
  sub_100005978(v63);
  sub_100005978(&v62 + 1);
  return sub_100005978(&v62);
}

void sub_1005458EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, const void *);
  v17 = va_arg(va3, void);
  va_copy(va4, va3);
  v18 = va_arg(va4, const void *);
  v20 = va_arg(va4, void);
  sub_10001021C(va);
  if (v11 == 1)
  {
    sub_10001021C(va1);
  }

  if (v17 == 1)
  {
    sub_10001021C(va2);
  }

  if (v20 == 1)
  {
    sub_10001021C(va3);
  }

  sub_100556AA8(va4);
  sub_1003EDA14((v2 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_1005459B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"voice"];
  if (v5 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v18 = 0x100000001uLL;
        v17 = 0;
        result = sub_1005546AC(a1, v11, &v18, &v17);
        if (!result)
        {
          break;
        }

        *buf = v17;
        *&v25[4] = v18;
        sub_100554E28(a3, buf);
        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
          result = 1;
          if (v8)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v13 = **(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v14)
    {
      v15 = PersonalityInfo::logPrefix(**(a1 + 24));
      v16 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *v25 = v15;
      *&v25[8] = 2080;
      *&v25[10] = " ";
      *&v25[18] = 2080;
      v26 = v16;
      v27 = 2080;
      v28 = ", ";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived invalid voice usage information/array, skipping parsing", buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100545BF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"data"];
  if (v5 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v19 = 0;
        v18 = 0x100000001uLL;
        v17 = 0;
        result = sub_100554EFC(a1, v11, &v18, &v17);
        if (!result)
        {
          break;
        }

        *buf = v17;
        *&v26[4] = v18;
        v27 = v19;
        sub_1005555B4(a3, buf);
        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
          result = 1;
          if (v8)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v13 = **(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v14)
    {
      v15 = PersonalityInfo::logPrefix(**(a1 + 24));
      v16 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *v26 = v15;
      *&v26[8] = 2080;
      *&v26[10] = " ";
      *&v26[18] = 2080;
      v27 = v16;
      v28 = 2080;
      v29 = ", ";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived invalid data usage information/array, skipping parsing", buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100545E40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"message"];
  if (v5 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        *&v12 = 0x100000001;
        *(&v12 + 1) = 0x100000001;
        v19 = v12;
        v20 = v12;
        v21 = 0;
        v18 = 0;
        result = sub_100555690(a1, v11, &v19, &v18);
        if (!result)
        {
          break;
        }

        *buf = v18;
        *&v27[4] = v19;
        *v28 = v20;
        *&v28[16] = v21;
        sub_10055617C(a3, buf);
        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
          result = 1;
          if (v8)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v14 = **(a1 + 40);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v15)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 24));
      v17 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *v27 = v16;
      *&v27[8] = 2080;
      *&v27[10] = " ";
      *&v27[18] = 2080;
      *v28 = v17;
      *&v28[8] = 2080;
      *&v28[10] = ", ";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived invalid message usage information/array, skipping parsing", buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100546084(uint64_t a1, void *a2, const void **a3)
{
  v5 = [a2 objectForKey:@"voice"];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = **(a1 + 40);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v12)
    {
      return result;
    }

    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v13;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v14;
    v25 = 2080;
    v26 = ", ";
    v15 = "#I %s%s%s%sReceived invalid voice subscription information, skipping parsing";
    goto LABEL_10;
  }

  v7 = **(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 24));
    v9 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v8;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v9;
    v25 = 2080;
    v26 = ", ";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived voice subscription information", buf, 0x2Au);
  }

  v18 = 0;
  v19 = 0;
  result = sub_100556260(a1, v6, &v19, &v18);
  if (result)
  {
    if (sub_10164D174(a3, v19))
    {
      *buf = v18;
      sub_10021D11C(a3, buf);
      return 1;
    }

    v11 = **(a1 + 40);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 24));
      v17 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *&buf[4] = v16;
      v21 = 2080;
      v22 = " ";
      v23 = 2080;
      v24 = v17;
      v25 = 2080;
      v26 = ", ";
      v15 = "#I %s%s%s%sUnable to parse voice subscription status";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v15, buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100546374(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"data"];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = **(a1 + 40);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v12)
    {
      return result;
    }

    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v13;
    v22 = 2080;
    v23 = " ";
    v24 = 2080;
    v25 = v14;
    v26 = 2080;
    v27 = ", ";
    v15 = "#I %s%s%s%sReceived invalid data subscription information, skipping parsing";
    goto LABEL_10;
  }

  v7 = **(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 24));
    v9 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v8;
    v22 = 2080;
    v23 = " ";
    v24 = 2080;
    v25 = v9;
    v26 = 2080;
    v27 = ", ";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived data subscription information", buf, 0x2Au);
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  result = sub_10055663C(a1, v6, &v20, &v19, &v18);
  if (result)
  {
    if (sub_10164D24C(a3, v20))
    {
      *buf = v19;
      sub_10021D11C((a3 + 8), buf);
      *buf = v18;
      sub_10021D11C((a3 + 16), buf);
      return 1;
    }

    v11 = **(a1 + 40);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 24));
      v17 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *&buf[4] = v16;
      v22 = 2080;
      v23 = " ";
      v24 = 2080;
      v25 = v17;
      v26 = 2080;
      v27 = ", ";
      v15 = "#I %s%s%s%sUnable to parse data subscription status";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v15, buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100546680(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"message"];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = **(a1 + 40);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v12)
    {
      return result;
    }

    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v13;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v14;
    v25 = 2080;
    v26 = ", ";
    v15 = "#I %s%s%s%sReceived invalid message subscription information, skipping parsing";
    goto LABEL_10;
  }

  v7 = **(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 24));
    v9 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v8;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v9;
    v25 = 2080;
    v26 = ", ";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived message subscription information", buf, 0x2Au);
  }

  v18 = 0;
  v19 = 0;
  result = sub_100556260(a1, v6, &v19, &v18);
  if (result)
  {
    if (sub_10164D288(a3, v19))
    {
      *buf = v18;
      sub_10021D11C((a3 + 24), buf);
      return 1;
    }

    v11 = **(a1 + 40);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 24));
      v17 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *&buf[4] = v16;
      v21 = 2080;
      v22 = " ";
      v23 = 2080;
      v24 = v17;
      v25 = 2080;
      v26 = ", ";
      v15 = "#I %s%s%s%sUnable to parse message subscription status";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v15, buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100546970(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"account-info"];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = **(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(**(a1 + 24));
        v9 = (*(*a1 + 40))(a1);
        *buf = 136315906;
        v44 = v8;
        v45 = 2080;
        v46 = " ";
        v47 = 2080;
        v48 = v9;
        v49 = 2080;
        v50 = ", ";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived account subscription information", buf, 0x2Au);
      }

      v10 = [v6 objectForKey:@"stacking"];
      if (v10)
      {
        v11 = v10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 isEqualToString:@"yes"])
          {
            v12 = *(a3 + 36);
LABEL_13:
            v19 = v12 | 0x10;
LABEL_17:
            *(a3 + 36) = v19;
            goto LABEL_23;
          }

          if ([v11 isEqualToString:@"no"])
          {
            v12 = *(a3 + 36);
            goto LABEL_16;
          }

          v20 = **(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v24 = PersonalityInfo::logPrefix(**(a1 + 24));
            v25 = (*(*a1 + 40))(a1);
            *buf = 136315906;
            v44 = v24;
            v45 = 2080;
            v46 = " ";
            v47 = 2080;
            v48 = v25;
            v49 = 2080;
            v50 = ", ";
            v23 = "#W %s%s%s%sstacking has invalid string";
            goto LABEL_22;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v11 BOOLValue];
            v12 = *(a3 + 36);
            if (v18)
            {
              goto LABEL_13;
            }

LABEL_16:
            v19 = v12 | 0x20;
            goto LABEL_17;
          }

          v20 = **(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = PersonalityInfo::logPrefix(**(a1 + 24));
            v22 = (*(*a1 + 40))(a1);
            *buf = 136315906;
            v44 = v21;
            v45 = 2080;
            v46 = " ";
            v47 = 2080;
            v48 = v22;
            v49 = 2080;
            v50 = ", ";
            v23 = "#W %s%s%s%sunable to parse stacking info";
LABEL_22:
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v23, buf, 0x2Au);
          }
        }
      }

LABEL_23:
      v26 = [v6 objectForKey:@"auto-renew"];
      if (!v26)
      {
        goto LABEL_39;
      }

      v27 = v26;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v27 isEqualToString:@"yes"])
        {
          v28 = *(a3 + 36);
LABEL_29:
          v30 = v28 | 4;
LABEL_33:
          *(a3 + 36) = v30;
          goto LABEL_39;
        }

        if ([v27 isEqualToString:@"no"])
        {
          v28 = *(a3 + 36);
          goto LABEL_32;
        }

        v31 = **(a1 + 40);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v35 = PersonalityInfo::logPrefix(**(a1 + 24));
          v36 = (*(*a1 + 40))(a1);
          *buf = 136315906;
          v44 = v35;
          v45 = 2080;
          v46 = " ";
          v47 = 2080;
          v48 = v36;
          v49 = 2080;
          v50 = ", ";
          v34 = "#W %s%s%s%sauto-renew has invalid string";
          goto LABEL_38;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = [v27 BOOLValue];
          v28 = *(a3 + 36);
          if (v29)
          {
            goto LABEL_29;
          }

LABEL_32:
          v30 = v28 | 8;
          goto LABEL_33;
        }

        v31 = **(a1 + 40);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = PersonalityInfo::logPrefix(**(a1 + 24));
          v33 = (*(*a1 + 40))(a1);
          *buf = 136315906;
          v44 = v32;
          v45 = 2080;
          v46 = " ";
          v47 = 2080;
          v48 = v33;
          v49 = 2080;
          v50 = ", ";
          v34 = "#W %s%s%s%sunable to parse auto-renew info";
LABEL_38:
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v34, buf, 0x2Au);
        }
      }

LABEL_39:
      sub_100556878(a1, v6, a3);
      v41 = 0;
      v42 = 0;
      if (sub_100554B98(a1, v6, @"billing-cycle-start-date", &v42) && sub_100554B98(a1, v6, @"billing-cycle-end-date", &v41))
      {
        v37 = v41;
        *(a3 + 40) = v42;
        *(a3 + 48) = v37;
        v38 = **(a1 + 40);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = PersonalityInfo::logPrefix(**(a1 + 24));
          v40 = (*(*a1 + 40))(a1);
          *buf = 136316418;
          v44 = v39;
          v45 = 2080;
          v46 = " ";
          v47 = 2080;
          v48 = v40;
          v49 = 2080;
          v50 = ", ";
          v51 = 2048;
          v52 = v42;
          v53 = 2048;
          v54 = v41;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived billing start time: %f and billing end time: %f", buf, 0x3Eu);
        }
      }

      return 1;
    }
  }

  v13 = **(a1 + 40);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v14)
  {
    v16 = PersonalityInfo::logPrefix(**(a1 + 24));
    v17 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    v44 = v16;
    v45 = 2080;
    v46 = " ";
    v47 = 2080;
    v48 = v17;
    v49 = 2080;
    v50 = ", ";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived invalid account subscription information, skipping parsing", buf, 0x2Au);
    return 0;
  }

  return result;
}

void sub_1005476AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (v34 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  if (a29 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  sub_100004A34(v33);
  _Unwind_Resume(a1);
}

void sub_100547750(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_1004FB0D8();
}

void sub_100548088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  v28 = *(v26 + 8);
  if (v28)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_1005481C8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_1004FB0D8();
}

void sub_100548B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  v28 = *(v26 + 8);
  if (v28)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_100548F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, __int16 a37, char a38, char a39)
{
  if (a37 == 1)
  {
    sub_100010250(&a36);
  }

  sub_100004A34(a10);
  _Unwind_Resume(a1);
}

void sub_100549248(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v43 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v43)
  {
    v5 = **(v4 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(v4 + 24));
      v7 = (*(*v4 + 40))(v4);
      Count = CFArrayGetCount(theArray);
      *buf = 136316162;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v7;
      LOWORD(v46[0]) = 2080;
      *(v46 + 2) = ", ";
      WORD1(v46[1]) = 2048;
      *(&v46[1] + 4) = Count;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of paired devices: %lu", buf, 0x34u);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = theArray;
    v9 = [(__CFArray *)theArray countByEnumeratingWithState:&v38 objects:v55 count:16];
    if (v9)
    {
      v10 = @"eid";
      v31 = *v39;
      v11 = @"meid";
      v12 = @"iccid";
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v13 = v4;
          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = v10;
          v16 = [v14 objectForKey:v10];
          v17 = [v14 objectForKey:@"imei"];
          v18 = v11;
          v19 = [v14 objectForKey:v11];
          v20 = v12;
          v21 = [v14 objectForKey:v12];
          cf = [v14 objectForKey:@"activation-status"];
          v22 = [v14 objectForKey:@"alt-smdp-fqdn"];
          *v53 = 0u;
          v54 = 0u;
          *v51 = 0u;
          v52 = 0u;
          *v49 = 0u;
          v50 = 0u;
          *v47 = 0u;
          v48 = 0u;
          memset(v46, 0, sizeof(v46));
          memset(buf, 0, sizeof(buf));
          v23 = v16;
          v10 = v15;
          sub_10053E1F4(v23, v13, v15, 0, &__p);
          sub_10016A270(buf, &__p);
          if (v37 == 1 && SHIBYTE(v36) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v4 = v13;
          sub_10053E1F4(v17, v13, @"imei", 0, &__p);
          sub_10016A270(v46, &__p);
          if (v37 == 1 && SHIBYTE(v36) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v24 = v19;
          v11 = v18;
          sub_10053E1F4(v24, v13, v18, 0, &__p);
          sub_10016A270(v47, &__p);
          if (v37 == 1 && SHIBYTE(v36) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v25 = v21;
          v12 = v20;
          sub_10053E1F4(v25, v13, v20, 0, &__p);
          sub_10016A270(v49, &__p);
          if (v37 == 1 && SHIBYTE(v36) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          if (BYTE8(v50) == 1)
          {
            v26 = SBYTE7(v50);
            if ((SBYTE7(v50) & 0x8000000000000000) == 0)
            {
              if (SBYTE7(v50) > 0x12)
              {
                goto LABEL_27;
              }

LABEL_26:
              std::string::append(v49, 19 - v26, 102);
              goto LABEL_27;
            }

            v26 = v49[1];
            if (v49[1] < 0x13)
            {
              goto LABEL_26;
            }
          }

LABEL_27:
          sub_10053E1F4(cf, v13, @"activation-status", 0, &__p);
          sub_10016A270(v51, &__p);
          if (v37 == 1 && SHIBYTE(v36) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_10053E1F4(v22, v13, @"alt-smdp-fqdn", 0, &__p);
          sub_10016A270(v53, &__p);
          if (v37 == 1 && SHIBYTE(v36) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v27 = a4;
          if ((*(a4 + 24) & 1) == 0)
          {
            __p = 0uLL;
            v36 = 0;
            sub_100556AF0(a4, &__p);
            p_p = &__p;
            sub_100556BD0(&p_p);
            v27 = a4;
          }

          v28 = v27[1];
          if (v28 >= v27[2])
          {
            v29 = sub_100556C54(v27, buf);
          }

          else
          {
            sub_100556D84(v27[1], buf);
            v29 = v28 + 192;
          }

          *(a4 + 8) = v29;
          if (BYTE8(v54) == 1 && SBYTE7(v54) < 0)
          {
            operator delete(v53[0]);
          }

          if (BYTE8(v52) == 1 && SBYTE7(v52) < 0)
          {
            operator delete(v51[0]);
          }

          if (BYTE8(v50) == 1 && SBYTE7(v50) < 0)
          {
            operator delete(v49[0]);
          }

          if (BYTE8(v48) == 1 && SBYTE7(v48) < 0)
          {
            operator delete(v47[0]);
          }

          if (LOBYTE(v46[3]) == 1 && SHIBYTE(v46[2]) < 0)
          {
            operator delete(v46[0]);
          }

          if (buf[24] == 1 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v9 = [(__CFArray *)obj countByEnumeratingWithState:&v38 objects:v55 count:16];
      }

      while (v9);
    }
  }

  if (v43 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_100549800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33)
{
  if (a29 == 1)
  {
    sub_100010250(&a28);
  }

  if (*(a13 + 24) == 1)
  {
    a33 = a13;
    sub_100556BD0(&a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005498DC(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v44 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v44)
  {
    v4 = **(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 24));
      v6 = (*(*a1 + 40))(a1);
      Count = CFArrayGetCount(theArray);
      *buf = 136316162;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v6;
      LOWORD(v47[0]) = 2080;
      *(v47 + 2) = ", ";
      WORD5(v47[0]) = 2048;
      *(v47 + 12) = Count;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of subscription states: %lu", buf, 0x34u);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = theArray;
    v8 = [(__CFArray *)theArray countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v8)
    {
      v30 = *v40;
      v9 = @"imei";
      v10 = @"iccid";
      do
      {
        v11 = 0;
        v31 = v8;
        do
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v39 + 1) + 8 * v11);
          v13 = [v12 objectForKey:@"eid"];
          v14 = v9;
          v15 = [v12 objectForKey:v9];
          v16 = v10;
          v17 = [v12 objectForKey:v10];
          v18 = [v12 objectForKey:@"activation-status"];
          v19 = [v12 objectForKey:@"associated-subscription"];
          v20 = [v12 objectForKey:@"activated-by"];
          cf = [v12 objectForKey:@"alt-smdp-fqdn"];
          v32 = [v12 objectForKey:@"manage-account-url"];
          v21 = [v12 objectForKey:@"manage-account-url-post-data"];
          v51 = 0;
          memset(v50, 0, sizeof(v50));
          v48 = 0u;
          v49 = 0u;
          memset(v47, 0, sizeof(v47));
          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(v13, a1, @"eid", 0, &__p);
          sub_10016A270(buf, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v22 = v15;
          v9 = v14;
          sub_10053E1F4(v22, a1, v14, 0, &__p);
          sub_10016A270(v47, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v23 = v17;
          v10 = v16;
          sub_10053E1F4(v23, a1, v16, 0, &__p);
          sub_10016A270(&v48, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          if (BYTE8(v49) == 1)
          {
            v24 = SBYTE7(v49);
            if ((SBYTE7(v49) & 0x8000000000000000) == 0)
            {
              if (SBYTE7(v49) > 0x12)
              {
                goto LABEL_24;
              }

LABEL_23:
              std::string::append(&v48, 19 - v24, 102);
              goto LABEL_24;
            }

            v24 = *(&v48 + 1);
            if (*(&v48 + 1) < 0x13uLL)
            {
              goto LABEL_23;
            }
          }

LABEL_24:
          sub_10053E1F4(v18, a1, @"activation-status", 0, &__p);
          sub_10016A270(v50, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v25 = sub_10053E54C(a1, v19, @"associated-subscription", 0);
          if (BYTE4(v50[2]) == BYTE4(v25))
          {
            if (BYTE4(v50[2]))
            {
              LODWORD(v50[2]) = v25;
            }
          }

          else if (BYTE4(v50[2]))
          {
            BYTE4(v50[2]) = 0;
          }

          else
          {
            LODWORD(v50[2]) = v25;
            BYTE4(v50[2]) = 1;
          }

          sub_10053E1F4(v20, a1, @"activated-by", 0, &__p);
          sub_10016A270(&v50[2] + 8, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_10053E1F4(cf, a1, @"alt-smdp-fqdn", 0, &__p);
          sub_10016A270(&v50[4] + 8, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_10053E1F4(v32, a1, @"manage-account-url", 0, &__p);
          sub_10016A270(&v50[6] + 8, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_10053E1F4(v21, a1, @"manage-account-url-post-data", 0, &__p);
          sub_10016A270(&v50[8] + 8, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v26 = a4;
          if ((*(a4 + 24) & 1) == 0)
          {
            __p = 0uLL;
            v37 = 0;
            sub_100557250(a4, &__p);
            p_p = &__p;
            sub_100557330(&p_p);
            v26 = a4;
          }

          v27 = v26[1];
          if (v27 >= v26[2])
          {
            v28 = sub_1005573B4(v26, buf);
          }

          else
          {
            sub_1005574FC(v26[1], buf);
            v28 = v27 + 264;
          }

          *(a4 + 8) = v28;
          sub_100557938(buf);
          v11 = v11 + 1;
        }

        while (v31 != v11);
        v8 = [(__CFArray *)obj countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v8);
    }
  }

  if (v44 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_100549F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35)
{
  if (a31 == 1)
  {
    sub_100010250(&a30);
  }

  if (*(a15 + 24) == 1)
  {
    a35 = a15;
    sub_100557330(&a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_100549FFC(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v54 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v54)
  {
    v43 = a1;
    v5 = **(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(*v43[3]);
      v7 = ((*v43)[5])(v43);
      Count = CFArrayGetCount(theArray);
      *buf = 136316162;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v7;
      LOWORD(v57[0]) = 2080;
      *(v57 + 2) = ", ";
      WORD1(v57[1]) = 2048;
      *(&v57[1] + 4) = Count;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of available add on data plans: %lu", buf, 0x34u);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = theArray;
    v9 = [(__CFArray *)theArray countByEnumeratingWithState:&v49 objects:v64 count:16];
    if (v9)
    {
      v10 = @"plan-cost";
      v38 = *v50;
      v11 = @"plan-currency";
      v12 = @"plan-data-amount";
      v13 = @"plan-data-measure-unit";
      do
      {
        v45 = 0;
        v39 = v9;
        do
        {
          if (*v50 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v49 + 1) + 8 * v45);
          v15 = [v14 objectForKey:@"plan-carrier"];
          v16 = v10;
          v17 = [v14 objectForKey:v10];
          v18 = v11;
          v19 = [v14 objectForKey:v11];
          v20 = v12;
          v21 = [v14 objectForKey:v12];
          v22 = v13;
          v23 = [v14 objectForKey:v13];
          cf = [v14 objectForKey:@"plan-id"];
          v41 = [v14 objectForKey:@"plan-name"];
          v40 = [v14 objectForKey:@"plan-type"];
          v24 = [v14 objectForKey:@"plan-purchase-type"];
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          *v61 = 0u;
          *v58 = 0u;
          v59 = 0u;
          memset(v57, 0, sizeof(v57));
          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(v15, v43, @"plan-carrier", 0, &__p);
          sub_10016A270(&v58[1], &__p);
          if (v48 == 1 && SHIBYTE(v47) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v25 = v17;
          v10 = v16;
          v26 = sub_10053E54C(v43, v25, v16, 0);
          DWORD2(v60) = v26;
          BYTE12(v60) = BYTE4(v26);
          v27 = v19;
          v11 = v18;
          sub_10053E1F4(v27, v43, v18, 0, &__p);
          sub_10016A270(v61, &__p);
          if (v48 == 1 && SHIBYTE(v47) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v28 = v21;
          v12 = v20;
          v29 = sub_10053E54C(v43, v28, v20, 0);
          LODWORD(v63) = v29;
          BYTE4(v63) = BYTE4(v29);
          v30 = v23;
          v13 = v22;
          v31 = sub_10053E54C(v43, v30, v22, 0);
          if (BYTE9(v63) == BYTE4(v31))
          {
            if (BYTE9(v63))
            {
              BYTE8(v63) = v31;
            }
          }

          else if (BYTE9(v63))
          {
            BYTE9(v63) = 0;
          }

          else
          {
            BYTE8(v63) = v31;
            BYTE9(v63) = 1;
          }

          sub_10053E1F4(cf, v43, @"plan-id", 0, &__p);
          sub_10016A270(buf, &__p);
          if (v48 == 1 && SHIBYTE(v47) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_10053E1F4(v41, v43, @"plan-name", 0, &__p);
          sub_10016A270(v57, &__p);
          if (v48 == 1 && SHIBYTE(v47) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v32 = sub_10053E54C(v43, v40, @"plan-type", 0);
          if (BYTE11(v63) == BYTE4(v32))
          {
            if (BYTE11(v63))
            {
              BYTE10(v63) = v32;
            }
          }

          else if (BYTE11(v63))
          {
            BYTE11(v63) = 0;
          }

          else
          {
            BYTE10(v63) = v32;
            BYTE11(v63) = 1;
          }

          v33 = sub_10053E54C(v43, v24, @"plan-purchase-type", 0);
          if (BYTE1(v58[0]) == BYTE4(v33))
          {
            if (BYTE1(v58[0]))
            {
              LOBYTE(v58[0]) = v33;
            }
          }

          else if (BYTE1(v58[0]))
          {
            BYTE1(v58[0]) = 0;
          }

          else
          {
            LOBYTE(v58[0]) = v33;
            BYTE1(v58[0]) = 1;
          }

          v34 = a4;
          if ((*(a4 + 24) & 1) == 0)
          {
            __p = 0uLL;
            v47 = 0;
            sub_100557AE0(a4, &__p);
            p_p = &__p;
            sub_100557C9C(&p_p);
            v34 = a4;
          }

          v35 = v34[1];
          if (v35 >= v34[2])
          {
            v36 = sub_100557CF0(v34, buf);
          }

          else
          {
            sub_100557E20(v34[1], buf);
            v36 = v35 + 160;
          }

          *(a4 + 8) = v36;
          if (BYTE8(v62) == 1 && SBYTE7(v62) < 0)
          {
            operator delete(v61[0]);
          }

          if (v60 == 1 && SHIBYTE(v59) < 0)
          {
            operator delete(v58[1]);
          }

          if (LOBYTE(v57[3]) == 1 && SHIBYTE(v57[2]) < 0)
          {
            operator delete(v57[0]);
          }

          if (buf[24] == 1 && buf[23] < 0)
          {
            operator delete(*buf);
          }

          v45 = v45 + 1;
        }

        while (v39 != v45);
        v9 = [(__CFArray *)obj countByEnumeratingWithState:&v49 objects:v64 count:16];
      }

      while (v9);
    }
  }

  if (v54 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10054A618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a33 == 1)
  {
    sub_100010250(&a32);
  }

  if (*(a17 + 24) == 1)
  {
    a37 = a17;
    sub_100557C9C(&a37);
  }

  _Unwind_Resume(exception_object);
}

void sub_10054A980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v27 - 56) == 1 && *(v27 - 57) < 0)
  {
    operator delete(*(v27 - 80));
  }

  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void sub_10054AB40(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_10054AC9C(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

BOOL sub_10054ACC0(uint64_t a1, int a2)
{
  if (a2 != 6013)
  {
    return a2 == 6000;
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    v7 = 136315906;
    v8 = v4;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v5;
    v13 = 2080;
    v14 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%stransfer SIM response redirecting to websheet", &v7, 0x2Au);
  }

  return 1;
}

void sub_10054BC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (*(v35 + 8))
  {
    sub_100004A34(*(v35 + 8));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10054BD4C(uint64_t a1, int a2)
{
  if (a2 != 6013)
  {
    return a2 == 6000;
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    v7 = 136315906;
    v8 = v4;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v5;
    v13 = 2080;
    v14 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%stransfer authorization response redirecting to webservice", &v7, 0x2Au);
  }

  return 1;
}

void sub_10054DD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  v38 = *(a10 + 8);
  if (v38)
  {
    sub_100004A34(v38);
  }

  _Unwind_Resume(exception_object);
}

void sub_10054E4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, const void *a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, const void *a33, __int16 a34, char a35, char a36, int a37, const void *a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  *(v48 - 144) = &a28;
  sub_1003EA960((v48 - 144));
  if (a11 == 1)
  {
    sub_100010250(&a10);
  }

  if (a20 == 1)
  {
    sub_100010250(&a19);
  }

  if (a34 == 1)
  {
    sub_100010250(&a33);
  }

  if (a39 == 1)
  {
    sub_10001021C(&a38);
  }

  sub_100004A34(v47);
  _Unwind_Resume(a1);
}

BOOL sub_10054E604(uint64_t a1, id *a2, uint64_t *a3)
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = *a2;
  v4 = [*a2 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v26 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 objectForKey:@"plmn"];
          if (v8)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = [v8 objectForKey:@"mcc"];
              if (v9)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v10 = [v8 objectForKey:@"mnc"];
                  if (v10)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v11 = [v7 objectForKey:@"rat-mask"];
                      if (v11)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v12 = [v7 objectForKey:@"priority"];
                          if (v12)
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              memset(&__str, 0, sizeof(__str));
                              sub_10000501C(&__str, [v9 cStringUsingEncoding:4]);
                              memset(&__p, 0, sizeof(__p));
                              sub_10000501C(&__p, [v10 cStringUsingEncoding:4]);
                              v13 = [v11 unsignedIntValue];
                              v14 = [v12 unsignedIntValue];
                              v23 = 0;
                              v22 = 0u;
                              memset(v21, 0, sizeof(v21));
                              std::string::operator=(v21, &__str);
                              sub_1001696A4(&v21[24], &__p);
                              v20 = 0;
                              v18 = 0u;
                              v19 = 0u;
                              memset(v17, 0, sizeof(v17));
                              std::string::operator=(v17, v21);
                              sub_10012BF3C(&v17[24], &v21[24]);
                              *(&v19 + 1) = __PAIR64__(v14, v13);
                              LOBYTE(v20) = 1;
                              sub_100558364(a3, v17);
                              if (v19 == 1 && SHIBYTE(v18) < 0)
                              {
                                operator delete(*&v17[24]);
                              }

                              if ((v17[23] & 0x80000000) != 0)
                              {
                                operator delete(*v17);
                              }

                              if (v23 == 1 && SHIBYTE(v22) < 0)
                              {
                                operator delete(*&v21[24]);
                              }

                              if ((v21[23] & 0x80000000) != 0)
                              {
                                operator delete(*v21);
                              }

                              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__p.__r_.__value_.__l.__data_);
                              }

                              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__str.__r_.__value_.__l.__data_);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  return *a3 != a3[1];
}

void sub_10054E96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10054E9CC(uint64_t a1, std::string **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1003EC314(a1, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1003EA67C(a1, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_10054F0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 1)
  {
    sub_100010250(&a30);
  }

  sub_100004A34(v37);
  _Unwind_Resume(a1);
}

uint64_t sub_10054F178(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1005587E0(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_10055099C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (LOBYTE(STACK[0x4D0]) == 1)
  {
    sub_100010250(&STACK[0x4C8]);
  }

  if (LOBYTE(STACK[0x2B8]) == 1)
  {
    sub_100010250(&STACK[0x2B0]);
  }

  v13 = *(a12 + 8);
  if (v13)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100550BFC(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100558F08(a1, a2);
  }

  else
  {
    sub_100558E58(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100550C3C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100559094(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0;
    *(v3 + 1) = *(a2 + 8);
    v3[3] = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = (v3 + 4);
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100550CA0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1005593DC(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void sub_1005514B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, const void *a57, __int16 a58)
{
  if (a58 == 1)
  {
    sub_100010250(&a57);
  }

  sub_100004A34(a9);
  _Unwind_Resume(a1);
}

void sub_1005515DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 == 1 && a31 < 0)
  {
    operator delete(a26);
  }

  JUMPOUT(0x10055155CLL);
}

uint64_t sub_100551610(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1005595A4(a1, a2);
  }

  else
  {
    sub_100559534(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100551650(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10055994C(a1, a2);
  }

  else
  {
    sub_10055985C(a1, a2);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

void sub_100551AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a31 == 1)
  {
    sub_100010250(&a30);
  }

  sub_100004A34(v39);
  _Unwind_Resume(a1);
}

void sub_1005523A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, const void *a55, __int16 a56)
{
  if (a56 == 1)
  {
    sub_100010250(&a55);
  }

  sub_100004A34(a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005524EC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10055A0C8(a1, a2);
  }

  else
  {
    sub_100559FC4(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1005525EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) objectEnumerator];
  if (v3 && (v4 = v3, v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, (v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16]) != 0))
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) bootstrapDataAllowed])
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  objc_autoreleasePoolPop(v2);
  return v9;
}

unint64_t sub_100552708(uint64_t a1)
{
  result = sub_1007A3C94();
  *(a1 + 80) = result;
  return result;
}

unint64_t sub_100552730(uint64_t a1)
{
  result = sub_1007A3C94();
  *(a1 + 88) = result;
  return result;
}

uint64_t sub_100553C14(uint64_t a1, const void **a2, __int128 *a3)
{
  sub_100010024(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  return a1;
}

char *sub_100553C7C(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_1000CE3D4();
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

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_100553EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v13 = 0;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a2 + v6;
      v8 = a4 + v6;
      v9 = *(a2 + v6);
      *(v8 + 16) = *(a2 + v6 + 16);
      *v8 = v9;
      *(a4 + v6 + 24) = 0;
      *(v8 + 48) = 0;
      if (*(a2 + v6 + 48) == 1)
      {
        *(a4 + v6 + 24) = 0;
        *(a4 + v6 + 32) = 0;
        *(a4 + v6 + 40) = 0;
        *(v8 + 24) = *(v7 + 24);
        *(v8 + 40) = *(v7 + 40);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v8 + 48) = 1;
      }

      *(v8 + 56) = *(v7 + 56);
      v6 += 64;
    }

    while (v7 + 64 != a3);
    v15 = a4 + v6;
    LOBYTE(v13) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 48) == 1)
      {
        v10 = *(v5 + 24);
        if (v10)
        {
          *(v5 + 32) = v10;
          operator delete(v10);
        }
      }

      v5 += 64;
    }
  }

  return sub_100553FB0(v12);
}

uint64_t sub_100553FB0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100172884(a1);
  }

  return a1;
}

uint64_t sub_100553FE8(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_100172988(a1, v7);
  }

  v8 = v2 << 6;
  v16 = 0;
  v17 = v8;
  v18 = v8;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *v8 = v9;
  sub_10017272C(v8 + 24, a2 + 24);
  *(v8 + 56) = *(a2 + 28);
  *&v18 = v18 + 64;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_100553EA4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1001E9CE4(&v16);
  return v15;
}

void sub_1005540FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001E9CE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100554110(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10055416C(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *result = *a2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(result + 32) = 1;
  }

  *(result + 40) = *(a2 + 40);
  *(result + 48) = 1;
  return result;
}

__n128 sub_1005541C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      *a1 = *a2;
      sub_100071A6C(a1 + 8);
      result = *(a2 + 8);
      *(a1 + 8) = result;
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
    }
  }

  else if (*(a1 + 32))
  {
    v5 = (a1 + 8);
    sub_1000087B4(&v5);
    *(a1 + 32) = 0;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a1 + 32) = 1;
  }

  return result;
}

void sub_100554274(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_100221F4C(v3 - 256);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1005542D4(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 8;
  v3 = v2 + 1;
  if ((v2 + 1) >> 56)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 7 > v3)
  {
    v3 = v6 >> 7;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF00)
  {
    v7 = 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_100221D00(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 8;
  sub_100221DCC(v2 << 8, a2);
  v16 = ((v2 << 8) + 256);
  v8 = a1[1];
  v9 = (v2 << 8) + *a1 - v8;
  sub_1005543E4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1005545E0(&v14);
  return v13;
}

void sub_1005543D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1005545E0(va);
  _Unwind_Resume(a1);
}

void sub_1005543E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 128;
    v7 = a2;
    do
    {
      *(v6 - 128) = 0;
      *(v6 - 104) = 0;
      if (*(v7 + 24) == 1)
      {
        v8 = *v7;
        *(v6 - 112) = *(v7 + 16);
        *(v6 - 128) = v8;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v6 - 104) = 1;
      }

      *(v6 - 96) = 0;
      *(v6 - 72) = 0;
      if (*(v7 + 56) == 1)
      {
        v9 = *(v7 + 32);
        *(v6 - 80) = *(v7 + 48);
        *(v6 - 96) = v9;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(v6 - 72) = 1;
      }

      *(v6 - 64) = 0;
      *(v6 - 40) = 0;
      if (*(v7 + 88) == 1)
      {
        v10 = *(v7 + 64);
        *(v6 - 48) = *(v7 + 80);
        *(v6 - 64) = v10;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        *(v6 - 40) = 1;
      }

      *(v6 - 32) = 0;
      *(v6 - 8) = 0;
      if (*(v7 + 120) == 1)
      {
        v11 = *(v7 + 96);
        *(v6 - 16) = *(v7 + 112);
        *(v6 - 32) = v11;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        *(v7 + 96) = 0;
        *(v6 - 8) = 1;
      }

      *v6 = 0;
      *(v6 + 24) = 0;
      if (*(v7 + 152) == 1)
      {
        v12 = *(v7 + 128);
        *(v6 + 16) = *(v7 + 144);
        *v6 = v12;
        *(v7 + 136) = 0;
        *(v7 + 144) = 0;
        *(v7 + 128) = 0;
        *(v6 + 24) = 1;
      }

      *(v6 + 32) = 0;
      *(v6 + 56) = 0;
      if (*(v7 + 184) == 1)
      {
        v13 = *(v7 + 160);
        *(v6 + 48) = *(v7 + 176);
        *(v6 + 32) = v13;
        *(v7 + 168) = 0;
        *(v7 + 176) = 0;
        *(v7 + 160) = 0;
        *(v6 + 56) = 1;
      }

      *(v6 + 64) = 0;
      *(v6 + 88) = 0;
      if (*(v7 + 216) == 1)
      {
        v14 = *(v7 + 192);
        *(v6 + 80) = *(v7 + 208);
        *(v6 + 64) = v14;
        *(v7 + 200) = 0;
        *(v7 + 208) = 0;
        *(v7 + 192) = 0;
        *(v6 + 88) = 1;
      }

      *(v6 + 96) = 0;
      *(v6 + 120) = 0;
      if (*(v7 + 248) == 1)
      {
        v15 = *(v7 + 224);
        *(v6 + 112) = *(v7 + 240);
        *(v6 + 96) = v15;
        *(v7 + 232) = 0;
        *(v7 + 240) = 0;
        *(v7 + 224) = 0;
        *(v6 + 120) = 1;
      }

      v7 += 256;
      v6 += 256;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      v5 = sub_100221F4C(v5) + 256;
    }
  }
}

uint64_t sub_1005545E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 256;
    sub_100221F4C(i - 256);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100554630(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }
  }

  if (*(a1 + 24) == 1)
  {
    v3 = a1;
    sub_100222050(&v3);
  }

  return a1;
}

uint64_t sub_1005546AC(uint64_t a1, void *a2, int *a3, _DWORD *a4)
{
  *a3 = 0x100000001;
  *(a3 + 1) = 0;
  v8 = sub_100554B98(a1, a2, @"timestamp", a3 + 1);
  v9 = **(a1 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      v20 = PersonalityInfo::logPrefix(**(a1 + 24));
      v21 = (*(*a1 + 40))(a1);
      v34 = 136315906;
      v35 = v20;
      v36 = 2080;
      v37 = " ";
      v38 = 2080;
      v39 = v21;
      v40 = 2080;
      v41 = ", ";
      v22 = "#I %s%s%s%sInvalid voice usage information, missing timestamp, skipping parsing";
      v23 = v9;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, &v34, 0x2Au);
    }

    return 0;
  }

  if (v10)
  {
    v11 = PersonalityInfo::logPrefix(**(a1 + 24));
    v12 = (*(*a1 + 40))(a1);
    v34 = 136315906;
    v35 = v11;
    v36 = 2080;
    v37 = " ";
    v38 = 2080;
    v39 = v12;
    v40 = 2080;
    v41 = ", ";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived voice usage information", &v34, 0x2Au);
  }

  v13 = [a2 objectForKey:@"category-id"];
  if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v14 integerValue] <= 0)
  {
    v24 = **(a1 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = PersonalityInfo::logPrefix(**(a1 + 24));
      v26 = (*(*a1 + 40))(a1);
      v34 = 136315906;
      v35 = v25;
      v36 = 2080;
      v37 = " ";
      v38 = 2080;
      v39 = v26;
      v40 = 2080;
      v41 = ", ";
      v22 = "#I %s%s%s%svoice usage category not present or invalid";
      v23 = v24;
      goto LABEL_16;
    }

    return 0;
  }

  *a4 = [v14 intValue];
  v15 = [a2 objectForKey:@"voice-capacity"];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a3 = [v15 intValue];
      v16 = **(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(**(a1 + 24));
        v18 = (*(*a1 + 40))(a1);
        v19 = *a3;
        v34 = 136316162;
        v35 = v17;
        v36 = 2080;
        v37 = " ";
        v38 = 2080;
        v39 = v18;
        v40 = 2080;
        v41 = ", ";
        v42 = 1024;
        v43 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%svoice capacity %d", &v34, 0x30u);
      }

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  v28 = [a2 objectForKey:@"voice-used"];
  if (v28)
  {
    v29 = v28;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[1] = [v29 intValue];
      v30 = **(a1 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = PersonalityInfo::logPrefix(**(a1 + 24));
        v32 = (*(*a1 + 40))(a1);
        v33 = a3[1];
        v34 = 136316162;
        v35 = v31;
        v36 = 2080;
        v37 = " ";
        v38 = 2080;
        v39 = v32;
        v40 = 2080;
        v41 = ", ";
        v42 = 1024;
        v43 = v33;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%svoice used %d", &v34, 0x30u);
      }

      return 1;
    }
  }

  return v15;
}

BOOL sub_100554B98(uint64_t a1, void *a2, void *a3, double *a4)
{
  v7 = [a2 objectForKey:?];
  if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [*(a1 + 72) dateFromString:v8];
    if (v9)
    {
      [v9 timeIntervalSinceReferenceDate];
      if (v10 != 0.0)
      {
        *a4 = v10;
        return 1;
      }
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v20 = 0;
      sub_10000501C(__p, [a3 cStringUsingEncoding:4]);
      v15 = **(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 24));
        v17 = (*(*a1 + 40))(a1);
        v18 = __p;
        if (v20 < 0)
        {
          v18 = __p[0];
        }

        *buf = 136316162;
        v22 = v16;
        v23 = 2080;
        v24 = " ";
        v25 = 2080;
        v26 = v17;
        v27 = 2080;
        v28 = ", ";
        v29 = 2080;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sFailed to parse date for key %s", buf, 0x34u);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v12 = **(a1 + 40);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    v22 = v13;
    v23 = 2080;
    v24 = " ";
    v25 = 2080;
    v26 = v14;
    v27 = 2080;
    v28 = ", ";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sUnable to parse date since it is not a string", buf, 0x2Au);
  }

  return 0;
}

void sub_100554E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100554E28(uint64_t a1, int *a2)
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

uint64_t sub_100554EFC(uint64_t a1, void *a2, int *a3, _DWORD *a4)
{
  *a3 = 0x100000001;
  *(a3 + 1) = 0;
  v5 = a3 + 2;
  *(a3 + 2) = 0;
  v6 = (a3 + 4);
  if (!a2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v22 = **(a1 + 40);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v23 = PersonalityInfo::logPrefix(**(a1 + 24));
    v24 = (*(*a1 + 40))(a1);
    v43 = 136315906;
    v44 = v23;
    v45 = 2080;
    v46 = " ";
    v47 = 2080;
    v48 = v24;
    v49 = 2080;
    v50 = ", ";
    v25 = "#I %s%s%s%sOne of the data usage array's is invalid, skipping parsing";
    goto LABEL_16;
  }

  v10 = sub_100554B98(a1, a2, @"timestamp", v6);
  v11 = **(a1 + 40);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (!v12)
    {
      return 0;
    }

    v28 = PersonalityInfo::logPrefix(**(a1 + 24));
    v29 = (*(*a1 + 40))(a1);
    v43 = 136315906;
    v44 = v28;
    v45 = 2080;
    v46 = " ";
    v47 = 2080;
    v48 = v29;
    v49 = 2080;
    v50 = ", ";
    v25 = "#I %s%s%s%sInvalid data usage information, missing timestamp, skipping parsing";
    v26 = v11;
    goto LABEL_17;
  }

  if (v12)
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    v43 = 136315906;
    v44 = v13;
    v45 = 2080;
    v46 = " ";
    v47 = 2080;
    v48 = v14;
    v49 = 2080;
    v50 = ", ";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived data usage information", &v43, 0x2Au);
  }

  v15 = [a2 objectForKey:@"category-id"];
  if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v16 integerValue] <= 0)
  {
    v22 = **(a1 + 40);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v30 = PersonalityInfo::logPrefix(**(a1 + 24));
    v31 = (*(*a1 + 40))(a1);
    v43 = 136315906;
    v44 = v30;
    v45 = 2080;
    v46 = " ";
    v47 = 2080;
    v48 = v31;
    v49 = 2080;
    v50 = ", ";
    v25 = "#I %s%s%s%sdata usage category not present or invalid";
LABEL_16:
    v26 = v22;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, &v43, 0x2Au);
    return 0;
  }

  *a4 = [v16 intValue];
  v17 = [a2 objectForKey:@"data-capacity"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a3 = [v17 intValue];
      v18 = **(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = PersonalityInfo::logPrefix(**(a1 + 24));
        v20 = (*(*a1 + 40))(a1);
        v21 = *a3;
        v43 = 136316162;
        v44 = v19;
        v45 = 2080;
        v46 = " ";
        v47 = 2080;
        v48 = v20;
        v49 = 2080;
        v50 = ", ";
        v51 = 1024;
        v52 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sTotal data available %d", &v43, 0x30u);
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  v32 = [a2 objectForKey:@"data-used"];
  if (v32)
  {
    v33 = v32;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[1] = [v33 intValue];
      v34 = **(a1 + 40);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = PersonalityInfo::logPrefix(**(a1 + 24));
        v36 = (*(*a1 + 40))(a1);
        v37 = a3[1];
        v43 = 136316162;
        v44 = v35;
        v45 = 2080;
        v46 = " ";
        v47 = 2080;
        v48 = v36;
        v49 = 2080;
        v50 = ", ";
        v51 = 1024;
        v52 = v37;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sTotal data used %d", &v43, 0x30u);
      }

      v17 = 1;
    }
  }

  v38 = [a2 objectForKey:@"use-for-alert"];
  if (v38)
  {
    v39 = v38;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *v5 = [v39 BOOLValue];
    }

    else
    {
      v40 = **(a1 + 40);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = PersonalityInfo::logPrefix(**(a1 + 24));
        v42 = (*(*a1 + 40))(a1);
        v43 = 136315906;
        v44 = v41;
        v45 = 2080;
        v46 = " ";
        v47 = 2080;
        v48 = v42;
        v49 = 2080;
        v50 = ", ";
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sunable to parse use-for-alert info", &v43, 0x2Au);
      }
    }
  }

  return v17;
}

uint64_t *sub_1005555B4(uint64_t a1, int *a2)
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

uint64_t sub_100555690(uint64_t a1, void *a2, int *a3, _DWORD *a4)
{
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  *a3 = v8;
  *(a3 + 1) = v8;
  *(a3 + 4) = 0;
  v9 = sub_100554B98(a1, a2, @"timestamp", a3 + 4);
  v10 = **(a1 + 40);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      v21 = PersonalityInfo::logPrefix(**(a1 + 24));
      v22 = (*(*a1 + 40))(a1);
      v71 = 136315906;
      v72 = v21;
      v73 = 2080;
      v74 = " ";
      v75 = 2080;
      v76 = v22;
      v77 = 2080;
      v78 = ", ";
      v23 = "#I %s%s%s%sInvalid message usage information, missing timestamp, skipping parsing";
      v24 = v10;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v71, 0x2Au);
    }

    return 0;
  }

  if (v11)
  {
    v12 = PersonalityInfo::logPrefix(**(a1 + 24));
    v13 = (*(*a1 + 40))(a1);
    v71 = 136315906;
    v72 = v12;
    v73 = 2080;
    v74 = " ";
    v75 = 2080;
    v76 = v13;
    v77 = 2080;
    v78 = ", ";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived message usage information", &v71, 0x2Au);
  }

  v14 = [a2 objectForKey:@"category-id"];
  if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v15 integerValue] <= 0)
  {
    v25 = **(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = PersonalityInfo::logPrefix(**(a1 + 24));
      v27 = (*(*a1 + 40))(a1);
      v71 = 136315906;
      v72 = v26;
      v73 = 2080;
      v74 = " ";
      v75 = 2080;
      v76 = v27;
      v77 = 2080;
      v78 = ", ";
      v23 = "#I %s%s%s%svoice usage category not present or invalid";
      v24 = v25;
      goto LABEL_16;
    }

    return 0;
  }

  *a4 = [v15 intValue];
  v16 = [a2 objectForKey:@"mo-sms"];
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a3 = [v16 intValue];
      v17 = **(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = PersonalityInfo::logPrefix(**(a1 + 24));
        v19 = (*(*a1 + 40))(a1);
        v20 = *a3;
        v71 = 136316162;
        v72 = v18;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v19;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMO SMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }
  }

  v29 = [a2 objectForKey:@"mt-sms"];
  if (v29)
  {
    v30 = v29;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[1] = [v30 intValue];
      v31 = **(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = PersonalityInfo::logPrefix(**(a1 + 24));
        v33 = (*(*a1 + 40))(a1);
        v34 = a3[1];
        v71 = 136316162;
        v72 = v32;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v33;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT SMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v35 = [a2 objectForKey:@"sms-capacity"];
  if (v35)
  {
    v36 = v35;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[3] = [v36 intValue];
      v37 = **(a1 + 40);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = PersonalityInfo::logPrefix(**(a1 + 24));
        v39 = (*(*a1 + 40))(a1);
        v40 = a3[3];
        v71 = 136316162;
        v72 = v38;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v39;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v40;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT MMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v41 = [a2 objectForKey:@"total-sms"];
  if (v41)
  {
    v42 = v41;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[2] = [v42 intValue];
      v43 = **(a1 + 40);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = PersonalityInfo::logPrefix(**(a1 + 24));
        v45 = (*(*a1 + 40))(a1);
        v46 = a3[2];
        v71 = 136316162;
        v72 = v44;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v45;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v46;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT MMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v47 = [a2 objectForKey:@"mo-mms"];
  if (v47)
  {
    v48 = v47;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[4] = [v48 intValue];
      v49 = **(a1 + 40);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = PersonalityInfo::logPrefix(**(a1 + 24));
        v51 = (*(*a1 + 40))(a1);
        v52 = a3[4];
        v71 = 136316162;
        v72 = v50;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v51;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v52;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMO MMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v53 = [a2 objectForKey:@"mt-mms"];
  if (v53)
  {
    v54 = v53;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[5] = [v54 intValue];
      v55 = **(a1 + 40);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = PersonalityInfo::logPrefix(**(a1 + 24));
        v57 = (*(*a1 + 40))(a1);
        v58 = a3[5];
        v71 = 136316162;
        v72 = v56;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v57;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v58;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT MMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v59 = [a2 objectForKey:@"mms-capacity"];
  if (v59)
  {
    v60 = v59;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[7] = [v60 intValue];
      v61 = **(a1 + 40);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = PersonalityInfo::logPrefix(**(a1 + 24));
        v63 = (*(*a1 + 40))(a1);
        v64 = a3[7];
        v71 = 136316162;
        v72 = v62;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v63;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v64;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT MMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v65 = [a2 objectForKey:@"total-mms"];
  if (v65)
  {
    v66 = v65;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[6] = [v66 intValue];
      v67 = **(a1 + 40);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = PersonalityInfo::logPrefix(**(a1 + 24));
        v69 = (*(*a1 + 40))(a1);
        v70 = a3[6];
        v71 = 136316162;
        v72 = v68;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v69;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v70;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT MMS: %d", &v71, 0x30u);
      }

      return 1;
    }
  }

  return v16;
}

uint64_t *sub_10055617C(uint64_t a1, int *a2)
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

uint64_t sub_100556260(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = [a2 objectForKey:@"subscription-status"];
  if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v19 = **(a1 + 40);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v20 = PersonalityInfo::logPrefix(**(a1 + 24));
    v21 = (*(*a1 + 40))(a1);
    v25 = 136315906;
    v26 = v20;
    v27 = 2080;
    v28 = " ";
    v29 = 2080;
    v30 = v21;
    v31 = 2080;
    v32 = ", ";
    v22 = "#I %s%s%s%sSubscription status is invalid";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v22, &v25, 0x2Au);
    return 0;
  }

  if (![v9 length])
  {
    v19 = **(a1 + 40);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v23 = PersonalityInfo::logPrefix(**(a1 + 24));
    v24 = (*(*a1 + 40))(a1);
    v25 = 136315906;
    v26 = v23;
    v27 = 2080;
    v28 = " ";
    v29 = 2080;
    v30 = v24;
    v31 = 2080;
    v32 = ", ";
    v22 = "#I %s%s%s%sReceived an empty value for subscription status";
    goto LABEL_13;
  }

  *a3 = v9;
  v10 = **(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(**(a1 + 24));
    v12 = (*(*a1 + 40))(a1);
    v25 = 136316162;
    v26 = v11;
    v27 = 2080;
    v28 = " ";
    v29 = 2080;
    v30 = v12;
    v31 = 2080;
    v32 = ", ";
    v33 = 2080;
    v34 = [v9 cStringUsingEncoding:4];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived subscription status: %s", &v25, 0x34u);
  }

  result = [a2 objectForKey:@"plan-type"];
  if (result)
  {
    v14 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a4 = v14;
      v15 = **(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 24));
        v17 = (*(*a1 + 40))(a1);
        v18 = [v14 cStringUsingEncoding:4];
        v25 = 136316162;
        v26 = v16;
        v27 = 2080;
        v28 = " ";
        v29 = 2080;
        v30 = v17;
        v31 = 2080;
        v32 = ", ";
        v33 = 2080;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived subscription plan type: %s", &v25, 0x34u);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10055663C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = sub_100556260(a1, a2, a3, a4);
  if (v8)
  {
    v9 = [a2 objectForKey:@"plan-mgt-type"];
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *a5 = v10;
      v11 = **(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = PersonalityInfo::logPrefix(**(a1 + 24));
        v13 = (*(*a1 + 40))(a1);
        v18 = 136316162;
        v19 = v12;
        v20 = 2080;
        v21 = " ";
        v22 = 2080;
        v23 = v13;
        v24 = 2080;
        v25 = ", ";
        v26 = 2080;
        v27 = [v10 cStringUsingEncoding:4];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived subscription plan management type: %s", &v18, 0x34u);
      }
    }

    else
    {
      v14 = **(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PersonalityInfo::logPrefix(**(a1 + 24));
        v16 = (*(*a1 + 40))(a1);
        v18 = 136315906;
        v19 = v15;
        v20 = 2080;
        v21 = " ";
        v22 = 2080;
        v23 = v16;
        v24 = 2080;
        v25 = ", ";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sno plan management type assume not cambio", &v18, 0x2Au);
      }

      *a5 = @"unknown-plan-mgt";
    }
  }

  return v8;
}

BOOL sub_100556878(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"plan-type"];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = **(a1 + 40);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v15 = 136315906;
    v16 = v10;
    v17 = 2080;
    v18 = " ";
    v19 = 2080;
    v20 = v11;
    v21 = 2080;
    v22 = ", ";
    v12 = "#I %s%s%s%ssubscription does not have valid plan type";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v12, &v15, 0x2Au);
    return 0;
  }

  if ([v6 isEqualToString:@"bucket"])
  {
    v7 = *(a3 + 36) | 1;
LABEL_10:
    *(a3 + 36) = v7;
    return 1;
  }

  if ([v6 isEqualToString:@"time"])
  {
    v7 = *(a3 + 36) | 2;
    goto LABEL_10;
  }

  v8 = **(a1 + 40);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    v15 = 136315906;
    v16 = v13;
    v17 = 2080;
    v18 = " ";
    v19 = 2080;
    v20 = v14;
    v21 = 2080;
    v22 = ", ";
    v12 = "#I %s%s%s%sinvalid data plan type";
    goto LABEL_7;
  }

  return result;
}

void **sub_100556AA8(void **a1)
{
  sub_10006DCAC((a1 + 6), a1[7]);
  sub_10006DCAC((a1 + 3), a1[4]);
  sub_10006DCAC(a1, a1[1]);
  return a1;
}

uint64_t sub_100556AF0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100556B70(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_100556B70(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_1005570E0(v3 - 192);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100556BD0(void ***a1)
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
        v4 = sub_1005570E0(v4 - 192);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100556C54(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100556EA4(a1, v6);
  }

  v13 = 0;
  v14 = 192 * v2;
  sub_100556D84(192 * v2, a2);
  v15 = 192 * v2 + 192;
  v7 = a1[1];
  v8 = 192 * v2 + *a1 - v7;
  sub_100556EFC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100557090(&v13);
  return v12;
}

void sub_100556D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100557090(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100556D84(uint64_t a1, __int128 *a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, a2 + 2);
  sub_10006F264(a1 + 64, a2 + 4);
  sub_10006F264(a1 + 96, a2 + 6);
  sub_10006F264(a1 + 128, a2 + 8);
  sub_10006F264(a1 + 160, a2 + 10);
  return a1;
}

void sub_100556DEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 152) == 1 && *(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 120) == 1 && *(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100556EA4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_100556EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 96;
    v7 = a2;
    do
    {
      *(v6 - 96) = 0;
      *(v6 - 72) = 0;
      if (*(v7 + 24) == 1)
      {
        v8 = *v7;
        *(v6 - 80) = *(v7 + 16);
        *(v6 - 96) = v8;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v6 - 72) = 1;
      }

      *(v6 - 64) = 0;
      *(v6 - 40) = 0;
      if (*(v7 + 56) == 1)
      {
        v9 = *(v7 + 32);
        *(v6 - 48) = *(v7 + 48);
        *(v6 - 64) = v9;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(v6 - 40) = 1;
      }

      *(v6 - 32) = 0;
      *(v6 - 8) = 0;
      if (*(v7 + 88) == 1)
      {
        v10 = *(v7 + 64);
        *(v6 - 16) = *(v7 + 80);
        *(v6 - 32) = v10;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        *(v6 - 8) = 1;
      }

      *v6 = 0;
      *(v6 + 24) = 0;
      if (*(v7 + 120) == 1)
      {
        v11 = *(v7 + 96);
        *(v6 + 16) = *(v7 + 112);
        *v6 = v11;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        *(v7 + 96) = 0;
        *(v6 + 24) = 1;
      }

      *(v6 + 32) = 0;
      *(v6 + 56) = 0;
      if (*(v7 + 152) == 1)
      {
        v12 = *(v7 + 128);
        *(v6 + 48) = *(v7 + 144);
        *(v6 + 32) = v12;
        *(v7 + 136) = 0;
        *(v7 + 144) = 0;
        *(v7 + 128) = 0;
        *(v6 + 56) = 1;
      }

      *(v6 + 64) = 0;
      *(v6 + 88) = 0;
      if (*(v7 + 184) == 1)
      {
        v13 = *(v7 + 160);
        *(v6 + 80) = *(v7 + 176);
        *(v6 + 64) = v13;
        *(v7 + 168) = 0;
        *(v7 + 176) = 0;
        *(v7 + 160) = 0;
        *(v6 + 88) = 1;
      }

      v7 += 192;
      v6 += 192;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      v5 = sub_1005570E0(v5) + 192;
    }
  }
}

uint64_t sub_100557090(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 192;
    sub_1005570E0(i - 192);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1005570E0(uint64_t a1)
{
  if (*(a1 + 184) == 1 && *(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_1005571AC(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100556B70(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100556BD0(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_100557250(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1005572D0(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1005572D0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_100557938(v3 - 264);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100557330(void ***a1)
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
        v4 = sub_100557938(v4 - 264);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1005573B4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    sub_1000CE3D4();
  }

  if (0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100557684(a1, v6);
  }

  v13 = 0;
  v14 = 264 * v2;
  sub_1005574FC(264 * v2, a2);
  v15 = (264 * v2 + 264);
  v7 = a1[1];
  v8 = 264 * v2 + *a1 - v7;
  sub_1005576E0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1005578E8(&v13);
  return v12;
}

void sub_1005574E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1005578E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005574FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, (a2 + 32));
  sub_10006F264(a1 + 64, (a2 + 64));
  sub_10006F264(a1 + 96, (a2 + 96));
  *(a1 + 128) = *(a2 + 128);
  sub_10006F264(a1 + 136, (a2 + 136));
  sub_10006F264(a1 + 168, (a2 + 168));
  sub_10006F264(a1 + 200, (a2 + 200));
  sub_10006F264(a1 + 232, (a2 + 232));
  return a1;
}

void sub_100557584(_Unwind_Exception *exception_object)
{
  if (*(v1 + 224) == 1 && *(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 192) == 1 && *(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 160) == 1 && *(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  if (*(v1 + 120) == 1 && *(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100557684(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1005576E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 128;
    v7 = a2;
    do
    {
      *(v6 - 128) = 0;
      *(v6 - 104) = 0;
      if (*(v7 + 24) == 1)
      {
        v8 = *v7;
        *(v6 - 112) = *(v7 + 16);
        *(v6 - 128) = v8;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v6 - 104) = 1;
      }

      *(v6 - 96) = 0;
      *(v6 - 72) = 0;
      if (*(v7 + 56) == 1)
      {
        v9 = *(v7 + 32);
        *(v6 - 80) = *(v7 + 48);
        *(v6 - 96) = v9;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(v6 - 72) = 1;
      }

      *(v6 - 64) = 0;
      *(v6 - 40) = 0;
      if (*(v7 + 88) == 1)
      {
        v10 = *(v7 + 64);
        *(v6 - 48) = *(v7 + 80);
        *(v6 - 64) = v10;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        *(v6 - 40) = 1;
      }

      *(v6 - 32) = 0;
      *(v6 - 8) = 0;
      if (*(v7 + 120) == 1)
      {
        v11 = *(v7 + 96);
        *(v6 - 16) = *(v7 + 112);
        *(v6 - 32) = v11;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        *(v7 + 96) = 0;
        *(v6 - 8) = 1;
      }

      *v6 = *(v7 + 128);
      *(v6 + 8) = 0;
      *(v6 + 32) = 0;
      if (*(v7 + 160) == 1)
      {
        v12 = *(v7 + 136);
        *(v6 + 24) = *(v7 + 152);
        *(v6 + 8) = v12;
        *(v7 + 144) = 0;
        *(v7 + 152) = 0;
        *(v7 + 136) = 0;
        *(v6 + 32) = 1;
      }

      *(v6 + 40) = 0;
      *(v6 + 64) = 0;
      if (*(v7 + 192) == 1)
      {
        v13 = *(v7 + 168);
        *(v6 + 56) = *(v7 + 184);
        *(v6 + 40) = v13;
        *(v7 + 176) = 0;
        *(v7 + 184) = 0;
        *(v7 + 168) = 0;
        *(v6 + 64) = 1;
      }

      *(v6 + 72) = 0;
      *(v6 + 96) = 0;
      if (*(v7 + 224) == 1)
      {
        v14 = *(v7 + 200);
        *(v6 + 88) = *(v7 + 216);
        *(v6 + 72) = v14;
        *(v7 + 208) = 0;
        *(v7 + 216) = 0;
        *(v7 + 200) = 0;
        *(v6 + 96) = 1;
      }

      *(v6 + 104) = 0;
      *(v6 + 128) = 0;
      if (*(v7 + 256) == 1)
      {
        v15 = *(v7 + 232);
        *(v6 + 120) = *(v7 + 248);
        *(v6 + 104) = v15;
        *(v7 + 240) = 0;
        *(v7 + 248) = 0;
        *(v7 + 232) = 0;
        *(v6 + 128) = 1;
      }

      v7 += 264;
      v6 += 264;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      v5 = sub_100557938(v5) + 264;
    }
  }
}

uint64_t sub_1005578E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 264;
    sub_100557938(i - 264);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100557938(uint64_t a1)
{
  if (*(a1 + 256) == 1 && *(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 224) == 1 && *(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_100557A3C(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_1005572D0(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100557330(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_100557AE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100557B60(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_100557B60(uint64_t *a1)
{
  if (*a1)
  {
    sub_100557BA0(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100557BA0(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_100557BF4(a1, i))
  {
    i -= 160;
  }

  *(a1 + 8) = a2;
}

void sub_100557BF4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 96) == 1 && *(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 56) == 1 && *(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 24) == 1 && *(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_100557C9C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100557BA0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100557CF0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v6 = 0x199999999999999;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100557F00(a1, v6);
  }

  v13 = 0;
  v14 = 160 * v2;
  sub_100557E20(160 * v2, a2);
  v15 = 160 * v2 + 160;
  v7 = a1[1];
  v8 = 160 * v2 + *a1 - v7;
  sub_100557F58(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1005581AC(&v13);
  return v12;
}

void sub_100557E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1005581AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100557E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, (a2 + 32));
  *(a1 + 64) = *(a2 + 64);
  sub_10006F264(a1 + 72, (a2 + 72));
  *(a1 + 104) = *(a2 + 104);
  sub_10006F264(a1 + 112, (a2 + 112));
  v5 = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 144) = v5;
  return a1;
}

void sub_100557E90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1 && *(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100557F00(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100557F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a4;
  v21[0] = a1;
  v21[1] = &v23;
  v21[2] = &v24;
  v22 = 0;
  if (a2 == a3)
  {
    LOBYTE(v22) = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = (a2 + v7);
      v9 = a4 + v7;
      *v9 = 0;
      *(v9 + 24) = 0;
      if (*(a2 + v7 + 24) == 1)
      {
        v10 = *v8;
        *(v9 + 16) = *(v8 + 2);
        *v9 = v10;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *v8 = 0;
        *(v9 + 24) = 1;
      }

      *(v9 + 32) = 0;
      *(v9 + 56) = 0;
      if (*(v8 + 56) == 1)
      {
        v11 = (a2 + v7);
        v12 = *(a2 + v7 + 32);
        *(v9 + 48) = *(a2 + v7 + 48);
        *(v9 + 32) = v12;
        v11[5] = 0;
        v11[6] = 0;
        v11[4] = 0;
        *(v9 + 56) = 1;
      }

      v13 = a4 + v7;
      v14 = a2 + v7;
      *(v13 + 64) = *(a2 + v7 + 64);
      *(a4 + v7 + 72) = 0;
      *(v13 + 96) = 0;
      if (*(a2 + v7 + 96) == 1)
      {
        v15 = *(v14 + 72);
        *(a4 + v7 + 88) = *(v14 + 88);
        *(a4 + v7 + 72) = v15;
        *(v14 + 80) = 0;
        *(v14 + 88) = 0;
        *(v14 + 72) = 0;
        *(v13 + 96) = 1;
      }

      *(v13 + 104) = *(v14 + 104);
      *(v13 + 112) = 0;
      *(v13 + 136) = 0;
      if (*(v14 + 136) == 1)
      {
        v16 = (a2 + v7);
        v17 = *(a2 + v7 + 112);
        *(v13 + 128) = *(a2 + v7 + 128);
        *(v13 + 112) = v17;
        v16[15] = 0;
        v16[16] = 0;
        v16[14] = 0;
        *(v13 + 136) = 1;
      }

      v18 = a4 + v7;
      v19 = *(a2 + v7 + 144);
      *(v18 + 152) = *(a2 + v7 + 152);
      *(v18 + 144) = v19;
      v7 += 160;
    }

    while (a2 + v7 != a3);
    v24 = a4 + v7;
    LOBYTE(v22) = 1;
    while (v5 != a3)
    {
      sub_100557BF4(a1, v5);
      v5 += 160;
    }
  }

  return sub_100558120(v21);
}

uint64_t sub_100558120(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100558158(a1);
  }

  return a1;
}

void sub_100558158(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 160;
      sub_100557BF4(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1005581AC(uint64_t a1)
{
  sub_1005581E4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005581E4(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 160;
    sub_100557BF4(v5, v4 - 160);
  }
}

uint64_t sub_10055822C(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_1005582C0(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100557B60(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100557C9C(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_100558364(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100558448(a1, a2);
  }

  else
  {
    sub_1005583A4(a1, a2);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1005583A4(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = sub_10006F264(v4 + 24, (a2 + 24));
  v7 = *(a2 + 7);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 56) = v7;
  *(a1 + 8) = v4 + 72;
  return result;
}

uint64_t sub_100558448(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000CE3D4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1003EA754(a1, v6);
  }

  v7 = 72 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  sub_10006F264(v7 + 24, (a2 + 24));
  v9 = *(a2 + 7);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 56) = v9;
  *&v18 = v18 + 72;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_1005585E0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100558760(&v16);
  return v15;
}

void sub_1005585B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_100558760(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005585E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2 + 24;
    do
    {
      v8 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v8;
      *(v7 - 16) = 0;
      *(v7 - 8) = 0;
      *(v7 - 24) = 0;
      *(a4 + 24) = 0;
      *(a4 + 48) = 0;
      if (*(v7 + 24) == 1)
      {
        v9 = *v7;
        *(a4 + 40) = *(v7 + 16);
        *(a4 + 24) = v9;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(a4 + 48) = 1;
      }

      v10 = v7 - 24;
      v11 = *(v7 + 32);
      *(a4 + 64) = *(v7 + 40);
      *(a4 + 56) = v11;
      a4 += 72;
      v7 += 72;
    }

    while (v10 + 72 != a3);
    v16 = a4;
    LOBYTE(v14) = 1;
    while (v5 != a3)
    {
      sub_1005586FC(a1, v5);
      v5 += 72;
    }
  }

  return sub_1003EA8A0(v13);
}

void sub_1005586FC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_100558760(uint64_t a1)
{
  sub_100558798(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100558798(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    sub_1005586FC(v5, v4 - 72);
  }
}

void sub_1005587E0(uint64_t *a1)
{
  if (*a1)
  {
    sub_100558820(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100558820(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_100558874(a1, i))
  {
    i -= 128;
  }

  *(a1 + 8) = a2;
}

void sub_100558874(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 120) == 1 && *(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 88) == 1 && *(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 56) == 1 && *(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 24) == 1 && *(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10055891C(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_100558AEC(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 7;
  sub_100558A2C(v2 << 7, a2);
  v16 = ((v2 << 7) + 128);
  v8 = a1[1];
  v9 = (v2 << 7) + *a1 - v8;
  sub_100558B34(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100558D44(&v14);
  return v13;
}

void sub_100558A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100558D44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100558A2C(uint64_t a1, __int128 *a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, a2 + 2);
  sub_10006F264(a1 + 64, a2 + 4);
  sub_10006F264(a1 + 96, a2 + 6);
  return a1;
}

void sub_100558A7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100558AEC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100558B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 24) = 0;
      if (*(v7 + 24) == 1)
      {
        v8 = *v7;
        *(a4 + 16) = *(v7 + 16);
        *a4 = v8;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(a4 + 24) = 1;
      }

      *(a4 + 32) = 0;
      *(a4 + 56) = 0;
      if (*(v7 + 56) == 1)
      {
        v9 = *(v7 + 32);
        *(a4 + 48) = *(v7 + 48);
        *(a4 + 32) = v9;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(a4 + 56) = 1;
      }

      *(a4 + 64) = 0;
      *(a4 + 88) = 0;
      if (*(v7 + 88) == 1)
      {
        v10 = *(v7 + 64);
        *(a4 + 80) = *(v7 + 80);
        *(a4 + 64) = v10;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        *(a4 + 88) = 1;
      }

      *(a4 + 96) = 0;
      *(a4 + 120) = 0;
      if (*(v7 + 120) == 1)
      {
        v11 = *(v7 + 96);
        *(a4 + 112) = *(v7 + 112);
        *(a4 + 96) = v11;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        *(v7 + 96) = 0;
        *(a4 + 120) = 1;
      }

      v7 += 128;
      a4 += 128;
    }

    while (v7 != a3);
    v16 = a4;
    LOBYTE(v14) = 1;
    while (v5 != a3)
    {
      sub_100558874(a1, v5);
      v5 += 128;
    }
  }

  return sub_100558CB8(v13);
}

uint64_t sub_100558CB8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100558CF0(a1);
  }

  return a1;
}

void sub_100558CF0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 128;
      sub_100558874(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_100558D44(uint64_t a1)
{
  sub_100558D7C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100558D7C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 128;
    sub_100558874(v5, v4 - 128);
  }
}

uint64_t sub_100558DC4(uint64_t a1)
{
  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100558E58(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  result = sub_10004EFD0(v4 + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_100558F08(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1003ECE58(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  sub_10004EFD0(v7 + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *&v17 = v17 + 48;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_1003ECEB0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003ECF8C(&v15);
  return v14;
}

void sub_100559068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_1003ECF8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100559094(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
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

  v18 = a1;
  if (v7)
  {
    sub_1005591B8(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  *(v8 + 1) = *(a2 + 8);
  v8[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = (32 * v2 + *a1 - v9);
  sub_100559200(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100559350(&v15);
  return v14;
}

void sub_1005591A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100559350(va);
  _Unwind_Resume(a1);
}

void sub_1005591B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100559200(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v9 = 0;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v6 + 8);
      a4[3] = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 4;
    }

    while (v6 != a3);
    v11 = a4;
    LOBYTE(v9) = 1;
    while (v5 != a3)
    {
      v12 = (v5 + 8);
      sub_1003ED090(&v12);
      v5 += 32;
    }
  }

  return sub_1005592C0(v8);
}

uint64_t sub_1005592C0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1005592F8(a1);
  }

  return a1;
}

void sub_1005592F8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 32;
      v4 = (v1 - 24);
      sub_1003ED090(&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_100559350(void **a1)
{
  sub_100559384(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100559384(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v4 = (i - 24);
    sub_1003ED090(&v4);
  }
}

uint64_t sub_1005593DC(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1003ECE58(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *&v17 = 48 * v2 + 48;
  v9 = a1[1];
  v10 = 48 * v2 + *a1 - v9;
  sub_1003ECEB0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003ECF8C(&v15);
  return v14;
}

void sub_100559520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003ECF8C(va);
  _Unwind_Resume(a1);
}

void *sub_100559534(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  if (*(a2 + 47) < 0)
  {
    result = sub_100005F2C((v3 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v5;
  }

  v2[1] = v3 + 48;
  return result;
}

uint64_t sub_1005595A4(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1003EB574(a1, v6);
  }

  v7 = 48 * v2;
  v17 = 0;
  v18 = v7;
  v19 = 48 * v2;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((v7 + 24), *(a2 + 3), *(a2 + 4));
    v7 = v18;
    v10 = v19;
  }

  else
  {
    v9 = *(a2 + 24);
    *(48 * v2 + 0x28) = *(a2 + 5);
    *(48 * v2 + 0x18) = v9;
    v10 = 48 * v2;
  }

  *&v19 = v10 + 48;
  v11 = *(a1 + 8);
  v12 = v7 + *a1 - v11;
  sub_100559704(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1005597C8(&v17);
  return v16;
}

void sub_1005596F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1005597C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100559704(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v11 = 0;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(v5[3]);
      }

      v5 += 6;
    }
  }

  return sub_1003EB6A0(v10);
}

uint64_t sub_1005597C8(uint64_t a1)
{
  sub_100559800(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100559800(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_10055985C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  result = sub_1003EB4A0(v4 + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 4));
  *(a1 + 8) = v4 + 72;
  return result;
}

void sub_10055990C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10055994C(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000CE3D4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1003EB308(a1, v6);
  }

  v7 = 72 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  sub_1003EB4A0(v7 + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 4));
  *&v18 = v18 + 72;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_100559B30(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100559C8C(&v16);
  return v15;
}

void sub_100559AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_100559C8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100559B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v14 = a4;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      sub_100559C34(a1, v5);
      v5 += 72;
    }
  }

  return sub_1003EB7C4(v11);
}

void sub_100559C34(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  sub_1003EB720(&v3);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_100559C8C(uint64_t a1)
{
  sub_100559CC4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100559CC4(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    sub_100559C34(v5, v4 - 72);
  }
}

uint64_t sub_100559D0C(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_1003EB720(&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100559D68(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = *(a1 + 16) - *a1;
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

  v19 = a1;
  if (v7)
  {
    sub_100559E88(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = 32 * v2 + *a1 - v10;
  sub_100559ED0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000D512C(&v16);
  return v15;
}

void sub_100559E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D512C(va);
  _Unwind_Resume(a1);
}

void sub_100559E88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100559ED0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return sub_100559F8C(v9);
}

uint64_t sub_100559F8C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000D4894(a1);
  }

  return a1;
}

uint64_t sub_100559FC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_10004EFD0(v4 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  result = sub_10004EFD0(v4 + 32, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  if (*(a2 + 79) < 0)
  {
    result = sub_100005F2C((v4 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(v4 + 72) = *(a2 + 72);
    *(v4 + 56) = v6;
  }

  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_10055A090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  sub_1000087B4(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t sub_10055A0C8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_10055A29C(a1, v6);
  }

  v7 = 80 * v2;
  v16 = 0;
  v17 = v7;
  v18 = 80 * v2;
  *v7 = *a2;
  v8 = 80 * v2;
  *(v8 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10004EFD0(v8 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  sub_10004EFD0(v7 + 32, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((v7 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v9 = *(a2 + 56);
    *(v7 + 72) = *(a2 + 72);
    *(v7 + 56) = v9;
  }

  *&v18 = v18 + 80;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_10055A2F4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_10055A4EC(&v16);
  return v15;
}

void sub_10055A260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1000087B4(va1);
  sub_1000087B4(va1);
  sub_10055A4EC(va);
  _Unwind_Resume(a1);
}

void sub_10055A29C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10055A2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v8 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 56) = v8;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = 0;
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      sub_10055A408(a1, v5);
      v5 += 80;
    }
  }

  return sub_10055A460(v10);
}

void sub_10055A408(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  v3 = (a2 + 32);
  sub_1000087B4(&v3);
  v3 = (a2 + 8);
  sub_1000087B4(&v3);
}

uint64_t sub_10055A460(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10055A498(a1);
  }

  return a1;
}

void sub_10055A498(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      sub_10055A408(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10055A4EC(uint64_t a1)
{
  sub_10055A524(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10055A524(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    sub_10055A408(v5, v4 - 80);
  }
}

uint64_t sub_10055A56C(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = (a1 + 32);
  sub_1000087B4(&v3);
  v3 = (a1 + 8);
  sub_1000087B4(&v3);
  return a1;
}

uint64_t sub_10055A638(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55860;
  a2[1] = v2;
  return result;
}

void sub_10055A664(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 16));
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v9, 0x34u);
  }
}

uint64_t sub_10055A75C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055A818(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E558E0;
  a2[1] = v2;
  return result;
}

void sub_10055A844(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 16));
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v9, 0x34u);
  }
}

uint64_t sub_10055A93C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055A9F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55960;
  a2[1] = v2;
  return result;
}

void sub_10055AA24(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 16));
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v9, 0x34u);
  }
}

uint64_t sub_10055AB1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055ABD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E559E0;
  a2[1] = v2;
  return result;
}

void sub_10055AC04(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 16));
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v9, 0x34u);
  }
}

uint64_t sub_10055ACFC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10055ADA4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E55A60;
  sub_10006EA88((a1 + 3), 0);
  return a1;
}

void sub_10055AE24(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55A60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055AE78(uint64_t a1)
{
  sub_10006DCAC(a1 + 104, *(a1 + 112));
  sub_10006EC28(a1 + 80, *(a1 + 88));
  sub_10006DCAC(a1 + 56, *(a1 + 64));
  v2 = *(a1 + 40);

  sub_10006DCAC(a1 + 32, v2);
}

void *sub_10055AF4C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E55AB0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10055AFC8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55AB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10055B098(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55B00;
  a2[1] = v2;
  return result;
}

void sub_10055B0C4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 24));
    v6 = (*(*v3 + 40))(v3);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136316162;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v6;
    v14 = 2080;
    v15 = ", ";
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v8, 0x34u);
  }
}

uint64_t sub_10055B1EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055B2A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55B80;
  a2[1] = v2;
  return result;
}

void sub_10055B2D4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 24));
    v6 = (*(*v3 + 40))(v3);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136316162;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v6;
    v14 = 2080;
    v15 = ", ";
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v8, 0x34u);
  }
}

uint64_t sub_10055B3FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055B4B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55C00;
  a2[1] = v2;
  return result;
}

void sub_10055B4E4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 24));
    v6 = (*(*v3 + 40))(v3);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136316162;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v6;
    v14 = 2080;
    v15 = ", ";
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v8, 0x34u);
  }
}

uint64_t sub_10055B60C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10055B6C4(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E55A60;
  sub_10006EA88((a1 + 3), *a2);
  return a1;
}

void sub_10055B744(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55C80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055B798(uint64_t a1)
{
  if (*(a1 + 224) == 1 && *(a1 + 208) == 1)
  {
    v2 = (a1 + 184);
    sub_1000087B4(&v2);
  }

  if (*(a1 + 168) == 1)
  {
    if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }
  }

  if (*(a1 + 88) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1)
  {
    v2 = (a1 + 24);
    sub_10013DFEC(&v2);
  }
}

void sub_10055B888(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55CD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055B8DC(uint64_t a1)
{
  sub_10006DCAC(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 32);

  sub_10006DCAC(a1 + 24, v2);
}

void sub_10055B944(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55D20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055B998(uint64_t a1)
{
  sub_10006DCAC(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 32);

  sub_10055B9E0(a1 + 24, v2);
}

void sub_10055B9E0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10055B9E0(a1, *a2);
    sub_10055B9E0(a1, *(a2 + 1));
    if (a2[128] == 1)
    {
      if (a2[120] == 1 && a2[119] < 0)
      {
        operator delete(*(a2 + 12));
      }

      if (a2[95] < 0)
      {
        operator delete(*(a2 + 9));
      }
    }

    if (a2[64] == 1)
    {
      v4 = (a2 + 40);
      sub_100222050(&v4);
    }

    operator delete(a2);
  }
}

void sub_10055BA84(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a2;
  v6 = &v5;
  v4 = sub_10055BAEC(a1, &v5);
  sub_10055BBD8(&v4[1].__r_.__value_.__r.__words[2], a3);
  sub_100221B44(v4 + 3, (a3 + 32));
}

uint64_t *sub_10055BAEC(uint64_t a1, int *a2)
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

void sub_10055BBD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = (v3 - *a2) >> 8;
      v5 = *a2;

      sub_10055BC90(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = a1;
    sub_100222050(&v6);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100221C3C(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 8);
    *(a1 + 24) = 1;
  }
}

uint64_t sub_10055BC90(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 8)
  {
    sub_100554274(a1);
    if (!HIBYTE(a4))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 7;
      if (v9 >> 7 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFF00)
      {
        v11 = 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100221CC4(a1, v11);
    }

    sub_1000CE3D4();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 8)
  {
    sub_10055BDC8(&v17, a2, a3, v8);
    v15 = v14;
    result = *(a1 + 8);
    if (result != v14)
    {
      do
      {
        result = sub_100221F4C(result - 256);
      }

      while (result != v15);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    sub_10055BDC8(&v16, a2, a2 + v12, v8);
    result = sub_100221D48(a1, (a2 + v12), a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_10055BDC8(int a1, uint64_t a2, uint64_t a3, char *__dst)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_10012BF3C(__dst, v5);
    sub_10012BF3C((__dst + 32), (v5 + 32));
    sub_10012BF3C((__dst + 64), (v5 + 64));
    sub_10012BF3C(__dst + 4, (v5 + 96));
    sub_10012BF3C((__dst + 128), (v5 + 128));
    sub_10012BF3C((__dst + 160), (v5 + 160));
    sub_10012BF3C(__dst + 8, (v5 + 192));
    sub_10012BF3C((__dst + 224), (v5 + 224));
    __dst += 256;
    v5 += 256;
  }

  while (v5 != v6);
  return v6;
}

void sub_10055BEA0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55D70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055BF3C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55DC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055BF90(uint64_t a1)
{
  if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void sub_10055C05C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55E10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055C0E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55E60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10055C1B8(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E55EB0;
  sub_10164D31C((a1 + 3), a2, a3);
  return a1;
}

void sub_10055C234(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55EB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_10055C288(uint64_t a1)
{
  sub_10006DCAC(a1 + 144, *(a1 + 152));
  sub_10006DCAC(a1 + 120, *(a1 + 128));
  sub_10006DCAC(a1 + 96, *(a1 + 104));
  sub_100005978((a1 + 48));
  sub_100005978((a1 + 40));
  sub_100005978((a1 + 32));

  return sub_100005978((a1 + 24));
}

void sub_10055C31C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55F00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055C370(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

uint64_t sub_10055C44C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55F50;
  a2[1] = v2;
  return result;
}

void sub_10055C478(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 24));
    v6 = (*(*v3 + 40))(v3);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136316162;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v6;
    v14 = 2080;
    v15 = ", ";
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v8, 0x34u);
  }
}

uint64_t sub_10055C5A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10055C5EC(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v27 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v27)
  {
    v7 = **(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 24));
      v9 = (*(*a1 + 40))(a1);
      v28 = 0uLL;
      v29 = 0;
      ctu::cf::assign();
      v25 = v29;
      *__p = v28;
      v10 = SHIBYTE(v29);
      v11 = v28;
      Count = CFArrayGetCount(theArray);
      *buf = 136316418;
      v13 = __p;
      if (v10 < 0)
      {
        v13 = v11;
      }

      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v9;
      v32 = 2080;
      v33 = ", ";
      v34 = 2080;
      v35 = v13;
      v36 = 2048;
      v37 = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of elements in %s: %lu", buf, 0x3Eu);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = theArray;
    v15 = [(__CFArray *)theArray countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          if ((*(a4 + 24) & 1) == 0)
          {
            memset(buf, 0, 24);
            sub_10055D910(a4, buf);
            *&v28 = buf;
            sub_1000087B4(&v28);
          }

          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(v18, a1, a3, 0, buf);
          v19 = buf[24];
          if (buf[24] == 1)
          {
            sub_100005308(a4, buf);
            v19 = buf[24];
          }

          if ((v19 & 1) != 0 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v15);
    }
  }

  if (v27 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10055C8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a24 == 1)
  {
    sub_100010250(&a23);
  }

  if (*(v32 + 24) == 1)
  {
    *(v33 - 160) = v32;
    sub_1000087B4((v33 - 160));
  }

  _Unwind_Resume(exception_object);
}

void sub_10055C96C(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v27 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v27)
  {
    v7 = **(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 24));
      v9 = (*(*a1 + 40))(a1);
      v28 = 0uLL;
      v29 = 0;
      ctu::cf::assign();
      v25 = v29;
      *__p = v28;
      v10 = SHIBYTE(v29);
      v11 = v28;
      Count = CFArrayGetCount(theArray);
      *buf = 136316418;
      v13 = __p;
      if (v10 < 0)
      {
        v13 = v11;
      }

      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v9;
      v32 = 2080;
      v33 = ", ";
      v34 = 2080;
      v35 = v13;
      v36 = 2048;
      v37 = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of elements in %s: %lu", buf, 0x3Eu);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = theArray;
    v15 = [(__CFArray *)theArray countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          if ((*(a4 + 24) & 1) == 0)
          {
            memset(buf, 0, 24);
            sub_10055D910(a4, buf);
            *&v28 = buf;
            sub_1000087B4(&v28);
          }

          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(v18, a1, a3, 0, buf);
          v19 = buf[24];
          if (buf[24] == 1)
          {
            sub_100005308(a4, buf);
            v19 = buf[24];
          }

          if ((v19 & 1) != 0 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v15);
    }
  }

  if (v27 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10055CC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a24 == 1)
  {
    sub_100010250(&a23);
  }

  if (*(v32 + 24) == 1)
  {
    *(v33 - 160) = v32;
    sub_1000087B4((v33 - 160));
  }

  _Unwind_Resume(exception_object);
}
void sub_10055CCEC(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *v15 = 0u;
  v16 = 0u;
  sub_10053E1F4(a2, a1, a3, 0, v15);
  if (BYTE8(v16) == 1)
  {
    v5 = SBYTE7(v16);
    if (SBYTE7(v16) < 0)
    {
      sub_100005F2C(v12, v15[0], v15[1]);
    }

    else
    {
      *v12 = *v15;
      v13 = v16;
    }

    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(&__dst, v12[0], v12[1]);
    }

    else
    {
      __dst = *v12;
      v22 = v13;
    }

    v17 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(__p, __dst, *(&__dst + 1));
    }

    else
    {
      *__p = __dst;
      __p[2] = v22;
    }

    v19 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v17;
      v17 = v19;
      v20 = v6;
      sub_100005978(&v20);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v17;
    v14 = v17;
    v17 = 0;
    sub_100005978(&v17);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    MatchingEAPMethod = DataUtils::getMatchingEAPMethod(v7, v8);
    sub_100005978(&v14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
      if (!MatchingEAPMethod)
      {
LABEL_19:
        if ((v5 & 0x80000000) == 0)
        {
          return;
        }

LABEL_23:
        operator delete(v15[0]);
        return;
      }
    }

    else if (!MatchingEAPMethod)
    {
      goto LABEL_19;
    }

    memset(__p, 0, 24);
    ctu::cf::assign();
    *(&__dst + 7) = *(&__p[1] + 7);
    *&__dst = __p[1];
    v10 = HIBYTE(__p[2]);
    v11 = __p[1];
    *a4 = __p[0];
    *(a4 + 8) = v11;
    *(a4 + 15) = *(&__dst + 7);
    *(a4 + 23) = v10;
    *(a4 + 24) = 1;
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }
}

void sub_10055CEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_100005978(&a21);
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10055CF78(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v29 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v29)
  {
    v7 = **(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 24));
      v9 = (*(*a1 + 40))(a1);
      v19[0] = 0;
      v19[1] = 0;
      v20 = 0;
      ctu::cf::assign();
      v27 = 0;
      *__p = 0u;
      Count = CFArrayGetCount(theArray);
      *buf = 136316418;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v9;
      LOWORD(v31[0]) = 2080;
      *(v31 + 2) = ", ";
      WORD1(v31[1]) = 2080;
      *(&v31[1] + 4) = __p;
      WORD2(v31[2]) = 2048;
      *(&v31[2] + 6) = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of elements in %s: %lu", buf, 0x3Eu);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = theArray;
    v12 = [(__CFArray *)theArray countByEnumeratingWithState:&v22 objects:v32 count:16, v19[0]];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 objectForKey:@"mschap-username"];
          v17 = [v15 objectForKey:@"mschap-password"];
          memset(v31, 0, 32);
          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(v16, a1, a3, 0, v19);
          sub_10016A270(buf, v19);
          if (v21 == 1 && SHIBYTE(v20) < 0)
          {
            operator delete(v19[0]);
          }

          sub_10053E1F4(v17, a1, a3, 0, v19);
          sub_10016A270(v31, v19);
          if (v21 == 1 && SHIBYTE(v20) < 0)
          {
            operator delete(v19[0]);
          }

          if ((buf[24] & 1) != 0 || (v18 = v31[3], LOBYTE(v31[3]) == 1))
          {
            if ((*(a4 + 24) & 1) == 0)
            {
              v19[0] = 0;
              v19[1] = 0;
              v20 = 0;
              sub_10055DA34(a4, v19);
              __p[0] = v19;
              sub_100220E18(__p);
            }

            sub_10055DAB4(a4, buf);
            v18 = v31[3];
          }

          if ((v18 & 1) != 0 && SHIBYTE(v31[2]) < 0)
          {
            operator delete(v31[0]);
          }

          if (buf[24] == 1 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v12);
    }
  }

  if (v29 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10055D300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, const void *a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a32 == 1)
  {
    sub_100010250(&a31);
  }

  if (*(v35 + 24) == 1)
  {
    a35 = v35;
    sub_100220E18(&a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_10055D3C8(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 224) = 0;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v31 = 0;
  v32 = 0;
  sub_10053F620(a2, a1, a3, 0, &v31);
  if (a2)
  {
    __p = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v22 = 0u;
    *v23 = 0u;
    v20 = 0u;
    *v21 = 0u;
    v18 = 0u;
    *v19 = 0u;
    *v17 = 0u;
    sub_10055DF64(a4, v17);
    if (BYTE8(v30) == 1 && SBYTE7(v30) < 0)
    {
      operator delete(__p);
    }

    if (BYTE8(v28) == 1 && SBYTE7(v28) < 0)
    {
      operator delete(v27);
    }

    if (BYTE8(v26) == 1 && SBYTE7(v26) < 0)
    {
      operator delete(v25);
    }

    if (BYTE8(v24) == 1 && SBYTE7(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (BYTE8(v22) == 1 && SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (BYTE8(v20) == 1 && SBYTE7(v20) < 0)
    {
      operator delete(v19[0]);
    }

    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    theDict = 0;
    v15 = 0;
    v16 = 0;
    if (v32 == 1)
    {
      theDict = v31;
      if (v31)
      {
        CFRetain(v31);
      }

      LOBYTE(v15) = 1;
    }

    v16 = a1;
    Value = CFDictionaryGetValue(theDict, @"dn");
    sub_10053E1F4(Value, a1, @"dn", 0, v17);
    sub_10016A270(a4, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v8 = CFDictionaryGetValue(theDict, @"organization");
    sub_10053E1F4(v8, v16, @"organization", 0, v17);
    sub_10016A270(a4 + 32, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v9 = CFDictionaryGetValue(theDict, @"department");
    sub_10053E1F4(v9, v16, @"department", 0, v17);
    sub_10016A270(a4 + 64, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v10 = CFDictionaryGetValue(theDict, @"city");
    sub_10053E1F4(v10, v16, @"city", 0, v17);
    sub_10016A270(a4 + 96, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v11 = CFDictionaryGetValue(theDict, @"state");
    sub_10053E1F4(v11, v16, @"state", 0, v17);
    sub_10016A270(a4 + 128, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v12 = CFDictionaryGetValue(theDict, @"country");
    sub_10053E1F4(v12, v16, @"country", 0, v17);
    sub_10016A270(a4 + 160, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v13 = CFDictionaryGetValue(theDict, @"email");
    sub_10053E1F4(v13, v16, @"email", 0, v17);
    sub_10016A270(a4 + 192, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    if (v15 == 1)
    {
      sub_10001021C(&theDict);
    }
  }

  if (v32 == 1)
  {
    sub_10001021C(&v31);
  }
}

void sub_10055D80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100220D30(va);
  if (*(v6 - 40) == 1)
  {
    sub_10001021C((v6 - 48));
  }

  if (*(v5 + 224) == 1)
  {
    sub_100220D30(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10055D86C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 456) == 1)
  {
    sub_10012BF3C(a1, a2);
    sub_100220FC4(a1 + 32, a2 + 32);
    sub_100220FC4(a1 + 64, a2 + 64);
    sub_10012BF3C((a1 + 96), (a2 + 96));
    sub_100221094(a1 + 128, a2 + 128);
    sub_10012BF3C((a1 + 160), (a2 + 160));
    sub_10012BF3C((a1 + 192), (a2 + 192));
    sub_1002215C0((a1 + 224), a2 + 224);
  }

  else
  {
    sub_1002217D8(a1, a2);
    *(a1 + 456) = 1;
  }

  return a1;
}

uint64_t sub_10055D910(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100071A6C(a1);
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

__n128 sub_10055D990(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100071A6C(a1);
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
    sub_1000087B4(&v5);
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

uint64_t sub_10055DA34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100221268(a1);
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

uint64_t sub_10055DAB4(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10055DBE4(a1, a2);
  }

  else
  {
    sub_10055DB64(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void sub_10055DAF4(uint64_t a1, uint64_t a2)
{
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

uint64_t sub_10055DB64(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  sub_10006F264(v4, a2);
  result = sub_10006F264(v4 + 32, a2 + 2);
  *(a1 + 8) = v4 + 64;
  return result;
}

void sub_10055DBB0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10055DBE4(uint64_t *a1, __int128 *a2)
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

  v17 = a1;
  if (v7)
  {
    sub_1002214F0(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 6;
  sub_10006F264(v2 << 6, a2);
  sub_10006F264((v2 << 6) + 32, a2 + 2);
  v16 = ((v2 << 6) + 64);
  v8 = a1[1];
  v9 = (v2 << 6) + *a1 - v8;
  sub_10055DD24(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10055DE40(&v14);
  return v13;
}

void sub_10055DCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 24) == 1 && *(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_10055DE40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10055DD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

      v7 += 64;
      a4 += 64;
    }

    while (v7 != a3);
    v14 = a4;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      sub_10055DAF4(a1, v5);
      v5 += 64;
    }
  }

  return sub_1002213B4(v11);
}

uint64_t sub_10055DE40(uint64_t a1)
{
  sub_10055DE78(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10055DE78(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 64;
    sub_10055DAF4(v5, v4 - 64);
  }
}

__n128 sub_10055DEC0(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100221268(a1);
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
    sub_100220E18(&v5);
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

uint64_t sub_10055DF64(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 224) == 1)
  {
    sub_10055DFA0(a1, a2);
  }

  else
  {
    sub_10055E030(a1, a2);
  }

  return a1;
}

uint64_t sub_10055DFA0(uint64_t a1, __n128 *a2)
{
  sub_10016A270(a1, a2);
  sub_10016A270(a1 + 32, a2 + 2);
  sub_10016A270(a1 + 64, a2 + 4);
  sub_10016A270(a1 + 96, a2 + 6);
  sub_10016A270(a1 + 128, a2 + 8);
  sub_10016A270(a1 + 160, a2 + 10);
  sub_10016A270(a1 + 192, a2 + 12);
  return a1;
}

uint64_t sub_10055E030(uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(result + 24) = 1;
  }

  *(result + 32) = 0;
  *(result + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = a2[2];
    *(result + 48) = *(a2 + 6);
    *(result + 32) = v3;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    *(result + 56) = 1;
  }

  *(result + 64) = 0;
  *(result + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = a2[4];
    *(result + 80) = *(a2 + 10);
    *(result + 64) = v4;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 8) = 0;
    *(result + 88) = 1;
  }

  *(result + 96) = 0;
  *(result + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v5 = a2[6];
    *(result + 112) = *(a2 + 14);
    *(result + 96) = v5;
    *(a2 + 13) = 0;
    *(a2 + 14) = 0;
    *(a2 + 12) = 0;
    *(result + 120) = 1;
  }

  *(result + 128) = 0;
  *(result + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    v6 = a2[8];
    *(result + 144) = *(a2 + 18);
    *(result + 128) = v6;
    *(a2 + 17) = 0;
    *(a2 + 18) = 0;
    *(a2 + 16) = 0;
    *(result + 152) = 1;
  }

  *(result + 160) = 0;
  *(result + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    v7 = a2[10];
    *(result + 176) = *(a2 + 22);
    *(result + 160) = v7;
    *(a2 + 21) = 0;
    *(a2 + 22) = 0;
    *(a2 + 20) = 0;
    *(result + 184) = 1;
  }

  *(result + 192) = 0;
  *(result + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    v8 = a2[12];
    *(result + 208) = *(a2 + 26);
    *(result + 192) = v8;
    *(a2 + 25) = 0;
    *(a2 + 26) = 0;
    *(a2 + 24) = 0;
    *(result + 216) = 1;
  }

  *(result + 224) = 1;
  return result;
}

uint64_t sub_10055E1C0(uint64_t result, __n128 *a2)
{
  if (*(result + 224) == a2[14].n128_u8[0])
  {
    if (*(result + 224))
    {

      return sub_10055DFA0(result, a2);
    }
  }

  else if (*(result + 224))
  {
    result = sub_100220D30(result);
    *(result + 224) = 0;
  }

  else
  {

    return sub_10055E030(result, a2);
  }

  return result;
}

void sub_10055E218(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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

void sub_10055E4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_10055E598(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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

void sub_10055E860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_10055E918(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *v15 = 0u;
  v16 = 0u;
  sub_10053E1F4(a2, a1, a3, 0, v15);
  if (BYTE8(v16) == 1)
  {
    v5 = SBYTE7(v16);
    if (SBYTE7(v16) < 0)
    {
      sub_100005F2C(v12, v15[0], v15[1]);
    }

    else
    {
      *v12 = *v15;
      v13 = v16;
    }

    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(&__dst, v12[0], v12[1]);
    }

    else
    {
      __dst = *v12;
      v22 = v13;
    }

    v17 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(__p, __dst, *(&__dst + 1));
    }

    else
    {
      *__p = __dst;
      __p[2] = v22;
    }

    v19 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v17;
      v17 = v19;
      v20 = v6;
      sub_100005978(&v20);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v17;
    v14 = v17;
    v17 = 0;
    sub_100005978(&v17);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    MatchingEAPMethod = DataUtils::getMatchingEAPMethod(v7, v8);
    sub_100005978(&v14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
      if (!MatchingEAPMethod)
      {
LABEL_19:
        if ((v5 & 0x80000000) == 0)
        {
          return;
        }

LABEL_23:
        operator delete(v15[0]);
        return;
      }
    }

    else if (!MatchingEAPMethod)
    {
      goto LABEL_19;
    }

    memset(__p, 0, 24);
    ctu::cf::assign();
    *(&__dst + 7) = *(&__p[1] + 7);
    *&__dst = __p[1];
    v10 = HIBYTE(__p[2]);
    v11 = __p[1];
    *a4 = __p[0];
    *(a4 + 8) = v11;
    *(a4 + 15) = *(&__dst + 7);
    *(a4 + 23) = v10;
    *(a4 + 24) = 1;
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }
}

void sub_10055EB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_100005978(&a21);
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10055EBA4(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v29 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v29)
  {
    v7 = **(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 24));
      v9 = (*(*a1 + 40))(a1);
      v19[0] = 0;
      v19[1] = 0;
      v20 = 0;
      ctu::cf::assign();
      v27 = 0;
      *__p = 0u;
      Count = CFArrayGetCount(theArray);
      *buf = 136316418;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v9;
      LOWORD(v31[0]) = 2080;
      *(v31 + 2) = ", ";
      WORD1(v31[1]) = 2080;
      *(&v31[1] + 4) = __p;
      WORD2(v31[2]) = 2048;
      *(&v31[2] + 6) = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of elements in %s: %lu", buf, 0x3Eu);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = theArray;
    v12 = [(__CFArray *)theArray countByEnumeratingWithState:&v22 objects:v32 count:16, v19[0]];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 objectForKey:@"mschap-username"];
          v17 = [v15 objectForKey:@"mschap-password"];
          memset(v31, 0, 32);
          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(v16, a1, a3, 0, v19);
          sub_10016A270(buf, v19);
          if (v21 == 1 && SHIBYTE(v20) < 0)
          {
            operator delete(v19[0]);
          }

          sub_10053E1F4(v17, a1, a3, 0, v19);
          sub_10016A270(v31, v19);
          if (v21 == 1 && SHIBYTE(v20) < 0)
          {
            operator delete(v19[0]);
          }

          if ((buf[24] & 1) != 0 || (v18 = v31[3], LOBYTE(v31[3]) == 1))
          {
            if ((*(a4 + 24) & 1) == 0)
            {
              v19[0] = 0;
              v19[1] = 0;
              v20 = 0;
              sub_10055DA34(a4, v19);
              __p[0] = v19;
              sub_100220E18(__p);
            }

            sub_10055DAB4(a4, buf);
            v18 = v31[3];
          }

          if ((v18 & 1) != 0 && SHIBYTE(v31[2]) < 0)
          {
            operator delete(v31[0]);
          }

          if (buf[24] == 1 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v12);
    }
  }

  if (v29 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10055EF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, const void *a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a32 == 1)
  {
    sub_100010250(&a31);
  }

  if (*(v35 + 24) == 1)
  {
    a35 = v35;
    sub_100220E18(&a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_10055EFF4(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 224) = 0;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v31 = 0;
  v32 = 0;
  sub_10053F620(a2, a1, a3, 0, &v31);
  if (a2)
  {
    __p = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v22 = 0u;
    *v23 = 0u;
    v20 = 0u;
    *v21 = 0u;
    v18 = 0u;
    *v19 = 0u;
    *v17 = 0u;
    sub_10055DF64(a4, v17);
    if (BYTE8(v30) == 1 && SBYTE7(v30) < 0)
    {
      operator delete(__p);
    }

    if (BYTE8(v28) == 1 && SBYTE7(v28) < 0)
    {
      operator delete(v27);
    }

    if (BYTE8(v26) == 1 && SBYTE7(v26) < 0)
    {
      operator delete(v25);
    }

    if (BYTE8(v24) == 1 && SBYTE7(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (BYTE8(v22) == 1 && SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (BYTE8(v20) == 1 && SBYTE7(v20) < 0)
    {
      operator delete(v19[0]);
    }

    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    theDict = 0;
    v15 = 0;
    v16 = 0;
    if (v32 == 1)
    {
      theDict = v31;
      if (v31)
      {
        CFRetain(v31);
      }

      LOBYTE(v15) = 1;
    }

    v16 = a1;
    Value = CFDictionaryGetValue(theDict, @"dn");
    sub_10053E1F4(Value, a1, @"dn", 0, v17);
    sub_10016A270(a4, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v8 = CFDictionaryGetValue(theDict, @"organization");
    sub_10053E1F4(v8, v16, @"organization", 0, v17);
    sub_10016A270(a4 + 32, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v9 = CFDictionaryGetValue(theDict, @"department");
    sub_10053E1F4(v9, v16, @"department", 0, v17);
    sub_10016A270(a4 + 64, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v10 = CFDictionaryGetValue(theDict, @"city");
    sub_10053E1F4(v10, v16, @"city", 0, v17);
    sub_10016A270(a4 + 96, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v11 = CFDictionaryGetValue(theDict, @"state");
    sub_10053E1F4(v11, v16, @"state", 0, v17);
    sub_10016A270(a4 + 128, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v12 = CFDictionaryGetValue(theDict, @"country");
    sub_10053E1F4(v12, v16, @"country", 0, v17);
    sub_10016A270(a4 + 160, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v13 = CFDictionaryGetValue(theDict, @"email");
    sub_10053E1F4(v13, v16, @"email", 0, v17);
    sub_10016A270(a4 + 192, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    if (v15 == 1)
    {
      sub_10001021C(&theDict);
    }
  }

  if (v32 == 1)
  {
    sub_10001021C(&v31);
  }
}

void sub_10055F438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100220D30(va);
  if (*(v6 - 40) == 1)
  {
    sub_10001021C((v6 - 48));
  }

  if (*(v5 + 224) == 1)
  {
    sub_100220D30(v5);
  }

  _Unwind_Resume(a1);
}

void sub_10055F4B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_10055F51C(uint64_t a1, unsigned __int8 *a2)
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

void sub_10055F620(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055F674(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    v2 = (a1 + 152);
    sub_100557C9C(&v2);
  }

  if (*(a1 + 144) == 1)
  {
    v2 = (a1 + 120);
    sub_100557330(&v2);
  }

  if (*(a1 + 112) == 1)
  {
    v2 = (a1 + 88);
    sub_100556BD0(&v2);
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_10055F74C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055F7A0(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
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

void sub_10055F838(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E560C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055F88C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_10055F8C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56110;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055F918(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_10055F950(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055F9A4(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = (a1 + 24);
  sub_10016C644(&v2);
}

void sub_10055FA64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E561B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FAE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FB38(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    v2 = (a1 + 88);
    sub_1003EA960(&v2);
  }

  if (*(a1 + 80) == 1)
  {
    v2 = (a1 + 56);
    sub_1003EA960(&v2);
  }

  if (*(a1 + 48) == 1)
  {
    v2 = (a1 + 24);
    sub_1003EA960(&v2);
  }
}

void sub_10055FBD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FC2C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v3[1] = v1;
    v3[2] = v2;
    v3[0] = (a1 + 32);
    sub_10022C488(v3);
  }
}

void sub_10055FC8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E562A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FD10(void ***a1)
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
        v6 = v4 - 32;
        v7 = (v4 - 24);
        sub_1003ED090(&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_10055FDAC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E562F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FE30(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_100559C34(a1, i))
  {
    i -= 72;
  }

  *(a1 + 8) = a2;
}

void sub_10055FEA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FF48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56390;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FFCC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100560020(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100560020(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_10055A408(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

void sub_100560094(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E563E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100560110(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100560190(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056023C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100560254(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1004FBF38();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005604D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005604F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100560878(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_1005606FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100560738(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E564D8;
  return result;
}

void *sub_10056081C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E53150;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_100560878(uint64_t result, uint64_t a2, uint64_t a3, void *a4, const void **a5, const void **a6)
{
  v9 = result;
  v10 = *(result + 8);
  if (v10 == 1)
  {
    v12 = a4[1];
    v15[0] = *a4;
    v15[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v14, a5);
    sub_100060E84(&v13, a6);
    sub_100441148(v9, a2, a3, v15, &v14, &v13);
  }

  if (!v10)
  {
    v11 = a4[1];
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E9488(v9, a2, a3, v18, &v17, &v16);
  }

  return result;
}

void sub_100560994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005609BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x1005609B4);
  }

  JUMPOUT(0x1005609B0);
}

void sub_1005609FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100560A7C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100560B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100560B40(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1004FBF38();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100560DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100560DE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100561094(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100560FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100561024(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E565C0;
  return result;
}

uint64_t sub_100561094(uint64_t result, uint64_t a2, uint64_t a3, void *a4, const void **a5, const void **a6)
{
  v9 = result;
  v10 = *(result + 8);
  if (v10 == 1)
  {
    v12 = a4[1];
    v15[0] = *a4;
    v15[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v14, a5);
    sub_100060E84(&v13, a6);
    sub_1004412F4(v9, a2, a3, v15, &v14, &v13);
  }

  if (!v10)
  {
    v11 = a4[1];
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E965C(v9, a2, a3, v18, &v17, &v16);
  }

  return result;
}

void sub_1005611B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005611D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x1005611D0);
  }

  JUMPOUT(0x1005611CCLL);
}

void sub_100561218(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100561298(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_1005612D0(uint64_t a1@<X0>, int a2@<W1>, const __CFDictionary *a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (a2 != 6000)
  {
    v8 = **(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**(a1 + 24));
      v10 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v12 = 2080;
      v13 = v10;
      v14 = 2080;
      v15 = ", ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
    }

LABEL_7:
    sub_1005619B4();
  }

  sub_1005410A0(a3, a1, a4, buf);
  v7 = *&buf[8];
  if (*buf)
  {
    goto LABEL_7;
  }

  *a5 = 0;
  a5[1] = 0;
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_100561460(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10055AED8();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005616E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100561704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100561A84(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100561908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100561944(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E566A8;
  return result;
}

void *sub_100561A28(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E55AB0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100561A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E6500(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100561BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100561BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100561BC0);
  }

  JUMPOUT(0x100561BBCLL);
}

void sub_100561C08(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E566E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100561C88(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100561CC0(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100541860();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005623A4();
}

void sub_100561E50(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005624F4();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005620D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005620F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_1005625C4(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_1005622F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100562334(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E567C0;
  return result;
}

void *sub_100562418(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56800;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100562494(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56800;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100562568(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56800;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005625C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E66D4(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_1005626E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100562708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100562700);
  }

  JUMPOUT(0x1005626FCLL);
}

void sub_100562748(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005627C8(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100562800(uint64_t a1, int a2)
{
  if (sub_100541E50(a1, a2))
  {
    sub_100541F78();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100562EF0();
}

void sub_10056299C(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100563040();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100562C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100562C40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100563110(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100562E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100562E80(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56928;
  return result;
}

void *sub_100562F64(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56968;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100562FE0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1005630B4(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56968;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100563110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E68A8(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056322C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100563254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056324CLL);
  }

  JUMPOUT(0x100563248);
}

void sub_100563294(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E569B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100563314(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056334C(uint64_t a1, int a2)
{
  if (sub_100541E50(a1, a2))
  {
    sub_1005433E0();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100563A8C();
}

void sub_1005634E8(uint64_t a1@<X0>, __int128 *a2@<X1>, CFDictionaryRef *a3@<X2>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v10 = **(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(**(a1 + 24));
    v12 = (*(*a1 + 40))(a1);
    v13 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v25 = 2080;
    v26 = v12;
    v27 = 2080;
    v28 = ", ";
    v29 = 2080;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v21 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (v21)
  {
    v14 = *(v21 + 32);
    v22 = *(v21 + 24);
    v23 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v14 = 0;
    v22 = 0;
    v23 = 0;
  }

  sub_100543158(*a3, a1, &v22, buf);
  if (!v21)
  {
    if (v14)
    {
      sub_100004A34(v14);
    }

    sub_100563B5C();
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *buf;
  v16 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v21 + 32);
  *(v21 + 24) = v15;
  *(v21 + 32) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  v18 = *a4;
  v19 = a4[1];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = *(v21 + 16);
  *(v21 + 8) = v18;
  *(v21 + 16) = v19;
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  *a5 = v21;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005637A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005637DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100563C2C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_1005639E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100563A1C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56A90;
  return result;
}

void *sub_100563B00(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4A8B0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void *sub_100563BD0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4A8B0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100563C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E6A7C(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100563D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100563D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100563D68);
  }

  JUMPOUT(0x100563D64);
}

void sub_100563DB0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56AD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100563E30(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100563E68(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100544154();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056454C();
}

void sub_100563FF8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056469C();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100564278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056429C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056476C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_1005644A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_1005644DC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56BA8;
  return result;
}

void *sub_1005645C0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56BE8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056463C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100564710(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56BE8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E6C50(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100564888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005648B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x1005648A8);
  }

  JUMPOUT(0x1005648A4);
}

void sub_1005649A4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100564A24(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100564A5C(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100544BB0();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100565144();
}

void sub_100564BF0(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100565294();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100564E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100564E94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100565364(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100565098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_1005650D4(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56CE0;
  return result;
}

void *sub_1005651B8(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56D20;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100565234(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56D20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100565308(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56D20;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100565364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E6E24(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100565480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005654A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x1005654A0);
  }

  JUMPOUT(0x10056549CLL);
}

void sub_10056559C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56D70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056561C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100565654(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100544FC0();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100565D3C();
}

void sub_1005657E8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100565E8C();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100565A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100565A8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100565F5C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100565C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100565CCC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56E18;
  return result;
}

void *sub_100565DB0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56E58;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100565E2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56E58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100565F00(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56E58;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100565F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E6FF8(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100566078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005660A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100566098);
  }

  JUMPOUT(0x100566094);
}

void sub_1005660E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100566160(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100566198(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100548C40();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056687C();
}

void sub_100566328(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005669CC();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005665A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005665CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100566A9C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_1005667D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056680C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56F80;
  return result;
}

void *sub_1005668F0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56FC0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056696C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56FC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100566A40(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56FC0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100566A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E71CC(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100566BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100566BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100566BD8);
  }

  JUMPOUT(0x100566BD4);
}

void *sub_100566C84(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57010;
  sub_100567474(a1 + 3, a2, *a3, a4);
  a1[9] = @"provisioned-devices-limit";
  a1[10] = @"device-list";
  a1[11] = @"unique-id";
  a1[12] = @"display-name";
  a1[13] = @"ims-private-identity";
  a1[14] = @"ims-public-identity";
  a1[3] = off_101E57060;
  return a1;
}

void sub_100566D48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100566DC8(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100566E00(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054EA70();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005674E4();
}

void sub_100566F90(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100567634();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100567210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100567234(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100567704(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100567438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100567474(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E570B8;
  return result;
}

void *sub_100567558(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E570F8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005675D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E570F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1005676A8(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E570F8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100567704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E73A0(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100567820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100567848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100567840);
  }

  JUMPOUT(0x10056783CLL);
}

void sub_100567888(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100567908(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100567940(uint64_t a1, int a2)
{
  if (a2 != 6000 && a2 != 6012)
  {
    v4 = **(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 24));
      v7 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v9 = 2080;
      v10 = v7;
      v11 = 2080;
      v12 = ", ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
    }

    sub_1005681A8();
  }

  sub_10056802C();
}

void sub_100567AD8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005682F8();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100567D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100567D7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_1005683C8(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100567F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100567FBC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57220;
  return result;
}

void sub_100568100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000296E0(va);
  sub_100004A34(v3);
  _Unwind_Resume(a1);
}

void sub_100568148(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056821C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E572B0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100568298(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E572B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056836C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E572B0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005683C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E7574(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_1005684E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056850C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100568504);
  }

  JUMPOUT(0x100568500);
}

void sub_10056854C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005685CC(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100568604(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100568CEC();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005681A8();
}

void sub_100568798(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005682F8();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100568A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100568A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100568DE8(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100568C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100568C7C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E573D8;
  return result;
}

void sub_100568DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000296E0(va);
  sub_100004A34(v3);
  _Unwind_Resume(a1);
}

void sub_100568DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E7748(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100568F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100568F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100568F24);
  }

  JUMPOUT(0x100568F20);
}

void *sub_100568FD0(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57418;
  sub_1005690E8((a1 + 3), a2, *a3, a4);
  a1[3] = off_101E57468;
  return a1;
}

void sub_10056906C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005690E8(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = sub_10056988C(a1, a2, a3, a4);
  *v5 = off_101E554F8;
  v5[6] = @"account-info-response";
  v5[7] = @"usage-info";
  v5[8] = @"subscription-info";
  v6 = objc_opt_new();
  *(a1 + 72) = v6;
  if (v6)
  {
    v7 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    [*(a1 + 72) setLocale:v7];
    [*(a1 + 72) setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ssz"];
    [*(a1 + 72) setTimeZone:{+[NSTimeZone timeZoneForSecondsFromGMT:](NSTimeZone, "timeZoneForSecondsFromGMT:", 0)}];
  }

  return a1;
}

void sub_1005691E0(uint64_t a1)
{
  sub_1005453D0(a1);

  operator delete();
}

void sub_100569218(const void **a1@<X0>, int a2@<W1>, const __CFDictionary *a3@<X2>, void *a4@<X8>)
{
  if (a2 != 6000)
  {
    v7 = *a1[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(*a1[3]);
      v9 = (*(*a1 + 5))(a1);
      *buf = 136315906;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v11 = 2080;
      v12 = v9;
      v13 = 2080;
      v14 = ", ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
    }

LABEL_7:
    sub_1005698FC();
  }

  sub_100545434(a3, a1, buf);
  v6 = *&buf[8];
  if (*buf)
  {
    goto LABEL_7;
  }

  *a4 = 0;
  a4[1] = 0;
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1005693A8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100569A4C();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100569628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056964C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100569B1C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100569850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056988C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E574C0;
  return result;
}

void *sub_100569970(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57500;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005699EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100569AC0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57500;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100569B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E791C(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100569C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100569C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100569C58);
  }

  JUMPOUT(0x100569C54);
}

void sub_100569CA0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100569D20(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100569D58(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    operator new();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056A45C();
}

void sub_100569EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100569F08(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056A5AC();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056A188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056A1AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056A67C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056A3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056A3EC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57628;
  return result;
}

void *sub_10056A4D0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57668;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056A54C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056A620(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57668;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056A67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E7AF0(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056A798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056A7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056A7B8);
  }

  JUMPOUT(0x10056A7B4);
}

void sub_10056A800(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E576B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056A880(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056A8B8(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100547088();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056AF9C();
}

void sub_10056AA48(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056B0EC();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056ACEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056B1BC(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056AEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056AF2C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57790;
  return result;
}

void *sub_10056B010(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E577D0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056B08C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E577D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056B160(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E577D0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056B1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E7CC4(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056B2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056B2F8);
  }

  JUMPOUT(0x10056B2F4);
}

void sub_10056B340(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056B3C0(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056B3F8(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100548FC8();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056BADC();
}

void sub_10056B588(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056BC2C();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056B808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056B82C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056BCFC(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056BA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056BA6C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E578C8;
  return result;
}

void *sub_10056BB50(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57908;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056BBCC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056BCA0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57908;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056BCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E7E98(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056BE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056BE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056BE38);
  }

  JUMPOUT(0x10056BE34);
}

void sub_10056BE80(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056BF00(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056BF38(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054A704();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056C61C();
}

void sub_10056C0C8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056C76C();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056C348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056C36C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056C83C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056C570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056C5AC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57A30;
  return result;
}

void *sub_10056C690(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57A70;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056C70C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056C7E0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57A70;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056C83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E806C(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056C958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056C980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056C978);
  }

  JUMPOUT(0x10056C974);
}

void sub_10056C9C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57AC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056CA40(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056CA78(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054AA08();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056D15C();
}

void sub_10056CC08(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056D2AC();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056CE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056CEAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056D37C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056D0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056D0EC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57B98;
  return result;
}

void *sub_10056D1D0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57BD8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056D24C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57BD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056D320(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57BD8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056D37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8240(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056D498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056D4B8);
  }

  JUMPOUT(0x10056D4B4);
}

void sub_10056D500(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57C28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056D580(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056D5B8(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054AB64();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056DC9C();
}

void sub_10056D748(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056DDEC();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056D9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056D9EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056DEBC(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056DBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056DC2C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57D00;
  return result;
}

void *sub_10056DD10(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57D40;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056DD8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056DE60(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57D40;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8414(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056DFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056E000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056DFF8);
  }

  JUMPOUT(0x10056DFF4);
}

void sub_10056E040(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056E0C0(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056E0F8(uint64_t a1, int a2)
{
  if (sub_10054ACC0(a1, a2))
  {
    sub_10054ADEC();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056E7E8();
}

void sub_10056E294(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056E938();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056E514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056E538(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056EA08(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056E73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056E778(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57E68;
  return result;
}

void *sub_10056E85C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57EA8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056E8D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056E9AC(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57EA8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056EA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E85E8(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056EB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056EB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056EB44);
  }

  JUMPOUT(0x10056EB40);
}

void sub_10056EB8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056EC0C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056EC44(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054DE58();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056F328();
}

void sub_10056EDD4(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056F478();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056F054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056F078(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056F548(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056F27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056F2B8(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E57FA0;
  return result;
}

void *sub_10056F39C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57FE0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056F418(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E57FE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10056F4EC(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E57FE0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056F548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E87BC(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056F664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10056F68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056F684);
  }

  JUMPOUT(0x10056F680);
}

void sub_10056F6CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056F74C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056F784(uint64_t a1, int a2)
{
  if (sub_10054BD4C(a1, a2))
  {
    sub_10054BE78();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056FE74();
}

void sub_10056F920(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056FFC4();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10056FBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056FBC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100570094(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10056FDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10056FE04(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E58108;
  return result;
}
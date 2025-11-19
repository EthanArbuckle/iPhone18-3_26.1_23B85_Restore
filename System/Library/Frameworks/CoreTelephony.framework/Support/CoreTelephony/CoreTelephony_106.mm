void sub_1006EBCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_100190B88(&a27);

  sub_10019075C(v28);
  _Unwind_Resume(a1);
}

void sub_1006EBDBC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (v2 && (v23 = v2, [v2 list], v3 = objc_claimAutoreleasedReturnValue(), v3, v2 = v23, v3))
  {
    v33 = 0uLL;
    v34 = 0;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = [v23 list];
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v5)
    {
      v6 = *v30;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          if (v8)
          {
            v9 = [*(*(&v29 + 1) + 8 * i) header];
            v10 = v9;
            sub_10000501C(v25, [v9 UTF8String]);
            v11 = [v8 value];
            v12 = v11;
            sub_10000501C(&__p, [v11 UTF8String]);
            v13 = *(&v33 + 1);
            if (*(&v33 + 1) >= v34)
            {
              v16 = 0xAAAAAAAAAAAAAAABLL * ((*(&v33 + 1) - v33) >> 4);
              v17 = v16 + 1;
              if (v16 + 1 > 0x555555555555555)
              {
                sub_1000CE3D4();
              }

              if (0x5555555555555556 * ((v34 - v33) >> 4) > v17)
              {
                v17 = 0x5555555555555556 * ((v34 - v33) >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v18 = 0x555555555555555;
              }

              else
              {
                v18 = v17;
              }

              v35[4] = &v33;
              if (v18)
              {
                sub_1001904B4(&v33, v18);
              }

              v19 = 16 * ((*(&v33 + 1) - v33) >> 4);
              v35[0] = 0;
              v35[1] = v19;
              v35[3] = 0;
              v20 = *v25;
              *(v19 + 16) = v26;
              *v19 = v20;
              v25[1] = 0;
              v26 = 0;
              v25[0] = 0;
              v21 = __p;
              *(v19 + 40) = v28;
              *(v19 + 24) = v21;
              v28 = 0;
              __p = 0uLL;
              v35[2] = 48 * v16 + 48;
              sub_1006FAE88(&v33, v35);
              v22 = *(&v33 + 1);
              sub_1001C7794(v35);
              *(&v33 + 1) = v22;
              if (SHIBYTE(v28) < 0)
              {
                operator delete(__p);
              }
            }

            else
            {
              v14 = *v25;
              *(*(&v33 + 1) + 16) = v26;
              *v13 = v14;
              v25[1] = 0;
              v26 = 0;
              v25[0] = 0;
              v15 = v28;
              *(v13 + 24) = __p;
              *(v13 + 40) = v15;
              v28 = 0;
              __p = 0uLL;
              *(&v33 + 1) = v13 + 48;
            }

            if (SHIBYTE(v26) < 0)
            {
              operator delete(v25[0]);
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v5);
    }

    *a2 = v33;
    *(a2 + 16) = v34;
    v34 = 0;
    v33 = 0uLL;
    *(a2 + 24) = 1;
    v25[0] = &v33;
    sub_100190608(v25);
    v2 = v23;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }
}

void sub_1006EC0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  __p = &a28;
  sub_100190608(&__p);

  _Unwind_Resume(a1);
}

uint64_t sub_1006EC17C(uint64_t a1)
{
  if (*(a1 + 576) == 1)
  {
    v3 = (a1 + 552);
    sub_100190608(&v3);
  }

  if (*(a1 + 544) == 1)
  {
    v3 = (a1 + 520);
    sub_10019029C(&v3);
  }

  if (*(a1 + 512) == 1)
  {
    v3 = (a1 + 488);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 224);
  if (*(a1 + 216) == 1)
  {
    sub_100190B88(a1);
  }

  return a1;
}

void sub_1006EC850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56, uint64_t a57, std::__shared_weak_count *a58)
{
  if (a56)
  {
    sub_100004A34(a56);
  }

  if (a58)
  {
    sub_100004A34(a58);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006EC9E0(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 56);
    sub_100190608(&v3);
  }

  if (*(a1 + 48) == 1)
  {
    v3 = (a1 + 24);
    sub_10019029C(&v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1006ED108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  sub_1006ED278(&STACK[0x290]);
  if (a52)
  {
    sub_100004A34(a52);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006ED278(uint64_t a1)
{
  if (*(a1 + 384) == 1)
  {
    sub_1002AF7A0(a1 + 104);
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1006ED84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, char a31)
{
  sub_10067A5EC(&a17);
  sub_1006FAF68(&a31);
  if (a30)
  {
    sub_100004A34(a30);
  }

  _Unwind_Resume(a1);
}

void sub_1006EE098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_objecta, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  sub_1006EE2D8(&a47);
  if (a67 == 1 && a66 < 0)
  {
    operator delete(__p);
  }

  if (a69)
  {
    sub_100004A34(a69);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006EE2D8(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    v3 = (a1 + 80);
    sub_100190608(&v3);
  }

  if (*(a1 + 72) == 1)
  {
    v3 = (a1 + 48);
    sub_10019029C(&v3);
  }

  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006EE7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    sub_100004A34(a28);
  }

  _Unwind_Resume(a1);
}

void sub_1006EECE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    sub_100004A34(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1006EF3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  if (a13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1006EFBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  if (a13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1006F0660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  if (a63 == 1 && a62 < 0)
  {
    operator delete(__p);
  }

  sub_1006ACCB8(&a17);
  if (a53 == 1 && a52 < 0)
  {
    operator delete(a47);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  a40 = &a35;
  sub_1006ACCB8(&a40);
  if (a39)
  {
    sub_100004A34(a39);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F08C0(uint64_t a1)
{
  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v3 = (a1 + 64);
  sub_1006ACCB8(&v3);
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1006F12D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62, uint64_t a63)
{
  if (a72 == 1 && a71 < 0)
  {
    operator delete(__p);
  }

  sub_1006ACCB8(&a20);
  if (a62 == 1 && a61 < 0)
  {
    operator delete(a56);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  a49 = &a44;
  sub_1006ACCB8(&a49);
  if (a48)
  {
    sub_100004A34(a48);
  }

  _Unwind_Resume(a1);
}

void sub_1006F1940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a23 == 1 && a21 == 1)
  {
    __p = &a18;
    sub_10019029C(&__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1006F1FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a50)
  {
    sub_100004A34(a50);
  }

  _Unwind_Resume(a1);
}

void sub_1006F2118(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 64) = 0;
  v10 = v3;
  v4 = [v3 destination];

  if (v4)
  {
    v5 = [v10 destination];
    sub_100016890(a2, [v5 UTF8String]);
  }

  v6 = [v10 focus];

  if (v6)
  {
    v7 = [v10 focus];
    sub_100016890((a2 + 24), [v7 UTF8String]);
  }

  v8 = [v10 conversationID];

  if (v8)
  {
    v9 = [v10 conversationID];
    sub_100016890((a2 + 48), [v9 UTF8String]);
  }
}

void sub_1006F2238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_1000CFBA0(v10);

  _Unwind_Resume(a1);
}

void sub_1006F2A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  sub_1006ED278(&STACK[0x270]);
  if (a48)
  {
    sub_100004A34(a48);
  }

  _Unwind_Resume(a1);
}

void sub_1006F3644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, int a17, char a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28)
{
  if (a18)
  {

    if (!a25)
    {
      goto LABEL_6;
    }
  }

  else if (!a25)
  {
LABEL_6:

    if (a24)
    {
    }

    if (a21)
    {
    }

    _Unwind_Resume(a1);
  }

  goto LABEL_6;
}

void sub_1006F40D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_10019075C(&a40);
  if (STACK[0x308])
  {
    sub_100004A34(STACK[0x308]);
  }

  _Unwind_Resume(a1);
}

void sub_1006F493C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_1006B2728(&a59);
  if (STACK[0x208])
  {
    sub_100004A34(STACK[0x208]);
  }

  _Unwind_Resume(a1);
}

void sub_1006F5074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (a40)
  {
    sub_100004A34(a40);
  }

  _Unwind_Resume(a1);
}

void sub_1006F51D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = v3;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (v3)
  {
    v5 = [v3 memberList];
    if (v5)
    {
      v6 = [v4 memberList];
      v7 = [v6 count];

      if (v7)
      {
        v8 = [v4 memberList];
        v9 = [v8 count];

        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = [v4 memberList];
            v12 = [v11 objectAtIndex:i];

            if (v12)
            {
              v13 = [v12 role];
              if (v13 == -1)
              {
                v14 = -1;
              }

              else
              {
                v14 = v13 == 1;
              }

              v15 = [v12 member];
              sub_10000501C(__p, [v15 UTF8String]);
              v23 = v14;
              v24 = 0;
              v16 = *(a2 + 32);
              if (v16 >= *(a2 + 40))
              {
                v19 = sub_1006AD550(a2 + 24, __p);
                v20 = SHIBYTE(v22);
                *(a2 + 32) = v19;
                if (v20 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                v17 = *__p;
                *(v16 + 16) = v22;
                *v16 = v17;
                __p[1] = 0;
                v22 = 0;
                __p[0] = 0;
                v18 = v24;
                *(v16 + 24) = v23;
                *(v16 + 28) = v18;
                *(a2 + 32) = v16 + 32;
              }
            }
          }
        }
      }
    }
  }
}

void sub_1006F5370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1000D2230(v15);

  _Unwind_Resume(a1);
}

void sub_1006F598C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (a40)
  {
    sub_100004A34(a40);
  }

  _Unwind_Resume(a1);
}

void sub_1006F622C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *__p, uint64_t a46)
{
  if (__p)
  {
    a46 = __p;
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_1000D3454(&a27);
  if (a38)
  {
    sub_100004A34(a38);
  }

  _Unwind_Resume(a1);
}

void sub_1006F69D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17)
{
  if (a16)
  {
  }

  if (a17)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F79E0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 72) == 1)
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
    sub_100015184(a1 + 24, (a2 + 24));
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v5 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v5;
    *(a2 + 71) = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v7;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_1006F7F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(a1);
}

void sub_1006F8398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1006F86F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1006F8AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1006F8F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32)
{
  if (a30)
  {
    sub_100004A34(a30);
  }

  _Unwind_Resume(a1);
}

void sub_1006F907C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = [v3 list];
  v5 = [v4 count];

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [v3 list];
      v8 = [v7 objectAtIndex:i];

      if (v8)
      {
        *__p = 0u;
        v17 = 0u;
        memset(v15, 0, sizeof(v15));
        *v13 = 0u;
        v14 = 0u;
        *v12 = 0u;
        v9 = [v8 uri];
        sub_10000501C(v12, [v9 UTF8String]);
        BYTE8(v15[0]) = 0;
        LOBYTE(__p[0]) = 0;
        v17 = 0uLL;
        __p[1] = 0;
        v14 = 0uLL;
        v13[1] = 0;
        LOBYTE(v15[0]) = 0;

        v10 = *(a2 + 8);
        if (v10 >= *(a2 + 16))
        {
          v11 = sub_1006FB104(a2, v12);
        }

        else
        {
          sub_1006FB24C(*(a2 + 8), v12);
          v11 = v10 + 112;
        }

        *(a2 + 8) = v11;
        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[1]);
        }

        if (LOBYTE(__p[0]) == 1)
        {
          v18 = v15 + 1;
          sub_1000087B4(&v18);
        }

        if (SHIBYTE(v14) < 0)
        {
          operator delete(v13[1]);
        }

        if (SHIBYTE(v13[0]) < 0)
        {
          operator delete(v12[0]);
        }
      }
    }
  }
}

void sub_1006F9200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_1006FB6F8(&a9);

  _Unwind_Resume(a1);
}

void sub_1006F9744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, std::__shared_weak_count *a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  sub_1006EE2D8(&a38);
  if (a35 == 1 && a34 < 0)
  {
    operator delete(__p);
  }

  if (a37)
  {
    sub_100004A34(a37);
  }

  _Unwind_Resume(a1);
}

void sub_1006F9E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_10019075C(&a27);
  if (STACK[0x2A0])
  {
    sub_100004A34(STACK[0x2A0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F9FAC(uint64_t a1)
{
  if (*(a1 + 688) == 1)
  {
    if (*(a1 + 680) == 1 && *(a1 + 679) < 0)
    {
      operator delete(*(a1 + 656));
    }

    if (*(a1 + 655) < 0)
    {
      operator delete(*(a1 + 632));
    }

    if (*(a1 + 631) < 0)
    {
      operator delete(*(a1 + 608));
    }

    if (*(a1 + 592) == 1)
    {
      v3 = (a1 + 568);
      sub_100191E28(&v3);
    }

    sub_1006FA044(a1);
  }

  return a1;
}

uint64_t sub_1006FA044(uint64_t a1)
{
  if (*(a1 + 560) == 1)
  {
    v3 = (a1 + 536);
    sub_1001C6984(&v3);
  }

  if (*(a1 + 528) == 1 && *(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  if (*(a1 + 496) == 1 && *(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  if (*(a1 + 464) == 1 && *(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 432) == 1 && *(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  if (*(a1 + 400) == 1 && *(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  if (*(a1 + 336) == 1 && *(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 304) == 1 && *(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 272) == 1)
  {
    sub_1006FA180(a1);
  }

  return a1;
}

uint64_t sub_1006FA180(uint64_t a1)
{
  if (*(a1 + 264) == 1)
  {
    v3 = (a1 + 240);
    sub_1001C6984(&v3);
  }

  if (*(a1 + 232) == 1)
  {
    v3 = (a1 + 208);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 200) == 1 && *(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 160) == 1)
  {
    v3 = (a1 + 136);
    sub_1006FA290(&v3);
  }

  if (*(a1 + 128) == 1)
  {
    v3 = (a1 + 104);
    sub_1006FA34C(&v3);
  }

  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    sub_1006FA290(&v3);
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_1006FA290(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006FA2E4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1006FA2E4(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = v4;
    v4 -= 5;
    if (*(v5 - 16) == 1 && *(v5 - 17) < 0)
    {
      operator delete(*v4);
    }
  }

  *(a1 + 8) = a2;
}

void sub_1006FA34C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006FA3A0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1006FA3A0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    if (*(i - 16) == 1)
    {
      if (*(i - 24) == 1)
      {
        v4 = *(i - 48);
        if (v4)
        {
          *(i - 40) = v4;
          operator delete(v4);
        }
      }

      if (*(i - 49) < 0)
      {
        operator delete(*(i - 72));
      }
    }
  }

  a1[1] = v2;
}

uint64_t sub_1006FA418(uint64_t a1)
{
  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 448) == 1)
  {
    v3 = (a1 + 424);
    sub_1000087B4(&v3);
    if (*(a1 + 423) < 0)
    {
      operator delete(*(a1 + 400));
    }
  }

  sub_1006FA4B0(a1 + 152);
  if (*(a1 + 104) == 1 && *(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

uint64_t sub_1006FA4B0(uint64_t a1)
{
  if (*(a1 + 216) == 1)
  {
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
  }

  return a1;
}

id sub_1006FA56C(void *a1)
{
  v1 = a1;
  v2 = [v1 era];
  v3 = [v2 unsignedLongLongValue];
  v4 = [v1 epoch];
  [v4 unsignedLongLongValue];

  return v3;
}

uint64_t sub_1006FA608(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 40) == 1)
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
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t sub_1006FA698(uint64_t a1)
{
  if (*(a1 + 1120) == 1)
  {
    sub_1006A9CB8(a1 + 232);
    if (*(a1 + 208) == 1 && *(a1 + 191) < 0)
    {
      operator delete(*(a1 + 168));
    }

    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    sub_10067AA50(a1 + 8);
  }

  return a1;
}

uint64_t sub_1006FA704(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1006AD18C(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  v19 = 0uLL;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(96 * v2 + 0x30) = 0;
  *(v7 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v10 = a2[3];
    *(96 * v2 + 0x40) = *(a2 + 8);
    *(96 * v2 + 0x30) = v10;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(96 * v2 + 0x48) = *(a2 + 72);
    *(96 * v2 + 0x58) = 1;
  }

  *&v19 = v7 + 96;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  sub_1006FA88C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1006FAA14(&v17);
  return v16;
}

void sub_1006FA878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1006FAA14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 == a3)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2 + 48;
    do
    {
      v8 = *(v7 - 48);
      *(a4 + 16) = *(v7 - 32);
      *a4 = v8;
      *(v7 - 40) = 0;
      *(v7 - 32) = 0;
      *(v7 - 48) = 0;
      v9 = *(v7 - 24);
      v10 = *(v7 - 8);
      *(a4 + 48) = 0;
      *(a4 + 40) = v10;
      *(a4 + 24) = v9;
      *(a4 + 88) = 0;
      if (*(v7 + 40) == 1)
      {
        v11 = *v7;
        *(a4 + 64) = *(v7 + 16);
        *(a4 + 48) = v11;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(a4 + 72) = *(v7 + 24);
        *(a4 + 88) = 1;
      }

      v12 = v7 - 48;
      a4 += 96;
      v7 += 96;
    }

    while (v12 + 96 != a3);
    v17 = a4;
    LOBYTE(v15) = 1;
    while (v5 != a3)
    {
      sub_1006FA9B0(a1, v5);
      v5 += 96;
    }
  }

  return sub_1006AD04C(v14);
}

void sub_1006FA9B0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) == 1 && *(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_1006FAA14(uint64_t a1)
{
  sub_1006FAA4C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1006FAA4C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    sub_1006FA9B0(v5, v4 - 96);
  }
}

void sub_1006FAA94(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    *__p = 0u;
    v23 = 0u;
    *v20 = 0u;
    v21 = 0u;
    *v18 = 0u;
    v19 = 0u;
    memset(v17, 0, sizeof(v17));
    if ([v3 algorithm])
    {
      *a2 = 0;
      *(a2 + 128) = 0;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      LODWORD(v17[0]) = 0;
      [v4 key];
      v24 = 0uLL;
      v25 = 0;
      ctu::cf::assign();
      v5 = 0uLL;
      if (v17[1])
      {
        v17[2] = v17[1];
        v13 = 0uLL;
        operator delete(v17[1]);
        v5 = 0uLL;
      }

      *&v17[1] = v5;
      v17[3] = 0;
      v6 = [v4 nonce];

      if (v6)
      {
        [v4 nonce];
        v24 = 0uLL;
        v25 = 0;
        ctu::cf::assign();
        *v15 = 0uLL;
        v16 = 0;
        sub_1001E9734(v18, v15);
        if (v15[0])
        {
          v15[1] = v15[0];
          operator delete(v15[0]);
        }
      }

      v7 = [v4 aad];

      if (v7)
      {
        [v4 aad];
        v24 = 0uLL;
        v25 = 0;
        ctu::cf::assign();
        *v15 = v24;
        v16 = v25;
        sub_1001E9734(v20, v15);
        if (v15[0])
        {
          v15[1] = v15[0];
          operator delete(v15[0]);
        }
      }

      [v4 authTag];
      v24 = 0uLL;
      v25 = 0;
      ctu::cf::assign();
      v8 = v24;
      v9 = v25;
      if (__p[0])
      {
        __p[1] = __p[0];
        v14 = v24;
        operator delete(__p[0]);
        v8 = v14;
      }

      *__p = v8;
      *&v23 = v9;
      v10 = [v4 originalFileSizeInBytes];
      LODWORD(v24) = 0;
      ctu::cf::assign(&v24, v10, v11);
      v12 = v24;
      DWORD2(v23) = v24;
      *a2 = v17[0];
      *(a2 + 8) = *&v17[1];
      *(a2 + 24) = v17[3];
      memset(&v17[1], 0, 24);
      *(a2 + 32) = 0;
      *(a2 + 56) = 0;
      if (BYTE8(v19) == 1)
      {
        *(a2 + 32) = *v18;
        *(a2 + 48) = v19;
        v18[1] = 0;
        *&v19 = 0;
        v18[0] = 0;
        *(a2 + 56) = 1;
      }

      *(a2 + 64) = 0;
      *(a2 + 88) = 0;
      if (BYTE8(v21) == 1)
      {
        *(a2 + 64) = *v20;
        *(a2 + 80) = v21;
        v20[1] = 0;
        *&v21 = 0;
        v20[0] = 0;
        *(a2 + 88) = 1;
      }

      *(a2 + 96) = *__p;
      *(a2 + 112) = v23;
      __p[1] = 0;
      *&v23 = 0;
      __p[0] = 0;
      *(a2 + 120) = v12;
      *(a2 + 128) = 1;
    }

    if (BYTE8(v21) == 1 && v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }

    if (BYTE8(v19) == 1 && v18[0])
    {
      v18[1] = v18[0];
      operator delete(v18[0]);
    }

    if (v17[1])
    {
      v17[2] = v17[1];
      operator delete(v17[1]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 128) = 0;
  }
}

void sub_1006FAD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100190B0C(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_1006FADF4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 216) == 1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 8), (a2 + 8));
    std::string::operator=((a1 + 32), (a2 + 32));
    std::string::operator=((a1 + 56), (a2 + 56));
    sub_1006AA72C(a1 + 80, a2 + 80);
  }

  else
  {
    sub_100190828(a1, a2);
    *(a1 + 216) = 1;
  }

  return a1;
}

void sub_1006FAE88(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v10;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      v8 += 48;
    }

    while (v7 != v5);
    do
    {
      sub_1000DD108(v4);
      v4 += 48;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_1006FAF68(uint64_t a1)
{
  if (*(a1 + 200) == 1 && *(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 56);
    sub_1000087B4(&v3);
  }

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

uint64_t sub_1006FB00C(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

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

uint64_t sub_1006FB07C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006ACF10(result, a4);
  }

  return result;
}

void sub_1006FB0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1006ACCB8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FB104(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1006FB3C4(a1, v6);
  }

  v13 = 0;
  v14 = 112 * v2;
  sub_1006FB24C((112 * v2), a2);
  v15 = (112 * v2 + 112);
  v7 = *(a1 + 8);
  v8 = 112 * v2 + *a1 - v7;
  sub_1006FB420(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1006FB678(&v13);
  return v12;
}

void sub_1006FB238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1006FB678(va);
  _Unwind_Resume(a1);
}

char *sub_1006FB24C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  __dst[48] = *(a2 + 48);
  sub_1006FB368((__dst + 56), a2 + 56);
  if (*(a2 + 111) < 0)
  {
    sub_100005F2C(__dst + 88, *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v6 = *(a2 + 88);
    *(__dst + 13) = *(a2 + 13);
    *(__dst + 88) = v6;
  }

  return __dst;
}

void sub_1006FB314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 80) == 1)
  {
    sub_1000087B4(&a10);
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FB368(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1002219CC(a1, a2);
  return a1;
}

void sub_1006FB3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1000087B4(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FB3C4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1006FB420(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_1006FB4E4(a4, v7);
      v7 += 7;
      a4 = v12 + 112;
      v12 += 112;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_1006FB578(a1, v5);
      v5 += 112;
    }
  }

  return sub_1006FB5EC(v9);
}

__n128 sub_1006FB4E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = *(a2 + 48);
  *(a1 + 56) = 0;
  *(a1 + 48) = v4;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(a1 + 80) = 1;
  }

  result = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 88) = result;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 11) = 0;
  return result;
}

void sub_1006FB578(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 80) == 1)
  {
    v3 = (a2 + 56);
    sub_1000087B4(&v3);
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_1006FB5EC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1006FB624(a1);
  }

  return a1;
}

void sub_1006FB624(uint64_t *a1)
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
      v3 -= 112;
      sub_1006FB578(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1006FB678(uint64_t a1)
{
  sub_1006FB6B0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1006FB6B0(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 112;
    sub_1006FB578(v5, v4 - 112);
  }
}

void sub_1006FB6F8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006FB74C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1006FB74C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1006FB578(a1, i))
  {
    i -= 112;
  }

  *(a1 + 8) = a2;
}

uint64_t sub_1006FB858(uint64_t a1)
{
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "call.state");
  sub_1006FB8DC(a1, "call::model::CallState", QOS_CLASS_USER_INITIATED, &v3);
  ctu::OsLogContext::~OsLogContext(&v3);
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  return a1;
}

void *sub_1006FB8DC(void *a1, const char *a2, dispatch_qos_class_t qos_class, const OsLogContext *a4)
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

  ctu::OsLogLogger::OsLogLogger(v11, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  return a1;
}

void sub_1006FB97C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void *sub_1006FB9A4(void *a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 4));

  return sub_1000C0544(a1);
}

void sub_1006FB9E0(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1006FBAC4(uint64_t a1, int a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  if ((sub_100B2E93C(v12, *(a1 + 40)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  if ((sub_100B2E93C(__p, a2) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v12;
    if (v13 < 0)
    {
      v5 = v12[0];
    }

    v6 = __p;
    if (v11 < 0)
    {
      v6 = __p[0];
    }

    *buf = 136315394;
    v15 = v5;
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Changing from %s to %s", buf, 0x16u);
  }

  *(a1 + 40) = a2;
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_16;
    }

    v7 = &event::call::active;
  }

  else
  {
    v7 = &event::call::inactive;
  }

  v8 = v7 + 1;
  sub_10014BF94(v7 + 3);
  v9 = sub_100081A98(v8);
  sub_100081ADC(v9);
LABEL_16:
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_1006FBC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FBC70(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1006FC028;
  v5[3] = &unk_101E73F70;
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
    v9 = sub_100069D74;
    v10 = &unk_101E73FB0;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100058E18;
    v10 = &unk_101E73F90;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1006FBD98(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1006FC040;
  v5[3] = &unk_101E73FD0;
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
    v9 = sub_100069D74;
    v10 = &unk_101E73FB0;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100058E18;
    v10 = &unk_101E73F90;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void sub_1006FBEC0(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1006FBFA4(uint64_t **a1)
{
  v1 = a1;
  sub_1006FBAC4(**a1, *(*a1 + 2));
  operator delete();
}

void sub_1006FC050(uint64_t a1)
{
  v1 = a1;
  *(**a1 + 44) = *(*a1 + 8);
  operator delete();
}

void sub_1006FC188(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FC1B0(uint64_t a1, void *a2, NSObject **a3, void *a4, uint64_t a5)
{
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "ps.slc");
  sub_1006FC390((a1 + 8), a3, &v17);
  ctu::OsLogContext::~OsLogContext(&v17);
  *a1 = off_101E74000;
  v10 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = a5;
  v16 = 21;
  strcpy(__p, "NetworkSlicingControl");
  v12 = *(a1 + 24);
  v14 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::RestModule::RestModule();
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v16 < 0)
  {
    operator delete(*__p);
  }

  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  return a1;
}

void sub_1006FC31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v20 = v18[9];
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = v18[7];
  if (v21)
  {
    sub_100004A34(v21);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v18 + 5));
  sub_1000C0544(v18 + 1);
  _Unwind_Resume(a1);
}

void *sub_1006FC390(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_1006FC3F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FC41C(uint64_t a1)
{
  *a1 = off_101E74000;
  v2 = *(a1 + 176);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10006DCAC(a1 + 144, *(a1 + 152));
  v3 = *(a1 + 136);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    sub_100004A34(v6);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1006FC4C0(uint64_t a1)
{
  sub_1006FC41C(a1);

  operator delete();
}

void sub_1006FC500(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    *buf = 136315394;
    *&buf[4] = v3;
    v17 = 2080;
    v18 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sinitializing", buf, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
LABEL_11:
  v13 = *(a1 + 136);
  *(a1 + 128) = v12;
  *(a1 + 136) = v11;
  if (v13)
  {
    sub_100004A34(v13);
  }

  Registry::createRestModuleOneTimeUseConnection(&v14, *(a1 + 48));
  ctu::RestModule::connect();
  if (v15)
  {
    sub_100004A34(v15);
  }

  sub_1006FCBB0(a1);
}

void sub_1006FC6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1006FC6DC(uint64_t a1)
{
  v10 = 0;
  (*(**(a1 + 128) + 96))(buf);
  sub_100010180(&v10, buf);
  sub_10000A1EC(buf);
  v2 = v10;
  v3 = v10 != 0;
  v4 = *(a1 + 104);
  if (v4 != v3)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 64));
      v7 = asStringBool(*(a1 + 104));
      v8 = asStringBool(v2 != 0);
      *buf = 136315906;
      v12 = v6;
      v13 = 2080;
      v14 = " ";
      v15 = 2080;
      v16 = v7;
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing carrier support is changing from %s to %s", buf, 0x2Au);
    }

    *(a1 + 104) = v3;
  }

  sub_10001021C(&v10);
  return v4 != v3;
}

void sub_1006FC870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FC89C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sstarted", &v5, 0x16u);
  }

  return (*(*a1 + 104))(a1, 0, 1);
}

void sub_1006FC988(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  *v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v14);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 32))(v10, **(a1 + 64) + 24, @"SlicingWasDiscovered", kPhoneServicesWalletDomain, 0, 1);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 64));
    *v14 = 136315394;
    *&v14[4] = v13;
    v15 = 2080;
    v16 = " ";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing Switch: review provisioning on migration", v14, 0x16u);
  }

  sub_1006FCBB0(a1);
}

void sub_1006FCB80(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FCBB0(uint64_t a1)
{
  sub_1006FD364(a1);
  sub_10006DCAC(a1 + 144, *(a1 + 152));
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = a1 + 152;
  operator new();
}

void sub_1006FD298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100010250(va);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

unint64_t sub_1006FD364(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_101FBA978, memory_order_acquire) & 1) == 0)
  {
    v9 = a1;
    v10 = __cxa_guard_acquire(&qword_101FBA978);
    a1 = v9;
    if (v10)
    {
      cf[0] = @"NRSlicing";
      cf[1] = @"ResetNetworkSlicingAfterUpgrade";
      qword_101FBA968 = 0;
      unk_101FBA970 = 0;
      qword_101FBA960 = 0;
      sub_10005B328(&qword_101FBA960, cf, &v13, 2uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBA960, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBA978);
      a1 = v9;
    }
  }

  cf[0] = 0;
  (*(**(a1 + 128) + 104))(cf, *(a1 + 128), *(**(a1 + 64) + 52), 1, &qword_101FBA960, 0, 0);
  if (!cf[0])
  {
    goto LABEL_10;
  }

  v1 = CFGetTypeID(cf[0]);
  TypeID = CFNumberGetTypeID();
  v3 = cf[0];
  if (v1 != TypeID)
  {
    LOBYTE(v11) = 0;
    if (!cf[0])
    {
      goto LABEL_11;
    }

    v6 = CFGetTypeID(cf[0]);
    if (v6 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v11, v3, v7);
      v3 = v11;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = 0;
  if (cf[0])
  {
    v4 = CFGetTypeID(cf[0]);
    if (v4 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v11, v3, v5);
      v3 = v11;
      goto LABEL_11;
    }

LABEL_10:
    v3 = 0;
  }

LABEL_11:
  sub_10000A1EC(cf);
  return v3;
}

BOOL sub_1006FD570(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_101FBA998, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&qword_101FBA998);
    a1 = v3;
    if (v4)
    {
      BOOLean[0] = @"NRSlicing";
      BOOLean[1] = @"ShowNetworkSlicingSwitch";
      qword_101FBA988 = 0;
      unk_101FBA990 = 0;
      qword_101FBA980 = 0;
      sub_10005B328(&qword_101FBA980, BOOLean, &v7, 2uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBA980, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBA998);
      a1 = v3;
    }
  }

  BOOLean[0] = 0;
  (*(**(a1 + 128) + 104))(&v5, *(a1 + 128), *(**(a1 + 64) + 52), 1, &qword_101FBA980, kCFBooleanTrue, 0);
  sub_10002FE1C(BOOLean, &v5);
  sub_10000A1EC(&v5);
  if (BOOLean[0])
  {
    v1 = CFBooleanGetValue(BOOLean[0]) == 1;
  }

  else
  {
    v1 = 0;
  }

  sub_100045C8C(BOOLean);
  return v1;
}

uint64_t sub_1006FD738(uint64_t a1)
{
  sub_1006FD570(a1);
  v2 = sub_1006FD948(a1);
  *(a1 + 113) = v2;
  v3 = *(a1 + 144);
  if (v3 == (a1 + 152))
  {
LABEL_13:
    v13 = *(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v14)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 64));
      v18 = 136315394;
      v19 = v16;
      v20 = 2080;
      v21 = " ";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing Switch: Cumulative state is OFF", &v18, 0x16u);
      return 0;
    }
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 10);
      if (v5 == 2)
      {
        v10 = *(a1 + 40);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          return 1;
        }

        v17 = PersonalityInfo::logPrefix(**(a1 + 64));
        v18 = 136315394;
        v19 = v17;
        v20 = 2080;
        v21 = " ";
        v12 = "#I %s%sNetwork Slicing Switch: Cumulative state is ON based on user preferences";
        goto LABEL_17;
      }

      v6 = v5 == 0;
      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v4 |= v6;
      v3 = v8;
    }

    while (v8 != (a1 + 152));
    if ((v4 & v2 & 1) == 0)
    {
      goto LABEL_13;
    }

    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 64));
      v18 = 136315394;
      v19 = v11;
      v20 = 2080;
      v21 = " ";
      v12 = "#I %s%sNetwork Slicing Switch: Cumulative state is ON based on carrier default";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v18, 0x16u);
    }

    return 1;
  }

  return result;
}

uint64_t sub_1006FD948(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_101FBA9B8, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v7 = __cxa_guard_acquire(&qword_101FBA9B8);
    a1 = v6;
    if (v7)
    {
      cf[0] = @"NRSlicing";
      cf[1] = @"EnableNetworkSlicingByDefault";
      qword_101FBA9A8 = 0;
      unk_101FBA9B0 = 0;
      qword_101FBA9A0 = 0;
      sub_10005B328(&qword_101FBA9A0, cf, &v10, 2uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBA9A0, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBA9B8);
      a1 = v6;
    }
  }

  v1 = 1;
  (*(**(a1 + 128) + 104))(cf, *(a1 + 128), *(**(a1 + 64) + 52), 1, &qword_101FBA9A0, 0, 0);
  v2 = cf[0];
  v8 = 1;
  if (cf[0])
  {
    v3 = CFGetTypeID(cf[0]);
    if (v3 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v8, v2, v4);
      v1 = v8;
    }

    else
    {
      v1 = 1;
    }
  }

  sub_10000A1EC(cf);
  return v1 & 1;
}

void sub_1006FDB04(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    *v45 = 136315394;
    *&v45[4] = v3;
    v46 = 2080;
    v47 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing Switch: Reset", v45, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v5 = ServiceMap;
  v7 = v6;
  if (v6 < 0)
  {
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *v45 = v7;
  v11 = sub_100009510(&v5[1].__m_.__sig, v45);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v14 = 1;
LABEL_11:
  v15 = kPhoneServicesWalletDomain;
  (*(*v13 + 32))(v13, **(a1 + 64) + 24, @"SlicingCategories", kPhoneServicesWalletDomain, 0, 1);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v16 = Registry::getServiceMap(*(a1 + 48));
  v17 = v16;
  v18 = v6;
  if (v6 < 0)
  {
    v19 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(v16);
  *v45 = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, v45);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v17);
  v23 = 0;
  v25 = 1;
LABEL_21:
  (*(*v24 + 32))(v24, **(a1 + 64) + 24, @"SlicingCategories2", v15, 0, 1);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  v26 = Registry::getServiceMap(*(a1 + 48));
  v27 = v26;
  v28 = v6;
  if (v6 < 0)
  {
    v29 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v30 = 5381;
    do
    {
      v28 = v30;
      v31 = *v29++;
      v30 = (33 * v30) ^ v31;
    }

    while (v31);
  }

  std::mutex::lock(v26);
  *v45 = v28;
  v32 = sub_100009510(&v27[1].__m_.__sig, v45);
  if (v32)
  {
    v34 = v32[3];
    v33 = v32[4];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v27);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v35 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v34 = 0;
  }

  std::mutex::unlock(v27);
  v33 = 0;
  v35 = 1;
LABEL_31:
  (*(*v34 + 32))(v34, **(a1 + 64) + 24, @"SlicingWasDiscoveredByApp", v15, 0, 1);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  v36 = Registry::getServiceMap(*(a1 + 48));
  v37 = v36;
  if (v6 < 0)
  {
    v38 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v39 = 5381;
    do
    {
      v6 = v39;
      v40 = *v38++;
      v39 = (33 * v39) ^ v40;
    }

    while (v40);
  }

  std::mutex::lock(v36);
  *v45 = v6;
  v41 = sub_100009510(&v37[1].__m_.__sig, v45);
  if (v41)
  {
    v43 = v41[3];
    v42 = v41[4];
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v37);
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v42);
      v44 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v43 = 0;
  }

  std::mutex::unlock(v37);
  v42 = 0;
  v44 = 1;
LABEL_41:
  (*(*v43 + 32))(v43, **(a1 + 64) + 24, @"SlicingWasDiscoveredByApp2", v15, 0, 1);
  if ((v44 & 1) == 0)
  {
    sub_100004A34(v42);
  }

  sub_1006FCBB0(a1);
}

void sub_1006FDFCC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FE01C(uint64_t a1, unint64_t a2, int a3)
{
  v17 = a2;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(a1 + 152);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = a1 + 144;
  v8 = a1 + 152;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 != a1 + 152 && *(v8 + 32) <= a2)
  {
    v14 = *(v8 + 40);
    if (v14 != v5)
    {
      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 64));
        *buf = 136316162;
        *&buf[4] = v16;
        v19 = 2080;
        v20 = " ";
        v21 = 2048;
        v22 = a2;
        v23 = 2080;
        v24 = sub_10060FFC0(v14);
        v25 = 2080;
        v26 = sub_10060FFC0(v5);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing Switch: changed user preference for category %lld from %s to %s", buf, 0x34u);
      }

      *buf = &v17;
      *(sub_100701064(v7, &v17) + 10) = v5;
      sub_1006FE238(a1);
      *(a1 + 112) = sub_1006FD738(a1);
    }
  }

  else
  {
LABEL_12:
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 64));
      *buf = 136315650;
      *&buf[4] = v13;
      v19 = 2080;
      v20 = " ";
      v21 = 2048;
      v22 = a2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sCategory %lld unknown/undiscovered", buf, 0x20u);
    }
  }
}

const void **sub_1006FE238(uint64_t a1)
{
  v2 = sub_1006FD364(a1);
  theArray = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v4 = theArray;
    theArray = Mutable;
    __p[0] = v4;
    sub_1000279DC(__p);
  }

  v5 = *(a1 + 144);
  if (v5 != (a1 + 152))
  {
    do
    {
      valuePtr = *(v5 + 2);
      theDict = 0;
      v6 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v6)
      {
        v7 = theDict;
        theDict = v6;
        __p[0] = v7;
        sub_1000296E0(__p);
      }

      v50 = 0;
      v50 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
      CFDictionarySetValue(theDict, @"id", v50);
      v8 = *(a1 + 168);
      if (v8)
      {
        v11 = *(v8 + 8);
        v9 = v8 + 8;
        v10 = v11;
        if (v11)
        {
          v12 = v9;
          do
          {
            v13 = *(v10 + 32);
            v14 = v13 >= valuePtr;
            v15 = v13 < valuePtr;
            if (v14)
            {
              v12 = v10;
            }

            v10 = *(v10 + 8 * v15);
          }

          while (v10);
          if (v12 != v9 && valuePtr >= *(v12 + 32))
          {
            v16 = theDict;
            if (*(v12 + 63) < 0)
            {
              sub_100005F2C(v47, *(v12 + 40), *(v12 + 48));
            }

            else
            {
              *v47 = *(v12 + 40);
              v48 = *(v12 + 56);
            }

            if (SHIBYTE(v48) < 0)
            {
              sub_100005F2C(__dst, v47[0], v47[1]);
            }

            else
            {
              *__dst = *v47;
              v56 = v48;
            }

            v54 = 0;
            if (SHIBYTE(v56) < 0)
            {
              sub_100005F2C(__p, __dst[0], __dst[1]);
            }

            else
            {
              *__p = *__dst;
              v58 = v56;
            }

            v59 = 0;
            if (ctu::cf::convert_copy())
            {
              v17 = v54;
              v54 = v59;
              v60[0] = v17;
              sub_100005978(v60);
            }

            if (SHIBYTE(v58) < 0)
            {
              operator delete(__p[0]);
            }

            value = v54;
            v54 = 0;
            sub_100005978(&v54);
            if (SHIBYTE(v56) < 0)
            {
              operator delete(__dst[0]);
            }

            CFDictionarySetValue(v16, @"name", value);
            sub_100005978(&value);
            if (SHIBYTE(v48) < 0)
            {
              operator delete(v47[0]);
            }
          }
        }
      }

      if (DWORD2(valuePtr))
      {
        v18 = theDict;
        if (DWORD2(valuePtr) == 2)
        {
          v19 = v2 + 1;
        }

        else
        {
          v19 = -v2;
        }

        __dst[0] = 0;
        LODWORD(__p[0]) = v19;
        v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, __p);
        if (v20)
        {
          v21 = __dst[0];
          __dst[0] = v20;
          __p[0] = v21;
          sub_100029A48(__p);
        }

        v60[0] = __dst[0];
        __dst[0] = 0;
        sub_100029A48(__dst);
        CFDictionarySetValue(v18, @"user-preference", v60[0]);
        sub_100029A48(v60);
      }

      CFArrayAppendValue(theArray, theDict);
      sub_100029A48(&v50);
      sub_1000296E0(&theDict);
      v22 = v5[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v5[2];
          v24 = *v23 == v5;
          v5 = v23;
        }

        while (!v24);
      }

      v5 = v23;
    }

    while (v23 != (a1 + 152));
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v26 = ServiceMap;
  v28 = v27;
  if (v27 < 0)
  {
    v29 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
    v30 = 5381;
    do
    {
      v28 = v30;
      v31 = *v29++;
      v30 = (33 * v30) ^ v31;
    }

    while (v31);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v28;
  v32 = sub_100009510(&v26[1].__m_.__sig, __p);
  if (v32)
  {
    v34 = v32[3];
    v33 = v32[4];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v26);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v35 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v34 = 0;
  }

  std::mutex::unlock(v26);
  v33 = 0;
  v35 = 1;
LABEL_53:
  v36 = kPhoneServicesWalletDomain;
  (*(*v34 + 32))(v34, **(a1 + 64) + 24, @"SlicingCategories", kPhoneServicesWalletDomain, 0, 1);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  v37 = Registry::getServiceMap(*(a1 + 48));
  v38 = v37;
  if (v27 < 0)
  {
    v39 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
    v40 = 5381;
    do
    {
      v27 = v40;
      v41 = *v39++;
      v40 = (33 * v40) ^ v41;
    }

    while (v41);
  }

  std::mutex::lock(v37);
  __p[0] = v27;
  v42 = sub_100009510(&v38[1].__m_.__sig, __p);
  if (v42)
  {
    v44 = v42[3];
    v43 = v42[4];
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v38);
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v43);
      v45 = 0;
      goto LABEL_63;
    }
  }

  else
  {
    v44 = 0;
  }

  std::mutex::unlock(v38);
  v43 = 0;
  v45 = 1;
LABEL_63:
  (*(*v44 + 16))(v44, **(a1 + 64) + 24, @"SlicingCategories2", theArray, v36, 0, 1, 0);
  if ((v45 & 1) == 0)
  {
    sub_100004A34(v43);
  }

  return sub_1000279DC(&theArray);
}

void sub_1006FE764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, uint64_t a19, uint64_t a20, const void *a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100029A48(&a17);
  sub_1000296E0(&a18);
  sub_1000279DC(&a21);
  _Unwind_Resume(a1);
}

void sub_1006FE850(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v14;
  LOBYTE(v10) = *(a1 + 104);
  LOBYTE(v11) = *(a1 + 112);
  BYTE4(v11) = *(a1 + 108) == 2;
  LODWORD(v12) = *(a1 + 116);
  v14[0] = 0;
  v14[1] = 0;
  v2 = *(a1 + 144);
  v3 = (a1 + 152);
  if (v2 != (a1 + 152))
  {
    do
    {
      v4 = *(v2 + 10);
      if (v4 == 1)
      {
        v5 = 0;
      }

      else if (v4 == 2)
      {
        v5 = &_mh_execute_header;
      }

      else
      {
        v5 = *(a1 + 113) << 32;
      }

      v9[0] = v2[4];
      v9[1] = v5 | v4;
      sub_100701138(&v13, v9);
      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  sub_100701204();
}

void sub_1006FE9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10006DCAC(v18 + 24, a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FE9F8(uint64_t result)
{
  if (*(**(result + 64) + 48) == 1)
  {
    phoneservices::submitSwitchAnalytics();
  }

  return result;
}

BOOL sub_1006FEA28(uint64_t a1)
{
  v2 = **(a1 + 64);
  if (*(v2 + 48) == 1 && (v3 = *(a1 + 108)) != 0)
  {
    if (((v3 == 2) & *(a1 + 112)) != 0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 116);
  if (v4 != v5)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = PersonalityInfo::logPrefix(v2);
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing feature re-evaluated to %s", &v8, 0x20u);
    }

    *(a1 + 116) = v4;
  }

  return v4 != v5;
}

void sub_1006FEB64(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v4 = 136315394;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonality config changed", &v4, 0x16u);
  }

  sub_1006FCBB0(a1);
}

void sub_1006FEC58(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v4 = 136315394;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonal wallet changed", &v4, 0x16u);
  }

  sub_1006FCBB0(a1);
}

const void **sub_1006FED4C(const void **result, uint64_t a2, void *a3, void *a4)
{
  v4 = result;
  v5 = a3 + 1;
  v6 = *a3;
  if (*a3 == a3 + 1)
  {
    v33 = *a4;
    if (result[21] == *a4)
    {
      return result;
    }

    goto LABEL_48;
  }

  v7 = a2;
  v36 = a4;
  v8 = 0;
  v9 = 0;
  v10 = result + 19;
  v39 = kPhoneServicesWalletDomain;
  v38 = a3 + 1;
  do
  {
    v11 = v6[4];
    v42 = 0;
    v41 = 0;
    sub_1006FF228(v4, v11, &v42, &v41);
    if (!v41)
    {
      v12 = *(v4 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PersonalityInfo::logPrefix(**(v4 + 64));
        if (*(v7 + 23) >= 0)
        {
          v14 = v7;
        }

        else
        {
          v14 = *v7;
        }

        *buf = 136315906;
        *&buf[4] = v13;
        v44 = 2080;
        v45 = " ";
        v46 = 2080;
        v47 = v14;
        v48 = 2048;
        v49 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sSlicing was discovered for app: %s category %llu", buf, 0x2Au);
      }

      if ((v8 & 1) == 0)
      {
        sub_1003B76A4(v4, v7);
      }

      v8 = 1;
      v42 = 1;
    }

    v15 = *v10;
    if (!*v10)
    {
      goto LABEL_20;
    }

    v16 = (v4 + 152);
    do
    {
      v17 = v15[4];
      v18 = v17 >= v11;
      v19 = v17 < v11;
      if (v18)
      {
        v16 = v15;
      }

      v15 = v15[v19];
    }

    while (v15);
    if (v16 == v10 || v11 < v16[4])
    {
LABEL_20:
      *buf = v11;
      *&buf[8] = 0;
      sub_100701460(v4 + 144, buf);
      v9 = 1;
    }

    if (v42 == 1)
    {
      v40 = 0;
      sub_1003B8194(v11, &v40);
      if ((atomic_load_explicit(&qword_101FBA9D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA9D8))
      {
        *buf = @"SlicingWasDiscoveredByApp2";
        qword_101FBA9C8 = 0;
        unk_101FBA9D0 = 0;
        qword_101FBA9C0 = 0;
        sub_10005B328(&qword_101FBA9C0, buf, &buf[8], 1uLL);
        __cxa_atexit(sub_10041F938, &qword_101FBA9C0, &_mh_execute_header);
        __cxa_guard_release(&qword_101FBA9D8);
        v7 = a2;
        v5 = v38;
      }

      ServiceMap = Registry::getServiceMap(*(v4 + 48));
      v21 = ServiceMap;
      if (v22 < 0)
      {
        v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
        v24 = 5381;
        do
        {
          v22 = v24;
          v25 = *v23++;
          v24 = (33 * v24) ^ v25;
        }

        while (v25);
      }

      std::mutex::lock(ServiceMap);
      *buf = v22;
      v26 = sub_100009510(&v21[1].__m_.__sig, buf);
      if (v26)
      {
        v27 = v26[3];
        v28 = v26[4];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v21);
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          v7 = a2;
          v5 = v38;
          sub_100004A34(v28);
          v29 = 0;
LABEL_31:
          (*(*v27 + 16))(v27, **(v4 + 64) + 24, v40, kCFBooleanTrue, v39, &qword_101FBA9C0, 1, 0);
          if ((v29 & 1) == 0)
          {
            sub_100004A34(v28);
          }

          sub_100005978(&v40);
          goto LABEL_34;
        }
      }

      else
      {
        v27 = 0;
      }

      std::mutex::unlock(v21);
      v28 = 0;
      v29 = 1;
      goto LABEL_31;
    }

LABEL_34:
    result = sub_10000A1EC(&v41);
    v30 = v6[1];
    if (v30)
    {
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      do
      {
        v31 = v6[2];
        v32 = *v31 == v6;
        v6 = v31;
      }

      while (!v32);
    }

    v6 = v31;
  }

  while (v31 != v5);
  a4 = v36;
  v33 = *v36;
  if (*(v4 + 168) != *v36)
  {
LABEL_48:
    v34 = a4[1];
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    v35 = *(v4 + 176);
    *(v4 + 168) = v33;
    *(v4 + 176) = v34;
    if (v35)
    {
      sub_100004A34(v35);
    }

    goto LABEL_52;
  }

  if (v9)
  {
LABEL_52:
    sub_1006FE238(v4);
    return (*(*v4 + 104))(v4, 1, 0);
  }

  if (v8)
  {
    return (*(*v4 + 104))(v4, 1, 0);
  }

  return result;
}

void sub_1006FF1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, const void *);
  __cxa_guard_abort(&qword_101FBA9D8);
  sub_100005978(va);
  sub_10000A1EC(va1);
  _Unwind_Resume(a1);
}

const void **sub_1006FF228@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, _BYTE *a3@<X3>, const void **a4@<X8>)
{
  v30 = 0;
  sub_1003B8194(a2, &v30);
  if ((atomic_load_explicit(&qword_101FBA9F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA9F8))
  {
    v31 = @"SlicingWasDiscoveredByApp2";
    qword_101FBA9E8 = 0;
    unk_101FBA9F0 = 0;
    qword_101FBA9E0 = 0;
    sub_10005B328(&qword_101FBA9E0, &v31, &v32, 1uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA9E0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA9F8);
  }

  *a4 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v8 = ServiceMap;
  v10 = v9;
  if (v9 < 0)
  {
    v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v31 = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, &v31);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v8);
  v15 = 0;
  v17 = 1;
LABEL_10:
  v18 = kPhoneServicesWalletDomain;
  (*(*v16 + 24))(v16, **(a1 + 64) + 24, v30, kPhoneServicesWalletDomain, &qword_101FBA9E0, 1);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (!*a4)
  {
    if ((atomic_load_explicit(&qword_101FBAA18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAA18))
    {
      v31 = @"SlicingWasDiscoveredByApp";
      qword_101FBAA08 = 0;
      unk_101FBAA10 = 0;
      qword_101FBAA00 = 0;
      sub_10005B328(&qword_101FBAA00, &v31, &v32, 1uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBAA00, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBAA18);
    }

    v19 = Registry::getServiceMap(*(a1 + 48));
    v20 = v19;
    if (v9 < 0)
    {
      v21 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v9 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v19);
    v31 = v9;
    v24 = sub_100009510(&v20[1].__m_.__sig, &v31);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v20);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v25);
        v27 = 0;
LABEL_22:
        (*(*v26 + 24))(&v29, v26, **(a1 + 64) + 24, v30, v18, &qword_101FBA9E0, 1);
        if (&v29 != a4)
        {
          v31 = *a4;
          *a4 = v29;
          v29 = 0;
          sub_10000A1EC(&v31);
        }

        sub_10000A1EC(&v29);
        if ((v27 & 1) == 0)
        {
          sub_100004A34(v25);
        }

        if (*a4)
        {
          *a3 = 1;
        }

        return sub_100005978(&v30);
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v20);
    v25 = 0;
    v27 = 1;
    goto LABEL_22;
  }

  return sub_100005978(&v30);
}

void sub_1006FF5F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_101FBAA18);
  sub_10000A1EC(v2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_1006FF688(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v13 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 40))(v11, kAlertDialogLocalizationTable, a2, 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1006FF7B0(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1006FF7CC(uint64_t a1)
{
  v27 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v3 = ServiceMap;
  v5 = v4;
  if (v4 < 0)
  {
    v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v28 = v5;
  v9 = sub_100009510(&v3[1].__m_.__sig, &v28);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v3);
  v10 = 0;
  v12 = 1;
LABEL_9:
  v13 = kPhoneServicesWalletDomain;
  (*(*v11 + 24))(&v27, v11, **(a1 + 64) + 24, @"SlicingWasDiscoveredByApp2", kPhoneServicesWalletDomain, 0, 1);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v27)
  {
    v14 = 1;
    goto LABEL_24;
  }

  v15 = Registry::getServiceMap(*(a1 + 48));
  v16 = v15;
  if (v4 < 0)
  {
    v17 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v4 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(v15);
  v28 = v4;
  v20 = sub_100009510(&v16[1].__m_.__sig, &v28);
  if (!v20)
  {
    v22 = 0;
    goto LABEL_20;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
LABEL_20:
    std::mutex::unlock(v16);
    v21 = 0;
    v23 = 1;
    goto LABEL_21;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v16);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v23 = 0;
LABEL_21:
  (*(*v22 + 24))(&v26, v22, **(a1 + 64) + 24, @"SlicingWasDiscoveredByApp", v13, 0, 1);
  v24 = v27;
  v27 = v26;
  v28 = v24;
  v26 = 0;
  sub_10000A1EC(&v28);
  sub_10000A1EC(&v26);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  v14 = v27 != 0;
LABEL_24:
  sub_10000A1EC(&v27);
  return v14;
}

void sub_1006FFA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1006FFA7C(uint64_t a1)
{
  if (*(a1 + 104))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = *(a1 + 108);
  if (v2 != v1)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 64));
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = " ";
      v11 = 2080;
      v12 = asString();
      v13 = 2080;
      v14 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork slicing account/network support is changing from %s to %s", &v7, 0x2Au);
    }

    *(a1 + 108) = v1;
  }

  return v2 != v1;
}

BOOL sub_1006FFB98(uint64_t a1)
{
  if (*(a1 + 104) != 1)
  {
    goto LABEL_10;
  }

  if (sub_1006FF7CC(a1))
  {
    if (sub_1006FD570(a1))
    {
      v2 = 2;
      goto LABEL_11;
    }

    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 64));
      v13 = 136315394;
      v14 = v6;
      v15 = 2080;
      v16 = " ";
      v5 = "#I %s%sEither Network Slicing switch support is not present or it is set to false";
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(**(a1 + 64));
      v13 = 136315394;
      v14 = v4;
      v15 = 2080;
      v16 = " ";
      v5 = "#I %s%sNetwork Slicing was not yet discovered - hide settings";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, &v13, 0x16u);
    }
  }

LABEL_10:
  v2 = 1;
LABEL_11:
  v7 = *(a1 + 120);
  if (v7 != v2)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**(a1 + 64));
      v10 = sub_100610010(*(a1 + 120));
      v11 = sub_100610010(v2);
      v13 = 136315906;
      v14 = v9;
      v15 = 2080;
      v16 = " ";
      v17 = 2080;
      v18 = v10;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing switch support is changing from %s to %s", &v13, 0x2Au);
    }

    *(a1 + 120) = v2;
  }

  return v7 != v2;
}

const void **sub_1006FFD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  theDict = 0;
  v4 = *(a1 + 120);
  if ((v4 - 2) < 2)
  {
    v5 = kCFAllocatorDefault;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v11 = theDict;
      theDict = Mutable;
      *valuePtr = v11;
      sub_1000296E0(valuePtr);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCanChangeSetting, kCFBooleanTrue);
    v8 = 1;
    v9 = 1;
  }

  else if (v4 == 4)
  {
    v5 = kCFAllocatorDefault;
    v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v12)
    {
      v13 = theDict;
      theDict = v12;
      *valuePtr = v13;
      sub_1000296E0(valuePtr);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCanChangeSettingEnableStillProvisioning, kCFBooleanTrue);
    v9 = 0;
    v8 = 1;
  }

  else
  {
    if (v4 != 5)
    {
      v9 = 0;
      v8 = 0;
      v59 = 0;
      goto LABEL_72;
    }

    v5 = kCFAllocatorDefault;
    v6 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v6)
    {
      v7 = theDict;
      theDict = v6;
      *valuePtr = v7;
      sub_1000296E0(valuePtr);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCannotChangeSettingNeedToCallCarrier, kCFBooleanTrue);
    v8 = 0;
    v9 = 0;
  }

  if (theDict)
  {
    v71 = 0;
    v14 = CFArrayCreateMutable(v5, 0, &kCFTypeArrayCallBacks);
    v61 = v8;
    v62 = v9;
    v63 = a2;
    if (v14)
    {
      v15 = v71;
      v71 = v14;
      *valuePtr = v15;
      sub_1000279DC(valuePtr);
    }

    v16 = *(a1 + 144);
    v17 = (a1 + 152);
    if (v16 != (a1 + 152))
    {
      v18 = kCTNetworkSlicingCategoryID;
      v19 = kCTNetworkSlicingCategoryName;
      v20 = &kCFTypeDictionaryKeyCallBacks;
      v21 = &kCFTypeDictionaryValueCallBacks;
      v22 = kCTNetworkSlicingCategoryState;
      v23 = @"GENRE_FOR_SLICING_GENERIC_%@";
      v64 = v5;
      do
      {
        v70 = 0;
        v24 = CFDictionaryCreateMutable(v5, 0, v20, v21);
        if (v24)
        {
          v25 = v70;
          v70 = v24;
          *valuePtr = v25;
          sub_1000296E0(valuePtr);
        }

        v69 = 0;
        v69 = CFNumberCreate(0, kCFNumberLongLongType, v16 + 4);
        CFDictionarySetValue(v70, v18, v69);
        value = 0;
        v26 = *(a1 + 168);
        if (!v26)
        {
          goto LABEL_47;
        }

        v29 = *(v26 + 8);
        v27 = v26 + 8;
        v28 = v29;
        if (!v29)
        {
          goto LABEL_47;
        }

        v30 = v16[4];
        v31 = v27;
        do
        {
          v32 = *(v28 + 32);
          v33 = v32 >= v30;
          v34 = v32 < v30;
          if (v33)
          {
            v31 = v28;
          }

          v28 = *(v28 + 8 * v34);
        }

        while (v28);
        if (v31 == v27 || v30 < *(v31 + 32))
        {
          goto LABEL_47;
        }

        if (*(v31 + 63) < 0)
        {
          sub_100005F2C(__dst, *(v31 + 40), *(v31 + 48));
        }

        else
        {
          *__dst = *(v31 + 40);
          v66 = *(v31 + 56);
        }

        if (SHIBYTE(v66) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v75 = v66;
        }

        v73 = 0;
        if (SHIBYTE(v75) < 0)
        {
          sub_100005F2C(valuePtr, __p[0], __p[1]);
        }

        else
        {
          *valuePtr = *__p;
          *&valuePtr[16] = v75;
        }

        v76 = 0;
        if (ctu::cf::convert_copy())
        {
          v35 = v73;
          v73 = v76;
          v77 = v35;
          sub_100005978(&v77);
        }

        if ((valuePtr[23] & 0x80000000) != 0)
        {
          operator delete(*valuePtr);
        }

        v67 = v73;
        v73 = 0;
        sub_100005978(&v73);
        if (SHIBYTE(v75) < 0)
        {
          operator delete(__p[0]);
        }

        v36 = v67;
        *valuePtr = value;
        v67 = 0;
        value = v36;
        sub_100005978(valuePtr);
        sub_100005978(&v67);
        if (SHIBYTE(v66) < 0)
        {
          operator delete(__dst[0]);
        }

        if (!value)
        {
LABEL_47:
          if (v16[4] == -1)
          {
            *valuePtr = @"Managed Apps";
            sub_10021D11C(&value, valuePtr);
          }

          else
          {
            v77 = 0;
            sub_1006FF688(a1, v23);
            v76 = 0;
            v37 = v16[4];
            __p[0] = 0;
            *valuePtr = v37;
            v38 = CFNumberCreate(v5, kCFNumberLongLongType, valuePtr);
            if (v38)
            {
              v39 = __p[0];
              __p[0] = v38;
              *valuePtr = v39;
              sub_100029A48(valuePtr);
            }

            v76 = __p[0];
            __p[0] = 0;
            sub_100029A48(__p);
            if (v77)
            {
              StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(0, 0, @"%@ Apps", v77, 0, v76);
              v41 = value;
              value = StringWithValidatedFormat;
              *valuePtr = v41;
              sub_100005978(valuePtr);
            }

            else
            {
              v42 = v17;
              v43 = v22;
              v44 = v19;
              v45 = v18;
              v46 = v21;
              v47 = v20;
              v48 = v23;
              v49 = *(a1 + 40);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v58 = PersonalityInfo::logPrefix(**(a1 + 64));
                *valuePtr = 136315394;
                *&valuePtr[4] = v58;
                *&valuePtr[12] = 2080;
                *&valuePtr[14] = " ";
                _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "#E %s%sGENRE_FOR_SLICING_GENERIC is empty", valuePtr, 0x16u);
              }

              v50 = CFStringCreateWithFormat(0, 0, @"%@ Apps", v76);
              v23 = v48;
              v51 = value;
              value = v50;
              *valuePtr = v51;
              sub_100005978(valuePtr);
              v20 = v47;
              v21 = v46;
              v18 = v45;
              v19 = v44;
              v22 = v43;
              v17 = v42;
              v5 = v64;
            }

            sub_100029A48(&v76);
            sub_100005978(&v77);
          }
        }

        CFDictionarySetValue(v70, v19, value);
        v52 = *(v16 + 10);
        if (v52 == 1)
        {
          v53 = v70;
          v54 = &kCFBooleanFalse;
        }

        else
        {
          if (v52 == 2)
          {
            v53 = v70;
LABEL_62:
            v54 = &kCFBooleanTrue;
            goto LABEL_63;
          }

          v53 = v70;
          v54 = &kCFBooleanFalse;
          if (*(a1 + 112) == 1)
          {
            goto LABEL_62;
          }
        }

LABEL_63:
        CFDictionarySetValue(v53, v22, *v54);
        CFArrayAppendValue(v71, v70);
        sub_100005978(&value);
        sub_100029A48(&v69);
        sub_1000296E0(&v70);
        v55 = v16[1];
        if (v55)
        {
          do
          {
            v56 = v55;
            v55 = *v55;
          }

          while (v55);
        }

        else
        {
          do
          {
            v56 = v16[2];
            v57 = *v56 == v16;
            v16 = v56;
          }

          while (!v57);
        }

        v16 = v56;
      }

      while (v56 != v17);
    }

    CFDictionarySetValue(theDict, kCTNetworkSlicingCategories, v71);
    a2 = v63;
    v8 = v61;
    v9 = v62;
    sub_1000279DC(&v71);
  }

  v59 = 1;
LABEL_72:
  *a2 = v59;
  *(a2 + 1) = v8;
  *(a2 + 2) = v9;
  sub_100010180((a2 + 8), &theDict);
  return sub_1000296E0(&theDict);
}

void sub_100700494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, const void *a24, const void *a25, const void *a26, const void *a27, const void *a28, const void *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978(&a29);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_100005978(&a24);
  sub_100029A48(&a25);
  sub_1000296E0(&a26);
  sub_1000279DC(&a27);
  sub_1000296E0(&a28);
  _Unwind_Resume(a1);
}

const void **sub_100700578@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  (*(*a1 + 56))(&v5);
  *a2 = a1[29] == 2;
  sub_100010024((a2 + 8), &v6);
  return sub_10001021C(&v6);
}

void sub_100700604(uint64_t a1, int a2, CFDictionaryRef *a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 64));
    v8 = asStringBool(a2);
    v9 = sub_100610010(*(a1 + 120));
    *v17 = 136315906;
    *&v17[4] = v7;
    v18 = 2080;
    v19 = " ";
    v20 = 2080;
    v21 = v8;
    v22 = 2080;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnabled(%s): Current 'Network Slicing canSet' status: %s", v17, 0x2Au);
  }

  v10 = *(a1 + 120);
  v11 = v10 > 5;
  v12 = (1 << v10) & 0x23;
  if (v11 || v12 == 0)
  {
    if (*a3)
    {
      Value = CFDictionaryGetValue(*a3, kCTNetworkSlicingCategoryID);
      if (Value && (v15 = Value, v16 = CFGetTypeID(Value), v16 == CFNumberGetTypeID()))
      {
        *v17 = 0;
        if (CFNumberGetValue(v15, kCFNumberLongLongType, v17))
        {
          sub_1006FE01C(a1, *v17, a2);
          (*(*a1 + 104))(a1, 1, 0);
        }

        else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10177BD10(a1);
        }
      }

      else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177BDB4(a1);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177BE48(a1);
    }
  }
}

void sub_100700824(uint64_t a1, int a2, char a3)
{
  v6 = sub_1006FC6DC(a1);
  v7 = sub_1006FFA7C(a1);
  v8 = sub_1006FFB98(a1);
  v9 = *(a1 + 112);
  v10 = sub_1006FD738(a1);
  *(a1 + 112) = v10;
  v11 = sub_1006FEA28(a1);
  sub_10034CD9C(*(a1 + 80), 4, a2);
  if (v6 || v7 || v8 || v11 || v9 != v10 || (a3 & 1) != 0 || a2)
  {

    sub_1006FE850(a1);
  }
}

void sub_10070090C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v4 = **(a1 + 64);
    v7 = *(v4 + 24);
    v5 = (v4 + 24);
    v6 = v7;
    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 1);
    }

    if (v9 < 0)
    {
      v5 = v6;
    }

    if (!v8)
    {
      v5 = "<invalid>";
    }

    *buf = 136315650;
    v43 = v3;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s== dump NetworkSlicingControl '%s'", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 64));
    v11 = asStringBool(*(a1 + 104));
    *buf = 136315650;
    v43 = v10;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Carrier support: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(**(a1 + 64));
    v13 = asString();
    *buf = 136315650;
    v43 = v12;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Account/Network support: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PersonalityInfo::logPrefix(**(a1 + 64));
    v15 = asStringBool(*(a1 + 112));
    *buf = 136315650;
    v43 = v14;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Actual Network Slicing switch state: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PersonalityInfo::logPrefix(**(a1 + 64));
    v17 = sub_100610010(*(a1 + 120));
    *buf = 136315650;
    v43 = v16;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v17;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | CanSet state: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PersonalityInfo::logPrefix(**(a1 + 64));
    v19 = asString();
    *buf = 136315650;
    v43 = v18;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v19;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Final capability state: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = PersonalityInfo::logPrefix(**(a1 + 64));
    v21 = asStringBool(*(a1 + 113));
    *buf = 136315650;
    v43 = v20;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v21;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | EnableByDefault: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = PersonalityInfo::logPrefix(**(a1 + 64));
    v23 = *(a1 + 160);
    *buf = 136315650;
    v43 = v22;
    v44 = 2080;
    v45 = " ";
    v46 = 2048;
    v47 = v23;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | DiscoveredCategories: %zu items", buf, 0x20u);
  }

  v24 = *(a1 + 144);
  if (v24 != (a1 + 152))
  {
    do
    {
      v25 = *(a1 + 168);
      if (!v25)
      {
        goto LABEL_33;
      }

      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      if (!v28)
      {
        goto LABEL_33;
      }

      v29 = v24[4];
      v30 = v26;
      do
      {
        v31 = *(v27 + 32);
        v32 = v31 >= v29;
        v33 = v31 < v29;
        if (v32)
        {
          v30 = v27;
        }

        v27 = *(v27 + 8 * v33);
      }

      while (v27);
      if (v30 != v26 && v29 >= *(v30 + 32))
      {
        v34 = (v30 + 40);
        if (*(v30 + 63) < 0)
        {
          v34 = *v34;
        }
      }

      else
      {
LABEL_33:
        v34 = "-";
      }

      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = PersonalityInfo::logPrefix(**(a1 + 64));
        v37 = v24[4];
        v38 = sub_10060FFC0(*(v24 + 10));
        *buf = 136316162;
        v43 = v36;
        v44 = 2080;
        v45 = " ";
        v46 = 2048;
        v47 = v37;
        v48 = 2080;
        v49 = v38;
        v50 = 2080;
        v51 = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%s |   %llu : %s : '%s'", buf, 0x34u);
      }

      v39 = v24[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = v24[2];
          v41 = *v40 == v24;
          v24 = v40;
        }

        while (!v41);
      }

      v24 = v40;
    }

    while (v40 != (a1 + 152));
  }
}

void sub_100700F64(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100701038);
  __cxa_rethrow();
}

void sub_100700FA4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100700FF8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100701038(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100701064(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *sub_100701138(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t sub_100701270(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E445E0;
  v3 = *a2;
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 24) = v3;
  sub_1007012E4((a1 + 48), a2 + 24);
  return a1;
}

void *sub_1007012E4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10070133C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10070133C(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007013C4(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1007013C4(void *a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_10010CB50(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_100701460(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

_BYTE *sub_100701CCC@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result > 11)
  {
    if (v2 == 12)
    {
      v3 = "Missing cookie during client auth";
      return sub_10000501C(a2, v3);
    }

    if (v2 == 15)
    {
      v3 = "Certificate verification failed";
      return sub_10000501C(a2, v3);
    }

LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  if (!v2)
  {
    v3 = "Invalid response";
    return sub_10000501C(a2, v3);
  }

  if (v2 != 11)
  {
    goto LABEL_8;
  }

  v3 = "Empty client Auth response";
  return sub_10000501C(a2, v3);
}

const char *sub_100701D34(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 0x12)
  {
    return "???";
  }

  else
  {
    return off_101E741D0[v1];
  }
}

const char *sub_100701D5C(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 8)
  {
    return "???";
  }

  else
  {
    return off_101E74268[v1];
  }
}

const char *sub_100701D84(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 6)
  {
    return "???";
  }

  else
  {
    return off_101E742B0[v1];
  }
}

uint64_t sub_100701DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C030(a1);
  v5 = sub_100701D5C(a2);
  strlen(v5);
  sub_10000C030(v4);
  v6 = sub_10000C030(a1);
  if (*(a2 + 8) == 1)
  {
    std::to_string(&v21, *(a2 + 4));
  }

  else
  {
    sub_10000501C(&v21, "(null)");
  }

  sub_10000C030(v6);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v7 = sub_10000C030(a1);
  v8 = sub_100701D84((a2 + 12));
  strlen(v8);
  sub_10000C030(v7);
  sub_10000C030(a1);
  std::ostream::operator<<();
  v9 = sub_10000C030(a1);
  sub_100702110(v9);
  v10 = sub_10000C030(a1);
  v11 = *(a2 + 32);
  if (v11 > 2)
  {
    v12 = "???";
  }

  else
  {
    v12 = off_101E742E8[v11];
  }

  strlen(v12);
  sub_10000C030(v10);
  v13 = sub_10000C030(a1);
  v14 = *(a2 + 36);
  if (v14 > 2)
  {
    v15 = "???";
  }

  else
  {
    v15 = off_101E74300[v14];
  }

  strlen(v15);
  sub_10000C030(v13);
  v16 = sub_10000C030(a1);
  v17 = sub_100701D34((a2 + 40));
  strlen(v17);
  sub_10000C030(v16);
  v18 = sub_10000C030(a1);
  if (*(a2 + 48) == 1)
  {
    std::to_string(&v21, *(a2 + 44));
  }

  else
  {
    sub_10000501C(&v21, "(null)");
  }

  sub_10000C030(v18);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v19 = sub_10000C030(a1);
  if (*(a2 + 64) == 1)
  {
    std::to_string(&v21, *(a2 + 56));
  }

  else
  {
    sub_10000501C(&v21, "(null)");
  }

  sub_10000C030(v19);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  sub_10000C030(a1);
  return a1;
}

void sub_1007020EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100702110(uint64_t *a1)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__p = 0u;
  v16 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  sub_10000D518(&v13);
  v2 = v13;
  v3 = *a1;
  *(&v14[-1] + *(v13 - 24) + 8) = *(a1 + *(*a1 - 24) + 8);
  v4 = *(v2 - 24);
  std::ios_base::getloc((a1 + *(v3 - 24)));
  v12.__locale_ = 0;
  std::ios_base::getloc((&v14[-1] + v4));
  std::ios_base::imbue((&v14[-1] + v4), &__loc);
  std::locale::~locale(&v9);
  v5 = *(&v14[1] + v4 + 8);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, &__loc);
    v28.__locale_ = 0;
    std::locale::locale(&v28, v5 + 1);
    std::locale::operator=(v5 + 1, &__loc);
    std::locale::~locale(&v28);
  }

  std::locale::~locale(&v12);
  std::locale::~locale(&__loc);
  *(v14 + *(v13 - 24)) = *(a1 + *(*a1 - 24) + 16);
  v6 = std::ostream::operator<<();
  sub_10000C030(v6);
  sub_10006EE70(&v13 + 8, &v9);
  v7 = sub_10000C030(a1);
  if (v10 < 0)
  {
    operator delete(v9.__locale_);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  std::ios::~ios();
  return v7;
}

void sub_100702454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, std::locale a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1007024BC(uint64_t a1, _DWORD *a2, void *a3, _DWORD *a4, int *a5, void *a6, _DWORD *a7, int *a8, _DWORD *a9, void *a10, _OWORD *a11, __int128 *a12, __int128 *a13)
{
  *a1 = *a2;
  *(a1 + 4) = *a3;
  v14 = *a5;
  *(a1 + 12) = *a4;
  *(a1 + 16) = v14;
  *(a1 + 24) = *a6;
  v15 = *a8;
  *(a1 + 32) = *a7;
  *(a1 + 36) = v15;
  *(a1 + 40) = *a9;
  *(a1 + 44) = *a10;
  *(a1 + 56) = *a11;
  if (*(a12 + 23) < 0)
  {
    sub_100005F2C((a1 + 72), *a12, *(a12 + 1));
  }

  else
  {
    v16 = *a12;
    *(a1 + 88) = *(a12 + 2);
    *(a1 + 72) = v16;
  }

  if (*(a13 + 23) < 0)
  {
    sub_100005F2C((a1 + 96), *a13, *(a13 + 1));
  }

  else
  {
    v17 = *a13;
    *(a1 + 112) = *(a13 + 2);
    *(a1 + 96) = v17;
  }

  return a1;
}

void sub_100702584(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007025BC(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
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
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v40 = xpc_int64_create(*a1);
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  string = a2;
  v18 = "phase";
  sub_10000F688(&string, &v40, &v41);
  xpc_release(v41);
  v41 = 0;
  xpc_release(v40);
  v40 = 0;
  if (*(a1 + 8) == 1)
  {
    v38 = xpc_int64_create(a1[1]);
    if (!v38)
    {
      v38 = xpc_null_create();
    }

    string = a2;
    v18 = "code";
    sub_10000F688(&string, &v38, &v39);
    xpc_release(v39);
    v39 = 0;
    xpc_release(v38);
    v38 = 0;
  }

  v36 = xpc_int64_create(a1[3]);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  string = a2;
  v18 = "transport";
  sub_10000F688(&string, &v36, &v37);
  xpc_release(v37);
  v37 = 0;
  xpc_release(v36);
  v36 = 0;
  v34 = xpc_int64_create(a1[4]);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  string = a2;
  v18 = "retry_count";
  sub_10000F688(&string, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  v32 = xpc_int64_create(*(a1 + 3));
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  string = a2;
  v18 = "time_elapsed";
  sub_10000F688(&string, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  v30 = xpc_int64_create(a1[8]);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  string = a2;
  v18 = "server";
  sub_10000F688(&string, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  v28 = xpc_int64_create(a1[9]);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  string = a2;
  v18 = "provisioner";
  sub_10000F688(&string, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v26 = xpc_int64_create(a1[10]);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  string = a2;
  v18 = "response";
  sub_10000F688(&string, &v26, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v26);
  v26 = 0;
  v7 = (a1 + 18);
  if (*(a1 + 95) < 0)
  {
    v7 = *v7;
  }

  v24 = xpc_string_create(v7);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  string = a2;
  v18 = "PhoneNumberSource";
  sub_10000F688(&string, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  if (*(a1 + 48) == 1)
  {
    v22 = xpc_int64_create(a1[11]);
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    string = a2;
    v18 = "xml_validity";
    sub_10000F688(&string, &v22, &v23);
    xpc_release(v23);
    v23 = 0;
    xpc_release(v22);
    v22 = 0;
  }

  if (*(a1 + 64) == 1)
  {
    v20 = xpc_int64_create(*(a1 + 7));
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    string = a2;
    v18 = "retry_after";
    sub_10000F688(&string, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
  }

  string = 0;
  v18 = 0;
  v19 = 0;
  sub_100701CCC(a1 + 40, &string);
  if (SHIBYTE(v19) < 0)
  {
    if (v18)
    {
      p_string = string;
      goto LABEL_44;
    }
  }

  else if (HIBYTE(v19))
  {
    p_string = &string;
LABEL_44:
    v15 = xpc_string_create(p_string);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    v13 = a2;
    v14 = "failure_reason";
    sub_10000F688(&v13, &v15, &v16);
    xpc_release(v16);
    v16 = 0;
    xpc_release(v15);
    v15 = 0;
    v11 = xpc_BOOL_create(0);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v13 = a2;
    v14 = "is_successful";
    sub_10000F688(&v13, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(v11);
    v11 = 0;
    goto LABEL_52;
  }

  v9 = xpc_BOOL_create(1);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v13 = a2;
  v14 = "is_successful";
  sub_10000F688(&v13, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
LABEL_52:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(string);
  }
}

uint64_t sub_100702C08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  *v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  sub_10000C320(&v38);
  v4 = sub_10000C030(&v39);
  v5 = sub_100701D5C(a1);
  strlen(v5);
  sub_10000C030(v4);
  if (*(a1 + 8) == 1)
  {
    sub_10000C030(&v39);
    if (*(a1 + 8) != 1)
    {
      goto LABEL_45;
    }

    std::ostream::operator<<();
  }

  v6 = sub_10000C030(&v39);
  v7 = sub_100701D84((a1 + 12));
  strlen(v7);
  sub_10000C030(v6);
  sub_10000C030(&v39);
  std::ostream::operator<<();
  v8 = sub_10000C030(&v39);
  v9 = *(a1 + 32);
  if (v9 > 2)
  {
    v10 = "???";
  }

  else
  {
    v10 = off_101E742E8[v9];
  }

  strlen(v10);
  sub_10000C030(v8);
  v11 = sub_10000C030(&v39);
  v12 = *(a1 + 36);
  if (v12 > 2)
  {
    v13 = "???";
  }

  else
  {
    v13 = off_101E74300[v12];
  }

  strlen(v13);
  sub_10000C030(v11);
  v14 = sub_10000C030(&v39);
  v15 = sub_100701D34((a1 + 40));
  strlen(v15);
  sub_10000C030(v14);
  v16 = sub_10000C030(&v39);
  sub_10000C030(v16);
  if (*(a1 + 48) == 1)
  {
    sub_10000C030(&v39);
    if (*(a1 + 48) != 1)
    {
      goto LABEL_45;
    }

    std::ostream::operator<<();
  }

  if (*(a1 + 64) != 1)
  {
    goto LABEL_16;
  }

  v17 = sub_10000C030(&v39);
  if ((*(a1 + 64) & 1) == 0)
  {
LABEL_45:
    sub_1000D1644();
  }

  sub_100702110(v17);
LABEL_16:
  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  sub_100701CCC((a1 + 40), __p);
  v18 = HIBYTE(v37);
  v19 = HIBYTE(v37);
  if (v37 < 0)
  {
    v18 = __p[1];
  }

  if (v18)
  {
    v20 = sub_10000C030(&v39);
    sub_10000C030(v20);
    v19 = HIBYTE(v37);
  }

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *(a1 + 119);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v21 = *(a1 + 104);
  }

  if (v21 < 0xB)
  {
    v30 = sub_10000C030(&v39);
    sub_10000C030(v30);
  }

  else
  {
    std::string::basic_string(&v34, (a1 + 96), 0, 4uLL, &v33);
    v22 = std::string::append(&v34, "..", 2uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = *(a1 + 119);
    if (v24 < 0)
    {
      v24 = *(a1 + 104);
    }

    std::string::basic_string(&v33, (a1 + 96), v24 - 4, 0xFFFFFFFFFFFFFFFFLL, &v54);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v33;
    }

    else
    {
      v25 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v35, v25, size);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v37 = v27->__r_.__value_.__r.__words[2];
    *__p = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    v29 = sub_10000C030(&v39);
    sub_10000C030(v29);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000C030(&v39);
  sub_10006EE70(&v39 + 8, a2);
  *&v39 = v31;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[1]);
  }

  std::locale::~locale(v40);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1007031E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void BasebandSettings::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1007033E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    sub_101760EE4(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandSettings::BasebandSettings(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "set.bb");
  sub_1000F0604(v6, "BasebandSettings", QOS_CLASS_USER_INITIATED, &v17);
  ctu::OsLogContext::~OsLogContext(&v17);
  v24[0] = off_101E2B528;
  v24[1] = sub_1000A7C44;
  v24[3] = v24;
  sub_100703B60((a1 + 48));
  sub_1000A8744(v24);
  *a1 = off_101E74328;
  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  *(a1 + 56) = dispatch_queue_create_with_target_V2("BasebandSettings", v7, *(a1 + 24));
  *a1 = off_101E74328;
  v8 = *a3;
  *a3 = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = a1 + 72;
  *(a1 + 80) = a1 + 72;
  *(a1 + 88) = 0;
  *(a1 + 96) = *a2;
  v9 = *(a2 + 8);
  *(a1 + 104) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 64);
  }

  (*(*v8 + 40))(v8);
  Registry::getCommandDriversFactory(&v17, *a2);
  var0 = v17.var0;
  v11 = *(a1 + 24);
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  (*(*var0 + 216))(var0, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v17.var1.fRef)
  {
    sub_100004A34(v17.var1.fRef);
  }

  sub_10000501C(&__p, "BasebandSettings");
  v12 = *(a1 + 24);
  v20 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  v19 = 0;
  ctu::RestModule::RestModule();
  if (v19)
  {
    dispatch_release(v19);
  }

  if (v20)
  {
    dispatch_release(v20);
  }

  if (v22 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 160) = 0;
  *(a1 + 162) = 0;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  sub_100109304((a1 + 240), &rest::kDefaultRegistrationStatuses);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 312) = 0;
  *(a1 + 316) = 3;
  sub_10000501C(&v17, "BasebandSettings");
  PersonalitiesTracker::PersonalitiesTracker();
  if (v18 < 0)
  {
    operator delete(v17.var0);
  }

  *(a1 + 488) = 0;
  *(a1 + 492) = 1;
  *(a1 + 496) = 0;
  *(a1 + 497) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 552) = 2;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  (*(**(a1 + 64) + 32))(*(a1 + 64));
  v13 = *(a1 + 64);
  v14 = *(a1 + 24);
  v16 = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  (*(*v13 + 24))(v13, &v16);
  if (v16)
  {
    dispatch_release(v16);
  }

  (*(**(a1 + 64) + 16))(*(a1 + 64));
  *(a1 + 656) = 0u;
  *(a1 + 648) = a1 + 656;
  *(a1 + 680) = 0u;
  *(a1 + 672) = a1 + 680;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 736) = a1 + 744;
  *(a1 + 784) = 0;
  *(a1 + 792) = 1;
  *(a1 + 796) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 800) = a1 + 808;
  Registry::getNotificationSenderFactory(&v17, *a2);
  (*(*v17.var0 + 152))(v17.var0);
  if (v17.var1.fRef)
  {
    sub_100004A34(v17.var1.fRef);
  }

  return a1;
}

void sub_1007038C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17, dispatch_object_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10006DCAC(v24 + 800, *(v24 + 808));
  sub_10070CF14(v24 + 760);
  sub_100703D24(v24 + 696);
  sub_10006DCAC(v24 + 672, *(v24 + 680));
  sub_10006EC28(v24 + 648, *(v24 + 656));
  sub_10006EC28(v24 + 624, *(v24 + 632));
  v28 = *(v24 + 616);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v24 + 600);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v24 + 584);
  if (v30)
  {
    sub_100004A34(v30);
  }

  v31 = *(v24 + 568);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = *(v24 + 544);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(v24 + 528);
  if (v33)
  {
    sub_100004A34(v33);
  }

  v34 = *(v24 + 512);
  if (v34)
  {
    sub_100004A34(v34);
  }

  PersonalitiesTracker::~PersonalitiesTracker((v24 + 320));
  sub_100077CD4(v24 + 288, *(v24 + 296));
  __p = (v24 + 264);
  sub_1000B2AF8(&__p);
  sub_10006DCAC(v24 + 240, *(v24 + 248));
  sub_10000FF50(v24 + 208);
  sub_10070CE94(v24 + 176);
  v35 = *(v24 + 168);
  if (v35)
  {
    dispatch_group_leave(v35);
    v36 = *(v24 + 168);
    if (v36)
    {
      dispatch_release(v36);
    }
  }

  v37 = *(v24 + 152);
  if (v37)
  {
    sub_100004A34(v37);
  }

  v38 = *(v24 + 136);
  if (v38)
  {
    sub_100004A34(v38);
  }

  v39 = *(v24 + 120);
  if (v39)
  {
    sub_100004A34(v39);
  }

  v40 = *(v24 + 104);
  if (v40)
  {
    sub_100004A34(v40);
  }

  sub_1000FEFCC(v26);
  v41 = *(v24 + 64);
  *(v24 + 64) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(v24 + 56);
  if (v42)
  {
    dispatch_release(v42);
  }

  v43 = *(v24 + 48);
  *(v24 + 48) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  ctu::OsLogLogger::~OsLogLogger((v24 + 40));
  sub_1000C0544(v25);
  BasebandSettingsInterface::~BasebandSettingsInterface(v24);
  _Unwind_Resume(a1);
}

void sub_100703B0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (!a12)
  {
    JUMPOUT(0x100703A60);
  }

  JUMPOUT(0x100703A5CLL);
}

void sub_100703B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000A8744(va);
  JUMPOUT(0x100703AECLL);
}

void sub_100703B48(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x100703AFCLL);
}

capabilities::ct *sub_100703B60(capabilities::ct *a1)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_100703CB8(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

uint64_t sub_100703D24(uint64_t a1)
{
  sub_10006DCAC(a1 + 40, *(a1 + 48));

  return sub_10070C834(a1);
}

void BasebandSettings::~BasebandSettings(BasebandSettings *this)
{
  *this = off_101E74328;
  v2 = *(this + 104);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10006DCAC(this + 800, *(this + 101));
  sub_10070CF14(this + 760);
  sub_10006DCAC(this + 736, *(this + 93));
  sub_10070C834(this + 696);
  sub_10006DCAC(this + 672, *(this + 85));
  sub_10006EC28(this + 648, *(this + 82));
  sub_10006EC28(this + 624, *(this + 79));
  v3 = *(this + 77);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 75);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 73);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 71);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 68);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 66);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 64);
  if (v9)
  {
    sub_100004A34(v9);
  }

  PersonalitiesTracker::~PersonalitiesTracker((this + 320));
  sub_100077CD4(this + 288, *(this + 37));
  v19 = (this + 264);
  sub_1000B2AF8(&v19);
  sub_10006DCAC(this + 240, *(this + 31));
  sub_10000FF50(this + 208);
  sub_10070CE94(this + 176);
  v10 = *(this + 21);
  if (v10)
  {
    dispatch_group_leave(v10);
    v11 = *(this + 21);
    if (v11)
    {
      dispatch_release(v11);
    }
  }

  v12 = *(this + 19);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(this + 17);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(this + 15);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(this + 13);
  if (v15)
  {
    sub_100004A34(v15);
  }

  sub_1000FEFCC(this + 9);
  v16 = *(this + 8);
  *(this + 8) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 7);
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 6);
  *(this + 6) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  BasebandSettingsInterface::~BasebandSettingsInterface(this);
}

{
  BasebandSettings::~BasebandSettings(this);

  operator delete();
}

void BasebandSettings::notifyServiceShutdown(uint64_t a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void BasebandSettings::notifyServiceStart(BasebandSettings *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void BasebandSettings::notifyServiceBootstrap(BasebandSettings *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void BasebandSettings::notifyServiceMigration(BasebandSettings *this, dict a2, group_session a3)
{
  v4 = *a3.var0.fObj;
  if (*a3.var0.fObj)
  {
    dispatch_retain(*a3.var0.fObj);
    dispatch_group_enter(v4);
  }

  v5 = 0uLL;
  sub_100004AA0(&v5, this + 1);
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  v5 = 0uLL;
  operator new();
}

void BasebandSettings::basebandSettingsDriverStatus(BasebandSettings *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

uint64_t BasebandSettings::isFileLinedUp_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  BasebandSettings::getModel_sync(a1, a2, &v10);
  if (v10)
  {
    v6 = (*(*v10 + 80))(v10, a3);
  }

  else
  {
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v8 = asString(a3);
      sub_10177BF00(v8, v12);
    }

    v6 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v6;
}

uint64_t BasebandSettings::getModel_sync@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(result + 632);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = result + 632;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 != result + 632 && *(v4 + 32) <= a2)
  {
    v6 = *(v4 + 40);
    v5 = *(v4 + 48);
    *a3 = v6;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void BasebandSettings::compareAndLineupFile_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((BasebandSettings::isFileLinedUp_sync(a1, a2, a3) & 1) == 0)
  {
    v13 = 0;
    v14 = 0;
    v8 = *(a1 + 64);
    isFileLinedUp_sync = BasebandSettings::isFileLinedUp_sync(a1, a2, 0);
    (*(*v8 + 48))(&v13, v8, a3, a4, isFileLinedUp_sync);
    v10 = v13;
    if (!v13)
    {
      goto LABEL_15;
    }

    v11 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100004AA0(&v16, (a1 + 8));
    sub_10070C8B4(v18, a1 + 760);
    v12 = (*(*v10 + 32))(v10, a1 + 96, a2, &v16, v18);
    sub_10070CF14(v18);
    if (v17)
    {
      sub_100004A34(v17);
    }

    if (v12 && (*(*v10 + 24))(v10))
    {
      v15[0] = v10;
      v15[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BasebandSettings::addFileToPush_sync(a1, a2, v15);
      if (!v11)
      {
        goto LABEL_15;
      }

      sub_100004A34(v11);
    }

    else if (!v11)
    {
      goto LABEL_15;
    }

    sub_100004A34(v11);
LABEL_15:
    if (v14)
    {
      sub_100004A34(v14);
    }
  }
}

void sub_100704824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
    sub_100004A34(v16);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::lineupFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

uint64_t BasebandSettings::lineupFile_sync(uint64_t result, int a2)
{
  v2 = result;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      sub_10071223C();
    }

    if (a2 == 4)
    {
      sub_100712560();
    }
  }

  else
  {
    if (a2 == 1)
    {
      sub_100712804();
    }

    if (a2 == 2)
    {
      sub_100711FC4();
    }
  }

  return result;
}

void sub_100704ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v17 = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100704B10(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  sub_100004AA0(&v8, (*a1 + 8));
  sub_10070C8B4(v10, v3 + 760);
  (*(*v4 + 32))(v4, v3 + 96, 1, &v8, v10);
  sub_10070CF14(v10);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v5 = *a2;
  v6 = a2[1];
  v7[0] = v5;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BasebandSettings::addFileToPush_sync(v3, 1, v7);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100704C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::lineupFile_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((BasebandSettings::isFileLinedUp_sync(a1, a2, a3) & 1) == 0)
  {
    v13 = 0;
    v14 = 0;
    v8 = *(a1 + 64);
    isFileLinedUp_sync = BasebandSettings::isFileLinedUp_sync(a1, a2, 0);
    (*(*v8 + 48))(&v13, v8, a3, a4, isFileLinedUp_sync);
    v10 = v13;
    if (!v13)
    {
      goto LABEL_14;
    }

    v11 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100004AA0(&v16, (a1 + 8));
    sub_10070C8B4(v18, a1 + 760);
    v12 = (*(*v10 + 32))(v10, a1 + 96, a2, &v16, v18);
    sub_10070CF14(v18);
    if (v17)
    {
      sub_100004A34(v17);
    }

    if (v12)
    {
      v15[0] = v10;
      v15[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BasebandSettings::addFileToPush_sync(a1, a2, v15);
      if (!v11)
      {
        goto LABEL_14;
      }

      sub_100004A34(v11);
    }

    else if (!v11)
    {
      goto LABEL_14;
    }

    sub_100004A34(v11);
LABEL_14:
    if (v14)
    {
      sub_100004A34(v14);
    }
  }
}

void sub_100704DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
    sub_100004A34(v16);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::addFileToPush_sync(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v13 = 0;
    v14 = 0;
    BasebandSettings::getModel_sync(a1, a2, &v13);
    v6 = v13;
    if (v13)
    {
      v7 = a3[1];
      v8 = *(*a3 + 84);
      v11 = *a3;
      v12 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = (*(*v6 + 48))(v6, v8, &v11);
      if (v12)
      {
        sub_100004A34(v12);
      }

      if (v9)
      {
        BasebandSettings::prepareFilePushTransaction_sync(a1, a2);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v10 = subscriber::asString();
      sub_10177BF38(v10, v15);
    }

    if (v14)
    {
      sub_100004A34(v14);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177BF70();
  }
}

void sub_100704F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::prepareFilePushTransaction_sync(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v21 = 0;
  v22 = 0;
  BasebandSettings::getModel_sync(a1, a2, &v21);
  v4 = v21;
  if (!v21)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v10 = subscriber::asString();
      sub_10177BFA4(v10, buf);
    }

    goto LABEL_28;
  }

  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v6 = (*(*v4 + 88))(v4);
  if (v6 != 1)
  {
    if (v6)
    {
      goto LABEL_28;
    }

    v7 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v8 = "#E Attempt to prepare file push transaction with no file to push";
    v9 = v7;
    goto LABEL_6;
  }

  v11 = *(a1 + 656);
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = a1 + 656;
  do
  {
    if (*(v11 + 32) >= a2)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < a2));
  }

  while (v11);
  if (v12 == a1 + 656 || *(v12 + 32) > a2)
  {
LABEL_22:
    v16 = *(a1 + 264);
      ;
    }

    sub_100004AA0(buf, (a1 + 8));
    v19 = *buf;
    v18 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
    }

    v24[0] = off_101E752E8;
    v24[1] = v19;
    v24[2] = v18;
    v24[3] = v24;
    BasebandSettingsDriver::prepareFilePushTransaction();
    sub_100712E84(v24);
    v20 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E Failed to create file push transaction", buf, 2u);
    }

    goto LABEL_28;
  }

  v13 = *(v12 + 40);
  v14 = *v5;
  v15 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E Pruning pending file push transaction", buf, 2u);
    }

    sub_1001FE8C8((a1 + 648), v12);
    goto LABEL_22;
  }

  if (v15)
  {
    *buf = 0;
    v8 = "#E Attempt to prepare multiple file push transactions";
    v9 = v14;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
  }

LABEL_28:
  if (v22)
  {
    sub_100004A34(v22);
  }
}

void sub_100705308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, char a15)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::handleFilePushTransactionResult_sync(uint64_t a1, int a2, uint64_t a3)
{
  v35 = a2;
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v7 = *(a1 + 656);
  if (v7)
  {
    v8 = v6;
    v9 = (a1 + 648);
    v10 = (a1 + 656);
    v11 = a1 + 656;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v11 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v11 != v10 && *(v11 + 32) <= a2)
    {
      v12 = a3 == 0;
      v13 = *(v11 + 40);
      v14 = *v6;
      v15 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (!v15)
        {
          goto LABEL_23;
        }

        *buf = 136315138;
        *&buf[4] = asString();
        v16 = "#I Ignoring stale file transfer transaction result: %s";
        v17 = v14;
        v18 = 12;
        goto LABEL_22;
      }

      if (v15)
      {
        *buf = 136315138;
        *&buf[4] = asString();
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N File transfer transaction result: %s", buf, 0xCu);
      }

      if (a3)
      {
        BasebandSettings::maybeAbortPendingTransactionsAndClearCache_sync(a1);
        sub_10006EC28(a1 + 648, *(a1 + 656));
        *(a1 + 648) = v10;
        *(a1 + 656) = 0u;
      }

      else
      {
        v19 = sub_1001FE8C8((a1 + 648), v11);
        if (capabilities::ct::supportsNVRAMUpdateWithoutBasebandReboot(v19))
        {
          v20 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#N Triggering PRI refresh complete", buf, 2u);
          }

          sub_10070584C(a1 + 144, &v35);
        }
      }

      v21 = *(a1 + 664);
      v22 = *(a1 + 40);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (!v23)
        {
          goto LABEL_23;
        }

        *buf = 0;
        v16 = "#N Waiting for all pending transactions(s) to complete";
        v17 = v22;
        v18 = 2;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_23:
        v24 = *(a1 + 664);
        if (v24)
        {
          v25 = *v9;
          if (*v9 == v10)
          {
            v26 = 0;
          }

          else
          {
            v26 = 0;
            do
            {
              memset(buf, 0, sizeof(buf));
              BasebandSettings::getModel_sync(a1, *(v25 + 8), buf);
              if (*buf)
              {
                v27 = (*(**buf + 88))(*buf) != 0;
              }

              else
              {
                v27 = 0;
              }

              if (*&buf[8])
              {
                sub_100004A34(*&buf[8]);
              }

              v28 = v25[1];
              if (v28)
              {
                do
                {
                  v29 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                do
                {
                  v29 = v25[2];
                  v30 = *v29 == v25;
                  v25 = v29;
                }

                while (!v30);
              }

              v26 += v27;
              v25 = v29;
            }

            while (v29 != v10);
          }

          if (v26 == v24)
          {
            v33 = *(a1 + 40);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = v24;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %zu uncommenced transaction(s) remaining. Triggering push again", buf, 0xCu);
            }

            *buf = 0u;
            v37 = 0u;
            sub_100712FEC(buf, (a1 + 176));
            BasebandSettings::fileTransferCleanup_sync(a1, v12);
            (*(**(a1 + 608) + 48))(*(a1 + 608), 0);
            BasebandSettings::sendLinedupFiles_sync(a1, buf);
            sub_10070CE94(buf);
          }
        }

        else
        {
          v31 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            v32 = asString();
            *buf = 136315138;
            *&buf[4] = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I No pending transaction. Cleaning up with result: %s", buf, 0xCu);
          }

          BasebandSettings::fileTransferCleanup_sync(a1, 1);
          (*(**(a1 + 608) + 48))(*(a1 + 608), 0);
        }

        return;
      }

      if (v23)
      {
        v34 = asString();
        *buf = 136315138;
        *&buf[4] = v34;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Final file transfer result: %s", buf, 0xCu);
      }

      if (a3)
      {
        BasebandSettings::resetBBAfterFileTransferComplete_sync(a1);
      }

      else if ((a3 & 0x100000000) != 0)
      {
        BasebandSettings::triggerRFSSync_sync(a1);
      }

      BasebandSettings::fileTransferCleanup_sync(a1, a3 == 0);
    }
  }
}

void sub_10070581C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10070CE94(va);
  _Unwind_Resume(a1);
}

void sub_10070584C(uint64_t a1, int *a2)
{
  v8 = 0;
  v2 = *a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/baseband_refresh_complete");
  object = v8;
  v8 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_1007058F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void BasebandSettings::maybeAbortPendingTransactionsAndClearCache_sync(uint64_t a1)
{
  if (capabilities::ct::supportsCompleteCleanupOnFilePushFailure(a1))
  {
    v2 = *(a1 + 624);
    if (v2 != (a1 + 632))
    {
      do
      {
        v3 = v2[5];
        v4 = v2[6];
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v3 + 64))(v3);
        if (v4)
        {
          sub_100004A34(v4);
        }

        v5 = v2[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v2[2];
            v7 = *v6 == v2;
            v2 = v6;
          }

          while (!v7);
        }

        v2 = v6;
      }

      while (v6 != (a1 + 632));
    }

    v8 = *(a1 + 648);
    if (v8 != (a1 + 656))
    {
      do
      {
        v9 = v8[5] == 0;
        v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v8 + 8));
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          if (v11)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Clearing pending transaction", buf, 2u);
          }

          v15 = sub_1001FE8C8((a1 + 648), v8);
        }

        else
        {
          if (v11)
          {
            v12 = asString();
            *buf = 136315138;
            v17 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Aborting transaction with result: %s", buf, 0xCu);
          }

          FilePushTransaction::markFailureWithResult();
          v13 = v8[6];
          v8[5] = 0;
          v8[6] = 0;
          if (v13)
          {
            sub_100004A34(v13);
          }

          v14 = v8[1];
          if (v14)
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v15 = v8[2];
              v7 = *v15 == v8;
              v8 = v15;
            }

            while (!v7);
          }
        }

        v8 = v15;
      }

      while (v15 != (a1 + 656));
    }
  }
}

void sub_100705B80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::fileTransferCleanup_sync(uint64_t a1, int a2)
{
  (*(**(a1 + 608) + 40))(*(a1 + 608), 128, 0);
  if (a2)
  {
    (*(**(a1 + 608) + 48))(*(a1 + 608), 0);
  }

  v4 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  *(a1 + 316) = 3;
  if (*(a1 + 200))
  {
    sub_100706AC8(a1 + 176, a2);
  }

  v8 = 0;
  sub_100713A8C(a1 + 176, v7);
  sub_10070CE94(v7);
  v5 = *(a1 + 528);
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 512);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100705CD4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void BasebandSettings::sendLinedupFiles_sync(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v4 = *(a1 + 624);
  v5 = (a1 + 632);
  if (v4 != (a1 + 632))
  {
    do
    {
      if ((*(*v4[5] + 80))(v4[5], 0))
      {
        v6 = *(v4 + 8);
        v7 = v4[6];
        v31[0] = v4[5];
        v31[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10070650C(&v32, v6, v31);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      if ((*(*v4[5] + 80))(v4[5], 8))
      {
        v8 = *(v4 + 8);
        v9 = v4[6];
        v30[0] = v4[5];
        v30[1] = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10070650C(&v32, v8, v30);
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      if ((*(*v4[5] + 80))(v4[5], 6))
      {
        v10 = (*(*v4[5] + 80))(v4[5], 0);
        if ((v10 & 1) == 0)
        {
          if (capabilities::ct::requiresMultipleFilesPush(v10))
          {
            BasebandSettings::lineupFile_sync(a1, *(v4 + 8), 0, 0);
          }
        }
      }

      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != v5);
  }

  if ((*(**(a1 + 608) + 56))(*(a1 + 608)))
  {
    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v28) = 0;
    v15 = "#E File transfer is already in progress";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v28, 2u);
    return;
  }

  if (*(a2 + 24))
  {
    sub_100706668((a1 + 176), a2);
  }

  if (*(a1 + 496) == 1)
  {
    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v28) = 0;
    v15 = "#I Radio is down. Pending file transfer until it's ready";
    goto LABEL_30;
  }

  v16 = dispatch_group_create();
  v17 = v16;
  if (v16)
  {
    dispatch_retain(v16);
    dispatch_group_enter(v17);
  }

  v18 = *(a1 + 168);
  *(a1 + 168) = v17;
  if (v18)
  {
    dispatch_group_leave(v18);
    dispatch_release(v18);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  v19 = *(a1 + 624);
  if (v19 == v5)
  {
LABEL_57:
    v27 = *(a1 + 40);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I No files to push after all", &v28, 2u);
    }

    BasebandSettings::fileTransferCleanup_sync(a1, 1);
  }

  else
  {
    v20 = 0;
    while (1)
    {
      (*(*v19[5] + 96))(&v28);
      v21 = v28;
      if (v29)
      {
        sub_100004A34(v29);
      }

      if (v21)
      {
        break;
      }

      v22 = v19[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v19[2];
          v13 = *v23 == v19;
          v19 = v23;
        }

        while (!v13);
      }

      v20 |= v21 != 0;
      v19 = v23;
      if (v23 == v5)
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_57;
        }

        break;
      }
    }

    (*(**(a1 + 608) + 48))(*(a1 + 608), 1);
    v24 = *(a1 + 624);
    if (v24 != v5)
    {
      do
      {
        (*(*v24[5] + 104))(v24[5], a1 + 96, *(a1 + 316));
        v25 = v24[1];
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
            v26 = v24[2];
            v13 = *v26 == v24;
            v24 = v26;
          }

          while (!v13);
        }

        v24 = v26;
      }

      while (v26 != v5);
    }

    BasebandSettings::acquireResourceAndSendFiles_sync(a1);
  }
}

void sub_10070612C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::resetLastBasebandPriVersions_sync(BasebandSettings *this)
{
  v1 = *(this + 78);
  v2 = this + 632;
  if (v1 != this + 632)
  {
    do
    {
      v3 = *(v1 + 5);
      v4 = *(v1 + 6);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 72))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }

      v5 = *(v1 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v1 + 2);
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v1 = v6;
    }

    while (v6 != v2);
  }
}

void sub_1007061F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::handleLastFilePushComplete_sync(BasebandSettings *this)
{
  (*(**(this + 76) + 40))(*(this + 76), 32, 0);
  BasebandSettingsDriver::handleFileTransferComplete(*(this + 16));
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 83);
    LODWORD(v13) = 134217984;
    *(&v13 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#N All files have been pushed. Resetting %lu transaction(s)", &v13, 0xCu);
  }

  (*(**(this + 76) + 40))(*(this + 76), 64, 0);
  v4 = *(this + 81);
  if (v4 != (this + 656))
  {
    do
    {
      BasebandSettings::getModel_sync(this, *(v4 + 8), &v13);
      v5 = (*(*v13 + 88))(v13);
      v6 = *(&v13 + 1);
      if (*(&v13 + 1))
      {
        sub_100004A34(*(&v13 + 1));
      }

      if (v5)
      {
        v7 = *(*(**(this + 6) + 16))(*(this + 6), *(v4 + 8));
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Found uncommenced transaction. Will have to be handled next time", &v13, 2u);
        }
      }

      else
      {
        if (capabilities::ct::supportsNVRAMUpdateWithoutBasebandReboot(v6))
        {
          v8 = *(v4 + 5);
          if (v8)
          {
            if ((FilePushTransaction::hasFailed(v8) & 1) == 0)
            {
              BasebandSettings::triggerPriRefreshStart_sync(this, *(v4 + 8));
            }
          }
        }

        v9 = *(v4 + 6);
        *(v4 + 5) = 0;
        *(v4 + 6) = 0;
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      v10 = *(v4 + 1);
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
          v11 = *(v4 + 2);
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != (this + 656));
  }
}

void sub_100706464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::sendLinedupFiles(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100713258;
  block[3] = &unk_101E75368;
  block[4] = a1 + 8;
  block[5] = v4;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void sub_10070650C(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  if (((*(**a3 + 80))(*a3, 6) & 1) == 0)
  {
    BasebandSettings::lineupFile_sync(v5, a2, 6, 0);
  }

  if (((*(**a3 + 80))(*a3, 8) & 1) == 0)
  {
    BasebandSettings::lineupFile_sync(v5, a2, 8, 0);
  }

  if (((*(**a3 + 80))(*a3, 9) & 1) == 0)
  {
    BasebandSettings::lineupFile_sync(v5, a2, 9, 0);
  }

  if (((*(**a3 + 80))(*a3, 10) & 1) == 0)
  {

    BasebandSettings::lineupFile_sync(v5, a2, 10, 0);
  }
}

void *sub_100706668(void *a1, uint64_t a2)
{
  sub_100713264(v4, a2);
  sub_100712FEC(v4, a1);
  sub_10070CE94(v4);
  return a1;
}

uint64_t BasebandSettings::acquireResourceAndSendFiles_sync(BasebandSettings *this)
{
  result = (*(**(this + 76) + 56))(*(this + 76));
  if (result)
  {
    v3 = dispatch_group_create();
    if (!*(this + 63))
    {
      sub_10000501C(&__p, "/cc/exclusive_assertions/baseband_operation");
      ctu::rest::AssertionHandle::create();
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
      }

      v4 = *(this + 64);
      *(this + 504) = v14;
      if (v4)
      {
        sub_100004A34(v4);
      }

      if (v3)
      {
        dispatch_retain(v3);
        dispatch_group_enter(v3);
      }

      v14 = this;
      *&__p = off_101E75398;
      *(&__p + 1) = this;
      v16 = v3;
      p_p = &__p;
      ctu::rest::AssertionHandle::setHandler_impl();
      sub_10000FF50(&__p);
    }

    if (!*(this + 65))
    {
      v5 = *(this + 68);
      if (v5 && (v5 = std::__shared_weak_count::lock(v5)) != 0)
      {
        v6 = *(this + 67);
      }

      else
      {
        v6 = 0;
      }

      *(this + 65) = v6;
      v7 = *(this + 66);
      *(this + 66) = v5;
      if (v7)
      {
        sub_100004A34(v7);
        v6 = *(this + 65);
      }

      if (v6)
      {
        v8 = *(this + 5);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = CSIBOOLAsString(*(v6 + 68) == 2);
          LODWORD(__p) = 136315138;
          *(&__p + 4) = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Shared prevent baseband reset assertion used. Acquired: %s", &__p, 0xCu);
        }

        (*(**(this + 76) + 40))(*(this + 76), 8, "Prevent baseband reset assertion shared");
      }

      else
      {
        sub_10000501C(&__p, "/cc/assertions/prevent_baseband_reset");
        ctu::rest::AssertionHandle::create();
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p);
        }

        v10 = *(&v14 + 1);
        *(this + 65) = v14;
        v11 = *(this + 66);
        *(this + 66) = *(&v14 + 1);
        if (v11)
        {
          sub_100004A34(v11);
          v10 = *(this + 66);
        }

        v12 = *(this + 65);
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
        }

        *(this + 67) = v12;
        v13 = *(this + 68);
        *(this + 68) = v10;
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        if (capabilities::ct::supportsCompleteCleanupOnFilePushFailure(v13) && *(*(this + 65) + 68) != 2)
        {
          if (v3)
          {
            dispatch_retain(v3);
            dispatch_group_enter(v3);
          }

          *&__p = off_101E75418;
          *(&__p + 1) = this;
          v16 = v3;
          p_p = &__p;
          ctu::rest::AssertionHandle::setHandler_impl();
          sub_10000FF50(&__p);
        }
      }
    }

    operator new();
  }

  return result;
}

void sub_100706A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_10000FF50(&__p);
  sub_10065F7C8(&a11);
  sub_10065F7C8(&a9);
  if (v18)
  {
    dispatch_release(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100706AC8(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void BasebandSettings::sendNextLinedUpFile_sync(BasebandSettings *this)
{
  v2 = *(this + 78);
  v3 = this + 632;
  if (v2 == this + 632)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      (*(**(v2 + 5) + 96))(&v13);
      v6 = v13;
      v5 = v14;
      v13 = 0;
      v14 = 0;
      if (v4)
      {
        sub_100004A34(v4);
        if (v14)
        {
          sub_100004A34(v14);
        }
      }

      if (v6)
      {
        v11 = *(this + 76);
        v12 = asString(*(v6 + 84));
        (*(*v11 + 40))(v11, 16, v12);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = 0;
        operator new();
      }

      v7 = *(v2 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v2 + 2);
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v4 = v5;
      v2 = v8;
    }

    while (v8 != v3);
  }

  v10 = *(this + 5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No more files to push", &v13, 2u);
  }

  BasebandSettings::handleLastFilePushComplete_sync(this);
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_100706D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000FF50(va);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void BasebandSettings::handleFilePushCompletion(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void BasebandSettings::basebandSettingsDriverEnterLowPower(BasebandSettings *this, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void BasebandSettings::applicationProcessorStatus(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N AP %s status failed", &v4, 0xCu);
    }
  }
}

void BasebandSettings::registerCallbacks_sync(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[12]);
  v3 = ServiceMap;
  v4 = "11CCXpcServer";
  if (("11CCXpcServer" & 0x8000000000000000) != 0)
  {
    v5 = ("11CCXpcServer" & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (!v10)
  {
LABEL_7:
    v12 = this[5];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Could not get XPC Server to register tethering assertion status", buf, 2u);
      if (v11)
      {
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (v11)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_12:
  TetheringAssertion::name(buf);
  v13 = this[3];
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_100707280;
  aBlock[3] = &unk_101E74428;
  aBlock[4] = this;
  v15 = _Block_copy(aBlock);
  sub_100A5FBA8(buf, &object, &v15, &v19);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(*buf);
  if (v11)
  {
    return;
  }

LABEL_22:
  sub_100004A34(v9);
}

void sub_10070722C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandSettings::sendAPTetheringStatus_sync(BasebandSettings *this, uint64_t a2)
{
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = CSIBOOLAsString(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received call on tethering up: %s", &v6, 0xCu);
  }

  return (*(**(this + 16) + 112))(*(this + 16), a2);
}

void BasebandSettings::sendAPTetheringStatus(BasebandSettings *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void BasebandSettings::activateTurboMode(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1000224C8(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100707574(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t BasebandSettings::activateTurboMode_sync(capabilities::ct *a1, uint64_t a2)
{
  v4 = capabilities::ct::supportsTurboMode(a1);
  v5 = *(a1 + 5);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Activating turbo mode.", v9, 2u);
    }

    v7 = *(a1 + 16);
    sub_1000224C8(v10, a2);
    (*(*v7 + 184))(v7, v10);
    return sub_10000FF50(v10);
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I This device does not support turbo mode.", v9, 2u);
    }

    return sub_10000FFD0(a2, 0);
  }
}

void sub_1007076B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

void BasebandSettings::getSupportsTARandomization(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10071472C(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100707810(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t BasebandSettings::getSupportsTARandomizationFromDeviceAndCarrierBundle_sync(uint64_t a1, uint64_t a2)
{
  Registry::getTelephonyCapabilities(buf, *(a1 + 96));
  v4 = (*(**buf + 88))(*buf);
  if (v25)
  {
    sub_100004A34(v25);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 96));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_15:
      *buf = 0;
      (*(*v13 + 96))(&v23, v13, a2, 1, @"ShowTARandomizationSwitch", kCFBooleanTrue, 0);
      sub_10002FE1C(buf, &v23);
      sub_10000A1EC(&v23);
      LOBYTE(v23) = 1;
      ctu::cf::assign(&v23, *buf, v17);
      v16 = v23;
      sub_100045C8C(buf);
      if (v14)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_9:
  v15 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
  {
    sub_10177BFDC();
  }

  v16 = 1;
  if ((v14 & 1) == 0)
  {
LABEL_16:
    sub_100004A34(v12);
  }

LABEL_17:
  if (v13)
  {
    v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if ((v4 & v16) == 0)
    {
      if (v19)
      {
        *buf = 67109376;
        *&buf[4] = v4;
        LOWORD(v25) = 1024;
        *(&v25 + 2) = v16 & 1;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I This device (%{BOOL}d) or carrier (%{BOOL}d) does not support TA randomization", buf, 0xEu);
      }

      v20 = 0;
      goto LABEL_25;
    }

    v20 = 1;
    v21 = 1;
    if (v19)
    {
      *buf = 67109376;
      *&buf[4] = 1;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = 1;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I This device (%{BOOL}d) and carrier (%{BOOL}d) supports TA randomization", buf, 0xEu);
LABEL_25:
      v21 = 1;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  return v20 | (v21 << 8);
}

void sub_100707B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandSettings::getSupportsTARandomization_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SupportsTARandomizationFromDeviceAndCarrierBundle_sync = BasebandSettings::getSupportsTARandomizationFromDeviceAndCarrierBundle_sync(a1, a2);
  if ((SupportsTARandomizationFromDeviceAndCarrierBundle_sync & 0x100) != 0)
  {
    v6 = SupportsTARandomizationFromDeviceAndCarrierBundle_sync & 1;
    v5 = a3;
    v7 = 0;
  }

  else
  {
    v5 = a3;
    v6 = 0;
    v7 = 0x2D00000001;
  }

  return sub_100707C10(v5, v6, v7);
}

uint64_t sub_100707C10(uint64_t a1, char a2, uint64_t a3)
{
  v6 = a3;
  v5 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v5, &v6);
}

uint64_t BasebandSettings::getTARandomizationSetting(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100714954;
  v7[3] = &unk_101E75538;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1007149CC;
    v12 = &unk_101E75578;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100714990;
    v12 = &unk_101E75558;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15;
}

uint64_t BasebandSettings::getTARandomizationSettingFromUserPrefOrCarrierBundle_sync(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 96);
  Registry::getTelephonyCapabilities(&__p, *(a1 + 96));
  v5 = (*(*__p + 88))(__p);
  if (v40)
  {
    sub_100004A34(v40);
  }

  if (v5)
  {
    ServiceMap = Registry::getServiceMap(*v4);
    v7 = ServiceMap;
    if (v8 < 0)
    {
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v10 = 5381;
      do
      {
        v8 = v10;
        v11 = *v9++;
        v10 = (33 * v10) ^ v11;
      }

      while (v11);
    }

    std::mutex::lock(ServiceMap);
    __p = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &__p);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
        if (!v14)
        {
LABEL_10:
          v16 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            sub_10177C044();
          }

          TARandomizationSettingUsingImeiPopulation_sync = 0;
          v18 = 0;
LABEL_44:
          if ((v15 & 1) == 0)
          {
            sub_100004A34(v13);
          }

          return TARandomizationSettingUsingImeiPopulation_sync | (v18 << 8);
        }

LABEL_18:
        __p = 0;
        v40 = 0;
        v41 = 0;
        PersonalityIdFromSlotId();
        v38 = 0;
        (*(*v14 + 64))(buf, v14, &__p, @"kTARandomizationSwitchStateKey", 0, 0, 1);
        sub_10002FE1C(&v38, buf);
        sub_10000A1EC(buf);
        if (v38)
        {
          buf[0] = 0;
          ctu::cf::assign(buf, v38, v20);
          TARandomizationSettingUsingImeiPopulation_sync = buf[0];
          v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = CSIBOOLAsString(TARandomizationSettingUsingImeiPopulation_sync);
            *buf = 136315138;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I TA randomization preference set by user to %s", buf, 0xCu);
          }

LABEL_41:
          v18 = 1;
LABEL_42:
          sub_100045C8C(&v38);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_44;
        }

        v23 = Registry::getServiceMap(*v4);
        v24 = v23;
        if (v25 < 0)
        {
          v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
          v27 = 5381;
          do
          {
            v25 = v27;
            v28 = *v26++;
            v27 = (33 * v27) ^ v28;
          }

          while (v28);
        }

        std::mutex::lock(v23);
        *buf = v25;
        v29 = sub_100009510(&v24[1].__m_.__sig, buf);
        if (v29)
        {
          v31 = v29[3];
          v30 = v29[4];
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v24);
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v30);
            if (!v31)
            {
              sub_100004A34(v30);
LABEL_29:
              v32 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
              if (os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
              {
                sub_10177BFDC();
              }

              TARandomizationSettingUsingImeiPopulation_sync = 0;
              v18 = 0;
              goto LABEL_42;
            }
          }

          else
          {
            std::mutex::unlock(v24);
            if (!v31)
            {
              goto LABEL_29;
            }
          }

          v37 = 0;
          (*(*v31 + 96))(buf, v31, a2, 1, @"EnableTARandomizationByDefault", 0, 0);
          sub_10002FE1C(&v37, buf);
          sub_10000A1EC(buf);
          if (v37)
          {
            buf[0] = 0;
            ctu::cf::assign(buf, v37, v33);
            TARandomizationSettingUsingImeiPopulation_sync = buf[0];
            v34 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = "disabled";
              if (TARandomizationSettingUsingImeiPopulation_sync)
              {
                v35 = "enabled";
              }

              *buf = 136315138;
              *&buf[4] = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I TA randomization %s by default", buf, 0xCu);
            }
          }

          else
          {
            TARandomizationSettingUsingImeiPopulation_sync = BasebandSettings::getTARandomizationSettingUsingImeiPopulation_sync(a1, a2);
          }

          sub_100045C8C(&v37);
          if (v30)
          {
            sub_100004A34(v30);
          }

          goto LABEL_41;
        }

        std::mutex::unlock(v24);
        goto LABEL_29;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
  {
    sub_10177C010();
  }

  TARandomizationSettingUsingImeiPopulation_sync = 0;
  v18 = 0;
  return TARandomizationSettingUsingImeiPopulation_sync | (v18 << 8);
}

void sub_1007082F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_100045C8C(&a10);
  if (v19)
  {
    sub_100004A34(v19);
  }

  sub_100045C8C(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t BasebandSettings::getTARandomizationSettingUsingImeiPopulation_sync(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  __str.__r_.__value_.__r.__words[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &__str);
  if (!v10)
  {
    std::mutex::unlock(v5);
    return 0;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    std::mutex::unlock(v5);
    if (v12)
    {
      goto LABEL_11;
    }

    return 0;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  if (!v12)
  {
    v13 = 0;
LABEL_21:
    sub_100004A34(v11);
    return v13;
  }

LABEL_11:
  v35 = 0;
  (*(*v12 + 96))(&__str, v12, a2, 1, @"EnableTARandomizationForPopulation", 0, 0);
  sub_10010B240(&v35, &__str.__r_.__value_.__l.__data_);
  sub_10000A1EC(&__str.__r_.__value_.__l.__data_);
  __str.__r_.__value_.__r.__words[0] = 0;
  ctu::cf::assign(&__str, v35, v14);
  v15 = __str.__r_.__value_.__r.__words[0];
  if (!__str.__r_.__value_.__r.__words[0])
  {
    goto LABEL_20;
  }

  v16 = *(a1 + 296);
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = a1 + 296;
  do
  {
    if (*(v16 + 32) >= a2)
    {
      v17 = v16;
    }

    v16 = *(v16 + 8 * (*(v16 + 32) < a2));
  }

  while (v16);
  if (v17 == a1 + 296 || *(v17 + 32) > a2)
  {
LABEL_19:
    v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    v30 = "Could not find IMEI";
    goto LABEL_43;
  }

  v20 = (v17 + 40);
  v21 = *(v17 + 63);
  if (v21 < 0)
  {
    v22 = *(v17 + 40);
    v23 = *(v17 + 48);
    if (v23)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v22 = (v17 + 40);
    v23 = *(v17 + 63);
    if (*(v17 + 63))
    {
LABEL_27:
      while (1)
      {
        v24 = *v22;
        if (v24 < 0 || (_DefaultRuneLocale.__runetype[v24] & 0x400) == 0)
        {
          break;
        }

        ++v22;
        if (!--v23)
        {
          goto LABEL_30;
        }
      }

      v29 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        if (*(v17 + 63) < 0)
        {
          v20 = *v20;
        }

        LODWORD(__str.__r_.__value_.__l.__data_) = 136380675;
        *(__str.__r_.__value_.__r.__words + 4) = v20;
        v30 = "Could not convert IMEI %{private}s to an unsigned integer";
        v31 = v29;
        v32 = 12;
        goto LABEL_44;
      }

      goto LABEL_20;
    }
  }

LABEL_30:
  if ((v21 & 0x80000000) != 0)
  {
    v21 = *(v17 + 48);
    if (v21)
    {
LABEL_32:
      memset(&__str, 0, sizeof(__str));
      std::string::basic_string(&__str, (v17 + 40), 0, v21 - 1, buf);
      v25 = std::stoul(&__str, 0, 10) % 0x64;
      v26 = *(**(a1 + 48) + 16);
      if (v25 <= v15)
      {
        v33 = *v26();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          p_str = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          *buf = 136380931;
          v37 = p_str;
          v38 = 2048;
          v39 = v15;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Enabling TA randomization due to IMEI %{private}s included in population enablement %zu", buf, 0x16u);
        }

        v13 = 1;
      }

      else
      {
        v27 = *v26();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v28 = __str.__r_.__value_.__r.__words[0];
          }

          *buf = 136380931;
          v37 = v28;
          v38 = 2048;
          v39 = v15;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Leaving TA randomization disabled due to IMEI %{private}s above population enablement %zu", buf, 0x16u);
        }

        v13 = 0;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      sub_100029A48(&v35);
      if (v11)
      {
        goto LABEL_21;
      }

      return v13;
    }
  }

  else if (*(v17 + 63))
  {
    goto LABEL_32;
  }

  v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    v30 = "IMEI is empty";
LABEL_43:
    v31 = v18;
    v32 = 2;
LABEL_44:
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v30, &__str, v32);
  }

LABEL_20:
  sub_100029A48(&v35);
  v13 = 0;
  if (v11)
  {
    goto LABEL_21;
  }

  return v13;
}

void sub_1007088D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = *(*(**(v22 + 48) + 16))(*(v22 + 48), v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10177C078(&__p, v24, v25);
    }

    __cxa_end_catch();
    JUMPOUT(0x100708720);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_100029A48(&a10);
  if (v20)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void BasebandSettings::setTARandomizationUserSetting(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  sub_100014110(&v8, a4);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100708B1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void BasebandSettings::setTARandomizationUserSetting_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 96);
  Registry::getTelephonyCapabilities(&__p, *(a1 + 96));
  v9 = (*(*__p + 88))(__p);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if (v9)
  {
    ServiceMap = Registry::getServiceMap(*v8);
    v11 = ServiceMap;
    if (v12 < 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    __p = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &__p);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
        if (!v18)
        {
LABEL_10:
          v20 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            sub_10177C044();
          }

          sub_100022FB0(a4, 0x2D00000001);
LABEL_41:
          if ((v19 & 1) == 0)
          {
            sub_100004A34(v17);
          }

          return;
        }

LABEL_18:
        __p = 0;
        v38 = 0;
        v39 = 0;
        PersonalityIdFromSlotId();
        v36 = 0;
        (*(*v18 + 64))(buf, v18, &__p, @"kTARandomizationSwitchStateKey", 0, 0, 1);
        sub_10002FE1C(&v36, buf);
        sub_10000A1EC(buf);
        if (!v36)
        {
          goto LABEL_22;
        }

        buf[0] = 0;
        ctu::cf::assign(buf, v36, v22);
        v23 = buf[0];
        v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = CSIBOOLAsString(v23);
          v26 = CSIBOOLAsString(a3);
          *buf = 136315394;
          v41 = v25;
          v42 = 2080;
          v43 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I TA randomization preference previously set by user to %s, new preference: %s", buf, 0x16u);
        }

        if (v23 == a3)
        {
          v30 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I TA randomization preference is not changing", buf, 2u);
          }
        }

        else
        {
LABEL_22:
          v27 = &kCFBooleanTrue;
          if (!a3)
          {
            v27 = &kCFBooleanFalse;
          }

          if ((*(*v18 + 48))(v18, &__p, @"kTARandomizationSwitchStateKey", *v27, 0, 0, 1, 0))
          {
            v28 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
            {
              v29 = CSIBOOLAsString(a3);
              sub_10177C178(v29, buf);
            }

            sub_100022FB0(a4, 0x2D00000001);
            goto LABEL_39;
          }

          v31 = *(a1 + 112);
          if (v31)
          {
            (*(*v31 + 48))(v31, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
            v32 = *(a1 + 40);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Finished synchronizing TA randomization user preference", buf, 2u);
            }
          }

          else
          {
            v33 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
            {
              sub_10177C1B0();
            }
          }

          (*(**(a1 + 128) + 192))(*(a1 + 128), a2, a3);
          BasebandSettings::sendTARandomizationSwitchState_sync(a1, a2);
          v34 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = CSIBOOLAsString(a3);
            *buf = 136315138;
            v41 = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Successfully saved user preference for TA randomization: %s", buf, 0xCu);
          }
        }

        sub_100022FB0(a4, 0);
LABEL_39:
        sub_100045C8C(&v36);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v21 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
  {
    sub_10177C144();
  }

  sub_100022FB0(a4, 0x2D00000001);
}

void sub_100709184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_100045C8C(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(a1);
}

void BasebandSettings::sendTARandomizationSwitchState_sync(uint64_t a1, int a2)
{
  if (a2)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 96));
    v3 = ServiceMap;
    if ((v4 & 0x8000000000000000) != 0)
    {
      v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v6 = 5381;
      do
      {
        v4 = v6;
        v7 = *v5++;
        v6 = (33 * v6) ^ v7;
      }

      while (v7);
    }

    std::mutex::lock(ServiceMap);
    v11 = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, &v11);
    if (v8)
    {
      v10 = v8[3];
      v9 = v8[4];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v3);
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v9);
        if (!v10)
        {
          sub_100004A34(v9);
          return;
        }

LABEL_11:
        operator new();
      }

      std::mutex::unlock(v3);
      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      std::mutex::unlock(v3);
    }
  }
}

void sub_1007093DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  (*(*v15 + 8))(v15);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t BasebandSettings::significantTimeChange_sync(BasebandSettings *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Time is being set on baseband", v5, 2u);
  }

  v3 = *(this + 16);
  v5[0] = off_101E755A8;
  v5[3] = v5;
  (*(*v3 + 64))(v3, v5);
  return sub_100714C10(v5);
}
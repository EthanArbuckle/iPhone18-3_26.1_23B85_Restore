uint64_t sub_100581F6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100581FF4(result, a4);
  }

  return result;
}

void sub_100581FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10003CA58(&a9);
  _Unwind_Resume(a1);
}

void sub_100581FF4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100559E88(a1, a2);
  }

  sub_1000CE3D4();
}

void *sub_100582030(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v4[3] = *(v6 + 3);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  LOBYTE(v11) = 1;
  sub_1005820F8(v10);
  return v4;
}

uint64_t sub_1005820F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000D4894(a1);
  }

  return a1;
}

uint64_t sub_100582130(uint64_t a1)
{
  v4 = (a1 + 168);
  sub_10003CA58(&v4);
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  return sub_100581DC0(a1);
}

uint64_t sub_100582180(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 112);
    if (v3)
    {
      *(a1 + 120) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    *(a1 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100582210(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  return sub_100581DC0(a1);
}

uint64_t sub_100582264(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  sub_1005822AC(a1, a2);
  return a1;
}

uint64_t sub_1005822AC(uint64_t a1, uint64_t a2)
{
  result = sub_100582310(a1);
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E60EA8[v5])(&v6, a2);
    *(a1 + 32) = v5;
  }

  return result;
}

uint64_t sub_100582310(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != -1)
  {
    result = (off_101E60E98[v2])(&v3, result);
  }

  *(v1 + 32) = -1;
  return result;
}

void sub_10058236C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

_BYTE **sub_100582384(_BYTE **result, __int128 *a2)
{
  v3 = *result;
  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(*result, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(v3 + 24) = *(a2 + 3);
  return result;
}

uint64_t sub_1005823D8(uint64_t a1)
{
  sub_100582310(a1 + 144);
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100582470(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v5 = *(a1 + 16);
  }

  v6 = *(a1 + 24);
  sub_10000501C(a2, "LazuliMLSEventOutgoingUnhealableIncomingError");
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005824EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100582508(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100583134(&v3, a1);
  sub_10000501C(a2, "LazuliMLSEventIncomingApplicationMessage");
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v4 < 0)
  {
    operator delete(v3);
  }
}

void sub_1005825E8(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&v5, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v17 = *(a1 + 160);
  }

  v4 = *(a1 + 176);
  v18 = *(a1 + 168);
  memset(v19, 0, sizeof(v19));
  sub_100581F6C(v19, v4, *(a1 + 184), (*(a1 + 184) - v4) >> 5);
  sub_10000501C(a2, "LazuliMLSEventIncomingGroupCreated");
  v20 = v19;
  sub_10003CA58(&v20);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_10058273C(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&v5, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v17 = *(a1 + 160);
  }

  v4 = *(a1 + 176);
  v18 = *(a1 + 168);
  memset(v19, 0, sizeof(v19));
  sub_100581F6C(v19, v4, *(a1 + 184), (*(a1 + 184) - v4) >> 5);
  sub_10000501C(a2, "LazuliMLSEventIncomingMemberAdded");
  v20 = v19;
  sub_10003CA58(&v20);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100582890(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&v5, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v17 = *(a1 + 160);
  }

  v4 = *(a1 + 176);
  v18 = *(a1 + 168);
  memset(v19, 0, sizeof(v19));
  sub_100581F6C(v19, v4, *(a1 + 184), (*(a1 + 184) - v4) >> 5);
  sub_10000501C(a2, "LazuliMLSEventIncomingMemberKicked");
  v20 = v19;
  sub_10003CA58(&v20);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_1005829E4(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&v4, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v16 = *(a1 + 160);
  }

  v17 = *(a1 + 168);
  sub_10000501C(a2, "LazuliMLSEventIncomingSelfKicked");
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

void sub_100582AF4(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&v4, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v16 = *(a1 + 160);
  }

  v17 = *(a1 + 168);
  sub_10000501C(a2, "LazuliMLSEventIncomingDowngradeRecommended");
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

void sub_100582C04(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    v15 = *(a1 + 144);
    v16 = *(a1 + 160);
  }

  v17 = *(a1 + 168);
  if (*(a1 + 199) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 176), *(a1 + 184));
  }

  else
  {
    __p = *(a1 + 176);
    v19 = *(a1 + 192);
  }

  sub_10000501C(a2, "LazuliMLSEventIncomingGroupNameChange");
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100582D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_100581DC0(&a10);
  _Unwind_Resume(a1);
}

void sub_100582D68(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&v4, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v16 = *(a1 + 160);
  }

  v17 = *(a1 + 168);
  sub_10000501C(a2, "LazuliMLSEventIncomingApplicationSignatureVerified");
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

void sub_100582E78(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(&v16, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    v16 = *(a1 + 144);
    v17 = *(a1 + 160);
  }

  v4 = *(a1 + 176);
  v18 = *(a1 + 168);
  __p = 0;
  v20 = 0;
  v21 = 0;
  sub_100034C50(&__p, v4, *(a1 + 184), *(a1 + 184) - v4);
  sub_10000501C(a2, "LazuliMLSEventIncomingResendApplicationMessage");
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100582FC8(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&v4, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v16 = *(a1 + 160);
  }

  v17 = *(a1 + 168);
  sub_10000501C(a2, "LazuliMLSEventIncomingInternalStateUpdated");
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

uint64_t sub_1005830D8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_1005833A8(v4, a1);
  sub_10000501C(a2, "LazuliMLSEventOutgoingInTheContextOfIncoming");
  return sub_100583454(v4);
}

uint64_t sub_100583134(uint64_t a1, uint64_t a2)
{
  sub_100581E40(a1, a2);
  if (*(a2 + 167) < 0)
  {
    sub_100005F2C((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v4 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v4;
  }

  v5 = *(a2 + 168);
  *(a1 + 176) = 0;
  *(a1 + 168) = v5;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_100034C50(a1 + 176, *(a2 + 176), *(a2 + 184), *(a2 + 184) - *(a2 + 176));
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_100034C50(a1 + 200, *(a2 + 200), *(a2 + 208), *(a2 + 208) - *(a2 + 200));
  return a1;
}

uint64_t sub_100583210(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  return sub_100581DC0(a1);
}

uint64_t sub_100583274(uint64_t a1)
{
  v3 = (a1 + 176);
  sub_10003CA58(&v3);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  return sub_100581DC0(a1);
}

uint64_t sub_1005832C4(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100583354(uint64_t a1)
{
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  return sub_100581DC0(a1);
}

uint64_t sub_1005833A8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 200) = -1;
  sub_1005833F0(a1, a2);
  return a1;
}

uint64_t sub_1005833F0(uint64_t a1, uint64_t a2)
{
  result = sub_100583454(a1);
  v5 = *(a2 + 200);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E60F80[v5])(&v6, a2);
    *(a1 + 200) = v5;
  }

  return result;
}

uint64_t sub_100583454(uint64_t result)
{
  v1 = result;
  v2 = *(result + 200);
  if (v2 != -1)
  {
    result = (off_101E60F20[v2])(&v3, result);
  }

  *(v1 + 200) = -1;
  return result;
}

void sub_1005834AC(uint64_t a1, uint64_t a2)
{
  v8 = (a2 + 168);
  sub_10003CA58(&v8);
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_100583550(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_1005835F4(uint64_t a1, uint64_t a2)
{
  v8 = (a2 + 168);
  sub_10003CA58(&v8);
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_100583698(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_10058373C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_1005837E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_100583884(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 176);
  if (v3)
  {
    *(a2 + 184) = v3;
    operator delete(v3);
  }

  if (*(a2 + 167) < 0)
  {
    operator delete(*(a2 + 144));
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_100583938(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_1005839DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_100583A80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_100583B24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 136) == 1)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      *(a2 + 120) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a2 + 88);
  if (v4)
  {
    *(a2 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    *(a2 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    *(a2 + 48) = v6;
    operator delete(v6);
  }

  if (*(a2 + 23) < 0)
  {
    v7 = *a2;

    operator delete(v7);
  }
}

void sub_100583BB8(uint64_t a1, uint64_t a2)
{
  sub_100582310(a2 + 144);
  if (*(a2 + 136) == 1)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      *(a2 + 120) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a2 + 88);
  if (v4)
  {
    *(a2 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    *(a2 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    *(a2 + 48) = v6;
    operator delete(v6);
  }

  if (*(a2 + 23) < 0)
  {
    v7 = *a2;

    operator delete(v7);
  }
}

uint64_t sub_100583C54(char **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100581E40(*a1, a2);
  *(v3 + 18) = 0;
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  sub_100034C50((v3 + 144), *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
  *(v3 + 21) = 0;
  *(v3 + 22) = 0;
  *(v3 + 23) = 0;
  return sub_100581F6C((v3 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 5);
}

void sub_100583CC0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v4;
    operator delete(v4);
  }

  sub_100581DC0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100583CEC(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50((v4 + 144), *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t sub_100583D40(char **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100581E40(*a1, a2);
  *(v3 + 18) = 0;
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  sub_100034C50((v3 + 144), *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
  *(v3 + 21) = 0;
  *(v3 + 22) = 0;
  *(v3 + 23) = 0;
  return sub_100581F6C((v3 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 5);
}

void sub_100583DAC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v4;
    operator delete(v4);
  }

  sub_100581DC0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100583DD8(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50((v4 + 144), *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t sub_100583E2C(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50((v4 + 144), *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t sub_100583E80(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50((v4 + 144), *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t sub_100583ED4(char **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100581E40(*a1, a2);
  if (*(a2 + 167) < 0)
  {
    sub_100005F2C(v3 + 144, *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v4 = *(a2 + 144);
    *(v3 + 20) = *(a2 + 160);
    *(v3 + 9) = v4;
  }

  v5 = *(a2 + 168);
  *(v3 + 22) = 0;
  *(v3 + 21) = v5;
  *(v3 + 23) = 0;
  *(v3 + 24) = 0;
  return sub_100034C50((v3 + 176), *(a2 + 176), *(a2 + 184), *(a2 + 184) - *(a2 + 176));
}

uint64_t sub_100583F74(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50((v4 + 144), *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t sub_100583FC8(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50((v4 + 144), *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t sub_10058401C(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50((v4 + 144), *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t sub_100584078(char **a1, __int128 *a2)
{
  v3 = *a1;
  sub_100581E40(*a1, a2);
  return sub_100582264((v3 + 144), (a2 + 9));
}

void sub_1005840C4(__int128 *a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&v3, a1);
  sub_10000501C(a2, "LazuliMLSFetchGroupRecoveryInfo");
  if (v13 == 1 && __p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v4 < 0)
  {
    operator delete(v3);
  }
}

void sub_100584174(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v4 = *(a1 + 16);
  }

  sub_10000501C(a2, "LazuliMLSFetchMember");
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005841E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100584214(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  sub_100034C50(&__p, *a1, a1[1], a1[1] - *a1);
  sub_10000501C(a2, "LazuliMLSOutgoingEventResultSuccessAndStore");
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_100584278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100584304@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_1005843BC(v4, a1);
  sub_10000501C(a2, "LazuliMLSFetchGroupRecoveryInfoResult");
  return sub_100584468(v4);
}

uint64_t sub_100584360@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_1005844DC(v4, a1);
  sub_10000501C(a2, "LazuliMLSFetchMemberResult");
  return sub_100584588(v4);
}

void sub_1005843A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100584588(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005843BC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_100584404(a1, a2);
  return a1;
}

uint64_t sub_100584404(uint64_t a1, uint64_t a2)
{
  result = sub_100584468(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E61060[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t sub_100584468(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_101E61048[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_1005844C0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t sub_1005844DC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  sub_100584524(a1, a2);
  return a1;
}

uint64_t sub_100584524(uint64_t a1, uint64_t a2)
{
  result = sub_100584588(a1);
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E61090[v5])(&v6, a2);
    *(a1 + 32) = v5;
  }

  return result;
}

uint64_t sub_100584588(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != -1)
  {
    result = (off_101E61078[v2])(&v3, result);
  }

  *(v1 + 32) = -1;
  return result;
}

void sub_1005845E0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

const char *sub_1005845FC(unsigned int a1)
{
  if (a1 > 6)
  {
    return "Unknown PolicyType";
  }

  else
  {
    return off_101E61560[a1];
  }
}

void *sub_100584620(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100584688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1005846AC(uint64_t a1, uint64_t *a2, NSObject **a3, const char *a4, int a5)
{
  PersonalitySpecificImpl::PersonalitySpecificImpl();
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, a4);
  sub_100584620((a1 + 24), a3, &v13);
  ctu::OsLogContext::~OsLogContext(&v13);
  *a1 = off_101E610E0;
  v11 = *a2;
  v10 = a2[1];
  *(a1 + 64) = off_101E61188;
  *(a1 + 72) = v11;
  *(a1 + 80) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 88) = a5;
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = a1 + 264;
  *(a1 + 320) = 0;
  *(a1 + 312) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  return a1;
}

void sub_1005847F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  PersonalitySpecificImpl::~PersonalitySpecificImpl(v9);
  PersonalitySpecific::~PersonalitySpecific(v9);
  _Unwind_Resume(a1);
}

void sub_100584918(_Unwind_Exception *exception_object)
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

void sub_100584940(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 56)) = a2[5];
  *(a1 + 64) = a2[6];
  sub_100584B14(a1, 1);
  v4 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_100009970(a1 + 256, *(a1 + 264));
  sub_10058BDE4((a1 + 208));
  sub_10058BDE4((a1 + 160));
  if (*(a1 + 152) == 1)
  {
    v5 = *(a1 + 128);
    if (v5)
    {
      *(a1 + 136) = v5;
      operator delete(v5);
    }
  }

  sub_10006DCAC(a1 + 104, *(a1 + 112));

  v6 = *(a1 + 80);
  if (v6)
  {
    sub_100004A34(v6);
  }

  DataConnectionAgentPolicyInterface::~DataConnectionAgentPolicyInterface((a1 + 64));
  ctu::OsLogLogger::~OsLogLogger((a1 + 56));
  sub_1000C0544((a1 + 24));

  PersonalitySpecificImpl::~PersonalitySpecificImpl(a1);
}

void sub_100584B14(uint64_t a1, char a2)
{
  if (*(a1 + 120) || *(a1 + 200) || *(a1 + 248) || *(a1 + 312))
  {
    v4 = (*(*a1 + 40))(a1);
    if (v4)
    {
      v31 = a2;
      while (*(a1 + 200))
      {
        v5 = *(*(a1 + 168) + 8 * (*(a1 + 192) / 0x66uLL)) + 40 * (*(a1 + 192) % 0x66uLL);
        v6 = [v4 removePolicyWithID:*v5];
        v7 = *(a1 + 56);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          if (v33 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          v9 = (v5 + 8);
          if (*(v5 + 31) < 0)
          {
            v9 = *v9;
          }

          v10 = *v5;
          v11 = asStringBool(v6);
          *buf = 136315906;
          v35 = v8;
          v36 = 2080;
          v37 = v9;
          v38 = 2048;
          v39 = v10;
          v40 = 2080;
          v41 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I (unset) removed fTmpPolicies for NWAgent %s: key=%s, id=%lu, result is %s", buf, 0x2Au);
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10058C0C8((a1 + 160));
      }

      while (*(a1 + 248))
      {
        v12 = *(*(a1 + 216) + 8 * (*(a1 + 240) / 0x66uLL)) + 40 * (*(a1 + 240) % 0x66uLL);
        v13 = [v4 removePolicyWithID:*v12];
        v14 = *(a1 + 56);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          if (v33 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          v16 = (v12 + 8);
          if (*(v12 + 31) < 0)
          {
            v16 = *v16;
          }

          v17 = *v12;
          v18 = asStringBool(v13);
          *buf = 136315906;
          v35 = v15;
          v36 = 2080;
          v37 = v16;
          v38 = 2048;
          v39 = v17;
          v40 = 2080;
          v41 = v18;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I (unset) removed fTmpPoliciesLong for NWAgent %s: key=%s, id=%lu, result is %s", buf, 0x2Au);
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10058C0C8((a1 + 208));
      }

      sub_100009970(a1 + 256, *(a1 + 264));
      *(a1 + 264) = 0;
      *(a1 + 272) = 0;
      *(a1 + 256) = a1 + 264;
      v19 = *(a1 + 104);
      v20 = (a1 + 112);
      if (v19 != (a1 + 112))
      {
        do
        {
          v21 = v19[4];
          v22 = [v4 removePolicyWithID:v21];
          v23 = *(a1 + 56);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            sub_100585044(a1, __p);
            v24 = v33;
            v25 = __p[0];
            v26 = asStringBool(v22);
            *buf = 136315650;
            v27 = __p;
            if (v24 < 0)
            {
              v27 = v25;
            }

            v35 = v27;
            v36 = 2048;
            v37 = v21;
            v38 = 2080;
            v39 = v26;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I removed fPolicies for NWAgent %s: %lu, result is %s", buf, 0x20u);
            if (v33 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v28 = v19[1];
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
              v29 = v19[2];
              v30 = *v29 == v19;
              v19 = v29;
            }

            while (!v30);
          }

          v19 = v29;
        }

        while (v29 != v20);
      }

      sub_10006DCAC(a1 + 104, *(a1 + 112));
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      *(a1 + 104) = v20;
      if (v31)
      {
        sub_100585D4C(a1, 0);
      }

      else
      {
        *(a1 + 312) = 0;
      }
    }
  }
}

void sub_100584F94(uint64_t a1)
{
  sub_100584940(a1, &off_101E611F8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_100584FC4(uint64_t a1)
{
  sub_100584940(a1 - 64, &off_101E611F8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_100584FF8(uint64_t a1)
{
  sub_100584940(a1, &off_101E611F8);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void sub_100585044(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 296);
  if (v3)
  {
    v4 = [v3 UUIDString];
    sub_10000501C(a2, [v4 UTF8String]);
  }

  else
  {

    sub_10000501C(a2, "empty");
  }
}

void sub_1005850E8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 304);
  if (v3)
  {
    v4 = [v3 UUIDString];
    sub_10000501C(a2, [v4 UTF8String]);
  }

  else
  {

    sub_10000501C(a2, "empty");
  }
}

void sub_1005851AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 296);
  if (v12)
  {
    v13 = v12 == v10;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    sub_100584B14(a1, 1);
  }

  if (v10)
  {
    v14 = *(a1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v10 UUIDString];
      v19 = 136315138;
      v20 = [v15 UTF8String];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I set agent UUID %s", &v19, 0xCu);
    }
  }

  else
  {
    v16 = *(a1 + 296);
    if (v16)
    {
      v17 = *(a1 + 56);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v16 UUIDString];
        v19 = 136315138;
        v20 = [v18 UTF8String];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I removed agent UUID %s", &v19, 0xCu);
      }
    }
  }

  objc_storeStrong((a1 + 296), a4);
  objc_storeStrong((a1 + 280), a2);
  objc_storeStrong((a1 + 288), a3);
  objc_autoreleasePoolPop(v11);
}

void sub_1005853B8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 UUIDString];
    v8 = 136315138;
    v9 = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I set agent slice UUID %s", &v8, 0xCu);
  }

  objc_storeStrong((a1 + 304), a2);
  objc_autoreleasePoolPop(v5);
}

void sub_1005854DC(uint64_t a1)
{
  if (*(a1 + 312))
  {
    v2 = *(a1 + 56);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, __p);
      if (v5 >= 0)
      {
        v3 = __p;
      }

      else
      {
        v3 = __p[0];
      }

      *buf = 136315138;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Do not need policy for NWAgent %s", buf, 0xCu);
      if (v5 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100584B14(a1, 1);
  }
}

void sub_1005855C4(PersonalitySpecificImpl *a1)
{
  if (*(a1 + 37))
  {
    if (*(a1 + 78) != 4)
    {
      v2 = (*(*a1 + 40))(a1);
      if (v2)
      {
        sub_100584B14(a1, 0);
        v38 = [CCNEPolicyResult scopedNetworkAgent:*(a1 + 37)];
        v3 = [NSUUID alloc];
        PersonalitySpecificImpl::simSlot(a1);
        subscriber::generateUuidStrFromSlotId();
        v4 = [v3 initWithUUIDString:*buf];
        sub_100005978(buf);
        v36 = v4;
        v5 = [v4 UUIDString];
        v39 = [CCNEPolicyCondition accountIdentifier:v5];

        v40 = [CCNEPolicyCondition requiredAgentDomain:*(a1 + 35) agentType:*(a1 + 36)];
        v6 = [CCNEPolicy alloc];
        v7 = +[CCNEPolicyCondition allInterfaces];
        v55[0] = v7;
        v55[1] = v39;
        v55[2] = v40;
        v8 = [NSArray arrayWithObjects:v55 count:3];
        v37 = [(CCNEPolicy *)v6 initWithOrder:1000001 result:v38 conditions:v8];

        v9 = [v2 addPolicy:v37];
        v42 = v9;
        v10 = *(a1 + 7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          if (v45 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = *__p;
          }

          v12 = [v36 UUIDString];
          v13 = v12;
          v14 = [v12 UTF8String];
          v15 = [*(a1 + 35) UTF8String];
          v16 = [*(a1 + 36) UTF8String];
          *buf = 136316162;
          *&buf[4] = v11;
          v47 = 2048;
          v48 = v42;
          v49 = 2080;
          v50 = v14;
          v51 = 2080;
          v52 = v15;
          v53 = 2080;
          v54 = v16;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Adding non-default non-Internet policy for NWAgent %s: id=%lu, account=%s, domain=%s, type=%s", buf, 0x34u);

          if (v45 < 0)
          {
            operator delete(*__p);
          }

          v9 = v42;
        }

        v17 = *(a1 + 7);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          if (v18)
          {
            *buf = 67109120;
            *&buf[4] = v9;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
          }

          sub_1004C12FC(a1 + 104, &v42);
          v19 = [CCNEPolicyResult skipWithOrder:0];
          v20 = [CCNEPolicy alloc];
          v21 = +[CCNEPolicyCondition allInterfaces];
          v43[0] = v21;
          v43[1] = v39;
          v43[2] = v40;
          v22 = [NSArray arrayWithObjects:v43 count:3];
          v23 = [(CCNEPolicy *)v20 initWithOrder:1000002 result:v19 conditions:v22];

          v24 = [v2 addPolicy:v23];
          v41 = v24;
          v25 = *(a1 + 7);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            sub_100585044(a1, __p);
            v26 = v45 >= 0 ? __p : *__p;
            v27 = [v36 UUIDString];
            v28 = v27;
            v29 = [v27 UTF8String];
            v30 = [*(a1 + 35) UTF8String];
            v31 = [*(a1 + 36) UTF8String];
            *buf = 136316162;
            *&buf[4] = v26;
            v47 = 2048;
            v48 = v24;
            v49 = 2080;
            v50 = v29;
            v51 = 2080;
            v52 = v30;
            v53 = 2080;
            v54 = v31;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Adding non-default non-Internet SKIP policy for NWAgent %s: id=%lu, account=%s, domain=%s, type=%s", buf, 0x34u);

            if (v45 < 0)
            {
              operator delete(*__p);
            }
          }

          v32 = *(a1 + 7);
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          if (v24)
          {
            if (v33)
            {
              *buf = 67109120;
              *&buf[4] = v24;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
            }

            sub_1004C12FC(a1 + 104, &v41);
            sub_100585D4C(a1, 4u);
          }

          else
          {
            if (v33)
            {
              sub_100585044(a1, buf);
              v35 = v49 >= 0 ? buf : *buf;
              *__p = 136315138;
              *&__p[4] = v35;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#E Adding other non-default skip policy for NWAgent %s: policy is invalid", __p, 0xCu);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(*buf);
              }
            }

            sub_1005854DC(a1);
          }
        }

        else
        {
          if (v18)
          {
            sub_100585044(a1, buf);
            v34 = v49 >= 0 ? buf : *buf;
            *__p = 136315138;
            *&__p[4] = v34;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E Adding other non-default policy for NWAgent %s: policy is invalid", __p, 0xCu);
            if (SHIBYTE(v49) < 0)
            {
              operator delete(*buf);
            }
          }

          sub_1005854DC(a1);
        }
      }
    }
  }

  else
  {

    sub_1005854DC(a1);
  }
}

uint64_t sub_100585D4C(uint64_t a1, unsigned int a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 apply];
    v7 = *(a1 + 56);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v8 = sub_1005845FC(a2);
    sub_100585044(a1, __p);
    v9 = v20;
    v10 = *__p;
    v11 = asStringBool(v6);
    v12 = __p;
    *buf = 136315650;
    if (v9 < 0)
    {
      v12 = v10;
    }

    *&buf[4] = v8;
    v22 = 2080;
    v23 = v12;
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Applied policy %s for NWAgent %s: result=%s", buf, 0x20u);
    if (v20 < 0)
    {
      operator delete(*__p);
      if (v6)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_6:
      if (v6)
      {
        goto LABEL_23;
      }
    }

    v13 = *(a1 + 56);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, buf);
      v14 = v24 >= 0 ? buf : *buf;
      *__p = 136315138;
      *&__p[4] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E error in policy appling for NWAgent %s, trying again...", __p, 0xCu);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(*buf);
      }
    }

    if (([v5 apply] & 1) == 0)
    {
      v15 = *(a1 + 56);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        if (v24 >= 0)
        {
          v16 = buf;
        }

        else
        {
          v16 = *buf;
        }

        *__p = 136315138;
        *&__p[4] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E error in policy applying for NWAgent %s final", __p, 0xCu);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(*buf);
        }
      }

      v17 = 0;
      a2 = 6;
      goto LABEL_24;
    }

LABEL_23:
    v17 = 1;
LABEL_24:
    *(a1 + 312) = a2;
    goto LABEL_25;
  }

  v17 = 0;
LABEL_25:

  return v17;
}

uint64_t sub_100585FFC(uint64_t a1)
{
  if (!*(a1 + 296))
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  if (v2 && *(a1 + 152) == 1)
  {
    v3 = *(a1 + 128);
    v4 = *(a1 + 136);
    while (v3 != v4)
    {
      [v2 removePolicyWithID:*v3++];
    }

    __p.n128_u8[0] = 0;
    v8 = 0;
    sub_1004EDCD0(a1 + 128, &__p);
    if (v8 == 1 && __p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1005860F0(uint64_t a1, BOOL a2, void *a3)
{
  if (*(a1 + 296))
  {
    v52 = (*(*a1 + 40))(a1);
    if (v52)
    {
      v51 = a3;
      v6 = *a3;
      v54 = a3 + 1;
      if (*a3 != a3 + 1)
      {
        do
        {
          v7 = *(a1 + 56);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            sub_100585044(a1, __p);
            v8 = v58;
            v9 = *__p;
            v10 = asStringBool(a2);
            v11 = v6 + 4;
            if (v8 >= 0)
            {
              v12 = __p;
            }

            else
            {
              v12 = v9;
            }

            if (*(v6 + 55) < 0)
            {
              v11 = *v11;
            }

            *buf = 136315650;
            *&buf[4] = v12;
            *&buf[12] = 2080;
            *&buf[14] = v10;
            *&buf[22] = 2080;
            v60 = v11;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I ThirdParty protection for NWAgent %s: active=%s, interface=%s", buf, 0x20u);
            if (v58 < 0)
            {
              operator delete(*__p);
            }
          }

          v13 = v6[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v6[2];
              v15 = *v14 == v6;
              v6 = v14;
            }

            while (!v15);
          }

          v6 = v14;
        }

        while (v14 != v54);
      }

      v16 = sub_100585FFC(a1);
      if (v51[2] && a2)
      {
        memset(buf, 0, sizeof(buf));
        sub_1001E9734(a1 + 128, buf);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        v18 = *v51;
        if (*v51 != v54)
        {
          *&v17 = 136315138;
          v50 = v17;
          while (1)
          {
            v19 = +[CCNEPolicyResult drop];
            v20 = v18 + 4;
            if (*(v18 + 55) < 0)
            {
              v20 = *v20;
            }

            v21 = [NSString stringWithUTF8String:v20];
            v22 = [CCNEPolicyCondition scopedInterface:v21];

            v53 = +[CCNEPolicyCondition platformBinary];
            [v53 setNegative:1];
            v23 = [CCNEPolicyCondition ipProtocol:58];
            [v23 setNegative:1];
            v24 = objc_alloc_init(NSMutableArray);
            [v24 addObject:v22];
            [v24 addObject:v53];
            [v24 addObject:v23];
            v25 = [[CCNEPolicy alloc] initWithOrder:990000 result:v19 conditions:v24];
            v26 = [v52 addPolicy:v25];
            v27 = *(a1 + 56);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              sub_100585044(a1, buf);
              v28 = buf;
              if (buf[23] < 0)
              {
                v28 = *buf;
              }

              *__p = 136315394;
              *&__p[4] = v28;
              v56 = 2048;
              v57 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Adding ThirdParty protection DROP policy for NWAgent %s: id=%lu", __p, 0x16u);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            v29 = *(a1 + 56);
            v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
            if (v26)
            {
              if (v30)
              {
                *buf = 67109120;
                *&buf[4] = v26;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
              }

              v31 = v19;
              if ((*(a1 + 152) & 1) == 0)
              {
                sub_1000D1644();
              }

              v33 = *(a1 + 136);
              v32 = *(a1 + 144);
              if (v33 >= v32)
              {
                v36 = *(a1 + 128);
                v37 = v33 - v36;
                v38 = (v33 - v36) >> 3;
                v39 = v38 + 1;
                if ((v38 + 1) >> 61)
                {
                  sub_1000CE3D4();
                }

                v40 = v32 - v36;
                if (v40 >> 2 > v39)
                {
                  v39 = v40 >> 2;
                }

                v41 = v40 >= 0x7FFFFFFFFFFFFFF8;
                v42 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v41)
                {
                  v42 = v39;
                }

                if (v42)
                {
                  sub_10006A8B4(a1 + 128, v42);
                }

                v43 = (v33 - v36) >> 3;
                v44 = (8 * v38);
                v45 = (8 * v38 - 8 * v43);
                *v44 = v26;
                v34 = v44 + 1;
                memcpy(v45, v36, v37);
                v46 = *(a1 + 128);
                *(a1 + 128) = v45;
                *(a1 + 136) = v34;
                *(a1 + 144) = 0;
                if (v46)
                {
                  operator delete(v46);
                }
              }

              else
              {
                *v33 = v26;
                v34 = v33 + 8;
              }

              *(a1 + 136) = v34;
              v19 = v31;
            }

            else if (v30)
            {
              sub_100585044(a1, buf);
              v35 = buf;
              if (buf[23] < 0)
              {
                v35 = *buf;
              }

              *__p = v50;
              *&__p[4] = v35;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E Adding ThirdParty protection drop policy for NWAgent %s: policy is invalid", __p, 0xCu);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            if (!v26)
            {
              goto LABEL_64;
            }

            v47 = v18[1];
            if (v47)
            {
              do
              {
                v48 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v18[2];
                v15 = *v48 == v18;
                v18 = v48;
              }

              while (!v15);
            }

            v18 = v48;
            if (v48 == v54)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

      if (v16)
      {
        v49 = *(a1 + 56);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I ThirdParty protection for NWAgent: clean applied", buf, 2u);
        }

LABEL_63:
        sub_100585D4C(a1, *(a1 + 312));
      }
    }

LABEL_64:
  }
}

void sub_1005867B4(uint64_t a1)
{
  if (*(a1 + 296))
  {
    if (*(a1 + 312) == 5)
    {
      return;
    }

    v2 = (*(*a1 + 40))(a1);
    if (!v2)
    {
      goto LABEL_77;
    }

    sub_100584B14(a1, 0);
    v57 = [CCNEPolicyResult scopedNetworkAgent:*(a1 + 296)];
    v3 = [CCNEPolicyCondition requiredAgentDomain:*(a1 + 280) agentType:*(a1 + 288)];
    v4 = [CCNEPolicy alloc];
    v5 = +[CCNEPolicyCondition allInterfaces];
    v74[0] = v5;
    v74[1] = v3;
    v6 = [NSArray arrayWithObjects:v74 count:2];
    v7 = [(CCNEPolicy *)v4 initWithOrder:1000003 result:v57 conditions:v6];

    v8 = [v2 addPolicy:v7];
    v61 = v8;
    v9 = *(a1 + 56);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, __p);
      if (v66 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = *__p;
      }

      v11 = [*(a1 + 280) UTF8String];
      v12 = [*(a1 + 288) UTF8String];
      *buf = 136315906;
      *&buf[4] = v10;
      v68 = 2048;
      v69 = v61;
      v70 = 2080;
      v71 = v11;
      v72 = 2080;
      v73 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Adding default non-Internet policy for NWAgent %s: id=%lu, domain=%s, type=%s", buf, 0x2Au);
      if (v66 < 0)
      {
        operator delete(*__p);
      }

      v8 = v61;
    }

    v13 = *(a1 + 56);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      if (v14)
      {
        sub_100585044(a1, buf);
        v48 = v70 >= 0 ? buf : *buf;
        *__p = 136315138;
        *&__p[4] = v48;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Adding other default policy for NWAgent %s: policy is invalid", __p, 0xCu);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_1005854DC(a1);
      goto LABEL_76;
    }

    if (v14)
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
    }

    sub_1004C12FC(a1 + 104, &v61);
    v56 = [CCNEPolicyResult skipWithOrder:0];
    v15 = [CCNEPolicy alloc];
    v16 = +[CCNEPolicyCondition allInterfaces];
    v64[0] = v16;
    v64[1] = v3;
    v17 = [NSArray arrayWithObjects:v64 count:2];
    v18 = [(CCNEPolicy *)v15 initWithOrder:1000004 result:v56 conditions:v17];

    v19 = [v2 addPolicy:v18];
    v60 = v19;
    v20 = *(a1 + 56);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = __p;
      sub_100585044(a1, __p);
      if (v66 < 0)
      {
        v21 = *__p;
      }

      v22 = [*(a1 + 280) UTF8String];
      v23 = [*(a1 + 288) UTF8String];
      *buf = 136315906;
      *&buf[4] = v21;
      v68 = 2048;
      v69 = v60;
      v70 = 2080;
      v71 = v22;
      v72 = 2080;
      v73 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Adding default non-Internet SKIP policy for NWAgent %s: id=%lu, domain=%s, type=%s", buf, 0x2Au);
      if (v66 < 0)
      {
        operator delete(*__p);
      }

      v19 = v60;
    }

    v24 = *(a1 + 56);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (!v19)
    {
      if (v25)
      {
        sub_100585044(a1, buf);
        v49 = v70 >= 0 ? buf : *buf;
        *__p = 136315138;
        *&__p[4] = v49;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E Adding other default skip policy for NWAgent %s: policy is invalid", __p, 0xCu);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_1005854DC(a1);
      goto LABEL_75;
    }

    if (v25)
    {
      *buf = 67109120;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
    }

    sub_1004C12FC(a1 + 104, &v60);
    if (*(a1 + 88) != 4)
    {
      goto LABEL_74;
    }

    v54 = [CCNEPolicyResult scopedNetworkAgent:*(a1 + 296)];
    v55 = [CCNEPolicyCondition accountIdentifier:kTerminusTetheringProxyFallbackAccount];
    v26 = [CCNEPolicy alloc];
    v27 = +[CCNEPolicyCondition allInterfaces];
    v63[0] = v27;
    v63[1] = v55;
    v28 = [NSArray arrayWithObjects:v63 count:2];
    v53 = [(CCNEPolicy *)v26 initWithOrder:1000003 result:v54 conditions:v28];

    v29 = [v2 addPolicy:v53];
    v59 = v29;
    v30 = *(a1 + 56);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = __p;
      sub_100585044(a1, __p);
      if (v66 < 0)
      {
        v31 = *__p;
      }

      v32 = [*(a1 + 280) UTF8String];
      v33 = [*(a1 + 288) UTF8String];
      *buf = 136315906;
      *&buf[4] = v31;
      v68 = 2048;
      v69 = v59;
      v70 = 2080;
      v71 = v32;
      v72 = 2080;
      v73 = v33;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Adding default Tethering policy for NWAgent %s: id=%lu, domain=%s, type=%s", buf, 0x2Au);
      if (v66 < 0)
      {
        operator delete(*__p);
      }

      v29 = v59;
    }

    v34 = *(a1 + 56);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (!v29)
    {
      if (v35)
      {
        sub_100585044(a1, buf);
        v50 = v70 >= 0 ? buf : *buf;
        *__p = 136315138;
        *&__p[4] = v50;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#E Adding other default Tethering policy for NWAgent %s: policy is invalid", __p, 0xCu);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_1005854DC(a1);

      goto LABEL_75;
    }

    if (v35)
    {
      *buf = 67109120;
      *&buf[4] = v29;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
    }

    sub_1004C12FC(a1 + 104, &v59);
    v36 = [CCNEPolicyResult skipWithOrder:0];
    v37 = [CCNEPolicy alloc];
    v38 = +[CCNEPolicyCondition allInterfaces];
    v62[0] = v38;
    v62[1] = v55;
    v39 = [NSArray arrayWithObjects:v62 count:2];
    v40 = [(CCNEPolicy *)v37 initWithOrder:1000004 result:v36 conditions:v39];

    v52 = v40;
    v41 = [v2 addPolicy:v40];
    v58 = v41;
    v42 = *(a1 + 56);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = __p;
      sub_100585044(a1, __p);
      if (v66 < 0)
      {
        v43 = *__p;
      }

      v44 = [*(a1 + 280) UTF8String];
      v45 = [*(a1 + 288) UTF8String];
      *buf = 136315906;
      *&buf[4] = v43;
      v68 = 2048;
      v69 = v41;
      v70 = 2080;
      v71 = v44;
      v72 = 2080;
      v73 = v45;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Adding default non-Internet Tethering SKIP policy for NWAgent %s: id=%lu, domain=%s, type=%s", buf, 0x2Au);
      if (v66 < 0)
      {
        operator delete(*__p);
      }
    }

    v46 = *(a1 + 56);
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
    if (v41)
    {
      if (v47)
      {
        *buf = 67109120;
        *&buf[4] = v41;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
      }

      sub_1004C12FC(a1 + 104, &v58);
    }

    else
    {
      if (v47)
      {
        sub_100585044(a1, buf);
        v51 = v70 >= 0 ? buf : *buf;
        *__p = 136315138;
        *&__p[4] = v51;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#E Adding other default tethering skip policy for NWAgent %s: policy is invalid", __p, 0xCu);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_1005854DC(a1);
    }

    if (v41)
    {
LABEL_74:
      sub_100585D4C(a1, 5u);
    }

LABEL_75:

LABEL_76:
LABEL_77:

    return;
  }

  sub_1005854DC(a1);
}

void sub_100587378(uint64_t a1, int a2, char a3, _BOOL4 a4)
{
  if (a2 || (a3 & 1) == 0)
  {

    sub_1005854DC(a1);
  }

  else if (*(a1 + 312) != 1)
  {
    v6 = (*(*a1 + 40))(a1);
    if (v6)
    {
      v7 = *(a1 + 56);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, __p);
        v8 = v31 >= 0 ? __p : *__p;
        v9 = asStringBool(0);
        v10 = asStringBool(1);
        v11 = asStringBool(a4);
        *buf = 136315906;
        *&buf[4] = v8;
        v33 = 2080;
        v34 = v9;
        v35 = 2080;
        v36 = v10;
        v37 = 2080;
        v38 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Creating inactive Internet policy for NWAgent %s (active %s forDefaultSimSlot %s saveDataMode %s)", buf, 0x2Au);
        if (v31 < 0)
        {
          operator delete(*__p);
        }
      }

      v12 = [CCNEPolicyResult netAgentUUID:*(a1 + 296)];
      if (a4)
      {
        v13 = +[CCNEPolicyCondition clientProhibitsConstrained];
        [v13 setNegative:1];
        v27 = v13;
        v14 = [NSArray arrayWithObjects:&v27 count:1];
      }

      else
      {
        v14 = &__NSArray0__struct;
      }

      v15 = [[CCNEPolicy alloc] initWithOrder:0 result:v12 conditions:v14];
      if (v15)
      {
        sub_100584B14(a1, 0);
        v16 = *(a1 + 56);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, buf);
          v17 = v35 >= 0 ? buf : *buf;
          *__p = 136315138;
          *&__p[4] = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Created inactive Internet policy for NWAgent %s", __p, 0xCu);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }
        }

        v18 = [v6 addPolicy:v15];
        v26 = v18;
        v19 = *(a1 + 56);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, buf);
          v20 = v35 >= 0 ? buf : *buf;
          *__p = 136315394;
          *&__p[4] = v20;
          v29 = 2048;
          v30 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Adding non-active Internet policy for NWAgent %s: id=%lu", __p, 0x16u);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }
        }

        v21 = *(a1 + 56);
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          if (v22)
          {
            *buf = 67109120;
            *&buf[4] = v18;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
          }

          sub_1004C12FC(a1 + 104, &v26);
          sub_100585D4C(a1, 1u);
        }

        else
        {
          if (v22)
          {
            sub_100585044(a1, buf);
            v25 = v35 >= 0 ? buf : *buf;
            *__p = 136315138;
            *&__p[4] = v25;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#E Adding inactive Internet policy for NWAgent %s: policy is invalid", __p, 0xCu);
            if (SHIBYTE(v35) < 0)
            {
              operator delete(*buf);
            }
          }

          sub_1005854DC(a1);
        }
      }

      else
      {
        v23 = *(a1 + 56);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, buf);
          v24 = v35 >= 0 ? buf : *buf;
          *__p = 136315138;
          *&__p[4] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E Creating inactive Internet policy for NWAgent %s: policy is null", __p, 0xCu);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }
        }
      }
    }
  }
}

void sub_1005878BC(uint64_t a1, int a2, char a3, _BOOL4 a4, TrafficDescriptor **a5, uint64_t a6, int a7)
{
  v11 = *a5;
  v12 = a5[1];
  if (*a5 == v12)
  {
LABEL_4:

    sub_100587378(a1, a2, a3, a4);
  }

  else
  {
    while ((TrafficDescriptor::empty(v11) & 1) != 0)
    {
      v11 = (v11 + 304);
      if (v11 == v12)
      {
        goto LABEL_4;
      }
    }

    sub_100587988(a1, a2, a5, 0, a7);
  }
}

void sub_100587988(uint64_t a1, char a2, TrafficDescriptor **a3, uint64_t a4, int a5)
{
  if (*(a1 + 312) != 2)
  {
    v9 = (*(*a1 + 40))(a1);
    if (!v9)
    {
LABEL_45:

      return;
    }

    sub_100584B14(a1, 0);
    v10 = *a3;
    v11 = a3[1];
    if (v10 != v11)
    {
      if (!a5)
      {
        a5 = 3;
      }

      do
      {
        if ((TrafficDescriptor::empty(v10) & 1) == 0)
        {
          if ((a5 & 2) == 0)
          {
            if ((a5 & 1) == 0)
            {
              goto LABEL_12;
            }

LABEL_11:
            sub_100587DB4(a1, v10, 1u);
            goto LABEL_12;
          }

          if (a5 & sub_100587DB4(a1, v10, 2u))
          {
            goto LABEL_11;
          }
        }

LABEL_12:
        v10 = (v10 + 304);
      }

      while (v10 != v11);
    }

    if ((a2 & 1) == 0)
    {
      v12 = *(a1 + 56);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        sub_1005850E8(a1, __p);
        v13 = v28 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Creating rest Internet policy for NWAgent %s", buf, 0xCu);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v14 = [CCNEPolicyResult netAgentUUID:*(a1 + 296)];
      v15 = [[CCNEPolicy alloc] initWithOrder:1000000 result:v14 conditions:&__NSArray0__struct];
      if (v15)
      {

        v16 = *(a1 + 56);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          v17 = v28 >= 0 ? __p : __p[0];
          *buf = 136315138;
          v24 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Created rest Internet policy for NWAgent %s", buf, 0xCu);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v18 = [v9 addPolicy:v15];
        v22 = v18;
        v19 = *(a1 + 56);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_1005850E8(a1, __p);
          v20 = v28 >= 0 ? __p : __p[0];
          *buf = 136315394;
          v24 = v20;
          v25 = 2048;
          v26 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Adding rest Internet policy for NWAgent %s: id=%lu", buf, 0x16u);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v21 = *(a1 + 56);
        if (v18)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__p[0]) = 67109120;
            HIDWORD(__p[0]) = v18;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", __p, 8u);
          }

          sub_1004C12FC(a1 + 104, &v22);

          goto LABEL_37;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1005850E8(a1, __p);
          sub_101774A04();
        }

        sub_1005854DC(a1);
      }

      else
      {
        if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
        {
          sub_1005850E8(a1, __p);
          sub_101774A58();
        }

        sub_1005854DC(a1);
        v15 = v14;
      }

      goto LABEL_45;
    }

LABEL_37:
    sub_100585D4C(a1, 2u);
    goto LABEL_45;
  }
}

uint64_t sub_100587DB4(uint64_t a1, TrafficDescriptor *this, unsigned int a3)
{
  if (*(this + 40) != 1 || (TrafficDescriptor::hasAccountInfo(this) & 1) != 0)
  {
LABEL_3:
    v22 = 0u;
    __p[0] = a3;
    v21 = 0uLL;
    __p[1] = 0;
    LODWORD(v22) = 100 * *this + 100;
    BYTE8(v22) = 1;
    BYTE10(v22) = 0;
    v6 = sub_100588008(a1, this, __p, *(a1 + 304), v23);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[1]);
    }

    return v6;
  }

  if (*(this + 72) == 1)
  {
    v7 = this + 48;
    v8 = *(this + 71);
    if (v8 < 0)
    {
      if (*(this + 7) != 18)
      {
        goto LABEL_18;
      }

      v7 = *v7;
    }

    else if (v8 != 18)
    {
      goto LABEL_18;
    }

    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = *(v7 + 8);
    if (v9 == 0x6C7070612E6D6F63 && v10 == 0x6974656361662E65 && v11 == 25965)
    {
      goto LABEL_3;
    }
  }

LABEL_18:
  v14 = *(a1 + 56);
  v6 = 0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sub_100585044(a1, __p);
    v15 = SBYTE7(v21);
    v16 = __p[0];
    TrafficDescriptor::toString(v23, this);
    v17 = __p;
    if (v15 < 0)
    {
      v17 = v16;
    }

    if (v24 >= 0)
    {
      v18 = v23;
    }

    else
    {
      v18 = v23[0];
    }

    *buf = 136315394;
    v26 = v17;
    v27 = 2080;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Ignore slice Internet policy for NWAgent %s td %s", buf, 0x16u);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (SBYTE7(v21) < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v6;
}

void sub_100587FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100588008(os_log_t *a1, uint64_t a2, unsigned __int8 *a3, void *a4, _BYTE *a5)
{
  v207 = a4;
  v201 = a5;
  *a5 = 0;
  v210 = a2;
  if (*(a2 + 72) != 1)
  {
    goto LABEL_14;
  }

  v9 = (a2 + 48);
  v10 = *(a2 + 71);
  if (v10 < 0)
  {
    if (*(a2 + 56) != 18)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    v9 = *v9;
  }

  else if (v10 != 18)
  {
    goto LABEL_14;
  }

  v11 = *v9;
  v12 = v9[1];
  v13 = *(v9 + 8);
  if (v11 != 0x6C7070612E6D6F63 || v12 != 0x6974656361662E65 || v13 != 25965)
  {
    goto LABEL_14;
  }

  ServiceMap = Registry::getServiceMap(a1[9]);
  v40 = ServiceMap;
  if (v41 < 0)
  {
    v42 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
    v43 = 5381;
    do
    {
      v41 = v43;
      v44 = *v42++;
      v43 = (33 * v43) ^ v44;
    }

    while (v44);
  }

  std::mutex::lock(ServiceMap);
  buf[0].__locale_ = v41;
  v45 = sub_100009510(&v40[1].__m_.__sig, buf);
  if (!v45)
  {
    v47 = 0;
LABEL_232:
    std::mutex::unlock(v40);
    v46 = 0;
    v48 = 1;
    if (!v47)
    {
      goto LABEL_235;
    }

    goto LABEL_233;
  }

  v47 = v45[3];
  v46 = v45[4];
  if (!v46)
  {
    goto LABEL_232;
  }

  atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v40);
  atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v46);
  v48 = 0;
  if (!v47)
  {
    goto LABEL_235;
  }

LABEL_233:
  v133 = (*(*v47 + 904))(v47);
  if (v133 && ((*(*v133 + 48))(v133) & 1) == 0)
  {
    v159 = a1[7];
    v134 = 0;
    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].__locale_) = 0;
      _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "#N IDS/SlicedCellularInterface feature not enabled, do not allow Facetime slicing", buf, 2u);
      v134 = 0;
    }

    goto LABEL_236;
  }

LABEL_235:
  v134 = 1;
LABEL_236:
  if (v48)
  {
    if (!v134)
    {
      goto LABEL_431;
    }
  }

  else
  {
    sub_100004A34(v46);
    if (!v134)
    {
LABEL_431:
      v36 = 0;
      goto LABEL_432;
    }
  }

  v16 = 1;
LABEL_15:
  if (!*(a1 + 22) && a3[42] == 1 && !a1[40])
  {
    *&v213.__r_.__value_.__l.__data_ = 0uLL;
    Registry::getTimerService(&v213, a1[9]);
    if (v213.__r_.__value_.__r.__words[0])
    {
      v17 = a1[7];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0].__locale_) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Internet agent timer: to be created...", buf, 2u);
      }

      memset(buf, 0, 32);
      sub_100004AA0(v214, a1 + 3);
      v18 = v215;
      if (v215)
      {
        atomic_fetch_add_explicit(&v215->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
      }

      buf[3].__locale_ = 0;
      operator new();
    }

    if (v213.__r_.__value_.__l.__size_)
    {
      sub_100004A34(v213.__r_.__value_.__l.__size_);
    }
  }

  v205 = a3[40];
  v202 = a3[41];
  v208 = a3;
  if (*(v210 + 232) != 1 || (*(v210 + 8) & 1) != 0 || (*(v210 + 40) & 1) != 0)
  {
    v203 = 0;
  }

  else
  {
    v203 = TrafficDescriptor::hasAccountInfo(v210) ^ 1;
  }

  context = objc_autoreleasePoolPush();
  v206 = ((*a1)[5].isa)(a1);
  v19 = a3;
  if (!v206)
  {
    v35 = 0;
    v36 = 0;
    goto LABEL_429;
  }

  *v214 = 0;
  v215 = 0;
  v216 = 0;
  TrafficDescriptor::toKey(v214, v210);
  v20 = a1[7];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    sub_100585044(a1, &v213);
    v21 = SHIBYTE(v213.__r_.__value_.__r.__words[2]);
    v22 = v213.__r_.__value_.__r.__words[0];
    v23 = SHIBYTE(v216);
    v24 = *v214;
    v26 = (a3 + 8);
    v25 = *(a3 + 1);
    v27 = v208[31];
    v28 = asStringBool(v208[42]);
    if (v27 >= 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = v25;
    }

    LODWORD(buf[0].__locale_) = 136315906;
    v30 = v214;
    if (v23 < 0)
    {
      v30 = v24;
    }

    v31 = &v213;
    if (v21 < 0)
    {
      v31 = v22;
    }

    *(&buf[0].__locale_ + 4) = v31;
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = v30;
    HIWORD(buf[2].__locale_) = 2080;
    buf[3].__locale_ = v29;
    LOWORD(buf[4].__locale_) = 2080;
    *(&buf[4].__locale_ + 2) = v28;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Preparing slice Internet policy for NWAgent %s td %s interface <%s> (temp %s)", buf, 0x2Au);
    if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v213.__r_.__value_.__l.__data_);
    }

    v19 = v208;
  }

  memset(&v213, 0, sizeof(v213));
  memset(&v212, 0, sizeof(v212));
  memset(&v211, 0, sizeof(v211));
  if (v19[42] == 1)
  {
    v236 = 0;
    v234 = 0u;
    v235 = 0u;
    v232 = 0u;
    v233 = 0u;
    v230 = 0u;
    v231 = 0u;
    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    *v224 = 0u;
    v225 = 0u;
    *__src = 0u;
    memset(buf, 0, sizeof(buf));
    sub_10000D518(buf);
    v32 = sub_10000C030(buf);
    __dst.__r_.__value_.__s.__data_[0] = 124;
    v33 = sub_10000C030(v32);
    std::to_string(&__dst, *v19);
    sub_10000C030(v33);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if ((BYTE8(v226) & 0x10) != 0)
    {
      v37 = v226;
      if (v226 < __src[1])
      {
        *&v226 = __src[1];
        v37 = __src[1];
      }

      locale = __src[0];
    }

    else
    {
      if ((BYTE8(v226) & 8) == 0)
      {
        v34 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_67;
      }

      locale = buf[3].__locale_;
      v37 = buf[5].__locale_;
    }

    v34 = v37 - locale;
    if ((v37 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v34 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v37 - locale;
    if (v34)
    {
      memmove(&__dst, locale, v34);
    }

LABEL_67:
    __dst.__r_.__value_.__s.__data_[v34] = 0;
    if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v213.__r_.__value_.__l.__data_);
    }

    v213 = __dst;
    if (v19[40] == 1 && a1 + 33 != sub_100007A6C((a1 + 32), &v213.__r_.__value_.__l.__data_))
    {
      v49 = a1[7];
      v205 = 0;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = &v213;
        if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v50 = v213.__r_.__value_.__r.__words[0];
        }

        v51 = v214;
        if (v216 < 0)
        {
          v51 = *v214;
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v50;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v51;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I key = %s already present (td = %s)", &__dst, 0x16u);
        v205 = 0;
      }
    }

    if (v19[41] == 1)
    {
      std::operator+<char>();
      if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v212.__r_.__value_.__l.__data_);
      }

      v212 = __dst;
      if (a1 + 33 != sub_100007A6C((a1 + 32), &v212.__r_.__value_.__l.__data_))
      {
        v52 = a1[7];
        v202 = 0;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = &v212;
          if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v53 = v212.__r_.__value_.__r.__words[0];
          }

          v54 = v214;
          if (v216 < 0)
          {
            v54 = *v214;
          }

          LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
          *(__dst.__r_.__value_.__r.__words + 4) = v53;
          WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
          *(&__dst.__r_.__value_.__r.__words[1] + 6) = v54;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I key = %s already present (td = %s)", &__dst, 0x16u);
          v202 = 0;
        }
      }
    }

    if (v203)
    {
      std::operator+<char>();
      if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v211.__r_.__value_.__l.__data_);
      }

      v211 = __dst;
      v55 = sub_100007A6C((a1 + 32), &v211.__r_.__value_.__l.__data_);
      v56 = a1[7];
      if (a1 + 33 == v55)
      {
        v203 = 1;
LABEL_105:
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          v60 = &v213;
          if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v60 = v213.__r_.__value_.__r.__words[0];
          }

          *v217 = 136315394;
          *&v217[4] = p_dst;
          v218 = 2080;
          v219 = v60;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: key is new: %s", v217, 0x16u);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v225) < 0)
        {
          operator delete(v224[1]);
        }

        std::locale::~locale(&buf[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_116;
      }

      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_DEFAULT))
      {
        v57 = &v211;
        if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v57 = v211.__r_.__value_.__r.__words[0];
        }

        v58 = v214;
        if (v216 < 0)
        {
          v58 = *v214;
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v57;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v58;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I key = %s already present (td = %s)", &__dst, 0x16u);
      }
    }

    v56 = a1[7];
    if (((v205 | v202) & 1) == 0)
    {
      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I nothing to add in policy", &__dst, 2u);
      }

      if (SHIBYTE(v225) < 0)
      {
        operator delete(v224[1]);
      }

      std::locale::~locale(&buf[2]);
      std::ostream::~ostream();
      std::ios::~ios();
      v35 = 0;
      v36 = 0;
      goto LABEL_421;
    }

    v203 = 0;
    goto LABEL_105;
  }

LABEL_116:
  v209 = objc_alloc_init(NSMutableArray);
  if (*(v210 + 40) == 1)
  {
    v61 = [NSUUID alloc];
    if ((*(v210 + 40) & 1) == 0)
    {
      sub_1000D1644();
    }

    v62 = v61;
    if (*(v210 + 39) >= 0)
    {
      v63 = v210 + 16;
    }

    else
    {
      v63 = *(v210 + 2);
    }

    v64 = [NSString stringWithUTF8String:v63];
    v65 = [v62 initWithUUIDString:v64];

    v66 = [CCNEPolicyCondition effectiveApplication:v65];
    [v209 addObject:v66];
  }

  v67 = v210;
  if (*(v210 + 8) == 1)
  {
    v68 = [CCNEPolicyCondition effectivePID:*(v210 + 1)];
    [v209 addObject:v68];

    v67 = v210;
  }

  if ((*(v67 + 40) & 1) != 0 || (*(v210 + 8) & 1) != 0 || TrafficDescriptor::hasIPTupleInfo(v210))
  {
    v69 = +[CCNEPolicyCondition allInterfaces];
    [v209 addObject:v69];
  }

  if (v16)
  {
    v70 = [NSString stringWithUTF8String:"FTSlice"];
    v71 = [CCNEPolicyCondition accountIdentifier:v70];
    [v209 addObject:v71];
  }

  if (TrafficDescriptor::hasAccountInfo(v210))
  {
    if ((*(v210 + 136) & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*(v210 + 135) >= 0)
    {
      v72 = v210 + 112;
    }

    else
    {
      v72 = *(v210 + 14);
    }

    v73 = [NSString stringWithUTF8String:v72];
    v74 = [CCNEPolicyCondition accountIdentifier:v73];
    [v209 addObject:v74];

    v75 = +[CCNEPolicyCondition allInterfaces];
    [v209 addObject:v75];
  }

  if (*(v210 + 176) == 1)
  {
    if (*(v210 + 175) >= 0)
    {
      v76 = v210 + 152;
    }

    else
    {
      v76 = *(v210 + 19);
    }

    v77 = [NSString stringWithUTF8String:v76];
    memset(&__dst, 0, sizeof(__dst));
    if ((*(v210 + 176) & 1) == 0)
    {
      sub_1000D1644();
    }

    CSIPacketAddress::CSIPacketAddress();
    if (CSIPacketAddress::isZeroIP(&__dst))
    {
      goto LABEL_142;
    }

    if (*(v210 + 214))
    {
      v79 = [NSString alloc];
      if ((*(v210 + 214) & 1) == 0)
      {
        sub_1000D1644();
      }

      v78 = [v79 initWithFormat:@"%d", *(v210 + 106)];
      v80 = [NWAddressEndpoint endpointWithHostname:v77 port:v78];
      v81 = [CCNEPolicyCondition flowRemoteAddress:v80 prefix:128];
      v82 = a1[7];
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        v83 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
        *v217 = 136315394;
        *&v217[4] = v83;
        v218 = 2112;
        v219 = v80;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint is %@ (1)", v217, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }
      }

      [v209 addObject:v81];
    }

    else
    {
      if ((*(v210 + 220) & 1) == 0)
      {
LABEL_142:
        v78 = [CCNEPolicyCondition domain:v77];
        [v209 addObject:v78];
        v36 = 1;
LABEL_164:

        goto LABEL_165;
      }

      v84 = [NSString alloc];
      if ((*(v210 + 220) & 1) == 0)
      {
        sub_1000D1644();
      }

      v78 = [v84 initWithFormat:@"%d", *(v210 + 108)];
      v80 = [NWAddressEndpoint endpointWithHostname:v77 port:v78];
      v85 = [NSString alloc];
      if ((*(v210 + 220) & 1) == 0)
      {
        sub_1000D1644();
      }

      v81 = [v85 initWithFormat:@"%d", *(v210 + 109)];
      v86 = [NWAddressEndpoint endpointWithHostname:v77 port:v81];
      v87 = [CCNEPolicyCondition flowRemoteAddressStart:v80 end:v86];
      v88 = a1[7];
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, v217);
        v89 = v220 >= 0 ? v217 : *v217;
        LODWORD(buf[0].__locale_) = 136315650;
        *(&buf[0].__locale_ + 4) = v89;
        WORD2(buf[1].__locale_) = 2112;
        *(&buf[1].__locale_ + 6) = v80;
        HIWORD(buf[2].__locale_) = 2112;
        buf[3].__locale_ = v86;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint1 is %@, endpoint2 is %@ (1)", buf, 0x20u);
        if (v220 < 0)
        {
          operator delete(*v217);
        }
      }

      [v209 addObject:v87];
    }

    v36 = 0;
    goto LABEL_164;
  }

  v36 = 1;
LABEL_165:
  if (*(v210 + 208) == 1 && (CSIPacketAddress::isZeroIP((v210 + 184)) & 1) == 0)
  {
    memset(buf, 0, 24);
    if ((*(v210 + 208) & 1) == 0)
    {
      sub_1000D1644();
    }

    CSIPacketAddress::operator std::string();
    if (SHIBYTE(buf[2].__locale_) >= 0)
    {
      v90 = buf;
    }

    else
    {
      v90 = buf[0].__locale_;
    }

    v91 = [NSString stringWithUTF8String:v90];
    v92 = *(v210 + 214);
    v93 = *(v210 + 106);
    v94 = [NSString alloc];
    if (v92)
    {
      v95 = v93;
    }

    else
    {
      v95 = 0;
    }

    v96 = [v94 initWithFormat:@"%d", v95];
    v97 = [NWAddressEndpoint endpointWithHostname:v91 port:v96];
    if ((*(v210 + 208) & 1) == 0)
    {
      sub_1000D1644();
    }

    PrefixLen = CSIPacketAddress::getPrefixLen((v210 + 184));
    if (PrefixLen)
    {
      v99 = PrefixLen;
    }

    else
    {
      v99 = 0x80;
    }

    v100 = [CCNEPolicyCondition flowRemoteAddress:v97 prefix:v99];
    v101 = a1[7];
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, &__dst);
      v102 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      *v217 = 136315394;
      *&v217[4] = v102;
      v218 = 2112;
      v219 = v97;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint is %@ (1.5)", v217, 0x16u);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    [v209 addObject:v100];

    if (SHIBYTE(buf[2].__locale_) < 0)
    {
      operator delete(buf[0].__locale_);
      if ((v36 & (v92 ^ 1) & 1) == 0)
      {
        goto LABEL_219;
      }
    }

    else if ((v36 & (v92 ^ 1) & 1) == 0)
    {
      goto LABEL_219;
    }

LABEL_190:
    if (*(v210 + 214) == 1)
    {
      if (*v208 == 2)
      {
        v103 = @"::";
      }

      else
      {
        v103 = @"0.0.0.0";
      }

      v104 = v103;
      v105 = [NSString alloc];
      if ((*(v210 + 214) & 1) == 0)
      {
        sub_1000D1644();
      }

      v106 = [v105 initWithFormat:@"%d", *(v210 + 106)];
      v107 = [NWAddressEndpoint endpointWithHostname:v104 port:v106];
      v108 = [CCNEPolicyCondition flowRemoteAddress:v107 prefix:0];
      v109 = a1[7];
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        v110 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v110;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2112;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v107;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint is %@ (2)", &__dst, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }
      }

      [v209 addObject:v108];
LABEL_218:

      v36 = 1;
      goto LABEL_220;
    }

    if (*(v210 + 220) == 1)
    {
      if (*v208 == 2)
      {
        v111 = @"::";
      }

      else
      {
        v111 = @"0.0.0.0";
      }

      v104 = v111;
      v112 = [NSString alloc];
      if ((*(v210 + 220) & 1) == 0)
      {
        sub_1000D1644();
      }

      v106 = [v112 initWithFormat:@"%d", *(v210 + 108)];
      v107 = [NWAddressEndpoint endpointWithHostname:v104 port:v106];
      if (*v208 == 2)
      {
        v113 = @"FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF";
      }

      else
      {
        v113 = @"255.255.255.255";
      }

      v108 = v113;
      v114 = [NSString alloc];
      if ((*(v210 + 220) & 1) == 0)
      {
        sub_1000D1644();
      }

      v115 = [v114 initWithFormat:@"%d", *(v210 + 109)];
      v116 = [NWAddressEndpoint endpointWithHostname:v108 port:v115];
      v117 = [CCNEPolicyCondition flowRemoteAddressStart:v107 end:v116];
      v118 = a1[7];
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, &__dst);
        v119 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
        LODWORD(buf[0].__locale_) = 136315650;
        *(&buf[0].__locale_ + 4) = v119;
        WORD2(buf[1].__locale_) = 2112;
        *(&buf[1].__locale_ + 6) = v107;
        HIWORD(buf[2].__locale_) = 2112;
        buf[3].__locale_ = v116;
        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint1 is %@, endpoint2 is %@ (2)", buf, 0x20u);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      [v209 addObject:v117];

      goto LABEL_218;
    }

LABEL_219:
    v36 = 0;
    goto LABEL_220;
  }

  if (v36)
  {
    goto LABEL_190;
  }

LABEL_220:
  v120 = v210;
  if (*(v210 + 224) == 1)
  {
    v121 = [CCNEPolicyCondition ipProtocol:*(v210 + 111)];
    [v209 addObject:v121];

    v120 = v210;
  }

  if (*(v120 + 232) == 1)
  {
    v122 = [CCNEPolicyCondition trafficClassStart:*(v210 + 57) end:*(v210 + 57)];
    [v209 addObject:v122];

    if (v205)
    {
      if ((TrafficDescriptor::hasAccountInfo(v210) & 1) == 0)
      {
        v123 = Registry::getServiceMap(a1[9]);
        v124 = v123;
        if (v125 < 0)
        {
          v126 = (v125 & 0x7FFFFFFFFFFFFFFFLL);
          v127 = 5381;
          do
          {
            v125 = v127;
            v128 = *v126++;
            v127 = (33 * v127) ^ v128;
          }

          while (v128);
        }

        std::mutex::lock(v123);
        buf[0].__locale_ = v125;
        v129 = sub_100009510(&v124[1].__m_.__sig, buf);
        if (v129)
        {
          v131 = v129[3];
          v130 = v129[4];
          if (v130)
          {
            atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v124);
            atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v130);
            v132 = 0;
            goto LABEL_243;
          }
        }

        else
        {
          v131 = 0;
        }

        std::mutex::unlock(v124);
        v130 = 0;
        v132 = 1;
LABEL_243:
        if (v131)
        {
          v135 = (*(*v131 + 904))(v131);
          if (v135)
          {
            v136 = PersonalitySpecificImpl::simSlot(a1);
            if (((*(*v135 + 128))(v135, v136) & 1) == 0)
            {
              v137 = +[CCNEPolicyCondition usesModernNetworkAPI];
              [v209 addObject:v137];
            }
          }
        }

        if ((v132 & 1) == 0)
        {
          sub_100004A34(v130);
        }
      }
    }
  }

  v138 = [v209 count];
  v139 = a1[7];
  if (!v138)
  {
    if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
    {
      sub_100585044(a1, buf);
      sub_101774D4C();
    }

    if ((v208[42] & 1) == 0)
    {
      sub_1005854DC(a1);
    }

    goto LABEL_419;
  }

  if (os_log_type_enabled(a1[7], OS_LOG_TYPE_DEFAULT))
  {
    sub_100585044(a1, buf);
    v140 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v140;
    _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "#I Created slice Internet policy for NWAgent %s", &__dst, 0xCu);
    if (SHIBYTE(buf[2].__locale_) < 0)
    {
      operator delete(buf[0].__locale_);
    }
  }

  v200.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (v205)
  {
    v141 = [NSMutableArray arrayWithArray:v209];
    if (*(v210 + 147) == 1 && *(v210 + 146) == 1 && (*(v210 + 224) & 1) == 0)
    {
      v142 = [CCNEPolicyCondition ipProtocol:17];
      [v141 addObject:v142];

      v143 = [[NSString alloc] initWithFormat:@"%d", 443];
      v144 = [NWAddressEndpoint endpointWithHostname:@"0.0.0.0" port:v143];
      v145 = [CCNEPolicyCondition flowRemoteAddress:v144 prefix:0];
      [v145 setNegative:1];
      v146 = a1[7];
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        v147 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v147;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2112;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v144;
        _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint is %@ (3.1)", &__dst, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }
      }

      [v141 addObject:v145];

      v148 = [[NSString alloc] initWithFormat:@"%d", 443];
      v149 = [NWAddressEndpoint endpointWithHostname:@"::" port:v148];
      v150 = [CCNEPolicyCondition flowRemoteAddress:v149 prefix:0];
      [v150 setNegative:1];
      v151 = a1[7];
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        v152 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v152;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2112;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v149;
        _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint is %@ (3.2)", &__dst, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }
      }

      [v141 addObject:v150];
    }

    v153 = [CCNEPolicyResult netAgentUUID:v207];
    v154 = [[CCNEPolicy alloc] initWithOrder:*(v208 + 8) result:v153 conditions:v141];
    if (!v154)
    {
      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
      {
        sub_100585044(a1, buf);
        sub_101774CF8();
      }

      if ((v208[42] & 1) == 0)
      {
        sub_1005854DC(a1);
      }

      goto LABEL_293;
    }

    v155 = [v206 addPolicy:v154];
    *v217 = v155;
    v156 = a1[7];
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, buf);
      if (SHIBYTE(buf[2].__locale_) >= 0)
      {
        v157 = buf;
      }

      else
      {
        v157 = buf[0].__locale_;
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
      *(__dst.__r_.__value_.__r.__words + 4) = v157;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 2048;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = *v217;
      _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "#I Adding slice Internet policy (agent) for NWAgent %s: id=%lu", &__dst, 0x16u);
      if (SHIBYTE(buf[2].__locale_) < 0)
      {
        operator delete(buf[0].__locale_);
      }

      v155 = *v217;
    }

    if (!v155)
    {
      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
      {
        sub_100585044(a1, buf);
        sub_101774CA4();
      }

      if ((v208[42] & 1) == 0)
      {
        sub_1005854DC(a1);
      }

      goto LABEL_418;
    }

    if (v208[42] == 1)
    {
      memset(&buf[1], 0, 32);
      buf[0].__locale_ = v155;
      if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf[1], v213.__r_.__value_.__l.__data_, v213.__r_.__value_.__l.__size_);
      }

      else
      {
        *&buf[1].__locale_ = *&v213.__r_.__value_.__l.__data_;
        buf[3] = v213.__r_.__value_.__r.__words[2];
      }

      buf[4].__locale_ = v200.__d_.__rep_;
      v160 = v208[43];
      v161 = a1[7];
      v162 = os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT);
      if (v160 == 1)
      {
        if (v162)
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v217;
          _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPolicies: %d", &__dst, 8u);
        }

        v163 = 20;
      }

      else
      {
        if (v162)
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v217;
          _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPoliciesLong: %d", &__dst, 8u);
        }

        v163 = 26;
      }

      sub_10058C68C(&a1[v163], buf);
      if (SHIBYTE(buf[3].__locale_) < 0)
      {
        operator delete(buf[1].__locale_);
      }
    }

    else
    {
      v158 = a1[7];
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0].__locale_) = 67109120;
        HIDWORD(buf[0].__locale_) = v155;
        _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
      }

      sub_1004C12FC((a1 + 13), v217);
    }

    v164 = v208[31];
    v165 = v164;
    if ((v164 & 0x80u) != 0)
    {
      v164 = *(v208 + 2);
    }

    if (v164)
    {
      v166 = a1[7];
      if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        if (SHIBYTE(buf[2].__locale_) >= 0)
        {
          v167 = buf;
        }

        else
        {
          v167 = buf[0].__locale_;
        }

        if ((v208[31] & 0x80u) == 0)
        {
          v168 = (v208 + 8);
        }

        else
        {
          v168 = *(v208 + 1);
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v167;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v168;
        _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "#I Creating slice Internet policy for NWAgent %s interface %s", &__dst, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }

        v165 = v208[31];
      }

      if ((v165 & 0x80u) == 0)
      {
        v169 = (v208 + 8);
      }

      else
      {
        v169 = *(v208 + 1);
      }

      v170 = [NSString stringWithUTF8String:v169];
      v171 = [CCNEPolicyResult scopeSocketToInterfaceName:v170];
      v172 = [[CCNEPolicy alloc] initWithOrder:(*(v208 + 8) + 1) result:v171 conditions:v141];
      if (!v172)
      {
        if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
        {
          sub_100585044(a1, buf);
          sub_101774B00();
        }

        if ((v208[42] & 1) == 0)
        {
          sub_1005854DC(a1);
        }

        goto LABEL_418;
      }

      v173 = [v206 addPolicy:v172];
      *v217 = v173;
      v174 = a1[7];
      if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        if (SHIBYTE(buf[2].__locale_) >= 0)
        {
          v175 = buf;
        }

        else
        {
          v175 = buf[0].__locale_;
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v175;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2048;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = *v217;
        _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "#I Adding slice Internet policy (socket) for NWAgent %s: id=%lu", &__dst, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }

        v173 = *v217;
      }

      if (!v173)
      {
        if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
        {
          sub_100585044(a1, buf);
          sub_101774AAC();
        }

        if ((v208[42] & 1) == 0)
        {
          sub_1005854DC(a1);
        }

        goto LABEL_418;
      }

      if (v208[42] == 1)
      {
        memset(&buf[1], 0, 32);
        buf[0].__locale_ = v173;
        if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&buf[1], v213.__r_.__value_.__l.__data_, v213.__r_.__value_.__l.__size_);
        }

        else
        {
          *&buf[1].__locale_ = *&v213.__r_.__value_.__l.__data_;
          buf[3] = v213.__r_.__value_.__r.__words[2];
        }

        buf[4].__locale_ = v200.__d_.__rep_;
        v177 = v208[43];
        v178 = a1[7];
        v179 = os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT);
        if (v177 == 1)
        {
          if (v179)
          {
            LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v217;
            _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPolicies: %d", &__dst, 8u);
          }

          v180 = 20;
        }

        else
        {
          if (v179)
          {
            LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v217;
            _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPoliciesLong: %d", &__dst, 8u);
          }

          v180 = 26;
        }

        sub_10058C68C(&a1[v180], buf);
        if (SHIBYTE(buf[3].__locale_) < 0)
        {
          operator delete(buf[1].__locale_);
        }
      }

      else
      {
        v176 = a1[7];
        if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0].__locale_) = 67109120;
          HIDWORD(buf[0].__locale_) = v173;
          _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
        }

        sub_1004C12FC((a1 + 13), v217);
      }
    }
  }

  if (v202)
  {
    v141 = [CCNEPolicyResult skipWithOrder:0];
    v181 = [[CCNEPolicy alloc] initWithOrder:*(v208 + 9) result:v141 conditions:v209];
    if (!v181)
    {
      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
      {
        sub_100585044(a1, buf);
        sub_101774C50();
      }

      goto LABEL_418;
    }

    v182 = [v206 addPolicy:v181];
    *v217 = v182;
    v183 = a1[7];
    if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, buf);
      if (SHIBYTE(buf[2].__locale_) >= 0)
      {
        v184 = buf;
      }

      else
      {
        v184 = buf[0].__locale_;
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
      *(__dst.__r_.__value_.__r.__words + 4) = v184;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 2048;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = *v217;
      _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "#I Adding Internet slice SKIP policy for NWAgent %s: id=%lu", &__dst, 0x16u);
      if (SHIBYTE(buf[2].__locale_) < 0)
      {
        operator delete(buf[0].__locale_);
      }

      v182 = *v217;
    }

    if (!v182)
    {
      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
      {
        sub_100585044(a1, buf);
        sub_101774BFC();
      }

      goto LABEL_418;
    }

    if (v208[42] == 1)
    {
      memset(&buf[1], 0, 32);
      buf[0].__locale_ = v182;
      if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf[1], v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
      }

      else
      {
        *&buf[1].__locale_ = *&v212.__r_.__value_.__l.__data_;
        buf[3] = v212.__r_.__value_.__r.__words[2];
      }

      buf[4].__locale_ = v200.__d_.__rep_;
      v186 = v208[43];
      v187 = a1[7];
      v188 = os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT);
      if (v186 == 1)
      {
        if (v188)
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v217;
          _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPolicies: %d", &__dst, 8u);
        }

        v189 = 20;
      }

      else
      {
        if (v188)
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v217;
          _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPoliciesLong: %d", &__dst, 8u);
        }

        v189 = 26;
      }

      sub_10058C68C(&a1[v189], buf);
      if (SHIBYTE(buf[3].__locale_) < 0)
      {
        operator delete(buf[1].__locale_);
      }
    }

    else
    {
      v185 = a1[7];
      if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0].__locale_) = 67109120;
        HIDWORD(buf[0].__locale_) = v182;
        _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
      }

      sub_1004C12FC((a1 + 13), v217);
    }
  }

  if (!v203)
  {
LABEL_447:
    if (v208[42] == 1)
    {
      if (v205)
      {
        sub_100005BA0((a1 + 32), &v213.__r_.__value_.__l.__data_);
      }

      if (v202)
      {
        sub_100005BA0((a1 + 32), &v212.__r_.__value_.__l.__data_);
      }

      if (v203)
      {
        sub_100005BA0((a1 + 32), &v211.__r_.__value_.__l.__data_);
      }
    }

    v35 = 1;
    goto LABEL_420;
  }

  v141 = [CCNEPolicyResult skipWithOrder:(*(v208 + 8) + 1)];
  v153 = +[CCNEPolicyCondition platformBinary];
  [v209 addObject:v153];
  v190 = [[CCNEPolicy alloc] initWithOrder:(*(v208 + 8) - 1) result:v141 conditions:v209];
  if (v190)
  {
    v191 = [v206 addPolicy:v190];
    *v217 = v191;
    v192 = a1[7];
    if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, buf);
      if (SHIBYTE(buf[2].__locale_) >= 0)
      {
        v193 = buf;
      }

      else
      {
        v193 = buf[0].__locale_;
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
      *(__dst.__r_.__value_.__r.__words + 4) = v193;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 2048;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = *v217;
      _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_DEFAULT, "#I Adding Internet slice SKIP prefix policy for NWAgent %s: id=%lu", &__dst, 0x16u);
      if (SHIBYTE(buf[2].__locale_) < 0)
      {
        operator delete(buf[0].__locale_);
      }

      v191 = *v217;
    }

    if (v191)
    {
      if (v208[42] == 1)
      {
        memset(&buf[1], 0, 32);
        buf[0].__locale_ = v191;
        if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&buf[1], v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
        }

        else
        {
          *&buf[1].__locale_ = *&v211.__r_.__value_.__l.__data_;
          buf[3] = v211.__r_.__value_.__r.__words[2];
        }

        buf[4].__locale_ = v200.__d_.__rep_;
        v196 = v208[43];
        v197 = a1[7];
        v198 = os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT);
        if (v196 == 1)
        {
          if (v198)
          {
            LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v217;
            _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPolicies: %d", &__dst, 8u);
          }

          v199 = 20;
        }

        else
        {
          if (v198)
          {
            LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v217;
            _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPoliciesLong: %d", &__dst, 8u);
          }

          v199 = 26;
        }

        sub_10058C68C(&a1[v199], buf);
        if (SHIBYTE(buf[3].__locale_) < 0)
        {
          operator delete(buf[1].__locale_);
        }
      }

      else
      {
        v195 = a1[7];
        if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0].__locale_) = 67109120;
          HIDWORD(buf[0].__locale_) = v191;
          _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
        }

        sub_1004C12FC((a1 + 13), v217);
      }

      goto LABEL_447;
    }

    if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
    {
      sub_100585044(a1, buf);
      sub_101774B54();
    }

    goto LABEL_418;
  }

  if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
  {
    sub_100585044(a1, buf);
    sub_101774BA8();
  }

LABEL_293:

LABEL_418:
LABEL_419:
  v35 = 0;
LABEL_420:

LABEL_421:
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v212.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v213.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v216) < 0)
  {
    operator delete(*v214);
  }

LABEL_429:

  objc_autoreleasePoolPop(context);
  if (!v35)
  {
    goto LABEL_431;
  }

  *v201 = 1;
LABEL_432:

  return v36;
}

void sub_10058A9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10058AEF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  rep = v4.__d_.__rep_;
  if (*(a1 + 200))
  {
    v6 = *(*(a1 + 168) + 8 * (*(a1 + 192) / 0x66uLL)) + 40 * (*(a1 + 192) % 0x66uLL);
    v7 = v4.__d_.__rep_ - *(v6 + 32);
    v8 = v7 > 30000000000;
    if (v7 > 30000000000)
    {
      do
      {
        v9 = *(v6 + 31);
        if (v9 < 0)
        {
          v9 = *(v6 + 16);
        }

        v10 = (v6 + 8);
        if (v9)
        {
          sub_1000727F0((a1 + 256), (v6 + 8));
        }

        v11 = [v3 removePolicyWithID:*v6];
        v12 = *(a1 + 56);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          if (v26 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          if (*(v6 + 31) < 0)
          {
            v10 = *v10;
          }

          v14 = *v6;
          v15 = asStringBool(v11);
          *buf = 136315906;
          v28 = v13;
          v29 = 2080;
          v30 = v10;
          v31 = 2048;
          v32 = v14;
          v33 = 2080;
          v34 = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I (timeout) removed fTmpPolicies for NWAgent %s: key=%s, id=%lu, result is %s", buf, 0x2Au);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10058C0C8((a1 + 160));
        if (!*(a1 + 200))
        {
          break;
        }

        v6 = *(*(a1 + 168) + 8 * (*(a1 + 192) / 0x66uLL)) + 40 * (*(a1 + 192) % 0x66uLL);
      }

      while (rep - *(v6 + 32) >= 0x6FC23AC01);
      v8 = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 248))
  {
    v16 = *(*(a1 + 216) + 8 * (*(a1 + 240) / 0x66uLL)) + 40 * (*(a1 + 240) % 0x66uLL);
    if (rep - *(v16 + 32) >= 0x4E94914F0001)
    {
      do
      {
        v17 = *(v16 + 31);
        if (v17 < 0)
        {
          v17 = *(v16 + 16);
        }

        v18 = (v16 + 8);
        if (v17)
        {
          sub_1000727F0((a1 + 256), (v16 + 8));
        }

        v19 = [v3 removePolicyWithID:*v16];
        v20 = *(a1 + 56);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          if (v26 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = __p[0];
          }

          if (*(v16 + 31) < 0)
          {
            v18 = *v18;
          }

          v22 = *v16;
          v23 = asStringBool(v19);
          *buf = 136315906;
          v28 = v21;
          v29 = 2080;
          v30 = v18;
          v31 = 2048;
          v32 = v22;
          v33 = 2080;
          v34 = v23;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I (timeout) removed fTmpPoliciesLong for NWAgent %s: key=%s, id=%lu, result is %s", buf, 0x2Au);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10058C0C8((a1 + 208));
        if (!*(a1 + 248))
        {
          break;
        }

        v16 = *(*(a1 + 216) + 8 * (*(a1 + 240) / 0x66uLL)) + 40 * (*(a1 + 240) % 0x66uLL);
      }

      while (rep - *(v16 + 32) >= 0x4E94914F0001);
      v8 = 1;
    }
  }

  return v8;
}

void sub_10058B2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10058B300(uint64_t result, TrafficDescriptor *this, int a3, uint64_t a4)
{
  v6 = result;
  v8 = 0;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 3;
  }

  if ((v7 & 2) == 0)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_10058B3C4(v6, this, 1, &v8, a4);
    goto LABEL_10;
  }

  result = sub_10058B3C4(result, this, 2, &v8, a4);
  if (v7 & 1) != 0 && (result)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v8 == 1)
  {

    return sub_100585D4C(v6, 3u);
  }

  return result;
}

uint64_t sub_10058B3C4(uint64_t a1, TrafficDescriptor *this, int a3, _BYTE *a4, uint64_t a5)
{
  if (*this == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (100 * *this) | 2;
  }

  v11 = *(a1 + 88);
  v18 = 0;
  hasIPTupleInfo = TrafficDescriptor::hasIPTupleInfo(this);
  if (v11)
  {
    v13 = hasIPTupleInfo;
  }

  else
  {
    v13 = 1;
  }

  v17 = 0u;
  memset(__p, 0, sizeof(__p));
  LODWORD(__p[0]) = a3;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&__p[1], *a5, *(a5 + 8));
  }

  else
  {
    *&__p[1] = *a5;
    __p[3] = *(a5 + 16);
  }

  LODWORD(v17) = v10;
  DWORD1(v17) = v10 + 2;
  BYTE8(v17) = v11 != 0;
  *(&v17 + 9) = 257;
  BYTE11(v17) = v13;
  v14 = sub_100588008(a1, this, __p, *(a1 + 296), &v18);
  *a4 = (*a4 | v18) & 1;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  return v14;
}

void sub_10058B4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058B510(PersonalitySpecificImpl *a1, int a2, uint64_t a3, int a4, _BOOL4 a5, TrafficDescriptor **a6, int a7, uint64_t a8, int a9)
{
  v16 = objc_autoreleasePoolPush();
  if (*(a1 + 22))
  {
    v17 = isSlice();
    if (v17)
    {
      if ((a7 & 1) == 0 && *(a1 + 78) == 3)
      {
        goto LABEL_15;
      }

LABEL_14:
      sub_1005854DC(a1);
      goto LABEL_15;
    }

    if ((capabilities::ct::supportsGemini(v17) & 1) == 0)
    {
      goto LABEL_14;
    }

    if (a7)
    {
      sub_100584B14(a1, 0);
    }

    if (*(a1 + 22) == 19)
    {
      sub_10058B634(a1);
    }

    else if (a4)
    {
      sub_1005867B4(a1);
    }

    else
    {
      sub_1005855C4(a1);
    }
  }

  else
  {
    if (a7)
    {
      sub_100584B14(a1, 0);
    }

    sub_1005878BC(a1, a2, a4, a5, a6, a8, a9);
  }

LABEL_15:

  objc_autoreleasePoolPop(v16);
}

void sub_10058B634(PersonalitySpecificImpl *a1)
{
  v2 = 0;
  v3 = 0;
  (*(*a1 + 16))(&v2);
  if (v2 && *(v2 + 62) == 1)
  {
    sub_1005867B4(a1);
  }

  else
  {
    sub_1005855C4(a1);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10058B6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058B700(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "nwpolicy";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ------------ NEPolicy: %s ------------------>>", buf, 0xCu);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asString();
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfConnectionType=%s", buf, 0xCu);
    v4 = *(a1 + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = asStringBool(*(a1 + 96) != 0);
    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfSession=%s", buf, 0xCu);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = *(a1 + 56);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfPolicies=%lu", buf, 0xCu);
    }

    v9 = *(a1 + 104);
    if (v9 != (a1 + 112))
    {
      do
      {
        v10 = *(a1 + 56);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v9[4];
          *buf = 134217984;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t\t%lu", buf, 0xCu);
        }

        v12 = v9[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v9[2];
            v14 = *v13 == v9;
            v9 = v13;
          }

          while (!v14);
        }

        v9 = v13;
      }

      while (v13 != (a1 + 112));
    }
  }

  if (*(a1 + 152) == 1)
  {
    v15 = *(a1 + 128);
    for (i = *(a1 + 136); v15 != i; ++v15)
    {
      v17 = *(a1 + 56);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *v15;
        *buf = 134217984;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t\tfPolicyThirdPartyDrop.item=%lu", buf, 0xCu);
      }
    }
  }

  v19 = *(a1 + 200);
  v20 = *(a1 + 56);
  if (v19)
  {
    if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfTmpPolicies=%lu", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    *buf = 0u;
    sub_10058C974(buf, (a1 + 160));
    while (*(&v36 + 1))
    {
      v21 = *(a1 + 56);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(*(*&buf[8] + 8 * (v36 / 0x66)) + 40 * (v36 % 0x66));
        *v32 = 134217984;
        v33 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t\t%lu", v32, 0xCu);
      }

      sub_10058C0C8(buf);
    }

    sub_10058BDE4(buf);
    v20 = *(a1 + 56);
  }

  v23 = *(a1 + 248);
  if (v23)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfTmpPoliciesLong=%lu", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    *buf = 0u;
    sub_10058C974(buf, (a1 + 208));
    while (*(&v36 + 1))
    {
      v24 = *(a1 + 56);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(*(*&buf[8] + 8 * (v36 / 0x66)) + 40 * (v36 % 0x66));
        *v32 = 134217984;
        v33 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t\t%lu", v32, 0xCu);
      }

      sub_10058C0C8(buf);
    }

    sub_10058BDE4(buf);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 280);
    *buf = 138412290;
    *&buf[4] = v26;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfDomain=%@", buf, 0xCu);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 288);
    *buf = 138412290;
    *&buf[4] = v27;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfType=%@", buf, 0xCu);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 296);
    *buf = 138412290;
    *&buf[4] = v28;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfAgentUUID=%@", buf, 0xCu);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 304);
    *buf = 138412290;
    *&buf[4] = v29;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfAgentSliceUUID=%@", buf, 0xCu);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v30 = sub_1005845FC(*(a1 + 312));
    *buf = 136315138;
    *&buf[4] = v30;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfCurrentPolicyType=%s", buf, 0xCu);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v31 = asStringBool(*(a1 + 320) != 0);
    *buf = 136315138;
    *&buf[4] = v31;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfInternetTimer=%s", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_10058BDE4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x66];
    v7 = *v6;
    v8 = *v6 + 40 * (v5 % 0x66);
    v9 = v2[(a1[5] + v5) / 0x66] + 40 * ((a1[5] + v5) % 0x66);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 31) < 0)
        {
          operator delete(*(v8 + 8));
          v7 = *v6;
        }

        v8 += 40;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 51;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 102;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_10001BD44(a1);
}

void sub_10058BFC8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_10058C09C);
  __cxa_rethrow();
}

void sub_10058C008(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10058C05C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10058C09C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10058C0C8(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + 8 * (v2 / 0x66)) + 40 * (v2 % 0x66);
  if (*(v3 + 31) < 0)
  {
    operator delete(*(v3 + 8));
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_10058C158(a1, 1);
}

uint64_t sub_10058C158(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x66)
  {
    a2 = 1;
  }

  if (v2 < 0xCC)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 102;
  }

  return v4 ^ 1u;
}

void *sub_10058C1B8(void *a1)
{
  *a1 = off_101E614B8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10058C204(void *a1)
{
  *a1 = off_101E614B8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10058C2E4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E614B8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10058C324(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10058C334(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10058C374(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_10058C46C;
        v6[3] = &unk_101E26008;
        v6[4] = v3;
        sub_10058C570((v3 + 24), v6);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10058C420(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10058C46C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Internet agent timer: fired", buf, 2u);
  }

  v3 = (*(*v1 + 40))(v1);
  if (v3)
  {
    if (sub_10058AEF4(v1, v3))
    {
      sub_100585D4C(v1, *(v1 + 312));
    }

    v4 = *(v1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Internet agent timer: completed", v5, 2u);
    }
  }
}

void sub_10058C570(void *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, a1);
  v4 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10058C650;
  block[3] = &unk_101E61520;
  v8 = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  v7 = v5;
  dispatch_async(v4, block);

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

uint64_t sub_10058C660(uint64_t result, uint64_t a2)
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

void sub_10058C67C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_10058C68C(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 102 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10058C744(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66));
  }

  result = sub_10058C918(v8, a2);
  ++a1[5];
  return result;
}

void *sub_10058C744(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1000FB8B8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100129284(a1, &v10);
}

void sub_10058C8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10058C918(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 1;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4[2] = *(a2 + 24);
    *v4 = v5;
  }

  a1[4] = *(a2 + 32);
  return a1;
}

uint64_t sub_10058C974(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v3 = a2[4];
  v4 = a2[1];
  if (a2[2] == v4)
  {
    v5 = 0;
    v8 = 0;
    v7 = (v4 + 8 * ((a2[5] + v3) / 0x66));
  }

  else
  {
    v5 = *(v4 + 8 * (v3 / 0x66)) + 40 * (v3 % 0x66);
    v6 = a2[5] + v3;
    v7 = (v4 + 8 * (v6 / 0x66));
    v8 = *v7 + 40 * (v6 % 0x66);
  }

  sub_10058CA44(a1, (v4 + 8 * (v3 / 0x66)), v5, v7, v8);
  return a1;
}

void *sub_10058CA44(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 102 * (a4 - a2) - 0x3333333333333333 * ((a5 - *a4) >> 3) + 0x3333333333333333 * ((a3 - *a2) >> 3);
  }

  return sub_10058CA94(a1, a2, a3, v5);
}

void *sub_10058CA94(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 102 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_10058CC4C(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x66));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 40 * (v11 % 0x66);
    v15 = v14;
  }

  v24 = v13;
  v25 = v15;
  result = sub_10058CF98(&v24, a4);
  v17 = v25;
  if (v14 != v25)
  {
    v18 = v24;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4080;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = 0;
        v21 = v14;
        do
        {
          result = sub_10058C918(v21, a3);
          a3 += 40;
          if (a3 - *a2 == 4080)
          {
            v22 = a2[1];
            ++a2;
            a3 = v22;
          }

          v21 += 5;
          v20 -= 40;
        }

        while (v21 != v19);
      }

      a1[5] -= 0x3333333333333333 * ((v19 - v14) >> 3);
      if (v13 == v18)
      {
        break;
      }

      v23 = v13[1];
      ++v13;
      v14 = v23;
    }

    while (v23 != v17);
  }

  return result;
}

void *sub_10058CC4C(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0x66)
  {
    v5 = v4 / 0x66 + 1;
  }

  else
  {
    v5 = v4 / 0x66;
  }

  v6 = result[4];
  if (v5 >= v6 / 0x66)
  {
    v7 = v6 / 0x66;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x66)
  {
    for (result[4] = v6 - 102 * v7; v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_100129284(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_1000FB8B8(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= 102 * v7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_100129284(v2, v16);
    }
  }

  return result;
}

void sub_10058CF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10058CF98(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 101 - v3;
      v6 = &v2[-(v5 / 0x66)];
      *result = v6;
      v4 = *v6 + 40 * (102 * (v5 / 0x66) - v5) + 4040;
    }

    else
    {
      *result = &v2[v3 / 0x66];
      v4 = v2[v3 / 0x66] + 40 * (v3 % 0x66);
    }

    result[1] = v4;
  }

  return result;
}

uint64_t sub_10058D044(uint64_t a1)
{
  v2 = 1;
  if ((sub_10080FFF8(a1) & 1) == 0)
  {
    v12 = 1;
    v3 = sub_10005D028();
    sub_10000501C(__p, "EnableThumperByDefault");
    v4 = sub_10005D0D8(v3, __p, &v12);
    v5 = v4;
    if (v11 < 0)
    {
      operator delete(__p[0]);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else if (v4)
    {
LABEL_4:
      v2 = v12;
      return v2 & 1;
    }

    (*(**(a1 + 96) + 472))(__p);
    v6 = __p[0];
    v2 = 1;
    v13 = 1;
    if (__p[0])
    {
      v7 = CFGetTypeID(__p[0]);
      if (v7 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v13, v6, v8);
        v2 = v13;
      }

      else
      {
        v2 = 1;
      }
    }

    sub_10000A1EC(__p);
  }

  return v2 & 1;
}

void getAssociatedID(void *a1@<X8>)
{
  sub_1006160F0(&v2);
  v4 = sub_1006160B8(v2, @"associated.account");
  sub_100222990(a1, &v4);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10058D1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void setAssociatedID(const __CFString *a1)
{
  sub_1006160F0(&v2);
  sub_100616054(v2, @"associated.account", a1);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10058D244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058D25C(uint64_t a1, int a2)
{
  if (sub_10080FFF8(a1))
  {

    sub_10058D2AC(a1, a2);
  }
}

void sub_10058D2AC(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sSomebody wants us to stay alive", buf, 0x16u);
    }

    *buf = &off_101EA1020;
    v7 = sub_1009C9364(buf, kLaunchdKeepAlivePath);
    FileSystemInterface::~FileSystemInterface(buf);
    v8 = *(a1 + 48);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v11 = "#I %s%sKeepAlive file touched";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);
      }
    }

    else if (v9)
    {
      v18 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v11 = "#I %s%sFailed to touch KeepAlive file";
      goto LABEL_16;
    }

    if (*(a1 + 536))
    {
      v19 = *(a1 + 48);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v20 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v21 = "#I %s%sThumperKeepAlive Jetsam assertion already taken";
LABEL_50:
      v37 = v19;
      v38 = 22;
LABEL_51:
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v21, buf, v38);
      return;
    }

    *&buf[16] = 0u;
    v46 = 0u;
    v22 = *(a1 + 48);
    v23 = os_signpost_id_generate(v22);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = *(a1 + 48);
      if (os_signpost_enabled(v24))
      {
        *v47 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v23, "ThumperKeepAlive", "", v47, 2u);
      }
    }

    *v47 = off_101E61890;
    v49 = v47;
    *buf = v23;
    *&buf[8] = os_retain(v22);
    sub_1000148FC(&buf[16], v47);
    sub_10001499C(v47);
    sub_10000501C(&__p, "ThumperKeepAlive");
    v43[0] = *buf;
    v43[1] = *&buf[8];
    sub_1000148FC(&v44, &buf[16]);
    *buf = 0;
    *&buf[8] = 0;
    sub_100014A28(&buf[16]);
    Registry::createXpcJetsamAssertion();
    v25 = *v47;
    *v47 = 0;
    *&v47[8] = 0;
    v26 = *(a1 + 544);
    *(a1 + 536) = v25;
    if (v26)
    {
      sub_100004A34(v26);
      if (*&v47[8])
      {
        sub_100004A34(*&v47[8]);
      }
    }

    sub_100014DA8(v43);
    if (v42 < 0)
    {
      operator delete(__p);
    }

    v27 = *(a1 + 48);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = PersonalityInfo::logPrefix(**(a1 + 80));
      *v47 = 136315394;
      *&v47[4] = v28;
      *&v47[12] = 2080;
      *&v47[14] = " ";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%sThumperKeepAlive Jetsam assertion taken.", v47, 0x16u);
    }

    sub_100014DA8(buf);
    return;
  }

  if (v5)
  {
    v12 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sSomebody wants us to go away", buf, 0x16u);
  }

  *v47 = &off_101EA1020;
  sub_10000501C(buf, kLaunchdKeepAlivePath);
  v13 = sub_1009C861C(v47, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  FileSystemInterface::~FileSystemInterface(v47);
  v14 = *(a1 + 48);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v17 = "#I %s%sKeepAlive file removed";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
    }
  }

  else if (v15)
  {
    v29 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v29;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v17 = "#I %s%sFailed to remove KeepAlive file";
    goto LABEL_33;
  }

  if (!*(a1 + 536))
  {
    v19 = *(a1 + 48);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v36 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = "#I %s%sThumperKeepAlive Jetsam assertion wasn't taken";
    goto LABEL_50;
  }

  v30 = *(a1 + 544);
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  if (v30)
  {
    sub_100004A34(v30);
  }

  Registry::getXpcJetsamAssertionManager(buf, *(a1 + 56));
  AssertionCount = ctu::XpcJetsamAssertion::getAssertionCount(*buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v32 = *(a1 + 48);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = PersonalityInfo::logPrefix(**(a1 + 80));
    v34 = v33;
    if (!AssertionCount)
    {
      *buf = 136315650;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = "We might exit after some time";
      v21 = "#I %s%sThumperKeepAlive Jetsam assertion released. %s";
      v37 = v32;
      v38 = 32;
      goto LABEL_51;
    }

    Registry::getXpcJetsamAssertionManager(&v39, *(a1 + 56));
    ctu::XpcJetsamAssertion::dumpState(v47, v39);
    if (v48 >= 0)
    {
      v35 = v47;
    }

    else
    {
      v35 = *v47;
    }

    *buf = 136315650;
    *&buf[4] = v34;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v35;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sThumperKeepAlive Jetsam assertion released. %s", buf, 0x20u);
    if (v48 < 0)
    {
      operator delete(*v47);
    }

    if (v40)
    {
      sub_100004A34(v40);
    }
  }
}

void sub_10058DA54(uint64_t a1)
{
  if (!sub_10080FFF8(a1))
  {
    return;
  }

  v7 = &off_101EA1020;
  sub_10000501C(__p, kLaunchdKeepAlivePath);
  v2 = sub_1009C7B10(&v7, __p);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  FileSystemInterface::~FileSystemInterface(&v7);
  v3 = *(a1 + 48);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 80));
      *__p = 136315394;
      *&__p[4] = v5;
      v9 = 2080;
      v10 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sKeepAlive file found", __p, 0x16u);
    }

    if ((sub_10080FFF8(a1) & 1) == 0)
    {
      return;
    }

LABEL_12:
    sub_10058D2AC(a1, v2);
    return;
  }

  if (v4)
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 80));
    *__p = 136315394;
    *&__p[4] = v6;
    v9 = 2080;
    v10 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sKeepAlive file not found", __p, 0x16u);
  }

  if (sub_10080FFF8(a1))
  {
    goto LABEL_12;
  }
}

void sub_10058DBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  FileSystemInterface::~FileSystemInterface(&a10);
  _Unwind_Resume(a1);
}

void sub_10058DD54(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
    if (!v1)
    {
LABEL_3:
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  sub_100004A34(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

uint64_t sub_10058DD94(uint64_t a1, void *a2, NSObject **a3, uint64_t **a4, uint64_t a5, uint64_t *a6)
{
  v9 = a6[1];
  v22 = *a6;
  v23 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  v20 = *a4;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10080FBC8(a1, a2, 1, a3, &v22, &v20, a5, "ps.ths");
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  *a1 = off_101E615A8;
  *(a1 + 8) = off_101E61710;
  sub_10000501C(&__p, "ths");
  v11 = *a3;
  v17 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  object = 0;
  ctu::RestModule::RestModule();
  if (v17)
  {
    dispatch_release(v17);
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 200) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 208) = a1 + 216;
  *(a1 + 248) = 0;
  *(a1 + 192) = 0x300000000;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 850045863;
  *(a1 + 232) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 514) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  sub_1005A1630(a1 + 576);
  Registry::getNotificationSenderFactory(&v24, *(a1 + 56));
  (*(*v24 + 144))(v14);
  *(a1 + 616) = *v14;
  v14[0] = 0;
  v14[1] = 0;
  if (v25)
  {
    sub_100004A34(v25);
  }

  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  v12 = **a4;
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  sub_10079CC3C(a1 + 648, a1 + 56, v12 + 24, kLocationPopupShown, kPhoneServicesWalletDomain, v14, 1);
  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  *(a1 + 664) = 0u;
  return a1;
}

void sub_10058E024(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, dispatch_object_t object, dispatch_object_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  sub_101774DA0(&__p, (v19 + 632), (v19 + 624), a1, a2, v25 - 80);
  v28 = *(v25 - 80);
  sub_1005A1674((v20 + 47));
  v29 = *(v19 + 568);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v19 + 544);
  if (v30)
  {
    sub_100004A34(v30);
  }

  sub_10001021C(v20 + 39);
  v31 = *(v19 + 504);
  if (v31)
  {
    sub_100004A34(v31);
  }

  std::mutex::~mutex(v24);
  sub_10058E160(v23);
  sub_1005A1728(v22);
  v32 = *(v19 + 240);
  if (v32)
  {
    sub_100004A34(v32);
  }

  sub_10013DF64(v21, *(v19 + 216));
  sub_100005978(v20);
  v33 = *(v19 + 184);
  if (v33)
  {
    sub_100004A34(v33);
  }

  sub_10080FEE4(v19);
  _Unwind_Resume(v28);
}

void sub_10058E140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  JUMPOUT(0x10058E138);
}

uint64_t sub_10058E160(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_1005A16F4((a1 + 8));
    sub_1005A16F4(a1);
  }

  return a1;
}

void sub_10058E1A0(uint64_t a1)
{
  *a1 = off_101E615A8;
  *(a1 + 8) = off_101E61710;
  ctu::RestModule::disconnect((a1 + 176));
  v2 = *(a1 + 672);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 656);
  *(a1 + 656) = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  TMKXPCServer.shutdown()();
  v4 = *(a1 + 632);
  *(a1 + 632) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 624);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1005A1674(a1 + 576);
  v6 = *(a1 + 568);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 544);
  if (v7)
  {
    sub_100004A34(v7);
  }

  sub_10001021C((a1 + 512));
  v8 = *(a1 + 504);
  if (v8)
  {
    sub_100004A34(v8);
  }

  std::mutex::~mutex((a1 + 432));
  if (*(a1 + 424) == 1)
  {
    sub_1005A16F4((a1 + 408));
    sub_1005A16F4((a1 + 400));
  }

  if (*(a1 + 384) == 1)
  {
    *(a1 + 248) = off_101EA6578;
    if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
    {
      operator delete(*(a1 + 352));
    }

    if (*(a1 + 344) == 1 && *(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    if (*(a1 + 312) == 1 && *(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    if (*(a1 + 280) == 1 && *(a1 + 279) < 0)
    {
      operator delete(*(a1 + 256));
    }

    TMKXPCServer.shutdown()();
  }

  v9 = *(a1 + 240);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_10013DF64(a1 + 208, *(a1 + 216));
  sub_100005978((a1 + 200));
  v10 = *(a1 + 184);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10080FEE4(a1);
}

void sub_10058E3D0(uint64_t a1)
{
  sub_10058E1A0(a1);

  operator delete();
}

void sub_10058E408(uint64_t a1)
{
  sub_10058E1A0(a1 - 8);

  operator delete();
}

const void **sub_10058E444(uint64_t a1)
{
  v30 = 0;
  sub_1006160F0(buf);
  v31 = sub_1006160B8(*buf, @"last.account");
  sub_100222990(&v30, &v31);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v30)
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v28 = *buf;
    v29 = *&buf[16];
    sub_1006160F0(buf);
    sub_100616054(*buf, @"last.account", 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v27 = 0;
    sub_1005D7A90(@"LocalCredentials", &v28, &v27);
    v26 = 0;
    sub_1006160F0(buf);
    v2 = kCFLocalProvisioningApplied;
    v31 = sub_1006160B8(*buf, kCFLocalProvisioningApplied);
    sub_10017A3BC(&v26, &v31);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    buf[0] = 0;
    ctu::cf::assign(buf, v26, v3);
    if (buf[0] != 1)
    {
      sub_1006160F0(buf);
      sub_100616054(*buf, v2, 0);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_1006160F0(buf);
      sub_100616054(*buf, @"CarrierBundle", 0);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_1006160F0(buf);
      sub_100616054(*buf, @"IMSInfo", 0);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_1006160F0(buf);
      sub_100616054(*buf, @"last.dn", 0);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_1006160F0(buf);
      sub_100616054(*buf, v27, 0);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_100BB40F4(a1 + 56, @"com.apple.th");
      goto LABEL_38;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    sub_1004419D4(ServiceMap, buf);
    (*(**buf + 16))(*buf, **(a1 + 80) + 24, v2, kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    sub_1006160F0(buf);
    sub_100616054(*buf, v2, 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v25[0] = a1;
    v25[1] = &v28;
    sub_10058ED7C(v25, @"CarrierBundle");
    sub_10058ED7C(v25, @"IMSInfo");
    sub_10058ED7C(v25, @"last.dn");
    sub_10058ED7C(v25, v27);
    theDict[0] = 0;
    theDict[1] = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v5 = sub_100BB2DE4(a1 + 56, @"com.apple.th");
    switch(v5)
    {
      case 0:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        ctu::base64::decode();
        v10 = *(a1 + 48);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%smigration, Individual secret is not of valid format", buf, 0x16u);
        }

        goto LABEL_34;
      case 1:
        v6 = *(a1 + 48);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
LABEL_34:
          sub_100BB40F4(a1 + 56, @"com.apple.th");
          if (SHIBYTE(v22) < 0)
          {
            operator delete(v20);
          }

          if (SHIBYTE(v24) < 0)
          {
            operator delete(theDict[0]);
          }

LABEL_38:
          theDict[0] = 0;
          v12 = CFPreferencesCopyMultiple(0, @"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          theDict[0] = v12;
          if (v12)
          {
            Count = CFDictionaryGetCount(v12);
            if (Count)
            {
              memset(buf, 0, sizeof(buf));
              sub_100222418(buf, Count);
              CFDictionaryGetKeysAndValues(theDict[0], *buf, 0);
              v14 = *buf;
              v15 = *&buf[8];
              if (*buf != *&buf[8])
              {
                do
                {
                  if (CFStringHasPrefix(*v14, @"LocalCredentials"))
                  {
                    sub_1006160F0(&v31);
                    sub_100616054(v31, *v14, 0);
                    if (v32)
                    {
                      sub_100004A34(v32);
                    }
                  }

                  ++v14;
                }

                while (v14 != v15);
                v14 = *buf;
              }

              if (v14)
              {
                *&buf[8] = v14;
                operator delete(v14);
              }
            }
          }

          sub_10001021C(theDict);
          sub_100045C8C(&v26);
          sub_100005978(&v27);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(v28);
          }

          return sub_100005978(&v30);
        }

        v9 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v8 = "#I %s%smigration, No individual secret in keychain - request new one";
        break;
      case 2:
        v6 = *(a1 + 48);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        v7 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v8 = "#W %s%smigration, KeyChain is locked - will re-request individual key";
        break;
      default:
        goto LABEL_34;
    }

    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
    goto LABEL_34;
  }

  return sub_100005978(&v30);
}

void sub_10058EB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, const void *a31, const void *a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_100045C8C(&a31);
  sub_100005978(&a32);
  if (a38 < 0)
  {
    operator delete(a33);
  }

  sub_100005978((v38 - 136));
  _Unwind_Resume(a1);
}

const void **sub_10058ED7C(uint64_t *a1, const __CFString *a2)
{
  v4 = *a1;
  sub_1006160F0(&v9);
  v5 = sub_1006160B8(v9, a2);
  v11 = v5;
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v5)
  {
    v8 = 0;
    sub_1005D63F0(*(v4 + 104), a2, v5, a1[1]);
    ServiceMap = Registry::getServiceMap(*(v4 + 56));
    sub_1004419D4(ServiceMap, &v9);
    (*(*v9 + 16))();
    if (v10)
    {
      sub_100004A34(v10);
    }

    sub_1006160F0(&v9);
    sub_100616054(v9, a2, 0);
    if (v10)
    {
      sub_100004A34(v10);
    }

    sub_10000A1EC(&v8);
  }

  return sub_10000A1EC(&v11);
}

void sub_10058EEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, std::__shared_weak_count *a11, const void *a12)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10000A1EC(&a9);
  sub_10000A1EC(&a12);
  _Unwind_Resume(a1);
}

const void **sub_10058EF00(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  result = sub_1009A834C(@"com.apple.callservices.identifier2", &v11);
  if (BYTE8(v12) == 1)
  {
    v10 = 0;
    sub_1009A8948(@"com.apple.callservices.identifier2", &v10);
    if (!v10)
    {
      goto LABEL_10;
    }

    sub_1009A9408(@"com.apple.callservices.identifier2");
    LOBYTE(v12) = 0;
    v9 = 0;
    sub_1005D7A90(@"com.apple.callservices.identifier.", (a1 + 120), &v9);
    v3 = sub_1009A8954(v9, v10, &v11);
    v4 = *(a1 + 48);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315650;
        v14 = v6;
        v15 = 2080;
        v16 = " ";
        v17 = 2112;
        v18 = v9;
        v7 = "#I %s%sthumper keychain identity successfully migrated to %@";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v7, buf, 0x20u);
      }
    }

    else if (v5)
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315650;
      v14 = v8;
      v15 = 2080;
      v16 = " ";
      v17 = 2112;
      v18 = v9;
      v7 = "#W %s%sfailed to migrated thumper keychain identity %@";
      goto LABEL_8;
    }

    sub_100005978(&v9);
LABEL_10:
    result = sub_1005A17EC(&v10);
    if (BYTE8(v12))
    {
      sub_1005A16F4(&v11 + 1);
      return sub_1005A16F4(&v11);
    }
  }

  return result;
}

void sub_10058F0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, char a11)
{
  sub_100005978(&a9);
  sub_1005A17EC(&a10);
  sub_10058E160(&a11);
  _Unwind_Resume(a1);
}

void sub_10058F120(uint64_t a1)
{
  std::string::operator=((a1 + 120), (**(a1 + 80) + 24));
  sub_10058E444(a1);
  sub_10058EF00(a1);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *&v40[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v40);
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
LABEL_9:
      (*(*v10 + 24))(v38, v10, **(a1 + 80) + 24, @"ProvisioningFailedAlertShown", kPhoneServicesWalletDomain, 0, 3);
      v12 = v38[0];
      LOBYTE(v40[0]) = 0;
      if (v38[0])
      {
        v13 = CFGetTypeID(v38[0]);
        if (v13 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(v40, v12, v14);
        }
      }

      *(a1 + 552) = v40[0];
      sub_10000A1EC(v38);
      if ((v11 & 1) == 0)
      {
        sub_100004A34(v9);
      }

      sub_10080FDE4(a1);
      sub_100590008(a1);
      sub_10058DA54(a1);
      sub_100004AA0(v40, (a1 + 16));
      v15 = v40[0];
      if (*(&v40[0] + 1))
      {
        atomic_fetch_add_explicit((*(&v40[0] + 1) + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(*(&v15 + 1));
      }

      sub_100004AA0(v17, (a1 + 16));
      v16 = *(a1 + 32);
      v17[2] = v16;
      v17[3] = a1;
      v18 = v15;
      if (*(&v15 + 1))
      {
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      dispatch_retain(v16);
      memset(v40, 0, 32);
      v19 = v16;
      v20 = a1;
      v21 = v15;
      if (*(&v15 + 1))
      {
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
        dispatch_retain(v16);
        v22 = v16;
        v23 = a1;
        v24 = v15;
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
        dispatch_retain(v16);
        v26 = v16;
        v28 = v15;
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
        dispatch_retain(v16);
        v31 = v15;
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
        dispatch_retain(v16);
        v34 = v15;
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      else
      {
        dispatch_retain(v16);
        v22 = v16;
        v23 = a1;
        v24 = v15;
        dispatch_retain(v16);
        v26 = v16;
        v28 = v15;
        dispatch_retain(v16);
        v31 = v15;
        dispatch_retain(v16);
        v34 = v15;
      }

      v27 = a1;
      v25 = 0;
      v29 = v16;
      v30 = a1;
      v32 = v16;
      v33 = a1;
      dispatch_retain(v16);
      v35 = v16;
      v36 = a1;
      v37 = v15;
      if (*(&v15 + 1))
      {
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
        dispatch_retain(v16);
        v39 = v15;
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      else
      {
        dispatch_retain(v16);
        v39 = v15;
      }

      v38[0] = v16;
      v38[1] = a1;
      dispatch_retain(v16);
      operator new();
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  goto LABEL_9;
}

void sub_10058FD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100590008(uint64_t a1)
{
  v17 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v3 = ServiceMap;
  v4 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v5 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  sub_10005B878(v10, @"last.dev.icloud.ver", kPhoneServicesWalletDomain, 0, 1, &v16);
  sub_10010B240(&v17, &v16);
  sub_10000A1EC(&v16);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v17)
  {
    *buf = 0;
    ctu::cf::assign(buf, v17, v12);
    dword_101FCB960 = *buf;
    v13 = *(a1 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315650;
      *&buf[4] = v14;
      v19 = 2080;
      v20 = " ";
      v21 = 1024;
      v22 = dword_101FCB960;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sRestored fLastDevSectionVer %u", buf, 0x1Cu);
    }
  }

  return sub_100029A48(&v17);
}

void sub_1005901F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100590240(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_1005A5228(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_1005902A4(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(v5 + 48);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = PersonalityInfo::logPrefix(**(v5 + 80));
          v10 = "locked";
          v11 = 136315650;
          v12 = v9;
          v13 = 2080;
          v14 = " ";
          if (a2)
          {
            v10 = "unlocked. Invoking service refresh";
          }

          v15 = 2080;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sKeychain is %s", &v11, 0x20u);
        }

        if (a2)
        {
          sub_1005903E0(v5, 0, 0);
        }
      }

      sub_100004A34(v7);
    }
  }
}

const void **sub_1005903E0(const void **result, _BOOL4 a2, _BOOL4 a3)
{
  if (*(result[12] + 354))
  {
    return result;
  }

  v5 = result;
  result = (*(*result[13] + 16))(result[13]);
  if (!result)
  {
    return result;
  }

  v6 = (*(*v5 + 224))(v5);
  v7 = *(v5 + 48);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(v5 + 80));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
    *(buf.__r_.__value_.__r.__words + 4) = v8;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v88 = asStringBool(a2);
    v89 = 2080;
    *v90 = asStringBool(a3);
    *&v90[8] = 2080;
    *&v90[10] = asStringBool(v6 == 1);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%suserAction:%s, reprovisioning:%s, service was up:%s", &buf, 0x34u);
  }

  v9 = *(v5 + 96);
  if (*(v9 + 344) == 1 && *(v9 + 276) == 1 && *(v9 + 272) == 4)
  {
    sub_100594338(v5);
  }

  else if (!a3)
  {
    v20 = 0;
    goto LABEL_26;
  }

  if ((*(*v5 + 224))(v5) == 1)
  {
    sub_100592DFC(v5, 0);
  }

  if (*(v5 + 392) == 1)
  {
    sub_100594514(v5, 0, 0);
  }

  sub_100595194(v5);
  *(v5 + 524) = 0;
  sub_10034B824(*(v5 + 96));
  ServiceMap = Registry::getServiceMap(*(v5 + 56));
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
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
  buf.__r_.__value_.__r.__words[0] = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &buf);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_22;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
LABEL_22:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
LABEL_23:
  (*(*v18 + 32))(v18, **(v5 + 80) + 24, kCFPSReprovisioningRequired, kPhoneServicesWalletDomain, 0, 1);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  v20 = 1;
LABEL_26:
  v21 = sub_1005DCD74(*(v5 + 104));
  v22 = *(v5 + 192);
  if (v22)
  {
    v23 = v22 == 2;
  }

  else
  {
    v23 = sub_10058D044(v5);
  }

  theDict = 0;
  v86 = 0;
  sub_1005954E4(v5, &theDict);
  if (theDict)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  if (v24 != 1 || v86 != 1)
  {
    v28 = Registry::getServiceMap(*(v5 + 56));
    sub_1005A589C(v28, &buf);
    (*(*buf.__r_.__value_.__l.__data_ + 56))(buf.__r_.__value_.__r.__words[0], **(v5 + 80) + 24);
    if (buf.__r_.__value_.__l.__size_)
    {
      sub_100004A34(buf.__r_.__value_.__l.__size_);
    }

    if (v86 == 1)
    {
      sub_100810310(v5, 2u, 0, 1, 1);
    }

    __p[0] = 0;
    __p[1] = 0;
    v84 = 0;
    sub_10000501C(__p, "-");
    v77 = 0;
    v25 = 0;
    v27 = 0;
    v29 = 0;
    goto LABEL_48;
  }

  if (!sub_10059424C(v5))
  {
    __p[0] = 0;
    __p[1] = 0;
    v84 = 0;
    if (CFStringCompare(*(v5 + 200), &stru_101F6AFB8, 0))
    {
      sub_10000501C(&v79, "mismatch: '");
      v51 = *(v5 + 143);
      if (v51 >= 0)
      {
        v52 = (v5 + 120);
      }

      else
      {
        v52 = *(v5 + 120);
      }

      if (v51 >= 0)
      {
        v53 = *(v5 + 143);
      }

      else
      {
        v53 = *(v5 + 128);
      }

      v54 = std::string::append(&v79, v52, v53);
      v55 = *&v54->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v80, "' vs '", 6uLL);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      memset(&buf, 0, sizeof(buf));
      ctu::cf::assign();
      v78 = buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v78;
      }

      else
      {
        v58 = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = buf.__r_.__value_.__l.__size_;
      }

      v60 = std::string::append(&v81, v58, size);
      v61 = *&v60->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v82, "'", 1uLL);
      v63 = *&v62->__r_.__value_.__l.__data_;
      v84 = v62->__r_.__value_.__r.__words[2];
      *__p = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_10000501C(__p, "disabled");
    }

    v25 = 0;
    v27 = 0;
    v29 = 0;
    v77 = 0x100000000;
LABEL_48:
    v26 = -1;
    goto LABEL_49;
  }

  if (v6 == 1 && (*(v5 + 528) & 1) == 0)
  {
    *(v5 + 528) = 1;
  }

  v25 = sub_1005955F0(v5, theDict, 1);
  if (v25)
  {
    if (sub_100347D60(*(v5 + 196)) == 1)
    {
      v26 = sub_10034B458(*(v5 + 96), v20 | a2, 0);
      if (v26 == 1)
      {
        if (*(v5 + 392))
        {
          v27 = 0;
          v26 = 1;
        }

        else
        {
          v26 = 1;
          v27 = sub_100595BDC(v5, theDict, 1);
        }
      }

      else
      {
        v27 = 0;
      }

      v70 = 1;
      goto LABEL_137;
    }
  }

  else if (!sub_1005962C8(v5))
  {
    v64 = **(v5 + 80);
    if (*(v64 + 48) == 1)
    {
      v65 = v25;
      v66 = v20;
      v67 = *(v5 + 48);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = PersonalityInfo::logPrefix(v64);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = v68;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I %s%sno fCBRoot -> disable personality", &buf, 0x16u);
      }

      v69 = Registry::getServiceMap(*(v5 + 56));
      sub_1005A589C(v69, &buf);
      (*(*buf.__r_.__value_.__l.__data_ + 64))(buf.__r_.__value_.__r.__words[0], **(v5 + 80) + 24, 0);
      v20 = v66;
      v25 = v65;
      if (buf.__r_.__value_.__l.__size_)
      {
        sub_100004A34(buf.__r_.__value_.__l.__size_);
      }
    }
  }

  v27 = 0;
  v70 = 0;
  v26 = -1;
LABEL_137:
  __p[0] = 0;
  __p[1] = 0;
  v84 = 0;
  sub_10000501C(&buf, "match ");
  v71 = *(v5 + 143);
  if (v71 >= 0)
  {
    v72 = (v5 + 120);
  }

  else
  {
    v72 = *(v5 + 120);
  }

  if (v71 >= 0)
  {
    v73 = *(v5 + 143);
  }

  else
  {
    v73 = *(v5 + 128);
  }

  v74 = std::string::append(&buf, v72, v73);
  LODWORD(v77) = v70;
  v75 = *&v74->__r_.__value_.__l.__data_;
  v84 = v74->__r_.__value_.__r.__words[2];
  *__p = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  HIDWORD(v77) = 1;
  v29 = 1;
LABEL_49:
  v30 = *(v5 + 48);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v76 = v25;
    v31 = v20;
    v32 = PersonalityInfo::logPrefix(**(v5 + 80));
    v33 = (*(*v5 + 224))(v5);
    v34 = sub_10060FF94(v33);
    v35 = sub_10060FFC0(*(v5 + 192));
    v36 = "OFF";
    v37 = *(v5 + 392);
    if (v23)
    {
      v36 = "ON";
    }

    v38 = "signed-out";
    LODWORD(buf.__r_.__value_.__l.__data_) = 136318722;
    *(buf.__r_.__value_.__r.__words + 4) = v32;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    if (v21)
    {
      v38 = "signed-in";
    }

    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v39 = __p;
    if (v84 < 0)
    {
      v39 = __p[0];
    }

    v88 = v34;
    v89 = 2080;
    *v90 = v36;
    if (v37)
    {
      v40 = "*";
    }

    else
    {
      v40 = "";
    }

    *&v90[8] = 2080;
    if (v27)
    {
      v40 = "";
    }

    *&v90[10] = v35;
    v41 = "no";
    *&v90[18] = 2080;
    v91 = v38;
    v92 = 1024;
    if (v31)
    {
      v41 = "yes";
    }

    v93 = HIDWORD(v77);
    v94 = 2080;
    v95 = v39;
    v96 = 1024;
    v97 = v26;
    v98 = 1024;
    v25 = v76;
    v99 = v76;
    v100 = 1024;
    v101 = v77;
    v102 = 1024;
    v103 = v27;
    v104 = 2080;
    v105 = v40;
    v106 = 1024;
    v107 = v37;
    v108 = 2080;
    v109 = v41;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%s+ state:%s switch:%s(%s) iCloud:%s paired:[%d] calledID:[%s] accountState:[%d] preprovisioned:[%d] serviceAllowed:[%d] provisioned:[%d%s] applied:[%d] reprovisioning:%s", &buf, 0x80u);
  }

  if ((*(*v5 + 224))(v5) == 1 && ((v23 & v29 & v25) != 1 || v26 == -1 || ((*(v5 + 392) | v27) & 1) == 0))
  {
    sub_100592DFC(v5, 0);
  }

  if ((v29 & v27 & (*(v5 + 392) ^ 1)) != 1 || v26 != 1)
  {
    if (!*(v5 + 392))
    {
      goto LABEL_80;
    }

LABEL_74:
    if (!HIDWORD(v77) || v29 && (!v25 || *(**(v5 + 80) + 48) == 1 && v26 == -1))
    {
      sub_100594514(v5, 0, 0);
    }

    goto LABEL_80;
  }

  sub_100594514(v5, 1, theDict);
  sub_100596308(v5, 1);
  if (*(v5 + 392))
  {
    goto LABEL_74;
  }

LABEL_80:
  if ((v29 & v23 & ((*(*v5 + 224))(v5) != 1)) == 1 && *(v5 + 392) == 1 && *(**(v5 + 80) + 48) == 1)
  {
    sub_100592DFC(v5, 1);
  }

  (*(*v5 + 200))(&buf, v5, 0);
  v42 = buf.__r_.__value_.__s.__data_[0];
  sub_10001021C(&buf.__r_.__value_.__l.__size_);
  (*(*v5 + 192))(&buf, v5);
  v43 = buf.__r_.__value_.__s.__data_[0];
  sub_10001021C(&buf.__r_.__value_.__l.__size_);
  ThumperCapability::ThumperCapability(&buf, v42, v43);
  sub_100596484(v5 + 576, &buf);
  v44 = *(v5 + 48);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = PersonalityInfo::logPrefix(**(v5 + 80));
    v46 = (*(*v5 + 224))(v5);
    v47 = sub_10060FF94(v46);
    v48 = *(v5 + 392);
    v49 = "";
    v50 = "*";
    LODWORD(buf.__r_.__value_.__l.__data_) = 136316418;
    if ((v48 & 1) == 0)
    {
      v50 = "";
    }

    *(buf.__r_.__value_.__r.__words + 4) = v45;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    if (!v27)
    {
      v49 = v50;
    }

    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v88 = v47;
    v89 = 1024;
    *v90 = v27;
    *&v90[4] = 2080;
    *&v90[6] = v49;
    *&v90[14] = 1024;
    *&v90[16] = v48;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%s- state:%s provisioned:[%d%s] applied:[%d]", &buf, 0x36u);
  }

  if ((sub_10034B81C(*(v5 + 96)) & 1) == 0 && (*(v5 + 524) & 1) == 0 && (*(v5 + 525) & 1) == 0 && (*(v5 + 526) & 1) == 0 && (*(v5 + 527) & 1) == 0)
  {
    *(v5 + 528) = 0;
    sub_10034CC54(*(v5 + 96), 1);
  }

  if ((*(v5 + 528) & 1) == 0)
  {
    sub_10034CD9C(*(v5 + 96), 1, 0);
  }

  sub_1005964FC(v5, v23, SHIDWORD(v77), v29, v26);
  if (SHIBYTE(v84) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_10001021C(&theDict);
}

uint64_t sub_10059120C(uint64_t result, uint64_t a2)
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

void sub_100591228(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_100591240(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sloading initial states", buf, 0x16u);
  }

  v4 = sub_100591B44(a1);
  sub_100591CF8(a1, HIDWORD(v4));
  *(a1 + 196) = 2;
  getAssociatedID(__p);
  v5 = (a1 + 200);
  if ((a1 + 200) != __p)
  {
    *buf = *v5;
    *v5 = __p[0];
    __p[0] = 0;
    sub_100005978(buf);
  }

  sub_100005978(__p);
  v6 = *(a1 + 48);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 80));
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v46 = *&buf[16];
    v8 = *buf;
    if ((buf[23] & 0x80u) == 0)
    {
      v8 = __p;
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v48 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sLoaded AssociatedAccountID '%s'", buf, 0x20u);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (!v15)
  {
    v17 = 0;
    goto LABEL_17;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
LABEL_17:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
LABEL_18:
  (*(*v17 + 24))(__p, v17, **(a1 + 80) + 24, kCFPSReprovisioningRequired, kPhoneServicesWalletDomain, 0, 1);
  v19 = __p[0];
  buf[0] = 0;
  if (__p[0])
  {
    v20 = CFGetTypeID(__p[0]);
    if (v20 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v19, v21);
    }
  }

  v22 = buf[0];
  sub_10000A1EC(__p);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if ((v22 & 1) == 0)
  {
    std::mutex::lock((a1 + 432));
    v44 = 0;
    v23 = Registry::getServiceMap(*(a1 + 56));
    sub_1004419D4(v23, buf);
    (*(**buf + 24))(__p);
    sub_10002FE1C(&v44, __p);
    sub_10000A1EC(__p);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    buf[0] = 0;
    ctu::cf::assign(buf, v44, v24);
    v25 = buf[0];
    *(a1 + 392) = buf[0];
    if (v25 == 1)
    {
      v26 = Registry::getServiceMap(*(a1 + 56));
      sub_1004419D4(v26, buf);
      (*(**buf + 24))(&v42);
      sub_100010180(&v43, &v42);
      v27 = (a1 + 512);
      if ((a1 + 512) != &v43)
      {
        __p[0] = *v27;
        *v27 = v43;
        v43 = 0;
        sub_10001021C(__p);
      }

      sub_10001021C(&v43);
      sub_10000A1EC(&v42);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      v28 = *v27;
      if (*v27)
      {
        v29 = *(a1 + 48);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          *&buf[4] = v30;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sLoaded CB from local store", buf, 0x16u);
        }

        __p[0] = 0;
        v31 = Registry::getServiceMap(*(a1 + 56));
        sub_1004419D4(v31, buf);
        (*(**buf + 24))(&v43);
        sub_100010180(__p, &v43);
        sub_10000A1EC(&v43);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (__p[0])
        {
          operator new();
        }

        sub_10001021C(__p);
        v28 = *v27;
        if (*v27)
        {
          if (*(a1 + 496))
          {
            goto LABEL_41;
          }
        }
      }

      *(a1 + 512) = 0;
      *buf = v28;
      sub_10001021C(buf);
      *(a1 + 392) = 0;
      if (*(a1 + 512))
      {
LABEL_41:
        sub_100591FC4(a1);
        v32 = *(a1 + 48);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          *&buf[4] = v33;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%spreloaded fCBRoot in place -> enable personality", buf, 0x16u);
        }

        v34 = Registry::getServiceMap(*(a1 + 56));
        sub_1005A589C(v34, buf);
        (*(**buf + 64))(*buf, **(a1 + 80) + 24, 1);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }
    }

    sub_100045C8C(&v44);
    std::mutex::unlock((a1 + 432));
  }

  v35 = *(a1 + 48);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = PersonalityInfo::logPrefix(**(a1 + 80));
    v37 = sub_10060FFC0(*(a1 + 192));
    v38 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v38 = *v38;
    }

    v39 = asStringBool(*(a1 + 392));
    v40 = asStringBool(v22);
    *buf = 136316418;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v48 = v37;
    v49 = 2080;
    v50 = v38;
    v51 = 2080;
    v52 = v39;
    v53 = 2080;
    v54 = v40;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sBootup switch is:%s, account ID:%s, fProvisioningApplied:%s, reprovisioningNeeded:%s", buf, 0x3Eu);
  }

  *(a1 + 529) = 1;
  return v22;
}

void sub_100591A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, const void *a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_10001021C(&a17);
  sub_100045C8C(&a16);
  std::mutex::unlock((v26 + 432));
  _Unwind_Resume(a1);
}

uint64_t sub_100591B44(uint64_t a1)
{
  result = sub_1008100FC(a1);
  if (result)
  {
    v19 = 0;
    theDict = 0;
    v3 = (a1 + 120);
    v4 = *(a1 + 104);
    v5 = sub_1008100FC(a1);
    sub_1005D67F8(v4, 2, (a1 + 120), v5, &v19);
    if (!theDict)
    {
      v13 = 0;
      v14 = 0;
LABEL_29:
      sub_10001021C(&theDict);
      return v14 | v13;
    }

    if (CFDictionaryGetValue(theDict, @"account"))
    {
      v21 = 0uLL;
      v22 = 0;
      ctu::cf::assign();
      v18 = v22;
      *__p = v21;
      v6 = *(a1 + 128);
      v7 = *(a1 + 143);
      v8 = SHIBYTE(v22);
      if (v22 >= 0)
      {
        v9 = HIBYTE(v22);
      }

      else
      {
        v9 = *(&v21 + 1);
      }

      if ((v7 & 0x80u) == 0)
      {
        v6 = v7;
      }

      if (v9 == v6)
      {
        if (v22 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        if ((v7 & 0x80u) == 0)
        {
          v11 = v3;
        }

        else
        {
          v11 = *v3;
        }

        v12 = memcmp(v10, v11, v9) == 0;
        if (v8 < 0)
        {
LABEL_22:
          operator delete(__p[0]);
          if (!v12)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v12 = 0;
        if (SHIBYTE(v22) < 0)
        {
          goto LABEL_22;
        }
      }

      if (!v12)
      {
        goto LABEL_27;
      }
    }

LABEL_23:
    Value = CFDictionaryGetValue(theDict, @"enable");
    if (Value)
    {
      LOBYTE(v21) = 0;
      ctu::cf::assign(&v21, Value, v16);
      if (v21)
      {
        v14 = 0x200000000;
      }

      else
      {
        v14 = &_mh_execute_header;
      }

      goto LABEL_28;
    }

LABEL_27:
    v14 = 0;
LABEL_28:
    v13 = 1;
    goto LABEL_29;
  }

  return result;
}

void sub_100591CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C((v19 + 8));
  _Unwind_Resume(a1);
}

BOOL sub_100591CF8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 192) == a2)
  {
    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *v24 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v24);
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
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_11:
  isWatch = GestaltUtilityInterface::isWatch(v13);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (isWatch)
  {
    v16 = *(a1 + 48);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v17 = PersonalityInfo::logPrefix(**(a1 + 80));
      v18 = sub_10060FFC0(a2);
      *v24 = 136315650;
      *&v24[4] = v17;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%sThumper: user switch state on Watch cannot be changed from 'Default'. Attempted:'%s'", v24, 0x20u);
      return 0;
    }
  }

  else
  {
    v19 = *(a1 + 192);
    *(a1 + 192) = a2;
    v20 = *(a1 + 48);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = sub_10060FFC0(v19);
      v23 = sub_10060FFC0(*(a1 + 192));
      *v24 = 136315906;
      *&v24[4] = v21;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v22;
      v29 = 2080;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper: user switch state changed from %s -> %s", v24, 0x2Au);
    }

    return 1;
  }

  return result;
}

void sub_100591F4C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100591FC4(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v14);
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
  (*(*v10 + 72))(v10, **(a1 + 80) + 24);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = *(a1 + 616);
  PersonalityInfo::uuid(&v14, **(a1 + 80));
  (*(*v12 + 24))(v12, v14);
  return sub_1000475BC(&v14);
}

void sub_10059211C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000475BC(va);
  _Unwind_Resume(a1);
}

void sub_100592148(uint64_t a1)
{
  sub_1005D1DDC(*(a1 + 104));
  if (sub_1008100FC(a1) && (*(a1 + 529) & 1) == 0)
  {
    sub_100591240(a1);
    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 16));
    operator new();
  }

  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sPostpone loading initial states until device-ID is ready", buf, 0x16u);
  }

  sub_100004AA0(buf, (a1 + 16));
  v4 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0();
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_100592398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005923D8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        v5 = a1[6];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        }

        v6[0] = 0;
        v6[1] = 0;
        sub_100004AA0(v6, (v3 + 16));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

void sub_100592520(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v6 = *(a1 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 136315394;
      v23 = v7;
      v24 = 2080;
      v25 = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluate Entitlement Update ================================", &v22, 0x16u);
    }

    v10 = *(a4 + 8);
    v9 = a4 + 8;
    v8 = v10;
    if (v10)
    {
      v11 = v9;
      do
      {
        if (*(v8 + 28) >= 8)
        {
          v11 = v8;
        }

        v8 = *(v8 + 8 * (*(v8 + 28) < 8));
      }

      while (v8);
      if (v11 != v9 && *(v11 + 28) <= 8)
      {
        v12 = *(v11 + 32);
        v13 = *(a1 + 196);
        v14 = *(a1 + 48);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v12 == 3 || v12 == v13)
        {
          if (v15)
          {
            v17 = PersonalityInfo::logPrefix(**(a1 + 80));
            v18 = sub_100A38E08(v12);
            v22 = 136315650;
            v23 = v17;
            v24 = 2080;
            v25 = " ";
            v26 = 2080;
            v27 = v18;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper Entitlement:%s - no change", &v22, 0x20u);
          }
        }

        else
        {
          if (v15)
          {
            v19 = PersonalityInfo::logPrefix(**(a1 + 80));
            v20 = sub_100A38E08(*(a1 + 196));
            v21 = sub_100A38E08(v12);
            v22 = 136315906;
            v23 = v19;
            v24 = 2080;
            v25 = " ";
            v26 = 2080;
            v27 = v20;
            v28 = 2080;
            v29 = v21;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper entitlement is changing from %s to %s", &v22, 0x2Au);
          }

          *(a1 + 196) = v12;
          sub_1005903E0(a1, 0, 0);
        }
      }
    }
  }
}

void sub_10059276C(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v3 = dispatch_queue_create("LocationPopupQueue", v2);
  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 80));
    buf = 136315394;
    *buf_4 = v5;
    *&buf_4[8] = 2080;
    *&buf_4[10] = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sShowing popup to indicate location use during emergency calls", &buf, 0x16u);
  }

  if (*(a1 + 664))
  {
    v6 = *(a1 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      buf = 136315394;
      *buf_4 = v7;
      *&buf_4[8] = 2080;
      *&buf_4[10] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sAlready showing a location popup!", &buf, 0x16u);
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    sub_1005A5A80(ServiceMap, &v17);
    if (v17)
    {
      v16 = 0;
      (*(*v17 + 40))(&v16);
      v15 = 0;
      (*(*v17 + 40))(&v15);
      v14 = 0;
      (*(*v17 + 40))(&v14);
      v13 = 0;
      (*(*v17 + 40))(&v13);
      v9 = *(a1 + 32);
      if (v9)
      {
        dispatch_retain(v9);
      }

      sub_100004AA0(&buf, (a1 + 16));
      v10 = *&buf_4[4];
      if (*&buf_4[4])
      {
        atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
      }

      operator new();
    }

    v11 = *(a1 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(**(a1 + 80));
      buf = 136315394;
      *buf_4 = v12;
      *&buf_4[8] = 2080;
      *&buf_4[10] = " ";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%sLocalization interface doesn't exist. Bailing!", &buf, 0x16u);
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  if (v3)
  {
    dispatch_release(v3);
  }
}

void sub_100592C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, char a31)
{
  if (a30)
  {
    sub_100004A34(a30);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100592D58(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

uint64_t sub_100592D94(uint64_t a1)
{
  result = sub_10080FFF8(a1);
  if ((result & 1) == 0)
  {
    sub_10007B7D8(a1 + 648);
    v3 = v4;
    result = sub_10000A1EC(&v4);
    if (!v3)
    {
      sub_10059276C(a1);
      return sub_10079CC40(a1 + 648);
    }
  }

  return result;
}

void sub_100592DFC(uint64_t a1, int a2)
{
  sub_100592FC4(a1, a2);
  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 80));
    v6 = "OFF";
    *buf = 136315650;
    v14 = v5;
    v16 = " ";
    v15 = 2080;
    if (a2)
    {
      v6 = "ON";
    }

    v17 = 2080;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sTHUMPER %s", buf, 0x20u);
  }

  if (a2)
  {
    sub_100592D94(a1);
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 520);
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(__p, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *__p = *(a1 + 120);
    v12 = *(a1 + 136);
  }

  v9 = (*(*v7 + 448))(v7, 1, v8 == 1, __p);
  v10 = v9;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
    if (!v10)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v9)
  {
LABEL_14:
    ResetAllPacketHandlersAPNs(0xC, 0xFFFFFFFFLL, 0);
    sub_100593034(a1, a2);
  }
}
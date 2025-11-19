void sub_1003B4688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B46A4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E950();
  }

  if (!sub_1003AC678(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(a1 + 4) = 1;
  *(v7 + 24) = 4;
  sub_1003B4720(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

void sub_1003B4720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B4844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B487C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E950();
  }

  if (!sub_1003AF63C(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 4;
  sub_1003AC70C(a1);
  *(v7 + 24) = 4;
  sub_1003B4918(a1 + 96, a4, a1);
  *(v7 + 24) = 3;
  return 1;
}

void sub_1003B4918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForSubscription");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B496C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B4988(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E950();
  }

  if (!sub_1003AF698(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(a1 + 4) = 1;
  *(v7 + 24) = 4;
  sub_1003B4720(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

uint64_t sub_1003B4A28(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B45A8(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B4AB0(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B4AB0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B46A4(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B4B38(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B4B38(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B487C(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B4BC0(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B4BC0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B4988(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B4C58(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B4C58(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 4;
  sub_1003B4720(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003B4CB8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 6;
  sub_1003B1888(a1);
  *(v6 + 24) = 6;
  sub_1003B4D20(a1 + 92, a4, a1);
  *(v6 + 24) = 7;
  return 1;
}

void sub_1003B4D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "UserInWebsheet");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B4D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B4D98(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 6;
  sub_1003B4DF0(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

void sub_1003B4DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B4F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003B4F4C(void *a1)
{
  *a1 = off_101E48120;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003B4F98(void *a1)
{
  *a1 = off_101E48120;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003B5078(uint64_t result, uint64_t a2)
{
  *a2 = off_101E48120;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003B50B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003B50C8(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003B5108(void *a1, unsigned __int8 *a2, __int128 *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = *a2;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        v10 = *(v7 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11[0] = 67109120;
          v11[1] = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I websheet info result : %d", v11, 8u);
        }

        if (v6)
        {
          sub_1003B5280(v7 + 408, a3);
          sub_1003B52DC(*(v7 + 88), v11, 1);
        }

        else
        {
          sub_1003B5604(*(v7 + 88), v11, 1);
        }
      }

      sub_100004A34(v9);
    }
  }
}

uint64_t sub_1003B5234(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003B5280(uint64_t a1, __int128 *a2)
{
  if (*a1 == 1)
  {

    sub_1003AB0A0(a1, a2);
  }

  else
  {
    sub_10016F74C((a1 + 8), a2);
    *a1 = 1;
  }
}

uint64_t sub_1003B52DC(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B5360(a1))
  {
    return 1;
  }

  v5 = sub_1003B5410(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B5360(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B5410(uint64_t a1)
{
  v1 = (*(&unk_101FB22E0 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B54D8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidGetWebsheetInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidGetWebsheetInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B55D0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B5604(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B5688(a1))
  {
    return 1;
  }

  v5 = sub_1003B5738(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B5688(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B5738(uint64_t a1)
{
  v1 = (*(&unk_101FB2338 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B5800(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_24DidFailToGetWebsheetInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_24DidFailToGetWebsheetInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B58F8(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B592C(uint64_t a1)
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

_BYTE *sub_1003B59AC(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 22 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_1003B5A64(a1);
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
    v8 = (*(v4 + 8 * (v7 / 0x16)) + 184 * (v7 % 0x16));
  }

  result = sub_1003AB564(v8, a2);
  ++a1[5];
  return result;
}

void *sub_1003B5A64(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x16;
  v3 = v1 - 22;
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

void sub_1003B5BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1003B5C38(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_1003B5CD8(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v7 + v3[4];
  }

  v9 = *a2;
  *(*(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    v7 = v3[5];
  }

  v3[5] = v7 + 1;
  return result;
}

void *sub_1003B5CD8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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

void sub_1003B5E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003B5EAC(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2 + 8);
  if (v3)
  {
    sub_100004A34(v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_1003B5F1C(a1, 1);
}

uint64_t sub_1003B5F1C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
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
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t sub_1003B5F7C(int64x2_t *a1)
{
  v2 = *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x16uLL)) + 184 * (a1[2].i64[0] % 0x16uLL);
  if (*(v2 + 176) == 1)
  {
    if (*(v2 + 167) < 0)
    {
      operator delete(*(v2 + 144));
    }

    if (*(v2 + 135) < 0)
    {
      operator delete(*(v2 + 112));
    }

    if (*(v2 + 111) < 0)
    {
      operator delete(*(v2 + 88));
    }

    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }
  }

  a1[2] = vaddq_s64(a1[2], xmmword_1017CD970);

  return sub_1003B6068(a1, 1);
}

uint64_t sub_1003B6068(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x16)
  {
    a2 = 1;
  }

  if (v2 < 0x2C)
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
    *(a1 + 32) -= 22;
  }

  return v4 ^ 1u;
}

uint64_t sub_1003B60C8(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 8));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 8));
  }

  else
  {
    v8 = (*v7 + 16 * v4);
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 8));
    v11 = (*v10 + 16 * v9);
  }

  sub_1003B616C(a1, v7, v8, v10, v11);
  return a1;
}

void *sub_1003B616C(void *a1, char *a2, void *a3, char *a4, void *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a5 - *a4) >> 4) + 32 * (a4 - a2) - ((a3 - *a2) >> 4);
  }

  return sub_1003B61A0(a1, a2, a3, v5);
}

void *sub_1003B61A0(void *result, void *a2, void *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[1];
  v9 = result[2];
  v10 = 32 * (v9 - v8) - 1;
  if (v9 == v8)
  {
    v10 = 0;
  }

  v11 = result[5];
  v12 = v11 + result[4];
  v13 = v10 - v12;
  if (a4 > v13)
  {
    result = sub_1003B631C(result, a4 - v13);
    v11 = v7[5];
    v8 = v7[1];
    v9 = v7[2];
    v12 = v7[4] + v11;
  }

  v14 = (v8 + 8 * (v12 >> 8));
  if (v9 != v8)
  {
    v15 = *v14 + 16 * v12;
    v16 = v15;
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v18 = v14;
    goto LABEL_12;
  }

  v15 = 0;
  v16 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = a4 + ((v16 - *v14) >> 4);
  if (v17 < 1)
  {
    v19 = 255 - v17;
    v18 = &v14[-(v19 >> 8)];
    v16 = *v18 + 16 * ~v19;
  }

  else
  {
    v18 = &v14[v17 >> 8];
    v16 = *v18 + 16 * v17;
  }

LABEL_12:
  if (v15 != v16)
  {
    do
    {
      v20 = v16;
      if (v14 != v18)
      {
        v20 = *v14 + 4096;
      }

      if (v15 == v20)
      {
        v20 = v15;
      }

      else
      {
        v21 = v15;
        do
        {
          v22 = a3[1];
          *v21 = *a3;
          v21[1] = v22;
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          a3 += 2;
          if ((a3 - *a2) == 4096)
          {
            v23 = a2[1];
            ++a2;
            a3 = v23;
          }

          v21 += 2;
        }

        while (v21 != v20);
        v11 = v7[5];
      }

      v11 += (v20 - v15) >> 4;
      v7[5] = v11;
      if (v14 == v18)
      {
        break;
      }

      v24 = v14[1];
      ++v14;
      v15 = v24;
    }

    while (v24 != v16);
  }

  return result;
}

void *sub_1003B631C(void *result, unint64_t a2)
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

  if (v4)
  {
    v5 = (v4 >> 8) + 1;
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = result[4];
  if (v5 >= v6 >> 8)
  {
    v7 = v6 >> 8;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 8)
  {
    for (result[4] = v6 - (v7 << 8); v7; --v7)
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

    for (result[4] -= v7 << 8; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_100129284(v2, v16);
    }
  }

  return result;
}

void sub_1003B65C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B6634()
{
  if ((byte_101FB1D00 & 1) == 0)
  {
    byte_101FB1D00 = 1;
    qword_101FB1CF0 = sub_1003AC5F8;
    unk_101FB1CF8 = sub_1003AC5F8;
    qword_101FB1CE0 = sub_1003AC5F8;
    unk_101FB1CE8 = sub_1003AC5F8;
    qword_101FB1CD0 = sub_1003AC5F8;
    unk_101FB1CD8 = sub_1003AC5F8;
    qword_101FB1CC0 = sub_1003AC5F8;
    unk_101FB1CC8 = sub_1003AC5F8;
    qword_101FB1CB8 = sub_1003ACF3C;
  }
}

void sub_1003B6680()
{
  if ((byte_101FB1D58 & 1) == 0)
  {
    byte_101FB1D58 = 1;
    qword_101FB1D48 = sub_1003AD6A4;
    unk_101FB1D50 = sub_1003AD6A4;
    qword_101FB1D38 = sub_1003AD6A4;
    unk_101FB1D40 = sub_1003AD6A4;
    qword_101FB1D20 = sub_1003AD6A4;
    unk_101FB1D28 = sub_1003AD6A4;
    qword_101FB1D10 = sub_1003AD6A4;
    *algn_101FB1D18 = sub_1003AD6A4;
    qword_101FB1D30 = sub_1003AD6AC;
  }
}

void sub_1003B66CC()
{
  if ((byte_101FB1DB0 & 1) == 0)
  {
    byte_101FB1DB0 = 1;
    qword_101FB1DA0 = sub_1003ADBE8;
    unk_101FB1DA8 = sub_1003ADBE8;
    qword_101FB1D90 = sub_1003ADBE8;
    unk_101FB1D98 = sub_1003ADBE8;
    qword_101FB1D78 = sub_1003ADBE8;
    unk_101FB1D80 = sub_1003ADBE8;
    qword_101FB1D68 = sub_1003ADBE8;
    unk_101FB1D70 = sub_1003ADBE8;
    qword_101FB1D88 = sub_1003ADBF0;
  }
}

void sub_1003B6718()
{
  if ((byte_101FB1E08 & 1) == 0)
  {
    byte_101FB1E08 = 1;
    qword_101FB1E00 = sub_1003AE074;
    qword_101FB1DF8 = sub_1003AE07C;
    qword_101FB1DF0 = sub_1003AE2C8;
    qword_101FB1DE8 = sub_1003AE320;
    qword_101FB1DE0 = sub_1003AE558;
    qword_101FB1DD8 = sub_1003AE5B0;
    qword_101FB1DD0 = sub_1003AE608;
    qword_101FB1DC8 = sub_1003AE660;
    qword_101FB1DC0 = sub_1003AE6B8;
  }
}

void sub_1003B67C8()
{
  if ((byte_101FB1E60 & 1) == 0)
  {
    byte_101FB1E60 = 1;
    qword_101FB1E50 = sub_1003AEA30;
    unk_101FB1E58 = sub_1003AEA30;
    qword_101FB1E48 = sub_1003AEA30;
    qword_101FB1E30 = sub_1003AEA30;
    unk_101FB1E38 = sub_1003AEA30;
    qword_101FB1E20 = sub_1003AEA30;
    unk_101FB1E28 = sub_1003AEA30;
    qword_101FB1E18 = sub_1003AEA30;
    qword_101FB1E40 = sub_1003AEA38;
  }
}

void sub_1003B6818()
{
  if ((byte_101FB1EB8 & 1) == 0)
  {
    byte_101FB1EB8 = 1;
    qword_101FB1EA8 = sub_1003AEF6C;
    unk_101FB1EB0 = sub_1003AEF6C;
    qword_101FB1EA0 = sub_1003AEF6C;
    qword_101FB1E88 = sub_1003AEF6C;
    unk_101FB1E90 = sub_1003AEF6C;
    qword_101FB1E78 = sub_1003AEF6C;
    unk_101FB1E80 = sub_1003AEF6C;
    qword_101FB1E70 = sub_1003AEF6C;
    qword_101FB1E98 = sub_1003AEF74;
  }
}

void sub_1003B6868()
{
  if ((byte_101FB1F10 & 1) == 0)
  {
    byte_101FB1F10 = 1;
    qword_101FB1F08 = sub_1003AF598;
    qword_101FB1EF0 = sub_1003AF598;
    unk_101FB1EF8 = sub_1003AF598;
    qword_101FB1EE8 = sub_1003AF598;
    qword_101FB1ED0 = sub_1003AF598;
    unk_101FB1ED8 = sub_1003AF598;
    qword_101FB1EC8 = sub_1003AF598;
    qword_101FB1F00 = sub_1003AFA9C;
    qword_101FB1EE0 = sub_1003AFCB8;
  }
}

void sub_1003B68C8()
{
  if ((byte_101FB1F68 & 1) == 0)
  {
    byte_101FB1F68 = 1;
    qword_101FB1F60 = sub_1003B0048;
    qword_101FB1F48 = sub_1003B0048;
    unk_101FB1F50 = sub_1003B0048;
    qword_101FB1F38 = sub_1003B0048;
    unk_101FB1F40 = sub_1003B0048;
    qword_101FB1F28 = sub_1003B0048;
    unk_101FB1F30 = sub_1003B0048;
    qword_101FB1F20 = sub_1003B0048;
    qword_101FB1F58 = sub_1003B0050;
  }
}

void sub_1003B6918()
{
  if ((byte_101FB1FC0 & 1) == 0)
  {
    byte_101FB1FC0 = 1;
    qword_101FB1FB0 = sub_1003B0450;
    unk_101FB1FB8 = sub_1003B0450;
    qword_101FB1FA0 = sub_1003B0450;
    unk_101FB1FA8 = sub_1003B0450;
    qword_101FB1F88 = sub_1003B0450;
    unk_101FB1F90 = sub_1003B0450;
    qword_101FB1F78 = sub_1003B0450;
    unk_101FB1F80 = sub_1003B0450;
    qword_101FB1F98 = sub_1003B0458;
  }
}

void sub_1003B6964()
{
  if ((byte_101FB2018 & 1) == 0)
  {
    byte_101FB2018 = 1;
    qword_101FB2010 = sub_1003B08F4;
    qword_101FB1FE8 = sub_1003B08F4;
    unk_101FB1FF0 = sub_1003B08F4;
    qword_101FB1FD0 = sub_1003B08F4;
    qword_101FB2008 = sub_1003B08FC;
    qword_101FB2000 = sub_1003B0AB0;
    qword_101FB1FF8 = sub_1003B0B08;
    qword_101FB1FE0 = sub_1003B0C14;
    qword_101FB1FD8 = sub_1003B0D5C;
  }
}

void sub_1003B69EC()
{
  if ((byte_101FB2070 & 1) == 0)
  {
    byte_101FB2070 = 1;
    qword_101FB2068 = sub_1003B1288;
    qword_101FB2050 = sub_1003B1288;
    unk_101FB2058 = sub_1003B1288;
    qword_101FB2040 = sub_1003B1288;
    unk_101FB2048 = sub_1003B1288;
    qword_101FB2030 = sub_1003B1288;
    unk_101FB2038 = sub_1003B1288;
    qword_101FB2028 = sub_1003B1288;
    qword_101FB2060 = sub_1003B1290;
  }
}

void sub_1003B6A3C()
{
  if ((byte_101FB20C8 & 1) == 0)
  {
    byte_101FB20C8 = 1;
    qword_101FB20B8 = sub_1003B1690;
    unk_101FB20C0 = sub_1003B1690;
    qword_101FB20A8 = sub_1003B1690;
    unk_101FB20B0 = sub_1003B1690;
    qword_101FB2098 = sub_1003B1690;
    unk_101FB20A0 = sub_1003B1690;
    qword_101FB2080 = sub_1003B1690;
    *algn_101FB2088 = sub_1003B1690;
    qword_101FB2090 = sub_1003B1A04;
  }
}

void sub_1003B6A88()
{
  if ((byte_101FB2120 & 1) == 0)
  {
    byte_101FB2120 = 1;
    qword_101FB2110 = sub_1003B2064;
    unk_101FB2118 = sub_1003B2064;
    qword_101FB2108 = sub_1003B2064;
    qword_101FB20F0 = sub_1003B2064;
    unk_101FB20F8 = sub_1003B2064;
    qword_101FB20E0 = sub_1003B2064;
    unk_101FB20E8 = sub_1003B2064;
    qword_101FB20D8 = sub_1003B2064;
    qword_101FB2100 = sub_1003B206C;
  }
}

void sub_1003B6AD8()
{
  if ((byte_101FB2178 & 1) == 0)
  {
    byte_101FB2178 = 1;
    qword_101FB2168 = sub_1003B2690;
    unk_101FB2170 = sub_1003B2690;
    qword_101FB2158 = sub_1003B2690;
    unk_101FB2160 = sub_1003B2690;
    qword_101FB2148 = sub_1003B2690;
    unk_101FB2150 = sub_1003B2690;
    qword_101FB2140 = sub_1003B2690;
    qword_101FB2130 = sub_1003B2690;
    qword_101FB2138 = sub_1003B2868;
  }
}

void sub_1003B6B28()
{
  if ((byte_101FB21D0 & 1) == 0)
  {
    byte_101FB21D0 = 1;
    qword_101FB21C0 = sub_1003B2DAC;
    unk_101FB21C8 = sub_1003B2DAC;
    qword_101FB21B0 = sub_1003B2DAC;
    unk_101FB21B8 = sub_1003B2DAC;
    qword_101FB21A8 = sub_1003B2DAC;
    qword_101FB2190 = sub_1003B2DAC;
    unk_101FB2198 = sub_1003B2DAC;
    qword_101FB2188 = sub_1003B2DAC;
    qword_101FB21A0 = sub_1003B3270;
  }
}

void sub_1003B6B78()
{
  if ((byte_101FB2228 & 1) == 0)
  {
    byte_101FB2228 = 1;
    qword_101FB2218 = sub_1003B383C;
    unk_101FB2220 = sub_1003B383C;
    qword_101FB2208 = sub_1003B383C;
    unk_101FB2210 = sub_1003B383C;
    qword_101FB2200 = sub_1003B383C;
    qword_101FB21E8 = sub_1003B383C;
    unk_101FB21F0 = sub_1003B383C;
    qword_101FB21E0 = sub_1003B383C;
    qword_101FB21F8 = sub_1003B3A40;
  }
}

void sub_1003B6BC8()
{
  if ((byte_101FB2280 & 1) == 0)
  {
    byte_101FB2280 = 1;
    qword_101FB2270 = sub_1003B3E7C;
    unk_101FB2278 = sub_1003B3E7C;
    qword_101FB2260 = sub_1003B3E7C;
    unk_101FB2268 = sub_1003B3E7C;
    qword_101FB2248 = sub_1003B3E7C;
    unk_101FB2250 = sub_1003B3E7C;
    qword_101FB2238 = sub_1003B3E7C;
    unk_101FB2240 = sub_1003B3E7C;
    qword_101FB2258 = sub_1003B4008;
  }
}

void sub_1003B6C14()
{
  if ((byte_101FB22D8 & 1) == 0)
  {
    byte_101FB22D8 = 1;
    qword_101FB22C8 = sub_1003B45A0;
    unk_101FB22D0 = sub_1003B45A0;
    qword_101FB22B8 = sub_1003B45A0;
    unk_101FB22C0 = sub_1003B45A0;
    qword_101FB22A0 = sub_1003B45A0;
    unk_101FB22A8 = sub_1003B45A0;
    qword_101FB2290 = sub_1003B45A0;
    *algn_101FB2298 = sub_1003B45A0;
    qword_101FB22B0 = sub_1003B4A04;
  }
}

void sub_1003B6C60()
{
  if ((byte_101FB2330 & 1) == 0)
  {
    byte_101FB2330 = 1;
    qword_101FB2320 = sub_1003B4CB0;
    unk_101FB2328 = sub_1003B4CB0;
    qword_101FB2308 = sub_1003B4CB0;
    unk_101FB2310 = sub_1003B4CB0;
    qword_101FB22F8 = sub_1003B4CB0;
    unk_101FB2300 = sub_1003B4CB0;
    qword_101FB22E8 = sub_1003B4CB0;
    unk_101FB22F0 = sub_1003B4CB0;
    qword_101FB2318 = sub_1003B4CB8;
  }
}

void sub_1003B6CAC()
{
  if ((byte_101FB2388 & 1) == 0)
  {
    byte_101FB2388 = 1;
    qword_101FB2378 = sub_1003B4D90;
    unk_101FB2380 = sub_1003B4D90;
    qword_101FB2360 = sub_1003B4D90;
    unk_101FB2368 = sub_1003B4D90;
    qword_101FB2350 = sub_1003B4D90;
    unk_101FB2358 = sub_1003B4D90;
    qword_101FB2340 = sub_1003B4D90;
    *algn_101FB2348 = sub_1003B4D90;
    qword_101FB2370 = sub_1003B4D98;
  }
}

uint64_t sub_1003B6CF8(uint64_t result)
{
  *result = off_101E48238;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_1003B6D1C(void ***a1)
{
  *a1 = off_101E48238;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1003B6D74(void ***a1)
{
  *a1 = off_101E48238;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1003B6DE0(uint64_t result, uint64_t a2)
{
  *result = off_101E48238;
  *(result + 8) = 0;
  *(result + 20) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(result + 20) |= 1u;
    *(result + 16) = v2;
  }

  return result;
}

uint64_t sub_1003B6EAC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 20))
  {
    PB::TextFormatter::format(this, "reason", *(a1 + 16));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1003B6F24(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_50;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_45;
            }

            v37 = *v35;
            *(this + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_41:
              LODWORD(v28) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(a1 + 16) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_50:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1003B71E0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v5, 2u);
  }

  return result;
}

uint64_t DataServiceController::load_APNFallbackKernelEventMonitor(DataServiceController *this)
{
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "load_APNFallbackKernelEventMonitor";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s: APN Fallback is not supported", &v3, 0xCu);
  }

  return 0;
}

uint64_t DataServiceController::setApnFallback(DataServiceController *this, int a2)
{
  if (a2)
  {
    DataServiceController::load_APNFallbackKernelEventMonitor(this);
  }

  return 0;
}

uint64_t sub_1003B7318(uint64_t a1)
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

void sub_1003B75F8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = [(NSError *)v2 localizedDescription];
    sub_10176EA00(v3, v4);
  }
}

uint64_t sub_1003B76A4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(qword_101FBA2E0, memory_order_acquire) & 1) == 0)
  {
    sub_10176EA5C();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003B8018;
  block[3] = &unk_101E26008;
  block[4] = a1;
  if (qword_101FBA2D0 != -1)
  {
    dispatch_once(&qword_101FBA2D0, block);
  }

  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  v6 = 0;
  v7 = 0;
  sub_1006FF688(a1, @"NETWORK_SLICING_DISCOVERED_MSG");
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 64));
    sub_10176EB54(v4, buf);
  }

  sub_100005978(&v6);

  sub_100005978(&v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1003B7EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100005978(&a17);
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003B7FE8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1003B8074(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I sending slicing notification: %@ %@ %@", &v11, 0x20u);
  }

  [*(a1 + 8) sendNotification:v7 body:v8 identifier:v9];
}

void sub_1003B8194(unint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = [NSMutableData dataWithLength:32];
  *(&v16.__r_.__value_.__s + 23) = 9;
  strcpy(&v16, "Category:");
  std::to_string(&__p, a1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = std::string::append(&v16, p_p, size);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v18 = v7->__r_.__value_.__r.__words[2];
  *v17 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v9 = HIBYTE(v18);
  v11 = v17[0];
  v10 = v17[1];
  v12 = [v4 bytes];
  if ((v9 & 0x80u) == 0)
  {
    v13 = v17;
  }

  else
  {
    v13 = v11;
  }

  if ((v9 & 0x80u) == 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = v10;
  }

  CC_SHA256(v13, v14, v12);
  *a2 = [v4 base64EncodedStringWithOptions:0];
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_1003B82C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1003B8384(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E482B8;
  sub_1003B8494((a1 + 3), a2);
  return a1;
}

void sub_1003B8400(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E482B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003B8454(uint64_t a1)
{

  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
}

ctu::OsLogLogger *sub_1003B8494(ctu::OsLogLogger *a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "ps.slc.ntfy");
  ctu::OsLogLogger::OsLogLogger(v8, &v7);
  ctu::OsLogLogger::OsLogLogger(a1, v8);
  ctu::OsLogLogger::~OsLogLogger(v8);
  ctu::OsLogContext::~OsLogContext(&v7);
  *(a1 + 1) = 0;
  v4 = [[NRSlicingNotificationManagerImpl alloc] initWithQueue:*a2];
  v5 = *(a1 + 1);
  *(a1 + 1) = v4;

  return a1;
}

void sub_1003B852C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003B85FC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 3)
  {
    v6 = "DATA.iRatClient.1";
  }

  else
  {
    v6 = off_101E48558[a2];
  }

  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, v6);
  ctu::OsLogLogger::OsLogLogger(v11, &v10);
  ctu::OsLogLogger::OsLogLogger((a1 + 72), v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  ctu::OsLogContext::~OsLogContext(&v10);
  sub_10000501C(&__p, "com.apple.irat.client");
  ctu::XpcClient::XpcClient();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  *a1 = off_101E48308;
  *(a1 + 80) = a3;
  *(a1 + 88) = a2;
  return a1;
}

void sub_1003B86E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 72));
  _Unwind_Resume(a1);
}

void sub_1003B8730(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1003B883C;
  v3[3] = &unk_101E48328;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1003BA968;
  block[3] = &unk_101E484B8;
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
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003B8844(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting iRat Client", buf, 2u);
  }

  mach_service = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", *(a1 + 24), 0);
  if (mach_service)
  {
    v4 = mach_service;
    object = mach_service;
LABEL_6:
    xpc_retain(v4);
    goto LABEL_7;
  }

  v4 = xpc_null_create();
  object = v4;
  if (v4)
  {
    goto LABEL_6;
  }

  v4 = 0;
  object = xpc_null_create();
LABEL_7:
  v5.var0.fObj = &object;
  ctu::XpcClient::setServer_sync(a1, v5);
  xpc_release(object);
  object = 0;
  if (xpc_get_type(v4) == &_xpc_type_connection)
  {
    sub_1003B9A28(a1);
  }

  xpc_release(v4);
}

void sub_1003B8940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void sub_1003B8974(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1003B8A38;
  v3[3] = &unk_101E48348;
  v3[4] = a1;
  v4 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1003BA9A4;
  block[3] = &unk_101E484E8;
  block[4] = a1 + 8;
  block[5] = &v4;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void sub_1003B8A40(ctu::XpcClient *a1)
{
  v2 = *(a1 + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Shutting down iRat Client", buf, 2u);
  }

  object = xpc_null_create();
  v3.var0.fObj = &object;
  ctu::XpcClient::setServer_sync(a1, v3);
  xpc_release(object);
}

void sub_1003B8AE0(uint64_t a1, uint64_t *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_1003B8C10;
  v6[3] = &unk_101E48368;
  v4 = *a2;
  v3 = a2[1];
  v6[4] = a1;
  v6[5] = v4;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1003BA968;
  block[3] = &unk_101E484B8;
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
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003B8C10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003B8CA0(v2, 0x190uLL, v4);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1003B8C88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B8CA0(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (xpc_get_type(*(a1 + 40)) != &_xpc_type_connection)
  {
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Invalid XPC connection. Failed to send msg %llu to server", &buf, 0xCu);
    }

    return;
  }

  v7 = xpc_array_create(0, 0);
  v8 = v7;
  if (v7)
  {
    object = v7;
  }

  else
  {
    v8 = xpc_null_create();
    object = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_11;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_array)
  {
    xpc_retain(v8);
    goto LABEL_12;
  }

  v9 = xpc_null_create();
LABEL_11:
  object = v9;
LABEL_12:
  xpc_release(v8);
  v10 = **a3;
  for (i = (*a3)[1]; v10 != i; v10 += 16)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = v12;
      v22 = v13;
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v21 = *v10;
      v22 = 0;
    }

    sub_1003B9394(&v21, *(a1 + 88), &object);
    if (v13)
    {
      sub_100004A34(v13);
      sub_100004A34(v13);
    }
  }

  v14 = object;
  if (object)
  {
    xpc_retain(object);
    sub_10107F3AC(&buf);
    *v26 = v14;
  }

  else
  {
    v14 = xpc_null_create();
    sub_10107F3AC(&buf);
    *v26 = v14;
    if (!v14)
    {
      v14 = 0;
      *v26 = xpc_null_create();
      goto LABEL_23;
    }
  }

  xpc_retain(v14);
LABEL_23:
  sub_1003BAD8C(&buf, "kWRMApplicationTypeList", v26, &message);
  xpc_release(*v26);
  *v26 = 0;
  xpc_release(buf);
  v15 = message;
  message = xpc_null_create();
  xpc_release(message);
  message = 0;
  xpc_release(v14);
  message = 0;
  sub_10107F3AC(&buf);
  sub_1003BA9B8(a2, &buf, "kMessageId", v26);
  xpc_release(buf);
  message = *v26;
  *v26 = xpc_null_create();
  xpc_release(*v26);
  v18 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v18 = xpc_null_create();
  }

  *&buf = &message;
  *(&buf + 1) = "kMessageArgs";
  sub_100DAE90C(&buf, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  xpc_connection_send_message(*(a1 + 40), message);
  v16 = *(a1 + 72);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(&buf, &message);
    if (v25 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf;
    }

    *v26 = 134218242;
    *&v26[4] = a2;
    v27 = 2080;
    v28 = p_buf;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Send msg %llu to server: %s", v26, 0x16u);
    if (v25 < 0)
    {
      operator delete(buf);
    }
  }

  xpc_release(message);
  xpc_release(v15);
  xpc_release(object);
}

void sub_1003B9014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, xpc_object_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1003B90C4(uint64_t result, uint64_t a2)
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

void sub_1003B90E0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1003B90F0(uint64_t a1, uint64_t *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_1003B9220;
  v6[3] = &unk_101E48398;
  v4 = *a2;
  v3 = a2[1];
  v6[4] = a1;
  v6[5] = v4;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1003BA968;
  block[3] = &unk_101E484B8;
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
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003B9220(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003B8CA0(v2, 0x191uLL, v4);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1003B9298(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B92B0(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_1003B9394(int **a1, uint64_t a2, xpc_object_t *a3)
{
  if ((**a1 & 0x80000000) == 0)
  {
    v42 = 0;
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = v5;
    if (v5)
    {
      v42 = v5;
    }

    else
    {
      v6 = xpc_null_create();
      v42 = v6;
      if (!v6)
      {
        v7 = xpc_null_create();
        v6 = 0;
        goto LABEL_9;
      }
    }

    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      xpc_retain(v6);
      goto LABEL_10;
    }

    v7 = xpc_null_create();
LABEL_9:
    v42 = v7;
LABEL_10:
    xpc_release(v6);
    v40 = xpc_uint64_create(**a1);
    if (!v40)
    {
      v40 = xpc_null_create();
    }

    v38 = &v42;
    v39 = "kWRMApplicationType";
    sub_10000F688(&v38, &v40, &v41);
    xpc_release(v41);
    v41 = 0;
    xpc_release(v40);
    v40 = 0;
    sub_100A29D24(&v42);
    v8 = *a1;
    v9 = (*a1)[1];
    if ((v9 & 0x80000000) == 0)
    {
      v36 = xpc_uint64_create(v9);
      if (!v36)
      {
        v36 = xpc_null_create();
      }

      v38 = &v42;
      v39 = "kWRMLinkType";
      sub_10000F688(&v38, &v36, &v37);
      xpc_release(v37);
      v37 = 0;
      xpc_release(v36);
      v36 = 0;
      v8 = *a1;
    }

    v10 = (v8 + 8);
    if (*(v8 + 31) < 0)
    {
      if (!*(v8 + 16))
      {
        goto LABEL_24;
      }

      v10 = *v10;
    }

    else if (!*(v8 + 31))
    {
      goto LABEL_24;
    }

    v34 = xpc_string_create(v10);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    v38 = &v42;
    v39 = "kWRMConnIdentifier";
    sub_10000F688(&v38, &v34, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v34);
    v34 = 0;
    v8 = *a1;
LABEL_24:
    v11 = *(v8 + 32);
    if ((v11 & 0x80000000) == 0)
    {
      v32 = xpc_uint64_create(v11);
      if (!v32)
      {
        v32 = xpc_null_create();
      }

      v38 = &v42;
      v39 = "kWRMDesiredLinkQoS";
      sub_10000F688(&v38, &v32, &v33);
      xpc_release(v33);
      v33 = 0;
      xpc_release(v32);
      v32 = 0;
      v8 = *a1;
    }

    v12 = *(v8 + 36);
    if ((v12 & 0x80000000) == 0)
    {
      v30 = xpc_uint64_create(v12);
      if (!v30)
      {
        v30 = xpc_null_create();
      }

      v38 = &v42;
      v39 = "kWRMDesiredBandwidth";
      sub_10000F688(&v38, &v30, &v31);
      xpc_release(v31);
      v31 = 0;
      xpc_release(v30);
      v30 = 0;
      v8 = *a1;
    }

    v13 = *(v8 + 40);
    if ((v13 & 0x80000000) == 0)
    {
      v28 = xpc_uint64_create(v13);
      if (!v28)
      {
        v28 = xpc_null_create();
      }

      v38 = &v42;
      v39 = "kWRMServiceStatus";
      sub_10000F688(&v38, &v28, &v29);
      xpc_release(v29);
      v29 = 0;
      xpc_release(v28);
      v28 = 0;
      v8 = *a1;
    }

    if ((*(v8 + 44) & 0x80000000) != 0 && (*(v8 + 48) & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    v27 = 0;
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (v14)
    {
      v27 = v14;
    }

    else
    {
      v15 = xpc_null_create();
      v27 = v15;
      if (!v15)
      {
        v16 = xpc_null_create();
        v15 = 0;
        goto LABEL_45;
      }
    }

    if (xpc_get_type(v15) == &_xpc_type_dictionary)
    {
      xpc_retain(v15);
LABEL_46:
      xpc_release(v15);
      v25 = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        v25 = xpc_null_create();
      }

      v38 = &v42;
      v39 = "kWRMPolicyInfo";
      sub_100DAE90C(&v38, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v17 = *a1;
      v18 = (*a1)[11];
      if ((v18 & 0x80000000) == 0)
      {
        if (v18 <= 2)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v23 = xpc_int64_create(v19);
        if (!v23)
        {
          v23 = xpc_null_create();
        }

        v38 = &v27;
        v39 = "kWRMPolicyInfoHoAlgorithmType";
        sub_10000F688(&v38, &v23, &v24);
        xpc_release(v24);
        v24 = 0;
        xpc_release(v23);
        v23 = 0;
        v17 = *a1;
      }

      v20 = *(v17 + 48);
      if ((v20 & 0x80000000) == 0)
      {
        v21 = xpc_uint64_create(v20);
        if (!v21)
        {
          v21 = xpc_null_create();
        }

        v38 = &v27;
        v39 = "kWRMPolicyInfoServiceType";
        sub_10000F688(&v38, &v21, &v22);
        xpc_release(v22);
        v22 = 0;
        xpc_release(v21);
        v21 = 0;
      }

      xpc_release(v27);
LABEL_61:
      xpc_array_append_value(*a3, v42);
      xpc_release(v42);
      return;
    }

    v16 = xpc_null_create();
LABEL_45:
    v27 = v16;
    goto LABEL_46;
  }
}

void sub_1003B98F8(uint64_t a1, xpc::object *a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, a2);
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received error from server: %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*a2 == &_xpc_error_connection_interrupted)
  {
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Connection interrupted", __p, 2u);
    }

    sub_1003B9A28(a1);
  }
}

void sub_1003B9A28(uint64_t a1)
{
  if (xpc_get_type(*(a1 + 40)) == &_xpc_type_connection)
  {
    message = 0;
    sub_10107F3AC(object);
    sub_1003BA9B8(1uLL, object, "kMessageId", buf);
    xpc_release(object[0]);
    message = *buf;
    *buf = xpc_null_create();
    xpc_release(*buf);
    v3 = sub_100A29D10(*(a1 + 88));
    sub_10107F3AC(object);
    sub_1003BA9B8(v3, object, "kWCMRegisterProcess_ProcessId", buf);
    xpc_release(object[0]);
    v4 = *buf;
    *buf = xpc_null_create();
    xpc_release(*buf);
    v9 = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      v9 = xpc_null_create();
    }

    object[0] = &message;
    object[1] = "kMessageArgs";
    sub_100DAE90C(object, &v9, &v10);
    xpc_release(v10);
    v10 = 0;
    xpc_release(v9);
    v9 = 0;
    xpc_connection_send_message(*(a1 + 40), message);
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(object, &message);
      if (v8 >= 0)
      {
        v6 = object;
      }

      else
      {
        v6 = object[0];
      }

      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I register with server: %s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(object[0]);
      }
    }

    (*(**(a1 + 80) + 16))(*(a1 + 80), *(a1 + 88));
    xpc_release(v4);
    xpc_release(message);
  }

  else
  {
    v2 = *(a1 + 72);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Invalid XPC connection. Failed to register with server", object, 2u);
    }
  }
}

void sub_1003B9C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(v14);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_1003B9E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B9E90(uint64_t a1, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1003B9FA0;
  v4[3] = &unk_101E483C8;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1003BA968;
  block[3] = &unk_101E484B8;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1003B9FB0(uint64_t a1, int64_t a2)
{
  if (xpc_get_type(*(a1 + 40)) == &_xpc_type_connection)
  {
    v17 = 0;
    sub_10107F3AC(buf);
    sub_1003BA9B8(0x1A0uLL, buf, "kMessageId", v18);
    xpc_release(*buf);
    v17 = *v18;
    *v18 = xpc_null_create();
    xpc_release(*v18);
    v16 = 0;
    sub_10107F3AC(buf);
    sub_1003BAEEC(a2, buf, "kTunnelDisconnected", v18);
    xpc_release(*buf);
    v16 = *v18;
    *v18 = xpc_null_create();
    xpc_release(*v18);
    v5 = subscriber::simSlotAsInstance();
    object = xpc_uint64_create(v5);
    if (!object)
    {
      object = xpc_null_create();
    }

    *buf = &v16;
    v10 = "kSlotID";
    sub_10000F688(buf, &object, &v15);
    xpc_release(v15);
    v15 = 0;
    xpc_release(object);
    object = 0;
    v12 = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      v12 = xpc_null_create();
    }

    *buf = &v17;
    v10 = "kMessageArgs";
    sub_100DAE90C(buf, &v12, &v13);
    xpc_release(v13);
    v13 = 0;
    xpc_release(v12);
    v12 = 0;
    xpc_connection_send_message(*(a1 + 40), v17);
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_100D96E64(&v17, &__p);
      sub_1003BA6A0(&__p, buf);
      if (v11 >= 0)
      {
        v7 = buf;
      }

      else
      {
        v7 = *buf;
      }

      *v18 = 136315138;
      *&v18[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I send NWD notification to iRat: <%s>", v18, 0xCu);
      if (v11 < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    xpc_release(v16);
    xpc_release(v17);
  }

  else
  {
    v4 = *(a1 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Invalid XPC connection. Failed to send NWD notification", buf, 2u);
    }
  }
}

void sub_1003BA23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1003BA2C8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1003BA3D4;
  v3[3] = &unk_101E483E8;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1003BA968;
  block[3] = &unk_101E484B8;
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
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003BA3DC(uint64_t a1)
{
  if (xpc_get_type(*(a1 + 40)) == &_xpc_type_connection)
  {
    message = 0;
    sub_10107F3AC(buf);
    sub_1003BA9B8(0x1A4uLL, buf, "kMessageId", v14);
    xpc_release(*buf);
    message = *v14;
    *v14 = xpc_null_create();
    xpc_release(*v14);
    v3 = subscriber::simSlotAsInstance();
    sub_10107F3AC(buf);
    sub_1003BA9B8(v3, buf, "kSlotID", v14);
    xpc_release(*buf);
    v4 = *v14;
    *v14 = xpc_null_create();
    xpc_release(*v14);
    v11 = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      v11 = xpc_null_create();
    }

    *buf = &message;
    v9 = "kMessageArgs";
    sub_100DAE90C(buf, &v11, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v11);
    v11 = 0;
    xpc_connection_send_message(*(a1 + 40), message);
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_100D96E64(&message, &__p);
      sub_1003BA6A0(&__p, buf);
      if (v10 >= 0)
      {
        v6 = buf;
      }

      else
      {
        v6 = *buf;
      }

      *v14 = 136315138;
      *&v14[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I send TUNSTL notification to iRat: <%s>", v14, 0xCu);
      if (v10 < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    xpc_release(v4);
    xpc_release(message);
  }

  else
  {
    v2 = *(a1 + 72);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Invalid XPC connection. Failed to send TUNSTL notification", buf, 2u);
    }
  }
}

void sub_1003BA618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t object)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
  xpc_release(object);
  _Unwind_Resume(a1);
}

__n128 sub_1003BA6A0@<Q0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v9 = 2573;
  do
  {
    v5 = *(&v9 + v4);
    v6 = std::string::find(this, v5, 0);
    if (v6 != -1)
    {
      for (i = v6; i != -1; i = std::string::find(this, v5, 0))
      {
        std::string::replace(this, i, 1uLL, " ", 1uLL);
      }
    }

    ++v4;
  }

  while (v4 != 2);
  result = *&this->__r_.__value_.__l.__data_;
  *a2 = *&this->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

ctu::XpcClient *sub_1003BA768(ctu::XpcClient *a1)
{
  ctu::XpcClient::~XpcClient(a1);
  ctu::OsLogLogger::~OsLogLogger((v2 + 72));
  return a1;
}

void sub_1003BA798(ctu::XpcClient *a1)
{
  ctu::XpcClient::~XpcClient(a1);
  ctu::OsLogLogger::~OsLogLogger((v1 + 72));

  operator delete();
}

void sub_1003BA868(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1003BA93C);
  __cxa_rethrow();
}

void sub_1003BA8A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003BA8FC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003BA93C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1003BA978(uint64_t result, uint64_t a2)
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

void sub_1003BA994(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1003BA9B8(uint64_t value@<X2>, void **a2@<X0>, uint64_t a3@<X1>, void **a4@<X8>)
{
  v7 = xpc_uint64_create(value);
  v8 = v7;
  if (v7)
  {
    v11 = v7;
LABEL_4:
    xpc_retain(v8);
    goto LABEL_5;
  }

  v8 = xpc_null_create();
  v11 = v8;
  if (v8)
  {
    goto LABEL_4;
  }

  v8 = 0;
  v11 = xpc_null_create();
LABEL_5:
  v10[0] = a2;
  v10[1] = a3;
  sub_10000F688(v10, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = *a2;
  *a4 = *a2;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v8);
}

void sub_1003BAA9C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (v3)
  {
    xpc_retain(*(v2 + 40));
  }

  else
  {
    v3 = xpc_null_create();
  }

  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    v12 = 0;
    v6 = subscriber::simSlotAsInstance();
    sub_10107F3AC(&object);
    sub_1003BA9B8(v6, &object, "kPlanSlotID", &v11);
    xpc_release(object);
    v12 = v11;
    v11 = xpc_null_create();
    xpc_release(v11);
    v10 = xpc_uint64_create(*(v1 + 8));
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    object = &v12;
    v14 = "kisExpensive";
    sub_10000F688(&object, &v10, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(v10);
    message = 0;
    v10 = 0;
    sub_10107F3AC(&object);
    sub_1003BA9B8(0x1A3uLL, &object, "kMessageId", &v8);
    xpc_release(object);
    message = v8;
    v8 = xpc_null_create();
    xpc_release(v8);
    v7 = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      v7 = xpc_null_create();
    }

    object = &message;
    v14 = "kMessageArgs";
    sub_100DAE90C(&object, &v7, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(v7);
    v7 = 0;
    xpc_connection_send_message(v3, message);
    xpc_release(message);
    xpc_release(v12);
  }

  else
  {
    v4 = *(v2 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = CSIBOOLAsString(*(v1 + 8));
      sub_10176EB98(v5, &object, v4);
    }
  }

  xpc_release(v3);
  operator delete();
}

void sub_1003BACD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, xpc_object_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1003BAD8C(void **a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X2>, void **a4@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
    v10 = v7;
LABEL_4:
    xpc_retain(v7);
    goto LABEL_5;
  }

  v7 = xpc_null_create();
  v10 = v7;
  if (v7)
  {
    goto LABEL_4;
  }

  v7 = 0;
  v10 = xpc_null_create();
LABEL_5:
  v9[0] = a1;
  v9[1] = a2;
  sub_10000F688(v9, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = *a1;
  *a4 = *a1;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v7);
}

void sub_1003BAE8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E48518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003BAEEC(int64_t value@<X2>, void **a2@<X0>, uint64_t a3@<X1>, void **a4@<X8>)
{
  v7 = xpc_int64_create(value);
  v8 = v7;
  if (v7)
  {
    v11 = v7;
LABEL_4:
    xpc_retain(v8);
    goto LABEL_5;
  }

  v8 = xpc_null_create();
  v11 = v8;
  if (v8)
  {
    goto LABEL_4;
  }

  v8 = 0;
  v11 = xpc_null_create();
LABEL_5:
  v10[0] = a2;
  v10[1] = a3;
  sub_10000F688(v10, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = *a2;
  *a4 = *a2;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v8);
}

uint64_t sub_1003BAFD0(const char *a1)
{
  memset(v18, 0, sizeof(v18));
  v11 = 1;
  v1 = if_nametoindex(a1);
  v2 = socket(17, 3, 17);
  v3 = v2;
  if (v2 < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176EEBC();
    }

    goto LABEL_21;
  }

  if (ioctl(v2, 0x8004667EuLL, &v11) < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176EE38();
    }

    goto LABEL_26;
  }

  memset(&v18[1] + 6, 0, 176);
  *(v18 + 6) = 0u;
  memset(&v18[12] + 6, 0, 26);
  WORD1(v18[0]) = 4357;
  DWORD1(v18[1]) = ++dword_101FB23F0;
  *(&v18[0] + 1) = 0x101000000;
  WORD2(v18[0]) = v1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10176EBE0();
  }

  WORD6(v18[5]) = 7808;
  memset(&v18[5] + 14, 0, 128);
  LOWORD(v18[0]) = 220;
  if (send(v3, v18, 0xDCuLL, 0) < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176EDB4();
    }

LABEL_26:
    v7 = 0;
LABEL_27:
    close(v3);
    return v7;
  }

  while (1)
  {
    v4 = read(v3, v18, 0xE0uLL);
    if (v4 < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176EC6C(&v9, v10);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v13 = v4;
      v14 = 1024;
      v15 = DWORD1(v18[1]);
      v16 = 1024;
      v17 = v18[1];
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "getDefaultRouteMtuForIPv6V1: read_len=%u, rtm_seq=%u, rtm_pid=%u", buf, 0x14u);
    }

    if (v4 < 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10176ECB0();
      }

      goto LABEL_21;
    }

    if (DWORD1(v18[1]) == dword_101FB23F0)
    {
      v5 = v18[1];
      if (v5 == getpid())
      {
        break;
      }
    }
  }

  v7 = DWORD2(v18[2]);
  v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v8)
    {
      sub_10176ECF4();
    }

    goto LABEL_22;
  }

  if (v8)
  {
    sub_10176ED70();
  }

LABEL_21:
  v7 = 0;
LABEL_22:
  if (v3 != -1)
  {
    goto LABEL_27;
  }

  return v7;
}

uint64_t sub_1003BB32C()
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  v0 = socket(30, 2, 0);
  if (v0 < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176F048();
    }

    if (v0 == -1)
    {
      return 0;
    }
  }

  else if (__strlcpy_chk() < 0x10)
  {
    if (ioctl(v0, 0xC030694CuLL, &v2) < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176EF40();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10176EFC4();
  }

  close(v0);
  return v3;
}

void *sub_1003BB458(void *a1, NSObject **a2, uint64_t *a3)
{
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, "gf.loc.ctrl");
  sub_1003BB584(a1 + 2, a2, &v9);
  ctu::OsLogContext::~OsLogContext(&v9);
  *a1 = off_101E48588;
  a1[1] = off_101E48648;
  v7 = *a3;
  v6 = a3[1];
  a1[7] = 0;
  a1[8] = v7;
  a1[9] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1003BB558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  CTLocationControllerDelegateInterface::~CTLocationControllerDelegateInterface(v10);
  GeofenceControllerInterface::~GeofenceControllerInterface(v9);
  _Unwind_Resume(a1);
}

void *sub_1003BB584(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1003BB5EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_1003BB614(uint64_t a1)
{
  *a1 = off_101E48588;
  v2 = (a1 + 8);
  *(a1 + 8) = off_101E48648;
  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  CTLocationControllerDelegateInterface::~CTLocationControllerDelegateInterface(v2);

  GeofenceControllerInterface::~GeofenceControllerInterface(a1);
}

void sub_1003BB6BC(uint64_t a1)
{
  sub_1003BB614(a1);

  operator delete();
}

void sub_1003BB6F4(uint64_t a1)
{
  sub_1003BB614(a1 - 8);

  operator delete();
}

id sub_1003BB730(uint64_t a1)
{
  v3 = *(a1 + 56);
  if (v3)
  {

    return [v3 isLocationServiceEnabled_sync];
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_10176F0CC();
    }

    return 0;
  }
}

id sub_1003BB78C(uint64_t a1)
{
  v3 = *(a1 + 56);
  if (v3)
  {

    return [v3 isCircularGeofenceSupported_sync];
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_10176F0CC();
    }

    return 0;
  }
}

id sub_1003BB7E8(uint64_t a1)
{
  v3 = *(a1 + 56);
  if (v3)
  {

    return [v3 isPolygonalGeofenceSupported_sync];
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_10176F0CC();
    }

    return 0;
  }
}

void sub_1003BB844(uint64_t a1, double *a2, uint64_t *a3)
{
  if (*(a1 + 56))
  {
    v6 = [NSString alloc];
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    v8 = [v6 initWithUTF8String:v7];
    [*(a1 + 56) setupCircularGeoFence:*a2 withName:{a2[1], a2[2]}];
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_10176F0CC();
  }
}

void sub_1003BB918(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 56))
  {
    v8 = [NSString alloc];
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    v10 = [v8 initWithUTF8String:v9];
    v11 = *(a1 + 56);
    memset(__p, 0, 24);
    sub_1003BCA04(__p, *a2, a2[1], (a2[1] - *a2) >> 4);
    __p[3] = [v11 setupPolygonalGeoFence:__p withName:v10];
    sub_1003BCAFC();
  }

  if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_10176F0CC();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_1003BBA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003BBA44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v4)
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Attempting to stop geofencing for[%s]", &v10, 0xCu);
      v4 = *(a1 + 56);
    }

    v9 = sub_100115D58(*a2);
    [v4 stopGeofence:v9];
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_10176F0CC();
  }
}

void sub_1003BBB64(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v2)
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Attempting to reset monitored regions", v4, 2u);
      v2 = *(a1 + 56);
    }

    [v2 resetMonitoredRegions];
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_10176F0CC();
  }
}

void sub_1003BBC00(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, unsigned int *a5)
{
  v10 = *(a1 + 48);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Starting CTLocationController..", v16, 2u);
  }

  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v11 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", a3, +[NSString defaultCStringEncoding]);
  v12 = [CTLocationController alloc];
  v13 = *(a1 + 56);
  *(a1 + 56) = v12;

  v14 = [*(a1 + 56) initWithBundleIdentifier:v11 withDistanceFilter:*a4 withDesiredAccuracy:*a5 withQueue:a2 withDelegate:a1 + 8];
  v15 = *(a1 + 56);
  *(a1 + 56) = v14;
}

void sub_1003BBD14(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Ending..", v2, 2u);
  }
}

id sub_1003BBD74(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Requesting for location", v4, 2u);
  }

  return [*(a1 + 56) requestLocation];
}

void sub_1003BBDE0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BBF34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BC088(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BC1DC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BC330(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v6 = *a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 16));
  operator new();
}

void sub_1003BC494(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 16));
  operator new();
}

void sub_1003BC578(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 16));
  operator new();
}

void sub_1003BC664(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BC7B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BC90C(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 16));
  operator new();
}

uint64_t sub_1003BCA04(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003BCA78(result, a4);
  }

  return result;
}

void sub_1003BCA5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003BCA78(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1003BCAB4(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1003BCAB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100013D10();
}

void *sub_1003BCB68(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E48770;
  sub_100115CFC((a1 + 3), *a2);
  return a1;
}

void sub_1003BCBE8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E48770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1003BCC48(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10176F100(v1, v3);
  }

  v4 = *(v2 + 72);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + 64);
      if (v7)
      {
        (*(*v7 + 16))(v7, v1 + 8);
      }

      sub_100004A34(v6);
    }
  }

  sub_1000CFEE0(&v10);
  return sub_1000049E0(&v9);
}

void sub_1003BCD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BCD24(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Geofence setup success%{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 24))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1003BCE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BCE60(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Monitoring started for %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 24))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1003BCF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BCF9C(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Monitoring failed for %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 32))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1003BD0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BD0D8(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v4 = *v4;
    }

    v5 = *(v1 + 32);
    *buf = 136446466;
    v14 = v4;
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Geofence didDetermineState for %{public}s as state %d", buf, 0x12u);
  }

  v6 = *(v2 + 72);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(v2 + 64);
      if (v9)
      {
        (*(*v9 + 40))(v9, v1 + 8, v1 + 32);
      }

      sub_100004A34(v8);
    }
  }

  sub_1003BD228(&v12);
  return sub_1000049E0(&v11);
}

void sub_1003BD204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1003BD228(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BD228(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_1003BD280(void **a1)
{
  v1 = **a1;
  v2 = v1[6];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Monitoring failed with error...", buf, 2u);
  }

  v3 = v1[9];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = v1[8];
      if (v6)
      {
        (*(*v6 + 48))(v6);
      }

      sub_100004A34(v5);
    }
  }

  operator delete();
}

void sub_1003BD388(void **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = v2[6];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 8);
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Location services status changed to %d", buf, 8u);
  }

  v5 = v2[9];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = v2[8];
      if (v8)
      {
        (*(*v8 + 56))(v8, *(v1 + 8));
      }

      sub_100004A34(v7);
    }
  }

  operator delete();
}

uint64_t *sub_1003BD4D0(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Geofence Entry %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (**v8)(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1003BD5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BD60C(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Geofence Exit %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 8))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1003BD724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1003BD748(double **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 64);
      if (v6)
      {
        (*(*v6 + 64))(v6, v1[1], v1[2]);
      }

      sub_100004A34(v5);
    }
  }

  operator delete();
}

void sub_1003BD820(Registry **a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_8:
    std::mutex::unlock(v4);
    v10 = 0;
    v13 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v13 = 0;
LABEL_9:
  if ((capabilities::ct::supportsSequoia(v12) & 1) != 0 || GestaltUtilityInterface::isIPhone(v11))
  {
    *a2 = 0;
    a2[1] = 0;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1003BDA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    sub_101760EE4(a14);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  v18 = *(v15 + 8);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003BDADC(void *a1, uint64_t *a2, void *a3)
{
  *a1 = off_101E48838;
  v6 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "recon.mgr");
  sub_1003BDBFC(v6, "ReconnectionManager", QOS_CLASS_UTILITY, &v11);
  ctu::OsLogContext::~OsLogContext(&v11);
  *a1 = off_101E487C0;
  v8 = *a2;
  v7 = a2[1];
  a1[6] = off_101E48810;
  a1[7] = v8;
  a1[8] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a3[1];
  a1[9] = *a3;
  a1[10] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  return a1;
}

void *sub_1003BDBFC(void *a1, const char *a2, dispatch_qos_class_t qos_class, const OsLogContext *a4)
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

void sub_1003BDC9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void *sub_1003BDCC0(void *a1)
{
  *a1 = off_101E487C0;
  v2 = (a1 + 6);
  a1[6] = off_101E48810;
  v3 = a1[13];
  a1[13] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    sub_100004A34(v6);
  }

  CoreUtilsMessageSessionDelegateInterface::~CoreUtilsMessageSessionDelegateInterface(v2);
  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_1003BDD98(void *a1)
{
  sub_1003BDCC0(a1);

  operator delete();
}

void sub_1003BDDD0(uint64_t a1)
{
  sub_1003BDCC0((a1 - 48));

  operator delete();
}

void sub_1003BDE0C(uint64_t a1)
{
  v13 = 0;
  *__p = 0u;
  v12 = 0u;
  *v10 = 0u;
  sub_1003BE434(a1, v10);
  v2 = HIBYTE(__p[0]);
  if (SHIBYTE(__p[0]) < 0)
  {
    v2 = v10[1];
  }

  if (v2)
  {
    v3 = HIBYTE(v12);
    if (v12 < 0)
    {
      v3 = v12;
    }

    if (v3)
    {
      v4 = v13;
      v5 = [[NSDate alloc] initWithTimeInterval:v4 sinceDate:86400.0];
      v6 = +[NSDate date];
      v7 = [v5 compare:v6] == -1;

      if (v7)
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Reconnection credentials expired", v9, 2u);
        }

        v14[0] = off_101E48C58;
        v14[3] = v14;
        sub_1003BE924(a1, v14);
        sub_10028ED7C(v14);
      }

      else
      {
        [v5 timeIntervalSinceNow];
        sub_1004627DC(a1);
      }
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1003BDFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_10028ED7C(va1);

  sub_1003BEDBC(va);
  _Unwind_Resume(a1);
}

void sub_1003BE020(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  *__src = 0u;
  sub_1003BE434(a1, __src);
  v6 = HIBYTE(v24[0]);
  if (SHIBYTE(v24[0]) < 0)
  {
    v6 = __src[1];
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = HIBYTE(v24[3]);
  v8 = HIBYTE(v24[3]);
  if (SHIBYTE(v24[3]) < 0)
  {
    v7 = v24[2];
  }

  if (!v7)
  {
LABEL_9:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    goto LABEL_41;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v22 = 0;
  if (SHIBYTE(v24[0]) < 0)
  {
    sub_100005F2C(__dst, __src[0], __src[1]);
    v8 = HIBYTE(v24[3]);
  }

  else
  {
    *__dst = *__src;
    v22 = v24[0];
  }

  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  if (v8 < 0)
  {
    sub_100005F2C(v19, v24[1], v24[2]);
  }

  else
  {
    *v19 = *&v24[1];
    v20 = v24[3];
  }

  v9 = v25;
  v10 = [[NSDate alloc] initWithTimeInterval:v9 sinceDate:86400.0];
  v11 = +[NSDate date];
  v12 = [v10 compare:v11] == -1;

  if (v12)
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Reconnection credentials expired", buf, 2u);
    }

    v26[0] = off_101E48A58;
    v26[3] = v26;
    sub_1003BE924(a1, v26);
    sub_10028ED7C(v26);
LABEL_29:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    goto LABEL_37;
  }

  if (*a2)
  {
    sub_100010024(&v17, a2);
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v16 = v22;
    }

    v14 = sub_1003BEAC0(a1, &v17, __p);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10001021C(&v17);
    if (v14)
    {
      if (SHIBYTE(v20) < 0)
      {
        sub_100005F2C(a3, v19[0], v19[1]);
      }

      else
      {
        *a3 = *v19;
        *(a3 + 16) = v20;
      }

      if (SHIBYTE(v22) < 0)
      {
        sub_100005F2C((a3 + 24), __dst[0], __dst[1]);
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    goto LABEL_29;
  }

  if (SHIBYTE(v20) < 0)
  {
    sub_100005F2C(a3, v19[0], v19[1]);
  }

  else
  {
    *a3 = *v19;
    *(a3 + 16) = v20;
  }

  if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
LABEL_35:
    *(a3 + 24) = *__dst;
    *(a3 + 40) = v22;
    goto LABEL_37;
  }

  sub_100005F2C((a3 + 24), __dst[0], __dst[1]);
LABEL_37:

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_41:

  if (SHIBYTE(v24[3]) < 0)
  {
    operator delete(v24[1]);
  }

  if (SHIBYTE(v24[0]) < 0)
  {
    operator delete(__src[0]);
  }
}

void sub_1003BE378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_1003BEDBC(&a32);
  _Unwind_Resume(a1);
}

void sub_1003BE434(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    (*(*v4 + 48))(v4, @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v28 = 0;
    (*(**(a1 + 72) + 40))(buf);
    sub_100010180(&v28, buf);
    sub_10000A1EC(buf);
    if (v28)
    {
      v5 = v28;
      v6 = [NSString stringWithUTF8String:"kDeviceIdentifier"];
      v7 = [v5 objectForKey:v6];

      v8 = [NSString stringWithUTF8String:"kPreSharedKey"];
      v9 = [v5 objectForKey:v8];

      v10 = [NSString stringWithUTF8String:"kTimestamp"];
      v11 = [v5 objectForKey:v10];

      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & (v9 != 0)) == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & (v11 != 0)) == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v26 = 0uLL;
        v27 = 0;
        v12 = v7;
        sub_10000501C(&v26, [v7 UTF8String]);
        __p = 0uLL;
        v25 = 0;
        v13 = v9;
        sub_10000501C(&__p, [v9 UTF8String]);
        v14 = v11;
        v23 = v14;
        v15 = HIBYTE(v27);
        v16 = SHIBYTE(v27);
        if (v27 < 0)
        {
          v15 = *(&v26 + 1);
        }

        if (!v15)
        {
          goto LABEL_28;
        }

        v17 = HIBYTE(v25);
        v18 = SHIBYTE(v25);
        if (v25 < 0)
        {
          v17 = *(&__p + 1);
        }

        if (v17)
        {
          v19 = *(a1 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v26;
            if (v16 >= 0)
            {
              v20 = &v26;
            }

            p_p = __p;
            if (v18 >= 0)
            {
              p_p = &__p;
            }

            *buf = 136315650;
            v30 = v20;
            v31 = 2080;
            v32 = p_p;
            v33 = 2112;
            v34 = v14;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Cached reconnection credentials: deviceIdentifier: %s psk:%s timestamp:%@", buf, 0x20u);
          }

          sub_1003C0258(a2, &v26, &__p, &v23);
          v14 = v23;
        }

        else
        {
LABEL_28:
          v22 = *(a1 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Reconnection credentials not present", buf, 2u);
          }

          *(a2 + 48) = 0;
          *(a2 + 16) = 0u;
          *(a2 + 32) = 0u;
          *a2 = 0u;
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }
      }

      else
      {
        *(a2 + 48) = 0;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *a2 = 0u;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
    }

    sub_10001021C(&v28);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F188();
    }

    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

void sub_1003BE870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_10001021C(&a22);
  _Unwind_Resume(a1);
}

void sub_1003BE924(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Clearing reconnection credentials", v8, 2u);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    (*(*v5 + 16))(v5, @"AutoReconnectionCredentials", 0, @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(**(a1 + 72) + 48))(*(a1 + 72), @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v6 = *(a1 + 104);
    if (v6)
    {
      (*(*v6 + 16))(v6);
      v7 = *(a1 + 104);
      *(a1 + 104) = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    sub_100186828(a2, 0);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176F1BC();
  }
}

id sub_1003BEAC0(uint64_t a1, id *a2, uint64_t *a3)
{
  v5 = *a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v6 = qword_101FBA300;
  v22 = qword_101FBA300;
  if (!qword_101FBA300)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1003BFFB4;
    v24 = &unk_101E2DBB0;
    v25 = &v19;
    sub_1003BFFB4(buf);
    v6 = v20[3];
  }

  v7 = v6;
  _Block_object_dispose(&v19, 8);
  v18 = 0;
  v8 = [[v6 alloc] initWithDictionary:v5 error:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = [v8 nearbyActionExtraData];
    if (v10)
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v11 = [NSString stringWithUTF8String:a3];
      v12 = [[NSData alloc] initWithBase64EncodedString:v11 options:1];
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v10;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Incoming identifier: %@, cached identifier: %@", buf, 0x16u);
      }

      v14 = [v10 isEqualToData:v12];
      if ((v14 & 1) == 0)
      {
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Device identifier mismatched", buf, 2u);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176F1F0();
      }

      v14 = 0;
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10176F224(v9, v16);
    }

    v14 = 0;
  }

  return v14;
}

void sub_1003BED58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1003BEDBC(uint64_t a1)
{
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

void sub_1003BEE08(uint64_t a1, const void **a2, uint64_t a3)
{
  *__p = 0u;
  v9 = 0u;
  *v7 = 0u;
  sub_100010024(&v6, a2);
  sub_1003BE020(a1, &v6, v7);
  sub_10001021C(&v6);
  v5 = HIBYTE(__p[0]);
  if (SHIBYTE(__p[0]) < 0)
  {
    v5 = v7[1];
  }

  sub_10025B4DC(a3, v5 != 0, 0);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_1003BEEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000D6F38(va);
  _Unwind_Resume(a1);
}

void sub_1003BEECC(void *a1, uint64_t a2, uint64_t a3)
{
  memset(__p, 0, 32);
  *v16 = 0u;
  sub_1003BF220(a1, v16);
  v6 = HIBYTE(__p[3]);
  if (SHIBYTE(__p[3]) < 0)
  {
    v6 = __p[2];
  }

  if (v6)
  {
    v7 = HIBYTE(__p[0]);
    if (SHIBYTE(__p[0]) < 0)
    {
      v7 = v16[1];
    }

    if (v7)
    {
      v8 = *a2;
      v9 = *(a2 + 8);
      v15[0] = v8;
      v15[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = sub_1003BF3E4(a1, v15);
      if (v9)
      {
        sub_100004A34(v9);
      }

      if (v10)
      {
        if (SHIBYTE(__p[0]) < 0)
        {
          sub_100005F2C(v11, v16[0], v16[1]);
        }

        else
        {
          *v11 = *v16;
          v12 = __p[0];
        }

        if (SHIBYTE(__p[3]) < 0)
        {
          sub_100005F2C(v13, __p[1], __p[2]);
        }

        else
        {
          *v13 = *&__p[1];
          v14 = __p[3];
        }

        __p[4] = a1;
        if (SHIBYTE(__p[0]) < 0)
        {
          sub_100005F2C(v18, v16[0], v16[1]);
        }

        else
        {
          *v18 = *v16;
          v18[2] = __p[0];
        }

        if (SHIBYTE(__p[3]) < 0)
        {
          sub_100005F2C(v19, __p[1], __p[2]);
        }

        else
        {
          *v19 = *&__p[1];
          v19[2] = __p[3];
        }

        sub_1003C06F0(v20, a3);
        v20[7] = 0;
        operator new();
      }
    }
  }

  sub_100186828(a3, 71);
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_1003BF190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_1000D6F38(&a9);
  sub_1000D6F38(&a20);
  _Unwind_Resume(a1);
}

void sub_1003BF220(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [NSMutableData dataWithLength:3];
  if (SecRandomCopyBytes(kSecRandomDefault, 3uLL, [v4 mutableBytes]))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F29C();
    }

    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    v5 = [v4 base64EncodedStringWithOptions:1];
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    sub_10000501C(__p, [v5 UTF8String]);
    v6 = +[NSUUID UUID];
    v7 = [v6 UUIDString];

    sub_10000501C(a2, [v7 UTF8String]);
    if (SHIBYTE(v9) < 0)
    {
      sub_100005F2C((a2 + 24), __p[0], __p[1]);
    }

    else
    {
      *(a2 + 24) = *__p;
      *(a2 + 40) = v9;
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1003BF378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1003BF3E4(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v12 = *a2;
    v13 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100004AA0(&v15, (a1 + 8));
    v5 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v5);
      v6 = std::__shared_weak_count::lock(v5);
      v7 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v11 = v6;
        std::__shared_weak_count::__release_weak(v5);
        sub_100004A34(v7);
      }

      else
      {
        v11 = 0;
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v11 = 0;
    }

    sub_10031E46C(&v12, &v14);
    v8 = v14;
    v14 = 0uLL;
    v9 = *(a1 + 96);
    *(a1 + 88) = v8;
    if (v9)
    {
      sub_100004A34(v9);
      if (*(&v14 + 1))
      {
        sub_100004A34(*(&v14 + 1));
      }
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v13)
    {
      sub_100004A34(v13);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176F2D0();
  }

  return v3 != 0;
}

void sub_1003BF538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003BF564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 88))
  {
    if ((*(a2 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(a2 + 32))
      {
        goto LABEL_16;
      }
    }

    else if (!*(a2 + 47))
    {
LABEL_16:
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176F304();
      }

      return sub_10000FFD0(a3, 0);
    }

    if ((*(a2 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(a2 + 8))
      {
        goto LABEL_16;
      }
    }

    else if (!*(a2 + 23))
    {
      goto LABEL_16;
    }

    *v12 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v8 = *v12;
      *v12 = Mutable;
      __p[0] = v8;
      sub_1000296E0(__p);
    }

    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      *__p = *(a2 + 24);
      v14 = *(a2 + 40);
    }

    sub_1003C1788(*v12, @"kDeviceIdentifier");
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v14 = *(a2 + 16);
    }

    sub_1003C1788(*v12, @"kPreSharedKey");
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = sub_100649C38(15);
    sub_10000501C(__p, v9);
    sub_100010180(&v11, v12);
    v17 = a1;
    sub_1000224C8(&v18, a3);
    sub_100004AA0(&v15, (a1 + 8));
    v10 = v16;
    v19[0] = v15;
    v19[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
    }

    v20 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176F338();
  }

  return sub_10000FFD0(a3, 0);
}

void sub_1003BF878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_100287028(v20 - 88);
  sub_1003BFE98(&a20);
  sub_10001021C(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BF8F8(uint64_t a1)
{
  sub_10028ED7C(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

BOOL sub_1003BF944(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v9[0] = *a2;
  v9[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1003BF3E4(a1, v9);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (v4)
  {
    v5 = sub_100649C38(15);
    sub_10000501C(v13, v5);
    memset(v8, 0, sizeof(v8));
    sub_10016FB64(v8, v13, &v14, 1uLL);
    sub_100004AA0(&v10, (a1 + 8));
    v6 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
    }

    v12 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176F36C();
  }

  return v4;
}

BOOL sub_1003BFB74(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = +[NSDate date];
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a2 + 3;
      if (*(a2 + 47) < 0)
      {
        v7 = *v7;
      }

      v8 = a2;
      if (*(a2 + 23) < 0)
      {
        v8 = *a2;
      }

      v17 = 136315650;
      v18 = v7;
      v19 = 2080;
      v20 = v8;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Caching reconnection credentials: deviceIdentifier: %s psk:%s timestamp:%@", &v17, 0x20u);
    }

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = a2 + 3;
    if (*(a2 + 47) < 0)
    {
      v10 = *v10;
    }

    v11 = [NSString stringWithUTF8String:v10];
    v12 = [NSString stringWithUTF8String:"kDeviceIdentifier"];
    [v9 setObject:v11 forKey:v12];

    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v13 = [NSString stringWithUTF8String:a2];
    v14 = [NSString stringWithUTF8String:"kPreSharedKey"];
    [v9 setObject:v13 forKey:v14];

    v15 = [NSString stringWithUTF8String:"kTimestamp"];
    [v9 setObject:v5 forKey:v15];

    (*(**(a1 + 72) + 16))(*(a1 + 72), @"AutoReconnectionCredentials", v9, @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(**(a1 + 72) + 48))(*(a1 + 72), @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1004627DC(a1);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176F3A0();
  }

  return v3 != 0;
}

uint64_t sub_1003BFE98(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10000FF50(a1 + 8);
  return a1;
}

void sub_1003BFED0(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

Class sub_1003BFFB4(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_101FBA308)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_1003C01E4;
    v7[4] = &unk_101E26008;
    v7[5] = v7;
    v8 = off_101E48938;
    v9 = 0;
    qword_101FBA308 = _sl_dlopen();
  }

  if (!qword_101FBA308)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CoreBluetoothLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"ReconnectionManager.m" lineNumber:22 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CBDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getCBDeviceClass()_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"ReconnectionManager.m" lineNumber:23 description:{@"Unable to find class %s", "CBDevice"}];

LABEL_10:
    __break(1u);
  }

  qword_101FBA300 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1003C01E4()
{
  result = _sl_dlopen();
  qword_101FBA308 = result;
  return result;
}

char *sub_1003C0258(char *__dst, __int128 *a2, __int128 *a3, id *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v8;
  }

  *(__dst + 6) = *a4;
  return __dst;
}

void sub_1003C02EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C0388(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176F3D4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C03A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003C03DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1003C040C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1003C044C(ServiceManager::Service *this)
{
  *this = off_101E489D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1003C04A8(ServiceManager::Service *this)
{
  *this = off_101E489D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1003C0528@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1003C0568(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  sub_1003BDE0C(v2);
  if (v3)
  {
    dispatch_group_leave(v3);

    dispatch_release(v3);
  }
}

void sub_1003C05D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C06A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003C06F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003C0770(uint64_t a1)
{
  *a1 = off_101E48AD8;
  sub_10028ED7C(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1003C07D4(uint64_t a1)
{
  *a1 = off_101E48AD8;
  sub_10028ED7C(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void sub_1003C0914(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C0950(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E48AD8;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  if (*(a1 + 63) < 0)
  {
    sub_100005F2C((a2 + 40), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v6 = *(a1 + 40);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 40) = v6;
  }

  return sub_100293290(a2 + 64, a1 + 64);
}

void sub_1003C09F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C0A1C(uint64_t a1)
{
  sub_10028ED7C(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void sub_1003C0A7C(uint64_t a1)
{
  sub_10028ED7C(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

uint64_t sub_1003C0AD8(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v4 = a1 + 64;
    goto LABEL_15;
  }

  v3 = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C(v8, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v8 = *(a1 + 16);
    v9 = *(a1 + 32);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v11 = *(a1 + 56);
  }

  v5 = sub_1003BFB74(v3, v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
    v4 = a1 + 64;
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_15:
    v6 = 71;
    return sub_100186828(v4, v6);
  }

  v4 = a1 + 64;
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_13:
  v6 = 0;
  return sub_100186828(v4, v6);
}

void sub_1003C0BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C0BE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003C0C30(void *a1)
{
  *a1 = off_101E48B58;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003C0C7C(void *a1)
{
  *a1 = off_101E48B58;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003C0D5C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E48B58;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003C0D9C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003C0DAC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003C0DEC(void *a1, uint64_t a2, const void **a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v13, *a2, *(a2 + 8));
  }

  else
  {
    *v13 = *a2;
    v14 = *(a2 + 16);
  }

  sub_1000636AC(v17, a4);
  v7 = a1[1];
  cf = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v9 = cf;
    cf = Mutable;
    v18 = v9;
    sub_1000296E0(&v18);
  }

  v10 = a1[3];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11 && a1[2])
    {
      v18 = v7;
      if (SHIBYTE(v14) < 0)
      {
        sub_100005F2C(__p, v13[0], v13[1]);
      }

      else
      {
        *__p = *v13;
        __p[2] = v14;
      }

      sub_100010024(v20, a3);
      v20[1] = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      sub_100063614(&v21, v17);
      v16[0] = 0;
      v16[1] = 0;
      sub_100004AA0(v16, v7 + 1);
      operator new();
    }
  }

  else
  {
    v11 = 0;
  }

  ctu::OsLogContext::OsLogContext(&v18, kCtLoggingSystemName, "recon.mgr");
  v12 = __p[0];
  ctu::OsLogContext::~OsLogContext(&v18);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10176F3F8(v13, v12);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_1000296E0(&cf);
  sub_10006372C(v17);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_1003C10D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100004A34(v31);
  sub_1000296E0(&a16);
  sub_10006372C(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003C1168(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1003C11B4(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v4 = *v4;
    }

    v5 = *(v1 + 32);
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received: [%s], payload: [%@]", buf, 0x16u);
  }

  v6 = sub_100649C38(15);
  v7 = (v1 + 8);
  v8 = strlen(v6);
  v9 = *(v1 + 31);
  if (v9 < 0)
  {
    if (v8 != *(v1 + 16))
    {
      goto LABEL_12;
    }

    if (v8 == -1)
    {
      sub_10013C334();
    }

    v7 = *v7;
  }

  else if (v8 != v9)
  {
LABEL_12:
    sub_1003C16CC(*(v1 + 40), @"kResult", 0, kCFAllocatorDefault);
    sub_100010180(buf, (v1 + 40));
    v10 = *(v1 + 72);
    if (!v10)
    {
      sub_100022DB4();
    }

LABEL_13:
    v11 = buf;
    (*(*v10 + 48))(v10, buf);
    goto LABEL_14;
  }

  if (memcmp(v7, v6, v8))
  {
    goto LABEL_12;
  }

  v13 = *(v1 + 32);
  if (!v13 || !CFDictionaryContainsKey(v13, @"kDeviceIdentifier") || !CFDictionaryContainsKey(*(v1 + 32), @"kPreSharedKey"))
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F304();
    }

    sub_1003C16CC(*(v1 + 40), @"kResult", 0, kCFAllocatorDefault);
    sub_100010180(buf, (v1 + 40));
    v10 = *(v1 + 72);
    if (!v10)
    {
      sub_100022DB4();
    }

    goto LABEL_13;
  }

  CFDictionaryGetValue(*(v1 + 32), @"kDeviceIdentifier");
  CFDictionaryGetValue(*(v1 + 32), @"kPreSharedKey");
  ctu::cf::assign();
  memset(buf, 0, sizeof(buf));
  v18 = 0uLL;
  v19 = 0;
  ctu::cf::assign();
  __p = 0uLL;
  v22 = 0;
  v14 = sub_1003BFB74(v2, buf);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (v14)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F480();
    }

    sub_1003C16CC(*(v1 + 40), @"kResult", 1, kCFAllocatorDefault);
    sub_100010180(&v18, (v1 + 40));
    v15 = *(v1 + 72);
    if (!v15)
    {
      sub_100022DB4();
    }
  }

  else
  {
    sub_1003C16CC(*(v1 + 40), @"kResult", 0, kCFAllocatorDefault);
    sub_100010180(&v18, (v1 + 40));
    v15 = *(v1 + 72);
    if (!v15)
    {
      sub_100022DB4();
    }
  }

  v11 = &v18;
  (*(*v15 + 48))(v15, &v18);
LABEL_14:
  sub_10001021C(v11);
  sub_1003C165C(&v17);
  return sub_1000049E0(&v16);
}

void sub_1003C15B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_10001021C(&__p);
  sub_1003C165C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003C165C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10006372C(v1 + 48);
    sub_1000296E0((v1 + 40));
    sub_10001021C((v1 + 32));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1003C16CC(__CFDictionary *a1, CFTypeRef cf, int a3, CFAllocatorRef allocator)
{
  v13 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
  v12 = v8;
  if (cf)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  sub_100DA3324(&v12);
  sub_100DA3324(&v13);
  return v10;
}

void sub_1003C1764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_100DA3324(va);
  sub_100DA3324(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C1788(__CFDictionary *a1, CFTypeRef cf)
{
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  value = 0;
  ctu::cf::convert_copy();
  v7 = 0;
  if (cf)
  {
    v4 = value == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    CFDictionaryAddValue(a1, cf, 0);
  }

  sub_100DA3324(&v7);
  sub_100DA3324(&v8);
  return v5;
}

void sub_1003C1828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_100DA3324(va);
  sub_100DA3324(va1);
  _Unwind_Resume(a1);
}

void *sub_1003C184C(void *a1)
{
  *a1 = off_101E48BD8;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_1003C18A0(void *a1)
{
  *a1 = off_101E48BD8;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_1003C19A8(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101E48BD8;
  a2[1] = v4;
  result = sub_1000224C8((a2 + 2), (a1 + 2));
  v6 = a1[7];
  a2[6] = a1[6];
  a2[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003C1A18(void *a1)
{
  sub_1003C1C7C(a1 + 8);

  operator delete(a1);
}

const void **sub_1003C1A54(void *a1, unsigned __int8 *a2, CFDictionaryRef *a3)
{
  v4 = *a2;
  v5 = *a3;
  theDict = *a3;
  *a3 = 0;
  v6 = a1[7];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v7 = a1[1];
  v8 = std::__shared_weak_count::lock(v6);
  if (!v8 || !a1[6])
  {
LABEL_8:
    sub_10000FFD0((a1 + 2), 0);
    if (!v8)
    {
      return sub_10001021C(&theDict);
    }

    goto LABEL_19;
  }

  if (v4)
  {
    if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F51C();
    }
  }

  else
  {
    if (v5 && CFDictionaryContainsKey(v5, @"kResult"))
    {
      Value = CFDictionaryGetValue(theDict, @"kResult");
      v11 = Value;
      if (Value)
      {
        v12 = CFGetTypeID(Value);
        if (v12 == CFNumberGetTypeID())
        {
          v13 = v11;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v19 = 0;
      ctu::cf::assign(&v19, v13, v10);
      v15 = v19;
      v16 = *(v7 + 40);
      if (v19)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Other device successfully saved the credentials", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10176F4B4();
      }

      sub_10000FFD0((a1 + 2), v15 != 0);
      goto LABEL_19;
    }

    if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F4E8();
    }
  }

  sub_10000FFD0((a1 + 2), 0);
LABEL_19:
  sub_100004A34(v8);
  return sub_10001021C(&theDict);
}

void sub_1003C1C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004A34(v2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C1C30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003C1C7C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_10000FF50(a1 + 8);
}

uint64_t sub_1003C1D48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003C1D94(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  if (*(v1 + 88))
  {
    v2 = *(v1 + 96);
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
    if (v2)
    {
      sub_100004A34(v2);
    }
  }

  operator delete();
}

void sub_1003C1DFC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void *sub_1003C1ED8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E48CF8;
  sub_1009BC8A4(a1 + 3);
  return a1;
}

void sub_1003C1F54(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E48CF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1003C1FE0(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  *result = *a2;
  *(result + *(v4 - 336)) = a2[1];
  *(result + *(*result - 56)) = a2[2];
  v5 = a3[1];
  result[1] = *a3;
  result[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result[3] = a4;
  return result;
}

uint64_t *sub_1003C20D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 336)) = a2[1];
  *(a1 + *(*a1 - 56)) = a2[2];
  v4 = a1[2];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

uint64_t sub_1003C21E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 240))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1003C221C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + *(*a1 - 280) + 24);
  if (result)
  {
    return (*(*result + 240))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1003C228C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 464))();
  }

  return result;
}

uint64_t sub_1003C22C4(void *a1)
{
  result = *(a1 + *(*a1 - 320) + 24);
  if (result)
  {
    return (*(*result + 464))();
  }

  return result;
}

void sub_1003C2318(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *DataConnectionAgentCarrierSpace::DataConnectionAgentCarrierSpace(void *a1, uint64_t *a2, int a3, uint64_t a4, id *a5, void *a6)
{
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  DataConnectionAgent::DataConnectionAgent(a1, off_101E48FC8, &v9, a3, "DATA.agent.carrierspace", a4, a5, a6);
  if (v10)
  {
    sub_100004A34(v10);
  }

  *a1 = off_101E48DC0;
  a1[3] = off_101E48ED8;
  a1[13] = off_101E48FA8;
  a1[40] = 0;
  a1[41] = 0;
  a1[39] = 0;
  return a1;
}

void sub_1003C2424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  PersonalitySpecific::~PersonalitySpecific(v10);
  _Unwind_Resume(a1);
}

void DataConnectionAgentCarrierSpace::~DataConnectionAgentCarrierSpace(DataConnectionAgentCarrierSpace *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 56)) = a2[8];
  *(this + 3) = a2[9];
  *(this + 13) = off_101E48FA8;
  v5 = *(this + 39);
  if (v5)
  {
    *(this + 39) = 0;
  }

  v6 = *(this + 40);
  if (v6)
  {
    *(this + 40) = 0;
  }

  v7 = *(this + 41);
  if (v7)
  {
    *(this + 41) = 0;

    v7 = *(this + 41);
  }

  DataConnectionAgent::~DataConnectionAgent(this, a2 + 1);
}

void DataConnectionAgentCarrierSpace::~DataConnectionAgentCarrierSpace(DataConnectionAgentCarrierSpace *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void non-virtual thunk toDataConnectionAgentCarrierSpace::~DataConnectionAgentCarrierSpace(DataConnectionAgentCarrierSpace *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  DataConnectionAgentCarrierSpace::~DataConnectionAgentCarrierSpace((this - 24));
}

{
  DataConnectionAgentCarrierSpace::~DataConnectionAgentCarrierSpace((this - 104));
}

void DataConnectionAgentCarrierSpace::unsetPolicyOverride(DataConnectionAgentCarrierSpace *this)
{
  v2 = *(this + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    UUID = DataConnectionAgent::getUUID(this);
    if (*(UUID + 23) >= 0)
    {
      v4 = UUID;
    }

    else
    {
      v4 = *UUID;
    }

    v9 = 136446210;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s: unsetPolicyOverride", &v9, 0xCu);
  }

  v5 = *(this + 39);
  if (v5)
  {
    *(this + 39) = 0;
  }

  v6 = *(this + 40);
  if (v6)
  {
    *(this + 40) = 0;
  }

  v7 = *(this + 41);
  if (v7)
  {
    *(this + 41) = 0;

    v8 = *(this + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I unregistered fallback policy", &v9, 2u);
    }
  }
}

void entitlements::ControllerImpl::ControllerImpl(uint64_t a1, void *a2, NSObject **a3, uint64_t *a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, a5);
  sub_1001303E4((a1 + 8), a3, &buf);
  ctu::OsLogContext::~OsLogContext(&buf);
  *(a1 + 56) = 0;
  *a1 = off_101E493F8;
  *(a1 + 48) = off_101E49688;
  *(a1 + 64) = *a2;
  v9 = a2[1];
  *(a1 + 72) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  v10 = *a4;
  *(a1 + 88) = *a4;
  v11 = a4[1];
  *(a1 + 96) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v10 = *(a1 + 88);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v12 = *(v10 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003A09FC();
}

void sub_1003C2D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSObject **a10, NSObject **a11, NSObject **a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t a17, dispatch_object_t object, dispatch_object_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_1003EDEF8(v29 + 2232);
  std::mutex::~mutex((v29 + 2168));
  sub_1003E9830(v29 + 1776);
  sub_10006DCAC(v29 + 1744, *(v29 + 1752));
  v37 = *(v29 + 1728);
  *(v29 + 1728) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = *v34;
  *v34 = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  if (*(v29 + 1704) == 1)
  {
    a28 = v29 + 1680;
    sub_1003E9950(&a28);
  }

  sub_1002B73A8(v29 + 1656, *(v29 + 1664));
  sub_10006DCAC(v29 + 1632, *(v29 + 1640));
  sub_1001A8E08(v29 + 1608, *(v29 + 1616));
  sub_1002B7314(v29 + 1584, *(v29 + 1592));
  sub_100077CD4(v29 + 1552, *(v29 + 1560));
  v39 = *(v29 + 1544);
  if (v39)
  {
    sub_100004A34(v39);
  }

  if (*(v29 + 1528) == 1)
  {
    sub_100220C2C(v29 + 1072);
  }

  sub_1003C3054(v29 + 960);
  std::mutex::~mutex((v29 + 880));
  v40 = *(v29 + 872);
  if (v40)
  {
    sub_100004A34(v40);
  }

  if (*(v29 + 856) == 1)
  {
    v41 = *(v29 + 832);
    if (v41)
    {
      *(v29 + 840) = v41;
      operator delete(v41);
    }
  }

  sub_1003E9B08(v33);
  sub_1003E9B8C(v32);
  sub_1003E9C10(v31);
  sub_1003E9C94(v30);
  sub_1003E9D18(v35);
  sub_1003E9D9C(a10);
  sub_1003E9E5C(a11);
  sub_1003E9F1C(a12);
  sub_1003E9FDC(a13);
  sub_1003EA060(a14);
  sub_1003EA0E4(a15);
  sub_1003EA168(a16);
  sub_1003C3054(v29 + 416);
  sub_1003C30B4((v29 + 312));
  sub_1003C30B4((v29 + 208));
  v42 = *(v29 + 176);
  *(v29 + 176) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = *(v29 + 168);
  if (v43)
  {
    sub_100004A34(v43);
  }

  v44 = *(v29 + 152);
  if (v44)
  {
    sub_100004A34(v44);
  }

  v45 = *(v29 + 136);
  if (v45)
  {
    sub_100004A34(v45);
  }

  sub_1000212F4(&a28);
  v46 = *(v29 + 96);
  if (v46)
  {
    sub_100004A34(v46);
  }

  v47 = *(v29 + 72);
  if (v47)
  {
    sub_100004A34(v47);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v29 + 40));
  sub_1000C0544((v29 + 8));
  _Unwind_Resume(a1);
}

void sub_1003C302C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (!a24)
  {
    JUMPOUT(0x1003C2FE8);
  }

  JUMPOUT(0x1003C2FE4);
}

void sub_1003C303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x1003C3024);
}

uint64_t sub_1003C3054(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    sub_10006DCAC(a1 + 80, *(a1 + 88));
    sub_10006EC28(a1 + 56, *(a1 + 64));
    sub_10006DCAC(a1 + 32, *(a1 + 40));
    sub_10006DCAC(a1 + 8, *(a1 + 16));
  }

  return a1;
}

void **sub_1003C30B4(void **a1)
{
  sub_10006DCAC((a1 + 10), a1[11]);
  sub_10006EC28((a1 + 7), a1[8]);
  sub_10006DCAC((a1 + 4), a1[5]);
  sub_10006DCAC((a1 + 1), a1[2]);
  return a1;
}

void entitlements::ControllerImpl::~ControllerImpl(entitlements::ControllerImpl *this)
{
  *this = off_101E493F8;
  *(this + 6) = off_101E49688;
  ctu::RestModule::disconnect((this + 1536));
  sub_1003EDEF8(this + 2232);
  std::mutex::~mutex((this + 2168));
  sub_1003E9830(this + 1776);
  sub_10006DCAC(this + 1744, *(this + 219));
  v2 = *(this + 216);
  *(this + 216) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 214);
  *(this + 214) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 1704) == 1)
  {
    v13 = (this + 1680);
    sub_1003E9950(&v13);
  }

  sub_1002B73A8(this + 1656, *(this + 208));
  sub_10006DCAC(this + 1632, *(this + 205));
  sub_1001A8E08(this + 1608, *(this + 202));
  sub_1002B7314(this + 1584, *(this + 199));
  sub_100077CD4(this + 1552, *(this + 195));
  v4 = *(this + 193);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(this + 1528) == 1)
  {
    sub_100220C2C(this + 1072);
  }

  if (*(this + 1064) == 1)
  {
    sub_10006DCAC(this + 1040, *(this + 131));
    sub_10006EC28(this + 1016, *(this + 128));
    sub_10006DCAC(this + 992, *(this + 125));
    sub_10006DCAC(this + 968, *(this + 122));
  }

  std::mutex::~mutex((this + 880));
  v5 = *(this + 109);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (*(this + 856) == 1)
  {
    v6 = *(this + 104);
    if (v6)
    {
      *(this + 105) = v6;
      operator delete(v6);
    }
  }

  sub_1003E9B08(this + 100);
  sub_1003E9B8C(this + 97);
  sub_1003E9C10(this + 94);
  sub_1003E9C94(this + 91);
  sub_1003E9D18(this + 88);
  sub_1003E9D9C(this + 85);
  sub_1003E9E5C(this + 82);
  sub_1003E9F1C(this + 79);
  sub_1003E9FDC(this + 76);
  sub_1003EA060(this + 73);
  sub_1003EA0E4(this + 70);
  sub_1003EA168(this + 67);
  if (*(this + 520) == 1)
  {
    sub_10006DCAC(this + 496, *(this + 63));
    sub_10006EC28(this + 472, *(this + 60));
    sub_10006DCAC(this + 448, *(this + 57));
    sub_10006DCAC(this + 424, *(this + 54));
  }

  sub_10006DCAC(this + 392, *(this + 50));
  sub_10006EC28(this + 368, *(this + 47));
  sub_10006DCAC(this + 344, *(this + 44));
  sub_10006DCAC(this + 320, *(this + 41));
  sub_10006DCAC(this + 288, *(this + 37));
  sub_10006EC28(this + 264, *(this + 34));
  sub_10006DCAC(this + 240, *(this + 31));
  sub_10006DCAC(this + 216, *(this + 28));
  v7 = *(this + 22);
  *(this + 22) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 21);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 19);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(this + 17);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v13 = (this + 104);
  sub_1000212F4(&v13);
  v11 = *(this + 12);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(this + 9);
  if (v12)
  {
    sub_100004A34(v12);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  entitlements::ControllerImpl::~ControllerImpl(this);

  operator delete();
}

void non-virtual thunk toentitlements::ControllerImpl::~ControllerImpl(entitlements::ControllerImpl *this)
{
  entitlements::ControllerImpl::~ControllerImpl((this - 48));
}

{
  entitlements::ControllerImpl::~ControllerImpl((this - 48));

  operator delete();
}

void entitlements::ControllerImpl::initialize(entitlements::ControllerImpl *this)
{
  sub_100004AA0(&v3, this + 1);
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, this + 1);
  operator new();
}

void entitlements::ControllerImpl::start(entitlements::ControllerImpl *this)
{
  sub_100004AA0(&v3, this + 1);
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, this + 1);
  operator new();
}

void entitlements::ControllerImpl::init_sync(entitlements::ControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 11));
    buf = 136315394;
    *buf_4 = v3;
    *&buf_4[8] = 2080;
    *&buf_4[10] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sInitializing Carrier Entitlements Controller", &buf, 0x16u);
  }

  sub_100004AA0(&buf, this + 1);
  v4 = *&buf_4[4];
  if (*&buf_4[4])
  {
    atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  sub_10000501C(__p, "/cc/events/p_associated_uri_changed");
  operator new();
}

void sub_1003C4AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  sub_10001021C(&a9);
  sub_10000A1EC((v26 + 16));
  sub_10000A1EC((v26 + 8));
  sub_100029A48(&a10);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::initializeLimitedUseSim_sync(entitlements::ControllerImpl *this)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v42 = 0;
  v2 = PersonalityInfo::iccid(***(this + 11));
  if (*(v2 + 23) < 0)
  {
    sub_100005F2C(__dst, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v42 = *(v2 + 16);
    *__dst = v3;
  }

  if (*(***(this + 11) + 61) == 1)
  {
    *&__str.__r_.__value_.__l.__data_ = 0uLL;
    ServiceMap = Registry::getServiceMap(*(this + 8));
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
    *&v43 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v43);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    std::mutex::unlock(v5);
    __str.__r_.__value_.__r.__words[0] = v12;
    __str.__r_.__value_.__l.__size_ = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v12 = __str.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      sub_1003CA2CC(this);
    }

    v22 = *(this + 5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10176F63C(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    size = __str.__r_.__value_.__l.__size_;
    if (__str.__r_.__value_.__l.__size_)
    {
LABEL_32:
      sub_100004A34(size);
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v13 = Registry::getServiceMap(*(this + 8));
    v14 = v13;
    if (v15 < 0)
    {
      v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
      v17 = 5381;
      do
      {
        v15 = v17;
        v18 = *v16++;
        v17 = (33 * v17) ^ v18;
      }

      while (v18);
    }

    std::mutex::lock(v13);
    *&v43 = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, &v43);
    if (v19)
    {
      v21 = v19[3];
      v20 = v19[4];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    std::mutex::unlock(v14);
    v39 = v21;
    v40 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v21 = v39;
    }

    if (v21)
    {
      sub_1003CA43C(this);
    }

    v30 = *(this + 5);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10176F604(v30, v31, v32, v33, v34, v35, v36, v37);
    }

    size = v40;
    if (v40)
    {
      goto LABEL_32;
    }
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1003C5324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_10000A1EC(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::start_sync(entitlements::ControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sStarting Carrier Entitlements Controller", buf, 0x16u);
  }

  if (!*(***(this + 11) + 49))
  {
    ServiceMap = Registry::getServiceMap(*(this + 8));
    v5 = ServiceMap;
    v6 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v7 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
        v13 = 0;
        if (!v12)
        {
LABEL_16:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          return;
        }

LABEL_13:
        sub_100004AA0(buf, this + 1);
        v14 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v14);
        }

        v15 = 0;
        operator new();
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }
}

void sub_1003C569C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1003F2928(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::reset_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v75 = sub_1000710B0(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s_____________   Reset called with reason:%s", buf, 0x20u);
  }

  if (*(a1 + 80) == 1 && (a2 == 3 || *(a1 + 112) == *(a1 + 104)))
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s(re)instantiating Entitlements Command Driver", buf, 0x16u);
    }

    sub_100021348((a1 + 104));
    std::mutex::lock((a1 + 2168));
    sub_100A7F9EC((a1 + 64), *(a1 + 88), buf);
    v8 = *(a1 + 88);
    sub_1000FA138((v8 + 520));
    v9 = *buf;
    *(v8 + 520) = *buf;
    v10 = *&buf[8];
    *(v8 + 528) = *&buf[8];
    memset(buf, 0, sizeof(buf));
    if (a1 + 2112 != v8 + 520)
    {
      sub_1003EA1EC((a1 + 2112), v9, v10, (v10 - v9) >> 4);
    }

    v72 = buf;
    sub_1000212F4(&v72);
    v11 = (*(a1 + 2120) - *(a1 + 2112)) >> 4;
    LOBYTE(v72) = 0;
    sub_1003EA3EC(buf, v11);
    v12 = *(a1 + 2136);
    if (v12)
    {
      operator delete(v12);
      *(a1 + 2136) = 0;
      *(a1 + 2144) = 0;
      *(a1 + 2152) = 0;
    }

    *(a1 + 2136) = *buf;
    *(a1 + 2144) = *&buf[8];
    std::mutex::unlock((a1 + 2168));
    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 8));
    operator new();
  }

  if (*(a1 + 80) == 1)
  {
    v13 = *(a1 + 88);
    v14 = *(v13 + 528);
    v15 = *(v13 + 520);
    if (v14 == v15 || (sub_100A83694(*v15) & 1) == 0)
    {
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
      v17 = ServiceMap;
      if (v18 < 0)
      {
        v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
        v20 = 5381;
        do
        {
          v18 = v20;
          v21 = *v19++;
          v20 = (33 * v20) ^ v21;
        }

        while (v21);
      }

      std::mutex::lock(ServiceMap);
      *buf = v18;
      v22 = sub_100009510(&v17[1].__m_.__sig, buf);
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
          goto LABEL_24;
        }
      }

      else
      {
        v24 = 0;
      }

      std::mutex::unlock(v17);
      v23 = 0;
      v25 = 1;
LABEL_24:
      (*(*v24 + 32))(v24, ***(a1 + 88) + 24, 1);
      if ((v25 & 1) == 0)
      {
        sub_100004A34(v23);
      }
    }
  }

  entitlements::ControllerImpl::stopShorterTimer_sync(a1);
  v27 = *(a1 + 104);
  v26 = *(a1 + 112);
  v28 = *(a1 + 40);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v26 == v27)
  {
    if (v29)
    {
      v35 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sNo valid configuration", buf, 0x16u);
    }

    *buf = 0;
    entitlements::ControllerImpl::setSupportedEntitlementTypes(a1, buf);
    entitlements::ControllerImpl::setSupportedTaskTypes(a1);
    entitlements::ControllerImpl::stopUpdateTimer_sync(a1);
  }

  else
  {
    if (v29)
    {
      v30 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sConfiguration present", buf, 0x16u);
    }

    *buf = 0;
    v31 = *(a1 + 88);
    v32 = *(v31 + 520);
    v33 = *(v31 + 528);
    while (v32 != v33)
    {
      v34 = sub_1008374DC(*v32);
      *buf |= v34;
      v32 += 2;
    }

    entitlements::ControllerImpl::setSupportedEntitlementTypes(a1, buf);
    entitlements::ControllerImpl::setSupportedTaskTypes(a1);
  }

  *buf = a1 + 528;
  *&buf[8] = 0;
  sub_1001E9F04(buf, 2uLL);
  v36 = *(a1 + 104);
  v37 = *(a1 + 112);
  while (v36 != v37)
  {
    (***v36)(buf);
    *(a1 + 528) |= sub_100A80CBC(*buf);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v36 += 2;
  }

  entitlements::ControllerImpl::invalidateResults_sync(a1, a2, 3);
  if (a2 == 1)
  {
    v39 = *(a1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = PersonalityInfo::logPrefix(***(a1 + 88));
      v41 = sub_1000710B0(1u);
      *buf = 136315650;
      *&buf[4] = v40;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v75 = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sFlush all data because of %s", buf, 0x20u);
    }

    std::mutex::lock((a1 + 2168));
    if (*(a1 + 1967) < 0)
    {
      **(a1 + 1944) = 0;
      *(a1 + 1952) = 0;
    }

    else
    {
      *(a1 + 1944) = 0;
      *(a1 + 1967) = 0;
    }

    if (*(a1 + 1991) < 0)
    {
      **(a1 + 1968) = 0;
      *(a1 + 1976) = 0;
    }

    else
    {
      *(a1 + 1968) = 0;
      *(a1 + 1991) = 0;
    }

    sub_1003C6C9C(a1 + 1992);
    *(a1 + 2105) = 0;
    std::mutex::unlock((a1 + 2168));
    v42 = *(a1 + 88);
    if (*(v42 + 376) == 1)
    {
      if (*(v42 + 375) < 0)
      {
        operator delete(*(v42 + 352));
      }

      *(v42 + 376) = 0;
    }

    v43 = Registry::getServiceMap(*(a1 + 64));
    v44 = v43;
    v46 = v45;
    if (v45 < 0)
    {
      v47 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
      v48 = 5381;
      do
      {
        v46 = v48;
        v49 = *v47++;
        v48 = (33 * v48) ^ v49;
      }

      while (v49);
    }

    std::mutex::lock(v43);
    *buf = v46;
    v50 = sub_100009510(&v44[1].__m_.__sig, buf);
    if (v50)
    {
      v52 = v50[3];
      v51 = v50[4];
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v44);
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v51);
        v53 = 0;
        goto LABEL_68;
      }
    }

    else
    {
      v52 = 0;
    }

    std::mutex::unlock(v44);
    v51 = 0;
    v53 = 1;
LABEL_68:
    v54 = kCarrierEntitlementsWalletDomain;
    (*(*v52 + 32))(v52, ***(a1 + 88) + 24, @"p_associated_uri", kCarrierEntitlementsWalletDomain, 0, 4);
    if ((v53 & 1) == 0)
    {
      sub_100004A34(v51);
    }

    v55 = Registry::getServiceMap(*(a1 + 64));
    v56 = v55;
    if (v45 < 0)
    {
      v57 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
      v58 = 5381;
      do
      {
        v45 = v58;
        v59 = *v57++;
        v58 = (33 * v58) ^ v59;
      }

      while (v59);
    }

    std::mutex::lock(v55);
    *buf = v45;
    v60 = sub_100009510(&v56[1].__m_.__sig, buf);
    if (v60)
    {
      v62 = v60[3];
      v61 = v60[4];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v56);
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v61);
        v63 = 0;
LABEL_78:
        (*(*v62 + 32))(v62, ***(a1 + 88) + 24, @"signature", v54, 0, 4);
        if ((v63 & 1) == 0)
        {
          sub_100004A34(v61);
        }

        v38 = 0;
        *(a1 + 1725) = 0;
        goto LABEL_81;
      }
    }

    else
    {
      v62 = 0;
    }

    std::mutex::unlock(v56);
    v61 = 0;
    v63 = 1;
    goto LABEL_78;
  }

  if (a2 == 2)
  {
    if (*(a1 + 80) != 1)
    {
      v38 = 0;
      goto LABEL_84;
    }

    v38 = 1;
  }

  else
  {
    v38 = 0;
    if (a2 != 3)
    {
      goto LABEL_84;
    }
  }

LABEL_81:
  *(a1 + 1720) = 0;
  v64 = *(a1 + 1712);
  *(a1 + 1712) = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  *(a1 + 1724) = 0;
LABEL_84:
  entitlements::ControllerImpl::readPhoneNumberSignatureFromKeychain_sync(a1, buf);
  *(a1 + 1725) = *buf != 0;
  sub_10001021C(buf);
  if (*(a1 + 112) != *(a1 + 104))
  {
    if (*(a1 + 80) == 1)
    {
      entitlements::ControllerImpl::createUpdateTimer_sync(a1);
      entitlements::ControllerImpl::readServiceToken_sync(a1);
      entitlements::ControllerImpl::readSubscriberId_sync(a1);
      entitlements::ControllerImpl::readUniqueId_sync(a1);
      entitlements::ControllerImpl::readPAssociatedUri_sync(a1);
      entitlements::ControllerImpl::readPLMNPriorityInfoFromCache(a1);
      if ((a2 | 2) == 3 || v38)
      {
        entitlements::ControllerImpl::handleRemoteDevicesChanged(a1);
        entitlements::ControllerImpl::readAuthorizationTokens(a1);
        memset(buf, 0, sizeof(buf));
        v65 = *(a1 + 104);
        v66 = *(a1 + 112);
        while (v65 != v66)
        {
          (*(**v65 + 344))(*v65, a2);
          theString2[0] = 0;
          (***v65)(&v72);
          sub_100A838B4(v72, theString2);
          if (v73)
          {
            sub_100004A34(v73);
          }

          if (theString2[0])
          {
            v67 = *buf;
            v68 = *&buf[8];
            while (v67 != v68)
            {
              if (CFStringCompare(*v67, theString2[0], 0) == kCFCompareEqualTo)
              {
                goto LABEL_97;
              }

              ++v67;
            }

            sub_10021B890(buf, theString2);
          }

LABEL_97:
          sub_100005978(theString2);
          v65 += 2;
        }

        sub_1008110E8(*(a1 + 864), buf);
        entitlements::ControllerImpl::checkReadImsi(a1, 1);
        entitlements::ControllerImpl::handleWifiAvailable_sync(a1, (a1 + 1768), 1);
        v72 = buf;
        sub_100222314(&v72);
      }
    }

    v69 = *(a1 + 104);
    v70 = *(a1 + 112);
    if (v69 != v70)
    {
      do
      {
        (*(**v69 + 16))(*v69, a2);
        v69 += 2;
      }

      while (v69 != v70);
      v69 = *(a1 + 104);
      v70 = *(a1 + 112);
    }

    while (v69 != v70)
    {
      (*(**v69 + 352))(*v69);
      v69 += 2;
    }
  }

  entitlements::ControllerImpl::updateAndSchedule_sync(a1, a2);
  sub_1003CA228(*(a1 + 88), 0);
}

void sub_1003C63A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, char a13)
{
  a11 = &a13;
  sub_1000212F4(&a11);
  std::mutex::unlock((v13 + 2168));
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::createCommandDriver_sync(void *a1)
{
  v2 = a1[3];
  v14 = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  v3 = a1[12];
  v12 = a1[11];
  v13 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  __p = 0;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v5, a1 + 1);
  if (v5)
  {
    v4 = v5 + 48;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v8 = v6;
  v5 = 0;
  v6 = 0;
  entitlements::CEHTTPDriver::create();
}

void sub_1003C65A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  v22 = *(v20 - 40);
  if (v22)
  {
    dispatch_release(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::stopShorterTimer_sync(uint64_t this)
{
  *(this + 184) = 0;
  v1 = *(this + 176);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(v2 + 88));
      v5 = 136315394;
      v6 = v4;
      v7 = 2080;
      v8 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sStopping shorter timer", &v5, 0x16u);
      v1 = *(v2 + 176);
    }

    (*(*v1 + 16))(v1);
    this = *(v2 + 176);
    *(v2 + 176) = 0;
    if (this)
    {
      return (*(*this + 8))(this);
    }
  }

  return this;
}

void entitlements::ControllerImpl::setSupportedEntitlementTypes(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = PersonalityInfo::logPrefix(***(a1 + 88));
    sub_100072374(a2, __p);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136315650;
    v14 = v6;
    v15 = 2080;
    v16 = " ";
    v17 = 2080;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%ssettings SupportedEntitlementTypes to %s", buf, 0x20u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *a2 & 0xFFFFFFFFFFFFEBFFLL;
  *(a1 + 192) = *a2;
  *(a1 + 200) = v8;
  v9 = capabilities::ct::supportsSIMProvisioningAsSignupDestination(v5);
  v10 = *(a1 + 200);
  if (!v9)
  {
    v10 &= 0xFFFFFFFFFFAEB7FFLL;
  }

  *(a1 + 200) = v10 & 0xFFFFFFFFFFAEF7FFLL;
  std::mutex::lock((a1 + 2168));
  *(a1 + 1880) = *a2;
  std::mutex::unlock((a1 + 2168));
}

void entitlements::ControllerImpl::setSupportedTaskTypes(entitlements::ControllerImpl *this)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(this + 13);
    for (i = *(this + 14); v4 != i; v3 |= v7)
    {
      v6 = *v4;
      v4 += 2;
      if (sub_1009C1740(v6, v2))
      {
        v7 = 1 << v2;
      }

      else
      {
        v7 = 0;
      }
    }

    ++v2;
  }

  while (v2 != 15);
  v8 = *(this + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(this + 11));
    v10 = 0;
    v15 = 0xF00000000000000;
    strcpy(__p, "000000000000000");
    v11 = 14;
    do
    {
      if ((v3 >> v10))
      {
        if (v15 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *(v12 + v11) = 49;
      }

      ++v10;
      --v11;
    }

    while (v10 != 15);
    v13 = __p;
    if (v15 < 0)
    {
      v13 = __p[0];
    }

    *buf = 136315650;
    v17 = v9;
    v18 = 2080;
    v19 = " ";
    v20 = 2080;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%ssettings fSupportedTaskTypes to %s", buf, 0x20u);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::mutex::lock((this + 2168));
  *(this + 236) = v3;
  std::mutex::unlock((this + 2168));
}

void entitlements::ControllerImpl::stopUpdateTimer_sync(entitlements::ControllerImpl *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(this + 11));
      v6 = 136315394;
      v7 = v4;
      v8 = 2080;
      v9 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sStopping update timer", &v6, 0x16u);
      v1 = *(this + 20);
    }

    sub_100430948(v1);
    v5 = *(this + 21);
    *(this + 20) = 0;
    *(this + 21) = 0;
    if (v5)
    {
      sub_100004A34(v5);
    }
  }
}

void entitlements::ControllerImpl::invalidateResults_sync(uint64_t a1, signed int a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(a1 + 88));
    v10 = 136315650;
    v11 = v7;
    v12 = 2080;
    v13 = " ";
    v14 = 2080;
    v15 = sub_1000710B0(a2);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sInvalidating Entitlements State with reason %s", &v10, 0x20u);
  }

  if (a2 > 4)
  {
    if (a2 != 5)
    {
      if (a2 == 7)
      {
        goto LABEL_13;
      }

      if (a2 != 8)
      {
        goto LABEL_16;
      }
    }

LABEL_14:
    v8 = a2 == 5;
    v9 = a1 + 312;
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    a3 = 3;
LABEL_13:
    entitlements::ControllerImpl::invalidateEntitlementsCache_sync(a1, a3);
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (*(a1 + 80))
  {
    goto LABEL_16;
  }

  v9 = a1 + 312;
  v8 = 0;
LABEL_15:
  sub_100A38E58(v9, v8);
LABEL_16:
  entitlements::ControllerImpl::recalculateEntitlements_sync(a1, 0, *(a1 + 80));
}

void sub_1003C6C9C(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    if (*(a1 + 88) == 1)
    {
      v4[0] = (a1 + 64);
      sub_1003EA960(v4);
    }

    if (*(a1 + 56) == 1)
    {
      v4[0] = (a1 + 32);
      sub_1003EA960(v4);
    }

    if (*(a1 + 24) == 1)
    {
      v4[0] = a1;
      sub_1003EA960(v4);
    }

    *(a1 + 96) = 0;
  }
}

const void **entitlements::ControllerImpl::readPhoneNumberSignatureFromKeychain_sync@<X0>(Registry **this@<X0>, void *a2@<X8>)
{
  data = 0;
  ServiceMap = Registry::getServiceMap(this[8]);
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
  v18 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v18);
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
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  (*(*v12 + 24))(&v16, v12, **this[11] + 24, @"signature", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_1001B1A54(&data, &v16);
  sub_10000A1EC(&v16);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = data;
  if (data)
  {
    *a2 = 0;
    v18 = CFPropertyListCreateWithData(0, v14, 0, 0, 0);
    sub_100138C38(a2, &v18);
  }

  else
  {
    *a2 = 0;
  }

  return sub_10002D760(&data);
}

void sub_1003C6EC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::createUpdateTimer_sync(entitlements::ControllerImpl *this)
{
  v12 = 0;
  v11 = &v12;
  *buf = off_101E4A730;
  *&buf[8] = this;
  *&buf[16] = &v11;
  v14 = buf;
  sub_1000700B8(buf);
  sub_100072048(buf);
  v2 = *(this + 11);
  v3 = **v2;
  if (*(v3 + 49) == 1)
  {
    v12 = 1;
    goto LABEL_4;
  }

  if (v12)
  {
LABEL_4:
    v4 = *(v2 + 528);
    v5 = *(v2 + 520);
    if (v4 != v5)
    {
      v6 = sub_100A820CC(*v5);
      v11 = v6;
      v7 = *(this + 5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(***(this + 11));
        *buf = 136315650;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2048;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sConfigured update period %ld minutes", buf, 0x20u);
      }

      sub_10042FDFC();
    }

    return;
  }

  v9 = *(this + 5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(v3);
    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sNo supported entitlement requires periodic update; will not use an update timer", buf, 0x16u);
  }

  entitlements::ControllerImpl::stopUpdateTimer_sync(this);
}

void sub_1003C7170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100072048(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::readServiceToken_sync(entitlements::ControllerImpl *this)
{
  v15 = 0;
  *__p = 0u;
  v14 = 0u;
  entitlements::ControllerImpl::copyCurrentServiceToken(this, __p);
  v2 = BYTE7(v14);
  if (SBYTE7(v14) < 0)
  {
    v2 = __p[1];
  }

  if (v2)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(this + 11));
      v5 = __p;
      if (SBYTE7(v14) < 0)
      {
        v5 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = v4;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sFound Service Token %s", buf, 0x20u);
    }

    v7 = *(this + 13);
    v6 = *(this + 14);
    while (v7 != v6)
    {
      v8 = *v7;
      buf[0] = 0;
      LOBYTE(v20) = 0;
      (*(*v8 + 264))(v8, __p, buf, &v14 + 8);
      if (v20 == 1 && SHIBYTE(v19) < 0)
      {
        operator delete(*buf);
      }

      v7 += 2;
    }
  }

  else
  {
    v9 = *(this + 13);
    v10 = *(this + 14);
    while (v9 != v10)
    {
      (*(**v9 + 296))(*v9, 0);
      v9 += 2;
    }

    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(this + 11));
      *buf = 136315394;
      *&buf[4] = v12;
      v17 = 2080;
      v18 = " ";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sNo service token stored in keychain", buf, 0x16u);
    }
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003C73D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::readSubscriberId_sync(entitlements::ControllerImpl *this)
{
  memset(&__p, 0, sizeof(__p));
  entitlements::ControllerImpl::copyCurrentEntitlementSubscriberId(this, &__p);
  v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  size = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v5 = __p.__r_.__value_.__l.__size_;
  }

  if (v5)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(this + 11));
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v30 = v7;
      v31 = 2080;
      v32 = " ";
      v33 = 2080;
      v34 = p_p;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sFound Subscriber ID %s", buf, 0x20u);
      v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      size = __p.__r_.__value_.__l.__size_;
      v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    v9 = *(this + 11);
    if (v3 >= 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = size;
    }

    v11 = *(v9 + 407);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v9 + 392);
    }

    if (v10 == v11)
    {
      if (v3 >= 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      if (v12 >= 0)
      {
        v14 = (v9 + 384);
      }

      else
      {
        v14 = *(v9 + 384);
      }

      v15 = memcmp(v13, v14, v10);
      v16 = *(this + 5);
      if (!v15)
      {
        if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
        {
          v17 = PersonalityInfo::logPrefix(**v9);
          *buf = 136315394;
          v30 = v17;
          v31 = 2080;
          v32 = " ";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sSubscriber ID update ignored - no change", buf, 0x16u);
        }

LABEL_40:
        v27 = *(this + 13);
        v26 = *(this + 14);
        while (v27 != v26)
        {
          (*(**v27 + 272))(*v27, &__p);
          v27 += 2;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v16 = *(this + 5);
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = PersonalityInfo::logPrefix(**v9);
      v23 = *(this + 11);
      v24 = (v23 + 384);
      if (*(v23 + 407) < 0)
      {
        v24 = v24->__r_.__value_.__r.__words[0];
      }

      v25 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v30 = v22;
      v31 = 2080;
      v32 = " ";
      v33 = 2080;
      v34 = v24;
      v35 = 2080;
      v36 = v25;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sChanging Subscriber ID from %s to %s", buf, 0x2Au);
      v9 = *(this + 11);
    }

    std::string::operator=((v9 + 384), &__p);
    sub_1003CA228(*(this + 11), 0);
    goto LABEL_40;
  }

  v18 = *(this + 13);
  v19 = *(this + 14);
  while (v18 != v19)
  {
    (*(**v18 + 304))(*v18, 0);
    v18 += 2;
  }

  v20 = *(this + 5);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    v30 = v21;
    v31 = 2080;
    v32 = " ";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sNo Subscriber ID stored in keychain", buf, 0x16u);
  }

LABEL_29:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1003C77D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::readUniqueId_sync(const void **this)
{
  v1 = this;
  v2 = this[11];
  if ((*(v2 + 431) & 0x8000000000000000) != 0)
  {
    if (v2[52])
    {
      goto LABEL_21;
    }
  }

  else if (*(v2 + 431))
  {
    goto LABEL_21;
  }

  entitlements::ControllerImpl::copyCurrentEntitlementUniqueIdInfo(this, buf);
  v3 = *(v1 + 11);
  v4 = v3 + 408;
  if (*(v3 + 431) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *buf;
  *(v4 + 16) = *&buf[16];
  v5 = *(v1 + 11);
  if ((*(v5 + 431) & 0x8000000000000000) != 0)
  {
    if (*(v5 + 416))
    {
LABEL_9:
      v6 = *(v1 + 5);
      this = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (this)
      {
        v7 = PersonalityInfo::logPrefix(**v5);
        v8 = *(v1 + 11);
        v9 = (v8 + 408);
        if (*(v8 + 431) < 0)
        {
          v9 = v9->isa;
        }

        *buf = 136315650;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v64 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sFound Real UniqueID %s", buf, 0x20u);
      }

      goto LABEL_21;
    }
  }

  else if (*(v5 + 431))
  {
    goto LABEL_9;
  }

  v62 = CFUUIDCreate(0);
  v61 = CFUUIDCreateString(0, v62);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v10 = *buf;
  *v67 = *&buf[8];
  *&v67[7] = *&buf[15];
  v11 = buf[23];
  v12 = *(v1 + 11);
  if (*(v12 + 431) < 0)
  {
    operator delete(*(v12 + 408));
  }

  v13 = *v67;
  *(v12 + 408) = v10;
  *(v12 + 416) = v13;
  *(v12 + 423) = *&v67[7];
  *(v12 + 431) = v11;
  v14 = *(v1 + 5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(***(v1 + 11));
    v16 = *(v1 + 11);
    v17 = (v16 + 408);
    if (*(v16 + 431) < 0)
    {
      v17 = v17->isa;
    }

    *buf = 136315650;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v64 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sGenerated new Real Unique ID %s", buf, 0x20u);
  }

  entitlements::ControllerImpl::saveEntitlementUniqueIdInfo(v1, v61);
  sub_100005978(&v61);
  this = sub_1000475BC(&v62);
LABEL_21:
  v18 = *(v1 + 11);
  if ((*(v18 + 431) & 0x8000000000000000) != 0)
  {
    if (!*(v18 + 416))
    {
      goto LABEL_74;
    }
  }

  else if (!*(v18 + 431))
  {
    goto LABEL_74;
  }

  v60 = 0;
  if (capabilities::ct::supportsHydra(this))
  {
    if (*(v1 + 80) != 1)
    {
      goto LABEL_30;
    }

    v19 = (*(*v1 + 96))(v1, 8, @"SendAliasIMEIInAuthentication") | 0x100;
  }

  else
  {
    v19 = 256;
  }

  v60 = v19;
LABEL_30:
  v20 = *(v1 + 11);
  v21 = *v20->__r_.__value_.__l.__data_;
  v22 = *(v21 + 49);
  if (v22 <= 1)
  {
    if (*(v21 + 49))
    {
      if (v22 == 1)
      {
        std::string::operator=(&v20[18], v20 + 17);
      }
    }

    else
    {
      entitlements::ControllerImpl::readUniqueIdAndAliasIdFromBB(v1, *(v21 + 52), &v60);
    }

    goto LABEL_74;
  }

  if (v22 == 2)
  {
    v61 = 0;
    ServiceMap = Registry::getServiceMap(*(v1 + 8));
    v24 = ServiceMap;
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

    std::mutex::lock(ServiceMap);
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
        v32 = 0;
LABEL_46:
        (*(*v31 + 24))(&cf, v31, ***(v1 + 11) + 24, kTransferTargetSlot, kCarrierEntitlementsWalletDomain, 0, 1);
        *v67 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v62 = 0;
        *buf = 0;
        sub_10010B240(buf, v67);
        if (*buf)
        {
          sub_1003F510C(&v62, buf);
        }

        sub_100029A48(buf);
        v61 = v62;
        v62 = 0;
        sub_100029A48(&v62);
        sub_10000A1EC(v67);
        sub_10000A1EC(&cf);
        if ((v32 & 1) == 0)
        {
          sub_100004A34(v30);
        }

        v33 = v61;
        if (v61)
        {
          v34 = *(v1 + 5);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v36 = PersonalityInfo::logPrefix(***(v1 + 11));
            *buf = 136315650;
            *&buf[4] = v36;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2112;
            v64 = v61;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%starget slot ID is %@, trying to get IMEI/unique-id", buf, 0x20u);
            v33 = v61;
          }

          *buf = 0;
          ctu::cf::assign(buf, v33, v35);
          entitlements::ControllerImpl::readUniqueIdAndAliasIdFromBB(v1, *buf, &v60);
        }

        sub_100029A48(&v61);
        v20 = *(v1 + 11);
        goto LABEL_57;
      }
    }

    else
    {
      v31 = 0;
    }

    std::mutex::unlock(v24);
    v30 = 0;
    v32 = 1;
    goto LABEL_46;
  }

  if (v22 != 3)
  {
    goto LABEL_74;
  }

LABEL_57:
  v37 = SHIBYTE(v20[18].__r_.__value_.__r.__words[2]);
  if (v37 < 0)
  {
    if (v20[18].__r_.__value_.__l.__size_)
    {
LABEL_59:
      if ((v37 & 0x80) == 0)
      {
        goto LABEL_60;
      }

LABEL_68:
      if (v20[18].__r_.__value_.__l.__size_)
      {
        goto LABEL_74;
      }

      goto LABEL_69;
    }
  }

  else if (*(&v20[18].__r_.__value_.__s + 23))
  {
    goto LABEL_59;
  }

  v38 = *(v1 + 5);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = PersonalityInfo::logPrefix(*v20->__r_.__value_.__l.__data_);
    v40 = subscriber::asString();
    v41 = *(v1 + 11);
    v42 = (v41 + 432);
    if (*(v41 + 455) < 0)
    {
      v42 = *v42;
    }

    *buf = 136315906;
    *&buf[4] = v39;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v64 = v40;
    v65 = 2080;
    v66 = v42;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s%sno IMEI yet, read from slot %s: %s", buf, 0x2Au);
  }

  entitlements::ControllerImpl::readUniqueIdAndAliasIdFromBB(v1, 2, &v60);
  v20 = *(v1 + 11);
  LOBYTE(v37) = *(&v20[18].__r_.__value_.__s + 23);
  if ((v37 & 0x80) != 0)
  {
    goto LABEL_68;
  }

LABEL_60:
  if (v37)
  {
    goto LABEL_74;
  }

LABEL_69:
  v43 = *(v1 + 5);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = PersonalityInfo::logPrefix(*v20->__r_.__value_.__l.__data_);
    v45 = subscriber::asString();
    v46 = *(v1 + 11);
    v47 = (v46 + 432);
    if (*(v46 + 455) < 0)
    {
      v47 = *v47;
    }

    *buf = 136315906;
    *&buf[4] = v44;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v64 = v45;
    v65 = 2080;
    v66 = v47;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%sno IMEI yet, read from slot %s: %s", buf, 0x2Au);
  }

  entitlements::ControllerImpl::readUniqueIdAndAliasIdFromBB(v1, 1, &v60);
LABEL_74:
  std::mutex::lock((v1 + 2168));
  std::string::operator=(v1 + 79, (*(v1 + 11) + 432));
  std::string::operator=(v1 + 80, (*(v1 + 11) + 408));
  std::mutex::unlock((v1 + 2168));
  v48 = *(v1 + 11);
  if ((*(v48 + 455) & 0x8000000000000000) != 0)
  {
    if (!*(v48 + 440))
    {
      goto LABEL_88;
    }
  }

  else if (!*(v48 + 455))
  {
    goto LABEL_88;
  }

  v49 = Registry::getServiceMap(*(v1 + 8));
  v50 = v49;
  if (v51 < 0)
  {
    v52 = (v51 & 0x7FFFFFFFFFFFFFFFLL);
    v53 = 5381;
    do
    {
      v51 = v53;
      v54 = *v52++;
      v53 = (33 * v53) ^ v54;
    }

    while (v54);
  }

  std::mutex::lock(v49);
  *buf = v51;
  v55 = sub_100009510(&v50[1].__m_.__sig, buf);
  if (v55)
  {
    v56 = v55[3];
    v57 = v55[4];
    if (v57)
    {
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v50);
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v57);
      v58 = 0;
      goto LABEL_86;
    }
  }

  else
  {
    v56 = 0;
  }

  std::mutex::unlock(v50);
  v57 = 0;
  v58 = 1;
LABEL_86:
  (*(*v56 + 48))(v56);
  if ((v58 & 1) == 0)
  {
    sub_100004A34(v57);
  }

LABEL_88:
  sub_1003CA228(*(v1 + 11), 0);
}
void sub_10040DD58(uint64_t **a1)
{
  v25 = a1;
  v1 = **a1;
  v2 = *(v1 + 88);
  if (*(v2 + 516) == 1)
  {
    v3 = *(v2 + 512);
    if (v3 <= 9)
    {
      *(v2 + 512) = v3 + 1;
      ServiceMap = Registry::getServiceMap(*(v1 + 64));
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
      *valuePtr = v6;
      v10 = sub_100009510(&v5[1].__m_.__sig, valuePtr);
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
LABEL_15:
          v16 = *(v1 + 88);
          v17 = **v16;
          LODWORD(v16) = *(v16 + 128);
          v27 = 0;
          *valuePtr = v16;
          v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
          if (v18)
          {
            v27 = v18;
            *valuePtr = 0;
            sub_100029A48(valuePtr);
            v19 = v27;
          }

          else
          {
            v19 = 0;
          }

          v26 = v19;
          v27 = 0;
          sub_100029A48(&v27);
          (*(*v12 + 16))(v12, v17 + 24, @"monitor-mode-retry-cnt", v19, kCarrierEntitlementsWalletDomain, 0, 2, 0);
          sub_100029A48(&v26);
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          v20 = *(v1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = PersonalityInfo::logPrefix(***(v1 + 88));
            v22 = *(*(v1 + 88) + 512);
            *valuePtr = 136315650;
            *&valuePtr[4] = v21;
            v29 = 2080;
            v30 = " ";
            v31 = 1024;
            v32 = v22;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sMonitor mode controlled retry triggered: %d attempt", valuePtr, 0x1Cu);
          }

          v23 = *(v1 + 104);
          for (i = *(v1 + 112); v23 != i; v23 += 2)
          {
            sub_1009C4188(*v23, "Monitor mode controlled retry triggered");
          }

          entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(v1, 1);
          goto LABEL_25;
        }
      }

      else
      {
        v12 = 0;
      }

      std::mutex::unlock(v5);
      v11 = 0;
      v13 = 1;
      goto LABEL_15;
    }

    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
    {
      v15 = PersonalityInfo::logPrefix(**v2);
      sub_10176FAB8(v15, valuePtr);
    }
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    v14 = PersonalityInfo::logPrefix(**v2);
    sub_10176FA74(v14, valuePtr);
  }

LABEL_25:
  operator delete();
}

void sub_10040E07C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

__n128 sub_10040E168(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10040E1A0(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 >= 0x17)
  {
    sub_1000A58E4("bitset test argument out of range");
  }

  v3 = result;
  if ((*(*(result + 8) + 192) >> v2))
  {
    v4 = sub_10000C030(*(result + 16) + 16);
    v5 = sub_10006EE44(v2);
    strlen(v5);
    result = sub_10000C030(v4);
    **(v3 + 24) = 0;
  }

  return result;
}

uint64_t sub_10040E24C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10040E30C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B898;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10040E33C(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (sub_100070C90(*(a1 + 8), *a2))
  {
    v4 = **(a1 + 16);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    sub_1000C1608(v4 + 208, v3, &v16);
    v5 = *(v4 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(v4 + 88));
      v7 = sub_10006EE44(v3);
      v8 = sub_100A392AC(v4 + 208, v3);
      v9 = sub_100A38E08(v8);
      v10 = *(v4 + 400);
      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = v4 + 400;
      do
      {
        if (*(v10 + 28) >= v3)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 28) < v3));
      }

      while (v10);
      if (v11 != v4 + 400 && *(v11 + 28) <= v3)
      {
        v12 = *(v11 + 32);
      }

      else
      {
LABEL_10:
        v12 = 0;
      }

      if (v18 == 1 && v16)
      {
        sub_100A3B404(v16, __p);
        if (v15 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        *buf = 136316418;
        v20 = v6;
        v21 = 2080;
        v22 = " ";
        v23 = 2080;
        v24 = v7;
        v25 = 2080;
        v26 = v9;
        v27 = 1024;
        v28 = v12;
        v29 = 2080;
        v30 = v13;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s | - %s = %s 2skip:%d %s", buf, 0x3Au);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136316418;
        v20 = v6;
        v21 = 2080;
        v22 = " ";
        v23 = 2080;
        v24 = v7;
        v25 = 2080;
        v26 = v9;
        v27 = 1024;
        v28 = v12;
        v29 = 2080;
        v30 = "";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s | - %s = %s 2skip:%d %s", buf, 0x3Au);
      }
    }

    if (v18 == 1)
    {
      if (v17)
      {
        sub_100004A34(v17);
      }
    }
  }
}

void sub_10040E5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a14)
  {
    if (a13)
    {
      sub_100004A34(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040E5CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10040E688(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4B918;
  a2[1] = v2;
  return result;
}

void sub_10040E6B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 88));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_10040E798(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10040E7E4(void **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        v6 = *(v3 + 104);
        v7 = *(v3 + 112);
        while (v6 != v7)
        {
          (*(**v6 + 312))(*v6);
          v6 += 2;
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v10);
  return sub_1000049E0(&v9);
}

void sub_10040E894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10040E8B8(uint64_t **a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(v3 + 88));
          *buf = 136315394;
          v14 = v7;
          v15 = 2080;
          v16 = " ";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sCellular data enabled, treating like a data attachment", buf, 0x16u);
        }

        entitlements::ControllerImpl::handleDataAttached_sync(v3);
        v9 = *(v3 + 104);
        v8 = *(v3 + 112);
        while (v9 != v8)
        {
          (*(**v9 + 320))(*v9);
          v9 += 2;
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v12);
  return sub_1000049E0(&v11);
}

void sub_10040EA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10040EA34(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10040EB34(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040EBAC(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040EB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040EBAC(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DCF40(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040EC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10040EC9C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000A1EC((v1 + 72));
    sub_10001021C((v1 + 64));
    v2 = *(v1 + 56);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete();
  }

  return result;
}

void sub_10040ED18(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10040EE18(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040EE90(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040EE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040EE90(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DD22C(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040EF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040EF80(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10040F080(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040F0F8(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040F0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040F0F8(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DA18C(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040F1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040F1E8(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10040F2E8(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040F360(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040F338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040F360(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DA378(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040F420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040F450(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10040F550(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040F5C8(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040F5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040F5C8(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DA564(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040F688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040F6B8(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10040F7B8(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040F830(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040F808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040F830(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DA750(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040F8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040F920(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10040FA20(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040FA98(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040FA98(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DA93C(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10040FB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10040FB88(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10040FC88(uint64_t *a1)
{
  v2 = *a1;
  sub_10040FD1C(*a1);
  if (v2)
  {
    sub_10000A1EC((v2 + 72));
    sub_10001021C((v2 + 64));
    v3 = *(v2 + 56);
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete();
  }

  v6 = 0;
  sub_1002B78C4(&v6, a1);
}

void sub_10040FD1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*(a1 + 8))
      {
        v5 = *(a1 + 56);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100010024(&v7, (a1 + 64));
          sub_100060E84(&v6, (a1 + 72));
          sub_10000A1EC(&v6);
          sub_10001021C(&v7);
          sub_100004A34(v5);
        }

        else
        {
          sub_100010024(&v7, (a1 + 64));
          sub_100060E84(&v6, (a1 + 72));
          sub_10000A1EC(&v6);
          sub_10001021C(&v7);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10040FDE0(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10040FEE0(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10040FF58(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10040FF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10040FF58(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E120C(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100410018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100410048(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100410148(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004101C0(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004101C0(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E14C0(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100410280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1004102B0(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1004103B0(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100410428(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100410428(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E1774(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004104E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100410518(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100410618(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100410690(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100410690(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DE754(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100410750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100410780(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100410880(uint64_t *a1)
{
  v2 = *a1;
  sub_10040FD1C(*a1);
  if (v2)
  {
    sub_10000A1EC((v2 + 72));
    sub_10001021C((v2 + 64));
    v3 = *(v2 + 56);
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete();
  }

  v6 = 0;
  sub_1002B78C4(&v6, a1);
}

void sub_100410914(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100410A14(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100410A8C(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100410A8C(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DD4C4(v3, v8, v6, v11, &v10);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100410B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100410B80(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100410C80(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100410CF8(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100410CF8(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DEC28(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100410DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100410DE8(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100410EE8(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100410F60(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100410F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100410F60(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DF050(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100411020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100411050(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100411150(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004111C8(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004111A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004111C8(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DF478(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100411288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1004112B8(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1004113B8(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100411430(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100411408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100411430(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DF898(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004114F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100411520(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100411620(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100411698(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100411670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100411698(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DFCB8(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100411758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100411788(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100411888(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100411900(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004118D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100411900(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E04DC(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004119C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1004119F0(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100411AF0(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100411B68(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100411B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100411B68(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E00EC(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100411C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100411C58(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100411D58(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100411DD0(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100411DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100411DD0(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003E278C(v3, v8, v6, v11, &v10);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100411E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100411EC4(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100411FC4(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10041203C(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100412014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10041203C(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DAB28(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004120FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10041212C(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10041222C(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004122A4(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10041227C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004122A4(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DAF50(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100412364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100412394(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100412494(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10041250C(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004124E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_10041250C(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DB3BC(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004125CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1004125FC(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1004126FC(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100412774(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_10041274C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100412774(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v11[0] = *(a1 + 48);
        v11[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v10, (a1 + 64));
        sub_100060E84(&v9, (a1 + 72));
        sub_1003DB828(v3, v8, v6, v11);
        sub_10000A1EC(&v9);
        sub_10001021C(&v10);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100412834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100412864(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100412964(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004129DC(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004129B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004129DC(uint64_t a1)
{
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
        v6 = *(a1 + 40);
        v7 = *(a1 + 56);
        v10[0] = *(a1 + 48);
        v10[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v9, (a1 + 64));
        sub_100060E84(&v8, (a1 + 72));
        sub_1003DBC94(v3, a1 + 24, v6, v10);
        sub_10000A1EC(&v8);
        sub_10001021C(&v9);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100412AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100412AD0(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100412BD0(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100412C48(v3);
  sub_10040EC9C(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100412C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10040EC9C(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100412C48(uint64_t a1)
{
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
        v6 = *(a1 + 56);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v8, (a1 + 64));
        sub_100060E84(&v7, (a1 + 72));
        sub_1003DCEFC(v3);
        sub_10000A1EC(&v7);
        sub_10001021C(&v8);
        if (v6)
        {
          sub_100004A34(v6);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100412CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100412D20(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = a1;
  sub_100A5C2CC(v2, &v1, "kCarrierEntitlementsQueryEntitlements", sub_10006E6B0, 3);
}

void sub_100412FFC(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v21 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v21);
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
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 8))(&v19, v14, 1);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = v19;
  if (v19)
  {
    v18 = *a5;
    v17 = a5[1];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v22[0] = off_101E4B998;
    v22[1] = v18;
    v22[2] = v17;
    v22[3] = v22;
    (*(*v16 + 256))(v16, v22);
    sub_10000FF50(v22);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_1004131BC(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000FF50(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  _Unwind_Resume(a1);
}

void sub_100413200(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v21 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v21);
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
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 8))(&v19, v14, 1);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = v19;
  if (v19)
  {
    v18 = *a5;
    v17 = a5[1];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v22[0] = off_101E4BA18;
    v22[1] = v18;
    v22[2] = v17;
    v22[3] = v22;
    (*(*v16 + 248))(v16, v22);
    sub_1003EDCF8(v22);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_1004133B8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003EDCF8(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  _Unwind_Resume(a1);
}

void sub_1004133FC(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
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
  __p[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, __p);
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
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 8))(&v19, v13, 1);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v15[0] = a4;
  v15[1] = "kCarrierEntitlementsPushToken";
  sub_100006354(v15, &object);
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  __p[0] = 0;
  (*(*v19 + 344))(v19, v17, __p);
  sub_100005978(__p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_1004135BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100005978(&a21);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(a1);
}

void sub_100413620()
{
  if (v0)
  {
    JUMPOUT(0x100413618);
  }

  JUMPOUT(0x100413610);
}

void sub_100413630(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v21 = 0;
  v22 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v17[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v17);
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
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 8))(&v21, v14, 1);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v21)
  {
    v20 = 0;
    (*(*v21 + 352))(&v20);
    if (v20)
    {
      ctu::cf_to_xpc(&v18, v20, v16);
      v17[0] = *a5;
      v17[1] = "kCarrierPhoneNumberSignatureInfo";
      sub_10000F688(v17, &v18, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v18);
      v18 = 0;
    }

    sub_10001021C(&v20);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }
}

void sub_1004137E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_10001021C(&a14);
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10041380C()
{
  if (v0)
  {
    JUMPOUT(0x100413804);
  }

  JUMPOUT(0x1004137FCLL);
}

void *sub_100413844(void *a1)
{
  *a1 = off_101E4B998;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100413890(void *a1)
{
  *a1 = off_101E4B998;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_100413968(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101E4B998;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004139A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1004139B0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1004139F0(uint64_t a1, BOOL *a2)
{
  v4 = xpc_BOOL_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kCarrierEntitlementsRefreshUserAuthToken";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t sub_100413A74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100413AC0(void *a1)
{
  *a1 = off_101E4BA18;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100413B0C(void *a1)
{
  *a1 = off_101E4BA18;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_100413BE4(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101E4BA18;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100413C1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100413C2C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

const void **sub_100413C6C(uint64_t a1, const void **a2)
{
  v7 = *a2;
  if (v7)
  {
    CFRetain(v7);
  }

  ctu::cf_to_xpc(&v5, v7, a2);
  v4[0] = *(a1 + 8);
  v4[1] = "kCarrierEntitlementsGetUserAuthToken";
  sub_10000F688(v4, &v5, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
  v5 = 0;
  return sub_10002D760(&v7);
}

uint64_t sub_100413D14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100413D60(id a1)
{
  ctu::OsLogContext::OsLogContext(v1, kCtLoggingSystemName, "ent.ctl");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v1);
}

uint64_t sub_100413DB0(uint64_t result, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a6 = a2;
  *(a6 + 4) = result;
  *(a6 + 12) = 2080;
  return result;
}

void sub_100413DEC(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    __TUAssertTrigger();
  }

  v4 = objc_autoreleasePoolPush();
  [(objc_class *)off_101FB23F8() donateWithEventIdentifier:a1 bundleIdentifier:a2 completionHandler:&stru_101E4BAD8];

  objc_autoreleasePoolPop(v4);
}

void sub_100413E7C(CTBMDiscoverabilitySignalStreamInterface *a1)
{
  CTBMDiscoverabilitySignalStreamInterface::~CTBMDiscoverabilitySignalStreamInterface(a1);

  operator delete();
}

Class sub_100413EB4()
{
  if (qword_101FBA370 != -1)
  {
    sub_10176FB98();
  }

  result = objc_getClass("TipEventProxy");
  qword_101FBA368 = result;
  off_101FB23F8 = sub_100413F08;
  return result;
}

void sub_100413F6C(LazuliProvisioningWebHelper *a1)
{
  LazuliProvisioningWebHelper::~LazuliProvisioningWebHelper(a1);

  operator delete();
}

void sub_100413FA8(uint64_t a1, uint64_t a2)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  (*(**a2 + 56))(&v45);
  v4 = (*(**a2 + 24))();
  v42 = 0;
  v43 = 0;
  v44 = 0;
  (*(**a2 + 48))(&v42);
  memset(&__str, 0, sizeof(__str));
  sub_100416A54(v40, &v45);
  LazuliProvisioningWebHelper::getCookie(v40, &__str);
  sub_1000DD0AC(v40, v40[1]);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=((a1 + 256), &__str);
  }

  v39 = 2;
  v6 = *(a1 + 344);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 336);
      if (v8)
      {
        if (v4 != 511)
        {
          if (v4 == 403)
          {
            v13 = LazuliProvisioningWebHelper::requiresPSAccess(a1, &v45);
            v14 = *(**(a1 + 48) + 16);
            if (!v13)
            {
              v21 = *v14();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "C";
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 forbidden response", buf, 0xCu);
              }

              *buf = 10;
              LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v39, 0x100000193, buf, 0, 0);
              LazuliProvisioningServerWrapper::handleForbiddenResponse(v8);
            }

            v15 = *v14();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "C";
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 - Needs PS access response", buf, 0xCu);
            }

            *buf = 14;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v39, 0x100000193, buf, 0, 0);
            LazuliProvisioningServerWrapper::setNeedsPSAccess(v8, 1);
            goto LABEL_22;
          }

          if (v4 == 200)
          {
            v9 = HIBYTE(v44);
            if (v44 < 0)
            {
              v9 = v43;
            }

            if (v9)
            {
              v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v11 = sub_100701D5C(&v39);
                *buf = 136315394;
                *&buf[4] = "C";
                *&buf[12] = 2080;
                *&buf[14] = v11;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK with XML: %s", buf, 0x16u);
              }

              if (*(a1 + 279) < 0)
              {
                sub_100005F2C(__dst, *(a1 + 256), *(a1 + 264));
              }

              else
              {
                *__dst = *(a1 + 256);
                v38 = *(a1 + 272);
              }

              sub_10006F264(v34, (a1 + 392));
              v32.__r_.__value_.__s.__data_[0] = 0;
              v33 = 0;
              LazuliProvisioningServerWrapper::handleXml(v8, &v42, __dst, &v45, &v39, v34, &v32);
              if (v33 == 1 && SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v32.__r_.__value_.__l.__data_);
              }

              if (v36 == 1 && v35 < 0)
              {
                operator delete(v34[0]);
              }

              if ((SHIBYTE(v38) & 0x80000000) == 0)
              {
                goto LABEL_22;
              }

              v27 = __dst[0];
LABEL_78:
              operator delete(v27);
LABEL_22:
              sub_100004A34(v7);
              goto LABEL_23;
            }

            v22 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v22 = __str.__r_.__value_.__l.__size_;
            }

            if (v22)
            {
              v23 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v24 = __str.__r_.__value_.__l.__size_;
                }

                if (v24)
                {
                  v25 = "YES";
                }

                else
                {
                  v25 = "NO";
                }

                *buf = 136315394;
                *&buf[4] = "C";
                *&buf[12] = 2080;
                *&buf[14] = v25;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK [cookie: %s] Now awaiting OTP", buf, 0x16u);
              }

              *buf = 10;
              LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v39, 0x1000000C8, buf, 0, 0);
              LazuliProvisioningWebHelper::startOtpReceptionTimer(a1);
              goto LABEL_22;
            }
          }

          v26 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
          {
            sub_10176FBAC();
          }

          *buf = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v39, v4 | &_mh_execute_header, buf, 0, 0);
          goto LABEL_22;
        }

        v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v17 = __str.__r_.__value_.__l.__size_;
          }

          if (v17)
          {
            v18 = "YES";
          }

          else
          {
            v18 = "NO";
          }

          *buf = 136315394;
          *&buf[4] = "C";
          *&buf[12] = 2080;
          *&buf[14] = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 511 redirect [cookie: %s]", buf, 0x16u);
        }

        v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = __str.__r_.__value_.__l.__size_;
        }

        v20 = v19 != 0;
        *buf = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v39, 0x1000001FFLL, buf, 0, 0);
        memset(buf, 0, 32);
        sub_100416A54(v31, &v45);
        LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v31, buf);
        sub_1000DD0AC(v31, v31[1]);
        sub_100416748(__p, buf);
        LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
        if (v30 == 1 && __p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v28, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v28 = __str;
        }

        LazuliProvisioningServerWrapper::response511(v8, &v28, 1, v20);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if (buf[24] != 1)
        {
          goto LABEL_22;
        }

        v27 = *buf;
        if (!*buf)
        {
          goto LABEL_22;
        }

        *&buf[8] = *buf;
        goto LABEL_78;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "C";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [%s] Failed to get controller", buf, 0xCu);
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  sub_1000DD0AC(&v45, v46);
}

void sub_1004147D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46, uint64_t a47)
{
  sub_100004A34(v47);
  if (*(v48 - 145) < 0)
  {
    operator delete(*(v48 - 168));
  }

  if (*(v48 - 121) < 0)
  {
    operator delete(*(v48 - 144));
  }

  sub_1000DD0AC(v48 - 120, *(v48 - 112));
  _Unwind_Resume(a1);
}

void sub_100414958(uint64_t a1, uint64_t a2)
{
  v4 = (*(**a2 + 24))();
  v25 = 0;
  v26 = 0;
  v27 = 0;
  (*(**a2 + 56))(&v25);
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "C";
    *&buf[12] = 1024;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] Response [%d] for OTP", buf, 0x12u);
  }

  v24 = 4;
  v6 = *(a1 + 344);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 336);
      if (v8)
      {
        if (v4 == 511)
        {
          *buf = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v24, 0x1000001FFLL, buf, 0, 0);
          memset(buf, 0, 32);
          sub_100416A54(v16, &v25);
          LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v16, buf);
          sub_1000DD0AC(v16, v16[1]);
          sub_100416748(v14, buf);
          LazuliProvisioningWebHelper::showAlertIfNeeded(a1, v14);
          if (v15 == 1 && v14[0])
          {
            v14[1] = v14[0];
            operator delete(v14[0]);
          }

          v12[0] = 0;
          v12[1] = 0;
          v13 = 0;
          LazuliProvisioningServerWrapper::response511(v8, v12, 1, 0);
          if (SHIBYTE(v13) < 0)
          {
            operator delete(v12[0]);
          }

          if (buf[24] != 1)
          {
            goto LABEL_22;
          }

          v9 = *buf;
          if (!*buf)
          {
            goto LABEL_22;
          }

          *&buf[8] = *buf;
        }

        else
        {
          if (v4 != 200)
          {
            if (LazuliProvisioningWebHelper::is4XXor5XXError(a1, v4))
            {
              *buf = 10;
              LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v24, v4 | &_mh_execute_header, buf, 0, 0);
              *buf = 1;
              LazuliProvisioningServerWrapper::failedFatally(v8);
            }

            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v8, &v24, v4 | &_mh_execute_header, buf, 0, 0);
            v11[0] = _NSConcreteStackBlock;
            v11[1] = 0x40000000;
            v11[2] = sub_100414F1C;
            v11[3] = &unk_101E4BBC0;
            v11[4] = a1;
            v29 = 0;
            v28[0] = off_101E4BC98;
            v28[1] = _Block_copy(v11);
            v29 = v28;
            LazuliProvisioningWebHelper::responseUnknown(a1, a2, v28);
            sub_100416C34(v28);
            goto LABEL_22;
          }

          (*(**a2 + 48))(buf);
          v22[0] = 0;
          v22[1] = 0;
          v23 = 0;
          sub_10006F264(v19, (a1 + 392));
          __p.__r_.__value_.__s.__data_[0] = 0;
          v18 = 0;
          LazuliProvisioningServerWrapper::handleXml(v8, buf, v22, &v25, &v24, v19, &__p);
          if (v18 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v21 == 1 && v20 < 0)
          {
            operator delete(v19[0]);
          }

          if (SHIBYTE(v23) < 0)
          {
            operator delete(v22[0]);
          }

          if ((buf[23] & 0x80000000) == 0)
          {
LABEL_22:
            sub_100004A34(v7);
            goto LABEL_23;
          }

          v9 = *buf;
        }

        operator delete(v9);
        goto LABEL_22;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    sub_10176FC28();
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_23:
  sub_1000DD0AC(&v25, v26);
}

void sub_100414DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_100416C34(v50 - 128);
  sub_100004A34(v49);
  sub_1000DD0AC(v50 - 152, *(v50 - 144));
  _Unwind_Resume(a1);
}

void sub_100414F44(uint64_t a1, uint64_t a2)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  (*(**a2 + 56))(&v45);
  v4 = (*(**a2 + 24))();
  v42 = 0;
  v43 = 0;
  v44 = 0;
  (*(**a2 + 48))(&v42);
  memset(&__str, 0, sizeof(__str));
  sub_100416A54(v40, &v45);
  LazuliProvisioningWebHelper::getCookie(v40, &__str);
  sub_1000DD0AC(v40, v40[1]);
  v39 = 1;
  v5 = *(a1 + 344);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 336);
      if (v7)
      {
        switch(v4)
        {
          case 511:
            v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = __str.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                v17 = "YES";
              }

              else
              {
                v17 = "NO";
              }

              *buf = 136315394;
              *&buf[4] = "C";
              *&buf[12] = 2080;
              *&buf[14] = v17;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 511 redirect [cookie: %s]", buf, 0x16u);
            }

            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v39, 0x1000001FFLL, buf, 0, 0);
            v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v18 = __str.__r_.__value_.__l.__size_;
            }

            v19 = v18 != 0;
            memset(buf, 0, 32);
            sub_100416A54(v30, &v45);
            LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v30, buf);
            sub_1000DD0AC(v30, v30[1]);
            sub_100416748(__p, buf);
            LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
            if (v29 == 1 && __p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
            }

            else
            {
              __dst = __str;
            }

            LazuliProvisioningServerWrapper::response511(v7, &__dst, 0, v19);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (buf[24] != 1)
            {
              goto LABEL_18;
            }

            v25 = *buf;
            if (!*buf)
            {
              goto LABEL_18;
            }

            *&buf[8] = *buf;
            break;
          case 403:
            v12 = LazuliProvisioningWebHelper::requiresPSAccess(a1, &v45);
            v13 = *(**(a1 + 48) + 16);
            if (!v12)
            {
              v20 = *v13();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "C";
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 forbidden response", buf, 0xCu);
              }

              *buf = 10;
              LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v39, 0x100000193, buf, 0, 0);
              LazuliProvisioningServerWrapper::handleForbiddenResponse(v7);
            }

            v14 = *v13();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "C";
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 - Needs PS access response", buf, 0xCu);
            }

            *buf = 14;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v39, 0x100000193, buf, 0, 0);
            LazuliProvisioningServerWrapper::setNeedsPSAccess(v7, 1);
            goto LABEL_18;
          case 200:
            v8 = HIBYTE(v44);
            if (v44 < 0)
            {
              v8 = v43;
            }

            if (v8)
            {
              v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                v10 = sub_100701D5C(&v39);
                *buf = 136315394;
                *&buf[4] = "C";
                *&buf[12] = 2080;
                *&buf[14] = v10;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK with XML: %s", buf, 0x16u);
              }

              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&v38, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                v38 = __str;
              }

              sub_10006F264(v35, (a1 + 392));
              v33.__r_.__value_.__s.__data_[0] = 0;
              v34 = 0;
              LazuliProvisioningServerWrapper::handleXml(v7, &v42, &v38, &v45, &v39, v35, &v33);
              if (v34 == 1 && SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v33.__r_.__value_.__l.__data_);
              }

              if (v37 == 1 && v36 < 0)
              {
                operator delete(v35[0]);
              }

              if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_18;
              }

              v25 = v38.__r_.__value_.__r.__words[0];
              break;
            }

            v21 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v21 = __str.__r_.__value_.__l.__size_;
            }

            if (!v21)
            {
LABEL_57:
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 0x40000000;
              aBlock[2] = sub_100415C18;
              aBlock[3] = &unk_101E4BBE0;
              aBlock[4] = a1;
              v49 = 0;
              v48[0] = off_101E4BC98;
              v48[1] = _Block_copy(aBlock);
              v49 = v48;
              LazuliProvisioningWebHelper::responseUnknown(a1, a2, v48);
              sub_100416C34(v48);
LABEL_18:
              sub_100004A34(v6);
              goto LABEL_19;
            }

            std::string::operator=((a1 + 256), &__str);
            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v39, 0x1000000C8, buf, 0, 0);
            v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v23 = __str.__r_.__value_.__l.__size_;
              }

              if (v23)
              {
                v24 = "YES";
              }

              else
              {
                v24 = "NO";
              }

              *buf = 136315394;
              *&buf[4] = "C";
              *&buf[12] = 2080;
              *&buf[14] = v24;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK [cookie: %s]", buf, 0x16u);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&v31, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
            }

            else
            {
              v31 = __str;
            }

            v32 = 1;
            sub_100415934(a1, &v31);
            if (v32 != 1 || (SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_18;
            }

            v25 = v31.__r_.__value_.__r.__words[0];
            break;
          default:
            goto LABEL_57;
        }

        operator delete(v25);
        goto LABEL_18;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    sub_10176FC28();
  }

  if (v6)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  sub_1000DD0AC(&v45, v46);
}

void sub_100415798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v57);
  if (*(v58 - 193) < 0)
  {
    operator delete(*(v58 - 216));
  }

  if (*(v58 - 169) < 0)
  {
    operator delete(*(v58 - 192));
  }

  sub_1000DD0AC(v58 - 168, *(v58 - 160));
  _Unwind_Resume(a1);
}

void sub_100415934(uint64_t a1, const std::string *a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 136);
    if (*(a1 + 159) < 0)
    {
      v5 = *v5;
    }

    v6 = "NO";
    v7 = a2[1].__r_.__value_.__s.__data_[0];
    *&buf[4] = "C";
    *buf = 136315650;
    *&buf[12] = 2080;
    if (v7)
    {
      v6 = "YES";
    }

    *&buf[14] = v5;
    *&buf[22] = 2080;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting access with parameters on URL: %s [cookie: %s]", buf, 0x20u);
  }

  *&buf[8] = 0uLL;
  *buf = &buf[8];
  if (a2[1].__r_.__value_.__s.__data_[0] == 1)
  {
    sub_10000501C(&__p, "Cookie");
    __str.__r_.__value_.__r.__words[0] = &__p;
    v8 = sub_100416DA4(buf, &__p);
    std::string::operator=((v8 + 56), a2);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  LazuliProvisioningWebHelper::getHeaders(a1, &qword_101802A60, &__p);
  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  v13 = 2;
  sub_100A9C1EC(&__p, &__str);
  v17[0] = off_101E4BDA8;
  v17[1] = a1;
  v17[3] = v17;
  LOBYTE(v9) = 0;
  v11 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, &v13, &__str, buf, v17, &v9);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9);
  }

  sub_100416C34(v17);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(&__p, v15);
  sub_1000DD0AC(buf, *&buf[8]);
}

uint64_t sub_100415C20(uint64_t a1)
{
  v18 = 0;
  memset(__dst, 0, sizeof(__dst));
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  sub_10038E288(__dst, CurrentConfig);
  v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 136);
    if (*(a1 + 159) < 0)
    {
      v4 = *v4;
    }

    v5 = sub_1004CDF60(&__dst[12] + 3);
    *buf = 136315650;
    *&buf[4] = "C";
    *&buf[12] = 2082;
    *&buf[14] = v4;
    *&buf[22] = 2082;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting first access on: [%{public}s] with interface [%{public}s] ", buf, 0x20u);
  }

  if (HIDWORD(__dst[12]) == 3)
  {
    v15.__r_.__value_.__s.__data_[0] = 0;
    v16 = 0;
    sub_100415934(a1, &v15);
    if (v16 == 1 && SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v15.__r_.__value_.__r.__words[0];
LABEL_18:
      operator delete(v6);
    }
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    sub_100A9BE74(buf, &__str);
    sub_1000DD0AC(buf, *&buf[8]);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_100416868(buf, "User-Agent", "iPhoneOS");
    sub_1000DF684(&v11, buf, 1);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    *buf = 1;
    v19[0] = off_101E4BD28;
    v19[1] = a1;
    v19[3] = v19;
    LOBYTE(__p) = 0;
    v10 = 0;
    LazuliProvisioningWebHelper::runWithTimeout(a1, buf, &__str, &v11, v19, &__p);
    if (v10 == 1 && v9 < 0)
    {
      operator delete(__p);
    }

    sub_100416C34(v19);
    sub_1000DD0AC(&v11, v12);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = __str.__r_.__value_.__r.__words[0];
      goto LABEL_18;
    }
  }

  return sub_10038E4E4(__dst);
}

void sub_100415EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v37 - 128);
  sub_1000DD0AC(&a18, a19);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_10038E4E4(&a35);
  _Unwind_Resume(a1);
}

void sub_100415F78(uint64_t a1, uint64_t a2)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  (*(**a2 + 56))(&v31);
  v4 = (*(**a2 + 24))();
  v28 = 0;
  v29 = 0;
  v30 = 0;
  (*(**a2 + 48))(&v28);
  v5 = *(a1 + 344);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 336);
      if (v7)
      {
        v8 = HIBYTE(v30);
        if (v30 < 0)
        {
          v8 = v29;
        }

        if (v8 && v4 == 200)
        {
          v26[0] = 0;
          v26[1] = 0;
          v27 = 0;
          LODWORD(v19[0]) = 5;
          sub_10006F264(v23, (a1 + 392));
          __p.__r_.__value_.__s.__data_[0] = 0;
          v22 = 0;
          LazuliProvisioningServerWrapper::handleXml(v7, &v28, v26, &v31, v19, v23, &__p);
          if (v22 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v25 == 1 && v24 < 0)
          {
            operator delete(v23[0]);
          }

          if ((SHIBYTE(v27) & 0x80000000) == 0)
          {
            goto LABEL_20;
          }

          v9 = v26[0];
        }

        else
        {
          if (v4 != 511 && v4 != 400)
          {
            v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
            {
              sub_10176FCA8();
            }

            LODWORD(v19[0]) = 5;
            v15 = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v7, v19, v4 | &_mh_execute_header, &v15, 0, 0);
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 0x40000000;
            aBlock[2] = sub_1004164D0;
            aBlock[3] = &unk_101E4BC00;
            aBlock[4] = a1;
            v35 = 0;
            v34[0] = off_101E4BC98;
            v34[1] = _Block_copy(aBlock);
            v35 = v34;
            LazuliProvisioningWebHelper::responseUnknown(a1, a2, v34);
            sub_100416C34(v34);
            goto LABEL_20;
          }

          LazuliProvisioningServerWrapper::eraseFullAndRefreshXmlForServer(*(a1 + 336));
          *v19 = 0u;
          v20 = 0u;
          sub_100416A54(v18, &v31);
          LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v18, v19);
          sub_1000DD0AC(v18, v18[1]);
          sub_100416748(v16, v19);
          LazuliProvisioningWebHelper::showAlertIfNeeded(a1, v16);
          if (v17 == 1 && v16[0])
          {
            v16[1] = v16[0];
            operator delete(v16[0]);
          }

          isFirstRetryAttempt = LazuliProvisioningServerWrapper::isFirstRetryAttempt(v7);
          LazuliProvisioningWebHelper::restartProvisioning(a1, isFirstRetryAttempt);
          LazuliProvisioningServerWrapper::resetPendingRefresh(v7);
          v14 = 10;
          v15 = 5;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v15, v4 | &_mh_execute_header, &v14, 0, 0);
          if (BYTE8(v20) != 1 || (v9 = v19[0]) == 0)
          {
LABEL_20:
            sub_100004A34(v6);
            goto LABEL_21;
          }

          v19[1] = v19[0];
        }

        operator delete(v9);
        goto LABEL_20;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    sub_10176FC28();
  }

  if (v6)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  sub_1000DD0AC(&v31, v32);
}

void sub_1004163B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  sub_100416C34(v44 - 104);
  sub_100004A34(v43);
  if (*(v44 - 129) < 0)
  {
    operator delete(*(v44 - 152));
  }

  sub_1000DD0AC(v44 - 128, *(v44 - 120));
  _Unwind_Resume(a1);
}

void sub_1004164F8(uint64_t a1)
{
  v2 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 136);
    if (*(a1 + 159) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315394;
    *&buf[4] = "C";
    *&buf[12] = 2082;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting refresh on: [%{public}s]", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  LazuliProvisioningWebHelper::getHeaders(a1, &qword_101802A60, buf);
  memset(&__str, 0, sizeof(__str));
  sub_100A9BE74(buf, &__str);
  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  v9 = 2;
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  v11[0] = off_101E4BE28;
  v11[1] = a1;
  v11[3] = v11;
  LOBYTE(__p) = 0;
  v6 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, &v9, &__str, &v7, v11, &__p);
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v11);
  sub_1000DD0AC(&v7, v8[0]);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(buf, *&buf[8]);
}

void sub_1004166D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v29 - 80);
  sub_1000DD0AC(&a18, a21);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  sub_1000DD0AC(v29 - 48, *(v29 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_100416748(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_100416798(a1, a2);
  return a1;
}

void sub_100416778(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_101760EC4(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100416798(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_1004167EC(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_1004167EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_10041684C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100416868(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 24, a3);
  return a1;
}

void sub_1004168A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100416940(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4BC48;
  LazuliProvisioningWebHelper::LazuliProvisioningWebHelper((a1 + 3), a2);
  a1[3] = &off_101E4BB68;
  return a1;
}

void sub_1004169D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4BC48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100416A54(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100416AAC(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100416AAC(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000DF708(v5, (v5 + 8), (v4 + 4));
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

void *sub_100416B54(uint64_t a1, void *a2)
{
  *a2 = off_101E4BC98;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_100416BA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_100416BE8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4BD08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100416C34(uint64_t a1)
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

uint64_t sub_100416D24(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4BD28;
  a2[1] = v2;
  return result;
}

uint64_t sub_100416D58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100416DA4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = *sub_1000DFA58(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_100416EE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4BDA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100416F18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100416FD4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4BE28;
  a2[1] = v2;
  return result;
}

uint64_t sub_100417028(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100417074(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10041726C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_free_exception(v15);
  if (a10)
  {
    sub_100004A34(a10);
  }

  v17 = *(v14 + 8);
  if (v17)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(a1);
}

void sub_100417314(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_retain(v1);
  }

  sub_10031BE4C();
}

void sub_1004173AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (a9)
  {
    sub_10176FD24(a9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004173D4(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "DATA.dw-apn");
  sub_100417860(v6, a3, &v13);
  ctu::OsLogContext::~OsLogContext(&v13);
  v7 = *(a2 + 8);
  v13.var0 = *a2;
  v13.var1.fRef = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v21[0] = off_101E2B528;
  v21[1] = sub_1000A7B68;
  v21[3] = v21;
  sub_1004178EC((a1 + 48));
  sub_1000A8744(v21);
  if (v13.var1.fRef)
  {
    sub_100004A34(v13.var1.fRef);
  }

  *a1 = off_101E4BEB0;
  *(a1 + 56) = *a2;
  v8 = *(a2 + 8);
  *(a1 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "DarwinPDPConfig");
  v9 = *(a1 + 24);
  v18 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  object = 0;
  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    dispatch_release(v18);
  }

  if (v20 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 88) = 0;
  v10 = *(a1 + 64);
  v15 = *(a1 + 56);
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&v13, "DarwinPDPConfig");
  PersonalitiesTracker::PersonalitiesTracker();
  if (v14 < 0)
  {
    operator delete(v13.var0);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *(a1 + 264) = a1 + 272;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = -1;
  *(a1 + 392) = a1 + 400;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = a1 + 424;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  LODWORD(v13.var0) = 1;
  v15 = &v13;
  sub_100423C00(a1 + 264, &v13);
  v15 = &v13;
  v11 = sub_100423CEC(a1 + 312, &v13);
  if (capabilities::ct::supportsGemini(v11))
  {
    LODWORD(v13.var0) = 2;
    v15 = &v13;
    sub_100423C00(a1 + 264, &v13);
    v15 = &v13;
    sub_100423CEC(a1 + 312, &v13);
  }

  return a1;
}

void sub_1004176EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object, dispatch_object_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  v29 = v26[10];
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = v26[8];
  if (v30)
  {
    sub_100004A34(v30);
  }

  v31 = v26[6];
  v26[6] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  ctu::OsLogLogger::~OsLogLogger((v26 + 5));
  sub_1000C0544(v27);
  PDPConfigInterface::~PDPConfigInterface(v26);
  _Unwind_Resume(a1);
}

void *sub_100417860(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1004178C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

capabilities::ct *sub_1004178EC(capabilities::ct *a1)
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

void sub_100417A44(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

void sub_100417AB0(uint64_t a1, uint64_t a2, ServiceStage *a3)
{
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: shutting down ...", buf, 2u);
  }

  ServiceStage::holdOffStage(&group[1], a3);
  *buf = 0;
  v8 = 0;
  sub_100004AA0(buf, (a1 + 8));
  operator new();
}

void sub_100417C00(uint64_t a1)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100417D10;
  handler[3] = &unk_101E4BF88;
  handler[4] = a1;
  v2 = (a1 + 384);
  v3 = notify_register_dispatch("com.apple.system.config.network_change.dns", (a1 + 384), *(a1 + 24), handler);
  v4 = *(a1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I dnsNotificationHandler: failed to register", v6, 2u);
    }

    *v2 = -1;
  }

  else if (v5)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I dnsNotificationHandler: registered successfully", v6, 2u);
  }
}

void sub_100417D10(uint64_t a1, int val)
{
  v3 = *(a1 + 32);
  is_valid_token = notify_is_valid_token(val);
  v5 = *(v3 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (is_valid_token)
  {
    if (v6)
    {
      LODWORD(v21) = 67109120;
      HIDWORD(v21) = val;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I dnsNotificationHandler: token=%d", &v21, 8u);
    }

    v7 = *(v3 + 288);
    for (i = *(v3 + 296); v7 != i; v7 += 2)
    {
      v9 = *v7;
      v10 = v7[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v9 + 208))(v9);
      if (v10)
      {
        sub_100004A34(v10);
      }
    }

    ServiceMap = Registry::getServiceMap(*(v3 + 56));
    v12 = ServiceMap;
    if ((v13 & 0x8000000000000000) != 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    v21 = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, &v21);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        if (!v19)
        {
LABEL_22:
          if ((v20 & 1) == 0)
          {
            sub_100004A34(v18);
          }

          return;
        }

LABEL_21:
        (*(*v19 + 1200))(v19);
        goto LABEL_22;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v6)
  {
    LODWORD(v21) = 67109120;
    HIDWORD(v21) = val;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I dnsNotificationHandler: token=%d is not valid", &v21, 8u);
  }
}

void sub_100417F44(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100417F80(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: bootstrap 2...", buf, 2u);
  }

  sub_100417C00(a1);
  sub_100418168(a1);
  Registry::createRestModuleOneTimeUseConnection(&v6, *(a1 + 56));
  ctu::RestModule::connect();
  if (v7)
  {
    sub_100004A34(v7);
  }

  v13 = 0;
  v10[3] = 0;
  v9 = 0;
  PersonalitiesTracker::bind();
  sub_100249B60(v8);
  sub_100249BE0(v10);
  v3 = sub_100249C60(buf);
  v4 = capabilities::ct::supportedPDPContextCount(v3);
  sub_100418418(a1, v4, buf);
  sub_1000FA138((a1 + 288));
  *(a1 + 288) = *buf;
  *(a1 + 304) = v12;
  v12 = 0;
  memset(buf, 0, sizeof(buf));
  v10[0] = buf;
  sub_1000212F4(v10);
  v5 = (*(a1 + 296) - *(a1 + 288)) >> 4;
  if (v5 != v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176FD5C((a1 + 296), (a1 + 288), buf);
      v5 = *buf;
    }

    if (v5 != v4)
    {
      __TUAssertTrigger();
    }
  }
}

void sub_100418128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_100249B60(va);
  sub_100249BE0(va1);
  sub_100249C60(va2);
  _Unwind_Resume(a1);
}

void sub_100418168(uint64_t a1)
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
  *v18 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v18);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_30;
    }

    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_10:
  if (!(*(*v10 + 32))(v10))
  {
    goto LABEL_30;
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I configuring DNS overrides", v18, 2u);
  }

  sub_100419A00(@"FakePrimaryDns", v18);
  v13 = (a1 + 336);
  if (*(a1 + 359) < 0)
  {
    operator delete(*v13);
  }

  *v13 = *v18;
  *(a1 + 352) = *&v18[16];
  sub_100419A00(@"FakeSecondaryDns", v18);
  v14 = (a1 + 360);
  if (*(a1 + 383) < 0)
  {
    operator delete(*v14);
  }

  *v14 = *v18;
  *(a1 + 376) = *&v18[16];
  v15 = *(a1 + 359);
  if (v15 < 0)
  {
    if (!*(a1 + 344))
    {
      goto LABEL_21;
    }

LABEL_24:
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if ((v15 & 0x80000000) != 0)
      {
        v13 = *v13;
      }

      if (*(a1 + 383) < 0)
      {
        v14 = *v14;
      }

      *v18 = 136315394;
      *&v18[4] = v13;
      *&v18[12] = 2080;
      *&v18[14] = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Fake primary DNS: %s, fake secondary DNS: %s", v18, 0x16u);
    }

    goto LABEL_30;
  }

  if (*(a1 + 359))
  {
    goto LABEL_24;
  }

LABEL_21:
  v16 = *(a1 + 383);
  if (v16 < 0)
  {
    v16 = *(a1 + 368);
  }

  if (v16)
  {
    goto LABEL_24;
  }

LABEL_30:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1004183E4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100418418(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I creating PDP Managers", &buf, 2u);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v8 = dispatch_queue_create("SCWriteQueuePDP", v7);
  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v10 = dispatch_queue_create("IPConfigurationQueuePDP", v9);
  if (a2)
  {
    v11 = a1[8];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = a1[3];
    if (v12)
    {
      dispatch_retain(v12);
    }

    if (v8)
    {
      dispatch_retain(v8);
    }

    if (v10)
    {
      dispatch_retain(v10);
    }

    sub_1004724C4(&v15);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  v13 = a1[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (a3[1] - *a3) >> 4;
    buf = 134218240;
    *buf_4 = v14;
    v18 = 2048;
    v19 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I created %lu/%lu PDP Managers", &buf, 0x16u);
  }
}

void sub_100418720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, dispatch_object_t object, dispatch_object_t a12, dispatch_object_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (*(&a9 + 1))
  {
    sub_100004A34(*(&a9 + 1));
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    dispatch_release(a12);
  }

  if (a13)
  {
    dispatch_release(a13);
  }

  if (a15)
  {
    sub_100004A34(a15);
    if (!v18)
    {
LABEL_13:
      if (!v17)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if (!v18)
  {
    goto LABEL_13;
  }

  dispatch_release(v18);
  if (!v17)
  {
LABEL_15:
    sub_1000212F4(&a16);
    _Unwind_Resume(a1);
  }

LABEL_14:
  dispatch_release(v17);
  goto LABEL_15;
}

void sub_1004187B4(uint64_t a1, NSObject **a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: bootstrap 1...", v6, 2u);
  }

  v5 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sub_100418918(uint64_t a1)
{
  v16 = 0;
  if (getifaddrs(&v16))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176FE34();
    }
  }

  else
  {
    v2 = socket(2, 2, 0);
    if (v2 < 0)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176FE70();
      }
    }

    else
    {
      for (i = v16; i; i = i->ifa_next)
      {
        if (strnstr(i->ifa_name, "rd", 0x10uLL))
        {
          v31 = 0;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          *__n = 0u;
          v24 = 0u;
          *__dst = 0u;
          v14[1] = 0;
          v15 = 0;
          v14[0] = 0;
          sub_10000501C(v14, i->ifa_name);
          if (v15 >= 0)
          {
            v4 = v14;
          }

          else
          {
            v4 = v14[0];
          }

          strncpy(__dst, v4, 0x10uLL);
          if (ioctl(v2, 0xC0946990uLL, __dst) != -1 && LODWORD(__n[0]) && !strncmp(__n + 4, "CoreTelephonyHOVI", LODWORD(__n[0])))
          {
            v5 = *(a1 + 40);
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              if (v15 >= 0)
              {
                v6 = v14;
              }

              else
              {
                v6 = v14[0];
              }

              *buf = 136315138;
              *&buf[4] = v6;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I deleting virtual interface %s", buf, 0xCu);
            }

            v13 = 0;
            if (SHIBYTE(v15) < 0)
            {
              sub_100005F2C(v11, v14[0], v14[1]);
            }

            else
            {
              *v11 = *v14;
              v12 = v15;
            }

            if (SHIBYTE(v12) < 0)
            {
              sub_100005F2C(__p, v11[0], v11[1]);
            }

            else
            {
              *__p = *v11;
              v19 = v12;
            }

            v17 = 0;
            if (SHIBYTE(v19) < 0)
            {
              sub_100005F2C(buf, __p[0], __p[1]);
            }

            else
            {
              *buf = *__p;
              v33 = v19;
            }

            v20 = 0;
            if (ctu::cf::convert_copy())
            {
              v7 = v17;
              v17 = v20;
              v21 = v7;
              sub_100005978(&v21);
            }

            if (SHIBYTE(v33) < 0)
            {
              operator delete(*buf);
            }

            v13 = v17;
            v17 = 0;
            sub_100005978(&v17);
            if (SHIBYTE(v19) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v12) < 0)
            {
              operator delete(v11[0]);
            }

            RedirectFromName = NEVirtualInterfaceCreateRedirectFromName();
            if (RedirectFromName)
            {
              NEVirtualInterfaceInvalidate();
              CFRelease(RedirectFromName);
            }

            else
            {
              v9 = *(a1 + 40);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                if (v15 >= 0)
                {
                  v10 = v14;
                }

                else
                {
                  v10 = v14[0];
                }

                *buf = 136315138;
                *&buf[4] = v10;
                _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to create a reference to virtual interface %s", buf, 0xCu);
              }
            }

            sub_100005978(&v13);
          }

          if (SHIBYTE(v15) < 0)
          {
            operator delete(v14[0]);
          }
        }
      }

      close(v2);
    }

    freeifaddrs(v16);
  }
}

void sub_100418CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, const void *a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100005978(&a28);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_100418D60(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: start 1 ...", &v3, 2u);
  }

  v3 = a1;
  sub_100004AA0(&v4, (a1 + 8));
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100418EB8(uint64_t a1, void **a2, BOOL a3)
{
  if (capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 440);
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *buf = 136315906;
      *&buf[4] = "ipcInterfaceConfigReset";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      *&buf[18] = 2080;
      *&buf[20] = v8;
      *&buf[28] = 2080;
      *&buf[30] = asStringBool(a3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s cycle started: fResetStarted = %u (reason %s, start %s)", buf, 0x26u);
    }

    if (*(a1 + 440))
    {
      if (!*(a1 + 448))
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10176FEAC();
        }

        return;
      }

LABEL_31:
      ++*(a1 + 440);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      sub_1004217D0(&v23, *(a1 + 288), *(a1 + 296), (*(a1 + 296) - *(a1 + 288)) >> 4);
      *buf = a1;
      memset(&buf[8], 0, 24);
      sub_1004217D0(&buf[8], v23, v24, (v24 - v23) >> 4);
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&buf[32], *a2, a2[1]);
      }

      else
      {
        *&buf[32] = *a2;
        v29 = a2[2];
      }

      v30 = a3;
      operator new();
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
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
        if (!v17)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
LABEL_22:
      if ((v18 & 1) == 0)
      {
        sub_100004A34(v16);
      }

      if (*(a1 + 448))
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10176FF2C();
        }
      }

      else
      {
        v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
        v20 = dispatch_queue_create("ipcInterfaceConfigReset", v19);
        v21 = *(a1 + 448);
        *(a1 + 448) = v20;
        if (v21)
        {
          dispatch_release(v21);
        }

        v22 = *(a1 + 40);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "ipcInterfaceConfigReset";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s queue created", buf, 0xCu);
        }
      }

      goto LABEL_31;
    }

LABEL_20:
    sub_10000501C(__p, "Started reset of interfaces");
    (*(*v17 + 1160))(v17, 3, __p, 0);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_22;
  }
}

void sub_1004192D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_100419354(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a1 + 272);
  if (v3)
  {
    v6 = a1 + 272;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v6 != a1 + 272 && *(v6 + 32) <= a2)
    {
      v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "not-given";
        if (a3)
        {
          v8 = a3;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I refresh with ID: %s", &buf, 0xCu);
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
      *&buf = v11;
      v15 = sub_100009510(&v10[1].__m_.__sig, &buf);
      if (v15)
      {
        v17 = v15[3];
        v16 = v15[4];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v10);
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v16);
          v18 = 0;
          if (!v17)
          {
LABEL_34:
            if ((v18 & 1) == 0)
            {
              sub_100004A34(v16);
            }

            return;
          }

LABEL_21:
          buf = 0uLL;
          v23 = 0;
          if (a3)
          {
            v19 = a3;
          }

          else
          {
            v19 = "";
          }

          sub_10000501C(&buf, v19);
          sub_1004196C0(v17, &v20);
          (*(*v20 + 64))(v20);
          if (v21)
          {
            sub_100004A34(v21);
          }

          sub_100419790(v17, &v20);
          (*(*v20 + 64))(v20);
          if (v21)
          {
            sub_100004A34(v21);
          }

          sub_100419860(v17, &v20);
          if (v21)
          {
            sub_100004A34(v21);
          }

          sub_100419930(v17, &v20);
          (*(*v20 + 64))(v20, &buf);
          if (v21)
          {
            sub_100004A34(v21);
          }

          if (SHIBYTE(v23) < 0)
          {
            operator delete(buf);
          }

          goto LABEL_34;
        }
      }

      else
      {
        v17 = 0;
      }

      std::mutex::unlock(v10);
      v16 = 0;
      v18 = 1;
      if (!v17)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }
  }
}

void sub_100419650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004196C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  lpsrc = 0;
  v6 = 0;
  (*(*a1 + 56))(&lpsrc);
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100419790(uint64_t a1@<X0>, void *a2@<X8>)
{
  lpsrc = 0;
  v6 = 0;
  (*(*a1 + 56))(&lpsrc);
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100419860(uint64_t a1@<X0>, void *a2@<X8>)
{
  lpsrc = 0;
  v6 = 0;
  (*(*a1 + 56))(&lpsrc);
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100419930(uint64_t a1@<X0>, void *a2@<X8>)
{
  lpsrc = 0;
  v6 = 0;
  (*(*a1 + 56))(&lpsrc);
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100419A00(const __CFString *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = CFPreferencesCopyValue(a1, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v3)
  {
    v4 = v3;
    Length = CFStringGetLength(v3);
    if (Length)
    {
      usedBufLen = 0;
      v14.location = 0;
      v14.length = Length;
      CFStringGetBytes(v4, v14, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
      buffer = 0;
      v11 = 0;
      v12 = 0;
      sub_1000CFAD0(&buffer, usedBufLen + 1);
      v15.location = 0;
      v15.length = Length;
      CFStringGetBytes(v4, v15, 0x8000100u, 0, 0, buffer, Length, 0);
      if (Length >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1000A2378();
      }

      if (Length >= 0x17)
      {
        operator new();
      }

      HIBYTE(v9) = Length;
      memmove(&__dst, buffer, Length);
      *(&__dst + Length) = 0;
      v7 = v9;
      v6 = buffer;
      *a2 = __dst;
      a2[2] = v7;
      if (v6)
      {
        v11 = v6;
        operator delete(v6);
      }
    }

    CFRelease(v4);
  }
}

void sub_100419B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100419BCC(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 272);
  if (!v3)
  {
    return 0;
  }

  v5 = a1 + 272;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == a1 + 272 || *(v5 + 32) > a2)
  {
    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
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
  v18 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v18);
  if (!v14)
  {
    v16 = 0;
LABEL_18:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_16;
    }

LABEL_19:
    sub_100419930(v16, &v18);
    v6 = (*(*v18 + 64))(v18, a3);
    if (v19)
    {
      sub_100004A34(v19);
    }

    goto LABEL_21;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
  if (v16)
  {
    goto LABEL_19;
  }

LABEL_16:
  v6 = 0;
LABEL_21:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  return v6;
}

void sub_100419D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100419D84(uint64_t a1, signed int a2, int a3, int a4)
{
  v126 = a3;
  v127 = a2;
  v4 = *(a1 + 272);
  if (v4)
  {
    v6 = a3;
    v7 = a1 + 272;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v7 != a1 + 272 && *(v7 + 32) <= a2)
    {
      v120 = (*(**(a1 + 48) + 16))(*(a1 + 48));
      v9 = *v120;
      if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
      {
        WirelessTechnologyAsString();
        v10 = __p[0];
        v11 = "false";
        if ((SBYTE7(v123) & 0x80u) == 0)
        {
          v10 = __p;
        }

        if (a4)
        {
          v11 = "true";
        }

        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: tech: %s, forced: %s", buf, 0x16u);
        if (SBYTE7(v123) < 0)
        {
          operator delete(__p[0]);
        }
      }

      __p[0] = &v127;
      v12 = sub_100423CEC(a1 + 312, &v127);
      v13 = v12;
      if (a4)
      {
        *(v12 + 8) = 0;
        v14 = *v120;
        if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: dropped compatible technologies", __p, 2u);
        }

        if (v6)
        {
          goto LABEL_21;
        }

        v6 = *(v13 + 9);
        v116 = v13 + 9;
        if (v6)
        {
LABEL_22:
          memset(buf, 0, sizeof(buf));
          ServiceMap = Registry::getServiceMap(*(a1 + 56));
          v16 = ServiceMap;
          if (v17 < 0)
          {
            v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
            v19 = 5381;
            do
            {
              v17 = v19;
              v20 = *v18++;
              v19 = (33 * v19) ^ v20;
            }

            while (v20);
          }

          std::mutex::lock(ServiceMap);
          __p[0] = v17;
          v21 = sub_100009510(&v16[1].__m_.__sig, __p);
          if (v21)
          {
            v23 = v21[3];
            v22 = v21[4];
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v16);
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v22);
              v24 = 0;
LABEL_38:
              (*(*v23 + 120))(&cf, v23, v127, @"AllowsMultiplePDNConnectionsToSameAPN", kCFBooleanFalse);
              v27 = cf;
              v133[0] = 0;
              if (cf)
              {
                v28 = CFGetTypeID(cf);
                if (v28 == CFBooleanGetTypeID())
                {
                  ctu::cf::assign(v133, v27, v29);
                }
              }

              *(v13 + 41) = v133[0];
              sub_10000A1EC(&cf);
              if ((v24 & 1) == 0)
              {
                sub_100004A34(v22);
              }

              v30 = *(v13 + 41);
              v124 = 0;
              v125 = 0;
              sub_10041AEC0(a1, v127, &v124);
              if (v124)
              {
                sub_10041B304(a1, v127, v30, buf, 1, &v124);
              }

              *(v13 + 40) = sub_10041B40C(a1, v127, &v124);
              v31 = Registry::getServiceMap(*(a1 + 56));
              v32 = v31;
              if (v33 < 0)
              {
                v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
                v35 = 5381;
                do
                {
                  v33 = v35;
                  v36 = *v34++;
                  v35 = (33 * v35) ^ v36;
                }

                while (v36);
              }

              std::mutex::lock(v31);
              __p[0] = v33;
              v37 = sub_100009510(&v32[1].__m_.__sig, __p);
              if (v37)
              {
                v38 = v37[3];
                v39 = v37[4];
                if (v39)
                {
                  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
                  std::mutex::unlock(v32);
                  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v39);
                  if (!v38)
                  {
                    v40 = 0;
LABEL_65:
                    sub_100004A34(v39);
                    goto LABEL_66;
                  }

                  goto LABEL_59;
                }

                std::mutex::unlock(v32);
                if (v38)
                {
LABEL_59:
                  __p[0] = 0;
                  __p[1] = 0;
                  sub_100419790(v38, __p);
                  if ((*(*__p[0] + 96))(__p[0]))
                  {
                    v40 = (*(*__p[0] + 88))(__p[0]) ^ 1;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (__p[1])
                  {
                    sub_100004A34(__p[1]);
                  }

                  if (v39)
                  {
                    goto LABEL_65;
                  }

LABEL_66:
                  v42 = v125;
                  v43 = 2;
                  do
                  {
                    if (v40 && (v43 == 16 || v43 == 32 || v43 == 0x8000000))
                    {
                      v44 = v42;
                    }

                    else
                    {
                      sub_10041AEC0(a1, v127, __p);
                      v45 = __p[0];
                      v44 = __p[1];
                      __p[0] = 0;
                      __p[1] = 0;
                      v124 = v45;
                      v125 = v44;
                      if (v42)
                      {
                        sub_100004A34(v42);
                        if (__p[1])
                        {
                          sub_100004A34(__p[1]);
                        }
                      }

                      if (v45)
                      {
                        sub_10041B304(a1, v127, v30, buf, v43, &v124);
                      }
                    }

                    v46 = v43 >> 35;
                    v43 *= 2;
                    v42 = v44;
                  }

                  while (!v46);
                  if (*&buf[8] - *buf >= 0x21uLL)
                  {
                    v47 = 126 - 2 * __clz((*&buf[8] - (*buf + 16)) >> 4);
                    if (*&buf[8] == *buf + 16)
                    {
                      v48 = 0;
                    }

                    else
                    {
                      v48 = v47;
                    }

                    sub_100421918((*buf + 16), *&buf[8], v48, 1);
                  }

                  v49 = 2;
                  do
                  {
                    *__p = 0u;
                    v123 = 0u;
                    sub_10041B664(a1, v127, __p);
                    if (__p[0])
                    {
                      sub_10041B978(a1, v127, v30, buf, v49, __p, &v123);
                    }

                    if (*(&v123 + 1))
                    {
                      sub_100004A34(*(&v123 + 1));
                    }

                    if (__p[1])
                    {
                      sub_100004A34(__p[1]);
                    }

                    v50 = v49 >> 35;
                    v49 *= 2;
                  }

                  while (!v50);
                  sub_10041BC30(a1, v127, buf);
                  sub_10041C0C4(a1, v127, buf);
                  sub_10041C680(a1, v127, buf);
                  sub_10041CA18(a1, buf);
                  if (v127 == 1)
                  {
                    sub_10041CC0C(a1, 1, v30, buf);
                  }

                  __p[0] = 0;
                  __p[1] = 0;
                  *&v123 = 0;
                  v51 = sub_100007DEC(a1 + 264, &v127);
                  sub_10009A398(v51, __p);
                  v52 = __p[0];
                  if (*&buf[8] - *buf == __p[1] - __p[0])
                  {
                    if (__p[1] == __p[0])
                    {
LABEL_98:
                      *(v13 + 8) |= v6;
                      v55 = *v120;
                      v118 = 0;
                      if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
                      {
                        WirelessTechnologyList::asString(&cf, (v13 + 4));
                        if (v132 >= 0)
                        {
                          p_cf = &cf;
                        }

                        else
                        {
                          p_cf = cf;
                        }

                        *v133 = 136315138;
                        *&v133[4] = p_cf;
                        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: skipped - no changes detected, new compatible technologies: %s", v133, 0xCu);
                        if (v132 < 0)
                        {
                          operator delete(cf);
                        }

                        v118 = 0;
                      }

LABEL_147:
                      *v116 = v6;
                      cf = __p;
                      sub_1000212F4(&cf);
                      if (v125)
                      {
                        sub_100004A34(v125);
                      }

                      __p[0] = buf;
                      sub_1000212F4(__p);
                      goto LABEL_150;
                    }

                    v53 = 0;
                    v54 = 0;
                    while ((sub_1002A44B4(*(*buf + v53), *&v52[v53]) & 1) != 0)
                    {
                      ++v54;
                      v52 = __p[0];
                      v53 += 16;
                      if (v54 >= (__p[1] - __p[0]) >> 4)
                      {
                        goto LABEL_98;
                      }
                    }
                  }

                  v57 = sub_10041CE58(a1, v127, buf, 0x30u);
                  v59 = v58;
                  v60 = sub_10041CE58(a1, v127, buf, 0x8000000u);
                  v119 = v61;
                  v62 = v60;
                  *v133 = &v127;
                  v63 = sub_100423C00(a1 + 264, &v127);
                  std::mutex::lock((v63 + 5));
                  v64 = *(v63 + 13);
                  *(v63 + 13) = *buf;
                  *buf = v64;
                  v65 = v63[15];
                  v63[15] = *&buf[16];
                  *&buf[16] = v65;
                  std::mutex::unlock((v63 + 5));
                  *(v13 + 8) = v6;
                  v66 = *v120;
                  if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
                  {
                    v128 = &v127;
                    v67 = sub_100423C00(a1 + 264, &v127);
                    std::mutex::lock((v67 + 5));
                    v69 = v67[13];
                    v68 = v67[14];
                    std::mutex::unlock((v67 + 5));
                    WirelessTechnologyList::asString(&cf, (v13 + 4));
                    v70 = v132 >= 0 ? &cf : cf;
                    *v133 = 134218242;
                    *&v133[4] = (v68 - v69) >> 4;
                    v134 = 2080;
                    v135 = v70;
                    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: %zu APNs updated, reset compatible technologies: %s", v133, 0x16u);
                    if (v132 < 0)
                    {
                      operator delete(cf);
                    }
                  }

                  v71 = Registry::getServiceMap(*(a1 + 56));
                  v72 = v71;
                  if (v73 < 0)
                  {
                    v74 = (v73 & 0x7FFFFFFFFFFFFFFFLL);
                    v75 = 5381;
                    do
                    {
                      v73 = v75;
                      v76 = *v74++;
                      v75 = (33 * v75) ^ v76;
                    }

                    while (v76);
                  }

                  std::mutex::lock(v71);
                  cf = v73;
                  v77 = sub_100009510(&v72[1].__m_.__sig, &cf);
                  if (v77)
                  {
                    v78 = v77[3];
                    v79 = v77[4];
                    if (v79)
                    {
                      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
                      std::mutex::unlock(v72);
                      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
                      sub_100004A34(v79);
                      v80 = 0;
                      if (!v78)
                      {
                        goto LABEL_132;
                      }

                      goto LABEL_120;
                    }
                  }

                  else
                  {
                    v78 = 0;
                  }

                  std::mutex::unlock(v72);
                  v79 = 0;
                  v80 = 1;
                  if (!v78)
                  {
                    goto LABEL_132;
                  }

LABEL_120:
                  v81 = (*(*v78 + 1192))(v78);
                  v82 = v81;
                  if (v81)
                  {
                    v83 = (*(*v81 + 56))(v81);
                    if (v83 == v127)
                    {
                      if (v57)
                      {
                        v84 = *v120;
                        if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
                        {
                          LODWORD(cf) = 67109376;
                          HIDWORD(cf) = HIDWORD(v57);
                          v130 = 1024;
                          v131 = v59;
                          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I PHS APN set changed: was 0x%x, become 0x%x", &cf, 0xEu);
                        }

                        if (HIDWORD(v57))
                        {
                          (*(*v82 + 24))(v82, v127);
                        }
                      }

                      if (v62)
                      {
                        v85 = *v120;
                        if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
                        {
                          LODWORD(cf) = 67109376;
                          HIDWORD(cf) = HIDWORD(v62);
                          v130 = 1024;
                          v131 = v119;
                          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "#I LL PHS APN set changed: was 0x%x, become 0x%x", &cf, 0xEu);
                        }

                        if (HIDWORD(v62))
                        {
                          (*(*v82 + 24))(v82, v127);
                        }
                      }
                    }
                  }

LABEL_132:
                  if ((v80 & 1) == 0)
                  {
                    sub_100004A34(v79);
                  }

                  v86 = Registry::getServiceMap(*(a1 + 56));
                  v87 = v86;
                  if (v88 < 0)
                  {
                    v89 = (v88 & 0x7FFFFFFFFFFFFFFFLL);
                    v90 = 5381;
                    do
                    {
                      v88 = v90;
                      v91 = *v89++;
                      v90 = (33 * v90) ^ v91;
                    }

                    while (v91);
                  }

                  std::mutex::lock(v86);
                  cf = v88;
                  v92 = sub_100009510(&v87[1].__m_.__sig, &cf);
                  if (v92)
                  {
                    v93 = v92[3];
                    v94 = v92[4];
                    if (v94)
                    {
                      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
                      std::mutex::unlock(v87);
                      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
                      sub_100004A34(v94);
                      v95 = 0;
                      if (!v93)
                      {
                        goto LABEL_144;
                      }

                      goto LABEL_143;
                    }
                  }

                  else
                  {
                    v93 = 0;
                  }

                  std::mutex::unlock(v87);
                  v94 = 0;
                  v95 = 1;
                  if (!v93)
                  {
LABEL_144:
                    if ((v95 & 1) == 0)
                    {
                      sub_100004A34(v94);
                    }

                    v118 = 1;
                    goto LABEL_147;
                  }

LABEL_143:
                  (*(*v93 + 16))(v93, v127);
                  goto LABEL_144;
                }
              }

              else
              {
                std::mutex::unlock(v32);
              }

              v40 = 0;
              goto LABEL_66;
            }
          }

          else
          {
            v23 = 0;
          }

          std::mutex::unlock(v16);
          v22 = 0;
          v24 = 1;
          goto LABEL_38;
        }

        v41 = *v120;
        if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: skipped - forced but wireless technology is not detected", __p, 2u);
        }
      }

      else
      {
        if (v6 && (v12[4] & v6) == 0)
        {
LABEL_21:
          v116 = v13 + 9;
          goto LABEL_22;
        }

        v25 = *v120;
        if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
        {
          WirelessTechnologyAsString();
          v26 = (SBYTE7(v123) & 0x80u) == 0 ? __p : __p[0];
          *buf = 136315138;
          *&buf[4] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: skipped - compatible technology (%s), no forced", buf, 0xCu);
          if (SBYTE7(v123) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v118 = 0;
LABEL_150:
      v96 = sub_100007DEC(a1 + 264, &v127);
      std::mutex::lock(v96);
      v98 = v96[8];
      v97 = v96[9];
      std::mutex::unlock(v96);
      v99 = v97 - v98;
      if (v97 == v98)
      {
        return v118;
      }

      v100 = 0;
      v101 = v99 >> 4;
      if (v101 <= 1)
      {
        v102 = 1;
      }

      else
      {
        v102 = v101;
      }

      v117 = v96;
      while (1)
      {
        sub_10041CF40(v96, v100, __p);
        v103 = *(__p[0] + 19);
        if (__p[1])
        {
          sub_100004A34(__p[1]);
        }

        v104 = ConnectionMaskToType(v103);
        if (isSlice())
        {
          v105 = Registry::getServiceMap(*(a1 + 56));
          v106 = v105;
          if (v107 < 0)
          {
            v108 = (v107 & 0x7FFFFFFFFFFFFFFFLL);
            v109 = 5381;
            do
            {
              v107 = v109;
              v110 = *v108++;
              v109 = (33 * v109) ^ v110;
            }

            while (v110);
          }

          std::mutex::lock(v105);
          __p[0] = v107;
          v111 = sub_100009510(&v106[1].__m_.__sig, __p);
          if (v111)
          {
            v112 = v111[3];
            v113 = v111[4];
            if (v113)
            {
              atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v106);
              atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
              v96 = v117;
              v114 = v113;
              sub_100004A34(v113);
              if (v112)
              {
                goto LABEL_171;
              }

              sub_100004A34(v113);
            }

            else
            {
              v114 = 0;
              std::mutex::unlock(v106);
              if (v112)
              {
LABEL_171:
                if (((*(*v112 + 256))(v112, v127, v103) & 0x100000000) != 0)
                {
                  __p[0] = 0;
                  __p[1] = 0;
                  *&v123 = 0;
                  (*(*v112 + 160))(__p, v112, v127, v104);
                  *buf = 0;
                  *&buf[8] = 0;
                  sub_10041CF40(v96, v100, &cf);
                  sub_1002AEE08();
                }

                if (!v114)
                {
                  goto LABEL_168;
                }

                v115 = v114;
LABEL_167:
                sub_100004A34(v115);
                goto LABEL_168;
              }
            }
          }

          else
          {
            std::mutex::unlock(v106);
          }
        }

        sub_10041CF40(v96, v100, __p);
        sub_1002A3288(__p[0], v120, "");
        v115 = __p[1];
        if (__p[1])
        {
          goto LABEL_167;
        }

LABEL_168:
        if (++v100 == v102)
        {
          return v118;
        }
      }
    }
  }

  return 0;
}

void sub_10041AD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, void **p_p, uint64_t a27)
{
  if ((v28 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  p_p = &__p;
  sub_1000212F4(&p_p);
  if (a22)
  {
    sub_100004A34(a22);
  }

  __p = (v29 - 128);
  sub_1000212F4(&__p);
  _Unwind_Resume(a1);
}

void sub_10041AEC0(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = *(a1 + 272);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = a1 + 272;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 == a1 + 272 || *(v5 + 32) > a2)
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v28 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v28);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_17:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_18:
  v28 = 0;
  v29 = 0;
  sub_1004196C0(v14, &v28);
  if (v28)
  {
    (*(*v28 + 72))(&v27);
    v16 = *(&v27 + 1);
    v17 = v27;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  *a3 = 0;
  a3[1] = 0;
  v28 = 0;
  v29 = 0;
  sub_100419930(v14, &v28);
  v18 = v28;
  if (v28)
  {
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v18 + 136))(&v27);
    v19 = v27;
    v27 = 0uLL;
    v20 = a3[1];
    *a3 = v19;
    if (v20)
    {
      sub_100004A34(v20);
      if (*(&v27 + 1))
      {
        sub_100004A34(*(&v27 + 1));
      }
    }

    if (v16)
    {
      sub_100004A34(v16);
    }
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  if (!*a3)
  {
    v28 = 0;
    v29 = 0;
    sub_100419860(v14, &v28);
    if (v28)
    {
      (*(*v28 + 72))(&v27);
      v21 = v27;
      v27 = 0uLL;
      v22 = a3[1];
      *a3 = v21;
      if (v22)
      {
        sub_100004A34(v22);
        if (*(&v27 + 1))
        {
          sub_100004A34(*(&v27 + 1));
        }
      }
    }

    if (v29)
    {
      sub_100004A34(v29);
    }

    if (!*a3 && v17)
    {
      v28 = 0;
      v29 = 0;
      sub_100419790(v14, &v28);
      v23 = v28;
      if (v28)
      {
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v23 + 72))(&v27);
        v24 = v27;
        v27 = 0uLL;
        v25 = a3[1];
        *a3 = v24;
        if (v25)
        {
          sub_100004A34(v25);
          if (*(&v27 + 1))
          {
            sub_100004A34(*(&v27 + 1));
          }
        }

        if (v16)
        {
          sub_100004A34(v16);
        }
      }

      if (v29)
      {
        sub_100004A34(v29);
      }

      if (!*a3)
      {
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = a3[1];
        *a3 = v17;
        a3[1] = v16;
        if (v26)
        {
          sub_100004A34(v26);
        }
      }
    }
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10041B278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  v21 = *(v16 + 8);
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10041B304(_BOOL8 result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = *a4;
  v8 = *(a4 + 8) - *a4;
  v9 = v8 >> 4;
  if (v8)
  {
    v11 = 0;
    v12 = *a6;
    if (v9 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v8 >> 4;
    }

    while (1)
    {
      v14 = *v7;
      result = sub_10041D72C(result, a3, v12, *v7);
      if (result)
      {
        break;
      }

      ++v11;
      v7 += 2;
      if (v13 == v11)
      {
        v11 = v13;
        goto LABEL_10;
      }
    }

    *(v14 + 152) |= a5;
  }

  else
  {
    v11 = 0;
  }

LABEL_10:
  if (v11 == v9)
  {

    sub_10041D7DC();
  }

  return result;
}

uint64_t sub_10041B40C(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *(a1 + 272);
  if (!v3)
  {
    return 0;
  }

  v5 = a1 + 272;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == a1 + 272 || *(v5 + 32) > a2 || !*a3 || *(*a3 + 144) > 1u)
  {
    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v34 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v34);
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
      goto LABEL_20;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_20:
  v34 = 0;
  v35 = 0;
  sub_1004196C0(v14, &v34);
  if (v34)
  {
    (*(*v34 + 72))(v33);
    v19 = v33[0];
    v18 = v33[1];
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  if (v35)
  {
    sub_100004A34(v35);
  }

  if (!v19)
  {
    goto LABEL_39;
  }

  v20 = *a3;
  v21 = *(v19 + 71);
  if (v21 >= 0)
  {
    v22 = *(v19 + 71);
  }

  else
  {
    v22 = *(v19 + 56);
  }

  v23 = *(v20 + 71);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(v20 + 56);
  }

  if (v22 != v23 || ((v27 = *(v19 + 48), v26 = (v19 + 48), v25 = v27, v21 >= 0) ? (v28 = v26) : (v28 = v25), (v31 = *(v20 + 48), v29 = (v20 + 48), v30 = v31, v24 >= 0) ? (v32 = v29) : (v32 = v30), memcmp(v28, v32, v22)))
  {
LABEL_39:
    v16 = 1;
    if (!v18)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v16 = 0;
  if (v18)
  {
LABEL_40:
    sub_100004A34(v18);
  }

LABEL_41:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  return v16;
}

void sub_10041B634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041B664(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 272);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = a1 + 272;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 == a1 + 272 || *(v5 + 32) > a2)
  {
LABEL_8:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v24 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v24);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_17:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_18:
  v24 = 0;
  v25 = 0;
  sub_1004196C0(v14, &v24);
  if (v24)
  {
    (*(*v24 + 72))(&v22);
    v17 = v22;
    v16 = v23;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  v24 = 0;
  v25 = 0;
  sub_100419930(v14, &v24);
  v18 = v24;
  if (v24)
  {
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v18 + 136))(&v22);
    v20 = v22;
    v19 = v23;
    v22 = 0;
    v23 = 0;
    if (v16)
    {
      sub_100004A34(v16);
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v20)
  {
    v21 = v19;
  }

  else
  {
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = v17;
    v21 = v16;
    if (v19)
    {
      sub_100004A34(v19);
      v20 = v17;
      v21 = v16;
    }
  }

  *a3 = v20;
  *(a3 + 8) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 16) = v17;
  *(a3 + 24) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10041B918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041B978(_BOOL8 a1, uint64_t a2, int a3, uint64_t *a4, unint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v9 = *a7;
  v10 = *a7 && (*(v9 + 152) & a5) != 0 && (*(v9 + 160) & a5) != 0;
  v11 = *a4;
  v12 = a4[1] - *a4;
  v13 = v12 >> 4;
  if (!v12)
  {
    v15 = 0;
    goto LABEL_18;
  }

  v25 = a1;
  v14 = 0;
  v15 = 0;
  v16 = *a6;
  if (v13 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12 >> 4;
  }

  while (1)
  {
    v18 = *(v11 + v14);
    if (v10)
    {
      break;
    }

    a1 = sub_10041D72C(a1, a3, v16, *(v11 + v14));
    if (a1)
    {
      goto LABEL_17;
    }

LABEL_13:
    ++v15;
    v14 += 16;
    if (v17 == v15)
    {
      v15 = v17;
      goto LABEL_18;
    }
  }

  if ((*(v18 + 152) & a5) == 0)
  {
    goto LABEL_13;
  }

  if (!sub_10041D72C(a1, a3, v16, *(v11 + v14)))
  {
    v19 = *(v25 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v32;
      asStringMask(v32, a5);
      if (v33 < 0)
      {
        v20 = v32[0];
      }

      sub_1002A4078(*a6, v30);
      v21 = v31;
      v22 = v30[0];
      sub_1002A4078(*(*a4 + v14), __p);
      v23 = v30;
      if (v21 < 0)
      {
        v23 = v22;
      }

      if (v29 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      *buf = 136315650;
      v35 = v20;
      v36 = 2080;
      v37 = v23;
      v38 = 2080;
      v39 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Service %s requested to be on apn:%s but placed on %s since it already has the service for BB", buf, 0x20u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      if (v33 < 0)
      {
        operator delete(v32[0]);
      }

      v18 = *(*a4 + v14);
      v13 = (a4[1] - *a4) >> 4;
    }
  }

LABEL_17:
  *(v18 + 160) |= a5;
LABEL_18:
  if (v15 == v13)
  {
    sub_10041D7DC();
  }
}

void sub_10041BBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041BC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_10:
  v17 = (*(*v15 + 904))(v15);
  if (v17)
  {
    if ((*(*v17 + 64))(v17, a2, 0))
    {
      v18 = *a3;
      v19 = *(a3 + 8) - *a3;
      if (v19)
      {
        v20 = 0;
        v21 = v19 >> 4;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        v23 = -1;
        do
        {
          v24 = *v18;
          v18 += 2;
          if (*(v24 + 152))
          {
            v23 = v20;
          }

          ++v20;
        }

        while (v22 != v20);
        if (v23 != -1)
        {
          v28 = 0;
          *buf = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          sub_100424E40(&v28, buf);
          v25 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            v26 = asString();
            *buf = 136315138;
            *&buf[4] = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Generating APN for %s", buf, 0xCu);
          }

          sub_1002AEE08();
        }
      }
    }
  }

LABEL_24:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  return 0;
}

void sub_10041C060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

capabilities::ct *sub_10041C0C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  result = capabilities::ct::supportsVoiceCall(v4);
  if (result)
  {
    result = capabilities::ct::supportsEmergencySoSOverCell(result);
    if (result)
    {
      v6 = *a3;
      v7 = a3[1] - *a3;
      if (!v7)
      {
LABEL_8:
        v13 = 0;
        *buf = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        sub_100424E40(&v13, buf);
        if (a3[1] == *a3)
        {
          v9 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Empty APN list, generate a fake internet APN too besides SOS APN", buf, 2u);
          }

          v11 = 0;
          v12 = 0;
          sub_1002A938C(&v11);
        }

        v10 = *v4;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No Emergency APN present, generate one", buf, 2u);
        }

        v11 = 0;
        v12 = 0;
        sub_1002A938C(&v11);
      }

      v8 = v7 >> 4;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      while ((*(*v6 + 154) & 4) == 0)
      {
        v6 += 16;
        if (!--v8)
        {
          goto LABEL_8;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_10041C650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041C680(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v41 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
  if (!v12)
  {
    v13 = 0;
    goto LABEL_8;
  }

  v13 = v12[3];
  v14 = v12[4];
  if (!v14)
  {
LABEL_8:
    std::mutex::unlock(v7);
    v14 = 0;
    v15 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v15 = 0;
LABEL_9:
  v40 = v14;
  if (v13)
  {
    v16 = (*(*v13 + 248))(v13, a2);
    v17 = (v16 & 0x100) == 0;
  }

  else
  {
    LOBYTE(v16) = 0;
    v17 = 1;
  }

  v39 = v15;
  v19 = *a3;
  v18 = a3[1];
  if (v18 == *a3)
  {
    goto LABEL_30;
  }

  v20 = 0;
  v21 = 0;
  v22 = v17 | v16;
  while (1)
  {
    v23 = *&v19[v20];
    v24 = *(v23 + 152);
    if ((v24 & 0x8000000) != 0)
    {
      break;
    }

LABEL_20:
    ++v21;
    ++v20;
    if (v21 >= v18 - v19)
    {
      goto LABEL_30;
    }
  }

  if ((v24 >> 4) & 1 | v22 & 1)
  {
    goto LABEL_37;
  }

  v25 = *v41;
  v26 = os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT);
  if (v24 != 0x8000000)
  {
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Removing not allowed dedicated low-latency tethering service from APN", buf, 2u);
      v19 = *a3;
      v18 = a3[1];
      v23 = *&(*a3)[v20];
      v24 = *(v23 + 152);
    }

    *(v23 + 152) = v24 & 0xFFFFFFFFF7FFFFFFLL;
    goto LABEL_20;
  }

  if (v26)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Removing not allowed dedicated low-latency tethering APN", buf, 2u);
    v19 = *a3;
    v18 = a3[1];
  }

  sub_100422B44(buf, &v19[v20 + 1], v18, &v19[v20]);
  v18 = v27;
  for (i = a3[1]; i != v18; --i)
  {
    v29 = *(i - 1);
    if (v29)
    {
      sub_100004A34(v29);
    }
  }

  a3[1] = v18;
  v19 = *a3;
LABEL_30:
  if (v18 != v19)
  {
    v30 = 0;
    v31 = v18 - v19;
    if (v31 <= 1)
    {
      v31 = 1;
    }

    while (1)
    {
      v32 = *&v19[v30];
      v33 = *(v32 + 152);
      if ((v33 & 0x10) != 0)
      {
        break;
      }

      ++v30;
      if (!--v31)
      {
        goto LABEL_35;
      }
    }

    v38 = *v41;
    v36 = v40;
    if (os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Adding low-latency tethering service to APN", buf, 2u);
      v32 = *&(*a3)[v30];
      v33 = *(v32 + 152);
    }

    *(v32 + 152) = v33 | 0x8000000;
    v35 = 1;
    if (v39)
    {
      return v35;
    }

LABEL_38:
    sub_100004A34(v36);
    return v35;
  }

LABEL_35:
  v34 = *v41;
  if (os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I No Tethering APN present, not adding low-latency tethering", buf, 2u);
  }

LABEL_37:
  v35 = 0;
  v36 = v40;
  if ((v39 & 1) == 0)
  {
    goto LABEL_38;
  }

  return v35;
}

void sub_10041C9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, std::__shared_weak_count *a12)
{
  if ((a11 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041CA18(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (sub_10029FE84(*v2))
      {
        v6 = *(a1 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*v2 + 48);
          if (*(*v2 + 71) < 0)
          {
            v7 = *v7;
          }

          v8 = sub_1002A24BC(*(*v2 + 144));
          v9 = *(*v2 + 148);
          *buf = 136315650;
          v17 = v7;
          v18 = 2080;
          v19 = v8;
          v20 = 1024;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I APN %s (%s.%d), allowing no DNS", buf, 0x1Cu);
        }

        v5 = 1;
      }

      else if ((isSliceMask(*(*v2 + 152)) & 1) == 0)
      {
        v10 = *(a1 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = (*v2 + 48);
          if (*(*v2 + 71) < 0)
          {
            v11 = *v11;
          }

          v12 = sub_1002A24BC(*(*v2 + 144));
          v13 = *(*v2 + 148);
          v14 = asStringBool(*(*v2 + 232));
          *buf = 136315906;
          v17 = v11;
          v18 = 2080;
          v19 = v12;
          v20 = 1024;
          v21 = v13;
          v22 = 2080;
          v23 = v14;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I APN %s (%s.%d), allowing no DNS not changed, current value is %s", buf, 0x26u);
        }
      }

      v2 += 2;
    }

    while (v2 != v3);
  }

  return v5 & 1;
}

void sub_10041CC0C(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v4 = *(a1 + 248);
  v6 = *v4;
  v5 = v4[1];
  if (v6 != v5)
  {
    while (*(*v6 + 49) != 1)
    {
      v6 += 16;
      if (v6 == v5)
      {
        return;
      }
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v12 = ServiceMap;
    if ((v13 & 0x8000000000000000) != 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    v23 = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, &v23);
    if (!v17)
    {
      std::mutex::unlock(v12);
      return;
    }

    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      if (!v19)
      {
LABEL_22:
        sub_100004A34(v18);
        return;
      }
    }

    else
    {
      std::mutex::unlock(v12);
      if (!v19)
      {
        return;
      }
    }

    v23 = 0;
    v24 = 0;
    (**v19)(&v23, v19, *v6 + 24);
    if (v23)
    {
      v21 = 0;
      v22 = 0;
      v20[2] = 0;
      v20[3] = 0;
      (*(*v23 + 128))(&v21);
      if (v21)
      {
        v20[0] = 0;
        v20[1] = 0;
        sub_10041B978(a1, a2, a3, a4, 0x4000000uLL, &v21, v20);
      }

      if (v22)
      {
        sub_100004A34(v22);
      }
    }

    if (v24)
    {
      sub_100004A34(v24);
    }

    if (v18)
    {
      goto LABEL_22;
    }
  }
}

void sub_10041CE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10041CE58(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v22 = a2;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v6 = sub_100007DEC(a1 + 264, &v22);
  sub_10009A398(v6, &v19);
  v7 = v19;
  if (v20 == v19)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = (v20 - v19) >> 4;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v10 = *v7;
      v7 += 16;
      v8 |= *(v10 + 152);
      --v9;
    }

    while (v9);
  }

  v12 = *a3;
  v11 = *(a3 + 8);
  v13 = v11 - *a3;
  if (v11 == *a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    v15 = v13 >> 4;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    do
    {
      v16 = *v12;
      v12 += 2;
      v14 |= *(v16 + 152);
      --v15;
    }

    while (v15);
  }

  v17 = ((v8 & a4) != (v14 & a4)) | ((v8 & a4) << 32);
  v23 = &v19;
  sub_1000212F4(&v23);
  return v17;
}

void sub_10041CF40(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock(a1);
  v6 = *(a1 + 64);
  if (a2 >= (*(a1 + 72) - v6) >> 4)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = *(v6 + 16 * a2);
    *a3 = v7;
    if (*(&v7 + 1))
    {
      atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::mutex::unlock(a1);
}

uint64_t sub_10041CFBC(uint64_t a1, int a2)
{
  v7 = a2;
  v2 = *(a1 + 272);
  if (!v2)
  {
    return 0;
  }

  v3 = a1 + 272;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v3 == a1 + 272 || *(v3 + 32) > a2)
  {
    return 0;
  }

  v6 = sub_100007DEC(a1 + 264, &v7);
  std::mutex::lock(v6);
  v4 = (v6[9] - v6[8]) >> 4;
  std::mutex::unlock(v6);
  return v4;
}

void sub_10041D054(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_10041D0F0(a1);
  v10 = v6;
  v7 = *(a1 + 272);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = a1 + 272;
  do
  {
    if (*(v7 + 32) >= v6)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < v6));
  }

  while (v7);
  if (v8 != a1 + 272 && *(v8 + 32) <= v6)
  {
    v9 = sub_100007DEC(a1 + 264, &v10);
    sub_10041CF40(v9, a2, a3);
  }

  else
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_10041D0F0(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v12 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v12);
  if (v7)
  {
    v8 = v7[3];
    v9 = v7[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v10 = 0;
      if (!v8)
      {
        goto LABEL_7;
      }

LABEL_11:
      LODWORD(v2) = (*(*v8 + 808))(v8);
      if (v10)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock(v2);
  v9 = 0;
  v10 = 1;
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v10 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v9);
  }

LABEL_13:
  if (v8)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

void sub_10041D210(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041D22C(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = a2;
  v5 = *(a1 + 272);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = a1 + 272;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v7 != a1 + 272 && *(v7 + 32) <= a2)
  {
    v8 = sub_100007DEC(a1 + 264, &v9);
    sub_10041CF40(v8, a3, a4);
  }

  else
  {
LABEL_8:
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_10041D2B8(uint64_t a1, int a2, unint64_t a3, const std::string *a4)
{
  v9 = a2;
  v4 = *(a1 + 272);
  if (v4)
  {
    v7 = a1 + 272;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v7 != a1 + 272 && *(v7 + 32) <= a2)
    {
      v8 = sub_100007DEC(a1 + 264, &v9);
      sub_10041D33C(v8, a3, a4);
    }
  }
}

void sub_10041D33C(uint64_t a1, unint64_t a2, const std::string *a3)
{
  std::mutex::lock(a1);
  v6 = *(a1 + 64);
  if (a2 < (*(a1 + 72) - v6) >> 4)
  {
    v7 = *(v6 + 16 * a2);
    if (v7)
    {
      std::string::operator=(v7 + 2, a3);
    }
  }

  std::mutex::unlock(a1);
}

void sub_10041D3C0(uint64_t a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v9 = a2;
  v5 = *(a1 + 272);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = a1 + 272;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v7 != a1 + 272 && *(v7 + 32) <= a2)
  {
    v8 = sub_100007DEC(a1 + 264, &v9);
    sub_10041D44C(v8, a3, a4);
  }

  else
  {
LABEL_8:
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_10041D44C(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock(a1);
  *a3 = 0;
  a3[1] = 0;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  if (v6 != v7)
  {
    v8 = a2[23];
    if (v8 >= 0)
    {
      v9 = a2[23];
    }

    else
    {
      v9 = *(a2 + 1);
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = *(a1 + 64);
    do
    {
      v12 = *v11;
      v13 = *(*v11 + 71);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(*v11 + 56);
      }

      if (v13 == v9)
      {
        v15 = v14 >= 0 ? (v12 + 48) : *(v12 + 48);
        if (!memcmp(v15, v10, v9))
        {
          v22 = v11[1];
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          *a3 = v12;
          a3[1] = v22;
          goto LABEL_38;
        }
      }

      v11 += 2;
    }

    while (v11 != v7);
    v16 = a2[23];
    if (v16 >= 0)
    {
      v17 = a2[23];
    }

    else
    {
      v17 = *(a2 + 1);
    }

    if (v16 < 0)
    {
      a2 = *a2;
    }

    while (1)
    {
      v18 = *v6;
      if (*(*v6 + 312) == 1)
      {
        v19 = *(v18 + 311);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v18 + 296);
        }

        if (v19 == v17)
        {
          v21 = v20 >= 0 ? (v18 + 288) : *(v18 + 288);
          if (!memcmp(v21, a2, v17))
          {
            break;
          }
        }
      }

      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_38;
      }
    }

    v23 = v6[1];
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = v18;
    a3[1] = v23;
  }

LABEL_38:

  std::mutex::unlock(a1);
}

uint64_t sub_10041D5CC(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v3 = result;
    v4[4] = result;
    v5 = a2;
    sub_100424EAC(&v6, a3);
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_10041D714(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

BOOL sub_10041D72C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 71);
  v5 = *(a3 + 56);
  if (v4 >= 0)
  {
    v5 = *(a3 + 71);
  }

  v6 = *(a4 + 71);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a4 + 56);
  }

  if (v5 != v6)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v11 = (a3 + 48);
  }

  else
  {
    v11 = *(a3 + 48);
  }

  if (v7 >= 0)
  {
    v12 = (a4 + 48);
  }

  else
  {
    v12 = *(a4 + 48);
  }

  v14 = strcasecmp(v11, v12) == 0;
  result = v14;
  v14 = !v14 || a2 == 0;
  if (!v14)
  {
    return *(a3 + 148) == *(a4 + 148);
  }

  return result;
}

void sub_10041D95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041D974(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ---------------DarwinPDPConfig:------------", buf, 2u);
    v2 = *v1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 336);
    if (*(a1 + 359) < 0)
    {
      v3 = *v3;
    }

    v4 = (a1 + 360);
    if (*(a1 + 383) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 384);
    *buf = 136315650;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    *&buf[22] = 1024;
    *&buf[24] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fPrimaryDnsOverride: %s, fSecondaryDnsOverride: %s, fDNSNotificationHandlerToken: %d", buf, 0x1Cu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 440);
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fResetStarted: %u", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asStringBool(*(a1 + 448) != 0);
    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIpcInterfaceConfigResetQueue: %s", buf, 0xCu);
  }

  v8 = *(a1 + 312);
  v9 = (a1 + 320);
  if (v8 != (a1 + 320))
  {
    do
    {
      v85 = *(v8 + 7);
      v10 = sub_100007DEC(a1 + 264, &v85);
      std::mutex::lock(v10);
      v12 = v10[8];
      v11 = v10[9];
      std::mutex::unlock(v10);
      v13 = *v1;
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
      {
        v14 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t Sim %s:", buf, 0xCu);
        v13 = *v1;
      }

      v15 = (v11 - v12) >> 4;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        WirelessTechnologyList::asString(&v82, (v8 + 4));
        v77 = v12;
        v78 = v11;
        v16 = v9;
        if (v84 >= 0)
        {
          v17 = &v82;
        }

        else
        {
          v17 = v82;
        }

        WirelessTechnologyAsString();
        if (v81 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v19 = asStringBool(*(v8 + 40));
        v20 = asStringBool(*(v8 + 41));
        *buf = 134219010;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = v17;
        *&buf[22] = 2080;
        *&buf[24] = p_p;
        *&buf[32] = 2080;
        v87 = v19;
        v88 = 2080;
        v89 = v20;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t %lu APN(s) found, fCompatibleTechnologies: %s, fCurrentTechnology: %s, fIsCorporateInternetAPN: %s, fAllowsDupApnNames: %s", buf, 0x34u);
        if (v81 < 0)
        {
          operator delete(__p);
        }

        v9 = v16;
        v12 = v77;
        v11 = v78;
        if (v84 < 0)
        {
          operator delete(v82);
        }
      }

      if (v11 != v12)
      {
        v21 = 0;
        if (v15 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v15;
        }

        do
        {
          v23 = *v1;
          if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNx%zu:", buf, 0xCu);
          }

          sub_10041CF40(v10, v21, buf);
          sub_1002A24E4(*buf, v1);
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          ++v21;
        }

        while (v22 != v21);
      }

      v24 = v8[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v8[2];
          v26 = *v25 == v8;
          v8 = v25;
        }

        while (!v26);
      }

      v8 = v25;
    }

    while (v25 != v9);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v28 = ServiceMap;
  if (v29 < 0)
  {
    v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
    v31 = 5381;
    do
    {
      v29 = v31;
      v32 = *v30++;
      v31 = (33 * v31) ^ v32;
    }

    while (v32);
  }

  std::mutex::lock(ServiceMap);
  *buf = v29;
  v33 = sub_100009510(&v28[1].__m_.__sig, buf);
  if (!v33)
  {
    v35 = 0;
LABEL_50:
    std::mutex::unlock(v28);
    v34 = 0;
    v36 = 1;
    if (!v35)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v35 = v33[3];
  v34 = v33[4];
  if (!v34)
  {
    goto LABEL_50;
  }

  atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v28);
  atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v34);
  v36 = 0;
  if (v35)
  {
LABEL_51:
    (*(*v35 + 40))(v35);
  }

LABEL_52:
  if ((v36 & 1) == 0)
  {
    sub_100004A34(v34);
  }

  v37 = *(a1 + 248);
  v38 = *v37;
  v39 = v37[1];
  v40 = *(a1 + 40);
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
  if (v38 == v39)
  {
    if (v41)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t no cloud apns", buf, 2u);
    }
  }

  else
  {
    if (v41)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t from cloud:", buf, 2u);
      v42 = *(a1 + 248);
      v38 = *v42;
      v39 = v42[1];
    }

    if (v38 != v39)
    {
      while (*(*v38 + 49) != 1)
      {
LABEL_76:
        v38 += 16;
        if (v38 == v39)
        {
          goto LABEL_80;
        }
      }

      *buf = 0;
      *&buf[8] = 0;
      v43 = Registry::getServiceMap(*(a1 + 56));
      v44 = v43;
      if (v45 < 0)
      {
        v46 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
        v47 = 5381;
        do
        {
          v45 = v47;
          v48 = *v46++;
          v47 = (33 * v47) ^ v48;
        }

        while (v48);
      }

      std::mutex::lock(v43);
      v82 = v45;
      v49 = sub_100009510(&v44[1].__m_.__sig, &v82);
      if (v49)
      {
        v51 = v49[3];
        v50 = v49[4];
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v44);
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v50);
          v52 = 0;
LABEL_67:
          (**v51)(buf, v51, *v38 + 24);
          if ((v52 & 1) == 0)
          {
            sub_100004A34(v50);
          }

          if (*buf)
          {
            v82 = 0;
            v83 = 0;
            (*(**buf + 128))(&v82);
            if (v82)
            {
              sub_1002A24E4(v82, v1);
            }

            if (v83)
            {
              sub_100004A34(v83);
            }
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          goto LABEL_76;
        }
      }

      else
      {
        v51 = 0;
      }

      std::mutex::unlock(v44);
      v50 = 0;
      v52 = 1;
      goto LABEL_67;
    }
  }

LABEL_80:
  if (*(a1 + 408))
  {
    v53 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPCContextConfigInfo:", buf, 2u);
    }

    v54 = *(a1 + 392);
    if (v54 != (a1 + 400))
    {
      do
      {
        v55 = *v1;
        if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
        {
          v56 = *(v54 + 7);
          v57 = *(v54 + 8);
          v58 = *(v54 + 9);
          v59 = *(v54 + 10);
          v60 = *(v54 + 11);
          *buf = 67110144;
          *&buf[4] = v56;
          *&buf[8] = 1024;
          *&buf[10] = v57;
          *&buf[14] = 1024;
          *&buf[16] = v58;
          *&buf[20] = 1024;
          *&buf[22] = v59;
          *&buf[26] = 1024;
          *&buf[28] = v60;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t id=%u c.id=%u maxInterfaces=%u maxUlPipes=%u maxDlPipes=%u ", buf, 0x20u);
        }

        v61 = v54[1];
        if (v61)
        {
          do
          {
            v62 = v61;
            v61 = *v61;
          }

          while (v61);
        }

        else
        {
          do
          {
            v62 = v54[2];
            v26 = *v62 == v54;
            v54 = v62;
          }

          while (!v26);
        }

        v54 = v62;
      }

      while (v62 != (a1 + 400));
    }
  }

  if (*(a1 + 432))
  {
    v63 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPCConfigSetInfo:", buf, 2u);
    }

    v64 = *(a1 + 416);
    if (v64 != (a1 + 424))
    {
      do
      {
        v65 = *v1;
        if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
        {
          v66 = subscriber::asString();
          *buf = 136315138;
          *&buf[4] = v66;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t simSlot=%s", buf, 0xCu);
        }

        v68 = v64[5];
        v67 = v64[6];
        while (v68 != v67)
        {
          v69 = *v1;
          if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
          {
            v70 = v68;
            if (*(v68 + 23) < 0)
            {
              v70 = *v68;
            }

            v71 = *(v68 + 6);
            v72 = *(v68 + 7);
            v73 = v68[4];
            v74 = *(v68 + 10);
            *buf = 136316162;
            *&buf[4] = v70;
            *&buf[12] = 1024;
            *&buf[14] = v71;
            *&buf[18] = 1024;
            *&buf[20] = v72;
            *&buf[24] = 2048;
            *&buf[26] = v73;
            LOWORD(v87) = 1024;
            *(&v87 + 2) = v74;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t\t name=%s dataPath=%u trafficType=%u serviceMask=%llu maxQueueSets=%u ", buf, 0x28u);
          }

          v68 += 6;
        }

        v75 = v64[1];
        if (v75)
        {
          do
          {
            v76 = v75;
            v75 = *v75;
          }

          while (v75);
        }

        else
        {
          do
          {
            v76 = v64[2];
            v26 = *v76 == v64;
            v64 = v76;
          }

          while (!v26);
        }

        v64 = v76;
      }

      while (v76 != (a1 + 424));
    }
  }
}
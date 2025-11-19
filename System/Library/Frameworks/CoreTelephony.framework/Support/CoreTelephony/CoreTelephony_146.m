void sub_1012B5728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012B5800(void *a1, uint64_t a2)
{
  v4[0] = off_101F27078;
  v4[1] = a2;
  v4[3] = v4;
  sub_1012BB93C(v4, a1);
  sub_1012B9DF8(v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t RegistrationEventHandler::RegistrationEventHandler(uint64_t a1, void *a2, dispatch_object_t *a3, void *a4)
{
  v8 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v55, kCtLoggingSystemName, "reg.evt");
  ctu::OsLogLogger::OsLogLogger(v54, &v55);
  ctu::OsLogLogger::OsLogLogger(v8, v54);
  ctu::OsLogLogger::~OsLogLogger(v54);
  ctu::OsLogContext::~OsLogContext(&v55);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101F26B18;
  *(a1 + 32) = *a4;
  v9 = a4[1];
  *(a1 + 40) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *a2;
  v10 = a2[1];
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "Registration Event Handler");
  v51 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::RestModule::RestModule();
  if (v51)
  {
    dispatch_release(v51);
  }

  if (v53 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 216) = 0;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 224));
  *(a1 + 1056) = 0;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 1064));
  *(a1 + 1896) = 0;
  *(a1 + 1903) = 0;
  *(a1 + 1936) = 0;
  *(a1 + 1943) = 0;
  *(a1 + 1992) = 0;
  *(a1 + 1976) = 0u;
  *(a1 + 2024) = 0;
  sub_100AE9114((a1 + 2032), &rest::kDefaultCipherDomains);
  *(a1 + 2080) = 0;
  sub_1000517E4((a1 + 2088), &rest::kDefaultNetworkScanState);
  *(a1 + 2136) = 0;
  *(a1 + 2152) = 0u;
  *(a1 + 2144) = a1 + 2152;
  *(a1 + 2192) = 0;
  *(a1 + 2208) = 0u;
  *(a1 + 2200) = a1 + 2208;
  *(a1 + 2248) = 0;
  *(a1 + 2264) = 0u;
  *(a1 + 2256) = a1 + 2264;
  *(a1 + 2304) = 0;
  *(a1 + 2320) = 0u;
  *(a1 + 2312) = a1 + 2320;
  *(a1 + 2360) = 0;
  *(a1 + 2376) = 0u;
  *(a1 + 2368) = a1 + 2376;
  *(a1 + 2416) = 0;
  *(a1 + 2432) = 0u;
  *(a1 + 2424) = a1 + 2432;
  *(a1 + 2472) = 0;
  *(a1 + 2488) = 0u;
  *(a1 + 2480) = a1 + 2488;
  *(a1 + 2528) = 0;
  sub_100051598((a1 + 2536), &rest::kDefaultLastVisiblePlmns);
  *(a1 + 2584) = 0;
  *(a1 + 2600) = 0u;
  *(a1 + 2592) = a1 + 2600;
  *(a1 + 2640) = 0;
  v11 = (a1 + 2656);
  *(a1 + 2656) = 0u;
  *(a1 + 2648) = a1 + 2656;
  v12 = rest::kDefaultLastVisibleMccs;
  if (rest::kDefaultLastVisibleMccs != (&rest::kDefaultLastVisibleMccs + 8))
  {
    do
    {
      v13 = *v11;
      v14 = a1 + 2656;
      if (*(a1 + 2648) == v11)
      {
        goto LABEL_18;
      }

      v15 = *v11;
      v16 = a1 + 2656;
      if (v13)
      {
        do
        {
          v14 = v15;
          v15 = *(v15 + 8);
        }

        while (v15);
      }

      else
      {
        do
        {
          v14 = *(v16 + 16);
          v17 = *v14 == v16;
          v16 = v14;
        }

        while (v17);
      }

      v18 = *(v12 + 8);
      if (*(v14 + 32) < v18)
      {
LABEL_18:
        if (v13)
        {
          v19 = (v14 + 8);
        }

        else
        {
          v19 = (a1 + 2656);
        }

        if (!*v19)
        {
LABEL_29:
          operator new();
        }
      }

      else
      {
        if (!v13)
        {
          goto LABEL_29;
        }

        while (1)
        {
          while (1)
          {
            v20 = v13;
            v21 = *(v13 + 32);
            if (v21 <= v18)
            {
              break;
            }

            v13 = *v20;
            if (!*v20)
            {
              goto LABEL_29;
            }
          }

          if (v21 >= v18)
          {
            break;
          }

          v13 = v20[1];
          if (!v13)
          {
            goto LABEL_29;
          }
        }
      }

      v22 = v12[1];
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
          v23 = v12[2];
          v17 = *v23 == v12;
          v12 = v23;
        }

        while (!v17);
      }

      v12 = v23;
    }

    while (v23 != (&rest::kDefaultLastVisibleMccs + 8));
  }

  *(a1 + 2696) = 0;
  v24 = (a1 + 2712);
  *(a1 + 2712) = 0u;
  *(a1 + 2704) = a1 + 2712;
  v25 = rest::kDefaultLastVisibleMncs;
  if (rest::kDefaultLastVisibleMncs != (&rest::kDefaultLastVisibleMncs + 8))
  {
    v26 = 0;
    v27 = (a1 + 2712);
    while (1)
    {
      v28 = a1 + 2712;
      if (v27 == v24)
      {
        goto LABEL_44;
      }

      v29 = v26;
      v30 = a1 + 2712;
      if (v26)
      {
        do
        {
          v28 = v29;
          v29 = *(v29 + 8);
        }

        while (v29);
      }

      else
      {
        do
        {
          v28 = *(v30 + 16);
          v17 = *v28 == v30;
          v30 = v28;
        }

        while (v17);
      }

      v31 = *(v25 + 8);
      if (*(v28 + 32) < v31)
      {
LABEL_44:
        if (v26)
        {
          v32 = (v28 + 8);
        }

        else
        {
          v32 = (a1 + 2712);
        }

        if (!*v32)
        {
LABEL_55:
          operator new();
        }
      }

      else
      {
        if (!v26)
        {
          goto LABEL_55;
        }

        while (1)
        {
          while (1)
          {
            v33 = v26;
            v34 = *(v26 + 32);
            if (v34 <= v31)
            {
              break;
            }

            v26 = *v33;
            if (!*v33)
            {
              goto LABEL_55;
            }
          }

          if (v34 >= v31)
          {
            break;
          }

          v26 = v33[1];
          if (!v26)
          {
            goto LABEL_55;
          }
        }
      }

      v35 = v25[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v25[2];
          v17 = *v36 == v25;
          v25 = v36;
        }

        while (!v17);
      }

      if (v36 == (&rest::kDefaultLastVisibleMncs + 8))
      {
        break;
      }

      v26 = *v24;
      v27 = *(a1 + 2704);
      v25 = v36;
    }
  }

  *(a1 + 2752) = 0;
  sub_100903918((a1 + 2760), &rest::kDefaultTrackingAreaUpdateTimers);
  *(a1 + 2808) = 0;
  v37 = (a1 + 2824);
  *(a1 + 2824) = 0u;
  *(a1 + 2816) = a1 + 2824;
  v38 = rest::kDefaultNetworkRejects;
  if (rest::kDefaultNetworkRejects != (&rest::kDefaultNetworkRejects + 8))
  {
    v39 = 0;
    v40 = (a1 + 2824);
    while (1)
    {
      v41 = *(v38 + 7);
      v42 = a1 + 2824;
      if (v40 == v37)
      {
        goto LABEL_71;
      }

      v43 = v39;
      v44 = a1 + 2824;
      if (v39)
      {
        do
        {
          v42 = v43;
          v43 = *(v43 + 8);
        }

        while (v43);
      }

      else
      {
        do
        {
          v42 = *(v44 + 16);
          v17 = *v42 == v44;
          v44 = v42;
        }

        while (v17);
      }

      if (*(v42 + 28) < v41)
      {
LABEL_71:
        if (v39)
        {
          v45 = (v42 + 8);
        }

        else
        {
          v45 = (a1 + 2824);
        }

        if (!*v45)
        {
LABEL_82:
          operator new();
        }
      }

      else
      {
        if (!v39)
        {
          goto LABEL_82;
        }

        while (1)
        {
          while (1)
          {
            v46 = v39;
            v47 = *(v39 + 28);
            if (v47 <= v41)
            {
              break;
            }

            v39 = *v46;
            if (!*v46)
            {
              goto LABEL_82;
            }
          }

          if (v47 >= v41)
          {
            break;
          }

          v39 = v46[1];
          if (!v39)
          {
            goto LABEL_82;
          }
        }
      }

      v48 = v38[1];
      if (v48)
      {
        do
        {
          v49 = v48;
          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        do
        {
          v49 = v38[2];
          v17 = *v49 == v38;
          v38 = v49;
        }

        while (!v17);
      }

      if (v49 == (&rest::kDefaultNetworkRejects + 8))
      {
        break;
      }

      v39 = *v37;
      v40 = *(a1 + 2816);
      v38 = v49;
    }
  }

  *(a1 + 2864) = 0;
  sub_100B776E0((a1 + 2872), &rest::kDefaultImsPreferenceStates);
  *(a1 + 2920) = 0;
  *(a1 + 2936) = 0u;
  *(a1 + 2928) = a1 + 2936;
  return a1;
}

void sub_1012B5FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ctu::OsLogLogger *a10, uint64_t a11, dispatch_object_t object, dispatch_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21)
{
  sub_1012BA078(v21 + 2840);
  sub_1012B6220(v21 + 2784);
  sub_100B4956C(v21 + 2728);
  sub_1012B999C(*v22);
  sub_1012B99F8(v21 + 2672);
  sub_1012B6260(v21 + 2616);
  sub_1012B62A0(v21 + 2560);
  sub_1012B62A0(v21 + 2504);
  sub_1012B62E0(v21 + 2448);
  sub_1012B6320(v21 + 2392);
  sub_1012B6360(v21 + 2336);
  sub_1012B63A0(v21 + 2280);
  sub_10083C218(v21 + 2224);
  sub_10083C218(v21 + 2168);
  sub_10083C218(v21 + 2112);
  sub_10083C218(v21 + 2056);
  sub_1012B63E0(v21 + 2000);
  sub_1012B9DF8(v21 + 1952);
  sub_1012B9E78(v21 + 1912);
  sub_1012B9E78(v21 + 1872);
  sub_10004543C(v21 + 1064);
  sub_1012B989C(v21 + 1032);
  sub_10004543C(a11 + 104);
  sub_1012B989C(a11 + 72);
  sub_1012B6420(a11 + 16);
  sub_1012B6460(a11 - 40);
  v24 = *(v21 + 9);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v21 + 7);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v21 + 5);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v21 + 3);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  ctu::OsLogLogger::~OsLogLogger(a10);
  RegistrationEventInterface::~RegistrationEventInterface(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6220(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B991C(a1);
}

uint64_t sub_1012B6260(uint64_t a1)
{
  sub_100045B14(a1 + 32, *(a1 + 40));

  return sub_1012B9A78(a1);
}

uint64_t sub_1012B62A0(uint64_t a1)
{
  sub_10004C4EC(a1 + 32, *(a1 + 40));

  return sub_1012B9AF8(a1);
}

uint64_t sub_1012B62E0(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B9B78(a1);
}

uint64_t sub_1012B6320(uint64_t a1)
{
  sub_100009970(a1 + 32, *(a1 + 40));

  return sub_1012B9BF8(a1);
}

uint64_t sub_1012B6360(uint64_t a1)
{
  sub_10004C4EC(a1 + 32, *(a1 + 40));

  return sub_1012B9C78(a1);
}

uint64_t sub_1012B63A0(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B9CF8(a1);
}

uint64_t sub_1012B63E0(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B9D78(a1);
}

uint64_t sub_1012B6420(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B9EF8(a1);
}

uint64_t sub_1012B6460(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B9F78(a1);
}

void sub_1012B64A0(uint64_t a1)
{
  *a1 = off_101F26B18;
  sub_10006DCAC(a1 + 2928, *(a1 + 2936));
  sub_1012B9FF8(a1 + 2896);
  sub_10004EC58(a1 + 2872, *(a1 + 2880));
  sub_1012BA078(a1 + 2840);
  sub_10006DCAC(a1 + 2816, *(a1 + 2824));
  sub_1012B991C(a1 + 2784);
  sub_10006DCAC(a1 + 2760, *(a1 + 2768));
  sub_100B76B60(a1 + 2728);
  sub_1012B999C(*(a1 + 2712));
  sub_1012B99F8(a1 + 2672);
  sub_100045B14(a1 + 2648, *(a1 + 2656));
  sub_1012B9A78(a1 + 2616);
  sub_10004C4EC(a1 + 2592, *(a1 + 2600));
  sub_1012B9AF8(a1 + 2560);
  sub_10004C4EC(a1 + 2536, *(a1 + 2544));
  sub_1012B9AF8(a1 + 2504);
  sub_10006DCAC(a1 + 2480, *(a1 + 2488));
  sub_1012B9B78(a1 + 2448);
  sub_100009970(a1 + 2424, *(a1 + 2432));
  sub_1012B9BF8(a1 + 2392);
  sub_10004C4EC(a1 + 2368, *(a1 + 2376));
  sub_1012B9C78(a1 + 2336);
  sub_10006DCAC(a1 + 2312, *(a1 + 2320));
  sub_1012B9CF8(a1 + 2280);
  sub_10006DCAC(a1 + 2256, *(a1 + 2264));
  sub_10031D330(a1 + 2224);
  sub_10006DCAC(a1 + 2200, *(a1 + 2208));
  sub_10031D330(a1 + 2168);
  sub_10006DCAC(a1 + 2144, *(a1 + 2152));
  sub_10031D330(a1 + 2112);
  sub_10006DCAC(a1 + 2088, *(a1 + 2096));
  sub_10031D330(a1 + 2056);
  sub_10006DCAC(a1 + 2032, *(a1 + 2040));
  sub_1012B9D78(a1 + 2000);
  sub_1012B9DF8(a1 + 1952);
  sub_1012B9E78(a1 + 1912);
  sub_1012B9E78(a1 + 1872);
  sub_10004543C(a1 + 1064);
  sub_1012B989C(a1 + 1032);
  sub_10004543C(a1 + 224);
  sub_1012B989C(a1 + 192);
  sub_10006DCAC(a1 + 168, *(a1 + 176));
  sub_1012B9EF8(a1 + 136);
  sub_10006DCAC(a1 + 112, *(a1 + 120));
  sub_1012B9F78(a1 + 80);
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  RegistrationEventInterface::~RegistrationEventInterface(a1);
}

void sub_1012B66DC(uint64_t a1)
{
  sub_1012B64A0(a1);

  operator delete();
}

uint64_t sub_1012B6714(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  (*(**(a1 + 32) + 80))(*(a1 + 32), a3);
  sub_100083E9C(&event::registration::emergencyCallbackModeChanged, v3);
  v7[0] = 1;
  v7[1] = a1 + 1952;
  *(a1 + 1984) = a2;
  *(a1 + 1988) = 1;
  *(a1 + 1992) = v3;
  return sub_1012BE64C(v7);
}

uint64_t sub_1012B67A8(uint64_t a1, int a2, char a3, char a4)
{
  v19 = a2;
  v17 = 1;
  v18 = a1 + 2112;
  v15 = 1;
  v16 = a1 + 2168;
  if (a2 == 3)
  {
    subscriber::makeSimSlotRange();
    v6 = v12;
    v7 = v13;
    if (v12 != v13)
    {
      v8 = v14;
      do
      {
        if (v14(*v6))
        {
          break;
        }

        ++v6;
      }

      while (v6 != v13);
      v9 = v13;
      while (v6 != v9)
      {
        v11 = *v6;
        v20 = &v11;
        *(sub_100051AD8(v18 + 32, &v11) + 32) = a3;
        v20 = &v11;
        *(sub_100051AD8(v16 + 32, &v11) + 32) = a4;
        do
        {
          ++v6;
        }

        while (v6 != v7 && (v8(*v6) & 1) == 0);
      }
    }
  }

  else
  {
    *(sub_100051AD8(a1 + 2144, &v19) + 32) = a3;
    v12 = &v19;
    *(sub_100051AD8(v16 + 32, &v19) + 32) = a4;
  }

  sub_1012BE71C(&v15);
  return sub_1012BE6B4(&v17);
}

void sub_1012B692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1012BE71C(va);
  sub_1012BE6B4(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6958(uint64_t a1, int a2, int a3)
{
  v17 = a2;
  v15 = 1;
  v16 = a1 + 2224;
  if (a2 == 3)
  {
    subscriber::makeSimSlotRange();
    v4 = v12;
    v5 = v13;
    if (v12 != v13)
    {
      v6 = v14;
      do
      {
        if (v14(*v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 != v13);
      v7 = v13;
      while (v4 != v7)
      {
        v11 = *v4;
        v18 = &v11;
        *(sub_100051AD8(v16 + 32, &v11) + 32) = a3;
        do
        {
          ++v4;
        }

        while (v4 != v5 && (v6(*v4) & 1) == 0);
      }
    }
  }

  else
  {
    v12 = &v17;
    *(sub_100051AD8(a1 + 2256, &v17) + 32) = a3;
    if (v17 == 1)
    {
      v8 = &event::registration::dataNotAttached;
      if (a3)
      {
        v8 = &event::registration::dataAttached;
      }

      v9 = sub_100081A98(v8 + 1);
      sub_100081ADC(v9);
    }
  }

  return sub_1012BE784(&v15);
}

void sub_1012B6AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1012BE784(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6AD0(uint64_t a1, int a2, int a3, int a4)
{
  v20 = a2;
  v18 = 1;
  v19 = a1 + 2280;
  if (a2 == 1)
  {
    if (a4 <= 0)
    {
      v7 = "SIM Slot_1: Data mode changed to NoData";
    }

    else
    {
      v7 = "SIM Slot_1: Data mode changed";
    }

    goto LABEL_26;
  }

  if (a2 == 2)
  {
    if (a4 <= 0)
    {
      v7 = "SIM Slot_2: Data mode changed to NoData";
    }

    else
    {
      v7 = "SIM Slot_2: Data mode changed";
    }

    goto LABEL_26;
  }

  if (a2 != 3)
  {
    if (a4 <= 0)
    {
      v7 = "SIM Slot_Unknown: Data mode changed to NoData";
    }

    else
    {
      v7 = "SIM Slot_Unknown: Data mode changed";
    }

LABEL_26:
    v21 = _os_activity_create(&_mh_execute_header, v7, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v21, &state);
    os_activity_scope_leave(&state);
    sub_1000C0590(&v21);
    state.opaque[0] = &v20;
    v13 = sub_1010DCFA4(v19 + 32, &v20);
    *(v13 + 8) = a3;
    *(v13 + 9) = a4;
    return sub_1012BE7EC(&v18);
  }

  if (a4 <= 0)
  {
    v6 = "SIM Slot_All: Data mode changed to NoData";
  }

  else
  {
    v6 = "SIM Slot_All: Data mode changed";
  }

  v21 = _os_activity_create(&_mh_execute_header, v6, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v21, &state);
  os_activity_scope_leave(&state);
  sub_1000C0590(&v21);
  subscriber::makeSimSlotRange();
  v8 = state.opaque[0];
  v9 = state.opaque[1];
  if (state.opaque[0] != state.opaque[1])
  {
    v10 = v17;
    do
    {
      if (v10(*v8))
      {
        break;
      }

      ++v8;
    }

    while (v8 != v9);
    v11 = state.opaque[1];
    while (v8 != v11)
    {
      v15 = *v8;
      v21 = &v15;
      v12 = sub_1010DCFA4(v19 + 32, &v15);
      *(v12 + 8) = a3;
      *(v12 + 9) = a4;
      do
      {
        ++v8;
      }

      while (v8 != v9 && (v10(*v8) & 1) == 0);
    }
  }

  return sub_1012BE7EC(&v18);
}

void sub_1012B6D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1012BE7EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6D30(uint64_t a1, int a2, char a3)
{
  v17 = a2;
  v14[0] = 1;
  v15 = 0u;
  v16 = 0;
  v14[1] = a1 + 2056;
  sub_1000517E4(&v15, a1 + 2088);
  if (a2 == 3)
  {
    subscriber::makeSimSlotRange();
    v5 = v11;
    v6 = v12;
    if (v11 != v12)
    {
      v7 = v13;
      do
      {
        if (v13(*v5))
        {
          break;
        }

        ++v5;
      }

      while (v5 != v12);
      v8 = v12;
      while (v5 != v8)
      {
        v10 = *v5;
        v18 = &v10;
        *(sub_100051AD8(&v15, &v10) + 32) = a3;
        do
        {
          ++v5;
        }

        while (v5 != v6 && (v7(*v5) & 1) == 0);
      }
    }
  }

  else
  {
    v11 = &v17;
    *(sub_100051AD8(&v15, &v17) + 32) = a3;
  }

  return sub_1012BE854(v14);
}

void sub_1012B6E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1012BE854(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6EA0(uint64_t a1, int a2, int a3)
{
  v15 = a2;
  v13 = 1;
  v14 = a1 + 80;
  if (a2 == 3)
  {
    subscriber::makeSimSlotRange();
    v4 = v10;
    v5 = v11;
    if (v10 != v11)
    {
      v6 = v12;
      do
      {
        if (v12(*v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 != v11);
      v7 = v11;
      while (v4 != v7)
      {
        v9 = *v4;
        v16 = &v9;
        *(sub_10030C46C(v14 + 32, &v9) + 8) = a3;
        do
        {
          ++v4;
        }

        while (v4 != v5 && (v6(*v4) & 1) == 0);
      }
    }
  }

  else
  {
    v10 = &v15;
    *(sub_10030C46C(a1 + 112, &v15) + 8) = a3;
  }

  return sub_1012BE980(&v13);
}

void sub_1012B6FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1012BE980(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6FE8(uint64_t a1, int a2, uint64_t a3, int a4, char a5, char a6)
{
  v33 = a2;
  v30[0] = 1;
  v31 = 0u;
  v32 = 0;
  v30[1] = a1 + 2336;
  sub_10011D214(&v31, a1 + 2368);
  if (a2 == 3)
  {
    subscriber::makeSimSlotRange();
    v11 = v27;
    v12 = v28;
    if (v27 != v28)
    {
      v13 = v29;
      do
      {
        if (v29(*v11))
        {
          break;
        }

        ++v11;
      }

      while (v11 != v28);
      v14 = v28;
      while (v11 != v14)
      {
        v26 = *v11;
        MCC::MCC(v18, a3);
        MCC::MCC(&v21, (a3 + 32));
        v24 = a4;
        LOBYTE(v25) = a5;
        HIBYTE(v25) = a6;
        v34 = &v26;
        v15 = sub_1012BEB60(&v31, v26);
        MCC::operator=();
        MCC::operator=();
        *(v15 + 26) = v24;
        *(v15 + 54) = v25;
        if (v23 < 0)
        {
          operator delete(__p);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }

        do
        {
          ++v11;
        }

        while (v11 != v12 && (v13(*v11) & 1) == 0);
      }
    }
  }

  else
  {
    MCC::MCC(v18, a3);
    MCC::MCC(&v21, (a3 + 32));
    v24 = a4;
    LOBYTE(v25) = a5;
    HIBYTE(v25) = a6;
    v27 = &v33;
    v16 = sub_1012BEB60(&v31, a2);
    MCC::operator=();
    MCC::operator=();
    *(v16 + 26) = v24;
    *(v16 + 54) = v25;
    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }
  }

  return sub_1012BE9E8(v30);
}

void sub_1012B7218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1012BE9E8(&a26);
  _Unwind_Resume(a1);
}

void sub_1012B726C(void *a1, int a2)
{
  if (a2 == 2)
  {
    RegisteredNetworkInfo::operator=();
    v5 = a1[132];
    if (!v5)
    {
      return;
    }

    v4 = *(*v5 + 48);
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    RegisteredNetworkInfo::operator=();
    v3 = a1[27];
    if (!v3)
    {
      return;
    }

    v4 = *(*v3 + 48);
LABEL_7:

    v4();
    return;
  }

  v6 = a1[1];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unhandled slot %s for registered network info", &v7, 0xCu);
  }
}

uint64_t sub_1012B73E4(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v20 = 1;
  v21 = a1 + 2840;
  subscriber::makeSimSlotRange();
  v6 = v17;
  v7 = v18;
  if (v17 != v18)
  {
    v8 = v19;
    do
    {
      if (v19(*v6))
      {
        break;
      }

      ++v6;
    }

    while (v6 != v18);
    v9 = v18;
    while (v6 != v9)
    {
      v16 = *v6;
      v13 = 0uLL;
      v14 = 0;
      sub_1003647D4(&v13, *a3, a3[1], (a3[1] - *a3) >> 2);
      v15 = a4;
      v22 = &v16;
      v10 = sub_1010DC738(v21 + 32, &v16);
      v11 = v10[5];
      if (v11)
      {
        v10[6] = v11;
        operator delete(v11);
        v10[5] = 0;
        v10[6] = 0;
        v10[7] = 0;
      }

      *(v10 + 5) = v13;
      v10[7] = v14;
      *(v10 + 16) = v15;
      do
      {
        ++v6;
      }

      while (v6 != v7 && (v8(*v6) & 1) == 0);
    }
  }

  return sub_1012BEC7C(&v20);
}

uint64_t sub_1012B7568(uint64_t a1, int a2, int a3)
{
  v15 = a2;
  v13 = 1;
  v14 = a1 + 136;
  if (a2 == 3)
  {
    subscriber::makeSimSlotRange();
    v4 = state.opaque[0];
    v5 = state.opaque[1];
    if (state.opaque[0] != state.opaque[1])
    {
      v6 = v12;
      do
      {
        if (v12(*v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 != state.opaque[1]);
      v7 = state.opaque[1];
      while (v4 != v7)
      {
        v10 = *v4;
        v16 = &v10;
        *(sub_100EB3B10(v14 + 32, v10) + 8) = a3;
        do
        {
          ++v4;
        }

        while (v4 != v5 && (v6(*v4) & 1) == 0);
      }
    }

    goto LABEL_17;
  }

  state.opaque[0] = &v15;
  *(sub_100EB3B10(a1 + 168, a2) + 8) = a3;
  switch(v15)
  {
    case 3:
LABEL_17:
      v8 = "SIM Slot_All: Registration status update";
      break;
    case 2:
      if ((a3 & 0xFFFFFFFE) == 4)
      {
        v8 = "SIM Slot_2: Registration status update to Registered";
      }

      else if (a3 == 6)
      {
        v8 = "SIM Slot_2: Registration status update to EmergencyOnly";
      }

      else if ((a3 & 0xFFFFFFFD) == 1)
      {
        v8 = "SIM Slot_2: Registration status update to NotRegistered";
      }

      else
      {
        v8 = "SIM Slot_2: Registration status update";
      }

      break;
    case 1:
      if ((a3 & 0xFFFFFFFE) == 4)
      {
        v8 = "SIM Slot_1: Registration status update to Registered";
      }

      else if (a3 == 6)
      {
        v8 = "SIM Slot_1: Registration status update to EmergencyOnly";
      }

      else if ((a3 & 0xFFFFFFFD) == 1)
      {
        v8 = "SIM Slot_1: Registration status update to NotRegistered";
      }

      else
      {
        v8 = "SIM Slot_1: Registration status update";
      }

      break;
    default:
      v8 = "SIM Slot_Unknown: Registration status update";
      break;
  }

  v16 = _os_activity_create(&_mh_execute_header, v8, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  os_activity_scope_leave(&state);
  sub_1000C0590(&v16);
  return sub_1012BECE4(&v13);
}

void sub_1012B77A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1012BECE4(va);
  _Unwind_Resume(a1);
}

void sub_1012B77C4(uint64_t a1, int a2, char a3, char a4)
{
  if (a2 == 2)
  {
    *(a1 + 1944) = a3;
    *(a1 + 1945) = a4;
    *(a1 + 1946) = 0;
    v4 = *(a1 + 1936);
    if (!v4)
    {
      return;
    }

    v5 = *(*v4 + 48);
    v6 = a1 + 1944;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    *(a1 + 1904) = a3;
    *(a1 + 1905) = a4;
    *(a1 + 1906) = 0;
    v4 = *(a1 + 1896);
    if (!v4)
    {
      return;
    }

    v5 = *(*v4 + 48);
    v6 = a1 + 1904;
LABEL_7:

    v5(v4, v6);
    return;
  }

  v7 = *(a1 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unhandled slot %s for RAT selection update", &v8, 0xCu);
  }
}

void sub_1012B793C(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    *(a1 + 1944) = 0;
    *(a1 + 1946) = 1;
    v2 = *(a1 + 1936);
    if (!v2)
    {
      return;
    }

    v3 = *(*v2 + 48);
    v4 = a1 + 1944;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    *(a1 + 1904) = 0;
    *(a1 + 1906) = 1;
    v2 = *(a1 + 1896);
    if (!v2)
    {
      return;
    }

    v3 = *(*v2 + 48);
    v4 = a1 + 1904;
LABEL_7:

    v3(v2, v4);
    return;
  }

  v5 = *(a1 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unhandled slot %s for RAT selection failed", &v6, 0xCu);
  }
}

uint64_t sub_1012B7AB4(uint64_t a1, int a2, int a3)
{
  v45[1] = a1 + 2392;
  v45[0] = 1;
  v47 = 0;
  v48 = 0;
  v46 = &v47;
  v3 = *(a1 + 2424);
  v4 = (a1 + 2432);
  if (v3 != (a1 + 2432))
  {
    while (1)
    {
      v42 = 0;
      v5 = v47;
      if (v46 == &v47)
      {
        break;
      }

      v6 = &v47;
      if (v47)
      {
        do
        {
          v7 = v5;
          v5 = *(v5 + 1);
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v6[2];
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (v8);
      }

      if ((sub_1000068BC(v7 + 4, v3 + 4) & 0x80) != 0)
      {
        if (!v47)
        {
LABEL_14:
          v42 = &v47;
LABEL_15:
          operator new();
        }

        goto LABEL_10;
      }

      v9 = sub_100005C2C(&v46, &v42, v3 + 4);
LABEL_11:
      if (!*v9)
      {
        goto LABEL_15;
      }

      v10 = v3[1];
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
          v11 = v3[2];
          v8 = *v11 == v3;
          v3 = v11;
        }

        while (!v8);
      }

      v3 = v11;
      if (v11 == v4)
      {
        goto LABEL_22;
      }
    }

    v7 = &v47;
    if (!v47)
    {
      goto LABEL_14;
    }

LABEL_10:
    v42 = v7;
    v9 = v7 + 1;
    goto LABEL_11;
  }

LABEL_22:
  v51 = 0;
  v52 = 0;
  v50 = &v51;
  subscriber::makeSimSlotRange();
  v12 = v42;
  v13 = v43;
  if (v42 != v43)
  {
    v14 = v44;
    do
    {
      if (v14(*v12))
      {
        break;
      }

      ++v12;
    }

    while (v12 != v13);
    v15 = v43;
    while (v12 != v15)
    {
      v16 = *v12;
      v40 = 0;
      v41 = 0;
      ServiceMap = Registry::getServiceMap(*(a1 + 48));
      v18 = ServiceMap;
      if ((v19 & 0x8000000000000000) != 0)
      {
        v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
        v21 = 5381;
        do
        {
          v19 = v21;
          v22 = *v20++;
          v21 = (33 * v21) ^ v22;
        }

        while (v22);
      }

      std::mutex::lock(ServiceMap);
      v49 = v19;
      v23 = sub_100009510(&v18[1].__m_.__sig, &v49);
      if (v23)
      {
        v25 = v23[3];
        v24 = v23[4];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v18);
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v24);
          v26 = 0;
          goto LABEL_36;
        }
      }

      else
      {
        v25 = 0;
      }

      std::mutex::unlock(v18);
      v24 = 0;
      v26 = 1;
LABEL_36:
      (*(*v25 + 8))(&v40, v25, v16);
      if ((v26 & 1) == 0)
      {
        sub_100004A34(v24);
      }

      if (v40)
      {
        v27 = (v40 + 24);
        if (v16 == a2)
        {
          v49 = v40 + 24;
          *(sub_1012BEF10(&v50, (v40 + 24)) + 56) = a3;
        }

        else
        {
          v28 = v47;
          if (v47)
          {
            v29 = &v47;
            do
            {
              v30 = v29;
              v31 = v28 + 32;
              v32 = sub_1000068BC(v28 + 4, v27);
              if ((v32 & 0x80u) == 0)
              {
                v29 = v28;
              }

              v28 = *&v28[(v32 >> 4) & 8];
            }

            while (v28);
            if (v29 != &v47)
            {
              v33 = (v32 & 0x80u) == 0 ? v31 : (v30 + 4);
              if ((sub_1000068BC(v27, v33) & 0x80) == 0)
              {
                v34 = *(v29 + 14);
                v49 = v40 + 24;
                *(sub_1012BEF10(&v50, (v40 + 24)) + 56) = v34;
              }
            }
          }
        }
      }

      if (v41)
      {
        sub_100004A34(v41);
      }

      do
      {
        ++v12;
      }

      while (v12 != v13 && (v14(*v12) & 1) == 0);
    }
  }

  sub_100009970(&v46, v47);
  v35 = v51;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  if (v52)
  {
    *(v51 + 16) = &v47;
    v50 = &v51;
    v51 = 0;
    v52 = 0;
    v35 = 0;
  }

  else
  {
    v46 = &v47;
  }

  sub_100009970(&v50, v35);
  return sub_1012BED4C(v45);
}

void sub_1012B7EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_100009970(v10 - 104, *(v10 - 96));
  sub_1012BED4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B7F80(uint64_t a1, int a2, __int16 a3)
{
  v8 = a2;
  if ((a3 & 0x100) != 0)
  {
    v6 = a2;
    v7 = a3;
    v12 = 0;
    sub_10031DEC4(&v6, &v12);
    sub_10000501C(__p, "/cc/events/cs_voice_support_changed");
    object = v12;
    v12 = xpc_null_create();
    ctu::RestModule::sendEvent();
    xpc_release(object);
    object = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v12);
  }

  __p[0] = 1;
  __p[1] = (a1 + 2448);
  v12 = &v8;
  *(sub_10095B208(a1 + 2480, &v8) + 16) = a3;
  return sub_1012BEFE8(__p);
}

void sub_1012B8064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v18 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012B80B8(uint64_t a1, uint64_t a2, int a3)
{
  v13[0] = 1;
  v14 = 0u;
  v15 = 0;
  v13[1] = a1 + 2728;
  sub_100903918(&v14, a1 + 2760);
  subscriber::makeSimSlotRange();
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    v6 = v12;
    do
    {
      if (v12(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v11);
    v7 = v11;
    while (v4 != v7)
    {
      v9 = *v4;
      v16 = &v9;
      *(sub_10030C46C(&v14, &v9) + 8) = a3;
      do
      {
        ++v4;
      }

      while (v4 != v5 && (v6(*v4) & 1) == 0);
    }
  }

  return sub_1012BF050(v13);
}

void sub_1012B81CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1012BF050(va);
  _Unwind_Resume(a1);
}

void sub_1012B81EC(uint64_t a1, int a2)
{
  v8 = 0;
  v2 = a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/subscription_changed");
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

void sub_1012B8290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012B82D4(uint64_t a1, int a2, char a3, int a4, char a5, char a6)
{
  if (a2 == 1)
  {
    v9 = event::registration::networkRejectPS[1];
    if (!v9)
    {
      __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
    }

    v55 = a3;
    v54 = a4;
    v53 = a5;
    v52 = a6;
    v51 = 0uLL;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v10 = sub_10004A4A8(v9 + 3);
    sub_100048D3C(&v59, v10);
    v11 = v9[1];
    if (v11)
    {
      if (atomic_load_explicit((v11 + 8), memory_order_acquire) == 1)
      {
        v12 = v9[1];
        if (!v12 || atomic_load_explicit((v12 + 8), memory_order_acquire) != 1)
        {
          __assert_rtn("nolock_cleanup_connections", "signal_template.hpp", 461, "_shared_state.unique()");
        }

        v13 = sub_1012BF174(*v9);
        v14 = sub_1012BF580(*v13);
        v15 = v9[2];
        if (v15 == v14)
        {
          v16 = sub_1012BF174(*v9);
          v15 = *(sub_1012BF580(*v16) + 8);
        }

        *&v56 = v15;
        sub_1012BF1B4(v9, &v56, 1);
      }

      v17 = *v9;
      v18 = v9[1];
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v18 = 0;
      v17 = *v9;
    }

    v19 = v51;
    *&v51 = v17;
    *(&v51 + 1) = v18;
    v56 = v19;
    sub_10004A724(&v56 + 1);
    sub_10004A704(*(&v70 + 1));
    sub_10004A6B0(&v59);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v74 = 0;
    v75 = 10;
    v76 = &v59 + 8;
    v77 = 0;
    v78 = &v55;
    v79 = &v54;
    v80 = &v53;
    v81 = &v52;
    v82 = 0;
    v83 = 0;
    v20 = sub_1012BF174(v51);
    v21 = sub_1012BF580(*v20);
    v50[0] = &v59;
    v50[1] = v9;
    v50[2] = v21;
    v22 = sub_1012BF174(v51);
    sub_10004AA88((v22 + 16));
    v23 = sub_1012BF174(v51);
    v24 = *(sub_1012BF580(*v23) + 8);
    v25 = sub_1012BF174(v51);
    v26 = sub_1012BF580(*v25);
    *&v48 = v24;
    *(&v48 + 1) = v26;
    *&v49 = &v59;
    *(&v49 + 1) = v26;
    sub_1012BF5C0(&v48);
    v27 = *sub_1012BF174(v51);
    sub_1012BF580(v27);
    v28 = sub_1012BF174(v51);
    v29 = sub_1012BF580(*v28);
    v47[0] = v27;
    v47[1] = v29;
    v47[2] = &v59;
    v47[3] = v29;
    sub_1012BF5C0(v47);
    v56 = v48;
    v57 = v49;
    v30 = v47[0];
    v31 = v48;
    if (v48 != v47[0])
    {
      v32 = v57;
      v33 = *v57;
      do
      {
        if ((v33 & 1) == 0)
        {
          v34 = sub_1012BF500(*(v31 + 16));
          v35 = sub_1012BF540(*(v34 + 32));
          v36 = *(v35 + 24);
          if (!v36)
          {
            std::runtime_error::runtime_error(&v58, "call to empty boost::function");
            v58.__vftable = &off_101E25EA8;
            sub_1001028A8(&v58);
          }

          (*((v36 & 0xFFFFFFFFFFFFFFFELL) + 8))(v35 + 32, **(v32 + 272), **(v32 + 280), **(v32 + 288), **(v32 + 296));
          if ((*v32 & 1) == 0)
          {
            *v32 = 1;
          }
        }

        *&v56 = *(v31 + 8);
        sub_1012BF5C0(&v56);
        v32 = v57;
        if (*v57 == 1)
        {
          *v57 = 0;
        }

        v33 = 0;
        v31 = v56;
      }

      while (v56 != v30);
    }

    sub_1012BF9A4(v50);
    sub_1012C0194(&v59);
    sub_10004A724(&v51 + 1);
  }

  *&v56 = 1;
  *(&v56 + 1) = a1 + 2784;
  subscriber::makeSimSlotRange();
  v38 = *(&v59 + 1);
  v37 = v59;
  if (v59 != *(&v59 + 1))
  {
    v39 = v60;
    do
    {
      if (v39(*v37))
      {
        break;
      }

      ++v37;
    }

    while (v37 != v38);
    v40 = *(&v59 + 1);
    while (v37 != v40)
    {
      v41 = *v37;
      LODWORD(v47[0]) = *v37;
      v42 = *(*(&v56 + 1) + 40);
      v43 = *(&v56 + 1) + 32;
      if (!v42)
      {
        goto LABEL_37;
      }

      v44 = *(&v56 + 1) + 40;
      do
      {
        if (*(v42 + 28) >= v41)
        {
          v44 = v42;
        }

        v42 = *(v42 + 8 * (*(v42 + 28) < v41));
      }

      while (v42);
      if (v44 != *(&v56 + 1) + 40 && v41 >= *(v44 + 28))
      {
        *&v48 = v47;
        *(sub_1012C02F4(v43, v41) + 32) = a3;
        *&v48 = v47;
        v45 = sub_1012C02F4(*(&v56 + 1) + 32, v47[0]);
      }

      else
      {
LABEL_37:
        *&v48 = v47;
        v45 = sub_1012C02F4(v43, v41);
        *(v45 + 32) = a3;
        *(v45 + 33) = 0;
      }

      *(v45 + 9) = a4;
      do
      {
        ++v37;
      }

      while (v37 != v38 && (v39(*v37) & 1) == 0);
    }
  }

  return sub_1012C028C(&v56);
}

void sub_1012B884C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1012B88BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1012C028C(va);
  _Unwind_Resume(a1);
}

void sub_1012B88CC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1012B88D4);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012B88E4(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v16 = 1;
  v17 = a1 + 2784;
  subscriber::makeSimSlotRange();
  v6 = v13;
  if (v13 != v14)
  {
    do
    {
      if (v15(*v6))
      {
        break;
      }

      ++v6;
    }

    while (v6 != v14);
    while (v6 != v14)
    {
      v7 = *(v17 + 40);
      v8 = v17 + 32;
      if (!v7)
      {
        goto LABEL_12;
      }

      v9 = *v6;
      v10 = v17 + 40;
      do
      {
        if (*(v7 + 28) >= v9)
        {
          v10 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 28) < v9));
      }

      while (v7);
      if (v10 != v17 + 40 && v9 >= *(v10 + 28))
      {
        v18 = v6;
        *(sub_1012C02F4(v8, *v6) + 33) = a3;
        v18 = v6;
        v11 = sub_1012C02F4(v17 + 32, *v6);
      }

      else
      {
LABEL_12:
        v18 = v6;
        v11 = sub_1012C02F4(v8, *v6);
        *(v11 + 32) = 0;
        *(v11 + 33) = a3;
      }

      *(v11 + 9) = a4;
      do
      {
        ++v6;
      }

      while (v6 != v14 && (v15(*v6) & 1) == 0);
    }
  }

  return sub_1012C028C(&v16);
}

void sub_1012B8A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1012C028C(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1012B8A44(uint64_t a1, int a2, char a3)
{
  LODWORD(v31) = a2;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
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
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  sub_10000D518(&v39);
  v5 = subscriber::operator<<();
  sub_10000C030(v5);
  std::ostream::operator<<();
  sub_10000D684(&v39, __p);
  sub_1000841A0(&event::activation::serviceProvisioned[3], __p);
  if (SBYTE7(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(*(&v43 + 1));
  }

  std::locale::~locale(&v40);
  std::ostream::~ostream();
  std::ios::~ios();
  v6 = sub_100B89AD0(&event::activation::serviceProvisioned[1]);
  v36 = a2;
  v35 = a3;
  v34 = 0uLL;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = sub_10004A4A8(v6 + 3);
  sub_100048D3C(&v39, v7);
  v8 = v6[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_100B8A108(v6, &v39, 0, 1);
    }

    v9 = *v6;
    v10 = v6[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *v6;
  }

  v11 = v34;
  *&v34 = v9;
  *(&v34 + 1) = v10;
  *__p = v11;
  sub_10004A724(&__p[1]);
  sub_10004A704(*(&v50 + 1));
  sub_10004A6B0(&v39);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  *&v54 = 0;
  *(&v54 + 1) = 10;
  v55 = &v39 + 8;
  v56 = 0;
  v57 = &v36;
  v58 = &v35;
  v59 = 0;
  v60 = 0;
  v12 = sub_100B89DA0(&v34);
  v33[0] = &v39;
  v33[1] = v6;
  v33[2] = sub_100B8AFB8(v12);
  v13 = sub_100B89DA0(&v34);
  sub_10004AA88((v13 + 16));
  v14 = sub_100B89DA0(&v34);
  v15 = *(sub_100B8AFB8(v14) + 8);
  v16 = sub_100B89DA0(&v34);
  *&v31 = v15;
  *(&v31 + 1) = sub_100B8AFB8(v16);
  *&v32 = &v39;
  *(&v32 + 1) = *(&v31 + 1);
  sub_1012C03BC(&v31);
  v17 = sub_100B89DA0(&v34);
  v18 = sub_100B8AFB8(v17);
  v19 = sub_100B89DA0(&v34);
  v27 = v18;
  v28 = sub_100B8AFB8(v19);
  v29 = &v39;
  v30 = v28;
  sub_1012C03BC(&v27);
  *__p = v31;
  v38 = v32;
  v20 = v27;
  v21 = v31;
  if (v31 != v27)
  {
    v22 = v38;
    v23 = *v38;
    do
    {
      if ((v23 & 1) == 0)
      {
        v24 = sub_100B89DE4(v21 + 2);
        v25 = sub_100B8A768((v24 + 32));
        sub_100B8B714((v25 + 24));
        if ((*v22 & 1) == 0)
        {
          *v22 = 1;
        }
      }

      if ((*v38 & 1) == 0)
      {
        __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
      }

      __p[0] = *(__p[0] + 1);
      sub_1012C03BC(__p);
      v22 = v38;
      if (*v38 == 1)
      {
        *v38 = 0;
      }

      v23 = 0;
      v21 = __p[0];
    }

    while (__p[0] != v20);
  }

  sub_1012C072C(v33);
  sub_1012C08F4(&v39);
  return sub_10004A724(&v34 + 1);
}

void sub_1012B8F00(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x1012B8F70);
}

void sub_1012B8F84()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/e911_state_ready");
  object = v3;
  v3 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_1012B9020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_1012B9064()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/e911_chosen_slot");
  object = v3;
  v3 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_1012B90FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_1012B9140(uint64_t a1, int a2)
{
  v8 = 0;
  v2 = a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/e911_scan_failed");
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

void sub_1012B91E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_1012B9228()
{
  sub_10000501C(&__p, "/cc/events/e911_state_exit_completed");
  object = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }
}

void sub_1012B9298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1012B92C8(uint64_t a1, int a2, int a3)
{
  v3 = &_mh_execute_header;
  if (!a3)
  {
    BYTE4(v3) = 0;
  }

  v4 = a2;
  v5 = BYTE4(v3);
  v9 = 0;
  sub_10031DEC4(&v4, &v9);
  sub_10000501C(&__p, "/cc/events/first_scan_completed");
  object = v9;
  v9 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  object = 0;
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_1012B9374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012B93B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    (*(**(a1 + 32) + 88))(*(a1 + 32), a3, a4);
  }

  v5 = *(**(a1 + 32) + 40);

  return v5();
}

uint64_t sub_1012B944C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    (*(**(a1 + 32) + 96))(*(a1 + 32), a3, a4);
  }

  v5 = *(**(a1 + 32) + 104);

  return v5();
}

void sub_1012B94F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v6 = *(a3 + 16);
  }

  (*(*v4 + 24))(v4, a2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1012B9584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012B95A0(uint64_t a1, uint64_t a2, int a3)
{
  v13 = 1;
  v14 = a1 + 2000;
  subscriber::makeSimSlotRange();
  v4 = v10;
  if (v10 != v11)
  {
    do
    {
      if (v12(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v11);
    while (v4 != v11)
    {
      v5 = *v4;
      v6 = *(v14 + 40);
      if (!v6)
      {
LABEL_12:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = *(v6 + 7);
          if (v8 <= v5)
          {
            break;
          }

          v6 = *v7;
          if (!*v7)
          {
            goto LABEL_12;
          }
        }

        if (v8 >= v5)
        {
          break;
        }

        v6 = v7[1];
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      *(v7 + 8) = a3;
      do
      {
        ++v4;
      }

      while (v4 != v11 && (v12(*v4) & 1) == 0);
    }
  }

  return sub_1012C09EC(&v13);
}

void sub_1012B96E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1012C09EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B9700(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = subscriber::asString();
    v8 = asStringBool(*a3);
    *v14 = 136315394;
    *&v14[4] = v7;
    *&v14[12] = 2080;
    *&v14[14] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Updating EmergencySupport REST for %s, limited: %s", v14, 0x16u);
  }

  *v14 = 1;
  *&v14[8] = a1 + 2896;
  v9 = *(a1 + 2936);
  if (!v9)
  {
LABEL_10:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      v11 = *(v9 + 7);
      if (v11 <= a2)
      {
        break;
      }

      v9 = *v10;
      if (!*v10)
      {
        goto LABEL_10;
      }
    }

    if (v11 >= a2)
    {
      break;
    }

    v9 = v10[1];
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v12 = *a3;
  *(v10 + 10) = *(a3 + 2);
  v10[4] = v12;
  return sub_1012C0A54(v14);
}

uint64_t sub_1012B989C(uint64_t a1)
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

uint64_t sub_1012B991C(uint64_t a1)
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

void sub_1012B999C(char *a1)
{
  if (a1)
  {
    sub_1012B999C(*a1);
    sub_1012B999C(*(a1 + 1));
    if (a1[71] < 0)
    {
      operator delete(*(a1 + 6));
    }

    operator delete(a1);
  }
}

uint64_t sub_1012B99F8(uint64_t a1)
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

uint64_t sub_1012B9A78(uint64_t a1)
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

uint64_t sub_1012B9AF8(uint64_t a1)
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

uint64_t sub_1012B9B78(uint64_t a1)
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

uint64_t sub_1012B9BF8(uint64_t a1)
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

uint64_t sub_1012B9C78(uint64_t a1)
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

uint64_t sub_1012B9CF8(uint64_t a1)
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

uint64_t sub_1012B9D78(uint64_t a1)
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

uint64_t sub_1012B9DF8(uint64_t a1)
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

uint64_t sub_1012B9E78(uint64_t a1)
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

uint64_t sub_1012B9EF8(uint64_t a1)
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

uint64_t sub_1012B9F78(uint64_t a1)
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

uint64_t sub_1012B9FF8(uint64_t a1)
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

uint64_t sub_1012BA078(uint64_t a1)
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

void sub_1012BA178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012BA1B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012BA1EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1012BA21C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BA2CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26D38;
  a2[1] = v2;
  return result;
}

void sub_1012BA2F8(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v29 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v29 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v29 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v27, v11, v12, v13);
      __p = &v29;
      v23 = "first";
      sub_10000F688(&__p, &v27, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v27);
      v27 = 0;
      v14 = *(v6 + 8);
      v15 = asString();
      ctu::rest::detail::write_enum_string_value(&v25, v14, v15, v16);
      __p = &v29;
      v23 = "second";
      sub_10000F688(&__p, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v17 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v29);
      xpc_array_append_value(v4, v17);
      xpc_release(v17);
      v18 = v6[1];
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
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v21 = v4;
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/rat");
  v29 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v29 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v29);
  v29 = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
}

void sub_1012BA5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BA688(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BA744(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26DC8;
  a2[1] = v2;
  return result;
}

void sub_1012BA770(uint64_t a1, const RegisteredNetworkInfo *a2)
{
  v5 = 0;
  write_rest_value(a2);
  sub_10000501C(&__p, "/cc/props/reg_net_info2");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BA814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BA858(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012BA8A4(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1012BAB04(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012BAB80(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26E58;
  a2[1] = v2;
  return result;
}

void sub_1012BABAC(uint64_t a1, const RegisteredNetworkInfo *a2)
{
  v5 = 0;
  write_rest_value(a2);
  sub_10000501C(&__p, "/cc/props/reg_net_info1");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BAC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BAC94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BAD50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26ED8;
  a2[1] = v2;
  return result;
}

void sub_1012BAD7C()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/props/reg_rat_selection1");
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_1012BAE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BAE64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012BAEB0(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1012BB110(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012BB18C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26F68;
  a2[1] = v2;
  return result;
}

void sub_1012BB1B8()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/props/reg_rat_selection2");
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_1012BB25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BB2A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BB35C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26FE8;
  a2[1] = v2;
  return result;
}

void sub_1012BB388(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v29 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v29 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v29 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v27, v11, v12, v13);
      __p = &v29;
      v23 = "first";
      sub_10000F688(&__p, &v27, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v27);
      v27 = 0;
      v14 = *(v6 + 8);
      v15 = asString();
      ctu::rest::detail::write_enum_string_value(&v25, v14, v15, v16);
      __p = &v29;
      v23 = "second";
      sub_10000F688(&__p, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v17 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v29);
      xpc_array_append_value(v4, v17);
      xpc_release(v17);
      v18 = v6[1];
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
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v21 = v4;
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/registration_status");
  v29 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v29 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v29);
  v29 = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
}

void sub_1012BB660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BB718(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BB7D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27078;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012BB808(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012BB854()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/props/emergency_callback_mode");
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_1012BB8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1012BB93C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1012BBB9C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012BBC18(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27108;
  a2[1] = v2;
  return result;
}

void sub_1012BBC44(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v29 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v29 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v29 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v27, v11, v12, v13);
      __p = &v29;
      v23 = "first";
      sub_10000F688(&__p, &v27, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v27);
      v27 = 0;
      v14 = *(v6 + 8);
      v15 = asString();
      ctu::rest::detail::write_enum_string_value(&v25, v14, v15, v16);
      __p = &v29;
      v23 = "second";
      sub_10000F688(&__p, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v17 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v29);
      xpc_array_append_value(v4, v17);
      xpc_release(v17);
      v18 = v6[1];
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
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v21 = v4;
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/cipher_domains");
  v29 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v29 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v29);
  v29 = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
}

void sub_1012BBF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BBFD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC090(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27198;
  a2[1] = v2;
  return result;
}

void sub_1012BC0BC(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/reg_network_scan");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BC160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BC1A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC260(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27218;
  a2[1] = v2;
  return result;
}

void sub_1012BC28C(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/reg_cs_attached");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BC330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BC374(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC430(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27298;
  a2[1] = v2;
  return result;
}

void sub_1012BC45C(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/reg_ps_attached");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BC500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BC544(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC600(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27318;
  a2[1] = v2;
  return result;
}

void sub_1012BC62C(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/reg_data_attached");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BC6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BC714(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC7D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27398;
  a2[1] = v2;
  return result;
}

void sub_1012BC7FC(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_1010DCE38(a2, &v5);
  sub_10000501C(&__p, "/cc/props/reg_data_modes");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BC8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BC8E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC9A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27428;
  a2[1] = v2;
  return result;
}

void sub_1012BC9CC(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 8);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v24, v11, v12, v13);
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      rest::write_rest_value();
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/reg_serving_network");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_1012BCC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BCD4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BCE08(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F274B8;
  a2[1] = v2;
  return result;
}

void sub_1012BCE34(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      write_rest_value();
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      v11 = *(v6 + 14);
      v12 = asString();
      ctu::rest::detail::write_enum_string_value(&v22, v11, v12, v13);
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/ims_voice_support");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_1012BD0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BD1B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BD270(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27548;
  a2[1] = v2;
  return result;
}

void sub_1012BD29C(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_1010DE5F0(a2, &v5);
  sub_10000501C(&__p, "/cc/props/cs_voice_support");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BD340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BD384(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BD440(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F275D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012BD46C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012BD4B8(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1012BD718(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012BD794(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27668;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012BD7C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BD87C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F276E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012BD8A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BD964(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27778;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012BD990(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BDA4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27808;
  a2[1] = v2;
  return result;
}

void sub_1012BDA78(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_100B7CA68(a2, &v5);
  sub_10000501C(&__p, "/cc/props/tracking_area_update_timers");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BDB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BDB60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BDC1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27888;
  a2[1] = v2;
  return result;
}

void sub_1012BDC48(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v24, v11, v12, v13);
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      rest::write_rest_value();
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/network_rejects");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_1012BDF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BDFC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BE084(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27918;
  a2[1] = v2;
  return result;
}

void sub_1012BE0B0(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_1010DC5CC(a2, &v5);
  sub_10000501C(&__p, "cc/props/ims_preference_states");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BE154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BE198(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BE254(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F279A8;
  a2[1] = v2;
  return result;
}

void sub_1012BE280(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v24, v11, v12, v13);
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      write_rest_value();
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/ims_emergency_support");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_1012BE548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BE600(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BE64C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE6B4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE71C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE784(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE7EC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE854(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 16);
      while (1)
      {
        v5 = *(v3 + 7) == *(v4 + 7) && *(v3 + 32) == *(v4 + 32);
        if (!v5)
        {
          break;
        }

        v6 = v3[1];
        v7 = v3;
        if (v6)
        {
          do
          {
            v3 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v3 = v7[2];
            v5 = *v3 == v7;
            v7 = v3;
          }

          while (!v5);
        }

        v8 = v4[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v4[2];
            v5 = *v9 == v4;
            v4 = v9;
          }

          while (!v5);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_24;
        }
      }
    }

    sub_10004645C((v2 + 4), (a1 + 16));
    v10 = v2[3];
    if (v10)
    {
      (*(*v10 + 48))(v10, v2 + 4);
    }
  }

LABEL_24:
  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1012BE980(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE9E8(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 16);
      while (*(v3 + 8) == *(v4 + 8) && rest::operator==())
      {
        v5 = v3[1];
        v6 = v3;
        if (v5)
        {
          do
          {
            v3 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v3 = v6[2];
            v7 = *v3 == v6;
            v6 = v3;
          }

          while (!v7);
        }

        v8 = v4[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v4[2];
            v7 = *v9 == v4;
            v4 = v9;
          }

          while (!v7);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_24;
        }
      }
    }

    v10 = v2 + 5;
    sub_10004C4EC((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v11 = (a1 + 24);
    v2[5] = v12;
    v2[6] = v13;
    if (v13)
    {
      *(v12 + 16) = v10;
      *(a1 + 16) = v11;
      *v11 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v10;
    }

    v14 = v2[3];
    if (v14)
    {
      (*(*v14 + 48))(v14, v2 + 4);
    }
  }

LABEL_24:
  sub_10004C4EC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t *sub_1012BEB60(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1012BEC68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045EDC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BEC7C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BECE4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BED4C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_39;
      }

      v4 = *(a1 + 16);
      while (1)
      {
        v5 = *(v3 + 55);
        if (v5 >= 0)
        {
          v6 = *(v3 + 55);
        }

        else
        {
          v6 = v3[5];
        }

        v7 = *(v4 + 55);
        v8 = v7;
        if ((v7 & 0x80u) != 0)
        {
          v7 = v4[5];
        }

        if (v6 != v7)
        {
          break;
        }

        v9 = v5 >= 0 ? v3 + 4 : v3[4];
        v10 = v8 >= 0 ? v4 + 4 : v4[4];
        v11 = !memcmp(v9, v10, v6) && *(v3 + 14) == *(v4 + 14);
        if (!v11)
        {
          break;
        }

        v12 = v3[1];
        v13 = v3;
        if (v12)
        {
          do
          {
            v3 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v3 = v13[2];
            v11 = *v3 == v13;
            v13 = v3;
          }

          while (!v11);
        }

        v14 = v4[1];
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
            v15 = v4[2];
            v11 = *v15 == v4;
            v4 = v15;
          }

          while (!v11);
        }

        v4 = v15;
        if (v3 == v2 + 5)
        {
          goto LABEL_39;
        }
      }
    }

    v16 = v2 + 5;
    sub_100009970((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    v17 = (a1 + 24);
    v2[5] = v18;
    v2[6] = v19;
    if (v19)
    {
      *(v18 + 16) = v16;
      *(a1 + 16) = v17;
      *v17 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v16;
    }

    v20 = v2[3];
    if (v20)
    {
      (*(*v20 + 48))(v20, v2 + 4);
    }
  }

LABEL_39:
  sub_100009970(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1012BEF10(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *sub_100005C2C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1012BEFE8(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BF050(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 16);
      while (1)
      {
        v5 = *(v3 + 7) == *(v4 + 7) && *(v3 + 8) == *(v4 + 8);
        if (!v5)
        {
          break;
        }

        v6 = v3[1];
        v7 = v3;
        if (v6)
        {
          do
          {
            v3 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v3 = v7[2];
            v5 = *v3 == v7;
            v7 = v3;
          }

          while (!v5);
        }

        v8 = v4[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v4[2];
            v5 = *v9 == v4;
            v4 = v9;
          }

          while (!v5);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_24;
        }
      }
    }

    sub_10004645C((v2 + 4), (a1 + 16));
    v10 = v2[3];
    if (v10)
    {
      (*(*v10 + 48))(v10, v2 + 4);
    }
  }

LABEL_24:
  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1012BF174(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1012BF1B4(uint64_t *a1, uint64_t **a2, int a3)
{
  v3 = a1[1];
  if (!v3 || atomic_load_explicit((v3 + 8), memory_order_acquire) != 1)
  {
    __assert_rtn("nolock_cleanup_connections_from", "signal_template.hpp", 436, "_shared_state.unique()");
  }

  v6 = *a2;
  v7 = sub_1012BF174(*a1);
  result = sub_1012BF580(*v7);
  if (result != v6)
  {
    v9 = 0;
    v10 = a3 - 1;
    do
    {
      if (*(sub_1012BF500(v6[2]) + 24))
      {
        v6 = v6[1];
      }

      else
      {
        v11 = *sub_1012BF174(*a1);
        sub_1012BF580(v11);
        v12 = v6[2];
        sub_1012BF500(v12);
        if (v6 == v11)
        {
          __assert_rtn("erase", "slot_groups.hpp", 148, "it != _list.end()");
        }

        v13 = v11 + 4;
        v14 = v11[4];
        if (!v14)
        {
          goto LABEL_51;
        }

        v35 = (v11 + 3);
        v15 = v11 + 4;
        do
        {
          v16 = sub_100100A24((v11 + 6), (v14 + 4), v12 + 64);
          v17 = v16;
          if (!v16)
          {
            v15 = v14;
          }

          v14 = v14[v17];
        }

        while (v14);
        if (v15 == v13)
        {
LABEL_51:
          __assert_rtn("erase", "slot_groups.hpp", 150, "map_it != _group_map.end()");
        }

        if (sub_100100A24((v11 + 7), (v15 + 4), v12 + 64) || sub_100100A24((v11 + 7), v12 + 64, (v15 + 4)))
        {
          __assert_rtn("erase", "slot_groups.hpp", 151, "weakly_equivalent(map_it->first, key)");
        }

        if (v15[6] == v6)
        {
          v18 = v6[1];
          v19 = *v13;
          v20 = v11;
          v34 = v18;
          if (*v13)
          {
            v21 = v11 + 4;
            do
            {
              v22 = sub_100100A24((v11 + 6), v12 + 64, (v19 + 4));
              v23 = !v22;
              if (v22)
              {
                v21 = v19;
              }

              v19 = v19[v23];
            }

            while (v19);
            v20 = v11;
            v18 = v34;
            if (v21 != v13)
            {
              v20 = v21[6];
            }
          }

          if (v18 == v20)
          {
            v25 = v15[1];
            v26 = v15;
            v10 = a3 - 1;
            if (v25)
            {
              do
              {
                v27 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v27 = v26[2];
                v28 = *v27 == v26;
                v26 = v27;
              }

              while (!v28);
            }

            if (*v35 == v15)
            {
              *v35 = v27;
            }

            v29 = v11[4];
            --v11[5];
            sub_100018288(v29, v15);
            operator delete(v15);
          }

          else
          {
            v36 = 0;
            v24 = *sub_1000FB024(v35, &v36, v12 + 64);
            v10 = a3 - 1;
            if (!v24)
            {
              operator new();
            }

            *(v24 + 48) = v34;
          }
        }

        v30 = *v6;
        v31 = v6[1];
        *(v30 + 8) = v31;
        *v31 = v30;
        --v11[2];
        sub_10004A724(v6 + 3);
        operator delete(v6);
        v6 = v31;
      }

      ++v9;
      v32 = sub_1012BF174(*a1);
      result = sub_1012BF580(*v32);
    }

    while (v6 != result && v10 >= v9);
  }

  a1[2] = v6;
  return result;
}

uint64_t sub_1012BF500(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1012BF540(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_1012BF580(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1012BF5C0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_23;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v27 = 0u;
      v28 = 0u;
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
      v3 = *(*a1 + 16);
      sub_1012BF8DC(v3);
      sub_10004ABC4(&v17, v3);
      v4 = *(*a1 + 16);
      sub_1012BF500(v4);
      v5 = *(v4 + 32);
      if (v5)
      {
        v6 = a1[2];
        for (i = *v5; i != *(sub_1012BF540(v5) + 8); i += 6)
        {
          memset(v29, 0, sizeof(v29));
          sub_10004ACE8(i, v29);
          if (sub_100048EA8(i))
          {
            if (*(v4 + 24) == 1)
            {
              *(v4 + 24) = 0;
              sub_10004B3DC(v4, &v17);
            }

            sub_10004B040(v29);
            break;
          }

          sub_10004AFC8((v6 + 8), v29);
          sub_10004B040(v29);
          v5 = *(v4 + 32);
        }
      }

      v8 = sub_1012BF500(*(*a1 + 16));
      v9 = a1[2];
      if (*(v8 + 24) == 1)
      {
        ++*(v9 + 304);
      }

      else
      {
        ++*(v9 + 308);
      }

      v10 = sub_1012BF500(*(*a1 + 16));
      if (*(v10 + 24) != 1 || (v11 = *(v10 + 16)) != 0 && atomic_load_explicit((v11 + 8), memory_order_acquire))
      {
        v12 = 1;
      }

      else
      {
        sub_1012BF91C(a1, &v17, *a1);
        v12 = 0;
      }

      (*(**(&v28 + 1) + 32))(*(&v28 + 1));
      sub_10004A6B0(&v17);
      v1 = *a1;
      v13 = a1[1];
      if (!v12)
      {
        break;
      }

      v14 = *(v1 + 8);
      *a1 = v14;
      if (v14 == v13)
      {
        v1 = v13;
        goto LABEL_23;
      }
    }

    if (v1 == v13)
    {
LABEL_23:
      v15 = a1[3];
      if (v15 != v1)
      {
        v27 = 0u;
        v28 = 0u;
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
        v16 = *(v15 + 16);
        sub_1012BF8DC(v16);
        sub_10004ABC4(&v17, v16);
        sub_1012BF91C(a1, &v17, a1[1]);
        (*(**(&v28 + 1) + 32))(*(&v28 + 1));
        sub_10004A6B0(&v17);
      }
    }
  }
}

void sub_1012BF884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012BF8DC(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1012BF91C(void *a1, void *a2, uint64_t a3)
{
  a1[3] = a3;
  v3 = a1[2];
  if (a1[1] == a3)
  {
    result = *(v3 + 312);
    if (result)
    {
      result = sub_10004B3DC(result, a2);
    }

    *(v3 + 312) = 0;
  }

  else
  {
    v4 = *(a3 + 16);
    result = *(v3 + 312);
    if (result)
    {
      result = sub_10004B3DC(result, a2);
    }

    *(v3 + 312) = v4;
    if (v4)
    {
      v6 = *(v4 + 28);
      if (!v6)
      {
        __assert_rtn("inc_slot_refcount", "connection.hpp", 114, "m_slot_refcount != 0");
      }

      *(v4 + 28) = v6 + 1;
    }
  }

  return result;
}

void *sub_1012BF9A4(void *a1)
{
  if (*(*a1 + 308) > *(*a1 + 304))
  {
    v3 = a1[1];
    v2 = a1[2];
    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    v4 = sub_10004A4A8(v3 + 3);
    sub_100048D3C(v10, v4);
    v5 = sub_1012BF174(*v3);
    if (sub_1012BF580(*v5) == v2)
    {
      v6 = v3[1];
      if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
      {
        operator new();
      }

      v7 = sub_1012BF174(*v3);
      v9 = *(sub_1012BF580(*v7) + 8);
      sub_1012BF1B4(v3, &v9, 0);
    }

    sub_10004A704(*(&v11 + 1));
    sub_10004A6B0(v10);
  }

  return a1;
}

void sub_1012BFF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_100100638(a13);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1012BFF70(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2)
  {
    __cxa_end_catch();
    sub_10004A724((v10 + 8));
    sub_1000FFEDC(va);
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1012BFF8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    sub_101080E78(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1012BFFAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    sub_10004A724(v2);
    operator delete();
  }

  _Unwind_Resume(a1);
}

void sub_1012BFFC8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a13, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x1012C005CLL);
}

void sub_1012BFFD4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1000FFEDC(va);
  sub_10004F058(a1);
}

void sub_1012C0000(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1012C0064);
}

uint64_t sub_1012C0084(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1012C0118(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100034450(*(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_1012C0194(uint64_t a1)
{
  v2 = *(a1 + 312);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 312), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1012C026C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012C028C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t *sub_1012C02F4(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1012C03BC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_23;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v3 = *(*a1 + 16);
      sub_1012C06EC(v3);
      sub_10004ABC4(&v18, v3);
      v4 = sub_100B89DE4((*a1 + 16));
      v5 = (v4 + 32);
      if (*(v4 + 32))
      {
        v6 = v4;
        v7 = a1[2];
        for (i = *sub_100B8A768((v4 + 32)); i != *(sub_100B8A768(v5) + 8); i += 6)
        {
          memset(v30, 0, sizeof(v30));
          sub_10004ACE8(i, v30);
          if (sub_100048EA8(i))
          {
            if (*(v6 + 24) == 1)
            {
              *(v6 + 24) = 0;
              sub_10004B3DC(v6, &v18);
            }

            sub_10004B040(v30);
            break;
          }

          sub_10004AFC8((v7 + 8), v30);
          sub_10004B040(v30);
        }
      }

      v9 = sub_100B89DE4((*a1 + 16));
      v10 = a1[2];
      if (*(v9 + 24) == 1)
      {
        ++*(v10 + 288);
      }

      else
      {
        ++*(v10 + 292);
      }

      v11 = sub_100B89DE4((*a1 + 16));
      if (*(v11 + 24) != 1 || (v12 = *(v11 + 16)) != 0 && atomic_load_explicit((v12 + 8), memory_order_acquire))
      {
        v13 = 1;
      }

      else
      {
        sub_101080694(a1, &v18, *a1);
        v13 = 0;
      }

      (*(**(&v29 + 1) + 32))(*(&v29 + 1));
      sub_10004A6B0(&v18);
      v1 = *a1;
      v14 = a1[1];
      if (!v13)
      {
        break;
      }

      v15 = *(v1 + 8);
      *a1 = v15;
      if (v15 == v14)
      {
        v1 = v14;
        goto LABEL_23;
      }
    }

    if (v1 == v14)
    {
LABEL_23:
      v16 = a1[3];
      if (v16 != v1)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v17 = *(v16 + 16);
        sub_1012C06EC(v17);
        sub_10004ABC4(&v18, v17);
        sub_101080694(a1, &v18, a1[1]);
        (*(**(&v29 + 1) + 32))(*(&v29 + 1));
        sub_10004A6B0(&v18);
      }
    }
  }
}

void sub_1012C0694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012C06EC(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void *sub_1012C072C(void *a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    v2 = a1[1];
    v3 = a1[2];
    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    v4 = sub_10004A4A8(v2 + 3);
    sub_100048D3C(v10, v4);
    v5 = sub_100B89DA0(v2);
    if (sub_100B8AFB8(v5) == v3)
    {
      v6 = v2[1];
      if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
      {
        operator new();
      }

      v7 = sub_100B89DA0(v2);
      v9 = *(sub_100B8AFB8(v7) + 8);
      sub_100B89FF0(v2, v10, 0, &v9, 0);
    }

    sub_10004A704(*(&v11 + 1));
    sub_10004A6B0(v10);
  }

  return a1;
}

void sub_1012C0898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012C08F4(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1012C09CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012C09EC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012C0A54(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

void sub_1012C0B44(uint64_t a1, char *a2, xpc_object_t *a3)
{
  sub_10000501C(&v7, a2);
  v4 = std::string::insert(&v7, 0, "com.apple.Telephony.", 0x14uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v9 = v4->__r_.__value_.__r.__words[2];
  v8 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  object = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    object = xpc_null_create();
  }

  analytics_send_exploding_event_lazy();
  xpc_release(object);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8);
  }
}

void sub_1012C0C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  xpc_release(object);
  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_1012C0C98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_retain(*(a1 + 32));
  }

  else
  {
    v1 = xpc_null_create();
  }

  v2 = xpc_null_create();
  xpc_release(v2);
  return v1;
}

xpc_object_t sub_1012C0CFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 32) = result;
  return result;
}

void sub_1012C0D6C(uint64_t a1, char *a2, uint64_t a3, xpc_object_t *a4)
{
  sub_10000501C(&v8, a2);
  v5 = std::string::insert(&v8, 0, "com.apple.Telephony.", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10 = v5->__r_.__value_.__r.__words[2];
  v9 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  object = *a4;
  if (*a4)
  {
    xpc_retain(*a4);
  }

  else
  {
    object = xpc_null_create();
  }

  analytics_send_exploding_event_lazy();
  xpc_release(object);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }
}

void sub_1012C0E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_1012C0ECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  values = *(a1 + 40);
  keys = v1;
  v2 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v2) == &_xpc_type_dictionary)
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v4 = xpc_null_create();
  xpc_release(v4);
  return v3;
}

void sub_1012C0F9C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

xpc_object_t sub_1012C0FDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void sub_1012C104C(uint64_t a1, char *a2, int a3)
{
  if (a3 == 1)
  {
    v6 = 0;
    v7 = 0;
    Registry::getWisServerConnection(&v6, *(a1 + 8));
    if (v6)
    {
      sub_10000501C(&__p, a2);
      wis::WISServerConnection::RegisterCallbackForTimer();
      if (v5 < 0)
      {
        operator delete(__p);
      }
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }
}

void sub_1012C112C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 40);
  if (v21)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C115C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  (*(v2 + 16))(v2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1012C11D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C11F0(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  Registry::getWisServerConnection(&v1, *(a1 + 8));
  if (v1)
  {
    wis::WISServerConnection::RegisterCallbackForAnomalyInsights();
  }

  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_1012C128C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1012C12A4(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 32);
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  (*(v2 + 16))(v2, &v4);
  return sub_10001021C(&v4);
}

void sub_1012C12FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1012C1344(TelephonyAnalyticsInterface *this)
{
  *this = off_101F27B08;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  TelephonyAnalyticsInterface::~TelephonyAnalyticsInterface(this);
}

void sub_1012C13A0(TelephonyAnalyticsInterface *this)
{
  *this = off_101F27B08;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  TelephonyAnalyticsInterface::~TelephonyAnalyticsInterface(this);

  operator delete();
}

void sub_1012C1478(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C14B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012C14EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1012C151C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012C155C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1012C15B0(void *a1@<X8>)
{
  v3[0] = off_101F27F28;
  v3[3] = v3;
  inactive = dispatch_workloop_create_inactive("SettingsController");
  sub_1001FA58C(v3, inactive);
  dispatch_activate(inactive);
  sub_1001FAD0C(v3);
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t sub_1012C21F4(uint64_t a1)
{
  sub_1002B7314(a1 + 32, *(a1 + 40));

  return sub_1012C9C78(a1);
}

uint64_t sub_1012C2234(uint64_t a1)
{
  sub_100170380(a1 + 32, *(a1 + 40));

  return sub_1012C9CF8(a1);
}

void sub_1012C2274(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C2374(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C2474(uint64_t a1)
{
  *a1 = off_101F27C90;
  sub_1000DD0AC(a1 + 664, *(a1 + 672));
  sub_100034450(*(a1 + 648));
  sub_1002B7314(a1 + 616, *(a1 + 624));
  sub_1012C9C78(a1 + 584);
  sub_100170380(a1 + 560, *(a1 + 568));
  sub_100170380(a1 + 536, *(a1 + 544));
  sub_1012C9CF8(a1 + 504);
  sub_100034450(*(a1 + 488));
  sub_100034450(*(a1 + 464));
  PersonalitiesTracker::~PersonalitiesTracker((a1 + 288));
  sub_10006DCAC(a1 + 256, *(a1 + 264));
  sub_100359978(a1 + 232, *(a1 + 240));
  sub_10006DCAC(a1 + 208, *(a1 + 216));
  sub_10032D3A4(a1 + 184, *(a1 + 192));
  v2 = *(a1 + 176);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    sub_100004A34(v9);
  }

  SettingsInterface::~SettingsInterface(a1);
  v10 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1012C25F0(uint64_t a1)
{
  sub_1012C2474(a1);

  operator delete();
}

void sub_1012C2628(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = "";
  }

  sub_10000501C(v9, v5);
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, v9[0], v9[1]);
  }

  else
  {
    *__p = *v9;
    v8 = v10;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C27A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C27C4(uint64_t a1, int a2, int a3, char *a4, uint64_t a5)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = "";
  }

  sub_10000501C(v11, v9);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  if (SHIBYTE(v12) < 0)
  {
    sub_100005F2C(__p, v11[0], v11[1]);
  }

  else
  {
    *__p = *v11;
    __p[2] = v12;
  }

  sub_1000224C8(&v17, a5);
  v10 = *(a1 + 16);
  if (v10)
  {
    if (std::__shared_weak_count::lock(v10))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C298C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C29E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v12 = 0uLL;
  v13 = 0;
  if (a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = "";
  }

  sub_10000501C(&v12, v7);
  sub_1000AE428(&v9, a4);
  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C(__p, v12, *(&v12 + 1));
  }

  else
  {
    *__p = v12;
    v11 = v13;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    if (std::__shared_weak_count::lock(v8))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C2BC0(_Unwind_Exception *a1)
{
  sub_10034F8E8(v1 + 16);
  if (*(v2 - 65) < 0)
  {
    operator delete(*(v2 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_1012C2BF4(uint64_t a1, int a2, int a3, uint64_t a4, char *a5, uint64_t a6)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = "";
  }

  sub_10000501C(__p, v11);
  v15 = a1;
  v16 = a2;
  v17 = a3;
  sub_1000AE428(&v18, a4);
  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(&v19, __p[0], __p[1]);
  }

  else
  {
    v19 = *__p;
    v20 = v14;
  }

  sub_1000224C8(&v21, a6);
  v12 = *(a1 + 16);
  if (v12)
  {
    if (std::__shared_weak_count::lock(v12))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C2DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  sub_10034F8E8(v45 + 16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012C2E34(uint64_t a1)
{
  sub_10000FF50(a1 + 200);
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

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
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1012C2EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C2FB0(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1000224C8(&v7, a3);
  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C30F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1012C310C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_100DDDB74(&v7, a3);
  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C3250(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1012C3268(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  sub_1012CC8F0(&v9, a4);
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C33A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012C33B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v4 = (*(*a1 + 256))();
  if (v4)
  {
    CSIPhoneNumber::CSIPhoneNumber();
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(&v9);
  }

  *a3 = *&v9.var0;
  if (*(a3 + 31) < 0)
  {
    operator delete(*(a3 + 8));
  }

  *(a3 + 8) = v9.var2;
  *(&v9.var2.__rep_.__l + 23) = 0;
  v9.var2.__rep_.__s.__data_[0] = 0;
  if (*(a3 + 55) < 0)
  {
    operator delete(*(a3 + 32));
  }

  *(a3 + 32) = v10;
  *(a3 + 48) = v11;
  HIBYTE(v11) = 0;
  LOBYTE(v10) = 0;
  *(a3 + 56) = v12;
  *(a3 + 60) = v13;
  if (*(a3 + 87) < 0)
  {
    operator delete(*(a3 + 64));
  }

  *(a3 + 64) = v14;
  v5 = v15;
  HIBYTE(v15) = 0;
  LOBYTE(v14) = 0;
  v6 = v16;
  *(a3 + 80) = v5;
  *(a3 + 88) = v6;
  *(a3 + 96) = v17;
  if (*(a3 + 127) < 0)
  {
    operator delete(*(a3 + 104));
  }

  *(a3 + 104) = __p;
  *(a3 + 120) = v19;
  HIBYTE(v19) = 0;
  LOBYTE(__p) = 0;
  if (*(a3 + 151) < 0)
  {
    operator delete(*(a3 + 128));
    v7 = SHIBYTE(v19);
    *(a3 + 128) = v20;
    *(a3 + 144) = v21;
    HIBYTE(v21) = 0;
    LOBYTE(v20) = 0;
    *(a3 + 152) = v22;
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a3 + 128) = v20;
    *(a3 + 144) = v21;
    HIBYTE(v21) = 0;
    LOBYTE(v20) = 0;
    *(a3 + 152) = v22;
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  if (*(&v9.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v9.var2.__rep_.__l.__data_);
  }

  if (SBYTE7(v24) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v27);
  }

  return v4;
}

void sub_1012C35F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C3620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C3720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v7, *a3, *(a3 + 8));
  }

  else
  {
    *v7 = *a3;
    v7[2] = *(a3 + 16);
  }

  sub_1000AE428(&v8, a4);
  v6 = *(a1 + 16);
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C38F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 39) < 0)
  {
    operator delete(*(v17 + 16));
  }

  sub_10004F058(a1);
}

void sub_1012C3934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000AE428(&v6, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C3B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C3B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000AE428(&v5, a3);
  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C3CB8(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v6[2] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1012CD278;
  v8[3] = &unk_101F28318;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10006A404;
    v13 = &unk_101F282F8;
    v14 = &v16;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_1000594A8;
    v13 = &unk_101F282D8;
    v14 = &v16;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }

  return v16 & 1;
}

uint64_t sub_1012C3DF4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 256);
  v3 = (result + 264);
  if (v2 != (result + 264))
  {
    v4 = result;
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      v7 = *(v2 + 7);
      if (!*v5)
      {
        goto LABEL_12;
      }

      v8 = v5;
      do
      {
        if (*(v6 + 28) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 28) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 7))
      {
        goto LABEL_12;
      }

      result = operator==();
      if ((result & 1) == 0)
      {
        break;
      }

LABEL_13:
      v13 = v2[1];
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
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
      if (v14 == v3)
      {
        return result;
      }
    }

    v7 = *(v2 + 7);
LABEL_12:
    v9 = ConnectionAvailabilityContainer::available();
    v10 = ConnectionAvailabilityContainer::error() != 96;
    (*(**(v4 + 104) + 72))(*(v4 + 104), v7, v9 | (v10 << 8));
    v11 = ConnectionAvailabilityContainer::available();
    v12 = ConnectionAvailabilityContainer::error() != 96;
    result = (*(**(v4 + 104) + 80))(*(v4 + 104), v7, v11 | (v12 << 8));
    goto LABEL_13;
  }

  return result;
}

void sub_1012C3F70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4060(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = a3;
  v7[3] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1012CD81C;
  v9[3] = &unk_101F28338;
  v9[4] = a1 + 8;
  v9[5] = v7;
  v10 = v9;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10006A404;
    v14 = &unk_101F282F8;
    v15 = &v17;
    v16 = &v10;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1000594A8;
    v14 = &unk_101F282D8;
    v15 = &v17;
    v16 = &v10;
    dispatch_sync(v4, &block);
  }

  return v17 & 1;
}

void sub_1012C419C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4290(uint64_t a1, int a2, int a3, int a4)
{
  v9 = a3;
  v10 = a2;
  v8 = a4;
  v7[0] = a1;
  v7[1] = &v10;
  v7[2] = &v9;
  v7[3] = &v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1012CDAC0;
  v11[3] = &unk_101F28358;
  v11[4] = a1 + 8;
  v11[5] = v7;
  v12 = v11;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_10006A404;
    v16 = &unk_101F282F8;
    v17 = &v19;
    v18 = &v12;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1000594A8;
    v16 = &unk_101F282D8;
    v17 = &v19;
    v18 = &v12;
    dispatch_sync(v4, &block);
  }

  return v19 & 1;
}

void sub_1012C43D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v10 = *(a3 + 16);
  }

  v11 = a4;
  v12 = a5;
  v8 = *(a1 + 16);
  if (v8)
  {
    if (std::__shared_weak_count::lock(v8))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C454C(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v10 = a4;
  v11 = a2;
  v9 = a5;
  v8[0] = a1;
  v8[1] = &v11;
  v8[2] = a3;
  v8[3] = &v10;
  v8[4] = &v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = sub_1012CDDAC;
  v12[3] = &unk_101F28378;
  v12[4] = a1 + 8;
  v12[5] = v8;
  v13 = v12;
  v6 = a1 + 24;
  v5 = *(a1 + 24);
  if (*(v6 + 8))
  {
    v20 = 0;
    block = _NSConcreteStackBlock;
    v15 = 0x40000000;
    v16 = sub_10006A404;
    v17 = &unk_101F282F8;
    v18 = &v20;
    v19 = &v13;
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    v20 = 0;
    block = _NSConcreteStackBlock;
    v15 = 0x40000000;
    v16 = sub_1000594A8;
    v17 = &unk_101F282D8;
    v18 = &v20;
    v19 = &v13;
    dispatch_sync(v5, &block);
  }

  return v20 & 1;
}

void sub_1012C4698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v11 = *(a4 + 16);
  }

  v12 = a5;
  v13 = a6;
  v9 = *(a1 + 16);
  if (v9)
  {
    if (std::__shared_weak_count::lock(v9))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C4814(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4908(uint64_t a1, int a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1012CE354;
  v7[3] = &unk_101F28398;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A404;
    v12 = &unk_101F282F8;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000594A8;
    v12 = &unk_101F282D8;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void sub_1012C4A40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4B44(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = a4;
  v9 = a2;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = a3;
  v7[3] = &v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1012CE648;
  v10[3] = &unk_101F283B8;
  v10[4] = a1 + 8;
  v10[5] = v7;
  v11 = v10;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_10006A404;
    v15 = &unk_101F282F8;
    v16 = &v18;
    v17 = &v11;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1000594A8;
    v15 = &unk_101F282D8;
    v16 = &v18;
    v17 = &v11;
    dispatch_sync(v4, &block);
  }

  return v18 & 1;
}

void sub_1012C4C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4D78(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = a4;
  v9 = a2;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = a3;
  v7[3] = &v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1012CEA18;
  v10[3] = &unk_101F283D8;
  v10[4] = a1 + 8;
  v10[5] = v7;
  v11 = v10;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_10006A404;
    v15 = &unk_101F282F8;
    v16 = &v18;
    v17 = &v11;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1000594A8;
    v15 = &unk_101F282D8;
    v16 = &v18;
    v17 = &v11;
    dispatch_sync(v4, &block);
  }

  return v18 & 1;
}

void sub_1012C4EB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4FA8(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v6[2] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1012CECD4;
  v8[3] = &unk_101F283F8;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10006A404;
    v13 = &unk_101F282F8;
    v14 = &v16;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_1000594A8;
    v13 = &unk_101F282D8;
    v14 = &v16;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }

  return v16 & 1;
}

void sub_1012C50E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C51E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6, int a7)
{
  *v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  memset(&v16, 0, sizeof(v16));
  if (a4)
  {
    sub_1000AE428(&v16, a4);
    if (!a5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(&v16, "");
    if (!a5)
    {
LABEL_4:
      sub_1000AE428(&v12, &v16);
      v13 = a5;
      v14 = a6;
      v15 = a7;
      v11 = *(a1 + 16);
      if (v11)
      {
        if (std::__shared_weak_count::lock(v11))
        {
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  LOBYTE(a5) = *a5;
  goto LABEL_4;
}

uint64_t sub_1012C54B4(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, _BYTE *a5, int a6, int a7)
{
  v32 = a2;
  v30 = a7;
  v31 = a6;
  CSIPhoneNumber::CSIPhoneNumber(&v16);
  *a4 = *&v16.var0;
  if (*(a4 + 31) < 0)
  {
    operator delete(*(a4 + 8));
  }

  *(a4 + 8) = v16.var2;
  *(&v16.var2.__rep_.__l + 23) = 0;
  v16.var2.__rep_.__s.__data_[0] = 0;
  if (*(a4 + 55) < 0)
  {
    operator delete(*(a4 + 32));
  }

  *(a4 + 32) = v17;
  *(a4 + 48) = v18;
  HIBYTE(v18) = 0;
  LOBYTE(v17) = 0;
  *(a4 + 56) = v19;
  *(a4 + 60) = v20;
  if (*(a4 + 87) < 0)
  {
    operator delete(*(a4 + 64));
  }

  *(a4 + 64) = v21;
  v11 = v22;
  HIBYTE(v22) = 0;
  LOBYTE(v21) = 0;
  v12 = v23;
  *(a4 + 80) = v11;
  *(a4 + 88) = v12;
  *(a4 + 96) = v24;
  if (*(a4 + 127) < 0)
  {
    operator delete(*(a4 + 104));
  }

  *(a4 + 104) = __p;
  *(a4 + 120) = v26;
  HIBYTE(v26) = 0;
  LOBYTE(__p) = 0;
  if (*(a4 + 151) < 0)
  {
    operator delete(*(a4 + 128));
    v13 = SHIBYTE(v26);
    *(a4 + 128) = v27;
    *(a4 + 144) = v28;
    HIBYTE(v28) = 0;
    LOBYTE(v27) = 0;
    *(a4 + 152) = v29;
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a4 + 128) = v27;
    *(a4 + 144) = v28;
    HIBYTE(v28) = 0;
    LOBYTE(v27) = 0;
    *(a4 + 152) = v29;
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  if (*(&v16.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v16.var2.__rep_.__l.__data_);
  }

  *a3 = 0;
  *a5 = 0;
  *&v16.var0 = a1;
  v16.var2.__rep_.__l.__data_ = &v32;
  v16.var2.__rep_.__l.__size_ = a3;
  *(&v16.var2.__rep_.__l + 2) = a4;
  *&v17 = a5;
  *(&v17 + 1) = &v31;
  v18 = &v30;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 0x40000000;
  v33[2] = sub_1012CF454;
  v33[3] = &unk_101F28418;
  v33[4] = a1 + 8;
  v33[5] = &v16;
  v34 = v33;
  v14 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v41 = 0;
    block = _NSConcreteStackBlock;
    v36 = 0x40000000;
    v37 = sub_10006A404;
    v38 = &unk_101F282F8;
    v39 = &v41;
    v40 = &v34;
    dispatch_async_and_wait(v14, &block);
  }

  else
  {
    v41 = 0;
    block = _NSConcreteStackBlock;
    v36 = 0x40000000;
    v37 = sub_1000594A8;
    v38 = &unk_101F282D8;
    v39 = &v41;
    v40 = &v34;
    dispatch_sync(v14, &block);
  }

  return v41 & 1;
}

uint64_t sub_1012C579C(uint64_t a1, int a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1012CF660;
  v7[3] = &unk_101F28438;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1012CF894;
    v12 = &unk_101F28478;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1012CF858;
    v12 = &unk_101F28458;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15;
}

void sub_1012C58D0(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1008C3488(&v7, a3);
  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C5A14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012C5A2C(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v6[2] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1012CFB48;
  v8[3] = &unk_101F28498;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10006A404;
    v13 = &unk_101F282F8;
    v14 = &v16;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_1000594A8;
    v13 = &unk_101F282D8;
    v14 = &v16;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }

  return v16 & 1;
}

uint64_t sub_1012C5B68(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v2 = v16;
  if (v16 != v17)
  {
    do
    {
      if (v18(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v17);
    if (v2 != v17)
    {
      v3 = (a1 + 648);
      do
      {
        v4 = *v2;
        v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), *v2);
        v6 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v7 = sub_10006BB14(a1, v4);
          v8 = sub_100072578(v7);
          *buf = 136315138;
          v20 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Device type: %s", buf, 0xCu);
          v6 = *v5;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          sub_100D7E8D8(*(a1 + 464), v4);
          v9 = subscriber::asString();
          *buf = 136315138;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fSimTypeGw: %s", buf, 0xCu);
          v6 = *v5;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          sub_100D7E8D8(*(a1 + 488), v4);
          v10 = subscriber::asString();
          *buf = 136315138;
          v20 = v10;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fSimType1x: %s", buf, 0xCu);
        }

        v11 = *v3;
        if (!*v3)
        {
          goto LABEL_19;
        }

        v12 = a1 + 648;
        do
        {
          if (*(v11 + 28) >= v4)
          {
            v12 = v11;
          }

          v11 = *(v11 + 8 * (*(v11 + 28) < v4));
        }

        while (v11);
        if (v12 == v3 || v4 < *(v12 + 28))
        {
LABEL_19:
          v12 = a1 + 648;
        }

        v13 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          if (v12 == v3)
          {
            v14 = "-";
          }

          else
          {
            v14 = sub_10006BBEC(*(v12 + 32));
          }

          *buf = 136315138;
          v20 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I fLastPhoneNumberEventsLocation: %s", buf, 0xCu);
        }

        do
        {
          ++v2;
        }

        while (v2 != v17 && (v18(*v2) & 1) == 0);
      }

      while (v2 != v17);
    }
  }

  result = *(a1 + 120);
  if (result)
  {
    return (*(*result + 184))(result);
  }

  return result;
}

void sub_1012C5E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 184);
  v3 = (a1 + 192);
  if (v2 != (a1 + 192))
  {
    v5 = (a2 + 8);
    do
    {
      v6 = *v5;
      if (!*v5)
      {
        goto LABEL_22;
      }

      v7 = *(v2 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8) || (rest::operator==() & 1) == 0)
      {
LABEL_22:
        if (*(v2 + 40))
        {
          v9 = *(v2 + 8);
          sub_1012C7584(a1, v9, "handleCarrierBundlesSetup_sync");
          v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = asString();
            v12 = asString();
            *buf = 136315394;
            v17 = v11;
            v18 = 2080;
            v19 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle change type (%s) technology type (%s)", buf, 0x16u);
          }
        }
      }

      v13 = v2[1];
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
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v3);
  }
}

void sub_1012C6020(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  v3 = (a1 + 216);
  if (v2 != (a1 + 216))
  {
    v5 = (a2 + 8);
    do
    {
      v6 = *v5;
      v7 = *(v2 + 7);
      if (!*v5)
      {
        goto LABEL_11;
      }

      v8 = v5;
      do
      {
        if (*(v6 + 28) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 28) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 7) || *(v2 + 8) != *(v8 + 8))
      {
LABEL_11:
        v9 = *(v2 + 8);
        sub_1012C7584(a1, *(v2 + 7), "handleDeviceTypesChanged_sync");
        v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = sub_100072578(v9);
          *buf = 136315138;
          v16 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I device type changed %s", buf, 0xCu);
        }
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v14 = *v13 == v2;
          v2 = v13;
        }

        while (!v14);
      }

      v2 = v13;
    }

    while (v13 != v3);
  }
}

void sub_1012C61D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 232);
  v16 = (a1 + 240);
  if (v2 != (a1 + 240))
  {
    v4 = (a2 + 8);
    while (1)
    {
      v5 = *v4;
      v6 = *(v2 + 8);
      if (!*v4)
      {
        goto LABEL_12;
      }

      v7 = v4;
      do
      {
        if (*(v5 + 32) >= v6)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < v6));
      }

      while (v5);
      if (v7 == v4 || v6 < *(v7 + 8))
      {
        goto LABEL_12;
      }

      if ((BasicSimInfo::operator==() & 1) == 0)
      {
        break;
      }

LABEL_40:
      v13 = v2[1];
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
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
      if (v14 == v16)
      {
        return;
      }
    }

    v6 = *(v2 + 8);
LABEL_12:
    sub_100032BFC(&v17, (v2 + 5));
    if (subscriber::isSimSettled())
    {
      if (subscriber::isSimReady())
      {
        (*(**(a1 + 104) + 296))(*(a1 + 104), v17);
      }

      if (subscriber::isSimAbsent())
      {
        sub_1012C8168(a1, v6, 1, 0, v18);
        sub_1012C8168(a1, v6, 2, 0, v18);
      }

      v8 = v19;
      v9 = v20;
      if (v19 == v20)
      {
        goto LABEL_27;
      }

      v10 = 0;
      do
      {
        while (1)
        {
          v11 = *v8;
          if ((subscriber::getSimCardForSimApp() & 0x1FFFFFFFFLL) == 0x100000001)
          {
            sub_1012C8168(a1, v6, 1, v11, v18);
          }

          if ((subscriber::getSimCardForSimApp() & 0x1FFFFFFFFLL) != 0x100000002)
          {
            break;
          }

          sub_1012C8168(a1, v6, 2, v11, v18);
          ++v8;
          v10 = 1;
          if (v8 == v9)
          {
            goto LABEL_28;
          }
        }

        ++v8;
      }

      while (v8 != v9);
      if ((v10 & 1) == 0)
      {
LABEL_27:
        sub_1012C8168(a1, v6, 2, 0, 1);
      }

LABEL_28:
      *buf = 0;
      v31 = 0;
      v32 = 0;
      sub_1012C91AC(a1, v6, buf, 0);
      v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I sim updated", buf, 2u);
      }
    }

    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    *buf = &v21;
    sub_100034D1C(buf);
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    goto LABEL_40;
  }
}

void sub_1012C6500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100D1F238(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012C654C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 24) == 2 && !*(*a3 + 49))
  {
    v25 = 1;
    v27 = 0u;
    v28 = 0;
    v26 = a1 + 504;
    sub_101257DBC(&v27, a1 + 536);
    sub_1012D26A0(&v27, *(*a3 + 52));
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*a3 + 52));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (*a3 + 24);
      v8 = *(*a3 + 47);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(*a3 + 32);
      }

      if (v9 < 0)
      {
        v7 = *(*a3 + 24);
      }

      if (!v8)
      {
        v7 = "<invalid>";
      }

      *buf = 136315138;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I cleaning phone_numbers for [%s]", buf, 0xCu);
    }

    sub_1012D26A0((a1 + 560), *(*a3 + 52));
    sub_1012D2528(&v25);
  }

  result = *(a1 + 88);
  if (result)
  {
    result = (*(*result + 128))(result, a2, a3);
  }

  if (*(a2 + 24) == 6 && !*(*a3 + 49))
  {
    v25 = 1;
    v27 = 0u;
    v28 = 0;
    v26 = a1 + 584;
    sub_1012D2780(&v27, (a1 + 616));
    v11 = *(&v27 + 1);
    if (*(&v27 + 1))
    {
      v12 = *a3;
      v13 = &v27 + 1;
      do
      {
        v14 = v13;
        v15 = (v11 + 32);
        v16 = sub_1000068BC((v11 + 32), (v12 + 24));
        if ((v16 & 0x80u) == 0)
        {
          v13 = v11;
        }

        v11 = *(v11 + ((v16 >> 4) & 8));
      }

      while (v11);
      if (v13 != (&v27 + 8))
      {
        if ((v16 & 0x80u) != 0)
        {
          v15 = (v14 + 4);
        }

        if ((sub_1000068BC((v12 + 24), v15) & 0x80) == 0)
        {
          v17 = v13[1];
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            v19 = v13;
            do
            {
              v18 = v19[2];
              v20 = *v18 == v19;
              v19 = v18;
            }

            while (!v20);
          }

          if (v27 == v13)
          {
            *&v27 = v18;
          }

          --v28;
          sub_100018288(*(&v27 + 1), v13);
          sub_1012C9C00(v15);
          operator delete(v13);
        }
      }
    }

    v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*a3 + 52));
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = (*a3 + 24);
      v23 = *(*a3 + 47);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(*a3 + 32);
      }

      if (v24 < 0)
      {
        v22 = *(*a3 + 24);
      }

      if (!v23)
      {
        v22 = "<invalid>";
      }

      *buf = 136315138;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I cleaning personalized_phone_numbers for [%s]", buf, 0xCu);
    }

    return sub_1012D2954(&v25);
  }

  return result;
}

void sub_1012C68F4(uint64_t a1, uint64_t a2)
{
  v4 = PersonalityIDToSimSlot();
  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
  v6 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_100C1D0B0(a2, &__p);
    v7 = __p.var2.__rep_.__s.__data_[15] >= 0 ? &__p : *&__p.var0;
    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I received P-Associated-URI: %s", buf, 0xCu);
    if (__p.var2.__rep_.__s.__data_[15] < 0)
    {
      operator delete(*&__p.var0);
    }
  }

  v8 = *(a1 + 544);
  if (v8)
  {
    v9 = a1 + 544;
    do
    {
      if (*(v8 + 32) >= v4)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 32) < v4));
    }

    while (v8);
    if (v9 != a1 + 544 && v4 >= *(v9 + 32) && *(v9 + 120) == 1)
    {
      if (*(v9 + 88) >= 5)
      {
        v10 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v11 = (v9 + 64);
          if (*(v9 + 87) < 0)
          {
            v11 = *v11;
          }

          v12 = asString();
          __p.var0 = 136315394;
          *&__p.var1 = v11;
          WORD2(__p.var2.__rep_.__l.__data_) = 2080;
          *(&__p.var2.__rep_.__l.__data_ + 6) = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Current trusted phone number has higher priority: %s (%s). Not updating.", &__p, 0x16u);
        }

        return;
      }

      memset(&__dst, 0, sizeof(__dst));
      if (*(v9 + 119) < 0)
      {
        sub_100005F2C(&__dst, *(v9 + 96), *(v9 + 104));
      }

      else
      {
        __dst = *(v9 + 96);
      }

      v14 = (v9 + 40);
      *buf = 0u;
      v68 = 0u;
      CSIPhoneNumber::CSIPhoneNumber();
      CSIPhoneNumber::getFullNumber(buf, &__p);
      DWORD2(v68) = 0;
      if (v66 < 0)
      {
        operator delete(v65);
      }

      if (v64 < 0)
      {
        operator delete(v63);
      }

      if (v62 < 0)
      {
        operator delete(v61);
      }

      if (v60 < 0)
      {
        operator delete(v59);
      }

      if (*(&__p.var2.__rep_.__l + 23) < 0)
      {
        operator delete(__p.var2.__rep_.__l.__data_);
      }

      *v53 = 0u;
      v54 = 0u;
      CSIPhoneNumber::CSIPhoneNumber();
      v15 = *(v9 + 88);
      CSIPhoneNumber::getFullNumber(v53, &__p);
      DWORD2(v54) = v15;
      if (v66 < 0)
      {
        operator delete(v65);
      }

      if (v64 < 0)
      {
        operator delete(v63);
      }

      if (v62 < 0)
      {
        operator delete(v61);
      }

      if (v60 < 0)
      {
        operator delete(v59);
      }

      if (*(&__p.var2.__rep_.__l + 23) < 0)
      {
        operator delete(__p.var2.__rep_.__l.__data_);
      }

      v16 = *(a2 + 48);
      v17 = *(a2 + 56);
      v18 = *v5;
      v19 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
      if (v16 == v17)
      {
        if (v19)
        {
          p_dst = &__dst;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          __p.var0 = 136315138;
          *&__p.var1 = p_dst;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I P-Associated-URI was revoked, adjusting trusted phone number: %s", &__p, 0xCu);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = 0;
          v44 = __dst.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = 0;
          v44 = &__dst;
        }

        v44->__r_.__value_.__s.__data_[0] = 0;
        goto LABEL_162;
      }

      if (v19)
      {
        v20 = v9 + 40;
        if (*(v9 + 63) < 0)
        {
          v20 = v14->__r_.__value_.__r.__words[0];
        }

        __p.var0 = 136315138;
        *&__p.var1 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Parsing P-Associated-URI, own phone number: %s", &__p, 0xCu);
        v16 = *(a2 + 48);
        v17 = *(a2 + 56);
      }

      if (v16 != v17)
      {
        while (1)
        {
          size = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
          if ((size & 0x8000000000000000) != 0)
          {
            v22 = v16->__r_.__value_.__r.__words[0];
            size = v16->__r_.__value_.__l.__size_;
          }

          else
          {
            v22 = v16;
          }

          *&__p.var0 = v22;
          __p.var2.__rep_.__l.__data_ = size;
          if (sub_1006A6D04(&__p, "tel:", 4uLL))
          {
            break;
          }

          if (++v16 == v17)
          {
            v16 = *(a2 + 48);
            v17 = *(a2 + 56);
            goto LABEL_58;
          }
        }

        v45 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
        if ((v45 & 0x8000000000000000) != 0)
        {
          v45 = v16->__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v52, v16, 4uLL, v45 - 4, &__p);
        goto LABEL_149;
      }

LABEL_58:
      memset(&v52, 0, sizeof(v52));
      if (v16 == v17)
      {
LABEL_149:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v52;
        v46 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
        v47 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = v52.__r_.__value_.__l.__size_;
        }

        v48 = *v5;
        if (v46)
        {
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = __dst.__r_.__value_.__r.__words[0];
            if (v47 >= 0)
            {
              v49 = &__dst;
            }

            __p.var0 = 136315138;
            *&__p.var1 = v49;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Trusted phone number: %s", &__p, 0xCu);
          }
        }

        else if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p.var0) = 0;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Not able to parse P-Associated-URI. Revoking IMS trusted number", &__p, 2u);
        }

LABEL_162:
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v50 = __dst.__r_.__value_.__l.__size_;
        }

        if (v50)
        {
          CSIPhoneNumber::CSIPhoneNumber();
          CSIPhoneNumber::getFullNumber(v51, &__p);
          *&v51[24] = 4;
        }

        else
        {
          memset(v51, 0, sizeof(v51));
        }

        sub_1012C8A60(a1, v4, a2, buf, v53, 1, v51);
        if ((v51[23] & 0x80000000) != 0)
        {
          operator delete(*v51);
        }

        if (v50)
        {
          if (v66 < 0)
          {
            operator delete(v65);
          }

          if (v64 < 0)
          {
            operator delete(v63);
          }

          if (v62 < 0)
          {
            operator delete(v61);
          }

          if (v60 < 0)
          {
            operator delete(v59);
          }

          if (*(&__p.var2.__rep_.__l + 23) < 0)
          {
            operator delete(__p.var2.__rep_.__l.__data_);
          }
        }

        if (SBYTE7(v54) < 0)
        {
          operator delete(v53[0]);
        }

        if (SBYTE7(v68) < 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        return;
      }

      while (1)
      {
        while (1)
        {
          v23 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
          if ((v23 & 0x8000000000000000) != 0)
          {
            v24 = v16->__r_.__value_.__r.__words[0];
            v23 = v16->__r_.__value_.__l.__size_;
          }

          else
          {
            v24 = v16;
          }

          *&__p.var0 = v24;
          __p.var2.__rep_.__l.__data_ = v23;
          if (sub_1006A6D04(&__p, "sip:", 4uLL) && std::string::find(v16, 64, 0) != -1)
          {
            break;
          }

          if (++v16 == v17)
          {
            goto LABEL_149;
          }
        }

        memset(&__p, 0, 24);
        v25 = std::string::find(v16, 64, 0);
        std::string::basic_string(&__p, v16, 4uLL, v25 - 4, v51);
        if (*(v9 + 63) < 0)
        {
          v26 = *(v9 + 48);
          if (v26)
          {
            memset(v51, 0, 24);
            if (*v14->__r_.__value_.__l.__data_ == 43)
            {
LABEL_72:
              std::string::basic_string(v51, v14, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v56);
            }

            else
            {
              sub_100005F2C(v51, v14->__r_.__value_.__l.__data_, v26);
            }

LABEL_81:
            memset(&v56, 0, sizeof(v56));
            if (__p.var2.__rep_.__s.__data_[15] < 0)
            {
              if (!__p.var2.__rep_.__l.__data_ || **&__p.var0 != 43)
              {
                sub_100005F2C(&v56, *&__p.var0, __p.var2.__rep_.__l.__data_);
                goto LABEL_89;
              }
            }

            else if (!__p.var2.__rep_.__s.__data_[15] || LOBYTE(__p.var0) != 43)
            {
              *&v56.__r_.__value_.__l.__data_ = *&__p.var0;
              v56.__r_.__value_.__r.__words[2] = __p.var2.__rep_.__l.__size_;
LABEL_89:
              v28 = __p.var2.__rep_.__s.__data_[15];
              data = __p.var2.__rep_.__l.__data_;
              if (__p.var2.__rep_.__s.__data_[15] >= 0)
              {
                v30 = __p.var2.__rep_.__s.__data_[15];
              }

              else
              {
                v30 = __p.var2.__rep_.__l.__data_;
              }

              v31 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
              if (v30 < 5)
              {
                goto LABEL_121;
              }

              if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v32 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v32 = v56.__r_.__value_.__l.__size_;
              }

              v33 = v51[23];
              if (v51[23] < 0)
              {
                v33 = *&v51[8];
              }

              if (v32 != v33)
              {
                goto LABEL_121;
              }

              v34 = (v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v56 : v56.__r_.__value_.__r.__words[0];
              v35 = v51[23] >= 0 ? v51 : *v51;
              if (memcmp(v34, v35, v32))
              {
                goto LABEL_121;
              }

              if (*(v9 + 63) < 0)
              {
                v36 = (v9 + 40);
                if (!*(v9 + 48))
                {
                  goto LABEL_112;
                }

                v37 = *(v9 + 40);
              }

              else
              {
                v36 = (v9 + 40);
                v37 = (v9 + 40);
                if (!*(v9 + 63))
                {
LABEL_112:
                  v38 = v36;
                  if (v28 < 0)
                  {
                    if (data)
                    {
                      p_p = *&__p.var0;
                      goto LABEL_117;
                    }
                  }

                  else if (v28)
                  {
                    p_p = &__p;
LABEL_117:
                    if (LOBYTE(p_p->var0) == 43)
                    {
                      v38 = &__p;
                    }

                    else
                    {
                      v38 = v36;
                    }
                  }

LABEL_120:
                  std::string::operator=(&v52, v38);
                  v31 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
LABEL_121:
                  if (v31 < 0)
                  {
                    operator delete(v56.__r_.__value_.__l.__data_);
                  }

                  if ((v51[23] & 0x80000000) != 0)
                  {
                    operator delete(*v51);
                  }

                  v14 = (v9 + 40);
                  goto LABEL_126;
                }
              }

              v38 = v36;
              if (*v37 != 43)
              {
                goto LABEL_112;
              }

              goto LABEL_120;
            }

            std::string::basic_string(&v56, &__p, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v57);
            goto LABEL_89;
          }
        }

        else if (*(v9 + 63))
        {
          memset(v51, 0, 24);
          if (v14->__r_.__value_.__s.__data_[0] == 43)
          {
            goto LABEL_72;
          }

          *v51 = *&v14->__r_.__value_.__l.__data_;
          *&v51[16] = *(&v14->__r_.__value_.__l + 2);
          goto LABEL_81;
        }

        if (__p.var2.__rep_.__s.__data_[15] < 0)
        {
          if (!__p.var2.__rep_.__l.__data_)
          {
            goto LABEL_126;
          }

          v27 = *&__p.var0;
        }

        else
        {
          if (!__p.var2.__rep_.__s.__data_[15])
          {
            goto LABEL_126;
          }

          v27 = &__p;
        }

        if (LOBYTE(v27->var0) == 43)
        {
          std::string::operator=(&v52, &__p);
        }

LABEL_126:
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          if (!v52.__r_.__value_.__l.__size_)
          {
LABEL_132:
            v41 = 0;
            goto LABEL_133;
          }

          v40 = v52.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (!*(&v52.__r_.__value_.__s + 23))
          {
            goto LABEL_132;
          }

          v40 = &v52;
        }

        v41 = v40->__r_.__value_.__s.__data_[0] == 43;
LABEL_133:
        if (__p.var2.__rep_.__s.__data_[15] < 0)
        {
          operator delete(*&__p.var0);
        }

        ++v16;
        v42 = v16 == v17 || v41;
        if (v42)
        {
          goto LABEL_149;
        }
      }
    }
  }

  v13 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.var0) = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "P-Associated-URI received, but there is no OwnPhoneNumber - dropping", &__p, 2u);
  }
}
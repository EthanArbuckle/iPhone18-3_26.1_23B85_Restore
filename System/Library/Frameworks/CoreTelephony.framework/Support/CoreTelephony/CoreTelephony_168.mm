uint64_t sub_1014463E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  sub_10000C320(&v10);
  sub_10000C030(&v11);
  sub_10000C030(&v11);
  v5 = *(a1 + 8);
  for (i = *(a1 + 16); v5 != i; v5 += 2)
  {
    sub_101444818(&__p, *v5);
    sub_10000C030(&v11);
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }

  sub_10000C030(&v11);
  sub_100061574(&v10, a2);
  *&v11 = v6;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_101446658(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006A5CC4(result, a4);
  }

  return result;
}

void sub_1014466C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001DFF90(&a9);
  _Unwind_Resume(a1);
}

void *sub_1014466E0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100ECB804(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_101446790(v8);
  return v4;
}

uint64_t sub_101446790(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CA1EC(a1);
  }

  return a1;
}

void sub_1014467C8(uint64_t ***a1)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v1 = **a1;
  v3 = *v1;
  v2 = v1[1];
  v10 = v3;
  v11 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_101446B90();
}

void sub_101446AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101446C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10)
{
  a10 = 0;
  sub_100F75FA4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_101446C3C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006A5CC4(result, a4);
  }

  return result;
}

void sub_101446CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001DFF90(&a9);
  _Unwind_Resume(a1);
}

void *sub_101446CC4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100ECB804(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_101446790(v8);
  return v4;
}

void sub_101446D74(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100105F20(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_101446DC0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *(a1 + 24);
  *(a1 + 16) = v6;
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_101446EB0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_101446EE8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3C788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101446F3C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_101446F74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3C7D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101446FC8(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v3 -= 32;
        sub_100E48AD8(v3);
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_101447074(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3C828;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014470D4(int a1)
{
  if ((a1 + 1) > 0xC)
  {
    v1 = &kCTRegistrationRadioAccessTechnologyUnknown;
  }

  else
  {
    v1 = *(&off_101F3C868 + (a1 + 1));
  }

  return *v1;
}

uint64_t sub_101447100(const void *a1)
{
  if (!a1)
  {
    return 11;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyCDMA1x))
  {
    return 3;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyCDMAEVDO))
  {
    return 4;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyCDMAHybrid))
  {
    return 5;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyGSM))
  {
    return 0;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyUTRAN))
  {
    return 2;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyLTE))
  {
    return 7;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyUTRAN2))
  {
    return 9;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyNR))
  {
    return 10;
  }

  return 11;
}

uint64_t sub_10144722C(int a1)
{
  v1 = &kCTWirelessTechnologyUnknown;
  if (a1 <= 39)
  {
    if (a1 == 4)
    {
      v1 = &kCTWirelessTechnologyUMTS;
      return *v1;
    }

    if (a1 == 8)
    {
      v1 = &kCTWirelessTechnologyCDMA2000;
      return *v1;
    }

    if (a1 != 32)
    {
      return *v1;
    }

    goto LABEL_11;
  }

  if (a1 == 40 || a1 == 64)
  {
LABEL_11:
    v1 = &kCTWirelessTechnologyLTE;
    return *v1;
  }

  if (a1 == 128)
  {
    v1 = &kCTWirelessTechnologyNR;
  }

  return *v1;
}

uint64_t sub_1014472A4(const void *a1)
{
  if (a1)
  {
    if (CFEqual(a1, kCTRegistrationRATSelection0))
    {
      return 1;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection1))
    {
      return 2;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection2))
    {
      return 3;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection3))
    {
      return 4;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection4))
    {
      return 8;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection5))
    {
      return 12;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection6))
    {
      return 16;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection8))
    {
      return 32;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection11))
    {
      return -48;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection9))
    {
      return 80;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection10))
    {
      return -112;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection7))
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void sub_101447450(int a1, int a2, void *a3, void *a4)
{
  v5 = kCTRegistrationRATSelectionUnknown;
  *a3 = kCTRegistrationRATSelectionUnknown;
  *a4 = v5;
  if (a1 <= 17)
  {
    if (a1 > 7)
    {
      if (a1 > 14)
      {
        if (a1 == 15)
        {
          goto LABEL_5;
        }

        if (a1 == 16)
        {
          v7 = &kCTRegistrationRATSelection6;
          goto LABEL_6;
        }
      }

      else
      {
        if (a1 == 8)
        {
          v7 = &kCTRegistrationRATSelection4;
          goto LABEL_6;
        }

        if (a1 == 12)
        {
          v7 = &kCTRegistrationRATSelection5;
          goto LABEL_6;
        }
      }
    }

    else if (a1 > 2)
    {
      if (a1 == 3)
      {
        *a3 = kCTRegistrationRATSelection2;
        if (a2 == 2)
        {
          v9 = &kCTRegistrationRATSelection1;
        }

        else
        {
          if (a2 != 1)
          {
            return;
          }

          v9 = &kCTRegistrationRATSelection0;
        }

        v8 = *v9;
        goto LABEL_7;
      }

      if (a1 == 4)
      {
        v7 = &kCTRegistrationRATSelection3;
        goto LABEL_6;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v7 = &kCTRegistrationRATSelection0;
        goto LABEL_6;
      }

      if (a1 == 2)
      {
        v7 = &kCTRegistrationRATSelection1;
        goto LABEL_6;
      }
    }
  }

  else if (a1 > 127)
  {
    if (a1 <= 191)
    {
      if (a1 == 128 || a1 == 144)
      {
        v7 = &kCTRegistrationRATSelection10;
        goto LABEL_6;
      }

      if (a1 == 147)
      {
        goto LABEL_5;
      }
    }

    else if (a1 > 210)
    {
      if (a1 == 211 || a1 == 255)
      {
        goto LABEL_5;
      }
    }

    else if (a1 == 192 || a1 == 208)
    {
      v7 = &kCTRegistrationRATSelection11;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = (a1 - 18);
    if (v6 <= 0x3E)
    {
      if (((1 << (a1 - 18)) & 0x200200002003) != 0)
      {
LABEL_5:
        v7 = &kCTRegistrationRATSelection7;
LABEL_6:
        v8 = *v7;
        *a3 = v8;
LABEL_7:
        *a4 = v8;
        return;
      }

      if (((1 << (a1 - 18)) & 0x4000400000000000) != 0)
      {
        v7 = &kCTRegistrationRATSelection9;
        goto LABEL_6;
      }

      if (v6 == 14)
      {
        v7 = &kCTRegistrationRATSelection8;
        goto LABEL_6;
      }
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109120;
    v10[1] = a1;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to convert RAT selection mask 0x%02x to string", v10, 8u);
  }
}

id sub_101447714(uint64_t a1)
{
  v1 = [&off_101F92F00 objectForKey:a1];

  return v1;
}

void sub_1014482C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, char a20)
{
  if (a20)
  {
  }

  if ((*(v25 - 84) & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1014488C4(id a1)
{
  v1 = NSClassFromString(@"ACXDeviceConnection");
  byte_101FCAA68 = v1 != 0;
}

void sub_101448908(uint64_t a1)
{
  v1 = a1;
  memset(v2, 0, sizeof(v2));
  sub_100A5C398(v2, &v1, "kSmsGetCellBroadcastSettingForAlertType", sub_101448C34, 3);
}

void sub_101448C34(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v8 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Request to GET the CB setting", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
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
        goto LABEL_9;
      }

      goto LABEL_15;
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
LABEL_9:
    v36 = xpc_BOOL_create(0);
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    *buf = *a5;
    v31 = "kDidSucceed";
    sub_10000F688(buf, &v36, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v36);
    v36 = 0;
    if (v18)
    {
      return;
    }

LABEL_33:
    sub_100004A34(v16);
    return;
  }

LABEL_15:
  v35 = 0;
  *buf = a4;
  v31 = "kSmsCellBroadcastAlertTypes";
  sub_100006354(buf, &v33);
  xpc::bridge(&v34, &v33, v19);
  sub_100060DE8(&v35, &v34);
  sub_10000A1EC(&v34);
  xpc_release(v33);
  LOBYTE(v34) = 0;
  subscriber::makeSimSlotRange();
  v20 = *buf;
  v21 = v31;
  if (*buf == v31)
  {
    goto LABEL_27;
  }

  v22 = v32;
  do
  {
    if (v22(*v20))
    {
      break;
    }

    ++v20;
  }

  while (v20 != v21);
  v23 = v31;
  if (v20 == v31)
  {
LABEL_27:
    v25 = 0;
    LOBYTE(v24) = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v24 |= (*(*v17 + 192))(v17, *v20, v35, &v34);
      if (v24)
      {
        v25 = (v34 | v25) != 0;
      }

      do
      {
        ++v20;
      }

      while (v20 != v21 && (v22(*v20) & 1) == 0);
    }

    while (v20 != v23);
  }

  v28 = xpc_BOOL_create(v25);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  *buf = *a5;
  v31 = "kSmsCellBroadcastEnabled";
  sub_10000F688(buf, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v26 = xpc_BOOL_create(v24 & 1);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  *buf = *a5;
  v31 = "kDidSucceed";
  sub_10000F688(buf, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  sub_100005978(&v35);
  if ((v18 & 1) == 0)
  {
    goto LABEL_33;
  }
}

void sub_101448FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object, char a17, int a18, const void *a19)
{
  sub_100005978(&a19);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

void sub_101449010(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  object = xpc_BOOL_create(0);
  if (!object)
  {
    object = xpc_null_create();
  }

  *buf = *a5;
  v35 = "kDidSucceed";
  sub_10000F688(buf, &object, &v41);
  xpc_release(v41);
  v41 = 0;
  xpc_release(object);
  object = 0;
  *buf = a4;
  v35 = "kSmsCellBroadcastEnabled";
  sub_100006354(buf, &v39);
  v9 = xpc::dyn_cast_or_default(&v39, 0, v8);
  xpc_release(v39);
  sub_100020A1C();
  v10 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Request to SET the CB setting", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v12 = ServiceMap;
  if (v13 < 0)
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
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
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
        goto LABEL_29;
      }

      goto LABEL_14;
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
    goto LABEL_29;
  }

LABEL_14:
  v29 = v20;
  v39 = 0;
  *buf = a4;
  v35 = "kSmsCellBroadcastAlertTypes";
  sub_100006354(buf, &v37);
  xpc::bridge(&v38, &v37, v21);
  sub_100060DE8(&v39, &v38);
  sub_10000A1EC(&v38);
  xpc_release(v37);
  subscriber::makeSimSlotRange();
  v24 = *buf;
  v23 = v35;
  if (*buf == v35)
  {
    goto LABEL_25;
  }

  v25 = v36;
  do
  {
    if (v25(*v24))
    {
      break;
    }

    ++v24;
  }

  while (v24 != v23);
  v26 = v35;
  if (v24 == v35)
  {
LABEL_25:
    v27 = 0;
  }

  else
  {
    v27 = 0;
    do
    {
      v28 = (*(*v19 + 200))(v19, *v24, v39, v9);
      do
      {
        ++v24;
      }

      while (v24 != v23 && (v25(*v24) & 1) == 0);
      v27 |= v28;
    }

    while (v24 != v26);
  }

  ctu::cf_to_xpc(&v32, v39, v22);
  *buf = *a5;
  v35 = "kSmsCellBroadcastAlertTypes";
  sub_10000F688(buf, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  v30 = xpc_BOOL_create(v27 & 1);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  *buf = *a5;
  v35 = "kDidSucceed";
  sub_10000F688(buf, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  sub_100005978(&v39);
  v20 = v29;
LABEL_29:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }
}

void sub_101449380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object, char a20, xpc_object_t a21)
{
  sub_100005978(&a21);
  if ((a11 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_10144940C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v7 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Request to get all cell broadcast types", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
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
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (!v14)
  {
    std::mutex::unlock(v9);
    return;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v9);
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
    if (!v16)
    {
LABEL_18:
      sub_100004A34(v15);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v9);
    if (!v16)
    {
      return;
    }
  }

  v26 = 0;
  (*(*v16 + 208))(&v25, v16, 1);
  *buf = 0;
  v17 = v25;
  v25 = 0;
  v26 = v17;
  sub_10001021C(buf);
  sub_10001021C(&v25);
  if (v26)
  {
    ctu::cf_to_xpc(&v23, v26, v18);
    *buf = *a5;
    v22 = "kSmsCellBroadcastAlertTypes";
    sub_10000F688(buf, &v23, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v23);
    v23 = 0;
  }

  else
  {
    v19 = xpc_string_create("Failed to create a dictionary");
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    *buf = *a5;
    v22 = "kSmsCellBroadcastAlertTypes";
    sub_10000F688(buf, &v19, &v20);
    xpc_release(v20);
    v20 = 0;
    xpc_release(v19);
    v19 = 0;
  }

  sub_10001021C(&v26);
  if (v15)
  {
    goto LABEL_18;
  }
}

void sub_101449644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10001021C(va);
  if (v8)
  {
    sub_100004A34(v8);
  }

  _Unwind_Resume(a1);
}

void sub_10144966C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v7 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Request to get all cell broadcast types", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
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
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (!v14)
  {
    std::mutex::unlock(v9);
    return;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v9);
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
    if (!v16)
    {
LABEL_33:
      sub_100004A34(v15);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v9);
    if (!v16)
    {
      return;
    }
  }

  v17 = subscriber::expectedSimCount();
  theArray = 0;
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, v17, &kCFTypeArrayCallBacks);
  subscriber::makeSimSlotRange();
  v18 = *buf;
  v19 = v36;
  if (*buf != v36)
  {
    v20 = v37;
    do
    {
      if (v20(*v18))
      {
        break;
      }

      ++v18;
    }

    while (v18 != v19);
    v21 = v36;
    if (v18 != v36)
    {
      do
      {
        v22 = *v18;
        value = 0;
        (*(*v16 + 208))(&v33, v16, v22);
        v23 = v33;
        *v39 = value;
        v33 = 0;
        value = v23;
        sub_10001021C(v39);
        sub_10001021C(&v33);
        if (value)
        {
          CFArrayAppendValue(theArray, value);
        }

        else
        {
          sub_100020A1C();
          v24 = qword_101FCAA80;
          if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
          {
            v25 = subscriber::asString();
            *v39 = 136315138;
            *&v39[4] = v25;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to get alert type dictionary for slot: %s", v39, 0xCu);
          }
        }

        sub_10001021C(&value);
        do
        {
          ++v18;
        }

        while (v18 != v19 && (v20(*v18) & 1) == 0);
      }

      while (v18 != v21);
    }
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    sub_100020A1C();
    v27 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to get alert type dictionaries.", buf, 2u);
    }

    *buf = *a5;
    v36 = "kSmsCellBroadcastAlertTypesForAllSIMSlots";
    sub_100E3F0C8(buf, &v30);
    xpc_release(v30);
    v30 = 0;
    v28 = xpc_BOOL_create(0);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    *buf = *a5;
    v36 = "kDidSucceed";
    sub_10000F688(buf, &v28, &v29);
    xpc_release(v29);
    v29 = 0;
    xpc_release(v28);
    v28 = 0;
  }

  else
  {
    ctu::cf_to_xpc(&v31, theArray, v26);
    *buf = *a5;
    v36 = "kSmsCellBroadcastAlertTypesForAllSIMSlots";
    sub_10000F688(buf, &v31, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v31);
    v31 = 0;
  }

  sub_1000279DC(&theArray);
  if (v15)
  {
    goto LABEL_33;
  }
}

void sub_101449A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101449AE4(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v8 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Request to set custom alert setting", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
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
        goto LABEL_9;
      }

      goto LABEL_15;
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
LABEL_9:
    v21 = xpc_BOOL_create(0);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    *buf = *a5;
    v27 = "kDidSucceed";
    sub_10000F688(buf, &v21, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v21);
    v21 = 0;
    if (v18)
    {
      return;
    }

LABEL_20:
    sub_100004A34(v16);
    return;
  }

LABEL_15:
  v30 = 0;
  *buf = a4;
  v27 = "kSmsSetCellBroadcastCustomSettings";
  sub_100006354(buf, &v28);
  xpc::bridge(&v29, &v28, v19);
  sub_100010180(&v30, &v29);
  sub_10000A1EC(&v29);
  xpc_release(v28);
  v23 = v30;
  if (v30)
  {
    CFRetain(v30);
  }

  v20 = (*(*v17 + 72))(v17, &v23);
  v24 = xpc_BOOL_create(v20);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  *buf = *a5;
  v27 = "kDidSucceed";
  sub_10000F688(buf, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  sub_10001021C(&v23);
  sub_10001021C(&v30);
  if ((v18 & 1) == 0)
  {
    goto LABEL_20;
  }
}

void sub_101449D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, char a19)
{
  sub_10001021C(&a12);
  sub_10001021C((v21 - 72));
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

void sub_101449DCC(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v8 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Request to get custom alert setting", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
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
        goto LABEL_9;
      }

      goto LABEL_15;
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
LABEL_9:
    v21 = xpc_BOOL_create(0);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    *buf = *a5;
    v29 = "kDidSucceed";
    sub_10000F688(buf, &v21, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v21);
    v21 = 0;
    if (v18)
    {
      return;
    }

LABEL_20:
    sub_100004A34(v16);
    return;
  }

LABEL_15:
  v32 = 0;
  *buf = a4;
  v29 = "kSmsGetCellBroadcastCustomSettings";
  sub_100006354(buf, &v30);
  xpc::bridge(&v31, &v30, v19);
  sub_100010180(&v32, &v31);
  sub_10000A1EC(&v31);
  xpc_release(v30);
  v31 = 0;
  v27 = v32;
  if (v32)
  {
    CFRetain(v32);
  }

  (*(*v17 + 80))(&v31, v17, &v27);
  sub_10001021C(&v27);
  ctu::cf_to_xpc(&v25, v31, v20);
  *buf = *a5;
  v29 = "kSmsCellBroadcastCustomSettingsResponse";
  sub_10000F688(buf, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_BOOL_create(1);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  *buf = *a5;
  v29 = "kDidSucceed";
  sub_10000F688(buf, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  sub_10001021C(&v31);
  sub_10001021C(&v32);
  if ((v18 & 1) == 0)
  {
    goto LABEL_20;
  }
}

void sub_10144A0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object)
{
  sub_10001021C((v22 - 80));
  sub_10001021C((v22 - 72));
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10144A120(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v7 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Request to get CellBroadcast Configuration", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
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
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_12:
  v27 = 0;
  (*(*v16 + 96))(&v27, v16);
  ctu::cf_to_xpc(&v25, v27, v18);
  *buf = *a5;
  v24 = "kSmsCellBroadcastConfigContent";
  sub_10000F688(buf, &v25, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v25);
  v25 = 0;
  v21 = xpc_BOOL_create(1);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  *buf = *a5;
  v24 = "kDidSucceed";
  sub_10000F688(buf, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  sub_10001021C(&v27);
LABEL_15:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (!v16)
  {
    v19 = xpc_BOOL_create(0);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    *buf = *a5;
    v24 = "kDidSucceed";
    sub_10000F688(buf, &v19, &v20);
    xpc_release(v20);
    v20 = 0;
    xpc_release(v19);
  }
}

void sub_10144A390(_Unwind_Exception *a1)
{
  sub_10001021C((v3 - 56));
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10144A3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v6 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Self test command not supported", v7, 2u);
  }

  v8 = xpc_BOOL_create(0);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v7[0] = *a5;
  v7[1] = "kDidSucceed";
  sub_10000F688(v7, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
}

void sub_10144A488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v6 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Early Geofence Test not supported", v7, 2u);
  }

  v8 = xpc_BOOL_create(0);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v7[0] = *a5;
  v7[1] = "kDidSucceed";
  sub_10000F688(v7, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
}

void sub_10144A550(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v7 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Request to get override accessibility vibration settings", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
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
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
LABEL_9:
    sub_100020A1C();
    v18 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to get CMAS interface", buf, 2u);
    }

    v20 = xpc_BOOL_create(0);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    *buf = *a5;
    v25 = "kDidSucceed";
    sub_10000F688(buf, &v20, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v20);
    v20 = 0;
    if (v17)
    {
      return;
    }

LABEL_22:
    sub_100004A34(v15);
    return;
  }

LABEL_17:
  v19 = (*(*v16 + 88))(v16);
  v26 = xpc_BOOL_create(v19);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  *buf = *a5;
  v25 = "kSmsGetCellBroadcastOverrideAccessibilityVibrationSettingResponse";
  sub_10000F688(buf, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v22 = xpc_BOOL_create(1);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  *buf = *a5;
  v25 = "kDidSucceed";
  sub_10000F688(buf, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }
}

void sub_10144A7F8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10144A830(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v17[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v17);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v17[0] = a4;
    v17[1] = "kSetSMSTestingMode";
    sub_100006354(v17, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    (*(*v13 + 216))(v13, v16);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10144A970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10144A9A8(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  *&buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &buf);
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
        goto LABEL_7;
      }

LABEL_13:
      v35 = 0uLL;
      v36 = 0;
      __p[0] = a4;
      __p[1] = "kInjectCellBroadcastMessage";
      sub_100006354(__p, object);
      buf = 0uLL;
      v40 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v40) < 0)
      {
        operator delete(buf);
      }

      xpc_release(object[0]);
      __p[0] = 0;
      __p[1] = 0;
      v34 = 0;
      if (xpc_dictionary_get_value(*a4, "kInjectWacString"))
      {
        sub_100020A1C();
        v17 = qword_101FCAA80;
        if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
        {
          v18 = &v35;
          if (v36 < 0)
          {
            v18 = v35;
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Injecting WEA: %{public}s", &buf, 0xCu);
        }

        v29[0] = a4;
        v29[1] = "kInjectWacString";
        sub_100006354(v29, &v30);
        buf = 0uLL;
        v40 = 0;
        xpc::dyn_cast_or_default();
        if (SHIBYTE(v40) < 0)
        {
          operator delete(buf);
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *object;
        v34 = v32;
        HIBYTE(v32) = 0;
        LOBYTE(object[0]) = 0;
        xpc_release(v30);
        v19 = HIBYTE(v34);
        if (v34 < 0)
        {
          v19 = __p[1];
        }

        if (v19)
        {
          sub_100020A1C();
          v20 = qword_101FCAA80;
          if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
          {
            v21 = __p;
            if (v34 < 0)
            {
              v21 = __p[0];
            }

            LODWORD(buf) = 136446210;
            *(&buf + 4) = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I           WAC: %{public}s", &buf, 0xCu);
          }
        }
      }

      if (SHIBYTE(v36) < 0)
      {
        sub_100005F2C(__dst, v35, *(&v35 + 1));
      }

      else
      {
        *__dst = v35;
        v26 = v36;
      }

      if (SHIBYTE(v34) < 0)
      {
        sub_100005F2C(v23, __p[0], __p[1]);
      }

      else
      {
        *v23 = *__p;
        v24 = v34;
      }

      v22 = (*(*v15 + 224))(v15, __dst, v23);
      v27 = xpc_BOOL_create(v22);
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      *&buf = *a5;
      *(&buf + 1) = "kInjectCellBroadcastMessageResult";
      sub_10000F688(&buf, &v27, &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v27);
      v27 = 0;
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__dst[0]);
      }

      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v36) < 0)
      {
        operator delete(v35);
        if (v16)
        {
          return;
        }
      }

      else if (v16)
      {
        return;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (v15)
  {
    goto LABEL_13;
  }

LABEL_7:
  v37 = xpc_BOOL_create(0);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  *&buf = *a5;
  *(&buf + 1) = "kInjectCellBroadcastMessageResult";
  sub_10000F688(&buf, &v37, &v38);
  xpc_release(v38);
  v38 = 0;
  xpc_release(v37);
  v37 = 0;
  if ((v16 & 1) == 0)
  {
LABEL_47:
    sub_100004A34(v14);
  }
}

void sub_10144ADEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, xpc_object_t object, xpc_object_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10144AEF0(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  *&buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &buf);
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
        goto LABEL_7;
      }

LABEL_15:
      __p[0] = 0;
      __p[1] = 0;
      v26 = 0;
      v23[0] = a4;
      v23[1] = "kInjectOOSGeofence";
      sub_100006354(v23, &v24);
      buf = 0uLL;
      v30 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v30) < 0)
      {
        operator delete(buf);
      }

      xpc_release(v24);
      sub_100020A1C();
      v18 = qword_101FCAA80;
      if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
      {
        v19 = __p;
        if (v26 < 0)
        {
          v19 = __p[0];
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Injecting OOS Geofence: %{public}s", &buf, 0xCu);
      }

      v20 = (*(*v15 + 144))(v15, __p);
      v21 = xpc_BOOL_create(v20);
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      *&buf = *a5;
      *(&buf + 1) = "kInjectOOSGeofenceResult";
      sub_10000F688(&buf, &v21, &v22);
      xpc_release(v22);
      v22 = 0;
      xpc_release(v21);
      v21 = 0;
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
        if (v16)
        {
          return;
        }
      }

      else if (v16)
      {
        return;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_7:
  sub_100020A1C();
  v17 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Could not get WeaGeofenceManagerInterface", &buf, 2u);
  }

  v27 = xpc_BOOL_create(0);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  *&buf = *a5;
  *(&buf + 1) = "kInjectOOSGeofenceResult";
  sub_10000F688(&buf, &v27, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v27);
  v27 = 0;
  if ((v16 & 1) == 0)
  {
LABEL_25:
    sub_100004A34(v14);
  }
}

void sub_10144B1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10144B27C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  string[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, string);
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
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_9:
  v17 = Registry::getServiceMap(*a1);
  v18 = v17;
  if (v19 < 0)
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

  std::mutex::lock(v17);
  string[0] = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, string);
  if (!v23)
  {
    v25 = 0;
    goto LABEL_16;
  }

  v25 = v23[3];
  v24 = v23[4];
  if (!v24)
  {
LABEL_16:
    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v24);
  v26 = 0;
LABEL_17:
  v27 = 0;
  v28 = 0;
  if (!v25 || !v15)
  {
    goto LABEL_33;
  }

  memset(string, 0, sizeof(string));
  (*(*v15 + 32))(string, v15, 1);
  if (SHIBYTE(string[2]) < 0)
  {
    if (string[1])
    {
      v29 = string[0];
      goto LABEL_24;
    }
  }

  else if (HIBYTE(string[2]))
  {
    v29 = string;
LABEL_24:
    v37 = xpc_string_create(v29);
    if (!v37)
    {
      v37 = xpc_null_create();
    }

    v36[0] = *a5;
    v36[1] = "kVoicemailUrl";
    sub_10000F688(v36, &v37, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v37);
    v37 = 0;
  }

  v28 = (*(*v15 + 40))(v15, 1);
  if (v28 && (*(*v15 + 48))(v15, 1))
  {
    v27 = (*(*v15 + 56))(v15, 1);
  }

  else
  {
    v27 = 0;
  }

  if (SHIBYTE(string[2]) < 0)
  {
    operator delete(string[0]);
  }

LABEL_33:
  v34 = xpc_BOOL_create(v28);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  string[0] = *a5;
  string[1] = "kVoicemailAvailable";
  sub_10000F688(string, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  v32 = xpc_int64_create(v27);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  string[0] = *a5;
  string[1] = "kVoicemailCount";
  sub_10000F688(string, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  sub_100020A1C();
  v30 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    v31 = "false";
    if (v28)
    {
      v31 = "true";
    }

    LODWORD(string[0]) = 136315394;
    *(string + 4) = v31;
    WORD2(string[1]) = 1024;
    *(&string[1] + 6) = v27;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I sGetVoicemailCount: available:%s, cnt:%d", string, 0x12u);
    if (v26)
    {
LABEL_39:
      if (v16)
      {
        return;
      }

      goto LABEL_40;
    }
  }

  else if (v26)
  {
    goto LABEL_39;
  }

  sub_100004A34(v24);
  if (v16)
  {
    return;
  }

LABEL_40:
  sub_100004A34(v14);
}

void sub_10144B6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10144B75C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v8 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Apple safety alert received", buf, 2u);
  }

  object = xpc_BOOL_create(0);
  if (!object)
  {
    object = xpc_null_create();
  }

  *buf = *a5;
  v34 = "kDidSucceed";
  sub_10000F688(buf, &object, &v36);
  xpc_release(v36);
  v36 = 0;
  xpc_release(object);
  object = 0;
  ServiceMap = Registry::getServiceMap(*a1);
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
        goto LABEL_11;
      }

      goto LABEL_15;
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
LABEL_11:
    sub_100020A1C();
    v19 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to get CellBroadcast interface", buf, 2u);
    }

    goto LABEL_27;
  }

LABEL_15:
  cf = 0;
  *buf = a4;
  v34 = "kAppleSafetyAlertContent";
  sub_100006354(buf, &v30);
  xpc::bridge(&v31, &v30, v20);
  sub_100010180(&cf, &v31);
  sub_10000A1EC(&v31);
  xpc_release(v30);
  if (cf)
  {
    v27 = cf;
    CFRetain(cf);
    v21 = (*(*v17 + 176))(v17, &v27);
    sub_10001021C(&v27);
    v25 = xpc_BOOL_create(v21 == 0);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kDidSucceed";
    sub_10000F688(buf, &v25, &v26);
    xpc_release(v26);
    v26 = 0;
    xpc_release(v25);
    v25 = 0;
    v23 = xpc_int64_create(v21 >> 32);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kError";
    sub_10000F688(buf, &v23, &v24);
    xpc_release(v24);
    v24 = 0;
    xpc_release(v23);
    v23 = 0;
  }

  else
  {
    sub_100020A1C();
    v22 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid content: kAppleSafetyAlertContent", buf, 2u);
    }

    v28 = xpc_int64_create(22);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kError";
    sub_10000F688(buf, &v28, &v29);
    xpc_release(v29);
    v29 = 0;
    xpc_release(v28);
    v28 = 0;
  }

  sub_10001021C(&cf);
LABEL_27:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10144BB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, xpc_object_t object, char a17, int a18, const void *a19)
{
  sub_10001021C(&a19);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

void sub_10144BBA0(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v8 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Apple safety alert received", buf, 2u);
  }

  object = xpc_BOOL_create(0);
  if (!object)
  {
    object = xpc_null_create();
  }

  *buf = *a5;
  v34 = "kDidSucceed";
  sub_10000F688(buf, &object, &v36);
  xpc_release(v36);
  v36 = 0;
  xpc_release(object);
  object = 0;
  ServiceMap = Registry::getServiceMap(*a1);
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
        goto LABEL_11;
      }

      goto LABEL_15;
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
LABEL_11:
    sub_100020A1C();
    v19 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to get CellBroadcast interface", buf, 2u);
    }

    goto LABEL_27;
  }

LABEL_15:
  cf = 0;
  *buf = a4;
  v34 = "kAppleSafetyAlertContent";
  sub_100006354(buf, &v30);
  xpc::bridge(&v31, &v30, v20);
  sub_100010180(&cf, &v31);
  sub_10000A1EC(&v31);
  xpc_release(v30);
  if (cf)
  {
    v27 = cf;
    CFRetain(cf);
    v21 = (*(*v17 + 184))(v17, &v27);
    sub_10001021C(&v27);
    v25 = xpc_BOOL_create(v21 == 0);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kDidSucceed";
    sub_10000F688(buf, &v25, &v26);
    xpc_release(v26);
    v26 = 0;
    xpc_release(v25);
    v25 = 0;
    v23 = xpc_int64_create(v21 >> 32);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kError";
    sub_10000F688(buf, &v23, &v24);
    xpc_release(v24);
    v24 = 0;
    xpc_release(v23);
    v23 = 0;
  }

  else
  {
    sub_100020A1C();
    v22 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid content: kAppleSafetyAlertContent", buf, 2u);
    }

    v28 = xpc_int64_create(22);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kError";
    sub_10000F688(buf, &v28, &v29);
    xpc_release(v29);
    v29 = 0;
    xpc_release(v28);
    v28 = 0;
  }

  sub_10001021C(&cf);
LABEL_27:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10144BF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, xpc_object_t object, char a17, int a18, const void *a19)
{
  sub_10001021C(&a19);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

void sub_10144BFE4(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = xpc_BOOL_create(0);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  *buf = *a5;
  v24 = "kDidSucceed";
  sub_10000F688(buf, &v25, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v25);
  v25 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
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
        goto LABEL_9;
      }

      goto LABEL_13;
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
LABEL_9:
    sub_100020A1C();
    v17 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to get CellBroadcast interface", buf, 2u);
    }

    goto LABEL_19;
  }

LABEL_13:
  value = 0;
  if ((*(*v15 + 56))(v15, &value))
  {
    v20 = xpc_BOOL_create(value);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    *buf = *a5;
    v24 = "kAutoReadOutEnabled";
    sub_10000F688(buf, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
    v18 = xpc_BOOL_create(1);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    *buf = *a5;
    v24 = "kDidSucceed";
    sub_10000F688(buf, &v18, &v19);
    xpc_release(v19);
    v19 = 0;
    xpc_release(v18);
    v18 = 0;
  }

LABEL_19:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_10144C254(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10144C284(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = xpc_BOOL_create(0);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  *buf = *a5;
  v26 = "kDidSucceed";
  sub_10000F688(buf, &v27, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v27);
  *buf = a4;
  v26 = "kAutoReadOutEnabled";
  v27 = 0;
  sub_100006354(buf, &v24);
  v9 = xpc::dyn_cast_or_default(&v24, 0, v8);
  xpc_release(v24);
  ServiceMap = Registry::getServiceMap(*a1);
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
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
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
        goto LABEL_9;
      }

      goto LABEL_13;
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
LABEL_9:
    sub_100020A1C();
    v20 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to get CellBroadcast interface", buf, 2u);
    }

    goto LABEL_16;
  }

LABEL_13:
  v21 = (*(*v18 + 64))(v18, v9);
  v22 = xpc_BOOL_create(v21);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  *buf = *a5;
  v26 = "kDidSucceed";
  sub_10000F688(buf, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
LABEL_16:
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_10144C4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10144C520(void *a1, void *a2, NSObject **a3)
{
  v6 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "carrier.space.ent");
  *v6 = 0;
  v6[1] = 0;
  v7 = *a3;
  a1[3] = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger(&v11, &v13);
  ctu::OsLogLogger::OsLogLogger((a1 + 5), &v11);
  ctu::OsLogLogger::~OsLogLogger(&v11);
  ctu::OsLogContext::~OsLogContext(&v13);
  v12[0] = off_101E2A828;
  v12[1] = sub_10144C828;
  v12[3] = v12;
  a1[6] = 0;
  if ((capabilities::ct::supportsGemini(v8) & 1) == 0)
  {
    operator new();
  }

  if (!a1[6])
  {
    operator new();
  }

  sub_1000A8744(v12);
  *a1 = off_101F3C930;
  a1[7] = *a2;
  v9 = a2[1];
  a1[8] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = 0;
  a1[10] = 0;
  return a1;
}

void sub_10144C76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000A8744(va);
  operator delete();
}

const char *sub_10144C828(int a1)
{
  v1 = "carrier.space.ent.?";
  if (a1 == 2)
  {
    v1 = "carrier.space.ent.2";
  }

  if (a1 == 1)
  {
    return "carrier.space.ent.1";
  }

  else
  {
    return v1;
  }
}

void sub_10144C854(void *a1)
{
  *a1 = off_101F3C930;
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  CarrierSpaceEntitlementsHandlerInterface::~CarrierSpaceEntitlementsHandlerInterface(a1);
}

void sub_10144C900(void *a1)
{
  sub_10144C854(a1);

  operator delete();
}

const void **sub_10144C9D0(uint64_t a1)
{
  *v40 = 0;
  DevicePersistentCopyValue(v40, @"CarrierSpaceUsageInfoKey", 0);
  if (*v40)
  {
    v2 = *v40;
    v3 = [v2 description];
    v4 = [v3 componentsSeparatedByString:@"\n"];

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Cached usage :", buf, 2u);
    }

    v7 = 0;
    *&v6 = 136315138;
    v36 = v6;
    while (v7 < [v4 count])
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v4 objectAtIndexedSubscript:v7];
        v10 = v9;
        v11 = [v9 UTF8String];
        *buf = v36;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
      }

      ++v7;
    }
  }

  sub_10000A1EC(v40);
  *v40 = 0;
  DevicePersistentCopyValue(v40, @"CarrierSpacePlansInfoKey", 0);
  if (*v40)
  {
    v12 = *v40;
    v13 = [v12 description];
    v14 = [v13 componentsSeparatedByString:@"\n"];

    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Cached plans :", buf, 2u);
    }

    v17 = 0;
    *&v16 = 136315138;
    v37 = v16;
    while (v17 < [v14 count])
    {
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v14 objectAtIndexedSubscript:v17];
        v20 = v19;
        v21 = [v19 UTF8String];
        *buf = v37;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
      }

      ++v17;
    }
  }

  sub_10000A1EC(v40);
  *v40 = 0;
  DevicePersistentCopyValue(v40, @"CarrierSpaceAppsInfoKey", 0);
  if (*v40)
  {
    v22 = *v40;
    v23 = [v22 description];
    v24 = [v23 componentsSeparatedByString:@"\n"];

    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Cached apps :", buf, 2u);
    }

    v27 = 0;
    *&v26 = 136315138;
    v38 = v26;
    while (v27 < [v24 count])
    {
      v28 = *(a1 + 40);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v24 objectAtIndexedSubscript:v27];
        v30 = v29;
        v31 = [v29 UTF8String];
        *buf = v38;
        *&buf[4] = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
      }

      ++v27;
    }
  }

  sub_10000A1EC(v40);
  *buf = 0;
  DevicePersistentCopyValue(v40, @"CarrierSpaceBackgroundRefreshIntervalHrsKey", 0);
  sub_100060DE8(buf, v40);
  sub_10000A1EC(v40);
  v32 = *buf;
  if (*buf)
  {
    v33 = *(a1 + 40);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      IntValue = CFStringGetIntValue(v32);
      *v40 = 67109120;
      *&v40[4] = IntValue;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Cached background refresh interval : %d hrs", v40, 8u);
    }
  }

  return sub_100005978(buf);
}

void sub_10144CE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_10144CF20(void *a1, void *a2)
{
  v129 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v98 = a1[5];
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "network usage info is of invalid type", buf, 2u);
    }

    v128 = 0;
    goto LABEL_147;
  }

  v121 = v129;
  v128 = objc_alloc_init(CTCarrierSpaceUsageInfo);
  v126 = [v121 objectForKey:@"account-metrics"];
  if (!v126)
  {
    v99 = a1[5];
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I account metrics missing", buf, 2u);
    }

    goto LABEL_138;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v100 = a1[5];
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      v106 = [objc_opt_class() description];
      *buf = 136315138;
      *&buf[4] = [v106 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "account metrics is of invalid type %s", buf, 0xCu);
    }

LABEL_138:
    v101 = 0;
    goto LABEL_146;
  }

  v125 = v126;
  v2 = [v125 count];
  v124 = [NSMutableArray arrayWithCapacity:v2];
  v123 = v2;
  if (!v2)
  {
LABEL_139:
    v102 = v124;
    v101 = v124;
    goto LABEL_145;
  }

  v3 = 0;
  while (1)
  {
    v131 = v3;
    v132 = [v125 objectAtIndexedSubscript:?];
    if (!v132)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v104 = a1[5];
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "account metrics array item is of invalid type", buf, 2u);
      }

      goto LABEL_144;
    }

    v137 = v132;
    v136 = objc_alloc_init(CTCarrierSpaceUsageAccountMetrics);
    v4 = [v137 objectForKey:@"network-usage-label"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
    {
      [v136 setNetworkUsageLabel:v4];
    }

    v5 = [v137 objectForKey:@"device-type"];

    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v136 setDeviceType:{objc_msgSend(v5, "integerValue")}];
    }

    v7 = [v137 objectForKey:@"local-device-metrics"];
    [v136 setLocalDevice:{objc_msgSend(v7, "BOOLValue")}];

    v8 = [v137 objectForKey:@"subscription-status"];

    v9 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 length])
    {
      [v136 setSubscriptionStatus:v8];
    }

    v10 = [v137 objectForKey:@"plan-type"];

    v11 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 length])
    {
      [v136 setPlanType:v10];
    }

    v12 = [v137 objectForKey:@"billing-cycle-ends-date"];

    v13 = v12;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 length])
    {
      v14 = sub_1011F877C(v12);
      [v136 setBillingCycleEndDate:v14];
    }

    v134 = [v137 objectForKey:@"applicable-plans"];
    if (v134)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v130 = v134;
        v15 = [v130 count];
        v16 = [NSMutableArray arrayWithCapacity:v15];
        v17 = v16;
        v127 = v15;
        if (v15)
        {
          v18 = 0;
          v112 = v16;
          while (1)
          {
            v19 = [v130 objectAtIndexedSubscript:v18];
            if (!v19)
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v97 = a1[5];
              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "applicable plans array item is of invalid type", buf, 2u);
              }

              goto LABEL_127;
            }

            v20 = v19;
            v21 = objc_alloc_init(CTCarrierSpaceUsagePlanMetrics);
            v22 = [v20 objectForKey:@"plan-label"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 length])
            {
              [v21 setPlanLabel:v22];
            }

            v23 = [v20 objectForKey:@"plan-category"];

            v24 = v23;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v21 setPlanCategory:{objc_msgSend(v23, "integerValue")}];
            }

            v25 = [v20 objectForKey:@"current-used-plan"];
            [v21 setCurrentUsedPlan:{objc_msgSend(v25, "BOOLValue")}];

            if ([v21 currentUsedPlan])
            {
              v133 = [v20 objectForKey:@"managed-hours"];
              v26 = a1[10];
              if (v26)
              {
                v122 = std::__shared_weak_count::lock(v26);
                if (v122)
                {
                  v27 = a1[9];
                  if (v27)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v107 = v27;
                      v28 = v133;
                      v149 = 0u;
                      v150 = 0u;
                      v114 = v28;
                      v29 = [v28 objectForKey:@"expiration-date"];
                      v30 = sub_1011F877C(v29);

                      v31 = v30;
                      v32 = *(&v150 + 1);
                      v109 = v31;
                      *(&v150 + 1) = v31;
                      *buf = v32;
                      sub_1003EC530(buf);
                      v117 = [v114 objectForKey:@"time-windows"];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v147 = 0u;
                        v148 = 0u;
                        v145 = 0u;
                        v146 = 0u;
                        obj = v117;
                        v33 = [obj countByEnumeratingWithState:&v145 objects:buf count:16];
                        if (v33)
                        {
                          v108 = *v146;
                          do
                          {
                            for (i = 0; i != v33; i = i + 1)
                            {
                              if (*v146 != v108)
                              {
                                objc_enumerationMutation(obj);
                              }

                              v111 = *(*(&v145 + 1) + 8 * i);
                              v115 = [obj objectForKeyedSubscript:v107];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v143 = 0u;
                                v144 = 0u;
                                v141 = 0u;
                                v142 = 0u;
                                v118 = v115;
                                v34 = [v118 countByEnumeratingWithState:&v141 objects:v152 count:16];
                                if (v34)
                                {
                                  v120 = *v142;
                                  v116 = v33;
                                  while (2)
                                  {
                                    v119 = v34;
                                    for (j = 0; j != v119; j = j + 1)
                                    {
                                      if (*v142 != v120)
                                      {
                                        objc_enumerationMutation(v118);
                                      }

                                      v36 = *(*(&v141 + 1) + 8 * j);
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v37 = [v36 objectForKey:@"off-peak-data-type"];
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          goto LABEL_76;
                                        }

                                        v38 = [v36 objectForKey:@"start-time"];
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          goto LABEL_75;
                                        }

                                        v39 = [v36 objectForKey:@"end-time"];
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {

LABEL_75:
LABEL_76:

                                          goto LABEL_77;
                                        }

                                        memset(v140, 0, sizeof(v140));
                                        DWORD2(v140[1]) = 7;
                                        v40 = sub_1011F877C(v38);
                                        v41 = *(&v140[0] + 1);
                                        *(&v140[0] + 1) = v40;
                                        v151 = v41;
                                        sub_1003EC530(&v151);
                                        v42 = sub_1011F877C(v39);
                                        v43 = *&v140[1];
                                        *&v140[1] = v42;
                                        v151 = v43;
                                        sub_1003EC530(&v151);
                                        if (*(&v140[0] + 1) && *&v140[1])
                                        {
                                          v44 = [v37 intValue];
                                          if (v44 - 1 >= 3)
                                          {
                                            v45 = 0;
                                          }

                                          else
                                          {
                                            v45 = v44;
                                          }

                                          LODWORD(v140[0]) = v45;
                                          v46 = sub_1011F8A8C(v111);
                                          DWORD2(v140[1]) = v46;
                                          v47 = *(&v149 + 1);
                                          if (*(&v149 + 1) >= v150)
                                          {
                                            v48 = sub_1011EA818(&v149, v140);
                                          }

                                          else
                                          {
                                            **(&v149 + 1) = v140[0];
                                            *(v47 + 8) = 0u;
                                            *(v47 + 8) = *(&v140[0] + 1);
                                            *(v47 + 16) = *&v140[1];
                                            *(v140 + 8) = 0u;
                                            *(v47 + 24) = v46;
                                            v48 = v47 + 32;
                                          }

                                          *(&v149 + 1) = v48;
                                        }

                                        sub_1003EC530(&v140[1]);
                                        sub_1003EC530(v140 + 1);

                                        v33 = v116;
                                      }
                                    }

                                    v34 = [v118 countByEnumeratingWithState:&v141 objects:v152 count:16];
                                    if (v34)
                                    {
                                      continue;
                                    }

                                    break;
                                  }
                                }
                              }
                            }

                            v33 = [obj countByEnumeratingWithState:&v145 objects:buf count:16];
                          }

                          while (v33);
                        }

                        v138 = v149;
                        v49 = v150;
                        v150 = 0uLL;
                        v149 = 0uLL;
                        v139 = v49;
                        (*(*v107 + 40))(v107, &v138);
                        sub_1003EC530(&v139 + 1);
                        *&v140[0] = &v138;
                        sub_101028494(v140);
                      }

                      else
                      {
                        v51 = a1[5];
                        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          *&buf[4] = @"time-windows";
                          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I %@ is of unexpected type", buf, 0xCu);
                        }
                      }

LABEL_77:

                      sub_1003EC530(&v150 + 1);
                      *&v140[0] = &v149;
                      v17 = v112;
                      sub_101028494(v140);
                    }

                    else
                    {
                      v50 = a1[5];
                      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        *&buf[4] = @"managed-hours";
                        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %@ is of unexpected type", buf, 0xCu);
                      }
                    }
                  }

                  sub_100004A34(v122);
                }
              }
            }

            v52 = objc_alloc_init(CTCarrierSpaceUsagePlanItemData);
            [v21 setDataUsage:v52];

            v53 = [v20 objectForKey:@"data-measure-unit"];

            v54 = v53;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v53 length])
            {
              v55 = sub_1011F86D4(v53);
              v56 = [v21 dataUsage];
              [v56 setUnits:v55];
            }

            v57 = [v20 objectForKey:{@"data-capacity", v107}];

            v58 = v57;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v57 length])
            {
              v59 = [v21 dataUsage];
              [v59 setCapacity:v57];
            }

            v60 = [v20 objectForKey:@"max-data-before-throttling"];

            v61 = v60;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v60 length])
            {
              v62 = [v21 dataUsage];
              [v62 setMaxDataBeforeThrottling:v60];
            }

            v63 = [v20 objectForKey:@"data-used"];

            v64 = v63;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v63 length])
            {
              v65 = [v21 dataUsage];
              [v65 setThisDeviceDataUsed:v63];
            }

            v66 = [v20 objectForKey:@"shared-data-used"];

            v67 = v66;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v66 length])
            {
              v68 = [v21 dataUsage];
              [v68 setSharedDataUsed:v66];
            }

            v69 = [v20 objectForKey:@"shared-plan-identifier"];

            v70 = v69;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v69 length])
            {
              v71 = [v21 dataUsage];
              [v71 setSharedPlanIdentifier:v69];
            }

            v72 = objc_alloc_init(CTCarrierSpaceUsagePlanItemMessages);
            [v21 setMessages:v72];

            v73 = [v20 objectForKey:@"messages-capacity"];

            v74 = v73;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v73 length])
            {
              v75 = [v21 messages];
              [v75 setCapacity:v73];
            }

            v76 = [v20 objectForKey:@"messages-used"];

            v77 = v76;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v76 length])
            {
              v78 = [v21 messages];
              [v78 setUsed:v76];
            }

            v79 = objc_alloc_init(CTCarrierSpaceUsagePlanItemVoice);
            [v21 setVoice:v79];

            v80 = [v20 objectForKey:@"voice-minutes-capacity"];

            v81 = v80;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v80 length])
            {
              v82 = [v21 voice];
              [v82 setMinutesCapacity:v80];
            }

            v83 = [v20 objectForKey:@"voice-minutes-used"];

            v84 = v83;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v83 length])
            {
              v85 = [v21 voice];
              [v85 setMinutesUsed:v83];
            }

            v86 = [v20 objectForKey:@"remaining-balance"];

            v87 = v86;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v86 length])
            {
              [v21 setRemainingBalance:v86];
            }

            v88 = [v20 objectForKey:@"throttled"];
            [v21 setThrottled:{objc_msgSend(v88, "BOOLValue")}];

            v89 = [v20 objectForKey:@"last-updated-at"];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v89 length])
            {
              v90 = sub_1011F877C(v89);
              [v21 setLastUpdatedAt:v90];
            }

            [v17 insertObject:v21 atIndex:v18];

            if (++v18 == v127)
            {
              goto LABEL_117;
            }
          }

          v96 = a1[5];
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "#I applicable plans array item is missing", buf, 2u);
          }

LABEL_127:

          v92 = v17;
          v93 = 0;
        }

        else
        {
LABEL_117:
          v91 = v17;
          v92 = v17;
          v93 = v91;
        }

        goto LABEL_129;
      }

      v95 = a1[5];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "domestic usage is of invalid type", buf, 2u);
      }
    }

    else
    {
      v94 = a1[5];
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#I domestic usage is missing", buf, 2u);
      }
    }

    v93 = 0;
LABEL_129:

    [v136 setApplicablePlans:v93];
    [v124 insertObject:v136 atIndex:v131];

    v3 = v131 + 1;
    if ((v131 + 1) == v123)
    {
      goto LABEL_139;
    }
  }

  v103 = a1[5];
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "#I account metrics array item is missing", buf, 2u);
  }

LABEL_144:

  v101 = 0;
  v102 = v124;
LABEL_145:

LABEL_146:
  [v128 setAccountMetrics:v101];

LABEL_147:

  return v128;
}

void sub_10144E2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, std::__shared_weak_count *a26, uint64_t a27, void *a28, void *a29, void *a30, void *a31, uint64_t a32, void *a33, void *a34, void *a35, uint64_t a36, void *a37, void *a38, void *a39, uint64_t a40, void *a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_101022E8C(&a67);

  sub_100004A34(a26);
  _Unwind_Resume(a1);
}

id sub_10144E5E4(uint64_t a1, void *a2)
{
  v53 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = *(a1 + 40);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v45 = [objc_opt_class() description];
      *buf = 136315138;
      v61 = [v45 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "carrier plans info is of invalid type %s", buf, 0xCu);
    }

    v54 = 0;
    goto LABEL_86;
  }

  v48 = v53;
  v54 = objc_alloc_init(CTCarrierSpacePlansInfo);
  v49 = a1;
  v50 = [v48 objectForKey:@"plans-list"];
  if (!v50)
  {
    v38 = *(a1 + 40);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I plan group options info is missing", buf, 2u);
    }

    goto LABEL_74;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = *(a1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "plan group options is of invalid type", buf, 2u);
    }

LABEL_74:
    v40 = 0;
    goto LABEL_82;
  }

  v47 = v50;
  v3 = [v47 count];
  v4 = [NSMutableArray arrayWithCapacity:v3];
  v5 = v4;
  v46 = v3;
  if (!v3)
  {
LABEL_75:
    v40 = v5;
    goto LABEL_81;
  }

  v6 = 0;
  v51 = v4;
  while (1)
  {
    v7 = [v47 objectAtIndexedSubscript:v6];
    if (!v7)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = *(v49 + 40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "plan group info item is of invalid type", buf, 2u);
      }

      goto LABEL_80;
    }

    v8 = v7;
    v59 = objc_alloc_init(CTCarrierSpacePlanGroupInfo);
    v57 = [v8 objectForKey:@"plan-category"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v59 setPlanCategory:{objc_msgSend(v57, "integerValue")}];
    }

    v58 = [v8 objectForKey:@"plan-group-options"];
    if (v58)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v56 = v58;
        v9 = [v56 count];
        v55 = [NSMutableArray arrayWithCapacity:v9];
        v52 = v9;
        if (v9)
        {
          v10 = 0;
          while (1)
          {
            v11 = [v56 objectAtIndexedSubscript:v10];
            if (!v11)
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v36 = *(v49 + 40);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "plan group info item is of invalid type", buf, 2u);
              }

              goto LABEL_63;
            }

            v12 = v11;
            v13 = objc_alloc_init(CTCarrierSpacePlanGroupOptionInfo);
            v14 = [v12 objectForKey:@"plan-id"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 length])
            {
              [v13 setPlanId:v14];
            }

            v15 = [v12 objectForKey:@"plan-label"];

            v16 = v15;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 length])
            {
              [v13 setPlanLabel:v15];
            }

            v17 = [v12 objectForKey:@"plan-value"];

            v18 = v17;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 length])
            {
              [v13 setPlanValue:v17];
            }

            v19 = [v12 objectForKey:@"plan-subscribed"];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 length])
            {
              v20 = v19;
              if ([v20 isEqualToString:@"subscribed"])
              {
                v21 = 0;
              }

              else if ([v20 isEqualToString:@"in-progress"])
              {
                v21 = 2;
              }

              else if ([v20 isEqualToString:@"not-subscribed"])
              {
                v21 = 1;
              }

              else
              {
                v21 = 3;
              }

              [v13 setPlanSubscriptionStatus:v21];
            }

            v22 = [v12 objectForKey:@"plan-purchasable"];
            [v13 setPlanPurchasable:{objc_msgSend(v22, "BOOLValue")}];

            v23 = [v12 objectForKey:@"plan-details-url"];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 length])
            {
              [v13 setPlanDetailsURL:v23];
            }

            v24 = [v12 objectForKey:@"plan-termcond-url"];

            v25 = v24;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v24 length])
            {
              [v13 setPlanTermsURL:v24];
            }

            v26 = [v12 objectForKey:@"plan-purchase-url"];

            v27 = v26;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v26 length])
            {
              [v13 setPlanPurchaseURL:v26];
            }

            v28 = [v12 objectForKey:@"plan-type"];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v28 length])
            {
              v29 = v28;
              if ([v29 isEqualToString:@"prepaid"])
              {
                v30 = 1;
              }

              else if ([v29 isEqualToString:@"postpaid"])
              {
                v30 = 2;
              }

              else
              {
                v30 = 0;
              }

              [v13 setPlanType:v30];
            }

            [v55 insertObject:v13 atIndex:v10];

            if (v52 == ++v10)
            {
              goto LABEL_53;
            }
          }

          v35 = *(v49 + 40);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I plan group info item is missing", buf, 2u);
          }

LABEL_63:

          v32 = 0;
          v31 = v55;
        }

        else
        {
LABEL_53:
          v31 = v55;
          v32 = v55;
        }

        goto LABEL_65;
      }

      v34 = *(v49 + 40);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "plan group options is of invalid type", buf, 2u);
      }
    }

    else
    {
      v33 = *(v49 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I plan group options info is missing", buf, 2u);
      }
    }

    v32 = 0;
LABEL_65:

    [v59 setGroupOptionsList:v32];
    [v51 insertObject:v59 atIndex:v6];

    ++v6;
    v5 = v51;
    if (v6 == v46)
    {
      goto LABEL_75;
    }
  }

  v41 = *(v49 + 40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I plan group info item is missing", buf, 2u);
  }

LABEL_80:

  v40 = 0;
  v5 = v51;
LABEL_81:

LABEL_82:
  [v54 setPlanGroupsList:v40];

  v43 = [v48 objectForKey:@"more-plans-url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v43 length])
  {
    [v54 setMorePlansURL:v43];
  }

LABEL_86:

  return v54;
}

id sub_10144F15C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v25 = [objc_opt_class() description];
      *__p = 136315138;
      *&__p[4] = [v25 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "carrier apps info is of invalid type %s", __p, 0xCu);
    }

    v28 = 0;
    goto LABEL_35;
  }

  v27 = v5;
  v28 = objc_alloc_init(CTCarrierSpaceAppsInfo);
  v6 = [v27 objectForKey:@"apps-list"];
  if (!v6)
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I apps list is missing", __p, 2u);
    }

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "apps list is of invalid type", __p, 2u);
    }

LABEL_23:
    v19 = 0;
    goto LABEL_31;
  }

  v7 = v6;
  v8 = [v7 count];
  v26 = [NSMutableArray arrayWithCapacity:v8];
  if (!v8)
  {
LABEL_24:
    v20 = v26;
    v19 = v26;
    goto LABEL_30;
  }

  v9 = 0;
  while (1)
  {
    v10 = [v7 objectAtIndexedSubscript:v9];
    if (!v10)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "app ID item is of invalid type", buf, 2u);
      }

      goto LABEL_29;
    }

    v11 = v10;
    v12 = v11;
    sub_10000501C(__p, [v11 UTF8String]);
    v13 = sub_1011F8800((a1 + 56), a2, __p);
    v14 = v13;
    if (v31 < 0)
    {
      operator delete(*__p);
      if ((v14 & 1) == 0)
      {
LABEL_12:
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Team ID is not identified", buf, 2u);
        }

        goto LABEL_14;
      }
    }

    else if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }

    [v26 insertObject:v11 atIndex:v9];
LABEL_14:

    if (v8 == ++v9)
    {
      goto LABEL_24;
    }
  }

  v21 = *(a1 + 40);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I app ID item is missing", buf, 2u);
  }

LABEL_29:

  v19 = 0;
  v20 = v26;
LABEL_30:

LABEL_31:
  [v28 setAppsList:v19];

  v23 = [v27 valueForKey:@"apps-url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 length])
  {
    [v28 setAppsURL:v23];
  }

LABEL_35:

  return v28;
}

void sub_10144FB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v11);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_10144FBBC()
{
  DevicePersistentSaveValue(@"CarrierSpaceUsageInfoKey", 0);
  DevicePersistentSaveValue(@"CarrierSpacePlansInfoKey", 0);
  DevicePersistentSaveValue(@"CarrierSpaceAppsInfoKey", 0);

  return DevicePersistentSaveValue(@"CarrierSpaceBackgroundRefreshIntervalHrsKey", 0);
}

void sub_10144FC1C(uint64_t a1)
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

void sub_10144FD20(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*a3)
  {
    v3 = *(a1 + 40);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v4 = "getCarrierSpaceUpdates - response pointer is invalid";
    goto LABEL_8;
  }

  if (**a3)
  {
    operator new();
  }

  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v4 = "getCarrierSpaceUpdates - result body missing";
LABEL_8:
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, v4, buf, 2u);
  }
}

void sub_101450684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v16);

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_101450758(uint64_t a1, id *a2)
{
  if (*a2)
  {
    v30 = *a2;
    v32 = [v30 objectForKeyedSubscript:@"trigger-actions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v32;
      v4 = 0;
      v5 = 0;
      while (v4 < [v3 count])
      {
        v6 = [v3 objectAtIndexedSubscript:v4];
        v7 = [v6 isEqualToString:@"network-usage-update"];
        v8 = [v6 isEqualToString:@"carrier-plans-update"];
        v9 = [v6 isEqualToString:@"carrier-apps-update"];
        v10 = v5 | v7;
        if (v8)
        {
          v10 = v5 | v7 | 2;
        }

        if (v9)
        {
          v5 = v10 | 4;
        }

        else
        {
          v5 = v10;
        }

        ++v4;
      }

      v11 = *(a1 + 80);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 72);
          if (v14)
          {
            (*(*v14 + 24))(v14, v5);
          }

          sub_100004A34(v13);
        }
      }
    }

    v31 = [v30 objectForKeyedSubscript:@"plan-purchase-status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v31;
      v16 = *(a1 + 80);
      if (v16)
      {
        v17 = std::__shared_weak_count::lock(v16);
        if (v17)
        {
          v28 = v17;
          v29 = v15;
          v18 = *(a1 + 72);
          if (v18)
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v19 = v15;
            v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:{16, v28}];
            if (v20)
            {
              v21 = *v36;
              do
              {
                for (i = 0; i != v20; i = i + 1)
                {
                  if (*v36 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = *(*(&v35 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v24 = v23;
                    v25 = [v24 objectForKeyedSubscript:@"plan-id"];
                    v26 = [v24 objectForKeyedSubscript:@"status"];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v27 = v25;
                        sub_10000501C(__p, [v25 UTF8String]);
                        (*(*v18 + 32))(v18, __p, [v26 intValue]);
                        if (v34 < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }
                    }
                  }
                }

                v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
              }

              while (v20);
            }
          }

          sub_100004A34(v28);
          v15 = v29;
        }
      }
    }
  }
}

void sub_101450B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_100004A34(v20);

  _Unwind_Resume(a1);
}

void sub_101450C14(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v29 = 0;
  v30 = 0;
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
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_9:
  (*(*v17 + 8))(&v29, v17, a2);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (v29)
  {
    v19 = [[NSString alloc] initWithBytes:*a3 length:a3[1] - *a3 encoding:4];
    v32[0] = @"oauth-access-token";
    v32[1] = @"carrier-plans";
    v33[0] = v19;
    v20 = objc_alloc_init(NSMutableDictionary);
    if (*(a4 + 23) >= 0)
    {
      v21 = a4;
    }

    else
    {
      v21 = *a4;
    }

    v22 = [NSString stringWithUTF8String:v21];
    [v20 setValue:v22 forKey:@"plan-id"];

    v31 = v20;
    v23 = [NSArray arrayWithObjects:&v31 count:1];
    v33[1] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

    *buf = 0;
    v28 = 0;
    v26 = v24;
    sub_1002A2218(buf, &v26);
    (*(*v29 + 384))(v29, 0);
    (*(*v29 + 144))(v29, buf);
    sub_10000A1EC(&v28);
    sub_10001021C(buf);
  }

  else
  {
    v25 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not get handle to entitlements controller", buf, 2u);
    }
  }

  if (v30)
  {
    sub_100004A34(v30);
  }
}

void sub_101450F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10000A1EC(&a12);
  sub_10001021C(&a11);

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_101450FEC(uint64_t a1@<X0>, int a2@<W1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 3)
  {
    v48 = 5;
    v49[0] = 0;
    v49[1] = 0;
    v50 = 0;
    v5 = **a3;
    switch(v5)
    {
      case 6011:
        v29 = 1;
        break;
      case 6002:
        v29 = 4;
        break;
      case 6000:
        v6 = *(*a3 + 3);
        if (v6)
        {
          if (*v6)
          {
            LOBYTE(v48) = 0;
            sub_100010024(&v44, v6);
            if (v44)
            {
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v41 = v44;
              v43 = [v41 objectForKeyedSubscript:@"carrier-plans"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v7 = v43;
                v42 = v7;
                v8 = [v7 countByEnumeratingWithState:&v53 objects:buf count:16];
                if (v8)
                {
                  v9 = 0;
                  v10 = *v54;
                  for (i = *v54; ; i = *v54)
                  {
                    if (i != v10)
                    {
                      objc_enumerationMutation(v7);
                    }

                    v12 = *(*(&v53 + 1) + 8 * v9);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v13 = [v12 objectForKeyedSubscript:@"plan-id"];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v14 = [v12 objectForKeyedSubscript:@"status"];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          *__p = 0u;
                          v52 = 0u;
                          BYTE8(v52) = [v14 intValue];
                          v15 = v13;
                          sub_100016890(__p, [v13 UTF8String]);
                          v16 = v58;
                          if (v58 >= v59)
                          {
                            v18 = v57;
                            v19 = (v58 - v57) >> 5;
                            v20 = v19 + 1;
                            if ((v19 + 1) >> 59)
                            {
                              sub_1000CE3D4();
                            }

                            v21 = v59 - v57;
                            if ((v59 - v57) >> 4 > v20)
                            {
                              v20 = v21 >> 4;
                            }

                            if (v21 >= 0x7FFFFFFFFFFFFFE0)
                            {
                              v20 = 0x7FFFFFFFFFFFFFFLL;
                            }

                            if (v20)
                            {
                              if (!(v20 >> 59))
                              {
                                operator new();
                              }

                              sub_100013D10();
                            }

                            v22 = (v58 - v57) >> 5;
                            v23 = 32 * v19;
                            *v23 = *__p;
                            *(v23 + 16) = v52;
                            __p[1] = 0;
                            *&v52 = 0;
                            __p[0] = 0;
                            *(v23 + 24) = BYTE8(v52);
                            v24 = v23 - 32 * v22;
                            if (v18 != v16)
                            {
                              v25 = v18;
                              v40 = v24;
                              do
                              {
                                v26 = *v25;
                                *(v24 + 16) = *(v25 + 2);
                                *v24 = v26;
                                *(v25 + 1) = 0;
                                *(v25 + 2) = 0;
                                *v25 = 0;
                                *(v24 + 24) = v25[24];
                                v25 += 32;
                                v24 += 32;
                              }

                              while (v25 != v16);
                              do
                              {
                                if (v18[23] < 0)
                                {
                                  operator delete(*v18);
                                }

                                v18 += 32;
                              }

                              while (v18 != v16);
                              v18 = v57;
                              v24 = v40;
                            }

                            v57 = v24;
                            v58 = (v23 + 32);
                            v59 = 0;
                            if (v18)
                            {
                              operator delete(v18);
                            }

                            v58 = (v23 + 32);
                            if (SBYTE7(v52) < 0)
                            {
                              operator delete(__p[0]);
                            }
                          }

                          else
                          {
                            v17 = *__p;
                            *(v58 + 2) = v52;
                            *v16 = v17;
                            __p[1] = 0;
                            *&v52 = 0;
                            __p[0] = 0;
                            v16[24] = BYTE8(v52);
                            v58 = v16 + 32;
                          }

                          v7 = v42;
                        }
                      }
                    }

                    if (++v9 >= v8)
                    {
                      v8 = [v7 countByEnumeratingWithState:&v53 objects:buf count:16];
                      if (!v8)
                      {
                        break;
                      }

                      v9 = 0;
                    }
                  }
                }

                v34 = v57;
                v33 = v58;
                v45 = v57;
                v46 = v58;
                v32 = v59;
                v47 = v59;
                v35 = &v57;
              }

              else
              {
                v32 = 0;
                v33 = 0;
                v34 = 0;
                v35 = &v45;
              }

              *v35 = 0;
              v35[1] = 0;
              v35[2] = 0;

              __p[0] = &v57;
              sub_10003CA58(__p);
            }

            else
            {
              v32 = 0;
              v33 = 0;
              v34 = 0;
            }

            v36 = v49[0];
            if (v49[0])
            {
              v37 = v49[1];
              v38 = v49[0];
              if (v49[1] != v49[0])
              {
                do
                {
                  v39 = *(v37 - 9);
                  v37 -= 4;
                  if (v39 < 0)
                  {
                    operator delete(*v37);
                  }
                }

                while (v37 != v36);
                v38 = v49[0];
              }

              v49[1] = v36;
              operator delete(v38);
            }

            v49[0] = v34;
            v49[1] = v33;
            v50 = v32;
            v46 = 0;
            v47 = 0;
            v45 = 0;
            *buf = &v45;
            sub_10003CA58(buf);
            sub_10001021C(&v44);
            *a4 = v48;
            *(a4 + 8) = *v49;
            *(a4 + 24) = v50;
            v49[1] = 0;
            v50 = 0;
            v49[0] = 0;
            goto LABEL_57;
          }

          v30 = *(a1 + 40);
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          *buf = 0;
          v31 = "#N Received success status with no response body";
        }

        else
        {
          v30 = *(a1 + 40);
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
LABEL_55:
            v29 = 2;
            break;
          }

          *buf = 0;
          v31 = "#N Received invalid arguments in update account response";
        }

        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
        goto LABEL_55;
      default:
        v29 = 3;
        break;
    }

    *a4 = v29;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
LABEL_57:
    *buf = v49;
    sub_10003CA58(buf);
    return;
  }

  v28 = *(a1 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = sub_100A38E30(a2);
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#N Received error in update account response: %s", buf, 0xCu);
  }

  *a4 = 3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
}

void sub_1014515E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char *a11, uint64_t a12, void *a13, void *a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  __p = &a39;
  sub_10003CA58(&__p);
  sub_10001021C(&a15);
  __p = a11;
  sub_10003CA58(&__p);
  _Unwind_Resume(a1);
}

void sub_101451774(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101451848);
  __cxa_rethrow();
}

void sub_1014517B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101451808(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101451848(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101451894(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3CAF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014518E8(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_101451974(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3CB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014519F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3CB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101451A74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3CBE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101451AD4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 4));
  v22 = 0;
  v23 = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
    v11 = v10[3];
    v12 = v10[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v13 = 1;
LABEL_9:
  (*(*v11 + 8))(&v22, v11, *(v1 + 4));
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (v22)
  {
    v14 = +[NSMutableDictionary dictionary];
    v15 = +[NSMutableArray array];
    v16 = v15;
    v17 = *(v1 + 8);
    if (v17)
    {
      [v15 addObject:@"network-usage"];
      v17 = *(v1 + 8);
    }

    if ((v17 & 2) != 0)
    {
      [v16 addObject:@"carrier-plans"];
      v17 = *(v1 + 8);
    }

    if ((v17 & 4) != 0)
    {
      [v16 addObject:@"carrier-apps"];
    }

    [v14 setObject:v16 forKey:@"sub-actions"];
    *buf = 0;
    v21 = 0;
    v19 = v14;
    v24 = 0;
    sub_100010180(&v24, &v19);
    *buf = v24;
    v24 = 0;
    sub_10001021C(&v24);
    if (*(v1 + 3) == 1)
    {
      (*(*v22 + 384))(v22, 0);
    }

    (*(*v22 + 136))(v22, buf);
    sub_10000A1EC(&v21);
    sub_10001021C(buf);
  }

  else
  {
    v18 = *v3;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N Could not get handle to entitlements controller", buf, 2u);
    }
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  operator delete();
}

void sub_101451DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_10000A1EC(&a12);
  sub_10001021C(&a11);

  if (a15)
  {
    sub_100004A34(a15);
  }

  operator delete();
}

void sub_101451E7C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3CC38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101451EDC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10145250C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, char a16, char *a17, uint64_t a18, dispatch_object_t object, dispatch_object_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1001A8F78(&a16, a17);
  v30 = a14[13];
  if (v30)
  {
    sub_100004A34(v30);
  }

  v31 = a14[11];
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = a14[9];
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = a14[7];
  if (v33)
  {
    sub_100004A34(v33);
  }

  ctu::OsLogLogger::~OsLogLogger((a14 + 5));
  sub_1000C0544(a13);
  CTXPCSubscriptionManagerInterface::~CTXPCSubscriptionManagerInterface(a14);
  operator delete();
}

uint64_t sub_1014527A4(uint64_t a1)
{
  v2 = (a1 + 32);
  v4 = (a1 + 56);
  sub_1001A8E64(&v4);
  v4 = v2;
  sub_1001A8E64(&v4);
  return sub_101454200(a1);
}

uint64_t sub_1014527F4(uint64_t a1)
{
  sub_1001A8F78(a1 + 32, *(a1 + 40));

  return sub_101454280(a1);
}

void sub_101452834(uint64_t a1)
{
  *a1 = off_101F3CC88;
  if (*(a1 + 440) == 1)
  {
    sub_1001704B0(a1 + 416, *(a1 + 424));
  }

  PersonalitiesTracker::~PersonalitiesTracker((a1 + 248));
  sub_1014527A4(a1 + 168);
  sub_1001A8F78(a1 + 144, *(a1 + 152));
  sub_101454280(a1 + 112);
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  CTXPCSubscriptionManagerInterface::~CTXPCSubscriptionManagerInterface(a1);
}

void sub_101452904(uint64_t a1)
{
  sub_101452834(a1);

  operator delete();
}

void sub_10145293C(uint64_t a1, dispatch_object_t object)
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

uint64_t sub_101452A3C(uint64_t a1, char *a2, char a3)
{
  if ((a3 & 1) != 0 || *(*(a1 + 400) + 24) == 1)
  {
    v5 = (a1 + 144);
    v6 = *(a1 + 144);
    *(&v100 + 1) = 0;
    *&v101[0] = 0;
    *&v100 = &v100 + 8;
    v7 = (a1 + 152);
    if (v6 != (a1 + 152))
    {
      v8 = 0;
      v9 = (&v100 + 8);
      while (1)
      {
        v10 = *(v6 + 8);
        v11 = &v100 + 8;
        if (v9 == (&v100 + 8))
        {
          goto LABEL_267;
        }

        v12 = v8;
        v13 = &v100 + 8;
        if (v8)
        {
          do
          {
            v11 = v12;
            v12 = *(v12 + 1);
          }

          while (v12);
        }

        else
        {
          do
          {
            v11 = *(v13 + 2);
            v70 = *v11 == v13;
            v13 = v11;
          }

          while (v70);
        }

        if (*(v11 + 8) < v10)
        {
LABEL_267:
          if (v8)
          {
            v14 = v11;
          }

          else
          {
            v14 = &v100;
          }

          if (!*(v14 + 1))
          {
LABEL_22:
            memset(__str, 0, 24);
            sub_101454300();
          }
        }

        else
        {
          if (!v8)
          {
            goto LABEL_22;
          }

          while (1)
          {
            while (1)
            {
              v15 = v8;
              v16 = *(v8 + 8);
              if (v16 <= v10)
              {
                break;
              }

              v8 = *v15;
              if (!*v15)
              {
                goto LABEL_22;
              }
            }

            if (v16 >= v10)
            {
              break;
            }

            v8 = *(v15 + 1);
            if (!v8)
            {
              goto LABEL_22;
            }
          }
        }

        v17 = v6[1];
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
          do
          {
            v18 = v6[2];
            v70 = *v18 == v6;
            v6 = v18;
          }

          while (!v70);
        }

        if (v18 == v7)
        {
          break;
        }

        v8 = *(&v100 + 1);
        v9 = v100;
        v6 = v18;
      }

      v19 = v100;
      if (v100 != (&v100 + 8))
      {
        while (1)
        {
          v20 = *(a1 + 400);
          v21 = *v20;
          v22 = v20[1];
          if (v21 != v22)
          {
            while ((*v21)[2].__r_.__value_.__s.__data_[1] || HIDWORD((*v21)[2].__r_.__value_.__r.__words[0]) != *(v19 + 8))
            {
              v21 += 2;
              if (v21 == v22)
              {
                goto LABEL_47;
              }
            }
          }

          if (v21 == v22)
          {
            break;
          }

          v24 = *v21;
          v23 = v21[1];
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v24 || !v24[2].__r_.__value_.__s.__data_[16] || (v24[2].__r_.__value_.__s.__data_[17] & 1) != 0 || !isReal())
          {
            goto LABEL_48;
          }

          v25 = v24[2].__r_.__value_.__s.__data_[18];
          std::string::operator=((v19 + 232), v24 + 1);
          if (*(*(a1 + 400) + 24) == 1)
          {
            *(v19 + 256) = v24[2].__r_.__value_.__s.__data_[16] == 2;
            *(v19 + 257) = (v25 & 1) == 0;
          }

          if (v24[2].__r_.__value_.__s.__data_[14])
          {
            v26 = 1;
            v27 = 1;
          }

          else
          {
            v26 = v24[2].__r_.__value_.__s.__data_[15];
            v27 = v24[4].__r_.__value_.__s.__data_[0] | v26;
          }

          *(v19 + 258) = v26;
          *(v19 + 259) = v27 & 1;
          if (!v23)
          {
            goto LABEL_52;
          }

LABEL_51:
          sub_100004A34(v23);
LABEL_52:
          v28 = *(v19 + 1);
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
              v29 = *(v19 + 2);
              v70 = *v29 == v19;
              v19 = v29;
            }

            while (!v70);
          }

          v19 = v29;
          if (v29 == (&v100 + 8))
          {
            goto LABEL_62;
          }
        }

LABEL_47:
        v23 = 0;
LABEL_48:
        memset(__str, 0, 24);
        std::string::operator=((v19 + 232), __str);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        *(v19 + 64) = 256;
        if (!v23)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

LABEL_62:
    v30 = *(a1 + 448);
    isValidSimSlot = subscriber::isValidSimSlot();
    v32 = v100;
    if (v100 != (&v100 + 8))
    {
      v33 = isValidSimSlot;
      do
      {
        isValidSimSlot = capabilities::ct::supportsCellRadio(isValidSimSlot);
        v34 = isValidSimSlot ^ 1;
        if (*(v32 + 8) == v30)
        {
          v35 = 2;
        }

        else
        {
          v35 = 1;
        }

        if ((isValidSimSlot & v33) != 0)
        {
          v34 = v35;
        }

        *(v32 + 56) = v34;
        v36 = *(v32 + 1);
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = *(v32 + 2);
            v70 = *v37 == v32;
            v32 = v37;
          }

          while (!v70);
        }

        v32 = v37;
      }

      while (v37 != (&v100 + 8));
    }

    v38 = *(a1 + 452);
    v39 = subscriber::isValidSimSlot();
    v40 = v100;
    if (v100 != (&v100 + 8))
    {
      v41 = v39;
      do
      {
        v39 = capabilities::ct::supportsVoiceCall(v39);
        v42 = v39 ^ 1;
        if (*(v40 + 8) == v38)
        {
          v43 = 2;
        }

        else
        {
          v43 = 1;
        }

        if ((v39 & v41) != 0)
        {
          v42 = v43;
        }

        *(v40 + 57) = v42;
        v44 = *(v40 + 1);
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = *(v40 + 2);
            v70 = *v45 == v40;
            v40 = v45;
          }

          while (!v70);
        }

        v40 = v45;
      }

      while (v45 != (&v100 + 8));
      v40 = v100;
    }

    if (v40 != (&v100 + 8))
    {
      do
      {
        v103 = 0u;
        memset(v104, 0, 25);
        memset(__str, 0, sizeof(__str));
        *v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        *__p = 0u;
        *&v109 = 0;
        std::string::operator=(v40 + 2, __str);
        std::string::operator=(v40 + 3, &__str[24]);
        std::string::operator=(v40 + 4, v104);
        *(v40 + 120) = v104[24];
        std::string::operator=((v40 + 8), v105);
        std::string::operator=((v40 + 152), (&v106 + 8));
        std::string::operator=((v40 + 11), __p);
        if (SBYTE7(v109) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v107) < 0)
        {
          operator delete(*(&v106 + 1));
        }

        if (SBYTE7(v106) < 0)
        {
          operator delete(v105[0]);
        }

        if ((v104[23] & 0x80000000) != 0)
        {
          operator delete(*v104);
        }

        if (SHIBYTE(v103) < 0)
        {
          operator delete(*&__str[24]);
        }

        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        v46 = *(a1 + 400);
        v47 = *v46;
        v48 = *(v46 + 8);
        if (v47 != v48)
        {
          while (*(*v47 + 49) || *(*v47 + 52) != *(v40 + 8))
          {
            v47 += 2;
            if (v47 == v48)
            {
              goto LABEL_128;
            }
          }
        }

        if (v47 != v48)
        {
          v49 = *v47;
          v50 = v47[1];
          if (v50)
          {
            atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v49 && *(v49 + 64) && (*(v49 + 65) & 1) == 0 && isReal())
          {
            (*(**(a1 + 96) + 184))(__str);
            std::string::operator=(v40 + 2, __str);
            std::string::operator=(v40 + 3, &__str[24]);
            std::string::operator=(v40 + 4, v104);
            *(v40 + 120) = v104[24];
            std::string::operator=((v40 + 8), v105);
            std::string::operator=((v40 + 152), (&v106 + 8));
            std::string::operator=((v40 + 11), __p);
            if (SBYTE7(v109) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v107) < 0)
            {
              operator delete(*(&v106 + 1));
            }

            if (SBYTE7(v106) < 0)
            {
              operator delete(v105[0]);
            }

            if ((v104[23] & 0x80000000) != 0)
            {
              operator delete(*v104);
            }

            if (SHIBYTE(v103) < 0)
            {
              operator delete(*&__str[24]);
            }

            if ((__str[23] & 0x80000000) != 0)
            {
              operator delete(*__str);
            }
          }

          if (v50)
          {
            sub_100004A34(v50);
          }
        }

LABEL_128:
        v51 = *(v40 + 1);
        if (v51)
        {
          do
          {
            v52 = v51;
            v51 = *v51;
          }

          while (v51);
        }

        else
        {
          do
          {
            v52 = *(v40 + 2);
            v70 = *v52 == v40;
            v40 = v52;
          }

          while (!v70);
        }

        v40 = v52;
      }

      while (v52 != (&v100 + 8));
    }

    if (rest::operator!=())
    {
      if (v5 != &v100)
      {
        v53 = v100;
        if (*(a1 + 160))
        {
          v54 = *v5;
          *v5 = v7;
          (*v7)[2] = 0;
          *v7 = 0;
          *(a1 + 160) = 0;
          if (*(v54 + 8))
          {
            v55 = *(v54 + 8);
          }

          else
          {
            v55 = v54;
          }

          *__str = a1 + 144;
          *&__str[8] = v55;
          *&__str[16] = v55;
          if (!v55 || (*&__str[8] = sub_1000685CC(v55), v53 == (&v100 + 8)))
          {
            v60 = v53;
          }

          else
          {
            do
            {
              *(v55 + 32) = *(v53 + 8);
              *(v55 + 40) = *(v53 + 10);
              std::string::operator=((v55 + 48), v53 + 2);
              std::string::operator=((v55 + 72), v53 + 3);
              std::string::operator=((v55 + 96), v53 + 4);
              *(v55 + 120) = *(v53 + 120);
              std::string::operator=((v55 + 128), (v53 + 8));
              std::string::operator=((v55 + 152), (v53 + 152));
              std::string::operator=((v55 + 176), (v53 + 11));
              std::string::operator=((v55 + 200), (v53 + 200));
              *(v55 + 224) = *(v53 + 28);
              std::string::operator=((v55 + 232), (v53 + 232));
              *(v55 + 256) = *(v53 + 64);
              v56 = *v7;
              v57 = (a1 + 152);
              v58 = (a1 + 152);
              if (*v7)
              {
                do
                {
                  while (1)
                  {
                    v57 = v56;
                    if (*(*&__str[16] + 32) >= *(v56 + 8))
                    {
                      break;
                    }

                    v56 = *v56;
                    v58 = v57;
                    if (!*v57)
                    {
                      goto LABEL_148;
                    }
                  }

                  v56 = v56[1];
                }

                while (v56);
                v58 = v57 + 1;
              }

LABEL_148:
              sub_1000070DC((a1 + 144), v57, v58, *&__str[16]);
              v55 = *&__str[8];
              *&__str[16] = *&__str[8];
              if (*&__str[8])
              {
                *&__str[8] = sub_1000685CC(*&__str[8]);
              }

              v59 = *(v53 + 1);
              if (v59)
              {
                do
                {
                  v60 = v59;
                  v59 = *v59;
                }

                while (v59);
              }

              else
              {
                do
                {
                  v60 = *(v53 + 2);
                  v70 = *v60 == v53;
                  v53 = v60;
                }

                while (!v70);
              }

              if (!v55)
              {
                break;
              }

              v53 = v60;
            }

            while (v60 != (&v100 + 8));
          }

          sub_101456008(__str);
          v53 = v60;
        }

        if (v53 != (&v100 + 8))
        {
          memset(__str, 0, 24);
          sub_101454300();
        }
      }

      v61 = *(a1 + 136);
      if (v61)
      {
        (*(*v61 + 48))(v61, a1 + 144);
      }

      v62 = *(a1 + 40);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *__str = 136315394;
        *&__str[4] = a2;
        *&__str[12] = 2048;
        *&__str[14] = *&v101[0];
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I Subscription info updated (%s), size: %zu", __str, 0x16u);
      }

      sub_101453B8C(a1);
    }

    sub_1001A8F78(&v100, *(&v100 + 1));
    if (a3 & 1) != 0 || (*(*(a1 + 400) + 24))
    {
      goto LABEL_170;
    }
  }

  result = capabilities::ct::supportsThumperService(a1);
  if (result)
  {
LABEL_170:
    memset(v101, 0, sizeof(v101));
    v100 = 0u;
    v64 = *(a1 + 400);
    v65 = *v64;
    v66 = v64[1];
    if (*v64 == v66)
    {
LABEL_201:
      v74 = *(a1 + 448);
      v75 = subscriber::isValidSimSlot();
      v77 = *(&v100 + 1);
      v76 = v100;
      if (v100 != *(&v100 + 1))
      {
        v78 = v75;
        do
        {
          v75 = capabilities::ct::supportsCellRadio(v75);
          v79 = v75 ^ 1;
          if (*v76 == v74)
          {
            v80 = 2;
          }

          else
          {
            v80 = 1;
          }

          if ((v75 & v78) != 0)
          {
            v79 = v80;
          }

          v76[46] = v79;
          v76 += 56;
        }

        while (v76 != v77);
      }

      v81 = *(a1 + 452);
      v82 = capabilities::ct::supportsVoiceCall(v75);
      if (v82)
      {
        v82 = subscriber::isValidSimSlot();
        v83 = v82;
      }

      else
      {
        v83 = 0;
      }

      v85 = *(&v100 + 1);
      v84 = v100;
      if (v100 != *(&v100 + 1))
      {
        if (v83)
        {
          v86 = 1;
        }

        else
        {
          v86 = 2;
        }

        do
        {
          v87 = v86;
          if (*v84)
          {
            v82 = capabilities::ct::supportsVoiceCall(v82);
            v87 = v82 ^ 1;
            v88 = *v84 == v81 ? 2 : 1;
            if ((v82 & v83) != 0)
            {
              v87 = v88;
            }
          }

          *(v84 + 188) = v87;
          v84 += 224;
        }

        while (v84 != v85);
        v85 = *(&v100 + 1);
        v84 = v100;
      }

      for (; v84 != v85; v84 += 224)
      {
        v89 = *(a1 + 400);
        v90 = *v89;
        v91 = *(v89 + 8);
        if (*v89 != v91)
        {
          do
          {
            if (sub_100071DF8((*v90 + 24), (v84 + 192)))
            {
              goto LABEL_229;
            }

            v90 += 2;
          }

          while (v90 != v91);
          v90 = v91;
LABEL_229:
          v91 = *(v89 + 8);
        }

        if (v90 != v91)
        {
          v93 = *v90;
          v92 = v90[1];
          if (v92)
          {
            atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v93)
          {
            v103 = 0u;
            memset(v104, 0, 25);
            memset(__str, 0, sizeof(__str));
            *v105 = 0u;
            v106 = 0u;
            v107 = 0u;
            *__p = 0u;
            *&v109 = 0;
            std::string::operator=((v84 + 8), __str);
            std::string::operator=((v84 + 32), &__str[24]);
            std::string::operator=((v84 + 56), v104);
            *(v84 + 80) = v104[24];
            std::string::operator=((v84 + 88), v105);
            std::string::operator=((v84 + 112), (&v106 + 8));
            std::string::operator=((v84 + 136), __p);
            if (SBYTE7(v109) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v107) < 0)
            {
              operator delete(*(&v106 + 1));
            }

            if (SBYTE7(v106) < 0)
            {
              operator delete(v105[0]);
            }

            if ((v104[23] & 0x80000000) != 0)
            {
              operator delete(*v104);
            }

            if (SHIBYTE(v103) < 0)
            {
              operator delete(*&__str[24]);
            }

            if ((__str[23] & 0x80000000) != 0)
            {
              operator delete(*__str);
            }

            if (*(v93 + 64) && (*(v93 + 65) & 1) == 0 && isReal())
            {
              (*(**(a1 + 96) + 184))(__str);
              std::string::operator=((v84 + 8), __str);
              std::string::operator=((v84 + 32), &__str[24]);
              std::string::operator=((v84 + 56), v104);
              *(v84 + 80) = v104[24];
              std::string::operator=((v84 + 88), v105);
              std::string::operator=((v84 + 112), (&v106 + 8));
              std::string::operator=((v84 + 136), __p);
              if (SBYTE7(v109) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v107) < 0)
              {
                operator delete(*(&v106 + 1));
              }

              if (SBYTE7(v106) < 0)
              {
                operator delete(v105[0]);
              }

              if ((v104[23] & 0x80000000) != 0)
              {
                operator delete(*v104);
              }

              if (SHIBYTE(v103) < 0)
              {
                operator delete(*&__str[24]);
              }

              if ((__str[23] & 0x80000000) != 0)
              {
                operator delete(*__str);
              }
            }
          }

          if (v92)
          {
            sub_100004A34(v92);
          }
        }
      }

      sub_10000501C(&v95, a2);
      v96 = v100;
      v97 = *&v101[0];
      v100 = 0uLL;
      v98 = *(v101 + 8);
      v99 = *(&v101[1] + 1);
      memset(v101, 0, sizeof(v101));
      *&__str[24] = 0;
      operator new();
    }

    v67 = (a1 + 152);
    while (1)
    {
      v68 = *v65;
      if ((a3 & 1) == 0 && v68[2].__r_.__value_.__s.__data_[0] != 1 || !v68[2].__r_.__value_.__s.__data_[16] || (v68[2].__r_.__value_.__s.__data_[17] & 1) != 0 || !isReal())
      {
        goto LABEL_185;
      }

      v69 = (*v65)[2].__r_.__value_.__s.__data_[1];
      if ((*v65)[2].__r_.__value_.__s.__data_[1])
      {
        v70 = v69 == 1 || v69 == 3;
        if (!v70)
        {
          goto LABEL_185;
        }

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        *__p = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        *v105 = 0u;
        v103 = 0u;
        memset(v104, 0, sizeof(v104));
        memset(__str, 0, sizeof(__str));
        BYTE9(v113) = 1;
        std::string::operator=(&v110, *v65);
        std::string::operator=(&v112, *v65 + 1);
        sub_101453DD4(&v100, __str);
      }

      else
      {
        v71 = *v67;
        if (!*v67)
        {
          goto LABEL_185;
        }

        v72 = HIDWORD((*v65)[2].__r_.__value_.__r.__words[0]);
        v73 = a1 + 152;
        do
        {
          if (*(v71 + 32) >= v72)
          {
            v73 = v71;
          }

          v71 = *(v71 + 8 * (*(v71 + 32) < v72));
        }

        while (v71);
        if (v73 == v67 || v72 < *(v73 + 32))
        {
          goto LABEL_185;
        }

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        *__p = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        *v105 = 0u;
        v103 = 0u;
        memset(v104, 0, sizeof(v104));
        memset(__str, 0, sizeof(__str));
        *__str = *(v73 + 40);
        sub_100DFECD0(&__str[8], v73 + 48);
        if (*(v73 + 223) < 0)
        {
          sub_100005F2C(&v110, *(v73 + 200), *(v73 + 208));
        }

        else
        {
          v110 = *(v73 + 200);
          *&v111 = *(v73 + 216);
        }

        *(&v111 + 1) = *(v73 + 224);
        if (*(v73 + 255) < 0)
        {
          sub_100005F2C(&v112, *(v73 + 232), *(v73 + 240));
        }

        else
        {
          v112 = *(v73 + 232);
          *&v113 = *(v73 + 248);
        }

        DWORD2(v113) = *(v73 + 256);
        sub_101453DD4(&v100, __str);
      }

      sub_101293424(__str);
LABEL_185:
      v65 += 2;
      if (v65 == v66)
      {
        goto LABEL_201;
      }
    }
  }

  return result;
}

void sub_101453A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  sub_100FB0A00(v57 + 8);
  sub_1012933DC(&a21);
  _Unwind_Resume(a1);
}

void sub_101453B8C(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = (a1 + 152);
  if (v1 != (a1 + 152))
  {
    v3 = a1;
    v22 = 0;
    v21 = (a1 + 152);
    do
    {
      v4 = *(v3 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = asStringBool(*(v1 + 256));
        v6 = asStringBool(*(v1 + 257));
        v7 = asStringBool(*(v1 + 258));
        v8 = asStringBool(*(v1 + 259));
        v9 = v1 + 25;
        if (*(v1 + 223) < 0)
        {
          v9 = *v9;
        }

        asString();
        if (v24 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v11 = v1[29];
        v12 = *(v1 + 255);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = v1[30];
        }

        if (v13 >= 0)
        {
          v11 = (v1 + 29);
        }

        if (v12)
        {
          v14 = v11;
        }

        else
        {
          v14 = "<invalid>";
        }

        v15 = asString();
        v16 = asString();
        *buf = 134220290;
        v26 = ++v22;
        v27 = 2080;
        v28 = v5;
        v29 = 2080;
        v30 = v6;
        v31 = 2080;
        v32 = v7;
        v33 = 2080;
        v34 = v8;
        v35 = 2080;
        v36 = v9;
        v37 = 2080;
        v38 = p_p;
        v39 = 2080;
        v40 = v14;
        v41 = 2080;
        v42 = v15;
        v43 = 2080;
        v44 = v16;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I c%zu: sim_ready:%s good:%s hidden:%s dataonly:%s uuid:%s label:%s personality:%s data_preferred:%s voice_preferred:%s", buf, 0x66u);
        if (v24 < 0)
        {
          operator delete(__p);
        }

        v3 = a1;
        v2 = v21;
      }

      v17 = v1[1];
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
        do
        {
          v18 = v1[2];
          v19 = *v18 == v1;
          v1 = v18;
        }

        while (!v19);
      }

      v1 = v18;
    }

    while (v18 != v2);
  }
}

void sub_101453DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101453DD4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 5);
    if ((v7 + 1) > 0x124924924924924)
    {
      sub_1000CE3D4();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 5);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x92492492492492)
    {
      v10 = 0x124924924924924;
    }

    else
    {
      v10 = v9;
    }

    v23 = a1;
    if (v10)
    {
      sub_1014544E0(v10);
    }

    v19 = 0;
    v20 = 224 * v7;
    v22 = 0;
    sub_101454414(224 * v7, a2);
    v6 = 224 * v7 + 224;
    v21 = v6;
    v11 = *a1;
    v12 = a1[1];
    v13 = *a1 - v12;
    v14 = v20 + v13;
    if (*a1 != v12)
    {
      v15 = 0;
      v16 = *a1;
      v17 = v20 + v13;
      do
      {
        sub_101454414(v17, v16);
        v16 += 224;
        v17 += 224;
        v15 -= 224;
      }

      while (v16 != v12);
      do
      {
        sub_101293424(v11);
        v11 += 224;
      }

      while (v11 != v12);
      v11 = *a1;
      v6 = v21;
    }

    *a1 = v14;
    a1[1] = v6;
    v18 = a1[2];
    a1[2] = v22;
    v21 = v11;
    v22 = v18;
    v19 = v11;
    v20 = v11;
    result = sub_10145453C(&v19);
  }

  else
  {
    result = sub_101454414(a1[1], a2);
    v6 = v4 + 224;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_101453F68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10145453C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101453FA8(uint64_t a1)
{
  v2 = (a1 + 32);
  v4 = (a1 + 56);
  sub_1001A8E64(&v4);
  v4 = v2;
  sub_1001A8E64(&v4);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_101454004(uint64_t result, int a2)
{
  if (*(result + 448) != a2 && *(*(result + 400) + 24) == 1)
  {
    return sub_101452A3C(result, "data preferred", 0);
  }

  return result;
}

uint64_t sub_101454034(uint64_t result, int a2)
{
  if (*(result + 452) != a2 && *(*(result + 400) + 24) == 1)
  {
    return sub_101452A3C(result, "voice preferred", 0);
  }

  return result;
}

uint64_t sub_101454064(uint64_t result, int a2)
{
  if (*(result + 456) != a2)
  {
    return (*(**(result + 80) + 16))();
  }

  return result;
}

uint64_t *sub_10145409C(uint64_t a1, int a2)
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

uint64_t sub_1014541B4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_101293424(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_101454200(uint64_t a1)
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

uint64_t sub_101454280(uint64_t a1)
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

void sub_1014543D8(_Unwind_Exception *a1)
{
  if (*(v2 + 223) < 0)
  {
    operator delete(*(v2 + 200));
  }

  sub_100FB0A00(v2 + 48);
  sub_1014541B4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101454414(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 160;
  result = sub_100DFECD0(a1 + 8, a2 + 8);
  if (*(a2 + 183) < 0)
  {
    result = sub_100005F2C(v4, *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v6 = *(a2 + 160);
    *(v4 + 16) = *(a2 + 176);
    *v4 = v6;
  }

  *(a1 + 184) = *(a2 + 184);
  if (*(a2 + 215) < 0)
  {
    result = sub_100005F2C((a1 + 192), *(a2 + 192), *(a2 + 200));
  }

  else
  {
    v7 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v7;
  }

  *(a1 + 216) = *(a2 + 216);
  return result;
}

void sub_1014544B4(_Unwind_Exception *a1)
{
  if (*(v1 + 183) < 0)
  {
    operator delete(*v2);
  }

  sub_100FB0A00(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1014544E0(unint64_t a1)
{
  if (a1 < 0x124924924924925)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10145453C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 224;
    sub_101293424(i - 224);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_101454590(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014545E4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101454624(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101454650(ServiceManager::Service *this)
{
  *this = off_101F3CDB0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1014546AC(ServiceManager::Service *this)
{
  *this = off_101F3CDB0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10145472C@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_101454770(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    sub_10145293C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10145293C(v4, 0);
}

void sub_101454800(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1014548E0(uint64_t result, int a2, ServiceStage *this)
{
  if (a2 == 2)
  {
    v3 = *(result + 8);
    ServiceStage::holdOffStage(&group[1], this);
    v4 = *(v3 + 16);
    if (v4)
    {
      if (std::__shared_weak_count::lock(v4))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }

  return result;
}

uint64_t *sub_1014549FC(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 64));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_101454A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101454A9C(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v10, *(v1 + 48));
  v3 = v1 + 64;
  ctu::RestModule::connect();
  if (v11)
  {
    sub_100004A34(v11);
  }

  v4 = (v1 + 112);
  *buf = off_101F3CE30;
  v16 = v1 + 64;
  v18 = buf;
  if (buf != (v1 + 112))
  {
    v5 = *(v1 + 136);
    if (v5 == v4)
    {
      v13 = v1 + 64;
      v14 = 0;
      __p = off_101F3CE30;
      v18 = 0;
      (*(*v5 + 24))(v5, buf);
      (*(**(v1 + 136) + 32))(*(v1 + 136));
      *(v1 + 136) = 0;
      v18 = buf;
      (*(__p + 3))(&__p, v1 + 112);
      (*(__p + 4))(&__p);
    }

    else
    {
      *(v1 + 112) = off_101F3CE30;
      *(v1 + 120) = v3;
      v18 = v5;
    }

    *(v1 + 136) = v4;
  }

  sub_101454280(buf);
  v6 = *(v1 + 136);
  if (v6)
  {
    (*(*v6 + 48))(v6, v1 + 144);
  }

  v7 = (v1 + 168);
  *buf = off_101F3CEC0;
  v16 = v1 + 64;
  v18 = buf;
  if (buf != (v1 + 168))
  {
    v8 = *(v1 + 192);
    if (v8 == v7)
    {
      v13 = v1 + 64;
      v14 = 0;
      __p = off_101F3CEC0;
      v18 = 0;
      (*(*v8 + 24))(v8, buf);
      (*(**(v1 + 192) + 32))(*(v1 + 192));
      *(v1 + 192) = 0;
      v18 = buf;
      (*(__p + 3))(&__p, v1 + 168);
      (*(__p + 4))(&__p);
    }

    else
    {
      *(v1 + 168) = off_101F3CEC0;
      *(v1 + 176) = v3;
      v18 = v8;
    }

    *(v1 + 192) = v7;
  }

  sub_101454200(buf);
  v9 = *(v1 + 192);
  if (v9)
  {
    (*(*v9 + 48))(v9, v1 + 200);
  }

  sub_10000501C(&__p, "/cc/props/assigned_sim_labels");
  *buf = off_101F3CF50;
  v16 = v1 + 416;
  v17 = v1;
  v18 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  sub_10000501C(&__p, "/cc/prefs-nb/user_default_voice_slot");
  operator new();
}

void sub_1014550D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014551E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3CE30;
  a2[1] = v2;
  return result;
}

void sub_101455214(int a1, rest *this)
{
  v5 = 0;
  rest::write_rest_value(&v5, this, this);
  sub_10000501C(&__p, "/cc/props/subscription_info");
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

void sub_1014552B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1014552FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014553B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3CEC0;
  a2[1] = v2;
  return result;
}

void sub_1014553E4(int a1, rest *this)
{
  v5 = 0;
  rest::write_rest_value(&v5, this, this);
  sub_10000501C(&__p, "/cc/props/active_subscriptions");
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

void sub_101455488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1014554CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10145558C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3CF50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014555BC(uint64_t a1, xpc_object_t *a2)
{
  v4 = *(a1 + 8);
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    if (*(v4 + 24))
    {
      sub_1001704B0(v4, *(v4 + 8));
      *(v4 + 24) = 0;
    }
  }

  else
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      *(&v8 + 1) = 0;
      v9 = 0;
      *&v8 = &v8 + 8;
      sub_10084A8C4(v4, &v8);
      sub_1001704B0(&v8, *(&v8 + 1));
    }

    sub_10084A940(v4, a2);
  }

  v5 = *(a1 + 16);
  if (*(v5 + 440) == 1)
  {
    v6 = *(v5 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v5 + 432);
      LODWORD(v8) = 134217984;
      *(&v8 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Labels updated with %zu elems", &v8, 0xCu);
    }

    sub_101452A3C(v5, "label changed", 0);
  }
}

uint64_t sub_10145571C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014557E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3CFD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10145581C(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_101455914(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014559D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3D050;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014559FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*(v3 + 400) + 8) - **(v3 + 400)) >> 4;
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Personalities updated with %zd elems", &v7, 0xCu);
  }

  return sub_101452A3C(v3, "personalities changed", a2[1] == *a2);
}

uint64_t sub_101455AD0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101455B98(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3D0D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101455BD0(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_101455CC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101455D90(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3D150;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101455DC8(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_101455EC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101455F0C(uint64_t **a1)
{
  v4 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 160);
    *buf = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Subscription info initialized, size: %zu", buf, 0xCu);
  }

  sub_101453B8C(v1);
  operator delete();
}

uint64_t sub_101456008(uint64_t a1)
{
  sub_1001A8F78(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1001A8F78(*a1, v2);
  }

  return a1;
}

uint64_t sub_101456060(uint64_t a1)
{
  *a1 = off_101F3D1D0;
  v2 = (a1 + 40);
  v4 = (a1 + 64);
  sub_1001A8E64(&v4);
  v4 = v2;
  sub_1001A8E64(&v4);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1014560D8(uint64_t a1)
{
  *a1 = off_101F3D1D0;
  v2 = (a1 + 40);
  v3 = (a1 + 64);
  sub_1001A8E64(&v3);
  v3 = v2;
  sub_1001A8E64(&v3);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_101456290(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101F3D1D0;
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

  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  sub_1014566D0(a2 + 40, *(a1 + 40), *(a1 + 48), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 48) - *(a1 + 40)) >> 5));
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return sub_1014566D0(a2 + 64, *(a1 + 64), *(a1 + 72), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 72) - *(a1 + 64)) >> 5));
}

void sub_101456360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001A8E64(va);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  _Unwind_Resume(a1);
}

void sub_101456390(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = (a1 + 64);
  sub_1001A8E64(&v3);
  v3 = v2;
  sub_1001A8E64(&v3);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_1014563E8(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = (a1 + 64);
  sub_1001A8E64(&v3);
  v3 = v2;
  sub_1001A8E64(&v3);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

void sub_101456448(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C(__p, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *__p = *(a1 + 16);
    __p[2] = *(a1 + 32);
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v14 = *(a1 + 64);
  v5 = *(a1 + 80);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v6 = *a2;
  v15 = v5;
  v16 = v6;
  v7 = a2 + 1;
  v8 = a2[1];
  v9 = a2[2];
  v17[0] = v8;
  v17[1] = v9;
  if (v9)
  {
    *(v8 + 16) = v17;
    *a2 = v7;
    *v7 = 0;
    a2[2] = 0;
  }

  else
  {
    v16 = v17;
  }

  v10 = *(v4 + 16);
  if (v10)
  {
    if (std::__shared_weak_count::lock(v10))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101456684(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014566D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_101456754(result, a4);
  }

  return result;
}

void sub_101456734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001A8E64(&a9);
  _Unwind_Resume(a1);
}

void sub_101456754(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    sub_1014544E0(a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_1014567A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      v8 = a3 + v6;
      *(a3 + v6) = *(a1 + v6);
      sub_100DFECD0(a3 + v6 + 8, a1 + v6 + 8);
      if (*(a1 + v6 + 183) < 0)
      {
        sub_100005F2C((v8 + 160), *(v7 + 160), *(a1 + v6 + 168));
      }

      else
      {
        v9 = *(v7 + 160);
        *(v8 + 176) = *(v7 + 176);
        *(v8 + 160) = v9;
      }

      v10 = a3 + v6;
      *(a3 + v6 + 184) = *(v7 + 184);
      v11 = a1 + v6;
      if (*(v7 + 215) < 0)
      {
        sub_100005F2C((v10 + 192), *(v11 + 192), *(v11 + 200));
      }

      else
      {
        v12 = *(v11 + 192);
        *(v10 + 208) = *(v11 + 208);
        *(v10 + 192) = v12;
      }

      *(a3 + v6 + 216) = *(v7 + 216);
      v6 += 224;
    }

    while (v7 + 224 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_101456894(_Unwind_Exception *a1)
{
  sub_100FB0A00(v1 + v2 + 8);
  if (v2)
  {
    v4 = v1 + v2 - 224;
    v5 = -v2;
    do
    {
      v4 = sub_101293424(v4) - 224;
      v5 += 224;
    }

    while (v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1014568F0(uint64_t *a1)
{
  v1 = *a1;
  v43 = a1;
  v44 = v1;
  v2 = *v1;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v3 = *(v1 + 80);
  if (v3 != (v1 + 88))
  {
    do
    {
      v4 = *(v1 + 32);
      v5 = *(v1 + 40);
      if (*(v3 + 55) < 0)
      {
        sub_100005F2C(&__p, v3[4], v3[5]);
      }

      else
      {
        __p = *(v3 + 2);
        v53 = v3[6];
      }

      if (v4 != v5)
      {
        while (!sub_100071DF8((v4 + 192), &__p))
        {
          v4 += 224;
          if (v4 == v5)
          {
            v4 = v5;
            break;
          }
        }
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(__p);
      }

      if (v4 == *(v1 + 40))
      {
        v63 = 0u;
        v64 = 0u;
        memset(v62, 0, sizeof(v62));
        memset(v61, 0, sizeof(v61));
        v59 = 0u;
        memset(v60, 0, sizeof(v60));
        memset(v58, 0, sizeof(v58));
        memset(buf, 0, sizeof(buf));
        BYTE9(v64) = 1;
        std::string::operator=(v62, (v3 + 7));
        LODWORD(buf[0]) = *(v3 + 20);
        std::string::operator=(&v63, (v3 + 4));
        (*(**(v2 + 96) + 184))(&__str);
        std::string::operator=(&buf[1], &__str);
        std::string::operator=(v58, &v46);
        std::string::operator=(&v58[24], &v47);
        LOBYTE(v60[0]) = v48;
        std::string::operator=(&v60[1], &v49);
        std::string::operator=(v61, &v50);
        std::string::operator=(&v61[1], &v51);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        sub_101453DD4(&v54, buf);
        sub_101293424(buf);
      }

      else
      {
        sub_101453DD4(&v54, v4);
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != (v1 + 88));
  }

  if ((v1 + 56) != &v54)
  {
    sub_101457050((v1 + 56), v54, v55, 0x6DB6DB6DB6DB6DB7 * ((v55 - v54) >> 5));
  }

  if (rest::operator!=())
  {
    if (v2 + 200 != v1 + 32)
    {
      sub_101457050((v2 + 200), *(v1 + 32), *(v1 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(v1 + 40) - *(v1 + 32)) >> 5));
      sub_101457050((v2 + 224), *(v1 + 56), *(v1 + 64), 0x6DB6DB6DB6DB6DB7 * ((*(v1 + 64) - *(v1 + 56)) >> 5));
    }

    v9 = *(v2 + 192);
    if (v9)
    {
      (*(*v9 + 48))(v9, v2 + 200);
    }

    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (v1 + 8);
      if (*(v1 + 31) < 0)
      {
        v11 = *v11;
      }

      v12 = 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 208) - *(v2 + 200)) >> 5);
      v13 = 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 232) - *(v2 + 224)) >> 5);
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = v11;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v12;
      HIWORD(buf[2]) = 2048;
      buf[3] = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Active subscriptions updated (%s), size: %zu (%zu)", buf, 0x20u);
    }

    v14 = *(v2 + 200);
    v15 = *(v2 + 208);
    if (v14 != v15)
    {
      v16 = 0;
      v17 = v14 + 215;
      v42 = *(v2 + 208);
      do
      {
        v18 = *(v2 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v17 - 55;
          if (*(v17 - 32) < 0)
          {
            v19 = *v19;
          }

          v20 = v2;
          asString();
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          v22 = *v17;
          v23 = (v22 & 0x80u) != 0;
          if ((v22 & 0x80u) != 0)
          {
            v22 = *(v17 - 15);
          }

          v24 = (v17 - 23);
          if (v23)
          {
            v24 = *(v17 - 23);
          }

          if (v22)
          {
            v25 = v24;
          }

          else
          {
            v25 = "<invalid>";
          }

          v26 = asString();
          v27 = asString();
          ++v16;
          LODWORD(buf[0]) = 134219266;
          *(buf + 4) = v16;
          WORD2(buf[1]) = 2080;
          *(&buf[1] + 6) = v19;
          HIWORD(buf[2]) = 2080;
          buf[3] = p_str;
          *v58 = 2080;
          *&v58[2] = v25;
          *&v58[10] = 2080;
          *&v58[12] = v26;
          *&v58[20] = 2080;
          *&v58[22] = v27;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I a%zu: uuid:%s label:%s personality:%s data_preferred:%s voice_preferred:%s", buf, 0x3Eu);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v2 = v20;
          v15 = v42;
        }

        v28 = v17 + 9;
        v17 += 224;
      }

      while (v28 != v15);
    }

    v29 = *(v2 + 224);
    v30 = *(v2 + 232);
    if (v29 != v30)
    {
      v31 = 0;
      v32 = v29 + 215;
      do
      {
        v33 = *(v2 + 40);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v32 - 55;
          if (*(v32 - 32) < 0)
          {
            v34 = *v34;
          }

          asString();
          v35 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v35 = __str.__r_.__value_.__r.__words[0];
          }

          v36 = *v32;
          v37 = (v36 & 0x80u) != 0;
          if ((v36 & 0x80u) != 0)
          {
            v36 = *(v32 - 15);
          }

          v38 = (v32 - 23);
          if (v37)
          {
            v38 = *(v32 - 23);
          }

          ++v31;
          v8 = v36 == 0;
          v39 = "<invalid>";
          if (!v8)
          {
            v39 = v38;
          }

          LODWORD(buf[0]) = 134218754;
          *(buf + 4) = v31;
          WORD2(buf[1]) = 2080;
          *(&buf[1] + 6) = v34;
          HIWORD(buf[2]) = 2080;
          buf[3] = v35;
          *v58 = 2080;
          *&v58[2] = v39;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I x%zu: uuid:%s label:%s personality:%s", buf, 0x2Au);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        v40 = v32 + 9;
        v32 += 224;
      }

      while (v40 != v30);
    }
  }

  buf[0] = &v54;
  sub_1001A8E64(buf);
  sub_101456FBC(&v44);
  return sub_1000049E0(&v43);
}

void sub_101456F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char *a45, char a46)
{
  a45 = &a42;
  sub_1001A8E64(&a45);
  sub_101456FBC(&a15);
  sub_1000049E0(&a14);
  _Unwind_Resume(a1);
}

uint64_t *sub_101456FBC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000DD0AC(v1 + 80, *(v1 + 88));
    v2 = (v1 + 56);
    sub_1001A8E64(&v2);
    v2 = (v1 + 32);
    sub_1001A8E64(&v2);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_101457050(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - *a1) >> 5) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = v9;
      if (v10 != v9)
      {
        do
        {
          v10 = sub_101293424(v10 - 224);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x124924924924924)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 5);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x92492492492492)
      {
        v14 = 0x124924924924924;
      }

      else
      {
        v14 = v13;
      }

      sub_101456754(a1, v14);
    }

    sub_1000CE3D4();
  }

  v15 = a1[1] - v9;
  if (0x6DB6DB6DB6DB6DB7 * (v15 >> 5) >= a4)
  {
    v17 = sub_1014571E8(a2, a3, v9);
      ;
    }

    a1[1] = v17;
  }

  else
  {
    sub_1014571E8(a2, a2 + v15, v9);
    result = sub_1014567A8(a2 + v15, a3, a1[1]);
    a1[1] = result;
  }

  return result;
}

uint64_t sub_1014571E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      std::string::operator=((a3 + 8), (v5 + 8));
      std::string::operator=((a3 + 32), (v5 + 32));
      std::string::operator=((a3 + 56), (v5 + 56));
      *(a3 + 80) = *(v5 + 80);
      std::string::operator=((a3 + 88), (v5 + 88));
      std::string::operator=((a3 + 112), (v5 + 112));
      std::string::operator=((a3 + 136), (v5 + 136));
      std::string::operator=((a3 + 160), (v5 + 160));
      *(a3 + 184) = *(v5 + 184);
      std::string::operator=((a3 + 192), (v5 + 192));
      *(a3 + 216) = *(v5 + 216);
      a3 += 224;
      v5 += 224;
    }

    while (v5 != a2);
  }

  return a3;
}

void *sub_1014572B4(void *a1)
{
  *a1 = off_101F3D260;
  v2 = a1[11];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_10145732C(void *a1)
{
  sub_1014572B4(a1);

  operator delete();
}

void sub_10145742C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if (!v10)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v10)
  {
    goto LABEL_3;
  }

  sub_100004A34(v10);
  if (v11)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

uint64_t PowerObserver::PowerObserver(uint64_t a1, void *a2, NSObject **a3)
{
  v6 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(&v10, v6, LogGroupName);
  sub_101457534((a1 + 8), a3, &v10);
  ctu::OsLogContext::~OsLogContext(&v10);
  *a1 = off_101F3D260;
  v8 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void *sub_101457534(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10145759C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void PowerObserver::bootstrap(PowerObserver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    sub_100013CC4();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v4);
  ctu::power::manager::get(&v22, v6);
  v7 = v22;
  v22 = 0uLL;
  v8 = *(this + 9);
  *(this + 4) = v7;
  if (!v8)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_100004A34(v8);
  if (*(&v22 + 1))
  {
    sub_100004A34(*(&v22 + 1));
  }

  if (!*(this + 8))
  {
LABEL_9:
    __TUAssertTrigger();
  }

LABEL_10:
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_10007F528;
  aBlock[3] = &unk_101F3D270;
  aBlock[4] = v3;
  v21 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = _Block_copy(aBlock);
  v10 = *(this + 3);
  *&v22 = 1;
  *(&v22 + 1) = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  if (v9)
  {
    v11 = _Block_copy(v9);
    v23 = v11;
    *&v24 = 21571;
    HIBYTE(v25) = 2;
    _Block_release(v9);
  }

  else
  {
    v11 = 0;
    v23 = 0uLL;
    *&v24 = 21571;
    HIBYTE(v25) = 2;
  }

  v16[0] = 1;
  v16[1] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  if (v11)
  {
    v12 = _Block_copy(v11);
  }

  else
  {
    v12 = 0;
  }

  v16[2] = v12;
  v16[3] = 0;
  v17 = v24;
  v18 = v25;
  ctu::power::manager::registerListener();
  v13 = *buf;
  memset(buf, 0, sizeof(buf));
  v14 = *(this + 11);
  *(this + 5) = v13;
  if (v14)
  {
    sub_100004A34(v14);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  sub_1014579A8(v16);
  if (!*(this + 10))
  {
    __TUAssertTrigger();
  }

  v15 = *(this + 5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I PowerObserver bootstrap", buf, 2u);
  }

  sub_1014579A8(&v22);
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_101457844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, char a25)
{
  sub_1014579A8(&a25);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v25);
  _Unwind_Resume(a1);
}

uint64_t sub_101457898(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014578B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void PowerObserver::start(PowerObserver *this)
{
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I PowerObserver start", v2, 2u);
  }
}

void PowerObserver::shutdown(PowerObserver *this)
{
  v2 = *(this + 11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I PowerObserver shutdown", v5, 2u);
  }
}

uint64_t sub_1014579A8(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    dispatch_release(v4);
  }

  return a1;
}

void sub_101457AD4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101457BA8);
  __cxa_rethrow();
}

void sub_101457B14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101457B68(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101457BA8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101457BF4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3D3A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_101457C48(void *a1)
{
  *a1 = off_101F3D3F8;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_101457CA0(void *a1)
{
  *a1 = off_101F3D3F8;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_101457D9C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F3D3F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101457DF4(void *a1)
{
  sub_100861FC0(a1 + 8);

  operator delete(a1);
}

void sub_101457E30(uint64_t a1, char *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (*(a1 + 8))
      {
        **(a1 + 24) = v4;
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_101457E90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101457EDC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_101457F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v5 = [CTEmergencyMode convertFromEmergencyMode:a2];
  [v5 setIsEmergencySetup:1];
  v4 = *(a1 + 8);
  v7[0] = off_101F3D538;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v4, v7);
  sub_10002B210(v7);
}

void sub_10145802C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B210(va);

  _Unwind_Resume(a1);
}

void sub_101458058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v5 = [CTEmergencyMode convertFromEmergencyMode:a2];
  [v5 setIsEmergencySetup:0];
  v4 = *(a1 + 8);
  v7[0] = off_101F3D5B8;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v4, v7);
  sub_10002B210(v7);
}

void sub_10145811C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B210(va);

  _Unwind_Resume(a1);
}

void sub_101458148(CTXPCEmergencyNotificationInterface *this)
{
  *this = off_101F3D478;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCEmergencyNotificationInterface::~CTXPCEmergencyNotificationInterface(this);
}

void sub_1014581A4(CTXPCEmergencyNotificationInterface *this)
{
  *this = off_101F3D478;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCEmergencyNotificationInterface::~CTXPCEmergencyNotificationInterface(this);

  operator delete();
}

void sub_10145827C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014582B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014582F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101458320(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014583D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3D538;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101458404(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder cfUuid:**(a1 + 8)];
  [v4 emergencyModeChanged:v3 mode:**(a1 + 16)];
}

uint64_t sub_1014584A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101458560(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3D5B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101458590(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder cfUuid:**(a1 + 8)];
  [v4 emergencyModeChanged:v3 mode:**(a1 + 16)];
}

uint64_t sub_10145862C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101458678(void *a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "wfmgr");
  sub_10145872C(a1 + 1, "WiFiManager", QOS_CLASS_UTILITY, &v6);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = &off_101F3D638;
  v4 = a2[1];
  a1[6] = *a2;
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void *sub_10145872C(void *a1, const char *a2, dispatch_qos_class_t a3, const OsLogContext *a4)
{
  object = 0;
  sub_1000B9CE0(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger(&object, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), &object);
  ctu::OsLogLogger::~OsLogLogger(&object);
  return a1;
}

void sub_101458794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  ctu::OsLogLogger::~OsLogLogger(&object);
  sub_1000C0544(v10);
  _Unwind_Resume(a1);
}

WiFiManagerInterface *sub_1014587CC(WiFiManagerInterface *this)
{
  *this = &off_101F3D638;
  v2 = *(this + 7);
  if (v2)
  {
    sub_100004A34(v2);
  }

  WiFiManagerInterface::~WiFiManagerInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_101458834(WiFiManagerInterface *a1)
{
  sub_1014587CC(a1);

  operator delete();
}

void sub_101458874(uint64_t a1, NSObject **a2)
{
  v3 = *a2;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  (*(*a1 + 72))(a1, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_1014588FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_101458920(uint64_t a1, int a2, ServiceStage *this)
{
  if (!a2)
  {
    ServiceStage::holdOffStage(&group, this);
    (*(*a1 + 80))(a1, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }
}

void sub_1014589A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014589D4(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_101FCAA90, memory_order_acquire) & 1) == 0)
  {
    v2 = a1;
    v3 = __cxa_guard_acquire(&qword_101FCAA90);
    a1 = v2;
    if (v3)
    {
      __cxa_atexit(sub_1010D9714, &qword_101FCAA98, &_mh_execute_header);
      __cxa_guard_release(&qword_101FCAA90);
      a1 = v2;
    }
  }

  v1 = unk_101FCAAA0;
  *a1 = qword_101FCAA98;
  a1[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_101458AFC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = *(a1 + 47);
  if (v3 < 0)
  {
    v3 = *(a1 + 32);
  }

  if (v3)
  {
    memset(&v97, 0, sizeof(v97));
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    *v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v77 = 0u;
    sub_10081E64C(&v77, (a1 + 24), 8);
    __dst = 0uLL;
    v96 = 0;
    v4 = 1;
    v5 = a2->__r_.__value_.__s.__data_[0];
    v6 = a2[1].__r_.__value_.__s.__data_[0];
    while (1)
    {
      while (1)
      {
        std::ios_base::getloc((&v77 + *(v77 - 24)));
        v7 = std::locale::use_facet(v98, &std::ctype<char>::id);
        (v7->__vftable[2].~facet_0)(v7, 10);
        std::locale::~locale(v98);
        v8 = sub_10081E7D0(&v77);
        if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
        {
          v70 = a2;
          *a2 = v97;
          memset(&v97, 0, sizeof(v97));
          LOBYTE(v6) = 1;
          goto LABEL_110;
        }

        memset(&v94, 0, sizeof(v94));
        std::ios_base::getloc((&v77 + *(v77 - 24)));
        v9 = std::locale::use_facet(v98, &std::ctype<char>::id);
        (v9->__vftable[2].~facet_0)(v9, 10);
        std::locale::~locale(v98);
        v10 = sub_10081E7D0(&v77);
        if ((*(v10 + *(*v10 - 24) + 32) & 5) == 0)
        {
          break;
        }

        v6 = 0;
        v5 = 0;
        v11 = 0;
        if ((*(&v94.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_30;
        }

LABEL_8:
        if (!v11)
        {
          goto LABEL_109;
        }
      }

      v12 = (v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v94 : v94.__r_.__value_.__r.__words[0];
      v13 = (v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v94.__r_.__value_.__r.__words[2]) : v94.__r_.__value_.__l.__size_;
      v14 = (v12 + v13);
      v74 = v6;
      if (v13)
      {
        while (1)
        {
          v15 = v12->__r_.__value_.__s.__data_[0];
          if (v15 < 0 ? __maskrune(v12->__r_.__value_.__s.__data_[0], 0x200uLL) : _DefaultRuneLocale.__runetype[v15] & 0x200)
          {
            break;
          }

          v12 = (v12 + 1);
          if (!--v13)
          {
            goto LABEL_22;
          }
        }

        v17 = v4;
        if (v13 == 1)
        {
          v14 = v12;
        }

        else
        {
          v28 = 1;
          v14 = v12;
          do
          {
            v29 = v12->__r_.__value_.__s.__data_[v28];
            if (v29 < 0)
            {
              v30 = __maskrune(v12->__r_.__value_.__s.__data_[v28], 0x200uLL);
            }

            else
            {
              v30 = _DefaultRuneLocale.__runetype[v29] & 0x200;
            }

            if (!v30)
            {
              v14->__r_.__value_.__s.__data_[0] = v12->__r_.__value_.__s.__data_[v28];
              v14 = (v14 + 1);
            }

            ++v28;
          }

          while (v13 != v28);
        }
      }

      else
      {
LABEL_22:
        v17 = v4;
      }

      v18 = &v94 + HIBYTE(v94.__r_.__value_.__r.__words[2]);
      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v94;
      }

      else
      {
        v18 = (v94.__r_.__value_.__r.__words[0] + v94.__r_.__value_.__l.__size_);
        v19 = v94.__r_.__value_.__r.__words[0];
      }

      std::string::erase(&v94, v14 - v19, v18 - v14);
      memset(&__p, 0, sizeof(__p));
      std::ios_base::getloc((&v77 + *(v77 - 24)));
      v4 = v17;
      v20 = std::locale::use_facet(v98, &std::ctype<char>::id);
      (v20->__vftable[2].~facet_0)(v20, 10);
      std::locale::~locale(v98);
      v21 = sub_10081E7D0(&v77);
      v22 = *(v21 + *(*v21 - 24) + 32) & 5;
      v11 = v22 == 0;
      if (v22)
      {
        break;
      }

      v73 = v5;
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

      v25 = (p_p + size);
      if (size)
      {
        while (1)
        {
          v26 = p_p->__r_.__value_.__s.__data_[0];
          if (v26 < 0 ? __maskrune(p_p->__r_.__value_.__s.__data_[0], 0x200uLL) : _DefaultRuneLocale.__runetype[v26] & 0x200)
          {
            break;
          }

          p_p = (p_p + 1);
          if (!--size)
          {
            goto LABEL_65;
          }
        }

        if (size == 1)
        {
          v25 = p_p;
        }

        else
        {
          v31 = 1;
          v25 = p_p;
          do
          {
            v32 = p_p->__r_.__value_.__s.__data_[v31];
            if (v32 < 0)
            {
              v33 = __maskrune(p_p->__r_.__value_.__s.__data_[v31], 0x200uLL);
            }

            else
            {
              v33 = _DefaultRuneLocale.__runetype[v32] & 0x200;
            }

            if (!v33)
            {
              v25->__r_.__value_.__s.__data_[0] = p_p->__r_.__value_.__s.__data_[v31];
              v25 = (v25 + 1);
            }

            ++v31;
          }

          while (size != v31);
        }
      }

LABEL_65:
      v34 = &__p + HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &__p;
      }

      else
      {
        v34 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
        v35 = __p.__r_.__value_.__r.__words[0];
      }

      std::string::erase(&__p, v25 - v35, v34 - v25);
      v36 = v97.__r_.__value_.__l.__size_;
      v5 = v73;
      v37 = v17;
      if (v97.__r_.__value_.__l.__size_ >= v97.__r_.__value_.__r.__words[2])
      {
        v41 = 0xCCCCCCCCCCCCCCCDLL * ((v97.__r_.__value_.__l.__size_ - v97.__r_.__value_.__r.__words[0]) >> 4);
        v42 = v41 + 1;
        v6 = v74;
        if (v41 + 1 > 0x333333333333333)
        {
          sub_1000CE3D4();
        }

        if (0x999999999999999ALL * ((v97.__r_.__value_.__r.__words[2] - v97.__r_.__value_.__r.__words[0]) >> 4) > v42)
        {
          v42 = 0x999999999999999ALL * ((v97.__r_.__value_.__r.__words[2] - v97.__r_.__value_.__r.__words[0]) >> 4);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v97.__r_.__value_.__r.__words[2] - v97.__r_.__value_.__r.__words[0]) >> 4) >= 0x199999999999999)
        {
          v43 = 0x333333333333333;
        }

        else
        {
          v43 = v42;
        }

        v98[4].__locale_ = &v97;
        if (v43)
        {
          sub_101459820(v43);
        }

        v44 = 16 * ((v97.__r_.__value_.__l.__size_ - v97.__r_.__value_.__r.__words[0]) >> 4);
        v98[0].__locale_ = 0;
        v98[1].__locale_ = v44;
        v98[3].__locale_ = 0;
        *v44 = v37;
        v45 = __dst;
        *(v44 + 24) = v96;
        *(v44 + 8) = v45;
        v96 = 0;
        __dst = 0uLL;
        v46 = *&v94.__r_.__value_.__l.__data_;
        *(v44 + 48) = *(&v94.__r_.__value_.__l + 2);
        *(v44 + 32) = v46;
        memset(&v94, 0, sizeof(v94));
        v47 = *&__p.__r_.__value_.__l.__data_;
        *(v44 + 72) = *(&__p.__r_.__value_.__l + 2);
        *(v44 + 56) = v47;
        memset(&__p, 0, sizeof(__p));
        v98[2].__locale_ = (80 * v41 + 80);
        v48 = 80 * v41 + v97.__r_.__value_.__r.__words[0] - v97.__r_.__value_.__l.__size_;
        sub_101459878(v97.__r_.__value_.__l.__data_, v97.__r_.__value_.__l.__size_, v48);
        v49 = v97.__r_.__value_.__r.__words[0];
        v50 = v97.__r_.__value_.__r.__words[2];
        v97.__r_.__value_.__r.__words[0] = v48;
        locale = v98[2].__locale_;
        *&v97.__r_.__value_.__r.__words[1] = *&v98[2].__locale_;
        v98[2].__locale_ = v49;
        v98[3].__locale_ = v50;
        v98[0].__locale_ = v49;
        v98[1].__locale_ = v49;
        sub_1014599DC(v98);
        v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v40 = locale;
      }

      else
      {
        v38 = 0;
        *v97.__r_.__value_.__l.__size_ = v17;
        v39 = v96;
        *(v36 + 8) = __dst;
        *(v36 + 24) = v39;
        *(v36 + 48) = *(&v94.__r_.__value_.__l + 2);
        *(v36 + 72) = *(&__p.__r_.__value_.__l + 2);
        v96 = 0;
        __dst = 0uLL;
        *(v36 + 32) = *&v94.__r_.__value_.__l.__data_;
        memset(&v94, 0, sizeof(v94));
        *(v36 + 56) = *&__p.__r_.__value_.__l.__data_;
        memset(&__p, 0, sizeof(__p));
        v40 = v36 + 80;
        v6 = v74;
      }

      v97.__r_.__value_.__l.__size_ = v40;
      v4 = (v37 + 1);
      if (v38 < 0)
      {
        goto LABEL_28;
      }

LABEL_29:
      if ((*(&v94.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_8;
      }

LABEL_30:
      operator delete(v94.__r_.__value_.__l.__data_);
      if (!v11)
      {
LABEL_109:
        v70 = a2;
        a2->__r_.__value_.__s.__data_[0] = v5;
LABEL_110:
        v70[1].__r_.__value_.__s.__data_[0] = v6;
        if (SHIBYTE(v96) < 0)
        {
          operator delete(__dst);
        }

        if (SBYTE7(v83) < 0)
        {
          operator delete(v82[0]);
        }

        std::locale::~locale(&v78 + 1);
        std::istream::~istream();
        std::ios::~ios();
        v71 = &v97;
LABEL_118:
        *&v77 = v71;
        sub_101459A2C(&v77);
        return;
      }
    }

    v6 = 0;
    v5 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_29;
    }

LABEL_28:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_29;
  }

  v51 = *(a1 + 8);
  if (v51)
  {
    v52 = 0uLL;
    memset(v98, 0, 24);
    v53 = *(v51 + 8);
    if (v53 == *(v51 + 16))
    {
      v69 = 0;
    }

    else
    {
      v54 = a2;
      do
      {
        std::to_string(&v97, *v53);
        if (v53[31] < 0)
        {
          sub_100005F2C(&__dst, *(v53 + 1), *(v53 + 2));
        }

        else
        {
          v55 = *(v53 + 8);
          v96 = *(v53 + 3);
          __dst = v55;
        }

        if (v53[55] < 0)
        {
          sub_100005F2C(&v94, *(v53 + 4), *(v53 + 5));
        }

        else
        {
          v94 = *(v53 + 32);
        }

        v56 = v98[1].__locale_;
        if (v98[1].__locale_ >= v98[2].__locale_)
        {
          v59 = 0xCCCCCCCCCCCCCCCDLL * ((v98[1].__locale_ - v98[0].__locale_) >> 4);
          v60 = v59 + 1;
          if (v59 + 1 > 0x333333333333333)
          {
            sub_1000CE3D4();
          }

          if (0x999999999999999ALL * ((v98[2].__locale_ - v98[0].__locale_) >> 4) > v60)
          {
            v60 = 0x999999999999999ALL * ((v98[2].__locale_ - v98[0].__locale_) >> 4);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v98[2].__locale_ - v98[0].__locale_) >> 4) >= 0x199999999999999)
          {
            v61 = 0x333333333333333;
          }

          else
          {
            v61 = v60;
          }

          *&v79 = v98;
          if (v61)
          {
            sub_101459820(v61);
          }

          v62 = 16 * ((v98[1].__locale_ - v98[0].__locale_) >> 4);
          *&v77 = 0;
          *(&v77 + 1) = v62;
          *(&v78 + 1) = 0;
          *v62 = *v53;
          v63 = *&v97.__r_.__value_.__l.__data_;
          *(v62 + 24) = *(&v97.__r_.__value_.__l + 2);
          *(v62 + 8) = v63;
          memset(&v97, 0, sizeof(v97));
          v64 = __dst;
          *(v62 + 48) = v96;
          *(v62 + 32) = v64;
          v96 = 0;
          __dst = 0uLL;
          v65 = *&v94.__r_.__value_.__l.__data_;
          *(v62 + 72) = *(&v94.__r_.__value_.__l + 2);
          *(v62 + 56) = v65;
          memset(&v94, 0, sizeof(v94));
          *&v78 = 80 * v59 + 80;
          v66 = (80 * v59 + v98[0].__locale_ - v98[1].__locale_);
          sub_101459878(v98[0].__locale_, v98[1].__locale_, v62 + v98[0].__locale_ - v98[1].__locale_);
          v67 = v98[0].__locale_;
          v68 = v98[2].__locale_;
          v98[0].__locale_ = v66;
          v75 = v78;
          *&v98[1].__locale_ = v78;
          *&v78 = v67;
          *(&v78 + 1) = v68;
          *&v77 = v67;
          *(&v77 + 1) = v67;
          sub_1014599DC(&v77);
          v98[1].__locale_ = v75;
          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          *v98[1].__locale_ = *v53;
          v57 = v97.__r_.__value_.__r.__words[2];
          *(v56 + 8) = *&v97.__r_.__value_.__l.__data_;
          *(v56 + 3) = v57;
          memset(&v97, 0, sizeof(v97));
          *(v56 + 2) = __dst;
          *(v56 + 6) = v96;
          __dst = 0uLL;
          v96 = 0;
          v58 = *&v94.__r_.__value_.__l.__data_;
          *(v56 + 9) = *(&v94.__r_.__value_.__l + 2);
          *(v56 + 56) = v58;
          v98[1].__locale_ = (v56 + 80);
        }

        if (SHIBYTE(v96) < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        v53 += 56;
      }

      while (v53 != *(v51 + 16));
      v52 = *&v98[0].__locale_;
      v69 = v98[2].__locale_;
      a2 = v54;
    }

    *&a2->__r_.__value_.__l.__data_ = v52;
    a2->__r_.__value_.__r.__words[2] = v69;
    memset(v98, 0, 24);
    a2[1].__r_.__value_.__s.__data_[0] = 1;
    v71 = v98;
    goto LABEL_118;
  }

  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
}
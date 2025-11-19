void sub_10129CB58(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10129CE5C(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10129D1F8(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10129D53C(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10129D8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(a1);
}

void sub_10129E024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, int a10, char a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    sub_100004A34(a27);
  }

  if ((a11 & 1) == 0)
  {
    sub_100004A34(a9);
  }

  _Unwind_Resume(a1);
}

void sub_10129E588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

void sub_10129E99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(a1);
}

void sub_10129EE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

void sub_10129F210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(a1);
}

void sub_10129F5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(a1);
}

void sub_10129F9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(a1);
}

void sub_10129FA90(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

const void **sub_10129FAE8(const void **result, const void **a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = 0;
      *(a3 + 8) = v5[1];
      v5[1] = 0;
      *(a3 + 16) = 0;
      *(a3 + 16) = v5[2];
      v5[2] = 0;
      v5 += 3;
      a3 += 24;
    }

    while (v5 != a2);
    do
    {
      sub_10002D760(v4 + 2);
      result = sub_10002D760(v4 + 1);
      v4 += 3;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_10129FB70(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_10002D760((i - 8));
    sub_10002D760((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10129FBD4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10129FC28(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

const void **sub_10129FC28(const void **result, const void **a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 3)
  {
    sub_10002D760(i - 1);
    result = sub_10002D760(i - 2);
  }

  v3[1] = a2;
  return result;
}

void sub_10129FCB8(uint64_t a1)
{

  operator delete();
}

id sub_10129FD80(uint64_t a1, void *a2)
{
  *a2 = off_101F24D78;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_10129FDD8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_10129FE14(id *a1)
{

  operator delete(a1);
}

void sub_10129FE58(uint64_t a1, unsigned int **a2, uint64_t *a3)
{
  v4 = *a3;
  if (a2[1] == *a2)
  {
    v10 = 0;
  }

  else
  {
    v6 = objc_opt_new();
    v8 = *a2;
    for (i = a2[1]; v8 != i; v8 += 10)
    {
      v9 = [[CTTransportKey alloc] initWithKey:*(v8 + 2) epki:*(v8 + 1) forIdx:*v8 toReplaceEpki:*(v8 + 3) isLastResort:*(v8 + 32)];
      [v6 addObject:v9];
    }

    v10 = v6;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    [v11 getLogContext];
    v12 = v16;
  }

  else
  {
    v12 = 0;
    v15 = 0;
    v16 = 0;
  }

  ctu::OsLogContext::~OsLogContext(&v15);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "processed getTransportKeysToUpdate", &v15, 2u);
  }

  v13 = *(a1 + 16);
  v14 = [[CTTransportKeysUpdate alloc] initWith:v10 sps:v4];
  (*(v13 + 16))(v13, v14, 0);
}

uint64_t sub_10129FFF0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24DE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012A003C(uint64_t a1)
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

void sub_1012A00F0(uint64_t a1)
{

  operator delete();
}

id sub_1012A01B8(uint64_t a1, void *a2)
{
  *a2 = off_101F24E08;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1012A0210(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1012A024C(id *a1)
{

  operator delete(a1);
}

void sub_1012A0290(uint64_t a1, const __CFUUID **a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = [CTSatelliteMessagingProvisioning alloc];
  v9 = sub_100185C20(v5);
  v10 = [v8 initWithID:v9 data:v6 sps:v7];

  v11 = *(a1 + 8);
  if (v11)
  {
    [v11 getLogContext];
    v12 = v14;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  ctu::OsLogContext::~OsLogContext(&v13);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "processed getSatelliteMsgCfgToUpdate", &v13, 2u);
  }

  (*(*(a1 + 16) + 16))();
}

uint64_t sub_1012A03AC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24E78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012A03F8(uint64_t a1)
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

void sub_1012A04AC(uint64_t a1)
{

  operator delete();
}

id sub_1012A057C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F24E98;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  result = objc_retainBlock(*(a1 + 24));
  *(a2 + 24) = result;
  return result;
}

void sub_1012A05DC(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1012A0618(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A065C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    [v2 getLogContext];
    v3 = *(&v6 + 1);
  }

  else
  {
    v3 = 0;
    v6 = 0uLL;
  }

  ctu::OsLogContext::~OsLogContext(&v6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asStringBool(*(a1 + 16));
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "processed reprovisionSatelliteMsg with wipe:%s", &v6, 0xCu);
  }

  return (*(*(a1 + 24) + 16))();
}

uint64_t sub_1012A073C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24EF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A07B4(uint64_t a1)
{

  operator delete();
}

id sub_1012A0868(uint64_t a1, void *a2)
{
  *a2 = off_101F24F18;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A08B8(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A0908(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24F78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A0974(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F24F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_1012A09C8(const void **a1)
{
  sub_100005978(a1 + 8);
  sub_100010250(a1 + 6);
  sub_100005978(a1 + 5);
  sub_100010250(a1 + 4);

  return sub_100005978(a1 + 3);
}

void sub_1012A0A4C(uint64_t a1)
{

  operator delete();
}

id sub_1012A0B00(uint64_t a1, void *a2)
{
  *a2 = off_101F24FE8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A0B50(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A0BA4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F25058))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A0C1C(uint64_t a1)
{

  operator delete();
}

id sub_1012A0CD0(uint64_t a1, void *a2)
{
  *a2 = off_101F25078;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A0D20(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A0D70(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F250D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A0DE8(uint64_t a1)
{

  operator delete();
}

id sub_1012A0E9C(uint64_t a1, void *a2)
{
  *a2 = off_101F250F8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A0EEC(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A0F3C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F25158))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A0FB4(uint64_t a1)
{

  operator delete();
}

id sub_1012A1068(uint64_t a1, void *a2)
{
  *a2 = off_101F25178;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A10B8(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A110C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F251E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A1184(uint64_t a1)
{

  operator delete();
}

id sub_1012A1238(uint64_t a1, void *a2)
{
  *a2 = off_101F25208;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A1288(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A12D8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F25278))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A1350(uint64_t a1)
{

  operator delete();
}

id sub_1012A1404(uint64_t a1, void *a2)
{
  *a2 = off_101F25298;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A1454(id *a1)
{

  operator delete(a1);
}

void sub_1012A1490(uint64_t a1, void **a2)
{
  if (*a2)
  {
    v4 = objc_opt_new();
    [v4 setBitRateMaxUL:**a2];
    [v4 setBitRateMaxDL:(*a2)[1]];
    [v4 setBitRateGuaranteedUL:(*a2)[2]];
    v5 = v4;
    [v4 setBitRateGuaranteedDL:(*a2)[3]];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 8) + 16))();
}

uint64_t sub_1012A1578(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F25308))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A15F0(uint64_t a1)
{

  operator delete();
}

id sub_1012A16A4(uint64_t a1, void *a2)
{
  *a2 = off_101F25328;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1012A16F4(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012A1744(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F25388))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012A1790(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v1 = (*(*a1 + 40))(v3);
  if (capabilities::ct::supportsGemini(v1))
  {
    sub_101743B0C(&v2);
  }

  sub_101743B0C(&v2);
}

void sub_1012A190C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = 40;
  while (1)
  {
    v21 = *(v18 + v20);
    if (v21)
    {
      sub_100004A34(v21);
    }

    v20 -= 24;
    if (v20 == -8)
    {
      if (a10)
      {
        sub_100004A34(a10);
      }

      if (a12)
      {
        sub_100004A34(a12);
      }

      if (a15)
      {
        sub_100004A34(a15);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

void sub_1012A19AC(uint64_t a1, dispatch_object_t *a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  BasebandSettingsDeviceStateModel::create(&v2);
}

void sub_1012A1A1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1012A1A3C@<D0>(CCPreferences *a1@<X0>, _OWORD *a2@<X8>)
{
  CCPreferences::create(&v4, a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_1012A1A74(int a1@<W1>, void *a2@<X8>)
{
  if (a1 > 6)
  {
    if (a1 <= 8)
    {
      if (a1 != 7)
      {
        operator new();
      }

      operator new();
    }

    if (a1 == 9)
    {
      operator new();
    }

    if (a1 == 10)
    {
      operator new();
    }
  }

  else
  {
    if (a1 > 4)
    {
      if (a1 != 5)
      {
        operator new();
      }

      operator new();
    }

    if (!a1)
    {
      operator new();
    }

    if (a1 == 2)
    {
      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1012A1E24(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1012A1E58(BasebandSettingsFactoryInterface *this)
{
  *this = off_101F253A8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  BasebandSettingsFactoryInterface::~BasebandSettingsFactoryInterface(this);
}

void sub_1012A1EB4(BasebandSettingsFactoryInterface *this)
{
  *this = off_101F253A8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  BasebandSettingsFactoryInterface::~BasebandSettingsFactoryInterface(this);

  operator delete();
}

void *sub_1012A1F24(void *result, int *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 8) < *v3)
      {
LABEL_9:
        if (v4)
        {
          v11 = v6 + 1;
        }

        else
        {
          v11 = result + 1;
        }

        if (!*v11)
        {
LABEL_20:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          while (1)
          {
            v12 = v4;
            v13 = *(v4 + 32);
            if (v13 <= v10)
            {
              break;
            }

            v4 = *v12;
            if (!*v12)
            {
              goto LABEL_20;
            }
          }

          if (v13 >= v10)
          {
            break;
          }

          v4 = v12[1];
          if (!v4)
          {
            goto LABEL_20;
          }
        }
      }

      v3 += 6;
      if (v3 == &a2[6 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

void sub_1012A20EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F25408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A2188(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F25458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A2224(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F254A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A22C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F254F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A235C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F25548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A23F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F25598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A2494(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F255E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012A2510(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = 0;
  v9 = 0;
  (*(*a1 + 24))(&v8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  subscriber::makeSimSlotRange();
  v3 = v5;
  if (v5 != v6)
  {
    do
    {
      if (v7(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v6);
    if (v3 != v6)
    {
      v4[0] = 0;
      v4[1] = 0;
      sub_101338EC4(v4);
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1012A2748(_Unwind_Exception *a1)
{
  sub_10006EC28(v1, *(v1 + 8));
  v4 = *(v2 - 88);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

double sub_1012A27C8@<D0>(CCPreferences *a1@<X0>, _OWORD *a2@<X8>)
{
  CCPreferences::create(&v4, a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_1012A2800(RoamingHandlerFactoryInterface *this)
{
  *this = off_101F25638;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  RoamingHandlerFactoryInterface::~RoamingHandlerFactoryInterface(this);
}

void sub_1012A285C(RoamingHandlerFactoryInterface *this)
{
  *this = off_101F25638;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  RoamingHandlerFactoryInterface::~RoamingHandlerFactoryInterface(this);

  operator delete();
}

capabilities::euicc *sub_1012A28CC@<X0>(capabilities::euicc *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::euicc::supportsVinylSEPPairingVerification(a1);
  if (result)
  {
    result = capabilities::euicc::supportsEOS(result);
    if (!result)
    {
      *a2 = 0;
      a2[1] = 0;
      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1012A2BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1012A2CCC(uint64_t a1)
{
  *a1 = off_101F25680;
  v2 = (a1 + 40);
  sub_1012A2EE4((a1 + 48));
  ctu::OsLogLogger::~OsLogLogger(v2);
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1012A2D2C(uint64_t a1)
{
  sub_1012A2CCC(a1);

  operator delete();
}

const void **sub_1012A2D64@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = a1 + 8;
  v8 = a1;
  sub_10005C7A4(&v9, a2);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1012A3568;
  v11[3] = &unk_101F25820;
  v11[4] = v5;
  v11[5] = &v8;
  v12 = v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v10 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1012A37E4;
    v16 = &unk_101F25860;
    v17 = &v10;
    v18 = &v12;
    dispatch_async_and_wait(v6, &block);
  }

  else
  {
    v10 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1012A376C;
    v16 = &unk_101F25840;
    v17 = &v10;
    v18 = &v12;
    dispatch_sync(v6, &block);
  }

  sub_100060DE8(a3, &v10);
  sub_10000A1EC(&v10);
  return sub_100005978(&v9);
}

void sub_1012A2EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  sub_100005978((v3 + 8));
  _Unwind_Resume(a1);
}

const void **sub_1012A2EE4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1012A2F1C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012A2F70(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012A2FB0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1012A2FDC(ServiceManager::Service *this)
{
  *this = off_101F257B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1012A3038(ServiceManager::Service *this)
{
  *this = off_101F257B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1012A3104@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1012A3144(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v2);
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_1012A31BC(uint64_t a1)
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

void sub_1012A329C(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group, this);
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

void sub_1012A33B8(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 48))
  {
    err = 0;
    if ((AMFDRSealingMapVerifySealing() & 1) == 0)
    {
      v2 = *(v1 + 48);
      *(v1 + 48) = 0;
      *buf = v2;
      sub_1012A2EE4(buf);
      if (err)
      {
        v3 = CFErrorCopyDescription(err);
        v5 = v3;
        v4 = *(v1 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v3;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error verifying sealing: %@!", buf, 0xCu);
        }

        sub_100005978(&v5);
      }
    }
  }

  operator delete();
}

uint64_t *sub_1012A3500(void *a1)
{
  v5 = a1;
  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 8);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    operator delete();
  }

  return sub_1000049E0(&v5);
}

void sub_1012A3568(uint64_t a1@<X0>, CFStringRef *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  if (*(*v3 + 48))
  {
    data = 0;
    *buf = 0;
    p_data = &data;
    v5 = AMFDRDataCopySealingManifestProperty();
    sub_1012A3714(buf);
    if (data)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = CFGetAllocator(*(v4 + 48));
      v8 = CFStringCreateFromExternalRepresentation(v7, data, 0x8000100u);
      *buf = v8;
      if (v8)
      {
        *a2 = v8;
        CFRetain(v8);
      }

      else
      {
        v11 = *(v4 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v12 = 0;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Property not found in FDR manifest", v12, 2u);
        }

        *a2 = 0;
      }

      sub_100005978(buf);
    }

    else
    {
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error copying manifest property!", buf, 2u);
      }

      *a2 = 0;
    }

    sub_10002D760(&data);
  }

  else
  {
    v9 = *(v4 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "FDR Object is null!", buf, 2u);
    }

    *a2 = 0;
  }
}

void sub_1012A36F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002D760(va);
  _Unwind_Resume(a1);
}

const void **sub_1012A3714(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  sub_10002D760(&v6);
  return a1;
}

const void **sub_1012A376C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10000A1EC(&v6);
  }

  return sub_10000A1EC(&v5);
}

const void **sub_1012A37E4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10000A1EC(&v6);
  }

  return sub_10000A1EC(&v5);
}

void sub_1012A385C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t sub_1012A38E4(uint64_t a1, int a2)
{
  v4 = (a1 + 8);
  v5 = "pb.mdl.?";
  if (a2 == 2)
  {
    v5 = "pb.mdl.2";
  }

  if (a2 == 1)
  {
    v6 = "pb.mdl.1";
  }

  else
  {
    v6 = v5;
  }

  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, v6);
  ctu::OsLogLogger::OsLogLogger(v9, &v8);
  ctu::OsLogLogger::OsLogLogger(v4, v9);
  ctu::OsLogLogger::~OsLogLogger(v9);
  ctu::OsLogContext::~OsLogContext(&v8);
  *(a1 + 16) = 0u;
  *a1 = off_101F25890;
  *(a1 + 32) = a2;
  *(a1 + 36) = 0x600000006;
  PBCapabilities::PrimaryNumber::PrimaryNumber((a1 + 44));
  PBCapabilities::Groups::Groups((a1 + 56));
  PBCapabilities::AdditionaNumber::AdditionaNumber((a1 + 58));
  PBCapabilities::Email::Email((a1 + 61));
  PBCapabilities::SecondName::SecondName((a1 + 63));
  PBCapabilities::HiddenRecords::HiddenRecords((a1 + 64));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 80;
  sub_100E3F3A4(a1 + 96);
  *(a1 + 528) = 0;
  CSIPhoneNumber::CSIPhoneNumber((a1 + 536));
  CSIPhoneNumber::CSIPhoneNumber((a1 + 696));
  CSIPhoneNumber::CSIPhoneNumber((a1 + 856));
  *(a1 + 1016) = 1;
  CSIPhoneNumber::CSIPhoneNumber((a1 + 1024));
  *(a1 + 1192) = 0u;
  *(a1 + 1184) = a1 + 1192;
  return a1;
}

void sub_1012A3A54(_Unwind_Exception *a1)
{
  sub_10034F8E8(v1 + 856);
  sub_10034F8E8(v1 + 696);
  sub_10034F8E8(v1 + 536);
  sub_10006BF90((v3 + 2));
  sub_1012A5978(*v3);
  v5 = *(v1 + 3);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::OsLogLogger::~OsLogLogger(v2);
  PhonebookModelInterface::~PhonebookModelInterface(v1);
  _Unwind_Resume(a1);
}

void sub_1012A3AF4(uint64_t a1)
{
  *a1 = off_101F25890;
  sub_100034450(*(a1 + 1192));
  if (*(a1 + 1175) < 0)
  {
    operator delete(*(a1 + 1152));
  }

  if (*(a1 + 1151) < 0)
  {
    operator delete(*(a1 + 1128));
  }

  if (*(a1 + 1111) < 0)
  {
    operator delete(*(a1 + 1088));
  }

  if (*(a1 + 1079) < 0)
  {
    operator delete(*(a1 + 1056));
  }

  if (*(a1 + 1055) < 0)
  {
    operator delete(*(a1 + 1032));
  }

  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  if (*(a1 + 983) < 0)
  {
    operator delete(*(a1 + 960));
  }

  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  if (*(a1 + 911) < 0)
  {
    operator delete(*(a1 + 888));
  }

  if (*(a1 + 887) < 0)
  {
    operator delete(*(a1 + 864));
  }

  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  if (*(a1 + 823) < 0)
  {
    operator delete(*(a1 + 800));
  }

  if (*(a1 + 783) < 0)
  {
    operator delete(*(a1 + 760));
  }

  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  if (*(a1 + 727) < 0)
  {
    operator delete(*(a1 + 704));
  }

  if (*(a1 + 687) < 0)
  {
    operator delete(*(a1 + 664));
  }

  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  if (*(a1 + 623) < 0)
  {
    operator delete(*(a1 + 600));
  }

  if (*(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  sub_10006BF90(a1 + 96);
  sub_1012A5978(*(a1 + 80));
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  PhonebookModelInterface::~PhonebookModelInterface(a1);
}

void sub_1012A3CB4(uint64_t a1)
{
  sub_1012A3AF4(a1);

  operator delete();
}

void sub_1012A3CEC(uint64_t a1)
{
  v1 = (a1 + 80);
  sub_1012A5978(*(a1 + 80));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

BOOL sub_1012A3D34(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 88);
  if (v4 > a2)
  {
    v5 = *(a1 + 72);
    if (a2)
    {
      for (i = 0; i != a2; ++i)
      {
        v7 = v5[1];
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
            v8 = v5[2];
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }
    }

    else
    {
      v8 = *(a1 + 72);
    }

    sub_1012A3DC4(a3, (v8 + 5));
  }

  return v4 > v3;
}

uint64_t sub_1012A3DC4(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    std::string::operator=((a1 + 40), (a2 + 40));
    std::string::operator=((a1 + 64), (a2 + 64));
    v4 = *(a2 + 92);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 92) = v4;
    std::string::operator=((a1 + 96), (a2 + 96));
    v5 = *(a2 + 128);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = v5;
    std::string::operator=((a1 + 136), (a2 + 136));
    std::string::operator=((a1 + 160), (a2 + 160));
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    std::string::operator=((a1 + 200), (a2 + 200));
    std::string::operator=((a1 + 224), (a2 + 224));
    v6 = *(a2 + 252);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 252) = v6;
    std::string::operator=((a1 + 256), (a2 + 256));
    v7 = *(a2 + 288);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = v7;
    std::string::operator=((a1 + 296), (a2 + 296));
    std::string::operator=((a1 + 320), (a2 + 320));
    *(a1 + 344) = *(a2 + 344);
    std::string::operator=((a1 + 352), (a2 + 352));
    std::string::operator=((a1 + 376), (a2 + 376));
    std::string::operator=((a1 + 400), (a2 + 400));
    *(a1 + 424) = *(a2 + 424);
  }

  return a1;
}

void sub_1012A3F08(void *a1, unsigned int a2)
{
  v4 = a1 + 10;
  v3 = a1[10];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = *(v6 + 8);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 8) <= a2)
    {
      v10 = v5[1];
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
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (a1[9] == v5)
      {
        a1[9] = v11;
      }

      --a1[11];
      sub_100018288(v3, v5);
      sub_10006BF90((v5 + 5));

      operator delete(v5);
    }
  }
}

uint64_t sub_1012A3FEC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 57) = *(a2 + 13);
  *(a1 + 44) = v2;
  return (*(*a1 + 264))();
}

void sub_1012A4030(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    v5 = a1 + 10;
    do
    {
      *buf = *v3;
      sub_10006BD80(&buf[8], v3);
      v6 = *v5;
      if (!*v5)
      {
LABEL_9:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = *(v6 + 32);
          if (v8 <= *buf)
          {
            break;
          }

          v6 = *v7;
          if (!*v7)
          {
            goto LABEL_9;
          }
        }

        if (v8 >= *buf)
        {
          break;
        }

        v6 = v7[1];
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      sub_10006BF90(&buf[8]);
      v3 += 54;
    }

    while (v3 != v4);
  }

  v9 = a1[1];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[11];
    *buf = 134217984;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Phone Book Size: %ld", buf, 0xCu);
  }

  v11 = a1[9];
  if (v11 != a1 + 10)
  {
    do
    {
      v12 = a1[1];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11[5];
        *buf = 134217984;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Record ID: %ld", buf, 0xCu);
        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v11 + 6;
        if (*(v11 + 71) >= 0)
        {
          v15 = *(v11 + 71);
        }

        else
        {
          v14 = v11[6];
          v15 = v11[7];
        }

        *buf = 136315394;
        *&buf[4] = v14;
        v29 = 2048;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Name: %s, Length:%ld", buf, 0x16u);
        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        CSIPhoneNumber::getFullNumber(buf, (v11 + 9));
        v16 = v31;
        v17 = *buf;
        CSIPhoneNumber::getFullNumber(&v32, (v11 + 9));
        if (v16 >= 0)
        {
          v18 = buf;
        }

        else
        {
          v18 = v17;
        }

        v19 = HIBYTE(v33);
        if (v33 < 0)
        {
          v19 = *(&v32 + 1);
        }

        *v34 = 136315394;
        v35 = v18;
        v36 = 2048;
        v37 = v19;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Number: %s, Length: %ld", v34, 0x16u);
        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32);
        }

        if (v31 < 0)
        {
          operator delete(*buf);
        }

        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        CSIPhoneNumber::getFullNumber(buf, (v11 + 29));
        if (v31 >= 0)
        {
          v20 = buf;
        }

        else
        {
          v20 = *buf;
        }

        LODWORD(v32) = 136315138;
        *(&v32 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Additional Number: %s", &v32, 0xCu);
        if (v31 < 0)
        {
          operator delete(*buf);
        }

        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v11 + 49;
        if (*(v11 + 415) < 0)
        {
          v21 = v11[49];
        }

        *buf = 136315138;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Group: %s", buf, 0xCu);
        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v11 + 52;
        if (*(v11 + 439) < 0)
        {
          v22 = v11[52];
        }

        *buf = 136315138;
        *&buf[4] = v22;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Second Name: %s", buf, 0xCu);
        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v11 + 55;
        if (*(v11 + 463) < 0)
        {
          v23 = v11[55];
        }

        *buf = 136315138;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Email: %s", buf, 0xCu);
        v12 = a1[1];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(v11 + 464);
        *buf = 67109120;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Hidden: %d", buf, 8u);
      }

      v25 = v11[1];
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
          v26 = v11[2];
          v27 = *v26 == v11;
          v11 = v26;
        }

        while (!v27);
      }

      v11 = v26;
    }

    while (v26 != a1 + 10);
  }
}

void sub_1012A4580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1012A45E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 536) = *a2;
  std::string::operator=((a1 + 544), (a2 + 8));
  std::string::operator=((a1 + 568), (a2 + 32));
  v4 = *(a2 + 60);
  *(a1 + 592) = *(a2 + 56);
  *(a1 + 596) = v4;
  std::string::operator=((a1 + 600), (a2 + 64));
  v5 = *(a2 + 96);
  *(a1 + 624) = *(a2 + 88);
  *(a1 + 632) = v5;
  std::string::operator=((a1 + 640), (a2 + 104));
  result = std::string::operator=((a1 + 664), (a2 + 128));
  *(a1 + 688) = *(a2 + 152);
  return result;
}

std::string *sub_1012A4670(uint64_t a1, uint64_t a2)
{
  *(a1 + 696) = *a2;
  std::string::operator=((a1 + 704), (a2 + 8));
  std::string::operator=((a1 + 728), (a2 + 32));
  v4 = *(a2 + 60);
  *(a1 + 752) = *(a2 + 56);
  *(a1 + 756) = v4;
  std::string::operator=((a1 + 760), (a2 + 64));
  v5 = *(a2 + 96);
  *(a1 + 784) = *(a2 + 88);
  *(a1 + 792) = v5;
  std::string::operator=((a1 + 800), (a2 + 104));
  result = std::string::operator=((a1 + 824), (a2 + 128));
  *(a1 + 848) = *(a2 + 152);
  return result;
}

std::string *sub_1012A46FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 856) = *a2;
  std::string::operator=((a1 + 864), (a2 + 8));
  std::string::operator=((a1 + 888), (a2 + 32));
  v4 = *(a2 + 60);
  *(a1 + 912) = *(a2 + 56);
  *(a1 + 916) = v4;
  std::string::operator=((a1 + 920), (a2 + 64));
  v5 = *(a2 + 96);
  *(a1 + 944) = *(a2 + 88);
  *(a1 + 952) = v5;
  std::string::operator=((a1 + 960), (a2 + 104));
  result = std::string::operator=((a1 + 984), (a2 + 128));
  *(a1 + 1008) = *(a2 + 152);
  return result;
}

uint64_t sub_1012A4790(_BYTE *a1)
{
  if (a1[1016] == 1 && (a1[528] & 1) == 0)
  {
    v1 = a1[529];
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

std::string *sub_1012A47B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 1024) = *a2;
  std::string::operator=((a1 + 1032), (a2 + 8));
  std::string::operator=((a1 + 1056), (a2 + 32));
  v4 = *(a2 + 60);
  *(a1 + 1080) = *(a2 + 56);
  *(a1 + 1084) = v4;
  std::string::operator=((a1 + 1088), (a2 + 64));
  v5 = *(a2 + 96);
  *(a1 + 1112) = *(a2 + 88);
  *(a1 + 1120) = v5;
  std::string::operator=((a1 + 1128), (a2 + 104));
  result = std::string::operator=((a1 + 1152), (a2 + 128));
  *(a1 + 1176) = *(a2 + 152);
  return result;
}

void sub_1012A484C(void *a1, void **a2)
{
  v2 = (a1 + 148);
  if (a1 + 148 != a2)
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (a1[150])
    {
      v6 = a1[148];
      v7 = (a1 + 149);
      a1[148] = a1 + 149;
      *(a1[149] + 16) = 0;
      *(a1 + 149) = 0u;
      if (*(v6 + 8))
      {
        v8 = *(v6 + 8);
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        v9 = sub_1000685CC(v8);
        if (v5 == v4)
        {
          v11 = v8;
        }

        else
        {
          v10 = v5;
          do
          {
            v11 = v9;
            v12 = *(v10 + 7);
            *(v8 + 28) = v12;
            v13 = *v7;
            v14 = (a1 + 149);
            v15 = (a1 + 149);
            if (*v7)
            {
              do
              {
                while (1)
                {
                  v14 = v13;
                  if (v12 >= *(v13 + 7))
                  {
                    break;
                  }

                  v13 = *v13;
                  v15 = v14;
                  if (!*v14)
                  {
                    goto LABEL_15;
                  }
                }

                v13 = v13[1];
              }

              while (v13);
              v15 = v14 + 1;
            }

LABEL_15:
            sub_1000070DC(v2, v14, v15, v8);
            if (v9)
            {
              v9 = sub_1000685CC(v9);
            }

            else
            {
              v9 = 0;
            }

            v16 = v10[1];
            if (v16)
            {
              do
              {
                v5 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v5 = v10[2];
                v17 = *v5 == v10;
                v10 = v5;
              }

              while (!v17);
            }

            if (!v11)
            {
              break;
            }

            v8 = v11;
            v10 = v5;
          }

          while (v5 != v4);
        }

        sub_100034450(v11);
        if (!v9)
        {
          goto LABEL_33;
        }

        for (i = v9[2]; i; i = i[2])
        {
          v9 = i;
        }

        v18 = v9;
      }

      else
      {
        v18 = 0;
      }

      sub_100034450(v18);
    }

LABEL_33:
    if (v5 != v4)
    {
      operator new();
    }
  }
}

BOOL sub_1012A4A80(uint64_t a1, int a2)
{
  v2 = *(a1 + 1184);
  v3 = (a1 + 1192);
  if (v2 != (a1 + 1192))
  {
    while (*(v2 + 7) != a2)
    {
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
      if (v5 == v3)
      {
        v2 = (a1 + 1192);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void sub_1012A4AE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Phone Book Capabilities", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Primary:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 44);
    v17 = 67109120;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfPbType: %d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v17 = 67109120;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfUsedRecords:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 50);
    v17 = 67109120;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxRecords:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 52);
    v17 = 67109120;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxNumLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 53);
    v17 = 67109120;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxNameLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Groups:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 56);
    v17 = 67109120;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxGroups:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 57);
    v17 = 67109120;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxGroupNameLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I AdditionaNumber:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 58);
    v17 = 67109120;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxAddNumbers:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 59);
    v17 = 67109120;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxAddNumLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 60);
    v17 = 67109120;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxNameLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Email:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 61);
    v17 = 67109120;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxEmailsPossible:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 62);
    v17 = 67109120;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxEmailLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SecondName:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 63);
    v17 = 67109120;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tfMaxSecondNameLength:%d", &v17, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I HiddenRecords:", &v17, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 64);
    v17 = 67109120;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I \t\tisHiddenRecordSupported:%d", &v17, 8u);
  }
}

double sub_1012A50D8(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30.var0) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Resetting the Phone Book Model", &v30, 2u);
  }

  *(a1 + 36) = 0x600000006;
  memset(&v30, 0, 24);
  PBCapabilities::PrimaryNumber::PrimaryNumber(&v30);
  PBCapabilities::Groups::Groups((&v30.var2.__rep_.__l.__data_ + 4));
  PBCapabilities::AdditionaNumber::AdditionaNumber((&v30.var2.__rep_.__l.__data_ + 6));
  PBCapabilities::Email::Email((&v30.var2.__rep_.__l.__size_ + 1));
  PBCapabilities::SecondName::SecondName((&v30.var2.__rep_.__l.__size_ + 3));
  PBCapabilities::HiddenRecords::HiddenRecords((&v30.var2.__rep_.__l.__size_ + 4));
  *(a1 + 44) = *&v30.var0;
  *(a1 + 57) = *(&v30.var2.__rep_.__l.__data_ + 5);
  sub_1012A5978(*(a1 + 80));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 80;
  sub_100E3F3A4(&v30);
  sub_1012A3DC4(a1 + 96, &v30);
  sub_10006BF90(&v30);
  *(a1 + 528) = 0;
  *(a1 + 1016) = 1;
  if ((a2 & 1) == 0)
  {
    CSIPhoneNumber::CSIPhoneNumber(&v30);
    *(a1 + 536) = *&v30.var0;
    v5 = (a1 + 544);
    if (*(a1 + 567) < 0)
    {
      operator delete(*v5);
    }

    *v5 = *v30.var2.__rep_.__s.__data_;
    *(a1 + 560) = *(&v30.var2.__rep_.__l + 2);
    *(&v30.var2.__rep_.__l + 23) = 0;
    v30.var2.__rep_.__s.__data_[0] = 0;
    v6 = (a1 + 568);
    if (*(a1 + 591) < 0)
    {
      operator delete(*v6);
    }

    *v6 = v31;
    *(a1 + 584) = v32;
    HIBYTE(v32) = 0;
    LOBYTE(v31) = 0;
    *(a1 + 592) = v33;
    *(a1 + 596) = v34;
    v7 = (a1 + 600);
    if (*(a1 + 623) < 0)
    {
      operator delete(*v7);
    }

    *v7 = v35;
    *(a1 + 616) = v36;
    HIBYTE(v36) = 0;
    LOBYTE(v35) = 0;
    *(a1 + 624) = v37;
    *(a1 + 632) = v38;
    v8 = (a1 + 640);
    if (*(a1 + 663) < 0)
    {
      operator delete(*v8);
    }

    *v8 = __p;
    *(a1 + 656) = v40;
    HIBYTE(v40) = 0;
    LOBYTE(__p) = 0;
    v9 = (a1 + 664);
    if (*(a1 + 687) < 0)
    {
      operator delete(*(a1 + 664));
      v10 = SHIBYTE(v40);
      *v9 = v41;
      *(a1 + 680) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 688) = v43;
      if (v10 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v9 = v41;
      *(a1 + 680) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 688) = v43;
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (*(&v30.var2.__rep_.__l + 23) < 0)
    {
      operator delete(v30.var2.__rep_.__l.__data_);
    }

    CSIPhoneNumber::CSIPhoneNumber(&v30);
    *(a1 + 696) = *&v30.var0;
    v11 = (a1 + 704);
    if (*(a1 + 727) < 0)
    {
      operator delete(*v11);
    }

    *v11 = *v30.var2.__rep_.__s.__data_;
    *(a1 + 720) = *(&v30.var2.__rep_.__l + 2);
    *(&v30.var2.__rep_.__l + 23) = 0;
    v30.var2.__rep_.__s.__data_[0] = 0;
    v12 = (a1 + 728);
    if (*(a1 + 751) < 0)
    {
      operator delete(*v12);
    }

    *v12 = v31;
    *(a1 + 744) = v32;
    HIBYTE(v32) = 0;
    LOBYTE(v31) = 0;
    *(a1 + 752) = v33;
    *(a1 + 756) = v34;
    v13 = (a1 + 760);
    if (*(a1 + 783) < 0)
    {
      operator delete(*v13);
    }

    *v13 = v35;
    *(a1 + 776) = v36;
    HIBYTE(v36) = 0;
    LOBYTE(v35) = 0;
    *(a1 + 784) = v37;
    *(a1 + 792) = v38;
    v14 = (a1 + 800);
    if (*(a1 + 823) < 0)
    {
      operator delete(*v14);
    }

    *v14 = __p;
    *(a1 + 816) = v40;
    HIBYTE(v40) = 0;
    LOBYTE(__p) = 0;
    v15 = (a1 + 824);
    if (*(a1 + 847) < 0)
    {
      operator delete(*(a1 + 824));
      v16 = SHIBYTE(v40);
      *v15 = v41;
      *(a1 + 840) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 848) = v43;
      if (v16 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v15 = v41;
      *(a1 + 840) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 848) = v43;
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (*(&v30.var2.__rep_.__l + 23) < 0)
    {
      operator delete(v30.var2.__rep_.__l.__data_);
    }

    CSIPhoneNumber::CSIPhoneNumber(&v30);
    *(a1 + 856) = *&v30.var0;
    v17 = (a1 + 864);
    if (*(a1 + 887) < 0)
    {
      operator delete(*v17);
    }

    *v17 = *v30.var2.__rep_.__s.__data_;
    *(a1 + 880) = *(&v30.var2.__rep_.__l + 2);
    *(&v30.var2.__rep_.__l + 23) = 0;
    v30.var2.__rep_.__s.__data_[0] = 0;
    v18 = (a1 + 888);
    if (*(a1 + 911) < 0)
    {
      operator delete(*v18);
    }

    *v18 = v31;
    *(a1 + 904) = v32;
    HIBYTE(v32) = 0;
    LOBYTE(v31) = 0;
    *(a1 + 912) = v33;
    *(a1 + 916) = v34;
    v19 = (a1 + 920);
    if (*(a1 + 943) < 0)
    {
      operator delete(*v19);
    }

    *v19 = v35;
    *(a1 + 936) = v36;
    HIBYTE(v36) = 0;
    LOBYTE(v35) = 0;
    *(a1 + 944) = v37;
    *(a1 + 952) = v38;
    v20 = (a1 + 960);
    if (*(a1 + 983) < 0)
    {
      operator delete(*v20);
    }

    *v20 = __p;
    *(a1 + 976) = v40;
    HIBYTE(v40) = 0;
    LOBYTE(__p) = 0;
    v21 = (a1 + 984);
    if (*(a1 + 1007) < 0)
    {
      operator delete(*(a1 + 984));
      v22 = SHIBYTE(v40);
      *v21 = v41;
      *(a1 + 1000) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 1008) = v43;
      if (v22 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v21 = v41;
      *(a1 + 1000) = v42;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      *(a1 + 1008) = v43;
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (*(&v30.var2.__rep_.__l + 23) < 0)
    {
      operator delete(v30.var2.__rep_.__l.__data_);
    }
  }

  CSIPhoneNumber::CSIPhoneNumber(&v30);
  *(a1 + 1024) = *&v30.var0;
  v23 = (a1 + 1032);
  if (*(a1 + 1055) < 0)
  {
    operator delete(*v23);
  }

  *v23 = *v30.var2.__rep_.__s.__data_;
  *(a1 + 1048) = *(&v30.var2.__rep_.__l + 2);
  *(&v30.var2.__rep_.__l + 23) = 0;
  v30.var2.__rep_.__s.__data_[0] = 0;
  v24 = (a1 + 1056);
  if (*(a1 + 1079) < 0)
  {
    operator delete(*v24);
  }

  *v24 = v31;
  *(a1 + 1072) = v32;
  HIBYTE(v32) = 0;
  LOBYTE(v31) = 0;
  *(a1 + 1080) = v33;
  *(a1 + 1084) = v34;
  v25 = (a1 + 1088);
  if (*(a1 + 1111) < 0)
  {
    operator delete(*v25);
  }

  *v25 = v35;
  *(a1 + 1104) = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35) = 0;
  *(a1 + 1112) = v37;
  *(a1 + 1120) = v38;
  v26 = (a1 + 1128);
  if (*(a1 + 1151) < 0)
  {
    operator delete(*v26);
  }

  *v26 = __p;
  *(a1 + 1144) = v40;
  HIBYTE(v40) = 0;
  LOBYTE(__p) = 0;
  v27 = (a1 + 1152);
  if (*(a1 + 1175) < 0)
  {
    operator delete(*(a1 + 1152));
    v28 = SHIBYTE(v40);
    *v27 = v41;
    *(a1 + 1168) = v42;
    HIBYTE(v42) = 0;
    LOBYTE(v41) = 0;
    *(a1 + 1176) = v43;
    if (v28 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *v27 = v41;
    *(a1 + 1168) = v42;
    HIBYTE(v42) = 0;
    LOBYTE(v41) = 0;
    *(a1 + 1176) = v43;
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (*(&v30.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v30.var2.__rep_.__l.__data_);
  }

  sub_100034450(*(a1 + 1192));
  *(a1 + 1184) = a1 + 1192;
  result = 0.0;
  *(a1 + 1192) = 0u;
  return result;
}

void sub_1012A5894(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012A58D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012A5908(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1012A5938(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1012A5978(void *a1)
{
  if (a1)
  {
    sub_1012A5978(*a1);
    sub_1012A5978(a1[1]);
    sub_10006BF90((a1 + 5));

    operator delete(a1);
  }
}

uint64_t sub_1012A59CC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10006BF90(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1012A5A18()
{
  v0 = [(objc_class *)off_101FB96A0() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 getPowerMode] == 1;

    v3 = 1;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

void sub_1012A5BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1012A5BD8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012A5BF4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

Class sub_1012A5C04()
{
  if (qword_101FCA8D0 != -1)
  {
    dispatch_once(&qword_101FCA8D0, &stru_101F25AB0);
  }

  result = objc_getClass("_PMLowPowerMode");
  qword_101FCA8C8 = result;
  off_101FB96A0 = sub_1012A5C68;
  return result;
}

void sub_1012A5CA0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1012A64D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544((v5 + 8));
  ctu::OsLogContext::~OsLogContext(va1);
  JUMPOUT(0x1012A64BCLL);
}

void sub_1012A6500(uint64_t a1, dispatch_object_t object)
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

uint64_t sub_1012A6600(uint64_t a1)
{
  *a1 = off_101F25AE0;
  sub_1002FED80(a1 + 232);
  v11 = (a1 + 200);
  sub_1000B2AF8(&v11);
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_1000FEFCC((a1 + 56));
  v9 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  ActivationInterface::~ActivationInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1012A6704(uint64_t a1)
{
  sub_1012A6600(a1);

  operator delete();
}

void sub_1012A673C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4[0] = a2;
  v4[1] = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012ACE00;
  block[3] = &unk_101F25E98;
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

void sub_1012A67C8(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 152);
  sub_100010024(&v8, a2);
  v5 = (*(*v4 + 40))(v4, &v8);
  sub_10001021C(&v8);
  v9 = v5;
  (*(**(a1 + 112) + 384))(*(a1 + 112), v5);
  v7[0] = &v9;
  v7[1] = a1;
  v7[2] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012ACE90;
  block[3] = &unk_101F25EB8;
  block[4] = a1 + 8;
  block[5] = v7;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
  }

  else
  {
    dispatch_sync(v6, block);
  }
}

void sub_1012A68EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1012A691C(uint64_t a1)
{
  DevicePersistentSaveValue(kPostponementTicketLock, kCFBooleanFalse);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012A6A18(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4[0] = a2;
  v4[1] = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012AD438;
  block[3] = &unk_101F25ED8;
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

uint64_t sub_1012A6AA4(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD4C8;
  v5[3] = &unk_101F25EF8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1012A6BD0(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD638;
  v5[3] = &unk_101F25F58;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1012A6CFC(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD668;
  v5[3] = &unk_101F25F78;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1012A6E28(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD698;
  v5[3] = &unk_101F25FB8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1012A6F54(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD6C8;
  v5[3] = &unk_101F25FD8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void sub_1012A7080(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_1000224C8(&v5, a2);
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

void sub_1012A71B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012A71C8(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AD798;
  v5[3] = &unk_101F25FF8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A3C8;
    v10 = &unk_101F25F38;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10005946C;
    v10 = &unk_101F25F18;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void sub_1012A72F4(uint64_t a1, char a2, uint64_t a3)
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

void sub_1012A7438(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1012A7450(void *a1, char a2, uint64_t a3)
{
  v6 = a1[25];
  if (v6 == a1[26])
  {
    v7 = a1[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get Carrier Information for Post Buddy Ticket Refresh Metric: (no valid sim)", buf, 2u);
    }

    sub_10000501C(&v12, "no_sim");
  }

  else
  {
    memset(__p, 0, 32);
    *v16 = 0u;
    sub_100A34BC8(v16);
    if (SHIBYTE(__p[0]) < 0)
    {
      sub_100005F2C(buf, v16[0], v16[1]);
    }

    else
    {
      *buf = *v16;
      v21 = __p[0];
    }

    if (SHIBYTE(__p[3]) < 0)
    {
      sub_100005F2C(&v22, __p[1], __p[2]);
    }

    else
    {
      v22 = *&__p[1];
      v23 = __p[3];
    }

    if (*(v6 + 143) < 0)
    {
      sub_100005F2C(&v24, *(v6 + 120), *(v6 + 128));
    }

    else
    {
      v24 = *(v6 + 120);
      v25 = *(v6 + 136);
    }

    if (*(v6 + 167) < 0)
    {
      sub_100005F2C(&v26, *(v6 + 144), *(v6 + 152));
    }

    else
    {
      v26 = *(v6 + 144);
      v27[0] = *(v6 + 160);
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_10016FB64(&v13, buf, &v28, 4uLL);
    for (i = 0; i != -12; i -= 3)
    {
      if (SHIBYTE(v27[i]) < 0)
      {
        operator delete(v27[i - 2]);
      }
    }

    sub_1000D1184(v13, v14, "/", 1uLL, &v12);
    *buf = &v13;
    sub_1000087B4(buf);
    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v16[0]);
    }
  }

  __p[4] = a1;
  v9 = a1[2];
  if (v9)
  {
    v10 = a1[1];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      __p[5] = v10;
      __p[6] = v11;
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v18 = a2;
      sub_1000224C8(v19, a3);
      v19[7] = 0;
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012A7878(uint64_t a1)
{
  sub_10000FF50(a1 + 32);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012A78B0(uint64_t a1, int a2, uint64_t a3)
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

void sub_1012A79F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1012A7A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v7 = v6;
      (*(*v4 + 24))(v4, v6);
    }

    else
    {
      v7 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v7 = 0;
  }

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

void sub_1012A7C04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012A7C20(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012AEDEC;
  v5[3] = &unk_101F26188;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1012AEE60;
    v10 = &unk_101F261C8;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1012AEE24;
    v10 = &unk_101F261A8;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void sub_1012A7D48(uint64_t a1)
{
  v1 = *(a1 + 208);
  v2 = *(a1 + 200);
  if (v2 != v1)
  {
    v4 = 1;
LABEL_3:
    v45 = v4;
    do
    {
      v5 = (*(**(a1 + 112) + 192))(*(a1 + 112), *v2);
      if ((subscriber::isSimReady() & 1) != 0 || (v2[2] == HIDWORD(v5) ? (v6 = v2[1] == v5) : (v6 = 0), !v6))
      {
        if (!subscriber::isSimSettled())
        {
          v4 = 0;
          v2 += 42;
          if (v2 != v1)
          {
            goto LABEL_3;
          }

          goto LABEL_25;
        }

        *v47 = 0;
        ActivationSimInfo::ActivationSimInfo(v47);
        if (capabilities::ct::activationSIMInfoHardwareSlotBased(v7))
        {
          *v47 = v2[1];
          v8 = *v2;
        }

        else
        {
          v8 = *v2;
          if (v8 == 2 || v8 == 1)
          {
            *v47 = *v2;
          }
        }

        *&v47[4] = v2[2];
        v9 = *(a1 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = subscriber::asString();
          v11 = subscriber::asString();
          v12 = subscriber::asString();
          v13 = subscriber::asString();
          v14 = subscriber::asString();
          *buf = 136316162;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v11;
          *&buf[22] = 2080;
          *&buf[24] = v12;
          *&buf[32] = 2080;
          *&buf[34] = v13;
          *&buf[42] = 2080;
          *&buf[44] = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I SIM[%s] changing from %s - %s to %s - %s", buf, 0x34u);
          v8 = *v2;
        }

        (*(**(a1 + 112) + 184))(*(a1 + 112), v8, v47);
      }

      v2 += 42;
    }

    while (v2 != v1);
    if (v45)
    {
      (*(**(a1 + 112) + 192))(*(a1 + 112), 1);
      if (subscriber::isSimReady())
      {
        (*(**(a1 + 112) + 240))(*(a1 + 112), 1);
        sub_1012AA35C(a1);
        return;
      }

      v16 = *(a1 + 200);
      if (*(a1 + 208) == v16)
      {
        sub_1002030E0();
      }

      v58 = 0;
      v56 = 0u;
      __p = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100032BFC(buf, v16);
      isSimAbsent = subscriber::isSimAbsent();
      isSimUnreadable = subscriber::isSimUnreadable();
      isSimSettled = subscriber::isSimSettled();
      isEmptyEsimCapableCard = BasicSimInfo::isEmptyEsimCapableCard(buf);
      if (isEmptyEsimCapableCard && (capabilities::ct::supportsHydra(isEmptyEsimCapableCard) & 1) == 0)
      {
        v40 = *(a1 + 40);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I SIM with no active profile", v47, 2u);
        }

        if ((*(**(a1 + 112) + 232))(*(a1 + 112)))
        {
          v41 = *(a1 + 40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I clearing service provisioning in progress", v47, 2u);
          }

          (*(**(a1 + 112) + 224))(*(a1 + 112), 0);
        }

        (*(**(a1 + 112) + 176))(*(a1 + 112));
      }

      else
      {
        if (isSimSettled)
        {
          (*(**(a1 + 112) + 176))(*(a1 + 112));
          if ((isSimAbsent | isSimUnreadable))
          {
            if (isSimAbsent)
            {
              v21 = *(a1 + 40);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *v47 = 0;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I There is no SIM, clearing OTASP attempts", v47, 2u);
              }

              ServiceMap = Registry::getServiceMap(*(a1 + 80));
              v23 = ServiceMap;
              if (v24 < 0)
              {
                v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
                v26 = 5381;
                do
                {
                  v24 = v26;
                  v27 = *v25++;
                  v26 = (33 * v26) ^ v27;
                }

                while (v27);
              }

              std::mutex::lock(ServiceMap);
              *v47 = v24;
              v28 = sub_100009510(&v23[1].__m_.__sig, v47);
              if (v28)
              {
                v30 = v28[3];
                v29 = v28[4];
                if (v29)
                {
                  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                  std::mutex::unlock(v23);
                  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v29);
                  v31 = 0;
                  goto LABEL_64;
                }
              }

              else
              {
                v30 = 0;
              }

              std::mutex::unlock(v23);
              v29 = 0;
              v31 = 1;
LABEL_64:
              (*(*v30 + 40))(v30);
              if ((v31 & 1) == 0)
              {
                sub_100004A34(v29);
              }

              (*(**(a1 + 112) + 296))(*(a1 + 112), 0);
              (*(**(a1 + 112) + 344))(*(a1 + 112), 0);
              (*(**(a1 + 112) + 224))(*(a1 + 112), 0);
              (*(**(a1 + 112) + 280))(*(a1 + 112), 0);
              if (*(a1 + 132) == 1)
              {
                v42 = *(a1 + 40);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  *v47 = 0;
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Ticket was previously rejected, attempting to unbrick", v47, 2u);
                }

                (*(**(a1 + 152) + 24))(*(a1 + 152));
              }
            }

            v43 = *(a1 + 40);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *v47 = 0;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I The SIM state has gone to a non ready state, and marking SIM event as pending", v47, 2u);
            }

            (*(**(a1 + 112) + 240))(*(a1 + 112), 1);
            sub_1012AA35C(a1);
          }
        }

        else
        {
          v32 = *&buf[16];
          v33 = *&buf[24];
          v50[0] = ",";
          v50[1] = 1;
          memset(&v46, 0, sizeof(v46));
          if (*&buf[16] != *&buf[24])
          {
            v34 = subscriber::asString();
            sub_100016890(&v46, v34);
            for (i = v32 + 4; i != v33; i += 4)
            {
              sub_100074CFC(v50, v47);
              if ((v49 & 0x80u) == 0)
              {
                v36 = v47;
              }

              else
              {
                v36 = *v47;
              }

              if ((v49 & 0x80u) == 0)
              {
                v37 = v49;
              }

              else
              {
                v37 = v48;
              }

              std::string::append(&v46, v36, v37);
              if (v49 < 0)
              {
                operator delete(*v47);
              }

              v38 = subscriber::asString();
              v39 = strlen(v38);
              std::string::append(&v46, v38, v39);
            }

            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }
          }
        }

        if ((((*(**(a1 + 112) + 152))(*(a1 + 112)) != 4) & isSimUnreadable) == 1)
        {
          v44 = *(a1 + 40);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Making the BB go online due to unreadable SIM", v47, 2u);
          }

          sub_100083E9C(&event::activation::basebandActivated, 0);
        }
      }

      if (SHIBYTE(v58) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(*(&v55 + 1));
      }

      if (SBYTE7(v55) < 0)
      {
        operator delete(v54);
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(*(&v52 + 1));
      }

      *v47 = &buf[40];
      sub_100034D1C(v47);
      if (*&buf[16])
      {
        *&buf[24] = *&buf[16];
        operator delete(*&buf[16]);
      }

      return;
    }

LABEL_25:
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I SIM states haven't settled yet, waiting until they have", buf, 2u);
    }
  }
}

void sub_1012A8644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  sub_100D1F238(&a29);
  _Unwind_Resume(a1);
}

void sub_1012A86C8(uint64_t a1, void **a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = CSIBOOLAsString(*(a2 + 24));
    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received request to reset BB (%s) want logs (%s)", buf, 0x16u);
  }

  (*(**(a1 + 112) + 216))(*(a1 + 112));
  dispatch_get_global_queue(0, 0);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(buf, *a2, a2[1]);
  }

  else
  {
    *buf = *a2;
    *&buf[16] = a2[2];
  }

  v8 = *(a2 + 24);
  operator new();
}

void sub_1012A8888(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1012A8894(uint64_t a1, char a2)
{
  (*(**(a1 + 112) + 320))(*(a1 + 112));
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I All OTA activation assertions have been removed, kicking the state machine", v6, 2u);
    }

    (*(**(a1 + 112) + 240))(*(a1 + 112), 1);
    v5 = (*(**(a1 + 112) + 128))(*(a1 + 112));
    sub_1012A93EC(a1, v5);
  }
}

uint64_t sub_1012A8990(uint64_t result, int a2)
{
  v2 = result;
  if (a2 == 2)
  {
    v6 = *(result + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Service provisioning has failed", v9, 2u);
    }

    (*(**(v2 + 112) + 224))(*(v2 + 112), 0);
    result = (*(**(v2 + 112) + 248))(*(v2 + 112));
    if (result)
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I There is a pending SIM event to process, querying BB for activation status", v8, 2u);
      }

      return (*(**(v2 + 96) + 40))(*(v2 + 96));
    }
  }

  else
  {
    if (a2 == 1)
    {
      v5 = *(result + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Service provisioning has ended", v10, 2u);
      }

      v4 = *(**(v2 + 112) + 224);
    }

    else
    {
      if (a2)
      {
        return result;
      }

      v3 = *(result + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Service provisioning has started", buf, 2u);
      }

      v4 = *(**(v2 + 112) + 224);
    }

    return v4();
  }

  return result;
}

void sub_1012A8B8C(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = asString();
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Postponement status changing from %s to %s", buf, 0x16u);
  }

  if (a2 != 2 && a3 == 2)
  {
    *(a1 + 132) = 0;
    *buf = 0;
    DevicePersistentCopyValue(v21, kPostponementTicketPlist, 0);
    sub_100010180(buf, v21);
    sub_10000A1EC(v21);
    if (*buf)
    {
      v20 = *buf;
      CFRetain(*buf);
      sub_1012AA48C(a1, &v20);
      sub_10001021C(&v20);
LABEL_32:
      sub_10001021C(buf);
      return;
    }

    if ((*(**(a1 + 112) + 376))(*(a1 + 112)))
    {
      v8 = (*(**(a1 + 112) + 88))(*(a1 + 112));
      if (*v8 != v8[1])
      {
        v9 = *(a1 + 96);
        v10 = (*(**(a1 + 112) + 88))(*(a1 + 112));
        (*(*v9 + 48))(v9, v10);
        ++*(a1 + 128);
        goto LABEL_32;
      }

      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21[0]) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#N No prepared ticket found", v21, 2u);
      }

      v16 = *(a1 + 152);
      v15 = (*(**(a1 + 112) + 376))(*(a1 + 112));
      v17 = (*v16 + 16);
    }

    else
    {
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I No stored ticket found", v21, 2u);
      }

      v15 = (*(**(a1 + 112) + 264))(*(a1 + 112));
      v16 = *(a1 + 152);
      v17 = (*v16 + 32);
    }

    (*v17)(v16, v15);
    goto LABEL_32;
  }

  if (a3 == 3)
  {
    if ((*(**(a1 + 112) + 416))(*(a1 + 112)) == 2)
    {
      if (*(a1 + 132) != 1)
      {
        *(a1 + 132) = 1;
        v18 = *(a1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Request to update baseband ticket", buf, 2u);
        }

        *buf = off_101F26810;
        *&buf[8] = a1;
        v23 = buf;
        sub_1012A7450(a1, 0, buf);
      }

      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Ticket was previously rejected, wait for next sim activation", buf, 2u);
      }
    }

    else
    {
      *(a1 + 132) = 1;
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Ticket was rejected, requesting reactivation", buf, 2u);
      }

      v12 = *(a1 + 152);
      v13 = (*(**(a1 + 112) + 376))(*(a1 + 112));
      (*(*v12 + 16))(v12, v13);
    }
  }

  else
  {
    if (a2 == 3)
    {
      *(a1 + 132) = 0;
    }

    if (a3 == 4)
    {
      (*(**(a1 + 152) + 24))(*(a1 + 152));
    }
  }
}

void sub_1012A90F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

void sub_1012A9150(uint64_t a1)
{
  (*(**(a1 + 112) + 96))(*(a1 + 112));
  (*(**(a1 + 152) + 48))(*(a1 + 152));
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 132));
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fTicketPreviouslyRejected = %s", &v4, 0xCu);
  }
}

void sub_1012A9244(uint64_t a1, int a2)
{
  v4 = *(a1 + 224);
  v5 = *(a1 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == a2)
  {
    if (v6)
    {
      v8 = 136315138;
      v9 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Preferred data slot remains at %s", &v8, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v8 = 136315394;
      v9 = subscriber::asString();
      v10 = 2080;
      v11 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Preferred data slot changed from %s to %s", &v8, 0x16u);
      v4 = *(a1 + 224);
    }

    if (v4)
    {
      (*(**(a1 + 112) + 240))(*(a1 + 112), 1);
      (*(**(a1 + 96) + 40))(*(a1 + 96));
      v7 = (*(**(a1 + 112) + 128))(*(a1 + 112));
      sub_1012A93EC(a1, v7);
    }
  }
}

void sub_1012A93EC(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_101942B78[v3];
  }

  v5 = (*(**(a1 + 112) + 152))(*(a1 + 112));
  v6 = *((*(**(a1 + 112) + 128))(*(a1 + 112)) + 4);
  v7 = a2[1];
  v8 = *((*(**(a1 + 112) + 128))(*(a1 + 112)) + 8);
  v9 = *(a2 + 8);
  v10 = *((*(**(a1 + 112) + 128))(*(a1 + 112)) + 9);
  v11 = *(a2 + 9);
  (*(**(a1 + 112) + 120))(*(a1 + 112), a2);
  v12 = *(a1 + 40);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  v15 = v5 == v4 && v6 == v7 && v8 == v9;
  v73 = v11;
  if (v15 && v10 == v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I State has not changed, but we have pending SIM event to process", buf, 2u);
    }
  }

  else
  {
    v17 = v9;
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I State has not changed but we support async activation, process it", buf, 2u);
    }

    if (capabilities::ct::getCardProvisioningStatusVersion(v13) != 1)
    {
      subscriber::makeSimSlotRange();
      v19 = *buf;
      v18 = *&buf[8];
      if (*buf != *&buf[8])
      {
        v20 = v80;
        do
        {
          if (v20(*v19))
          {
            break;
          }

          ++v19;
        }

        while (v19 != v18);
        v21 = *&buf[8];
        if (v19 != *&buf[8])
        {
          v75 = v10;
          v74 = v8;
          v72 = v9;
          while (1)
          {
            v22 = *v19;
            v23 = v22 != 2 || v75 == v73;
            v24 = v23;
            v25 = v74 != v17 && v22 == 1;
            if (v25 || !v24)
            {
              break;
            }

            v29 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *v19);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *v81 = 0;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Not handling service provisioned change", v81, 2u);
            }

            do
            {
LABEL_63:
              ++v19;
            }

            while (v19 != v18 && (v20(*v19) & 1) == 0);
            if (v19 == v21)
            {
              goto LABEL_69;
            }
          }

          v27 = v73;
          if (v22 == 1)
          {
            v27 = v17;
          }

          v28 = v27 - 1;
          if (v28 > 2u)
          {
            v76 = 0;
          }

          else
          {
            v76 = dword_101942B84[v28];
          }

          v31 = (*(**(a1 + 48) + 16))(*(a1 + 48), v22);
          v32 = *v31;
          v33 = os_log_type_enabled(*v31, OS_LOG_TYPE_DEFAULT);
          if (v33)
          {
            v34 = subscriber::asString();
            *v81 = 136315138;
            *&v81[4] = v34;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Received card provisioning status: %s", v81, 0xCu);
          }

          if (capabilities::ct::getCardProvisioningStatusVersion(v33) == 1)
          {
            (*(**(a1 + 112) + 344))(*(a1 + 112), v76);
          }

          v35 = (*(**(a1 + 112) + 208))(*(a1 + 112));
          v36 = *v31;
          v37 = os_log_type_enabled(*v31, OS_LOG_TYPE_DEFAULT);
          if (!v35)
          {
            if (v37)
            {
              *v81 = 0;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I Baseband is not activated, delaying the card provisioned state notification", v81, 2u);
            }

            goto LABEL_63;
          }

          if (v37)
          {
            *v81 = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I Baseband is activated, notifying the card provisioned state now", v81, 2u);
          }

          ServiceMap = Registry::getServiceMap(*(a1 + 80));
          v39 = ServiceMap;
          if (v40 < 0)
          {
            v41 = (v40 & 0x7FFFFFFFFFFFFFFFLL);
            v42 = 5381;
            do
            {
              v40 = v42;
              v43 = *v41++;
              v42 = (33 * v42) ^ v43;
            }

            while (v43);
          }

          std::mutex::lock(ServiceMap);
          *v81 = v40;
          v44 = sub_100009510(&v39[1].__m_.__sig, v81);
          if (v44)
          {
            v45 = v44[3];
            v46 = v44[4];
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v39);
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              v17 = v72;
              sub_100004A34(v46);
              v47 = 0;
              goto LABEL_61;
            }
          }

          else
          {
            v45 = 0;
          }

          std::mutex::unlock(v39);
          v46 = 0;
          v47 = 1;
LABEL_61:
          (*(*v45 + 16))(v45, v22, v76);
          if ((v47 & 1) == 0)
          {
            sub_100004A34(v46);
          }

          goto LABEL_63;
        }
      }
    }
  }

LABEL_69:
  (*(**(a1 + 112) + 240))(*(a1 + 112), 0);
  memset(buf, 0, sizeof(buf));
  v80 = 0;
  if (!*a2)
  {
    (*(**(a1 + 112) + 144))(*(a1 + 112), 4);
    if ((a2[1] | 2) != 2)
    {
      v70 = *(a1 + 40);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#N Baseband activation result is unexpected!", v81, 2u);
      }
    }

    if ((*(**(a1 + 112) + 328))(*(a1 + 112)))
    {
      v54 = *(a1 + 40);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I Baseband is activated, but we still have active OTA assertions. Dropping activated state", v81, 2u);
      }

      goto LABEL_84;
    }

    if (*((*(**(a1 + 112) + 128))(*(a1 + 112)) + 456) != 1)
    {
      v71 = *(a1 + 40);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#I BB activated, but there is no SIM, making the BB go online", v81, 2u);
      }

      sub_100083E9C(&event::activation::basebandActivated, 1);
      goto LABEL_85;
    }

    v55 = *(a1 + 136);
    (*(**(a1 + 112) + 48))(&v78);
    (*(*v55 + 48))(v55, 2, &v78);
    sub_10001021C(&v78);
    v56 = (*(**(a1 + 112) + 336))(*(a1 + 112));
    if (capabilities::ct::getCardProvisioningStatusVersion(v56) != 1 || !v56)
    {
      goto LABEL_85;
    }

    v57 = *(a1 + 40);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = subscriber::asString();
      *v81 = 136315138;
      *&v81[4] = v58;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I Baseband has moved to activated state, notifying card provisioned state: %s", v81, 0xCu);
    }

    v59 = Registry::getServiceMap(*(a1 + 80));
    v60 = v59;
    if (v61 < 0)
    {
      v62 = (v61 & 0x7FFFFFFFFFFFFFFFLL);
      v63 = 5381;
      do
      {
        v61 = v63;
        v64 = *v62++;
        v63 = (33 * v63) ^ v64;
      }

      while (v64);
    }

    std::mutex::lock(v59);
    *v81 = v61;
    v65 = sub_100009510(&v60[1].__m_.__sig, v81);
    if (v65)
    {
      v67 = v65[3];
      v66 = v65[4];
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v60);
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v66);
        v68 = 0;
        goto LABEL_117;
      }
    }

    else
    {
      v67 = 0;
    }

    std::mutex::unlock(v60);
    v66 = 0;
    v68 = 1;
LABEL_117:
    (*(*v67 + 16))(v67, 1, v56);
    if ((v68 & 1) == 0)
    {
      sub_100004A34(v66);
    }

    goto LABEL_85;
  }

  if (*a2 != 1)
  {
    (*(**(a1 + 112) + 144))(*(a1 + 112), 5);
    (*(**(a1 + 112) + 168))(*(a1 + 112), 1);
LABEL_84:
    sub_1012AA21C();
    goto LABEL_85;
  }

  v48 = a2[1];
  if (v48 == 1)
  {
    (*(**(a1 + 112) + 144))(*(a1 + 112), 3);
    sub_1012AA0B8(a1);
    if (*(a2 + 456) == 1)
    {
      if (*(a2 + 525) == 1 && (a2[131] & 1) == 0)
      {
        sub_1012AA2A4(v81, a2 + 104, v69);
      }

      else
      {
        if (*(a2 + 527) != 1 || (*(a2 + 526) & 1) != 0)
        {
          goto LABEL_85;
        }

        sub_1012AA2A4(v81, a2 + 280, v69);
      }

      *buf = *v81;
      v80 = v82;
    }
  }

  else
  {
    if (v48 != 2)
    {
      goto LABEL_85;
    }

    v49 = (*(**(a1 + 112) + 128))(*(a1 + 112));
    if ((*(v49 + 88) & 1) == 0 && *(v49 + 456) != 1)
    {
      (*(**(a1 + 112) + 144))(*(a1 + 112), 5);
      v53 = (**(a1 + 112) + 168);
LABEL_114:
      (*v53)();
      sub_1012AA21C();
      goto LABEL_85;
    }

    v50 = (*(**(a1 + 112) + 352))(*(a1 + 112));
    v51 = *(a1 + 40);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (v50)
    {
      if (v52)
      {
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Ticket is present", v81, 2u);
      }

      v53 = (**(a1 + 112) + 144);
      goto LABEL_114;
    }

    if (v52)
    {
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Ticket is not present", v81, 2u);
    }

    sub_1012AA0B8(a1);
  }

LABEL_85:
  (*(**(a1 + 112) + 136))(*(a1 + 112), buf);
  if (SHIBYTE(v80) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1012AA030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1012AA0B8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I sending kDefaultCarrierActivationInfoAvailable", buf, 2u);
  }

  v3 = *(a1 + 136);
  (*(**(a1 + 112) + 48))(&v5);
  (*(*v3 + 48))(v3, 1, &v5);
  return sub_10001021C(&v5);
}

void sub_1012AA184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012AA198(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  v3 = (*(**(v1 + 112) + 88))(*(v1 + 112));
  v4 = *(*v2 + 48);

  return v4(v2, v3);
}

void sub_1012AA21C()
{
  v1 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(95, &v1, &object);
  xpc_release(object);
  xpc_release(v1);
}

void sub_1012AA278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012AA2A4(uint64_t *result, _BYTE *a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2[168] == 1 && a2[19] == 1)
  {
    v12 = v3;
    v13 = v4;
    v5 = result;
    result = ctu::hex(&v10, (a2 + 9), 0xA, a3);
    *v5 = v10;
    v5[2] = v11;
    v6 = *(v5 + 23);
    if (v6 < 0)
    {
      v9 = *v5;
      v8 = v5[1];
      if (*(*v5 + v8 - 1) != 102)
      {
        return result;
      }

      v7 = v8 - 1;
      v5[1] = v7;
      v5 = v9;
    }

    else
    {
      if (*(v5 + v6 - 1) != 102)
      {
        return result;
      }

      v7 = v6 - 1;
      *(v5 + 23) = v7 & 0x7F;
    }

    *(v5 + v7) = 0;
  }

  return result;
}

void sub_1012AA35C(uint64_t a1)
{
  v2 = (*(**(a1 + 112) + 256))(*(a1 + 112));
  v3 = *(a1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Reached steady state, querying activation status from BB", buf, 2u);
    }

    (*(**(a1 + 96) + 40))(*(a1 + 96));
    v5 = (*(**(a1 + 112) + 128))(*(a1 + 112));
    sub_1012A93EC(a1, v5);
  }

  else if (v4)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I We don't have steady state, ignoring SIM event for now", v6, 2u);
  }
}

const void **sub_1012AA48C(uint64_t a1, const void **a2)
{
  v20 = 0;
  DevicePersistentCopyValue(buf, kPostponementTicketLock, kCFBooleanFalse);
  sub_10002FE1C(&v20, buf);
  sub_10000A1EC(buf);
  if (v20 == kCFBooleanTrue)
  {
    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_100045C8C(&v20);
    }

    LOWORD(buf[0]) = 0;
    v9 = "#I Aborting ticket push because ticket lock is enabled";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    return sub_100045C8C(&v20);
  }

  if (((*(**(a1 + 112) + 264))(*(a1 + 112)) & 1) == 0)
  {
    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_100045C8C(&v20);
    }

    LOWORD(buf[0]) = 0;
    v9 = "#I Aborting ticket push because BB activation not enabled";
    goto LABEL_12;
  }

  v4 = *(a1 + 112);
  sub_100010024(&v18, a2);
  LOBYTE(v4) = (*(*v4 + 80))(v4, &v18);
  sub_10001021C(&v18);
  v5 = *(a1 + 40);
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Issuing stored ticket", buf, 2u);
    }

    v6 = *(a1 + 96);
    v7 = (*(**(a1 + 112) + 88))(*(a1 + 112));
    if ((*(*v6 + 48))(v6, v7))
    {
      ++*(a1 + 128);
    }

    else
    {
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Failed to issue a ticket", buf, 2u);
      }

      v13 = *(a1 + 152);
      v14 = (*(**(a1 + 112) + 376))(*(a1 + 112));
      (*(*v13 + 16))(v13, v14);
    }

    v15 = *(a1 + 168);
    if (!v15)
    {
      v8 = *(a1 + 40);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return sub_100045C8C(&v20);
      }

      LOWORD(buf[0]) = 0;
      v9 = "#I No Activation push controller";
      goto LABEL_12;
    }

    if (!(*(*v15 + 48))(v15))
    {
      v16 = *(a1 + 168);
      v21[0] = off_101F26890;
      v21[1] = a1;
      v21[3] = v21;
      (*(*v16 + 40))(v16, v21);
      sub_10002B644(v21);
      (*(**(a1 + 168) + 32))(*(a1 + 168));
      return sub_100045C8C(&v20);
    }

    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v9 = "#I Activation Push token is registered";
      goto LABEL_12;
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to prepare ticket", buf, 2u);
    }

    v10 = *(a1 + 152);
    v11 = (*(**(a1 + 112) + 376))(*(a1 + 112));
    (*(*v10 + 16))(v10, v11);
  }

  return sub_100045C8C(&v20);
}

void sub_1012AA918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_10002B644(va1);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void sub_1012AA968(uint64_t a1)
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

void sub_1012AAA5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012AAAB0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012AAAF0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1012AAB1C(ServiceManager::Service *this)
{
  *this = off_101F25CE8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1012AAB78(ServiceManager::Service *this)
{
  *this = off_101F25CE8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1012AABF8@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1012AAC3C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1012A6500(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1012A6500(v4, 0);
}

void sub_1012AACDC(uint64_t a1)
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

void sub_1012AADBC(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
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

uint64_t *sub_1012AAEF4(void **a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = *(v2 + 112);
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    if (*buf)
    {
      dispatch_group_enter(*buf);
    }
  }

  (*(*v4 + 32))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  v6 = *(v2 + 136);
  v7 = v1[1];
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(group);
  }

  (*(*v6 + 32))(v6, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v8 = *(v2 + 96);
  v9 = v1[1];
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(object);
  }

  (*(*v8 + 32))(v8, &object);
  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  v10 = *(v2 + 152);
  v11 = v1[1];
  v19 = v11;
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(v11);
  }

  (*(*v10 + 72))(v10, &v19);
  if (v19)
  {
    dispatch_group_leave(v19);
    if (v19)
    {
      dispatch_release(v19);
    }
  }

  v12 = *(v2 + 168);
  if (v12)
  {
    v13 = v1[1];
    v18 = v13;
    if (v13)
    {
      dispatch_retain(v13);
      dispatch_group_enter(v13);
    }

    (*(*v12 + 24))(v12, &v18);
    if (v18)
    {
      dispatch_group_leave(v18);
      if (v18)
      {
        dispatch_release(v18);
      }
    }
  }

  for (i = *(v2 + 64); i != v2 + 56; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC((v2 + 56));
  ctu::RestModule::disconnect((v2 + 184));
  sub_1000FF844(&v17);
  return sub_1000049E0(&v16);
}

void sub_1012AB1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group, dispatch_group_t a12, dispatch_group_t a13, dispatch_group_t a14, dispatch_group_t a15)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012AB250(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_10000501C(&__p, "/cc/props/sims_in_use");
  operator new();
}

void sub_1012AC088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t *a10, __int16 a11, char a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_group_t group, uint64_t a24, dispatch_group_t object, uint64_t a26, dispatch_group_t a27, uint64_t a28, dispatch_group_t a29, uint64_t a30, dispatch_group_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, std::__shared_weak_count *a37, int a38, __int16 a39, char a40, char a41)
{
  sub_1000062D4(v41 - 176);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_100714410(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012AC41C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F25DA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012AC498(ActivationCommandDriverDelegateInterface *this)
{
  *this = off_101F25E68;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ActivationCommandDriverDelegateInterface::~ActivationCommandDriverDelegateInterface(this);
}

void sub_1012AC4F4(ActivationCommandDriverDelegateInterface *this)
{
  *this = off_101F25E68;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ActivationCommandDriverDelegateInterface::~ActivationCommandDriverDelegateInterface(this);

  operator delete();
}

void sub_1012AC564(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = "not ";
          if (a2)
          {
            v9 = "";
          }

          v12 = 136315138;
          v13 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Command driver is %sready", &v12, 0xCu);
        }

        (*(**(v7 + 112) + 104))(*(v7 + 112), a2);
        if (a2)
        {
          if ((*(**(v7 + 112) + 248))(*(v7 + 112)))
          {
            v10 = *(v7 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v12) = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I The command driver is ready and we have a pending SIM event, querying the activation status", &v12, 2u);
            }

            (*(**(v7 + 96) + 40))(*(v7 + 96));
          }
        }

        else
        {
          v11 = *(v7 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v12) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I The command driver is not ready, clearing state", &v12, 2u);
          }

          (*(**(v7 + 112) + 144))(*(v7 + 112), 0);
          *(v7 + 128) = 0;
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1012AC7C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7 && a2 == 1)
      {
        if (HIDWORD(a2) == 4)
        {
          *(v7 + 128) = 0;
          v15 = *(v7 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(block[0]) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N Command driver response was cancelled", block, 2u);
          }
        }

        else if (HIDWORD(a2) == 2)
        {
          *(v7 + 128) = 0;
          v14 = *(v7 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            LOWORD(block[0]) = 0;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Missing activation/provisioning status", block, 2u);
          }
        }

        else if (HIDWORD(a2) == 1 && *(v7 + 128) == 1)
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 0x40000000;
          v16[2] = sub_1012AA198;
          v16[3] = &unk_101F25B90;
          v16[4] = v7;
          v8 = *(v7 + 16);
          if (!v8 || (v9 = *(v7 + 8), (v10 = std::__shared_weak_count::lock(v8)) == 0))
          {
            sub_100013CC4();
          }

          v11 = v10;
          v12 = *(v7 + 24);
          block[0] = _NSConcreteStackBlock;
          block[1] = 1174405120;
          block[2] = sub_1012B1378;
          block[3] = &unk_101F26750;
          block[5] = v9;
          v18 = v11;
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          block[4] = v16;
          dispatch_async(v12, block);
          if (v18)
          {
            sub_100004A34(v18);
          }

          sub_100004A34(v11);
        }

        else
        {
          *(v7 + 128) = 0;
          (*(**(v7 + 112) + 144))(*(v7 + 112), 3);
          v13 = *(v7 + 40);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(block[0]) = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N Ticket rejected. Going to setup kDefaultCarrierActivationInfoAvailable", block, 2u);
          }

          sub_1012AA0B8(v7);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1012ACA68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(**(v7 + 112) + 112))(*(v7 + 112), a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1012ACB14(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        sub_1012A93EC(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1012ACB9C(ActivationCommandDriverDelegateInterface *this)
{
  *this = off_101F25E68;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ActivationCommandDriverDelegateInterface::~ActivationCommandDriverDelegateInterface(this);
}

void sub_1012ACBF8(ActivationCommandDriverDelegateInterface *this)
{
  *this = off_101F25E68;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ActivationCommandDriverDelegateInterface::~ActivationCommandDriverDelegateInterface(this);

  operator delete();
}

void sub_1012ACC68(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", &buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&buf, *(v1 + 80));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  (*(**(v1 + 96) + 24))(*(v1 + 96));
  (*(**(v1 + 152) + 64))(*(v1 + 152));
  (*(**(v1 + 112) + 24))(*(v1 + 112));
  (*(**(v1 + 136) + 24))(*(v1 + 136));
  operator delete();
}

void sub_1012ACDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

const void **sub_1012ACE00(uint64_t a1)
{
  v1 = *(a1 + 40);
  (*(**(*(v1 + 8) + 112) + 40))(&v5);
  v2 = *v1;
  if (*v1 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

void sub_1012ACE90(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  v3 = **v1;
  v4 = *(v2 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I FactoryActivation enabled, preparing ticket in memory but not writing to disk", buf, 2u);
    }

    v6 = *(v2 + 112);
    sub_100010024(&v16, v1[2]);
    v7 = (*(*v6 + 80))(v6, &v16);
    sub_10001021C(&v16);
    v8 = *(v2 + 40);
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I prepared ticket successfully, will issue when BB is ready", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to prepare the ticket", buf, 2u);
      }

      (*(**(v2 + 152) + 16))(*(v2 + 152), **v1);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Client is setting postponement ticket", buf, 2u);
    }

    DevicePersistentSaveValue(kPostponementTicketPlist, *v1[2]);
    DevicePersistentSaveValue(kPostponementTicketObliterated, 0);
    _CFPreferencesFlushCachesForIdentifier();
  }

  if ((*(**(v2 + 112) + 152))(*(v2 + 112)) == 2)
  {
    goto LABEL_17;
  }

  if ((*(**(v2 + 112) + 152))(*(v2 + 112)) == 3)
  {
    v9 = *(v2 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I let's try sending the ticket again", buf, 2u);
    }

LABEL_17:
    sub_100010024(buf, v1[2]);
    sub_1012AA48C(v2, buf);
    sub_10001021C(buf);
    goto LABEL_18;
  }

  if (*(v2 + 133) == 1)
  {
    if ((*(v2 + 264) & 1) == 0)
    {
      *(v2 + 264) = 1;
      v10 = *(v2 + 256);
      if (v10)
      {
        (*(*v10 + 48))(v10, v2 + 264);
      }
    }

    v11 = *(v2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Resetting baseband to update new ticket", buf, 2u);
    }

    sub_10000501C(&__p, "Activation Ticket Updated");
    rest::ResetPayload::ResetPayload();
    sub_100108D68();
    if (v15 < 0)
    {
      operator delete(*buf);
    }

    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_18:
  *(v2 + 133) = 0;
}

void sub_1012AD228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012AD27C(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  if ((*(**(v1 + 112) + 152))(*(v1 + 112)) != 2)
  {
LABEL_12:
    operator delete();
  }

  cf = 0;
  DevicePersistentCopyValue(buf, kPostponementTicketPlist, 0);
  sub_100010180(&cf, buf);
  sub_10000A1EC(buf);
  v2 = cf;
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I No cached ticket found after unlock", buf, 2u);
    }

    goto LABEL_11;
  }

  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Pushing ticket after unlock", buf, 2u);
    v2 = cf;
    *buf = cf;
    if (!cf)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *buf = v2;
  }

  CFRetain(v2);
LABEL_10:
  sub_1012AA48C(v1, buf);
  sub_10001021C(buf);
LABEL_11:
  sub_10001021C(&cf);
  goto LABEL_12;
}

void sub_1012AD3E4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v2 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10001021C(va1);
  operator delete();
}

const void **sub_1012AD438(uint64_t a1)
{
  v1 = *(a1 + 40);
  (*(**(*(v1 + 8) + 112) + 48))(&v5);
  v2 = *v1;
  if (*v1 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

uint64_t sub_1012AD4C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  ServiceMap = Registry::getServiceMap(*(*v1 + 80));
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
  v16 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v16);
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
  CarrierBundleTechType = CarrierBundleInterface::getCarrierBundleTechType(v11);
  if (CarrierBundleTechType == 2)
  {
    if ((v12 & 1) == 0)
    {
      sub_100004A34(v10);
    }

    return 1;
  }

  if (capabilities::ct::getCardProvisioningStatusVersion(CarrierBundleTechType) == 1)
  {
    v14 = (*(**(v2 + 112) + 64))(*(v2 + 112));
    if ((v12 & 1) == 0)
    {
      sub_100004A34(v10);
    }

    if (v14)
    {
      return 1;
    }
  }

  else if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  return 0;
}

void sub_1012AD620(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1012AD700(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = (*(**(*v1 + 112) + 352))(*(*v1 + 112));
  sub_10000FFD0(v1 + 8, v2);
  sub_1007146DC(&v5);
  return sub_1000049E0(&v4);
}

void sub_1012AD77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1007146DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012AD7D0(void *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1000224C8(v6, v1 + 16);
  sub_1012A7450(v2, v3, v6);
}

void sub_1012AD864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_10000FF50(va2);
  sub_100F189A4(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void *sub_1012AD890(void *a1)
{
  *a1 = off_101F26028;
  sub_10000FF50((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012AD8E0(void *a1)
{
  *a1 = off_101F26028;
  sub_10000FF50((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1012AD9E0(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1012ADA00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F26028;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  return sub_1000224C8(a2 + 40, a1 + 40);
}

void sub_1012ADA74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012ADA94(void *a1)
{
  sub_1012ADCC0(a1 + 8);

  operator delete(a1);
}

void sub_1012ADAD0(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[2])
      {
        sub_1000224C8(&v6, (a1 + 5));
        v5 = *(v3 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1012ADC48(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1012ADC74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012ADCC0(uint64_t a1)
{
  sub_10000FF50(a1 + 32);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *sub_1012ADD0C(unsigned __int8 **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(v1[8]);
    v5 = "failed";
    if (v1[9])
    {
      v5 = "success";
    }

    *buf = 136315394;
    *&buf[4] = v4;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Request to update baseband ticket (fetchBAAOnly : %s) : %s", buf, 0x16u);
  }

  if (v1[9] == 1)
  {
    if (v1[8])
    {
      v6 = 1;
    }

    else
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Resetting baseband to update new fetched ticket", buf, 2u);
      }

      sub_10000501C(&__p, "Activation Ticket Updated");
      rest::ResetPayload::ResetPayload();
      sub_100108D68();
      if (v16 < 0)
      {
        operator delete(*buf);
      }

      if (v12 < 0)
      {
        operator delete(__p);
      }

      v6 = v1[9];
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10000FFD0((v1 + 16), v6 & 1);
  sub_1012ADF00(&v10);
  return sub_1000049E0(&v9);
}

void sub_1012ADEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_1012ADF00(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012ADF00(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t *sub_1012ADF50(_DWORD **a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  ServiceMap = Registry::getServiceMap(*(*v1 + 80));
  v4 = ServiceMap;
  if (v5 < 0)
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
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
      if (!v11)
      {
        goto LABEL_7;
      }

LABEL_14:
      v15 = v1[2];
      *buf = v2;
      v19 = v15;
      sub_1000224C8(v20, (v1 + 4));
      v20[8] = 0;
      operator new();
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_7:
  v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find CarrierBundleInterface for determining if device is customer ready!", buf, 2u);
  }

  sub_10000FFD0((v1 + 4), 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_100EDCE18(&v17);
  return sub_1000049E0(&v16);
}

void sub_1012AE1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_101075254(&a18);
  sub_10000FF50(v20 + 16);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  sub_100EDCE18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1012AE218(void *a1)
{
  *a1 = off_101F260A8;
  sub_10000FF50((a1 + 3));
  return a1;
}

void sub_1012AE25C(void *a1)
{
  *a1 = off_101F260A8;
  sub_10000FF50((a1 + 3));

  operator delete();
}

uint64_t sub_1012AE348(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F260A8;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return sub_1000224C8(a2 + 24, a1 + 24);
}

void sub_1012AE38C(void *a1)
{
  sub_10000FF50(a1 + 24);

  operator delete(a1);
}

void sub_1012AE3C8(uint64_t a1, char *a2)
{
  v2 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v2;
  sub_1000224C8(&v7, a1 + 24);
  v3 = *(v4 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012AE51C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012AE534(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1012AE580(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v5 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), v3);
  ServiceMap = Registry::getServiceMap(*(v2 + 80));
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
  cf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &cf);
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
  (*(*v14 + 96))(&cf, v14, v3, 1, @"RequiresServiceProvisioning", kCFBooleanFalse, 0);
  v16 = cf;
  buf[0] = 0;
  if (cf && (v17 = CFGetTypeID(cf), v17 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v16, v18);
    v19 = buf[0];
  }

  else
  {
    v19 = 0;
  }

  sub_10000A1EC(&cf);
  v20 = (*(**(v2 + 112) + 208))(*(v2 + 112));
  v21 = (*(**(v2 + 112) + 128))(*(v2 + 112));
  if (v21[12] != 1)
  {
    goto LABEL_17;
  }

  if (v3 == 2)
  {
    v22 = v21[9];
    goto LABEL_19;
  }

  if (v3 != 1)
  {
LABEL_17:
    v23 = 0;
    goto LABEL_20;
  }

  v22 = v21[8];
LABEL_19:
  v23 = v22 == 2;
LABEL_20:
  cf = 0;
  (*(**(v2 + 112) + 48))(&cf);
  if (!cf)
  {
    v24 = *v5;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No activation Info", buf, 2u);
    }

LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v20 &= v23;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (*(**(v2 + 112) + 264))(*(v2 + 112));
  if ((v19 & 1) != 0 && (*(**(v2 + 112) + 264))(*(v2 + 112)))
  {
    v20 &= v23;
  }

LABEL_27:
  sub_10001021C(&cf);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  sub_10000FFD0(v1 + 16, v20);
  sub_1012AE95C(&v27);
  return sub_1000049E0(&v26);
}

void sub_1012AE8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_10001021C(&a12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  sub_1012AE95C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012AE95C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_1012AE9AC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  *v3 = result;
  *(v3 + 4) = BYTE4(result);
  return result;
}

uint64_t *sub_1012AE9F0(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 == 3 || v3 == 0)
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = subscriber::asString();
      v6 = "#N Requesting invalid instance: %s";
      v7 = v5;
      v8 = 12;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

  else
  {
    v10 = (*(**(v2 + 112) + 128))(*(v2 + 112));
    v11 = v10;
    if (*(v10 + 456))
    {
      v32 = 0;
      v31 = 0;
      v12 = UMTSProvisioningSlotInfo::PriVersion::PriVersion(&v31);
      LOBYTE(v32) = 0;
      if (capabilities::ct::activationSIMInfoHardwareSlotBased(v12))
      {
        v13 = *(v2 + 200);
        v14 = *(v2 + 208);
        if (v13 != v14)
        {
          while (*v13 != *(v1 + 8))
          {
            v13 += 42;
            if (v13 == v14)
            {
              goto LABEL_26;
            }
          }
        }

        if (v13 == v14)
        {
LABEL_26:
          v20 = *(v2 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v27 = subscriber::asString();
            *buf = 136315138;
            v34 = v27;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Cannot find instance (%s)", buf, 0xCu);
          }

          goto LABEL_28;
        }

        v18 = v13[1];
        if (v18 == 2)
        {
          v31 = *(v11 + 432);
          v19 = *(v11 + 436);
        }

        else
        {
          if (v18 != 1)
          {
            v25 = *(v2 + 40);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              v28 = subscriber::asString();
              *buf = 136315138;
              v34 = v28;
              _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Invalid slot (%s)", buf, 0xCu);
            }

            goto LABEL_35;
          }

          v31 = *(v11 + 256);
          v19 = *(v11 + 260);
        }

        LOBYTE(v32) = v19;
LABEL_35:
        if (v32)
        {
          goto LABEL_36;
        }

        v26 = *(v2 + 40);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#N UMTS slot PRI version is invalid, cannot get PRI version", buf, 2u);
        }

LABEL_28:
        v21 = 0;
        v22 = 0;
        v23 = 0;
LABEL_37:
        sub_1012AED8C(*(v1 + 40), v21, v22, v23);
        goto LABEL_10;
      }

      v16 = *(v1 + 8);
      if (v16 == 1)
      {
        v17 = 256;
      }

      else
      {
        if (v16 != 2)
        {
LABEL_36:
          v21 = BYTE2(v31);
          v22 = HIBYTE(v31);
          v23 = v31;
          goto LABEL_37;
        }

        v17 = 432;
      }

      v24 = v11 + v17;
      v31 = *v24;
      LOBYTE(v32) = *(v24 + 4);
      goto LABEL_36;
    }

    v15 = *(v2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#N UMTS provisioning info is invalid, cannot get PRI version";
      v7 = v15;
      v8 = 2;
      goto LABEL_8;
    }
  }

  sub_1012AED8C(*(v1 + 40), 0, 0, 0);
LABEL_10:
  sub_1012AED3C(&v30);
  return sub_1000049E0(&v29);
}

void sub_1012AED20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1012AED3C(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012AED3C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10114B538(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_1012AED8C(uint64_t a1, char a2, char a3, __int16 a4)
{
  v7 = a2;
  v6 = a3;
  v5 = a4;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v7, &v6, &v5);
}

uint64_t sub_1012AEE24(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1012AEE60(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

__n128 sub_1012AEF18(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F261F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012AEF50(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*(a1 + 8), a2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1012AEFCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012AF018(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v6 = *a1;
    *a2 = *a1;
    a2[1] = *(a1 + 8);
    dispatch_retain(v6);
    if (a3 != 1)
    {
      return;
    }

    v7 = *a1;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return;
    }

    v7 = *a2;
LABEL_10:

    dispatch_release(v7);
    return;
  }

  v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
  if (v8 == ("N3ctu12DispatchSlotIZN20ActivationController16setupEvents_syncEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N3ctu12DispatchSlotIZN20ActivationController16setupEvents_syncEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    *a2 = a1;
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1012AF0F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = off_101F262A8 + 1;
  v3 = v1;
  operator new();
}

uint64_t sub_1012AF248(uint64_t a1)
{
  sub_1003352F8(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1009968F0(v2);
    operator delete();
  }

  result = *(a1 + 40);
  if (result)
  {

    operator delete();
  }

  return result;
}

uint64_t sub_1012AF2CC(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        a2[4] = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("ZN20ActivationController16setupEvents_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("ZN20ActivationController16setupEvents_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

void sub_1012AF364(uint64_t *a1, char *a2)
{
  v3 = *a1;
  *v4 = 0u;
  v5 = 0u;
  rest::ResetPayload::ResetPayload();
  sub_100016890(v4, a2);
  sub_1012A86C8(v3, v4);
}

void sub_1012AF3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1012AF41C(void *a1)
{
  *a1 = off_101F262D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012AF468(void *a1)
{
  *a1 = off_101F262D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1012AF4D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_1012AF584(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1012AF628(void *a1)
{
  *a1 = off_101F26328;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1012AF674(void *a1)
{
  *a1 = off_101F26328;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

__n128 sub_1012AF7C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F26368;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012AF800(void *a1)
{
  *v5 = 0u;
  v6 = 0u;
  rest::ResetPayload::ResetPayload();
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, v5);
  if (SBYTE7(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1012AF8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012AF8F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012AF9C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F263E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012AF9F8(void *a1, xpc *this, BOOL a3)
{
  v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = a1[2];
  v6 = a1[3];
  v7 = (a1[1] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7, v4);
}

uint64_t sub_1012AFA7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012AFAC8(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1012AFB14(uint64_t a1)
{
  sub_1012B0D80((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void sub_1012AFB54(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_1012AFC4C(a1, v3);
}

void sub_1012AFC1C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012AFC4C(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_1012AFD40(a1, a2);
}

void sub_1012AFD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1012AFDD8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_100B06FA8(a1, a2, 1, 2);
}

void sub_1012AFEFC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101F26488;
  operator new();
}

void sub_1012B000C(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_1012B0074(uint64_t a1)
{
  sub_1012B0420(a1);

  operator delete();
}

uint64_t sub_1012B00AC(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1012B0498(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1012B0158(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012B0188(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_1012B01B4(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_1012B01E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_1012B0238(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1012B02A4(&v2);
}

void sub_1012B0314(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1012B033C(v1);
  __cxa_rethrow();
}

uint64_t sub_1012B033C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1012B0D80((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1012B03B0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1012B0D80((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1012B0420(uint64_t a1)
{
  *a1 = off_101F26488;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1012B0498(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100B0724C(result + 4); ; i += 6)
    {
      result = sub_100B0724C(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_1012B0580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1012B05A0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1012B060C(&v2);
}

void sub_1012B067C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1012B06E0(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

NSObject **sub_1012B0728(NSObject **a1, NSObject *a2, void *aBlock)
{
  *a1 = a2;
  if (aBlock)
  {
    v4 = _Block_copy(aBlock);
    a2 = *a1;
  }

  else
  {
    v4 = 0;
  }

  a1[1] = v4;
  dispatch_retain(a2);
  return a1;
}

void (***sub_1012B0778(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_1012B0CC8(v4, result);
    sub_1012B0CC8(v3, a2);
    sub_1012B0CC8(a2, v4);
    return sub_1012B0D80(v4);
  }

  return result;
}

uint64_t sub_1012B07F4(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v5 = result;
  if (a3 <= 1)
  {
    result = sub_1012B0728(a2, *result, *(result + 8));
    if (a3 != 1)
    {
      return result;
    }

    v6 = v5;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return result;
    }

    v6 = a2;
LABEL_10:

    return sub_1012B0DD0(v6);
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result == ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFviEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFviEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_1012B08CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 && (v2 = _Block_copy(v1)) != 0 && (v3 = _Block_copy(v2), (v4 = v3) != 0))
  {
    v5 = _Block_copy(v3);
    v6 = v5;
    if (v5)
    {
      v7 = _Block_copy(v5);
      v8 = v7;
      if (v7)
      {
        v9 = _Block_copy(v7);
        v10 = v9;
        if (v9)
        {
          v11 = _Block_copy(v9);
          v12 = v11;
          if (v11)
          {
            v14 = _Block_copy(v11);
            _Block_release(v12);
          }

          else
          {
            v14 = 0;
          }

          _Block_release(v10);
        }

        else
        {
          v14 = 0;
        }

        _Block_release(v8);
      }

      else
      {
        v14 = 0;
      }

      v13 = off_101F26588;
      _Block_release(v6);
    }

    else
    {
      v13 = off_101F26588;
      v14 = 0;
    }

    _Block_release(v4);
  }

  else
  {
    v13 = off_101F26588;
    v14 = 0;
  }

  operator new();
}

uint64_t sub_1012B0B58(uint64_t a1)
{
  sub_100B07448(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1012B0D80(v2);
    operator delete();
  }

  result = *(a1 + 40);
  if (result)
  {

    operator delete();
  }

  return result;
}

void sub_1012B0BDC(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == ("N8dispatch5blockIU13block_pointerFviEEE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N8dispatch5blockIU13block_pointerFviEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_1012B0CC8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_1012B0D5C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_1012B0D80(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1012B0DD0(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t sub_1012B0E0C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

__n128 sub_1012B0ED4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F265D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012B0F0C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1012B0F54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012B101C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F26658;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012B1054(void *a1, xpc_object_t *a2)
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

uint64_t sub_1012B114C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012B1208(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F266D8;
  a2[1] = v2;
  return result;
}

void sub_1012B1234(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/is_activation_ticket_updated");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_1012B12E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B132C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012B1388(uint64_t result, uint64_t a2)
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

void sub_1012B13A4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_1012B13B4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1012B140C(uint64_t a1)
{
  v2 = a1;
  sub_10005B8C8(&v3);
  (*(*v3 + 160))();
  if (v4)
  {
    sub_100004A34(v4);
  }

  return sub_1012B13B4(&v2);
}

void sub_1012B1490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1012B13B4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B1528(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26790;
  a2[1] = v2;
  return result;
}

void sub_1012B1554(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*a2);
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I BAA prefetch for update baseband : %s", &v5, 0xCu);
  }
}

uint64_t sub_1012B15FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012B16B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26810;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012B16E4(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v2 = *(result + 8);
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Ticket refetch failed, requesting reactivation", v6, 2u);
    }

    v4 = *(v2 + 152);
    v5 = (*(**(v2 + 112) + 376))(*(v2 + 112));
    return (*(*v4 + 16))(v4, v5);
  }

  return result;
}

uint64_t sub_1012B17B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012B1870(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26890;
  a2[1] = v2;
  return result;
}

void sub_1012B189C(uint64_t a1)
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

uint64_t sub_1012B197C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012B19C8(uint64_t a1)
{
  v1 = a1;
  *(**a1 + 133) = 1;
  operator delete();
}

void sub_1012B1A14(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 112) + 152))(*(v2 + 112));
  v4 = *(v2 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = CSIBOOLAsString(v3 == 3);
    v7 = CSIBOOLAsString(*(v1 + 8));
    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I ticket rejected (%s) activated (%s)", buf, 0x16u);
  }

  BasebandBootStrategy = capabilities::ct::getBasebandBootStrategy(v5);
  if (BasebandBootStrategy == 2 || (BasebandBootStrategy = (*(**(v2 + 112) + 152))(*(v2 + 112)), BasebandBootStrategy))
  {
    if (capabilities::ct::getProvisioningProfileSupport(BasebandBootStrategy) == 1 && *(v1 + 8) == 1 && v3 != 3 && (*(**(v2 + 112) + 416))(*(v2 + 112)) == 2)
    {
      *buf = off_101F26790;
      *&buf[8] = v2;
      v12 = buf;
      sub_1012A7450(v2, 1, buf);
    }

    if ((v1[1] & 1) == 0 && v3 != 3)
    {
      v9 = *(v2 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Removing stored postponement ticket", buf, 2u);
      }

      DevicePersistentSaveValue(kPostponementTicketPlist, 0);
      DevicePersistentSaveValue(kPostponementTicketObliterated, kCFBooleanTrue);
      v10 = *(v2 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Removing cached postponement ticket", buf, 2u);
      }

      (*(**(v2 + 112) + 72))(*(v2 + 112));
    }
  }

  operator delete();
}

void sub_1012B1CE4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  operator delete();
}

const __CFString *sub_1012B1D20(int a1)
{
  v1 = @"PhoneNumber?";
  if (a1 == 2)
  {
    v1 = @"PhoneNumber2";
  }

  if (a1 == 1)
  {
    return @"PhoneNumber";
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1012B1D4C(uint64_t a1, void *a2, NSObject **a3, char *a4, __int128 *a5, uint64_t a6)
{
  ctu::OsLogContext::OsLogContext(&v19, kCtLoggingSystemName, a4);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v12 = *a3;
  *(a1 + 24) = *a3;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(&v17, &v19);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), &v17);
  ctu::OsLogLogger::~OsLogLogger(&v17);
  ctu::OsLogContext::~OsLogContext(&v19);
  v13 = sub_1011D4668(v18, a6);
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v13) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v18);
  *a1 = off_101F26910;
  *(a1 + 56) = *a2;
  v14 = a2[1];
  *(a1 + 64) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 88), *a5, *(a5 + 1));
  }

  else
  {
    v15 = *a5;
    *(a1 + 104) = *(a5 + 2);
    *(a1 + 88) = v15;
  }

  *(a1 + 152) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = a4;
  *(a1 + 135) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 176;
  return a1;
}

void sub_1012B1FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000A8744(va);
  operator delete();
}

uint64_t sub_1012B20BC(uint64_t a1)
{
  *a1 = off_101F26910;
  sub_10004C4EC(a1 + 168, *(a1 + 176));
  sub_10006DCAC(a1 + 144, *(a1 + 152));
  v2 = *(a1 + 128);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1012B2190(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[10];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (v3[9])
      {
        v8 = v3[5];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I HTTP Request for data is complete", buf, 2u);
        }

        v9 = a2[1];
        v11 = *a2;
        v12 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(a1 + 64);
        if (!v10)
        {
          sub_100022DB4();
        }

        (*(*v10 + 48))(v10, &v11);
        if (v12)
        {
          sub_100004A34(v12);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1012B2284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B22A4(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 112);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Reporting %s information to the server", &buf, 0xCu);
  }

  v7 = *(a1 + 192);
  if (v7 >= 4)
  {
    v12 = *v5;
    v11 = 4;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109376;
      DWORD1(buf) = v7;
      WORD4(buf) = 1024;
      *(&buf + 10) = 4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Request failure count %u has already reached the max %u", &buf, 0xEu);
    }
  }

  else
  {
    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9 && *(a1 + 72))
      {
        if (*(a1 + 136) == 1)
        {
          v10 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Response is still pending, sending the request later", &buf, 2u);
          }

          v11 = 5;
        }

        else
        {
          cf = 0;
          (*(*a1 + 40))(&cf, a1, a2);
          if (cf)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            sub_100D869B4(v5, a1 + 88, &v22);
            v14 = HIBYTE(v24);
            if (v24 < 0)
            {
              v14 = v23;
            }

            if (v14)
            {
              theData = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              if (*(a2 + 23) < 0)
              {
                sub_100005F2C(v19, *a2, *(a2 + 8));
              }

              else
              {
                *v19 = *a2;
                v19[2] = *(a2 + 16);
              }

              sub_100004AA0(&buf, (a1 + 8));
              v17 = *(&buf + 1);
              *v20 = buf;
              if (*(&buf + 1))
              {
                atomic_fetch_add_explicit((*(&buf + 1) + 16), 1uLL, memory_order_relaxed);
                sub_100004A34(v17);
              }

              v26 = 0;
              operator new();
            }

            v16 = *v5;
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E Failed to create activity URL of the server", &buf, 2u);
            }

            v11 = 1;
            if (SHIBYTE(v24) < 0)
            {
              operator delete(v22);
            }
          }

          else
          {
            v15 = *v5;
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E Failed to create XML Data for sending to server", &buf, 2u);
            }

            v11 = 1;
          }

          sub_10002D760(&cf);
        }

LABEL_39:
        sub_100004A34(v9);
        return v11;
      }
    }

    else
    {
      v9 = 0;
    }

    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N Could not get parent", &buf, 2u);
    }

    v11 = 0;
    if (v9)
    {
      goto LABEL_39;
    }
  }

  return v11;
}

void sub_1012B292C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, const void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, const void *a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  operator delete(v45);
  sub_10098AFA8(&a10);
  sub_10002D760(&a19);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_10002D760(&a28);
  sub_100004A34(v44);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B2A3C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1012B2D0C(a1);
    v4 = CSIBOOLAsString(v3);
    v5 = CSIBOOLAsString(*(a1 + 137));
    v6 = CSIBOOLAsString(*(a1 + 138));
    *buf = 136315650;
    *v27 = v4;
    *&v27[8] = 2080;
    *&v27[10] = v5;
    v28 = 2080;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Service Provisioned: %s, CS Registered: %s, PS Registered: %s", buf, 0x20u);
  }

  v7 = *(a1 + 168);
  if (v7 != (a1 + 176))
  {
    do
    {
      v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v7 + 8));
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        MCCAndMNC::getMcc(buf, (v7 + 5));
        IntValue = MCC::getIntValue(buf);
        MCCAndMNC::getMnc(v18, (v7 + 5));
        IntegerWidth = MNC::getIntegerWidth(v18);
        MCCAndMNC::getMnc(v16, (v7 + 5));
        v11 = MCC::getIntValue(v16);
        *v20 = 67109632;
        v21 = IntValue;
        v22 = 1024;
        v23 = IntegerWidth;
        v24 = 1024;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I MCC: %03d, MNC: %0.*d", v20, 0x14u);
        if (v17 < 0)
        {
          operator delete(v16[1]);
        }

        if (v19 < 0)
        {
          operator delete(v18[1]);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(*&v27[4]);
        }
      }

      v12 = v7[1];
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
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != (a1 + 176));
  }

  return (*(*a1 + 72))(a1);
}

void sub_1012B2CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012B2D0C(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v2 = v8;
  if (v8 == v9)
  {
    return 0;
  }

  do
  {
    if (v10(*v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != v9);
  if (v2 == v9)
  {
    return 0;
  }

  v3 = (a1 + 152);
  while (1)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = *v2;
      v6 = v3;
      do
      {
        if (*(v4 + 28) >= v5)
        {
          v6 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 28) < v5));
      }

      while (v4);
      if (v6 != v3 && v5 >= *(v6 + 7) && (v6[4] & 1) != 0)
      {
        break;
      }
    }

    do
    {
      ++v2;
    }

    while (v2 != v9 && (v10(*v2) & 1) == 0);
    if (v2 == v9)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1012B2DFC(uint64_t a1, int a2)
{
  v7 = a2;
  MCCAndMNC::MCCAndMNC();
  sub_1012B2E7C((a1 + 168), &v7);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (v4 < 0)
  {
    operator delete(v3);
  }
}

void sub_1012B2E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002FECBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B2E7C(void *a1, int *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    v5 = *a2;
    v6 = a1 + 1;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 != v3 && v5 >= *(v6 + 8))
    {
      MCC::operator=();
      MCC::operator=();
      return v6;
    }

    v3 = v6;
  }

  return sub_1012B3948(a1, v3, a2);
}

uint64_t sub_1012B2F1C(uint64_t a1, int a2)
{
  v4 = a2;
  result = sub_1012B3AAC(a1 + 168, &v4);
  if (!*(a1 + 184))
  {
    v5 = v4;
    v6 = &v5;
    result = sub_100051AD8(a1 + 144, &v5);
    *(result + 32) = 0;
    *(a1 + 137) = 0;
    *(a1 + 192) = 0;
  }

  return result;
}

uint64_t sub_1012B2FB8(uint64_t a1)
{
  *a1 = off_101F26A60;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1012B3014(uint64_t a1)
{
  *a1 = off_101F26A60;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_1012B3144(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  *a2 = off_101F26A60;
  *(a2 + 8) = v4;
  if (result[39] < 0)
  {
    result = sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  else
  {
    v5 = *(result + 1);
    *(a2 + 32) = *(result + 4);
    *(a2 + 16) = v5;
  }

  v6 = *(v3 + 6);
  *(a2 + 40) = *(v3 + 5);
  *(a2 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012B31D0(void *a1)
{
  sub_1002C8840(a1 + 8);

  operator delete(a1);
}

void sub_1012B320C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_57;
  }

  v6 = a1[1];
  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_57;
  }

  v8 = a1[5];
  sub_100004A34(v7);
  if (!v8)
  {
    goto LABEL_57;
  }

  v9 = *(v6 + 80);
  if (!v9)
  {
    v10 = 0;
    goto LABEL_27;
  }

  v10 = std::__shared_weak_count::lock(v9);
  if (!v10 || (v11 = *(v6 + 72)) == 0)
  {
LABEL_27:
    v23 = *(v6 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#N Could not get strong ref", buf, 2u);
    }

    goto LABEL_55;
  }

  v12 = *(v6 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(v6 + 112);
    (*(*v4 + 64))(object, v4);
    if (v56 >= 0)
    {
      v14 = object;
    }

    else
    {
      v14 = object[0];
    }

    v48 = v14;
    v47 = (*(*v4 + 16))(v4);
    (*(*v4 + 16))(v4);
    ctu::Http::asString();
    if (v54 >= 0)
    {
      v15 = &v53;
    }

    else
    {
      v15 = v53;
    }

    v46 = v15;
    v45 = (*(*v4 + 24))(v4);
    v16 = v13;
    v44 = v11;
    v17 = (*(*v4 + 24))(v4);
    ctu::Http::asString(v51, v17, v18);
    v19 = v52;
    v20 = v51[0];
    (*(*v4 + 48))(__p, v4);
    v21 = v51;
    if (v19 < 0)
    {
      v21 = v20;
    }

    v22 = __p;
    if (v50 < 0)
    {
      v22 = __p[0];
    }

    *buf = 136316674;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = v48;
    *&buf[22] = 1024;
    LODWORD(v58) = v47;
    WORD2(v58) = 2080;
    *(&v58 + 6) = v46;
    HIWORD(v58) = 1024;
    v59 = v45;
    *v60 = 2080;
    *&v60[2] = v21;
    v61 = 2080;
    v62 = v22;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s data HTTP response: '%s', Result: %d (%s), Status: %d (%s), Response: '%s'", buf, 0x40u);
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v44;
    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    if (v54 < 0)
    {
      operator delete(v53);
    }

    if (v56 < 0)
    {
      operator delete(object[0]);
    }
  }

  else if (!v4)
  {
    v28 = *(v6 + 192) + 1;
    *(v6 + 192) = v28;
    v29 = -1;
    goto LABEL_40;
  }

  if ((*(*v4 + 16))(v4) == 1 && (*(*v4 + 24))(v4) == 200)
  {
    v26 = a1[2];
    v25 = (a1 + 2);
    v24 = v26;
    if (v25[23] >= 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = v24;
    }

    object[0] = xpc_string_create(v27);
    if (!object[0])
    {
      object[0] = xpc_null_create();
    }

    (*(*v6 + 64))(v6, object);
    xpc_release(object[0]);
    object[0] = 0;
    sub_100DA1474();
    goto LABEL_42;
  }

  v28 = *(v6 + 192) + 1;
  *(v6 + 192) = v28;
  v29 = (*(*v4 + 24))(v4);
LABEL_40:
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_100DA17E8;
  *&v58 = &unk_101ED82F8;
  *(&v58 + 1) = v6;
  v59 = v28;
  *v60 = v29;
  sub_100DA14E8(0x800E9);
  v30 = *(v6 + 40);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(v6 + 112);
    v32 = *(v6 + 192);
    *buf = 136315394;
    *&buf[4] = v31;
    *&buf[12] = 1024;
    *&buf[14] = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s request to the server failed, current failure count: %d", buf, 0x12u);
  }

LABEL_42:
  ServiceMap = Registry::getServiceMap(*(v6 + 56));
  v34 = ServiceMap;
  if (v35 < 0)
  {
    v36 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    v37 = 5381;
    do
    {
      v35 = v37;
      v38 = *v36++;
      v37 = (33 * v37) ^ v38;
    }

    while (v38);
  }

  std::mutex::lock(ServiceMap);
  *buf = v35;
  v39 = sub_100009510(&v34[1].__m_.__sig, buf);
  if (!v39)
  {
    v41 = 0;
    goto LABEL_49;
  }

  v41 = v39[3];
  v40 = v39[4];
  if (!v40)
  {
LABEL_49:
    std::mutex::unlock(v34);
    v40 = 0;
    v42 = 1;
    goto LABEL_50;
  }

  atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v34);
  atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v40);
  v42 = 0;
LABEL_50:
  *(v6 + 196) = (*(*v41 + 88))(v41);
  if ((v42 & 1) == 0)
  {
    sub_100004A34(v40);
  }

  *(v6 + 136) = 0;
  v43 = *(v6 + 128);
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  if (v43)
  {
    sub_100004A34(v43);
  }

  (*(*v11 + 16))(v11, "Checking for any pending events");
LABEL_55:
  if (v10)
  {
    sub_100004A34(v10);
  }

LABEL_57:
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1012B383C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, xpc_object_t object, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012B38FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012B3948(void *a1, uint64_t *a2, int *a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_10002E2F4(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_1012B39F8();
  }

  return v3;
}

void sub_1012B3A80(_Unwind_Exception *a1)
{
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  sub_100045EDC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B3AAC(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1000194D8(a1, v4);
  sub_1000237E4(v4 + 32);
  operator delete(v4);
  return 1;
}

void RegistrationEventHandler::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1012B3C40(_Unwind_Exception *exception_object)
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

  dispatch_release(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

void sub_1012B3C80(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v65, *(a1 + 48));
  v2 = a1 + 64;
  ctu::RestModule::connect();
  if (v66)
  {
    sub_100004A34(v66);
  }

  v3 = (a1 + 80);
  v67 = off_101F26D38;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 80))
  {
    v4 = *(a1 + 104);
    if (v4 == v3)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F26D38;
      v69 = 0;
      ((*v4)[3])(v4, &v67);
      (*(**(a1 + 104) + 32))(*(a1 + 104));
      *(a1 + 104) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 80);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 80) = off_101F26D38;
      *(a1 + 88) = v2;
      v69 = v4;
    }

    *(a1 + 104) = v3;
  }

  sub_1012B9F78(&v67);
  v5 = *(a1 + 104);
  if (v5)
  {
    v5 = (*(*v5 + 48))(v5, a1 + 112);
  }

  if (capabilities::ct::supportsGemini(v5))
  {
    v67 = off_101F26DC8;
    v68 = (a1 + 64);
    v69 = &v67;
    sub_1012BA8A4(&v67, (a1 + 1032));
    sub_1012B989C(&v67);
    v6 = *(a1 + 1056);
    if (v6)
    {
      (*(*v6 + 48))(v6, a1 + 1064);
    }
  }

  v67 = off_101F26E58;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_1012BA8A4(&v67, (a1 + 192));
  sub_1012B989C(&v67);
  v7 = *(a1 + 216);
  if (v7)
  {
    (*(*v7 + 48))(v7, a1 + 224);
  }

  v67 = off_101F26ED8;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_1012BAEB0(&v67, (a1 + 1872));
  sub_1012B9E78(&v67);
  v8 = *(a1 + 1896);
  if (v8)
  {
    v8 = (*(*v8 + 48))(v8, a1 + 1904);
  }

  if (capabilities::ct::supportsGemini(v8))
  {
    v67 = off_101F26F68;
    v68 = (a1 + 64);
    v69 = &v67;
    sub_1012BAEB0(&v67, (a1 + 1912));
    sub_1012B9E78(&v67);
    v9 = *(a1 + 1936);
    if (v9)
    {
      (*(*v9 + 48))(v9, a1 + 1944);
    }
  }

  v10 = (a1 + 136);
  v67 = off_101F26FE8;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 136))
  {
    v11 = *(a1 + 160);
    if (v11 == v10)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F26FE8;
      v69 = 0;
      ((*v11)[3])(v11, &v67);
      (*(**(a1 + 160) + 32))(*(a1 + 160));
      *(a1 + 160) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 136);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 136) = off_101F26FE8;
      *(a1 + 144) = v2;
      v69 = v11;
    }

    *(a1 + 160) = v10;
  }

  sub_1012B9EF8(&v67);
  v12 = *(a1 + 160);
  if (v12)
  {
    (*(*v12 + 48))(v12, a1 + 168);
  }

  sub_1012B5800((a1 + 1952), a1 + 64);
  v13 = (a1 + 2000);
  v67 = off_101F27108;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2000))
  {
    v14 = *(a1 + 2024);
    if (v14 == v13)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27108;
      v69 = 0;
      ((*v14)[3])(v14, &v67);
      (*(**(a1 + 2024) + 32))(*(a1 + 2024));
      *(a1 + 2024) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2000);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2000) = off_101F27108;
      *(a1 + 2008) = v2;
      v69 = v14;
    }

    *(a1 + 2024) = v13;
  }

  sub_1012B9D78(&v67);
  v15 = *(a1 + 2024);
  if (v15)
  {
    (*(*v15 + 48))(v15, a1 + 2032);
  }

  v67 = off_101F27198;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_10031E078(&v67, (a1 + 2056));
  sub_10031D330(&v67);
  v16 = *(a1 + 2080);
  if (v16)
  {
    (*(*v16 + 48))(v16, a1 + 2088);
  }

  v67 = off_101F27218;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_10031E078(&v67, (a1 + 2112));
  sub_10031D330(&v67);
  v17 = *(a1 + 2136);
  if (v17)
  {
    (*(*v17 + 48))(v17, a1 + 2144);
  }

  v67 = off_101F27298;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_10031E078(&v67, (a1 + 2168));
  sub_10031D330(&v67);
  v18 = *(a1 + 2192);
  if (v18)
  {
    (*(*v18 + 48))(v18, a1 + 2200);
  }

  v67 = off_101F27318;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_10031E078(&v67, (a1 + 2224));
  sub_10031D330(&v67);
  v19 = *(a1 + 2248);
  if (v19)
  {
    (*(*v19 + 48))(v19, a1 + 2256);
  }

  v20 = (a1 + 2280);
  v67 = off_101F27398;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2280))
  {
    v21 = *(a1 + 2304);
    if (v21 == v20)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27398;
      v69 = 0;
      ((*v21)[3])(v21, &v67);
      (*(**(a1 + 2304) + 32))(*(a1 + 2304));
      *(a1 + 2304) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2280);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2280) = off_101F27398;
      *(a1 + 2288) = v2;
      v69 = v21;
    }

    *(a1 + 2304) = v20;
  }

  sub_1012B9CF8(&v67);
  v22 = *(a1 + 2304);
  if (v22)
  {
    (*(*v22 + 48))(v22, a1 + 2312);
  }

  v23 = (a1 + 2336);
  v67 = off_101F27428;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2336))
  {
    v24 = *(a1 + 2360);
    if (v24 == v23)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27428;
      v69 = 0;
      ((*v24)[3])(v24, &v67);
      (*(**(a1 + 2360) + 32))(*(a1 + 2360));
      *(a1 + 2360) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2336);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2336) = off_101F27428;
      *(a1 + 2344) = v2;
      v69 = v24;
    }

    *(a1 + 2360) = v23;
  }

  sub_1012B9C78(&v67);
  v25 = *(a1 + 2360);
  if (v25)
  {
    (*(*v25 + 48))(v25, a1 + 2368);
  }

  v26 = (a1 + 2392);
  v67 = off_101F274B8;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2392))
  {
    v27 = *(a1 + 2416);
    if (v27 == v26)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F274B8;
      v69 = 0;
      ((*v27)[3])(v27, &v67);
      (*(**(a1 + 2416) + 32))(*(a1 + 2416));
      *(a1 + 2416) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2392);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2392) = off_101F274B8;
      *(a1 + 2400) = v2;
      v69 = v27;
    }

    *(a1 + 2416) = v26;
  }

  sub_1012B9BF8(&v67);
  v28 = *(a1 + 2416);
  if (v28)
  {
    (*(*v28 + 48))(v28, a1 + 2424);
  }

  v29 = (a1 + 2448);
  v67 = off_101F27548;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2448))
  {
    v30 = *(a1 + 2472);
    if (v30 == v29)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27548;
      v69 = 0;
      ((*v30)[3])(v30, &v67);
      (*(**(a1 + 2472) + 32))(*(a1 + 2472));
      *(a1 + 2472) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2448);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2448) = off_101F27548;
      *(a1 + 2456) = v2;
      v69 = v30;
    }

    *(a1 + 2472) = v29;
  }

  sub_1012B9B78(&v67);
  v31 = *(a1 + 2472);
  if (v31)
  {
    (*(*v31 + 48))(v31, a1 + 2480);
  }

  v67 = off_101F275D8;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_1012BD4B8(&v67, (a1 + 2504));
  sub_1012B9AF8(&v67);
  v32 = *(a1 + 2528);
  if (v32)
  {
    (*(*v32 + 48))(v32, a1 + 2536);
  }

  v67 = off_101F27668;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_1012BD4B8(&v67, (a1 + 2560));
  sub_1012B9AF8(&v67);
  v33 = *(a1 + 2584);
  if (v33)
  {
    (*(*v33 + 48))(v33, a1 + 2592);
  }

  v34 = (a1 + 2616);
  v67 = off_101F276E8;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2616))
  {
    v35 = *(a1 + 2640);
    if (v35 == v34)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F276E8;
      v69 = 0;
      ((*v35)[3])(v35, &v67);
      (*(**(a1 + 2640) + 32))(*(a1 + 2640));
      *(a1 + 2640) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2616);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2616) = off_101F276E8;
      *(a1 + 2624) = v2;
      v69 = v35;
    }

    *(a1 + 2640) = v34;
  }

  sub_1012B9A78(&v67);
  v36 = *(a1 + 2640);
  if (v36)
  {
    (*(*v36 + 48))(v36, a1 + 2648);
  }

  v37 = (a1 + 2672);
  v67 = off_101F27778;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2672))
  {
    v38 = *(a1 + 2696);
    if (v38 == v37)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27778;
      v69 = 0;
      ((*v38)[3])(v38, &v67);
      (*(**(a1 + 2696) + 32))(*(a1 + 2696));
      *(a1 + 2696) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2672);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2672) = off_101F27778;
      *(a1 + 2680) = v2;
      v69 = v38;
    }

    *(a1 + 2696) = v37;
  }

  sub_1012B99F8(&v67);
  v39 = *(a1 + 2696);
  if (v39)
  {
    (*(*v39 + 48))(v39, a1 + 2704);
  }

  v67 = off_101F27808;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_100B7CD88(&v67, (a1 + 2728));
  sub_100B76B60(&v67);
  v40 = *(a1 + 2752);
  if (v40)
  {
    (*(*v40 + 48))(v40, a1 + 2760);
  }

  v41 = (a1 + 2784);
  v67 = off_101F27888;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2784))
  {
    v42 = *(a1 + 2808);
    if (v42 == v41)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27888;
      v69 = 0;
      ((*v42)[3])(v42, &v67);
      (*(**(a1 + 2808) + 32))(*(a1 + 2808));
      *(a1 + 2808) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2784);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2784) = off_101F27888;
      *(a1 + 2792) = v2;
      v69 = v42;
    }

    *(a1 + 2808) = v41;
  }

  sub_1012B991C(&v67);
  v43 = *(a1 + 2808);
  if (v43)
  {
    (*(*v43 + 48))(v43, a1 + 2816);
  }

  v44 = (a1 + 2840);
  v67 = off_101F27918;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2840))
  {
    v45 = *(a1 + 2864);
    if (v45 == v44)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27918;
      v69 = 0;
      ((*v45)[3])(v45, &v67);
      (*(**(a1 + 2864) + 32))(*(a1 + 2864));
      *(a1 + 2864) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2840);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2840) = off_101F27918;
      *(a1 + 2848) = v2;
      v69 = v45;
    }

    *(a1 + 2864) = v44;
  }

  sub_1012BA078(&v67);
  v46 = *(a1 + 2864);
  if (v46)
  {
    (*(*v46 + 48))(v46, a1 + 2872);
  }

  v47 = (a1 + 2896);
  v67 = off_101F279A8;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2896))
  {
    v48 = *(a1 + 2920);
    if (v48 == v47)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F279A8;
      v69 = 0;
      ((*v48)[3])(v48, &v67);
      (*(**(a1 + 2920) + 32))(*(a1 + 2920));
      *(a1 + 2920) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2896);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2896) = off_101F279A8;
      *(a1 + 2904) = v2;
      v69 = v48;
    }

    *(a1 + 2920) = v47;
  }

  sub_1012B9FF8(&v67);
  v49 = *(a1 + 2920);
  if (v49)
  {
    (*(*v49 + 48))(v49, a1 + 2928);
  }

  (*(*a1 + 104))(a1, 3, 0);
  (*(*a1 + 40))(a1, 3, 0, 0);
  (*(*a1 + 48))(a1, 3, 0);
  (*(*a1 + 56))(a1, 3, 0xFFFFFFFFLL, 0xFFFFFFFFLL);
  MCCAndMNC::MCCAndMNC(&v67);
  (*(*a1 + 80))(a1, 3, &v67, 11, 0, 0);
  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(v68);
  }

  (*(*a1 + 128))(a1, 3, 0);
  (*(*a1 + 136))(a1, 3, 0);
  (*(*a1 + 64))(a1, 3, 0);
  (*(*a1 + 72))(a1, 3, 11);
  MCC::MCC(v62);
  MNC::MNC(v59);
  (*(*a1 + 264))(a1, 3, v62, v59);
  if (v61 < 0)
  {
    operator delete(__p);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  MCC::MCC(v56);
  (*(*a1 + 280))(a1, 3, v56);
  if (v58 < 0)
  {
    operator delete(v57);
  }

  MNC::MNC(v53);
  (*(*a1 + 288))(a1, 3, v53);
  if (v55 < 0)
  {
    operator delete(v54);
  }

  (*(*a1 + 256))(a1, 3, 0);
  (*(*a1 + 160))(a1, 3, 0, 11, 0, 0);
  (*(*a1 + 168))(a1, 3, 0, 11);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  (*(*a1 + 96))(a1, 3, &v50, 0);
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }
}
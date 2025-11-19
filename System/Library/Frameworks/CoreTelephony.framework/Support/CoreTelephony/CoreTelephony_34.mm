void sub_10021F148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, const void *a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_10001021C(&a21);
  _Unwind_Resume(a1);
}

void sub_10021F2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v5, *a2, *(a2 + 8));
  }

  else
  {
    *v5 = *a2;
    v6 = *(a2 + 16);
  }

  if (SHIBYTE(v6) < 0)
  {
    sub_100005F2C(__p, v5[0], v5[1]);
  }

  else
  {
    *__p = *v5;
    v10 = v6;
  }

  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v12 = v10;
  }

  v13 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v8;
    v8 = v13;
    v14 = v3;
    sub_100005978(&v14);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst);
  }

  v4 = v8;
  v7 = v8;
  v8 = 0;
  sub_100005978(&v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  CFArrayAppendValue(v2, v4);
  sub_100005978(&v7);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_10021F410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10021F488(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  result = sub_10020B7A4(a1);
  if (result)
  {
    return result;
  }

  theArray = 0;
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
    goto LABEL_9;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
LABEL_9:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
LABEL_10:
  (*(*v17 + 24))(&v34, v17, **(a1 + 80) + 24, @"individual.keys", kPhoneServicesWalletDomain, 0, 4);
  sub_10006DD00(&theArray, &v34);
  sub_10000A1EC(&v34);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (theArray && CFArrayGetCount(theArray) > a3)
  {
    v19 = *(a1 + 48);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = PersonalityInfo::logPrefix(**(a1 + 80));
      v21 = v20;
      if (!a4)
      {
        a4 = (a1 + 120);
        if (*(a1 + 143) < 0)
        {
          a4 = *a4;
        }
      }

      if (a2)
      {
        v34 = 0uLL;
        v35 = 0;
        ctu::cf::assign();
        *__p = v34;
        v32 = v35;
        v22 = __p;
        if (v35 < 0)
        {
          v22 = v34;
        }

        *buf = 136316162;
        *&buf[4] = v21;
        v37 = 2080;
        v38 = " ";
        v39 = 2080;
        v40 = a4;
        v41 = 1024;
        v42 = a3;
        v43 = 2080;
        v44 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sSending individual secret for account '%s' slot %d to device %s", buf, 0x30u);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136316162;
        *&buf[4] = v20;
        v37 = 2080;
        v38 = " ";
        v39 = 2080;
        v40 = a4;
        v41 = 1024;
        v42 = a3;
        v43 = 2080;
        v44 = "<none>";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sSending individual secret for account '%s' slot %d to device %s", buf, 0x30u);
      }
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    v28 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v29 = CFGetTypeID(ValueAtIndex);
      if (v29 == CFDataGetTypeID())
      {
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    (*(**(a1 + 104) + 32))(*(a1 + 104), a2, **(a1 + 80) + 24, v30);
  }

  else
  {
    v23 = *(a1 + 48);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PersonalityInfo::logPrefix(**(a1 + 80));
      v25 = v24;
      if (!a4)
      {
        a4 = (a1 + 120);
        if (*(a1 + 143) < 0)
        {
          a4 = *a4;
        }
      }

      if (a2)
      {
        v34 = 0uLL;
        v35 = 0;
        ctu::cf::assign();
        *__p = v34;
        v32 = v35;
        v26 = __p;
        if (v35 < 0)
        {
          v26 = v34;
        }

        *buf = 136316162;
        *&buf[4] = v25;
        v37 = 2080;
        v38 = " ";
        v39 = 2080;
        v40 = a4;
        v41 = 1024;
        v42 = a3;
        v43 = 2080;
        v44 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sFailed to send individual secret for account '%s' slot %d to device %s", buf, 0x30u);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136316162;
        *&buf[4] = v24;
        v37 = 2080;
        v38 = " ";
        v39 = 2080;
        v40 = a4;
        v41 = 1024;
        v42 = a3;
        v43 = 2080;
        v44 = "<none>";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sFailed to send individual secret for account '%s' slot %d to device %s", buf, 0x30u);
      }
    }
  }

  return sub_100010250(&theArray);
}

void sub_10021F95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_100010250(&a13);
  _Unwind_Resume(a1);
}

const void **sub_10021F9CC(uint64_t a1, void **a2, const void *a3)
{
  if (sub_10020B624(a1) && sub_1002128B8(a1))
  {
    v6 = *(a1 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sprohibited operation. Cannot remove anything while in stealthmode - ignored", buf, 0x16u);
    }

    sub_100004AA0(buf, (a1 + 16));
    v8 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 16));
    operator new();
  }

  sub_1002167DC(a1, a2, a3);

  return sub_10020F318(a1, 1, 0);
}

void sub_10021FBD4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_10021FBEC(uint64_t a1)
{
  sub_10081043C(a1);
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    v4 = sub_10060FFC0(*(a1 + 192));
    v5 = sub_10060FF94(*(a1 + 196));
    v6 = sub_100A38E08(*(a1 + 200));
    *buf = 136316162;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v4;
    LOWORD(v40[0].__locale_) = 2080;
    *(&v40[0].__locale_ + 2) = v5;
    WORD1(v40[1].__locale_) = 2080;
    *(&v40[1].__locale_ + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fSwitchState: %s, fServiceStatus: %s, fEntitlementResultForThumper: %s", buf, 0x34u);
  }

  v54 = 0;
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
  __src = 0u;
  memset(v40, 0, sizeof(v40));
  memset(buf, 0, sizeof(buf));
  sub_10000C320(buf);
  sub_100A41FCC(&buf[16], a1 + 208);
  v7 = *(a1 + 48);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 80));
    v9 = asStringBool(*(a1 + 772));
    v10 = asStringBool(*(a1 + 773));
    if ((BYTE8(v44) & 0x10) != 0)
    {
      v12 = v44;
      if (v44 < *(&__src + 1))
      {
        *&v44 = *(&__src + 1);
        v12 = *(&__src + 1);
      }

      locale = __src;
    }

    else
    {
      if ((BYTE8(v44) & 8) == 0)
      {
        v11 = 0;
        v24 = 0;
LABEL_17:
        *(&__dst + v11) = 0;
        p_dst = &__dst;
        if (v24 < 0)
        {
          p_dst = __dst;
        }

        *v25 = 136316162;
        v26 = v8;
        v27 = 2080;
        v28 = " ";
        v29 = 2080;
        v30 = v9;
        v31 = 2080;
        v32 = v10;
        v33 = 2080;
        v34 = p_dst;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s| fAwaitingGetProvisioning: %s, fAwaitingSetProvisioning: %s, fAuthenticationResponse: %s", v25, 0x34u);
        if (v24 < 0)
        {
          operator delete(__dst);
        }

        v7 = *(a1 + 48);
        goto LABEL_22;
      }

      locale = v40[1].__locale_;
      v12 = v40[3].__locale_;
    }

    v11 = v12 - locale;
    if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v24 = v12 - locale;
    if (v11)
    {
      memmove(&__dst, locale, v11);
    }

    goto LABEL_17;
  }

LABEL_22:
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 80));
    v16 = asStringBool(*(a1 + 776));
    v17 = asStringBool(*(a1 + 777));
    v18 = asStringBool(*(a1 + 778));
    v19 = asStringBool(*(a1 + 779));
    v20 = *(a1 + 784);
    *v25 = 136316674;
    v26 = v15;
    v27 = 2080;
    v28 = " ";
    v29 = 2080;
    v30 = v16;
    v31 = 2080;
    v32 = v17;
    v33 = 2080;
    v34 = v18;
    v35 = 2080;
    v36 = v19;
    v37 = 1024;
    v38 = v20;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s| fReprovisioningRequested: %s, fICloudUpdateRequested: %s, fAccountInvalidationNeeded: %s, fAccountInvalidationForced: %s, fCloudCollisionCounter: %u", v25, 0x44u);
  }

  *&buf[16] = v21;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(*(&v42 + 1));
  }

  std::locale::~locale(v40);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1002200C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100220110(uint64_t result)
{
  if (*(**(result + 80) + 48) == 1)
  {
    v9[1] = v4;
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v1;
    v9[5] = v5;
    v9[6] = v6;
    v7 = result;
    sub_1002106E4(result);
    (*(*v7 + 200))(&v8, v7);
    sub_10001021C(v9);
    phoneservices::submitSwitchAnalytics();
  }

  return result;
}

void sub_1002201CC(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 72))(v2, a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  *(a1 + 784) = 0;
}

void sub_10022023C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100220258(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v26 = 0;
  sub_1005DC42C(*(a1 + 104), &v25);
  if (!v25)
  {
    goto LABEL_27;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v24 = *&buf[16];
  v4 = (a1 + 120);
  v5 = sub_100007A6C(v25 + 144, (a1 + 120));
  if (v25 + 152 == v5)
  {
    v7 = *(a1 + 48);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v8 = PersonalityInfo::logPrefix(**(a1 + 80));
    v9 = __p;
    if (v24 < 0)
    {
      v9 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v28 = v9;
    v10 = "#I %s%sIgnore 'requestIndividualSecret' from '%s'. Unknown account?!?";
LABEL_14:
    v13 = v7;
    v14 = 32;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v10, buf, v14);
    goto LABEL_25;
  }

  if (*(v5 + 56) + 96 == sub_100007A6C(*(v5 + 56) + 88, __p))
  {
    v7 = *(a1 + 48);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v11 = PersonalityInfo::logPrefix(**(a1 + 80));
    v12 = __p;
    if (v24 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v28 = v12;
    v10 = "#I %s%sIgnore 'requestIndividualSecret' from '%s'. Unknown device";
    goto LABEL_14;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v22 = *&buf[16];
  *v21 = *buf;
  if (buf[23] < 0)
  {
    v6 = atoi(v21[0]);
    operator delete(v21[0]);
  }

  else
  {
    v6 = atoi(v21);
  }

  v15 = (a1 + 904);
  v16 = *(a1 + 904);
  if (v6 >= ((*(a1 + 912) - v16) >> 2))
  {
    *buf = 0;
    sub_100220624((a1 + 904), v6 + 1, buf);
    v16 = *v15;
  }

  v17 = *(v16 + 4 * v6) + 1;
  *(v16 + 4 * v6) = v17;
  if (v17 % *(a1 + 928))
  {
    if (*(a1 + 143) < 0)
    {
      v4 = *v4;
    }

    sub_10021F488(a1, a2, v6, v4);
    goto LABEL_25;
  }

  v18 = *(a1 + 48);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = PersonalityInfo::logPrefix(**(a1 + 80));
    v20 = *(*v15 + 4 * v6);
    *buf = 136315650;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1024;
    LODWORD(v28) = v20;
    v10 = "#I %s%sSuppress reply on 'requestIndividualSecret' to prevent loop (id %d)";
    v13 = v18;
    v14 = 28;
    goto LABEL_15;
  }

LABEL_25:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_27:
  if (v26)
  {
    sub_100004A34(v26);
  }
}

void sub_1002205AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_100220624(void *a1, unint64_t a2, int *a3)
{
  v3 = (a1[1] - *a1) >> 2;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_1002225C8(a1, a2 - v3, a3);
  }
}

const void **sub_100220654@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = v34;
    v34 = Mutable;
    __p[0] = v5;
    sub_1000296E0(__p);
  }

  theString2 = 0;
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(v31, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *v31 = *(a1 + 120);
    v32 = *(a1 + 136);
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_100005F2C(theDict, v31[0], v31[1]);
  }

  else
  {
    *theDict = *v31;
    v37 = v32;
  }

  v35 = 0;
  if (SHIBYTE(v37) < 0)
  {
    sub_100005F2C(__p, theDict[0], theDict[1]);
  }

  else
  {
    *__p = *theDict;
    v39 = v37;
  }

  v40 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v35;
    v35 = v40;
    v41 = v6;
    sub_100005978(&v41);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  theString2 = v35;
  v35 = 0;
  sub_100005978(&v35);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(theDict[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  v7 = kPSAccountId;
  CFDictionarySetValue(v34, kPSAccountId, theString2);
  theDict[0] = 0;
  sub_1005D7AF0(*(a1 + 104), theDict);
  if (theDict[0])
  {
    v8 = kPSDeviceId;
    Value = CFDictionaryGetValue(theDict[0], kPSDeviceId);
    if (Value)
    {
      CFDictionarySetValue(v34, v8, Value);
    }

    v41 = 0;
    v10 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v10)
    {
      v11 = v41;
      v41 = v10;
      __p[0] = v11;
      sub_1000279DC(__p);
    }

    v12 = kPSAccountList;
    v13 = CFDictionaryGetValue(theDict[0], kPSAccountList);
    v14 = v13;
    if (v13)
    {
      v15 = CFGetTypeID(v13);
      if (v15 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v14);
        if (Count)
        {
          v17 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
            v19 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v20 = CFGetTypeID(ValueAtIndex);
              if (v20 == CFDictionaryGetTypeID())
              {
                v21 = CFDictionaryGetValue(v19, v7);
                v22 = v21;
                if (v21)
                {
                  v23 = CFGetTypeID(v21);
                  if (v23 == CFStringGetTypeID() && CFStringCompare(v22, theString2, 0) == kCFCompareEqualTo)
                  {
                    break;
                  }
                }
              }
            }

            if (Count == ++v17)
            {
              goto LABEL_35;
            }
          }

          CFArrayAppendValue(v41, v19);
          v25 = kPSMdn;
          v26 = CFDictionaryGetValue(v19, kPSMdn);
          if (v26)
          {
            CFDictionarySetValue(v34, v25, v26);
          }

          v27 = kPSAccountFreeSlots;
          v28 = CFDictionaryGetValue(v19, kPSAccountFreeSlots);
          if (v28)
          {
            CFDictionarySetValue(v34, v27, v28);
          }

          v29 = kPSDeviceList;
          v30 = CFDictionaryGetValue(v19, kPSDeviceList);
          if (v30)
          {
            CFDictionarySetValue(v34, v29, v30);
          }
        }
      }
    }

LABEL_35:
    CFDictionarySetValue(v34, v12, v41);
    sub_1000279DC(&v41);
  }

  sub_100010180(a2, &v34);
  sub_10001021C(theDict);
  sub_100005978(&theString2);
  return sub_1000296E0(&v34);
}

void sub_1002209FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, const void *a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_1000279DC((v32 - 88));
  sub_10001021C(&__p);
  sub_100005978(&a15);
  sub_1000296E0(&a16);
  _Unwind_Resume(a1);
}

char *sub_100220ABC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[143] < 0)
  {
    return sub_100005F2C(a2, *(result + 15), *(result + 16));
  }

  *a2 = *(result + 120);
  *(a2 + 16) = *(result + 17);
  return result;
}

void sub_100220B4C(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 72) == 1)
    {
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      *(a1 + 72) = 0;
    }

    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      *(a1 + 40) = 0;
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *a1 = 0;
  }
}

uint64_t sub_100220BD0(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
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

uint64_t sub_100220C2C(uint64_t a1)
{
  if (*(a1 + 448) == 1)
  {
    sub_100220D30(a1 + 224);
  }

  if (*(a1 + 216) == 1 && *(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 184) == 1 && *(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    v3 = (a1 + 128);
    sub_100220E18(&v3);
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1)
  {
    v3 = (a1 + 64);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 56) == 1)
  {
    v3 = (a1 + 32);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100220D30(uint64_t a1)
{
  if (*(a1 + 216) == 1 && *(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

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

void sub_100220E18(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100220E6C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100220E6C(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = v4;
    if (*(v4 - 8) == 1 && *(v4 - 9) < 0)
    {
      operator delete(*(v4 - 4));
    }

    v4 -= 8;
    if (*(v5 - 40) == 1 && *(v5 - 41) < 0)
    {
      operator delete(*v4);
    }
  }

  *(a1 + 8) = a2;
}

void sub_100220EF0(char *__dst, uint64_t a2)
{
  if (__dst[456] == *(a2 + 456))
  {
    if (__dst[456])
    {
      sub_10012BF3C(__dst, a2);
      sub_100220FC4((__dst + 32), a2 + 32);
      sub_100220FC4((__dst + 64), a2 + 64);
      sub_10012BF3C(__dst + 4, (a2 + 96));
      sub_100221094((__dst + 128), a2 + 128);
      sub_10012BF3C((__dst + 160), (a2 + 160));
      sub_10012BF3C(__dst + 8, (a2 + 192));

      sub_1002215C0(__dst + 224, a2 + 224);
    }
  }

  else if (__dst[456])
  {
    sub_100220C2C(__dst);
    __dst[456] = 0;
  }

  else
  {
    sub_1002217D8(__dst, a2);
    __dst[456] = 1;
  }
}

void sub_100220FC4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 3);
      v5 = *a2;

      sub_100008234(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = a1;
    sub_1000087B4(&v6);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_10004EFD0(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 24) = 1;
  }
}

void sub_100221094(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = (v3 - *a2) >> 6;
      v5 = *a2;

      sub_10022114C(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = a1;
    sub_100220E18(&v6);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100221538(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 6);
    *(a1 + 24) = 1;
  }
}

void sub_10022114C(char **a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 6)
  {
    sub_100221268(a1);
    if (!(a4 >> 58))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 5;
      if (v9 >> 5 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFC0)
      {
        v11 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_1002212A8(a1, v11);
    }

    sub_1000CE3D4();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 6)
  {
    sub_100221480(&v15, a2, a3, v8);
    sub_100220E6C(a1, v13);
  }

  else
  {
    sub_100221480(&v14, a2, a2 + v12, v8);
    a1[1] = sub_1002212E4(a1, (a2 + v12), a3, a1[1]);
  }
}

void sub_100221268(uint64_t a1)
{
  if (*a1)
  {
    sub_100220E6C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1002212A8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_1002214F0(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_1002212E4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      sub_10006F264(v4, v6);
      sub_10006F264(v4 + 32, v6 + 2);
      v6 += 4;
      v4 = v11 + 64;
      v11 += 64;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1002213B4(v8);
  return v4;
}

uint64_t sub_1002213B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100221400(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_100221400(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = v6;
      if (*(v6 - 8) == 1 && *(v6 - 9) < 0)
      {
        operator delete(*(v6 - 4));
      }

      v6 -= 8;
      if (*(v7 - 40) == 1 && *(v7 - 41) < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != a5);
  }
}

uint64_t sub_100221480(int a1, uint64_t a2, uint64_t a3, char *__dst)
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
    __dst += 64;
    v5 += 64;
  }

  while (v5 != v6);
  return v6;
}

void sub_1002214F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100221538(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002212A8(result, a4);
  }

  return result;
}

void sub_1002215A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100220E18(&a9);
  _Unwind_Resume(a1);
}

void sub_1002215C0(char *__dst, uint64_t a2)
{
  if (__dst[224] == *(a2 + 224))
  {
    if (__dst[224])
    {
      sub_10012BF3C(__dst, a2);
      sub_10012BF3C((__dst + 32), (a2 + 32));
      sub_10012BF3C((__dst + 64), (a2 + 64));
      sub_10012BF3C(__dst + 4, (a2 + 96));
      sub_10012BF3C((__dst + 128), (a2 + 128));
      sub_10012BF3C((__dst + 160), (a2 + 160));

      sub_10012BF3C(__dst + 8, (a2 + 192));
    }
  }

  else if (__dst[224])
  {
    sub_100220D30(__dst);
    __dst[224] = 0;
  }

  else
  {
    sub_100221688(__dst, a2);
    __dst[224] = 1;
  }
}

uint64_t sub_100221688(uint64_t a1, __int128 *a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, a2 + 2);
  sub_10006F264(a1 + 64, a2 + 4);
  sub_10006F264(a1 + 96, a2 + 6);
  sub_10006F264(a1 + 128, a2 + 8);
  sub_10006F264(a1 + 160, a2 + 10);
  sub_10006F264(a1 + 192, a2 + 12);
  return a1;
}

void sub_1002216FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 184) == 1 && *(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

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

uint64_t sub_1002217D8(uint64_t a1, __int128 *a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_100221970(v4 + 32, (a2 + 2));
  sub_100221970(a1 + 64, (a2 + 4));
  sub_10006F264(a1 + 96, a2 + 6);
  sub_100221A2C(a1 + 128, (a2 + 8));
  sub_10006F264(a1 + 160, a2 + 10);
  sub_10006F264(a1 + 192, a2 + 12);
  sub_100221ADC((a1 + 224), (a2 + 14));
  return a1;
}

void sub_10022187C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 216) == 1 && *(v10 + 215) < 0)
  {
    operator delete(*(v10 + 192));
  }

  if (*(v10 + 184) == 1 && *(v10 + 183) < 0)
  {
    operator delete(*(v10 + 160));
  }

  if (*(v10 + 152) == 1)
  {
    sub_100220E18(&a10);
  }

  if (*(v10 + 120) == 1 && *(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 88) == 1)
  {
    sub_1000087B4(&a10);
  }

  if (*(v10 + 56) == 1)
  {
    sub_1000087B4(&a10);
  }

  if (*(v10 + 24) == 1 && *(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100221970(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1002219CC(a1, a2);
  return a1;
}

void sub_1002219A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1000087B4(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002219CC(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_10004EFD0(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_100221A2C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_100221A88(a1, a2);
  return a1;
}

void sub_100221A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_100220E18(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100221A88(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_100221538(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 6);
    *(v2 + 24) = 1;
  }

  return result;
}

_BYTE *sub_100221ADC(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[224] = 0;
  if (*(a2 + 224) == 1)
  {
    sub_100221688(a1, a2);
    a1[224] = 1;
  }

  return a1;
}

void sub_100221B24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 224) == 1)
  {
    sub_100220D30(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100221B44(std::string *__dst, std::string *__str)
{
  if (__dst[2].__r_.__value_.__s.__data_[8] == __str[2].__r_.__value_.__s.__data_[8])
  {
    if (__dst[2].__r_.__value_.__s.__data_[8])
    {
      std::string::operator=(__dst, __str);

      sub_10012BF3C(__dst + 1, __str + 1);
    }
  }

  else if (__dst[2].__r_.__value_.__s.__data_[8])
  {
    if (__dst[2].__r_.__value_.__s.__data_[0] == 1 && SHIBYTE(__dst[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[2].__r_.__value_.__s.__data_[8] = 0;
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
}

void sub_100221C20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100221C3C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100221CC4(result, a4);
  }

  return result;
}

void sub_100221CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100222050(&a9);
  _Unwind_Resume(a1);
}

void sub_100221CC4(uint64_t a1, unint64_t a2)
{
  if (!HIBYTE(a2))
  {
    sub_100221D00(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100221D00(uint64_t a1, unint64_t a2)
{
  if (!HIBYTE(a2))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100221D48(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100221DCC(a4, v6);
      v6 += 16;
      a4 += 256;
      v7 -= 256;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_100221DA8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 256;
    do
    {
      v4 = sub_100221F4C(v4) - 256;
      v2 += 256;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100221DCC(uint64_t a1, __int128 *a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, a2 + 2);
  sub_10006F264(a1 + 64, a2 + 4);
  sub_10006F264(a1 + 96, a2 + 6);
  sub_10006F264(a1 + 128, a2 + 8);
  sub_10006F264(a1 + 160, a2 + 10);
  sub_10006F264(a1 + 192, a2 + 12);
  sub_10006F264(a1 + 224, a2 + 14);
  return a1;
}

void sub_100221E4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 216) == 1 && *(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
  }

  if (*(v1 + 184) == 1 && *(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

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

uint64_t sub_100221F4C(uint64_t a1)
{
  if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 216) == 1 && *(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

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

void sub_100222050(void ***a1)
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
        v4 = sub_100221F4C(v4 - 256);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **sub_1002220D4(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0;
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = sub_100005978(result) + 1;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v10 = *a1;
  *a1 = v7;
  *(a1 + 8) = v10;
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_100222180(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_100005978((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1002221D0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100222290(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_100222290((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_100222290((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 3);
  return a1;
}

void sub_100222264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100222314(va);
  sub_100222314(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100222290(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10005B39C(result, a4);
  }

  return result;
}

void sub_100222314(void ***a1)
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
        v4 = sub_100005978(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_100222398(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10005B39C(result, a2);
  }

  return result;
}

void *sub_100222418(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10005B39C(result, a2);
  }

  return result;
}

void sub_100222474(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100222490(uint64_t a1)
{
  if (*(a1 + 384) == 1 && *(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 352) == 1 && *(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  if (*(a1 + 320) == 1 && *(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 288) == 1 && *(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 256) == 1)
  {
    sub_100221F4C(a1);
  }

  return a1;
}

const void **sub_100222538(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **sub_100222570(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_10005C7A4(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_100005978(&v5);
  }

  return a1;
}

void sub_1002225C8(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 4 * a2;
      v17 = *a3;
      v18 = v14 + 4;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1017DF6E0)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1017DF6D0)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_1000CE3D4();
    }

    v9 = v7 >> 2;
    v10 = v5 - *a1;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_100016740(a1, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = 4 * v9 + 4 * a2;
    v25 = *a3;
    v26 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1017DF6E0)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1017DF6D0)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = *(a1 + 8) - *a1;
    v33 = v23 - v32;
    memcpy((v23 - v32), *a1, v32);
    v34 = *a1;
    *a1 = v33;
    *(a1 + 8) = v24;
    *(a1 + 16) = 0;
    if (v34)
    {

      operator delete(v34);
    }
  }
}

void sub_100222890(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[4], v1, sub_100222964);
  __cxa_rethrow();
}

void sub_1002228D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100222924(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100222964(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100222990(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFStringGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

void sub_1002229FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100222B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100101814(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100222B9C(uint64_t a1)
{
  sub_100224AF4((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_100222BDC(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100222C14(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100222C58(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_100222D50(a1, v3);
}

void sub_100222D20(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100222D50(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_100222E4C(a1, a2);
}

void sub_100222E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100222EE4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_100222F28(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_100222F6C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_10022324C(a1, a2, 1, 2);
}

void sub_100223090(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1002232E4(&v2, a2);
}

uint64_t sub_1002230F0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100223134(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100222EE4(a1);
  result = sub_1002241D0(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_100222F28(v10 + 2);
        sub_100223914(v15, a2);
        v10 = v22;
      }

      if (*(sub_100222F28(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100222EE4(a1);
        v18 = sub_1002241D0(v17);
        v19 = sub_100222F28(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_100222EE4(a1);
      result = sub_1002241D0(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

atomic_uint **sub_10022324C(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100222EE4(a1);
  v10 = sub_1002241D0(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100222EE4(a1);
    v11 = *(sub_1002241D0(v12) + 8);
  }

  v14 = v11;
  return sub_100223134(a1, a2, a3, &v14, a4);
}

void sub_1002232E4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100223350(&v2);
}

void sub_1002233C0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100223400(uint64_t result)
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

uint64_t sub_10022351C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002236A4(a1, a2);
  sub_100223710((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_1002236A4(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_100223710(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100223778(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002237E4(&v2);
}

void sub_100223854(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100223894(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_100223914(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100223980(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_100223980(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002239C4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E32168;
  operator new();
}

void sub_100223AD4(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_100223B3C(uint64_t a1)
{
  sub_100223EE8(a1);

  operator delete();
}

uint64_t sub_100223B74(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_100223F60(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_100223C20(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100223C50(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_100223C7C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_100223CA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_100223D00(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100223D6C(&v2);
}

void sub_100223DDC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100223E04(v1);
  __cxa_rethrow();
}

uint64_t sub_100223E04(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100224AF4((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100223E78(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100224AF4((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100223EE8(uint64_t a1)
{
  *a1 = off_101E32168;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_100223F60(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100223980(result + 4); ; i += 6)
    {
      result = sub_100223980(v2);
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

void sub_100224048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_100224068(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002240D4(&v2);
}

void sub_100224144(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_100224188(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1002241D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_100224214(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    v5 = *a1;
  }

  else
  {
    v5 = v3;
  }

  dispatch_retain(v5);
  return a1;
}

void (***sub_100224268(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100224A3C(v4, result);
    sub_100224A3C(v3, a2);
    sub_100224A3C(a2, v4);
    return sub_100224AF4(v4);
  }

  return result;
}

uint64_t sub_1002242E4(uint64_t result, _WORD *a2, int a3)
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
      sub_100222BDC(result);
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
  if (result != ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1002243E0(void *a1, __int128 *a2, uint64_t a3)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v10 = *(a2 + 2);
  }

  sub_1002249D4(v8, a3);
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v13 = v6;
    v14 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  else
  {
    v13 = v4[2];
    v14 = 0;
  }

  v11 = off_101E322B0;
  v12 = v5;
  sub_100224558();
}

void sub_100224510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100224AF4((v67 - 80));
  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  if (a66)
  {
    sub_100220C2C(&a9);
  }

  if (*(v67 - 89) < 0)
  {
    operator delete(*(v67 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002246F4(uint64_t a1)
{
  sub_1002247B4(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100224AF4(v2);
    operator delete();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  result = *(a1 + 48);
  if (result)
  {
    if (*(result + 456) == 1)
    {
      sub_100220C2C(result);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1002247B4(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_10022484C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN21ThumperPrimaryControl10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN21ThumperPrimaryControl10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_100224930(uint64_t *a1, void *a2, _BYTE *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v7 = *a1;
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[1])
      {
        sub_100217A24(v7, a2, a3);
      }

      sub_100004A34(v9);
    }
  }
}

_BYTE *sub_1002249D4(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[456] = 0;
  if (*(a2 + 456) == 1)
  {
    sub_1002217D8(a1, a2);
    a1[456] = 1;
  }

  return a1;
}

void sub_100224A1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 456) == 1)
  {
    sub_100220C2C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100224A3C(uint64_t result, uint64_t a2)
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

void sub_100224AD0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_100224AF4(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
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

uint64_t sub_100224B44(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100102EC0(a1, a2);
  }

  else
  {
    sub_100102FF0(a1[1], a2);
    result = v3 + 24;
    a1[1] = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_100224B98(void *a1)
{
  *a1 = off_101E322E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100224BE4(void *a1)
{
  *a1 = off_101E322E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_100224C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_100224D00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100224DA4(void *a1)
{
  *a1 = off_101E32330;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100224DF0(void *a1)
{
  *a1 = off_101E32330;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_100224EC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10022500C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100101814(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100225068(uint64_t a1)
{
  sub_100226D24((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_1002250A8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002250EC(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_1002251E4(a1, v3);
}

void sub_1002251B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002251E4(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_1002252E0(a1, a2);
}

void sub_1002252C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100225378(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1002253BC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_100225400(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1002256E0(a1, a2, 1, 2);
}

void sub_100225524(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100225778(&v2, a2);
}

uint64_t sub_100225584(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1002255C8(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100225378(a1);
  result = sub_100226664(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1002253BC(v10 + 2);
        sub_100225DA8(v15, a2);
        v10 = v22;
      }

      if (*(sub_1002253BC(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100225378(a1);
        v18 = sub_100226664(v17);
        v19 = sub_1002253BC(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_100225378(a1);
      result = sub_100226664(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

atomic_uint **sub_1002256E0(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100225378(a1);
  v10 = sub_100226664(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100225378(a1);
    v11 = *(sub_100226664(v12) + 8);
  }

  v14 = v11;
  return sub_1002255C8(a1, a2, a3, &v14, a4);
}

void sub_100225778(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002257E4(&v2);
}

void sub_100225854(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100225894(uint64_t result)
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

uint64_t sub_1002259B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100225B38(a1, a2);
  sub_100225BA4((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_100225B38(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_100225BA4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100225C0C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100225C78(&v2);
}

void sub_100225CE8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100225D28(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_100225DA8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100225E14(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_100225E14(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100225E58(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E32430;
  operator new();
}

void sub_100225F68(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_100225FD0(uint64_t a1)
{
  sub_10022637C(a1);

  operator delete();
}

uint64_t sub_100226008(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1002263F4(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1002260B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002260E4(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_100226110(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_10022613C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_100226194(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100226200(&v2);
}

void sub_100226270(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100226298(v1);
  __cxa_rethrow();
}

uint64_t sub_100226298(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100226D24((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10022630C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100226D24((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10022637C(uint64_t a1)
{
  *a1 = off_101E32430;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1002263F4(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100225E14(result + 4); ; i += 6)
    {
      result = sub_100225E14(v2);
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

void sub_1002264DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1002264FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100226568(&v2);
}

void sub_1002265D8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10022661C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100226664(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_1002266A8(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100226C6C(v4, result);
    sub_100226C6C(v3, a2);
    sub_100226C6C(a2, v4);
    return sub_100226D24(v4);
  }

  return result;
}

uint64_t sub_100226724(uint64_t result, _WORD *a2, int a3)
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
      sub_100222BDC(result);
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
  if (result != ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_100226820(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  v7 = *a4;
  v6 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v9;
    v18 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    v17 = v5[2];
    v18 = 0;
  }

  v15 = off_101E32558;
  v16 = v8;
  v13 = v7;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005A42F8();
}

void sub_100226974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100226D24(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002269BC(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_100226A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100226A78(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN21ThumperPrimaryControl10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN21ThumperPrimaryControl10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_100226B5C(uint64_t *a1, void *a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100217D2C(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_100226C3C(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100226C6C(uint64_t result, uint64_t a2)
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

void sub_100226D00(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_100226D24(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
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

void sub_100226D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100226EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100101814(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100226F14(uint64_t a1)
{
  sub_100228BD0((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_100226F54(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100226F98(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_100227090(a1, v3);
}

void sub_100227060(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100227090(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_10022718C(a1, a2);
}

void sub_100227174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100227224(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_100227268(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_1002272AC(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_10022758C(a1, a2, 1, 2);
}

void sub_1002273D0(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100227624(&v2, a2);
}

uint64_t sub_100227430(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100227474(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100227224(a1);
  result = sub_100228510(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_100227268(v10 + 2);
        sub_100227C54(v15, a2);
        v10 = v22;
      }

      if (*(sub_100227268(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100227224(a1);
        v18 = sub_100228510(v17);
        v19 = sub_100227268(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_100227224(a1);
      result = sub_100228510(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

atomic_uint **sub_10022758C(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100227224(a1);
  v10 = sub_100228510(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100227224(a1);
    v11 = *(sub_100228510(v12) + 8);
  }

  v14 = v11;
  return sub_100227474(a1, a2, a3, &v14, a4);
}

void sub_100227624(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100227690(&v2);
}

void sub_100227700(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100227740(uint64_t result)
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

uint64_t sub_10022785C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002279E4(a1, a2);
  sub_100227A50((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_1002279E4(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_100227A50(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100227AB8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100227B24(&v2);
}

void sub_100227B94(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100227BD4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_100227C54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100227CC0(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_100227CC0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100227D04(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E32648;
  operator new();
}

void sub_100227E14(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_100227E7C(uint64_t a1)
{
  sub_100228228(a1);

  operator delete();
}

uint64_t sub_100227EB4(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1002282A0(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_100227F60(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100227F90(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_100227FBC(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_100227FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_100228040(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002280AC(&v2);
}

void sub_10022811C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100228144(v1);
  __cxa_rethrow();
}

uint64_t sub_100228144(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100228BD0((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1002281B8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100228BD0((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100228228(uint64_t a1)
{
  *a1 = off_101E32648;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1002282A0(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100227CC0(result + 4); ; i += 6)
    {
      result = sub_100227CC0(v2);
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

void sub_100228388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1002283A8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100228414(&v2);
}

void sub_100228484(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1002284C8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100228510(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_100228554(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100228B18(v4, result);
    sub_100228B18(v3, a2);
    sub_100228B18(a2, v4);
    return sub_100228BD0(v4);
  }

  return result;
}

uint64_t sub_1002285D0(uint64_t result, _WORD *a2, int a3)
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
      sub_100222BDC(result);
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
  if (result != ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1002286CC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  v7 = *a4;
  v6 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v9;
    v18 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    v17 = v5[2];
    v18 = 0;
  }

  v15 = off_101E32770;
  v16 = v8;
  v13 = v7;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005A4A60();
}

void sub_100228820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100228BD0(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100228868(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1002288FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100228924(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN21ThumperPrimaryControl10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN21ThumperPrimaryControl10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_100228A08(uint64_t *a1, void *a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10021815C(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_100228AE8(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100228B18(uint64_t result, uint64_t a2)
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

void sub_100228BAC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_100228BD0(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
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

void sub_100228C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100228D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100101814(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100228DC0(uint64_t a1)
{
  sub_10022AD58((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_100228E00(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100228E44(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_100228F3C(a1, v3);
}

void sub_100228F0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100228F3C(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_100229038(a1, a2);
}

void sub_100229020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002290D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_100229114(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_100229158(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_100229438(a1, a2, 1, 2);
}

void sub_10022927C(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1002294D0(&v2, a2);
}

uint64_t sub_1002292DC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100229320(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1002290D0(a1);
  result = sub_10022A3BC(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_100229114(v10 + 2);
        sub_100229B00(v15, a2);
        v10 = v22;
      }

      if (*(sub_100229114(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1002290D0(a1);
        v18 = sub_10022A3BC(v17);
        v19 = sub_100229114(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_1002290D0(a1);
      result = sub_10022A3BC(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

atomic_uint **sub_100229438(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_1002290D0(a1);
  v10 = sub_10022A3BC(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1002290D0(a1);
    v11 = *(sub_10022A3BC(v12) + 8);
  }

  v14 = v11;
  return sub_100229320(a1, a2, a3, &v14, a4);
}

void sub_1002294D0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10022953C(&v2);
}

void sub_1002295AC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1002295EC(uint64_t result)
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

uint64_t sub_100229708(uint64_t a1, uint64_t a2)
{
  v4 = sub_100229890(a1, a2);
  sub_1002298FC((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_100229890(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_1002298FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100229964(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002299D0(&v2);
}

void sub_100229A40(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100229A80(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_100229B00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100229B6C(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_100229B6C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100229BB0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E32860;
  operator new();
}

void sub_100229CC0(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_100229D28(uint64_t a1)
{
  sub_10022A0D4(a1);

  operator delete();
}

uint64_t sub_100229D60(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_10022A14C(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_100229E0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100229E3C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_100229E68(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_100229E94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_100229EEC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100229F58(&v2);
}

void sub_100229FC8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100229FF0(v1);
  __cxa_rethrow();
}

uint64_t sub_100229FF0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10022AD58((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10022A064(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10022AD58((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10022A0D4(uint64_t a1)
{
  *a1 = off_101E32860;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_10022A14C(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100229B6C(result + 4); ; i += 6)
    {
      result = sub_100229B6C(v2);
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

void sub_10022A234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_10022A254(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10022A2C0(&v2);
}

void sub_10022A330(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10022A374(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10022A3BC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_10022A400(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_10022ACA0(v4, result);
    sub_10022ACA0(v3, a2);
    sub_10022ACA0(a2, v4);
    return sub_10022AD58(v4);
  }

  return result;
}

uint64_t sub_10022A47C(uint64_t result, _WORD *a2, int a3)
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
      sub_100222BDC(result);
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
  if (result != ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_3EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_3EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_10022A578(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  v7 = *a4;
  v6 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v9;
    v18 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    v17 = v5[2];
    v18 = 0;
  }

  v15 = off_101E329A8;
  v16 = v8;
  v13 = v7;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10022A714();
}

void sub_10022A6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_10022AD58(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10022A8DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = **(a1 + 48);
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10022A9F0(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    sub_10022AD58(v7);
    operator delete();
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = *(a1 + 48);
  if (result)
  {
    operator delete();
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_10022A9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022A9F0(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_10022AA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022AAAC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN21ThumperPrimaryControl10initializeEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN21ThumperPrimaryControl10initializeEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_10022AB90(uint64_t *a1, void *a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100215CCC(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_10022AC70(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10022ACA0(uint64_t result, uint64_t a2)
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

void sub_10022AD34(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_10022AD58(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
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

void sub_10022ADA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10022AEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100101814(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10022AF48(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_10022AF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022B114(a1, a2);
  sub_10022B180((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_10022B114(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_10022B180(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_10022B1E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10022B254(&v2);
}

void sub_10022B2C4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_10022B304(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_10022B384(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1003517A4(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

void sub_10022B3F0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E32A50;
  operator new();
}

void sub_10022B500(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_10022B568(uint64_t a1)
{
  sub_10022B72C(a1);

  operator delete();
}

uint64_t sub_10022B5A0(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_10022B7A4(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_10022B64C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10022B67C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_10022B6A8(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_10022B6D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_10022B72C(uint64_t a1)
{
  *a1 = off_101E32A50;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_10022B7A4(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_1003517A4(result + 4); ; i += 6)
    {
      result = sub_1003517A4(v2);
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

void sub_10022B88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_10022B8AC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10022B918(&v2);
}

void sub_10022B988(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10022B9CC(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10022BA14(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_10022BA58(uint64_t result, _WORD *a2, int a3)
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
      sub_100222BDC(result);
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
  if (result != ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_4EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_4EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_10022BB54(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = v4;
    v11 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  else
  {
    v10 = v4;
    v11 = 0;
  }

  v8 = off_101E32B30;
  v9 = v3;
  sub_100351C78();
}

void sub_10022BC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void (**a16)(void, void, uint64_t))
{
  sub_100352130(&a16);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10022BC84(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN21ThumperPrimaryControl10initializeEvE3$_4" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN21ThumperPrimaryControl10initializeEvE3$_4" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_10022BD68(uint64_t *a1, void *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[1])
      {
        sub_10021760C(v5, a2);
      }

      sub_100004A34(v7);
    }
  }
}

void *sub_10022BDF8(void *a1)
{
  *a1 = off_101E32B60;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10022BE44(void *a1)
{
  *a1 = off_101E32B60;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10022BF24(uint64_t result, uint64_t a2)
{
  *a2 = off_101E32B60;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10022BF64(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10022BF74(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10022BFB4(uint64_t a1, cellplan::RemoteSimSubscriptionInfo *a2)
{
  sub_10022C090(*(a1 + 8), a2);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 16);
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 24))
      {
        sub_100212DBC(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_10022C044(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10022C090(_BYTE *a1, cellplan::RemoteSimSubscriptionInfo *a2)
{
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    sub_100220B4C(a1);
  }

  else
  {
    if ((*a1 & 1) == 0)
    {
      v8 = 0;
      v11 = 0;
      v14 = 0;
      v5[1] = 0;
      v6 = 0;
      v5[0] = 0;
      v7 = 0;
      sub_10022C1D0(a1, v5);
      if (v11 == 1)
      {
        if (v13 < 0)
        {
          operator delete(__p);
        }

        v11 = 0;
      }

      if (v8 == 1)
      {
        if (v10 < 0)
        {
          operator delete(v9);
        }

        v8 = 0;
      }

      if (SHIBYTE(v6) < 0)
      {
        operator delete(v5[0]);
      }

      if ((*a1 & 1) == 0)
      {
        sub_101761304();
      }
    }

    cellplan::read_rest_value((a1 + 8), a2, v4);
  }
}

void sub_10022C1D0(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    v4 = *a2;
    *(a1 + 24) = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    *(a1 + 32) = *(a2 + 24);
    sub_10016E3EC(a1 + 40, a2 + 32);
    sub_10016E3EC(a1 + 72, a2 + 64);
    *(a1 + 104) = *(a2 + 96);
  }

  else
  {

    sub_10022C27C(a1, a2);
  }
}

uint64_t sub_10022C27C(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 24) = *(a2 + 2);
  *(result + 8) = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(result + 32) = *(a2 + 6);
  *(result + 40) = 0;
  if (*(a2 + 32) == 1)
  {
    v3 = *(a2 + 40);
    *(result + 64) = *(a2 + 7);
    *(result + 48) = v3;
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    *(a2 + 5) = 0;
    *(result + 40) = 1;
  }

  *(result + 72) = 0;
  if (*(a2 + 64) == 1)
  {
    v4 = *(a2 + 72);
    *(result + 96) = *(a2 + 11);
    *(result + 80) = v4;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 9) = 0;
    *(result + 72) = 1;
  }

  *(result + 104) = *(a2 + 24);
  *result = 1;
  return result;
}

void sub_10022C380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_10022C424(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022C3A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10022C3E4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10022C424(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 32) == 1)
    {
      v2 = (a2 + 8);
      sub_10022C488(&v2);
    }

    operator delete();
  }
}

void sub_10022C488(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10022C4DC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10022C4DC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 64;
    do
    {
      if (*(v4 + 56) == 1 && *(v4 + 55) < 0)
      {
        operator delete(*(v4 + 32));
      }

      if (*(v4 + 24) == 1 && *(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      if (*(v4 - 8) == 1 && *(v4 - 9) < 0)
      {
        operator delete(*(v4 - 32));
      }

      if (*(v4 - 40) == 1 && *(v4 - 41) < 0)
      {
        operator delete(*(v4 - 64));
      }

      v5 = v4 - 64;
      v4 -= 128;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

void sub_10022C5B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E32C58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_10022C634(uint64_t a1, int *a2)
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

void sub_10022C70C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10022C78C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10022C7A0(va);
  _Unwind_Resume(a1);
}

void ***sub_10022C7A0(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1;
    sub_100222050(&v2);
    operator delete();
  }

  return result;
}

void sub_10022C800(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10022C840(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10022C880(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    sub_100222050(&v2);
    operator delete();
  }
}

void sub_10022C8D4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10022C954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10022C968(va);
  _Unwind_Resume(a1);
}

void ***sub_10022C968(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1;
    sub_100222314(&v2);
    operator delete();
  }

  return result;
}

void sub_10022C9C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10022CA08(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10022CA48(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    sub_100222314(&v2);
    operator delete();
  }
}

uint64_t *sub_10022CA9C(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        sub_10020F318(v3, 0, 0);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_10022CB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_10022CB3C(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
    sub_10001C610(&v5);
    v3 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_10001C0A0(&v7);
  return v3;
}

void sub_10022CC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10022CCE8(uint64_t a1, _DWORD *a2)
{
  a2[7] |= 2u;
  a2[4] = *(a1 + 32);
  result = subscriber::simSlotAsInstance();
  a2[7] |= 4u;
  a2[5] = result;
  return result;
}

BOOL sub_10022CD30(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
    sub_10001C610(&v5);
    v3 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_10001C0A0(&v7);
  return v3;
}

void sub_10022CE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10022CEDC(uint64_t a1, _DWORD *a2)
{
  a2[7] |= 2u;
  a2[4] = *(a1 + 32);
  result = subscriber::simSlotAsInstance();
  a2[7] |= 4u;
  a2[5] = result;
  return result;
}

void sub_10022CF24(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  (*(*(a1 + 32) + 440))(buf, a1 + 32);
  if (*buf)
  {
    (*(*v4 + 440))(&v27, v4);
    v5 = (*(*v27 + 56))(v27, 1);
    if (v28)
    {
      sub_100004A34(v28);
    }
  }

  else
  {
    v5 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v5)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v7 = ServiceMap;
    v9 = v8;
    if (v8 < 0)
    {
      v10 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
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
    v13 = sub_100009510(&v7[1].__m_.__sig, buf);
    if (!v13)
    {
      std::mutex::unlock(v7);
      return;
    }

    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      sub_100004A34(v14);
      if (!v15)
      {
        return;
      }
    }

    else
    {
      std::mutex::unlock(v7);
      if (!v15)
      {
        return;
      }
    }

    sub_100004AA0(buf, (a1 + 40));
    v16 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
    }

    v17 = *(a1 + 72);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "disable";
      if (a2)
      {
        v18 = "enable";
      }

      *buf = 136315394;
      *&buf[4] = "checkAndSetWiFiCallingAttachAPN";
      *&buf[12] = 2080;
      *&buf[14] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: %s WiFi Calling Attach APN if needed", buf, 0x16u);
    }

    v19 = Registry::getServiceMap(*(a1 + 80));
    v20 = v19;
    if (v8 < 0)
    {
      v21 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v8 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v19);
    *buf = v8;
    v24 = sub_100009510(&v20[1].__m_.__sig, buf);
    if (v24 && (v25 = v24[4]) != 0)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
    }

    else
    {
      std::mutex::unlock(v20);
    }

    PersonalitySpecificImpl::simSlot(a1);
    sub_100004AA0(buf, (a1 + 40));
    v26 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
    }

    v29 = 0;
    operator new();
  }
}

void sub_10022D308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B644(va);
  if (v5)
  {
    if (!v3)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_100004A34(v4);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  std::__shared_weak_count::__release_weak(v3);
  goto LABEL_6;
}

void sub_10022D3B4(void **a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  ((*a1)[2])(&v20);
  if (v20 && (*(*a1[21] + 72))(a1[21]))
  {
    (a1[4][55])(buf, a1 + 4);
    if (*buf)
    {
      (a1[4][55])(&v18, a1 + 4);
      if ((*(*v18 + 56))(v18, 1))
      {
        v4 = *(a1 + 158) == 0;
      }

      else
      {
        v4 = 0;
      }

      if (v19)
      {
        sub_100004A34(v19);
      }
    }

    else
    {
      v4 = 0;
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v4)
    {
      ServiceMap = Registry::getServiceMap(a1[10]);
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
LABEL_27:
            if ((v14 & 1) == 0)
            {
              sub_100004A34(v12);
            }

            goto LABEL_29;
          }

LABEL_22:
          v15 = a1[9];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = "enable";
            if (a2)
            {
              v16 = "disable";
            }

            *buf = 136315394;
            *&buf[4] = "checkAndSendSaDisable";
            *&buf[12] = 2080;
            *&buf[14] = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: Sending SA %s to BB", buf, 0x16u);
          }

          v17 = PersonalitySpecificImpl::simSlot(a1);
          (*(*v13 + 424))(v13, v17, a2);
          goto LABEL_27;
        }
      }

      else
      {
        v13 = 0;
      }

      std::mutex::unlock(v6);
      v12 = 0;
      v14 = 1;
      if (!v13)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }
  }

LABEL_29:
  if (v21)
  {
    sub_100004A34(v21);
  }
}

void sub_10022D6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022D73C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  v42[0] = v5;
  v9 = sub_100009510(&v3[1].__m_.__sig, v42);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_20;
  }

LABEL_10:
  v14 = Registry::getServiceMap(*(a1 + 80));
  v15 = v14;
  if (v4 < 0)
  {
    v16 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v4 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v14);
  v42[0] = v4;
  v19 = sub_100009510(&v15[1].__m_.__sig, v42);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      goto LABEL_18;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v15);
  v20 = 0;
LABEL_18:
  v13 = (*(*v21 + 168))(v21, 5);
  if (v20)
  {
    sub_100004A34(v20);
  }

LABEL_20:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v13)
  {
    v22 = Registry::getServiceMap(*(a1 + 80));
    v23 = v22;
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

    std::mutex::lock(v22);
    v42[0] = v24;
    v28 = sub_100009510(&v23[1].__m_.__sig, v42);
    if (!v28)
    {
      std::mutex::unlock(v23);
      return;
    }

    v30 = v28[3];
    v29 = v28[4];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v23);
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
      if (!v30)
      {
LABEL_61:
        sub_100004A34(v29);
        return;
      }
    }

    else
    {
      std::mutex::unlock(v23);
      if (!v30)
      {
        return;
      }
    }

    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *v42 = 0u;
    v31 = PersonalitySpecificImpl::simSlot(a1);
    (*(*v30 + 1088))(v42, v30, v31);
    if (v44 != -1 && BYTE4(v44) == 1)
    {
      sub_1003567A4((a1 + 32), __p);
      v32 = v41;
      if ((v41 & 0x80u) == 0)
      {
        v33 = v41;
      }

      else
      {
        v33 = __p[1];
      }

      v34 = HIBYTE(v43);
      if (v43 < 0)
      {
        v34 = v43;
      }

      if (v33 == v34)
      {
        if ((v41 & 0x80u) == 0)
        {
          v35 = __p;
        }

        else
        {
          v35 = __p[0];
        }

        if (v43 >= 0)
        {
          v36 = &v42[1];
        }

        else
        {
          v36 = v42[1];
        }

        v37 = memcmp(v35, v36, v33) == 0;
      }

      else
      {
        v37 = 0;
      }

      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v37)
      {
        v38 = *(a1 + 72);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          sub_1003567A4((a1 + 32), __p);
          v39 = (v41 & 0x80u) == 0 ? __p : __p[0];
          *buf = 136315394;
          v54 = "handleDataContextIPActivateFailedWithAttachAPN";
          v55 = 2080;
          v56 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: Context activation with handover from AttachAPN params failed for APN: %s", buf, 0x16u);
          if (v41 < 0)
          {
            operator delete(__p[0]);
          }
        }

        BYTE5(v44) = 1;
      }
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42[1]);
    }

    if (v29)
    {
      goto LABEL_61;
    }
  }
}

void sub_10022DB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022DBF0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(**(a1 + 168) + 144))(a2);
  sub_100356744(a1 + 32, &__p);
  v4 = __p.__r_.__value_.__r.__words[0];
  v5 = otherContextType();
  if ((*(*v4 + 496))(v4, v5))
  {
    v6 = 0;
  }

  else
  {
    sub_100356744(a1 + 32, &buf);
    v6 = (*(*buf + 496))(buf, 1) ^ 1;
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_100004A34(__p.__r_.__value_.__l.__size_);
  }

  if (v6)
  {
    v7 = *(a1 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Not in a handover, adding SADelete", &__p, 2u);
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 70040;
    sub_1000C4284(a2, &__p);
  }

  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_10022F988(*a2, a2 + 1, ",", &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = p_p;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I ForceResetErrorCodes: %s", &buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10022DE64(uint64_t a1, int a2)
{
  if (a2 == 70029)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
    __p = v5;
    v9 = sub_100009510(&v4[1].__m_.__sig, &__p);
    if (!v9)
    {
      std::mutex::unlock(v4);
      return;
    }

    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      if (!v11)
      {
LABEL_20:
        sub_100004A34(v10);
        return;
      }
    }

    else
    {
      std::mutex::unlock(v4);
      if (!v11)
      {
        return;
      }
    }

    __p = 0;
    v15 = 0;
    v16 = 0;
    PersonalitySpecificImpl::simSlot(a1);
    PersonalityIdFromSlotIdEx();
    v12 = HIBYTE(v16);
    if (v16 < 0)
    {
      v12 = v15;
    }

    if (v12)
    {
      (*(*v11 + 48))(v11, &__p, 0, 0);
    }

    else
    {
      v13 = *(a1 + 72);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "handleIdentityDecryptionFailure";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: Personality is not recognized", buf, 0xCu);
      }
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    if (v10)
    {
      goto LABEL_20;
    }
  }
}

void sub_10022E058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10022E09C(PersonalitySpecificImpl *a1, int a2, CFStringRef theString)
{
  if (theString)
  {
    value = 0;
    sub_10076BD68(theString, a1, "LocalIdentifier", 0, &value);
    PersonalitySpecificImpl::simSlot(a1);
    PersonalityIdFromSlotIdEx();
    v4 = *(a1 + 9);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "setLocalIdentifier";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Personality is not recognized", buf, 0xCu);
    }

    sub_100005978(&value);
  }

  return 0;
}

void sub_10022E5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, const void *a32)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_100005978(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_10002D760(&a25);
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_100005978(&a32);
  _Unwind_Resume(a1);
}

BOOL sub_10022E67C(uint64_t a1, const __CFArray *a2, int a3)
{
  if ((a3 - 3) <= 0xFFFFFFFD)
  {
    v5 = *(a1 + 72);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    *&buf[4] = "checkAndSetIPAddressFromAttachAPN";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N %s: Invalid IP family specified for request: %s", buf, 0x16u);
    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v9 = ServiceMap;
  v11 = v10;
  if (v10 < 0)
  {
    v12 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
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
  v15 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (!v15)
  {
    v17 = 0;
LABEL_12:
    std::mutex::unlock(v9);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_23;
  }

LABEL_13:
  v20 = Registry::getServiceMap(*(a1 + 80));
  v21 = v20;
  if (v10 < 0)
  {
    v22 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v10 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  std::mutex::lock(v20);
  *buf = v10;
  v25 = sub_100009510(&v21[1].__m_.__sig, buf);
  if (v25)
  {
    v27 = v25[3];
    v26 = v25[4];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v21);
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
      goto LABEL_21;
    }
  }

  else
  {
    v27 = 0;
  }

  std::mutex::unlock(v21);
  v26 = 0;
LABEL_21:
  v19 = (*(*v27 + 168))(v27, 5);
  if (v26)
  {
    sub_100004A34(v26);
  }

LABEL_23:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (!v19)
  {
    return 0;
  }

  v28 = Registry::getServiceMap(*(a1 + 80));
  v29 = v28;
  if (v30 < 0)
  {
    v31 = (v30 & 0x7FFFFFFFFFFFFFFFLL);
    v32 = 5381;
    do
    {
      v30 = v32;
      v33 = *v31++;
      v32 = (33 * v32) ^ v33;
    }

    while (v33);
  }

  std::mutex::lock(v28);
  *buf = v30;
  v34 = sub_100009510(&v29[1].__m_.__sig, buf);
  if (!v34)
  {
    std::mutex::unlock(v29);
    return 0;
  }

  v36 = v34[3];
  v35 = v34[4];
  if (!v35)
  {
    std::mutex::unlock(v29);
    if (v36)
    {
      goto LABEL_35;
    }

    return 0;
  }

  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v29);
  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v35);
  if (!v36)
  {
LABEL_83:
    sub_100004A34(v35);
    return 0;
  }

LABEL_35:
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  *v68 = 0u;
  v69 = 0u;
  memset(buf, 0, sizeof(buf));
  v37 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v36 + 1088))(buf, v36, v37);
  if (*v68 == -1 || (*&v68[8] & a3) == 0)
  {
    v44 = *(a1 + 72);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = "IPv6";
      if (a3 == 1)
      {
        v45 = "IPv4";
      }

      *v62 = 136315394;
      *&v62[4] = "checkAndSetIPAddressFromAttachAPN";
      *&v62[12] = 2080;
      *&v62[14] = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s: Attach LTE parameters not available for %s", v62, 0x16u);
    }

LABEL_80:
    if (buf[31] < 0)
    {
      operator delete(*&buf[8]);
    }

    if (!v35)
    {
      return 0;
    }

    goto LABEL_83;
  }

  if (v68[5])
  {
    goto LABEL_73;
  }

  sub_1003567A4((a1 + 32), v62);
  v38 = SHIBYTE(v63);
  if (v63 >= 0)
  {
    v39 = HIBYTE(v63);
  }

  else
  {
    v39 = *&v62[8];
  }

  v40 = buf[31];
  if ((buf[31] & 0x80u) != 0)
  {
    v40 = *&buf[16];
  }

  if (v39 == v40)
  {
    if (v63 >= 0)
    {
      v41 = v62;
    }

    else
    {
      v41 = *v62;
    }

    if ((buf[31] & 0x80u) == 0)
    {
      v42 = &buf[8];
    }

    else
    {
      v42 = *&buf[8];
    }

    v43 = memcmp(v41, v42, v39) == 0;
  }

  else
  {
    v43 = 0;
  }

  if (v38 < 0)
  {
    operator delete(*v62);
  }

  if (!v43)
  {
LABEL_73:
    v50 = *(a1 + 72);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      sub_1003567A4((a1 + 32), v60);
      v51 = SHIBYTE(v61);
      v52 = v60[0];
      v53 = buf[31];
      v54 = *&buf[8];
      v55 = asStringBool(v68[5]);
      *&v62[4] = "checkAndSetIPAddressFromAttachAPN";
      v56 = &buf[8];
      *v62 = 136315906;
      if (v53 < 0)
      {
        v56 = v54;
      }

      *&v62[12] = 2080;
      v57 = v60;
      if (v51 < 0)
      {
        v57 = v52;
      }

      *&v62[14] = v57;
      v63 = 2080;
      v64 = v56;
      v65 = 2080;
      v66 = v55;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s: APN name mismatch: %s <> %s or previous activation failure: %s", v62, 0x2Au);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60[0]);
      }
    }

    goto LABEL_80;
  }

  v60[0] = 0;
  v60[1] = 0;
  v61 = 0;
  v46 = 116;
  if (a3 == 1)
  {
    v46 = 44;
  }

  CSIPacketAddress::CSIPacketAddress(v60, &buf[v46]);
  v47 = *(a1 + 72);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v48 = "IPv6";
    if (a3 == 1)
    {
      v48 = "IPv4";
    }

    *&v62[4] = "checkAndSetIPAddressFromAttachAPN";
    p_p = __p;
    *v62 = 136315650;
    *&v62[12] = 2080;
    if (v59 >= 0)
    {
      p_p = &__p;
    }

    *&v62[14] = v48;
    v63 = 2080;
    v64 = p_p;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s: WiFi Calling handover with %s: %s", v62, 0x20u);
    if (v59 < 0)
    {
      operator delete(__p);
    }
  }

  sub_1007698B0(a2, v60);
  v68[4] = 1;
  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }

  if (v35)
  {
    sub_100004A34(v35);
  }

  return 1;
}

void sub_10022ECE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022ED7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "getDefaultInterfaceName";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N %s: Wi-Fi interface not set, using en0 for now", &v4, 0xCu);
  }

  *(a2 + 23) = 3;
  *a2 = 3173989;
}

void sub_10022EE34(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, CSIPacketAddress *a5)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v10 = ServiceMap;
  v12 = v11;
  if (v11 < 0)
  {
    v13 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
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
  v16 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (!v16)
  {
    v18 = 0;
LABEL_9:
    std::mutex::unlock(v10);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
  if (!v18)
  {
LABEL_7:
    v20 = 0;
    goto LABEL_20;
  }

LABEL_10:
  v21 = Registry::getServiceMap(*(a1 + 80));
  v22 = v21;
  if (v11 < 0)
  {
    v23 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v24 = 5381;
    do
    {
      v11 = v24;
      v25 = *v23++;
      v24 = (33 * v24) ^ v25;
    }

    while (v25);
  }

  std::mutex::lock(v21);
  *buf = v11;
  v26 = sub_100009510(&v22[1].__m_.__sig, buf);
  if (v26)
  {
    v28 = v26[3];
    v27 = v26[4];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v22);
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v27);
      goto LABEL_18;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v22);
  v27 = 0;
LABEL_18:
  v20 = (*(*v28 + 168))(v28, 5);
  if (v27)
  {
    sub_100004A34(v27);
  }

LABEL_20:
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  if (v20)
  {
    memset(v62, 0, sizeof(v62));
    CSIPacketAddress::CSIPacketAddress(v62);
    __p = 0;
    v60 = 0;
    v61 = 0;
    sub_1003567A4((a1 + 32), &__p);
    v29 = *(a1 + 72);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      if ((a3[23] & 0x80u) == 0)
      {
        v30 = a3;
      }

      else
      {
        v30 = *a3;
      }

      p_p = &__p;
      if (v61 < 0)
      {
        p_p = __p;
      }

      *buf = 136315650;
      *&buf[4] = "attachApnChanged";
      *&buf[12] = 2080;
      *&buf[14] = v30;
      v64 = 2080;
      v65 = p_p;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: AttachAPN parameters: apnName: %s, techApn: %s", buf, 0x20u);
    }

    if (a2 == -1)
    {
      goto LABEL_38;
    }

    v32 = v61 >= 0 ? HIBYTE(v61) : v60;
    v33 = a3[23];
    v34 = (v33 & 0x80u) == 0 ? a3[23] : *(a3 + 1);
    if (v32 > v34)
    {
      goto LABEL_38;
    }

    if ((v33 & 0x80) != 0)
    {
      if (v32 != -1)
      {
        if (*(a3 + 1) >= v32)
        {
          v37 = v32;
        }

        else
        {
          v37 = *(a3 + 1);
        }

        a3 = *a3;
LABEL_54:
        if (v61 >= 0)
        {
          v38 = &__p;
        }

        else
        {
          v38 = __p;
        }

        if (memcmp(a3, v38, v37) || v37 != v32)
        {
LABEL_38:
          v35 = *(a1 + 72);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_41;
          }

          *buf = 136315138;
          *&buf[4] = "attachApnChanged";
          v36 = "#I %s: AttachAPN parameters either not valid or not applicable, ignoring";
          goto LABEL_40;
        }

        if ((*(a1 + 224) & 0xFFFFFFFE) != 2)
        {
          v35 = *(a1 + 72);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
LABEL_41:
            if (SHIBYTE(v61) < 0)
            {
              operator delete(__p);
            }

            return;
          }

          *buf = 136315138;
          *&buf[4] = "attachApnChanged";
          v36 = "#I %s: Context is not active or activating, ignoring";
LABEL_40:
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0xCu);
          goto LABEL_41;
        }

        if (CSIPacketAddress::isZeroIP((a1 + 328)) && CSIPacketAddress::isZeroIP((a1 + 256)))
        {
          v39 = *(a1 + 72);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            CSIPacketAddress::operator std::string();
            CSIPacketAddress::operator std::string();
            v40 = v57;
            if (v58 < 0)
            {
              v40 = v57[0];
            }

            if (v56 >= 0)
            {
              v41 = v55;
            }

            else
            {
              v41 = v55[0];
            }

            *buf = 136315650;
            *&buf[4] = "attachApnChanged";
            *&buf[12] = 2080;
            *&buf[14] = v40;
            v64 = 2080;
            v65 = v41;
            v42 = "#I %s: Context is either still connecting or has no IP address assigned yet, while AttachAPN already has one: IPv4: %s, IPv6: %s";
            v43 = v39;
LABEL_96:
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, v42, buf, 0x20u);
            if (v56 < 0)
            {
              operator delete(v55[0]);
            }

            if (v58 < 0)
            {
              operator delete(v57[0]);
            }
          }
        }

        else
        {
          if (CSIPacketAddress::isZeroIP((a1 + 328)) & 1) != 0 || (CSIPacketAddress::isLinkLocal(a5) & 1) == 0 && (CSIPacketAddress::hasSamePrefix((a1 + 328), a5))
          {
            if (CSIPacketAddress::isZeroIP((a1 + 256)) & 1) != 0 || (CSIPacketAddress::operator==())
            {
              v44 = *(a1 + 72);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "attachApnChanged";
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s: AttachAPN parameters compatible with this context, ignoring", buf, 0xCu);
              }

              sub_100356BE0(a1 + 32, buf);
              v45 = *buf;
              (*(*a1 + 16))(&v53, a1);
              (*(*v45 + 328))(v45, 1, &v53);
              if (v54)
              {
                sub_100004A34(v54);
              }

              if (*&buf[8])
              {
                sub_100004A34(*&buf[8]);
              }

              goto LABEL_41;
            }

            v49 = *(a1 + 72);
            if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_100;
            }

            CSIPacketAddress::operator std::string();
            CSIPacketAddress::operator std::string();
            v50 = v57;
            if (v58 < 0)
            {
              v50 = v57[0];
            }

            if (v56 >= 0)
            {
              v51 = v55;
            }

            else
            {
              v51 = v55[0];
            }

            *buf = 136315650;
            *&buf[4] = "attachApnChanged";
            *&buf[12] = 2080;
            *&buf[14] = v50;
            v64 = 2080;
            v65 = v51;
            v42 = "#I %s: Context has IPv4 address incompatible with AttachAPN address: context: %s, attachAPN: %s";
            v43 = v49;
            goto LABEL_96;
          }

          v46 = *(a1 + 72);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            CSIPacketAddress::operator std::string();
            CSIPacketAddress::operator std::string();
            v47 = v57;
            if (v58 < 0)
            {
              v47 = v57[0];
            }

            if (v56 >= 0)
            {
              v48 = v55;
            }

            else
            {
              v48 = v55[0];
            }

            *buf = 136315650;
            *&buf[4] = "attachApnChanged";
            *&buf[12] = 2080;
            *&buf[14] = v47;
            v64 = 2080;
            v65 = v48;
            v42 = "#I %s: Context has IPv6 address incompatible with AttachAPN address: context: %s, attachAPN: %s";
            v43 = v46;
            goto LABEL_96;
          }
        }

LABEL_100:
        v52 = *(a1 + 72);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "attachApnChanged";
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I %s: AttachAPN parameters became incompatible with this context, treat it as network disconnected", buf, 0xCu);
        }

        sub_1007731C8(a1, *(a1 + 224), 80012);
        goto LABEL_41;
      }
    }

    else if (v32 != -1)
    {
      if (v33 >= v32)
      {
        v37 = v32;
      }

      else
      {
        v37 = a3[23];
      }

      goto LABEL_54;
    }

    sub_10013C334();
  }
}

void sub_10022F5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10022F6AC(void *a1)
{
  *a1 = off_101E32DD8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10022F6F8(void *a1)
{
  *a1 = off_101E32DD8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10022F7D8(uint64_t result, uint64_t a2)
{
  *a2 = off_101E32DD8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10022F818(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10022F828(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10022F868(void *a1)
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
        v6 = *(v3 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315138;
          v8 = "operator()";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: checkAndSetWiFiCallingAttachAPN: new type is pushed", &v7, 0xCu);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10022F93C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10022F988(uint64_t a1@<X0>, void *a2@<X1>, const char *a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  if (a1 != a2)
  {
    v6 = a1;
    std::to_string(&v16, *(a1 + 28));
    v8 = v6[1];
    *a4 = v16;
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
        v9 = v6[2];
        v10 = *v9 == v6;
        v6 = v9;
      }

      while (!v10);
    }

    if (v9 != a2)
    {
      do
      {
        v11 = strlen(a3);
        std::string::append(a4, a3, v11);
        std::to_string(&v16, *(v9 + 7));
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v16;
        }

        else
        {
          v12 = v16.__r_.__value_.__r.__words[0];
        }

        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v16.__r_.__value_.__l.__size_;
        }

        std::string::append(a4, v12, size);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v14 = v9[1];
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
            v15 = v9[2];
            v10 = *v15 == v9;
            v9 = v15;
          }

          while (!v10);
        }

        v9 = v15;
      }

      while (v15 != a2);
    }
  }
}

void sub_10022FABC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022FAE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10022FAC8);
}

void sub_10022FBF8(_Unwind_Exception *exception_object)
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

uint64_t BBDataDriver::BBDataDriver(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, void *a6)
{
  *(a1 + 24) = off_101E348B8;
  *a1 = off_101E34A20;
  PersonalitySpecificImpl::PersonalitySpecificImpl();
  *(a1 + 24) = off_101E33D88;
  *a1 = off_101E341E8;
  sub_1003C1FE0((a1 + 32), off_101E33AE0, a2, a3);
  *a1 = off_101E32E88;
  *(a1 + 24) = off_101E333F8;
  *(a1 + 32) = off_101E33978;
  v11 = sub_100230068(a1);
  ctu::OsLogContext::OsLogContext(&v20, kCtLoggingSystemName, v11);
  sub_1001303E4((a1 + 64), a5, &v20);
  ctu::OsLogContext::~OsLogContext(&v20);
  *a1 = off_101E32E88;
  *(a1 + 24) = off_101E333F8;
  *(a1 + 32) = off_101E33978;
  *(a1 + 104) = *a6;
  v12 = a6[1];
  *(a1 + 112) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v13 = sub_100230068(a1);
  sub_10000501C(&__p, v13);
  v17 = *a5;
  if (*a5)
  {
    dispatch_retain(*a5);
  }

  v14 = *(a1 + 88);
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 184;
  *(a1 + 192) = a1 + 184;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 212) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 217) = 0;
  *(a1 + 228) = -1;
  *(a1 + 236) = -1;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 277) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 377) = 1;
  *(a1 + 379) = 1;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = a1 + 392;
  *(a1 + 408) = 0;
  *(a1 + 412) = 1;
  *(a1 + 416) = 0;
  DataBBResetThrottling::DataBBResetThrottling((a1 + 424));
  *(a1 + 440) = 0;
  *(a1 + 444) = 0;
  return a1;
}

void sub_10022FEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
{
  v24 = v21;
  v34 = v24;
  sub_10006DCAC((v24 + 28), *(v18 + 392));
  v26 = *(v18 + 360);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v18 + 336);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v18 + 320);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v18 + 304);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *v23;
  if (*v23)
  {
    *(v18 + 256) = v30;
    operator delete(v30);
  }

  sub_1000FEFCC(v22);
  v31 = *(v18 + 176);
  *(v18 + 176) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  sub_1002300C0(v34);
  v32 = *(v18 + 152);
  if (v32)
  {
    sub_100004A34(v32);
  }

  sub_1000212F4(&a18);
  v33 = *(v18 + 112);
  if (v33)
  {
    sub_100004A34(v33);
  }

  ctu::OsLogLogger::~OsLogLogger((v18 + 96));
  sub_1000C0544((v18 + 64));
  sub_1003C20D4(v20, off_101E33AE0);
  BBDataDriverInterface::~BBDataDriverInterface(v19);
  PersonalitySpecificImpl::~PersonalitySpecificImpl(v18);
  TMKXPCServer.shutdown()();
  PersonalitySpecific::~PersonalitySpecific(v18);
  _Unwind_Resume(a1);
}
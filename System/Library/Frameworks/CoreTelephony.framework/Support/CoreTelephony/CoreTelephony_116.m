void sub_1007A0A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_1007A0AAC(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) |= 2u;
  v4 = *(a1 + 60);
  *(a2 + 16) = *(a1 + 56);
  result = awd::metrics::CommCenterCellularPlanType_IsValid(v4, a2);
  if ((result & 1) == 0)
  {
    sub_10177E118();
  }

  v6 = *(a2 + 40);
  *(a2 + 32) = v4;
  *(a2 + 20) = *(a1 + 64);
  v7 = *(a1 + 65);
  *(a2 + 40) = v6 | 0x34;
  *(a2 + 21) = v7;
  if ((*(a1 + 55) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 40))
    {
      return result;
    }
  }

  else if (!*(a1 + 55))
  {
    return result;
  }

  *(a2 + 40) = v6 | 0x3C;
  v8 = *(a2 + 24);
  if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v8, (a1 + 32));
}

uint64_t sub_1007A0C18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 28);
  *(a2 + 18) = *(result + 36);
  *(a2 + 16) = *(result + 37);
  v3 = *(result + 38);
  *(a2 + 28) = v2 | 0xE;
  *(a2 + 17) = v3;
  v4 = *(result + 32);
  *(a2 + 28) = v2 | 0x1E;
  *(a2 + 20) = v4;
  return result;
}

uint64_t sub_1007A0C50()
{
  result = sub_10079D818();
  if (result)
  {
    return sub_1007A0CF8(0x800D6);
  }

  return result;
}

BOOL sub_1007A0CF8(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_1007A0E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A0EB8(uint64_t result, uint64_t a2)
{
  *(a2 + 28) |= 2u;
  v2 = *(a2 + 16);
  if (!v2)
  {
    operator new();
  }

  v3 = *(v2 + 48);
  *(v2 + 24) = *(result + 36);
  v4 = *(result + 37);
  *(v2 + 48) = v3 | 0xC;
  *(v2 + 25) = v4;
  v5 = *(result + 32);
  *(v2 + 48) = v3 | 0x1C;
  *(v2 + 28) = v5;
  return result;
}

uint64_t sub_1007A0F64()
{
  result = sub_10079D818();
  if (result)
  {
    return sub_1007A1034(0x80133);
  }

  return result;
}

BOOL sub_1007A1034(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_1007A1174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A11F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *(a2 + 52) |= 2u;
  v5 = *(a2 + 16);
  if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v5, v4);
  v6 = *(a1 + 48);
  if ((awd::metrics::CommCenterCellularPlanType_IsValid(v6, v7) & 1) == 0)
  {
    sub_10177E144();
  }

  v9 = *(a2 + 52);
  *(a2 + 24) = v6;
  *(a2 + 40) = *(a1 + 60);
  v10 = *(a1 + 40);
  *(a2 + 52) = v9 | 0x1C;
  *(a2 + 32) = v10;
  v11 = *(a1 + 52);
  if ((awd::metrics::CommCenterCellularPlanInstallType_IsValid(v11, v8) & 1) == 0)
  {
    sub_10177E170();
  }

  *(a2 + 52) |= 0x20u;
  *(a2 + 28) = v11;
  v13 = *(a1 + 56);
  result = awd::metrics::CommCenterCellularPlanMonitorModeType_IsValid(v13, v12);
  if ((result & 1) == 0)
  {
    sub_10177E19C();
  }

  v15 = *(a2 + 52);
  *(a2 + 44) = v13;
  v16 = *(a1 + 61);
  *(a2 + 52) = v15 | 0xC0;
  *(a2 + 41) = v16;
  return result;
}

uint64_t sub_1007A12F4()
{
  result = sub_10079D818();
  if (result)
  {
    return sub_1007A13F4(0x80126);
  }

  return result;
}

BOOL sub_1007A13F4(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_1007A1534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A15B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);
  *(a2 + 16) = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = v4 | 0xE;
  *(a2 + 100) = v4 | 0xE;
  *(a2 + 32) = v5;
  v7 = *(a1 + 32);
  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = *(v7 + 8);
  }

  if (v8)
  {
    *(a2 + 100) = v4 | 0x1E;
    v9 = *(a2 + 24);
    if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v9, v7);
    v6 = *(a2 + 100);
  }

  *(a2 + 36) = *(a1 + 92);
  v10 = *(a1 + 40);
  *(a2 + 100) = v6 | 0x60;
  v11 = *(a2 + 40);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v12 = *(a1 + 48);
  *(a2 + 100) |= 0x80u;
  v13 = *(a2 + 48);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v14 = *(a1 + 56);
  *(a2 + 100) |= 0x100u;
  v15 = *(a2 + 56);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v16 = *(a1 + 64);
  *(a2 + 100) |= 0x200u;
  v17 = *(a2 + 64);
  if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v18 = *(a2 + 100);
  *(a2 + 80) = *(a1 + 96);
  v19 = *(a1 + 72);
  *(a2 + 100) = v18 | 0xC00;
  v20 = *(a2 + 72);
  if (v20 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v20, v19);
  v21 = *(a2 + 100);
  v22 = *(a1 + 104);
  *(a2 + 84) = *(a1 + 100);
  v23 = *(a1 + 108);
  *(a2 + 100) = v21 | 0x3000;
  *(a2 + 92) = v23;
  result = awd::metrics::CommCenterCellularPlanInternetTransport_IsValid(v22, v24);
  if ((result & 1) == 0)
  {
    sub_10177E1C8();
  }

  v26 = *(a2 + 100);
  *(a2 + 88) = v22;
  v27 = *(a1 + 109);
  *(a2 + 100) = v26 | 0xC000;
  *(a2 + 93) = v27;
  return result;
}

void sub_1007A17E4(uint64_t a1, int a2, int a3, char a4, char a5, char a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, __int16 a12, int a13, int a14, __int128 *a15, int a16, char a17, char a18, int a19, __int128 *a20, __int128 *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int128 *a27, char a28, __int128 *a29, __int128 *a30, __int128 *a31, __int128 *a32)
{
  if (sub_10079D818())
  {
    v67 = a16;
    v68 = a2;
    v69 = a3;
    v75 = a4;
    v76 = a5;
    v77 = a7;
    v78 = a6;
    v79 = a8;
    v80 = a9;
    v70 = a14;
    v71 = a10;
    v72 = a11;
    sub_10006F264(&v39, a15);
    v81 = a12;
    v82 = a17;
    v83 = a18;
    v73 = a19;
    sub_10006F264(&v42, a20);
    sub_10006F264(&v45, a21);
    v48 = a23;
    v49 = a24;
    v50 = a22;
    v51 = a25;
    v74 = a26;
    sub_10006F264(&v52, a27);
    v84 = a28;
    sub_10006F264(&v55, a29);
    sub_10006F264(&v58, a30);
    sub_10006F264(&v61, a31);
    sub_10006F264(&__p, a32);
    sub_1007A1BB8(0x80127);
    if (v66 == 1 && v65 < 0)
    {
      operator delete(__p);
    }

    if (v63 == 1 && v62 < 0)
    {
      operator delete(v61);
    }

    if (v60 == 1 && v59 < 0)
    {
      operator delete(v58);
    }

    if (v57 == 1 && v56 < 0)
    {
      operator delete(v55);
    }

    if (v54 == 1 && v53 < 0)
    {
      operator delete(v52);
    }

    if (v47 == 1 && v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }
  }
}

void sub_1007A1A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62, void *a63)
{
  if (a73 == 1 && a72 < 0)
  {
    operator delete(__p);
  }

  if (a69 == 1 && a68 < 0)
  {
    operator delete(a63);
  }

  if (a62 == 1 && a61 < 0)
  {
    operator delete(a56);
  }

  if (a55 == 1 && a54 < 0)
  {
    operator delete(a49);
  }

  if (a48 == 1 && a47 < 0)
  {
    operator delete(a42);
  }

  if (a37 == 1 && a36 < 0)
  {
    operator delete(a31);
  }

  if (a30 == 1 && a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 == 1 && a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1007A1BB8(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_1007A1CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_1007A1D78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5)
  {
    *(a2 + 188) |= 2u;
    v6 = *(a2 + 16);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v6, v4);
  }

  v7 = *(a1 + 328);
  if ((awd::metrics::CommCenterCellularPlanInternetTransport_IsValid(v7, a2) & 1) == 0)
  {
    sub_10177E1F4();
  }

  v9 = *(a2 + 188);
  *(a2 + 76) = v7;
  *(a2 + 24) = *(a1 + 332);
  *(a2 + 32) = *(a1 + 368);
  *(a2 + 33) = *(a1 + 369);
  *(a2 + 34) = 0;
  v10 = *(a1 + 370);
  *(a2 + 188) = v9 | 0x4017C;
  *(a2 + 56) = v10;
  if ((awd::metrics::CommCenterCellularPlanType_IsValid(0, v8) & 1) == 0)
  {
    sub_10177E220();
  }

  v12 = *(a2 + 188);
  *(a2 + 36) = 0;
  *(a2 + 35) = *(a1 + 371);
  *(a2 + 57) = *(a1 + 372);
  v13 = *(a1 + 373);
  *(a2 + 188) = v12 | 0x4A80;
  *(a2 + 58) = v13;
  v14 = *(a1 + 340);
  if ((awd::metrics::CommCenterCellularPlanTransferPlanSource_IsValid(v14, v11) & 1) == 0)
  {
    sub_10177E24C();
  }

  v16 = *(a2 + 188);
  v17 = v16 | 0x10000;
  *(a2 + 188) = v16 | 0x10000;
  *(a2 + 72) = v14;
  if (*(a1 + 348) == 1)
  {
    v18 = *(a1 + 344);
    v17 = v16 | 0x11000;
    *(a2 + 188) = v16 | 0x11000;
    *(a2 + 48) = v18;
  }

  if (*(a1 + 356) == 1)
  {
    v17 |= 0x2000u;
    *(a2 + 52) = *(a1 + 352);
  }

  if (*(a1 + 64) == 1)
  {
    *(a2 + 188) = v17 | 0x20000;
    v19 = *(a2 + 64);
    if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v19, (a1 + 40));
    v17 = *(a2 + 188);
  }

  if (*(a1 + 375) == 1)
  {
    v17 |= 0x8000u;
    *(a2 + 60) = *(a1 + 374);
  }

  *(a2 + 59) = *(a1 + 376);
  v20 = *(a1 + 377);
  *(a2 + 188) = v17 | 0x180000;
  *(a2 + 128) = v20;
  v21 = *(a1 + 360);
  *(a2 + 188) = v17 | 0x380000;
  *(a2 + 88) = v21;
  if (*(a1 + 96) == 1)
  {
    *(a2 + 188) = v17 | 0x780000;
    v22 = *(a2 + 80);
    if (v22 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v22, (a1 + 72));
  }

  if (*(a1 + 128) == 1)
  {
    *(a2 + 188) |= 0x800000u;
    v23 = *(a2 + 96);
    if (v23 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v23, (a1 + 104));
  }

  v24 = *(a1 + 136);
  v25 = *(v24 + 23);
  if (v25 < 0)
  {
    v25 = *(v24 + 8);
  }

  if (v25)
  {
    *(a2 + 188) |= 0x4000000u;
    v26 = *(a2 + 112);
    if (v26 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v26, v24);
  }

  v27 = *(a1 + 144);
  if (*(v27 + 4) == 1)
  {
    v28 = *v27;
    *(a2 + 188) |= 0x1000000u;
    *(a2 + 92) = v28;
  }

  v29 = *(a1 + 152);
  if (*(v29 + 8) == 1)
  {
    v30 = *v29;
    *(a2 + 188) |= 0x2000000u;
    *(a2 + 104) = v30;
  }

  v31 = *(a1 + 160);
  if (*(v31 + 8) == 1)
  {
    v32 = *v31;
    *(a2 + 188) |= 0x8000000u;
    *(a2 + 120) = v32;
  }

  v33 = *(a1 + 364);
  result = awd::metrics::CommCenterCellularPlanTransferFlowType_IsValid(v33, v15);
  if ((result & 1) == 0)
  {
    sub_10177E278();
  }

  v35 = *(a2 + 188) | 0x40000000;
  *(a2 + 188) = v35;
  *(a2 + 132) = v33;
  if (*(a1 + 192) == 1)
  {
    *(a2 + 192) |= 1u;
    v36 = *(a2 + 144);
    if (v36 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v36, (a1 + 168));
    v35 = *(a2 + 188);
  }

  v37 = *(a1 + 378);
  *(a2 + 188) = v35 | 0x80000000;
  *(a2 + 130) = v37;
  if (*(a1 + 224) == 1)
  {
    *(a2 + 192) |= 2u;
    v38 = *(a2 + 152);
    if (v38 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v38, (a1 + 200));
  }

  if (*(a1 + 256) == 1)
  {
    *(a2 + 192) |= 4u;
    v39 = *(a2 + 160);
    if (v39 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v39, (a1 + 232));
  }

  if (*(a1 + 288) == 1)
  {
    *(a2 + 192) |= 8u;
    v40 = *(a2 + 168);
    if (v40 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v40, (a1 + 264));
  }

  if (*(a1 + 320) == 1)
  {
    *(a2 + 192) |= 0x10u;
    v41 = *(a2 + 176);
    if (v41 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    return std::string::operator=(v41, (a1 + 296));
  }

  return result;
}

uint64_t sub_1007A226C(uint64_t a1, uint64_t a2)
{
  sub_10006F264(a1 + 40, (a2 + 40));
  sub_10006F264(a1 + 72, (a2 + 72));
  sub_10006F264(a1 + 104, (a2 + 104));
  sub_10006F264(a1 + 168, (a2 + 168));
  sub_10006F264(a1 + 200, (a2 + 200));
  sub_10006F264(a1 + 232, (a2 + 232));
  sub_10006F264(a1 + 264, (a2 + 264));
  return sub_10006F264(a1 + 296, (a2 + 296));
}

void sub_1007A22F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 288) == 1 && *(v1 + 287) < 0)
  {
    operator delete(*(v1 + 264));
  }

  if (*(v1 + 256) == 1 && *(v1 + 255) < 0)
  {
    operator delete(*(v1 + 232));
  }

  if (*(v1 + 224) == 1 && *(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 192) == 1 && *(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 128) == 1 && *(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 96) == 1 && *(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 64) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A23F0(uint64_t a1)
{
  if (*(a1 + 320) == 1 && *(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 288) == 1 && *(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

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

  if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void sub_1007A2508(uint64_t a1, __int128 *a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8, char a9, uint64_t a10, int a11, __int128 *a12, uint64_t a13, uint64_t a14, __int128 *a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int128 *a20, char a21, char a22, __int128 *a23, __int128 *a24, __int128 *a25, __int128 *a26)
{
  if (sub_10079D818())
  {
    sub_10006F264(&v33, a2);
    v62 = a11;
    v36 = a3;
    v66 = a4;
    v67 = a5;
    v68 = a6;
    v69 = a7;
    v70 = a8;
    v71 = a9;
    v63 = a10;
    sub_10006F264(&v37, a12);
    v40 = a13;
    v41 = a14;
    sub_10006F264(&v42, a15);
    v64 = a16;
    v45 = a17;
    v46 = a18;
    v65 = a19;
    sub_10006F264(&v47, a20);
    v72 = a21;
    v73 = a22;
    sub_10006F264(&v50, a23);
    sub_10006F264(&v53, a24);
    sub_10006F264(&v56, a25);
    sub_10006F264(&__p, a26);
    sub_1007A28C0(0x80151);
    if (v61 == 1 && v60 < 0)
    {
      operator delete(__p);
    }

    if (v58 == 1 && v57 < 0)
    {
      operator delete(v56);
    }

    if (v55 == 1 && v54 < 0)
    {
      operator delete(v53);
    }

    if (v52 == 1 && v51 < 0)
    {
      operator delete(v50);
    }

    if (v49 == 1 && v48 < 0)
    {
      operator delete(v47);
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }
  }
}

void sub_1007A279C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  if (a73 == 1 && a72 < 0)
  {
    operator delete(__p);
  }

  if (a70 == 1 && a69 < 0)
  {
    operator delete(a64);
  }

  if (a63 == 1 && a62 < 0)
  {
    operator delete(a57);
  }

  if (a56 == 1 && a55 < 0)
  {
    operator delete(a50);
  }

  if (a49 == 1 && a48 < 0)
  {
    operator delete(a43);
  }

  if (a40 == 1 && a39 < 0)
  {
    operator delete(a34);
  }

  if (a31 == 1 && a30 < 0)
  {
    operator delete(a25);
  }

  if (a23 == 1 && a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1007A28C0(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_1007A2A00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_1007A2A80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5)
  {
    *(a2 + 144) |= 2u;
    v6 = *(a2 + 16);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v6, v4);
  }

  if (*(a1 + 64) == 1)
  {
    *(a2 + 144) |= 0x400u;
    v7 = *(a2 + 40);
    if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v7, (a1 + 40));
  }

  v8 = *(a1 + 336);
  if ((awd::metrics::CommCenterCellularPlanInternetTransport_IsValid(v8, a2) & 1) == 0)
  {
    sub_10177E2A4();
  }

  v9 = *(a2 + 144);
  *(a2 + 64) = v8;
  v10 = *(a1 + 72);
  *(a2 + 144) = v9 | 0x808;
  v11 = *(a2 + 24);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v13 = *(a2 + 144);
  *(a2 + 36) = *(a1 + 360);
  *(a2 + 37) = *(a1 + 361);
  *(a2 + 38) = *(a1 + 362);
  *(a2 + 39) = *(a1 + 363);
  *(a2 + 68) = *(a1 + 364);
  v14 = *(a1 + 365);
  v15 = v13 | 0x3F0;
  *(a2 + 144) = v13 | 0x3F0;
  *(a2 + 69) = v14;
  if (*(a1 + 344) == 1)
  {
    v16 = *(a1 + 340);
    v15 = v13 | 0x3F4;
    *(a2 + 144) = v13 | 0x3F4;
    *(a2 + 32) = v16;
  }

  if (*(a1 + 104) == 1)
  {
    *(a2 + 144) = v15 | 0x1000;
    v17 = *(a2 + 48);
    if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v17, (a1 + 80));
  }

  if (*(a1 + 120) == 1)
  {
    v18 = *(a1 + 112);
    *(a2 + 144) |= 0x4000u;
    *(a2 + 72) = v18;
  }

  if (*(a1 + 152) == 1)
  {
    *(a2 + 144) |= 0x8000u;
    v19 = *(a2 + 80);
    if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v19, (a1 + 128));
  }

  if (*(a1 + 352) == 1)
  {
    v20 = *(a1 + 348);
    *(a2 + 144) |= 0x2000u;
    *(a2 + 56) = v20;
  }

  if (*(a1 + 168) == 1)
  {
    v21 = *(a1 + 160);
    *(a2 + 144) |= 0x10000u;
    *(a2 + 88) = v21;
  }

  v22 = *(a1 + 356);
  result = awd::metrics::CommCenterCellularPlanTransferFlowType_IsValid(v22, v12);
  if ((result & 1) == 0)
  {
    sub_10177E2D0();
  }

  v24 = *(a2 + 144);
  *(a2 + 136) = v22;
  if (*(a1 + 200) == 1)
  {
    *(a2 + 144) = v24 | 0xA0000;
    v25 = *(a2 + 96);
    if (v25 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v25, (a1 + 176));
    v26 = *(a2 + 144);
  }

  else
  {
    v26 = v24 | 0x20000;
  }

  *(a2 + 70) = *(a1 + 366);
  v27 = *(a1 + 367);
  *(a2 + 144) = v26 | 0x140000;
  *(a2 + 71) = v27;
  if (*(a1 + 232) == 1)
  {
    *(a2 + 144) = v26 | 0x340000;
    v28 = *(a2 + 104);
    if (v28 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v28, (a1 + 208));
  }

  if (*(a1 + 264) == 1)
  {
    *(a2 + 144) |= 0x400000u;
    v29 = *(a2 + 112);
    if (v29 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v29, (a1 + 240));
  }

  if (*(a1 + 296) == 1)
  {
    *(a2 + 144) |= 0x800000u;
    v30 = *(a2 + 120);
    if (v30 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v30, (a1 + 272));
  }

  if (*(a1 + 328) == 1)
  {
    *(a2 + 144) |= 0x1000000u;
    v31 = *(a2 + 128);
    if (v31 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    return std::string::operator=(v31, (a1 + 304));
  }

  return result;
}

uint64_t sub_1007A2EAC(uint64_t a1, __int128 *a2)
{
  sub_10006F264(a1 + 40, (a2 + 40));
  sub_10006F264(a1 + 80, a2 + 5);
  sub_10006F264(a1 + 128, a2 + 8);
  sub_10006F264(a1 + 176, a2 + 11);
  sub_10006F264(a1 + 208, a2 + 13);
  sub_10006F264(a1 + 240, a2 + 15);
  sub_10006F264(a1 + 272, a2 + 17);
  return sub_10006F264(a1 + 304, a2 + 19);
}

void sub_1007A2F30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 296) == 1 && *(v1 + 295) < 0)
  {
    operator delete(*(v1 + 272));
  }

  if (*(v1 + 264) == 1 && *(v1 + 263) < 0)
  {
    operator delete(*(v1 + 240));
  }

  if (*(v1 + 232) == 1 && *(v1 + 231) < 0)
  {
    operator delete(*(v1 + 208));
  }

  if (*(v1 + 200) == 1 && *(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 152) == 1 && *(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 104) == 1 && *(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 64) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A3030(uint64_t a1)
{
  if (*(a1 + 328) == 1 && *(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 296) == 1 && *(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 264) == 1 && *(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 232) == 1 && *(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 200) == 1 && *(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_1007A3148()
{
  result = sub_10079D818();
  if (result)
  {
    return sub_1007A31E0(0x80152);
  }

  return result;
}

BOOL sub_1007A31E0(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_1007A3320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_1007A33A0(std::string *result, uint64_t a2)
{
  v3 = result;
  size = result[1].__r_.__value_.__l.__size_;
  v5 = *(size + 23);
  if (v5 < 0)
  {
    v5 = *(size + 8);
  }

  if (v5)
  {
    *(a2 + 32) |= 4u;
    v6 = *(a2 + 16);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v6, size);
  }

  v7 = v3[1].__r_.__value_.__r.__words[2];
  *(a2 + 32) |= 2u;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1007A3440()
{
  result = sub_10079D818();
  if (result)
  {
    return sub_1007A1BB8(0x80127);
  }

  return result;
}

uint64_t sub_1007A34EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5)
  {
    *(a2 + 188) |= 2u;
    v6 = *(a2 + 16);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v6, v4);
  }

  v7 = *(a2 + 188);
  v8 = *(a1 + 44);
  *(a2 + 24) = *(a1 + 40);
  *(a2 + 188) = v7 | 0x44;
  *(a2 + 34) = 1;
  result = awd::metrics::CommCenterCellularPlanType_IsValid(v8, a2);
  if ((result & 1) == 0)
  {
    sub_10177E220();
  }

  v10 = *(a2 + 188);
  *(a2 + 36) = v8;
  *(a2 + 188) = v10 | 0x600;
  v11 = *(a2 + 40);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a1 + 48);
  *(v11 + 16) |= 1u;
  *(v11 + 8) = v12;
  return result;
}

uint64_t sub_1007A3614()
{
  result = sub_10079D818();
  if (result)
  {

    return sub_1007A3660(0x80135);
  }

  return result;
}

BOOL sub_1007A3660(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_1007A37A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A3824()
{
  result = sub_10079D818();
  if (result)
  {
    return sub_1007A38B4(0x80149);
  }

  return result;
}

BOOL sub_1007A38B4(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_1007A39F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_1007A3A74(std::string *result, int *a2)
{
  size = result[1].__r_.__value_.__l.__size_;
  v4 = *size;
  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (v4 == 2);
  }

  v6 = a2[14];
  v7 = v6 | 2;
  a2[14] = v6 | 2;
  a2[10] = v5;
  if (size[36] == 1)
  {
    v8 = *(size + 8);
    v7 = v6 | 0x12;
    a2[14] = v6 | 0x12;
    a2[12] = v8;
  }

  if (size[44] == 1)
  {
    v9 = *(size + 10);
    a2[14] = v7 | 8;
    a2[11] = v9;
  }

  v10 = *(size + 1);
  v11 = size + 16;
  if (v10 != size + 16)
  {
    do
    {
      v12 = a2[7];
      v13 = a2[6];
      if (v13 >= v12)
      {
        if (v12 == a2[8])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v12 + 1);
          v12 = a2[7];
        }

        a2[7] = v12 + 1;
        sub_1007A3EE8();
      }

      v14 = *(a2 + 2);
      a2[6] = v13 + 1;
      v15 = *(v14 + 8 * v13);
      *(v15 + 56) |= 1u;
      v16 = *(v15 + 8);
      if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = std::string::operator=(v16, (v10 + 56));
      v17 = *(v15 + 56);
      *(v15 + 16) = v10[80];
      *(v15 + 20) = v10[81];
      v18 = *(v10 + 41);
      v19 = v17 | 0x1E;
      *(v15 + 56) = v17 | 0x1E;
      *(v15 + 21) = v18;
      if (v10[88] == 1)
      {
        v20 = *(v10 + 21);
        v19 = v17 | 0x5E;
        *(v15 + 56) = v17 | 0x5E;
        *(v15 + 48) = v20;
      }

      if (v10[120] == 1)
      {
        *(v15 + 56) = v19 | 0x200;
        v21 = *(v15 + 40);
        if (v21 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = std::string::operator=(v21, v10 + 4);
      }

      v22 = *(v10 + 1);
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
          v23 = *(v10 + 2);
          v24 = *v23 == v10;
          v10 = v23;
        }

        while (!v24);
      }

      v10 = v23;
    }

    while (v23 != v11);
  }

  return result;
}

unint64_t sub_1007A3C94()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return 1000 * v1.tv_sec + v1.tv_usec / 0x3E8uLL;
}

const char *sub_1007A3CEC(unsigned int a1)
{
  if (a1 > 2)
  {
    return "switch state unknown?";
  }

  else
  {
    return off_101E7DA20[a1];
  }
}

void *sub_1007A3E08(void *a1, unsigned int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E7D9C0;
  wis::WISServerConnection::WISServerConnection((a1 + 3), *a2);
  return a1;
}

void sub_1007A3E88(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7D9C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void DataServiceController::getEntitlementsGenres(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [LSApplicationRecord alloc];
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v42 = 0;
  v33 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:0 error:&v42];
  v34 = v42;

  if (v34)
  {
    v8 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v30 = a2;
      }

      else
      {
        v30 = *a2;
      }

      *v46 = 136315650;
      *&v46[4] = "getEntitlementsGenres";
      *&v46[12] = 2114;
      *&v46[14] = v34;
      *&v46[22] = 2082;
      *&v46[24] = v30;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: (0) cannot get LSApplicationRecord: %{public}@ for %{public}s", v46, 0x20u);
    }

LABEL_7:
    *(a3 + 16) = 0;
    *(a3 + 8) = 0;
    *a3 = a3 + 8;
    goto LABEL_8;
  }

  if (!v33)
  {
    v11 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10177E3E4();
    }

    goto LABEL_7;
  }

  v9 = [v33 entitlements];
  v10 = [v9 objectForKey:@"com.apple.developer.networking.slicing.appcategory" ofClass:objc_opt_class()];

  if (v10)
  {
    memset(v46, 0, 32);
    sub_1007A488C(v10, v46);
    if (*v46)
    {
      if (DataServiceController::localizeEntitlementGenreName(a1, &v46[8]))
      {
        *(a3 + 16) = 0;
        *(a3 + 8) = 0;
        *a3 = a3 + 8;
        if (v46[31] < 0)
        {
          sub_100005F2C(__p, *&v46[8], *&v46[16]);
        }

        else
        {
          *__p = *&v46[8];
          v41 = *&v46[24];
        }

        *&buf[8] = *__p;
        *buf = *v46;
        v45 = v41;
        __p[0] = 0;
        __p[1] = 0;
        v41 = 0;
        sub_1007A8D18(a3, buf);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(*&buf[8]);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_84;
      }

      v27 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v29 = a2;
        }

        else
        {
          v29 = *a2;
        }

        *buf = 136315650;
        *&buf[4] = "getEntitlementsGenres";
        *&buf[12] = 2082;
        *&buf[14] = v29;
        *&buf[22] = 2114;
        v45 = v10;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E %s: (2.0) cannot get localize genreName in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v27 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v28 = a2;
        }

        else
        {
          v28 = *a2;
        }

        *buf = 136315650;
        *&buf[4] = "getEntitlementsGenres";
        *&buf[12] = 2082;
        *&buf[14] = v28;
        *&buf[22] = 2114;
        v45 = v10;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E %s: (2) cannot get genre in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
      }
    }

    *(a3 + 16) = 0;
    *(a3 + 8) = 0;
    *a3 = a3 + 8;
LABEL_84:
    if (v46[31] < 0)
    {
      operator delete(*&v46[8]);
    }

    goto LABEL_8;
  }

  v12 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10177E2FC();
  }

  v13 = [v33 entitlements];
  v14 = objc_opt_class();
  v32 = [v13 objectForKey:@"com.apple.developer.networking.slicing.appcategory" ofClass:v14 valuesOfClass:objc_opt_class()];

  if (v32)
  {
    *(a3 + 16) = 0;
    *(a3 + 8) = 0;
    *a3 = a3 + 8;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = v32;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (!v16)
    {
      goto LABEL_51;
    }

    v17 = *v37;
    while (1)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        memset(v46, 0, 32);
        sub_1007A488C(v19, v46);
        if (!*v46)
        {
          v20 = sub_100032AC8((a1 + 40));
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v21 = a2;
            }

            else
            {
              v21 = *a2;
            }

            *buf = 136315650;
            *&buf[4] = "getEntitlementsGenres";
            *&buf[12] = 2082;
            *&buf[14] = v21;
            *&buf[22] = 2114;
            v45 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E %s: (3) cannot get genre in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
          }

          goto LABEL_35;
        }

        if (!DataServiceController::localizeEntitlementGenreName(a1, &v46[8]))
        {
          v20 = sub_100032AC8((a1 + 40));
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v22 = a2;
            }

            else
            {
              v22 = *a2;
            }

            *buf = 136315650;
            *&buf[4] = "getEntitlementsGenres";
            *&buf[12] = 2082;
            *&buf[14] = v22;
            *&buf[22] = 2114;
            v45 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E %s: (3.0) cannot get genre in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
          }

LABEL_35:

          goto LABEL_47;
        }

        if (v46[31] < 0)
        {
          sub_100005F2C(__p, *&v46[8], *&v46[16]);
        }

        else
        {
          *__p = *&v46[8];
          v41 = *&v46[24];
        }

        *buf = *v46;
        *&buf[8] = *__p;
        v45 = v41;
        __p[0] = 0;
        __p[1] = 0;
        v41 = 0;
        sub_1007A8D18(a3, buf);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(*&buf[8]);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_47:
        if (v46[31] < 0)
        {
          operator delete(*&v46[8]);
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v36 objects:v43 count:16];
      if (!v16)
      {
LABEL_51:

        v23 = v32;
        if (!*(a3 + 16))
        {
          v24 = sub_100032AC8((a1 + 40));
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v25 = a2;
            }

            else
            {
              v25 = *a2;
            }

            *v46 = 136315394;
            *&v46[4] = "getEntitlementsGenres";
            *&v46[12] = 2082;
            *&v46[14] = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E %s: (4) cannot get genre in LSApplicationRecord for %{public}s", v46, 0x16u);
          }

          v26 = a3;
          sub_100077CD4(a3, *(a3 + 8));
          goto LABEL_77;
        }

        goto LABEL_78;
      }
    }
  }

  v31 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    sub_10177E370();
  }

  v26 = a3;
LABEL_77:
  v26[2] = 0;
  v26[1] = 0;
  *v26 = v26 + 1;
  v23 = v32;
LABEL_78:

LABEL_8:
}

void sub_1007A4748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100077CD4(a16, *(a16 + 8));
  if (*(v31 - 113) < 0)
  {
    operator delete(*(v31 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_1007A488C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  memset(v11, 0, 7);
  v4 = [v3 length];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = 0;
  v6 = 1;
  while ([v3 characterAtIndex:v5] != 45)
  {
    v6 = ++v5 < v4;
    if (v4 == v5)
    {
      goto LABEL_5;
    }
  }

  if (v5)
  {
    v10 = [v3 substringToIndex:v5];
    ctu::cf::assign();
    memset(v11, 0, 7);

    if (v6)
    {
      v7 = (v5 + 1);
      goto LABEL_6;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = v6;
LABEL_6:
  if (v7 <= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  while (v8 != v7)
  {
    v9 = [v3 characterAtIndex:v7++];
    if (v9 != 32)
    {
      if (v7 - 1 < v4)
      {
        operator new[]();
      }

      break;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v11[0];
  *(a2 + 27) = *(v11 + 3);
  *(a2 + 31) = 0;
}

void sub_1007A4B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL DataServiceController::localizeEntitlementGenreName(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
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
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

LABEL_17:
      v27 = 0;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__dst, *a2, *(a2 + 8));
      }

      else
      {
        *__dst = *a2;
        v25 = *(a2 + 16);
      }

      if (SHIBYTE(v25) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v32 = v25;
      }

      v28 = 0;
      if (SHIBYTE(v32) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v32;
      }

      v29 = 0;
      if (ctu::cf::convert_copy())
      {
        v17 = v28;
        v28 = v29;
        format = v17;
        sub_100005978(&format);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      v26 = v28;
      v28 = 0;
      sub_100005978(&v28);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p[0]);
      }

      DataUtils::normalizeAppCategory();
      sub_100005978(&v26);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__dst[0]);
      }

      format = 0;
      (*(*v12 + 40))(&format, v12, kAlertDialogLocalizationTable, @"GENRE_FOR_SLICING_GENERIC_%@", 0);
      if (format)
      {
        StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(0, 0, @"%@ Apps", format, 0, v27);
      }

      else
      {
        v19 = sub_100032AC8((a1 + 40));
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "localizeEntitlementGenreName";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E %s: GENRE_FOR_SLICING_GENERIC is empty", buf, 0xCu);
        }

        StringWithValidatedFormat = CFStringCreateWithFormat(0, 0, @"%@ Apps", v27);
      }

      v20 = v27;
      v27 = StringWithValidatedFormat;
      *buf = v20;
      sub_100005978(buf);
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v21 = *buf;
      __p[0] = *&buf[8];
      *(__p + 7) = *&buf[15];
      v22 = buf[23];
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v23 = __p[0];
      *a2 = v21;
      *(a2 + 8) = v23;
      *(a2 + 15) = *(__p + 7);
      *(a2 + 23) = v22;
      sub_100005978(&format);
      sub_100005978(&v27);
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }

      return v12 != 0;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_7:
  v14 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = "localizeEntitlementGenreName";
    *&buf[12] = 2082;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E %s: (3.0) cannot localize genreName in LSApplicationRecord for %{public}s", buf, 0x16u);
  }

  if ((v13 & 1) == 0)
  {
LABEL_13:
    sub_100004A34(v11);
  }

  return v12 != 0;
}

void sub_1007A4FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, const void *a19, __int16 a20, char a21, char a22, uint64_t a23, const void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100005978(&a24);
  sub_100005978(&a19);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  _Unwind_Resume(a1);
}

void sub_1007A5068(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x1007A5060);
}

void DataServiceController::getEntitlementsTrafficClasses(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = [LSApplicationRecord alloc];
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = [NSString stringWithUTF8String:v7];
  v39 = 0;
  v33 = [v6 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v39];
  v34 = v39;

  if (v34)
  {
    v9 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v30 = a2;
      }

      else
      {
        v30 = *a2;
      }

      *v47 = 136315650;
      *&v47[4] = "getEntitlementsTrafficClasses";
      *&v47[12] = 2114;
      *&v47[14] = v34;
      *&v47[22] = 2082;
      *&v47[24] = v30;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: (0) cannot get LSApplicationRecord: %{public}@ for %{public}s", v47, 0x20u);
    }

LABEL_7:
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
    goto LABEL_8;
  }

  if (!v33)
  {
    v13 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177E540();
    }

    goto LABEL_7;
  }

  v10 = [v33 entitlements];
  v11 = [v10 objectForKey:@"com.apple.developer.networking.slicing.trafficcategory" ofClass:objc_opt_class()];

  if (!v11)
  {
    v14 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10177E458();
    }

    v15 = [v33 entitlements];
    v16 = objc_opt_class();
    v32 = [v15 objectForKey:@"com.apple.developer.networking.slicing.trafficcategory" ofClass:v16 valuesOfClass:objc_opt_class()];

    if (v32)
    {
      a3[2] = 0;
      a3[1] = 0;
      *a3 = a3 + 1;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = v32;
      v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v18)
      {
        v19 = *v36;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v35 + 1) + 8 * i);
            memset(v47, 0, 32);
            sub_1007A5760(v21, v47);
            if (*v47)
            {
              *buf = *v47;
              if (DataServiceController::getTrafficClassFromIndex(*v47, buf, v22))
              {
                *v47 = *buf;
              }

              sub_1004C50EC(a3, v47);
            }

            else
            {
              v23 = sub_100032AC8((a1 + 40));
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (*(a2 + 23) >= 0)
                {
                  v24 = a2;
                }

                else
                {
                  v24 = *a2;
                }

                *buf = 136315650;
                v42 = "getEntitlementsTrafficClasses";
                v43 = 2082;
                v44 = v24;
                v45 = 2114;
                v46 = v21;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E %s: (3) cannot get genre in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
              }
            }

            if (v47[31] < 0)
            {
              operator delete(*&v47[8]);
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v18);
      }

      v25 = v32;
      if (a3[2])
      {
        goto LABEL_64;
      }

      v26 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = *a2;
        }

        *v47 = 136315394;
        *&v47[4] = "getEntitlementsTrafficClasses";
        *&v47[12] = 2082;
        *&v47[14] = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#E %s: (4) cannot get genre in LSApplicationRecord for %{public}s", v47, 0x16u);
      }

      sub_10006DCAC(a3, a3[1]);
    }

    else
    {
      v31 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_10177E4CC();
      }
    }

    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
    v25 = v32;
LABEL_64:

    goto LABEL_8;
  }

  memset(v47, 0, 32);
  sub_1007A5760(v11, v47);
  if (*v47)
  {
    *buf = *v47;
    if (DataServiceController::getTrafficClassFromIndex(*v47, buf, v12))
    {
      *v47 = *buf;
    }

    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
    sub_1004C50EC(a3, v47);
  }

  else
  {
    v28 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      *buf = 136315650;
      v42 = "getEntitlementsTrafficClasses";
      v43 = 2082;
      v44 = v29;
      v45 = 2114;
      v46 = v11;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#E %s: (2) cannot get genre in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
    }

    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
  }

  if (v47[31] < 0)
  {
    operator delete(*&v47[8]);
  }

LABEL_8:
}

void sub_1007A5674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  sub_10006DCAC(v12, *(v12 + 8));

  _Unwind_Resume(a1);
}

void sub_1007A5760(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  memset(v11, 0, 7);
  v4 = [v3 length];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = 0;
  v6 = 1;
  while ([v3 characterAtIndex:v5] != 45)
  {
    v6 = ++v5 < v4;
    if (v4 == v5)
    {
      goto LABEL_5;
    }
  }

  if (v5)
  {
    v10 = [v3 substringToIndex:v5];
    ctu::cf::assign();
    memset(v11, 0, 7);

    if (v6)
    {
      v7 = (v5 + 1);
      goto LABEL_6;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = v6;
LABEL_6:
  if (v7 <= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  while (v8 != v7)
  {
    v9 = [v3 characterAtIndex:v7++];
    if (v9 != 32)
    {
      if (v7 - 1 < v4)
      {
        operator new[]();
      }

      break;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v11[0];
  *(a2 + 27) = *(v11 + 3);
  *(a2 + 31) = 0;
}

void sub_1007A59E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1007A5CD4(void *a1, uint64_t a2)
{
  sub_100457284(v4, a2);
  sub_1007A8DFC(v4, a1);
  sub_1003F2928(v4);
  return a1;
}

void sub_1007A63D4(uint64_t a1, void *a2)
{
  v3 = a2;
  status = nw_path_get_status(v3);
  v5 = sub_100032AC8(*(*(a1 + 32) + 24));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = status;
    v7 = 2080;
    v8 = asStringBool(status == nw_path_status_satisfied);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I non-LL: status = %d, connected = %s", v6, 0x12u);
  }

  sub_1007A64FC(*(a1 + 32) + 32, 0, (status == nw_path_status_satisfied) | 0x100);
}

uint64_t sub_1007A64FC(uint64_t a1, __int16 a2, __int16 a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_1007A6558(uint64_t a1, void *a2)
{
  v3 = a2;
  status = nw_path_get_status(v3);
  v5 = sub_100032AC8(*(*(a1 + 32) + 24));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = status;
    v7 = 2080;
    v8 = asStringBool(status == nw_path_status_satisfied);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I LL: status = %d, connected = %s", v6, 0x12u);
  }

  sub_1007A64FC(*(a1 + 32) + 32, (status == nw_path_status_satisfied) | 0x100, 0);
}

void *sub_1007A6764(void *a1, uint64_t a2)
{
  sub_1007A93AC(v4, a2);
  sub_1007A9140(v4, a1);
  sub_1007A9444(v4);
  return a1;
}

id DataServiceController::isAnalyticsLocationAuthorized_sync(DataServiceController *this)
{
  v1 = *(this + 669);
  if (v1)
  {
    return [*v1 isLocationAuthorized_sync];
  }

  else
  {
    return 0;
  }
}

id non-virtual thunk toDataServiceController::isAnalyticsLocationAuthorized_sync(DataServiceController *this)
{
  v1 = *(this + 662);
  if (v1)
  {
    return [*v1 isLocationAuthorized_sync];
  }

  else
  {
    return 0;
  }
}

void *sub_1007A6CE4(void *a1, uint64_t a2)
{
  sub_1007A9544(v4, a2);
  sub_1007A95DC(v4, a1);
  sub_1007A94C4(v4);
  return a1;
}

void sub_1007A6DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = DataTelephonyCallObserverImpl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1007A7194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::notifyLLPHS_sync(uint64_t a1, __int16 a2, __int16 a3, int a4)
{
  v14 = a2;
  v13 = a3;
  DataServiceController::getLLPHSState_sync(a1, &v14, &v13);
  v6 = (*(*a1 + 2288))(a1);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  if (v6)
  {
    v8 = a4 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (HIBYTE(v14) == 1 && v14 == 1 && HIBYTE(v13) == 1 && (v13 & 1) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  if (notify_is_valid_token(*(a1 + 5232)))
  {
    notify_set_state(*(a1 + 5232), v7);
    v9 = notify_post("com.apple.CoreTelephony.Slicing.LLPHS.State");
    v10 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "com.apple.CoreTelephony.Slicing.LLPHS.State";
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s notified %llu: %lu", buf, 0x20u);
    }
  }

  if (notify_is_valid_token(*(a1 + 5236)))
  {
    notify_set_state(*(a1 + 5236), v7);
    v11 = notify_post("com.apple.private.restrict-post.CoreTelephony.Slicing.LLPHS.State");
    v12 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "com.apple.private.restrict-post.CoreTelephony.Slicing.LLPHS.State";
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s notified %llu: %lu", buf, 0x20u);
    }
  }
}

void DataServiceController::setSliceEventsListeners_sync(DataServiceController *this, int a2, int a3, char a4)
{
  if ((a2 & a3 & 1) == 0 && (a4 & 1) == 0)
  {
    DataServiceController::notifyLLPHS_sync(this, a2 | 0x100, a3 | 0x100, 0);
  }

  if ((*(*this + 2288))(this))
  {
    if (!*(this + 657))
    {
      operator new();
    }

    if (!*(this + 663))
    {
      operator new();
    }

    if (!*(this + 666))
    {
      operator new();
    }

    if (*(this + 5225) != a2)
    {
      *(this + 5225) = a2;
      DistributedCenter = CFNotificationCenterGetDistributedCenter();
      v7 = DistributedCenter;
      if (!a2)
      {
        CFNotificationCenterRemoveObserver(DistributedCenter, this, @"com.apple.LaunchServices.applicationRegistered", 0);
        CFNotificationCenterRemoveObserver(v7, this, @"com.apple.LaunchServices.applicationUnregistered", 0);
        notify_cancel(*(this + 1307));
        *(this + 1307) = -1;
        return;
      }

      CFNotificationCenterAddObserver(DistributedCenter, this, sub_1007A7B1C, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      CFNotificationCenterAddObserver(v7, this, sub_1007A7B1C, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      if (!*(this + 669))
      {
        sub_1007AA18C();
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1007A7BE8;
      v13[3] = &unk_101E7DAD8;
      v13[4] = this;
      v8 = objc_retainBlock(v13);
      v9 = sub_100032AC8(this + 3);
      v10 = notify_register_dispatch(kSBSLockStateNotifyKey, this + 1307, v9, v8) == 0;

      if (v10)
      {
        v11 = sub_100032AC8(this + 5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v12 = "#N ScreenLockObserver: registered for lock state notification";
          goto LABEL_21;
        }
      }

      else
      {
        v11 = sub_100032AC8(this + 5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v12 = "#N ScreenLockObserver: failed to register for lock state notification";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
        }
      }
    }
  }
}

uint64_t sub_1007A7B1C(int a1, DataServiceController *a2, CFTypeRef cf1, uint64_t a4, const __CFDictionary *a5)
{
  if (CFEqual(cf1, @"com.apple.LaunchServices.applicationRegistered"))
  {
    sub_1007A8BB0(a5, &v9);
    DataServiceController::appsRegistered(a2, 1, &v9);
  }

  result = CFEqual(cf1, @"com.apple.LaunchServices.applicationUnregistered");
  if (result)
  {
    sub_1007A8BB0(a5, &v9);
    DataServiceController::appsRegistered(a2, 0, &v9);
  }

  return result;
}

void sub_1007A7BE8(uint64_t a1, int token)
{
  v3 = *(a1 + 32);
  v6 = 0;
  notify_get_state(token, &v6);
  v4 = sub_100032AC8(v3 + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asStringBool(v6 != 0);
    *buf = 67109378;
    *&buf[4] = token;
    LOWORD(v9) = 2080;
    *(&v9 + 2) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I ScreenLockObserver: token=%d, state = %s", buf, 0x12u);
  }

  if (!v6)
  {
    *buf = 0;
    v9 = 0uLL;
    DataServiceController::handleFrontmostAppsChanged_sync(v3);
    v7 = buf;
    sub_1000087B4(&v7);
  }
}

void sub_1007A7CF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void DataServiceController::updateSlicingDefinitionsWithAppDB(uint64_t a1, unint64_t *a2)
{
  if ((*(*a1 + 2288))(a1))
  {
    v4 = *(a1 + 5456);
    *(a1 + 5456) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    sub_100009970(a1 + 5280, *(a1 + 5288));
    *(a1 + 5280) = a1 + 5288;
    *(a1 + 5288) = 0u;
    if (*(a1 + 5348) == 1)
    {
      if (DataServiceController::supportsCallKit(a1))
      {
        v5 = *(a1 + 5152);
        if (v5 != (a1 + 5160))
        {
          do
          {
            memset(__p, 0, 24);
            if (*(v5 + 55) < 0)
            {
              sub_100005F2C(__p, v5[4], v5[5]);
            }

            else
            {
              *__p = *(v5 + 2);
              __p[2] = *(v5 + 6);
            }

            sub_100005BA0(a1 + 5280, __p);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            v6 = v5[1];
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
                v7 = v5[2];
                v8 = *v7 == v5;
                v5 = v7;
              }

              while (!v8);
            }

            v5 = v7;
          }

          while (v7 != (a1 + 5160));
        }
      }
    }

    v9 = (*(*a1 + 1112))(a1);
    v10 = sub_100032AC8((a1 + 40));
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = a2;
        if (*(a2 + 23) < 0)
        {
          v12 = *a2;
        }

        LODWORD(__p[0]) = 136446210;
        *(__p + 4) = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Update slicing definitions (full), reason: %{public}s (stage 1)", __p, 0xCu);
      }

      v13 = DataServiceController::qosClass(a1);
      v14 = dispatch_queue_attr_make_with_qos_class(0, v13, 0);
      v15 = dispatch_queue_create("updateSlicingDefinitionsWithAppDB", v14);

      __p[0] = a1;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&__p[1], *a2, a2[1]);
      }

      else
      {
        *&__p[1] = *a2;
        __p[3] = a2[2];
      }

      v16 = *(a1 + 112);
      __p[4] = *(a1 + 104);
      __p[5] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
      }

      v17 = v15;
      operator new();
    }

    if (v11)
    {
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      LODWORD(__p[0]) = 136446210;
      *(__p + 4) = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Update slicing definitions (full), reason: %{public}s: preferred SIM unknown, bailing", __p, 0xCu);
    }
  }
}

BOOL DataServiceController::isAppWithBundleIdActive(uint64_t a1, uint64_t *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v4 = ServiceMap;
  v5 = "23ApplicationStateMonitor";
  if (("23ApplicationStateMonitor" & 0x8000000000000000) != 0)
  {
    v6 = ("23ApplicationStateMonitor" & 0x7FFFFFFFFFFFFFFFLL);
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
  v15 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v15);
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

      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (!v11)
  {
LABEL_7:
    v13 = 0;
    if (v12)
    {
      return v13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v13 = sub_1006DFAC8(v11, a2);
  if ((v12 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v10);
  }

  return v13;
}

void sub_1007A8214(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::getAppInfo()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = NEHelperCopyAppInfo();
  v11 = v10;
  if (!v10)
  {
    v11 = xpc_null_create();
  }

  v12 = v11;
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    if (xpc_get_type(v12) != &_xpc_type_dictionary)
    {
      v14 = xpc_null_create();
    }
  }

  else
  {
    v14 = xpc_null_create();
  }

  if (xpc_get_type(v14) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v14, "app-identifier");
    if (string)
    {
      v16 = sub_100032AC8((v9 + 40));
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v31 = string;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I getAppInfo: Got app identifier: %s", buf, 0xCu);
      }

      sub_100016890(v2, string);
    }

    uuid = xpc_dictionary_get_uuid(v14, "app-euuid");
    if (uuid)
    {
      v18 = [[NSUUID alloc] initWithUUIDBytes:uuid];
      v19 = [v18 UUIDString];
      v20 = v19;
      v21 = [v19 UTF8String];

      v22 = sub_100032AC8((v9 + 40));
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I getAppInfo: Got uuid: %s", buf, 0xCu);
      }

      sub_100016890(v4, v21);
    }
  }

  bzero(buf, 0x1001uLL);
  if (proc_pidpath(v8, buf, 0x1000u) >= 1)
  {
    v32 = 0;
    sub_10000501C(&v26, buf);
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    *v6 = v26;
    *(v6 + 16) = v27;
    v26 = 0uLL;
    v27 = 0;
    ctu::tokenize();
    if (*(&v26 + 1) != v26)
    {
      if (*(*(&v26 + 1) - 1) < 0)
      {
        sub_100005F2C(__dst, *(*(&v26 + 1) - 24), *(*(&v26 + 1) - 16));
      }

      else
      {
        v23 = *(*(&v26 + 1) - 24);
        v29 = *(*(&v26 + 1) - 8);
        *__dst = v23;
      }

      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      *v6 = *__dst;
      *(v6 + 16) = v29;
    }

    v24 = sub_100032AC8((v9 + 40));
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v6 + 23) >= 0)
      {
        v25 = v6;
      }

      else
      {
        v25 = *v6;
      }

      *__dst = 136315138;
      *&__dst[4] = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I getAppInfo: Got procName: %s", __dst, 0xCu);
    }

    *__dst = &v26;
    sub_1000087B4(__dst);
  }
}

void sub_1007A85E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000087B4(&a13);

  _Unwind_Resume(a1);
}

void DataServiceController::appsRegistered(DataServiceController *a1, uint64_t a2, uint64_t a3)
{
  v4 = DataServiceController::qosClass(a1);
  v5 = dispatch_queue_attr_make_with_qos_class(0, v4, 0);
  v6 = dispatch_queue_create("appsRegisteredTmp", v5);

  sub_100074920(&v8, a3);
  v7 = v6;
  operator new();
}

void DataServiceController::notifySlicingInterfaceStatus_sync(DataServiceController *this)
{
  v2 = (*(*this + 1120))(this);
  v3 = 0;
  for (i = 28; i != 36; ++i)
  {
    *buf = 0;
    *&buf[8] = 0;
    DataServiceController::getConnection_sync(this, v2, i, buf);
    if (*buf && (((*(**buf + 168))(*buf) & 1) != 0 || ((*(**buf + 176))(*buf) & 1) != 0))
    {
      if ((*(**buf + 184))(*buf))
      {
        v5 = (*(**buf + 200))(*buf);
        if ((v5 & 0x80000000) == 0)
        {
          v12 = 0;
          v13 = 0;
          DataServiceController::getPDPActivator(this, v5, &v12);
          if (v12 && (*(*v12 + 160))(v12, 0))
          {
            v10 = 0;
            v11 = 0;
            (*(*v12 + 64))(&v10);
            if (v10 && (*(*v10 + 96))(v10))
            {
              v3 |= 1 << v5;
            }

            if (v11)
            {
              sub_100004A34(v11);
            }
          }

          if (v13)
          {
            sub_100004A34(v13);
          }
        }
      }
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v3 != *(this + 656))
  {
    if (notify_is_valid_token(*(this + 1310)))
    {
      notify_set_state(*(this + 1310), v3);
      v6 = notify_post("com.apple.CoreTelephony.Slicing.Interfaces.Active.State");
      v7 = sub_100032AC8(this + 5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "com.apple.CoreTelephony.Slicing.Interfaces.Active.State";
        *&buf[12] = 2048;
        *&buf[14] = v3;
        v15 = 2048;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s notified 0x%llu: status = %lu", buf, 0x20u);
      }
    }

    if (notify_is_valid_token(*(this + 1311)))
    {
      notify_set_state(*(this + 1311), v3);
      v8 = notify_post("com.apple.private.restrict-post.CoreTelephony.Slicing.Interfaces.Active.State");
      v9 = sub_100032AC8(this + 5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "com.apple.private.restrict-post.CoreTelephony.Slicing.Interfaces.Active.State";
        *&buf[12] = 2048;
        *&buf[14] = v3;
        v15 = 2048;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s notified 0x%llu: status = %lu", buf, 0x20u);
      }
    }

    *(this + 656) = v3;
  }
}

void sub_1007A8B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A8BB0(const __CFDictionary *a1@<X0>, void *a2@<X8>)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, @"bundleIDs")) != 0 && (v4 = Value, v5 = CFGetTypeID(Value), v5 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(v4);
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (ValueAtIndex)
        {
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFStringGetTypeID())
          {
            __p[0] = 0;
            __p[1] = 0;
            v12 = 0;
            v13 = 0uLL;
            v14 = 0;
            ctu::cf::assign();
            *__p = v13;
            v12 = v14;
            sub_100005BA0(a2, __p);
            if (SHIBYTE(v12) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }
    }
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }
}

void sub_1007A8CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100009970(v14, *(v14 + 8));
  _Unwind_Resume(a1);
}

void *sub_1007A8D18(uint64_t a1, unint64_t *a2)
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

void *sub_1007A8DFC(void *result, void *a2)
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

void sub_1007A905C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1007A90F4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E7DB78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007A9140(void *result, void *a2)
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

void sub_1007A93A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1007A93AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1007A9444(uint64_t a1)
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

uint64_t sub_1007A94C4(uint64_t a1)
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

uint64_t sub_1007A9544(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_1007A95DC(void *result, void *a2)
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

void sub_1007A983C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1007A98E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007A9920(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7DB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007A99F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7DBE8;
  a2[1] = v2;
  return result;
}

void sub_1007A9A1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

uint64_t sub_1007A9B20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007A9B6C(DataServiceController ***a1)
{
  v1 = a1;
  DataServiceController::resetSlicePoliciesOnVpnChange_sync(**a1, *(*a1 + 8), *(*a1 + 9));
  operator delete();
}

void **sub_1007A9BF4(void **a1, uint64_t a2)
{
  *a1 = 0;
  v4 = [DataVPNManagerImpl alloc];
  sub_100457284(v8, a2);
  v5 = [(DataVPNManagerImpl *)v4 initWithCallback:v8];
  v6 = *a1;
  *a1 = v5;

  sub_1003F2928(v8);
  return a1;
}

void sub_1007A9C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003F2928(va);

  _Unwind_Resume(a1);
}

void sub_1007A9CE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7DC68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007A9DB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7DCB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007A9DF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

TerminusAvailabilityManagerImpl **sub_1007A9E3C(TerminusAvailabilityManagerImpl **a1, uint64_t a2, id *a3)
{
  v6 = objc_alloc_init(TerminusAvailabilityManagerImpl);
  *a1 = v6;
  sub_1007A93AC(v9, a2);
  v7 = sub_100032AC8(a3);
  [(TerminusAvailabilityManagerImpl *)v6 start:v9 queue:v7];

  sub_1007A9444(v9);
  return a1;
}

void sub_1007A9EF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_1007A9444(va);
  _Unwind_Resume(a1);
}

void sub_1007A9F48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7DD38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007AA018(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7DD88;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007AA044(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void **sub_1007AA090(void **a1, uint64_t a2, id *a3)
{
  *a1 = 0;
  v6 = [DataTelephonyCallObserverImpl alloc];
  sub_1007A9544(v11, a2);
  v7 = sub_100032AC8(a3);
  v8 = [(DataTelephonyCallObserverImpl *)v6 initWithCallback:v11 queue:v7];
  v9 = *a1;
  *a1 = v8;

  sub_1007A94C4(v11);
  return a1;
}

void sub_1007AA150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;

  sub_1007A94C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AA1F8(uint64_t a1, id *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E7DE18;
  sub_1007AA2D4((a1 + 24), a2);
  return a1;
}

void sub_1007AA274(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7DE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void **sub_1007AA2D4(void **a1, id *a2)
{
  v5 = *a2;
  sub_1007AA34C(a1, &v5);
  v3 = v5;
  v5 = 0;

  return a1;
}

void **sub_1007AA34C(void **a1, id *a2)
{
  *a1 = 0;
  v4 = [CoreLocationAnalytics alloc];
  v5 = sub_100032AC8(a2);
  v6 = [(CoreLocationAnalytics *)v4 initWithQueue:v5];
  v7 = *a1;
  *a1 = v6;

  return a1;
}

uint64_t *sub_1007AA3DC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100009970(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return result;
}

void sub_1007AA430(BOOL *a1)
{
  v2 = *a1;
  v3 = sub_100032AC8((*a1 + 40));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asStringBool(a1[8]);
    v5 = *(a1 + 4);
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I appsRegistered: %s (%u bundleIds)", buf, 0x12u);
  }

  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  ServiceMap = Registry::getServiceMap(*(v2 + 104));
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
  if (v12)
  {
    v13 = v12[3];
    v14 = v12[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = v14;
      sub_100004A34(v14);
      v27 = 0;
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v7);
  v26 = 0;
  v27 = 1;
  if (!v13)
  {
    goto LABEL_29;
  }

LABEL_12:
  v15 = *(a1 + 2);
  if (v15 != (a1 + 24))
  {
    do
    {
      v16 = v15 + 4;
      (*(*v13 + 72))(buf, v13, v15 + 4);
      v30[0] = v15 + 4;
      v17 = sub_1007AA92C(&v28, v15 + 4);
      v18 = (v17 + 64);
      v19 = (v17 + 56);
      sub_100009970(v17 + 56, *(v17 + 64));
      v20 = *&buf[8];
      *(v18 - 1) = *buf;
      *v18 = v20;
      v21 = *&buf[16];
      v18[1] = *&buf[16];
      if (v21)
      {
        *(v20 + 16) = v18;
        *buf = &buf[8];
        *&buf[8] = 0uLL;
        v20 = 0;
      }

      else
      {
        *v19 = v18;
      }

      sub_100009970(buf, v20);
      *buf = v15 + 4;
      if (!*(sub_1007AA92C(&v28, v15 + 4) + 72))
      {
        v22 = sub_100032AC8((v2 + 40));
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          if (*(v15 + 55) < 0)
          {
            v16 = *v16;
          }

          *buf = 136446210;
          *&buf[4] = v16;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "cannot get UUIDs for bundle id: %{public}s (1)", buf, 0xCu);
        }
      }

      v23 = v15[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v15[2];
          v25 = *v24 == v15;
          v15 = v24;
        }

        while (!v25);
      }

      v15 = v24;
    }

    while (v24 != (a1 + 24));
  }

LABEL_29:
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  *buf = v2;
  buf[8] = a1[8];
  sub_1007AACF0(&buf[16], &v28);
  v30[0] = 0;
  v30[1] = 0;
  sub_100004AA0(v30, (v2 + 8));
  operator new();
}

void sub_1007AA8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1007AA3DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AA92C(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1007AA9E0();
  }

  return v2;
}

uint64_t *sub_1007AAA84(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 != (v1 + 24))
  {
    do
    {
      v4 = sub_100032AC8((v2 + 40));
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v3 + 4;
        if (*(v3 + 55) < 0)
        {
          v5 = v3[4];
        }

        v6 = asStringBool(*(v1 + 8));
        v7 = v3[9];
        *buf = 136315650;
        *&buf[4] = v5;
        v17 = 2080;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I appsRegistered[%s]: %s (%u uuids)", buf, 0x1Cu);
      }

      if (v3[9] || (v12 = sub_100007A6C(v2 + 4984, v3 + 4), v2 + 4992 == v12) || (*(v12 + 112) & 1) == 0)
      {
        *buf = v3 + 4;
        v8 = sub_1004C2088(v2 + 4984, v3 + 4);
        sub_1002644E8(v8 + 88, (v3 + 7));
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != (v1 + 24));
  }

  DataServiceController::resetSlicePolicies_sync(v2, 3, 1, 0);
  sub_1007AAC9C(&v15);
  return sub_1000049E0(&v14);
}

void sub_1007AAC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  sub_1007AAC9C(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007AAC9C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10036F160(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return result;
}

void *sub_1007AACF0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007AAD48(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1007AAD48(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007AADD0(v5, (v5 + 1), v4 + 4);
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

void *sub_1007AADD0(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_100074A00(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_1007AAE70();
  }

  return v3;
}

void *sub_1007AAEE8(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100074920(__dst + 3, a2 + 24);
  return __dst;
}

void sub_1007AAF44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007AAF60(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_1007ABDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, int a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, void *a57, uint64_t a58)
{
  if (a58)
  {
    sub_100004A34(a58);
  }

  sub_100004A34(a13);
  sub_1007ADBC0(&a47, a48);
  sub_1007AD620(&a50, a51);
  if ((a15 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a54)
  {
    sub_100004A34(a54);
  }

  sub_1007AAF60(&a26);
  _Unwind_Resume(a1);
}

void *sub_1007AC098(void *a1, std::mutex *this)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E7DE68;
  a1[3] = this;
  std::mutex::lock(this);
  return a1;
}

void sub_1007AC11C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7DE68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1007AC1F0(void *a1, const char **a2, const char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E50888;
  ctu::OsLogLogger::OsLogLogger((a1 + 3), *a2, a3);
  return a1;
}

void sub_1007AC250(uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_100009970((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_1007AC2B0(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *sub_100005C2C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1007AC37C(uint64_t *a1)
{
  v1 = *a1;
  v72 = a1;
  v73 = v1;
  v2 = *v1;
  bzero(v76, 0x3D8uLL);
  v75 = -1;
  sub_10000501C(v76, "Managed Apps");
  v77 = 36;
  sub_10000501C(v78, "Mobile Software Apps");
  v79 = 6000;
  sub_10000501C(v80, "Business Apps");
  v81 = 6001;
  sub_10000501C(v82, "Weather Apps");
  v83 = 6002;
  sub_10000501C(v84, "Utilities Apps");
  v85 = 6003;
  sub_10000501C(v86, "Travel Apps");
  v87 = 6004;
  sub_10000501C(v88, "Sports Apps");
  v89 = 6005;
  sub_10000501C(v90, "Social Networking Apps");
  v91 = 6006;
  sub_10000501C(v92, "Reference Apps");
  v93 = 6007;
  sub_10000501C(v94, "Productivity Apps");
  v95 = 6008;
  sub_10000501C(v96, "Photo & Video Apps");
  v97 = 6009;
  sub_10000501C(v98, "News Apps");
  v99 = 6010;
  sub_10000501C(v100, "Navigation Apps");
  v101 = 6011;
  sub_10000501C(v102, "Music Apps");
  v103 = 6012;
  sub_10000501C(v104, "Lifestyle Apps");
  v105 = 6013;
  sub_10000501C(v106, "Health & Fitness Apps");
  v107 = 6014;
  sub_10000501C(v108, "Games Apps");
  v109 = 6015;
  sub_10000501C(v110, "Finance Apps");
  v111 = 6016;
  sub_10000501C(v112, "Entertainment Apps");
  v113 = 6017;
  sub_10000501C(v114, "Education Apps");
  v115 = 6018;
  sub_10000501C(v116, "Books Apps");
  v117 = 6020;
  sub_10000501C(v118, "Medical Apps");
  v119 = 6021;
  sub_10000501C(v120, "Magazines & Newspapers Apps");
  v121 = 6022;
  sub_10000501C(v122, "Catalogs Apps");
  v123 = 6023;
  sub_10000501C(v124, "Food & Drink Apps");
  v125 = 6024;
  sub_10000501C(v126, "Shopping Apps");
  v127 = 6025;
  sub_10000501C(v128, "Stickers Apps");
  v129 = 6026;
  sub_10000501C(v130, "Developer Tools Apps");
  v131 = 6027;
  sub_10000501C(v132, "Graphics & Design Apps");
  v133 = 9000;
  sub_10000501C(v134, "Communication Apps");
  v135 = 9001;
  sub_10000501C(v136, "Streaming Apps");
  v3 = sub_100032AC8(*(v1 + 8));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 24);
    if (*(v1 + 47) < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Update slicing definitions (full), reason: %{public}s (stage 2)", buf, 0xCu);
  }

  v71 = v1;

  if ((v2 + 4984) != (v1 + 48))
  {
    sub_1007AD230(v2 + 623, *(v1 + 48), (v1 + 56));
  }

  if ((v2 + 5056) != (v1 + 72))
  {
    sub_1007AD9E8(v2 + 632, *(v1 + 72), (v1 + 80));
  }

  v6 = *(v1 + 96);
  v5 = *(v1 + 104);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(v2 + 635) = v6;
  v7 = *(v2 + 636);
  *(v2 + 636) = v5;
  if (v7)
  {
    sub_100004A34(v7);
  }

  context = objc_autoreleasePoolPush();
  ServiceMap = Registry::getServiceMap(*(v2 + 13));
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
    v15 = 0;
    goto LABEL_20;
  }

  v15 = v14[3];
  v16 = v14[4];
  if (!v16)
  {
LABEL_20:
    std::mutex::unlock(v9);
    v68 = 0;
    v70 = 1;
    goto LABEL_21;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v68 = v16;
  sub_100004A34(v16);
  v70 = 0;
LABEL_21:
  v17 = 0;
  v18 = kAlertDialogLocalizationTable;
  do
  {
    v19 = &v76[v17 - 8];
    if (v15)
    {
      v137 = 0;
      if (*v19 == -1)
      {
        (*(*v15 + 40))(&v138, v15, v18, @"GENRE_FOR_SLICING_MANAGED", 0);
        *buf = v137;
        v137 = v138;
        *&v138 = 0;
        sub_100005978(buf);
        sub_100005978(&v138);
      }

      else
      {
        v20 = [NSString stringWithFormat:@"GENRE_FOR_SLICING_%llu", *v19];
        (*(*v15 + 40))(&v138, v15, v18, v20, 0);
        *buf = v137;
        v137 = v138;
        *&v138 = 0;
        sub_100005978(buf);
        sub_100005978(&v138);
      }

      if (v137)
      {
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        v29 = *buf;
        *&v138 = *&buf[8];
        *(&v138 + 7) = *&buf[15];
        v30 = buf[23];
        v31 = *(v2 + 635);
        *buf = &v76[v17 - 8];
        v32 = sub_1004C5D94(v31, &v76[v17 - 8]);
        v33 = v32;
        if (*(v32 + 63) < 0)
        {
          operator delete(v32[5]);
        }

        v34 = v138;
        v33[5] = v29;
        v33[6] = v34;
        *(v33 + 55) = *(&v138 + 7);
        *(v33 + 63) = v30;
      }

      else
      {
        v35 = *(v2 + 635);
        v36 = *(v35 + 8);
        if (!v36)
        {
          goto LABEL_47;
        }

        v37 = *v19;
        v38 = v35 + 8;
        do
        {
          v39 = *(v36 + 32);
          v26 = v39 >= v37;
          v40 = v39 < v37;
          if (v26)
          {
            v38 = v36;
          }

          v36 = *(v36 + 8 * v40);
        }

        while (v36);
        if (v38 == v35 + 8 || v37 < *(v38 + 32))
        {
LABEL_47:
          *buf = &v76[v17 - 8];
          v41 = sub_1004C5D94(v35, &v76[v17 - 8]);
          std::string::operator=((v41 + 5), (v19 + 8));
        }
      }

      sub_100005978(&v137);
    }

    else
    {
      v21 = *(v2 + 635);
      v22 = *(v21 + 8);
      if (!v22)
      {
        goto LABEL_33;
      }

      v23 = *v19;
      v24 = v21 + 8;
      do
      {
        v25 = *(v22 + 32);
        v26 = v25 >= v23;
        v27 = v25 < v23;
        if (v26)
        {
          v24 = v22;
        }

        v22 = *(v22 + 8 * v27);
      }

      while (v22);
      if (v24 == v21 + 8 || v23 < *(v24 + 32))
      {
LABEL_33:
        *buf = &v76[v17 - 8];
        v28 = sub_1004C5D94(v21, &v76[v17 - 8]);
        std::string::operator=((v28 + 5), (v19 + 8));
      }
    }

    v17 += 32;
  }

  while (v17 != 992);
  if ((v70 & 1) == 0)
  {
    sub_100004A34(v68);
  }

  objc_autoreleasePoolPop(context);
  v42 = v71;
  sub_10006DCAC(v2 + 5008, *(v2 + 627));
  *(v2 + 626) = v2 + 5016;
  *(v2 + 5016) = 0u;
  sub_10006DCAC(v2 + 5032, *(v2 + 630));
  *(v2 + 629) = v2 + 5040;
  *(v2 + 315) = 0u;
  *(v2 + 5347) = *(v71 + 113);
  v43 = *(v71 + 112);
  if (*(v2 + 5346) != v43)
  {
    *(v2 + 5346) = v43;
    if (v43)
    {
      v44 = *(v2 + 14);
      *&v138 = *(v2 + 13);
      *(&v138 + 1) = v44;
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      subscriber::makeSimSlotRange();
      if (*(&v138 + 1))
      {
        sub_100004A34(*(&v138 + 1));
      }

      v45 = *buf;
      v46 = *&buf[8];
      if (*buf != *&buf[8])
      {
        v47 = *&buf[16];
        do
        {
          if (v47(*v45))
          {
            break;
          }

          ++v45;
        }

        while (v45 != v46);
        v48 = *&buf[8];
        if (v45 != *&buf[8])
        {
          while (1)
          {
            v49 = *v45;
            v50 = sub_100032AC8(*(v42 + 8));
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = subscriber::asString();
              LODWORD(v138) = 136315138;
              *(&v138 + 4) = v51;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Enabling slicing feature on supervisedDevice device (%s)", &v138, 0xCu);
            }

            v52 = Registry::getServiceMap(*(v2 + 13));
            v53 = v52;
            if (v54 < 0)
            {
              v55 = (v54 & 0x7FFFFFFFFFFFFFFFLL);
              v56 = 5381;
              do
              {
                v54 = v56;
                v57 = *v55++;
                v56 = (33 * v56) ^ v57;
              }

              while (v57);
            }

            std::mutex::lock(v52);
            v137 = v54;
            v58 = sub_100009510(&v53[1].__m_.__sig, &v137);
            if (!v58)
            {
              break;
            }

            v60 = v58[3];
            v59 = v58[4];
            if (!v59)
            {
              goto LABEL_72;
            }

            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v53);
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
            v49 = v49;
            sub_100004A34(v59);
            v61 = 0;
LABEL_73:
            (*(*v60 + 8))(&v138, v60, v49);
            v74 = 0;
            (*(*v138 + 32))(v138, 4, 1, &v74);
            sub_10001021C(&v74);
            if (*(&v138 + 1))
            {
              sub_100004A34(*(&v138 + 1));
            }

            if ((v61 & 1) == 0)
            {
              sub_100004A34(v59);
            }

            if (++v45 == v46)
            {
              v42 = v71;
            }

            else
            {
              v42 = v71;
              do
              {
                if (v47(*v45))
                {
                  break;
                }

                ++v45;
              }

              while (v45 != v46);
            }

            if (v45 == v48)
            {
              goto LABEL_84;
            }
          }

          v60 = 0;
LABEL_72:
          std::mutex::unlock(v53);
          v59 = 0;
          v61 = 1;
          goto LABEL_73;
        }
      }
    }
  }

LABEL_84:
  v62 = (*(*v2 + 1120))(v2);
  v63 = DataServiceController::SlicesDataContainer::useEntitlementsGenres(v2 + 4960, v62);
  DataServiceController::adjustSlicesAppsDb(v2, v63 ^ 1);
  v64 = (v42 + 24);
  (*(*v2 + 2424))(v2, 3, v42 + 24, 0);
  v65 = sub_100032AC8(*(v42 + 8));
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v42 + 47) < 0)
    {
      v64 = *v64;
    }

    *buf = 136446210;
    *&buf[4] = v64;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I Update slicing definitions (full), reason: %{public}s (stage 2 ends)", buf, 0xCu);
  }

  memset(buf, 0, sizeof(buf));
  DataServiceController::handleFrontmostAppsChanged_sync(v2, buf);
  *&v138 = buf;
  sub_1000087B4(&v138);
  v66 = 124;
  do
  {
    if (v76[v66 * 8 - 9] < 0)
    {
      operator delete((&v72)[v66]);
    }

    v66 -= 4;
  }

  while (v66 * 8);
  sub_1007AD19C(&v73);
  return sub_1000049E0(&v72);
}

void sub_1007ACFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  v11 = *(v9 - 136);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = &STACK[0x420];
  v13 = -992;
  while (1)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 4;
    v13 += 32;
    if (!v13)
    {
      sub_1007AD19C(va1);
      sub_1000049E0(va);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *sub_1007AD19C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 128);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 104);
    if (v3)
    {
      sub_100004A34(v3);
    }

    sub_1007ADBC0(v1 + 72, *(v1 + 80));
    sub_1007AD620(v1 + 48, *(v1 + 56));
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t **sub_1007AD230(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          sub_1007AD3B8((v8 + 4), (v9 + 4));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_1007AD5C8(&v13);
  }

  if (a2 != a3)
  {
    sub_1007AD6CC();
  }

  return result;
}

std::string *sub_1007AD3B8(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1, a2);
  sub_1007AD418(&a1[1], &a2[1]);
  sub_1007AD4A8(&a1[2].__r_.__value_.__l.__size_, &a2[2].__r_.__value_.__l.__size_);
  v4 = a2[3].__r_.__value_.__r.__words[2];
  a1[4].__r_.__value_.__s.__data_[0] = a2[4].__r_.__value_.__s.__data_[0];
  a1[3].__r_.__value_.__r.__words[2] = v4;
  sub_1007AD538(&a1[4].__r_.__value_.__l.__size_, &a2[4].__r_.__value_.__l.__size_);
  return a1;
}

void sub_1007AD418(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v4 = (a2 + 8);
      v3 = *a2;

      sub_1004C06CC(a1, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    sub_10006DCAC(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    sub_1002B84C8(a1, a2);
    *(a1 + 24) = 1;
  }
}

void sub_1007AD4A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v4 = (a2 + 8);
      v3 = *a2;

      sub_1001730B8(a1, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    sub_100009970(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    sub_100074920(a1, a2);
    *(a1 + 24) = 1;
  }
}

void sub_1007AD538(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v4 = (a2 + 8);
      v3 = *a2;

      sub_1004C08D0(a1, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    sub_10006DCAC(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    sub_1004C0AD4(a1, a2);
    *(a1 + 24) = 1;
  }
}

uint64_t sub_1007AD5C8(uint64_t a1)
{
  sub_1007AD620(*a1, *(a1 + 16));
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

    sub_1007AD620(*a1, v2);
  }

  return a1;
}

void sub_1007AD620(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1007AD620(a1, *a2);
    sub_1007AD620(a1, *(a2 + 1));
    if (a2[160] == 1)
    {
      sub_10006DCAC((a2 + 136), *(a2 + 18));
    }

    if (a2[112] == 1)
    {
      sub_100009970((a2 + 88), *(a2 + 12));
    }

    if (a2[80] == 1)
    {
      sub_10006DCAC((a2 + 56), *(a2 + 8));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1007AD6CC()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_1007AD730();
}

void sub_1007AD7A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004C2200(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1007AD7C4(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_1007AD8A4((__dst + 3), a2 + 24);
  sub_1007AD910((__dst + 7), a2 + 56);
  v5 = *(a2 + 11);
  *(__dst + 96) = *(a2 + 96);
  __dst[11] = v5;
  sub_1007AD97C((__dst + 13), a2 + 104);
  return __dst;
}

void sub_1007AD848(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) == 1)
  {
    sub_100009970(v1 + 56, *(v1 + 64));
  }

  if (*(v1 + 48) == 1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AD8A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    sub_1002B84C8(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1007AD8EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_10006DCAC(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AD910(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    sub_100074920(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1007AD958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_100009970(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AD97C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    sub_1004C0AD4(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1007AD9C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_10006DCAC(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1007AD9E8(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          if (v8 != v9)
          {
            sub_1001730B8(v8 + 5, v9[5], v9 + 6);
            v8 = v14;
          }

          sub_10024FB30(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_1007ADB68(&v12);
  }

  if (a2 != a3)
  {
    sub_1007ADC20();
  }

  return result;
}

void sub_1007ADB54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007ADB68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007ADB68(uint64_t a1)
{
  sub_1007ADBC0(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1007ADBC0(*a1, v2);
  }

  return a1;
}

void sub_1007ADBC0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007ADBC0(a1, *a2);
    sub_1007ADBC0(a1, a2[1]);
    sub_100009970((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_1007ADD2C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007AC250(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1007ADD48(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007ADDA0(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1007ADDA0(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007ADE28(v5, (v5 + 1), v4 + 4);
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

void *sub_1007ADE28(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100074A00(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1007AD730();
  }

  return result;
}

void *sub_1007ADEB8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007ADF10(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1007ADF10(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007ADF98(v5, v5 + 1, v4 + 4);
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

uint64_t sub_1007ADF98(void *a1, void *a2, unint64_t *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10010CB50(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1007ADCAC();
  }

  return result;
}

void sub_1007AE028(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void *sub_1007AE048(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_10018F784((__dst + 3), a2 + 24);
  sub_100190324((__dst + 7), a2 + 56);
  return __dst;
}

void sub_1007AE0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 48) == 1)
  {
    sub_10019029C(&a10);
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007AE100(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 0, a3, a4);
  sub_1007AE048(v7 + 21, a5);
  *a1 = off_101E7DEE0;
  return a1;
}

uint64_t sub_1007AE17C(uint64_t a1)
{
  if (*(a1 + 248) == 1)
  {
    v3 = (a1 + 224);
    sub_100190608(&v3);
  }

  if (*(a1 + 216) == 1)
  {
    v3 = (a1 + 192);
    sub_10019029C(&v3);
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AE1F8(uint64_t a1)
{
  sub_1007AE17C(a1);

  operator delete();
}

uint64_t sub_1007AE230(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, int a5, __int128 *a6)
{
  v9 = sub_10071E5E4(a1, 0, a2, a3, a6);
  sub_1007AE048(v9 + 23, a4);
  *a1 = off_101E7DF08;
  *(a1 + 272) = a5;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 576) = 0;
  return a1;
}

uint64_t sub_1007AE2C8(uint64_t a1)
{
  *a1 = off_101E7DF08;
  if (*(a1 + 576) == 1)
  {
    sub_1002AF7A0(a1 + 296);
  }

  if (*(a1 + 264) == 1)
  {
    v3 = (a1 + 240);
    sub_100190608(&v3);
  }

  if (*(a1 + 232) == 1)
  {
    v3 = (a1 + 208);
    sub_10019029C(&v3);
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  return sub_10071E738(a1);
}

void sub_1007AE374(uint64_t a1)
{
  sub_1007AE2C8(a1);

  operator delete();
}

void *sub_1007AE3AC(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, int a5)
{
  result = sub_10071E7DC(a1, *a2, 11, a3, a4);
  *(result + 42) = a5;
  *result = off_101E7DF30;
  return result;
}

void sub_1007AE404(uint64_t a1)
{
  sub_10071EAE0(a1);

  operator delete();
}

uint64_t sub_1007AE43C(uint64_t a1, uint64_t a2, __int128 *a3, int a4, __int128 *a5, __int128 *a6)
{
  v9 = sub_10071E5E4(a1, 11, a2, a3, a6);
  *(v9 + 46) = a4;
  *v9 = off_101E7DF58;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 192), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 208) = *(a5 + 2);
    *(a1 + 192) = v10;
  }

  v11 = *(a5 + 24);
  *(a1 + 232) = *(a5 + 5);
  *(a1 + 216) = v11;
  sub_1006A7ED8((a1 + 240), a5 + 3);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 584) = 0;
  return a1;
}

uint64_t sub_1007AE524(uint64_t a1)
{
  *a1 = off_101E7DF58;
  if (*(a1 + 584) == 1)
  {
    sub_1002AF7A0(a1 + 304);
  }

  if (*(a1 + 280) == 1 && *(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  return sub_10071E738(a1);
}

void sub_1007AE5B8(uint64_t a1)
{
  sub_1007AE524(a1);

  operator delete();
}

_OWORD *sub_1007AE5F0(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  sub_10006F264((a1 + 1), a2 + 1);
  sub_10018F784((a1 + 3), (a2 + 3));
  sub_100190324((a1 + 5), (a2 + 5));
  return a1;
}

void sub_1007AE650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 72) == 1)
  {
    sub_10019029C(&a10);
  }

  if (*(v10 + 40) == 1 && *(v10 + 39) < 0)
  {
    operator delete(*(v10 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AE698(uint64_t a1, uint64_t a2, __int128 *a3, _OWORD *a4, int a5, __int128 *a6)
{
  v9 = sub_10071E5E4(a1, 2, a2, a3, a6);
  sub_1007AE5F0(v9 + 23, a4);
  *a1 = off_101E7DF80;
  *(a1 + 296) = a5;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 600) = 0;
  return a1;
}

uint64_t sub_1007AE730(uint64_t a1)
{
  *a1 = off_101E7DF80;
  if (*(a1 + 600) == 1)
  {
    sub_1002AF7A0(a1 + 320);
  }

  if (*(a1 + 288) == 1)
  {
    v3 = (a1 + 264);
    sub_100190608(&v3);
  }

  if (*(a1 + 256) == 1)
  {
    v3 = (a1 + 232);
    sub_10019029C(&v3);
  }

  if (*(a1 + 224) == 1 && *(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  return sub_10071E738(a1);
}

void sub_1007AE7E8(uint64_t a1)
{
  sub_1007AE730(a1);

  operator delete();
}

void *sub_1007AE820(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, _OWORD *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 2, a3, a4);
  sub_1007AE5F0(v7 + 21, a5);
  *a1 = off_101E7DFA8;
  return a1;
}

uint64_t sub_1007AE89C(uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v3 = (a1 + 248);
    sub_100190608(&v3);
  }

  if (*(a1 + 240) == 1)
  {
    v3 = (a1 + 216);
    sub_10019029C(&v3);
  }

  if (*(a1 + 208) == 1 && *(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AE924(uint64_t a1)
{
  sub_1007AE89C(a1);

  operator delete();
}

uint64_t sub_1007AE95C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v7 = sub_10071E5E4(a1, 4, a2, a3, a5);
  sub_10019068C(v7 + 184, a4);
  *a1 = off_101E7DFD0;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0;
  *(a1 + 1064) = 0;
  return a1;
}

uint64_t sub_1007AE9E0(uint64_t a1)
{
  *a1 = off_101E7DFD0;
  if (*(a1 + 1064) == 1)
  {
    sub_1002AF7A0(a1 + 784);
  }

  if (*(a1 + 760) == 1)
  {
    v3 = (a1 + 736);
    sub_100190608(&v3);
  }

  if (*(a1 + 728) == 1)
  {
    v3 = (a1 + 704);
    sub_10019029C(&v3);
  }

  if (*(a1 + 696) == 1)
  {
    v3 = (a1 + 672);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 408);
  if (*(a1 + 400) == 1)
  {
    sub_100190B88(a1 + 184);
  }

  return sub_10071E738(a1);
}

void sub_1007AEAB4(uint64_t a1)
{
  sub_1007AE9E0(a1);

  operator delete();
}

void *sub_1007AEAEC(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 14, a3, a4);
  *v7 = off_101E7DFF8;
  v8 = v7 + 21;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(v8, *a5, *(a5 + 1));
  }

  else
  {
    v9 = *a5;
    v8[2] = *(a5 + 2);
    *v8 = v9;
  }

  return a1;
}

uint64_t sub_1007AEB80(uint64_t a1)
{
  *a1 = off_101E7DFF8;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AEBE4(uint64_t a1)
{
  sub_1007AEB80(a1);

  operator delete();
}

void *sub_1007AEC1C(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v7 = sub_10071E7DC(a1, *a2, 4, a3, a4);
  sub_10019068C(v7 + 168, a5);
  *a1 = off_101E7E020;
  return a1;
}

uint64_t sub_1007AEC98(uint64_t a1)
{
  if (*(a1 + 744) == 1)
  {
    v3 = (a1 + 720);
    sub_100190608(&v3);
  }

  if (*(a1 + 712) == 1)
  {
    v3 = (a1 + 688);
    sub_10019029C(&v3);
  }

  if (*(a1 + 680) == 1)
  {
    v3 = (a1 + 656);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 392);
  if (*(a1 + 384) == 1)
  {
    sub_100190B88(a1 + 168);
  }

  return sub_10071EAE0(a1);
}

void sub_1007AED3C(uint64_t a1)
{
  sub_1007AEC98(a1);

  operator delete();
}

uint64_t sub_1007AED74(uint64_t a1, uint64_t a2, __int128 *a3, _OWORD *a4, __int128 *a5)
{
  v7 = sub_10071E5E4(a1, 6, a2, a3, a5);
  *v7 = off_101E7E048;
  *(v7 + 23) = *a4;
  sub_100190E64((v7 + 25), a4 + 1);
  sub_1007B02C4((a1 + 232), (a4 + 3));
  sub_10018F784(a1 + 512, a4 + 328);
  return a1;
}

void sub_1007AEDF4(_Unwind_Exception *a1)
{
  sub_100191228(v1 + 184);
  sub_10071E738(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AEE40(uint64_t a1)
{
  *a1 = off_101E7E048;
  if (*(a1 + 536) == 1)
  {
    v3 = (a1 + 512);
    sub_10019029C(&v3);
  }

  sub_100191270(a1 + 232);
  if (*(a1 + 224) == 1 && *(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  return sub_10071E738(a1);
}

void sub_1007AEED0(uint64_t a1)
{
  sub_1007AEE40(a1);

  operator delete();
}

uint64_t sub_1007AEF08(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E5E4(a1, 7, a2, a3, a5);
  *v7 = off_101E7E070;
  v8 = *a4;
  *(v7 + 50) = *(a4 + 4);
  *(v7 + 23) = v8;
  sub_100190E64((v7 + 26), (a4 + 24));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  sub_100191370(a1 + 240, *(a4 + 7), *(a4 + 8), 0xAF8AF8AF8AF8AF8BLL * ((*(a4 + 8) - *(a4 + 7)) >> 3));
  sub_10018F784(a1 + 264, (a4 + 5));
  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  return a1;
}

void sub_1007AEFD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001915C8(va);
  if (*(v2 + 232) == 1 && *(v2 + 231) < 0)
  {
    operator delete(*(v2 + 208));
  }

  sub_10071E738(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AF020(uint64_t a1)
{
  *a1 = off_101E7E070;
  if (*(a1 + 320) == 1)
  {
    v3 = (a1 + 296);
    sub_10019029C(&v3);
  }

  if (*(a1 + 288) == 1)
  {
    v3 = (a1 + 264);
    sub_10019029C(&v3);
  }

  v3 = (a1 + 240);
  sub_1001915C8(&v3);
  if (*(a1 + 232) == 1 && *(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  return sub_10071E738(a1);
}

void sub_1007AF0D4(uint64_t a1)
{
  sub_1007AF020(a1);

  operator delete();
}

void *sub_1007AF10C(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 9, a3, a4);
  *v7 = off_101E7E098;
  sub_1007B0370(v7 + 168, a5);
  return a1;
}

uint64_t sub_1007AF184(uint64_t a1)
{
  *a1 = off_101E7E098;
  if (*(a1 + 304) == 1 && *(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AF224(uint64_t a1)
{
  sub_1007AF184(a1);

  operator delete();
}

void *sub_1007AF25C(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 10, a3, a4);
  *v7 = off_101E7E0C0;
  sub_1007B0478(v7 + 168, a5);
  return a1;
}

uint64_t sub_1007AF2D4(uint64_t a1)
{
  *a1 = off_101E7E0C0;
  if (*(a1 + 304) == 1 && *(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AF374(uint64_t a1)
{
  sub_1007AF2D4(a1);

  operator delete();
}

void *sub_1007AF3AC(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, _DWORD *a5)
{
  result = sub_10071E7DC(a1, *a2, 10, a3, a4);
  *result = &off_101E7E0E8;
  *(result + 42) = *a5;
  return result;
}

void sub_1007AF408(uint64_t a1)
{
  sub_10071EAE0(a1);

  operator delete();
}

uint64_t sub_1007AF440(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 12, a3, a4);
  *v7 = off_101E7E110;
  v8 = *a5;
  *(v7 + 184) = *(a5 + 16);
  *(v7 + 21) = v8;
  sub_10006F264((v7 + 24), (a5 + 24));
  sub_10006F264(a1 + 224, (a5 + 56));
  *(a1 + 256) = *(a5 + 88);
  sub_1006A38A0((a1 + 264), (a5 + 6));
  return a1;
}

void sub_1007AF4D4(_Unwind_Exception *a1)
{
  if (*(v1 + 248) == 1 && *(v1 + 247) < 0)
  {
    operator delete(*(v1 + 224));
  }

  if (*(v1 + 216) == 1 && *(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
  }

  sub_10071EAE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AF534(uint64_t a1)
{
  *a1 = off_101E7E110;
  if (*(a1 + 552) == 1)
  {
    sub_1002AF7A0(a1 + 272);
  }

  if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 216) == 1 && *(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AF5D4(uint64_t a1)
{
  sub_1007AF534(a1);

  operator delete();
}

void *sub_1007AF60C(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071F078(a1, *a2, 1, a3, a4);
  sub_1007AE048(v7 + 21, a5);
  *a1 = off_101E7E138;
  return a1;
}

uint64_t sub_1007AF688(uint64_t a1)
{
  if (*(a1 + 248) == 1)
  {
    v3 = (a1 + 224);
    sub_100190608(&v3);
  }

  if (*(a1 + 216) == 1)
  {
    v3 = (a1 + 192);
    sub_10019029C(&v3);
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return sub_10071F384(a1);
}

void sub_1007AF704(uint64_t a1)
{
  sub_1007AF688(a1);

  operator delete();
}

uint64_t sub_1007AF73C(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, __int128 *a7, __int128 *a8)
{
  v10 = sub_10071EDCC(a1, 1, a2, a3, a4, a7, a8);
  sub_1007AE048((v10 + 232), a5);
  *a1 = off_101E7E160;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 624) = 0;
  return a1;
}

uint64_t sub_1007AF7CC(uint64_t a1)
{
  *a1 = off_101E7E160;
  if (*(a1 + 624) == 1)
  {
    sub_1002AF7A0(a1 + 344);
  }

  if (*(a1 + 312) == 1)
  {
    v3 = (a1 + 288);
    sub_100190608(&v3);
  }

  if (*(a1 + 280) == 1)
  {
    v3 = (a1 + 256);
    sub_10019029C(&v3);
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  return sub_10071EFBC(a1);
}

void sub_1007AF878(uint64_t a1)
{
  sub_1007AF7CC(a1);

  operator delete();
}

void *sub_1007AF8B0(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, int a5)
{
  result = sub_10071F078(a1, *a2, 11, a3, a4);
  *(result + 42) = a5;
  *result = off_101E7E188;
  return result;
}

void sub_1007AF908(uint64_t a1)
{
  sub_10071F384(a1);

  operator delete();
}

uint64_t sub_1007AF940(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, int a6, __int128 *a7, __int128 *a8)
{
  v11 = sub_10071EDCC(a1, 3, a2, a3, a4, a7, a8);
  *v11 = off_101E7E1B0;
  sub_1000D4128((v11 + 29), a5);
  *(a1 + 560) = *(a5 + 328);
  sub_100190324(a1 + 576, a5 + 344);
  *(a1 + 608) = a6;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  *(a1 + 912) = 0;
  return a1;
}

void sub_1007AF9E4(_Unwind_Exception *a1)
{
  sub_1000D45B0(v2);
  sub_10071EFBC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AFA0C(uint64_t a1)
{
  *a1 = off_101E7E1B0;
  if (*(a1 + 912) == 1)
  {
    sub_1002AF7A0(a1 + 632);
  }

  if (*(a1 + 600) == 1)
  {
    v3 = (a1 + 576);
    sub_100190608(&v3);
  }

  sub_1000D45B0(a1 + 232);
  return sub_10071EFBC(a1);
}

void sub_1007AFA94(uint64_t a1)
{
  sub_1007AFA0C(a1);

  operator delete();
}

void *sub_1007AFACC(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, _OWORD *a5)
{
  v7 = sub_10071F078(a1, *a2, 3, a3, a4);
  sub_1007AE5F0(v7 + 21, a5);
  *a1 = off_101E7E1D8;
  return a1;
}

uint64_t sub_1007AFB48(uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v3 = (a1 + 248);
    sub_100190608(&v3);
  }

  if (*(a1 + 240) == 1)
  {
    v3 = (a1 + 216);
    sub_10019029C(&v3);
  }

  if (*(a1 + 208) == 1 && *(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  return sub_10071F384(a1);
}

void sub_1007AFBD0(uint64_t a1)
{
  sub_1007AFB48(a1);

  operator delete();
}

uint64_t sub_1007AFC08(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v9 = sub_10071EDCC(a1, 5, a2, a3, a4, a6, a7);
  sub_10019068C((v9 + 232), a5);
  *a1 = off_101E7E200;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  *(a1 + 1112) = 0;
  return a1;
}

uint64_t sub_1007AFC90(uint64_t a1)
{
  *a1 = off_101E7E200;
  if (*(a1 + 1112) == 1)
  {
    sub_1002AF7A0(a1 + 832);
  }

  if (*(a1 + 808) == 1)
  {
    v3 = (a1 + 784);
    sub_100190608(&v3);
  }

  if (*(a1 + 776) == 1)
  {
    v3 = (a1 + 752);
    sub_10019029C(&v3);
  }

  if (*(a1 + 744) == 1)
  {
    v3 = (a1 + 720);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 456);
  if (*(a1 + 448) == 1)
  {
    sub_100190B88(a1 + 232);
  }

  return sub_10071EFBC(a1);
}

void sub_1007AFD64(uint64_t a1)
{
  sub_1007AFC90(a1);

  operator delete();
}

void *sub_1007AFD9C(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v7 = sub_10071F078(a1, *a2, 4, a3, a4);
  sub_10019068C(v7 + 168, a5);
  *a1 = off_101E7E228;
  return a1;
}

uint64_t sub_1007AFE18(uint64_t a1)
{
  if (*(a1 + 744) == 1)
  {
    v3 = (a1 + 720);
    sub_100190608(&v3);
  }

  if (*(a1 + 712) == 1)
  {
    v3 = (a1 + 688);
    sub_10019029C(&v3);
  }

  if (*(a1 + 680) == 1)
  {
    v3 = (a1 + 656);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 392);
  if (*(a1 + 384) == 1)
  {
    sub_100190B88(a1 + 168);
  }

  return sub_10071F384(a1);
}

void sub_1007AFEBC(uint64_t a1)
{
  sub_1007AFE18(a1);

  operator delete();
}

void *sub_1007AFEF4(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, __int128 *a5, __int128 *a6)
{
  v8 = sub_10071EB84(a1, *a2, 0, a3, a4, a5);
  sub_1007AE048((v8 + 192), a6);
  *a1 = off_101E7E250;
  return a1;
}

uint64_t sub_1007AFF74(uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v3 = (a1 + 248);
    sub_100190608(&v3);
  }

  if (*(a1 + 240) == 1)
  {
    v3 = (a1 + 216);
    sub_10019029C(&v3);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  return sub_10071ED1C(a1);
}

void sub_1007AFFF0(uint64_t a1)
{
  sub_1007AFF74(a1);

  operator delete();
}

void *sub_1007B0028(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, __int128 *a5, _OWORD *a6)
{
  v8 = sub_10071EB84(a1, *a2, 2, a3, a4, a5);
  sub_1007AE5F0((v8 + 192), a6);
  *a1 = off_101E7E278;
  return a1;
}

uint64_t sub_1007B00A8(uint64_t a1)
{
  if (*(a1 + 296) == 1)
  {
    v3 = (a1 + 272);
    sub_100190608(&v3);
  }

  if (*(a1 + 264) == 1)
  {
    v3 = (a1 + 240);
    sub_10019029C(&v3);
  }

  if (*(a1 + 232) == 1 && *(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  return sub_10071ED1C(a1);
}

void sub_1007B0130(uint64_t a1)
{
  sub_1007B00A8(a1);

  operator delete();
}

void *sub_1007B0168(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, __int128 *a5, uint64_t a6)
{
  v8 = sub_10071EB84(a1, *a2, 2, a3, a4, a5);
  sub_10019068C((v8 + 192), a6);
  *a1 = off_101E7E2A0;
  return a1;
}

uint64_t sub_1007B01E8(uint64_t a1)
{
  if (*(a1 + 768) == 1)
  {
    v3 = (a1 + 744);
    sub_100190608(&v3);
  }

  if (*(a1 + 736) == 1)
  {
    v3 = (a1 + 712);
    sub_10019029C(&v3);
  }

  if (*(a1 + 704) == 1)
  {
    v3 = (a1 + 680);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 416);
  if (*(a1 + 408) == 1)
  {
    sub_100190B88(a1 + 192);
  }

  return sub_10071ED1C(a1);
}

void sub_1007B028C(uint64_t a1)
{
  sub_1007B01E8(a1);

  operator delete();
}

char *sub_1007B02C4(char *a1, uint64_t a2)
{
  v4 = sub_100190EB4(a1, a2);
  sub_1001910E4((v4 + 184), (a2 + 184));
  sub_100191134((a1 + 216), (a2 + 216));
  sub_10018F784((a1 + 248), a2 + 248);
  return a1;
}

void sub_1007B0314(_Unwind_Exception *a1)
{
  if (*(v1 + 240) == 1 && *(v1 + 239) < 0)
  {
    operator delete(*(v1 + 216));
  }

  if (*(v1 + 208) == 1 && *(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_100191184(v1);
  _Unwind_Resume(a1);
}

char *sub_1007B0370(char *__dst, __int128 *a2)
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

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  v7 = *(a2 + 72);
  *(__dst + 11) = *(a2 + 11);
  *(__dst + 72) = v7;
  sub_1006A7ED8(__dst + 96, a2 + 6);
  return __dst;
}

void sub_1007B042C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1007B0478(char *__dst, __int128 *a2)
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

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  v7 = *(a2 + 72);
  *(__dst + 11) = *(a2 + 11);
  *(__dst + 72) = v7;
  sub_1006A7ED8(__dst + 96, a2 + 6);
  return __dst;
}

void sub_1007B0534(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1007B0580(uint64_t a1)
{
  *a1 = off_101E7E750;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_1007B05B0(void **a1)
{
  *a1 = off_101E7E750;
  v2 = (a1 + 1);
  v3 = a1 + 2;
  sub_100140868(&v3);
  sub_100140928(v2, 0);
  PB::Base::~Base(a1);
}

void sub_1007B0620(void **a1)
{
  sub_1007B05B0(a1);

  operator delete();
}

uint64_t sub_1007B0658(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 48))
  {
    PB::TextFormatter::format(this, "error", *(a1 + 40));
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, this, "pendingProfile");
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 44));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007B0748(uint64_t a1, PB::Reader *this)
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
            goto LABEL_58;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 48) |= 2u;
          v32 = *(this + 1);
          if (v32 >= *(this + 2))
          {
            v35 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v33 = v32 + 1;
            v34 = *(*this + v32);
            *(this + 1) = v33;
            v35 = v34 != 0;
          }

          *(a1 + 44) = v35;
          goto LABEL_54;
        }

        if (v22 == 4)
        {
          *(a1 + 48) |= 1u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v36 = 0;
            v37 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v38 = v23 - v24;
            if (!v17)
            {
              v38 = 0;
            }

            v39 = (v25 + v24);
            v40 = v24 + 1;
            while (1)
            {
              if (!v38)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_53;
              }

              v41 = *v39;
              *(this + 1) = v40;
              v28 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              --v38;
              ++v39;
              ++v40;
              v14 = v37++ > 8;
              if (v14)
              {
LABEL_47:
                LODWORD(v28) = 0;
                goto LABEL_53;
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
                goto LABEL_47;
              }
            }
          }

LABEL_53:
          *(a1 + 40) = v28;
          goto LABEL_54;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          sub_1007B0ACC();
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v43 = 0;
        return v43 & 1;
      }

LABEL_54:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_58:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1007B0C18(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::writeSubmessage(this, v7, 2u);
  }

  v8 = *(v3 + 48);
  if ((v8 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 44), 3u);
    v8 = *(v3 + 48);
  }

  if (v8)
  {
    v9 = *(v3 + 40);

    return PB::Writer::writeVarInt(this, v9, 4u);
  }

  return result;
}

void *sub_1007B0CC4(void *result)
{
  *result = off_101E7E7A0;
  result[1] = 0;
  return result;
}

void sub_1007B0CE4(void ***a1)
{
  *a1 = off_101E7E7A0;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007B0D3C(void ***a1)
{
  *a1 = off_101E7E7A0;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

void *sub_1007B0DA8(void *result, uint64_t a2)
{
  *result = off_101E7E7A0;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_1007B0E54(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007B0EB0(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if (!PB::Reader::skip(this, v9 >> 3, v9 & 7, 0))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_1007B1070(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::write(this, v2, 1u);
  }

  return result;
}

void DataServiceController::synchronizePreferredDataSIM_sync(DataServiceController *this, const char *a2)
{
  if ((*(this + 288) & 1) == 0)
  {
    if ((v4 = capabilities::ct::supportsGemini(this), v4) && (v4 = capabilities::ct::supportsDataSubscriptionController(v4), !v4) || capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v4))
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315138;
        v34 = a2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I MSIM: synchronizePreferredDataSIM: reason: '%s'", &v33, 0xCu);
      }

      v6 = *(this + 1133);
      v7 = (*(**(this + 6) + 16))(*(this + 6), *(this + 1132));
      v8 = v7;
      v9 = *(this + 1132);
      if (!v9)
      {
        v14 = *v7;
        if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        LOWORD(v33) = 0;
        v15 = "#N MSIM: synchronizePreferredDataSIM: unknown SIM from UI. Before we get info from UI, we do not reconfigure anything.";
        goto LABEL_38;
      }

      if (!v6)
      {
        v10 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N MSIM: synchronizePreferredDataSIM: unknown dual SIM mode from UI. Before we get info from UI, we assume that BB has the right information.", &v33, 2u);
          v9 = *(this + 1132);
        }

        v6 = *(this + 1138);
      }

      v11 = sub_100097DB0(*(this + 18), v9);
      if ((v11 & 1) == 0)
      {
        v11 = capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v11);
        if ((v11 & 1) == 0)
        {
          v19 = *v8;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v20 = subscriber::asString();
          v33 = 136315138;
          v34 = v20;
          v15 = "#E MSIM: synchronizePreferredDataSIM: wrong SIM from UI: %s";
          v21 = v19;
          v22 = 12;
          goto LABEL_39;
        }
      }

      v12 = capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v11);
      v13 = *(this + 18);
      if (v12)
      {
        if (!sub_100097DB0(v13, 1))
        {
          v14 = *v8;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          LOWORD(v33) = 0;
          v15 = "#E MSIM: synchronizePreferredDataSIM: fDataModels empty (0)";
          goto LABEL_38;
        }

        if (!*(sub_1000A8A0C(*(this + 18), 1) + 24))
        {
          v14 = *v8;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          LOWORD(v33) = 0;
          v15 = "#E MSIM: synchronizePreferredDataSIM: BB driver empty (1)";
LABEL_38:
          v21 = v14;
          v22 = 2;
LABEL_39:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v15, &v33, v22);
          return;
        }
      }

      else
      {
        if (!sub_100097DB0(v13, *(this + 1132)))
        {
          v14 = *v8;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          LOWORD(v33) = 0;
          v15 = "#E MSIM: synchronizePreferredDataSIM: invalid SIM (2)";
          goto LABEL_38;
        }

        if (!*(sub_1000A8A0C(*(this + 18), *(this + 1132)) + 24))
        {
          v14 = *v8;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          LOWORD(v33) = 0;
          v15 = "#E MSIM: synchronizePreferredDataSIM: BB driver empty (3)";
          goto LABEL_38;
        }
      }

      v16 = *(this + 1132);
      if (v16 == *(this + 1137))
      {
        v17 = atomic_load(this + 1134);
        if (v16 == v17)
        {
          if (v6 == *(this + 1138))
          {
            v18 = atomic_load(this + 1135);
            if (v6 == v18)
            {
              v14 = *v8;
              if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }

              LOWORD(v33) = 0;
              v15 = "#N MSIM: synchronizePreferredDataSIM: nothing to do";
              goto LABEL_38;
            }

            v23 = "UI and CT have different understanding which dual SIM mode we are in, UI has priority";
          }

          else
          {
            v23 = "UI and BB have different understanding which dual SIM mode we are in, UI has priority";
          }
        }

        else
        {
          v23 = "UI and CT have different understanding which SIM is the preferred Data SIM, UI has priority";
        }
      }

      else
      {
        v23 = "UI and BB have different understanding which SIM is the preferred Data SIM, UI has priority";
      }

      v24 = *v8;
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      v26 = *(this + 1132);
      if (v25)
      {
        v27 = subscriber::asString();
        v28 = subscriber::asString();
        atomic_load(this + 1134);
        v29 = subscriber::asString();
        v30 = subscriber::asString();
        v31 = subscriber::asString();
        atomic_load(this + 1135);
        v32 = subscriber::asString();
        v33 = 136316418;
        v34 = v27;
        v35 = 2080;
        v36 = v28;
        v37 = 2080;
        v38 = v29;
        v39 = 2080;
        v40 = v30;
        v41 = 2080;
        v42 = v31;
        v43 = 2080;
        v44 = v32;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I MSIM: synchronizePreferredDataSIM: have to run update process: SIM from UI: %s, SIM from BB: %s, currently preferred SIM: %s, dual SIM from UI: %s, dual SIM from BB: %s, current dual SIM: %s", &v33, 0x3Eu);
        v26 = *(this + 1132);
      }

      DataServiceController::updatePreferredDataSIM_sync(this, v26, v23, v6);
    }
  }
}

void DataServiceController::updatePreferredDataSIM_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100004AA0(buf, (a1 + 8));
  v8 = *buf;
  v7 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  sub_100004AA0(buf, (a1 + 8));
  v9 = *&buf[8];
  v30 = *buf;
  v31 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }

  v32 = v8;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *v33 = a1;
  *&v33[8] = a2;
  *&v33[16] = a3;
  *&v33[24] = a4;
  if (*(a1 + 4548) != a2 || *(a1 + 4552) != a4)
  {
    DataServiceController::MsimLpmWaiting::reset((a1 + 4616));
    ServiceMap = Registry::getServiceMap(*(a1 + 104));
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
          goto LABEL_22;
        }

        goto LABEL_26;
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
LABEL_22:
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177E6AC();
      }

      goto LABEL_31;
    }

LABEL_26:
    (*(*v18 + 8))(buf, v18, "MSIM reconfiguration", 0);
    v20 = *buf;
    memset(buf, 0, sizeof(buf));
    v21 = *(a1 + 4640);
    *(a1 + 4632) = v20;
    if (v21)
    {
      sub_100004A34(v21);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    v22 = *(a1 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = asStringBool(*(a1 + 4632) != 0);
      *buf = 136315138;
      *&buf[4] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I MSIM update: PowerAssertion set: %s", buf, 0xCu);
    }

LABEL_31:
    if ((v19 & 1) == 0)
    {
      sub_100004A34(v17);
    }

    sub_10000501C(buf, "/cc/assertions/airplane_mode");
    ctu::rest::AssertionHandle::create();
    if (SHIBYTE(v35) < 0)
    {
      operator delete(*buf);
    }

    v24 = *(a1 + 4624);
    *(a1 + 4616) = v28;
    if (v24)
    {
      sub_100004A34(v24);
    }

    sub_100004AA0(buf, (a1 + 8));
    v26 = *buf;
    v25 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
    }

    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 16), 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *&v29 = a3;
    *(&v29 + 1) = __PAIR64__(a4, a2);
    *buf = a1;
    *&buf[8] = v26;
    v35 = v25;
    v36 = v30;
    v37 = v31;
    v38 = a1;
    v39 = a2;
    v40 = v32;
    v41 = v7;
    *(v42 + 12) = *&v33[12];
    v42[0] = *v33;
    v44 = a4;
    v43 = a3;
    v45 = v29;
    v46 = 0;
    operator new();
  }

  (*(*a1 + 2176))(a1, a2, a4, 1, "already have SIM set");
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1007B1A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if ((v48 & 1) == 0)
  {
    sub_100004A34(v49);
  }

  sub_1007B3E04(&a31);
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::ipcInterfaceConfigOnRadioState(Registry **a1, unsigned int a2)
{
  if (capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    ServiceMap = Registry::getServiceMap(a1[13]);
    v5 = ServiceMap;
    if (a2 <= 2)
    {
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
      __p[0] = v6;
      v10 = sub_100009510(&v5[1].__m_.__sig, __p);
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
            goto LABEL_27;
          }

          goto LABEL_19;
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
        goto LABEL_27;
      }

LABEL_19:
      sub_10000501C(&v27, "Baseband state change: ");
      v19 = radioStateAsString();
      v20 = strlen(v19);
      v21 = std::string::append(&v27, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v29 = v21->__r_.__value_.__r.__words[2];
      *__p = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      (*(*v12 + 40))(v12, __p);
LABEL_23:
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      goto LABEL_27;
    }

    if (v6 < 0)
    {
      v14 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v6 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v6;
    v17 = sub_100009510(&v5[1].__m_.__sig, __p);
    if (v17)
    {
      v18 = v17[3];
      v11 = v17[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v13 = 0;
        if (!v18)
        {
LABEL_27:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          return;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v18)
    {
      goto LABEL_27;
    }

LABEL_22:
    sub_10000501C(&v27, "Baseband state change: ");
    v23 = radioStateAsString();
    v24 = strlen(v23);
    v25 = std::string::append(&v27, v23, v24);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v29 = v25->__r_.__value_.__r.__words[2];
    *__p = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    (*(*v18 + 48))(v18, __p);
    goto LABEL_23;
  }
}

void sub_1007B1DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::handleRadioState_sync(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 884);
  if (v3 == a2)
  {
    goto LABEL_40;
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = radioStateAsString();
    v7 = radioStateAsString();
    v8 = asStringBool(*(a1 + 4616) != 0);
    if (*(a1 + 4672))
    {
      v9 = *(a1 + 4616) != 0;
    }

    else
    {
      v9 = 0;
    }

    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    *&buf[22] = 2080;
    *&buf[24] = v8;
    v53 = 2080;
    v54 = asStringBool(v9);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I radio state (change states) %s->%s, airplane assertion %s, airplane assertion waiting %s", buf, 0x2Au);
  }

  DataServiceController::ipcInterfaceConfigOnRadioState(a1, v3);
  if (a2 <= 1)
  {
    if (v3 > 5 || ((1 << v3) & 0x2C) == 0)
    {
      goto LABEL_29;
    }

    v10 = *(a1 + 144);
    v11 = *(v10 + 8);
    for (i = *(v10 + 16); v11 != i; v11 += 54)
    {
      v13 = v11[3];
      if (v13)
      {
        (*(*v13 + 352))(v13);
        v15 = v11[52];
        v14 = v11[53];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          v16 = *(v15 + 52);
          sub_100004A34(v14);
        }

        else
        {
          v16 = *(v15 + 52);
        }

        DataServiceController::tetheringAuthStateReset_sync(a1, v16, 0);
      }
    }
  }

  if (v3 == 3)
  {
    if (*(a1 + 4616))
    {
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I MSIM update: baseband got reset while reconfiguring", buf, 2u);
      }

      DataServiceController::handleMSimConfigCallbackFromBB_sync(a1, *(a1 + 4688), *(a1 + 4692), 1, 0);
    }
  }

  else if (v3 == 2 && *(a1 + 4672) && *(a1 + 4616))
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I MSIM update: got real airplane mode", buf, 2u);
    }

    memset(buf, 0, sizeof(buf));
    sub_10010BE30(buf, a1 + 4648);
    sub_10016DBD4(a1 + 4648);
    if (!*&buf[24])
    {
      sub_100022DB4();
    }

    (*(**&buf[24] + 48))(*&buf[24]);
    sub_10002B644(buf);
  }

LABEL_29:
  isRadioOff = DataServiceController::isRadioOff(v3);
  if (isRadioOff == DataServiceController::isRadioOff(a2))
  {
    goto LABEL_39;
  }

  if (DataServiceController::isRadioOff(v3))
  {
    v20 = "Radio Off";
  }

  else
  {
    v20 = "Radio On";
  }

  sub_10000501C(__p, v20);
  *buf = 3;
  buf[4] = 0;
  if (SHIBYTE(v51) < 0)
  {
    sub_100005F2C(&buf[8], __p[0], __p[1]);
  }

  else
  {
    *&buf[8] = *__p;
    *&buf[24] = v51;
  }

  sub_10008B0C8();
  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_39:
    if (v3)
    {
      goto LABEL_40;
    }
  }

  v27 = *(a1 + 144);
  v28 = *(v27 + 8);
  for (j = *(v27 + 16); v28 != j; v28 += 54)
  {
    v30 = *v28;
    v31 = v28[1];
    while (v30 != v31)
    {
      v32 = *v30;
      v33 = v30[1];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v32)
      {
        (*(*v32 + 40))(v32);
      }

      if (v33)
      {
        sub_100004A34(v33);
      }

      v30 += 2;
    }
  }

  DataServiceController::updateCurrentDataSIMToBB_sync(a1, 5);
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v35 = ServiceMap;
  if (v36 < 0)
  {
    v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
    v38 = 5381;
    do
    {
      v36 = v38;
      v39 = *v37++;
      v38 = (33 * v38) ^ v39;
    }

    while (v39);
  }

  std::mutex::lock(ServiceMap);
  *buf = v36;
  v40 = sub_100009510(&v35[1].__m_.__sig, buf);
  if (v40)
  {
    v42 = v40[3];
    v41 = v40[4];
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v35);
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v41);
      v43 = 0;
      if (!v42)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

  else
  {
    v42 = 0;
  }

  std::mutex::unlock(v35);
  v41 = 0;
  v43 = 1;
  if (v42)
  {
LABEL_67:
    v44 = (**v42)(v42);
    DataServiceController::notifyCellularDataSwitchingAllowed_sync(a1, v44);
  }

LABEL_68:
  if ((v43 & 1) == 0)
  {
    sub_100004A34(v41);
  }

  v45 = *(a1 + 144);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  while (v46 != v47)
  {
    v48 = *(v46 + 24);
    if (v48)
    {
      isDataAllowed = DataServiceController::isDataAllowed(a1);
      (*(*v48 + 904))(v48, isDataAllowed);
    }

    v46 += 432;
  }

LABEL_40:
  v21 = *(a1 + 4721);
  v22 = DataServiceController::isRadioOff(v3);
  *(a1 + 4721) = v22;
  if (v21 != v22)
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = asStringBool(v21);
      v25 = asStringBool(*(a1 + 4721));
      *buf = 136315650;
      *&buf[4] = "handleRadioState_sync";
      *&buf[12] = 2080;
      *&buf[14] = v24;
      *&buf[22] = 2080;
      *&buf[24] = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: radio off %s->%s", buf, 0x20u);
    }
  }

  result = *(a1 + 4728);
  *(a1 + 4728) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1007B2430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::handleMSimConfigCallbackFromBB_sync(uint64_t a1, uint64_t a2, int a3, _BOOL4 a4, BOOL a5)
{
  if ((*(a1 + 288) & 1) == 0)
  {
    v8 = a2;
    v10 = sub_100097DB0(*(a1 + 144), a2);
    if (v10 || capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v10))
    {
      if (*(a1 + 4616))
      {
        if (!*(a1 + 4672))
        {
          v11 = *(a1 + 4688);
          if (v11)
          {
            if (a4)
            {
              if (a5)
              {
                if (v11 == v8 && ((v12 = *(a1 + 4692), v12 == a3) || !v12))
                {
                  v17 = *(a1 + 4684);
                  v18 = *(a1 + 40);
                  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
                  if (v17 == 1)
                  {
                    if (v19)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I MSIM update: config done, waiting for remap completion", buf, 2u);
                    }

                    *(a1 + 4696) = 1;
                  }

                  else
                  {
                    if (v19)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I MSIM update: BB part done (1)", buf, 2u);
                      v8 = *(a1 + 4688);
                      v12 = *(a1 + 4692);
                    }

                    (*(*a1 + 2176))(a1, v8, v12, 1, "BB part done");
                  }
                }

                else
                {
                  v13 = *(a1 + 40);
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    v23 = subscriber::asString();
                    v24 = 2080;
                    v25 = subscriber::asString();
                    v26 = 2080;
                    v27 = subscriber::asString();
                    v28 = 2080;
                    v29 = subscriber::asString();
                    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I MSIM update: failed configration: wrong SIM result: %s/%s (must be %s/%s)", buf, 0x2Au);
                    v11 = *(a1 + 4688);
                  }

                  (*(*a1 + 2176))(a1, v11, *(a1 + 4692), 0, "failed configration: wrong SIM result");
                }
              }

              else
              {
                v16 = *(a1 + 40);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I MSIM update: failed configration", buf, 2u);
                  v11 = *(a1 + 4688);
                }

                (*(*a1 + 2176))(a1, v11, *(a1 + 4692), 0, "failed configration");
              }
            }
          }

          else
          {
            v15 = *(a1 + 40);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I MSIM update: stray BB information, ignore it", buf, 2u);
            }
          }
        }
      }

      else if (*(a1 + 4548) != v8 || *(a1 + 4552) != a3)
      {
        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v23 = subscriber::asString();
          v24 = 2080;
          v25 = subscriber::asString();
          v26 = 2080;
          v27 = subscriber::asString();
          v28 = 2080;
          v29 = subscriber::asString();
          v30 = 2080;
          v31 = asStringBool(a4);
          v32 = 2080;
          v33 = asStringBool(a5);
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MSIM: (change states) fPreferredDataSIMFromBB %s ==>> %s mode %s ==> %s (bb reported configCompleted = %s success = %s)", buf, 0x3Eu);
        }

        *(a1 + 4548) = v8;
        *(a1 + 4552) = a3;
        (*(*a1 + 2192))(a1, "getter or unsolicited notification");
        sub_10000501C(__p, "preferredDataSIM updated (2)");
        (*(*a1 + 1376))(a1, 3, __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_1007B2968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::updateCurrentDataSIMToBB_sync(uint64_t a1, uint64_t a2)
{
  if (!capabilities::ct::supportsGemini(a1))
  {
    return;
  }

  v4 = atomic_load((a1 + 4544));
  v5 = *(a1 + 112);
  *&v13 = *(a1 + 104);
  *(&v13 + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (*(&v13 + 1))
  {
    sub_100004A34(*(&v13 + 1));
  }

  if ((isValidSimSlot & 1) == 0)
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(v13) = 136315138;
    *(&v13 + 4) = asString();
    v11 = "#N MSIM switch: invalid sim slot for BB SIM update (%s)";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
    return;
  }

  if (!sub_100097DB0(*(a1 + 144), v4))
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(v13) = 136315138;
    *(&v13 + 4) = asString();
    v11 = "#E MSIM switch: no data model for BB SIM update (%s)";
    goto LABEL_16;
  }

  v7 = sub_1000A8A0C(*(a1 + 144), v4);
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    (*(*v8 + 832))(v8, a2);
  }

  else
  {
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13) = 136315138;
      *(&v13 + 4) = asString();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E MSIM switch: data driver is empty for BB SIM update (%s)", &v13, 0xCu);
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1007B2C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::notifyCellularDataSwitchingAllowed_sync(DataServiceController *this, uint64_t a2)
{
  if (capabilities::ct::supports5G(this))
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I notifyCellularDataSwitchingAllowed %d", v10, 8u);
    }

    v5 = *(this + 18);
    v6 = (*(*this + 1104))(this);
    v7 = sub_100007B88(v5, v6);
    if (*(*(this + 18) + 16) == v7)
    {
      v9 = *(this + 5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I PreferredDataSIM not ready yet", v10, 2u);
      }
    }

    else
    {
      v8 = *(v7 + 24);
      if (v8)
      {
        (*(*v8 + 752))(v8, a2);
      }
    }
  }
}

void DataServiceController::setMsimBackoff_sync(uint64_t a1, uint64_t a2, int a3, int a4, int a5, char a6, uint64_t a7)
{
  if (*(a1 + 4704))
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = a7;
      *&buf[12] = 2080;
      *&buf[14] = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MSIM update: backoff reason <%s>: setting timer (mode %s)", buf, 0x16u);
    }

    v15 = *(a1 + 4704);
    *(a1 + 4704) = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v35 = 0;
    v36 = 0;
    Registry::getTimerService(&v35, *(a1 + 104));
    if (v35)
    {
      sub_100004AA0(buf, (a1 + 8));
      v17 = *buf;
      v16 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
      }

      v18 = v35;
      sub_10000501C(__p, "MsimBackoff timer");
      v19 = *(a1 + 24);
      object = v19;
      if (v19)
      {
        dispatch_retain(v19);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_1007B3200;
      aBlock[3] = &unk_101E7E7E0;
      aBlock[4] = a1;
      aBlock[5] = v17;
      v29 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = a6;
      v31 = _Block_copy(aBlock);
      sub_100D23364(v18, __p, 0, 5000000, &object, &v31);
      v20 = *buf;
      *buf = 0;
      v21 = *(a1 + 4704);
      *(a1 + 4704) = v20;
      if (v21)
      {
        (*(*v21 + 8))(v21);
        v22 = *buf;
        *buf = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }
      }

      if (v31)
      {
        _Block_release(v31);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_weak(v29);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }
    }

    if (v36)
    {
      sub_100004A34(v36);
    }
  }

  v23 = *(a1 + 4712);
  if (v23)
  {
    v24 = a4 == 0;
  }

  else
  {
    v24 = 0;
  }

  if (!v24)
  {
    *(a1 + 4712) = a2;
    v23 = a2;
  }

  if (*(a1 + 4716))
  {
    v25 = a4 == 0;
  }

  else
  {
    v25 = 0;
  }

  if (!v25)
  {
    *(a1 + 4716) = a3;
  }

  v26 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v23);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = subscriber::asString();
    *buf = 136315394;
    *&buf[4] = v27;
    *&buf[12] = 2080;
    *&buf[14] = a7;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I set MsimBackoff timer for mode %s (reason <%s>)", buf, 0x16u);
  }
}

void sub_1007B3178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007B3200(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(v3 + 4704);
        *(v3 + 4704) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v7 = *(v3 + 884);
        v8 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 4712));
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = subscriber::asString();
          v13 = 2080;
          v14 = radioStateAsString();
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I fired MsimBackoff timer for mode %s, radio state %s", &v11, 0x16u);
        }

        v9 = *(v3 + 4712);
        if (*(a1 + 56) == 1 && v7)
        {
          DataServiceController::setMsimBackoff_sync(v3, v9, *(v3 + 4716), 0, 0, 1, "baseband not online");
        }

        else if (v9)
        {
          v10 = *(v3 + 4716);
          *(v3 + 4712) = 0;
          (*(*v3 + 2200))(v3, v9, v10);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1007B33EC(uint64_t result, uint64_t a2)
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

void sub_1007B3408(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void DataServiceController::onFullCompleteMSIM_sync(uint64_t a1, uint64_t a2, unsigned int a3, BOOL a4, uint64_t a5)
{
  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = subscriber::asString();
    *&buf[12] = 2080;
    *&buf[14] = a5;
    v56 = 2080;
    v57 = asStringBool(a4);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I MSIM update: mode: %s, onFullCompleteMSIM: reason: '%s', success: %s", buf, 0x20u);
  }

  v11 = (*(a1 + 4680) & 1) == 0;
  DataServiceController::MsimLpmWaiting::reset((a1 + 4616));
  if (!a4)
  {
    v36 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#E MSIM update: Cannot update preferredData SIM, will try again", buf, 2u);
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 8));
    operator new();
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    atomic_load((a1 + 4536));
    v13 = subscriber::asString();
    v14 = subscriber::asString();
    v15 = subscriber::asString();
    v16 = subscriber::asString();
    *buf = 136315906;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = v14;
    v56 = 2080;
    v57 = v15;
    v58 = 2080;
    v59 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I MSIM update: (change states) fPreferredDataSIM %s ==>> %s, fPreferredDataSIMFromBB %s ==>> %s", buf, 0x2Au);
    v12 = *(a1 + 40);
  }

  v17 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    atomic_load((a1 + 4540));
    v18 = subscriber::asString();
    v19 = subscriber::asString();
    v20 = subscriber::asString();
    v21 = subscriber::asString();
    *buf = 136315906;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = v19;
    v56 = 2080;
    v57 = v20;
    v58 = 2080;
    v59 = v21;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I MSIM update: (change states) fMSimConfigMode %s ==>> %s, fMSimConfigModeFromBB %s ==>> %s", buf, 0x2Au);
  }

  v22 = atomic_load((a1 + 4536));
  atomic_store(a2, (a1 + 4536));
  atomic_store(a3, (a1 + 4540));
  *(a1 + 4548) = a2;
  *(a1 + 4552) = a3;
  v23 = capabilities::ct::supportsGemini(v17);
  if (v23)
  {
    v23 = capabilities::ct::supportsDataSubscriptionController(v23);
    if ((v23 & 1) == 0 && *(a1 + 3784) != a2)
    {
      *(a1 + 3784) = a2;
      v23 = *(a1 + 3776);
      if (v23)
      {
        v23 = (*(*v23 + 48))(v23, a1 + 3784);
      }
    }
  }

  v24 = capabilities::ct::supportsGemini(v23);
  if (v24 && (v24 = capabilities::ct::supportsDataSubscriptionController(v24), !v24) || (v24 = capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v24), v24))
  {
    if (*(a1 + 3904) != a3)
    {
      *(a1 + 3904) = a3;
      v24 = *(a1 + 3896);
      if (v24)
      {
        v24 = (*(*v24 + 48))(v24, a1 + 3904);
      }
    }

    if (*(a1 + 3824) != a2)
    {
      *(a1 + 3824) = a2;
      v24 = *(a1 + 3816);
      if (v24)
      {
        v24 = (*(*v24 + 48))(v24, a1 + 3824);
      }
    }
  }

  v25 = capabilities::ct::supportsGemini(v24);
  if (v25 && (capabilities::ct::supportsDataSubscriptionController(v25) & 1) == 0)
  {
    v37 = atomic_load((a1 + 4544));
    v38 = atomic_load((a1 + 4544));
    atomic_store(a2, (a1 + 4544));
    if (*(a1 + 3864) != a2)
    {
      *(a1 + 3864) = a2;
      v39 = *(a1 + 3856);
      if (v39)
      {
        (*(*v39 + 48))(v39, a1 + 3864);
      }
    }

    if (v37 != a2)
    {
      if (v38)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }

      DataServiceController::updateCurrentDataSIMToBB_sync(a1, v40);
      (*(**(a1 + 4584) + 56))(*(a1 + 4584), a2);
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        atomic_load((a1 + 4544));
        v42 = subscriber::asString();
        v43 = subscriber::asString();
        *buf = 136315394;
        *&buf[4] = v42;
        *&buf[12] = 2080;
        *&buf[14] = v43;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I MSIM update: (change states) fCurrentDataSIM %s ==>> %s", buf, 0x16u);
      }

      DataServiceController::initAgentPolicies_sync(a1);
    }
  }

  else
  {
    atomic_store(1u, (a1 + 4544));
  }

  if (v22 != a2)
  {
    DataServiceController::updateIpcConfiguration_sync(a1);
    (*(**(a1 + 4584) + 48))(*(a1 + 4584), a2);
    ServiceMap = Registry::getServiceMap(*(a1 + 104));
    v27 = ServiceMap;
    if (v28 < 0)
    {
      v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
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
    *buf = v28;
    v32 = sub_100009510(&v27[1].__m_.__sig, buf);
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
        if (!v34)
        {
LABEL_49:
          if ((v35 & 1) == 0)
          {
            sub_100004A34(v33);
          }

          goto LABEL_51;
        }

LABEL_48:
        v44 = (**v34)(v34);
        DataServiceController::notifyCellularDataSwitchingAllowed_sync(a1, v44);
        goto LABEL_49;
      }
    }

    else
    {
      v34 = 0;
    }

    std::mutex::unlock(v27);
    v33 = 0;
    v35 = 1;
    if (!v34)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_51:
  DataServiceController::setMsimBackoff_sync(a1, 0, 0, 0, 1, v11, "onFullCompleteMSIM_sync success");
  v45 = *(a1 + 144);
  v46 = *(v45 + 8);
  for (i = *(v45 + 16); v46 != i; v46 += 54)
  {
    v49 = v46[52];
    v48 = v46[53];
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      v50 = *(v49 + 52);
      sub_100004A34(v48);
    }

    else
    {
      v50 = *(v49 + 52);
    }

    if (v50 != (*(*a1 + 1104))(a1))
    {
      v51 = v46[7];
      v52 = v46[8];
      while (v51 != v52)
      {
        if ((*(**v51 + 232))(*v51, 0, 1, 0))
        {
          (*(**v51 + 1160))(*v51, "MSIM reconfig", 0, 0);
        }

        v51 += 2;
      }
    }
  }

  sub_10000501C(__p, "preferredDataSIM updated (1)");
  (*(*a1 + 1376))(a1, 3, __p);
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  DataServiceController::updateTetheringStatus_sync(a1);
  sub_10000501C(buf, "MSIM config complete");
  (*(*a1 + 2424))(a1, 3, buf, 0);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1007B3CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::MsimLpmWaiting::reset(DataServiceController::MsimLpmWaiting *this)
{
  v2 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  *(this + 64) = 0;
  sub_10016DBD4(this + 32);
  *(this + 17) = 3;
  *(this + 9) = 0;
  *(this + 80) = 0;
  v3 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void *sub_1007B3DBC(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t sub_1007B3E04(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void DataServiceController::handleMSimConfigCallbackFromBB(uint64_t a1, int a2, int a3, char a4, char a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1007B3F58;
  v7[3] = &unk_101E7E810;
  v7[4] = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14 = 0;
  v15 = 0;
  sub_100004AA0(&v14, (a1 + 8));
  v6 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10008D8F8;
  block[3] = &unk_101E7E9F8;
  block[5] = v14;
  v13 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v6, block);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void DataServiceController::handleMSimRemapStatusCallbackFromBB(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1007B4088;
  v4[3] = &unk_101E7E830;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10008D8F8;
  block[3] = &unk_101E7E9F8;
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

void DataServiceController::handleMSimRemapStatusCallbackFromBB_sync(uint64_t a1, int a2)
{
  if ((*(a1 + 288) & 1) == 0)
  {
    if (!*(a1 + 4616))
    {
      v4 = *(a1 + 40);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v8 = 136315138;
      v9 = asString();
      v5 = "#I MSIMRemapStatus: unexpected controller state - we are not reconfiguring: status = %s";
      goto LABEL_8;
    }

    if (*(a1 + 4672))
    {
      v4 = *(a1 + 40);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v8 = 136315138;
      v9 = asString();
      v5 = "#I MSIMRemapStatus: unexpected controller state - we are waiting for the airplane mode to kick in: status = %s";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
      return;
    }

    if (*(a1 + 4684) != a2)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = asString();
        v10 = 2080;
        v11 = asString();
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MSIMRemapStatus: (change states): %s ==> %s (bb reported)", &v8, 0x16u);
      }

      *(a1 + 4684) = a2;
    }

    if (a2 == 2 && *(a1 + 4696) == 1)
    {
      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I MSIM update: BB part done", &v8, 2u);
      }

      (*(*a1 + 2176))(a1, *(a1 + 4688), *(a1 + 4692), 1, "remap BB part done");
    }
  }
}

uint64_t DataServiceController::setActiveUserDataSlot(void **a1, uint64_t a2)
{
  v4 = *(*(*a1[6] + 16))(a1[6]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setActiveUserDataSlot", v6, 2u);
  }

  return ((*a1)[275])(a1, a2, 0);
}

uint64_t DataServiceController::setMSimConfig(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(*a1[6] + 16))(a1[6]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setMSimConfig", v8, 2u);
  }

  return ((*a1)[275])(a1, a2, a3);
}

void DataServiceController::setDataSlot(uint64_t a1, int a2, int a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1007B4580;
  v5[3] = &unk_101E7E850;
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10008D8F8;
  block[3] = &unk_101E7E9F8;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
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

void DataServiceController::setDataSlot_sync(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 288))
  {
    return;
  }

  v3 = a3;
  if (!a3)
  {
    v6 = capabilities::ct::supportsGemini(a1);
    if (v6 && (capabilities::ct::supportsDataSubscriptionController(v6) & 1) == 0)
    {
      v3 = *(a1 + 4716);
      if (v3)
      {
        v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v33 = 136315138;
        v34 = subscriber::asString();
        v8 = "#I MSIM update: msimMode adjusted to %s (1)";
      }

      else
      {
        v3 = *(a1 + 4692);
        if (!v3)
        {
          goto LABEL_8;
        }

        v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v33 = 136315138;
        v34 = subscriber::asString();
        v8 = "#I MSIM update: msimMode adjusted to %s (2)";
      }

      goto LABEL_7;
    }

    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    v3 = 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 136315138;
      v34 = subscriber::asString();
      v8 = "#I MSIM update: msimMode adjusted to %s (5)";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v33, 0xCu);
    }
  }

LABEL_8:
  if (*(a1 + 4704))
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = subscriber::asString();
      v33 = 136315138;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I MSIM update: backoff: we are already in backoff period, postponing change for mode %s", &v33, 0xCu);
    }

    v11 = *(a1 + 4680);
    v12 = "we are already in backoff period";
LABEL_16:
    DataServiceController::setMsimBackoff_sync(a1, a2, v3, 1, 0, (v11 & 1) == 0, v12);
    return;
  }

  if (*(a1 + 4616))
  {
    v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = subscriber::asString();
      v33 = 136315138;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setDataSlot: we are already in the middle of another update, postponing change for mode %s", &v33, 0xCu);
    }

    v11 = *(a1 + 4680);
    v12 = "we are already in the middle of another update";
    goto LABEL_16;
  }

  if (*(a1 + 4528) == a2 && (v15 = atomic_load((a1 + 4536)), v15 == a2) && *(a1 + 4548) == a2 && v3 == *(a1 + 4532) && (v16 = atomic_load((a1 + 4540)), v3 == v16) && v3 == *(a1 + 4552))
  {
    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = subscriber::asString();
      v33 = 136315138;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setDataSlot: slot already set for mode %s", &v33, 0xCu);
    }
  }

  else
  {
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = subscriber::asString();
      v21 = subscriber::asString();
      atomic_load((a1 + 4536));
      v22 = subscriber::asString();
      v23 = subscriber::asString();
      v24 = subscriber::asString();
      v25 = subscriber::asString();
      atomic_load((a1 + 4544));
      v26 = subscriber::asString();
      v33 = 136316674;
      v34 = v20;
      v35 = 2080;
      v36 = v21;
      v37 = 2080;
      v38 = v22;
      v39 = 2080;
      v40 = v23;
      v41 = 2080;
      v42 = v24;
      v43 = 2080;
      v44 = v25;
      v45 = 2080;
      v46 = v26;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setDataSlot: (change states attempt) active user data slot %s -> %s, preferred Data SIM %s -> %s, BB SIM %s -> %s, current Data SIM %s", &v33, 0x48u);
      v19 = *(a1 + 40);
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v27 = subscriber::asString();
      v28 = subscriber::asString();
      atomic_load((a1 + 4540));
      v29 = subscriber::asString();
      v30 = subscriber::asString();
      v31 = subscriber::asString();
      v32 = subscriber::asString();
      v33 = 136316418;
      v34 = v27;
      v35 = 2080;
      v36 = v28;
      v37 = 2080;
      v38 = v29;
      v39 = 2080;
      v40 = v30;
      v41 = 2080;
      v42 = v31;
      v43 = 2080;
      v44 = v32;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setActiveUserDualSIMMode: (change states attempt) active user %s -> %s, CT %s -> %s, BB %s -> %s", &v33, 0x3Eu);
    }

    *(a1 + 4528) = a2;
    *(a1 + 4532) = v3;
    (*(*a1 + 2192))(a1, "setDataSlot");
  }
}

uint64_t DataServiceController::preferredDataSIM(DataServiceController *this)
{
  if (capabilities::ct::supportsGemini(this) && (v2 = atomic_load(this + 1134), v2 == 2))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

BOOL DataServiceController::preferredDataSIMKnown(DataServiceController *this)
{
  result = 1;
  if (capabilities::ct::supportsGemini(this))
  {
    if (!atomic_load(this + 1134))
    {
      return 0;
    }
  }

  return result;
}
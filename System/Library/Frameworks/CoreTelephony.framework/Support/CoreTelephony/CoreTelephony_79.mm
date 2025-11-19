void sub_10050CB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p)
{
  sub_1005032D8(&__p);
  if (a50 == 1)
  {
    sub_100DB14E0(&a23);
  }

  sub_100319DE8(&a51);
  _Unwind_Resume(a1);
}

uint64_t sub_10050CC20(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_1005230E0(a1 + 64);
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *a1 = 0;
  }

  return a1;
}

void cellplan::CellularPlanControllerPhone::handleTransferRemotePlanTapped(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  ctu::cf::assign();
  v12[0] = 0;
  *(v12 + 3) = 0;
  __p = 0;
  v8 = 0;
  *v9 = v12[0];
  *&v9[3] = 0;
  v10 = 0;
  if (a4)
  {
    v6 = _Block_copy(a4);
  }

  else
  {
    v6 = 0;
  }

  aBlock = v6;
  v13[0] = 0;
  v13[1] = 0;
  sub_100004AA0(v13, (a1 + 8));
  operator new();
}

void cellplan::CellularPlanControllerPhone::handleTransferRemotePlanTapped(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  sub_100528224(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void cellplan::CellularPlanControllerPhone::getRemotePlanManageAccountInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a1;
  sub_1005284AC(&v6, a3);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_10050D1D8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100528544(v2 + 8);
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::requestRemotePlanSignupInfo(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  sub_1005284AC(&v8, a4);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_10050D364(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

const void **cellplan::CellularPlanControllerPhone::setActiveRemoteProfile(uint64_t a1, const void **a2, uint64_t a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_10050D498;
  v6[3] = &unk_101E53B30;
  v6[4] = a3;
  v6[5] = a1;
  sub_10005C7A4(&v7, a2);
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v4, block);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return sub_100005978(&v7);
}

uint64_t sub_10050D498(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I setActiveRemoteProfile", buf, 2u);
  }

  v4 = 328;
  if (*(v2 + 1224))
  {
    v4 = 1368;
  }

  v5 = v2 + v4;
  if (*(v5 + 40) == *(v5 + 32) || (*(v5 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101773344();
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(v2 + 160);
    memset(buf, 0, sizeof(buf));
    v12 = 0;
    ctu::cf::assign();
    *__p = *buf;
    v10 = v12;
    (*(*v6 + 88))(v6, 0, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  return v7();
}

void sub_10050D600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::reattemptPendingInstall_sync(cellplan::CellularPlanControllerPhone *this)
{
  v2 = 328;
  if (*(this + 1224))
  {
    v2 = 1368;
  }

  v3 = this + v2;
  v4 = *(this + v2 + 32);
  if (*(v3 + 5) == v4 || (v3[24] & 1) == 0)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }
  }

  else
  {
    v9 = *(v4 + 16);
    if (*(this + 32))
    {
      if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
      {
        sub_101773378();
      }
    }

    else if (cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(this, 0, &v9))
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I re-attempt pending install due to out of memory", buf, 2u);
      }

      v6 = 0;
      v7 = 0;
      sub_10032E870();
    }
  }
}

void sub_10050D9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1000DA89C(&a10);
  sub_10001021C(&a33);
  if (a70)
  {
    sub_100004A34(a70);
  }

  if (a35)
  {
    sub_100004A34(a35);
  }

  if (a40)
  {
    sub_100004A34(a40);
  }

  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(uint64_t a1, void *a2, const void **a3, uint64_t a4, char a5)
{
  v10 = *(a1 + 264);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(a1 + 280);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(a1 + 160);
  v13 = *(a1 + 1040);
  v17 = 0;
  v16 = 0uLL;
  v18[0] = 0;
  v19 = 0;
  sub_100520D38(v20, v13, &v16, v18, 0);
  (*(*v12 + 96))(v12, 0, v20);
  if (v24 == 1)
  {
    sub_100E3A5D4(&v22);
  }

  if (v21 < 0)
  {
    operator delete(v20[1]);
  }

  if (v19 == 1)
  {
    sub_100E3A5D4(v18);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  result = (*(**(a1 + 96) + 16))(*(a1 + 96));
  if ((a5 & 1) == 0)
  {
    cellplan::CellularPlanControllerPhone::displayRemoteCellularPlanErrorNotification(a1, a2);
    rest::PairedDeviceInfoList::getActiveDevice(v20, (a1 + 896));
    v15 = v23;
    (*(**(a1 + 208) + 176))(*(a1 + 208), a3, 1, a4, v23 == 1);
    cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(a1, a3, a4, v15 == 1);
    return sub_100DB14E0(v20);
  }

  return result;
}

void cellplan::CellularPlanControllerPhone::displayRemoteCellularPlanErrorNotification(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = 0;
  (*(**(a1 + 96) + 64))(&v4);
  if (v4)
  {
    (*(*v4 + 72))(v4, *a2, a2[1]);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017733E0();
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10050DD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **cellplan::CellularPlanControllerPhone::deleteRemotePlan(uint64_t a1, const void **a2, uint64_t a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_10050DE80;
  v6[3] = &unk_101E53BA0;
  v6[4] = a3;
  v6[5] = a1;
  sub_10005C7A4(&v7, a2);
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v4, block);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return sub_100005978(&v7);
}

void sub_10050DE80(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I deleteRemotePlan", buf, 2u);
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  *buf = 0u;
  v21 = 0u;
  v4 = 328;
  if (*(v2 + 1224))
  {
    v4 = 1368;
  }

  v5 = (v2 + v4);
  if (*(v2 + v4 + 23) < 0)
  {
    sub_100005F2C(buf, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    *&v21 = *(v5 + 2);
    *buf = v6;
  }

  *(&v21 + 1) = *(v5 + 3);
  v22 = 0uLL;
  *&v23 = 0;
  sub_10027E628(&v22, *(v5 + 4), *(v5 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(v5 + 5) - *(v5 + 4)) >> 3));
  v7 = *(v5 + 7);
  LODWORD(v24) = *(v5 + 16);
  *(&v23 + 1) = v7;
  if (*(&v22 + 1) == v22 || (BYTE8(v21) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }

    goto LABEL_14;
  }

  if (*(v2 + 256))
  {
LABEL_14:
    (*(*(a1 + 32) + 16))();
    goto LABEL_15;
  }

  v9 = *(v22 + 16);
  v8 = *(v22 + 24);
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v25 = 0uLL;
  v26 = 0;
  ctu::cf::assign();
  v10 = v25;
  v19[0] = v26;
  *(v19 + 3) = *(&v26 + 3);
  if (SHIBYTE(v26) < 0)
  {
    sub_100005F2C(&v37, v25, *(&v25 + 1));
    BYTE8(v38) = 1;
    operator delete(v10);
    v11 = *(v2 + 144);
    v32 = v36;
    if (SBYTE7(v38) < 0)
    {
      sub_100005F2C(&v33, v37, *(&v37 + 1));
      goto LABEL_22;
    }
  }

  else
  {
    v37 = v25;
    LODWORD(v38) = v19[0];
    *(&v38 + 3) = *(v19 + 3);
    BYTE7(v38) = HIBYTE(v26);
    BYTE8(v38) = 1;
    v11 = *(v2 + 144);
    v32 = v36;
  }

  v33 = v37;
  v34 = v38;
LABEL_22:
  v35 = BYTE8(v38);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = sub_10050E400;
  v13[3] = &unk_101E53B68;
  v13[4] = *(a1 + 32);
  v13[5] = v2;
  if (SBYTE7(v21) < 0)
  {
    sub_100005F2C(v14, *buf, *&buf[8]);
  }

  else
  {
    *v14 = *buf;
    v15 = v21;
  }

  v16 = *(&v21 + 1);
  memset(v17, 0, 24);
  sub_10027E628(v17, v22, *(&v22 + 1), 0x2E8BA2E8BA2E8BA3 * ((*(&v22 + 1) - v22) >> 3));
  v17[3] = *(&v23 + 1);
  v18 = v24;
  (*(*v11 + 72))(v11, v9, v8, &v32, v13);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  v12 = *(v2 + 160);
  v27[0] = 0;
  v28 = v36;
  if (SBYTE7(v38) < 0)
  {
    sub_100005F2C(&__p, v37, *(&v37 + 1));
  }

  else
  {
    __p = v37;
    v30 = v38;
  }

  v31 = BYTE8(v38);
  v27[0] = 1;
  (*(*v12 + 80))(v12, v27);
  if (v27[0] == 1)
  {
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }

    v27[0] = 0;
  }

  (*(**(v2 + 96) + 16))(*(v2 + 96));
  *&v25 = v17;
  sub_100112048(&v25);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (SBYTE7(v38) < 0)
  {
    operator delete(v37);
  }

LABEL_15:
  *&v36 = &v22;
  sub_100112048(&v36);
  if (SBYTE7(v21) < 0)
  {
    operator delete(*buf);
  }
}

void sub_10050E314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (*(v55 - 121) < 0)
  {
    operator delete(*(v55 - 144));
  }

  sub_100319DE8(&a28);
  _Unwind_Resume(a1);
}

void sub_10050E400(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 160);
  v10[0] = 0;
  (*(*v5 + 80))(v5, v10);
  if (v10[0] == 1)
  {
    if (v12 < 0)
    {
      operator delete(__p);
    }

    v10[0] = 0;
  }

  v6 = *a2;
  if (v6 == 2)
  {
    v7 = *(v4 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I deleteRemotePlan error: %s", &v8, 0xCu);
    }

    goto LABEL_13;
  }

  if (v6 != 1 || a2[1] != 1)
  {
LABEL_13:
    (*(*(a1 + 32) + 16))();
    return;
  }

  (*(*(a1 + 32) + 16))();
  sub_10006DCAC(v4 + 928, *(v4 + 936));
  *(v4 + 928) = v4 + 936;
  *(v4 + 936) = 0u;
  if (*(a1 + 109) == 1 && *(a1 + 108) == 1)
  {
    cellplan::CellularPlanControllerPhone::reattemptPendingInstall_sync(v4);
  }
}

void sub_10050E594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10050E5C4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
  }

  v5 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  result = sub_10027E628(a1 + 80, *(a2 + 80), *(a2 + 88), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  v7 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v7;
  return result;
}

void sub_10050E658(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10050E674(uint64_t a1)
{
  v2 = (a1 + 80);
  sub_100112048(&v2);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void cellplan::CellularPlanControllerPhone::deleteAllRemotePlans(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10050E7C8;
  v4[3] = &unk_101E53C00;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_10050E7C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I deleteAllRemotePlans", buf, 2u);
  }

  v4 = 328;
  if (*(v2 + 1224))
  {
    v4 = 1368;
  }

  v5 = v2 + v4;
  v6 = *(v2 + v4 + 32);
  if (*(v5 + 40) == v6 || (*(v5 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v2 + 144);
    sub_1013F05F4(v22);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_10050EA88;
    v12[3] = &unk_101E53BD8;
    v12[4] = *(a1 + 32);
    v12[5] = v2;
    (*(*v9 + 72))(v9, v7, v8, v22, v12);
    if (v24 < 0)
    {
      operator delete(v23);
    }

    v10 = *(v2 + 160);
    sub_1013F05F4(buf);
    v18 = *buf;
    *__p = *v14;
    v20 = v15;
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    v21 = v16;
    v17[0] = 1;
    (*(*v10 + 80))(v10, v17);
    if (v17[0] == 1)
    {
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }

      v17[0] = 0;
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    return (*(**(v2 + 96) + 16))(*(v2 + 96));
  }
}

void sub_10050EA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 == 1 && a32 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10050EA88(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 160);
  v10[0] = 0;
  (*(*v5 + 80))(v5, v10);
  if (v10[0] == 1)
  {
    if (v12 < 0)
    {
      operator delete(__p);
    }

    v10[0] = 0;
  }

  v6 = *a2;
  if (v6 == 2)
  {
    v7 = *(v4 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I deleteRemotePlan error: %s", &v8, 0xCu);
    }
  }

  else if (v6 == 1 && a2[1] == 1)
  {
    (*(*(a1 + 32) + 16))();
    sub_10006DCAC(v4 + 928, *(v4 + 936));
    *(v4 + 928) = v4 + 936;
    *(v4 + 936) = 0u;
    return;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10050EBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::userSignupInitiatedOrFailed(cellplan::CellularPlanControllerPhone *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

const void **cellplan::CellularPlanControllerPhone::didPurchaseRemotePlan(uint64_t a1, const void **a2, const void **a3, const void **a4, const void **a5, const void **a6)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = sub_10050EE94;
  v13[3] = &unk_101E53C20;
  v13[4] = a1;
  sub_10005C7A4(&v14, a2);
  sub_10005C7A4(&v15, a3);
  sub_10005C7A4(&v16, a4);
  sub_10005C7A4(&v17, a5);
  sub_10005C7A4(&v18, a6);
  v21 = 0;
  v22 = 0;
  sub_100004AA0(&v21, (a1 + 8));
  v11 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v21;
  v20 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v13;
  dispatch_async(v11, block);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_100005978(&v18);
  sub_100005978(&v17);
  sub_100005978(&v16);
  sub_100005978(&v15);
  return sub_100005978(&v14);
}

const void **sub_10050EE94(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_10005C7A4(&v8, (a1 + 40));
  sub_10005C7A4(&v7, (a1 + 48));
  sub_10005C7A4(&v6, (a1 + 56));
  sub_10005C7A4(&v5, (a1 + 64));
  sub_10005C7A4(&v4, (a1 + 72));
  cellplan::CellularPlanControllerPhone::didPurchaseRemotePlan_sync(v2, &v8, &v7, &v6, &v5, &v4);
  sub_100005978(&v4);
  sub_100005978(&v5);
  sub_100005978(&v6);
  sub_100005978(&v7);
  return sub_100005978(&v8);
}

void sub_10050EF40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  sub_100005978(va3);
  sub_100005978((v2 - 24));
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::didPurchaseRemotePlan_sync(uint64_t a1, void *a2, void *a3, void *a4, const void **a5, void *a6)
{
  if (*a2 || *a3 || *a4)
  {
    sub_10005C7A4(&v72, a5);
    v11 = sub_10092231C();
    sub_100005978(&v72);
    if (v11)
    {
      v109 = 0uLL;
      memset(buf, 0, 24);
      ctu::cf::assign();
      __str = *buf;
      if (*a2)
      {
        memset(v95, 0, 24);
        memset(buf, 0, 24);
        ctu::cf::assign();
        *v95 = *buf;
        *&v95[16] = *&buf[16];
        v12 = *(a1 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v95;
          if (v95[23] < 0)
          {
            v13 = *v95;
          }

          p_str = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = p_str;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I did purchase remote plan eid:%s, iccid:%s", buf, 0x16u);
        }

        memset(buf, 0, 24);
        ctu::parse_hex();
        v15 = *buf;
        v16 = *&buf[8] - *buf;
        if (*&buf[8] - *buf == 16)
        {
          if (*&buf[8] != *buf)
          {
            v109 = **buf;
            goto LABEL_43;
          }
        }

        else
        {
          v27 = *(a1 + 40);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v92) = 0;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "EID not valid", &v92, 2u);
            v15 = *buf;
            if (!*buf)
            {
LABEL_44:
              if ((v95[23] & 0x80000000) != 0)
              {
                operator delete(*v95);
              }

              if (v16 != 16)
              {
                goto LABEL_162;
              }

LABEL_47:
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                __p = __str;
              }

              sub_10050BA94(&__p, buf);
              v28 = (a1 + 976);
              if (*(a1 + 999) < 0)
              {
                operator delete(*v28);
              }

              *v28 = *buf;
              *(a1 + 992) = *&buf[16];
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              (*(**(a1 + 160) + 288))(*(a1 + 160), a1 + 976);
              v29 = 0uLL;
              memset(v108, 0, sizeof(v108));
              if (*a6)
              {
                memset(buf, 0, 24);
                ctu::cf::assign();
                v30 = *buf;
                *v95 = *&buf[8];
                *&v95[7] = *&buf[15];
                v31 = buf[23];
                if (v108[0])
                {
                  if (SHIBYTE(v108[3]) < 0)
                  {
                    operator delete(v108[1]);
                  }

                  v108[1] = v30;
                  v108[2] = *v95;
                  *(&v108[2] + 7) = *&v95[7];
                  HIBYTE(v108[3]) = v31;
                }

                else
                {
                  v108[1] = *buf;
                  v108[2] = *v95;
                  *(&v108[2] + 7) = *&v95[7];
                  HIBYTE(v108[3]) = buf[23];
                  LOBYTE(v108[0]) = 1;
                }

                v32 = *(a1 + 40);
                v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
                v29 = 0uLL;
                if (v33)
                {
                  if ((v108[0] & 1) == 0)
                  {
                    __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
                  }

                  v34 = &v108[1];
                  if (v31 < 0)
                  {
                    v34 = v30;
                  }

                  *buf = 136315138;
                  *&buf[4] = v34;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I alternate smdp: %s", buf, 0xCu);
                  v29 = 0uLL;
                }
              }

              v106 = v29;
              v107 = v29;
              v104 = v29;
              v105 = v29;
              v102 = v29;
              v103 = v29;
              v100 = v29;
              v101 = v29;
              v98 = v29;
              v99 = v29;
              v96 = v29;
              v97 = v29;
              *v95 = v29;
              *&v95[16] = v29;
              RemoteVinylInfo::findProfile();
              if (BYTE8(v107))
              {
                goto LABEL_88;
              }

              v94 = 0;
              memset(&v93, 0, 192);
              size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = __str.__r_.__value_.__l.__size_;
              }

              v92 = 0uLL;
              if (size)
              {
                std::string::operator=(&v93, &__str);
                v36 = *(a1 + 160);
                v37 = *(a1 + 1040);
                v69 = 0;
                v68 = 0uLL;
                sub_100F11F00(v81, &v92);
                v82 = 1;
                sub_100520D38(buf, v37, &v68, v81, 0);
                (*(*v36 + 96))(v36, 1, buf);
                if (v91 == 1)
                {
                  sub_100E3A5D4(&v84);
                }

                if ((buf[31] & 0x80000000) != 0)
                {
                  operator delete(*&buf[8]);
                }

                if (v82 == 1)
                {
                  sub_100E3A5D4(v81);
                }

                if ((SHIBYTE(v69) & 0x80000000) == 0)
                {
                  goto LABEL_87;
                }

                v38 = v68;
              }

              else
              {
                v39 = *(a1 + 160);
                v40 = *(a1 + 1040);
                v67 = 0;
                v66 = 0uLL;
                v79[0] = 0;
                v80 = 0;
                sub_100520D38(buf, v40, &v66, v79, 0);
                (*(*v39 + 96))(v39, 1, buf);
                if (v91 == 1)
                {
                  sub_100E3A5D4(&v84);
                }

                if ((buf[31] & 0x80000000) != 0)
                {
                  operator delete(*&buf[8]);
                }

                if (v80 == 1)
                {
                  sub_100E3A5D4(v79);
                }

                if ((SHIBYTE(v67) & 0x80000000) == 0)
                {
                  goto LABEL_87;
                }

                v38 = v66;
              }

              operator delete(v38);
LABEL_87:
              (*(**(a1 + 96) + 16))(*(a1 + 96));
              sub_100E3A5D4(&v92);
LABEL_88:
              v41 = *(a1 + 256);
              if (v41)
              {
                v76[0] = 0;
                if (LOBYTE(v108[0]) == 1)
                {
                  if (SHIBYTE(v108[3]) < 0)
                  {
                    sub_100005F2C(&v77, v108[1], v108[2]);
                  }

                  else
                  {
                    v77 = *&v108[1];
                    v78 = v108[3];
                  }

                  v76[0] = 1;
                }

                (*(*v41 + 120))(v41, &v109, a1 + 976, v76);
                if (v76[0] == 1)
                {
                  if (SHIBYTE(v78) < 0)
                  {
                    operator delete(v77);
                  }

                  v76[0] = 0;
                }

                if (BYTE8(v107) == 1)
                {
                  sub_100E3A5D4(v95);
                }

                if (LOBYTE(v108[0]) == 1 && SHIBYTE(v108[3]) < 0)
                {
                  operator delete(v108[1]);
                }

                if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_184;
                }

                v56 = __str.__r_.__value_.__r.__words[0];
LABEL_171:
                operator delete(v56);
                goto LABEL_184;
              }

              if ((BYTE8(v107) & 1) == 0)
              {
                v43 = *(a1 + 40);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I did purchase without provisioning operation", buf, 2u);
                }

                v92 = 0uLL;
                sub_10032E870();
              }

              sub_100E3A5D4(v95);
              if (LOBYTE(v108[0]) != 1 || (SHIBYTE(v108[3]) & 0x80000000) == 0)
              {
                goto LABEL_162;
              }

              v42 = v108[1];
LABEL_161:
              operator delete(v42);
LABEL_162:
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              goto LABEL_164;
            }

LABEL_43:
            *&buf[8] = v15;
            operator delete(v15);
            goto LABEL_44;
          }
        }

        if (!v15)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      memset(buf, 0, sizeof(buf));
      v17 = 408;
      if (*(a1 + 1224))
      {
        v17 = 1232;
      }

      sub_10027E51C(buf, (a1 + v17));
      if (*a3 && buf[24] == 1)
      {
        v92 = 0uLL;
        v93.__r_.__value_.__r.__words[0] = 0;
        memset(v95, 0, 24);
        ctu::cf::assign();
        v92 = *v95;
        v93.__r_.__value_.__r.__words[0] = *&v95[16];
        v18 = *(a1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = &v92;
          if (v93.__r_.__value_.__s.__data_[7] < 0)
          {
            v19 = v92;
          }

          v20 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v20 = __str.__r_.__value_.__r.__words[0];
          }

          *v95 = 136315394;
          *&v95[4] = v19;
          *&v95[12] = 2080;
          *&v95[14] = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I did purchase remote plan imei:%s, iccid:%s", v95, 0x16u);
        }

        if ((buf[24] & 1) == 0)
        {
          __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
        }

        v21 = v93.__r_.__value_.__s.__data_[7];
        if (v93.__r_.__value_.__s.__data_[7] >= 0)
        {
          v22 = v93.__r_.__value_.__s.__data_[7];
        }

        else
        {
          v22 = *(&v92 + 1);
        }

        v23 = BYTE7(v85);
        if (SBYTE7(v85) < 0)
        {
          v23 = *(&v84 + 1);
        }

        if (v22 == v23)
        {
          if (v93.__r_.__value_.__s.__data_[7] >= 0)
          {
            v24 = &v92;
          }

          else
          {
            v24 = v92;
          }

          if ((SBYTE7(v85) & 0x80u) == 0)
          {
            v25 = &v84;
          }

          else
          {
            v25 = v84;
          }

          v26 = memcmp(v24, v25, v22) == 0;
        }

        else
        {
          v26 = 0;
        }

        if (v21 < 0)
        {
          operator delete(v92);
        }
      }

      else
      {
        v26 = 0;
      }

      if (*a4 && BYTE8(v85) == 1)
      {
        v92 = 0uLL;
        v93.__r_.__value_.__r.__words[0] = 0;
        memset(v95, 0, 24);
        ctu::cf::assign();
        v92 = *v95;
        v93.__r_.__value_.__r.__words[0] = *&v95[16];
        v44 = *(a1 + 40);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = &v92;
          if (v93.__r_.__value_.__s.__data_[7] < 0)
          {
            v45 = v92;
          }

          v46 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v46 = __str.__r_.__value_.__r.__words[0];
          }

          *v95 = 136315394;
          *&v95[4] = v45;
          *&v95[12] = 2080;
          *&v95[14] = v46;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I did purchase remote plan meid:%s, iccid:%s", v95, 0x16u);
        }

        if ((BYTE8(v85) & 1) == 0)
        {
          __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
        }

        v47 = v93.__r_.__value_.__s.__data_[7];
        if (v93.__r_.__value_.__s.__data_[7] >= 0)
        {
          v48 = v93.__r_.__value_.__s.__data_[7];
        }

        else
        {
          v48 = *(&v92 + 1);
        }

        v49 = BYTE7(v87);
        if (SBYTE7(v87) < 0)
        {
          v49 = *(&v86 + 1);
        }

        if (v48 == v49)
        {
          if (v93.__r_.__value_.__s.__data_[7] >= 0)
          {
            v50 = &v92;
          }

          else
          {
            v50 = v92;
          }

          if ((SBYTE7(v87) & 0x80u) == 0)
          {
            v51 = &v86;
          }

          else
          {
            v51 = v86;
          }

          LOBYTE(v26) = (memcmp(v50, v51, v48) == 0) | v26;
          if (v47 < 0)
          {
LABEL_124:
            operator delete(v92);
            if (v26)
            {
              goto LABEL_127;
            }

LABEL_147:
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101773414();
            }

            goto LABEL_149;
          }
        }

        else if (v93.__r_.__value_.__s.__data_[7] < 0)
        {
          goto LABEL_124;
        }

        if ((v26 & 1) == 0)
        {
          goto LABEL_147;
        }
      }

      else if (!v26)
      {
        goto LABEL_147;
      }

LABEL_127:
      v52 = 328;
      if (*(a1 + 1224))
      {
        v52 = 1368;
      }

      v53 = a1 + v52;
      v54 = *(a1 + v52 + 32);
      if (*(v53 + 40) != v54 && (*(v53 + 24) & 1) != 0)
      {
        v109 = *(v54 + 16);
        if (SBYTE7(v89) < 0)
        {
          operator delete(v88);
        }

        if (BYTE8(v85) == 1)
        {
          if (SBYTE7(v87) < 0)
          {
            operator delete(v86);
          }

          BYTE8(v85) = 0;
        }

        if (buf[24] == 1)
        {
          if (SBYTE7(v85) < 0)
          {
            operator delete(v84);
          }

          buf[24] = 0;
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        goto LABEL_47;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177347C();
      }

LABEL_149:
      if (SBYTE7(v89) < 0)
      {
        operator delete(v88);
      }

      if (BYTE8(v85) == 1)
      {
        if (SBYTE7(v87) < 0)
        {
          operator delete(v86);
        }

        BYTE8(v85) = 0;
      }

      if (buf[24] == 1)
      {
        if (SBYTE7(v85) < 0)
        {
          operator delete(v84);
        }

        buf[24] = 0;
      }

      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      v42 = *buf;
      goto LABEL_161;
    }
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017734B0();
  }

LABEL_164:
  v55 = *(a1 + 256);
  if (v55)
  {
    *&v95[8] = 0;
    *v95 = 0;
    memset(buf, 0, 24);
    v73[0] = 0;
    (*(*v55 + 120))(v55, v95, buf, v73);
    if (v73[0] == 1)
    {
      if (v75 < 0)
      {
        operator delete(v74);
      }

      v73[0] = 0;
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      v56 = *buf;
      goto LABEL_171;
    }
  }

LABEL_184:
  *(&v92 + 3) = 0;
  LODWORD(v92) = 0;
  *v95 = 0;
  (*(**(a1 + 128) + 120))(v95);
  if (*v95)
  {
    memset(buf, 0, 24);
    ctu::cf::assign();
    v57 = *buf;
    v58 = *&buf[8];
    LODWORD(v92) = *&buf[16];
    *(&v92 + 3) = *&buf[19];
    v59 = buf[23];
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
  }

  sub_100005978(v95);
  rest::PairedDeviceInfoList::getActiveDevice(buf, (a1 + 896));
  v60 = buf[0];
  sub_100DB14E0(buf);
  if (v60 == 2)
  {
    v61 = 2;
  }

  else
  {
    v61 = 1;
  }

  v62 = *(a1 + 208);
  if (v59 < 0)
  {
    sub_100005F2C(__dst, v57, v58);
  }

  else
  {
    __dst[0] = v57;
    __dst[1] = v58;
    *v64 = v92;
    *&v64[3] = *(&v92 + 3);
    v65 = v59;
  }

  (*(*v62 + 144))(v62, __dst, 0, v61);
  if ((v65 & 0x80000000) == 0)
  {
    if ((v59 & 0x80) == 0)
    {
      return;
    }

LABEL_197:
    operator delete(v57);
    return;
  }

  operator delete(__dst[0]);
  if (v59 < 0)
  {
    goto LABEL_197;
  }
}

void sub_10051004C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, dispatch_object_t object, uint64_t a43, std::__shared_weak_count *a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a44)
  {
    sub_100004A34(a44);
  }

  if (STACK[0x4A8])
  {
    sub_100004A34(STACK[0x4A8]);
  }

  if (LOBYTE(STACK[0x658]) == 1)
  {
    sub_100E3A5D4(&STACK[0x580]);
  }

  if (*(v60 - 144) == 1 && *(v60 - 113) < 0)
  {
    operator delete(*(v60 - 136));
  }

  if (a60 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_10051031C(const void **a1, const void **a2)
{
  sub_10005C7A4(a1 + 5, a2 + 5);
  sub_10005C7A4(a1 + 6, a2 + 6);
  sub_10005C7A4(a1 + 7, a2 + 7);
  sub_10005C7A4(a1 + 8, a2 + 8);

  return sub_10005C7A4(a1 + 9, a2 + 9);
}

const void **sub_100510388(const void **a1)
{
  sub_100005978(a1 + 9);
  sub_100005978(a1 + 8);
  sub_100005978(a1 + 7);
  sub_100005978(a1 + 6);

  return sub_100005978(a1 + 5);
}

void cellplan::CellularPlanControllerPhone::didCancelRemotePlan(cellplan::CellularPlanControllerPhone *this)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1005104E8;
  v3[3] = &unk_101E53C50;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, this + 1);
  v2 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
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

void sub_1005104E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Received cancel plan, check subscription", v3, 2u);
  }

  cellplan::CellularPlanControllerPhone::checkSubscription_sync(v1, 1);
}

void cellplan::CellularPlanControllerPhone::pendingReleaseRemotePlan(cellplan::CellularPlanControllerPhone *this)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100510664;
  v3[3] = &unk_101E53C70;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, this + 1);
  v2 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
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

uint64_t sub_100510664(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Received plan pending release", v4, 2u);
  }

  result = *(v1 + 256);
  if (result)
  {
    return (*(*result + 128))(result);
  }

  return result;
}

void cellplan::CellularPlanControllerPhone::genericTransferPayloadIndReceived_sync(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017734E4();
  }
}

uint64_t cellplan::CellularPlanControllerPhone::shouldRunGetPlansFetch_sync(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  *__dst = 0u;
  v15 = 0u;
  v6 = 328;
  if (*(a1 + 1224))
  {
    v6 = 1368;
  }

  v7 = a1 + v6;
  if (*(a1 + v6 + 23) < 0)
  {
    sub_100005F2C(__dst, *v7, *(v7 + 8));
  }

  else
  {
    *__dst = *v7;
    *&v15 = *(v7 + 16);
  }

  v8 = *(v7 + 32);
  *(&v15 + 1) = *(v7 + 24);
  v16 = 0uLL;
  *&v17 = 0;
  sub_10027E628(&v16, v8, *(v7 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v7 + 40) - v8) >> 3));
  *(&v17 + 1) = *(v7 + 56);
  LODWORD(v18) = *(v7 + 64);
  (*(**(a1 + 160) + 240))(&v19);
  if (v19 == 1)
  {
    if (v26 < 0)
    {
      operator delete(__p);
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 < 0)
    {
      operator delete(v20);
    }

LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  (*(**(a1 + 128) + 680))(&v12);
  (*(*v12 + 64))(&v19);
  if (v21 < 0)
  {
    v9 = v20 == 0;
    operator delete(v19);
  }

  else
  {
    v9 = v21 == 0;
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v9)
  {
    goto LABEL_26;
  }

  cellplan::CellularPlanControllerPhone::getPhoneSimIccid_sync(a1, a2, &v19);
  if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v22 < 0)
  {
    operator delete(v20);
  }

  if (BYTE13(v17) == 1 && BYTE12(v17) == 1 || ((*(**(a1 + 160) + 168))(*(a1 + 160), a2) & 1) != 0 || *(a1 + 256) || *(&v16 + 1) == v16 || BYTE8(v15) != 1)
  {
    goto LABEL_26;
  }

  *a3 = *(v16 + 16);
  v10 = 1;
LABEL_27:
  v19 = &v16;
  sub_100112048(&v19);
  if (SBYTE7(v15) < 0)
  {
    operator delete(__dst[0]);
  }

  return v10;
}

void sub_100510A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100319DE8(va);
  _Unwind_Resume(a1);
}

void sub_100510A4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100510A44);
}

const void **cellplan::CellularPlanControllerPhone::handleGetPlanItemsCallback_sync(cellplan::CellularPlanControllerPhone *this, int a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v7 = *(this + 5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I will fetch for slot %s before get plans", buf, 0xCu);
    }

    *(this + 260) = a2;
    v8 = *(this + 3);
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    sub_100004AA0(&v18, this + 1);
    if (v18)
    {
      v9 = v18 + 64;
    }

    else
    {
      v9 = 0;
    }

    v20[0] = v9;
    v20[1] = v19;
    v18 = 0;
    v19 = 0;
    (*(**(this + 16) + 680))(&v17);
    sub_1003A5D8C(&object, v20, &v17);
  }

  cellplan::CellularPlanControllerPhone::checkSubscription_sync(this, 0);
  v18 = 0;
  (*(**(this + 20) + 104))(&v18);
  v16 = 0;
  if (*(this + 1072) == 1)
  {
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = asString();
      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I install error: %s", buf, 0xCu);
      if ((*(this + 1072) & 1) == 0)
      {
        __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
      }
    }

    v12 = 0;
    v13 = *(this + 269);
    if (v13 > 7)
    {
      if (v13 > 10)
      {
        if (v13 == 11)
        {
          v14 = 58;
          v12 = 1;
        }

        else if (v13 == 12)
        {
          v12 = 0;
          v14 = 45;
        }

        else
        {
          v14 = 0;
          if (v13 == 13)
          {
            v12 = 0;
            v14 = 75;
          }
        }
      }

      else if (v13 == 8)
      {
        v12 = 0;
        v14 = 26;
      }

      else
      {
        v12 = 0;
        if (v13 == 9)
        {
          v14 = 34;
        }

        else
        {
          v14 = 35;
        }
      }

      goto LABEL_36;
    }

    if (v13 <= 3)
    {
      if (v13 != 2)
      {
        v14 = 0;
        if (v13 == 3)
        {
          v12 = 0;
          v14 = 13;
        }

        goto LABEL_36;
      }
    }

    else if ((v13 - 4) >= 2)
    {
      if (v13 == 6)
      {
        v12 = 0;
        v14 = 69;
      }

      else
      {
        v14 = 0;
        if (v13 == 7)
        {
          v12 = 0;
          v14 = 25;
        }
      }

      goto LABEL_36;
    }

    v12 = 0;
    v14 = 18;
LABEL_36:
    v16 = v14;
    if (*(this + 1045) == 1 && (v12 & *(this + 1044)) == 1)
    {
      v16 = (*(**(this + 16) + 872))(*(this + 16));
    }

    *(this + 1072) = 0;
  }

  sub_100510F28(a4, &v18, &v16);
  return sub_100010250(&v18);
}

const void **sub_100510F28(uint64_t *a1, const void **a2, unsigned __int8 *a3)
{
  v4 = *a1;
  sub_10006F22C(&v6, a2);
  (*(v4 + 16))(v4, &v6, *a3);
  return sub_100010250(&v6);
}

void sub_100510F7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::installPendingRemotePlan(uint64_t a1, uint64_t a2, void *aBlock)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
    if (aBlock)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
    if (aBlock)
    {
LABEL_3:
      v5 = _Block_copy(aBlock);
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  __p[3] = v5;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void cellplan::CellularPlanControllerPhone::getRemoteCellularPlanItems(uint64_t a1, char a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100511214;
  v5[3] = &unk_101E53C98;
  v6 = a2;
  v5[4] = a3;
  v5[5] = a1;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_100511214(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I getRemoteCellularPlanItems, shouldFetch:%d", buf, 8u);
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  *buf = 0u;
  v16 = 0u;
  v5 = 328;
  if (*(v2 + 1224))
  {
    v5 = 1368;
  }

  v6 = (v2 + v5);
  if (*(v2 + v5 + 23) < 0)
  {
    sub_100005F2C(buf, *v6, *(v6 + 1));
  }

  else
  {
    v7 = *v6;
    *&v16 = *(v6 + 2);
    *buf = v7;
  }

  *(&v16 + 1) = *(v6 + 3);
  v17 = 0uLL;
  *&v18 = 0;
  sub_10027E628(&v17, *(v6 + 4), *(v6 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 5) - *(v6 + 4)) >> 3));
  v8 = *(v6 + 7);
  LODWORD(v19) = *(v6 + 16);
  *(&v18 + 1) = v8;
  if (*(a1 + 48) == 1)
  {
    v9 = (*(**(v2 + 160) + 160))(*(v2 + 160));
    v10 = HIDWORD(v16) == 1 ? 1 : v9;
    if (v10 != 1)
    {
      sub_100004AA0(&v20, (v2 + 8));
      v12 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
      }

      v13 = *(a1 + 32);
      if (v13)
      {
        _Block_copy(v13);
      }

      aBlock[4] = 0;
      operator new();
    }
  }

  v20 = 0;
  v21 = 0;
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = _Block_copy(v11);
  }

  aBlock[0] = v11;
  cellplan::CellularPlanControllerPhone::handleGetPlanItemsCallback_sync(v2, 0, &v20, aBlock);
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  v20 = &v17;
  sub_100112048(&v20);
  if (SBYTE7(v16) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1005114E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::getPendingProfiles_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v21 = a3;
  if (*(a1 + 1224) != 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_100520028(a4, 0);
    v11 = &v14;
    goto LABEL_6;
  }

  (*(**(a1 + 160) + 272))(&v14);
  if (v14 == v15)
  {
    v6 = 328;
    if (*(a1 + 1224))
    {
      v6 = 1368;
    }

    v7 = a1 + v6;
    v8 = *(v7 + 32);
    if (v8 == *(v7 + 40))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      sub_100520028(a4, 0);
      v17[0] = &v11;
      sub_1000DC8D4(v17);
      goto LABEL_4;
    }

    VinylInfo::getActiveUserProfile(&v11, v8);
    if (SHIBYTE(v13) < 0)
    {
      v10 = v12;
      operator delete(v11);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else if (HIBYTE(v13))
    {
LABEL_12:
      v11 = 0;
      v12 = 0;
      v13 = 0;
      sub_100520028(a4, 1);
      v17[0] = &v11;
      sub_1000DC8D4(v17);
      v9 = *(a1 + 144);
      v19[0] = off_101E55220;
      v19[1] = a1;
      v19[3] = v19;
      (*(*v9 + 168))(v9, v20, v21, v19);
      sub_10052F844(v19);
      goto LABEL_4;
    }

    v17[1] = a1;
    sub_10052F8C4(v18, a4);
    v18[7] = 0;
    operator new();
  }

  sub_100520028(a4, 1);
LABEL_4:
  v11 = &v14;
LABEL_6:
  sub_1000DC8D4(&v11);
}

void sub_100511820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_10052F844(va2);
  sub_10052B25C(v2 + 8);
  va_copy(v4, va1);
  sub_1000DC8D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005118A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void cellplan::CellularPlanControllerPhone::getRemoteDevicesInfoForTransfer(uint64_t a1, void *a2)
{
  *a2 = 0;
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void cellplan::CellularPlanControllerPhone::getRemoteDeviceInfoForTransfer(uint64_t a1, _OWORD *a2)
{
  *a2 = 0u;
  v2 = 0u;
  sub_100004AA0(&v2, (a1 + 8));
  operator new();
}

void cellplan::CellularPlanControllerPhone::didReceivePushAndCheckSubscription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (***(a1 + 128))(__p);
  *&v11[1] = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v5 = SlotIdFromPersonalityId();
  if (v11[2])
  {
    sub_100004A34(v11[2]);
  }

  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  v6 = *(a1 + 1000);
  if (v6)
  {
    (*(*v6 + 16))(v6);
    v7 = *(a1 + 1000);
    *(a1 + 1000) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  v8 = _Block_copy(&stru_101E53CD8);
  v11[0] = v8;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(a1, v5, 0, 1, v11);
  if (v8)
  {
    _Block_release(v8);
  }

  memset(__p, 0, sizeof(__p));
  v9 = 0;
  (*(**(a1 + 128) + 120))(&v9);
  if (v9)
  {
    memset(&v11[1], 0, 24);
    ctu::cf::assign();
    *__p = *&v11[1];
    *(&__p[1] + 7) = *(&v11[2] + 7);
    HIBYTE(__p[2]) = HIBYTE(v11[3]);
  }

  (*(**(a1 + 208) + 208))(*(a1 + 208), __p, a3, 1);
  sub_100005978(&v9);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100511CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::didReceiveSubscriptionReleasePush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (***(a1 + 128))(__p);
  *&v9[1] = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v5 = SlotIdFromPersonalityId();
  if (v9[2])
  {
    sub_100004A34(v9[2]);
  }

  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  v6 = _Block_copy(&stru_101E53D18);
  v9[0] = v6;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(a1, v5, 0, 1, v9);
  if (v6)
  {
    _Block_release(v6);
  }

  memset(__p, 0, sizeof(__p));
  v7 = 0;
  (*(**(a1 + 128) + 120))(&v7);
  if (v7)
  {
    memset(&v9[1], 0, 24);
    ctu::cf::assign();
    *__p = *&v9[1];
    *(&__p[1] + 7) = *(&v9[2] + 7);
    HIBYTE(__p[2]) = HIBYTE(v9[3]);
  }

  (*(**(a1 + 208) + 208))(*(a1 + 208), __p, a3, 2);
  sub_100005978(&v7);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100511EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::didReceiveProvisioningFailedPush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (***(a1 + 128))(__p);
  v9[0] = *__p;
  __p[0] = 0;
  __p[1] = 0;
  SlotIdFromPersonalityId();
  if (*(&v9[0] + 1))
  {
    sub_100004A34(*(&v9[0] + 1));
  }

  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  v7 = 0;
  v8 = 0;
  (*(**(a1 + 96) + 64))(&v7);
  if (v7)
  {
    (*(*v7 + 72))(v7, 0, 0);
  }

  memset(__p, 0, 24);
  v5 = 0;
  (*(**(a1 + 128) + 120))(&v5);
  if (v5)
  {
    memset(v9, 0, 24);
    ctu::cf::assign();
    *__p = v9[0];
    *(&__p[1] + 7) = *(v9 + 15);
    HIBYTE(__p[2]) = BYTE7(v9[1]);
  }

  (*(**(a1 + 208) + 208))(*(a1 + 208), __p, a3, 3);
  sub_100005978(&v5);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_100512134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_100512188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (!a12)
  {
    JUMPOUT(0x100512180);
  }

  JUMPOUT(0x10051217CLL);
}

void cellplan::CellularPlanControllerPhone::remotePlanProvisioningWebsheetDidLaunch(cellplan::CellularPlanControllerPhone *this)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1005122B0;
  v3[3] = &unk_101E53D38;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, this + 1);
  v2 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
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

void sub_1005122B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 256);
  if (v2)
  {
    aBlock = 0;
    (*(*v2 + 168))(v2, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773518();
  }
}

void sub_100512340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::remotePlanProvisioningWebsheetDidLaunch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100512468;
  v5[3] = &unk_101E53D88;
  v5[4] = a3;
  v5[5] = a1;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_100512468(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 256);
  if (v2)
  {
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100512570;
    aBlock[3] = &unk_101E53D60;
    aBlock[4] = *(a1 + 32);
    aBlock[5] = v1;
    v4 = _Block_copy(aBlock);
    (*(*v2 + 168))(v2, &v4);
    if (v4)
    {
      _Block_release(v4);
    }
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773518();
  }
}

void sub_100512550(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100512570(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (!a2 || *a3 != 1)
  {
    goto LABEL_42;
  }

  v8 = *(a3 + 31);
  if (v8 < 0)
  {
    if (*(a3 + 16))
    {
      goto LABEL_7;
    }

LABEL_42:
    v19 = *(v5 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I URL launch not successful", &buf, 2u);
    }

    v20 = *(a1 + 32);
    v21 = 0;
    v22 = 0;
    (*(v20 + 16))();
    sub_10001021C(&v21);
    return sub_100005978(&v22);
  }

  if (!*(a3 + 31))
  {
    goto LABEL_42;
  }

LABEL_7:
  v9 = (a3 + 8);
  v10 = *(v5 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a3 + 8;
    if ((v8 & 0x80000000) != 0)
    {
      v11 = *v9;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I successful URL launch: %s", &buf, 0xCu);
  }

  v30 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
LABEL_41:
    sub_1000296E0(&v30);
    goto LABEL_42;
  }

  v13 = v30;
  v30 = Mutable;
  *&buf = v13;
  sub_1000296E0(&buf);
  if (*a4 == 1)
  {
    if (*(a4 + 344) == 1)
    {
      sub_100029714(&v29, &v30);
      if ((*a4 & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
      }

      if ((*(a4 + 344) & 1) == 0)
      {
        sub_1000D1644();
      }

      v14 = &v29;
      sub_100984AE4(&v29, (a4 + 8));
LABEL_17:
      sub_1000296E0(v14);
      goto LABEL_18;
    }

    if (*(a4 + 696) != 1)
    {
      if (*(a4 + 728) != 1)
      {
        goto LABEL_18;
      }

      sub_100029714(&v27, &v30);
      if ((*a4 & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
      }

      if ((*(a4 + 728) & 1) == 0)
      {
        sub_1000D1644();
      }

      v14 = &v27;
      sub_100986AFC(&v27, a4 + 704);
      goto LABEL_17;
    }

    sub_100029714(&v28, &v30);
    if ((*a4 & 1) == 0)
    {
      __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
    }

    if ((*(a4 + 696) & 1) == 0)
    {
      sub_1000D1644();
    }

    v18 = sub_100986680(&v28, a4 + 352);
    sub_1000296E0(&v28);
    if (v18)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_18:
  if ((*a3 & 1) == 0)
  {
    __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
  }

  v15 = *(a1 + 32);
  if (*(a3 + 31) < 0)
  {
    sub_100005F2C(__dst, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    *__dst = *v9;
    v25 = *(a3 + 24);
  }

  if (SHIBYTE(v25) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v33 = v25;
  }

  v31 = 0;
  if (SHIBYTE(v33) < 0)
  {
    sub_100005F2C(&buf, __p[0], __p[1]);
  }

  else
  {
    buf = *__p;
    v37 = v33;
  }

  v34 = 0;
  if (ctu::cf::convert_copy())
  {
    v16 = v31;
    v31 = v34;
    v35 = v16;
    sub_100005978(&v35);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(buf);
  }

  v26 = v31;
  v31 = 0;
  sub_100005978(&v31);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100010180(&v23, &v30);
  (*(v15 + 16))(v15, &v26, &v23, 0);
  sub_10001021C(&v23);
  sub_100005978(&v26);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  return sub_1000296E0(&v30);
}

void sub_1005129EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, const void *a40, const void *a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_100005978(&a41);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_1000296E0(&a40);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::remotePlanProvisioningWebsheetDidQuit(cellplan::CellularPlanControllerPhone *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

const void **cellplan::CellularPlanControllerPhone::userDidProvideResponse(uint64_t a1, const void **a2, char a3, const void **a4, uint64_t a5)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_100512CD0;
  v10[3] = &unk_101E53DB0;
  v10[4] = a5;
  v10[5] = a1;
  sub_10005C7A4(&v11, a2);
  v13 = a3;
  sub_10005C7A4(&v12, a4);
  v16 = 0;
  v17 = 0;
  sub_100004AA0(&v16, (a1 + 8));
  v8 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v16;
  v15 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v8, block);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  sub_100005978(&v12);
  return sub_100005978(&v11);
}

void sub_100512CD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 256))
  {
    if (*(a1 + 48))
    {
      v8 = 0uLL;
      v9 = 0;
      ctu::cf::assign();
      memset(v10, 0, 24);
      if ((*(**(v2 + 160) + 144))(*(v2 + 160), v10))
      {
        v3 = *(a1 + 64);
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        (*(*(a1 + 32) + 16))();
        v3 = 2;
      }

      if (SBYTE7(v10[1]) < 0)
      {
        operator delete(*&v10[0]);
      }
    }

    else
    {
      (*(*(a1 + 32) + 16))();
      v3 = 2;
    }

    memset(v10, 0, 24);
    if (*(a1 + 56))
    {
      v8 = 0uLL;
      v9 = 0;
      ctu::cf::assign();
      v10[0] = 0uLL;
      *(v10 + 15) = 0 >> 120;
      BYTE7(v10[1]) = 0;
    }

    (*(**(v2 + 256) + 88))(*(v2 + 256), v3, v10);
    if (*(a1 + 64) == 1)
    {
      rest::PairedDeviceInfoList::getActiveDevice(&v8, (v2 + 896));
      v4 = v8;
      sub_100DB14E0(&v8);
      if (v4 == 2)
      {
        v5 = *(v2 + 208);
        (*(**(v2 + 160) + 152))(__p);
        (*(*v5 + 144))(v5, __p, 3, 2);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (SBYTE7(v10[1]) < 0)
    {
      operator delete(*&v10[0]);
    }
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177354C();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100512F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::startClientRemoteProvisioning(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100513098;
  v4[3] = &unk_101E53E08;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_100513098(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = 328;
  if (*(v2 + 1224))
  {
    v3 = 1368;
  }

  v4 = v2 + v3;
  v5 = *(v2 + v3 + 32);
  if (*(v4 + 40) == v5 || (*(v4 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }
  }

  else
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v2 + 144);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_1005131A8;
    v10[3] = &unk_101E53DE0;
    v10[4] = v2;
    (*(*v8 + 136))(v8, v6, v7, 2, v10);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1005131A8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(*(a1 + 32) + 40);
  if (v3 == 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_101773580();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v5 = a2[1];
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Start Session result: %d", v7, 8u);
  }
}

void cellplan::CellularPlanControllerPhone::finishClientRemoteProvisioning(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1005133DC;
  v4[3] = &unk_101E53E50;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_1005133DC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = 328;
  if (*(v2 + 1224))
  {
    v3 = 1368;
  }

  v4 = v2 + v3;
  v5 = *(v2 + v3 + 32);
  if (*(v4 + 40) == v5 || (*(v4 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }
  }

  else
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v2 + 144);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_100513564;
    v13[3] = &unk_101E53E28;
    v13[4] = v2;
    (*(*v8 + 144))(v8, v6, v7, 2, v13);
    v9 = *(v2 + 256);
    if (v9)
    {
      v10 = *(v2 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I User left cellular pane", v12, 2u);
        v9 = *(v2 + 256);
      }

      (*(*v9 + 152))(v9);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100513564(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(*(a1 + 32) + 40);
  if (v3 == 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1017735FC();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v5 = a2[1];
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I End Session result: %d", v7, 8u);
  }
}

uint64_t cellplan::CellularPlanControllerPhone::shouldDiscourageDisableLte_sync(cellplan::CellularPlanControllerPhone *this)
{
  (*(**(this + 16) + 688))(&v5);
  if (!(**v5)())
  {
    if (v6)
    {
      sub_100004A34(v6);
    }

    return 0;
  }

  v2 = (*(**(this + 20) + 200))(*(this + 20));
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I CB discourages disabling LTE and active plan", &v5, 2u);
  }

  return 1;
}

void sub_1005137BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL cellplan::CellularPlanControllerPhone::shouldWarnOnLteOffBeforeProvisioning_sync(cellplan::CellularPlanControllerPhone *this)
{
  (*(**(this + 16) + 688))(&v6);
  if ((**v6)())
  {
    rest::PairedDeviceInfoList::getActiveDevice(v5, (this + 896));
    v2 = LOBYTE(v5[0]) == 1;
    sub_100DB14E0(v5);
  }

  else
  {
    v2 = 0;
  }

  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v2)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I CB discourages disabling LTE", v5, 2u);
    }
  }

  return v2;
}

void sub_1005138F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::deleteAllRemotePlans_sync(uint64_t a1, uint64_t a2)
{
  v4 = 328;
  if (*(a1 + 1224))
  {
    v4 = 1368;
  }

  v5 = a1 + v4;
  v6 = *(a1 + v4 + 32);
  if (*(v5 + 40) == v6 || (*(v5 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }

    (*(*a2 + 16))();
  }

  else
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(a1 + 144);
    sub_1013F05F4(v13);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1174405120;
    v11[2] = sub_100513AD4;
    v11[3] = &unk_101E53E70;
    v11[4] = a1;
    v10 = *a2;
    if (*a2)
    {
      v10 = _Block_copy(v10);
    }

    aBlock = v10;
    (*(*v9 + 72))(v9, v7, v8, v13, v11);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }
}

void sub_100513A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, char a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100513AD4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v5 = *(v3 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v13 = 136315138;
    v14 = asString();
    v6 = "#I deleteAllRemotePlans failure: %s";
    v7 = v5;
    v8 = 12;
    goto LABEL_9;
  }

  if ((a2[1] & 1) == 0)
  {
    v10 = *(v3 + 40);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:
      v9 = 0;
      return (*(*(a1 + 40) + 16))(*(a1 + 40), v9);
    }

    LOWORD(v13) = 0;
    v6 = "#I deleteAllRemotePlans callback failure";
    v7 = v10;
    v8 = 2;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v13, v8);
    goto LABEL_10;
  }

  v9 = 1;
  return (*(*(a1 + 40) + 16))(*(a1 + 40), v9);
}

void *sub_100513C48(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void sub_100513C7C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void cellplan::CellularPlanControllerPhone::getRemoteProvisioningSubscriptionInfo_sync(uint64_t a1, char a2, const void **a3)
{
  v5 = *(a1 + 1040);
  if (*a3)
  {
    v6 = _Block_copy(*a3);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(a1, v5, 1u, a2, &v7);
  if (v6)
  {
    _Block_release(v6);
  }
}

void sub_100513D28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100513D4C(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void cellplan::CellularPlanControllerPhone::getSubscriptionInfoPerSlot(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v56 = a2;
  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  (*(**(a1 + 128) + 680))(&buf);
  v55 = 0;
  v13 = (*(*buf + 40))(buf, &v55, a2);
  sub_10001021C(&v55);
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      sub_1017736A4();
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    buf = 0u;
    (*(*a6 + 16))();
    *&__str = &v71 + 8;
    sub_100522C04(&__str);
    *&__str = &v70;
    sub_100522C58(&__str);
    if (v68 == 1)
    {
      if (SHIBYTE(v69) < 0)
      {
        operator delete(*(&v68 + 1));
      }

      LOBYTE(v68) = 0;
    }

    if (buf != 1 || (SHIBYTE(v67) & 0x80000000) == 0)
    {
      return;
    }

    v21 = *(&buf + 1);
LABEL_144:
    operator delete(v21);
    return;
  }

  (***(a1 + 128))(&__str);
  Registry::getTimerService(&buf, __str);
  v14 = (**buf)(buf);
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (*(&__str + 1))
  {
    sub_100004A34(*(&__str + 1));
  }

  if (a4)
  {
    goto LABEL_37;
  }

  v15 = *(a1 + 936);
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = a1 + 936;
  do
  {
    if (*(v15 + 32) >= v56)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * (*(v15 + 32) < v56));
  }

  while (v15);
  if (v16 == a1 + 936)
  {
    goto LABEL_37;
  }

  if (v56 < *(v16 + 32))
  {
    goto LABEL_37;
  }

  v17 = *(a1 + 960);
  if (!v17)
  {
    goto LABEL_37;
  }

  v18 = a1 + 960;
  do
  {
    if (*(v17 + 32) >= v56)
    {
      v18 = v17;
    }

    v17 = *(v17 + 8 * (*(v17 + 32) < v56));
  }

  while (v17);
  if (v18 == a1 + 960 || v56 < *(v18 + 32) || (*&buf = &v56, v19 = sub_1002B167C(a1 + 928, &v56)[5], *&buf = &v56, v14 - v19 >= 1000000000 * sub_1002B167C(a1 + 952, &v56)[5]))
  {
LABEL_37:
    v22 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I fetching subscription info", &buf, 2u);
    }

    memset(v77, 0, sizeof(v77));
    cellplan::CellularPlanControllerPhone::getPhoneSimIccid_sync(a1, v56, v77);
    if (LOBYTE(v77[0]) != 1 || *(a1 + 360) == *(a1 + 368) && *(a1 + 544) == *(a1 + 552))
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        sub_1017736D8();
      }

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      buf = 0u;
      (*(*a6 + 16))();
      *&__str = &v71 + 8;
      sub_100522C04(&__str);
      *&__str = &v70;
      sub_100522C58(&__str);
      if (v68 == 1)
      {
        if (SHIBYTE(v69) < 0)
        {
          operator delete(*(&v68 + 1));
        }

        LOBYTE(v68) = 0;
      }

      if (buf != 1 || (SHIBYTE(v67) & 0x80000000) == 0)
      {
        goto LABEL_141;
      }

      v27 = *(&buf + 1);
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      buf = 0u;
      std::string::operator=(&buf, &v77[1]);
      v24 = *(a5 + 23);
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(a5 + 8);
      }

      if (v24)
      {
        sub_10016C728(&v67 + 8, a5);
      }

      if ((BYTE8(v67) & 1) == 0)
      {
        (*(**(a1 + 128) + 680))(&__str);
        v25 = (*(*__str + 104))(__str, v56);
        if (*(&__str + 1))
        {
          sub_100004A34(*(&__str + 1));
        }

        if (v25)
        {
          v26 = *(a1 + 360);
          if (*(a1 + 368) != v26)
          {
            v65 = *(v26 + 16);
            ctu::hex(&__str, &v65, 0x10, v23);
            if (BYTE8(v67) == 1)
            {
              if (SBYTE7(v69) < 0)
              {
                operator delete(v68);
              }

              v68 = __str;
              *&v69 = __str_16;
            }

            else
            {
              v68 = __str;
              *&v69 = __str_16;
              BYTE8(v67) = 1;
            }

            v28 = v56;
            v29 = *(a1 + 360);
            v30 = *(a1 + 368);
            memset(v54, 0, sizeof(v54));
            sub_10027E628(v54, v29, v30, 0x2E8BA2E8BA2E8BA3 * ((v30 - v29) >> 3));
            cellplan::CellularPlanControllerPhone::getRemoteIccidsForSignup_sync(a1, v28, v54, &v71);
            *&__str = v54;
            sub_100112048(&__str);
          }
        }
      }

      if ((BYTE8(v67) & 1) == 0 && *(a1 + 1224) == 1)
      {
        v65 = 0uLL;
        v31 = *(a1 + 1400);
        if (*(a1 + 1408) != v31)
        {
          v65 = *(v31 + 16);
          ctu::hex(&__str, &v65, 0x10, v23);
          if (BYTE8(v67) == 1)
          {
            if (SBYTE7(v69) < 0)
            {
              operator delete(v68);
            }

            v68 = __str;
            *&v69 = __str_16;
          }

          else
          {
            v68 = __str;
            *&v69 = __str_16;
            BYTE8(v67) = 1;
          }
        }

        if (*(a1 + 1256) == 1)
        {
          std::string::operator=((&v69 + 8), (a1 + 1264));
        }
      }

      LODWORD(v65) = 11;
      *&__str = &v65;
      v32 = sub_10031D3B0(a1 + 1088, &v65);
      *&__str = &v56;
      if (*(sub_10030C46C((v32 + 5), &v56) + 8) == 2)
      {
        v80 = 0u;
        v81 = 0u;
        __str = 0u;
        __str_16 = 0u;
        LODWORD(v80) = 3;
        BYTE4(v80) = 1;
        sub_10052C5FC((&v72 + 8), &__str);
        if (SHIBYTE(v81) < 0)
        {
          operator delete(*(&v80 + 1));
        }

        if (SBYTE7(__str_16) < 0)
        {
          operator delete(__str);
        }
      }

      sub_100004AA0(&__str, (a1 + 8));
      v33 = __str;
      if (*(&__str + 1))
      {
        atomic_fetch_add_explicit((*(&__str + 1) + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(*(&v33 + 1));
      }

      *&__str = 0;
      *(&__str + 1) = &__str;
      *&__str_16 = 0x3002000000;
      *(&__str_16 + 1) = sub_1005150D8;
      *&v80 = sub_1005150E8;
      *(&v80 + 1) = 0;
      if (a3)
      {
        (***(a1 + 128))(&v51);
        Registry::getTimerService(&v65, v51);
        v34 = v65;
        sub_10000501C(v49, "GetSIMStatusRspTimeout");
        v35 = *(a1 + 24);
        object = v35;
        if (v35)
        {
          dispatch_retain(v35);
        }

        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1174405120;
        aBlock[2] = sub_100515120;
        aBlock[3] = &unk_101E53EE0;
        aBlock[4] = &__str;
        aBlock[5] = v12;
        v36 = *a6;
        if (*a6)
        {
          v36 = _Block_copy(v36);
        }

        v46 = v36;
        v47 = _Block_copy(aBlock);
        sub_100D23364(v34, v49, 1, 30000000, &object, &v47);
        v37 = v53;
        v53 = 0;
        v38 = *(*(&__str + 1) + 40);
        *(*(&__str + 1) + 40) = v37;
        if (v38)
        {
          (*(*v38 + 8))(v38);
          v39 = v53;
          v53 = 0;
          if (v39)
          {
            (*(*v39 + 8))(v39);
          }
        }

        if (v47)
        {
          _Block_release(v47);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (v50 < 0)
        {
          operator delete(v49[0]);
        }

        if (*(&v65 + 1))
        {
          sub_100004A34(*(&v65 + 1));
        }

        if (v52)
        {
          sub_100004A34(v52);
        }

        if (v46)
        {
          _Block_release(v46);
        }
      }

      v40 = *(a1 + 240);
      v41 = v56;
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 1174405120;
      v57[2] = sub_1005152E4;
      v57[3] = &unk_101E53F18;
      v57[5] = a1;
      v58 = v33;
      if (*(&v33 + 1))
      {
        atomic_fetch_add_explicit((*(&v33 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      v64 = a3;
      v57[4] = &__str;
      v63 = v41;
      v59 = 0;
      if (LOBYTE(v77[0]) == 1)
      {
        if (SHIBYTE(v77[3]) < 0)
        {
          sub_100005F2C(&v60, v77[1], v77[2]);
        }

        else
        {
          v60 = *&v77[1];
          v61 = v77[3];
        }

        v59 = 1;
      }

      v42 = *a6;
      if (*a6)
      {
        v42 = _Block_copy(v42);
      }

      v62 = v42;
      v44 = _Block_copy(v57);
      (**v40)(v40, v41, &buf, a3, &v44);
      if (v44)
      {
        _Block_release(v44);
      }

      if (v62)
      {
        _Block_release(v62);
      }

      if (v59 == 1)
      {
        if (SHIBYTE(v61) < 0)
        {
          operator delete(v60);
        }

        v59 = 0;
      }

      if (*(&v58 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v58 + 1));
      }

      _Block_object_dispose(&__str, 8);
      v43 = *(&v80 + 1);
      *(&v80 + 1) = 0;
      if (v43)
      {
        (*(*v43 + 8))(v43);
      }

      if (*(&v33 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v33 + 1));
      }

      if (BYTE8(v72) == 1)
      {
        if (SHIBYTE(v76) < 0)
        {
          operator delete(*(&v75 + 1));
        }

        if (SBYTE7(v74) < 0)
        {
          operator delete(v73);
        }

        BYTE8(v72) = 0;
      }

      *&__str = &v71;
      sub_1000087B4(&__str);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(*(&v69 + 1));
      }

      if (BYTE8(v67) == 1)
      {
        if (SBYTE7(v69) < 0)
        {
          operator delete(v68);
        }

        BYTE8(v67) = 0;
      }

      if ((SBYTE7(v67) & 0x80000000) == 0)
      {
        goto LABEL_141;
      }

      v27 = buf;
    }

    operator delete(v27);
LABEL_141:
    if (LOBYTE(v77[0]) != 1 || (SHIBYTE(v77[3]) & 0x80000000) == 0)
    {
      return;
    }

    v21 = v77[1];
    goto LABEL_144;
  }

  v20 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Skip getSIMStatus, as too frequent actions!", &buf, 2u);
  }

  *&v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  buf = 0u;
  (*(**(a1 + 160) + 112))(&buf);
  if (buf == 1)
  {
    (*(*a6 + 16))();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    __str_16 = 0u;
    v80 = 0u;
    __str = 0u;
    (*(*a6 + 16))();
    sub_10051504C(&__str);
  }

  if (buf == 1)
  {
    *&__str = &v72;
    sub_100522C04(&__str);
    *&__str = &v70 + 8;
    sub_100522C58(&__str);
    if (BYTE8(v68) == 1)
    {
      if (SBYTE7(v70) < 0)
      {
        operator delete(v69);
      }

      BYTE8(v68) = 0;
    }

    if (BYTE8(buf) == 1 && SBYTE7(v68) < 0)
    {
      v21 = v67;
      goto LABEL_144;
    }
  }
}

void sub_100514A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54)
{
  sub_10051504C(v54 - 208);
  sub_100522CAC(&a53);
  _Unwind_Resume(a1);
}

void sub_100514CD8(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = a1 + 32;
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 32) + 8);
  v8 = (a1 + 64);
  *&v15 = a1 + 64;
  *(sub_10052C03C(v7 + 40, (a1 + 64)) + 10) = a2;
  v9 = *(*v5 + 8);
  *&v15 = v8;
  v10 = sub_10052C03C(v9 + 40, v8);
  sub_10016E810((v10 + 6), a3);
  sub_10016E810((v10 + 10), (a3 + 4));
  if (v10 + 6 != a3)
  {
    sub_1005221AC(v10 + 14, a3[8], a3[9], 0x8E38E38E38E38E39 * ((a3[9] - a3[8]) >> 4));
    sub_1005226DC(v10 + 17, a3[11], a3[12], 0xCF3CF3CF3CF3CF3DLL * ((a3[12] - a3[11]) >> 3));
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  *__p = 0u;
  v21 = 0u;
  *v19 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v15 = 0u;
  *v16 = 0u;
  sub_100922C88(*v8, (v6 + 304), &v15);
  if (v15 == 1)
  {
    v11 = *(v6 + 160);
    v12 = *(*(a1 + 32) + 8);
    v14 = v8;
    v13 = sub_10052C03C(v12 + 40, v8);
    (*(*v11 + 16))(v11, &v15 + 8, v13 + 5);
  }

  if (++*(*(*(a1 + 40) + 8) + 24) == *(a1 + 68))
  {
    sub_100514F8C((a1 + 56), *(*(a1 + 32) + 8) + 40);
  }

  if (v15 == 1)
  {
    if (SHIBYTE(v24) < 0)
    {
      operator delete(*(&v23 + 1));
    }

    if (SBYTE7(v23) < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v19[0]);
    }

    v14 = v18;
    sub_100034D1C(&v14);
    if (v16[1])
    {
      *&v17 = v16[1];
      operator delete(v16[1]);
    }
  }
}

void sub_100514F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1005032D8(va);
  _Unwind_Resume(a1);
}

void sub_100514F8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_10052C1D0(v3, a2);
  (*(v2 + 16))(v2, v3);
  sub_10052BF90(v3, v3[1]);
}

void *sub_100514FF4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 56) = result;
  return result;
}

void sub_100515028(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t sub_10051504C(uint64_t a1)
{
  v3 = (a1 + 88);
  sub_100522C04(&v3);
  v3 = (a1 + 64);
  sub_100522C58(&v3);
  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    *(a1 + 32) = 0;
  }

  if (*a1 == 1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1005150D8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_1005150E8(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100515120(uint64_t a1)
{
  v2 = **(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I GetSIMStatusRspTimeout fired!", buf, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v7 = 0u;
  *__p = 0u;
  *buf = 0u;
  (*(*(a1 + 48) + 16))();
  v5 = &v10[1] + 1;
  sub_100522C04(&v5);
  v5 = v10;
  sub_100522C58(&v5);
  if (LOBYTE(__p[0]) == 1)
  {
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[1]);
    }

    LOBYTE(__p[0]) = 0;
  }

  if (buf[0] == 1 && SHIBYTE(v7) < 0)
  {
    operator delete(*&buf[8]);
  }
}

void sub_100515278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10051504C(va);
  _Unwind_Resume(a1);
}

void *sub_10051528C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void sub_1005152C0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_1005152E4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (!*(a1 + 48))
      {
LABEL_18:
        sub_100004A34(v8);
        return;
      }

      v9 = *(*(*(a1 + 32) + 8) + 40);
      if (*(a1 + 108) == 1)
      {
        if (!v9)
        {
          goto LABEL_18;
        }
      }

      else if (!v9)
      {
LABEL_10:
        if (!a3)
        {
          if ((*(a1 + 64) & 1) == 0)
          {
            __assert_rtn("get", "optional.hpp", 1211, "this->is_initialized()");
          }

          v16 = (a1 + 104);
          v12 = sub_100170BC0(v6 + 1048, (a1 + 104));
          std::string::operator=((v12 + 5), (a1 + 72));
        }

        (***(v6 + 128))(&v14);
        Registry::getTimerService(&v16, v14);
        v13 = (**v16)(v16);
        v18 = a1 + 104;
        sub_1002B167C(v6 + 928, (a1 + 104))[5] = v13;
        if (v17)
        {
          sub_100004A34(v17);
        }

        if (v15)
        {
          sub_100004A34(v15);
        }

        (*(*(a1 + 96) + 16))();
        goto LABEL_18;
      }

      (*(*v9 + 16))(v9);
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      goto LABEL_10;
    }
  }
}

void sub_1005154E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void *sub_100515520(void *a1, void *a2)
{
  v4 = a2[7];
  a1[6] = a2[6];
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10016E9C0((a1 + 8), (a2 + 8));
  result = a2[12];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[12] = result;
  return result;
}

void sub_10051557C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100515594(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void cellplan::CellularPlanControllerPhone::fetchProfilesForRemoteProvisioning_sync(uint64_t a1, uint64_t a2, __int128 **a3, const void **a4)
{
  sub_10004ECBC(__dst, *a3);
  if (*a4)
  {
    v7 = _Block_copy(*a4);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  cellplan::CellularPlanControllerPhone::fetchProfile_sync(a1, a2, __dst, &v8);
}

void sub_100515698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    _Block_release(v11);
  }

  sub_100F118F0(&a11);
  _Unwind_Resume(a1);
}

BOOL cellplan::CellularPlanControllerPhone::setPlanTransferHttpRequest_sync(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = *(a1 + 304);
    v10 = *(a1 + 312);
    if (v9 != v10)
    {
      while (*v9 != a2)
      {
        v9 += 168;
        if (v9 == v10)
        {
          v9 = *(a1 + 312);
          break;
        }
      }
    }

    memset(&v22, 0, sizeof(v22));
    if (*(v9 + 95) < 0)
    {
      sub_100005F2C(&v22, *(v9 + 72), *(v9 + 80));
    }

    else
    {
      v22 = *(v9 + 72);
    }

    if (*(a4 + 24) == 1)
    {
      if (*(a4 + 23) < 0)
      {
        sub_100005F2C(__p, *a4, *(a4 + 8));
      }

      else
      {
        *__p = *a4;
        v27 = *(a4 + 16);
      }
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v27 = 0;
    }

    if (*(a5 + 55) < 0)
    {
      operator delete(*(a5 + 32));
    }

    *(a5 + 32) = *__p;
    *(a5 + 48) = v27;
    sub_100C00C8C(a3, __p);
    sub_10016E3EC(a5, __p);
    if (LOBYTE(__p[0]) == 1 && v28 < 0)
    {
      operator delete(__p[1]);
    }

    if (*(a3 + 80) == 1)
    {
      std::string::operator=((a5 + 56), (a3 + 56));
    }

    v11 = *(a3 + 32);
    v12 = *(a3 + 40);
    while (v11 != v12)
    {
      sub_100C00C8C((v11 + 24), __p);
      sub_100C00C8C((v11 + 56), v23);
      v13 = *(a5 + 88);
      if (v13 >= *(a5 + 96))
      {
        v14 = sub_100522DF4((a5 + 80), v11, __p, v23);
      }

      else
      {
        sub_100522F54(*(a5 + 88), v11, __p, v23);
        v14 = v13 + 88;
        *(a5 + 88) = v13 + 88;
      }

      *(a5 + 88) = v14;
      if (v23[0] == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (LOBYTE(__p[0]) == 1 && v28 < 0)
      {
        operator delete(__p[1]);
      }

      v11 += 96;
    }

    if (*(a5 + 135) < 0)
    {
      *(a5 + 120) = 11;
      v15 = *(a5 + 112);
    }

    else
    {
      v15 = (a5 + 112);
      *(a5 + 135) = 11;
    }

    strcpy(v15, "Apple Watch");
    sub_10052C700((a5 + 136), &off_101E53948);
    sub_10016C728((a5 + 168), &v22);
    std::string::operator=((a5 + 200), (a3 + 88));
    v16 = *(a3 + 112);
    v17 = *(a3 + 120);
    while (v16 != v17)
    {
      sub_100C00C8C((v16 + 24), __p);
      sub_100C00C8C((v16 + 56), v23);
      v18 = *(a5 + 232);
      if (v18 >= *(a5 + 240))
      {
        v19 = sub_100522DF4((a5 + 224), v16, __p, v23);
      }

      else
      {
        sub_100522F54(*(a5 + 232), v16, __p, v23);
        v19 = v18 + 88;
        *(a5 + 232) = v18 + 88;
      }

      *(a5 + 232) = v19;
      if (v23[0] == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (LOBYTE(__p[0]) == 1 && v28 < 0)
      {
        operator delete(__p[1]);
      }

      v16 += 96;
    }

    if (*(a5 + 279) < 0)
    {
      *(a5 + 264) = 11;
      v20 = *(a5 + 256);
    }

    else
    {
      v20 = (a5 + 256);
      *(a5 + 279) = 11;
    }

    strcpy(v20, "Apple Watch");
    sub_10052C700((a5 + 280), &off_101E53948);
    sub_10016C728((a5 + 312), &v22);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177370C();
  }

  return a2 != 0;
}

void sub_100515A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::getRemoteProvisioningWebsheetInfo_sync(uint64_t a1, uint64_t a2)
{
  v4[0] = 0;
  sub_10052C7B4(v3, a2);
  cellplan::CellularPlanControllerPhone::getRemoteSignUpUrlAndPostdata(a1, v4, v3);
  sub_1003B592C(v3);
  if (v4[0] == 1 && v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_100515BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1003B592C(&a10);
  if ((a14 & 1) != 0 && a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::getRemoteSignUpUrlAndPostdata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v6 = *(a1 + 1040);
  v72 = 0;
  v71 = 0;
  v73 = 0;
  v7 = cellplan::CellularPlanControllerPhone::setRemotePlanSignupRequest_sync(a1, v6, 1, &v71, &v79);
  v8 = v7;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v71);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
LABEL_3:
    sub_100004AA0(&v71, (a1 + 8));
    v9 = v71;
    v10 = v72;
    if (v72)
    {
      atomic_fetch_add_explicit(v72 + 2, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
    }

    v71 = 0;
    v72 = &v71;
    v73 = 0x3002000000;
    v74 = sub_1005150D8;
    v75 = sub_1005150E8;
    v76 = 0;
    (***(a1 + 128))(&v24);
    Registry::getTimerService(&v26, v24);
    v11 = v26;
    sub_10000501C(__p, "SignUpForSIMServiceRspTimeout");
    v12 = *(a1 + 24);
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_100516858;
    aBlock[3] = &unk_101E53F50;
    aBlock[5] = a1;
    aBlock[4] = &v71;
    sub_10052C7B4(v70, a3);
    v20 = _Block_copy(aBlock);
    sub_100D23364(v11, __p, 1, 30000000, &object, &v20);
    v13 = v28;
    v28 = 0;
    v14 = v72[5];
    v72[5] = v13;
    if (v14)
    {
      (*(*v14 + 8))(v14);
      v15 = v28;
      v28 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }
    }

    if (v20)
    {
      _Block_release(v20);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27)
    {
      sub_100004A34(v27);
    }

    if (v25)
    {
      sub_100004A34(v25);
    }

    v16 = *(a1 + 240);
    v17 = *(a1 + 1040);
    sub_10016EA28(__dst, &v79);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 1174405120;
    v29[2] = sub_10051699C;
    v29[3] = &unk_101E53F88;
    v29[5] = a1;
    v29[6] = v9;
    v30 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v29[4] = &v71;
    sub_10052C7B4(v31, a3);
    sub_10016EA28(&v32, &v79);
    sub_10016E9C0(v49, a2);
    v19 = _Block_copy(v29);
    (*(*v16 + 8))(v16, v17, __dst, &v19);
    if (v19)
    {
      _Block_release(v19);
    }

    if (v66 == 1)
    {
      if (v68 < 0)
      {
        operator delete(v67);
      }

      v66 = 0;
    }

    if (v63 == 1)
    {
      if (v65 < 0)
      {
        operator delete(v64);
      }

      v63 = 0;
    }

    if (v60 == 1)
    {
      if (v62 < 0)
      {
        operator delete(v61);
      }

      v60 = 0;
    }

    if (v57 == 1)
    {
      if (v59 < 0)
      {
        operator delete(v58);
      }

      v57 = 0;
    }

    v26 = &v56;
    sub_1000087B4(&v26);
    if (v55 < 0)
    {
      operator delete(v54);
    }

    if (v53 < 0)
    {
      operator delete(__dst[0]);
    }

    if (v49[0] == 1)
    {
      if (v51 < 0)
      {
        operator delete(v50);
      }

      v49[0] = 0;
    }

    if (v46 == 1)
    {
      if (v48 < 0)
      {
        operator delete(v47);
      }

      v46 = 0;
    }

    if (v43 == 1)
    {
      if (v45 < 0)
      {
        operator delete(v44);
      }

      v43 = 0;
    }

    if (v40 == 1)
    {
      if (v42 < 0)
      {
        operator delete(v41);
      }

      v40 = 0;
    }

    if (v37 == 1)
    {
      if (v39 < 0)
      {
        operator delete(v38);
      }

      v37 = 0;
    }

    v26 = &v36;
    sub_1000087B4(&v26);
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (v33 < 0)
    {
      operator delete(v32);
    }

    sub_1003B592C(v31);
    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    sub_1003B592C(v70);
    _Block_object_dispose(&v71, 8);
    v18 = v76;
    v76 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    goto LABEL_79;
  }

  bzero(&v71, 0x310uLL);
  sub_1005167B8(a3, 0);
  sub_1005230E0(&v78);
  if (v77 < 0)
  {
    operator delete(v75);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v71);
  }

LABEL_79:
  if (v90 == 1)
  {
    if (SHIBYTE(v91) < 0)
    {
      operator delete(*(&v90 + 1));
    }

    LOBYTE(v90) = 0;
  }

  if (BYTE8(v87) == 1)
  {
    if (SBYTE7(v89) < 0)
    {
      operator delete(v88);
    }

    BYTE8(v87) = 0;
  }

  if (BYTE8(v85) == 1)
  {
    if (SBYTE7(v87) < 0)
    {
      operator delete(v86);
    }

    BYTE8(v85) = 0;
  }

  if (BYTE8(v83) == 1)
  {
    if (SBYTE7(v85) < 0)
    {
      operator delete(v84);
    }

    BYTE8(v83) = 0;
  }

  v71 = &v82;
  sub_1000087B4(&v71);
  if (SHIBYTE(v81) < 0)
  {
    operator delete(*(&v80 + 1));
  }

  if (SBYTE7(v80) < 0)
  {
    operator delete(v79);
  }
}

void sub_1005162D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100516450()
{
  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  JUMPOUT(0x100516428);
}

void cellplan::CellularPlanControllerPhone::getAccountManagementWebsheetInfo_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = 328;
    if (*(a1 + 1224))
    {
      v5 = 1368;
    }

    if (*(a1 + v5 + 40) != *(a1 + v5 + 32))
    {
      sub_10052C84C();
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101773740();
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773774();
  }

  v6[336] = 0;
  v6[344] = 0;
  v6[688] = 0;
  v6[696] = 0;
  v6[720] = 0;
  v6[0] = 0;
  sub_1005167B8(a3, 0);
  sub_1005230E0(v6);
}

uint64_t sub_1005167B8(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10051680C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003B592C(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100516858(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SignUpForSIMServiceRspTimeout fired!", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  bzero(v5, 0x310uLL);
  sub_1005167B8(a1 + 48, 0);
  sub_1005230E0(&v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_10051699C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    v7 = *(a1 + 40);
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (*(a1 + 48))
      {
        v10 = *(*(*(a1 + 32) + 8) + 40);
        if (v10)
        {
          (*(*v10 + 16))(v10);
          v11 = *(*(a1 + 32) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }

          if (a3)
          {
            if ((*(a2 + 392) & 1) == 0)
            {
              v37 = 0;
              v39 = 0u;
              v35 = 0u;
              __p = 0u;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              v26 = 0u;
              *v24 = 0u;
              v25 = 0u;
              memset(v23, 0, sizeof(v23));
              *v21 = 0u;
              *v22 = 0u;
              *buf = 0u;
              *v20 = 0u;
              v38 = &v39;
              v40 = 1;
              sub_10016DFC8(a2 + 56, buf);
              if (v40 == 1)
              {
                sub_1000DD0AC(&v38, v39);
                if (BYTE8(v35) == 1)
                {
                  if (SHIBYTE(v37) < 0)
                  {
                    operator delete(__p);
                  }

                  BYTE8(v35) = 0;
                }

                if (SBYTE7(v35) < 0)
                {
                  operator delete(v34);
                }

                if (BYTE8(v30) == 1)
                {
                  if (SBYTE7(v32) < 0)
                  {
                    operator delete(v31);
                  }

                  BYTE8(v30) = 0;
                }

                if (v28 == 1)
                {
                  if (SHIBYTE(v29) < 0)
                  {
                    operator delete(*(&v28 + 1));
                  }

                  LOBYTE(v28) = 0;
                }

                if (v26 == 1)
                {
                  if (SHIBYTE(v27) < 0)
                  {
                    operator delete(*(&v26 + 1));
                  }

                  LOBYTE(v26) = 0;
                }

                if (LOBYTE(v24[0]) == 1)
                {
                  if (SHIBYTE(v25) < 0)
                  {
                    operator delete(v24[1]);
                  }

                  LOBYTE(v24[0]) = 0;
                }

                v18 = v23 + 1;
                sub_1000087B4(&v18);
                if (SBYTE7(v23[0]) < 0)
                {
                  operator delete(v22[0]);
                }

                if (SHIBYTE(v21[1]) < 0)
                {
                  operator delete(v20[1]);
                }

                if (SHIBYTE(v20[0]) < 0)
                {
                  operator delete(*buf);
                }
              }
            }

            rest::PairedDeviceInfoList::getDeviceNameForCsn();
            v13 = (a2 + 312);
            if (*(a2 + 335) < 0)
            {
              operator delete(*v13);
            }

            *v13 = *buf;
            *(a2 + 328) = v20[0];
            v14 = *(a2 + 335);
            v15 = v14;
            if ((v14 & 0x80u) != 0)
            {
              v14 = *(a2 + 320);
            }

            if (!v14)
            {
              if (v15 < 0)
              {
                *(a2 + 320) = 11;
                v13 = *(a2 + 312);
              }

              else
              {
                *(a2 + 335) = 11;
              }

              strcpy(v13, "Apple Watch");
            }

            if (*(a1 + 328) == 1)
            {
              v17 = *(a1 + 359);
              if (v17 < 0)
              {
                v17 = *(a1 + 344);
              }

              if (v17)
              {
                sub_10016C728((a2 + 336), (a1 + 336));
              }
            }

            sub_1005167B8(a1 + 64, 1);
          }

          else
          {
            bzero(buf, 0x310uLL);
            sub_1005167B8(a1 + 64, 0);
            sub_1005230E0(&v22[1]);
            if (SHIBYTE(v22[0]) < 0)
            {
              operator delete(v21[0]);
            }

            if (SHIBYTE(v20[0]) < 0)
            {
              operator delete(*buf);
            }
          }
        }

        else
        {
          v16 = *(v7 + 40);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I signed timed out, completion already invoked", buf, 2u);
          }
        }
      }

      sub_100004A34(v9);
    }
  }
}

void sub_100516D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100516D90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10052C7B4(a1 + 64, a2 + 64);
  sub_10016EA28((a1 + 96), (a2 + 96));
  return sub_10016E9C0(a1 + 328, a2 + 328);
}

void sub_100516DF0(_Unwind_Exception *a1)
{
  sub_10016E570(v1 + 96);
  sub_1003B592C(v1 + 64);
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_100516E28(uint64_t a1)
{
  if (*(a1 + 328) == 1)
  {
    if (*(a1 + 359) < 0)
    {
      operator delete(*(a1 + 336));
    }

    *(a1 + 328) = 0;
  }

  sub_10016E570(a1 + 96);
  sub_1003B592C(a1 + 64);
  v2 = *(a1 + 56);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(uint64_t a1, const void **a2, uint64_t a3, int a4)
{
  v49 = 0u;
  v51 = 0xA00000000000000;
  v50 = 0u;
  *&v52[8] = 0u;
  v56 = 0u;
  v55 = 0u;
  memset(__p, 0, sizeof(__p));
  v54 = 23;
  HIBYTE(v49) = 8;
  v48 = 0x72616C756C6C6543;
  WORD4(v50) = 26723;
  *&v50 = *"eSIM Watch";
  v52[23] = 16;
  *v52 = *"Transfer failure";
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  memset(&v44, 0, sizeof(v44));
  v8 = &v44;
  sub_1000677C4(&v44, v7 + 21);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v44.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, " Watch Transfer Fail ");
  v10 = std::string::append(&v44, ", PlanType:", 0xBuLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = asString();
  v13 = strlen(v12);
  v14 = std::string::append(&v45, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v46, ", IsPairing:", 0xCuLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = CSIBOOLAsString(a4);
  v19 = strlen(v18);
  v20 = std::string::append(&v47, v18, v19);
  v21 = v20->__r_.__value_.__r.__words[0];
  v59[0] = v20->__r_.__value_.__l.__size_;
  *(v59 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
  v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v21;
  __p[1] = v59[0];
  *(&__p[1] + 7) = *(v59 + 7);
  HIBYTE(__p[2]) = v22;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v54 |= 0x13uLL;
  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v47.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Reporting eSIM transfer failure on Watch", &v47, 2u);
  }

  (***(a1 + 128))(&v47);
  ServiceMap = Registry::getServiceMap(v47.__r_.__value_.__l.__data_);
  v25 = ServiceMap;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(ServiceMap);
  v46.__r_.__value_.__r.__words[0] = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, &v46);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      v33 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v25);
  v31 = 0;
  v33 = 1;
LABEL_31:
  sub_100D9EC48(v34, &v48);
  v58 = 0;
  (*(*v32 + 16))(v32, v34, v57);
  sub_10010DF14(v57);
  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  if ((v35 & 0x80000000) == 0)
  {
    if (v33)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  operator delete(v34[0]);
  if ((v33 & 1) == 0)
  {
LABEL_41:
    sub_100004A34(v31);
  }

LABEL_42:
  if (v47.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v47.__r_.__value_.__l.__size_);
  }

  if (SBYTE7(v56) < 0)
  {
    operator delete(v55);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v52[23] & 0x80000000) != 0)
  {
    operator delete(*v52);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }
}

void sub_100517360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, std::__shared_weak_count *a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  sub_10010DF14(v54 - 120);
  sub_100D9E764(&a9);
  if ((v53 & 1) == 0)
  {
    sub_100004A34(v52);
  }

  if (a47)
  {
    sub_100004A34(a47);
  }

  sub_100D9E764(&a52);
  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::handleTransferRemotePlan_sync(uint64_t a1, char a2, __int128 *a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I handleTransferRemotePlanTapped", buf, 2u);
  }

  v50 = 0;
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
  v38 = 0u;
  v39 = 0u;
  *buf = 0u;
  rest::PairedDeviceInfoList::getActiveDevice(buf, (a1 + 896));
  v9 = BYTE1(v48);
  v10 = BYTE1(v48) == 1;
  if (buf[0] == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if ((cellplan::CellularPlanControllerPhone::isPasscodeEnabled_sync(a1) & 1) == 0)
  {
    v35 = 0;
    v36 = 0;
    sub_100517B10(a4, &v36, &v35, 261);
    sub_10001021C(&v35);
    sub_100005978(&v36);
    return sub_100DB14E0(buf);
  }

  if ((*(a3 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a3 + 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_FAULT))
    {
      sub_101773820();
    }

    v33 = 0;
    v34 = 0;
    sub_100517B10(a4, &v34, &v33, 262);
    sub_10001021C(&v33);
    sub_100005978(&v34);
    sub_10000501C(&v61, "");
    (*(**(a1 + 208) + 176))(*(a1 + 208), &v61, 1, v11, v9 == 1);
    cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(a1, &v61, v11, v9 == 1);
    goto LABEL_20;
  }

  if (!*(a3 + 23))
  {
    goto LABEL_14;
  }

LABEL_9:
  LocalSimSlotForRemoteDeviceProfile_sync = cellplan::CellularPlanControllerPhone::getLocalSimSlotForRemoteDeviceProfile_sync(a1, a3);
  if (LocalSimSlotForRemoteDeviceProfile_sync)
  {
    memset(__p, 0, sizeof(__p));
    v29 = 0;
    (*(**(a1 + 128) + 120))(&v29);
    if (v29)
    {
      v61 = 0;
      v62 = 0uLL;
      ctu::cf::assign();
      v13 = v61;
      __p[0] = v61;
      __p[1] = v62;
      *(&__p[1] + 7) = *(&v62 + 7);
      HIBYTE(__p[2]) = HIBYTE(v62);
      v14 = v62 < 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    if (*(a1 + 1224))
    {
      v16 = 14;
    }

    else
    {
      v16 = 12;
    }

    v17 = *(a1 + 1096);
    if (!v17)
    {
      goto LABEL_43;
    }

    v18 = a1 + 1096;
    do
    {
      if (*(v17 + 32) >= v16)
      {
        v18 = v17;
      }

      v17 = *(v17 + 8 * (*(v17 + 32) < v16));
    }

    while (v17);
    if (v18 == a1 + 1096)
    {
      goto LABEL_43;
    }

    if (v16 < *(v18 + 32))
    {
      goto LABEL_43;
    }

    v21 = *(v18 + 48);
    v19 = v18 + 48;
    v20 = v21;
    if (!v21)
    {
      goto LABEL_43;
    }

    v22 = v19;
    do
    {
      if (*(v20 + 28) >= LocalSimSlotForRemoteDeviceProfile_sync)
      {
        v22 = v20;
      }

      v20 = *(v20 + 8 * (*(v20 + 28) < LocalSimSlotForRemoteDeviceProfile_sync));
    }

    while (v20);
    if (v22 != v19 && LocalSimSlotForRemoteDeviceProfile_sync >= *(v22 + 28) && *(v22 + 32) == 2)
    {
      v23 = v14;
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 1174405120;
      v51[2] = sub_100517B64;
      v51[3] = &unk_101E54048;
      v51[4] = a1;
      v57 = LocalSimSlotForRemoteDeviceProfile_sync;
      sub_100528224(v52, a4);
      if (v23)
      {
        sub_100005F2C(&v53, v13, __p[1]);
      }

      else
      {
        v53 = *__p;
        v54 = __p[2];
      }

      v58 = v11;
      v59 = v10;
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(&v55, *a3, *(a3 + 1));
      }

      else
      {
        v55 = *a3;
        v56 = *(a3 + 2);
      }

      v60 = a2;
      cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(a1, LocalSimSlotForRemoteDeviceProfile_sync, v51);
      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55);
      }

      if (SHIBYTE(v54) < 0)
      {
        operator delete(v53);
      }

      sub_100527D00(v52);
    }

    else
    {
LABEL_43:
      v24 = (*(**(a1 + 48) + 16))(*(a1 + 48), LocalSimSlotForRemoteDeviceProfile_sync);
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        v25 = sub_10006EE44(v16);
        sub_1017737A8(v25, &v61);
      }

      v27 = 0;
      v28 = 0;
      sub_100517B10(a4, &v28, &v27, 278);
      sub_10001021C(&v27);
      sub_100005978(&v28);
      (*(**(a1 + 208) + 176))(*(a1 + 208), __p, 1, v11, v9 == 1);
      cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(a1, __p, v11, v9 == 1);
    }

    sub_100005978(&v29);
    if (SHIBYTE(__p[2]) < 0)
    {
      v15 = __p[0];
      goto LABEL_48;
    }

    return sub_100DB14E0(buf);
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_FAULT))
  {
    sub_1017737E0();
  }

  v31 = 0;
  v32 = 0;
  sub_100517B10(a4, &v32, &v31, 312);
  sub_10001021C(&v31);
  sub_100005978(&v32);
  sub_10000501C(&v61, "");
  (*(**(a1 + 208) + 176))(*(a1 + 208), &v61, 1, v11, v9 == 1);
  cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(a1, &v61, v11, v9 == 1);
LABEL_20:
  if (SHIBYTE(v62) < 0)
  {
    v15 = v61;
LABEL_48:
    operator delete(v15);
  }

  return sub_100DB14E0(buf);
}

void sub_1005179F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39, int a40, __int16 a41, char a42, char a43)
{
  if (*(v44 - 161) < 0)
  {
    operator delete(*(v44 - 184));
  }

  sub_100527D00(v43 + 40);
  sub_100005978(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100DB14E0(&a41);
  _Unwind_Resume(a1);
}

uint64_t sub_100517B10(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

void sub_100517B64(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 32);
  if (a4)
  {
    v6 = a4;
    v7 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 120));
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_101773860();
    }

    v22 = 0;
    v23 = 0;
    sub_100517B10(a1 + 40, &v23, &v22, v6 | 0x100);
    sub_10001021C(&v22);
    sub_100005978(&v23);
    v8 = *(a1 + 124);
    v9 = *(a1 + 125);
    (*(**(v5 + 208) + 176))(*(v5 + 208), a1 + 72, 1, v8, *(a1 + 125));
    cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(v5, (a1 + 72), v8, v9);
  }

  else
  {
    v12 = *(v5 + 160);
    v13 = *(a1 + 120);
    v21 = 0;
    v20 = 0uLL;
    v37[0] = 0;
    v38 = 0;
    sub_100520D38(v39, v13, &v20, v37, 1);
    (*(*v12 + 96))(v12, 1, v39);
    if (v42[216] == 1)
    {
      sub_100E3A5D4(v42);
    }

    if (v41 < 0)
    {
      operator delete(__p);
    }

    if (v38 == 1)
    {
      sub_100E3A5D4(v37);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20);
    }

    (*(**(v5 + 96) + 16))(*(v5 + 96));
    v14 = *(v5 + 208);
    if (*(a1 + 95) < 0)
    {
      sub_100005F2C(__dst, *(a1 + 72), *(a1 + 80));
    }

    else
    {
      *__dst = *(a1 + 72);
      v19 = *(a1 + 88);
    }

    (*(*v14 + 88))(v14, __dst, 2, *(a1 + 124), *(a1 + 125), 0);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }

    v15 = *(a1 + 120);
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1005182D8;
    aBlock[3] = &unk_101E54018;
    aBlock[4] = v5;
    v30 = v15;
    v31 = a2;
    v32 = a3;
    if (*(a1 + 95) < 0)
    {
      sub_100005F2C(&v25, *(a1 + 72), *(a1 + 80));
    }

    else
    {
      v25 = *(a1 + 72);
      v26 = *(a1 + 88);
    }

    v33 = *(a1 + 124);
    sub_100528224(v27, a1 + 40);
    if (*(a1 + 119) < 0)
    {
      sub_100005F2C(&v28, *(a1 + 96), *(a1 + 104));
    }

    else
    {
      v28 = *(a1 + 96);
      v29 = *(a1 + 112);
    }

    v34 = *(a1 + 126);
    v35 = 0;
    v36 = *(a1 + 125);
    v16 = _Block_copy(aBlock);
    v17 = v16;
    cellplan::CellularPlanControllerPhone::getRemoteProvisioningAuthToken_sync(v5, v15, &v17);
    if (v16)
    {
      _Block_release(v16);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }

    sub_100527D00(v27);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }
  }
}

void sub_100517F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_100527D00(v29 + 64);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::getRemoteProvisioningAuthToken_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 128) + 680))(buf);
  v6 = (*(**buf + 112))(*buf, a2);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v6)
  {
    v16 = 0;
    sub_100004AA0(buf, (a1 + 8));
    v8 = *buf;
    v7 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v7);
    }

    v9 = *(a1 + 240);
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_100519D54;
    aBlock[3] = &unk_101E54078;
    aBlock[4] = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *a3;
    if (*a3)
    {
      v10 = _Block_copy(v10);
    }

    v14 = v10;
    v15 = _Block_copy(aBlock);
    (*(*v9 + 16))(v9, a2, 9, &v16, &v15);
    if (v15)
    {
      _Block_release(v15);
    }

    if (v14)
    {
      _Block_release(v14);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I authenticateTrustFlag not supported by carrier", buf, 2u);
    }

    v18 = 0;
    v19 = 0;
    *buf = 0;
    (*(*a3 + 16))();
    if (SHIBYTE(v19) < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_100518264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, void *aBlock, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    _Block_release(a16);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::triggerTransferSIMService_sync(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  sub_100004AA0(&v16, (a1 + 8));
  v9 = v16;
  v8 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v8);
  }

  v10 = *(a1 + 240);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1174405120;
  v12[2] = sub_100519E90;
  v12[3] = &unk_101E540A8;
  v12[4] = v9;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a4;
  if (*a4)
  {
    v11 = _Block_copy(v11);
  }

  v14 = v11;
  aBlock = _Block_copy(v12);
  (*(*v10 + 24))(v10, a2, 9, a3, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_1005187D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    _Block_release(a15);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10051881C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a2 != 6000)
  {
    if (a2 != 6013)
    {
      v16 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        sub_1017739FC(a2);
      }

      cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), *(a1 + 132), 0);
      v53 = 0;
      v54 = 0;
      sub_100517B10(a1 + 64, &v54, &v53, 312);
      sub_10001021C(&v53);
      v17 = &v54;
      goto LABEL_35;
    }

    if (*(a3 + 48) == 1)
    {
      v96 = 0;
      *v95 = 0u;
      v94 = 0u;
      *v93 = 0u;
      v92 = 0u;
      *v91 = 0u;
      memset(v90, 0, sizeof(v90));
      v89 = 0u;
      *v88 = 0u;
      *v87 = 0u;
      v86 = 0u;
      *v85 = 0u;
      v84 = 0u;
      *v83 = 0u;
      memset(v82, 0, sizeof(v82));
      v81 = 0u;
      *v80 = 0u;
      *v79 = 0u;
      v78 = 0u;
      *v77 = 0u;
      v7 = *(a1 + 112);
      v8 = *(a1 + 96);
      sub_10006F264(__p, (a3 + 56));
      cellplan::CellularPlanControllerPhone::setPlanTransferHttpRequest_sync(v5, v7, v8, __p, v77);
      v9 = (a3 + 24);
      if (v52 == 1 && v51 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(a1 + 133) == 1)
      {
        if ((cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(v5, 0, a1 + 116) & 1) == 0)
        {
          v28 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
          if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
          {
            v29 = asString();
            sub_1017739C4(v29, buf);
          }

          cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), *(a1 + 132), 0);
          v48 = 0;
          v49 = 0;
          sub_100517B10(a1 + 64, &v49, &v48, 261);
          sub_10001021C(&v48);
          sub_100005978(&v49);
LABEL_79:
          if (BYTE8(v94) == 1)
          {
            if (SHIBYTE(v96) < 0)
            {
              operator delete(v95[0]);
            }

            BYTE8(v94) = 0;
          }

          if (BYTE8(v92) == 1)
          {
            if (SBYTE7(v94) < 0)
            {
              operator delete(v93[0]);
            }

            BYTE8(v92) = 0;
          }

          if (SBYTE7(v92) < 0)
          {
            operator delete(v91[0]);
          }

          v56[0] = v90;
          sub_10016F470(v56);
          if (SHIBYTE(v89) < 0)
          {
            operator delete(v88[1]);
          }

          if (BYTE8(v86) == 1)
          {
            if (SHIBYTE(v88[0]) < 0)
            {
              operator delete(v87[0]);
            }

            BYTE8(v86) = 0;
          }

          if (BYTE8(v84) == 1)
          {
            if (SBYTE7(v86) < 0)
            {
              operator delete(v85[0]);
            }

            BYTE8(v84) = 0;
          }

          if (SBYTE7(v84) < 0)
          {
            operator delete(v83[0]);
          }

          v56[0] = v82;
          sub_10016F470(v56);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80[1]);
          }

          if (SHIBYTE(v80[0]) < 0)
          {
            operator delete(v79[0]);
          }

          if (LOBYTE(v77[0]) == 1 && SHIBYTE(v78) < 0)
          {
            v31 = v77[1];
            goto LABEL_108;
          }

          return;
        }

        *(v5 + 1040) = *(a1 + 112);
        bzero(buf, 0x310uLL);
        std::string::operator=(&v74, v9);
        v73 = 0;
        sub_1005196D0(&v76, v77);
        v10 = *(v5 + 256);
        v11 = *(v5 + 1040);
        v65[0] = 0;
        sub_10016F74C(&v66, buf);
        v65[0] = 1;
        (*(*v10 + 56))(v10, a1 + 116, v11, v65);
        if (v65[0] == 1)
        {
          sub_1005230E0(&v70);
          if (v69 < 0)
          {
            operator delete(v68);
          }

          if (v67 < 0)
          {
            operator delete(v66);
          }

          v65[0] = 0;
        }

        (*(**(v5 + 208) + 176))(*(v5 + 208), a1 + 40, 2, *(a1 + 132), *(a1 + 135));
        v46 = 0;
        v47 = 0;
        sub_100517B10(a1 + 64, &v47, &v46, 0);
        sub_10001021C(&v46);
        sub_100005978(&v47);
        sub_1005230E0(&v75);
        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v72) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        cf = 0;
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v21 = cf;
          cf = Mutable;
          *buf = v21;
          sub_1000296E0(buf);
        }

        v44 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v22 = sub_100986680(&v44, v77);
        sub_1000296E0(&v44);
        v23 = *(a1 + 132);
        if (!v22)
        {
          cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), v23, 0);
          v42 = 0;
          v43 = 0;
          sub_100517B10(a1 + 64, &v43, &v42, 261);
          sub_10001021C(&v42);
          sub_100005978(&v43);
          sub_1000296E0(&cf);
          goto LABEL_79;
        }

        cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), v23, 1);
        v24 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a3 + 47) >= 0)
          {
            v25 = a3 + 24;
          }

          else
          {
            v25 = *(a3 + 24);
          }

          *buf = 136315138;
          *&buf[4] = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I initiate transfer websheet flow: %s", buf, 0xCu);
        }

        if (*(a3 + 47) < 0)
        {
          sub_100005F2C(__dst, *(a3 + 24), *(a3 + 32));
        }

        else
        {
          *__dst = *&v9->__r_.__value_.__l.__data_;
          v40 = *(a3 + 40);
        }

        if (SHIBYTE(v40) < 0)
        {
          sub_100005F2C(v56, __dst[0], __dst[1]);
        }

        else
        {
          *v56 = *__dst;
          v57 = v40;
        }

        v55 = 0;
        if (SHIBYTE(v57) < 0)
        {
          sub_100005F2C(buf, v56[0], v56[1]);
        }

        else
        {
          *buf = *v56;
          v72 = v57;
        }

        v58 = 0;
        if (ctu::cf::convert_copy())
        {
          v32 = v55;
          v55 = v58;
          v59 = v32;
          sub_100005978(&v59);
        }

        if (SHIBYTE(v72) < 0)
        {
          operator delete(*buf);
        }

        v41 = v55;
        v55 = 0;
        sub_100005978(&v55);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56[0]);
        }

        sub_100010180(&v38, &cf);
        sub_100517B10(a1 + 64, &v41, &v38, 0);
        sub_10001021C(&v38);
        sub_100005978(&v41);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__dst[0]);
        }

        sub_1000296E0(&cf);
      }

      (*(**(v5 + 208) + 176))(*(v5 + 208), a1 + 40, 2, *(a1 + 132), *(a1 + 135));
      goto LABEL_79;
    }
  }

  v12 = *a3;
  if (*a3 == *(a3 + 8))
  {
    v18 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      sub_101773990();
    }

    cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), *(a1 + 132), 0);
    v36 = 0;
    v37 = 0;
    sub_100517B10(a1 + 64, &v37, &v36, 312);
    sub_10001021C(&v36);
    v17 = &v37;
    goto LABEL_35;
  }

  if (v12[3].__r_.__value_.__s.__data_[17] != 1 || (v12[3].__r_.__value_.__s.__data_[16] & 1) != 0)
  {
    v13 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I initiate transfer profile fetch", buf, 2u);
    }

    RemoteProvisioningOperation_sync = cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(v5, 0, a1 + 116);
    v15 = *(a1 + 112);
    if (RemoteProvisioningOperation_sync)
    {
      *(v5 + 1040) = v15;
      (*(**(v5 + 208) + 176))(*(v5 + 208), a1 + 40, 3, *(a1 + 132), *(a1 + 135));
      std::string::operator=((v5 + 976), v12);
      v77[1] = 0;
      v77[0] = 0;
      sub_10032E870();
    }

    v19 = (*(**(v5 + 48) + 16))(*(v5 + 48), v15);
    if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      sub_101773910();
    }

    cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), *(a1 + 132), 0);
    v33 = 0;
    v34 = 0;
    sub_100517B10(a1 + 64, &v34, &v33, 261);
    sub_10001021C(&v33);
    v17 = &v34;
LABEL_35:
    sub_100005978(v17);
    return;
  }

  v26 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I transfer completed with profile pending release", buf, 2u);
  }

  v27 = *(v5 + 1040);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_100519918;
  aBlock[3] = &unk_101E53FB8;
  aBlock[4] = v5;
  v63[2] = *(a1 + 116);
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(&v61, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v61 = *(a1 + 40);
    v62 = *(a1 + 56);
  }

  v64 = *(a1 + 132);
  sub_100528224(v63, a1 + 64);
  v30 = _Block_copy(aBlock);
  v35 = v30;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(v5, v27, 1u, 1, &v35);
  if (v30)
  {
    _Block_release(v30);
  }

  sub_100527D00(v63);
  if (SHIBYTE(v62) < 0)
  {
    v31 = v61;
LABEL_108:
    operator delete(v31);
  }
}

void sub_1005194A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, const void *a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_100005978(&a41);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_1000296E0(&a30);
  sub_10016F298(&STACK[0x7C0]);
  _Unwind_Resume(a1);
}

uint64_t sub_1005196D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 344) == 1)
  {
    sub_10016E3EC(a1, a2);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    *(a2 + 55) = 0;
    *(a2 + 32) = 0;
    sub_1005232B8(a1 + 56, (a2 + 56));
    sub_1005232B8(a1 + 200, (a2 + 200));
  }

  else
  {
    *a1 = 0;
    if (*a2 == 1)
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *a1 = 1;
    }

    v6 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v6;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    v7 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v7;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a1 + 104) = *(a2 + 104);
    v8 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v8;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    *(a1 + 136) = 0;
    if (*(a2 + 136) == 1)
    {
      v9 = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 144) = v9;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 144) = 0;
      *(a1 + 136) = 1;
    }

    *(a1 + 168) = 0;
    if (*(a2 + 168) == 1)
    {
      v10 = *(a2 + 176);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 176) = v10;
      *(a2 + 184) = 0;
      *(a2 + 192) = 0;
      *(a2 + 176) = 0;
      *(a1 + 168) = 1;
    }

    v11 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v11;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 200) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a1 + 248) = *(a2 + 248);
    v12 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 256) = v12;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 256) = 0;
    *(a1 + 280) = 0;
    if (*(a2 + 280) == 1)
    {
      v13 = *(a2 + 288);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 288) = v13;
      *(a2 + 296) = 0;
      *(a2 + 304) = 0;
      *(a2 + 288) = 0;
      *(a1 + 280) = 1;
    }

    *(a1 + 312) = 0;
    if (*(a2 + 312) == 1)
    {
      v14 = *(a2 + 320);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 320) = v14;
      *(a2 + 328) = 0;
      *(a2 + 336) = 0;
      *(a2 + 320) = 0;
      *(a1 + 312) = 1;
    }

    *(a1 + 344) = 1;
  }

  return a1;
}

const void **sub_100519918(uint64_t a1)
{
  cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(*(a1 + 32), (a1 + 96), (a1 + 40), *(a1 + 112), 1);
  v3 = 0;
  v4 = 0;
  sub_100517B10(a1 + 64, &v4, &v3, 0);
  sub_10001021C(&v3);
  return sub_100005978(&v4);
}

void sub_100519980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10051999C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  return sub_100528224(a1 + 64, a2 + 64);
}

void sub_1005199F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100519A10(uint64_t a1)
{
  sub_100527D00(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_100519A60(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  result = sub_100528224(a1 + 64, a2 + 64);
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100519AD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100519AEC(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100527D00(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void *sub_100519B48(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  result = sub_100528224(a1 + 64, a2 + 64);
  if (*(a2 + 119) < 0)
  {
    return sub_100005F2C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  return result;
}

void sub_100519BC8(_Unwind_Exception *a1)
{
  sub_100527D00(v1 + 64);
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(a1);
}

void sub_100519BF4(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_100527D00(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void *sub_100519C54(uint64_t a1, uint64_t a2)
{
  result = sub_100528224(a1 + 40, a2 + 40);
  if (*(a2 + 95) < 0)
  {
    result = sub_100005F2C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
  }

  if (*(a2 + 119) < 0)
  {
    return sub_100005F2C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  return result;
}

void sub_100519CD4(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  sub_100527D00(v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_100519D00(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return sub_100527D00(a1 + 40);
}

void sub_100519D54(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[4])
      {
        (*(a1[6] + 16))();
      }

      sub_100004A34(v4);
    }
  }
}

void *sub_100519DF0(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_100519E3C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100519E90(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[4])
      {
        (*(a1[6] + 16))();
      }

      sub_100004A34(v4);
    }
  }
}

void *sub_100519F2C(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_100519F78(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void cellplan::CellularPlanControllerPhone::getRemotePlanManageAccountInfo_sync(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t a4)
{
  v5 = *a4;
  if (*a4)
  {
    v5[32].__r_.__value_.__s.__data_[16] = 0;
    v42 = 0uLL;
    v7 = 328;
    if (*(a1 + 1224))
    {
      v7 = 1368;
    }

    v9 = (a1 + v7 + 32);
    v8 = *v9;
    if (v9[1] != *v9)
    {
      v42 = *(v8 + 16);
      bzero(buf, 0x318uLL);
      (*(**(a1 + 160) + 224))(buf);
      if (buf[0])
      {
        if (v41 == 1)
        {
          v13 = sub_100922CEC(v38, (a1 + 304));
          v14 = v13;
          if ((v13 & 0x100000000) != 0)
          {
            v15 = v13 >> 8;
            goto LABEL_23;
          }
        }

        if (*(a1 + 1224))
        {
          v14 = 0;
          v15 = 0;
LABEL_23:
          v18 = v14 | (v15 << 8);
          if (v41 == 1)
          {
            ctu::hex(&v28, &v42, 0x10, v12);
            rest::PairedDeviceInfoList::getDeviceNameForCsn();
            p_p = &__p;
            if (SHIBYTE(v40) < 0)
            {
              operator delete(__p);
            }

            __p = v30;
            v40 = v31;
            HIBYTE(v31) = 0;
            LOBYTE(v30) = 0;
            if (v29 < 0)
            {
              operator delete(v28);
            }

            v20 = HIBYTE(v40);
            if (v40 < 0)
            {
              v20 = *(&__p + 1);
            }

            if (!v20)
            {
              if (SHIBYTE(v40) < 0)
              {
                *(&__p + 1) = 11;
                p_p = __p;
              }

              else
              {
                HIBYTE(v40) = 11;
              }

              strcpy(p_p, "Apple Watch");
            }

            cellplan::CellularPlanControllerPhone::setRemotePlanSignupRequest_sync(a1, v18, 0, a3, v38);
          }

          v21 = sub_1003A9A70(buf);
          v22 = *a4;
          std::string::operator=(*a4, v21);
          v23 = *(v21 + 12);
          v22[1].__r_.__value_.__s.__data_[2] = v21[26];
          LOWORD(v22[1].__r_.__value_.__l.__data_) = v23;
          std::string::operator=((v22 + 32), (v21 + 32));
          sub_10016E6D0(&v22[2].__r_.__value_.__s.__data_[8], (v21 + 56));
          sub_10016EBE4(&v22[16].__r_.__value_.__r.__words[2], (v21 + 400));
          sub_10012BF3C((v22 + 752), (v21 + 752));
          if ((buf[0] & 1) == 0)
          {
            __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
          }

          if (v34 == 1)
          {
            v24 = *a2;
            v27 = v24;
            if (v24)
            {
              dispatch_retain(v24);
              dispatch_group_enter(v24);
            }

            v25 = *(a4 + 8);
            v26[0] = *a4;
            v26[1] = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            cellplan::CellularPlanControllerPhone::getManageAccountInfoFromRemoteDevice_sync(a1, &v27, &v42, v26);
            if (v25)
            {
              sub_100004A34(v25);
            }

            if (v24)
            {
              dispatch_group_leave(v24);
              dispatch_release(v24);
            }
          }

          (*(**(a1 + 208) + 128))(*(a1 + 208), v18);
          goto LABEL_47;
        }

        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101773AA8();
        }

        v17 = 5;
      }

      else
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101773A74();
        }

        v17 = 6;
      }

      *(*a4 + 784) = v17;
LABEL_47:
      if (LOBYTE(buf[0]) == 1)
      {
        sub_1005230E0(&v37);
        if (v36 < 0)
        {
          operator delete(v35);
        }

        if (v33 < 0)
        {
          operator delete(buf[1]);
        }
      }

      return;
    }

    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "csn not available", buf, 2u);
      v5 = *a4;
    }

    v5[32].__r_.__value_.__s.__data_[16] = 6;
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773ADC();
  }
}

void sub_10051A400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
  }

  sub_10050CC20(&a22);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::getManageAccountInfoFromRemoteDevice_sync(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  if (*a4)
  {
    if ((*(v4 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v4 + 8))
      {
LABEL_4:
        sub_100004AA0(&v10, (a1 + 8));
        v7 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v7);
        }

        v8 = *a2;
        if (v8)
        {
          dispatch_retain(v8);
          dispatch_group_enter(v8);
        }

        v9 = a4[1];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = 0;
        operator new();
      }
    }

    else if (*(v4 + 23))
    {
      goto LABEL_4;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101773B10();
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773B44();
  }
}

void sub_10051A644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_10032B980(va1);
  sub_10051A670(va);
  _Unwind_Resume(a1);
}

void *sub_10051A670(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[3];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void cellplan::CellularPlanControllerPhone::launchWebsheet_sync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 256);
  if (v3)
  {
    if (*(a2 + 784))
    {
      v5 = *(a1 + 120);
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = *(a1 + 112);
          if (v7)
          {
            cf = 0;
            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (Mutable)
            {
              v9 = cf;
              cf = Mutable;
              *buf = v9;
              sub_1000296E0(buf);
            }

            v19 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            if ((*(a2 + 744) & 1) == 0)
            {
              sub_1000D1644();
            }

            v10 = sub_100986680(&v19, a2 + 400);
            sub_1000296E0(&v19);
            if (v10)
            {
              v18 = 0;
              (*(**(a1 + 128) + 120))(&v18);
              if (*(a2 + 55) < 0)
              {
                sub_100005F2C(__dst, *(a2 + 32), *(a2 + 40));
              }

              else
              {
                *__dst = *(a2 + 32);
                v16 = *(a2 + 48);
              }

              if (SHIBYTE(v16) < 0)
              {
                sub_100005F2C(__p, __dst[0], __dst[1]);
              }

              else
              {
                *__p = *__dst;
                v23 = v16;
              }

              v21 = 0;
              if (SHIBYTE(v23) < 0)
              {
                sub_100005F2C(buf, __p[0], __p[1]);
              }

              else
              {
                *buf = *__p;
                v25 = v23;
              }

              v26 = 0;
              if (ctu::cf::convert_copy())
              {
                v12 = v21;
                v21 = v26;
                v27 = v12;
                sub_100005978(&v27);
              }

              if (SHIBYTE(v25) < 0)
              {
                operator delete(*buf);
              }

              v17 = v21;
              v21 = 0;
              sub_100005978(&v21);
              if (SHIBYTE(v23) < 0)
              {
                operator delete(__p[0]);
              }

              sub_100010180(&v14, &cf);
              v13 = v18;
              if (v18)
              {
                CFRetain(v18);
              }

              (*(*v7 + 72))(v7, &v17, &v14, &v13);
              sub_100005978(&v13);
              sub_10001021C(&v14);
              sub_100005978(&v17);
              if (SHIBYTE(v16) < 0)
              {
                operator delete(__dst[0]);
              }

              sub_100005978(&v18);
            }

            else
            {
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
              {
                sub_101773B78();
              }

              (*(**(a1 + 256) + 160))(*(a1 + 256));
            }

            sub_1000296E0(&cf);
LABEL_44:
            sub_100004A34(v6);
            return;
          }
        }
      }

      else
      {
        v6 = 0;
      }

      (*(**(a1 + 256) + 160))(*(a1 + 256));
      if (!v6)
      {
        return;
      }

      goto LABEL_44;
    }

    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Missing websheet info, aborting", buf, 2u);
      v3 = *(a1 + 256);
    }

    (*(*v3 + 160))(v3);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773BAC();
  }
}

void sub_10051AA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, const void *a19, __int16 a20, char a21, char a22, int a23, const void *a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_100005978(&a19);
  sub_1000296E0(&a24);
  sub_100004A34(v31);
  _Unwind_Resume(a1);
}

void sub_10051AB78(uint64_t *a1, unsigned __int8 *a2, __int128 *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *a2;
  v11[0] = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v12, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    v13 = *(a3 + 2);
  }

  v11[0] = 1;
  sub_10016F858(v8, a4);
  sub_10016F8C0(v9, a4 + 344);
  sub_10006F264(&v10, (a4 + 696));
  v7[0] = 1;
  (*(v5 + 16))(v5, v6, v11, v7);
  if (v7[0] == 1)
  {
    sub_1005230E0(v8);
    v7[0] = 0;
  }

  if (v11[0] == 1 && SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }
}

void cellplan::CellularPlanControllerPhone::remoteProvisioningEndedWithPendingWebsheetCallback_sync(uint64_t a1, uint64_t *a2)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773BE0();
  }

  sub_10051ADB4(a2);
}

void sub_10051ADB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0;
  (*(v1 + 16))();
}

void sub_10051AE60(_Unwind_Exception *a1, uint64_t a2, char a3, ...)
{
  va_start(va, a3);
  if (a3 == 1)
  {
    sub_1005230E0(va);
  }

  sub_101773C14(v3 - 56);
  _Unwind_Resume(a1);
}

const void **cellplan::CellularPlanControllerPhone::remoteProvisioningEndedWithPendingGetPlansCallback_sync(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I a pending get plan callback is present, get plans", buf, 2u);
  }

  (*(**(a1 + 160) + 104))(&v6);
  sub_10051AF70(a2, &v6);
  return sub_100010250(&v6);
}

void sub_10051AF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

const void **sub_10051AF70(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  v4 = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  return sub_100010250(&v4);
}

void sub_10051AFC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::remoteProvisioningOperationDidComplete_sync(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v14 = cellplan::asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I provisioning operation result: %s", buf, 0xCu);
  }

  v3 = *(a1 + 1080);
  *(a1 + 1080) = 0;
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 264);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 280);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 160);
  v7 = *(a1 + 1040);
  v10 = 0;
  v9 = 0uLL;
  v11[0] = 0;
  v12 = 0;
  sub_100520D38(buf, v7, &v9, v11, 0);
  (*(*v6 + 96))(v6, 0, buf);
  if (v16[216] == 1)
  {
    sub_100E3A5D4(v16);
  }

  if (v15 < 0)
  {
    operator delete(*&v14[4]);
  }

  if (v12 == 1)
  {
    sub_100E3A5D4(v11);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  return (*(**(a1 + 96) + 16))(*(a1 + 96));
}

void sub_10051B190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, int a44, __int16 a45, char a46, char a47)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::handleFailureToSendUserConsent_sync(uint64_t a1, int a2)
{
  if (*(a1 + 1072) == 1 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773C48();
  }

  *(a1 + 1076) = a2;
  *(a1 + 1072) = 1;
}

void cellplan::CellularPlanControllerPhone::handleFetchFailure_sync(uint64_t a1, int a2, __int128 *a3)
{
  if (*(a1 + 1072) == 1 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773C48();
  }

  *(a1 + 1076) = a2;
  *(a1 + 1072) = 1;
  if (a2 == 5)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Device not reachable - do not bother displaying notification", &v9, 2u);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    (*(**(a1 + 96) + 64))(&v9);
    if (v9)
    {
      v7 = *(a1 + 360);
      if (*(a1 + 368) != v7 && ((v11 = *(v7 + 16), *a3 == v11) ? (v8 = *(a3 + 1) == *(&v11 + 1)) : (v8 = 0), v8))
      {
        v11 = 0uLL;
      }

      else
      {
        v11 = *a3;
      }

      (*(*v9 + 72))();
    }

    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_10051B3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cellplan::CellularPlanControllerPhone::isProfileAlreadyInstalled_sync(uint64_t a1)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  *__p = 0u;
  v16 = 0u;
  v2 = 328;
  if (*(a1 + 1224))
  {
    v2 = 1368;
  }

  v3 = a1 + v2;
  if (*(a1 + v2 + 23) < 0)
  {
    sub_100005F2C(__p, *v3, *(v3 + 8));
  }

  else
  {
    *__p = *v3;
    *&v16 = *(v3 + 16);
  }

  v4 = *(v3 + 32);
  *(&v16 + 1) = *(v3 + 24);
  v17 = 0uLL;
  *&v18 = 0;
  sub_10027E628(&v17, v4, *(v3 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v3 + 40) - v4) >> 3));
  *(&v18 + 1) = *(v3 + 56);
  LODWORD(v19) = *(v3 + 64);
  if ((*(a1 + 999) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 984))
    {
      goto LABEL_29;
    }
  }

  else if (!*(a1 + 999))
  {
    goto LABEL_29;
  }

  if (v17 != *(&v17 + 1) && *(v17 + 80) == 1)
  {
    v5 = *(v17 + 56);
    for (i = *(v17 + 64); v5 != i; v5 += 216)
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      sub_100F11F00(&v20, v5);
      if ((SBYTE7(v22) & 0x80u) == 0)
      {
        v7 = BYTE7(v22);
      }

      else
      {
        v7 = *(&v21 + 1);
      }

      v8 = *(a1 + 999);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a1 + 984);
      }

      if (v7 == v8)
      {
        if ((SBYTE7(v22) & 0x80u) == 0)
        {
          v10 = &v21;
        }

        else
        {
          v10 = v21;
        }

        if (v9 >= 0)
        {
          v11 = (a1 + 976);
        }

        else
        {
          v11 = *(a1 + 976);
        }

        v12 = memcmp(v10, v11, v7);
        sub_100E3A5D4(&v20);
        if (!v12)
        {
          v14 = 1;
          goto LABEL_30;
        }
      }

      else
      {
        sub_100E3A5D4(&v20);
      }
    }
  }

LABEL_29:
  v14 = 0;
LABEL_30:
  *&v20 = &v17;
  sub_100112048(&v20);
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v14;
}

uint64_t cellplan::CellularPlanControllerPhone::isGetPlansFetchWithoutActiveSubscription_sync(cellplan::CellularPlanControllerPhone *this)
{
  v1 = 328;
  if (*(this + 1224))
  {
    v1 = 1368;
  }

  v2 = this + v1;
  v3 = *(this + v1 + 32);
  if (*(v2 + 5) != v3 && v2[24] == 1)
  {
    v11 = *(v3 + 16);
    if (*(this + 32))
    {
      (***(this + 16))(&v9);
      v10 = v9;
      v9 = 0uLL;
      subscriber::makeSimSlotRange();
      if (*(&v10 + 1))
      {
        sub_100004A34(*(&v10 + 1));
      }

      if (*(&v9 + 1))
      {
        sub_100004A34(*(&v9 + 1));
      }

      v4 = v6;
      if (v6 != v7)
      {
        do
        {
          if (v8(*v4))
          {
            break;
          }

          ++v4;
        }

        while (v4 != v7);
        if (v4 != v7)
        {
          sub_10032E870();
        }
      }
    }
  }

  return 1;
}

void sub_10051BC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, std::__shared_weak_count *a60)
{
  if (a60)
  {
    sub_100004A34(a60);
  }

  if (a54)
  {
    sub_100004A34(a54);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cellplan::CellularPlanControllerPhone::supportsEntitlementSubscriptionInfo_sync(cellplan::CellularPlanControllerPhone *this)
{
  (*(**(this + 16) + 680))(&v5);
  v4 = 0;
  v2 = (*(*v5 + 40))(v5, &v4, *(this + 260));
  sub_10001021C(&v4);
  if (v6)
  {
    sub_100004A34(v6);
  }

  return v2;
}

void sub_10051BDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::loadVinylInfoFromDatabase_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(a2 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_3;
    }

LABEL_22:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101773CF8();
    }

    goto LABEL_26;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_22;
  }

LABEL_3:
  if (!*(a1 + 128))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101773CC4();
    }

LABEL_26:
    *a3 = 0;
    a3[72] = 0;
    a3[80] = 0;
    a3[216] = 0;
    a3[224] = 1;
    return;
  }

  v33 = 0;
  v32 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
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
  v19 = 0u;
  (*(**(a1 + 176) + 16))(&v19);
  if (v33)
  {
    LODWORD(v32) = 2;
    if (v19 == 1)
    {
      (*(**(a1 + 160) + 88))(*(a1 + 160), 1, &v19 + 8);
    }

    sub_100523378(buf, (&v29 + 8), &v21);
    sub_100523454(a3, buf);
    a3[224] = 1;
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (v14 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      v14 = 0;
    }

    if (v11 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      v11 = 0;
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }

    v6 = &v8;
    sub_100112048(&v6);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I No Record found in DB, not fetching from dB", buf, 2u);
    }

    *a3 = 0;
    a3[72] = 0;
    a3[80] = 0;
    a3[216] = 0;
    a3[224] = 1;
  }

  if (v33 == 1)
  {
    *buf = &v31[8];
    sub_100112048(buf);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*(&v29 + 1));
    }

    if (SBYTE7(v28) < 0)
    {
      operator delete(v27);
    }

    if (BYTE8(v24) == 1)
    {
      if (SBYTE7(v26) < 0)
      {
        operator delete(v25);
      }

      BYTE8(v24) = 0;
    }

    if (BYTE8(v22) == 1)
    {
      if (SBYTE7(v24) < 0)
      {
        operator delete(v23);
      }

      BYTE8(v22) = 0;
    }

    if (SBYTE7(v22) < 0)
    {
      operator delete(v21);
    }

    if (v19 == 1 && SHIBYTE(v20) < 0)
    {
      operator delete(*(&v19 + 1));
    }
  }
}

uint64_t cellplan::CellularPlanControllerPhone::saveVinylSubscriptionDetail_sync(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  *__p = 0u;
  memset(v7, 0, sizeof(v7));
  v5 = 0u;
  *v6 = 0u;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v7[1], *a2, *(a2 + 8));
  }

  else
  {
    *&v7[1] = *a2;
    v7[3] = *(a2 + 16);
  }

  LOWORD(v7[4]) = 0;
  memset(&v7[5], 0, 48);
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&v7[11], *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *&v7[11] = *(a2 + 24);
    v7[13] = *(a2 + 40);
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    *__p = *(a2 + 48);
    v9 = *(a2 + 64);
  }

  (*(**(a1 + 176) + 72))(*(a1 + 176), &v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7[13]) < 0)
  {
    operator delete(v7[11]);
  }

  if (SHIBYTE(v7[10]) < 0)
  {
    operator delete(v7[8]);
  }

  if (SHIBYTE(v7[7]) < 0)
  {
    operator delete(v7[5]);
  }

  if (SHIBYTE(v7[3]) < 0)
  {
    operator delete(v7[1]);
  }

  if (SHIBYTE(v7[0]) < 0)
  {
    operator delete(v6[0]);
  }

  return 1;
}

void sub_10051C340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cellplan::CellularPlanControllerPhone::updateRemoteSubscriptionDetails_sync(uint64_t a1)
{
  (*(**(a1 + 160) + 24))(*(a1 + 160));
  (*(**(a1 + 96) + 16))(*(a1 + 96));
  return 1;
}

uint64_t non-virtual thunk tocellplan::CellularPlanControllerPhone::updateRemoteSubscriptionDetails_sync(uint64_t a1)
{
  (*(**(a1 + 72) + 24))(*(a1 + 72));
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  return 1;
}

uint64_t cellplan::CellularPlanControllerPhone::updateRemotePendingPlans_sync(uint64_t a1, ctu *a2, void *a3)
{
  (*(**(a1 + 160) + 40))(*(a1 + 160));
  if (*a3 == a3[1] || *(a1 + 256))
  {
    return 1;
  }

  (***(a1 + 128))(__str);
  ServiceMap = Registry::getServiceMap(*__str);
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
  v89.__r_.__value_.__r.__words[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v89);
  if (v12)
  {
    v13 = v12[3];
    v14 = v12[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v15 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v7);
  v14 = 0;
  v15 = 1;
LABEL_11:
  if (*&__str[8])
  {
    sub_100004A34(*&__str[8]);
  }

  if (!v13)
  {
    if (v15)
    {
      return 1;
    }

    goto LABEL_150;
  }

  *v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(__str, 0, sizeof(__str));
  v16 = *a3;
  v17 = *(*a3 + 95);
  if (v17 < 0)
  {
    v17 = *(v16 + 80);
  }

  v18 = v17 == 0;
  v19 = 72;
  if (v18)
  {
    v19 = 0;
  }

  v71 = v14;
  std::string::operator=(__str, (v16 + v19));
  v72 = v15;
  if (SHIBYTE(v81) < 0)
  {
    *&v81 = 16;
    v20 = *&__str[24];
  }

  else
  {
    v20 = &__str[24];
    HIBYTE(v81) = 16;
  }

  strcpy(v20, "com.apple.Bridge");
  LOBYTE(v82) = 1;
  v21 = kCBMessageLocalizationTable;
  (*(*v13 + 40))(&buf, v13, kCBMessageLocalizationTable, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_TITLE", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_TITLE");
  v89.__r_.__value_.__r.__words[0] = *(&v82 + 1);
  *(&v82 + 1) = buf.__r_.__value_.__r.__words[0];
  buf.__r_.__value_.__r.__words[0] = 0;
  sub_100005978(&v89.__r_.__value_.__l.__data_);
  sub_100005978(&buf.__r_.__value_.__l.__data_);
  v79 = 0;
  v22 = *(a1 + 896);
  v23 = *(a1 + 904);
  ctu::hex(__p, a2, 0x10, v24);
  v25 = v78;
  if (v22 == v23)
  {
    v23 = v22;
    if ((v78 & 0x80) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if ((v78 & 0x80u) == 0)
    {
      v26 = v78;
    }

    else
    {
      v26 = __p[1];
    }

    if ((v78 & 0x80u) == 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }

    v28 = v22 + 32;
    while (1)
    {
      v29 = *(v28 + 23);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v28 + 8);
      }

      if (v26 == v29)
      {
        v31 = v30 >= 0 ? v28 : *v28;
        if (!memcmp(v27, v31, v26))
        {
          break;
        }
      }

      v32 = v28 + 184;
      v28 += 216;
      if (v32 == v23)
      {
        if ((v25 & 0x80) != 0)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }
    }

    v23 = v28 - 32;
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_44:
  operator delete(__p[0]);
LABEL_40:
  if (v23 == *(a1 + 904))
  {
    v33 = *(a1 + 40);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      ctu::hex(&v89, a2, 0x10, v34);
      v36 = (v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v89 : v89.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v36;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Cannot find device for (%s)", &buf, 0xCu);
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }
    }

    v87 = 0;
    buf.__r_.__value_.__r.__words[0] = 0;
    v37 = kCFAllocatorDefault;
    if (ctu::cf::convert_copy(&buf, "Apple Watch", 0x8000100, kCFAllocatorDefault, v35))
    {
      v38 = v87;
      v87 = buf.__r_.__value_.__r.__words[0];
      v89.__r_.__value_.__r.__words[0] = v38;
      sub_100005978(&v89.__r_.__value_.__l.__data_);
    }

    v86 = v87;
    v87 = 0;
    sub_100005978(&v87);
    v89.__r_.__value_.__r.__words[0] = v79;
    v79 = v86;
    v86 = 0;
    sub_100005978(&v89.__r_.__value_.__l.__data_);
    sub_100005978(&v86);
  }

  else
  {
    if (*(v23 + 127) < 0)
    {
      sub_100005F2C(&__dst, *(v23 + 104), *(v23 + 112));
    }

    else
    {
      __dst = *(v23 + 104);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = __dst;
    }

    v85 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v89, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      v89 = buf;
    }

    v86 = 0;
    v37 = kCFAllocatorDefault;
    if (ctu::cf::convert_copy())
    {
      v39 = v85;
      v85 = v86;
      v87 = v39;
      sub_100005978(&v87);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    v76 = v85;
    v85 = 0;
    sub_100005978(&v85);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v89.__r_.__value_.__r.__words[0] = v79;
    v79 = v76;
    v76 = 0;
    sub_100005978(&v89.__r_.__value_.__l.__data_);
    sub_100005978(&v76);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (v23 == *(a1 + 904))
  {
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      ctu::hex(&v89, a2, 0x10, v41);
      v43 = (v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v89 : v89.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Cannot find device for (%s)", &buf, 0xCu);
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }
    }

    v87 = 0;
    buf.__r_.__value_.__r.__words[0] = 0;
    if (ctu::cf::convert_copy(&buf, "Apple Watch", 0x8000100, v37, v42))
    {
      v44 = v87;
      v87 = buf.__r_.__value_.__r.__words[0];
      v89.__r_.__value_.__r.__words[0] = v44;
      sub_100005978(&v89.__r_.__value_.__l.__data_);
    }

    v86 = v87;
    v87 = 0;
    sub_100005978(&v87);
    v89.__r_.__value_.__r.__words[0] = v79;
    v79 = v86;
    v86 = 0;
    sub_100005978(&v89.__r_.__value_.__l.__data_);
    sub_100005978(&v86);
  }

  else
  {
    if (*(v23 + 127) < 0)
    {
      sub_100005F2C(&v74, *(v23 + 104), *(v23 + 112));
    }

    else
    {
      v74 = *(v23 + 104);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = v74;
    }

    v85 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v89, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      v89 = buf;
    }

    v86 = 0;
    if (ctu::cf::convert_copy())
    {
      v45 = v85;
      v85 = v86;
      v87 = v45;
      sub_100005978(&v87);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    v76 = v85;
    v85 = 0;
    sub_100005978(&v85);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v89.__r_.__value_.__r.__words[0] = v79;
    v79 = v76;
    v76 = 0;
    sub_100005978(&v89.__r_.__value_.__l.__data_);
    sub_100005978(&v76);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }
  }

  v46 = *a3;
  if (*(*a3 + 71) < 0)
  {
    v47 = *(v46 + 56);
    if (v47)
    {
      v76 = 0;
      sub_100005F2C(&v73, *(v46 + 48), v47);
      goto LABEL_101;
    }

LABEL_103:
    buf.__r_.__value_.__r.__words[0] = 0;
    (*(*v13 + 40))(&buf, v13, v21, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_PHONE_NO_CARRIER_%@", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_PHONE_NO_CARRIER_%@");
    StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(v37, 0, @"%@", buf.__r_.__value_.__l.__data_, 0, v79);
    v49 = v83[0];
    v83[0] = StringWithValidatedFormat;
    v89.__r_.__value_.__r.__words[0] = v49;
    sub_100005978(&v89.__r_.__value_.__l.__data_);
    p_buf = &buf;
    goto LABEL_117;
  }

  if (!*(*a3 + 71))
  {
    goto LABEL_103;
  }

  v76 = 0;
  v73 = *(v46 + 48);
LABEL_101:
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = v73;
  }

  v85 = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v89, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = buf;
  }

  v86 = 0;
  if (ctu::cf::convert_copy())
  {
    v51 = v85;
    v85 = v86;
    v87 = v51;
    sub_100005978(&v87);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  v76 = v85;
  v85 = 0;
  sub_100005978(&v85);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  buf.__r_.__value_.__r.__words[0] = 0;
  (*(*v13 + 40))(&buf, v13, v21, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_PHONE_%@_%@", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_PHONE_%@_%@");
  v52 = CFStringCreateStringWithValidatedFormat(v37, 0, @"%@%@", buf.__r_.__value_.__l.__data_, 0, v76, v79);
  v53 = v83[0];
  v83[0] = v52;
  v89.__r_.__value_.__r.__words[0] = v53;
  sub_100005978(&v89.__r_.__value_.__l.__data_);
  sub_100005978(&buf.__r_.__value_.__l.__data_);
  p_buf = &v76;
LABEL_117:
  sub_100005978(&p_buf->__r_.__value_.__l.__data_);
  ctu::hex(&v89, a2, 0x10, v54);
  v55 = std::string::insert(&v89, 0, "bridge:root=CELLULAR_ID&csn=", 0x1CuLL);
  v56 = v55->__r_.__value_.__r.__words[0];
  buf.__r_.__value_.__r.__words[0] = v55->__r_.__value_.__l.__size_;
  *(buf.__r_.__value_.__r.__words + 7) = *(&v55->__r_.__value_.__r.__words[1] + 7);
  v57 = HIBYTE(v55->__r_.__value_.__r.__words[2]);
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83[1]);
  }

  v83[1] = v56;
  *&v84 = buf.__r_.__value_.__r.__words[0];
  *(&v84 + 7) = *(buf.__r_.__value_.__r.__words + 7);
  HIBYTE(v84) = v57;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (rest::PairedDeviceInfoList::isAnyDeviceInState())
  {
    v58 = *(a1 + 40);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = __str;
      if (__str[23] < 0)
      {
        v59 = *__str;
      }

      LODWORD(v89.__r_.__value_.__l.__data_) = 136315138;
      *(v89.__r_.__value_.__r.__words + 4) = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I Delaying notification (%s)", &v89, 0xCu);
    }

    sub_10051D2C4(a1 + 1112, __str);
    goto LABEL_143;
  }

  (***(a1 + 128))(&v89);
  v60 = Registry::getServiceMap(v89.__r_.__value_.__l.__data_);
  v61 = v60;
  if ((v62 & 0x8000000000000000) != 0)
  {
    v63 = (v62 & 0x7FFFFFFFFFFFFFFFLL);
    v64 = 5381;
    do
    {
      v62 = v64;
      v65 = *v63++;
      v64 = (33 * v64) ^ v65;
    }

    while (v65);
  }

  std::mutex::lock(v60);
  buf.__r_.__value_.__r.__words[0] = v62;
  v66 = sub_100009510(&v61[1].__m_.__sig, &buf);
  if (!v66)
  {
    v68 = 0;
    goto LABEL_136;
  }

  v68 = v66[3];
  v67 = v66[4];
  if (!v67)
  {
LABEL_136:
    std::mutex::unlock(v61);
    v67 = 0;
    v69 = 1;
    goto LABEL_137;
  }

  atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v61);
  atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v67);
  v69 = 0;
LABEL_137:
  if (v89.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v89.__r_.__value_.__l.__size_);
  }

  if (v68)
  {
    (*(*v68 + 16))(v68, __str);
  }

  if ((v69 & 1) == 0)
  {
    sub_100004A34(v67);
  }

LABEL_143:
  sub_100005978(&v79);
  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83[1]);
  }

  sub_100005978(v83);
  sub_100005978(&v82 + 1);
  v14 = v71;
  if (SHIBYTE(v81) < 0)
  {
    operator delete(*&__str[24]);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((v72 & 1) == 0)
  {
LABEL_150:
    sub_100004A34(v14);
  }

  return 1;
}

void sub_10051D0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38, __int16 a39, char a40, char a41)
{
  sub_100005978(&a38);
  sub_10051D34C(&a39);
  if ((a13 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_10051D2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (!a30)
  {
    JUMPOUT(0x10051D2ACLL);
  }

  JUMPOUT(0x10051D2A8);
}

uint64_t sub_10051D2C4(uint64_t a1, std::string *__str)
{
  if (*(a1 + 96) == 1)
  {
    std::string::operator=(a1, __str);
    std::string::operator=((a1 + 24), __str + 1);
    *(a1 + 48) = __str[2].__r_.__value_.__s.__data_[0];
    sub_100222570((a1 + 56), &__str[2].__r_.__value_.__l.__size_);
    sub_100222570((a1 + 64), &__str[2].__r_.__value_.__r.__words[2]);
    std::string::operator=((a1 + 72), __str + 3);
  }

  else
  {
    sub_100F7BBA0(a1, __str);
    *(a1 + 96) = 1;
  }

  return a1;
}

uint64_t sub_10051D34C(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_100005978((a1 + 64));
  sub_100005978((a1 + 56));
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

uint64_t cellplan::CellularPlanControllerPhone::updateRemotePlanStatus_sync(uint64_t a1, ctu *a2, uint64_t a3, int a4)
{
  (***(a1 + 128))(__str);
  ServiceMap = Registry::getServiceMap(*__str);
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
      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v18 = 1;
LABEL_9:
  if (*&__str[8])
  {
    sub_100004A34(*&__str[8]);
  }

  if (!v16)
  {
    goto LABEL_81;
  }

  *v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(__str, 0, sizeof(__str));
  v51 = 0;
  v52 = 0;
  v53 = 0;
  ctu::hex(&v51, a2, 0x10, v17);
  if (SHIBYTE(v55) < 0)
  {
    *&v55 = 16;
    v19 = *&__str[24];
  }

  else
  {
    v19 = &__str[24];
    HIBYTE(v55) = 16;
  }

  strcpy(v19, "com.apple.Bridge");
  LOBYTE(v56) = 1;
  v20 = *(a3 + 23);
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a3 + 8);
  }

  if (v20)
  {
    v21 = a3;
  }

  else
  {
    v21 = &v51;
  }

  std::string::operator=(__str, v21);
  v50 = 0;
  if (a4)
  {
    v22 = kCBMessageLocalizationTable;
    (*(*v16 + 40))(&__dst, v16, kCBMessageLocalizationTable, @"CELLULAR_PLAN_SETUP_READY_FOR_USE_TITLE_PHONE_%@", 0);
    *buf = v50;
    v50 = __dst;
    *&__dst = 0;
    sub_100005978(buf);
    sub_100005978(&__dst);
    (*(*v16 + 40))(&__dst, v16, v22, @"CELLULAR_PLAN_SETUP_READY_FOR_USE_MESSAGE_PHONE", 0);
  }

  else
  {
    v23 = kCBMessageLocalizationTable;
    (*(*v16 + 40))(&__dst, v16, kCBMessageLocalizationTable, @"CELLULAR_PLAN_SETUP_FAILURE_TITLE_PHONE_%@", 0);
    *buf = v50;
    v50 = __dst;
    *&__dst = 0;
    sub_100005978(buf);
    sub_100005978(&__dst);
    (*(*v16 + 40))(&__dst, v16, v23, @"CELLULAR_PLAN_SETUP_FAILURE_MESSAGE_PHONE", 0);
  }

  *buf = v57[0];
  v57[0] = __dst;
  *&__dst = 0;
  sub_100005978(buf);
  sub_100005978(&__dst);
  __src[0] = 0;
  __src[1] = 0;
  v49 = 0;
  rest::PairedDeviceInfoList::getDeviceNameForCsn();
  *v62 = 0;
  *&__dst = 0;
  if (ctu::cf::convert_copy(&__dst, "Apple Watch", 0x8000100, kCFAllocatorDefault, v24))
  {
    v25 = *v62;
    *v62 = __dst;
    *buf = v25;
    sub_100005978(buf);
  }

  v61 = *v62;
  *v62 = 0;
  sub_100005978(v62);
  StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v50, 0, v61);
  v27 = *(&v56 + 1);
  *(&v56 + 1) = StringWithValidatedFormat;
  *buf = v27;
  sub_100005978(buf);
  sub_100005978(&v61);
  sub_1000167D4(&v57[1], "bridge:root=CELLULAR_ID&csn=", 0x1CuLL);
  if (v53 >= 0)
  {
    v28 = &v51;
  }

  else
  {
    v28 = v51;
  }

  if (v53 >= 0)
  {
    v29 = HIBYTE(v53);
  }

  else
  {
    v29 = v52;
  }

  std::string::append(&v57[1], v28, v29);
  if (rest::PairedDeviceInfoList::isAnyDeviceInState())
  {
    v30 = *(a1 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = __str;
      if (__str[23] < 0)
      {
        v31 = *__str;
      }

      *buf = 136315138;
      *&buf[4] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Delaying notification (%s)", buf, 0xCu);
    }

    sub_10051D2C4(a1 + 1112, __str);
    goto LABEL_72;
  }

  (***(a1 + 128))(buf);
  v32 = Registry::getServiceMap(*buf);
  v33 = v32;
  if (v34 < 0)
  {
    v35 = (v34 & 0x7FFFFFFFFFFFFFFFLL);
    v36 = 5381;
    do
    {
      v34 = v36;
      v37 = *v35++;
      v36 = (33 * v36) ^ v37;
    }

    while (v37);
  }

  std::mutex::lock(v32);
  *&__dst = v34;
  v38 = sub_100009510(&v33[1].__m_.__sig, &__dst);
  if (!v38)
  {
    v40 = 0;
    goto LABEL_44;
  }

  v40 = v38[3];
  v39 = v38[4];
  if (!v39)
  {
LABEL_44:
    std::mutex::unlock(v33);
    v39 = 0;
    v41 = 1;
    goto LABEL_45;
  }

  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v33);
  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v39);
  v41 = 0;
LABEL_45:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v40)
  {
    v42 = *(a1 + 40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = __str;
      if (__str[23] < 0)
      {
        v43 = *__str;
      }

      *buf = 136315138;
      *&buf[4] = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Posting notification (%s)", buf, 0xCu);
      v42 = *(a1 + 40);
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      memset(buf, 0, sizeof(buf));
      v64 = 0;
      ctu::cf::assign();
      __dst = *buf;
      v60 = v64;
      p_dst = *buf;
      if (v64 >= 0)
      {
        p_dst = &__dst;
      }

      *v62 = 136315138;
      *&v62[4] = p_dst;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s", v62, 0xCu);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__dst);
      }

      v42 = *(a1 + 40);
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      memset(buf, 0, sizeof(buf));
      v64 = 0;
      ctu::cf::assign();
      __dst = *buf;
      v60 = v64;
      v45 = *buf;
      if (v64 >= 0)
      {
        v45 = &__dst;
      }

      *v62 = 136315138;
      *&v62[4] = v45;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s", v62, 0xCu);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__dst);
      }

      v42 = *(a1 + 40);
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      if (v58 >= 0)
      {
        v46 = &v57[1];
      }

      else
      {
        v46 = v57[1];
      }

      *buf = 136315138;
      *&buf[4] = v46;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Posting notification (%s)", buf, 0xCu);
    }

    (*(*v40 + 16))(v40, __str);
  }

  if ((v41 & 1) == 0)
  {
    sub_100004A34(v39);
  }

LABEL_72:
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__src[0]);
  }

  sub_100005978(&v50);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[1]);
  }

  sub_100005978(v57);
  sub_100005978(&v56 + 1);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(*&__str[24]);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
    if (v18)
    {
      return 1;
    }

    goto LABEL_82;
  }

LABEL_81:
  if ((v18 & 1) == 0)
  {
LABEL_82:
    sub_100004A34(v15);
  }

  return 1;
}

void sub_10051DD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, const void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33)
{
  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  if ((v36 & 1) == 0)
  {
    sub_100004A34(v34);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_10051D34C(&a32);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::recheckSubscriptionWithTimer_sync(cellplan::CellularPlanControllerPhone *this)
{
  v1 = *(this + 5);
  if (*(this + 125))
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_101773D2C();
    }
  }

  else
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(this + 129);
      v4 = *(*(this + 126) + 4 * v3);
      *buf = 134218240;
      *&buf[4] = v3;
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Starting a timer with index:%zu and time interval:%d", buf, 0x12u);
    }

    sub_100004AA0(buf, this + 1);
    v6 = *buf;
    v5 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v5);
    }

    (***(this + 16))(&v19);
    Registry::getTimerService(buf, v19);
    v7 = *buf;
    sub_10000501C(__p, "ActivatingStateSubscriptionCheckTimer");
    v8 = *(*(this + 126) + 4 * *(this + 129));
    v9 = *(this + 3);
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_10051E26C;
    aBlock[3] = &unk_101E540F8;
    aBlock[4] = this;
    aBlock[5] = v6;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = _Block_copy(aBlock);
    sub_100D23364(v7, __p, 1, 1000000 * v8, &object, &v15);
    v10 = v21;
    v21 = 0;
    v11 = *(this + 125);
    *(this + 125) = v10;
    if (v11)
    {
      (*(*v11 + 8))(v11);
      v12 = v21;
      v21 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    if (v15)
    {
      _Block_release(v15);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v20)
    {
      sub_100004A34(v20);
    }

    ++*(this + 129);
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}
void sub_101508494(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1015084AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 232);
  if (v4 && ((*(*v4 + 72))(v4, a2) & 1) != 0)
  {
    return 1;
  }

  v6 = *(a1 + 184);
  if (!v6)
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "NAISelector not configured for network selection menu enabled query", &v11, 2u);
    }

    return 0;
  }

  v11 = 0;
  v12 = 0;
  (*(*v6 + 16))(&v11);
  v7 = v11;
  if (v11)
  {
    v5 = (*(*v11 + 96))(v11);
  }

  else
  {
    v5 = 0;
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (!v7)
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Neither network selection or NAI is available", &v11, 2u);
    }

    return 0;
  }

  return v5;
}

void sub_10150867C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::getEncryptionStatus(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10150E0BC(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1015087D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationController::getNRDisableStatus_sync(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v12 = 0uLL;
  NRDisableStatus::NRDisableStatus(&v12, 1, 1);
  v5 = *(a1 + 928);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 928;
  do
  {
    if (*(v5 + 28) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 28) < a2));
  }

  while (v5);
  if (v6 != a1 + 928 && *(v6 + 28) <= a2)
  {
    v12 = *(v6 + 32);
  }

  else
  {
LABEL_8:
    v7 = *v4;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not find NR disable status", &v10, 2u);
    }
  }

  if (!RegistrationController::supports5GNSA_sync(a1) && ((NRDisableStatus::isSADisabledWithReason() & 1) != 0 || NRDisableStatus::isSADisabledWithReason()))
  {
    BYTE8(v12) = 1;
    HIDWORD(v12) |= 0x80000000;
  }

  v10 = 0;
  v11 = 0;
  RegistrationController::getModel_sync(a1, a2, &v10);
  if (v10)
  {
    v8 = (*(*v10 + 824))(v10);
    if ((v8 & 0x100) != 0 && (v8 & 1) == 0)
    {
      LOBYTE(v12) = 1;
      DWORD1(v12) |= 0x40000000u;
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v12;
}

void sub_101508994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::getNRStatus_sync(uint64_t a1@<X0>, int a2@<W1>, NRStatus *a3@<X8>)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v18[0] = RegistrationController::getNRDisableStatus_sync(a1, a2);
  v18[1] = v7;
  if (capabilities::ct::supports5G(v18[0]))
  {
    v16 = 0;
    v17 = 0;
    RegistrationController::getModel_sync(a1, a2, &v16);
    v8 = v16;
    if (!v16)
    {
      v14 = *v6;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not find model when checking NR status", buf, 2u);
      }

      goto LABEL_14;
    }

    if (RegistrationController::supports5GNSA_sync(a1))
    {
      if (NRDisableStatus::isSADisabledWithReason())
      {
        v9 = *v6;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v10 = "#I 5G Standalone disabled by baseband due to VoLTE off. Remove switch";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
        }
      }

      else
      {
        if (((*(*v8 + 840))(v8) & 0x100) != 0)
        {
          v13 = (*(*v8 + 816))(v8);
          if (NRDisableStatus::isSADisabledWithReasonMask(v18))
          {
            v15 = *v6;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v20 = HIDWORD(v18[0]);
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone disabled by baseband with reason 0x%x", buf, 8u);
            }

            LOBYTE(v6) = 0;
          }

          else
          {
            LODWORD(v6) = (v13 >> 8) & 1;
          }

          goto LABEL_15;
        }

        v9 = *v6;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v10 = "#I 5G Standalone support not yet known. Remove switch";
          goto LABEL_13;
        }
      }
    }

    else
    {
      v9 = *v6;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "#I Carrier only supports 5G Standalone. Remove switch";
        goto LABEL_13;
      }
    }

LABEL_14:
    LOBYTE(v6) = 0;
    LOBYTE(v13) = 0;
LABEL_15:
    if (v17)
    {
      sub_100004A34(v17);
    }

    goto LABEL_17;
  }

  v11 = *v6;
  v12 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
  LOBYTE(v6) = 0;
  LOBYTE(v13) = 0;
  if (v12)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I 5G not supported when querying NR status", &v16, 2u);
    LOBYTE(v6) = 0;
    LOBYTE(v13) = 0;
  }

LABEL_17:
  NRStatus::NRStatus(a3, v13 & 1, v6, v18);
}

void sub_101508CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::getNRStatus(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10150E320;
  v7[3] = &unk_101F46D60;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v4 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    NRDisableStatus::NRDisableStatus(&block, 1, 1);
    NRStatus::NRStatus(a3, 0, 0, &block);
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10150E384;
    v12 = &unk_101F46DA0;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    NRDisableStatus::NRDisableStatus(&block, 1, 1);
    NRStatus::NRStatus(a3, 0, 0, &block);
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10150E330;
    v12 = &unk_101F46D80;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v4, &block);
  }
}

uint64_t RegistrationController::getSupports5GStandalone(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  v6[0] = a3;
  v6[1] = a1;
  v6[2] = &v7;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10150E3D8;
  v8[3] = &unk_101F46DC0;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150E6E4;
    v13 = &unk_101F46E00;
    v14 = &v16;
    v15 = &v9;
    v16 = 0;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150E6A8;
    v13 = &unk_101F46DE0;
    v14 = &v16;
    v15 = &v9;
    v16 = 0;
    dispatch_sync(v3, &block);
  }

  return v16;
}

uint64_t RegistrationController::setSupports5GStandalone(uint64_t a1, int a2, char a3)
{
  v8 = a2;
  v7 = a3;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10150E720;
  v9[3] = &unk_101F46E20;
  v9[4] = a1 + 8;
  v9[5] = v6;
  v10 = v9;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10150E6E4;
    v14 = &unk_101F46E00;
    v15 = &v17;
    v16 = &v10;
    v17 = 0;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10150E6A8;
    v14 = &unk_101F46DE0;
    v15 = &v17;
    v16 = &v10;
    v17 = 0;
    dispatch_sync(v3, &block);
  }

  return v17;
}

void RegistrationController::setGeoMccs(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, __int16 a5)
{
  memset(__p, 0, sizeof(__p));
  sub_1001B964C(__p, *a3, a3[1], (a3[1] - *a3) >> 1);
  v9 = a4;
  v10 = a5;
  v11[0] = 0;
  v11[1] = 0;
  sub_100004AA0(v11, (a1 + 8));
  operator new();
}

void RegistrationController::getImsAndVoNRStateForBaseband(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100EBBFD4(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1015093F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::updateVoNRStateForSlot(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void RegistrationController::setSatelliteSystemConfig(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t RegistrationController::updateDynamicVoNRForSlot(capabilities::ct *a1)
{
  result = capabilities::ct::supportsVoNR(a1);
  if (result)
  {
    v3[0] = 0;
    v3[1] = 0;
    sub_100004AA0(v3, a1 + 1);
    operator new();
  }

  return result;
}

uint64_t sub_1015096DC(uint64_t a1)
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

uint64_t sub_10150975C(uint64_t a1)
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

uint64_t sub_1015097DC(uint64_t a1)
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

uint64_t sub_10150985C(uint64_t a1)
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

uint64_t sub_1015098DC(uint64_t a1)
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

uint64_t sub_10150995C(uint64_t a1)
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

uint64_t sub_1015099DC(uint64_t a1)
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

uint64_t sub_101509A5C(uint64_t a1)
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

uint64_t sub_101509ADC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_101509B74(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v17 = 0;
  v18 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v17);
  v3 = v17;
  if (v17)
  {
    v4 = (*(*v17 + 80))(v17);
    v5 = (*(*v3 + 112))(v3);
    v6 = (*(*v3 + 88))(v3);
    v7 = (*(*v3 + 928))(v3);
    v8 = 0x100000000000000;
    if (!v7)
    {
      v8 = 0;
    }

    v9 = &_mh_execute_header;
    if (!v5)
    {
      v9 = 0;
    }

    v10 = 0x1000000000000;
    if (!v6)
    {
      v10 = 0;
    }

    v11 = v4;
    if (v6)
    {
      v11 = 4;
    }

    sub_1014125EC(v1 + 16, v10 | v9 | v11 | v8);
  }

  else
  {
    v12 = *(v2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = subscriber::asString();
      *buf = 136315138;
      v20 = v14;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not find model %s for registration display status query", buf, 0xCu);
    }

    sub_1014125EC(v1 + 16, 0);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_101509DA4(&v16);
  return sub_1000049E0(&v15);
}

void sub_101509D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_101509DA4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101509DA4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1015096DC(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t *sub_101509E08(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v9);
  if (v9)
  {
    v3 = (*(*v9 + 304))(v9);
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      *buf = 136315138;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for cause code query", buf, 0xCu);
    }

    v3 = 0;
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_100106378(v1 + 16, v3);
  sub_101509F68(&v8);
  return sub_1000049E0(&v7);
}

void sub_101509F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_101509F68(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101509F68(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000FF0B4(v1 + 16);
    operator delete();
  }

  return result;
}

void sub_101509FB8(uint64_t a1@<X0>, MCC *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v8 = 0uLL;
  RegistrationController::getModel_sync(v4, **(v3 + 8), &v8);
  v5 = v8;
  if (v8)
  {
    (*(*v8 + 432))(v8);
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  if (!v5)
  {
    v6 = *(v4 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = subscriber::asString();
      LODWORD(v8) = 136315138;
      *(&v8 + 4) = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model %s for MCC query", &v8, 0xCu);
    }

    MCC::MCC(a2);
  }
}

void sub_10150A100(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v1);
  MCC::operator=();
  if (v2 < 0)
  {
    operator delete(v1[1]);
  }
}

void sub_10150A15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10150A178(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v1);
  MCC::operator=();
  if (v2 < 0)
  {
    operator delete(v1[1]);
  }
}

void sub_10150A1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10150A1F0(uint64_t a1@<X0>, MNC *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v8 = 0uLL;
  RegistrationController::getModel_sync(v4, **(v3 + 8), &v8);
  v5 = v8;
  if (v8)
  {
    (*(*v8 + 440))(v8);
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  if (!v5)
  {
    v6 = *(v4 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = subscriber::asString();
      LODWORD(v8) = 136315138;
      *(&v8 + 4) = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model %s for MNC query", &v8, 0xCu);
    }

    MNC::MNC(a2);
  }
}

void sub_10150A338(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v1);
  MCC::operator=();
  if (v2 < 0)
  {
    operator delete(v1[1]);
  }
}

void sub_10150A394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10150A3B0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v1);
  MCC::operator=();
  if (v2 < 0)
  {
    operator delete(v1[1]);
  }
}

void sub_10150A40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10150A428(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v14 = 0;
  v15 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v14);
  if (v14)
  {
    (*(*v14 + 448))(v11);
    v3 = *(v1 + 40);
    if (!v3)
    {
      sub_100022DB4();
    }

    (*(*v3 + 48))(v3, v11);
    if (v12 < 0)
    {
      v4 = v11;
LABEL_10:
      operator delete(v4[1]);
    }
  }

  else
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = subscriber::asString();
      *buf = 136315138;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find model %s for last known MCC query", buf, 0xCu);
    }

    MCC::MCC(v13);
    v6 = *(v1 + 40);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, v13);
    if ((v13[31] & 0x80000000) != 0)
    {
      v4 = v13;
      goto LABEL_10;
    }
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  sub_10002CC30(&v10);
  return sub_1000049E0(&v9);
}

void sub_10150A5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v26 = *(v24 - 56);
  if (v26)
  {
    sub_100004A34(v26);
  }

  sub_10002CC30(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150A634(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v9);
  if (v9)
  {
    (*(*v9 + 464))(&buf);
    v3 = *(v1 + 40);
    if (!v3)
    {
      sub_100022DB4();
    }
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for serving PLMN query", &buf, 0xCu);
    }

    buf = 0uLL;
    v12 = 0;
    v3 = *(v1 + 40);
    if (!v3)
    {
      sub_100022DB4();
    }
  }

  (*(*v3 + 48))(v3, &buf);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(buf);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10002BA48(&v8);
  return sub_1000049E0(&v7);
}

void sub_10150A7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10002BA48(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150A824(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v9);
  if (v9)
  {
    v3 = (*(*v9 + 472))(v9);
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      *buf = 136315138;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for RAT query", buf, 0xCu);
    }

    v3 = 11;
  }

  sub_101412888(v1 + 16, v3);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10150A978(&v8);
  return sub_1000049E0(&v7);
}

void sub_10150A94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10150A978(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150A978(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10150975C(v1 + 16);
    operator delete();
  }

  return result;
}

void sub_10150A9C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v8 = 0uLL;
  RegistrationController::getModel_sync(v4, *(v3 + 8), &v8);
  v5 = v8;
  if (v8)
  {
    (*(*v8 + 320))(v8);
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  if (!v5)
  {
    v6 = *(v4 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = subscriber::asString();
      LODWORD(v8) = 136315138;
      *(&v8 + 4) = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model %s for operator name query", &v8, 0xCu);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_10150AAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10150AB00(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

uint64_t *sub_10150AB64(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v9);
  if (v9)
  {
    (*(*v9 + 336))(&buf);
    v3 = *(v1 + 40);
    if (!v3)
    {
      sub_100022DB4();
    }
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for operator short name query", &buf, 0xCu);
    }

    buf = 0uLL;
    v12 = 0;
    v3 = *(v1 + 40);
    if (!v3)
    {
      sub_100022DB4();
    }
  }

  (*(*v3 + 48))(v3, &buf);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(buf);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10002BA48(&v8);
  return sub_1000049E0(&v7);
}

void sub_10150AD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10002BA48(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150AD54(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v9);
  if (v9)
  {
    v3 = (*(*v9 + 160))(v9);
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      *buf = 136315138;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for data attached query", buf, 0xCu);
    }

    v3 = 0;
  }

  sub_10000FFD0(v1 + 16, v3);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_100EDCE18(&v8);
  return sub_1000049E0(&v7);
}

void sub_10150AE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100EDCE18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150AEA0(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v10 = 0;
  v11 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v10);
  v3 = v10;
  if (v10)
  {
    if ((*(*v10 + 152))(v10) & 1) != 0 || ((*(*v3 + 248))(v3))
    {
      v4 = 1;
    }

    else
    {
      v4 = (*(*v3 + 216))(v3);
    }
  }

  else
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = subscriber::asString();
      *buf = 136315138;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find model %s for voice service available query", buf, 0xCu);
    }

    v4 = 0;
  }

  sub_10000FFD0(v1 + 16, v4);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100EDCE18(&v9);
  return sub_1000049E0(&v8);
}

void sub_10150B02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100EDCE18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10150B058(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_10150B094(void **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = (*(**(*v1 + 104) + 88))(*(*v1 + 104));
  object = xpc_BOOL_create(v2);
  if (!object)
  {
    object = xpc_null_create();
  }

  v6[0] = v1[1];
  v6[1] = "kRegistrationEmergencyCallBackMode";
  sub_10000F688(v6, &object, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(object);
  sub_100E0B28C(&v5);
  return sub_1000049E0(&v4);
}

void sub_10150B154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100E0B28C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10150B170(unsigned int **a1)
{
  v2 = a1;
  v1 = *a1;
  (*(**(**a1 + 88) + 184))(*(**a1 + 88), v1[2], v1[3], v1[4], v1[5], v1[6], *(**a1 + 1520));
  operator delete();
}

void sub_10150B224(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 88) + 192))(*(**a1 + 88), *(*a1 + 8));
  operator delete();
}

void sub_10150B2CC(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 88) + 200))(*(**a1 + 88), *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

uint64_t sub_10150B378(uint64_t a1)
{
  v1 = *(a1 + 40);
  v7 = 0;
  v8 = 0;
  v2 = *v1;
  RegistrationController::getModel_sync(*v1, **(v1 + 8), &v7);
  if (v7)
  {
    v3 = (*(*v7 + 472))(v7);
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      *buf = 136315138;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for RAT query", buf, 0xCu);
    }

    v3 = 11;
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return v3;
}

void sub_10150B48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10150B4A8(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10150B4E4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

__n128 sub_10150B59C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F46AC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 23) = 0;
  *(a2 + 21) = 0;
  return result;
}

void sub_10150B5D4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_10150B794;
  v6[3] = &unk_101F46B20;
  v10 = *(a1 + 16);
  v11 = *(a1 + 20);
  v6[4] = v4;
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_1001B964C(&__p, v3, v2, (v2 - v3) >> 1);
  v14 = 0;
  v15 = 0;
  sub_100004AA0(&v14, (v4 + 8));
  v5 = *(v4 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v14;
  v13 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    operator delete(v3);
  }
}

void sub_10150B730(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10150B748(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10150B7D0(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Resetting Voice Roaming preference as network settings have been reset", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 136));
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
        goto LABEL_9;
      }

LABEL_14:
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
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_9:
  v14 = *(v2 + 40);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (v15)
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not erase Voice Roaming preference", buf, 2u);
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v13 & 1) == 0)
  {
LABEL_16:
    sub_100004A34(v11);
  }

LABEL_17:
  if (capabilities::ct::supports5G(v15))
  {
    v16 = *(v2 + 64);
    if (v16 != (v2 + 72))
    {
      do
      {
        v17 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v16 + 8));
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Resetting 5G Standalone enabled to carrier default", buf, 2u);
        }

        (*(*v16[5] + 848))(v16[5]);
        RegistrationController::update5GSACapabilityRestProperty_sync(v2, *(v16 + 8));
        v18 = v16[1];
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
            v19 = v16[2];
            v20 = *v19 == v16;
            v16 = v19;
          }

          while (!v20);
        }

        v16 = v19;
      }

      while (v19 != (v2 + 72));
    }
  }

  v21 = *(v2 + 232);
  if (v21)
  {
    (*(*v21 + 88))(v21);
  }

  sub_1000FF844(&v24);
  return sub_1000049E0(&v23);
}

void sub_10150BB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10150BBF0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F46BF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10150BC3C(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  *buf = 0;
  v12 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), buf);
  v3 = *buf;
  if (*buf)
  {
    (*(**buf + 672))(&v9, *buf);
    v4 = (*(*v9 + 64))(v9);
    sub_101412B50(v1 + 16, v4 | &_mh_execute_header);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (!v3)
  {
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not get model for ERI version query", buf, 2u);
    }

    sub_101412B50(v1 + 16, 0);
  }

  sub_10150BDE4(&v8);
  return sub_1000049E0(&v7);
}

void sub_10150BDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10150BDE4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150BDE4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1011CA280(v1 + 16);
    operator delete();
  }

  return result;
}

__n128 sub_10150BEA8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F46C10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10150BED8(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10150C040;
  v5[3] = &unk_101F46C70;
  v5[4] = v3;
  v6 = *(a1 + 8);
  v7 = v2;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (v3 + 8));
  v4 = *(v3 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

uint64_t sub_10150BFF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10150C040(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == *(a1 + 41))
  {
    v4 = v2[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "false";
      if (v3)
      {
        v5 = "true";
      }

      v7[0] = 67109378;
      v7[1] = v3;
      v8 = 2080;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Current provisioning state %x matches requested %s, ignoring it", v7, 0x12u);
    }
  }

  else
  {
    v6 = *(*v2 + 328);

    v6();
  }
}

uint64_t sub_10150C1DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F46CB0;
  a2[1] = v2;
  return result;
}

void sub_10150C208(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10150C368;
  v5[3] = &unk_101F46D10;
  v5[4] = v3;
  v6 = v2;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (v3 + 8));
  v4 = *(v3 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

uint64_t sub_10150C31C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10150C39C(int **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  (*(**(*v1 + 232) + 96))(*(*v1 + 232), v1[2]);
  v8 = 0;
  v9 = 0;
  RegistrationController::getModel_sync(v2, v1[2], &v8);
  if (v8)
  {
    v3 = v9;
    v7[0] = v8;
    v7[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RegistrationController::reevaluateNetworkScan_sync(v2, v7);
    if (v3)
    {
      sub_100004A34(v3);
LABEL_7:
      sub_100004A34(v3);
    }
  }

  else
  {
    v3 = v9;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  sub_100022FB0((v1 + 4), 0);
  sub_10150C4B4(&v6);
  return sub_1000049E0(&v5);
}

void sub_10150C47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  sub_10150C4B4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150C4B4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100014380(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t *sub_10150C504(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = *(*v1 + 232);
  if (v3 && (*(*v3 + 72))(v3, *(v1 + 8)))
  {
    (*(**(v2 + 232) + 56))(&buf);
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

LABEL_31:
    (*(*v4 + 48))(v4, &buf);
    if (SBYTE7(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(*(&v32 + 1));
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(*(&v30 + 1));
    }

    if (SBYTE7(v29) < 0)
    {
      operator delete(buf);
    }

    goto LABEL_53;
  }

  v5 = *(v2 + 184);
  if (!v5)
  {
    v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "NAISelector not configured for selected network query", &buf, 2u);
    }

    NetworkListOperator::NetworkListOperator(&buf);
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

    goto LABEL_31;
  }

  v26 = 0;
  v27 = 0;
  (*(*v5 + 16))(&v26);
  if (v26)
  {
    v24[0] = 0;
    v24[1] = 0;
    v25 = 0;
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    (*(*v26 + 40))(v26, v24, v22);
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    buf = 0u;
    v29 = 0u;
    NetworkListOperator::NetworkListOperator(&buf);
    NetworkListOperator::setName();
    NetworkListOperator::decodeKey();
    sub_100F4B020(__dst, &buf);
    v6 = *(v1 + 40);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, __dst);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SBYTE7(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(*(&v32 + 1));
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(*(&v30 + 1));
    }

    if (SBYTE7(v29) < 0)
    {
      operator delete(buf);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    v7 = v24[0];
  }

  else
  {
    v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Request for selected network not supported", &buf, 2u);
    }

    NetworkListOperator::NetworkListOperator(&buf);
    v10 = *(v1 + 40);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, &buf);
    if (SBYTE7(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(*(&v32 + 1));
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(*(&v30 + 1));
    }

    if ((SBYTE7(v29) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    v7 = buf;
  }

  operator delete(v7);
LABEL_51:
  if (v27)
  {
    sub_100004A34(v27);
  }

LABEL_53:
  sub_10150CA10(&v13);
  return sub_1000049E0(&v12);
}

void sub_10150C96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  v44 = *(v42 - 184);
  if (v44)
  {
    sub_100004A34(v44);
  }

  sub_10150CA10(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150CA10(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1015097DC(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t *sub_10150CA60(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(*v1 + 232);
  if (v3 && (*(*v3 + 72))(v3, *(v1 + 8)))
  {
    (*(**(v2 + 232) + 64))(buf);
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

LABEL_30:
    (*(*v4 + 48))(v4, buf);
    v29 = buf;
    sub_100F4B580(&v29);
    goto LABEL_35;
  }

  v5 = *(v2 + 184);
  if (!v5)
  {
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "NAISelector not configured for network list query", buf, 2u);
    }

    memset(buf, 0, sizeof(buf));
    *&v17 = 0;
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

    goto LABEL_30;
  }

  v32 = 0;
  v33 = 0;
  (*(*v5 + 16))(&v32);
  if (v32)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v6 = (*(*v32 + 24))(v32);
    if (v6)
    {
      v7 = 0;
      do
      {
        v27[0] = 0;
        v27[1] = 0;
        v28 = 0;
        v25[0] = 0;
        v25[1] = 0;
        v26 = 0;
        (*(*v32 + 32))(v32, v7, v27, v25);
        v24 = 0;
        *__p = 0u;
        v23 = 0u;
        *v20 = 0u;
        v21 = 0u;
        *v18 = 0u;
        v19 = 0u;
        *buf = 0u;
        v17 = 0u;
        NetworkListOperator::NetworkListOperator(buf);
        NetworkListOperator::setName();
        NetworkListOperator::decodeKey();
        v8 = v30;
        if (v30 >= v31)
        {
          v9 = sub_100F4AEF0(&v29, buf);
        }

        else
        {
          sub_100F4B020(v30, buf);
          v9 = v8 + 136;
        }

        v30 = v9;
        if (SBYTE7(v23) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20[1]);
        }

        if (SHIBYTE(v19) < 0)
        {
          operator delete(v18[1]);
        }

        if (SBYTE7(v17) < 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27[0]);
        }

        v7 = (v7 + 1);
      }

      while (v6 != v7);
    }

    memset(buf, 0, sizeof(buf));
    *&v17 = 0;
    sub_100F4B410(buf, v29, v30, 0xF0F0F0F0F0F0F0F1 * ((v30 - v29) >> 3));
    v10 = *(v1 + 40);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, buf);
    v27[0] = buf;
    sub_100F4B580(v27);
    v27[0] = &v29;
    sub_100F4B580(v27);
  }

  else
  {
    v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Request for network list not supported", buf, 2u);
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

LABEL_35:
  sub_10150CF64(&v15);
  return sub_1000049E0(&v14);
}

void sub_10150CEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 - 56);
  if (v12)
  {
    sub_100004A34(v12);
  }

  sub_10150CF64(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150CF64(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10150985C(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t *sub_10150CFB4(unsigned int **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 232);
  if (v3 && (*(*v3 + 72))(v3, v1[2]))
  {
    v4 = (*(**(v2 + 232) + 40))(*(v2 + 232), v1[2]);
  }

  else
  {
    v5 = *(v2 + 184);
    if (v5)
    {
      *buf = 0;
      v11 = 0;
      (*(*v5 + 16))(buf);
      if ((*(**buf + 96))(*buf))
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      if (v11)
      {
        sub_100004A34(v11);
      }
    }

    else
    {
      v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v4 = 2;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "NAISelector not configured for network selection mode query", buf, 2u);
      }

      else
      {
        v4 = 2;
      }
    }
  }

  sub_101412BB0((v1 + 4), v4);
  sub_10150D190(&v9);
  return sub_1000049E0(&v8);
}

void sub_10150D160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10150D190(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150D190(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1015098DC(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t *sub_10150D1E0(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  *buf = 0;
  v18 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), buf);
  v3 = *buf;
  if (*buf)
  {
    v4 = *(v2 + 232);
    if (v4 && (*(*v4 + 72))(v4, *(v1 + 8)))
    {
      v5 = *(v2 + 232);
      v6 = *(v1 + 8);
      (*(*v3 + 464))(&__p, v3);
      v7 = (*(*v5 + 104))(v5, v6, &__p);
      if (v16 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v8 = *(v2 + 184);
      if (v8)
      {
        __p = 0;
        v15 = 0;
        (*(*v8 + 16))(&__p);
        if ((*(*__p + 96))(__p))
        {
          v7 = (*(*__p + 64))(__p);
        }

        else
        {
          v7 = 0;
        }

        if (v15)
        {
          sub_100004A34(v15);
        }
      }

      else
      {
        v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p) = 0;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "NAISelector not configured for network selection state query", &__p, 2u);
        }

        v7 = 0;
      }
    }

    sub_101412C10(v1 + 16, v7);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (!v3)
  {
    v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not get model for network selection state query", buf, 2u);
    }

    sub_101412C10(v1 + 16, 0);
  }

  sub_10150D514(&v13);
  return sub_1000049E0(&v12);
}

void sub_10150D4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_10150D514(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150D514(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10150995C(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t *sub_10150D564(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v36 = 0u;
  memset(v37, 0, 24);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  NetworkListOperator::NetworkListOperator(&v30);
  v28 = 0;
  v29 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v28);
  v3 = v28;
  if (v28)
  {
    v4 = *(v2 + 232);
    if (v4 && (*(*v4 + 72))(v4, *(v1 + 8)))
    {
      v5 = *(v2 + 232);
      v6 = *(v1 + 8);
      (*(*v3 + 464))(__p, v3);
      v7 = (*(*v5 + 104))(v5, v6, __p);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }

      v8 = (*(**(v2 + 232) + 40))(*(v2 + 232), *(v1 + 8));
      (*(**(v2 + 232) + 56))(buf);
      if (SBYTE7(v31) < 0)
      {
        operator delete(v30);
      }

      v30 = *buf;
      *&v31 = v17;
      HIBYTE(v17) = 0;
      buf[0] = 0;
      DWORD2(v31) = v18;
      MCC::operator=();
      MCC::operator=();
      if (SBYTE7(v37[0]) < 0)
      {
        operator delete(v36);
      }

      v36 = *v23;
      *&v37[0] = v24;
      HIBYTE(v24) = 0;
      LOBYTE(v23[0]) = 0;
      *(v37 + 8) = v25;
      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      (*(**(v2 + 184) + 16))(&v14);
      if ((*(*v14 + 96))(v14))
      {
        v7 = (*(*v14 + 64))(v14);
        memset(buf, 0, sizeof(buf));
        v17 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v27 = 0;
        (*(*v14 + 40))(v14, buf, __p);
        NetworkListOperator::setName();
        NetworkListOperator::decodeKey();
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(*buf);
        }

        v8 = 1;
      }

      else
      {
        v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v8 = 2;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Neither manual selection or NAI is supported", buf, 2u);
          v7 = 0;
        }

        else
        {
          v7 = 0;
          v8 = 2;
        }
      }

      if (v15)
      {
        sub_100004A34(v15);
      }
    }
  }

  else
  {
    v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = 2;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not get model for network selection info query", buf, 2u);
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 2;
    }
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  sub_100F4B020(buf, &v30);
  sub_101412CFC(v1 + 16, v7, v8);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(*buf);
  }

  if (SBYTE7(v37[0]) < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(*(&v34 + 1));
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(*(&v32 + 1));
  }

  if (SBYTE7(v31) < 0)
  {
    operator delete(v30);
  }

  sub_10150DB3C(&v13);
  return sub_1000049E0(&v12);
}

void sub_10150DA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (a40)
  {
    sub_100004A34(a40);
  }

  sub_100F4B3AC(v40 - 192);
  sub_10150DB3C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150DB3C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1015099DC(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t *sub_10150DB8C(unsigned int **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 232);
  if (v3 && (*(*v3 + 72))(v3, v1[2]))
  {
    v4 = (*(**(v2 + 232) + 128))(*(v2 + 232), v1[2]);
  }

  else
  {
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    v4 = 0;
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Network selection is not enabled, assuming reselection is not needed", buf, 2u);
      v4 = 0;
    }
  }

  sub_10000FFD0((v1 + 4), v4);
  sub_100EDCE18(&v9);
  return sub_1000049E0(&v8);
}

void sub_10150DCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100EDCE18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150DCC8(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  v2 = *v1;
  v3 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  v4 = sub_1015084AC(v2, *(v1 + 8));
  v5 = *v3;
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = (v1 + 48);
      if (*(v1 + 71) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Selecting network with code %s", buf, 0xCu);
    }

    v8 = *(v2 + 232);
    v9 = *(v1 + 8);
    if (v8)
    {
      v10 = (*(*v8 + 72))(v8, *(v1 + 8));
      v9 = *(v1 + 8);
      v11 = v1 + 48;
      v12 = *(v1 + 71);
      if (v10)
      {
        v13 = *(v2 + 232);
        if (v12 < 0)
        {
          sub_100005F2C(buf, *(v1 + 48), *(v1 + 56));
        }

        else
        {
          *buf = *v11;
          v20 = *(v1 + 64);
        }

        (*(*v13 + 112))(v13, v9, buf);
LABEL_20:
        if (SHIBYTE(v20) < 0)
        {
          operator delete(*buf);
        }

        v14 = 0;
        goto LABEL_23;
      }

      v15 = *(v2 + 264);
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = *(v2 + 264);
      if ((*(v1 + 71) & 0x80000000) == 0)
      {
        v11 = v1 + 48;
LABEL_15:
        *buf = *v11;
        v20 = *(v11 + 16);
LABEL_17:
        (*(*v15 + 376))(v15, v9, buf, "due NAI selection");
        goto LABEL_20;
      }
    }

    sub_100005F2C(buf, *(v1 + 48), *(v1 + 56));
    goto LABEL_17;
  }

  v14 = 0x2D00000001;
  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Network selection is not supported", buf, 2u);
  }

LABEL_23:
  sub_100022FB0(v1 + 16, v14);
  sub_10150DF8C(&v18);
  return sub_1000049E0(&v17);
}

void sub_10150DF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_10150DF8C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150DF8C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    sub_100014380(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t *sub_10150DFFC(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = sub_1015084AC(*v1, *(v1 + 40));
  sub_10000FFD0(v1 + 8, v2);
  sub_10150E06C(&v5);
  return sub_1000049E0(&v4);
}

void sub_10150E050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10150E06C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150E06C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_10150E0BC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10150E13C(int **a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), v1[2]);
  if (capabilities::ct::supportsSecurityStatus(v3))
  {
    v14 = 0;
    v15 = 0;
    RegistrationController::getModel_sync(v2, v1[2], &v14);
    if (v14)
    {
      v4 = (*(*v14 + 792))(v14);
      v5 = std::generic_category();
      v6 = 0;
      v7 = v4;
    }

    else
    {
      v9 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not find model when getting encryption status", buf, 2u);
      }

      v6 = 22;
      v5 = std::generic_category();
      v7 = 0;
    }

    sub_101412F38((v1 + 4), v7, v6, v5);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else
  {
    v8 = std::generic_category();
    sub_101412F38((v1 + 4), 0, 45, v8);
  }

  sub_10150E2D0(&v12);
  return sub_1000049E0(&v11);
}

void sub_10150E2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10150E2D0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150E2D0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_101509A5C(v1 + 16);
    operator delete();
  }

  return result;
}

__n128 sub_10150E330(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  result = v4;
  v2[1].n128_u32[0] = v5;
  *v2 = result;
  return result;
}

__n128 sub_10150E384(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  result = v4;
  v2[1].n128_u32[0] = v5;
  *v2 = result;
  return result;
}

uint64_t sub_10150E3D8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 8);
  **v1 = 0;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), **(v1 + 16));
  v18 = 0;
  v19 = 0;
  Model_sync = RegistrationController::getModel_sync(v2, **(v1 + 16), &v18);
  v5 = v18;
  if (!v18)
  {
    v13 = *v3;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find model when checking 5G Standalone support", v17, 2u);
    }

    v12 = 0x1600000000;
    goto LABEL_21;
  }

  if ((capabilities::ct::supports5G(Model_sync) & 1) == 0 || ((*(*v5 + 816))(v5) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!RegistrationController::supports5GNSA_sync(v2))
  {
    v14 = (*(*v5 + 840))(v5);
    **v1 = v14 & ((v14 & 0x100) >> 8);
    goto LABEL_20;
  }

  v6 = *(v2 + 928);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v2 + 928;
  v8 = **(v1 + 16);
  v9 = v2 + 928;
  do
  {
    if (*(v6 + 28) >= v8)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < v8));
  }

  while (v6);
  if (v9 == v7 || v8 < *(v9 + 28))
  {
    goto LABEL_12;
  }

  if (NRDisableStatus::isSADisabledWithReason())
  {
LABEL_20:
    v12 = 0x2D00000000;
LABEL_21:
    v15 = 1;
    goto LABEL_22;
  }

  if (NRDisableStatus::isSADisabledWithReason() & 1) != 0 || (NRDisableStatus::isSADisabledWithReason() & 1) != 0 || (NRDisableStatus::isSADisabledWithReason())
  {
    v12 = 0;
    v15 = 0;
    goto LABEL_22;
  }

  v5 = v18;
LABEL_12:
  v10 = (*(*v5 + 840))(v5);
  if ((v10 & 0x100) == 0)
  {
    v11 = *v3;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone support not yet known", v17, 2u);
    }

    v12 = 0x2300000000;
    goto LABEL_21;
  }

  v12 = 0;
  v15 = 0;
  **v1 = v10;
LABEL_22:
  if (v19)
  {
    sub_100004A34(v19);
  }

  return v15 | v12;
}

void sub_10150E680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10150E6A8(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10150E6E4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10150E720(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), **(v1 + 8));
  v15 = 0;
  v16 = 0;
  Model_sync = RegistrationController::getModel_sync(v2, **(v1 + 8), &v15);
  v5 = v15;
  if (v15)
  {
    if (capabilities::ct::supports5G(Model_sync) & 1) != 0 && ((*(*v5 + 816))(v5))
    {
      v6 = *(v2 + 116);
      if (!v6)
      {
        goto LABEL_11;
      }

      v7 = **(v1 + 8);
      v8 = (v2 + 928);
      do
      {
        if (*(v6 + 28) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 28) < v7));
      }

      while (v6);
      if (v8 == (v2 + 928) || v7 < *(v8 + 7))
      {
        goto LABEL_11;
      }

      if ((NRDisableStatus::isSADisabledWithReason() & 1) == 0 && (NRDisableStatus::isSADisabledWithReason() & 1) == 0 && (NRDisableStatus::isSADisabledWithReason() & 1) == 0 && (NRDisableStatus::isSADisabledWithReason() & 1) == 0)
      {
        v5 = v15;
LABEL_11:
        (*(*v5 + 808))(v5, **(v1 + 16));
        v9 = **(v1 + 8);
        v10 = **(v1 + 16);
        *buf = _NSConcreteStackBlock;
        v18 = 0x40000000;
        v19 = sub_100F7FAE4;
        v20 = &unk_101EF75F0;
        v21 = v2;
        v23 = v10;
        v22 = v9;
        sub_100F7F938(0x8012B);
        RegistrationController::send5GStandaloneEnabledSettingFromPreference_sync(v2, **(v1 + 8), 1);
        RegistrationController::update5GSACapabilityRestProperty_sync(v2, **(v1 + 8));
        v11 = 0;
        v12 = 0;
        goto LABEL_21;
      }
    }

    v11 = 0x2D00000000;
  }

  else
  {
    v13 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find model when setting 5G Standalone support", buf, 2u);
    }

    v11 = 0x1600000000;
  }

  v12 = 1;
LABEL_21:
  if (v16)
  {
    sub_100004A34(v16);
  }

  return v12 | v11;
}

void sub_10150E9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10150E9C8(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  (*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  (*(**(v2 + 88) + 280))(*(v2 + 88), *(v1 + 8), v1 + 16, *(v1 + 40), *(v1 + 44));
  sub_10150EA90(&v5);
  return sub_1000049E0(&v4);
}

void sub_10150EA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10150EA90(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150EA90(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      *(v1 + 24) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10150EAE8(unsigned int **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  (*(**(*v1 + 48) + 16))(*(*v1 + 48), v1[2]);
  ImsStateForBaseband_sync = RegistrationController::getImsStateForBaseband_sync(v2, v1[2]);
  VoNRStateForBaseband_sync = RegistrationController::getVoNRStateForBaseband_sync(v2, v1[2]);
  sub_1014126F0((v1 + 4), ImsStateForBaseband_sync, VoNRStateForBaseband_sync);
  sub_10150EBA4(&v7);
  return sub_1000049E0(&v6);
}

void sub_10150EB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10150EBA4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150EBA4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100EBC06C(v1 + 16);
    operator delete();
  }

  return result;
}

void sub_10150EBF4(unsigned int **a1)
{
  v1 = a1;
  RegistrationController::updateVoNRStateForSlot_sync(*(*a1 + 1), **a1, (*a1)[1]);
  operator delete();
}

void sub_10150EC78(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 88) + 288))(*(**a1 + 88), *(*a1 + 8), *a1 + 12);
  operator delete();
}

void sub_10150ED2C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  v18 = 0;
  v19 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 2), &v18);
  v4 = v18;
  if (v18)
  {
    VoNRStateForBaseband_sync = RegistrationController::getVoNRStateForBaseband_sync(v2, *(v1 + 2));
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asString();
      *buf = 136315138;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Current VoNR support state = %s", buf, 0xCu);
    }

    v8 = *(*v4 + 960);
    if (*(v1 + 12) == 1)
    {
      if ((v8(v4) & 1) == 0)
      {
        v9 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Enabling dynamic VoNR for emergency mode. No change to VoNR is allowed when dynamic VoNR is ON", buf, 2u);
        }

        (*(*v4 + 968))(v4, 1);
      }

      if (VoNRStateForBaseband_sync != 1)
      {
        v10 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I VoNR state was not kFullSupport. Sending VoNR = on to BB!", buf, 2u);
        }

        VoNRStateForBaseband_sync = 1;
LABEL_13:
        RegistrationController::updateVoNRStateForSlot_sync(v2, *(v1 + 2), VoNRStateForBaseband_sync);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v14 = v8(v4);
    v15 = *v3;
    if (v14)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Dynamic VoNR was enabled. Resetting it...", buf, 2u);
      }

      (*(*v4 + 968))(v4, 0);
      if (VoNRStateForBaseband_sync != 1)
      {
        v16 = *v3;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = asString();
          *buf = 136315138;
          v21 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I User intended VoNR support state was not 'ON', reporting VoNR state as %s to baseband", buf, 0xCu);
        }

        goto LABEL_13;
      }

LABEL_23:
      if (v19)
      {
        sub_100004A34(v19);
      }

      operator delete();
    }

    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v12 = "Trying to disable dynamic VoNR but it was not enabled";
    v13 = v15;
  }

  else
  {
    v11 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v12 = "Did not find Registration Model!";
    v13 = v11;
  }

  _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, 2u);
  goto LABEL_23;
}

void sub_10150F0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void STK_Controller::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t sub_10150F918(uint64_t a1)
{
  *a1 = off_101F470D8;
  v2 = (a1 + 56);
  *(a1 + 56) = off_101F471F8;
  v3 = *(a1 + 328);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1000FEFCC((a1 + 296));
  sub_1002B73A8(a1 + 272, *(a1 + 280));
  sub_1008F08B0(a1 + 248, *(a1 + 256));
  sub_100359978(a1 + 224, *(a1 + 232));
  sub_10006DCAC(a1 + 200, *(a1 + 208));
  sub_1000D6F38(a1 + 152);
  v4 = *(a1 + 136);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100D92208(*(a1 + 112));
  v5 = *(a1 + 96);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    sub_100004A34(v7);
  }

  STKStateModelDelegateInterface::~STKStateModelDelegateInterface(v2);
  v8 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  STK_Interface::~STK_Interface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10150FA7C(uint64_t a1)
{
  sub_10150F918(a1);

  operator delete();
}

void sub_10150FAB4(uint64_t a1)
{
  sub_10150F918(a1 - 56);

  operator delete();
}

void sub_10150FAF0(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v14 = 0;
  v15 = 0;
  STK_Controller::getStateModel_sync(a1, a2, &v14);
  v5 = v14;
  v6 = *v4;
  v7 = *v4;
  if (v14)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I There has been a SIM Refresh, sending out Idle Text Wipe event", buf, 2u);
    }

    v10 = 0;
    v9[1] = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v19 = 0;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v8 = *v5;
    *buf = 12;
    (*(v8 + 40))(v5, buf);
    sub_100D38A2C(buf);
    SetupIdleText::~SetupIdleText(v9);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find state model upon SIM refresh event", buf, 2u);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_10150FCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, int a17)
{
  sub_100D38A2C(&a17);
  SetupIdleText::~SetupIdleText(&a9);
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10150FCE4(uint64_t a1, const void **a2)
{
  v3 = (a1 + 152);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(a1 + 175);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 160);
  }

  if (v5 != v6 || (v4 >= 0 ? (v8 = a2) : (v8 = *a2), v7 >= 0 ? (v9 = v3) : (v9 = *v3), result = memcmp(v8, v9, v5), result))
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v3;
      if (v7 < 0)
      {
        v12 = *v3;
      }

      *buf = 136446210;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Language has changed to %{public}s", buf, 0xCu);
      LOBYTE(v7) = *(a1 + 175);
    }

    if ((v7 & 0x80) != 0)
    {
      v3 = *v3;
    }

    sub_10000501C(__p, v3);
    (*(*a1 + 120))(a1, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    result = *(a1 + 320);
    if (result)
    {
      return (*(*result + 24))(result, a1 + 176);
    }
  }

  return result;
}

void sub_10150FE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10150FE90(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 216))
  {
    v4 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v5 = *(a1 + 200);
    while (1)
    {
      v6 = *(v4 + 7) == *(v5 + 7) && *(v4 + 8) == *(v5 + 8);
      if (!v6)
      {
        break;
      }

      v7 = v4[1];
      v8 = v4;
      if (v7)
      {
        do
        {
          v4 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v4 = v8[2];
          v6 = *v4 == v8;
          v8 = v4;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v4 == a2 + 1)
      {
        return;
      }
    }
  }

  sub_101510A20(a1);
  v11 = *(a1 + 104);
  if (v11 != (a1 + 112))
  {
    v12 = a2 + 1;
    v13 = (a1 + 208);
    do
    {
      v14 = *v12;
        ;
      }

        ;
      }

      v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), i);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = asString();
        v19 = asString();
        *buf = 136315394;
        v23 = v18;
        v24 = 2080;
        v25 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I RAT has changed from %s to %s", buf, 0x16u);
      }

      v20 = v11[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v11[2];
          v6 = *v21 == v11;
          v11 = v21;
        }

        while (!v6);
      }

      v11 = v21;
    }

    while (v21 != (a1 + 112));
  }
}

void sub_101510138(uint64_t a1, uint64_t a2)
{
  sub_101510A20(a1);
  v4 = *(a1 + 224);
  if (v4 != (a1 + 232))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v4 + 8);
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
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_12;
      }

      if ((BasicSimInfo::operator==() & 1) == 0)
      {
        break;
      }

LABEL_13:
      v9 = v4[1];
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
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
      if (v10 == (a1 + 232))
      {
        return;
      }
    }

    v7 = *(v4 + 8);
LABEL_12:
    sub_101515B28(a1, v7, (v4 + 5));
    goto LABEL_13;
  }
}

void sub_101510210(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  v3 = (a1 + 256);
  if (v2 != (a1 + 256))
  {
    v5 = (a2 + 8);
    v35 = a1 + 280;
    while (1)
    {
      v39 = 0;
      v40 = 0;
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
        break;
      }

      v14 = v12[3];
      v13 = v12[4];
      if (!v13)
      {
        goto LABEL_10;
      }

      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
LABEL_11:
      (**v14)(&v39, v14, (v2 + 4));
      if ((v15 & 1) == 0)
      {
        sub_100004A34(v13);
      }

      if (v39 && !*(v39 + 49))
      {
        v20 = *(v39 + 52);
        v21 = *v5;
        if (!*v5)
        {
          goto LABEL_34;
        }

        v22 = v5;
        do
        {
          v23 = sub_1000068BC(v21 + 4, v2 + 4);
          if ((v23 & 0x80u) == 0)
          {
            v22 = v21;
          }

          v21 = *(v21 + ((v23 >> 4) & 8));
        }

        while (v21);
        if (v22 == v5 || (sub_1000068BC(v2 + 4, v22 + 4) & 0x80) != 0)
        {
LABEL_34:
          v22 = v5;
        }

        v24 = (*(**(a1 + 48) + 16))(*(a1 + 48), v20);
        v25 = v24;
        if (v5 == v22 || (v27 = v2[7], v26 = v2[8], v29 = v22 + 7, v28 = v22[7], v26 - v27 != v29[1] - v28))
        {
LABEL_40:
          if (*(a1 + 288) && capabilities::ct::supportsSTKSendIMSRegEvent(v24))
          {
            v30 = sub_100007A6C(a1 + 272, (v39 + 24));
            if (v35 == v30 || *(v30 + 176) == *(v30 + 184))
            {
              v34 = *v25;
              if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I impu absent in ims_info_ready", buf, 2u);
              }
            }

            else
            {
              *buf = 0;
              v37 = 0;
              v38 = 0;
              v32 = v2[7];
              v31 = v2[8];
              while (v32 != v31)
              {
                if (*(v32 + 6) == 2)
                {
                  sub_100005308(buf, v32);
                }

                v32 += 2;
              }

              (*(*a1 + 136))(a1, v20, buf, 200, 0);
              v41 = buf;
              sub_1000087B4(&v41);
            }
          }

          v16 = 0;
        }

        else
        {
          while (v27 != v26)
          {
            v24 = sub_100C1C784(v27, v28);
            if (!v24)
            {
              goto LABEL_40;
            }

            v27 += 32;
            v28 += 4;
          }

          v33 = *v25;
          if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I No change in IMS reg identities", buf, 2u);
          }

          v16 = 1;
        }
      }

      else
      {
        v16 = 3;
      }

      if (v40)
      {
        sub_100004A34(v40);
      }

      if (v16 == 3 || !v16)
      {
        v17 = v2[1];
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
            v18 = v2[2];
            v19 = *v18 == v2;
            v2 = v18;
          }

          while (!v19);
        }

        v2 = v18;
        if (v18 != v3)
        {
          continue;
        }
      }

      return;
    }

    v14 = 0;
LABEL_10:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_11;
  }
}

void sub_1015105BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void **a16)
{
  a16 = &a11;
  sub_1000087B4(&a16);
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(a1);
}

void sub_101510600()
{
  if (v0)
  {
    JUMPOUT(0x1015105F4);
  }

  JUMPOUT(0x1015105ECLL);
}

void sub_10151060C(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

uint64_t STK_Controller::createSTKSimSlotInfo_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 232);
  v2 = a1 + 232;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    v6 = *(v5 + 44);
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

  return v6 | (a2 << 32);
}

unint64_t sub_10151074C(uint64_t a1, unint64_t a2)
{
  result = HIDWORD(a2);
  if (!HIDWORD(a2))
  {
    v4 = *(a1 + 224);
    v5 = (a1 + 232);
    if (v4 != v5)
    {
      while (*(v4 + 11) != a2)
      {
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
        if (v7 == v5)
        {
          return 0;
        }
      }
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 8);
    }
  }

  return result;
}

uint64_t STK_Controller::shouldAllowSTK_sync(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = *(a1 + 232);
  if (v5)
  {
    v6 = a1 + 232;
    do
    {
      if (*(v5 + 32) >= a2)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < a2));
    }

    while (v5);
    if (v6 != a1 + 232 && *(v6 + 32) <= a2)
    {
      v22 = *(v6 + 56);
      v21 = *(v6 + 64);
      while (v22 != v21)
      {
        if ((*v22 - 3) <= 1)
        {
          v23 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v25) = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I The SIM is a 1x SIM, handling STK", &v25, 2u);
          }

          return 1;
        }

        ++v22;
      }
    }
  }

  v9 = *(a1 + 208);
  v8 = a1 + 208;
  v7 = v9;
  if (!v9)
  {
    goto LABEL_30;
  }

  v10 = v8;
  do
  {
    if (*(v7 + 28) >= a2)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 28) < a2));
  }

  while (v7);
  if (v10 == v8)
  {
LABEL_30:
    v11 = 1;
    goto LABEL_31;
  }

  v11 = 1;
  if (*(v10 + 28) > a2)
  {
LABEL_31:
    v19 = 1;
    return v19 | v11;
  }

  v12 = *(v10 + 32);
  v11 = v12 - 6 < 0xFFFFFFFD && v12 != 8;
  if (v12 <= 8 && ((1 << v12) & 0x138) != 0)
  {
    v14 = *v4;
    if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    LOWORD(v25) = 0;
    v15 = "#I The device is on CDMA mode, STK is not valid in this state. Suppressing STK events";
    v16 = v14;
    v17 = 2;
    goto LABEL_24;
  }

  v24 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315138;
    v26 = asString();
    v15 = "#I Handling STK API as current RAT is %s";
    v16 = v24;
    v17 = 12;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v25, v17);
  }

LABEL_25:
  if (v12 > 8 || ((1 << v12) & 0x138) == 0)
  {
    goto LABEL_31;
  }

  v19 = 0;
  return v19 | v11;
}

uint64_t sub_101510A20(uint64_t result)
{
  v1 = *(result + 104);
  v2 = (result + 112);
  if (v1 != (result + 112))
  {
    v3 = result;
    do
    {
      v4 = v1[5];
      shouldAllowSTK_sync = STK_Controller::shouldAllowSTK_sync(v3, *(v1 + 8));
      result = (*(*v4 + 80))(v4, shouldAllowSTK_sync);
      v6 = v1[1];
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
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
    }

    while (v7 != v2);
  }

  return result;
}

uint64_t STK_Controller::validateState(uint64_t a1, int a2, int a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v17 = 0;
  v18 = 0;
  STK_Controller::getStateModel_sync(a1, a2, &v17);
  if (v17)
  {
    (*(*v17 + 152))(buf);
    v7 = *buf ^ (*buf >> 31);
    if (v7 >= 0x1A)
    {
      sub_100100ED4();
    }

    v8 = dword_101982008[v7];
    v9 = sub_100D38A2C(buf);
    if (v8 == a3)
    {
      if (*(a1 + 144) != 2 || (capabilities::ct::defaultVinylCardTypeToGSMA(v9) & 1) != 0)
      {
        v10 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        v15 = asString();
        *buf = 136315394;
        v20 = v14;
        v21 = 2080;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Current state's command %s does not match with given %s", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v12 = asString();
      *buf = 136315138;
      v20 = v12;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not find state model when validating state: %s", buf, 0xCu);
    }
  }

  v10 = 0;
LABEL_12:
  if (v18)
  {
    sub_100004A34(v18);
  }

  return v10;
}

void sub_101510CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t STK_Controller::getStateModel_sync@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 112);
  result = a1 + 112;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = result;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 != result && *(v6 + 32) <= a2)
  {
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    *a3 = v8;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
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

void sub_101510D58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v2);
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t STK_Controller::getCurrentAccessTechnology_sync(uint64_t a1, int a2)
{
  v4 = *(a1 + 208);
  v2 = a1 + 208;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 28) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < a2));
  }

  while (v3);
  if (v5 == v2)
  {
    return 0;
  }

  if (*(v5 + 28) > a2)
  {
    return 0;
  }

  v6 = *(v5 + 32);
  if (v6 > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_101981FDC[v6];
  }
}

void sub_101510E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

uint64_t sub_101510F94(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = a3[4];
  v6 = *(a1 + 88);
  v7 = (*(**a2 + 32))();
  STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v7);
  v9 = *a3;
  v10 = *(a3 + 4);
  v11 = a3[2];
  v12 = a3[3];
  if (v5 == -1)
  {
    v17 = a3[5];
    v18 = *(*v6 + 40);

    return v18(v6, STKSimSlotInfo_sync, v9, v10, v11, v12, v17);
  }

  else
  {
    v13 = a3[4];
    v14 = a3[5];
    v15 = *(*v6 + 48);

    return v15(v6, STKSimSlotInfo_sync, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_10151109C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v7 = *(a1 + 88);
  v8 = (*(**a2 + 32))();
  STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v8);
  v10 = *a3;
  v11 = *(a3 + 4);
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[5];
  v15 = *(*v7 + 64);

  return v15(v7, STKSimSlotInfo_sync, v10, v11, v12, v13, a4, v14);
}

uint64_t sub_101511158(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 88);
  v10 = (*(**a2 + 32))();
  STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v10);
  return (*(*v9 + 56))(v9, STKSimSlotInfo_sync, *a3, *(a3 + 4), a3[2], a3[3], a4, a5, a3[5]);
}

uint64_t sub_101511224(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v9 = 0;
  v5 = *(a1 + 88);
  v6 = (*(**a2 + 32))();
  STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v6);
  return (*(*v5 + 160))(v5, STKSimSlotInfo_sync, 0, &v9, *a3, *(a3 + 4), a3[2], a3[3], a3[5]);
}

uint64_t sub_1015112E4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v10 = 0;
  v9 = a3[3] < 2;
  v5 = *(a1 + 88);
  v6 = (*(**a2 + 32))();
  STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v6);
  return (*(*v5 + 160))(v5, STKSimSlotInfo_sync, &v9, &v10, *a3, *(a3 + 4), a3[2], a3[3], a3[5]);
}

void *sub_1015113B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(**a2 + 56))(v12);
  if (v13)
  {
    SetupMenu::~SetupMenu(v12);
    v9 = *(a1 + 88);
    v10 = (*(**a2 + 32))();
    STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v10);
    return (*(*v9 + 72))(v9, STKSimSlotInfo_sync, a3, a4);
  }

  return result;
}

uint64_t sub_1015114A8(uint64_t a1)
{
  v2 = sub_1009FC5C8(71);
  if ((v2 & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Terminal is busy: No clients registered for STK notifications", v5, 2u);
    }
  }

  return v2 ^ 1u;
}

void sub_10151152C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101511580(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015115C0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1015115EC(ServiceManager::Service *this)
{
  *this = off_101F47390;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101511648(ServiceManager::Service *this)
{
  *this = off_101F47390;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1015116C8@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10151170C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    sub_10151060C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10151060C(v4, 0);
}

void sub_10151179C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

uint64_t sub_101511878(uint64_t result, int a2, ServiceStage *this)
{
  if (a2 == 3)
  {
    v3 = *(result + 8);
    ServiceStage::holdOffStage(&group[1], this);
    v5[0] = 0;
    v5[1] = 0;
    sub_100004AA0(v5, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_1015119B4(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101511E08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, dispatch_object_t object, uint64_t a20, std::__shared_weak_count *a21, dispatch_object_t a22, uint64_t a23, uint64_t a24)
{
  sub_100D92208(a15);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  operator delete();
}

void sub_101511F14(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F47450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101511F90(STKCommandDriverDelegateInterface *this)
{
  *this = off_101F47510;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  STKCommandDriverDelegateInterface::~STKCommandDriverDelegateInterface(this);
}

void sub_101511FEC(STKCommandDriverDelegateInterface *this)
{
  *this = off_101F47510;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  STKCommandDriverDelegateInterface::~STKCommandDriverDelegateInterface(this);

  operator delete();
}

uint64_t sub_10151205C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 8);
  if (v7)
  {
    v11 = *(a1 + 8);
    v12 = a2;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_1015160B0;
    v13[3] = &unk_101F478F0;
    v13[4] = v7 + 8;
    v13[5] = &v11;
    v14 = v13;
    v8 = *(v7 + 24);
    if (*(v7 + 32))
    {
      v21 = 0;
      block = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = sub_1015160C0;
      v18 = &unk_101F47930;
      v19 = &v21;
      v20 = &v14;
      dispatch_async_and_wait(v8, &block);
    }

    else
    {
      v21 = 0;
      block = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = sub_1000B1AF4;
      v18 = &unk_101F47910;
      v19 = &v21;
      v20 = &v14;
      dispatch_sync(v8, &block);
    }

    v9 = v21;
  }

  else
  {
    v9 = 0;
  }

  sub_100004A34(v6);
  return v9;
}

void sub_1015121DC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        sub_100D448D4(v10, a3);
        v11 = v8;
        v12 = a2;
        sub_100D448D4(&v13, v10);
        v9[0] = 0;
        v9[1] = 0;
        sub_100004AA0(v9, (v8 + 8));
        operator new();
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1015133A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_100D2F09C(&a13);
    ModelBase::~ModelBase(v14);
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015134E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5[0] = 0;
        v5[1] = 0;
        sub_100004AA0(v5, (v4 + 8));
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_101513628(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7)
    {
      v11 = *(a1 + 8);
      v12 = a2;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 0x40000000;
      v13[2] = sub_101516414;
      v13[3] = &unk_101F47950;
      v13[4] = v7 + 8;
      v13[5] = &v11;
      v14 = v13;
      v8 = *(v7 + 24);
      if (*(v7 + 32))
      {
        v21 = 0;
        block = _NSConcreteStackBlock;
        v16 = 0x40000000;
        v17 = sub_10006A5E4;
        v18 = &unk_101F47990;
        v19 = &v21;
        v20 = &v14;
        dispatch_async_and_wait(v8, &block);
      }

      else
      {
        v21 = 0;
        block = _NSConcreteStackBlock;
        v16 = 0x40000000;
        v17 = sub_100059688;
        v18 = &unk_101F47970;
        v19 = &v21;
        v20 = &v14;
        dispatch_sync(v8, &block);
      }

      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

    sub_100004A34(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1015137A8(STKCommandDriverDelegateInterface *this)
{
  *this = off_101F47510;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  STKCommandDriverDelegateInterface::~STKCommandDriverDelegateInterface(this);
}

void sub_101513804(STKCommandDriverDelegateInterface *this)
{
  *this = off_101F47510;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  STKCommandDriverDelegateInterface::~STKCommandDriverDelegateInterface(this);

  operator delete();
}

uint64_t sub_101513874(void *a1)
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

void *sub_1015138C0(void *a1)
{
  *a1 = off_101F47570;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151390C(void *a1)
{
  *a1 = off_101F47570;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_101513978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_101513A28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101513ACC(void *a1)
{
  *a1 = off_101F475C0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101513B18(void *a1)
{
  *a1 = off_101F475C0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_101513C60(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F47600;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_101513C8C(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_101513D28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101513DF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F47680;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101513E28(void *a1)
{
  v2 = a1[1];
  v3 = *v2;
  v9 = *(v2 + 2);
  *v8 = v3;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  v4 = *(v2 + 24);
  v11 = *(v2 + 5);
  *__p = v4;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  *(v2 + 3) = 0;
  read_rest_value();
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v5(v7, v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

uint64_t sub_101513F08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101513FD0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F47700;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101514008(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_100109E38(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_1015140E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015141A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F47780;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015141E0(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v21 = 0uLL;
  v22 = 0;
  sub_10010A62C(&v21, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v18 = v3->__r_.__value_.__r.__words[0];
  v19 = size;
  v20 = v3->__r_.__value_.__r.__words[2];
  if (v20)
  {
    *(size + 16) = &v19;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v18 = &v19;
  }

  v16 = v21;
  v17 = v22;
  v22 = 0;
  v21 = 0uLL;
  sub_100D21B04(v3, &v16);
  v23 = &v16;
  sub_1000B2AF8(&v23);
  if (v20 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v18;
    if (v18 == &v19)
    {
      goto LABEL_24;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v19)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = (a1[2] + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v13(v15, &v18);
LABEL_24:
  sub_100359978(&v18, v19);
  v18 = &v21;
  sub_1000B2AF8(&v18);
}

void sub_1015143A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char *a13, uint64_t a14, char a15)
{
  sub_100359978(&a12, a13);
  a12 = &a15;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1015143EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015144B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F47800;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015144EC(void *a1, xpc_object_t *a2)
{
  v2 = a1;
  v3 = a1[1];
  v5 = v3 + 1;
  v4 = v3[1];
  v36 = *v3;
  v37 = v4;
  if (v3[2])
  {
    v4[2] = &v37;
    *v3 = v5;
    *v5 = 0;
    v3[2] = 0;
  }

  else
  {
    v36 = &v37;
  }

  v6 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  sub_1008F08B0(v3, v3[1]);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = v5;
  if (xpc_get_type(v6) == &_xpc_type_array)
  {
    object[0] = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v44, object, 0);
    xpc_release(object[0]);
    object[0] = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v35 = v6;
    if (xpc_get_type(v6) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v6);
    }

    else
    {
      count = 0;
    }

    v34 = v2;
    sub_100008EA4(v43, object, count);
    xpc_release(object[0]);
    for (i = v45; ; i = ++v45)
    {
      if (i == v43[1] && v44 == v43[0])
      {
        xpc_release(v43[0]);
        xpc_release(v44);
        v2 = v34;
        v6 = v35;
        goto LABEL_81;
      }

      v42 = 0;
      object[0] = &v44;
      object[1] = i;
      sub_10003EAD4(object, &v42);
      if (xpc_get_type(v42) == &_xpc_type_dictionary)
      {
        break;
      }

LABEL_79:
      xpc_release(v42);
    }

    *__p = 0u;
    v41 = 0u;
    *object = 0u;
    v9 = v42;
    if (v42)
    {
      xpc_retain(v42);
      v48 = v9;
    }

    else
    {
      v9 = xpc_null_create();
      v48 = v9;
      if (!v9)
      {
        v10 = xpc_null_create();
        v9 = 0;
        goto LABEL_29;
      }
    }

    if (xpc_get_type(v9) == &_xpc_type_dictionary)
    {
      xpc_retain(v9);
      v10 = v9;
LABEL_30:
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        v53 = &v48;
        v54 = "first";
        sub_100006354(&v53, &v51);
        read_rest_value();
        xpc_release(v51);
        v46[0] = &v48;
        v46[1] = "second";
        sub_100006354(v46, &v47);
        v11 = v47;
        if (v47 && xpc_get_type(v47) == &_xpc_type_array)
        {
          xpc_retain(v11);
        }

        else
        {
          v11 = xpc_null_create();
        }

        v12 = __p[1];
        v13 = v41;
        while (v13 != v12)
        {
          v14 = *(v13 - 9);
          v13 -= 4;
          if (v14 < 0)
          {
            operator delete(*v13);
          }
        }

        *&v41 = v12;
        if (xpc_get_type(v11) == &_xpc_type_array)
        {
          v53 = v11;
          if (v11)
          {
            xpc_retain(v11);
          }

          else
          {
            v53 = xpc_null_create();
          }

          sub_100008EA4(&v51, &v53, 0);
          xpc_release(v53);
          v53 = v11;
          if (v11)
          {
            xpc_retain(v11);
          }

          else
          {
            v53 = xpc_null_create();
          }

          if (xpc_get_type(v11) == &_xpc_type_array)
          {
            v15 = xpc_array_get_count(v11);
          }

          else
          {
            v15 = 0;
          }

          sub_100008EA4(v50, &v53, v15);
          xpc_release(v53);
          for (j = v52; j != v50[1] || v51 != v50[0]; j = ++v52)
          {
            v49[0] = &v51;
            v49[1] = j;
            v17 = v41;
            if (v41 >= *(&v41 + 1))
            {
              v19 = (v41 - __p[1]) >> 5;
              v20 = v19 + 1;
              if ((v19 + 1) >> 59)
              {
                sub_1000CE3D4();
              }

              v21 = *(&v41 + 1) - __p[1];
              if ((*(&v41 + 1) - __p[1]) >> 4 > v20)
              {
                v20 = v21 >> 4;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFE0)
              {
                v22 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v22 = v20;
              }

              if (v22)
              {
                sub_1008F1114(&__p[1], v22);
              }

              v23 = (32 * v19);
              *v23 = 0u;
              v23[1] = 0u;
              v25 = __p[1];
              v24 = v41;
              v26 = __p[1] + 32 * v19 - v41;
              v57 = v23 + __p[1] - v41;
              v58 = v57;
              v53 = &__p[1];
              v54 = &v57;
              v55 = &v58;
              v56 = 0;
              v27 = __p[1];
              v28 = v57;
              if (v41 == __p[1])
              {
                LOBYTE(v56) = 1;
              }

              else
              {
                do
                {
                  v29 = *v27;
                  *(v28 + 2) = v27[2];
                  *v28 = v29;
                  v27[1] = 0;
                  v27[2] = 0;
                  *v27 = 0;
                  *(v28 + 6) = *(v27 + 6);
                  v27 += 4;
                  v28 += 32;
                }

                while (v27 != v24);
                v58 = v28;
                LOBYTE(v56) = 1;
                do
                {
                  if (*(v25 + 23) < 0)
                  {
                    operator delete(*v25);
                  }

                  v25 += 4;
                }

                while (v25 != v24);
              }

              v18 = v23 + 2;
              sub_1008F10DC(&v53);
              v30 = __p[1];
              __p[1] = v26;
              v41 = (v23 + 2);
              if (v30)
              {
                operator delete(v30);
              }
            }

            else
            {
              *v41 = 0u;
              *(v17 + 16) = 0u;
              v18 = (v17 + 32);
            }

            *&v41 = v18;
            sub_100008EF0(v49, &v53);
            sub_100C1C56C((v18 - 2), &v53);
            xpc_release(v53);
          }

          xpc_release(v50[0]);
          xpc_release(v51);
        }

        xpc_release(v11);
        xpc_release(v47);
        v10 = v48;
      }

      xpc_release(v10);
      xpc_release(v9);
      v51 = 0;
      if (!*sub_100005C2C(v3, &v51, object))
      {
        operator new();
      }

      v53 = &__p[1];
      sub_10003CA58(&v53);
      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(object[0]);
      }

      goto LABEL_79;
    }

    v10 = xpc_null_create();
LABEL_29:
    v48 = v10;
    goto LABEL_30;
  }

LABEL_81:
  xpc_release(v6);
  v31 = v2[3];
  v32 = v2[4];
  v33 = (v2[2] + (v32 >> 1));
  if (v32)
  {
    v31 = *(*v33 + v31);
  }

  v31(v33, &v36);
  sub_1008F08B0(&v36, v37);
}

void sub_101514BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21, xpc_object_t a22, uint64_t a23, xpc_object_t a24, uint64_t a25, uint64_t a26, uint64_t a27, xpc_object_t a28, xpc_object_t a29)
{
  xpc_release(object);
  object = 0;
  xpc_release(a24);
  xpc_release(a10);
  sub_1008F08B0(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_101514D6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101514E28(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F47880;
  a2[1] = v2;
  return result;
}

uint64_t sub_101514E5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101514EA8(void **a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = v2[11];
  if (v4)
  {
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
  }

  v6 = v2[13];
  if (v6 != v2 + 14)
  {
    do
    {
      v7 = v6[5];
      v8 = v1[1];
      group = v8;
      if (v8)
      {
        dispatch_retain(v8);
        if (group)
        {
          dispatch_group_enter(group);
        }
      }

      (*(*v7 + 24))(v7, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      v9 = v6[1];
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
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v2 + 14);
  }

  ctu::RestModule::disconnect((v2 + 16));
  v12 = (v2 + 37);
  for (i = v2[38]; i != v12; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC(v12);
  sub_1000FF844(&v16);
  return sub_1000049E0(&v15);
}

void sub_101515078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t a12, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_1015150D4(void *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", &buf, 2u);
  }

  aBlock[6] = 0;
  v10 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_101513874;
  aBlock[3] = &unk_101F47540;
  aBlock[4] = v2 + 8;
  aBlock[5] = sub_10150FAF0;
  v10 = _Block_copy(aBlock);
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      sub_1008F4138(v11, &v10, *(v2 + 24));
      sub_1008F4180(&buf, v11);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10151581C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, dispatch_group_t group, uint64_t a31)
{
  sub_1000062D4(&group);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101515994(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  v3 = *(v1 + 88);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  (*(**(v1 + 80) + 24))(buf);
  v4 = *buf;
  memset(buf, 0, sizeof(buf));
  v5 = *(v1 + 328);
  *(v1 + 320) = v4;
  if (v5)
  {
    sub_100004A34(v5);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  (*(**(v1 + 320) + 16))(*(v1 + 320));
  v6 = *(v1 + 320);
  if (v6)
  {
    (*(*v6 + 24))(v6, v1 + 176);
  }

  operator delete();
}

void sub_101515B28(uint64_t a1, int a2, uint64_t a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v13 = 0;
  v14 = 0;
  STK_Controller::getStateModel_sync(a1, a2, &v13);
  v7 = v13;
  if (v13)
  {
    v8 = *(a3 + 8);
    if (v8 == 8 || v8 == 1)
    {
      v10 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = subscriber::asString();
        *buf = 136315138;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I SIM state has changed to %s, resetting state", buf, 0xCu);
      }

      (*(*v7 + 144))(v7);
    }
  }

  else
  {
    v12 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not find state model when evaluating SIM state", buf, 2u);
    }
  }

  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_101515CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101515CC8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = sub_10151074C(v2, (*a1)[1]);
  v4 = *(v1 + 4);
  v5 = *(v1 + 20);
  if (v4 == 2)
  {
    v17 = (*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    *buf = 0uLL;
    STK_Controller::getStateModel_sync(v2, v3, buf);
    v13 = *buf;
    v14 = *v17;
    v18 = *v17;
    if (*buf)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = "failed";
        if (v5)
        {
          v19 = "succeeded";
        }

        *v21 = 136315138;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Terminal Response sent to baseband %s", v21, 0xCu);
      }

      goto LABEL_21;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      v20 = "Could not find state model upon terminal response completion";
      goto LABEL_35;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v6 = *(v2 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = "not ready";
          if (v5)
          {
            v7 = "ready";
          }

          *buf = 136315138;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Command Driver is %s resetting the state machine", buf, 0xCu);
        }

        v8 = *(v2 + 104);
        if (v8 != (v2 + 112))
        {
          do
          {
            (*(*v8[5] + 144))(v8[5]);
            v9 = v8[1];
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
                v10 = v8[2];
                v11 = *v10 == v8;
                v8 = v10;
              }

              while (!v11);
            }

            v8 = v10;
          }

          while (v10 != (v2 + 112));
        }
      }

      goto LABEL_33;
    }

    v12 = (*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    *buf = 0uLL;
    STK_Controller::getStateModel_sync(v2, v3, buf);
    v13 = *buf;
    v14 = *v12;
    v15 = *v12;
    if (*buf)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = "failed";
        if (v5)
        {
          v16 = "succeeded";
        }

        *v21 = 136315138;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Event Confirmation sent to baseband %s", v21, 0xCu);
      }

LABEL_21:
      (*(*v13 + 128))(v13, v5);
      goto LABEL_31;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      v20 = "Could not find state model upon event confirmation completion";
LABEL_35:
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v20, v21, 2u);
    }
  }

LABEL_31:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

LABEL_33:
  operator delete();
}

void sub_101516074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

uint64_t sub_1015160C0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_1015160FC(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = sub_10151074C(*v1, *(v1 + 8));
  sub_100D448D4(&v18, (v1 + 16));
  v4 = v18 ^ (v18 >> 31);
  if (v4 >= 0x1A)
  {
    sub_100100ED4();
  }

  v5 = dword_101982008[v4];
  v6 = (*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  v16 = 0;
  v17 = 0;
  STK_Controller::getStateModel_sync(v2, v3, &v16);
  v7 = v16;
  v8 = *v6;
  if (v16)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = asString();
      *buf = 136315138;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Received a Proactive Command: %s event from SIM", buf, 0xCu);
    }

    (*(*v7 + 40))(v7, &v18);
    if (v5 == 21)
    {
      if ((v18 ^ (v18 >> 31)) != 0x19)
      {
        sub_100100ED4();
      }

      if (v18 >= 0)
      {
        v11 = &v20;
      }

      else
      {
        v11 = (v19 + 32);
      }

      while (1)
      {
        v11 = *v11;
        if (!v11)
        {
          break;
        }

        v12 = *(v11 + 7);
        if (v12 <= 2)
        {
          if (v12 == 2)
          {
            sub_101510D58(v2);
          }

          ++v11;
        }
      }
    }

    else if (v5 == 19)
    {
      sub_101510D58(v2);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v13 = asString();
    *buf = 136315138;
    v22 = v13;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not find state model upon receipt of proactive command: %s", buf, 0xCu);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  sub_100D38A2C(&v18);
  sub_1015163C4(&v15);
  return sub_1000049E0(&v14);
}

void sub_101516368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, int a13)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100D38A2C(&a13);
  sub_1015163C4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015163C4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100D38A2C((v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t sub_101516414(capabilities::ct *a1)
{
  v1 = *(a1 + 5);
  v2 = *v1;
  if (!capabilities::ct::supportsSTKSendIMSRegEvent(a1))
  {
    v13 = 0;
    return v13 & 1;
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 64));
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
  v17 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v17);
  if (!v9)
  {
    v11 = 0;
LABEL_12:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
LABEL_8:
      v13 = 0;
      if (v12)
      {
        return v13 & 1;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_13:
  v17 = 0;
  (*(*v11 + 96))(&v16, v11, *(v1 + 2), 1, @"SupportSimToolkitIMSRegNotifications", 0, 0);
  sub_10002FE1C(&v17, &v16);
  sub_10000A1EC(&v16);
  LOBYTE(v16) = 0;
  ctu::cf::assign(&v16, v17, v14);
  v13 = v16;
  sub_100045C8C(&v17);
  if ((v12 & 1) == 0)
  {
LABEL_14:
    sub_100004A34(v10);
  }

  return v13 & 1;
}

void sub_101516590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1015165CC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_101516620(uint64_t a1)
{
  v25 = a1;
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 16))
      {
LABEL_41:
        sub_100004A34(v5);
        return sub_1015165CC(&v25);
      }

      v40 = 0;
      ServiceMap = Registry::getServiceMap(*(v3 + 64));
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
        v14 = v12[3];
        v13 = v12[4];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v7);
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v13);
          v15 = 0;
LABEL_12:
          (*(*v14 + 96))(__p, v14, *(a1 + 8), 1, @"SendCurrentLanguageToSTK", kCFBooleanFalse, 0);
          sub_10002FE1C(&v40, __p);
          sub_10000A1EC(__p);
          if ((v15 & 1) == 0)
          {
            sub_100004A34(v13);
          }

          buf[0] = 0;
          ctu::cf::assign(buf, v40, v16);
          if (buf[0])
          {
            v17 = *(v3 + 40);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I SIM requires current language to be sent, hence pushing it", buf, 2u);
            }

            if (sub_1009FC5C8(71))
            {
              v18 = (v3 + 152);
              if (*(v3 + 175) < 0)
              {
                v18 = *v18;
              }

              sub_10000501C(buf, v18);
              (*(*v3 + 120))(v3, buf);
              if (SHIBYTE(v28) < 0)
              {
                operator delete(*buf);
              }
            }

            else
            {
              global_queue = dispatch_get_global_queue(0, 0);
              v20 = global_queue;
              if (global_queue)
              {
                dispatch_retain(global_queue);
              }

              Registry::getTimerService(&v38, *(v3 + 64));
              v21 = v38;
              sub_10000501C(__p, "STK_Controller");
              object = v20;
              if (v20)
              {
                dispatch_retain(v20);
              }

              *buf = _NSConcreteStackBlock;
              v27 = 1174405120;
              v28 = sub_101516A68;
              v29 = &unk_101F479B0;
              v23 = *(a1 + 16);
              v22 = *(a1 + 24);
              v30 = v3;
              v31 = v23;
              v32 = v22;
              if (v22)
              {
                atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v33 = *(a1 + 8);
              aBlock = _Block_copy(buf);
              sub_100E34D88(v21, __p, 0, 5000000, &object, &aBlock);
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (object)
              {
                dispatch_release(object);
              }

              if (v37 < 0)
              {
                operator delete(__p[0]);
              }

              if (v39)
              {
                sub_100004A34(v39);
              }

              if (v32)
              {
                std::__shared_weak_count::__release_weak(v32);
              }

              if (v20)
              {
                dispatch_release(v20);
              }
            }
          }

          sub_100045C8C(&v40);
          goto LABEL_41;
        }
      }

      else
      {
        v14 = 0;
      }

      std::mutex::unlock(v7);
      v13 = 0;
      v15 = 1;
      goto LABEL_12;
    }
  }

  return sub_1015165CC(&v25);
}

void sub_10151698C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, void *aBlock, dispatch_object_t object, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a29 < 0)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 80);
  if (v33)
  {
    sub_100004A34(v33);
  }

  if (v30)
  {
    dispatch_release(v30);
  }

  sub_100045C8C((v31 - 72));
  sub_100004A34(v29);
  sub_1015165CC(&a10);
  _Unwind_Resume(a1);
}

void sub_101516A68(uint64_t a1)
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
        sub_101510D58(v3, *(a1 + 56));
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_101516AF4(uint64_t result, uint64_t a2)
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

void sub_101516B10(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t *sub_101516B20(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 28);
  if (*(*v1 + 175) < 0)
  {
    sub_100005F2C(__p, *(v2 + 152), *(v2 + 160));
  }

  else
  {
    *__p = *(v2 + 152);
    v10 = *(v2 + 168);
  }

  (*(*v3 + 112))(v3, v4, v5, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_101516C0C(&v8);
  return sub_1000049E0(&v7);
}

void sub_101516BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_101516C0C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101516C0C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void sub_101516D58(void *a1, void *a2, void *a3)
{
  *a1 = off_101F67018;
  v6 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, "euicc.attest");
  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v8 = dispatch_queue_create("CellularPlanAttestation", v7);
  *v6 = 0;
  v6[1] = 0;
  a1[3] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[4] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[4] = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v13, &v12);
  ctu::OsLogLogger::OsLogLogger((a1 + 5), v13);
  ctu::OsLogLogger::~OsLogLogger(v13);
  ctu::OsLogContext::~OsLogContext(&v12);
  *a1 = off_101F479F0;
  v10 = a2[1];
  a1[6] = *a2;
  a1[7] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a3[1];
  a1[8] = *a3;
  a1[9] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_101516EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  v17 = v13[9];
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = v13[7];
  if (v18)
  {
    sub_100004A34(v18);
  }

  ctu::OsLogLogger::~OsLogLogger((v13 + 5));
  sub_1000C0544(v12);
  _Unwind_Resume(a1);
}

void *sub_101516F5C(void *a1)
{
  *a1 = off_101F479F0;
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

void sub_101516FD4(void *a1)
{
  sub_101516F5C(a1);

  operator delete();
}

uint64_t sub_10151700C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3321888768;
  v18[2] = sub_1015171A8;
  v18[3] = &unk_101F47A20;
  v18[4] = a1;
  v19[32] = a4;
  v20 = a2;
  v21 = a3;
  sub_1003684A4(v19, a5);
  v6 = v18;
  v7 = a1[2];
  if (!v7 || (v8 = a1[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    sub_100013CC4();
  }

  v10 = v9;
  v11 = a1[3];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_101518710;
  v14[3] = &unk_101F47BE0;
  v16 = v8;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = v6;
  v15 = v12;
  dispatch_async(v11, v14);

  if (v17)
  {
    sub_100004A34(v17);
  }

  sub_100004A34(v10);

  return sub_10010DF14(v19);
}

void sub_10151719C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1015171A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 72));
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I euicc ticket requested - userRequest : %s", &buf, 0xCu);
  }

  if ((*(a1 + 72) & 1) != 0 || (*(*v2 + 40))(v2))
  {
    v5 = *(a1 + 73);
    v6 = *(a1 + 81);
    sub_1003684A4(v22, a1 + 40);
    sub_100E58844(*(a1 + 72), &object);
    cf = 0;
    v21 = 0;
    *&buf = 0;
    *(&buf + 1) = &v21;
    cf = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &buf);
    sub_1003A5C24(&buf);
    if (cf)
    {
      sub_100E57E14();
      SecAccessControlSetConstraints();
      v19 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v32 = kMAOptionsBAANetworkTimeoutInterval;
      v33 = kMAOptionsBAAValidity;
      *&buf = &off_101F912A8;
      *(&buf + 1) = &off_101F912C0;
      v34 = kMAOptionsBAASCRTAttestation;
      v35 = kMAOptionsResuseExistingKey;
      v24 = &__kCFBooleanFalse;
      v25 = &__kCFBooleanTrue;
      v36 = kMAOptionsBAADeleteDuplicateKeychainItems;
      v26 = &__kCFBooleanTrue;
      v7 = [NSDictionary dictionaryWithObjects:&buf forKeys:&v32 count:5];
      v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

      v9 = [NSMutableArray alloc];
      v31[0] = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
      v31[1] = kMAOptionsBAAOIDDeviceIdentifiers;
      v31[2] = kMAOptionsBAAOIDHardwareProperties;
      v31[3] = kMAOptionsBAAOIDKeyUsageProperties;
      v31[4] = kMAOptionsBAAOIDDeviceOSInformation;
      v10 = [NSArray arrayWithObjects:v31 count:5];
      v11 = [v9 initWithArray:v10];

      v12 = kMAOptionsBAAOIDSToInclude;
      [v8 setObject:v11 forKeyedSubscript:kMAOptionsBAAOIDSToInclude];
      v13 = [v8 objectForKeyedSubscript:v12];
      [v13 addObject:kMAOptionsBAAOIDAccessControls];

      [v8 setObject:v19 forKeyedSubscript:kMAOptionsBAAAccessControls];
      [v8 setObject:@"euicc" forKeyedSubscript:kMAOptionsBAAKeychainLabel];
      [v8 setObject:@"com.apple.coretelephony" forKeyedSubscript:kMAOptionsBAAKeychainAccessGroup];

      sub_100D9EC14(&v19);
      if (v8)
      {
        v14 = *(v2 + 64);
        v15 = *(v2 + 24);
        v31[0] = v15;
        if (v15)
        {
          dispatch_retain(v15);
        }

        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3321888768;
        v24 = sub_101518154;
        v25 = &unk_101F47A50;
        v26 = v2;
        v29 = v5;
        v30 = v6;
        sub_1003684A4(v27, v22);
        v28 = object;
        if (object)
        {
          xpc_retain(object);
        }

        else
        {
          v28 = xpc_null_create();
        }

        v35 = 0;
        v32 = off_101F40478;
        v33 = objc_retainBlock(&buf);
        v35 = &v32;
        (*(*v14 + 16))(v14, v8, v31, &v32);
        sub_101020704(&v32);
        if (v31[0])
        {
          dispatch_release(v31[0]);
        }

        xpc_release(v28);
        v28 = 0;
        sub_10010DF14(v27);
      }

      else
      {
        v17 = *(v2 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "create options for BAA cert generation failed", &buf, 2u);
        }

        sub_10000501C(&buf, "Options Failure");
        sub_100E590B0((v2 + 48), &object, &buf);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(buf);
        }

        v32 = 0;
        v33 = 0;
        v34 = 0;
        sub_100368450(v22, 0);
        if (SHIBYTE(v34) < 0)
        {
          operator delete(v32);
        }
      }
    }

    else
    {
      v16 = *(v2 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "create access control failed", &buf, 2u);
      }

      sub_10000501C(&buf, "ACL Failure");
      sub_100E590B0((v2 + 48), &object, &buf);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(buf);
      }

      v32 = 0;
      v33 = 0;
      v34 = 0;
      sub_100368450(v22, 0);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(v32);
      }
    }

    sub_100D9EC14(&cf);
    sub_1003A5A8C(&v21);
    xpc_release(object);
    object = 0;
    sub_10010DF14(v22);
  }

  else
  {
    sub_100368450(a1 + 40, 0);
  }
}

void sub_1015177A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t object, char a17, int a18, const void *a19, const void *a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, xpc_object_t a39)
{
  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  sub_100D9EC14(&a19);
  sub_1003A5A8C(&a20);
  xpc_release(object);
  sub_10010DF14(&a21);
  _Unwind_Resume(a1);
}

BOOL sub_101517918(uint64_t a1)
{
  v27 = 0;
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
  *at = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, at);
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

      goto LABEL_13;
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
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *at = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Cannot create preferences", at, 2u);
    }

    v27 = 0;
    if (v11)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_13:
  v13 = kCommCenterPreferencesNoBackupAppID;
  (*(*v10 + 48))(v10, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v29 = 0;
  (*(*v10 + 40))(at, v10, @"kEuiccTicketPrefetchTimestamp", v13, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_10010B240(&v29, at);
  sub_10000A1EC(at);
  if (v29)
  {
    *at = 0;
    ctu::cf::assign(at, v29, v14);
    v15 = CFDateCreate(kCFAllocatorDefault, *at);
    v28 = v15;
    v16 = *(a1 + 40);
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *at = 138412290;
        *&at[4] = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I euicc ticket prefetch timestamp [%@] for attestation", at, 0xCu);
      }

      v27 = v15;
      v28 = 0;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *at = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Empty euicc ticket prefetch date", at, 2u);
      }

      v27 = 0;
    }

    sub_1003EC530(&v28);
  }

  else
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *at = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Empty euicc ticket prefetch timestamp", at, 2u);
    }

    v27 = 0;
  }

  sub_100029A48(&v29);
  if ((v11 & 1) == 0)
  {
LABEL_26:
    sub_100004A34(v9);
  }

  if (v27)
  {
    v18 = v27;
    goto LABEL_32;
  }

LABEL_29:
  v19 = *(a1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *at = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Generate new euicc ticket prefetch timestamp", at, 2u);
  }

  v18 = (*(*a1 + 32))(a1);
LABEL_32:
  v20 = v18;
  v21 = objc_alloc_init(NSDateFormatter);
  [v21 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
  v22 = *(a1 + 40);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 stringFromDate:v20];
    *at = 138412290;
    *&at[4] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I euicc ticket fetch timestamp : %@", at, 0xCu);
  }

  v24 = +[NSDate date];
  v25 = [(__CFDate *)v20 compare:v24]== -1;

  sub_1003EC530(&v27);
  return v25;
}

void sub_101517D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100029A48(va);
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

const __CFDate *sub_101517E10(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = sub_100E57D20(v2);
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
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Cannot create preferences", buf, 2u);
    }

    goto LABEL_17;
  }

LABEL_11:
  v21 = 0;
  *buf = CFDateGetAbsoluteTime(v3);
  v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, buf);
  if (v15)
  {
    v21 = v15;
    *buf = 0;
    sub_100029A48(buf);
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v20 = v16;
  v21 = 0;
  sub_100029A48(&v21);
  v17 = kCommCenterPreferencesNoBackupAppID;
  (*(*v12 + 16))(v12, @"kEuiccTicketPrefetchTimestamp", v16, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I saved euicc ticket prefetch timestamp [%@] for attestation", buf, 0xCu);
  }

  (*(*v12 + 48))(v12, v17, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100029A48(&v20);
LABEL_17:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v3;
}

void sub_1015180E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_101518154(uint64_t a1, int a2, const void **a3, const void *a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v13 = *(a1 + 32);
  v22 = a4;
  v14 = *(v13 + 40);
  if (a2)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *a3;
      *buf = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = a4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I BAA Cert :%@ - ref key : %@", buf, 0x16u);
    }

    v16 = *(v13 + 80);
    sub_10002D728(&v21, a3);
    sub_1003684A4(v23, a1 + 40);
    v17 = *(a1 + 72);
    object = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      object = xpc_null_create();
    }

    (*(*v16 + 16))(v16, a1 + 80, &v21, &v22, v23, &object);
    xpc_release(object);
    object = 0;
    sub_10010DF14(v23);
    sub_10002D760(&v21);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Getting device identity framework failed", buf, 2u);
    }

    sub_10000501C(__p, "Cert Failure");
    sub_100E590B0((v13 + 48), (a1 + 72), __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100368450(a1 + 40, 0);
  }

  sub_1005A16F4(&v22);
}

void sub_101518378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, xpc_object_t object, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t sub_10151840C(uint64_t a1, uint64_t a2)
{
  sub_1003684A4(a1 + 40, a2 + 40);
  v4 = *(a2 + 72);
  *(a1 + 72) = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  *(a1 + 72) = result;
  return result;
}

uint64_t sub_10151845C(uint64_t a1)
{
  xpc_release(*(a1 + 72));
  *(a1 + 72) = 0;

  return sub_10010DF14(a1 + 40);
}

void sub_101518574(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101518648);
  __cxa_rethrow();
}

void sub_1015185B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101518608(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101518648(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101518694(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F47B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101518720(uint64_t result, uint64_t a2)
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

void sub_10151873C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

double sub_10151874C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100F94A84((a1 + 8), &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_101518788()
{
  v0[0] = 0;
  v0[1] = 0;
  sub_1011E8A10(v0);
}

double sub_1015187EC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100FE0480((a1 + 8), &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_101518828(uint64_t a1, dispatch_object_t *a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_10161A684();
}

void sub_101518898(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015188B0(int a1@<W1>, int a2@<W2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    LODWORD(v5) = a1;
    v3 = 0;
    v4 = 0;
    sub_1012EF75C();
  }
}

void sub_101518EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  sub_1012E1668(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_101518F90(uint64_t result, uint64_t *a2, int *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2[1];
  v7 = a2[2];
  if (v6 >= v7)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    v25[4] = a2;
    if (v15)
    {
      sub_10151931C(v15);
    }

    v16 = *a3;
    v18 = *a4;
    v17 = a4[1];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = 24 * v12;
    *v19 = v16;
    *(v19 + 8) = v18;
    *(v19 + 16) = v17;
    v11 = 24 * v12 + 24;
    v20 = a2[1];
    v21 = 24 * v12 + *a2 - v20;
    sub_101519374(*a2, v20, v21);
    v22 = *a2;
    *a2 = v21;
    a2[1] = v11;
    v23 = a2[2];
    a2[2] = 0;
    v25[2] = v22;
    v25[3] = v23;
    v25[0] = v22;
    v25[1] = v22;
    result = sub_1015193E4(v25);
  }

  else
  {
    v8 = *a3;
    v10 = *a4;
    v9 = a4[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *v6 = v8;
    v11 = v6 + 24;
    *(v6 + 8) = v10;
    *(v6 + 16) = v9;
  }

  a2[1] = v11;
  *v5 = *(v11 - 24);
  v24 = *(v11 - 8);
  *(v5 + 8) = *(v11 - 16);
  *(v5 + 16) = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1015190FC(uint64_t result, uint64_t *a2, int *a3, __int128 *a4)
{
  v5 = result;
  v6 = a2[1];
  v7 = a2[2];
  if (v6 >= v7)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    v23[4] = a2;
    if (v14)
    {
      sub_10151931C(v14);
    }

    v15 = 24 * v11;
    v16 = *a3;
    v17 = *a4;
    *a4 = 0;
    *(a4 + 1) = 0;
    *v15 = v16;
    *(v15 + 8) = v17;
    v10 = 24 * v11 + 24;
    v18 = a2[1];
    v19 = 24 * v11 + *a2 - v18;
    sub_101519374(*a2, v18, v19);
    v20 = *a2;
    *a2 = v19;
    a2[1] = v10;
    v21 = a2[2];
    a2[2] = 0;
    v23[2] = v20;
    v23[3] = v21;
    v23[0] = v20;
    v23[1] = v20;
    result = sub_1015193E4(v23);
  }

  else
  {
    v8 = *a3;
    v9 = *a4;
    *a4 = 0;
    *(a4 + 1) = 0;
    *v6 = v8;
    *(v6 + 8) = v9;
    v10 = v6 + 24;
  }

  a2[1] = v10;
  *v5 = *(v10 - 24);
  v22 = *(v10 - 8);
  *(v5 + 8) = *(v10 - 16);
  *(v5 + 16) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101519250(SignalStrengthFactoryInterface *this)
{
  *this = off_101F47C20;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  SignalStrengthFactoryInterface::~SignalStrengthFactoryInterface(this);
}

void sub_1015192AC(SignalStrengthFactoryInterface *this)
{
  *this = off_101F47C20;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  SignalStrengthFactoryInterface::~SignalStrengthFactoryInterface(this);

  operator delete();
}

void sub_10151931C(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_101519374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = *(v5 + 8);
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a3 += 24;
    }

    while (v5 != a2);
    do
    {
      v6 = *(v4 + 16);
      if (v6)
      {
        sub_100004A34(v6);
      }

      v4 += 24;
    }

    while (v4 != a2);
  }
}

uint64_t sub_1015193E4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 24;
    v4 = *(v2 - 8);
    if (v4)
    {
      sub_100004A34(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_101519444(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1015194C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10151958C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "tm.mgr");
  ctu::OsLogLogger::OsLogLogger(v12, &__p);
  ctu::OsLogLogger::OsLogLogger((a1 + 8), v12);
  ctu::OsLogLogger::~OsLogLogger(v12);
  ctu::OsLogContext::~OsLogContext(&__p);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101F47C80;
  *(a1 + 32) = off_101F47CD8;
  *(a1 + 40) = *a2;
  v8 = a2[1];
  *(a1 + 48) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = *a3;
  v9 = a3[1];
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = a4;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 109) = 0;
  *(a1 + 120) = -1;
  __p.var0 = 0;
  __p.var1.fRef = 0;
  v11 = 0;
  sub_1013E5840((a1 + 128));
}

void sub_1015196F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  v14 = v12[13];
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = v12[11];
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = v12[8];
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = v12[6];
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = v12[3];
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  ctu::OsLogLogger::~OsLogLogger((v12 + 1));
  _Unwind_Resume(a1);
}

void *sub_101519778(void *a1)
{
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 32))(v3);
    }

    TMKXPCServer.shutdown()();
    operator delete();
  }

  v4 = a1[13];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

void sub_101519844(void *a1)
{
  sub_101519778(a1);

  operator delete();
}

void sub_10151987C(uint64_t a1)
{
  sub_101519778((a1 - 32));

  operator delete();
}

void sub_1015198B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  (*(**(a1 + 80) + 48))(*(a1 + 80), a2, a3, a5);
  (*(**(a1 + 96) + 104))(*(a1 + 96), a2);

  sub_101519958(a1, a4);
}

void sub_101519958(uint64_t a1, int a2)
{
  if (*(a1 + 113) != a2)
  {
    v2 = a2;
    v4 = *(a1 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(*(a1 + 56));
      v6 = asStringBool(*(a1 + 113));
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = " ";
      v11 = 2080;
      v12 = v6;
      v13 = 2080;
      v14 = asStringBool(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shasWiFiCall %s => %s", &v7, 0x2Au);
    }

    *(a1 + 113) = v2;
    sub_101519B70(a1);
  }
}

void sub_101519A64(uint64_t a1, int a2)
{
  if (*(a1 + 112) != a2)
  {
    v2 = a2;
    v4 = *(a1 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(*(a1 + 56));
      v6 = asStringBool(*(a1 + 112));
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = " ";
      v11 = 2080;
      v12 = v6;
      v13 = 2080;
      v14 = asStringBool(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shandleImsRegistrationStateChanged: isOnIWLanOverCellular %s => %s", &v7, 0x2Au);
    }

    *(a1 + 112) = v2;
    sub_101519B70(a1);
  }
}

void sub_101519B70(uint64_t a1)
{
  if (*(a1 + 113) == 1 && *(a1 + 112) == 1)
  {
    if ((*(a1 + 114) & 1) == 0)
    {
      *(a1 + 114) = 1;
      (*(**(a1 + 72) + 40))(*(a1 + 72), *(a1 + 56) + 24);
    }

    if ((*(**(a1 + 80) + 32))(*(a1 + 80)) == 2)
    {
      v2 = *(a1 + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = PersonalityInfo::logPrefix(*(a1 + 56));
        v5 = 136315394;
        v6 = v3;
        v7 = 2080;
        v8 = " ";
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sWe have been out of service for an extended period of time", &v5, 0x16u);
      }

      if ((*(a1 + 115) & 1) == 0)
      {
        *(a1 + 115) = 1;
        (*(**(a1 + 72) + 56))(*(a1 + 72), a1 + 56);
      }
    }
  }

  else
  {
    if (*(a1 + 115) == 1)
    {
      *(a1 + 115) = 0;
      (*(**(a1 + 72) + 64))(*(a1 + 72), a1 + 56);
    }

    if (*(a1 + 114) == 1)
    {
      *(a1 + 114) = 0;
      v4 = *(**(a1 + 72) + 48);

      v4();
    }
  }
}

uint64_t sub_101519EA0(uint64_t a1)
{
  (*(**(a1 + 96) + 88))(*(a1 + 96));
  v2 = *(**(a1 + 72) + 16);

  return v2();
}

uint64_t sub_101519F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
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
  (*(*v14 + 96))(&v19, v14, *(*(a1 + 56) + 52), 1, a2, 0, 0);
  sub_10010B240(&v20, &v19);
  sub_10000A1EC(&v19);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v20 && (LODWORD(v21) = 0, ctu::cf::assign(&v21, v20, v16), v17 = v21, v21 < 4))
  {
    sub_100029A48(&v20);
    return v17;
  }

  else
  {
    sub_100029A48(&v20);
  }

  return a3;
}

void sub_10151A0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

BOOL sub_10151A0FC(uint64_t a1, unsigned int a2)
{
  v4 = sub_10007AEAC(a1 + 128, 0);
  if (v4 != a2)
  {
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(*(a1 + 56));
      v7 = sub_10007AEAC(a1 + 128, 0);
      v9 = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = " ";
      v13 = 2080;
      v14 = sub_100A320A0(v7);
      v15 = 2080;
      v16 = sub_100A320A0(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sDynamicCellularDataSwitch %s==>%s", &v9, 0x2Au);
    }

    sub_1001A937C(a1 + 128, a2);
  }

  return v4 != a2;
}

void sub_10151A224(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(*(a1 + 56));
    v4 = 136315394;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sDetermined that there is low chance to come back in service", &v4, 0x16u);
  }

  if (*(a1 + 114) == 1 && (*(a1 + 115) & 1) == 0)
  {
    *(a1 + 115) = 1;
    (*(**(a1 + 72) + 56))(*(a1 + 72), a1 + 56);
  }
}

uint64_t sub_10151A324(uint64_t a1)
{
  v21[0] = kIWLANSettingsKey;
  v21[1] = kWifiCallingAllowedInRoamingKey;
  v19 = 0;
  v20 = 0;
  __p = 0;
  sub_10005B328(&__p, v21, &v22, 2uLL);
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
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
  v21[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v21);
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
  v12 = 1;
  (*(*v10 + 104))(&cf, v10, *(*(a1 + 56) + 52), 1, &__p, kCFBooleanTrue, 0);
  v13 = cf;
  LOBYTE(v21[0]) = 1;
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(v21, v13, v15);
      v12 = v21[0];
    }

    else
    {
      v12 = 1;
    }
  }

  sub_10000A1EC(&cf);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return v12 & 1;
}

void sub_10151A510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10151A56C(uint64_t a1)
{
  v20 = *off_101F47D08;
  v21 = @"NoFallbackVoiceService";
  v18 = 0;
  v19 = 0;
  __p = 0;
  sub_10005B328(&__p, &v20, &v22, 3uLL);
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
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
  *&v20 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v20);
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
  (*(*v10 + 104))(&cf, v10, *(*(a1 + 56) + 52), 1, &__p, kCFBooleanFalse, 0);
  v12 = cf;
  LOBYTE(v20) = 0;
  if (cf)
  {
    v13 = CFGetTypeID(cf);
    if (v13 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v20, v12, v14);
      LOBYTE(v12) = v20;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  sub_10000A1EC(&cf);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v12 & 1;
}

void sub_10151A750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10151A7AC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10151A844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10151A858(va);
  _Unwind_Resume(a1);
}

void **sub_10151A858(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_101519778(v2);
    operator delete();
  }

  return a1;
}

void sub_10151A8A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10151A8DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_101519778(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10151A920(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10151ACF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, dispatch_object_t object, dispatch_object_t a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_100004A34(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_10151AECC(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_10052EF38(&v3);
  return sub_10151C63C(a1);
}

uint64_t sub_10151AF0C(uint64_t a1)
{
  *a1 = off_101F47E20;
  sub_100009970(a1 + 2056, *(a1 + 2064));
  sub_100009970(a1 + 2032, *(a1 + 2040));
  sub_100077CD4(a1 + 2008, *(a1 + 2016));
  sub_10004543C(a1 + 1192);
  sub_10004543C(a1 + 384);
  v7 = (a1 + 352);
  sub_10052EF38(&v7);
  sub_10151C63C(a1 + 304);
  sub_100005978((a1 + 296));
  sub_100005978((a1 + 288));
  sub_100005978((a1 + 272));
  v2 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 256);
  if (v3)
  {
    sub_100004A34(v3);
  }

  PersonalitiesTracker::~PersonalitiesTracker((a1 + 80));
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
  return a1;
}

void sub_10151B028(uint64_t a1)
{
  sub_10151AF0C(a1);

  operator delete();
}

void sub_10151B060(uint64_t a1, dispatch_object_t object)
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

const void **sub_10151B188(void *a1, const void *a2, const void *a3)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v9 = 0;
    sub_1000296E0(&v9);
    Mutable = theDict;
  }

  CFDictionaryAddValue(Mutable, @"msg-name", a2);
  if (a3)
  {
    CFDictionaryAddValue(theDict, @"msg-body", a3);
  }

  sub_1000391C8(a1, theDict);
  return sub_1000296E0(&theDict);
}

const void **sub_10151B24C(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  cf = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 0x40000000;
  v21 = sub_10151B62C;
  v22 = &unk_101F47E38;
  v23 = a3;
  v5 = *a2;
  if (*a2 && (v6 = CFGetTypeID(*a2), v6 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(v5, @"msg-name"), (v8 = Value) != 0) && (v9 = CFGetTypeID(Value), v9 == CFStringGetTypeID()))
  {
    cf = v8;
    CFRetain(v8);
  }

  else
  {
    cf = 0;
  }

  v10 = *a2;
  if (*a2 && (v11 = CFGetTypeID(*a2), v11 == CFDictionaryGetTypeID()))
  {
    v12 = CFDictionaryGetValue(v10, @"msg-body");
    v18 = v12;
    if (v12)
    {
      CFRetain(v12);
    }
  }

  else
  {
    v18 = 0;
  }

  if (cf)
  {
    v17 = cf;
    CFRetain(cf);
    if (CFStringCompare(cf, @"co-connectivity-request", 0) == kCFCompareEqualTo)
    {
      v15 = *(a1 + 16);
      if (v15 && std::__shared_weak_count::lock(v15))
      {
        operator new();
      }

      sub_100013CC4();
    }

    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = cf;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Unknown message %@", &buf, 0xCu);
    }

    v21(v20, 4);
    sub_100005978(&v17);
  }

  else
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E Message of invalid format:", &buf, 2u);
    }

    *&buf = off_101F486C8;
    *(&buf + 1) = a1;
    p_buf = &buf;
    logger::CFTypeRefLogger();
    sub_100007E44(&buf);
    v21(v20, 4);
  }

  sub_10000A1EC(&v18);
  return sub_100005978(&cf);
}

void sub_10151B5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10151B62C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    (result[2])(result, &v5, &v3, a2, 0);
    sub_1002030AC(&v4);
    sub_10000A1EC(&v3);
    return sub_100005978(&v5);
  }

  return result;
}

void sub_10151B698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_1002030AC(va1);
  sub_10000A1EC(va);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

const void **sub_10151B6C0(const void **result, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v5 = result[4];
  if (v5)
  {
    v11 = 0;
    sub_10151B188(&v9, result[6], a2);
    v10 = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    v5[2](v5, &v11, &v9, a4, a5);
    sub_1002030AC(&v10);
    sub_10000A1EC(&v9);
    return sub_100005978(&v11);
  }

  return result;
}

void sub_10151B76C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  sub_1002030AC((v2 + 8));
  sub_10000A1EC(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

void sub_10151B798(uint64_t a1)
{
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  LOBYTE(v48) = 1;
  DWORD1(v48) = *(a1 + 380);
  WORD4(v48) = *(a1 + 376);
  BYTE10(v48) = *(a1 + 2000);
  v2 = *(a1 + 56);
  __p[0] = *(a1 + 48);
  __p[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 1, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  v3 = v45;
  v4 = v46;
  if (v45 != v46)
  {
    v5 = v47;
    do
    {
      if (v47(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v46);
    v6 = v46;
    if (v3 != v46)
    {
      v42 = (a1 + 2016);
      do
      {
        v7 = *v3;
        v8 = *(a1 + 232);
        v9 = *v8;
        v10 = v8[1];
        if (v9 != v10)
        {
          while ((*v9)[2].__r_.__value_.__s.__data_[1] || HIDWORD((*v9)[2].__r_.__value_.__r.__words[0]) != v7)
          {
            v9 += 2;
            if (v9 == v10)
            {
              goto LABEL_52;
            }
          }
        }

        if (v9 != v10)
        {
          v12 = *v9;
          v11 = v9[1];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v12 && !v12[2].__r_.__value_.__s.__data_[1])
          {
            v44 = 0;
            memset(__p, 0, sizeof(__p));
            LODWORD(__p[0]) = v7;
            v13 = 1200;
            if (v7 == 1)
            {
              v13 = 392;
            }

            v14 = 1996;
            if (v7 == 1)
            {
              v14 = 1188;
            }

            LODWORD(v44) = *(a1 + v13);
            BYTE4(v44) = *(a1 + v14);
            if (isReal() && v12[2].__r_.__value_.__s.__data_[0] == 1)
            {
              std::string::operator=(&__p[1], v12 + 1);
              v15 = *v42;
              if (*v42)
              {
                v16 = a1 + 2016;
                do
                {
                  if (*(v15 + 32) >= v7)
                  {
                    v16 = v15;
                  }

                  v15 = *(v15 + 8 * (*(v15 + 32) < v7));
                }

                while (v15);
                if (v16 != v42 && v7 >= *(v16 + 32))
                {
                  BYTE5(v44) = *(v16 + 64) == 2;
                }
              }

              v17 = sub_100007A6C(a1 + 2032, &__p[1]);
              if (a1 + 2040 != v17)
              {
                if (*(v17 + 56) == 1)
                {
                  v18 = *(v17 + 60) & 1;
                }

                else
                {
                  v18 = 0;
                }

                BYTE6(v44) = v18;
              }

              v19 = sub_100007A6C(a1 + 2056, &__p[1]);
              if (a1 + 2064 != v19)
              {
                HIBYTE(v44) = *(v19 + 56);
              }
            }

            v20 = *(&v49 + 1);
            if (*(&v49 + 1) >= v50)
            {
              v23 = sub_10138D5C4(&v49, __p);
            }

            else
            {
              **(&v49 + 1) = __p[0];
              v21 = (v20 + 8);
              if (SHIBYTE(__p[3]) < 0)
              {
                sub_100005F2C(v21, __p[1], __p[2]);
              }

              else
              {
                v22 = *&__p[1];
                *(v20 + 24) = __p[3];
                *v21 = v22;
              }

              *(v20 + 32) = v44;
              v23 = v20 + 40;
            }

            *(&v49 + 1) = v23;
            if (SHIBYTE(__p[3]) < 0)
            {
              operator delete(__p[1]);
            }
          }

          if (v11)
          {
            sub_100004A34(v11);
          }
        }

        do
        {
LABEL_52:
          ++v3;
        }

        while (v3 != v4 && (v5(*v3) & 1) == 0);
      }

      while (v3 != v6);
    }
  }

  v24 = (a1 + 336);
  if (!sub_10138D4F4((a1 + 336), &v48))
  {
    *v24 = v48;
    *(a1 + 343) = *(&v48 + 7);
    if (v24 != &v48)
    {
      v25 = *(&v49 + 1);
      p_size = v49;
      v27 = *(&v49 + 1) - v49;
      v28 = *(a1 + 352);
      if (*(a1 + 368) - v28 < *(&v49 + 1) - v49)
      {
        v29 = 0xCCCCCCCCCCCCCCCDLL * (v27 >> 3);
        sub_10138D8A4((a1 + 352));
        if (v29 <= 0x666666666666666)
        {
          v30 = 0x999999999999999ALL * ((*(a1 + 368) - *(a1 + 352)) >> 3);
          if (v30 <= v29)
          {
            v30 = v29;
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 368) - *(a1 + 352)) >> 3) >= 0x333333333333333)
          {
            v31 = 0x666666666666666;
          }

          else
          {
            v31 = v30;
          }

          if (v31 <= 0x666666666666666)
          {
            sub_10138D750(a1 + 352, v31);
          }
        }

        sub_1000CE3D4();
      }

      v32 = *(a1 + 360);
      if (v32 - v28 >= v27)
      {
        if (v49 != *(&v49 + 1))
        {
          do
          {
            v37 = v28;
            v39 = *p_size;
            v38 = (p_size + 1);
            *v28 = v39;
            v40 = (v28 + 1);
            std::string::operator=(v40, v38);
            v37[4] = v38[1].__r_.__value_.__r.__words[0];
            p_size = &v38[1].__r_.__value_.__l.__size_;
            v28 = &v40[1].__r_.__value_.__l.__size_;
          }

          while (p_size != v25);
          v28 = v37 + 5;
          v32 = *(a1 + 360);
        }

        while (v32 != v28)
        {
          if (*(v32 - 9) < 0)
          {
            operator delete(*(v32 - 32));
          }

          v32 -= 40;
        }

        *(a1 + 360) = v28;
      }

      else
      {
        v33 = v49 + v32 - v28;
        if (v32 != v28)
        {
          do
          {
            v35 = *p_size;
            v34 = (p_size + 1);
            *v28 = v35;
            v36 = (v28 + 1);
            std::string::operator=(v36, v34);
            v36[1].__r_.__value_.__r.__words[0] = v34[1].__r_.__value_.__r.__words[0];
            p_size = &v34[1].__r_.__value_.__l.__size_;
            v28 = &v36[1].__r_.__value_.__l.__size_;
          }

          while (p_size != v33);
          v32 = *(a1 + 360);
        }

        *(a1 + 360) = sub_1015207C0(a1 + 352, v33, v25, v32);
      }
    }

    v41 = *(a1 + 328);
    if (v41)
    {
      (*(*v41 + 48))(v41, a1 + 336);
    }

    sub_10151BD38(a1, &v48);
  }

  __p[0] = &v49;
  sub_10052EF38(__p);
}

void sub_10151BCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 + 360) = v28;
  a13 = a12;
  sub_10052EF38(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10151BD38(uint64_t result, uint64_t a2)
{
  if (*(result + 280) == 1)
  {
    v3 = result;
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_10138CE50(a2, &valuePtr);
      v5 = SHIBYTE(v63) >= 0 ? &valuePtr : valuePtr;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I updating watch with my connectivity state: %{public}s", &buf, 0xCu);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(valuePtr);
      }
    }

    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = theDict;
      theDict = Mutable;
      *&valuePtr = v7;
      sub_1000296E0(&valuePtr);
    }

    v8 = *(a2 + 4);
    if (v8)
    {
      if (v8 == 2)
      {
        v9 = kCFBooleanTrue;
      }

      else
      {
        v9 = kCFBooleanFalse;
      }

      CFDictionaryAddValue(theDict, @"AirplaneMode", v9);
    }

    if (*(a2 + 8))
    {
      if (*(a2 + 8) == 1)
      {
        v10 = kCFBooleanTrue;
      }

      else
      {
        v10 = kCFBooleanFalse;
      }

      CFDictionaryAddValue(theDict, @"InternetStatus", v10);
    }

    if (*(a2 + 9))
    {
      v11 = kCFBooleanTrue;
    }

    else
    {
      v11 = kCFBooleanFalse;
    }

    CFDictionaryAddValue(theDict, @"inEmergencyCall", v11);
    if (*(a2 + 10) == 1)
    {
      v12 = kCFBooleanTrue;
    }

    else
    {
      v12 = kCFBooleanFalse;
    }

    CFDictionaryAddValue(theDict, @"wifiStatus", v12);
    v56 = 0;
    v13 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v44 = v3;
    if (v13)
    {
      v14 = v56;
      v56 = v13;
      *&valuePtr = v14;
      sub_1000279DC(&valuePtr);
    }

    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    if (v15 != v16)
    {
      v17 = (v15 + 8);
      do
      {
        v55 = 0;
        v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v18)
        {
          v19 = v55;
          v55 = v18;
          *&valuePtr = v19;
          sub_1000296E0(&valuePtr);
        }

        v20 = v17 - 8;
        v21 = v55;
        if (*(v17 - 2) == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        *&buf = 0;
        LODWORD(valuePtr) = v22;
        v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        if (v23)
        {
          v24 = buf;
          *&buf = v23;
          *&valuePtr = v24;
          sub_100029A48(&valuePtr);
        }

        value = buf;
        *&buf = 0;
        sub_100029A48(&buf);
        CFDictionaryAddValue(v21, @"slotID", value);
        sub_100029A48(&value);
        v25 = v55;
        if (*(v17 + 23) < 0)
        {
          sub_100005F2C(__p, *v17, *(v17 + 1));
        }

        else
        {
          v26 = *v17;
          v53 = *(v17 + 2);
          *__p = v26;
        }

        if (SHIBYTE(v53) < 0)
        {
          sub_100005F2C(&buf, __p[0], __p[1]);
        }

        else
        {
          buf = *__p;
          v60 = v53;
        }

        v51 = 0;
        if (SHIBYTE(v60) < 0)
        {
          sub_100005F2C(&valuePtr, buf, *(&buf + 1));
        }

        else
        {
          valuePtr = buf;
          v63 = v60;
        }

        v58[0] = 0;
        if (ctu::cf::convert_copy())
        {
          v27 = v51;
          v51 = v58[0];
          value = v27;
          sub_100005978(&value);
        }

        if (SHIBYTE(v63) < 0)
        {
          operator delete(valuePtr);
        }

        v54 = v51;
        v51 = 0;
        sub_100005978(&v51);
        if (SHIBYTE(v60) < 0)
        {
          operator delete(buf);
        }

        CFDictionaryAddValue(v25, @"persona", v54);
        sub_100005978(&v54);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p[0]);
        }

        v29 = v55;
        v30 = *(v17 + 6) - 1;
        v31 = "kUnknown";
        if (v30 <= 5)
        {
          v31 = off_101F48858[v30];
        }

        value = 0;
        *&buf = 0;
        if (ctu::cf::convert_copy(&buf, v31, 0x8000100, kCFAllocatorDefault, v28))
        {
          v32 = value;
          value = buf;
          *&valuePtr = v32;
          sub_100005978(&valuePtr);
        }

        v58[0] = value;
        value = 0;
        sub_100005978(&value);
        CFDictionaryAddValue(v29, @"regStatus", v58[0]);
        sub_100005978(v58);
        if (*(v17 + 28))
        {
          v33 = kCFBooleanTrue;
        }

        else
        {
          v33 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v55, @"regIsSatellite", v33);
        if (*(v17 + 29))
        {
          v34 = kCFBooleanTrue;
        }

        else
        {
          v34 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v55, @"isCellularInternetConnectionActive", v34);
        if (*(v17 + 30))
        {
          v35 = kCFBooleanTrue;
        }

        else
        {
          v35 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v55, @"imsRegisteredForVoice", v35);
        if (*(v17 + 31))
        {
          v36 = kCFBooleanTrue;
        }

        else
        {
          v36 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v55, @"requiresResiliency", v36);
        CFArrayAppendValue(v56, v55);
        sub_1000296E0(&v55);
        v17 = (v17 + 40);
      }

      while (v20 + 40 != v16);
    }

    CFDictionaryAddValue(theDict, @"sims", v56);
    v37 = *(v44 + 264);
    if (v37)
    {
      (*(*v37 + 16))(v37);
      v38 = *(v44 + 264);
      *(v44 + 264) = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    Registry::getTimerService(&v51, *(v44 + 48));
    sub_10000501C(v49, "1s hold outgoing");
    value = v44;
    v39 = *(v44 + 16);
    if (v39)
    {
      v40 = *(v44 + 8);
      v41 = std::__shared_weak_count::lock(v39);
      if (v41)
      {
        v42 = v41;
        v46 = v40;
        v47 = v41;
        atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v41);
        v43 = theDict;
        v48 = theDict;
        if (theDict)
        {
          CFRetain(theDict);
        }

        *v58 = *v49;
        v58[2] = v50;
        v49[0] = 0;
        v49[1] = 0;
        v50 = 0;
        *&buf = v44;
        *(&buf + 1) = v40;
        v46 = 0;
        v47 = 0;
        v60 = v42;
        v61 = v43;
        v48 = 0;
        v64 = 0;
        operator new();
      }
    }

    sub_100013CC4();
  }

  return result;
}

uint64_t sub_10151C604(uint64_t a1)
{
  sub_1000296E0((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_10151C63C(uint64_t a1)
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

void sub_10151C6C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10151C714(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10151C754(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10151C780(ServiceManager::Service *this)
{
  *this = off_101F47FB8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10151C7DC(ServiceManager::Service *this)
{
  *this = off_101F47FB8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10151C85C@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10151C8A0(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10151B060(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10151B060(v4, 0);
}

void sub_10151C948(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v3 = *(v1 + 56);
  __p[0] = *(v1 + 48);
  __p[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100E7EBF4(__p, buf);
  v4 = *(v1 + 256);
  *(v1 + 248) = *buf;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  Registry::createRestModuleOneTimeUseConnection(&v7, *(v1 + 48));
  ctu::RestModule::connect();
  if (v8)
  {
    sub_100004A34(v8);
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
      v11 = 0;
      operator new();
    }
  }

  sub_100013CC4();
}
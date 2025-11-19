uint64_t BasebandSettings::handleBatterySaverMode_sync(uint64_t this, int a2)
{
  if (*(this + 312) != a2)
  {
    return (*(**(this + 128) + 152))();
  }

  return this;
}

uint64_t BasebandSettings::handleInMetroStatus_sync(uint64_t this, int a2)
{
  if (*(this + 313) != a2)
  {
    return (*(**(this + 128) + 176))();
  }

  return this;
}

void BasebandSettings::handleRadioRFDisablingEvent_sync(BasebandSettings *this)
{
  *(this + 162) = 1;
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = CSIBOOLAsString(1);
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I RF is being disabled, setting user initiated airplane mode on to %s", &v2, 0xCu);
  }
}

void BasebandSettings::handleRadioRFDisabledEvent_sync(BasebandSettings *this)
{
  *(this + 161) = 1;
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = CSIBOOLAsString(1);
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I RF has been disabled, setting airplane mode on to %s", &v2, 0xCu);
  }
}

uint64_t BasebandSettings::handleRadioOn_sync(BasebandSettings *this)
{
  *(this + 161) = 0;
  result = capabilities::ct::supportsBatterySaverMode(this);
  if (result)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sending battery saver mode since BB came online", v4, 2u);
    }

    return (*(**(this + 16) + 152))(*(this + 16), *(this + 312));
  }

  return result;
}

void BasebandSettings::handleRadioModeChanged_sync(uint64_t a1)
{
  if ((operator==() & 1) == 0)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = asString();
      v4 = CSIBOOLAsString(*(a1 + 492));
      v6 = 136315394;
      v7 = v3;
      v8 = 2080;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Received radio mode update (%s) with in reset (%s)", &v6, 0x16u);
    }

    v5 = *(a1 + 488);
    if (v5)
    {
      if (v5 == 2)
      {
        BasebandSettings::handleRadioOn_sync(a1);
      }
    }

    else
    {
      BasebandSettings::handleRadioRFDisabledEvent_sync(a1);
    }
  }
}

uint64_t BasebandSettings::handleRadioDownChanged_sync(uint64_t this, int a2)
{
  v2 = *(this + 496);
  if (v2 != a2)
  {
    v3 = this;
    v4 = *(this + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "up";
      if (v2)
      {
        v5 = "down";
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received radio going '%s'", &v6, 0xCu);
    }

    (*(**(v3 + 76) + 48))(*(v3 + 76), 0);
    if (v2)
    {
      BasebandSettings::maybeAbortPendingTransactionsAndClearCache_sync(v3);
      BasebandSettings::resetLastBasebandPriVersions_sync(v3);
      return (*(**(v3 + 16) + 200))(*(v3 + 16));
    }

    else
    {
      v8 = 0;
      BasebandSettings::sendLinedupFiles_sync(v3, &v6);
      return sub_10070CE94(&v6);
    }
  }

  return this;
}

void BasebandSettings::handleSaveDataModeChanged_sync(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 816))
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v6 = *(a1 + 800);
    while (*(v5 + 7) == *(v6 + 7) && rest::operator==())
    {
      v7 = v5[1];
      v8 = v5;
      if (v7)
      {
        do
        {
          v5 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v5 = v8[2];
          v9 = *v5 == v8;
          v8 = v5;
        }

        while (!v9);
      }

      v10 = v6[1];
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
          v11 = v6[2];
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  v12 = *(a1 + 800);
  if (v12 != (a1 + 808))
  {
    v13 = a2 + 1;
    do
    {
      v14 = *v13;
      v15 = *(v12 + 7);
      if (!*v13)
      {
        goto LABEL_28;
      }

      v16 = v13;
      do
      {
        if (*(v14 + 28) >= v15)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v15));
      }

      while (v14);
      if (v16 == v13 || v15 < *(v16 + 7) || (rest::operator==() & 1) == 0)
      {
LABEL_28:
        BasebandSettings::sendSmartDataModeToBB_sync(a1);
      }

      v17 = v12[1];
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
          v18 = v12[2];
          v9 = *v18 == v12;
          v12 = v18;
        }

        while (!v9);
      }

      v12 = v18;
    }

    while (v18 != (a1 + 808));
  }
}

void BasebandSettings::sendSmartDataModeToBB_sync(uint64_t a1)
{
  if (capabilities::ct::supports5G(a1))
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Sending smart data mode settings for %s to baseband", &buf, 0xCu);
    }

    subscriber::makeSimSlotRange();
    v4 = *(&buf + 1);
    v3 = buf;
    if (buf != *(&buf + 1))
    {
      v5 = v14;
      do
      {
        if (v5(*v3))
        {
          break;
        }

        ++v3;
      }

      while (v3 != v4);
      v6 = *(&buf + 1);
      if (v3 != *(&buf + 1))
      {
        v7 = (a1 + 808);
        do
        {
          v8 = *v3;
          v9 = *v7;
          if (!*v7)
          {
            goto LABEL_17;
          }

          v10 = a1 + 808;
          do
          {
            if (*(v9 + 28) >= v8)
            {
              v10 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v8));
          }

          while (v9);
          if (v10 != v7 && v8 >= *(v10 + 28))
          {
            (*(**(a1 + 128) + 160))(*(a1 + 128));
          }

          else
          {
LABEL_17:
            v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v8);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *v12 = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N Smart data mode settings unavailable", v12, 2u);
            }
          }

          do
          {
            ++v3;
          }

          while (v3 != v4 && (v5(*v3) & 1) == 0);
        }

        while (v3 != v6);
      }
    }
  }
}

void BasebandSettings::lteWithCDRXState(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void BasebandSettings::copyBundleSignature_sync(CBSignUtilityLogger *a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  MyInstance = CBSignUtilityLogger::getMyInstance(a1);
  CBSignUtilityLogger::setLogFunction(MyInstance, sub_10070A198);
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  ctu::path_split();
  v17[0] = v20;
  v17[1] = v18;
  v5 = sub_1004EE0B4(v17, buf);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(*buf);
  }

  v6 = capabilities::ct::supportsECDSASignatures(v5);
  if (v6)
  {
    v7 = *(a1 + 5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v9 = v18;
      if (v19 < 0)
      {
        v9 = v18[0];
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Extracting version 3 of the %s signature", buf, 0xCu);
    }
  }

  else
  {
    v10 = capabilities::ct::supportsSHA2Signature(v6);
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *(a1 + 5);
    v8 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v12 = v18;
      if (v19 < 0)
      {
        v12 = v18[0];
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Extracting version 2 of the %s signature", buf, 0xCu);
    }
  }

  capabilities::ct::compatibleHardwareConfigurationString(buf, v8);
  copyPRISignatureForDeviceNameOnSHA();
  if (&v16 != a2)
  {
    v13 = *a2;
    *a2 = v16;
    v16 = 0;
    v17[0] = v13;
    sub_10002D760(v17);
  }

  v10 = sub_10002D760(&v16);
  if (v23 < 0)
  {
    operator delete(*buf);
  }

LABEL_20:
  if (!*a2)
  {
    v14 = *(a1 + 5);
    v10 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      sub_10177C1E4(v20, v18, v14);
    }
  }

  v15 = CBSignUtilityLogger::getMyInstance(v10);
  CBSignUtilityLogger::destroyMyInstance(v15);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_10070A198(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_101FBAA28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAA28))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FBAA20, kCtLoggingSystemName, "set.bb");
    __cxa_guard_release(&qword_101FBAA28);
  }

  v2 = qword_101FBAA20;
  if (os_log_type_enabled(qword_101FBAA20, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s", &v3, 0xCu);
  }
}

void BasebandSettings::sendFile_sync(uint64_t a1, uint64_t a2, FileType a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v25 = *(a4 + 16);
  }

  ctu::path_join_impl();
  cf = 0;
  BasebandSettings::copyBundleSignature_sync(a1, &cf);
  v14 = sub_100322918();
  sub_1001210EC((a1 + 208), a8);
  v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a5 + 23) >= 0)
    {
      v16 = a5;
    }

    else
    {
      v16 = *a5;
    }

    v17 = a3;
    v18 = asString(a3);
    v19 = asString();
    if (*(a4 + 23) >= 0)
    {
      v20 = a4;
    }

    else
    {
      v20 = *a4;
    }

    *buf = 136315906;
    v27 = v16;
    v28 = 2080;
    v29 = v18;
    v30 = 2080;
    v31 = v19;
    v32 = 2082;
    v33 = v20;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Preparing to send the file %s (%s) format %s from %{public}s", buf, 0x2Au);
    a3 = v17;
  }

  BasebandSettingsDriver::sendFile(buf, *(a1 + 128));
  SendFileProxy::fileType(buf, a3);
  SendFileProxy::fileName();
  SendFileProxy::bundlePath();
  SendFileProxy::filePathToBaseband();
  SendFileProxy::fileFormat();
  v22 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v21 = SendFileProxy::signature();
  SendFileProxy::bypassValidation(v21, v14);
  SendFileProxy::simInstance();
  sub_10002D760(&v22);
  SendFileProxy::~SendFileProxy(buf);
  sub_10002D760(&cf);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t BasebandSettings::handleDumpState_sync(BasebandSettings *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(this + 160));
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fRegisteredForCallbacks: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(this + 161));
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fAirplaneModeOn: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CSIBOOLAsString(*(this + 162));
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fUserInitiatedAirplaneMode: %s", buf, 0xCu);
  }

  v6 = *(this + 31);
  if (v6)
  {
    v7 = (this + 248);
    do
    {
      if (v6[7] >= 1)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * (v6[7] < 1)];
    }

    while (v6);
    if (v7 != (this + 248) && v7[7] <= 1)
    {
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = asString();
        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I fRegStatus: %s", buf, 0xCu);
      }
    }
  }

  v10 = *(this + 5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = asString();
    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I fFilePushReason: %s", buf, 0xCu);
    v10 = *(this + 5);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(this + 65);
    if (v12)
    {
      if (*(v12 + 68) == 2)
      {
        v13 = "granted";
      }

      else
      {
        v13 = "waiting";
      }
    }

    else
    {
      v13 = "none";
    }

    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Prevent baseband reset assertion: %s", buf, 0xCu);
    v10 = *(this + 5);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(this + 63);
    if (v14)
    {
      if (*(v14 + 68) == 2)
      {
        v15 = "granted";
      }

      else
      {
        v15 = "waiting";
      }
    }

    else
    {
      v15 = "none";
    }

    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Exclusive baseband operation assertion: %s", buf, 0xCu);
  }

  v16 = *(this + 81);
  if (v16 != (this + 656))
  {
    do
    {
      v17 = *(*(**(this + 6) + 16))(*(this + 6), *(v16 + 8));
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v16 + 5))
        {
          v18 = "Active";
        }

        else
        {
          v18 = "Pending";
        }

        *buf = 136315138;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s file push transaction", buf, 0xCu);
      }

      v19 = *(v16 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v16 + 2);
          v21 = *v20 == v16;
          v16 = v20;
        }

        while (!v21);
      }

      v16 = v20;
    }

    while (v20 != (this + 656));
  }

  v22 = *(this + 5);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = asString();
    *buf = 136315138;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I fLTEWithCDRXState: %s", buf, 0xCu);
  }

  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  *__src = 0u;
  *__p = 0u;
  v45 = 0u;
  v46 = 0u;
  *buf = 0u;
  v44 = 0u;
  sub_10000C320(buf);
  v24 = *(this + 84);
  if (v24 != (this + 680))
  {
    do
    {
      v25 = subscriber::asString();
      strlen(v25);
      v26 = sub_10000C030(&v44);
      sub_10000C030(v26);
      v27 = *(v24 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v24 + 2);
          v21 = *v28 == v24;
          v24 = v28;
        }

        while (!v21);
      }

      v24 = v28;
    }

    while (v28 != (this + 680));
  }

  v29 = *(this + 5);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if ((BYTE8(v50) & 0x10) != 0)
    {
      v31 = v50;
      if (v50 < __src[1])
      {
        *&v50 = __src[1];
        v31 = __src[1];
      }

      v32 = __src[0];
    }

    else
    {
      if ((BYTE8(v50) & 8) == 0)
      {
        v30 = 0;
        v40 = 0;
LABEL_67:
        *(&__dst + v30) = 0;
        p_dst = &__dst;
        if (v40 < 0)
        {
          p_dst = __dst;
        }

        *v41 = 136446210;
        v42 = p_dst;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I fTurnedOffCellular: [%{public}s]", v41, 0xCu);
        if (v40 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_71;
      }

      v32 = *(&v45 + 1);
      v31 = *(&v46 + 1);
    }

    v30 = v31 - v32;
    if ((v31 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v30 >= 0x17)
    {
      operator new();
    }

    v40 = v31 - v32;
    if (v30)
    {
      memmove(&__dst, v32, v30);
    }

    goto LABEL_67;
  }

LABEL_71:
  v34 = *(this + 78);
  if (v34 != (this + 632))
  {
    do
    {
      (*(**(v34 + 5) + 16))(*(v34 + 5));
      v35 = *(v34 + 1);
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
          v36 = *(v34 + 2);
          v21 = *v36 == v34;
          v34 = v36;
        }

        while (!v21);
      }

      v34 = v36;
    }

    while (v36 != (this + 632));
  }

  (*(**(this + 76) + 32))(*(this + 76));
  (*(**(this + 16) + 208))(*(this + 16));
  *&v44 = v37;
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v45);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10070ADCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t BasebandSettings::attachAPNSettingFromUIAllowed(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[74];
  if (v3)
  {
    sub_1000224C8(v15, a3);
    v5 = v15;
    (*(*v3 + 32))(v3, a2, v15);
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1174405120;
    v13[2] = sub_10070AFE0;
    v13[3] = &unk_101E74448;
    v13[4] = a1;
    v5 = v14;
    sub_1000224C8(v14, a3);
    v11 = 0;
    v12 = 0;
    sub_100004AA0(&v11, a1 + 1);
    v7 = a1[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_100714CE8;
    block[3] = &unk_101E75630;
    block[5] = v11;
    v10 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v13;
    dispatch_async(v7, block);
    if (v10)
    {
      sub_100004A34(v10);
    }

    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  return sub_10000FF50(v5);
}

void sub_10070AFB4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10070AFE0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Attach APN module is not present, editing not allowed", v4, 2u);
  }

  return sub_10000FFD0(a1 + 40, 0);
}

void BasebandSettings::setAttachAPNSettingsType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 592);
  if (v4)
  {
    sub_10009CF40(v9, a4);
    (*(*v4 + 64))(v4, a2, a3, v9);
    sub_10002B644(v9);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No Attach APN Manager", v8, 2u);
    }
  }
}

void sub_10070B144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

uint64_t BasebandSettings::isAttachAPNTypeSupported(uint64_t a1)
{
  result = *(a1 + 592);
  if (result)
  {
    return AttachApnModuleInterface::isAttachAPNTypeSupported();
  }

  return result;
}

uint64_t BasebandSettings::triggerAttachApnBundleCheck(uint64_t a1)
{
  result = *(a1 + 592);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void BasebandSettings::resetNetworkSettings(BasebandSettings *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void BasebandSettings::fileTransferComplete(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "failure";
    if (a3)
    {
      v6 = "success";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I File transfer complete: %s", &v7, 0xCu);
  }

  if (*(a1 + 232))
  {
    sub_10000FFD0(a1 + 208, a3);
    v9 = 0;
    sub_10027E8B4(a1 + 208, &v7);
    sub_10000FF50(&v7);
  }
}

void sub_10070B3D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void BasebandSettings::fileTransferWaitingForConfirmation(BasebandSettings *this)
{
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I File transfer waiting for confirmation", v2, 2u);
  }
}

void BasebandSettings::prepareForFilePush(uint64_t a1, uint64_t a2)
{
  sub_100714E00(&v3 + 1, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void BasebandSettings::prepareForFileTransfer_sync(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void **a5, CFDictionaryRef *a6)
{
  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v13 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = asString();
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle setup with bundle type (%s) and change type (%s)", buf, 0x16u);
  }

  if (*a6)
  {
    Value = CFDictionaryGetValue(*a6, kCTPostponementInfoAvailable);
    v15 = Value;
    if (Value && (v16 = CFGetTypeID(Value), v16 == CFStringGetTypeID()))
    {
      if (CFEqual(v15, @"CarrierInfo"))
      {
        sub_100010024(&v26, a5);
        sub_100010024(&v25, a6);
        BasebandSettings::handleCarrierInfo_sync(a1, a2, a3, a4, &v26, &v25);
        sub_10001021C(&v25);
        v17 = &v26;
LABEL_16:
        sub_10001021C(v17);
        return;
      }

      if (CFEqual(v15, @"DefaultCarrierInfo"))
      {
        sub_100010024(&v24, a5);
        sub_100010024(&v23, a6);
        BasebandSettings::handleDefaultCarrierInfo_sync(a1, a2, a3, a4, &v24, &v23);
        sub_10001021C(&v23);
        v17 = &v24;
        goto LABEL_16;
      }

      if (CFEqual(v15, @"SIMCarrierInfo"))
      {
        sub_100010024(&v22, a5);
        sub_100010024(&v21, a6);
        BasebandSettings::handleSIMCarrierInfo_sync(a1, a2, a3, a4, &v22, &v21);
        sub_10001021C(&v21);
        v17 = &v22;
        goto LABEL_16;
      }

      v19 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        sub_10177C28C(v20, buf, v27, v19);
      }
    }

    else if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      sub_10177C314();
    }
  }

  else
  {
    v18 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N Missing activation info dictionary", buf, 2u);
    }
  }
}

void sub_10070B874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandSettings::triggerFileTransferForAnySim_sync(uint64_t result, uint64_t a2)
{
  if (*a2 != a2 + 8)
  {
    v2 = result;
    (*(**(result + 48) + 16))(*(result + 48), *(*a2 + 32));
    v3[0] = off_101E75670;
    v3[1] = v2;
    v3[3] = v3;
    BasebandSettings::sendLinedupFiles_sync(v2, v3);
    return sub_10070CE94(v3);
  }

  return result;
}

void sub_10070B99C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10070CE94(va);
  _Unwind_Resume(a1);
}

void BasebandSettings::sendActiveSubsToBB_sync(BasebandSettings *this)
{
  if (_os_feature_enabled_impl())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    subscriber::makeSimSlotRange();
    v4 = 0;
    v5 = 0;
    v3 = &v4;
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Sending %zu active subs to baseband", buf, 0xCu);
    }

    (*(**(this + 16) + 168))(*(this + 16), &v3);
    sub_10006DCAC(&v3, v4);
  }
}

uint64_t BasebandSettings::turnOffCellular(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v3[0] = 0;
    v3[1] = 0;
    sub_100004AA0(v3, (a1 + 8));
    operator new();
  }

  return result;
}

uint64_t BasebandSettings::isTurnedOffCellular(uint64_t a1, int a2)
{
  if (_os_feature_enabled_impl())
  {
    v7 = a1;
    v8 = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_1007159D0;
    v9[3] = &unk_101E756F0;
    v9[4] = a1 + 8;
    v9[5] = &v7;
    v10 = v9;
    v4 = *(a1 + 24);
    if (*(a1 + 32))
    {
      v17 = 0;
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_100069DB0;
      v14 = &unk_101E75730;
      v15 = &v17;
      v16 = &v10;
      dispatch_async_and_wait(v4, &block);
    }

    else
    {
      v17 = 0;
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_100058E54;
      v14 = &unk_101E75710;
      v15 = &v17;
      v16 = &v10;
      dispatch_sync(v4, &block);
    }

    v5 = v17;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t BasebandSettings::handlePersonalityEvent_sync(uint64_t a1, uint64_t a2, PersonalityInfo **a3)
{
  v6 = (a1 + 96);
  Registry::getTelephonyCapabilities(__p, *(a1 + 96));
  v7 = (*(**__p + 88))(*__p);
  if (*&__p[8])
  {
    sub_100004A34(*&__p[8]);
  }

  if (v7)
  {
    v8 = *(a2 + 24);
    if (v8 == 1 || v8 == 4)
    {
      v9 = *a3;
      if (!*(*a3 + 49))
      {
        v10 = isReal();
        v9 = *a3;
        if (v10)
        {
          v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v9 + 13));
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            asString();
            v12 = __p[23] >= 0 ? __p : *__p;
            *buf = 136446210;
            *&buf[4] = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Handling personality event %{public}s for TAR", buf, 0xCu);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          subscriber::makeSimSlotRange();
          v13 = *__p;
          v14 = *&__p[8];
          if (*__p != *&__p[8])
          {
            v15 = *&__p[16];
            do
            {
              if (v15(*v13))
              {
                break;
              }

              ++v13;
            }

            while (v13 != v14);
            v16 = *&__p[8];
            while (v13 != v16)
            {
              v17 = *v13;
              TARandomizationSettingFromUserPrefOrCarrierBundle_sync = BasebandSettings::getTARandomizationSettingFromUserPrefOrCarrierBundle_sync(a1, v17);
              (*(**(a1 + 128) + 192))(*(a1 + 128), v17, *&TARandomizationSettingFromUserPrefOrCarrierBundle_sync & ((TARandomizationSettingFromUserPrefOrCarrierBundle_sync & 0x100) >> 8));
              do
              {
                ++v13;
              }

              while (v13 != v14 && (v15(*v13) & 1) == 0);
            }
          }

          goto LABEL_36;
        }
      }

      v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v9 + 13));
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      asString();
      if (__p[23] >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = *__p;
      }

      *buf = 136446210;
      *&buf[4] = v20;
      v21 = "#I Ignoring personality event %{public}s for TAR";
    }

    else
    {
      v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*a3 + 13));
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      asString();
      if (__p[23] >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = *__p;
      }

      *buf = 136446210;
      *&buf[4] = v22;
      v21 = "#I Skipping personality event %{public}s for TAR";
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

LABEL_36:
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = isReal();
    if (result)
    {
      v24 = *a3;
      if (!*(*a3 + 49))
      {
        v25 = *(a2 + 24);
        if (*(a2 + 24))
        {
          if (v25 == 6)
          {
            v36 = *(a1 + 40);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = PersonalityInfo::logPrefix(v24);
              v38 = asString();
              *__p = 136315394;
              *&__p[4] = v37;
              *&__p[12] = 2080;
              *&__p[14] = v38;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s %s: turnOffCellular reset to OFF", __p, 0x16u);
              v24 = *a3;
            }

            sub_10012B6B8(a1 + 672, v24 + 13);
            v39 = 0;
LABEL_61:
            BasebandSettings::notifyTurnedOffCellularChanged_sync(a1, a3, v39);
            return BasebandSettings::updateTurnedOffCellularProperty_sync(a1);
          }

          if (v25 != 5)
          {
            return BasebandSettings::updateTurnedOffCellularProperty_sync(a1);
          }
        }

        ServiceMap = Registry::getServiceMap(*v6);
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
        *__p = v28;
        v32 = sub_100009510(&v27[1].__m_.__sig, __p);
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
LABEL_53:
            (*(*v34 + 64))(buf, v34, a2, @"TurnedOffCellular", 0, 0, 1);
            v40 = *buf;
            sub_10000A1EC(buf);
            if ((v35 & 1) == 0)
            {
              sub_100004A34(v33);
            }

            v41 = *(a1 + 40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = PersonalityInfo::logPrefix(*a3);
              v43 = asString();
              v44 = "ON";
              *__p = 136315650;
              *&__p[4] = v42;
              *&__p[12] = 2080;
              if (!v40)
              {
                v44 = "OFF";
              }

              *&__p[14] = v43;
              *&__p[22] = 2080;
              v46 = v44;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s %s: turnOffCellular is %s", __p, 0x20u);
            }

            if (!v40)
            {
              return BasebandSettings::updateTurnedOffCellularProperty_sync(a1);
            }

            sub_1000C4284(a1 + 672, *a3 + 13);
            v39 = 1;
            goto LABEL_61;
          }
        }

        else
        {
          v34 = 0;
        }

        std::mutex::unlock(v27);
        v33 = 0;
        v35 = 1;
        goto LABEL_53;
      }
    }
  }

  return result;
}

void sub_10070C40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

const void **BasebandSettings::notifyTurnedOffCellularChanged_sync(uint64_t a1, PersonalityInfo **a2, int a3)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v13 = 0;
    sub_1000296E0(&v13);
    Mutable = theDict;
  }

  CFDictionarySetValue(Mutable, kCTCapabilityCanSet, kCFBooleanTrue);
  if (a3)
  {
    v7 = kCFBooleanTrue;
  }

  else
  {
    v7 = kCFBooleanFalse;
  }

  CFDictionarySetValue(theDict, kCTCapabilityStatus, v7);
  v11 = 0;
  v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v8)
  {
    v11 = v8;
    v13 = 0;
    sub_1000296E0(&v13);
    v8 = v11;
  }

  CFDictionarySetValue(v8, kCTCapabilityTurnOffCellular, theDict);
  v9 = *(a1 + 824);
  PersonalityInfo::uuid(&v13, *a2);
  (*(*v9 + 16))(v9, v13, v11);
  sub_1000475BC(&v13);
  sub_1000296E0(&v11);
  return sub_1000296E0(&theDict);
}

void sub_10070C5B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_1000475BC(va2);
  sub_1000296E0(va);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

uint64_t BasebandSettings::updateTurnedOffCellularProperty_sync(BasebandSettings *this)
{
  memset(&v4[7], 0, 24);
  subscriber::makeSimSlotRange();
  v4[0] = 1;
  memset(&v4[2], 0, 32);
  v4[1] = this + 696;
  v2 = sub_100715A28(&v4[3], this + 736);
  if (v2 != (this + 672))
  {
    sub_100715C7C(v2, *(this + 84), this + 85);
  }

  return sub_100715BA4(v4);
}

uint64_t sub_10070C834(uint64_t a1)
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

uint64_t sub_10070C8B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10070C94C(uint64_t a1)
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

void sub_10070C9CC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10070C9CC(a1, *a2);
    sub_10070C9CC(a1, *(a2 + 1));
    sub_10001021C(a2 + 33);
    sub_10001021C(a2 + 32);
    if (a2[239] < 0)
    {
      operator delete(*(a2 + 27));
    }

    if (a2[215] < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (a2[191] < 0)
    {
      operator delete(*(a2 + 21));
    }

    if (a2[159] < 0)
    {
      operator delete(*(a2 + 17));
    }

    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    if (a2[111] < 0)
    {
      operator delete(*(a2 + 11));
    }

    if (a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void sub_10070CB30(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10070CC04);
  __cxa_rethrow();
}

void sub_10070CB70(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10070CBC4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10070CC04(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10070CC30(ServiceManager::Service *this)
{
  *this = off_101E74668;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10070CC8C(ServiceManager::Service *this)
{
  *this = off_101E74668;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10070CD0C@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10070CD50(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v6 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    v4.var0.fObj = &v6;
    BasebandSettings::notifyServiceBootstrap(v2, v4);
  }

  v5.var0.fObj = &v6;
  BasebandSettings::notifyServiceBootstrap(v2, v5);
}

void sub_10070CDD8(uint64_t a1, xpc_object_t *x1_0, NSObject **a3)
{
  v4 = *(a1 + 8);
  if (*x1_0)
  {
    xpc_retain(*x1_0);
  }

  else
  {
    xpc_null_create();
  }

  v6 = *a3;
  v9 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v6);
    v7.var0.fObj = &v9;
    BasebandSettings::notifyServiceMigration(v4, v10, v7);
  }

  v8.var0.fObj = &v9;
  BasebandSettings::notifyServiceMigration(v4, v5, v8);
}

uint64_t sub_10070CE94(uint64_t a1)
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

uint64_t sub_10070CF14(uint64_t a1)
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

uint64_t *sub_10070CF94(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = *(v2 + 128);
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
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

  (*(**(v2 + 608) + 24))(*(v2 + 608));
  ctu::RestModule::disconnect((v2 + 144));
  for (i = *(v2 + 80); i != v2 + 72; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC((v2 + 72));
  sub_1000FF844(&v9);
  return sub_1000049E0(&v8);
}

void sub_10070D0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
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

void sub_10070D114(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  (*(**(v1 + 128) + 24))(*(v1 + 128));
  operator delete();
}

void sub_10070D1F4(void *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v6 = 0;
  v7 = 0;
  sub_100004AA0(buf, (v2 + 8));
  sub_10070E1B0();
}

void sub_10070D968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10070DA74(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10070EF68;
  aBlock[3] = &unk_101E74970;
  aBlock[4] = a1;
  aBlock[5] = a3;
  aBlock[6] = a4;
  v8 = _Block_copy(aBlock);
  sub_100004AA0(&v6, a1);
  sub_10070EFB4(a2, &v6, *(a1 + 16), &v8);
}

void sub_10070DB50(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/prefs-nb/imeis");
  v4[0] = off_101E74B58;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10070DC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10070DC30(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/registration_status");
  v4[0] = off_101E74CD8;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10070DCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10070DD10(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/is_postponement_ticket_available");
  v4[0] = off_101E74F68;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10070DDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10070DDF0(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/suppress_sim_alerts");
  v4[0] = off_101E74FE8;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10070DEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10070DED0(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_10071156C(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_10070DF34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, dispatch_object_t *a5, void *aBlock)
{
  if (a2 && aBlock && *a5)
  {
    v11 = _Block_copy(aBlock);
    v12 = v11;
    object = *a5;
    *a5 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = sub_100711A44;
    v15[3] = &unk_101E75168;
    v13 = a4[1];
    v15[4] = *a4;
    v16 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      v14 = _Block_copy(v11);
    }

    else
    {
      v14 = 0;
    }

    aBlocka = v14;
    (*(*a1 + 40))(a1, a2, a3, &object, v15);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlocka)
    {
      _Block_release(aBlocka);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v12)
    {
      _Block_release(v12);
    }
  }
}

void sub_10070E08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070E0D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  subscriber::makeSimSlotRange();
  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      if (v6(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v5);
    while (v2 != v5)
    {
      v3 = *v2++;
      BasebandSettings::getSupportsTARandomizationFromDeviceAndCarrierBundle_sync(v1, v3);
      BasebandSettings::getTARandomizationSettingFromUserPrefOrCarrierBundle_sync(v1, v3);
      BasebandSettings::sendTARandomizationSwitchState_sync(v1, v3);
      while (v2 != v5 && (v6(*v2) & 1) == 0)
      {
        ++v2;
      }
    }
  }
}

void *sub_10070E21C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E74730;
  sub_10070E314(a1 + 3, a2);
  return a1;
}

void sub_10070E298(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E74730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10070E314(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *a1 = off_101E74780;
    a1[1] = v4;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    *a1 = off_101E74780;
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void sub_10070E398(BasebandSettingsDriverEventHandlerInterface *this)
{
  *this = off_101E74780;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  BasebandSettingsDriverEventHandlerInterface::~BasebandSettingsDriverEventHandlerInterface(this);
}

void sub_10070E3F4(BasebandSettingsDriverEventHandlerInterface *this)
{
  *this = off_101E74780;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  BasebandSettingsDriverEventHandlerInterface::~BasebandSettingsDriverEventHandlerInterface(this);

  operator delete();
}

void sub_10070E464(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        BasebandSettings::basebandSettingsDriverStatus(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10070E4D8(uint64_t a1, NSObject *a2)
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
        BasebandSettings::basebandSettingsDriverEnterLowPower(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_10070E54C(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_1002B0DA4(&v9, a3);
        BasebandSettings::bandCapability(v8, a2, &v9);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10070E5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_10006DCAC(&a10, a11);
  sub_100004A34(v11);
  _Unwind_Resume(a1);
}

void sub_10070E5F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_1002B0DA4(&v9, a3);
        BasebandSettings::activeBands(v8, a2, &v9);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10070E67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_10006DCAC(&a10, a11);
  sub_100004A34(v11);
  _Unwind_Resume(a1);
}

void sub_10070E6A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        BasebandSettings::lteWithCDRXState(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10070E718(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        BasebandSettings::fileTransferComplete(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10070E7A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        BasebandSettings::applicationProcessorStatus(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10070E838(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        BasebandSettings::fileTransferWaitingForConfirmation(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10070E984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10070EA34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74800;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10070EA6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10070EB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10070EC44(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74880;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10070EC7C(void *a1)
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

uint64_t sub_10070ECC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10070EDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10070EE9C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74900;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10070EED4(void *a1)
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

uint64_t sub_10070EF1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10070EF68(void *a1)
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

void sub_10070EFB4(int a1, uint64_t a2, NSObject *a3, void **a4)
{
  sub_10070F24C(v5, a4, a3);
  sub_10070F294(v6, v5);
  sub_10070F074(v6, a2);
}

void sub_10070F074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10070F1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

dispatch_object_t *sub_10070F24C(dispatch_object_t *a1, void **a2, dispatch_object_t object)
{
  *a1 = object;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
    object = *a1;
  }

  a1[1] = v4;
  dispatch_retain(object);
  return a1;
}

_OWORD *sub_10070F294(_OWORD *a1, NSObject **a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_10070F2EC(a1, a2);
  return a1;
}

void sub_10070F2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100082A40((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10070F2EC(uint64_t a1, NSObject **a2)
{
  sub_10070F3C8(v4, a2);
  sub_10070F344(a1 + 24, v4);
  return sub_10070F9E8(v4);
}

uint64_t sub_10070F344(uint64_t a1, NSObject **a2)
{
  sub_10070F3C8(v4, a2);
  sub_10070F414(v5, v4);
  sub_1007E9928(v5, a1);
  sub_100082A40(v5);
  sub_10070F9E8(v4);
  return a1;
}

void sub_10070F3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void, void, uint64_t))
{
  sub_100082A40(&a11);
  sub_10070F9E8(&a9);
  _Unwind_Resume(a1);
}

NSObject **sub_10070F3C8(NSObject **a1, NSObject **a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  if (v4)
  {
    v4 = _Block_copy(v4);
    v3 = *a1;
  }

  a1[1] = v4;
  dispatch_retain(v3);
  return a1;
}

void *sub_10070F414(void *a1, NSObject **a2)
{
  sub_10070F3C8(v4, a2);
  sub_10070F474(a1, v4);
  sub_10070F9E8(v4);
  return a1;
}

void *sub_10070F474(void *a1, NSObject **a2)
{
  *a1 = 0;
  sub_10070F3C8(v4, a2);
  sub_10070F4D4(a1, v4);
  sub_10070F9E8(v4);
  return a1;
}

uint64_t sub_10070F4D4(uint64_t a1, NSObject **a2)
{
  sub_10070F3C8(v6, a2);
  v3 = sub_10070F628(off_101E749D8, v6, (a1 + 8));
  result = sub_10070F9E8(v6);
  if (v3)
  {
    v5 = off_101E749D8;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_10070F550(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v5 = result;
  if (a3 <= 1)
  {
    result = sub_10070F3C8(a2, result);
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

    return sub_10070F9E8(v6);
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result == ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvvEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvvEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10070F628(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_10070F3C8(v7, a2);
  v5 = sub_10070F690(a1, v7, a3);
  sub_10070F9E8(v7);
  return v5;
}

uint64_t sub_10070F690(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_10070F3C8(v5, a2);
  sub_10070F3C8(a3, v5);
  sub_10070F9E8(v5);
  return 1;
}

void *sub_10070F6D8(void *a1)
{
  *a1 = off_101E74A48;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10070F724(void *a1)
{
  *a1 = off_101E74A48;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10070F790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_10070F840(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10070F8C4(void *a1)
{
  *a1 = off_101E74A98;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10070F910(void *a1)
{
  *a1 = off_101E74A98;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_10070F9E8(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10070FB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10070FBC0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74AD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10070FC00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10070FC4C(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_10070FD38(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E74B58;
  a2[1] = v2;
  return result;
}

uint64_t sub_10070FD6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10070FEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10070FF54(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74BD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10070FF8C(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_100710024(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10071015C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10071020C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74C58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100710244(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_1007102DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100710398(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E74CD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007103CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100710488(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E74D58;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007104B4(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, uint64_t a4, uint64_t *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8)
{
  v12 = *a2;
  v13 = *a3;
  v14 = *a7;
  sub_10000FED0(v17, a8);
  v15 = *(a1 + 8);
  sub_1000224C8(v18, v17);
  BasebandSettings::sendFile_sync(v15, v12, v13, a4, a5, a6, v14, v18);
  sub_10000FF50(v18);
  return sub_10000FF50(v17);
}

void sub_100710588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10000FF50(va1);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007105AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007105F8(void *result, void *a2)
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

void sub_100710858(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100710950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_100249B60(va);
  sub_100249BE0(va1);
  sub_100249C60(va2);
  _Unwind_Resume(a1);
}

__n128 sub_1007109F0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74DE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100710A28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = (a1[1] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a3, a4);
}

uint64_t sub_100710A78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100710BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100710C60(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74E68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100710C98(uint64_t a1)
{
  v2 = **(a1 + 8);
  read_rest_value();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, v2);
}

uint64_t sub_100710D1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100710E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100710F04(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74EE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100710F3C(void *a1, xpc *this, uint64_t a3)
{
  v4 = a1[1];
  result = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = *v4;
  v7 = 0x10101000000uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v7) = 1;
  }

  *v4 = v7;
  if (v6 != (v7 & 1))
  {
    v8 = a1[3];
    v9 = a1[4];
    v10 = (a1[2] + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    return v8(v10);
  }

  return result;
}

uint64_t sub_100710FF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007110B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E74F68;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007110E0(uint64_t a1, xpc *this, BOOL a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_100711110(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007111CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E74FE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007111F8(uint64_t a1, xpc *this, BOOL a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_100711228(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100711360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100711410(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E75068;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100711448(void *a1, xpc_object_t *a2)
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

  sub_10062D478(v3, a2);
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

uint64_t sub_100711520(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10071156C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E750E8;
  v5[1] = v3;
  v5[3] = v5;
  sub_1007117D8(v5, a1);
  sub_10070C834(v5);
  return a1;
}

uint64_t sub_100711670(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E750E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007116A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007116F0()
{
  v3 = 0;
  rest::write_rest_value();
  sub_10000501C(&__p, "/cc/props/turned_off_cellular");
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

void sub_100711794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1007117D8(void *result, void *a2)
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

void sub_100711A38(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100711A44(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100135ED0(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void *sub_100711AD0(void *a1, void *a2)
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

void sub_100711B1C(uint64_t a1)
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

uint64_t *sub_100711B70(uint64_t a1)
{
  v2 = a1;
  (*(**(*a1 + 112) + 16))(*(*a1 + 112), @"ICCID", 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  return sub_100146328(&v2);
}

void sub_100711BF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100146328(va);
  _Unwind_Resume(a1);
}

void sub_100711C0C(Registry ****a1)
{
  v1 = **a1;
  if ((*a1)[1])
  {
    if ((*(v1 + 160) & 1) == 0)
    {
      BasebandSettings::registerCallbacks_sync(**a1);
      *(v1 + 160) = 1;
    }

    (*(**(v1 + 128) + 120))(*(v1 + 128));
    (*(**(v1 + 128) + 48))(*(v1 + 128), 3);
    BasebandSettings::significantTimeChange_sync(v1);
    (*(**(v1 + 128) + 96))(*(v1 + 128), *(v1 + 497));
    BasebandSettings::sendSmartDataModeToBB_sync(v1);
    BasebandSettings::sendActiveSubsToBB_sync(v1);
    Registry::getTelephonyCapabilities(buf, *(v1 + 96));
    v2 = (*(**buf + 88))(*buf);
    if (v11)
    {
      sub_100004A34(v11);
    }

    if (v2)
    {
      subscriber::makeSimSlotRange();
      v3 = *buf;
      v4 = v11;
      if (*buf != v11)
      {
        v5 = v12;
        do
        {
          if (v5(LODWORD(v3->__vftable)))
          {
            break;
          }

          v3 = (v3 + 4);
        }

        while (v3 != v4);
        v6 = v11;
        while (v3 != v6)
        {
          v7 = LODWORD(v3->__vftable);
          TARandomizationSettingFromUserPrefOrCarrierBundle_sync = BasebandSettings::getTARandomizationSettingFromUserPrefOrCarrierBundle_sync(v1, v7);
          (*(**(v1 + 128) + 192))(*(v1 + 128), v7, *&TARandomizationSettingFromUserPrefOrCarrierBundle_sync & ((TARandomizationSettingFromUserPrefOrCarrierBundle_sync & 0x100) >> 8));
          do
          {
            v3 = (v3 + 4);
          }

          while (v3 != v4 && (v5(LODWORD(v3->__vftable)) & 1) == 0);
        }
      }
    }
  }

  else
  {
    v9 = *(v1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Device Config Driver went down", buf, 2u);
    }
  }

  operator delete();
}

void sub_100711E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

uint64_t *sub_100711EAC(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 39) < 0)
  {
    sub_100005F2C(__p, *(v1 + 16), *(v1 + 24));
  }

  else
  {
    *__p = *(v1 + 16);
    v8 = *(v1 + 32);
  }

  BasebandSettings::lineupFile_sync(v2, v3);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100711F6C(&v6);
  return sub_1000049E0(&v5);
}

void sub_100711F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_100711F6C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100711F6C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

void sub_100712030(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E751A8;
  sub_100712128(a1 + 3, a2);
}

void sub_1007120AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E751A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100712128(void *a1, uint64_t a2)
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

  sub_1007121B8(a1);
}

void sub_10071219C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007122A8(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E751F8;
  sub_1007123A0(a1 + 3, a2);
}

void sub_100712324(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E751F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007123A0(void *a1, uint64_t a2)
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

  sub_100712430(a1, __p);
}

void sub_100712414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100712430(void *a1, uint64_t a2)
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

  sub_1007124E0(a1);
}

void sub_1007124C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007125CC(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E75248;
  sub_1007126C4(a1 + 3, a2);
}

void sub_100712648(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E75248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007126C4(void *a1, uint64_t a2)
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

  sub_100712754(a1, __p);
}

void sub_100712738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100712754(void *a1, uint64_t a2)
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

  sub_1007124E0(a1);
}

void sub_1007127E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100712870(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E75298;
  sub_100712968(a1 + 3, a2);
}

void sub_1007128EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E75298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100712968(void *a1, uint64_t a2)
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

  sub_1007129F8(a1, __p);
}

void sub_1007129DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007129F8(void *a1, uint64_t a2)
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

  sub_1007124E0(a1);
}

void sub_100712A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100712AA8(void *a1)
{
  *a1 = off_101E752E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100712AF4(void *a1)
{
  *a1 = off_101E752E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100712BCC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101E752E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100712C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100712C14(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100712C54(uint64_t a1)
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
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v5[0] = 0;
        v5[1] = 0;
        sub_100004AA0(v5, (v4 + 8));
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_100712D7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100712DC8(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  BasebandSettings::handleFilePushTransactionResult_sync(*v1, *(v1 + 16), *(v1 + 20));
  sub_100712E30(&v4);
  return sub_1000049E0(&v3);
}

void sub_100712E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100712E30(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100712E30(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100712E84(uint64_t a1)
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

uint64_t *sub_100712F04(uint64_t a1, int *a2)
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

void *sub_100712FEC(void *result, void *a2)
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

void sub_10071324C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_100713264(uint64_t a1, uint64_t a2)
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

void *sub_1007132FC(void *a1)
{
  *a1 = off_101E75398;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_100713354(void *a1)
{
  *a1 = off_101E75398;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_100713444(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E75398;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v5 = a2[2];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void sub_1007134B4(void *a1)
{
  sub_100671F3C(a1 + 8);

  operator delete(a1);
}

void sub_1007134F0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "not granted";
    if (v2)
    {
      v5 = "granted";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Exclusive baseband operation assertion %s", &v6, 0xCu);
  }

  if (v2)
  {
    v8 = 0;
    ctu::rest::AssertionHandle::setHandler_impl();
    sub_10000FF50(&v6);
    (*(**(v3 + 608) + 40))(*(v3 + 608), 4, "Exclusive baseband assertion acquired");
  }
}

uint64_t sub_10071361C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100713668(void *a1)
{
  *a1 = off_101E75418;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_1007136C0(void *a1)
{
  *a1 = off_101E75418;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_1007137B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E75418;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v5 = a2[2];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void sub_100713820(void *a1)
{
  sub_100671F3C(a1 + 8);

  operator delete(a1);
}

void sub_10071385C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "not granted";
    if (v2)
    {
      v5 = "granted";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Prevent baseband reset assertion %s", &v6, 0xCu);
  }

  if (v2)
  {
    v8 = 0;
    ctu::rest::AssertionHandle::setHandler_impl();
    sub_10000FF50(&v6);
    (*(**(v3 + 608) + 40))(*(v3 + 608), 8, "Prevent baseband reset assertion acquired");
  }
}

uint64_t sub_100713988(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007139D4(os_log_t **a1)
{
  v1 = *a1;
  if ((*((*a1)[76]->isa + 7))((*a1)[76]))
  {
    BasebandSettings::sendNextLinedUpFile_sync(v1);
  }

  else if (os_log_type_enabled(v1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10177C348();
  }

  operator delete();
}

uint64_t sub_100713A8C(uint64_t a1, uint64_t a2)
{
  sub_100713B10(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100713B10(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *sub_100713B94(void *a1)
{
  *a1 = off_101E75498;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100713BE0(void *a1)
{
  *a1 = off_101E75498;
  v1 = a1[4];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_100713CC4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E75498;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100713D0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100713D1C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

uint64_t sub_100713D78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100713DC4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  v4 = v3;
  if ((*(v1 + 12) & 1) == 0)
  {
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asString(*(v1 + 13));
      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#E Pushing %s failed, soldiering on", buf, 0xCu);
    }

    BasebandSettings::maybeAbortPendingTransactionsAndClearCache_sync(v2);
  }

  if (!*(v1 + 13))
  {
    v7 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I PRI was pushed. Notify AttachAPN manager", buf, 2u);
    }

    v8 = *(v2 + 592);
    if (v8)
    {
      (*(*v8 + 80))(v8, *(v1 + 2));
    }
  }

  *buf = 0uLL;
  BasebandSettings::getModel_sync(v2, *(v1 + 2), buf);
  if (*buf)
  {
    (*(**buf + 56))(*buf, *(v1 + 13), *(v1 + 12));
  }

  else if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    v9 = subscriber::asString();
    sub_10177BF38(v9, v24);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(v1 + 12))
  {
    goto LABEL_34;
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 96));
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
LABEL_25:
      v19 = (*(*v18 + 16))(v18);
      v20 = v19;
      if (v17)
      {
        sub_100004A34(v17);
        if ((v20 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (!v19)
      {
        goto LABEL_34;
      }

      if (capabilities::ct::supportsLogDumpForFailedBundlePush(v19))
      {
        sub_10000501C(&__p, "Carrier Bundle file push failed");
        RequestDumpStatePayload::RequestDumpStatePayload();
        sub_1007141CC();
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v22 < 0)
        {
          operator delete(__p);
        }
      }

LABEL_34:
      BasebandSettings::sendNextLinedUpFile_sync(v2);
      operator delete();
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  goto LABEL_25;
}

void sub_100714130(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  operator delete();
}

void sub_1007141CC()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/request_dump_state");
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

void sub_100714260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t *sub_1007142A4(void *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *(v1 + 8);
  v3 = *(v2 + 168);
  if (v3)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I File transfer in progress while sleep-cycle starts; delaying sleep until file transfer complete.", buf, 2u);
      v3 = *(v2 + 168);
    }

    v5 = *(v2 + 24);
    *buf = _NSConcreteStackBlock;
    v11 = 1174405120;
    v12 = sub_100714470;
    v13 = &unk_101E75508;
    v14 = v2;
    v6 = *v1;
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      if (group)
      {
        dispatch_group_enter(group);
      }
    }

    dispatch_group_notify(v3, v5, buf);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  else
  {
    (*(**(v2 + 128) + 104))(*(v2 + 128), 0);
  }

  sub_100714410(&v9);
  return sub_1000049E0(&v8);
}

void sub_1007143F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, dispatch_group_t *a10)
{
  sub_100714410(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

dispatch_group_t **sub_100714410(dispatch_group_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100714470(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I File transfer complete; letting sleep cycle continue", v4, 2u);
  }

  return (*(**(v1 + 128) + 104))(*(v1 + 128), 0);
}

void sub_100714500(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_100714554(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void sub_1007145A4(BasebandSettings ***a1)
{
  v1 = a1;
  BasebandSettings::sendAPTetheringStatus_sync(**a1, *(*a1 + 8));
  operator delete();
}

uint64_t *sub_100714628(capabilities::ct ***a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_1000224C8(v6, (v1 + 1));
  BasebandSettings::activateTurboMode_sync(v2, v6);
  sub_10000FF50(v6);
  sub_1007146DC(&v5);
  return sub_1000049E0(&v4);
}

void sub_1007146B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_10000FF50(va2);
  sub_1007146DC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007146DC(uint64_t *result)
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

uint64_t sub_10071472C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1007147C4(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100714844(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_10071472C(v7, v1 + 16);
  BasebandSettings::getSupportsTARandomization_sync(v2, v3, v7);
  sub_10070C94C(v7);
  sub_100714904(&v6);
  return sub_1000049E0(&v5);
}

void sub_1007148D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_10070C94C(va2);
  sub_100714904(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100714904(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10070C94C(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_100714990(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1007149CC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_100714A08(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  sub_100014110(v8, v1 + 16);
  BasebandSettings::setTARandomizationUserSetting_sync(v2, v3, v4, v8);
  sub_100014380(v8);
  sub_100714AD8(&v7);
  return sub_1000049E0(&v6);
}

void sub_100714AAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_100014380(va2);
  sub_100714AD8(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100714AD8(uint64_t *result)
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

uint64_t sub_100714BB0@<X0>(_OWORD *a1@<X8>)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return CSIGetGmtTime(a1);
}

uint64_t sub_100714BC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100714C10(uint64_t a1)
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

void sub_100714C90(_DWORD **a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = v1[2];
  if (v2 != *(*v1 + 552))
  {
    *(*v1 + 552) = v2;
  }

  operator delete();
}

uint64_t sub_100714CF8(uint64_t result, uint64_t a2)
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

void sub_100714D14(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_100714D24(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 592);
  if (v2)
  {
    v3 = v1[1];
    group = v3;
    if (v3)
    {
      dispatch_retain(v3);
      dispatch_group_enter(v3);
    }

    (*(*v2 + 48))(v2, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_100714DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group)
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

void *sub_100714E00(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100714E58(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100714E58(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100714EE0(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_100714EE0(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10002E2F4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100714F70();
  }

  return result;
}

void sub_100714FF0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100715060(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10071500C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100049564(a1, a2);
  *(v4 + 200) = *(a2 + 200);
  *(v4 + 208) = *(a2 + 208);
  sub_100010024((v4 + 216), (a2 + 216));
  sub_100010024((a1 + 224), (a2 + 224));
  return a1;
}

void sub_100715060(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10001021C((a2 + 264));
    sub_10001021C((a2 + 256));
    if (*(a2 + 239) < 0)
    {
      operator delete(*(a2 + 216));
    }

    if (*(a2 + 215) < 0)
    {
      operator delete(*(a2 + 192));
    }

    if (*(a2 + 191) < 0)
    {
      operator delete(*(a2 + 168));
    }

    if (*(a2 + 159) < 0)
    {
      operator delete(*(a2 + 136));
    }

    if (*(a2 + 135) < 0)
    {
      operator delete(*(a2 + 112));
    }

    if (*(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
    }

    if (*(a2 + 63) < 0)
    {
      operator delete(*(a2 + 40));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *sub_100715144(uint64_t **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v4 = v1 + 2;
  v3 = v1[2];
  if (!v3)
  {
    goto LABEL_27;
  }

  v5 = v1 + 2;
  v6 = v1[2];
  do
  {
    if (*(v6 + 32) >= 2)
    {
      v5 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < 2));
  }

  while (v6);
  if (v5 != v4 && *(v5 + 8) <= 2)
  {
    if (*(v5 + 240) == 2)
    {
      BasebandSettings::lineupFile_sync(*v1, 2, 0, 0);
      BasebandSettings::compareAndLineupFile_sync(v2, 2, 6, 0);
      BasebandSettings::lineupFile_sync(v2, 2, 8, 0);
    }

    else
    {
      BasebandSettings::bbset_checkForCBFilesUpdate_sync(*v1, 2, 0);
    }

    v18 = 0;
    v19 = 0;
    BasebandSettings::getModel_sync(v2, 2, &v18);
    v7 = v18;
    if (v18)
    {
      sub_100010024(&v17, v5 + 33);
      v8 = (*(*v7 + 112))(v7, &v17);
      sub_10001021C(&v17);
      if ((v8 & 0x100) != 0)
      {
        BasebandSettings::lineupFile_sync(v2, 2, 0, 0);
      }
    }

    else
    {
      v9 = (*(**(v2 + 48) + 16))(*(v2 + 48), 2);
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        sub_10177C37C();
      }
    }

    if (v19)
    {
      sub_100004A34(v19);
    }

    v3 = *v4;
  }

  if (!v3)
  {
    goto LABEL_27;
  }

  v10 = v1 + 2;
  do
  {
    if (*(v3 + 32) >= 1)
    {
      v10 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 1));
  }

  while (v3);
  if (v10 != v4 && *(v10 + 8) <= 1)
  {
    v11 = *(v10 + 160);
    v12 = *(v10 + 240);
    sub_100010024(&v18, v10 + 32);
    sub_100010024(&v16, v10 + 33);
    BasebandSettings::prepareForFileTransfer_sync(v2, 1, v11, v12, &v18, &v16);
    sub_10001021C(&v16);
    sub_10001021C(&v18);
  }

  else
  {
LABEL_27:
    BasebandSettings::triggerFileTransferForAnySim_sync(v2, (v1 + 1));
  }

  sub_1007153F4(&v15);
  return sub_1000049E0(&v14);
}

void sub_100715398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_1007153F4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007153F4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10070C9CC(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t sub_1007154B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E75670;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007154EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100715538(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1 + 1);
  v3 = **a1;
  v4 = (*(**(v3 + 48) + 16))(*(v3 + 48), *v2);
  v32 = 0;
  v33 = 0;
  v5 = *(v3 + 472);
  v6 = *v5;
  v7 = v5[1];
  if (v6 != v7)
  {
    while (*(*v6 + 49) || *(*v6 + 13) != *v2)
    {
      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_22;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_22:
    v9 = 0;
  }

  else
  {
    v8 = *v6;
    v9 = v6[1];
    v32 = *v6;
    v33 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8 && isReal())
    {
      v10 = *v4;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(v8);
        v12 = "OFF";
        if (*(v1 + 12))
        {
          v12 = "ON";
        }

        *buf = 136315394;
        *&buf[4] = v11;
        v35 = 2080;
        v36 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: setting turnOffCellular to %s", buf, 0x16u);
      }

      if (*(v1 + 12) == 1)
      {
        sub_1000C4284(v3 + 672, v2);
        ServiceMap = Registry::getServiceMap(*(v3 + 96));
        v14 = ServiceMap;
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

        std::mutex::lock(ServiceMap);
        *buf = v15;
        v19 = sub_100009510(&v14[1].__m_.__sig, buf);
        if (v19)
        {
          v21 = v19[3];
          v20 = v19[4];
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v14);
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v20);
            v22 = 0;
LABEL_36:
            (*(*v21 + 48))(v21, v8 + 24, @"TurnedOffCellular", kCFBooleanTrue, 0, 0, 1, 0);
            goto LABEL_40;
          }
        }

        else
        {
          v21 = 0;
        }

        std::mutex::unlock(v14);
        v20 = 0;
        v22 = 1;
        goto LABEL_36;
      }

      sub_10012B6B8(v3 + 672, v2);
      v24 = Registry::getServiceMap(*(v3 + 96));
      v25 = v24;
      if (v26 < 0)
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

      std::mutex::lock(v24);
      *buf = v26;
      v30 = sub_100009510(&v25[1].__m_.__sig, buf);
      if (v30)
      {
        v31 = v30[3];
        v20 = v30[4];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v25);
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v20);
          v22 = 0;
LABEL_39:
          (*(*v31 + 72))(v31, v8 + 24, @"TurnedOffCellular", 0, 0, 1);
LABEL_40:
          if ((v22 & 1) == 0)
          {
            sub_100004A34(v20);
          }

          BasebandSettings::updateTurnedOffCellularProperty_sync(v3);
          BasebandSettings::sendActiveSubsToBB_sync(v3);
          BasebandSettings::notifyTurnedOffCellularChanged_sync(v3, &v32, *(v1 + 12));
          v9 = v33;
          if (!v33)
          {
LABEL_27:
            operator delete();
          }

LABEL_26:
          sub_100004A34(v9);
          goto LABEL_27;
        }
      }

      else
      {
        v31 = 0;
      }

      std::mutex::unlock(v25);
      v20 = 0;
      v22 = 1;
      goto LABEL_39;
    }
  }

  v23 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I turnOffCellular: failed to find persona", buf, 2u);
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  goto LABEL_26;
}

void sub_100715958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

BOOL sub_1007159D0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*v1 + 680);
  v3 = *v2;
  if (!*v2)
  {
    goto LABEL_8;
  }

  v4 = v1[2];
  v5 = *v1 + 680;
  do
  {
    if (*(v3 + 28) >= v4)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < v4));
  }

  while (v3);
  if (v5 == v2 || v4 < *(v5 + 28))
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

void *sub_100715A28(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100715A80(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100715A80(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100715B08(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_100715B08(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1000504CC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_100715BA4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (rest::operator!=())
    {
      sub_100715C04(v2, a1 + 16);
    }
  }

  sub_10006DCAC(a1 + 24, *(a1 + 32));
  return a1;
}

uint64_t sub_100715C04(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *a2;
  v2 = a1 + 32;
  sub_10004645C(a1 + 40, (a2 + 8));
  result = *(v2 - 8);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t **sub_100715C7C(uint64_t **result, void *a2, void *a3)
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
          *(v8 + 7) = *(v9 + 7);
          sub_1001720F4(v5, v8);
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

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_100715DE0();
  }

  return result;
}

void sub_100715DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

void sub_100715E80(void *a1@<X1>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    initially_inactive = dispatch_queue_attr_make_initially_inactive(v3);
    v5 = dispatch_queue_create_with_target_V2("TMKXPCServer", initially_inactive, 0);
    dispatch_set_qos_class_floor(v5, QOS_CLASS_UTILITY, 0);
    dispatch_activate(v5);
    *a2 = 0;
    a2[1] = 0;
    operator new();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TMK server not supported since message router is not present", &v6, 2u);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_100716054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, dispatch_object_t object, uint64_t a12)
{
  if (a12)
  {
    sub_101760EE4(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007160E8(void *a1, void *a2, NSObject **a3, void *a4)
{
  *a1 = off_101E30090;
  v8 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "tmk.server.wrapper");
  sub_100716244(v8, a3, &v11);
  ctu::OsLogContext::~OsLogContext(&v11);
  *a1 = off_101E75760;
  v9 = a2[1];
  a1[6] = *a2;
  a1[7] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  a1[8] = *a4;
  a1[9] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1007161F0(_Unwind_Exception *a1)
{
  v4 = v1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = v1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v2);
  TMKXPCServerInterface::~TMKXPCServerInterface(v1);
  _Unwind_Resume(a1);
}

void *sub_100716244(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1007162AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_1007162D0(void *a1)
{
  *a1 = off_101E75760;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    sub_1007169A4(v2, 0);
    operator delete();
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

  TMKXPCServerInterface::~TMKXPCServerInterface(a1);
}

void sub_10071637C(void *a1)
{
  sub_1007162D0(a1);

  operator delete();
}

uint64_t sub_1007163B4(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2[0] = 0;
    v2[1] = 0;
    sub_100004AA0(v2, (result + 8));
    operator new();
  }

  return result;
}

void sub_100716498(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_100716574(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_1007166D0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1007167A4);
  __cxa_rethrow();
}

void sub_100716710(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100716764(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007167A4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1007167D0(ServiceManager::Service *this)
{
  *this = off_101E75888;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10071682C(ServiceManager::Service *this)
{
  *this = off_101E75888;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1007168C8@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10071690C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    dispatch_retain(*a2);
    sub_100716498(v2);
  }

  v3 = *(a1 + 8);

  sub_100716498(v3);
}

uint64_t *sub_1007169A4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    operator delete();
  }

  return result;
}

void sub_100716A04(uint64_t a1)
{
  v1 = a1;
  if (**(**a1 + 80))
  {
    TMKXPCServer.shutdown()();
  }

  operator delete();
}

void sub_100716A68(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping TMK server", buf, 2u);
  }

  operator delete();
}

void sub_100716AF4(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting TMK server", buf, 2u);
  }

  v7[0] = 0;
  v7[1] = 0;
  (*(**(v1 + 64) + 16))(v7);
  v6 = 0;
  v3 = *v7[0];

  v4 = *(v1 + 72);
  *buf = *(v1 + 64);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  type metadata accessor for TMKXPCServer();
  v6 = TMKXPCServer.__allocating_init(messageRouter:messageRouterPtr:)(v3, buf);
  sub_100716C90();
}

void sub_100716C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{

  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void *sub_100716DA8(void *a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "DATA.tech.cnf");
  sub_100716E84((a1 + 1), &v6);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = off_101E75A98;
  v4 = a2[1];
  a1[5] = *a2;
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return a1;
}

void sub_100716E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TechDataConfigServiceInterface::~TechDataConfigServiceInterface(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100716E84(uint64_t a1, const OsLogContext *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ctu::OsLogLogger::OsLogLogger(v4, a2);
  ctu::OsLogLogger::OsLogLogger((a1 + 24), v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  return a1;
}

void sub_100716ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_100716EFC(uint64_t a1)
{
  *a1 = off_101E75A98;
  v4 = (a1 + 56);
  sub_1000212F4(&v4);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  TechDataConfigServiceInterface::~TechDataConfigServiceInterface(a1);
}

void sub_100716F7C(uint64_t a1)
{
  sub_100716EFC(a1);

  operator delete();
}

void sub_100716FB4(uint64_t a1, __int128 *a2)
{
  v33 = *a2;
  v3 = *(a2 + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 24));
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  (*(*v33 + 16))(v39, v33);
  v4 = (*(*v33 + 32))(v33);
  v5 = *(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HIBYTE(v40);
    v7 = v39[0];
    v8 = v39[1];
    v9 = subscriber::asString();
    if (v6 >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    v11 = v39;
    if (v6 < 0)
    {
      v11 = v7;
    }

    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = "<invalid>";
    }

    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Adding config for personalityId: %s, slot=%s", buf, 0x16u);
  }

  *__dst = 0u;
  v38 = 0u;
  if (SHIBYTE(v40) < 0)
  {
    sub_100005F2C(__dst, v39[0], v39[1]);
  }

  else
  {
    *__dst = *v39;
    *&v38 = v40;
  }

  DWORD2(v38) = v4;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v13 = (a1 + 56);
  if (SBYTE7(v38) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
    v4 = DWORD2(v38);
  }

  else
  {
    *__p = *__dst;
    v35 = v38;
  }

  v36 = v4;
  if (v14 != v15)
  {
    while (1)
    {
      (*(**v14 + 16))(buf);
      v16 = sub_100071DF8(buf, __p) && (*(**v14 + 32))() == v36;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v16)
      {
        break;
      }

      if (++v14 == v15)
      {
        v14 = v15;
        break;
      }
    }
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *(a1 + 64);
  if (v17 != v14)
  {
    sub_100422B44(buf, v14 + 1, *(a1 + 64), v14);
    v17 = v18;
    for (i = *(a1 + 64); i != v17; --i)
    {
      v20 = *(i - 1);
      if (v20)
      {
        sub_100004A34(v20);
      }
    }

    *(a1 + 64) = v17;
  }

  v21 = *(a1 + 72);
  if (v17 >= v21)
  {
    v23 = (v17 - *v13) >> 4;
    if ((v23 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v24 = v21 - *v13;
    v25 = v24 >> 3;
    if (v24 >> 3 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF0)
    {
      v26 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    v43 = a1 + 56;
    if (v26)
    {
      sub_10009A550(a1 + 56, v26);
    }

    v27 = 16 * v23;
    *(16 * v23) = v33;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = (v27 + 16);
    v28 = *(a1 + 56);
    v29 = *(a1 + 64) - v28;
    v30 = v27 - v29;
    memcpy((v27 - v29), v28, v29);
    v31 = *(a1 + 56);
    *(a1 + 56) = v30;
    *(a1 + 64) = v22;
    v32 = *(a1 + 72);
    *(a1 + 72) = 0;
    *&buf[16] = v31;
    v42 = v32;
    *buf = v31;
    *&buf[8] = v31;
    sub_1000210F0(buf);
  }

  else
  {
    *v17 = v33;
    *(v17 + 1) = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v17 + 1;
  }

  *(a1 + 64) = v22;
  if (SBYTE7(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  os_unfair_lock_unlock((a1 + 24));
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1007173AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_10004F058(exception_object);
}

void sub_100717440(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v16, *a2, *(a2 + 1));
  }

  else
  {
    v16 = *a2;
    v17 = *(a2 + 2);
  }

  os_unfair_lock_lock((a1 + 24));
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = HIBYTE(v17);
    if (v17 >= 0)
    {
      v5 = &v16;
    }

    else
    {
      v4 = *(&v16 + 1);
      v5 = v16;
    }

    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Removing config for personalityId: %s", buf, 0xCu);
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  if (SHIBYTE(v17) < 0)
  {
    sub_100005F2C(__p, v16, *(&v16 + 1));
  }

  else
  {
    *__p = v16;
    v19 = v17;
  }

  if (v7 != v8)
  {
    while (1)
    {
      (*(**v7 + 16))(buf);
      v9 = sub_100071DF8(buf, __p);
      if (v21 < 0)
      {
        operator delete(*buf);
      }

      if (v9)
      {
        break;
      }

      if (++v7 == v8)
      {
        v7 = v8;
        break;
      }
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *(a1 + 64);
  if (v10 != v7)
  {
    sub_100422B44(buf, v7 + 1, v10, v7);
    v12 = v11;
    for (i = *(a1 + 64); i != v12; i -= 16)
    {
      v14 = *(i - 8);
      if (v14)
      {
        sub_100004A34(v14);
      }
    }

    *(a1 + 64) = v12;
  }

  os_unfair_lock_unlock((a1 + 24));
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }
}

void sub_100717694(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  sub_1007176F4(a1, a2, a3);

  os_unfair_lock_unlock((a1 + 24));
}

void sub_1007176F4(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = subscriber::asString();
    v8 = (a1[8] - a1[7]) >> 4;
    *buf = 136315394;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Config access by slot: %s, storage.size=%lu", buf, 0x16u);
  }

  v9 = a1[7];
  v10 = a1[8];
  if (v9 == v10)
  {
LABEL_13:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while (1)
    {
      v12 = *v9;
      v11 = v9[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = a1[4];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        (*(*v12 + 32))(v12);
        v14 = subscriber::asString();
        *buf = 136315138;
        v16 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I config slot: %s", buf, 0xCu);
      }

      if ((*(*v12 + 32))(v12) == a2)
      {
        break;
      }

      if (v11)
      {
        sub_100004A34(v11);
      }

      v9 += 2;
      if (v9 == v10)
      {
        *a3 = v12;
        a3[1] = v11;
        goto LABEL_13;
      }
    }

    *a3 = v12;
    a3[1] = v11;
  }
}

void sub_1007178DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = v11;
  a10[1] = v10;
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100717900(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  os_unfair_lock_lock((a1 + 24));
  if (capabilities::ct::supportsMultipleThumpers(v5))
  {
    sub_1007179C8(a1, __p, a3);
  }

  else
  {
    v6 = SlotIdFromPersonalityIdEx();
    sub_1007176F4(a1, v6, a3);
  }

  os_unfair_lock_unlock((a1 + 24));
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007179C8(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 23);
    v8 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v8)
    {
      v9 = *a2;
    }

    else
    {
      v9 = a2;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = "<invalid>";
    }

    v11 = (a1[8] - a1[7]) >> 4;
    *__p = 136315394;
    *&__p[4] = v10;
    v18 = 2048;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Config access by personality: %s, storage.size=%lu", __p, 0x16u);
  }

  v12 = a1[7];
  v13 = a1[8];
  if (v12 == v13)
  {
LABEL_21:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while (1)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v15 + 16))(__p, v15);
      v16 = sub_100071DF8(__p, a2);
      if (v20 < 0)
      {
        operator delete(*__p);
      }

      if (v16)
      {
        break;
      }

      if (v14)
      {
        sub_100004A34(v14);
      }

      v12 += 2;
      if (v12 == v13)
      {
        *a3 = v15;
        a3[1] = v14;
        goto LABEL_21;
      }
    }

    *a3 = v15;
    a3[1] = v14;
  }
}

void sub_100717B5C(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  v1[1] = v2;
  if (v2)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100717B78(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void *sub_100717C10(void *a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_9;
  }

  if (*(v6 + 49) == 1)
  {
    v9 = "DATA.tech.cnf.T";
    goto LABEL_11;
  }

  if (*(v6 + 49))
  {
LABEL_9:
    v9 = "DATA.tech.cnf";
    goto LABEL_11;
  }

  v7 = *(v6 + 52);
  v8 = "DATA.tech.cnf";
  if (v7 == 2)
  {
    v8 = "DATA.tech.cnf.2";
  }

  if (v7 == 1)
  {
    v9 = "DATA.tech.cnf.1";
  }

  else
  {
    v9 = v8;
  }

LABEL_11:
  ctu::OsLogContext::OsLogContext(v13, kCtLoggingSystemName, v9);
  v15 = v14;
  sub_100717D64((a1 + 1), &v15);
  ctu::OsLogContext::~OsLogContext(v13);
  *a1 = off_101E75AD8;
  v10 = a2[1];
  a1[5] = *a2;
  a1[6] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a3[1];
  a1[7] = *a3;
  a1[8] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_100717D40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogContext::~OsLogContext(va);
  TechDataConfigInterface::~TechDataConfigInterface(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100717D64(uint64_t a1, os_log_s **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 24), *a2);
  return a1;
}

void sub_100717D9C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100717DB4(void *a1)
{
  *a1 = off_101E75AD8;
  v2 = a1[8];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 4));
  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  TechDataConfigInterface::~TechDataConfigInterface(a1);
}

void sub_100717E34(void *a1)
{
  sub_100717DB4(a1);

  operator delete();
}

void *sub_100717E6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[7];
  if (*(v2 + 47) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 24), *(v2 + 32));
  }

  v3 = *(v2 + 24);
  *(a2 + 16) = *(v2 + 40);
  *a2 = v3;
  return result;
}

const void **sub_100717EB0@<X0>(uint64_t a1@<X0>, const char *a2@<X2>, DataUtils **a3@<X8>)
{
  v13 = 0;
  DataUtils::loadPlistFromBundleResource(&v13, (a1 + 32), "default_tech", a2);
  v5 = *(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = asStringBool(v13 != 0);
    *buf = 136315138;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I iwlanSettingsDict: %s", buf, 0xCu);
  }

  v12 = 0;
  (*(*a1 + 40))(&v12, a1, 1);
  v8 = DataUtils::deepMergeDictionary(v13, v12, v7);
  v9 = *(a1 + 32);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Merged Tech Plist: %@", buf, 0xCu);
    }

    *a3 = v13;
    v13 = 0;
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Merge Tech Plist failed", buf, 2u);
    }

    *a3 = 0;
  }

  sub_10001021C(&v12);
  return sub_1000296E0(&v13);
}

void sub_100718060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

BOOL *sub_100718090(void *a1)
{
  theDict = 0;
  (*(*a1 + 40))(&theDict);
  if (!theDict)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(theDict, @"SupportIpsecDscpCopy");
  v3 = Value;
  if (!Value)
  {
    goto LABEL_7;
  }

  v4 = CFGetTypeID(Value);
  if (v4 != CFBooleanGetTypeID())
  {
LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  buf[0] = 0;
  ctu::cf::assign(buf, v3, v5);
  v3 = buf[0];
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asStringBool(v3);
    *buf = 136315138;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I got SupportIpsecDscpCopy value as %s.", buf, 0xCu);
  }

LABEL_7:
  sub_10001021C(&theDict);
  return v3;
}

void sub_1007181C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

BOOL *sub_1007181E8(uint64_t a1)
{
  __p = 0;
  v20 = 0;
  v21 = 0;
  PersonalityIdFromSlotIdEx();
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (v8 && (v9 = v8[4]) != 0)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v3);
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
    v10 = 0;
  }

  else
  {
    std::mutex::unlock(v3);
    v9 = 0;
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  theDict = 0;
  (*(*a1 + 40))(&theDict, a1, 1);
  if (!theDict)
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(theDict, @"SuppressSAInOverCellHandover");
  v12 = Value;
  if (!Value)
  {
    goto LABEL_16;
  }

  v13 = CFGetTypeID(Value);
  if (v13 == CFBooleanGetTypeID())
  {
    buf[0] = 0;
    ctu::cf::assign(buf, v12, v14);
    v12 = buf[0];
    v15 = *(a1 + 32);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = asStringBool(v12);
      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I got SuppressSAInOverCellHandover value as %s.", buf, 0xCu);
    }
  }

  else
  {
LABEL_15:
    v12 = 0;
  }

LABEL_16:
  sub_10001021C(&theDict);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  return v12;
}

void sub_1007184D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_10001021C(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100718534(uint64_t a1)
{
  theDict = 0;
  (*(*a1 + 40))(&theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"AllowMOBIKERequest");
    v3 = Value;
    if (Value)
    {
      v4 = CFGetTypeID(Value);
      if (v4 == CFBooleanGetTypeID())
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v9 = 1;
    ctu::cf::assign(&v9, v5, v2);
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  sub_10001021C(&theDict);
  return v6 & 1;
}

uint64_t sub_100718600(void *a1)
{
  theDict = 0;
  (*(*a1 + 40))(&theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"UseVirtualPlmnForLocalBreakout");
    v4 = Value;
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 == CFBooleanGetTypeID())
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    buf[0] = 0;
    ctu::cf::assign(buf, v6, v3);
    v7 = buf[0];
    v8 = a1[4];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = asStringBool(v7);
      *buf = 136315138;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I got UseVirtualPlmnForLocalBreakout value as %s.", buf, 0xCu);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001021C(&theDict);
  return v7;
}

void sub_10071873C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100718760(uint64_t a1)
{
  theDict = 0;
  (*(*a1 + 40))(&theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"EmergencyRemoteIdRequired");
    v3 = Value;
    if (Value)
    {
      v4 = CFGetTypeID(Value);
      if (v4 == CFBooleanGetTypeID())
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v9 = 0;
    ctu::cf::assign(&v9, v5, v2);
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  sub_10001021C(&theDict);
  return v6 & 1;
}

const void **sub_100718828@<X0>(const void **result@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0;
  v4 = a3 + 1;
  a3[2] = 0;
  *a3 = a3 + 1;
  if (a2)
  {
    v6 = result;
    theDict = 0;
    (*(*result + 5))(&theDict);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, a2);
      if (Value)
      {
        v8 = CFGetTypeID(Value);
        if (v8 == CFStringGetTypeID())
        {
          HIBYTE(v17) = 0;
          LOBYTE(v16) = 0;
          ctu::cf::assign();
          *v18 = v16;
          v19 = v17;
          v17 = 0;
          v16 = 0uLL;
          v9 = v6[4];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 0uLL;
            v22 = 0;
            ctu::cf::assign();
            *__p = v21;
            v15 = v22;
            v10 = v18[0];
            v11 = __p;
            if (v22 < 0)
            {
              v11 = v21;
            }

            if (v19 >= 0)
            {
              v10 = v18;
            }

            *buf = 136315394;
            v24 = v11;
            v25 = 2080;
            v26 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I got %s value as %s.", buf, 0x16u);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_10071F5F8(v18, &v21);
          sub_10006DCAC(a3, a3[1]);
          v12 = *(&v21 + 1);
          *a3 = v21;
          a3[1] = v12;
          v13 = v22;
          a3[2] = v22;
          if (v13)
          {
            v12[2] = v4;
            *&v21 = &v21 + 8;
            *(&v21 + 1) = 0;
            v22 = 0;
            v12 = 0;
          }

          else
          {
            *a3 = v4;
          }

          sub_10006DCAC(&v21, v12);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(v18[0]);
          }
        }
      }
    }

    return sub_10001021C(&theDict);
  }

  return result;
}

void sub_100718A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_10001021C(&a25);
  sub_10006DCAC(v31, *(v31 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_100718ACC(uint64_t a1, int a2)
{
  __p = 0;
  v20 = 0uLL;
  theDict = 0;
  (*(*a1 + 40))(&theDict);
  if (!theDict)
  {
    goto LABEL_26;
  }

  Value = CFDictionaryGetValue(theDict, @"iRatPolicies");
  v4 = Value;
  if (!Value)
  {
    goto LABEL_26;
  }

  v5 = CFGetTypeID(Value);
  if (v5 != CFDictionaryGetTypeID())
  {
    goto LABEL_26;
  }

  if (a2)
  {
    v6 = CFDictionaryGetValue(v4, @"PreferredTechnologyRoaming");
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = CFDictionaryGetValue(v4, @"PreferredTechnology");
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  CFGetTypeID(v6);
  CFStringGetTypeID();
LABEL_9:
  v21 = 0;
  v22 = 0uLL;
  ctu::cf::assign();
  *(&v20 + 7) = *(&v22 + 7);
  v7 = HIBYTE(v22);
  __p = v21;
  *&v20 = v22;
  HIBYTE(v20) = HIBYTE(v22);
  if (v22 >= 0)
  {
    v8 = (&__p + HIBYTE(v22));
  }

  else
  {
    v8 = &v21[v22];
  }

  if (v22 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v21;
  }

  if (p_p != v8)
  {
    do
    {
      *p_p = __tolower(*p_p);
      p_p = (p_p + 1);
    }

    while (p_p != v8);
    v7 = HIBYTE(v20);
  }

  if ((v7 & 0x80) == 0)
  {
    if (v7 != 3)
    {
      if (v7 == 8)
      {
        v10 = __p;
LABEL_25:
        v11 = 2 * (v10 == 0x72616C756C6C6563);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v13 = &__p;
LABEL_32:
    v14 = bswap32(*v13 | (*(v13 + 2) << 16));
    v15 = v14 >= 0x696D7300;
    v16 = v14 > 0x696D7300;
    v17 = !v15;
    v11 = v16 == v17;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v13 = __p;
    goto LABEL_32;
  }

  if (v20 == 8)
  {
    v10 = *__p;
    goto LABEL_25;
  }

LABEL_26:
  v11 = 0;
LABEL_27:
  sub_10001021C(&theDict);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_100718CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_100718D30(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_100718EA8(a1, @"ActivationBackoffErrors", a2);
  if (!a2[2])
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I got empty list for ActivationBackoffErrors, use NO_APN_SUBSCRIPTION by default", &__p, 2u);
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 9002;
    sub_10071A560(a2, &__p, __p.__r_.__value_.__r.__words + 1);
  }

  v5 = *(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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

    *buf = 136315138;
    v9 = p_p;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I NeedBackoffErrorCodes: %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

const void **sub_100718EA8@<X0>(const void **result@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0;
  v4 = a3 + 1;
  a3[2] = 0;
  *a3 = a3 + 1;
  if (a2)
  {
    v6 = result;
    v46 = 0;
    (*(*result + 5))(&v46);
    if (v46)
    {
      Value = CFDictionaryGetValue(v46, a2);
      v8 = Value;
      if (Value)
      {
        v9 = CFGetTypeID(Value);
        if (v9 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(v8);
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
              v13 = ValueAtIndex;
              if (ValueAtIndex)
              {
                v14 = CFGetTypeID(ValueAtIndex);
                if (v14 == CFNumberGetTypeID())
                {
                  LODWORD(v29) = 0;
                  ctu::cf::assign(&v29, v13, v15);
                  LODWORD(__dst) = v29;
                  sub_1000C4284(a3, &__dst);
                }
              }
            }
          }

          v45 = 0;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          *__p = 0u;
          v34 = 0u;
          v31 = 0u;
          *__src = 0u;
          v29 = 0u;
          v30 = 0u;
          sub_10000D518(&v29);
          sub_10000C030(&v29);
          v16 = *a3;
          if (*a3 != v4)
          {
            v17 = 1;
            do
            {
              if ((v17 & 1) == 0)
              {
                sub_10000C030(&v29);
              }

              std::ostream::operator<<();
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

              v17 = 0;
              v16 = v19;
            }

            while (v19 != v4);
          }

          sub_10000C030(&v29);
          v21 = v6[4];
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_50;
          }

          __dst = 0uLL;
          v48 = 0;
          ctu::cf::assign();
          *buf = __dst;
          v50 = v48;
          if (v48 >= 0)
          {
            v22 = buf;
          }

          else
          {
            v22 = *buf;
          }

          if ((BYTE8(v35) & 0x10) != 0)
          {
            v26 = v35;
            if (v35 < __src[1])
            {
              *&v35 = __src[1];
              v26 = __src[1];
            }

            v27 = __src[0];
          }

          else
          {
            if ((BYTE8(v35) & 8) == 0)
            {
              v23 = 0;
              HIBYTE(v48) = 0;
LABEL_44:
              *(&__dst + v23) = 0;
              p_dst = &__dst;
              if (v48 < 0)
              {
                p_dst = __dst;
              }

              *v51 = 136315394;
              v52 = v22;
              v53 = 2080;
              v54 = p_dst;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I got %s value as %s.", v51, 0x16u);
              if (SHIBYTE(v48) < 0)
              {
                operator delete(__dst);
              }

              if (SHIBYTE(v50) < 0)
              {
                operator delete(*buf);
              }

LABEL_50:
              if (SHIBYTE(v34) < 0)
              {
                operator delete(__p[1]);
              }

              std::locale::~locale(&v30);
              std::ostream::~ostream();
              std::ios::~ios();
              return sub_10001021C(&v46);
            }

            v27 = *(&v30 + 1);
            v26 = *(&v31 + 1);
          }

          v23 = v26 - v27;
          if ((v26 - v27) >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_1000A2378();
          }

          if (v23 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v48) = v26 - v27;
          if (v23)
          {
            memmove(&__dst, v27, v23);
          }

          goto LABEL_44;
        }
      }

      v24 = v6[4];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 0uLL;
        *&v30 = 0;
        ctu::cf::assign();
        __dst = 0uLL;
        v48 = 0;
        *buf = 136315138;
        *&buf[4] = &__dst;
        v25 = "#I no %s key in iWLanSettingDict";
        goto LABEL_32;
      }
    }

    else
    {
      v24 = v6[4];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 0uLL;
        *&v30 = 0;
        ctu::cf::assign();
        __dst = 0uLL;
        v48 = 0;
        *buf = 136315138;
        *&buf[4] = &__dst;
        v25 = "#I no iWLanSettingDict for %s key";
LABEL_32:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(__dst);
        }
      }
    }

    return sub_10001021C(&v46);
  }

  return result;
}

void sub_100719468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v15 - 169) < 0)
  {
    operator delete(*(v15 - 192));
  }

  std::ios::~ios();
  sub_10001021C((v15 - 200));
  sub_10006DCAC(v14, *(v14 + 8));
  _Unwind_Resume(a1);
}

void sub_10071950C(uint64_t a1@<X0>, char a2@<W1>, uint64_t **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_100718EA8(a1, @"FatalActivationErrors", a3);
  if (!a3[2])
  {
    v6 = *(a1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I got empty list for FatalActivationErrors, use NON_3GPP_ACCESS_TO_EPC_NOT_ALLOWED and PLMN_NOT_ALLOWED by default", &__p, 2u);
    }

    __p.__r_.__value_.__r.__words[0] = 0x2B0300002328;
    sub_10071A560(a3, &__p, &__p.__r_.__value_.__r.__words[1]);
    if ((a2 & 1) == 0)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 80005;
      sub_1000C4284(a3, &__p);
      LODWORD(__p.__r_.__value_.__l.__data_) = 14;
      sub_1000C4284(a3, &__p);
      LODWORD(__p.__r_.__value_.__l.__data_) = 24;
      sub_1000C4284(a3, &__p);
    }
  }

  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_10022F988(*a3, a3 + 1, ",", &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v11 = p_p;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I NotAllowedErrorCodes: %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1007196E8(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_100718EA8(a1, @"ActivationForceResetErrors", a2);
  if (!a2[2])
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I got empty list for ActivationForceResetErrors, use INTERNAL_ADDRESS_FAILURE by default", &__p, 2u);
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 36;
    sub_10071A560(a2, &__p, __p.__r_.__value_.__r.__words + 1);
  }

  v5 = *(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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

    *buf = 136315138;
    v9 = p_p;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I ForceResetErrorCodes: %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t sub_100719860(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  (*(*a1 + 40))(&theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"5wiServiceMask");
    v4 = Value;
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 == CFNumberGetTypeID())
      {
        v9 = a2;
        ctu::cf::assign(&v9, v4, v6);
        a2 = v9;
      }
    }
  }

  sub_10001021C(&theDict);
  return a2;
}

uint64_t sub_100719928(void *a1)
{
  theDict = 0;
  (*(*a1 + 40))(&theDict);
  if (!theDict)
  {
    v8 = a1[4];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "#I no iWLanSettingDict for IPSecMTU key";
      goto LABEL_10;
    }

LABEL_11:
    v6 = 50000;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(theDict, @"IPSecMTU");
  v3 = Value;
  if (!Value || (v4 = CFGetTypeID(Value), v4 != CFNumberGetTypeID()))
  {
    v8 = a1[4];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "#I no IPSecMTU key in iWLanSettingDict";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  *buf = 50000;
  ctu::cf::assign(buf, v3, v5);
  v6 = *buf;
  v7 = a1[4];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I got IPSecMTU value as %d.", buf, 8u);
  }

LABEL_12:
  sub_10001021C(&theDict);
  return v6;
}

uint64_t sub_100719AE0(void *a1)
{
  theDict = 0;
  (*(*a1 + 40))(&theDict);
  if (!theDict)
  {
    v9 = a1[4];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "#I no iWLanSettingDict for WiFiCallingControlsAlliWLanServices key";
      goto LABEL_10;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(theDict, @"WiFiCallingControlsAlliWLanServices");
  v3 = Value;
  if (!Value || (v4 = CFGetTypeID(Value), v4 != CFBooleanGetTypeID()))
  {
    v9 = a1[4];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "#I no WiFiCallingControlsAlliWLanServices key in iWLanSettingDict";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  buf[0] = 0;
  ctu::cf::assign(buf, v3, v5);
  v6 = buf[0];
  v7 = a1[4];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asStringBool(v6);
    *buf = 136315138;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I got WiFiCallingControlsAlliWLanServices value as %s.", buf, 0xCu);
  }

LABEL_12:
  sub_10001021C(&theDict);
  return v6;
}

void sub_100719C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100719CA0(uint64_t a1)
{
  cf = 0;
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
  v12 = (*(*a1 + 32))(a1);
  (*(*v10 + 96))(&cf, v10, v12, 2, @"AllowInboundRoamingHandover", kCFBooleanTrue, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v13 = cf;
  buf[0] = 1;
  if (!cf || (v14 = CFGetTypeID(cf), v14 != CFBooleanGetTypeID()) || (ctu::cf::assign(buf, v13, v15), (buf[0] & 1) != 0))
  {
    sub_10000A1EC(&cf);
    cf = 0;
    (*(*a1 + 40))(&cf, a1, 1);
    if (cf)
    {
      Value = CFDictionaryGetValue(cf, @"AllowRoamingHandover");
      v17 = Value;
      if (Value)
      {
        v18 = CFGetTypeID(Value);
        if (v18 == CFBooleanGetTypeID())
        {
          buf[0] = 0;
          ctu::cf::assign(buf, v17, v19);
          v20 = buf[0];
          v21 = *(a1 + 32);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = asStringBool(v20);
            *buf = 136315138;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I got AllowRoamingHandover value as %s.", buf, 0xCu);
          }

          goto LABEL_25;
        }
      }

      v23 = *(a1 + 32);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v24 = "#I no AllowRoamingHandover key in iWLanSettingDict";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
      }
    }

    else
    {
      v23 = *(a1 + 32);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v24 = "#I no iWLanSettingDict for AllowRoamingHandover key";
        goto LABEL_23;
      }
    }

    v20 = 0;
LABEL_25:
    sub_10001021C(&cf);
    return v20;
  }

  v26 = *(a1 + 32);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = asStringBool(0);
    *buf = 136315138;
    *&buf[4] = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I got AllowInboundRoamingHandover value as %s.", buf, 0xCu);
  }

  sub_10000A1EC(&cf);
  return 0;
}

void sub_10071A00C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10071A064(uint64_t a1)
{
  theDict = 0;
  (*(*a1 + 40))(&theDict);
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"PCKeepAliveRetryTimeoutMilliSeconds"), (v2 = Value) != 0))
  {
    v3 = CFGetTypeID(Value);
    v5 = 5000;
    if (v3 == CFNumberGetTypeID())
    {
      v8 = 5000;
      ctu::cf::assign(&v8, v2, v4);
      v5 = v8;
    }
  }

  else
  {
    v5 = 5000;
  }

  sub_10001021C(&theDict);
  return v5;
}

uint64_t sub_10071A134(uint64_t a1)
{
  theDict = 0;
  (*(*a1 + 40))(&theDict);
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"PCKeepAliveMaxRetries"), (v2 = Value) != 0))
  {
    v3 = CFGetTypeID(Value);
    v5 = 4;
    if (v3 == CFNumberGetTypeID())
    {
      v8 = 4;
      ctu::cf::assign(&v8, v2, v4);
      v5 = v8;
    }
  }

  else
  {
    v5 = 4;
  }

  sub_10001021C(&theDict);
  return v5;
}

double sub_10071A204(uint64_t a1)
{
  theDict = 0;
  (*(*a1 + 40))(&theDict);
  v1 = 3600.0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"PCKeepAliveMaxInterval");
    v3 = Value;
    if (Value)
    {
      v4 = CFGetTypeID(Value);
      if (v4 == CFNumberGetTypeID())
      {
        v8 = 0x40AC200000000000;
        ctu::cf::assign(&v8, v3, v5);
        v1 = *&v8;
      }
    }
  }

  sub_10001021C(&theDict);
  return v1;
}

void sub_10071A358(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10177C3B0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10071A374(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10071A3AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10071A3DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10071A49C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10177C3D4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10071A4B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10071A4F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10071A520(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_10071A560(uint64_t **result, int *a2, int *a3)
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

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_1000685CC(v8);
      while (a2 != a3)
      {
        sub_10071A668(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            ++a2;
            break;
          }

          v11 = sub_1000685CC(v11);
        }

        else
        {
          v8 = v12;
        }

        ++a2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_10013CD24(&v10);
  }

  while (a2 != a3)
  {
    result = sub_1000C4284(v5, a2++);
  }

  return result;
}

void sub_10071A654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_10071A668(uint64_t **a1, int *a2, uint64_t a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 7);
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    *(a3 + 28) = v6;
    sub_1000070DC(a1, v7, v4, a3);
  }

  return a3;
}

void sub_10071A6F8(const __CFString *a1, const __CFString *a2, const void *a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = @"com.apple.commcenter";
  }

  if (a4)
  {
    v8 = (*(a4 + 8) - *a4) >> 3;
  }

  else
  {
    v8 = 0;
  }

  memset(v26, 0, sizeof(v26));
  sub_10071C5F0(v26, v8);
  v24 = v7;
  if (v8)
  {
    v9 = CFPreferencesCopyValue(**a4, v7, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    theDict = 0;
    v28 = v9;
    v10 = v26[0];
    sub_100138C38(&theDict, &v28);
    v11 = *v10;
    *v10 = theDict;
    theDict = v11;
    sub_10001021C(&theDict);
    if (v8 != 1)
    {
      v12 = *v26[0];
      if (*v26[0])
      {
        v13 = 1;
        do
        {
          Value = CFDictionaryGetValue(v12, *(*a4 + 8 * v13));
          theDict = 0;
          v28 = Value;
          v15 = v26[0];
          sub_100010180(&theDict, &v28);
          v16 = *(v15 + 8 * v13);
          *(v15 + 8 * v13) = theDict;
          theDict = v16;
          sub_10001021C(&theDict);
          if (v13 + 1 >= v8)
          {
            break;
          }

          v12 = *(v26[0] + 8 * v13++);
        }

        while (v12);
      }
    }

    v17 = 8 * v8 - 8;
    v18 = 1;
    while (1)
    {
      theDict = 0;
      v19 = *(v26[0] + v17);
      if (v19)
      {
        break;
      }

      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        goto LABEL_17;
      }

LABEL_18:
      if (a3)
      {
        CFDictionarySetValue(theDict, a2, a3);
      }

      else
      {
        CFDictionaryRemoveValue(theDict, a2);
      }

      if (CFDictionaryGetCount(theDict))
      {
        sub_100010180(&v25, &theDict);
      }

      else
      {
        v25 = 0;
      }

      v22 = (v26[0] + v17);
      if ((v26[0] + v17) != &v25)
      {
        v23 = *v22;
        *v22 = 0;
        v28 = v23;
        *v22 = v25;
        v25 = 0;
        sub_10001021C(&v28);
      }

      sub_10001021C(&v25);
      a2 = *(*a4 + v17);
      a3 = *(v26[0] + v17);
      sub_1000296E0(&theDict);
      ++v18;
      v17 -= 8;
      if (v18 > v8)
      {
        goto LABEL_27;
      }
    }

    Mutable = CFDictionaryCreateMutableCopy(0, 0, v19);
LABEL_17:
    v21 = theDict;
    theDict = Mutable;
    v28 = v21;
    sub_1000296E0(&v28);
    goto LABEL_18;
  }

LABEL_27:
  CFPreferencesSetValue(a2, a3, v24, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v28 = v26;
  sub_10071C670(&v28);
}

void sub_10071A990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a14;
  sub_10071C670(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10071A9CC(const __CFString *a1)
{
  if (!a1)
  {
    a1 = @"com.apple.commcenter";
  }

  return CFPreferencesSynchronize(a1, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

const void **sub_10071AA08@<X0>(const void *a1@<X0>, const void ***a2@<X1>, CFStringRef *a3@<X8>)
{
  if (a2)
  {
    v6 = a2[1] - *a2 + 2;
  }

  else
  {
    v6 = 2;
  }

  Mutable = CFArrayCreateMutable(0, v6, &kCFTypeArrayCallBacks);
  theArray = Mutable;
  CFArraySetValueAtIndex(Mutable, 0, @"com.apple.commcenter");
  if (!a2 || (v8 = *a2, v9 = a2[1], *a2 == v9))
  {
    v10 = 1;
  }

  else
  {
    v10 = 1;
    do
    {
      CFArraySetValueAtIndex(theArray, v10++, *v8++);
    }

    while (v8 != v9);
    Mutable = theArray;
  }

  CFArraySetValueAtIndex(Mutable, v10, a1);
  *a3 = CFStringCreateByCombiningStrings(0, theArray, @".");
  return sub_1000279DC(&theArray);
}

void sub_10071AAFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000279DC(va);
  _Unwind_Resume(a1);
}

CFStringRef sub_10071AB18@<X0>(int a1@<W1>, uint64_t a2@<X2>, CFStringRef *a3@<X8>)
{
  if (a1 <= 1)
  {
    if (a1 != 1)
    {
      sub_10177C424();
    }

    if (a2)
    {
      result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"com.apple.commcenter.%@", a2);
      goto LABEL_9;
    }

    v5 = @"com.apple.commcenter";
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        sub_10177C3F8();
      }

      sub_10177C450();
    }

    if (a2)
    {
      result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"no_backup/com.apple.commcenter.%@", a2);
LABEL_9:
      *a3 = result;
      return result;
    }

    v5 = kCommCenterPreferencesNoBackupAppID;
  }

  return sub_100060E4C(a3, v5);
}

const __CFString *sub_10071ABEC(int a1)
{
  result = @"regular";
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      sub_10177C52C();
    }

    if (a1 == 4)
    {
      sub_10177C500();
    }
  }

  else if (a1 == 2)
  {
    return @"nobackup";
  }

  else if (!a1)
  {
    sub_10177C4D4();
  }

  return result;
}

void sub_10071AD60(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

const void **sub_10071ADA0(void *a1, const void **a2, const void **a3, const void ***a4)
{
  if (a3 == a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a3;
    do
    {
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

      ++v4;
      v5 = v7;
    }

    while (v7 != a4);
  }

  return sub_10071C6F4(a1, a2, a3, a4, v4);
}

void sub_10071ADF8(uint64_t a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, "ustore");
  ctu::OsLogLogger::OsLogLogger(&v5, &buf);
  ctu::OsLogLogger::OsLogLogger((a1 + 8), &v5);
  ctu::OsLogLogger::~OsLogLogger(&v5);
  ctu::OsLogContext::~OsLogContext(&buf);
  *a1 = off_101E75E00;
  *(a1 + 16) = *a2;
  v4 = a2[1];
  *(a1 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  operator new();
}

void sub_10071B30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, const void *a13, uint64_t a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19)
{
  sub_1000279DC(&a17);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_100029A48(&a13);
  v21 = 112;
  while (1)
  {
    v22 = *(v19 + v21);
    if (v22)
    {
      sub_100004A34(v22);
    }

    v21 -= 16;
    if (v21 == 32)
    {
      v23 = *(v19 + 24);
      if (v23)
      {
        sub_100004A34(v23);
      }

      ctu::OsLogLogger::~OsLogLogger((v19 + 8));
      _Unwind_Resume(a1);
    }
  }
}

void sub_10071B408(uint64_t a1, const __CFString *a2)
{
  theArray[0] = @"UStorage";
  theArray[1] = @"offload_domains";
  v11 = 0;
  v12 = 0;
  __p = 0;
  sub_10005B328(&__p, theArray, &v14, 2uLL);
  theArray[0] = 0;
  sub_100061A94(a2, kDevicePersistentStoreData, &__p, &v9);
  sub_10006DD00(theArray, &v9);
  sub_10000A1EC(&v9);
  if (theArray[0])
  {
    Count = CFArrayGetCount(theArray[0]);
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
        v7 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v8 = CFGetTypeID(ValueAtIndex);
          if (v8 == CFStringGetTypeID())
          {
            v9 = v7;
            CFRetain(v7);
            sub_10071CC98(a1, &v9);
            sub_100005978(&v9);
          }
        }
      }
    }
  }

  sub_100010250(theArray);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_10071B564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100010250(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10071B5CC(void *a1)
{
  *a1 = off_101E75E00;
  for (i = 14; i != 4; i -= 2)
  {
    v3 = a1[i];
    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  v4 = a1[3];
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

void sub_10071B640(void *a1)
{
  sub_10071B5CC(a1);

  operator delete();
}

uint64_t sub_10071B6FC(uint64_t a1, const __CFString *a2, const void *a3, uint64_t a4, const void ***a5, int a6, const void *a7, const void *a8)
{
  v11 = 0;
  if (a6 <= 1)
  {
    if (!a6)
    {
      v16 = kDevicePersistentStoreData;
      goto LABEL_14;
    }

    if (a6 != 1)
    {
      return v11;
    }

    sub_10071AB18(1, a4, &v20);
    sub_10071A6F8(v20, a2, a3, a5);
LABEL_11:
    sub_100005978(&v20);
    return 0;
  }

  switch(a6)
  {
    case 2:
      sub_10071AB18(2, a4, &v20);
      sub_10071A6F8(v20, a2, a3, a5);
      goto LABEL_11;
    case 3:
      v16 = @"no_backup/commcenter_runtime_storage";
LABEL_14:
      sub_10071A6F8(v16, a2, a3, a5);
      return 0;
    case 4:
      v20 = 0;
      sub_10071AA08(a2, a5, &v20);
      Data = CFPropertyListCreateData(0, a3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      if (a7)
      {
        v15 = CFPropertyListCreateData(0, a7, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      }

      else
      {
        v15 = CFDataCreate(0, 0, 0);
      }

      v18 = v15;
      v11 = sub_100BB3A84(a1 + 16, v20, &v18, &Data, a8) ^ 1;
      sub_10002D760(&v18);
      sub_10002D760(&Data);
      sub_100005978(&v20);
      break;
  }

  return v11;
}

void sub_10071B8A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_10002D760(va);
  sub_10002D760(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_10071B8E0(uint64_t a1, const __CFString *a2, const void *a3, const __CFString *a4, char **a5, unsigned int a6, const void *a7, const void *a8)
{
  if (a6 == 4)
  {
    v16 = 36;
  }

  else
  {
    v16 = 32;
  }

  os_unfair_lock_lock((a1 + v16));
  v17 = sub_10071B99C(a1, a2, a3, a4, a5, a6, a7, a8);
  os_unfair_lock_unlock((a1 + v16));
  return v17;
}

uint64_t sub_10071B99C(uint64_t a1, const __CFString *a2, const void *a3, const __CFString *a4, char **a5, unsigned int a6, const void *a7, const void *a8)
{
  v42 = a5;
  v43 = a4;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  *__p = 0u;
  v30 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v26 = 0u;
  sub_10000C320(&v26);
  sub_10000C030(&v27);
  v14 = std::ostream::operator<<();
  v15 = sub_10000C030(v14);
  v44 = 0uLL;
  v45 = 0;
  ctu::cf::assign();
  *buf = v44;
  v47 = v45;
  v16 = sub_10000C030(v15);
  v17 = sub_10000C030(v16);
  sub_10005B9C8(a4, a5, &v44);
  v18 = sub_10000C030(v17);
  sub_10000C030(v18);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(*buf);
  }

  v19 = *(a1 + 8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(&v26, &v44);
    v20 = v45 >= 0 ? &v44 : v44;
    *buf = 136315138;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }
  }

  v45 = 0;
  *buf = 0;
  v44 = 0uLL;
  sub_10006161C(a1, 1, a6, &v43, &v42, buf, &v44);
  v21 = sub_10071B6FC(a1, a2, a3, v43, v42, a6, a7, a8);
  if (v44)
  {
    *(&v44 + 1) = v44;
    operator delete(v44);
  }

  sub_100005978(buf);
  *&v27 = v22;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v28);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v21;
}

void sub_10071BD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10068C9D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10071BDE8(uint64_t a1, const __CFString *a2, const __CFString *a3, char **a4, unsigned int a5)
{
  if (a5 == 4)
  {
    v10 = 36;
  }

  else
  {
    v10 = 32;
  }

  os_unfair_lock_lock((a1 + v10));
  v11 = sub_10071BE7C(a1, a2, a3, a4, a5);
  os_unfair_lock_unlock((a1 + v10));
  return v11;
}

uint64_t sub_10071BE7C(uint64_t a1, const __CFString *a2, const __CFString *a3, char **a4, unsigned int a5)
{
  v37 = a4;
  v38 = a3;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v25 = 0u;
  v26 = 0u;
  *__p = 0u;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v22 = 0u;
  sub_10000C320(&v21);
  sub_10000C030(&v22);
  v10 = std::ostream::operator<<();
  v11 = sub_10000C030(v10);
  v39 = 0uLL;
  v40 = 0;
  ctu::cf::assign();
  buf = v39;
  v42 = v40;
  v12 = sub_10000C030(v11);
  v13 = sub_10000C030(v12);
  sub_10005B9C8(a3, a4, &v39);
  v14 = sub_10000C030(v13);
  sub_10000C030(v14);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(buf);
  }

  v15 = *(a1 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(&v21, &v39);
    v16 = v40 >= 0 ? &v39 : v39;
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s", &buf, 0xCu);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }
  }

  v40 = 0;
  *&buf = 0;
  v39 = 0uLL;
  sub_10006161C(a1, 0, a5, &v38, &v37, &buf, &v39);
  if (a5 == 4)
  {
    v20 = 0;
    sub_10071AA08(a2, v37, &v20);
    v17 = !sub_100BB40F4(a1 + 16, v20);
    sub_100005978(&v20);
  }

  else
  {
    v17 = sub_10071B6FC(a1, a2, 0, v38, v37, a5, 0, 0);
  }

  if (v39)
  {
    *(&v39 + 1) = v39;
    operator delete(v39);
  }

  sub_100005978(&buf);
  *&v22 = v18;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v17;
}

void sub_10071C274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  sub_100005978(va);
  v4 = *(v2 - 136);
  if (v4)
  {
    *(v2 - 128) = v4;
    operator delete(v4);
  }

  sub_100005978((v2 - 112));
  sub_10068C9D8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10071C350(uint64_t a1, const __CFString **a2, const void *a3, char **a4, const __CFAllocator *a5, const void *a6, const void *a7)
{
  v9 = a5;
  v17 = 0;
  v18 = 0;
  if (ctu::cf::convert_copy(&v18, a2, 0x8000100, kCFAllocatorDefault, a5))
  {
    v17 = v18;
    v19 = 0;
    sub_100005978(&v19);
    v13 = v17;
  }

  else
  {
    v13 = 0;
  }

  v16 = v13;
  v17 = 0;
  sub_100005978(&v17);
  v14 = sub_10071B8E0(a1, v13, a3, 0, a4, v9, a6, a7);
  sub_100005978(&v16);
  return v14;
}

const void **sub_10071C448@<X0>(uint64_t a1@<X0>, const __CFString **a2@<X1>, char **a3@<X2>, signed int a4@<W3>, const __CFAllocator *a5@<X4>, void *a6@<X8>)
{
  v13 = 0;
  v14 = 0;
  if (ctu::cf::convert_copy(&v14, a2, 0x8000100, kCFAllocatorDefault, a5))
  {
    v13 = v14;
    v15 = 0;
    sub_100005978(&v15);
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  v12 = v10;
  v13 = 0;
  sub_100005978(&v13);
  sub_10005B878(a1, v10, 0, a3, a4, a6);
  return sub_100005978(&v12);
}

uint64_t sub_10071C520(uint64_t a1, const __CFString **a2, char **a3, unsigned int a4, const __CFAllocator *a5)
{
  v12 = 0;
  v13 = 0;
  if (ctu::cf::convert_copy(&v13, a2, 0x8000100, kCFAllocatorDefault, a5))
  {
    v12 = v13;
    v14 = 0;
    sub_100005978(&v14);
    v8 = v12;
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v12 = 0;
  sub_100005978(&v12);
  v9 = sub_10071BDE8(a1, v8, 0, a3, a4);
  sub_100005978(&v11);
  return v9;
}

void *sub_10071C5F0(void *result, unint64_t a2)
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

void sub_10071C670(void ***a1)
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
        v4 = sub_10001021C(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **sub_10071C6F4(void *a1, const void **a2, const void **a3, const void ***a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a5;
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v17 = (v10 - a2) >> 3;
      if (v17 >= a5)
      {
        sub_10071C910(a1, a2, a1[1], &a2[a5]);
        sub_100222570(v5, v7 + 4);
        if (v6 != 1)
        {
          v20 = v5;
          do
          {
            v21 = v7[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = v7[2];
                v23 = *v22 == v7;
                v7 = v22;
              }

              while (!v23);
            }

            sub_100222570(++v20, v22 + 4);
            v7 = v22;
          }

          while (v6-- > 2);
        }
      }

      else
      {
        v26[0] = a3;
        sub_10044F868(v26, (v10 - a2) >> 3);
        v19 = v26[0];
        a1[1] = sub_10071CB08(a1, v26[0], a4, a1[1]);
        if (v17 >= 1)
        {
          sub_10071C910(a1, v5, v10, &v5[v6]);
          sub_10071CC0C(v26, v7, v19, v5);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 3);
      if (v12 >> 61)
      {
        sub_1000CE3D4();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 2 > v12)
      {
        v12 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v16 = v13 >> 3;
      v26[4] = a1;
      if (v15)
      {
        sub_10005B2E0(a1, v15);
      }

      v26[0] = 0;
      v26[1] = (8 * v16);
      v26[2] = (8 * v16);
      v26[3] = 0;
      sub_10071C978(v26, a3, a5);
      v5 = sub_10071C9FC(a1, v26, v5);
      sub_100222180(v26);
    }
  }

  return v5;
}

const void **sub_10071C910(uint64_t a1, const void **a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (v6 + a2 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = 0;
      *v8++ = *v9;
      *v9++ = 0;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_10071CB80(&v11, a2, v7, v6);
}

const void **sub_10071C978(uint64_t a1, const void **a2, uint64_t a3)
{
  result = *(a1 + 16);
  if (a3)
  {
    v6 = &result[a3];
    do
    {
      v7 = sub_10005C7A4(result, a2 + 4);
      v8 = a2[1];
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
          v9 = a2[2];
          v10 = *v9 == a2;
          a2 = v9;
        }

        while (!v10);
      }

      result = v7 + 1;
      a2 = v9;
    }

    while (result != v6);
    result = v6;
  }

  *(a1 + 16) = result;
  return result;
}
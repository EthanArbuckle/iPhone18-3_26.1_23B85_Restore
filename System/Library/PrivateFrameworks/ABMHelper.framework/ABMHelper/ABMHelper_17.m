void sub_23C293600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::setPropPrivacyLevel_sync(uint64_t a1, NSObject **a2, char *a3, const std::string *a4)
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
  if ((util::convert<int>(a4, &__p, 0) & 1) == 0)
  {
    data = -1;
LABEL_10:
    v11 = *(a1 + 40);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = data;
      v15 = "Invalid input privacy level value: %d ";
      v19 = v11;
      v20 = 8;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  data = __p.__r_.__value_.__l.__data_;
  if (LODWORD(__p.__r_.__value_.__l.__data_) >= 4)
  {
    goto LABEL_10;
  }

  if (prop::bbtrace::set(a3, v4))
  {
    memset(&__p, 0, sizeof(__p));
    if (prop::bbtrace::get(a3, &__p))
    {
      v27 = -1431655766;
      v9 = util::convert<int>(&__p, &v27, 0);
      v10 = v9;
      if (v9)
      {
        data = v27;
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if (v10)
        {
          v16 = *(a1 + 108);
          v17 = *(a1 + 40);
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          if (data == v16)
          {
            if (v18)
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
              HIDWORD(__p.__r_.__value_.__r.__words[0]) = data;
              _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I It is setting same privacy level: %d", &__p, 8u);
            }

LABEL_37:
            result = 1;
            goto LABEL_11;
          }

          if (v18)
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
            HIDWORD(__p.__r_.__value_.__r.__words[0]) = v16;
            LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
            *(&__p.__r_.__value_.__r.__words[1] + 2) = data;
            _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting privacy level from %d to %d", &__p, 0xEu);
          }

          *(a1 + 108) = data;
          v21 = *(a1 + 96);
          v22 = *a2;
          v26 = v22;
          if (v22)
          {
            dispatch_retain(v22);
          }

          if (*(a1 + 151) < 0)
          {
            std::string::__init_copy_ctor_external(&v25, *(a1 + 128), *(a1 + 136));
          }

          else
          {
            v25 = *(a1 + 128);
          }

          v23 = INTTrace::sendConfig_sync(a1, &v26, &v25, v21 == 8, 0, 0);
          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }

          if (v22)
          {
            dispatch_release(v22);
          }

          if (v23)
          {
            goto LABEL_37;
          }

          v24 = *(a1 + 40);
          result = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_11;
          }

          if (v4[23] < 0)
          {
            v4 = *v4;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
          *(__p.__r_.__value_.__r.__words + 4) = v4;
          v15 = "Failed to send trace config %s";
          v19 = v24;
          v20 = 12;
          goto LABEL_24;
        }

        v14 = *(a1 + 40);
        result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (result)
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          v15 = "Failed to get privacy level!";
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_16;
  }

  v14 = *(a1 + 40);
  result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v15 = "Failed to set privacy level!";
LABEL_22:
    v19 = v14;
    v20 = 2;
LABEL_24:
    _os_log_error_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_ERROR, v15, &__p, v20);
    result = 0;
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C2939EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    dispatch_release(v23);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropHistory_sync(uint64_t a1, int a2, char *a3, const std::string *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0;
  util::convert<int>(a4, &v25, 0);
  v7 = v25;
  if (v25)
  {
    v8 = *(a1 + 120) >> 20;
    if (v25 > 0x10000 || v25 < v8)
    {
      v10 = *(a1 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:
        v14 = 0;
        goto LABEL_17;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v7;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v8;
      v11 = "Invalid input history size - %d MB (for trace file size - %d MB)";
      v12 = v10;
      v13 = 14;
LABEL_28:
      _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, v11, &__p, v13);
      goto LABEL_16;
    }
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v16 = *(a1 + 40);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v11 = "Failed to set history property!";
    v12 = v16;
    v13 = 2;
    goto LABEL_28;
  }

  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v14 = util::convert<int>(&__p, &v24, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_12:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  if ((v14 & 1) == 0)
  {
LABEL_13:
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Failed to get history property!", &__p, 2u);
    }

    goto LABEL_17;
  }

LABEL_20:
  v19 = v24;
  v20 = *(a1 + 112);
  v21 = *(a1 + 40);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v19 == v20)
  {
    if (v22)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v19;
      _os_log_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEFAULT, "#I It is setting same history size: %d", &__p, 8u);
    }
  }

  else
  {
    if (v22)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v20;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v19;
      _os_log_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEFAULT, "#I Setting history from %d MB to %d MB", &__p, 0xEu);
      v19 = v24;
    }

    *(a1 + 112) = v19;
    v23 = *(a1 + 160);
    if (v23)
    {
      abm::trace::TraceReader::updateHistorySize(v23);
    }
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_23C293CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropBandwidthMbps_sync(uint64_t a1, int a2, char *a3, const std::string *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0;
  util::convert<unsigned int>(a4, &v23, 0);
  v7 = v23;
  if (v23 >= 0xBB9)
  {
    v10 = *(a1 + 40);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v8 = 0;
      goto LABEL_12;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v7;
    v11 = "Invalid input trace bandwidth - %u Mbps";
    v12 = v10;
    v13 = 8;
LABEL_23:
    _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, v11, &__p, v13);
    goto LABEL_11;
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v11 = "Failed to set peak bandwidth property";
    v12 = v14;
    v13 = 2;
    goto LABEL_23;
  }

  v22 = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v8 = util::convert<unsigned int>(&__p, &v22, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_5:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  if ((v8 & 1) == 0)
  {
LABEL_6:
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to get peak bandwidth property", &__p, 2u);
    }

    goto LABEL_12;
  }

LABEL_15:
  v17 = v22;
  v18 = *(a1 + 360);
  v19 = *(a1 + 40);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v17 == v18)
  {
    if (v20)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v17;
      _os_log_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_DEFAULT, "#I Peak bandwidth already set to : %u", &__p, 8u);
    }
  }

  else
  {
    if (v20)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v18;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v17;
      _os_log_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_DEFAULT, "#I Setting peak bandwidth from %d Mbps to %d Mbps", &__p, 0xEu);
      v17 = v22;
    }

    *(a1 + 360) = v17;
    v21 = *(a1 + 160);
    if (v21)
    {
      abm::trace::TraceReader::updateTraceBandwidth(v21);
    }
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C293F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::setPropTraceResetModeReboot_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (prop::bbtrace::set(a3, a4))
  {
    memset(__p, 0, 24);
    if (prop::bbtrace::get(a3, __p))
    {
      *buf = -1431655766;
      v6 = util::convert<int>(__p, buf, 0);
      v7 = v6;
      if (v6)
      {
        v8 = *buf;
      }

      else
      {
        v8 = 0;
      }

      if ((__p[23] & 0x80000000) != 0)
      {
LABEL_17:
        operator delete(*__p);
        if ((v7 & 1) == 0)
        {
LABEL_18:
          v9 = *(a1 + 40);
          result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *__p = 0;
            v11 = "Failed to get - Reset mode on AP boot - property!";
            goto LABEL_20;
          }

          goto LABEL_42;
        }

LABEL_12:
        v12 = *(a1 + 100);
        v13 = *(a1 + 40);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v8 == v12)
        {
          if (v14)
          {
            if (v8 == 1)
            {
              v15 = &__p[9];
              __p[23] = 9;
              qmemcpy(__p, "Last_Used", 9);
            }

            else if (v8)
            {
              v15 = &__p[11];
              __p[23] = 11;
              qmemcpy(__p, "UnSpecified", 11);
            }

            else
            {
              v15 = &__p[7];
              __p[23] = 7;
              qmemcpy(__p, "Default", 7);
            }

            *v15 = 0;
            *buf = 136315394;
            *&buf[4] = __p;
            v23 = 1024;
            v24 = v8;
            _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I 'Reset mode on AP Boot' is already %s (%d)", buf, 0x12u);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }

        else
        {
          if (v14)
          {
            if (v12 == 1)
            {
              v16 = &buf[9];
              v25 = 9;
              qmemcpy(buf, "Last_Used", 9);
            }

            else if (v12)
            {
              v16 = &buf[11];
              v25 = 11;
              qmemcpy(buf, "UnSpecified", 11);
            }

            else
            {
              v16 = &buf[7];
              v25 = 7;
              qmemcpy(buf, "Default", 7);
            }

            *v16 = 0;
            if (v8 == 1)
            {
              v17 = &v19[9];
              v21 = 9;
              qmemcpy(v19, "Last_Used", 9);
            }

            else if (v8)
            {
              v17 = v20;
              v21 = 11;
              qmemcpy(v19, "UnSpecified", sizeof(v19));
            }

            else
            {
              v17 = &v19[7];
              v21 = 7;
              qmemcpy(v19, "Default", 7);
            }

            *v17 = 0;
            *__p = 136315906;
            *&__p[4] = buf;
            *&__p[12] = 1024;
            *&__p[14] = v12;
            *&__p[18] = 2080;
            *&__p[20] = v19;
            v27 = 1024;
            v28 = v8;
            _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Setting - Reset mode on AP boot - from %s (%d) to %s (%d)", __p, 0x22u);
            if (v21 < 0)
            {
              operator delete(*v19);
            }

            if (v25 < 0)
            {
              operator delete(*buf);
            }
          }

          *(a1 + 100) = v8;
        }

        result = 1;
        goto LABEL_42;
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
      if ((__p[23] & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v9 = *(a1 + 40);
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *__p = 0;
    v11 = "Failed to set - Reset mode on AP boot - property!";
LABEL_20:
    _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, v11, __p, 2u);
    result = 0;
  }

LABEL_42:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C29438C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::setPropTraceOwnership_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 104) == 1)
  {
    v5 = *(a1 + 40);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v7 = "Setting trace ownership, enabled must be set to false";
LABEL_21:
      _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, v7, &buf, 2u);
      result = 0;
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (prop::bbtrace::set(a3, a4))
  {
    memset(&buf, 0, sizeof(buf));
    v9 = -1431655766;
    if (prop::bbtrace::get(a3, &buf))
    {
      v16 = -1431655766;
      v10 = util::convert<int>(&buf, &v16, 0);
      v11 = v10;
      if (v10)
      {
        v9 = v16;
      }

      else
      {
        v9 = -1431655766;
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_18:
        operator delete(buf.__r_.__value_.__l.__data_);
        if ((v11 & 1) == 0)
        {
LABEL_19:
          v5 = *(a1 + 40);
          result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
          if (result)
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            v7 = "Failed to get trace ownership";
            goto LABEL_21;
          }

          goto LABEL_26;
        }

LABEL_15:
        v12 = *(a1 + 152);
        v13 = *(a1 + 40);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v9 == v12)
        {
          if (v14)
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v9;
            _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Trace ownership is already set to %d", &buf, 8u);
          }
        }

        else
        {
          if (v14)
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v12;
            LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 2) = v9;
            _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Setting trace ownership from %d to %d", &buf, 0xEu);
          }

          *(a1 + 152) = v9;
        }

        result = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v11 = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_18;
      }
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 40);
  result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v7 = "Failed to set trace ownership property!";
    goto LABEL_21;
  }

LABEL_26:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C2945CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropTraceMode_sync(uint64_t a1, dispatch_object_t *a2, char *a3, const std::string *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v8);
  }

  v9 = -1431655766;
  LODWORD(v36.__r_.__value_.__l.__data_) = -1431655766;
  if (util::convert<int>(a4, &v36, 0))
  {
    data = v36.__r_.__value_.__l.__data_;
    v12 = (a1 + 96);
    v11 = *(a1 + 96);
    if (v11 == LODWORD(v36.__r_.__value_.__l.__data_))
    {
      v9 = v36.__r_.__value_.__l.__data_;
      goto LABEL_7;
    }

    if (LODWORD(v36.__r_.__value_.__l.__data_) == 4)
    {
      if (*(a1 + 104) == 1)
      {
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = trace::toString(v11);
          LODWORD(v36.__r_.__value_.__l.__data_) = 136315394;
          *(v36.__r_.__value_.__r.__words + 4) = v16;
          WORD2(v36.__r_.__value_.__r.__words[1]) = 2080;
          *(&v36.__r_.__value_.__r.__words[1] + 6) = "Passive With Logging Configuration";
          v17 = "Mode transitioning %s -> %s, enabled must be set to false";
          goto LABEL_39;
        }

LABEL_66:
        v19 = 0;
        if (!v8)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (*(a1 + 152))
      {
        goto LABEL_26;
      }

      v21 = *(a1 + 40);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      v32 = trace::toString(v11);
      LODWORD(v36.__r_.__value_.__l.__data_) = 136315650;
      *(v36.__r_.__value_.__r.__words + 4) = v32;
      WORD2(v36.__r_.__value_.__r.__words[1]) = 2080;
      *(&v36.__r_.__value_.__r.__words[1] + 6) = "Passive With Logging Configuration";
      HIWORD(v36.__r_.__value_.__r.__words[2]) = 1024;
      v37 = 0;
      v23 = "Mode transitioning %s -> %s, trace channel owner (%d) not set properly";
LABEL_70:
      _os_log_error_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_ERROR, v23, &v36, 0x1Cu);
      v19 = 0;
      if (!v8)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

  else
  {
    v12 = (a1 + 96);
    v11 = *(a1 + 96);
    if (v11 == -1431655766)
    {
LABEL_7:
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (v9 > 8)
        {
          v14 = "Unknown";
        }

        else
        {
          v14 = off_278BB9648[v9];
        }

        LODWORD(v36.__r_.__value_.__l.__data_) = 136315138;
        *(v36.__r_.__value_.__r.__words + 4) = v14;
        _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Mode is already set to %s", &v36, 0xCu);
        v19 = 1;
        if (!v8)
        {
          goto LABEL_68;
        }

LABEL_67:
        dispatch_group_leave(v8);
        dispatch_release(v8);
        goto LABEL_68;
      }

LABEL_58:
      v19 = 1;
      if (!v8)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    data = -1431655766;
  }

  if (v11 == 4)
  {
    if (*(a1 + 104) == 1)
    {
      v15 = *(a1 + 40);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      v18 = trace::toString(data);
      LODWORD(v36.__r_.__value_.__l.__data_) = 136315394;
      *(v36.__r_.__value_.__r.__words + 4) = "Passive With Logging Configuration";
      WORD2(v36.__r_.__value_.__r.__words[1]) = 2080;
      *(&v36.__r_.__value_.__r.__words[1] + 6) = v18;
      v17 = "Mode transitioning %s -> %s, enabled must be set to false";
      goto LABEL_39;
    }

    v20 = *(a1 + 152);
    if (v20)
    {
      v21 = *(a1 + 40);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      v22 = trace::toString(data);
      LODWORD(v36.__r_.__value_.__l.__data_) = 136315650;
      *(v36.__r_.__value_.__r.__words + 4) = "Passive With Logging Configuration";
      WORD2(v36.__r_.__value_.__r.__words[1]) = 2080;
      *(&v36.__r_.__value_.__r.__words[1] + 6) = v22;
      HIWORD(v36.__r_.__value_.__r.__words[2]) = 1024;
      v37 = v20;
      v23 = "Mode transitioning %s -> %s and trace transport owner can't be %d";
      goto LABEL_70;
    }
  }

LABEL_26:
  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v15 = *(a1 + 40);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    if (a3[23] < 0)
    {
      a3 = *a3;
    }

    if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
    {
      a4 = a4->__r_.__value_.__r.__words[0];
    }

    LODWORD(v36.__r_.__value_.__l.__data_) = 136315394;
    *(v36.__r_.__value_.__r.__words + 4) = a3;
    WORD2(v36.__r_.__value_.__r.__words[1]) = 2080;
    *(&v36.__r_.__value_.__r.__words[1] + 6) = a4;
    v17 = "Failed to set %s property to %s";
LABEL_39:
    _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, v17, &v36, 0x16u);
    v19 = 0;
    if (!v8)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  memset(&v36, 0, sizeof(v36));
  if (!prop::bbtrace::get(a3, &v36))
  {
    v25 = 0;
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v35 = -1431655766;
  v24 = util::convert<int>(&v36, &v35, 0);
  v25 = v24;
  if (v24)
  {
    v9 = v35;
  }

  else
  {
    v9 = -1431655766;
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_42:
    operator delete(v36.__r_.__value_.__l.__data_);
  }

LABEL_43:
  v26 = *(a1 + 40);
  if (v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *v12;
      LODWORD(v36.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(v36.__r_.__value_.__r.__words[0]) = v27;
      LOWORD(v36.__r_.__value_.__r.__words[1]) = 1024;
      *(&v36.__r_.__value_.__r.__words[1] + 2) = v9;
      _os_log_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_DEFAULT, "#I Setting trace transport mode from %d to %d", &v36, 0xEu);
    }

    *v12 = v9;
    if (v9 == 7)
    {
      INTTrace::startTraceWithUSBBridgeInterface(a1);
    }

    if (*(a1 + 104) == 1 && (*v12 | 8) == 8)
    {
      v28 = *a2;
      v34 = v28;
      if (v28)
      {
        dispatch_retain(v28);
      }

      INTTrace::stop_sync(a1, &v34);
      if (v28)
      {
        dispatch_release(v28);
      }

      v29 = *a2;
      v33 = v29;
      if (v29)
      {
        dispatch_retain(v29);
      }

      INTTrace::start_sync(a1, &v33);
      if (v29)
      {
        dispatch_release(v29);
      }
    }

    goto LABEL_58;
  }

  if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_66;
  }

  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  LODWORD(v36.__r_.__value_.__l.__data_) = 136315138;
  *(v36.__r_.__value_.__r.__words + 4) = a3;
  _os_log_error_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_ERROR, "Failed to get %s property", &v36, 0xCu);
  v19 = 0;
  if (v8)
  {
    goto LABEL_67;
  }

LABEL_68:
  v30 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_23C294B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    dispatch_release(v19);
    if (!v18)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  dispatch_group_leave(v18);
  dispatch_release(v18);
  goto LABEL_6;
}

uint64_t INTTrace::setPropConfig_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v8);
  }

  if (prop::bbtrace::set(a3, a4))
  {
    v33.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    v33.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
    v33.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
    if (prop::bbtrace::get(a3, &v33))
    {
      v9 = (a1 + 128);
      if (*(a1 + 151) >= 0)
      {
        v10 = (a1 + 128);
      }

      else
      {
        v10 = *(a1 + 128);
      }

      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v33;
      }

      else
      {
        v11 = v33.__r_.__value_.__r.__words[0];
      }

      v12 = strcasecmp(v10, v11);
      v13 = *(a1 + 40);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (!v12)
      {
        if (v14)
        {
          *buf = 136315138;
          v35 = v11;
          _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I The config (%s) is already set!", buf, 0xCu);
        }

LABEL_51:
        v18 = 1;
LABEL_52:
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        goto LABEL_54;
      }

      if (v14)
      {
        *buf = 136315394;
        v35 = v10;
        v36 = 2080;
        v37 = v11;
        _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Setting trace config from %s to %s", buf, 0x16u);
      }

      v15 = *(a1 + 96);
      v16 = *a2;
      v32 = v16;
      if (v16)
      {
        dispatch_retain(v16);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v33;
      }

      v20 = INTTrace::sendConfig_sync(a1, &v32, &__p, v15 == 8, 0, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v16)
      {
        dispatch_release(v16);
      }

      if (v20)
      {
        if (v9 != &v33)
        {
          if (*(a1 + 151) < 0)
          {
            if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = &v33;
            }

            else
            {
              v26 = v33.__r_.__value_.__r.__words[0];
            }

            if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v33.__r_.__value_.__l.__size_;
            }

            std::string::__assign_no_alias<false>((a1 + 128), v26, size);
          }

          else
          {
            if ((*(&v33.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              *&v9->__r_.__value_.__l.__data_ = *&v33.__r_.__value_.__l.__data_;
              *(a1 + 144) = *(&v33.__r_.__value_.__l + 2);
              v18 = 1;
              goto LABEL_54;
            }

            std::string::__assign_no_alias<true>((a1 + 128), v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
          }
        }

        goto LABEL_51;
      }

      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v30 = &v33;
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = v33.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v35 = v30;
        _os_log_error_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_ERROR, "Failed to send trace config %s", buf, 0xCu);
      }

      if ((prop::bbtrace::set(a3, a1 + 128) & 1) == 0)
      {
        v22 = *(a1 + 40);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 151) < 0)
          {
            v9 = v9->__r_.__value_.__r.__words[0];
          }

          *buf = 136315138;
          v35 = v9;
          v23 = "Failed to reset trace config to %s";
          v24 = v22;
          v25 = 12;
          goto LABEL_49;
        }
      }
    }

    else
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v23 = "Failed to get trace config";
        v24 = v19;
        v25 = 2;
LABEL_49:
        _os_log_error_impl(&dword_23C1C4000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
        v18 = 0;
        goto LABEL_52;
      }
    }

    v18 = 0;
    goto LABEL_52;
  }

  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v33.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_ERROR, "Failed to set trace config", &v33, 2u);
  }

  v18 = 0;
LABEL_54:
  if (v8)
  {
    dispatch_group_leave(v8);
    dispatch_release(v8);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_23C294FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22)
  {
    dispatch_release(v22);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(__p);
      if (!v21)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      dispatch_group_leave(v21);
      dispatch_release(v21);
      goto LABEL_9;
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  if (!v21)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

uint64_t INTTrace::setPropMaxMemoryFileCount_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if (prop::bbtrace::set(a3, a4))
  {
    v18 = 0;
    memset(&buf, 0, sizeof(buf));
    if (prop::bbtrace::get(a3, &buf))
    {
      v8 = util::convert<unsigned int>(&buf, &v18, 0);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_15:
        operator delete(buf.__r_.__value_.__l.__data_);
        if ((v8 & 1) == 0)
        {
LABEL_16:
          v14 = *(a1 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "Failed to get max memory file count property!", &buf, 2u);
          }

          goto LABEL_22;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v8 = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_15;
      }
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    v10 = v18;
    v11 = *(a1 + 124);
    v12 = *(a1 + 40);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v10 == v11)
    {
      if (v13)
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v10;
        _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Max memory file count is already set to %u", &buf, 8u);
      }
    }

    else
    {
      if (v13)
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v11;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = v10;
        _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Setting max memory file count from %u to %u", &buf, 0xEu);
        v10 = v18;
      }

      *(a1 + 124) = v10;
      v15 = *(a1 + 160);
      if (v15)
      {
        abm::trace::TraceReader::updateMaxMemoryFileCount(v15);
      }
    }

    goto LABEL_22;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to set max memory file count property!", &buf, 2u);
  }

  v8 = 0;
LABEL_22:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C295284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropFileSize_sync(uint64_t a1, int a2, char *a3, const std::string *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0;
  util::convert<int>(a4, &v25, 0);
  v7 = *(a1 + 112);
  if (v7)
  {
    v8 = v25 / 0x100000;
    if (!v25 || v7 < v8)
    {
      v10 = *(a1 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        v14 = 0;
        goto LABEL_20;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v8;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v7;
      v11 = "Invalid input trace file size - %d MB (for history %d MB)";
      v12 = v10;
      v13 = 14;
LABEL_34:
      _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, v11, &__p, v13);
      goto LABEL_19;
    }
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v17 = *(a1 + 40);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v11 = "Failed to set file size property!";
    v12 = v17;
    v13 = 2;
    goto LABEL_34;
  }

  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    LODWORD(v14) = util::convert<unsigned int>(&__p, &v24, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    v15 = v24;
    if (v24)
    {
      v14 = v14;
    }

    else
    {
      v14 = 0;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  LODWORD(v14) = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  operator delete(__p.__r_.__value_.__l.__data_);
  v15 = v24;
  if (v24)
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  if ((v14 & 1) == 0)
  {
LABEL_16:
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_ERROR, "Failed to get file size property!", &__p, 2u);
    }

    goto LABEL_20;
  }

LABEL_26:
  v20 = *(a1 + 120);
  v21 = *(a1 + 40);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v15 == v20)
  {
    if (v22)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v15;
      _os_log_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEFAULT, "#I It is setting file size: %u", &__p, 8u);
    }
  }

  else
  {
    if (v22)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v20 >> 10;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v15 >> 10;
      _os_log_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEFAULT, "#I Changing file size from %d KB to %d KB", &__p, 0xEu);
      v15 = v24;
    }

    *(a1 + 120) = v15;
    v23 = *(a1 + 160);
    if (v23)
    {
      abm::trace::TraceReader::updateFileSize(v23);
    }
  }

LABEL_20:
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_23C295584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropTransportReadSize_sync(uint64_t a1, char **a2, char *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (prop::bbtrace::set(a3, a4))
  {
    *(&v16.gr_gid + 1) = 0;
    v16.gr_mem = 0;
    v17 = 0;
    v18 = 0;
    if (prop::bbtrace::get(a3, &v16.gr_mem))
    {
      v7 = util::convert<unsigned int>(&v16.gr_mem, &v16.gr_gid + 1, 0);
      if (SHIBYTE(v18) < 0)
      {
LABEL_11:
        operator delete(v16.gr_mem);
        if (!v7)
        {
          goto LABEL_24;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v7 = 0;
      if (SHIBYTE(v18) < 0)
      {
        goto LABEL_11;
      }
    }

    if (!v7)
    {
      goto LABEL_24;
    }

LABEL_12:
    v9 = *(&v16.gr_gid + 1);
    v10 = *(a1 + 196);
    if (*(&v16.gr_gid + 1) != v10)
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v16.gr_mem) = 67109376;
        HIDWORD(v16.gr_mem) = v10 >> 10;
        LOWORD(v17) = 1024;
        *(&v17 + 2) = v9 >> 10;
        _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Updating trace transport read-size from %u KB to %u KB", &v16.gr_mem, 0xEu);
        v9 = *(&v16.gr_gid + 1);
      }

      *(a1 + 196) = v9;
      if (*(a1 + 104) == 1)
      {
        v12 = *a2;
        v16.gr_passwd = v12;
        if (v12)
        {
          dispatch_retain(v12);
        }

        INTTrace::stop_sync(a1, &v16.gr_passwd);
        if (v12)
        {
          dispatch_release(v12);
        }

        v13 = *a2;
        v16.gr_name = v13;
        if (v13)
        {
          dispatch_retain(v13);
        }

        INTTrace::start_sync(a1, &v16);
        if (v13)
        {
          dispatch_release(v13);
        }
      }
    }

    goto LABEL_24;
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16.gr_mem) = 0;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to set trace transport read-size", &v16.gr_mem, 2u);
  }

  v7 = 0;
LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23C2957A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropTransportReadCount_sync(uint64_t a1, char **a2, char *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (prop::bbtrace::set(a3, a4))
  {
    *(&v16.gr_gid + 1) = 0;
    v16.gr_mem = 0;
    v17 = 0;
    v18 = 0;
    if (prop::bbtrace::get(a3, &v16.gr_mem))
    {
      v7 = util::convert<unsigned int>(&v16.gr_mem, &v16.gr_gid + 1, 0);
      if (SHIBYTE(v18) < 0)
      {
LABEL_11:
        operator delete(v16.gr_mem);
        if (!v7)
        {
          goto LABEL_24;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v7 = 0;
      if (SHIBYTE(v18) < 0)
      {
        goto LABEL_11;
      }
    }

    if (!v7)
    {
      goto LABEL_24;
    }

LABEL_12:
    v9 = *(&v16.gr_gid + 1);
    v10 = *(a1 + 200);
    if (*(&v16.gr_gid + 1) != v10)
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v16.gr_mem) = 67109376;
        HIDWORD(v16.gr_mem) = v10;
        LOWORD(v17) = 1024;
        *(&v17 + 2) = v9;
        _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Updating trace transport read-count from %d to %d", &v16.gr_mem, 0xEu);
        v9 = *(&v16.gr_gid + 1);
      }

      *(a1 + 200) = v9;
      if (*(a1 + 104) == 1)
      {
        v12 = *a2;
        v16.gr_passwd = v12;
        if (v12)
        {
          dispatch_retain(v12);
        }

        INTTrace::stop_sync(a1, &v16.gr_passwd);
        if (v12)
        {
          dispatch_release(v12);
        }

        v13 = *a2;
        v16.gr_name = v13;
        if (v13)
        {
          dispatch_retain(v13);
        }

        INTTrace::start_sync(a1, &v16);
        if (v13)
        {
          dispatch_release(v13);
        }
      }
    }

    goto LABEL_24;
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16.gr_mem) = 0;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to set trace transport read-count", &v16.gr_mem, 2u);
  }

  v7 = 0;
LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23C2959D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropSleepTraceMode_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if (!prop::bbtrace::set(a3, a4))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Failed to set sleep trace enabled", &buf, 2u);
      v11 = 0;
      if (!v7)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = 0;
    if (v7)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  memset(&buf, 0, sizeof(buf));
  v8 = -1431655766;
  if (!prop::bbtrace::get(a3, &buf))
  {
    v9 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_18;
    }

LABEL_14:
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v16 = -1431655766;
  v9 = util::convert<int>(&buf, &v16, 0);
  if (v9)
  {
    v8 = v16;
  }

  else
  {
    v8 = -1431655766;
  }

  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  operator delete(buf.__r_.__value_.__l.__data_);
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_15:
  v12 = *(a1 + 208);
  if (v8 == v12)
  {
    v11 = 1;
    if (!v7)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v12;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v8;
    _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, "#I Setting sleep trace mode from %d to %d", &buf, 0xEu);
  }

  *(a1 + 208) = v8;
  v11 = 1;
  if (v7)
  {
LABEL_20:
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

LABEL_21:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_23C295BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::setPropSleepConfig_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if (prop::bbtrace::set(a3, a4))
  {
    __p[1] = 0xAAAAAAAAAAAAAAAALL;
    v22 = 0xAAAAAAAAAAAAAALL;
    __p[0] = 0xAAAAAAAAAAAAAA00;
    v8 = prop::bbtrace::get(a3, __p);
    if (v8)
    {
      v9 = (a1 + 216);
      if (*(a1 + 239) >= 0)
      {
        v10 = (a1 + 216);
      }

      else
      {
        v10 = *(a1 + 216);
      }

      if (v22 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = strcasecmp(v10, v11);
      v13 = *(a1 + 40);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          *buf = 136315394;
          v24 = v10;
          v25 = 2080;
          v26 = v11;
          _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Setting sleep trace config from %s to %s", buf, 0x16u);
        }

        if (v9 != __p)
        {
          if (*(a1 + 239) < 0)
          {
            if (v22 >= 0)
            {
              v19 = __p;
            }

            else
            {
              v19 = __p[0];
            }

            if (v22 >= 0)
            {
              v20 = HIBYTE(v22);
            }

            else
            {
              v20 = __p[1];
            }

            std::string::__assign_no_alias<false>((a1 + 216), v19, v20);
          }

          else
          {
            if ((v22 & 0x8000000000000000) == 0)
            {
              *v9 = *__p;
              *(a1 + 232) = v22;
              goto LABEL_25;
            }

            std::string::__assign_no_alias<true>((a1 + 216), __p[0], __p[1]);
          }
        }
      }

      else if (v14)
      {
        *buf = 136315138;
        v24 = v11;
        _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I The config (%s) is already set!", buf, 0xCu);
      }
    }

    else
    {
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_ERROR, "Failed to get sleep trace config", buf, 2u);
      }
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Failed to set sleep trace config", __p, 2u);
    }

    v8 = 0;
  }

LABEL_25:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C295ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::setPropErrorHandling_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (prop::bbtrace::set(a3, a4))
  {
    memset(&__p, 0, sizeof(__p));
    if (prop::bbtrace::get(a3, &__p))
    {
      v19 = -1431655766;
      v6 = util::convert<int>(&__p, &v19, 0);
      v7 = v6;
      if (v6)
      {
        v8 = v19;
      }

      else
      {
        v8 = 1;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_16:
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v7 & 1) == 0)
        {
LABEL_17:
          v9 = *(a1 + 40);
          result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
          if (result)
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            v11 = "Failed to get trace error handling property!";
            goto LABEL_19;
          }

          goto LABEL_31;
        }

LABEL_12:
        v12 = *(a1 + 352);
        v13 = *(a1 + 40);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v8 == v12)
        {
          if (v14)
          {
            if (v8 > 2)
            {
              v15 = "Unknown";
            }

            else
            {
              v15 = off_278BB9690[v8];
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
            *(__p.__r_.__value_.__r.__words + 4) = v15;
            _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Trace error handling is already set to %s", &__p, 0xCu);
          }

          goto LABEL_30;
        }

        if (!v14)
        {
LABEL_29:
          *(a1 + 352) = v8;
LABEL_30:
          result = 1;
          goto LABEL_31;
        }

        if (v12 > 2)
        {
          v16 = "Unknown";
          if (v8 > 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v16 = off_278BB9690[v12];
          if (v8 > 2)
          {
LABEL_23:
            v17 = "Unknown";
LABEL_28:
            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = v16;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v17;
            _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Setting trace error handling from %s to %s", &__p, 0x16u);
            goto LABEL_29;
          }
        }

        v17 = off_278BB9690[v8];
        goto LABEL_28;
      }
    }

    else
    {
      v7 = 0;
      v8 = 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_16;
      }
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v9 = *(a1 + 40);
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v11 = "Failed to set trace error handling property!";
LABEL_19:
    _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, v11, &__p, 2u);
    result = 0;
  }

LABEL_31:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C296154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropRetainPreviousTrace_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to set retain previous trace property", &__p, 2u);
    }

    v6 = 0;
    v10 = *MEMORY[0x277D85DE8];
    return v6;
  }

  v21 = 1;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v6 = util::convert<BOOL>(&__p, &v21, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    if ((v6 & 1) == 0)
    {
LABEL_5:
      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to get retain previous trace property", &__p, 2u);
        v8 = *MEMORY[0x277D85DE8];
        return v6;
      }

      goto LABEL_25;
    }

    goto LABEL_12;
  }

  v6 = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_12:
  v11 = v21;
  v12 = *(a1 + 356);
  v13 = *(a1 + 40);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11 != v12)
  {
    if (v14)
    {
      v17 = "false";
      if (v12)
      {
        v18 = "true";
      }

      else
      {
        v18 = "false";
      }

      if (v11)
      {
        v17 = "true";
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v18;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v17;
      _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Setting retain previous trace property from %s to %s", &__p, 0x16u);
      LOBYTE(v11) = v21;
    }

    *(a1 + 356) = v11;
    goto LABEL_25;
  }

  if (!v14)
  {
LABEL_25:
    v19 = *MEMORY[0x277D85DE8];
    return v6;
  }

  v15 = "false";
  if (v11)
  {
    v15 = "true";
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
  *(__p.__r_.__value_.__r.__words + 4) = v15;
  _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Retain previous trace property is already set to %s", &__p, 0xCu);
  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_23C2963F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8INTTrace38setAnomalyDetectionLevelViaDriver_syncEN8dispatch5groupEN5trace21AnomalyDetectionLevelE_block_invoke(void *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = *(v4 + 88);
  if (v5)
  {
    dispatch_retain(*(v4 + 88));
    dispatch_group_enter(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      if (a1[6])
      {
        v9 = *a2;
        v10 = *(v4 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v12 = 138412290;
            v13 = v9;
            _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Unable to set anomaly detection level via trace command driver: %@", &v12, 0xCu);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Successfully set anomaly detection level via trace command driver", &v12, 2u);
        }
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t INTTrace::setPropAnomalyDetectionLevel_sync(uint64_t a1, NSObject **a2, char *a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (prop::bbtrace::set(a3, a4))
  {
    memset(&__p, 0, sizeof(__p));
    if (prop::bbtrace::get(a3, &__p))
    {
      v23 = -1431655766;
      v7 = util::convert<int>(&__p, &v23, 0);
      v8 = v7;
      if (v7)
      {
        v9 = v23;
      }

      else
      {
        v9 = 0;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_16:
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v8 & 1) == 0)
        {
LABEL_17:
          v10 = *(a1 + 40);
          result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
          if (result)
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            v12 = "Failed to get trace anomaly detection level property!";
            goto LABEL_19;
          }

          goto LABEL_34;
        }

LABEL_12:
        v13 = *(a1 + 364);
        v14 = *(a1 + 40);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v9 == v13)
        {
          if (v15)
          {
            if (v9 > 2)
            {
              v16 = "Unknown";
            }

            else
            {
              v16 = off_278BB96A8[v9];
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
            *(__p.__r_.__value_.__r.__words + 4) = v16;
            _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Trace anomaly detection level is already set to %s", &__p, 0xCu);
            result = 1;
          }

          else
          {
            result = 1;
          }

          goto LABEL_34;
        }

        if (!v15)
        {
          goto LABEL_30;
        }

        if (v13 > 2)
        {
          v17 = "Unknown";
          if (v9 > 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v17 = off_278BB96A8[v13];
          if (v9 > 2)
          {
LABEL_23:
            v18 = "Unknown";
LABEL_29:
            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = v17;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v18;
            _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Setting trace anomaly detection level from %s to %s", &__p, 0x16u);
LABEL_30:
            *(a1 + 364) = v9;
            v19 = *a2;
            v22 = v19;
            if (v19)
            {
              dispatch_retain(v19);
            }

            result = INTTrace::setAnomalyDetectionLevelViaDriver_sync(a1, &v22, v9);
            if (v19)
            {
              v20 = result;
              dispatch_release(v19);
              result = v20;
            }

            goto LABEL_34;
          }
        }

        v18 = off_278BB96A8[v9];
        goto LABEL_29;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_16;
      }
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v10 = *(a1 + 40);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v12 = "Failed to set trace anomaly detection level property!";
LABEL_19:
    _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, v12, &__p, 2u);
    result = 0;
  }

LABEL_34:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C296820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    dispatch_release(v16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropAnomalyDetectionTimeout_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v8);
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20.gr_gid) = 0;
      v11 = "Failed to set trace anomaly detection debounce timeout property!";
      goto LABEL_27;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  memset(&v20.gr_passwd + 4, 0, 20);
  v21 = 0;
  if (prop::bbtrace::get(a3, &v20.gr_gid))
  {
    v9 = util::convert<unsigned int>(&v20.gr_gid, &v20.gr_passwd + 1, 0);
    if (SHIBYTE(v21) < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (SHIBYTE(v21) < 0)
    {
LABEL_6:
      operator delete(*&v20.gr_gid);
      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20.gr_gid) = 0;
      v11 = "Failed to get trace anomaly detection debounce timeout property!";
LABEL_27:
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, v11, &v20.gr_gid, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_16:
  gr_passwd_high = HIDWORD(v20.gr_passwd);
  v16 = *(a1 + 368);
  v17 = *(a1 + 40);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (gr_passwd_high == v16)
  {
    if (v18)
    {
      v20.gr_gid = 67109120;
      *(&v20.gr_gid + 1) = gr_passwd_high;
      _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I Trace anomaly detection debounce timeout is already set to %u", &v20.gr_gid, 8u);
    }

    v12 = 1;
  }

  else
  {
    if (v18)
    {
      v20.gr_gid = 67109376;
      *(&v20.gr_gid + 1) = v16;
      LOWORD(v20.gr_mem) = 1024;
      *(&v20.gr_mem + 2) = gr_passwd_high;
      _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting trace anomaly detection debounce timeout from %u to %u", &v20.gr_gid, 0xEu);
      gr_passwd_high = HIDWORD(v20.gr_passwd);
    }

    *(a1 + 368) = gr_passwd_high;
    v19 = *a2;
    v20.gr_name = v19;
    if (v19)
    {
      dispatch_retain(v19);
      gr_passwd_high = HIDWORD(v20.gr_passwd);
    }

    v12 = INTTrace::setAnomalyDetectionTimeoutViaDriver_sync(a1, &v20, gr_passwd_high);
    if (v19)
    {
      dispatch_release(v19);
    }
  }

LABEL_11:
  if (v8)
  {
    dispatch_group_leave(v8);
    dispatch_release(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_23C296AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17)
  {
    dispatch_release(v17);
  }

  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8INTTrace40setAnomalyDetectionTimeoutViaDriver_syncEN8dispatch5groupEj_block_invoke(void *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = *(v4 + 88);
  if (v5)
  {
    dispatch_retain(*(v4 + 88));
    dispatch_group_enter(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      if (a1[6])
      {
        v9 = *a2;
        v10 = *(v4 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v12 = 138412290;
            v13 = v9;
            _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Unable to set anomaly detection debounce timeout via trace command driver: %@", &v12, 0xCu);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Successfully set anomaly detection debounce timeout via trace command driver", &v12, 2u);
        }
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

atomic_ullong *std::shared_ptr<INTTrace>::shared_ptr[abi:ne200100]<INTTrace,std::shared_ptr<INTTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<INTTrace>(INTTrace*)::{lambda(INTTrace*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EFCC78;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_23C296DD0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<INTTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<INTTrace>(INTTrace*)::{lambda(INTTrace*)#1}::operator() const(INTTrace*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<INTTrace *,std::shared_ptr<INTTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<INTTrace>(INTTrace*)::{lambda(INTTrace *)#1},std::allocator<INTTrace>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<INTTrace *,std::shared_ptr<INTTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<INTTrace>(INTTrace*)::{lambda(INTTrace *)#1},std::allocator<INTTrace>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8INTTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8INTTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8INTTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8INTTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<INTTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<INTTrace>(INTTrace*)::{lambda(INTTrace*)#1}::operator() const(INTTrace*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8INTTrace4initENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSJ__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 8);
  if ((*(v1 + 39) & 0x80000000) == 0)
  {
    v10 = *(v1 + 16);
    v3 = *(v1 + 48);
    v8 = *(v1 + 40);
    v9 = v3;
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v10, *(v1 + 16), *(v1 + 24));
  v3 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v3;
  if (v3)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v4 = *(v1 + 56);
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  **v1 = Trace::init(v2, &v10.__r_.__value_.__l.__data_, &v8, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (**v1)
    {
      goto LABEL_12;
    }

LABEL_76:
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, "Failed to initialize Trace!", &buf, 2u);
    }

    return;
  }

  operator delete(v10.__r_.__value_.__l.__data_);
  if ((**v1 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_12:
  __p[23] = 7;
  strcpy(__p, "Enabled");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    util::convert<BOOL>(&buf, (v2 + 104), 0);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_79:
    operator delete(*__p);
    goto LABEL_16;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    goto LABEL_79;
  }

LABEL_16:
  INTTrace::initBootSessionPrefs_sync(v2);
  __p[23] = 12;
  strcpy(__p, "PrivacyLevel");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    v11 = -1431655766;
    if (util::convert<int>(&buf, &v11, 0))
    {
      *(v2 + 108) = v11;
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(*__p);
LABEL_21:
  __p[23] = 7;
  strcpy(__p, "History");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    util::convert<int>(&buf, (v2 + 112), 0);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(*__p);
LABEL_25:
  *(&buf.__r_.__value_.__s + 23) = 4;
  strcpy(&buf, "File");
  prop::bbtrace::get(&buf, v2 + 128);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  __p[23] = 8;
  strcpy(__p, "FileSize");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    util::convert<unsigned int>(&buf, (v2 + 120), 0);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(*__p);
LABEL_31:
  __p[23] = 18;
  strcpy(__p, "MaxMemoryFileCount");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    util::convert<unsigned int>(&buf, (v2 + 124), 0);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(*__p);
LABEL_35:
  __p[23] = 6;
  strcpy(__p, "SizeIO");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    util::convert<unsigned int>(&buf, (v2 + 196), 0);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(*__p);
LABEL_39:
  __p[23] = 14;
  strcpy(__p, "NumberOfReadIO");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    util::convert<unsigned int>(&buf, (v2 + 200), 0);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_91:
    operator delete(*__p);
    goto LABEL_43;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    goto LABEL_91;
  }

LABEL_43:
  __p[23] = 20;
  strcpy(__p, "Enabled_During_Sleep");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    v11 = -1431655766;
    if (util::convert<int>(&buf, &v11, 0))
    {
      *(v2 + 208) = v11;
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(*__p);
LABEL_48:
  *(&buf.__r_.__value_.__s + 23) = 10;
  strcpy(&buf, "File_Sleep");
  prop::bbtrace::get(&buf, v2 + 216);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  __p[23] = 14;
  strcpy(__p, "Error_Handling");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    v11 = -1431655766;
    if (util::convert<int>(&buf, &v11, 0))
    {
      *(v2 + 352) = v11;
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_55;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_55;
  }

  operator delete(*__p);
LABEL_55:
  __p[23] = 21;
  strcpy(__p, "Retain_Previous_Trace");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    util::convert<BOOL>(&buf, (v2 + 356), 0);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_59;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(*__p);
LABEL_59:
  __p[23] = 17;
  *__p = *"PeakBandwidthMbps";
  *&__p[16] = str_18_0[16];
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    util::convert<unsigned int>(&buf, (v2 + 360), 0);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_99:
    operator delete(*__p);
    goto LABEL_63;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    goto LABEL_99;
  }

LABEL_63:
  __p[23] = 21;
  strcpy(__p, "AnomalyDetectionLevel");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    v11 = -1431655766;
    if (util::convert<int>(&buf, &v11, 0))
    {
      *(v2 + 364) = v11;
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_101:
    operator delete(*__p);
    goto LABEL_68;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    goto LABEL_101;
  }

LABEL_68:
  *__p = operator new(0x19uLL);
  *&__p[8] = xmmword_23C32CA60;
  strcpy(*__p, "AnomalyDetectionTimeout");
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__p, &buf))
  {
    util::convert<unsigned int>(&buf, (v2 + 368), 0);
  }

  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((__p[23] & 0x80000000) == 0)
    {
      return;
    }

LABEL_103:
    operator delete(*__p);
    return;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if ((__p[23] & 0x80000000) != 0)
  {
    goto LABEL_103;
  }
}

void sub_23C297700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 25) < 0)
  {
    operator delete(*(v14 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_23C297774(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (object)
  {
    dispatch_release(object);
    v20 = a14;
    if (!a14)
    {
LABEL_3:
      if (a20 < 0)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v20 = a14;
    if (!a14)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v20);
  if (a20 < 0)
  {
LABEL_10:
    JUMPOUT(0x23C297768);
  }

LABEL_11:
  JUMPOUT(0x23C29776CLL);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1>(INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1,std::default_delete<INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 116);
  if ((v3 - 2) >= 2)
  {
    if (v3 != 1)
    {
      if (v3)
      {
        goto LABEL_154;
      }

      v4 = 0x7FFFFFFFFFFFFFF7;
      v5 = abm::trace::kScratchFolder[0];
      v6 = strlen(abm::trace::kScratchFolder[0]);
      if (v6 <= 0x7FFFFFFFFFFFFFF7)
      {
        v7 = v6;
        if (v6 >= 0x17)
        {
          if ((v6 | 7) == 0x17)
          {
            v40 = 25;
          }

          else
          {
            v40 = (v6 | 7) + 1;
          }

          p_dst = operator new(v40);
          *(&__dst + 1) = v7;
          v87 = v40 | 0x8000000000000000;
          *&__dst = p_dst;
        }

        else
        {
          HIBYTE(v87) = v6;
          p_dst = &__dst;
          if (!v6)
          {
            LOBYTE(__dst) = 0;
            v9 = SHIBYTE(v87);
            if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
            {
LABEL_8:
              if (v9 - 7 < 0x10)
              {
                v10 = v9 + 16;
                v11 = &__dst;
                v12 = 22;
                goto LABEL_53;
              }

              v76 = &__dst;
              goto LABEL_142;
            }

LABEL_50:
            v9 = *(&__dst + 1);
            v12 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v12 - *(&__dst + 1) < 0x10)
            {
              v10 = *(&__dst + 1) + 16;
              if (0x7FFFFFFFFFFFFFF7 - (v87 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 16 - v12)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v11 = __dst;
              if (v12 >= 0x3FFFFFFFFFFFFFF3)
              {
                v43 = 0;
LABEL_62:
                v44 = operator new(v4);
                v45 = v44;
                if (v9)
                {
                  memmove(v44, v11, v9);
                }

                *&v45[v9] = *"BBTrace.scratch/";
                if (!v43)
                {
                  operator delete(v11);
                }

                *(&__dst + 1) = v10;
                v87 = v4 | 0x8000000000000000;
                *&__dst = v45;
                v46 = &v45[v10];
                goto LABEL_148;
              }

LABEL_53:
              v41 = 2 * v12;
              if (v10 > 2 * v12)
              {
                v41 = v10;
              }

              if ((v41 | 7) == 0x17)
              {
                v42 = 25;
              }

              else
              {
                v42 = (v41 | 7) + 1;
              }

              if (v41 >= 0x17)
              {
                v4 = v42;
              }

              else
              {
                v4 = 23;
              }

              v43 = v12 == 22;
              goto LABEL_62;
            }

            v76 = __dst;
LABEL_142:
            *(v76 + v9) = *"BBTrace.scratch/";
            v79 = v9 + 16;
            if (SHIBYTE(v87) < 0)
            {
              *(&__dst + 1) = v9 + 16;
            }

            else
            {
              HIBYTE(v87) = v79 & 0x7F;
            }

            v46 = v76 + v79;
            goto LABEL_148;
          }
        }

        memmove(p_dst, v5, v7);
        *(p_dst + v7) = 0;
        v9 = SHIBYTE(v87);
        if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_50;
      }

LABEL_134:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v22 = 0x7FFFFFFFFFFFFFF7;
    v23 = abm::trace::kScratchFolder[0];
    v24 = strlen(abm::trace::kScratchFolder[0]);
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_134;
    }

    v25 = v24;
    if (v24 >= 0x17)
    {
      if ((v24 | 7) == 0x17)
      {
        v47 = 25;
      }

      else
      {
        v47 = (v24 | 7) + 1;
      }

      v26 = operator new(v47);
      *(&__dst + 1) = v25;
      v87 = v47 | 0x8000000000000000;
      *&__dst = v26;
    }

    else
    {
      HIBYTE(v87) = v24;
      v26 = &__dst;
      if (!v24)
      {
        LOBYTE(__dst) = 0;
        v27 = SHIBYTE(v87);
        if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
        {
LABEL_20:
          if (v27 < 0x17)
          {
            v28 = v27 + 25;
            v29 = &__dst;
            v30 = 22;
            goto LABEL_75;
          }

          v77 = &__dst;
          qmemcpy(&__dst + v27, "BBTrace.scratch.filtered/", 25);
          v78 = v27 + 25;
          HIBYTE(v87) = (v27 + 25) & 0x7F;
          goto LABEL_145;
        }

LABEL_72:
        v27 = *(&__dst + 1);
        v30 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v30 - *(&__dst + 1) < 0x19)
        {
          v28 = *(&__dst + 1) + 25;
          if (0x7FFFFFFFFFFFFFF7 - (v87 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 25 - v30)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v29 = __dst;
          if (v30 >= 0x3FFFFFFFFFFFFFF3)
          {
            v50 = 0;
LABEL_84:
            v51 = operator new(v22);
            v52 = v51;
            if (v27)
            {
              memmove(v51, v29, v27);
            }

            qmemcpy(&v52[v27], "BBTrace.scratch.filtered/", 25);
            if (!v50)
            {
              operator delete(v29);
            }

            *(&__dst + 1) = v28;
            v87 = v22 | 0x8000000000000000;
            *&__dst = v52;
            v46 = &v52[v28];
LABEL_148:
            *v46 = 0;
            *__p = __dst;
            v89 = v87;
            v87 = 0;
            __dst = 0uLL;
            abm::trace::TraceInfo::create();
            v80 = v90;
            v90 = 0uLL;
            v75 = *(v2 + 256);
            *(v2 + 248) = v80;
            if (!v75)
            {
              goto LABEL_150;
            }

            goto LABEL_149;
          }

LABEL_75:
          v48 = 2 * v30;
          if (v28 > 2 * v30)
          {
            v48 = v28;
          }

          if ((v48 | 7) == 0x17)
          {
            v49 = 25;
          }

          else
          {
            v49 = (v48 | 7) + 1;
          }

          if (v48 >= 0x17)
          {
            v22 = v49;
          }

          else
          {
            v22 = 23;
          }

          v50 = v30 == 22;
          goto LABEL_84;
        }

        v77 = __dst;
        qmemcpy((__dst + *(&__dst + 1)), "BBTrace.scratch.filtered/", 25);
        v78 = v27 + 25;
        *(&__dst + 1) = v27 + 25;
LABEL_145:
        v46 = v77 + v78;
        goto LABEL_148;
      }
    }

    memmove(v26, v23, v25);
    *(v26 + v25) = 0;
    v27 = SHIBYTE(v87);
    if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_72;
  }

  v13 = 0x7FFFFFFFFFFFFFF7;
  v14 = abm::trace::kScratchFolder[0];
  v15 = strlen(abm::trace::kScratchFolder[0]);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_134;
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v15 | 7) + 1;
    }

    v17 = operator new(v31);
    *(&__dst + 1) = v16;
    v87 = v31 | 0x8000000000000000;
    *&__dst = v17;
LABEL_26:
    memmove(v17, v14, v16);
    *(v17 + v16) = 0;
    v18 = SHIBYTE(v87);
    if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  HIBYTE(v87) = v15;
  v17 = &__dst;
  if (v15)
  {
    goto LABEL_26;
  }

  LOBYTE(__dst) = 0;
  v18 = SHIBYTE(v87);
  if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
  {
LABEL_14:
    if (v18 - 7 < 0x10)
    {
      v19 = v18 + 16;
      v20 = &__dst;
      v21 = 22;
LABEL_30:
      v32 = 2 * v21;
      if (v19 > 2 * v21)
      {
        v32 = v19;
      }

      if ((v32 | 7) == 0x17)
      {
        v33 = 25;
      }

      else
      {
        v33 = (v32 | 7) + 1;
      }

      if (v32 >= 0x17)
      {
        v34 = v33;
      }

      else
      {
        v34 = 23;
      }

      v35 = v21 == 22;
      goto LABEL_39;
    }

    v39 = &__dst;
LABEL_90:
    *(v39 + v18) = *"BBTrace.scratch/";
    v53 = v18 + 16;
    if (SHIBYTE(v87) < 0)
    {
      *(&__dst + 1) = v18 + 16;
    }

    else
    {
      HIBYTE(v87) = v53 & 0x7F;
    }

    v38 = v39 + v53;
    goto LABEL_94;
  }

LABEL_27:
  v18 = *(&__dst + 1);
  v21 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v21 - *(&__dst + 1) >= 0x10)
  {
    v39 = __dst;
    goto LABEL_90;
  }

  v19 = *(&__dst + 1) + 16;
  if (0x7FFFFFFFFFFFFFF7 - (v87 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 16 - v21)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = __dst;
  if (v21 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_30;
  }

  v35 = 0;
  v34 = 0x7FFFFFFFFFFFFFF7;
LABEL_39:
  v36 = operator new(v34);
  v37 = v36;
  if (v18)
  {
    memmove(v36, v20, v18);
  }

  *&v37[v18] = *"BBTrace.scratch/";
  if (!v35)
  {
    operator delete(v20);
  }

  *(&__dst + 1) = v19;
  v87 = v34 | 0x8000000000000000;
  *&__dst = v37;
  v38 = &v37[v19];
LABEL_94:
  *v38 = 0;
  *__p = __dst;
  v89 = v87;
  v87 = 0;
  __dst = 0uLL;
  abm::trace::TraceInfo::create();
  v54 = v90;
  v90 = 0uLL;
  v55 = *(v2 + 256);
  *(v2 + 248) = v54;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v55->__on_zero_shared)(v55);
    std::__shared_weak_count::__release_weak(v55);
    v56 = *(&v90 + 1);
    if (!*(&v90 + 1))
    {
LABEL_98:
      if ((SHIBYTE(v89) & 0x80000000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_132;
    }
  }

  else
  {
    v56 = *(&v90 + 1);
    if (!*(&v90 + 1))
    {
      goto LABEL_98;
    }
  }

  if (atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_98;
  }

  (v56->__on_zero_shared)(v56);
  std::__shared_weak_count::__release_weak(v56);
  if ((SHIBYTE(v89) & 0x80000000) == 0)
  {
LABEL_99:
    if ((SHIBYTE(v87) & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_133;
  }

LABEL_132:
  operator delete(__p[0]);
  if ((SHIBYTE(v87) & 0x80000000) == 0)
  {
LABEL_100:
    v57 = abm::trace::kScratchFolder[0];
    v58 = strlen(abm::trace::kScratchFolder[0]);
    if (v58 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_134;
    }

    goto LABEL_101;
  }

LABEL_133:
  operator delete(__dst);
  v57 = abm::trace::kScratchFolder[0];
  v58 = strlen(abm::trace::kScratchFolder[0]);
  if (v58 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_134;
  }

LABEL_101:
  v59 = v58;
  if (v58 >= 0x17)
  {
    if ((v58 | 7) == 0x17)
    {
      v65 = 25;
    }

    else
    {
      v65 = (v58 | 7) + 1;
    }

    v60 = operator new(v65);
    *(&__dst + 1) = v59;
    v87 = v65 | 0x8000000000000000;
    *&__dst = v60;
LABEL_110:
    memmove(v60, v57, v59);
    *(v60 + v59) = 0;
    v61 = SHIBYTE(v87);
    if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_111;
  }

  HIBYTE(v87) = v58;
  v60 = &__dst;
  if (v58)
  {
    goto LABEL_110;
  }

  LOBYTE(__dst) = 0;
  v61 = SHIBYTE(v87);
  if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
  {
LABEL_104:
    if (v61 < 0x17)
    {
      v62 = v61 + 25;
      v63 = &__dst;
      v64 = 22;
LABEL_114:
      v66 = 2 * v64;
      if (v62 > 2 * v64)
      {
        v66 = v62;
      }

      if ((v66 | 7) == 0x17)
      {
        v67 = 25;
      }

      else
      {
        v67 = (v66 | 7) + 1;
      }

      if (v66 >= 0x17)
      {
        v13 = v67;
      }

      else
      {
        v13 = 23;
      }

      v68 = v64 == 22;
      goto LABEL_123;
    }

    v72 = &__dst;
    qmemcpy(&__dst + v61, "BBTrace.scratch.filtered/", 25);
    v73 = v61 + 25;
    HIBYTE(v87) = (v61 + 25) & 0x7F;
LABEL_136:
    v71 = v72 + v73;
    goto LABEL_137;
  }

LABEL_111:
  v61 = *(&__dst + 1);
  v64 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v64 - *(&__dst + 1) >= 0x19)
  {
    v72 = __dst;
    qmemcpy((__dst + *(&__dst + 1)), "BBTrace.scratch.filtered/", 25);
    v73 = v61 + 25;
    *(&__dst + 1) = v61 + 25;
    goto LABEL_136;
  }

  v62 = *(&__dst + 1) + 25;
  if (0x7FFFFFFFFFFFFFF7 - (v87 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 25 - v64)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v63 = __dst;
  if (v64 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_114;
  }

  v68 = 0;
LABEL_123:
  v69 = operator new(v13);
  v70 = v69;
  if (v61)
  {
    memmove(v69, v63, v61);
  }

  qmemcpy(&v70[v61], "BBTrace.scratch.filtered/", 25);
  if (!v68)
  {
    operator delete(v63);
  }

  *(&__dst + 1) = v62;
  v87 = v13 | 0x8000000000000000;
  *&__dst = v70;
  v71 = &v70[v62];
LABEL_137:
  *v71 = 0;
  *__p = __dst;
  v89 = v87;
  v87 = 0;
  __dst = 0uLL;
  abm::trace::TraceInfo::create();
  v74 = v90;
  v90 = 0uLL;
  v75 = *(v2 + 272);
  *(v2 + 264) = v74;
  if (!v75)
  {
LABEL_150:
    v81 = *(&v90 + 1);
    if (!*(&v90 + 1))
    {
      goto LABEL_152;
    }

    goto LABEL_151;
  }

LABEL_149:
  if (atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_150;
  }

  (v75->__on_zero_shared)(v75);
  std::__shared_weak_count::__release_weak(v75);
  v81 = *(&v90 + 1);
  if (!*(&v90 + 1))
  {
LABEL_152:
    if ((SHIBYTE(v89) & 0x80000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_159;
  }

LABEL_151:
  if (atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_152;
  }

  (v81->__on_zero_shared)(v81);
  std::__shared_weak_count::__release_weak(v81);
  if ((SHIBYTE(v89) & 0x80000000) == 0)
  {
LABEL_153:
    if ((SHIBYTE(v87) & 0x80000000) == 0)
    {
      goto LABEL_154;
    }

LABEL_160:
    operator delete(__dst);
    operator delete(v1);
    v82 = a1;
    if (!a1)
    {
      return;
    }

    goto LABEL_161;
  }

LABEL_159:
  operator delete(__p[0]);
  if (SHIBYTE(v87) < 0)
  {
    goto LABEL_160;
  }

LABEL_154:
  operator delete(v1);
  v82 = a1;
  if (!a1)
  {
    return;
  }

LABEL_161:
  v83 = v82[2];
  if (v83)
  {
    if (!atomic_fetch_add(&v83->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v84 = v82;
      (v83->__on_zero_shared)(v83);
      std::__shared_weak_count::__release_weak(v83);
      v82 = v84;
    }
  }

  operator delete(v82);
}

void sub_23C298244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    operator delete(v21);
    std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  operator delete(v21);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_23C2982EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  operator delete(v9);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(dispatch_group_t **a1)
{
  v2 = *a1;
  v3 = (*a1)[1];
  isa = v3[11].isa;
  if (isa)
  {
    dispatch_retain(v3[11].isa);
    dispatch_group_enter(isa);
  }

  if (v3[13].isa)
  {
    if (!INTTrace::prepare_sync(v3))
    {
      v5 = v3[5].isa;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, "Failed to open trace transport during prepare stage; ignore this failure and proceed", buf, 2u);
      }
    }
  }

  else
  {
    v6 = v3[5].isa;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Trace is not enabled. Skip to prepare processing", buf, 2u);
    }
  }

  if (isa)
  {
    dispatch_group_leave(isa);
    dispatch_release(isa);
  }

  if (*v2)
  {
    dispatch_group_leave(*v2);
    if (*v2)
    {
      dispatch_release(*v2);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_23C298474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t *a10)
{
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  std::unique_ptr<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[2].~__shared_weak_count_0;
  if (v3)
  {
    dispatch_retain(v1->__vftable[2].~__shared_weak_count_0);
    dispatch_group_enter(v3);
  }

  if (LOBYTE(v2[2].__get_deleter) == 1)
  {
    shared_owners = v1->__shared_owners_;
    buf.gr_name = shared_owners;
    if (shared_owners)
    {
      dispatch_retain(shared_owners);
    }

    INTTrace::start_sync(v2, &buf);
LABEL_33:
    if (shared_owners)
    {
      dispatch_release(shared_owners);
    }

    if (v3)
    {
      dispatch_group_leave(v3);
      dispatch_release(v3);
    }

    if (__p)
    {
      v14 = __p->__shared_owners_;
      if (v14)
      {
        dispatch_release(v14);
      }

      operator delete(__p);
    }

    v15 = a1;
    if (a1)
    {
      v16 = a1[2];
      if (v16)
      {
        if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
          v15 = a1;
        }
      }

      operator delete(v15);
    }

    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v2[4].__on_zero_shared)
  {
    goto LABEL_30;
  }

  v5 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.gr_name) = 0;
    _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Creating Trace CommandDriver", &buf, 2u);
  }

  v6 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v7 = off_280C059B8;
  if (!off_280C059B8)
  {
    CommandDriverFactory::create_default_global(&buf, v6);
    v8 = *&buf.gr_name;
    buf.gr_name = 0;
    buf.gr_passwd = 0;
    v9 = *(&off_280C059B8 + 1);
    off_280C059B8 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    gr_passwd = buf.gr_passwd;
    if (buf.gr_passwd && !atomic_fetch_add(buf.gr_passwd + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*gr_passwd + 16))(gr_passwd);
      std::__shared_weak_count::__release_weak(gr_passwd);
    }

    v7 = off_280C059B8;
  }

  v22 = *(&off_280C059B8 + 1);
  if (*(&off_280C059B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C059B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v7 + 128))(&v23, v7);
  v11 = v23;
  v23 = 0uLL;
  get_deleter = v2[4].__get_deleter;
  *&v2[4].__on_zero_shared = v11;
  if (get_deleter && !atomic_fetch_add(&get_deleter->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (get_deleter->__on_zero_shared)(get_deleter);
    std::__shared_weak_count::__release_weak(get_deleter);
  }

  v13 = *(&v23 + 1);
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v2[4].__on_zero_shared)
  {
LABEL_30:
    shared_owners = v1->__shared_owners_;
    buf.gr_name = shared_owners;
    if (shared_owners)
    {
      dispatch_retain(shared_owners);
    }

    INTTrace::stop_sync(v2, &buf);
    goto LABEL_33;
  }

  v18 = GetOsLogContext()[1];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf.gr_name) = 0;
    _os_log_fault_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_FAULT, "Trace command driver must be present!", &buf, 2u);
  }

  v19 = GetOsLogContext()[1];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf.gr_name) = 136315906;
    *(&buf.gr_name + 4) = "ABM ASSERT";
    WORD2(buf.gr_passwd) = 2080;
    *(&buf.gr_passwd + 6) = "fTraceCommandDriver";
    *(&buf.gr_gid + 3) = 2080;
    buf.gr_mem = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/ABMHelper/Server/Tasks/Wireless/Trace/INTTrace/INTTrace.cpp";
    v25 = 1024;
    v26 = 203;
    _os_log_fault_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", &buf, 0x26u);
  }

  __break(1u);
}

void sub_23C298920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a11, char a12, char a13)
{
  if (v13)
  {
    dispatch_group_leave(v13);
    dispatch_release(v13);
  }

  std::unique_ptr<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      dispatch_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 88);
  if (v4)
  {
    dispatch_retain(*(*v2 + 88));
    dispatch_group_enter(v4);
  }

  if (*(v3 + 104))
  {
    v5 = v2[1];
    buf.gr_name = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    INTTrace::stop_sync(v3, &buf);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  else
  {
    v6 = *(v3 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.gr_name) = 0;
      _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Trace is not enabled. Skip processing trace stop", &buf, 2u);
    }
  }

  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void sub_23C298B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v11)
  {
    dispatch_release(v11);
    if (!v10)
    {
LABEL_3:
      std::unique_ptr<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
      std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v10)
  {
    goto LABEL_3;
  }

  dispatch_group_leave(v10);
  dispatch_release(v10);
  std::unique_ptr<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 88);
  if (v4)
  {
    dispatch_retain(*(*v2 + 88));
    dispatch_group_enter(v4);
  }

  v5 = *(v3 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Abort received", buf, 2u);
  }

  if (!*(v3 + 248))
  {
    goto LABEL_7;
  }

  v26 = 0;
  buf[0] = 0;
  Timestamp::Timestamp(v23);
  v22 = 0;
  LOBYTE(v21) = 0;
  v20 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v23, v24);
  if (v26 < 0)
  {
    operator delete(*buf);
    if (!*(v3 + 264))
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_7:
    if (!*(v3 + 264))
    {
      goto LABEL_11;
    }
  }

  v18 = 0;
  LOBYTE(v17) = 0;
  Timestamp::Timestamp(v15);
  v14 = 0;
  LOBYTE(v13) = 0;
  v12 = 0;
  LOBYTE(v11) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v15, v16);
  if (v18 < 0)
  {
    operator delete(v17);
  }

LABEL_11:
  v6 = *(v3 + 176);
  if (v6)
  {
    v7 = v2[1];
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
    }

    (*(*v6 + 120))(v6, &object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  INTTrace::stopReader_sync(v3);
  *(v3 + 204) = 0;
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  v8 = v2[1];
  if (v8)
  {
    dispatch_release(v8);
  }

  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_23C298E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, dispatch_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (object)
  {
    dispatch_release(object);
    if (!v38)
    {
LABEL_6:
      std::unique_ptr<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
      std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_6;
  }

  dispatch_group_leave(v38);
  dispatch_release(v38);
  goto LABEL_6;
}

void sub_23C298F48()
{
  if (!v0)
  {
    JUMPOUT(0x23C298F30);
  }

  JUMPOUT(0x23C298F20);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = *(*a1 + 8);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Shutdown received", buf, 2u);
  }

  v4 = *(v2 + 176);
  if (v4)
  {
    v5 = *(v1 + 2);
    *buf = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    (*(*v4 + 120))(v4, buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  INTTrace::stopReader_sync(v2);
  v6 = *(v2 + 184);
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(v2 + 168);
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  *(v2 + 204) = 0;
  if (__p)
  {
    v8 = *(__p + 2);
    if (v8)
    {
      dispatch_release(v8);
    }

    if (*__p)
    {
      dispatch_group_leave(*__p);
      if (*__p)
      {
        dispatch_release(*__p);
      }
    }

    operator delete(__p);
  }

  v9 = a1;
  if (a1)
  {
    v10 = a1[2];
    if (v10)
    {
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
        v9 = a1;
      }
    }

    operator delete(v9);
  }
}

void sub_23C299150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t *a10, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    std::unique_ptr<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

dispatch_group_t **std::unique_ptr<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](dispatch_group_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_release(v3);
    }

    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Flush received", buf, 2u);
  }

  v5 = *(v3 + 176);
  if (v5)
  {
    (*(*v5 + 144))(v5);
  }

  v6 = v2[1];
  if (v6)
  {
    dispatch_group_leave(v6);
    v7 = v2[1];
    if (v7)
    {
      dispatch_release(v7);
    }
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void sub_23C299308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::enterLowPower(dispatch::group)::$_0>(INTTrace::enterLowPower(dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::enterLowPower(dispatch::group)::$_0,dispatch_queue_s *::default_delete<INTTrace::enterLowPower(dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke(dispatch_group_t **a1)
{
  v2 = *a1;
  isa = (*a1)[1][5].isa;
  if (os_log_type_enabled(isa, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23C1C4000, isa, OS_LOG_TYPE_DEFAULT, "#I EnterLowPower received", v5, 2u);
  }

  if (*v2)
  {
    dispatch_group_leave(*v2);
    if (*v2)
    {
      dispatch_release(*v2);
    }
  }

  operator delete(v2);
  v4 = a1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::exitLowPower(dispatch::group)::$_0>(INTTrace::exitLowPower(dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::exitLowPower(dispatch::group)::$_0,dispatch_queue_s *::default_delete<INTTrace::exitLowPower(dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke(dispatch_group_t **a1)
{
  v2 = *a1;
  isa = (*a1)[1][5].isa;
  if (os_log_type_enabled(isa, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23C1C4000, isa, OS_LOG_TYPE_DEFAULT, "#I ExitLowPower received", v5, 2u);
  }

  if (*v2)
  {
    dispatch_group_leave(*v2);
    if (*v2)
    {
      dispatch_release(*v2);
    }
  }

  operator delete(v2);
  v4 = a1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v13[0] = v1;
  v2 = *(v1 + 8);
  if (*(v2 + 104) != 1 || *(v2 + 96) == 8)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_ERROR, "Trace is disabled / mode is - Active Background. Skip snapshot processing", &__p, 2u);
    }

    goto LABEL_5;
  }

  if (*(v2 + 248) && (__p = operator new(0x20uLL), v19 = xmmword_23C32C720, strcpy(__p, "Trace State Configuration"), INTTrace::getStateAsDict_sync(v2, v1 + 16, &object), abm::trace::TraceInfo::push(), xpc_release(object), object = 0, SHIBYTE(v19) < 0))
  {
    operator delete(__p);
    if (*(v2 + 264))
    {
LABEL_14:
      __p = operator new(0x20uLL);
      v19 = xmmword_23C32C720;
      strcpy(__p, "Trace State Configuration");
      INTTrace::getStateAsDict_sync(v2, v1 + 16, &v16);
      abm::trace::TraceInfo::push();
      xpc_release(v16);
      v16 = 0;
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p);
      }
    }
  }

  else if (*(v2 + 264))
  {
    goto LABEL_14;
  }

  v6 = *(v2 + 176);
  if (v6)
  {
    v6 = (*(*v6 + 128))(v6);
    if (v6)
    {
      if (!*(v2 + 96))
      {
        v6 = (*(**(v2 + 176) + 144))(*(v2 + 176));
      }
    }
  }

  if (*(v2 + 160))
  {
    capabilities::debug::environment(v6);
    capabilities::debug::operator&();
    v7 = *(v2 + 160);
    v8 = *(v1 + 40);
    cf = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    v9 = *(v2 + 256);
    __p = *(v2 + 248);
    *&v19 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(v2 + 272);
    v13[1] = *(v2 + 264);
    v14 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    abm::trace::TraceReader::snapshot();
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v11 = v19;
    if (v19 && !atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

LABEL_5:
  std::unique_ptr<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](v13);
  v4 = a1;
  if (a1)
  {
    v5 = a1[2];
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = a1;
      }
    }

    operator delete(v4);
  }
}

void sub_23C29985C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  va_copy(va3, va2);
  v7 = va_arg(va3, void);
  v9 = va_arg(va3, void);
  va_copy(va4, va3);
  v10 = va_arg(va4, const void *);
  v12 = va_arg(va4, void);
  v13 = va_arg(va4, void);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va4);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va3);
  std::unique_ptr<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C299894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, xpc_object_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  xpc_release(object);
  object = 0;
  if (a22 < 0)
  {
    operator delete(__p);
    std::unique_ptr<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
    std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      CFRelease(v3);
    }

    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    if (*v2)
    {
      dispatch_group_leave(*v2);
      if (*v2)
      {
        dispatch_release(*v2);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::dumpState(dispatch::group,std::string)::$_0>(INTTrace::dumpState(dispatch::group,std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::dumpState(dispatch::group,std::string)::$_0,std::default_delete<INTTrace::dumpState(dispatch::group,std::string)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 88);
  if (v4)
  {
    dispatch_retain(*(*v2 + 88));
    dispatch_group_enter(v4);
  }

  v5 = *(v3 + 40);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

  if (*(v2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v2[1], v2[2]);
  }

  else
  {
    v6 = *(v2 + 1);
    v10.__r_.__value_.__r.__words[2] = v2[3];
    *&v10.__r_.__value_.__l.__data_ = v6;
  }

  INTTrace::dumpState_sync(v3, &v10, __p);
  if (v12 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  *buf = 136315138;
  v14 = v7;
  _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_21;
    }

LABEL_12:
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_21:
  operator delete(v10.__r_.__value_.__l.__data_);
  if (v4)
  {
LABEL_13:
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

LABEL_14:
  if (*(v2 + 31) < 0)
  {
    operator delete(v2[1]);
  }

  operator delete(v2);
  v8 = *(a1 + 2);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_23C299B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (!v16)
  {
    std::unique_ptr<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  dispatch_group_leave(v16);
  dispatch_release(v16);
  std::unique_ptr<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8INTTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSH__block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(v1 + 40);
  v3 = (v1 + 16);
  if ((*(v1 + 39) & 0x80000000) == 0)
  {
    if (strcasecmp((v1 + 16), "Enabled"))
    {
      if (strcasecmp((v1 + 16), "Live_Filter_Setting"))
      {
        if (strcasecmp((v1 + 16), "PrivacyLevel"))
        {
          if (strcasecmp((v1 + 16), "PeakBandwidthMbps"))
          {
            if (strcasecmp((v1 + 16), "History"))
            {
              if (strcasecmp((v1 + 16), "Mode"))
              {
                if (strcasecmp((v1 + 16), "Reset_Mode_Boot"))
                {
                  if (strcasecmp((v1 + 16), "TraceOwnership"))
                  {
                    if (strcasecmp((v1 + 16), "File"))
                    {
                      if (strcasecmp((v1 + 16), "MaxMemoryFileCount"))
                      {
                        if (strcasecmp((v1 + 16), "FileSize"))
                        {
                          if (strcasecmp((v1 + 16), "SizeIO"))
                          {
                            if (strcasecmp((v1 + 16), "NumberOfReadIO"))
                            {
                              if (strcasecmp((v1 + 16), "Enabled_During_Sleep"))
                              {
                                v7 = (v1 + 16);
                                if (strcasecmp((v1 + 16), "File_Sleep"))
                                {
                                  goto LABEL_17;
                                }

                                goto LABEL_40;
                              }

                              goto LABEL_118;
                            }

                            goto LABEL_112;
                          }

                          goto LABEL_106;
                        }

                        goto LABEL_100;
                      }

                      goto LABEL_94;
                    }

                    goto LABEL_88;
                  }

                  goto LABEL_82;
                }

                goto LABEL_76;
              }

              goto LABEL_70;
            }

            goto LABEL_64;
          }

          goto LABEL_58;
        }

        goto LABEL_52;
      }

      goto LABEL_48;
    }

LABEL_44:
    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    *(&buf.__r_.__value_.__s + 23) = 7;
    strcpy(&buf, "Enabled");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropEnabled_sync(v2, &v68, &buf, &v67);
LABEL_148:
    **v1 = v10;
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_150:
        if (!v9)
        {
          goto LABEL_155;
        }

LABEL_154:
        dispatch_release(v9);
        goto LABEL_155;
      }
    }

    else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_150;
    }

    operator delete(buf.__r_.__value_.__l.__data_);
    if (!v9)
    {
      goto LABEL_155;
    }

    goto LABEL_154;
  }

  v7 = *v3;
  if (!strcasecmp(*v3, "Enabled"))
  {
    goto LABEL_44;
  }

  if (!strcasecmp(v7, "Live_Filter_Setting"))
  {
LABEL_48:
    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    *(&buf.__r_.__value_.__s + 23) = 19;
    strcpy(&buf, "Live_Filter_Setting");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropLiveFilterSetting_sync(v2, &v68, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "PrivacyLevel"))
  {
LABEL_52:
    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    *(&buf.__r_.__value_.__s + 23) = 12;
    strcpy(&buf, "PrivacyLevel");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropPrivacyLevel_sync(v2, &v68, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "PeakBandwidthMbps"))
  {
LABEL_58:
    v9 = *(v1 + 48);
    if (v9)
    {
      dispatch_retain(*(v1 + 48));
    }

    *(&buf.__r_.__value_.__s + 23) = 17;
    *&buf.__r_.__value_.__l.__data_ = *"PeakBandwidthMbps";
    LOWORD(buf.__r_.__value_.__r.__words[2]) = str_18_0[16];
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropBandwidthMbps_sync(v2, v4, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "History"))
  {
LABEL_64:
    v9 = *(v1 + 48);
    if (v9)
    {
      dispatch_retain(*(v1 + 48));
    }

    *(&buf.__r_.__value_.__s + 23) = 7;
    strcpy(&buf, "History");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropHistory_sync(v2, v5, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "Mode"))
  {
LABEL_70:
    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    *(&buf.__r_.__value_.__s + 23) = 4;
    strcpy(&buf, "Mode");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropTraceMode_sync(v2, &v68, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "Reset_Mode_Boot"))
  {
LABEL_76:
    v9 = *(v1 + 48);
    if (v9)
    {
      dispatch_retain(*(v1 + 48));
    }

    *(&buf.__r_.__value_.__s + 23) = 15;
    strcpy(&buf, "Reset_Mode_Boot");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropTraceResetModeReboot_sync(v2, v6, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "TraceOwnership"))
  {
LABEL_82:
    v9 = *(v1 + 48);
    if (v9)
    {
      dispatch_retain(*(v1 + 48));
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "TraceOwnership");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropTraceOwnership_sync(v2, v11, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "File"))
  {
LABEL_88:
    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "File");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropConfig_sync(v2, &v68, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "MaxMemoryFileCount"))
  {
LABEL_94:
    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "MaxMemoryFileCount");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropMaxMemoryFileCount_sync(v2, &v68, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "FileSize"))
  {
LABEL_100:
    v9 = *(v1 + 48);
    if (v9)
    {
      dispatch_retain(*(v1 + 48));
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "FileSize");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropFileSize_sync(v2, v12, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "SizeIO"))
  {
LABEL_106:
    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "SizeIO");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropTransportReadSize_sync(v2, &v68, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "NumberOfReadIO"))
  {
LABEL_112:
    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "NumberOfReadIO");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropTransportReadCount_sync(v2, &v68, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "Enabled_During_Sleep"))
  {
LABEL_118:
    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "Enabled_During_Sleep");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropSleepTraceMode_sync(v2, &v68, &buf, &v67);
    goto LABEL_148;
  }

  if (!strcasecmp(v7, "File_Sleep"))
  {
LABEL_40:
    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "File_Sleep");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropSleepConfig_sync(v2, &v68, &buf, &v67);
    goto LABEL_148;
  }

LABEL_17:
  if (!strcasecmp(v7, "Error_Handling"))
  {
    v9 = *(v1 + 48);
    if (v9)
    {
      dispatch_retain(*(v1 + 48));
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "Error_Handling");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropErrorHandling_sync(v2, v13, &buf, &v67);
    goto LABEL_148;
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "AnomalyDetectionLevel");
  v8 = util::equal_nocase((v1 + 16), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "AnomalyDetectionLevel");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v10 = INTTrace::setPropAnomalyDetectionLevel_sync(v2, &v68, &buf, &v67);
    goto LABEL_148;
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "CellularLoggingAllowed");
  v14 = util::equal_nocase((v1 + 16), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v14)
  {
    v15 = prop::bbtrace::set((v1 + 16), v1 + 56);
    v16 = *v1;
    **v1 = v15;
    if (v15)
    {
      LOBYTE(v15) = prop::bbtrace::get<BOOL>((v1 + 16), (v2 + 296));
LABEL_213:
      v16 = *v1;
      goto LABEL_214;
    }

    goto LABEL_214;
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "CarrierName1");
  v17 = util::equal_nocase((v1 + 16), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    v18 = v17;
    operator delete(buf.__r_.__value_.__l.__data_);
    v17 = v18;
  }

  if (v17)
  {
    v15 = prop::bbtrace::set((v1 + 16), v1 + 56);
    v16 = *v1;
    **v1 = v15;
    if (v15)
    {
      LOBYTE(v15) = prop::bbtrace::get((v1 + 16), v2 + 304);
      goto LABEL_213;
    }

LABEL_214:
    *v16 = v15;
    goto LABEL_155;
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "CarrierName2");
  v47 = util::equal_nocase((v1 + 16), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v47)
  {
    v15 = prop::bbtrace::set((v1 + 16), v1 + 56);
    v16 = *v1;
    **v1 = v15;
    if (v15)
    {
      LOBYTE(v15) = prop::bbtrace::get((v1 + 16), v2 + 328);
      goto LABEL_213;
    }

    goto LABEL_214;
  }

  v48 = *(v1 + 39);
  v49 = (v1 + 16);
  if (v48 < 0)
  {
    v49 = *v3;
  }

  if (!strcasecmp(v49, "Retain_Previous_Trace"))
  {
    v9 = *(v1 + 48);
    if (v9)
    {
      dispatch_retain(*(v1 + 48));
      LOBYTE(v48) = *(v1 + 39);
    }

    if ((v48 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&buf, *(v1 + 16), *(v1 + 24));
    }

    else
    {
      *&buf.__r_.__value_.__l.__data_ = *v3;
      buf.__r_.__value_.__r.__words[2] = *(v1 + 32);
    }

    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v54 = INTTrace::setPropRetainPreviousTrace_sync(v2, v50, &buf, &v67);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&buf, "AnomalyDetectionTimeout");
    v51 = util::equal_nocase((v1 + 16), &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (!v51)
    {
      v52 = *(v2 + 40);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = (v1 + 16);
        if (*(v1 + 39) < 0)
        {
          v53 = *v3;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v53;
        _os_log_error_impl(&dword_23C1C4000, v52, OS_LOG_TYPE_ERROR, "Key not handled: %s", &buf, 0xCu);
      }

      goto LABEL_155;
    }

    v9 = *(v1 + 48);
    v68 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "AnomalyDetectionTimeout");
    if (*(v1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v1 + 56), *(v1 + 64));
    }

    else
    {
      v67 = *(v1 + 56);
    }

    v54 = INTTrace::setPropAnomalyDetectionTimeout_sync(v2, &v68, &buf, &v67);
  }

  **v1 = v54;
  if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_242;
    }

LABEL_245:
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v9)
    {
      goto LABEL_154;
    }

    goto LABEL_155;
  }

  operator delete(v67.__r_.__value_.__l.__data_);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_245;
  }

LABEL_242:
  if (v9)
  {
    goto LABEL_154;
  }

LABEL_155:
  if (!*(v2 + 248))
  {
    goto LABEL_178;
  }

  v19 = *(v1 + 39);
  if (v19 >= 0)
  {
    v20 = *(v1 + 39);
  }

  else
  {
    v20 = *(v1 + 24);
  }

  v21 = v20 + 3;
  if (v20 + 3 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v21 < 0x17)
  {
    memset(&v64, 0, sizeof(v64));
    v23 = &v64;
    *(&v64.__r_.__value_.__s + 23) = v20 + 3;
    if (!v20)
    {
      goto LABEL_170;
    }
  }

  else
  {
    if ((v21 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v21 | 7) + 1;
    }

    v23 = operator new(v22);
    v64.__r_.__value_.__l.__size_ = v20 + 3;
    v64.__r_.__value_.__r.__words[2] = v22 | 0x8000000000000000;
    v64.__r_.__value_.__r.__words[0] = v23;
  }

  v24 = *v3;
  if (v19 >= 0)
  {
    v25 = (v1 + 16);
  }

  else
  {
    v25 = *v3;
  }

  memmove(v23, v25, v20);
LABEL_170:
  *&v23[v20] = 2112800;
  v26 = *(v1 + 79);
  if (v26 >= 0)
  {
    v27 = (v1 + 56);
  }

  else
  {
    v27 = *(v1 + 56);
  }

  if (v26 >= 0)
  {
    v28 = *(v1 + 79);
  }

  else
  {
    v28 = *(v1 + 64);
  }

  v29 = std::string::append(&v64, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v66 = v29->__r_.__value_.__r.__words[2];
  v65 = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  Timestamp::Timestamp(v62);
  v61 = 0;
  LOBYTE(v60) = 0;
  v59 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v62, v63);
  if ((SHIBYTE(v66) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_178;
    }

LABEL_203:
    operator delete(v64.__r_.__value_.__l.__data_);
    if (!*(v2 + 264))
    {
      goto LABEL_207;
    }

    goto LABEL_179;
  }

  operator delete(v65);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_203;
  }

LABEL_178:
  if (!*(v2 + 264))
  {
    goto LABEL_207;
  }

LABEL_179:
  v31 = *(v1 + 39);
  if (v31 >= 0)
  {
    v32 = *(v1 + 39);
  }

  else
  {
    v32 = *(v1 + 24);
  }

  v33 = v32 + 3;
  if (v32 + 3 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v33 < 0x17)
  {
    memset(&v57, 0, sizeof(v57));
    v35 = &v57;
    *(&v57.__r_.__value_.__s + 23) = v32 + 3;
    if (!v32)
    {
      goto LABEL_193;
    }
  }

  else
  {
    if ((v33 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v33 | 7) + 1;
    }

    v35 = operator new(v34);
    v57.__r_.__value_.__l.__size_ = v32 + 3;
    v57.__r_.__value_.__r.__words[2] = v34 | 0x8000000000000000;
    v57.__r_.__value_.__r.__words[0] = v35;
  }

  v36 = *v3;
  if (v31 >= 0)
  {
    v37 = (v1 + 16);
  }

  else
  {
    v37 = *v3;
  }

  memmove(v35, v37, v32);
LABEL_193:
  *&v35[v32] = 2112800;
  v40 = *(v1 + 56);
  v39 = v1 + 56;
  v38 = v40;
  v41 = *(v39 + 23);
  if (v41 >= 0)
  {
    v42 = v39;
  }

  else
  {
    v42 = v38;
  }

  if (v41 >= 0)
  {
    v43 = *(v39 + 23);
  }

  else
  {
    v43 = *(v39 + 8);
  }

  v44 = std::string::append(&v57, v42, v43);
  v45 = *&v44->__r_.__value_.__l.__data_;
  v64.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v64.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  Timestamp::Timestamp(v55);
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v55, v56);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_206:
      operator delete(v57.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_206;
  }

LABEL_207:
  v46 = *MEMORY[0x277D85DE8];
}

void sub_23C29AC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
    if (v51)
    {
LABEL_5:
      dispatch_release(v51);
      _Unwind_Resume(a1);
    }
  }

  else if (v51)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8INTTrace11getPropertyERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERSB_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSG__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(v1 + 40);
  v3 = (v1 + 16);
  if (*(v1 + 39) < 0)
  {
    v4 = *v3;
    if (strcasecmp(*v3, "Enabled"))
    {
      if (strcasecmp(v4, "Live_Filter_Setting"))
      {
        if (strcasecmp(v4, "History"))
        {
          if (strcasecmp(v4, "PeakBandwidthMbps"))
          {
            if (strcasecmp(v4, "Mode"))
            {
              if (strcasecmp(v4, "Reset_Mode_Boot"))
              {
                if (strcasecmp(v4, "TraceOwnership"))
                {
                  if (strcasecmp(v4, "File"))
                  {
                    if (strcasecmp(v4, "State"))
                    {
                      if (strcasecmp(v4, "MaxMemoryFileCount"))
                      {
                        if (strcasecmp(v4, "FileSize"))
                        {
                          if (strcasecmp(v4, "SizeIO"))
                          {
                            if (strcasecmp(v4, "NumberOfReadIO"))
                            {
                              if (strcasecmp(v4, "Enabled_During_Sleep"))
                              {
                                if (strcasecmp(v4, "File_Sleep"))
                                {
                                  if (strcasecmp(v4, "Error_Handling"))
                                  {
                                    if (strcasecmp(v4, "CellularLoggingAllowed"))
                                    {
                                      if (strcasecmp(v4, "CarrierName1"))
                                      {
                                        if (strcasecmp(v4, "CarrierName2"))
                                        {
                                          if (strcasecmp(v4, "Retain_Previous_Trace"))
                                          {
                                            if (strcasecmp(v4, "AnomalyDetectionLevel"))
                                            {
                                              goto LABEL_23;
                                            }

                                            goto LABEL_49;
                                          }

LABEL_90:
                                          util::to_str<BOOL>(*(v2 + 356), &buf);
                                          goto LABEL_74;
                                        }

                                        goto LABEL_87;
                                      }

LABEL_84:
                                      v18 = *(v1 + 8);
                                      v25 = *MEMORY[0x277D85DE8];
                                      v20 = (v2 + 304);

                                      goto LABEL_65;
                                    }

LABEL_83:
                                    util::to_str<BOOL>(*(v2 + 296), &buf);
                                    goto LABEL_74;
                                  }

LABEL_82:
                                  util::to_str<BOOL>(*(v2 + 352), &buf);
                                  goto LABEL_74;
                                }

LABEL_79:
                                v18 = *(v1 + 8);
                                v24 = *MEMORY[0x277D85DE8];
                                v20 = (v2 + 216);

                                goto LABEL_65;
                              }

LABEL_77:
                              v23 = *(v2 + 208);
                              capabilities::trace::asString();
                              std::string::operator=(*(v1 + 8), &buf);
                              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(buf.__r_.__value_.__l.__data_);
                              }

                              goto LABEL_62;
                            }

LABEL_73:
                            util::to_str<unsigned int>(*(v2 + 200), &buf);
                            goto LABEL_74;
                          }

LABEL_72:
                          util::to_str<unsigned int>(*(v2 + 196), &buf);
                          goto LABEL_74;
                        }

LABEL_71:
                        util::to_str<unsigned int>(*(v2 + 120), &buf);
                        goto LABEL_74;
                      }

LABEL_70:
                      util::to_str<unsigned int>(*(v2 + 124), &buf);
                      goto LABEL_74;
                    }

LABEL_66:
                    std::string::basic_string[abi:ne200100]<0>(__p, "Get dump state");
                    INTTrace::dumpState_sync(v2, __p, &buf);
                    std::string::operator=(*(v1 + 8), &buf);
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }

                    if (v28 < 0)
                    {
                      operator delete(__p[0]);
                    }

                    goto LABEL_62;
                  }

LABEL_63:
                  v18 = *(v1 + 8);
                  v19 = *MEMORY[0x277D85DE8];
                  v20 = (v2 + 128);

                  goto LABEL_65;
                }

                goto LABEL_58;
              }

              goto LABEL_57;
            }

            goto LABEL_56;
          }

          goto LABEL_55;
        }

        goto LABEL_54;
      }

      goto LABEL_53;
    }

LABEL_52:
    v7 = *(v2 + 104);
    memset(__p, 0, 15);
    std::to_string(&buf, v7);
LABEL_59:
    __p[0] = buf.__r_.__value_.__l.__size_;
    v14 = buf.__r_.__value_.__r.__words[0];
    *(__p + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    v16 = *(v1 + 8);
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    *v16 = v14;
    *(v16 + 8) = __p[0];
    *(v16 + 15) = *(__p + 7);
    *(v16 + 23) = v15;
    goto LABEL_62;
  }

  if (!strcasecmp((v1 + 16), "Enabled"))
  {
    goto LABEL_52;
  }

  if (!strcasecmp((v1 + 16), "Live_Filter_Setting"))
  {
LABEL_53:
    v8 = *(v2 + 116);
    memset(__p, 0, 15);
    std::to_string(&buf, v8);
    goto LABEL_59;
  }

  if (!strcasecmp((v1 + 16), "History"))
  {
LABEL_54:
    v9 = *(v2 + 112);
    memset(__p, 0, 15);
    std::to_string(&buf, v9);
    goto LABEL_59;
  }

  if (!strcasecmp((v1 + 16), "PeakBandwidthMbps"))
  {
LABEL_55:
    v10 = *(v2 + 360);
    memset(__p, 0, 15);
    std::to_string(&buf, v10);
    goto LABEL_59;
  }

  if (!strcasecmp((v1 + 16), "Mode"))
  {
LABEL_56:
    v11 = *(v2 + 96);
    memset(__p, 0, 15);
    std::to_string(&buf, v11);
    goto LABEL_59;
  }

  if (!strcasecmp((v1 + 16), "Reset_Mode_Boot"))
  {
LABEL_57:
    v12 = *(v2 + 100);
    memset(__p, 0, 15);
    std::to_string(&buf, v12);
    goto LABEL_59;
  }

  if (!strcasecmp((v1 + 16), "TraceOwnership"))
  {
LABEL_58:
    v13 = *(v2 + 152);
    memset(__p, 0, 15);
    std::to_string(&buf, v13);
    goto LABEL_59;
  }

  if (!strcasecmp((v1 + 16), "File"))
  {
    goto LABEL_63;
  }

  if (!strcasecmp((v1 + 16), "State"))
  {
    goto LABEL_66;
  }

  if (!strcasecmp((v1 + 16), "MaxMemoryFileCount"))
  {
    goto LABEL_70;
  }

  if (!strcasecmp((v1 + 16), "FileSize"))
  {
    goto LABEL_71;
  }

  if (!strcasecmp((v1 + 16), "SizeIO"))
  {
    goto LABEL_72;
  }

  if (!strcasecmp((v1 + 16), "NumberOfReadIO"))
  {
    goto LABEL_73;
  }

  if (!strcasecmp((v1 + 16), "Enabled_During_Sleep"))
  {
    goto LABEL_77;
  }

  if (!strcasecmp((v1 + 16), "File_Sleep"))
  {
    goto LABEL_79;
  }

  if (!strcasecmp((v1 + 16), "Error_Handling"))
  {
    goto LABEL_82;
  }

  if (!strcasecmp((v1 + 16), "CellularLoggingAllowed"))
  {
    goto LABEL_83;
  }

  if (!strcasecmp((v1 + 16), "CarrierName1"))
  {
    goto LABEL_84;
  }

  if (strcasecmp((v1 + 16), "CarrierName2"))
  {
    if (strcasecmp((v1 + 16), "Retain_Previous_Trace"))
    {
      v4 = (v1 + 16);
      if (strcasecmp((v1 + 16), "AnomalyDetectionLevel"))
      {
LABEL_23:
        if (strcasecmp(v4, "AnomalyDetectionTimeout"))
        {
          **v1 = 0;
          v5 = *(v2 + 40);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            if (*(v1 + 39) < 0)
            {
              v3 = *v3;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v3;
            _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, "Key not handled: %s", &buf, 0xCu);
          }

LABEL_62:
          v17 = *MEMORY[0x277D85DE8];
          return;
        }

        util::to_str<unsigned int>(*(v2 + 368), &buf);
LABEL_74:
        v21 = *(v1 + 8);
        if (*(v21 + 23) < 0)
        {
          operator delete(*v21);
        }

        v22 = *&buf.__r_.__value_.__l.__data_;
        *(v21 + 16) = *(&buf.__r_.__value_.__l + 2);
        *v21 = v22;
        goto LABEL_62;
      }

LABEL_49:
      util::to_str<trace::AnomalyDetectionLevel>(&buf, *(v2 + 364));
      v6 = *(v1 + 8);
      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      *v6 = buf;
      goto LABEL_62;
    }

    goto LABEL_90;
  }

LABEL_87:
  v18 = *(v1 + 8);
  v26 = *MEMORY[0x277D85DE8];
  v20 = (v2 + 328);

LABEL_65:
  std::string::operator=(v18, v20);
}

void sub_23C29B7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<INTTrace::prepare_sync(void)::$_0,std::allocator<INTTrace::prepare_sync(void)::$_0>,void ()(xpc::dict const&)>::~__func(uint64_t result)
{
  *result = &unk_284EFCCC8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<INTTrace::prepare_sync(void)::$_0,std::allocator<INTTrace::prepare_sync(void)::$_0>,void ()(xpc::dict const&)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_284EFCCC8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<INTTrace::prepare_sync(void)::$_0,std::allocator<INTTrace::prepare_sync(void)::$_0>,void ()(xpc::dict const&)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_284EFCCC8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<INTTrace::prepare_sync(void)::$_0,std::allocator<INTTrace::prepare_sync(void)::$_0>,void ()(xpc::dict const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284EFCCC8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<INTTrace::prepare_sync(void)::$_0,std::allocator<INTTrace::prepare_sync(void)::$_0>,void ()(xpc::dict const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<INTTrace::prepare_sync(void)::$_0,std::allocator<INTTrace::prepare_sync(void)::$_0>,void ()(xpc::dict const&)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<INTTrace::prepare_sync(void)::$_0,std::allocator<INTTrace::prepare_sync(void)::$_0>,void ()(xpc::dict const&)>::operator()(void *a1, xpc_object_t *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = *a2;
        if (v8)
        {
          xpc_retain(v8);
          v9 = v5[2];
          if (!v9)
          {
LABEL_20:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v8 = xpc_null_create();
          v9 = v5[2];
          if (!v9)
          {
            goto LABEL_20;
          }
        }

        v10 = v5[1];
        v11 = std::__shared_weak_count::lock(v9);
        if (!v11)
        {
          goto LABEL_20;
        }

        v12 = v11;
        v13 = operator new(0x10uLL);
        *v13 = v5;
        v13[1] = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v13[1] = xpc_null_create();
        }

        v14 = v5[3];
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = operator new(0x18uLL);
        *v15 = v13;
        v15[1] = v10;
        v15[2] = v12;
        dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>(INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1},dispatch_queue_s *::default_delete<INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
        if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        xpc_release(v8);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

uint64_t std::__function::__func<INTTrace::prepare_sync(void)::$_0,std::allocator<INTTrace::prepare_sync(void)::$_0>,void ()(xpc::dict const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN8INTTrace12prepare_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN8INTTrace12prepare_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN8INTTrace12prepare_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN8INTTrace12prepare_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>(INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1},dispatch_queue_s *::default_delete<INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v12 = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[2].~__shared_weak_count;
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = std::__shared_weak_count::lock(v3);
  object[2] = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  on_zero_shared_weak = v2[1].__on_zero_shared_weak;
  object[1] = on_zero_shared_weak;
  if (on_zero_shared_weak)
  {
    shared_owners = v1->__shared_owners_;
    object[0] = shared_owners;
    if (shared_owners)
    {
      xpc_retain(shared_owners);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    abm::BasebandTracingTask::commandReportStatsAWD(on_zero_shared_weak, object);
    xpc_release(object[0]);
    object[0] = 0;
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_9:
    v8 = v12;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v8 = v12;
  if (v12)
  {
LABEL_10:
    xpc_release(v8[1]);
    operator delete(v8);
  }

LABEL_11:
  v9 = a1;
  if (a1)
  {
    v10 = a1[2];
    if (v10)
    {
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
        v9 = a1;
      }
    }

    operator delete(v9);
  }
}

void sub_23C29BE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object, char a13)
{
  xpc_release(object);
  object = 0;
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
  std::unique_ptr<INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1},std::default_delete<INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **std::unique_ptr<INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1},std::default_delete<INTTrace::prepare_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t __cxx_global_var_init_65()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_66()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_67()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

double BasebandIPCTrace::createInternal@<D0>(_OWORD *a1@<X8>)
{
  v3 = operator new(0x80uLL);
  BasebandIPCTrace::BasebandIPCTrace(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<BasebandIPCTrace>::shared_ptr[abi:ne200100]<BasebandIPCTrace,std::shared_ptr<BasebandIPCTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTrace>(BasebandIPCTrace*)::{lambda(BasebandIPCTrace*)#1},0>(&v5, v3);
  result = *&v5;
  *a1 = v5;
  return result;
}

void BasebandIPCTrace::BasebandIPCTrace(BasebandIPCTrace *this)
{
  v7 = 11;
  strcpy(__p, "trace.bbipc");
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_USER_INITIATED);
  ctu::OsLogContext::~OsLogContext(v8);
  *this = &unk_284EF95A8;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_284EFCD48;
  v5 = 11;
  strcpy(v4, "BasebandIPC");
  isSupported = abm::trace::isSupported(v4);
  if (v5 < 0)
  {
    v3 = isSupported;
    operator delete(v4[0]);
    isSupported = v3;
  }

  *(this + 96) = isSupported;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
}

void sub_23C29C0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  Trace::~Trace(v14);
  _Unwind_Resume(a1);
}

void sub_23C29C10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  ctu::OsLogContext::~OsLogContext((v17 - 32));
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t BasebandIPCTrace::init(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v18 = *a2;
    v7 = a3[1];
    v16 = *a3;
    v17 = v7;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v18, *a2, *(a2 + 8));
  v7 = a3[1];
  v16 = *a3;
  v17 = v7;
  if (v7)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v8 = *a4;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = Trace::init(a1, &v18.__r_.__value_.__l.__data_, &v16, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v9)
    {
      goto LABEL_12;
    }

    return 0;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
  if (!v9)
  {
    return 0;
  }

LABEL_12:
  v14 = 7;
  strcpy(__p, "Enabled");
  memset(&v19, 0, sizeof(v19));
  result = prop::bbipc::get(__p, &v19);
  if (result)
  {
    result = util::convert<BOOL>(&v19, (a1 + 96), 0);
  }

  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return result;
    }

LABEL_22:
    v12 = result;
    operator delete(__p[0]);
    return v12;
  }

  v11 = result;
  operator delete(v19.__r_.__value_.__l.__data_);
  result = v11;
  if (v14 < 0)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_23C29C2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_object_t object, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BasebandIPCTrace::~BasebandIPCTrace(BasebandIPCTrace *this)
{
  *this = &unk_284EFCD48;
  v2 = *(this + 15);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 14);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  Trace::~Trace(v4);
}

{
  *this = &unk_284EFCD48;
  v2 = *(this + 15);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 14);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  Trace::~Trace(v4);
}

{
  *this = &unk_284EFCD48;
  v2 = *(this + 15);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 14);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    Trace::~Trace(this);
  }

  else
  {
    Trace::~Trace(this);
  }

  operator delete(v4);
}

void BasebandIPCTrace::start(uint64_t a1, dispatch_object_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v4);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZN16BasebandIPCTrace5startEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_29;
  v6[4] = a1;
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(group);
  }

  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }
}

void ___ZN16BasebandIPCTrace5startEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  *&v7.gr_gid = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v2 + 96);
    LODWORD(v7.gr_passwd) = 67109120;
    HIDWORD(v7.gr_passwd) = v4;
    _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Starting with enable = %d", &v7.gr_passwd, 8u);
  }

  if (*(v2 + 96) == 1)
  {
    v5 = *(a1 + 48);
    v7.gr_name = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    BasebandIPCTrace::start_sync(v2, &v7);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C29C788(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandIPCTrace::start_sync(BasebandIPCTrace *this, group *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  v4 = *(this + 11);
  if (v4)
  {
    dispatch_retain(*(this + 11));
    dispatch_group_enter(v4);
  }

  v65 = gr_name;
  v66 = v4;
  if (!*(this + 13))
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Create command driver", &buf, 2u);
    }

    v6 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v7 = off_280C059B8;
    if (!off_280C059B8)
    {
      CommandDriverFactory::create_default_global(&buf, v6);
      v8 = *&buf.__r_.__value_.__l.__data_;
      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      v9 = *(&off_280C059B8 + 1);
      off_280C059B8 = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      size = buf.__r_.__value_.__l.__size_;
      if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v7 = off_280C059B8;
    }

    v81[0] = v7;
    v81[1] = *(&off_280C059B8 + 1);
    if (*(&off_280C059B8 + 1))
    {
      atomic_fetch_add_explicit((*(&off_280C059B8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    (*(*v7 + 112))(&v83, v7);
    v11 = *&v83.__r_.__value_.__l.__data_;
    *&v83.__r_.__value_.__l.__data_ = 0uLL;
    v12 = *(this + 14);
    *(this + 104) = v11;
    v4 = v66;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = v83.__r_.__value_.__l.__size_;
    if (v83.__r_.__value_.__l.__size_ && !atomic_fetch_add((v83.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    if (v81[1] && !atomic_fetch_add(v81[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v81[1] + 16))(v81[1]);
      std::__shared_weak_count::__release_weak(v81[1]);
    }

    memset(&buf, 0, sizeof(buf));
    memset(&v83, 0, sizeof(v83));
    v82 = 8;
    strcpy(v81, "LogLevel");
    v14 = prop::bbipc::get(v81, &buf);
    if (v82 < 0)
    {
      v16 = v14;
      operator delete(v81[0]);
      if (v16)
      {
        goto LABEL_29;
      }
    }

    else if (v14)
    {
LABEL_29:
      v15 = *(this + 13);
      v80 = 8;
      strcpy(__p, "LogLevel");
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v78, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
      }

      else
      {
        v78 = buf;
      }

      (*(*v15 + 40))(v15, __p, &v78);
      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
        if ((v80 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }
      }

      else if ((v80 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      operator delete(__p[0]);
LABEL_37:
      v82 = 11;
      strcpy(v81, "PayloadSize");
      v18 = prop::bbipc::get(v81, &v83);
      if (v82 < 0)
      {
        v20 = v18;
        operator delete(v81[0]);
        if (v20)
        {
LABEL_39:
          v19 = *(this + 13);
          v77 = 11;
          strcpy(v76, "PayloadSize");
          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v75, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
          }

          else
          {
            v75 = v83;
          }

          (*(*v19 + 40))(v19, v76, &v75);
          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
            if ((v77 & 0x80000000) == 0)
            {
LABEL_50:
              if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_152;
            }
          }

          else if ((v77 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          operator delete(v76[0]);
          if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_51:
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_52;
            }

LABEL_153:
            operator delete(buf.__r_.__value_.__l.__data_);
            goto LABEL_52;
          }

LABEL_152:
          operator delete(v83.__r_.__value_.__l.__data_);
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_153;
        }
      }

      else if (v18)
      {
        goto LABEL_39;
      }

      v21 = *(this + 5);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v81[0]) = 0;
        _os_log_error_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_ERROR, "Failed to get MHI PayloadSize", v81, 2u);
        if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_152;
      }

      goto LABEL_50;
    }

    v17 = *(this + 5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v81[0]) = 0;
      _os_log_error_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_ERROR, "Failed to get LogLevel", v81, 2u);
    }

    goto LABEL_37;
  }

LABEL_52:
  *&v83.__r_.__value_.__r.__words[1] = 0uLL;
  v83.__r_.__value_.__r.__words[0] = &v83.__r_.__value_.__l.__size_;
  v22 = operator new(0x38uLL);
  *(v22 + 16) = 42;
  *(v22 + 34) = *&buf.__r_.__value_.__l.__data_;
  *(v22 + 47) = *(&buf.__r_.__value_.__r.__words[1] + 5);
  v22[55] = 1;
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 2) = &v83.__r_.__value_.__l.__size_;
  v83.__r_.__value_.__r.__words[0] = v22;
  v83.__r_.__value_.__l.__size_ = v22;
  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v22, v22);
  ++v83.__r_.__value_.__r.__words[2];
  memset(v81, 170, sizeof(v81));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN16BasebandIPCTrace10start_syncEN8dispatch5groupE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_5_3;
  aBlock[4] = this;
  group = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(group);
  }

  v74 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v74);
  }

  v23 = _Block_copy(aBlock);
  v24 = *(this + 3);
  if (v24)
  {
    dispatch_retain(*(this + 3));
  }

  object = v24;
  v64 = v23;
  v81[0] = v23;
  v81[1] = v24;
  v62 = *(this + 13);
  v70 = 0;
  v71 = 0;
  v69 = &v70;
  v25 = v83.__r_.__value_.__r.__words[0];
  if (v83.__r_.__value_.__l.__data_ != &v83.__r_.__value_.__r.__words[1])
  {
    v26 = 0;
    v27 = &v70;
    p_size = v83.__r_.__value_.__r.__words[0] + 32;
    v29 = &v70;
LABEL_104:
    if (v26)
    {
      v42 = v29;
    }

    else
    {
      v42 = &v70;
    }

    v50 = &v69;
    if (v26)
    {
      v50 = v29;
      v41 = v29 + 1;
    }

    else
    {
      v41 = &v70;
    }

    if (v50[1])
    {
LABEL_111:
      v51 = *(v25 + 8);
      if (v51)
      {
        goto LABEL_117;
      }

      do
      {
LABEL_119:
        v56 = *(v25 + 16);
        v32 = v56->__r_.__value_.__r.__words[0] == v25;
        v25 = v56;
      }

      while (!v32);
      goto LABEL_121;
    }

LABEL_113:
    while (1)
    {
      v52 = operator new(0x38uLL);
      v53 = v52;
      buf.__r_.__value_.__r.__words[0] = v52;
      buf.__r_.__value_.__l.__size_ = &v69;
      buf.__r_.__value_.__r.__words[2] = 0;
      if ((*(v25 + 55) & 0x80000000) == 0)
      {
        break;
      }

      std::string::__init_copy_ctor_external((v52 + 32), *(v25 + 32), *(v25 + 40));
      v57 = v69;
      *v53 = 0;
      v53[1] = 0;
      v53[2] = v42;
      *v41 = v53;
      v55 = *v57;
      if (*v57)
      {
        goto LABEL_115;
      }

LABEL_116:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v70, v53);
      ++v71;
      v51 = *(v25 + 8);
      if (!v51)
      {
        goto LABEL_119;
      }

      do
      {
LABEL_117:
        v56 = v51;
        v51 = v51->__r_.__value_.__r.__words[0];
      }

      while (v51);
LABEL_121:
      if (v56 == &v83.__r_.__value_.__r.__words[1])
      {
        goto LABEL_126;
      }

      v27 = v69;
      v26 = v70;
      v25 = v56;
      p_size = &v56[1].__r_.__value_.__l.__size_;
      v29 = &v70;
      if (v69 == &v70)
      {
        goto LABEL_104;
      }

      v30 = v70;
      v31 = &v70;
      if (v70)
      {
        do
        {
          v29 = v30;
          v30 = v30[1];
        }

        while (v30);
      }

      else
      {
        do
        {
          v29 = v31[2];
          v32 = *v29 == v31;
          v31 = v29;
        }

        while (v32);
      }

      v33 = *(v29 + 55);
      if (v33 >= 0)
      {
        v34 = (v29 + 4);
      }

      else
      {
        v34 = v29[4];
      }

      if (v33 >= 0)
      {
        v35 = *(v29 + 55);
      }

      else
      {
        v35 = v29[5];
      }

      v36 = *(v25 + 55);
      if (v36 >= 0)
      {
        v37 = p_size;
      }

      else
      {
        v37 = *(v25 + 32);
      }

      if (v36 >= 0)
      {
        v38 = *(v25 + 55);
      }

      else
      {
        v38 = *(v25 + 40);
      }

      if (v38 >= v35)
      {
        v39 = v35;
      }

      else
      {
        v39 = v38;
      }

      v40 = memcmp(v34, v37, v39);
      if (v40)
      {
        if (v40 < 0)
        {
          goto LABEL_104;
        }
      }

      else if (v35 < v38)
      {
        goto LABEL_104;
      }

      v41 = &v70;
      v42 = &v70;
      if (v26)
      {
        while (1)
        {
          v42 = v26;
          v43 = *(v26 + 55);
          v44 = v26[5];
          if ((v43 & 0x80u) == 0)
          {
            v45 = v26 + 4;
          }

          else
          {
            v45 = v26[4];
          }

          if ((v43 & 0x80u) == 0)
          {
            v46 = v43;
          }

          else
          {
            v46 = v44;
          }

          if (v46 >= v38)
          {
            v47 = v38;
          }

          else
          {
            v47 = v46;
          }

          v48 = memcmp(v37, v45, v47);
          if (v48)
          {
            if (v48 < 0)
            {
              goto LABEL_83;
            }

LABEL_97:
            v49 = memcmp(v45, v37, v47);
            if (v49)
            {
              if ((v49 & 0x80000000) == 0)
              {
                goto LABEL_111;
              }
            }

            else if (v46 >= v38)
            {
              goto LABEL_111;
            }

            v26 = v42[1];
            if (!v26)
            {
              v41 = v42 + 1;
              goto LABEL_113;
            }
          }

          else
          {
            if (v38 >= v46)
            {
              goto LABEL_97;
            }

LABEL_83:
            v26 = *v42;
            v41 = v42;
            if (!*v42)
            {
              goto LABEL_113;
            }
          }
        }
      }
    }

    v54 = *p_size;
    *(v52 + 6) = *(p_size + 16);
    *(v52 + 2) = v54;
    *v52 = 0;
    *(v52 + 1) = 0;
    *(v52 + 2) = v42;
    *v41 = v52;
    v55 = *v27;
    if (!*v27)
    {
      goto LABEL_116;
    }

LABEL_115:
    v69 = v55;
    goto LABEL_116;
  }

LABEL_126:
  v58 = dispatch_time(0, 8000000000);
  if (v64)
  {
    v59 = v66;
    v60 = object;
    v67 = _Block_copy(v64);
    v68 = object;
    if (!object)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

  v59 = v66;
  v60 = object;
  v67 = 0;
  v68 = object;
  if (object)
  {
LABEL_128:
    dispatch_retain(v60);
  }

LABEL_129:
  (*(*v62 + 16))(v62, &v69, v58, &v67);
  if (v68)
  {
    dispatch_release(v68);
  }

  if (v67)
  {
    _Block_release(v67);
  }

  std::__tree<std::string>::destroy(v70);
  if (v60)
  {
    dispatch_release(v60);
  }

  if (v64)
  {
    _Block_release(v64);
  }

  if (v74)
  {
    dispatch_group_leave(v74);
    if (v74)
    {
      dispatch_release(v74);
    }
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__tree<std::string>::destroy(v83.__r_.__value_.__l.__size_);
  if (v59)
  {
    dispatch_group_leave(v59);
    dispatch_release(v59);
  }

  if (v65)
  {
    dispatch_group_leave(v65);
    dispatch_release(v65);
  }

  v61 = *MEMORY[0x277D85DE8];
}

void sub_23C29D1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t a12, dispatch_group_t group, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, dispatch_group_t a25, dispatch_group_t object, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v50 & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v50 & 0x80) == 0)
  {
LABEL_6:
    if (*(v51 - 105) < 0)
    {
      operator delete(*(v51 - 128));
    }

    if (group)
    {
      dispatch_group_leave(group);
      dispatch_release(group);
    }

    if (a12)
    {
      dispatch_group_leave(a12);
      dispatch_release(a12);
    }

    _Unwind_Resume(exception_object);
  }

  operator delete(*(v51 - 160));
  goto LABEL_6;
}

void ___ZN16BasebandIPCTrace10start_syncEN8dispatch5groupE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#E Enabling failed: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 40);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    v7 = *(a1 + 48);
    if (v7)
    {

      dispatch_group_enter(v7);
    }
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 48);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(a1 + 40);
    if (v5)
    {

      dispatch_release(v5);
    }
  }
}

void BasebandIPCTrace::abort(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    dispatch_retain(*(a1 + 88));
    dispatch_group_enter(v4);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1174405120;
  v5[2] = ___ZN16BasebandIPCTrace5abortEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_8_3;
  v5[4] = a1;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(group);
  }

  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(object);
  }

  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v5);
  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

void ___ZN16BasebandIPCTrace5abortEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Aborting", v6, 2u);
  }

  v3 = v1[13];
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = v1[14];
  v1[13] = 0;
  v1[14] = 0;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = v1[15];
    v1[15] = 0;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = v1[15];
    v1[15] = 0;
    if (!v5)
    {
      return;
    }
  }

  CFRelease(v5);
}

uint64_t BasebandIPCTrace::snapshot(uint64_t a1, NSObject **a2, const __CFDictionary **a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v36[0] = 0xAAAAAAAAAAAAAAAALL;
  v36[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v36, *a3);
  memset(v35, 170, sizeof(v35));
  ctu::cf::MakeCFString::MakeCFString(buf, "kKeyTraceAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](buf);
  memset(__p, 170, sizeof(__p));
  strcpy(buf, "kTraceFilterActionNone");
  v39 = 22;
  ctu::cf::MakeCFString::MakeCFString(&v37, "kKeyTraceFilterAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v37);
  if (v39 < 0)
  {
    operator delete(*buf);
    v6 = SHIBYTE(__p[2]);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (__p[1] != 22)
    {
      v13 = *(a1 + 40);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    v7 = __p[0];
    goto LABEL_8;
  }

  v6 = SHIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v6 != 22)
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v7 = __p;
LABEL_8:
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 14);
  if (v8 != *"kTraceFilterActionNone" || v9 != *"lterActionNone" || v10 != *"tionNone")
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    if (v6 < 0)
    {
LABEL_21:
      v14 = __p[0];
      goto LABEL_22;
    }

LABEL_19:
    v14 = __p;
LABEL_22:
    *buf = 136315138;
    *&buf[4] = v14;
    v15 = "#I Skipping snapshot as trace filter is '%s'";
    v16 = v13;
    v17 = 12;
LABEL_23:
    _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    goto LABEL_24;
  }

  if (SHIBYTE(v35[2]) < 0)
  {
    if (v35[1] != 21)
    {
      goto LABEL_41;
    }

    v20 = v35[0];
  }

  else
  {
    if (SHIBYTE(v35[2]) != 21)
    {
      goto LABEL_41;
    }

    v20 = v35;
  }

  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 13);
  if (v21 == *"kCollectTelephonyLogs" && v22 == *"TelephonyLogs" && v23 == *"honyLogs")
  {
    v27 = *a2;
    if (v27)
    {
      dispatch_retain(v27);
      dispatch_group_enter(v27);
    }

    v28 = *(a1 + 88);
    if (v28)
    {
      dispatch_retain(*(a1 + 88));
      dispatch_group_enter(v28);
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 1174405120;
    v30[2] = ___ZN16BasebandIPCTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
    v30[3] = &__block_descriptor_tmp_11_2;
    v30[4] = a1;
    group = v27;
    if (v27)
    {
      dispatch_retain(v27);
      dispatch_group_enter(group);
    }

    v29 = *a3;
    cf = v29;
    if (v29)
    {
      CFRetain(v29);
    }

    object = v28;
    if (v28)
    {
      dispatch_retain(v28);
      dispatch_group_enter(object);
    }

    ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v30);
    if (object)
    {
      dispatch_group_leave(object);
      if (object)
      {
        dispatch_release(object);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (v28)
    {
      dispatch_group_leave(v28);
      dispatch_release(v28);
    }

    if (v27)
    {
      dispatch_group_leave(v27);
      dispatch_release(v27);
    }

    goto LABEL_24;
  }

LABEL_41:
  v26 = *(a1 + 40);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v15 = "#I Skipping";
    v16 = v26;
    v17 = 2;
    goto LABEL_23;
  }

LABEL_24:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v35[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_28:
    operator delete(v35[0]);
    goto LABEL_26;
  }

  if (SHIBYTE(v35[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  result = MEMORY[0x23EECD940](v36);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C29DB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN16BasebandIPCTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 96) == 1)
  {
    v29 = 0xAAAAAAAAAAAAAAAALL;
    v30 = 0xAAAAAAAAAAAAAAAALL;
    v3 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
    v4 = xmmword_280C05A58;
    if (!xmmword_280C05A58)
    {
      ctu::XpcJetsamAssertion::create_default_global(&v31, v3);
      v5 = v31;
      v31 = 0uLL;
      v6 = *(&xmmword_280C05A58 + 1);
      xmmword_280C05A58 = v5;
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v7 = *(&v31 + 1);
      if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v4 = xmmword_280C05A58;
    }

    v8 = *(&xmmword_280C05A58 + 1);
    v27 = v4;
    v28 = *(&xmmword_280C05A58 + 1);
    if (*(&xmmword_280C05A58 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_280C05A58 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
    __p = operator new(0x20uLL);
    v26 = xmmword_23C32CA70;
    strcpy(__p, "Baseband IPC Trace Snapshot");
    ctu::XpcJetsamAssertion::createActivity();
    operator delete(__p);
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = dispatch_group_create();
    v10 = v9;
    v24 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    v11 = a1[6];
    v23 = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    BasebandIPCTrace::collect_sync(v1, &v24);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      dispatch_release(v10);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = ___ZN16BasebandIPCTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke_2;
    block[3] = &__block_descriptor_tmp_10_4;
    v12 = a1[5];
    block[4] = v1;
    group = v12;
    if (v12)
    {
      dispatch_retain(v12);
      dispatch_group_enter(group);
    }

    v13 = a1[7];
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
      dispatch_group_enter(object);
    }

    v20 = v29;
    v21 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = a1[6];
    cf = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    dispatch_group_notify(v10, *(v1 + 24), block);
    if (cf)
    {
      CFRelease(cf);
    }

    v15 = v21;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    if (object)
    {
      dispatch_group_leave(object);
      if (object)
      {
        dispatch_release(object);
      }
    }

    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (v10)
    {
      dispatch_release(v10);
    }

    v16 = v30;
    if (v30)
    {
      if (!atomic_fetch_add((v30 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }
    }
  }
}

void sub_23C29DFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  if (v12)
  {
    dispatch_release(v12);
    dispatch_release(v12);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v13 - 64);
  _Unwind_Resume(a1);
}

void sub_23C29E004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v27 - 80);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v27 - 80);
  _Unwind_Resume(a1);
}

void BasebandIPCTrace::collect_sync(uint64_t a1, NSObject **a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Collecting", buf, 2u);
  }

  if (*(a1 + 104))
  {
    v5 = *a2;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      dispatch_retain(*(a1 + 88));
      dispatch_group_enter(v6);
    }

    memset(buf, 170, sizeof(buf));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN16BasebandIPCTrace12collect_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_17_0;
    aBlock[4] = a1;
    group = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(group);
    }

    v17 = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(v17);
    }

    v7 = _Block_copy(aBlock);
    v8 = v7;
    v9 = *(a1 + 24);
    if (v9)
    {
      dispatch_retain(*(a1 + 24));
    }

    *buf = v8;
    *&buf[8] = v9;
    v10 = *(a1 + 104);
    if (config::hw::watch(v7))
    {
      v11 = 12000000000;
    }

    else
    {
      v11 = 10000000000;
    }

    v12 = dispatch_time(0, v11);
    if (v8)
    {
      v13 = _Block_copy(v8);
      object = v9;
      if (!v9)
      {
LABEL_20:
        (*(*v10 + 24))(v10, v12, &v13);
        if (object)
        {
          dispatch_release(object);
        }

        if (v13)
        {
          _Block_release(v13);
        }

        if (v9)
        {
          dispatch_release(v9);
        }

        if (v8)
        {
          _Block_release(v8);
        }

        if (v17)
        {
          dispatch_group_leave(v17);
          if (v17)
          {
            dispatch_release(v17);
          }
        }

        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }

        if (v6)
        {
          dispatch_group_leave(v6);
          dispatch_release(v6);
        }

        if (v5)
        {
          dispatch_group_leave(v5);
          dispatch_release(v5);
        }

        return;
      }
    }

    else
    {
      v13 = 0;
      object = v9;
      if (!v9)
      {
        goto LABEL_20;
      }
    }

    dispatch_retain(v9);
    goto LABEL_20;
  }
}

void sub_23C29E2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t object, dispatch_group_t group)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(&a10);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v20 - 64);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  if (v19)
  {
    dispatch_group_leave(v19);
    dispatch_release(v19);
    if (!v18)
    {
LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_9;
  }

  dispatch_group_leave(v18);
  dispatch_release(v18);
  _Unwind_Resume(a1);
}

void ___ZN16BasebandIPCTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 72);
  v3.gr_passwd = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  BasebandIPCTrace::write_sync(v1, &v3.gr_passwd);
  if (v2)
  {
    CFRelease(v2);
  }

  v3.gr_name = 0;
  BasebandIPCTrace::start_sync(v1, &v3);
}

void sub_23C29E3B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BasebandIPCTrace::write_sync(uint64_t result, const __CFDictionary **a2)
{
  v85 = *MEMORY[0x277D85DE8];
  if (*(result + 120))
  {
    v3 = result;
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Captured cached data", &buf, 2u);
    }

    v81[0] = 0xAAAAAAAAAAAAAAAALL;
    v81[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v81, *a2);
    v5 = 0x7FFFFFFFFFFFFFF7;
    memset(v80, 170, sizeof(v80));
    v6 = *MEMORY[0x277CECB88];
    v7 = strlen(*MEMORY[0x277CECB88]);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      if ((v7 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v7 | 7) + 1;
      }

      p_buf = operator new(v10);
      buf.__r_.__value_.__l.__size_ = v8;
      buf.__r_.__value_.__r.__words[2] = v10 | 0x8000000000000000;
      buf.__r_.__value_.__r.__words[0] = p_buf;
    }

    else
    {
      *(&buf.__r_.__value_.__s + 23) = v7;
      p_buf = &buf;
      if (!v7)
      {
LABEL_13:
        v11 = *MEMORY[0x277CECBB8];
        p_buf->__r_.__value_.__s.__data_[v8] = 0;
        ctu::cf::MakeCFString::MakeCFString(v79, v11);
        ctu::cf::map_adapter::getString();
        MEMORY[0x23EECD8F0](v79);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        memset(v79, 170, sizeof(v79));
        v12 = abm::trace::kSnapshotFolder[0];
        v13 = strlen(abm::trace::kSnapshotFolder[0]);
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v14 = v13;
        if (v13 >= 0x17)
        {
          if ((v13 | 7) == 0x17)
          {
            v16 = 25;
          }

          else
          {
            v16 = (v13 | 7) + 1;
          }

          v15 = operator new(v16);
          buf.__r_.__value_.__l.__size_ = v14;
          buf.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
          buf.__r_.__value_.__r.__words[0] = v15;
        }

        else
        {
          *(&buf.__r_.__value_.__s + 23) = v13;
          v15 = &buf;
          if (!v13)
          {
LABEL_24:
            v15->__r_.__value_.__s.__data_[v14] = 0;
            ctu::cf::MakeCFString::MakeCFString(&__p, "kKeyTraceDumpStatePath");
            ctu::cf::map_adapter::getString();
            MEMORY[0x23EECD8F0](&__p);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            memset(&__p, 170, sizeof(__p));
            v17 = abm::trace::kLogDirPrefix[0];
            v18 = strlen(abm::trace::kLogDirPrefix[0]);
            if (v18 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v19 = v18;
            if (v18 >= 0x17)
            {
              if ((v18 | 7) == 0x17)
              {
                v21 = 25;
              }

              else
              {
                v21 = (v18 | 7) + 1;
              }

              p_dst = operator new(v21);
              __dst.__r_.__value_.__l.__size_ = v19;
              __dst.__r_.__value_.__r.__words[2] = v21 | 0x8000000000000000;
              __dst.__r_.__value_.__r.__words[0] = p_dst;
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = v18;
              p_dst = &__dst;
              if (!v18)
              {
LABEL_35:
                p_dst->__r_.__value_.__s.__data_[v19] = 0;
                if (SHIBYTE(v79[2]) >= 0)
                {
                  v22 = v79;
                }

                else
                {
                  v22 = v79[0];
                }

                if (SHIBYTE(v79[2]) >= 0)
                {
                  v23 = HIBYTE(v79[2]);
                }

                else
                {
                  v23 = v79[1];
                }

                v24 = std::string::insert(&__dst, 0, v22, v23);
                v25 = *&v24->__r_.__value_.__l.__data_;
                v77.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
                *&v77.__r_.__value_.__l.__data_ = v25;
                v24->__r_.__value_.__l.__size_ = 0;
                v24->__r_.__value_.__r.__words[2] = 0;
                v24->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v80[2]) >= 0)
                {
                  v26 = v80;
                }

                else
                {
                  v26 = v80[0];
                }

                if (SHIBYTE(v80[2]) >= 0)
                {
                  v27 = HIBYTE(v80[2]);
                }

                else
                {
                  v27 = v80[1];
                }

                v28 = std::string::append(&v77, v26, v27);
                v29 = *&v28->__r_.__value_.__l.__data_;
                buf.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
                *&buf.__r_.__value_.__l.__data_ = v29;
                v28->__r_.__value_.__l.__size_ = 0;
                v28->__r_.__value_.__r.__words[2] = 0;
                v28->__r_.__value_.__r.__words[0] = 0;
                size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  size = buf.__r_.__value_.__l.__size_;
                  v33 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  if (v33 - buf.__r_.__value_.__l.__size_ < 6)
                  {
                    v31 = buf.__r_.__value_.__l.__size_ + 6;
                    if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 6 - v33)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v32 = buf.__r_.__value_.__r.__words[0];
                    if (v33 >= 0x3FFFFFFFFFFFFFF3)
                    {
                      v37 = 0;
                      v36 = 0x7FFFFFFFFFFFFFF7;
LABEL_62:
                      v38 = operator new(v36);
                      v39 = v38;
                      if (size)
                      {
                        memmove(v38, v32, size);
                      }

                      v40 = v39 + size;
                      *(v40 + 4) = 25456;
                      *v40 = 1768055341;
                      if (!v37)
                      {
                        operator delete(v32);
                      }

                      buf.__r_.__value_.__l.__size_ = v31;
                      buf.__r_.__value_.__r.__words[2] = v36 | 0x8000000000000000;
                      buf.__r_.__value_.__r.__words[0] = v39;
                      v41 = (v39 + v31);
LABEL_73:
                      *v41 = 0;
                      __p = buf;
                      memset(&buf, 0, sizeof(buf));
                      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v77.__r_.__value_.__l.__data_);
                        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_75;
                        }
                      }

                      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_75;
                      }

                      operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_75:
                      memset(&v77, 170, sizeof(v77));
                      v45 = abm::trace::kScratchFolder[0];
                      v46 = strlen(abm::trace::kScratchFolder[0]);
                      if (v46 > 0x7FFFFFFFFFFFFFF7)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v47 = v46;
                      if (v46 >= 0x17)
                      {
                        if ((v46 | 7) == 0x17)
                        {
                          v53 = 25;
                        }

                        else
                        {
                          v53 = (v46 | 7) + 1;
                        }

                        v48 = operator new(v53);
                        buf.__r_.__value_.__l.__size_ = v47;
                        buf.__r_.__value_.__r.__words[2] = v53 | 0x8000000000000000;
                        buf.__r_.__value_.__r.__words[0] = v48;
                      }

                      else
                      {
                        *(&buf.__r_.__value_.__s + 23) = v46;
                        v48 = &buf;
                        if (!v46)
                        {
                          buf.__r_.__value_.__s.__data_[0] = 0;
                          v49 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
                          {
LABEL_79:
                            if (v49 - 11 < 0xC)
                            {
                              v50 = v49 + 12;
                              v51 = &buf;
                              v52 = 22;
                              goto LABEL_89;
                            }

                            v61 = &buf;
                            goto LABEL_107;
                          }

LABEL_86:
                          v49 = buf.__r_.__value_.__l.__size_;
                          v52 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                          if (v52 - buf.__r_.__value_.__l.__size_ < 0xC)
                          {
                            v50 = buf.__r_.__value_.__l.__size_ + 12;
                            if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 12 - v52)
                            {
                              std::string::__throw_length_error[abi:ne200100]();
                            }

                            v51 = buf.__r_.__value_.__r.__words[0];
                            if (v52 >= 0x3FFFFFFFFFFFFFF3)
                            {
                              v56 = 0;
LABEL_98:
                              v57 = operator new(v5);
                              v58 = v57;
                              if (v49)
                              {
                                memmove(v57, v51, v49);
                              }

                              v59 = v58 + v49;
                              *v59 = *"BBIPCScratch";
                              *(v59 + 8) = 1751348321;
                              if (!v56)
                              {
                                operator delete(v51);
                              }

                              buf.__r_.__value_.__l.__size_ = v50;
                              buf.__r_.__value_.__r.__words[2] = v5 | 0x8000000000000000;
                              buf.__r_.__value_.__r.__words[0] = v58;
                              v60 = (v58 + v50);
LABEL_111:
                              *v60 = 0;
                              v77 = buf;
                              if (!support::fs::createDir(&v77, 0x1EDu, 1))
                              {
                                goto LABEL_125;
                              }

                              v64 = *(v3 + 120);
                              v74[0] = MEMORY[0x277D85DD0];
                              v74[1] = 1174405120;
                              v74[2] = ___ZN16BasebandIPCTrace10write_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
                              v74[3] = &__block_descriptor_tmp_20_3;
                              if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                              {
                                std::string::__init_copy_ctor_external(&v75, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
                              }

                              else
                              {
                                v75 = v77;
                              }

                              buf.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
                              buf.__r_.__value_.__l.__size_ = 0x40000000;
                              buf.__r_.__value_.__r.__words[2] = ___ZN3ctu2cf8for_eachINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPK8__CFDataEEvPK14__CFDictionaryU13block_pointerFvRKT_RKT0_E_block_invoke;
                              v83 = &unk_278BB9710;
                              v84 = v74;
                              __dst.__r_.__value_.__r.__words[0] = &buf;
                              CFDictionaryApplyFunction(v64, ctu::cf::DictApplyFunction, &__dst);
                              if ((!support::fs::createDir(&__p, 0x1EDu, 1) || ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v66 = &v77) : (v66 = v77.__r_.__value_.__r.__words[0]), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v67 = &__p) : (v67 = __p.__r_.__value_.__r.__words[0]), rename(v66, v67, v65), v68)) && (v69 = *(v3 + 40), os_log_type_enabled(v69, OS_LOG_TYPE_ERROR)))
                              {
                                v72 = &v77;
                                if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v72 = v77.__r_.__value_.__r.__words[0];
                                }

                                p_p = &__p;
                                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  p_p = __p.__r_.__value_.__r.__words[0];
                                }

                                LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                                *(buf.__r_.__value_.__r.__words + 4) = v72;
                                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                                *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
                                _os_log_error_impl(&dword_23C1C4000, v69, OS_LOG_TYPE_ERROR, "Failed to move %s to %s", &buf, 0x16u);
                                if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                {
LABEL_125:
                                  v70 = *(v3 + 120);
                                  *(v3 + 120) = 0;
                                  if (!v70)
                                  {
                                    goto LABEL_127;
                                  }

                                  goto LABEL_126;
                                }
                              }

                              else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                              {
                                goto LABEL_125;
                              }

                              operator delete(v75.__r_.__value_.__l.__data_);
                              v70 = *(v3 + 120);
                              *(v3 + 120) = 0;
                              if (!v70)
                              {
LABEL_127:
                                if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v77.__r_.__value_.__l.__data_);
                                  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                  {
LABEL_129:
                                    if ((SHIBYTE(v79[2]) & 0x80000000) == 0)
                                    {
                                      goto LABEL_130;
                                    }

                                    goto LABEL_135;
                                  }
                                }

                                else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                {
                                  goto LABEL_129;
                                }

                                operator delete(__p.__r_.__value_.__l.__data_);
                                if ((SHIBYTE(v79[2]) & 0x80000000) == 0)
                                {
LABEL_130:
                                  if ((SHIBYTE(v80[2]) & 0x80000000) == 0)
                                  {
LABEL_131:
                                    result = MEMORY[0x23EECD940](v81);
                                    goto LABEL_132;
                                  }

LABEL_136:
                                  operator delete(v80[0]);
                                  goto LABEL_131;
                                }

LABEL_135:
                                operator delete(v79[0]);
                                if ((SHIBYTE(v80[2]) & 0x80000000) == 0)
                                {
                                  goto LABEL_131;
                                }

                                goto LABEL_136;
                              }

LABEL_126:
                              CFRelease(v70);
                              goto LABEL_127;
                            }

LABEL_89:
                            v54 = 2 * v52;
                            if (v50 > 2 * v52)
                            {
                              v54 = v50;
                            }

                            if ((v54 | 7) == 0x17)
                            {
                              v55 = 25;
                            }

                            else
                            {
                              v55 = (v54 | 7) + 1;
                            }

                            if (v54 >= 0x17)
                            {
                              v5 = v55;
                            }

                            else
                            {
                              v5 = 23;
                            }

                            v56 = v52 == 22;
                            goto LABEL_98;
                          }

                          v61 = buf.__r_.__value_.__r.__words[0];
LABEL_107:
                          v62 = v61 + v49;
                          *v62 = *"BBIPCScratch";
                          *(v62 + 2) = 1751348321;
                          v63 = v49 + 12;
                          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                          {
                            buf.__r_.__value_.__l.__size_ = v49 + 12;
                          }

                          else
                          {
                            *(&buf.__r_.__value_.__s + 23) = v63 & 0x7F;
                          }

                          v60 = v61 + v63;
                          goto LABEL_111;
                        }
                      }

                      memmove(v48, v45, v47);
                      v48->__r_.__value_.__s.__data_[v47] = 0;
                      v49 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
                      {
                        goto LABEL_79;
                      }

                      goto LABEL_86;
                    }

LABEL_53:
                    v34 = 2 * v33;
                    if (v31 > 2 * v33)
                    {
                      v34 = v31;
                    }

                    if ((v34 | 7) == 0x17)
                    {
                      v35 = 25;
                    }

                    else
                    {
                      v35 = (v34 | 7) + 1;
                    }

                    if (v34 >= 0x17)
                    {
                      v36 = v35;
                    }

                    else
                    {
                      v36 = 23;
                    }

                    v37 = v33 == 22;
                    goto LABEL_62;
                  }

                  v42 = buf.__r_.__value_.__r.__words[0];
                }

                else
                {
                  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 17) < 6)
                  {
                    v31 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 6;
                    v32 = &buf;
                    v33 = 22;
                    goto LABEL_53;
                  }

                  v42 = &buf;
                }

                v43 = v42 + size;
                *(v43 + 2) = 25456;
                *v43 = 1768055341;
                v44 = size + 6;
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  buf.__r_.__value_.__l.__size_ = size + 6;
                }

                else
                {
                  *(&buf.__r_.__value_.__s + 23) = v44 & 0x7F;
                }

                v41 = v42 + v44;
                goto LABEL_73;
              }
            }

            memmove(p_dst, v17, v19);
            goto LABEL_35;
          }
        }

        memmove(v15, v12, v14);
        goto LABEL_24;
      }
    }

    memmove(p_buf, v6, v8);
    goto LABEL_13;
  }

LABEL_132:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C29ED00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  MEMORY[0x23EECD940](v50 - 144);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE56c27_ZTSNSt3__110shared_ptrIvEE72c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[6];
  a1[6] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    v7 = a1[6];
    if (v7)
    {
      dispatch_group_enter(v7);
    }
  }

  v8 = a2[8];
  a1[7] = a2[7];
  a1[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[9];
  a1[9] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE56c27_ZTSNSt3__110shared_ptrIvEE72c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[6];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  v6 = a1[5];
  if (v6)
  {
    dispatch_group_leave(v6);
    v7 = a1[5];
    if (v7)
    {

      dispatch_release(v7);
    }
  }
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[6];
  a1[6] = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = a2[7];
  a1[7] = v7;
  if (v7)
  {
    dispatch_retain(v7);
    v8 = a1[7];
    if (v8)
    {

      dispatch_group_enter(v8);
    }
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE56c30_ZTSN8dispatch13group_sessionE(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[7];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = a1[5];
    if (v6)
    {

      dispatch_release(v6);
    }
  }
}

void BasebandIPCTrace::dumpState(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 96);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Enabled %d", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t BasebandIPCTrace::setProperty(uint64_t a1, dispatch_object_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1174405120;
  v12[2] = ___ZN16BasebandIPCTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke;
  v12[3] = &unk_284EFCED0;
  v12[5] = a1;
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(group);
  }

  v12[4] = &v16;
  v14 = a3;
  v15 = a4;
  v20 = v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_3;
  block[3] = &__block_descriptor_tmp_59;
  block[4] = a1 + 8;
  block[5] = &v20;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v8, block);
    v9 = *(v17 + 24);
    v10 = group;
    if (!group)
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_sync(v8, block);
    v9 = *(v17 + 24);
    v10 = group;
    if (!group)
    {
      goto LABEL_11;
    }
  }

  dispatch_group_leave(v10);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_11:
  _Block_object_dispose(&v16, 8);
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  return v9;
}

void ___ZN16BasebandIPCTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = prop::bbipc::set(*(a1 + 56), *(a1 + 64));
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v7 = *(v2 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 56);
      if (*(v8 + 23) < 0)
      {
        v8 = *v8;
      }

      v9 = *(a1 + 64);
      if (*(v9 + 23) < 0)
      {
        v9 = *v9;
      }

      LODWORD(v22.__r_.__value_.__l.__data_) = 136315394;
      *(v22.__r_.__value_.__r.__words + 4) = v8;
      WORD2(v22.__r_.__value_.__r.__words[1]) = 2080;
      *(&v22.__r_.__value_.__r.__words[1] + 6) = v9;
      _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Set property to file failed; key=%s value=%s", &v22, 0x16u);
    }

    goto LABEL_33;
  }

  v3 = *(a1 + 56);
  v4 = *(v3 + 23);
  if ((v4 & 0x80000000) == 0)
  {
    if (strcasecmp(v3, "Enabled"))
    {
      goto LABEL_4;
    }

LABEL_14:
    v21 = -86;
    memset(&v22, 0, sizeof(v22));
    if (prop::bbipc::get(v3, &v22))
    {
      v10 = util::convert<BOOL>(&v22, &v21, 0);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v10 = 0;
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_18:
        operator delete(v22.__r_.__value_.__l.__data_);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = v10;
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      v11 = v21;
      if (v21 != *(v2 + 96))
      {
        *(v2 + 96) = v21;
        if (v11)
        {
          v12 = dispatch_group_create();
          v20 = v12;
          BasebandIPCTrace::start_sync(v2, &v20);
          if (v12)
          {
            dispatch_release(v12);
          }
        }

        else
        {
          v16 = *(v2 + 112);
          *(v2 + 104) = 0;
          *(v2 + 112) = 0;
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
          }

          v17 = *(v2 + 120);
          *(v2 + 120) = 0;
          if (v17)
          {
            CFRelease(v17);
          }
        }
      }
    }

    goto LABEL_33;
  }

  if (!strcasecmp(*v3, "Enabled"))
  {
    goto LABEL_14;
  }

LABEL_4:
  v5 = *(v2 + 104);
  if (v5)
  {
    if (v4 < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *v3, *(v3 + 1));
    }

    else
    {
      v6 = *v3;
      v19.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&v19.__r_.__value_.__l.__data_ = v6;
    }

    v13 = *(a1 + 64);
    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v13, *(v13 + 1));
    }

    else
    {
      v14 = *v13;
      __p.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&__p.__r_.__value_.__l.__data_ = v14;
    }

    (*(*v5 + 40))(v5, &v19, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_32:
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }
  }

LABEL_33:
  v15 = *MEMORY[0x277D85DE8];
}
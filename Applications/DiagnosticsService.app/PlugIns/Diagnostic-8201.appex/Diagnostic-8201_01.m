uint64_t simulateSelfTestFailure(int a1)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "simulateSelfTestFailure\n", buf, 2u);
  }

  v3 = sub_1000174F8();
  if (v3)
  {
    sub_100021AC4(v3, v3, buf);
  }

  else
  {
    memset(v9, 255, sizeof(v9));
    v10 = a1;
    v4 = sub_100017594(dword_10003CBC0, 44, 0, v9, 0x1CuLL, 0, 0);
    if (!v4)
    {
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLibTrace)
      {
        v5 = __osLogPearlLibTrace;
      }

      else
      {
        v5 = &_os_log_default;
      }

      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "simulateSelfTestFailure -> %d\n", buf, 8u);
        v6 = 0;
      }

      goto LABEL_17;
    }

    sub_100021BC4(v4, v4, buf);
  }

  v6 = *buf;
  if (qword_10003CBC8 != -1)
  {
    sub_10001D9CC();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "simulateSelfTestFailure -> %d\n", buf, 8u);
  }

LABEL_17:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  return v6;
}

uint64_t checkSecureStreaming()
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v0 = __osLogPearlLibTrace;
  }

  else
  {
    v0 = &_os_log_default;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "checkSecureStreaming\n", v5, 2u);
  }

  v1 = checkSecureStreamingAndVerifySignatures(0);
  v2 = v1;
  if (v1)
  {
    sub_100021CC4(v1, v1);
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v3 = __osLogPearlLibTrace;
    }

    else
    {
      v3 = &_os_log_default;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "checkSecureStreaming -> %d\n", v5, 8u);
    }
  }

  return v2;
}

uint64_t checkSecureStreamingAndVerifySignatures(int a1)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "checkSecureStreamingAndVerifySignatures (%u)\n", &v9, 8u);
  }

  v3 = sub_1000174F8();
  if (v3)
  {
    sub_100021E34(v3, v3, &v9);
  }

  else
  {
    v4 = sub_100017594(dword_10003CBC0, 59, a1, 0, 0, 0, 0);
    if (!v4)
    {
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLibTrace)
      {
        v5 = __osLogPearlLibTrace;
      }

      else
      {
        v5 = &_os_log_default;
      }

      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 67109120;
        v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "checkSecureStreamingAndVerifySignatures -> %d\n", &v9, 8u);
        v6 = 0;
      }

      goto LABEL_17;
    }

    sub_100021F34(v4, v4, &v9);
  }

  v6 = v9;
  if (qword_10003CBC8 != -1)
  {
    sub_10001D9CC();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 67109120;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "checkSecureStreamingAndVerifySignatures -> %d\n", &v9, 8u);
  }

LABEL_17:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  return v6;
}

uint64_t prewarmCamera(int a1)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "prewarmCamera (%u)\n", &v9, 8u);
  }

  v3 = sub_1000174F8();
  if (v3)
  {
    sub_100022034(v3, v3, &v9);
  }

  else
  {
    v4 = sub_100017594(dword_10003CBC0, 43, a1, 0, 0, 0, 0);
    if (!v4)
    {
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLibTrace)
      {
        v5 = __osLogPearlLibTrace;
      }

      else
      {
        v5 = &_os_log_default;
      }

      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 67109120;
        v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "prewarmCamera -> %d\n", &v9, 8u);
        v6 = 0;
      }

      goto LABEL_17;
    }

    sub_100022134(v4, v4, &v9);
  }

  v6 = v9;
  if (qword_10003CBC8 != -1)
  {
    sub_10001D9CC();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 67109120;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "prewarmCamera -> %d\n", &v9, 8u);
  }

LABEL_17:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  return v6;
}

uint64_t setEntitlementOverride(int a1)
{
  v9 = a1;
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setEntitlementOverrideConfig (0x%x)\n", buf, 8u);
  }

  v3 = sub_1000174F8();
  if (v3)
  {
    sub_100022234(v3, v3, buf);
  }

  else
  {
    v4 = sub_100017594(dword_10003CBC0, 64, 0, &v9, 4uLL, 0, 0);
    if (!v4)
    {
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLibTrace)
      {
        v5 = __osLogPearlLibTrace;
      }

      else
      {
        v5 = &_os_log_default;
      }

      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setEntitlementOverrideConfig -> %d\n", buf, 8u);
        v6 = 0;
      }

      goto LABEL_17;
    }

    sub_100022334(v4, v4, buf);
  }

  v6 = *buf;
  if (qword_10003CBC8 != -1)
  {
    sub_10001D9CC();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "setEntitlementOverrideConfig -> %d\n", buf, 8u);
  }

LABEL_17:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  return v6;
}

uint64_t pearlSeaCookieHandleMessage(int a1, const void *a2, size_t a3, void *a4, size_t *a5, id a6)
{
  v26 = a6;
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  v11 = &NSObject__properties;
  if (__osLogPearlLibTrace)
  {
    v12 = __osLogPearlLibTrace;
  }

  else
  {
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *&buf[4] = a1;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    *v32 = a3;
    *&v32[8] = 2048;
    *&v32[10] = a4;
    v33 = 2048;
    v34 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage %d %p %zu %p %p\n", buf, 0x30u);
  }

  if (a1 && a1 != 7)
  {
    if (!a2)
    {
      sub_100022F34(buf, &v27);
      goto LABEL_63;
    }

    if (!a3)
    {
      sub_100022E28(buf, &v27);
      goto LABEL_63;
    }
  }

  if (a1 == 8 || a4)
  {
    if (a1 == 8 || a5)
    {
      if (a5)
      {
        v13 = *a5;
      }

      else
      {
        v13 = 0;
      }

      v14 = sub_1000174F8();
      if (v14)
      {
        sub_10002264C(v14, v14, buf, &v27);
        v16 = *buf;
        v23 = v27;
      }

      else
      {
        if (a3 >= 0xFFFFFFFFFFFFFFF3)
        {
          sub_100022D14(a3 >= 0xFFFFFFFFFFFFFFF3, buf, &v27);
        }

        else
        {
          v15 = malloc(a3 + 13);
          if (v15)
          {
            v16 = v15;
            *v15 = a1;
            v15[4] = 1;
            *(v15 + 5) = a3;
            memcpy(v15 + 13, a2, a3);
            v17 = sub_100017594(dword_10003CBC0, 70, 0, v16, a3 + 13, a4, a5);
            if (v17)
            {
              sub_1000227A4(v17, v16, v17, buf, &v27);
            }

            else
            {
              if (a1 == 2)
              {
LABEL_27:
                v16[4] = 0;
                *a5 = v13;
                v19 = sub_100017594(dword_10003CBC0, 70, 0, v16, a3 + 13, a4, a5);
                if (!v19)
                {
LABEL_28:
                  if (a4 && a5)
                  {
                    if (qword_10003CBC8 != -1)
                    {
                      sub_10001D9CC();
                    }

                    if (__osLogPearlLib)
                    {
                      v20 = __osLogPearlLib;
                    }

                    else
                    {
                      v20 = &_os_log_default;
                    }

                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      v21 = *a5;
                      *buf = 67109890;
                      *&buf[4] = a1;
                      v29 = 2048;
                      v30 = v21;
                      v31 = 1040;
                      *v32 = v21;
                      *&v32[4] = 2096;
                      *&v32[6] = a4;
                      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage, type=%d reply[%zu] %.*P\n", buf, 0x22u);
                    }
                  }

                  if (qword_10003CBC8 != -1)
                  {
                    sub_10001D9CC();
                  }

                  if (__osLogPearlLibTrace)
                  {
                    v22 = __osLogPearlLibTrace;
                  }

                  else
                  {
                    v22 = &_os_log_default;
                  }

                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109376;
                    *&buf[4] = a1;
                    v29 = 1024;
                    LODWORD(v30) = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage, type=%d -> 0x%x\n", buf, 0xEu);
                  }

                  v23 = 0;
LABEL_45:
                  free(v16);
                  goto LABEL_46;
                }

                sub_1000229BC(v19, v16, v19, buf, &v27);
                goto LABEL_60;
              }

              if (a1 != 5)
              {
                goto LABEL_28;
              }

              if (v26)
              {
                v18 = v26[2]();
                if (!v18)
                {
                  goto LABEL_27;
                }

                sub_1000228B0(v18, v16, v18, buf, &v27);
              }

              else
              {
                sub_100022AC8(v16, buf, &v27);
              }
            }

LABEL_60:
            v16 = *buf;
            v23 = v27;
            goto LABEL_61;
          }

          sub_100022BF8(buf, &v27);
        }

        v16 = *buf;
        v23 = v27;
      }

LABEL_61:
      v11 = &NSObject__properties;
      goto LABEL_64;
    }

    sub_100022540(buf, &v27);
  }

  else
  {
    sub_100022434(buf, &v27);
  }

LABEL_63:
  v16 = *buf;
  v23 = v27;
LABEL_64:
  if (qword_10003CBC8 != -1)
  {
    sub_10001D9CC();
  }

  if (v11[378])
  {
    v25 = v11[378];
  }

  else
  {
    v25 = &_os_log_default;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *&buf[4] = a1;
    v29 = 1024;
    LODWORD(v30) = v23;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "pearlSeaCookieHandleMessage, type=%d -> 0x%x\n", buf, 0xEu);
  }

  if (v16)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  return v23;
}

uint64_t mapScheme3ObjectToISPANE(int *a1)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    v12 = 4;
    v13 = 2080;
    v14 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mapScheme3Object: fourcc:%.4s\n\n", buf, 0x12u);
  }

  v9 = *a1;
  v10 = *(a1 + 4);
  v3 = sub_1000174F8();
  if (v3)
  {
    sub_100023040(v3, v3, buf);
  }

  else
  {
    v4 = sub_100017594(dword_10003CBC0, 72, 0, &v9, 5uLL, 0, 0);
    if (!v4)
    {
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLibTrace)
      {
        v5 = __osLogPearlLibTrace;
      }

      else
      {
        v5 = &_os_log_default;
      }

      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "mapScheme3Object -> 0x%x\n", buf, 8u);
        v6 = 0;
      }

      goto LABEL_17;
    }

    sub_100023140(v4, v4, buf);
  }

  v6 = *buf;
  if (qword_10003CBC8 != -1)
  {
    sub_10001D9CC();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "mapScheme3Object -> 0x%x\n", buf, 8u);
  }

LABEL_17:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  return v6;
}

uint64_t allocateAndMapObjectS3C1(int *a1, int a2, int a3)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v6 = __osLogPearlLibTrace;
  }

  else
  {
    v6 = &_os_log_default;
  }

  v7 = v6;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68158466;
    *&buf[4] = 4;
    *&buf[8] = 2080;
    *&buf[10] = a1;
    *&buf[18] = 1024;
    v74 = a2;
    v75 = 1024;
    v76 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "allocateAndMapObjectS3C1: fourcc:%.4s mapObj:%d unmapObj:%d\n\n", buf, 0x1Eu);
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[15] = 0;
  v67 = *a1;
  v68 = *(a1 + 4);
  v69 = a2;
  v70 = a3;
  v66 = 19;
  v8 = sub_1000174F8();
  if (v8)
  {
    sub_100023240(v8, v8, v72);
  }

  else
  {
    v9 = sub_100017594(dword_10003CBC0, 82, 0, &v67, 7uLL, buf, &v66);
    if (v9 == -536870201)
    {
      goto LABEL_206;
    }

    v10 = v9;
    if (v9)
    {
      sub_100023340(v9);
    }

    if (v66 > 0x12)
    {
      fwrite("Results of Allocation and Mapping Object Scheme3 Context1:\n", 0x3BuLL, 1uLL, __stderrp);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v11 = __osLogPearlLib;
      }

      else
      {
        v11 = &_os_log_default;
      }

      v12 = v11;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v72[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Results of Allocation and Mapping Object Scheme3 Context1:\n", v72, 2u);
      }

      if (buf[0])
      {
        v13 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v13 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "objectFound:\t\t%s\n", v13);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v14 = __osLogPearlLib;
      }

      else
      {
        v14 = &_os_log_default;
      }

      v15 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[0])
        {
          v16 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v16 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "objectFound:\t\t%s\n", v72, 0xCu);
      }

      fprintf(__stderrp, "dvaOffset:\t\t0x%X\n", *&buf[1]);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v17 = __osLogPearlLib;
      }

      else
      {
        v17 = &_os_log_default;
      }

      v18 = v17;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v72[0] = 67109120;
        v72[1] = *&buf[1];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "dvaOffset:\t\t0x%X\n", v72, 8u);
      }

      fprintf(__stderrp, "objectSize:\t\t%d\n", *&buf[5]);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v19 = __osLogPearlLib;
      }

      else
      {
        v19 = &_os_log_default;
      }

      v20 = v19;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v72[0] = 67109120;
        v72[1] = *&buf[5];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "objectSize:\t\t%d\n", v72, 8u);
      }

      if (buf[9])
      {
        v21 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v21 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "aneMapFunction:\t\t%s\n", v21);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v22 = __osLogPearlLib;
      }

      else
      {
        v22 = &_os_log_default;
      }

      v23 = v22;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[9])
        {
          v24 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v24 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "aneMapFunction:\t\t%s\n", v72, 0xCu);
      }

      if (buf[10])
      {
        v25 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v25 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "ispMapFunction:\t\t%s\n", v25);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v26 = __osLogPearlLib;
      }

      else
      {
        v26 = &_os_log_default;
      }

      v27 = v26;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[10])
        {
          v28 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v28 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "ispMapFunction:\t\t%s\n", v72, 0xCu);
      }

      if (buf[11])
      {
        v29 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v29 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "aneUnmapFunction:\t%s\n", v29);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v30 = __osLogPearlLib;
      }

      else
      {
        v30 = &_os_log_default;
      }

      v31 = v30;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[11])
        {
          v32 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v32 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "aneUnmapFunction:\t%s\n", v72, 0xCu);
      }

      if (buf[12])
      {
        v33 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v33 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "ispUnmapFunction:\t%s\n", v33);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v34 = __osLogPearlLib;
      }

      else
      {
        v34 = &_os_log_default;
      }

      v35 = v34;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[12])
        {
          v36 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v36 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "ispUnmapFunction:\t%s\n", v72, 0xCu);
      }

      if (buf[13])
      {
        v37 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v37 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "mappedToSEP:\t\t%s\n", v37);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v38 = __osLogPearlLib;
      }

      else
      {
        v38 = &_os_log_default;
      }

      v39 = v38;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[13])
        {
          v40 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v40 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "mappedToSEP:\t\t%s\n", v72, 0xCu);
      }

      if (buf[14])
      {
        v41 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v41 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "mappedToANE:\t\t%s\n", v41);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v42 = __osLogPearlLib;
      }

      else
      {
        v42 = &_os_log_default;
      }

      v43 = v42;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[14])
        {
          v44 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v44 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "mappedToANE:\t\t%s\n", v72, 0xCu);
      }

      if (buf[15])
      {
        v45 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v45 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "mappedToISP:\t\t%s\n", v45);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v46 = __osLogPearlLib;
      }

      else
      {
        v46 = &_os_log_default;
      }

      v47 = v46;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[15])
        {
          v48 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v48 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "mappedToISP:\t\t%s\n", v72, 0xCu);
      }

      if (buf[18])
      {
        v49 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v49 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "unmappedFromISP:\t%s\n", v49);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v50 = __osLogPearlLib;
      }

      else
      {
        v50 = &_os_log_default;
      }

      v51 = v50;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[18])
        {
          v52 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v52 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v52;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "unmappedFromISP:\t%s\n", v72, 0xCu);
      }

      if (buf[17])
      {
        v53 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v53 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "unmappedFromANE:\t%s\n", v53);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v54 = __osLogPearlLib;
      }

      else
      {
        v54 = &_os_log_default;
      }

      v55 = v54;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[17])
        {
          v56 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v56 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "unmappedFromANE:\t%s\n", v72, 0xCu);
      }

      if (buf[16])
      {
        v57 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v57 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "unmappedFromSEP:\t%s\n", v57);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLib)
      {
        v58 = __osLogPearlLib;
      }

      else
      {
        v58 = &_os_log_default;
      }

      v59 = v58;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[16])
        {
          v60 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v60 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v60;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "unmappedFromSEP:\t%s\n", v72, 0xCu);
      }

      if (v10)
      {
        goto LABEL_196;
      }

      v61 = buf[11] == 0;
      if (!buf[12])
      {
        v61 = 1;
      }

      if (!buf[16])
      {
        v61 = 1;
      }

      if (!buf[17])
      {
        v61 = 1;
      }

      if (!buf[18])
      {
        v61 = 1;
      }

      v62 = buf[9] == 0;
      if (!buf[10])
      {
        v62 = 1;
      }

      if (!buf[13])
      {
        v62 = 1;
      }

      if (!buf[14])
      {
        v62 = 1;
      }

      if (!buf[15])
      {
        v62 = 1;
      }

      v10 = 261;
      if ((a2 & v62 & 1) != 0 || (a3 & v61) != 0)
      {
        goto LABEL_196;
      }

LABEL_206:
      sub_100023564();
      v64 = *v72;
      v10 = v71;
      goto LABEL_203;
    }

    sub_100023468(__stderrp, v72);
  }

  v10 = v72[0];
LABEL_196:
  if (qword_10003CBC8 != -1)
  {
    sub_10001D9CC();
  }

  if (__osLogPearlLibTrace)
  {
    v63 = __osLogPearlLibTrace;
  }

  else
  {
    v63 = &_os_log_default;
  }

  v64 = v63;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    v72[0] = 67109120;
    v72[1] = v10;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "allocateAndMapObjectS3C1 -> 0x%x\n", v72, 8u);
  }

LABEL_203:

  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  return v10;
}

uint64_t getBrunorCollectionKey(void *a1, void *a2)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getBrunorCollectionKey\n", v15, 2u);
  }

  v15[0] = 65;
  if (!a1)
  {
    sub_100023B50(buf);
LABEL_38:
    v9 = *buf;
    goto LABEL_15;
  }

  if (!a2)
  {
    sub_100023A50(buf);
    goto LABEL_38;
  }

  v5 = sub_1000174F8();
  if (v5)
  {
    sub_100023650(v5, v5, buf);
    goto LABEL_38;
  }

  v6 = calloc(1uLL, 0x41uLL);
  if (!v6)
  {
    sub_100023950(buf);
    goto LABEL_38;
  }

  v7 = v6;
  v8 = sub_100017594(dword_10003CBC0, 73, 0, 0, 0, v6, v15);
  if (v8)
  {
    sub_100023750(v8, v8, buf);
  }

  else
  {
    if (v15[0] == 65)
    {
      v9 = 0;
      *a1 = v7;
      *a2 = 65;
      goto LABEL_15;
    }

    sub_100023850(buf);
  }

  v9 = *buf;
  free(v7);
LABEL_15:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  if (v9)
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v10 = __osLogPearlLibTrace;
    }

    else
    {
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v9;
      v11 = v10;
      v12 = OS_LOG_TYPE_ERROR;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v11, v12, "getBrunorCollectionKey -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v13 = __osLogPearlLibTrace;
    }

    else
    {
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = 0;
      v11 = v13;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }
  }

  return v9;
}

uint64_t getAttestationToBrunorCollectionKey(void *a1, void *a2)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__size[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getAttestationToBrunorCollectionKey\n", __size, 2u);
  }

  __size[0] = 0x4000;
  if (a1)
  {
    if (a2)
    {
      v5 = sub_1000174F8();
      if (v5)
      {
        sub_100023C50(v5, v5, buf);
      }

      else
      {
        v6 = calloc(1uLL, 0x4000uLL);
        if (v6)
        {
          v7 = v6;
          v8 = sub_100017594(dword_10003CBC0, 74, 0, 0, 0, v6, __size);
          if (v8)
          {
            sub_100023D50(v8, v8, buf);
          }

          else if (__size[0] > 0x4000)
          {
            sub_100023F50(buf);
          }

          else
          {
            v9 = calloc(1uLL, __size[0]);
            *a1 = v9;
            if (v9)
            {
              memcpy(v9, v7, __size[0]);
              v10 = 0;
              *a2 = __size[0];
LABEL_16:
              free(v7);
              goto LABEL_17;
            }

            sub_100023E50(buf);
          }

          v10 = *buf;
          goto LABEL_16;
        }

        sub_100024050(buf);
      }
    }

    else
    {
      sub_100024150(buf);
    }
  }

  else
  {
    sub_100024250(buf);
  }

  v10 = *buf;
LABEL_17:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  if (v10)
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v11 = __osLogPearlLibTrace;
    }

    else
    {
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v10;
      v12 = v11;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_34:
      _os_log_impl(&_mh_execute_header, v12, v13, "getAttestationToBrunorCollectionKey -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = 0;
      v12 = v14;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }
  }

  return v10;
}

uint64_t signDataWithBrunorCollectionKey(const void *a1, size_t a2, void *a3, size_t *a4)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "signDataWithBrunorCollectionKey\n", buf, 2u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  v23 = 0u;
  __size = 128;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v9 = sub_1000174F8();
          if (v9)
          {
            sub_100024350(v9, v9, v20);
          }

          else
          {
            v10 = sub_100017594(dword_10003CBC0, 75, 0, a1, a2, buf, &__size);
            if (v10)
            {
              sub_100024450(v10, v10, v20);
            }

            else if (__size >= 0x81)
            {
              sub_100024650(v20);
            }

            else
            {
              v11 = calloc(1uLL, __size);
              *a3 = v11;
              if (v11)
              {
                v12 = __size;
                *a4 = __size;
                memcpy(v11, buf, v12);
                v13 = 0;
                goto LABEL_17;
              }

              sub_100024550(v20);
            }
          }
        }

        else
        {
          sub_100024750(v20);
        }
      }

      else
      {
        sub_100024850(v20);
      }
    }

    else
    {
      sub_100024950(v20);
    }
  }

  else
  {
    sub_100024A50(v20);
  }

  v13 = *v20;
LABEL_17:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  if (v13)
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v20 = 67109120;
      v21 = v13;
      v15 = v14;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_34:
      _os_log_impl(&_mh_execute_header, v15, v16, "signDataWithBrunorCollectionKey -> %d\n", v20, 8u);
    }
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v17 = __osLogPearlLibTrace;
    }

    else
    {
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 67109120;
      v21 = 0;
      v15 = v17;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }
  }

  return v13;
}

uint64_t getBrunorPermanentKey(void *a1, size_t *a2)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getBrunorPermanentKey\n", v16, 2u);
  }

  v16[0] = 57;
  if (!a1)
  {
    sub_100025050(buf);
LABEL_38:
    v10 = *buf;
    goto LABEL_15;
  }

  if (!a2)
  {
    sub_100024F50(buf);
    goto LABEL_38;
  }

  v5 = sub_1000174F8();
  if (v5)
  {
    sub_100024B50(v5, v5, buf);
    goto LABEL_38;
  }

  v6 = calloc(1uLL, 0x39uLL);
  if (!v6)
  {
    sub_100024E50(buf);
    goto LABEL_38;
  }

  v7 = v6;
  v8 = sub_100017594(dword_10003CBC0, 76, 0, 0, 0, v6, v16);
  if (v8)
  {
    sub_100024C50(v8, v8, buf);
  }

  else
  {
    v9 = v16[0];
    if (v16[0] < 0x3A)
    {
      v10 = 0;
      *a1 = v7;
      *a2 = v9;
      goto LABEL_15;
    }

    sub_100024D50(buf);
  }

  v10 = *buf;
  free(v7);
LABEL_15:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  if (v10)
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v11 = __osLogPearlLibTrace;
    }

    else
    {
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v10;
      v12 = v11;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v12, v13, "getBrunorPermanentKey -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = 0;
      v12 = v14;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }
  }

  return v10;
}

uint64_t signDataWithBrunorPermanentKey(const void *a1, size_t a2, void *a3, size_t *a4)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "signDataWithBrunorPermanentKey\n", buf, 2u);
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  v23 = 0u;
  __size = 65;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v9 = sub_1000174F8();
          if (v9)
          {
            sub_100025150(v9, v9, v20);
          }

          else
          {
            v10 = sub_100017594(dword_10003CBC0, 77, 0, a1, a2, buf, &__size);
            if (v10)
            {
              sub_100025250(v10, v10, v20);
            }

            else if (__size >= 0x42)
            {
              sub_100025450(v20);
            }

            else
            {
              v11 = calloc(1uLL, __size);
              *a3 = v11;
              if (v11)
              {
                v12 = __size;
                *a4 = __size;
                memcpy(v11, buf, v12);
                v13 = 0;
                goto LABEL_17;
              }

              sub_100025350(v20);
            }
          }
        }

        else
        {
          sub_100025550(v20);
        }
      }

      else
      {
        sub_100025650(v20);
      }
    }

    else
    {
      sub_100025750(v20);
    }
  }

  else
  {
    sub_100025850(v20);
  }

  v13 = *v20;
LABEL_17:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  if (v13)
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v20 = 67109120;
      v21 = v13;
      v15 = v14;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_34:
      _os_log_impl(&_mh_execute_header, v15, v16, "signDataWithBrunorPermanentKey -> %d\n", v20, 8u);
    }
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v17 = __osLogPearlLibTrace;
    }

    else
    {
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 67109120;
      v21 = 0;
      v15 = v17;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }
  }

  return v13;
}

uint64_t prepareFDRDataEncryptionKey()
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  v0 = &_os_log_default;
  if (__osLogPearlLibTrace)
  {
    v1 = __osLogPearlLibTrace;
  }

  else
  {
    v1 = &_os_log_default;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "prepareFDRDataEncryptionKey\n", &v8, 2u);
  }

  v2 = sub_1000174F8();
  if (v2)
  {
    sub_100025950(v2, v2, &v8);
  }

  else
  {
    v3 = sub_100017594(dword_10003CBC0, 78, 0, 0, 0, 0, 0);
    v4 = 0;
    if (!v3)
    {
      goto LABEL_10;
    }

    sub_100025A50(v3, v3, &v8);
  }

  v4 = v8;
LABEL_10:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  if (v4)
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v8 = 67109120;
      v9 = v4;
      v5 = v0;
      v6 = OS_LOG_TYPE_ERROR;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v5, v6, "prepareFDRDataEncryptionKey -> %d\n", &v8, 8u);
    }
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      v9 = 0;
      v5 = v0;
      v6 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_25;
    }
  }

  return v4;
}

uint64_t setDummyWrappedFDRDataEncryptionKey(const void *a1, size_t a2)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setDummyWrappedFDRDataEncryptionKey\n", &v13, 2u);
  }

  v5 = sub_1000174F8();
  if (v5)
  {
    sub_100025B50(v5, v5, &v13);
  }

  else
  {
    v6 = sub_100017594(dword_10003CBC0, 79, 0, a1, a2, 0, 0);
    v7 = 0;
    if (!v6)
    {
      goto LABEL_10;
    }

    sub_100025C50(v6, v6, &v13);
  }

  v7 = v13;
LABEL_10:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  if (v7)
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v8 = __osLogPearlLibTrace;
    }

    else
    {
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      v14 = v7;
      v9 = v8;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_27:
      _os_log_impl(&_mh_execute_header, v9, v10, "setDummyWrappedFDRDataEncryptionKey -> %d\n", &v13, 8u);
    }
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v11 = __osLogPearlLibTrace;
    }

    else
    {
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      v14 = 0;
      v9 = v11;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_27;
    }
  }

  return v7;
}

uint64_t encryptFDRDataForBrunor(const void *a1, size_t a2, uint64_t a3, size_t *a4, _OWORD *a5, uint64_t a6)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v12 = __osLogPearlLibTrace;
  }

  else
  {
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134219264;
    v22 = a1;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = a3;
    v27 = 2048;
    v28 = a4;
    v29 = 2048;
    v30 = a5;
    v31 = 2048;
    v32 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "encryptFDRDataForBrunor %p %zu %p %p %p %zu\n", &v21, 0x3Eu);
  }

  if (!a1)
  {
    sub_100026350(&v21);
LABEL_44:
    v15 = v21;
    goto LABEL_18;
  }

  if (!a2)
  {
    sub_100026250(&v21);
    goto LABEL_44;
  }

  if (!a3)
  {
    sub_100026150(&v21);
    goto LABEL_44;
  }

  if (!a4)
  {
    sub_100026050(&v21);
    goto LABEL_44;
  }

  if (a5 && a6 != 16)
  {
    sub_100025D50(&v21);
    goto LABEL_44;
  }

  v13 = sub_1000174F8();
  if (v13)
  {
    sub_100025E50(v13, v13, &v21);
    goto LABEL_44;
  }

  v14 = sub_100017594(dword_10003CBC0, 80, 0, a1, a2, a3, a4);
  if (v14)
  {
    sub_100025F50(v14, v14, &v21);
    goto LABEL_44;
  }

  v15 = 0;
  if (a5)
  {
    *a5 = *(a3 + 108);
  }

LABEL_18:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  if (v15)
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v16 = __osLogPearlLibTrace;
    }

    else
    {
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 67109120;
      LODWORD(v22) = v15;
      v17 = v16;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_35:
      _os_log_impl(&_mh_execute_header, v17, v18, "encryptFDRDataForBrunor -> %d\n", &v21, 8u);
    }
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v19 = __osLogPearlLibTrace;
    }

    else
    {
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109120;
      LODWORD(v22) = 0;
      v17 = v19;
      v18 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_35;
    }
  }

  return v15;
}

uint64_t getPDAK(void *a1, void *a2)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__size[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getPDAK\n", __size, 2u);
  }

  __size[0] = 65;
  if (!a1 || !a2)
  {
    sub_100026850(buf);
LABEL_37:
    v9 = *buf;
    goto LABEL_15;
  }

  v5 = sub_1000174F8();
  if (v5)
  {
    sub_100026450(v5, v5, buf);
    goto LABEL_37;
  }

  v6 = calloc(1uLL, __size[0]);
  if (!v6)
  {
    sub_100026750(buf);
    goto LABEL_37;
  }

  v7 = v6;
  v8 = sub_100017594(dword_10003CBC0, 84, 0, 0, 0, v6, __size);
  if (v8)
  {
    sub_100026550(v8, v8, buf);
  }

  else
  {
    if (__size[0] == 65)
    {
      v9 = 0;
      *a1 = v7;
      *a2 = 65;
      goto LABEL_15;
    }

    sub_100026650(buf);
  }

  v9 = *buf;
  free(v7);
LABEL_15:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  if (v9)
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v10 = __osLogPearlLibTrace;
    }

    else
    {
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v9;
      v11 = v10;
      v12 = OS_LOG_TYPE_ERROR;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v11, v12, "getPDAK -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v13 = __osLogPearlLibTrace;
    }

    else
    {
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = 0;
      v11 = v13;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }
  }

  return v9;
}

uint64_t getAttestationToPDAK(void *a1, void *a2)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__size[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getAttestationToPDAK\n", __size, 2u);
  }

  __size[0] = 16388;
  if (a1 && a2)
  {
    v5 = sub_1000174F8();
    if (v5)
    {
      sub_100026950(v5, v5, buf);
    }

    else
    {
      v6 = calloc(1uLL, __size[0]);
      if (v6)
      {
        v7 = v6;
        v8 = sub_100017594(dword_10003CBC0, 85, 0, 0, 0, v6, __size);
        if (v8)
        {
          sub_100026A50(v8, v8, buf);
        }

        else if (__size[0] <= 3)
        {
          sub_100026D50(buf);
        }

        else
        {
          v9 = *v7;
          if ((v9 - 16385) <= 0xFFFFBFFF)
          {
            sub_100026C50(buf);
          }

          else
          {
            v10 = calloc(1uLL, v9);
            if (v10)
            {
              v11 = v10;
              memcpy(v10, v7 + 1, *v7);
              v12 = 0;
              *a1 = v11;
              *a2 = *v7;
LABEL_17:
              free(v7);
              goto LABEL_18;
            }

            sub_100026B50(buf);
          }
        }

        v12 = *buf;
        goto LABEL_17;
      }

      sub_100026E50(buf);
    }
  }

  else
  {
    sub_100026F50(buf);
  }

  v12 = *buf;
LABEL_18:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  if (v12)
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v13 = __osLogPearlLibTrace;
    }

    else
    {
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = v12;
      v14 = v13;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_35:
      _os_log_impl(&_mh_execute_header, v14, v15, "getAttestationToPDAK -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v16 = __osLogPearlLibTrace;
    }

    else
    {
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = 0;
      v14 = v16;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_35;
    }
  }

  return v12;
}

uint64_t getDummy0PSDData(void *a1, void *a2)
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getDummy0PSDData\n", buf, 2u);
  }

  if (!a1)
  {
    sub_100027470(buf);
LABEL_24:
    v11 = *buf;
    goto LABEL_27;
  }

  if (!a2)
  {
    sub_100027370(buf);
    goto LABEL_24;
  }

  *a2 = 0;
  v5 = calloc(1uLL, 0x96011uLL);
  if (!v5)
  {
    sub_100027270(buf);
    goto LABEL_24;
  }

  v6 = v5;
  *v5 = 3;
  *(v5 + 4) = 0x773C051C4FLL;
  v5[12] = 2;
  *(v5 + 13) = 0;
  *(v5 + 307215) = 1;
  v14 = 614501;
  v7 = calloc(1uLL, 0x96065uLL);
  if (v7)
  {
    v8 = v7;
    v9 = encryptFDRDataInternal(v6, 0x96011uLL, v7, &v14, 0);
    if (!v9)
    {
      *a1 = v8;
      *a2 = v14;
      free(v6);
      if (qword_10003CBC8 != -1)
      {
        sub_10001D9CC();
      }

      if (__osLogPearlLibTrace)
      {
        v10 = __osLogPearlLibTrace;
      }

      else
      {
        v10 = &_os_log_default;
      }

      v11 = 0;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v16 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "getDummy0PSDData -> %d\n", buf, 8u);
        return 0;
      }

      return v11;
    }

    v11 = v9;
    sub_100027050(v9, v6, v8);
  }

  else
  {
    sub_100027168(v6);
    v11 = 260;
  }

LABEL_27:
  if (qword_10003CBC8 != -1)
  {
    sub_10001D9CC();
  }

  if (__osLogPearlLibTrace)
  {
    v13 = __osLogPearlLibTrace;
  }

  else
  {
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "getDummy0PSDData -> %d\n", buf, 8u);
  }

  return v11;
}

uint64_t generateAndVerifyAriesHostAuthorization()
{
  if (qword_10003CBC8 != -1)
  {
    sub_10001D848();
  }

  v0 = &_os_log_default;
  if (__osLogPearlLibTrace)
  {
    v1 = __osLogPearlLibTrace;
  }

  else
  {
    v1 = &_os_log_default;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "generateAndVerifyAriesHostAuthorization\n", &v8, 2u);
  }

  v2 = sub_1000174F8();
  if (v2)
  {
    sub_100027570(v2, v2, &v8);
  }

  else
  {
    v3 = sub_100017594(dword_10003CBC0, 86, 0, 0, 0, 0, 0);
    v4 = 0;
    if (!v3)
    {
      goto LABEL_10;
    }

    sub_100027670(v3, v3, &v8);
  }

  v4 = v8;
LABEL_10:
  if (dword_10003CBC0)
  {
    IOServiceClose(dword_10003CBC0);
    dword_10003CBC0 = 0;
  }

  if (v4)
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v8 = 67109120;
      v9 = v4;
      v5 = v0;
      v6 = OS_LOG_TYPE_ERROR;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v5, v6, "generateAndVerifyAriesHostAuthorization -> %d\n", &v8, 8u);
    }
  }

  else
  {
    if (qword_10003CBC8 != -1)
    {
      sub_10001D9CC();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      v9 = 0;
      v5 = v0;
      v6 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_25;
    }
  }

  return v4;
}

void sub_10001D37C(id a1)
{
  v1 = os_log_create("com.apple.BiometricKit", "Library-PearlFactory");
  v2 = __osLogPearlLib;
  __osLogPearlLib = v1;

  v3 = __osLogPearlLib;
  if (!__osLogPearlLib)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100027770();
    }

    v3 = __osLogPearlLib;
  }

  objc_storeStrong(&__osLogPearlLibTrace, v3);
}

void sub_10001D538(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL sub_10001D558@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_10001D578(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL sub_10001D598@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_10001D60C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL sub_10001D62C@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_10001D6E4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x30u);
}

BOOL sub_10001D6FC@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_10001D7C8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_ERROR, a4, &buf, 8u);
}

BOOL sub_10001D7E8@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

BOOL sub_10001D808@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_10001D828@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_100020050()
{
  fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "fileURL", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 511);
  if (qword_10003CBC8 != -1)
  {
    dispatch_once(&qword_10003CBC8, &stru_100034C90);
  }

  if (sub_10001D808(__osLogPearlLib))
  {
    v3 = 136316162;
    v4 = "fileURL";
    sub_10001D488();
    v5 = "";
    v6 = v1;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
    sub_10001D64C();
    v8 = 511;
    sub_10001D6E4(&_mh_execute_header, v0, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v3);
  }
}

void sub_100020170()
{
  fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "pathString", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 509);
  if (qword_10003CBC8 != -1)
  {
    dispatch_once(&qword_10003CBC8, &stru_100034C90);
  }

  if (sub_10001D808(__osLogPearlLib))
  {
    v3 = 136316162;
    v4 = "pathString";
    sub_10001D488();
    v5 = "";
    v6 = v1;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
    sub_10001D64C();
    v8 = 509;
    sub_10001D6E4(&_mh_execute_header, v0, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v3);
  }
}

void sub_100023564()
{
  sub_10001D71C();
  if (qword_10003CBC8 != -1)
  {
    dispatch_once(&qword_10003CBC8, &stru_100034C90);
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  v3 = v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "allocateAndMapObjectS3C1 -> 0x%x\n", v4, 8u);
  }

  *v1 = 0;
  *v0 = v3;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}
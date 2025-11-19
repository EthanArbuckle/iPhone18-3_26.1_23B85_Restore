uint64_t ANE::ANEServicesDeviceServiceInterestCallback(uint64_t this, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*this)
  {
    return (*this)(this, a3, a4, *(this + 8));
  }

  return this;
}

{
  if (*this)
  {
    return (*this)(this, a3, a4, *(this + 8));
  }

  return this;
}

uint64_t MyANEServicesDeviceMessageNotification(ANE::ANEServicesDevice *a1, int a2, void *a3, void *a4)
{
  if (a2 > -469794814)
  {
    if (a2 == -469794813)
    {
      v5 = 22;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      MyANEServicesDeviceMessageNotification();
      if (!a4)
      {
        return 0;
      }
    }

    else
    {
      if (a2 != -469794812)
      {
        return 0;
      }

      v5 = 23;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      MyANEServicesDeviceMessageNotification();
      if (!a4)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2 != -469794815)
    {
      if (a2 != -469794814)
      {
        return 0;
      }

      v5 = 0x1100000015;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MyANEServicesDeviceMessageNotification();
        if (!a4)
        {
          return 0;
        }

        goto LABEL_17;
      }

LABEL_16:
      if (!a4)
      {
        return 0;
      }

      goto LABEL_17;
    }

    v5 = 0x1000000015;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    MyANEServicesDeviceMessageNotification();
    if (!a4)
    {
      return 0;
    }
  }

LABEL_17:
  v6 = a4[3];
  if (v6)
  {
    v7 = a4[2];
    v9[0] = v5;
    v6(v7, a4 + 8, 0, v9);
  }

  return 0;
}

uint64_t ANEServicesProgramCreate(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = 2;
  if (a2 && a1 && a3)
  {
    if (*(*(a1 + 16) + 8))
    {
      v5 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2408);
      v6 = +[ANEServicesLog handle];
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v6))
        {
          v8 = *a2;
          v9 = *(a2 + 21);
          buf[0] = 134218240;
          *&buf[1] = v8;
          v13 = 1024;
          LODWORD(v14) = v9;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ServicesProgramCreate", "progContent=%llx statsMask=%x", buf, 0x12u);
        }
      }

      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramCreate_cold_1();
    }

    v3 = 8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ANEServicesProgramProcessRequestDirect(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramProcessRequestDirect_cold_1();
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 16);
  if (*(v5 + 8))
  {
    v6 = *(v5 + 104);
    if (v6)
    {
      if (*(a2 + 4) <= 0xFFu && *(a2 + 6128) < 0x100u)
      {
        if (!a4 || *a4 <= 0x40u && a4[1] < 0x41u)
        {
          add = atomic_fetch_add((v6 + 416), 1uLL);
          v11 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2414);
          v12 = +[ANEServicesLog handle];
          if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v13 = v12;
            if (os_signpost_enabled(v12))
            {
              v14 = *(a2 + 12288);
              v15 = *a2;
              *buf = 134218496;
              v18 = v14;
              v19 = 1024;
              v20 = v15;
              v21 = 2048;
              v22 = add;
              _os_signpost_emit_with_name_impl(&dword_1C0446000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ServicesProcessRequestDirect", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
            }
          }

          operator new();
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEServicesProgramProcessRequestDirect_cold_2(a4);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramProcessRequestDirect_cold_5(a2);
      }

LABEL_12:
      v7 = 2;
      goto LABEL_19;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramProcessRequestDirect_cold_6();
    }

    v7 = 11;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramProcessRequestDirect_cold_7();
    }

    v7 = 8;
  }

LABEL_19:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramCreate(uint64_t a1, uint64_t *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = 3758097090;
  if (*(a1 + 64))
  {
    if (a3)
    {
      v7 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2010);
      v8 = +[ANEServicesLog handle];
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = v8;
        if (os_signpost_enabled(v8))
        {
          v10 = *a2;
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v10;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ANEServicesDeviceProgramCreate", "prodAddr=%llx", &buf, 0xCu);
        }
      }

      *&buf = a2;
      *(&buf + 1) = 3464;
      v22 = a3;
      v23 = 706360;
      if (*(a1 + 24) == 1)
      {
        v3 = IOConnectCallStructMethod(*(a1 + 64), 3u, &buf, 0x20uLL, 0, 0);
      }

      else
      {
        v3 = 0;
      }

      v11 = +[ANEServicesLog handle];
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v11;
        if (os_signpost_enabled(v11))
        {
          v13 = *a2;
          v14 = *a3;
          v17 = 134218240;
          v18 = v13;
          v19 = 2048;
          v20 = v14;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v12, OS_SIGNPOST_INTERVAL_END, v7, "ANEServicesDeviceProgramCreate", "prodAddr=%llx progHandle=%llx", &v17, 0x16u);
        }
      }
    }
  }

  else
  {
    v3 = 3758097101;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramUnprepare(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = 3758097089;
  if (*(a1 + 64))
  {
    if (*(a1 + 24) == 1)
    {
      v5 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B201C);
      v6 = +[ANEServicesLog handle];
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v6))
        {
          v8 = *a2;
          v14 = 134217984;
          v15 = v8;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ANEServicesDeviceProgramUnprepare", "progHandle=%llx", &v14, 0xCu);
        }
      }

      v2 = IOConnectCallStructMethod(*(a1 + 64), 5u, a2, 0x38uLL, 0, 0);
      v9 = +[ANEServicesLog handle];
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = v9;
        if (os_signpost_enabled(v9))
        {
          v11 = *a2;
          v14 = 134217984;
          v15 = v11;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v10, OS_SIGNPOST_INTERVAL_END, v5, "ANEServicesDeviceProgramUnprepare", "progHandle=%llx", &v14, 0xCu);
        }
      }
    }
  }

  else
  {
    v2 = 3758097101;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t ANEServicesProgramDestroy(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_13:
    v5 = 2;
    goto LABEL_14;
  }

  v2 = *(a1 + 8);
  v3 = *(*v2 + 16);
  v4 = *(v3 + 8);
  if (v4)
  {
    if (*(v3 + 32) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramDestroy_cold_2();
      }

      v5 = 20;
      goto LABEL_14;
    }

    if (v2[435])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramDestroy_cold_1();
      }

      goto LABEL_13;
    }

    v8 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2428);
    v9 = +[ANEServicesLog handle];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v9))
      {
        v11 = *(a1 + 112);
        *buf = 134217984;
        *&buf[4] = v11;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ServicesProgramDestroy", "progHandle=%llx", buf, 0xCu);
      }
    }

    *buf = v2[437];
    v12 = ANE::ANEServicesDevice::ANE_ProgramDestroy(v4, buf);
    if (v12 > -536870185)
    {
      if (v12 > -536870166)
      {
        if (v12 <= -536870163)
        {
          if (v12 == -536870165)
          {
            v5 = 21;
            goto LABEL_66;
          }

          if (v12 == -536870163)
          {
            v5 = 27;
            goto LABEL_66;
          }
        }

        else
        {
          switch(v12)
          {
            case -536870162:
              v5 = 28;
              goto LABEL_66;
            case -536870160:
              v5 = 4;
              goto LABEL_66;
            case 0:
              v5 = 0;
              goto LABEL_66;
          }
        }
      }

      else if (v12 <= -536870175)
      {
        if (v12 == -536870184)
        {
          v5 = 22;
          goto LABEL_66;
        }

        if (v12 == -536870176)
        {
          v5 = 26;
          goto LABEL_66;
        }
      }

      else
      {
        switch(v12)
        {
          case -536870174:
            v5 = 23;
            goto LABEL_66;
          case -536870173:
            v5 = 10;
            goto LABEL_66;
          case -536870169:
            v5 = 29;
            goto LABEL_66;
        }
      }
    }

    else if (v12 > -536870204)
    {
      if (v12 <= -536870192)
      {
        if (v12 == -536870203)
        {
          v5 = 30;
          goto LABEL_66;
        }

        if (v12 == -536870201)
        {
          v5 = 24;
          goto LABEL_66;
        }
      }

      else
      {
        switch(v12)
        {
          case -536870191:
            v5 = 19;
            goto LABEL_66;
          case -536870190:
            v5 = 32;
            goto LABEL_66;
          case -536870186:
            v5 = 15;
            goto LABEL_66;
        }
      }
    }

    else if (v12 <= -536870211)
    {
      if (v12 == -536870911)
      {
        v5 = 31;
        goto LABEL_66;
      }

      if (v12 == -536870211)
      {
        v5 = 1;
        goto LABEL_66;
      }
    }

    else
    {
      switch(v12)
      {
        case -536870210:
          v5 = 5;
          goto LABEL_66;
        case -536870207:
          v5 = 20;
          goto LABEL_66;
        case -536870206:
          v5 = 2;
LABEL_66:
          MEMORY[0x1C68DA430](v2, 0x10A0C4005977B85);
          *(a1 + 72) = 0;
          *(a1 + 32) = 0;
          *(a1 + 96) = 0;
          *(a1 + 144) = 0;
          v13 = *(a1 + 40);
          if (v13)
          {
            MEMORY[0x1C68DA410](v13, 0x1000C8077774924);
          }

          v14 = *(a1 + 48);
          if (v14)
          {
            MEMORY[0x1C68DA410](v14, 0x1000C8000313F17);
          }

          v15 = *(a1 + 80);
          if (v15)
          {
            MEMORY[0x1C68DA410](v15, 0x1000C8077774924);
          }

          v16 = *(a1 + 88);
          if (v16)
          {
            MEMORY[0x1C68DA410](v16, 0x1000C8000313F17);
          }

          v17 = *(a1 + 104);
          if (v17)
          {
            MEMORY[0x1C68DA410](v17, 0x1000C80669DE214);
          }

          v18 = *(a1 + 56);
          if (v18)
          {
            MEMORY[0x1C68DA410](v18, 0x1000C802D139ED7);
          }

          v19 = *(a1 + 64);
          if (v19)
          {
            MEMORY[0x1C68DA410](v19, 0x1000C802D139ED7);
          }

          v20 = +[ANEServicesLog handle];
          if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v21 = v20;
            if (os_signpost_enabled(v20))
            {
              v22 = *(a1 + 112);
              v23 = 134217984;
              v24 = v22;
              _os_signpost_emit_with_name_impl(&dword_1C0446000, v21, OS_SIGNPOST_INTERVAL_END, v8, "ServicesProgramDestroy", "progHandle=%llx", &v23, 0xCu);
            }
          }

          MEMORY[0x1C68DA430](a1, 0x10F0C40678A4445);
          goto LABEL_14;
      }
    }

    v5 = 18;
    goto LABEL_66;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEServicesProgramDestroy_cold_3();
  }

  v5 = 8;
LABEL_14:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramDestroy(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = 3758097089;
  if (*(a1 + 64))
  {
    if (*(a1 + 24) == 1)
    {
      v5 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2020);
      v6 = +[ANEServicesLog handle];
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v6))
        {
          v8 = *a2;
          v14 = 134217984;
          v15 = v8;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ANEServicesDeviceProgramDestroy", "progHandle=%llx", &v14, 0xCu);
        }
      }

      v2 = IOConnectCallStructMethod(*(a1 + 64), 6u, a2, 0x10uLL, 0, 0);
      v9 = +[ANEServicesLog handle];
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = v9;
        if (os_signpost_enabled(v9))
        {
          v11 = *a2;
          v14 = 134217984;
          v15 = v11;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v10, OS_SIGNPOST_INTERVAL_END, v5, "ANEServicesDeviceProgramDestroy", "progHandle=%llx", &v14, 0xCu);
        }
      }
    }
  }

  else
  {
    v2 = 3758097101;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t ANEServicesDeviceClose(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesDeviceClose_cold_4();
    }

    goto LABEL_28;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesDeviceClose_cold_3();
    }

    result = 2;
    goto LABEL_29;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesDeviceClose_cold_2();
    }

LABEL_28:
    result = 8;
    goto LABEL_29;
  }

  v4 = *v2;
  if (*v2)
  {
    v5 = *(v2 + 104);
    v6 = pthread_self();
    v7 = pthread_equal(v6, v4[9]);
    if (v7)
    {
      v8 = ANE::ANEIsDelayedCloseFlagSet(v7);
      LOBYTE(v20) = v8;
      if ((v8 & 1) == 0)
      {
        ANE::ANESetCurrentThreadAsTerminating(a1);
        goto LABEL_35;
      }

      ANE::ANEAckCloseRequest(v8);
    }

    if (*(v2 + 32) == 1 && v5 == 0)
    {
      result = 11;
    }

    else
    {
      v10 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2404);
      v11 = +[ANEServicesLog handle];
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v11;
        if (os_signpost_enabled(v11))
        {
          v20 = 134217984;
          v21 = a1;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ServicesDeviceClose", "deviceID=%llx", &v20, 0xCu);
        }
      }

      if (*(v2 + 32) == 1)
      {
        ANE::ANERequestReceiver::completeAllRequests(v5);
        ANE::DestroyANERequestReceiver(v5, v13);
        *(v2 + 104) = 0;
        v14 = *(v2 + 120);
        if (v14)
        {
          ANE::ANERequestReceiverBufferPool::~ANERequestReceiverBufferPool(v14);
          MEMORY[0x1C68DA430]();
        }
      }

      ANE::ANEServicesDevice::ANEDeviceClose(v3);
      ANE::DestroyANEDeviceController(v4, v15);
      MEMORY[0x1C68DA430](v2, 0x10E0C4056312195);
      v16 = +[ANEServicesLog handle];
      if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      v17 = v16;
      result = os_signpost_enabled(v16);
      if (result)
      {
        v20 = 134217984;
        v21 = a1;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v17, OS_SIGNPOST_INTERVAL_END, v10, "ServicesDeviceClose", "deviceID=%llx", &v20, 0xCu);
LABEL_35:
        result = 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesDeviceClose_cold_1();
    }

    result = 7;
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANEServicesProgramStop(void *a1, int a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  if (!a1 || !a2)
  {
    goto LABEL_70;
  }

  v5 = a1[1];
  v6 = *(*v5 + 16);
  v7 = *(v6 + 8);
  if (v7)
  {
    if (*(v6 + 32) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramStop_cold_2();
      }

      v3 = 20;
      goto LABEL_70;
    }

    v9 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2424);
    v10 = +[ANEServicesLog handle];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v10))
      {
        v12 = a1[14];
        *buf = 134218496;
        *&buf[4] = v12;
        v26 = 1024;
        v27 = 1;
        v28 = 1024;
        v29 = a3;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ServicesProgramStop", "progHandle=%llx blocking=%d forceStop=%d", buf, 0x18u);
      }
    }

    *buf = v5[437];
    buf[11] = a3;
    v13 = ANE::ANEServicesDevice::ANE_ProgramUnprepare(v7, buf);
    if (v13 > -536870185)
    {
      if (v13 > -536870166)
      {
        if (v13 <= -536870163)
        {
          if (v13 == -536870165)
          {
            v3 = 21;
            goto LABEL_65;
          }

          if (v13 == -536870163)
          {
            v3 = 27;
            goto LABEL_65;
          }
        }

        else
        {
          switch(v13)
          {
            case -536870162:
              v3 = 28;
              goto LABEL_65;
            case -536870160:
              v3 = 4;
              goto LABEL_65;
            case 0:
              v3 = 0;
              a1[19] = 0;
LABEL_67:
              v14 = +[ANEServicesLog handle];
              if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v15 = v14;
                if (os_signpost_enabled(v14))
                {
                  v16 = a1[14];
                  v19 = 134218496;
                  v20 = v16;
                  v21 = 1024;
                  v22 = 1;
                  v23 = 1024;
                  v24 = a3;
                  _os_signpost_emit_with_name_impl(&dword_1C0446000, v15, OS_SIGNPOST_INTERVAL_END, v9, "ServicesProgramStop", "progHandle=%llx blocking=%d forceStop=%d", &v19, 0x18u);
                }
              }

              goto LABEL_70;
          }
        }
      }

      else if (v13 <= -536870175)
      {
        if (v13 == -536870184)
        {
          v3 = 22;
          goto LABEL_65;
        }

        if (v13 == -536870176)
        {
          v3 = 26;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v13)
        {
          case -536870174:
            v3 = 23;
            goto LABEL_65;
          case -536870173:
            v3 = 10;
            goto LABEL_65;
          case -536870169:
            v3 = 29;
            goto LABEL_65;
        }
      }
    }

    else if (v13 > -536870204)
    {
      if (v13 <= -536870192)
      {
        if (v13 == -536870203)
        {
          v3 = 30;
          goto LABEL_65;
        }

        if (v13 == -536870201)
        {
          v3 = 24;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v13)
        {
          case -536870191:
            v3 = 19;
            goto LABEL_65;
          case -536870190:
            v3 = 32;
            goto LABEL_65;
          case -536870186:
            v3 = 15;
            goto LABEL_65;
        }
      }
    }

    else if (v13 <= -536870211)
    {
      if (v13 == -536870911)
      {
        v3 = 31;
        goto LABEL_65;
      }

      if (v13 == -536870211)
      {
        v3 = 1;
        goto LABEL_65;
      }
    }

    else
    {
      switch(v13)
      {
        case -536870210:
          v3 = 5;
          goto LABEL_65;
        case -536870207:
          v3 = 20;
          goto LABEL_65;
        case -536870206:
          v3 = 2;
          goto LABEL_65;
      }
    }

    v3 = 18;
LABEL_65:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramStop_cold_1();
    }

    goto LABEL_67;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEServicesProgramStop_cold_3();
  }

  v3 = 8;
LABEL_70:
  v17 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ANE::ANERequestReceiver::completeAllRequests(ANE::ANERequestReceiver *this)
{
  pthread_mutex_lock((this + 112));
  if (!*this)
  {
    pthread_mutex_unlock((this + 112));
    return 3758097122;
  }

  pthread_mutex_lock((this + 176));
  if (!*(this + 50))
  {
    pthread_mutex_unlock((this + 176));
    goto LABEL_8;
  }

  *(this + 248) = 1;
  pthread_mutex_unlock((this + 176));
  v2 = dispatch_time(0, 5000000000);
  if (!dispatch_semaphore_wait(*(this + 30), v2))
  {
LABEL_8:
    v7 = 0;
    goto LABEL_18;
  }

  printf("DEBUG:ANERequestReceiver: Did not get all pending requests back from kernel. remaining: %d.\n", *(this + 50));
  v3 = *(this + 46);
  v4 = *(this + 47);
  v5 = (v3 + 8 * (*(this + 49) >> 9));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = (*v5 + 8 * (*(this + 49) & 0x1FFLL));
  }

  while (1)
  {
    if (v4 == v3)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(this + 50) + *(this + 49);
      v9 = *(v3 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF);
    }

    if (v6 == v9)
    {
      break;
    }

    v10 = *v6++;
    printf("ANERequestReceiver: Request not returned 0x%p\n", v10);
    if ((v6 - *v5) == 4096)
    {
      v11 = v5[1];
      ++v5;
      v6 = v11;
    }

    v3 = *(this + 46);
    v4 = *(this + 47);
  }

  v7 = 3758097110;
LABEL_18:
  if (*(this + 14))
  {
    gettimeofday(&v14, 0);
    v12 = 1000 * v14.tv_usec + 1000000 * *(this + 4);
    v15.tv_sec = v14.tv_sec + v12 / 0x3B9ACA00uLL;
    v15.tv_nsec = v12 % 0x3B9ACA00;
    if (pthread_cond_timedwait((this + 64), (this + 112), &v15) == 60 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANE::ANERequestReceiver::stopReceive();
    }
  }

  pthread_mutex_lock((this + 176));
  *(this + 248) = 0;
  pthread_mutex_unlock((this + 176));
  pthread_mutex_unlock((this + 112));
  return v7;
}

uint64_t ANEServicesDeviceOpen(uint64_t a1, int *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2400);
    v4 = +[ANEServicesLog handle];
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v4))
      {
        v6 = *a2;
        *buf = 67109120;
        v10 = v6;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "ServicesDeviceOpen", "UsageType=%d", buf, 8u);
      }
    }

    operator new();
  }

  v7 = *MEMORY[0x1E69E9840];
  return 2;
}

uint64_t ANE::ANERequestReceiver::ProgramProcessRequest(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  v84 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8232);
  v9 = *(a2 + 8240);
  v10 = *(a2 + 8256);
  v11 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2208);
  v12 = +[ANEServicesLog handle];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v12))
    {
      *buf = 134218496;
      *&buf[4] = v8;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ANERequestReceiverProcessRequest", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }

  v62 = v8;
  v63 = v9;
  v64 = v10;
  bzero(buf, 0x948uLL);
  pthread_mutex_lock((a1 + 112));
  if ((*(a1 + 408) & 1) != 0 || *a1 != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANE::ANERequestReceiver::ProgramProcessRequest();
    }

    v15 = 3758097122;
  }

  else
  {
    v14 = *(a2 + 4080);
    if ((v14 - 256) > 0xFFFFFF00)
    {
      v20 = *(a2 + 8168);
      if ((v20 - 256) > 0xFFFFFF00)
      {
        if ((v20 + v14) <= 0xFF)
        {
          v21 = 0;
          v22 = 8 * v14;
          do
          {
            if (!*(a2 + v21))
            {
              v15 = 3758097090;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                ANE::ANERequestReceiver::ProgramProcessRequest();
              }

              goto LABEL_13;
            }

            v21 += 8;
          }

          while (v22 != v21);
          if (v20)
          {
            v23 = (a2 + 4088);
            while (*v23)
            {
              ++v23;
              if (!--v20)
              {
                goto LABEL_30;
              }
            }

            v15 = 3758097090;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ANE::ANERequestReceiver::ProgramProcessRequest();
            }
          }

          else
          {
LABEL_30:
            v24 = *(a2 + 0x2000);
            if (v24)
            {
              v25 = (a2 + 8176);
              while (*v25)
              {
                ++v25;
                if (!--v24)
                {
                  goto LABEL_34;
                }
              }

              v15 = 3758097090;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                ANE::ANERequestReceiver::ProgramProcessRequest();
              }
            }

            else
            {
LABEL_34:
              v26 = *(a2 + 8200);
              if (v26)
              {
                CVPixelBufferRetain(v26);
                IOSurface = CVPixelBufferGetIOSurface(*(a2 + 8200));
                LODWORD(v26) = IOSurfaceGetID(IOSurface);
              }

              v77[1] = v26;
              v28 = *(a2 + 8216);
              if (v28)
              {
                CFRetain(v28);
              }

              v29 = *(a2 + 8208);
              if (v29)
              {
                CFRetain(v29);
                LODWORD(v29) = IOSurfaceGetID(*(a2 + 8208));
              }

              v81 = v29;
              LODWORD(v30) = *(a2 + 4080);
              if (v30)
              {
                v31 = 0;
                v32 = (a2 + 2040);
                v33 = a2;
                do
                {
                  CFRetain(*v33);
                  ID = IOSurfaceGetID(*v33);
                  v35 = &buf[4 * v31];
                  *(v35 + 8) = ID;
                  v74[v31] = *v32;
                  *(v35 + 331) = v32[255];
                  ++v31;
                  v30 = *(a2 + 4080);
                  ++v33;
                  ++v32;
                }

                while (v31 < v30);
              }

              v36 = *(a2 + 8168);
              if (v30 < v36 + v30)
              {
                v37 = (a2 + 4088);
                v38 = (a2 + 6128);
                v39 = v30;
                do
                {
                  CFRetain(*v37);
                  v40 = IOSurfaceGetID(*v37);
                  v30 = &buf[4 * v39];
                  *(v30 + 8) = v40;
                  v74[v39] = *v38;
                  *(v30 + 331) = v38[255];
                  ++v39;
                  LODWORD(v30) = *(a2 + 4080);
                  v36 = *(a2 + 8168);
                  ++v37;
                  ++v38;
                }

                while (v39 < (v36 + v30));
              }

              LODWORD(v41) = *(a2 + 0x2000);
              if (v41)
              {
                v42 = 0;
                v43 = a2 + 8176;
                do
                {
                  CFRetain(*(v43 + 8 * v42));
                  v77[v42] = IOSurfaceGetID(*(v43 + 8 * v42));
                  ++v42;
                  v41 = *(a2 + 0x2000);
                }

                while (v42 < v41);
                LODWORD(v30) = *(a2 + 4080);
                v36 = *(a2 + 8168);
              }

              v80 = *(a2 + 8401);
              v75 = v36;
              v76 = v41;
              v44 = *(a2 + 8232);
              *&buf[24] = *(a2 + 8240);
              v73 = v30;
              v45 = *(a2 + 8256);
              *buf = v44;
              *&buf[8] = v45;
              *&buf[16] = *(a2 + 8244);
              LODWORD(v45) = *(a1 + 16);
              v78 = v45 == 0;
              v82 = a3;
              v83 = v45;
              if (a3 && (v46 = *a3, v46))
              {
                v47 = 0;
                v48 = (a3 + 3);
                do
                {
                  v49 = *v48;
                  v48 += 12;
                  v47 |= v49 == 2;
                  --v46;
                }

                while (v46);
              }

              else
              {
                v47 = 0;
              }

              if (a4)
              {
                ++*(a1 + 56);
                pthread_mutex_unlock((a1 + 112));
                v50 = ANE::ANEServicesDevice::ANE_ProgramSendRequest(*(a1 + 352), buf, *(a1 + 336), 1u, v66);
                v15 = v50;
                if (!v50)
                {
                  ANE::ANERequestReceiver::syncFrameDone(a1, a2, v66);
                }

                ANE::ANERequestReceiver::releaseRequestBuffers(v50, a2);
                ANE::ANERequestReceiverRequest::~ANERequestReceiverRequest(a2);
                MEMORY[0x1C68DA430]();
                pthread_mutex_lock((a1 + 112));
                v51 = *(a1 + 56) - 1;
                *(a1 + 56) = v51;
                if (!v51)
                {
                  pthread_cond_signal((a1 + 64));
                }
              }

              else
              {
                v65 = a2;
                v79 = *(a2 + 8400);
                pthread_mutex_lock((a1 + 176));
                std::deque<ANE::ANERequestReceiverRequest *>::push_back((a1 + 360), &v65);
                pthread_mutex_unlock((a1 + 176));
                v15 = ANE::ANEServicesDevice::ANE_ProgramSendRequest(*(a1 + 352), buf, *(a1 + 336), 0, v66);
                if (v15)
                {
                  pthread_mutex_lock((a1 + 176));
                  v52 = *(a1 + 392);
                  v53 = *(a1 + 368);
                  v54 = *(a1 + 376);
                  v55 = (v53 + 8 * (v52 >> 9));
                  if (v54 == v53)
                  {
                    v56 = 0;
                  }

                  else
                  {
                    v56 = (*v55 + 8 * (*(a1 + 392) & 0x1FFLL));
                  }

LABEL_73:
                  v57 = v56;
                  while (1)
                  {
                    if (v54 == v53)
                    {
                      v58 = 0;
                    }

                    else
                    {
                      v58 = *(v53 + (((*(a1 + 400) + v52) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 400) + v52) & 0x1FF);
                    }

                    if (v57 == v58)
                    {
                      v60 = pthread_mutex_unlock((a1 + 176));
                      ANE::ANERequestReceiver::releaseRequestBuffers(v60, a2);
                      goto LABEL_13;
                    }

                    if (*v57 && *(*v57 + 8256) == *(v65 + 1032))
                    {
                      break;
                    }

                    v57 += 8;
                    v56 += 8;
                    if ((*v55 + 4096) == v56)
                    {
                      v59 = *(v55 + 1);
                      v55 += 8;
                      v56 = v59;
                      goto LABEL_73;
                    }
                  }

                  std::deque<ANE::ANERequestReceiverRequest *>::erase((a1 + 360), v55, v56);
                  v61 = pthread_mutex_unlock((a1 + 176));
                  ANE::ANERequestReceiver::releaseRequestBuffers(v61, a2);
                  if (v65)
                  {
                    ANE::ANERequestReceiverRequest::~ANERequestReceiverRequest(v65);
                    MEMORY[0x1C68DA430]();
                  }

                  v65 = 0;
                }

                else if (v47)
                {
                  ANE::ANERequestReceiver::stopNoDataTimer(a1);
                }

                else if (*(a1 + 400) == 1)
                {
                  ANE::ANERequestReceiver::startNoDataTimer(a1);
                }
              }
            }
          }
        }

        else
        {
          v15 = 3758097090;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ANE::ANERequestReceiver::ProgramProcessRequest();
          }
        }
      }

      else
      {
        v15 = 3758097090;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANE::ANERequestReceiver::ProgramProcessRequest();
        }
      }
    }

    else
    {
      v15 = 3758097090;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANE::ANERequestReceiver::ProgramProcessRequest();
      }
    }
  }

LABEL_13:
  pthread_mutex_unlock((a1 + 112));
  v16 = +[ANEServicesLog handle];
  if (v11 - 1 < 0xFFFFFFFFFFFFFFFELL)
  {
    v17 = v16;
    if (os_signpost_enabled(v16))
    {
      *v66 = 134218496;
      v67 = v62;
      v68 = 1024;
      v69 = v63;
      v70 = 2048;
      v71 = v64;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v17, OS_SIGNPOST_INTERVAL_END, v11, "ANERequestReceiverProcessRequest", "progHandle=%llx procid=%x transid=%llx", v66, 0x1Cu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramSendRequest(uint64_t a1, _DWORD *a2, mach_port_t a3, unsigned int a4, void *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = a2[6];
  v10 = *a2;
  v20 = *(a2 + 1);
  v11 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B200C);
  v12 = +[ANEServicesLog handle];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v12))
    {
      *buf = 134218496;
      v24 = v10;
      v25 = 1024;
      v26 = v19;
      v27 = 2048;
      v28 = v20;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ANEServicesDeviceSendRequest", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }

  v21 = 40;
  input = a4;
  v14 = IOConnectCallAsyncMethod(*(a1 + 64), 2u, a3, 0, 0, &input, 1u, a2, 0x948uLL, 0, 0, a5, &v21);
  if (v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANE::ANEServicesDevice::ANE_ProgramSendRequest(v14);
  }

  v15 = +[ANEServicesLog handle];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v15))
    {
      *buf = 134218496;
      v24 = v10;
      v25 = 1024;
      v26 = v19;
      v27 = 2048;
      v28 = v20;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v16, OS_SIGNPOST_INTERVAL_END, v11, "ANEServicesDeviceSendRequest", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

void ANE::ANERequestReceiver::syncFrameDone(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = *(a2 + 8240);
  v17 = *(a2 + 8232);
  v18 = *(a2 + 8256);
  v6 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B220C);
  v7 = +[ANEServicesLog handle];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v7))
    {
      *buf = 134218752;
      v21 = v17;
      v22 = 1024;
      v23 = v19;
      v24 = 2048;
      v25 = v18;
      v26 = 2048;
      v27 = a3;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ANERequestReceiverFrameDone", "progHandle=%llx procid=%x transid=%llx reqcallBackData=%llx", buf, 0x26u);
    }
  }

  if (*(a2 + 8256) != *a3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANE::ANERequestReceiver::syncFrameDone((a2 + 8232));
  }

  if (*(a2 + 8232) != a3[1] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANE::ANERequestReceiver::syncFrameDone((a2 + 8256));
  }

  *(a2 + 8288) = a3[2];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = a3[3];
    if (v10)
    {
      *(a2 + 8224) = 0;
      *(a2 + 8264) = v10 | 0x1000;
      v9(*(a1 + 24), a2);
    }

    *(a2 + 8264) = 0;
    if (debugFwStatsData == 1)
    {
      v11 = *(a2 + 8200);
      if (v11)
      {
        if ((*(a2 + 8196) & 0xB) != 0)
        {
          CVPixelBufferLockBaseAddress(v11, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(*(a2 + 8200));
          ANE::dumpFwStatsData(BaseAddress);
          CVPixelBufferUnlockBaseAddress(*(a2 + 8200), 0);
        }
      }
    }

    if (a3[4] == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = -536870165;
    }

    *(a2 + 8224) = v13;
    (*(a1 + 32))(*(a1 + 24), a2);
  }

  v14 = +[ANEServicesLog handle];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v14))
    {
      *buf = 134218752;
      v21 = v17;
      v22 = 1024;
      v23 = v19;
      v24 = 2048;
      v25 = v18;
      v26 = 2048;
      v27 = a3;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v15, OS_SIGNPOST_INTERVAL_END, v6, "ANERequestReceiverFrameDone", "progHandle=%llx procid=%x transid=%llx reqCb->programHandle=0x%llx", buf, 0x26u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void ANEServicesFrameProcDirect(void *a1, ANE::ANERequestReceiverRequest *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1035);
  v4 = *(*(a2 + 1034) + 16);
  v5 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B241C);
  v6 = +[ANEServicesLog handle];
  v47 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      v8 = *(a2 + 1029);
      v9 = *(a2 + 2060);
      v10 = *(a2 + 1032);
      *buf = 134218496;
      *v52 = v8;
      *&v52[8] = 1024;
      *&v52[10] = v9;
      *&v52[14] = 2048;
      *&v52[16] = v10;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ServicesFrameProcDirect", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }

  v48 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2434);
  if (*(a2 + 1033))
  {
    v11 = *(a2 + 2056);
    if (v11 > -536870185)
    {
      if (v11 > -536870166)
      {
        if (v11 <= -536870163)
        {
          if (v11 == -536870165)
          {
            v11 = 21;
            goto LABEL_71;
          }

          if (v11 == -536870163)
          {
            v11 = 27;
            goto LABEL_71;
          }
        }

        else
        {
          switch(v11)
          {
            case -536870162:
              v11 = 28;
              goto LABEL_71;
            case -536870160:
              v11 = 4;
              goto LABEL_71;
            case 0:
LABEL_71:
              LODWORD(v50) = *(a2 + 1033);
              if (v3)
              {
                *buf = 19;
                *v52 = v11;
                *&v52[4] = &v50;
                *&v52[12] = 0u;
                v53 = 0u;
                v54 = 0u;
                (*(v3 + 16))(v3, buf);
              }

              v25 = +[ANEServicesLog handle];
              if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v26 = v25;
                if (os_signpost_enabled(v25))
                {
                  v27 = *(a2 + 1029);
                  v28 = *(a2 + 2060);
                  v29 = *(a2 + 1032);
                  *buf = 134218496;
                  *v52 = v27;
                  *&v52[8] = 1024;
                  *&v52[10] = v28;
                  *&v52[14] = 2048;
                  *&v52[16] = v29;
                  _os_signpost_emit_with_name_impl(&dword_1C0446000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v48, "ServicesClientCallback", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
                }
              }

              goto LABEL_138;
          }
        }
      }

      else if (v11 <= -536870175)
      {
        if (v11 == -536870184)
        {
          v11 = 22;
          goto LABEL_71;
        }

        if (v11 == -536870176)
        {
          v11 = 26;
          goto LABEL_71;
        }
      }

      else
      {
        switch(v11)
        {
          case -536870174:
            v11 = 23;
            goto LABEL_71;
          case -536870173:
            v11 = 10;
            goto LABEL_71;
          case -536870169:
            v11 = 29;
            goto LABEL_71;
        }
      }
    }

    else if (v11 > -536870204)
    {
      if (v11 <= -536870192)
      {
        if (v11 == -536870203)
        {
          v11 = 30;
          goto LABEL_71;
        }

        if (v11 == -536870201)
        {
          v11 = 24;
          goto LABEL_71;
        }
      }

      else
      {
        switch(v11)
        {
          case -536870191:
            v11 = 19;
            goto LABEL_71;
          case -536870190:
            v11 = 32;
            goto LABEL_71;
          case -536870186:
            v11 = 15;
            goto LABEL_71;
        }
      }
    }

    else if (v11 <= -536870211)
    {
      if (v11 == -536870911)
      {
        v11 = 31;
        goto LABEL_71;
      }

      if (v11 == -536870211)
      {
        v11 = 1;
        goto LABEL_71;
      }
    }

    else
    {
      switch(v11)
      {
        case -536870210:
          v11 = 5;
          goto LABEL_71;
        case -536870207:
          v11 = 20;
          goto LABEL_71;
        case -536870206:
          v11 = 2;
          goto LABEL_71;
      }
    }

    v11 = 18;
    goto LABEL_71;
  }

  v50 = 0;
  if (!*(a2 + 8196))
  {
    v21 = v5;
    goto LABEL_76;
  }

  v12 = *(a2 + 1025);
  if (!v12)
  {
    v21 = v5;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_76;
    }

    *buf = 136315138;
    *v52 = "ANEServicesFrameProcDirect";
    v22 = MEMORY[0x1E69E9C10];
    v23 = "ERROR %s: Stats CV Pixel Buffer is not allocated\n";
    v24 = 12;
    goto LABEL_56;
  }

  CVPixelBufferLockBaseAddress(v12, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(*(a2 + 1025));
  if (!*(BaseAddress + 7))
  {
    goto LABEL_53;
  }

  v14 = (BaseAddress + 16);
  v15 = *BaseAddress;
  if (v15 == 513 || v15 == 257)
  {
    v16 = 0;
    v17 = 4;
    if (v15 == 513)
    {
      v17 = 2;
    }

    v18 = &BaseAddress[v17];
    v19 = *(BaseAddress + 7);
    do
    {
      v20 = *v14;
      v14 += 2;
      v16 += *(v18 + v20);
      --v19;
    }

    while (v19);
LABEL_53:
    operator new();
  }

  v21 = v5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v52 = "ANEServicesFrameProcDirect";
    *&v52[8] = 1024;
    *&v52[10] = v15;
    v22 = MEMORY[0x1E69E9C10];
    v23 = "ERROR %s: Invalid stats version %u\n";
    v24 = 18;
LABEL_56:
    _os_log_impl(&dword_1C0446000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
  }

LABEL_76:
  v30 = *(a2 + 2056);
  if (v30 == -536870186)
  {
    v31 = 17;
  }

  else
  {
    v31 = 8;
  }

  v49 = *(a2 + 8288);
  if (v30 <= -536870185)
  {
    if (v30 > -536870204)
    {
      if (v30 <= -536870192)
      {
        if (v30 == -536870203)
        {
          v32 = 30;
          goto LABEL_127;
        }

        if (v30 == -536870201)
        {
          v32 = 24;
          goto LABEL_127;
        }
      }

      else
      {
        switch(v30)
        {
          case -536870191:
            v32 = 19;
            goto LABEL_127;
          case -536870190:
            v32 = 32;
            goto LABEL_127;
          case -536870186:
            v32 = 15;
            goto LABEL_127;
        }
      }
    }

    else if (v30 <= -536870211)
    {
      if (v30 == -536870911)
      {
        v32 = 31;
        goto LABEL_127;
      }

      if (v30 == -536870211)
      {
        v32 = 1;
        goto LABEL_127;
      }
    }

    else
    {
      switch(v30)
      {
        case -536870210:
          v32 = 5;
          goto LABEL_127;
        case -536870207:
          v32 = 20;
          goto LABEL_127;
        case -536870206:
          v32 = 2;
          goto LABEL_127;
      }
    }

    goto LABEL_126;
  }

  if (v30 <= -536870166)
  {
    if (v30 <= -536870175)
    {
      if (v30 == -536870184)
      {
        v32 = 22;
        goto LABEL_127;
      }

      if (v30 == -536870176)
      {
        v32 = 26;
        goto LABEL_127;
      }
    }

    else
    {
      switch(v30)
      {
        case -536870174:
          v32 = 23;
          goto LABEL_127;
        case -536870173:
          v32 = 10;
          goto LABEL_127;
        case -536870169:
          v32 = 29;
          goto LABEL_127;
      }
    }

    goto LABEL_126;
  }

  if (v30 <= -536870163)
  {
    if (v30 == -536870165)
    {
      v32 = 21;
      goto LABEL_127;
    }

    if (v30 == -536870163)
    {
      v32 = 27;
      goto LABEL_127;
    }

LABEL_126:
    v32 = 18;
LABEL_127:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a2 + 1029);
      v34 = *(a2 + 1032);
      *buf = 136316162;
      *v52 = "void ANEServicesFrameProcDirect(void *, ANERequestReceiverRequest *)";
      *&v52[8] = 2048;
      *&v52[10] = v33;
      *&v52[18] = 2048;
      *&v52[20] = v34;
      LOWORD(v53) = 1024;
      *(&v53 + 2) = v31;
      WORD3(v53) = 1024;
      DWORD2(v53) = v32;
      _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ANEInferface: ANEServicesIn:%s programHanlde:0x%llx, transactionId:%llx, statusType: 0x%x, status: 0x%x\n", buf, 0x2Cu);
    }

    goto LABEL_129;
  }

  if (v30 == -536870162)
  {
    v32 = 28;
    goto LABEL_127;
  }

  if (v30 == -536870160)
  {
    v32 = 4;
    goto LABEL_127;
  }

  if (v30)
  {
    goto LABEL_126;
  }

  v32 = 0;
LABEL_129:
  if (v3)
  {
    *buf = v31;
    *v52 = v32;
    *&v52[4] = &v49;
    *&v52[12] = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    (*(v3 + 16))(v3, buf);
  }

  v35 = +[ANEServicesLog handle];
  v5 = v21;
  if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v36 = v35;
    if (os_signpost_enabled(v35))
    {
      v37 = *(a2 + 1029);
      v38 = *(a2 + 2060);
      v39 = *(a2 + 1032);
      *buf = 134218496;
      *v52 = v37;
      *&v52[8] = 1024;
      *&v52[10] = v38;
      *&v52[14] = 2048;
      *&v52[16] = v39;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v36, OS_SIGNPOST_INTERVAL_END, v48, "ServicesClientCallback", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }

  if (v50)
  {
    CVPixelBufferUnlockBaseAddress(v50, 0);
    CVPixelBufferRelease(v50);
  }

  v40 = *(a2 + 1025);
  if (v40)
  {
    CVPixelBufferUnlockBaseAddress(v40, 0);
    CVPixelBufferRelease(*(a2 + 1025));
  }

LABEL_138:
  v41 = +[ANEServicesLog handle];
  if (v47 < 0xFFFFFFFFFFFFFFFELL)
  {
    v42 = v41;
    if (os_signpost_enabled(v41))
    {
      v43 = *(a2 + 1029);
      v44 = *(a2 + 2060);
      v45 = *(a2 + 1032);
      *buf = 134218496;
      *v52 = v43;
      *&v52[8] = 1024;
      *&v52[10] = v44;
      *&v52[14] = 2048;
      *&v52[16] = v45;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v42, OS_SIGNPOST_INTERVAL_END, v5, "ServicesFrameProcDirect", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

void ANE::ANERequestReceiver::releaseRequestBuffers(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 4080);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(a2 + 8 * i);
        if (v5)
        {
          CFRelease(v5);
          v3 = *(a2 + 4080);
        }
      }
    }

    *(a2 + 4080) = 0;
    v6 = *(a2 + 8168);
    if (v6)
    {
      for (j = 0; j < v6; ++j)
      {
        v8 = *(a2 + 4088 + 8 * j);
        if (v8)
        {
          CFRelease(v8);
          v6 = *(a2 + 8168);
        }
      }
    }

    *(a2 + 8168) = 0;
    v9 = *(a2 + 0x2000);
    if (v9)
    {
      for (k = 0; k < v9; ++k)
      {
        v11 = *(a2 + 8176 + 8 * k);
        if (v11)
        {
          CFRelease(v11);
          v9 = *(a2 + 0x2000);
        }
      }
    }

    *(a2 + 0x2000) = 0;
    v12 = *(a2 + 8200);
    if (v12)
    {
      CVPixelBufferRelease(v12);
    }

    v13 = *(a2 + 8208);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(a2 + 8216);
    if (v14)
    {

      CFRelease(v14);
    }
  }
}

void ANE::ANERequestReceiverRequest::~ANERequestReceiverRequest(ANE::ANERequestReceiverRequest *this)
{
  v1 = *(this + 1035);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t ANE::CreateANEDeviceController(ANE *this, ANE::ANEDeviceController **a2, int (*a3)(ANE::ANEDeviceController *, void *, void *), void *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55 = &v54;
  v56 = 0x5012000000;
  v57 = __Block_byref_object_copy_;
  v58 = __Block_byref_object_dispose_;
  v59 = &unk_1C04780E7;
  v53 = 0;
  ANE::ANEThreadReadySyncer::ANEThreadReadySyncer(&v61);
  v7 = v55;
  v55[6] = 0;
  v7[7] = a2;
  v7[8] = a3;
  v7[9] = &v61;
  if (ANE::gUseSharedServiceThread == 1)
  {
    pthread_mutex_lock(&ANE::gSharedServiceThreadMutex);
    v8 = ANE::pSharedServiceThread;
    if (ANE::pSharedServiceThread)
    {
      goto LABEL_3;
    }

    ANE::pSharedServiceThread = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
    if (!ANE::pSharedServiceThread)
    {
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v13)
      {
        ANE::CreateANEDeviceController(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      goto LABEL_41;
    }

    ANE::ANEThreadReadySyncer::ANEThreadReadySyncer(&v65);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "creating shared service thread\n", buf, 2u);
    }

    v11 = pthread_attr_init(&v64);
    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = strerror(v11);
        ANE::CreateANEDeviceController(v12, buf);
      }

      goto LABEL_37;
    }

    v60 = 58;
    v21 = pthread_attr_setschedparam(&v64, &v60);
    if (v21)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = strerror(v21);
        ANE::CreateANEDeviceController(v22, buf);
      }
    }

    else
    {
      v24 = pthread_attr_setdetachstate(&v64, 1);
      if (!v24)
      {
        v50 = pthread_create((ANE::pSharedServiceThread + 8), &v64, ANE::SharedServiceThreadStart, &v65);
        if (v50)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v51 = strerror(v50);
            ANE::CreateANEDeviceController(v51, buf);
          }

          v26 = 0;
          *(ANE::pSharedServiceThread + 8) = 0;
        }

        else
        {
          v26 = 1;
        }

LABEL_31:
        pthread_attr_destroy(&v64);
        if (v26)
        {
          ANE::ANEThreadReadySyncer::wait(&v65);
          if (*(ANE::pSharedServiceThread + 16))
          {
            ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(&v65);
            v8 = ANE::pSharedServiceThread;
            if (*(ANE::pSharedServiceThread + 16))
            {
LABEL_3:
              v9 = *v8 + 1;
              *v8 = v9;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                ANE::CreateANEDeviceController(v9);
              }

LABEL_41:
              pthread_mutex_unlock(&ANE::gSharedServiceThreadMutex);
              if (ANE::pSharedServiceThread)
              {
                v35 = *(ANE::pSharedServiceThread + 16);
                if (v35)
                {
                  v36 = *MEMORY[0x1E695E8E0];
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = ___ZN3ANE25CreateANEDeviceControllerEPPNS_19ANEDeviceControllerEPFiS1_PvS3_ES3__block_invoke;
                  block[3] = &unk_1E8117348;
                  block[4] = &v54;
                  CFRunLoopPerformBlock(v35, v36, block);
                  CFRunLoopWakeUp(*(ANE::pSharedServiceThread + 16));
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v65.__sig) = 0;
                    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "attaching to shared service thread\n", &v65, 2u);
                  }

                  goto LABEL_45;
                }
              }

              v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              if (v38)
              {
                ANE::CreateANEDeviceController(v38, v39, v40, v41, v42, v43, v44, v45);
              }

              goto LABEL_48;
            }

LABEL_38:
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (v27)
            {
              ANE::CreateANEDeviceController(v27, v28, v29, v30, v31, v32, v33, v34);
            }

            free(ANE::pSharedServiceThread);
            ANE::pSharedServiceThread = 0;
            goto LABEL_41;
          }

          pthread_join(*(ANE::pSharedServiceThread + 8), 0);
          *(ANE::pSharedServiceThread + 8) = 0;
        }

LABEL_37:
        ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(&v65);
        goto LABEL_38;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = strerror(v24);
        ANE::CreateANEDeviceController(v25, buf);
      }
    }

    v26 = 0;
    goto LABEL_31;
  }

  v10 = pthread_attr_init(&v62);
  if (v10)
  {
    fprintf(*MEMORY[0x1E69E9848], "pthread_attr_init() failed. Error: %d\n", v10);
    goto LABEL_48;
  }

  v65.__sig = 58;
  if (pthread_attr_setschedparam(&v62, &v65))
  {
    fprintf(*MEMORY[0x1E69E9848], "pthread_attr_setschedparam() failed. Error: %d\n");
LABEL_24:
    v23 = 0;
    goto LABEL_25;
  }

  if (pthread_attr_setdetachstate(&v62, 1))
  {
    fprintf(*MEMORY[0x1E69E9848], "pthread_attr_setdetachstate() failed. Error: %d\n");
    goto LABEL_24;
  }

  if (pthread_create(&v53, &v62, ANE::ANEServicesThreadStart, v55 + 6))
  {
    fprintf(*MEMORY[0x1E69E9848], "pthread_create() failed. Error: %d\n");
    goto LABEL_24;
  }

  v23 = 1;
LABEL_25:
  pthread_attr_destroy(&v62);
  if (v23)
  {
LABEL_45:
    ANE::ANEThreadReadySyncer::wait(&v61);
    v37 = 0;
    goto LABEL_49;
  }

LABEL_48:
  v37 = 1;
LABEL_49:
  v46 = v55[6];
  *this = v46;
  if (!v46)
  {
    v37 = 1;
  }

  if (v37)
  {
    v47 = 3758097084;
  }

  else
  {
    v47 = 0;
  }

  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(&v61);
  _Block_object_dispose(&v54, 8);
  v48 = *MEMORY[0x1E69E9840];
  return v47;
}

void sub_1C044C78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer((v27 - 176));
  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(&a27);
  _Block_object_dispose(&a16, 8);
  _Unwind_Resume(a1);
}

ANE::ANEThreadReadySyncer *ANE::ANEThreadReadySyncer::ANEThreadReadySyncer(ANE::ANEThreadReadySyncer *this)
{
  pthread_mutex_init(this, 0);
  pthread_cond_init((this + 64), 0);
  pthread_mutex_lock(this);
  return this;
}

uint64_t ANE::DestroyANERequestReceiver(ANE *this, ANE::ANERequestReceiver *a2)
{
  if (this)
  {
    ANE::ANERequestReceiver::completeAllRequests(this);
    v3 = *(this + 1);
    ANE::ANERequestReceiver::~ANERequestReceiver(this);
    MEMORY[0x1C68DA430]();
    CFRelease(v3);
  }

  return 0;
}

uint64_t ANE::ANERequestReceiver::stopReceive(ANE::ANERequestReceiver *this)
{
  v2 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2204);
  v3 = +[ANEServicesLog handle];
  v4 = v2 - 1;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      LOWORD(buf.tv_sec) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANERequestReceiverStop", &unk_1C047597E, &buf, 2u);
    }
  }

  pthread_mutex_lock((this + 112));
  if (*this)
  {
    ANE::ANERequestReceiver::stopNoDataTimer(this);
    pthread_mutex_lock((this + 176));
    *(this + 408) = 1;
    pthread_mutex_unlock((this + 176));
    pthread_mutex_lock((this + 176));
    if (*(this + 50))
    {
      v6 = 2001;
      while (1)
      {
        usleep(0x3E8u);
        if (!--v6)
        {
          break;
        }

        pthread_mutex_unlock((this + 176));
        pthread_mutex_lock((this + 176));
        if (!*(this + 50))
        {
          goto LABEL_9;
        }
      }

      printf("ANERequestReceiver: Did not get all pending requests back from kernel. remaining: %d.\n", *(this + 50));
      v10 = *(this + 46);
      v11 = *(this + 47);
      v12 = &v10[*(this + 49) >> 9];
      if (v11 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = (*v12 + 8 * (*(this + 49) & 0x1FFLL));
      }

      while (1)
      {
        v14 = v11 - v10;
        if (v14)
        {
          v15 = *(this + 50) + *(this + 49);
          v16 = *(v10 + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v15 & 0x1FF);
        }

        else
        {
          v16 = 0;
        }

        if (v13 == v16)
        {
          break;
        }

        v17 = *v13;
        printf("ANERequestReceiver: Request not returned 0x%p\n", *v13);
        if (v17)
        {
          ANE::ANERequestReceiverRequest::~ANERequestReceiverRequest(v17);
          MEMORY[0x1C68DA430]();
        }

        if (++v13 - *v12 == 4096)
        {
          v18 = v12[1];
          ++v12;
          v13 = v18;
        }

        v10 = *(this + 46);
        v11 = *(this + 47);
      }

      *(this + 50) = 0;
      v19 = v14 >> 3;
      if (v19 >= 3)
      {
        do
        {
          operator delete(*v10);
          v20 = *(this + 47);
          v10 = (*(this + 46) + 8);
          *(this + 46) = v10;
          v19 = (v20 - v10) >> 3;
        }

        while (v19 > 2);
      }

      v7 = 3758097110;
      if (v19 == 1)
      {
        v21 = 256;
        goto LABEL_31;
      }

      if (v19 == 2)
      {
        v21 = 512;
LABEL_31:
        *(this + 49) = v21;
      }
    }

    else
    {
LABEL_9:
      v7 = 0;
    }

    pthread_mutex_unlock((this + 176));
    if (*(this + 14))
    {
      gettimeofday(&v25, 0);
      v22 = 1000 * v25.tv_usec + 1000000 * *(this + 4);
      buf.tv_sec = v25.tv_sec + v22 / 0x3B9ACA00uLL;
      buf.tv_nsec = v22 % 0x3B9ACA00;
      if (pthread_cond_timedwait((this + 64), (this + 112), &buf) == 60 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANE::ANERequestReceiver::stopReceive();
      }
    }

    *(this + 408) = 0;
    *this = 0;
    pthread_mutex_unlock((this + 112));
    v23 = +[ANEServicesLog handle];
    if (v4 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v23;
      if (os_signpost_enabled(v23))
      {
        LOWORD(buf.tv_sec) = 0;
        goto LABEL_39;
      }
    }

    return v7;
  }

  v7 = 3758097122;
  pthread_mutex_unlock((this + 112));
  v8 = +[ANEServicesLog handle];
  if (v4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v8))
    {
      LOWORD(buf.tv_sec) = 0;
LABEL_39:
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v9, OS_SIGNPOST_INTERVAL_END, v2, "ANERequestReceiverStop", &unk_1C047597E, &buf, 2u);
    }
  }

  return v7;
}

void ANE::ANERequestReceiver::~ANERequestReceiver(ANE::ANERequestReceiver *this)
{
  if (*(this + 44))
  {
    if (*this)
    {
      ANE::ANERequestReceiver::stopReceive(this);
    }

    if (*(this + 43))
    {
      ANE::ANERequestReceiver::removeIODispatcherFromRunLoop(this);
    }

    pthread_mutex_destroy((this + 112));
    pthread_mutex_destroy((this + 176));
    pthread_mutex_destroy(this + 4);
    v2 = *(this + 30);
    if (v2)
    {
      dispatch_release(v2);
      *(this + 30) = 0;
    }
  }

  std::deque<ANE::ANERequestReceiverRequest *>::~deque[abi:ne200100](this + 45);
}

uint64_t ANE::ANERequestReceiver::stopNoDataTimer(ANE::ANERequestReceiver *this)
{
  pthread_mutex_lock(this + 4);
  v2 = *(this + 40);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 40));
    *(this + 40) = 0;
  }

  return pthread_mutex_unlock(this + 4);
}

void ANE::ANERequestReceiver::removeIODispatcherFromRunLoop(ANE::ANERequestReceiver *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    CFRunLoopRemoveSource(*(this + 1), v2, *MEMORY[0x1E695E8E0]);
    CFRelease(*(this + 43));
    *(this + 43) = 0;
  }

  v3 = *(this + 41);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(this + 41));
    *(this + 41) = 0;
  }

  v4 = *(this + 84);
  if (v4)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v4, 1u, -1);
    *(this + 84) = 0;
  }
}

uint64_t std::deque<ANE::ANERequestReceiverRequest *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<ANE::ANERequestReceiverRequest **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<ANE::ANERequestReceiverRequest **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t ANE::ANEServicesDevice::ANEDeviceClose(ANE::ANEServicesDevice *this)
{
  pthread_mutex_lock((this + 72));
  v2 = IOConnectCallScalarMethod(*(this + 16), 1u, 0, 0, 0, 0);
  v3 = *(this + 16);
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 16) = 0;
    *this = 0;
    *(this + 1) = 0;
  }

  else
  {
    v2 = 3758097101;
  }

  pthread_mutex_unlock((this + 72));
  return v2;
}

uint64_t ANE::DestroyANEDeviceController(ANE *this, ANE::ANEDeviceController *a2)
{
  v31[15] = *MEMORY[0x1E69E9840];
  v3 = pthread_self();
  v4 = pthread_equal(v3, *(this + 9));
  v5 = v4;
  if (ANE::gUseSharedServiceThread == 1)
  {
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = ANE::pSharedServiceThread == 0;
    }

    if (v6 || !*(ANE::pSharedServiceThread + 16))
    {
      ANE::ANEDeviceController::~ANEDeviceController(this);
      MEMORY[0x1C68DA430]();
    }

    else
    {
      *buf = 0;
      v26 = buf;
      v27 = 0xA012000000;
      v28 = __Block_byref_object_copy__5;
      v29 = __Block_byref_object_dispose__6;
      v30 = &unk_1C04780E7;
      ANE::ANEThreadReadySyncer::ANEThreadReadySyncer(v31);
      v7 = *(ANE::pSharedServiceThread + 16);
      v8 = *MEMORY[0x1E695E8E0];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = ___ZN3ANE26DestroyANEDeviceControllerEPNS_19ANEDeviceControllerE_block_invoke;
      v24[3] = &unk_1E8117370;
      v24[4] = buf;
      v24[5] = this;
      CFRunLoopPerformBlock(v7, v8, v24);
      CFRunLoopWakeUp(*(ANE::pSharedServiceThread + 16));
      ANE::ANEThreadReadySyncer::wait((v26 + 48));
      _Block_object_dispose(buf, 8);
      ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(v31);
    }

    pthread_mutex_lock(&ANE::gSharedServiceThreadMutex);
    v10 = ANE::pSharedServiceThread;
    if (!ANE::pSharedServiceThread || (v11 = *ANE::pSharedServiceThread) == 0)
    {
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v14)
      {
        ANE::DestroyANEDeviceController(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      goto LABEL_21;
    }

    v12 = v11 - 1;
    *ANE::pSharedServiceThread = v11 - 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_debug_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "shared service thread release: refCount=%u\n", buf, 8u);
      v10 = ANE::pSharedServiceThread;
      if (!*ANE::pSharedServiceThread)
      {
        goto LABEL_16;
      }
    }

    else if (!v12)
    {
LABEL_16:
      CFRunLoopStop(*(v10 + 16));
      CFRelease(*(ANE::pSharedServiceThread + 16));
      v13 = pthread_self();
      if (!pthread_equal(v13, *(ANE::pSharedServiceThread + 8)))
      {
        pthread_join(*(ANE::pSharedServiceThread + 8), 0);
      }

      free(ANE::pSharedServiceThread);
      ANE::pSharedServiceThread = 0;
    }

LABEL_21:
    pthread_mutex_unlock(&ANE::gSharedServiceThreadMutex);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      ANE::DestroyANEDeviceController();
    }

    goto LABEL_23;
  }

  v9 = CFRetain(*(this + 7));
  CFRunLoopStop(v9);
  if (!v5)
  {
    *buf = 0;
    pthread_join(*(this + 9), buf);
  }

  ANE::ANEDeviceController::~ANEDeviceController(this);
  MEMORY[0x1C68DA430]();
  CFRelease(v9);
LABEL_23:
  v22 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1C044D1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer((v7 + 48));
  _Unwind_Resume(a1);
}

void ANE::ANEDeviceController::~ANEDeviceController(CFArrayRef *this)
{
  for (i = 0; i < CFArrayGetCount(*this); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*this, i);
    ANE::ANEServicesDevice::DisableDeviceMessages(ValueAtIndex);
  }

  for (j = 0; j < CFArrayGetCount(this[1]); ++j)
  {
    v5 = CFArrayGetValueAtIndex(this[1], j);
    ANE::ANEHWDevice::DisableDeviceMessages(v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    IOObjectRelease(v6);
  }

  v7 = *(this + 17);
  if (v7)
  {
    IOObjectRelease(v7);
  }

  if (*this)
  {
    CFRelease(*this);
  }

  v8 = this[1];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = this[3];
  if (v9)
  {
    v10 = this[4];
    if (v10)
    {
      CFRunLoopRemoveSource(this[7], v10, *MEMORY[0x1E695E8E0]);
      this[4] = 0;
      v9 = this[3];
    }

    IONotificationPortDestroy(v9);
  }

  v11 = this[7];
  if (v11)
  {
    CFRelease(v11);
    this[7] = 0;
  }
}

uint64_t ANE::ANEServicesDevice::DisableDeviceMessages(ANE::ANEServicesDevice *this)
{
  result = *(this + 15);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 15) = 0;
  }

  return result;
}

uint64_t ANE::ANEHWDevice::DisableDeviceMessages(ANE::ANEHWDevice *this)
{
  result = *(this + 15);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 15) = 0;
  }

  return result;
}

void ANE::ReleaseANEUnitObject(ANE *this, const __CFAllocator *a2, const void *a3)
{
  if (a2)
  {
    ANE::ANEServicesDevice::~ANEServicesDevice(a2);

    JUMPOUT(0x1C68DA430);
  }
}

void ANE::ANEServicesDevice::~ANEServicesDevice(ANE::ANEServicesDevice *this)
{
  if (*(this + 16))
  {
    ANE::ANEServicesDevice::ANEDeviceClose(this);
  }

  v2 = *(this + 15);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 15) = 0;
  }

  pthread_mutex_destroy((this + 72));
}

void ZinException::ZinException(ZinException *this, const char *a2)
{
  v2 = std::runtime_error::runtime_error(this, a2);
  v2->__vftable = &unk_1F3F83588;
  LOBYTE(v2[1].__vftable) = 0;
  LOBYTE(v2[7].__vftable) = 0;
  LOBYTE(v2[7].__imp_.__imp_) = 0;
  LOBYTE(v2[9].__vftable) = 0;
}

{
  v2 = std::runtime_error::runtime_error(this, a2);
  v2->__vftable = &unk_1F3F83588;
  LOBYTE(v2[1].__vftable) = 0;
  LOBYTE(v2[7].__vftable) = 0;
  LOBYTE(v2[7].__imp_.__imp_) = 0;
  LOBYTE(v2[9].__vftable) = 0;
}

void ZinException::SetLayerInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
    }

    else
    {
      v9 = *a2;
    }

    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *a4, *(a4 + 8));
    }

    else
    {
      v10 = *a4;
    }

    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *a5, *(a5 + 8));
    }

    else
    {
      v11 = *a5;
    }

    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    std::optional<ZinException::LayerInfo>::operator=[abi:ne200100]<ZinException::LayerInfo,void>(a1 + 16, &v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1C044D648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<ZinException::LayerInfo>::operator=[abi:ne200100]<ZinException::LayerInfo,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 47) = 0;
    *(a2 + 24) = 0;
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
    *(a2 + 71) = 0;
    *(a2 + 48) = 0;
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
    *(a2 + 95) = 0;
    *(a2 + 72) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v9 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v9;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v10 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v10;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v11 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v11;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a1 + 96) = 1;
  }

  return a1;
}

double ZinException::SetBasicBlockInfo(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 144) & 1) == 0)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      v4 = *a2;
LABEL_8:
      result = *&v4.__r_.__value_.__l.__data_;
      *(a1 + 120) = v4;
      *(a1 + 144) = 1;
      return result;
    }

    std::string::__init_copy_ctor_external(&v4, *a2, *(a2 + 8));
    if ((*(a1 + 144) & 1) == 0)
    {
      goto LABEL_8;
    }

    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    result = *&v4.__r_.__value_.__l.__data_;
    *(a1 + 120) = v4;
  }

  return result;
}

void ZinException::~ZinException(std::runtime_error *this)
{
  this->__vftable = &unk_1F3F83588;
  if (LOBYTE(this[9].__vftable) == 1 && SHIBYTE(this[8].__imp_.__imp_) < 0)
  {
    operator delete(this[7].__imp_.__imp_);
  }

  if (LOBYTE(this[7].__vftable) == 1)
  {
    if (SHIBYTE(this[6].__imp_.__imp_) < 0)
    {
      operator delete(this[5].__imp_.__imp_);
    }

    if (SHIBYTE(this[5].__vftable) < 0)
    {
      operator delete(this[4].__vftable);
    }

    if (SHIBYTE(this[3].__imp_.__imp_) < 0)
    {
      operator delete(this[2].__imp_.__imp_);
    }

    if (SHIBYTE(this[2].__vftable) < 0)
    {
      operator delete(this[1].__vftable);
    }
  }

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_1F3F83588;
  if (LOBYTE(this[9].__vftable) == 1 && SHIBYTE(this[8].__imp_.__imp_) < 0)
  {
    operator delete(this[7].__imp_.__imp_);
  }

  if (LOBYTE(this[7].__vftable) == 1)
  {
    if (SHIBYTE(this[6].__imp_.__imp_) < 0)
    {
      operator delete(this[5].__imp_.__imp_);
    }

    if (SHIBYTE(this[5].__vftable) < 0)
    {
      operator delete(this[4].__vftable);
    }

    if (SHIBYTE(this[3].__imp_.__imp_) < 0)
    {
      operator delete(this[2].__imp_.__imp_);
    }

    if (SHIBYTE(this[2].__vftable) < 0)
    {
      operator delete(this[1].__vftable);
    }
  }

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1C68DA430);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8116EE0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void ZinException::LayerInfo::~LayerInfo(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t ZinComputeProgramGetANETDThreadStateSize(const ident_command *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, _DWORD *a6)
{
  v8 = 0;
  result = ZinComputeProgramGetANETDThreadStateArgumentSize(a1, a2, a3, a4, a5, &v8);
  if (!result)
  {
    *a6 = v8 + 2136;
  }

  return result;
}

uint64_t ZinComputeProgramGetANETDThreadStateArgumentSize(const ident_command *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, unsigned int *a6)
{
  if (a3)
  {
    if (a2)
    {
      v12 = 0;
      result = ZinComputeProgramSupportsFeature(a1, "7.0.22", &v12);
      if (result)
      {
        return result;
      }

      if (!v12)
      {
        *a6 = 0;
        return result;
      }
    }

    v11 = *(a3 + 2128);

    return ZinComputeProgramGetThreadArgumentSize(v11, (a3 + 2136), a4, a5, a6);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramGetANETDThreadStateArgumentSize();
    }

    return 3;
  }
}

uint64_t ZinComputeProgramSupportsTDThreadStateArguments(const ident_command *a1, BOOL *a2)
{
  return ZinComputeProgramSupportsFeature(a1, "7.0.22", a2);
}

{
  return ZinComputeProgramSupportsFeature(a1, "7.0.22", a2);
}

uint64_t ZinComputeProgramGetThreadArgumentSize(int a1, const char *a2, unint64_t a3, unint64_t a4, unsigned int *a5)
{
  if (!a2)
  {
    return 3;
  }

  v6 = a1;
  *a5 = 8 * a1;
  if (!a1)
  {
    return 0;
  }

  v9 = a2;
  while (!ZinIsOutsideBounds(v9, 8, a3, a4))
  {
    v10 = *v9;
    if (v10 <= 0xC)
    {
      *a5 += *&asc_1C047270C[4 * v10];
    }

    v9 += *(v9 + 1) + 8;
    if (!--v6)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinComputeProgramGetThreadArgumentSize();
  }

  return 3;
}

uint64_t ZinComputeProgramGetANESegThreadStateSize(const ident_command *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, _DWORD *a6)
{
  v8 = 0;
  result = ZinComputeProgramGetANESegThreadStateArgumentSize(a1, a2, a3, a4, a5, &v8);
  if (!result)
  {
    *a6 = v8 + 2152;
  }

  return result;
}

uint64_t ZinComputeProgramGetANESegThreadStateArgumentSize(const ident_command *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, unsigned int *a6)
{
  if (a3)
  {
    if (a2)
    {
      v12 = 0;
      result = ZinComputeProgramSupportsFeature(a1, "6.0.15", &v12);
      if (result)
      {
        return result;
      }

      if (!v12)
      {
        *a6 = 0;
        return result;
      }
    }

    v11 = *(a3 + 2144);

    return ZinComputeProgramGetThreadArgumentSize(v11, (a3 + 2152), a4, a5, a6);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramGetANESegThreadStateArgumentSize();
    }

    return 3;
  }
}

uint64_t ZinComputeProgramSupportsSegThreadStateArguments(const ident_command *a1, BOOL *a2)
{
  return ZinComputeProgramSupportsFeature(a1, "6.0.15", a2);
}

{
  return ZinComputeProgramSupportsFeature(a1, "6.0.15", a2);
}

uint64_t ZinComputeProgramSupportsFeature(const ident_command *a1, const char *a2, BOOL *a3)
{
  if (!a2)
  {
    return 3;
  }

  if (a1)
  {
    v8 = 0;
    v4 = ZinComputeProgramCompareCompilerVersion(&a1[1], a2, &v8);
    result = 0;
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8 < 0;
    }

    v7 = !v6;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramSupportsFeature();
    }

    result = 0;
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t ZinComputeProgramSupportsSplitMutableKernelSection(const ident_command *a1, BOOL *a2)
{
  return ZinComputeProgramSupportsFeature(a1, "8.1.0", a2);
}

{
  return ZinComputeProgramSupportsFeature(a1, "8.1.0", a2);
}

uint64_t ZinComputeProgramSupportsSummaryPerformanceStats(const ident_command *a1, BOOL *a2)
{
  return ZinComputeProgramSupportsFeature(a1, "8.1.19", a2);
}

{
  return ZinComputeProgramSupportsFeature(a1, "8.1.19", a2);
}

uint64_t ZinComputeProgramGetAneTDPartitionScheduleInfo(const ident_command *a1, int a2, _DWORD *a3, int a4, const char *a5, int *a6, int *a7, int (*a8)[2])
{
  *a7 = -1;
  *a8 = -1;
  if (a4 != 1)
  {
    if (a4 == 4)
    {
      v12 = a3[518];
      if (v12 < 0)
      {
        v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v27)
        {
          ZinComputeProgramGetAneTDPartitionScheduleInfo(v27, v28, v29, v30, v31, v32, v33, v34);
        }
      }

      else
      {
        *a6 = v12;
        v13 = a3[522];
        if (v13 <= -2)
        {
          v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v35)
          {
            ZinComputeProgramGetAneTDPartitionScheduleInfo(v35, v36, v37, v38, v39, v40, v41, v42);
          }
        }

        else
        {
          (*a8)[0] = v13;
          v14 = a3[523];
          if (v14 <= -2)
          {
            v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (v46)
            {
              ZinComputeProgramGetAneTDPartitionScheduleInfo(v46, v47, v48, v49, v50, v51, v52, v53);
            }
          }

          else
          {
            (*a8)[1] = v14;
            v15 = a3[521];
            if ((v15 & 0x80000000) == 0)
            {
              v16 = 0;
              *a7 = v15;
              return v16;
            }

            v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (v71)
            {
              ZinComputeProgramGetAneTDPartitionScheduleInfo(v71, v72, v73, v74, v75, v76, v77, v78);
            }
          }
        }
      }

      return 3;
    }

    return 0;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v88 = 0;
  v18 = ZinComputeProgramSupportsFeature(a1, "7.0.22", &v88);
  if (v18)
  {
    v16 = v18;
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v19)
    {
      ZinComputeProgramGetAneTDPartitionScheduleInfo(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    return v16;
  }

  if (v88)
  {
LABEL_17:
    v43 = a3[532];
    if (v43)
    {
      v44 = a3 + 534;
      while (1)
      {
        v45 = (v44 + 2);
        if (a5 && v45 >= a5)
        {
          v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v54)
          {
LABEL_36:
            ZinComputeProgramGetAneTDPartitionScheduleInfo(v54, v55, v56, v57, v58, v59, v60, v61);
          }

          return 4;
        }

        if (a5 && v45 + v44[1] >= a5)
        {
          v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v54)
          {
            goto LABEL_36;
          }

          return 4;
        }

        if (*v44 == 11)
        {
          break;
        }

        v44 = (v44 + v44[1] + 8);
        if (!--v43)
        {
          return 0;
        }
      }

      *a6 = v44[2];
      v62 = v44[4];
      if ((v62 & 0x80000000) == 0)
      {
        v16 = 0;
        *a7 = v62;
        (*a8)[0] = v44[3];
        (*a8)[1] = -1;
        return v16;
      }

      v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v79)
      {
        ZinComputeProgramGetAneTDPartitionScheduleInfo(v79, v80, v81, v82, v83, v84, v85, v86);
      }

      return 3;
    }

    return 0;
  }

  v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v63)
  {
    ZinComputeProgramGetAneTDPartitionScheduleInfo(v63, v64, v65, v66, v67, v68, v69, v70);
  }

  return 2;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

char *ZinComputeProgramGetProcedureNameFromThread(const ident_command *a1, _DWORD *a2, unint64_t a3, unint64_t a4)
{
  v21 = a3;
  v19[0] = &v21;
  v19[1] = &v20;
  v20 = a4;
  if (ZinIsOutsideBounds(a2, 16, a3, a4))
  {
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return 0;
    }

LABEL_3:
    ZinComputeProgramGetProcedureNameFromThread_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    return 0;
  }

  result = 0;
  v15 = a2[2];
  if (v15 <= 3)
  {
    if (v15 == 1)
    {
      if (ZinIsOutsideBounds((a2 + 4), 2136, v21, v20))
      {
        v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          return 0;
        }

        goto LABEL_3;
      }

      v16 = a2[527];
    }

    else
    {
      if (v15 != 3)
      {
        return result;
      }

      if (ZinIsOutsideBounds((a2 + 4), 3368, v21, v20))
      {
        v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          return 0;
        }

        goto LABEL_3;
      }

      v16 = a2[6];
    }
  }

  else
  {
    switch(v15)
    {
      case 4:
        if (ZinIsOutsideBounds((a2 + 4), 2152, v21, v20))
        {
          v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!v6)
          {
            return 0;
          }

          goto LABEL_3;
        }

        v18 = 0;
        if (ZinComputeProgramGetANESegThreadStateSize(a1, a1 != 0, (a2 + 4), v21, v20, &v18) || !ZinComputeProgramGetProcedureNameFromThread::$_0::operator()(v19, (a2 + 4), v18))
        {
          return 0;
        }

        v16 = a2[530];
        break;
      case 5:
        if (ZinIsOutsideBounds((a2 + 4), 32, v21, v20))
        {
          v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!v6)
          {
            return 0;
          }

          goto LABEL_3;
        }

        v18 = 0;
        if (ZinComputeProgramGetANEAotMetadataThreadStateSize(&v18) || !ZinComputeProgramGetProcedureNameFromThread::$_0::operator()(v19, (a2 + 4), v18))
        {
          return 0;
        }

        v16 = a2[10];
        break;
      case 6:
        if (ZinIsOutsideBounds((a2 + 4), 280, v21, v20))
        {
          v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!v6)
          {
            return 0;
          }

          goto LABEL_3;
        }

        v16 = a2[5];
        break;
      default:
        return result;
    }
  }

  if (v16)
  {
    v17 = a2 + v16;
  }

  else
  {
    v17 = &unk_1C0472CA1;
  }

  if (!v17)
  {
    return 0;
  }

  result = &unk_1C0472CA1;
  if (v17 != &unk_1C0472CA1)
  {
    if (ZinIsStringOutsideBounds(v17, v21, v20))
    {
      return 0;
    }

    else
    {
      return v17;
    }
  }

  return result;
}

uint64_t ZinComputeProgramGetProcedureNameFromThread::$_0::operator()(unint64_t **a1, unint64_t a2, uint64_t a3)
{
  IsOutsideBounds = ZinIsOutsideBounds(a2, a3, **a1, *a1[1]);
  if (IsOutsideBounds)
  {
    v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      ZinComputeProgramGetProcedureNameFromThread_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return IsOutsideBounds ^ 1u;
}

uint64_t ZinComputeProgramFindSectionByIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (a1 + 8);
    for (i = 24 * a2; i; i -= 24)
    {
      v7 = *(*(v5 - 1) + 64);
      v8 = __CFADD__(v3, v7);
      v9 = v3 + v7;
      if (v8)
      {
        break;
      }

      if (v9 > v4)
      {
        return *v5 + 40 * (v4 - v3);
      }

      v5 += 3;
      v3 = v9;
    }
  }

  return 0;
}

uint64_t ZinComputeProgramFindSectionByIndexSpan(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = 0;
    v4 = a2 - 1;
    v5 = (*a1 + 8);
    for (i = 24 * v2; i; i -= 24)
    {
      v7 = *(*(v5 - 1) + 64);
      v8 = __CFADD__(v3, v7);
      v9 = v3 + v7;
      if (v8)
      {
        break;
      }

      if (v9 > v4)
      {
        return *v5 + 40 * (v4 - v3);
      }

      v5 += 3;
      v3 = v9;
    }
  }

  return 0;
}

uint64_t ZinComputeProgramGetMutableKernelSectionForProcedure(uint64_t a1, unsigned int a2, void *a3)
{
  printf("%s: Fetching mutable kernel section for procid %d\n", "ZinComputeProgramStatus ZinComputeProgramGetMutableKernelSectionForProcedure(const ZinComputeProgram *, uint32_t, ZinComputeProgramSection **)", a2);
  if (*(a1 + 120) <= a2)
  {
    printf("%s: invalid procid %d\n");
    return 3;
  }

  v6 = *(a1 + 128) + 80 * a2;
  *a3 = 0;
  v7 = *(v6 + 24);
  if (!v7)
  {
LABEL_26:
    printf("%s: did not find mutable kernel section\n");
    return 3;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = -1;
  do
  {
    v13 = *(*(v6 + 32) + 8 * v10);
    v14 = *(*v13 + 8);
    if (v14 == 4 || v14 == 1)
    {
      if (v9)
      {
        if (v12 == -1)
        {
          printf("%s: internal error, invalid barid\n");
          return 3;
        }

        v16 = *(v13 + 8 * v12 + 16);
        if (!v16 || (v17 = *v16) == 0 || (*(v17 + 64) & 0xFE) != 0x2A)
        {
          printf("%s: multiple ANE ops with different mutable kernel section bars\n", "ZinComputeProgramStatus ZinComputeProgramGetMutableKernelSectionForProcedure(const ZinComputeProgram *, uint32_t, ZinComputeProgramSection **)");
          *a3 = 0;
          return 3;
        }
      }

      else
      {
        v18 = 0;
        v19 = v13 + 16;
        while (1)
        {
          v9 = *(v19 + 8 * v18);
          if (v9)
          {
            if (*v9 && (*(*v9 + 64) & 0xFE) == 0x2A)
            {
              break;
            }
          }

          if (++v18 == 256)
          {
            v9 = 0;
            goto LABEL_22;
          }
        }

        *a3 = v9;
        v8 = v9;
        v12 = v18;
      }
    }

LABEL_22:
    v10 = ++v11;
  }

  while (v7 > v11);
  if (!v8)
  {
    goto LABEL_26;
  }

  return 0;
}

uint64_t ZinComputeProgramFindFvmlib(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return ZinComputeProgramFindFvmlibSpan(v4, a3);
}

uint64_t ZinComputeProgramFindFvmlibSpan(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      ZinComputeProgramFindFvmlibSpan_cold_3(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  v4 = a1[1];
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramFindFvmlibSpan_cold_2();
    }

    return 0;
  }

  if (!a2)
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      ZinComputeProgramFindFvmlibSpan_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    return 0;
  }

  v5 = 24 * v4;
  while (*(result + 16) != a2)
  {
    result += 24;
    v5 -= 24;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ZinComputeProgramGetInitSection(uint64_t a1, uint64_t **a2)
{
  if (!a1 || !a2)
  {
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      ZinComputeProgramGetInitSection_cold_3(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    return 3;
  }

  *a2 = 0;
  v2 = *(a1 + 176);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = *v2;
    v5 = &v4[3 * v3];
    while (1)
    {
      v6 = *(*v4 + 64);
      if (v6)
      {
        break;
      }

LABEL_11:
      result = 0;
      v4 += 3;
      if (v4 == v5)
      {
        return result;
      }
    }

    v7 = v4[1];
    v8 = 40 * v6;
    while (1)
    {
      v9 = *v7;
      if (!*v7)
      {
        break;
      }

      if (*(v9 + 32) < *(*v4 + 24))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinComputeProgramGetInitSection_cold_1();
        }

        return 3;
      }

      if (*(v9 + 64) == 44)
      {
        result = 0;
        *a2 = v7;
        return result;
      }

      v7 += 5;
      v8 -= 40;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramGetInitSection_cold_2();
    }

    return 3;
  }

  return 0;
}

uint64_t ZinComputeProgramMakeInitInfo(uint64_t a1, void *a2)
{
  *a2 = 0;
  if (a1)
  {
    v41 = 0;
    if (ZinComputeProgramGetInitSection(a1, &v41) || !v41)
    {
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v17)
      {
        ZinComputeProgramMakeInitInfo_cold_3(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040A500212DuLL);
      if (v4)
      {
        v5 = v4;
        *v4 = *(a1 + 120);
        v6 = *(*v41 + 40);
        v5[2] = v6;
        v7 = malloc_type_calloc(v6, 1uLL, 0x100004077774924uLL);
        v5[1] = v7;
        if (v7)
        {
          memcpy(v7, v41[3], *(*v41 + 40));
          result = 0;
          *a2 = v5;
          return result;
        }

        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v33)
        {
          ZinComputeProgramMakeInitInfo_cold_1(v33, v34, v35, v36, v37, v38, v39, v40);
        }

        free(v5);
      }

      else
      {
        v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v25)
        {
          ZinComputeProgramMakeInitInfo_cold_1(v25, v26, v27, v28, v29, v30, v31, v32);
        }
      }
    }

    return 5;
  }

  else
  {
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      ZinComputeProgramMakeInitInfo_cold_4(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return 3;
  }
}

void ZinComputeProgramDestroyInitInfo(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }

  else
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      ZinComputeProgramDestroyInitInfo_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

uint64_t ZinComputeProgramCompareCompilerVersion(const char *a1, const char *a2, int *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3)
  {
    v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      ZinComputeProgramCompareCompilerVersion_cold_3(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    goto LABEL_16;
  }

  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  if (sscanf(a1, "ANEC v%d\nzin_ane_compiler v%d.%d.%d", &v33, &v36, &v36 + 4, &v37) != 4)
  {
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      ZinComputeProgramCompareCompilerVersion_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    goto LABEL_16;
  }

  if (sscanf(a2, "%d.%d.%d", &v34, &v34 + 4, &v35) != 3)
  {
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v23)
    {
      ZinComputeProgramCompareCompilerVersion_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
    }

LABEL_16:
    result = 3;
    goto LABEL_17;
  }

  v5 = 0;
  while (*(&v36 + v5) == *(&v34 + v5))
  {
    v5 += 4;
    if (v5 == 12)
    {
      result = 0;
      *a3 = 0;
      goto LABEL_17;
    }
  }

  result = 0;
  if (*(&v36 + v5) <= *(&v34 + v5))
  {
    v32 = -1;
  }

  else
  {
    v32 = 1;
  }

  *a3 = v32;
LABEL_17:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ZinComputeProgramCompareLinkerVersion(const char *a1, const char *a2, int *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3)
  {
    v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      ZinComputeProgramCompareLinkerVersion_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    goto LABEL_12;
  }

  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  if (sscanf(a1, "zinld v%d.%d.%d", &v19, &v19 + 4, &v20) != 3 || sscanf(a2, "%d.%d.%d", &v17, &v17 + 4, &v18) != 3)
  {
LABEL_12:
    result = 3;
    goto LABEL_13;
  }

  v5 = 0;
  while (*(&v19 + v5) == *(&v17 + v5))
  {
    v5 += 4;
    if (v5 == 12)
    {
      v6 = 0;
      goto LABEL_17;
    }
  }

  if (*(&v19 + v5) > *(&v17 + v5))
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

LABEL_17:
  result = 0;
  *a3 = v6;
LABEL_13:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ZinComputeProgramGetProcedureTDCount(uint64_t a1, uint64_t a2, void *a3)
{
  result = 3;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = *(a2 + 32);
        if (v5)
        {
          v6 = *(a2 + 24);
          if (v6)
          {
            v7 = 0;
            while (1)
            {
              v8 = *v5;
              if (!*v5 || !*v8)
              {
                return 3;
              }

              v9 = *(*v8 + 8);
              if (v9 == 4 || v9 == 1)
              {
                v11 = v8[1];
                if (!v11)
                {
                  return 3;
                }

                if (v9 == 1)
                {
                  v12 = 2060;
                }

                else
                {
                  v12 = 2080;
                }

                v7 += *(v11 + v12);
              }

              ++v5;
              if (!--v6)
              {
                goto LABEL_23;
              }
            }
          }

          else
          {
            v7 = 0;
LABEL_23:
            result = 0;
            *a3 = v7;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ZinComputeProgramGetANEThreadFlavor(uint64_t a1, int *a2)
{
  if (!a1)
  {
    return 3;
  }

  result = 3;
  if (!a2)
  {
    return result;
  }

  if (!*(a1 + 96))
  {
    return result;
  }

  *a2 = 0;
  v4 = *(a1 + 176);
  v5 = *(v4 + 40);
  if (!v5)
  {
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(v4 + 32);
  v9 = 2104 * v5;
  do
  {
    v10 = *(*v8 + 8);
    if (v10 == 1)
    {
      v6 = 1;
    }

    else if (v10 == 4)
    {
      v7 = 1;
    }

    v8 += 2104;
    v9 -= 2104;
  }

  while (v9);
  if (((v7 ^ v6) & 1) == 0)
  {
    return 3;
  }

  result = 0;
  if (v6)
  {
    v11 = 1;
  }

  else
  {
    v11 = 4;
  }

  *a2 = v11;
  return result;
}

uint64_t ZinComputeProgramGetANEThreadFlavorCount(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      if (a2 == 4 || a2 == 1)
      {
        *a3 = 0;
        v4 = *(a1 + 88);
        if (v4)
        {
          v5 = 0;
          v6 = 0;
          v7 = 1;
          while (1)
          {
            v8 = *(v3 + 2104 * v6);
            if (!v8)
            {
              break;
            }

            if (*(v8 + 8) == a2)
            {
              *a3 = ++v5;
              v4 = *(a1 + 88);
            }

            v6 = v7;
            v9 = v4 >= v7;
            v10 = v4 == v7++;
            if (v10 || !v9)
            {
              if (v5)
              {
                return 0;
              }

              else
              {
                return 3;
              }
            }
          }
        }
      }
    }
  }

  return 3;
}

uint64_t ZinComputeProgramGetProcedureANEThreadFlavorCount(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      if (a2 == 4 || a2 == 1)
      {
        *a3 = 0;
        v4 = *(a1 + 24);
        if (v4)
        {
          v5 = 0;
          v6 = 0;
          v7 = 1;
          while (1)
          {
            v8 = **(v3 + 8 * v6);
            if (!v8)
            {
              break;
            }

            if (*(v8 + 8) == a2)
            {
              *a3 = ++v5;
              v4 = *(a1 + 24);
            }

            v6 = v7;
            v9 = v4 >= v7;
            v10 = v4 == v7++;
            if (v10 || !v9)
            {
              if (v5)
              {
                return 0;
              }

              else
              {
                return 3;
              }
            }
          }
        }
      }
    }
  }

  return 3;
}

unint64_t ZinComputeProgramAlign(unint64_t result, unint64_t a2)
{
  if (result % a2)
  {
    return a2 + result - result % a2;
  }

  return result;
}

_DWORD **ZinComputeProgramGetOperationByThreadID(ident_command *a1, uint64_t a2, int a3, char *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4)
  {
    v8 = 0;
    v9 = *(a2 + 32);
    v10 = 1;
    do
    {
      v11 = *(v9 + 8 * v8);
      *v15 = 0;
      if (ZinComputeProgramGetAneTDPartitionScheduleInfo(a1, 1, v11[1], (*v11)[2], a4, &v15[1], v15, v16))
      {
        break;
      }

      if (v15[0] != -1)
      {
        if (v15[1] < 0)
        {
          break;
        }

        if (v15[1] == a3)
        {
          goto LABEL_9;
        }
      }

      v8 = v10;
    }

    while (v4 > v10++);
  }

  v11 = 0;
LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t ZinComputeProgramCollectOperationScheduleInfo(ident_command *a1, uint64_t a2, char *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3 < 2)
  {
LABEL_48:
    result = 0;
    goto LABEL_52;
  }

  v5 = a2;
  v7 = 0;
  v8 = *(a2 + 32);
  v35 = v8;
  while (1)
  {
    v9 = *(v8 + 8 * v7);
    v10 = *(*v9 + 8);
    if (v10 == 4 || v10 == 1)
    {
      count = 0;
      result = ZinComputeProgramGetAneTDPartitionScheduleInfo(a1, 1, *(v9 + 8), v10, a3, &count + 1, &count, v43);
      if (result)
      {
        goto LABEL_52;
      }

      if ((count & 0x8000000000000000) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinComputeProgramCollectOperationScheduleInfo_cold_5();
        }

        goto LABEL_51;
      }

      v13 = count;
      if ((count & 0x80000000) == 0)
      {
        break;
      }
    }

LABEL_40:
    if (++v7 == v3)
    {
      goto LABEL_48;
    }
  }

  if (count > 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramCollectOperationScheduleInfo_cold_4();
    }

LABEL_51:
    result = 5;
    goto LABEL_52;
  }

  if (count)
  {
    v14 = v43;
    v15 = count;
    do
    {
      v16 = *v14++;
      if (v16 < 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinComputeProgramCollectOperationScheduleInfo_cold_2();
        }

        goto LABEL_51;
      }

      --v15;
    }

    while (v15);
    *(v9 + 2072) = count;
    v17 = malloc_type_calloc(v13, 8uLL, 0x2004093837F09uLL);
    if (v17)
    {
      v18 = v17;
      v33 = v3;
      v19 = 0;
      do
      {
        v18[v19] = ZinComputeProgramGetOperationByThreadID(a1, v5, v43[v19], a3);
        ++v19;
      }

      while (v13 != v19);
      v3 = v33;
      goto LABEL_21;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramCollectOperationScheduleInfo_cold_1(&buf, v39);
    }

    v30 = *(v9 + 2072);
    *(v9 + 2088) = 0;
    if (v30)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v18 = 0;
    *(v9 + 2072) = 0;
LABEL_21:
    *(v9 + 2088) = v18;
  }

  v36 = HIDWORD(count);
  v20 = *(v5 + 24);
  v21 = *(v5 + 32);
  v22 = malloc_type_calloc(v20, 8uLL, 0x2004093837F09uLL);
  if (!v22)
  {
    v8 = v35;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramCollectOperationScheduleInfo_cold_3(&v41, v42);
    }

LABEL_38:
    v29 = 0;
    *(v9 + 2096) = 0;
LABEL_39:
    *(v9 + 2080) = v29;
    goto LABEL_40;
  }

  v23 = v22;
  if (!v20)
  {
LABEL_37:
    free(v23);
    v8 = v35;
    goto LABEL_38;
  }

  v32 = v5;
  v34 = v3;
  v24 = 0;
  v25 = 0;
  v26 = 1;
  while (1)
  {
    v27 = *(v21 + 8 * v25);
    *v40 = 0;
    if (ZinComputeProgramGetAneTDPartitionScheduleInfo(a1, 1, v27[1], (*v27)[2], a3, &v40[1], v40, v44))
    {
      break;
    }

    if (v40[0] != -1 && ((v44[0] & 0x80000000) == 0 && v44[0] == v36 || (v44[1] & 0x80000000) == 0 && v44[1] == v36))
    {
      *(v23 + v24++) = v27;
    }

    v25 = v26;
    if (v20 <= v26++)
    {
      v5 = v32;
      v3 = v34;
      if (!v24)
      {
        goto LABEL_37;
      }

      *(v9 + 2096) = v23;
      v29 = v24;
      v8 = v35;
      goto LABEL_39;
    }
  }

  free(v23);
  *(v9 + 2096) = 0;
  *(v9 + 2080) = v24;
  v5 = v32;
  v3 = v34;
  v8 = v35;
  if (!v24)
  {
    goto LABEL_40;
  }

LABEL_57:
  result = 1;
LABEL_52:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void *ZinComputeProgramProcedureGetAneOperations(uint64_t a1, uint64_t a2, size_t a3)
{
  v13 = 0;
  if (ZinComputeProgramGetANEThreadFlavor(a1, &v13))
  {
    return 0;
  }

  v12 = 0;
  if (ZinComputeProgramGetProcedureANEThreadFlavorCount(a2, v13, &v12))
  {
    return 0;
  }

  if (v12 != a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramProcedureGetAneOperations_cold_1();
    }

    return 0;
  }

  result = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
  if (result)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(*(a2 + 32) + 8 * v7);
        v10 = *(*v9 + 8);
        if (v10 == 4 || v10 == 1)
        {
          result[v8++] = v9;
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }

  return result;
}

uint64_t ZinComputeProgramSupportsFeature(uint64_t result, const char *a2, BOOL *a3)
{
  if (!a2)
  {
    return 3;
  }

  if (result)
  {
    v7 = 0;
    v4 = ZinComputeProgramCompareCompilerVersion((result + 8), a2, &v7);
    result = 0;
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v7 < 0;
    }

    v6 = !v5;
  }

  else
  {
    v6 = 1;
  }

  *a3 = v6;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void ZinAssertImpl(const char *__format, ...)
{
  va_start(va, __format);
  v3 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x200uLL, __format, va);
  __str[511] = 0;
  exception = __cxa_allocate_exception(0x98uLL);
  ZinException::ZinException(exception, __str);
}

uint64_t ZinCreateAnalytics(unsigned int a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5, unint64_t a6, unint64_t a7)
{
  v193 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) == 0 && a4 && a5 && a6 && a7)
  {
    v148[0] = a6;
    v148[1] = a6;
    v148[2] = a7;
    v149 = 1;
    ANEDebugInfo::DebugInfoParser::DebugInfoParser(v144, a4, a5);
    if (!ANEDebugInfo::DebugInfoParser::Parse(v144))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }

      v13 = 0;
      goto LABEL_237;
    }

    ANEDebugInfo::DebugInfoParser::GetCompilationUnit(v144, a1, &v135);
    if ((v135 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }

      goto LABEL_235;
    }

    v10 = MemPool::alloc<_AnalyticsProcedureInfo>(v148, 1u);
    v11 = v10;
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }

      goto LABEL_233;
    }

    *v10 = 0x400000001;
    if (a3)
    {
      v12 = 2 * (*a3 == 2);
    }

    else
    {
      v12 = 0;
    }

    Mode = ANEDebugInfo::DebugInfoInMem::GetMode(v136);
    v15 = v12 | Mode[1];
    if (*Mode)
    {
      v16 = v15 + 5;
    }

    else
    {
      v16 = v15 + 1;
    }

    *(v11 + 8) = v16;
    v17 = MemPool::alloc<unsigned long long>(v148, v16);
    if (!v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }

      goto LABEL_231;
    }

    v11[5] = MemPool::get_offset<unsigned long long>(v148, v17);
    if (a3 && *a3 == 2)
    {
      v18 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
      if (!v18)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinCreateAnalytics();
        }

        goto LABEL_231;
      }

      *v17 = MemPool::get_offset<unsigned long long>(v148, v18);
      *v18 = 3;
      *(v18 + 1) = *(a3 + 144);
      v19 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
      if (!v19)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinCreateAnalytics();
        }

        goto LABEL_231;
      }

      v17[1] = MemPool::get_offset<unsigned long long>(v148, v19);
      *v19 = 4;
      *(v19 + 1) = *(a3 + 40);
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    if (*ANEDebugInfo::DebugInfoInMem::GetMode(v136) != 1)
    {
      goto LABEL_38;
    }

    v21 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
    if (v21)
    {
      v22 = &v17[v20];
      *v22 = MemPool::get_offset<unsigned long long>(v148, v21);
      *v21 = 9;
      *(v21 + 1) = v139;
      v23 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
      if (v23)
      {
        v17[v20 | 1] = MemPool::get_offset<unsigned long long>(v148, v23);
        *v23 = 12;
        *(v23 + 1) = v136[0];
        v24 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
        if (v24)
        {
          v22[2] = MemPool::get_offset<unsigned long long>(v148, v24);
          *v24 = 13;
          *(v24 + 1) = v136[1];
          v25 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
          if (v25)
          {
            v22[3] = MemPool::get_offset<unsigned long long>(v148, v25);
            *v25 = 14;
            *(v25 + 1) = v136[3];
            v20 |= 4u;
LABEL_38:
            ANEDebugInfo::DebugInfoInMem::GetString(v136, v141, __p);
            v26 = BYTE7(v151);
            if (SBYTE7(v151) < 0)
            {
              v26 = __p[1];
            }

            v27 = MemPool::alloc<signed char>(v148, v26 + 8);
            if (v27)
            {
              v28 = &v17[v20];
              *v28 = MemPool::get_offset<unsigned long long>(v148, v27);
              *v27 = 15;
              v29 = BYTE7(v151);
              if (SBYTE7(v151) < 0)
              {
                v29 = __p[1];
              }

              v27[1] = v29;
              if ((SBYTE7(v151) & 0x80u) == 0)
              {
                v30 = __p;
              }

              else
              {
                v30 = __p[0];
              }

              if ((SBYTE7(v151) & 0x80u) == 0)
              {
                v31 = BYTE7(v151);
              }

              else
              {
                v31 = __p[1];
              }

              memcpy(v27 + 2, v30, v31);
              if (*(ANEDebugInfo::DebugInfoInMem::GetMode(v136) + 1) != 1)
              {
                goto LABEL_52;
              }

              v32 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
              if (v32)
              {
                v28[1] = MemPool::get_offset<unsigned long long>(v148, v32);
                *v32 = 16;
                *(v32 + 1) = v140;
LABEL_52:
                v33 = 1;
                goto LABEL_70;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                ZinCreateAnalytics();
              }
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ZinCreateAnalytics();
            }

            v33 = 0;
LABEL_70:
            if (SBYTE7(v151) < 0)
            {
              operator delete(__p[0]);
            }

            if (v33)
            {
              if (a2)
              {
                v34 = *(a2 + 556);
                v35 = *(a2 + 12);
              }

              else
              {
                v34 = 0;
                v35 = 0;
              }

              v36 = -1431655765 * ((v138 - v137) >> 4);
              v37 = MemPool::alloc<unsigned long long>(v148, v36);
              *(v11 + 3) = v35;
              *(v11 + 4) = v36;
              if (v37)
              {
                v125 = v37;
                v11[3] = MemPool::get_offset<unsigned long long>(v148, v37);
                v38 = v137;
                v126 = v138;
                if (v137 != v138)
                {
                  v39 = 0;
                  v40 = a2 == 0;
                  v41 = (a2 + 560);
                  if (!a2)
                  {
                    v41 = 0;
                  }

                  if (!v34)
                  {
                    v40 = 1;
                  }

                  v132 = v40;
                  v128 = v41;
                  while (1)
                  {
                    v160 = 0;
                    v159 = 0;
                    v161 = 0;
                    v42 = v38;
                    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(&v159, *v38, v38[1], 0xAAAAAAAAAAAAAAABLL * ((v38[1] - *v38) >> 2));
                    v162 = 0;
                    v163 = 0;
                    v164 = 0;
                    v131 = v42;
                    std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::TD*,ANEDebugInfo::DebugInfoInMem::TD*>(&v162, v42[3], v42[4], 0x8E38E38E38E38E39 * ((v42[4] - v42[3]) >> 3));
                    v43 = MemPool::alloc<_AnalyticsGroupInfo>(v148, 1u);
                    if (v43)
                    {
                      v44 = v160;
                      v45 = v159;
                      v46 = v163;
                      v47 = v162;
                      v127 = v39 + 1;
                      v125[v39] = MemPool::get_offset<unsigned long long>(v148, v43);
                      if (v43 <= v125)
                      {
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          ZinCreateAnalytics(&buf, v158);
                        }

                        goto LABEL_213;
                      }

                      v48 = -1431655765 * ((v44 - v45) >> 2);
                      *v43 = v48;
                      v49 = MemPool::alloc<unsigned long long>(v148, v48);
                      if (!v49)
                      {
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          ZinCreateAnalytics(v173, v174, v121);
                        }

                        goto LABEL_213;
                      }

                      v129 = v47;
                      v133 = v46;
                      v43[1] = MemPool::get_offset<unsigned long long>(v148, v49);
                      v50 = v159;
                      v51 = v160;
                      if (v159 != v160)
                      {
                        v52 = 0;
                        do
                        {
                          v54 = *v50;
                          v53 = v50[1];
                          v55 = v50[2];
                          v56 = MemPool::alloc<_AnalyticsLayerInfo>(v148, 1u);
                          ANEDebugInfo::DebugInfoInMem::GetString(v136, v54, __p);
                          v57 = BYTE7(v151);
                          if ((SBYTE7(v151) & 0x80u) == 0)
                          {
                            v58 = __p;
                          }

                          else
                          {
                            v58 = __p[0];
                          }

                          if (SBYTE7(v151) < 0)
                          {
                            v57 = __p[1];
                          }

                          strncpy(v56, v58, v57 + 1);
                          ANEDebugInfo::DebugInfoInMem::GetString(v136, v53, &__src);
                          v59 = HIBYTE(v156);
                          if (v156 >= 0)
                          {
                            p_src = &__src;
                          }

                          else
                          {
                            p_src = __src;
                          }

                          if (v156 < 0)
                          {
                            v59 = v155;
                          }

                          strncpy(v56 + 64, p_src, (v59 + 1));
                          *(v56 + 32) = v55;
                          v49[v52] = MemPool::get_offset<unsigned long long>(v148, v56);
                          if (SHIBYTE(v156) < 0)
                          {
                            operator delete(__src);
                          }

                          if (SBYTE7(v151) < 0)
                          {
                            operator delete(__p[0]);
                          }

                          v50 += 3;
                          ++v52;
                        }

                        while (v50 != v51);
                      }

                      v61 = 954437177 * ((v133 - v129) >> 3);
                      *(v43 + 4) = v61;
                      v62 = MemPool::alloc<unsigned long long>(v148, v61);
                      if (!v62)
                      {
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          ZinCreateAnalytics(v171, v172, v122);
                        }

LABEL_213:
                        v117 = 0;
                        goto LABEL_214;
                      }

                      v43[3] = MemPool::get_offset<unsigned long long>(v148, v62);
                      v63 = v162;
                      v134 = v163;
                      if (v162 != v163)
                      {
                        v130 = v62;
                        v64 = 0;
                        while (1)
                        {
                          *__p = *v63;
                          v151 = v63[1];
                          v152[0] = v63[2];
                          v152[1] = v63[3];
                          v153 = *(v63 + 8);
                          v65 = __p[0];
                          v156 = 0;
                          __src = 0;
                          v155 = 0;
                          if (!v132)
                          {
                            v66 = 0;
                            v68 = v34;
                            v67 = v128;
                            do
                            {
                              if (*v67 == v65)
                              {
                                if (v66 >= v156)
                                {
                                  v69 = (v66 - __src) >> 4;
                                  if ((v69 + 1) >> 60)
                                  {
                                    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
                                  }

                                  v70 = (v156 - __src) >> 3;
                                  if (v70 <= v69 + 1)
                                  {
                                    v70 = v69 + 1;
                                  }

                                  if ((v156 - __src) >= 0x7FFFFFFFFFFFFFF0)
                                  {
                                    v71 = 0xFFFFFFFFFFFFFFFLL;
                                  }

                                  else
                                  {
                                    v71 = v70;
                                  }

                                  if (v71)
                                  {
                                    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEHwDebugEventStruct>>(&__src, v71);
                                  }

                                  v72 = (16 * v69);
                                  *v72 = *v67;
                                  v66 = (16 * v69 + 16);
                                  v73 = (16 * v69 - (v155 - __src));
                                  memcpy(v72 - (v155 - __src), __src, v155 - __src);
                                  v74 = __src;
                                  __src = v73;
                                  v155 = v66;
                                  v156 = 0;
                                  if (v74)
                                  {
                                    operator delete(v74);
                                  }
                                }

                                else
                                {
                                  *v66 = *v67;
                                  v66 += 16;
                                }

                                v155 = v66;
                              }

                              ++v67;
                              --v68;
                            }

                            while (v68);
                          }

                          v75 = ANEDebugInfo::DebugInfoInMem::GetMode(v136);
                          v76 = __src;
                          if (__src == v155)
                          {
                            v77 = 0;
                          }

                          else
                          {
                            v77 = 0;
                            do
                            {
                              v78 = *(v76 + 2);
                              v79 = v78 > 0x1D;
                              v80 = (1 << v78) & 0x20000028;
                              if (!v79 && v80 != 0)
                              {
                                ++v77;
                              }

                              v76 += 16;
                            }

                            while (v76 != v155);
                          }

                          v82 = v75[1];
                          if (*v75)
                          {
                            v83 = v82 + 5;
                          }

                          else
                          {
                            v83 = v82 + 1;
                          }

                          if (v75[2])
                          {
                            v84 = v83 | 8;
                          }

                          else
                          {
                            v84 = v83;
                          }

                          v85 = MemPool::alloc<_AnalyticsTaskInfo>(v148, 1u);
                          if (!v85)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v169, v170, v89);
                            }

                            goto LABEL_194;
                          }

                          v130[v64] = MemPool::get_offset<unsigned long long>(v148, v85);
                          *v85 = v84 + v77;
                          v86 = MemPool::alloc<unsigned long long>(v148, v84 + v77);
                          ++v64;
                          if (!v86)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v167, v168, v90);
                            }

LABEL_194:
                            v117 = 0;
                            goto LABEL_196;
                          }

                          v85[1] = MemPool::get_offset<unsigned long long>(v148, v86);
                          v87 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
                          if (v87)
                          {
                            *v86 = MemPool::get_offset<unsigned long long>(v148, v87);
                            *v87 = 10;
                            v87[2] = __p[0];
                            v88 = 1;
                          }

                          else
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v177, v178, v91);
                            }

                            v88 = 0;
                          }

                          if (*(ANEDebugInfo::DebugInfoInMem::GetMode(v136) + 1) == 1)
                          {
                            v92 = MemPool::alloc<_AnalyticsData,unsigned char>(v148);
                            if (v92)
                            {
                              v86[v88] = MemPool::get_offset<unsigned long long>(v148, v92);
                              *v92 = 11;
                              *(v92 + 8) = BYTE4(__p[0]);
                              ++v88;
                            }

                            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v179, v180, v93);
                            }
                          }

                          if (*ANEDebugInfo::DebugInfoInMem::GetMode(v136) != 1)
                          {
                            goto LABEL_170;
                          }

                          v94 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
                          if (!v94)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v187, v188, v99);
                            }

                            goto LABEL_170;
                          }

                          v86[v88] = MemPool::get_offset<unsigned long long>(v148, v94);
                          *v94 = 5;
                          *(v94 + 1) = __p[1];
                          v95 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
                          v96 = v88 + 1;
                          if (!v95)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v185, v186, v100);
                            }

                            goto LABEL_169;
                          }

                          v86[v96] = MemPool::get_offset<unsigned long long>(v148, v95);
                          *v95 = 6;
                          *(v95 + 1) = v151;
                          v97 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
                          v96 = v88 + 2;
                          if (!v97)
                          {
                            break;
                          }

                          v86[v96] = MemPool::get_offset<unsigned long long>(v148, v97);
                          *v97 = 7;
                          *(v97 + 1) = *(&v151 + 1);
                          v98 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
                          v96 = v88 + 3;
                          if (!v98)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v181, v182, v102);
                            }

LABEL_169:
                            v88 = v96;
                            goto LABEL_170;
                          }

                          v86[v96] = MemPool::get_offset<unsigned long long>(v148, v98);
                          *v98 = 8;
                          *(v98 + 1) = *&v152[0];
                          v88 |= 4u;
LABEL_170:
                          if (*(ANEDebugInfo::DebugInfoInMem::GetMode(v136) + 2) == 1)
                          {
                            v103 = &v86[v88 + 1];
                            v104 = 4;
                            v105 = v152 + 3;
                            while (1)
                            {
                              v106 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
                              if (!v106)
                              {
                                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                {
                                  ZinCreateAnalytics(v191, v192, v109);
                                }

                                goto LABEL_180;
                              }

                              *(v103 - 1) = MemPool::get_offset<unsigned long long>(v148, v106);
                              *v106 = 17;
                              v106[2] = *(v105 - 1);
                              v107 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
                              if (!v107)
                              {
                                break;
                              }

                              *v103 = MemPool::get_offset<unsigned long long>(v148, v107);
                              v103 += 2;
                              *v107 = 18;
                              v108 = *v105;
                              v105 += 2;
                              v107[2] = v108;
                              v88 += 2;
                              if (!--v104)
                              {
                                goto LABEL_180;
                              }
                            }

                            ++v88;
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v189, v190, v110);
                            }
                          }

LABEL_180:
                          v111 = __src;
                          v112 = v155;
                          if (__src == v155)
                          {
                            v117 = 1;
                            goto LABEL_197;
                          }

                          while (1)
                          {
                            v113 = *(v111 + 2);
                            v114 = *(v111 + 1);
                            if (v113 == 3)
                            {
                              break;
                            }

                            if (v113 == 29)
                            {
                              v115 = 19;
                              goto LABEL_187;
                            }

                            if (v113 == 5)
                            {
                              v115 = 2;
                              goto LABEL_187;
                            }

LABEL_189:
                            v111 += 16;
                            if (v111 == v112)
                            {
                              v117 = 1;
                              goto LABEL_196;
                            }
                          }

                          v115 = 1;
LABEL_187:
                          v116 = MemPool::alloc<_AnalyticsData,unsigned long long>(v148);
                          if (v116)
                          {
                            v86[v88] = MemPool::get_offset<unsigned long long>(v148, v116);
                            *v116 = v115;
                            *(v116 + 1) = v114;
                            ++v88;
                            goto LABEL_189;
                          }

                          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                          {
                            ZinCreateAnalytics(v165, v166, v118);
                            goto LABEL_194;
                          }

                          v117 = 0;
LABEL_196:
                          v111 = __src;
LABEL_197:
                          if (v111)
                          {
                            v155 = v111;
                            operator delete(v111);
                          }

                          v63 = (v63 + 72);
                          if (v63 == v134)
                          {
                            v119 = 0;
                          }

                          else
                          {
                            v119 = v117;
                          }

                          if ((v119 & 1) == 0)
                          {
LABEL_214:
                            v39 = v127;
                            goto LABEL_215;
                          }
                        }

                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          ZinCreateAnalytics(v183, v184, v101);
                        }

                        goto LABEL_169;
                      }

                      v117 = 1;
                      v39 = v127;
                      if (v162)
                      {
LABEL_216:
                        v163 = v63;
                        operator delete(v63);
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        ZinCreateAnalytics(v175, v176, v120);
                      }

                      v117 = 0;
LABEL_215:
                      v63 = v162;
                      if (v162)
                      {
                        goto LABEL_216;
                      }
                    }

                    if (v159)
                    {
                      v160 = v159;
                      operator delete(v159);
                    }

                    if ((v117 & 1) == 0)
                    {
                      goto LABEL_226;
                    }

                    v38 = v131 + 6;
                    v13 = 1;
                    if (v131 + 6 == v126)
                    {
                      goto LABEL_236;
                    }
                  }
                }

                v13 = 1;
                goto LABEL_236;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                ZinCreateAnalytics();
              }

LABEL_226:
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                ZinCreateAnalytics();
              }

              goto LABEL_233;
            }

            goto LABEL_231;
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ZinCreateAnalytics();
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinCreateAnalytics();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCreateAnalytics();
    }

LABEL_231:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCreateAnalytics();
    }

LABEL_233:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCreateAnalytics();
    }

LABEL_235:
    v13 = 0;
LABEL_236:
    __p[0] = &v143;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v142);
    __p[0] = &v137;
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_237:
    v135 = &v147;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v135);
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v146);
    v135 = &v145;
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v135);
    v135 = v144;
    std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](&v135);
    goto LABEL_238;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinCreateAnalytics();
  }

  v13 = 0;
LABEL_238:
  v123 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1C0450748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::~pair(&a19);
  ANEDebugInfo::DebugInfoParser::~DebugInfoParser(&a41);
  _Unwind_Resume(a1);
}

uint64_t std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::~pair(uint64_t a1)
{
  v3 = (a1 + 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(a1 + 104);
  v3 = (a1 + 48);
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void ANEDebugInfo::DebugInfoParser::~DebugInfoParser(void **this)
{
  v2 = this + 20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table((this + 15));
  v2 = this + 8;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](&v2);
}

BOOL ZinDumpAnalytics(const void *a1, uint64_t a2)
{
  v139 = *MEMORY[0x1E69E9840];
  v136[0] = a1;
  v136[1] = a2;
  if (ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>(v136, 0, &v131))
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "== Network Analytics ==", 23);
    std::ios_base::getloc((v2 + *(*v2 - 24)));
    v3 = std::locale::use_facet(&v137, MEMORY[0x1E69E5318]);
    (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(&v137);
    std::ostream::put();
    std::ostream::flush();
    if (v134)
    {
      v4 = 0;
      v5 = v136[0] + v135;
      v6 = MEMORY[0x1E69E5310];
      v7 = MEMORY[0x1E69E5318];
      while (ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsData>(v136, *(v5 + 8 * v4), &v123))
      {
        data = v123.__r_.__value_.__l.__data_;
        if (ANEAnalytics::IsVariableLengthString(v123.__r_.__value_.__l.__data_))
        {
          std::vector<signed char>::vector[abi:ne200100](&v137, HIDWORD(v123.__r_.__value_.__r.__words[0]));
          memcpy(v137.__r_.__value_.__l.__data_, (v136[0] + *(v5 + 8 * v4) + 8), HIDWORD(v123.__r_.__value_.__r.__words[0]));
          std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char *>,std::__wrap_iter<signed char *>>(&__p, v137.__r_.__value_.__l.__data_, v137.__r_.__value_.__l.__size_, v137.__r_.__value_.__l.__size_ - v137.__r_.__value_.__r.__words[0]);
          v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\t", 1);
          v10 = FieldKindToString(data);
          v11 = strlen(v10);
          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ":  ", 3);
          if ((v129 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v129 & 0x80u) == 0)
          {
            v15 = v129;
          }

          else
          {
            v15 = *(&__p + 1);
          }

          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, p_p, v15);
          std::ios_base::getloc((v16 + *(*v16 - 24)));
          v17 = std::locale::use_facet(&v124, v7);
          (v17->__vftable[2].~facet_0)(v17, 10);
          std::locale::~locale(&v124);
          std::ostream::put();
          std::ostream::flush();
          if (v129 < 0)
          {
            operator delete(__p);
          }

          if (v137.__r_.__value_.__r.__words[0])
          {
            v137.__r_.__value_.__l.__size_ = v137.__r_.__value_.__r.__words[0];
            operator delete(v137.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\t", 1);
          v19 = FieldKindToString(data);
          v20 = strlen(v19);
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ":  ", 3);
          v23 = MEMORY[0x1C68DA330](v22, *(v136[0] + *(v5 + 8 * v4) + 8));
          std::ios_base::getloc((v23 + *(*v23 - 24)));
          v24 = std::locale::use_facet(&v137, v7);
          (v24->__vftable[2].~facet_0)(v24, 10);
          std::locale::~locale(&v137);
          std::ostream::put();
          std::ostream::flush();
        }

        if (++v4 >= v134)
        {
          goto LABEL_18;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinDumpAnalytics();
      }

      goto LABEL_138;
    }

LABEL_18:
    std::ios_base::getloc((MEMORY[0x1E69E5310] + *(*MEMORY[0x1E69E5310] - 24)));
    v25 = std::locale::use_facet(&v137, MEMORY[0x1E69E5318]);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&v137);
    std::ostream::put();
    std::ostream::flush();
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "== Layer Analytics ==", 21);
    std::ios_base::getloc((v26 + *(*v26 - 24)));
    v27 = std::locale::use_facet(&v137, MEMORY[0x1E69E5318]);
    (v27->__vftable[2].~facet_0)(v27, 10);
    std::locale::~locale(&v137);
    std::ostream::put();
    std::ostream::flush();
    if (v132)
    {
      v121 = 0;
      v28 = MEMORY[0x1E69E5310];
      v120 = v136[0] + v133;
      v29 = MEMORY[0x1E69E5318];
      while (1)
      {
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Group # ", 8);
        v31 = MEMORY[0x1C68DA310](v30, v121);
        std::ios_base::getloc((v31 + *(*v31 - 24)));
        v32 = std::locale::use_facet(&v137, v29);
        (v32->__vftable[2].~facet_0)(v32, 10);
        std::locale::~locale(&v137);
        std::ostream::put();
        std::ostream::flush();
        if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsGroupInfo>(v136, *(v120 + 8 * v121), &__p))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ZinDumpAnalytics();
          }

          goto LABEL_138;
        }

        v33 = v136[0];
        if (!__p)
        {
          goto LABEL_26;
        }

        v34 = 0;
        v35 = v136[0] + *(&__p + 1);
        do
        {
          if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsLayerInfo>(v136, *(v35 + 8 * v34), &v137))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ZinDumpAnalytics();
            }

            goto LABEL_138;
          }

          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "  Layer Name: ", 14);
          v37 = strlen(&v137);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, &v137, v37);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "\t", 1);
          v39 = std::ostream::operator<<();
          std::ios_base::getloc((v39 + *(*v39 - 24)));
          v40 = std::locale::use_facet(&v124, v29);
          (v40->__vftable[2].~facet_0)(v40, 10);
          std::locale::~locale(&v124);
          std::ostream::put();
          std::ostream::flush();
          ++v34;
        }

        while (v34 < __p);
        v33 = v136[0];
LABEL_26:
        if (v128)
        {
          v41 = 0;
          v42 = v33 + v130;
          v119 = v33 + v130;
          while (ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsTaskInfo>(v136, *(v42 + 8 * v41), &v126))
          {
            v43 = *(&v126 + 1);
            v44 = v136[0];
            v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "  Task ", 7);
            v46 = MEMORY[0x1C68DA310](v45, v41);
            std::ios_base::getloc((v46 + *(*v46 - 24)));
            v47 = std::locale::use_facet(&v137, v29);
            (v47->__vftable[2].~facet_0)(v47, 10);
            std::locale::~locale(&v137);
            std::ostream::put();
            std::ostream::flush();
            if (v126)
            {
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v51 = v44 + v43;
              do
              {
                if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsData>(v136, *(v51 + 8 * v48), &v125))
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    ZinDumpAnalytics();
                  }

                  goto LABEL_138;
                }

                if (v125 > 17)
                {
                  if (v125 == 18)
                  {
                    std::to_string(&v137, v50);
                    v100 = std::string::insert(&v137, 0, "_Counter", 8uLL);
                    v101 = *&v100->__r_.__value_.__l.__data_;
                    v124.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
                    *&v124.__r_.__value_.__l.__data_ = v101;
                    v100->__r_.__value_.__l.__size_ = 0;
                    v100->__r_.__value_.__r.__words[2] = 0;
                    v100->__r_.__value_.__r.__words[0] = 0;
                    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v137.__r_.__value_.__l.__data_);
                    }

                    v102 = *(v136[0] + *(v51 + 8 * v48) + 8);
                    v103 = FieldKindToString(v125);
                    std::string::basic_string[abi:ne200100]<0>(&v137, v103);
                    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v104 = &v124;
                    }

                    else
                    {
                      v104 = v124.__r_.__value_.__r.__words[0];
                    }

                    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      size = HIBYTE(v124.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      size = v124.__r_.__value_.__l.__size_;
                    }

                    v106 = std::string::append(&v137, v104, size);
                    v107 = *&v106->__r_.__value_.__l.__data_;
                    v123.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
                    *&v123.__r_.__value_.__l.__data_ = v107;
                    v106->__r_.__value_.__l.__size_ = 0;
                    v106->__r_.__value_.__r.__words[2] = 0;
                    v106->__r_.__value_.__r.__words[0] = 0;
                    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v137.__r_.__value_.__l.__data_);
                    }

                    ZinIrCompilerParamsUtils::PerfTracerMetricToString(v102, &v137);
                    if ((v138 & 1) == 0)
                    {
                      std::__throw_bad_optional_access[abi:ne200100]();
                    }

                    v122 = v137;
                    v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\t", 1);
                    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v109 = &v123;
                    }

                    else
                    {
                      v109 = v123.__r_.__value_.__r.__words[0];
                    }

                    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v110 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v110 = v123.__r_.__value_.__l.__size_;
                    }

                    v111 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, v109, v110);
                    v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, ": ", 2);
                    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v113 = &v122;
                    }

                    else
                    {
                      v113 = v122.__r_.__value_.__r.__words[0];
                    }

                    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v114 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v114 = v122.__r_.__value_.__l.__size_;
                    }

                    v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, v113, v114);
                    std::ios_base::getloc((v115 + *(*v115 - 24)));
                    v116 = std::locale::use_facet(&v137, v29);
                    (v116->__vftable[2].~facet_0)(v116, 10);
                    std::locale::~locale(&v137);
                    std::ostream::put();
                    std::ostream::flush();
                    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v122.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v123.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    ++v50;
                    goto LABEL_125;
                  }

                  if (v125 == 19)
                  {
                    std::to_string(&v124, v49);
                    v69 = std::string::insert(&v124, 0, "_Counter", 8uLL);
                    v70 = *&v69->__r_.__value_.__l.__data_;
                    v137.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
                    *&v137.__r_.__value_.__l.__data_ = v70;
                    v69->__r_.__value_.__l.__size_ = 0;
                    v69->__r_.__value_.__r.__words[2] = 0;
                    v69->__r_.__value_.__r.__words[0] = 0;
                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    v71 = *(v136[0] + *(v51 + 8 * v48) + 8);
                    v72 = FieldKindToString(v125);
                    std::string::basic_string[abi:ne200100]<0>(&v123, v72);
                    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v73 = &v137;
                    }

                    else
                    {
                      v73 = v137.__r_.__value_.__r.__words[0];
                    }

                    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v74 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v74 = v137.__r_.__value_.__l.__size_;
                    }

                    v75 = std::string::append(&v123, v73, v74);
                    v76 = *&v75->__r_.__value_.__l.__data_;
                    v124.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
                    *&v124.__r_.__value_.__l.__data_ = v76;
                    v75->__r_.__value_.__l.__size_ = 0;
                    v75->__r_.__value_.__r.__words[2] = 0;
                    v75->__r_.__value_.__r.__words[0] = 0;
                    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v123.__r_.__value_.__l.__data_);
                    }

                    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\t", 1);
                    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v78 = &v124;
                    }

                    else
                    {
                      v78 = v124.__r_.__value_.__r.__words[0];
                    }

                    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v79 = HIBYTE(v124.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v79 = v124.__r_.__value_.__l.__size_;
                    }

                    v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
                    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, ": ", 2);
                    v82 = MEMORY[0x1C68DA330](v81, v71);
                    std::ios_base::getloc((v82 + *(*v82 - 24)));
                    v83 = std::locale::use_facet(&v123, v29);
                    (v83->__vftable[2].~facet_0)(v83, 10);
                    std::locale::~locale(&v123);
                    std::ostream::put();
                    std::ostream::flush();
                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v137.__r_.__value_.__l.__data_);
                    }

                    ++v49;
                    goto LABEL_125;
                  }
                }

                else
                {
                  if (v125 == 11)
                  {
                    v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\t", 1);
                    v92 = FieldKindToString(v125);
                    v93 = strlen(v92);
                    v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, v92, v93);
                    v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, ":  ", 3);
                    if (*(v136[0] + *(v51 + 8 * v48) + 8))
                    {
                      v96 = "true";
                    }

                    else
                    {
                      v96 = "false";
                    }

                    if (*(v136[0] + *(v51 + 8 * v48) + 8))
                    {
                      v97 = 4;
                    }

                    else
                    {
                      v97 = 5;
                    }

                    v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, v96, v97);
                    std::ios_base::getloc((v98 + *(*v98 - 24)));
                    v99 = std::locale::use_facet(&v137, v29);
                    (v99->__vftable[2].~facet_0)(v99, 10);
                    std::locale::~locale(&v137);
                    std::ostream::put();
                    std::ostream::flush();
                    goto LABEL_125;
                  }

                  if (v125 == 17)
                  {
                    std::to_string(&v137, v50);
                    v52 = std::string::insert(&v137, 0, "_Counter", 8uLL);
                    v53 = *&v52->__r_.__value_.__l.__data_;
                    v124.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
                    *&v124.__r_.__value_.__l.__data_ = v53;
                    v52->__r_.__value_.__l.__size_ = 0;
                    v52->__r_.__value_.__r.__words[2] = 0;
                    v52->__r_.__value_.__r.__words[0] = 0;
                    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v137.__r_.__value_.__l.__data_);
                    }

                    v54 = *(v136[0] + *(v51 + 8 * v48) + 8);
                    v55 = FieldKindToString(v125);
                    std::string::basic_string[abi:ne200100]<0>(&v137, v55);
                    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v56 = &v124;
                    }

                    else
                    {
                      v56 = v124.__r_.__value_.__r.__words[0];
                    }

                    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v57 = HIBYTE(v124.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v57 = v124.__r_.__value_.__l.__size_;
                    }

                    v58 = std::string::append(&v137, v56, v57);
                    v59 = *&v58->__r_.__value_.__l.__data_;
                    v123.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
                    *&v123.__r_.__value_.__l.__data_ = v59;
                    v58->__r_.__value_.__l.__size_ = 0;
                    v58->__r_.__value_.__r.__words[2] = 0;
                    v58->__r_.__value_.__r.__words[0] = 0;
                    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v137.__r_.__value_.__l.__data_);
                    }

                    ZinIrCompilerParamsUtils::PerfTracerCategoryToString(v54, &v137);
                    if ((v138 & 1) == 0)
                    {
                      std::__throw_bad_optional_access[abi:ne200100]();
                    }

                    v122 = v137;
                    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\t", 1);
                    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v61 = &v123;
                    }

                    else
                    {
                      v61 = v123.__r_.__value_.__r.__words[0];
                    }

                    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v62 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v62 = v123.__r_.__value_.__l.__size_;
                    }

                    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v61, v62);
                    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, ": ", 2);
                    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v65 = &v122;
                    }

                    else
                    {
                      v65 = v122.__r_.__value_.__r.__words[0];
                    }

                    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v66 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v66 = v122.__r_.__value_.__l.__size_;
                    }

                    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v65, v66);
                    std::ios_base::getloc((v67 + *(*v67 - 24)));
                    v68 = std::locale::use_facet(&v137, v29);
                    (v68->__vftable[2].~facet_0)(v68, 10);
                    std::locale::~locale(&v137);
                    std::ostream::put();
                    std::ostream::flush();
                    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v122.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v123.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_125;
                  }
                }

                v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\t", 1);
                v85 = FieldKindToString(v125);
                v86 = strlen(v85);
                v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, v85, v86);
                v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, ":  ", 3);
                v89 = MEMORY[0x1C68DA330](v88, *(v136[0] + *(v51 + 8 * v48) + 8));
                std::ios_base::getloc((v89 + *(*v89 - 24)));
                v90 = std::locale::use_facet(&v137, v29);
                (v90->__vftable[2].~facet_0)(v90, 10);
                std::locale::~locale(&v137);
                std::ostream::put();
                std::ostream::flush();
LABEL_125:
                ++v48;
              }

              while (v48 < v126);
            }

            ++v41;
            v42 = v119;
            if (v41 >= v128)
            {
              goto LABEL_127;
            }
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ZinDumpAnalytics();
          }

LABEL_138:
          result = 0;
          goto LABEL_139;
        }

LABEL_127:
        result = 1;
        if (++v121 >= v132)
        {
          goto LABEL_139;
        }
      }
    }

    result = 1;
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      ZinDumpAnalytics();
      goto LABEL_138;
    }
  }

LABEL_139:
  v118 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a2 + 48;
  v4 = a1[1];
  if (a2 + 48 > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>();
    }
  }

  else
  {
    v5 = (*a1 + a2);
    v6 = *v5;
    v7 = v5[2];
    a3[1] = v5[1];
    a3[2] = v7;
    *a3 = v6;
  }

  return v3 <= v4;
}

BOOL ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsData>(void *a1, uint64_t a2, void *a3)
{
  v3 = a2 + 8;
  v4 = a1[1];
  if (a2 + 8 > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>();
    }
  }

  else
  {
    *a3 = *(*a1 + a2);
  }

  return v3 <= v4;
}

const char *FieldKindToString(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return "Invalid";
  }

  else
  {
    return off_1E81171C8[a1];
  }
}

BOOL ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsGroupInfo>(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a2 + 32;
  v4 = a1[1];
  if (a2 + 32 > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>();
    }
  }

  else
  {
    v5 = (*a1 + a2);
    v6 = v5[1];
    *a3 = *v5;
    a3[1] = v6;
  }

  return v3 <= v4;
}

BOOL ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsLayerInfo>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 132;
  v4 = a1[1];
  if (a2 + 132 > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>();
    }
  }

  else
  {
    v5 = *a1 + a2;
    *a3 = *v5;
    v6 = *(v5 + 16);
    v7 = *(v5 + 32);
    v8 = *(v5 + 64);
    *(a3 + 48) = *(v5 + 48);
    *(a3 + 64) = v8;
    *(a3 + 16) = v6;
    *(a3 + 32) = v7;
    v9 = *(v5 + 80);
    v10 = *(v5 + 96);
    v11 = *(v5 + 112);
    *(a3 + 128) = *(v5 + 128);
    *(a3 + 96) = v10;
    *(a3 + 112) = v11;
    *(a3 + 80) = v9;
  }

  return v3 <= v4;
}

BOOL ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsTaskInfo>(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a2 + 16;
  v4 = a1[1];
  if (a2 + 16 > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>();
    }
  }

  else
  {
    *a3 = *(*a1 + a2);
  }

  return v3 <= v4;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t ZinDumpAnalyticsInJSON(const void *a1, uint64_t a2, const char *a3)
{
  v129[19] = *MEMORY[0x1E69E9840];
  v5 = v129;
  v129[6] = 0;
  v6 = MEMORY[0x1E69E5530] + 64;
  v129[0] = MEMORY[0x1E69E5530] + 64;
  v7 = MEMORY[0x1E69E54D0];
  v8 = *(MEMORY[0x1E69E54D0] + 16);
  v127 = *(MEMORY[0x1E69E54D0] + 8);
  *&v128[*(v127 - 24) - 8] = v8;
  v9 = &v128[*(v127 - 24) - 8];
  std::ios_base::init(v9, v128);
  v10 = MEMORY[0x1E69E5530] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v127 = v10;
  v129[0] = v6;
  MEMORY[0x1C68DA270](v128);
  std::ofstream::open();
  LOBYTE(v116) = 0;
  HIDWORD(v116) = 0;
  v117 = &v127;
  v118 = 0;
  LOBYTE(v119) = 1;
  *(&v119 + 1) = 4;
  LOBYTE(v120) = 0;
  v115[0] = a1;
  v115[1] = a2;
  if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>(v115, 0, &v110))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinDumpAnalyticsInJSON();
    }

    goto LABEL_105;
  }

  minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v116, "MajorVersion", &v110);
  minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v116, "MinorVersion", &v110 + 1);
  minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v116, "CpuType", &v110 + 2);
  minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v116, "ProcId", &v110 + 3);
  minijson::writer::next_field(&v116);
  minijson::writer::write_field_name(&v116, "NetworkAnalytics");
  v108 = v119;
  v109 = v120;
  v104[0] = 0;
  v105 = 0;
  v106 = v117;
  v107 = v118 + 1;
  if (v113)
  {
    v11 = 0;
    v12 = v115[0] + v114;
    while (1)
    {
      v13 = *(v12 + 8 * v11);
      if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsData>(v115, v13, &v94))
      {
        break;
      }

      v14 = v94;
      if (ANEAnalytics::IsVariableLengthString(v94))
      {
        std::vector<signed char>::vector[abi:ne200100](&__dst, HIDWORD(v94));
        memcpy(__dst, (v115[0] + v13 + 8), HIDWORD(v94));
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char *>,std::__wrap_iter<signed char *>>(&__p, __dst, v122, v122 - __dst);
        v15 = FieldKindToString(v14);
        minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(v104, v15, &__p);
        if (SHIBYTE(v101) < 0)
        {
          operator delete(__p);
        }

        if (__dst)
        {
          v122 = __dst;
          operator delete(__dst);
        }
      }

      else
      {
        v16 = FieldKindToString(v14);
        __dst = *(v115[0] + v13 + 8);
        minijson::writer::write_helper<unsigned long long,minijson::default_value_writer<unsigned long long,void>>(v104, v16, &__dst);
      }

      if (++v11 >= v113)
      {
        goto LABEL_12;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinDumpAnalyticsInJSON();
    }

    goto LABEL_105;
  }

LABEL_12:
  minijson::writer::close(v104);
  minijson::writer::next_field(&v116);
  minijson::writer::write_field_name(&v116, "LayerAnalytics");
  v102 = v119;
  v103 = v120;
  LOBYTE(__p) = 0;
  HIDWORD(__p) = 0;
  v100 = v117;
  v101 = v118 + 1;
  minijson::writer::next_field(&__p);
  minijson::writer::write_field_name(&__p, "Groups");
  v97 = v102;
  v98 = v103;
  LOBYTE(v94) = 1;
  HIDWORD(v94) = 0;
  __n_4 = v100;
  v96 = v101 + 1;
  if (v111)
  {
    v17 = 0;
    v18 = v115[0] + v112;
    v62 = v115[0] + v112;
    while (1)
    {
      minijson::writer::next_field(&v94);
      v92 = v97;
      v93 = v98;
      LOBYTE(v89) = 0;
      HIDWORD(v89) = 0;
      v90 = __n_4;
      v91 = v96 + 1;
      if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsGroupInfo>(v115, *(v18 + 8 * v17), &v86))
      {
        break;
      }

      v64 = v17;
      v19 = *(&v86 + 1);
      v20 = v115[0];
      minijson::writer::next_field(&v89);
      minijson::writer::write_field_name(&v89, "Layers");
      v84 = v92;
      v85 = v93;
      v80[0] = 1;
      v81 = 0;
      v82 = v90;
      v83 = v91 + 1;
      if (v86)
      {
        v21 = 0;
        v22 = v20 + v19;
        while (ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsLayerInfo>(v115, *(v22 + 8 * v21), &__dst))
        {
          minijson::writer::next_field(v80);
          v78 = v84;
          v79 = v85;
          v74[0] = 0;
          v75 = 0;
          v76 = v82;
          v77 = v83 + 1;
          minijson::writer::write_helper<char [64],minijson::default_value_writer<char [64],void>>(v74, "Name", &__dst);
          minijson::writer::write_helper<float,minijson::default_value_writer<float,void>>(v74, "Weight", &v126);
          minijson::writer::close(v74);
          if (++v21 >= v86)
          {
            goto LABEL_19;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinDumpAnalyticsInJSON();
        }

        goto LABEL_105;
      }

LABEL_19:
      minijson::writer::close(v80);
      minijson::writer::next_field(&v89);
      minijson::writer::write_field_name(&v89, "Tasks");
      v124 = v92;
      v125 = v93;
      LOBYTE(__dst) = 1;
      HIDWORD(__dst) = 0;
      v122 = v90;
      v123 = v91 + 1;
      if (v87)
      {
        v23 = 0;
        v24 = v115[0] + v88;
        v65 = v5;
        v63 = v115[0] + v88;
        while (ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsTaskInfo>(v115, *(v24 + 8 * v23), &v73))
        {
          v25 = *(&v73 + 1);
          v26 = v115[0];
          minijson::writer::next_field(&__dst);
          v78 = v124;
          v79 = v125;
          v74[0] = 0;
          v75 = 0;
          v76 = v122;
          v77 = v123 + 1;
          if (v73)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = v26 + v25;
            do
            {
              if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsData>(v115, *(v30 + 8 * v27), &v72))
              {
                v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v5 = v65;
                v7 = MEMORY[0x1E69E54D0];
                if (v59)
                {
                  ZinDumpAnalyticsInJSON();
                }

                goto LABEL_105;
              }

              if (v72 > 17)
              {
                if (v72 == 18)
                {
                  v49 = *(v115[0] + *(v30 + 8 * v27) + 8);
                  v50 = FieldKindToString(0x12u);
                  std::string::basic_string[abi:ne200100]<0>(&v70, v50);
                  v51 = std::string::append(&v70, "_Counter", 8uLL);
                  v52 = *&v51->__r_.__value_.__l.__data_;
                  v67.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
                  *&v67.__r_.__value_.__l.__data_ = v52;
                  v51->__r_.__value_.__l.__size_ = 0;
                  v51->__r_.__value_.__r.__words[2] = 0;
                  v51->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v69, v29);
                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v53 = &v69;
                  }

                  else
                  {
                    v53 = v69.__r_.__value_.__r.__words[0];
                  }

                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v69.__r_.__value_.__l.__size_;
                  }

                  v55 = std::string::append(&v67, v53, size);
                  v56 = *&v55->__r_.__value_.__l.__data_;
                  v71.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
                  *&v71.__r_.__value_.__l.__data_ = v56;
                  v55->__r_.__value_.__l.__size_ = 0;
                  v55->__r_.__value_.__r.__words[2] = 0;
                  v55->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v69.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v67.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v70.__r_.__value_.__l.__data_);
                  }

                  ZinIrCompilerParamsUtils::PerfTracerMetricToString(v49, &v67);
                  if ((v68 & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  v70 = v67;
                  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v57 = &v71;
                  }

                  else
                  {
                    v57 = v71.__r_.__value_.__r.__words[0];
                  }

                  minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(v74, v57, &v70);
                  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v70.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v71.__r_.__value_.__l.__data_);
                  }

                  ++v29;
                  goto LABEL_91;
                }

                if (v72 == 19)
                {
                  v66 = *(v115[0] + *(v30 + 8 * v27) + 8);
                  v40 = FieldKindToString(0x13u);
                  std::string::basic_string[abi:ne200100]<0>(&v70, v40);
                  v41 = std::string::append(&v70, "_Counter", 8uLL);
                  v42 = *&v41->__r_.__value_.__l.__data_;
                  v71.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
                  *&v71.__r_.__value_.__l.__data_ = v42;
                  v41->__r_.__value_.__l.__size_ = 0;
                  v41->__r_.__value_.__r.__words[2] = 0;
                  v41->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v69, v28);
                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v43 = &v69;
                  }

                  else
                  {
                    v43 = v69.__r_.__value_.__r.__words[0];
                  }

                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v44 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v44 = v69.__r_.__value_.__l.__size_;
                  }

                  v45 = std::string::append(&v71, v43, v44);
                  v46 = *&v45->__r_.__value_.__l.__data_;
                  v67.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
                  *&v67.__r_.__value_.__l.__data_ = v46;
                  v45->__r_.__value_.__l.__size_ = 0;
                  v45->__r_.__value_.__r.__words[2] = 0;
                  v45->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v69.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v71.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v70.__r_.__value_.__l.__data_);
                  }

                  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v47 = &v67;
                  }

                  else
                  {
                    v47 = v67.__r_.__value_.__r.__words[0];
                  }

                  minijson::writer::write_helper<unsigned long long,minijson::default_value_writer<unsigned long long,void>>(v74, v47, &v66);
                  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v67.__r_.__value_.__l.__data_);
                  }

                  ++v28;
                  goto LABEL_91;
                }
              }

              else
              {
                if (v72 == 11)
                {
                  v71.__r_.__value_.__s.__data_[0] = *(v115[0] + *(v30 + 8 * v27) + 8) & 1;
                  minijson::writer::write_helper<BOOL,minijson::default_value_writer<BOOL,void>>(v74, "ViolatesMaxLatency", &v71);
                  goto LABEL_91;
                }

                if (v72 == 17)
                {
                  v31 = *(v115[0] + *(v30 + 8 * v27) + 8);
                  v32 = FieldKindToString(0x11u);
                  std::string::basic_string[abi:ne200100]<0>(&v70, v32);
                  v33 = std::string::append(&v70, "_Counter", 8uLL);
                  v34 = *&v33->__r_.__value_.__l.__data_;
                  v67.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
                  *&v67.__r_.__value_.__l.__data_ = v34;
                  v33->__r_.__value_.__l.__size_ = 0;
                  v33->__r_.__value_.__r.__words[2] = 0;
                  v33->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v69, v29);
                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v35 = &v69;
                  }

                  else
                  {
                    v35 = v69.__r_.__value_.__r.__words[0];
                  }

                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v36 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v36 = v69.__r_.__value_.__l.__size_;
                  }

                  v37 = std::string::append(&v67, v35, v36);
                  v38 = *&v37->__r_.__value_.__l.__data_;
                  v71.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
                  *&v71.__r_.__value_.__l.__data_ = v38;
                  v37->__r_.__value_.__l.__size_ = 0;
                  v37->__r_.__value_.__r.__words[2] = 0;
                  v37->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v69.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v67.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v70.__r_.__value_.__l.__data_);
                  }

                  ZinIrCompilerParamsUtils::PerfTracerCategoryToString(v31, &v67);
                  if ((v68 & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  v70 = v67;
                  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v39 = &v71;
                  }

                  else
                  {
                    v39 = v71.__r_.__value_.__r.__words[0];
                  }

                  minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(v74, v39, &v70);
                  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v70.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v71.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_91;
                }
              }

              v48 = FieldKindToString(v72);
              v67.__r_.__value_.__r.__words[0] = *(v115[0] + *(v30 + 8 * v27) + 8);
              minijson::writer::write_helper<unsigned long long,minijson::default_value_writer<unsigned long long,void>>(v74, v48, &v67);
LABEL_91:
              ++v27;
            }

            while (v27 < v73);
          }

          minijson::writer::close(v74);
          ++v23;
          v5 = v65;
          v7 = MEMORY[0x1E69E54D0];
          v24 = v63;
          if (v23 >= v87)
          {
            goto LABEL_93;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinDumpAnalyticsInJSON();
        }

LABEL_105:
        v58 = 0;
        goto LABEL_106;
      }

LABEL_93:
      minijson::writer::close(&__dst);
      minijson::writer::close(&v89);
      v17 = v64 + 1;
      v18 = v62;
      if (v64 + 1 >= v111)
      {
        goto LABEL_94;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinDumpAnalyticsInJSON();
    }

    goto LABEL_105;
  }

LABEL_94:
  minijson::writer::close(&v94);
  minijson::writer::close(&__p);
  minijson::writer::close(&v116);
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v128[*(v127 - 24) - 8], *&v128[*(v127 - 24) + 24] | 4);
  }

  v58 = 1;
LABEL_106:
  v127 = *v7;
  *&v128[*(v127 - 24) - 8] = v7[3];
  MEMORY[0x1C68DA280](v128);
  std::ostream::~ostream();
  MEMORY[0x1C68DA3E0](v5);
  v60 = *MEMORY[0x1E69E9840];
  return v58;
}

void sub_1C04529D0(_Unwind_Exception *a1)
{
  std::ofstream::~ofstream(&STACK[0x300], MEMORY[0x1E69E54D0]);
  MEMORY[0x1C68DA3E0](v1);
  _Unwind_Resume(a1);
}

minijson::writer *minijson::writer::close(minijson::writer *this)
{
  if (*(this + 1) != 2)
  {
    v1 = this;
    if (!*(v1 + 1))
    {
      minijson::writer::write_opening_bracket(v1);
    }

    this = minijson::writer::write_closing_bracket(v1);
    *(v1 + 1) = 2;
  }

  return this;
}

uint64_t ZinComputeAnalyticsBufferSize(unsigned int a1, const unsigned __int8 *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 0x80000000) == 0 && a2 && a3)
  {
    ANEDebugInfo::DebugInfoParser::DebugInfoParser(v38, a2, a3);
    ANEDebugInfo::DebugInfoParser::Parse(v38);
    ANEDebugInfo::DebugInfoParser::GetCompilationUnit(v38, a1, &v31);
    if (v31)
    {
      v8 = ZinComputeProgramAlign(0x30uLL, 8uLL);
      Mode = ANEDebugInfo::DebugInfoInMem::GetMode(v32);
      v10 = Mode[1] + a4;
      if (*Mode)
      {
        v11 = v10 + 5;
      }

      else
      {
        v11 = v10 + 1;
      }

      ANEDebugInfo::DebugInfoInMem::GetString(v32, v35, v29);
      v12 = v30;
      if ((v30 & 0x8000000000000000) != 0)
      {
        v12 = v29[1];
        operator delete(v29[0]);
      }

      v13 = ZinComputeProgramAlign(v12, 8uLL);
      v14 = ANEDebugInfo::DebugInfoInMem::GetMode(v32);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = ZinComputeProgramAlign(0x10uLL, 8uLL);
      v19 = v8 + 16 * v11 + v13;
      v20 = v16 + 5;
      if (!v15)
      {
        v20 = v16 + 1;
      }

      if (v17)
      {
        v20 |= 8uLL;
      }

      v21 = v33;
      v22 = v34;
      if (v33 != v34)
      {
        v23 = v18 + 24 * (v20 + a5) + 8;
        do
        {
          v24 = ZinComputeProgramAlign(0x20uLL, 8uLL);
          v26 = *v21;
          v25 = v21[1];
          v19 = v19 + v24 - 0x5555555555555555 * ((v25 - v26) >> 2) * (ZinComputeProgramAlign(0x84uLL, 8uLL) + 8) - 0x71C71C71C71C71C7 * ((v21[4] - v21[3]) >> 3) * v23 + 8;
          v21 += 6;
        }

        while (v21 != v22);
      }

      v27 = v19;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }

      v27 = 0;
    }

    v29[0] = &v37;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v36);
    v29[0] = &v33;
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](v29);
    v31 = &v41;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v40);
    v31 = &v39;
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v31);
    v31 = v38;
    std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](&v31);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeAnalyticsBufferSize();
    }

    return 0;
  }

  return v27;
}

void sub_1C0452E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::~pair(&a13);
  ANEDebugInfo::DebugInfoParser::~DebugInfoParser(&a35);
  _Unwind_Resume(a1);
}

uint64_t ZinAnalyticsGetPerfCounterInfo(const unsigned __int8 *a1, unsigned int a2, char (*a3)[128])
{
  *&(*a3)[480] = 0u;
  *&(*a3)[496] = 0u;
  *&(*a3)[448] = 0u;
  *&(*a3)[464] = 0u;
  *&(*a3)[416] = 0u;
  *&(*a3)[432] = 0u;
  *&(*a3)[384] = 0u;
  *&(*a3)[400] = 0u;
  *&(*a3)[352] = 0u;
  *&(*a3)[368] = 0u;
  *&(*a3)[320] = 0u;
  *&(*a3)[336] = 0u;
  *&(*a3)[288] = 0u;
  *&(*a3)[304] = 0u;
  *&(*a3)[256] = 0u;
  *&(*a3)[272] = 0u;
  *&(*a3)[224] = 0u;
  *&(*a3)[240] = 0u;
  *&(*a3)[192] = 0u;
  *&(*a3)[208] = 0u;
  *&(*a3)[160] = 0u;
  *&(*a3)[176] = 0u;
  *&(*a3)[128] = 0u;
  *&(*a3)[144] = 0u;
  *&(*a3)[96] = 0u;
  *&(*a3)[112] = 0u;
  *&(*a3)[64] = 0u;
  *&(*a3)[80] = 0u;
  *&(*a3)[32] = 0u;
  *&(*a3)[48] = 0u;
  *a3 = 0u;
  *&(*a3)[16] = 0u;
  ANEDebugInfo::DebugInfoParser::DebugInfoParser(v54, a1, a2);
  if (ANEDebugInfo::DebugInfoParser::Parse(v54))
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      ANEDebugInfo::DebugInfoParser::GetCompilationUnit(v54, v4, &v37);
      v6 = v37;
      *&v24[0] = &v50;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v24);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v45);
      *&v24[0] = &v41;
      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](v24);
      if (v6 != 1)
      {
        break;
      }

      ANEDebugInfo::DebugInfoParser::GetCompilationUnit(v54, v4, &v37);
      v24[0] = v38;
      v24[1] = v39;
      v25 = v40;
      v26 = v41;
      v7 = v42;
      v8 = v45;
      v42 = 0;
      v41 = 0uLL;
      v28 = v43;
      v29 = v44;
      v27 = v7;
      v9 = v46;
      v45 = 0;
      v46 = 0;
      v30[0] = v8;
      v30[1] = v9;
      v31[0] = v47;
      v31[1] = v48;
      v32 = v49;
      if (v48)
      {
        v10 = *(v47 + 8);
        if ((v9 & (v9 - 1)) != 0)
        {
          if (v10 >= v9)
          {
            v10 %= v9;
          }
        }

        else
        {
          v10 &= v9 - 1;
        }

        *(v8 + 8 * v10) = v31;
        v47 = 0;
        v48 = 0;
      }

      v33 = v50;
      v34 = v51;
      v51 = 0;
      v50 = 0uLL;
      v35 = v52;
      v36 = v53;
      v58[0] = &v50;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v58);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v45);
      v58[0] = &v41;
      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](v58);
      v11 = *(&v26 + 1);
      for (i = v26; ; i += 48)
      {
        if (i == v11)
        {
          v21 = 1;
          goto LABEL_29;
        }

        v13 = *(i + 24);
        if (*(i + 32) != v13)
        {
          v14 = (v13 + 44);
          v15 = a3;
          v16 = 4;
          do
          {
            v17 = *(&PerfTracerCategoryToString(int)::perf_tracer_category_to_string + *(v14 - 1));
            if (*v17)
            {
              v18 = *(&PerfTracerMetricToString(int)::perf_tracer_metric_to_string + *v14);
              if (*v18)
              {
                if (strlcat(v15, v17, 0x80uLL) > 0x7F || strlcat(v15, ":", 0x80uLL) > 0x7F || strlcat(v15, v18, 0x80uLL) > 0x7F)
                {
                  v21 = 0;
                  v23 = 0;
                  goto LABEL_29;
                }
              }
            }

            v14 += 2;
            v15 += 128;
            --v16;
          }

          while (v16);
          for (j = 0; j != 4; ++j)
          {
            while (v5)
            {
              ++j;
              v5 = 1;
              if (j == 4)
              {
                v21 = 0;
                v23 = 1;
                goto LABEL_29;
              }
            }

            v20 = (*a3)[128 * j];
            v5 = (*a3)[128 * j] != 0;
          }

          v5 = 0;
          if (v20)
          {
            break;
          }
        }
      }

      v23 = 1;
      v21 = 0;
      v5 = 1;
LABEL_29:
      ++v4;
      v37 = &v33;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v30);
      v37 = &v26;
      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v37);
      if ((v21 & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  v23 = 0;
LABEL_33:
  v37 = &v57;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v56);
  v37 = &v55;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v37);
  v37 = v54;
  std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](&v37);
  return v23 & 1;
}

void *MemPool::alloc<_AnalyticsProcedureInfo>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(48 * a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

void *MemPool::alloc<unsigned long long>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(8 * a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

unint64_t MemPool::get_offset<unsigned long long>(unint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 <= a2 && *a1 >= a2)
  {
    return a2 - v2;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    MemPool::get_offset<unsigned long long>();
  }

  return 0;
}

_DWORD *MemPool::alloc<_AnalyticsData,unsigned long long>(uint64_t a1)
{
  result = MemPool::alloc<unsigned long long>(a1, 1u);
  if (result)
  {
    v3 = result;
    result[1] = 8;
    if (MemPool::alloc<signed char>(a1, 8u))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *MemPool::alloc<signed char>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C0453598(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Layer>>(a1, a2);
  }

  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Layer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::TD*,ANEDebugInfo::DebugInfoInMem::TD*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C0453718(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::TD>>(a1, a2);
  }

  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::TD>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *MemPool::alloc<_AnalyticsGroupInfo>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(32 * a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

void *MemPool::alloc<_AnalyticsLayerInfo>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(132 * a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANEHwDebugEventStruct>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *MemPool::alloc<_AnalyticsTaskInfo>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(16 * a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

_DWORD *MemPool::alloc<_AnalyticsData,unsigned char>(uint64_t a1)
{
  result = MemPool::alloc<unsigned long long>(a1, 1u);
  if (result)
  {
    v3 = result;
    result[1] = 1;
    if (MemPool::alloc<signed char>(a1, 1u))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ANEDebugInfo::DebugInfoInMem::Group::~Group(ANEDebugInfo::DebugInfoInMem::Group *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ANEDebugInfo::DebugInfoInMem>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = (v3 - 32);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v3 - 72);
      v4 = (v3 - 128);
      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v4);
      v3 -= 168;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void *std::vector<signed char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C0453BBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<signed char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char *>,std::__wrap_iter<signed char *>>(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

void minijson::detail::anonymous namespace::adjust_stream_settings(uint64_t *a1)
{
  v2 = (a1 + *(*a1 - 24));
  v3 = std::locale::classic();
  std::ios_base::getloc(v2);
  std::ios_base::imbue(v2, v3);
  std::locale::~locale(&v8);
  rdbuf = v2->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, v3);
    std::locale::locale(&v7, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, v3);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v6);
  v5 = *a1;
  *(a1 + *(*a1 - 24) + 8) &= 0xFFFFF3FF;
  *(a1 + *(v5 - 24) + 8) = *(a1 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(a1 + *(v5 - 24) + 24) = 0;
}

uint64_t minijson::writer::next_field(minijson::writer *this)
{
  v2 = *(this + 1);
  if (v2 == 1)
  {
    v3 = *(this + 1);
    v5 = 44;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v5, 1);
  }

  else if (!v2)
  {
    minijson::writer::write_opening_bracket(this);
  }

  result = minijson::writer::write_pretty_print_token(this, 0);
  *(this + 1) = 1;
  return result;
}

uint64_t minijson::writer::write_field_name(std::locale::__imp **this, char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = this[1];
  LOBYTE(v6) = 58;
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v6, 1);
  if (*(this + 24) == 1)
  {
    v6 = this[1];
    v8 = 1;
    v7 = 32;
    result = std::ostream::write();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *minijson::writer::write_opening_bracket(minijson::writer *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (v1 == 1)
  {
    v5 = 91;
    v3 = &v5;
  }

  else
  {
    v6 = 123;
    v3 = &v6;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, 1);
}

uint64_t minijson::writer::write_pretty_print_token(uint64_t result, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 24) == 1)
  {
    v2 = result;
    v8 = *(result + 8);
    v10 = 0;
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 1;
        v9[0] = 32;
      }

      else if (a2 == 2 && *(result + 4))
      {
        goto LABEL_6;
      }

LABEL_22:
      result = std::ostream::write();
      goto LABEL_23;
    }

LABEL_6:
    v3 = *(result + 16);
    if (!a2)
    {
      ++v3;
    }

    if ((*(result + 40) & 1) == 0)
    {
      v3 *= *(result + 32);
    }

    v10 = 1;
    v9[0] = 10;
    if (v3)
    {
      v4 = v3 - 1;
      v5 = 1;
      while (1)
      {
        v6 = *(v2 + 40) ? 9 : 32;
        if (v5 == 16)
        {
          std::ostream::write();
          v5 = 0;
        }

        v10 = v5 + 1;
        v9[v5] = v6;
        if (!v4)
        {
          break;
        }

        v5 = v10;
        --v4;
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1C68DA2C0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1C68DA2D0](v13);
  return a1;
}

void sub_1C0454278(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1C68DA2D0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1C0454258);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1C04544AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t minijson::detail::anonymous namespace::write_quoted_string(std::locale::__imp *a1, _BYTE *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(a1 + *(v4 - 24) + 8) = *(a1 + *(v4 - 24) + 8) & 0xFFFFFF4F | 0x80;
  v5 = a1 + *(v4 - 24);
  if (*(v5 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(v4 - 24)));
    v6 = std::locale::use_facet(&v13, MEMORY[0x1E69E5318]);
    v7 = (v6->__vftable[2].~facet_0)(v6, 32);
    std::locale::~locale(&v13);
    *(v5 + 36) = v7;
  }

  *(v5 + 36) = 48;
  v13.__locale_ = a1;
  v15 = 1;
  v14[0] = 34;
  while (1)
  {
    v8 = *a2;
    if (v8 > 0xC)
    {
      switch(v8)
      {
        case 0xDu:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\r");
          goto LABEL_22;
        case 0x5Cu:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\\");
          goto LABEL_22;
        case 0x22u:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\"");
          goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (v8 == 9)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\t");
      goto LABEL_22;
    }

    if (v8 == 10)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\n");
      goto LABEL_22;
    }

    if (!*a2)
    {
      break;
    }

LABEL_16:
    if (v8 == 127 || v8 - 1 <= 0x1E)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\u");
      std::ostream::write();
      v15 = 0;
      *(a1 + *(*a1 - 24) + 24) = 4;
      MEMORY[0x1C68DA310](a1, *a2);
    }

    else
    {
      v9 = v15;
      if (v15 == 128)
      {
        std::ostream::write();
        v9 = 0;
      }

      v15 = v9 + 1;
      v14[v9] = v8;
    }

LABEL_22:
    ++a2;
  }

  v10 = v15;
  if (v15 == 128)
  {
    std::ostream::write();
    v10 = 0;
  }

  v15 = v10 + 1;
  v14[v10] = 34;
  result = std::ostream::write();
  v15 = 0;
  *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 2;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *minijson::detail::buffered_writer<128ul>::operator<<<3ul>(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 1;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = *(a2 + v4);
    v9 = a1[17];
    if (v9 == 128)
    {
      v10 = *a1;
      std::ostream::write();
      v9 = 0;
    }

    v6 = 0;
    a1[17] = v9 + 1;
    *(v5 + v9) = v8;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return a1;
}

void *minijson::writer::write_closing_bracket(minijson::writer *this)
{
  minijson::writer::write_pretty_print_token(this, 2);
  v2 = *(this + 1);
  if (*this == 1)
  {
    v5 = 93;
    v3 = &v5;
  }

  else
  {
    v6 = 125;
    v3 = &v6;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, 1);
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1C68DA280](a1 + 1);

  return std::ostream::~ostream();
}

void ANEDebugInfo::DebugInfoInMem::~DebugInfoInMem(ANEDebugInfo::DebugInfoInMem *this)
{
  v2 = (this + 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(this + 96);
  v2 = (this + 40);
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(uint64_t result, char *a2, unsigned int *a3)
{
  if (*(result + 4) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = *(v6 + 1);
    v8 = *a3;

    JUMPOUT(0x1C68DA310);
  }

  return result;
}

uint64_t minijson::writer::write_helper<unsigned long long,minijson::default_value_writer<unsigned long long,void>>(uint64_t result, char *a2, uint64_t *a3)
{
  if (*(result + 4) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = *(v6 + 1);
    v8 = *a3;

    JUMPOUT(0x1C68DA330);
  }

  return result;
}

uint64_t minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(uint64_t result, char *a2, _BYTE *a3)
{
  if (*(result + 4) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = *(v6 + 1);
    if (a3[23] >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }
  }

  return result;
}

uint64_t minijson::writer::write_helper<char [64],minijson::default_value_writer<char [64],void>>(uint64_t result, char *a2, _BYTE *a3)
{
  if (*(result + 4) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = *(v6 + 1);
  }

  return result;
}

minijson::writer *minijson::writer::write_helper<float,minijson::default_value_writer<float,void>>(minijson::writer *result, char *a2, float *a3)
{
  if (*(result + 1) != 2)
  {
    v9 = v3;
    v10 = v4;
    v7 = result;
    minijson::writer::next_field(v7);
    if (a2)
    {
      minijson::writer::write_field_name(v7, a2);
    }

    return minijson::default_value_writer<float,void>::operator()(*a3, &v8, *(v7 + 1));
  }

  return result;
}

void *minijson::default_value_writer<float,void>::operator()(float a1, uint64_t a2, void *a3)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) < 0x7F800000)
  {
    return std::ostream::operator<<();
  }

  else
  {
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "null", 4);
  }
}

minijson::writer *minijson::writer::write_helper<BOOL,minijson::default_value_writer<BOOL,void>>(minijson::writer *result, char *a2, unsigned __int8 *a3)
{
  if (*(result + 1) != 2)
  {
    v9 = v3;
    v10 = v4;
    v7 = result;
    minijson::writer::next_field(v7);
    if (a2)
    {
      minijson::writer::write_field_name(v7, a2);
    }

    return minijson::default_value_writer<BOOL,void>::operator()(&v8, *(v7 + 1), *a3);
  }

  return result;
}

void *minijson::default_value_writer<BOOL,void>::operator()(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = "true";
    v5 = 4;
  }

  else
  {
    v4 = "false";
    v5 = 5;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, v5);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

double ANEDebugInfo::DebugInfoInMem::DebugInfoInMem(ANEDebugInfo::DebugInfoInMem *this)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *this = _Q0;
  *(this + 1) = _Q0;
  *(this + 4) = 0xBFF0000000000000;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  result = 0.0;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0x3F80000000000000;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 159) = 0;
  return result;
}

{
  __asm { FMOV            V0.2D, #-1.0 }

  *this = _Q0;
  *(this + 1) = _Q0;
  *(this + 4) = 0xBFF0000000000000;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  result = 0.0;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0x3F80000000000000;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 159) = 0;
  return result;
}

uint64_t ANEDebugInfo::DebugInfoInMem::DebugInfoInMem(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *a1 = _Q0;
  *(a1 + 16) = _Q0;
  *(a1 + 32) = 0xBFF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0x3F80000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 159) = 0;
  *(a1 + 64) = ANEDebugInfo::DebugInfoInMem::EncodeString(a1, a2);
  *(a1 + 68) = ANEDebugInfo::DebugInfoInMem::EncodeString(a1, a3);
  v12 = *a4;
  *(a1 + 162) = *(a4 + 2);
  *(a1 + 160) = v12;
  return a1;
}

void sub_1C04550B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v2 + 96);
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ANEDebugInfo::DebugInfoInMem::EncodeString(uint64_t a1, uint64_t a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 96), a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  v5 = -1431655765 * ((*(a1 + 144) - *(a1 + 136)) >> 3);
  std::vector<std::string>::push_back[abi:ne200100](a1 + 136, a2);
  *(std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 96), a2) + 10) = v5;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  *(a1 + 92) += v6 + 1;
  return v5;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void ANEDebugInfo::DebugInfoInMem::GetString(ANEDebugInfo::DebugInfoInMem *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 17);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 18) - v3) >> 3) <= a2)
  {
    *(a3 + 23) = 21;
    strcpy(a3, "STR_TBL_OUT_OF_BOUND!");
  }

  else
  {
    v4 = (v3 + 24 * a2);
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *v4, *(v4 + 1));
    }

    else
    {
      v5 = *v4;
      *(a3 + 16) = *(v4 + 2);
      *a3 = v5;
    }
  }
}

uint64_t ANEDebugInfo::DebugInfoInMem::Dump(uint64_t a1, uint64_t *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "CU: ", 4);
  v171 = a1;
  v5 = *(a1 + 136) + 24 * *(a1 + 64);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 136) + 24 * *(a1 + 64);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v177);
  std::ostream::put();
  std::ostream::flush();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Ident string: \n", 15);
  v12 = *(a1 + 136) + 24 * *(a1 + 88);
  v13 = *(v12 + 23);
  if (v13 >= 0)
  {
    v14 = *(a1 + 136) + 24 * *(a1 + 88);
  }

  else
  {
    v14 = *v12;
  }

  if (v13 >= 0)
  {
    v15 = *(v12 + 23);
  }

  else
  {
    v15 = *(v12 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v14, v15);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v177);
  std::ostream::put();
  std::ostream::flush();
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  Proc: ", 8);
  v19 = *(a1 + 136) + 24 * *(a1 + 68);
  v20 = *(v19 + 23);
  if (v20 >= 0)
  {
    v21 = *(a1 + 136) + 24 * *(a1 + 68);
  }

  else
  {
    v21 = *v19;
  }

  if (v20 >= 0)
  {
    v22 = *(v19 + 23);
  }

  else
  {
    v22 = *(v19 + 8);
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v21, v22);
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v177);
  std::ostream::put();
  std::ostream::flush();
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  StringTable: [ # ", 19);
  v26 = MEMORY[0x1C68DA320](v25, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 3));
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "]", 1);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v177);
  std::ostream::put();
  std::ostream::flush();
  v29 = *(a1 + 136);
  v30 = *(v171 + 144);
  if (v29 != v30)
  {
    v31 = MEMORY[0x1E69E5318];
    do
    {
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "     ", 5);
      v33 = *(v29 + 23);
      if (v33 >= 0)
      {
        v34 = v29;
      }

      else
      {
        v34 = *v29;
      }

      if (v33 >= 0)
      {
        v35 = *(v29 + 23);
      }

      else
      {
        v35 = *(v29 + 8);
      }

      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
      std::ios_base::getloc((v36 + *(*v36 - 24)));
      v37 = std::locale::use_facet(&v177, v31);
      (v37->__vftable[2].~facet_0)(v37, 10);
      std::locale::~locale(&v177);
      std::ostream::put();
      std::ostream::flush();
      v29 += 24;
    }

    while (v29 != v30);
  }

  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v38 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
  (v38->__vftable[2].~facet_0)(v38, 10);
  std::locale::~locale(&v177);
  std::ostream::put();
  result = std::ostream::flush();
  v40 = v171;
  if (*(v171 + 161))
  {
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  MaxTDLatency: ", 16);
    v42 = MEMORY[0x1C68DA330](v41, *(v171 + 80));
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " us", 3);
    std::ios_base::getloc((v43 + *(*v43 - 24)));
    v44 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
    (v44->__vftable[2].~facet_0)(v44, 10);
    std::locale::~locale(&v177);
    std::ostream::put();
    result = std::ostream::flush();
    v40 = v171;
  }

  if (*(v40 + 160) == 1)
  {
    *(a2 + *(*a2 - 24) + 24) = 20;
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
    *(v45 + *(*v45 - 24) + 24) = 30;
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Procedure Latency: ", 19);
    v47 = *v46;
    *(v46 + *(*v46 - 24) + 8) = *(v46 + *(*v46 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v46 + *(v47 - 24) + 24) = 10;
    v48 = *(v40 + 72);
    v49 = MEMORY[0x1C68DA330]();
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " ns", 3);
    std::ios_base::getloc((v50 + *(*v50 - 24)));
    v51 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
    (v51->__vftable[2].~facet_0)(v51, 10);
    std::locale::~locale(&v177);
    std::ostream::put();
    std::ostream::flush();
    *(a2 + *(*a2 - 24) + 24) = 20;
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
    *(v52 + *(*v52 - 24) + 24) = 30;
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "NE Domain Frequency: ", 21);
    v54 = *v53;
    *(v53 + *(*v53 - 24) + 8) = *(v53 + *(*v53 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v53 + *(v54 - 24) + 24) = 10;
    v55 = MEMORY[0x1C68DA2F0](*v171 / 1000000000.0);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " GHz", 4);
    std::ios_base::getloc((v56 + *(*v56 - 24)));
    v57 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
    (v57->__vftable[2].~facet_0)(v57, 10);
    std::locale::~locale(&v177);
    std::ostream::put();
    std::ostream::flush();
    *(a2 + *(*a2 - 24) + 24) = 20;
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
    *(v58 + *(*v58 - 24) + 24) = 30;
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "L2 Domain Frequency: ", 21);
    v60 = *v59;
    *(v59 + *(*v59 - 24) + 8) = *(v59 + *(*v59 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v59 + *(v60 - 24) + 24) = 10;
    v61 = MEMORY[0x1C68DA2F0](*(v171 + 8) / 1000000000.0);
    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " GHz", 4);
    std::ios_base::getloc((v62 + *(*v62 - 24)));
    v63 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
    (v63->__vftable[2].~facet_0)(v63, 10);
    std::locale::~locale(&v177);
    std::ostream::put();
    std::ostream::flush();
    *(a2 + *(*a2 - 24) + 24) = 20;
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
    *(v64 + *(*v64 - 24) + 24) = 30;
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "DRAM Bandwidth: ", 16);
    v66 = *v65;
    *(v65 + *(*v65 - 24) + 8) = *(v65 + *(*v65 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v65 + *(v66 - 24) + 24) = 10;
    v67 = MEMORY[0x1C68DA2F0](*(v171 + 24) / 1000000000.0);
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " GB/s", 5);
    std::ios_base::getloc((v68 + *(*v68 - 24)));
    v69 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
    (v69->__vftable[2].~facet_0)(v69, 10);
    std::locale::~locale(&v177);
    std::ostream::put();
    std::ostream::flush();
    *(a2 + *(*a2 - 24) + 24) = 20;
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "============== time are in nanoseconds ==============", 53);
    std::ios_base::getloc((v71 + *(*v71 - 24)));
    v72 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
    (v72->__vftable[2].~facet_0)(v72, 10);
    std::locale::~locale(&v177);
    std::ostream::put();
    result = std::ostream::flush();
    v40 = v171;
  }

  v73 = *(v40 + 40);
  v169 = *(v40 + 48);
  if (v73 == v169)
  {
    return result;
  }

  v74 = a2 + 3;
  v172 = a2 + 1;
  do
  {
    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Source Layers: {", 16);
    std::ios_base::getloc((v75 + *(*v75 - 24)));
    v76 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
    (v76->__vftable[2].~facet_0)(v76, 10);
    std::locale::~locale(&v177);
    std::ostream::put();
    result = std::ostream::flush();
    v77 = *v73;
    v78 = v73[1];
    while (v77 != v78)
    {
      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  ", 2);
      v80 = *(v40 + 136) + 24 * *v77;
      v81 = *(v80 + 23);
      if (v81 >= 0)
      {
        v82 = *(v40 + 136) + 24 * *v77;
      }

      else
      {
        v82 = *v80;
      }

      if (v81 >= 0)
      {
        v83 = *(v80 + 23);
      }

      else
      {
        v83 = *(v80 + 8);
      }

      v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, v82, v83);
      v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "\t[ x ", 5);
      v86 = *v85;
      *(v85 + *(*v85 - 24) + 8) = *(v85 + *(*v85 - 24) + 8) & 0xFFFFFEFB | 4;
      *(v85 + *(v86 - 24) + 8) = *(v85 + *(v86 - 24) + 8) & 0xFFFFFF4F | 0x20;
      *(v85 + *(v86 - 24) + 24) = 2;
      v87 = v77[2];
      v88 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, " ]\t", 3);
      v89 = *(v40 + 136) + 24 * v77[1];
      v90 = *(v89 + 23);
      if (v90 < 0)
      {
        if (*(v89 + 8) == 1)
        {
          v89 = *v89;
LABEL_47:
          if (*v89 == 32)
          {
            goto LABEL_55;
          }
        }
      }

      else if (v90 == 1)
      {
        goto LABEL_47;
      }

      v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "OP: ", 4);
      v92 = *(v40 + 136) + 24 * v77[1];
      v93 = *(v92 + 23);
      if (v93 >= 0)
      {
        v94 = *(v40 + 136) + 24 * v77[1];
      }

      else
      {
        v94 = *v92;
      }

      if (v93 >= 0)
      {
        v95 = *(v92 + 23);
      }

      else
      {
        v95 = *(v92 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, v94, v95);
LABEL_55:
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v96 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
      (v96->__vftable[2].~facet_0)(v96, 10);
      std::locale::~locale(&v177);
      std::ostream::put();
      result = std::ostream::flush();
      v77 += 3;
    }

    if (*(v40 + 160))
    {
      *(v74 + *(*a2 - 24)) = 20;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      v97 = *a2;
      *(v172 + *(*a2 - 24)) = *(v172 + *(*a2 - 24)) & 0xFFFFFEFB | 4;
      *(v172 + *(v97 - 24)) = *(v172 + *(v97 - 24)) & 0xFFFFFF4F | 0x80;
      *(v74 + *(v97 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "ne time", 7);
      *(v74 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v74 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "l2 time", 7);
      *(v74 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v74 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "dram time", 9);
      *(v74 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v74 + *(*a2 - 24)) = 10;
      v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "total time", 10);
      std::ios_base::getloc((v98 + *(*v98 - 24)));
      v99 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
      (v99->__vftable[2].~facet_0)(v99, 10);
      std::locale::~locale(&v177);
      std::ostream::put();
      std::ostream::flush();
      *(v74 + *(*a2 - 24)) = 20;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v74 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "---------", 9);
      *(v74 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v74 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "---------", 9);
      *(v74 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v74 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "---------", 9);
      *(v74 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v74 + *(*a2 - 24)) = 10;
      v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "---------", 9);
      std::ios_base::getloc((v100 + *(*v100 - 24)));
      v101 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
      (v101->__vftable[2].~facet_0)(v101, 10);
      std::locale::~locale(&v177);
      std::ostream::put();
      result = std::ostream::flush();
    }

    v102 = v73;
    v103 = v73[3];
    v170 = v102;
    v173 = v102[4];
    if (v103 != v173)
    {
      v174 = (v103 + 11);
      do
      {
        v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  TD: ", 6);
        v105 = *v104;
        *(v104 + *(*v104 - 24) + 8) = *(v104 + *(*v104 - 24) + 8) & 0xFFFFFEFB | 4;
        *(v104 + *(v105 - 24) + 8) = *(v104 + *(v105 - 24) + 8) & 0xFFFFFF4F | 0x80;
        *(v104 + *(v105 - 24) + 24) = 5;
        v106 = *v103;
        v107 = MEMORY[0x1C68DA310]();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, "\t", 1);
        if (*(v40 + 160) == 1)
        {
          v108 = *(v103 + 1);
          v109 = *(v103 + 2);
          v110 = *(v103 + 3);
          if (v108 <= v109)
          {
            v111 = *(v103 + 2);
          }

          else
          {
            v111 = *(v103 + 1);
          }

          if (v111 <= v110)
          {
            v112 = *(v103 + 3);
          }

          else
          {
            v112 = v111;
          }

          *(v74 + *(*a2 - 24)) = 4;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
          if (v112 == v108)
          {
            v113 = "\x1B[7;31;40m";
          }

          else
          {
            v113 = &unk_1C0472CA1;
          }

          if (v112 == v108)
          {
            v114 = 10;
          }

          else
          {
            v114 = 0;
          }

          v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v113, v114);
          v116 = *v115;
          *(v115 + *(*v115 - 24) + 8) = *(v115 + *(*v115 - 24) + 8) & 0xFFFFFEFB | 4;
          *(v115 + *(v116 - 24) + 8) = *(v115 + *(v116 - 24) + 8) & 0xFFFFFF4F | 0x80;
          *(v115 + *(v116 - 24) + 24) = 10;
          v117 = *(v103 + 1);
          v118 = MEMORY[0x1C68DA330]();
          v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "\x1B[0m", 4);
          *(v119 + *(*v119 - 24) + 24) = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, " ", 1);
          if (v112 == v109)
          {
            v120 = "\x1B[7;31;40m";
          }

          else
          {
            v120 = &unk_1C0472CA1;
          }

          if (v112 == v109)
          {
            v121 = 10;
          }

          else
          {
            v121 = 0;
          }

          v122 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v120, v121);
          v123 = *v122;
          *(v122 + *(*v122 - 24) + 8) = *(v122 + *(*v122 - 24) + 8) & 0xFFFFFEFB | 4;
          *(v122 + *(v123 - 24) + 8) = *(v122 + *(v123 - 24) + 8) & 0xFFFFFF4F | 0x80;
          *(v122 + *(v123 - 24) + 24) = 10;
          v124 = *(v103 + 2);
          v125 = MEMORY[0x1C68DA330]();
          v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, "\x1B[0m", 4);
          *(v126 + *(*v126 - 24) + 24) = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, " ", 1);
          if (v110 >= v111)
          {
            v127 = "\x1B[7;31;40m";
          }

          else
          {
            v127 = &unk_1C0472CA1;
          }

          if (v110 >= v111)
          {
            v128 = 10;
          }

          else
          {
            v128 = 0;
          }

          v129 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v127, v128);
          v130 = *v129;
          *(v129 + *(*v129 - 24) + 8) = *(v129 + *(*v129 - 24) + 8) & 0xFFFFFEFB | 4;
          *(v129 + *(v130 - 24) + 8) = *(v129 + *(v130 - 24) + 8) & 0xFFFFFF4F | 0x80;
          *(v129 + *(v130 - 24) + 24) = 10;
          v131 = *(v103 + 3);
          v132 = MEMORY[0x1C68DA330]();
          v74 = a2 + 3;
          v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v132, "\x1B[0m", 4);
          *(v133 + *(*v133 - 24) + 24) = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v133, " ", 1);
          v134 = *a2;
          *(v172 + *(*a2 - 24)) = *(v172 + *(*a2 - 24)) & 0xFFFFFEFB | 4;
          *(v172 + *(v134 - 24)) = *(v172 + *(v134 - 24)) & 0xFFFFFF4F | 0x80;
          *(a2 + *(v134 - 24) + 24) = 10;
          v40 = v171;
          MEMORY[0x1C68DA330](a2, *(v103 + 4));
        }

        if (*(v40 + 162) == 1)
        {
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v135 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
          (v135->__vftable[2].~facet_0)(v135, 10);
          std::locale::~locale(&v177);
          std::ostream::put();
          std::ostream::flush();
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v136 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
          (v136->__vftable[2].~facet_0)(v136, 10);
          std::locale::~locale(&v177);
          std::ostream::put();
          std::ostream::flush();
          v137 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Perf tracer Info: {", 19);
          std::ios_base::getloc((v137 + *(*v137 - 24)));
          v138 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
          (v138->__vftable[2].~facet_0)(v138, 10);
          std::locale::~locale(&v177);
          std::ostream::put();
          std::ostream::flush();
          v139 = 0;
          v140 = v174;
          while (1)
          {
            ZinIrCompilerParamsUtils::PerfTracerCategoryToString(*(v140 - 1), &v177);
            ZinIrCompilerParamsUtils::PerfTracerMetricToString(*v140, &__p);
            if (v178 != 1)
            {
              break;
            }

            if ((v176 & 1) == 0)
            {
              goto LABEL_115;
            }

            v141 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Counter", 7);
            v142 = MEMORY[0x1C68DA320](v141, v139);
            v143 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v142, ":", 1);
            std::ios_base::getloc((v143 + *(*v143 - 24)));
            v144 = std::locale::use_facet(&v179, MEMORY[0x1E69E5318]);
            (v144->__vftable[2].~facet_0)(v144, 10);
            std::locale::~locale(&v179);
            std::ostream::put();
            std::ostream::flush();
            *(v74 + *(*a2 - 24)) = 10;
            v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
            v146 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, "Category: ", 10);
            if ((v178 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v147 = &v177;
            }

            else
            {
              v147 = v177.__r_.__value_.__r.__words[0];
            }

            if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v177.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v177.__r_.__value_.__l.__size_;
            }

            v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v146, v147, size);
            v150 = *v149;
            *(v149 + *(*v149 - 24) + 8) = *(v149 + *(*v149 - 24) + 8) & 0xFFFFFF4F | 0x80;
            std::ios_base::getloc((v149 + *(v150 - 24)));
            v151 = std::locale::use_facet(&v179, MEMORY[0x1E69E5318]);
            (v151->__vftable[2].~facet_0)(v151, 10);
            std::locale::~locale(&v179);
            std::ostream::put();
            std::ostream::flush();
            *(v74 + *(*a2 - 24)) = 10;
            v152 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
            v153 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v152, "Metric: ", 8);
            if ((v176 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

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
              v155 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v155 = __p.__r_.__value_.__l.__size_;
            }

            v156 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v153, p_p, v155);
            v157 = *v156;
            *(v156 + *(*v156 - 24) + 8) = *(v156 + *(*v156 - 24) + 8) & 0xFFFFFF4F | 0x80;
            std::ios_base::getloc((v156 + *(v157 - 24)));
            v158 = std::locale::use_facet(&v179, MEMORY[0x1E69E5318]);
            (v158->__vftable[2].~facet_0)(v158, 10);
            std::locale::~locale(&v179);
            std::ostream::put();
            std::ostream::flush();
            if (v176 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v178 == 1 && SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v177.__r_.__value_.__l.__data_);
            }

            v140 += 2;
            if (++v139 == 4)
            {
              v159 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "}", 1);
              std::ios_base::getloc((v159 + *(*v159 - 24)));
              v160 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
              (v160->__vftable[2].~facet_0)(v160, 10);
              std::locale::~locale(&v177);
              std::ostream::put();
              std::ostream::flush();
              goto LABEL_117;
            }
          }

          if ((v176 & 1) == 0)
          {
            goto LABEL_117;
          }

          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_117;
          }

          operator delete(__p.__r_.__value_.__l.__data_);
          if ((v178 & 1) == 0)
          {
            goto LABEL_117;
          }

LABEL_115:
          if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v177.__r_.__value_.__l.__data_);
          }
        }

LABEL_117:
        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v161 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
        (v161->__vftable[2].~facet_0)(v161, 10);
        std::locale::~locale(&v177);
        std::ostream::put();
        result = std::ostream::flush();
        if (*(v40 + 161) == 1)
        {
          v162 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "    Violates Max Latency: ", 26);
          v163 = *v162;
          *(v162 + *(*v162 - 24) + 8) = *(v162 + *(*v162 - 24) + 8) & 0xFFFFFEFB | 4;
          *(v162 + *(v163 - 24) + 8) = *(v162 + *(v163 - 24) + 8) & 0xFFFFFF4F | 0x80;
          *(v162 + *(v163 - 24) + 24) = 5;
          if (*(v103 + 4))
          {
            v164 = "true";
          }

          else
          {
            v164 = "false";
          }

          if (*(v103 + 4))
          {
            v165 = 4;
          }

          else
          {
            v165 = 5;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v162, v164, v165);
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v166 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
          (v166->__vftable[2].~facet_0)(v166, 10);
          std::locale::~locale(&v177);
          std::ostream::put();
          result = std::ostream::flush();
        }

        v103 += 18;
        v174 += 18;
      }

      while (v103 != v173);
    }

    if (*(v40 + 160))
    {
      v167 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "}", 1);
      std::ios_base::getloc((v167 + *(*v167 - 24)));
      v168 = std::locale::use_facet(&v177, MEMORY[0x1E69E5318]);
      (v168->__vftable[2].~facet_0)(v168, 10);
      std::locale::~locale(&v177);
      std::ostream::put();
      result = std::ostream::flush();
    }

    v73 = v170 + 6;
  }

  while (v170 + 6 != v169);
  return result;
}
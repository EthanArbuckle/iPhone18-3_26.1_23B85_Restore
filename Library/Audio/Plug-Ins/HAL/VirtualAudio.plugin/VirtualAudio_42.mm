uint64_t sub_37FD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 24;
  result = (*(*(a1 + 24) + 16))(a1 + 24);
  *(v5 - 16) = a2;
  *(v5 - 8) = a3;
  if (result)
  {
    return (*(*v5 + 24))(v5);
  }

  return result;
}

BOOL sub_37FE0C()
{
  CFPreferencesAppSynchronize(@"com.apple.assistant.support");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"Assistant Enabled", @"com.apple.assistant.support", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 0;
  }

  v1 = AppBooleanValue;
  v2 = sub_5544(10);
  v3 = *v2;
  if (*v2)
  {
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v7 = "SystemSettingsManager_Aspen.cpp";
      v8 = 1024;
      v9 = 1803;
      v10 = 2080;
      v11 = "com.apple.assistant.support/Assistant Enabled";
      v12 = 1024;
      v13 = v1;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Preference %s: %u.", buf, 0x22u);
    }
  }

  return v1 != 0;
}

void sub_37FF28(uint64_t a1, unint64_t a2)
{
  v4 = sub_5544(10);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v11 = 136315650;
        v12 = "SystemSettingsManager_Aspen.cpp";
        v13 = 1024;
        v14 = 1765;
        v15 = 2048;
        v16 = a2;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d inProc %p", &v11, 0x1Cu);
      }
    }
  }

  v6 = *(a1 + 384);
  if (v6)
  {
    v7 = (a1 + 384);
    do
    {
      v8 = v6[4];
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = v6[v10];
    }

    while (v6);
    if (v7 != (a1 + 384) && v7[4] <= a2)
    {
      sub_38004C((a1 + 376), v7);
    }
  }
}

void sub_38004C(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_75234(v7, a2);
  v8 = a2[5];
  a2[5] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  operator delete(a2);
}

void sub_380108(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_5544(10);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v15[0] = 136315906;
        *&v15[1] = "SystemSettingsManager_Aspen.cpp";
        v16 = 1024;
        v17 = 1755;
        v18 = 2048;
        v19 = a2;
        v20 = 2048;
        v21 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d inProc %p, inClientData %p", v15, 0x26u);
      }
    }
  }

  v8 = *(a1 + 384);
  if (v8)
  {
    v9 = a1 + 384;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 != a1 + 384 && *(v9 + 32) <= a2)
    {
      v13 = sub_5544(10);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v15[0] = 136315650;
          *&v15[1] = "SystemSettingsManager_Aspen.cpp";
          v16 = 1024;
          v17 = 1757;
          v18 = 2048;
          v19 = a2;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Redundant registration for listener proc at %p will override previous listener", v15, 0x1Cu);
        }
      }
    }
  }

  operator new();
}

void sub_380328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_38037C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_6C5EA0;
  sub_53E8(__p, "SettingListenerMutex");
  *(a1 + 24) = off_6D3C50;
  if (SHIBYTE(v5) < 0)
  {
    sub_54A0((a1 + 32), __p[0], __p[1]);
    v2 = SHIBYTE(v5);
    *(a1 + 56) = 850045863;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 32) = *__p;
    *(a1 + 48) = v5;
    *(a1 + 56) = 850045863;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
  }

  return a1;
}

void sub_38045C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_380478(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_380558(void *a1)
{
  *a1 = off_6C5EA0;
  sub_42A4D8((a1 + 3));

  operator delete();
}

void *sub_3805BC(void *a1)
{
  *a1 = off_6C5EA0;
  sub_42A4D8((a1 + 3));
  return a1;
}

void sub_380600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5544(10);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136316162;
        v11 = "SystemSettingsManager_Aspen.cpp";
        v12 = 1024;
        v13 = 1620;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::SetReduceBassUpdateListener(inProc %p, inClientData %p)", &v10, 0x30u);
      }
    }
  }

  sub_37FD78(*(a1 + 232), a2, a3);
  v8 = sub_5544(10);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136316162;
        v11 = "SystemSettingsManager_Aspen.cpp";
        v12 = 1024;
        v13 = 1625;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::SetReduceBassUpdateListener(inProc %p, inClientData %p)", &v10, 0x30u);
      }
    }
  }
}

void sub_38079C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5544(10);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136316162;
        v11 = "SystemSettingsManager_Aspen.cpp";
        v12 = 1024;
        v13 = 1610;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::SetExternalPowerSourceUpdateListener(inProc %p, inClientData %p)", &v10, 0x30u);
      }
    }
  }

  sub_37FD78(*(a1 + 224), a2, a3);
  v8 = sub_5544(10);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136316162;
        v11 = "SystemSettingsManager_Aspen.cpp";
        v12 = 1024;
        v13 = 1614;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::SetExternalPowerSourceUpdateListener(inProc %p, inClientData %p)", &v10, 0x30u);
      }
    }
  }
}

void sub_380940(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v6 = 136315650;
        v7 = "SystemSettingsManager_Aspen.cpp";
        v8 = 1024;
        v9 = 1450;
        v10 = 2048;
        v11 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateLowPowerModeState()", &v6, 0x1Cu);
      }
    }
  }

  v4 = sub_5544(10);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v6 = 136315650;
        v7 = "SystemSettingsManager_Aspen.cpp";
        v8 = 1024;
        v9 = 1461;
        v10 = 2048;
        v11 = a1;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateLowPowerModeState()", &v6, 0x1Cu);
      }
    }
  }
}

void sub_380A94(unint64_t a1, unint64_t a2)
{
  v4 = sub_5544(10);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315906;
        v16 = "SystemSettingsManager_Aspen.cpp";
        v17 = 1024;
        v18 = 1285;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = a2;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::RemoveLowPowerModeUpdateListener(inProc %p)", &v15, 0x26u);
      }
    }
  }

  v6 = *(a1 + 408);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = (a1 + 408);
  do
  {
    v8 = v6[4];
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 != (a1 + 408) && v7[4] <= a2)
  {
    sub_38004C((a1 + 400), v7);
  }

  else
  {
LABEL_13:
    v11 = sub_5544(10);
    if (*(v11 + 8))
    {
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          v15 = 136315650;
          v16 = "SystemSettingsManager_Aspen.cpp";
          v17 = 1024;
          v18 = 1295;
          v19 = 2048;
          v20 = a2;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Proc at %p is not currently registered as an LPM listener. Ignoring.", &v15, 0x1Cu);
        }
      }
    }
  }

  v13 = sub_5544(10);
  if (*(v13 + 8))
  {
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315906;
        v16 = "SystemSettingsManager_Aspen.cpp";
        v17 = 1024;
        v18 = 1299;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = a2;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::RemoveLowPowerModeListener(inProc %p)", &v15, 0x26u);
      }
    }
  }
}

void sub_380CCC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_5544(10);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v15[0] = 136316162;
        *&v15[1] = "SystemSettingsManager_Aspen.cpp";
        v16 = 1024;
        v17 = 1271;
        v18 = 2048;
        v19 = a1;
        v20 = 2048;
        v21 = a2;
        v22 = 2048;
        v23 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::AddLowPowerUpdateListener(inProc %p, inClientData %p)", v15, 0x30u);
      }
    }
  }

  v8 = *(a1 + 408);
  if (v8)
  {
    v9 = a1 + 408;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 != a1 + 408 && *(v9 + 32) <= a2)
    {
      v13 = sub_5544(10);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v15[0] = 136315650;
          *&v15[1] = "SystemSettingsManager_Aspen.cpp";
          v16 = 1024;
          v17 = 1274;
          v18 = 2048;
          v19 = a2;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Redundant registration for listener proc at %p will override previous listener", v15, 0x1Cu);
        }
      }
    }
  }

  operator new();
}

void sub_380F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_380FE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_5544(10);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v11 = 136315650;
        v12 = "SystemSettingsManager_Aspen.cpp";
        v13 = 1024;
        v14 = 1545;
        v15 = 2048;
        v16 = a2;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d inProc %p", &v11, 0x1Cu);
      }
    }
  }

  v6 = *(a1 + 360);
  if (v6)
  {
    v7 = (a1 + 360);
    do
    {
      v8 = v6[4];
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = v6[v10];
    }

    while (v6);
    if (v7 != (a1 + 360) && v7[4] <= a2)
    {
      sub_38004C((a1 + 352), v7);
    }
  }
}

void sub_381104(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_5544(10);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v15[0] = 136315906;
        *&v15[1] = "SystemSettingsManager_Aspen.cpp";
        v16 = 1024;
        v17 = 1535;
        v18 = 2048;
        v19 = a2;
        v20 = 2048;
        v21 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d inProc %p, inClientData %p", v15, 0x26u);
      }
    }
  }

  v8 = *(a1 + 360);
  if (v8)
  {
    v9 = a1 + 360;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 != a1 + 360 && *(v9 + 32) <= a2)
    {
      v13 = sub_5544(10);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v15[0] = 136315650;
          *&v15[1] = "SystemSettingsManager_Aspen.cpp";
          v16 = 1024;
          v17 = 1537;
          v18 = 2048;
          v19 = a2;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Redundant registration for listener proc at %p will override previous listener", v15, 0x1Cu);
        }
      }
    }
  }

  operator new();
}

void sub_381324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_381380(void *a1)
{
  if (!(*(*a1 + 336))(a1))
  {
    return 1;
  }

  v2 = a1[54];
  v3 = *(v2 + 32);
  result = 1;
  if (v3 > 1668313714)
  {
    if (v3 > 1668576376)
    {
      if (v3 != 1668576377 && v3 != 1668703084)
      {
        return result;
      }

      goto LABEL_35;
    }

    if (v3 != 1668313715)
    {
      if (v3 != 1668505974)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (v3 <= 1668309361)
    {
      if (v3 != 1668182896)
      {
        if (v3 != 1668301427)
        {
          return result;
        }

        goto LABEL_17;
      }

LABEL_11:
      v5 = sub_8703C();
      v6 = (*(*v5 + 112))(v5);
LABEL_36:
      v15 = v6;
      return (v6 != 2 || !sub_34AC2C()) && v15 != 1;
    }

    if (v3 != 1668309362 && v3 != 1668313666)
    {
      return result;
    }
  }

LABEL_17:
  v8 = *(v2 + 36);
  if (v8 > 1919776354)
  {
    if (v8 > 1987081832)
    {
      v9 = v8 == 1987081839;
      v12 = 30313;
    }

    else
    {
      v9 = v8 == 1919776355;
      v12 = 26467;
    }

    v10 = v12 | 0x76700000;
  }

  else if (v8 > 1768779618)
  {
    v9 = v8 == 1768779619;
    v10 = 1768781411;
  }

  else
  {
    v9 = v8 == 1735222132;
    v10 = 1768057203;
  }

  if (v9 || v8 == v10)
  {
LABEL_35:
    v14 = sub_8703C();
    v6 = (*(*v14 + 104))(v14);
    goto LABEL_36;
  }

  return result;
}

void sub_3815B0(unint64_t a1, unint64_t a2)
{
  v4 = sub_5544(10);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315906;
        v16 = "SystemSettingsManager_Aspen.cpp";
        v17 = 1024;
        v18 = 1316;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = a2;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::RemoveANCPreferenceUpdateListener(inProc %p)", &v15, 0x26u);
      }
    }
  }

  v6 = *(a1 + 312);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = (a1 + 312);
  do
  {
    v8 = v6[4];
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 != (a1 + 312) && v7[4] <= a2)
  {
    sub_38004C((a1 + 304), v7);
  }

  else
  {
LABEL_13:
    v11 = sub_5544(10);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v15 = 136315650;
      v16 = "SystemSettingsManager_Aspen.cpp";
      v17 = 1024;
      v18 = 1325;
      v19 = 2048;
      v20 = a2;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Proc at %p is not currently registered as a ANC listener. Ignoring.", &v15, 0x1Cu);
    }
  }

  v13 = sub_5544(10);
  if (*(v13 + 8))
  {
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315906;
        v16 = "SystemSettingsManager_Aspen.cpp";
        v17 = 1024;
        v18 = 1328;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = a2;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::RemoveANCPreferenceUpdateListener(inProc %p)", &v15, 0x26u);
      }
    }
  }
}

void sub_3817E0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_5544(10);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v15[0] = 136316162;
        *&v15[1] = "SystemSettingsManager_Aspen.cpp";
        v16 = 1024;
        v17 = 1305;
        v18 = 2048;
        v19 = a1;
        v20 = 2048;
        v21 = a2;
        v22 = 2048;
        v23 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::AddANCPreferenceUpdateListener(inProc %p, inClientData %p)", v15, 0x30u);
      }
    }
  }

  v8 = *(a1 + 312);
  if (v8)
  {
    v9 = a1 + 312;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 != a1 + 312 && *(v9 + 32) <= a2)
    {
      v13 = sub_5544(10);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v15[0] = 136315650;
          *&v15[1] = "SystemSettingsManager_Aspen.cpp";
          v16 = 1024;
          v17 = 1307;
          v18 = 2048;
          v19 = a2;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Redundant registration for listener proc at %p will override previous listener", v15, 0x1Cu);
        }
      }
    }
  }

  operator new();
}

void sub_381A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_381AF4(unint64_t a1, unint64_t a2)
{
  v4 = sub_5544(10);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315906;
        v16 = "SystemSettingsManager_Aspen.cpp";
        v17 = 1024;
        v18 = 1253;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = a2;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::RemoveHearingAidCompliancePreferenceUpdateListener(inProc %p)", &v15, 0x26u);
      }
    }
  }

  v6 = *(a1 + 288);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = (a1 + 288);
  do
  {
    v8 = v6[4];
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 != (a1 + 288) && v7[4] <= a2)
  {
    sub_38004C((a1 + 280), v7);
  }

  else
  {
LABEL_13:
    v11 = sub_5544(10);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v15 = 136315650;
      v16 = "SystemSettingsManager_Aspen.cpp";
      v17 = 1024;
      v18 = 1262;
      v19 = 2048;
      v20 = a2;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Proc at %p is not currently registered as a HAC listener. Ignoring.", &v15, 0x1Cu);
    }
  }

  v13 = sub_5544(10);
  if (*(v13 + 8))
  {
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315906;
        v16 = "SystemSettingsManager_Aspen.cpp";
        v17 = 1024;
        v18 = 1265;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = a2;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::RemoveHearingAidCompliancePreferenceUpdateListener(inProc %p)", &v15, 0x26u);
      }
    }
  }
}

void sub_381D24(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_5544(10);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v15[0] = 136316162;
        *&v15[1] = "SystemSettingsManager_Aspen.cpp";
        v16 = 1024;
        v17 = 1241;
        v18 = 2048;
        v19 = a1;
        v20 = 2048;
        v21 = a2;
        v22 = 2048;
        v23 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::AddHearingAidCompliancePreferenceUpdateListener(inProc %p, inClientData %p)", v15, 0x30u);
      }
    }
  }

  v8 = *(a1 + 288);
  if (v8)
  {
    v9 = a1 + 288;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 != a1 + 288 && *(v9 + 32) <= a2)
    {
      v13 = sub_5544(10);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v15[0] = 136315650;
          *&v15[1] = "SystemSettingsManager_Aspen.cpp";
          v16 = 1024;
          v17 = 1243;
          v18 = 2048;
          v19 = a2;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Redundant registration for listener proc at %p will override previous listener", v15, 0x1Cu);
        }
      }
    }
  }

  operator new();
}

void sub_381FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_382038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5544(10);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136316162;
        v11 = "SystemSettingsManager_Aspen.cpp";
        v12 = 1024;
        v13 = 1208;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::SetHighQualityPCMPreferenceUpdateListener(inProc %p, inClientData %p)", &v10, 0x30u);
      }
    }
  }

  sub_37FD78(*(a1 + 104), a2, a3);
  v8 = sub_5544(10);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136316162;
        v11 = "SystemSettingsManager_Aspen.cpp";
        v12 = 1024;
        v13 = 1212;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::SetHighQualityPCMPreferenceUpdateListener(inProc %p, inClientData %p)", &v10, 0x30u);
      }
    }
  }
}

void sub_3821CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5544(10);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136316162;
        v11 = "SystemSettingsManager_Aspen.cpp";
        v12 = 1024;
        v13 = 1154;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::SetMultiChannelPreferenceUpdateListener(inProc %p, inClientData %p)", &v10, 0x30u);
      }
    }
  }

  sub_37FD78(*(a1 + 96), a2, a3);
  v8 = sub_5544(10);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136316162;
        v11 = "SystemSettingsManager_Aspen.cpp";
        v12 = 1024;
        v13 = 1158;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::SetMultiChannelPreferenceUpdateListener(inProc %p, inClientData %p)", &v10, 0x30u);
      }
    }
  }
}

uint64_t sub_382368(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = sub_38037C(a1);
  *v6 = off_6C5E80;
  *(v6 + 128) = 0;
  *(v6 + 136) = a2;
  *(a1 + 144) = _Block_copy(a3);
  return a1;
}

void sub_3823D0(_Unwind_Exception *a1)
{
  *v1 = off_6C5EA0;
  sub_42A4D8((v1 + 3));
  _Unwind_Resume(a1);
}

void sub_3824A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_5544(10);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "SystemSettingsManager_Aspen.cpp";
    v6 = 1024;
    v7 = 916;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating VolumeLimit state", &v4, 0x12u);
  }

  sub_38365C(v1);
}

void sub_382568(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_5544(10);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "SystemSettingsManager_Aspen.cpp";
    v6 = 1024;
    v7 = 944;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating VolumeLimit state", &v4, 0x12u);
  }

  sub_38365C(v1);
}

BOOL sub_382630(uint64_t a1)
{
  v2 = *(a1 + 136);
  global_queue = dispatch_get_global_queue(0, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_386C24;
  handler[3] = &unk_6C5ED0;
  handler[4] = a1;
  return notify_register_dispatch(v2, (a1 + 128), global_queue, handler) == 0;
}

void sub_3826CC(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *v17 = 136315650;
        *&v17[4] = "SystemSettingsManager_Aspen.cpp";
        v18 = 1024;
        v19 = 1163;
        v20 = 2048;
        v21 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateSilentModeState()", v17, 0x1Cu);
      }
    }
  }

  v4 = sub_385FFC(*(*(a1 + 88) + 128));
  v5 = v4 != 0;
  if (*(a1 + 8) != v5)
  {
    *(a1 + 8) = v5;
    if (v4)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    v7 = sub_5544(10);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *v17 = 136315650;
      *&v17[4] = "SystemSettingsManager_Aspen.cpp";
      v18 = 1024;
      v19 = 1172;
      v20 = 2080;
      v21 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Silent mode state updated. State is %s.", v17, 0x1Cu);
    }

    v9 = sub_5544(10);
    v10 = sub_5544(16);
    v11 = 0;
    *v17 = 0x100000002;
    v12 = *(v9 + 8);
    while (1)
    {
      v13 = *&v17[v11];
      if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
      {
        break;
      }

      v11 += 4;
      if (v11 == 8)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_20:
        v14 = *v9;
        if (v14)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *v17 = 136315650;
            *&v17[4] = "SystemSettingsManager_Aspen.cpp";
            v18 = 1024;
            v19 = 1176;
            v20 = 2080;
            v21 = v6;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Queueing silent mode notification (%s).", v17, 0x1Cu);
          }
        }

LABEL_23:
        operator new();
      }
    }

    if ((v12 & v13) == 0)
    {
      v9 = v10;
    }

    if (*(v9 + 8))
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v15 = sub_5544(10);
  if (*(v15 + 8))
  {
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
      {
        *v17 = 136315650;
        *&v17[4] = "SystemSettingsManager_Aspen.cpp";
        v18 = 1024;
        v19 = 1180;
        v20 = 2048;
        v21 = a1;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateSilentModeState()", v17, 0x1Cu);
      }
    }
  }
}

void sub_382A2C(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v20 = "SystemSettingsManager_Aspen.cpp";
        v21 = 1024;
        v22 = 1186;
        v23 = 2048;
        v24 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateMultiChannelPreferenceState()", buf, 0x1Cu);
      }
    }
  }

  v4 = CFPreferencesAppSynchronize(@"com.apple.preferences-sounds");
  if (caulk::product::get_device_class(v4) == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  v18 = -1;
  if (!sub_1235F4(@"surround_sound", @"com.apple.preferences-sounds", &v18))
  {
    v7 = sub_5544(10);
    if ((*(v7 + 8) & 1) == 0)
    {
      goto LABEL_22;
    }

    v8 = *v7;
    if (!*v7 || !os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    *buf = 136315650;
    v20 = "SystemSettingsManager_Aspen.cpp";
    v21 = 1024;
    v22 = 301;
    v23 = 2080;
    v24 = "com.apple.preferences-sounds/surround_sound";
    v9 = "%25s:%-5d No preference for %s. Using default.";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEBUG;
    goto LABEL_21;
  }

  v6 = v18;
  if ((v18 - 3) < 4)
  {
    goto LABEL_23;
  }

  if (v18 != 7)
  {
    v12 = sub_5544(10);
    v13 = *v12;
    if (!*v12 || !os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136315650;
    v20 = "SystemSettingsManager_Aspen.cpp";
    v21 = 1024;
    v22 = 295;
    v23 = 2080;
    v24 = "com.apple.preferences-sounds/surround_sound";
    v9 = "%25s:%-5d Raw preference value for %s is out-of-range. Using default.";
    v10 = v13;
    v11 = OS_LOG_TYPE_ERROR;
LABEL_21:
    _os_log_impl(&dword_0, v10, v11, v9, buf, 0x1Cu);
LABEL_22:
    v6 = v5;
    goto LABEL_23;
  }

  if (_os_feature_enabled_impl())
  {
    v6 = 7;
  }

  else
  {
    v6 = 3;
  }

LABEL_23:
  v14 = sub_5544(10);
  v15 = *v14;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v20 = "SystemSettingsManager_Aspen.cpp";
    v21 = 1024;
    v22 = 304;
    v23 = 2080;
    v24 = "com.apple.preferences-sounds/surround_sound";
    v25 = 1024;
    v26 = v6;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %u.", buf, 0x22u);
  }

  if (*(a1 + 12) != v6)
  {
    *(a1 + 12) = v6;
    sub_37F654(*(a1 + 96));
  }

  v16 = sub_5544(10);
  if (*(v16 + 8))
  {
    v17 = *v16;
    if (*v16)
    {
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v20 = "SystemSettingsManager_Aspen.cpp";
        v21 = 1024;
        v22 = 1195;
        v23 = 2048;
        v24 = a1;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateMultiChannelPreferenceState()", buf, 0x1Cu);
      }
    }
  }
}

void sub_382DB0(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v24 = "SystemSettingsManager_Aspen.cpp";
        v25 = 1024;
        v26 = 1218;
        v27 = 2048;
        v28 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateHighQualityPCMPreferenceState()", buf, 0x1Cu);
      }
    }
  }

  v4 = 1752260981;
  CFPreferencesAppSynchronize(@"com.apple.preferences-sounds");
  v22 = -1;
  if (!sub_1235F4(@"highQuality-enabled", @"com.apple.preferences-sounds", &v22))
  {
    v10 = sub_5544(10);
    if ((*(v10 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }

    v11 = *v10;
    if (!*v10 || !os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    *buf = 136315650;
    v24 = "SystemSettingsManager_Aspen.cpp";
    v25 = 1024;
    v26 = 339;
    v27 = 2080;
    v28 = "com.apple.preferences-sounds/highQuality-enabled";
    v7 = "%25s:%-5d No preference for %s. Using default.";
    v8 = v11;
    v9 = OS_LOG_TYPE_DEBUG;
LABEL_15:
    _os_log_impl(&dword_0, v8, v9, v7, buf, 0x1Cu);
    goto LABEL_17;
  }

  if (v22)
  {
    if (v22 == 1)
    {
      goto LABEL_17;
    }

    v5 = sub_5544(10);
    v6 = *v5;
    if (!*v5 || !os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315650;
    v24 = "SystemSettingsManager_Aspen.cpp";
    v25 = 1024;
    v26 = 333;
    v27 = 2080;
    v28 = "com.apple.preferences-sounds/highQuality-enabled";
    v7 = "%25s:%-5d Raw preference value for %s is out-of-range. Using default.";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_15;
  }

  v4 = 1752264550;
LABEL_17:
  v12 = sub_5544(10);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(__p, v4);
    v14 = v21 >= 0 ? __p : __p[0];
    *buf = 136315906;
    v24 = "SystemSettingsManager_Aspen.cpp";
    v25 = 1024;
    v26 = 342;
    v27 = 2080;
    v28 = "com.apple.preferences-sounds/highQuality-enabled";
    v29 = 2080;
    v30 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %s.", buf, 0x26u);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 16) != v4)
  {
    *(a1 + 16) = v4;
    sub_37F654(*(a1 + 104));
    v15 = sub_5544(10);
    if (*(v15 + 8))
    {
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, *(a1 + 16));
          v17 = v21 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v24 = "SystemSettingsManager_Aspen.cpp";
          v25 = 1024;
          v26 = 1225;
          v27 = 2080;
          v28 = v17;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d mHighQualityPCMPrefState is now %s", buf, 0x1Cu);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  v18 = sub_5544(10);
  if (*(v18 + 8))
  {
    v19 = *v18;
    if (*v18)
    {
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v24 = "SystemSettingsManager_Aspen.cpp";
        v25 = 1024;
        v26 = 1228;
        v27 = 2048;
        v28 = a1;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateHighQualityPCMPreferenceState()", buf, 0x1Cu);
      }
    }
  }
}

void sub_3831E0(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v28 = "SystemSettingsManager_Aspen.cpp";
        v29 = 1024;
        v30 = 1334;
        v31 = 2048;
        v32 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateHearingAidCompliancePreferenceState()", buf, 0x1Cu);
      }
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.Accessibility");
  v26 = -1;
  v4 = 560488803;
  if (sub_1235F4(@"HearingAidCompliance", @"com.apple.Accessibility", &v26))
  {
    if (!v26)
    {
      goto LABEL_17;
    }

    if (v26 == 1)
    {
      v4 = 543711587;
      goto LABEL_17;
    }

    v10 = sub_5544(10);
    v11 = *v10;
    if (!*v10 || !os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315650;
    v28 = "SystemSettingsManager_Aspen.cpp";
    v29 = 1024;
    v30 = 371;
    v31 = 2080;
    v32 = "com.apple.Accessibility/HearingAidCompliance";
    v7 = "%25s:%-5d Raw preference value for %s is out-of-range. Using default.";
    v8 = v11;
    v9 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v5 = sub_5544(10);
    if ((*(v5 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }

    v6 = *v5;
    if (!*v5 || !os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    *buf = 136315650;
    v28 = "SystemSettingsManager_Aspen.cpp";
    v29 = 1024;
    v30 = 377;
    v31 = 2080;
    v32 = "com.apple.Accessibility/HearingAidCompliance";
    v7 = "%25s:%-5d No preference for %s. Using default.";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(&dword_0, v8, v9, v7, buf, 0x1Cu);
LABEL_17:
  v12 = sub_5544(10);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(__p, v4);
    v14 = v25 >= 0 ? __p : __p[0];
    *buf = 136315906;
    v28 = "SystemSettingsManager_Aspen.cpp";
    v29 = 1024;
    v30 = 380;
    v31 = 2080;
    v32 = "com.apple.Accessibility/HearingAidCompliance";
    v33 = 2080;
    v34 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %s.", buf, 0x26u);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 20) != v4)
  {
    *(a1 + 20) = v4;
    v15 = *(a1 + 280);
    if (v15 != (a1 + 288))
    {
      do
      {
        sub_37F654(v15[5]);
        v16 = v15[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v15[2];
            v18 = *v17 == v15;
            v15 = v17;
          }

          while (!v18);
        }

        v15 = v17;
      }

      while (v17 != (a1 + 288));
    }

    v19 = sub_5544(10);
    if (*(v19 + 8))
    {
      v20 = *v19;
      if (*v19)
      {
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, *(a1 + 20));
          v21 = v25 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v28 = "SystemSettingsManager_Aspen.cpp";
          v29 = 1024;
          v30 = 1344;
          v31 = 2080;
          v32 = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d mHearingAidCompliancePrefState is now %s", buf, 0x1Cu);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  v22 = sub_5544(10);
  if (*(v22 + 8))
  {
    v23 = *v22;
    if (*v22)
    {
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v28 = "SystemSettingsManager_Aspen.cpp";
        v29 = 1024;
        v30 = 1347;
        v31 = 2048;
        v32 = a1;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateHearingAidCompliancePreferenceState()", buf, 0x1Cu);
      }
    }
  }
}

void sub_38365C(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "SystemSettingsManager_Aspen.cpp";
        v57 = 1024;
        v58 = 1466;
        v59 = 2048;
        *v60 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateSystemAudioEffectsSettings()", buf, 0x1Cu);
      }
    }
  }

  std::mutex::lock((a1 + 496));
  CFPreferencesAppSynchronize(@"com.apple.preferences-sounds");
  v55 = -1;
  if (sub_1235F4(@"latenightmode", @"com.apple.preferences-sounds", &v55))
  {
    LODWORD(v4) = v55;
    if (!v55)
    {
      v5 = 0;
      goto LABEL_20;
    }

    if (v55 == 1)
    {
      v5 = 1;
      goto LABEL_20;
    }

    v10 = sub_5544(10);
    v4 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "SystemSettingsManager_Aspen.cpp";
        v57 = 1024;
        v58 = 147;
        v59 = 2080;
        *v60 = "com.apple.preferences-sounds/latenightmode";
        v7 = "%25s:%-5d Raw preference value for %s is out-of-range. Using default.";
        v8 = v4;
        v9 = OS_LOG_TYPE_ERROR;
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v6 = sub_5544(10);
    if ((*(v6 + 8) & 1) == 0)
    {
      goto LABEL_18;
    }

    v4 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "SystemSettingsManager_Aspen.cpp";
        v57 = 1024;
        v58 = 153;
        v59 = 2080;
        *v60 = "com.apple.preferences-sounds/latenightmode";
        v7 = "%25s:%-5d No preference for %s. Using default.";
        v8 = v4;
        v9 = OS_LOG_TYPE_DEBUG;
LABEL_17:
        _os_log_impl(&dword_0, v8, v9, v7, buf, 0x1Cu);
      }

LABEL_18:
      v5 = 0;
      LODWORD(v4) = 0;
      goto LABEL_20;
    }
  }

  v5 = 0;
LABEL_20:
  v11 = sub_5544(10);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(&__p, v4);
    v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315906;
    *&buf[4] = "SystemSettingsManager_Aspen.cpp";
    v57 = 1024;
    v58 = 156;
    v59 = 2080;
    *v60 = "com.apple.preferences-sounds/latenightmode";
    *&v60[8] = 2080;
    v61 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %s.", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v14 = sub_38691C();
  if (!sub_DD820() || sub_38691C() == 4)
  {
    v15 = 0;
    goto LABEL_30;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  v44 = sub_4650DC(@"enhancedialoguelevel", @"com.apple.preferences-sounds", &__p);
  if (__p.__r_.__value_.__s.__data_[0] != 1)
  {
    v50 = sub_5544(10);
    if ((*(v50 + 8) & 1) == 0)
    {
      goto LABEL_90;
    }

    v51 = *v50;
    if (!*v50 || !os_log_type_enabled(*v50, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_90;
    }

    *buf = 136315650;
    *&buf[4] = "SystemSettingsManager_Aspen.cpp";
    v57 = 1024;
    v58 = 252;
    v59 = 2080;
    *v60 = "com.apple.preferences-sounds/enhancedialoguelevel";
    v47 = "%25s:%-5d No preference for %s. Using default.";
    v48 = v51;
    v49 = OS_LOG_TYPE_DEBUG;
    goto LABEL_89;
  }

  v15 = v44;
  if (v44 >= 4)
  {
    v45 = sub_5544(10);
    v46 = *v45;
    if (!*v45 || !os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 136315650;
    *&buf[4] = "SystemSettingsManager_Aspen.cpp";
    v57 = 1024;
    v58 = 245;
    v59 = 2080;
    *v60 = "com.apple.preferences-sounds/enhancedialog";
    v47 = "%25s:%-5d Raw preference value for %s is out-of-range. Using default.";
    v48 = v46;
    v49 = OS_LOG_TYPE_ERROR;
LABEL_89:
    _os_log_impl(&dword_0, v48, v49, v47, buf, 0x1Cu);
LABEL_90:
    v15 = 0;
  }

  v52 = sub_5544(10);
  v53 = *v52;
  if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "SystemSettingsManager_Aspen.cpp";
    v57 = 1024;
    v58 = 256;
    v59 = 2080;
    *v60 = "com.apple.preferences-sounds/enhancedialoguelevel";
    *&v60[8] = 1024;
    LODWORD(v61) = v15;
    _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %u.", buf, 0x22u);
  }

LABEL_30:
  v16 = *(a1 + 492);
  v17 = sub_C2C1C();
  sub_1F82A0();
  v18 = (*(qword_6E6648 + 8))();
  *(a1 + 492) = v18;
  *(v17 + 8) = v18;
  v19 = sub_17DD1C();
  sub_17DCC4();
  byte_6FF590 |= v19;
  v20 = sub_45A4F0();
  v21 = sub_5544(25);
  v22 = *v21;
  if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = sub_17DD1C();
    v24 = *(a1 + 492) != 0;
    *buf = 136316162;
    *&buf[4] = "SystemSettingsManager_Aspen.cpp";
    v57 = 1024;
    v58 = 1497;
    v59 = 1024;
    *v60 = v23;
    *&v60[4] = 1024;
    *&v60[6] = v24;
    LOWORD(v61) = 1024;
    *(&v61 + 2) = v20;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Current system wide PME state: %u, volume limit state: %u. PME Override state: %u", buf, 0x24u);
  }

  v25 = *v17;
  if (v4 != (*v17 & 1) || v16 != *(v17 + 8))
  {
    goto LABEL_41;
  }

  v26 = (v25 & 4) != 0 ? 5 : 4;
  if (v14 != v26)
  {
    goto LABEL_41;
  }

  if ((v15 != (*(*a1 + 296))(a1)) | v20 & 1)
  {
    v25 = *v17;
LABEL_41:
    v27 = v5 | (4 * (v14 == 5)) | v25 & 0xFFFFFFFFFFFFFFF8;
    v28 = 2;
    if (!((*(a1 + 492) != 0) | v20 & 1))
    {
      v28 = 0;
    }

    *v17 = v28 | v27;
    if (sub_DD820())
    {
      (*(*a1 + 304))(a1, v15);
    }

    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "\n", 1uLL);
    std::string::append(&__p, "System Audio Effects Settings\n", 0x1EuLL);
    std::string::append(&__p, "    Late Night Mode: ", 0x15uLL);
    if (*v17)
    {
      v29 = "on\n";
    }

    else
    {
      v29 = "off\n";
    }

    if (*v17)
    {
      v30 = 3;
    }

    else
    {
      v30 = 4;
    }

    std::string::append(&__p, v29, v30);
    std::string::append(&__p, "    Volume Limit Mode: ", 0x17uLL);
    if ((*v17 & 2) != 0)
    {
      v31 = "on\n";
    }

    else
    {
      v31 = "off\n";
    }

    if ((*v17 & 2) != 0)
    {
      v32 = 3;
    }

    else
    {
      v32 = 4;
    }

    std::string::append(&__p, v31, v32);
    std::string::append(&__p, "    Enhanced Dialog: ", 0x15uLL);
    if ((*v17 & 4) != 0)
    {
      v33 = "on\n";
    }

    else
    {
      v33 = "off\n";
    }

    if ((*v17 & 4) != 0)
    {
      v34 = 3;
    }

    else
    {
      v34 = 4;
    }

    std::string::append(&__p, v33, v34);
    v35 = sub_5544(10);
    v36 = sub_5544(16);
    v37 = 0;
    *buf = 0x100000002;
    v38 = *(v35 + 8);
    while (1)
    {
      v39 = *&buf[v37];
      if (((v38 & v39) != 0) != ((*(v36 + 8) & v39) != 0))
      {
        break;
      }

      v37 += 4;
      if (v37 == 8)
      {
        goto LABEL_69;
      }
    }

    if ((v38 & v39) == 0)
    {
      v35 = v36;
    }

LABEL_69:
    v40 = *v35;
    if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "SystemSettingsManager_Aspen.cpp";
      v57 = 1024;
      v58 = 1522;
      v59 = 2080;
      *v60 = p_p;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "%25s:%-5d System Audio Effects Settings changed. Updated settings and queueing system audio effects notification: %s", buf, 0x1Cu);
    }

    operator new();
  }

  v42 = sub_5544(10);
  if (*(v42 + 8))
  {
    v43 = *v42;
    if (*v42)
    {
      if (os_log_type_enabled(*v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "SystemSettingsManager_Aspen.cpp";
        v57 = 1024;
        v58 = 1529;
        v59 = 2048;
        *v60 = a1;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateSystemAudioEffectsSettings()", buf, 0x1Cu);
      }
    }
  }

  std::mutex::unlock((a1 + 496));
}

void sub_384070(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v21 = 136315650;
        v22 = "SystemSettingsManager_Aspen.cpp";
        v23 = 1024;
        v24 = 1353;
        v25 = 2048;
        v26 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateANCPreferenceState()", &v21, 0x1Cu);
      }
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.Accessibility");
  LOBYTE(v21) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EarpieceNoiseCancellationPreference", @"com.apple.Accessibility", &v21);
  if (v21)
  {
    v5 = AppBooleanValue == 0;
  }

  else
  {
    v6 = sub_5544(10);
    if (*(v6 + 8))
    {
      v7 = *v6;
      if (*v6)
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
        {
          v21 = 136315650;
          v22 = "SystemSettingsManager_Aspen.cpp";
          v23 = 1024;
          v24 = 402;
          v25 = 2080;
          v26 = "com.apple.Accessibility/EarpieceNoiseCancellationPreference";
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d No preference for %s. Using default.", &v21, 0x1Cu);
        }
      }
    }

    v5 = 0;
  }

  v8 = sub_5544(10);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "Off";
    v21 = 136315906;
    v22 = "SystemSettingsManager_Aspen.cpp";
    v23 = 1024;
    v24 = 405;
    v26 = "com.apple.Accessibility/EarpieceNoiseCancellationPreference";
    v25 = 2080;
    if (!v5)
    {
      v10 = "On";
    }

    v27 = 2080;
    v28 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %s.", &v21, 0x26u);
  }

  if (*(a1 + 24) != v5)
  {
    *(a1 + 24) = v5;
    v11 = *(a1 + 304);
    if (v11 != (a1 + 312))
    {
      do
      {
        sub_37F654(v11[5]);
        v12 = v11[1];
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
            v13 = v11[2];
            v14 = *v13 == v11;
            v11 = v13;
          }

          while (!v14);
        }

        v11 = v13;
      }

      while (v13 != (a1 + 312));
    }

    v15 = sub_5544(10);
    if (*(v15 + 8))
    {
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          v17 = "Off";
          v18 = *(a1 + 24);
          v22 = "SystemSettingsManager_Aspen.cpp";
          v21 = 136315650;
          if (!v18)
          {
            v17 = "On";
          }

          v23 = 1024;
          v24 = 1363;
          v25 = 2080;
          v26 = v17;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d mANCPrefState is now %s", &v21, 0x1Cu);
        }
      }
    }
  }

  v19 = sub_5544(10);
  if (*(v19 + 8))
  {
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
      {
        v21 = 136315650;
        v22 = "SystemSettingsManager_Aspen.cpp";
        v23 = 1024;
        v24 = 1366;
        v25 = 2048;
        v26 = a1;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateANCPreferenceState()", &v21, 0x1Cu);
      }
    }
  }
}

void sub_384430(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v21 = 136315650;
        v22 = "SystemSettingsManager_Aspen.cpp";
        v23 = 1024;
        v24 = 1372;
        v25 = 2048;
        v26 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateBTLEHearingAidRingtonePreferenceState()", &v21, 0x1Cu);
      }
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.Accessibility");
  LOBYTE(v21) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"HearingAidRingtoneStreamingPreference", @"com.apple.Accessibility", &v21);
  if (v21)
  {
    v5 = AppBooleanValue == 0;
  }

  else
  {
    v6 = sub_5544(10);
    if (*(v6 + 8))
    {
      v7 = *v6;
      if (*v6)
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
        {
          v21 = 136315650;
          v22 = "SystemSettingsManager_Aspen.cpp";
          v23 = 1024;
          v24 = 460;
          v25 = 2080;
          v26 = "com.apple.Accessibility/HearingAidRingtoneStreamingPreference";
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d No preference for %s. Using default.", &v21, 0x1Cu);
        }
      }
    }

    v5 = 0;
  }

  v8 = sub_5544(10);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "Do Not Play Ringtones To BTLE";
    v21 = 136315906;
    v22 = "SystemSettingsManager_Aspen.cpp";
    v23 = 1024;
    v24 = 463;
    v26 = "com.apple.Accessibility/HearingAidRingtoneStreamingPreference";
    v25 = 2080;
    if (!v5)
    {
      v10 = "Play Ringtones To BTLE";
    }

    v27 = 2080;
    v28 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %s.", &v21, 0x26u);
  }

  if (*(a1 + 28) != v5)
  {
    *(a1 + 28) = v5;
    v11 = *(a1 + 328);
    if (v11 != (a1 + 336))
    {
      do
      {
        sub_37F654(v11[5]);
        v12 = v11[1];
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
            v13 = v11[2];
            v14 = *v13 == v11;
            v11 = v13;
          }

          while (!v14);
        }

        v11 = v13;
      }

      while (v13 != (a1 + 336));
    }

    v15 = sub_5544(10);
    if (*(v15 + 8))
    {
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          v17 = "Do Not Play Ringtones To BTLE";
          v18 = *(a1 + 28);
          v22 = "SystemSettingsManager_Aspen.cpp";
          v21 = 136315650;
          if (!v18)
          {
            v17 = "Play Ringtones To BTLE";
          }

          v23 = 1024;
          v24 = 1382;
          v25 = 2080;
          v26 = v17;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d mBTLEHearingAidRingtonePrefState is now %s", &v21, 0x1Cu);
        }
      }
    }
  }

  v19 = sub_5544(10);
  if (*(v19 + 8))
  {
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
      {
        v21 = 136315650;
        v22 = "SystemSettingsManager_Aspen.cpp";
        v23 = 1024;
        v24 = 1385;
        v25 = 2048;
        v26 = a1;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateBTLEHearingAidRingtonePreferenceState()", &v21, 0x1Cu);
      }
    }
  }
}

void sub_3847F0(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v13 = 136315650;
        v14 = "SystemSettingsManager_Aspen.cpp";
        v15 = 1024;
        v16 = 1391;
        v17 = 2048;
        v18 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateBTLEHearingAidSystemSoundsPreferenceState()", &v13, 0x1Cu);
      }
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.HearingAids");
  LOBYTE(v13) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"HearingAidSystemSoundsStream", @"com.apple.HearingAids", &v13);
  if (v13)
  {
    v5 = AppBooleanValue == 0;
  }

  else
  {
    v6 = sub_5544(10);
    if (*(v6 + 8))
    {
      v7 = *v6;
      if (*v6)
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136315650;
          v14 = "SystemSettingsManager_Aspen.cpp";
          v15 = 1024;
          v16 = 485;
          v17 = 2080;
          v18 = "com.apple.HearingAids/HearingAidSystemSoundsStream";
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d No preference for %s. Using default.", &v13, 0x1Cu);
        }
      }
    }

    v5 = 1;
  }

  v8 = sub_5544(10);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "Do Not Play System Sounds To BTLE";
    v13 = 136315906;
    v14 = "SystemSettingsManager_Aspen.cpp";
    v15 = 1024;
    v16 = 488;
    v18 = "com.apple.HearingAids/HearingAidSystemSoundsStream";
    v17 = 2080;
    if (!v5)
    {
      v10 = "Play System Sounds To BTLE";
    }

    v19 = 2080;
    v20 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %s.", &v13, 0x26u);
  }

  if (*(a1 + 32) != v5)
  {
    *(a1 + 32) = v5;
    operator new();
  }

  v11 = sub_5544(10);
  if (*(v11 + 8))
  {
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = 136315650;
        v14 = "SystemSettingsManager_Aspen.cpp";
        v15 = 1024;
        v16 = 1400;
        v17 = 2048;
        v18 = a1;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateBTLEHearingAidSystemSoundsPreferenceState()", &v13, 0x1Cu);
      }
    }
  }
}

void sub_384B34(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v19 = "SystemSettingsManager_Aspen.cpp";
        v20 = 1024;
        v21 = 1415;
        v22 = 2048;
        v23 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateHearingAidCallAudioRoutingPreferenceState()", buf, 0x1Cu);
      }
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.HearingAids");
  v17 = 0;
  sub_53E8(&__p, "Automatic");
  if (sub_1235F4(@"HearingAidsCallAudioRoute", @"com.apple.HearingAids", &v17))
  {
    if (v17)
    {
      if (v17 == 1)
      {
        if (v16 < 0)
        {
          v15 = 5;
          p_p = __p;
        }

        else
        {
          v16 = 5;
          p_p = &__p;
        }

        strcpy(p_p, "Never");
        v7 = 1;
        goto LABEL_21;
      }

LABEL_14:
      v7 = 2;
      goto LABEL_21;
    }

    if (v16 < 0)
    {
      v15 = 6;
      v8 = __p;
    }

    else
    {
      v16 = 6;
      v8 = &__p;
    }

    v7 = 0;
    strcpy(v8, "Always");
  }

  else
  {
    v5 = sub_5544(10);
    if ((*(v5 + 8) & 1) == 0)
    {
      goto LABEL_14;
    }

    v6 = *v5;
    if (!*v5)
    {
      goto LABEL_14;
    }

    v7 = 2;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "SystemSettingsManager_Aspen.cpp";
      v20 = 1024;
      v21 = 524;
      v22 = 2080;
      v23 = "com.apple.HearingAids/HearingAidsCallAudioRoute";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d No preference for %s. Using default.", buf, 0x1Cu);
    }
  }

LABEL_21:
  v9 = sub_5544(10);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = &__p;
    if (v16 < 0)
    {
      v11 = __p;
    }

    *buf = 136315906;
    v19 = "SystemSettingsManager_Aspen.cpp";
    v20 = 1024;
    v21 = 527;
    v22 = 2080;
    v23 = "com.apple.HearingAids/HearingAidsCallAudioRoute";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %s.", buf, 0x26u);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (*(a1 + 36) != v7)
  {
    *(a1 + 36) = v7;
    operator new();
  }

  v12 = sub_5544(10);
  if (*(v12 + 8))
  {
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v19 = "SystemSettingsManager_Aspen.cpp";
        v20 = 1024;
        v21 = 1424;
        v22 = 2048;
        v23 = a1;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateHearingAidCallAudioRoutingPreferenceState()", buf, 0x1Cu);
      }
    }
  }
}

void sub_384F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_384F48(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v19 = "SystemSettingsManager_Aspen.cpp";
        v20 = 1024;
        v21 = 1430;
        v22 = 2048;
        v23 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateHearingAidMediaAudioRoutingPreferenceState()", buf, 0x1Cu);
      }
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.HearingAids");
  v17 = 0;
  sub_53E8(&__p, "Automatic");
  if (sub_1235F4(@"HearingAidsMediaAudioRoute", @"com.apple.HearingAids", &v17))
  {
    if (v17)
    {
      if (v17 == 1)
      {
        if (v16 < 0)
        {
          v15 = 5;
          p_p = __p;
        }

        else
        {
          v16 = 5;
          p_p = &__p;
        }

        strcpy(p_p, "Never");
        v7 = 1;
        goto LABEL_21;
      }

LABEL_14:
      v7 = 2;
      goto LABEL_21;
    }

    if (v16 < 0)
    {
      v15 = 6;
      v8 = __p;
    }

    else
    {
      v16 = 6;
      v8 = &__p;
    }

    v7 = 0;
    strcpy(v8, "Always");
  }

  else
  {
    v5 = sub_5544(10);
    if ((*(v5 + 8) & 1) == 0)
    {
      goto LABEL_14;
    }

    v6 = *v5;
    if (!*v5)
    {
      goto LABEL_14;
    }

    v7 = 2;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "SystemSettingsManager_Aspen.cpp";
      v20 = 1024;
      v21 = 563;
      v22 = 2080;
      v23 = "com.apple.HearingAids/HearingAidsMediaAudioRoute";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d No preference for %s. Using default.", buf, 0x1Cu);
    }
  }

LABEL_21:
  v9 = sub_5544(10);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = &__p;
    if (v16 < 0)
    {
      v11 = __p;
    }

    *buf = 136315906;
    v19 = "SystemSettingsManager_Aspen.cpp";
    v20 = 1024;
    v21 = 566;
    v22 = 2080;
    v23 = "com.apple.HearingAids/HearingAidsMediaAudioRoute";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %s.", buf, 0x26u);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (*(a1 + 40) != v7)
  {
    *(a1 + 40) = v7;
    operator new();
  }

  v12 = sub_5544(10);
  if (*(v12 + 8))
  {
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v19 = "SystemSettingsManager_Aspen.cpp";
        v20 = 1024;
        v21 = 1439;
        v22 = 2048;
        v23 = a1;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateHearingAidMediaAudioRoutingPreferenceState()", buf, 0x1Cu);
      }
    }
  }
}

void sub_385330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3853D0(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v25 = "SystemSettingsManager_Aspen.cpp";
        v26 = 1024;
        v27 = 1632;
        v28 = 2048;
        v29 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateExternalPowerSourceState()", buf, 0x1Cu);
      }
    }
  }

  v4 = IOPSCopyExternalPowerAdapterDetails();
  cf = v4;
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = CFGetTypeID(v4);
  if (v5 != CFDictionaryGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = cf;
  if (!cf)
  {
LABEL_15:
    v13 = 2;
    goto LABEL_30;
  }

  v7 = sub_A4A44(cf, "FamilyCode");
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = sub_43A54(v7);
  if ((v8 & 0x100000000) == 0)
  {
    goto LABEL_17;
  }

  v9 = v8;
  v10 = sub_5544(10);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v25 = "IOPowerSourcesInterface.cpp";
    v26 = 1024;
    v27 = 35;
    v28 = 1024;
    LODWORD(v29) = v9;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Details dictionary: familyCode %d", buf, 0x18u);
  }

  if ((v9 + 536723450) >= 3)
  {
    v6 = cf;
LABEL_17:
    if (sub_3AD458(v6, "IsWireless"))
    {
      v14 = sub_A4A44(cf, "IsWireless");
      if (!v14)
      {
        v22 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v22, "Could not find item");
      }

      v15 = sub_27CA94(v14);
      v16 = sub_5544(10);
      v17 = *v16;
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = "no";
        v25 = "IOPowerSourcesInterface.cpp";
        *buf = 136315650;
        if (v15)
        {
          v18 = "yes";
        }

        v26 = 1024;
        v27 = 46;
        v28 = 2080;
        v29 = v18;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Details dictionary: IsWireless %s", buf, 0x1Cu);
      }

      if (v15)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_28;
  }

  v12 = 3;
LABEL_28:
  CFRelease(cf);
  v13 = 2 * (v12 != 3);
  if (v12 == 2)
  {
    v13 = 1;
  }

LABEL_30:
  if (*(a1 + 60) != v13)
  {
    *(a1 + 60) = v13;
    sub_37F654(*(a1 + 224));
  }

  v19 = sub_5544(10);
  if (*(v19 + 8))
  {
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v25 = "SystemSettingsManager_Aspen.cpp";
        v26 = 1024;
        v27 = 1656;
        v28 = 2048;
        v29 = a1;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateExternalPowerSourceState()", buf, 0x1Cu);
      }
    }
  }
}

void sub_3857F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_1DC82C(&a10);
  _Unwind_Resume(a1);
}

void sub_385868(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SystemSettingsManager_Aspen.cpp";
        v9 = 1024;
        v10 = 1689;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateVibrationState()", &v7, 0x1Cu);
      }
    }
  }

  v4 = sub_385FFC(*(*(a1 + 240) + 128)) != 0;
  if (*(a1 + 68) != v4)
  {
    *(a1 + 68) = v4;
    sub_37F654(*(a1 + 240));
  }

  v5 = sub_5544(10);
  if (*(v5 + 8))
  {
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SystemSettingsManager_Aspen.cpp";
        v9 = 1024;
        v10 = 1698;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateVibrationState()", &v7, 0x1Cu);
      }
    }
  }
}

void sub_3859E8(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v24 = "SystemSettingsManager_Aspen.cpp";
        v25 = 1024;
        v26 = 1720;
        v27 = 2048;
        v28 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateVoiceOverEnabledState()", buf, 0x1Cu);
      }
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.Accessibility");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"VoiceOverTouchEnabled", @"com.apple.Accessibility", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    v9 = (a1 + 72);
    v11 = atomic_load((a1 + 72));
    if ((v11 & 1) == 0)
    {
      goto LABEL_25;
    }

    LOBYTE(v8) = 0;
    goto LABEL_13;
  }

  v5 = AppBooleanValue;
  v6 = sub_5544(10);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "SystemSettingsManager_Aspen.cpp";
    v25 = 1024;
    v26 = 647;
    v27 = 2080;
    v28 = "com.apple.Accessibility/VoiceOverTouchEnabled";
    v29 = 1024;
    v30 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %u.", buf, 0x22u);
  }

  v8 = v5 != 0;
  v9 = (a1 + 72);
  v10 = atomic_load((a1 + 72));
  if (v8 != (v10 & 1))
  {
LABEL_13:
    atomic_store(v8, (a1 + 72));
    v12 = *(a1 + 376);
    if (v12 != (a1 + 384))
    {
      do
      {
        sub_37F654(v12[5]);
        v13 = v12[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v12[2];
            v15 = *v14 == v12;
            v12 = v14;
          }

          while (!v15);
        }

        v12 = v14;
      }

      while (v14 != (a1 + 384));
    }

    v16 = sub_5544(10);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "Disabled";
      v19 = atomic_load(v9);
      v24 = "SystemSettingsManager_Aspen.cpp";
      *buf = 136315650;
      if (v19)
      {
        v18 = "Enabled";
      }

      v25 = 1024;
      v26 = 1730;
      v27 = 2080;
      v28 = v18;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VoiceOver is now %s", buf, 0x1Cu);
    }
  }

LABEL_25:
  v20 = sub_5544(10);
  if (*(v20 + 8))
  {
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v24 = "SystemSettingsManager_Aspen.cpp";
        v25 = 1024;
        v26 = 1733;
        v27 = 2048;
        v28 = a1;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateVoiceOverEnabledState()", buf, 0x1Cu);
      }
    }
  }
}

void sub_385D1C(uint64_t a1)
{
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v14 = "SystemSettingsManager_Aspen.cpp";
        v15 = 1024;
        v16 = 1703;
        v17 = 2048;
        v18 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateReduceBassState()", buf, 0x1Cu);
      }
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.audio.virtualaudio");
  v12 = 0;
  if (sub_1235F4(@"EnableBassReduction", @"com.apple.audio.virtualaudio", &v12))
  {
    v4 = v12 != 1;
  }

  else
  {
    v5 = sub_5544(10);
    if (*(v5 + 8))
    {
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v14 = "SystemSettingsManager_Aspen.cpp";
          v15 = 1024;
          v16 = 681;
          v17 = 2080;
          v18 = "com.apple.audio.virtualaudio/EnableBassReduction";
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d No preference for %s. Using default.", buf, 0x1Cu);
        }
      }
    }

    v4 = 1;
  }

  v7 = sub_5544(10);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "Enabled";
    v14 = "SystemSettingsManager_Aspen.cpp";
    *buf = 136315906;
    if (!v12)
    {
      v9 = "Disabled";
    }

    v15 = 1024;
    v16 = 685;
    v17 = 2080;
    v18 = "com.apple.audio.virtualaudio/EnableBassReduction";
    v19 = 2080;
    v20 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %s.", buf, 0x26u);
  }

  if (*(a1 + 64) != v4)
  {
    *(a1 + 64) = v4;
    sub_37F654(*(a1 + 232));
  }

  v10 = sub_5544(10);
  if (*(v10 + 8))
  {
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v14 = "SystemSettingsManager_Aspen.cpp";
        v15 = 1024;
        v16 = 1712;
        v17 = 2048;
        v18 = a1;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateReduceBassState()", buf, 0x1Cu);
      }
    }
  }
}

uint64_t sub_385FFC(int a1)
{
  state64 = 0;
  if (notify_get_state(a1, &state64))
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "SystemSettingsManager_Aspen.cpp";
      v8 = 1024;
      v9 = 798;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): notify_get_state() failed.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "notify_get_state() failed.");
  }

  return state64;
}

void sub_386124()
{
  if ((atomic_load_explicit(&qword_6ECB98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6ECB98))
  {
    qword_6ECB90 = dispatch_queue_create("VirtualAudioCarDNDAssertStateQueue", 0);

    __cxa_guard_release(&qword_6ECB98);
  }
}

void sub_386190(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "SystemSettingsManager_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1591;
        *&buf[18] = 2048;
        *&buf[20] = v1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::UpdateCarDNDAssertState()", buf, 0x1Cu);
      }
    }
  }

  sub_386124();
  dispatch_assert_queue_V2(qword_6ECB90);
  v4 = objc_alloc_init(CARAutomaticDNDStatus);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4812000000;
  *&buf[24] = sub_419E40;
  v34 = sub_419E5C;
  v35 = "";
  v37 = 0;
  v38 = 0;
  __p = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_419E70;
  v19[3] = &unk_6D2B30;
  v21 = &v23;
  v22 = buf;
  v5 = dispatch_semaphore_create(0);
  v20 = v5;
  [v4 fetchAutomaticDNDAssertionWithReply:v19];
  v6 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = *sub_5544(10);
    v8 = v7;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 136315394;
      v28 = "CarKitInterface.mm";
      v29 = 1024;
      v30 = 44;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Timed out waiting for semaphore signal.", v27, 0x12u);
    }
  }

  v9 = *sub_5544(10);
  v10 = v9;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (*&buf[8] + 48);
    if (*(*&buf[8] + 71) < 0)
    {
      v11 = *v11;
    }

    *v27 = 136315650;
    v28 = "CarKitInterface.mm";
    v29 = 1024;
    v30 = 45;
    v31 = 2080;
    v32 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s", v27, 0x1Cu);
  }

  v12 = *(v24 + 24);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(buf, 8);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  if (*(v1 + 56) != (v12 ^ 1))
  {
    *(v1 + 56) = v12 ^ 1;
    v13 = sub_5544(10);
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = "Not Active";
        v16 = *(v1 + 56);
        *&buf[4] = "SystemSettingsManager_Aspen.cpp";
        *buf = 136315650;
        if (!v16)
        {
          v15 = "Active";
        }

        *&buf[12] = 1024;
        *&buf[14] = 1598;
        *&buf[18] = 2080;
        *&buf[20] = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mCarDNDAssertState is now %s", buf, 0x1Cu);
      }
    }
  }

  v17 = sub_5544(10);
  if (*(v17 + 8))
  {
    v18 = *v17;
    if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "SystemSettingsManager_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1602;
        *&buf[18] = 2048;
        *&buf[20] = v1;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::UpdateCarDNDAssertState()", buf, 0x1Cu);
      }
    }
  }

  operator delete();
}

void sub_386620(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 buf, __int16 a29, __int16 a30, int a31, int a32, __int16 a33, int a34, __int16 a35, __int16 a36, int a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&buf, 8);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 3)
  {
    v48 = __cxa_begin_catch(a1);
    v49 = sub_5544(14);
    v50 = *v49;
    if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&a17, v48[2]);
      v51 = a17;
      if (a22 >= 0)
      {
        v51 = &a17;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(v45 + 14) = 660;
      a30 = 2080;
      *(v45 + 20) = v51;
      a33 = 2080;
      *(v45 + 30) = "";
      a36 = 1024;
      a37 = 1603;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a22 < 0)
      {
        operator delete(a17);
      }
    }

LABEL_19:
    __cxa_end_catch();
    JUMPOUT(0x3865D0);
  }

  v52 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v53 = v52;
    v54 = sub_5544(14);
    v55 = *v54;
    if (!*v54 || !os_log_type_enabled(*v54, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v56 = (*(*v53 + 16))(v53);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(v45 + 14) = 665;
    a30 = 2080;
    *(v45 + 20) = v56;
    a33 = 2080;
    *(v45 + 30) = "";
    a36 = 1024;
    a37 = 1603;
    v57 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v58 = v55;
    v59 = 44;
  }

  else
  {
    v60 = sub_5544(14);
    v61 = *v60;
    if (!*v60 || !os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(v45 + 14) = 670;
    a30 = 2080;
    *(v45 + 20) = "";
    a33 = 1024;
    *(v45 + 30) = 1603;
    v57 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v58 = v61;
    v59 = 34;
  }

  _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, v57, &buf, v59);
  goto LABEL_19;
}

uint64_t sub_38691C()
{
  CFPreferencesAppSynchronize(@"com.apple.preferences-sounds");
  v14 = -1;
  if (!sub_1235F4(@"enhancedialog", @"com.apple.preferences-sounds", &v14))
  {
    v1 = sub_5544(10);
    if ((*(v1 + 8) & 1) == 0)
    {
      goto LABEL_13;
    }

    v2 = *v1;
    if (!*v1 || !os_log_type_enabled(*v1, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    *buf = 136315650;
    v16 = "SystemSettingsManager_Aspen.cpp";
    v17 = 1024;
    v18 = 193;
    v19 = 2080;
    v20 = "com.apple.preferences-sounds/enhancedialog";
    v3 = "%25s:%-5d No preference for %s. Using default.";
    v4 = v2;
    v5 = OS_LOG_TYPE_DEBUG;
LABEL_12:
    _os_log_impl(&dword_0, v4, v5, v3, buf, 0x1Cu);
    goto LABEL_13;
  }

  if (!v14)
  {
LABEL_13:
    v0 = 4;
    goto LABEL_14;
  }

  if (v14 != 1)
  {
    v6 = sub_5544(10);
    v7 = *v6;
    if (!*v6 || !os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315650;
    v16 = "SystemSettingsManager_Aspen.cpp";
    v17 = 1024;
    v18 = 186;
    v19 = 2080;
    v20 = "com.apple.preferences-sounds/enhancedialog";
    v3 = "%25s:%-5d Raw preference value for %s is out-of-range. Using default.";
    v4 = v7;
    v5 = OS_LOG_TYPE_ERROR;
    goto LABEL_12;
  }

  v0 = 5;
LABEL_14:
  v8 = sub_5544(10);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(__p, v0);
    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315906;
    v16 = "SystemSettingsManager_Aspen.cpp";
    v17 = 1024;
    v18 = 197;
    v19 = 2080;
    v20 = "com.apple.preferences-sounds/enhancedialog";
    v21 = 2080;
    v22 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %s.", buf, 0x26u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v0;
}

uint64_t sub_386B90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6C5F00;
  a2[1] = v2;
  return result;
}

uint64_t sub_386C24(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_386CA4;
  v4[3] = &unk_6C5EB0;
  v4[4] = v2;
  v5 = a2;
  return sub_138DB0(v4);
}

void sub_386CC0(uint64_t a1)
{
  sub_386CF8(a1);

  operator delete();
}

uint64_t sub_386CF8(uint64_t a1)
{
  *a1 = off_6C5E80;
  if (notify_cancel(*(a1 + 128)))
  {
    v2 = sub_5544(10);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "SystemSettingsManager_Aspen.cpp";
        v7 = 1024;
        v8 = 790;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d notify_cancel() failed", &v5, 0x12u);
      }
    }
  }

  _Block_release(*(a1 + 144));
  *a1 = off_6C5EA0;
  sub_42A4D8(a1 + 24);
  return a1;
}

void sub_386E10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_386E2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_1A8C0(v3);
    return 0;
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  v6 = (*(*v5 + 96))(v5, 0, 0);
  if (!v6)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "BluetoothProfiles_Aspen.cpp";
        v28 = 1024;
        v29 = 62;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Bluetooth SCO device returned a NULL stream", buf, 0x12u);
      }
    }
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v7 = (*(*v6 + 104))(v6, &v24);
  if (v7)
  {
    v8 = sub_5544(18);
    v9 = sub_5544(29);
    v10 = 0;
    *buf = 0x100000002;
    v11 = *(v8 + 8);
    while (1)
    {
      v12 = *&buf[v10];
      if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
      {
        break;
      }

      v10 += 4;
      if (v10 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v11 & v12) == 0)
    {
      v8 = v9;
    }

LABEL_13:
    v13 = *v8;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      (*(*v5 + 128))(__p, v5);
      v14 = v23 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "BluetoothProfiles_Aspen.cpp";
      v28 = 1024;
      v29 = 67;
      v30 = 1024;
      v31 = v7;
      v32 = 2080;
      v33 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d getting stream formats from Bluetooth SCO device with UID %s", buf, 0x22u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v24 == v25)
  {
    v17 = 0;
    if (v24)
    {
LABEL_28:
      v25 = v24;
      operator delete(v24);
    }
  }

  else
  {
    v15 = (v24 + 56);
    do
    {
      v16 = *(v15 - 2);
      v17 = v16 > 8000.0;
      v18 = v16 > 8000.0 || v15 == v25;
      v15 += 7;
    }

    while (!v18);
    if (v24)
    {
      goto LABEL_28;
    }
  }

  sub_1A8C0(v4);
  sub_1A8C0(v4);
  if (v17)
  {
    return 0x100000000;
  }

  return 0;
}

void sub_38713C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1A8C0(v13);
  sub_1A8C0(v13);
  _Unwind_Resume(a1);
}

void sub_38717C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_387188(void *a1, int *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  if (*a2 == 1987013732)
  {
    if ((*(*a1 + 48))(a1) != a5)
    {
      v24 = sub_5544(14);
      v25 = *v24;
      if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "BluetoothProfiles_Aspen.cpp";
        v33 = 1024;
        v34 = 826;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyVolumeDecibels", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    v8 = *a6;
    v31 = *a6;
    v9 = sub_5544(18);
    v10 = sub_5544(29);
    v11 = 0;
    *buf = 0x100000002;
    v12 = *(v9 + 8);
    while (1)
    {
      v13 = *&buf[v11];
      if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
      {
        break;
      }

      v11 += 4;
      if (v11 == 8)
      {
        goto LABEL_12;
      }
    }

    if ((v12 & v13) == 0)
    {
      v9 = v10;
    }

LABEL_12:
    v14 = sub_5544(39);
    v15 = 0;
    *buf = 0x100000002;
    v16 = *(v9 + 8);
    while (1)
    {
      v17 = *&buf[v15];
      if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
      {
        break;
      }

      v15 += 4;
      if (v15 == 8)
      {
        goto LABEL_18;
      }
    }

    if ((v16 & v17) == 0)
    {
      v9 = v14;
    }

LABEL_18:
    v18 = *v9;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sub_38758C(&v27, a1 + 1);
      (*(*v27 + 128))(__p);
      if (v30 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "BluetoothProfiles_Aspen.cpp";
      v33 = 1024;
      v34 = 830;
      v35 = 2048;
      v36 = v8;
      v37 = 2080;
      v38 = v19;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting volume to %f dB on SCO device with UID %s", buf, 0x26u);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28)
      {
        sub_1A8C0(v28);
      }
    }

    strcpy(buf, "dlovptuo");
    buf[9] = 0;
    *&buf[10] = 0;
    sub_387700(a1, buf, 0, 0, 4u, &v31);
    v20 = a1[2];
    if (v20)
    {
      v21 = std::__shared_weak_count::lock(v20);
      if (v21)
      {
        v22 = v21;
        v23 = a1[1];
        if (v23)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_6FF5C(v23 + 720, &qword_6ECBE8);
          sub_1A8C0(v22);
        }

        sub_1A8C0(v22);
      }
    }
  }

  else
  {

    sub_387700(a1, a2, a3, a4, a5, a6);
  }
}

void sub_387558(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

void sub_38758C(void *a1, void *a2)
{
  v3 = a2[1];
  if (!v3 || (v5 = std::__shared_weak_count::lock(v3)) == 0 || !*a2)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "BluetoothProfiles_Aspen.cpp";
      v11 = 1024;
      v12 = 52;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to lock owning BT device", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to lock owning BT device");
  }

  *a1 = *a2;
  a1[1] = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);

  sub_1A8C0(v5);
}

void sub_3876D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_387700(uint64_t a1, int *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_2EEE68(v15, a2, a3, a4, a5, a6);
        sub_1A8C0(v14);
      }

      sub_1A8C0(v14);
    }
  }
}

void sub_3877C0(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

void sub_3877DC(uint64_t a1, int *a2, UInt32 a3, const void *a4, UInt32 *a5, uint64_t a6)
{
  v8 = *a2;
  if (*a2 <= 1835103843)
  {
    switch(v8)
    {
      case 1064725619:
        v15 = *a5;
        if (v15 != (*(*a1 + 48))(a1))
        {
          v28 = sub_5544(14);
          v29 = *v28;
          if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
          {
            buf.mSelector = 136315394;
            *&buf.mScope = "BluetoothProfiles_Aspen.cpp";
            v43 = 1024;
            v44 = 805;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kVirtualAudioDevicePropertyHasKnowableVolumeLevels", &buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = 561211770;
        }

        break;
      case 1684633187:
        break;
      case 1819046768:
        *a6 = *(a1 + 32);
        return;
      default:
        goto LABEL_24;
    }

    *a6 = 0;
    return;
  }

  if (v8 == 1987013732)
  {
    v16 = *a5;
    if (v16 != (*(*a1 + 48))(a1))
    {
      v31 = sub_5544(14);
      v32 = *v31;
      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "BluetoothProfiles_Aspen.cpp";
        v43 = 1024;
        v44 = 788;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyVolumeDecibels", &buf, 0x12u);
      }

      v33 = __cxa_allocate_exception(0x10uLL);
      *v33 = &off_6DDDD0;
      v33[2] = 561211770;
    }

    v17 = *(a1 + 16);
    v11 = 0.0;
    if (!v17)
    {
      goto LABEL_23;
    }

    v18 = std::__shared_weak_count::lock(v17);
    if (!v18)
    {
      goto LABEL_23;
    }

    v13 = v18;
    v19 = *(a1 + 8);
    if (!v19)
    {
      goto LABEL_22;
    }

    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    strcpy(&buf, "dlovptuo");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    v40 = 4;
    v41 = 0.0;
    sub_5C0D8(v19, &buf, 0, 0, &v40, &v41);
    v11 = v41;
    goto LABEL_21;
  }

  if (v8 != 1986290211)
  {
    if (v8 != 1835103844)
    {
LABEL_24:

      sub_387E58(a1, a2, a3, a4, a5, a6);
      return;
    }

    v9 = *a5;
    if (v9 != (*(*a1 + 48))(a1))
    {
      v34 = sub_5544(14);
      v35 = *v34;
      if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "BluetoothProfiles_Aspen.cpp";
        v43 = 1024;
        v44 = 781;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyMinimumAudibleVolumeDecibels", &buf, 0x12u);
      }

      v36 = __cxa_allocate_exception(0x10uLL);
      *v36 = &off_6DDDD0;
      v36[2] = 561211770;
    }

    v10 = *(a1 + 16);
    v11 = 0.0;
    if (!v10 || (v12 = std::__shared_weak_count::lock(v10)) == 0)
    {
LABEL_23:
      *a6 = v11;
      return;
    }

    v13 = v12;
    v14 = *(a1 + 8);
    if (!v14)
    {
LABEL_22:
      sub_1A8C0(v13);
      goto LABEL_23;
    }

    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = sub_387E08(v14);
LABEL_21:
    sub_1A8C0(v13);
    goto LABEL_22;
  }

  v20 = *a5;
  if (v20 != (*(*a1 + 48))(a1))
  {
    v37 = sub_5544(14);
    v38 = *v37;
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "BluetoothProfiles_Aspen.cpp";
      v43 = 1024;
      v44 = 795;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyVolumeRangeDecibels", &buf, 0x12u);
    }

    v39 = __cxa_allocate_exception(0x10uLL);
    *v39 = &off_6DDDD0;
    v39[2] = 561211770;
  }

  v21 = *(a1 + 16);
  v22 = 0.0;
  if (v21)
  {
    v23 = std::__shared_weak_count::lock(v21);
    v24 = 0;
    if (v23)
    {
      v25 = v23;
      v26 = *(a1 + 8);
      if (v26)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v22 = sub_387E08(v26);
        v24 = v27;
        sub_1A8C0(v25);
      }

      sub_1A8C0(v25);
    }
  }

  else
  {
    v24 = 0;
  }

  *a6 = v22;
  *(a6 + 8) = v24;
}

void sub_387DDC(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

double sub_387E08(uint64_t a1)
{
  *&v3.mSelector = 0x6F75747076646223;
  v3.mElement = 0;
  v2 = 16;
  sub_5C0D8(a1, &v3, 0, 0, &v2, &v4);
  return v4;
}

void sub_387E58(uint64_t a1, uint64_t a2, UInt32 a3, const void *a4, UInt32 *a5, int *a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_2F0868(v15, a2, a3, a4, a5, a6);
        sub_1A8C0(v14);
      }

      sub_1A8C0(v14);
    }
  }
}

void sub_387F18(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_387F34(uint64_t a1, int *a2, UInt32 a3, const void *a4)
{
  sub_38758C(&v13, (a1 + 8));
  v8 = (*(*v13 + 120))(v13);
  *&v12.mSelector = 0x6F757470766F6C64;
  v12.mElement = 0;
  HasProperty = AudioObjectHasProperty(v8, &v12);
  if (v14)
  {
    sub_1A8C0(v14);
  }

  v10 = *a2;
  if (*a2 <= 1835103843)
  {
    result = 4;
    if (v10 == 1064725619)
    {
      return result;
    }

    if (v10 != 1684633187)
    {
      if (v10 == 1701015154)
      {
        return result;
      }

      return sub_3880A0(a1, a2, a3, a4);
    }

    return 4 * (HasProperty != 0);
  }

  if (v10 == 1835103844)
  {
    return 4 * (HasProperty != 0);
  }

  if (v10 != 1986290211)
  {
    if (v10 != 1987013732)
    {
      return sub_3880A0(a1, a2, a3, a4);
    }

    return 4 * (HasProperty != 0);
  }

  return 16 * (HasProperty != 0);
}

void sub_388088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3880A0(uint64_t a1, int *a2, UInt32 a3, const void *a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = std::__shared_weak_count::lock(v5);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = sub_2F1068(v11, a2, a3, a4);
    sub_1A8C0(v10);
  }

  else
  {
    v12 = 0;
  }

  sub_1A8C0(v10);
  return v12;
}

void sub_38813C(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

BOOL sub_388158(uint64_t a1, int *a2)
{
  v2 = 0;
  v3 = *a2;
  if (*a2 <= 1835103843)
  {
    if (v3 != 1064725619 && v3 != 1684633187 && v3 != 1701015154)
    {
      goto LABEL_18;
    }

    return v2;
  }

  if (v3 == 1835103844 || v3 == 1986290211)
  {
    return v2;
  }

  if (v3 == 1987013732)
  {
    sub_38758C(&v10, (a1 + 8));
    v7 = (*(*v10 + 120))(v10);
    *&v9.mSelector = 0x6F757470766F6C64;
    v9.mElement = 0;
    v2 = AudioObjectHasProperty(v7, &v9) != 0;
    if (v11)
    {
      sub_1A8C0(v11);
    }

    return v2;
  }

LABEL_18:

  return sub_388294(a1, a2);
}

void sub_38827C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_388294(uint64_t a1, int *a2)
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
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = sub_2F13C0(v7, a2);
    sub_1A8C0(v6);
  }

  else
  {
    v8 = 0;
  }

  sub_1A8C0(v6);
  return v8;
}

void sub_388318(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_388334(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1835103843)
  {
    if (v2 != 1835103844 && v2 != 1987013732 && v2 != 1986290211)
    {
      goto LABEL_19;
    }

LABEL_14:
    sub_38758C(&v11, (a1 + 8));
    v7 = (*(*v11 + 120))(v11);
    *&v10.mSelector = 0x6F757470766F6C64;
    v10.mElement = 0;
    v8 = AudioObjectHasProperty(v7, &v10) != 0;
    if (v12)
    {
      sub_1A8C0(v12);
    }

    return v8;
  }

  switch(v2)
  {
    case 1064725619:
      v3 = a2[1];
      v4 = 1869968496;
      return v3 == v4;
    case 1684633187:
      goto LABEL_14;
    case 1701015154:
      v3 = a2[1];
      v4 = 1768845428;
      return v3 == v4;
  }

LABEL_19:

  return sub_388494(a1, a2);
}

void sub_38847C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_388494(uint64_t a1, uint64_t *a2)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(a1 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = sub_2F147C(v6, &v9);
    sub_1A8C0(v5);
  }

  else
  {
    v7 = 0;
  }

  sub_1A8C0(v5);
  return v7;
}

void sub_388524(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

void sub_388540(uint64_t a1)
{
  sub_388698(a1, 0x6373636Fu);
  sub_388698(a1, 0x6473636Fu);
  sub_DB458(&v5, &qword_6ECC10);
  sub_38873C(v10, a1, &v5);
  sub_B0484(&v11, v10);
  sub_65310(v10);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v7);
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  for (i = v12; i != &v11; i = i[1])
  {
    v3 = i[2];
    v4 = i[3];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = v3;
    v6 = v4;
    sub_3887F8(a1, &v5);
    if (v4)
    {
      sub_1A8C0(v4);
      sub_1A8C0(v4);
    }
  }

  sub_87980(&v11);
}

void sub_388650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_65310((v2 - 96));
  sub_46934(va);
  _Unwind_Resume(a1);
}

void sub_388698(uint64_t a1, AudioObjectPropertySelector a2)
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
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_2EEDE8(v7, a2);
        sub_1A8C0(v6);
      }

      sub_1A8C0(v6);
    }
  }
}

void sub_388720(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

void sub_38873C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_8;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = *(a2 + 8);
  if (!v9)
  {
    sub_1A8C0(v7);
LABEL_8:
    *a1 = a1;
    a1[1] = a1;
    a1[2] = 0;
    return;
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_161C7C(a1, v9, a3);
  sub_1A8C0(v8);

  sub_1A8C0(v8);
}

void sub_3887DC(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

void sub_3887F8(uint64_t a1, void *a2)
{
  if (!sub_3889F0(a1, *(*a2 + 144)))
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136315394;
      *&v13[4] = "BluetoothProfiles_Aspen.cpp";
      *&v13[12] = 1024;
      *&v13[14] = 310;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *a2;
        v9 = a2[1];
        *v13 = v8;
        *&v13[8] = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_4B0AE8(v7, v13);
        if (v9)
        {
          sub_1A8C0(v9);
        }

        sub_1A8C0(v6);
      }

      sub_1A8C0(v6);
    }
  }
}

void sub_3889AC(_Unwind_Exception *a1)
{
  v3 = v2;
  if (v3)
  {
    sub_1A8C0(v3);
  }

  sub_1A8C0(v1);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

BOOL sub_3889F0(uint64_t a1, int a2)
{
  v3 = (*(*a1 + 96))(a1);
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_46980(&v9, *v3, v3[1], (v3[1] - *v3) >> 2);
  if (v9 == v10)
  {
    v6 = 0;
    if (!v9)
    {
      return v6;
    }

    goto LABEL_9;
  }

  v4 = v9 + 4;
  do
  {
    v5 = *(v4 - 1);
    v6 = v5 == a2;
    v7 = v5 == a2 || v4 == v10;
    v4 += 4;
  }

  while (!v7);
  if (v9)
  {
LABEL_9:
    operator delete(v9);
  }

  return v6;
}

void sub_388A98(uint64_t a1)
{
  sub_38758C(&v26, (a1 + 8));
  v1 = v26;
  v2 = (*(*v26 + 120))(v26);
  sub_24FF44(v25, 0x706D6274u, v2);
  (*(*v1 + 128))(buf, v1);
  sub_2F2860(&v24, buf);
  if (SBYTE3(v35) < 0)
  {
    operator delete(*buf);
  }

  v3 = sub_53E8(buf, "-tsco");
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v24;
  }

  else
  {
    v4 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v6 = std::string::insert(v3, 0, v4, size);
  v23 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE3(v35) < 0)
  {
    operator delete(*buf);
  }

  if ((byte_6E8373 & 1) == 0)
  {
    LODWORD(__dst) = 0;
    if (sub_1235F4(@"AutoRouteToBluetoothSCO", @"com.apple.audio.virtualaudio", &__dst))
    {
      v7 = *sub_5544(14);
      v8 = v7;
      if (v7)
      {
        v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        v10 = __dst;
        if (v9)
        {
          *buf = 136315906;
          *&buf[4] = "RunTimeDefaults.mm";
          v32 = 1024;
          v33 = 299;
          v34 = 2080;
          v35 = "AutoRouteToBluetoothSCO";
          v36 = 1024;
          LODWORD(v37) = __dst;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
        }
      }

      else
      {
        v10 = __dst;
      }

      byte_6E8372 = v10 != 0;
    }

    byte_6E8373 = 1;
  }

  v11 = byte_6E8372;
  v12 = sub_5544(18);
  v13 = sub_5544(29);
  v14 = 0;
  *buf = 0x100000002;
  v15 = *(v12 + 8);
  while (1)
  {
    v16 = *&buf[v14];
    if (((v15 & v16) != 0) != ((*(v13 + 8) & v16) != 0))
    {
      break;
    }

    v14 += 4;
    if (v14 == 8)
    {
      goto LABEL_25;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

LABEL_25:
  v17 = *v12;
  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_2500F8(&__dst, v25);
    v18 = v30;
    v19 = __dst;
    (*(*v1 + 128))(__p, v1);
    p_dst = &__dst;
    if (v18 < 0)
    {
      p_dst = v19;
    }

    if (v28 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    *buf = 136316162;
    *&buf[4] = "BluetoothProfiles_Aspen.cpp";
    v22 = "non-routable";
    v32 = 1024;
    v33 = 630;
    if (v11)
    {
      v22 = "routable";
    }

    v34 = 2080;
    v35 = p_dst;
    v36 = 2080;
    v37 = v21;
    v38 = 2080;
    v39 = v22;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a bluetooth headset input port with name %s and UID %s, %s", buf, 0x30u);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    if (v30 < 0)
    {
      operator delete(__dst);
    }
  }

  atomic_load(v1 + 133);
  operator new();
}

void sub_38978C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  sub_367FA8(v40);
  std::__shared_weak_count::~__shared_weak_count(v39);
  operator delete(v42);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_1E19A0(&a29);
  if (a39)
  {
    sub_1A8C0(a39);
  }

  _Unwind_Resume(a1);
}

void sub_389A68(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_389A80(uint64_t a1, std::__shared_weak_count_vtbl **a2)
{
  if (!sub_3889F0(a1, (*a2)[3].__get_deleter))
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v12.__vftable) = 136315394;
      *(&v12.__vftable + 4) = "BluetoothProfiles_Aspen.cpp";
      WORD2(v12.__shared_owners_) = 1024;
      *(&v12.__shared_owners_ + 6) = 304;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = a2[1];
        v12.__vftable = *a2;
        v12.__shared_owners_ = v8;
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        sub_4B4820(v7, &v12);
        if (v12.__shared_owners_)
        {
          sub_1A8C0(v12.__shared_owners_);
        }

        sub_1A8C0(v6);
      }

      sub_1A8C0(v6);
    }
  }
}

void sub_389C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  sub_1A8C0(v10);
  sub_1A8C0(v10);
  _Unwind_Resume(a1);
}

void sub_389C74(uint64_t a1, AudioObjectPropertySelector a2)
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
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_2E8C00(v7, a2);
        sub_1A8C0(v6);
      }

      sub_1A8C0(v6);
    }
  }
}

void sub_389CFC(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

void sub_389D40(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C6150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_389DDC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C6230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_389E78(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C61F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_389EEC(void *a1)
{
  *a1 = off_6D2450;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_389F68(void *a1)
{
  *a1 = off_6D2450;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_389FC0(uint64_t a1)
{
  sub_38758C(&v4, (a1 + 8));
  v2 = (*(*v4 + 120))(v4);
  sub_38A068((a1 + 32), v2);
  v3 = v5;
  if (v5)
  {

    sub_1A8C0(v3);
  }
}

void sub_38A050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_38A068(const void **a1, AudioObjectID a2)
{
  sub_47BD8((a1 + 1));
  v10 = a2;
  *&inAddress.mSelector = 0x676C6F6277736167;
  inAddress.mElement = 0;
  sub_6A8C4(v6, &v10, &inAddress);
  if (v8)
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  sub_47C90((a1 + 1));
}

void sub_38A0F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26C0(a1 + 40);
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRetain(*(a1 + 32));
  }

  sub_3174(a1 + 40);
  if (v4)
  {
    sub_1227C(a2, v4);
    CFRelease(v4);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_38A174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_47BA4(va);
  _Unwind_Resume(a1);
}

void sub_38A190(uint64_t a1, int *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  v12 = *a2;
  if (*a2 == 1937204590)
  {
    if (sub_289D20())
    {
      return;
    }

LABEL_16:

    sub_387700(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (v12 != 2004050279)
  {
    if (v12 == 1937208176)
    {
      v13 = sub_5544(18);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, *a2);
        if (v18 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        *buf = 136315650;
        v20 = "BluetoothProfiles_Aspen.cpp";
        v21 = 1024;
        v22 = 539;
        v23 = 2080;
        v24 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Property %s is read-only", buf, 0x1Cu);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return;
    }

    goto LABEL_16;
  }

  sub_387700(a1, a2, a3, a4, a5, a6);
  v16 = *(*a1 + 80);

  v16(a1);
}

void sub_38A3C8(uint64_t a1, _DWORD *a2, UInt32 a3, const void *a4, UInt32 *a5, int *a6)
{
  v12 = *a2 == 1937208176 || *a2 == 1937204590;
  if (v12 && (sub_289D20() & 1) != 0)
  {
    *a6 = 1;
    *a5 = 4;
  }

  else
  {

    sub_387E58(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_38A480(uint64_t a1, int *a2, UInt32 a3, const void *a4)
{
  v8 = *a2 == 1937208176 || *a2 == 1937204590;
  if (v8 && (sub_289D20() & 1) != 0)
  {
    return 4;
  }

  return sub_3880A0(a1, a2, a3, a4);
}

BOOL sub_38A510(uint64_t a1, int *a2)
{
  if (*a2 == 1937204590)
  {
    if (sub_289D20())
    {
      return 1;
    }
  }

  else if (*a2 == 1937208176 && (sub_289D20() & 1) != 0)
  {
    return 0;
  }

  return sub_388294(a1, a2);
}

unint64_t sub_38A598(uint64_t a1, uint64_t *a2)
{
  v4 = *a2 == 1937208176 || *a2 == 1937204590;
  if (v4 && (sub_289D20() & 1) != 0)
  {
    return 1;
  }

  return sub_388494(a1, a2);
}

void sub_38A60C(uint64_t a1)
{
  sub_DB458(&v5, &qword_6ECBF8);
  sub_38873C(v10, a1, &v5);
  sub_B0484(&v11, v10);
  sub_65310(v10);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v7);
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  for (i = v12; i != &v11; i = i[1])
  {
    v3 = i[2];
    v4 = i[3];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = v3;
    v6 = v4;
    sub_3887F8(a1, &v5);
    if (v4)
    {
      sub_1A8C0(v4);
      sub_1A8C0(v4);
    }
  }

  sub_87980(&v11);
}

void sub_38A700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_65310((v2 - 96));
  sub_46934(va);
  _Unwind_Resume(a1);
}

void sub_38A748(uint64_t a1)
{
  sub_38758C(&v40, (a1 + 8));
  v2 = v40;
  v3 = (*(*v40 + 120))(v40);
  sub_38A068((a1 + 32), v3);
  v4 = (*(*v2 + 120))(v2);
  if (sub_289D20())
  {
    v5 = 0x100000001;
  }

  else
  {
    *v51 = v4;
    strcpy(&buf, "pswsbolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    v6 = sub_542F0(v51, &buf, 0, 0);
    *(&v8 + 1) = v7;
    *&v8 = v6;
    v5 = v8 >> 32;
  }

  *(v2 + 604) = v5;
  *(v2 + 608) = BYTE4(v5);
  v9 = sub_5544(18);
  v10 = sub_5544(29);
  v11 = 0;
  *&buf.mSelector = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *(&buf.mSelector + v11);
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      goto LABEL_10;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

LABEL_10:
  v14 = *v9;
  if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = (*(*v2 + 120))(v2);
    if (*(v2 + 608) == 1 && *(v2 + 604))
    {
      v16 = "yes";
    }

    else
    {
      v16 = "no";
    }

    buf.mSelector = 136315906;
    *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
    v46 = 1024;
    v47 = 466;
    v48 = 1024;
    v49 = v15;
    v50[0] = 2080;
    *&v50[1] = v16;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Software volume supported for Bluetooth device %u: %s", &buf, 0x22u);
  }

  v17 = (*(*v2 + 120))(v2);
  sub_24FF44(&buf, 0x70687042u, v17);
  (*(*v2 + 128))(v51, v2);
  sub_2F2860(&v39, v51);
  if (SBYTE3(v55) < 0)
  {
    operator delete(*v51);
  }

  v18 = sub_53E8(v51, "-tacl");
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v39;
  }

  else
  {
    v19 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  v21 = std::string::insert(v18, 0, v19, size);
  v38 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE3(v55) < 0)
  {
    operator delete(*v51);
  }

  if ((byte_6E8375 & 1) == 0)
  {
    inAddress.mSelector = 0;
    if (sub_1235F4(@"AutoRouteToBluetoothA2DP", @"com.apple.audio.virtualaudio", &inAddress))
    {
      v22 = *sub_5544(14);
      v23 = v22;
      if (v22)
      {
        v24 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        mSelector = inAddress.mSelector;
        if (v24)
        {
          *v51 = 136315906;
          *&v51[4] = "RunTimeDefaults.mm";
          v52 = 1024;
          v53 = 324;
          v54 = 2080;
          v55 = "AutoRouteToBluetoothA2DP";
          v56 = 1024;
          LODWORD(v57) = inAddress.mSelector;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", v51, 0x22u);
        }
      }

      else
      {
        mSelector = inAddress.mSelector;
      }

      byte_6E8374 = mSelector != 0;
    }

    byte_6E8375 = 1;
  }

  v26 = byte_6E8374;
  v27 = sub_5544(18);
  v28 = sub_5544(29);
  v29 = 0;
  *v51 = 0x100000002;
  v30 = *(v27 + 8);
  while (1)
  {
    v31 = *&v51[v29];
    if (((v30 & v31) != 0) != ((*(v28 + 8) & v31) != 0))
    {
      break;
    }

    v29 += 4;
    if (v29 == 8)
    {
      goto LABEL_41;
    }
  }

  if ((v30 & v31) == 0)
  {
    v27 = v28;
  }

LABEL_41:
  v32 = *v27;
  if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_2500F8(&inAddress, &buf);
    v33 = v44;
    v34 = *&inAddress.mSelector;
    (*(*v2 + 128))(__p, v2);
    p_inAddress = &inAddress;
    if (v33 < 0)
    {
      p_inAddress = v34;
    }

    if (v42 >= 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    *v51 = 136316162;
    *&v51[4] = "BluetoothProfiles_Aspen.cpp";
    v37 = "non-routable";
    v52 = 1024;
    v53 = 385;
    if (v26)
    {
      v37 = "routable";
    }

    v54 = 2080;
    v55 = p_inAddress;
    v56 = 2080;
    v57 = v36;
    v58 = 2080;
    v59 = v37;
    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a bluetooth A2DP headphones port with name %s and UID %s, %s", v51, 0x30u);
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }

    if (v44 < 0)
    {
      operator delete(*&inAddress.mSelector);
    }
  }

  atomic_load((v2 + 532));
  operator new();
}

void sub_38B738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::__shared_weak_count *a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  sub_28C4D0(v42);
  sub_367FA8(v41);
  std::__shared_weak_count::~__shared_weak_count(v40);
  operator delete(v44);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_1E19A0(&a40);
  if (a29)
  {
    sub_1A8C0(a29);
  }

  _Unwind_Resume(a1);
}

void sub_38B95C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C61C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_38B9D0(void *a1)
{
  sub_38BA08(a1);

  operator delete();
}

void *sub_38BA08(void *a1)
{
  *a1 = off_6D23D8;
  sub_13AB3C((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = off_6D2450;
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_38BA94(uint64_t a1, int *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  if (((*(*a1 + 32))(a1) & 1) == 0)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "BluetoothProfiles_Aspen.cpp";
      v17 = 1024;
      v18 = 1046;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): unknown property", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  sub_387700(a1, a2, a3, a4, a5, a6);
}

void sub_38BC14(uint64_t a1, _DWORD *a2, uint64_t a3, const void *a4, UInt32 *a5, int *a6)
{
  if (((*(*a1 + 32))(a1) & 1) == 0)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "BluetoothProfiles_Aspen.cpp";
      v21 = 1024;
      v22 = 1028;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): unknown property", &v19, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v16 = 2003332927;
    goto LABEL_16;
  }

  if (*a2 == 1064725619)
  {
    v12 = *a5;
    if (v12 == (*(*a1 + 48))(a1, a2, a3, a4))
    {
      *a6 = 0;
      return;
    }

    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315394;
        v20 = "BluetoothProfiles_Aspen.cpp";
        v21 = 1024;
        v22 = 1033;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kVirtualAudioDevicePropertyHasKnowableVolumeLevels", &v19, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v16 = 561211770;
LABEL_16:
    exception[2] = v16;
  }

  sub_387E58(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_38BEB8(uint64_t a1, int *a2, UInt32 a3, const void *a4)
{
  if (*a2 == 1064725619)
  {
    return 4;
  }

  else
  {
    return sub_3880A0(a1, a2, a3, a4);
  }
}

unint64_t sub_38BEF8(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1064725619)
  {
    return *(a2 + 4) == 1869968496;
  }

  else
  {
    return sub_388494(a1, a2);
  }
}

void sub_38BF28(uint64_t a1)
{
  sub_DB458(&v5, &qword_6ECC28);
  sub_38873C(v10, a1, &v5);
  sub_B0484(&v11, v10);
  sub_65310(v10);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v7);
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  for (i = v12; i != &v11; i = i[1])
  {
    v3 = i[2];
    v4 = i[3];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = v3;
    v6 = v4;
    sub_3887F8(a1, &v5);
    if (v4)
    {
      sub_1A8C0(v4);
      sub_1A8C0(v4);
    }
  }

  sub_87980(&v11);
}

void sub_38C01C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_65310((v2 - 96));
  sub_46934(va);
  _Unwind_Resume(a1);
}

uint64_t sub_38C064(void *a1)
{
  sub_38758C(&v66, a1 + 1);
  v2 = v66;
  v3 = (*(*v66 + 88))(v66, 1);
  if (!v3)
  {
    v10 = sub_5544(18);
    v11 = sub_5544(29);
    v12 = 0;
    *buf = 0x100000002;
    v13 = *(v10 + 8);
    while (1)
    {
      v14 = *&buf[v12];
      if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
      {
        break;
      }

      v12 += 4;
      if (v12 == 8)
      {
        goto LABEL_63;
      }
    }

    if ((v13 & v14) == 0)
    {
      v10 = v11;
    }

LABEL_63:
    v51 = *v10;
    if (v51 && os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "BluetoothProfiles_Aspen.cpp";
      v75 = 1024;
      v76 = 871;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth LE device has no output streams", buf, 0x12u);
    }
  }

  v4 = (*(*v2 + 88))(v2, 0);
  if (v4)
  {
    v5 = sub_5544(18);
    v6 = sub_5544(29);
    v7 = 0;
    *buf = 0x100000002;
    v8 = *(v5 + 8);
    while (1)
    {
      v9 = *&buf[v7];
      if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
      {
        break;
      }

      v7 += 4;
      if (v7 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_13:
    v15 = *v5;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "BluetoothProfiles_Aspen.cpp";
      v75 = 1024;
      v76 = 874;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth LE device has input streams", buf, 0x12u);
    }
  }

  v16 = (*(*v2 + 312))(v2);
  if ((v16 & 0x100000000) != 0)
  {
    v17 = sub_5544(18);
    v18 = sub_5544(29);
    v19 = 0;
    *buf = 0x100000002;
    v20 = *(v17 + 8);
    while (1)
    {
      v21 = *&buf[v19];
      if (((v20 & v21) != 0) != ((*(v18 + 8) & v21) != 0))
      {
        break;
      }

      v19 += 4;
      if (v19 == 8)
      {
        goto LABEL_23;
      }
    }

    if ((v20 & v21) == 0)
    {
      v17 = v18;
    }

LABEL_23:
    v22 = *v17;
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "BluetoothProfiles_Aspen.cpp";
      v75 = 1024;
      v76 = 878;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth LE device has tap input stream", buf, 0x12u);
    }
  }

  v23 = sub_8703C();
  (*(*v23 + 120))(v23);
  if (v3)
  {
    v24 = (*(*v2 + 120))(v2);
    sub_24FF44(buf, 0x706C656Fu, v24);
    v25 = sub_5544(18);
    v26 = sub_5544(29);
    v27 = 0;
    *v77 = 0x100000002;
    v28 = *(v25 + 8);
    while (1)
    {
      v29 = *&v77[v27];
      if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
      {
        break;
      }

      v27 += 4;
      if (v27 == 8)
      {
        goto LABEL_34;
      }
    }

    if ((v28 & v29) == 0)
    {
      v25 = v26;
    }

LABEL_34:
    v30 = *v25;
    if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      sub_2500F8(v72, buf);
      v31 = SHIBYTE(v73);
      v32 = v72[0];
      (*(*v2 + 128))(&__p, v2);
      v33 = v72;
      if (v31 < 0)
      {
        v33 = v32;
      }

      if (v71 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *v77 = 136315906;
      *&v77[4] = "BluetoothProfiles_Aspen.cpp";
      *&v77[12] = 1024;
      *&v77[14] = 891;
      *&v77[18] = 2080;
      *&v77[20] = v33;
      v78 = 2080;
      v79 = p_p;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating a bluetooth LE output port with name %s and UID %s", v77, 0x26u);
      if (v71 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72[0]);
      }
    }

    (*(*v2 + 128))(v68, v2);
    atomic_load(v2 + 133);
    operator new();
  }

  v35 = (*(*v2 + 88))(v2, 0);
  v36 = HIDWORD(v16) & 1;
  if ((v35 - v36) >= 2)
  {
    v63 = sub_5544(14);
    v64 = *v63;
    if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "BluetoothProfiles_Aspen.cpp";
      v75 = 1024;
      v76 = 899;
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (v4)
  {
    if (v35 != v36)
    {
      v45 = (*(*v2 + 120))(v2);
      sub_24FF44(buf, 0x706C6569u, v45);
      v46 = sub_5544(18);
      v47 = sub_5544(29);
      v48 = 0;
      *v77 = 0x100000002;
      v49 = *(v46 + 8);
      while (1)
      {
        v50 = *&v77[v48];
        if (((v49 & v50) != 0) != ((*(v47 + 8) & v50) != 0))
        {
          break;
        }

        v48 += 4;
        if (v48 == 8)
        {
          goto LABEL_68;
        }
      }

      if ((v49 & v50) == 0)
      {
        v46 = v47;
      }

LABEL_68:
      v52 = *v46;
      if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        sub_2500F8(v72, buf);
        v53 = SHIBYTE(v73);
        v54 = v72[0];
        (*(*v2 + 128))(&__p, v2);
        v55 = v72;
        if (v53 < 0)
        {
          v55 = v54;
        }

        v56 = &__p;
        if (v71 < 0)
        {
          v56 = __p;
        }

        *v77 = 136315906;
        *&v77[4] = "BluetoothProfiles_Aspen.cpp";
        *&v77[12] = 1024;
        *&v77[14] = 908;
        *&v77[18] = 2080;
        *&v77[20] = v55;
        v78 = 2080;
        v79 = v56;
        _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating a bluetooth LE input port with name %s and UID %s", v77, 0x26u);
        if (v71 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72[0]);
        }
      }

      (*(*v2 + 128))(v68, v2);
      atomic_load(v2 + 133);
      operator new();
    }

    if ((v16 & 0x100000000) != 0)
    {
      v37 = (*(*v2 + 120))(v2);
      sub_24FF44(buf, 0x706C6574u, v37);
      (*(*v2 + 128))(v77, v2);
      v38 = std::string::append(v77, "-reference", 0xAuLL);
      v39 = *&v38->__r_.__value_.__l.__data_;
      v73 = v38->__r_.__value_.__r.__words[2];
      *v72 = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if ((v77[23] & 0x80000000) != 0)
      {
        operator delete(*v77);
      }

      v40 = sub_5544(18);
      v41 = sub_5544(29);
      v42 = 0;
      *v77 = 0x100000002;
      v43 = *(v40 + 8);
      while (1)
      {
        v44 = *&v77[v42];
        if (((v43 & v44) != 0) != ((*(v41 + 8) & v44) != 0))
        {
          break;
        }

        v42 += 4;
        if (v42 == 8)
        {
          goto LABEL_81;
        }
      }

      if ((v43 & v44) == 0)
      {
        v40 = v41;
      }

LABEL_81:
      v57 = *v40;
      if (v57 && os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        sub_2500F8(&__p, buf);
        v58 = v71;
        v59 = __p;
        (*(*v2 + 128))(v68, v2);
        v60 = &__p;
        if (v58 < 0)
        {
          v60 = v59;
        }

        v61 = v68;
        if (v69 < 0)
        {
          v61 = v68[0];
        }

        *v77 = 136315906;
        *&v77[4] = "BluetoothProfiles_Aspen.cpp";
        *&v77[12] = 1024;
        *&v77[14] = 922;
        *&v77[18] = 2080;
        *&v77[20] = v60;
        v78 = 2080;
        v79 = v61;
        _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating a bluetooth LE Tap input port with name %s and UID %s", v77, 0x26u);
        if (v69 < 0)
        {
          operator delete(v68[0]);
        }

        if (v71 < 0)
        {
          operator delete(__p);
        }
      }

      memset(v77, 0, 24);
      atomic_load(v2 + 133);
      operator new();
    }
  }

  *v77 = 1;
  strcpy(buf, "tcabbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  (*(*a1 + 64))(a1, buf, 0, 0, 4, v77);
  if (v67)
  {
    sub_1A8C0(v67);
  }

  return 1;
}

void sub_38CF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  sub_1E19A0(&a36);
  if (v37)
  {
    sub_1A8C0(v37);
  }

  if (v36)
  {
    sub_1A8C0(v36);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(a1);
}

void sub_38D1CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C6118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_38D268(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C60E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_38D2DC(void *a1)
{
  *a1 = off_6D2450;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_38D348(void *a1)
{
  *a1 = off_6D2450;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_38D394(uint64_t a1)
{
  sub_14034C(a1 - 80);

  operator delete();
}

BOOL sub_38D3D8(uint64_t a1)
{
  if (!sub_306614(a1))
  {
    return 0;
  }

  v2 = *(a1 + 512);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 504);
  if (v4)
  {
    v5 = atomic_load((v4 + 624));
    v6 = v5 == *(a1 + 880);
  }

  else
  {
    v6 = 0;
  }

  sub_1A8C0(v3);
  return v6;
}

void sub_38D444(uint64_t a1)
{
  sub_14034C(a1);

  operator delete();
}

void sub_38D4A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C6188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_38D51C(int ****a1)
{
  v1 = (**a1)[1];
  v2 = ****a1;
  if (v2 > 1953260896)
  {
    if (v2 != 1953260897 && v2 != 1953719151)
    {
LABEL_10:
      v3 = sub_5544(14);
      v4 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "BluetoothProfiles_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 348;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported Bluetooth profile", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 2003332927;
    }
  }

  else if (v2 != 1818583905 && v2 != 1952539500)
  {
    goto LABEL_10;
  }

  sub_38758C(&v6, v1 + 1);
  strcpy(buf, "dlovptuo");
  buf[9] = 0;
  *&buf[10] = 0;
  if ((*(*v1 + 32))(v1, buf))
  {
    operator new();
  }

  sub_15DCEC();
}

void sub_38D9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_38DA4C()
{
  if (dword_6E4A08 >= 5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid config");
  }

  return *(&off_6CD108 + dword_6E4A08);
}

_BYTE *sub_38DAD0(_BYTE *a1, unsigned int a2)
{
  if (a2 < 0xDD6)
  {
    v2 = off_6C6258[a2];
  }

  else
  {
    v2 = "NONAME";
  }

  return sub_53E8(a1, v2);
}

uint64_t sub_38DAF4(unsigned int a1)
{
  if (a1 > 0xDD5 || *(sub_38DA4C() + 40 * a1) == -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid ANC parameter id");
  }

  return sub_38DA4C() + 40 * a1;
}

uint64_t sub_38DB90(uint64_t a1)
{
  v1 = *(a1 + 424);
  v2 = *(a1 + 432);
  if (v1 == v2)
  {
    return 1;
  }

  v3 = v1 + 16;
  do
  {
    v4 = (*(*(*(v3 - 16) + 80) + 32))();
    if (v4)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 16;
  }

  while (!v5);
  return v4 ^ 1u;
}

uint64_t sub_38DC0C(uint64_t a1)
{
  v1 = *(a1 + 504);
  v2 = *(a1 + 512);
  if (v1 == v2)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "MasterVolumeControl_HAL_Common.cpp";
      v10 = 1024;
      v11 = 213;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): volume control list is empty", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  do
  {
    v3 = *v1;
    v1 += 2;
    result = (*(*(v3 + 80) + 24))();
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_38DD58(uint64_t a1)
{
  v1 = *(a1 + 504);
  v2 = *(a1 + 512);
  if (v1 == v2)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "MasterVolumeControl_HAL_Common.cpp";
      v10 = 1024;
      v11 = 204;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): volume control list is empty", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  do
  {
    v3 = *v1;
    v1 += 2;
    result = (*(*(v3 + 80) + 16))();
  }

  while (v1 != v2);
  return result;
}

void sub_38DE9C(uint64_t a1)
{
  sub_38DED8(a1 - 80);

  operator delete();
}

uint64_t sub_38DED8(uint64_t a1)
{
  *a1 = off_6DB088;
  *(a1 + 80) = off_6DB150;
  v3 = (a1 + 504);
  sub_72C14(&v3);

  return sub_1405C0(a1);
}

uint64_t sub_38DF68(uint64_t a1)
{
  v1 = *(a1 + 504);
  v2 = *(a1 + 512);
  if (v1 == v2)
  {
    return 1;
  }

  v3 = v1 + 16;
  do
  {
    v4 = (*(*(*(v3 - 16) + 80) + 32))();
    if (v4)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 16;
  }

  while (!v5);
  return v4 ^ 1u;
}

void sub_38DFDC(uint64_t a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 504);
  v3 = *(a1 + 512);
  if (v2 != v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *v2;
      v8 = *(v2 + 1);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
        v6 = a2[1];
        v5 = a2[2];
      }

      if (v6 >= v5)
      {
        v9 = *a2;
        v10 = v6 - *a2;
        v11 = (v10 >> 4) + 1;
        if (v11 >> 60)
        {
          sub_189A00();
        }

        if ((v5 - v9) >> 3 > v11)
        {
          v11 = (v5 - v9) >> 3;
        }

        if (v5 - v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          if (!(v12 >> 60))
          {
            operator new();
          }

          sub_6ACD8();
        }

        v13 = (16 * (v10 >> 4));
        v5 = 0;
        *v13 = v7;
        v6 = (v13 + 1);
        memcpy(0, v9, v10);
        *a2 = 0;
        a2[1] = v6;
        a2[2] = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v6 = v7;
        v6 += 16;
      }

      a2[1] = v6;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_38E12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  sub_202B60(&a12);
  _Unwind_Resume(a1);
}

void *sub_38E158(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *v21 = 136315394;
      *&v21[4] = "MasterVolumeControl_HAL_Common.cpp";
      *&v21[12] = 1024;
      *&v21[14] = 185;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inSubVolumeControl is NULL]: Argument inSubVolumeControl is NULL", v21, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "Argument inSubVolumeControl is NULL");
  }

  v3 = result;
  v4 = result[64];
  v5 = result[65];
  if (v4 >= v5)
  {
    v7 = result[63];
    v8 = (v4 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_189A00();
    }

    v10 = v5 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v23 = v3 + 63;
    if (v11)
    {
      sub_1DC690(v11);
    }

    v12 = (16 * v8);
    *v12 = v2;
    v12[1] = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v6 = 16 * v8 + 16;
    v13 = v3[63];
    v14 = v3[64] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = v3[63];
    v3[63] = v15;
    v3[64] = v6;
    v17 = v3[65];
    v3[65] = 0;
    *&v21[16] = v16;
    v22 = v17;
    *v21 = v16;
    *&v21[8] = v16;
    result = sub_A0650(v21);
  }

  else
  {
    *v4 = v2;
    v4[1] = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v6 = (v4 + 2);
  }

  v3[64] = v6;
  return result;
}

uint64_t sub_38E358(uint64_t a1)
{
  v1 = *(a1 + 504);
  v2 = *(a1 + 512);
  if (v1 == v2)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "MasterVolumeControl_HAL_Common.cpp";
      v10 = 1024;
      v11 = 177;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): volume control list is empty", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  do
  {
    v3 = *v1;
    v1 += 2;
    result = (*(*v3 + 120))(v3);
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_38E49C(uint64_t a1, float a2)
{
  v2 = *(a1 + 504);
  v3 = *(a1 + 512);
  if (v2 == v3)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MasterVolumeControl_HAL_Common.cpp";
      v16 = 1024;
      v17 = 159;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): volume control list is empty", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  LOBYTE(v5) = 1;
  do
  {
    if (((*(**v2 + 112))(a2) & 1) == 0)
    {
      v6 = sub_5544(19);
      v7 = sub_5544(39);
      v8 = 0;
      *buf = 0x100000002;
      v9 = *(v6 + 8);
      while (1)
      {
        v10 = *&buf[v8];
        if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
        {
          break;
        }

        v8 += 4;
        if (v8 == 8)
        {
          goto LABEL_10;
        }
      }

      if ((v9 & v10) == 0)
      {
        v6 = v7;
      }

LABEL_10:
      v5 = *v6;
      if (v5)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "MasterVolumeControl_HAL_Common.cpp";
          v16 = 1024;
          v17 = 166;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d A call to StoreDefaultVolumeDecibels failed", buf, 0x12u);
        }

        LOBYTE(v5) = 0;
      }
    }

    v2 += 16;
  }

  while (v2 != v3);
  return v5 & 1;
}

uint64_t sub_38E6FC(uint64_t a1)
{
  v1 = *(*sub_38E748(a1, 0) + 104);

  return v1();
}

uint64_t sub_38E748(uint64_t a1, int a2)
{
  v2 = (a1 + 504);
  v3 = *(a1 + 504);
  v4 = *(a1 + 512);
  v5 = *(a1 + 504);
  if (v5 == v4)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "MasterVolumeControl_HAL_Common.cpp";
      v14 = 1024;
      v15 = 229;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): volume control list is empty", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  while ((*(**v5 + 152))() != a2)
  {
    v5 += 16;
    if (v5 == v4)
    {
      v5 = v4;
      break;
    }
  }

  if (v5 == *(a1 + 512))
  {
    v5 = *v2;
  }

  return *v5;
}

uint64_t sub_38E8D4(uint64_t a1)
{
  v1 = *(*sub_38E748(a1, 0) + 96);

  return v1();
}

void sub_38E920(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 504);
  v5 = *(a1 + 512);
  if (v4 == v5)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "MasterVolumeControl_HAL_Common.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 137;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): volume control list is empty", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  do
  {
    v9 = *v4;
    memset(__p, 0, sizeof(__p));
    sub_20A634(__p, *a2, a2[1], (a2[1] - *a2) >> 4);
    (*(*v9 + 88))(v9, __p, a3, a4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v4 += 2;
  }

  while (v4 != v5);
}

void sub_38EAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_38EAE8(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2[1] <= *a2)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v15 = *(a2 + 1);
      v21 = 136315906;
      v22 = "MasterVolumeControl_HAL_Common.cpp";
      v23 = 1024;
      v24 = 124;
      v25 = 2048;
      v26 = v15;
      v27 = 2048;
      v28 = v16;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Argument desiredVolumeCurveRangeDB's mMaximum (%f) <= mMinimum (%f)", &v21, 0x26u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "Argument desiredVolumeCurveRangeDB's mMaximum (%f) <= mMinimum (%f)");
  }

  v6 = *(a1 + 504);
  v7 = *(a1 + 512);
  if (v6 == v7)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "MasterVolumeControl_HAL_Common.cpp";
      v23 = 1024;
      v24 = 126;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): volume control list is empty", &v21, 0x12u);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    *v20 = &off_6DDDD0;
    v20[2] = 2003332927;
  }

  do
  {
    v11 = *v6;
    v6 += 2;
    result = (*(*v11 + 80))(v11, a2, a3, a4, a5);
  }

  while (v6 != v7);
  return result;
}

uint64_t sub_38ED48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 504);
  v5 = *(a1 + 512);
  if (v4 == v5)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MasterVolumeControl_HAL_Common.cpp";
      v20 = 1024;
      v21 = 99;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): volume control list is empty", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  LOBYTE(v9) = 1;
  do
  {
    if (((*(**v4 + 64))(*v4, a2, a3, a4) & 1) == 0)
    {
      v10 = sub_5544(19);
      v11 = sub_5544(39);
      v12 = 0;
      *buf = 0x100000002;
      v13 = *(v10 + 8);
      while (1)
      {
        v14 = *&buf[v12];
        if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
        {
          break;
        }

        v12 += 4;
        if (v12 == 8)
        {
          goto LABEL_10;
        }
      }

      if ((v13 & v14) == 0)
      {
        v10 = v11;
      }

LABEL_10:
      v9 = *v10;
      if (v9)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "MasterVolumeControl_HAL_Common.cpp";
          v20 = 1024;
          v21 = 106;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d A call to UnregisterRelayedListener failed", buf, 0x12u);
        }

        LOBYTE(v9) = 0;
      }
    }

    v4 += 2;
  }

  while (v4 != v5);
  return v9 & 1;
}

uint64_t sub_38EFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 504);
  v5 = *(a1 + 512);
  if (v4 == v5)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MasterVolumeControl_HAL_Common.cpp";
      v20 = 1024;
      v21 = 81;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): volume control list is empty", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  LOBYTE(v9) = 1;
  do
  {
    if (((*(**v4 + 56))(*v4, a2, a3, a4) & 1) == 0)
    {
      v10 = sub_5544(19);
      v11 = sub_5544(39);
      v12 = 0;
      *buf = 0x100000002;
      v13 = *(v10 + 8);
      while (1)
      {
        v14 = *&buf[v12];
        if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
        {
          break;
        }

        v12 += 4;
        if (v12 == 8)
        {
          goto LABEL_10;
        }
      }

      if ((v13 & v14) == 0)
      {
        v10 = v11;
      }

LABEL_10:
      v9 = *v10;
      if (v9)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "MasterVolumeControl_HAL_Common.cpp";
          v20 = 1024;
          v21 = 88;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d A call to RegisterRelayedListener failed", buf, 0x12u);
        }

        LOBYTE(v9) = 0;
      }
    }

    v4 += 2;
  }

  while (v4 != v5);
  return v9 & 1;
}

uint64_t sub_38F228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (!*v18 || !os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v28 = 136315394;
    v29 = "MasterVolumeControl_HAL_Common.cpp";
    v30 = 1024;
    v31 = 58;
    v20 = "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element";
LABEL_25:
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, v20, &v28, 0x12u);
LABEL_26:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v24 = 2003332927;
    goto LABEL_27;
  }

  if ((*(*a1 + 32))(a1, a2, a3, a4) > a5)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "MasterVolumeControl_HAL_Common.cpp";
      v30 = 1024;
      v31 = 59;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): Data size insufficient.", &v28, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v24 = 561211770;
LABEL_27:
    exception[2] = v24;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "MasterVolumeControl_HAL_Common.cpp";
      v30 = 1024;
      v31 = 60;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnsupportedOperationError): Property is not settable.", &v28, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v24 = 1970171760;
    goto LABEL_27;
  }

  v12 = *(a2 + 8);
  if ((v12 + 1) <= 1)
  {
    v14 = a1[63];
    v13 = a1[64];
    if (v14 != v13)
    {
      do
      {
        v15 = *v14;
        v14 += 2;
        result = (*(*v15 + 48))(v15, a2, a3, a4, a5, a6);
      }

      while (v14 != v13);
      return result;
    }

    v27 = sub_5544(14);
    v19 = *v27;
    if (!*v27 || !os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v28 = 136315394;
    v29 = "MasterVolumeControl_HAL_Common.cpp";
    v30 = 1024;
    v31 = 66;
    v20 = "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): volume control list is empty";
    goto LABEL_25;
  }

  v17 = *(*sub_38E748(a1, v12) + 48);

  return v17();
}

uint64_t sub_38F668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "MasterVolumeControl_HAL_Common.cpp";
      v20 = 1024;
      v21 = 49;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", &v18, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v15 = 2003332927;
LABEL_14:
    exception[2] = v15;
  }

  if ((*(*a1 + 32))(a1, a2, a3, a4) > *a5)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "MasterVolumeControl_HAL_Common.cpp";
      v20 = 1024;
      v21 = 50;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): Data size insufficient.", &v18, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v15 = 561211770;
    goto LABEL_14;
  }

  v10 = *(*sub_38E748(a1, *(a2 + 8)) + 40);

  return v10();
}

uint64_t sub_38F8EC(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "MasterVolumeControl_HAL_Common.cpp";
      v11 = 1024;
      v12 = 41;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v4 = *(*sub_38E748(a1, *(a2 + 8)) + 32);

  return v4();
}

uint64_t sub_38FA7C(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "MasterVolumeControl_HAL_Common.cpp";
      v11 = 1024;
      v12 = 33;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v4 = *(*sub_38E748(a1, *(a2 + 8)) + 24);

  return v4();
}

uint64_t sub_38FBF4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 504) == *(a1 + 512))
  {
    return 0;
  }

  v3 = *(*sub_38E748(a1, *(a2 + 8)) + 16);

  return v3();
}

void sub_38FC64(uint64_t a1)
{
  sub_38DED8(a1);

  operator delete();
}

BOOL sub_38FCA8(uint64_t a1)
{
  v6 = 1836414053;
  v7 = *(a1 + 104);
  v4 = 4;
  v5 = 0;
  sub_5659C(&v2, (a1 + 88), "", 66);
  (*(*v2 + 40))(v2, &v6, 0, 0, &v4, &v5);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  return v5 == 1;
}

void sub_38FD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_38FD78(uint64_t a1)
{
  v3 = 0;
  v4 = 1836414053;
  v5 = *(a1 + 104);
  sub_5659C(&v1, (a1 + 88), "", 56);
  (*(*v1 + 48))(v1, &v4, 0, 0, 4, &v3);
  if (v2)
  {
    sub_1A8C0(v2);
  }
}

void sub_38FE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_38FE34(uint64_t a1)
{
  v4 = 1836414053;
  v5 = *(a1 + 104);
  v3 = 1;
  sub_5659C(&v1, (a1 + 88), "", 47);
  (*(*v1 + 48))(v1, &v4, 0, 0, 4, &v3);
  if (v2)
  {
    sub_1A8C0(v2);
  }
}

void sub_38FED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_38FEF0(uint64_t a1)
{
  sub_38FF2C((a1 - 80));

  operator delete();
}

uint64_t sub_38FF2C(void *a1)
{
  *a1 = off_6CD140;
  a1[10] = off_6CD1B8;
  v2 = a1[12];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_13BFA8(a1);
}

void sub_38FFB0(void *a1)
{
  sub_38FF2C(a1);

  operator delete();
}

uint64_t sub_38FFEC(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  result = sub_15DC78(a1);
  *result = off_6CD140;
  v9 = *a2;
  v8 = a2[1];
  *(result + 80) = off_6CD1B8;
  *(result + 88) = v9;
  *(result + 96) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 104) = a3;
  *(result + 108) = a4;
  return result;
}

uint64_t sub_390078(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((*(*a2 + 160))(a2))
    {
      v6 = a2[36] == 1886216820;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if (*a3 == 1920167288)
      {
        v7 = *(a3 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (*(a3 + 4) == 1 && *a3 == 1920167273)
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_39032C(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 112))(a2);
  if ((v2 & 0x100000000) != 0 && v2 == 1701865584)
  {
    return 1;
  }

  else
  {
    return BYTE4(v2) & (v2 == 1701865569);
  }
}

uint64_t sub_3904C8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1781740087)
  {
    return 0;
  }

  if (sub_48EDC())
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_3905BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_390680(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_390744(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_390AD8(uint64_t a1, __int128 *a2)
{
  v4 = sub_37E434(a1, a2);
  sub_390DF0(v4 + 80, (a2 + 5));
  sub_37E434((a1 + 128), a2 + 8);
  sub_390DF0((a1 + 208), (a2 + 13));
  memcpy((a1 + 256), a2 + 16, 0x105uLL);
  sub_80534((a1 + 520), (a2 + 520));
  sub_80534((a1 + 552), (a2 + 552));
  sub_80534((a1 + 584), (a2 + 584));
  sub_80534((a1 + 616), (a2 + 616));
  v5 = *(a2 + 648);
  *(a1 + 657) = *(a2 + 657);
  *(a1 + 648) = v5;
  return a1;
}

void sub_390B9C(_Unwind_Exception *a1)
{
  if (v1[608] == 1 && v1[607] < 0)
  {
    operator delete(*v4);
  }

  if (v1[576] == 1 && v1[575] < 0)
  {
    operator delete(*v3);
  }

  if (v1[544] == 1 && v1[543] < 0)
  {
    operator delete(*v2);
  }

  if (v1[248] == 1)
  {
    sub_1E0188((v1 + 208));
  }

  sub_294204((v1 + 128));
  if (v1[120] == 1)
  {
    sub_1E0188((v1 + 80));
  }

  sub_294204(v1);
  _Unwind_Resume(a1);
}

_BYTE *sub_390C64(_BYTE *result, uint64_t a2, char *__s)
{
  if (*(a2 + 24) != 1)
  {
    return sub_53E8(result, __s);
  }

  if (*(a2 + 23) < 0)
  {
    return sub_54A0(result, *a2, *(a2 + 8));
  }

  *result = *a2;
  *(result + 2) = *(a2 + 16);
  return result;
}

double sub_390CA0(uint64_t a1)
{
  v1 = (a1 + 4096);
  v2 = sub_2B1910(a1);
  result = 0.0;
  *(v2 + 6280) = 0u;
  *(v2 + 6296) = 0u;
  *(v2 + 6264) = 0u;
  *(v2 + 6312) = 1684434036;
  v1[2220] = 0;
  v1[2224] = 0;
  v1[2296] = 0;
  *(v2 + 6520) = 0;
  *(v2 + 6408) = 0u;
  *(v2 + 6424) = 0u;
  *(v2 + 6440) = 0u;
  *(v2 + 6456) = 0u;
  *(v2 + 6472) = 0u;
  *(v2 + 6488) = 0u;
  *(v2 + 6504) = 0u;
  *(v2 + 6528) = 1684434036;
  v1[2436] = 0;
  v1[2440] = 0;
  v1[2512] = 0;
  *(v2 + 6688) = 0;
  *(v2 + 6672) = 0u;
  *(v2 + 6656) = 0u;
  *(v2 + 6640) = 0u;
  *(v2 + 6624) = 0u;
  return result;
}

double sub_390D30(uint64_t a1)
{
  v1 = (a1 + 4096);
  v2 = sub_2B1910(a1);
  result = 0.0;
  *(v2 + 6280) = 0u;
  *(v2 + 6296) = 0u;
  *(v2 + 6264) = 0u;
  *(v2 + 6312) = 1684434036;
  v1[2220] = 0;
  v1[2224] = 0;
  v1[2296] = 0;
  *(v2 + 6520) = 0;
  *(v2 + 6408) = 0u;
  *(v2 + 6424) = 0u;
  *(v2 + 6440) = 0u;
  *(v2 + 6456) = 0u;
  *(v2 + 6472) = 0u;
  *(v2 + 6488) = 0u;
  *(v2 + 6504) = 0u;
  *(v2 + 6528) = 1684434036;
  v1[2436] = 0;
  v1[2440] = 0;
  v1[2512] = 0;
  *(v2 + 6736) = 0;
  *(v2 + 6720) = 0u;
  *(v2 + 6704) = 0u;
  *(v2 + 6688) = 0u;
  *(v2 + 6672) = 0u;
  *(v2 + 6656) = 0u;
  *(v2 + 6640) = 0u;
  *(v2 + 6624) = 0u;
  *(v2 + 6744) = 1684434036;
  v1[2652] = 0;
  v1[2656] = 0;
  v1[2728] = 0;
  *(v2 + 6840) = 0u;
  *(v2 + 6856) = 0u;
  *(v2 + 6872) = 0u;
  *(v2 + 6888) = 0u;
  *(v2 + 6904) = 0;
  return result;
}

_BYTE *sub_390DF0(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = 0;
  if (*(a2 + 40) == 1)
  {
    sub_1E2718(a1, a2);
    a1[40] = 1;
  }

  return a1;
}

void sub_390E38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    sub_1E0188(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_390E58(void *a1, void *a2)
{
  v4 = sub_1DC1CC(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (sub_1DC61C(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t *sub_390F54(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    for (i = 216; i != -216; i -= 216)
    {
      sub_2B1E18(v2 + i);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_390FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3874(a1, a2);
  sub_1C3874(v4 + 216, a2 + 216);
  sub_1C3874(a1 + 432, a2 + 432);
  sub_1C3874(a1 + 648, a2 + 648);
  sub_1C3874(a1 + 864, a2 + 864);
  sub_1C3874(a1 + 1080, a2 + 1080);
  sub_1C3874(a1 + 1296, a2 + 1296);
  sub_1C3874(a1 + 1512, a2 + 1512);
  sub_1C3874(a1 + 1728, a2 + 1728);
  sub_1C3874(a1 + 1944, a2 + 1944);
  sub_1C3874(a1 + 2160, a2 + 2160);
  sub_1C3874(a1 + 2376, a2 + 2376);
  sub_1C3874(a1 + 2592, a2 + 2592);
  sub_1C3874(a1 + 2808, a2 + 2808);
  sub_1C3874(a1 + 3024, a2 + 3024);
  sub_1C3874(a1 + 3240, a2 + 3240);
  sub_1C3874(a1 + 3456, a2 + 3456);
  sub_1C3874(a1 + 3672, a2 + 3672);
  sub_1C3874(a1 + 3888, a2 + 3888);
  sub_1C3874(a1 + 4104, a2 + 4104);
  sub_1C3874(a1 + 4320, a2 + 4320);
  sub_1C3874(a1 + 4536, a2 + 4536);
  sub_1C3874(a1 + 4752, a2 + 4752);
  sub_1C3874(a1 + 4968, a2 + 4968);
  sub_1C3874(a1 + 5184, a2 + 5184);
  sub_1C3874(a1 + 5400, a2 + 5400);
  sub_1C3874(a1 + 5616, a2 + 5616);
  sub_1C3874(a1 + 5832, a2 + 5832);
  sub_1C3874(a1 + 6048, a2 + 6048);
  return a1;
}

void *sub_391168(void *result, int *a2, uint64_t a3)
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
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = *(v4 + 32);
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      v3 += 8;
      if (v3 == &a2[8 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

void sub_391310(_Unwind_Exception *a1)
{
  sub_397584(0, v1);
  sub_3914A0(*v2);
  _Unwind_Resume(a1);
}

void *sub_391338(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_46980(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_46980((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_46980((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 2);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_46980((a1 + 9), *a5, a5[1], (a5[1] - *a5) >> 2);
  return a1;
}

void sub_3913F0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_39143C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_3914A0(char *a1)
{
  if (a1)
  {
    sub_3914A0(*a1);
    sub_3914A0(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

uint64_t sub_3914FC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = sub_5544(21);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "RoutingSettings_N71.cpp";
      v10 = 1024;
      v11 = 1137;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating subport config for spatial recording", &v8, 0x12u);
    }

    if (**(a1 + 8))
    {
      operator new();
    }

    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "RoutingSettings_N71.cpp";
        v10 = 1024;
        v11 = 1138;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return 0;
}

uint64_t sub_391734(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = sub_5544(21);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "RoutingSettings_N71.cpp";
      v10 = 1024;
      v11 = 1154;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating subport config for multicam recording", &v8, 0x12u);
    }

    if (**(a1 + 8))
    {
      operator new();
    }

    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "RoutingSettings_N71.cpp";
        v10 = 1024;
        v11 = 1155;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return 0;
}

uint64_t sub_39196C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = sub_5544(21);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "RoutingSettings_N71.cpp";
      v10 = 1024;
      v11 = 1166;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating subport config for webcam recording", &v8, 0x12u);
    }

    if (**(a1 + 8))
    {
      operator new();
    }

    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "RoutingSettings_N71.cpp";
        v10 = 1024;
        v11 = 1167;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return 0;
}

uint64_t sub_391BA4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = sub_5544(21);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "RoutingSettings_N71.cpp";
      v10 = 1024;
      v11 = 1178;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating subport config for webcam recording", &v8, 0x12u);
    }

    if (**(a1 + 8))
    {
      operator new();
    }

    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "RoutingSettings_N71.cpp";
        v10 = 1024;
        v11 = 1179;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return 0;
}

uint64_t sub_391DDC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = sub_5544(21);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "RoutingSettings_N71.cpp";
      v10 = 1024;
      v11 = 1189;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating subport config for spatial recording", &v8, 0x12u);
    }

    if (**(a1 + 8))
    {
      operator new();
    }

    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "RoutingSettings_N71.cpp";
        v10 = 1024;
        v11 = 1190;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return 0;
}

void sub_392068(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_392084(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_99B50(result, a4);
  }

  return result;
}

void sub_3920E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_392100(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_39739C(a1, v3, *(v5 + 8));
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

    while (v7 != v4);
  }

  return a1;
}

uint64_t sub_3921AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  *a2 = a2 + 1;
  a2[4] = 0;
  a2[2] = 0;
  a2[3] = a2 + 4;
  a2[8] = 0;
  a2[7] = 0;
  a2[5] = 0;
  a2[6] = a2 + 7;
  result = sub_3FC910(a2, &qword_6F3F88);
  if (*(a1 + 32) == 1 && (*(a1 + 33) & 1) == 0)
  {
    v5 = 0x7370637000000000;
    v6 = *sub_C53D8();
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    return sub_3FE144(a2, &v5);
  }

  return result;
}

uint64_t sub_39226C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  *a2 = a2 + 1;
  a2[4] = 0;
  a2[2] = 0;
  a2[3] = a2 + 4;
  a2[8] = 0;
  a2[7] = 0;
  a2[5] = 0;
  a2[6] = a2 + 7;
  result = sub_3FC910(a2, &qword_6F3F68);
  if (*(a1 + 32) == 1 && (*(a1 + 33) & 1) == 0)
  {
    v5 = 0x7370637000000000;
    v6 = *sub_C53D8();
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    return sub_3FE144(a2, &v5);
  }

  return result;
}

uint64_t sub_39232C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  *a2 = a2 + 1;
  a2[4] = 0;
  a2[2] = 0;
  a2[3] = a2 + 4;
  a2[8] = 0;
  a2[7] = 0;
  a2[5] = 0;
  a2[6] = a2 + 7;
  result = sub_3FC910(a2, &qword_6F3F48);
  if (*(a1 + 32) == 1 && (*(a1 + 33) & 1) == 0)
  {
    v5 = 0x7370637000000000;
    v6 = *sub_C53D8();
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    return sub_3FE144(a2, &v5);
  }

  return result;
}

uint64_t sub_3923EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  *a2 = a2 + 1;
  a2[4] = 0;
  a2[2] = 0;
  a2[3] = a2 + 4;
  a2[8] = 0;
  a2[7] = 0;
  a2[5] = 0;
  a2[6] = a2 + 7;
  result = sub_3FC910(a2, &qword_6F3F08);
  if (*(a1 + 32) == 1 && (*(a1 + 33) & 1) == 0)
  {
    v5 = 0x7370637000000000;
    v6 = *sub_C53D8();
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    return sub_3FE144(a2, &v5);
  }

  return result;
}

uint64_t sub_3924AC()
{
  qword_6F4A98 = 0;
  qword_6F4A90 = &qword_6F4A98;
  qword_6F4AB0 = 0;
  qword_6F4AA0 = 0;
  unk_6F4AA8 = &qword_6F4AB0;
  qword_6F4AD0 = 0;
  qword_6F4AC8 = 0;
  qword_6F4AB8 = 0;
  unk_6F4AC0 = &qword_6F4AC8;
  return sub_3FC910(&qword_6F4A90, &qword_6F3F28);
}

void sub_39251C()
{
  qword_6F4AE8 = 0;
  qword_6F4B00 = 0;
  qword_6F4AE0 = &qword_6F4AE8;
  qword_6F4AF0 = 0;
  unk_6F4AF8 = &qword_6F4B00;
  qword_6F4B18 = 0;
  qword_6F4B20 = 0;
  qword_6F4B08 = 0;
  unk_6F4B10 = &qword_6F4B18;
  v0 = 0x7672636700000000;
  v1 = *sub_C53D8();
  v2 = 0;
  v4 = 0;
  v5 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4AE0, &v0, qword_6F4378);
  v0 = 0x76726F6D00000000;
  v1 = *sub_C53D8();
  v2 = 0;
  v4 = 0;
  v5 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4AE0, &v0, qword_6F4378);
  v0 = 0x7668737400000000;
  v1 = *sub_C53D8();
  v2 = 0;
  v4 = 0;
  v5 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4AE0, &v0, qword_6F4378);
  v0 = 0x6563762000000000;
  v1 = *sub_C53D8();
  v2 = 0;
  v4 = 0;
  v5 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4AE0, &v0, qword_6F4378);
  v0 = 0x766D736700000000;
  v1 = *sub_C53D8();
  v2 = 0;
  v4 = 0;
  v5 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4AE0, &v0, qword_6F43A8);
  sub_C57B4(&v0, 0, 1986884455, 2004367664);
  sub_3FC3D0(&qword_6F4AE0, &v0, qword_6F43B8);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_3926D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24A680(&qword_6F4AE0);
  _Unwind_Resume(a1);
}

void sub_39272C()
{
  qword_6F4B38 = 0;
  qword_6F4B50 = 0;
  qword_6F4B30 = &qword_6F4B38;
  qword_6F4B40 = 0;
  unk_6F4B48 = &qword_6F4B50;
  qword_6F4B68 = 0;
  qword_6F4B70 = 0;
  qword_6F4B58 = 0;
  unk_6F4B60 = &qword_6F4B68;
  v2 = 0x696D766300000000;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4B30, &v2, qword_6F4368);
  v2 = 0x696D6F6300000000;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4B30, &v2, qword_6F4368);
  v2 = 0x676D637400000000;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4B30, &v2, qword_6F4368);
  for (i = 0; i != 20; i += 4)
  {
    v1 = *&aOvpvivpvcgpvcv[i];
    LODWORD(v2) = 0;
    HIDWORD(v2) = v1;
    v3 = *sub_C53D8();
    v4 = 0;
    v6 = 0;
    v7 = 0;
    __p = 0;
    sub_3FC3D0(&qword_6F4B30, &v2, qword_6F4358);
  }

  v2 = 0x7672636700000000;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4B30, &v2, qword_6F4378);
  v2 = 0x76726F6D00000000;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4B30, &v2, qword_6F4378);
  v2 = 0x7668737400000000;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4B30, &v2, qword_6F4378);
  v2 = 0x6563762000000000;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4B30, &v2, qword_6F4378);
  v2 = 0x766D736700000000;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_3FC3D0(&qword_6F4B30, &v2, qword_6F43A8);
  sub_C57B4(&v2, 0, 1986884455, 2004367664);
  sub_3FC3D0(&qword_6F4B30, &v2, qword_6F43B8);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_3929F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24A680(&qword_6F4B30);
  _Unwind_Resume(a1);
}

void sub_392A70(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  *a2 = a2 + 1;
  a2[4] = 0;
  a2[2] = 0;
  a2[3] = a2 + 4;
  a2[8] = 0;
  a2[7] = 0;
  a2[5] = 0;
  a2[6] = a2 + 7;
  sub_3FC3D0(a2, &qword_709310, qword_6F43C8);
  if (*(a1 + 32) == 1)
  {
    v6 = 0x696D646600000001;
    *&v7 = 1;
    DWORD2(v7) = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    sub_3FC3D0(a2, &v6, qword_6F43D8);
  }

  v6 = 0x6D6F767000000001;
  v7 = *sub_C53D8();
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_3FC3D0(a2, &v6, qword_6F43E8);
  if (*(a1 + 32))
  {
    v6 = 0x6D6F767000000001;
    *&v7 = 1;
    DWORD2(v7) = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    sub_3FC3D0(a2, &v6, qword_6F43F8);
  }

  v6 = 0x6D736D7400000001;
  v7 = *sub_C53D8();
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_3FC3D0(a2, &v6, qword_6F4448);
  v6 = 0x7261772000000001;
  v7 = *sub_C53D8();
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_3FC3D0(a2, &v6, qword_6F4458);
  v6 = 0x696D766300000001;
  v7 = *sub_C53D8();
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_3FC3D0(a2, &v6, qword_6F4468);
  v6 = 0x696D6F6300000001;
  v7 = *sub_C53D8();
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_3FC3D0(a2, &v6, qword_6F4468);
  v6 = 0x676D637400000001;
  v7 = *sub_C53D8();
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_3FC3D0(a2, &v6, qword_6F4468);
  if (sub_DB94C())
  {
    v6 = 0x6563696D00000001;
    v7 = *sub_C53D8();
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    sub_3FC3D0(a2, &v6, qword_6F4580);
  }

  for (i = 0; i != 20; i += 4)
  {
    v5 = *&aOvpvivpvcgpvcv[i];
    LODWORD(v6) = 1;
    HIDWORD(v6) = v5;
    v7 = *sub_C53D8();
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    sub_3FC3D0(a2, &v6, qword_6F4478);
    LODWORD(v6) = 1;
    HIDWORD(v6) = v5;
    v7 = *sub_C53D8();
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    sub_3FD764(a2, &v6, &unk_5A3CE8, 0);
  }

  sub_3FD764(a2, &qword_709310, qword_6F3DD8, dword_6F3E08);
  sub_ABF48();
  if (!xmmword_6FD620)
  {
    sub_3FDE10(a2, &qword_709310, 1);
  }
}

void sub_392E30()
{
  qword_6F4BD8 = 0;
  qword_6F4BD0 = &qword_6F4BD8;
  qword_6F4BF0 = 0;
  qword_6F4BE0 = 0;
  unk_6F4BE8 = &qword_6F4BF0;
  qword_6F4C10 = 0;
  qword_6F4C08 = 0;
  qword_6F4BF8 = 0;
  unk_6F4C00 = &qword_6F4C08;
  sub_3FC3D0(&qword_6F4BD0, &qword_709310, qword_6F4408);
  v2 = 0x696D646600000001;
  *&v3 = 1;
  DWORD2(v3) = 0;
  v4 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_3FC3D0(&qword_6F4BD0, &v2, qword_6F4418);
  v2 = 0x6D6F767000000001;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_3FC3D0(&qword_6F4BD0, &v2, qword_6F4428);
  v2 = 0x6D6F767000000001;
  *&v3 = 1;
  DWORD2(v3) = 0;
  v4 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_3FC3D0(&qword_6F4BD0, &v2, qword_6F4438);
  v2 = 0x6D736D7400000001;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_3FC3D0(&qword_6F4BD0, &v2, qword_6F4448);
  v2 = 0x7261772000000001;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_3FC3D0(&qword_6F4BD0, &v2, qword_6F4458);
  v2 = 0x696D766300000001;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_3FC3D0(&qword_6F4BD0, &v2, qword_6F4468);
  v2 = 0x696D6F6300000001;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_3FC3D0(&qword_6F4BD0, &v2, qword_6F4468);
  v2 = 0x676D637400000001;
  v3 = *sub_C53D8();
  v4 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_3FC3D0(&qword_6F4BD0, &v2, qword_6F4468);
  if (sub_DB94C())
  {
    v2 = 0x6563696D00000001;
    v3 = *sub_C53D8();
    v4 = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    sub_3FC3D0(&qword_6F4BD0, &v2, qword_6F4580);
  }

  for (i = 0; i != 20; i += 4)
  {
    v1 = *&aOvpvivpvcgpvcv[i];
    LODWORD(v2) = 1;
    HIDWORD(v2) = v1;
    v3 = *sub_C53D8();
    v4 = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    sub_3FC3D0(&qword_6F4BD0, &v2, qword_6F4478);
    LODWORD(v2) = 1;
    HIDWORD(v2) = v1;
    v3 = *sub_C53D8();
    v4 = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    sub_3FD764(&qword_6F4BD0, &v2, &unk_5A3CE8, 0);
  }

  sub_3FD764(&qword_6F4BD0, &qword_709310, qword_6F3DD8, dword_6F3E08);
  sub_ABF48();
  if (!xmmword_6FD620)
  {
    sub_3FDE10(&qword_6F4BD0, &qword_709310, 1);
  }
}

void sub_393214()
{
  qword_6F4C28 = 0;
  qword_6F4C20 = &qword_6F4C28;
  qword_6F4C40 = 0;
  qword_6F4C30 = 0;
  unk_6F4C38 = &qword_6F4C40;
  qword_6F4C60 = 0;
  qword_6F4C58 = 0;
  qword_6F4C48 = 0;
  unk_6F4C50 = &qword_6F4C58;
  sub_3FC3D0(&qword_6F4C20, &qword_709310, qword_6F4488);
  sub_3FD47C(&qword_6F4C20, 6);
  sub_ABF48();
  if (HIDWORD(xmmword_6FD620) == 1 || (sub_ABF48(), HIDWORD(xmmword_6FD620) == 2))
  {
    sub_3FD764(&qword_6F4C20, &qword_709310, qword_6F3DD8, dword_6F3E08);
  }
}

void sub_3932E4()
{
  qword_6F4C78 = 0;
  qword_6F4C70 = &qword_6F4C78;
  qword_6F4C90 = 0;
  qword_6F4C80 = 0;
  unk_6F4C88 = &qword_6F4C90;
  qword_6F4CB0 = 0;
  qword_6F4CA8 = 0;
  qword_6F4C98 = 0;
  unk_6F4CA0 = &qword_6F4CA8;
  sub_3FC3D0(&qword_6F4C70, &qword_709310, qword_6F4498);
  sub_3FD47C(&qword_6F4C70, 6);
  sub_ABF48();
  if (HIDWORD(xmmword_6FD620) == 1 || (sub_ABF48(), HIDWORD(xmmword_6FD620) == 2))
  {
    sub_3FD764(&qword_6F4C70, &qword_709310, qword_6F3DD8, dword_6F3E08);
  }
}

uint64_t sub_3933B4()
{
  qword_6F4CC8 = 0;
  qword_6F4CC0 = &qword_6F4CC8;
  qword_6F4CE0 = 0;
  qword_6F4CD0 = 0;
  unk_6F4CD8 = &qword_6F4CE0;
  qword_6F4D00 = 0;
  qword_6F4CF8 = 0;
  qword_6F4CE8 = 0;
  unk_6F4CF0 = &qword_6F4CF8;
  sub_3FC3D0(&qword_6F4CC0, &qword_709310, &unk_6F44F8);
  return sub_3FD764(&qword_6F4CC0, &qword_709310, qword_6F3DD8, dword_6F3E08);
}

uint64_t sub_393450()
{
  qword_6F4D18 = 0;
  qword_6F4D10 = &qword_6F4D18;
  qword_6F4D30 = 0;
  qword_6F4D20 = 0;
  unk_6F4D28 = &qword_6F4D30;
  qword_6F4D50 = 0;
  qword_6F4D48 = 0;
  qword_6F4D38 = 0;
  unk_6F4D40 = &qword_6F4D48;
  v1 = 0x696D646600000001;
  v2 = 1;
  v3 = 0;
  v4 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_3FC3D0(&qword_6F4D10, &v1, qword_6F4590);
  v1 = 0x6D6F767000000001;
  v2 = 1;
  v3 = 0;
  v4 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  return sub_3FD29C(&qword_6F4D10, &v1, qword_6F45A0);
}

uint64_t sub_393530@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  *a2 = a2 + 1;
  a2[4] = 0;
  a2[2] = 0;
  a2[3] = a2 + 4;
  a2[8] = 0;
  a2[7] = 0;
  a2[5] = 0;
  a2[6] = a2 + 7;
  result = sub_3FC3D0(a2, &qword_709310, qword_6F45B0);
  if (*(a1 + 548) == 1)
  {
    return sub_3FDE10(a2, &qword_709310, *(a1 + 544));
  }

  return result;
}

uint64_t sub_3935C4()
{
  sub_3FC88C(qword_6F4E00, &qword_709310, qword_6F4800);
  v1 = 0x696D646600000001;
  v2 = *sub_C53D8();
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  return sub_3FD764(qword_6F4E00, &v1, qword_6F3DC8, 0);
}

uint64_t sub_393660()
{
  qword_6F4E58 = 0;
  qword_6F4E50 = &qword_6F4E58;
  qword_6F4E70 = 0;
  qword_6F4E60 = 0;
  unk_6F4E68 = &qword_6F4E70;
  qword_6F4E90 = 0;
  qword_6F4E88 = 0;
  qword_6F4E78 = 0;
  unk_6F4E80 = &qword_6F4E88;
  sub_3FC3D0(&qword_6F4E50, &qword_709310, qword_6F45F0);
  return sub_3FD764(&qword_6F4E50, &qword_709310, &unk_5A3D48, 0);
}

void sub_3936F8()
{
  qword_6F4EA8 = 0;
  qword_6F4EA0 = &qword_6F4EA8;
  qword_6F4EC0 = 0;
  qword_6F4EB0 = 0;
  unk_6F4EB8 = &qword_6F4EC0;
  qword_6F4EE0 = 0;
  qword_6F4ED8 = 0;
  qword_6F4EC8 = 0;
  unk_6F4ED0 = &qword_6F4ED8;
  sub_3FC3D0(&qword_6F4EA0, &qword_709310, qword_6F46D0);
  v29 = 0x696D646600000001;
  v30 = 2;
  v31 = 0;
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  sub_3FC3D0(&qword_6F4EA0, &v29, qword_6F45C0);
  sub_3FD764(&qword_6F4EA0, &qword_709310, qword_6F3E18, 0);
  v29 = 0x696D646600000001;
  v30 = 1;
  v31 = 0;
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  sub_3FC3D0(&qword_6F4EA0, &v29, qword_6F46E0);
  v29 = 0x696D646600000001;
  v30 = 3;
  v31 = 0;
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  sub_3FC3D0(&qword_6F4EA0, &v29, qword_6F45D0);
  v29 = 0x6D6F767000000001;
  v30 = 1;
  v31 = 0;
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  sub_3FD29C(&qword_6F4EA0, &v29, qword_6F46F0);
  v29 = 0x6D6F767000000001;
  v30 = 3;
  v31 = 0;
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  sub_3FD29C(&qword_6F4EA0, &v29, qword_6F45E0);
  sub_C57B4(&v29, 1, 1768776806, 1633759844);
  DWORD2(v23[0]) = 0;
  *&v23[0] = 2;
  sub_C8A18(v26, 1768776806, v23, 1633759844);
  sub_3FC3D0(&qword_6F4EA0, &v29, qword_6F4700);
  sub_3FC3D0(&qword_6F4EA0, v26, qword_6F45F0);
  sub_3FD764(&qword_6F4EA0, &v29, &unk_5A3D48, 0);
  sub_3FD764(&qword_6F4EA0, v26, &unk_5A3D48, 0);
  sub_3FD764(&qword_6F4EA0, &v29, &unk_5A3D18, 1);
  sub_3FD764(&qword_6F4EA0, v26, &unk_5A3D18, 1);
  DWORD2(v20[0]) = 0;
  *&v20[0] = 1;
  sub_C8A18(v23, 1768776806, v20, 1633759844);
  DWORD2(v17[0]) = 0;
  *&v17[0] = 3;
  sub_C8A18(v20, 1768776806, v17, 1633759844);
  sub_3FC3D0(&qword_6F4EA0, v23, qword_6F4708);
  sub_3FC3D0(&qword_6F4EA0, v20, qword_6F45F8);
  sub_3FD764(&qword_6F4EA0, v23, &unk_5A3D48, 0);
  sub_3FD764(&qword_6F4EA0, v20, &unk_5A3D48, 0);
  sub_3FD764(&qword_6F4EA0, v23, &unk_5A3D18, 1);
  sub_3FD764(&qword_6F4EA0, v20, &unk_5A3D18, 1);
  DWORD2(v14[0]) = 0;
  *&v14[0] = 1;
  sub_C8A18(v17, 1836021360, v14, 1633759844);
  DWORD2(v11[0]) = 0;
  *&v11[0] = 3;
  sub_C8A18(v14, 1836021360, v11, 1633759844);
  sub_3FC3D0(&qword_6F4EA0, v17, qword_6F4710);
  sub_3FC3D0(&qword_6F4EA0, v14, qword_6F4600);
  sub_3FD764(&qword_6F4EA0, v17, &unk_5A3D48, 0);
  sub_3FD764(&qword_6F4EA0, v14, &unk_5A3D48, 0);
  sub_3FD764(&qword_6F4EA0, v17, &unk_5A3D18, 1);
  sub_3FD764(&qword_6F4EA0, v14, &unk_5A3D18, 1);
  sub_C57B4(v11, 1, 1751212899, 1634231920);
  LODWORD(v3) = 0;
  v2 = 2;
  sub_C8A18(v8, 1751212899, &v2, 1634231920);
  sub_3FC3D0(&qword_6F4EA0, v11, qword_6F4700);
  sub_3FC3D0(&qword_6F4EA0, v8, qword_6F45F0);
  sub_3FD764(&qword_6F4EA0, v11, &unk_5A3D48, 0);
  sub_3FD764(&qword_6F4EA0, v8, &unk_5A3D48, 0);
  for (i = 0; i != 20; i += 4)
  {
    v1 = *&aOvpvivpvcgpvcv[i];
    LODWORD(v2) = 1;
    HIDWORD(v2) = v1;
    v3 = *sub_C53D8();
    v4 = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    sub_3FC3D0(&qword_6F4EA0, &v2, qword_6F4930);
    LODWORD(v2) = 1;
    HIDWORD(v2) = v1;
    v3 = *sub_C53D8();
    v4 = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    sub_3FD764(&qword_6F4EA0, &v2, &unk_5A3CE8, 0);
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }
}

void sub_393D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a49)
  {
    operator delete(a49);
  }

  if (a56)
  {
    operator delete(a56);
  }

  v59 = *(v57 - 176);
  if (v59)
  {
    *(v57 - 168) = v59;
    operator delete(v59);
  }

  v60 = *(v57 - 120);
  if (v60)
  {
    *(v57 - 112) = v60;
    operator delete(v60);
  }

  sub_24A680(&qword_6F4EA0);
  _Unwind_Resume(a1);
}

void sub_393E44()
{
  qword_6F4EF8 = 0;
  qword_6F4EF0 = &qword_6F4EF8;
  qword_6F4F10 = 0;
  qword_6F4F00 = 0;
  unk_6F4F08 = &qword_6F4F10;
  qword_6F4F30 = 0;
  qword_6F4F28 = 0;
  qword_6F4F18 = 0;
  unk_6F4F20 = &qword_6F4F28;
  sub_3FC3D0(&qword_6F4EF0, &qword_709310, qword_6F47C8);
  sub_3FD764(&qword_6F4EF0, &qword_709310, qword_6F3E18, 0);
  sub_C57B4(v4, 1, 1768776806, 1633759844);
  DWORD2(v0) = 0;
  *&v0 = 2;
  sub_C8A18(v1, 1768776806, &v0, 1633759844);
  sub_3FC3D0(&qword_6F4EF0, v4, qword_6F47C8);
  sub_3FC3D0(&qword_6F4EF0, v1, qword_6F45F0);
  sub_3FD764(&qword_6F4EF0, v4, &unk_5A3D48, 0);
  sub_3FD764(&qword_6F4EF0, v1, &unk_5A3D48, 0);
  sub_3FD764(&qword_6F4EF0, v4, &unk_5A3D18, 1);
  sub_3FD764(&qword_6F4EF0, v1, &unk_5A3D18, 1);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }
}

void sub_393FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24A680(&qword_6F4EF0);
  _Unwind_Resume(a1);
}

void sub_394018()
{
  qword_6F4F48 = 0;
  qword_6F4F40 = &qword_6F4F48;
  qword_6F4F60 = 0;
  qword_6F4F50 = 0;
  unk_6F4F58 = &qword_6F4F60;
  qword_6F4F80 = 0;
  qword_6F4F78 = 0;
  qword_6F4F68 = 0;
  unk_6F4F70 = &qword_6F4F78;
  sub_3FC3D0(&qword_6F4F40, &qword_709310, qword_6F4810);
  sub_3FD47C(&qword_6F4F40, 6);
  sub_3FD764(&qword_6F4F40, &qword_709310, qword_6F3DC8, 0);
  sub_C57B4(v6, 1, 1768776806, 1633759844);
  sub_3FC3D0(&qword_6F4F40, v6, qword_6F47D0);
  sub_3FD764(&qword_6F4F40, v6, &unk_5A3D48, 0);
  sub_3FD764(&qword_6F4F40, v6, &unk_5A3D18, 1);
  sub_C57B4(v3, 1, 1936683886, 1633759844);
  sub_3FC3D0(&qword_6F4F40, v3, qword_6F47D8);
  sub_3FD764(&qword_6F4F40, v3, &unk_5A3D48, 0);
  sub_3FD764(&qword_6F4F40, v3, &unk_5A3D18, 1);
  sub_C57B4(v0, 1, 1768776806, 1634231920);
  sub_3FC3D0(&qword_6F4F40, v0, qword_6F47E0);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }

  sub_C57B4(v0, 1, 1768776806, 1667982960);
  sub_3FC3D0(&qword_6F4F40, v0, qword_6F47F0);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }
}

void sub_394230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v24 = *(v22 - 40);
  if (v24)
  {
    *(v22 - 32) = v24;
    operator delete(v24);
  }

  sub_24A680(&qword_6F4F40);
  _Unwind_Resume(a1);
}

uint64_t sub_3942A4()
{
  qword_6F4F98 = 0;
  qword_6F4F90 = &qword_6F4F98;
  qword_6F4FB0 = 0;
  qword_6F4FA0 = 0;
  unk_6F4FA8 = &qword_6F4FB0;
  qword_6F4FD0 = 0;
  qword_6F4FC8 = 0;
  qword_6F4FB8 = 0;
  unk_6F4FC0 = &qword_6F4FC8;
  return sub_3FC3D0(&qword_6F4F90, &qword_709310, qword_6F4808);
}

uint64_t sub_39431C()
{
  qword_6F4FE8 = 0;
  qword_6F4FE0 = &qword_6F4FE8;
  qword_6F5000 = 0;
  qword_6F4FF0 = 0;
  unk_6F4FF8 = &qword_6F5000;
  qword_6F5020 = 0;
  qword_6F5018 = 0;
  qword_6F5008 = 0;
  unk_6F5010 = &qword_6F5018;
  sub_C57B4(v1, 1, 1768776806, 1634231920);
  sub_3FC3D0(&qword_6F4FE0, v1, qword_6F47E8);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  return sub_3FC3D0(&qword_6F4FE0, &qword_709310, qword_6F47E0);
}
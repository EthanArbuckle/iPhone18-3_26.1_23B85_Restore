void sub_101191D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_100005978((v44 - 176));
  if (*(v44 - 185) < 0)
  {
    operator delete(*(v44 - 208));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10038E598(&a31);
  _Unwind_Resume(a1);
}

void sub_101191E50(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 192))
  {
    v6 = (*(**(a2 + 1400) + 48))(*(a2 + 1400), kCBMessageLocalizationTable, @"WIFI_OPERATOR_NAME_WITH_SUFFIX_FORMAT_OBJ_PLACEHOLDER", @"%@ %@", 0);
    if (v6)
    {
      v7 = v6;
      v10 = CFStringCreateWithFormat(0, 0, v6, *(a2 + 192), *a3);
      CFRelease(v7);
      memset(buf, 0, sizeof(buf));
      v12 = 0;
      ctu::cf::assign();
      *a1 = 0u;
      *(a1 + 16) = v12;
      sub_100005978(&v10);
      return;
    }

    v9 = *(a2 + 24);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to get wifi calling string format", buf, 2u);
    }
  }

  else
  {
    v8 = *(a2 + 24);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Operator name for wifi calling is empty", buf, 2u);
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void sub_101191FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a12);
  _Unwind_Resume(a1);
}

__n128 sub_101191FF0(std::string *a1, uint64_t a2, std::string *this)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::string::insert(this, 0, v6, v7);
  result = *v8;
  *a1 = *v8->n128_u8;
  v8->n128_u64[0] = 0;
  v8->n128_u64[1] = 0;
  v8[1].n128_u64[0] = 0;
  return result;
}

void sub_101192084(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(*a1 + 432))(buf);
  (*(*a1 + 440))(v6, a1);
  formPLMN(buf, v6);
  if (v7 < 0)
  {
    operator delete(v6[1]);
  }

  if (v9 < 0)
  {
    operator delete(buf[1]);
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    v5 = a1[3];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Failed to create PLMN", buf, 2u);
    }
  }
}

void sub_1011921AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011921E0(_BYTE *a1)
{
  if ((a1[87] & 1) != 0 || a1[86] == 1) && (a1[75])
  {
    v1 = 0;
  }

  else
  {
    v1 = a1[1625];
  }

  return v1 & 1;
}

uint64_t sub_101192210(_DWORD *a1, int a2)
{
  if (a2 == 11)
  {
    a2 = (*(*a1 + 472))(a1);
  }

  if (a2 == 7)
  {
    goto LABEL_8;
  }

  if (a2 != 10)
  {
LABEL_10:
    v4 = 0;
    return v4 & 1;
  }

  if (a1[136] != 1)
  {
    if (a1[137] == 1)
    {
LABEL_8:
      v3 = 531;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v3 = 541;
LABEL_9:
  v4 = *(a1 + v3);
  return v4 & 1;
}

uint64_t sub_1011922B0(uint64_t a1, int a2)
{
  if (a2 == 11)
  {
    a2 = (*(*a1 + 472))(a1);
  }

  if (a2 == 10)
  {
    v3 = *(a1 + 544);
    if (!v3)
    {
      if (*(a1 + 548) == 1)
      {
        v3 = *(a1 + 532);
        if (sub_1011923E8(*(a1 + 1368), *(a1 + 1496)))
        {
          v3 = *(a1 + 548);
          v4 = *(a1 + 24);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v6 = 136315138;
            v7 = asString();
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I NR emergency support is considered %s by carrier", &v6, 0xCu);
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else if (a2 == 7)
  {
    return *(a1 + 532);
  }

  else
  {
    return 2;
  }

  return v3;
}

uint64_t sub_1011923E8(uint64_t a1, uint64_t a2)
{
  v13[0] = @"EmergencyCalling";
  v13[1] = @"EmergencyServiceSupportedWithFallbackSupport";
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_10005B328(&__p, v13, &v14, 2uLL);
  (*(*a1 + 104))(&cf, a1, a2, 2, &__p, kCFBooleanFalse, 0);
  v4 = cf;
  v12 = 0;
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v12, v4, v6);
      LOBYTE(v4) = v12;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  sub_10000A1EC(&cf);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v4 & 1;
}

void sub_101192514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101192548(uint64_t a1, int a2)
{
  if (a2 == 11)
  {
    a2 = (*(*a1 + 472))(a1);
  }

  if (a2 != 10)
  {
    if (a2 == 7)
    {
      return *(a1 + 536);
    }

    return 2;
  }

  v4 = *(a1 + 544);
  if (v4 == 1)
  {
    return 0;
  }

  if (v4)
  {
    return 2;
  }

  if (*(a1 + 548) != 1)
  {
    return 1;
  }

  v5 = *(a1 + 536);
  if (sub_1011923E8(*(a1 + 1368), *(a1 + 1496)))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_101192608(uint64_t result, int a2)
{
  if (*(result + 1560) != a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = asString();
      v20 = 2080;
      v21 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband service provisioned state changing from %s to %s", &v18, 0x16u);
    }

    (*(**(v3 + 1464) + 176))(*(v3 + 1464), *(v3 + 1496), a2 == 2);
    v5 = (*(*v3 + 544))(v3);
    v6 = *(v3 + 1560);
    if (v6 == 2)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    *(v3 + 1560) = a2;
    sub_1011900B4(v3, v7, v6);
    if (a2 != 2)
    {
      v9 = *(v3 + 32) - 4;
      if (((*(**(v3 + 1448) + 128))(*(v3 + 1448)) & 1) != 0 || v9 >= 3)
      {
        v11 = *(v3 + 32);
        if (v11 == 2)
        {
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 6;
      }

      v13 = *(v3 + 24);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        v15 = CSIBOOLAsString(v9 < 3);
        v18 = 136315394;
        v19 = v14;
        v20 = 2080;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Registration status reported is %s, as report emergency only is %s", &v18, 0x16u);
      }

      v16 = (*(*v3 + 472))(v3);
      v17 = (*(*v3 + 112))(v3);
      v8 = (*(*v3 + 656))(v3, v10, v16, 0, v17);
    }

    result = capabilities::ct::supportsVoiceCall(v8);
    if (result)
    {
      return (*(*v3 + 360))(v3);
    }
  }

  return result;
}

uint64_t sub_101192938(uint64_t result, int a2)
{
  if (a2 != 16)
  {
    v2 = a2;
    v3 = result;
    if (*(result + 1569) != a2)
    {
      v4 = *(result + 24);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = asString();
        v10 = 2080;
        v11 = asString();
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Phone call type changing from %s to %s", &v8, 0x16u);
      }

      v3[1569] = v2;
      v5 = (*(*v3 + 72))(v3);
      v6 = (*(*v3 + 472))(v3);
      v7 = (*(*v3 + 112))(v3);
      return (*(*v3 + 656))(v3, v5, v6, 0, v7);
    }
  }

  return result;
}

uint64_t sub_101192AF8(uint64_t result, int a2)
{
  v2 = *(result + 1568);
  if (v2 != a2)
  {
    v4 = result;
    v5 = *(result + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = CSIBOOLAsString(v2);
      v11 = 2080;
      v12 = CSIBOOLAsString(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Call active changing from %s to %s", &v9, 0x16u);
    }

    v4[1568] = a2;
    v6 = (*(*v4 + 72))(v4);
    v7 = (*(*v4 + 472))(v4);
    v8 = (*(*v4 + 112))(v4);
    return (*(*v4 + 656))(v4, v6, v7, 0, v8);
  }

  return result;
}

uint64_t sub_101192CB0(uint64_t a1, int *a2)
{
  v4 = *a2;
  if (v4 == (*(*a1 + 664))(a1))
  {
    if ((*(a1 + 1577) & 1) == 0)
    {
      LOWORD(v5) = *(a2 + 4);
LABEL_9:
      *(a1 + 1576) = v5 | 0x100;
      return 1;
    }

    v5 = *(a2 + 4);
    if (*(a1 + 1576) != v5)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (*(a1 + 1577) != 1)
  {
    return 0;
  }

  *(a1 + 1577) = 0;
  return 1;
}

uint64_t sub_101192D5C(uint64_t a1)
{
  if (*(a1 + 1575) == 1)
  {
    v2 = *(a1 + 1574);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 1577) == 1)
  {
    v3 = v2 & 1;
    v4 = 0;
  }

  else
  {
    if (capabilities::ct::supports5G(a1))
    {
      v5 = *(a1 + 1612);
      v6 = HIWORD(v5) & 1;
      v7 = v2 | ((v5 & 0x100) >> 8);
      if ((v5 & 0x100) == 0)
      {
        LOBYTE(v6) = v2;
      }

      v8 = (v5 & 0x1000000) == 0;
      if ((v5 & 0x1000000) != 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = v2;
      }

      if (!v8)
      {
        LOBYTE(v2) = v7;
      }
    }

    else
    {
      v9 = v2;
    }

    if (*(a1 + 1617) == 1)
    {
      v9 &= *(a1 + 1616) ^ 1;
    }

    v3 = v2 & 1;
    v4 = v9 & 1;
  }

  SwitchStatus::SwitchStatus(&v11, v3, v4);
  return v11;
}

uint64_t sub_101192E14(capabilities::ct *a1)
{
  if (capabilities::ct::supports5G(a1))
  {
    v2 = *(a1 + 403);
    v3 = (~v2 & 0x1000100) == 0;
    v4 = HIWORD(v2) & 1;
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v4 | (v5 << 8);
}

void sub_101192E68(uint64_t a1, int a2)
{
  if (*(a1 + 1571) != 1 || *(a1 + 1570) != a2)
  {
    v5 = *(a1 + 24);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = CSIBOOLAsString(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Setting 5G Standalone enabled user setting to %s", &buf, 0xCu);
    }

    *(a1 + 1570) = a2 | 0x100;
    if (capabilities::ct::supportsGemini(v6))
    {
      if (*(a1 + 1384))
      {
        buf = 0uLL;
        v27 = 0;
        PersonalityIdFromSlotId();
        if (isReal())
        {
          v7 = &kCFBooleanTrue;
          if (!a2)
          {
            v7 = &kCFBooleanFalse;
          }

          v8 = *v7;
          *v23 = 0;
          sub_100045C8C(v23);
          v22 = v8;
          *v23 = 0;
          sub_100045C8C(v23);
          if ((*(**(a1 + 1384) + 48))(*(a1 + 1384), &buf, @"5GStandaloneEnabled", v8, @"RegistrationModel", 0, 1, 0))
          {
            v9 = *(a1 + 24);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v16 = HIBYTE(v27);
              v17 = buf;
              v18 = CSIBOOLAsString(a2);
              if ((v16 & 0x80u) == 0)
              {
                v19 = v16;
              }

              else
              {
                v19 = *(&v17 + 1);
              }

              p_buf = &buf;
              if ((v16 & 0x80u) != 0)
              {
                p_buf = v17;
              }

              if (v19)
              {
                v21 = p_buf;
              }

              else
              {
                v21 = "<invalid>";
              }

              *v23 = 136315394;
              *&v23[4] = v21;
              v24 = 2080;
              v25 = v18;
              _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s : failed to store 5G Standalone enabled user setting : %s", v23, 0x16u);
            }
          }

          sub_100045C8C(&v22);
        }

        else
        {
          v15 = *(a1 + 24);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *v23 = 0;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Personality unknown", v23, 2u);
          }
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(buf);
        }
      }

      else
      {
        v14 = *(a1 + 24);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf) = 0;
          _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", &buf, 2u);
        }
      }
    }

    else
    {
      v10 = @"5GStandaloneEnabled?";
      v11 = *(a1 + 1496);
      if (v11 == 2)
      {
        v10 = @"5GStandaloneEnabled2";
      }

      if (v11 == 1)
      {
        v12 = @"5GStandaloneEnabled";
      }

      else
      {
        v12 = v10;
      }

      v13 = &kCFBooleanTrue;
      if (!a2)
      {
        v13 = &kCFBooleanFalse;
      }

      (*(**(a1 + 1432) + 16))(*(a1 + 1432), v12, *v13, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    }
  }
}

void sub_1011931B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_100045C8C(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011931E8(uint64_t a1)
{
  if (*(a1 + 1577) == 1)
  {
    v2 = *(a1 + 24);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT) || (!*(a1 + 1576) ? (v3 = "disabled") : (v3 = "enabled"), v15 = 136315138, v16 = v3, _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone %s by MDM", &v15, 0xCu), (*(a1 + 1577) & 1) != 0))
    {
      v4 = *(a1 + 1576);
LABEL_28:
      v13 = 1;
      return v4 | (v13 << 8);
    }

    goto LABEL_33;
  }

  if (capabilities::ct::supports5G(a1) && (*(a1 + 1612) & 0x1010100) == 0x1000100)
  {
    v5 = *(a1 + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone disabled by entitlement", &v15, 2u);
    }

    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 1617) == 1 && *(a1 + 1616) == 1)
  {
    v6 = *(a1 + 24);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone enabled by enterprise slicing", &v15, 2u);
    }

    v4 = 1;
    goto LABEL_28;
  }

  if ((*(a1 + 1575) != 1 || *(a1 + 1574) == 1) && *(a1 + 1571) == 1)
  {
    v7 = *(a1 + 24);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT) || (v8 = CSIBOOLAsString(*(a1 + 1570)), v15 = 136315138, v16 = v8, _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone enabled user setting: %s", &v15, 0xCu), (*(a1 + 1571) & 1) != 0))
    {
      v4 = *(a1 + 1570);
      goto LABEL_28;
    }

LABEL_33:
    sub_1000D1644();
  }

  v9 = *(a1 + 1573);
  v10 = *(a1 + 24);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9 == 1)
  {
    if (!v11 || (v12 = CSIBOOLAsString(*(a1 + 1572)), v15 = 136315138, v16 = v12, _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone enabled carrier default: %s", &v15, 0xCu), (*(a1 + 1573) & 1) != 0))
    {
      v4 = *(a1 + 1572);
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (v11)
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Carrier bundle not yet setup to determine 5G Standalone enabled support", &v15, 2u);
  }

  v4 = 0;
  v13 = 0;
  return v4 | (v13 << 8);
}

void sub_1011934B4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 1571) == 1)
  {
    v2 = *(a1 + 24);
    a1 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (!a1 || (v3 = CSIBOOLAsString(*(v1 + 1570)), LODWORD(buf) = 136315138, *(&buf + 4) = v3, _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Resetting 5G Standalone enabled user setting of: %s", &buf, 0xCu), (*(v1 + 1571) & 1) != 0))
    {
      *(v1 + 1571) = 0;
    }
  }

  if (capabilities::ct::supportsGemini(a1))
  {
    if (*(v1 + 1384))
    {
      buf = 0uLL;
      v19 = 0;
      PersonalityIdFromSlotId();
      if (isReal())
      {
        if (!(*(**(v1 + 1384) + 72))(*(v1 + 1384), &buf, @"5GStandaloneEnabled", @"RegistrationModel", 0, 1))
        {
          goto LABEL_27;
        }

        v4 = *(v1 + 24);
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v5 = HIBYTE(v19);
        if (v19 < 0)
        {
          v5 = *(&buf + 1);
        }

        p_buf = &buf;
        if (v19 < 0)
        {
          p_buf = buf;
        }

        if (v5)
        {
          v7 = p_buf;
        }

        else
        {
          v7 = "<invalid>";
        }

        v16 = 136315138;
        v17 = v7;
        v8 = "%s : failed to remove 5G Standalone key";
        v9 = v4;
        v10 = 12;
      }

      else
      {
        v15 = *(v1 + 24);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        LOWORD(v16) = 0;
        v8 = "Personality unknown";
        v9 = v15;
        v10 = 2;
      }

      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v16, v10);
LABEL_27:
      if (SHIBYTE(v19) < 0)
      {
        operator delete(buf);
      }

      return;
    }

    v14 = *(v1 + 24);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", &buf, 2u);
    }
  }

  else
  {
    v11 = *(v1 + 1496);
    v12 = @"5GStandaloneEnabled?";
    if (v11 == 2)
    {
      v12 = @"5GStandaloneEnabled2";
    }

    if (v11 == 1)
    {
      v13 = @"5GStandaloneEnabled";
    }

    else
    {
      v13 = v12;
    }

    (*(**(v1 + 1432) + 16))(*(v1 + 1432), v13, 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }
}

void sub_10119376C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101193794(uint64_t a1, int a2)
{
  result = 0;
  if (a2 == -1 || a2 == 5)
  {
    return result;
  }

  v35 = *(a1 + 1572);
  if ((v35 & 0x100) != 0)
  {
    *(a1 + 1573) = 0;
  }

  cf = 0;
  (*(**(a1 + 1368) + 80))(&cf);
  v4 = cf;
  if (cf)
  {
    buf[0] = 0;
    v5 = CFGetTypeID(cf);
    if (v5 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v4, v6);
    }

    v7 = buf[0];
    if (HIBYTE(v35) == 1)
    {
      if (v35 == buf[0])
      {
        goto LABEL_15;
      }

      v8 = *(a1 + 24);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v9 = printers::asString();
      v10 = CSIBOOLAsString(v7);
      v11 = asString();
      *buf = 136315650;
      v37 = v9;
      v38 = 2080;
      v39 = v10;
      v40 = 2080;
      v41 = v11;
      v12 = "#I Resetting previous 5G Standalone enabled carrier support (%s) to %s due to bundle change type: %s";
      v13 = v8;
      v14 = 32;
    }

    else
    {
      v15 = *(a1 + 24);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:
        *(a1 + 1572) = v7 | 0x100;
        goto LABEL_16;
      }

      v16 = CSIBOOLAsString(v7);
      *buf = 136315138;
      v37 = v16;
      v12 = "#I Using carrier 5G Standalone enabled by default value: %s";
      v13 = v15;
      v14 = 12;
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    goto LABEL_15;
  }

LABEL_16:
  sub_10000A1EC(&cf);
  v33 = *(a1 + 1574);
  if ((v33 & 0x100) != 0)
  {
    *(a1 + 1575) = 0;
  }

  cf = 0;
  (*(**(a1 + 1368) + 80))(&cf);
  v17 = cf;
  if (!cf)
  {
    goto LABEL_29;
  }

  buf[0] = 0;
  v18 = CFGetTypeID(cf);
  if (v18 == CFBooleanGetTypeID())
  {
    ctu::cf::assign(buf, v17, v19);
    v20 = buf[0];
    if ((v33 & 0x100) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v20 = 0;
    if ((v33 & 0x100) != 0)
    {
LABEL_21:
      if (v20 == v33)
      {
        goto LABEL_28;
      }

      v21 = *(a1 + 24);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v22 = printers::asString();
      v23 = CSIBOOLAsString(v20 & 1);
      v24 = asString();
      *buf = 136315650;
      v37 = v22;
      v38 = 2080;
      v39 = v23;
      v40 = 2080;
      v41 = v24;
      v25 = "#I Resetting previous 5G Standalone show switch value (%s) to %s due to bundle change type: %s";
      v26 = v21;
      v27 = 32;
      goto LABEL_27;
    }
  }

  v28 = *(a1 + 24);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = CSIBOOLAsString(v20 & 1);
    *buf = 136315138;
    v37 = v29;
    v25 = "#I Using carrier 5G Standalone show switch value: %s";
    v26 = v28;
    v27 = 12;
LABEL_27:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
  }

LABEL_28:
  *(a1 + 1574) = v20 | 0x100;
LABEL_29:
  sub_10000A1EC(&cf);
  v30 = HIBYTE(v35);
  v31 = *(a1 + 1573);
  if (HIBYTE(v35) == v31 && HIBYTE(v35))
  {
    v30 = v35;
    v31 = *(a1 + 1572);
  }

  if (v30 != v31)
  {
    return 1;
  }

  v32 = *(a1 + 1575);
  result = HIBYTE(v33) != v32;
  if (HIBYTE(v33) == v32)
  {
    if (HIBYTE(v33))
    {
      return v33 != *(a1 + 1574);
    }
  }

  return result;
}

void sub_101193B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101193B98(capabilities::ct *a1)
{
  result = capabilities::ct::supportsGemini(a1);
  if (result)
  {
    result = capabilities::ct::supports5G(result);
    if (result)
    {
      v3 = (*(*a1 + 840))(a1);
      v4 = v3;
      v5 = HIBYTE(v3);
      sub_10118E7B4(a1);
      v6 = (*(*a1 + 840))(a1);
      v7 = v6;
      v8 = v6 & 0xFF00;
      result = v5 != v8 >> 8;
      if (v5 == v8 >> 8 && (v5 & 1) != 0)
      {
        return v4 != v7;
      }
    }
  }

  return result;
}

const void **sub_101193C70(uint64_t a1)
{
  v7 = 0;
  (*(**(a1 + 1368) + 80))(buf);
  sub_100060DE8(&v7, buf);
  sub_10000A1EC(buf);
  if (v7)
  {
    sub_100222570((a1 + 192), &v7);
    v2 = *(a1 + 24);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 192);
      *buf = 138543362;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Operator name for wifi calling from cb: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Clearing operator name for wifi calling", buf, 2u);
    }

    v5 = *(a1 + 192);
    *(a1 + 192) = 0;
    *buf = v5;
    sub_100005978(buf);
  }

  return sub_100005978(&v7);
}

void sub_101193DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101193DF8(uint64_t a1, rest::NREntitlementStatus *a2)
{
  result = capabilities::ct::supports5G(a1);
  if (!result)
  {
    return result;
  }

  v5 = (*(*a1 + 840))(a1);
  if ((*(a1 + 1615) & 1) == 0)
  {
    v6 = (a1 + 24);
    v7 = *(a1 + 24);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "#I NR Entitlement status set";
      v9 = buf;
      goto LABEL_8;
    }

LABEL_9:
    rest::NREntitlementStatus::dumpState(a2, v6);
    goto LABEL_10;
  }

  if ((rest::NREntitlementStatus::operator==() & 1) == 0)
  {
    v6 = (a1 + 24);
    v7 = *(a1 + 24);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v8 = "#I NR Entitlement status changed";
      v9 = &v15;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

LABEL_10:
  v10 = *(a1 + 1615);
  v11 = *(a2 + 2);
  *(a1 + 1612) = *a2;
  *(a1 + 1614) = v11;
  if ((v10 & 1) == 0)
  {
    *(a1 + 1615) = 1;
  }

  v12 = (*(*a1 + 840))(a1);
  v13 = v12;
  v14 = v12 & 0xFF00;
  result = HIBYTE(v5) != v14 >> 8;
  if (HIBYTE(v5) == v14 >> 8 && (v5 & 0x100) != 0)
  {
    return v5 != v13;
  }

  return result;
}

BOOL sub_101193F80(_DWORD *a1, _DWORD *a2)
{
  v4 = (*(*a1 + 840))(a1);
  v5 = v4;
  v6 = HIBYTE(v4);
  a1[404] = *a2;
  v7 = (*(*a1 + 840))(a1);
  v8 = v7;
  v9 = v7 & 0xFF00;
  result = v6 != v9 >> 8;
  if (v6 == v9 >> 8)
  {
    v11 = v5 != v8;
    if (v6)
    {
      return v11;
    }

    else
    {
      return v6 != v9 >> 8;
    }
  }

  return result;
}

void sub_10119404C(uint64_t a1, char a2)
{
  *(a1 + 1624) = a2;
  ServiceMap = Registry::getServiceMap(*(a1 + 1416));
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
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
  v13 = (*(*v11 + 32))(v11);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v13)
  {
    (*(*a1 + 360))(a1);
  }
}

void sub_10119418C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011941A8(uint64_t a1, _DWORD *a2)
{
  *(a1 + 1620) = *a2;
  ServiceMap = Registry::getServiceMap(*(a1 + 1416));
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
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
  v13 = (*(*v11 + 32))(v11);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v13)
  {
    (*(*a1 + 360))(a1);
  }
}

void sub_1011942EC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101194320(uint64_t a1, int a2)
{
  if (*(a1 + 554) != a2)
  {
    v2 = a2;
    v4 = *(a1 + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = asStringBool(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I set Dynamic VoNR enabled to %s", &v5, 0xCu);
    }

    *(a1 + 554) = v2;
  }
}

uint64_t sub_101194458(uint64_t result, char a2, char a3)
{
  *(result + 97) = a2;
  *(result + 98) = a3;
  return result;
}

uint64_t sub_1011944D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_1003647D4(a2, *(a1 + 1528), *(a1 + 1536), (*(a1 + 1536) - *(a1 + 1528)) >> 2);
  *(a2 + 24) = *(a1 + 1552);
  return result;
}

void *sub_101194520(uint64_t a1, uint64_t a2)
{
  result = (a1 + 1528);
  if (result != a2)
  {
    result = sub_1000B26FC(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  *(a1 + 1552) = *(a2 + 24);
  return result;
}

void sub_1011945E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101194624(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10119465C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10119468C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101194748(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F16220;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101194780(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_101194818(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011948E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F162A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101194918(void *a1, xpc_object_t *a2)
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

  sub_10011E228(v3, a2);
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

uint64_t sub_1011949F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101194A3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  v5 = (a2 + 40);
  *a1 = *a2;
  v6 = (a1 + 8);
  v7 = (a2 + 8);
  if (v4 == 1)
  {
    MCC::operator=();
    MCC::operator=();
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    MCC::MCC(v6, v7);
    MCC::MCC((a1 + 40), v5);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_101194AC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101194AE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = (a2 + 40);
  *a1 = *a2;
  v6 = (a1 + 8);
  v7 = (a2 + 8);
  if (v4 == 1)
  {
    MCC::operator=();
    MCC::operator=();
    v8 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v8;
  }

  else
  {
    MCC::MCC(v6, v7);
    MCC::MCC((a1 + 40), v5);
    v9 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v9;
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_101194B78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101194B94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = (a2 + 40);
  *a1 = *a2;
  v6 = (a1 + 8);
  v7 = (a2 + 8);
  if (v4 == 1)
  {
    MCC::operator=();
    MCC::operator=();
    v8 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v8;
  }

  else
  {
    MCC::MCC(v6, v7);
    MCC::MCC((a1 + 40), v5);
    v9 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v9;
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_101194C2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101194C48(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  v5 = (a2 + 40);
  *a1 = *a2;
  v6 = (a1 + 8);
  v7 = (a2 + 8);
  if (v4 == 1)
  {
    MCC::operator=();
    MCC::operator=();
    *(a1 + 72) = *(a2 + 72);
    v8 = *(a2 + 104);
    v9 = *(a2 + 120);
    v10 = *(a2 + 136);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 136) = v10;
    *(a1 + 120) = v9;
    *(a1 + 104) = v8;
  }

  else
  {
    MCC::MCC(v6, v7);
    MCC::MCC((a1 + 40), v5);
    *(a1 + 72) = *(a2 + 72);
    v11 = *(a2 + 88);
    v12 = *(a2 + 104);
    v13 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v13;
    *(a1 + 104) = v12;
    *(a1 + 88) = v11;
    *(a1 + 144) = 1;
  }

  return a1;
}

void sub_101194D10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101194DB0(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "reg.time");
  ctu::OsLogLogger::OsLogLogger(v8, &v7);
  ctu::OsLogLogger::OsLogLogger(v4, v8);
  ctu::OsLogLogger::~OsLogLogger(v8);
  ctu::OsLogContext::~OsLogContext(&v7);
  *a1 = off_101F16340;
  *(a1 + 16) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 45) = 0;
  *(a1 + 72) = -1;
  *(a1 + 80) = 0;
  v5 = a2[1];
  *(a1 + 88) = *a2;
  *(a1 + 96) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_101194EA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  RegistrationTimeInterface::~RegistrationTimeInterface(v2);
  _Unwind_Resume(a1);
}

__n128 sub_101194ED4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 16) = v2;
  result = *(a1 + 56);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 72);
  return result;
}

uint64_t sub_101194EF4(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 72) = *(a2 + 12);
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  ServiceMap = Registry::getServiceMap(*(a1 + 88));
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
  v17 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v17);
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
  *(a1 + 80) = (*(*v14 + 88))(v14);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  *(a1 + 16) = 1;
  return (*(*a1 + 64))(a1);
}

void sub_101195048(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10119506C(uint64_t result, unsigned int a2)
{
  *(result + 72) = a2;
  if (a2 <= 1)
  {
    *(result + 52) = a2 == 1;
  }

  return result;
}

uint64_t sub_101195084(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 88));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v23 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v23);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_10:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_11:
  v15 = (*(*v12 + 88))(v12);
  v16 = *(a1 + 80);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v17 = CSIDateToSeconds();
  v18 = v15 - v16;
  v19 = v17 + v15 - v16;
  v20 = *(a1 + 8);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v23) = 67109120;
    HIDWORD(v23) = v18;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Deriving from network time received %d seconds ago", &v23, 8u);
  }

  if (v19 >= v17)
  {
    CSISecondsToDate();
    *(a2 + 24) = *(a1 + 48);
    v22 = *(a1 + 72);
    *(a2 + 48) = v22;
    if (v22 <= 1)
    {
      *(a2 + 28) = v22 == 1;
    }

    return 1;
  }

  else
  {
    v21 = *(a1 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N Sorry, summed time causes overflow - cannot derive", &v23, 2u);
    }

    result = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

void sub_1011952B8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1011952E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Resetting the RegistrationTimeModel Model", &v5, 2u);
  }

  v7 = 0uLL;
  *&v6 = 0;
  *(&v6 + 5) = 0;
  v3 = v6;
  *(a1 + 24) = 0uLL;
  *(a1 + 16) = 0;
  *(a1 + 40) = v3;
  result = *&v7;
  *(a1 + 56) = v7;
  *(a1 + 72) = -1;
  *(a1 + 80) = 0;
  return result;
}

void sub_101195380(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 80);
    v14 = 67109120;
    *v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Last update time stamp: %d", &v14, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 16));
    v14 = 136315138;
    *v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Last time update valid: %s", &v14, 0xCu);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 44);
    v11 = *(a1 + 48);
    if (*(a1 + 52))
    {
      v12 = "DST";
    }

    else
    {
      v12 = "ST";
    }

    v13 = *(a1 + 72);
    v14 = 67111170;
    *v15 = v5;
    *&v15[4] = 1024;
    *&v15[6] = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v8;
    v22 = 1024;
    v23 = v10;
    v24 = 1024;
    v25 = v11;
    v26 = 2080;
    v27 = v12;
    v28 = 1024;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Last time update %02d:%02d:%02d %02d/%02d/%04d %d %s, (%d)", &v14, 0x3Cu);
  }
}

void sub_101195530(void *a1)
{
  *a1 = off_101F16340;
  v2 = a1[12];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  RegistrationTimeInterface::~RegistrationTimeInterface(a1);
}

void sub_101195594(void *a1)
{
  *a1 = off_101F16340;
  v2 = a1[12];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  RegistrationTimeInterface::~RegistrationTimeInterface(a1);

  operator delete();
}

void sub_101195674(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011956B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011956E8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101195718(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_101195758(uint64_t a1)
{
  sub_100004AA0(&v2, (a1 + 8));
  v1 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0();
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0();
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0();
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10119591C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_weak(a30);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_101195968(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = sub_101195AA4;
        v7[3] = &unk_101F16448;
        v7[4] = v3;
        v10 = 0;
        v11 = 0;
        sub_100004AA0(&v10, (v3 + 8));
        v6 = *(v3 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1011975B8;
        block[3] = &unk_101F16660;
        block[5] = v10;
        v9 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v7;
        dispatch_async(v6, block);
        if (v9)
        {
          sub_100004A34(v9);
        }

        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      sub_100004A34(v5);
    }
  }
}

wis::MetricContainer **sub_101195AA4(wis::MetricFactory *a1)
{
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, 0x800A0u);
  if (v5)
  {
    v3 = 0;
    v4 = 0;
    sub_10001C610(&v3);
    if (v3)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  return sub_10001C0A0(&v5);
}

void sub_101195BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_10001C0A0((v15 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_101195C78(uint64_t result, uint64_t a2)
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

void sub_101195C94(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101195CA4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = sub_101195DE0;
        v7[3] = &unk_101F16498;
        v7[4] = v3;
        v10 = 0;
        v11 = 0;
        sub_100004AA0(&v10, (v3 + 8));
        v6 = *(v3 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1011975B8;
        block[3] = &unk_101F16660;
        block[5] = v10;
        v9 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v7;
        dispatch_async(v6, block);
        if (v9)
        {
          sub_100004A34(v9);
        }

        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      sub_100004A34(v5);
    }
  }
}

wis::MetricContainer **sub_101195DE0(wis::MetricFactory *a1)
{
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, 0x800A6u);
  if (v5)
  {
    v3 = 0;
    v4 = 0;
    sub_10001C610(&v3);
    if (v3)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  return sub_10001C0A0(&v5);
}

void sub_101195F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_10001C0A0((v15 - 24));
  _Unwind_Resume(a1);
}

void sub_101195FB4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = sub_1011960F0;
        v7[3] = &unk_101F164E8;
        v7[4] = v3;
        v10 = 0;
        v11 = 0;
        sub_100004AA0(&v10, (v3 + 8));
        v6 = *(v3 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1011975B8;
        block[3] = &unk_101F16660;
        block[5] = v10;
        v9 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v7;
        dispatch_async(v6, block);
        if (v9)
        {
          sub_100004A34(v9);
        }

        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1011960F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  while (v2 != v3)
  {
    v4 = *v2;
    if (*(*v2 + 32) == 1)
    {
      v5 = v2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v4 + 40);
      v7 = _NSConcreteStackBlock;
      v8 = 0x40000000;
      v9 = sub_101196980;
      v10 = &unk_101F16578;
      v11 = &v6;
      sub_1011967D4(0x800A1);
      if (v5)
      {
        sub_100004A34(v5);
      }

      return;
    }

    v2 += 2;
  }
}

void sub_1011961C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011961D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  v4 = *(v2 + 176);
  if (v3 != v4)
  {
    while (*(*v3 + 36) != 1)
    {
      v3 += 2;
      if (v3 == v4)
      {
        return;
      }
    }
  }

  if (v3 != v4)
  {
    v5 = v3[1];
    v6[0] = *v3;
    v6[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1011962A4(v6, *(v2 + 444), *(v2 + 460), v2 + 832, a2);
    if (v5)
    {

      sub_100004A34(v5);
    }
  }
}

void sub_10119628C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011962A4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = a2;
  v10 = sub_100064FC8(*a1, a2, a3) - 1;
  if (v10 > 0xA)
  {
    v11 = 0;
  }

  else
  {
    v11 = dword_101925F68[v10];
  }

  *(a5 + 80) |= 8u;
  *(a5 + 32) = v11;
  sub_10173C874(*a1, &v31);
  v12 = v31;
  v13 = v32;
  if (v31 != v32)
  {
    do
    {
      v14 = *v12 - 1;
      if (v14 > 4)
      {
        v15 = 0;
      }

      else
      {
        v15 = dword_101925F94[v14];
      }

      v16 = *(a5 + 24);
      if (v16 == *(a5 + 28))
      {
        sub_10080B50C(a5 + 16, v16 + 1);
        v16 = *(a5 + 24);
      }

      v17 = *(a5 + 16);
      *(a5 + 24) = v16 + 1;
      *(v17 + 4 * v16) = v15;
      ++v12;
    }

    while (v12 != v13);
    v12 = v31;
  }

  if (v12)
  {
    v32 = v12;
    operator delete(v12);
  }

  v18 = *a1;
  v19 = *(a5 + 80);
  *(a5 + 72) = *(*a1 + 58);
  v20 = (*(v18 + 52) - 2) < 4;
  *(a5 + 80) = v19 | 0x14;
  *(a5 + 73) = v20;
  v21 = *(v18 + 36);
  result = subscriber::simSlotAsInstance();
  v23 = *(a5 + 80);
  v24 = v23 | 0x20;
  *(a5 + 80) = v23 | 0x20;
  *(a5 + 36) = result;
  v27 = *(a4 + 8);
  v26 = a4 + 8;
  v25 = v27;
  if (v27)
  {
    v28 = v26;
    do
    {
      if (*(v25 + 32) >= v21)
      {
        v28 = v25;
      }

      v25 = *(v25 + 8 * (*(v25 + 32) < v21));
    }

    while (v25);
    if (v28 != v26 && v21 >= *(v28 + 32))
    {
      *(a5 + 80) = v23 | 0x60;
      v29 = *(a5 + 40);
      if (v29 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v29, (v28 + 40));
      *(a5 + 80) |= 0x80u;
      v30 = *(a5 + 48);
      if (v30 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = std::string::operator=(v30, (v28 + 64));
      v24 = *(a5 + 80);
    }
  }

  *(a5 + 74) = v21 == v8;
  *(a5 + 80) = v24 | 0x300;
  *(a5 + 75) = v21 == v7;
  return result;
}

void sub_1011964F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10119650C(capabilities::ct *a1, int *a2)
{
  v3 = *(a1 + 4);
  v4 = capabilities::ct::supportsGemini(a1);
  if (v4)
  {
    v5 = *(v3 + 824);
    if (v5 == 2)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2 * (v5 == 1);
    }
  }

  else
  {
    v6 = 1;
  }

  a2[12] |= 2u;
  a2[10] = v6;
  if (capabilities::ct::supportsGemini(v4))
  {
    v7 = *(v3 + 168);
    v8 = *(v3 + 176);
    if ((v8 - v7) < 0x11)
    {
      return;
    }
  }

  else
  {
    v7 = *(v3 + 168);
    v8 = *(v3 + 176);
  }

  if (v7 != v8)
  {
    v9 = (v3 + 864);
    do
    {
      v10 = *(*v7 + 36);
      if (v10)
      {
        v11 = a2[7];
        v12 = a2[6];
        if (v12 >= v11)
        {
          if (v11 == a2[8])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v11 + 1);
            v11 = a2[7];
          }

          a2[7] = v11 + 1;
          operator new();
        }

        v13 = *(a2 + 2);
        a2[6] = v12 + 1;
        v14 = *(v13 + 8 * v12);
        if (v14)
        {
          v15 = *v9;
          if (!*v9)
          {
            goto LABEL_26;
          }

          v16 = v3 + 864;
          do
          {
            if (*(v15 + 32) >= v10)
            {
              v16 = v15;
            }

            v15 = *(v15 + 8 * (*(v15 + 32) < v10));
          }

          while (v15);
          if (v16 != v9 && v10 >= *(v16 + 32))
          {
            *(v14 + 80) |= 0x400u;
            v18 = *(v14 + 56);
            if (v18 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            std::string::operator=(v18, (v16 + 48));
            *(v14 + 80) |= 0x800u;
            v19 = *(v14 + 64);
            if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            std::string::operator=(v19, (v16 + 72));
          }

          else
          {
LABEL_26:
            v17 = *(v3 + 40);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find carrier bundle!", buf, 2u);
            }
          }

          v20 = *(v7 + 1);
          v21[0] = *v7;
          v21[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_1011962A4(v21, *(v3 + 444), *(v3 + 460), v3 + 832, v14);
          if (v20)
          {
            sub_100004A34(v20);
          }
        }
      }

      v7 += 16;
    }

    while (v7 != v8);
  }
}

BOOL sub_1011967D4(wis::MetricFactory *a1)
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

void sub_101196900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101196980(uint64_t result, uint64_t a2)
{
  v2 = **(result + 32);
  switch(v2)
  {
    case 3:
      v3 = *(a2 + 24);
      v4 = 1;
      goto LABEL_7;
    case 2:
      v3 = *(a2 + 24);
      v4 = 257;
LABEL_7:
      *(a2 + 16) = v4;
      *(a2 + 24) = v3 | 6;
      return result;
    case 1:
      *(a2 + 24) |= 2u;
      *(a2 + 16) = 0;
      break;
  }

  return result;
}

BOOL sub_1011969D8(wis::MetricFactory *a1)
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

void sub_101196B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101196B84(uint64_t a1, uint64_t a2)
{
  result = subscriber::simSlotAsInstance();
  *(a2 + 24) |= 2u;
  *(a2 + 16) = result;
  return result;
}

BOOL sub_101196BBC(wis::MetricFactory *a1)
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

void sub_101196CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101196D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 36);
  *(a2 + 28) |= 2u;
  *(a2 + 16) = v3;
  result = subscriber::simSlotAsInstance();
  *(a2 + 28) |= 4u;
  *(a2 + 20) = result;
  return result;
}

BOOL sub_101196DB4(wis::MetricFactory *a1)
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

void sub_101196EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101196F60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 36);
  *(a2 + 28) |= 2u;
  *(a2 + 16) = v3;
  result = subscriber::simSlotAsInstance();
  *(a2 + 28) |= 4u;
  *(a2 + 20) = result;
  return result;
}

void sub_101196FAC(void *a1, int a2, uint64_t a3)
{
  v6 = subscriber::simSlotAsInstance();
  v7 = *(a3 + 44) | 8;
  *(a3 + 44) = v7;
  *(a3 + 20) = v6;
  for (i = a1[21]; ; i += 2)
  {
    if (i == a1[22])
    {
      v10 = 0;
      LOBYTE(v11) = 0;
      goto LABEL_9;
    }

    v9 = *i;
    if (*(*i + 36) == a2)
    {
      break;
    }
  }

  v10 = i[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = (*(v9 + 52) < 6u) & (2u >> *(v9 + 52));
  v7 = *(a3 + 44);
LABEL_9:
  *(a3 + 44) = v7 | 0x10;
  *(a3 + 18) = v11;
  v12 = a1[105];
  if (v12)
  {
    v13 = a1 + 105;
    v14 = a1 + 105;
    do
    {
      if (*(v12 + 32) >= a2)
      {
        v14 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 32) < a2));
    }

    while (v12);
    if (v14 != v13 && *(v14 + 8) <= a2)
    {
      *(a3 + 44) = v7 | 0x30;
      v15 = *(a3 + 24);
      if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v15, (v14 + 5));
      *(a3 + 44) |= 0x40u;
      v16 = *(a3 + 32);
      if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v16, (v14 + 8));
    }
  }

  if (v10)
  {

    sub_100004A34(v10);
  }
}

void sub_101197150(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_101197168(wis::MetricFactory *a1)
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

void sub_101197294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

void sub_101197314(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(a2 + 44) |= 4u;
  *(a2 + 17) = 1;
  sub_101196FAC(v2, *(a1 + 40), a2);
}

void sub_10119733C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 44);
  *(a2 + 16) = *(a1 + 44);
  *(a2 + 44) = v3 | 6;
  *(a2 + 17) = 0;
  sub_101196FAC(v2, *(a1 + 40), a2);
}

BOOL sub_101197368(wis::MetricFactory *a1)
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

void sub_101197494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101197514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  *(a2 + 40) |= 2u;
  *(a2 + 24) = v3;
  v4 = *(a1 + 32);
  if (v4 - 1 >= 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if ((awd::metrics::CommCenterSimAuthenticationType_IsValid(v5, a2) & 1) == 0)
  {
    __assert_rtn("set_type", "CCMetricsAdHoc.pb.h", 27376, "::awd::metrics::CommCenterSimAuthenticationType_IsValid(value)");
  }

  *(a2 + 40) |= 8u;
  *(a2 + 28) = v5;
  result = subscriber::simSlotAsInstance();
  *(a2 + 40) |= 0x10u;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1011975C8(uint64_t result, uint64_t a2)
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

void sub_1011975E4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1011975F4(const void **a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v22[0] = off_101F16790;
  v22[1] = a2;
  v22[2] = &v20;
  v22[3] = v22;
  CarrierBundleHandler::loadKeyValuesTableFrom_sync(a2, a2 + 336, v22);
  sub_10119BF08(v22);
  v6 = v21[0];
  if (!v21[0])
  {
    goto LABEL_9;
  }

  v7 = *(a3 + 76);
  v8 = v21;
  do
  {
    v9 = *(v6 + 54);
    v10 = v9 >= v7;
    v11 = v9 < v7;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * v11];
  }

  while (v6);
  if (v8 != v21 && v7 >= *(v8 + 54))
  {
    v22[0] = a3;
    v14 = sub_10119B6B0(a2 + 312, v7);
    sub_100220FC4((v14 + 17), (v8 + 17));
    Cdma1xCell::dumpState(a3, (a2 + 40));
    CarrierBundleHandler::validateBundleNamesResult_sync(a2, v8 + 17, &v19);
    if (&v19 != a1)
    {
      v22[0] = *a1;
      *a1 = v19;
      v19 = 0;
      sub_10001021C(v22);
    }

    sub_10001021C(&v19);
  }

  else
  {
LABEL_9:
    Cdma1xCell::dumpState(a3, (a2 + 40));
    v22[0] = a3;
    v12 = sub_10119B6B0(a2 + 312, *(a3 + 76));
    v13 = v12;
    if (*(v12 + 160) == 1)
    {
      v22[0] = (v12 + 17);
      sub_1000087B4(v22);
      *(v13 + 160) = 0;
    }
  }

  v15 = *(a2 + 296);
  if (!v15)
  {
LABEL_21:
    operator new();
  }

  v16 = *(a3 + 76);
  while (1)
  {
    while (1)
    {
      v17 = v15;
      v18 = *(v15 + 54);
      if (v18 <= v16)
      {
        break;
      }

      v15 = *v17;
      if (!*v17)
      {
        goto LABEL_21;
      }
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = v17[1];
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  sub_1000676D4(v17 + 17, a1);
  sub_101075CA4(&v20, v21[0]);
}

void sub_10119788C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12)
{
  sub_101075CA4(&a11, a12);
  sub_10001021C(v12);
  _Unwind_Resume(a1);
}

void CarrierBundleHandler::validateBundleNamesResult_sync(uint64_t a1@<X0>, __int128 **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  if (a2[3])
  {
    v5 = *a2;
    v4 = a2[1];
    if (*a2 != v4)
    {
      key = qword_101FCB700;
      while (1)
      {
        value = 0;
        if (*(v5 + 23) < 0)
        {
          sub_100005F2C(&__dst, *v5, *(v5 + 1));
        }

        else
        {
          v6 = *v5;
          v38 = *(v5 + 2);
          __dst = v6;
        }

        if (SHIBYTE(v38) < 0)
        {
          sub_100005F2C(&buf, __dst, *(&__dst + 1));
        }

        else
        {
          buf = __dst;
          v44 = v38;
        }

        v40 = 0;
        if (SHIBYTE(v44) < 0)
        {
          sub_100005F2C(__p, buf, *(&buf + 1));
        }

        else
        {
          *__p = buf;
          v32[0] = v44;
        }

        Mutable = 0;
        if (ctu::cf::convert_copy())
        {
          v7 = v40;
          v40 = Mutable;
          v42 = v7;
          sub_100005978(&v42);
        }

        if (SHIBYTE(v32[0]) < 0)
        {
          operator delete(__p[0]);
        }

        value = v40;
        v40 = 0;
        sub_100005978(&v40);
        if (SHIBYTE(v44) < 0)
        {
          operator delete(buf);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(__dst);
        }

        v42 = 0;
        v8 = sub_10030D96C((a1 + 40), value);
        v42 = v8;
        v36 = 0u;
        *v35 = 0u;
        *v33 = 0u;
        memset(v34, 0, sizeof(v34));
        memset(v32, 0, sizeof(v32));
        *__p = 0u;
        v30 = v8;
        if (v8)
        {
          CFRetain(v8);
        }

        CarrierBundleHandler::lookupBundle_sync(a1, 1u, &v30, __p);
        sub_10001021C(&v30);
        sub_1000481D4(&buf);
        if (SHIBYTE(v32[0]) >= 0)
        {
          v9 = HIBYTE(v32[0]);
        }

        else
        {
          v9 = __p[1];
        }

        v10 = HIBYTE(v44);
        v11 = SHIBYTE(v44);
        if (SHIBYTE(v44) < 0)
        {
          v10 = *(&buf + 1);
        }

        if (v9 == v10)
        {
          if (SHIBYTE(v32[0]) >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          if (SHIBYTE(v44) >= 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf;
          }

          v14 = memcmp(v12, p_buf, v9) == 0;
          if ((v11 & 0x80000000) == 0)
          {
LABEL_38:
            if (v14)
            {
              goto LABEL_39;
            }

            goto LABEL_50;
          }
        }

        else
        {
          v14 = 0;
          if ((SHIBYTE(v44) & 0x80000000) == 0)
          {
            goto LABEL_38;
          }
        }

        operator delete(buf);
        if (v14)
        {
LABEL_39:
          Mutable = 0;
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFDictionaryAddValue(Mutable, key, value);
          sub_100010180(&v29, &Mutable);
          CarrierBundleHandler::lookupBundle_sync(a1, 1u, &v29, &buf);
          if (SHIBYTE(v32[0]) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = buf;
          v32[0] = v44;
          HIBYTE(v44) = 0;
          LOBYTE(buf) = 0;
          if (SHIBYTE(v32[3]) < 0)
          {
            operator delete(v32[1]);
          }

          *&v32[1] = v45;
          v32[3] = v46;
          HIBYTE(v46) = 0;
          LOBYTE(v45) = 0;
          if (SHIBYTE(v34[0]) < 0)
          {
            operator delete(v33[0]);
          }

          *v33 = v47;
          v34[0] = v48;
          HIBYTE(v48) = 0;
          LOBYTE(v47) = 0;
          if (SHIBYTE(v34[3]) < 0)
          {
            operator delete(v34[1]);
          }

          *&v34[1] = v49;
          v34[3] = v50;
          HIBYTE(v50) = 0;
          LOBYTE(v49) = 0;
          if (SBYTE7(v36) < 0)
          {
            operator delete(v35[0]);
            *v35 = v51;
            *&v36 = v52;
            HIBYTE(v52) = 0;
            LOBYTE(v51) = 0;
            BYTE8(v36) = v53;
            if (SHIBYTE(v50) < 0)
            {
              operator delete(v49);
            }
          }

          else
          {
            *v35 = v51;
            *&v36 = v52;
            HIBYTE(v52) = 0;
            LOBYTE(v51) = 0;
            BYTE8(v36) = v53;
          }

          if (SHIBYTE(v48) < 0)
          {
            operator delete(v47);
          }

          if (SHIBYTE(v46) < 0)
          {
            operator delete(v45);
          }

          if (SHIBYTE(v44) < 0)
          {
            operator delete(buf);
          }

          sub_10001021C(&v29);
          sub_100010180(&v40, &Mutable);
          v22 = v42;
          v42 = v40;
          *&buf = v22;
          v40 = 0;
          sub_10001021C(&buf);
          sub_10001021C(&v40);
          sub_1000296E0(&Mutable);
          goto LABEL_75;
        }

LABEL_50:
        Mutable = 0;
        if (SHIBYTE(v34[0]) >= 0)
        {
          v15 = v33;
        }

        else
        {
          v15 = v33[0];
        }

        if (SHIBYTE(v34[0]) >= 0)
        {
          v16 = HIBYTE(v34[0]);
        }

        else
        {
          v16 = v33[1];
        }

        v17 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, v15, v16, 1u);
        Mutable = v17;
        v28 = v17;
        if (v17)
        {
          CFRetain(v17);
        }

        v18 = sub_100AB02B8((a1 + 40), (a1 + 104), &v28);
        sub_1002030AC(&v28);
        if ((v18 & 1) == 0)
        {
          v19 = *(a1 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            if (SHIBYTE(v32[0]) >= 0)
            {
              v20 = __p;
            }

            else
            {
              v20 = __p[0];
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Matched bundle is not allowed for this device, %s", &buf, 0xCu);
          }

          sub_1002030AC(&Mutable);
          v21 = 5;
          goto LABEL_82;
        }

        sub_1002030AC(&Mutable);
LABEL_75:
        v23 = HIBYTE(v32[0]);
        if (SHIBYTE(v32[0]) < 0)
        {
          v23 = __p[1];
        }

        if (v23)
        {
          v24 = *(a1 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v42;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Found bundle matching is %@", &buf, 0xCu);
          }

          sub_1000676D4(a3, &v42);
          v21 = 4;
        }

        else
        {
          v21 = 0;
        }

LABEL_82:
        if (SBYTE7(v36) < 0)
        {
          operator delete(v35[0]);
        }

        if (SHIBYTE(v34[3]) < 0)
        {
          operator delete(v34[1]);
        }

        if (SHIBYTE(v34[0]) < 0)
        {
          operator delete(v33[0]);
        }

        if (SHIBYTE(v32[3]) < 0)
        {
          operator delete(v32[1]);
        }

        if (SHIBYTE(v32[0]) < 0)
        {
          operator delete(__p[0]);
        }

        sub_10001021C(&v42);
        sub_100005978(&value);
        if (v21 == 5 || !v21)
        {
          v5 = (v5 + 24);
          if (v5 != v4)
          {
            continue;
          }
        }

        return;
      }
    }
  }

  else
  {
    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I No results when validating bundle names", __p, 2u);
    }
  }
}

void sub_101197F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51, int a52, __int16 a53, char a54, char a55, int a56, __int16 a57, char a58, char a59)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101197FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(va);
  if (*(v37 - 217) < 0)
  {
    operator delete(*(v37 - 240));
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  JUMPOUT(0x101197FE0);
}

void CarrierBundleHandler::lookupEquivalentBundleNameForMccAndMnc_sync(CarrierBundleHandler *this@<X0>, const MCCAndMNC *a2@<X1>, const void **a3@<X8>)
{
  v6 = sub_100DA6360(this + 360);
  if ((this + 368) == v6)
  {

    CarrierBundleHandler::loadTableAndLookupBundleNameForMccAndMnc_sync(this, a2, a3);
  }

  else
  {

    sub_100010024(a3, v6 + 12);
  }
}

void CarrierBundleHandler::loadTableAndLookupBundleNameForMccAndMnc_sync(CarrierBundleHandler *this@<X0>, const MCCAndMNC *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  CarrierBundleHandler::loadEquivalentTableFrom_sync(this, this + 384, &v9);
  v6 = sub_100DA6360(&v9);
  if (v10 != v6)
  {
    CarrierBundleHandler::validateBundleNamesResult_sync(this, (v6 + 96), &v8);
    if (&v8 != a3)
    {
      v11 = *a3;
      *a3 = v8;
      v8 = 0;
      sub_10001021C(&v11);
    }

    sub_10001021C(&v8);
  }

  v11 = a2;
  v7 = sub_10119B880(this + 360);
  sub_1000676D4((v7 + 96), a3);
  sub_10119B7F4(&v9, v10[0]);
}

void sub_1011981A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12)
{
  sub_10119B7F4(&a11, a12);
  sub_10001021C(v12);
  _Unwind_Resume(a1);
}

uint64_t CarrierBundleHandler::loadEquivalentTableFrom_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = off_101F16700;
  v4[1] = a1;
  v4[2] = a3;
  v4[3] = v4;
  CarrierBundleHandler::loadKeyValuesTableFrom_sync(a1, a2, v4);
  return sub_10119BF08(v4);
}

void sub_101198250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10119BF08(va);
  _Unwind_Resume(a1);
}

void CarrierBundleHandler::getBundleNamesForSID(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10119BAA4;
  v6[3] = &unk_101F16690;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0u;
    a3[1] = 0u;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10119BC14;
    v11 = &unk_101F166D0;
    v12 = a3;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10119BBA8;
    v11 = &unk_101F166B0;
    v12 = a3;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

uint64_t sub_10119838C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 320);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(a3 + 76);
  v8 = a2 + 320;
  do
  {
    v9 = *(v6 + 108);
    v10 = v9 >= v7;
    v11 = v9 < v7;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 != a2 + 320 && v7 >= *(v8 + 108))
  {

    return sub_100221970(a1, v8 + 136);
  }

  else
  {
LABEL_9:
    sub_1011975F4(&v13, a2, a3);
    sub_10001021C(&v13);
    return sub_10119838C(a1, a2, a3);
  }
}

uint64_t CarrierBundleHandler::loadKeyValuesTableFrom_sync(uint64_t result, uint64_t a2, uint64_t a3)
{
  v84 = result;
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    bzero(v100, 0x240uLL);
    sub_100DA5EC0(v100);
    if (v100[17])
    {
      memset(&v97, 0, sizeof(v97));
      v5 = v100[0];
      v6 = (v100 + *(v100[0] - 3));
      if (!v6->__rdstate_)
      {
        std::ios_base::getloc(v6);
        v7 = std::locale::use_facet(v98, &std::ctype<char>::id);
        (v7->__vftable[2].~facet_0)(v7, 10);
        std::locale::~locale(v98);
        sub_10081E7D0(v100);
        v5 = v100[0];
      }

      for (i = (v100 + *(v5 - 3)); !i->__rdstate_; i = (v100 + *(v100[0] - 3)))
      {
        std::ios_base::getloc(i);
        v9 = std::locale::use_facet(v98, &std::ctype<char>::id);
        (v9->__vftable[2].~facet_0)(v9, 10);
        std::locale::~locale(v98);
        sub_10081E7D0(v100);
        std::locale::locale(&v88);
        LODWORD(v92.__r_.__value_.__l.__data_) = 0x4000;
        std::locale::locale(&v92.__r_.__value_.__r.__words[1], &v88);
        LODWORD(v95.__locale_) = v92.__r_.__value_.__l.__data_;
        std::locale::locale(v96, &v92.__r_.__value_.__r.__words[1]);
        sub_100DA6BA8(&v97, &v95);
        std::locale::~locale(v96);
        LODWORD(v94.__r_.__value_.__l.__data_) = v92.__r_.__value_.__l.__data_;
        std::locale::locale(&v94.__r_.__value_.__r.__words[1], &v92.__r_.__value_.__r.__words[1]);
        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v97;
        }

        else
        {
          v10 = v97.__r_.__value_.__r.__words[0];
        }

        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v97.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v97.__r_.__value_.__l.__size_;
        }

        LODWORD(v98[0].__locale_) = v94.__r_.__value_.__l.__data_;
        std::locale::locale(&v98[1], &v94.__r_.__value_.__r.__words[1]);
        if (size)
        {
          v12 = (v10 + size);
          v13 = v10;
          while (1)
          {
            v14 = v13->__r_.__value_.__s.__data_[0];
            v15 = std::locale::use_facet(&v98[1], &std::ctype<char>::id);
            if ((v14 & 0x80) != 0 || (*(&v15[1].~facet + v14) & v98[0].__locale_) == 0)
            {
              break;
            }

            v13 = (v13 + 1);
            if (!--size)
            {
              v13 = v12;
              break;
            }
          }
        }

        else
        {
          v13 = v10;
        }

        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v97;
        }

        else
        {
          v16 = v97.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v97, v10 - v16, v13 - v10);
        std::locale::~locale(&v98[1]);
        std::locale::~locale(&v94.__r_.__value_.__r.__words[1]);
        std::locale::~locale(&v92.__r_.__value_.__r.__words[1]);
        std::locale::~locale(&v88);
        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v97.__r_.__value_.__l.__size_)
          {
            v17 = v97.__r_.__value_.__r.__words[0];
LABEL_30:
            if (v17->__r_.__value_.__s.__data_[0] != 35)
            {
              v95.__locale_ = 0;
              v96[0].__locale_ = 0;
              v96[1].__locale_ = 0;
              ctu::tokenize();
              if (0xAAAAAAAAAAAAAAABLL * ((v96[0].__locale_ - v95.__locale_) >> 3) > 1)
              {
                memset(&v94, 0, sizeof(v94));
                if (*(v95.__locale_ + 23) < 0)
                {
                  sub_100005F2C(&__dst, *v95.__locale_, *(v95.__locale_ + 1));
                }

                else
                {
                  v21 = *v95.__locale_;
                  __dst.__r_.__value_.__r.__words[2] = *(v95.__locale_ + 2);
                  *&__dst.__r_.__value_.__l.__data_ = v21;
                }

                v22 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                p_dst = __dst.__r_.__value_.__r.__words[0];
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_dst = &__dst;
                }

                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v22 = __dst.__r_.__value_.__l.__size_;
                }

                if (v22)
                {
                  v24 = v22;
                  while (1)
                  {
                    v25 = (p_dst + v24);
                    v26 = p_dst->__r_.__value_.__s.__data_[v24 - 1];
                    v27 = v26 > 0x22;
                    v28 = (1 << v26) & 0x500000200;
                    if (v27 || v28 == 0)
                    {
                      break;
                    }

                    if (!--v24)
                    {
                      goto LABEL_54;
                    }
                  }
                }

                else
                {
LABEL_54:
                  v25 = p_dst;
                }

                std::string::erase(&__dst, v25 - p_dst, p_dst + v22 - v25);
                v31 = __dst.__r_.__value_.__l.__size_;
                v30 = __dst.__r_.__value_.__r.__words[0];
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v30 = &__dst;
                }

                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v31 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                }

                if (v31)
                {
                  v32 = (v30 + v31);
                  v33 = v30;
                  while (1)
                  {
                    v34 = v33->__r_.__value_.__s.__data_[0];
                    v27 = v34 > 0x22;
                    v35 = (1 << v34) & 0x500000200;
                    if (v27 || v35 == 0)
                    {
                      break;
                    }

                    v33 = (v33 + 1);
                    if (!--v31)
                    {
                      v33 = v32;
                      break;
                    }
                  }
                }

                else
                {
                  v33 = v30;
                }

                std::string::erase(&__dst, 0, v33 - v30);
                v94 = __dst;
                memset(&__dst, 0, sizeof(__dst));
                v37 = *(v95.__locale_ + 47);
                memset(&v92, 0, sizeof(v92));
                if (v37 < 0)
                {
                  sub_100005F2C(&v91, *(v95.__locale_ + 3), *(v95.__locale_ + 4));
                }

                else
                {
                  v91 = *(v95.__locale_ + 1);
                }

                v38 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
                v39 = v91.__r_.__value_.__r.__words[0];
                if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v39 = &v91;
                }

                if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v38 = v91.__r_.__value_.__l.__size_;
                }

                if (v38)
                {
                  v40 = v38;
                  while (1)
                  {
                    v41 = (v39 + v40);
                    v42 = v39->__r_.__value_.__s.__data_[v40 - 1];
                    v27 = v42 > 0x22;
                    v43 = (1 << v42) & 0x500000200;
                    if (v27 || v43 == 0)
                    {
                      break;
                    }

                    if (!--v40)
                    {
                      goto LABEL_82;
                    }
                  }
                }

                else
                {
LABEL_82:
                  v41 = v39;
                }

                std::string::erase(&v91, v41 - v39, v39 + v38 - v41);
                v46 = v91.__r_.__value_.__l.__size_;
                v45 = v91.__r_.__value_.__r.__words[0];
                if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v45 = &v91;
                }

                if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v46 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
                }

                if (v46)
                {
                  v47 = (v45 + v46);
                  v48 = v45;
                  while (1)
                  {
                    v49 = v48->__r_.__value_.__s.__data_[0];
                    v27 = v49 > 0x22;
                    v50 = (1 << v49) & 0x500000200;
                    if (v27 || v50 == 0)
                    {
                      break;
                    }

                    v48 = (v48 + 1);
                    if (!--v46)
                    {
                      v48 = v47;
                      break;
                    }
                  }
                }

                else
                {
                  v48 = v45;
                }

                std::string::erase(&v91, 0, v48 - v45);
                v92 = v91;
                memset(&v91, 0, sizeof(v91));
                v52 = v94.__r_.__value_.__l.__size_;
                v53 = SHIBYTE(v94.__r_.__value_.__r.__words[2]);
                if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v52 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
                }

                if (!v52)
                {
                  goto LABEL_147;
                }

                v54 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
                if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v54 = v92.__r_.__value_.__l.__size_;
                }

                if (v54)
                {
                  v99 = 1;
                  memset(v98, 0, sizeof(v98));
                  v89 = 0;
                  v90 = 0;
                  v88.__locale_ = 0;
                  __p.__r_.__value_.__r.__words[0] = &v88;
                  sub_1000087B4(&__p);
                  v88.__locale_ = 0;
                  v89 = 0;
                  v90 = 0;
                  ctu::tokenize();
                  locale = v88.__locale_;
                  v56 = v89;
                  while (locale != v56)
                  {
                    memset(&__p, 0, sizeof(__p));
                    if (*(locale + 23) < 0)
                    {
                      sub_100005F2C(&v86, *locale, *(locale + 1));
                    }

                    else
                    {
                      v57 = *locale;
                      v86.__r_.__value_.__r.__words[2] = *(locale + 2);
                      *&v86.__r_.__value_.__l.__data_ = v57;
                    }

                    v58 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
                    v59 = v86.__r_.__value_.__r.__words[0];
                    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v59 = &v86;
                    }

                    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v58 = v86.__r_.__value_.__l.__size_;
                    }

                    if (v58)
                    {
                      v60 = v58;
                      while (1)
                      {
                        v61 = (v59 + v60);
                        v62 = v59->__r_.__value_.__s.__data_[v60 - 1];
                        v27 = v62 > 0x22;
                        v63 = (1 << v62) & 0x500000200;
                        if (v27 || v63 == 0)
                        {
                          break;
                        }

                        if (!--v60)
                        {
                          goto LABEL_118;
                        }
                      }
                    }

                    else
                    {
LABEL_118:
                      v61 = v59;
                    }

                    std::string::erase(&v86, v61 - v59, v59 + v58 - v61);
                    v66 = v86.__r_.__value_.__l.__size_;
                    v65 = v86.__r_.__value_.__r.__words[0];
                    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v65 = &v86;
                    }

                    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v66 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
                    }

                    if (v66)
                    {
                      v67 = (v65 + v66);
                      v68 = v65;
                      while (1)
                      {
                        v69 = v68->__r_.__value_.__s.__data_[0];
                        v27 = v69 > 0x22;
                        v70 = (1 << v69) & 0x500000200;
                        if (v27 || v70 == 0)
                        {
                          break;
                        }

                        v68 = (v68 + 1);
                        if (!--v66)
                        {
                          v68 = v67;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v68 = v65;
                    }

                    std::string::erase(&v86, 0, v68 - v65);
                    __p = v86;
                    memset(&v86, 0, sizeof(v86));
                    v72 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v72 = __p.__r_.__value_.__l.__size_;
                    }

                    if (v72)
                    {
                      v73 = v98[1].__locale_;
                      if (v98[1].__locale_ >= v98[2].__locale_)
                      {
                        v76 = sub_10016B30C(v98, &__p);
                      }

                      else
                      {
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100005F2C(v98[1].__locale_, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v74 = *&__p.__r_.__value_.__l.__data_;
                          *(v98[1].__locale_ + 2) = *(&__p.__r_.__value_.__l + 2);
                          *v73 = v74;
                        }

                        v76 = (v73 + 24);
                      }

                      v98[1].__locale_ = v76;
                    }

                    else
                    {
                      v75 = *(v84 + 40);
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#E Empty Bundle Name value", buf, 2u);
                      }
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    locale = (locale + 24);
                  }

                  v80 = *(a3 + 24);
                  if (!v80)
                  {
                    sub_100022DB4();
                  }

                  (*(*v80 + 48))(v80, &v94, v98);
                  __p.__r_.__value_.__r.__words[0] = &v88;
                  sub_1000087B4(&__p);
                  if (v99 == 1)
                  {
                    v88.__locale_ = v98;
                    sub_1000087B4(&v88);
                  }
                }

                else
                {
LABEL_147:
                  v77 = *(v84 + 40);
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                  {
                    v78 = v94.__r_.__value_.__r.__words[0];
                    if (v53 >= 0)
                    {
                      v78 = &v94;
                    }

                    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v79 = &v92;
                    }

                    else
                    {
                      v79 = v92.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(v98[0].__locale_) = 136446466;
                    *(&v98[0].__locale_ + 4) = v78;
                    WORD2(v98[1].__locale_) = 2082;
                    *(&v98[1].__locale_ + 6) = v79;
                    _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Empty strings in the file (%{public}s), (%{public}s)", v98, 0x16u);
                  }
                }

                if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v92.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v94.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v18 = *(v84 + 40);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v19 = &v97;
                  }

                  else
                  {
                    v19 = v97.__r_.__value_.__r.__words[0];
                  }

                  if (*(a2 + 23) >= 0)
                  {
                    v20 = a2;
                  }

                  else
                  {
                    v20 = *a2;
                  }

                  LODWORD(v98[0].__locale_) = 136446466;
                  *(&v98[0].__locale_ + 4) = v19;
                  WORD2(v98[1].__locale_) = 2082;
                  *(&v98[1].__locale_ + 6) = v20;
                  _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Not able to parse the line %{public}s in the %{public}s file", v98, 0x16u);
                }
              }

              v98[0].__locale_ = &v95;
              sub_1000087B4(v98);
            }
          }
        }

        else if (*(&v97.__r_.__value_.__s + 23))
        {
          v17 = &v97;
          goto LABEL_30;
        }
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v81 = *(v84 + 40);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 23) >= 0)
        {
          v82 = a2;
        }

        else
        {
          v82 = *a2;
        }

        LODWORD(v98[0].__locale_) = 136446210;
        *(&v98[0].__locale_ + 4) = v82;
        _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Failed to open the file %{public}s", v98, 0xCu);
      }
    }

    std::filebuf::~filebuf();
    std::istream::~istream();
    return std::ios::~ios();
  }

  return result;
}

void sub_101198F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, std::locale a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  a55.__locale_ = &a46;
  sub_1000087B4(&a55);
  if (a54 < 0)
  {
    operator delete(a49);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void CarrierBundleHandler::evaluateBestPathToPLMNTable_sync(uint64_t a1, uint64_t a2)
{
  memset(&__str, 0, sizeof(__str));
  sub_101199274(&__str, a1, @"SIDTableFileName", @"SIDTableVersion", "SID Table", a2);
  v3 = (a1 + 336);
  v4 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v6 = *(a1 + 359);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 344);
  }

  if (size != v6 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v8 = &__str) : (v8 = __str.__r_.__value_.__r.__words[0]), v7 >= 0 ? (v9 = (a1 + 336)) : (v9 = *v3), memcmp(v8, v9, size)))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (a1 + 336);
      if (v7 < 0)
      {
        v11 = *v3;
      }

      p_str = __str.__r_.__value_.__r.__words[0];
      if (v4 >= 0)
      {
        p_str = &__str;
      }

      *buf = 136446466;
      v15 = v11;
      v16 = 2082;
      v17 = p_str;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I CDMA 1x SID lookup table path is changing from '%{public}s' to '%{public}s'", buf, 0x16u);
    }

    std::string::operator=((a1 + 336), &__str);
    sub_101075C28(a1 + 288, *(a1 + 296));
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 288) = a1 + 296;
    sub_101075CA4(a1 + 312, *(a1 + 320));
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    *(a1 + 312) = a1 + 320;
    LOBYTE(v4) = *(&__str.__r_.__value_.__s + 23);
  }

  if ((v4 & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_101199250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101199274(std::string *a1, void *a2, uint64_t a3, uint64_t a4, std::string::size_type a5, uint64_t a6)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v70 = 0;
  ServiceMap = Registry::getServiceMap(a2[13]);
  v11 = ServiceMap;
  v13 = v12;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v14 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  __dst.__r_.__value_.__r.__words[0] = v13;
  v17 = sub_100009510(&v11[1].__m_.__sig, &__dst);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v11);
  v18 = 0;
  v20 = 1;
LABEL_9:
  (*(*v19 + 80))(&__p, v19, a6, 1, a4, 0, 0);
  sub_100060DE8(&v70, &__p.__r_.__value_.__l.__data_);
  sub_10000A1EC(&__p.__r_.__value_.__l.__data_);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  if (v70)
  {
    v21 = a2[5];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      memset(&__dst, 0, sizeof(__dst));
      ctu::cf::assign();
      __p = __dst;
      p_p = __dst.__r_.__value_.__r.__words[0];
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      *buf = 136446466;
      *&buf[4] = a5;
      v73 = 2082;
      v74 = p_p;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %{public}s File version in carrier bundle: %{public}s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v69 = 0;
  v23 = Registry::getServiceMap(a2[13]);
  v24 = v23;
  v25 = v12;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v26 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v27 = 5381;
    do
    {
      v25 = v27;
      v28 = *v26++;
      v27 = (33 * v27) ^ v28;
    }

    while (v28);
  }

  std::mutex::lock(v23);
  __dst.__r_.__value_.__r.__words[0] = v25;
  v29 = sub_100009510(&v24[1].__m_.__sig, &__dst);
  if (v29)
  {
    v31 = v29[3];
    v30 = v29[4];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v24);
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v30);
      v32 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v31 = 0;
  }

  std::mutex::unlock(v24);
  v30 = 0;
  v32 = 1;
LABEL_25:
  (*(*v31 + 80))(&__p, v31, a6, 4, a4, 0, 0);
  sub_100060DE8(&v69, &__p.__r_.__value_.__l.__data_);
  sub_10000A1EC(&__p.__r_.__value_.__l.__data_);
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  v33 = v69;
  if (v69)
  {
    v34 = a2[5];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      memset(&__dst, 0, sizeof(__dst));
      ctu::cf::assign();
      __p = __dst;
      v35 = __dst.__r_.__value_.__r.__words[0];
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &__p;
      }

      *buf = 136446466;
      *&buf[4] = a5;
      v73 = 2082;
      v74 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %{public}s File version in default bundle: %{public}s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v33 = v69;
    }
  }

  if (v70)
  {
    if (v33)
    {
      v36 = _CompareBundleVersionStrings(v70, v33);
      *buf = 0;
      v68 = 0;
      memset(v67, 0, 7);
      if (v36 == -1)
      {
LABEL_40:
        v37 = a2[5];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
          *(__dst.__r_.__value_.__r.__words + 4) = a5;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Choosing %s file inside the default bundle", &__dst, 0xCu);
        }

        sub_100222570(buf, &v69);
        v38 = Registry::getServiceMap(a2[13]);
        v39 = v38;
        if ((v12 & 0x8000000000000000) != 0)
        {
          v40 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
          v41 = 5381;
          do
          {
            v12 = v41;
            v42 = *v40++;
            v41 = (33 * v41) ^ v42;
          }

          while (v42);
        }

        std::mutex::lock(v38);
        __dst.__r_.__value_.__r.__words[0] = v12;
        v43 = sub_100009510(&v39[1].__m_.__sig, &__dst);
        if (v43)
        {
          v45 = v43[3];
          v44 = v43[4];
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v39);
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v44);
            v46 = 0;
LABEL_64:
            (*(*v45 + 80))(&v66, v45, a6, 4, a3, 0, 0);
            sub_100060DE8(&__p, &v66);
            __dst.__r_.__value_.__r.__words[0] = v68;
            v68 = __p.__r_.__value_.__r.__words[0];
            __p.__r_.__value_.__r.__words[0] = 0;
            sub_100005978(&__dst.__r_.__value_.__l.__data_);
            sub_100005978(&__p.__r_.__value_.__l.__data_);
            sub_10000A1EC(&v66);
            if ((v46 & 1) == 0)
            {
              sub_100004A34(v44);
            }

            (*(*a2 + 152))(&__dst, a2);
            goto LABEL_67;
          }
        }

        else
        {
          v45 = 0;
        }

        std::mutex::unlock(v39);
        v44 = 0;
        v46 = 1;
        goto LABEL_64;
      }
    }

    else
    {
      *buf = 0;
      v68 = 0;
      memset(v67, 0, 7);
    }

    v47 = a2[5];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
      *(__dst.__r_.__value_.__r.__words + 4) = a5;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Choosing %s file inside the carrier bundle", &__dst, 0xCu);
    }

    sub_100222570(buf, &v70);
    v48 = Registry::getServiceMap(a2[13]);
    v49 = v48;
    if ((v12 & 0x8000000000000000) != 0)
    {
      v50 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v51 = 5381;
      do
      {
        v12 = v51;
        v52 = *v50++;
        v51 = (33 * v51) ^ v52;
      }

      while (v52);
    }

    std::mutex::lock(v48);
    __dst.__r_.__value_.__r.__words[0] = v12;
    v53 = sub_100009510(&v49[1].__m_.__sig, &__dst);
    if (v53)
    {
      v55 = v53[3];
      v54 = v53[4];
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v49);
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v54);
        v56 = 0;
LABEL_59:
        (*(*v55 + 80))(&v66, v55, a6, 1, a3, 0, 0);
        sub_100060DE8(&__p, &v66);
        __dst.__r_.__value_.__r.__words[0] = v68;
        v68 = __p.__r_.__value_.__r.__words[0];
        __p.__r_.__value_.__r.__words[0] = 0;
        sub_100005978(&__dst.__r_.__value_.__l.__data_);
        sub_100005978(&__p.__r_.__value_.__l.__data_);
        sub_10000A1EC(&v66);
        if ((v56 & 1) == 0)
        {
          sub_100004A34(v54);
        }

        (*(*a2 + 128))(&__dst, a2, a6);
LABEL_67:
        v57 = *&__dst.__r_.__value_.__l.__data_;
        v67[0] = __dst.__r_.__value_.__r.__words[2];
        *(v67 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
        v58 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if (!v68)
        {
          goto LABEL_80;
        }

        memset(&__dst, 0, sizeof(__dst));
        sub_10082F9B4(&__p);
        memset(&__dst, 0, sizeof(__dst));
        if (v58 < 0)
        {
          sub_100005F2C(&__dst, v57, *(&v57 + 1));
        }

        else
        {
          *&__dst.__r_.__value_.__l.__data_ = v57;
          LODWORD(__dst.__r_.__value_.__r.__words[2]) = v67[0];
          *(&__dst.__r_.__value_.__r.__words[2] + 3) = *(v67 + 3);
          *(&__dst.__r_.__value_.__s + 23) = v58;
        }

        ctu::path_join_impl();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p.__r_.__value_.__r.__words[0] = &off_101EA1020;
        v59 = sub_1009C7B10(&__p, &__dst);
        FileSystemInterface::~FileSystemInterface(&__p);
        if (v59)
        {
          std::string::operator=(a1, &__dst);
        }

        else
        {
          v60 = a2[5];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            p_dst = &__dst;
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 136446466;
            *(__p.__r_.__value_.__r.__words + 4) = a5;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = p_dst;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %{public}s file %{public}s does not exist", &__p, 0x16u);
          }
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          if ((v58 & 0x80) == 0)
          {
            goto LABEL_82;
          }
        }

        else
        {
LABEL_80:
          if ((v58 & 0x80) == 0)
          {
LABEL_82:
            sub_100005978(&v68);
            sub_100005978(buf);
            goto LABEL_83;
          }
        }

        operator delete(v57);
        goto LABEL_82;
      }
    }

    else
    {
      v55 = 0;
    }

    std::mutex::unlock(v49);
    v54 = 0;
    v56 = 1;
    goto LABEL_59;
  }

  if (v33)
  {
    *buf = 0;
    v68 = 0;
    memset(v67, 0, 7);
    goto LABEL_40;
  }

  v63 = a2[5];
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
    *(__dst.__r_.__value_.__r.__words + 4) = a5;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I No %{public}s file in carrier or default bundles", &__dst, 0xCu);
  }

LABEL_83:
  sub_100005978(&v69);
  return sub_100005978(&v70);
}

void sub_101199BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, const void *a14, const void *a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, const void *a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  sub_100005978(&a14);
  sub_100005978(&a24);
  sub_100005978(&a15);
  sub_100005978(&a16);
  if (*(a10 + 23) < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(a1);
}

void CarrierBundleHandler::evaluateBestPathToEquivalentBundleTable_sync(uint64_t a1, uint64_t a2)
{
  memset(&__str, 0, sizeof(__str));
  sub_101199274(&__str, a1, @"EquivalentBundleTableFileName", @"EquivalentBundleTableVersion", "Equivalent Bundle Table", a2);
  v3 = (a1 + 384);
  v4 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v6 = *(a1 + 407);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 392);
  }

  if (size != v6 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v8 = &__str) : (v8 = __str.__r_.__value_.__r.__words[0]), v7 >= 0 ? (v9 = (a1 + 384)) : (v9 = *v3), memcmp(v8, v9, size)))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (a1 + 384);
      if (v7 < 0)
      {
        v11 = *v3;
      }

      p_str = __str.__r_.__value_.__r.__words[0];
      if (v4 >= 0)
      {
        p_str = &__str;
      }

      *buf = 136446466;
      v15 = v11;
      v16 = 2082;
      v17 = p_str;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Equivalent bundle table path is changing from '%{public}s' to '%{public}s'", buf, 0x16u);
    }

    std::string::operator=((a1 + 384), &__str);
    sub_101075D30(a1 + 360, *(a1 + 368));
    *(a1 + 368) = 0;
    *(a1 + 376) = 0;
    *(a1 + 360) = a1 + 368;
    LOBYTE(v4) = *(&__str.__r_.__value_.__s + 23);
  }

  if ((v4 & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_101199ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101199EFC(uint64_t a1, RegisteredNetworkInfo *this, RegisteredNetworkInfo *a3, unsigned int a4)
{
  v192 = a4;
  RegisteredNetworkInfo::compare(buf, this, a3);
  v6 = *buf;
  v7 = *&buf[8];
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v6 != v7)
  {
    v8 = *(a1 + 216);
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = a1 + 216;
    do
    {
      if (*(v8 + 28) >= v192)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 28) < v192));
    }

    while (v8);
    if (v9 != a1 + 216 && v192 >= *(v9 + 28))
    {
      v10 = *(v9 + 32);
    }

    else
    {
LABEL_11:
      v10 = 11;
    }

    v11 = *a3;
    v12 = v10;
    v13 = v10 != *a3;
    if (v10 != *a3)
    {
      v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v192);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = asString();
        v16 = asString();
        *buf = 136315394;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I RAT is changing from %s to %s", buf, 0x16u);
      }

      v17 = *a3;
      *buf = &v192;
      *(sub_10030C46C(a1 + 208, &v192) + 8) = v17;
      *v201 = (v192 << 32) | 1;
      *buf = v201;
      v18 = sub_101075F04(a1 + 136, v201);
      sub_100010024(&v190, (v18 + 240));
      *v194 = (v192 << 32) | 1;
      *buf = v194;
      v19 = sub_101075F04(a1 + 136, v194);
      sub_100010024(&v189, (v19 + 248));
      *buf = asWirelessTechnology();
      CarrierBundleHandler::matchCarrierBundle_sync(a1, &v190, &v189, buf, v192, 1, v191);
      sub_1000490A0(v191);
      sub_10001021C(&v189);
      sub_10001021C(&v190);
      v12 = *a3;
    }

    if (v12 <= 6)
    {
      if (v12 <= 2)
      {
        if (v12 != -1)
        {
          if (v12)
          {
            if (v12 == 2)
            {
              v20 = *(a1 + 280);
              *(a1 + 280) = 0;
              *buf = v20;
              sub_10001021C(buf);
              v21 = v192;
              v193 = v192;
              v22 = (*(**(a1 + 48) + 16))(*(a1 + 48), v192);
              v205 = 0;
              memset(buf, 0, sizeof(buf));
              *v201 = &v193;
              v23 = sub_10119C180(a1 + 232, v21);
              v24 = sub_10002E588(buf, (v23 + 5));
              v25 = sub_10119C268(v24, (a3 + 120));
              if (v25)
              {
                goto LABEL_137;
              }

              if (v205 == 1)
              {
                v26 = *v22;
                if (!os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
                {
LABEL_136:
                  *v201 = &v193;
                  v153 = sub_10119C180(a1 + 232, v193);
                  sub_10119C318((v153 + 5), (a3 + 120));
LABEL_137:
                  v203 = 0;
                  *v201 = 0u;
                  v202 = 0u;
                  *v194 = &v193;
                  v154 = sub_10119C180(a1 + 256, v193);
                  v155 = sub_10002DEF4(v201, (v154 + 5));
                  if (sub_10119C35C(v155, (a3 + 152)))
                  {
                    goto LABEL_138;
                  }

                  if (v203 == 1)
                  {
                    v156 = *v22;
                    if (!os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
                    {
LABEL_161:
                      *v194 = &v193;
                      v179 = sub_10119C180(a1 + 256, v193);
                      sub_10119C40C((v179 + 5), (a3 + 152));
                      goto LABEL_162;
                    }

                    IntegerWidth = MNC::getIntegerWidth(v201);
                    IntValue = MCC::getIntValue(v201);
                    v159 = MNC::getIntegerWidth((a3 + 152));
                    v160 = MCC::getIntValue((a3 + 152));
                    *v194 = 67109888;
                    *&v194[4] = IntegerWidth;
                    v195 = 1024;
                    v196 = IntValue;
                    v197 = 1024;
                    v198 = v159;
                    v199 = 1024;
                    v200 = v160;
                    v161 = "#I Network MNC is changing from %0.*d to %0.*d";
                    v162 = v156;
                    v163 = 26;
                  }

                  else
                  {
                    if (*(a3 + 208) != 1)
                    {
                      goto LABEL_161;
                    }

                    v176 = *v22;
                    if (!os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_161;
                    }

                    v177 = MNC::getIntegerWidth((a3 + 152));
                    v178 = MCC::getIntValue((a3 + 152));
                    *v194 = 67109376;
                    *&v194[4] = v177;
                    v195 = 1024;
                    v196 = v178;
                    v161 = "#I Network MNC is changing to %0.*d";
                    v162 = v176;
                    v163 = 14;
                  }

                  _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, v161, v194, v163);
                  goto LABEL_161;
                }

                v27 = MCC::getIntValue(buf);
                v28 = MCC::getIntValue((a3 + 120));
                *v201 = 67109376;
                *&v201[4] = v27;
                *&v201[8] = 1024;
                *&v201[10] = v28;
                v29 = "#I Network MCC is changing from %03d to %03d";
                v30 = v26;
                v31 = 14;
              }

              else
              {
                if (*(a3 + 208) != 1)
                {
                  goto LABEL_136;
                }

                v151 = *v22;
                if (!os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_136;
                }

                v152 = MCC::getIntValue((a3 + 120));
                *v201 = 67109120;
                *&v201[4] = v152;
                v29 = "#I Network MCC is changing to %03d";
                v30 = v151;
                v31 = 8;
              }

              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, v201, v31);
              goto LABEL_136;
            }

LABEL_68:
            LOBYTE(v59) = 0;
            goto LABEL_175;
          }

          v82 = *(a1 + 280);
          *(a1 + 280) = 0;
          *buf = v82;
          sub_10001021C(buf);
          v83 = v192;
          v193 = v192;
          v84 = (*(**(a1 + 48) + 16))(*(a1 + 48), v192);
          v205 = 0;
          memset(buf, 0, sizeof(buf));
          *v201 = &v193;
          v85 = sub_10119C180(a1 + 232, v83);
          v86 = sub_10002E588(buf, (v85 + 5));
          v25 = sub_10119C268(v86, (a3 + 24));
          if (v25)
          {
LABEL_128:
            v203 = 0;
            *v201 = 0u;
            v202 = 0u;
            *v194 = &v193;
            v141 = sub_10119C180(a1 + 256, v193);
            v142 = sub_10002DEF4(v201, (v141 + 5));
            if ((sub_10119C35C(v142, (a3 + 56)) & 1) == 0)
            {
              if (v203 == 1)
              {
                v143 = *v84;
                if (!os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                {
LABEL_156:
                  *v194 = &v193;
                  v175 = sub_10119C180(a1 + 256, v193);
                  sub_10119C40C((v175 + 5), (a3 + 56));
                  goto LABEL_162;
                }

                v144 = MNC::getIntegerWidth(v201);
                v145 = MCC::getIntValue(v201);
                v146 = MNC::getIntegerWidth((a3 + 56));
                v147 = MCC::getIntValue((a3 + 56));
                *v194 = 67109888;
                *&v194[4] = v144;
                v195 = 1024;
                v196 = v145;
                v197 = 1024;
                v198 = v146;
                v199 = 1024;
                v200 = v147;
                v148 = "#I Network MNC is changing from %0.*d to %0.*d";
                v149 = v143;
                v150 = 26;
              }

              else
              {
                if (*(a3 + 104) != 1)
                {
                  goto LABEL_156;
                }

                v172 = *v84;
                if (!os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_156;
                }

                v173 = MNC::getIntegerWidth((a3 + 56));
                v174 = MCC::getIntValue((a3 + 56));
                *v194 = 67109376;
                *&v194[4] = v173;
                v195 = 1024;
                v196 = v174;
                v148 = "#I Network MNC is changing to %0.*d";
                v149 = v172;
                v150 = 14;
              }

              _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, v148, v194, v150);
              goto LABEL_156;
            }

LABEL_138:
            v59 = v25 ^ 1;
            goto LABEL_163;
          }

          if (v205 == 1)
          {
            v87 = *v84;
            if (!os_log_type_enabled(*v84, OS_LOG_TYPE_DEFAULT))
            {
LABEL_127:
              *v201 = &v193;
              v140 = sub_10119C180(a1 + 232, v193);
              sub_10119C318((v140 + 5), (a3 + 24));
              goto LABEL_128;
            }

            v88 = MCC::getIntValue(buf);
            v89 = MCC::getIntValue((a3 + 24));
            *v201 = 67109376;
            *&v201[4] = v88;
            *&v201[8] = 1024;
            *&v201[10] = v89;
            v90 = "#I Network MCC is changing from %03d to %03d";
            v91 = v87;
            v92 = 14;
          }

          else
          {
            if (*(a3 + 104) != 1)
            {
              goto LABEL_127;
            }

            v138 = *v84;
            if (!os_log_type_enabled(*v84, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_127;
            }

            v139 = MCC::getIntValue((a3 + 24));
            *v201 = 67109120;
            *&v201[4] = v139;
            v90 = "#I Network MCC is changing to %03d";
            v91 = v138;
            v92 = 8;
          }

          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, v90, v201, v92);
          goto LABEL_127;
        }

        goto LABEL_58;
      }

      if (v12 != 3)
      {
        if (v12 == 4)
        {
LABEL_59:
          *buf = &v192;
          v54 = sub_10119C180(a1 + 232, v192);
          v55 = v54;
          if (*(v54 + 72) == 1)
          {
            if (*(v54 + 71) < 0)
            {
              operator delete(v54[6]);
            }

            *(v55 + 72) = 0;
          }

          *buf = &v192;
          v56 = sub_10119C180(a1 + 256, v192);
          v57 = v56;
          if (*(v56 + 72) == 1)
          {
            if (*(v56 + 71) < 0)
            {
              operator delete(v56[6]);
            }

            *(v57 + 72) = 0;
          }

          v58 = *(a1 + 280);
          *(a1 + 280) = 0;
          *buf = v58;
          sub_10001021C(buf);
          goto LABEL_68;
        }

        if (v12 != 5)
        {
          goto LABEL_68;
        }
      }

      *buf = &v192;
      v44 = sub_10119C180(a1 + 232, v192);
      v45 = v44;
      if (*(v44 + 72) == 1)
      {
        if (*(v44 + 71) < 0)
        {
          operator delete(v44[6]);
        }

        *(v45 + 72) = 0;
      }

      *buf = &v192;
      v46 = sub_10119C180(a1 + 256, v192);
      v47 = v46;
      if (*(v46 + 72) == 1)
      {
        if (*(v46 + 71) < 0)
        {
          operator delete(v46[6]);
        }

        *(v47 + 72) = 0;
      }

      *v201 = 0;
      if (*(a3 + 712) == 1)
      {
        v48 = *(a1 + 296);
        if (!v48)
        {
          goto LABEL_53;
        }

        v49 = *(a3 + 342);
        v50 = a1 + 296;
        do
        {
          v51 = *(v48 + 108);
          v52 = v51 >= v49;
          v53 = v51 < v49;
          if (v52)
          {
            v50 = v48;
          }

          v48 = *(v48 + 8 * v53);
        }

        while (v48);
        if (v50 != a1 + 296 && v49 >= *(v50 + 108))
        {
          Cdma1xCell::dumpState((a3 + 608), (a1 + 40));
          sub_100010024(v194, (v50 + 136));
        }

        else
        {
LABEL_53:
          sub_1011975F4(v194, a1, a3 + 608);
        }

        *buf = *v201;
        *v201 = *v194;
        *v194 = 0;
        sub_10001021C(buf);
        sub_10001021C(v194);
      }

      else
      {
        v93 = *(a1 + 40);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "#I No valid 1x network info", buf, 2u);
        }
      }

      v94 = *(a1 + 280);
      if (*v201)
      {
        if (v94 && CFEqual(*v201, v94))
        {
          goto LABEL_87;
        }
      }

      else if (!v94)
      {
LABEL_87:
        v59 = 0;
LABEL_90:
        sub_10001021C(v201);
        goto LABEL_169;
      }

      sub_1000676D4((a1 + 280), v201);
      v59 = 1;
      goto LABEL_90;
    }

    if (v12 <= 9)
    {
      if ((v12 - 7) < 2)
      {
        v33 = *(a1 + 280);
        *(a1 + 280) = 0;
        *buf = v33;
        sub_10001021C(buf);
        v34 = v192;
        v193 = v192;
        v35 = (*(**(a1 + 48) + 16))(*(a1 + 48), v192);
        v205 = 0;
        memset(buf, 0, sizeof(buf));
        *v201 = &v193;
        v36 = sub_10119C180(a1 + 232, v34);
        v37 = sub_10002E588(buf, (v36 + 5));
        v25 = sub_10119C268(v37, (a3 + 328));
        if (v25)
        {
          goto LABEL_96;
        }

        if (v205 == 1)
        {
          v38 = *v35;
          if (!os_log_type_enabled(*v35, OS_LOG_TYPE_DEFAULT))
          {
LABEL_95:
            *v201 = &v193;
            v97 = sub_10119C180(a1 + 232, v193);
            sub_10119C318((v97 + 5), (a3 + 328));
LABEL_96:
            v203 = 0;
            *v201 = 0u;
            v202 = 0u;
            *v194 = &v193;
            v98 = sub_10119C180(a1 + 256, v193);
            v99 = sub_10002DEF4(v201, (v98 + 5));
            if (sub_10119C35C(v99, (a3 + 360)))
            {
              goto LABEL_138;
            }

            if (v203 == 1)
            {
              v100 = *v35;
              if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
              {
LABEL_104:
                *v194 = &v193;
                v111 = sub_10119C180(a1 + 256, v193);
                sub_10119C40C((v111 + 5), (a3 + 360));
LABEL_162:
                v59 = 1;
LABEL_163:
                if (v203 == 1 && SHIBYTE(v202) < 0)
                {
                  operator delete(*&v201[8]);
                }

                if (v205 == 1 && buf[31] < 0)
                {
                  operator delete(*&buf[8]);
                }

LABEL_169:
                if (v10 == v11 && v59)
                {
                  *v201 = (v192 << 32) | 1;
                  *buf = v201;
                  v180 = sub_101075F04(a1 + 136, v201);
                  sub_100010024(&v188, (v180 + 240));
                  v181 = sub_100AB20CC(&v188);
                  sub_10001021C(&v188);
                  if (v181)
                  {
                    v182 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v192);
                    if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "#I No change in RAT, but PLMN changed on a Private Network SIM", buf, 2u);
                    }

                    *v201 = (v192 << 32) | 1;
                    *buf = v201;
                    v183 = sub_101075F04(a1 + 136, v201);
                    sub_100010024(&v186, (v183 + 240));
                    *v194 = (v192 << 32) | 1;
                    *buf = v194;
                    v184 = sub_101075F04(a1 + 136, v194);
                    sub_100010024(&v185, (v184 + 248));
                    *buf = asWirelessTechnology();
                    CarrierBundleHandler::matchCarrierBundle_sync(a1, &v186, &v185, buf, v192, 1, v187);
                    sub_1000490A0(v187);
                    sub_10001021C(&v185);
                    sub_10001021C(&v186);
LABEL_176:
                    if ((v59 & 1) == 0)
                    {
                      return;
                    }
                  }

LABEL_177:
                  CarrierBundleHandler::handleOperatorBundleSetup_sync(a1, v192, 1);
                  return;
                }

LABEL_175:
                if (!v13)
                {
                  goto LABEL_176;
                }

                goto LABEL_177;
              }

              v101 = MNC::getIntegerWidth(v201);
              v102 = MCC::getIntValue(v201);
              v103 = MNC::getIntegerWidth((a3 + 360));
              v104 = MCC::getIntValue((a3 + 360));
              *v194 = 67109888;
              *&v194[4] = v101;
              v195 = 1024;
              v196 = v102;
              v197 = 1024;
              v198 = v103;
              v199 = 1024;
              v200 = v104;
              v105 = "#I Network MNC is changing from %0.*d to %0.*d";
              v106 = v100;
              v107 = 26;
            }

            else
            {
              if (*(a3 + 448) != 1)
              {
                goto LABEL_104;
              }

              v108 = *v35;
              if (!os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_104;
              }

              v109 = MNC::getIntegerWidth((a3 + 360));
              v110 = MCC::getIntValue((a3 + 360));
              *v194 = 67109376;
              *&v194[4] = v109;
              v195 = 1024;
              v196 = v110;
              v105 = "#I Network MNC is changing to %0.*d";
              v106 = v108;
              v107 = 14;
            }

            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, v105, v194, v107);
            goto LABEL_104;
          }

          v39 = MCC::getIntValue(buf);
          v40 = MCC::getIntValue((a3 + 328));
          *v201 = 67109376;
          *&v201[4] = v39;
          *&v201[8] = 1024;
          *&v201[10] = v40;
          v41 = "#I Network MCC is changing from %03d to %03d";
          v42 = v38;
          v43 = 14;
        }

        else
        {
          if (*(a3 + 448) != 1)
          {
            goto LABEL_95;
          }

          v95 = *v35;
          if (!os_log_type_enabled(*v35, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_95;
          }

          v96 = MCC::getIntValue((a3 + 328));
          *v201 = 67109120;
          *&v201[4] = v96;
          v41 = "#I Network MCC is changing to %03d";
          v42 = v95;
          v43 = 8;
        }

        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v41, v201, v43);
        goto LABEL_95;
      }

      if (v12 != 9)
      {
        goto LABEL_68;
      }

      v60 = *(a1 + 280);
      *(a1 + 280) = 0;
      *buf = v60;
      sub_10001021C(buf);
      v61 = v192;
      v193 = v192;
      v62 = (*(**(a1 + 48) + 16))(*(a1 + 48), v192);
      v205 = 0;
      memset(buf, 0, sizeof(buf));
      *v201 = &v193;
      v63 = sub_10119C180(a1 + 232, v61);
      v64 = sub_10002E588(buf, (v63 + 5));
      v25 = sub_10119C268(v64, (a3 + 224));
      if (v25)
      {
LABEL_119:
        v203 = 0;
        *v201 = 0u;
        v202 = 0u;
        *v194 = &v193;
        v128 = sub_10119C180(a1 + 256, v193);
        v129 = sub_10002DEF4(v201, (v128 + 5));
        if (sub_10119C35C(v129, (a3 + 256)))
        {
          goto LABEL_138;
        }

        if (v203 == 1)
        {
          v130 = *v62;
          if (!os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
          {
LABEL_151:
            *v194 = &v193;
            v171 = sub_10119C180(a1 + 256, v193);
            sub_10119C40C((v171 + 5), (a3 + 256));
            goto LABEL_162;
          }

          v131 = MNC::getIntegerWidth(v201);
          v132 = MCC::getIntValue(v201);
          v133 = MNC::getIntegerWidth((a3 + 256));
          v134 = MCC::getIntValue((a3 + 256));
          *v194 = 67109888;
          *&v194[4] = v131;
          v195 = 1024;
          v196 = v132;
          v197 = 1024;
          v198 = v133;
          v199 = 1024;
          v200 = v134;
          v135 = "#I Network MNC is changing from %0.*d to %0.*d";
          v136 = v130;
          v137 = 26;
        }

        else
        {
          if (*(a3 + 312) != 1)
          {
            goto LABEL_151;
          }

          v168 = *v62;
          if (!os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_151;
          }

          v169 = MNC::getIntegerWidth((a3 + 256));
          v170 = MCC::getIntValue((a3 + 256));
          *v194 = 67109376;
          *&v194[4] = v169;
          v195 = 1024;
          v196 = v170;
          v135 = "#I Network MNC is changing to %0.*d";
          v136 = v168;
          v137 = 14;
        }

        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, v135, v194, v137);
        goto LABEL_151;
      }

      if (v205 == 1)
      {
        v65 = *v62;
        if (!os_log_type_enabled(*v62, OS_LOG_TYPE_DEFAULT))
        {
LABEL_118:
          *v201 = &v193;
          v127 = sub_10119C180(a1 + 232, v193);
          sub_10119C318((v127 + 5), (a3 + 224));
          goto LABEL_119;
        }

        v66 = MCC::getIntValue(buf);
        v67 = MCC::getIntValue((a3 + 224));
        *v201 = 67109376;
        *&v201[4] = v66;
        *&v201[8] = 1024;
        *&v201[10] = v67;
        v68 = "#I Network MCC is changing from %03d to %03d";
        v69 = v65;
        v70 = 14;
      }

      else
      {
        if (*(a3 + 312) != 1)
        {
          goto LABEL_118;
        }

        v125 = *v62;
        if (!os_log_type_enabled(*v62, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }

        v126 = MCC::getIntValue((a3 + 224));
        *v201 = 67109120;
        *&v201[4] = v126;
        v68 = "#I Network MCC is changing to %03d";
        v69 = v125;
        v70 = 8;
      }

      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, v68, v201, v70);
      goto LABEL_118;
    }

    if (v12 != 10)
    {
      if (v12 != 11)
      {
        goto LABEL_68;
      }

LABEL_58:
      v13 = 0;
      goto LABEL_59;
    }

    v71 = *(a1 + 280);
    *(a1 + 280) = 0;
    *buf = v71;
    sub_10001021C(buf);
    v72 = v192;
    v193 = v192;
    v73 = (*(**(a1 + 48) + 16))(*(a1 + 48), v192);
    v205 = 0;
    memset(buf, 0, sizeof(buf));
    *v201 = &v193;
    v74 = sub_10119C180(a1 + 232, v72);
    v75 = sub_10002E588(buf, (v74 + 5));
    v25 = sub_10119C268(v75, (a3 + 464));
    if (v25)
    {
LABEL_110:
      v203 = 0;
      *v201 = 0u;
      v202 = 0u;
      *v194 = &v193;
      v115 = sub_10119C180(a1 + 256, v193);
      v116 = sub_10002DEF4(v201, (v115 + 5));
      if (sub_10119C35C(v116, (a3 + 496)))
      {
        goto LABEL_138;
      }

      if (v203 == 1)
      {
        v117 = *v73;
        if (!os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
        {
LABEL_146:
          *v194 = &v193;
          v167 = sub_10119C180(a1 + 256, v193);
          sub_10119C40C((v167 + 5), (a3 + 496));
          goto LABEL_162;
        }

        v118 = MNC::getIntegerWidth(v201);
        v119 = MCC::getIntValue(v201);
        v120 = MNC::getIntegerWidth((a3 + 496));
        v121 = MCC::getIntValue((a3 + 496));
        *v194 = 67109888;
        *&v194[4] = v118;
        v195 = 1024;
        v196 = v119;
        v197 = 1024;
        v198 = v120;
        v199 = 1024;
        v200 = v121;
        v122 = "#I Network MNC is changing from %0.*d to %0.*d";
        v123 = v117;
        v124 = 26;
      }

      else
      {
        if (*(a3 + 600) != 1)
        {
          goto LABEL_146;
        }

        v164 = *v73;
        if (!os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_146;
        }

        v165 = MNC::getIntegerWidth((a3 + 496));
        v166 = MCC::getIntValue((a3 + 496));
        *v194 = 67109376;
        *&v194[4] = v165;
        v195 = 1024;
        v196 = v166;
        v122 = "#I Network MNC is changing to %0.*d";
        v123 = v164;
        v124 = 14;
      }

      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, v122, v194, v124);
      goto LABEL_146;
    }

    if (v205 == 1)
    {
      v76 = *v73;
      if (!os_log_type_enabled(*v73, OS_LOG_TYPE_DEFAULT))
      {
LABEL_109:
        *v201 = &v193;
        v114 = sub_10119C180(a1 + 232, v193);
        sub_10119C318((v114 + 5), (a3 + 464));
        goto LABEL_110;
      }

      v77 = MCC::getIntValue(buf);
      v78 = MCC::getIntValue((a3 + 464));
      *v201 = 67109376;
      *&v201[4] = v77;
      *&v201[8] = 1024;
      *&v201[10] = v78;
      v79 = "#I Network MCC is changing from %03d to %03d";
      v80 = v76;
      v81 = 14;
    }

    else
    {
      if (*(a3 + 600) != 1)
      {
        goto LABEL_109;
      }

      v112 = *v73;
      if (!os_log_type_enabled(*v73, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_109;
      }

      v113 = MCC::getIntValue((a3 + 464));
      *v201 = 67109120;
      *&v201[4] = v113;
      v79 = "#I Network MCC is changing to %03d";
      v80 = v112;
      v81 = 8;
    }

    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, v79, v201, v81);
    goto LABEL_109;
  }

  v32 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v192);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I No change in registered network info", buf, 2u);
  }
}

void sub_10119B574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, int a38, __int16 a39, char a40, char a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 112) == 1 && *(v45 - 113) < 0)
  {
    operator delete(*(v45 - 136));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10119B6B0(uint64_t a1, unsigned __int16 a2)
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
      v4 = *(v2 + 108);
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

void sub_10119B7C8(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_10119B7F4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10119B7F4(a1, *a2);
    sub_10119B7F4(a1, *(a2 + 1));
    if (a2[120] == 1)
    {
      v4 = (a2 + 96);
      sub_1000087B4(&v4);
    }

    if (a2[95] < 0)
    {
      operator delete(*(a2 + 9));
    }

    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t sub_10119B880(uint64_t a1)
{
  v2 = 0;
  result = *sub_100DA6A80(a1, &v2);
  if (!result)
  {
    sub_10119B924();
  }

  return result;
}

void sub_10119B9B0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10119BA28(v3, v2);
  _Unwind_Resume(a1);
}

MCC *sub_10119B9CC(MCC *a1, const MCC **a2)
{
  v3 = *a2;
  MCC::MCC(a1, *a2);
  MCC::MCC((v4 + 32), (v3 + 32));
  *(a1 + 8) = 0;
  return a1;
}

void sub_10119BA0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_10119BA28(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10001021C((a2 + 96));
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
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

uint64_t sub_10119BAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_10119838C(a2, v4, v3[1]);
  if ((*(a2 + 24) & 1) == 0)
  {
    v5 = *(v4 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v3[1] + 76);
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Did not find bundle names for CDMA 1x SID %d", v8, 8u);
    }
  }

  return Cdma1xCell::dumpState(v3[1], (v4 + 40));
}

void sub_10119BB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (*(v9 + 24) == 1)
  {
    a9 = v9;
    sub_1000087B4(&a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10119BBA8(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v2);
  sub_10055D990(*(a1 + 32), &v2);
  if (v3 == 1)
  {
    v4 = &v2;
    sub_1000087B4(&v4);
  }
}

void sub_10119BC14(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v2);
  sub_10055D990(*(a1 + 32), &v2);
  if (v3 == 1)
  {
    v4 = &v2;
    sub_1000087B4(&v4);
  }
}

__n128 sub_10119BCF4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F16700;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10119BD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *__p = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  MCCAndMNC::MCCAndMNC();
  v5 = *(a1 + 16);
  v8 = *(v5 + 8);
  v7 = (v5 + 8);
  v6 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v9 = v6;
      if (!MCCAndMNC::operator<())
      {
        break;
      }

      v6 = *v9;
      v7 = v9;
      if (!*v9)
      {
        goto LABEL_7;
      }
    }

    if (!MCCAndMNC::operator<())
    {
      break;
    }

    v7 = v9 + 1;
    v6 = v9[1];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!*v7)
  {
LABEL_7:
    operator new();
  }

  sub_100220FC4(*v7 + 96, a3);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }
}

void sub_10119BE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 63) < 0)
  {
    operator delete(*(v9 + 40));
  }

  operator delete(v9);
  sub_1002FECBC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10119BEBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10119BF08(uint64_t a1)
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

__n128 sub_10119BFFC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F16790;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10119C02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  *__p = 0u;
  v10 = 0u;
  *v11 = 0u;
  MCC::MCC((&v10 + 8));
  MNC::MNC((&v12 + 8));
  BYTE8(v14) = 0;
  LOWORD(v16) = 0;
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  WORD6(v14) = atoi(v7);
  Cdma1xCell::dumpState(&v10, (v6 + 40));
  v8 = *(a1 + 16);
  v17 = &v10;
  v9 = sub_10119B6B0(v8, WORD6(v14));
  sub_100220FC4((v9 + 17), a3);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v12) < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_10119C108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10119C134(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10119C180(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10119C268(uint64_t a1, const MCC *a2)
{
  v7 = 0;
  *__p = 0u;
  v6 = 0u;
  MCC::MCC(__p, a2);
  LOBYTE(v7) = 1;
  if (*(a1 + 32) == 1)
  {
    v3 = MCC::operator==();
    if ((v7 & 1) == 0)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  return v3;
}

void sub_10119C2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MCC *sub_10119C318(MCC *a1, const MCC *a2)
{
  if (*(a1 + 32) == 1)
  {
    MCC::operator=();
  }

  else
  {
    MCC::MCC(a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t sub_10119C35C(uint64_t a1, const MCC *a2)
{
  v7 = 0;
  *__p = 0u;
  v6 = 0u;
  MCC::MCC(__p, a2);
  LOBYTE(v7) = 1;
  if (*(a1 + 32) == 1)
  {
    v3 = MCC::operator==();
    if ((v7 & 1) == 0)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  return v3;
}

void sub_10119C3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MCC *sub_10119C40C(MCC *a1, const MCC *a2)
{
  if (*(a1 + 32) == 1)
  {
    MCC::operator=();
  }

  else
  {
    MCC::MCC(a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t sub_10119C450(uint64_t result, uint64_t a2, uint64_t *a3)
{
  *(result + 16) = 0;
  *result = off_101F16810;
  *(result + 8) = a2;
  v3 = *a3;
  *a3 = 0;
  *(result + 24) = v3;
  return result;
}

void *sub_10119C480(void *a1)
{
  *a1 = off_101F16810;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10119C4F0(void *a1)
{
  *a1 = off_101F16810;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete();
}

BOOL sub_10119C628(uint64_t a1, uint64_t a2)
{
  v3 = sub_101568664(a2);
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
    v3 = *(a1 + 24);
  }

  return v3 != 0;
}

uint64_t sub_10119C690(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_10119C7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    return sub_100E5F108(v2, a2);
  }

  if (*(a2 + 23) < 0)
  {
    *(a2 + 8) = 3;
    a2 = *a2;
  }

  else
  {
    *(a2 + 23) = 3;
  }

  *a2 = 2764586;
  return 1;
}

void sub_10119C824(void *a1@<X8>)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  initially_inactive = dispatch_queue_attr_make_initially_inactive(v2);
  v4 = dispatch_queue_create_with_target_V2("CTXPCServer", initially_inactive, 0);
  dispatch_set_qos_class_floor(v4, QOS_CLASS_UTILITY, 0);
  dispatch_activate(v4);
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10119CB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, char a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    (*(object->isa + 1))(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void sub_10119CCF4()
{
  if (v0)
  {
    dispatch_release(v0);
  }

  JUMPOUT(0x10119CCECLL);
}

void sub_10119CD08(void *a1)
{
  *a1 = off_101F168A0;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {

    operator delete();
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  CTXPCServerInterface::~CTXPCServerInterface(a1);
}

void sub_10119CD98(void *a1)
{
  sub_10119CD08(a1);

  operator delete();
}

void sub_10119CDD0(uint64_t a1)
{
  [**(a1 + 48) notificationProxy];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_10119CE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);

  _Unwind_Resume(a1);
}

void sub_10119CE90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = **(a1 + 48);
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v4 setAssertionForConnection:&v6 dataConnectionType:a3 enable:a4];
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10119CEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10119CF08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = **(a1 + 48);
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v3 setApplicationCategory:&v5 category:a3];
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10119CF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10119CF7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = **(a1 + 48);
  v11 = a2[1];
  v12 = *a2;
  v13 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v10 updateIdsTrafficStatus:&v12 isStart:a3 dataType:a4 completion:v9];
  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_10119D00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10119D028(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = **(a1 + 48);
  v11 = a2[1];
  v12 = *a2;
  v13 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v10 updateAvsTrafficStatus:&v12 CTDataAvsTrafficStatus:a3 dataType:a4 completion:v9];
  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_10119D0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10119D0D4(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = **(a1 + 48);
  v9 = a2[1];
  v10 = *a2;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v8 updateVoipCallTrafficStatus:&v10 isStart:a3 completion:v7];
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_10119D154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10119D174(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10119D1C8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10119D208(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10119D234(ServiceManager::Service *this)
{
  *this = off_101F169F8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10119D290(ServiceManager::Service *this)
{
  *this = off_101F169F8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10119D32C@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10119D370(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    v4 = **(v2 + 48);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  else
  {
    v4 = **(v2 + 48);
  }

  group = v3;
  [v4 bootstrap:&group];
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v3)
  {

    dispatch_release(v3);
  }
}

void sub_10119D41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10119D478(uint64_t a1, int a2, ServiceStage *this)
{
  if (a2 == 2)
  {
    v3 = **(*(a1 + 8) + 48);
    ServiceStage::holdOffStage(&group, this);
    [v3 shutdown:&group];
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }
}

void sub_10119D4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_10119D524(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F16A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

BOOL sub_10119D58C(wis::MetricFactory *a1)
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

void sub_10119D6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10119D738(uint64_t a1, _DWORD *a2)
{
  result = subscriber::simSlotAsInstance();
  v5 = a2[7];
  a2[7] = v5 | 4;
  a2[5] = result;
  v6 = *(a1 + 36);
  if (v6 <= 5)
  {
    a2[7] = v5 | 6;
    a2[4] = v6 + 1;
  }

  return result;
}

BOOL sub_10119D790(wis::MetricFactory *a1)
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

void sub_10119D8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10119D93C(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 32);
  a2[7] |= 2u;
  a2[4] = v3;
  result = subscriber::simSlotAsInstance();
  a2[7] |= 4u;
  a2[5] = result;
  return result;
}

BOOL sub_10119D984(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    return sub_10119DA0C(0x800E9);
  }

  return result;
}

BOOL sub_10119DA0C(wis::MetricFactory *a1)
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

void sub_10119DB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10119DBB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a2 + 16) = *(a1 + 32);
  *(a2 + 20) = *(a1 + 40);
  v4 = *(a1 + 41);
  *(a2 + 32) = v3 | 0xE;
  *(a2 + 21) = v4;
  result = subscriber::simSlotAsInstance();
  *(a2 + 32) |= 0x10u;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_10119DC14(int a1)
{
  if ((a1 - 1) > 0x13)
  {
    v1 = &kCTSIMToolkitPlayToneGeneralBeep;
  }

  else
  {
    v1 = *(&off_101F16B50 + (a1 - 1));
  }

  return *v1;
}

uint64_t sub_10119DC40(uint64_t a1, int a2, int a3)
{
  v3 = sub_101407F0C(a2, a3);

  return _TMSetSourceAvailable(v3);
}

uint64_t sub_10119DC70(uint64_t a1, int a2, int a3)
{
  v3 = sub_101407F0C(a2, a3);

  return _TMSetSourceUnavailable(v3);
}

uint64_t sub_10119DCA0(double a1, uint64_t a2, int a3)
{
  v4 = sub_101407FA4(a3);
  v5.n128_u64[0] = 0x4055400000000000;
  v6.n128_f64[0] = a1;

  return _TMSetSourceTime(v4, v6, v5);
}

uint64_t sub_10119DCE4(double a1, uint64_t a2, int a3, int a4, uint64_t a5, MCC *a6)
{
  v10 = a3 == 2;
  v11 = sub_101407FA4(a4);
  if (a3 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (2 * v10);
  }

  v13 = *(a5 + 24);
  v14 = *(a5 + 48);
  IntValue = MCC::getIntValue(a6);
  v16.n128_f64[0] = a1;

  return _TMProvideCellularTimeZone(v11, v12, v13, v14, IntValue, v16);
}

void sub_10119DD84(CoreTimeInterface *a1)
{
  CoreTimeInterface::~CoreTimeInterface(a1);

  operator delete();
}

void sub_10119DE24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10119DE60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10119DE98(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10119DEC8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10119DF08(uint64_t *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *(a2 + 2) - *(a2 + 1);
  if (v3)
  {
    v4 = *(a2 + 1);
  }

  else
  {
    v4 = 0;
  }

  return (*(*v2 + 16))(v2, *a2, v3 >> 2, v4);
}

const void **sub_10119DF48@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v3 = (a1 + 32);
  if (!*(a1 + 32))
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v5 = *v3;
    *v3 = Mutable;
    v7 = v5;
    sub_1000296E0(&v7);
  }

  return sub_100029714(a2, v3);
}

void sub_10119DFC0(NSObject ***a1, const void *a2, const void *a3)
{
  if (a3)
  {
    sub_10119DF48(a1, theDict);
    CFDictionarySetValue(theDict[0], a2, a3);
    sub_1000296E0(theDict);
  }

  else
  {
    v5 = **a1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(theDict[1]) = 0;
      v9 = 0;
      ctu::cf::assign();
      *__p = 0u;
      v7 = 0;
      LODWORD(theDict[0]) = 136315138;
      *(theDict + 4) = __p;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot add a NULL object to the CF dictionary for key: %s", theDict, 0xCu);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10119E0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10119E10C(NSObject ***a1, const void *a2, const void **a3)
{
  if (*a3)
  {
    sub_10119DF48(a1, theDict);
    CFDictionarySetValue(theDict[0], a2, *a3);
    sub_1000296E0(theDict);
  }

  else
  {
    v5 = **a1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(theDict[1]) = 0;
      v9 = 0;
      ctu::cf::assign();
      *__p = 0u;
      v7 = 0;
      LODWORD(theDict[0]) = 136315138;
      *(theDict + 4) = __p;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot add a invalid object to the CF dictionary for key: %s", theDict, 0xCu);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10119E228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10119E25C(uint64_t a1, const void *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v8, *a3, *(a3 + 8));
  }

  else
  {
    *v8 = *a3;
    v9 = *(a3 + 16);
  }

  if (SHIBYTE(v9) < 0)
  {
    sub_100005F2C(__dst, v8[0], v8[1]);
  }

  else
  {
    *__dst = *v8;
    v13 = v9;
  }

  v11 = 0;
  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v15 = v13;
  }

  v16 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v11;
    v11 = v16;
    v17 = v5;
    sub_100005978(&v17);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v11;
  v10 = v11;
  v11 = 0;
  sub_100005978(&v11);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  sub_10119DF48(a1, __p);
  CFDictionarySetValue(__p[0], a2, v6);
  sub_1000296E0(__p);
  return sub_100005978(&v10);
}

void sub_10119E3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

const void **sub_10119E42C(uint64_t a1, const void *a2, int a3)
{
  v9 = 0;
  LODWORD(valuePtr) = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v5)
  {
    v9 = v5;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  v9 = 0;
  sub_100029A48(&v9);
  sub_10119DF48(a1, &valuePtr);
  CFDictionarySetValue(valuePtr, a2, v6);
  sub_1000296E0(&valuePtr);
  return sub_100029A48(&v8);
}

void sub_10119E4D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  sub_1000296E0(va1);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

const void **sub_10119E504(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      ctu::cf_to_xpc(&object, v4, a2);
      v5 = object;
      if (object && xpc_get_type(object) == &_xpc_type_dictionary)
      {
        xpc_retain(v5);
      }

      else
      {
        v5 = xpc_null_create();
      }

      xpc_release(object);
      v6 = *(a1 + 8);
      object = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        object = xpc_null_create();
      }

      v9 = xpc_null_create();
      sub_10002A37C(v6, &object, &v9);
      xpc_release(v9);
      xpc_release(object);
      xpc_release(v5);
    }

    else
    {
      object = xpc_null_create();
      v9 = xpc_null_create();
      sub_10002A37C(v3, &object, &v9);
      xpc_release(v9);
      xpc_release(object);
    }
  }

  v7 = *(a1 + 32);
  *(a1 + 32) = 0;
  object = v7;
  result = sub_1000296E0(&object);
  *(a1 + 8) = 0;
  return result;
}

void sub_10119E62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void *sub_10119E6A0(void *a1, void *a2)
{
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101F16CD0;
  a1[1] = 0;
  v3 = a2[1];
  a1[4] = *a2;
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  ctu::RestModule::RestModule((a1 + 6));
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  return a1;
}

void sub_10119E70C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  BasebandModeEvaluator::~BasebandModeEvaluator(v1);
  _Unwind_Resume(a1);
}

void sub_10119E740(uint64_t a1, os_log_t *a2)
{
  v2 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Evaluator: fixed always on", v3, 2u);
  }
}

uint64_t sub_10119E7A0(uint64_t result, dispatch_object_t *a2)
{
  if (*(result + 8))
  {
    v3 = result;
    sub_10000501C(&__p, "BasebandModeEvaluatorAlwaysOn");
    v6 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
    }

    ctu::RestModule::RestModule();
    v4 = *(v3 + 56);
    *(v3 + 48) = v10;
    v10 = 0uLL;
    if (v4)
    {
      sub_100004A34(v4);
      if (*(&v10 + 1))
      {
        sub_100004A34(*(&v10 + 1));
      }
    }

    if (v6)
    {
      dispatch_release(v6);
    }

    if (v8 < 0)
    {
      operator delete(__p);
    }

    v5 = *(v3 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    sub_10119EC4C(v9);
    operator new();
  }

  return result;
}

void sub_10119E9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object, dispatch_object_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10119EA4C@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_10119EBD8(a1, &v2, &v3, 1uLL);
}

void sub_10119EAC4(BasebandModeEvaluator *this)
{
  *this = off_101F16CD0;
  v2 = *(this + 10);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  BasebandModeEvaluator::~BasebandModeEvaluator(this);
}

void sub_10119EB44(BasebandModeEvaluator *this)
{
  *this = off_101F16CD0;
  v2 = *(this + 10);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  BasebandModeEvaluator::~BasebandModeEvaluator(this);

  operator delete();
}

uint64_t sub_10119EBD8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D0358(result, a4);
  }

  return result;
}

void sub_10119EC30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10119EC4C(uint64_t a1@<X8>)
{
  sub_10000501C(__p, "/cc/assertions/baseband_booted");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10119ECBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10119ECE8(void *a1)
{
  *a1 = off_101F16D68;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10119ED34(void *a1)
{
  *a1 = off_101F16D68;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10119EE14(uint64_t result, uint64_t a2)
{
  *a2 = off_101F16D68;
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

void sub_10119EE54(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10119EE64(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10119EEA4(void *a1)
{
  ctu::rest::read_rest_value();
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[2];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[3])
      {
        sub_10119EF84((v3 + 64));
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10119EF38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10119EF84(unsigned int *a1)
{
  if (a1[1] == 1)
  {
    sub_10000501C(v3, "/cc/assertions/baseband_booted");
    *__p = *v3;
    v6 = v4;
    v3[1] = 0;
    v4 = 0;
    v3[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*a1);
    if (!object)
    {
      object = xpc_null_create();
    }

    ctu::RestModule::setProperty();
    xpc_release(object);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

void sub_10119F050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void *sub_10119F098(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101F16DE8;
  a1[1] = a2;
  (*(**(a2 + 56) + 24))(&v4);
  a1[4] = (**v4)(v4);
  if (v5)
  {
    sub_100004A34(v5);
  }

  return a1;
}

void sub_10119F148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10119F170(v10);
  _Unwind_Resume(a1);
}

void *sub_10119F170(void *a1)
{
  *a1 = off_101F16FE0;
  v2 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    sub_100004A34(v2);
    v3 = a1[3];
    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  return a1;
}

void sub_10119F25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10119F2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "tm.mgr.ssm");
  ctu::OsLogLogger::OsLogLogger(v8, &v7);
  ctu::OsLogLogger::OsLogLogger((a1 + 8), v8);
  ctu::OsLogLogger::~OsLogLogger(v8);
  ctu::OsLogContext::~OsLogContext(&v7);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101F16E28;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  return a1;
}

void sub_10119F3A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void **sub_10119F484(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1011A054C(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10119F4F4(uint64_t a1, int a2)
{
  result = (*(**(a1 + 64) + 16))(*(a1 + 64));
  if (result != a2)
  {
    if (a2 == 1)
    {
      sub_10119F3CC(&v4);
    }

    operator new();
  }

  return result;
}

uint64_t sub_10119F718(uint64_t result, int a2, int a3, int a4)
{
  v5 = a3;
  v6 = a2;
  v7 = result;
  if (*(result + 36) != a2 || *(result + 37) != a3 || *(result + 38) != a4)
  {
    v8 = *(result + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v7 + 48);
      v11 = 136316162;
      v12 = v9;
      v13 = 2080;
      v14 = " ";
      v15 = 2080;
      v16 = asStringBool(v6);
      v17 = 2080;
      v18 = asStringBool(v5);
      v19 = 2080;
      v20 = asStringBool(a4);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%shandleCurrentCallsInfoChanged: hasActiveCSCall = %s, hasActiveVoLTECall = %s, systemHasAnyActiveCsOrVoLTECall = %s", &v11, 0x34u);
    }

    *(v7 + 36) = v6;
    *(v7 + 37) = v5;
    *(v7 + 38) = a4;
    result = (*(**(v7 + 64) + 24))(*(v7 + 64), 0);
    v10 = 0;
    if ((*(v7 + 36) & 1) == 0)
    {
      v10 = a4 & ~*(v7 + 37);
    }

    if (*(v7 + 39) != v10)
    {
      *(v7 + 39) = v10;
      return (*(**(v7 + 64) + 32))(*(v7 + 64));
    }
  }

  return result;
}

uint64_t sub_10119F8D0(uint64_t result, int a2)
{
  v2 = *(result + 40);
  if (v2 != a2)
  {
    v3 = a2;
    v4 = result;
    v5 = *(result + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v4 + 48);
      v7 = 136315906;
      v8 = v6;
      v9 = 2080;
      v10 = " ";
      v11 = 2080;
      v12 = asStringBool(v2);
      v13 = 2080;
      v14 = asStringBool(v3);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sDataAttached: %s => %s", &v7, 0x2Au);
    }

    *(v4 + 40) = v3;
    return (*(**(v4 + 64) + 24))(*(v4 + 64), 0);
  }

  return result;
}

uint64_t sub_10119FA24(uint64_t result, int a2)
{
  if (*(result + 32) != a2)
  {
    v3 = result;
    v4 = *(result + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 48);
      v6 = 136315650;
      v7 = v5;
      v8 = 2080;
      v9 = " ";
      v10 = 2080;
      v11 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shandleRegistrationStatusChanged: registrationStatus = %s", &v6, 0x20u);
    }

    *(v3 + 32) = a2;
    return (*(**(v3 + 64) + 24))(*(v3 + 64), 0);
  }

  return result;
}

uint64_t sub_10119FB58(uint64_t a1)
{
  result = (*(**(a1 + 64) + 16))(*(a1 + 64));
  if (result)
  {
    if ((*(**(a1 + 64) + 40))(*(a1 + 64)) <= 14999)
    {
      if (*(a1 + 38))
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void sub_10119FBF8(void *a1, int a2)
{
  v3 = a1[1];
  if ((*(v3 + 36) & 1) != 0 || *(v3 + 37) == 1)
  {
LABEL_3:
    v4 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (v4)
    {

      sub_100004A34(v4);
    }

    return;
  }

  if (*(v3 + 38) == 1)
  {
    goto LABEL_12;
  }

  if ((*(v3 + 32) & 0xFFFFFFFE) == 4)
  {
    if (!(*(**(v3 + 56) + 48))(*(v3 + 56)))
    {
      goto LABEL_3;
    }

    v3 = a1[1];
    if (*(v3 + 40) == 1)
    {
      goto LABEL_3;
    }
  }

  if (a2)
  {
LABEL_12:

    sub_10119F4F4(v3, 1);
  }

  else
  {
    (*(**(v3 + 56) + 16))(*(v3 + 56));
    (*(**(a1[1] + 56) + 24))(&v8);
    if (!a1[2])
    {
      sub_10000501C(&__p, "ReEvaluationTimer");
      v13[0] = off_101F17088;
      v13[1] = a1;
      v13[3] = v13;
      AutoStartTimer::create();
      v6 = v12;
      v12 = 0uLL;
      v7 = a1[3];
      *(a1 + 1) = v6;
      if (v7)
      {
        sub_100004A34(v7);
        if (*(&v12 + 1))
        {
          sub_100004A34(*(&v12 + 1));
        }
      }

      sub_10002B644(v13);
      if (v11 < 0)
      {
        operator delete(__p);
      }
    }

    if (v9)
    {
      sub_100004A34(v9);
    }
  }
}

void sub_10119FE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_10002B644(v17 - 56);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_10119FE8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 39) == 1)
  {
    (*(**(v1 + 56) + 24))(&v2);
    (**v2)();
    operator new();
  }

  sub_10119FFB8(a1);
}

void sub_10119FFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10119FFB8(uint64_t a1)
{
  if ((*(a1 + 72) & 1) == 0 && !*(a1 + 56))
  {
    sub_10000501C(&__p, "TimerToDetermineIfLowChanceOfComingInService");
    (*(**(*(a1 + 8) + 56) + 16))(*(*(a1 + 8) + 56));
    (*(**(*(a1 + 8) + 56) + 24))(&v4);
    v9[0] = off_101F17108;
    v9[1] = a1;
    v9[3] = v9;
    AutoStartTimer::create();
    v2 = v8;
    v8 = 0uLL;
    v3 = *(a1 + 64);
    *(a1 + 56) = v2;
    if (v3)
    {
      sub_100004A34(v3);
      if (*(&v8 + 1))
      {
        sub_100004A34(*(&v8 + 1));
      }
    }

    sub_10002B644(v9);
    if (v5)
    {
      sub_100004A34(v5);
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1011A0118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_10002B644(v17 - 56);
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011A0164(uint64_t a1)
{
  result = *(a1 + 8);
  if ((*(result + 36) & 1) != 0 || *(result + 37) == 1 || (*(result + 38) & 1) == 0 && (*(result + 32) & 0xFFFFFFFE) == 4 && ((v3 = (*(**(result + 56) + 48))(*(result + 56)), result = *(a1 + 8), !v3) || *(result + 40) == 1))
  {

    return sub_10119F4F4(result, 0);
  }

  return result;
}

void sub_1011A0214(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      (*(**(*(a1 + 8) + 56) + 24))(&v5);
      (**v5)();
      operator new();
    }

    return;
  }

  if (!v3)
  {
    return;
  }

  (*(**(*(a1 + 8) + 56) + 24))(&v5);
  *(a1 + 48) += (**v5)() - **(a1 + 40);
  if (!v6)
  {
    *(a1 + 40) = 0;
LABEL_9:
    operator delete();
  }

  sub_100004A34(v6);
  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  if (sub_1011A0450(a1) > 14999)
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      *(a1 + 72) = 1;
      (*(**(*(a1 + 8) + 56) + 40))(*(*(a1 + 8) + 56));
    }
  }

  else
  {
    sub_10119FFB8(a1);
  }
}

void sub_1011A0434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011A0450(void *a1)
{
  (*(**(a1[1] + 56) + 24))(&v6);
  v2 = (**v6)();
  if (v7)
  {
    sub_100004A34(v7);
  }

  v3 = a1[5];
  if (v3)
  {
    v3 = (*v3 - v2);
  }

  v4 = ((v3 + v2 - a1[4] - a1[6]) * 0x431BDE82D7B634DBLL) >> 64;
  return (v4 >> 18) + (v4 >> 63);
}

void sub_1011A0534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1011A054C(void *a1)
{
  v2 = a1[8];
  a1[7] = 0;
  a1[8] = 0;
  if (v2)
  {
    sub_100004A34(v2);
    v3 = a1[8];
    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    operator delete();
  }

  return sub_10119F170(a1);
}

void sub_1011A05C0(void *a1)
{
  sub_1011A054C(a1);

  operator delete();
}

void *sub_1011A0600(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

void sub_1011A0668(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  operator delete();
}

void sub_1011A06F4(void *a1)
{
  sub_10119F170(a1);

  operator delete();
}

void sub_1011A07BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1011A0860(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011A07E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011A0820(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1011A0860(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[8];
    a2[8] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a2[3];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    ctu::OsLogLogger::~OsLogLogger((a2 + 1));

    operator delete();
  }
}

uint64_t sub_1011A0960(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F17088;
  a2[1] = v2;
  return result;
}

uint64_t sub_1011A098C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[3];
  v1[2] = 0;
  v1[3] = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(*v1 + 24);

  return v3(v1, 1);
}

uint64_t sub_1011A09F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011A0AB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F17108;
  a2[1] = v2;
  return result;
}

void sub_1011A0ADC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 64);
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  if ((*(v1 + 72) & 1) == 0)
  {
    *(v1 + 72) = 1;
    v3 = *(**(*(v1 + 8) + 56) + 40);

    v3();
  }
}

uint64_t sub_1011A0B60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011A0C6C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1011A0C84(uint64_t a1, dispatch_object_t *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  object = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_10010BE30(v6, a3);
  TTYUtilityHelper::registerForTTYMethodChangedNotification(v4);
  sub_10002B644(v6);
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_1011A0D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, char a10)
{
  sub_10002B644(&a10);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011A0D3C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  sub_1000BA468(&v5, a2);
  v3 = TTYUtilityHelper::currentPreferredTransportMethod(v2, &v5);
  sub_1000475BC(&v5);
  return v3;
}

void sub_1011A0D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000475BC(va);
  _Unwind_Resume(a1);
}

const void **sub_1011A0D9C@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  sub_1000BA468(&v6, a2);
  TTYUtilityHelper::getTTYRelayPhoneNumber(v4, &v6, a3);
  return sub_1000475BC(&v6);
}

void sub_1011A0DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000475BC(va);
  _Unwind_Resume(a1);
}

id sub_1011A0E04(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  sub_1000BA468(&v5, a2);
  IncomingCallsAsTTYSwitchState = TTYUtilityHelper::getIncomingCallsAsTTYSwitchState(v2, &v5);
  sub_1000475BC(&v5);
  return IncomingCallsAsTTYSwitchState;
}

void sub_1011A0E50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000475BC(va);
  _Unwind_Resume(a1);
}

void *sub_1011A0E68(void *a1)
{
  *a1 = off_101F17188;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1011A0EB4(void *a1)
{
  *a1 = off_101F17188;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_1011A0F40(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F171F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1011A0FBC(void *a1)
{
  *a1 = off_101F17188;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1011A1008(void *a1)
{
  *a1 = off_101F17188;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void *sub_1011A10E0(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F172A8;
  TTYUtilityHelper::TTYUtilityHelper(a1 + 3);
  return a1;
}

void sub_1011A115C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F172A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011A1A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ctu::OsLogLogger *a30)
{
  sub_1000087B4(&a25);

  sub_10020A86C(&a30);
  _Unwind_Resume(a1);
}

void sub_1011A1EDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10020A86C(va);
  _Unwind_Resume(a1);
}

void sub_1011A1F44(uint64_t a1)
{
  sub_1011A1F7C(a1);

  operator delete();
}

uint64_t sub_1011A1F7C(uint64_t a1)
{
  *a1 = off_101F17380;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  *a1 = off_101F50458;
  sub_100580908(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_1011A2058(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011A2094(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011A20CC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1011A20FC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011A213C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_1011A216C(uint64_t a1, void *a2, NSObject **a3, void *a4)
{
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, " me.hlp");
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = *a3;
  *(a1 + 24) = *a3;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(&uuidStr, buf);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), &uuidStr);
  ctu::OsLogLogger::~OsLogLogger(&uuidStr);
  ctu::OsLogContext::~OsLogContext(buf);
  *a1 = &off_101F17458;
  *(a1 + 48) = *a2;
  v9 = a2[1];
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = *a4;
  v10 = a4[1];
  *(a1 + 96) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v11 = (a1 + 112);
  uuidStr = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v13 = ServiceMap;
  v14 = "8UStorage";
  v15 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v16 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  v19 = sub_100009510(&v13[1].__m_.__sig, buf);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v13);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v13);
  v20 = 0;
  v22 = 1;
LABEL_15:
  sub_10071C330(v21, @"PersonalityNamespaceUUID", 0, 3, &v41);
  sub_100060DE8(&uuidStr, &v41);
  sub_10000A1EC(&v41);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  if (uuidStr)
  {
    v23 = CFUUIDCreateFromString(0, uuidStr);
    v24 = *v11;
    *v11 = v23;
    *buf = v24;
    sub_1000475BC(buf);
  }

  if (*v11)
  {
    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "";
      v44 = 2080;
      v45 = "";
      v46 = 2112;
      v47 = uuidStr;
      v26 = "#I %s%sreloaded personality namespace UUID: %@";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0x20u);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v27 = CFUUIDCreate(0);
  v28 = *v11;
  *v11 = v27;
  *buf = v28;
  sub_1000475BC(buf);
  v29 = CFUUIDCreateString(0, *v11);
  v30 = uuidStr;
  uuidStr = v29;
  *buf = v30;
  sub_100005978(buf);
  v31 = Registry::getServiceMap(*(a1 + 48));
  v32 = v31;
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v33 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
    v34 = 5381;
    do
    {
      v14 = v34;
      v35 = *v33++;
      v34 = (33 * v34) ^ v35;
    }

    while (v35);
  }

  std::mutex::lock(v31);
  *buf = v14;
  v36 = sub_100009510(&v32[1].__m_.__sig, buf);
  if (v36)
  {
    v38 = v36[3];
    v37 = v36[4];
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v32);
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v37);
      v39 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v38 = 0;
  }

  std::mutex::unlock(v32);
  v37 = 0;
  v39 = 1;
LABEL_30:
  sub_10071C318(v38, @"PersonalityNamespaceUUID", uuidStr, 0, 3u, 0, 0);
  if ((v39 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  v25 = *(a1 + 40);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "";
    v44 = 2080;
    v45 = "";
    v46 = 2112;
    v47 = uuidStr;
    v26 = "#I %s%screated personality namespace UUID: %@";
    goto LABEL_34;
  }

LABEL_35:
  sub_100005978(&uuidStr);
  return a1;
}

void sub_1011A258C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  sub_100005978(va);
  sub_1000475BC(v3);
  if (*v5)
  {
    dispatch_release(*v5);
  }

  v8 = v2[12];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = v2[9];
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = v2[7];
  if (v10)
  {
    sub_100004A34(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((v2 + 5));
  sub_1000C0544(v2 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1011A2678(uint64_t a1)
{
  *a1 = &off_101F17458;
  v2 = qword_101FCBD28;
  qword_101FCBD20 = 0;
  qword_101FCBD28 = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFUserNotificationCancel(v3);
  }

  sub_1000475BC((a1 + 112));
  v4 = *(a1 + 104);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    sub_100004A34(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1011A272C(uint64_t a1)
{
  sub_1011A2678(a1);

  operator delete();
}

void sub_1011A2764(uint64_t a1, dispatch_object_t *a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_1011A2808();
}

void sub_1011A27F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011A28D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011A2910(uint64_t a1)
{
  sub_100004AA0(&v4, (a1 + 8));
  v2 = v4;
  v1 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = qword_101FCBD28;
  qword_101FCBD20 = v2;
  qword_101FCBD28 = v1;
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
    v1 = v5;
  }

  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1011A298C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  v2 = CTCellularPlanDanglingListDidChangeNotification;

  [(NSNotificationCenter *)v1 postNotificationName:v2 object:0];
}

void sub_1011A29CC(capabilities::ct *a1, uint64_t a2, uint64_t a3)
{
  if (capabilities::ct::supportsGemini(a1))
  {
    if (!*(a1 + 13))
    {
      v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v7 = dispatch_queue_create("remapChannelIdentifier", v6);
      v8 = *(a1 + 13);
      *(a1 + 13) = v7;
      if (v8)
      {
        dispatch_release(v8);
      }
    }

    sub_100004AA0(v11, a1 + 1);
    v9 = *v11;
    if (*&v11[8])
    {
      atomic_fetch_add_explicit((*&v11[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(*(&v9 + 1));
    }

    v10 = *(a1 + 13);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_1011A2C88;
    block[3] = &unk_101F174E8;
    *v11 = a1;
    *&v11[8] = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v12, *a2, *(a2 + 8));
    }

    else
    {
      *v12 = *a2;
      v13 = *(a2 + 16);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v15 = *(a3 + 16);
    }

    v17 = *v11;
    v18 = *&v11[16];
    if (*&v11[16])
    {
      atomic_fetch_add_explicit((*&v11[16] + 16), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(&v19, v12[0], v12[1]);
    }

    else
    {
      v19 = *v12;
      v20 = v13;
    }

    if (SHIBYTE(v15) < 0)
    {
      sub_100005F2C(&v21, __p[0], __p[1]);
    }

    else
    {
      v21 = *__p;
      v22 = v15;
    }

    dispatch_async(v10, block);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }

    if (*&v11[16])
    {
      std::__shared_weak_count::__release_weak(*&v11[16]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v9 + 1));
    }
  }
}

void sub_1011A2C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  sub_100694F98(&a9);
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  _Unwind_Resume(a1);
}

void sub_1011A2C88(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 40))
      {
LABEL_20:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v7 = *v7;
        }

        v8 = (a1 + 80);
        if (*(a1 + 103) < 0)
        {
          v8 = *v8;
        }

        *buf = 136315906;
        v19 = "";
        v20 = 2080;
        v21 = "";
        v22 = 2080;
        v23 = v7;
        v24 = 2080;
        v25 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sremapChannelIdentifier %s -> %s", buf, 0x2Au);
      }

      v16 = 0;
      v17 = 0;
      Registry::getMobileHelper(&v16, *(v3 + 48));
      if (v16)
      {
        v9 = (*(*v16 + 80))();
        v10 = *(v3 + 40);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v11 = "failure";
        *buf = 136315650;
        v19 = "";
        v20 = 2080;
        v21 = "";
        if (v9)
        {
          v11 = "success";
        }

        v22 = 2080;
        v23 = v11;
        v12 = "#I %s%sremapContactsChannelIdentifier result: %s";
        v13 = v10;
        v14 = 32;
      }

      else
      {
        v15 = *(v3 + 40);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        *buf = 136315394;
        v19 = "";
        v20 = 2080;
        v21 = "";
        v12 = "#I %s%snotifyRemapping: failed to create Mobile Helper";
        v13 = v15;
        v14 = 22;
      }

      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_18:
      if (v17)
      {
        sub_100004A34(v17);
      }

      goto LABEL_20;
    }
  }
}

void sub_1011A2EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

_OWORD *sub_1011A2F04(_OWORD *result, uint64_t a2)
{
  v3 = result;
  result[2] = *(a2 + 32);
  v4 = *(a2 + 48);
  *(result + 6) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(result + 9) = *(a2 + 72);
    *(result + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    return sub_100005F2C(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  v6 = *(a2 + 80);
  *(v3 + 12) = *(a2 + 96);
  v3[5] = v6;
  return result;
}
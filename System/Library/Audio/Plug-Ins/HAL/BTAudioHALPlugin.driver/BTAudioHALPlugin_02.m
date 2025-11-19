void sub_2BC80(uint64_t a1)
{
  v2 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    *&v17[8] = 0;
    sub_70AF4(v17, a1 + 64);
    v3 = *(a1 + 32);
    sub_70C40(v17);
    v4 = *(a1 + 48);
    v5 = *(a1 + 52);
    v6 = *(a1 + 56);
    v7 = *(a1 + 192);
    *v17 = 138413314;
    *&v17[4] = v3;
    *&v17[12] = 1024;
    *&v17[14] = v4;
    *&v17[18] = 1024;
    *&v17[20] = v5;
    LOWORD(v18) = 1024;
    *(&v18 + 2) = v6;
    HIWORD(v18) = 1024;
    LODWORD(v19[0]) = v7;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "BTAudioAccessoryDevice : deviceName=%@ ID=%d Version=%d VendorID=%d ServiceMask=%x", v17, 0x24u);
    v2 = qword_D8508;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 144))
    {
      v8 = "Yes";
    }

    else
    {
      v8 = "No";
    }

    v9 = *(a1 + 156);
    v10 = *(a1 + 157);
    v11 = *(a1 + 200);
    if (*(a1 + 290))
    {
      v12 = "Yes";
    }

    else
    {
      v12 = "No";
    }

    *v17 = 136316162;
    *&v17[4] = v8;
    *&v17[12] = 1024;
    *&v17[14] = v9;
    *&v17[18] = 1024;
    *&v17[20] = v10;
    LOWORD(v18) = 1024;
    *(&v18 + 2) = v11;
    HIWORD(v18) = 2080;
    v19[0] = v12;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "BTAudioAccessoryDevice : Apple Device=%s IED=%d IED En=%d DoAP=%d Software Volume=%s", v17, 0x28u);
    v2 = qword_D8508;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 295))
    {
      v13 = "Yes";
    }

    else
    {
      v13 = "No";
    }

    if (*(a1 + 294))
    {
      v14 = "Yes";
    }

    else
    {
      v14 = "No";
    }

    if (*(a1 + 230))
    {
      v15 = "Yes";
    }

    else
    {
      v15 = "No";
    }

    if (*(a1 + 364))
    {
      v16 = "Yes";
    }

    else
    {
      v16 = "No";
    }

    *v17 = 136315906;
    *&v17[4] = v13;
    *&v17[12] = 2080;
    *&v17[14] = v14;
    *&v17[22] = 2080;
    v18 = v15;
    LOWORD(v19[0]) = 2080;
    *(v19 + 2) = v16;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "BTAudioAccessoryDevice : mOneBudANCMode=%s mLiveListenSupported=%s mSpatialAudioSupported=%s mTipiConnected=%s", v17, 0x2Au);
  }
}

uint64_t sub_2BEB8(uint64_t a1)
{
  v2 = *(a1 + 384);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 392);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 392) = 0;
  }

  v4 = *(a1 + 208);
  if (v4)
  {
  }

  v5 = *(a1 + 320);
  if (v5)
  {

    *(a1 + 320) = 0;
  }

  v27[0] = 0;
  v27[1] = 0;
  sub_70AF4(v27, a1 + 64);
  v6 = *(a1 + 304);
  if (v6)
  {
    CFRelease(v6);
  }

  sub_70BD4(v27);
  v7 = *(a1 + 328);
  if (v7)
  {
  }

  v26[0] = 0;
  v26[1] = 0;
  sub_70AF4(v26, a1 + 64);
  v8 = *(a1 + 32);
  if (v8)
  {
    CFRelease(v8);
  }

  sub_70BD4(v26);
  v9 = *(a1 + 136);
  if (v9)
  {
    CFRelease(v9);
  }

  v25[0] = 0;
  v25[1] = 0;
  sub_70AF4(v25, a1 + 536);
  v10 = *(a1 + 512);
  if (v10)
  {
    CFRelease(v10);
  }

  sub_70BD4(v25);
  v24[0] = 0;
  v24[1] = 0;
  sub_70AF4(v24, a1 + 64);
  v11 = *(a1 + 264);
  if (v11)
  {
    CFRelease(v11);
  }

  sub_70BD4(v24);
  v23[0] = 0;
  v23[1] = 0;
  sub_70AF4(v23, a1 + 424);
  v12 = *(a1 + 400);
  v13 = (a1 + 408);
  if (v12 != (a1 + 408))
  {
    do
    {
      v14 = v12[5];
      [v14 cancelExitHandler];

      v15 = v12[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v12[2];
          v17 = *v16 == v12;
          v12 = v16;
        }

        while (!v17);
      }

      v12 = v16;
    }

    while (v16 != v13);
  }

  sub_16FF8(a1 + 400, *(a1 + 408));
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = v13;
  v18 = *(a1 + 280);
  if (v18)
  {
    CFRelease(v18);
  }

  sub_70C40(v23);
  sub_70C40(v24);
  sub_70C40(v25);
  sub_70C40(v26);
  sub_70C40(v27);
  sub_70A28(a1 + 536, v19);
  sub_70A28(a1 + 424, v20);
  sub_16FF8(a1 + 400, *(a1 + 408));
  sub_70A28(a1 + 64, v21);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_2C0BC(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_70AF4(v18, a1 + 424);
  v2 = *(a1 + 400);
  if (v2 != (a1 + 408))
  {
    do
    {
      v3 = *(v2 + 8);
      v4 = v2[5];
      v5 = [v4 HighestQualityFormat] >> 32;
      v6 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v4 spatialRefCount];
        [v4 HighestQualityFormat];
        v9 = v8;
        [v4 HighestQualityFormat];
        v17[0] = HIBYTE(v5);
        v17[1] = BYTE2(v5);
        v17[2] = BYTE1(v5);
        v17[3] = v5;
        v17[4] = 0;
        *buf = 67110146;
        v20 = v3;
        v21 = 1024;
        v22 = v7;
        v23 = 1024;
        v24 = v9;
        v25 = 1024;
        v26 = v10;
        v27 = 2080;
        v28 = v17;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Spatial Audio Client PID = %d Ref Count = %d [%d %d %s]", buf, 0x24u);
      }

      v11 = v2[1];
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
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != (a1 + 408));
  }

  v14 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 232);
    *buf = 67109120;
    v20 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Updated Spatial Enable %d", buf, 8u);
  }

  return sub_70C40(v18);
}

BOOL sub_2C2F0(uint64_t a1)
{
  v1 = *(a1 + 192);
  v2 = *(a1 + 196);
  v3 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109888;
    v5[1] = v1 & 0x30011;
    v6 = 1024;
    v7 = v1;
    v8 = 1024;
    v9 = v2 & 0x30011;
    v10 = 1024;
    v11 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "BTAudioAccessoryDevice : AllProfilesConnected service Mask=%x [%x] Connect Mask=%x[%x]", v5, 0x1Au);
  }

  return (v2 & 0x30011 & v1) == (v1 & 0x30011);
}

uint64_t sub_2C430(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_70AF4(v4, a1 + 64);
  v2 = *(a1 + 32);
  sub_70C40(v4);
  return v2;
}

void sub_2C478(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 172) == a2)
  {
    v4 = (a1 + 176);
    if (*(a1 + 176) == a3)
    {
      return;
    }
  }

  else
  {
    v4 = (a1 + 176);
    v5 = *(a1 + 176);
    *(a1 + 172) = a2;
    if (v5 == a3)
    {
      goto LABEL_6;
    }
  }

  *v4 = a3;
LABEL_6:
  sub_5AAC0(*a1, 1768256354);
  v6 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (*(**a1 + 16))();
    v8 = *(a1 + 172);
    v9 = *(a1 + 176);
    v10[0] = 67109632;
    v10[1] = v7;
    v11 = 1024;
    v12 = v8;
    v13 = 1024;
    v14 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Accessory mInEarStatus set for mAudioObjectID %u. Primary: %u, Secondary: %u", v10, 0x14u);
  }
}

void sub_2C5A0(uint64_t a1, int a2)
{
  if (*(a1 + 180) != a2)
  {
    *(a1 + 180) = a2;
    sub_5AAC0(*a1, 1886546291);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 180);
      v5 = (*(**a1 + 16))();
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Accessory PrimaryBudSide set to %d for mAudioObjectID %d", v6, 0xEu);
    }
  }
}

void sub_2C6A0(uint64_t a1, int a2)
{
  if (*(a1 + 164) != a2)
  {
    *(a1 + 164) = a2;
    sub_5AAC0(*a1, 1819505773);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 164);
      v5 = (*(**a1 + 16))();
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Accessory mListenMode set to %d for mAudioObjectID %d", v6, 0xEu);
    }
  }
}

void sub_2C7A0(uint64_t a1, int a2)
{
  if (*(a1 + 184) != a2)
  {
    *(a1 + 184) = a2;
    sub_5AAC0(*a1, 1684434285);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 184);
      v5 = (*(**a1 + 16))();
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Accessory MicMode set to %d for mAudioObjectID %d", v6, 0xEu);
    }
  }
}

uint64_t sub_2C8A0(uint64_t result, int a2)
{
  if (*(result + 294) != a2)
  {
    v3 = result;
    *(result + 294) = a2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v5 = "enabled";
      }

      else
      {
        v5 = "disabled";
      }

      v6 = (*(**v3 + 16))();
      v7 = 136446466;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "mLiveListenSupported set to %{public}s for mAudioObjectID %d", &v7, 0x12u);
    }

    return sub_5AAC0(*v3, 1819046768);
  }

  return result;
}

uint64_t sub_2C9B8(uint64_t result, int a2)
{
  if (*(result + 341) != a2)
  {
    v3 = result;
    *(result + 341) = a2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(**v3 + 16))();
      v6[0] = 67109376;
      v6[1] = a2;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "mAllowAutoRoute set to %d for mAudioObjectID %d", v6, 0xEu);
    }

    result = sub_42134();
    if (result)
    {
      return sub_5AAC0(*v3, 1635087471);
    }
  }

  return result;
}

uint64_t sub_2CAC0(uint64_t result, int a2)
{
  if (*(result + 258) != a2)
  {
    v3 = result;
    *(result + 258) = a2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(**v3 + 16))();
      v6[0] = 67109376;
      v6[1] = a2;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "DSPOffload Supported set to %d for mAudioObjectID %d", v6, 0xEu);
    }

    return sub_5AAC0(*v3, 1685278578);
  }

  return result;
}

uint64_t sub_2CBC0(uint64_t result, int a2)
{
  v2 = result;
  if (*(result + 272) != a2)
  {
    *(result + 272) = a2;
  }

  if (a2)
  {
    v6[0] = 0;
    v6[1] = 0;
    sub_70AF4(v6, result + 64);
    v3 = *(v2 + 264);
    if (v3)
    {
      CFRelease(v3);
    }

    keys = @"airpods noise suppression for studio mic";
    values = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFRetain(values);
    v10 = @"airpods noise suppression";
    v9 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFRetain(v9);
    v4 = CFDictionaryCreate(kCFAllocatorDefault, &v10, &v9, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(v2 + 264) = v4;
    v5 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "mDevicePropertyDSPOffloadDict update for enhancedEQ to %@", buf, 0xCu);
    }

    return sub_70C40(v6);
  }

  return result;
}

uint64_t sub_2CD5C(uint64_t result, int a2)
{
  if (*(result + 249) != a2)
  {
    v3 = result;
    *(result + 249) = a2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "mPVDRCEnable set to %d", v5, 8u);
    }

    return sub_5AAC0(*v3, 1886807154);
  }

  return result;
}

uint64_t sub_2CE28(uint64_t result, int a2)
{
  if (*(result + 250) != a2)
  {
    v3 = result;
    *(result + 250) = a2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "mPVDRCPrslCoef set to %d", v5, 8u);
    }

    return sub_5AAC0(*v3, 1886807139);
  }

  return result;
}

BOOL sub_2CEF4(uint64_t a1)
{
  v1 = *(a1 + 280);
  if (v1)
  {
    return CFDictionaryContainsKey(v1, @"airpods content creation recording") != 0;
  }

  v3 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "StudioMic DSPOffload Available Dict nil, return true", v4, 2u);
  }

  return 1;
}

CFDictionaryRef sub_2CF7C(CFTypeRef *a1)
{
  if (_os_feature_enabled_impl() && *(*a1 + 1161) == 1952538980 && sub_2CEF4(a1))
  {
    v4[0] = @"airpods content creation recording";
    values = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFRetain(values);
    v2 = CFDictionaryCreate(kCFAllocatorDefault, v4, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFRetain(v2);
  }

  else
  {
    v4[0] = 0;
    v4[1] = 0;
    sub_70AF4(v4, (a1 + 8));
    CFRetain(a1[33]);
    v2 = a1[33];
    sub_70C40(v4);
  }

  return v2;
}

uint64_t sub_2D0D8(uint64_t result, int a2)
{
  if (*(result + 342) != a2)
  {
    v3 = result;
    *(result + 342) = a2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(**v3 + 16))();
      v6[0] = 67109376;
      v6[1] = a2;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "mAudioRouteHidden set to %d for mAudioObjectID %d", v6, 0xEu);
    }

    return sub_5AAC0(*v3, 1751737454);
  }

  return result;
}

uint64_t sub_2D1D8(uint64_t result, int a2)
{
  if (*(result + 340) != a2)
  {
    v3 = result;
    *(result + 340) = a2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(**v3 + 16))();
      v6[0] = 67109376;
      v6[1] = a2;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "mUserSelectedDeviceType set to %d for mAudioObjectID %d", v6, 0xEu);
    }

    return sub_5AAC0(*v3, 1970496630);
  }

  return result;
}

void sub_2D2D8(uint64_t a1, int a2)
{
  if (*(a1 + 200) != a2)
  {
    *(a1 + 200) = a2;
    sub_5AAC0(*a1, 1685021040);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 200);
      v5 = (*(**a1 + 16))();
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Accessory mDoAPSupported set to %d for mAudioObjectID %d", v6, 0xEu);
    }
  }
}

uint64_t sub_2D3D8(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 208);
    if (v4 != a2)
    {

      v3[26] = a2;
      v5 = a2;
      v6 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v3[26];
        v8 = (*(**v3 + 16))();
        v9 = 138412546;
        v10 = v7;
        v11 = 1024;
        v12 = v8;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "DoAP UUID %@ for mAudioObjectID %d", &v9, 0x12u);
      }

      return sub_5AAC0(*v3, 1685088612);
    }
  }

  return result;
}

void sub_2D4E8(_BYTE *a1, int a2)
{
  if (a1[240] != a2)
  {
    a1[240] = a2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(**a1 + 16))();
      v6[0] = 67109376;
      v6[1] = a2;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Accessory mCustomHRTFSupported set to %d for mAudioObjectID %d", v6, 0xEu);
    }
  }
}

void sub_2D5D8(uint64_t a1, int a2)
{
  v2 = a2;
  if (*(a1 + 144) != 1 || ((v4 = *(a1 + 48), v4 != 8229) ? (v5 = v4 == 8215) : (v5 = 1), !v5))
  {
    v9 = (a1 + 230);
    if (*(a1 + 230) == a2)
    {
      return;
    }

    goto LABEL_12;
  }

  v6 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 230);
    v8 = (*(**a1 + 16))();
    v12 = 67109376;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Accessory mSpatialAudioSupported Overwritten %d for mAudioObjectID %d", &v12, 0xEu);
  }

  v9 = (a1 + 230);
  if ((*(a1 + 230) & 1) == 0)
  {
    v2 = 1;
LABEL_12:
    *v9 = v2;
    v10 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (*(**a1 + 16))();
      v12 = 67109376;
      v13 = v2;
      v14 = 1024;
      v15 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Accessory mSpatialAudioSupported set to %d for mAudioObjectID %d", &v12, 0xEu);
    }
  }
}

BOOL sub_2D788(uint64_t a1)
{
  if (*(a1 + 144) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 48);
  return v1 == 8215 || v1 == 8229;
}

uint64_t sub_2D7B8(uint64_t a1, char a2)
{
  result = _os_feature_enabled_impl();
  *(a1 + 228) = result & a2;
  return result;
}

void sub_2D7F8(uint64_t a1, int a2)
{
  if (*(a1 + 238) != a2)
  {
    *(a1 + 238) = a2;
    sub_5AAC0(*a1, 1752327777);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 238);
      v5 = (*(**a1 + 16))();
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Accessory mSoundProfileAllowed set to %d for mAudioObjectID %d", v6, 0xEu);
    }
  }
}

void sub_2D8F8(uint64_t a1, int a2)
{
  if (*(a1 + 239) != a2)
  {
    *(a1 + 239) = a2;
    sub_5AAC0(*a1, 1752327777);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 239);
      v5 = (*(**a1 + 16))();
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Accessory mSoundProfileEnhancedTuning set to %d for mAudioObjectID %d", v6, 0xEu);
    }
  }
}

void sub_2D9F8(uint64_t a1, int a2)
{
  if (*(a1 + 236) != a2)
  {
    *(a1 + 236) = a2;
    sub_5AAC0(*a1, 1936746611);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 236);
      v5 = (*(**a1 + 16))();
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Accessory mSpatialAudioUserEnableFeature set to %d for mAudioObjectID %d", v6, 0xEu);
    }
  }
}

void sub_2DAF8(uint64_t a1, int a2)
{
  if (*(a1 + 244) != a2)
  {
    *(a1 + 244) = a2;
    sub_5AAC0(*a1, 1936225136);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 244);
      v5 = (*(**a1 + 16))();
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Accessory mStereoHfpCodecIDSupported set to %d for mAudioObjectID %d", v6, 0xEu);
    }
  }
}

void sub_2DBF8(_BYTE *a1, int a2)
{
  if (*(a1 + 61))
  {
    v3 = *(*a1 + 9096);
    if (v3 && (*(v3 + 192) & 1) != 0)
    {
      if (a1[248] != a2)
      {
        a1[248] = a2;
        v12 = 0;
        if (sub_42134())
        {
          if (a2)
          {
            sub_6D0F8(*a1, &v12, 1);
            if (*(*(*a1 + 9096) + 192))
            {
              v5 = *(*a1 + 9096);
            }

            else
            {
              v5 = 0;
            }

            (*(*v5 + 536))();
          }
        }

        else
        {
          if (*(*(*a1 + 9096) + 192))
          {
            v6 = *(*a1 + 9096);
          }

          else
          {
            v6 = 0;
          }

          (*(*v6 + 536))(v6, 3);
        }

        sub_5AAC0(*a1, 1936221550);
        v7 = qword_D8508;
        if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
        {
          v8 = a1[248];
          v9 = (*(**a1 + 16))();
          if (*(*(*a1 + 9096) + 192))
          {
            v10 = *(*a1 + 9096);
          }

          else
          {
            v10 = 0;
          }

          (*(*v10 + 824))(v11);
          *buf = 67109632;
          v14 = v8;
          v15 = 1024;
          v16 = v9;
          v17 = 2048;
          v18 = v11[0];
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "HFPstereo publish, Accessory mStereoHfpEnabled set to %d for mAudioObjectID %d, samplerate: %f", buf, 0x18u);
        }
      }
    }

    else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
    {
      sub_7AEC0();
    }
  }

  else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
  {
    sub_7AEF4();
  }
}

void sub_2DE84(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 336) != a2)
  {
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      memset(__p, 0, 24);
      if (a2 > 2)
      {
        v5 = "Unknown";
      }

      else
      {
        v5 = off_AF9A8[a2];
      }

      sub_2088(__p, v5);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      v7 = "NO";
      if (*(a1 + 257))
      {
        v7 = "YES";
      }

      *buf = 136446466;
      *&buf[4] = v6;
      *&buf[12] = 2082;
      *&buf[14] = v7;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "RemoteStreamState set to %{public}s Spatial Busy %{public}s", buf, 0x16u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a1 + 336) = a2;
    v8 = *(a1 + 60);
    memset(buf, 0, sizeof(buf));
    if (*(a1 + 31) < 0)
    {
      sub_9780(buf, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      *buf = *(a1 + 8);
      *&buf[16] = *(a1 + 24);
    }

    v9 = qword_D8DF0;
    if (buf[23] < 0)
    {
      sub_9780(v27, *buf, *&buf[8]);
    }

    else
    {
      *v27 = *buf;
      v28 = *&buf[16];
    }

    v10 = sub_4D4E0(v9, v27);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }

    v11 = *(a1 + 145);
    v12 = *(*a1 + 9088);
    if (v12 && v12[192] == 1)
    {
      v13 = qword_D8DF0;
      v14 = (*(*v12 + 16))(v12);
      v15 = sub_500F8(v13, v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_4E594(qword_D8DF0);
    v17 = a2 - 3;
    v18 = v8 - 1;
    v19 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 364))
      {
        v20 = "TiPi";
      }

      else
      {
        v20 = "Triangle";
      }

      v21 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v21 = *buf;
      }

      LODWORD(__p[0]) = 136446722;
      *(__p + 4) = v20;
      WORD2(__p[1]) = 2082;
      *(&__p[1] + 6) = v21;
      if (v10)
      {
        v22 = "Yes";
      }

      else
      {
        v22 = "No";
      }

      HIWORD(__p[2]) = 2082;
      __p[3] = v22;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}s Ownership Status : device %{public}s. Device Stream Status %{public}s", __p, 0x20u);
    }

    if (v18 < 2)
    {
      v23 = 1;
    }

    else
    {
      v23 = v10;
    }

    if (v17 < 0xFFFFFFFE)
    {
      v23 = 1;
    }

    if (!(v23 & 1 | ((v11 & 1) == 0) | v15 & 1) && ((v16 & 1) != 0 || *(a1 + 364) == 1))
    {
      v24 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 364))
        {
          v25 = "TiPi";
        }

        else
        {
          v25 = "Triangle";
        }

        v26 = buf;
        if ((buf[23] & 0x80u) != 0)
        {
          v26 = *buf;
        }

        LODWORD(__p[0]) = 136446466;
        *(__p + 4) = v25;
        WORD2(__p[1]) = 2082;
        *(&__p[1] + 6) = v26;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}s sync mismatch warning:device %{public}s", __p, 0x16u);
      }
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_2E230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2E270@<X0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1 > 2)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_AF9A8[a1];
  }

  return sub_2088(a2, v2);
}

uint64_t sub_2E2A0(uint64_t *a1, const char *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_70AF4(v6, (a1 + 8));
  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[4] = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  sub_70BD4(v6);
  sub_5AAC0(*a1, 1819173229);
  return sub_70C40(v6);
}

void sub_2E33C(float *a1, float a2)
{
  if (a2 != -1.0 && a1[74] != a2)
  {
    a1[74] = a2;
    v5 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (*(**a1 + 16))();
      v7 = 134218240;
      v8 = a2;
      v9 = 1024;
      v10 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "mDosimetrySensitivity set to %f for mAudioObjectID %d", &v7, 0x12u);
    }

    sub_5AAC0(*a1, 1685025637);
    if (*a1)
    {
      sub_6AFA8(*a1);
    }
  }
}

CFIndex sub_2E454(CFIndex result, const void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 304);
    if (!v4 || (result = [v4 isEqualToArray:a2], (result & 1) == 0) && (!v3[38] || (result = CFArrayGetCount(a2)) != 0))
    {
      v5 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        v6 = (*(**v3 + 16))();
        *buf = 67109120;
        *&buf[4] = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "mDosimetryVolumeCurve set for mAudioObjectID %d", buf, 8u);
      }

      *buf = 0;
      v10 = 0;
      sub_70AF4(buf, (v3 + 8));
      v7 = v3[38];
      if (v7)
      {
        CFRelease(v7);
      }

      sub_70BD4(buf);
      v3[38] = a2;
      CFRetain(a2);
      sub_5AAC0(*v3, 1685026403);
      v8[0] = 0;
      v8[1] = 0;
      sub_70AF4(v8, (v3 + 8));
      if (*v3)
      {
        sub_6AFD4(*v3);
      }

      sub_70BD4(v8);
      sub_70C40(v8);
      return sub_70C40(buf);
    }
  }

  return result;
}

void sub_2E5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

void *sub_2E5F8(void *result, uint64_t a2)
{
  if (*(result + 312) != a2)
  {
    v2 = a2;
    v3 = result;
    *(result + 312) = a2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(**v3 + 16))();
      v6[0] = 67109376;
      v6[1] = v2;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "mEURegionBit set to %d for mAudioObjectID %d", v6, 0xEu);
      v2 = *(v3 + 312);
    }

    return [v3[40] updateRegionalDosimetryVolumeCurve:v2 productID:*(v3 + 12) audioDevice:*v3];
  }

  return result;
}

uint64_t sub_2E700(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "UpdateAccessoryFeatureFromDevice", buf, 2u);
  }

  value = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySupportedServices");
  v7 = value;
  if (value)
  {
    if (xpc_get_type(value) != &_xpc_type_int64)
    {
      v8 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7AE48(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    *(a1 + 192) = xpc_int64_get_value(v7);
  }

  v16 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyIsAppleAudioDevice");
  v17 = v16;
  if (v16 && xpc_get_type(v16) == &_xpc_type_BOOL)
  {
    *(a1 + 144) = xpc_BOOL_get_value(v17);
  }

  v18 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyLocalStreamState");
  v19 = v18;
  if (v18)
  {
    if (xpc_get_type(v18) != &_xpc_type_int64)
    {
      v20 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7AF28(v20, v21, v22, v23, v24, v25, v26, v27);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    *(a1 + 60) = xpc_int64_get_value(v19);
  }

  v28 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyInEarDetection");
  v29 = v28;
  if (v28)
  {
    if (xpc_get_type(v28) != &_xpc_type_BOOL)
    {
      v30 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7AFA0(v30, v31, v32, v33, v34, v35, v36, v37);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v38 = xpc_BOOL_get_value(v29);
    sub_2B430(a1, v38);
  }

  v39 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyExtentedHfpVolumeRange");
  v40 = v39;
  if (v39 && xpc_get_type(v39) == &_xpc_type_BOOL)
  {
    v41 = xpc_BOOL_get_value(v40);
    sub_2B538(a1, v41);
  }

  if (*(a1 + 156) == 1)
  {
    v42 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyInEarEnabled");
    v43 = v42;
    if (v42)
    {
      if (xpc_get_type(v42) != &_xpc_type_BOOL)
      {
        v44 = qword_D8508;
        if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
        {
          sub_7B018(v44, v45, v46, v47, v48, v49, v50, v51);
        }

        if (sub_70820())
        {
          goto LABEL_320;
        }
      }

      v52 = xpc_BOOL_get_value(v43);
      sub_2B684(a1, v52);
    }

    else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
    {
      sub_7B090();
    }

    v53 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyInEarStatus");
    v54 = v53;
    if (v53)
    {
      if (xpc_get_type(v53) != &_xpc_type_int64)
      {
        v55 = qword_D8508;
        if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
        {
          sub_7B0C4(v55, v56, v57, v58, v59, v60, v61, v62);
        }

        if (sub_70820())
        {
          goto LABEL_320;
        }
      }

      v63 = xpc_int64_get_value(v54);
      sub_2C478(a1, v63, HIBYTE(v63));
    }

    else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
    {
      sub_7B13C();
    }

    v64 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyPrimaryBudSide");
    v65 = v64;
    if (v64)
    {
      if (xpc_get_type(v64) != &_xpc_type_int64)
      {
        v66 = qword_D8508;
        if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
        {
          sub_7B170(v66, v67, v68, v69, v70, v71, v72, v73);
        }

        if (sub_70820())
        {
          goto LABEL_320;
        }
      }

      v74 = xpc_int64_get_value(v65);
      sub_2C5A0(a1, v74);
    }

    else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
    {
      sub_7B1E8();
    }

    v75 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyFixedMicRole");
    v76 = v75;
    if (v75)
    {
      if (xpc_get_type(v75) != &_xpc_type_int64)
      {
        v77 = qword_D8508;
        if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
        {
          sub_7B21C(v77, v78, v79, v80, v81, v82, v83, v84);
        }

        if (sub_70820())
        {
          goto LABEL_320;
        }
      }

      v85 = xpc_int64_get_value(v76);
      sub_2C7A0(a1, v85);
    }

    else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
    {
      sub_7B294();
    }
  }

  v86 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyDOAPUuid");
  if (v86)
  {
    v87 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v86)];
    sub_2D3D8(a1, v87);
  }

  v88 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyListenModeSupported");
  v89 = v88;
  if (v88)
  {
    if (xpc_get_type(v88) != &_xpc_type_int64)
    {
      v90 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B2C8(v90, v91, v92, v93, v94, v95, v96, v97);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v98 = xpc_int64_get_value(v89);
    sub_2B79C(a1, v98);
    if (xpc_int64_get_value(v89))
    {
      v99 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyListenMode");
      v100 = v99;
      if (v99)
      {
        if (xpc_get_type(v99) != &_xpc_type_int64)
        {
          v101 = qword_D8508;
          if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
          {
            sub_7B340(v101, v102, v103, v104, v105, v106, v107, v108);
          }

          if (sub_70820())
          {
            goto LABEL_320;
          }
        }

        v109 = xpc_int64_get_value(v100);
        sub_2C6A0(a1, v109);
      }
    }
  }

  v110 = qword_D8DF0;
  if (*(a1 + 31) < 0)
  {
    sub_9780(__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *__p = *(a1 + 8);
    v378 = *(a1 + 24);
  }

  v111 = sub_4E4CC(v110, __p);
  *(a1 + 145) = v111;
  if (SHIBYTE(v378) < 0)
  {
    operator delete(__p[0]);
    v112 = qword_D8508;
    if ((*(a1 + 145) & 1) == 0)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v112 = qword_D8508;
    if (!v111)
    {
      goto LABEL_83;
    }
  }

  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v112, OS_LOG_TYPE_DEFAULT, "Corresponding A2DP device was owned already, initializing to owned", buf, 2u);
    v112 = qword_D8508;
  }

LABEL_83:
  v113 = *(a1 + 144);
  *(a1 + 293) = v113;
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    v114 = "not supported";
    if (v113)
    {
      v114 = "supported.";
    }

    *buf = 136315138;
    *&buf[4] = v114;
    _os_log_impl(&dword_0, v112, OS_LOG_TYPE_DEFAULT, "Ownership is %s", buf, 0xCu);
    if ((*(a1 + 293) & 1) == 0)
    {
      goto LABEL_98;
    }
  }

  else if (!v113)
  {
    goto LABEL_98;
  }

  v115 = qword_D8DF0;
  if (*(a1 + 31) < 0)
  {
    sub_9780(v375, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *v375 = *(a1 + 8);
    v376 = *(a1 + 24);
  }

  v116 = sub_4E4CC(v115, v375);
  *(a1 + 145) = v116;
  if (SHIBYTE(v376) < 0)
  {
    operator delete(v375[0]);
    if ((*(a1 + 145) & 1) == 0)
    {
      goto LABEL_98;
    }
  }

  else if (!v116)
  {
    goto LABEL_98;
  }

  v117 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v117, OS_LOG_TYPE_DEFAULT, "Corresponding A2DP device was owned already, initializing to owned", buf, 2u);
  }

LABEL_98:
  v118 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyDOAPSupported");
  v119 = v118;
  if (v118)
  {
    if (xpc_get_type(v118) != &_xpc_type_BOOL)
    {
      v120 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B3B8(v120, v121, v122, v123, v124, v125, v126, v127);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v128 = xpc_BOOL_get_value(v119);
    sub_2D2D8(a1, v128);
  }

  v129 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyLiveListenSupported");
  v130 = v129;
  if (v129)
  {
    if (xpc_get_type(v129) != &_xpc_type_BOOL)
    {
      v131 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B430(v131, v132, v133, v134, v135, v136, v137, v138);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v139 = xpc_BOOL_get_value(v130);
    sub_2C8A0(a1, v139);
  }

  v140 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyOneBudANCMode");
  v141 = v140;
  if (v140)
  {
    if (xpc_get_type(v140) != &_xpc_type_int64)
    {
      v142 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B4A8(v142, v143, v144, v145, v146, v147, v148, v149);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    *(a1 + 295) = xpc_int64_get_value(v141);
  }

  v150 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyRemoteStreamState");
  v151 = v150;
  if (v150)
  {
    if (xpc_get_type(v150) != &_xpc_type_int64)
    {
      v152 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B520(v152, v153, v154, v155, v156, v157, v158, v159);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v160 = xpc_int64_get_value(v151);
    sub_2DE84(a1, v160);
  }

  v161 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyWSModeSupported");
  if (v161)
  {
    *(a1 + 343) = xpc_BOOL_get_value(v161);
  }

  v162 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyWSIsGuestDevice");
  if (v162)
  {
    v163 = xpc_BOOL_get_value(v162);
    *(a1 + 345) = v163;
    if (v163)
    {
      *(a1 + 293) = 0;
      v164 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "not supported";
        _os_log_impl(&dword_0, v164, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest device ownership is being set to  %s", buf, 0xCu);
      }
    }
  }

  if (*(a1 + 343) == 1)
  {
    v165 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyWSIsGuestNotInContactsDevice");
    if (v165)
    {
      v166 = xpc_BOOL_get_value(v165);
      *(a1 + 346) = v166;
      if (*(a1 + 345) == 1)
      {
        v167 = qword_D8508;
        if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
        {
          v168 = "In Contacts";
          if (v166)
          {
            v168 = "Not In Contacts.";
          }

          *buf = 136315138;
          *&buf[4] = v168;
          _os_log_impl(&dword_0, v167, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest device %s", buf, 0xCu);
        }
      }
    }

    v169 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyWSModeEnabled");
    if (v169)
    {
      *(a1 + 344) = xpc_BOOL_get_value(v169);
    }
  }

  v170 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 343))
    {
      v171 = "supported";
    }

    else
    {
      v171 = "not supported ";
    }

    v172 = "not enabled ";
    if (*(a1 + 344))
    {
      v172 = "enabled";
    }

    *buf = 136315394;
    *&buf[4] = v171;
    *&buf[12] = 2080;
    *&buf[14] = v172;
    _os_log_impl(&dword_0, v170, OS_LOG_TYPE_DEFAULT, "Wireless Splitter is %s and %s", buf, 0x16u);
  }

  v173 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyDigitalCrownSupported");
  v174 = v173;
  if (v173)
  {
    v175 = xpc_BOOL_get_value(v173);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureDigitalCrown", v175);
    *(a1 + 217) = xpc_BOOL_get_value(v174);
  }

  v176 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyBudSideLoudnessEqControlSupported");
  if (v176)
  {
    v177 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v178 = xpc_BOOL_get_value(v176);
      v179 = "not supported";
      if (v178)
      {
        v179 = "supported";
      }

      *buf = 136315138;
      *&buf[4] = v179;
      _os_log_impl(&dword_0, v177, OS_LOG_TYPE_DEFAULT, "Bud side loudness EQ control is %s", buf, 0xCu);
    }

    v180 = xpc_BOOL_get_value(v176);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureBudSideLoudnessEqControlSupport", v180);
  }

  v181 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyBudSideLoudnessEqEnabled");
  if (v181)
  {
    v182 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = xpc_BOOL_get_value(v181);
      v184 = "disabled";
      if (v183)
      {
        v184 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v184;
      _os_log_impl(&dword_0, v182, OS_LOG_TYPE_DEFAULT, "Bud side loudness EQ is %s", buf, 0xCu);
    }

    *(a1 + 218) = xpc_BOOL_get_value(v181);
  }

  v185 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyUWBSStereoSupport");
  if (v185)
  {
    v186 = xpc_BOOL_get_value(v185);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureStereoHfpSupport", v186);
  }

  v187 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySupportSpatialAudio");
  v188 = v187;
  if (v187)
  {
    v189 = xpc_BOOL_get_value(v187);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureHeadTrackedSpatialAudio", v189);
    v190 = xpc_BOOL_get_value(v188);
    sub_2D5D8(a1, v190);
  }

  v191 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyAllowSoundProfile");
  if (v191)
  {
    v192 = xpc_BOOL_get_value(v191);
    sub_2D7F8(a1, v192);
  }

  v193 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySoundProfileEnhancedTuning");
  if (v193)
  {
    v194 = xpc_BOOL_get_value(v193);
    sub_2D8F8(a1, v194);
  }

  v195 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyUnifiedUSBCTransport");
  if (v195)
  {
    *(a1 + 241) = xpc_BOOL_get_value(v195);
  }

  v196 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyAdaptiveVolume");
  if (v196)
  {
    v197 = xpc_BOOL_get_value(v196);
    *(a1 + 228) = v197 & _os_feature_enabled_impl();
    v198 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v199 = "not supported";
      if (v197)
      {
        v199 = "supported";
      }

      *buf = 136315138;
      *&buf[4] = v199;
      _os_log_impl(&dword_0, v198, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: feature %s", buf, 0xCu);
    }

    sub_30088(a1, @"kBluetoothAudioDeviceFeatureAdaptiveVolume", v197);
  }

  v200 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyAdaptiveVolumeMode");
  if (v200)
  {
    v201 = xpc_int64_get_value(v200);
    *(a1 + 229) = v201;
    v202 = +[BTAudioAVNotificationMonitor sharedInstance];
    if (v202)
    {
      [(BTAudioAVNotificationMonitor *)v202 personalizedVolumeEnabled:v201 == 1];
    }

    v203 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      if (v201 == 1)
      {
        v204 = "enabled";
      }

      else
      {
        v204 = "disabled";
      }

      *buf = 136315138;
      *&buf[4] = v204;
      _os_log_impl(&dword_0, v203, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Configration %s", buf, 0xCu);
    }
  }

  v205 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyMuteControl");
  if (v205)
  {
    v206 = xpc_BOOL_get_value(v205);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureMuteControl", v206);
  }

  v207 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyConversationDetect");
  if (v207)
  {
    v208 = xpc_BOOL_get_value(v207);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureConversationDetect", v208);
  }

  v209 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySupportSoundProfile");
  v210 = v209;
  if (v209)
  {
    v211 = xpc_BOOL_get_value(v209);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureCustomHRTF", v211);
    v212 = xpc_BOOL_get_value(v210);
    sub_2D4E8(a1, v212);
  }

  if (xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySoundProfile"))
  {
    v213 = _CFXPCCreateCFObjectFromXPCObject();
    v214 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v213;
      _os_log_impl(&dword_0, v214, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: received %@", buf, 0xCu);
    }

    sub_51CF8(qword_D8DF0, v213);
    if (v213)
    {
      CFRelease(v213);
    }
  }

  v215 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySupportHighQualityBiDirectionalAudio");
  if (v215)
  {
    v216 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v217 = xpc_BOOL_get_value(v215);
      *buf = 67109120;
      *&buf[4] = v217;
      _os_log_impl(&dword_0, v216, OS_LOG_TYPE_DEFAULT, "BTAudiohighQuality BiDirectional Audio: received %d", buf, 8u);
    }

    *(a1 + 237) = xpc_BOOL_get_value(v215);
    v218 = xpc_BOOL_get_value(v215);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureHighQualityBiDirectionalAudio", v218);
  }

  v219 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyTipiSupported");
  v220 = v219;
  if (v219)
  {
    if (xpc_get_type(v219) == &_xpc_type_BOOL)
    {
      v221 = xpc_BOOL_get_value(v220);
      *(a1 + 251) = v221;
      v222 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        v223 = "not support";
        if (v221)
        {
          v223 = "support";
        }

        *buf = 136315138;
        *&buf[4] = v223;
        _os_log_impl(&dword_0, v222, OS_LOG_TYPE_DEFAULT, "TiPi is %s", buf, 0xCu);
      }
    }
  }

  if (*(a1 + 230) == 1)
  {
    v224 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyAllowSpatialAudio");
    if (v224)
    {
      v225 = xpc_BOOL_get_value(v224);
      sub_2D9F8(a1, v225);
    }

    v226 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySpatialPerAppModeMap");
    if (v226)
    {
      if (xpc_get_type(v226) != &_xpc_type_dictionary)
      {
        v227 = qword_D8508;
        if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
        {
          sub_7B598(v227, v228, v229, v230, v231, v232, v233, v234);
        }

        if (sub_70820())
        {
          goto LABEL_320;
        }
      }

      v235 = _CFXPCCreateCFObjectFromXPCObject();
      v236 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        Count = CFDictionaryGetCount(v235);
        *buf = 67109120;
        *&buf[4] = Count;
        _os_log_impl(&dword_0, v236, OS_LOG_TYPE_DEFAULT, "Per App Spatial information : %d", buf, 8u);
      }

      sub_30140(a1, v235);
      sub_301B8(a1);
      if (v235)
      {
        CFRelease(v235);
      }
    }
  }

  v238 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyAdaptiveVolumeMap");
  if (v238)
  {
    if (xpc_get_type(v238) != &_xpc_type_dictionary)
    {
      v239 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B610(v239, v240, v241, v242, v243, v244, v245, v246);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v247 = _CFXPCCreateCFObjectFromXPCObject();
    v248 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v249 = CFDictionaryGetCount(v247);
      *buf = 67109120;
      *&buf[4] = v249;
      _os_log_impl(&dword_0, v248, OS_LOG_TYPE_DEFAULT, "Adaptive Volume information: %d", buf, 8u);
    }

    sub_30228(a1, v247);
    if (v247)
    {
      CFRelease(v247);
    }
  }

  v250 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySoftwareVolumeSupported");
  if (v250)
  {
    *(a1 + 290) = xpc_BOOL_get_value(v250);
  }

  v251 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySupportRemoteVolumeChange");
  if (v251)
  {
    *(a1 + 292) = xpc_BOOL_get_value(v251);
  }

  v252 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyTipiConnected");
  if (v252)
  {
    *(a1 + 364) = xpc_BOOL_get_value(v252);
  }

  v253 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyDeviceUUID");
  v254 = v253;
  if (v253)
  {
    if (xpc_get_type(v253) != &_xpc_type_uuid)
    {
      v255 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B688(v255, v256, v257, v258, v259, v260, v261, v262);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v263 = *(a1 + 328);
    if (v263)
    {
    }

    *(a1 + 328) = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v254)];
  }

  v264 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyDosimetrySensitivity");
  v265 = v264;
  if (v264)
  {
    if (xpc_get_type(v264) != &_xpc_type_double)
    {
      v266 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B700(v266, v267, v268, v269, v270, v271, v272, v273);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v274 = xpc_double_get_value(v265);
    sub_2E33C(a1, v274);
  }

  v275 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyDosimetryVolumeCurve");
  if (v275)
  {
    if (xpc_get_type(v275) != &_xpc_type_array)
    {
      v276 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B778(v276, v277, v278, v279, v280, v281, v282, v283);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v284 = _CFXPCCreateCFObjectFromXPCObject();
    v285 = qword_D8508;
    v286 = os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT);
    if (v284)
    {
      if (v286)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v285, OS_LOG_TYPE_DEFAULT, "Set VolumeCurve", buf, 2u);
      }

      sub_2E454(a1, v284);
      CFRelease(v284);
    }

    else if (v286)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v285, OS_LOG_TYPE_DEFAULT, "Set VolumeCurve with NULL", buf, 2u);
    }
  }

  v287 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyEURegionBit");
  v288 = v287;
  if (v287)
  {
    if (xpc_get_type(v287) != &_xpc_type_int64)
    {
      v289 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B7F0(v289, v290, v291, v292, v293, v294, v295, v296);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    *(a1 + 312) = xpc_int64_get_value(v288);
  }

  v297 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyAllowSCOForTBT");
  v298 = v297;
  if (v297)
  {
    if (xpc_get_type(v297) != &_xpc_type_BOOL)
    {
      v299 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B868(v299, v300, v301, v302, v303, v304, v305, v306);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v307 = xpc_BOOL_get_value(v298);
    sub_3036C(a1, v307);
  }

  v308 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyAllowAutoRoute");
  v309 = v308;
  if (v308)
  {
    if (xpc_get_type(v308) != &_xpc_type_BOOL)
    {
      v310 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B8E0(v310, v311, v312, v313, v314, v315, v316, v317);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v318 = xpc_BOOL_get_value(v309);
    sub_2C9B8(a1, v318);
  }

  v319 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyIsHidden");
  v320 = v319;
  if (v319)
  {
    if (xpc_get_type(v319) != &_xpc_type_BOOL)
    {
      v321 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B958(v321, v322, v323, v324, v325, v326, v327, v328);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v329 = xpc_BOOL_get_value(v320);
    sub_2D0D8(a1, v329);
  }

  v330 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyUserSelectedDeviceType");
  v331 = v330;
  if (v330)
  {
    if (xpc_get_type(v330) != &_xpc_type_int64)
    {
      v332 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7B9D0(v332, v333, v334, v335, v336, v337, v338, v339);
      }

      if (sub_70820())
      {
        goto LABEL_320;
      }
    }

    v340 = xpc_int64_get_value(v331);
    sub_2D1D8(a1, v340);
  }

  v341 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySiriUseDeviceMic");
  if (v341)
  {
    v342 = xpc_BOOL_get_value(v341);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureSiriUseDeviceMic", v342);
  }

  v343 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyFindMyPlayBack");
  if (v343)
  {
    v344 = xpc_BOOL_get_value(v343);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureFindMyPlayBack", v344);
  }

  v345 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyUntrackedSpatial");
  if (v345)
  {
    v346 = xpc_BOOL_get_value(v345);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureAutomaticNonHeadTrackedSpatialAudio", v346);
  }

  v347 = xpc_dictionary_get_value(a3, "kBTHostedDSPOffloadSupport");
  v348 = v347;
  if (v347)
  {
    v349 = xpc_BOOL_get_value(v347);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureHostedDSPOffload", v349);
    v350 = xpc_BOOL_get_value(v348);
    sub_2CAC0(a1, v350);
  }

  v351 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyPersonalizedVolumeDRCInfo");
  if (v351)
  {
    v352 = xpc_BOOL_get_value(v351);
    sub_2CD5C(a1, v352);
  }

  v353 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyPersonalizedVolumeDRCCoef");
  if (v353)
  {
    v354 = xpc_int64_get_value(v353);
    sub_2CE28(a1, v354);
  }

  v355 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyIsGenuineAirPods");
  v356 = v355;
  if (v355)
  {
    if (xpc_get_type(v355) == &_xpc_type_BOOL)
    {
      goto LABEL_302;
    }

    v357 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
    {
      sub_7BA48(v357, v358, v359, v360, v361, v362, v363, v364);
    }

    if (!sub_70820())
    {
LABEL_302:
      v365 = xpc_BOOL_get_value(v356);
      sub_30430(a1, v365);
      goto LABEL_303;
    }

LABEL_320:
    abort();
  }

LABEL_303:
  string = xpc_dictionary_get_string(a3, "kBTAudioMsgPropertyGenericName");
  if (string)
  {
    sub_30548(a1, string);
    v367 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v368 = *(a1 + 608);
      *buf = 138412290;
      *&buf[4] = v368;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v369 = xpc_dictionary_get_value(a3, "kBTAudioMsgFarfieldMicSupported");
    if (v369)
    {
      v370 = xpc_BOOL_get_value(v369);
      sub_30088(a1, @"kBluetoothAudioDeviceFeatureFarfieldInput", v370);
    }
  }

  if (_os_feature_enabled_impl())
  {
    v371 = xpc_dictionary_get_value(a3, "kBTAudioMsgStudioMicSupported");
    if (v371)
    {
      if (xpc_BOOL_get_value(v371))
      {
        v372 = qword_D8508;
        if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "support";
          _os_log_impl(&dword_0, v372, OS_LOG_TYPE_DEFAULT, "StudioMic %s", buf, 0xCu);
        }

        sub_30088(a1, @"kBluetoothAudioDeviceFeatureStudioMicInput", 1);
      }
    }
  }

  sub_2BC80(a1);
  sub_5AAC0(*a1, 1651798886);
  *buf = 0;
  *&buf[8] = 0;
  sub_70AF4(buf, a1 + 536);
  v373 = *(a1 + 512);
  if (v373)
  {
    CFDictionaryApplyFunction(v373, sub_305C8, 0);
  }

  else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
  {
    sub_7BAC0();
  }

  sub_70BD4(buf);
  return sub_70C40(buf);
}

void sub_30040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_30088(uint64_t a1, const void *a2, int a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_70AF4(v9, a1 + 536);
  v6 = *(a1 + 512);
  if (v6)
  {
    v7 = &kCFBooleanTrue;
    if (!a3)
    {
      v7 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(v6, a2, *v7);
  }

  else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
  {
    sub_7BAF4();
  }

  return sub_70C40(v9);
}

void sub_30140(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    v4 = *(a1 + 384);
    if (v4)
    {
      CFRelease(v4);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
    *(a1 + 384) = MutableCopy;

    CFDictionaryApplyFunction(MutableCopy, sub_336E0, 0);
  }
}

uint64_t sub_301B8(uint64_t a1)
{
  v5 = 0;
  result = _os_feature_enabled_impl();
  v3 = 0;
  if ((result & 1) == 0)
  {
    result = sub_33A3C(a1, @"global", &v5, &v4);
    v3 = v5 != 0;
  }

  *(a1 + 256) = v3;
  return result;
}

void sub_30228(CFDictionaryRef *a1, const __CFDictionary *a2)
{
  if (a2)
  {
    v4 = a1[49];
    if (v4)
    {
      CFRelease(v4);
      a1[49] = 0;
    }

    if (_os_feature_enabled_impl())
    {
      a1[49] = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
      v17 = 0;
      v18 = 0;
      v16 = 0;
      sub_32ED0(a1, &v18 + 1, &v18, &v17 + 1, &v17, &v16);
      v5 = +[BTAudioAVNotificationMonitor sharedInstance];
      v6 = *(*a1 + 1161);
      if (v6 == 1953719151 || v6 == 1952539500)
      {
        v8 = v5;
        v9 = sub_5448(*(*a1 + 1142));
        CFRetain(v9);
        LODWORD(v10) = HIDWORD(v18);
        LODWORD(v11) = v18;
        LODWORD(v12) = HIDWORD(v17);
        LODWORD(v13) = v17;
        LODWORD(v14) = v16;
        [(BTAudioAVNotificationMonitor *)v8 updateVolumeForCategories:v9 telephoneVolume:v10 voiceCommandVolume:v11 uid:v12 rampUpDuration:v13 rampDownDuration:v14];
      }

      else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
      {
        sub_7BB28();
      }

      CFDictionaryApplyFunction(a1[49], sub_3314C, 0);
    }
  }
}

void sub_3036C(uint64_t a1, int a2)
{
  if (*(a1 + 360) != a2)
  {
    *(a1 + 360) = a2;
    sub_5AAC0(*a1, 1635017332);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 360);
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Allow SCO for Turn by Turn %d", v5, 8u);
    }
  }
}

void sub_30430(uint64_t a1, int a2)
{
  if (*(a1 + 600) != a2)
  {
    *(a1 + 600) = a2;
    sub_5AAC0(*a1, 1768382832);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 600))
      {
        v4 = "genuine";
      }

      else
      {
        v4 = "non-genuine";
      }

      v5 = (*(**a1 + 16))();
      v6 = 136446466;
      v7 = v4;
      v8 = 1024;
      v9 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AccessoryIsGenuineAirPods set to %{public}s for mAudioObjectID %d", &v6, 0x12u);
    }
  }
}

uint64_t sub_30548(uint64_t *a1, char *cStr)
{
  v4 = a1[76];
  if (v4)
  {
    CFRelease(v4);
    a1[76] = 0;
  }

  a1[76] = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  v5 = *a1;

  return sub_5AAC0(v5, 1651795822);
}

void sub_305C8(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CFBooleanGetTypeID())
  {
    v5 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      Value = CFBooleanGetValue(cf);
      v7 = "YES";
      if (!Value)
      {
        v7 = "NO";
      }

      v8 = 138412546;
      v9 = a1;
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Feature: %@ : Support %s", &v8, 0x16u);
    }
  }
}

void sub_306D0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (*(a1 + 296) == -1.0 || !CFArrayGetCount(*(a1 + 304)))
  {
    [v2 addObject:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", CBUUIDDosimetrySensitivityCharacteristicString)}];
    [v2 addObject:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", CBUUIDDosimetryVolumeCurveCharacteristicString)}];
    *(a1 + 320) = [[BTHearingHealthObject alloc] initWithUUID:*(a1 + 328) productID:*(a1 + 48) vendorID:*(a1 + 56) EURegionBit:*(a1 + 312) audioDevice:*a1 readCharacteristics:v2];
  }
}

void sub_307AC(void *a1, uint64_t a2, char *a3, void *a4)
{
  if (!strcasecmp(a3, "kBTAudioMsgPropertySoundProfile"))
  {
    v9 = qword_D8DF0;

    sub_51C14(v9, a2, a3);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertySupportedServices"))
  {
    v10 = xpc_int64_get_value(a4) != 0;
    v11 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Supported  Mask is %x", &v183, 8u);
    }

    *(a1 + 48) = v10;
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyIncompatibleHidConnected"))
  {
    value = xpc_BOOL_get_value(a4);
    v13 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 216);
      v183 = 67109376;
      *v184 = v15;
      *&v184[4] = 1024;
      *&v184[6] = value;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "HAL received kBTAudioMsgPropertyIncompatibleHidConnected:%u -> %u", &v183, 0xEu);
    }

    if (*(a1 + 216) != value)
    {
      *(a1 + 216) = value;
      if (*a1)
      {
        v16 = *(*a1 + 9096);
        if (v16)
        {
          if (*(v16 + 192) == 1)
          {
            nullsub_88(v14);
          }
        }
      }
    }

    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyName"))
  {
    string_ptr = xpc_string_get_string_ptr(a4);

    sub_2E2A0(a1, string_ptr);
    return;
  }

  if (!strcmp(a3, "kBTAudioMsgPropertyLocalStreamState"))
  {
    *(a1 + 15) = xpc_int64_get_value(a4);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyListenModeSupported"))
  {
    v18 = xpc_int64_get_value(a4);

    sub_2B79C(a1, v18);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyInEarStatus"))
  {
    v19 = xpc_int64_get_value(a4);
    v20 = v19;
    v21 = HIBYTE(v19);
    v22 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109376;
      *v184 = v20;
      *&v184[4] = 1024;
      *&v184[6] = v21;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "In Ear status change received from BTServer: primaryStatus %u, secondaryStatus %u", &v183, 0xEu);
    }

    sub_2C478(a1, v20, v21);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyFixedMicRole"))
  {
    v23 = xpc_int64_get_value(a4);
    v24 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v23;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Fixed mic role received from BTServer, role %u", &v183, 8u);
    }

    sub_2C7A0(a1, v23);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyDOAPSupported"))
  {
    v25 = xpc_BOOL_get_value(a4);

    sub_2D2D8(a1, v25);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyPrimaryBudSide"))
  {
    v26 = xpc_int64_get_value(a4);
    v27 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v26;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Primary bud side received from BTServer, budside %u", &v183, 8u);
    }

    sub_2C5A0(a1, v26);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyInEarDetection"))
  {
    v28 = xpc_BOOL_get_value(a4);
    v29 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v30 = "not supported";
      if (v28)
      {
        v30 = "supported";
      }

      v183 = 136446210;
      *v184 = v30;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "In Ear detection  %{public}s", &v183, 0xCu);
    }

    sub_2B430(a1, v28);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyExtentedHfpVolumeRange"))
  {
    v31 = xpc_BOOL_get_value(a4);

    sub_2B538(a1, v31);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyInEarEnabled"))
  {
    v32 = xpc_BOOL_get_value(a4);
    v33 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v34 = "disabled";
      if (v32)
      {
        v34 = "enabled";
      }

      v183 = 136446210;
      *v184 = v34;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "In Ear enabled %{public}s", &v183, 0xCu);
    }

    sub_2B684(a1, v32);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyListenMode"))
  {
    v35 = xpc_int64_get_value(a4);

    sub_2C6A0(a1, v35);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyOwnershipHijack"))
  {
    v36 = xpc_BOOL_get_value(a4);
    v37 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v38 = "true";
      if (v36)
      {
        v38 = "false";
      }

      v183 = 136446210;
      *v184 = v38;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Received hijack audio route request ownership will be set to %{public}s", &v183, 0xCu);
    }

    (*(**a1 + 1360))(*a1, !v36, 1);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertySoftwareVolumeSupported"))
  {
    *(a1 + 290) = xpc_BOOL_get_value(a4);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertySupportRemoteVolumeChange"))
  {
    *(a1 + 292) = xpc_BOOL_get_value(a4);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyLiveListenSupported"))
  {
    v39 = xpc_BOOL_get_value(a4);

    sub_2C8A0(a1, v39);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyOneBudANCMode"))
  {
    v40 = xpc_int64_get_value(a4);

    sub_32A7C(a1, v40);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyDosimetrySensitivity"))
  {
    v41 = xpc_int64_get_value(a4);

    sub_2E33C(a1, v41);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyDosimetryVolumeCurve"))
  {
    v42 = _CFXPCCreateCFObjectFromXPCObject();
    v43 = qword_D8508;
    v44 = os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT);
    if (!v42)
    {
      if (!v44)
      {
        return;
      }

      LOWORD(v183) = 0;
      v49 = "Update VolumeCurve with NULL";
      v50 = v43;
      v51 = 2;
      goto LABEL_146;
    }

    if (v44)
    {
      LOWORD(v183) = 0;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Update VolumeCurve", &v183, 2u);
    }

    sub_2E454(a1, v42);
    v45 = v42;
LABEL_137:
    CFRelease(v45);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyEURegionBit"))
  {
    v46 = xpc_int64_get_value(a4);

    sub_2E5F8(a1, v46);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyRemoteStreamState"))
  {
    v47 = xpc_int64_get_value(a4);
    v48 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v47;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Stream state change received from BTServer, state %u", &v183, 8u);
    }

    sub_2DE84(a1, v47);
    return;
  }

  if (!strcmp(a3, "kBTAudioMsgPropertyAllowSCOForTBT"))
  {
    v52 = xpc_BOOL_get_value(a4);

    sub_3036C(a1, v52);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyTipiConnected"))
  {
    v53 = xpc_BOOL_get_value(a4);
    v54 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v55 = "Disconnected";
      if (v53)
      {
        v55 = "Connected";
      }

      v183 = 136446210;
      *v184 = v55;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "Smart Route: Tipi Connection Changed to %{public}s", &v183, 0xCu);
    }

    *(a1 + 364) = v53;
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyWSIsGuestDevice"))
  {
    v56 = xpc_BOOL_get_value(a4);

    sub_32B6C(a1, v56);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertySupportSpatialAudio"))
  {
    v57 = xpc_BOOL_get_value(a4);
    v58 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v59 = "not supported";
      if (v57)
      {
        v59 = "supported";
      }

      v183 = 136315138;
      *v184 = v59;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "Spatial Audio is %s", &v183, 0xCu);
    }

    sub_30088(a1, @"kBluetoothAudioDeviceFeatureHeadTrackedSpatialAudio", v57);
    sub_2D5D8(a1, v57);
    goto LABEL_163;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyAllowSoundProfile"))
  {
    v62 = xpc_BOOL_get_value(a4);
    v63 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v64 = "not allowed";
      if (v62)
      {
        v64 = "allowed";
      }

      v183 = 136315138;
      *v184 = v64;
      _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEFAULT, "Spatial Profile is %s", &v183, 0xCu);
    }

    sub_2D7F8(a1, v62);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertySoundProfileEnhancedTuning"))
  {
    v65 = xpc_BOOL_get_value(a4);
    v66 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v67 = "not Set";
      if (v65)
      {
        v67 = "Set";
      }

      v183 = 136315138;
      *v184 = v67;
      _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEFAULT, "Spatial Profile Enhanced Tuning  %s", &v183, 0xCu);
    }

    sub_2D8F8(a1, v65);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyUnifiedUSBCTransport"))
  {
    v68 = xpc_BOOL_get_value(a4);
    v69 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v70 = "not Set";
      if (v68)
      {
        v70 = "Set";
      }

      v183 = 136315138;
      *v184 = v70;
      _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "Unified USBC Transprt is %s", &v183, 0xCu);
    }

    *(a1 + 241) = v68;
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertySupportHighQualityBiDirectionalAudio"))
  {
    v71 = xpc_BOOL_get_value(a4);
    v72 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v73 = "not supported";
      if (v71)
      {
        v73 = "supported";
      }

      v183 = 136315138;
      *v184 = v73;
      _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "BT High Quality BiDirectional Audio is %s", &v183, 0xCu);
    }

    *(a1 + 237) = v71;
    v74 = @"kBluetoothAudioDeviceFeatureHighQualityBiDirectionalAudio";
    goto LABEL_185;
  }

  if (!strcmp(a3, "kBTAudioMsgPropertyTipiSupported"))
  {
    v75 = xpc_BOOL_get_value(a4);
    *(a1 + 251) = v75;
    v76 = qword_D8508;
    if (!os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v77 = "not Supported";
    if (v75)
    {
      v77 = "Supported";
    }

    v183 = 136315138;
    *v184 = v77;
    v49 = "TiPi Capable update to %s";
LABEL_190:
    v50 = v76;
    v51 = 12;
    goto LABEL_146;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertySupportSoundProfile"))
  {
    v78 = xpc_BOOL_get_value(a4);
    sub_30088(a1, @"kBluetoothAudioDeviceFeatureCustomHRTF", v78);
    sub_2D4E8(a1, v78);
LABEL_208:
    v87 = *a1;

    sub_5AAC0(v87, 1651798886);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyAdaptiveVolume"))
  {
    v71 = xpc_BOOL_get_value(a4);
    v79 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v80 = "not supported";
      if (v71)
      {
        v80 = "supported";
      }

      v183 = 136315138;
      *v184 = v80;
      _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: feature %s", &v183, 0xCu);
    }

    *(a1 + 228) = v71 & _os_feature_enabled_impl();
    v74 = @"kBluetoothAudioDeviceFeatureAdaptiveVolume";
    goto LABEL_185;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyAdaptiveVolumeMode"))
  {
    v81 = xpc_int64_get_value(a4);
    v82 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      if (v81 == 1)
      {
        v83 = "enabled";
      }

      else
      {
        v83 = "disabled";
      }

      v183 = 136315138;
      *v184 = v83;
      _os_log_impl(&dword_0, v82, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Configuration %s", &v183, 0xCu);
    }

    *(a1 + 229) = v81;
    v84 = +[BTAudioAVNotificationMonitor sharedInstance];
    if (v84)
    {
      [(BTAudioAVNotificationMonitor *)v84 personalizedVolumeEnabled:v81 == 1];
    }

    v60 = *a1;
    v61 = 1633973868;
    goto LABEL_164;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyMuteControl"))
  {
    v85 = xpc_BOOL_get_value(a4);
    v86 = @"kBluetoothAudioDeviceFeatureMuteControl";
LABEL_207:
    sub_30088(a1, v86, v85);
    goto LABEL_208;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyConversationDetect"))
  {
    v85 = xpc_BOOL_get_value(a4);
    v86 = @"kBluetoothAudioDeviceFeatureConversationDetect";
    goto LABEL_207;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyAllowSpatialAudio"))
  {
    v88 = xpc_BOOL_get_value(a4);
    v89 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v90 = "not Allowed";
      if (v88)
      {
        v90 = "Allowed";
      }

      v183 = 136315138;
      *v184 = v90;
      _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEFAULT, "Spatial Audio is %s", &v183, 0xCu);
    }

    sub_2D9F8(a1, v88);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyForegroundApp"))
  {
    if (xpc_get_type(a4) == &_xpc_type_string)
    {
      goto LABEL_220;
    }

    v91 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
    {
      sub_7BC08(v91, v92, v93, v94, v95, v96, v97, v98);
    }

    if (!sub_70820())
    {
LABEL_220:
      v99 = a1[17];
      if (v99)
      {
        CFRelease(v99);
      }

      v100 = _CFXPCCreateCFObjectFromXPCObject();
      a1[17] = v100;
      v76 = qword_D8508;
      if (!v100)
      {
        if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
        {
          sub_7BC80();
        }

        return;
      }

      v101 = v100;
      if (!os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v183 = 138412290;
      *v184 = v101;
      v49 = "BTHAL got kBTAudioMsgPropertyForegroundApp: %@";
      goto LABEL_190;
    }

    goto LABEL_349;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertySpatialPerAppModeMap"))
  {
    if (xpc_get_type(a4) != &_xpc_type_dictionary)
    {
      v102 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7BB5C(v102, v103, v104, v105, v106, v107, v108, v109);
      }

      if (sub_70820())
      {
        goto LABEL_349;
      }
    }

    v110 = _CFXPCCreateCFObjectFromXPCObject();
    if (!v110)
    {
      return;
    }

    v111 = v110;
    v112 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = CFDictionaryGetCount(v111);
      _os_log_impl(&dword_0, v112, OS_LOG_TYPE_DEFAULT, "Per App Spatial information : %d", &v183, 8u);
    }

    sub_30140(a1, v111);
LABEL_241:
    v45 = v111;
    goto LABEL_137;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyAdaptiveVolumeMap"))
  {
    if (xpc_get_type(a4) != &_xpc_type_dictionary)
    {
      v113 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7BB5C(v113, v114, v115, v116, v117, v118, v119, v120);
      }

      if (sub_70820())
      {
        goto LABEL_349;
      }
    }

    v121 = _CFXPCCreateCFObjectFromXPCObject();
    if (!v121)
    {
      return;
    }

    v111 = v121;
    v122 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = CFDictionaryGetCount(v111);
      _os_log_impl(&dword_0, v122, OS_LOG_TYPE_DEFAULT, "Adaptive Volume information: %d", &v183, 8u);
    }

    sub_30228(a1, v111);
    goto LABEL_241;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyDigitalCrownSupported"))
  {
    v71 = xpc_BOOL_get_value(a4);
    v123 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v124 = "not supported";
      if (v71)
      {
        v124 = "supported";
      }

      v183 = 136315138;
      *v184 = v124;
      _os_log_impl(&dword_0, v123, OS_LOG_TYPE_DEFAULT, "Digital Crown is %s", &v183, 0xCu);
    }

    *(a1 + 217) = v71;
    v74 = @"kBluetoothAudioDeviceFeatureDigitalCrown";
    goto LABEL_185;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyBudSideLoudnessEqControlSupported"))
  {
    v71 = xpc_BOOL_get_value(a4);
    v125 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v126 = "not supported";
      if (v71)
      {
        v126 = "supported";
      }

      v183 = 136315138;
      *v184 = v126;
      _os_log_impl(&dword_0, v125, OS_LOG_TYPE_DEFAULT, "Bud side loudness EQ control is %s", &v183, 0xCu);
    }

    v74 = @"kBluetoothAudioDeviceFeatureBudSideLoudnessEqControlSupport";
    goto LABEL_185;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyBudSideLoudnessEqEnabled"))
  {
    v127 = xpc_BOOL_get_value(a4);
    v128 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v129 = "disabled";
      if (v127)
      {
        v129 = "enabled";
      }

      v183 = 136315138;
      *v184 = v129;
      _os_log_impl(&dword_0, v128, OS_LOG_TYPE_DEFAULT, "Bud Side Loudness EQ is %s", &v183, 0xCu);
    }

    *(a1 + 218) = v127;
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyUWBSStereoSupport"))
  {
    v71 = xpc_BOOL_get_value(a4);
    v130 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v131 = "not supported";
      if (v71)
      {
        v131 = "supported";
      }

      v183 = 136315138;
      *v184 = v131;
      _os_log_impl(&dword_0, v130, OS_LOG_TYPE_DEFAULT, "Stereo HFP is %s", &v183, 0xCu);
    }

    v74 = @"kBluetoothAudioDeviceFeatureStereoHfpSupport";
    goto LABEL_185;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyUserSelectedDeviceType"))
  {
    v132 = xpc_int64_get_value(a4);
    v133 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v132;
      _os_log_impl(&dword_0, v133, OS_LOG_TYPE_DEFAULT, "User Device Type Update: %d", &v183, 8u);
    }

    sub_2D1D8(a1, v132);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyAccessHeadTrack"))
  {
    v134 = xpc_BOOL_get_value(a4);
    *(a1 + 128) = v134;
    v135 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v134;
      _os_log_impl(&dword_0, v135, OS_LOG_TYPE_DEFAULT, "BTHAL got kBTAudioMsgPropertyAccessHeadTrack:%u", &v183, 8u);
    }

    sub_5AAC0(*a1, 1752457571);
    sub_5AAC0(*a1, 1752462196);
    sub_5AAC0(*a1, 1752457590);
    sub_5AAC0(*a1, 1936747876);
    sub_5AAC0(*a1, 1936745318);
    sub_5AAC0(*a1, 1936744822);
    sub_5AAC0(*a1, 1936749430);
    v60 = *a1;
    v61 = 1936746095;
    goto LABEL_164;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertySpatialAudioAppBasedMode"))
  {
    if (xpc_get_type(a4) == &_xpc_type_dictionary)
    {
      goto LABEL_274;
    }

    v136 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
    {
      sub_7BB5C(v136, v137, v138, v139, v140, v141, v142, v143);
    }

    if (!sub_70820())
    {
LABEL_274:
      v144 = _CFXPCCreateCFObjectFromXPCObject();
      v145 = qword_D8508;
      if (!v144)
      {
        if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
        {
          sub_7BBD4();
        }

        return;
      }

      v111 = v144;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v183) = 0;
        _os_log_impl(&dword_0, v145, OS_LOG_TYPE_DEFAULT, "kBTAudioMsgPropertySpatialAudioAppBasedMode get Dict", &v183, 2u);
      }

      v146 = CFDictionaryGetValue(v111, @"kBTAudioMsgPropertySpatialMode");
      v147 = CFDictionaryGetValue(v111, @"kBTAudioMsgPropertySpatialBundleID");
      v148 = CFDictionaryGetValue(v111, @"kBTAudioMsgPropertyHeadTrack");
      if (v147 && v146 && v148)
      {
        v183 = 0;
        v149 = v148 == kCFBooleanTrue;
        CFNumberGetValue(v146, kCFNumberIntType, &v183);
        sub_6C038(*a1, v147, v183, v149);
        sub_301B8(a1);
      }

      goto LABEL_241;
    }

LABEL_349:
    abort();
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyAllowAutoRoute"))
  {
    v150 = xpc_BOOL_get_value(a4);
    v151 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v150;
      _os_log_impl(&dword_0, v151, OS_LOG_TYPE_DEFAULT, "Updated Auto Route Support : %d", &v183, 8u);
    }

    sub_2C9B8(a1, v150);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyIsHidden"))
  {
    v152 = xpc_BOOL_get_value(a4);
    v153 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v152;
      _os_log_impl(&dword_0, v153, OS_LOG_TYPE_DEFAULT, "Updated AudioRouteHidden : %d", &v183, 8u);
    }

    sub_2D0D8(a1, v152);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertySiriUseDeviceMic"))
  {
    v71 = xpc_BOOL_get_value(a4);
    v154 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v71;
      _os_log_impl(&dword_0, v154, OS_LOG_TYPE_DEFAULT, "Updated Siri Use device Mic : %d", &v183, 8u);
    }

    v74 = @"kBluetoothAudioDeviceFeatureSiriUseDeviceMic";
    goto LABEL_185;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyFindMyPlayBack"))
  {
    v71 = xpc_BOOL_get_value(a4);
    v155 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v71;
      _os_log_impl(&dword_0, v155, OS_LOG_TYPE_DEFAULT, "Updated Find My Playback : %d", &v183, 8u);
    }

    v74 = @"kBluetoothAudioDeviceFeatureFindMyPlayBack";
    goto LABEL_185;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyUntrackedSpatial"))
  {
    v71 = xpc_BOOL_get_value(a4);
    v156 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v71;
      _os_log_impl(&dword_0, v156, OS_LOG_TYPE_DEFAULT, "Updated Automatic Non HeadTracked Spatial : %d", &v183, 8u);
    }

    v74 = @"kBluetoothAudioDeviceFeatureAutomaticNonHeadTrackedSpatialAudio";
LABEL_185:
    sub_30088(a1, v74, v71);
LABEL_163:
    v60 = *a1;
    v61 = 1651798886;
LABEL_164:
    sub_5AAC0(v60, v61);
    return;
  }

  if (!strcasecmp(a3, "kBTHostedDSPOffloadSupport"))
  {
    v157 = xpc_BOOL_get_value(a4);
    v158 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v157;
      _os_log_impl(&dword_0, v158, OS_LOG_TYPE_DEFAULT, "Updated Hosted DSP Offload Support Property: %d", &v183, 8u);
    }

    sub_30088(a1, @"kBluetoothAudioDeviceFeatureHostedDSPOffload", v157);
    sub_5AAC0(*a1, 1651798886);
    sub_2CAC0(a1, v157);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyIsGenuineAirPods"))
  {
    v159 = xpc_BOOL_get_value(a4);
    v160 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v161 = "non-genuine";
      if (v159)
      {
        v161 = "genuine";
      }

      v183 = 136446210;
      *v184 = v161;
      _os_log_impl(&dword_0, v160, OS_LOG_TYPE_DEFAULT, "Is Genuine AirPods : %{public}s", &v183, 0xCu);
    }

    sub_30430(a1, v159);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyGenericName"))
  {
    v162 = xpc_string_get_string_ptr(a4);
    if (!v162)
    {
      return;
    }

    v163 = v162;
    sub_30548(a1, v162);
    v76 = qword_D8508;
    if (!os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v183 = 136446210;
    *v184 = v163;
    v49 = "Device Generic Name : %{public}s";
    goto LABEL_190;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyTransportType"))
  {
    v164 = xpc_int64_get_value(a4);
    *(a1 + 219) = v164;
    v165 = qword_D8508;
    if (!os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v183 = 67109120;
    *v184 = v164;
    v49 = "Transport type update: %d";
    v50 = v165;
    v51 = 8;
LABEL_146:
    _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, v49, &v183, v51);
    return;
  }

  if (!strcasecmp(a3, "kBTAudioMsgPropertyLowLatencyGameMode"))
  {
    if (_os_feature_enabled_impl())
    {
      v166 = xpc_BOOL_get_value(a4);
      v167 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 221))
        {
          v168 = "running";
        }

        else
        {
          v168 = "not running";
        }

        if (v166)
        {
          v169 = "running";
        }

        else
        {
          v169 = "not running";
        }

        v170 = *(*a1 + 9096);
        if (v170)
        {
          if (v170[192] == 1)
          {
            LODWORD(v170) = (*(*v170 + 1024))(v170);
          }

          else
          {
            LODWORD(v170) = 0;
          }
        }

        v183 = 136315650;
        *v184 = v168;
        *&v184[8] = 2080;
        v185 = v169;
        v186 = 1024;
        v187 = v170;
        _os_log_impl(&dword_0, v167, OS_LOG_TYPE_DEFAULT, "Low Latency Game state: %s->%s, HFP IO: %d", &v183, 0x1Cu);
      }

      sub_6CEF4(*a1, v166);
    }
  }

  else if (!strcasecmp(a3, "kBTAudioMsgPropertyPersonalizedVolumeDRCInfo"))
  {
    v171 = xpc_BOOL_get_value(a4);
    v172 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v171;
      _os_log_impl(&dword_0, v172, OS_LOG_TYPE_DEFAULT, "Updated Personalized Volume DRC enablement to: %d", &v183, 8u);
    }

    sub_2CD5C(a1, v171);
  }

  else if (!strcasecmp(a3, "kBTAudioMsgPropertyPersonalizedVolumeDRCCoef"))
  {
    v173 = xpc_int64_get_value(a4);
    v174 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v183 = 67109120;
      *v184 = v173;
      _os_log_impl(&dword_0, v174, OS_LOG_TYPE_DEFAULT, "Updated Personalized Volume DRC Coef to: %d", &v183, 8u);
    }

    sub_2CE28(a1, v173);
  }

  else
  {
    if (!strcasecmp(a3, "kBTAudioMsgStudioMicSupported"))
    {
      if (!_os_feature_enabled_impl())
      {
        return;
      }

      v175 = xpc_BOOL_get_value(a4);
      v176 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        v177 = "not supported";
        if (v175)
        {
          v177 = "supported";
        }

        v183 = 136315138;
        *v184 = v177;
        _os_log_impl(&dword_0, v176, OS_LOG_TYPE_DEFAULT, "Updated StudioMic, begin to %s AMPAudioInput", &v183, 0xCu);
      }

      sub_30088(a1, @"kBluetoothAudioDeviceFeatureStudioMicInput", v175);
      if (v175)
      {
        sub_6EEA0(*a1, 1952542064);
      }

      goto LABEL_163;
    }

    if (strcasecmp(a3, "kBTAudioMsgAccessoryEnhancedDSPEQSupported"))
    {
      if (strcasecmp(a3, "kBTAudioMsgFarfieldMicSupported"))
      {
        if (a2)
        {
          v8 = *(*a2 + 264);

          v8(a2, a3, a4);
        }

        return;
      }

      if (!_os_feature_enabled_impl())
      {
        return;
      }

      v71 = xpc_BOOL_get_value(a4);
      v181 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        v182 = "not supported";
        if (v71)
        {
          v182 = "supported";
        }

        v183 = 136315138;
        *v184 = v182;
        _os_log_impl(&dword_0, v181, OS_LOG_TYPE_DEFAULT, "Updated FarfieldMic, begin to %s FarfieldInput", &v183, 0xCu);
      }

      v74 = @"kBluetoothAudioDeviceFeatureFarfieldInput";
      goto LABEL_185;
    }

    v178 = xpc_BOOL_get_value(a4);
    v179 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v180 = "not supported";
      if (v178)
      {
        v180 = "supported";
      }

      v183 = 136315138;
      *v184 = v180;
      _os_log_impl(&dword_0, v179, OS_LOG_TYPE_DEFAULT, "Updated EnhancedAccessoryDSPEQ, begin to %s", &v183, 0xCu);
    }

    sub_2CBC0(a1, v178);
  }
}

void sub_32A7C(_BYTE *a1, int a2)
{
  if (a1[295] != a2)
  {
    a1[295] = a2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(**a1 + 16))();
      v6[0] = 67109376;
      v6[1] = a2;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "mOneBudANCMode set to %d for mAudioObjectID %d", v6, 0xEu);
    }
  }
}

void sub_32B6C(uint64_t a1, int a2)
{
  if (*(a1 + 345) != a2)
  {
    *(a1 + 345) = a2;
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "is not guest";
      if (a2)
      {
        v4 = "is guest";
      }

      v5 = 136315138;
      v6 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Wireless Splitter From BT device %s", &v5, 0xCu);
    }
  }
}

void sub_32C34(uint64_t *a1, int a2)
{
  if (a2)
  {
    sub_6EEA0(*a1, 1952542064);
  }
}

uint64_t sub_32C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return (*(*a2 + 264))(a2, a3, a4);
  }

  return result;
}

void sub_32C8C(uint64_t a1, char a2)
{
  if (a2)
  {
    if (_os_feature_enabled_impl())
    {
      v3 = 2;
LABEL_6:
      *(a1 + 224) = v3;
      goto LABEL_8;
    }

    if (_os_feature_enabled_impl())
    {
      v3 = 1;
      goto LABEL_6;
    }
  }

  v3 = 0;
  *(a1 + 224) = 0;
LABEL_8:
  v4 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    sub_2088(__p, off_AF9C0[v3]);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Advanced Handsfree Audio Support : %s", buf, 0xCu);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

_BYTE *sub_32DBC@<X0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1 > 2)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_AF9C0[a1];
  }

  return sub_2088(a2, v2);
}

void sub_32DEC(uint64_t a1, int a2)
{
  if (_os_feature_enabled_impl())
  {
    *(a1 + 220) = a2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Low Latency Game Support set to %d", v5, 8u);
    }
  }
}

void sub_32ED0(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = *(a1 + 392);
  if (v6)
  {
    v8 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v29) = [v6 count];
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: dict count %u", buf, 8u);
    }

    v9 = objc_alloc_init(NSMutableString);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [v6 allKeys];
    v10 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          [objc_msgSend(v6 valueForKey:{v14), "floatValue"}];
          [v9 appendFormat:@"%@ : %f\n", v14, v15];
          v16 = a2;
          if (([v14 isEqualToString:@"kCBMsgArgParamAutoVolumeMediaTarget"] & 1) == 0)
          {
            v16 = a3;
            if (([v14 isEqualToString:@"kCBMsgArgParamAutoVolumeTelephonyTarget"] & 1) == 0)
            {
              v16 = a4;
              if (([v14 isEqualToString:@"kCBMsgArgParamAutoVolumeVoiceTarget"] & 1) == 0)
              {
                v16 = a5;
                if (([v14 isEqualToString:@"kCBMsgArgParamAutoVolumeRampUpRate"] & 1) == 0)
                {
                  v16 = a6;
                  if (![v14 isEqualToString:@"kCBMsgArgParamAutoVolumeRampDownRate"])
                  {
                    continue;
                  }
                }
              }
            }
          }

          [objc_msgSend(v6 valueForKey:{v14), "floatValue"}];
          *v16 = v17;
        }

        v11 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v11);
    }

    v18 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "GetAutoVolumeTargets: %@", buf, 0xCu);
    }
  }
}

void sub_3314C(int a1, CFTypeRef cf)
{
  v11 = 0;
  valuePtr = 0;
  v10 = 0;
  v3 = CFGetTypeID(cf);
  if (v3 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(cf, @"kCBMsgArgParamAutoVolumeMediaTarget");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 2);
    }

    else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
    {
      sub_7BCB4();
    }

    v5 = CFDictionaryGetValue(cf, @"kCBMsgArgParamAutoVolumeTelephonyTarget");
    if (v5)
    {
      CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
    }

    else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
    {
      sub_7BCE8();
    }

    v6 = CFDictionaryGetValue(cf, @"kCBMsgArgParamAutoVolumeVoiceTarget");
    if (v6)
    {
      CFNumberGetValue(v6, kCFNumberSInt32Type, &v11 + 2);
    }

    else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
    {
      sub_7BD1C();
    }

    v7 = CFDictionaryGetValue(cf, @"kCBMsgArgParamAutoVolumeRampUpRate");
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberSInt32Type, &v11);
    }

    else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
    {
      sub_7BD50();
    }

    v8 = CFDictionaryGetValue(cf, @"kCBMsgArgParamAutoVolumeRampDownRate");
    if (v8)
    {
      CFNumberGetValue(v8, kCFNumberSInt32Type, &v10);
    }

    else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
    {
      sub_7BD84();
    }

    v9 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      v14 = HIWORD(valuePtr);
      v15 = 1024;
      v16 = valuePtr;
      v17 = 1024;
      v18 = HIWORD(v11);
      v19 = 1024;
      v20 = v11;
      v21 = 1024;
      v22 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Auto Volume mode: mediaTarget %u, telephonyTarget %u, voiceTarget %u, rampUpRate %u, rampDownRate %u", buf, 0x20u);
    }
  }
}

uint64_t sub_333A0(uint64_t *a1, float a2, float a3)
{
  v6 = *a1;
  v7 = *(*a1 + 9088);
  v8 = 0.0;
  if (v7 && v7[192] == 1 && (v8 = (*(*v7 + 952))(v7), v6 = *a1, v8 != a2))
  {
    v10 = v8 == 0.0 && a2 != 0.0;
    v12 = v8 != 0.0 && a2 == 0.0;
    v13 = v10 || v12;
    v14 = *(v6 + 9088);
    if (*(v14 + 192))
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    (*(*v15 + 488))(v15, 0, a2);
    v6 = *a1;
  }

  else
  {
    v13 = 0;
  }

  v16 = *(v6 + 9096);
  if (v16 && v16[192] == 1)
  {
    v17 = (*(*v16 + 952))(v16);
    if (v17 == a3)
    {
      sub_42134();
      goto LABEL_54;
    }

    v8 = v17;
    v19 = v17 == 0.0 && a3 != 0.0;
    v21 = v17 != 0.0 && a3 == 0.0;
    v13 = v19 || v21;
    if (*(*(*a1 + 9096) + 192))
    {
      v22 = *(*a1 + 9096);
    }

    else
    {
      v22 = 0;
    }

    (*(*v22 + 488))(v22, 0, a3);
  }

  v23 = sub_42134();
  if (v13 && v23)
  {
    v24 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 134218240;
      *&__p[4] = v8;
      *&__p[12] = 2048;
      *&__p[14] = a2;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Updating Mute changed %f->%f", __p, 0x16u);
    }

    sub_6806C(*a1, 1836414053);
    v25 = [NSString alloc];
    if (*(a1 + 31) < 0)
    {
      sub_9780(__p, a1[1], a1[2]);
    }

    else
    {
      *__p = *(a1 + 1);
      *&__p[16] = a1[3];
    }

    if (__p[23] >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = *__p;
    }

    v27 = [v25 initWithUTF8String:{v26, *__p, *&__p[8], *&__p[16]}];
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_680C0(*a1, v27, 0);
  }

LABEL_54:
  result = *(*a1 + 9136);
  if (result)
  {
    return (*(*result + 1168))(result);
  }

  return result;
}

void sub_336BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_336E0(uint64_t a1, CFTypeRef cf)
{
  valuePtr = 1;
  v4 = CFGetTypeID(cf);
  if (v4 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(cf, @"kCBMsgArgParamSpatialMode");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }

    else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
    {
      sub_7BDB8();
    }

    v6 = CFDictionaryGetValue(cf, @"kCBMsgArgParamSpatialHeadTracking");
    if (v6)
    {
      v7 = CFBooleanGetValue(v6) != 0;
    }

    else
    {
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
      {
        sub_7BDEC();
      }

      v7 = 1;
    }

    v8 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v11 = a1;
      v12 = 1024;
      v13 = valuePtr;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Spatial Audio Mode :BundleID %@, spatialMode %u, headTrack %u", buf, 0x18u);
    }
  }
}

void sub_33850(uint64_t a1, const __CFString *a2, int a3, int a4)
{
  valuePtr = a3;
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  Copy = CFStringCreateCopy(kCFAllocatorDefault, a2);
  v9 = &kCFBooleanTrue;
  if (!a4)
  {
    v9 = &kCFBooleanFalse;
  }

  v10 = *v9;
  v11 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = valuePtr;
    v17 = 1024;
    v18 = a4;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Update Per App Config BundleID = %@  Mode = %d Head Track = %d", buf, 0x18u);
  }

  *buf = off_AF998;
  values[0] = v7;
  values[1] = v10;
  v12 = CFDictionaryCreate(kCFAllocatorDefault, buf, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v13 = *(a1 + 384);
  if (v13)
  {
    CFDictionarySetValue(v13, Copy, v12);
    CFDictionaryApplyFunction(*(a1 + 384), sub_336E0, 0);
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_7BE20();
  if (v7)
  {
LABEL_10:
    CFRelease(v7);
  }

LABEL_11:
  if (v12)
  {
    CFRelease(v12);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }
}

_BYTE *sub_33A3C(uint64_t a1, void *a2, _DWORD *a3, BOOL *a4)
{
  *a3 = 1;
  *a4 = 1;
  *a4 = *(a1 + 128);
  if (![a2 caseInsensitiveCompare:@"com.apple.facetime"])
  {
    *a3 = 2;
    *a4 = 0;
    *a4 = _os_feature_enabled_impl();
  }

  v8 = *(a1 + 384);
  if (v8)
  {
    if (CFDictionaryContainsKey(v8, a2))
    {
      Value = CFDictionaryGetValue(*(a1 + 384), a2);
      v10 = CFGetTypeID(Value);
      if (v10 == CFDictionaryGetTypeID())
      {
        v11 = CFDictionaryGetValue(Value, @"kCBMsgArgParamSpatialMode");
        if (v11)
        {
          CFNumberGetValue(v11, kCFNumberSInt32Type, a3);
        }

        else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
        {
          sub_7BE54();
        }

        v12 = CFDictionaryGetValue(Value, @"kCBMsgArgParamSpatialHeadTracking");
        if (v12)
        {
          v13 = CFBooleanGetValue(v12) != 0;
          *a4 = v13;
          if (!*(a1 + 128))
          {
            v13 = 0;
          }

          *a4 = v13;
        }

        else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
        {
          sub_7BE88();
        }
      }
    }
  }

  return sub_33BB4(a1, a2, a3, a4);
}

_BYTE *sub_33BB4(_BYTE *result, void *a2, _DWORD *a3, _BYTE *a4)
{
  v7 = result;
  if (((result[237] & 1) != 0 || (result = _os_feature_enabled_impl(), result)) && v7[230] == 1)
  {
    v8 = *(*v7 + 9288);
  }

  else
  {
    v8 = *(*v7 + 9288);
    if (v8 == 1953719151)
    {
LABEL_9:
      *a4 = 0;
      goto LABEL_10;
    }
  }

  if (v8 == 1952538980 || v8 == 1952539500 && v7[288] == 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v7[129] != 1)
  {
    goto LABEL_14;
  }

  if (!a2 || (result = [a2 caseInsensitiveCompare:@"com.apple.facetime"]) != 0)
  {
    *a3 = 0;
    *a4 = 0;
LABEL_14:
    if (v7[344] == 1)
    {
      *a4 = 0;
    }
  }

  return result;
}

uint64_t sub_33CA4(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_70AF4(v2, a1 + 424);
  sub_70BD4(v2);
  return sub_70C40(v2);
}

uint64_t sub_33D00(void *a1, uint64_t a2, unsigned int a3)
{
  v16[1] = 0;
  v17 = a2;
  v18 = a3;
  v16[0] = 0;
  sub_70AF4(v16, (a1 + 53));
  v6 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = HIBYTE(a2);
    v15[1] = BYTE6(a2);
    v15[2] = BYTE5(a2);
    v15[3] = BYTE4(a2);
    v15[4] = 0;
    *buf = 67110402;
    *&buf[4] = a2;
    v20 = 1024;
    v21 = a3;
    v22 = 1024;
    v23 = BYTE1(a3);
    v24 = 2082;
    v25 = v15;
    v26 = 1024;
    v27 = BYTE2(a3);
    v28 = 1024;
    v29 = HIBYTE(a3);
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[ %d ]Update Spatial Audio Stream, Status = %d Channels = %d Format ID = %{public}s Available Content Type %d Is Spatializable = %d", buf, 0x2Au);
  }

  v7 = a1[51];
  if (v7)
  {
    v8 = a1 + 51;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v8 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v8 != a1 + 51 && *(v8 + 8) <= a2)
    {
      goto LABEL_14;
    }
  }

  v9 = qword_D8508;
  v10 = os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v10)
    {
      *buf = 67109376;
      *&buf[4] = a2;
      v20 = 1024;
      v21 = a3;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[ %d ] Create Audio Client with State = %d", buf, 0xEu);
    }

    v11 = [SpatialAudioClient alloc];
    v12 = [(SpatialAudioClient *)v11 initWithPid:v17 deviceID:(*(**a1 + 16))()];
    *buf = &v17;
    sub_35E38((a1 + 50), &v17)[5] = v12;
LABEL_14:
    *buf = &v17;
    v13 = sub_35E38((a1 + 50), &v17);
    [v13[5] UpdateSpatialAudioQueueInfo:{v17, v18}];
    *buf = &v17;
    if ([sub_35E38((a1 + 50) &v17)[5]])
    {
      sub_29BAC(a1, v17);
    }

    sub_70BD4(v16);
    sub_29D3C(a1, 1);
    return sub_70C40(v16);
  }

  if (v10)
  {
    *buf = 67109376;
    *&buf[4] = a2;
    v20 = 1024;
    v21 = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[ %d ] Audio Client already released new State = %d", buf, 0xEu);
  }

  return sub_70C40(v16);
}

uint64_t sub_3403C(uint64_t a1, int a2, int a3)
{
  v34 = a2;
  v33[0] = 0;
  v33[1] = 0;
  sub_70AF4(v33, a1 + 424);
  v6 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    v36 = 1024;
    v37 = a3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[ %d ] Update Spatial client From Spatial Enable, State = %d", buf, 0xEu);
  }

  if ((a3 & 1) == 0)
  {
    v7 = a1 + 408;
    v8 = *(a1 + 408);
    if ((a3 & 4) != 0)
    {
      if (!v8)
      {
        goto LABEL_35;
      }

      v18 = a1 + 408;
      do
      {
        if (*(v8 + 32) >= v34)
        {
          v18 = v8;
        }

        v8 = *(v8 + 8 * (*(v8 + 32) < v34));
      }

      while (v8);
      if (v18 == v7 || v34 < *(v18 + 32))
      {
LABEL_35:
        v19 = qword_D8508;
        if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v34;
          v36 = 1024;
          v37 = a3;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[ %d ] Create Stream Non UI info to List, State = %d", buf, 0xEu);
        }

        v20 = [SpatialAudioClient alloc];
        v21 = [(SpatialAudioClient *)v20 initWithPid:v34 deviceID:(*(**a1 + 16))()];
        *buf = &v34;
        sub_35E38(a1 + 400, &v34)[5] = v21;
      }

      *buf = &v34;
      [sub_35E38(a1 + 400 &v34)[5]];
      v22 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v34;
        v36 = 1024;
        v37 = a3;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[ %d ] Update State [ Non - UI] information State = %d", buf, 0xEu);
      }
    }

    else if (v8)
    {
      v9 = a1 + 408;
      do
      {
        if (*(v8 + 32) >= v34)
        {
          v9 = v8;
        }

        v8 = *(v8 + 8 * (*(v8 + 32) < v34));
      }

      while (v8);
      if (v9 != v7 && v34 >= *(v9 + 32))
      {
        *buf = &v34;
        [sub_35E38(a1 + 400 &v34)[5]];
        *buf = &v34;
        v10 = [sub_35E38(a1 + 400 &v34)[5]];
        *buf = &v34;
        if (![sub_35E38(a1 + 400 &v34)[5]])
        {
          goto LABEL_41;
        }

        *buf = &v34;
        [sub_35E38(a1 + 400 &v34)[5]];
        sub_29BAC(a1, v34);
        v11 = qword_D8508;
        if (!os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        *buf = 67109376;
        *&buf[4] = v34;
        v36 = 1024;
        v37 = a3;
        v12 = "[ %d ] Clear [ Non - UI] information State = %d";
        goto LABEL_27;
      }
    }

    v10 = 0;
    goto LABEL_41;
  }

  v13 = *(a1 + 408);
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = a1 + 408;
  do
  {
    if (*(v13 + 32) >= v34)
    {
      v14 = v13;
    }

    v13 = *(v13 + 8 * (*(v13 + 32) < v34));
  }

  while (v13);
  if (v14 == a1 + 408 || v34 < *(v14 + 32))
  {
LABEL_22:
    v15 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v34;
      v36 = 1024;
      v37 = a3;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[ %d ] Create Stream info to List, State = %d", buf, 0xEu);
    }

    v16 = [SpatialAudioClient alloc];
    v17 = [(SpatialAudioClient *)v16 initWithPid:v34 deviceID:(*(**a1 + 16))()];
    *buf = &v34;
    sub_35E38(a1 + 400, &v34)[5] = v17;
  }

  *buf = &v34;
  [sub_35E38(a1 + 400 &v34)[5]];
  *buf = &v34;
  v10 = [sub_35E38(a1 + 400 &v34)[5]];
  v11 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v34;
    v36 = 1024;
    v37 = a3;
    v12 = "[ %d ] Update State information State = %d";
LABEL_27:
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xEu);
  }

LABEL_41:
  v23 = (a1 + 408);
  v24 = *(a1 + 408);
  if (v24)
  {
    v25 = a1 + 408;
    do
    {
      if (*(v24 + 32) >= v34)
      {
        v25 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < v34));
    }

    while (v24);
    if (v25 != v23 && v34 >= *(v25 + 32))
    {
      *buf = &v34;
      if ([sub_35E38(a1 + 400 &v34)[5]])
      {
LABEL_49:
        v26 = 1;
        goto LABEL_61;
      }
    }
  }

  v27 = *(a1 + 400);
  if (v27 != v23)
  {
    v26 = 0;
    while (![v27[5] spatialRefCount])
    {
      v28 = v27[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v27[2];
          v30 = *v29 == v27;
          v27 = v29;
        }

        while (!v30);
      }

      v27 = v29;
      if (v29 == v23)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_49;
  }

  v26 = 0;
LABEL_61:
  sub_70BD4(v33);
  *(a1 + 232) = v26;
  v31 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = v34;
    v36 = 1024;
    v37 = v26;
    v38 = 1024;
    v39 = v10;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "[ %d ]Spatial Enable: Updated Spatial Enable %d Ref Count %d ", buf, 0x14u);
  }

  return sub_70C40(v33);
}

void sub_34710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

void sub_34738(uint64_t a1, int a2)
{
  if (!sub_42134())
  {
    return;
  }

  *(a1 + 252) = 0;
  if (a2 && *(a1 + 377) && *(a1 + 376))
  {
    v27 = 0;
    v26 = 0;
    if (_os_feature_enabled_impl())
    {
      v4 = 0;
    }

    else
    {
      v4 = @"global";
    }

    sub_33A3C(a1, v4, &v27, &v26);
    v5 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 129);
      v7 = *(a1 + 377);
      v8 = *(a1 + 378);
      v9 = *(a1 + 376);
      *buf = 138414082;
      *v29 = v4;
      *&v29[8] = 1024;
      *v30 = 1;
      *&v30[4] = 1024;
      *&v30[6] = v6;
      *&v30[10] = 1024;
      *&v30[12] = v7;
      *&v30[16] = 1024;
      *&v30[18] = v8;
      *&v30[22] = 1024;
      *&v30[24] = v9;
      *&v30[28] = 1024;
      *&v30[30] = v27;
      *&v30[34] = 1024;
      *&v30[36] = v26;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[ %@ ] UpdateSpatialAudioCCStates Streaming = %d screensharingState %d Channels = %d BestAvailableContentType = %d Spatial Status = %d Mode = %d Head Tracking = %d", buf, 0x36u);
    }

    v10 = 1;
    *(a1 + 252) = 1;
    v11 = *(a1 + 376);
    if (v11 > 3)
    {
      if (v11 == 4)
      {
LABEL_25:
        sub_301B8(a1);
        v12 = 1;
        *(a1 + 255) = 1;
LABEL_26:
        if (v27 <= 1)
        {
          if (!v27)
          {
            goto LABEL_53;
          }

          if (v27 != 1)
          {
            goto LABEL_56;
          }

LABEL_42:
          v17 = !v10;
          if (v11 - 1 > 1)
          {
            v17 = 1;
          }

          if ((v17 & 1) == 0)
          {
            *(a1 + 253) = 1;
          }

          if (*(a1 + 376) == 5)
          {
            *(a1 + 253) = 1;
          }

          if (!v12)
          {
            goto LABEL_56;
          }

          if (v10)
          {
            *(a1 + 254) = 1;
LABEL_56:
            sub_34CA8(a1, 0);
            v21 = qword_D8508;
            if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
            {
              v22 = "NO";
              if (*(a1 + 252))
              {
                v23 = "YES";
              }

              else
              {
                v23 = "NO";
              }

              if (*(a1 + 253))
              {
                v24 = "YES";
              }

              else
              {
                v24 = "NO";
              }

              if (*(a1 + 255))
              {
                v25 = "YES";
              }

              else
              {
                v25 = "NO";
              }

              if (*(a1 + 254))
              {
                v22 = "YES";
              }

              *buf = 138413570;
              *v29 = v4;
              *&v29[8] = 1024;
              *v30 = v27;
              *&v30[4] = 2082;
              *&v30[6] = v23;
              *&v30[14] = 2082;
              *&v30[16] = v24;
              *&v30[24] = 2082;
              *&v30[26] = v25;
              *&v30[34] = 2082;
              *&v30[36] = v22;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "[ %@ ] Spatial Audio: [%d] Control Center State mSpatialAudioCCIsAvailable = %{public}s mSpatialAudioCCState = %{public}s mSpatializeStereoCCIsAvailable = %{public}s mSpatializeStereoCCState = %{public}s", buf, 0x3Au);
            }

            sub_5AAC0(*a1, 1752457571);
            sub_5AAC0(*a1, 1752462196);
            sub_5AAC0(*a1, 1752457590);
            sub_5AAC0(*a1, 1936744822);
            sub_5AAC0(*a1, 1936749430);
            sub_5AAC0(*a1, 1936746095);
            sub_5AAC0(*a1, 1633907555);
            return;
          }

          v18 = qword_D8508;
          if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 378);
            *buf = 67109120;
            *v29 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Spatial Audio: Not spatializing BestAvailableContentType = %d", buf, 8u);
          }

LABEL_53:
          v20 = *(a1 + 378);
          if (v20 <= 3 && v20 != 1)
          {
            *(a1 + 255) = 0;
          }

          goto LABEL_56;
        }

        if (v27 == 2)
        {
          if (!v10 && os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
          {
            sub_7BEBC();
            if (!v12)
            {
              goto LABEL_42;
            }

            goto LABEL_36;
          }
        }

        else if (v27 != 3)
        {
          goto LABEL_56;
        }

        if (!v12)
        {
          goto LABEL_42;
        }

LABEL_36:
        v16 = v27 == 3 && v10;
        if (v16 && os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
        {
          sub_7BEF0();
        }

        goto LABEL_42;
      }

      if (v11 != 6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v11 == 2)
      {
LABEL_14:
        sub_301B8(a1);
        v12 = 0;
        goto LABEL_26;
      }

      if (v11 != 3)
      {
LABEL_13:
        v10 = v11 == 5;
        goto LABEL_14;
      }
    }

    v10 = v11 == 5;
    goto LABEL_25;
  }

  v13 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 129);
    if (*(a1 + 256))
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    *buf = 67110658;
    *v29 = a2;
    *&v29[4] = 1024;
    *&v29[6] = v14;
    *v30 = 2082;
    *&v30[2] = "NO";
    *&v30[10] = 2082;
    *&v30[12] = "NO";
    *&v30[20] = 2082;
    *&v30[22] = "NO";
    *&v30[30] = 2082;
    *&v30[32] = "NO";
    *&v30[40] = 2082;
    *&v30[42] = v15;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Spatial Audio: Control Center State isStreaming %d screensharingState %d mSpatialAudioCCIsAvailable = %{public}s mSpatialAudioCCState = %{public}s mSpatializeStereoCCIsAvailable = %{public}s mSpatializeStereoCCState = %{public}s mIsLastSessionSpatial = %{public}s", buf, 0x40u);
  }

  sub_5AAC0(*a1, 1752457571);
  sub_5AAC0(*a1, 1752462196);
  sub_5AAC0(*a1, 1752457590);
  sub_5AAC0(*a1, 1936744822);
  sub_5AAC0(*a1, 1936749430);
  sub_5AAC0(*a1, 1936746095);
  sub_5AAC0(*a1, 1633907555);
  sub_34CA8(a1, 0);
}

void sub_34CA8(uint64_t a1, int a2)
{
  *(a1 + 257) = a2;
  if (a2)
  {
    v4 = mach_absolute_time();
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 496) = v4;
  v5 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    if (a2)
    {
      v6 = "YES";
    }

    v7 = 136446210;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Spatial UI busy %{public}s", &v7, 0xCu);
  }
}

void sub_34D7C(void *a1, int a2, int a3)
{
  if (_os_feature_enabled_impl())
  {
    v6 = 0;
  }

  else
  {
    v6 = @"global";
  }

  v7 = *(a1 + 376);
  v31 = 0;
  v30 = 0;
  sub_33A3C(a1, v6, &v31, &v30);
  v8 = (v7 < 6) & (0x34u >> v7);
  v9 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "Disable";
    v11 = *(a1 + 376);
    if (a2)
    {
      v10 = "Enable";
    }

    v12 = *(a1 + 378);
    v13 = "NO";
    *buf = 136447746;
    if ((v8 & a2) != 0)
    {
      v13 = "YES";
    }

    v33 = v10;
    v34 = 1024;
    *v35 = v31;
    *&v35[4] = 1024;
    *&v35[6] = v30;
    *v36 = 1024;
    *&v36[2] = a3;
    *v37 = 1024;
    *&v37[2] = v11;
    *v38 = 1024;
    *&v38[2] = v12;
    *v39 = 2082;
    *&v39[2] = v13;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Spatial Control Centre Request to %{public}s Spatial Audio Current Mode = %d HT [%d -> %d] Spatialization Status = %d Best Available Content %d Only HeadTracking changed %{public}s", buf, 0x34u);
  }

  if (*(a1 + 257) == 1)
  {
    if ((((mach_absolute_time() - a1[62]) * *(a1 + 154) / *(a1 + 155) / 0x3E8) / 1000000.0) < 5.0)
    {
      v14 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        if (a2)
        {
          v15 = "YES";
        }

        else
        {
          v15 = "NO";
        }

        v16 = (((mach_absolute_time() - a1[62]) * *(a1 + 154) / *(a1 + 155) / 0x3E8) / 1000000.0);
        *buf = 136446466;
        v33 = v15;
        v34 = 2048;
        *v35 = v16;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Received Spatial Control Centre Update [ %{public}s ] while previous process is ongoing time from the last update %f ", buf, 0x16u);
      }

      return;
    }

    sub_34CA8(a1, 0);
  }

  if (a2)
  {
    if (*(a1 + 378) > 1u && (v31 != 1 ? (v26 = 1) : (v26 = v8), (v26 & 1) != 0))
    {
      if (v31)
      {
        sub_33850(a1, v6, v31, a3);
      }

      else
      {
        sub_33850(a1, v6, 1, a3);
      }
    }

    else
    {
      sub_33850(a1, v6, 2, a3);
    }
  }

  else
  {
    sub_33850(a1, v6, 0, v30);
  }

  v29 = 0;
  v28 = 0;
  sub_33A3C(a1, v6, &v29, &v28);
  if (v31 != v29)
  {
    sub_34CA8(a1, 1);
  }

  v17 = *(*a1 + 9088);
  if (v17 && v17[192] == 1)
  {
    (*(*v17 + 632))(v17, v6, v29, v28);
  }

  *(a1 + 488) = 0;
  v27[0] = 0;
  v27[1] = 0;
  sub_70AF4(v27, (a1 + 53));
  v18 = a1[50];
  if (v18 == a1 + 51)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0;
    do
    {
      v20 = [v18[5] numActiveQueue];
      v21 = v18[1];
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
          v22 = v18[2];
          v23 = *v22 == v18;
          v18 = v22;
        }

        while (!v23);
      }

      v19 += v20;
      v18 = v22;
    }

    while (v22 != a1 + 51);
  }

  sub_70BD4(v27);
  if (v19 >= 2)
  {
    *(a1 + 488) = 1;
  }

  if (v31 == v29 && v30 != a3)
  {
    (*(**a1 + 728))(*a1);
  }

  v24 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    v25 = "Disabled";
    if (a2)
    {
      v25 = "Enabled ";
    }

    *buf = 138413826;
    v33 = v6;
    v34 = 2082;
    *v35 = v25;
    *&v35[8] = 1024;
    *v36 = v31;
    *&v36[4] = 1024;
    *v37 = v30;
    *&v37[4] = 1024;
    *v38 = v29;
    *&v38[4] = 1024;
    *v39 = v28;
    *&v39[4] = 1024;
    *&v39[6] = v19;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "[ %@ ] Spatial Control Centre Request update: SetSpatialAudioCCState %{public}s Current Mode %d [%d] -> %d [%d] Number of Queues %d", buf, 0x34u);
  }

  sub_70C40(v27);
}

float sub_352E8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 616) * a2 / *(a1 + 620) / 0x3E8;
  if (!a3)
  {
    v5 = v3;
    v6 = 1000000.0;
    return v5 / v6;
  }

  if (a3 == 1)
  {
    v5 = v3;
    v6 = 1000.0;
    return v5 / v6;
  }

  result = 0.0;
  if (a3 == 2)
  {
    return v3;
  }

  return result;
}

void *sub_35358(void *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v6 = result[51];
    if (v6)
    {
      v9 = (result + 51);
      v10 = (result + 51);
      v11 = result[51];
      do
      {
        if (*(v11 + 8) >= a2)
        {
          v10 = v11;
        }

        v11 = *&v11[8 * (*(v11 + 8) < a2)];
      }

      while (v11);
      if (v10 != v9 && *(v10 + 8) <= a2)
      {
        v12 = (result + 51);
        do
        {
          if (*(v6 + 8) >= a2)
          {
            v12 = v6;
          }

          v6 = *&v6[8 * (*(v6 + 8) < a2)];
        }

        while (v6);
        if (v12 == v9 || *(v12 + 8) > a2)
        {
          v12 = (result + 51);
        }

        if (a3)
        {
          result = [*(v12 + 5) setSpatialAudioUserSelection:a5];
        }

        if (a4)
        {
          v13 = *(v12 + 5);

          return [v13 setSpatialAudioHeadTrackingUserSelection:a6];
        }
      }
    }
  }

  return result;
}

void sub_35438(void *a1, int a2, int a3)
{
  v6 = _os_feature_enabled_impl();
  v7 = *(a1 + 376);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = @"global";
  }

  v32 = 0;
  v31 = 0;
  sub_33A3C(a1, v8, &v32, &v31);
  v9 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 376);
    v11 = "Disable";
    v12 = *(a1 + 378);
    *buf = 136447746;
    if (a2)
    {
      v11 = "Enable";
    }

    v34 = v11;
    v35 = 1024;
    *v36 = v32;
    if (((v7 < 6) & (0x34u >> v7) & a2) != 0)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    *&v36[4] = 1024;
    *&v36[6] = v31;
    v37 = 1024;
    v38 = a3;
    v39 = 1024;
    v40 = v10;
    v41 = 1024;
    v42 = v12;
    v43 = 2082;
    v44 = v13;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Spatial Control Centre Request to %{public}s Stereo Upmix Current Mode = %d [ %d --> %d] Spatialization Status = %d Best Available Content %d Head Tracking only Changed %{public}s", buf, 0x34u);
  }

  if (*(a1 + 257) == 1)
  {
    if (!a1[62])
    {
      a1[62] = mach_absolute_time();
    }

    if ((((mach_absolute_time() - a1[62]) * *(a1 + 154) / *(a1 + 155) / 0x3E8) / 1000.0) < 3.0)
    {
      v14 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        if (a2)
        {
          v15 = "YES";
        }

        else
        {
          v15 = "NO";
        }

        v16 = (((mach_absolute_time() - a1[62]) * *(a1 + 154) / *(a1 + 155) / 0x3E8) / 1000.0);
        *buf = 136446466;
        v34 = v15;
        v35 = 2048;
        *v36 = v16;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Received Stereo Upmix Control Centre Update [ %{public}s ] while previous process is ongoing time from the last update %f ", buf, 0x16u);
      }

      return;
    }

    a1[62] = 0;
    sub_34CA8(a1, 0);
  }

  if (a2)
  {
    v17 = *(a1 + 376);
    if (v17 <= 5 && ((1 << v17) & 0x34) != 0)
    {
      sub_33850(a1, v8, v32, a3);
    }

    else
    {
      sub_33850(a1, v8, 2, a3);
    }
  }

  else if (v32 != 3 && ((v18 = *(a1 + 376), v18 == 2) || v18 == 4 && *(a1 + 378) < 2u))
  {
    sub_33850(a1, v8, 3, v31);
  }

  else
  {
    sub_33850(a1, v8, 0, v31);
  }

  v30 = 0;
  v29 = 0;
  sub_33A3C(a1, v8, &v30, &v29);
  if (v32 != v30)
  {
    sub_34CA8(a1, 1);
  }

  v19 = *(*a1 + 9088);
  if (v19 && v19[192] == 1)
  {
    (*(*v19 + 632))(v19, v8, v30, v29);
  }

  *(a1 + 488) = 0;
  v28[0] = 0;
  v28[1] = 0;
  sub_70AF4(v28, (a1 + 53));
  v20 = a1[50];
  if (v20 == a1 + 51)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v22 = [v20[5] numActiveQueue];
      v23 = v20[1];
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
          v24 = v20[2];
          v25 = *v24 == v20;
          v20 = v24;
        }

        while (!v25);
      }

      v21 += v22;
      v20 = v24;
    }

    while (v24 != a1 + 51);
  }

  sub_70BD4(v28);
  if (v21 >= 2)
  {
    *(a1 + 488) = 1;
  }

  if (v32 == v30 && v31 != a3)
  {
    (*(**a1 + 728))(*a1);
  }

  v26 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    v27 = "Disabled";
    if (a2)
    {
      v27 = "Enabled ";
    }

    *buf = 136447490;
    v34 = v27;
    v35 = 1024;
    *v36 = v32;
    *&v36[4] = 1024;
    *&v36[6] = v31;
    v37 = 1024;
    v38 = v30;
    v39 = 1024;
    v40 = v29;
    v41 = 1024;
    v42 = v21;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Spatial Control Centre update, SetSpatializeStereoCCState %{public}s Current Mode %d [ %d ] -> %d [ %d ] Num Queues %d", buf, 0x2Au);
  }

  sub_70C40(v28);
}

uint64_t sub_35A08(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, _DWORD *a5)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_70AF4(v18, a1 + 424);
  v10 = *(a1 + 400);
  v11 = (a1 + 408);
  if (v10 != (a1 + 408))
  {
    while (1)
    {
      v12 = v10[5];
      if ([v12 hostProcess] == a2)
      {
        break;
      }

      v13 = v10[1];
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
          v14 = v10[2];
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      v10 = v14;
      if (v14 == v11)
      {
        goto LABEL_16;
      }
    }

    v16 = [v12 HighestQualityFormat];
    if (a4)
    {
      *a4 = [v12 spatialAudioUserSelection];
    }

    if (a5)
    {
      *a5 = [v12 spatialAudioHeadTrackingUserSelection];
    }

    if (v16)
    {
      *a3 = v16;
    }
  }

LABEL_16:
  sub_70BD4(v18);
  sub_70C40(v18);
  return 0;
}

uint64_t sub_35B2C(unsigned __int8 *a1)
{
  v1 = a1[376];
  v2 = v1 > 5;
  v3 = (1 << v1) & 0x34;
  if (!v2 && v3 != 0)
  {
    return a1[377];
  }

  if ((a1[378] & 0xFE) == 2)
  {
    return 6;
  }

  return 2;
}

uint64_t sub_35B70(uint64_t a1)
{
  result = *(a1 + 372);
  v3 = *(a1 + 376);
  v4 = v3 > 5;
  v5 = (1 << v3) & 0x34;
  if (v4 || v5 == 0)
  {
    if (*(a1 + 378) == 3)
    {
      return 1902324531;
    }

    else
    {
      return result;
    }
  }

  return result;
}

CFDictionaryRef sub_35BC4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_70AF4(v4, a1 + 536);
  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, *(a1 + 512));
  sub_70C40(v4);
  return Copy;
}

uint64_t sub_35C34(_BYTE *a1, int a2)
{
  a1[344] = a2;
  if (a2)
  {
    v3 = *a1;
    if (*(*a1 + 9508) != 1)
    {
      goto LABEL_7;
    }

    v4 = 0;
  }

  else
  {
    v5 = *(qword_D8DF0 + 464);
    if (!v5)
    {
      goto LABEL_7;
    }

    v4 = [v5 currentRoutedUSBDeviceUID];
    v3 = *a1;
  }

  sub_5C6B4(v3, v4);
LABEL_7:

  return sub_35CB0(a1);
}

uint64_t sub_35CB0(uint64_t a1)
{
  *(a1 + 356) = 0;
  v2 = *(a1 + 352);
  if ((v2 & 2) != 0 && *(a1 + 344) == 1)
  {
    v3 = 1;
    *(a1 + 356) = 1;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 352) = v2 & 0xFFFFFFFE | v3;
  v4 = *a1;
  v5 = *(*a1 + 9088);
  if (v5 && v5[192] == 1)
  {
    (*(*v5 + 592))(*(*a1 + 9088));
    v4 = *a1;
  }

  return sub_5AAC0(v4, 1936747877);
}

void sub_35D68(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    v4 = *(a1 + 280);
    if (v4)
    {
      CFRelease(v4);
    }

    Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, theDict);
    *(a1 + 280) = Copy;
    v6 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = Copy;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "DSPOffload Available Options set to %@", &v7, 0xCu);
    }
  }
}

uint64_t *sub_35E38(uint64_t a1, int *a2)
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

uint64_t sub_35F0C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_35F90(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_35F90(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_36004(v6, a2);
  return v3;
}

uint64_t *sub_36004(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

os_log_t sub_36384()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8508 = result;
  return result;
}

os_log_t sub_379FC()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8510 = result;
  return result;
}

void sub_37A2C(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v6 = *(a3 + 32);
  sub_10828(a1, a2, v5);
  *v4 = &off_AFA38;
  *(v4 + 152) = 10240;
  operator new[]();
}

void sub_37AF0(void *a1)
{
  sub_10878(a1);

  operator delete();
}

uint64_t sub_37B28(uint64_t a1, int a2)
{
  v2 = *(a1 + 92);
  *(a1 + 156) = a2;
  if (v2 >= 1)
  {
    v4 = a1 + 180;
    do
    {
      g726_init(v4, a2, 2);
      v4 += 64;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_37B84(uint64_t result)
{
  v1 = *(result + 92);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = result + 180;
    do
    {
      result = g726_init(v3, *(v2 + 156), 2);
      v3 += 64;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_37BD8(uint64_t a1, _WORD *a2, unsigned int a3, uint64_t a4)
{
  if (*(a1 + 92) == 2)
  {
    v6 = (a1 + 25908);
    v7 = (a1 + 20788);
    if (a3)
    {
      v8 = a3;
      v9 = a3;
      v10 = a1;
      do
      {
        *(v10 + 308) = *a2;
        *(v10 + 10548) = a2[1];
        v10 += 2;
        a2 += 2;
        --v9;
      }

      while (v9);
    }

    else
    {
      v8 = 0;
    }

    v12 = g726_encode_frame(a1 + 180, a1 + 308, v8, a1 + 20788);
    v13 = g726_encode_frame(a1 + 244, a1 + 10548, v8, a1 + 25908);
    v14 = v13 + v12;
    v11 = (v13 + v12);
    if (v11 >= 2)
    {
      v15 = 0;
      v16 = (v14 >> 1) & 0x3FFF;
      do
      {
        v17 = *v7++;
        *(*(a1 + 144) + v15) = v17;
        v18 = *v6++;
        v19 = *(a1 + 144) + v15;
        v15 += 2;
        *(v19 + 1) = v18;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    LOWORD(v11) = g726_encode_frame(a1 + 180, a2, a3, *(a1 + 144));
  }

  v20 = v11;
  if (*(a1 + 177) == 1)
  {
    sub_10EE4(a1, v11, 0);
  }

  *a4 = 1;
  *(a4 + 16) = *(a1 + 144);
  *(a4 + 8) = 1;
  *(a4 + 12) = v20;
}

os_log_t sub_37D1C()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8518 = result;
  return result;
}

void sub_38340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_38360(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 intValue];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

void sub_3850C(uint64_t a1)
{
  v2 = sub_508C0(qword_D8DF0, *(*(a1 + 32) + 72));
  v3 = qword_D8520;
  if (v2)
  {
    v4 = v2;
    if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 80);
      v6 = *(a1 + 40);
      v14 = 138412546;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Mac SmartRouting Update Ownership on  %@ -> %d", &v14, 0x12u);
    }

    sub_5A118(v4, v4[1161], *(a1 + 40), 1);
  }

  else if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_ERROR))
  {
    sub_7C1E4(v3, v7, v8, v9, v10, v11, v12, v13);
  }
}

os_log_t sub_38B6C()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8520 = result;
  return result;
}

uint64_t sub_38B9C(uint64_t a1, uint64_t a2)
{
  *a1 = off_AFAB8;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  sub_709AC(a1 + 40, a2);
  atomic_store(1u, (a1 + 8));
  return a1;
}

uint64_t sub_38C28(uint64_t a1)
{
  *a1 = off_AFAB8;
  v2 = a1 + 40;
  v5[0] = 0;
  v5[1] = 0;
  sub_70AF4(v5, a1 + 40);
  sub_16FF8(a1 + 16, *(a1 + 24));
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  sub_70C40(v5);
  sub_70A28(v2, v3);
  sub_16FF8(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_38CCC(uint64_t a1)
{
  sub_38C28(a1);

  operator delete();
}

uint64_t sub_38D04(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_70AF4(v8, a1 + 40);
  add = atomic_fetch_add((a1 + 8), 1u);
  v6 = add;
  v7 = a2;
  sub_39064(a1 + 16, &v6);
  sub_70C40(v8);
  return add;
}

void sub_38D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_38D8C(uint64_t a1, unsigned int a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_70AF4(v13, a1 + 40);
  v6 = *(a1 + 24);
  v5 = a1 + 24;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v5 && *(v7 + 32) <= a2)
  {
    v11 = *(v7 + 40);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  sub_70C40(v13);
  return v11;
}

uint64_t sub_38E18(uint64_t a1, unsigned int a2)
{
  v5 = a2;
  v4[0] = 0;
  v4[1] = 0;
  sub_70AF4(v4, a1 + 40);
  sub_39130(a1 + 16, &v5);
  return sub_70C40(v4);
}

void sub_38E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_38E7C(uint64_t a1)
{
  *a1 = &off_AFAF0;
  if (qword_D8530 != -1)
  {
    sub_7C21C();
  }

  *(a1 + 8) = (*(*qword_D8DE8 + 16))(qword_D8DE8, a1);
  return a1;
}

uint64_t sub_38F74(uint64_t a1)
{
  *a1 = &off_AFAF0;
  (*(*qword_D8DE8 + 32))(qword_D8DE8, *(a1 + 8));
  return a1;
}

void sub_38FEC(uint64_t a1)
{
  sub_38F74(a1);

  operator delete();
}

uint64_t *sub_39064(uint64_t a1, unsigned int *a2)
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

uint64_t sub_39130(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_35F90(a1, v4);
  operator delete(v4);
  return 1;
}

os_log_t sub_391B4()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8528 = result;
  return result;
}

uint64_t sub_391E4(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v5;
  v11 = *(a3 + 32);
  sub_10828(a1, a2, v10);
  *v6 = off_AFB80;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  if (a2 <= 11)
  {
    switch(a2)
    {
      case 9:
        v7 = 1;
        goto LABEL_17;
      case 10:
        v7 = 2;
        goto LABEL_17;
      case 11:
        v7 = 3;
LABEL_17:
        *(a1 + 256) = v7;
        goto LABEL_18;
    }
  }

  else
  {
    if (a2 <= 13)
    {
      if (a2 != 12)
      {
        *(a1 + 256) = 0;
        goto LABEL_18;
      }

LABEL_11:
      v7 = 4;
      goto LABEL_17;
    }

    if (a2 == 14)
    {
      v7 = 6;
      goto LABEL_17;
    }

    if (a2 == 18)
    {
      goto LABEL_11;
    }
  }

  v8 = qword_D8538;
  if (os_log_type_enabled(qword_D8538, OS_LOG_TYPE_ERROR))
  {
    sub_7C230(a2, v8);
  }

LABEL_18:
  *(a1 + 176) = 0;
  return a1;
}

void *sub_3930C(uint64_t a1)
{
  *a1 = off_AFB80;
  if (*(a1 + 92))
  {
    v2 = 0;
    v3 = (a1 + 232);
    do
    {
      encoder_destroy(*(v3 - 6));
      free(*(v3 - 2));
      v4 = *v3++;
      free(v4);
      ++v2;
    }

    while (v2 < *(a1 + 92));
  }

  return sub_10878(a1);
}

void sub_393A4(uint64_t a1)
{
  sub_3930C(a1);

  operator delete();
}

void sub_393DC(uint64_t a1, int a2)
{
  *(a1 + 156) = a2;
  if (*(a1 + 92))
  {
    v3 = 0;
    v4 = (a1 + 200);
    do
    {
      v5 = encoder_create(*(a1 + 256));
      *(v4 - 2) = v5;
      *v4++ = v5;
      ++v3;
      v6 = *(a1 + 92);
    }

    while (v3 < v6);
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = *(*(a1 + 200) + 4);
  v8 = *(*(a1 + 200) + 8);
  *(a1 + 264) = v8;
  *(a1 + 272) = v9;
  *(a1 + 280) = 2 * v8;
  *(a1 + 288) = 2 * v9;
  if (!v7)
  {
    v10 = 0;
    v11 = (a1 + 232);
    do
    {
      *(v11 - 2) = malloc_type_calloc(*(a1 + 264), 2uLL, 0x1000040BDFB0063uLL);
      *v11++ = malloc_type_calloc(*(a1 + 264), 4uLL, 0x100004052888210uLL);
      ++v10;
    }

    while (v10 < *(a1 + 92));
    v8 = *(a1 + 264);
    v9 = *(a1 + 272);
  }

  *(a1 + 248) = 0;
  *(a1 + 152) = (ceilf((20480 * *(a1 + 88)) / v8) * v9);
  operator new[]();
}

void sub_39540(uint64_t a1, __int16 *a2, unsigned int a3, _DWORD *a4)
{
  v8 = *(a1 + 144);
  if (*(a1 + 92) >= 3u)
  {
    v9 = qword_D8538;
    if (os_log_type_enabled(qword_D8538, OS_LOG_TYPE_FAULT))
    {
      sub_7C2A8(v9);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  v10 = 0;
  if (a3)
  {
    v11 = a3;
    v12 = *(a1 + 248);
    v13 = *(a1 + 264);
    while (v12 + v11 >= v13)
    {
      v14 = *(a1 + 92);
      if (v13 != v12)
      {
        v15 = 0;
        do
        {
          if (v14)
          {
            v16 = v14;
            v17 = (a1 + 232);
            do
            {
              v18 = *a2++;
              v19 = *(a1 + 296) * v18;
              v20 = *v17++;
              *(v20 + 4 * v12 + 4 * v15) = v19;
              --v16;
            }

            while (v16);
          }

          ++v15;
        }

        while (v15 != v13 - v12);
      }

      if (v14)
      {
        v21 = 0;
        v22 = (a1 + 232);
        do
        {
          v23 = *(v22 - 6);
          v24 = *v22++;
          encode(v23, v24, v8);
          v8 = (v8 + 2 * *(a1 + 272));
          ++v21;
        }

        while (v21 < *(a1 + 92));
        v13 = *(a1 + 264);
        v12 = *(a1 + 248);
        v10 += v21;
      }

      *(a1 + 248) = 0;
      v11 = v11 - v13 + v12;
      v12 = 0;
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    v25 = 0;
    v26 = *(a1 + 92);
    if (v11 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v11;
    }

    do
    {
      if (v26)
      {
        v28 = v26;
        v29 = (a1 + 232);
        do
        {
          v30 = *a2++;
          v31 = *(a1 + 296) * v30;
          v32 = *v29++;
          *(v32 + 4 * v12 + 4 * v25) = v31;
          --v28;
        }

        while (v28);
      }

      ++v25;
    }

    while (v25 != v27);
    *(a1 + 248) = v12 + v11;
  }

LABEL_28:
  if (*(a1 + 177) == 1)
  {
    sub_10EE4(a1, *(a1 + 288) * v10, 0);
  }

  if (*(a1 + 178) == 1)
  {
    if (!v10)
    {
      *a4 = 0;
      return;
    }

    v33 = 0;
    v34 = byte_D8540;
    LODWORD(v35) = *(a1 + 92);
    do
    {
      if (v35)
      {
        v36 = 0;
        v37 = v33;
        do
        {
          memset((*(a1 + 144) + *(a1 + 288) * v37), v34, *(a1 + 288));
          ++v36;
          v35 = *(a1 + 92);
          ++v37;
        }

        while (v36 < v35);
      }

      else
      {
        LODWORD(v36) = 0;
      }

      ++v34;
      v33 += v36;
    }

    while (v10 > v33);
    byte_D8540 = v34;
  }

  *a4 = v10;
  if (v10)
  {
    v38 = *(a1 + 144);
    v39 = *(a1 + 288);
    v40 = v10;
    v41 = a4 + 4;
    do
    {
      *v41 = v38;
      *(v41 - 2) = 1;
      *(v41 - 1) = v39;
      v41 += 2;
      v38 += v39;
      --v40;
    }

    while (v40);
  }
}

os_log_t sub_397C0()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8538 = result;
  return result;
}

void sub_397F0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v6 = *(a3 + 32);
  sub_10828(a1, a2, v5);
  *v4 = &off_AFBD8;
  *(v4 + 176) = 1;
}

void sub_39848(uint64_t a1, int a2, int a3)
{
  ioPropertyDataSize = 0;
  v18 = a2;
  *(a1 + 104) = *(a1 + 64);
  *(a1 + 184) = a2;
  *(a1 + 128) = xmmword_88E20;
  *(a1 + 112) = xmmword_88E30;
  v5 = AudioConverterNew((a1 + 64), (a1 + 104), (a1 + 56));
  sub_199EC(v5, "Could not create new audio converter");
  v15 = 8;
  inPropertyData = 3;
  v14 = 0;
  if (*(a1 + 132) == 2)
  {
    v6 = AudioConverterSetProperty(*(a1 + 56), 0x73746D64u, 4u, &inPropertyData);
    sub_199EC(v6, "Failed to set SBC stereo mode");
  }

  v7 = AudioConverterSetProperty(*(a1 + 56), 0x6E737562u, 4u, &v15);
  sub_199EC(v7, "Failed to set SBC subband number");
  v8 = AudioConverterSetProperty(*(a1 + 56), 0x616C6C63u, 4u, &v14);
  sub_199EC(v8, "Failed to set SBC allocation method");
  v9 = AudioConverterSetProperty(*(a1 + 56), 0x62697470u, 4u, &v18);
  sub_199EC(v9, "Failed to set SBC bitpool");
  ioPropertyDataSize = 40;
  Property = AudioConverterGetProperty(*(a1 + 56), 0x61636F64u, &ioPropertyDataSize, (a1 + 104));
  sub_199EC(Property, "Failed to create SBC output data format");
  outPropertyData = *(a1 + 120);
  ioPropertyDataSize = 4;
  v11 = AudioConverterGetProperty(*(a1 + 56), 0x786F7073u, &ioPropertyDataSize, &outPropertyData);
  sub_199EC(v11, "Could not get kAudioConverterPropertyMaximumOutputPacketSize");
  if (*(a1 + 48) == 1)
  {
    v12 = qword_D8548;
    if (os_log_type_enabled(qword_D8548, OS_LOG_TYPE_DEBUG))
    {
      sub_7C32C(&outPropertyData, v12);
    }
  }

  *(a1 + 160) = a3;
  *(a1 + 152) = outPropertyData * a3;
  operator new[]();
}

void sub_39A80(uint64_t a1, uint64_t a2, int a3, UInt32 *a4)
{
  *&outOutputData.mNumberBuffers = 0;
  v6 = *(a1 + 132);
  outOutputData.mNumberBuffers = 1;
  v7 = *(a1 + 152);
  outOutputData.mBuffers[0].mNumberChannels = v6;
  outOutputData.mBuffers[0].mDataByteSize = v7;
  v8 = *(a1 + 136);
  outOutputData.mBuffers[0].mData = *(a1 + 144);
  inInputDataProcUserData[0] = a2;
  inInputDataProcUserData[1] = (*(a1 + 80) * a3);
  v9 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v9;
  v28 = *(a1 + 96);
  v10 = *(a1 + 120);
  v29 = *(a1 + 104);
  v30 = v10;
  v11 = *(a1 + 168);
  v31 = v8;
  v32 = v11;
  ioOutputDataPacketSize = *(a1 + 160);
  v12 = AudioConverterFillComplexBuffer(*(a1 + 56), sub_198B8, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, v11);
  sub_199EC(v12, "AudioConverterFillComplexBuffer Failed");
  v13 = ioOutputDataPacketSize;
  if (ioOutputDataPacketSize && outOutputData.mBuffers[0].mDataByteSize)
  {
    *a4 = ioOutputDataPacketSize;
    v14 = a4 + 4;
    v15 = *(a1 + 144);
    v16 = v13;
    v17 = *(a1 + 168);
    do
    {
      *v14 = v15 + *v17;
      v18 = *(v17 + 12);
      *(v14 - 2) = 1;
      *(v14 - 1) = v18;
      v14 += 2;
      v17 += 16;
      --v16;
    }

    while (v16);
    if (!v13)
    {
      return;
    }
  }

  else
  {
    *a4 = 0;
    if (!v13)
    {
      return;
    }
  }

  if (*(a1 + 177))
  {
    v19 = 0;
    v20 = (*(a1 + 168) + 12);
    v21 = v13;
    do
    {
      v22 = *v20;
      v20 += 4;
      v19 += v22;
      --v21;
    }

    while (v21);
    sub_10EE4(a1, v19, v13);
  }
}

AudioComponent sub_39BC0()
{
  result = dlopen("/System/Library/Components/AudioCodecs.component/Contents/MacOS/AudioCodecs", 5);
  if (result)
  {
    v1 = dlsym(result, "ACSBCEncoderFactory");
    *&v2.componentType = xmmword_88E40;
    v2.componentFlagsMask = 0;
    return AudioComponentRegister(&v2, &stru_B24D0, 0, v1);
  }

  return result;
}

void sub_39C2C(void *a1)
{
  sub_10878(a1);

  operator delete();
}

os_log_t sub_39C74()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8548 = result;
  return result;
}

uint64_t sub_39CA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1 + 0x2000;
  v8 = sub_1948(a1, a3);
  *v8 = off_AFC30;
  *(v7 + 972) = 0;
  *(v8 + 9236) = 0u;
  *(v8 + 9252) = 0u;
  *(v8 + 9272) = 0;
  *(v7 + 1088) = 0;
  *(v8 + 9284) = 0;
  *(v8 + 9080) = 0;
  *(v8 + 9096) = 0;
  *(v8 + 9088) = 0;
  sub_8998(v8, a2);
  (*(*a1 + 1600))(a1, a4);
  *(a1 + 480) = 0;
  *(a1 + 388) = 0;
  sub_1CBC(a1, a4);
  *(v7 + 992) = 0;
  *(a1 + 9188) = 150;
  *(v7 + 964) = 0;
  *(a1 + 368) = 1952539500;
  sub_3A28C(a1, a4);
  *(a1 + 9232) = 0;
  atomic_store(1u, (a1 + 288));
  *(a1 + 292) = 1;
  *(a1 + 296) = *(a1 + 9112);
  *(a1 + 380) = 21856;
  *(a1 + 304) = xmmword_88E70;
  *(a1 + 320) = xmmword_88E80;
  *(a1 + 372) = 2732;
  if (*(a1 + 9160) == 33023)
  {
    v9 = 1280;
  }

  else
  {
    v9 = 2732;
  }

  *(a1 + 376) = v9;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEBUG))
  {
    sub_7C3A8();
  }

  *(a1 + 384) = 10000;
  *(a1 + 424) = 1;
  *(a1 + 484) = -1082130432;
  if (sub_743C(a1) && (sub_42134() & 1) == 0)
  {
    *(a1 + 492) = -1027080192;
    v13 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = 0xC059000000000000;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Adjusting volume floor to %f", &v15, 0xCu);
      v10 = *(a1 + 492);
    }

    else
    {
      v10 = -1027080192;
    }
  }

  else
  {
    *(a1 + 492) = -1038090240;
    v10 = -1038090240;
  }

  *(a1 + 496) = 0;
  *(a1 + 488) = v10;
  if ((*(*a1 + 1320))(a1))
  {
    operator new();
  }

  *(a1 + 508) = 1;
  *(a1 + 784) = 0;
  *(a1 + 776) = 4;
  (*(*a1 + 1064))(a1, 0);
  (*(*a1 + 1056))(a1, 1);
  *(a1 + 40) = sub_24E2C() + (10 * *(a1 + 372));
  *(a1 + 56) = 0;
  *(a1 + 88) = sub_24E2C() + 109280;
  v11 = *(a1 + 9160);
  v12 = qword_D8550;
  switch(v11)
  {
    case 33023:
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEBUG))
      {
        sub_7C41C();
      }

      operator new();
    case 2:
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEBUG))
      {
        sub_7C458();
      }

      operator new();
    case 0:
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEBUG))
      {
        sub_7C494();
      }

      operator new();
  }

  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_ERROR))
  {
    sub_7C4D0(v11, v12);
  }

  return a1;
}

void sub_3A28C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyNexusUuid");
  if (value)
  {
    v5 = value;
    v6 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertySkywalkKey");
    [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
    v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v5)];
    v8 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (*(*a1 + 16))(a1);
      v154 = 67109378;
      LODWORD(v155[0]) = v9;
      WORD2(v155[0]) = 2112;
      *(v155 + 6) = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "device [%d] Received skywalk nexus provider NSUUID: %@", &v154, 0x12u);
    }

    operator new();
  }

  v10 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertySampleRate");
  if (xpc_get_type(v10) != &_xpc_type_double)
  {
    v11 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C548(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  *(a1 + 9112) = xpc_double_get_value(v10);
  v19 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyCategory");
  if (xpc_get_type(v19) != &_xpc_type_int64)
  {
    v20 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C5C0(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  *(a1 + 9104) = xpc_int64_get_value(v19);
  v28 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyLatency");
  if (xpc_get_type(v28) != &_xpc_type_int64)
  {
    v29 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C638(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  v37 = xpc_int64_get_value(v28);
  *(a1 + 388) = v37;
  *(a1 + 396) = v37;
  *(a1 + 392) = v37;
  v38 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v154 = 67109120;
    LODWORD(v155[0]) = v37;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "A2DP Received initial latency %u from bluetoothd", &v154, 8u);
  }

  v39 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyCodec");
  if (xpc_get_type(v39) != &_xpc_type_int64)
  {
    v40 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C6B0(v40, v41, v42, v43, v44, v45, v46, v47);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  *(a1 + 9160) = xpc_int64_get_value(v39);
  v48 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyBitpool");
  if (xpc_get_type(v48) != &_xpc_type_int64)
  {
    v49 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C728(v49, v50, v51, v52, v53, v54, v55, v56);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  *(a1 + 9108) = xpc_int64_get_value(v48);
  v57 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyFrameLen");
  if (xpc_get_type(v57) != &_xpc_type_int64)
  {
    v58 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C7A0(v58, v59, v60, v61, v62, v63, v64, v65);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  *(a1 + 9120) = xpc_int64_get_value(v57);
  v66 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyFrameCount");
  if (xpc_get_type(v66) != &_xpc_type_int64)
  {
    v67 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C818(v67, v68, v69, v70, v71, v72, v73, v74);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  *(a1 + 9124) = xpc_int64_get_value(v66);
  v75 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyRtpInterval");
  if (xpc_get_type(v75) != &_xpc_type_int64)
  {
    v76 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C890(v76, v77, v78, v79, v80, v81, v82, v83);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  *(a1 + 9148) = xpc_int64_get_value(v75);
  v84 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyDynamicClock");
  if (xpc_get_type(v84) != &_xpc_type_BOOL)
  {
    v85 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C908(v85, v86, v87, v88, v89, v90, v91, v92);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  *(a1 + 9164) = xpc_BOOL_get_value(v84);
  v93 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertySamplingSpeed");
  if (v93)
  {
    *(a1 + 9184) = xpc_BOOL_get_value(v93);
  }

  v94 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertySamplingSpeedParams");
  v95 = xpc_dictionary_get_value(v94, "kBTAudioMsgPropertyLatencyChangeMsec");
  if (xpc_get_type(v75) != &_xpc_type_int64)
  {
    v96 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C890(v96, v97, v98, v99, v100, v101, v102, v103);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  v104 = xpc_int64_get_value(v95);
  v105 = xpc_dictionary_get_value(v94, "kBTAudioMsgPropertySamplingIntervalMultiplier");
  if (xpc_get_type(v105) != &_xpc_type_double)
  {
    v106 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C980(v106, v107, v108, v109, v110, v111, v112, v113);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  v114 = xpc_double_get_value(v105);
  (*(*a1 + 712))(a1, v104, v114);
  v115 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyDynamicLatencySupported");
  if (xpc_get_type(v115) != &_xpc_type_BOOL)
  {
    v116 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7C9F8(v116, v117, v118, v119, v120, v121, v122, v123);
    }

    if (sub_70820())
    {
      goto LABEL_87;
    }
  }

  *(a1 + 9185) = xpc_BOOL_get_value(v115);
  v124 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyLowLatencyGameSupport");
  v125 = v124;
  if (v124)
  {
    if (xpc_get_type(v124) != &_xpc_type_BOOL)
    {
      v126 = qword_D8550;
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
      {
        sub_7CA70(v126, v127, v128, v129, v130, v131, v132, v133);
      }

      if (sub_70820())
      {
        goto LABEL_87;
      }
    }

    v134 = *(*(a1 + 416) + 9280);
    v135 = xpc_BOOL_get_value(v125);
    sub_32DEC(v134, v135);
  }

  v136 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyDynamicLatencyDelayMicroSec");
  v137 = v136;
  if (!v136)
  {
    goto LABEL_71;
  }

  if (xpc_get_type(v136) != &_xpc_type_int64)
  {
    v138 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_7CAE8(v138, v139, v140, v141, v142, v143, v144, v145);
    }

    if (sub_70820())
    {
LABEL_87:
      abort();
    }
  }

  v146 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v147 = xpc_int64_get_value(v137);
    v154 = 67109120;
    LODWORD(v155[0]) = v147 / 1000;
    _os_log_impl(&dword_0, v146, OS_LOG_TYPE_DEFAULT, "Device In ear delay %uMsec", &v154, 8u);
  }

  v148 = xpc_int64_get_value(v137);
  (*(*a1 + 680))(a1, v148 / 0x3E8uLL);
LABEL_71:
  if (!*(a1 + 9104) && (((*(*a1 + 1336))(a1) & 1) != 0 || sub_42134()))
  {
    v149 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v154) = 0;
      _os_log_impl(&dword_0, v149, OS_LOG_TYPE_DEFAULT, "Device category was unknown, defaulting to headphone", &v154, 2u);
    }

    *(a1 + 9104) = 1;
  }

  v150 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyVolumeScalar");
  if (v150 && *(a1 + 408) == 1)
  {
    v151 = xpc_double_get_value(v150);
    v152 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
    {
      v154 = 134217984;
      v155[0] = v151;
      _os_log_impl(&dword_0, v152, OS_LOG_TYPE_DEFAULT, "A2DP Received initial absolute volume of %f from bluetoothd", &v154, 0xCu);
    }

    *(a1 + 480) = v151;
    *(a1 + 488) = (*(*a1 + 368))(a1, v151);
  }

  v153 = *(a1 + 416);
  if (v153 && *(*(v153 + 9280) + 344) == 1 && sub_57E8(a1) == 1952539500)
  {
    sub_6150(a1, *(*(*(a1 + 416) + 9280) + 344));
  }
}

uint64_t sub_3ABEC(void *a1)
{
  *a1 = off_AFC30;
  v2 = *(a1[52] + 9280);
  if (*(v2 + 293) == 1)
  {
    v3 = qword_D8DF0;
    if (*(v2 + 31) < 0)
    {
      sub_9780(__p, *(v2 + 8), *(v2 + 16));
    }

    else
    {
      v4 = *(v2 + 8);
      v9 = *(v2 + 24);
      *__p = v4;
    }

    sub_4D7D4(v3, __p);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*a1 + 1448))(a1);
  sub_5F00(a1);
  if ((*(*a1 + 1680))(a1) && (*(*a1 + 1072))(a1))
  {
    v5 = (*(*a1 + 1680))(a1);
    free(v5);
    (*(*a1 + 1696))(a1, 0);
  }

  (*(*a1 + 72))(a1);
  return sub_1B04(a1, v6);
}

void sub_3ADD4(void *a1)
{
  sub_3ABEC(a1);

  operator delete();
}

void sub_3AE0C(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kBTAudioMsgPropertyDeviceUID");
  if (!string)
  {
    v4 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_77184(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  v12 = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x8000100u);
  *(a1 + 200) = v12;
  v13 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (*(*a1 + 16))(a1);
    v15 = 136315394;
    v16 = string;
    v17 = 1024;
    v18 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "A2DP Device XPC connection for UID %s connected to[ %d ] ", &v15, 0x12u);
    v12 = *(a1 + 200);
  }

  **(a1 + 208) = v12;
}

uint64_t sub_3AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 1)
  {
    v8 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_771FC(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  (*(*a1 + 824))(v18, a1, a4);
  v16 = v18[1];
  *a2 = v18[0];
  *(a2 + 16) = v16;
  *(a2 + 32) = v19;
  *(a2 + 40) = (*(*a1 + 808))(a1);
  *(a2 + 48) = (*(*a1 + 808))(a1);
  return a3;
}

uint64_t sub_3B0B4(uint64_t a1, double *a2, uint64_t a3)
{
  if (a3 != 1)
  {
    v6 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_FAULT))
    {
      sub_771FC(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  *a2 = (*(*a1 + 808))(a1);
  a2[1] = (*(*a1 + 808))(a1);
  return a3;
}

BOOL sub_3B194(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  if (*a2 == *a3)
  {
    return *(a2 + 28) != *(a3 + 28);
  }

  return 1;
}

uint64_t sub_3B230(uint64_t a1, int a2, int a3)
{
  v6 = (*(*a1 + 1080))(a1);
  if (a2 == 1768845428 && v6 == 0)
  {
    return 0;
  }

  result = (*(*a1 + 1072))(a1);
  if (a2 != 1869968496 || result)
  {
    if (a2 == 1735159650 || a2 == 1869968496 || a2 == 1768845428)
    {
      return a3 == 0;
    }

    return 0;
  }

  return result;
}

uint64_t sub_3B334(_DWORD *a1)
{
  if (a1[99] != a1[97])
  {
    (*(*a1 + 272))(a1);
  }

  return 0;
}

uint64_t sub_3B38C(uint64_t result)
{
  v1 = *(result + 416);
  if (*(*(v1 + 9280) + 230) == 1)
  {
    v2 = result;
    v3 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "A2DP notify kBluetoothAudioDevicePropertySpatialMode change", v4, 2u);
      v1 = *(v2 + 416);
    }

    return sub_5AAC0(v1, 1936747876);
  }

  return result;
}

void sub_3B424(uint64_t a1, BOOL a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_12F9C(v2, a2);
  }
}

void sub_3B434(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_13094(v2, *(a1 + 9124));
  }
}

uint64_t sub_3B44C(void *a1, __int16 a2)
{
  if (_os_feature_enabled_impl() && sub_32EAC(*(a1[52] + 9280)))
  {
    v23 = 0;
    v22 = 0;
    v4 = sub_51DD0(qword_D8DF0);
    v5 = *(a1[52] + 9280);
    v6 = *(v5 + 624);
    v7 = v6 + 1;
    *(v5 + 624) = v6 + 1;
    v21[0] = ((v6 + 1) >> 8) & 7 | 0xB0;
    v21[1] = v6 + 1;
    v21[2] = (v4 >> 15) & 7 | 0xE8;
    v21[3] = v4 >> 7;
    v21[4] = v4 & 0x7F;
    if (*(a1 + 793) == 1)
    {
      v8 = qword_D8550;
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134218496;
        v16 = v4;
        v17 = 1024;
        v18 = v4 & 0x3FFFF;
        v19 = 1024;
        v20 = v7 & 0x7FF;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Current Host Time: %llu; Current Host Time: (converted to 18 bits) %d; A2DP Frame number: %d", &v15, 0x18u);
      }
    }

    v21[5] = HIBYTE(a2) & 7 | 0x10;
    v21[6] = a2;
    v9 = a1[3];
    v10 = 10;
    v11 = v21;
    v12 = 10;
  }

  else
  {
    (*(*a1 + 1664))(a1);
    v13 = (*(*a1 + 1648))(a1);
    LOBYTE(v15) = HIBYTE(v13) & 0xF | 0xB0;
    BYTE1(v15) = v13;
    BYTE2(v15) = HIBYTE(a2) & 7 | 0x10;
    HIBYTE(v15) = a2;
    v9 = a1[3];
    v10 = 4;
    v11 = &v15;
    v12 = 4;
  }

  sub_15924(v9, v11, v12);
  return v10;
}

uint64_t sub_3B668(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 416) + 9096);
    if (v3)
    {
      if (v3[192] == 1 && (*(*v3 + 1208))(v3))
      {
        v4 = qword_D8550;
        if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "A2DP TriggerAudioStream Start while eSCO ongoing: Disconnect eSCO immediately", v8, 2u);
        }

        if (*(*(*(a1 + 416) + 9096) + 192))
        {
          v5 = *(*(a1 + 416) + 9096);
        }

        else
        {
          v5 = 0;
        }

        (*(*v5 + 1536))(v5);
        if (*(*(*(a1 + 416) + 9096) + 192))
        {
          v6 = *(*(a1 + 416) + 9096);
        }

        else
        {
          v6 = 0;
        }

        (*(*v6 + 256))();
      }
    }
  }

  return 0;
}

void *sub_3B810@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result[52] + 9280);
  if (*(v2 + 31) < 0)
  {
    return sub_9780(a2, *(v2 + 8), *(v2 + 16));
  }

  v3 = *(v2 + 8);
  *(a2 + 16) = *(v2 + 24);
  *a2 = v3;
  return result;
}

uint64_t sub_3B840(uint64_t a1, int a2, float a3)
{
  *(a1 + 480) = a3;
  *(a1 + 484) = a3;
  if (*(*(*(a1 + 416) + 9280) + 291) == 1)
  {
    v6 = sub_168E0(a3);
  }

  else
  {
    v6 = *(a1 + 496) - ((a3 + -1.0) * *(a1 + 492));
  }

  *(a1 + 488) = v6;
  v7 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 480);
    v9 = (v8 * 127.0);
    v10 = a3;
    v11 = v8;
    v12 = v6;
    if (a2)
    {
      v13 = "Yes";
    }

    else
    {
      v13 = "No";
    }

    v14 = sub_5448(a1);
    v15 = @"NULL";
    v20[0] = 134219266;
    *&v20[1] = v10;
    if (v14)
    {
      v15 = v14;
    }

    v21 = 2048;
    v22 = v11;
    v23 = 1024;
    v24 = v9;
    v25 = 2048;
    v26 = v12;
    v27 = 2082;
    v28 = v13;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Remote device set volume %f, mScalarVolume %f steps = [ %d ] , mDBVolume %f Notify Up : %{public}s Device %{public}@", v20, 0x3Au);
  }

  if (_os_feature_enabled_impl())
  {
    v16 = *(a1 + 416);
    if (*(*(v16 + 9280) + 242) == 1)
    {
      sub_6E5D4(v16);
    }
  }

  result = (*(*a1 + 1320))(a1);
  if (result)
  {
    if ((*(a1 + 408) & 1) == 0)
    {
      v18 = *(a1 + 400);
      if (v18)
      {
        v19 = atomic_load((v18 + 24));
        if (v19)
        {
          sub_16518(*(a1 + 400), *(a1 + 488));
        }
      }
    }

    if ((a2 & 1) != 0 || (result = sub_42134(), result))
    {
      strcpy(v20, "dlovptuo");
      BYTE1(v20[2]) = 0;
      HIWORD(v20[2]) = 0;
      return (*(*a1 + 248))(a1, v20);
    }
  }

  return result;
}

float sub_3BAA8(uint64_t a1, float a2)
{
  v2 = *(a1 + 492);
  if (v2 > a2)
  {
    a2 = *(a1 + 492);
  }

  v3 = *(a1 + 496);
  if (a2 > v3)
  {
    a2 = *(a1 + 496);
  }

  if (*(*(*(a1 + 416) + 9280) + 291) == 1)
  {
    return sub_169D4(a2);
  }

  else
  {
    return ((v3 - a2) / v2) + 1.0;
  }
}

float sub_3BAEC(uint64_t a1, float a2)
{
  if (*(*(*(a1 + 416) + 9280) + 291) == 1)
  {
    return sub_168E0(a2);
  }

  else
  {
    return *(a1 + 496) - ((a2 + -1.0) * *(a1 + 492));
  }
}

void sub_3BB1C(uint64_t a1, float a2)
{
  if (*(*(*(a1 + 416) + 9280) + 291) == 1)
  {
    v3 = sub_168E0(a2);
  }

  else
  {
    v3 = *(a1 + 496) - ((a2 + -1.0) * *(a1 + 492));
  }

  *(a1 + 488) = v3;
}

uint64_t sub_3BB70(void *a1)
{
  v2 = *(*(a1[52] + 9280) + 343);
  result = (*(*a1 + 1320))(a1);
  if (result)
  {
    if (v2)
    {
      v7 = xmmword_88E90;
      v8 = 1735159650;
      v4 = *(qword_D8DF0 + 144);
      v5 = *v4;
      v6 = (*(*a1[52] + 16))(a1[52]);
      return v5(v4, v6, 2, &v7);
    }
  }

  return result;
}

void sub_3BC74(uint64_t a1, float a2)
{
  v4 = qword_D8550;
  v5 = fabsf(a2);
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 480);
    v7 = 1.0;
    if (v5 >= 0.00000011921)
    {
      v7 = (v6 / a2);
    }

    v9 = 134218496;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Main Volume Scale Factor = %f [MV=%f Vol=%f]", &v9, 0x20u);
  }

  v8 = 1.0;
  if (v5 >= 0.00000011921)
  {
    v8 = *(a1 + 480) / a2;
  }

  *(a1 + 9064) = v8;
}

void sub_3BD88(uint64_t a1, void *a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    v4 = [a2 objectForKeyedSubscript:@"CurrentAudioCategory"];
    v5 = [a2 objectForKeyedSubscript:@"CurrentVolume"];
    v6 = [a2 objectForKeyedSubscript:@"ManualVolumeUpdate"];
    v7 = [a2 objectForKeyedSubscript:@"RampInProgress"];

    sub_13550(v2, v4, v5, v6, v7);
  }
}

void sub_3BE44(uint64_t a1)
{
  if ((*(*a1 + 1320))(a1))
  {
    if (*(a1 + 408) == 1)
    {
      v2 = *(a1 + 208);
      if (v2)
      {
        v3 = qword_D8550;
        if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
        {
          v4 = *(a1 + 480);
          v5 = 134217984;
          v6 = v4;
          _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "A2DPAudioDevice: volume update back to headphone %f", &v5, 0xCu);
          v2 = *(a1 + 208);
        }

        sub_126AC(v2, *(a1 + 480));
      }
    }
  }
}

void sub_3BF48(uint64_t a1, float a2)
{
  v4 = *(*(a1 + 416) + 9280);
  v5 = v4[291];
  if (v4[290])
  {
    if (v4[291])
    {
      v6 = v4[292];
      v7 = sub_169D4(a2);
      if (v6 == 1 && (sub_3C200(*(a1 + 480), v7) & 1) != 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if (v4[291])
  {
    v7 = sub_169D4(a2);
LABEL_8:
    *(a1 + 480) = v7;
    *(a1 + 484) = v7;
    goto LABEL_10;
  }

  *(a1 + 480) = ((*(a1 + 496) - a2) / *(a1 + 492)) + 1.0;
LABEL_10:
  if (_os_feature_enabled_impl())
  {
    v8 = *(a1 + 416);
    if (*(*(v8 + 9280) + 242) == 1)
    {
      sub_6E5D4(v8);
    }
  }

  *(a1 + 488) = a2;
  v9 = [[NSString alloc] initWithFormat:@"%@", sub_5448(a1)];
  v10 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 480);
    v12 = *(a1 + 484);
    v13 = (*(*a1 + 1320))(a1);
    v14 = *(a1 + 408);
    v15 = *(a1 + 500);
    v16 = *(a1 + 504);
    *buf = 134219778;
    v21 = a2;
    v22 = 2048;
    v23 = v11;
    v24 = 2048;
    v25 = v12;
    v26 = 1024;
    v27 = v13;
    v28 = 1024;
    v29 = v14;
    v30 = 2048;
    v31 = v15;
    v32 = 2048;
    v33 = v16;
    v34 = 2114;
    v35 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Audio layer set volume %f, mScalarVolume %f, mScalarRemoteVolume %f, IsVolumeSupported %d, mIsAbsoluteVolume %d L/R : %f/%f Device %{public}@", buf, 0x4Au);
  }

  if ((*(*a1 + 1320))(a1))
  {
    if (*(a1 + 408) == 1)
    {
      v17 = *(a1 + 208);
      if (v17)
      {
        sub_126AC(v17, *(a1 + 480));
      }
    }

    else
    {
      v18 = *(a1 + 400);
      if (v18)
      {
        v19 = atomic_load((v18 + 24));
        if (v19)
        {
          sub_16518(*(a1 + 400), *(a1 + 488));
          *(a1 + 425) = 1;
        }
      }
    }
  }
}

uint64_t sub_3C200(float a1, float a2)
{
  if (a1 == 0.0)
  {
    return 0;
  }

  v4 = vabds_f32(a2, a1);
  if (v4 >= 0.025)
  {
    return 0;
  }

  v5 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134218496;
    v8 = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = v4;
    _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "software volume: Ignore low threashold volume delta: [%f - %f] => %f", &v7, 0x20u);
  }

  return 1;
}

void sub_3C300(uint64_t a1)
{
  if (*(a1 + 425) == 1)
  {
    if ((*(*a1 + 1320))(a1))
    {
      if (*(a1 + 408) == 1)
      {
        v2 = *(a1 + 208);
        if (v2)
        {
          v3 = qword_D8550;
          if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
          {
            v4 = *(a1 + 488);
            v5 = *(a1 + 480);
            v6 = (*(*a1 + 1320))(a1);
            v7 = *(a1 + 408);
            v8 = 134219010;
            v9 = v4;
            v10 = 2048;
            v11 = v5;
            v12 = 1024;
            v13 = v6;
            v14 = 1024;
            v15 = v7;
            v16 = 2114;
            v17 = sub_5448(a1);
            _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Audio layer set volume Update %f, mScalarVolume %f, IsVolumeSupported %d, mIsAbsoluteVolume %d Device %{public}@", &v8, 0x2Cu);
            v2 = *(a1 + 208);
          }

          sub_126AC(v2, *(a1 + 480));
        }
      }
    }
  }
}

uint64_t sub_3C48C(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = 1024;
  }

  else
  {
    v3 = a3 << 7;
  }

  if (a2 == 33023)
  {
    return 480;
  }

  else
  {
    return v3;
  }
}

void sub_3C4B0(uint64_t a1, BOOL a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_12808(v2, a2);
  }
}

void sub_3C4C0(uint64_t a1, BOOL a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_13EE4(v2, a2);
  }
}

void sub_3C4D0(uint64_t a1, const __CFString *a2, int a3, int a4)
{
  if (a2)
  {
    v4 = *(a1 + 208);
    if (v4)
    {

      sub_13CA0(v4, a2, a3, a4);
    }
  }

  else
  {
    v5 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Spatial Audio: Feature updated with no active Now playing App: Dropping", v6, 2u);
    }
  }
}

void sub_3C55C(uint64_t a1, _BOOL4 a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_13808(v2, a2);
  }
}

void sub_3C56C(uint64_t a1, const __CFString *a2, int a3, float a4)
{
  v4 = *(a1 + 208);
  if (v4)
  {
    sub_132DC(v4, a2, a3, a4);
  }
}

void sub_3C57C(uint64_t a1)
{
  if (*(a1 + 9185) == 1)
  {
    v2 = *(a1 + 208);
    if (v2)
    {
      sub_12DAC(v2, 0);
      sub_12CB4(*(a1 + 208), 0);
      sub_131B8(*(a1 + 208), 0);
      sub_12F9C(*(a1 + 208), 0);
      sub_12808(*(a1 + 208), 0);
    }

    *(a1 + 9232) = 0;
  }
}

void sub_3C5F4(uint64_t a1, int value, int a3)
{
  v5 = *(a1 + 208);
  if (v5)
  {
    v6 = value;
    if (a3 == 3 || *(a1 + 9232) == 3)
    {
      sub_12DAC(v5, value);
      goto LABEL_5;
    }

    if (a3 != 8)
    {
      if (a3 == 7)
      {
        if (value)
        {
          v7 = 2;
          goto LABEL_14;
        }

LABEL_13:
        v7 = 0;
        goto LABEL_14;
      }

      if (a3 == 6)
      {
        if (value)
        {
          v7 = 1;
LABEL_14:
          sub_131B8(v5, v7);
          goto LABEL_5;
        }

        goto LABEL_13;
      }

      sub_12CB4(v5, value);
      if (v6)
      {
        goto LABEL_5;
      }

      v5 = *(a1 + 208);
      value = 0;
    }

    sub_12900(v5, value);
  }

LABEL_5:
  *(a1 + 9232) = a3;
}

uint64_t sub_3C6B4(double *a1)
{
  if ((sub_42134() & 1) != 0 && (*(*a1 + 1336))(a1) && !*(a1 + 107))
  {
    v2 = (a1[37] * 0.08);
LABEL_18:
    v13 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 98);
      v15 = *(a1 + 96);
      v16 = *(a1 + 97);
      v19 = 67109888;
      v20 = v2;
      v21 = 1024;
      v22 = v14;
      v23 = 1024;
      v24 = v15;
      v25 = 1024;
      v26 = v16;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "A2DP Returning latency of %d from %d, %d, %d\n", &v19, 0x1Au);
    }

    return v2;
  }

  v3 = (a1[37] * ((*(a1 + 96) + *(a1 + 98)) / 1000000.0));
  if (!(*(*a1 + 296))(a1) || (v4 = qword_D8DF0, v5 = (*(*a1 + 16))(a1), !sub_500F8(v4, v5)))
  {
    v10 = *(qword_D8DF0 + 464);
    if (v10 && [v10 currentRoutedUSBDeviceUID] && (v2 = *(a1 + 2321), v2))
    {
      v11 = qword_D8550;
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 67109376;
        v20 = v3;
        v21 = 1024;
        v22 = v2;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "A2DP USB Overwriting latency from %d to %d due to USBC", &v19, 0xEu);
        v2 = *(a1 + 2321);
      }
    }

    else
    {
      v12 = *(qword_D8DF0 + 464);
      if (v12 && [v12 currentRoutedUSBDeviceUID] && (objc_msgSend(*(qword_D8DF0 + 464), "currentRoutedDeviceIsUnified") & 1) == 0)
      {
        v18 = qword_D8550;
        v2 = 480;
        if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 67109376;
          v20 = v3;
          v21 = 1024;
          v22 = 480;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "A2DP SETUP Overwriting latency from %d to %d due to USBC setting up", &v19, 0xEu);
        }
      }

      else
      {
        v2 = v3;
      }
    }

    goto LABEL_18;
  }

  v6 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 98);
    v8 = *(a1 + 96);
    v9 = *(a1 + 97);
    v19 = 67109888;
    v20 = v3;
    v21 = 1024;
    v22 = v7;
    v23 = 1024;
    v24 = v8;
    v25 = 1024;
    v26 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "A2DP Returning latency of %d from %d, %d, %d\n", &v19, 0x1Au);
  }

  return v3;
}

void sub_3CA04(uint64_t a1, unsigned int a2, float a3)
{
  if ((*(*a1 + 904))(a1))
  {
    *(a1 + 9136) = 0;
    atomic_store(a2, (a1 + 596));
    if (*(a1 + 588) != a3)
    {
      *(a1 + 588) = a3;
    }

    atomic_store(a2 != 0, (a1 + 593));
    v6 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "Not Running";
      if (a2)
      {
        v7 = "Running";
      }

      v8[0] = 67109634;
      v8[1] = a2;
      v9 = 2082;
      v10 = v7;
      v11 = 2048;
      v12 = a3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "audio delivery speed Latency Target %u, Currently running %{public}s, multiplier %f ", v8, 0x1Cu);
    }
  }
}

uint64_t sub_3CB44(uint64_t result, int a2)
{
  if (*(result + 9164) != a2)
  {
    v3 = result;
    *(result + 9164) = a2;
    v10 = 0x676C6F6263737462;
    v11 = 0;
    v8 = 0x676C6F62636C6F6BLL;
    v9 = 0;
    v4 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v5 = "enabled";
      }

      else
      {
        v5 = "disabled";
      }

      v6 = (*(*v3 + 16))(v3);
      *buf = 136446466;
      v13 = v5;
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "mA2dpDynamicClock set to %{public}s for mAudioObjectID %d", buf, 0x12u);
      if (*(v3 + 9164))
      {
        goto LABEL_7;
      }
    }

    else if (a2)
    {
LABEL_7:
      v7 = 1918990199;
LABEL_10:
      *(v3 + 9152) = v7;
      (*(*v3 + 248))(v3, &v8);
      return (*(*v3 + 248))(v3, &v10);
    }

    v7 = 1768518246;
    goto LABEL_10;
  }

  return result;
}

void sub_3CCEC(uint64_t a1, BOOL a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_14008(v2, a2);
  }
}

float sub_3CCFC(float a1, float a2, float a3)
{
  v3 = a1 * 127.0;
  v4 = a2 * 127.0;
  if ((a1 * 127.0) != v4)
  {
    goto LABEL_5;
  }

  if (a1 != 1.0)
  {
    if (a1 == 0.0)
    {
      return -a3;
    }

LABEL_5:
    if (v3 == 0.0)
    {
      v5 = v4 - v3;
      v6 = 1.0;
    }

    else
    {
      v5 = v4 - v3;
      if (v4 != 0.0)
      {
        return v5 * 0.0078125;
      }

      v6 = -1.0;
    }

    v5 = v5 + v6;
    return v5 * 0.0078125;
  }

  return a3;
}

void sub_3CD68(uint64_t a1, float a2)
{
  v4 = *(a1 + 484);
  if (v4 == -1.0)
  {
    *(a1 + 484) = a2;
    v4 = a2;
  }

  if (*(*(*(a1 + 416) + 9280) + 217))
  {
    v5 = 0.0078125;
  }

  else
  {
    v5 = 0.0625;
  }

  v6 = sub_3CCFC(v4, a2, v5);
  v7 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218496;
    v13 = v4;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "software volume: Volume Change: %f -> %f, Delta: %f", &v12, 0x20u);
  }

  *(a1 + 484) = a2;
  *(a1 + 480) = a2;
  if (*(a1 + 408) == 1)
  {
    v8 = sub_5448(a1);
    CFRetain(v8);
    v9 = +[BTAudioAVNotificationMonitor sharedInstance];
    if (v9)
    {
      *&v10 = v6;
      [(BTAudioAVNotificationMonitor *)v9 updateVolumeDelta:v8 uid:v10];
    }
  }

  if (*(*(*(a1 + 416) + 9280) + 291) == 1)
  {
    v11 = sub_168E0(*(a1 + 480));
  }

  else
  {
    v11 = *(a1 + 496) - ((*(a1 + 480) + -1.0) * *(a1 + 492));
  }

  *(a1 + 488) = v11;
}

void sub_3CF00(uint64_t a1, BOOL a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_11D78(v2, a2);
  }
}

uint64_t sub_3CF30(_DWORD *a1, uint64_t a2)
{
  if ((a2 & 0xFE) == 2 && !a1[2308])
  {
    ++a1[2316];
  }

  v4 = sub_686C(a1);
  v5 = 2310;
  if (v4)
  {
    v5 = 2312;
  }

  ++a1[v5];
  v6 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency : Latency Mode %d", v8, 8u);
  }

  return (*(*a1 + 656))(a1, a2);
}

BOOL sub_3D054(_DWORD *a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      ++a1[2315];
    }

    else
    {
      if (a2 != 4)
      {
        return a2 == 8;
      }

      ++a1[2316];
    }

    if (sub_686C(a1))
    {
      ++a1[2312];
    }

    else
    {
      ++a1[2310];
    }

    return 1;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      ++a1[2313];
LABEL_13:
      if (sub_686C(a1))
      {
        ++a1[2311];
      }

      else
      {
        ++a1[2309];
      }

      return 1;
    }

    if (a2 == 2)
    {
      ++a1[2314];
      goto LABEL_13;
    }

    return 0;
  }

  else
  {
    result = sub_686C(a1);
    if (result)
    {
      result = 0;
      ++a1[2312];
    }

    else
    {
      ++a1[2310];
    }
  }

  return result;
}

void sub_3D184(uint64_t a1, int a2)
{
  if (*(a1 + 9160) == 33023)
  {
    *(a1 + 9165) = 0;
    if (a2 == 3)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
      *(a1 + 9168) = 3;
      if ((*(a1 + 9124) - 1) < 2)
      {
        if (sub_686C(a1))
        {
          *(a1 + 9176) = mach_absolute_time();
          *(a1 + 9165) = 1;
          goto LABEL_11;
        }

        v5 = *(a1 + 9165);
        *(a1 + 9124) = 3;
        *(a1 + 9168) = 3;
        if (v5)
        {
LABEL_11:
          v4 = qword_D8550;
          if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEBUG))
          {
            sub_7CB60((a1 + 9165), a1, v4);
          }

          return;
        }

LABEL_10:
        (*(*a1 + 752))(a1, *(a1 + 9124));
        goto LABEL_11;
      }
    }

    *(a1 + 9124) = v3;
    *(a1 + 9168) = v3;
    goto LABEL_10;
  }
}

uint64_t sub_3D2A0(uint64_t result)
{
  if (*(result + 9165) == 1)
  {
    v1 = result;
    info = 0;
    mach_timebase_info(&info);
    result = mach_absolute_time();
    if ((((result - *(v1 + 9176)) * info.numer / info.denom / 0x3E8) / 1000.0) >= 100.0)
    {
      *(v1 + 9176) = 0;
      *(v1 + 9165) = 0;
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEBUG))
      {
        sub_7CC14(v1);
      }

      *(v1 + 9124) = *(v1 + 9168);
      return (*(*v1 + 752))(v1);
    }
  }

  return result;
}

BOOL sub_3D3B8(_DWORD *a1, unsigned int a2, unint64_t a3)
{
  if (!a1[2290])
  {
    return (a1[2281] * a1[2280]) < a3;
  }

  v5 = a1[2282];
  if (v5 < a2)
  {
    v6 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109376;
      v8[1] = a2;
      v9 = 1024;
      v10 = v5;
      _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Higher than expected frameCount: Sending (%d > %d) A2DP frames in BT packet", v8, 0xEu);
      v5 = a1[2282];
    }
  }

  return v5 <= a2;
}

uint64_t sub_3D4AC(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = 1;
  if (*a2 <= 1684234611)
  {
    if (v2 > 1668050794)
    {
      if (v2 == 1668050795 || v2 == 1668510818)
      {
        return v3;
      }
    }

    else if (v2 == 1633972065 || v2 == 1651798132)
    {
      return *(a1 + 9185);
    }
  }

  else
  {
    if (v2 <= 1685484389)
    {
      if (v2 == 1684234612)
      {
        if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEBUG))
        {
          sub_77114();
        }

        return 1;
      }

      v4 = 1684826732;
    }

    else
    {
      if (v2 == 1685484390)
      {
        return v3;
      }

      if (v2 == 1818326127)
      {
        return sub_42134();
      }

      v4 = 1819241569;
    }

    if (v2 == v4)
    {
      return *(a1 + 9185);
    }
  }

  return sub_6FE8();
}

uint64_t sub_3D5EC(uint64_t a1, int *a2, _BYTE *a3)
{
  v4 = *a2;
  if (*a2 > 1668510817)
  {
    if (v4 <= 1685484389)
    {
      if (v4 != 1668510818)
      {
        if (v4 == 1684234612)
        {
          v7 = qword_D8550;
          if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
          {
            *v8 = 0;
            _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "kBluetoothAudioDeviceCategory", v8, 2u);
          }

          goto LABEL_17;
        }

        v5 = 1684826732;
        goto LABEL_16;
      }

LABEL_17:
      *a3 = 0;
      return 0;
    }

    if (v4 == 1685484390)
    {
      goto LABEL_17;
    }

    if (v4 != 1818326127 && v4 != 1819241569)
    {
      goto LABEL_22;
    }

LABEL_18:
    *a3 = 1;
    return 0;
  }

  if (v4 <= 1634038356)
  {
    if (v4 != 1633972065)
    {
      v5 = 1634038341;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (v4 == 1634038357 || v4 == 1651798132)
  {
    goto LABEL_17;
  }

  v5 = 1668050795;
LABEL_16:
  if (v4 == v5)
  {
    goto LABEL_17;
  }

LABEL_22:

  return sub_6FF0();
}

uint64_t sub_3D770(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *a2;
  if (*a2 <= 1668510817)
  {
    if (v6 <= 1634038356)
    {
      if (v6 != 1633972065)
      {
        v7 = 1634038341;
        goto LABEL_15;
      }

LABEL_16:
      v8 = 4;
LABEL_19:
      *a5 = v8;
      return 0;
    }

    if (v6 != 1634038357)
    {
      if (v6 == 1651798132)
      {
        v8 = 40;
        goto LABEL_19;
      }

      v7 = 1668050795;
      goto LABEL_15;
    }

LABEL_17:
    v8 = 8;
    goto LABEL_19;
  }

  if (v6 > 1684826731)
  {
    if (v6 == 1684826732)
    {
      goto LABEL_16;
    }

    if (v6 != 1685484390)
    {
      v7 = 1819241569;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (v6 == 1668510818)
  {
    goto LABEL_16;
  }

  if (v6 == 1668641652)
  {
    result = sub_6FF8();
    *a5 += 72;
    return result;
  }

  v7 = 1684234612;
LABEL_15:
  if (v6 == v7)
  {
    goto LABEL_16;
  }

  return sub_6FF8();
}

uint64_t sub_3D8BC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, double *a5, int a6, int *a7, uint64_t a8)
{
  v12 = (a1 + 0x2000);
  v13 = *a2;
  if (*a2 <= 1668641651)
  {
    if (v13 > 1651798131)
    {
      if (v13 != 1651798132)
      {
        if (v13 == 1668050795)
        {
          result = 0;
          v15 = *(a1 + 9152);
          goto LABEL_58;
        }

        if (v13 == 1668510818)
        {
          result = 0;
          v15 = v12[972] ^ 1;
          goto LABEL_58;
        }

        goto LABEL_61;
      }

      v28 = (a1 + 9192);
      __asm { FMOV            V0.2D, #1.0 }

      *(a1 + 9216) = _Q0;
      *(a1 + 9200) = (*(*a1 + 1144))(a1);
      *(a1 + 9192) = (*(*a1 + 1120))(a1);
      v34 = (*(*a1 + 1144))(a1);
      v35 = sub_3DDC8(a1);
      result = 0;
      *(a1 + 9208) = v34 - v35;
      v36 = *(a1 + 9208);
      v37 = *(a1 + 9224);
      *a8 = *v28;
      *(a8 + 16) = v36;
      *(a8 + 32) = v37;
      v21 = 40;
LABEL_59:
      *a7 = v21;
      return result;
    }

    if (v13 == 1633972065)
    {
      result = 0;
      v15 = v12[1076];
      goto LABEL_58;
    }

    if (v13 == 1634038341)
    {
      result = 0;
      v15 = v12[1088];
      goto LABEL_58;
    }

    if (v13 != 1634038357)
    {
      goto LABEL_61;
    }

    v16 = sub_3DED8(a1);
    v17 = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    result = 0;
    *a8 = v17;
LABEL_26:
    v21 = 8;
    goto LABEL_59;
  }

  if (v13 > 1685484389)
  {
    if (v13 > 1819241568)
    {
      if (v13 == 1819241569)
      {
        result = 0;
        v15 = v12[993];
        goto LABEL_58;
      }

      if (v13 == 1819569763)
      {
        v15 = (*(*a1 + 848))(a1);
        result = 0;
        goto LABEL_58;
      }

      goto LABEL_61;
    }

    if (v13 != 1685484390)
    {
      if (v13 == 1818326127)
      {
        result = 0;
        v15 = *(a1 + 428);
LABEL_58:
        *a8 = v15;
        v21 = 4;
        goto LABEL_59;
      }

      goto LABEL_61;
    }

    v18 = *(a1 + 492);
    v19 = *(a1 + 496);
    v20 = sub_16A2C(*a5, *(a1 + 480));
    result = 0;
    *a8 = fmin(v20, 1.0);
    goto LABEL_26;
  }

  switch(v13)
  {
    case 1668641652:
      result = sub_7000();
      if (result)
      {
        return result;
      }

      v22 = *a7;
      if ((a6 - v22) <= 0x53)
      {
        v23 = (a6 - v22) / 0xCu;
      }

      else
      {
        v23 = 6;
      }

      if (!v12[993])
      {
        v23 -= 4;
      }

      if (!v23)
      {
LABEL_52:
        result = 0;
        v21 = v22 + 12 * v23;
        goto LABEL_59;
      }

      v24 = 0;
      v25 = (a8 + v22);
      while (1)
      {
        if (v24 > 2)
        {
          switch(v24)
          {
            case 3:
              v25[9] = 1651798132;
              v26 = v25 + 10;
              v27 = v25 + 11;
              goto LABEL_49;
            case 4:
              v25[12] = 1819241569;
              v26 = v25 + 13;
              v27 = v25 + 14;
              goto LABEL_49;
            case 5:
              v25[15] = 1684826732;
              v26 = v25 + 16;
              v27 = v25 + 17;
              goto LABEL_49;
          }
        }

        else
        {
          switch(v24)
          {
            case 0:
              *v25 = 1684234612;
              v26 = v25 + 1;
              v27 = v25 + 2;
              goto LABEL_49;
            case 1:
              v25[3] = 1685484390;
              v26 = v25 + 4;
              v27 = v25 + 5;
              goto LABEL_49;
            case 2:
              v25[6] = 1633972065;
              v26 = v25 + 7;
              v27 = v25 + 8;
LABEL_49:
              *v26 = 1918990199;
              *v27 = 0;
              break;
          }
        }

        if (v23 == ++v24)
        {
          LODWORD(v22) = *a7;
          goto LABEL_52;
        }
      }

    case 1684234612:
      result = 0;
      v15 = *(a1 + 9104);
      goto LABEL_58;
    case 1684826732:
      result = 0;
      v15 = *(a1 + 9188);
      goto LABEL_58;
  }

LABEL_61:

  return sub_7000();
}

uint64_t sub_3DDC8(uint64_t a1)
{
  v2 = (a1 + 0x2000);
  v3 = *(a1 + 9188);
  if (_os_feature_enabled_impl() && (v2[1088] & 1) != 0)
  {
    v3 = 10;
  }

  if (v2[964])
  {
    v5 = *(a1 + 588);
    v6 = v3;
    v4 = v2[964];
    v7 = ((*(*a1 + 888))(a1) * v4) / 100.0;
    if (v5 <= 1.0)
    {
      v8 = v7 + v6;
    }

    else
    {
      v8 = v6 - v7;
    }

    v3 = v8;
  }

  if (sub_42134() && v2[993] == 1 && !*(a1 + 428))
  {
    v3 -= 80;
  }

  return (*(a1 + 296) * (v3 & ~(v3 >> 31)) / 1000.0);
}

uint64_t sub_3DED8(uint64_t a1)
{
  v2 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 9272);
    if (!v3)
    {
      v3 = &stru_B24D0;
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "GetLosslessUSBID %@", &v5, 0xCu);
  }

  return *(a1 + 9272);
}

uint64_t sub_3DF90(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int *a6)
{
  v7 = a1 + 0x2000;
  v8 = *a2;
  if (*a2 == 1819241569)
  {
    if (a5 <= 3)
    {
      v9 = 561211770;
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_ERROR))
      {
        sub_7CCC0();
      }

      return v9;
    }

    v14 = *a6;
    v15 = sub_3D054(a1, *a6);
    if (*(v7 + 993) == 1)
    {
      v16 = v15;
      v17 = qword_D8550;
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
      {
        v18 = "disabled";
        if (v16)
        {
          v18 = "enabled";
        }

        v23 = 136315394;
        *v24 = v18;
        *&v24[8] = 1024;
        v25 = v14;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "A2DP Low Latency Mode %s, Latency Category:%d", &v23, 0x12u);
      }

      (*(*a1 + 576))(a1, v16, v14);
    }

    return 0;
  }

  if (v8 == 1818326127)
  {
    if (a5 > 3)
    {
      v11 = *a6;
      v12 = qword_D8550;
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 428);
        v23 = 67109376;
        *v24 = v13;
        *&v24[4] = 1024;
        *&v24[6] = v11;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Setting Audio Latency Override, from %u to %u", &v23, 0xEu);
      }

      v9 = 0;
      *(a1 + 428) = v11;
    }

    else
    {
      v9 = 561211770;
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_ERROR))
      {
        sub_7CC8C();
      }
    }

    return v9;
  }

  if (v8 == 1633972065)
  {
    if (a5 <= 3)
    {
      v9 = 561211770;
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_ERROR))
      {
        sub_7CCF4();
      }

      return v9;
    }

    v19 = *a6;
    v20 = *a6 != 0;
    *(a1 + 9268) = v20;
    if (*(a1 + 9185) == 1)
    {
      v21 = qword_D8550;
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
      {
        v22 = "disabled";
        if (v19)
        {
          v22 = "enabled";
        }

        v23 = 136315138;
        *v24 = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "A2DP Bluetooth and Output aggregation Mode %s", &v23, 0xCu);
        v20 = *(v7 + 1076);
      }

      (*(*a1 + 704))(a1, v20 & 1);
    }

    return 0;
  }

  return sub_7008();
}
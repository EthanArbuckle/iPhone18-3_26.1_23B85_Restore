void sub_64064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_640A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 + 0x2000;
  if (*(a1 + 9288) == a2 && *(a1 + 9296) == a3)
  {
    v8 = *(a1 + 9305);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1C00(a1, a3);
  v10 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 9080);
    v11.i32[0] = *(a1 + 9288);
    v13 = vrev64_s16(*&vmovl_u8(v11));
    v14 = vuzp1_s8(v13, v13);
    v39 = v14.i32[0];
    v40 = 0;
    v37[0] = BYTE3(a2);
    v37[1] = BYTE2(a2);
    v37[2] = BYTE1(a2);
    v38 = a2;
    v14.i32[0] = *(a1 + 9296);
    v15 = vrev64_s16(*&vmovl_u8(v14));
    v35 = vuzp1_s8(v15, v15).u32[0];
    v36 = 0;
    v34[0] = BYTE3(v9);
    v34[1] = BYTE2(v9);
    v34[2] = BYTE1(v9);
    v34[3] = v9;
    v34[4] = 0;
    sub_9490(a4, __p);
    *buf = 138544642;
    v16 = v33 >= 0 ? __p : __p[0];
    *&buf[4] = v12;
    *&buf[12] = 2082;
    *&buf[14] = &v39;
    v42 = 2082;
    v43 = v37;
    v44 = 2082;
    v45 = &v35;
    v46 = 2082;
    v47 = v34;
    v48 = 2082;
    v49 = v16;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Request For route Change: [%{public}@ ] profile %{public}s => %{public}s reason %{public}s = > %{public}s Calculated Transition:  %{public}s ", buf, 0x3Eu);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (_os_feature_enabled_impl())
  {
    v17 = sub_6C7C0(a1, a2, v9);
    if (v17 == 2)
    {
      return 1;
    }

    if (v17 == 1)
    {
      return 0;
    }
  }

  v18 = *(*(a1 + 9280) + 352);
  v20 = a2 == 1953719151 && v9 != 1936090482;
  v21 = _os_feature_enabled_impl();
  result = 0;
  v23 = v9 != 1919312242 && v20;
  if (v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = v20;
  }

  *(*(a1 + 9280) + 352) = v18 & 0xFFFFFFFE | *&v24 & ((v18 & 4) >> 2);
  if (a2 > 1952539499)
  {
    switch(a2)
    {
      case 0x7473636F:
        if (!*(a1 + 9096))
        {
          return 0;
        }

        break;
      case 0x746C6561:
        if (!*(a1 + 9120))
        {
          return 0;
        }

        break;
      case 0x7461636C:
        if (!*(a1 + 9088))
        {
          return 0;
        }

        break;
      default:
        return result;
    }

LABEL_37:
    if (v8)
    {
      v26 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "ForceRouteChange step2 VA notified BT, requestConfigChange to switch format", buf, 2u);
      }

      *buf = 0;
      *&buf[8] = 0;
      sub_70AF4(buf, a1 + 600);
      *(v7 + 1112) = 1;
      sub_70BD4(buf);
      sub_6CB28(a1, 1718772584, 0);
      *(v7 + 1113) = 0;
    }

    else
    {
      sub_6C4A8(a1, a2, v9, a4);
      *buf = 0;
      *&buf[8] = 0;
      sub_70AF4(buf, a1 + 600);
      *(v7 + 1112) = 1;
      v27 = (*(*a1 + 16))(a1);
      sub_70BD4(buf);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_6CA84;
      v28[3] = &unk_AE9B8;
      v29 = v27;
      v30 = a2;
      v31 = v9;
      sub_507D8(qword_D8DF0, v27, v28);
    }

    sub_70C40(buf);
    return 1;
  }

  if (a2 == 1818583905)
  {
    if (!*(a1 + 9128))
    {
      return 0;
    }

    goto LABEL_37;
  }

  if (a2 == 1952538980)
  {
    v25 = qword_D8590;
    result = os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "RequestRouteChange, logging for kBluetoothAudioDeviceTypeA3D", buf, 2u);
      return 0;
    }
  }

  return result;
}

void sub_6454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6456C(void *a1, int a2, int a3)
{
  v3 = *(a1[1160] + 222);
  if (v3 != 1)
  {
    return 0;
  }

  if (a3 != 1919183219 && a1[1162] != 1919183219)
  {
    v4 = 1952539500;
    if (a2 == 1953719151)
    {
      v5 = 3;
LABEL_9:
      if (a1[1161] == v4)
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    if (a2 == 1952539500)
    {
      v5 = 2;
      v4 = 1953719151;
      goto LABEL_9;
    }

    return 0;
  }

  return v3;
}

void sub_645F0(uint64_t a1)
{
  v2 = sub_508C0(qword_D8DF0, *(a1 + 32));
  if (v2)
  {
    v3 = v2[1160];
    v4 = *(a1 + 36);
    v5 = *(a1 + 44);

    sub_33D00(v3, v4, v5);
  }

  else
  {
    v6 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "UpdateSpatialAudioQueueInfo update dispatched after disconnection", v7, 2u);
    }
  }
}

void sub_6469C(void *a1, uint64_t a2, int a3, float a4)
{
  if (_os_feature_enabled_impl())
  {
    v8 = +[BTAudioAVNotificationMonitor sharedInstance];
    v9 = v8;
    v10 = v8 ? [(BTAudioAVNotificationMonitor *)v8 nowPlayingBundleID]: &stru_B24D0;
    if (a3 == 5 || a3 == 3)
    {
      v18[0] = a2;
      v17[0] = @"CurrentAudioCategory";
      v17[1] = @"CurrentVolume";
      v18[1] = [NSNumber numberWithInt:(a4 * 100.0)];
      v18[2] = &off_B3758;
      v17[2] = @"IsPersonalizedVolumeUpdate";
      v17[3] = @"ManualVolumeUpdate";
      if (*(a1[1136] + 192))
      {
        v11 = a1[1136];
      }

      else
      {
        v11 = 0;
      }

      v18[3] = [NSNumber numberWithInt:((*(*v11 + 952))() * 100.0)];
      v17[4] = @"RampInProgress";
      v18[4] = [NSNumber numberWithBool:1];
      v17[5] = @"PersonalizedVolumeEnabled";
      v18[5] = [NSNumber numberWithInt:*(a1[1160] + 229) == 1];
      v18[6] = v10;
      v17[6] = @"BundleID";
      v17[7] = @"ReasonForManualUpdate";
      v18[7] = @"PersonalizedVolume";
      v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:8];
      if (v9)
      {
        v13 = v12;
        v14 = a1[1135];
        v15 = v14;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_6B6E4;
        v16[3] = &unk_B15F8;
        v16[4] = v9;
        v16[5] = v14;
        v16[6] = v13;
        dispatch_async([(BTAudioAVNotificationMonitor *)v9 manualVolumeUpdatesQueue], v16);
      }
    }
  }
}

uint64_t sub_64930(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 objectForKey:{@"profileType", "unsignedIntValue"}];
  v5 = [objc_msgSend(a2 objectForKey:{@"Reason", "unsignedIntValue"}];
  v6 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 9080);
    v16[0] = HIBYTE(v4);
    v16[1] = BYTE2(v4);
    v16[2] = BYTE1(v4);
    v16[3] = v4;
    v16[4] = 0;
    v15[0] = HIBYTE(v5);
    v15[1] = BYTE2(v5);
    v15[2] = BYTE1(v5);
    v15[3] = v5;
    v15[4] = 0;
    *buf = 138543874;
    v18 = v7;
    v19 = 2082;
    v20 = v16;
    v21 = 2082;
    v22 = v15;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Request Out of Band Audio : [%{public}@ ] profile %{public}s reason %{public}s ", buf, 0x20u);
  }

  v8 = *(a1 + 9096);
  if (!v8)
  {
    return 0;
  }

  v9 = v8[192] == 1 && v4 == 1953719151;
  if (!v9 || v5 == 1919183219)
  {
    return 0;
  }

  v13 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Out of Band Audio : request Audio in OoB", buf, 2u);
    if (*(*(a1 + 9096) + 192))
    {
      v8 = *(a1 + 9096);
    }

    else
    {
      v8 = 0;
    }
  }

  v11 = 1;
  *(a1 + 9504) = 1;
  if ((*(*v8 + 256))(v8, 1, v5, 1))
  {
    sub_69534(a1);
  }

  return v11;
}

BOOL sub_64B48(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  v4 = *a3;
  if (*a3 <= 1935762291)
  {
    if (v4 > 1870098019)
    {
      v5 = v4 == 1870098020 || v4 == 1885762592;
      v6 = 1885762657;
    }

    else
    {
      v5 = v4 == 1650682995 || v4 == 1668047219;
      v6 = 1819569763;
    }
  }

  else if (v4 <= 1936092512)
  {
    v5 = v4 == 1935762292 || v4 == 1935894638;
    v6 = 1935960434;
  }

  else if (v4 > 1937007733)
  {
    v5 = v4 == 1952805485;
    v6 = 1937007734;
  }

  else
  {
    v5 = v4 == 1936092513;
    v6 = 1936092532;
  }

  if (v5 || v4 == v6)
  {
    return a3[1] == 1735159650 && a3[2] == 0;
  }

  return result;
}

uint64_t sub_64C5C(uint64_t a1, uint64_t a2)
{
  if (!_os_feature_enabled_impl() || *(a2 + 9444) != 1)
  {
    return 0;
  }

  return sub_7082C();
}

void sub_64CC4(uint64_t a1)
{
  v1 = *(a1 + 9096);
  if (!v1 || *(v1 + 192) != 1 || !*(v1 + 9328))
  {
    return;
  }

  v3 = a1 + 0x2000;
  if (*(v1 + 9436) & 1) != 0 || _os_feature_enabled_impl() && *(v1 + 9444) == 1 && (sub_7082C())
  {
    if ((*(v1 + 9340) & 0xFFFFFFFE) == 0x80)
    {
LABEL_12:
      *(v3 + 1145) = 0;
      goto LABEL_20;
    }

    v4 = (v3 + 1145);
    v5 = 771;
    goto LABEL_19;
  }

  v6 = *(a1 + 9280);
  if (*(v6 + 216))
  {
    if ((*(v1 + 9340) | 0x100) == 0x100)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*(v6 + 221))
    {
      v7 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v1 + 9437);
        v17 = 67109120;
        v18 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "HFPStereo game with Call %d", &v17, 8u);
      }

      if ((*(v1 + 9437) & 1) == 0)
      {
        if (*(v1 + 9340) == 130)
        {
          goto LABEL_12;
        }

        v4 = (v3 + 1145);
        v5 = 1028;
        goto LABEL_19;
      }
    }

    if (sub_42134())
    {
      goto LABEL_20;
    }
  }

  v4 = (v3 + 1145);
  v5 = 257;
LABEL_19:
  *v4 = v5;
LABEL_20:
  v9 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v3 + 1145);
    v11 = *(v3 + 1146);
    v12 = *(*(a1 + 9280) + 221);
    if (_os_feature_enabled_impl())
    {
      v13 = *(v1 + 9444);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(*(a1 + 9280) + 216);
    v15 = *(v1 + 9436);
    v16 = *(v1 + 9340);
    v17 = 67110656;
    v18 = v10;
    v19 = 1024;
    v20 = v11;
    v21 = 1024;
    v22 = v12;
    v23 = 1024;
    v24 = v13;
    v25 = 1024;
    v26 = v14;
    v27 = 1024;
    v28 = v15;
    v29 = 1024;
    v30 = v16;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "HFP Codec selected %u/%u, game %d, farfield %d, hid %d, sfer %d, currCodec %u", &v17, 0x2Cu);
  }
}

uint64_t sub_64F18(uint64_t a1, uint64_t a2, int *a3, char *a4)
{
  v4 = 0;
  v5 = *a3;
  result = 2003332927;
  if (*a3 > 1935762291)
  {
    if (v5 > 1936092512)
    {
      if (v5 <= 1937007733)
      {
        if (v5 != 1936092513)
        {
          if (v5 != 1936092532)
          {
            return result;
          }

          goto LABEL_22;
        }

LABEL_26:
        result = 0;
        *a4 = v4;
        return result;
      }

      if (v5 == 1937007734)
      {
        goto LABEL_26;
      }

      v9 = 1952805485;
LABEL_25:
      if (v5 != v9)
      {
        return result;
      }

      goto LABEL_26;
    }

    if (v5 != 1935762292)
    {
      if (v5 == 1935894638)
      {
        goto LABEL_26;
      }

      v9 = 1935960434;
      goto LABEL_25;
    }

LABEL_22:
    v4 = 1;
    goto LABEL_26;
  }

  if (v5 > 1870098019)
  {
    if (v5 == 1870098020)
    {
      goto LABEL_26;
    }

    if (v5 != 1885762592)
    {
      v9 = 1885762657;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v5 == 1650682995 || v5 == 1668047219 || v5 == 1819569763)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_65044(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v8 = *a3;
  v9 = 4;
  result = 2003332927;
  if (*a3 <= 1935762291)
  {
    if (v8 > 1853059618)
    {
      if (v8 <= 1885762591)
      {
        if (v8 == 1853059619)
        {
          v9 = 16 * (*(*a1 + 1264))(a1);
        }

        else
        {
          if (v8 != 1870098020)
          {
            return result;
          }

          v9 = 0;
        }

        goto LABEL_33;
      }

      if (v8 != 1885762592)
      {
        if (v8 != 1885762657)
        {
          return result;
        }

        goto LABEL_27;
      }

      goto LABEL_31;
    }

    v11 = v8 == 1650682995 || v8 == 1668047219;
    v12 = 1819569763;
    goto LABEL_20;
  }

  if (v8 <= 1936092512)
  {
    v11 = v8 == 1935762292 || v8 == 1935894638;
    v12 = 1935960434;
LABEL_20:
    if (v11 || v8 == v12)
    {
      goto LABEL_33;
    }

    return result;
  }

  if (v8 > 1937007733)
  {
    if (v8 == 1937007734 || v8 == 1952805485)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v8 == 1936092513)
    {
LABEL_27:
      v14 = sub_F7EC(a2);
      v9 = 56 * (*(*a1 + 1248))(a1, v14);
LABEL_33:
      result = 0;
      *a6 = v9;
      return result;
    }

    if (v8 == 1936092532)
    {
LABEL_31:
      v9 = 40;
      goto LABEL_33;
    }
  }

  return result;
}

uint64_t sub_65234(void *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int *a8, uint64_t a9)
{
  v11 = *a3;
  v12 = 2003332927;
  if (*a3 <= 1935762291)
  {
    if (v11 > 1870098019)
    {
      if (v11 == 1870098020)
      {
        v12 = 0;
        *a8 = 0;
        return v12;
      }

      if (v11 == 1885762592)
      {
        goto LABEL_31;
      }

      if (v11 != 1885762657)
      {
        return v12;
      }

      goto LABEL_23;
    }

    switch(v11)
    {
      case 1650682995:
        if (a7 <= 3)
        {
          v12 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80B20();
          }

          return v12;
        }

        v12 = 0;
        v21 = 1634689642;
        break;
      case 1668047219:
        if (a7 <= 3)
        {
          v12 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80AEC();
          }

          return v12;
        }

        v12 = 0;
        v21 = 1634956402;
        break;
      case 1819569763:
        if (a7 > 3)
        {
LABEL_54:
          v12 = 0;
          *a9 = 0;
LABEL_63:
          v16 = 4;
          goto LABEL_64;
        }

        v12 = 561211770;
        if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          return v12;
        }

LABEL_13:
        sub_809E8();
        return v12;
      default:
        return v12;
    }

LABEL_60:
    *a9 = v21;
    goto LABEL_63;
  }

  if (v11 <= 1936092512)
  {
    switch(v11)
    {
      case 1935762292:
        if (a7 <= 3)
        {
          v12 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80A84();
          }

          return v12;
        }

        v12 = 0;
        v21 = *(a2 + 12);
        break;
      case 1935894638:
        if (a7 <= 3)
        {
          v12 = 561211770;
          if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            return v12;
          }

          goto LABEL_13;
        }

        v12 = 0;
        v21 = 1;
        break;
      case 1935960434:
        if (a7 <= 3)
        {
          v12 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80A50();
          }

          return v12;
        }

        v20 = sub_F7EC(a2);
        goto LABEL_62;
      default:
        return v12;
    }

    goto LABEL_60;
  }

  if (v11 > 1937007733)
  {
    if (v11 != 1937007734)
    {
      if (v11 != 1952805485)
      {
        return v12;
      }

      if (a7 <= 3)
      {
        v12 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80A1C();
        }

        return v12;
      }

      goto LABEL_54;
    }

    if (a7 <= 3)
    {
      v12 = 561211770;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_80AB8();
      }

      return v12;
    }

    v20 = (*(*a1 + 16))(a1);
LABEL_62:
    v12 = 0;
    *a9 = v20;
    goto LABEL_63;
  }

  if (v11 == 1936092513)
  {
LABEL_23:
    if (a7 <= 0x37)
    {
      v12 = 561211770;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_8094C();
      }

      return v12;
    }

    v13 = a7 / 0x38uLL;
    v14 = sub_F7EC(a2);
    v15 = (*(*a1 + 1256))(a1, a9, v13, v14);
    v12 = 0;
    v16 = 56 * v15;
LABEL_64:
    *a8 = v16;
    return v12;
  }

  if (v11 != 1936092532)
  {
    return v12;
  }

LABEL_31:
  if (a7 <= 0x27)
  {
    v12 = 561211770;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_809B4();
    }

    return v12;
  }

  v17 = a1[1142];
  if (v17)
  {
    if (v17[192] != 1)
    {
      return 0;
    }

    v18 = sub_F7EC(a2);
    (*(*v17 + 824))(v23, v17, v18);
    v12 = 0;
    v19 = v23[1];
    *a9 = v23[0];
    *(a9 + 16) = v19;
    *(a9 + 32) = v24;
    v16 = 40;
    goto LABEL_64;
  }

  v12 = 1937010544;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
  {
    sub_80980();
  }

  return v12;
}

uint64_t sub_65740(void *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v10 = *a3;
  if (*a3 == 1885762592 || v10 == 1936092532)
  {
    if (a6 != 40)
    {
      v14 = 561211770;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_80B54();
      }

      return v14;
    }

    if (*(a7 + 8) != 1819304813)
    {
      v14 = 560226676;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_80B88();
      }

      return v14;
    }

    v13 = a1[1142];
    if (!v13)
    {
      v14 = 1937010544;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_80BBC();
      }

      return v14;
    }

    v14 = 1852797029;
    if (v13[192] != 1)
    {
      return v14;
    }

    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v16 = sub_F7EC(a2);
    (*(*v13 + 824))(&v31, v13, v16);
    v17 = *&v31;
    v18 = *a7;
    v19 = a1[1142];
    v20 = sub_F7EC(a2);
    v21 = (*(*v19 + 1296))(v19, v20, v17, v18);
    v22 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = a8;
      *&buf[8] = 2048;
      *&buf[10] = v17;
      *&buf[18] = 2048;
      *&buf[20] = v18;
      *&buf[28] = 1024;
      *&buf[30] = v21;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[ %d ] Request for physical format change %f -> %f format change supported %d", buf, 0x22u);
    }

    if (v21)
    {
      *buf = v31;
      *&buf[16] = v32;
      *&buf[32] = v33;
      v23 = *(a7 + 16);
      v29[0] = *a7;
      v29[1] = v23;
      v30 = *(a7 + 32);
      v24 = sub_F7EC(a2);
      if (((*(*a1 + 1304))(a1, buf, v29, v24) & 1) == 0)
      {
        v27 = qword_D8590;
        v14 = 0;
        if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          return v14;
        }

        *buf = 0;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Requesting For same format as current, nothing to do", buf, 2u);
        return 0;
      }

      v25 = qword_D8590;
      if (v18 != v17)
      {
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v18;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "kAudioDevicePropertyNominalSampleRate %f", buf, 0xCu);
        }

        (*(*a1 + 240))(a1, 1853059700, v18);
        return 0;
      }
    }

    else
    {
      v25 = qword_D8590;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "We do not support changing to this format at this moment", buf, 2u);
    }

    return v14;
  }

  if (v10 != 1935762292)
  {
    return 2003332927;
  }

  if (a6 == 4)
  {
    v26 = *a7 != 0;
    if (*(a2 + 12) != v26)
    {
      v14 = 0;
      *(a2 + 12) = v26;
      return v14;
    }

    return 0;
  }

  v14 = 561211770;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
  {
    sub_808E4();
  }

  return v14;
}

BOOL sub_65BC0(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(a1 + 9176) && *(a1 + 9288) == 1953719151)
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = v6 == (*(**(a1 + 9176) + 16))(*(a1 + 9176));
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 9160))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = v8 == (*(**(a1 + 9160) + 16))(*(a1 + 9160));
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 9168))
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = v10 == (*(**(a1 + 9168) + 16))(*(a1 + 9168));
  }

  else
  {
    v11 = 0;
  }

  v12 = *a3;
  if (*a3 <= 1818453109)
  {
    if (v12 > 1668047218)
    {
      if (v12 != 1668047219 && v12 != 1668506480)
      {
        result = 0;
        if (v12 != 1818453106)
        {
          return result;
        }

        goto LABEL_27;
      }
    }

    else if (v12 != 1650682995)
    {
      if (v12 != 1650685548)
      {
        result = 0;
        v14 = 1667591277;
        goto LABEL_31;
      }

      if (!v11)
      {
        return 0;
      }

LABEL_34:
      v15 = a3[1];
      v16 = 1869968496;
LABEL_35:
      if (v15 == v16)
      {
        return a3[2] == 0;
      }

      return 0;
    }

LABEL_32:
    v15 = a3[1];
    v16 = 1735159650;
    goto LABEL_35;
  }

  if (v12 <= 1935892840)
  {
    if (v12 != 1818453110 && v12 != 1818456950)
    {
      result = 0;
      v14 = 1870098020;
      goto LABEL_31;
    }

LABEL_27:
    if (!v9)
    {
      return 0;
    }

    goto LABEL_34;
  }

  if (v12 > 1935894893)
  {
    result = v7;
    if (v12 == 1935894894)
    {
      return result;
    }

    result = 0;
    v14 = 1937007734;
LABEL_31:
    if (v12 != v14)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (v12 == 1935892841)
  {
    return v7;
  }

  result = 0;
  if (v12 == 1935893353)
  {
    return v7;
  }

  return result;
}

uint64_t sub_65EC0(void **a1, uint64_t a2, int *a3, char *a4)
{
  if (a1[1147])
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = v8 == (*(*a1[1147] + 16))(a1[1147]);
  }

  else
  {
    v9 = 0;
  }

  if (a1[1145])
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = v10 == (*(*a1[1145] + 16))(a1[1145]);
  }

  else
  {
    v11 = 0;
  }

  if (a1[1146])
  {
    v12 = (*(*a2 + 16))(a2);
    v13 = v12 == (*(*a1[1146] + 16))(a1[1146]);
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  result = 2003332927;
  v16 = *a3;
  if (*a3 > 1818456931)
  {
    if (v16 <= 1935892840)
    {
      if (v16 == 1818456932)
      {
        goto LABEL_29;
      }

      if (v16 == 1818456950)
      {
        goto LABEL_37;
      }

      v17 = 1870098020;
    }

    else
    {
      if (v16 <= 1935894893)
      {
        if (v16 != 1935892841)
        {
          if (v16 != 1935893353)
          {
            return result;
          }

          v14 = v9;
        }

        goto LABEL_39;
      }

      if (v16 == 1935894894)
      {
LABEL_39:
        result = 0;
        *a4 = v14;
        return result;
      }

      v17 = 1937007734;
    }

LABEL_35:
    if (v16 != v17)
    {
      return result;
    }

    goto LABEL_39;
  }

  if (v16 > 1668506479)
  {
    if ((v16 - 1818453106) >= 2)
    {
      if (v16 == 1668506480)
      {
        goto LABEL_39;
      }

      if (v16 != 1818453110)
      {
        return result;
      }

LABEL_37:
      if (!v11)
      {
        return result;
      }

      goto LABEL_38;
    }

LABEL_29:
    if (!v11)
    {
      return result;
    }

    v14 = 0;
    goto LABEL_39;
  }

  if (v16 > 1667591276)
  {
    if (v16 == 1667591277)
    {
      goto LABEL_39;
    }

    v17 = 1668047219;
    goto LABEL_35;
  }

  if (v16 == 1650682995)
  {
    goto LABEL_39;
  }

  if (v16 == 1650685548 && v13)
  {
LABEL_38:
    v14 = 1;
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_661B0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (*(a1 + 9176) && *(a1 + 9288) == 1953719151)
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = v10 == (*(**(a1 + 9176) + 16))(*(a1 + 9176));
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 9160))
  {
    v12 = (*(*a2 + 16))(a2);
    v13 = v12 == (*(**(a1 + 9160) + 16))(*(a1 + 9160));
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 9168))
  {
    v14 = (*(*a2 + 16))(a2);
    v15 = v14 == (*(**(a1 + 9168) + 16))(*(a1 + 9168));
  }

  else
  {
    v15 = 0;
  }

  result = 2003332927;
  v17 = *a3;
  v18 = 4;
  if (*a3 > 1818453109)
  {
    if (v17 <= 1935892840)
    {
      if (v17 <= 1818456949)
      {
        if (v17 != 1818453110)
        {
          v19 = 29540;
LABEL_30:
          v20 = v19 | 0x6C630000;
          goto LABEL_36;
        }

        if (!v13)
        {
          return result;
        }

LABEL_37:
        result = 0;
        *a6 = v18;
        return result;
      }

      if (v17 != 1818456950)
      {
        if (v17 != 1870098020)
        {
          return result;
        }

        v18 = 0;
        goto LABEL_37;
      }

      if (!v13)
      {
        return result;
      }

LABEL_48:
      v18 = 4;
      goto LABEL_37;
    }

    if (v17 > 1935894893)
    {
      if (v17 != 1935894894)
      {
        v20 = 1937007734;
LABEL_36:
        if (v17 != v20)
        {
          return result;
        }

        goto LABEL_37;
      }

      if (v11)
      {
        v18 = 8;
        goto LABEL_37;
      }

      return 0;
    }

    if (v17 != 1935892841)
    {
      if (v17 != 1935893353)
      {
        return result;
      }

      if (v11)
      {
        goto LABEL_48;
      }

      return 0;
    }

    if (!v11)
    {
      return 0;
    }

LABEL_46:
    v18 = 16;
    goto LABEL_37;
  }

  if (v17 <= 1668047218)
  {
    if (v17 != 1650682995)
    {
      if (v17 != 1650685548)
      {
        v20 = 1667591277;
        goto LABEL_36;
      }

      if (!v15)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  if (v17 <= 1818453105)
  {
    if (v17 != 1668047219)
    {
      v20 = 1668506480;
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v17 != 1818453106)
  {
    v19 = 25715;
    goto LABEL_30;
  }

  if (v13)
  {
    goto LABEL_46;
  }

  return result;
}

void sub_664EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = +[BTAudioAVNotificationMonitor sharedInstance];
  v9 = v8;
  if (v8)
  {
    v10 = [(BTAudioAVNotificationMonitor *)v8 nowPlayingBundleID];
  }

  else
  {
    v10 = 0;
  }

  v11 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v23 = a2;
    v24 = 1024;
    v25 = a3;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Personalized Volume: sendManualVolumeUpdate %d, mainVolume %d bundleID %@", buf, 0x18u);
  }

  v21[0] = @"PhoneCall";
  v20[0] = @"CurrentAudioCategory";
  v20[1] = @"CurrentVolume";
  v21[1] = [NSNumber numberWithInt:a2];
  v21[2] = &off_B3758;
  v20[2] = @"IsPersonalizedVolumeUpdate";
  v20[3] = @"ManualVolumeUpdate";
  v21[3] = [NSNumber numberWithInt:a3];
  v21[4] = &off_B3758;
  v20[4] = @"RampInProgress";
  v20[5] = @"PersonalizedVolumeEnabled";
  v12 = [NSNumber numberWithInt:*(*(a1 + 9280) + 229) == 1];
  v13 = &stru_B24D0;
  if (v10)
  {
    v13 = v10;
  }

  v21[5] = v12;
  v21[6] = v13;
  v20[6] = @"BundleID";
  v20[7] = @"ReasonForManualUpdate";
  if (a4)
  {
    v14 = @"Top-Down";
  }

  else
  {
    v14 = @"Bottom-Up";
  }

  v21[7] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:8];
  if (v9)
  {
    v16 = v15;
    v17 = *(a1 + 9080);
    v18 = v17;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_66744;
    block[3] = &unk_B15F8;
    block[4] = v9;
    block[5] = v17;
    block[6] = v16;
    dispatch_async([(BTAudioAVNotificationMonitor *)v9 manualVolumeUpdatesQueue], block);
  }
}

id sub_66744(uint64_t a1)
{
  result = [*(a1 + 32) getPersonalizedVolumeDevice:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 48);

    return [result NotifyManualVolumeChanged:v3 shouldUpdateBuds:1];
  }

  return result;
}

uint64_t sub_66798(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4, uint64_t a5, unsigned int a6, int *a7, uint64_t a8)
{
  if (*(a1 + 9176) && *(a1 + 9288) == 1953719151)
  {
    v13 = (*(*a2 + 16))(a2);
    v14 = v13 == (*(**(a1 + 9176) + 16))(*(a1 + 9176));
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 9160))
  {
    v15 = (*(*a2 + 16))(a2);
    v16 = v15 == (*(**(a1 + 9160) + 16))(*(a1 + 9160));
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 9168))
  {
    v17 = (*(*a2 + 16))(a2);
    v18 = v17 == (*(**(a1 + 9168) + 16))(*(a1 + 9168));
  }

  else
  {
    v18 = 0;
  }

  v19 = 2003332927;
  v20 = *a3;
  if (*a3 <= 1818453109)
  {
    if (v20 <= 1668047218)
    {
      switch(v20)
      {
        case 1650682995:
          if (a6 <= 3)
          {
            v19 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_80F30();
            }

            return v19;
          }

          v19 = 0;
          if (v18)
          {
            v24 = 1953458028;
          }

          else
          {
            v24 = 1818588780;
          }

          if (v14)
          {
            v24 = 1685287523;
          }

          break;
        case 1650685548:
          if (a6 <= 3)
          {
            v19 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_80C24();
            }

            return v19;
          }

          if (!v18)
          {
            return v19;
          }

          v19 = 0;
          v24 = *(*(a1 + 9280) + 152);
          break;
        case 1667591277:
          if (a6 <= 3)
          {
            v19 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_80E60();
            }

            return v19;
          }

          v19 = 0;
          v24 = a2[4];
          break;
        default:
          return v19;
      }
    }

    else
    {
      if (v20 > 1818453105)
      {
        if (v20 == 1818453106)
        {
          if (a6 <= 0xF)
          {
            v19 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_80D28();
            }

            return v19;
          }

          v31 = *(a1 + 9136);
          if (!v31)
          {
            v19 = 1937010544;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_80CF4();
            }

            return v19;
          }

          if (!v16)
          {
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_80CC0();
            }

            return v19;
          }

          *a8 = (*(*v31 + 984))(v31);
          v19 = 0;
          *(a8 + 8) = (*(**(a1 + 9136) + 992))();
          v32 = 16;
          goto LABEL_114;
        }

        if (v20 != 1818453107)
        {
          return v19;
        }

        if (a6 > 3)
        {
          v25 = *(a1 + 9136);
          if (v25)
          {
            v26 = sub_610C(v25, *a8);
LABEL_101:
            v19 = 0;
            *a8 = v26;
LABEL_113:
            v32 = 4;
LABEL_114:
            *a7 = v32;
            return v19;
          }

          return 560227702;
        }

        v19 = 561211770;
        if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          return v19;
        }

LABEL_40:
        sub_80C58();
        return v19;
      }

      if (v20 == 1668047219)
      {
        if (a6 <= 3)
        {
          v19 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80EFC();
          }

          return v19;
        }

        if (v14 || v16 || v18)
        {
          if (v18)
          {
            v30 = 1836414053;
          }

          else
          {
            v30 = 1685287523;
          }

          if (v16)
          {
            v30 = 1986817381;
          }

          *a8 = v30;
        }

        v19 = 0;
        goto LABEL_113;
      }

      if (v20 != 1668506480)
      {
        return v19;
      }

      if (a6 <= 3)
      {
        v19 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80E94();
        }

        return v19;
      }

      v19 = 0;
      v24 = a2[3];
    }

    *a8 = v24;
    goto LABEL_113;
  }

  if (v20 <= 1935892840)
  {
    if (v20 > 1818456949)
    {
      if (v20 != 1818456950)
      {
        if (v20 == 1870098020)
        {
          v19 = 0;
          *a7 = 0;
        }

        return v19;
      }

      if (a6 <= 3)
      {
        v19 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80E2C();
        }

        return v19;
      }

      if (!*(a1 + 9136))
      {
        v19 = 1937010544;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80DF8();
        }

        return v19;
      }

      if (!v16)
      {
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80DC4();
        }

        return v19;
      }

      v35 = sub_42134();
      v36 = **(a1 + 9136);
      if (v35)
      {
        (*(v36 + 960))();
      }

      else
      {
        (*(v36 + 952))();
      }

      goto LABEL_101;
    }

    if (v20 != 1818453110)
    {
      if (v20 == 1818456932)
      {
        if (a6 <= 3)
        {
          v19 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80C8C();
          }

          return v19;
        }

        v27 = *(a1 + 9136);
        if (v27)
        {
          v28 = *a8;
          v29 = 0.0;
          if (*a8 < 0.0 || (v29 = 1.0, v28 > 1.0))
          {
            *a8 = v29;
            v28 = v29;
          }

LABEL_100:
          v26 = sub_6138(v27, v28);
          goto LABEL_101;
        }

        return 560227702;
      }

      return v19;
    }

    if (a6 > 3)
    {
      if (!*(a1 + 9136))
      {
        v19 = 1937010544;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80D90();
        }

        return v19;
      }

      if (!v16)
      {
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80D5C();
        }

        return v19;
      }

      v33 = sub_42134();
      v34 = **(a1 + 9136);
      if (!v33)
      {
        (*(v34 + 968))();
        goto LABEL_101;
      }

      (*(v34 + 960))();
      v27 = a1;
      goto LABEL_100;
    }

    v19 = 561211770;
    if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      return v19;
    }

    goto LABEL_40;
  }

  if (v20 > 1935894893)
  {
    if (v20 != 1935894894)
    {
      if (v20 == 1937007734)
      {
        if (a6 <= 3)
        {
          v19 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80EC8();
          }

          return v19;
        }

        v19 = 0;
        *a8 = (*(*a1 + 16))(a1);
        goto LABEL_113;
      }

      return v19;
    }
  }

  else if (v20 != 1935892841 && v20 != 1935893353)
  {
    return v19;
  }

  v21 = *(a1 + 9136);
  if (!v21)
  {
    v19 = 1937010544;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_80BF0();
    }

    return v19;
  }

  if (!v14)
  {
    return 0;
  }

  v22 = *(*v21 + 144);

  return v22();
}

uint64_t sub_67154(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int a6, float *a7, int a8)
{
  if (*(a1 + 9176) && *(a1 + 9288) == 1953719151)
  {
    (*(*a2 + 16))(a2);
    (*(**(a1 + 9176) + 16))(*(a1 + 9176));
  }

  if (*(a1 + 9160))
  {
    v14 = (*(*a2 + 16))(a2);
    v15 = (*(**(a1 + 9160) + 16))(*(a1 + 9160));
    v16 = v14 == v15;
    if (!*(a1 + 9168))
    {
      if (v14 != v15)
      {
        return 0;
      }

      goto LABEL_22;
    }

    v17 = a1 + 9168;
  }

  else
  {
    if (!*(a1 + 9168))
    {
      return 0;
    }

    v16 = 0;
    v17 = a1 + 9168;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = (*(**v17 + 16))();
  if (!v16)
  {
    if (v18 == v19)
    {
      v20 = *a3;
      if (*a3 == 1650685548)
      {
        *(*(a1 + 9280) + 152) = *a7;
        if (sub_42134())
        {
          strcpy(__p, "etumptuo");
          __p[9] = 0;
          *&__p[10] = 0;
          (*(*a1 + 248))(a1, __p);
          v21 = [NSString alloc];
          (*(*a1 + 864))(__p, a1);
          if (v84[9] >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = *__p;
          }

          v23 = [v21 initWithUTF8String:v22];
          v24 = v23;
          if ((v84[9] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          sub_680C0(v23, v24, *a7);
        }

        v25 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 200);
          v27 = *(*(a1 + 9280) + 152);
          *__p = 138412546;
          *&__p[4] = v26;
          *&__p[12] = 1024;
          *v84 = v27;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Set muteControl for mAudioDeviceUID %@ to %d", __p, 0x12u);
        }

        return 0;
      }

      v53 = 2003332927;
      v54 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        v58.i32[0] = a3[1];
        v59 = vrev64_s16(*&vmovl_u8(v58));
        LODWORD(v81) = vuzp1_s8(v59, v59).u32[0];
        BYTE4(v81) = 0;
        v77 = HIBYTE(v20);
        v78 = BYTE2(v20);
        v79 = BYTE1(v20);
        v80 = v20;
        *__p = 136446466;
        *&__p[4] = &v81;
        *&__p[12] = 2082;
        *v84 = &v77;
        v57 = "Unknown muteControl property set for scope: %{public}s / element: %{public}s";
        goto LABEL_65;
      }

      return v53;
    }

    return 0;
  }

LABEL_22:
  v28 = *a3;
  if (*a3 == 1818453110)
  {
    if (a6 != 4)
    {
      v53 = 561211770;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_80F64();
      }

      return v53;
    }

    v42 = qword_D8590;
    if (!*(a1 + 9136))
    {
      v53 = 1937010544;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_80F98();
      }

      return v53;
    }

    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v43 = (*(*a2 + 16))(a2);
      v44 = *a7;
      v45 = a3[2];
      *__p = 67109888;
      *&__p[4] = a8;
      *&__p[8] = 1024;
      *&__p[10] = v43;
      *v84 = 2048;
      *&v84[2] = v44;
      v85 = 1024;
      LODWORD(v86) = v45;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "kAudioLevelControlPropertyDecibelValue update from PID = %d Control ID = %d DBM volume %f  Element = %d", __p, 0x1Eu);
    }

    v81 = 0;
    v82 = 0;
    sub_70AF4(&v81, a1 + 600);
    v46 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *a7;
      *__p = 134217984;
      *&__p[4] = v47;
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "DB volume from CA  %f", __p, 0xCu);
    }

    (*(**(a1 + 9136) + 976))(*(a1 + 9136), *a7);
    (*(**(a1 + 9136) + 968))(*(a1 + 9136));
    (*(*a1 + 496))(a1);
    sub_70BD4(&v81);
    if ((*(*a1 + 296))(a1))
    {
      v48 = qword_D8DF0;
      v49 = (*(**(a1 + 9136) + 16))(*(a1 + 9136));
      if (sub_500F8(v48, v49))
      {
        sub_4FF8C(qword_D8DF0);
        (*(**(a1 + 9136) + 952))(*(a1 + 9136));
        (*(*a1 + 488))(a1, 1);
      }
    }

    v50 = a3[1];
    if (v50 != 1735159650 || a3[2])
    {
      v51 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        v77 = HIBYTE(v50);
        v78 = BYTE2(v50);
        v79 = BYTE1(v50);
        v80 = v50;
        v52.i32[0] = a3[2];
        v73 = vrev64_s16(*&vmovl_u8(v52));
        v75 = vuzp1_s8(v73, v73).u32[0];
        v76 = 0;
        *__p = 136446466;
        *&__p[4] = &v77;
        *&__p[12] = 2082;
        *v84 = &v75;
        _os_log_error_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "kAudioDevicePropertyVolumeDecibels is setting wrong scope: %{public}s / element: %{public}s", __p, 0x16u);
      }
    }

    if (!sub_42134())
    {
      goto LABEL_95;
    }

LABEL_94:
    strcpy(__p, "vsclbolg");
    __p[9] = 0;
    *&__p[10] = 0;
    sub_1CA80(a2, __p);
    strcpy(__p, "vdclbolg");
    __p[9] = 0;
    *&__p[10] = 0;
    sub_1CA80(a2, __p);
LABEL_95:
    sub_70C40(&v81);
    return 0;
  }

  if (v28 == 1818456950)
  {
    if (a6 != 4)
    {
      v53 = 561211770;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_80FCC();
      }

      return v53;
    }

    if (!*(a1 + 9136))
    {
      v53 = 1937010544;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_81000();
      }

      return v53;
    }

    v81 = 0;
    v82 = 0;
    sub_70AF4(&v81, a1 + 600);
    v29 = *a7;
    if (sub_42134())
    {
      v30 = (*(**(a1 + 9136) + 952))(*(a1 + 9136));
      v31 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        v32 = (*(*a2 + 16))(a2);
        v33 = a3[2];
        *__p = 67110144;
        *&__p[4] = a8;
        *&__p[8] = 1024;
        *&__p[10] = v32;
        *v84 = 2048;
        *&v84[2] = v30;
        v85 = 2048;
        v86 = v29;
        v87 = 1024;
        v88 = v33;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Volume update from PID = %d Control ID = %d Scalar volume %f -> %f Element = %d", __p, 0x28u);
      }

      v29 = (*(**(a1 + 9136) + 1016))(*(a1 + 9136), 2, *a7);
      v35 = v30 == 0.0 && v29 != 0.0;
      v37 = v30 != 0.0 && v29 == 0.0;
      v38 = v35 || v37;
      if (v30 == v29)
      {
        v39 = 0;
      }

      else
      {
        v39 = v38;
      }

      v40 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *a7;
        *__p = 136446466;
        *&__p[4] = "Right ";
        *&__p[12] = 2048;
        *v84 = v41;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%{public}s : Sclar volume from CA %f ", __p, 0x16u);
      }
    }

    else
    {
      v60 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 134217984;
        *&__p[4] = v29;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "Volume Sclar volume from CA %f", __p, 0xCu);
      }

      v39 = 0;
    }

    v61 = *(a1 + 9136);
    (*(*v61 + 368))(v61, v29);
    (*(*v61 + 976))(v61);
    (*(**(a1 + 9136) + 968))(*(a1 + 9136));
    (*(*a1 + 496))(a1);
    if ((sub_42134() & v39) == 1)
    {
      v62 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "Notify that Mute changed", __p, 2u);
      }

      strcpy(__p, "etumptuo");
      __p[9] = 0;
      *&__p[10] = 0;
      (*(*a1 + 248))(a1, __p);
      v63 = [NSString alloc];
      (*(*a1 + 864))(__p, a1);
      if (v84[9] >= 0)
      {
        v64 = __p;
      }

      else
      {
        v64 = *__p;
      }

      v65 = [v63 initWithUTF8String:v64];
      v66 = v65;
      if ((v84[9] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      sub_680C0(v65, v66, 0);
    }

    sub_70BD4(&v81);
    if ((*(*a1 + 296))(a1))
    {
      v67 = qword_D8DF0;
      v68 = (*(**(a1 + 9136) + 16))(*(a1 + 9136));
      if (sub_500F8(v67, v68))
      {
        sub_4FF8C(qword_D8DF0);
        (*(**(a1 + 9136) + 952))(*(a1 + 9136));
        (*(*a1 + 488))(a1, 1);
      }
    }

    v69 = a3[1];
    if (v69 != 1735159650 || a3[2])
    {
      v70 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        v77 = HIBYTE(v69);
        v78 = BYTE2(v69);
        v79 = BYTE1(v69);
        v80 = v69;
        v71.i32[0] = a3[2];
        v74 = vrev64_s16(*&vmovl_u8(v71));
        v75 = vuzp1_s8(v74, v74).u32[0];
        v76 = 0;
        *__p = 136446466;
        *&__p[4] = &v77;
        *&__p[12] = 2082;
        *v84 = &v75;
        _os_log_error_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, "kAudioDevicePropertyVolumeScalar is setting wrong scope: %{public}s / element: %{public}s", __p, 0x16u);
      }
    }

    if (!sub_42134())
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v53 = 2003332927;
  v54 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v55.i32[0] = a3[1];
    v56 = vrev64_s16(*&vmovl_u8(v55));
    LODWORD(v81) = vuzp1_s8(v56, v56).u32[0];
    BYTE4(v81) = 0;
    v77 = HIBYTE(v28);
    v78 = BYTE2(v28);
    v79 = BYTE1(v28);
    v80 = v28;
    *__p = 136446466;
    *&__p[4] = &v81;
    *&__p[12] = 2082;
    *v84 = &v77;
    v57 = "Unknown volumeControl property set for scope: %{public}s / element: %{public}s";
LABEL_65:
    _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, v57, __p, 0x16u);
  }

  return v53;
}

uint64_t sub_6806C(uint64_t a1, int a2)
{
  v3 = a2;
  v4 = 1869968496;
  return (*(*a1 + 248))(a1, &v3);
}

void sub_680C0(uint64_t a1, uint64_t a2, int a3)
{
  if (_os_feature_enabled_impl())
  {
    v5 = *(qword_D8DF0 + 464);
    if ((!v5 || ![v5 usbAudioDeviceList]) && os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_81034();
    }

    v6 = [*(qword_D8DF0 + 464) usbAudioDeviceList];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_6EAC8;
    v9[3] = &unk_B16B0;
    v9[4] = a2;
    v10 = a3;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    v7 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: Defaults writes for unified usb device are missing", v8, 2u);
    }
  }
}

uint64_t sub_681F0(uint64_t a1, uint64_t a2, __int32 a3)
{
  v4 = a3;
  v5 = 1735159650;
  return sub_1CA80(a2, &v4);
}

uint64_t sub_68228(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v7 = a1 + 0x2000;
  v8 = a1[9304];
  if (a2 > 1819569762)
  {
    if (a2 <= 1885762656)
    {
      switch(a2)
      {
        case 1819569763:
          (*(*a1 + 272))(a1, a3);
          goto LABEL_78;
        case 1853059700:
          v32 = a3;
          v52 = a3;
          v33 = qword_D8590;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v32;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice::PerformDeviceConfigurationChange [sample rate = %f]", buf, 0xCu);
          }

          v35 = sub_5BD5C(a1, &v52, v34);
          v36 = *(a1 + 1142);
          if (v36)
          {
            (*(*v36 + 528))(v36, v32);
          }

          v37 = qword_D8590;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            v38 = "NO";
            if (v35)
            {
              v38 = "YES";
            }

            *buf = 136446210;
            *&buf[4] = v38;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Perform Config change : kAudioDevicePropertyNominalSampleRate Upate pending shedule Profile Updated %{public}s", buf, 0xCu);
          }

          v7[1112] = 0;
          sub_68CC0(a1);
          break;
        case 1885762592:
          a1[9304] = 0;
          v11 = qword_D8590;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Perform Config change : kAudioStreamPropertyPhysicalFormat Upate pending shedule", buf, 2u);
          }

          break;
        default:
          goto LABEL_67;
      }

      strcpy(buf, "pcvabolg");
      buf[9] = 0;
      *&buf[10] = 0;
      (*(*a1 + 248))(a1, buf);
      goto LABEL_78;
    }

    if (a2 == 1885762657)
    {
      v30 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "kAudioStreamPropertyAvailablePhysicalFormats Config change", buf, 2u);
      }

      v31 = *(a1 + 1142);
      if (v31)
      {
        (*(*v31 + 560))(v31);
      }

      goto LABEL_78;
    }

    if (a2 == 1937009955)
    {
      v41 = a3 != 0;
      v42 = (*(**(a1 + 1142) + 1072))(*(a1 + 1142));
      (*(*a1 + 1288))(a1, v41, v42);
      sub_5AE6C(a1);
      v43 = qword_D8590;
      if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      v44 = (*(**(a1 + 1143) + 16))(*(a1 + 1143));
      strcpy(&v52, "stm#");
      *buf = 67109378;
      *&buf[4] = v44;
      *&buf[8] = 2082;
      *&buf[10] = &v52;
      v18 = "Object %u:Perform ConfigurationChange on property %{public}s";
      v19 = v43;
      v20 = 18;
      goto LABEL_66;
    }

    if (a2 != 1969779572)
    {
      goto LABEL_67;
    }

    if ((*(*a1 + 1032))(a1))
    {
      sub_70BD4(a4);
      pthread_mutex_lock((a1 + 9512));
      if (pthread_cond_timedwait_relative_np((a1 + 9576), (a1 + 9512), (a1 + 9624)) == 60 && os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_81068();
      }

      pthread_mutex_unlock((a1 + 9512));
      sub_70B24(a4);
      v22 = qword_D8590;
      if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      *buf = 0;
      v23 = "HFPStereo output performFormatChange IOs all stopped";
    }

    else
    {
      v22 = qword_D8590;
      if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
LABEL_74:
        sub_68E0C(a1);
        v47 = *(a1 + 1137);
        if (v47)
        {
          sub_687C(v47);
        }

        *buf = xmmword_88F40;
        *&buf[16] = xmmword_88F50;
        v54 = xmmword_89090;
        v55 = xmmword_890A0;
        v56 = xmmword_890B0;
        v57 = xmmword_890C0;
        v28 = **(qword_D8DF0 + 144);
        v48 = *(a1 + 2);
        goto LABEL_77;
      }

      *buf = 0;
      v23 = "HFPStereo output performFormatChange IOs already stopped";
    }

    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
    goto LABEL_74;
  }

  if (a2 <= 1650750575)
  {
    if (a2 != 1634038341 && a2 != 1634038357)
    {
      if (a2 == 1650549620)
      {
        v9 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = a3;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "kBluetoothAudioDevicePropertyAudioContentType Config change %d", buf, 8u);
        }

        v10 = *(a1 + 1142);
        if (v10)
        {
          (*(*v10 + 552))(v10, a3);
        }

        goto LABEL_78;
      }

      goto LABEL_67;
    }

    goto LABEL_22;
  }

  if (a2 == 1650750576)
  {
    v24 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v25.i32[0] = *(a1 + 2322);
      v26 = vrev64_s16(*&vmovl_u8(v25));
      LODWORD(v52) = vuzp1_s8(v26, v26).u32[0];
      BYTE4(v52) = 0;
      v51[0] = BYTE3(a3);
      v51[1] = BYTE2(a3);
      v51[2] = BYTE1(a3);
      v51[3] = a3;
      v51[4] = 0;
      *buf = 136315394;
      *&buf[4] = &v52;
      *&buf[12] = 2080;
      *&buf[14] = v51;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "perform kBluetoothAudioDevicePropertyDeviceType, %s -> %s", buf, 0x16u);
    }

    sub_5AC94(a1, *(a1 + 1161), a3);
    sub_68E0C(a1);
    v27 = *(a1 + 1137);
    if (v27)
    {
      sub_687C(v27);
    }

    v7[1112] = 0;
    *buf = xmmword_88F40;
    *&buf[16] = xmmword_88F50;
    v54 = xmmword_89090;
    v55 = xmmword_890A0;
    v56 = xmmword_890B0;
    LODWORD(v57) = 0;
    v28 = **(qword_D8DF0 + 144);
    v29 = *(a1 + 2);
    goto LABEL_77;
  }

  if (a2 != 1702391923)
  {
    if (a2 == 1718772584)
    {
      v12 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "ForceRouteChange step3 PerformConfigChange to switch format", buf, 2u);
      }

      v7[1112] = 0;
      sub_68E0C(a1);
LABEL_22:
      v13 = *(a1 + 1142);
      if (v13 && v13 == *(a1 + 1136))
      {
        v14 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "USBC PerformConfigChange A2DP route is valid", buf, 2u);
        }

        v15 = *(qword_D8DF0 + 464);
        if (v15 && [v15 currentRoutedUSBDeviceUID])
        {
          v16 = [*(qword_D8DF0 + 464) currentRoutedUSBDeviceUID];
          v7[1316] = 1;
          if (*(*(a1 + 1160) + 344))
          {
            v17 = qword_D8590;
            if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            *buf = 0;
            v18 = "Not streaming usbc audio as wireless splitter is enabled";
            v19 = v17;
            v20 = 2;
LABEL_66:
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
            goto LABEL_78;
          }

          sub_5C6B4(a1, v16);
          if ([*(qword_D8DF0 + 464) usbMetric])
          {
            v50 = [*(qword_D8DF0 + 464) usbMetric];
            [v50 setTotalCountUnifiedAudio:{objc_msgSend(v50, "totalCountUnifiedAudio") + 1}];
          }
        }

        else
        {
          v7[1316] = 0;
          sub_5C6B4(a1, 0);
        }
      }

      strcpy(buf, "tptbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v28 = **(qword_D8DF0 + 144);
      v46 = *(a1 + 2);
LABEL_77:
      v28();
      goto LABEL_78;
    }

LABEL_67:
    v45 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      LOBYTE(v52) = HIBYTE(v5);
      BYTE1(v52) = BYTE2(v5);
      BYTE2(v52) = BYTE1(v5);
      *(&v52 + 3) = v5;
      *buf = 136446210;
      *&buf[4] = &v52;
      _os_log_error_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "PerformDeviceConfigurationChange on property %{public}s, but we're doing nothing.", buf, 0xCu);
    }

    goto LABEL_78;
  }

  v39 = *(a1 + 1137);
  if (v39 && v39[192] == 1)
  {
    if (*(a1 + 1161) == 1952539500)
    {
      v40 = *(*(a1 + 1160) + 288);
    }

    else
    {
      v40 = 0;
    }

    (*(*v39 + 584))(v39, v40 & 1);
  }

LABEL_78:
  if (v8 != v7[1112])
  {
    sub_68CC0(a1);
  }

  return 0;
}

_BYTE *sub_68CC0(uint64_t a1)
{
  v2 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v3.i32[0] = *(a1 + 9288);
    v4 = vrev64_s16(*&vmovl_u8(v3));
    v5 = vuzp1_s8(v4, v4);
    v11 = v5.i32[0];
    v12 = 0;
    v5.i32[0] = *(a1 + 9296);
    v6 = vrev64_s16(*&vmovl_u8(v5));
    v9 = vuzp1_s8(v6, v6).u32[0];
    v10 = 0;
    *buf = 136446466;
    v14 = &v11;
    v15 = 2082;
    v16 = &v9;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Post PostRouteChange [%{public}s - %{public}s]", buf, 0x16u);
  }

  result = *(a1 + 9096);
  if (result && result[192] == 1)
  {
    if (*(a1 + 9288) == 1952539500)
    {
      v8 = *(*(a1 + 9280) + 288);
    }

    else
    {
      v8 = 0;
    }

    return (*(*result + 584))(result, v8 & 1);
  }

  return result;
}

void sub_68E0C(uint64_t a1)
{
  v2 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v3.i32[0] = *(a1 + 9288);
    v4 = vrev64_s16(*&vmovl_u8(v3));
    v5 = vuzp1_s8(v4, v4);
    v9 = v5.i32[0];
    v10 = 0;
    v5.i32[0] = *(a1 + 9296);
    v6 = vrev64_s16(*&vmovl_u8(v5));
    v7 = vuzp1_s8(v6, v6).u32[0];
    v8 = 0;
    *buf = 136446466;
    v12 = &v9;
    v13 = 2082;
    v14 = &v7;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "HFPStereo PostPerformConfigChange [%{public}s - %{public}s]", buf, 0x16u);
  }

  if (*(a1 + 9096))
  {
    buf[0] = 0;
    if (sub_6D0F8(a1, buf, 1))
    {
      (*(**(a1 + 9096) + 536))(*(a1 + 9096), buf[0]);
    }
  }

  *(a1 + 9337) = 0;
}

void sub_68F50(uint64_t a1, const __CFString *cf)
{
  v3 = *(a1 + 9272);
  *(a1 + 9272) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v4 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v5 = &stru_B24D0;
    if (cf)
    {
      v5 = cf;
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "SetLosslessUSBID %@", &v6, 0xCu);
  }
}

void sub_69020(id a1)
{
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
  {
    sub_8109C();
  }

  [*(qword_D8DF0 + 464) cleanUSBInformation];
}

_BYTE *sub_6907C(uint64_t a1)
{
  result = *(a1 + 9136);
  if (result)
  {
    if (result[192] == 1)
    {
      return (*(*result + 176))();
    }
  }

  return result;
}

uint64_t sub_690B8(uint64_t a1, uint64_t a2)
{
  v4 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*a1 + 1032))(a1);
    v6 = (*(*a1 + 16))(a1);
    v7 = *(a1 + 9136);
    if (v7)
    {
      v8 = sub_5448(v7);
    }

    else
    {
      v8 = @"None";
    }

    v12 = 134218498;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: StartIO activeIO:%llu [%d] delegate to current Device  %{public}@", &v12, 0x1Cu);
  }

  sub_6939C(a1, 0);
  if (*(a1 + 9136))
  {
    (*(*a1 + 1456))(a1);
    if (sub_42134())
    {
      v9 = *(a1 + 9280);
      if (*(v9 + 293) == 1 && (*(v9 + 145) & 1) == 0)
      {
        (*(*a1 + 1360))(a1, 1, 1);
      }

      (*(**(a1 + 9136) + 256))(*(a1 + 9136), 1, 1918989668, 0);
    }

    else if (!sub_69474(a1) && (*(**(a1 + 9136) + 256))(*(a1 + 9136), 1, *(a1 + 9296), 1))
    {
      sub_69534(a1);
    }

    v10 = (*(**(a1 + 9136) + 184))(*(a1 + 9136), a2);
    sub_69718(a1);
  }

  else
  {
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_810D0();
    }

    v10 = 0;
  }

  *(a1 + 9496) = mach_absolute_time();
  return v10;
}

void sub_6939C(uint64_t a1, int a2)
{
  if (*(a1 + 9472) != a2)
  {
    v4 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "NO";
      if (a2)
      {
        v5 = "YES";
      }

      v6 = 136446210;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: Output Audio Ongoing : %{public}s", &v6, 0xCu);
    }

    *(a1 + 9472) = a2;
  }
}

BOOL sub_69474(uint64_t a1)
{
  v1 = *(a1 + 9504);
  v2 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "No Follow normal Audio bringup path";
    if (v1 == 2)
    {
      v3 = "Yes : Skipping audio Setup on IOStart";
    }

    v5 = 136446210;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Out of Band Audio Trigged Status : %{public}s ", &v5, 0xCu);
  }

  return v1 == 2;
}

uint64_t sub_69534(uint64_t a1)
{
  pthread_mutex_lock((a1 + 9344));
  if (*(a1 + 9473) == 1)
  {
    v2 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 9080);
      *buf = 138543362;
      v13 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@ ] Transport schedule already running", buf, 0xCu);
    }

    return pthread_mutex_unlock((a1 + 9344));
  }

  else
  {
    pthread_mutex_unlock((a1 + 9344));
    v5 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 9080);
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ ] Request block Scheduling transport update", buf, 0xCu);
    }

    v7 = (*(*a1 + 16))(a1);
    v8 = qword_D8DF0;
    v9 = (*(*a1 + 16))(a1);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_6C2D0;
    v10[3] = &unk_AD328;
    v11 = v7;
    return sub_507D8(v8, v9, v10);
  }
}

void sub_69718(uint64_t a1)
{
  v2 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 9504);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "reset of band audio triggered: Current state %d ", v4, 8u);
  }

  *(a1 + 9504) = 0;
}

uint64_t sub_697C0(uint64_t a1, uint64_t a2)
{
  v4 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*a1 + 1032))(a1);
    v6 = (*(*a1 + 16))(a1);
    v7 = *(a1 + 9136);
    if (v7)
    {
      v8 = sub_5448(v7);
    }

    else
    {
      v8 = @"None";
    }

    v14 = 134218498;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: StopIO activeIO:%llu [%d] delegate Current Device  %{public}@", &v14, 0x1Cu);
  }

  sub_6939C(a1, 0);
  v9 = *(a1 + 9136);
  if (!v9 || *(v9 + 192) != 1)
  {
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_81104();
    }

    return 0;
  }

  v10 = sub_57E8(v9);
  v11 = *(a1 + 9136);
  if (v10 == 1818583905)
  {
    v11[9164] = 1;
  }

  v12 = (*(*v11 + 192))(v11, a2);
  if (sub_42134())
  {
    if (!v12)
    {
      if (sub_57E8(*(a1 + 9136)) != 1818583905)
      {
        (*(**(a1 + 9136) + 1528))(*(a1 + 9136));
      }

      return 0;
    }
  }

  else if ((*(**(a1 + 9136) + 256))(*(a1 + 9136), 0, *(a1 + 9296), 1))
  {
    sub_69534(a1);
  }

  return v12;
}

uint64_t sub_69A4C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1919513701)
  {
    sub_6939C(a1, 1);
  }

  v4 = *(a1 + 9136);
  if (!v4 || v4[192] != 1)
  {
    return 0;
  }

  v5 = *(*v4 + 208);

  return v5();
}

CFIndex sub_69B30(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 1735159650:
      v2 = 9256;
      return CFArrayGetCount(*(a1 + v2));
    case 1869968496:
      v2 = 9232;
      return CFArrayGetCount(*(a1 + v2));
    case 1768845428:
      v2 = 9208;
      return CFArrayGetCount(*(a1 + v2));
  }

  return 0;
}

uint64_t sub_69B9C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 9136);
  if (result)
  {
    v6 = *a2;
    v7 = a2[1];
    v12 = *(a2 + 4);
    v11[0] = v6;
    v11[1] = v7;
    v8 = *(a3 + 16);
    v9[0] = *a3;
    v9[1] = v8;
    v10 = *(a3 + 32);
    return (*(*result + 1304))(result, v11, v9, a4, a5);
  }

  return result;
}

BOOL sub_69C24(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = 1;
  if (((*(**(a1 + 9136) + 1296))(*(a1 + 9136)) & 1) == 0)
  {
    v8 = *(a1 + 9096);
    if (!v8 || ((*(*v8 + 1296))(v8, a2, a3, a4) & 1) == 0)
    {
      v9 = *(a1 + 9088);
      if (!v9 || ((*(*v9 + 1296))(v9, a2, a3, a4) & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

CFIndex sub_69D20(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  Count = a4;
  switch(a2)
  {
    case 1735159650:
      v6 = 9256;
      goto LABEL_7;
    case 1869968496:
      v6 = 9232;
      goto LABEL_7;
    case 1768845428:
      v6 = 9208;
LABEL_7:
      v7 = *(a1 + v6);
      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  if (CFArrayGetCount(v7) < a4)
  {
    Count = CFArrayGetCount(v7);
  }

  if (Count)
  {
    for (i = 0; i != Count; *(a3 + 4 * i++) = (*(*ValueAtIndex + 16))(ValueAtIndex))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
    }
  }

  return CFArrayGetCount(v7);
}

uint64_t sub_69E0C(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (*a3)
  {
    v3 = *(result + 9328);
    if (*a3 > v3)
    {
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_7E574();
      }

      abort();
    }

    v4 = *(result + 9312);
    if (v4 != (result + 9320))
    {
      v5 = 0;
      do
      {
        v6 = v4[5];
        v7 = a2 + 12 * v5;
        *v7 = *v6;
        *(v7 + 8) = *(v6 + 8);
        if (++v5 == *a3)
        {
          break;
        }

        v8 = v4[1];
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
            v9 = v4[2];
            v10 = *v9 == v4;
            v4 = v9;
          }

          while (!v10);
        }

        v4 = v9;
      }

      while (v9 != (result + 9320));
    }

    *a3 = v3;
  }

  return result;
}

uint64_t sub_69EE0(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 9096) && !*(a1 + 9088) && !*(a1 + 9120) && !*(a1 + 9128))
  {
    return 0;
  }

  v4 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 9080);
    v7 = *(a1 + 9304) == 0;
    v5.i32[0] = *(a1 + 9288);
    v8 = vrev64_s16(*&vmovl_u8(v5));
    v14 = vuzp1_s8(v8, v8).u32[0];
    v15 = 0;
    if (v7)
    {
      v9 = "No";
    }

    else
    {
      v9 = "Yes";
    }

    *buf = 138543874;
    v17 = v6;
    v18 = 2082;
    v19 = v9;
    v20 = 2082;
    v21 = &v14;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: [%{public}@ ] Is route change pending ? %{public}s Current profile %{public}s ", buf, 0x20u);
  }

  if (*(a1 + 9304))
  {
    LODWORD(v10) = 1953853033;
  }

  else
  {
    v11 = _os_feature_enabled_impl();
    v10 = *(a1 + 9288);
    if (v10 == 1952538980)
    {
      v12 = 1953719151;
    }

    else
    {
      v12 = *(a1 + 9288);
    }

    if (v11)
    {
      LODWORD(v10) = v12;
    }
  }

  *a2 = v10;
  return 1;
}

uint64_t sub_6A060(uint64_t a1)
{
  v3 = 0;
  v1 = *(a1 + 9096);
  if (v1 && *(v1 + 192) == 1)
  {
    if (sub_6D0F8(a1, &v3, 1))
    {
      if (v3 > 1u)
      {
        return 1;
      }
    }

    else if ((*(v1 + 9340) - 128) < 3)
    {
      return 1;
    }
  }

  return 0;
}

double sub_6A0D4(uint64_t a1)
{
  v1 = *(a1 + 9136);
  if (!v1)
  {
    return 0.0;
  }

  (*(*v1 + 808))();
  return result;
}

uint64_t sub_6A110(uint64_t a1)
{
  v2 = *(a1 + 9136);
  if (!v2)
  {
    v3 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_FAULT))
    {
      sub_81138(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    if (sub_70820())
    {
      abort();
    }

    v2 = *(a1 + 9136);
  }

  return (*(*v2 + 816))(v2);
}

uint64_t sub_6A198(uint64_t a1)
{
  v2 = *(a1 + 9136);
  if (!v2)
  {
    v3 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_FAULT))
    {
      sub_81138(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    if (sub_70820())
    {
      abort();
    }

    v2 = *(a1 + 9136);
  }

  return (*(*v2 + 832))(v2);
}

uint64_t sub_6A220(uint64_t a1)
{
  v2 = *(a1 + 9136);
  if (!v2)
  {
    v3 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_FAULT))
    {
      sub_81138(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    if (sub_70820())
    {
      abort();
    }

    v2 = *(a1 + 9136);
  }

  return (*(*v2 + 848))(v2);
}

uint64_t sub_6A2A8(uint64_t a1)
{
  result = *(a1 + 9136);
  if (result)
  {
    return (*(*result + 856))();
  }

  return result;
}

uint64_t sub_6A2E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 9136);
  if (!v4)
  {
    v5 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_FAULT))
    {
      sub_81138(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    if (sub_70820())
    {
      abort();
    }

    v4 = *(a1 + 9136);
  }

  return (*(*v4 + 824))(v4, a2);
}

uint64_t sub_6A380(void *a1, uint64_t a2, float a3)
{
  result = a1[1142];
  if (result)
  {
    v7 = (*(*result + 952))(result);
    v8 = v7;
    v9 = a3 != 0.0;
    v10 = a3 == 0.0;
    if (v7 == 0.0)
    {
      v9 = 1;
    }

    else
    {
      v10 = 1;
    }

    v11 = v10 && v9;
    v12 = v7 == a3 ? 1 : v11;
    (*(*a1[1142] + 488))(a1[1142], a2, a3);
    result = sub_42134();
    if ((v12 & 1) == 0)
    {
      if (result)
      {
        v13 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 134218240;
          *&__p[4] = v8;
          v19 = 2048;
          v20 = a3;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Updating Mute changed %f->%f", __p, 0x16u);
        }

        v14 = [NSString alloc];
        (*(*a1 + 864))(__p, a1);
        if (v21 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = *__p;
        }

        v16 = [v14 initWithUTF8String:v15];
        v17 = v16;
        if (v21 < 0)
        {
          operator delete(*__p);
        }

        sub_680C0(v16, v17, 0);
        strcpy(__p, "etumptuo");
        __p[9] = 0;
        *&__p[10] = 0;
        return (*(*a1 + 248))(a1, __p);
      }
    }
  }

  return result;
}

void sub_6A5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6A5D0(uint64_t a1)
{
  result = *(a1 + 9136);
  if (result)
  {
    return (*(*result + 496))();
  }

  return result;
}

double sub_6A608(uint64_t a1)
{
  v2 = *(a1 + 9136);
  if (v2)
  {
    v3 = *(*v2 + 952);

    v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_811B0();
    }

    return 0.0;
  }

  return result;
}

float sub_6A68C(uint64_t a1)
{
  v2 = *(a1 + 9136);
  if (v2)
  {
    v3 = *(*v2 + 968);

    v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_811E4();
    }

    return -40.0;
  }

  return result;
}

_BYTE *sub_6A714(uint64_t a1, void *a2)
{
  if (_os_feature_enabled_impl())
  {
    Count = CFArrayGetCount(*(a1 + 9200));
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9200), v6);
        if (ValueAtIndex)
        {
          v8 = ValueAtIndex;
          if (ValueAtIndex[192] == 1 && ![a2 compare:sub_5448(ValueAtIndex)])
          {
            break;
          }
        }

        if (v5 == ++v6)
        {
          return 0;
        }
      }

      return v8;
    }

    return 0;
  }

  v9 = CFArrayGetCount(*(a1 + 9192));
  if (v9 < 1)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  while (1)
  {
    v12 = CFArrayGetValueAtIndex(*(a1 + 9192), v11);
    if (v12)
    {
      v8 = v12;
      if (v12[192] == 1 && ![a2 compare:sub_5448(v12)])
      {
        break;
      }
    }

    if (v10 == ++v11)
    {
      return 0;
    }
  }

  return v8;
}

const void *sub_6A824(uint64_t a1, uint64_t a2)
{
  if (_os_feature_enabled_impl())
  {
    Count = CFArrayGetCount(*(a1 + 9200));
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9200), v6);
        if (sub_57E8(ValueAtIndex) == a2)
        {
          break;
        }

        if (v5 == ++v6)
        {
          return 0;
        }
      }

      return ValueAtIndex;
    }

    return 0;
  }

  v8 = CFArrayGetCount(*(a1 + 9192));
  if (v8 < 1)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9192), v10);
    if (sub_57E8(ValueAtIndex) == a2)
    {
      break;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t sub_6A904(uint64_t a1, __int32 *a2)
{
  if (!a2)
  {
    return 1852797029;
  }

  v2 = *(qword_D8DF0 + 144);
  if (v2)
  {
    v4 = (*v2)(*(qword_D8DF0 + 144), *(a1 + 8), 1, a2);
    if (v4)
    {
      v5 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_76460(a2, v5, v6);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_FAULT))
    {
      sub_81218();
    }

    if (sub_70820())
    {
      abort();
    }

    return 4294960564;
  }

  return v4;
}

uint64_t sub_6A9D0(uint64_t a1)
{
  result = *(a1 + 9136);
  if (result)
  {
    return (*(*result + 736))();
  }

  return result;
}

CFIndex sub_6AA08(uint64_t a1)
{
  if (sub_42134())
  {
    return CFArrayGetCount(*(a1 + 9192));
  }

  result = *(a1 + 9136);
  if (result)
  {
    v3 = *(*result + 1248);

    return v3();
  }

  return result;
}

uint64_t sub_6AA90(uint64_t a1, uint64_t a2, CFIndex Count)
{
  if (sub_42134())
  {
    if (CFArrayGetCount(*(a1 + 9192)) < Count)
    {
      Count = CFArrayGetCount(*(a1 + 9192));
    }

    if (Count)
    {
      v6 = 0;
      v7 = (a2 + 48);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9192), v6);
        if (ValueAtIndex)
        {
          v9 = ValueAtIndex;
          (*(*ValueAtIndex + 824))(v14);
          v10 = v14[1];
          *(v7 - 3) = v14[0];
          *(v7 - 2) = v10;
          *(v7 - 2) = v15;
          *(v7 - 1) = (*(*v9 + 808))(v9);
          *v7 = (*(*v9 + 808))(v9);
        }

        ++v6;
        v7 += 7;
      }

      while (Count != v6);
    }

    return Count;
  }

  v11 = *(a1 + 9136);
  if (!v11)
  {
    return 0;
  }

  v12 = *(*v11 + 1256);

  return v12();
}

CFIndex sub_6AC70(uint64_t a1)
{
  if (sub_42134())
  {
    return CFArrayGetCount(*(a1 + 9192));
  }

  result = *(a1 + 9136);
  if (result)
  {
    v3 = *(*result + 1264);

    return v3();
  }

  return result;
}

uint64_t sub_6ACF0(uint64_t a1, uint64_t a2, CFIndex Count)
{
  if (sub_42134())
  {
    if (CFArrayGetCount(*(a1 + 9192)) < Count)
    {
      Count = CFArrayGetCount(*(a1 + 9192));
    }

    if (Count)
    {
      v6 = 0;
      v7 = (a2 + 8);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9192), v6);
        if (ValueAtIndex)
        {
          v9 = ValueAtIndex;
          *(v7 - 1) = (*(*ValueAtIndex + 808))(ValueAtIndex);
          *v7 = (*(*v9 + 808))(v9);
        }

        ++v6;
        v7 += 2;
      }

      while (Count != v6);
    }

    return Count;
  }

  v10 = *(a1 + 9136);
  if (!v10)
  {
    return 0;
  }

  v11 = *(*v10 + 1272);

  return v11();
}

uint64_t sub_6AE60(uint64_t a1)
{
  if (!_os_feature_enabled_impl())
  {
    Count = CFArrayGetCount(*(a1 + 9192));
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9192), v8);
        if (ValueAtIndex)
        {
          if (ValueAtIndex[192] == 1 && ((*(*ValueAtIndex + 1024))(ValueAtIndex) & 1) != 0)
          {
            break;
          }
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  v2 = CFArrayGetCount(*(a1 + 9200));
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  while (1)
  {
    v5 = CFArrayGetValueAtIndex(*(a1 + 9200), v4);
    if (v5)
    {
      if (v5[192] == 1 && ((*(*v5 + 1024))(v5) & 1) != 0)
      {
        break;
      }
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return 1;
}

void sub_6AFA8(uint64_t a1)
{
  v2 = *(a1 + 9136);
  if (v2)
  {
    sub_65E0(v2, *(*(a1 + 9280) + 296));
  }
}

void sub_6AFD4(uint64_t a1)
{
  v2 = *(a1 + 9136);
  if (v2)
  {
    v3 = *(*(a1 + 9280) + 304);
    sub_65F0(v2);
  }
}

void sub_6AFFC(void *a1, _BOOL4 a2, int a3)
{
  v3 = a1[1160];
  if (*(v3 + 293) != 1)
  {
    return;
  }

  *(v3 + 145) = a2;
  if (a3)
  {
    strcpy(buf, "caobbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*a1 + 248))(a1, buf);
    v6 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "False";
      if (a2)
      {
        v7 = "True";
      }

      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notify Mx ownership Changed to %{public}s", buf, 0xCu);
    }
  }

  v8 = a1[1136];
  if (v8 && *(v8 + 192) == 1)
  {
    (*(*a1 + 864))(__p, a1);
    sub_647C(v8, __p, a2);
    if ((v13 & 0x80000000) == 0)
    {
      if (!a2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    operator delete(__p[0]);
    if (a2)
    {
LABEL_13:
      sub_5B4C8(a1);
    }
  }

LABEL_14:
  v9 = a1[1137];
  if (v9 && *(v9 + 192) == 1)
  {
    (*(*a1 + 864))(v10, a1);
    sub_647C(v9, v10, a2);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_6B1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_6B270(void *a1, int a2)
{
  v3 = a1[1160];
  if (*(v3 + 184) != a2)
  {
    sub_2C7A0(v3, a2);
    v5 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      sub_94C0(*(a1[1160] + 184), __p);
      v6 = v11;
      v7 = __p[0];
      v8 = (*(*a1 + 16))(a1);
      v9 = __p;
      *buf = 136446722;
      if (v6 < 0)
      {
        v9 = v7;
      }

      v13 = v9;
      v14 = 1024;
      v15 = a2;
      v16 = 1024;
      v17 = v8;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "MicMode set to %{public}s (%d) for mAudioObjectID %d", buf, 0x18u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_6B3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6B3DC(void *a1, int a2)
{
  v2 = a1[1160];
  if (*(v2 + 60) != a2)
  {
    *(v2 + 60) = a2;
    v4 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(*a1 + 16))(a1);
      v6 = *(a1[1160] + 60);
      v7[0] = 67109376;
      v7[1] = v5;
      v8 = 1024;
      v9 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Local stream state of mAudioObjectID %d changed to %d", v7, 0xEu);
    }
  }
}

uint64_t sub_6B4CC(_BYTE *a1)
{
  a1[9305] = 1;
  v2 = 0x676C6F6266726368;
  v3 = 0;
  return (*(*a1 + 248))(a1, &v2);
}

uint64_t sub_6B52C(uint64_t result)
{
  if (*(*(result + 9280) + 230) == 1)
  {
    v1 = result;
    v2 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[1135];
      v4[0] = 138543362;
      *&v4[1] = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Notify Spatial Audio Mode via NowPlaying App changed: %{public}@", v4, 0xCu);
    }

    strcpy(v4, "dmpsbolg");
    BYTE1(v4[2]) = 0;
    HIWORD(v4[2]) = 0;
    return (*(*v1 + 248))(v1, v4);
  }

  return result;
}

void sub_6B61C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 9136);
  if (v4 && v4[192] == 1 && *(*(a1 + 9280) + 228) == 1)
  {
    v5 = *(*v4 + 1160);

    v5();
  }

  else
  {
    v6 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_81258(a1, a2, v6);
    }
  }
}

id sub_6B6E4(uint64_t a1)
{
  result = [*(a1 + 32) getPersonalizedVolumeDevice:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 48);

    return [result NotifyManualVolumeChanged:v3 shouldUpdateBuds:0];
  }

  return result;
}

void *sub_6B738@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1160];
  if (*(v2 + 31) < 0)
  {
    return sub_9780(a2, *(v2 + 8), *(v2 + 16));
  }

  v3 = *(v2 + 8);
  *(a2 + 16) = *(v2 + 24);
  *a2 = v3;
  return result;
}

uint64_t sub_6B7D0(uint64_t a1, int a2, int a3)
{
  if (sub_42134())
  {
    return (a2 == 1735159650 || a2 == 1869968496 || a2 == 1768845428) && a3 == 0;
  }

  else
  {
    v7 = *(**(a1 + 9136) + 1312);

    return v7();
  }
}

uint64_t sub_6B89C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v33[0] = 0;
  v33[1] = 0;
  sub_70AF4(v33, a1 + 600);
  v6 = *(a1 + 9296);
  if (v6 == a3 && (v7 = *(a1 + 9288), v7 == a2))
  {
    *(a1 + 9304) = 0;
    v8 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 9080);
      LOBYTE(v31) = BYTE3(v7);
      BYTE1(v31) = BYTE2(v7);
      BYTE2(v31) = BYTE1(v7);
      HIBYTE(v31) = v7;
      v32 = 0;
      v26 = BYTE3(a2);
      v27 = BYTE2(a2);
      v28 = BYTE1(a2);
      v29 = a2;
      v30 = 0;
      v21 = BYTE3(v6);
      v22 = BYTE2(v6);
      v23 = BYTE1(v6);
      v24 = v6;
      v25 = 0;
      v16 = HIBYTE(a3);
      v17 = BYTE2(a3);
      v18 = BYTE1(a3);
      v19 = a3;
      v20 = 0;
      *buf = 138544386;
      *&buf[4] = v9;
      v35 = 2082;
      v36 = &v31;
      v37 = 2082;
      v38 = &v26;
      v39 = 2082;
      v40 = &v21;
      v41 = 2082;
      v42 = &v16;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: No profile/reason change for AMP [%{public}@ ] , profile %{public}s => %{public}s reason %{public}s = > %{public}s ", buf, 0x34u);
    }

    sub_68CC0(a1);
    strcpy(buf, "pcvabolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*a1 + 248))(a1, buf);
  }

  else
  {
    v10 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 9080);
      v11.i32[0] = *(a1 + 9288);
      v13 = vrev64_s16(*&vmovl_u8(v11));
      v31 = vuzp1_s8(v13, v13).u32[0];
      v32 = 0;
      v26 = BYTE3(a2);
      v27 = BYTE2(a2);
      v28 = BYTE1(a2);
      v29 = a2;
      v30 = 0;
      v21 = BYTE3(v6);
      v22 = BYTE2(v6);
      v23 = BYTE1(v6);
      v24 = v6;
      v25 = 0;
      v16 = HIBYTE(a3);
      v17 = BYTE2(a3);
      v18 = BYTE1(a3);
      v19 = a3;
      v20 = 0;
      *buf = 138544386;
      *&buf[4] = v12;
      v35 = 2082;
      v36 = &v31;
      v37 = 2082;
      v38 = &v26;
      v39 = 2082;
      v40 = &v21;
      v41 = 2082;
      v42 = &v16;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: [%{public}@ ] Perform Route change for AMP, profile %{public}s => %{public}s reason %{public}s = > %{public}s ", buf, 0x34u);
    }

    if (*(a1 + 9096) || *(a1 + 9088) || sub_5B374(a1))
    {
      (*(*a1 + 1408))(a1, *(a1 + 9288), a2, *(a1 + 9296));
      *(a1 + 9296) = a3;
      sub_5AB14(a1, a2);
      if (sub_5B374(a1))
      {
        v14 = (*(*(a1 + 9280) + 129) & 1) == 0 && *(a1 + 9296) != 1634562153;
        (*(**(a1 + 9104) + 616))(*(a1 + 9104), v14);
      }
    }
  }

  return sub_70C40(v33);
}

uint64_t sub_6BC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[0] = 0;
  v32[1] = 0;
  sub_70AF4(v32, a1 + 600);
  v6 = *(a1 + 9288);
  if (v6 == a2 && (v7 = *(a1 + 9296), v7 == a3))
  {
    *(a1 + 9304) = 0;
    v8 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 9080);
      v27 = BYTE3(v6);
      v28 = BYTE2(v6);
      v29 = BYTE1(v6);
      v30 = v6;
      v31 = 0;
      v23 = BYTE3(a2);
      v24 = BYTE2(a2);
      v25 = BYTE1(a2);
      v26 = a2;
      LOBYTE(v21) = BYTE3(v7);
      BYTE1(v21) = BYTE2(v7);
      BYTE2(v21) = BYTE1(v7);
      HIBYTE(v21) = v7;
      v22 = 0;
      v16 = BYTE3(a3);
      v17 = BYTE2(a3);
      v18 = BYTE1(a3);
      v19 = a3;
      v20 = 0;
      *buf = 138544386;
      *&buf[4] = v9;
      v34 = 2082;
      v35 = &v27;
      v36 = 2082;
      v37 = &v23;
      v38 = 2082;
      v39 = &v21;
      v40 = 2082;
      v41 = &v16;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: No profile/reason change [%{public}@ ] , profile %{public}s => %{public}s reason %{public}s = > %{public}s ", buf, 0x34u);
    }

    sub_68CC0(a1);
    strcpy(buf, "pcvabolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*a1 + 248))(a1, buf);
  }

  else
  {
    v10 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 9080);
      v27 = BYTE3(v6);
      v28 = BYTE2(v6);
      v29 = BYTE1(v6);
      v30 = v6;
      v31 = 0;
      v23 = BYTE3(a2);
      v24 = BYTE2(a2);
      v25 = BYTE1(a2);
      v26 = a2;
      v11.i32[0] = *(a1 + 9296);
      v13 = vrev64_s16(*&vmovl_u8(v11));
      v21 = vuzp1_s8(v13, v13).u32[0];
      v22 = 0;
      v16 = BYTE3(a3);
      v17 = BYTE2(a3);
      v18 = BYTE1(a3);
      v19 = a3;
      v20 = 0;
      *buf = 138544386;
      *&buf[4] = v12;
      v34 = 2082;
      v35 = &v27;
      v36 = 2082;
      v37 = &v23;
      v38 = 2082;
      v39 = &v21;
      v40 = 2082;
      v41 = &v16;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: [%{public}@ ] Perform Route change, profile %{public}s => %{public}s reason %{public}s = > %{public}s ", buf, 0x34u);
    }

    if (*(a1 + 9096) || *(a1 + 9088) || *(a1 + 9120) || *(a1 + 9128))
    {
      v14 = *(a1 + 9288);
      if (v14 == a2)
      {
        (*(*a1 + 1416))(a1, a2, *(a1 + 9296), a3);
      }

      else
      {
        (*(*a1 + 1408))(a1, v14, a2, *(a1 + 9296));
        *(a1 + 9296) = a3;
        sub_5AB14(a1, a2);
      }
    }
  }

  return sub_70C40(v32);
}

uint64_t sub_6C038(uint64_t *a1, const __CFString *a2, int a3, int a4)
{
  sub_33850(a1[1160], a2, a3, a4);
  v6 = 0x676C6F6273706D64;
  v7 = 0;
  (*(*a1 + 248))(a1, &v6);
  v6 = 0x676C6F6273706366;
  v7 = 0;
  return (*(*a1 + 248))(a1, &v6);
}

uint64_t sub_6C0E0(uint64_t a1)
{
  pthread_mutex_lock((a1 + 9344));
  v2 = *(a1 + 9136);
  if (v2 && (*(*v2 + 1224))(v2))
  {
    *(a1 + 9473) = 1;
    v3 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 9080);
      v8[0] = 138543362;
      *&v8[1] = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@ ] Wait for transport update", v8, 0xCu);
    }

    if (pthread_cond_timedwait_relative_np((a1 + 9408), (a1 + 9344), (a1 + 9456)) == 60 && os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_8130C(a1);
    }

    *(a1 + 9473) = 0;
  }

  if (*(a1 + 9504) == 1)
  {
    *(a1 + 9504) = 2;
  }

  strcpy(v8, "dbobbolg");
  BYTE1(v8[2]) = 0;
  HIWORD(v8[2]) = 0;
  (*(*a1 + 248))(a1, v8);
  v5 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 9080);
    v8[0] = 138543362;
    *&v8[1] = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ ] transport Update Completed", v8, 0xCu);
  }

  return pthread_mutex_unlock((a1 + 9344));
}

void sub_6C2D0(uint64_t a1)
{
  v1 = sub_508C0(qword_D8DF0, *(a1 + 32));
  if (v1)
  {

    sub_6C0E0(v1);
  }

  else
  {
    v2 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "transport update dispatched after disconnection", v3, 2u);
    }
  }
}

uint64_t sub_6C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 9136);
  if (v6)
  {
    v7 = (*(*v6 + 1416))(v6, a2, a3, a4);
    *(a1 + 9296) = v4;
    if (v7)
    {
      return 1;
    }
  }

  else
  {
    *(a1 + 9296) = a4;
  }

  *(a1 + 9304) = 0;
  sub_68CC0(a1);
  v9 = 0x676C6F6261766370;
  v10 = 0;
  (*(*a1 + 248))(a1, &v9);
  return 1;
}

BOOL sub_6C43C(uint64_t a1)
{
  v1 = *(a1 + 9136);
  if (v1 && (*(*v1 + 1408))(*(a1 + 9136)))
  {
    sub_69534(a1);
  }

  return v1 != 0;
}

uint64_t sub_6C4A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C00(a1, a3);
  if (*(a1[1160] + 222) == 1)
  {
    v8 = a1[1142];
    if (v8)
    {
      (*(*v8 + 1432))(v8, a2, v7, a4);
    }

    return 1;
  }

  v9 = a1[1137];
  if (!v9 || v9[192] != 1 || !(*(*v9 + 1208))(v9))
  {
    return 1;
  }

  if (a2 != 1953719151 && v7 != 1919183219)
  {
    v10 = qword_D8590;
    if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    if (*(a1[1137] + 192))
    {
      v11 = a1[1137];
    }

    else
    {
      v11 = 0;
    }

    v12 = (*(*v11 + 1208))(v11);
    v13 = "idle";
    if (v12)
    {
      v13 = "active";
    }

    v22 = 136315138;
    v23 = v13;
    v14 = "Route changing in while eSCO is active, transport %s";
    goto LABEL_16;
  }

  if (a2 != 1953719151)
  {
    return 1;
  }

  v16 = _os_feature_enabled_impl();
  v17 = v7 == 1919312242 ? v16 : 0;
  if ((v17 & 1) == 0 && v7 != 1936090482)
  {
    return 1;
  }

  if (!sub_69474(a1))
  {
    return 1;
  }

  v18 = *(a1[1137] + 192) ? a1[1137] : 0;
  if (v18[2335] == v18[2332])
  {
    return 1;
  }

  v10 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v20 = (*(*v18 + 1208))(v18);
    v21 = "idle";
    if (v20)
    {
      v21 = "active";
    }

    v22 = 136315138;
    v23 = v21;
    v14 = "Route changing update OoB link, transport %s";
LABEL_16:
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v14, &v22, 0xCu);
  }

LABEL_17:
  if (*(a1[1137] + 192))
  {
    v15 = a1[1137];
  }

  else
  {
    v15 = 0;
  }

  if ((*(*v15 + 256))(v15, 0, 1918989668, 1))
  {
    sub_69534(a1);
  }

  return 1;
}

uint64_t sub_6C7C0(uint64_t a1, int a2, int a3)
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v6 = *(a1 + 9296);
  if (a3 != 1634562153)
  {
    v7 = v6 == 1634562153;
    v6 = 1634562153;
    if (!v7)
    {
      return 0;
    }
  }

  if (v6 == a3 && *(a1 + 9288) == a2)
  {
    return 2;
  }

  if (!sub_5B374(a1))
  {
    return 1;
  }

  if (a3 == 1634562153)
  {
    a2 = 1952538980;
    v10 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Request For route Change to AppleAudioAccessoryDevice for ampi", buf, 2u);
    }
  }

  *buf = 0;
  v18 = 0;
  sub_70AF4(buf, a1 + 600);
  *(a1 + 9304) = 1;
  v11 = (*(*a1 + 16))(a1);
  sub_70BD4(buf);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_6C9E0;
  v13[3] = &unk_AE9B8;
  v14 = v11;
  v15 = a2;
  v16 = a3;
  sub_507D8(qword_D8DF0, v11, v13);
  if (a3 == 1634562153)
  {
    v12 = *(a1 + 9104);
    if (v12)
    {
      v8 = 1;
      if (*(v12 + 9176))
      {
        if (*(v12 + 9168))
        {
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 2;
  }

  sub_70C40(buf);
  return v8;
}

void sub_6C9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

void sub_6C9E0(_DWORD *a1)
{
  v2 = sub_508C0(qword_D8DF0, a1[8]);
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[10];

    sub_6B89C(v2, v3, v4);
  }

  else
  {
    v5 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "transport update dispatched after disconnection", v6, 2u);
    }
  }
}

void sub_6CA84(uint64_t a1)
{
  v2 = sub_508C0(qword_D8DF0, *(a1 + 32));
  if (v2)
  {
    v3 = *(a1 + 36);
    v4 = *(a1 + 40);

    sub_6BC74(v2, v3, v4);
  }

  else
  {
    v5 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "transport update dispatched after disconnection", v6, 2u);
    }
  }
}

uint64_t sub_6CB28(uint64_t a1, int a2, uint64_t a3)
{
  v5 = (*(*a1 + 16))(a1);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6CE2C;
  v7[3] = &unk_B15D0;
  v8 = v5;
  v9 = a2;
  v7[4] = a3;
  return sub_507D8(qword_D8DF0, v5, v7);
}

uint64_t sub_6CBDC(uint64_t a1)
{
  result = *(a1 + 9136);
  if (result)
  {
    return (*(*result + 1200))();
  }

  return result;
}

uint64_t sub_6CC14(uint64_t a1)
{
  result = *(a1 + 9136);
  if (result)
  {
    return (*(*result + 1496))();
  }

  return result;
}

uint64_t sub_6CC4C(uint64_t a1)
{
  result = *(a1 + 9136);
  if (result)
  {
    return (*(*result + 272))();
  }

  return result;
}

void sub_6CC84(uint64_t a1, int a2, unsigned int a3, uint64_t *a4)
{
  if (*a4 == 1651795567)
  {
    v22 = v7;
    v23 = v6;
    v24 = v4;
    v25 = v5;
    v20 = *a4;
    v21 = *(a4 + 2);
    v11 = sub_51524(qword_D8DF0, a3);
    if (v11)
    {
      v12 = dispatch_source_create(&_dispatch_source_type_proc, a2, 0x80000000uLL, v11);
      if (v12)
      {
        v13 = v12;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_6CDDC;
        handler[3] = &unk_B1640;
        v16 = a3;
        v17 = v20;
        v18 = v21;
        v19 = a2;
        handler[4] = v12;
        handler[5] = a1;
        dispatch_source_set_event_handler(v12, handler);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_6CE24;
        v14[3] = &unk_ADD50;
        v14[4] = v13;
        dispatch_source_set_cancel_handler(v13, v14);
        dispatch_resume(v13);
      }
    }
  }
}

void sub_6CDDC(uint64_t a1)
{
  sub_508C0(qword_D8DF0, *(a1 + 48));
  v2 = *(a1 + 32);

  dispatch_source_cancel(v2);
}

void sub_6CE2C(uint64_t a1)
{
  v2 = sub_508C0(qword_D8DF0, *(a1 + 40));
  if (v2)
  {
    v3 = *(a1 + 44);
    v4 = *(a1 + 32);
    v5 = *(*v2 + 240);

    v5();
  }

  else
  {
    v6 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Update dispatched after disconnection", v7, 2u);
    }
  }
}

void sub_6CEF4(uint64_t a1, int a2)
{
  v2 = *(a1 + 9280);
  if (*(v2 + 221) != a2)
  {
    *(v2 + 221) = a2;
    if (_os_feature_enabled_impl())
    {
      v5 = *(a1 + 9096);
      if (v5)
      {
        if (*(v5 + 192) == 1 && sub_70818())
        {
          v6 = qword_D8590;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            v8 = "disabled";
            v7.i32[0] = *(a1 + 9288);
            v9 = vrev64_s16(*&vmovl_u8(v7));
            v13 = vuzp1_s8(v9, v9).u32[0];
            v14 = 0;
            if (a2)
            {
              v8 = "enabled";
            }

            *buf = 136315394;
            *&buf[4] = v8;
            v16 = 2080;
            v17 = &v13;
            _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Low Latency Game ForceRouteChange check, game %s, currentProfile %s", buf, 0x16u);
          }

          sub_64CC4(a1);
          if (*(a1 + 9288) == 1953719151)
          {
            LOBYTE(v13) = 0;
            v10 = sub_6D0F8(a1, &v13, 1);
            if (a2)
            {
              if (v13 == 4 && v10)
              {
                v12 = qword_D8590;
                if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "ForceRouteChange step1 notify VA", buf, 2u);
                }

                *(a1 + 9305) = 1;
                strcpy(buf, "hcrfbolg");
                buf[9] = 0;
                *&buf[10] = 0;
                (*(*a1 + 248))(a1, buf);
              }
            }
          }
        }
      }
    }
  }
}

BOOL sub_6D0F8(uint64_t a1, char *a2, int a3)
{
  v3 = *(a1 + 9096);
  if (!v3 || *(v3 + 192) != 1)
  {
    return 0;
  }

  v7 = *(a1 + 9337);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if ((sub_42134() & 1) == 0)
      {
        v19 = qword_D8590;
        if (a2)
        {
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "HFPStereo DeviceConfigurationHighStereo", &v21, 2u);
            v19 = qword_D8590;
          }

          *a2 = 3;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(v3 + 9340);
          v21 = 67109120;
          v22 = v20;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "HFPStereo iOS need High Stereo, currentCodec %u", &v21, 8u);
        }

        return 1;
      }
    }

    else if (v7 == 4)
    {
      if (a3)
      {
        v11 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(v3 + 9340);
          v21 = 67109120;
          v22 = v12;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "HFPStereo need HAoS, currentCodec %u", &v21, 8u);
        }
      }

      if (!a2)
      {
        return 1;
      }

      v10 = 4;
      goto LABEL_19;
    }

LABEL_27:
    if (a3)
    {
      v16 = qword_D8590;
      result = os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v17 = *(a1 + 9337);
      v18 = *(v3 + 9340);
      v21 = 67109376;
      v22 = v17;
      v23 = 1024;
      v24 = v18;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "HFPStereo no HFPStereo pending, pendingConfig %u, currentCodec %u", &v21, 0xEu);
    }

    return 0;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v8 = *(v3 + 9340);
      if (v8 != 128)
      {
        if (a3)
        {
          v9 = qword_D8590;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 67109120;
            v22 = v8;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "HFPStereo need Low Stereo, currentCodec %u", &v21, 8u);
          }
        }

        if (!a2)
        {
          return 1;
        }

        v10 = 2;
LABEL_19:
        *a2 = v10;
        return 1;
      }
    }

    goto LABEL_27;
  }

  v13 = *(v3 + 9340);
  if ((v13 | 0x100) == 0x100)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    v14 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109120;
      v22 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "HFPStereo need Mono, currentCodec %u", &v21, 8u);
    }
  }

  result = 1;
  if (a2)
  {
    *a2 = 1;
  }

  return result;
}

_BYTE *sub_6D3F4(void *a1, uint64_t a2)
{
  v4 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[1135];
    v21[0] = BYTE3(a2);
    v21[1] = BYTE2(a2);
    v21[2] = BYTE1(a2);
    v21[3] = a2;
    v21[4] = 0;
    *buf = 138543618;
    *&buf[4] = v5;
    v23 = 2080;
    v24 = v21;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Post Publish UnifiedAudioDevice : %{public}@, %s", buf, 0x16u);
  }

  (*(*a1 + 1360))(a1, *(a1[1160] + 145), 0);
  v6 = a1[1137];
  if (v6 && *(v6 + 192) == 1)
  {
    if (sub_42134())
    {
      v7 = a1[1137];
      if (v7)
      {
        if (*(v7 + 192) == 1)
        {
          v8 = a1[1160];
          if (*(v8 + 244))
          {
            sub_2DBF8(v8, 1);
          }
        }
      }
    }

    else if (sub_70818())
    {
      if (a2 == 1953719151)
      {
        sub_64CC4(a1);
        buf[0] = 0;
        if (sub_6D0F8(a1, buf, 1))
        {
          if (*(a1[1137] + 192))
          {
            v9 = a1[1137];
          }

          else
          {
            v9 = 0;
          }

          (*(*v9 + 536))(v9, buf[0]);
        }

        else if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_81384();
        }
      }
    }

    else if (sub_42134())
    {
      v10 = a1[1137];
      if (v10)
      {
        if (*(v10 + 192) == 1 && *(a1[1160] + 244))
        {
          sub_64CC4(a1);
          sub_2DBF8(a1[1160], 1);
        }
      }
    }
  }

  if (*(a1[1160] + 251) == 1 && !a1[1139])
  {
    v11 = +[BTAudioSmartRouteManager sharedInstance];
    v12 = [NSString alloc];
    (*(*a1 + 864))(buf, a1);
    if (v25 >= 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    v14 = [v12 initWithUTF8String:v13];
    if (v25 < 0)
    {
      operator delete(*buf);
    }

    v15 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Register with Smart Route Managet with BDADDR: %@", buf, 0xCu);
    }

    a1[1139] = [(BTAudioSmartRouteManager *)v11 registerDevice:(*(*a1 + 16))(a1) deviceAddr:v14];
  }

  if (a2 == 1952539500)
  {
    v18 = a1[1136];
    if (v18 && *(v18 + 192) == 1)
    {
      sub_5B4C8(a1);
      v19 = *(a1[1136] + 192) ? a1[1136] : 0;
      (*(*v19 + 568))(v19);
      if (*(a1[1160] + 230) == 1)
      {
        strcpy(buf, "cathbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*a1 + 248))(a1, buf);
        strcpy(buf, "tsthbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*a1 + 248))(a1, buf);
        strcpy(buf, "vathbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*a1 + 248))(a1, buf);
        strcpy(buf, "dmpsbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*a1 + 248))(a1, buf);
        strcpy(buf, "shpsbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*a1 + 248))(a1, buf);
        strcpy(buf, "vapsbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*a1 + 248))(a1, buf);
        strcpy(buf, "ofpsbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*a1 + 248))(a1, buf);
        strcpy(buf, "vspsbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*a1 + 248))(a1, buf);
      }
    }
  }

  else if (a2 == 1953719151)
  {
    result = a1[1137];
    if (!result)
    {
      return result;
    }

    if (result[192] == 1)
    {
      if (a1[1161] == 1952539500)
      {
        v17 = *(a1[1160] + 288);
      }

      else
      {
        v17 = 0;
      }

      (*(*result + 584))(result, v17 & 1);
      if (*(a1[1137] + 192))
      {
        v20 = a1[1137];
      }

      else
      {
        v20 = 0;
      }

      (*(*v20 + 1000))(v20);
    }
  }

  result = a1[1137];
  if (result && result[192] == 1 && *(a1[1160] + 224) == 1)
  {
    return (*(*result + 536))(result, 4);
  }

  return result;
}

void sub_6DAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6DAE4(void *a1)
{
  v2 = *(a1[1160] + 376);
  v3 = a1[1161];
  if (v3 != 1952539500)
  {
    if (v3 == 1953719151 && (*(*a1 + 1024))(a1) && v2 < 6)
    {
      v5 = 0x34u >> v2;
      return v5 & 1;
    }

LABEL_17:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v6 = a1[1136];
  if (!v6)
  {
    goto LABEL_17;
  }

  if (v6[192] != 1)
  {
    goto LABEL_17;
  }

  v7 = (*(*v6 + 672))(v6);
  if (!(*(*a1 + 1024))(a1))
  {
    goto LABEL_17;
  }

  LOBYTE(v5) = 1;
  if (v2 > 5 || ((1 << v2) & 0x34) == 0)
  {
    LOBYTE(v5) = v7 == 6;
  }

  return v5 & 1;
}

uint64_t sub_6DC28(dispatch_block_t *a1, uint64_t a2)
{
  v4 = (*(*a1 + 2))(a1);
  v10[0] = 0;
  v10[1] = 0;
  sub_70AF4(v10, (a1 + 1205));
  v5 = a1[1213];
  if (v5)
  {
    if (!dispatch_block_testcancel(a1[1213]))
    {
      v6 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Delayed Control Centre Update on USBC: Cancelling current Dispatch", buf, 2u);
        v5 = a1[1213];
      }

      dispatch_block_cancel(v5);
      v5 = a1[1213];
    }

    _Block_release(v5);
    a1[1213] = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6DDA8;
  block[3] = &unk_AD3E8;
  block[4] = a1;
  a1[1213] = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  sub_70BD4(v10);
  sub_51628(qword_D8DF0, a2, v4, a1[1213]);
  return sub_70C40(v10);
}

void sub_6DD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6DDA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = 0;
  v3[1] = 0;
  sub_70AF4(v3, (v1 + 1205));
  _Block_release(v1[1213]);
  v1[1213] = 0;
  sub_70BD4(v3);
  (*(*v1 + 91))(v1);
  return sub_70C40(v3);
}

uint64_t sub_6DE44(void *a1)
{
  v2 = a1[1160];
  v3 = *(v2 + 243);
  v4 = (*(*a1 + 1024))(a1);
  sub_34738(v2, (v4 | v3) & 1);
  v5 = a1[1136];
  if (v5 && *(v5 + 192) == 1)
  {
    v6 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_6DAE4(a1);
      v8 = (*(*a1 + 1024))(a1);
      *buf = 67109376;
      *&buf[4] = v7;
      *&buf[8] = 1024;
      v18 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Setting Spatial Active: %d Active IO = %d", buf, 0xEu);
    }

    v9 = sub_6DAE4(a1);
    v10 = (*(*a1 + 16))(a1);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_6E11C;
    v14[3] = &unk_B1660;
    v15 = v10;
    v16 = v9;
    sub_507D8(qword_D8DF0, v10, v14);
  }

  else
  {
    v11 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (*(*a1 + 1024))(a1);
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Whether Spatial is Active couldn't be determined. Active IO = %d", buf, 8u);
    }
  }

  strcpy(buf, "cnpsbolg");
  buf[9] = 0;
  LOWORD(v18) = 0;
  (*(*a1 + 248))(a1, buf);
  strcpy(buf, "ifpsbolg");
  buf[9] = 0;
  LOWORD(v18) = 0;
  return (*(*a1 + 248))(a1, buf);
}

void *sub_6E11C(uint64_t a1)
{
  result = sub_508C0(qword_D8DF0, *(a1 + 32));
  if (result)
  {
    result = result[1136];
    if (result)
    {
      if (*(result + 192) == 1)
      {
        v3 = *(a1 + 36);
        v4 = *(*result + 744);

        return v4();
      }
    }
  }

  return result;
}

uint64_t sub_6E1B0(uint64_t result)
{
  if (*(*(result + 9280) + 222) == 1)
  {
    result = *(result + 9136);
    if (result)
    {
      if (*(result + 192) == 1)
      {
        return (*(*result + 1456))();
      }
    }
  }

  return result;
}

uint64_t sub_6E204(uint64_t a1, int a2, uint64_t a3)
{
  result = sub_42134();
  if (result)
  {
    if (*(*(a1 + 9280) + 488))
    {
      v7 = 4 * a3;
    }

    else
    {
      v7 = a3;
    }

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = 500;
    }

    if (a2)
    {
      v9 = (*(*a1 + 16))(a1);
      v17 = 0;
      v18 = 0;
      sub_70AF4(&v17, a1 + 9640);
      v10 = *(a1 + 9704);
      if (v10)
      {
        if (!dispatch_block_testcancel(*(a1 + 9704)))
        {
          v11 = qword_D8590;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Delayed Control Centre Update: Cancelling current Dispatch", buf, 2u);
            v10 = *(a1 + 9704);
          }

          dispatch_block_cancel(v10);
          v10 = *(a1 + 9704);
        }

        _Block_release(v10);
        *(a1 + 9704) = 0;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_6E538;
      block[3] = &unk_AD3E8;
      block[4] = a1;
      *(a1 + 9704) = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
      sub_70BD4(&v17);
      v12 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = v8;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Triggering a delayed Control Centre update : %lld", buf, 0xCu);
      }

      sub_51628(qword_D8DF0, v8, v9, *(a1 + 9704));
    }

    else
    {
      v17 = 0;
      v18 = 0;
      sub_70AF4(&v17, a1 + 9640);
      v13 = *(a1 + 9704);
      if (v13)
      {
        if (!dispatch_block_testcancel(*(a1 + 9704)))
        {
          v14 = qword_D8590;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Control Centre: Cancelling current Dispatch", buf, 2u);
            v13 = *(a1 + 9704);
          }

          dispatch_block_cancel(v13);
          v13 = *(a1 + 9704);
        }

        _Block_release(v13);
        *(a1 + 9704) = 0;
      }

      sub_70BD4(&v17);
      v15 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Triggering a non-delayed Control Centre update", buf, 2u);
      }

      (*(*a1 + 728))(a1);
    }

    return sub_70C40(&v17);
  }

  return result;
}

uint64_t sub_6E538(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = 0;
  v3[1] = 0;
  sub_70AF4(v3, (v1 + 1205));
  _Block_release(v1[1213]);
  v1[1213] = 0;
  sub_70BD4(v3);
  (*(*v1 + 91))(v1);
  return sub_70C40(v3);
}

void sub_6E5D4(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = [objc_msgSend(*(a1 + 9080) componentsSeparatedByString:{@"-", "firstObject"}];
    v3 = *(qword_D8DF0 + 464);
    if ((!v3 || ![v3 usbAudioDeviceList]) && os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_81034();
    }

    v4 = *(a1 + 9136);
    if (v4 && *(v4 + 192) == 1 && (v5 = *(a1 + 9088), v4 == v5))
    {
      *buf = 0;
      v10 = buf;
      v11 = 0x2020000000;
      v12 = (*(*v5 + 952))();
      v7 = [*(qword_D8DF0 + 464) usbAudioDeviceList];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_6E7C8;
      v8[3] = &unk_B1688;
      v8[4] = v2;
      v8[5] = buf;
      [v7 enumerateKeysAndObjectsUsingBlock:v8];
      _Block_object_dispose(buf, 8);
    }

    else if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_813B8();
    }
  }

  else
  {
    v6 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: Defaults writes for unified usb device are missing", buf, 2u);
    }
  }
}

void sub_6E7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6E7C8(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  if (a3 && [objc_msgSend(a3 "btAddress")])
  {
    v7 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: syncVolumeWithUSBC Found device matching %@", buf, 0xCu);
    }

    if (![objc_msgSend(a3 "usbDevice")])
    {
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_813EC();
      }

      goto LABEL_19;
    }

    v9 = [objc_msgSend(a3 "usbDevice")];
    v21 = v9;
    v10 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(*(a1 + 40) + 8) + 24);
      v12 = [a3 usbUID];
      *buf = 134218498;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 1024;
      v27 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: syncVolumeWithUSBC Setting volume %f on device %@ propertySize %d", buf, 0x1Cu);
    }

    v13 = malloc_type_malloc(v9, 0x100004052888210uLL);
    [objc_msgSend(a3 "usbDevice")];
    if (v21 >= 4)
    {
      v14 = 0;
      v15 = v21 >> 2;
      do
      {
        v16 = v13[v14];
        v20 = *(*(*(a1 + 40) + 8) + 24);
        v17 = [[ASAControl alloc] initWithAudioObjectID:v16];
        if ([v17 hasMainOutputProperty:1818456950])
        {
          [v17 setMainOutputProperty:1818456950 withData:&v20 ofSize:4 withQualifier:0 ofSize:0];
          v18 = qword_D8590;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            v19 = COERCE_DOUBLE([v17 description]);
            *buf = 138412290;
            v23 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice:syncVolumeWithUSBC volume applied on control %@", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v15 > v14);
    }

    else if (!v13)
    {
      goto LABEL_19;
    }

    free(v13);
LABEL_19:
    *a4 = 1;
  }
}

void *sub_6EAC8(void *result, uint64_t a2, void *a3, _BYTE *a4)
{
  if (a3)
  {
    v6 = result;
    result = [objc_msgSend(a3 "btAddress")];
    if (result)
    {
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_81420(v6 + 4);
      }

      result = [objc_msgSend(a3 "usbDevice")];
      if (result)
      {
        v7 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          if (*(v6 + 10))
          {
            v8 = "MUTE COMMAND";
          }

          else
          {
            v8 = "UNMUTE COMMAND";
          }

          v9 = 136315394;
          v10 = v8;
          v11 = 2112;
          v12 = [a3 usbUID];
          _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "BTUnifiedAudioDevice:Setting %s on device %@", &v9, 0x16u);
          v7 = qword_D8590;
        }

        v9 = *(v6 + 10);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_81498();
        }

        result = [objc_msgSend(a3 "usbDevice")];
      }

      *a4 = 1;
    }
  }

  return result;
}

NSString *sub_6EC70(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  v3 = +[NSString defaultCStringEncoding];

  return [NSString stringWithCString:v2 encoding:v3];
}

void sub_6ECC8(uint64_t *a1, void *a2, int a3, int a4, int a5, int a6, int a7)
{
  (*(*a1 + 864))(__p);
  v13 = v31;
  v14 = __p[0];
  v15 = +[NSString defaultCStringEncoding];
  if (v13 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = v14;
  }

  v17 = [NSString stringWithCString:v16 encoding:v15];
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 && [a2 isEqualToString:v17])
  {
    v18 = a3 == 1;
    sub_30088(a1[1160], @"kBluetoothAudioDeviceFeatureHearingAssistCapability", v18);
    sub_305B8(a1[1160]);
    v19 = a1[1160];
    *(v19 + 347) = v18;
    v21 = a4 == 1 && a5 == 1;
    v22 = *(v19 + 352);
    v23 = v22 & 0xFFFFFFFD;
    if ((a6 & 0xFD) != 0)
    {
      v23 = *(v19 + 352);
    }

    v24 = ~v22 & 2;
    if (a6 != 1)
    {
      v24 = 0;
    }

    v25 = v24 | v23;
    v26 = v25 & 0xFFFFFFFB;
    v27 = *(v19 + 352) & 4;
    if (!v27)
    {
      v26 = v25;
    }

    if ((a7 & 0xFD) == 0)
    {
      v25 = v26;
    }

    v28 = v27 ^ 4;
    if (a7 != 1)
    {
      v28 = 0;
    }

    *(v19 + 352) = v25 | v28;
    *(v19 + 348) = v21;
    v32 = 0x676C6F6268616573;
    v33 = 0;
    (*(*a1 + 248))(a1, &v32);
    sub_35CB0(a1[1160]);
  }
}

void sub_6EE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6EEA0(uint64_t a1, uint64_t a2)
{
  v4 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice ConnectIODevices", buf, 2u);
  }

  v5 = *(a1 + 9104);
  if (v5)
  {
    sub_267D0(v5, a1, a2);
    sub_268A8(*(a1 + 9104), *(a1 + 9088));
  }

  else
  {
    v6 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice not ready to install IO device", v7, 2u);
    }
  }
}

double sub_6EFF0()
{
  qword_D8590 = os_log_create("com.apple.bluetooth", "BTAudio");
  xmmword_D85A0 = xmmword_890D0;
  byte_D85B0 = 0;
  unk_D85B4 = xmmword_890E0;
  byte_D85C4 = 0;
  unk_D85C8 = xmmword_890F0;
  byte_D85D8 = 0;
  unk_D85DC = xmmword_89100;
  byte_D85EC = 0;
  xmmword_D85F0 = xmmword_89110;
  byte_D8600 = 0;
  unk_D8604 = xmmword_89120;
  byte_D8614 = 0;
  unk_D8618 = xmmword_89130;
  byte_D8628 = 0;
  unk_D862C = xmmword_89140;
  byte_D863C = 0;
  xmmword_D8640 = xmmword_89150;
  byte_D8650 = 0;
  unk_D8654 = xmmword_89160;
  byte_D8664 = 0;
  unk_D8668 = xmmword_89170;
  byte_D8678 = 0;
  unk_D867C = xmmword_89180;
  byte_D868C = 0;
  xmmword_D8690 = xmmword_89190;
  byte_D86A0 = 0;
  xmmword_D86A4 = xmmword_891A0;
  byte_D86B4 = 0;
  xmmword_D86B8 = xmmword_891B0;
  byte_D86C8 = 0;
  xmmword_D86CC = xmmword_891C0;
  byte_D86DC = 1;
  xmmword_D86E0 = xmmword_891D0;
  byte_D86F0 = 0;
  xmmword_D86F4 = xmmword_891E0;
  byte_D8704 = 0;
  xmmword_D8708 = xmmword_891F0;
  byte_D8718 = 1;
  xmmword_D871C = xmmword_89200;
  byte_D872C = 1;
  xmmword_D8730 = xmmword_89210;
  byte_D8740 = 0;
  xmmword_D8744 = xmmword_89220;
  byte_D8754 = 0;
  xmmword_D8758 = xmmword_89230;
  byte_D8768 = 1;
  xmmword_D876C = xmmword_89240;
  byte_D877C = 1;
  xmmword_D8780 = xmmword_89250;
  byte_D8790 = 1;
  xmmword_D8794 = xmmword_89260;
  byte_D87A4 = 0;
  xmmword_D87A8 = xmmword_89270;
  byte_D87B8 = 0;
  xmmword_D87BC = xmmword_89280;
  byte_D87CC = 0;
  xmmword_D87D0 = xmmword_89290;
  byte_D87E0 = 1;
  xmmword_D87E4 = xmmword_892A0;
  byte_D87F4 = 0;
  xmmword_D87F8 = xmmword_892B0;
  byte_D8808 = 0;
  xmmword_D880C = xmmword_892C0;
  byte_D881C = 1;
  xmmword_D8820 = xmmword_892D0;
  byte_D8830 = 0;
  xmmword_D8834 = xmmword_892E0;
  byte_D8844 = 1;
  xmmword_D8848 = xmmword_892F0;
  byte_D8858 = 0;
  xmmword_D885C = xmmword_89300;
  byte_D886C = 1;
  xmmword_D8870 = xmmword_89310;
  byte_D8880 = 0;
  xmmword_D8884 = xmmword_89320;
  byte_D8894 = 0;
  xmmword_D8898 = xmmword_89330;
  byte_D88A8 = 0;
  xmmword_D88AC = xmmword_89340;
  byte_D88BC = 0;
  xmmword_D88C0 = xmmword_89350;
  byte_D88D0 = 0;
  xmmword_D88D4 = xmmword_89360;
  byte_D88E4 = 0;
  xmmword_D88E8 = xmmword_89370;
  byte_D88F8 = 1;
  xmmword_D88FC = xmmword_89380;
  byte_D890C = 0;
  xmmword_D8910 = xmmword_89390;
  byte_D8920 = 1;
  xmmword_D8924 = xmmword_893A0;
  byte_D8934 = 0;
  xmmword_D8938 = xmmword_893B0;
  byte_D8948 = 0;
  xmmword_D894C = xmmword_893C0;
  byte_D895C = 1;
  xmmword_D8960 = xmmword_893D0;
  byte_D8970 = 1;
  xmmword_D8974 = xmmword_893E0;
  byte_D8984 = 0;
  xmmword_D8988 = xmmword_893F0;
  byte_D8998 = 0;
  xmmword_D899C = xmmword_89400;
  byte_D89AC = 1;
  xmmword_D89B0 = xmmword_89410;
  byte_D89C0 = 0;
  xmmword_D89C4 = xmmword_89420;
  byte_D89D4 = sub_42134();
  xmmword_D89D8 = xmmword_89430;
  byte_D89E8 = 0;
  xmmword_D89EC = xmmword_89440;
  byte_D89FC = 0;
  xmmword_D8A00 = xmmword_89450;
  byte_D8A10 = 0;
  xmmword_D8A14 = xmmword_89460;
  byte_D8A24 = 1;
  xmmword_D8A28 = xmmword_89470;
  byte_D8A38 = 0;
  xmmword_D8A3C = xmmword_89480;
  byte_D8A4C = 0;
  xmmword_D8A50 = xmmword_89490;
  byte_D8A60 = 0;
  xmmword_D8A64 = xmmword_894A0;
  byte_D8A74 = 0;
  xmmword_D8A78 = xmmword_894B0;
  byte_D8A88 = 0;
  xmmword_D8A8C = xmmword_894C0;
  byte_D8A9C = 1;
  xmmword_D8AA0 = xmmword_894D0;
  byte_D8AB0 = 1;
  xmmword_D8AB4 = xmmword_894E0;
  byte_D8AC4 = 0;
  xmmword_D8AC8 = xmmword_894F0;
  byte_D8AD8 = 1;
  xmmword_D8ADC = xmmword_89500;
  byte_D8AEC = 0;
  xmmword_D8AF0 = xmmword_89510;
  byte_D8B00 = 0;
  xmmword_D8B04 = xmmword_89520;
  byte_D8B14 = 1;
  xmmword_D8B18 = xmmword_89530;
  byte_D8B28 = 1;
  xmmword_D8B2C = xmmword_89540;
  byte_D8B3C = 1;
  xmmword_D8B40 = xmmword_89550;
  byte_D8B50 = 0;
  xmmword_D8B54 = xmmword_89560;
  byte_D8B64 = 0;
  xmmword_D8B68 = xmmword_89570;
  byte_D8B78 = 0;
  xmmword_D8B7C = xmmword_89580;
  byte_D8B8C = 0;
  xmmword_D8B90 = xmmword_89590;
  byte_D8BA0 = 1;
  xmmword_D8BA4 = xmmword_895A0;
  byte_D8BB4 = 0;
  xmmword_D8BB8 = xmmword_895B0;
  byte_D8BC8 = 0;
  xmmword_D8BCC = xmmword_895C0;
  byte_D8BDC = 1;
  xmmword_D8BE0 = xmmword_895D0;
  byte_D8BF0 = 0;
  xmmword_D8BF4 = xmmword_895E0;
  byte_D8C04 = 0;
  xmmword_D8C08 = xmmword_895F0;
  byte_D8C18 = 0;
  xmmword_D8C1C = xmmword_89600;
  byte_D8C2C = 0;
  xmmword_D8C30 = xmmword_89610;
  byte_D8C40 = 0;
  xmmword_D8C44 = xmmword_89620;
  byte_D8C54 = 0;
  xmmword_D8C58 = xmmword_89630;
  byte_D8C68 = 0;
  xmmword_D8C6C = xmmword_89640;
  byte_D8C7C = 0;
  xmmword_D8C80 = xmmword_89650;
  byte_D8C90 = 0;
  result = 9.31743861e242;
  xmmword_D8C94 = xmmword_89660;
  byte_D8CA4 = 0;
  return result;
}

uint64_t sub_6F6C0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v5;
  v10 = *(a3 + 32);
  sub_58DE4(a1, a2, v9);
  *v6 = &off_B16F8;
  if (a2 > 0x11 || ((1 << a2) & 0x30018) == 0)
  {
    v8 = qword_D8CA8;
    if (os_log_type_enabled(qword_D8CA8, OS_LOG_TYPE_ERROR))
    {
      sub_79E90(a2, v8);
    }
  }

  return a1;
}

void sub_6F77C(void *a1)
{
  sub_58E28(a1);

  operator delete();
}

uint64_t sub_6F7B4(uint64_t a1, int a2)
{
  if (a2 == 48000)
  {
    v2 = 6;
  }

  else
  {
    if (a2 != 64000)
    {
      v2 = *(a1 + 364);
      goto LABEL_7;
    }

    v2 = 8;
  }

  *(a1 + 364) = v2;
LABEL_7:
  g722_decoder_init(a1 + 162, v2);
  return 0;
}

uint64_t sub_6F804(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a2;
  v28 = 0;
  v11 = *(a1 + 212);
  if (v11 == 8)
  {
    result = g722_decode_frame(a1 + 162, a2, a3, a4, &v28);
  }

  else
  {
    v13 = 8 * a3 / v11;
    v14 = v13;
    v15 = v13;
    __chkstk_darwin(a1);
    v17 = &v27[-v16];
    bzero(&v27[-v16], v15);
    v18 = *(a1 + 212);
    if (v18 == 6)
    {
      if (v15)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        LOBYTE(v24) = 0;
        do
        {
          v25 = (v23 & ~(-1 << v24)) << (6 - v24);
          v23 = v9[v22];
          v26 = 252 << v24;
          v24 = (v24 + 2) & 7;
          v17[v21] = 4 * (((v26 & v23) >> v24) | v25);
          if (v24)
          {
            ++v22;
          }

          ++v21;
        }

        while (v21 < v15);
      }
    }

    else if (v18 == 4 && v8)
    {
      v19 = v17 + 1;
      do
      {
        v20 = *v9++;
        *(v19 - 1) = v20 & 0xF0;
        *v19 = 16 * v20;
        v19 += 2;
        --v8;
      }

      while (v8);
    }

    result = g722_decode_frame(a1 + 162, v17, v14, a4, &v28);
  }

  *a6 = 2 * v28;
  return result;
}

uint64_t sub_6F9C4(uint64_t a1, int a2)
{
  v2 = *(a1 + 364);
  v3 = 2 * a2;
  if (v2 == 8)
  {
    v4 = 2 * a2;
  }

  else
  {
    v4 = 0;
  }

  if (v2 != 6)
  {
    v3 = v4;
  }

  if (v2 == 4)
  {
    return (4 * a2);
  }

  else
  {
    return v3;
  }
}

uint64_t sub_6F9EC(uint64_t a1, int a2)
{
  v2 = *(a1 + 364);
  v3 = 2 * a2;
  if (v2 == 8)
  {
    v4 = 2 * a2;
  }

  else
  {
    v4 = 0;
  }

  if (v2 != 6)
  {
    v3 = v4;
  }

  if (v2 == 4)
  {
    return (4 * a2);
  }

  else
  {
    return v3;
  }
}

os_log_t sub_6FA1C()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8CA8 = result;
  return result;
}

void sub_6FA4C(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v6 = *(a3 + 32);
  sub_58DE4(a1, a2, v5);
  *v4 = &off_B1768;
  *(v4 + 152) = 1;
}

void sub_6FAA8(void *a1)
{
  sub_58E28(a1);

  operator delete();
}

void sub_6FAE0(uint64_t a1, int a2)
{
  *(a1 + 24) = 0x40BF400000000000;
  v2 = (a1 + 24);
  *(a1 + 116) = a2;
  *(a1 + 32) = 1634492791;
  v3 = *(a1 + 92);
  *(a1 + 40) = v3;
  *(a1 + 44) = 1;
  *(a1 + 48) = v3;
  *(a1 + 52) = v3;
  *(a1 + 56) = 8;
  ioPropertyDataSize = 40;
  Property = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, (a1 + 64));
  sub_199EC(Property, "couldn't get output data format");
  v5 = AudioConverterNew(v2, v2 + 1, &v2[-1].mBitsPerChannel);
  sub_199EC(v5, "Could not create new audio converter");
  v2[2].mBytesPerPacket = 1;
  operator new[]();
}

void sub_6FC34(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  if (a3)
  {
    v10 = a3;
    do
    {
      v11 = *a2++;
      *a4++ = alaw_to_linear(v11);
      --v10;
    }

    while (v10);
    v12 = 2 * a3;
  }

  else
  {
    v12 = 0;
  }

  *a6 = v12;
}

os_log_t sub_6FCAC()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8CB0 = result;
  return result;
}

void sub_6FCDC(uint64_t a1, int a2, uint64_t a3, char a4, char a5)
{
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v10 = *(a3 + 32);
  sub_10828(a1, a2, v9);
  *v8 = off_B17D8;
  *(v8 + 210) = 0;
  *(v8 + 176) = 1;
  *(v8 + 208) = a5;
  *(v8 + 209) = a4;
  *(v8 + 56) = 0;
}

void *sub_6FD54(void *a1)
{
  *a1 = off_B17D8;
  v2 = a1[7];
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  else
  {
    v3 = qword_D8CB8;
    if (os_log_type_enabled(qword_D8CB8, OS_LOG_TYPE_ERROR))
    {
      sub_8150C(v3);
    }
  }

  return sub_10878(a1);
}

void sub_6FDD4(void *a1)
{
  sub_6FD54(a1);

  operator delete();
}

uint64_t sub_6FE0C(uint64_t a1, int a2, unsigned int a3)
{
  v6 = *(a1 + 92);
  if (*(a1 + 209) == 1)
  {
    v7 = qword_D8CB8;
    if (os_log_type_enabled(qword_D8CB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "LC3 encoder init to AACELD 48K", buf, 2u);
    }

    v8 = 1633772389;
  }

  else
  {
    v8 = 1818440480;
  }

  v9 = *(a1 + 52);
  *(a1 + 156) = a2;
  v10 = 180;
  if (v9 <= 515)
  {
    if (v9 <= 259)
    {
      if (v9 == 258)
      {
        goto LABEL_26;
      }

      if (v9 != 259)
      {
        goto LABEL_35;
      }

      goto LABEL_23;
    }

    if (v9 != 260)
    {
      if (v9 != 508)
      {
        if (v9 != 515)
        {
          goto LABEL_35;
        }

        v10 = 120;
LABEL_26:
        v11 = *(a1 + 64);
        *(a1 + 104) = v11;
        *(a1 + 184) = a3;
        *(a1 + 192) = 8 * a3;
        *(a1 + 200) = 0;
        *(a1 + 112) = v8;
        *(a1 + 116) = 0;
        *(a1 + 124) = v10;
        *(a1 + 128) = 0;
        *(a1 + 132) = v6;
        *(a1 + 136) = 0;
        ioPropertyDataSize = 40;
        v12 = qword_D8CB8;
        if (os_log_type_enabled(qword_D8CB8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 72);
          v14 = *(a1 + 76);
          v15 = *(a1 + 80);
          v16 = *(a1 + 84);
          v17 = *(a1 + 88);
          v18 = *(a1 + 92);
          v19 = *(a1 + 96);
          *buf = 134219776;
          v37 = v11;
          v38 = 1024;
          v39 = v13;
          v40 = 1024;
          v41 = v14;
          v42 = 1024;
          v43 = v15;
          v44 = 1024;
          v45 = v16;
          v46 = 1024;
          v47 = v17;
          v48 = 1024;
          v49 = v18;
          v50 = 1024;
          v51 = v19;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "LC3 Encoder input format:  mSampleRate = %f, mFormatID = %u, mFormatFlags:%u, mBytesPerPacket:%u, mFramesPerPacket = %u, mBytesPerFrame:%u, mChannelsPerFrame = %u, mBitsPerChannel:%u, format = float PCM\n", buf, 0x36u);
          v12 = qword_D8CB8;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 104);
          v21 = *(a1 + 112);
          v22 = *(a1 + 116);
          v23 = *(a1 + 120);
          v24 = *(a1 + 124);
          v25 = *(a1 + 128);
          v26 = *(a1 + 132);
          v27 = *(a1 + 136);
          *buf = 134219776;
          v37 = v20;
          v38 = 1024;
          v39 = v21;
          v40 = 1024;
          v41 = v22;
          v42 = 1024;
          v43 = v23;
          v44 = 1024;
          v45 = v24;
          v46 = 1024;
          v47 = v25;
          v48 = 1024;
          v49 = v26;
          v50 = 1024;
          v51 = v27;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "LC3 Encoder output format:  mSampleRate = %f, mFormatID = %u, mFormatFlags:%u, mBytesPerPacket:%u, mFramesPerPacket = %u, mBytesPerFrame:%u, mChannelsPerFrame = %u, mBitsPerChannel:%u, format = float PCM\n", buf, 0x36u);
        }

        Property = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, (a1 + 104));
        sub_199EC(Property, "couldn't create output data format");
        if (*(a1 + 48) == 1)
        {
          v29 = qword_D8CB8;
          if (os_log_type_enabled(qword_D8CB8, OS_LOG_TYPE_DEBUG))
          {
            sub_81550((a1 + 120), v29);
          }
        }

        v30 = AudioConverterNew((a1 + 64), (a1 + 104), (a1 + 56));
        sub_199EC(v30, "Could not create new audio converter");
        v31 = AudioConverterSetProperty(*(a1 + 56), 0x70616B6Cu, 4u, (a1 + 192));
        sub_199EC(v31, "Failed to set target data rate");
        v32 = vcvtps_u32_f32((20480 * v6 * *(a1 + 88)) / a3);
        *(a1 + 160) = v32;
        *(a1 + 152) = v32 * a3;
        operator new[]();
      }

      goto LABEL_24;
    }

LABEL_20:
    v10 = 360;
    goto LABEL_26;
  }

  if (v9 > 522)
  {
    if (v9 != 523)
    {
      if (v9 != 524)
      {
        if (v9 != 1633772389)
        {
          goto LABEL_35;
        }

        goto LABEL_20;
      }

LABEL_24:
      v10 = 480;
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  switch(v9)
  {
    case 516:
      v10 = 160;
      goto LABEL_26;
    case 517:
      goto LABEL_26;
    case 518:
LABEL_23:
      v10 = 240;
      goto LABEL_26;
  }

LABEL_35:
  v34 = qword_D8CB8;
  if (os_log_type_enabled(qword_D8CB8, OS_LOG_TYPE_ERROR))
  {
    sub_815CC(v34);
  }

  return 560226676;
}

void sub_70264(uint64_t a1, unsigned __int8 *a2, unsigned int a3, _DWORD *a4, UInt32 a5)
{
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  *&outOutputData.mNumberBuffers = 0;
  ioOutputDataPacketSize = *(a1 + 160);
  inInputDataProcUserData[0] = a2;
  if (*(a1 + 210) == 1)
  {
    v7 = qword_D8CB8;
    if (os_log_type_enabled(qword_D8CB8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      v11 = a2[3];
      v12 = a2[4];
      v13 = a2[5];
      v14 = a2[6];
      v15 = a2[7];
      *buf = 67111168;
      LODWORD(v58) = a3;
      WORD2(v58) = 1024;
      *(&v58 + 6) = v8;
      WORD5(v58) = 1024;
      HIDWORD(v58) = v9;
      *v59 = 1024;
      *&v59[2] = v10;
      LOWORD(v60) = 1024;
      *(&v60 + 2) = v11;
      HIWORD(v60) = 1024;
      *v61 = v12;
      *&v61[4] = 1024;
      *v62 = v13;
      *&v62[4] = 1024;
      *v63 = v14;
      *&v63[4] = 1024;
      *v64 = v15;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "LC3Encoder PCM len:%u, %02x,%02x,%02x,%02x,%02x,%02x,%02x,%02x", buf, 0x38u);
    }
  }

  v16 = 0;
  v46 = 0;
  v17 = 0;
  inInputDataProcUserData[1] = *(a1 + 80) * a3;
  v18 = *(a1 + 80);
  v51 = *(a1 + 64);
  v52 = v18;
  v53 = *(a1 + 96);
  *a4 = 0;
  do
  {
    v19 = *(a1 + 132);
    outOutputData.mNumberBuffers = 1;
    v20 = *(a1 + 152);
    outOutputData.mBuffers[0].mNumberChannels = v19;
    outOutputData.mBuffers[0].mDataByteSize = v20;
    outOutputData.mBuffers[0].mData = (*(a1 + 144) + v16);
    if (*(a1 + 210) == 1)
    {
      v21 = qword_D8CB8;
      if (os_log_type_enabled(qword_D8CB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        LODWORD(v58) = ioOutputDataPacketSize;
        WORD2(v58) = 2048;
        *(&v58 + 6) = v16;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "LC3Encoder ->c io:%u, offset %llu", buf, 0x12u);
      }
    }

    v22 = AudioConverterFillComplexBuffer(*(a1 + 56), sub_198B8, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, *(a1 + 168));
    sub_199EC(v22, "LC3 Encode  AudioConverterFillComplexBuffer failed");
    if (*(a1 + 210) == 1)
    {
      v23 = qword_D8CB8;
      if (os_log_type_enabled(qword_D8CB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v58) = ioOutputDataPacketSize;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "LC3Encoder c-> io:%u", buf, 8u);
      }
    }

    v24 = ioOutputDataPacketSize;
    if (!ioOutputDataPacketSize)
    {
      break;
    }

    if (ioOutputDataPacketSize > a5)
    {
      v42 = qword_D8CB8;
      if (os_log_type_enabled(qword_D8CB8, OS_LOG_TYPE_ERROR))
      {
        sub_81610(v24, a5, v42);
      }

      *a4 = 0;
      return;
    }

    v25 = 0;
    v26 = 0;
    v44 = v17 + 1;
    v27 = *(a1 + 144) + v16;
    do
    {
      v28 = (*(a1 + 168) + v25);
      v29 = *v28;
      v30 = (v27 + *v28);
      v31 = &a4[4 * (v46 + v26) + 2];
      *(v31 + 8) = v30;
      v32 = *(v28 + 3);
      *v31 = 1;
      *(v31 + 4) = v32;
      ++*a4;
      if (*(a1 + 210) == 1)
      {
        v33 = qword_D8CB8;
        if (os_log_type_enabled(qword_D8CB8, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(v27 + v29);
          v35 = v30[1];
          v36 = v30[2];
          v37 = v30[3];
          *buf = 134220032;
          *&v58 = v27;
          WORD4(v58) = 1024;
          *(&v58 + 10) = v26;
          HIWORD(v58) = 1024;
          *v59 = v46 + v26;
          *&v59[4] = 2048;
          v60 = v29;
          *v61 = 1024;
          *&v61[2] = v32;
          *v62 = 1024;
          *&v62[2] = v34;
          *v63 = 1024;
          *&v63[2] = v35;
          *v64 = 1024;
          *&v64[2] = v36;
          v65 = 1024;
          v66 = v37;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "LC3Encoder c->%p,%d,%u,%lld,%u,%02x,%02x,%02x,%02x", buf, 0x40u);
          v24 = ioOutputDataPacketSize;
        }
      }

      v16 += v32;
      ++v26;
      v25 += 16;
    }

    while (v26 < v24);
    ++v17;
    if (v24 && (*(a1 + 177) & 1) != 0)
    {
      v38 = 0;
      v39 = (*(a1 + 168) + 12);
      v40 = v24;
      do
      {
        v41 = *v39;
        v39 += 4;
        v38 += v41;
        --v40;
      }

      while (v40);
      sub_10EE4(a1, v38, v24);
    }

    v46 += v26;
  }

  while (v44 != 10);
}

os_log_t sub_7071C()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8CB8 = result;
  return result;
}

uint64_t sub_7074C(uint64_t result)
{
  if ((result - 3) <= 3)
  {
    return _kdebug_trace((4 * (result - 3) + 730005516), 0, 0, 0, 0);
  }

  return result;
}

uint64_t sub_7077C(uint64_t a1)
{
  result = 730005540;
  if (a1 != 9)
  {
    if (a1 != 10)
    {
      return result;
    }

    result = 730005544;
  }

  return _kdebug_trace(result, 0, 0, 0, 0);
}

uint64_t sub_707B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result - 30) <= 6)
  {
    return _kdebug_trace((4 * (result - 30) + 730005624), a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_707D4(uint64_t a1)
{
  result = 730005556;
  if (a1 != 13)
  {
    if (a1 != 14)
    {
      return result;
    }

    result = 730005560;
  }

  return _kdebug_trace(result, 0, 0, 0, 0);
}

const __CFString *sub_70838()
{
  result = MGGetStringAnswer();
  if (result)
  {
    v1 = result;
    length = CFStringFind(result, @"DEV", 4uLL).length;
    CFRelease(v1);
    return (length != 0);
  }

  return result;
}

uint64_t sub_7088C()
{
  strlcat(byte_D8CC8, "/tmp/BTHALAudioPlugin", 0x100uLL);

  return mkdir(byte_D8CC8, 0x1EDu);
}

pthread_mutex_t *sub_708DC(pthread_mutex_t *a1)
{
  v4.__sig = 0;
  *v4.__opaque = 0;
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 2);
  v2 = pthread_mutex_init(a1, &v4);
  pthread_mutexattr_destroy(&v4);
  if (v2)
  {
    if (os_log_type_enabled(qword_D8CC0, OS_LOG_TYPE_FAULT))
    {
      sub_81698();
    }

    if (os_variant_has_internal_content())
    {
      abort();
    }
  }

  return a1;
}

pthread_mutex_t *sub_709B0(pthread_mutex_t *a1)
{
  if (pthread_mutex_destroy(a1))
  {
    if (os_log_type_enabled(qword_D8CC0, OS_LOG_TYPE_FAULT))
    {
      sub_81698();
    }

    if (os_variant_has_internal_content())
    {
      abort();
    }
  }

  return a1;
}

uint64_t sub_70A2C(pthread_mutex_t *a1)
{
  result = pthread_mutex_lock(a1);
  if (result)
  {
    if (os_log_type_enabled(qword_D8CC0, OS_LOG_TYPE_FAULT))
    {
      sub_81698();
    }

    result = os_variant_has_internal_content();
    if (result)
    {
      abort();
    }
  }

  return result;
}

uint64_t sub_70A90(pthread_mutex_t *a1)
{
  result = pthread_mutex_unlock(a1);
  if (result)
  {
    if (os_log_type_enabled(qword_D8CC0, OS_LOG_TYPE_FAULT))
    {
      sub_81698();
    }

    result = os_variant_has_internal_content();
    if (result)
    {
      abort();
    }
  }

  return result;
}

uint64_t sub_70AF4(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  sub_70B24(a1);
  return a1;
}

uint64_t sub_70B24(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    if (os_log_type_enabled(qword_D8CC0, OS_LOG_TYPE_FAULT))
    {
      sub_81708();
    }

    if (os_variant_has_internal_content())
    {
      abort();
    }
  }

  *(a1 + 8) = 1;
  return sub_70A2C(*a1);
}

uint64_t sub_70B98(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_70BD4(a1);
  }

  return a1;
}

uint64_t sub_70BD4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    if (os_log_type_enabled(qword_D8CC0, OS_LOG_TYPE_FAULT))
    {
      sub_81788();
    }

    if (os_variant_has_internal_content())
    {
      abort();
    }
  }

  *(a1 + 8) = 0;
  return sub_70A90(*a1);
}

os_log_t sub_70C50()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8CC0 = result;
  return result;
}

int *decoder_create(int a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x10A0040D8AFB92EuLL);
  v3 = (&hmModesConfig + 16 * a1);
  v5 = *v3;
  v4 = v3[1];
  *v2 = (a1 - 5) < 2;
  v2[1] = v5;
  v2[2] = v4;
  if ((a1 - 5) <= 1)
  {
    unpack_lite_create();
    *(v2 + 4) = v6;
    v4 = v2[2];
  }

  *(v2 + 5) = imdct_create(v4);
  *(v2 + 2) = malloc_type_malloc(4 * v2[2], 0x100004052888210uLL);
  return v2;
}

void decoder_destroy(void *a1)
{
  if (*a1 == 1)
  {
    unpack_lite_destroy(*(a1 + 4));
  }

  imdct_destroy(*(a1 + 5));
  free(*(a1 + 2));

  free(a1);
}

void decode(uint64_t a1, unsigned __int16 *a2, float *a3, int a4)
{
  v6 = *(a1 + 16);
  if (a4)
  {
    __B = 0.9;
    vDSP_vsmul(v6, 1, &__B, v6, 1, *(a1 + 8));
    v7 = *(a1 + 24);
  }

  else
  {
    if (*a1)
    {
      v8 = unpack_lite_c(*(a1 + 32), a2, *(a1 + 4), v6, *(a1 + 8));
    }

    else
    {
      v8 = unpack(a2, *(a1 + 4), v6, *(a1 + 8));
    }

    v7 = v8;
    *(a1 + 24) = v8;
  }

  imdct(*(a1 + 40), v6, v7, a3);
}

int *encoder_create(int a1)
{
  v2 = malloc_type_malloc(0x68uLL, 0x10A0040D1EDB599uLL);
  v3 = (&hmModesConfig + 16 * a1);
  v5 = *v3;
  v4 = v3[1];
  *v2 = (a1 - 5) < 2;
  v2[1] = v5;
  *(v2 + 12) = &filters_875;
  v6 = v3[2];
  v2[2] = v4;
  v2[3] = v6;
  if (a1 == 6)
  {
    *(v2 + 12) = &filters_583;
  }

  else
  {
    v7 = v3[3];
    if ((a1 - 4) <= 2)
    {
      *(v2 + 12) = &filters_777;
    }

    if ((a1 - 5) > 1)
    {
      v8 = quantizer_create(v4, v6, v5, v7);
      goto LABEL_8;
    }
  }

  quantizer_lite_create();
LABEL_8:
  *(v2 + 11) = v8;
  *(v2 + 7) = mdct_create(v2[2]);
  *(v2 + 10) = malloc_type_malloc(4 * v2[2], 0x100004052888210uLL);
  *(v2 + 8) = malloc_type_malloc(4 * v2[2] + 8, 0x100004052888210uLL);
  *(v2 + 9) = malloc_type_malloc(4 * v2[2] + 8, 0x100004052888210uLL);
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 6) = 0;
  return v2;
}

void encoder_destroy(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 11);
  if (v2)
  {
    quantizer_lite_destroy(v3);
  }

  else
  {
    quantizer_destroy(v3);
  }

  mdct_destroy(*(a1 + 7));
  free(*(a1 + 8));
  free(*(a1 + 9));
  free(*(a1 + 10));

  free(a1);
}

void encode(uint64_t a1, const float *__A, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  *v6 = *(a1 + 16);
  *(v6 + 4) = *(a1 + 20);
  vDSP_mmov(__A, (v6 + 8), v5, 1uLL, v5, v5);
  *(a1 + 16) = *(v6 + 4 * v5);
  v9 = 4 * v5 + 4;
  *(a1 + 20) = *(v6 + v9);
  v10 = *(a1 + 96);
  *v7 = *(a1 + 24);
  *(v7 + 4) = *(a1 + 28);
  vDSP_deq22(v6, 1, v10, v7, 1, v5);
  *(a1 + 24) = *(v7 + 4 * v5);
  *(a1 + 28) = *(v7 + v9);
  *v6 = *(a1 + 32);
  *(v6 + 4) = *(a1 + 36);
  vDSP_deq22(v7, 1, v10 + 5, v6, 1, v5);
  *(a1 + 32) = *(v6 + 4 * v5);
  *(a1 + 36) = *(v6 + v9);
  *v7 = *(a1 + 40);
  *(v7 + 4) = *(a1 + 44);
  vDSP_deq22(v6, 1, v10 + 10, v7, 1, v5);
  *(a1 + 40) = *(v7 + 4 * v5);
  *(a1 + 44) = *(v7 + v9);
  *v6 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 52);
  vDSP_deq22(v7, 1, v10 + 15, v6, 1, v5);
  *(a1 + 48) = *(v6 + 4 * v5);
  *(a1 + 52) = *(v6 + v9);
  mdct(*(a1 + 56), (v6 + 8), v8);
  v11 = *(a1 + 88);
  if (*a1)
  {

    quantize_lite(v11, v8, a3);
  }

  else
  {

    quantize(v11, v8, a3);
  }
}

float butterfly2(uint64_t a1, float *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = 2 * a3;
    v5 = (a1 + 4);
    do
    {
      v6 = *(v5 - 1);
      v7 = a2[1];
      v8 = (v6 * *a2) - (*v5 * v7);
      v9 = (*v5 * *a2) + (v6 * v7);
      v10 = &v5[v4];
      v11 = v5[v4 - 1];
      v12 = v5[2 * a3];
      v13 = a2[2 * a3];
      v14 = a2[v4 + 1];
      v15 = (v11 * v13) - (v12 * v14);
      v16 = (v12 * v13) + (v11 * v14);
      v17 = v9 + v16;
      result = v9 - v16;
      *(v5 - 1) = v8 + v15;
      *v5 = v17;
      *(v10 - 1) = v8 - v15;
      *v10 = result;
      a2 += 2;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t butterfly3(uint64_t result, float *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 4 * a3;
    v4 = (result + 4);
    v5 = 2 * a3;
    v6 = a3;
    do
    {
      v7 = *(v4 - 1);
      v8 = a2[1];
      v9 = (v7 * *a2) - (*v4 * v8);
      v10 = (*v4 * *a2) + (v7 * v8);
      v11 = &v4[v5];
      v12 = v4[v5 - 1];
      v13 = v4[2 * a3];
      v14 = a2[2 * a3];
      v15 = a2[v5 + 1];
      v16 = (v12 * v14) - (v13 * v15);
      v17 = (v13 * v14) + (v12 * v15);
      v18 = &v4[v3];
      v19 = v4[v3 - 1];
      v20 = v4[4 * a3];
      v21 = a2[4 * a3];
      v22 = a2[v3 + 1];
      v23 = (v19 * v21) - (v20 * v22);
      v24 = (v20 * v21) + (v19 * v22);
      *(v4 - 1) = (v9 + v16) + v23;
      *v4 = (v10 + v17) + v24;
      *(v11 - 1) = (v9 + ((v17 * 0.86603) + (v16 * -0.5))) + ((v23 * -0.5) - (v24 * 0.86603));
      *v11 = (v10 + ((v17 * -0.5) - (v16 * 0.86603))) + ((v24 * -0.5) + (v23 * 0.86603));
      *(v18 - 1) = (v9 + ((v16 * -0.5) - (v17 * 0.86603))) + ((v24 * 0.86603) + (v23 * -0.5));
      *v18 = (v10 + ((v17 * -0.5) + (v16 * 0.86603))) + ((v24 * -0.5) - (v23 * 0.86603));
      a2 += 2;
      v4 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

float butterfly4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a1 + 8 * a3;
    v5 = 2 * a3;
    v6 = a2 + 8 * a3;
    v7 = a2 + 8 * v5;
    v8 = 8 * a3;
    v9 = a1 + 24 * a3 + 4;
    v10 = a1 + 8 * v5 + 4;
    v11 = a2 + 24 * a3;
    do
    {
      v12 = (a1 + v3);
      v13 = *(a1 + v3);
      v14 = *(a1 + v3 + 4);
      v15 = *(a2 + v3);
      v16 = *(a2 + v3 + 4);
      v17 = (v13 * v15) - (v14 * v16);
      v18 = (v14 * v15) + (v13 * v16);
      v19 = (v4 + v3);
      v20 = *(v4 + v3);
      v21 = *(v4 + v3 + 4);
      v22 = *(v6 + v3);
      v23 = *(v6 + v3 + 4);
      v24 = (v20 * v22) - (v21 * v23);
      v25 = (v21 * v22) + (v20 * v23);
      v26 = (v10 + v3);
      v27 = *(v10 + v3 - 4);
      v28 = *(v10 + v3);
      v29 = *(v7 + v3);
      v30 = *(v7 + v3 + 4);
      v31 = (v27 * v29) - (v28 * v30);
      v32 = (v28 * v29) + (v27 * v30);
      v33 = (v9 + v3);
      v34 = *(v9 + v3 - 4);
      v35 = *(v9 + v3);
      v36 = *(v11 + v3);
      v37 = *(v11 + v3 + 4);
      v38 = (v34 * v36) - (v35 * v37);
      v39 = (v35 * v36) + (v34 * v37);
      v40 = v17 + v31;
      v41 = v18 + v32;
      v42 = v17 - v31;
      v43 = v18 - v32;
      v44 = v25 + v39;
      v45 = v25 - v39;
      *v12 = v40 + (v24 + v38);
      v12[1] = v41 + v44;
      *v19 = v42 + v45;
      v19[1] = v43 + (v38 - v24);
      result = v43 - (v38 - v24);
      *(v26 - 1) = v40 - (v24 + v38);
      *v26 = v41 - v44;
      *(v33 - 1) = v42 - v45;
      *v33 = result;
      v3 += 8;
    }

    while (v8 != v3);
  }

  return result;
}

float *butterfly5last(float *result, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  if (a7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 8 * (a2 - 4) + 32;
    do
    {
      if (a8 >= 1)
      {
        v11 = (a6 + 4 * v8);
        v8 += a8;
        v12 = (a3 + 20);
        v13 = a8;
        do
        {
          v14 = *v11++;
          v15 = result[1];
          v16 = *(v12 - 5);
          v17 = *(v12 - 4);
          v18 = (a4 + 8 * v14);
          v19 = (*result * v16) - (v15 * v17);
          v20 = (v15 * v16) + (*result * v17);
          v22 = result[2];
          v21 = result[3];
          v23 = *(v12 - 3);
          v24 = *(v12 - 2);
          v25 = v21 * v23;
          v26 = (v22 * v23) - (v21 * v24);
          v27 = v25 + (v22 * v24);
          v28 = result[4];
          v29 = result[5];
          v30 = *(v12 - 1);
          v31 = (v28 * v30) - (v29 * *v12);
          v32 = v29 * v30;
          v33 = result[6];
          v34 = result[7];
          v35 = v32 + (v28 * *v12);
          v37 = v12[1];
          v36 = v12[2];
          v38 = (v33 * v37) - (v34 * v36);
          v39 = (v34 * v37) + (v33 * v36);
          v41 = result[8];
          v40 = result[9];
          v42 = v12[3];
          v43 = v12[4];
          v44 = -(v40 * v43);
          v45 = v40 * v42;
          v46 = v44 + (v41 * v42);
          v47 = v45 + (v41 * v43);
          v48 = (((v19 + (v26 * 0.30902)) + (v31 * -0.80902)) + (v38 * -0.80902)) + (v46 * 0.30902);
          v49 = (((v27 * 0.95106) + (v35 * 0.58779)) + (v39 * -0.58779)) + (v47 * -0.95106);
          v50 = (((v26 * -0.95106) + (v31 * -0.58779)) + (v38 * 0.58779)) + (v46 * 0.95106);
          v51 = ((v19 + v26) + v31) + v38;
          v52 = (((v20 + (v27 * 0.30902)) + (v35 * -0.80902)) + (v39 * -0.80902)) + (v47 * 0.30902);
          v53 = (((v19 + (v26 * -0.80902)) + (v31 * 0.30902)) + (v38 * 0.30902)) + (v46 * -0.80902);
          v54 = (((v20 + v27) + v35) + v39) + v47;
          v55 = (((v20 + (v27 * -0.80902)) + (v35 * 0.30902)) + (v39 * 0.30902)) + (v47 * -0.80902);
          v56 = (((v27 * 0.58779) + (v35 * -0.95106)) + (v39 * 0.95106)) + (v47 * -0.58779);
          v57 = (((v26 * -0.58779) + (v31 * 0.95106)) + (v38 * -0.95106)) + (v46 * 0.58779);
          *v18 = v51 + v46;
          v18[1] = v54;
          v58 = &v18[2 * a5];
          *v58 = v49 + v48;
          v58[1] = v52 + v50;
          v59 = &v58[2 * a5];
          *v59 = v56 + v53;
          v59[1] = v55 + v57;
          v60 = &v59[2 * a5];
          *v60 = v53 - v56;
          v60[1] = v55 - v57;
          v61 = &v60[2 * a5];
          *v61 = v48 - v49;
          v61[1] = v52 - v50;
          v12 = (v12 + v10);
          result = (result + v10);
          --v13;
        }

        while (v13);
      }

      ++v9;
    }

    while (v9 != a7);
  }

  return result;
}

uint64_t idxcomp(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v7 = result;
  if (a5)
  {
    v9 = *a5;
    if (*a5 >= 1)
    {
      v10 = *(a5 + 4);
      v11 = *(a5 + 8);
      do
      {
        result = idxcomp(v7, v6, v5, v10, *(a5 + 32));
        v6 = (v6 + v10);
        v5 = (v5 + v11);
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    *(result + 4 * (a2 / a4)) = a3;
  }

  return result;
}

char *hfft_create(int *a1, int a2)
{
  v3 = a1;
  v47 = (a2 - 1);
  if (a2 >= 2)
  {
    v4 = (a2 - 1);
    v5 = a1;
    do
    {
      v6 = *v5++;
      if ((v6 - 6) < 0xFFFFFFFC)
      {
        return 0;
      }
    }

    while (--v4);
  }

  if (a1[v47] != 5)
  {
    return 0;
  }

  v7 = malloc_type_malloc(0x20uLL, 0x10B004083B02B1BuLL);
  if (a2 < 1)
  {
    goto LABEL_26;
  }

  v8 = 1;
  v9 = a2;
  v10 = v3;
  do
  {
    v11 = *v10++;
    v8 *= v11;
    --v9;
  }

  while (v9);
  if (a2 < 2)
  {
LABEL_26:
    free(v7);
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v44 = v7;
  v45 = v7 + 24;
  v14 = v3 + 1;
  v15 = a2 - 1;
  v16 = 1;
  v46 = v3;
  do
  {
    v54 = v16;
    v17 = v12;
    v18 = malloc_type_malloc(0x28uLL, 0x10A004035BA01DCuLL);
    *(v18 + 4) = 0;
    v19 = v13 + 8;
    if (!v13)
    {
      v19 = v45;
    }

    v20 = v3[v17];
    *v19 = v18;
    *v18 = v20;
    v50 = v17 + 1;
    v21 = 1;
    v52 = v15;
    v53 = v14;
    v22 = v15;
    v23 = v14;
    do
    {
      v24 = v21;
      v26 = *v23++;
      v25 = v26;
      v21 *= v26;
      --v22;
    }

    while (v22);
    v18[1] = v21;
    v18[2] = v8 / (v21 * v20);
    v51 = v18;
    v49 = v17;
    v48 = v3[v17];
    v27 = malloc_type_malloc(8 * v20 * v21, 0x100004000313F17uLL);
    if (v20 >= 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = v24 * v25;
      do
      {
        if (v21 >= 1)
        {
          v31 = 0;
          v32 = &v27[8 * v28];
          v28 += v30;
          v33 = v30;
          do
          {
            v35 = __sincos_stret(((v31 * -6.2832) / (v21 * v20)));
            v34.f64[0] = v35.__cosval;
            v34.f64[1] = v35.__sinval;
            *v32++ = vcvt_f32_f64(v34);
            v31 += v29;
            --v33;
          }

          while (v33);
        }

        ++v29;
      }

      while (v29 != v20);
    }

    v16 = v48 * v54;
    v12 = v50;
    v13 = v51;
    *(v51 + 2) = v27;
    v3 = v46;
    *(v51 + 3) = kernels[v46[v49]];
    v14 = v53 + 1;
    v15 = v52 - 1;
  }

  while (v50 != v47);
  v36 = malloc_type_malloc(4 * v51[2] * *v51, 0x100004052888210uLL);
  v37 = v44;
  v38 = *(v44 + 3);
  v39 = *v38;
  v40 = *(v38 + 4);
  *v44 = v16;
  if (v39 >= 1)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      idxcomp(v36, v41, v42, 0, *(v38 + 32));
      v41 = (v41 + v40);
      v42 = (v42 + 1);
    }

    while (v39 != v42);
  }

  *(v44 + 1) = v36;
  *(v44 + 2) = butterfly5last;
  return v37;
}

void hfft_destroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 32);
      free(*(v2 + 16));
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(*(a1 + 8));

  free(a1);
}

uint64_t hfft_run(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  (*(v4 + 3))(a2, a3, v4[1]);
  v5 = *(v4 + 2);
  v6 = v4[1];
  v7 = v4[2];
  v8 = *v4;
  v9 = *(v4 + 4);
  if (v9)
  {
    do
    {
      v10 = v9[1];
      if (v7 >= 1)
      {
        v11 = 0;
        v24 = v9;
        v12 = *(v9 + 3);
        v13 = 8 * v6;
        v14 = a2;
        do
        {
          if (v8 >= 1)
          {
            v15 = v8;
            v16 = v5;
            do
            {
              v12(v14, v16, v10);
              v14 += v13;
              v16 += v13;
              --v15;
            }

            while (v15);
          }

          ++v11;
        }

        while (v11 != v7);
        v9 = v24;
        v10 = v24[1];
      }

      v5 = *(v9 + 2);
      v7 = v9[2];
      v8 = *v9;
      v6 = v10;
      v9 = *(v9 + 4);
    }

    while (v9);
  }

  else
  {
    v10 = v4[1];
  }

  v17 = *a1;
  v18 = a1[1];
  v19 = a1[2];

  return v19(a2, v10, v5, a4, v17, v18, v7, v8);
}

char *imdct_create(unsigned int a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x10A004068F99EA3uLL);
  LODWORD(v3) = 2 * a1;
  *(v2 + 4) = a1;
  v4 = vshl_s32(vdup_n_s32(a1), 0xFFFFFFFEFFFFFFFFLL);
  v52 = v4.i32[0];
  *(v2 + 20) = v4;
  v5 = (2 * a1);
  *v2 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  *(v2 + 1) = malloc_type_malloc(4 * a1 + 4, 0x100004052888210uLL);
  v6 = v52;
  v7 = 4 * v52;
  *(v2 + 4) = malloc_type_malloc(v7, 0x100004052888210uLL);
  *(v2 + 5) = malloc_type_malloc(v7, 0x100004052888210uLL);
  *(v2 + 7) = malloc_type_malloc(v7 + 4, 0x100004052888210uLL);
  *(v2 + 8) = malloc_type_malloc(v7 + 4, 0x100004052888210uLL);
  *(v2 + 6) = malloc_type_malloc(8 * v52, 0x100004000313F17uLL);
  *(v2 + 9) = malloc_type_malloc(8 * v52, 0x100004000313F17uLL);
  *(v2 + 10) = malloc_type_malloc(8 * v52, 0x100004000313F17uLL);
  v8 = *v2;
  v9 = (2 * a1);
  if ((2 * a1) >= 1)
  {
    v10 = 3.14159265 / v9;
    v46 = v10;
    v45 = vdupq_n_s64(v3 - 1);
    v11 = 0x100000000;
    v12 = xmmword_89870;
    v13 = (v8 + 4);
    v14 = vdup_n_s32(0x3FC90FDBu);
    __asm { FMOV            V2.2D, #0.5 }

    v43 = vdupq_n_s64(2uLL);
    v44 = _Q2;
    v3 = v3;
    do
    {
      v51 = vmovn_s64(vcgeq_u64(v45, v12));
      v53 = v12;
      v20.i64[0] = v11.u32[0];
      v20.i64[1] = v11.u32[1];
      __x = vmulq_n_f64(vaddq_f64(vcvtq_f64_u64(v20), v44), v46);
      v49 = sin(__x.f64[1]);
      v21.f64[0] = sin(__x.f64[0]);
      v21.f64[1] = v49;
      *&v21.f64[0] = vcvt_f32_f64(v21);
      __xa = vcvtq_f64_f32(vmul_f32(vmul_f32(*&v21.f64[0], v14), *&v21.f64[0]));
      v50 = sin(__xa.f64[1]);
      v22 = sin(__xa.f64[0]);
      if (v51.i8[0])
      {
        v23 = v22;
        *(v13 - 1) = v23;
      }

      if (v51.i8[4])
      {
        v24 = v50;
        *v13 = v24;
      }

      v12 = vaddq_s64(v53, v43);
      v11 = vadd_s32(v11, 0x200000002);
      v13 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  v25 = 3 * v6;
  if (3 * v6 < v5)
  {
    v26 = (v8 + 4 * v25);
    v27 = v5 - v25;
    do
    {
      *v26 = -*v26;
      ++v26;
      --v27;
    }

    while (v27);
  }

  if (v5 > 1)
  {
    for (i = 1; i < v5; i += 2)
    {
      *(v8 + 4 * i) = -*(v8 + 4 * i);
    }
  }

  if (v6 >= 1)
  {
    v29 = 0;
    v30 = -6.28318531 / v9;
    v31 = 8.0 / sqrt(a1);
    v32 = sqrtf(v31);
    v33 = *(v2 + 5);
    v34 = *(v2 + 4);
    v35 = (*(v2 + 6) + 4);
    do
    {
      v36 = __sincos_stret(((v29 + 0.125) * v30));
      v37 = v36.__cosval * v32;
      *(v34 + 4 * v29) = v37;
      *(v35 - 1) = v37;
      v38 = v36.__sinval * v32;
      *(v33 + 4 * v29) = v38;
      *v35 = v38;
      v35 += 2;
      ++v29;
    }

    while (v6 != v29);
  }

  bzero(*(v2 + 1), 4 * *(v2 + 4));
  *(v2 + 11) = 0;
  if (v6 <= 79)
  {
    if (v6 == 40)
    {
      v41 = 0x400000002;
    }

    else
    {
      if (v6 != 60)
      {
        goto LABEL_31;
      }

      v41 = 0x400000003;
    }

LABEL_28:
    qword_D8DC8 = v41;
    v40 = &dword_D8DD0;
    v39 = 3;
    goto LABEL_29;
  }

  if (v6 == 80)
  {
    v41 = 0x400000004;
    goto LABEL_28;
  }

  if (v6 == 90)
  {
    qword_D8DC8 = 0x300000002;
    dword_D8DD0 = 3;
    v40 = &dword_D8DD4;
    v39 = 4;
    goto LABEL_29;
  }

  if (v6 != 120)
  {
LABEL_31:
    imdct_destroy(v2);
    return 0;
  }

  qword_D8DC8 = 0x300000002;
  v39 = 4;
  dword_D8DD0 = 4;
  v40 = &dword_D8DD4;
LABEL_29:
  *v40 = 5;
  *(v2 + 11) = hfft_create(&qword_D8DC8, v39);
  return v2;
}

void imdct_destroy(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 8));
  free(*(a1 + 32));
  free(*(a1 + 40));
  free(*(a1 + 56));
  free(*(a1 + 64));
  free(*(a1 + 48));
  free(*(a1 + 72));
  free(*(a1 + 80));
  v2 = *(a1 + 88);
  if (v2)
  {
    hfft_destroy(v2);
  }

  free(a1);
}

void imdct(uint64_t a1, float *a2, int a3, float *a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 20);
  __N = *(a1 + 24);
  v10 = v8;
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  if (a3 < 0)
  {
    v13 = (1 << -a3);
  }

  else
  {
    v13 = 1.0 / (1 << a3);
  }

  v14 = *(a1 + 16);
  if (v8 >= 1)
  {
    v15 = &a2[v14 - 1];
    v16 = (v11 + 4);
    do
    {
      v17 = *a2;
      a2 += 2;
      *(v16 - 1) = v13 * v17;
      v18 = *v15;
      v15 -= 2;
      *v16 = v13 * v18;
      v16 += 2;
      --v8;
    }

    while (v8);
  }

  hfft_run(*(a1 + 88), v11, *(a1 + 48), v12);
  vDSP_ctoz(v12, 2, (a1 + 56), 1, v10);
  vDSP_zvmul((a1 + 56), 1, (a1 + 32), 1, (a1 + 56), 1, v10, 1);
  vDSP_vma((*(a1 + 56) + 4 * __N), 1, v6, 2, v7, 2, a4, 2, __N);
  vDSP_vmul((*(a1 + 64) + 4 * __N), 1, &v6[v14], 2, v7, 2, __N);
  vDSP_vma((*(a1 + 64) + 4 * __N - 4), -1, v6 + 1, 2, v7 + 1, 2, a4 + 1, 2, __N);
  vDSP_vmul((*(a1 + 56) + 4 * __N - 4), -1, &v6[v14 + 1], 2, v7 + 1, 2, __N);
  v19 = &v6[v10];
  v20 = &v7[v10];
  v21 = &a4[v10];
  vDSP_vma(*(a1 + 64), 1, v19, 2, v20, 2, v21, 2, __N);
  v22 = &v6[3 * v10];
  vDSP_vmul(*(a1 + 56), 1, v22, 2, v20, 2, __N);
  vDSP_vma((*(a1 + 56) + 4 * v10 - 4), -1, v19 + 1, 2, v20 + 1, 2, v21 + 1, 2, __N);
  v23 = (*(a1 + 64) + 4 * v10 - 4);

  vDSP_vmul(v23, -1, v22 + 1, 2, v20 + 1, 2, __N);
}

int32x2_t *mdct_create(unsigned int a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x10A0040482D8A59uLL);
  LODWORD(v3) = 2 * a1;
  v2[2].i32[0] = 2 * a1;
  v2[2].i32[1] = a1;
  v4 = vshl_s32(vdup_n_s32(a1), 0xFFFFFFFEFFFFFFFFLL);
  v50 = v4.i32[0];
  v2[3] = v4;
  v5 = (2 * a1);
  *v2 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  v2[1] = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  v6 = v50;
  v7 = 4 * v50;
  v2[4] = malloc_type_malloc(v7, 0x100004052888210uLL);
  v2[5] = malloc_type_malloc(v7, 0x100004052888210uLL);
  v2[9] = malloc_type_malloc(v7 + 4, 0x100004052888210uLL);
  v2[10] = malloc_type_malloc(v7 + 4, 0x100004052888210uLL);
  v2[6] = malloc_type_malloc(8 * v50, 0x100004000313F17uLL);
  v2[7] = malloc_type_malloc(8 * v50, 0x100004000313F17uLL);
  v2[8] = malloc_type_malloc(8 * v50, 0x100004000313F17uLL);
  v8 = *v2;
  v9 = (2 * a1);
  if ((2 * a1) >= 1)
  {
    v10 = 3.14159265 / v9;
    v44 = v10;
    v43 = vdupq_n_s64(v3 - 1);
    v11 = 0x100000000;
    v12 = xmmword_89870;
    v13 = (*&v8 + 4);
    v14 = vdup_n_s32(0x3FC90FDBu);
    __asm { FMOV            V2.2D, #0.5 }

    v41 = vdupq_n_s64(2uLL);
    v42 = _Q2;
    v3 = v3;
    do
    {
      v49 = vmovn_s64(vcgeq_u64(v43, v12));
      v51 = v12;
      v20.i64[0] = v11.u32[0];
      v20.i64[1] = v11.u32[1];
      __x = vmulq_n_f64(vaddq_f64(vcvtq_f64_u64(v20), v42), v44);
      v47 = sin(__x.f64[1]);
      v21.f64[0] = sin(__x.f64[0]);
      v21.f64[1] = v47;
      *&v21.f64[0] = vcvt_f32_f64(v21);
      __xa = vcvtq_f64_f32(vmul_f32(vmul_f32(*&v21.f64[0], v14), *&v21.f64[0]));
      v48 = sin(__xa.f64[1]);
      v22 = sin(__xa.f64[0]);
      if (v49.i8[0])
      {
        v23 = v22;
        *(v13 - 1) = v23;
      }

      if (v49.i8[4])
      {
        v24 = v48;
        *v13 = v24;
      }

      v12 = vaddq_s64(v51, v41);
      v11 = vadd_s32(v11, 0x200000002);
      v13 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  if (v6 < v5)
  {
    v25 = (*&v8 + 4 * v6);
    v26 = v5 - v6;
    do
    {
      *v25 = -*v25;
      ++v25;
      --v26;
    }

    while (v26);
  }

  if (v6 >= 1)
  {
    v27 = 0;
    v28 = -6.28318531 / v9;
    v29 = sqrt(0.25 / sqrt(a1));
    v30 = v29;
    v31 = v2[5];
    v32 = v2[4];
    v33 = (*&v2[6] + 4);
    do
    {
      v34 = __sincos_stret(((v27 + 0.125) * v28));
      v35 = v34.__cosval * v30;
      *(*&v32 + 4 * v27) = v35;
      *(v33 - 1) = v35;
      v36 = v34.__sinval * v30;
      *(*&v31 + 4 * v27) = v36;
      *v33 = v36;
      v33 += 2;
      ++v27;
    }

    while (v6 != v27);
  }

  bzero(*&v2[1], 4 * v2[2].i32[0]);
  v2[11] = 0;
  if (v6 <= 79)
  {
    if (v6 == 40)
    {
      v39 = 0x400000002;
    }

    else
    {
      if (v6 != 60)
      {
        goto LABEL_28;
      }

      v39 = 0x400000003;
    }

LABEL_25:
    qword_D8DD8 = v39;
    v38 = &dword_D8DE0;
    v37 = 3;
    goto LABEL_26;
  }

  if (v6 == 80)
  {
    v39 = 0x400000004;
    goto LABEL_25;
  }

  if (v6 == 90)
  {
    qword_D8DD8 = 0x300000002;
    dword_D8DE0 = 3;
    v38 = &dword_D8DE4;
    v37 = 4;
    goto LABEL_26;
  }

  if (v6 != 120)
  {
LABEL_28:
    mdct_destroy(v2);
    return 0;
  }

  qword_D8DD8 = 0x300000002;
  v37 = 4;
  dword_D8DE0 = 4;
  v38 = &dword_D8DE4;
LABEL_26:
  *v38 = 5;
  v2[11] = hfft_create(&qword_D8DD8, v37);
  return v2;
}

void mdct_destroy(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 8));
  free(*(a1 + 32));
  free(*(a1 + 40));
  free(*(a1 + 48));
  free(*(a1 + 72));
  free(*(a1 + 80));
  free(*(a1 + 56));
  free(*(a1 + 64));
  v2 = *(a1 + 88);
  if (v2)
  {
    hfft_destroy(v2);
  }

  free(a1);
}

float mdct(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 20);
  v19 = *(a1 + 16);
  v8 = *(a1 + 24);
  __N = *(a1 + 28);
  __C = *(a1 + 56);
  v21 = *(a1 + 64);
  memcpy(v6, &v6[4 * v7], 4 * v7);
  memcpy(&v6[4 * v7], a2, 4 * v7);
  v10 = (a1 + 72);
  vDSP_vmul(&v5[3 * v8], 2, &v6[12 * v8], 2, *(a1 + 72), 1, __N);
  vDSP_vma(&v5[3 * v8 - 1], -2, &v6[12 * v8 - 4], -2, *v10, 1, *v10, 1, __N);
  vDSP_vmul(&v5[v8 - 1], -2, &v6[4 * v8 - 4], -2, *(a1 + 80), 1, __N);
  vDSP_vma(&v5[v8], 2, &v6[4 * v8], 2, *(a1 + 80), 1, *(a1 + 80), 1, __N);
  vDSP_vmul(v5, 2, v6, 2, (*(a1 + 72) + 4 * __N), 1, __N);
  vDSP_vma(&v5[v7 - 1], -2, &v6[4 * v7 - 4], -2, &(*v10)[__N], 1, &(*v10)[__N], 1, __N);
  vDSP_vmul(&v5[v19 - 1], -2, &v6[4 * v19 - 4], -2, (*(a1 + 80) + 4 * __N), 1, __N);
  vDSP_vma(&v5[v7], 2, &v6[4 * v7], 2, (*(a1 + 80) + 4 * __N), 1, (*(a1 + 80) + 4 * __N), 1, __N);
  vDSP_ztoc((a1 + 72), 1, __C, 2, v8);
  hfft_run(*(a1 + 88), __C, *(a1 + 48), v21);
  vDSP_ctoz(v21, 2, (a1 + 72), 1, v8);
  vDSP_zvmul((a1 + 72), 1, (a1 + 32), 1, (a1 + 72), 1, v8, 1);
  if (v7 >= 1)
  {
    v12 = 0;
    v13 = *(a1 + 72);
    v14 = (a3 + 4);
    v15 = (*(a1 + 80) + 4 * v8 - 4);
    do
    {
      v16 = *v13++;
      *(v14 - 1) = v16;
      v17 = *v15--;
      result = -v17;
      *v14 = -v17;
      v14 += 2;
      v12 += 2;
    }

    while (v12 < v7);
  }

  return result;
}

void *mask_create(int a1, float a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v5 = (a1 - 1);
  v6 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  *v4 = v6;
  v7 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  v4[1] = v7;
  v8 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  v4[2] = v8;
  v20 = a2 / (2 * a1);
  v9 = v20 * 0.5;
  v10 = logf((v20 * 0.5) / 800.0) * 426.666667 / 2.30258512;
  if (v10 > 0.0)
  {
    v10 = 0.0;
  }

  *v8 = v10 * 0.000030518;
  if (a1 >= 2)
  {
    v11 = atan(v9 * 0.00076);
    v12 = atan((v9 * v9) / 56250000.0) * 3.5 + v11 * 13.0;
    v13 = v8 + 1;
    do
    {
      v9 = v20 + v9;
      v14 = atan(v9 * 0.00076);
      v15 = atan((v9 * v9) / 56250000.0) * 3.5 + v14 * 13.0;
      v16 = (v15 - v12);
      v17 = v16 * 213.333333 * 0.0000305175781;
      *v6++ = v17;
      *&v16 = v16 * 533.333333 * 0.0000305175781;
      *v7++ = LODWORD(v16);
      v18 = logf(v9 / 800.0) * 426.666667 / 2.30258512;
      if (v18 > 0.0)
      {
        v18 = 0.0;
      }

      *v13++ = v18 * 0.000030518;
      v12 = v15;
      --v5;
    }

    while (v5);
  }

  return v4;
}

void mask_destroy(void **a1)
{
  free(*a1);
  free(a1[1]);
  free(a1[2]);

  free(a1);
}

_DWORD *quantizer_create(int a1, int a2, int a3, float a4)
{
  v8 = malloc_type_malloc(0x48uLL, 0x10B00401F5B3E71uLL);
  *v8 = mask_create(a1, a4);
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = 16 * a3 - 4;
  v8[5] = a3;
  v9 = 4 * a1;
  *(v8 + 5) = malloc_type_malloc(v9, 0x100004052888210uLL);
  *(v8 + 6) = malloc_type_malloc(v9, 0x100004052888210uLL);
  v10 = 4 * a2;
  *(v8 + 7) = malloc_type_malloc(v10, 0x100004052888210uLL);
  v11 = 16 * a2;
  *(v8 + 3) = malloc_type_malloc(v11, 0x1050040606E6C2FuLL);
  *(v8 + 4) = malloc_type_malloc(v11, 0x1050040606E6C2FuLL);
  *(v8 + 8) = malloc_type_malloc(v10, 0x100004052888210uLL);
  return v8;
}

void quantizer_destroy(uint64_t a1)
{
  mask_destroy(*a1);
  free(*(a1 + 40));
  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 24));
  free(*(a1 + 32));
  free(*(a1 + 64));

  free(a1);
}

uint64_t computeMask(uint64_t result, float *a2, float *a3, int a4)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = (*a2 + *v5) - **result;
  v7 = (a4 - 1);
  if (a4 >= 3)
  {
    v8 = (*result + 4);
    v9 = v5 + 1;
    v10 = a2 + 1;
    v11 = a3 + 1;
    v12 = v7 - 1;
    do
    {
      *v11++ = v6;
      v13 = *v10++;
      v14 = v13;
      v15 = *v9++;
      v16 = v14 + v15;
      if (v16 > v6)
      {
        v6 = v16;
      }

      v17 = *v8++;
      v6 = v6 - v17;
      --v12;
    }

    while (v12);
  }

  a3[v7] = v6;
  v18 = a2[v7] + v5[v7];
  v19 = (a4 - 2);
  v20 = v18 - *(v4 + 4 * v19);
  if (a4 >= 3)
  {
    v21 = v4 - 4;
    do
    {
      if (a3[v19] < v20)
      {
        a3[v19] = v20;
      }

      v22 = v5[v19];
      if ((a2[v19] + v22) > v20)
      {
        v20 = a2[v19] + v22;
      }

      v20 = v20 - *(v21 + 4 * v19);
    }

    while (v19-- > 1);
  }

  *a3 = v20;
  return result;
}

uint64_t normalize(const float *a1, int a2)
{
  v3 = a1;
  __C = 0.0;
  vDSP_maxmgv(a1, 1, &__C, a2);
  v4 = 1056964608 - (LODWORD(__C) & 0xFF800000);
  if (LODWORD(__C) >> 27 < 7)
  {
    v4 = 125829120;
  }

  if (HIBYTE(LODWORD(__C)) <= 0x3Eu)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >= 1)
  {
    v6 = a2;
    do
    {
      *v3++ += v5;
      --v6;
    }

    while (v6);
  }

  return v5 >> 23;
}

uint64_t q(float a1)
{
  v1 = 0;
  v2 = 62;
  v3 = 62;
  do
  {
    v4 = v1 + (v2 >> 1);
    if (huff_vals[v4] <= a1)
    {
      v1 = v4;
    }

    else
    {
      v3 = v4;
    }

    v2 = v3 - v1;
  }

  while (v3 - v1 > 1);
  if (vabds_f32(huff_vals[v1], a1) >= vabds_f32(huff_vals[v3], a1))
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t qred(float a1)
{
  LODWORD(v1) = 0;
  v2 = 24;
  v3 = 24;
  do
  {
    v4 = v1 + (v2 >> 1);
    if (rhuff_vals[v4] <= a1)
    {
      LODWORD(v1) = v4;
    }

    else
    {
      v3 = v4;
    }

    v2 = v3 - v1;
  }

  while (v3 - v1 > 1);
  if (vabds_f32(rhuff_vals[v1], a1) >= vabds_f32(rhuff_vals[v3], a1))
  {
    v1 = v3;
  }

  else
  {
    v1 = v1;
  }

  return rix_xlat[v1];
}

void quantize(uint64_t a1, const float *a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  __dst = *(a1 + 32);
  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 56);
  v55 = *(a1 + 16);
  v11 = normalize(a2, v7);
  v59 = 1.0;
  vDSP_vabs(a2, 1, v9, 1, v7);
  __B = 1.0e-10;
  vDSP_vsadd(v9, 1, &__B, v9, 1, v7);
  vDSP_vdbcon(v9, 1, &v59, v9, 1, v7, 1u);
  v51 = a1;
  computeMask(*a1, v9, v8, v7);
  v54 = v8;
  vDSP_vsub(v8, 1, v9, 1, v10, 1, v6);
  if (v6 < 1)
  {
    v16 = v6;
  }

  else
  {
    v12 = 0;
    v13 = v5 + 8;
    do
    {
      *(v13 - 2) = v12;
      v14 = q(a2[v12]);
      *(v13 - 1) = v14;
      *v13 = *(&bitlists + v14);
      v13 += 2;
      ++v12;
    }

    while (v6 != v12);
    v15 = 0;
    v16 = v6;
    do
    {
      v17 = &v5[16 * v15];
      if (*(v17 + 1) == 31)
      {
        --v16;
        v18 = *v17;
        *v17 = *&v5[16 * v16];
        *&v5[16 * v16] = v18;
        v19 = v10[v15];
        v10[v15] = v10[v16];
        v10[v16] = v19;
      }

      else
      {
        ++v15;
      }
    }

    while (v15 < v16);
  }

  memcpy(__dst, v5, 16 * v6);
  v20 = v6 - v16;
  if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      v22 = &v5[16 * i];
      v23 = qred(a2[*v22]);
      *(v22 + 1) = v23;
      v24 = *(&bitlists + v23) - 4;
      do
      {
        v25 = *(v24 + 2);
        v24 += 4;
      }

      while (v25 != -1);
      v20 += huff_bits[v23];
      *(v22 + 1) = v24;
    }
  }

  v26 = v55;
  if (v20 <= v55)
  {
    v27 = v20;
  }

  else
  {
    v27 = v6;
  }

  if (v20 <= v55)
  {
    v28 = v5;
  }

  else
  {
    v28 = __dst;
  }

  if (v27 < v55 && v20 > v55 && v16 >= 1)
  {
    v29 = 0;
    do
    {
      __I[0] = 0;
      vDSP_maxvi(v10, 1, __I, (__I + 4), v16);
      v30 = SHIDWORD(__I[0]);
      v31 = &v28[16 * SHIDWORD(__I[0])];
      v34 = *(v31 + 1);
      v32 = (v31 + 8);
      v33 = v34;
      v36 = v34 + 1;
      v35 = v34[1];
      if (v35 == -1 || (v37 = huff_bits[v35] - huff_bits[*v33] + v27, v37 > v26))
      {
        v38 = *&v28[16 * SHIDWORD(__I[0])];
        *&v28[16 * SHIDWORD(__I[0])] = *&v28[16 * --v16];
        *&v28[16 * v16] = v38;
        *&v38 = v10[v30];
        v10[v30] = v10[v16];
        LODWORD(v10[v16]) = v38;
      }

      else
      {
        *v32 = v36;
        v39 = *&v28[16 * v30];
        __C[0] = vabds_f32(a2[v39], huff_vals[v35]);
        vDSP_vdbcon(__C, 1, &v59, __C, 1, 1uLL, 1u);
        v40 = v54[v39];
        v26 = v55;
        v10[SHIDWORD(__I[0])] = __C[0] - v40;
        v27 = v37;
      }

      if (v27 >= v26)
      {
        break;
      }

      if (v16 < 1)
      {
        break;
      }
    }

    while (v29++ < 0x9F);
  }

  if (v6 < 1)
  {
    v47 = 0;
    LOBYTE(v48) = 4;
LABEL_44:
    *(a3 + 2 * v47++) = (-1 << v48) | v11;
    goto LABEL_45;
  }

  v42 = *(v51 + 64);
  v43 = (v28 + 8);
  v44 = v6;
  do
  {
    v45 = *(v43 - 2);
    v46 = *v43;
    v43 += 2;
    v42[v45] = *v46;
    --v44;
  }

  while (v44);
  v47 = 0;
  v48 = 4;
  do
  {
    v49 = *v42++;
    v11 |= huff_symbols[v49] << v48;
    v48 += huff_bits[v49];
    if (v48 >= 16)
    {
      *(a3 + 2 * v47++) = v11;
      v11 >>= 16;
      v48 -= 16;
    }

    --v6;
  }

  while (v6);
  if ((v48 - 1) <= 0xE)
  {
    goto LABEL_44;
  }

LABEL_45:
  v50 = *(v51 + 20);
  if (v47 < v50)
  {
    memset((a3 + 2 * v47), 255, 2 * (v50 + ~v47) + 2);
  }
}

double quantizer_lite_create()
{
  v0 = malloc_type_malloc(0x2CuLL, 0x1000040D4159EFEuLL);
  *v0 = xmmword_89C80;
  v0[1] = xmmword_89C90;
  *&result = 3;
  *(v0 + 4) = 3;
  *(v0 + 10) = 4;
  return result;
}

void quantize_lite(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = 0;
  LODWORD(v4) = *(a1 + 36);
  v5 = *(a1 + 40);
  *(a3 + 44) = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  v33 = a1 + 24;
  *a3 = 0u;
  v34 = a3;
  do
  {
    v6 = (a1 + 8 * v3);
    v7 = *v6;
    v8 = (a2 + 4 * *v6);
    v9 = v6[1] - *v6;
    v10 = (v9 + 1);
    v11 = 0.0;
    if (v9 < 0)
    {
      goto LABEL_8;
    }

    v12 = (a2 + 4 * v7);
    v13 = (v9 + 1);
    do
    {
      v14 = *v12++;
      v15 = fabsf(v14);
      if (v15 > v11)
      {
        v11 = v15;
      }

      --v13;
    }

    while (v13);
    if (v11 >= 0.5)
    {
      v17 = 0;
    }

    else
    {
LABEL_8:
      v16 = 0;
      do
      {
        v11 = v11 + v11;
        v17 = v16 + 1;
      }

      while (v11 < 0.5 && v16++ < 0xE);
    }

    *a3 |= v17 << (12 - 4 * v3);
    if ((v9 & 0x80000000) == 0)
    {
      v38 = v3;
      v19 = *(v33 + 4 * v3);
      v20 = 1 << (v19 - 1);
      v37 = v19;
      v21 = (1 << v17);
      v22 = ~(-1 << v19);
      v23 = v8;
      v24 = (v9 + 1);
      do
      {
        v25 = *v23;
        v26 = v21 * fabsf(*v23);
        v27 = -8.0;
        if (v26 != 0.0)
        {
          v27 = logf(v26) / 0.69315;
        }

        if (v27 >= -8.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = -8.0;
        }

        v29 = (((v28 * -0.125) * v20) + 0.5);
        if (v20 <= v29)
        {
          LOWORD(v29) = v20 - 1;
        }

        if (v25 <= 0.0)
        {
          v30 = 0;
        }

        else
        {
          v30 = v20;
        }

        *v23++ = ((v29 + v30) & v22);
        --v24;
      }

      while (v24);
      a3 = v34;
      v3 = v38;
      do
      {
        v31 = *v8;
        v32 = v5 - v37;
        if (v5 - v37 < 1)
        {
          if (v5 == v37)
          {
            *(v34 + v4) |= v31;
            v5 = 16;
            LODWORD(v4) = v4 + 1;
          }

          else
          {
            *(v34 + v4) |= v31 >> (v37 - v5);
            v4 = v4 + 1;
            v5 = v32 + 16;
            *(v34 + v4) = v31 << (v32 + 16);
          }
        }

        else
        {
          *(v34 + v4) |= v31 << (v5 - v37);
          v5 -= v37;
        }

        ++v8;
        --v10;
      }

      while (v10);
    }

    ++v3;
  }

  while (v3 != 3);
}

uint64_t unpack(unsigned __int16 *a1, int a2, uint64_t a3, int a4)
{
  v4 = *a1;
  if (a2 < 1)
  {
    v5 = 0;
LABEL_11:
    if (v5 < a4)
    {
      bzero((a3 + 4 * v5), 4 * (~v5 + a4) + 4);
    }
  }

  else
  {
    v5 = 0;
    v6 = root;
    v7 = v4 >> 4;
    v8 = 12;
    v9 = 1;
    v10 = root;
    while (1)
    {
      do
      {
        v10 = v10[v7 & 1];
        if (!*v10)
        {
          if (v5 == a4)
          {
            return v4 & 0xF;
          }

          *(a3 + 4 * v5++) = *(v10 + 2);
          v10 = v6;
        }

        LOWORD(v7) = v7 >> 1;
        --v8;
      }

      while (v8);
      if (v5 == a4)
      {
        break;
      }

      LOWORD(v7) = a1[v9++];
      v8 = 16;
      if (v9 == a2 + 1)
      {
        goto LABEL_11;
      }
    }
  }

  return v4 & 0xF;
}

double unpack_lite_create()
{
  v0 = malloc_type_malloc(0x2CuLL, 0x1000040D4159EFEuLL);
  *v0 = xmmword_89C80;
  v0[1] = xmmword_89C90;
  *&result = 3;
  *(v0 + 4) = 3;
  *(v0 + 10) = 4;
  return result;
}

uint64_t unpack_lite_c(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = 0;
  v7 = *(a1 + 36);
  v6 = *(a1 + 40);
  v8 = *a2;
  do
  {
    v9 = (a1 + 8 * v5);
    v11 = *v9;
    v10 = v9[1];
    if (v11 <= v10)
    {
      v13 = *(a1 + 24 + 4 * v5);
      v12 = v10 + 1;
      v14 = (a4 + 4 * v11);
      v15 = v12 - v11;
      do
      {
        v6 -= v13;
        if (v6 < 1)
        {
          v17 = v7 + 1;
          v16 = a2[v7];
          if (v6)
          {
            v18 = v16 << -v6;
            v6 += 16;
            v16 = (a2[v17] >> v6) | v18;
          }

          else
          {
            v6 = 16;
          }

          v7 = v17;
        }

        else
        {
          v16 = a2[v7] >> v6;
        }

        *v14++ = vcvts_n_f32_u32(0x8000u >> (((v8 >> (12 - 4 * v5)) & 0xF) + (((v16 & ~(-1 << v13)) - ((v16 & ~(-1 << v13)) >> (v13 - 1) << (v13 - 1))) << (4 - v13))), 0xFuLL) * (2 * ((v16 & ~(-1 << v13)) >> (v13 - 1)) - 1);
        --v15;
      }

      while (v15);
    }

    else
    {
      v12 = v11;
    }

    ++v5;
  }

  while (v5 != 3);
  if (v12 < a5)
  {
    bzero((a4 + 4 * v12), 4 * (~v12 + a5) + 4);
  }

  return 0;
}

uint64_t g726_init(uint64_t a1, int a2, __int16 a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 4) = a2;
  *a1 = a3;
  *(a1 + 10) = 0;
  *(a1 + 38) = 0;
  memset_pattern16((a1 + 42), asc_89D10, 4uLL);
  *(a1 + 22) = 0;
  *(a1 + 14) = 0;
  memset_pattern16((a1 + 26), asc_89D10, 0xCuLL);
  *(a1 + 46) = 0;
  *(a1 + 60) = 544;
  *(a1 + 56) = 34816;
  return 0;
}

uint64_t g726_encode_frame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = 0;
  v68 = 0;
  v66 = 0;
  if (a3)
  {
    v6 = 0;
    while (1)
    {
      v10 = *(a2 + 2 * v6);
      if (*a1 == 2)
      {
        v10 = linear_to_alaw(*(a2 + 2 * v6));
      }

      sub_73FB0(a1, &v68 + 1, &v68);
      v11 = HIWORD(v68);
      if (*a1 == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = alaw_to_linear(v10) >> 2;
      }

      v13 = 0;
      if (v10 >= 0)
      {
        v12 &= 0x3FFFu;
      }

      if (v12 >= 0x2000)
      {
        LOWORD(v12) = v12 - 0x4000;
      }

      v14 = v11 ^ 0x8000;
      if (v11 < 0x4000)
      {
        v14 = v11;
      }

      v15 = (v12 - v14);
      v16 = *(a1 + 46);
      v17 = v16 >> 2;
      if (v16 > 255)
      {
        LOWORD(v17) = 64;
      }

      v18 = *(a1 + 56);
      v19 = (*(a1 + 60) - (v18 >> 6)) & 0x3FFF;
      v20 = (((v18 >> 6) - *(a1 + 60)) & 0x1FFF) * v17;
      v21 = (v19 * v17) >> 6;
      v22 = -(v20 >> 6);
      if (v19 >= 0x2000)
      {
        LOWORD(v21) = v22;
      }

      if (v15 >= 0)
      {
        v23 = v15;
      }

      else
      {
        v23 = -v15 & 0x7FFF;
      }

      v24 = v23;
      if (v23 >= 2)
      {
        v13 = 0;
        v25 = 2;
        do
        {
          ++v13;
          v25 *= 2;
        }

        while (v25 <= v24);
      }

      v26 = v21 + (v18 >> 6);
      v27 = v26 & 0x1FFF;
      v28 = v27 >> 2;
      if (*(a1 + 4) != 32000)
      {
        v30 = 0;
        v32 = 0;
        goto LABEL_42;
      }

      v29 = ((((v24 << 7) >> v13) & 0x7F | (v13 << 7)) - v28) & 0xFFF;
      if (v15 < 0)
      {
        break;
      }

      if (v29 <= 0xF83)
      {
        if (v29 <= 0x7FF)
        {
          if (v29 <= 0x18F)
          {
            if (v29 <= 0x15C)
            {
              if (v29 <= 0x12B)
              {
                if (v29 <= 0xF5)
                {
                  if (v29 <= 0xB1)
                  {
                    if (v29 <= 0x4F)
                    {
                      v30 = 1;
                    }

                    else
                    {
                      v30 = 2;
                    }

                    v31 = v30;
                  }

                  else
                  {
                    v30 = 3;
                    v31 = 3;
                  }
                }

                else
                {
                  v30 = 4;
                  v31 = 4;
                }
              }

              else
              {
                v30 = 5;
                v31 = 5;
              }
            }

            else
            {
              v30 = 6;
              v31 = 6;
            }
          }

          else
          {
            v30 = 7;
            v31 = 7;
          }

          goto LABEL_41;
        }

LABEL_39:
        v30 = 15;
        goto LABEL_40;
      }

      v30 = 1;
      v31 = 1;
LABEL_41:
      v32 = 32 * word_89CE0[v31];
LABEL_42:
      v33 = v32 - (v26 & 0x1FFF);
      v34 = (v33 >> 5) & 0xFFF;
      if ((v33 & 0x10000) != 0)
      {
        v35 = v34 | 0x1000;
      }

      else
      {
        v35 = v34;
      }

      v36 = (v35 + v26) & 0x1FFF;
      v37 = v36 + 15840;
      if (((v36 + 11264) & 0x2000) == 0)
      {
        v36 = 5120;
      }

      if ((v37 & 0x2000) != 0)
      {
        v36 = 544;
      }

      *(a1 + 60) = v36;
      v38 = v36 + (-v18 >> 6);
      if ((v38 & 0x2000) != 0)
      {
        v39 = v38 | 0x7C000;
      }

      else
      {
        v39 = v38 & 0x3FFF;
      }

      *(a1 + 56) = (v39 + v18) & 0x7FFFF;
      *(a4 + v6) = v30;
      if (*(a1 + 4) == 32000)
      {
        v40 = (v30 & 0xFFF8) << 12;
        LOWORD(v28) = word_89CF0[v30] + v28;
        v41 = v28 & 0xFFF;
        if (v41 <= 0x7FF)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v40 = 0;
        v41 = (v27 >> 2) & 0xFFF;
        if (v41 <= 0x7FF)
        {
LABEL_56:
          v42 = (((v28 & 0x7F) << 7) | 0x4000) >> (14 - (v41 >> 7));
          goto LABEL_57;
        }
      }

      v42 = 0;
LABEL_57:
      v43 = v42 + v40;
      v44 = (v42 + v40);
      sub_744C4(a1, &v67, &v66, &v67 + 1, v44, v11, v68);
      if ((v18 >> 15) <= 9)
      {
        v48 = (((v18 >> 10) & 0x1F | 0x20) << (v18 >> 15));
      }

      else
      {
        v48 = 31744;
      }

      v49 = ((v48 + (v48 >> 1)) >> 1);
      v51 = *(a1 + 52) == 1 && v42 > v49;
      v52 = v66;
      *(a1 + 52) = ((v66 - 0x8000) >> 9 < 0x29) & ~v51;
      sub_74638(a1, v30, v27, v51, v45, v46, v47);
      sub_74770(a1, v44, v51);
      *(a1 + 44) = *(a1 + 42);
      v53 = -HIWORD(v67) & 0x7FFF;
      if (v67 >= 0)
      {
        v53 = HIWORD(v67);
      }

      if (v53)
      {
        v54 = 0;
        for (i = 1; i <= v53; i *= 2)
        {
          ++v54;
        }

        v56 = (v53 << 6) >> v54;
        v57 = v54 << 6;
      }

      else
      {
        v57 = 0;
        v56 = 32;
      }

      *(a1 + 42) = v57 + ((HIWORD(v67) >> 5) & 0x400) + v56;
      v58 = v67;
      if (v51)
      {
        v58 = 0;
      }

      *(a1 + 10) = v58;
      if (v51)
      {
        v59 = 0;
      }

      else
      {
        v59 = v52;
      }

      *(a1 + 12) = v59;
      v60 = *(a1 + 34);
      *(a1 + 28) = *(a1 + 26);
      *(a1 + 36) = v60;
      v61 = 0;
      if ((v43 & 0x7FFF) != 0)
      {
        v62 = 1;
        do
        {
          LOWORD(v61) = v61 + 1;
          v62 *= 2;
        }

        while (v62 <= v42);
        v61 = v61;
      }

      v7 = (v42 << 6) >> v61;
      v8 = ((v43 >> 5) & 0x400) + (v61 << 6);
      if ((v43 & 0x7FFF) != 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = 32;
      }

      *(a1 + 26) = v8 + v9;
      if (++v6 == a3)
      {
        return a3;
      }
    }

    if (v29 <= 0xF83)
    {
      if (v29 > 0x7FF)
      {
        goto LABEL_39;
      }

      if (v29 <= 0x18F)
      {
        if (v29 <= 0x15C)
        {
          if (v29 <= 0x12B)
          {
            if (v29 <= 0xF5)
            {
              if (v29 <= 0xB1)
              {
                if (v29 > 0x4F)
                {
                  v30 = 13;
                }

                else
                {
                  v30 = 14;
                }
              }

              else
              {
                v30 = 12;
              }
            }

            else
            {
              v30 = 11;
            }
          }

          else
          {
            v30 = 10;
          }
        }

        else
        {
          v30 = 9;
        }
      }

      else
      {
        v30 = 8;
      }
    }

    else
    {
      v30 = 14;
    }

LABEL_40:
    v31 = (7 - v30) & 7;
    goto LABEL_41;
  }

  return a3;
}

uint64_t sub_73FB0(__int16 *a1, _WORD *a2, _WORD *a3)
{
  v3 = a1[7];
  v4 = a1[13];
  v5 = -(v3 >> 2) & 0x1FFF;
  if ((v3 & 0x80000000) == 0)
  {
    v5 = v3 >> 2;
  }

  if (v5)
  {
    v6 = 13;
    if (v5 <= 0xFFF)
    {
      for (i = 4096; i > v5; i >>= 1)
      {
        --v6;
      }
    }

    v8 = v5 << 6 >> v6;
  }

  else
  {
    v6 = 0;
    v8 = 32;
  }

  v9 = v6 + ((v4 >> 6) & 0xF);
  v10 = ((8 * (v4 & 0x3F) * v8) & 0xFFFFFF80) + 384;
  v11 = (v10 << (v9 - 26)) & 0x7F80;
  v12 = v10 >> (26 - v9);
  if (v9 <= 26)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = a1[8];
  v15 = a1[14];
  v16 = -(v14 >> 2) & 0x1FFF;
  if ((v14 & 0x80000000) == 0)
  {
    v16 = v14 >> 2;
  }

  if (v16)
  {
    v17 = 13;
    if (v16 <= 0xFFF)
    {
      for (j = 4096; j > v16; j >>= 1)
      {
        --v17;
      }
    }

    v19 = v16 << 6 >> v17;
  }

  else
  {
    v17 = 0;
    v19 = 32;
  }

  v20 = v17 + ((v15 >> 6) & 0xF);
  v21 = ((8 * (v15 & 0x3F) * v19) & 0xFFFFFF80) + 384;
  if (v20 <= 26)
  {
    v22 = v21 >> (26 - v20);
  }

  else
  {
    v22 = (v21 << (v20 - 26)) & 0x7F80;
  }

  v23 = a1[9];
  v24 = a1[15];
  v25 = -(v23 >> 2) & 0x1FFF;
  if ((v23 & 0x80000000) == 0)
  {
    v25 = v23 >> 2;
  }

  if (v25)
  {
    v26 = 13;
    if (v25 <= 0xFFF)
    {
      for (k = 4096; k > v25; k >>= 1)
      {
        --v26;
      }
    }

    v28 = v25 << 6 >> v26;
  }

  else
  {
    v26 = 0;
    v28 = 32;
  }

  v29 = v26 + ((v24 >> 6) & 0xF);
  v30 = ((8 * (v24 & 0x3F) * v28) & 0xFFFFFF80) + 384;
  v31 = (v30 << (v29 - 26)) & 0x7F80;
  v32 = v30 >> (26 - v29);
  if (v29 <= 26)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

  v34 = a1[10];
  v35 = a1[16];
  v36 = -(v34 >> 2) & 0x1FFF;
  if ((v34 & 0x80000000) == 0)
  {
    v36 = v34 >> 2;
  }

  if (v36)
  {
    v37 = 13;
    if (v36 <= 0xFFF)
    {
      for (m = 4096; m > v36; m >>= 1)
      {
        --v37;
      }
    }

    v39 = v36 << 6 >> v37;
  }

  else
  {
    v37 = 0;
    v39 = 32;
  }

  v40 = v37 + ((v35 >> 6) & 0xF);
  v41 = ((8 * (v35 & 0x3F) * v39) & 0xFFFFFF80) + 384;
  if (v40 <= 26)
  {
    v42 = v41 >> (26 - v40);
  }

  else
  {
    v42 = (v41 << (v40 - 26)) & 0x7F80;
  }

  v43 = a1[11];
  v44 = a1[17];
  v45 = -(v43 >> 2) & 0x1FFF;
  if ((v43 & 0x80000000) == 0)
  {
    v45 = v43 >> 2;
  }

  if (v45)
  {
    v46 = 13;
    if (v45 <= 0xFFF)
    {
      for (n = 4096; n > v45; n >>= 1)
      {
        --v46;
      }
    }

    v48 = v45 << 6 >> v46;
  }

  else
  {
    v46 = 0;
    v48 = 32;
  }

  v49 = v46 + ((v44 >> 6) & 0xF);
  v50 = ((8 * (v44 & 0x3F) * v48) & 0xFFFFFF80) + 384;
  v51 = (v50 << (v49 - 26)) & 0x7F80;
  v52 = v50 >> (26 - v49);
  if (v49 <= 26)
  {
    v53 = v52;
  }

  else
  {
    v53 = v51;
  }

  v54 = a1[12];
  v55 = a1[18];
  v56 = -(v54 >> 2) & 0x1FFF;
  if ((v54 & 0x80000000) == 0)
  {
    v56 = v54 >> 2;
  }

  if (v56)
  {
    v57 = 13;
    if (v56 <= 0xFFF)
    {
      for (ii = 4096; ii > v56; ii >>= 1)
      {
        --v57;
      }
    }

    v59 = v56 << 6 >> v57;
  }

  else
  {
    v57 = 0;
    v59 = 32;
  }

  v60 = v57 + ((v55 >> 6) & 0xF);
  v61 = ((8 * (v55 & 0x3F) * v59) & 0xFFFFFF80) + 384;
  v62 = v61 >> (26 - v60);
  if (v60 > 26)
  {
    v62 = (v61 << (v60 - 26)) & 0x7F80;
  }

  v63 = a1[5];
  v64 = a1[21];
  v65 = -(v63 >> 2) & 0x1FFF;
  if ((v63 & 0x80000000) == 0)
  {
    v65 = v63 >> 2;
  }

  if (v65)
  {
    v66 = 13;
    if (v65 <= 0xFFF)
    {
      for (jj = 4096; jj > v65; jj >>= 1)
      {
        --v66;
      }
    }

    v68 = v65 << 6 >> v66;
  }

  else
  {
    v66 = 0;
    v68 = 32;
  }

  v69 = v66 + ((v64 >> 6) & 0xF);
  v70 = ((8 * (v64 & 0x3F) * v68) & 0xFFFFFF80) + 384;
  v71 = (v70 << (v69 - 26)) & 0x7F80;
  v72 = v70 >> (26 - v69);
  if (v69 > 26)
  {
    v72 = v71;
  }

  v73 = a1[6];
  result = a1[22];
  v75 = -(v73 >> 2) & 0x1FFF;
  if ((v73 & 0x80000000) == 0)
  {
    v75 = v73 >> 2;
  }

  if (v75)
  {
    v76 = 13;
    if (v75 <= 0xFFF)
    {
      for (kk = 4096; kk > v75; kk >>= 1)
      {
        --v76;
      }
    }

    v78 = v75 << 6 >> v76;
  }

  else
  {
    v76 = 0;
    v78 = 32;
  }

  v79 = v76 + ((result >> 6) & 0xF);
  v80 = ((8 * (result & 0x3F) * v78) & 0xFFFFFF80) + 384;
  v81 = v80 >> (26 - v79);
  if (v79 > 26)
  {
    v81 = (v80 << (v79 - 26)) & 0x7F80;
  }

  if (((v63 >> 15) & 1) == v64 >> 10)
  {
    LOWORD(v82) = v72;
  }

  else
  {
    v82 = -v72;
  }

  if (((v3 >> 15) & 1) == v4 >> 10)
  {
    LOWORD(v83) = v13;
  }

  else
  {
    v83 = -v13;
  }

  if (((v14 >> 15) & 1) == v15 >> 10)
  {
    LOWORD(v84) = v22;
  }

  else
  {
    v84 = -v22;
  }

  v85 = v84 + v83;
  if (((v23 >> 15) & 1) == v24 >> 10)
  {
    LOWORD(v86) = v33;
  }

  else
  {
    v86 = -v33;
  }

  if (((v34 >> 15) & 1) == v35 >> 10)
  {
    LOWORD(v87) = v42;
  }

  else
  {
    v87 = -v42;
  }

  v88 = v85 + v86 + v87;
  if (((v43 >> 15) & 1) == v44 >> 10)
  {
    LOWORD(v89) = v53;
  }

  else
  {
    v89 = -v53;
  }

  if (((v54 >> 15) & 1) == v55 >> 10)
  {
    LOWORD(v90) = v62;
  }

  else
  {
    v90 = -v62;
  }

  v91 = v88 + v89 + v90;
  if (((v73 >> 15) & 1) == result >> 10)
  {
    LOWORD(v92) = v81;
  }

  else
  {
    v92 = -v81;
  }

  *a3 = v91 >> 1;
  *a2 = (v82 + v91 + v92) >> 1;
  return result;
}
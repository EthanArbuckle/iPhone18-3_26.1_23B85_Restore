void *sub_4FE54(uint64_t a1, void *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_70AF4(v8, a1 + 200);
  Count = CFArrayGetCount(*(a1 + 472));
  if (Count < 1)
  {
LABEL_5:
    ValueAtIndex = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), v5);
      if (![a2 compare:ValueAtIndex[1135]])
      {
        break;
      }

      if (Count == ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  sub_70C40(v8);
  return ValueAtIndex;
}

CFArrayRef sub_4FF10(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_70AF4(v5, a1 + 200);
  v2 = *(a1 + 576);
  if (v2 == *(a1 + 568))
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_A20C(*(v2 - 8));
  }

  sub_70C40(v5);
  return v3;
}

void sub_4FF8C(uint64_t a1)
{
  v1 = *(a1 + 576);
  if (v1 != *(a1 + 568))
  {
    sub_9F88(*(v1 - 8));
  }
}

float sub_4FFA8(uint64_t a1)
{
  v1 = *(a1 + 576);
  if (v1 != *(a1 + 568))
  {
    return *(*(v1 - 8) + 24);
  }

  v2 = 0.5;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E690();
  }

  return v2;
}

float *sub_50014(float *result, float a2)
{
  v2 = *(result + 72);
  if (v2 != *(result + 71))
  {
    v4 = result;
    v5 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Wireless Splitter : setting individual device volume from main volume %f", &v6, 0xCu);
      v2 = *(v4 + 72);
    }

    result = sub_A120(*(v2 - 8), a2);
    *(*(*(v4 + 72) - 8) + 24) = a2;
  }

  return result;
}

uint64_t sub_500F8(uint64_t a1, int a2)
{
  v2 = *(a1 + 576);
  if (v2 == *(a1 + 568))
  {
    v6 = 0;
  }

  else
  {
    v5 = *(v2 - 8);
    if (*v5)
    {
      v6 = (*(**v5 + 16))(*v5) == a2;
      v5 = *(*(a1 + 576) - 8);
    }

    else
    {
      v6 = 0;
    }

    v7 = v5[1];
    if (v7)
    {
      v6 |= (*(*v7 + 16))(v7) == a2;
    }
  }

  return v6 & 1;
}

void sub_501C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 576);
  if (v2 != *(a1 + 568))
  {
    sub_9E88(*(v2 - 8), a2);
    v5 = *(*(a1 + 576) - 8);
    v6 = *v5;
    if (*v5 && (v7 = v5[1]) != 0)
    {
      sub_4FA7C(v4, *(v6 + 416), *(v7 + 416));
    }

    else
    {
      v8 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"valid";
        if (v6)
        {
          v10 = @"valid";
        }

        else
        {
          v10 = @"in-valid";
        }

        if (!v5[1])
        {
          v9 = @"in-valid";
        }

        v12 = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Wireless Splitter: user1 is %@ user2 is %@", &v12, 0x16u);
      }
    }

    v11 = *(*(a1 + 576) - 8);
    if (!*v11 || !v11[1])
    {
      sub_502F8(a1);
    }
  }
}

uint64_t sub_502F8(uint64_t result)
{
  v1 = *(result + 576);
  if (v1 != *(result + 568))
  {
    v2 = result;
    v3 = *(v1 - 8);
    v4 = *v3;
    if (*v3 && (v5 = v3[1]) != 0)
    {
      sub_4FA7C(result, *(v4 + 416), *(v5 + 416));
    }

    else
    {
      v6 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        v7 = @"valid";
        if (v4)
        {
          v8 = @"valid";
        }

        else
        {
          v8 = @"in-valid";
        }

        if (!v3[1])
        {
          v7 = @"in-valid";
        }

        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Wireless Splitter: user1 is %@ user2 is %@", &v11, 0x16u);
      }
    }

    v9 = *(v2 + 576);
    v10 = *(v9 - 8);
    *(v9 - 8) = 0;
    if (v10)
    {
      operator delete();
    }

    return sub_586EC(v2 + 568, *(v2 + 568));
  }

  return result;
}

void sub_50438(uint64_t a1)
{
  v1 = *(a1 + 576);
  if (v1 != *(a1 + 568))
  {
    sub_9C50(*(v1 - 8));
  }
}

uint64_t sub_50454(uint64_t result, int a2)
{
  v2 = *(result + 576);
  if (v2 != *(result + 568))
  {
    return sub_A410(*(v2 - 8), a2);
  }

  return result;
}

void sub_50470(uint64_t a1)
{
  v1 = *(a1 + 576);
  if (v1 == *(a1 + 568))
  {
    memset(buf, 0, sizeof(buf));
    sub_2088(buf, "WS_ERROR_AGGREGATE_DEVICE_COUNT_0");
    if (buf[23] < 0)
    {
      sub_9780(v15, *buf, *&buf[8]);
    }

    else
    {
      *v15 = *buf;
      v16 = *&buf[16];
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    v13 = qword_D8560;
    if (!os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *v17 = 0;
    v14 = "Wireless Splitter: The device count in the mAggregateDevices list is 0";
    goto LABEL_30;
  }

  v2 = *(v1 - 8);
  v3 = *(*v2 + 416);
  if (*(v3 + 9080) && *(*(v2[1] + 416) + 9080))
  {
    v5 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Wireless Splitter: Send aggregation notification of both users", buf, 2u);
      v3 = *(**(*(a1 + 576) - 8) + 416);
    }

    sub_5AAC0(v3, 2004050279);
    v6 = sub_5AAC0(*(*(*(*(a1 + 576) - 8) + 8) + 416), 2004050279);
    v7 = *(*(a1 + 576) - 8);
    v8 = *v7;
    if (*v7 && (v9 = v7[1]) != 0)
    {
      sub_4FA7C(v6, *(v8 + 416), *(v9 + 416));
    }

    else
    {
      v10 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        v11 = @"valid";
        if (v8)
        {
          v12 = @"valid";
        }

        else
        {
          v12 = @"in-valid";
        }

        if (!v7[1])
        {
          v11 = @"in-valid";
        }

        *buf = 138412546;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Wireless Splitter: user1 is %@ user2 is %@", buf, 0x16u);
      }
    }

    return;
  }

  memset(buf, 0, sizeof(buf));
  sub_2088(buf, "WS_ERROR_AGGREGATE_DEVICES_NOT_READY");
  if (buf[23] < 0)
  {
    sub_9780(__p, *buf, *&buf[8]);
  }

  else
  {
    *__p = *buf;
    v19 = *&buf[16];
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    v14 = "Wireless Splitter: Not all devices are ready to aggregate";
LABEL_30:
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v14, v17, 2u);
  }

LABEL_31:
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }
}

void sub_50744(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5076C(uint64_t a1, unsigned int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_50870;
  v3[3] = &unk_AD328;
  v4 = a2;
  return sub_507D8(a1, a2, v3);
}

uint64_t sub_507D8(uint64_t a1, unsigned int a2, void *a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_70AF4(v12, a1 + 264);
  v6 = *(a1 + 656);
  if (v6)
  {
    v7 = a1 + 656;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != a1 + 656 && *(v7 + 32) <= a2)
    {
      dispatch_async(*(v7 + 40), a3);
    }
  }

  return sub_70C40(v12);
}

void *sub_50870(uint64_t a1)
{
  result = sub_508C0(qword_D8DF0, *(a1 + 32));
  if (result && *(result + 192) == 1)
  {

    return sub_6B52C(result);
  }

  return result;
}

void *sub_508C0(uint64_t a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_70AF4(v9, a1 + 200);
  Count = CFArrayGetCount(*(a1 + 472));
  if (Count < 1)
  {
LABEL_9:
    v7 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), v5);
      v7 = ValueAtIndex;
      if ((ValueAtIndex[1136] || ValueAtIndex[1137] || ValueAtIndex[1140] || ValueAtIndex[1141]) && (*(*ValueAtIndex + 16))(ValueAtIndex) == a2)
      {
        break;
      }

      if (Count == ++v5)
      {
        goto LABEL_9;
      }
    }
  }

  sub_70C40(v9);
  return v7;
}

uint64_t sub_509B8(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7)
{
  v31[0] = 0;
  v31[1] = 0;
  sub_70AF4(v31, a1 + 200);
  v21 = a3;
  v22 = a4;
  v23 = a5;
  Count = CFArrayGetCount(*(a1 + 472));
  if (Count >= 1)
  {
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), v15);
      v17 = [objc_msgSend(ValueAtIndex[1135] componentsSeparatedByString:{@"-", "firstObject"}];
      v18 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v33 = v17;
        v34 = 2048;
        v35 = v15;
        v36 = 2112;
        v37 = a2;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Device Address: %@ for index: %ld, btAddr: %@", buf, 0x20u);
      }

      if ([v17 isEqualToString:a2])
      {
        break;
      }

      if (Count == ++v15)
      {
        return sub_70C40(v31);
      }
    }

    v19 = (*(*ValueAtIndex + 2))(ValueAtIndex);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_50C0C;
    v24[3] = &unk_B0B78;
    v25 = v19;
    v24[4] = a2;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    v29 = a6;
    v30 = a7;
    sub_507D8(a1, v19, v24);
  }

  return sub_70C40(v31);
}

void sub_50BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

void sub_50C0C(uint64_t a1)
{
  v2 = sub_508C0(qword_D8DF0, *(a1 + 40));
  if (v2 && *(v2 + 192) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 44);
    v5 = *(a1 + 45);
    v6 = *(a1 + 46);
    v7 = *(a1 + 47);
    v8 = *(a1 + 48);

    sub_6ECC8(v2, v3, v4, v5, v6, v7, v8);
  }
}

uint64_t sub_50C80(uint64_t a1, uint64_t a2, char a3)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_70AF4(v17, a1 + 200);
  v13 = a3;
  Count = CFArrayGetCount(*(a1 + 472));
  if (Count >= 1)
  {
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), v7);
      v9 = [objc_msgSend(ValueAtIndex[1135] componentsSeparatedByString:{@"-", "firstObject"}];
      v10 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v19 = v9;
        v20 = 2048;
        v21 = v7;
        v22 = 2112;
        v23 = a2;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Device Address: %@ for index: %ld, btAddr: %@", buf, 0x20u);
      }

      if ([v9 isEqualToString:a2])
      {
        break;
      }

      if (Count == ++v7)
      {
        return sub_70C40(v17);
      }
    }

    v11 = (*(*ValueAtIndex + 2))(ValueAtIndex);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_50EA4;
    v14[3] = &unk_B0BA0;
    v15 = v11;
    v16 = v13;
    v14[4] = a2;
    sub_507D8(a1, v11, v14);
  }

  return sub_70C40(v17);
}

void sub_50E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

void *sub_50EA4(uint64_t a1)
{
  result = sub_508C0(qword_D8DF0, *(a1 + 40));
  if (result)
  {
    v3 = result;
    if (*(result + 192) == 1)
    {
      result = result[1138];
      if (result)
      {
        if (*(result + 192) == 1)
        {
          *(v3[1160] + 243) = *(a1 + 44) == 2;
          v4 = *(a1 + 32);
          v5 = *(a1 + 44);
          v6 = *(*result + 608);

          return v6();
        }
      }
    }
  }

  return result;
}

uint64_t sub_50F5C(uint64_t a1, const void *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_70AF4(v11, a1 + 200);
  v4 = qword_D8560;
  if (!a2)
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7E70C();
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*a2 + 16))(a2);
    *buf = 67109120;
    v13 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Adding BTUnifiedAudioDevice %d", buf, 8u);
  }

  Count = CFArrayGetCount(*(a1 + 472));
  if (Count >= 1)
  {
    v7 = 0;
    while (CFArrayGetValueAtIndex(*(a1 + 472), v7) != a2)
    {
      if (Count == ++v7)
      {
        goto LABEL_8;
      }
    }

    v9 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Unified Audio device already in list", buf, 2u);
    }

    goto LABEL_13;
  }

LABEL_8:
  CFArrayAppendValue(*(a1 + 472), a2);
  sub_70BD4(v11);
  v8 = 1;
LABEL_14:
  sub_70C40(v11);
  return v8;
}

uint64_t sub_51128(uint64_t a1, const void *a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_70AF4(v10, a1 + 200);
  if (!a2)
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7E70C();
    }

    goto LABEL_9;
  }

  Count = CFArrayGetCount(*(a1 + 472));
  if (Count < 1)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v5 = 0;
  while (CFArrayGetValueAtIndex(*(a1 + 472), v5) != a2)
  {
    if (Count == ++v5)
    {
      goto LABEL_9;
    }
  }

  v8 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Unified Audio device already published", v9, 2u);
  }

  v6 = 1;
LABEL_10:
  sub_70C40(v10);
  return v6;
}

void sub_51228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

void sub_51240(uint64_t a1, void *a2)
{
  if (a2)
  {
    Count = CFArrayGetCount(*(a1 + 472));
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      while (CFArrayGetValueAtIndex(*(a1 + 472), v6) != a2)
      {
        if (v5 == ++v6)
        {
          return;
        }
      }

      CFArrayRemoveValueAtIndex(*(a1 + 472), v6);
      v7 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a2[1135];
        v9 = (*(*a2 + 16))(a2);
        v20 = 138543618;
        v21 = v8;
        v22 = 1024;
        v23 = v9;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Deleting BTUnifiedAudioDevice [%{public}@] ID = %d From Unified device list", &v20, 0x12u);
      }

      CFArrayGetCount(*(a1 + 472));
      v10 = a2[1160];
      if ((*(v10 + 144) & 1) != 0 || *(v10 + 290) == 1)
      {
        v11 = +[BTAudioAVNotificationMonitor sharedInstance];
        if (v11)
        {
          v12 = v11;
          [(BTAudioAVNotificationMonitor *)v11 unRegisterNowPlayingListener:(*(*a2 + 16))(a2)];
          [(BTAudioAVNotificationMonitor *)v12 unRegisterPersonalizedVolumeListener:(*(*a2 + 16))(a2) deviceUID:a2[1135]];
          [(BTAudioAVNotificationMonitor *)v12 processManualVolumeUpdates:0];
        }
      }

      if (!CFArrayGetCount(*(a1 + 472)))
      {
        v13 = (a1 + 520);
        v14 = *(a1 + 520);
        if (v14)
        {
          v15 = qword_D8560;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
          {
            v16 = CFGetRetainCount(v14);
            v20 = 67109120;
            LODWORD(v21) = v16;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Spatial Profile : HRTF no longer required in plugin: Trigger Release %d", &v20, 8u);
            v14 = *v13;
          }

          CFRelease(v14);
        }

        v17 = *(a1 + 528);
        if (v17)
        {
          v18 = qword_D8560;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
          {
            v19 = CFGetRetainCount(v17);
            v20 = 67109120;
            LODWORD(v21) = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Spatial Profile Info no longer required in plugin: Trigger Release %d", &v20, 8u);
            v17 = *(a1 + 528);
          }

          CFRelease(v17);
        }

        *v13 = 0;
        *(a1 + 528) = 0;
      }
    }
  }

  else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E70C();
  }
}

uint64_t sub_51524(uint64_t a1, unsigned int a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_70AF4(v11, a1 + 264);
  v4 = *(a1 + 656);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 656;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 656 && *(v5 + 32) <= a2)
  {
    v9 = *(v5 + 40);
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  sub_70C40(v11);
  return v9;
}

uint64_t sub_515B4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_70AF4(v4, qword_D8DF0 + 200);
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_70C40(v4);
}

uint64_t sub_51628(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_70AF4(v17, a1 + 264);
  v8 = *(a1 + 656);
  if (v8)
  {
    v9 = a1 + 656;
    v10 = a1 + 656;
    do
    {
      v11 = *(v8 + 32);
      v12 = v11 >= a3;
      v13 = v11 < a3;
      if (v12)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * v13);
    }

    while (v8);
    if (v10 != v9 && *(v10 + 32) <= a3 && a4 != 0)
    {
      v15 = dispatch_time(0, 1000000 * a2);
      dispatch_after(v15, *(v10 + 40), a4);
    }
  }

  return sub_70C40(v17);
}

uint64_t sub_516DC(uint64_t a1)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_70AF4(v19, a1 + 200);
  Count = CFArrayGetCount(*(a1 + 472));
  v3 = [*(a1 + 464) currentRoutedUSBDeviceUID];
  v4 = [*(a1 + 464) currentBTDeviceUID];
  v6 = v4;
  if (Count >= 1)
  {
    v7 = 0;
    v8 = (v4 | v3) == 0;
    *&v5 = 138412290;
    v18 = v5;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), v7);
      v10 = ValueAtIndex[1136];
      if (v10 && v10[192] == 1)
      {
        (*(*v10 + 864))(__p);
        if (v23 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = *__p;
        }

        v12 = [NSString stringWithUTF8String:v11, v18];
        if (v23 < 0)
        {
          operator delete(*__p);
        }

        v13 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 138412546;
          *&__p[4] = v6;
          v21 = 2112;
          v22 = v12;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "ForceRoute Reconfigure comparing USB-C connected device %@ to device %@", __p, 0x16u);
        }

        if (v8 || [v6 containsString:v12])
        {
          v14 = qword_D8560;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
          {
            *__p = v18;
            *&__p[4] = v3;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "ForceRoute RECONFIG due to USB-C updating to UID %@", __p, 0xCu);
          }

          v15 = ValueAtIndex[1136];
          if (v15)
          {
            if (*(v15 + 192))
            {
              v16 = ValueAtIndex[1136];
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }

          (*(*v16 + 240))(v16, 1634038341, 1);
        }
      }

      ++v7;
    }

    while (Count != v7);
  }

  if (v3)
  {
    sub_4B93C(a1, v3, v6);
  }

  return sub_70C40(v19);
}

uint64_t sub_519A8(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_70AF4(v18, a1 + 200);
  Count = CFArrayGetCount(*(a1 + 472));
  v3 = [*(a1 + 464) currentBTDeviceUID];
  if (Count >= 1)
  {
    v4 = v3;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), i);
      v7 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v8 = ValueAtIndex[1136];
        if (v8)
        {
          if (v8[192] == 1)
          {
            (*(*v8 + 864))(__p);
            if (v17 >= 0)
            {
              v9 = __p;
            }

            else
            {
              v9 = __p[0];
            }

            v10 = [NSString stringWithUTF8String:v9];
            if (v17 < 0)
            {
              operator delete(__p[0]);
            }

            if ([v4 containsString:v10] && objc_msgSend(*(a1 + 464), "usbMetric"))
            {
              v11 = (*(*v7 + 1384))(v7);
              v12 = *(a1 + 464);
              if (v11 == 1)
              {
                v13 = [v12 usbMetric];
                v14 = 1;
              }

              else
              {
                v13 = [v12 usbMetric];
                v14 = 0;
              }

              [v13 setAudioTypeDuringPlugin:v14];
            }
          }
        }
      }
    }
  }

  return sub_70C40(v18);
}

id sub_51B70(uint64_t a1)
{
  Mutable = *(a1 + 528);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(a1 + 528) = Mutable;
  }

  v3 = *(a1 + 520);
  if (v3)
  {
    CFDictionarySetValue(Mutable, @"kBTAudioMsgPropertySoundProfile", v3);
  }

  else
  {
    result = objc_alloc_init(NSData);
    if (!result)
    {
      return result;
    }

    v5 = result;
    CFDictionarySetValue(*(a1 + 528), @"kBTAudioMsgPropertySoundProfile", result);
    CFRelease(v5);
  }

  CFRetain(*(a1 + 528));
  return *(a1 + 528);
}

void sub_51C14(uint64_t a1, int a2, char *a3)
{
  if (!strcasecmp(a3, "kBTAudioMsgPropertySoundProfile"))
  {
    v4 = CUXPCCreateCFObjectFromXPCObject();
    v5 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: received %@", &v6, 0xCu);
    }

    sub_51CF8(a1, v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void sub_51CF8(uint64_t a1, IR::IRData *this)
{
  v4 = *(a1 + 520);
  if (v4)
  {
    CFRelease(v4);
  }

  NoisySoundProfilePack = IR::IRData::createNoisySoundProfilePack(this, this);
  *(a1 + 520) = NoisySoundProfilePack;
  v6 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = NoisySoundProfilePack;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: Custom HRTF File Descriptor receivd %@ ", &v7, 0xCu);
  }

  sub_4CB20(a1, 1667789414);
}

void sub_51E1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if ([a2 bluetoothAddress])
  {
    v4 = [a2 bluetoothAddress];
    v5 = [a2 hearingAssistCapability];
    v6 = [a2 hearingAssistEnrolled];
    v7 = [a2 hearingAssistEnabled];
    v8 = [a2 pmeMediaEnabled];
    v9 = [a2 pmeVoiceEnabled];

    sub_509B8(v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v10 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Received bluetooth address is null; return", v11, 2u);
    }
  }
}

void sub_51F38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    [*(v2 + 672) invalidate];
    *(v2 + 672) = 0;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7E740();
    }
  }

  else
  {
    v3 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HearingModeService Activated", v4, 2u);
    }
  }
}

void sub_525CC(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(object, "kAccAudioMsgArgUSBHostBTAddress");
    if (string)
    {
      v6 = string;
      v7 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 136315138;
        *&v12[4] = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Updating Host Address %s", v12, 0xCu);
      }

      sub_4A6EC(qword_D8DF0, [NSString stringWithUTF8String:v6]);
      v8 = [*(a1 + 32) updateHostSideInfo];
      if (v8)
      {
        v9 = v8;
        [v8 setObject:*(a1 + 40) forKey:@"state"];
        CFRelease(*(a1 + 40));
        v10 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 138412290;
          *&v12[4] = v9;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Setting dictionary of %@ on the 515c USB device", v12, 0xCu);
        }

        *v12 = v9;
        CFRetain(v9);
        [*(a1 + 48) setMainGlobalProperty:1967669844 withData:v12 ofSize:8 withQualifier:0 ofSize:0];
        [v9 removeObjectForKey:@"state"];
      }

      else
      {
        v11 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "USB-C Error unable to create host info", v12, 2u);
        }
      }
    }
  }

  else if (object == &_xpc_error_connection_interrupted)
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7E880();
    }
  }

  else
  {
    v4 = os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR);
    if (object == &_xpc_error_connection_invalid)
    {
      if (v4)
      {
        sub_7E84C();
      }
    }

    else if (v4)
    {
      sub_7E818();
    }
  }
}

void sub_52D08(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) sendPingToUSBDevice:*(a1 + 40)];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v2 = dispatch_time(0, 20000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_52DD0;
    block[3] = &unk_B0C30;
    block[6] = *(a1 + 48);
    dispatch_after(v2, *(*(a1 + 32) + 64), block);
  }
}

id sub_52DD0(uint64_t a1)
{
  result = [*(a1 + 32) sendPingToUSBDevice:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

BOOL sub_530BC(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_70AF4(v5, a1 + 328);
  v2 = *(a1 + 512);
  v3 = v2 && [v2 length] && (objc_msgSend(*(a1 + 512), "isEqualToString:", @"NULL") & 1) == 0 && strcmp(objc_msgSend(*(a1 + 512), "UTF8String"), "00:00:00:00:00:00");
  sub_70C40(v5);
  return v3;
}

void sub_539E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a55 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_53A38(uint64_t a1)
{
  sub_4BECC(qword_D8DF0, *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 40) + 8) + 40));
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
  }

  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
  }
}

uint64_t sub_53AC4(void *a1)
{
  sub_4BECC(qword_D8DF0, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  v2 = a1[4];
  v3 = *(v2 + 72);
  if (v3)
  {

    *(a1[4] + 72) = 0;
    v2 = a1[4];
  }

  v4 = *(v2 + 80);
  if (v4)
  {

    *(a1[4] + 80) = 0;
    v2 = a1[4];
  }

  *(v2 + 10) = 0;
  v5 = qword_D8DF0;

  return sub_516DC(v5);
}

void sub_541A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

id sub_54AB8(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if (!result)
  {
    return result;
  }

  v3 = qword_D8DF0;
  sub_2088(__p, [result UTF8String]);
  v4 = sub_4E0CC(v3, __p);
  v5 = v4;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    v8 = *(a1 + 32);
    v9 = v8[10];
    if (v9)
    {
      v10 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Bluetooth not connected yet; Forcing reconfig %@", buf, 0xCu);
      }

      return sub_516DC(qword_D8DF0);
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (*(*(v5 + 9280) + 600))
  {
    v6 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 80);
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Genuine AirPods forcing reconfig %@", buf, 0xCu);
    }

    return sub_516DC(qword_D8DF0);
  }

  v8 = *(a1 + 32);
LABEL_14:
  v11 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v8[10];
    *buf = 138412290;
    v16 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "NOT Genuine AirPods dropping connection %@", buf, 0xCu);
    v8 = *(a1 + 32);
  }

  return [v8 cleanUSBInformation];
}

void sub_54C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_55D4C(void *result, uint64_t a2, void *a3, _BYTE *a4)
{
  if (a3)
  {
    v6 = result;
    result = [objc_msgSend(a3 "btAddress")];
    if (result)
    {
      v7 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v6[4];
        *v9 = 138412290;
        *&v9[4] = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Initiating pairing process with %@", v9, 0xCu);
      }

      result = [objc_msgSend(a3 "usbDevice")];
      if (result)
      {
        result = [objc_msgSend(a3 "usbDevice")];
        if (result)
        {
          result = [objc_msgSend(a3 usbDevice];
        }
      }

      *a4 = 1;
    }
  }

  return result;
}

void sub_561B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_561E0(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v7 = *(a1 + 40);
  v3 = AnalyticsSendEventLazy();
  v4 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "USB-C Stats '%@'  '%@' sent to CoreAnalytics with result %u", buf, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 40) = 0;
}

uint64_t sub_56454(_UNKNOWN **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_70AF4(v13, qword_D8DF0 + 200);
  if (a1 == &off_B76C8)
  {
    if (a4)
    {
      *&v14.byte0 = a2;
      *&v14.byte8 = a3;
      v10 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, v14);
      if (v10)
      {
        v11 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
        if (CFEqual(v10, v11) || (v12 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u), CFEqual(v10, v12)))
        {
          v8 = 0;
          atomic_fetch_add((qword_D8DF0 + 152), 1u);
          *a4 = &off_B76C8;
        }

        else
        {
          v8 = 2147483652;
        }

        CFRelease(v10);
      }

      else
      {
        v8 = 1852797029;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          sub_7E9B8();
        }
      }
    }

    else
    {
      v8 = 1852797029;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7E9EC();
      }
    }
  }

  else
  {
    v8 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7E984();
    }
  }

  sub_70C40(v13);
  return v8;
}

void sub_56640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_56654(_UNKNOWN **a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_70AF4(v4, qword_D8DF0 + 200);
  if (a1 == &off_B76C8)
  {
    atomic_fetch_add((qword_D8DF0 + 152), 1u);
    v2 = atomic_load((qword_D8DF0 + 152));
  }

  else
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EA20();
    }

    v2 = 0;
  }

  sub_70C40(v4);
  return v2;
}

uint64_t sub_566F8(_UNKNOWN **a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_70AF4(v4, qword_D8DF0 + 200);
  if (a1 == &off_B76C8)
  {
    atomic_fetch_add((qword_D8DF0 + 152), 0xFFFFFFFF);
    v2 = atomic_load((qword_D8DF0 + 152));
  }

  else
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EA54();
    }

    v2 = 0;
  }

  sub_70C40(v4);
  return v2;
}

uint64_t sub_5679C(_UNKNOWN **a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_70AF4(v9, qword_D8DF0 + 200);
  if (a1 == &off_B76C8)
  {
    v5 = qword_D8DF0;
    *(qword_D8DF0 + 144) = a2;
    LOBYTE(v5) = atomic_load((v5 + 12));
    if ((v5 & 1) == 0)
    {
      pthread_mutex_lock((qword_D8DF0 + 16));
      pthread_cond_signal((qword_D8DF0 + 80));
      pthread_mutex_unlock((qword_D8DF0 + 16));
      atomic_store(1u, (qword_D8DF0 + 12));
      v6 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AudioServerPlugIn Initialized", v8, 2u);
      }
    }

    v4 = 0;
  }

  else
  {
    v4 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EA88();
    }
  }

  sub_70C40(v9);
  return v4;
}

void sub_568BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_568D0(_UNKNOWN **a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_70AF4(v4, qword_D8DF0 + 200);
  if (a1 == &off_B76C8)
  {
    v2 = 1970171760;
  }

  else
  {
    v2 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EABC();
    }
  }

  sub_70C40(v4);
  return v2;
}

uint64_t sub_56960(_UNKNOWN **a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_70AF4(v4, qword_D8DF0 + 200);
  if (a1 == &off_B76C8)
  {
    v2 = 1970171760;
  }

  else
  {
    v2 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EAF0();
    }
  }

  sub_70C40(v4);
  return v2;
}

uint64_t sub_569F0(_UNKNOWN **a1, uint64_t a2, uint64_t a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_70AF4(v9, qword_D8DF0 + 200);
  v6 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v6)
    {
      (*(*v6 + 216))(v6, a3);
      v7 = 0;
    }

    else
    {
      v7 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7EB58();
      }
    }
  }

  else
  {
    v7 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EB24();
    }
  }

  sub_70C40(v9);
  return v7;
}

uint64_t sub_56B30(_UNKNOWN **a1, uint64_t a2, uint64_t a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_70AF4(v9, qword_D8DF0 + 200);
  v6 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v6)
    {
      (*(*v6 + 224))(v6, a3);
      v7 = 0;
    }

    else
    {
      v7 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7EBC0();
      }
    }
  }

  else
  {
    v7 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EB8C();
    }
  }

  sub_70C40(v9);
  return v7;
}

uint64_t sub_56C70(_UNKNOWN **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_70AF4(v11, qword_D8DF0 + 200);
  v8 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v8)
    {
      v9 = (*(*v8 + 160))(v8, a3, a4, v11);
    }

    else
    {
      v9 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7EC28();
      }
    }
  }

  else
  {
    v9 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EBF4();
    }
  }

  sub_70C40(v11);
  return v9;
}

uint64_t sub_56DBC(_UNKNOWN **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_70AF4(v11, qword_D8DF0 + 200);
  v8 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v8)
    {
      v9 = (*(*v8 + 168))(v8, a3, a4);
    }

    else
    {
      v9 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7EC5C();
      }
    }
  }

  else
  {
    v9 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EBF4();
    }
  }

  sub_70C40(v11);
  return v9;
}

uint64_t sub_56F04(_UNKNOWN **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_70AF4(v10, qword_D8DF0 + 200);
  v7 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v7)
    {
      if (a4)
      {
        v8 = (*(*v7 + 24))(v7, a4);
        goto LABEL_5;
      }

      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7ECC4();
      }
    }

    else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7ECF8();
    }
  }

  else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7EC90();
  }

  v8 = 0;
LABEL_5:
  sub_70C40(v10);
  return v8;
}

uint64_t sub_57064(_UNKNOWN **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_70AF4(v12, qword_D8DF0 + 200);
  v9 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v9)
    {
      if (a4)
      {
        if (a5)
        {
          v10 = (*(*v9 + 32))(v9, a4, a5);
        }

        else
        {
          v10 = 1852797029;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
          {
            sub_7ED9C();
          }
        }
      }

      else
      {
        v10 = 1852797029;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          sub_7EDD0();
        }
      }
    }

    else
    {
      v10 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7EE04();
      }
    }
  }

  else
  {
    v10 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7ED68();
    }
  }

  sub_70C40(v12);
  return v10;
}

uint64_t sub_57210(_UNKNOWN **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_70AF4(v16, qword_D8DF0 + 200);
  v13 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v13)
    {
      if (a4)
      {
        if (a7)
        {
          v14 = (*(*v13 + 40))(v13, a4, a5, a6, a7);
        }

        else
        {
          v14 = 1852797029;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
          {
            sub_7EEA8();
          }
        }
      }

      else
      {
        v14 = 1852797029;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          sub_7EEDC();
        }
      }
    }

    else
    {
      v14 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7EE04();
      }
    }
  }

  else
  {
    v14 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EE74();
    }
  }

  sub_70C40(v16);
  return v14;
}

uint64_t sub_573D4(_UNKNOWN **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_70AF4(v20, qword_D8DF0 + 200);
  v17 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v17)
    {
      if (a4)
      {
        if (a8)
        {
          if (a9)
          {
            v18 = (*(*v17 + 48))(v17, a4, a3, a5, a6, a7, a8);
          }

          else
          {
            v18 = 1852797029;
            if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
            {
              sub_7EF44();
            }
          }
        }

        else
        {
          v18 = 1852797029;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
          {
            sub_7EF78();
          }
        }
      }

      else
      {
        v18 = 1852797029;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          sub_7EFAC();
        }
      }
    }

    else
    {
      v18 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7EE04();
      }
    }
  }

  else
  {
    v18 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EF10();
    }
  }

  sub_70C40(v20);
  return v18;
}

uint64_t sub_575E4(_UNKNOWN **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_70AF4(v19, qword_D8DF0 + 200);
  v16 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v16)
    {
      if (a4)
      {
        v17 = (*(*v16 + 56))(v16, a4, a5, a6, a7, a8, a3);
      }

      else
      {
        v17 = 1852797029;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          sub_7F014();
        }
      }
    }

    else
    {
      v17 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7EE04();
      }
    }
  }

  else
  {
    v17 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7EFE0();
    }
  }

  sub_70C40(v19);
  return v17;
}

uint64_t sub_57790(_UNKNOWN **a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*qword_D8DE8 + 24))(qword_D8DE8);
  if (a1 == &off_B76C8)
  {
    v8 = v5;
    if (v5)
    {
      sub_7077C(9);
      v6 = (*(*v8 + 184))(v8, a3);
      if (v6 && os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7F07C();
      }
    }

    else
    {
      v6 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7F0EC();
      }
    }
  }

  else
  {
    v6 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7F048();
    }
  }

  return v6;
}

uint64_t sub_578C8(_UNKNOWN **a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_70AF4(v10, qword_D8DF0 + 200);
  v6 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    v8 = v6;
    if (v6)
    {
      sub_7077C(10);
      v7 = (*(*v8 + 192))(v8, a3);
    }

    else
    {
      v7 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7F154();
      }
    }
  }

  else
  {
    v7 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7F120();
    }
  }

  sub_70C40(v10);
  return v7;
}

uint64_t sub_57A18(_UNKNOWN **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_70AF4(v15, qword_D8DF0 + 200);
  v12 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v12)
    {
      (*(*v12 + 176))(v12, a3, a4, a5, a6);
      v13 = 0;
    }

    else
    {
      v13 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7F1BC();
      }
    }
  }

  else
  {
    v13 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7F188();
    }
  }

  sub_70C40(v15);
  return v13;
}

uint64_t sub_57B78(_UNKNOWN **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_70AF4(v14, qword_D8DF0 + 200);
  v11 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v11)
    {
      (*(*v11 + 200))(v11, a4, a5, a6);
      v12 = 0;
    }

    else
    {
      v12 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7F224();
      }
    }
  }

  else
  {
    v12 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7F1F0();
    }
  }

  sub_70C40(v14);
  return v12;
}

uint64_t sub_57CD0(_UNKNOWN **a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_70AF4(v7, qword_D8DF0 + 200);
  v4 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7F28C();
      }
    }
  }

  else
  {
    v5 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7F258();
    }
  }

  sub_70C40(v7);
  return v5;
}

uint64_t sub_57DDC(_UNKNOWN **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_70AF4(v19, qword_D8DF0 + 200);
  v16 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v16)
    {
      v17 = (*(*v16 + 208))(v16, a4, a5, a6, a7, a8, a9);
    }

    else
    {
      v17 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7F2F4();
      }
    }
  }

  else
  {
    v17 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7F2C0();
    }
  }

  sub_70C40(v19);
  return v17;
}

uint64_t sub_57F50(_UNKNOWN **a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_70AF4(v7, qword_D8DF0 + 200);
  v4 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (a1 == &off_B76C8)
  {
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 560947818;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7F35C();
      }
    }
  }

  else
  {
    v5 = 560947818;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7F328();
    }
  }

  sub_70C40(v7);
  return v5;
}

void sub_5805C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_58090(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_586EC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_580E4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_58138(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_58138(void ***a1)
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

void sub_58188(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_58188(a1, *a2);
    sub_58188(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_581EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_58260(result, a4);
  }

  return result;
}

void sub_58244(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_58260(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_582B4(a1, a2);
  }

  sub_5829C();
}

void sub_582B4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_5805C();
}

__int128 *sub_582FC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_58370(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_9780(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_583D0(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_5829C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_58510(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_9780(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *&dword_10[6 * v2] = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_58568(&v17);
  return v11;
}

void sub_584FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_58568(va);
  _Unwind_Resume(a1);
}

void sub_58510(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_5805C();
}

uint64_t sub_58568(uint64_t a1)
{
  sub_585A0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_585A0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_585FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_5805C();
}

uint64_t sub_58644(uint64_t a1)
{
  sub_5867C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5867C(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete();
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_586EC(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  while (v3 != a2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

uint64_t *sub_58754(uint64_t a1, unsigned int *a2)
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

uint64_t sub_58828(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_588CC(a1, &v3, a2);
  if (!result)
  {
    sub_589D4();
  }

  return result;
}

void *sub_588CC(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_58A70(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_58A8C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_58A8C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_58AF0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_58260(result, a4);
  }

  return result;
}

void sub_58B50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_58B6C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t *sub_58C80(uint64_t **a1, uint64_t a2)
{
  v3 = sub_35F90(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_58CC4(uint64_t a1, unsigned int *a2)
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

os_log_t sub_58DB4()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8560 = result;
  return result;
}

__n128 sub_58DE4(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = off_B0DC0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 156) = 0;
  *(a1 + 8) = a2;
  result = *a3;
  v4 = *(a3 + 16);
  *(a1 + 96) = *(a3 + 32);
  *(a1 + 64) = result;
  *(a1 + 80) = v4;
  return result;
}

void *sub_58E28(void *a1)
{
  *a1 = off_B0DC0;
  v2 = a1[18];
  a1[18] = 0;
  if (v2)
  {
    operator delete[]();
  }

  v3 = a1[16];
  a1[16] = 0;
  if (v3)
  {
    operator delete[]();
  }

  v4 = a1[13];
  a1[13] = 0;
  if (v4)
  {
    operator delete[]();
  }

  return a1;
}

void sub_58EC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, void *a6)
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  memset(&inInputDataProcUserData[2], 0, 48);
  *&outOutputData.mNumberBuffers = 0;
  v10 = *(a1 + 92);
  outOutputData.mNumberBuffers = 1;
  v11 = *(a1 + 112);
  outOutputData.mBuffers[0].mNumberChannels = v10;
  outOutputData.mBuffers[0].mDataByteSize = v11;
  outOutputData.mBuffers[0].mData = *(a1 + 104);
  v12 = *(a1 + 128);
  if (v12)
  {
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 12) = a3;
  }

  v13 = *(a1 + 156);
  if (!v13)
  {
    v13 = *(a1 + 44);
  }

  *&inInputDataProcUserData[3] = *(a1 + 24);
  *&inInputDataProcUserData[5] = *(a1 + 40);
  v14 = *(a1 + 80);
  v23 = *(a1 + 64);
  ioOutputDataPacketSize = v13;
  inInputDataProcUserData[0] = a2;
  inInputDataProcUserData[1] = a3;
  v15 = *(a1 + 56);
  LODWORD(inInputDataProcUserData[2]) = *(a1 + 120);
  inInputDataProcUserData[7] = v15;
  *&v21 = v12;
  v24 = v14;
  *&v25 = *(a1 + 96);
  v16 = AudioConverterFillComplexBuffer(*(a1 + 16), sub_1991C, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, *(a1 + 144));
  sub_199EC(v16, "Decoder AudioConverterFillComplexBuffer Failed!");
  if (ioOutputDataPacketSize && (mDataByteSize = outOutputData.mBuffers[0].mDataByteSize) != 0 && outOutputData.mBuffers[0].mDataByteSize <= a5)
  {
    *a6 = outOutputData.mBuffers[0].mDataByteSize;
    memcpy(a4, *(a1 + 104), mDataByteSize);
  }

  else
  {
    *a6 = 0;
  }
}

uint64_t sub_58FF8(uint64_t a1, int a2, uint64_t a3, _BYTE *a4, int a5)
{
  v5 = 8 * a5 / a2;
  v6 = v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 8 - a2;
    do
    {
      v11 = (v8 & ~(-1 << v9)) << (a2 - v9);
      *a4 = v11;
      v8 = *(a3 + v7);
      v12 = 252 << v9;
      v13 = v9 + v10;
      v9 = (v9 + v10) & 7;
      if ((v13 & 7) != 0)
      {
        ++v7;
      }

      v15 = -v13;
      v14 = v15 < 0;
      v16 = v15 & 7;
      if (v14)
      {
        LOBYTE(v17) = v9;
      }

      else
      {
        v17 = -v16;
      }

      *a4++ = (((v12 & v8) >> v17) | v11) << v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

os_log_t sub_59088()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8578 = result;
  return result;
}

uint64_t sub_590B8(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v5;
  v11 = *(a3 + 32);
  sub_58DE4(a1, a2, v10);
  *v6 = off_B0E28;
  if (a2 > 11)
  {
    switch(a2)
    {
      case 12:
        v7 = 4;
        goto LABEL_16;
      case 14:
        v7 = 6;
        goto LABEL_16;
      case 13:
        *(a1 + 192) = 0;
        goto LABEL_17;
    }
  }

  else
  {
    switch(a2)
    {
      case 9:
        v7 = 1;
        goto LABEL_16;
      case 10:
        v7 = 2;
        goto LABEL_16;
      case 11:
        v7 = 3;
LABEL_16:
        *(a1 + 192) = v7;
        goto LABEL_17;
    }
  }

  v8 = qword_D8580;
  if (os_log_type_enabled(qword_D8580, OS_LOG_TYPE_ERROR))
  {
    sub_7C230(a2, v8);
  }

LABEL_17:
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  return a1;
}

void *sub_591C0(uint64_t a1)
{
  *a1 = off_B0E28;
  v2 = *(a1 + 168);
  if (v2)
  {
    decoder_destroy(v2);
  }

  free(*(a1 + 184));

  return sub_58E28(a1);
}

void sub_5922C(uint64_t a1)
{
  sub_591C0(a1);

  operator delete();
}

uint64_t sub_59264(uint64_t a1)
{
  v2 = decoder_create(*(a1 + 192));
  *(a1 + 168) = v2;
  *(a1 + 176) = v2;
  *(a1 + 184) = malloc_type_calloc(v2[2], 4uLL, 0x100004052888210uLL);
  return 0;
}

void sub_592B4(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD *a4, uint64_t a5, void *a6)
{
  decode(*(a1 + 168), a2, *(a1 + 184), a3 == 0);
  v9 = *(*(a1 + 176) + 8);
  if (v9 >= 1)
  {
    v10 = *(a1 + 184);
    v11 = *(*(a1 + 176) + 8);
    do
    {
      v12 = *v10++;
      *a4++ = fminf(fmaxf(v12 * 32768.0, -32768.0), 32767.0);
      --v11;
    }

    while (v11);
  }

  *a6 = 2 * v9;
}

os_log_t sub_59358()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8580 = result;
  return result;
}

void sub_59388(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v6 = *(a3 + 32);
  sub_58DE4(a1, a2, v5);
  *v4 = &off_B0E98;
  *(v4 + 112) = 10240;
  operator new[]();
}

void sub_5944C(void *a1)
{
  sub_58E28(a1);

  operator delete();
}

uint64_t sub_5949C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (os_log_type_enabled(qword_D8588, OS_LOG_TYPE_ERROR))
  {
    sub_7F390(a2);
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else if (!a3)
  {
    goto LABEL_5;
  }

  v11 = a1 + 229;
  v12 = a3;
  do
  {
    *(v11 - 1) = *a2 >> 4;
    v13 = *a2++;
    *v11 = v13 & 0xF;
    v11 += 2;
    --v12;
  }

  while (v12);
LABEL_5:
  if (os_log_type_enabled(qword_D8588, OS_LOG_TYPE_ERROR))
  {
    sub_7F40C(a1);
  }

  result = g726_decode_frame((a1 + 164), (a1 + 228), a3, a4);
  *a6 = result;
  return result;
}

os_log_t sub_595B4()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8588 = result;
  return result;
}

void sub_595E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 0x2000;
  v5 = sub_1948(a1, a3);
  *v5 = off_B0F08;
  *(v5 + 9280) = 0;
  *(v5 + 9080) = 0u;
  *(v5 + 9096) = 0u;
  *(v5 + 9112) = 0u;
  *(v5 + 9128) = 0u;
  *(v5 + 9144) = 0u;
  *(v5 + 9160) = 0u;
  *(v5 + 9176) = 0u;
  *(v5 + 9288) = 1953853033;
  *(v5 + 9296) = 1919183219;
  *(v4 + 1112) = 0;
  *(v5 + 9320) = 0u;
  *(v5 + 9312) = v5 + 9320;
  *(v4 + 1144) = 0;
  *(v4 + 1146) = 0;
  *(v4 + 1280) = 0;
  *(v4 + 1282) = 1;
  *(v5 + 9496) = 0;
  *(v5 + 9480) = 0u;
  *(v5 + 9501) = 0;
  sub_709AC(v5 + 9640, v6);
  *(a1 + 9704) = 0;
  *(a1 + 9208) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9216) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9224) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9232) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9240) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9248) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9256) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9264) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9272) = CFArrayCreateMutable(0, 0, 0);
  pthread_mutex_init((a1 + 9344), 0);
  pthread_cond_init((a1 + 9408), 0);
  *(a1 + 9456) = xmmword_89080;
  (*(*a1 + 1056))(a1, 1);
  (*(*a1 + 1064))(a1, 0);
  *(a1 + 9192) = CFArrayCreateMutable(0, 0, 0);
  if (_os_feature_enabled_impl())
  {
    *(a1 + 9200) = CFArrayCreateMutable(0, 0, 0);
  }

  operator new();
}

double sub_599BC(uint64_t a1)
{
  pthread_mutex_init((a1 + 9344), 0);
  pthread_cond_init((a1 + 9408), 0);
  *&result = 3;
  *(a1 + 9456) = xmmword_89080;
  return result;
}

uint64_t sub_59A08(uint64_t a1, uint64_t a2)
{
  v4 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    LOBYTE(v6) = BYTE3(a2);
    BYTE1(v6) = BYTE2(a2);
    BYTE2(v6) = BYTE1(a2);
    *(&v6 + 3) = a2;
    *buf = 136446466;
    *&buf[4] = &v6;
    *&buf[12] = 2048;
    *&buf[14] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice, CreateBTAudioDevice %{public}s via = %lld", buf, 0x16u);
  }

  if (a2 <= 1952539499)
  {
    if (a2 == 1818583905)
    {
      sub_2C400(*(a1 + 9280), 0x20000);
      operator new();
    }

    if (a2 == 1952538980)
    {
      operator new();
    }
  }

  else
  {
    switch(a2)
    {
      case 1952539500:
        operator new();
      case 1953260897:
        sub_2C400(*(a1 + 9280), 0x10000);
        operator new();
      case 1953719151:
        operator new();
    }
  }

  if (_os_feature_enabled_impl())
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_70AF4(buf, qword_D8DF0 + 200);
    CFArrayAppendValue(*(a1 + 9200), 0);
  }

  else
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_70AF4(buf, qword_D8DF0 + 200);
  }

  CFArrayAppendValue(*(a1 + 9192), 0);
  v6 = 0x676C6F6261766170;
  v7 = 0;
  (*(*a1 + 248))(a1, &v6);
  sub_70C40(buf);
  return 0;
}

BOOL sub_5A118(void *a1, uint64_t a2, int a3, int a4)
{
  v8 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    LOBYTE(v24) = BYTE3(a2);
    BYTE1(v24) = BYTE2(a2);
    BYTE2(v24) = BYTE1(a2);
    HIBYTE(v24) = a2;
    v25 = 0;
    *buf = 136315650;
    *&buf[4] = &v24;
    v27 = 1024;
    v28 = a3;
    v29 = 1024;
    v30 = a4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: UpdateCurrentBTAudioDevice %s, %d, %d", buf, 0x18u);
  }

  if (_os_feature_enabled_impl())
  {
    v9 = sub_42134();
    if (a2 == 1952538980 && v9)
    {
      v10 = qword_D8590;
      result = os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v12 = "UpdateCurrentBTAudioDevice kBluetoothAudioDeviceTypeA3D returning early for virtual device";
LABEL_11:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
      return 0;
    }
  }

  else if (a2 == 1952538980)
  {
    v10 = qword_D8590;
    result = os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v12 = "UpdateCurrentBTAudioDevice kBluetoothAudioDeviceTypeA3D returning early";
    goto LABEL_11;
  }

  v13 = a1[1161];
  if (sub_42134())
  {
    if (v13 == 1953719151)
    {
      v14 = a1[1137];
      if (v14)
      {
        if (v14[192] == 1 && (*(*v14 + 1536))(v14))
        {
          v15 = qword_D8590;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Delayed Transport Disconnect: Transitioning out of HFP: Disconnect eSCO", buf, 2u);
          }

          if (*(a1[1137] + 192))
          {
            v16 = a1[1137];
          }

          else
          {
            v16 = 0;
          }

          (*(*v16 + 256))(v16, 0, 1918989668, 0);
        }
      }
    }
  }

  v17 = 0;
  if (a2 <= 1952539499)
  {
    if (a2 == 1818583905)
    {
      v17 = a1[1141];
    }

    else if (a2 == 1952538980)
    {
      if (sub_5B374(a1))
      {
        v17 = a1[1138];
        v18 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "UpdateCurrentBTAudioDevice, switch to kBluetoothAudioDeviceTypeA3D", buf, 2u);
        }
      }

      else
      {
        v19 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "UpdateCurrentBTAudioDevice, logging for kBluetoothAudioDeviceTypeA3D", buf, 2u);
        }

        v17 = 0;
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 1952539500:
        v17 = a1[1136];
        break;
      case 1953260897:
        v17 = a1[1140];
        break;
      case 1953719151:
        v17 = a1[1137];
        break;
    }
  }

  a1[1161] = a2;
  a1[1142] = v17;
  sub_5B4C8(a1);
  strcpy(buf, "pavabolg");
  buf[9] = 0;
  *&buf[10] = 0;
  (*(*a1 + 248))(a1, buf);
  if (v13 != a1[1161])
  {
    strcpy(buf, "pcvabolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*a1 + 248))(a1, buf);
    (*(*a1 + 736))(a1, v13);
  }

  sub_5B870(a1);
  v20 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    if (a1[1142])
    {
      v21.i32[0] = *(a1 + 2322);
      v22 = vrev64_s16(*&vmovl_u8(v21));
      v24 = vuzp1_s8(v22, v22).u32[0];
      v25 = 0;
      v23 = &v24;
    }

    else
    {
      v23 = "None";
    }

    *buf = 136315138;
    *&buf[4] = v23;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: UpdateCurrentBTAudioDevice : New Audio device %s ", buf, 0xCu);
  }

  return a1[1142] != 0;
}

uint64_t *sub_5A610(uint64_t a1)
{
  v2 = &xmmword_D85A0;
  v3 = 90;
  do
  {
    result = sub_58CC4(a1 + 9312, v2);
    result[5] = v2;
    v2 += 5;
    --v3;
  }

  while (v3);
  return result;
}

CFStringRef sub_5A68C(uint64_t a1, void *a2)
{
  if (sub_70820())
  {
    value = xpc_dictionary_get_value(a2, "kBTAudioDebugEnableAudioLogging");
    if (value)
    {
      v5 = value;
      if (xpc_get_type(value) != &_xpc_type_BOOL)
      {
        v6 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_FAULT))
        {
          sub_75E14(v6, v7, v8, v9, v10, v11, v12, v13);
        }

        if (sub_70820())
        {
LABEL_13:
          abort();
        }
      }

      xpc_BOOL_get_value(v5);
    }
  }

  string = xpc_dictionary_get_string(a2, "kBTAudioMsgPropertyDeviceUID");
  if (!string)
  {
    v15 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_FAULT))
    {
      sub_77184(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    if (sub_70820())
    {
      goto LABEL_13;
    }
  }

  result = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x8000100u);
  *(a1 + 200) = result;
  return result;
}

uint64_t sub_5A78C(uint64_t a1)
{
  v2 = off_B0F08;
  *a1 = off_B0F08;
  v3 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice Destructor completed", buf, 2u);
    v2 = *a1;
  }

  (v2[9])(a1);
  CFArrayRemoveAllValues(*(a1 + 9208));
  CFArrayRemoveAllValues(*(a1 + 9216));
  CFArrayRemoveAllValues(*(a1 + 9224));
  CFArrayRemoveAllValues(*(a1 + 9232));
  CFArrayRemoveAllValues(*(a1 + 9240));
  CFArrayRemoveAllValues(*(a1 + 9248));
  CFArrayRemoveAllValues(*(a1 + 9256));
  CFArrayRemoveAllValues(*(a1 + 9264));
  CFArrayRemoveAllValues(*(a1 + 9272));
  sub_70A2C((a1 + 600));
  CFArrayRemoveAllValues(*(a1 + 9192));
  sub_70A90((a1 + 600));
  if (_os_feature_enabled_impl())
  {
    sub_70A2C((a1 + 600));
    CFArrayRemoveAllValues(*(a1 + 9200));
    sub_70A90((a1 + 600));
  }

  CFRelease(*(a1 + 9208));
  CFRelease(*(a1 + 9216));
  CFRelease(*(a1 + 9224));
  CFRelease(*(a1 + 9232));
  CFRelease(*(a1 + 9240));
  CFRelease(*(a1 + 9248));
  CFRelease(*(a1 + 9256));
  CFRelease(*(a1 + 9264));
  CFRelease(*(a1 + 9272));
  sub_70A2C((a1 + 600));
  CFRelease(*(a1 + 9192));
  *(a1 + 9192) = 0;
  sub_70A90((a1 + 600));
  if (_os_feature_enabled_impl())
  {
    sub_70A2C((a1 + 600));
    CFRelease(*(a1 + 9200));
    *(a1 + 9200) = 0;
    sub_70A90((a1 + 600));
  }

  v4 = *(a1 + 9280);
  if (v4)
  {
    sub_2C0B8(v4);
    operator delete();
  }

  v5 = *(a1 + 9488);
  if (v5)
  {

    *(a1 + 9488) = 0;
  }

  v6 = *(a1 + 9184);
  if (v6)
  {

    *(a1 + 9184) = 0;
  }

  *buf = 0;
  v14 = 0;
  sub_70AF4(buf, a1 + 9640);
  v7 = *(a1 + 9704);
  if (v7)
  {
    if (!dispatch_block_testcancel(*(a1 + 9704)))
    {
      v8 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Delayed Control Centre Update: Cancelling current Dispatch", v12, 2u);
        v7 = *(a1 + 9704);
      }

      dispatch_block_cancel(v7);
    }

    *(a1 + 9704) = 0;
  }

  sub_70BD4(buf);
  sub_16FF8(a1 + 9312, *(a1 + 9320));
  *(a1 + 9312) = a1 + 9320;
  *(a1 + 9320) = 0u;
  sub_70C40(buf);
  sub_70A28(a1 + 9640, v9);
  sub_16FF8(a1 + 9312, *(a1 + 9320));
  return sub_1B04(a1, v10);
}

void sub_5AA88(uint64_t a1)
{
  sub_5A78C(a1);

  operator delete();
}

uint64_t sub_5AAC0(uint64_t a1, int a2)
{
  v3 = a2;
  v4 = 1735159650;
  return (*(*a1 + 248))(a1, &v3);
}

uint64_t sub_5AB14(_DWORD *a1, uint64_t a2)
{
  v4 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*a1 + 1024))(a1);
    v5.n128_u32[0] = a1[2322];
    v5.n128_u64[0] = vrev64_s16(*&vmovl_u8(v5.n128_u64[0]));
    v9 = vuzp1_s8(v5.n128_u64[0], v5.n128_u64[0]).u32[0];
    v10 = 0;
    v8[0] = BYTE3(a2);
    v8[1] = BYTE2(a2);
    v8[2] = BYTE1(a2);
    v8[3] = a2;
    v8[4] = 0;
    *buf = 67109634;
    v12 = v6;
    v13 = 2080;
    v14 = &v9;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Request profile Change, IO status %d, profile change %s => %s", buf, 0x1Cu);
  }

  return (*(*a1 + 240))(a1, 1650750576, a2);
}

void sub_5AC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 1352))(a1);
  sub_5A118(a1, a3, v6, 0);
  v7 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v8 = (*(*a1 + 1024))(a1);
    v12[0] = BYTE3(a2);
    v12[1] = BYTE2(a2);
    v12[2] = BYTE1(a2);
    v13 = a2;
    v8.n128_u32[0] = *(a1 + 9288);
    v8.n128_u64[0] = vrev64_s16(*&vmovl_u8(v8.n128_u64[0]));
    v10 = vuzp1_s8(v8.n128_u64[0], v8.n128_u64[0]).u32[0];
    v11 = 0;
    *buf = 67109634;
    v15 = v9;
    v16 = 2080;
    v17 = v12;
    v18 = 2080;
    v19 = &v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Perform ProfileUpdate, IO status %d, profile change %s => %s", buf, 0x1Cu);
  }

  (*(*a1 + 1408))(a1, a2, a3, *(a1 + 9296));
  if (a3 == 1953260897)
  {
    sub_5AE6C(a1);
  }
}

void sub_5AE6C(uint64_t a1)
{
  if ((sub_42134() & 1) == 0)
  {
    v2 = *(a1 + 9136);
    if (v2)
    {
      v3 = (*(*v2 + 1080))(v2);
      v4 = *(a1 + 9144);
      if (v3)
      {
        if (!v4)
        {
          operator new();
        }

        v5 = *(a1 + 9208);
        v34.length = CFArrayGetCount(v5);
        v34.location = 0;
        if (CFArrayGetFirstIndexOfValue(v5, v34, *(a1 + 9144)) == -1)
        {
          CFArrayAppendValue(*(a1 + 9208), *(a1 + 9144));
          CFArrayAppendValue(*(a1 + 9224), *(a1 + 9144));
          CFArrayAppendValue(*(a1 + 9256), *(a1 + 9144));
          CFArrayAppendValue(*(a1 + 9272), *(a1 + 9144));
        }
      }

      else if (v4)
      {
        v6 = *(a1 + 9208);
        v35.length = CFArrayGetCount(v6);
        v35.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v35, *(a1 + 9144));
        CFArrayRemoveValueAtIndex(v6, FirstIndexOfValue);
        v8 = *(a1 + 9224);
        v36.length = CFArrayGetCount(v8);
        v36.location = 0;
        v9 = CFArrayGetFirstIndexOfValue(v8, v36, *(a1 + 9144));
        CFArrayRemoveValueAtIndex(v8, v9);
        v10 = *(a1 + 9256);
        v37.length = CFArrayGetCount(v10);
        v37.location = 0;
        v11 = CFArrayGetFirstIndexOfValue(v10, v37, *(a1 + 9144));
        CFArrayRemoveValueAtIndex(v10, v11);
        v12 = *(a1 + 9272);
        v38.length = CFArrayGetCount(v12);
        v38.location = 0;
        v13 = CFArrayGetFirstIndexOfValue(v12, v38, *(a1 + 9144));
        CFArrayRemoveValueAtIndex(v12, v13);
      }

      v14 = (*(**(a1 + 9136) + 1072))(*(a1 + 9136));
      v15 = *(a1 + 9152);
      if (v14)
      {
        if (!v15)
        {
          operator new();
        }

        v16 = *(a1 + 9232);
        v39.length = CFArrayGetCount(v16);
        v39.location = 0;
        if (CFArrayGetFirstIndexOfValue(v16, v39, *(a1 + 9152)) == -1)
        {
          CFArrayAppendValue(*(a1 + 9232), *(a1 + 9152));
          CFArrayAppendValue(*(a1 + 9248), *(a1 + 9152));
          CFArrayAppendValue(*(a1 + 9256), *(a1 + 9152));
          CFArrayAppendValue(*(a1 + 9272), *(a1 + 9152));
        }
      }

      else if (v15)
      {
        v17 = *(a1 + 9232);
        v18 = *(a1 + 9208);
        v40.length = CFArrayGetCount(v17);
        v40.location = 0;
        v19 = CFArrayGetFirstIndexOfValue(v18, v40, *(a1 + 9152));
        CFArrayRemoveValueAtIndex(v17, v19);
        v20 = *(a1 + 9248);
        v21 = *(a1 + 9224);
        v41.length = CFArrayGetCount(v20);
        v41.location = 0;
        v22 = CFArrayGetFirstIndexOfValue(v21, v41, *(a1 + 9152));
        CFArrayRemoveValueAtIndex(v20, v22);
        v23 = *(a1 + 9256);
        v42.length = CFArrayGetCount(v23);
        v42.location = 0;
        v24 = CFArrayGetFirstIndexOfValue(v23, v42, *(a1 + 9152));
        CFArrayRemoveValueAtIndex(v23, v24);
        v25 = *(a1 + 9272);
        v43.length = CFArrayGetCount(v25);
        v43.location = 0;
        v26 = CFArrayGetFirstIndexOfValue(v25, v43, *(a1 + 9152));
        CFArrayRemoveValueAtIndex(v25, v26);
      }

      v27 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        if (CFArrayGetCount(*(a1 + 9208)))
        {
          v28 = "Yes";
        }

        else
        {
          v28 = "No";
        }

        if (CFArrayGetCount(*(a1 + 9232)))
        {
          v29 = "Yes";
        }

        else
        {
          v29 = "No";
        }

        v30 = 136315394;
        v31 = v28;
        v32 = 2080;
        v33 = v29;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice : Stream info,  Input Stream = %s Output Stream = %s ", &v30, 0x16u);
      }
    }
  }
}

_BYTE *sub_5B29C(uint64_t a1)
{
  result = *(a1 + 9096);
  if (result && result[192] == 1)
  {
    (*(*result + 1536))(result);
    if (*(*(a1 + 9096) + 192))
    {
      v3 = *(a1 + 9096);
    }

    else
    {
      v3 = 0;
    }

    result = (*(*v3 + 256))();
  }

  v4 = *(a1 + 9128);
  if (v4)
  {
    if (*(v4 + 192) == 1)
    {
      *(v4 + 9164) = 1;
    }
  }

  return result;
}

BOOL sub_5B374(uint64_t a1)
{
  v2 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 9104);
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice valid check %p", &v11, 0xCu);
  }

  v4 = _os_feature_enabled_impl();
  v5 = *(a1 + 9104);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v5 + 9176);
      v8 = *(v5 + 9168);
      v11 = 134218240;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice valid check output: %p, input: %p", &v11, 0x16u);
      v5 = *(a1 + 9104);
      if (!v5)
      {
        return 0;
      }
    }

    if (!*(v5 + 9176))
    {
      return 0;
    }

    v9 = *(v5 + 9168) == 0;
  }

  else
  {
    v9 = v5 == 0;
  }

  return !v9;
}

void sub_5B4C8(void *a1)
{
  if (_os_feature_enabled_impl())
  {
    if (*(qword_D8DF0 + 464))
    {
      v2 = [NSString alloc];
      (*(*a1 + 864))(__p, a1);
      if (v16 >= 0)
      {
        v3 = __p;
      }

      else
      {
        v3 = *__p;
      }

      v4 = [v2 initWithUTF8String:v3];
      if (v16 < 0)
      {
        operator delete(*__p);
      }

      v5 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(qword_D8DF0 + 464) currentBTDeviceUID];
        *__p = 138412546;
        *&__p[4] = v4;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: Connected device %@, unified device is %@", __p, 0x16u);
      }

      if ([v4 isEqualToString:{objc_msgSend(*(qword_D8DF0 + 464), "currentBTDeviceUID")}])
      {
        v7 = a1[1142];
        if (v7)
        {
          if (v7 == a1[1137])
          {
            *(a1[1160] + 242) = 0;
            strcpy(__p, "tlabbolg");
            __p[9] = 0;
            *&__p[10] = 0;
            (*(*a1 + 248))(a1, __p);
            if ([*(qword_D8DF0 + 464) currentRoutedDeviceIsUnified] && objc_msgSend(*(qword_D8DF0 + 464), "usbMetric"))
            {
              v9 = [*(qword_D8DF0 + 464) usbMetric];
              [v9 setTotalCountCallUnifiedAudio:{objc_msgSend(v9, "totalCountCallUnifiedAudio") + 1}];
            }
          }

          else if (v7 == a1[1136])
          {
            if ([*(qword_D8DF0 + 464) currentRoutedDeviceIsUnified])
            {
              *(a1[1160] + 242) = 1;
              strcpy(__p, "tlabbolg");
              __p[9] = 0;
              *&__p[10] = 0;
              (*(*a1 + 248))(a1, __p);
            }

            else
            {
              v10 = *(qword_D8DF0 + 464);
              if (v10 && [v10 currentRoutedUSBDeviceUID])
              {
                v11 = a1[1160];
                if (v11 && *(v11 + 600) == 1)
                {
                  v12 = qword_D8590;
                  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
                  {
                    *__p = 0;
                    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: Setup unified audio device", __p, 2u);
                  }

                  (*(*a1 + 240))(a1, 1634038341, 1);
                }

                else
                {
                  dispatch_async([*(qword_D8DF0 + 464) usbQueue], &stru_B1618);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: Defaults writes for unified usb device are missing", __p, 2u);
    }
  }
}

void sub_5B84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5B870(void *a1)
{
  v2 = a1[1137];
  if (v2 && v2[192] == 1)
  {
    if (a1[1161] == 1952539500)
    {
      v3 = *(a1[1160] + 288);
    }

    else
    {
      v3 = 0;
    }

    (*(*v2 + 584))(v2, v3 & 1);
  }

  v5 = 0x676C6F6265636E72;
  v6 = 0;
  (*(*a1 + 248))(a1, &v5);
  v5 = 0x676C6F6263737462;
  v6 = 0;
  (*(*a1 + 248))(a1, &v5);
  v5 = 0x676C6F62636C6F6BLL;
  v6 = 0;
  return (*(*a1 + 248))(a1, &v5);
}

BOOL sub_5B9B4(uint64_t a1, uint64_t a2)
{
  v4 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = BYTE3(a2);
    v8[1] = BYTE2(a2);
    v8[2] = BYTE1(a2);
    v8[3] = a2;
    v8[4] = 0;
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: Remove BTAudioDevice %s", buf, 0xCu);
  }

  if (a2 <= 1952539499)
  {
    if (a2 == 1818583905)
    {
      *(a1 + 9128) = 0;
      goto LABEL_15;
    }

    if (a2 == 1952538980)
    {
      *(a1 + 9104) = 0;
      v5 = a1;
      v6 = 1952538980;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a2)
    {
      case 1952539500:
        *(a1 + 9088) = 0;
        break;
      case 1953260897:
        *(a1 + 9120) = 0;
        break;
      case 1953719151:
        *(a1 + 9096) = 0;
        v5 = a1;
        v6 = 1953719151;
LABEL_11:
        sub_5BC0C(v5, v6, 0);
        break;
    }
  }

LABEL_15:
  if (*(a1 + 9288) == a2 && (*(a1 + 9136) = 0, *(a1 + 9288) = 1953853033, *(a1 + 9296) = 1919183219, sub_42134()))
  {
    if (*(a1 + 9120))
    {
      sub_5AB14(a1, 1953260897);
    }

    if (*(a1 + 9096))
    {
      sub_5AB14(a1, 1953719151);
    }

    if (*(a1 + 9088))
    {
      sub_5AB14(a1, 1952539500);
    }

    if (*(a1 + 9128))
    {
      sub_5AB14(a1, 1818583905);
    }
  }

  else
  {
    strcpy(buf, "pavabolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*a1 + 248))(a1, buf);
  }

  return *(a1 + 9136) != 0;
}

uint64_t sub_5BC0C(uint64_t a1, int a2, unsigned int a3)
{
  v6 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 9080);
    v10[0] = HIBYTE(a2);
    v10[1] = BYTE2(a2);
    v10[2] = BYTE1(a2);
    v10[3] = a2;
    v10[4] = 0;
    v8 = "Disconnection";
    if (a3)
    {
      v8 = "Creation";
    }

    *buf = 138543874;
    v12 = v7;
    v13 = 2082;
    v14 = v10;
    v15 = 2082;
    v16 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ ]  %{public}s, Profile Transport operation completed operaton type = %{public}s", buf, 0x20u);
  }

  if (sub_69474(a1))
  {
    sub_69718(a1);
  }

  sub_707B4(34, a3, 0, 0, 0);
  pthread_mutex_lock((a1 + 9344));
  pthread_cond_signal((a1 + 9408));
  return pthread_mutex_unlock((a1 + 9344));
}

uint64_t sub_5BD5C(void *a1, double *a2, __n128 a3)
{
  v5 = a1[1137];
  if (v5 && ((*(*v5 + 824))(v22), a3.n128_f64[0] = v22[0], v6 = *a2, v22[0] == *a2))
  {
    v7 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1[1137] + 824))(v22);
      *buf = 134218240;
      v24 = v6;
      v25 = 2048;
      v26 = v22[0];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "UpdateCurrentBTAudioDeviceFromSampleRate HFP  %f = %f", buf, 0x16u);
    }

    v8 = (*(*a1 + 1352))(a1);
    sub_5A118(a1, 1953719151, v8, 0);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[1136];
  if (v10)
  {
    (*(*v10 + 824))(v22);
    a3.n128_f64[0] = v22[0];
    v11 = *a2;
    if (v22[0] == *a2)
    {
      v12 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1[1136] + 824))(v22);
        *buf = 134218240;
        v24 = v11;
        v25 = 2048;
        v26 = v22[0];
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "UpdateCurrentBTAudioDeviceFromSampleRate A2DP  %f = %f", buf, 0x16u);
      }

      v13 = (*(*a1 + 1352))(a1);
      sub_5A118(a1, 1952539500, v13, 0);
      v9 = 1;
    }
  }

  v14 = a1[1140];
  if (v14)
  {
    (*(*v14 + 824))(v22, a3);
    a3.n128_f64[0] = v22[0];
    v15 = *a2;
    if (v22[0] == *a2)
    {
      v16 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1[1140] + 824))(v22);
        *buf = 134218240;
        v24 = v15;
        v25 = 2048;
        v26 = v22[0];
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "UpdateCurrentBTAudioDeviceFromSampleRate LEA  %f = %f", buf, 0x16u);
      }

      v17 = (*(*a1 + 1352))(a1);
      sub_5A118(a1, 1953260897, v17, 0);
      v9 = 1;
    }
  }

  v18 = a1[1141];
  if (v18)
  {
    (*(*v18 + 824))(v22, a3);
    v19 = *a2;
    if (v22[0] == *a2)
    {
      v20 = qword_D8590;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1[1141] + 824))(v22);
        *buf = 134218240;
        v24 = v19;
        v25 = 2048;
        v26 = v22[0];
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "UpdateCurrentBTAudioDeviceFromSampleRate LE Connected Audio  %f = %f", buf, 0x16u);
      }

      v9 = 1;
      sub_5A118(a1, 1818583905, 1, 0);
    }
  }

  return v9;
}

void sub_5C250(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 <= 1952539499)
  {
    if (a2 == 1818583905)
    {
      (*(**(a1 + 9128) + 1184))(*(a1 + 9128));
      *(a1 + 9128) = 0;
      sub_2C420(*(a1 + 9280), 0x20000);
      v4 = a1;
      v5 = 1818583905;
    }

    else
    {
      if (a2 != 1952538980)
      {
        goto LABEL_25;
      }

      (*(**(a1 + 9104) + 1184))(*(a1 + 9104));
      *(a1 + 9104) = 0;
      v4 = a1;
      v5 = 1952538980;
    }

    goto LABEL_24;
  }

  if (a2 != 1952539500)
  {
    if (a2 == 1953260897)
    {
      (*(**(a1 + 9120) + 1184))(*(a1 + 9120));
      *(a1 + 9120) = 0;
      sub_2C420(*(a1 + 9280), 0x10000);
      v4 = a1;
      v5 = 1953260897;
    }

    else
    {
      if (a2 != 1953719151)
      {
        goto LABEL_25;
      }

      (*(**(a1 + 9096) + 1184))(*(a1 + 9096));
      *(a1 + 9096) = 0;
      sub_2C420(*(a1 + 9280), 1);
      v4 = a1;
      v5 = 1953719151;
    }

LABEL_24:
    sub_5B9B4(v4, v5);
    goto LABEL_25;
  }

  if (_os_feature_enabled_impl())
  {
    v6 = *(qword_D8DF0 + 464);
    if (v6)
    {
      if ([v6 currentRoutedDeviceIsUnified])
      {
        v7 = [NSString alloc];
        (*(*a1 + 864))(__p, a1);
        if (v18[9] >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = *__p;
        }

        v9 = [v7 initWithUTF8String:v8];
        if ((v18[9] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v10 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [*(qword_D8DF0 + 464) currentBTDeviceUID];
          *__p = 138412546;
          *&__p[4] = v9;
          v17 = 2112;
          *v18 = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: Disconnecting %@, unified address is %@", __p, 0x16u);
        }

        if ([v9 isEqualToString:{objc_msgSend(*(qword_D8DF0 + 464), "currentBTDeviceUID")}])
        {
          sub_5C6B4(a1, 0);
        }
      }
    }
  }

  (*(**(a1 + 9088) + 1184))(*(a1 + 9088));
  *(a1 + 9088) = 0;
  sub_2C420(*(a1 + 9280), 16);
  sub_5B9B4(a1, 1952539500);
LABEL_25:
  v12 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = HIBYTE(v2);
    v15[1] = BYTE2(v2);
    v15[2] = BYTE1(v2);
    v15[3] = v2;
    v15[4] = 0;
    v13 = *(a1 + 9096) || *(a1 + 9088) || *(a1 + 9120) || *(a1 + 9128) != 0;
    v14 = *(*(a1 + 9280) + 196);
    *__p = 136315650;
    *&__p[4] = v15;
    v17 = 1024;
    *v18 = v13;
    *&v18[4] = 1024;
    *&v18[6] = v14;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice, InvalidateBTAudioDevice %s Empty=%d Connected Bitmap = %x", __p, 0x18u);
  }
}

void sub_5C690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_5C6B4(void *result, const __CFString *a2)
{
  v2 = result[1142];
  if (v2)
  {
    v3 = result;
    v4 = result[1136];
    if (v2 == v4)
    {
      v6 = qword_D8590;
      v7 = os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT);
      if (a2)
      {
        if (v7)
        {
          LODWORD(__p[0]) = 138412290;
          *(__p + 4) = a2;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "setUSBcUnified, ForceRoute Reconfigure due to USB-C updating to UID %@", __p, 0xCu);
          v4 = v3[1136];
        }

        sub_68F50(v4, a2);
        v8 = v3[1136];
        *(v8 + 9280) = 1;
        *(v8 + 9284) = [*(qword_D8DF0 + 464) usbLatency];
        v9 = v3[1136];
        *(v9 + 9288) = [*(qword_D8DF0 + 464) safetyOffset];
        [*(qword_D8DF0 + 464) setCurrentRoutedDeviceIsUnified:1];
        v10 = [NSString alloc];
        (*(*v3 + 864))(__p, v3);
        if (v21 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        v12 = [v10 initWithUTF8String:v11];
        v13 = v12;
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        sub_680C0(v12, v13, 0);
        *(v3[1160] + 242) = 1;
        strcpy(__p, "tlabbolg");
        BYTE1(__p[1]) = 0;
        WORD1(__p[1]) = 0;
        (*(*v3 + 248))(v3, __p);
        result = [*(qword_D8DF0 + 464) usbMetric];
        if (result)
        {
          return [*(qword_D8DF0 + 464) setUsbRoutedTs:mach_absolute_time()];
        }
      }

      else
      {
        if (v7)
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "setUSBcUnified, ForceRoute Reconfigure due to USB-C being gone", __p, 2u);
          v4 = v3[1136];
        }

        sub_68F50(v4, 0);
        v14 = v3[1136];
        *(v14 + 9280) = 0;
        *(v14 + 9284) = 0;
        [*(qword_D8DF0 + 464) setCurrentRoutedDeviceIsUnified:0];
        *(v3[1160] + 242) = 0;
        strcpy(__p, "tlabbolg");
        BYTE1(__p[1]) = 0;
        WORD1(__p[1]) = 0;
        (*(*v3 + 248))(v3, __p);
        result = [*(qword_D8DF0 + 464) usbMetric];
        if (result)
        {
          v15 = v3[52];
          if (v15)
          {
            v16 = *(v15 + 9280);
            v17 = mach_absolute_time();
            v18 = sub_352E8(v16, v17 - [*(qword_D8DF0 + 464) usbRoutedTs], 0);
            v19 = [*(qword_D8DF0 + 464) usbMetric];
            [v19 setDurationRoutedUnifiedAudio:{(v18 + objc_msgSend(v19, "durationRoutedUnifiedAudio"))}];
            result = [*(qword_D8DF0 + 464) setUsbRoutedTs:0];
          }
        }

        if ((*(v3[1160] + 344) & 1) == 0)
        {
          *(v3 + 9508) = 0;
        }
      }
    }
  }

  return result;
}

void sub_5CA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5CA34(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 9192));
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  LODWORD(v4) = 0;
  for (i = 0; i != v3; ++i)
  {
    v4 = v4 + *(CFArrayGetValueAtIndex(*(a1 + 9192), i) + 192);
  }

  return v4;
}

__CFArray *sub_5CAA4(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 2, &kCFTypeArrayCallBacks);
  Count = CFArrayGetCount(*(a1 + 9192));
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9192), i);
      if (ValueAtIndex && ValueAtIndex[192] == 1)
      {
        valuePtr = sub_57E8(ValueAtIndex);
        v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(Mutable, v7);
        CFRelease(v7);
      }
    }
  }

  return Mutable;
}

void sub_5CB74(void *a1, const void **a2)
{
  v4 = a1[1137];
  if (v4)
  {
    (*(*v4 + 1184))(v4);
    v11[0] = (*(*a1[1137] + 16))(a1[1137]);
    sub_5CED0(a2, v11);
    a1[1137] = 0;
    sub_5B9B4(a1, 1953719151);
  }

  v5 = a1[1136];
  if (v5)
  {
    (*(*v5 + 1184))(v5);
    v11[0] = (*(*a1[1136] + 16))(a1[1136]);
    sub_5CED0(a2, v11);
    a1[1136] = 0;
    sub_5B9B4(a1, 1952539500);
  }

  v6 = a1[1140];
  if (v6)
  {
    (*(*v6 + 1184))(v6);
    v11[0] = (*(*a1[1140] + 16))(a1[1140]);
    sub_5CED0(a2, v11);
    a1[1140] = 0;
    sub_5B9B4(a1, 1953260897);
  }

  v7 = a1[1141];
  if (v7)
  {
    (*(*v7 + 1184))(v7);
    v11[0] = (*(*a1[1141] + 16))(a1[1141]);
    sub_5CED0(a2, v11);
    a1[1141] = 0;
    sub_5B9B4(a1, 1818583905);
  }

  v8 = a1[1138];
  if (v8)
  {
    (*(*v8 + 1184))(v8);
    v11[0] = (*(*a1[1138] + 16))(a1[1138]);
    sub_5CED0(a2, v11);
    a1[1138] = 0;
    sub_5B9B4(a1, 1952538980);
  }

  v9 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[1137] || a1[1136] || a1[1140] || a1[1141] != 0;
    v11[0] = 67109120;
    v11[1] = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: InvalidateAllBTAudioDevice Empty=%d ", v11, 8u);
  }
}

void sub_5CED0(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_5829C();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_582B4(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_5CFB0(uint64_t a1, uint64_t a2)
{
  v44[0] = 0;
  v44[1] = 0;
  sub_70AF4(v44, a1 + 600);
  if (_os_feature_enabled_impl() && (v4 = *(a1 + 9200)) != 0 && (v5 = CFArrayGetCount(v4), v5 >= 1))
  {
    while (1)
    {
      v6 = *(a1 + 9200);
      if (!v6)
      {
        break;
      }

      v7 = v5--;
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v5);
      v9 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v10 = *a2;
        v11 = *(a2 + 8);
        v12 = (*(*ValueAtIndex + 16))(ValueAtIndex);
        if (v10 != v11)
        {
          while (*v10 != v12)
          {
            if (++v10 == v11)
            {
              v10 = v11;
              break;
            }
          }
        }

        if (v10 != *(a2 + 8))
        {
          v13 = qword_D8590;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 9080);
            v15 = sub_5448(v9);
            CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
            *buf = 138543618;
            v46 = v14;
            v47 = 2082;
            v48 = CStringPtr;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleting Internal BTAudioDevice %{public}s", buf, 0x16u);
          }

          CFArrayRemoveValueAtIndex(*(a1 + 9200), v5);
          if (sub_57E8(v9) == 1952538980)
          {
            sub_70BD4(v44);
            v17 = qword_D8DF0;
            v18 = (*(*a1 + 16))(a1);
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_5D530;
            v43[3] = &unk_AD3E8;
            v43[4] = v9;
            sub_507D8(v17, v18, v43);
            sub_70B24(v44);
          }
        }
      }

      if (v7 <= 1)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v19 = *(a1 + 9192);
    if (v19)
    {
      Count = CFArrayGetCount(v19);
      if (Count < 1)
      {
LABEL_37:
        sub_70BD4(v44);
      }

      else
      {
        while (1)
        {
          v21 = *(a1 + 9192);
          if (!v21)
          {
            break;
          }

          v22 = Count--;
          v23 = CFArrayGetValueAtIndex(v21, Count);
          v24 = v23;
          if (v23)
          {
            v25 = *a2;
            v26 = *(a2 + 8);
            v27 = (*(*v23 + 16))(v23);
            if (v25 != v26)
            {
              while (*v25 != v27)
              {
                if (++v25 == v26)
                {
                  v25 = v26;
                  break;
                }
              }
            }

            if (v25 != *(a2 + 8))
            {
              if ((*(*v24 + 296))(v24) && sub_57E8(v24) == 1952539500)
              {
                v28 = qword_D8DF0;
                v29 = *(qword_D8DF0 + 576);
                v30 = *(qword_D8DF0 + 568);
                v31 = qword_D8590;
                v32 = os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR);
                if (v29 == v30)
                {
                  if (v32)
                  {
                    sub_7F58C(&v41, v42, v31);
                  }
                }

                else
                {
                  if (v32)
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "Wireless Splitter device is an aggregate removing", buf, 2u);
                    v28 = qword_D8DF0;
                  }

                  sub_501C0(v28, v24);
                }
              }

              v33 = qword_D8590;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
              {
                v34 = *(a1 + 9080);
                v35 = sub_5448(v24);
                v36 = CFStringGetCStringPtr(v35, 0x8000100u);
                *buf = 138543618;
                v46 = v34;
                v47 = 2082;
                v48 = v36;
                _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleting BTAudioDevice %{public}s", buf, 0x16u);
              }

              CFArrayRemoveValueAtIndex(*(a1 + 9192), Count);
              sub_70BD4(v44);
              v37 = qword_D8DF0;
              v38 = (*(*a1 + 16))(a1);
              v40[0] = _NSConcreteStackBlock;
              v40[1] = 3221225472;
              v40[2] = sub_5D5A8;
              v40[3] = &unk_AD3E8;
              v40[4] = v24;
              sub_507D8(v37, v38, v40);
              sub_70B24(v44);
            }
          }

          if (v22 <= 1)
          {
            goto LABEL_37;
          }
        }
      }
    }
  }

  return sub_70C40(v44);
}

void sub_5D4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5D530(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_70AF4(v4, qword_D8DF0 + 200);
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_70C40(v4);
}

uint64_t sub_5D5A8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_70AF4(v4, qword_D8DF0 + 200);
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_70C40(v4);
}

uint64_t sub_5D634(_BYTE **a1, int a2, uint64_t a3)
{
  sub_35C34(a1[1160], a2);
  v6 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "disabled";
    if (a2)
    {
      v7 = "enabled";
    }

    v11[0] = 136315138;
    *&v11[1] = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Wireless Splitter From BT is %s", v11, 0xCu);
  }

  v8 = qword_D8DF0;
  if (a2)
  {
    v9 = (*(*a3 + 16))(a3);
    return sub_4F654(v8, v9);
  }

  else
  {
    sub_502F8(qword_D8DF0);
    strcpy(v11, "gaswbolg");
    BYTE1(v11[2]) = 0;
    HIWORD(v11[2]) = 0;
    return (*(*a1 + 31))(a1, v11);
  }
}

void sub_5D790(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_70AF4(v11, a1 + 600);
  *(a1 + 368) = 1953853033;
  v2 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 200);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice::Initialize %@", buf, 0xCu);
  }

  if (*(a1 + 200))
  {
    if (sub_2C3F0(*(a1 + 9280), 0x10000) || sub_2C3F0(*(a1 + 9280), 0x20000))
    {
      *(a1 + 9080) = CFStringCreateCopy(kCFAllocatorDefault, *(a1 + 200));
      if (sub_42134())
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, *(a1 + 200), @"-tlea");
        v5 = ArrayBySeparatingStrings;
        if (ArrayBySeparatingStrings)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
          *(a1 + 9080) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@:output", ValueAtIndex);
          CFRelease(v5);
        }
      }
    }

    else
    {
      v7 = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, *(a1 + 200), @"-");
      if (CFArrayGetCount(v7))
      {
        v8 = CFArrayGetValueAtIndex(v7, 0);
        v9 = sub_42134();
        v10 = @"btaudio";
        if (v9)
        {
          v10 = @"output";
        }

        *(a1 + 9080) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-%@", v8, v10);
      }

      CFRelease(v7);
    }
  }

  sub_5DCBC(a1);
  if ((*(*a1 + 1072))(a1))
  {
    operator new();
  }

  if ((*(*a1 + 1080))(a1))
  {
    operator new();
  }

  if (*(*(a1 + 9280) + 168) == 1)
  {
    operator new();
  }

  if (*(a1 + 424) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_5DC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

void sub_5DCBC(uint64_t a1)
{
  if (sub_42134())
  {
    (*(*a1 + 1064))(a1, 0);
    v2 = *(*a1 + 1056);
    v3 = a1;
    v4 = 1;
LABEL_6:

    v2(v3, v4);
    return;
  }

  if (sub_2C3F0(*(a1 + 9280), 0x10000) || sub_2C3F0(*(a1 + 9280), 0x20000))
  {
    v5 = (*(**(a1 + 9136) + 1080))(*(a1 + 9136));
    (*(*a1 + 1064))(a1, v5);
    v6 = (*(**(a1 + 9136) + 1072))();
    v2 = *(*a1 + 1056);
    v4 = v6;
    v3 = a1;
    goto LABEL_6;
  }

  (*(*a1 + 1064))(a1, 1);
  (*(*a1 + 1056))(a1, 1);
  v7 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = 1;
    v9 = 1024;
    v10 = 1;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Initial Streams input = %d | Output = %d ", v8, 0xEu);
  }
}

void sub_5DF94(uint64_t a1)
{
  pthread_mutex_lock((a1 + 9344));
  pthread_cond_signal((a1 + 9408));
  pthread_mutex_unlock((a1 + 9344));
  pthread_mutex_lock((a1 + 9344));
  pthread_mutex_unlock((a1 + 9344));
  pthread_mutex_destroy((a1 + 9344));
  pthread_cond_destroy((a1 + 9408));
  v2 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Trasnport Synchronization completed", v3, 2u);
  }
}

uint64_t sub_5E044(uint64_t a1)
{
  pthread_mutex_init((a1 + 9512), 0);
  result = pthread_cond_init((a1 + 9576), 0);
  *(a1 + 9632) = 100000;
  *(a1 + 9624) = 0;
  return result;
}

void sub_5E094(uint64_t a1)
{
  pthread_mutex_lock((a1 + 9512));
  pthread_cond_signal((a1 + 9576));
  pthread_mutex_unlock((a1 + 9512));
  pthread_mutex_lock((a1 + 9512));
  pthread_mutex_unlock((a1 + 9512));
  pthread_mutex_destroy((a1 + 9512));
  pthread_cond_destroy((a1 + 9576));
  v2 = qword_D8590;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Trasnport Synchronization completed", v3, 2u);
  }
}

uint64_t sub_5E144(void *a1)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_70AF4(v12, (a1 + 75));
  sub_5DF94(a1);
  v2 = a1[1135];
  if (v2)
  {
    CFRelease(v2);
    a1[1135] = 0;
  }

  v3 = a1[1144];
  if (v3)
  {
    (*(*v3 + 8))(v3);
    a1[1144] = 0;
  }

  v4 = a1[1143];
  if (v4)
  {
    (*(*v4 + 8))(v4);
    a1[1143] = 0;
  }

  v5 = a1[1145];
  if (v5)
  {
    (*(*v5 + 8))(v5);
    a1[1145] = 0;
  }

  v6 = a1[1146];
  if (v6)
  {
    (*(*v6 + 8))(v6);
    a1[1146] = 0;
  }

  v7 = a1[1147];
  if (v7)
  {
    (*(*v7 + 8))(v7);
    a1[1147] = 0;
  }

  if (*(a1[1160] + 293) == 1)
  {
    v8 = qword_D8DF0;
    (*(*a1 + 864))(__p, a1);
    sub_4D7D4(v8, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_70C40(v12);
}

void sub_5E2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_70C40(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_5E324(void *a1, int *a2)
{
  v3 = *a2;
  if (*a2 > 1819107690)
  {
    if (v3 > 1919512166)
    {
      if (v3 <= 1937007733)
      {
        if (v3 > 1936092275)
        {
          if (v3 == 1936092276)
          {
            goto LABEL_56;
          }

          v5 = 1936879204;
        }

        else
        {
          if (v3 == 1919512167)
          {
            goto LABEL_56;
          }

          v5 = 1935763060;
        }

LABEL_42:
        if (v3 != v5)
        {
          goto LABEL_69;
        }

        goto LABEL_43;
      }

      if (v3 > 1953653101)
      {
        if (v3 != 1969841184)
        {
          v4 = 1953653102;
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (v3 == 1937007734)
      {
        goto LABEL_56;
      }

      v6 = 1937009955;
    }

    else
    {
      if (v3 <= 1836414052)
      {
        if (v3 <= 1819569762)
        {
          if (v3 != 1819107691)
          {
            v4 = 1819173229;
            goto LABEL_55;
          }

          goto LABEL_56;
        }

        if (v3 != 1819569763)
        {
          v4 = 1836411236;
          goto LABEL_55;
        }

LABEL_43:
        v8 = a2[1];
        if (v8 == 1869968496)
        {
          return a2[2] == 0;
        }

        v9 = 1768845428;
        goto LABEL_57;
      }

      if (v3 <= 1853059699)
      {
        if (v3 == 1836414053)
        {
          result = sub_42134();
          if (!result)
          {
            return result;
          }

          v8 = a2[1];
          v9 = 1869968496;
          goto LABEL_57;
        }

        v4 = 1853059619;
        goto LABEL_55;
      }

      if (v3 == 1853059700)
      {
        goto LABEL_56;
      }

      v6 = 1870098020;
    }

    if (v3 == v6)
    {
      return (*(*a1 + 1312))(a1, a2[1], a2[2]);
    }

    goto LABEL_69;
  }

  if (v3 > 1668641651)
  {
    if (v3 <= 1685278577)
    {
      if (v3 > 1684434035)
      {
        if (v3 != 1684434036)
        {
          if (v3 == 1685278561)
          {
            return _os_feature_enabled_impl();
          }

          goto LABEL_69;
        }

        goto LABEL_56;
      }

      if (v3 == 1668641652)
      {
        goto LABEL_56;
      }

      v5 = 1684236338;
      goto LABEL_42;
    }

    if (v3 > 1751737453)
    {
      if (v3 != 1751737454)
      {
        v4 = 1818850926;
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (v3 == 1685278578)
    {
      return *(a1[1160] + 258);
    }

    v4 = 1735354734;
LABEL_55:
    if (v3 == v4)
    {
      goto LABEL_56;
    }

LABEL_69:

    return sub_5E738(a1, a2);
  }

  if (v3 > 1668049763)
  {
    if (v3 > 1668510817)
    {
      if (v3 != 1668510818)
      {
        v4 = 1668575852;
        goto LABEL_55;
      }
    }

    else
    {
      if (v3 == 1668049764)
      {
        goto LABEL_56;
      }

      if (v3 != 1668050795)
      {
        goto LABEL_69;
      }
    }

    result = a1[1142];
    if (result)
    {
      v10 = *(*result + 24);

      return v10();
    }

    return result;
  }

  if (v3 <= 1667658617)
  {
    if (v3 == 1635087471)
    {
      return sub_42134();
    }

    v4 = 1650682995;
    goto LABEL_55;
  }

  if (v3 != 1667658618)
  {
    v4 = 1668047219;
    goto LABEL_55;
  }

LABEL_56:
  v8 = a2[1];
  v9 = 1735159650;
LABEL_57:
  if (v8 == v9)
  {
    return a2[2] == 0;
  }

  return 0;
}

uint64_t sub_5E738(void *a1, int *a2)
{
  v2 = a1[1165];
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = a1 + 1165;
  do
  {
    v6 = *(v2 + 32);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v2;
    }

    v2 = *(v2 + 8 * v8);
  }

  while (v2);
  if (v5 == a1 + 1165 || v4 < *(v5 + 8))
  {
    return 0;
  }

  result = 0;
  if (v4 > 1768252516)
  {
    if (v4 <= 1936745837)
    {
      if (v4 <= 1886546290)
      {
        if (v4 > 1818326126)
        {
          if (v4 > 1819503986)
          {
            if (v4 == 1819503987)
            {
              return 1;
            }

            if (v4 == 1819505773)
            {
              v21 = a1[1160];
              if (!*(v21 + 160))
              {
                return sub_2D788(v21);
              }

              return 1;
            }

            v12 = 1852992613;
          }

          else
          {
            if (v4 == 1818326127)
            {
              return sub_42134();
            }

            if (v4 == 1819046768)
            {
              return *(a1[1160] + 294);
            }

            v12 = 1819241569;
          }

          goto LABEL_142;
        }

        if ((v4 - 1768256354) <= 0x11 && ((1 << (v4 - 98)) & 0x24001) != 0 || v4 == 1768252517)
        {
          return *(a1[1160] + 156);
        }

        v11 = 1768382832;
        goto LABEL_137;
      }

      if (v4 > 1936221549)
      {
        if (v4 > 1936744821)
        {
          if (v4 == 1936744822)
          {
            goto LABEL_156;
          }

          if (v4 == 1936745318)
          {
            return 1;
          }

          v10 = 25459;
          goto LABEL_121;
        }

        if (v4 != 1936221550 && v4 != 1936225136)
        {
          v13 = 24944;
          goto LABEL_130;
        }
      }

      else
      {
        if (v4 <= 1935896429)
        {
          if (v4 == 1886546291)
          {
            return *(a1[1160] + 156);
          }

          if (v4 == 1886807139)
          {
            return 1;
          }

          v11 = 1886807154;
          goto LABEL_137;
        }

        if (v4 == 1935896430 || v4 == 1935959404)
        {
          goto LABEL_143;
        }

        if (v4 != 1936220524)
        {
          return result;
        }
      }

      v14 = *(a1[1160] + 244) == 0;
      return !v14;
    }

    if (v4 <= 1937208175)
    {
      if (v4 <= 1936748130)
      {
        if (v4 <= 1936746610)
        {
          if (v4 != 1936745838 && v4 != 1936746089)
          {
            v10 = 26223;
LABEL_121:
            v16 = v10 | 0x73700000;
            goto LABEL_155;
          }

          return *(a1[1160] + 230);
        }

        if (v4 == 1936746611 || v4 == 1936747876)
        {
          return 1;
        }

        v13 = 28005;
LABEL_130:
        v11 = v13 | 0x73700000;
        goto LABEL_137;
      }

      if (v4 <= 1936749429)
      {
        if (v4 != 1936748131 && v4 != 1936749417)
        {
          v10 = 29555;
          goto LABEL_121;
        }

        return *(a1[1160] + 230);
      }

      if (v4 == 1936749430)
      {
        goto LABEL_156;
      }

      if (v4 == 1937138786)
      {
        return *(a1[1160] + 230);
      }

      if (v4 != 1937204590)
      {
        return result;
      }

      return *(a1[1160] + 290);
    }

    if (v4 <= 2004050278)
    {
      if (v4 > 1986947427)
      {
        if (v4 == 1986947428)
        {
          return 1;
        }

        if (v4 == 1987080038)
        {
          goto LABEL_143;
        }

        v11 = 2003394928;
        goto LABEL_137;
      }

      if (v4 != 1937208176)
      {
        if (v4 == 1970496630)
        {
          return (*(a1[1160] + 144) & 1) == 0;
        }

        v11 = 1986225518;
        goto LABEL_137;
      }

      return *(a1[1160] + 290);
    }

    if (v4 > 2004051821)
    {
      if (v4 != 2004051822)
      {
        if (v4 == 2004053366)
        {
LABEL_173:
          if (!a1[1142])
          {
            return 0;
          }

          result = (*(*a1 + 296))(a1);
          if (result)
          {
            v19 = qword_D8DF0;
            v20 = (*(*a1[1142] + 16))(a1[1142]);
            return sub_500F8(v19, v20);
          }

          return result;
        }

        if (v4 != 2004054901)
        {
          return result;
        }
      }
    }

    else if (v4 != 2004050279)
    {
      if (v4 != 2004050294)
      {
        if (v4 == 2004051812)
        {
          return *(a1[1160] + 345);
        }

        return result;
      }

      goto LABEL_173;
    }

    return *(a1[1160] + 343);
  }

  if (v4 > 1668051826)
  {
    if (v4 <= 1701408626)
    {
      if (v4 <= 1685025636)
      {
        if (v4 <= 1684434284)
        {
          if (v4 != 1668051827 && v4 != 1668506479)
          {
            if (v4 != 1684234612)
            {
              return result;
            }

LABEL_171:
            if (a2[1] == 1735159650)
            {
              return a2[2] == 0;
            }

            return 0;
          }

          return 1;
        }

        if (v4 != 1684434285)
        {
          if (v4 != 1684826732)
          {
            if (v4 == 1685021040)
            {
              return *(a1[1160] + 200);
            }

            return result;
          }

          goto LABEL_143;
        }

        return *(a1[1160] + 156);
      }

      if (v4 <= 1685283694)
      {
        if (v4 != 1685025637 && v4 != 1685026403)
        {
          if (v4 != 1685088612)
          {
            return result;
          }

          v14 = *(a1[1160] + 208) == 0;
          return !v14;
        }

        return a1[1140] == 0;
      }

      if (v4 == 1685283695)
      {
        return 1;
      }

      if (v4 != 1685484390)
      {
        v12 = 1701015154;
LABEL_142:
        if (v4 != v12)
        {
          return result;
        }
      }

LABEL_143:
      result = a1[1142];
      if (result)
      {
        v17 = *(*result + 24);

        return v17();
      }

      return result;
    }

    if (v4 <= 1752457570)
    {
      if (v4 > 1735221621)
      {
        if (v4 == 1735221622 || v4 == 1751213427)
        {
          return 1;
        }

        v11 = 1752327777;
      }

      else
      {
        if (v4 == 1701408627)
        {
          return 1;
        }

        if (v4 == 1702391923)
        {
          return a1[1140] == 0;
        }

        v11 = 1718772584;
      }

      goto LABEL_137;
    }

    if (v4 <= 1752462195)
    {
      if (v4 != 1752457571 && v4 != 1752457590)
      {
        if (v4 != 1752462195)
        {
          return result;
        }

        return a1[1140] == 0;
      }

LABEL_156:
      if (sub_42134())
      {
        v18 = *(a1[1160] + 230);
      }

      else
      {
        v18 = 0;
      }

      return v18 & 1;
    }

    if (v4 == 1752462196)
    {
      goto LABEL_156;
    }

    if (v4 == 1767989616)
    {
      return 1;
    }

    v16 = 1767994227;
LABEL_155:
    if (v4 != v16)
    {
      return result;
    }

    goto LABEL_156;
  }

  if (v4 <= 1650549619)
  {
    if (v4 <= 1634038356)
    {
      if (v4 <= 1633972064)
      {
        if (v4 != 1633773925)
        {
          if (v4 != 1633907555)
          {
            return result;
          }

          result = sub_42134();
          if (!result)
          {
            return result;
          }

          if (*(a1[1160] + 230) != 1)
          {
            return 0;
          }
        }

        return _os_feature_enabled_impl();
      }

      if (v4 == 1633972065)
      {
        goto LABEL_143;
      }

      if (v4 != 1633973868)
      {
        v11 = 1634038341;
        goto LABEL_137;
      }
    }

    else
    {
      if (v4 <= 1635148655)
      {
        if (v4 == 1634038357 || v4 == 1635017332)
        {
          return 1;
        }

        v11 = 1635148144;
        goto LABEL_137;
      }

      if (v4 == 1635148656)
      {
        return 1;
      }

      if (v4 != 1635149170)
      {
        if (v4 != 1650549606)
        {
          return result;
        }

        return *(a1[1160] + 293);
      }
    }

    if (*(a1[1160] + 228) != 1)
    {
      return 0;
    }

    return _os_feature_enabled_impl();
  }

  if (v4 > 1651466594)
  {
    if (v4 > 1651795821)
    {
      if (v4 == 1651795822)
      {
        return 1;
      }

      if (v4 == 1651798132)
      {
        goto LABEL_143;
      }

      v11 = 1651798886;
      goto LABEL_137;
    }

    if (v4 != 1651466595)
    {
      if (v4 == 1651466852)
      {
        return 1;
      }

      v12 = 1651728749;
      goto LABEL_142;
    }

    return *(a1[1160] + 293);
  }

  if (v4 > 1650750319)
  {
    if (v4 == 1650750320)
    {
      goto LABEL_143;
    }

    if (v4 == 1650750576)
    {
      goto LABEL_171;
    }

    v11 = 1651271025;
LABEL_137:
    if (v4 != v11)
    {
      return result;
    }

    return 1;
  }

  switch(v4)
  {
    case 1650549620:
      goto LABEL_143;
    case 1650551140:
      return 1;
    case 1650551924:
      return *(a1[1160] + 241);
  }

  return result;
}

uint64_t sub_5F158(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v4 = *a2;
  if (*a2 > 1819107690)
  {
    if (v4 > 1919512166)
    {
      if (v4 > 1937007733)
      {
        if (v4 > 1953653101)
        {
          if (v4 == 1969841184)
          {
            goto LABEL_55;
          }

          v5 = 1953653102;
        }

        else
        {
          if (v4 == 1937007734)
          {
            goto LABEL_55;
          }

          v5 = 1937009955;
        }
      }

      else
      {
        if (v4 <= 1936092275)
        {
          if (v4 != 1919512167)
          {
            v5 = 1935763060;
            goto LABEL_54;
          }

LABEL_55:
          *a3 = 0;
          return 0;
        }

        if (v4 == 1936092276)
        {
          goto LABEL_55;
        }

        v5 = 1936879204;
      }

LABEL_54:
      if (v4 == v5)
      {
        goto LABEL_55;
      }

LABEL_58:
      sub_5F41C(a1, a2, a3);
      return 0;
    }

    if (v4 > 1836411235)
    {
      if (v4 > 1853059699)
      {
        if (v4 == 1853059700)
        {
          *a3 = 1;
          return 0;
        }

        v5 = 1870098020;
      }

      else
      {
        if (v4 == 1836411236)
        {
          goto LABEL_55;
        }

        v5 = 1853059619;
      }

      goto LABEL_54;
    }

    v6 = v4 == 1819107691 || v4 == 1819173229;
    v7 = 1819569763;
LABEL_35:
    if (v6 || v4 == v7)
    {
      goto LABEL_55;
    }

    goto LABEL_58;
  }

  if (v4 > 1668575851)
  {
    if (v4 > 1684434035)
    {
      if (v4 > 1751737453)
      {
        if (v4 == 1751737454)
        {
          goto LABEL_55;
        }

        v5 = 1818850926;
      }

      else
      {
        if (v4 == 1684434036)
        {
          goto LABEL_55;
        }

        v5 = 1735354734;
      }

      goto LABEL_54;
    }

    v6 = v4 == 1668575852 || v4 == 1668641652;
    v7 = 1684236338;
    goto LABEL_35;
  }

  if (v4 <= 1668047218)
  {
    v6 = v4 == 1635087471 || v4 == 1650682995;
    v7 = 1667658618;
    goto LABEL_35;
  }

  if (v4 <= 1668050794)
  {
    if (v4 == 1668047219)
    {
      goto LABEL_55;
    }

    v5 = 1668049764;
    goto LABEL_54;
  }

  if (v4 != 1668050795 && v4 != 1668510818)
  {
    goto LABEL_58;
  }

  v9 = *(a1 + 9136);
  if (!v9)
  {
    return 0;
  }

  v10 = *(*v9 + 32);

  return v10();
}

uint64_t sub_5F41C(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a2 > 1701015153)
  {
    if (v3 <= 1852992612)
    {
      v4 = v3 == 1701015154 || v3 == 1818326127;
      v5 = 1819241569;
    }

    else if (v3 > 1935959403)
    {
      v4 = v3 == 1987080038;
      v5 = 1935959404;
    }

    else
    {
      v4 = v3 == 1852992613;
      v5 = 1935896430;
    }
  }

  else if (v3 <= 1651728748)
  {
    v4 = v3 == 1633972065 || v3 == 1650549620;
    v5 = 1650750320;
  }

  else if (v3 > 1684826731)
  {
    v4 = v3 == 1684826732;
    v5 = 1685484390;
  }

  else
  {
    v4 = v3 == 1651728749;
    v5 = 1651798132;
  }

  if (!v4 && v3 != v5)
  {
    v10 = *(a1 + 9320);
    if (v10)
    {
      v11 = a1 + 9320;
      do
      {
        v12 = *(v10 + 32);
        v13 = v12 >= v3;
        v14 = v12 < v3;
        if (v13)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * v14);
      }

      while (v10);
      if (v11 != a1 + 9320 && v3 >= *(v11 + 32))
      {
        *a3 = *(sub_58CC4(a1 + 9312, a2)[5] + 16);
      }
    }

    return 0;
  }

  v7 = *(a1 + 9136);
  if (!v7)
  {
    return 0;
  }

  v8 = *(*v7 + 32);

  return v8();
}

uint64_t sub_5F600(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *a2;
  if (*a2 > 1819107690)
  {
    if (v6 > 1935763059)
    {
      if (v6 <= 1937007733)
      {
        if (v6 == 1935763060 || v6 == 1936092276)
        {
          goto LABEL_50;
        }

        if (v6 != 1936879204)
        {
          goto LABEL_66;
        }

        v12 = *(a1 + 9136);
        if (!v12)
        {
          return 0;
        }

        v13 = a2[1] == 1768845428;
        (*(*v12 + 824))(v20);
        v9 = 20 * v21 + 12;
      }

      else
      {
        if (v6 > 1953653101)
        {
          if (v6 == 1953653102)
          {
            goto LABEL_50;
          }

          v8 = 1969841184;
          goto LABEL_53;
        }

        if (v6 == 1937007734)
        {
          goto LABEL_50;
        }

        if (v6 != 1937009955)
        {
          goto LABEL_66;
        }

        v9 = 4 * (*(*a1 + 1544))(a1, a2[1]);
      }

LABEL_55:
      *a5 = v9;
      return 0;
    }

    if (v6 <= 1836411235)
    {
      if (v6 != 1819107691 && v6 != 1819173229)
      {
        v7 = 1819569763;
        goto LABEL_49;
      }

      goto LABEL_54;
    }

    if (v6 <= 1870098019)
    {
      if (v6 == 1836411236)
      {
        goto LABEL_54;
      }

      v8 = 1853059700;
      goto LABEL_53;
    }

    if (v6 != 1870098020)
    {
      v7 = 1919512167;
      goto LABEL_49;
    }

    v17 = a2[1];
    switch(v17)
    {
      case 0x676C6F62u:
        v18 = 9272;
        goto LABEL_74;
      case 0x6F757470u:
        v18 = 9248;
        goto LABEL_74;
      case 0x696E7074u:
        v18 = 9224;
LABEL_74:
        v9 = 4 * CFArrayGetCount(*(a1 + v18));
        goto LABEL_55;
    }

LABEL_69:
    v9 = 0;
    goto LABEL_55;
  }

  if (v6 > 1668575851)
  {
    if (v6 > 1684434035)
    {
      if (v6 <= 1685278577)
      {
        if (v6 == 1684434036)
        {
          goto LABEL_50;
        }

        v8 = 1685278561;
LABEL_53:
        if (v6 != v8)
        {
          goto LABEL_66;
        }

        goto LABEL_54;
      }

      if (v6 != 1685278578)
      {
        v7 = 1751737454;
        goto LABEL_49;
      }

LABEL_54:
      v9 = 8;
      goto LABEL_55;
    }

    if (v6 != 1668575852)
    {
      if (v6 == 1668641652)
      {
        v9 = 12 * *(a1 + 9328);
        goto LABEL_55;
      }

      v8 = 1684236338;
      goto LABEL_53;
    }

    v19 = a2[1];
    switch(v19)
    {
      case 0x676C6F62u:
        v18 = 9264;
        goto LABEL_74;
      case 0x6F757470u:
        v18 = 9240;
        goto LABEL_74;
      case 0x696E7074u:
        v18 = 9216;
        goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (v6 <= 1668047218)
  {
    if (v6 == 1635087471 || v6 == 1650682995)
    {
      goto LABEL_50;
    }

    v7 = 1667658618;
LABEL_49:
    if (v6 == v7)
    {
      goto LABEL_50;
    }

    goto LABEL_66;
  }

  if (v6 <= 1668050794)
  {
    if (v6 != 1668047219)
    {
      v7 = 1668049764;
      goto LABEL_49;
    }

LABEL_50:
    v9 = 4;
    goto LABEL_55;
  }

  if (v6 != 1668050795 && v6 != 1668510818)
  {
LABEL_66:

    return sub_5FB28(a1, a2, a3, a4, a5);
  }

  v14 = *(a1 + 9136);
  if (!v14)
  {
    return 0;
  }

  v15 = *(*v14 + 40);

  return v15();
}

CFIndex sub_5FA50(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 1735159650:
      v2 = 9264;
      return CFArrayGetCount(*(a1 + v2));
    case 1869968496:
      v2 = 9240;
      return CFArrayGetCount(*(a1 + v2));
    case 1768845428:
      v2 = 9216;
      return CFArrayGetCount(*(a1 + v2));
  }

  return 0;
}

CFIndex sub_5FABC(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 1735159650:
      v2 = 9272;
      return CFArrayGetCount(*(a1 + v2));
    case 1869968496:
      v2 = 9248;
      return CFArrayGetCount(*(a1 + v2));
    case 1768845428:
      v2 = 9224;
      return CFArrayGetCount(*(a1 + v2));
  }

  return 0;
}

uint64_t sub_5FB28(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  result = 2003332927;
  v7 = *(a1 + 9320);
  if (v7)
  {
    v9 = *a2;
    v10 = a1 + 9320;
    do
    {
      v11 = *(v7 + 32);
      v12 = v11 >= v9;
      v13 = v11 < v9;
      if (v12)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * v13);
    }

    while (v7);
    if (v10 != a1 + 9320 && v9 >= *(v10 + 32))
    {
      v14 = sub_58CC4(a1 + 9312, a2);
      result = 0;
      *a5 = *(v14[5] + 12);
    }
  }

  return result;
}

uint64_t sub_5FBD8(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4, void **a5, unsigned int a6, int *a7, uint64_t a8)
{
  v12 = *a2;
  if (*a2 > 1819173228)
  {
    if (v12 > 1935763059)
    {
      if (v12 <= 1937007733)
      {
        if (v12 == 1935763060)
        {
          if (a6 <= 3)
          {
            v13 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7F704();
            }

            return v13;
          }

          v24 = a1[1142];
          if (v24)
          {
            v32 = a1[1136];
            if (v32 && (!*(v32 + 192) ? (v33 = 0) : (v33 = a1[1136]), v24 == v33 && *(v32 + 9280) == 1))
            {
              v34 = qword_D8590;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
              {
                v35 = *(v32 + 9288);
                *buf = 67109120;
                *&buf[4] = v35;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Overwriting safety offset due to USB to %u", buf, 8u);
                v32 = a1[1136];
              }

              LODWORD(v24) = *(v32 + 9288);
            }

            else
            {
              LODWORD(v24) = 0;
            }
          }

          v13 = 0;
          goto LABEL_158;
        }

        if (v12 != 1936092276)
        {
          if (v12 == 1936879204)
          {
            v15 = a1[1142];
            if (v15)
            {
              v16 = a1[1142];
              v17 = a2[1] == 1768845428;
              v42 = 0;
              *buf = 0u;
              v41 = 0u;
              (*(*v15 + 824))(buf);
              v18 = HIDWORD(v41);
              v19 = 20 * HIDWORD(v41) + 12;
              if (v19 <= a6)
              {
                *a8 = 0;
                *(a8 + 8) = v18;
                if (v18)
                {
                  v36 = 0;
                  v37 = a8 + 12;
                  do
                  {
                    if (v18 == 1)
                    {
                      *(v37 + 20 * v36) = 42;
                      v38 = v36 + 1;
                    }

                    else
                    {
                      v38 = v36 + 1;
                      *(v37 + 20 * v36) = v36 + 1;
                    }

                    v39 = (a8 + 16 + 20 * v36);
                    *v39 = 0;
                    v39[1] = 0;
                    v36 = v38;
                  }

                  while (v38 != v18);
                }

                v13 = 0;
                *a7 = v19;
              }

              else
              {
                v13 = 561211770;
                if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
                {
                  sub_7F5CC();
                }
              }
            }

            else
            {
              v13 = 1937010544;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_7F600();
              }
            }

            return v13;
          }

          goto LABEL_107;
        }

        goto LABEL_73;
      }

      if (v12 <= 1953653101)
      {
        if (v12 == 1937007734)
        {
          if (a6 <= 3)
          {
            v13 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7F8D8();
            }

            return v13;
          }

          v13 = 0;
          *a8 = (*(*qword_D8DF0 + 16))(qword_D8DF0);
          goto LABEL_159;
        }

        if (v12 != 1937009955)
        {
          goto LABEL_107;
        }

        (*(*a1 + 1552))(a1, a2[1], a8, a6 >> 2);
        goto LABEL_103;
      }

      if (v12 == 1953653102)
      {
        if (a6 <= 3)
        {
          v13 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7F7D4();
          }

          return v13;
        }

        v13 = 0;
        LODWORD(v24) = 1651275109;
        goto LABEL_158;
      }

      if (v12 != 1969841184)
      {
        goto LABEL_107;
      }

      if (a6 <= 3)
      {
        v13 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_7F808();
        }

        return v13;
      }

      v28 = a1[1135];
      v29 = v28;
    }

    else
    {
      if (v12 > 1853059618)
      {
        if (v12 <= 1870098019)
        {
          if (v12 != 1853059619)
          {
            if (v12 != 1853059700)
            {
              goto LABEL_107;
            }

            if (a6 <= 7)
            {
              v13 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_7F7A0();
              }

              return v13;
            }

            *a8 = 0;
            v25 = a1[1142];
            if (v25)
            {
              *a8 = (*(*v25 + 808))(v25);
            }

            v13 = 0;
            goto LABEL_135;
          }

          v13 = 0;
          v23 = 16 * (*(*a1 + 1272))(a1, a8, a6 >> 4);
          goto LABEL_160;
        }

        if (v12 != 1870098020)
        {
          if (v12 != 1919512167)
          {
            goto LABEL_107;
          }

          if (a6 <= 3)
          {
            v13 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7F76C();
            }

            return v13;
          }

          *a8 = 0;
          v26 = a1[1142];
          if (v26)
          {
            v27 = (*(*v26 + 832))(v26);
LABEL_130:
            *a8 = v27;
          }

LABEL_131:
          v13 = 0;
LABEL_159:
          v23 = 4;
          goto LABEL_160;
        }

        sub_6092C(a1, a2[1], a8, a6 >> 2);
LABEL_103:
        v13 = 0;
        v23 = a6 & 0xFFFFFFFC;
        goto LABEL_160;
      }

      if (v12 != 1819173229)
      {
        if (v12 == 1819569763)
        {
          if (a6 <= 3)
          {
            v13 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7F6D0();
            }

            return v13;
          }

          *a8 = 0;
          v31 = a1[1142];
          if (!v31)
          {
            goto LABEL_131;
          }

          if (a2[1] == 1768845428 && v31 == a1[1138])
          {
            v27 = sub_28198(a1[1138]);
          }

          else
          {
            v27 = (*(*v31 + 848))(v31);
          }

          goto LABEL_130;
        }

        if (v12 != 1836411236)
        {
          goto LABEL_107;
        }

        v14 = [+[NSString stringWithFormat:](NSString copy:@"%x %x"];
        goto LABEL_38;
      }

      if (a6 <= 3)
      {
        v13 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_7F8A4();
        }

        return v13;
      }

      if (!sub_2C430(a1[1160]))
      {
        return 0;
      }

      v29 = sub_2C430(a1[1160]);
      v28 = v29;
    }

    CFRetain(v29);
    v13 = 0;
    *a8 = v28;
    goto LABEL_135;
  }

  if (v12 > 1668575851)
  {
    if (v12 > 1684434035)
    {
      if (v12 > 1751737453)
      {
        if (v12 == 1751737454)
        {
          if (a6 <= 3)
          {
            v13 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7F668();
            }

            return v13;
          }

          v13 = 0;
          LODWORD(v24) = *(a1[1160] + 342);
          goto LABEL_158;
        }

        if (v12 != 1819107691)
        {
          goto LABEL_107;
        }

        if (a6 <= 7)
        {
          v13 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7F83C();
          }

          return v13;
        }

        v13 = 0;
        *a8 = @"Apple Inc.";
        goto LABEL_135;
      }

      if (v12 != 1684434036)
      {
        if (v12 != 1685278578)
        {
          goto LABEL_107;
        }

        v14 = sub_2CF7C(a1[1160]);
LABEL_38:
        v13 = 0;
        *a8 = v14;
LABEL_135:
        v23 = 8;
        goto LABEL_160;
      }

LABEL_73:
      if (a6 <= 3)
      {
        v13 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_7F69C();
        }

        return v13;
      }

      v13 = 0;
      LODWORD(v24) = 1;
      goto LABEL_158;
    }

    if (v12 != 1668575852)
    {
      if (v12 != 1668641652)
      {
        if (v12 != 1684236338)
        {
          goto LABEL_107;
        }

        if (a6 <= 7)
        {
          v13 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7F634();
          }

          return v13;
        }

        v13 = 0;
        *a8 = 0x200000001;
        goto LABEL_135;
      }

      *buf = a6 / 0xC;
      (*(*a1 + 1608))(a1, a8, buf);
      v13 = 0;
      v23 = 12 * *buf;
LABEL_160:
      *a7 = v23;
      return v13;
    }

    sub_60840(a1, a2[1], a8, a6 >> 2);
    goto LABEL_103;
  }

  if (v12 <= 1668047218)
  {
    switch(v12)
    {
      case 1635087471:
        v13 = 0;
        LODWORD(v24) = *(a1[1160] + 341);
        break;
      case 1650682995:
        if (a6 <= 3)
        {
          v13 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7F940();
          }

          return v13;
        }

        v13 = 0;
        LODWORD(v24) = 1634689642;
        break;
      case 1667658618:
        if (a6 <= 3)
        {
          v13 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7F738();
          }

          return v13;
        }

        *a8 = *a5;
        v30 = a1[1142];
        if (v30)
        {
          v27 = (*(*v30 + 840))(v30);
          goto LABEL_130;
        }

        goto LABEL_131;
      default:
        goto LABEL_107;
    }

LABEL_158:
    *a8 = v24;
    goto LABEL_159;
  }

  if (v12 <= 1668050794)
  {
    if (v12 != 1668047219)
    {
      if (v12 == 1668049764)
      {
        if (a6 <= 3)
        {
          v13 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7F870();
          }

          return v13;
        }

        v13 = 0;
        *a8 = 0;
        goto LABEL_159;
      }

      goto LABEL_107;
    }

    if (a6 <= 3)
    {
      v13 = 561211770;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_7F90C();
      }

      return v13;
    }

    v13 = 0;
    LODWORD(v24) = 1633969526;
    goto LABEL_158;
  }

  if (v12 != 1668050795 && v12 != 1668510818)
  {
LABEL_107:

    return sub_60A18(a1, a2, a4, a5, a6, a7, a8);
  }

  v20 = a1[1142];
  if (!v20)
  {
    return 0;
  }

  v21 = *(*v20 + 48);

  return v21();
}

CFIndex sub_60840(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  Count = a4;
  switch(a2)
  {
    case 1735159650:
      v6 = 9264;
      goto LABEL_7;
    case 1869968496:
      v6 = 9240;
      goto LABEL_7;
    case 1768845428:
      v6 = 9216;
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

CFIndex sub_6092C(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  Count = a4;
  switch(a2)
  {
    case 1735159650:
      v6 = 9272;
      goto LABEL_7;
    case 1869968496:
      v6 = 9248;
      goto LABEL_7;
    case 1768845428:
      v6 = 9224;
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

uint64_t sub_60A18(uint64_t a1, int *a2, uint64_t a3, void **a4, unsigned int a5, int *a6, uint64_t a7)
{
  v10 = 0;
  v11 = *a2;
  if (*a2 <= 1768256367)
  {
    if (v11 > 1668506478)
    {
      if (v11 > 1701408626)
      {
        if (v11 <= 1752327776)
        {
          if (v11 > 1718772583)
          {
            switch(v11)
            {
              case 1718772584:
                if (a5 <= 3)
                {
                  v10 = 561211770;
                  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
                  {
                    sub_7F9DC();
                  }

                  return v10;
                }

                v10 = 0;
                v21 = 1;
                break;
              case 1735221622:
                if (a5 <= 3)
                {
                  v10 = 561211770;
                  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
                  {
                    sub_7FAAC();
                  }

                  return v10;
                }

                v10 = 0;
                v21 = *(*(a1 + 9280) + 221);
                break;
              case 1751213427:
                if (a5 <= 3)
                {
                  v10 = 561211770;
                  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
                  {
                    sub_7FA44();
                  }

                  return v10;
                }

                v10 = 0;
                v21 = *(*(a1 + 9280) + 348);
                break;
              default:
                return v10;
            }

            goto LABEL_431;
          }

          if (v11 != 1701408627)
          {
            if (v11 != 1702391923)
            {
              return v10;
            }

            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_7FEBC();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(*(a1 + 9280) + 288);
            goto LABEL_431;
          }

          v10 = 561211770;
          if (a5 != 4)
          {
            return v10;
          }

          v24 = *(a1 + 9096);
          if (!v24)
          {
            return v10;
          }

          v10 = 0;
          v25 = 9017;
          goto LABEL_333;
        }

        if (v11 <= 1767994226)
        {
          switch(v11)
          {
            case 1752327777:
              if (a5 <= 3)
              {
                v10 = 561211770;
                if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
                {
                  sub_7FE54();
                }

                return v10;
              }

              v37 = *(a1 + 9280);
              if (*(v37 + 238) == 1)
              {
                if (*(v37 + 239))
                {
                  v38 = 2;
                }

                else
                {
                  v38 = 1;
                }
              }

              else
              {
                v38 = 0;
              }

              v10 = 0;
              if ((*(*a1 + 296))(a1))
              {
                v21 = 0;
              }

              else
              {
                v21 = v38;
              }

              break;
            case 1752462195:
              if (a5 <= 3)
              {
                v10 = 561211770;
                if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
                {
                  sub_7FB14();
                }

                return v10;
              }

              v10 = 0;
              v21 = *(*(a1 + 9280) + 129);
              break;
            case 1767989616:
              if (a5 <= 3)
              {
                v10 = 561211770;
                if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
                {
                  sub_80194();
                }

                return v10;
              }

              v10 = 0;
              v21 = *(*(a1 + 9280) + 144);
              break;
            default:
              return v10;
          }

          goto LABEL_431;
        }

        if (v11 == 1767994227)
        {
          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_8005C();
            }

            return v10;
          }

          v10 = 0;
          v21 = *(*(a1 + 9280) + 256);
          goto LABEL_431;
        }

        if (v11 == 1768252517)
        {
          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_804D4();
            }

            return v10;
          }

          v10 = 0;
          v21 = *(*(a1 + 9280) + 157);
          goto LABEL_431;
        }

        if (v11 != 1768256354)
        {
          return v10;
        }

        if (a5 <= 7)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80368();
          }

          return v10;
        }

        v10 = 0;
        *a7 = *(*(a1 + 9280) + 172);
LABEL_427:
        v28 = 8;
        goto LABEL_433;
      }

      if (v11 <= 1685025636)
      {
        if (v11 > 1684434284)
        {
          if (v11 == 1684434285)
          {
            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_802CC();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(*(a1 + 9280) + 184);
            goto LABEL_431;
          }

          if (v11 != 1684826732)
          {
            if (v11 != 1685021040)
            {
              return v10;
            }

            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_8046C();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(*(a1 + 9280) + 200);
            goto LABEL_431;
          }

          goto LABEL_192;
        }

        if (v11 == 1668506479)
        {
          goto LABEL_192;
        }

        if (v11 != 1684234612)
        {
          return v10;
        }

        LODWORD(v20) = (*(*a1 + 856))(a1);
        goto LABEL_351;
      }

      if (v11 > 1685283694)
      {
        if (v11 == 1685283695 || v11 == 1685484390)
        {
          goto LABEL_192;
        }

        v15 = 1701015154;
        goto LABEL_191;
      }

      if (v11 == 1685025637)
      {
        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_801C8();
          }

          return v10;
        }

        v10 = 0;
        v33 = *(*(a1 + 9280) + 296);
LABEL_379:
        *a7 = v33;
        goto LABEL_432;
      }

      if (v11 != 1685026403)
      {
        if (v11 != 1685088612)
        {
          return v10;
        }

        if (a5 <= 7)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_801FC();
          }

          return v10;
        }

        v29 = [objc_msgSend(*(*(a1 + 9280) + 208) UUIDString];
        goto LABEL_396;
      }

      if (a5 <= 7)
      {
        v10 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80160();
        }

        return v10;
      }

      v12 = *(*(a1 + 9280) + 304);
      if (v12)
      {
        goto LABEL_398;
      }

      goto LABEL_399;
    }

    if (v11 > 1650551923)
    {
      if (v11 > 1651466851)
      {
        if (v11 > 1651798131)
        {
          if (v11 == 1651798132)
          {
            goto LABEL_192;
          }

          if (v11 != 1651798886)
          {
            if (v11 != 1668051827)
            {
              return v10;
            }

            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_7FE88();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(*(a1 + 9280) + 289);
            goto LABEL_431;
          }

          if (a5 <= 7)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7FAE0();
            }

            return v10;
          }

          v29 = sub_35BC4(*(a1 + 9280));
          goto LABEL_396;
        }

        if (v11 == 1651466852)
        {
          v30 = *(a1 + 9504);
          *a7 = v30 == 2;
          v31 = qword_D8590;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 9473) ^ 1;
            *buf = 67109376;
            v47 = v32;
            v48 = 1024;
            v49 = v30;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Get kBluetoothAudioDevicePropertyOutOfBandBiDirectionalAudio: Transport Update Completed %d, Out of Band Audio State %d", buf, 0xEu);
          }

          goto LABEL_368;
        }

        if (v11 == 1651728749)
        {
          goto LABEL_192;
        }

        if (v11 != 1651795822)
        {
          return v10;
        }

        v12 = *(*(a1 + 9280) + 608);
        if (v12)
        {
LABEL_398:
          CFRetain(v12);
        }

LABEL_399:
        v10 = 0;
        *a7 = v12;
        goto LABEL_427;
      }

      if (v11 > 1650750575)
      {
        switch(v11)
        {
          case 1650750576:
            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_80508();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(a1 + 368);
            break;
          case 1651271025:
            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_7F9A8();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(*(a1 + 9280) + 218);
            break;
          case 1651466595:
            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_7FBB0();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(*(a1 + 9280) + 145);
            break;
          default:
            return v10;
        }

        goto LABEL_431;
      }

      if (v11 != 1650551924)
      {
        v15 = 1650750320;
        goto LABEL_191;
      }

      if (a5 <= 3)
      {
        v10 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_7FDB8();
        }

        return v10;
      }

      v35 = *(a1 + 9280);
      if (*(v35 + 241) == 1)
      {
        v21 = *(v35 + 242);
        goto LABEL_362;
      }

LABEL_361:
      v21 = 0;
      goto LABEL_362;
    }

    if (v11 > 1635017331)
    {
      if (v11 > 1635148655)
      {
        if (v11 == 1635148656)
        {
          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_80264();
            }

            return v10;
          }

          if (sub_69EE0(a1, a7))
          {
            v10 = 0;
          }

          else
          {
            v10 = 2003329396;
          }

          goto LABEL_432;
        }

        if (v11 == 1650549620)
        {
          goto LABEL_192;
        }

        if (v11 != 1650551140)
        {
          return v10;
        }

        if (a5 > 3)
        {
          v10 = 0;
          v21 = *(*(a1 + 9280) + 48);
          goto LABEL_431;
        }

        v10 = 561211770;
        if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          return v10;
        }

        goto LABEL_105;
      }

      if (v11 == 1635017332)
      {
        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7FB48();
          }

          return v10;
        }

        v10 = 0;
        v21 = *(*(a1 + 9280) + 360);
        goto LABEL_431;
      }

      if (v11 != 1635148144)
      {
        return v10;
      }

      if (a5 <= 7)
      {
        v10 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80298();
        }

        return v10;
      }

      v29 = sub_5CAA4(a1);
LABEL_396:
      v10 = 0;
      *a7 = v29;
      goto LABEL_427;
    }

    if (v11 <= 1633973867)
    {
      if (v11 != 1633773925)
      {
        v15 = 1633972065;
        goto LABEL_191;
      }

      if (!_os_feature_enabled_impl() || *(a1 + 9288) != 1952538980)
      {
        goto LABEL_361;
      }

      v21 = 1;
    }

    else
    {
      if (v11 == 1633973868)
      {
        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7FFC0();
          }

          return v10;
        }

        v10 = 0;
        v21 = *(*(a1 + 9280) + 229) == 1;
        goto LABEL_431;
      }

      if (v11 != 1634038341)
      {
        if (v11 != 1634038357)
        {
          return v10;
        }

        v13 = *(a1 + 9136);
        if (v13)
        {
          v14 = *(a1 + 9088);
          if (v13 == v14)
          {
            v12 = sub_3DED8(v14);
            if (!v12)
            {
              goto LABEL_399;
            }

            goto LABEL_398;
          }
        }

        v12 = 0;
        goto LABEL_399;
      }

      v22 = *(a1 + 9136);
      if (!v22)
      {
        goto LABEL_361;
      }

      v23 = *(a1 + 9088);
      if (v22 != v23)
      {
        goto LABEL_361;
      }

      v21 = *(v23 + 9280);
    }

LABEL_362:
    v10 = 0;
    goto LABEL_431;
  }

  if (v11 > 1936746088)
  {
    if (v11 <= 1970496629)
    {
      if (v11 > 1936749416)
      {
        if (v11 <= 1937138785)
        {
          if (v11 != 1936749417)
          {
            if (v11 == 1936749427)
            {
              if (a5 <= 3)
              {
                v10 = 561211770;
                if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
                {
                  sub_7FFF4();
                }

                return v10;
              }

              v10 = 0;
              v21 = *(*(a1 + 9280) + 254);
            }

            else
            {
              if (v11 != 1936749430)
              {
                return v10;
              }

              if (a5 <= 3)
              {
                v10 = 561211770;
                if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
                {
                  sub_80090();
                }

                return v10;
              }

              v10 = 0;
              v21 = *(*(a1 + 9280) + 255);
            }

            goto LABEL_431;
          }

          v10 = 0;
          v26 = *(a1 + 9280);
          v27 = *(v26 + 368);
          LODWORD(v26) = *(v26 + 376);
          *a7 = v27;
          *(a7 + 8) = v26;
          v28 = 12;
LABEL_433:
          *a6 = v28;
          return v10;
        }

        if (v11 != 1937138786)
        {
          if (v11 == 1937204590)
          {
            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_7FCB4();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(*(a1 + 9280) + 291);
          }

          else
          {
            if (v11 != 1937208176)
            {
              return v10;
            }

            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_7FCE8();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(*(a1 + 9280) + 290);
          }

          goto LABEL_431;
        }

        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80230();
          }

          return v10;
        }

        v36 = *(a1 + 9136);
        if (v36)
        {
          *a7 = (*(*v36 + 968))(v36);
        }

        goto LABEL_368;
      }

      if (v11 > 1936747875)
      {
        if (v11 == 1936747876)
        {
          if (a5 != 4 && a5 != 8)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7FE20();
            }

            return v10;
          }

          *buf = 1;
          v45 = 1;
          if (*(a1 + 9288) == 1953719151)
          {
            *buf = 0;
          }

          else if (a4)
          {
            if (*a4)
            {
              sub_33A3C(*(a1 + 9280), *a4, buf, &v45);
            }
          }

          else
          {
            v41 = [BTAudioAVNotificationMonitor sharedInstance:a3];
            if (v41)
            {
              v42 = [(NSString *)[(BTAudioAVNotificationMonitor *)v41 nowPlayingBundleID] copy];
              if (v42)
              {
                sub_33A3C(*(a1 + 9280), v42, buf, &v45);
              }
            }

            else
            {
              v42 = 0;
            }
          }

          v10 = 0;
          v21 = *buf;
          goto LABEL_431;
        }

        if (v11 == 1936747877)
        {
          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7FA78();
            }

            return v10;
          }

          v10 = 0;
          v21 = *(*(a1 + 9280) + 352);
          goto LABEL_431;
        }

        if (v11 != 1936748131)
        {
          return v10;
        }

        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7FF58();
          }

          return v10;
        }

        LODWORD(v20) = sub_35B2C(*(a1 + 9280));
        goto LABEL_351;
      }

      if (v11 == 1936746089)
      {
        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7FF24();
          }

          return v10;
        }

        LODWORD(v20) = sub_35B70(*(a1 + 9280));
LABEL_351:
        v10 = 0;
        *a7 = v20;
LABEL_432:
        v28 = 4;
        goto LABEL_433;
      }

      if (v11 != 1936746611)
      {
        return v10;
      }

      if (a5 <= 3)
      {
        v10 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_7FDEC();
        }

        return v10;
      }

      v34 = sub_42134();
      v10 = 0;
      v24 = *(a1 + 9280);
      v25 = 230;
      if (v34)
      {
        v25 = 236;
      }

LABEL_333:
      v21 = *(v24 + v25);
      goto LABEL_431;
    }

    if (v11 > 2004050278)
    {
      if (v11 > 2004051821)
      {
        if (v11 == 2004051822)
        {
          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7FC18();
            }

            return v10;
          }

          v10 = 0;
          v21 = *(*(a1 + 9280) + 346);
          goto LABEL_431;
        }

        if (v11 != 2004053366)
        {
          if (v11 != 2004054901)
          {
            return v10;
          }

          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7FC80();
            }

            return v10;
          }

          v10 = 0;
          v21 = *(*(a1 + 9280) + 343);
          goto LABEL_431;
        }

LABEL_205:
        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7FBE4();
          }

          return v10;
        }

        v33 = sub_4FFA8(qword_D8DF0);
        v10 = 0;
        goto LABEL_379;
      }

      if (v11 != 2004050279)
      {
        if (v11 != 2004050294)
        {
          if (v11 != 2004051812)
          {
            return v10;
          }

          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7FC4C();
            }

            return v10;
          }

          v10 = 0;
          v21 = *(*(a1 + 9280) + 345);
          goto LABEL_431;
        }

        goto LABEL_205;
      }

      v29 = sub_4FF10(qword_D8DF0);
      goto LABEL_396;
    }

    if (v11 > 1986947427)
    {
      if (v11 != 1986947428)
      {
        if (v11 != 1987080038)
        {
          if (v11 != 2003394928)
          {
            return v10;
          }

          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_80438();
            }

            return v10;
          }

          v10 = 0;
          v21 = *(*(a1 + 9280) + 148);
          goto LABEL_431;
        }

        goto LABEL_192;
      }

      if (a5 > 3)
      {
        v10 = 0;
        v21 = *(*(a1 + 9280) + 56);
        goto LABEL_431;
      }

      v10 = 561211770;
      if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        return v10;
      }

LABEL_105:
      sub_804A0();
      return v10;
    }

    if (v11 == 1970496630)
    {
      v10 = 0;
      v21 = *(*(a1 + 9280) + 340);
      goto LABEL_431;
    }

    if (v11 != 1986225518)
    {
      return v10;
    }

    *a7 = 1;
    v16 = *(a1 + 9136);
    if (v16)
    {
      *a7 = (*(*v16 + 1504))(v16);
    }

LABEL_368:
    v10 = 0;
    goto LABEL_432;
  }

  if (v11 > 1886807153)
  {
    if (v11 > 1936225135)
    {
      if (v11 <= 1936745317)
      {
        switch(v11)
        {
          case 1936225136:
            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_7FD84();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(*(a1 + 9280) + 244) != 0;
            break;
          case 1936744816:
            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_8012C();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(*(a1 + 9280) + 230);
            break;
          case 1936744822:
            if (a5 <= 3)
            {
              v10 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_800C4();
              }

              return v10;
            }

            v10 = 0;
            v21 = *(*(a1 + 9280) + 252);
            break;
          default:
            return v10;
        }

        goto LABEL_431;
      }

      if (v11 != 1936745318)
      {
        if (v11 == 1936745331)
        {
          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_80028();
            }

            return v10;
          }

          v10 = 0;
          v21 = *(*(a1 + 9280) + 253);
        }

        else
        {
          if (v11 != 1936745838)
          {
            return v10;
          }

          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_800F8();
            }

            return v10;
          }

          v10 = 0;
          v21 = *(*(a1 + 9280) + 232);
        }

        goto LABEL_431;
      }

      if (a5 != 4 && a5 != 8)
      {
        v10 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_7FEF0();
        }

        return v10;
      }

      v45 = 1;
      *buf = 1;
      if (a4)
      {
        if (*a4)
        {
          sub_33A3C(*(a1 + 9280), *a4, buf, &v45);
        }
      }

      else
      {
        v39 = [BTAudioAVNotificationMonitor sharedInstance:a3];
        if (v39)
        {
          v40 = [(NSString *)[(BTAudioAVNotificationMonitor *)v39 nowPlayingBundleID] copy];
          if (v40)
          {
            sub_33A3C(*(a1 + 9280), v40, buf, &v45);
          }
        }

        else
        {
          v40 = 0;
        }
      }

      v43 = *buf;
      if (v45 == 1)
      {
        v44 = sub_42134() ^ 1;
      }

      else
      {
        v44 = 0;
      }

      v10 = 0;
      *(a7 + 4) = v44;
      *a7 = v43;
      goto LABEL_427;
    }

    if (v11 > 1935959403)
    {
      switch(v11)
      {
        case 1935959404:
          goto LABEL_192;
        case 1936220524:
          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7FD1C();
            }

            return v10;
          }

          LODWORD(v20) = sub_6A060(a1);
          break;
        case 1936221550:
          if (a5 <= 3)
          {
            v10 = 561211770;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
            {
              sub_7FD50();
            }

            return v10;
          }

          v20 = *(a1 + 9096);
          if (v20)
          {
            LODWORD(v20) = sub_42A88(v20);
          }

          break;
        default:
          return v10;
      }

      goto LABEL_351;
    }

    if (v11 == 1886807154)
    {
      if (a5 <= 3)
      {
        v10 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_7FA10();
        }

        return v10;
      }

      v10 = 0;
      v21 = *(*(a1 + 9280) + 249);
      goto LABEL_431;
    }

    v15 = 1935896430;
LABEL_191:
    if (v11 != v15)
    {
      return v10;
    }

    goto LABEL_192;
  }

  if (v11 <= 1819241568)
  {
    if (v11 <= 1768382831)
    {
      if (v11 == 1768256368)
      {
        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_8039C();
          }

          return v10;
        }

        v10 = 0;
        v21 = *(*(a1 + 9280) + 172);
      }

      else
      {
        if (v11 != 1768256371)
        {
          return v10;
        }

        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80334();
          }

          return v10;
        }

        v10 = 0;
        v21 = *(*(a1 + 9280) + 176);
      }

      goto LABEL_431;
    }

    if (v11 == 1768382832)
    {
      if (a5 <= 3)
      {
        v10 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_7FF8C();
        }

        return v10;
      }

      v10 = 0;
      v21 = *(*(a1 + 9280) + 600);
      goto LABEL_431;
    }

    if (v11 != 1818326127)
    {
      if (v11 != 1819046768)
      {
        return v10;
      }

      if (a5 <= 3)
      {
        v10 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_7FB7C();
        }

        return v10;
      }

      v10 = 0;
      v21 = *(*(a1 + 9280) + 294);
      goto LABEL_431;
    }
  }

  else if (v11 > 1852992612)
  {
    if (v11 != 1852992613)
    {
      if (v11 == 1886546291)
      {
        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80300();
          }

          return v10;
        }

        v10 = 0;
        v21 = *(*(a1 + 9280) + 180);
      }

      else
      {
        if (v11 != 1886807139)
        {
          return v10;
        }

        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_7F974();
          }

          return v10;
        }

        v10 = 0;
        v21 = *(*(a1 + 9280) + 250);
      }

      goto LABEL_431;
    }
  }

  else if (v11 != 1819241569)
  {
    if (v11 != 1819503987)
    {
      if (v11 == 1819505773)
      {
        if (a5 <= 3)
        {
          v10 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_803D0();
          }

          return v10;
        }

        v10 = 0;
        v21 = *(*(a1 + 9280) + 164);
        goto LABEL_431;
      }

      return v10;
    }

    if (a5 <= 3)
    {
      v10 = 561211770;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_80404();
      }

      return v10;
    }

    v10 = 0;
    v21 = *(*(a1 + 9280) + 160);
LABEL_431:
    *a7 = v21;
    goto LABEL_432;
  }

LABEL_192:
  v17 = *(a1 + 9136);
  if (!v17)
  {
    return 0;
  }

  v18 = *(*v17 + 48);

  return v18();
}

uint64_t sub_6261C(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    return 1852797029;
  }

  v3 = *(a1 + 8);
  v4 = *(qword_D8DF0 + 168);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_626BC;
  block[3] = &unk_AD3A8;
  v7 = a2;
  v8 = v3;
  block[4] = a1;
  block[5] = a3;
  dispatch_async(v4, block);
  return 0;
}

void sub_626BC(uint64_t a1)
{
  v2 = (a1 + 48);
  if (*(a1 + 48) && *(qword_D8DF0 + 144) && (v3 = *(a1 + 52), sub_4D4B0()))
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 52);
    v6 = *(a1 + 40);
    v7 = (*(*(qword_D8DF0 + 144) + 32))();
    v8 = qword_D8590;
    v9 = os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v11.i32[0] = *(a1 + 48);
      v12 = vrev64_s16(*&vmovl_u8(v11));
      v16 = vuzp1_s8(v12, v12).u32[0];
      v17 = 0;
      v13 = *(a1 + 52);
      v15[0] = HIBYTE(v7);
      v15[1] = BYTE2(v7);
      v15[2] = BYTE1(v7);
      v15[3] = v7;
      v15[4] = 0;
      *buf = 136446722;
      v19 = &v16;
      v20 = 1024;
      v21 = v13;
      v22 = 2080;
      v23 = v15;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice : Sent device config change for %{public}s on %d, result %s", buf, 0x1Cu);
    }

    if (v7)
    {
      sub_62848(v9, *v2, v10, v7);
    }
  }

  else
  {
    v14 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      sub_7656C(v2, a1, v14);
    }
  }
}

void sub_62848(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 && a2 != 1986094195)
  {
    v6 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = HIBYTE(a2);
      v8[1] = BYTE2(a2);
      v8[2] = BYTE1(a2);
      v8[3] = a2;
      v8[4] = 0;
      v7[0] = HIBYTE(a4);
      v7[1] = BYTE2(a4);
      v7[2] = BYTE1(a4);
      v7[3] = a4;
      v7[4] = 0;
      *buf = 136446466;
      v10 = v8;
      v11 = 2080;
      v12 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice : unhandled failure to send device config change for %{public}s, result %s", buf, 0x16u);
    }
  }
}

uint64_t sub_6295C(void *a1, int *a2, uint64_t a3, unsigned int *a4, uint64_t a5, unsigned int *a6, uint64_t a7)
{
  v7 = a7;
  v9 = a5;
  v12 = *a2;
  if (*a2 <= 1818326126)
  {
    if (v12 > 1651466851)
    {
      if (v12 <= 1685278560)
      {
        switch(v12)
        {
          case 1651466852:
            v16 = 561211770;
            if (a4 && a3 == 8 && a5 == 4)
            {
              sub_64930(a1, a4);
              return 0;
            }

            return v16;
          case 1651795567:
            return 0;
          case 1668051827:
            if (a5 > 3)
            {
              if (a1[1142])
              {
                v81 = *a6;
                *(a1[1160] + 289) = *a6 != 0;
                v82 = a1[1137];
                if (v82 && v82[192] == 1)
                {
                  (*(*v82 + 600))(v82, LODWORD(v81) != 0);
                }

                return 0;
              }

              v16 = 1937010544;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_806A8();
              }
            }

            else
            {
              v16 = 561211770;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_806DC();
              }
            }

            return v16;
        }

        goto LABEL_123;
      }

      if (v12 <= 1702391922)
      {
        if (v12 == 1685278561)
        {
          if (!_os_feature_enabled_impl())
          {
            return 0;
          }

          v16 = 561211770;
          if (v9 == 8 && a6)
          {
            v28 = *a6;
            CFRetain(*a6);
            sub_35D68(a1[1160], v28);
            return 0;
          }

          return v16;
        }

        if (v12 == 1701408627)
        {
          if (a5 == 4)
          {
            v13 = a1[1137];
            if (v13)
            {
              v14 = *a6;
              *(v13 + 9017) = *a6 != 0;
              v15 = qword_D8590;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = v14 != 0;
                _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Set kBluetoothAudioDevicePropertyEmptyOutputStream %d", buf, 8u);
                if (*(a1[1137] + 9017))
                {
                  return 0;
                }

                goto LABEL_222;
              }

              if (!v14)
              {
LABEL_222:
                (*(*a1 + 1496))(a1);
              }
            }

            return 0;
          }

          return 561211770;
        }

        goto LABEL_123;
      }

      if (v12 != 1702391923)
      {
        if (v12 == 1752462195)
        {
          if (a5 > 3)
          {
            v69 = *a6;
            v70 = a1[1160];
            v71 = *(v70 + 129);
            *(v70 + 129) = *a6 != 0;
            v72 = qword_D8590;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v69 != 0;
              _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "BTHAL got kBluetoothAudioDevicePropertyShareplayScreenSharing: %u", buf, 8u);
            }

            if ((v69 != 0) != v71)
            {
              sub_33CA4(a1[1160]);
              sub_29D3C(a1[1160], 0);
              v73 = a1[1138];
              if (v73)
              {
                if (*(v73 + 192))
                {
                  v74 = a1[1138];
                }

                else
                {
                  v74 = 0;
                }
              }

              else
              {
                v74 = 0;
              }

              v102 = (*(a1[1160] + 129) & 1) == 0 && a1[1162] != 1634562153;
              (*(*v74 + 616))(v74, v102);
            }

            return 0;
          }

          v16 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_805D8();
          }

          return v16;
        }

        goto LABEL_123;
      }

      if (a5 <= 3)
      {
        v16 = 561211770;
        if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          return v16;
        }

        goto LABEL_101;
      }

      if (a1[1142])
      {
        v53 = a1[1160];
        v54 = *(v53 + 288);
        v55 = *a6;
        *(v53 + 288) = *a6 != 0;
        v56 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          v57 = "NO";
          if (v54)
          {
            v58 = "YES";
          }

          else
          {
            v58 = "NO";
          }

          *buf = 67109634;
          *&buf[4] = v55 != 0;
          *&buf[8] = 2080;
          *&buf[10] = v58;
          if (v55)
          {
            v57 = "YES";
          }

          *&buf[18] = 2080;
          *&buf[20] = v57;
          _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "Expanse Session %d  %s -> %s", buf, 0x1Cu);
        }

        return 0;
      }

      v16 = 1937010544;
      if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        return v16;
      }

LABEL_208:
      sub_80710();
      return v16;
    }

    if (v12 > 1635149169)
    {
      if (v12 == 1635149170)
      {
        v33 = _os_feature_enabled_impl();
        v16 = 0;
        if (v9 == 24 && v33)
        {
          if (*(a1[1160] + 228) == 1)
          {
            v34 = a1[1136];
            if (v34)
            {
              if (v34[192] == 1)
              {
                v35 = *a6;
                v36 = *(a6 + 1);
                v37 = *(a6 + 8);
                (*(*v34 + 640))(v34, v36, v37, v35);
                sub_6469C(a1, v36, v37, v35);
              }
            }
          }

          return 0;
        }

        return v16;
      }

      if (v12 != 1650549620)
      {
        if (v12 == 1651466595)
        {
          v26 = qword_D8590;
          if (a5 > 3)
          {
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
            {
              v89 = *a6;
              *buf = 67109120;
              *&buf[4] = v89;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Ownership Set as %d", buf, 8u);
            }

            if (!*a6)
            {
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
              {
                sub_8087C();
              }

              return 0;
            }

            if (*(a1[1160] + 364) == 1)
            {
              v90 = qword_D8590;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v90, OS_LOG_TYPE_DEFAULT, "Tipi connection posting ownership", buf, 2u);
              }

              notify_post("com.apple.BluetoothServices.AudioRoutingOwnershipTaken");
              v91 = qword_D8DF0;
              (*(*a1 + 864))(&v113, a1);
              sub_4DA14(v91, &v113, 1, 0, 0);
              if ((v114 & 0x80000000) == 0)
              {
                return 0;
              }

              v92 = v113;
            }

            else
            {
              v100 = qword_D8DF0;
              (*(*a1 + 864))(__p, a1);
              sub_4E2D8(v100, __p);
              if ((v112 & 0x80000000) == 0)
              {
                return 0;
              }

              v92 = __p[0];
            }

            operator delete(v92);
            return 0;
          }

          v16 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_808B0();
          }

          return v16;
        }

        goto LABEL_123;
      }
    }

    else if (v12 != 1633972065)
    {
      if (v12 == 1635017332)
      {
        if (a5 > 3)
        {
          if (a1[1137])
          {
            sub_3036C(a1[1160], *a6);
            v95 = a1[1137];
            if (v95)
            {
              v96 = qword_D8590;
              if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
              {
                v97 = *(a1[1160] + 360);
                *buf = 67109120;
                *&buf[4] = v97;
                _os_log_impl(&dword_0, v96, OS_LOG_TYPE_DEFAULT, "HFP Setting allow sco for turn by turn %d", buf, 8u);
                v95 = a1[1137];
              }

              (*(*v95 + 1480))(v95, *(a1[1160] + 360) != 0);
            }

            return 0;
          }

          v16 = 1937010544;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80570();
          }
        }

        else
        {
          v16 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_805A4();
          }
        }

        return v16;
      }

      if (v12 == 1635148656)
      {
        if (a5 <= 3)
        {
          v16 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_807AC();
          }

          return v16;
        }

        v84 = *a6;
        v85 = *a4;
        if (*(a1[1160] + 222) == 1)
        {
          v86 = 1;
          if (v85 == 1919183219 || a1[1162] == 1919183219)
          {
            goto LABEL_248;
          }

          v87 = 1952539500;
          if (v84 == 1953719151)
          {
            v88 = 3;
LABEL_245:
            if (a1[1161] == v87)
            {
              v86 = v88;
            }

            else
            {
              v86 = 0;
            }

            goto LABEL_248;
          }

          if (v84 == 1952539500)
          {
            v88 = 2;
            v87 = 1953719151;
            goto LABEL_245;
          }
        }

        v86 = 0;
LABEL_248:
        if (sub_640A0(a1, v84, v85, v86))
        {
          return 0;
        }

        else
        {
          return 2003329396;
        }
      }

LABEL_123:
      v16 = 2003332927;
      v42 = qword_D8590;
      if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
      {
        return v16;
      }

      v43.i32[0] = a2[1];
      v44 = vrev64_s16(*&vmovl_u8(v43));
      v105 = vuzp1_s8(v44, v44).u32[0];
      v106 = 0;
      v104[0] = HIBYTE(v12);
      v104[1] = BYTE2(v12);
      v104[2] = BYTE1(v12);
      v104[3] = v12;
      v104[4] = 0;
      *buf = 136446466;
      *&buf[4] = &v105;
      *&buf[12] = 2082;
      *&buf[14] = v104;
      v23 = "Unknown SetProperty for scope: %{public}s / element: %{public}s";
      v24 = v42;
      v25 = 22;
      goto LABEL_204;
    }

    goto LABEL_66;
  }

  if (v12 <= 1936745837)
  {
    if (v12 > 1853059699)
    {
      if (v12 == 1853059700)
      {
        if (a5 == 8)
        {
          v38 = a1[1142];
          if (v38)
          {
            v39 = (*(*v38 + 808))(v38);
            v40 = *a6;
            v41 = qword_D8590;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = v39;
              *&buf[12] = 2048;
              *&buf[14] = v40;
              _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice: Setting sample rate %f -> %f ", buf, 0x16u);
            }

            if (v39 != v40)
            {
              (*(*a1 + 240))(a1, 1853059700, v40);
            }

            return 0;
          }

          v16 = 1937010544;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80918();
          }
        }

        else
        {
          v16 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_808E4();
          }
        }

        return v16;
      }

      if (v12 != 1935896430)
      {
        if (v12 == 1936745331)
        {
          if (a5 > 3)
          {
            v93 = a1[1160];
            if (*(v93 + 230) == 1)
            {
              sub_34D7C(v93, *a6 != 0, 1);
            }

            return 0;
          }

          v16 = 561211770;
          if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            sub_80640();
          }

          return v16;
        }

        goto LABEL_123;
      }
    }

    else if (v12 != 1818326127)
    {
      if (v12 != 1819241569)
      {
        if (v12 == 1819505773)
        {
          v17 = *a6;
          v18 = a1[1160];
          v19 = *(v18 + 295) == 2 && v17 == 2;
          if (v19 && *(v18 + 156) == 1 && *(v18 + 157) == 1 && ((v20 = *(v18 + 172)) != 0 || *(v18 + 176)))
          {
            v16 = 1852797029;
            v21 = qword_D8590;
            if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
            {
              return v16;
            }

            v22 = *(v18 + 176);
            *buf = 67109376;
            *&buf[4] = v20;
            *&buf[8] = 1024;
            *&buf[10] = v22;
            v23 = "For in-ear support audio headsets, ANC mode cannot be enabled if both sides are not in-ear: primary bud = %u , secondary bud = %u";
            v24 = v21;
            v25 = 14;
          }

          else
          {
            v45 = a1[1137];
            if (!v45 || (*(v45 + 9444) == 1 ? (v46 = (v17 & 0xFFFFFFFE) == 2) : (v46 = 0), !v46))
            {
              sub_2C6A0(a1[1160], v17);
              v47 = a1[1142];
              if (v47)
              {
                (*(*v47 + 1472))(v47, v17);
              }

              return 0;
            }

            v16 = 1970171760;
            v98 = qword_D8590;
            if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
            {
              return v16;
            }

            v99 = @"Transparency";
            if (v17 == 2)
            {
              v99 = @"ANC";
            }

            *buf = 138412290;
            *&buf[4] = v99;
            v23 = "%@ mode cannot be enabled when farfield is active";
            v24 = v98;
            v25 = 12;
          }

LABEL_204:
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
          return v16;
        }

        goto LABEL_123;
      }

      v27 = a1[1142];
      if (v27)
      {
LABEL_67:
        (*(*v27 + 56))(v27, a2, a3, a4, a5, a6, a7);
        return 0;
      }

      v16 = 1937010544;
      if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        return v16;
      }

LABEL_79:
      sub_8053C();
      return v16;
    }

LABEL_66:
    v27 = a1[1142];
    if (v27)
    {
      goto LABEL_67;
    }

    v16 = 1937010544;
    if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      return v16;
    }

    goto LABEL_79;
  }

  if (v12 <= 1937204589)
  {
    switch(v12)
    {
      case 1936745838:
        if (a5 <= 3)
        {
          v16 = 561211770;
          if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
          {
            return v16;
          }

          goto LABEL_101;
        }

        if (a1[1142])
        {
          v75 = a1[1160];
          if (*(v75 + 230) == 1)
          {
            v76 = *a6;
            v77 = *(v75 + 232);
            v78 = qword_D8590;
            if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *&buf[4] = v7;
              *&buf[8] = 1024;
              *&buf[10] = v77;
              *&buf[14] = 1024;
              *&buf[16] = v76;
              _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEFAULT, "[ %d ] SetProperty kBluetoothAudioDevicePropertySpatialAudioEnabled %u -> %u ", buf, 0x14u);
            }

            v79 = sub_42134();
            v80 = a1[1160];
            if (v79)
            {
              sub_3403C(v80, v7, v76);
              v76 = *(a1[1160] + 232);
            }

            else
            {
              *(v80 + 232) = v76;
            }

            if (v76)
            {
              (*(*a1[1142] + 576))(a1[1142], 1, 6);
            }

            else if ((v76 & 2) != 0)
            {
              (*(*a1[1142] + 576))(a1[1142], 1, 7);
            }

            else
            {
              if (v77)
              {
                (*(*a1[1142] + 576))(a1[1142], 0, 6);
              }

              if ((v77 & 2) != 0)
              {
                (*(*a1[1142] + 576))(a1[1142], 0, 7);
              }
            }
          }

          return 0;
        }

        v16 = 1937010544;
        if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          return v16;
        }

        goto LABEL_208;
      case 1936749417:
        if (a5 > 0xB)
        {
          *buf = *a6;
          *&buf[8] = a6[2];
          if (*(a1[1160] + 230) == 1 && sub_42134())
          {
            v94 = (*(*a1 + 16))(a1);
            v107[0] = _NSConcreteStackBlock;
            v107[1] = 3221225472;
            v107[2] = sub_645F0;
            v107[3] = &unk_B15D0;
            v108 = v94;
            v109 = *buf;
            v110 = *&buf[8];
            sub_507D8(qword_D8DF0, v94, v107);
          }

          return 0;
        }

        v16 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80674();
        }

        return v16;
      case 1936749427:
        if (a5 > 3)
        {
          v83 = a1[1160];
          if (*(v83 + 230) == 1)
          {
            sub_35438(v83, *a6 != 0, 1);
          }

          return 0;
        }

        v16 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_8060C();
        }

        return v16;
    }

    goto LABEL_123;
  }

  if (v12 > 2004050293)
  {
    if (v12 == 2004050294 || v12 == 2004053366)
    {
      if (a5 > 3)
      {
        v29 = *a6;
        v30 = qword_D8590;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
        {
          v31 = (*(*a1 + 296))(a1);
          v32 = "No";
          if (v31)
          {
            v32 = "Yes";
          }

          *buf = 134218242;
          *&buf[4] = v29;
          *&buf[12] = 2080;
          *&buf[14] = v32;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, " SetProperty Wireless Splitter Main Volume change request %f, Aggregate=%s", buf, 0x16u);
        }

        sub_50014(qword_D8DF0, v29);
        return 0;
      }

      v16 = 561211770;
      if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
      {
        sub_807E0();
      }

      return v16;
    }

    goto LABEL_123;
  }

  if (v12 != 1937204590)
  {
    if (v12 == 2004050279)
    {
      if (a5 > 7)
      {
        if (a1[1142])
        {
          v59 = *a6;
          Count = CFArrayGetCount(*a6);
          v61 = qword_D8590;
          v62 = os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT);
          if (Count)
          {
            if (v62)
            {
              v63 = a1[1135];
              *buf = 138543362;
              *&buf[4] = v63;
              _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "SetProperty kBluetoothAudioDeviceWirelessSplitterAggregation creating aggregate device %{public}@", buf, 0xCu);
            }

            v64 = qword_D8DF0;
            v65 = (*(*a1[1142] + 16))(a1[1142]);
            if ((sub_500F8(v64, v65) & 1) == 0)
            {
              v66 = qword_D8DF0;
              ValueAtIndex = CFArrayGetValueAtIndex(v59, 0);
              v68 = CFArrayGetValueAtIndex(v59, 1);
              sub_4FB74(v66, ValueAtIndex, v68);
            }
          }

          else
          {
            if (v62)
            {
              v101 = (*(*a1 + 16))(a1);
              *buf = 67109120;
              *&buf[4] = v101;
              _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "SetProperty kBluetoothAudioDeviceWirelessSplitterAggregation destroying aggregate device with ID %u", buf, 8u);
            }

            sub_501C0(qword_D8DF0, a1[1142]);
          }

          return 0;
        }

        v16 = 1937010544;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80814();
        }
      }

      else
      {
        v16 = 561211770;
        if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
        {
          sub_80848();
        }
      }

      return v16;
    }

    goto LABEL_123;
  }

  if (a5 <= 3)
  {
    v16 = 561211770;
    if (!os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
    {
      return v16;
    }

LABEL_101:
    sub_80744();
    return v16;
  }

  v16 = a1[1142];
  if (v16)
  {
    v48 = a1[1160];
    if (*(v48 + 290) != 1)
    {
      return 0;
    }

    v49 = *a6;
    v50 = qword_D8590;
    if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_DEFAULT))
    {
      v51 = " Yes";
      if (!v49)
      {
        v51 = " No";
      }

      *buf = 136446210;
      *&buf[4] = v51;
      v52 = v49 != 0;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, " SetProperty kBluetoothAudioDevicePropertySoftwareVolumeEnabled %{public}s ", buf, 0xCu);
      v16 = a1[1142];
      *(a1[1160] + 291) = v52;
      if (!v16)
      {
        return v16;
      }
    }

    else
    {
      v52 = v49 != 0;
      *(v48 + 291) = v52;
    }

    (*(*v16 + 1240))(v16, v52);
    return 0;
  }

  v16 = 1937010544;
  if (os_log_type_enabled(qword_D8590, OS_LOG_TYPE_ERROR))
  {
    sub_80778();
  }

  return v16;
}
void sub_3E304(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    sub_11D6C(v1);
  }
}

std::string *sub_3E314@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 23) = 7;
  strcpy(a2, "Unknown");
  v3 = "AAC-LC";
  v4 = "Unknown Codec";
  if (!a1)
  {
    v4 = "SBC";
  }

  if (a1 != 2)
  {
    v3 = v4;
  }

  if (a1 == 33023)
  {
    v5 = "AAC-ELD";
  }

  else
  {
    v5 = v3;
  }

  return std::string::assign(a2, v5);
}

void sub_3E3A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3E3BC(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 9160);
  if (v4 == 33023)
  {
    v5 = 480;
  }

  else
  {
    v5 = 1024;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 128;
  }

  v7 = ((1000 * a2 * v6) / *(a1 + 9112)) & 0xFFFFFFF8;
  inPropertyData = v7;
  if (a2 > 0x80)
  {
    if (a2 > 0xA0)
    {
      v14 = 20000;
      v8 = 20.0;
    }

    else
    {
      v14 = 17500;
      v8 = 17.5;
    }
  }

  else
  {
    v14 = 15500;
    v8 = 15.5;
  }

  v9 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 9124);
    *buf = 67110144;
    v16 = a2;
    v17 = 2048;
    v18 = v8;
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "SetLinkAdaptiveEncoderRateFromBT Updating AAC Encoder to %d kbps, bandwidth = %2.1f KHz, frame size = %d bits, samples per frame = %d, frames per packet = %d", buf, 0x24u);
  }

  v11 = AudioConverterSetProperty(*(*(a1 + 232) + 56), 0x5E70736Cu, 4u, &inPropertyData);
  sub_199EC(v11, "Failed to set kAudioCodecPropertyAdjustPacketSizeLimitForVBR");
  v12 = AudioConverterSetProperty(*(*(a1 + 232) + 56), 0x5E62776Cu, 4u, &v14);
  sub_199EC(v12, "Failed to set kAudioCodecPrivatePropertyBandwidthLimit");
}

uint64_t sub_3E57C(_DWORD *a1)
{
  v1 = a1[2281];
  a1[2282] = v1;
  v2 = a1[2290];
  v3 = v1 << 7;
  if (v2)
  {
    v3 = 1024;
  }

  if (v2 == 33023)
  {
    return 480;
  }

  else
  {
    return v3;
  }
}

void sub_3E5AC(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1 + 0x2000;
  if (*(a1 + 9136))
  {
    info = 0;
    mach_timebase_info(&info);
    v7 = *(a1 + 296) / 1000.0;
    v8 = v7 * (*(*a1 + 888))(a1);
    v9 = ((a3 - *(a1 + 9136)) * info.numer / info.denom / 0x3E8) / 1000.0;
    v10 = v9 * v7;
    v11 = *(a1 + 9144) + a2;
    *(a1 + 9144) = v11;
    v12 = *(a1 + 588);
    if (v12 <= 1.0)
    {
      v13 = 0.0;
      if (v12 < 1.0)
      {
        v13 = v11 - v10;
      }
    }

    else
    {
      v13 = v10 - v11;
    }

    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    if (v13 >= v8)
    {
      *(v5 + 964) = 100;
      if (v9 <= 10000.0)
      {
LABEL_15:
        v16 = qword_D8550;
        if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEBUG))
        {
          if (v12 <= 1.0)
          {
            v19 = "Speed Up";
          }

          else
          {
            v19 = "Slow Down";
          }

          v20 = *(a1 + 9144);
          v21 = sub_3DDC8(a1);
          *buf = 136447490;
          v26 = v19;
          v27 = 2048;
          v28 = v10;
          v29 = 1024;
          v30 = v20;
          v31 = 2048;
          v32 = v8;
          v33 = 2048;
          v34 = v9;
          v35 = 1024;
          v36 = v21;
          _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "Dynamic Latency : %{public}s Complete : Target Samples=%f, actual samples=%u Target Drift=%f Duration = %f Final in-ear-delay=%u", buf, 0x36u);
          v12 = *(a1 + 588);
        }

        *(v5 + 964) = 0;
        v17 = atomic_load((a1 + 596));
        if (v12 > 1.0)
        {
          v17 = -v17;
        }

        *(a1 + 9188) += v17;
        if (*(v5 + 973) == 1)
        {
          *(a1 + 9176) = 0;
          *(v5 + 973) = 0;
          if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEBUG))
          {
            sub_7CD28(a1);
          }

          *(a1 + 9124) = *(a1 + 9168);
          (*(*a1 + 752))(a1);
        }

        atomic_store(0, (a1 + 596));
        atomic_store(0, (a1 + 593));
        v18 = *(qword_D8DF0 + 160);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_3E9D0;
        v23[3] = &unk_AD3E8;
        v23[4] = a1;
        dispatch_async(v18, v23);
        *(a1 + 9136) = 0;
        *(a1 + 9144) = 0;
        return;
      }
    }

    else
    {
      *(v5 + 964) = ((v13 / v8) * 100.0);
      if (v9 <= 10000.0)
      {
        return;
      }
    }

    v15 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_ERROR))
    {
      v22 = "Speed Up";
      if (v12 > 1.0)
      {
        v22 = "Slow Down";
      }

      *buf = 136446466;
      v26 = v22;
      v27 = 2048;
      v28 = v9;
      _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Dynamic Latency : %{public}s took too long to complete Duration=%f", buf, 0x16u);
      v12 = *(a1 + 588);
    }

    goto LABEL_15;
  }

  *(a1 + 9144) = 0;
  *(a1 + 9136) = a3;
  *(a1 + 9156) = 0;
  v14 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEBUG))
  {
    sub_7CDA0(a1, v14);
  }
}

void sub_3EA04(uint64_t *a1, float a2)
{
  v4 = *(a1[52] + 9280);
  if (v4[290] == 1 && v4[291] == 1)
  {
    v5 = v4[292];
  }

  else
  {
    v5 = 0;
  }

  v6 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 134218242;
    *&__p[4] = a2;
    v16 = 2114;
    v17 = sub_5448(a1);
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "A2DP : Volume received from bluetoothd: volume %f Device %{public}@", __p, 0x16u);
  }

  if (v5)
  {
    (*(*a1 + 1232))(a1, a2);
  }

  else
  {
    v7 = sub_42134() ^ 1;
    if (a2 == 0.0)
    {
      LOBYTE(v7) = 1;
    }

    if ((v7 & 1) == 0)
    {
      v8 = a1[52];
      v9 = *(v8 + 9280);
      if (*(v9 + 152))
      {
        *(v9 + 152) = 0;
        sub_6806C(v8, 1836414053);
        v10 = [NSString alloc];
        (*(*a1 + 864))(__p, a1);
        if (v18 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = *__p;
        }

        v12 = [v10 initWithUTF8String:v11];
        if (v18 < 0)
        {
          operator delete(*__p);
        }

        sub_680C0(a1[52], v12, 0);
      }
    }

    (*(*a1 + 488))(a1, 1, a2);
  }

  if ((*(*a1 + 296))(a1))
  {
    v13 = qword_D8DF0;
    v14 = (*(*a1 + 16))(a1);
    if (sub_500F8(v13, v14))
    {
      sub_4FF8C(qword_D8DF0);
    }
  }
}

void sub_3ECA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3ECC4(void *a1)
{
  if ((*(*a1 + 1336))(a1))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1[52] + 9280) + 290) ^ 1;
  }

  return v2 & 1;
}

float sub_3ED30(uint64_t a1, int a2, uint64_t a3)
{
  result = *(a1 + 504);
  if (result != *(a1 + 500) && *(a1 + 324) == 2)
  {
    v4 = (2 * a2);
    if (*(a1 + 308) == 9 && v4 != 0)
    {
      v6 = 0;
      v7 = (a3 + 4);
      do
      {
        v8 = *v7;
        *(v7 - 1) = *(v7 - 1) * *(a1 + 500);
        result = v8 * *(a1 + 504);
        *v7 = result;
        v7 += 2;
        v6 += 2;
      }

      while (v6 < v4);
    }
  }

  return result;
}

float sub_3ED94(float *a1, int a2, float a3)
{
  v5 = a1[125];
  v6 = a1[120];
  v7 = a1[126];
  v8 = v5 * v6;
  v9 = v5 * a3;
  v10 = v7 * a3;
  if (a2 == 1)
  {
    v10 = a3;
    v9 = v8;
  }

  v11 = v6 * v7;
  if (a2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (a2)
  {
    v13 = v9;
  }

  else
  {
    v13 = a3;
  }

  if (v13 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v13 / v14;
  a1[125] = v13 / v14;
  v16 = v12 / v14;
  a1[126] = v12 / v14;
  if (v14 == 0.0)
  {
    __asm { FMOV            V0.2S, #1.0 }

    *(a1 + 125) = _D0;
    v16 = 1.0;
    v15 = 1.0;
  }

  v22 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v23 = "Right";
    v25 = 136447490;
    if (!a2)
    {
      v23 = "Left";
    }

    v26 = v23;
    v27 = 2048;
    v28 = a3;
    v29 = 2048;
    v30 = v15;
    v31 = 2048;
    v32 = v16;
    v33 = 2048;
    v34 = v13;
    v35 = 2048;
    v36 = v12;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Update Volume Balance : [ %{public}s ] volume %f Current Scale [ %f  %f ]   Current balance [ %f - %f ]", &v25, 0x3Eu);
  }

  return v14;
}

void sub_3EF14(uint64_t a1, int a2)
{
  v4 = *(a1 + 416);
  v5 = *(v4 + 9104);
  if (v5)
  {
    if (*(v5 + 192) == 1)
    {
      v6 = *(v5 + 9168);
      if (v6)
      {
        sub_240B4(v6);
        v4 = *(a1 + 416);
      }
    }
  }

  v7 = *(*(v4 + 9280) + 222);
  v8 = v7 & a2;
  v9 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Send";
    if (v8)
    {
      v10 = @"Not Send";
    }

    if (a2)
    {
      v11 = @"IO Stop";
    }

    else
    {
      v11 = @"Route Change/Timer";
    }

    v14 = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    if (v7)
    {
      v12 = @"Enabled";
    }

    else
    {
      v12 = @"Disabled";
    }

    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Evaluate Transport Transition,  %@ A2DP Stop Message to bluetoothd:, Trigger Type: %@ Route transition: %@", &v14, 0x20u);
  }

  if (v8)
  {
    (*(*a1 + 1440))(a1);
  }

  else
  {
    v13 = *(a1 + 208);
    if (v13)
    {
      sub_11CAC(v13);
    }
  }

  *(a1 + 510) = v8;
}

uint64_t sub_3F0A0(uint64_t a1)
{
  v2 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Start A2DP Transition timer", buf, 2u);
  }

  v3 = (*(**(a1 + 416) + 16))(*(a1 + 416));
  *buf = 0;
  v10 = 0;
  sub_70AF4(buf, a1 + 512);
  v4 = *(a1 + 576);
  if (v4)
  {
    if (!dispatch_block_testcancel(*(a1 + 576)))
    {
      dispatch_block_cancel(v4);
      v4 = *(a1 + 576);
    }

    _Block_release(v4);
    *(a1 + 576) = 0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3F214;
  v7[3] = &unk_AE9B8;
  v7[4] = a1;
  v8 = v3;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v7);
  *(a1 + 576) = v5;
  sub_51628(qword_D8DF0, 200, v3, v5);
  sub_70BD4(buf);
  return sub_70C40(buf);
}

void sub_3F200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3F214(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_508C0(qword_D8DF0, *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v4 = v2[1136];
    if (v4)
    {
      if (v4[192] == 1 && v4[510] == 1)
      {
        v5 = qword_D8550;
        if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v7[0]) = 0;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "A2DP - HFP Transiton timer fired", v7, 2u);
          if (*(v3[1136] + 192))
          {
            v4 = v3[1136];
          }

          else
          {
            v4 = 0;
          }
        }

        (*(*v4 + 1424))(v4, 0);
      }
    }
  }

  v7[0] = 0;
  v7[1] = 0;
  sub_70AF4(v7, v1 + 512);
  _Block_release(*(v1 + 576));
  *(v1 + 576) = 0;
  sub_70BD4(v7);
  return sub_70C40(v7);
}

uint64_t sub_3F348(uint64_t a1)
{
  v2 = qword_D8550;
  if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, " A2DP ResetTransitionTimer", buf, 2u);
  }

  *buf = 0;
  v8 = 0;
  sub_70AF4(buf, a1 + 512);
  v3 = *(a1 + 576);
  if (v3)
  {
    if (!dispatch_block_testcancel(*(a1 + 576)))
    {
      v4 = qword_D8550;
      if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Cancel: Transition Timer", v6, 2u);
        v3 = *(a1 + 576);
      }

      dispatch_block_cancel(v3);
    }

    *(a1 + 576) = 0;
  }

  sub_70BD4(buf);
  return sub_70C40(buf);
}

void sub_3F438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3F44C(_BYTE *a1)
{
  if (a1[510])
  {
    (*(*a1 + 1424))(a1, 0);
  }

  v2 = *(*a1 + 1448);

  return v2(a1);
}

void sub_3F4F0(uint64_t a1, int a2)
{
  if (a2 == 1953719151)
  {
    v3 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
    {
      sub_9490(3u, __p);
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v9 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Send Transiton Message %{public}s ", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v5 = *(a1 + 208);
    if (v5)
    {
      sub_11D00(v5, 3);
    }
  }
}

uint64_t sub_3F5EC(uint64_t result, int a2, int a3, unsigned int a4)
{
  if (*(result + 510) == 1)
  {
    v7 = result;
    v8 = qword_D8550;
    if (os_log_type_enabled(qword_D8550, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(v7 + 416) + 9296);
      v15[0] = BYTE3(v9);
      v15[1] = BYTE2(v9);
      v15[2] = BYTE1(v9);
      v15[3] = v9;
      v15[4] = 0;
      v14[0] = HIBYTE(a3);
      v14[1] = BYTE2(a3);
      v14[2] = BYTE1(a3);
      v14[3] = a3;
      v14[4] = 0;
      sub_9490(a4, __p);
      if (v13 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315650;
      v17 = v15;
      v18 = 2080;
      v19 = v14;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "A2DP Profile HandleTransportOnRouteChange %s => %s Recommended Transtion: %s", buf, 0x20u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a3 == 1919183219)
    {
      v11 = *(*(v7 + 416) + 9296);
    }

    else if (a2 == 1953719151)
    {
      (*(*v7 + 1464))(v7, 1953719151);
LABEL_13:
      *(v7 + 510) = 0;
      return (*(*v7 + 1448))(v7);
    }

    (*(*v7 + 1424))(v7, 0);
    goto LABEL_13;
  }

  return result;
}

__n128 sub_3F85C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = *(a1 + 328);
  result = *(a1 + 296);
  v3 = *(a1 + 312);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

os_log_t sub_3F960()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8550 = result;
  return result;
}

uint64_t sub_3F990(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1948(a1, a3);
  *v7 = off_B0318;
  *(v7 + 9353) = 0;
  *(v7 + 9308) = 0;
  *(v7 + 9080) = 0;
  *(v7 + 9088) = 0u;
  *(v7 + 9328) = 0u;
  sub_709AC(v7 + 9360, v8);
  *(a1 + 9424) = 0;
  *(a1 + 9430) = 0;
  *(a1 + 9440) = 512;
  *(a1 + 9444) = 0;
  sub_8998(a1, a2);
  (*(*a1 + 1600))(a1, a4);
  if (sub_42134())
  {
    *(a1 + 9017) = 1;
  }

  sub_1CBC(a1, a4);
  sub_3FDE8(a1, a4);
  *(a1 + 368) = 1953719151;
  atomic_store(0, (a1 + 288));
  *(a1 + 292) = 1;
  strcpy((a1 + 9348), "ichs");
  *(a1 + 372) = xmmword_88F00;
  *(a1 + 388) = 0;
  *(a1 + 396) = 0;
  *(a1 + 424) = 1;
  *(a1 + 480) = 0;
  *(a1 + 496) = 0;
  *(a1 + 488) = 0xC2000000C2000000;
  sub_406EC(a1);
  if ((*(*a1 + 1320))(a1))
  {
    v9 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 488);
      v11 = *(a1 + 296);
      v16 = 134218496;
      v17 = v10;
      v18 = 2048;
      v19 = v11;
      v20 = 2048;
      v21 = 0x3F947AE147AE147BLL;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Create Volume Obj mDBVolume %f, mPhysicalFormat.mSampleRate %f, kHFPAudioRampTime %f", &v16, 0x20u);
    }

    operator new();
  }

  *(a1 + 9345) = 0;
  (*(*a1 + 1064))(a1, 1);
  (*(*a1 + 1056))(a1, 1);
  *(a1 + 9016) = 1;
  if (sub_42134())
  {
    *(a1 + 508) = 0;
  }

  else
  {
    *(a1 + 508) = 1;
    v12 = (*(*a1 + 1336))(a1);
    if (v12)
    {
      LOBYTE(v12) = _os_feature_enabled_impl();
    }

    *(a1 + 509) = v12;
  }

  v13 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 508))
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    v16 = 136315138;
    v17 = *&v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "HFP : Need Transport Ready %s", &v16, 0xCu);
  }

  *(a1 + 9346) = 0;
  *(a1 + 40) = sub_24E2C() + 4000;
  *(a1 + 56) = sub_24E2C() + 4000;
  *(a1 + 72) = sub_24E2C() + 0x4000;
  *(a1 + 88) = 0;
  return a1;
}

void sub_3FDE8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyCategory");
  if (xpc_get_type(value) != &_xpc_type_int64)
  {
    v5 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_7C5C0(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    if (sub_70820())
    {
      goto LABEL_108;
    }
  }

  *(a1 + 9304) = xpc_int64_get_value(value);
  v13 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyLatency");
  if (xpc_get_type(v13) != &_xpc_type_int64)
  {
    v14 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_7C638(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    if (sub_70820())
    {
      goto LABEL_108;
    }
  }

  *(a1 + 9320) = xpc_int64_get_value(v13);
  v22 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyEQSettingID");
  if (xpc_get_type(v22) != &_xpc_type_int64)
  {
    v23 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_7CE58(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    if (sub_70820())
    {
      goto LABEL_108;
    }
  }

  *(a1 + 9312) = xpc_int64_get_value(v22);
  v31 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyNBSSupport");
  if (xpc_get_type(v31) != &_xpc_type_BOOL)
  {
    v32 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_7CED0(v32, v33, v34, v35, v36, v37, v38, v39);
    }

    if (sub_70820())
    {
      goto LABEL_108;
    }
  }

  *(a1 + 9324) = xpc_BOOL_get_value(v31);
  v40 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyInputSWPLCSupport");
  if (v40)
  {
    v41 = v40;
    if (xpc_get_type(v40) != &_xpc_type_BOOL)
    {
      v42 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
      {
        sub_7CF48(v42, v43, v44, v45, v46, v47, v48, v49);
      }

      if (sub_70820())
      {
        goto LABEL_108;
      }
    }

    v50 = xpc_BOOL_get_value(v41);
    sub_88D0(a1, v50);
  }

  v51 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyWBSSupport");
  if (xpc_get_type(v51) != &_xpc_type_BOOL)
  {
    v52 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_7CFC0(v52, v53, v54, v55, v56, v57, v58, v59);
    }

    if (sub_70820())
    {
      goto LABEL_108;
    }
  }

  *(a1 + 9325) = xpc_BOOL_get_value(v51);
  (*(*a1 + 944))(a1, xdict);
  v60 = xpc_dictionary_get_value(xdict, "kBTAudioDebugEnableUWBSStereoTest");
  *(a1 + 9344) = 0;
  if (v60)
  {
    v61 = v60;
    if (xpc_get_type(v60) != &_xpc_type_BOOL)
    {
      v62 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
      {
        sub_7D038(v62, v63, v64, v65, v66, v67, v68, v69);
      }

      if (sub_70820())
      {
        goto LABEL_108;
      }
    }

    v70 = xpc_BOOL_get_value(v61);
    *(a1 + 9344) = v70;
    v71 = !v70;
  }

  else
  {
    v71 = 1;
  }

  v72 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v73 = "On";
    if (*(a1 + 9326))
    {
      v74 = "On";
    }

    else
    {
      v74 = "Off";
    }

    v75 = *(a1 + 9328);
    if (*(a1 + 9327))
    {
      v76 = "On";
    }

    else
    {
      v76 = "Off";
    }

    v170 = 136315906;
    if (v75)
    {
      v77 = "On";
    }

    else
    {
      v77 = "Off";
    }

    v171 = v74;
    v172 = 2080;
    if (v71)
    {
      v73 = "Off";
    }

    v173 = v76;
    v174 = 2080;
    v175 = v77;
    v176 = 2080;
    v177 = v73;
    _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "InitializePublishedProperties mUWBS %s, mSWB %s, mStereoSupported %s, mUWBSStereoTest %s", &v170, 0x2Au);
  }

  v78 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyIncompatibleHidConnected");
  if (v78 && *(*(a1 + 416) + 9280))
  {
    v79 = v78;
    if (xpc_get_type(v78) != &_xpc_type_BOOL)
    {
      v80 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
      {
        sub_7D0B0(v80, v81, v82, v83, v84, v85, v86, v87);
      }

      if (sub_70820())
      {
        goto LABEL_108;
      }
    }

    v88 = *(*(a1 + 416) + 9280);
    *(v88 + 216) = xpc_BOOL_get_value(v79);
    v89 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      v90 = xpc_BOOL_get_value(v79);
      v170 = 67109120;
      LODWORD(v171) = v90;
      v91 = "HFPAudioDevice InitializePublishedProperties, mIncompatibleHidUpdateNeeded:%u";
      v92 = v89;
      v93 = 8;
LABEL_57:
      _os_log_impl(&dword_0, v92, OS_LOG_TYPE_DEFAULT, v91, &v170, v93);
    }
  }

  else
  {
    v94 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      v91 = "HFPAudioDevice InitializePublishedProperties no hid connect property, publish stereo";
      v92 = v94;
      v93 = 2;
      goto LABEL_57;
    }
  }

  v95 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyNRLevel");
  if (xpc_get_type(v95) != &_xpc_type_int64)
  {
    v96 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_7D128(v96, v97, v98, v99, v100, v101, v102, v103);
    }

    if (sub_70820())
    {
      goto LABEL_108;
    }
  }

  *(a1 + 9316) = xpc_int64_get_value(v95);
  v104 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyECNRIsEnabled");
  if (xpc_get_type(v104) != &_xpc_type_BOOL)
  {
    v105 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_76DC0(v105, v106, v107, v108, v109, v110, v111, v112);
    }

    if (sub_70820())
    {
      goto LABEL_108;
    }
  }

  v113 = xpc_BOOL_get_value(v104);
  (*(*a1 + 424))(a1, v113);
  v114 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyVolumeScalar");
  if (xpc_get_type(v114) != &_xpc_type_double)
  {
    v115 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_7D1A0(v115, v116, v117, v118, v119, v120, v121, v122);
    }

    if (sub_70820())
    {
      goto LABEL_108;
    }
  }

  v123 = xpc_double_get_value(v114);
  (*(*a1 + 488))(a1, 0, v123);
  v124 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyInputVolumeScalar");
  if (v124)
  {
    v125 = v124;
    if (xpc_get_type(v124) != &_xpc_type_double)
    {
      v126 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
      {
        sub_7D218(v126, v127, v128, v129, v130, v131, v132, v133);
      }

      if (sub_70820())
      {
        goto LABEL_108;
      }
    }

    v134 = xpc_double_get_value(v125);
    (*(*a1 + 512))(a1, v134);
  }

  v135 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyDSPOffload");
  if (xpc_get_type(v135) != &_xpc_type_BOOL)
  {
    v136 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_7D290(v136, v137, v138, v139, v140, v141, v142, v143);
    }

    if (sub_70820())
    {
      goto LABEL_108;
    }
  }

  *(a1 + 9355) = xpc_BOOL_get_value(v135);
  v144 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyAdvancedHandsfreeSupport");
  if (v144)
  {
    v145 = v144;
    if (xpc_get_type(v144) != &_xpc_type_BOOL)
    {
      v146 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
      {
        sub_7D308(v146, v147, v148, v149, v150, v151, v152, v153);
      }

      if (sub_70820())
      {
        goto LABEL_108;
      }
    }

    v154 = *(*(a1 + 416) + 9280);
    v155 = xpc_BOOL_get_value(v145);
    sub_32C8C(v154, v155);
  }

  v156 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyLowLatencyGameMode");
  if (!v156)
  {
    goto LABEL_101;
  }

  v157 = v156;
  if (xpc_get_type(v156) != &_xpc_type_BOOL)
  {
    v158 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_7D380(v158, v159, v160, v161, v162, v163, v164, v165);
    }

    if (sub_70820())
    {
LABEL_108:
      abort();
    }
  }

  if (_os_feature_enabled_impl())
  {
    v166 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 416) + 9280) + 221))
      {
        v167 = "running";
      }

      else
      {
        v167 = "not running";
      }

      if (xpc_BOOL_get_value(v157))
      {
        v168 = "running";
      }

      else
      {
        v168 = "not running";
      }

      v170 = 136315394;
      v171 = v167;
      v172 = 2080;
      v173 = v168;
      _os_log_impl(&dword_0, v166, OS_LOG_TYPE_DEFAULT, "HFPAudioDevice InitializePublishedProperties LowLatencyGameMode: %s->%s", &v170, 0x16u);
    }

    *(*(*(a1 + 416) + 9280) + 221) = xpc_BOOL_get_value(v157);
  }

LABEL_101:
  if (!*(a1 + 9304) && (((*(*a1 + 1336))(a1) & 1) != 0 || sub_42134()))
  {
    v169 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&dword_0, v169, OS_LOG_TYPE_DEFAULT, "Device category was unknown, defaulting to headphone", &v170, 2u);
    }

    *(a1 + 9304) = 1;
  }
}

void sub_406EC(uint64_t a1)
{
  v2 = (a1 + 0x2000);
  v12 = 0;
  v13 = 0;
  sub_41170(a1, &v13, &v12);
  if (v2[1135])
  {
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEBUG))
    {
      sub_7D3F8();
    }

    operator new();
  }

  if (v2[1134])
  {
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEBUG))
    {
      sub_7D42C();
    }

    operator new();
  }

  v3 = *(a1 + 9328);
  if (v3 == 129 || v3 == 255 || *(a1 + 9336) == 130)
  {
    v4 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v3;
      *&buf[8] = 1024;
      *&buf[10] = v3 == 129;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Creating HFP Codec for Stereo mStereoSupported:%d, %d", buf, 0xEu);
    }

    operator new();
  }

  if (v3 == 128)
  {
    v8 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Creating HFP Codec for Stereo", buf, 2u);
    }

    *(a1 + 9200) = *(a1 + 9120);
    v9 = *(a1 + 9104);
    *(a1 + 9184) = v9;
    v10 = *(a1 + 9136);
    *(a1 + 9216) = v10;
    *(a1 + 9212) = 1;
    *(a1 + 9200) = v10 >> 3;
    *(a1 + 9208) = v10 >> 3;
    *(a1 + 9256) = v10;
    v11 = *(a1 + 9200);
    *(a1 + 9224) = v9;
    *(a1 + 9240) = v11;
    operator new();
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    *(v5 + 48) = *(a1 + 793);
    *(v5 + 177) = *(a1 + 792);
  }

  v6 = *(a1 + 248);
  if (v6)
  {
    *(v6 + 48) = *(a1 + 793);
    *(v6 + 177) = *(a1 + 792);
  }

  if (v2[1134])
  {
    v7 = 510;
  }

  else if (v2[1133])
  {
    v7 = 257;
  }

  else
  {
    v7 = 256;
  }

  sub_1C6BC(*(qword_D8DF0 + 456), v7, 1, *(a1 + 296));
}

uint64_t sub_40EDC(uint64_t a1)
{
  *a1 = off_B0318;
  *(a1 + 9017) = 0;
  v10[0] = 0;
  v10[1] = 0;
  sub_70AF4(v10, a1 + 9360);
  v2 = *(a1 + 9424);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 9424) = 0;
  }

  sub_70BD4(v10);
  if ((*(*a1 + 880))(a1))
  {
    v3 = qword_D8DF0;
    (*(*a1 + 864))(__p, a1);
    sub_4D7D4(v3, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_5F00(a1);
  if ((*(*a1 + 1680))(a1) && (*(*a1 + 1072))(a1))
  {
    v4 = (*(*a1 + 1680))(a1);
    free(v4);
    (*(*a1 + 1696))(a1, 0);
  }

  (*(*a1 + 72))(a1);
  sub_70C40(v10);
  sub_70A28(a1 + 9360, v5);
  return sub_1B04(a1, v6);
}

void sub_4110C(uint64_t a1)
{
  sub_40EDC(a1);

  operator delete();
}

BOOL sub_41144(uint64_t a1)
{
  v2 = *(a1 + 9328);
  result = 1;
  if (v2 != 129 && v2 != 255)
  {
    return *(a1 + 9336) == 130;
  }

  return result;
}

void sub_41170(uint64_t a1, uint64_t *a2, double *a3)
{
  v6 = a1 + 0x2000;
  v7 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v6 + 1132);
    v9 = *(v6 + 1133);
    v10 = *(v6 + 1134);
    v11 = *(v6 + 1135);
    v12 = *(a1 + 9328);
    v19[0] = 67110144;
    v19[1] = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = v10;
    v24 = 1024;
    v25 = v11;
    v26 = 1024;
    v27 = v12;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Codecs available. NBS (CVSD): %d, WBS (mSBC): %d, UWBS (AAC-ELD): %d, mSWB:%d, Stereo: %d", v19, 0x20u);
  }

  v13 = *(v6 + 1135);
  v14 = 0x40D7700000000000;
  if (!*(v6 + 1135) && !*(v6 + 1134))
  {
    v14 = qword_88F10[*(v6 + 1133) == 0];
  }

  v15 = *(a1 + 9328);
  v16 = 48000.0;
  if (v15 != 129 && v15 != 255 && *(a1 + 9336) != 130)
  {
    v16 = 24000.0;
    if (v15 != 128)
    {
      v16 = 0.0;
    }
  }

  *(a1 + 9264) = v14;
  *(v6 + 1080) = xmmword_88F20;
  *(v6 + 1096) = xmmword_88F30;
  if (v13 || *(v6 + 1134))
  {
    *(a1 + 296) = v14;
    *(a1 + 328) = 32;
    *(a1 + 304) = xmmword_88CC0;
    *(a1 + 320) = 0x100000004;
  }

  else
  {
    v18 = *(a1 + 9280);
    *(a1 + 296) = *(a1 + 9264);
    *(a1 + 312) = v18;
    *(a1 + 328) = *(a1 + 9296);
  }

  *(a1 + 9104) = v16;
  *(a1 + 9112) = 1819304813;
  *(a1 + 9124) = 1;
  *(a1 + 9140) = 0;
  *(a1 + 9132) = 2;
  if (v15 == 129 || v15 == 255 || v15 == 128 || *(a1 + 9336) == 130)
  {
    *(a1 + 9116) = 0x800000009;
    *(a1 + 9136) = 32;
    *(a1 + 9128) = 8;
    if (*(a1 + 9332))
    {
      *(a1 + 9176) = *(a1 + 9136);
      v17 = *(a1 + 9120);
      *(a1 + 9144) = *(a1 + 9104);
      *(a1 + 9160) = v17;
      *(a1 + 9144) = 0x40D7700000000000;
    }
  }

  if (a2)
  {
    *a2 = v14;
  }

  if (a3)
  {
    *a3 = v16;
  }
}

void sub_413F0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyUWBSSupport");
  if (value)
  {
    v5 = value;
    if (xpc_get_type(value) != &_xpc_type_BOOL)
    {
      v6 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
      {
        sub_7D494(v6, v7, v8, v9, v10, v11, v12, v13);
      }

      if (sub_70820())
      {
        goto LABEL_63;
      }
    }

    v72 = xpc_BOOL_get_value(v5);
  }

  else
  {
    v14 = qword_D8558;
    v72 = 0;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "InitializePublishedProperties no UWBS Mono published", buf, 2u);
      v72 = 0;
    }
  }

  v15 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyUWBSStereoSupport");
  if (xpc_get_type(v15) != &_xpc_type_BOOL)
  {
    v16 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_7D50C(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    if (sub_70820())
    {
      goto LABEL_63;
    }
  }

  if (v15)
  {
    LODWORD(v15) = xpc_BOOL_get_value(v15);
  }

  else
  {
    v24 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "InitializePublishedProperties no UWBS Stereo published", buf, 2u);
      LODWORD(v15) = 0;
    }
  }

  v25 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertySWBSupport");
  v26 = v25;
  if (v25)
  {
    if (xpc_get_type(v25) != &_xpc_type_BOOL)
    {
      v27 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
      {
        sub_7D584(v27, v28, v29, v30, v31, v32, v33, v34);
      }

      if (sub_70820())
      {
        goto LABEL_63;
      }
    }

    LODWORD(v26) = xpc_BOOL_get_value(v26);
  }

  else
  {
    v35 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "InitializePublishedProperties no SWB Mono published", buf, 2u);
      LODWORD(v26) = 0;
    }
  }

  v36 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertySWBStereoSupport");
  v37 = v36;
  if (v36)
  {
    if (xpc_get_type(v36) != &_xpc_type_BOOL)
    {
      v38 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
      {
        sub_7D5FC(v38, v39, v40, v41, v42, v43, v44, v45);
      }

      if (sub_70820())
      {
        goto LABEL_63;
      }
    }

    LODWORD(v37) = xpc_BOOL_get_value(v37);
  }

  else
  {
    v46 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(a1 + 9327);
      *buf = 67109120;
      v74 = v47;
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "InitializePublishedProperties invalid SWB Stereo published, mSWB:%u", buf, 8u);
      LODWORD(v37) = 0;
    }
  }

  v48 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyAACELDStereo48KSupport");
  v49 = v48;
  if (v48)
  {
    if (xpc_get_type(v48) != &_xpc_type_BOOL)
    {
      v50 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
      {
        sub_7D674(v50, v51, v52, v53, v54, v55, v56, v57);
      }

      if (sub_70820())
      {
        goto LABEL_63;
      }
    }

    LODWORD(v49) = xpc_BOOL_get_value(v49);
  }

  else
  {
    v58 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      v59 = *(a1 + 9327);
      *buf = 67109120;
      v74 = v59;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "InitializePublishedProperties invalid SWB Stereo fake published, mSWB:%u", buf, 8u);
      LODWORD(v49) = 0;
    }
  }

  v60 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyAACELDStereo48K10msSupport");
  v61 = 0;
  if (!_os_feature_enabled_impl() || !v60)
  {
    goto LABEL_50;
  }

  if (xpc_get_type(v60) != &_xpc_type_BOOL)
  {
    v62 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_7D6EC(v62, v63, v64, v65, v66, v67, v68, v69);
    }

    if (sub_70820())
    {
LABEL_63:
      abort();
    }
  }

  if (xpc_BOOL_get_value(v60))
  {
    v61 = 130;
  }

  else
  {
    v61 = 0;
  }

LABEL_50:
  if (v49)
  {
    v70 = 129;
  }

  else if (v37)
  {
    v70 = 255;
  }

  else
  {
    v70 = v15 << 7;
  }

  *(a1 + 9328) = v70;
  *(a1 + 9336) = v61;
  *(a1 + 9332) = v15 << 7;
  v71 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110912;
    v74 = v72;
    v75 = 1024;
    v76 = v15;
    v77 = 1024;
    v78 = v26;
    v79 = 1024;
    v80 = v37;
    v81 = 1024;
    v82 = v49;
    v83 = 1024;
    v84 = v70;
    v85 = 1024;
    v86 = v61;
    v87 = 1024;
    v88 = v15 << 7;
    _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "HFPStereo, SupportedCodecs AACELDMono %u, AACELDStereo %u, LC3Mono %u, LC348kStereo %u, AACELD48KStereo %u, mStereoSupported %u, mStereoSupported10ms %u, mStereoSupported24K %u", buf, 0x32u);
  }

  if (v26)
  {
    *(a1 + 9326) = 256;
  }

  else
  {
    *(a1 + 9327) = 0;
    *(a1 + 9326) = v72;
  }

  sub_2DAF8(*(*(a1 + 416) + 9280), *(a1 + 9328));
}

uint64_t sub_4192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 1650750576)
  {
    v6[0] = xmmword_88F40;
    v6[1] = xmmword_88F50;
    v7 = 0;
    (**(qword_D8DF0 + 144))(*(qword_D8DF0 + 144), *(a1 + 8), 3, v6, a5);
  }

  return sub_6C2C();
}

uint64_t sub_419F4(float *a1, int a2, float a3)
{
  a1[120] = a3;
  v6 = (*(*a1 + 992))(a1);
  v7 = a1[120] + -1.0;
  v8 = v6 - (v7 * (*(*a1 + 984))(a1));
  a1[122] = v8;
  v9 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[120];
    v11 = v8;
    v12 = (*(*a1 + 1320))(a1);
    v17[0] = 134219010;
    v13 = "No";
    *&v17[1] = a3;
    if (a2)
    {
      v13 = "Yes";
    }

    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = v11;
    v22 = 1024;
    v23 = v12;
    v24 = 2082;
    v25 = v13;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[HF] volume %f, mScalarVolume %f, mDBVolume %f, IsVolumeSupported %d Notify Mx %{public}s", v17, 0x30u);
  }

  result = (*(*a1 + 1320))(a1);
  if (result)
  {
    if ((a1[102] & 1) == 0)
    {
      v15 = *(a1 + 50);
      if (v15)
      {
        v16 = atomic_load((v15 + 24));
        if (v16)
        {
          sub_16518(*(a1 + 50), a1[122]);
        }
      }
    }

    if ((a2 & 1) != 0 || (result = sub_42134(), result))
    {
      strcpy(v17, "dlovptuo");
      BYTE1(v17[2]) = 0;
      HIWORD(v17[2]) = 0;
      return (*(*a1 + 248))(a1, v17);
    }
  }

  return result;
}

void sub_41C60(void *a1, float a2)
{
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*a1 + 1320))(a1);
    v7 = 134218240;
    v8 = a2;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Input volume mScalarVolume %f, IsVolumeSupported %d", &v7, 0x12u);
  }

  if ((*(*a1 + 1320))(a1))
  {
    v6 = a1[26];
    if (v6)
    {
      sub_12550(v6, a2);
    }
  }
}

void sub_41DA4(uint64_t a1, void *a2)
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

void sub_41E64(float *a1, float a2)
{
  a1[122] = a2;
  v4 = (*(*a1 + 992))(a1) - a1[122];
  v5 = (v4 / (*(*a1 + 984))(a1)) + 1.0;
  a1[120] = v5;
  v6 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[122];
    v8 = (*(*a1 + 1320))(a1);
    v12 = 134218752;
    v13 = a2;
    v14 = 2048;
    v15 = v5;
    v16 = 2048;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "volume %f, mScalarVolume %f, mDBVolume %f, IsVolumeSupported %d", &v12, 0x26u);
  }

  if ((*(*a1 + 1320))(a1))
  {
    if (*(a1 + 408) == 1)
    {
      v9 = *(a1 + 26);
      if (v9)
      {
        sub_126AC(v9, a1[120]);
      }
    }

    else
    {
      v10 = *(a1 + 50);
      if (v10)
      {
        v11 = atomic_load((v10 + 24));
        if (v11)
        {
          sub_16518(*(a1 + 50), a1[122]);
        }
      }
    }
  }
}

void *sub_42098@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

void sub_4213C(uint64_t a1, int a2, __CFDictionary **a3)
{
  valuePtr = 0;
  v26 = 0;
  v33 = 0;
  cf = 0;
  v32 = 0;
  *values = 0u;
  v30 = 0u;
  *keys = *off_B09D8;
  v28 = *off_B09E8;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &valuePtr + 4);
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &valuePtr);
  v7 = v6;
  if (a3)
  {
    if (v5 && v6 != 0)
    {
      v9 = 0;
      if (a2 <= 4)
      {
        if (a2 == 1)
        {
          HIDWORD(v26) = 1;
          v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v26 + 4);
          v11 = 1163984896;
        }

        else
        {
          if (a2 != 2)
          {
            goto LABEL_47;
          }

          HIDWORD(v26) = 2;
          v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v26 + 4);
          v11 = 1128792064;
        }

        LODWORD(v26) = v11;
        v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &v26);
        v13 = v17;
        if (v10)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          values[0] = v10;
          values[1] = v17;
          *&v30 = v5;
          *(&v30 + 1) = v7;
          cf = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (cf)
          {
            v19 = kCFAllocatorDefault;
            v20 = 1;
LABEL_37:
            v9 = CFArrayCreate(v19, &cf, v20, &kCFTypeArrayCallBacks);
            v15 = *a3;
            v16 = @"BT_EQValuesDownlink";
            goto LABEL_38;
          }

          goto LABEL_54;
        }

LABEL_44:
        v9 = 0;
        if (!v10)
        {
          if (!v13)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

LABEL_55:
        CFRelease(v10);
        if (!v13)
        {
          goto LABEL_47;
        }

LABEL_46:
        CFRelease(v13);
        goto LABEL_47;
      }

      if (a2 == 12)
      {
        HIDWORD(v26) = 2;
        v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v26 + 4);
        LODWORD(v26) = 1128792064;
        v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &v26);
        v13 = v21;
        if (v10)
        {
          v22 = v21 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          goto LABEL_44;
        }

        values[0] = v10;
        values[1] = v21;
        *&v30 = v5;
        *(&v30 + 1) = v7;
        v23 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        cf = v23;
        if (v23)
        {
          HIDWORD(v26) = 1;
          v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v26 + 4);
          LODWORD(v26) = 1163984896;
          v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &v26);
          v13 = v24;
          if (v10 && v24)
          {
            values[0] = v10;
            values[1] = v24;
            *&v30 = v5;
            *(&v30 + 1) = v7;
            v32 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v32)
            {
              v19 = kCFAllocatorDefault;
              v20 = 2;
              goto LABEL_37;
            }

            goto LABEL_54;
          }

          goto LABEL_44;
        }
      }

      else
      {
        if (a2 != 5)
        {
          goto LABEL_47;
        }

        HIDWORD(v26) = 5;
        v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v26 + 4);
        v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &v26);
        v13 = v12;
        if (v10)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          goto LABEL_44;
        }

        values[0] = v10;
        values[1] = v12;
        *&v30 = v5;
        *(&v30 + 1) = v7;
        v33 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v33)
        {
          v9 = CFArrayCreate(kCFAllocatorDefault, &v33, 1, &kCFTypeArrayCallBacks);
          v15 = *a3;
          v16 = @"BT_EQValuesUplink";
LABEL_38:
          CFDictionaryAddValue(v15, v16, v9);
          goto LABEL_55;
        }
      }

LABEL_54:
      v9 = 0;
      goto LABEL_55;
    }
  }

  v9 = 0;
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_47:
  CFRelease(v5);
  if (v7)
  {
LABEL_12:
    CFRelease(v7);
  }

LABEL_13:
  if (v33)
  {
    CFRelease(v33);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_4252C(uint64_t a1, unsigned int a2, CFMutableDictionaryRef *a3)
{
  valuePtr = 1;
  v16 = a2;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v6 = v5;
  if (a3 && v5)
  {
    if (a2 >= 7)
    {
      v16 = a2 - 6;
      CFDictionaryAddValue(*a3, @"BT_EQLevelUplink", v5);
      sub_4213C(v7, 5, a3);
    }

    v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v16);
    if (!v8)
    {
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_ERROR))
      {
        sub_7D7DC();
      }

      goto LABEL_25;
    }

    v9 = v8;
    v10 = v16;
    if (v16 > 3)
    {
      if (v16 != 4)
      {
        if (v16 != 5 && v16 != 6)
        {
LABEL_26:
          v14 = qword_D8558;
          if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_ERROR))
          {
            sub_7D764(v10, v14);
          }

          goto LABEL_22;
        }

        v11 = 1;
LABEL_21:
        sub_4213C(v8, v11, a3);
        CFDictionaryAddValue(*a3, @"BT_EQLevelDownlink", v9);
LABEL_22:
        v12 = qword_D8558;
        if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *a3;
          *buf = 138543362;
          v18 = v13;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "EQ settings are %{public}@", buf, 0xCu);
        }

        CFRelease(v9);
        goto LABEL_25;
      }
    }

    else
    {
      if (v16 == 1 || v16 == 2)
      {
        v11 = 2;
        goto LABEL_21;
      }

      if (v16 != 3)
      {
        goto LABEL_26;
      }
    }

    v11 = 12;
    goto LABEL_21;
  }

  if (v5)
  {
LABEL_25:
    CFRelease(v6);
  }
}

CFDictionaryRef sub_4272C(_DWORD *a1)
{
  v2 = a1[2327];
  v18 = 0;
  v19 = v2 == 0;
  v17 = 0;
  valuePtr = v19;
  v16 = 0;
  if (!v2 && ((*(*a1 + 1336))(a1) & 1) == 0)
  {
    v3 = a1[2326];
    HIDWORD(v17) = 1;
    if (v3 != 1 && (v3 == 2 || v3 == 3))
    {
      v16 = 0;
      LODWORD(v17) = 1090519040;
    }

    else
    {
      v16 = 1086324736;
      LODWORD(v17) = 1077936128;
    }
  }

  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &v18);
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v17 + 4);
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &v17);
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &v16);
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v19);
  *keys = *off_B09F8;
  v24 = *off_B0A08;
  v25 = *off_B0A18;
  values[0] = v4;
  values[1] = v5;
  values[2] = v6;
  values[3] = v7;
  values[4] = v8;
  values[5] = v9;
  v10 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  theDict = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 11, v10);
  CFRelease(v10);
  sub_429C0(a1, a1[2328], &theDict);
  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, theDict);
  v12 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = Copy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "DSP disctionary settings are %{public}@", buf, 0xCu);
  }

  CFRelease(v6);
  CFRelease(v5);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v8);
  CFRelease(v9);
  CFRelease(theDict);
  return Copy;
}

void sub_429C0(uint64_t a1, unsigned int a2, CFMutableDictionaryRef *a3)
{
  *(a1 + 9312) = a2;
  if (a2)
  {
    v4 = a2;
    v6 = qword_D8558;
    v7 = os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      v8[0] = 67109120;
      v8[1] = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Adding eq setting %d", v8, 8u);
      v4 = *(a1 + 9312);
    }

    sub_4252C(v7, v4, a3);
  }
}

uint64_t sub_42A88(uint64_t a1)
{
  v1 = *(a1 + 9340);
  v2 = v1 - 128;
  v3 = v1 == 255;
  return v2 < 3 || v3;
}

double sub_42AA8(uint64_t a1)
{
  v2 = *(a1 + 9328);
  if (v2 != 129 && v2 != 255 && *(a1 + 9336) != 130)
  {
    goto LABEL_9;
  }

  v3 = *(a1 + 9340);
  if ((v3 - 129) < 2)
  {
    v5 = 48000.0;
    goto LABEL_16;
  }

  if (v3)
  {
    if (v3 == 128)
    {
      v4 = &unk_88000;
LABEL_11:
      v5 = v4[203];
      goto LABEL_16;
    }

    v5 = 8000.0;
  }

  else
  {
LABEL_9:
    v4 = &unk_88000;
    if (v2 == 128 && *(a1 + 9340))
    {
      goto LABEL_11;
    }

    v5 = 24000.0;
    if (!*(a1 + 9327) && !*(a1 + 9326))
    {
      v5 = *&qword_88F10[*(a1 + 9325) == 0];
    }
  }

LABEL_16:
  v6 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 9340);
    v9 = 134218496;
    v10 = v5;
    v11 = 1024;
    v12 = v7;
    v13 = 1024;
    v14 = v2;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "GetBestSampleRate:%f mStereoSelected:%d mStereoSupported:%d", &v9, 0x18u);
  }

  return v5;
}

uint64_t sub_42C1C(uint64_t a1, double a2)
{
  v4 = a1 + 0x2000;
  if (*(a1 + 9326) && *(a1 + 9345))
  {
    return 4294956445;
  }

  v6 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 134217984;
    *&v13[4] = a2;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "HFPStereo, Update Sampling Rate %f", v13, 0xCu);
  }

  if (*(v4 + 1162))
  {
    if (a2 > 16000.0 && *(v4 + 1133) != 0)
    {
      v8 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 134217984;
        *&v13[4] = 0x40CF400000000000;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "HFP sample Rate Limited to %f", v13, 0xCu);
      }

      a2 = 16000.0;
    }

    v9 = *(a1 + 9280);
    *(a1 + 296) = *(a1 + 9264);
    *(a1 + 312) = v9;
    *(a1 + 328) = *(a1 + 9296);
  }

  else
  {
    sub_41170(a1, 0, 0);
  }

  v10 = *(a1 + 296);
  if (v10 != a2)
  {
    if (*(a1 + 9340))
    {
      v11 = qword_D8558;
      if (*(a1 + 9328))
      {
        if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 9104);
          *v13 = 134218496;
          *&v13[4] = a2;
          v14 = 2048;
          v15 = v10;
          v16 = 2048;
          v17 = v12;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "HFPStereo, sample Rate between host codec changed to %f, %f, %f", v13, 0x20u);
        }

        (*(*a1 + 824))(v13, a1, 0);
        (*(*a1 + 1512))(a1, *v13);
        return 0;
      }
    }

    else
    {
      v11 = qword_D8558;
    }

    *(a1 + 296) = a2;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 134217984;
      *&v13[4] = a2;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "HFPStereo, Rate changed to %f", v13, 0xCu);
      a2 = *(a1 + 296);
    }

    (*(*a1 + 1512))(a1, a2);
  }

  return 0;
}

void sub_42F10(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 416);
  if (v4 && (v5 = *(v4 + 9280)) != 0)
  {
    v6 = *(v5 + 221);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 9340);
  if (sub_42134())
  {
    v8 = *(a1 + 9328);
    if (!v8)
    {
      return;
    }

    *(a1 + 9340) = v8;
    v9 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109888;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = a2;
      v23 = 1024;
      v24 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "HFPStereo Output Device Configured to %d -> %d, desired:%d, highest:%d", &v17, 0x1Au);
      v8 = *(a1 + 9340);
    }

    v10 = a1;
    v11 = v8;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    if (sub_42134())
    {
      return;
    }

    if (a2 == 4)
    {
      v14 = 130;
    }

    else if (a2 < 2 || (v14 = *(a1 + 9328)) == 0)
    {
      v14 = 0;
    }

    *(a1 + 9340) = v14;
    v15 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 9328);
      v17 = 67110144;
      v18 = v7;
      v19 = 1024;
      v20 = v14;
      v21 = 1024;
      v22 = a2;
      v23 = 1024;
      v24 = v16;
      v25 = 1024;
      v26 = v6;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "HFPStereo Output Device Configured to %d -> %d, desired:%d, highest:%d, game:%d", &v17, 0x20u);
      v14 = *(a1 + 9340);
    }

    v12 = v14 == 130;
    v13 = *(a1 + 9444);
    v10 = a1;
    v11 = v14;
  }

  sub_430EC(v10, v11, v12, v13);
}

void sub_430EC(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  (*(*a1 + 824))(v14);
  v8 = ((*(*a1 + 808))(a1) * 20.0 / 1000.0);
  *(a1 + 9440) = v8;
  if (a4 == 1)
  {
    v8 = ((*(*a1 + 808))(a1) * 10.0 / 1000.0);
    *(a1 + 9440) = v8;
  }

  v9 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "BT_TRANSPORT_TYPE_LEGACY";
    *buf = 134218754;
    if (a3)
    {
      v10 = "BT_TRANSPORT_TYPE_ADVANCED";
    }

    v17 = *&v14[0];
    v18 = 1024;
    v19 = a2;
    v20 = 2082;
    v21 = v10;
    v22 = 1024;
    v23 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "HFPStereo SendStereoEnable samplerate:%f, codec:%u Transport %{public}s, Max Supported Frame Size %d", buf, 0x22u);
  }

  v11 = *(a1 + 400);
  if (v11)
  {
    v12 = *v14;
    sub_164EC(v11, v12);
  }

  v13 = *(a1 + 208);
  if (v13)
  {
    sub_14374(v13, a2, *v14, a3, a4);
  }
}

uint64_t sub_43304(uint64_t result)
{
  if (*(result + 9336) == 130)
  {
    v1 = result;
    v2 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 9340);
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "HFPStereo enabled HAoS codec from currCodec%d", v6, 8u);
    }

    *(v1 + 9340) = 130;
    v4 = _os_feature_enabled_impl() && (*(v1 + 9444) & 1) != 0;
    sub_430EC(v1, *(v1 + 9336), 1u, v4);
    v5 = *(*(v1 + 416) + 9280);
    result = sub_70818();
    if (result)
    {
      result = _os_feature_enabled_impl();
    }

    *(v5 + 222) = result;
  }

  return result;
}

void sub_43424(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a1 + 0x2000;
  *(a1 + 9352) = a2;
  v6 = sub_1C00(a1, a3);
  v7 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v5 + 1160))
    {
      v8 = "true";
    }

    else
    {
      v8 = "false";
    }

    (*(*a1 + 824))(&v30, a1, 0);
    v9 = v30;
    v10 = *(a1 + 9432);
    v11 = (*(*a1 + 1352))(a1);
    *buf = 136315906;
    v36 = v8;
    v37 = 2048;
    v38 = v9;
    v39 = 1024;
    v40 = v10;
    v41 = 1024;
    v42 = v11;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "HFPStereo set kBluetoothAudioDevicePropertySCOIsEnabled : %s, sample rate %f Current State %d, owned %d", buf, 0x22u);
  }

  sub_707B4(33, a2, *(a1 + 296), 0, 0);
  if (v6 == 1920364387)
  {
    sub_7074C(5);
  }

  if (*(v5 + 1160))
  {
    v12 = *(a1 + 9348);
    *(v5 + 1154) = 1;
    v13 = *(a1 + 296);
    if (v12 == 1935765619)
    {
      if (v13 == 16000.0)
      {
        v12 = 1935765620;
      }

      else
      {
        v12 = 1935765619;
      }
    }

    if (v13 == 48000.0 || v13 == 24000.0 || v13 == 32000.0)
    {
      *(a1 + 216) = *(a1 + 232);
      v20 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 9340);
        v22 = *(a1 + 9336);
        v23 = *(a1 + 9328);
        LODWORD(v30) = 67109632;
        HIDWORD(v30) = v21;
        v31 = 1024;
        v32 = v22;
        v33 = 1024;
        v34 = v23;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "HFPStereo, check codec in trigger sco, mStereoSelected %u, mStereoSupported10ms %u, mStereoSupported %u", &v30, 0x14u);
      }

      if (*(a1 + 9328))
      {
        v24 = *(a1 + 9340);
        if (v24)
        {
          if (v24 == 128)
          {
            *(a1 + 216) = *(a1 + 272);
            v25 = qword_D8558;
            if (!os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_39;
            }

            LOWORD(v30) = 0;
            v26 = "HFPStereo install Stereo 24k encoder";
          }

          else if (v24 == 130)
          {
            *(a1 + 216) = vextq_s8(*(a1 + 256), *(a1 + 256), 8uLL);
            v25 = qword_D8558;
            if (!os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_39;
            }

            LOWORD(v30) = 0;
            v26 = "HFPStereo install Stereo 10ms encoder";
          }

          else
          {
            *(a1 + 216) = *(a1 + 248);
            v25 = qword_D8558;
            if (!os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_39;
            }

            LOWORD(v30) = 0;
            v26 = "HFPStereo install highest stereo encoder";
          }

          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, v26, &v30, 2u);
        }
      }
    }

    else
    {
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
    }

LABEL_39:
    if (v6 == 1919708275 || ((v27 = _os_feature_enabled_impl(), v6 == 1919312242) ? (v28 = v27) : (v28 = 0), (v28 & 1) != 0 || v6 == 1936090482))
    {
      v6 = 1918989668;
    }

    if (!*(a1 + 9432))
    {
      sub_43954(a1, 1);
    }

    v29 = *(a1 + 208);
    if (v29)
    {
      (*(*a1 + 824))(&v30, a1, 0);
      v16 = v30;
      v17 = v29;
      v18 = v12;
      v19 = v6;
LABEL_50:
      sub_122F4(v17, v18, v19, v16);
      return;
    }

    return;
  }

  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEBUG))
  {
    sub_7D810();
  }

  *(v5 + 1154) = 256;
  if (*(v5 + 1134) && *(v5 + 1153))
  {
    *(v5 + 1153) = 0;
    (*(*a1 + 240))(a1, 1853059619, *(a1 + 296));
  }

  v14 = *(a1 + 208);
  if (v14)
  {
    if (*(a1 + 9432) == 2)
    {
      sub_43954(a1, 3);
      v14 = *(a1 + 208);
    }

    v15 = *(a1 + 9348);
    (*(*a1 + 824))(&v30, a1, 0);
    v16 = v30;
    v17 = v14;
    v18 = v15;
    v19 = 0;
    goto LABEL_50;
  }
}

void sub_43954(uint64_t a1, int a2)
{
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 9432);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Set SCOStatus %d ---> %d", v6, 0xEu);
  }

  *(a1 + 9432) = a2;
}

void sub_43A14(uint64_t a1, char *a2, void *a3)
{
  if (!strcasecmp(a2, "kBTAudioMsgPropertyAACELDStereo48K10msSupport"))
  {
    *(a1 + 9336) = xpc_BOOL_get_value(a3);
    v6 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "HFPStereo, mStereoSupported10ms leave us", v7, 2u);
    }
  }

  else
  {

    sub_773C(a1, a2, a3);
  }
}

uint64_t sub_43ADC(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "tear down";
    if (a2)
    {
      v7 = "creation";
    }

    v9 = 136315138;
    v10 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "TriggerSCOAudio: Request eSCO %s ", &v9, 0xCu);
  }

  sub_43424(a1, a2, a3);
  if (a2)
  {
    return (*(*a1 + 1200))(a1) ^ 1;
  }

  if (sub_69474(a1[52]))
  {
    sub_69718(a1[52]);
  }

  return (*(*a1 + 1200))(a1);
}

void sub_43C34(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 9432);
  if (a3)
  {
    v7 = 1;
    if (a2 == 116)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    sub_43954(a1, v8);
  }

  else if (a2)
  {
    if (a2 == 116)
    {
      sub_43954(a1, 4);
    }

    else
    {
      if (v6 == 1)
      {
        sub_2688(a1, 0);
      }

      sub_43954(a1, 0);
      if (sub_42134())
      {
        sub_5AAC0(*(a1 + 416), 1685283695);
        v9 = qword_D8558;
        if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 67109120;
          LODWORD(v15) = a2;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "eSCO Connect/Disconnect Failed Status: %d", &v14, 8u);
        }
      }
    }

    v7 = 1;
  }

  else
  {
    sub_43954(a1, 0);
    v7 = v6 != 4;
  }

  v10 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_5448(a1);
    v12 = *(a1 + 9432);
    v13 = @"NO";
    v14 = 138544386;
    v15 = v11;
    if (v7)
    {
      v13 = @"YES";
    }

    v16 = 1024;
    v17 = a2;
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received Status update from bluetoothd Status %d %d -> %d Notify HAL %@", &v14, 0x28u);
  }

  if (v7)
  {
    (*(*a1 + 400))(a1, a3);
    sub_5BC0C(*(a1 + 416), 1953719151, a3);
  }
}

BOOL sub_43E64(uint64_t a1)
{
  if (*(a1 + 509) == 1)
  {
    v2 = *(a1 + 9432);
  }

  else
  {
    if (sub_69474(*(a1 + 416)))
    {
      return 0;
    }

    v2 = *(a1 + 508);
  }

  return v2 != 0;
}

uint64_t sub_43EB8(uint64_t a1)
{
  result = *(a1 + 416);
  if (result)
  {
    return (*(*result + 360))();
  }

  return result;
}

void sub_43EF0(uint64_t a1, int a2)
{
  v4 = (a1 + 0x2000);
  atomic_store(a2, (a1 + 288));
  v11 = 0x676C6F6273636F6ELL;
  v12 = 0;
  (*(*a1 + 248))(a1, &v11);
  if (a2)
  {
    if (!v4[1154])
    {
      LODWORD(v11) = 1668506479;
      v5 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 8);
        *buf = 67109120;
        v14 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Taking Audio for mAudioObjectID %d", buf, 8u);
      }

      v7 = @"BluetoothTakeAudioNotification";
LABEL_11:
      (*(*a1 + 248))(a1, &v11);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, v7, 0, 0, 0);
    }
  }

  else if (!v4[1155] && (sub_42134() & 1) == 0)
  {
    LODWORD(v11) = 1685283695;
    v8 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 8);
      *buf = 67109120;
      v14 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Relinquishing Audio for mAudioObjectID %d", buf, 8u);
    }

    v7 = @"BluetoothRelinquishAudioNotification";
    goto LABEL_11;
  }

  *(v4 + 577) = 0;
  v4[1161] = a2;
}

uint64_t sub_440C8(_DWORD *a1, int a2)
{
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (a2)
    {
      v5 = "enabled";
    }

    v6 = "enable";
    if (a2)
    {
      v6 = "disable";
    }

    v8[0] = 136446466;
    *&v8[1] = v5;
    v9 = 2082;
    v10 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BT HFP device set ecnr is %{public}s. AG will %{public}s EC/NR.", v8, 0x16u);
  }

  a1[2327] = a2;
  strcpy(v8, "rncebolg");
  BYTE1(v8[2]) = 0;
  HIWORD(v8[2]) = 0;
  return (*(*a1 + 248))(a1, v8);
}

uint64_t sub_441EC(uint64_t a1, int a2)
{
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BT set NBS (CVSD) is %d", v6, 8u);
  }

  *(a1 + 9324) = a2;
  return (*(*a1 + 240))(a1, 1853059619, *(a1 + 296));
}

uint64_t sub_44304(uint64_t a1, int a2)
{
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BT set WBS (mSBC) is %d", v6, 8u);
  }

  *(a1 + 9325) = a2;
  return (*(*a1 + 240))(a1, 1853059619, *(a1 + 296));
}

uint64_t sub_443F0(uint64_t a1, int a2)
{
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BT set UWBS (AAC-ELD) is %d", v6, 8u);
  }

  *(a1 + 9326) = a2;
  return (*(*a1 + 240))(a1, 1853059619, *(a1 + 296));
}

void sub_444DC(int *a1, int a2)
{
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 37);
    LODWORD(v7) = 67109376;
    HIDWORD(v7) = a2;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BT set UWBSStereo: %d, sample rate:%f", &v7, 0x12u);
  }

  (*(*a1 + 824))(&v7, a1, 0);
  (*(*a1 + 240))(a1, 1853059619, v7);
  v6 = a1[2332];
  if (a2)
  {
    if (!v6)
    {
      v6 = 128;
LABEL_8:
      a1[2332] = v6;
    }
  }

  else if (v6 == 128)
  {
    v6 = 0;
    goto LABEL_8;
  }

  sub_2DAF8(*(*(a1 + 52) + 9280), v6);
}

void sub_44638(int *a1, int a2)
{
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 37);
    LODWORD(v7) = 67109376;
    HIDWORD(v7) = a2;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BT set SWBStereo: %d, sample rate:%f", &v7, 0x12u);
  }

  (*(*a1 + 824))(&v7, a1, 0);
  (*(*a1 + 240))(a1, 1853059619, v7);
  v6 = a1[2332];
  if (a2)
  {
    if (!v6)
    {
      v6 = 255;
LABEL_8:
      a1[2332] = v6;
    }
  }

  else if (v6 == 255)
  {
    v6 = 0;
    goto LABEL_8;
  }

  sub_2DAF8(*(*(a1 + 52) + 9280), v6);
}

BOOL sub_44794(uint64_t a1)
{
  v2 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 9344);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "BT get UWBSStereoTest: %d", v5, 8u);
  }

  return *(a1 + 9344) != 0;
}

uint64_t sub_4484C(_BYTE *a1, unsigned int a2)
{
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    if (a2)
    {
      v5 = "YES";
    }

    v7 = 136446210;
    v8 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "DSPOffload support =  %{public}s", &v7, 0xCu);
  }

  a1[9355] = a2;
  return (*(*a1 + 240))(a1, 1987080038, a2);
}

void sub_4494C(uint64_t a1)
{
  v2 = (*(**(a1 + 416) + 16))(*(a1 + 416));
  if ((*(*a1 + 1032))(a1))
  {
    v3 = 0;
  }

  else
  {
    v3 = atomic_load((a1 + 288));
  }

  (*(*a1 + 1536))(a1);
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*a1 + 1032))(a1);
    v6 = "YES";
    if (v5)
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    v8 = atomic_load((a1 + 288));
    if ((v8 & 1) == 0)
    {
      v6 = "NO";
    }

    *buf = 136446722;
    *&buf[4] = v7;
    *&buf[12] = 2082;
    *&buf[14] = v6;
    if (v3)
    {
      v9 = "Create new Delayed Disconnect Timer";
    }

    else
    {
      v9 = "Not disconnecting eSCO";
    }

    v13 = 2082;
    v14 = v9;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Status : IO = %{public}s eSCO Running = %{public}s Delayed Transport Disconnect: %{public}s", buf, 0x20u);
  }

  if (v3)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_70AF4(buf, a1 + 9360);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_44BE0;
    v10[3] = &unk_AE9B8;
    v10[4] = a1;
    v11 = v2;
    *(a1 + 9424) = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10);
    sub_70BD4(buf);
    sub_51628(qword_D8DF0, 2000, v2, *(a1 + 9424));
    sub_70C40(buf);
  }
}

void *sub_44BE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_508C0(qword_D8DF0, *(a1 + 40));
  if (result)
  {
    v3 = result;
    v8[0] = 0;
    v8[1] = 0;
    sub_70AF4(v8, v1 + 9360);
    v4 = *(v1 + 9424);
    if (v4)
    {
      _Block_release(v4);
      *(v1 + 9424) = 0;
    }

    sub_70BD4(v8);
    v5 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Delayed Transport Disconnect: Disconnect Timer Fired..Disconnect eSCO", v7, 2u);
    }

    v6 = v3[1137];
    if (v6)
    {
      if (v6[192] == 1)
      {
        (*(*v6 + 256))(v6, 0, 1918989668, 0);
      }
    }

    return sub_70C40(v8);
  }

  return result;
}

void sub_44CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

BOOL sub_44D00(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_70AF4(v9, a1 + 9360);
  v2 = *(a1 + 9424);
  if (v2)
  {
    v3 = dispatch_block_testcancel(*(a1 + 9424));
    v4 = v3 == 0;
    if (!v3)
    {
      v5 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Delayed Transport Disconnect: Cancelling current Dispatch", buf, 2u);
        v2 = *(a1 + 9424);
      }

      dispatch_block_cancel(v2);
    }

    *(a1 + 9424) = 0;
  }

  else
  {
    v4 = 0;
  }

  v6 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v7 = atomic_load((a1 + 288));
    *buf = 67109376;
    v11 = v4;
    v12 = 1024;
    v13 = v7 & 1;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Delayed Transport Disconnect: cancelled block = %d Transport  = %d", buf, 0xEu);
  }

  sub_70C40(v9);
  return v4;
}

uint64_t sub_44E5C(unsigned __int8 *a1)
{
  if ((*(*a1 + 1024))(a1))
  {
    return 1;
  }

  v2 = atomic_load(a1 + 288);
  if (v2)
  {
    return 1;
  }

  v4 = *(*a1 + 1216);

  return v4(a1);
}

void sub_44F10(uint64_t a1)
{
  if ((*(*a1 + 1320))(a1))
  {
    if (*(a1 + 408) == 1)
    {
      v2 = *(a1 + 208);
      if (v2)
      {
        v3 = qword_D8558;
        if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
        {
          v4 = *(a1 + 480);
          v5 = 134217984;
          v6 = v4;
          _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HFPAudioDevice: volume update back to headphone %f", &v5, 0xCu);
          v2 = *(a1 + 208);
        }

        sub_126AC(v2, *(a1 + 480));
      }
    }
  }
}

uint64_t sub_45014(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1701015153)
  {
    if (v2 <= 1935896429)
    {
      v3 = v2 == 1701015154;
      v4 = 1852992613;
    }

    else
    {
      v3 = v2 == 1935896430 || v2 == 1935959404;
      v4 = 1987080038;
    }
  }

  else if (v2 <= 1668510817)
  {
    v3 = v2 == 1650750320;
    v4 = 1668506479;
  }

  else
  {
    v3 = v2 == 1668510818 || v2 == 1684234612;
    v4 = 1685283695;
  }

  if (v3 || v2 == v4)
  {
    return 1;
  }

  else
  {
    return sub_6FE8();
  }
}

uint64_t sub_450D0(uint64_t a1, int *a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a2 > 1701015153)
  {
    if (v3 <= 1935896429)
    {
      if (v3 != 1701015154)
      {
        v4 = 1852992613;
        goto LABEL_14;
      }
    }

    else
    {
      if (v3 == 1935896430)
      {
        *a3 = 1;
        return 0;
      }

      if (v3 != 1935959404)
      {
        v4 = 1987080038;
        goto LABEL_14;
      }
    }

LABEL_15:
    *a3 = 0;
    return 0;
  }

  if (v3 <= 1668510817)
  {
    if (v3 != 1650750320)
    {
      v4 = 1668506479;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v3 == 1668510818 || v3 == 1684234612)
  {
    goto LABEL_15;
  }

  v4 = 1685283695;
LABEL_14:
  if (v3 == v4)
  {
    goto LABEL_15;
  }

  return sub_6FF0();
}

uint64_t sub_451B4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  *a5 = 0;
  v6 = *a2;
  if (*a2 <= 1701015153)
  {
    if (v6 > 1668641651)
    {
      if (v6 == 1668641652)
      {
        result = sub_6FF8();
        *a5 += 120;
        return result;
      }

      if (v6 == 1684234612)
      {
LABEL_25:
        v9 = 4;
        goto LABEL_26;
      }

      v7 = 1685283695;
    }

    else
    {
      if (v6 == 1650750320)
      {
        v9 = 8;
        goto LABEL_26;
      }

      if (v6 == 1668506479)
      {
        goto LABEL_25;
      }

      v7 = 1668510818;
    }

    goto LABEL_24;
  }

  if (v6 > 1935896429)
  {
    if (v6 == 1935896430 || v6 == 1935959404)
    {
      goto LABEL_25;
    }

    v7 = 1987080038;
LABEL_24:
    if (v6 == v7)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  if (v6 == 1701015154 || v6 == 1852992613)
  {
    goto LABEL_25;
  }

  if (v6 == 1853059619)
  {
    v8 = *(a1 + 9324);
    if (*(a1 + 9324))
    {
      v8 = 16;
      *a5 = 16;
    }

    if (*(a1 + 9325))
    {
      v8 += 16;
      *a5 = v8;
    }

    if (*(a1 + 9326))
    {
      v8 += 16;
      *a5 = v8;
    }

    if (!*(a1 + 9328))
    {
      return 0;
    }

    v9 = v8 + 16;
LABEL_26:
    *a5 = v9;
    return 0;
  }

LABEL_30:

  return sub_6FF8();
}

uint64_t sub_45354(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int *a7, int *a8)
{
  v12 = *a2;
  if (*a2 <= 1701015153)
  {
    if (v12 <= 1668641651)
    {
      if (v12 != 1650750320)
      {
        v13 = 1668506479;
        if (v12 != 1668506479)
        {
          if (v12 == 1668510818)
          {
            result = 0;
            v15 = 1;
LABEL_72:
            *a8 = v15;
            goto LABEL_73;
          }

          goto LABEL_76;
        }

LABEL_28:
        result = 0;
        *a8 = v13;
LABEL_73:
        v18 = 4;
        goto LABEL_74;
      }

      v19 = sub_4272C(a1);
      result = 0;
      *a8 = v19;
      v18 = 8;
LABEL_74:
      *a7 = v18;
      return result;
    }

    if (v12 != 1668641652)
    {
      if (v12 == 1684234612)
      {
        result = 0;
        v15 = *(a1 + 9304);
        goto LABEL_72;
      }

      v13 = 1685283695;
      if (v12 == 1685283695)
      {
        goto LABEL_28;
      }

LABEL_76:

      return sub_7000();
    }

    result = sub_7000();
    if (result)
    {
      return result;
    }

    v20 = *a7;
    v21 = (a6 - v20) / 0xC;
    if (v21 >= 0xA)
    {
      v21 = 10;
    }

    if (a6 - v20 < 0xC)
    {
LABEL_66:
      result = 0;
      v18 = v20 + 12 * v21;
      goto LABEL_74;
    }

    v22 = 0;
    v23 = (a8 + v20);
    if (v21 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v21;
    }

    while (1)
    {
      if (v22 > 4)
      {
        if (v22 <= 6)
        {
          if (v22 == 5)
          {
            *(v23 + 60) = 0x726177776E726C65;
            v25 = v23 + 17;
          }

          else
          {
            v23[9] = 0x706C737462647370;
            v25 = v23 + 10;
          }

          goto LABEL_63;
        }

        switch(v22)
        {
          case 7:
            *(v23 + 84) = 0x726177777364656CLL;
            v25 = v23 + 23;
            goto LABEL_63;
          case 8:
            v23[12] = 0x7261777761746274;
            v25 = v23 + 13;
            goto LABEL_63;
          case 9:
            *(v23 + 108) = 0x7261777776706F66;
            v25 = v23 + 29;
LABEL_63:
            *v25 = 0;
            break;
        }
      }

      else
      {
        if (v22 > 1)
        {
          if (v22 == 2)
          {
            v23[3] = 0x726177776373636FLL;
            v25 = v23 + 4;
          }

          else if (v22 == 3)
          {
            *(v23 + 36) = 0x726177776473636FLL;
            v25 = v23 + 11;
          }

          else
          {
            v23[6] = 0x7261777765636E72;
            v25 = v23 + 7;
          }

          goto LABEL_63;
        }

        if (!v22)
        {
          *v23 = 0x7261777764636174;
          v25 = v23 + 1;
          goto LABEL_63;
        }

        if (v22 == 1)
        {
          *(v23 + 12) = 0x7261777773636F6ELL;
          v25 = v23 + 5;
          goto LABEL_63;
        }
      }

      if (v24 == ++v22)
      {
        LODWORD(v20) = *a7;
        goto LABEL_66;
      }
    }
  }

  if (v12 > 1935896429)
  {
    switch(v12)
    {
      case 1935896430:
        result = 0;
        v26 = atomic_load((a1 + 288));
        v15 = v26 & 1;
        goto LABEL_72;
      case 1935959404:
        result = 0;
        v15 = *(a1 + 9320);
        goto LABEL_72;
      case 1987080038:
        result = 0;
        v15 = *(a1 + 9355);
        goto LABEL_72;
    }

    goto LABEL_76;
  }

  if (v12 == 1701015154)
  {
    result = 0;
    v15 = *(a1 + 9308);
    goto LABEL_72;
  }

  if (v12 != 1852992613)
  {
    if (v12 == 1853059619)
    {
      v16 = 0;
      if (a6 >> 4 >= 3)
      {
        v17 = 3;
      }

      else
      {
        v17 = a6 >> 4;
      }

      if (a6 >= 0x10 && *(a1 + 9324))
      {
        *a8 = vdupq_n_s64(0x40BF400000000000uLL);
        v16 = 1;
      }

      if (a6 >> 4 > v16 && *(a1 + 9325))
      {
        *&a8[4 * v16++] = vdupq_n_s64(0x40CF400000000000uLL);
      }

      if (*(a1 + 9326) && !*(a1 + 9345) && v16 < v17)
      {
        *&a8[4 * v16++] = vdupq_n_s64(0x40D7700000000000uLL);
      }

      result = 0;
      v18 = 16 * v16;
      goto LABEL_74;
    }

    goto LABEL_76;
  }

  if (*(a1 + 9308))
  {
    v27 = *(a1 + 9316);
  }

  else
  {
    v27 = 4;
  }

  result = 0;
  *a8 = v27;
  *a7 = 4;
  return result;
}

uint64_t sub_457B4(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int *a4, uint64_t a5, _BYTE *a6)
{
  if (*a2 == 1935896430)
  {
    sub_43424(a1, *a6 != 0, *a4);
    return 0;
  }

  else
  {

    return sub_7008();
  }
}

uint64_t sub_4582C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, int *a6)
{
  *a6 = 0;
  if (*a3 != 1936092513 && *a3 != 1885762657)
  {
    return sub_7020();
  }

  v7 = *(a1 + 9324);
  if (*(a1 + 9324))
  {
    v7 = 56;
    *a6 = 56;
  }

  if (*(a1 + 9325))
  {
    v7 += 56;
    *a6 = v7;
  }

  if (*(a1 + 9326))
  {
    v7 += 56;
    *a6 = v7;
  }

  if (*(a1 + 9328))
  {
    *a6 = v7 + 56;
  }

  return 0;
}

uint64_t sub_458A0(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, _DWORD *a8, uint64_t a9)
{
  if (*a3 == 1936092513 || *a3 == 1885762657)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v13 = sub_F7EC(a2);
    (*(*a1 + 824))(&v25, a1, v13);
    v14 = 0;
    if (a7 / 0x38 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = a7 / 0x38;
    }

    if (a7 >= 0x38 && *(a1 + 9324))
    {
      *&v25 = 0x40BF400000000000;
      *(a9 + 32) = v27;
      v16 = v26;
      *a9 = v25;
      *(a9 + 16) = v16;
      *(a9 + 40) = vdupq_n_s64(0x40BF400000000000uLL);
      v14 = 1;
    }

    if (a7 / 0x38 > v14 && *(a1 + 9325) != 0)
    {
      *&v25 = 0x40CF400000000000;
      v18 = a9 + 56 * v14;
      *(v18 + 32) = v27;
      v19 = v26;
      *v18 = v25;
      *(v18 + 16) = v19;
      *(v18 + 40) = vdupq_n_s64(0x40CF400000000000uLL);
      ++v14;
    }

    if (*(a1 + 9326) && !*(a1 + 9345) && v14 < v15)
    {
      *&v25 = 0x40D7700000000000;
      v20 = a9 + 56 * v14;
      *(v20 + 32) = v27;
      v21 = v26;
      *v20 = v25;
      *(v20 + 16) = v21;
      *(v20 + 40) = vdupq_n_s64(0x40D7700000000000uLL);
      ++v14;
    }

    if (*(a1 + 9328) && !*(a1 + 9345) && v14 < v15)
    {
      *&v25 = 0x40D7700000000000;
      v22 = a9 + 56 * v14;
      *(v22 + 32) = v27;
      v23 = v26;
      *v22 = v25;
      *(v22 + 16) = v23;
      *(v22 + 40) = vdupq_n_s64(0x40D7700000000000uLL);
      ++v14;
    }

    *a8 = 56 * v14;
    return 0;
  }

  else
  {

    return sub_7028();
  }
}

uint64_t sub_45AD4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (*a3 != 1936092532 && *a3 != 1885762592)
  {

    return sub_7030();
  }

  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEBUG))
  {
    sub_7D844();
    if (!a7)
    {
      return 0;
    }
  }

  else if (!a7)
  {
    return 0;
  }

  v10 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEBUG))
  {
    sub_7D878(a7, v10);
  }

  result = (*(*a1 + 528))(a1, *a7);
  if (!result)
  {
    (*(*a1 + 240))(a1, 1853059619, *a7);
    return 0;
  }

  return result;
}

uint64_t sub_45C0C(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(*(a1 + 416) + 9176))
  {
    v5 = (*(*a2 + 16))(a2);
    if (v5 == (*(**(*(a1 + 416) + 9176) + 16))(*(*(a1 + 416) + 9176)))
    {
      v6 = *a3;
      v7 = *a3 == 1935892841 || v6 == 1935893353;
      if (v7 || v6 == 1935894894)
      {
        return 1;
      }
    }
  }

  return sub_7038();
}

uint64_t sub_45D04(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4)
{
  if (*(*(a1 + 416) + 9176))
  {
    v7 = (*(*a2 + 16))(a2);
    if (v7 == (*(**(*(a1 + 416) + 9176) + 16))(*(*(a1 + 416) + 9176)))
    {
      v8 = *a3;
      if (*a3 == 1935894894)
      {
        goto LABEL_6;
      }

      if (v8 == 1935893353)
      {
        *a4 = 1;
        return 0;
      }

      if (v8 == 1935892841)
      {
LABEL_6:
        *a4 = 0;
        return 0;
      }
    }
  }

  return sub_7040();
}

uint64_t sub_45E28(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (*(*(a1 + 416) + 9176))
  {
    v9 = (*(*a2 + 16))(a2);
    if (v9 == (*(**(*(a1 + 416) + 9176) + 16))(*(*(a1 + 416) + 9176)))
    {
      v10 = *a3;
      if (*a3 == 1935892841)
      {
        v11 = 16;
        goto LABEL_12;
      }

      if (v10 == 1935894894)
      {
        v11 = 8;
        goto LABEL_12;
      }

      if (v10 == 1935893353)
      {
        v11 = 4;
LABEL_12:
        *a6 = v11;
        return 0;
      }
    }
  }

  return sub_723C();
}

uint64_t sub_45F70(uint64_t a1, uint64_t a2, int *a3, int a4, int *a5, unsigned int a6, int *a7, int *a8)
{
  if (!*(*(a1 + 416) + 9176))
  {
    goto LABEL_15;
  }

  v15 = (*(*a2 + 16))(a2);
  if (v15 != (*(**(*(a1 + 416) + 9176) + 16))(*(*(a1 + 416) + 9176)))
  {
    goto LABEL_15;
  }

  v16 = *a3;
  if (*a3 <= 1935892840)
  {
    if (v16 == 1650682995)
    {
      if (a6 <= 3)
      {
        v17 = 561211770;
        if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_ERROR))
        {
          sub_7D9C4();
        }

        return v17;
      }

      v17 = 0;
      v20 = 1936483188;
    }

    else
    {
      if (v16 != 1668047219)
      {
        goto LABEL_15;
      }

      if (a6 <= 3)
      {
        v17 = 561211770;
        if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_ERROR))
        {
          sub_7D990();
        }

        return v17;
      }

      v17 = 0;
      v20 = 1685287523;
    }

LABEL_38:
    *a8 = v20;
    v19 = 4;
LABEL_48:
    *a7 = v19;
    return v17;
  }

  switch(v16)
  {
    case 1935892841:
      if (a6 < 4)
      {
        v19 = 0;
      }

      else
      {
        *a8 = 1936221033;
        if (a6 < 8)
        {
          v19 = 4;
        }

        else
        {
          a8[1] = 1935827571;
          if (a6 < 0xC)
          {
            v19 = 8;
          }

          else
          {
            a8[2] = 1935765619;
            if (a6 < 0x10)
            {
              v19 = 12;
            }

            else
            {
              a8[3] = 1935765620;
              v19 = 16;
            }
          }
        }
      }

      v17 = 0;
      goto LABEL_48;
    case 1935893353:
      if (a6 <= 3)
      {
        v17 = 561211770;
        if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_ERROR))
        {
          sub_7D95C();
        }

        return v17;
      }

      v17 = 0;
      v20 = *(a1 + 9348);
      goto LABEL_38;
    case 1935894894:
      if (a6 <= 7)
      {
        v17 = 561211770;
        if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_ERROR))
        {
          sub_7D928();
        }

        return v17;
      }

      if (a4 != 4)
      {
        v17 = 561211770;
        if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_ERROR))
        {
          sub_7D8F4();
        }

        return v17;
      }

      v21 = *a5;
      if (v21 > 1935827570)
      {
        if (v21 == 1936221033)
        {
          v22 = @"HCI";
          goto LABEL_54;
        }

        if (v21 == 1935827571)
        {
          v22 = @"Baseband I2S";
          goto LABEL_54;
        }
      }

      else
      {
        if (v21 == 1935765619)
        {
          v22 = @"API2S";
          goto LABEL_54;
        }

        if (v21 == 1935765620)
        {
          v22 = @"API2S16kHz";
LABEL_54:
          v17 = 0;
          *a8 = v22;
          v19 = 8;
          goto LABEL_48;
        }
      }

      v17 = 1852797029;
      v23 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_ERROR))
      {
        v24[0] = HIBYTE(v21);
        v24[1] = BYTE2(v21);
        v24[2] = BYTE1(v21);
        v24[3] = v21;
        v24[4] = 0;
        *buf = 136446210;
        v26 = v24;
        _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "An invalid data source of %{public}s was selected", buf, 0xCu);
      }

      return v17;
  }

LABEL_15:

  return sub_7244();
}

uint64_t sub_463F8(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, int a6, int *a7)
{
  if (*(*(a1 + 416) + 9176))
  {
    v12 = (*(*a2 + 16))(a2);
    if (v12 == (*(**(*(a1 + 416) + 9176) + 16))(*(*(a1 + 416) + 9176)))
    {
      if (*a3 != 1935893353)
      {
        return 2003332927;
      }

      if (a6 != 4)
      {
        v16 = 561211770;
        if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_ERROR))
        {
          sub_7D9F8();
        }

        return v16;
      }

      v13 = *a7;
      *(a1 + 9348) = *a7;
      if (*(a1 + 208))
      {
        switch(v13)
        {
          case 1935765619:
            if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEBUG))
            {
              sub_7DA2C();
            }

            break;
          case 1935827571:
            if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEBUG))
            {
              sub_7DA60();
            }

            break;
          case 1936221033:
            if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEBUG))
            {
              sub_7DA94();
            }

            if (!*(a1 + 9326))
            {
              goto LABEL_26;
            }

            v14 = 0;
            goto LABEL_25;
          default:
            v16 = 1852797029;
            if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_ERROR))
            {
              sub_7DAC8();
            }

            return v16;
        }

        if (*(a1 + 9326))
        {
          v14 = 1;
LABEL_25:
          *(a1 + 9345) = v14;
          (*(*a1 + 240))(a1, 1853059619, *(a1 + 296));
        }
      }

LABEL_26:
      v20 = 0x676C6F6273636369;
      v21 = 0;
      v17 = *(qword_D8DF0 + 144);
      v18 = *v17;
      v19 = (*(*a2 + 16))(a2);
      v18(v17, v19, 1, &v20);
      return 0;
    }
  }

  return sub_724C();
}

void sub_46734(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    sub_11D6C(v1);
  }
}

std::string *sub_46744@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 23) = 7;
  strcpy(a2, "Unknown");
  v3 = "mSBC";
  v4 = "Unknown Codec";
  if (a1 == 256)
  {
    v4 = "CVSD";
  }

  if (a1 != 257)
  {
    v3 = v4;
  }

  if (a1 == 510)
  {
    v5 = "AAC-ELD";
  }

  else
  {
    v5 = v3;
  }

  return std::string::assign(a2, v5);
}

void sub_467CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_467E8(uint64_t a1, BOOL a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_1412C(v2, a2);
  }
}

void sub_467F8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_14250(v2, a2);
  }
}

void sub_46808(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kBTAudioMsgPropertyDeviceUID");
  if (!string)
  {
    v4 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
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
  v13 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (*(*a1 + 16))(a1);
    v15 = 136315394;
    v16 = string;
    v17 = 1024;
    v18 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "HFP Device XPC connection for UID %s connected to[ %d ] ", &v15, 0x12u);
    v12 = *(a1 + 200);
  }

  **(a1 + 208) = v12;
}

uint64_t sub_46964(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 1)
  {
    v8 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
    {
      sub_771FC(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  (*(*a1 + 824))(v20, a1, a4);
  v16 = v20[1];
  *a2 = v20[0];
  *(a2 + 1) = v16;
  a2[4] = v21;
  *(a2 + 5) = (*(*a1 + 808))(a1);
  *(a2 + 6) = (*(*a1 + 808))(a1);
  v17 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *a2;
    LODWORD(v20[0]) = 134217984;
    *(v20 + 4) = v18;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Physical Format Supported %f", v20, 0xCu);
  }

  return a3;
}

uint64_t sub_46B24(uint64_t a1, double *a2, uint64_t a3)
{
  if (a3 != 1)
  {
    v6 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_FAULT))
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

uint64_t sub_46C04(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 / (*(*a1 + 808))(a1) * 1000.0;
  if (sub_42134() && v4 > 20.0)
  {
    v5 = qword_D8558;
    if (!os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      return *(a1 + 9440);
    }

LABEL_4:
    v6 = *(a1 + 9440);
    v8[0] = 67109376;
    v8[1] = v2;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Negotiated Frame Size, HAL Request : %d BTHAL Proposed %d ", v8, 0xEu);
    return *(a1 + 9440);
  }

  if (sub_70818() && _os_feature_enabled_impl() && *(a1 + 9444) == 1 && v4 > 10.0)
  {
    v5 = qword_D8558;
    if (!os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      return *(a1 + 9440);
    }

    goto LABEL_4;
  }

  return v2;
}

BOOL sub_46DDC(uint64_t *a1, int a2, double a3, double a4)
{
  v5 = *a1;
  if (a2)
  {
    (*(v5 + 816))();
  }

  else
  {
    v6 = (*(v5 + 808))();
  }

  return v6 == a4;
}

uint64_t sub_46E58(uint64_t a1, int a2, int a3)
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

BOOL sub_46F4C(uint64_t a1, uint64_t a2)
{
  *(a1 + 9444) = a2;
  v4 = +[BTAudioAVNotificationMonitor sharedInstance];
  (*(*a1 + 864))(__p, a1);
  [(BTAudioAVNotificationMonitor *)v4 notifyFarFieldBluetoothRouteEnableStatus:a2 btAddress:__p];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  sub_64CC4(*(a1 + 416));
  v7 = 0;
  v5 = sub_6D0F8(*(a1 + 416), &v7, 1);
  if (v5)
  {
    (*(*a1 + 536))(a1, v7);
  }

  return v5;
}

void sub_47054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_47070(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_70AF4(v20, a1 + 600);
  v8 = sub_1C00(a1, a4);
  if (a2 == a3)
  {
    goto LABEL_36;
  }

  if (a2 != 1953719151)
  {
LABEL_16:
    if (a3 != 1953719151)
    {
      goto LABEL_36;
    }

    *(a1 + 9354) = v8 == 1919708275;
    if (v8 == 1936090482 || sub_44794(a1) && v8 == 1918989668)
    {
LABEL_30:
      *(a1 + 9436) = 1;
      sub_64CC4(*(a1 + 416));
      v19[0] = 0;
      if (!sub_6D0F8(*(a1 + 416), v19, 1))
      {
        v11 = qword_D8558;
        if (!os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        *buf = 0;
        v12 = "HFPStereo facetime skip stereo enable";
        goto LABEL_33;
      }

LABEL_25:
      (*(*a1 + 536))(a1, v19[0]);
      goto LABEL_34;
    }

    if (v8 == 1919312242)
    {
      if (_os_feature_enabled_impl())
      {
        if (!sub_46F4C(a1, 1))
        {
          v11 = qword_D8558;
          if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v12 = "HFPStereo Farfield Input skip stereo enable";
LABEL_33:
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
          }
        }
      }
    }

    else if (v8 == 1919115628)
    {
      if (sub_70818())
      {
        *(a1 + 9437) = 1;
        if (*(a1 + 9340) == 130)
        {
          sub_64CC4(*(a1 + 416));
          v19[0] = 0;
          if (sub_6D0F8(*(a1 + 416), v19, 1))
          {
            goto LABEL_25;
          }

          v11 = qword_D8558;
          if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v12 = "HFPStereo mSCOEnableReasonCall skip codec change";
            goto LABEL_33;
          }
        }
      }
    }

LABEL_34:
    v13 = sub_42AA8(a1);
    (*(*a1 + 528))(a1, v13);
    if (*(a1 + 509) == 1)
    {
      sub_43424(a1, 1u, v8);
    }

    goto LABEL_36;
  }

  if ((*(*a1 + 1024))(a1))
  {
    pthread_mutex_lock((a1 + 664));
    pthread_cond_signal((a1 + 728));
    pthread_mutex_unlock((a1 + 664));
  }

  if (v8 == 1919115628)
  {
    if (sub_70818())
    {
      *(a1 + 9437) = 0;
    }

    goto LABEL_16;
  }

  if (v8 == 1919312242)
  {
    if (_os_feature_enabled_impl())
    {
      if (!sub_46F4C(a1, 0))
      {
        v9 = qword_D8558;
        if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "HFPStereo Farfield Input skip stereo disable", buf, 2u);
        }
      }
    }

    goto LABEL_16;
  }

  if (v8 != 1936090482)
  {
    goto LABEL_16;
  }

  *(a1 + 9436) = 0;
  sub_64CC4(*(a1 + 416));
  v19[0] = 0;
  if (sub_6D0F8(*(a1 + 416), v19, 1))
  {
    (*(*a1 + 536))(a1, v19[0]);
  }

  else
  {
    v10 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "HFPStereo facetime skip stereo disable", buf, 2u);
    }
  }

  if (a3 == 1953719151)
  {
    *(a1 + 9354) = 0;
    goto LABEL_30;
  }

LABEL_36:
  v14 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = HIBYTE(a2);
    v19[1] = BYTE2(a2);
    v19[2] = BYTE1(a2);
    v19[3] = a2;
    v19[4] = 0;
    v18[0] = HIBYTE(a3);
    v18[1] = BYTE2(a3);
    v18[2] = BYTE1(a3);
    v18[3] = a3;
    v18[4] = 0;
    v17[0] = BYTE3(v8);
    v17[1] = BYTE2(v8);
    v17[2] = BYTE1(v8);
    v17[3] = v8;
    v17[4] = 0;
    if (*(a1 + 508))
    {
      v15 = "Yes";
    }

    else
    {
      v15 = "No";
    }

    *buf = 136316162;
    v22 = v19;
    v23 = 2080;
    v24 = v18;
    v25 = 2080;
    v26 = v17;
    v27 = 2080;
    v28 = "No";
    v29 = 2080;
    v30 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Profile Transition %s => %s , reason %s streamChangeReqd = %s Need Transport Ready %s", buf, 0x34u);
  }

  sub_70C40(v20);
  return 0;
}

void sub_47608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

BOOL sub_47630(_BYTE *a1, int a2, int a3, uint64_t a4)
{
  v28[0] = 0;
  v28[1] = 0;
  sub_70AF4(v28, (a1 + 600));
  v8 = sub_42AA8(a1);
  v9 = sub_1C00(a1, a4);
  v10 = v9;
  v11 = 0;
  if (a2 != 1953719151 || v9 == a3)
  {
    goto LABEL_59;
  }

  a1[9354] = 0;
  v11 = a3 == 1919708275;
  if (a3 == 1919708275)
  {
    (*(*a1 + 528))(a1, v8);
    (*(*a1 + 240))(a1, 1853059700, v8);
  }

  if ((*(*a1 + 1024))(a1))
  {
    pthread_mutex_lock((a1 + 664));
    pthread_cond_signal((a1 + 728));
    pthread_mutex_unlock((a1 + 664));
  }

  if (a3 == 1936090482 || (v12 = sub_44794(a1), a3 == 1918989668) && v12)
  {
    v13 = *(a1 + 52);
    if (*(*(v13 + 9280) + 244))
    {
      if (*(a1 + 2332))
      {
        a1[9436] = 0;
        sub_64CC4(v13);
        v27[0] = 0;
        if (sub_6D0F8(*(a1 + 52), v27, 1))
        {
          (*(*a1 + 536))(a1, v27[0]);
        }

        else
        {
          v14 = qword_D8558;
          if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "HFPStereo facetime skip stereo disable", buf, 2u);
          }
        }

        (*(*a1 + 240))(a1, 1885762592, a1 + 296);
        v11 = 1;
      }
    }
  }

  if (a3 == 1919115628 && sub_70818())
  {
    a1[9437] = 0;
  }

  if (*(*(*(a1 + 52) + 9280) + 244) && a3 == 1919312242 && *(a1 + 2332) && _os_feature_enabled_impl())
  {
    if (!sub_46F4C(a1, 0))
    {
      v15 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "HFPStereo Farfield Input skip stereo disable", buf, 2u);
      }
    }

    (*(*a1 + 240))(a1, 1885762592, a1 + 296);
    v11 = 1;
  }

  if (v10 <= 1919312241)
  {
    if (v10 == 1918989668)
    {
      if (!sub_44794(a1))
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    if (v10 == 1919115628)
    {
      if (sub_70818())
      {
        a1[9437] = 1;
        if (*(a1 + 2335) == 130)
        {
          sub_64CC4(*(a1 + 52));
          v27[0] = 0;
          if (sub_6D0F8(*(a1 + 52), v27, 1))
          {
            (*(*a1 + 536))(a1, v27[0]);
          }

          else
          {
            v25 = qword_D8558;
            if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "HFPStereo mSCOEnableReasonCall skip codec enable", buf, 2u);
            }
          }

          (*(*a1 + 240))(a1, 1885762592, a1 + 9104);
          if (a1[509] == 1)
          {
            sub_43424(a1, 1u, 1919115628);
          }

LABEL_33:
          v11 = 1;
        }
      }
    }
  }

  else
  {
    if (v10 != 1919312242)
    {
      if (v10 != 1936090482)
      {
        if (v10 != 1919708275)
        {
          goto LABEL_59;
        }

        a1[9354] = 1;
        (*(*a1 + 528))(a1, v8);
        (*(*a1 + 240))(a1, 1853059700, v8);
        goto LABEL_33;
      }

LABEL_50:
      v17 = *(a1 + 52);
      if (*(*(v17 + 9280) + 244) && *(a1 + 2332))
      {
        a1[9436] = 1;
        sub_64CC4(v17);
        v27[0] = 0;
        if (sub_6D0F8(*(a1 + 52), v27, 1))
        {
          (*(*a1 + 536))(a1, v27[0]);
        }

        else
        {
          v18 = qword_D8558;
          if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "HFPStereo facetime skip stereo enable", buf, 2u);
          }
        }

        (*(*a1 + 240))(a1, 1885762592, a1 + 9104);
        v11 = 1;
      }

      if (a1[509] == 1)
      {
        sub_43424(a1, 1u, v10);
      }

      goto LABEL_59;
    }

    if (_os_feature_enabled_impl())
    {
      if (*(*(*(a1 + 52) + 9280) + 244) && *(a1 + 2332))
      {
        if (!sub_46F4C(a1, 1))
        {
          v16 = qword_D8558;
          if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "HFPStereo Farfield Input skip stereo enable", buf, 2u);
          }
        }

        (*(*a1 + 240))(a1, 1885762592, a1 + 9104);
        v11 = 1;
      }

      if (a1[509] == 1)
      {
        sub_43424(a1, 1u, 1919312242);
      }
    }
  }

LABEL_59:
  v19 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v27[0] = HIBYTE(a3);
    v27[1] = BYTE2(a3);
    v27[2] = BYTE1(a3);
    v27[3] = a3;
    v27[4] = 0;
    v26[0] = BYTE3(v10);
    v26[1] = BYTE2(v10);
    v26[2] = BYTE1(v10);
    v26[3] = v10;
    v26[4] = 0;
    v20 = (*(*a1 + 1200))(a1);
    v21 = "No";
    v22 = a1[508];
    v30 = v27;
    v32 = v26;
    if (v11)
    {
      v23 = "Yes";
    }

    else
    {
      v23 = "No";
    }

    *buf = 136316162;
    v31 = 2080;
    if (v22)
    {
      v21 = "Yes";
    }

    v33 = 2080;
    v34 = v23;
    v35 = 1024;
    v36 = v20;
    v37 = 2080;
    v38 = v21;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "HFP change reason %s => %s Blocking for Stream Change : %s, current transport status %d Need Transport Ready %s", buf, 0x30u);
  }

  sub_70C40(v28);
  return v11;
}

void sub_47E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

void sub_47E90(void *a1)
{
  v2 = a1[52];
  if (*(*(v2 + 9280) + 230) == 1)
  {
    v3 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HFP notify kBluetoothAudioDevicePropertySpatialMode change", v6, 2u);
      v2 = a1[52];
    }

    sub_5AAC0(v2, 1936747876);
  }

  v4 = ((*(*a1 + 808))(a1) * 20.0 / 1000.0);
  *(a1 + 2360) = v4;
  v5 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Update Max Supported Frame Size %d", v6, 8u);
  }

  if (*(*(a1[52] + 9280) + 224) == 1)
  {
    (*(*a1 + 536))(a1, 4);
  }
}

uint64_t sub_48050(uint64_t result)
{
  v1 = -32.0;
  if (*(*(*(result + 416) + 9280) + 504))
  {
    v1 = -52.0;
  }

  *(result + 492) = v1;
  return result;
}

void sub_48078(uint64_t a1, _BOOL4 a2)
{
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notify Expanse in A2DP %d", v6, 8u);
  }

  v5 = *(a1 + 208);
  if (v5)
  {
    sub_12A48(v5, a2);
  }
}

void sub_48134(uint64_t a1, _BOOL4 a2)
{
  v4 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notify Call Screening State:%d", v6, 8u);
  }

  v5 = *(a1 + 208);
  if (v5)
  {
    sub_12B90(v5, a2);
  }
}

__n128 sub_481F0@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    if (!*(a1 + 9354))
    {
      v9 = *(a1 + 9340);
      if (v9)
      {
        if (v9 == 128)
        {
          v5 = 9144;
          goto LABEL_9;
        }

        if (*(a1 + 9328))
        {
          v5 = 9104;
          goto LABEL_9;
        }
      }
    }

    goto LABEL_8;
  }

  if ((sub_42134() & 1) != 0 || !*(a1 + 9340) || !*(a1 + 9328) || *(a1 + 9354))
  {
LABEL_8:
    v5 = 296;
    goto LABEL_9;
  }

  v5 = 9184;
LABEL_9:
  v6 = a1 + v5;
  result = *v6;
  v8 = *(v6 + 16);
  *a3 = *v6;
  *(a3 + 16) = v8;
  *(a3 + 32) = *(v6 + 32);
  return result;
}

BOOL sub_48290(uint64_t a1, _BYTE *a2, __int16 a3)
{
  if (a2)
  {
    v6 = sub_51DD0(qword_D8DF0);
    v7 = *(*(a1 + 416) + 9280);
    v8 = *(v7 + 624);
    v9 = v8 + 1;
    *(v7 + 624) = v8 + 1;
    *a2 = ((v8 + 1) >> 8) & 7 | 0xB0;
    a2[1] = v8 + 1;
    a2[2] = (v6 >> 15) & 7 | 0xE8;
    a2[3] = v6 >> 7;
    a2[4] = v6 & 0x7F;
    if (*(a1 + 793) == 1)
    {
      v10 = qword_D8558;
      if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218496;
        v14 = v6;
        v15 = 1024;
        v16 = v6 & 0x3FFFF;
        v17 = 1024;
        v18 = v9 & 0x7FF;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Current Host Time: %llu; Current Host Time: (converted to 18 bits) %d; A2DP Frame number: %d", &v13, 0x18u);
      }
    }

    a2[8] = HIBYTE(a3) & 7 | 0x10;
    a2[9] = a3;
  }

  else if (*(a1 + 793) == 1)
  {
    v11 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "AACELDHeader-Header buffer size is NULL", &v13, 2u);
    }
  }

  return a2 != 0;
}

void sub_48430(uint64_t a1, int a2)
{
  if (a2 == 1952539500)
  {
    v3 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      sub_9490(2u, __p);
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v9 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Send Transiton Message %{public}s ", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v5 = *(a1 + 208);
    if (v5)
    {
      sub_11D00(v5, 2);
    }
  }
}

uint64_t sub_4852C(uint64_t result, int a2, int a3, unsigned int a4)
{
  if (*(result + 510) == 1)
  {
    v7 = result;
    v8 = qword_D8558;
    if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(v7 + 416) + 9296);
      v15[0] = BYTE3(v9);
      v15[1] = BYTE2(v9);
      v15[2] = BYTE1(v9);
      v15[3] = v9;
      v15[4] = 0;
      v14[0] = HIBYTE(a3);
      v14[1] = BYTE2(a3);
      v14[2] = BYTE1(a3);
      v14[3] = a3;
      v14[4] = 0;
      sub_9490(a4, __p);
      if (v13 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315650;
      v17 = v15;
      v18 = 2080;
      v19 = v14;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Handsfree Profile HandleTransportOnRouteChange %s => %s Recommended Transtion : %s", buf, 0x20u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a3 == 1919183219)
    {
      v11 = *(*(v7 + 416) + 9296);
    }

    else if (a2 == 1952539500)
    {
      (*(*v7 + 1464))(v7, 1952539500);
LABEL_13:
      *(v7 + 510) = 0;
      return (*(*v7 + 1448))(v7);
    }

    (*(*v7 + 1424))(v7, 0);
    goto LABEL_13;
  }

  return result;
}

void sub_48770(uint64_t a1, int a2)
{
  v4 = *(*(*(a1 + 416) + 9280) + 222);
  v5 = v4 & a2;
  v6 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Send";
    if (v5)
    {
      v7 = @"Not Send";
    }

    if (a2)
    {
      v8 = @"IO Stop";
    }

    else
    {
      v8 = @"Route Change/Timer";
    }

    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    if (v4)
    {
      v9 = @"Enabled";
    }

    else
    {
      v9 = @"Disabled";
    }

    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Evaluate Transport Transition,  %@ Handsfree Stop Message to bluetoothd:, Trigger Type: %@ Route transition: %@", &v11, 0x20u);
  }

  if (v5)
  {
    (*(*a1 + 1440))(a1);
  }

  else
  {
    v10 = *(a1 + 208);
    if (v10)
    {
      sub_11CAC(v10);
    }
  }

  *(a1 + 510) = v5;
}

uint64_t sub_488D8(uint64_t a1)
{
  v2 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Start HFP-A2DP Transtion timer", buf, 2u);
  }

  v3 = (*(**(a1 + 416) + 16))(*(a1 + 416));
  *buf = 0;
  v10 = 0;
  sub_70AF4(buf, a1 + 512);
  v4 = *(a1 + 576);
  if (v4)
  {
    if (!dispatch_block_testcancel(*(a1 + 576)))
    {
      dispatch_block_cancel(v4);
      v4 = *(a1 + 576);
    }

    _Block_release(v4);
    *(a1 + 576) = 0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_48A4C;
  v7[3] = &unk_AE9B8;
  v7[4] = a1;
  v8 = v3;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v7);
  *(a1 + 576) = v5;
  sub_51628(qword_D8DF0, 200, v3, v5);
  sub_70BD4(buf);
  return sub_70C40(buf);
}

void sub_48A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_48A4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_508C0(qword_D8DF0, *(a1 + 40));
  if (v2)
  {
    v3 = v2[1137];
    if (v3)
    {
      if (v3[192] == 1 && v3[510] == 1)
      {
        (*(*v3 + 1424))(v3, 0);
      }
    }
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_70AF4(v5, v1 + 512);
  _Block_release(*(v1 + 576));
  *(v1 + 576) = 0;
  sub_70BD4(v5);
  return sub_70C40(v5);
}

uint64_t sub_48B20(uint64_t a1)
{
  v2 = qword_D8558;
  if (os_log_type_enabled(qword_D8558, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Reset HFP-A2DP Transtion timer", v5, 2u);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_70AF4(v5, a1 + 512);
  v3 = *(a1 + 576);
  if (v3)
  {
    if (!dispatch_block_testcancel(*(a1 + 576)))
    {
      dispatch_block_cancel(v3);
    }

    *(a1 + 576) = 0;
  }

  sub_70BD4(v5);
  return sub_70C40(v5);
}

uint64_t sub_48BDC(_BYTE *a1)
{
  if (a1[510])
  {
    (*(*a1 + 1424))(a1, 0);
  }

  v2 = *(*a1 + 1448);

  return v2(a1);
}

os_log_t sub_48D6C()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D8558 = result;
  return result;
}

void sub_48EFC(uint64_t a1)
{
  v2 = sub_38E7C(a1);
  *v2 = off_B0A50;
  *(v2 + 12) = 0;
  sub_709AC(v2 + 200, v3);
  sub_709AC(a1 + 264, v4);
  sub_709AC(a1 + 328, v5);
  sub_709AC(a1 + 392, v6);
  *(a1 + 464) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = a1 + 544;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 624) = a1 + 632;
  *(a1 + 656) = 0u;
  *(a1 + 648) = a1 + 656;
  *(a1 + 672) = 0;
  v7 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    v8 = (*(*a1 + 16))(a1);
    *buf = 67109120;
    v15 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Creating audio plugin with audioID: %u", buf, 8u);
  }

  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
  *(a1 + 160) = dispatch_queue_create("com.apple.BTAudioHALPlugin", v9);
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
  *(a1 + 168) = dispatch_queue_create("com.apple.BTAudioHALPlugin.Config.Change", v10);
  v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -1);
  *(a1 + 184) = dispatch_queue_create("com.apple.BTAudioHALPlugin.Config.Change", v11);
  v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
  *(a1 + 176) = dispatch_queue_create("com.apple.BTAudioHALPlugin.Property.Change", v12);
  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -1);
  *(a1 + 192) = dispatch_queue_create("com.apple.BTAudioHALPlugin.Telemetry", v13);
  qword_D8DF0 = a1;
  *(a1 + 472) = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
  if ((sub_42134() & 1) == 0)
  {
    *(a1 + 560) = objc_alloc_init(BTAudioIDSService);
  }

  operator new();
}

void sub_4921C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  sub_16FF8(v11 + 648, *v14);
  sub_58188(v11 + 624, *v13);
  a11 = (v11 + 600);
  sub_580E4(&a11);
  a11 = (v11 + 568);
  sub_58090(&a11);
  sub_16FF8(v11 + 536, *v12);
  sub_70A28(v11 + 392, v16);
  sub_70A28(v11 + 328, v17);
  sub_70A28(v11 + 264, v18);
  sub_70A28(v11 + 200, v19);
  sub_38F74(v11);
  _Unwind_Resume(a1);
}

uint64_t *sub_492D8(uint64_t a1)
{
  result = sub_58CC4(a1 + 536, "frhctslp");
  result[5] = "frhctslp";
  return result;
}

void *sub_49328(void *result)
{
  if (!result[84])
  {
    v9[5] = v4;
    v9[6] = v3;
    v9[9] = v1;
    v9[10] = v2;
    v5 = result;
    v6 = objc_alloc_init(HMServiceClient);
    v5[84] = v6;
    [v6 setDispatchQueue:v5[20]];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_51E1C;
    v9[3] = &unk_B0BC0;
    v9[4] = v5;
    [v5[84] setDeviceRecordChangedHandler:v9];
    v7 = v5[84];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_51F38;
    v8[3] = &unk_B0BE0;
    v8[4] = v5;
    return [v7 activateWithCompletion:v8];
  }

  return result;
}

_xpc_connection_s *sub_49420(uint64_t a1)
{
  v2 = [+[NSProcessInfo processInfo](NSProcessInfo processName];
  v3 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting BTAudioPlugin for %@", buf, 0xCu);
  }

  result = xpc_connection_create_mach_service("com.apple.BTAudioHALPlugin.xpc", *(a1 + 160), 0);
  *(a1 + 480) = result;
  if (result)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_49964;
    handler[3] = &unk_B0A90;
    handler[4] = a1;
    xpc_connection_set_event_handler(result, handler);
    xpc_connection_resume(*(a1 + 480));
    v5 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Register audio plugin connection with bluetoothd", buf, 2u);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kBTAudioMsgMethod", 0xDuLL);
    xpc_dictionary_set_string(v6, "kBTAudioMsgProcess", [(NSString *)v2 UTF8String]);
    xpc_connection_send_message(*(a1 + 480), v6);
    xpc_release(v6);
    return (*(a1 + 480) != 0);
  }

  return result;
}

BOOL sub_495EC(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  v3 = qword_D8560;
  v4 = os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting XPC service for audioaccessoryd", buf, 2u);
    }

    mach_service = xpc_connection_create_mach_service("com.apple.BTAudioHALPluginAccessories", *(a1 + 160), 1uLL);
    *(a1 + 488) = mach_service;
    if (mach_service)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_49CC0;
      handler[3] = &unk_B0A90;
      handler[4] = a1;
      xpc_connection_set_event_handler(mach_service, handler);
      xpc_connection_activate(*(a1 + 488));
      v3 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "Registered audio plugin connection with audioaccessoryd";
LABEL_9:
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      }
    }
  }

  else if (v4)
  {
    *buf = 0;
    v6 = "Defaults writes for unified usb device are missing";
    goto LABEL_9;
  }

  return *(a1 + 488) != 0;
}

uint64_t sub_49754(uint64_t a1)
{
  *a1 = off_B0A50;
  v2 = a1 + 200;
  v9[0] = 0;
  v9[1] = 0;
  sub_70AF4(v9, a1 + 200);
  if (_os_feature_enabled_impl())
  {
    v3 = *(a1 + 672);
    if (v3)
    {
      [v3 invalidate];
      *(a1 + 672) = 0;
    }
  }

  CFArrayRemoveAllValues(*(a1 + 472));
  CFRelease(*(a1 + 160));
  CFRelease(*(a1 + 168));
  CFRelease(*(a1 + 184));
  CFRelease(*(a1 + 176));
  CFRelease(*(a1 + 472));
  CFRelease(*(a1 + 192));

  sub_16FF8(a1 + 536, *(a1 + 544));
  *(a1 + 536) = a1 + 544;
  *(a1 + 544) = 0u;
  if (*(a1 + 456))
  {
    nullsub_88(0.0);
    operator delete();
  }

  [*(a1 + 672) invalidate];
  *(a1 + 672) = 0;
  pthread_mutex_lock((a1 + 16));
  pthread_mutex_unlock((a1 + 16));
  pthread_mutex_destroy((a1 + 16));
  pthread_cond_destroy((a1 + 80));
  sub_70C40(v9);
  sub_16FF8(a1 + 648, *(a1 + 656));
  sub_58188(a1 + 624, *(a1 + 632));
  v9[0] = (a1 + 600);
  sub_580E4(v9);
  v9[0] = (a1 + 568);
  sub_58090(v9);
  sub_16FF8(a1 + 536, *(a1 + 544));
  sub_70A28(a1 + 392, v4);
  sub_70A28(a1 + 328, v5);
  sub_70A28(a1 + 264, v6);
  sub_70A28(v2, v7);
  return sub_38F74(a1);
}

id sub_498F8(uint64_t a1)
{
  result = *(a1 + 672);
  if (result)
  {
    result = [result invalidate];
    *(a1 + 672) = 0;
  }

  return result;
}

void sub_4992C(uint64_t a1)
{
  sub_49754(a1);

  operator delete();
}

void sub_4996C(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_error)
  {
    xpc_dictionary_get_string(object, _xpc_error_key_description);
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7DBF4();
    }

    xpc_release(*(a1 + 480));
    *(a1 + 480) = 0;
    sub_4C134(a1);
    if (!sub_70820())
    {
      sub_49420(a1);
      return;
    }

    if (object == &_xpc_error_connection_interrupted && sub_70838())
    {
      v7 = 1000000000;
      v8 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = 1;
        v9 = "Rate limiting BTAudio xpc connection restart to %d sec on dev boards";
LABEL_26:
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 8u);
      }
    }

    else if (object == &_xpc_error_connection_invalid)
    {
      v7 = 30000000000;
      v8 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = 30;
        v9 = "No connection exist or bluetoothd is rejecting connection, reconnect in %d secs";
        goto LABEL_26;
      }
    }

    else
    {
      v7 = 0;
    }

    v14 = dispatch_time(0, v7);
    v15 = *(a1 + 160);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4C2EC;
    block[3] = &unk_AD3E8;
    block[4] = a1;
    dispatch_after(v14, v15, block);
    return;
  }

  v5 = type;
  v6 = xpc_copy_description(object);
  if (v5 == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(object, "kBTAudioMsgId");
    xpc_dictionary_get_value(object, "kBTAudioMsgArgs");
    string = xpc_dictionary_get_string(object, "kBTAudioMsgDeviceUid");
    if (string)
    {
      v12 = [NSString stringWithUTF8String:string];
      v13 = qword_D8560;
      if (int64 == 2)
      {
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v12;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Publish Message from Audio Device UID: %@\n", buf, 0xCu);
        }

        sub_4C2F4();
      }

      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEBUG))
      {
        sub_7DB6C(v12, int64, v13);
      }

      sub_4B084(a1, object);
    }
  }

  else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7DAFC();
  }

  free(v6);
}

void sub_49CC8(uint64_t a1, xpc_object_t object)
{
  v4 = xpc_copy_description(object);
  type = xpc_get_type(object);
  if (object == &_xpc_error_connection_invalid || type == &_xpc_type_error)
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7DD08();
    }

    v7 = [+[NSBundle mainBundle](NSBundle bundleIdentifier];
    if (!v7)
    {
      v7 = [NSString stringWithUTF8String:getprogname()];
    }

    v8 = [NSString stringWithFormat:@"%@-%u", v7, getpid()];
    v9 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Audio Accessory XPC connection from %@", buf, 0xCu);
    }

    if (*(a1 + 504) == 1 && *(a1 + 464))
    {
      sub_4B158(a1);
    }

    v10 = *(a1 + 496);
    if (v10)
    {
      xpc_connection_cancel(v10);
      xpc_release(*(a1 + 496));
      *(a1 + 496) = 0;
    }

    v11 = *(a1 + 488);
    if (v11)
    {
      xpc_connection_cancel(v11);
      xpc_release(*(a1 + 488));
      *(a1 + 488) = 0;
    }

    if ([(NSString *)v8 containsString:@"audiomxd"]|| [(NSString *)v8 containsString:@"mediaserverd"]|| [(NSString *)v8 containsString:@"coreaudiod"])
    {
      sub_495EC(a1);
    }

    else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7DD78();
    }
  }

  else
  {
    v12 = type;
    v13 = os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR);
    if (v12 == &_xpc_type_connection)
    {
      if (v13)
      {
        sub_7DCD4();
      }

      sub_4B334(a1, object);
    }

    else if (v13)
    {
      sub_7DC64();
    }
  }

  free(v4);
}

void sub_49F3C(uint64_t a1, xpc_object_t object)
{
  v4 = xpc_copy_description(object);
  type = xpc_get_type(object);
  if (type != &_xpc_type_dictionary)
  {
    v6 = type;
    v7 = os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR);
    if (object == &_xpc_error_connection_interrupted || object == &_xpc_error_connection_invalid || v6 == &_xpc_type_error)
    {
      if (v7)
      {
        sub_7DDAC();
      }

      if (*(a1 + 504) == 1 && *(a1 + 464))
      {
        sub_4B158(a1);
      }

      v10 = *(a1 + 496);
      if (v10)
      {
        xpc_connection_cancel(v10);
        xpc_release(*(a1 + 496));
        *(a1 + 496) = 0;
      }
    }

    else if (v7)
    {
      sub_7DC64();
    }

    goto LABEL_32;
  }

  uint64 = xpc_dictionary_get_uint64(object, "kBTAudioMsgId");
  string = xpc_dictionary_get_string(object, "kBTAudioMsgDeviceUid");
  if (string)
  {
    v13 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 136315138;
      *v40 = string;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "DeviceUidString %s", &v39, 0xCu);
    }
  }

  if (uint64 > 31)
  {
    if (uint64 <= 34)
    {
      if (uint64 == 32)
      {
        v29 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v39) = 0;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "AudioAccessoryMsgIdHideUSBPort", &v39, 2u);
        }

        v30 = xpc_dictionary_get_string(object, "kAccAudioMsgArgUSBDeviceBTAddress");
        if (v30)
        {
          v19 = [NSString stringWithUTF8String:v30];
          v20 = a1;
          v21 = 1;
          goto LABEL_57;
        }

        if (!os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

LABEL_81:
        sub_7DE1C();
        goto LABEL_32;
      }

      if (uint64 == 33)
      {
        v17 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v39) = 0;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "AudioAccessoryMsgIdUnHideUSBPort", &v39, 2u);
        }

        v18 = xpc_dictionary_get_string(object, "kAccAudioMsgArgUSBDeviceBTAddress");
        if (v18)
        {
          v19 = [NSString stringWithUTF8String:v18];
          v20 = a1;
          v21 = 0;
LABEL_57:
          sub_4AE1C(v20, v19, v21);
          goto LABEL_32;
        }

        if (!os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        goto LABEL_81;
      }

LABEL_70:
      if (string)
      {
        v37 = [NSString stringWithUTF8String:string];
        v38 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 67109378;
          *v40 = uint64;
          *&v40[4] = 2112;
          *&v40[6] = v37;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "Audio Message %d from Audio Device UID: %@\n", &v39, 0x12u);
        }

        sub_4B084(a1, object);
      }

      else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7DE50();
      }

      goto LABEL_32;
    }

    if (uint64 == 35)
    {
      v35 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "AudioAccessoryMsgIdAirPlaneModeOn", &v39, 2u);
      }

      v36 = xpc_dictionary_get_string(object, "kAccAudioMsgArgUSBDeviceBTAddress");
      if (!v36)
      {
        if (!os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        goto LABEL_81;
      }

      v25 = [NSString stringWithUTF8String:v36];
      v26 = a1;
      v27 = 1;
    }

    else
    {
      if (uint64 != 36)
      {
        goto LABEL_70;
      }

      v23 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "AudioAccessoryMsgIdAirPlaneModeOff", &v39, 2u);
      }

      v24 = xpc_dictionary_get_string(object, "kAccAudioMsgArgUSBDeviceBTAddress");
      if (!v24)
      {
        if (!os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        goto LABEL_81;
      }

      v25 = [NSString stringWithUTF8String:v24];
      v26 = a1;
      v27 = 0;
    }

    sub_4AF50(v26, v25, v27);
    goto LABEL_32;
  }

  if (uint64 > 29)
  {
    if (uint64 == 30)
    {
      v31 = xpc_dictionary_get_BOOL(object, "kAccAudioMsgArgUSBDeviceHiddenState");
      v32 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        v33 = "Off";
        if (v31)
        {
          v33 = "On";
        }

        v34 = "NotHidden";
        if (v31)
        {
          v34 = "Hidden";
        }

        v39 = 136315394;
        *v40 = v33;
        *&v40[8] = 2080;
        *&v40[10] = v34;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "BT state changed, BT is %s USB-C needs to be %s", &v39, 0x16u);
      }

      [*(a1 + 464) setBtPowerState:v31];
    }

    else
    {
      v22 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "AudioAccessoryMsgIdStartPairingProcess", &v39, 2u);
      }

      [*(a1 + 464) startPairingProcess:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", string)}];
    }
  }

  else
  {
    if (uint64 != 22)
    {
      if (uint64 == 23)
      {
        v14 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v39) = 0;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "AudioAccessoryMsgIdUSBMonitorStart", &v39, 2u);
        }

        if (string)
        {
          sub_4A6EC(a1, [NSString stringWithUTF8String:string]);
          v15 = qword_D8560;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
          {
            if (sub_4A7E8(a1))
            {
              v16 = sub_4A7E8(a1);
            }

            else
            {
              v16 = &stru_B24D0;
            }

            v39 = 138412290;
            *v40 = v16;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Received reply to start USB monitoring  %@", &v39, 0xCu);
          }
        }

        sub_4A8BC(a1);
        sub_4A9B4(a1);
        goto LABEL_32;
      }

      goto LABEL_70;
    }

    v28 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Received msgID ReturnAllPublishedUIDs getting data. ", &v39, 2u);
    }

    sub_4A67C(a1, object);
  }

LABEL_32:
  free(v4);
}

void sub_4A67C(uint64_t a1, void *a2)
{
  v3 = sub_4B604(a1);
  reply = xpc_dictionary_create_reply(a2);
  xpc_dictionary_set_value(reply, "kBTAudioMsgArgAllPublishedUIDs", v3);
  remote_connection = xpc_dictionary_get_remote_connection(a2);
  xpc_connection_send_message(remote_connection, reply);

  xpc_release(reply);
}

uint64_t sub_4A6EC(uint64_t a1, void *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_70AF4(v7, a1 + 328);
  if (a2)
  {
    v4 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = a2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "SetMyBTAddress %@", buf, 0xCu);
    }

    v5 = *(a1 + 512);
    if (v5)
    {

      *(a1 + 512) = 0;
    }

    *(a1 + 512) = a2;
  }

  return sub_70C40(v7);
}

uint64_t sub_4A7E8(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_70AF4(v6, a1 + 328);
  v2 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 512);
    if (!v3)
    {
      v3 = &stru_B24D0;
    }

    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "GetMyBTAddress %@", buf, 0xCu);
  }

  v4 = *(a1 + 512);
  sub_70C40(v6);
  return v4;
}

void sub_4A8BC(uint64_t a1)
{
  if ((*(a1 + 504) & 1) == 0)
  {
    v2 = +[ASACoreAudio sharedCoreAudioObject];
    v3 = *(qword_D8DF0 + 176);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_4B82C;
    v6[3] = &unk_B0AB0;
    v6[4] = a1;
    [v2 onQueue:v3 forProperty:1651472419 scope:1735159650 ofElement:0 addListener:v6];
    *(a1 + 504) = 1;
    v4 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Start monitoring USB routes.", v5, 2u);
    }
  }
}

void sub_4A9B4(uint64_t a1)
{
  v2 = +[ASACoreAudio sharedCoreAudioObject];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = sub_4B860;
  v41 = sub_4B870;
  v42 = objc_alloc_init(NSMutableArray);
  v36[0] = 0;
  v36[1] = 0;
  sub_70AF4(v36, a1 + 392);
  if (!*(a1 + 464))
  {
    v3 = [USBDeviceManager alloc];
    *(a1 + 464) = [(USBDeviceManager *)v3 initWithBTAddress:sub_4A7E8(qword_D8DF0)];
  }

  sub_70BD4(v36);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [v2 boxes];
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v50 count:16];
  obj = v4;
  if (v5)
  {
    v24 = *v33;
    *&v6 = 138412802;
    v22 = v6;
    do
    {
      v7 = 0;
      v25 = v5;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        v9 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 modelName];
          v11 = [v8 boxUID];
          v12 = [v8 audioDeviceObjectIDs];
          *buf = v22;
          v45 = v10;
          v46 = 2112;
          v47 = v11;
          v48 = 2112;
          v49 = v12;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Found box object with modelName %@ and boxUID %@ %@", buf, 0x20u);
        }

        if ([v8 modelName])
        {
          v13 = [v8 modelName];
        }

        else
        {
          v13 = 0;
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = [v8 audioDevices];
        v15 = [v14 countByEnumeratingWithState:&v28 objects:v43 count:16];
        v26 = v7;
        if (v15)
        {
          v16 = *v29;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v28 + 1) + 8 * i);
              if ([v18 hasProperty:1967272528 scope:1735159650 ofElement:0])
              {
                v19 = qword_D8560;
                if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = [v18 deviceUID];
                  *buf = 138412290;
                  v45 = v20;
                  _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Found device UID: %@", buf, 0xCu);
                }

                [*(a1 + 464) addUSBAudioDevice:v18 withModelID:v13];
                [v38[5] addObject:v18];
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v28 objects:v43 count:16];
          }

          while (v15);
        }

        v7 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v5 = [obj countByEnumeratingWithState:&v32 objects:v50 count:16];
    }

    while (v5);
  }

  if (v38[5])
  {
    v21 = *(a1 + 464);
    if (v21)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_4B87C;
      block[3] = &unk_B0B18;
      block[4] = &v37;
      block[5] = a1;
      dispatch_async([v21 usbQueue], block);
    }
  }

  sub_70C40(v36);
  _Block_object_dispose(&v37, 8);
}

void sub_4AE1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v6 = [*(a1 + 464) usbAudioDeviceList];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_4C038;
    v7[3] = &unk_B0B40;
    v7[5] = &v9;
    v7[6] = a1;
    v8 = a3;
    v7[4] = a2;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
    if ((v10[3] & 1) == 0 && os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7DEC0();
    }

    _Block_object_dispose(&v9, 8);
  }

  else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7DF30();
  }
}

void sub_4AF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4AF50(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v6 = [*(a1 + 464) usbAudioDeviceList];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_4C0B4;
    v7[3] = &unk_B0B40;
    v7[5] = &v9;
    v7[6] = a1;
    v8 = a3;
    v7[4] = a2;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
    if ((v10[3] & 1) == 0 && os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7DEC0();
    }

    _Block_object_dispose(&v9, 8);
  }

  else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7DF30();
  }
}

void sub_4B06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4B084(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kBTAudioMsgArgs");
  if (value)
  {
    xpc_dictionary_get_value(value, "kBTAudioMsgArgDeviceProperties");
  }

  string = xpc_dictionary_get_string(xdict, "kBTAudioMsgDeviceUid");
  if (string)
  {
    v6 = [NSString stringWithUTF8String:string];
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_4C3A0(a1, v6);
  if (v7)
  {
    v8 = v7;
    if (v7[192] == 1)
    {
      v9 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEBUG))
      {
        sub_7DF64(v6, v9);
      }

      v10 = sub_6C24(v8);
      sub_117A0(v10, xdict);
    }
  }
}

uint64_t sub_4B158(uint64_t result)
{
  if (*(result + 464))
  {
    v1 = result;
    v7[0] = 0;
    v7[1] = 0;
    sub_70AF4(v7, result + 392);
    v2 = *(v1 + 464);
    if ([v2 usbQueue])
    {
      dispatch_release([*(v1 + 464) usbQueue]);
    }

    *(v1 + 464) = 0;
    sub_70BD4(v7);
    if (*(v1 + 504) == 1)
    {
      v3 = +[ASACoreAudio sharedCoreAudioObject];
      if (qword_D8DF0)
      {
        v4 = *(qword_D8DF0 + 176);
        if (v4)
        {
          [v3 onQueue:v4 forProperty:1651472419 scope:1735159650 ofElement:0 removeListener:&stru_B0AF0];
        }
      }

      *(v1 + 504) = 0;
      if (sub_4A7E8(v1))
      {
        *buf = 0;
        v9 = 0;
        sub_70AF4(buf, v1 + 328);

        *(v1 + 512) = 0;
        sub_70BD4(buf);
        sub_70C40(buf);
      }

      v5 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        v6 = (*(*v1 + 16))(v1);
        *buf = 67109120;
        *&buf[4] = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Stop USB routes changed under device  %d", buf, 8u);
      }
    }

    return sub_70C40(v7);
  }

  return result;
}

void sub_4B334(uint64_t a1, xpc_connection_t connection)
{
  pid = xpc_connection_get_pid(connection);
  v5 = xpc_copy_description(connection);
  v14 = 0u;
  v15 = 0u;
  xpc_connection_get_audit_token();
  v6 = xpc_copy_code_signing_identity_for_token();
  v7 = v6;
  if (v6)
  {
    v8 = !strcmp(v6, "com.apple.audioaccessoryd") || strcmp(v7, "com.apple.cloudpaird") == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = v7;
    v18 = 1024;
    LODWORD(v19) = pid;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "XPC incoming connection from %s %d", buf, 0x12u);
  }

  if (v8)
  {
    if (*(a1 + 496))
    {
      v10 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = v7;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Client %s XPC connection already exists, clean up old connection object.", buf, 0xCu);
      }

      if (*(a1 + 504) == 1 && *(a1 + 464))
      {
        sub_4B158(a1);
      }

      xpc_connection_cancel(*(a1 + 496));
      xpc_release(*(a1 + 496));
      *(a1 + 496) = 0;
    }

    v11 = xpc_retain(connection);
    *(a1 + 496) = v11;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_4B5FC;
    handler[3] = &unk_B0A90;
    handler[4] = a1;
    xpc_connection_set_event_handler(v11, handler);
    xpc_connection_set_target_queue(*(a1 + 496), *(a1 + 160));
    xpc_connection_activate(*(a1 + 496));
    v12 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = v7;
      v18 = 2080;
      v19 = v5;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Client %s XPC connection was successfully established. %s", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7DFEC();
    }

    xpc_connection_cancel(connection);
  }

  free(v5);
  free(v7);
}

xpc_object_t sub_4B604(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_70AF4(v16, a1 + 200);
  v2 = xpc_array_create(0, 0);
  Count = CFArrayGetCount(*(a1 + 472));
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), i);
      v6 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v7 = ValueAtIndex[1137];
        if (v7)
        {
          if (*(v7 + 192) == 1)
          {
            v8 = sub_5448(v7);
            if (v8)
            {
              v9 = qword_D8560;
              if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v18 = v8;
                _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Found Published HFP Device %@, adding it to the list.", buf, 0xCu);
              }

              CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
              xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, CStringPtr);
            }
          }
        }

        v11 = v6[1136];
        if (v11)
        {
          if (*(v11 + 192) == 1)
          {
            v12 = sub_5448(v11);
            if (v12)
            {
              v13 = qword_D8560;
              if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v18 = v12;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Found Published A2DP Device %@, adding it to the list.", buf, 0xCu);
              }

              v14 = CFStringGetCStringPtr(v12, 0x8000100u);
              xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, v14);
            }
          }
        }
      }
    }
  }

  sub_70C40(v16);
  return v2;
}

void sub_4B7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

void sub_4B82C(uint64_t a1, unsigned int a2, int *a3)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    while (1)
    {
      v5 = *a3;
      a3 += 3;
      if (v5 == 1651472419)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }

    sub_4A9B4(v3);
  }
}

uint64_t sub_4B87C(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_70A2C((v2 + 392));
  v3 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Checking if we need to remove devices", v8, 2u);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = *(v2 + 464);
    if (!v6 || ([v6 needToRemoveUSBDeviceFromList:?], v4 = *(*(a1 + 32) + 8), (v5 = *(v4 + 40)) != 0))
    {

      v4 = *(*(a1 + 32) + 8);
    }
  }

  *(v4 + 40) = 0;
  return sub_70A90((v2 + 392));
}

void sub_4B93C(uint64_t a1, void *a2, NSString *a3)
{
  v6 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v18 = a2;
    v19 = 2113;
    v20 = a3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Telling audioaccessoryd USB-C Device is PUBLISHED with UID %{private}@ is connected with BT address %{private}@", buf, 0x16u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (!a3)
  {
    a3 = [NSString stringWithUTF8String:""];
  }

  xpc_dictionary_set_uint64(v7, "kBTAudioMsgMethod", 0x18uLL);
  xpc_dictionary_set_string(v7, "kAccAudioMsgArgBTAddress", [(NSString *)a3 UTF8String]);
  xpc_dictionary_set_string(v7, "kAccAudioMsgArgUSBID", [a2 UTF8String]);
  v8 = [*(a1 + 464) getUSBModelID:a2];
  if (v8)
  {
    xpc_dictionary_set_string(v7, "kAccAudioMsgArgUSBModelID", [v8 UTF8String]);
  }

  v9 = [*(a1 + 464) getUSBName:a2];
  if (v9)
  {
    xpc_dictionary_set_string(v7, "kAccAudioMsgArgUSBName", [v9 UTF8String]);
  }

  xpc_dictionary_set_uint64(v7, "kAccAudioMsgArgUSBColor", [objc_msgSend(*(a1 + 464) getUSBColor:{a2), "unsignedLongValue"}]);
  xpc_dictionary_set_uint64(v7, "kAccAudioMsgArgUSBFeatureBitMask", [objc_msgSend(*(a1 + 464) getUSBFeatureBitmask:{a2), "unsignedLongValue"}]);
  xpc_dictionary_set_uint64(v7, "kAccAudioMsgArgUSBPairingMode", [objc_msgSend(*(a1 + 464) getUSBPairingMode:{a2), "unsignedLongValue"}]);
  xpc_dictionary_set_uint64(v7, "kAccAudioMsgArgUSBPid", [objc_msgSend(*(a1 + 464) getUSBPid:{a2), "unsignedLongValue"}]);
  v10 = [*(a1 + 464) getUSBFWVersion:a2];
  v11 = xpc_array_create(0, 0);
  if ([v10 count])
  {
    v12 = 0;
    v13 = 0;
    do
    {
      xpc_array_set_uint64(v11, 0xFFFFFFFFFFFFFFFFLL, [objc_msgSend(v10 objectAtIndexedSubscript:{v12), "unsignedLongValue"}]);
      v12 = ++v13;
    }

    while ([v10 count] > v13);
  }

  xpc_dictionary_set_value(v7, "kAccAudioMsgArgUSBFwVersion", v11);
  v14 = *(a1 + 496);
  v15 = *(a1 + 160);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_4BC38;
  handler[3] = &unk_B0A90;
  handler[4] = a1;
  xpc_connection_send_message_with_reply(v14, v7, v15, handler);
}

void sub_4BC38(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    if (object == &_xpc_error_connection_interrupted)
    {
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7E0C4();
      }
    }

    else
    {
      v4 = os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR);
      if (object == &_xpc_error_connection_invalid)
      {
        if (v4)
        {
          sub_7E090();
        }
      }

      else if (v4)
      {
        sub_7E05C();
      }
    }

    return;
  }

  uint64 = xpc_dictionary_get_uint64(object, "kBTAudioMsgMethod");
  if (uint64 > 27)
  {
    if (uint64 == 28)
    {
      [*(v3 + 464) setBtPowerState:1];
      v9 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BT is NOT paired!", v11, 2u);
      }
    }

    else
    {
      if (uint64 != 29)
      {
LABEL_21:
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          sub_7E0F8();
        }

        return;
      }

      v7 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "BT is off. Unhide USB-C port", v10, 2u);
      }

      [*(v3 + 464) setBtPowerState:0];
    }

    [*(v3 + 464) unHideUSBPortWithUID:objc_msgSend(*(v3 + 464) UpdateAirPodsState:{"currentRoutedUSBDeviceUID"), 1}];
    return;
  }

  if (uint64 != 26)
  {
    if (uint64 == 27)
    {
      [*(v3 + 464) setBtPowerState:1];
      v6 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "BT paired not connected, let's wait for publishing of A2DP port.", buf, 2u);
      }

      [*(v3 + 464) hideUSBPortWithUID:objc_msgSend(*(v3 + 464) UpdateAirPodsState:{"currentRoutedUSBDeviceUID"), 1}];
      return;
    }

    goto LABEL_21;
  }

  [*(v3 + 464) setBtPowerState:1];
  v8 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BT connected, nothing to do here. Move on...", v13, 2u);
  }
}

void sub_4BECC(uint64_t a1, __CFString *a2, __CFString *a3)
{
  v3 = qword_D8560;
  if (a2 | a3)
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      v7 = &stru_B24D0;
      if (a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = &stru_B24D0;
      }

      if (a3)
      {
        v7 = a3;
      }

      v10 = 138478083;
      v11 = v8;
      v12 = 2113;
      v13 = v7;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Telling audioaccessoryd USB-C Device is UNPUBLISHED with UID %{private}@ is with BT address %{private}@", &v10, 0x16u);
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kBTAudioMsgMethod", 0x19uLL);
    if (a3)
    {
      xpc_dictionary_set_string(v9, "kAccAudioMsgArgBTAddress", [(__CFString *)a3 UTF8String]);
    }

    if (a2)
    {
      xpc_dictionary_set_string(v9, "kAccAudioMsgArgUSBID", [(__CFString *)a2 UTF8String]);
    }

    xpc_connection_send_message(*(a1 + 496), v9);
  }

  else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E12C();
  }
}

id sub_4C038(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 48);
  result = [objc_msgSend(a3 "btAddress")];
  if (result)
  {
    v9 = *(v7 + 464);
    if (*(a1 + 56))
    {
      result = [v9 hideUSBPortWithUID:a2 UpdateAirPodsState:1];
    }

    else
    {
      result = [v9 unHideUSBPortWithUID:a2 UpdateAirPodsState:1];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

id sub_4C0B4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 48);
  result = [objc_msgSend(a3 "btAddress")];
  if (result)
  {
    v9 = *(v7 + 464);
    if (*(a1 + 56))
    {
      result = [v9 enableAirPlaneModeForUSBPortWithUID:a2];
    }

    else
    {
      result = [v9 disableAirPlaneModeForUSBPortWithUID:a2];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_4C134(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_70AF4(v13, a1 + 200);
  sub_502F8(a1);
  Count = CFArrayGetCount(*(a1 + 472));
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v3 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = Count;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Invalidating all (%ld) audio devices", buf, 0xCu);
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), i);
      __p = 0;
      v8 = 0;
      v9 = 0;
      sub_58AF0(&__p, 0, 0, 0);
      sub_5CB74(ValueAtIndex, &__p);
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }
    }

    sub_4CDAC(a1, &v10);
    sub_4CB20(a1, 1684370979);
    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }

  return sub_70C40(v13);
}

void sub_4C29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_70C40(&a15);
  _Unwind_Resume(a1);
}

_BYTE *sub_4C3A0(uint64_t a1, void *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_70AF4(v9, a1 + 200);
  Count = CFArrayGetCount(*(a1 + 472));
  if (Count < 1)
  {
LABEL_6:
    v7 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), v5);
      if (ValueAtIndex)
      {
        v7 = sub_6A714(ValueAtIndex, a2);
        if (v7)
        {
          break;
        }
      }

      if (Count == ++v5)
      {
        goto LABEL_6;
      }
    }
  }

  sub_70C40(v9);
  return v7;
}

void *sub_4C45C(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kBTAudioMsgPropertyDeviceAddress");
  if (!string)
  {
    v9 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_FAULT))
    {
      sub_7E160(v9);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  sub_2088(v27, string);
  v10 = atomic_load((a1 + 12));
  if ((v10 & 1) == 0)
  {
    v11 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 128);
      v12 = *(a1 + 136);
      buf[0] = 134218240;
      *&buf[1] = v12;
      v30 = 2048;
      v31 = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Publish BTDevice waiting BTAudioPlugin ready %ld, %ld", buf, 0x16u);
    }

    if (!*(a1 + 128))
    {
      *(a1 + 128) = xmmword_89010;
    }

    pthread_mutex_lock((a1 + 16));
    if (pthread_cond_timedwait_relative_np((a1 + 80), (a1 + 16), (a1 + 128)) == 60)
    {
      v14 = atomic_load((a1 + 12));
      if ((v14 & 1) == 0 && os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7E1E4(a1, (a1 + 128));
      }
    }

    pthread_mutex_unlock((a1 + 16));
  }

  v15 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v27;
    if (v28 < 0)
    {
      v16 = v27[0];
    }

    buf[0] = 136446210;
    *&buf[1] = v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Add BTDevice to UnifiedAudioDevice : %{public}s ", buf, 0xCu);
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_9780(__p, v27[0], v27[1]);
  }

  else
  {
    *__p = *v27;
    v26 = v28;
  }

  v17 = sub_4E0CC(a1, __p);
  v18 = v17;
  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    if (v17)
    {
      goto LABEL_24;
    }

LABEL_27:
    v19 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Creating Unified Device", buf, 2u);
    }

    operator new();
  }

  operator delete(__p[0]);
  if (!v18)
  {
    goto LABEL_27;
  }

LABEL_24:
  sub_2E700(v18[1160], a3, xdict);
  sub_59A08(v18, a2);
  if (!v18[1142])
  {
    sub_5A118(v18, a2, 1, 0);
  }

  v20 = v18[1160];
  if (v20)
  {
    if ((*(v20 + 144) & 1) != 0 || *(v20 + 290) == 1)
    {
      v21 = +[BTAudioAVNotificationMonitor sharedInstance];
      if (v21)
      {
        [(BTAudioAVNotificationMonitor *)v21 registerNowPlayingListener:(*(*v18 + 16))(v18)];
        [(BTAudioAVNotificationMonitor *)v21 registerPersonalizedVolumeListener:(*(*v18 + 16))(v18) deviceUID:v18[1135]];
        [(BTAudioAVNotificationMonitor *)v21 processManualVolumeUpdates:1];
      }
    }

    sub_50F5C(a1, v18);
    if (sub_2C3D4(v18[1160]))
    {
      v22 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v18[1135];
        buf[0] = 138543362;
        *&buf[1] = v23;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Publish UnifiedAudioDevice : %{public}@", buf, 0xCu);
      }

      sub_4CB20(a1, 1684370979);
    }

    if (a2 != 1952538980 && (sub_6D3F4(v18, a2), a2 == 1952539500) || *(v18[1160] + 344) == 1)
    {
      sub_50470(a1);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  return v18;
}

xpc_object_t sub_4CA6C(int a1, char *string, void *a3, int a4)
{
  *keys = *off_B0B60;
  object[0] = xpc_string_create(string);
  object[1] = a3;
  if (a3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = xpc_dictionary_create(keys, object, v6);
  xpc_release(object[0]);
  if (a3 && a4)
  {
    xpc_release(a3);
  }

  return v7;
}

void sub_4CB20(uint64_t a1, int a2)
{
  if (*(a1 + 144))
  {
    v2 = *(a1 + 176);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4CBDC;
    block[3] = &unk_AD388;
    block[4] = a1;
    v4 = a2;
    v5 = 1735159650;
    dispatch_async(v2, block);
  }

  else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E26C();
  }
}

void sub_4CBFC(uint64_t a1, void *a2)
{
  v2 = qword_D8560;
  if (a2)
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(*a2 + 16))(a2);
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Invalidating mAudioObjectID %d", buf, 8u);
    }

    v6 = a2[52];
    if (v6)
    {
      v7 = sub_57E8(a2);
      sub_5C250(v6, v7);
    }

    v8 = (*(*a2 + 16))(a2);
    v10 = 0;
    v11 = 0;
    *buf = 0;
    sub_581EC(buf, &v8, buf, 1uLL);
    sub_4CDAC(a1, buf);
    sub_4CB20(a1, 1684370979);
    if (*buf)
    {
      v10 = *buf;
      operator delete(*buf);
    }
  }

  else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E2A0();
  }
}

void sub_4CD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4CDAC(uint64_t a1, void *a2)
{
  v33[0] = 0;
  v33[1] = 0;
  sub_70AF4(v33, a1 + 200);
  Count = CFArrayGetCount(*(a1 + 472));
  v5 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (a2[1] - *a2) >> 2;
    *buf = 134218240;
    *&buf[4] = v6;
    v35 = 2048;
    v36 = Count;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Deleting %lu invalid audio devices, Total Number of Unified device = %ld", buf, 0x16u);
  }

  if (Count >= 1)
  {
    v27 = (a1 + 624);
    v28 = (a1 + 632);
    v26 = v30;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), Count - 1);
      v8 = ValueAtIndex;
      if (ValueAtIndex)
      {
        sub_5CFB0(ValueAtIndex, a2);
        v9 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          if (v8[1136] || v8[1137] || v8[1140] || v8[1141])
          {
            v10 = "No";
          }

          else
          {
            v10 = "Yes";
          }

          v11 = v8[1135];
          *buf = 138543618;
          *&buf[4] = v11;
          v35 = 2082;
          v36 = v10;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Can Unified Device be released : %{public}s", buf, 0x16u);
        }

        if (!v8[1136] && !v8[1137] && !v8[1140] && !v8[1141])
        {
          (*(*v8 + 1184))(v8);
          sub_51240(a1, v8);
          v12 = *v27;
          if (*v27 != v28)
          {
            while (v12[7] != v8)
            {
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
              if (v14 == v28)
              {
                goto LABEL_28;
              }
            }

            sub_58C80(v27, v12);
          }

LABEL_28:
          v16 = qword_D8DE8;
          v17 = (*(*v8 + 16))(v8, v12);
          (*(*v16 + 32))(v16, v17);
          sub_70BD4(v33);
          v32 = (*(*v8 + 16))(v8);
          v31[0] = 0;
          v31[1] = 0;
          sub_70AF4(v31, a1 + 264);
          v18 = sub_51524(a1, v32);
          if (v18)
          {
            v24 = +[BTAudioSmartRouteManager sharedInstance];
            v19 = [NSString alloc];
            (*(*v8 + 864))(buf, v8);
            if (v37 >= 0)
            {
              v20 = buf;
            }

            else
            {
              v20 = *buf;
            }

            v21 = [v19 initWithUTF8String:{v20, v24, v26}];
            if (v37 < 0)
            {
              operator delete(*buf);
            }

            [v25 unRegisterDevice:v21];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            v30[0] = sub_515B4;
            v30[1] = &unk_AD3E8;
            v30[2] = v8;
            dispatch_async(v18, block);
            dispatch_release(v18);
          }

          sub_39130(a1 + 648, &v32);
          sub_70BD4(v31);
          sub_70B24(v33);
          sub_70C40(v31);
        }
      }
    }

    while (Count-- > 1);
  }

  sub_70BD4(v33);
  return sub_70C40(v33);
}

void sub_4D234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_70C40(&a20);
  sub_70C40(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_4D298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_9780(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v8 = *(a2 + 16);
  }

  v5 = sub_4D334(a1, __p, a3);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_4D318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4D334(uint64_t a1, const void **a2, uint64_t a3)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_70AF4(v24, a1 + 200);
  Count = CFArrayGetCount(*(a1 + 472));
  if (Count < 1)
  {
    v19 = 0;
  }

  else
  {
    v21 = a3;
    v7 = 0;
    v8 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), v7);
      v10 = ValueAtIndex;
      if (ValueAtIndex)
      {
        (*(*ValueAtIndex + 864))(v22, ValueAtIndex);
        v11 = *(a2 + 23);
        v12 = a2;
        if ((v11 & 0x8000000000000000) != 0)
        {
          v12 = *a2;
          v11 = a2[1];
        }

        v13 = v23;
        v15 = v22[0];
        v14 = v22[1];
        if ((v23 & 0x80u) != 0)
        {
          v16 = v22[0];
        }

        else
        {
          v14 = v23;
          v16 = v22;
        }

        if (v14 >= v11)
        {
          v17 = v11;
        }

        else
        {
          v17 = v14;
        }

        v18 = v14 == v11;
        ValueAtIndex = memcmp(v12, v16, v17);
        if (ValueAtIndex)
        {
          v18 = 0;
        }

        if ((v13 & 0x80) != 0)
        {
          operator delete(v15);
        }

        if (v18)
        {
          break;
        }
      }

      v8 = ++v7 < Count;
      if (Count == v7)
      {
        goto LABEL_21;
      }
    }

    ValueAtIndex = sub_6A824(v10, v21);
LABEL_21:
    if (v8)
    {
      v19 = ValueAtIndex;
    }

    else
    {
      v19 = 0;
    }
  }

  sub_70C40(v24);
  return v19;
}

void sub_4D490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4D4E0(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_70AF4(v13, a1 + 200);
  if (*(a2 + 23) < 0)
  {
    sub_9780(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  v4 = sub_4D298(a1, __p, 1953719151);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) < 0)
  {
    sub_9780(v9, *a2, *(a2 + 8));
  }

  else
  {
    *v9 = *a2;
    v10 = *(a2 + 16);
  }

  v5 = sub_4D298(a1, v9, 1952539500);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
    if (v4)
    {
      goto LABEL_11;
    }

LABEL_14:
    v7 = 0;
    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (sub_686C(v4))
  {
    v6 = 1;
    goto LABEL_19;
  }

  v7 = sub_44F04(v4) != 0;
LABEL_16:
  v6 = v5 != 0 || v7;
  if (v5 && !v7)
  {
    v6 = sub_686C(v5);
  }

LABEL_19:
  sub_70C40(v13);
  return v6 & 1;
}

BOOL sub_4D668(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_70AF4(v13, a1 + 200);
  if (*(a2 + 23) < 0)
  {
    sub_9780(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  v4 = sub_4D298(a1, __p, 1953719151);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) < 0)
  {
    sub_9780(v9, *a2, *(a2 + 8));
  }

  else
  {
    *v9 = *a2;
    v10 = *(a2 + 16);
  }

  v5 = sub_4D298(a1, v9, 1952539500);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
    if (v4)
    {
      goto LABEL_11;
    }

LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_11:
  v6 = sub_6600(v4);
LABEL_14:
  v7 = v5 != 0 || v6;
  if (v5 && !v6)
  {
    v7 = sub_6600(v5);
  }

  sub_70C40(v13);
  return v7;
}

uint64_t sub_4D7D4(uint64_t a1, const void **a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_70AF4(v6, a1 + 200);
  v4 = sub_4D8D8(*(a1 + 600), *(a1 + 608), a2);
  sub_4D850(a1 + 600, v4, *(a1 + 608));
  return sub_70C40(v6);
}

uint64_t sub_4D850(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_582FC(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 1);
        v7 -= 3;
        if (v8 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__int128 *sub_4D8D8(__int128 *a1, __int128 *a2, const void **a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v7 = *(a3 + 23);
    if (v7 >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = a3[1];
    }

    if (v7 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    v3 = a1;
    while (1)
    {
      v10 = *(v3 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v3 + 1);
      }

      if (v10 == v8)
      {
        v12 = v11 >= 0 ? v3 : *v3;
        if (!memcmp(v12, v9, v8))
        {
          break;
        }
      }

      v3 = (v3 + 24);
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = (v3 + 24); i != a2; i = (i + 24))
      {
        v14 = *(i + 23);
        if (v14 >= 0)
        {
          v15 = *(i + 23);
        }

        else
        {
          v15 = *(i + 1);
        }

        v16 = *(a3 + 23);
        v17 = v16;
        if (v16 < 0)
        {
          v16 = a3[1];
        }

        if (v15 == v16)
        {
          v18 = v14 >= 0 ? i : *i;
          v19 = *a3;
          v20 = v17 >= 0 ? a3 : *a3;
          if (!memcmp(v18, v20, v15))
          {
            continue;
          }
        }

        if (*(v3 + 23) < 0)
        {
          operator delete(*v3);
        }

        v21 = *i;
        *(v3 + 2) = *(i + 2);
        *v3 = v21;
        v3 = (v3 + 24);
        *(i + 23) = 0;
        *i = 0;
      }
    }
  }

  return v3;
}

uint64_t sub_4DA14(uint64_t a1, __int128 *a2, uint64_t a3, int a4, __CFString *a5)
{
  v44[0] = 0;
  v44[1] = 0;
  sub_70AF4(v44, a1 + 200);
  v10 = a2 + 23;
  if (*(a2 + 23) < 0)
  {
    sub_9780(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    v43 = *(a2 + 2);
  }

  v11 = sub_4E0CC(a1, __p);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = qword_D8560;
  if (v11)
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      v13 = (*(*v11 + 1352))(v11);
      *buf = 67109376;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = a3;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "SynchronizeOwnershipChangeForDeviceAddr %d -> %d", buf, 0xEu);
    }

    v14 = (*(*v11 + 1352))(v11);
    v15 = *v11;
    if (v14 == a3)
    {
      if ((*(v15 + 1352))(v11))
      {
        v18 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Device is already owned, still updating ownership", buf, 2u);
        }

        (*(*v11 + 1360))(v11, a3, 1);
      }

      if (a3)
      {
        v19 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "true";
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Ownership didn't change, it already was %s", buf, 0xCu);
        }

        return sub_70C40(v44);
      }
    }

    else
    {
      (*(v15 + 1360))(v11, a3, 1);
      if (a3)
      {
        sub_4E298((a1 + 600), a2);
        Current = CFAbsoluteTimeGetCurrent();
        memset(buf, 0, sizeof(buf));
        if (a5)
        {
          v17 = [(__CFString *)a5 UTF8String];
        }

        else
        {
          v17 = "";
        }

        sub_2088(buf, v17);
        v24 = *(qword_D8DF0 + 456);
        if (buf[23] < 0)
        {
          sub_9780(v32, *buf, *&buf[8]);
        }

        else
        {
          *v32 = *buf;
          v33 = *&buf[16];
        }

        sub_1C5AC(v24, 2, 0, 3, Current, v32, 3);
        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32[0]);
        }

        if (buf[23] < 0)
        {
          v23 = *buf;
          goto LABEL_52;
        }

        return sub_70C40(v44);
      }
    }

    if (a4 && (*(v11[1160] + 364) & 1) == 0)
    {
      v20 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        if (*v10 < 0)
        {
          v21 = *a2;
          sub_9780(v36, *a2, *(a2 + 1));
        }

        else
        {
          *v36 = *a2;
          v37 = *(a2 + 2);
          v21 = a2;
        }

        v26 = sub_4D4E0(a1, v36);
        v27 = "not";
        if (v26)
        {
          v27 = "still";
        }

        *buf = 136446722;
        *&buf[4] = v21;
        *&buf[12] = 2082;
        *&buf[14] = v27;
        *&buf[22] = 2082;
        v46 = "No";
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Sending relinquishing of ownership for %{public}s. Device is %{public}s streaming. TiPi Connection: %{public}s", buf, 0x20u);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(v36[0]);
        }
      }

      v28 = *(a1 + 560);
      if (*v10 < 0)
      {
        sub_9780(v34, *a2, *(a2 + 1));
      }

      else
      {
        *v34 = *a2;
        v35 = *(a2 + 2);
      }

      if (a5)
      {
        v29 = a5;
      }

      else
      {
        v29 = &stru_B24D0;
      }

      [v28 sendArbitrationMsg:@"DidTakeOwnership" forAddress:v34 withResponseIdentifier:v29];
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[0]);
      }
    }

    v30 = sub_4D8D8(*(a1 + 600), *(a1 + 608), a2);
    sub_4D850(a1 + 600, v30, *(a1 + 608));
    return sub_70C40(v44);
  }

  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E2D4(a2 + 23, a2);
  }

  if (a3)
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7E354(a2 + 23, a2);
    }

    if (*v10 < 0)
    {
      sub_9780(&__dst, *a2, *(a2 + 1));
    }

    else
    {
      __dst = *a2;
      v41 = *(a2 + 2);
    }

    sub_4E178(a1, &__dst);
    if (SHIBYTE(v41) < 0)
    {
      v23 = __dst;
LABEL_52:
      operator delete(v23);
    }
  }

  else if (a4)
  {
    v22 = *(a1 + 560);
    if (*v10 < 0)
    {
      sub_9780(v38, *a2, *(a2 + 1));
    }

    else
    {
      *v38 = *a2;
      v39 = *(a2 + 2);
    }

    v25 = a5 ? a5 : &stru_B24D0;
    [v22 sendArbitrationMsg:@"DidTakeOwnership" forAddress:v38 withResponseIdentifier:v25];
    if (SHIBYTE(v39) < 0)
    {
      v23 = v38[0];
      goto LABEL_52;
    }
  }

  return sub_70C40(v44);
}

uint64_t sub_4E0CC(uint64_t a1, const void **a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_70AF4(v6, a1 + 200);
  if (!*(a1 + 640) || a1 + 632 == sub_58B6C(a1 + 624, a2))
  {
    v4 = 0;
  }

  else
  {
    v6[3] = a2;
    v4 = *(sub_58828(a1 + 624, a2) + 56);
  }

  sub_70C40(v6);
  return v4;
}

void sub_4E178(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_9780(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  v4 = sub_4D298(a1, __p, 1953719151);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) < 0)
  {
    sub_9780(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    v7 = *(a2 + 16);
  }

  v5 = sub_4D298(a1, v6, 1952539500);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (v4)
  {
    sub_6818(v4);
  }

  if (v5)
  {
    sub_6818(v5);
  }
}

void sub_4E264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4E298(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_583D0(a1, a2);
  }

  else
  {
    sub_58370(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void sub_4E2D8(uint64_t a1, void **a2)
{
  v4 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2;
    if (*(a2 + 23) < 0)
    {
      v5 = *a2;
    }

    *buf = 136446210;
    v17 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Taking ownership for %{public}s", buf, 0xCu);
  }

  if (*(a2 + 23) < 0)
  {
    sub_9780(__p, *a2, a2[1]);
  }

  else
  {
    *__p = *a2;
    v15 = a2[2];
  }

  v6 = sub_4E4CC(a1, __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 560);
  v8 = *(a2 + 23);
  if (v6)
  {
    if (v8 < 0)
    {
      sub_9780(&__dst, *a2, a2[1]);
    }

    else
    {
      __dst = *a2;
      v13 = a2[2];
    }

    [v7 handleDidTakeOwnership:&__dst withResponseIdentifier:0];
    if (SHIBYTE(v13) < 0)
    {
      p_dst = &__dst;
LABEL_21:
      operator delete(*p_dst);
    }
  }

  else
  {
    if (v8 < 0)
    {
      sub_9780(&v10, *a2, a2[1]);
    }

    else
    {
      v10 = *a2;
      v11 = a2[2];
    }

    [v7 sendArbitrationMsg:@"RequestOwnership" forAddress:&v10 withResponseIdentifier:0];
    if (SHIBYTE(v11) < 0)
    {
      p_dst = &v10;
      goto LABEL_21;
    }
  }
}

void sub_4E47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_4E4CC(uint64_t a1, unsigned __int8 *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_70AF4(v12, a1 + 200);
  v4 = *(a1 + 600);
  v5 = *(a1 + 608);
  if (v4 != v5)
  {
    v6 = a2[23];
    if (v6 >= 0)
    {
      v7 = a2[23];
    }

    else
    {
      v7 = *(a2 + 1);
    }

    if (v6 < 0)
    {
      a2 = *a2;
    }

    while (1)
    {
      v8 = *(v4 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v4 + 8);
      }

      if (v8 == v7)
      {
        v10 = v9 >= 0 ? v4 : *v4;
        if (!memcmp(v10, a2, v7))
        {
          break;
        }
      }

      v4 += 24;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  sub_70C40(v12);
  return v4 != v5;
}

BOOL sub_4E59C(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 <= 1819107690)
  {
    if (v2 > 1668641651)
    {
      v3 = v2 == 1668641652;
      v4 = 1684370979;
    }

    else
    {
      v3 = v2 == 1650682995;
      v4 = 1668047219;
    }
  }

  else if (v2 <= 1920168546)
  {
    v3 = v2 == 1819107691;
    v4 = 1870098020;
  }

  else
  {
    v3 = v2 == 1920168547 || v2 == 1969841252;
    v4 = 1937007734;
  }

  if (!v3 && v2 != v4)
  {
    return sub_4E670(a1, a2);
  }

  if (a2[1] == 1735159650)
  {
    return a2[2] == 0;
  }

  return 0;
}

BOOL sub_4E670(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 544);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 544;
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
  if (v4 == a1 + 544)
  {
    return 0;
  }

  result = 0;
  if (v3 == 1667789414 && *(v4 + 32) < 0x63687267u)
  {
    if (a2[1] == 1735159650)
    {
      return a2[2] == 0;
    }

    return 0;
  }

  return result;
}

uint64_t sub_4E6F4(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a2 <= 1819107690)
  {
    if (v3 > 1668641651)
    {
      v4 = v3 == 1668641652;
      v5 = 1684370979;
    }

    else
    {
      v4 = v3 == 1650682995;
      v5 = 1668047219;
    }
  }

  else if (v3 <= 1920168546)
  {
    v4 = v3 == 1819107691;
    v5 = 1870098020;
  }

  else
  {
    v4 = v3 == 1920168547 || v3 == 1969841252;
    v5 = 1937007734;
  }

  if (v4 || v3 == v5)
  {
    result = 0;
    *a3 = 0;
  }

  else
  {
    sub_4E7C8(a1, a2, a3);
    return 2003332927;
  }

  return result;
}

uint64_t sub_4E7C8(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v3 = *(a1 + 544);
  if (v3)
  {
    v4 = *a2;
    v5 = a1 + 544;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != a1 + 544 && v4 >= *(v5 + 32))
    {
      *a3 = *(sub_58CC4(a1 + 536, a2)[5] + 16);
    }
  }

  return 2003332927;
}

uint64_t sub_4E864(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_70AF4(v20, a1 + 200);
  v10 = *a2;
  v11 = 4;
  if (*a2 <= 1819107690)
  {
    if (v10 <= 1668641651)
    {
      if (v10 != 1650682995 && v10 != 1668047219)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (v10 == 1668641652)
    {
      v11 = 12 * *(a1 + 552);
      goto LABEL_31;
    }

    v13 = 1684370979;
  }

  else
  {
    if (v10 > 1920168546)
    {
      if (v10 != 1920168547)
      {
        if (v10 != 1937007734 && v10 != 1969841252)
        {
          goto LABEL_29;
        }

LABEL_31:
        v18 = 0;
        *a5 = v11;
        goto LABEL_32;
      }

LABEL_27:
      v11 = 8;
      goto LABEL_31;
    }

    if (v10 == 1819107691)
    {
      goto LABEL_27;
    }

    v13 = 1870098020;
  }

  if (v10 == v13)
  {
    Count = CFArrayGetCount(*(a1 + 472));
    if (Count < 1)
    {
      v11 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), v15);
        if (ValueAtIndex[1136] || ValueAtIndex[1137] || ValueAtIndex[1140] || ValueAtIndex[1141])
        {
          ++v16;
        }

        ++v15;
      }

      while (Count != v15);
      v11 = 4 * v16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v18 = sub_4EA40(a1, a2, v8, v9, a5);
LABEL_32:
  sub_70C40(v20);
  return v18;
}

uint64_t sub_4EA40(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  result = 2003332927;
  v7 = *(a1 + 544);
  if (v7)
  {
    v9 = *a2;
    v10 = a1 + 544;
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
    if (v10 != a1 + 544 && v9 >= *(v10 + 32))
    {
      v14 = sub_58CC4(a1 + 536, a2);
      result = 0;
      *a5 = *(v14[5] + 12);
    }
  }

  return result;
}

uint64_t sub_4EAE8(uint64_t a1, int *a2, uint64_t a3, int a4, const __CFString *a5, unsigned int a6, int *a7, void *a8)
{
  v31[0] = 0;
  v31[1] = 0;
  sub_70AF4(v31, a1 + 200);
  v17 = *a2;
  if (*a2 <= 1819107690)
  {
    if (v17 <= 1668641651)
    {
      if (v17 == 1650682995)
      {
        if (a6 <= 3)
        {
          v18 = 561211770;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
          {
            sub_7E540();
          }

          goto LABEL_59;
        }

        v18 = 0;
        v26 = 1634689642;
      }

      else
      {
        if (v17 != 1668047219)
        {
          goto LABEL_42;
        }

        if (a6 <= 3)
        {
          v18 = 561211770;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
          {
            sub_7E50C();
          }

          goto LABEL_59;
        }

        v18 = 0;
        v26 = 1634757735;
      }

      *a8 = v26;
LABEL_57:
      v25 = 4;
      goto LABEL_58;
    }

    if (v17 == 1668641652)
    {
      v30 = a6 / 0xC;
      sub_4F010(a1, a8, &v30);
      v18 = 0;
      v25 = 12 * v30;
LABEL_58:
      *a7 = v25;
      goto LABEL_59;
    }

    v19 = 1684370979;
    goto LABEL_19;
  }

  if (v17 <= 1920168546)
  {
    if (v17 == 1819107691)
    {
      if (a6 <= 3)
      {
        v18 = 561211770;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          sub_7E4A4();
        }

        goto LABEL_59;
      }

      v27 = CFRetain(@"Apple Inc.");
      goto LABEL_50;
    }

    v19 = 1870098020;
LABEL_19:
    if (v17 == v19)
    {
      Count = CFArrayGetCount(*(a1 + 472));
      if (Count < 1)
      {
        v25 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = (a6 >> 2) + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), v22);
          if (ValueAtIndex[1136] || ValueAtIndex[1137] || ValueAtIndex[1140] || ValueAtIndex[1141])
          {
            *(a8 + v21++) = (*(*ValueAtIndex + 16))(ValueAtIndex);
            if (v21 > v23)
            {
              break;
            }
          }

          ++v22;
        }

        while (Count != v22);
        v25 = 4 * v21;
      }

      v18 = 0;
      goto LABEL_58;
    }

LABEL_42:
    v18 = sub_4F0E0(a1, a2, v15, v16, a6, a7, a8);
    goto LABEL_59;
  }

  if (v17 == 1920168547)
  {
    if (a6 <= 3)
    {
      v18 = 561211770;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7E3D4();
      }

      goto LABEL_59;
    }

    v27 = CFRetain(&stru_B24D0);
LABEL_50:
    v18 = 0;
    *a8 = v27;
    v25 = 8;
    goto LABEL_58;
  }

  if (v17 == 1937007734)
  {
    if (a6 <= 3)
    {
      v18 = 561211770;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7E4D8();
      }

      goto LABEL_59;
    }

    v18 = 0;
    *a8 = 0;
    goto LABEL_57;
  }

  if (v17 != 1969841252)
  {
    goto LABEL_42;
  }

  if (a6 <= 3)
  {
    v18 = 561211770;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7E470();
    }

    goto LABEL_59;
  }

  if (a4 == 8)
  {
    v18 = 561211770;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7E43C();
    }

    goto LABEL_59;
  }

  if (a5)
  {
    v28 = sub_4EF48(a1, a5);
    v18 = 0;
    *a8 = v28;
    goto LABEL_57;
  }

  v18 = 561211770;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E408();
  }

LABEL_59:
  sub_70C40(v31);
  return v18;
}

void sub_4EF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4EF48(uint64_t a1, const __CFString *a2)
{
  if (CFArrayGetCount(*(a1 + 472)) < 1)
  {
    return 0;
  }

  v4 = 0;
  for (i = 1; ; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), v4);
    v7 = sub_5448(ValueAtIndex);
    if (CFStringCompare(v7, a2, 0) == kCFCompareEqualTo)
    {
      break;
    }

    v4 = i;
    if (CFArrayGetCount(*(a1 + 472)) <= i)
    {
      return 0;
    }
  }

  v10 = *(*ValueAtIndex + 16);

  return v10(ValueAtIndex);
}

uint64_t sub_4F010(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (*a3)
  {
    v3 = *(result + 552);
    if (*a3 > v3)
    {
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
      {
        sub_7E574();
      }

      abort();
    }

    v4 = *(result + 536);
    if (v4 != (result + 544))
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

      while (v9 != (result + 544));
    }

    *a3 = v3;
  }

  return result;
}

uint64_t sub_4F0E0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, void *a7)
{
  if (*a2 != 1667789414)
  {
    return 0;
  }

  if (a5 > 7)
  {
    *a7 = 0;
    *a6 = 0;
    v10 = sub_51B70(a1);
    if (v10)
    {
      v7 = 0;
      *a7 = v10;
      *a6 = 8;
      return v7;
    }

    return 0;
  }

  v7 = 561211770;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E5F4();
  }

  return v7;
}

void sub_4F18C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v15[0] = @"Status";
  v16[0] = [NSNumber numberWithInt:a1];
  v15[1] = @"Error";
  v16[1] = [NSNumber numberWithUnsignedInt:a2];
  v15[2] = @"Profile";
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v16[2] = [NSString stringWithUTF8String:a3];
  v15[3] = @"DeviceType";
  v16[3] = [NSNumber numberWithUnsignedInt:a4];
  v15[4] = @"Duration";
  v16[4] = [NSNumber numberWithUnsignedLongLong:a5];
  [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];
  v9 = AnalyticsSendEventLazy();
  v10 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = @"com.apple.Bluetooth.StartIOInfo";
    v13 = 1024;
    v14 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "BT Start IO Stats for metric '%@' sent to CoreAnalytics with result %u", buf, 0x12u);
  }
}

std::string *sub_4F374@<X0>(int a1@<W0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_2088(a2, "");
  if (a1 > 1953260896)
  {
    if (a1 == 1953260897)
    {
      v4 = "kBluetoothAudioDeviceTypeLEA";
      return std::string::assign(a2, v4);
    }

    if (a1 == 1953719151)
    {
      v4 = "kBluetoothAudioDeviceTypeSCO";
      return std::string::assign(a2, v4);
    }

LABEL_8:
    v4 = "unknown";
    return std::string::assign(a2, v4);
  }

  if (a1 == 1952538980)
  {
    v4 = "kBluetoothAudioDeviceTypeA3D";
    return std::string::assign(a2, v4);
  }

  if (a1 != 1952539500)
  {
    goto LABEL_8;
  }

  v4 = "kBluetoothAudioDeviceTypeA2DP";
  return std::string::assign(a2, v4);
}

void sub_4F440(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioServerPlugIn_Create(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  if (CFEqual(a2, v3))
  {
    operator new();
  }

  return 0;
}

const void *sub_4F530(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_70AF4(v10, a1 + 200);
  Count = CFArrayGetCount(*(a1 + 472));
  if (Count < 1)
  {
LABEL_8:
    v8 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 472), v5);
      if (ValueAtIndex)
      {
        v7 = sub_6A824(ValueAtIndex, 1952539500);
        v8 = v7;
        if (v7)
        {
          if ((*(*v7 + 296))(v7) && (*(*v8 + 16))(v8) != a2)
          {
            break;
          }
        }
      }

      if (Count == ++v5)
      {
        goto LABEL_8;
      }
    }
  }

  sub_70C40(v10);
  return v8;
}

uint64_t sub_4F654(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_70AF4(v11, a1 + 200);
  v4 = sub_4F530(a1, a2);
  v5 = (*(*qword_D8DE8 + 24))(qword_D8DE8, a2);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    operator new();
  }

  memset(buf, 0, sizeof(buf));
  v13 = 0;
  sub_2088(buf, "WS_ERROR_AGGREGATE_DEVICES_BT");
  if (SHIBYTE(v13) < 0)
  {
    sub_9780(__p, *buf, *&buf[8]);
  }

  else
  {
    *__p = *buf;
    v10 = v13;
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E628();
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(*buf);
  }

  sub_70C40(v11);
  return v7;
}

void sub_4F8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_70C40(&a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_4F97C(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_5829C();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      sub_585FC(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_58644(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void sub_4FA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_5AAC0(a2, 1752327777);
    sub_5AAC0(a2, 1936745318);
  }

  else
  {
    v5 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Wireless Splitter: Couldn't find device1", buf, 2u);
    }
  }

  if (a3)
  {
    sub_5AAC0(a3, 1752327777);
    sub_5AAC0(a3, 1936745318);
  }

  else
  {
    v6 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Wireless Splitter: Couldn't find device2", v7, 2u);
    }
  }
}

void sub_4FB74(uint64_t a1, void *a2, void *a3)
{
  if (sub_4FE54(a1, a2) && (v6 = sub_4FE54(a1, a2), (v7 = v6[1136]) != 0))
  {
    if (*(v7 + 192))
    {
      v8 = v6[1136];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (sub_4FE54(a1, a3))
  {
    v9 = sub_4FE54(a1, a3);
    v10 = v9[1136];
    if (v10)
    {
      if (*(v10 + 192))
      {
        v11 = v9[1136];
      }

      if (v8 && *(v10 + 192))
      {
        operator new();
      }
    }
  }

  memset(buf, 0, sizeof(buf));
  v15 = 0;
  sub_2088(buf, "WS_ERROR_AGGREGATE_DEVICES_CA");
  if (SHIBYTE(v15) < 0)
  {
    sub_9780(__p, *buf, *&buf[8]);
  }

  else
  {
    *__p = *buf;
    v13 = v15;
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E65C();
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(*buf);
  }
}
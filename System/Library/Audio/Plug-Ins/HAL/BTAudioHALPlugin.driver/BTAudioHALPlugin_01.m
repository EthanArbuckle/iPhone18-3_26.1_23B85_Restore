void sub_163C0(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = ((v2 - v1) / (v3 * v4));
  *(a1 + 12) = v5;
  if (v2 <= v1)
  {
    if (v2 >= v1)
    {
      v5 = 0;
    }

    else
    {
      if (v5)
      {
        goto LABEL_9;
      }

      v5 = -1;
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_9;
    }

    v5 = 1;
  }

  *(a1 + 12) = v5;
LABEL_9:
  v6 = qword_C22D0;
  if (os_log_type_enabled(qword_C22D0, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67110144;
    v7[1] = v5;
    v8 = 1024;
    v9 = v2;
    v10 = 1024;
    v11 = v1;
    v12 = 2048;
    v13 = v3;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "UpdateVolume mVolumeStep1dot15 %d mTargetVolume1dot15 %d mCurrentVolume1dot15 %d mRampTimeMs %f mSampleRate %f", v7, 0x28u);
  }
}

uint64_t sub_164F4(uint64_t result)
{
  v1 = llroundf(32768.0);
  if (v1 >= 0x8000)
  {
    v1 = 0x8000;
  }

  *result = 0;
  *(result + 4) = v1;
  *(result + 8) = v1;
  *(result + 12) = 0;
  return result;
}

void sub_16518(uint64_t a1, float a2)
{
  if (a2 >= 0.0)
  {
    v3 = 32768.0;
  }

  else
  {
    v3 = __exp10f(a2 / 20.0) * 32768.0;
  }

  v4 = llroundf(v3);
  if (v4 >= 0x8000)
  {
    v4 = 0x8000;
  }

  *(a1 + 8) = v4;

  sub_163C0(a1);
}

void sub_16584(_DWORD *a1, float *__A, unsigned int a3, _DWORD *a4)
{
  v5 = a3;
  v6 = __A;
  v8 = a1[1];
  v9 = a1[2];
  if (__PAIR64__(v9, v8) != 0x800000008000)
  {
    v10 = v9 - v8;
    if (v10 && (v11 = a1[3]) != 0)
    {
      v12 = v10 / v11;
      if (v12 < 0)
      {
        v12 = -v12;
      }

      if (v12 >= a3)
      {
        v13 = a3;
      }

      else
      {
        v13 = v12;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = a4[3];
    if (v14 == 9)
    {
      if (v13)
      {
        __Step = a1[3] * 0.000030518;
        __Start = vcvts_n_f32_s32(v8, 0xFuLL);
        v15 = a4[7];
        if (v15 == 1)
        {
          vDSP_vrampmul(__A, 1, &__Start, &__Step, __A, 1, v13);
        }

        else if (v15 == 2)
        {
          vDSP_vrampmul2(__A, __A + 1, 2, &__Start, &__Step, __A, __A + 1, 2, v13);
        }

        v6 += a4[7] * v13;
        if (v5 == v13)
        {
          v18 = a1[1] + a1[3] * v5;
        }

        else
        {
          v18 = a1[2];
        }

        a1[1] = v18;
        v5 -= v13;
      }

      if (v5)
      {
        __Start = a1[2] * 0.000030518;
        vDSP_vsmul(v6, 1, &__Start, v6, 1, a4[7] * v5);
      }
    }

    else if ((v14 & 0xC) != 0 && a4[8] == 16)
    {
      if (v13)
      {
        LOWORD(__Start) = a1[1];
        LOWORD(__Step) = a1[3];
        v17 = a4[7];
        if (v17 == 1)
        {
          vDSP_vrampmul_s1_15(__A, 1, &__Start, &__Step, __A, 1, v13);
        }

        else if (v17 == 2)
        {
          vDSP_vrampmul2_s1_15(__A, __A + 1, 2, &__Start, &__Step, __A, __A + 1, 2, v13);
        }

        v6 = (v6 + 2 * a4[7] * v13);
        if (v5 == v13)
        {
          v8 = a1[1] + a1[3] * v5;
        }

        else
        {
          v8 = a1[2];
        }

        a1[1] = v8;
        v5 -= v13;
      }

      if (v5)
      {
        LOWORD(__Start) = v8;
        LOWORD(__Step) = 0;
        vDSP_vrampmul_s1_15(v6, 1, &__Start, &__Step, v6, 1, a4[7] * v5);
      }
    }
  }
}

double sub_167E8(void *a1, double a2)
{
  v2 = a1 + 1;
  for (i = a1[1]; i; i = *(i + 8 * (v4 < a2)))
  {
    v4 = *(i + 32);
    if (v4 >= a2)
    {
      v2 = i;
    }
  }

  v5 = *(v2 + 4);
  v6 = *(v2 + 10);
  if (v2 == *a1)
  {
    v10 = v2[1];
    if (v10)
    {
      do
      {
        v8 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v8 = v2[2];
        v9 = *v8 == v2;
        v2 = v8;
      }

      while (!v9);
    }
  }

  else
  {
    v7 = *v2;
    if (*v2)
    {
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v2[2];
        v9 = *v8 == v2;
        v2 = v8;
      }

      while (v9);
    }
  }

  v11 = 1.0 / (a1[2] - 1);
  v12 = v5;
  v13 = *(v8 + 4);
  return (a2 - v12) * ((v11 * *(v8 + 10)) - (v6 * v11)) / (v13 - v12) + (v6 * v11);
}

float sub_168E0(float a1)
{
  v1 = &qword_C22E0;
  v2 = qword_C22E0;
  v3 = 1.0 / (qword_C22E8 - 1);
  if (qword_C22E0)
  {
    v4 = llroundf(a1 / v3);
    do
    {
      if (*(v2 + 32) >= v4)
      {
        v1 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 32) < v4));
    }

    while (v2);
  }

  v5 = *(v1 + 8);
  v6 = *(v1 + 5);
  if (v1 == qword_C22D8)
  {
    v10 = v1[1];
    if (v10)
    {
      do
      {
        v8 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v8 = v1[2];
        v9 = *v8 == v1;
        v1 = v8;
      }

      while (!v9);
    }
  }

  else
  {
    v7 = *v1;
    if (*v1)
    {
      do
      {
        v8 = v7;
        v7 = *(v7 + 8);
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v1[2];
        v9 = *v8 == v1;
        v1 = v8;
      }

      while (v9);
    }
  }

  v11 = v6;
  v12 = *(v8 + 5);
  return (((a1 - (v3 * v5)) * (v12 - v11)) / ((v3 * *(v8 + 8)) - (v3 * v5))) + v11;
}

float sub_169D4(float a1)
{
  v1 = a1;
  sub_17304(v3, &qword_C22F0);
  *&v1 = sub_167E8(v3, v1);
  sub_16FF8(v3, v3[1]);
  return *&v1;
}

double sub_16A2C(double a1, float a2)
{
  sub_17304(v7, &qword_C22F0);
  v4 = sub_167E8(v7, a1);
  sub_16FF8(v7, v7[1]);
  v5 = qword_C22D0;
  if (os_log_type_enabled(qword_C22D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v9 = (v4 / a2);
    v10 = 2048;
    v11 = a1;
    v12 = 2048;
    v13 = v4;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Calculated a volScalarFactor = %f given destVolDb = %f, destVolScalar = %f, currentVolScalar = %f", buf, 0x2Au);
  }

  return (v4 / a2);
}

void *sub_16B40(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_16BC0(a1, v4, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_16BC0(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_16C5C(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_16C5C(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *sub_16E04(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_16E5C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_16E5C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_16FF8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_16FF8(a1, *a2);
    sub_16FF8(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_1704C(void *a1, double *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_170CC(a1, v4, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_170CC(void *a1, double *a2, double *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_17168(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

double *sub_17168(void *a1, double *a2, double **a3, double *a4, double *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = *(v13 + 2);
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v16;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v16 + 1;
        v16 = *(v16 + 1);
      }

      while (v16);
      goto LABEL_43;
    }

LABEL_42:
    v17 = (a1 + 1);
LABEL_43:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = *(a2 + 1);
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = *(v19 + 2);
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[4];
          if (v6 >= v21)
          {
            break;
          }

          v20 = *v20;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v21 >= v6)
        {
          break;
        }

        v5 = v20 + 1;
        v20 = *(v20 + 1);
      }

      while (v20);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_17304(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1735C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1735C(uint64_t result, double *a2, double *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_170CC(v5, (v5 + 8), v4 + 4);
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

uint64_t sub_173E4()
{
  qword_C22D0 = os_log_create("com.apple.bluetooth", "BTAudio");
  memcpy(__dst, &unk_88828, sizeof(__dst));
  sub_16B40(&qword_C22D8, __dst, 17);
  __cxa_atexit(sub_161A8, &qword_C22D8, &dword_0);
  memcpy(__dst, &unk_88938, sizeof(__dst));
  sub_1704C(&qword_C22F0, __dst, 17);
  return __cxa_atexit(sub_161D4, &qword_C22F0, &dword_0);
}

void sub_17644(uint64_t a1)
{
  v24[0] = kMXSystemControllerNotification_NowPlayingAppDidChange;
  v24[1] = kMXSystemControllerNotification_ActiveAudioRouteDidChange;
  v24[2] = kMXSystemControllerNotification_SystemVolumeDidChange;
  v24[3] = kMXSystemControllerNotification_PickableRoutesDidChange;
  v2 = [NSArray arrayWithObjects:v24 count:4];
  *(*(a1 + 32) + 96) = 0;
  *(*(a1 + 32) + 152) = 0;
  *(*(a1 + 32) + 88) = 0;
  *(*(a1 + 32) + 80) = [[NSMutableDictionary alloc] initWithCapacity:2];
  *(*(a1 + 32) + 112) = [[NSMutableSet alloc] initWithCapacity:2];
  v3 = [*(*(a1 + 32) + 104) setAttributeForKey:kMXSystemControllerProperty_SubscribeToNotifications andValue:v2];
  if (v3)
  {
    v4 = qword_C2308;
    if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67109120;
      v21 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: Subscribe to notification failed code: %d", &v20, 8u);
    }

    *(*(a1 + 32) + 104) = 0;
  }

  if (*(*(a1 + 32) + 104))
  {
    v5 = qword_C2308;
    if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
    {
      v6 = getpid();
      v20 = 67109376;
      v21 = v3;
      v22 = 1024;
      v23 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: Initialization via  %d PID %d", &v20, 0xEu);
    }

    CMSessionGetNotificationCenter();
    v7 = *(a1 + 32);
    v8 = *(v7 + 104);
    v9 = *(v7 + 144);
    FigNotificationCenterAddWeakListener();
    CMSessionGetNotificationCenter();
    v10 = *(a1 + 32);
    v11 = *(v10 + 104);
    v12 = *(v10 + 144);
    FigNotificationCenterAddWeakListener();
    v13 = qword_C2308;
    if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: Add listener (kMXSystemControllerNotification_SystemVolumeDidChange)", &v20, 2u);
    }

    CMSessionGetNotificationCenter();
    v14 = *(a1 + 32);
    v15 = *(v14 + 104);
    v16 = *(v14 + 144);
    FigNotificationCenterAddWeakListener();
    if (_os_feature_enabled_impl())
    {
      CMSessionGetNotificationCenter();
      v17 = *(a1 + 32);
      v18 = *(v17 + 104);
      v19 = *(v17 + 144);
      FigNotificationCenterAddWeakListener();
    }
  }
}

void sub_17AEC(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithUnsignedInt:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = *(*(a1 + 32) + 112);
    if (!v4)
    {
      *(*(a1 + 32) + 112) = [[NSMutableSet alloc] initWithCapacity:2];
      v4 = *(*(a1 + 32) + 112);
    }

    [v4 addObject:v3];
  }

  v5 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7[0] = 67109120;
    v7[1] = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: Registering for volume change Device %d", v7, 8u);
  }
}

void sub_17C60(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithUnsignedInt:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [*(*(a1 + 32) + 112) removeObject:v2];
  }

  v4 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: Unregistering for volume change Device %d", v6, 8u);
  }
}

void sub_17DE4(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v16 = 0;
    [Weak copyAttributeForKey:kMXSystemControllerProperty_PickedRoute withValueOut:&v16];
    v3 = qword_C2308;
    v4 = os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT);
    v5 = kMXSession_RouteDescriptionKey_AVAudioRouteName;
    if (v4)
    {
      v6 = [v16 objectForKeyedSubscript:kMXSession_RouteDescriptionKey_AVAudioRouteName];
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor:Av audio route name %@", buf, 0xCu);
    }

    if (([@"HeadphonesBT" isEqualToString:{objc_msgSend(v16, "objectForKeyedSubscript:", v5)}] & 1) != 0 || objc_msgSend(@"HeadsetBT", "isEqualToString:", objc_msgSend(v16, "objectForKeyedSubscript:", v5)))
    {
      v7 = [v16 objectForKeyedSubscript:kMXSession_RouteDescriptionKey_RouteUID];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 componentsSeparatedByString:@"-"];
        v10 = *(*(a1 + 32) + 152);
        if (v10)
        {

          *(*(a1 + 32) + 152) = 0;
        }

        *(*(a1 + 32) + 152) = [objc_msgSend(v9 "firstObject")];
      }
    }

    else
    {
      v11 = *(*(a1 + 32) + 152);
      if (v11)
      {

        v8 = 0;
        *(*(a1 + 32) + 152) = 0;
      }

      else
      {
        v8 = 0;
      }
    }

    v12 = qword_C2308;
    if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(v13 + 152);
      v15 = *(v13 + 120);
      *buf = 138413058;
      v18 = v8;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Pickable routes for routeUid %@ _currentDeviceUID %@ _currentActiveVolumeAudioCategory %@ (current category is <%@>):", buf, 0x2Au);
    }
  }
}

void sub_18080(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [objc_msgSend(v2 componentsSeparatedByString:{@"-", "firstObject"}];
    if (![*(*(a1 + 40) + 80) objectForKey:v3])
    {
      v4 = qword_C2308;
      if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 48);
        v7 = 138412546;
        v8 = v3;
        v9 = 1024;
        v10 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Creating _btAudioDeviceDict entry for %@ Device ID %u: ", &v7, 0x12u);
      }

      v6 = [[BTAudioPersonalizedVolumeDevice alloc] initWithBluetoothInfo:*(a1 + 48) deviceAddr:v3];
      [(BTAudioPersonalizedVolumeDevice *)v6 setAvNotificationMonitorQueue:*(*(a1 + 40) + 168)];
      [*(*(a1 + 40) + 80) setObject:v6 forKey:v3];
    }
  }

  else if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_ERROR))
  {
    sub_794E0();
  }
}

void sub_182C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [objc_msgSend(v2 componentsSeparatedByString:{@"-", "firstObject"}];
    v4 = [*(*(a1 + 40) + 80) objectForKey:v3];
    if (v4)
    {
      v5 = v4;
      [*(*(a1 + 40) + 80) removeObjectForKey:v3];
      v6 = qword_C2308;
      if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412546;
        v8 = v3;
        v9 = 1024;
        v10 = [v5 retainCount];
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "unRegisterPersonalizedVolumeListener %@ lookupDevice retainCount %d", &v7, 0x12u);
      }

      [v5 invalidate];
    }
  }

  else if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_ERROR))
  {
    sub_794E0();
  }
}

NSNumber *sub_184B8(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v3 = qword_C2308;
    if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Error: PersonalizedVolumeV2 feature flag is not enabled", v5, 2u);
    }

    v2 = 0;
  }

  result = [NSNumber numberWithBool:v2];
  *(*(a1 + 32) + 128) = result;
  return result;
}

id sub_186D0(uint64_t a1)
{
  result = [*(a1 + 32) getPersonalizedVolumeDevice:*(a1 + 40)];
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) BOOLValue] ^ 1;

    return [v3 NotifyManualVolumeChanged:v4 shouldUpdateBuds:v5];
  }

  return result;
}

void sub_187B8(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithUnsignedInt:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = *(*(a1 + 32) + 112);
    if (!v4)
    {
      *(*(a1 + 32) + 112) = [[NSMutableSet alloc] initWithCapacity:2];
      v4 = *(*(a1 + 32) + 112);
    }

    [v4 addObject:v3];
  }

  v5 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [*(*(a1 + 32) + 112) count];
    v8[0] = 67109376;
    v8[1] = v6;
    v9 = 1024;
    v10 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: Registering Device %d List %d", v8, 0xEu);
  }
}

void sub_1899C(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v9 = 0.0;
    v8 = 0;
    LODWORD(v3) = *(a1 + 56);
    [Weak performVolumeOperation:4 volume:0 category:0 mode:@"HeadphonesBT" routeName:*(a1 + 48) routeDeviceIdentifier:0 routeSubtype:v3 outVolume:&v9 outSequenceNumber:&v8 outMuted:0 outCategoryCopy:0 outModeCopy:0];
    if (!*(*(a1 + 32) + 72))
    {
      *(*(a1 + 32) + 72) = objc_alloc_init(NSMutableArray);
    }

    v4 = qword_C2308;
    if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
    {
      *&v5 = COERCE_DOUBLE([NSNumber numberWithLongLong:v8]);
      v6 = *(*(a1 + 32) + 72);
      *buf = 138412546;
      v11 = *&v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: adding sequence num: %@ sequeneArray %@", buf, 0x16u);
    }

    [*(*(a1 + 32) + 72) addObject:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", v8)}];
    CFRelease(*(a1 + 48));
    v7 = qword_C2308;
    if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "software volume: CM Volume: %f", buf, 0xCu);
    }
  }
}

void sub_18C38(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v3 = Weak;
    v4 = qword_C2308;
    if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 52);
      v10 = *(a1 + 56);
      v11 = *(a1 + 60);
      v12 = *(a1 + 64);
      *buf = 138414082;
      v20 = @"Audio/Video";
      v21 = 2048;
      v22 = v8;
      v23 = 2112;
      v24 = @"PhoneCall";
      v25 = 2048;
      v26 = v9;
      v27 = 2112;
      v28 = @"VoiceCommand";
      v29 = 2048;
      v30 = v10;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v12;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Category %@ mediaVolume %f, Category %@ telephoneVolume %f, Category %@ voiceCommandVolume %f, rampUpDuration %f, rampDownDuration %f", buf, 0x52u);
    }

    LODWORD(v5) = *(a1 + 48);
    LODWORD(v6) = *(a1 + 60);
    LODWORD(v7) = *(a1 + 64);
    [v3 performVolumeOperation:12 volume:@"Audio/Video" category:0 mode:@"HeadphonesBT" routeName:*(a1 + 40) routeDeviceIdentifier:0 routeSubtype:v5 rampUpDuration:v6 rampDownDuration:v7 outVolume:0 outSequenceNumber:0 outMuted:0 outCategoryCopy:0 outModeCopy:0];
    LODWORD(v13) = *(a1 + 52);
    LODWORD(v14) = *(a1 + 60);
    LODWORD(v15) = *(a1 + 64);
    [v3 performVolumeOperation:12 volume:@"PhoneCall" category:0 mode:@"HeadphonesBT" routeName:*(a1 + 40) routeDeviceIdentifier:0 routeSubtype:v13 rampUpDuration:v14 rampDownDuration:v15 outVolume:0 outSequenceNumber:0 outMuted:0 outCategoryCopy:0 outModeCopy:0];
    LODWORD(v16) = *(a1 + 56);
    LODWORD(v17) = *(a1 + 60);
    LODWORD(v18) = *(a1 + 64);
    [v3 performVolumeOperation:12 volume:@"VoiceCommand" category:0 mode:@"HeadphonesBT" routeName:*(a1 + 40) routeDeviceIdentifier:0 routeSubtype:v16 rampUpDuration:v17 rampDownDuration:v18 outVolume:0 outSequenceNumber:0 outMuted:0 outCategoryCopy:0 outModeCopy:0];
    CFRelease(*(a1 + 40));
  }
}

void sub_18E98(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithUnsignedInt:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [*(*(a1 + 32) + 112) removeObject:v2];
  }

  v4 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [*(*(a1 + 32) + 112) count];
    v7[0] = 67109376;
    v7[1] = v5;
    v8 = 1024;
    v9 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: Un-Registering Device %d List %d", v7, 0xEu);
  }
}

void sub_195AC(uint64_t a1)
{
  if ((byte_C2324 & 1) == 0)
  {
    if (notify_register_check("com.apple.bluetooth.FarFieldBluetoothRouteEnable", &dword_C2320))
    {
      if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_ERROR))
      {
        sub_79514();
      }

      return;
    }

    byte_C2324 = 1;
  }

  v2 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56))
    {
      v3 = "enabled";
    }

    else
    {
      v3 = "disabled";
    }

    *buf = 136446210;
    v9 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Farfield Audio Route %{public}s", buf, 0xCu);
  }

  notify_set_state(dword_C2320, *(a1 + 56));
  notify_post("com.apple.bluetooth.FarFieldBluetoothRouteEnable");
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  v6[0] = @"address";
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  v6[1] = @"value";
  v7[0] = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v5, +[NSString defaultCStringEncoding]);
  v7[1] = [NSNumber numberWithBool:*(a1 + 56)];
  [(NSDistributedNotificationCenter *)v4 postNotificationName:@"com.apple.bluetooth.FarFieldBluetoothRouteEnable" object:0 userInfo:[NSDictionary options:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v7 forKeys:v6 count:2], 3];
}

_BYTE *sub_1977C(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_9780(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_197A8(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

os_log_t sub_19888()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C2308 = result;
  return result;
}

uint64_t sub_198B8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a5[1];
  v6 = *(a5 + 8);
  v7 = v5 / v6;
  if (*a2 < (v5 / v6))
  {
    LODWORD(v7) = *a2;
  }

  if (v7)
  {
    result = 0;
    v9 = (v7 * v6);
    *a2 = v7;
    v10 = *a5;
    v11 = *(a5 + 11);
    *a5 += v9;
    a5[1] = v5 - v9;
  }

  else
  {
    v10 = 0;
    LODWORD(v9) = 0;
    *a2 = 0;
    v11 = *(a5 + 11);
    result = 1684368995;
  }

  *(a3 + 16) = v10;
  *(a3 + 8) = v11;
  *(a3 + 12) = v9;
  return result;
}

uint64_t sub_1991C(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  if (v5 || ((v6 = *(a5 + 32), (v6 - 1633772389) >= 3) ? (v7 = v6 == 1818440480) : (v7 = 1), v7))
  {
    *a2 = 1;
    *(a3 + 16) = *a5;
    *(a3 + 8) = *(a5 + 52);
    *(a3 + 12) = v5;
    if (a4)
    {
      *a4 = *(a5 + 64);
    }

    v9 = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    v9 = 1684303459;
    *a2 = 0;
    v10 = qword_C2328;
    if (os_log_type_enabled(qword_C2328, OS_LOG_TYPE_ERROR))
    {
      sub_79548(v10);
    }
  }

  return v9;
}

void sub_199EC(unsigned int a1, uint64_t a2)
{
  if (a1 && a1 != 1684303459 && a1 != 1684368995)
  {
    *v9 = 0;
    v10 = 0;
    v11 = 0;
    v4 = bswap32(a1);
    *&v9[1] = v4;
    if ((v4 & 0x80) != 0)
    {
      if (!__maskrune(v4, 0x40000uLL))
      {
        goto LABEL_20;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v4] & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    v5 = v4 >> 8;
    if ((v4 & 0x8000) != 0)
    {
      if (!__maskrune(v5, 0x40000uLL))
      {
        goto LABEL_20;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v5] & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    v6 = v4 << 8 >> 24;
    if ((v4 & 0x800000) != 0)
    {
      if (!__maskrune(v6, 0x40000uLL))
      {
        goto LABEL_20;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v6] & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    v7 = v4 >> 24;
    if (v4 < 0)
    {
      if (__maskrune(v7, 0x40000uLL))
      {
        goto LABEL_18;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v7] & 0x40000) != 0)
    {
LABEL_18:
      strcpy(&v9[5], "'");
      v9[0] = 39;
      goto LABEL_21;
    }

LABEL_20:
    sprintf(v9, "%d", a1);
LABEL_21:
    v8 = qword_C2328;
    if (os_log_type_enabled(qword_C2328, OS_LOG_TYPE_ERROR))
    {
      sub_7958C(a2, v9, v8);
    }
  }
}

os_log_t sub_19B8C()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C2328 = result;
  return result;
}

id sub_19C64(uint64_t a1)
{
  DMIsMigrationNeeded();
  *(*(a1 + 32) + 16) = [[IDSService alloc] initWithService:@"com.apple.private.alloy.bluetooth.audio"];
  [*(*(a1 + 32) + 16) addDelegate:*(a1 + 32) queue:*(qword_D8DF0 + 160)];
  v2 = &byte_BA20A[32246];
  v3 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Initializing BTAudioIDSConnection", buf, 2u);
  }

  v4 = [*(*(a1 + 32) + 16) devices];
  v5 = qword_C2330;
  if (os_log_type_enabled(qword_C2330, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    *buf = 134218242;
    v34 = v6;
    v35 = 2112;
    v36 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Current registered devices %lu. %@", buf, 0x16u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  result = [v4 countByEnumeratingWithState:&v29 objects:v47 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v30;
    *&v8 = 136316674;
    v24 = v8;
    v25 = *v30;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        v13 = *(v2 + 102);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [objc_msgSend(v12 "productName")];
          v27 = [v12 productBuildVersion];
          v26 = [objc_msgSend(v12 "service")];
          v14 = "false";
          if ([v12 isNearby])
          {
            v15 = "true";
          }

          else
          {
            v15 = "false";
          }

          if ([v12 isConnected])
          {
            v14 = "true";
          }

          v16 = v2;
          v17 = [v12 serviceMinCompatibilityVersion];
          v18 = [*(a1 + 32) deviceIsCompatible:v12];
          *buf = v24;
          v19 = "will not";
          if (v18)
          {
            v19 = "will";
          }

          v34 = v28;
          v35 = 2112;
          v36 = v27;
          v37 = 2080;
          v38 = v26;
          v39 = 2080;
          v40 = v15;
          v41 = 2080;
          v42 = v14;
          v43 = 2048;
          v44 = v17;
          v2 = v16;
          v10 = v25;
          v45 = 2080;
          v46 = v19;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Device %s %@ is registered on service %s. Nearby: %s Connected: %s. ServiceMincompatibilityVersion: %lu. Device %s arbitrate", buf, 0x48u);
        }

        v20 = *(a1 + 32);
        if ([v20 compatibleAndNearby])
        {
          v21 = &dword_0 + 1;
        }

        else if ([*(a1 + 32) deviceIsCompatible:v12] && objc_msgSend(v12, "isNearby"))
        {
          v21 = [v12 isConnected];
        }

        else
        {
          v21 = 0;
        }

        [v20 setCompatibleAndNearby:v21];
        v22 = *(a1 + 32);
        if ([v22 compatibleAndConnected])
        {
          v23 = &dword_0 + 1;
        }

        else if ([*(a1 + 32) deviceIsCompatible:v12] && objc_msgSend(v12, "isNearby"))
        {
          v23 = [v12 isConnected];
        }

        else
        {
          v23 = 0;
        }

        [v22 setCompatibleAndConnected:v23];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      result = [v4 countByEnumeratingWithState:&v29 objects:v47 count:16];
      v9 = result;
    }

    while (result);
  }

  return result;
}

void sub_1A72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B880(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

os_log_t sub_1B8A0()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C2330 = result;
  return result;
}

uint64_t sub_1B8D0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1024458752;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = -1024458752;
  *(a1 + 64) = 0;
  v4 = qword_C2338;
  if (os_log_type_enabled(qword_C2338, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Creating audio level", v6, 2u);
  }

  *(a1 + 72) = a2;
  return a1;
}

double sub_1B974(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 && (*(*v2 + 1336))(v2))
  {
    if (*(*(a1 + 72) + 216))
    {
      *(a1 + 64) = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -1024458752;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = -1024458752;
    }
  }

  return result;
}

void sub_1B9F8(uint64_t a1, unsigned int a2, const float *a3)
{
  __C = 0.0;
  v4 = *(a1 + 72);
  if (v4 && (*(*v4 + 1336))(v4))
  {
    if (a2 - 1921 > 0xFFFFF87F)
    {
      if (a3)
      {
        if (sub_57E8(*(a1 + 72)) == 1952539500)
        {
          (*(**(a1 + 72) + 824))(&v28);
          v7 = v28;
          v33 = v29;
          v8 = v31;
          v34 = v30;
          v9 = v32;
          v10 = (v28 / a2);
          if (v10 >= 4)
          {
            v11 = v10 >> 2;
          }

          else
          {
            v11 = 2;
          }

          v12.i32[0] = 1;
          v12.i32[1] = a2;
          v13 = vadd_s32(*a1, v12);
          *a1 = v13;
          if (!(v13.i32[0] % v11))
          {
            vDSP_svesq(a3, v8, &__C, a2);
            v14 = (__C / a2) + 1.0e-12;
            v15 = log10f(v14) * 10.0;
            *(a1 + 12) = *(a1 + 12) + v15;
            *(a1 + 8) += a2;
            if (v15 <= -119.9)
            {
              *(a1 + 64) += v11 * a2;
            }

            else
            {
              *(a1 + 64) = 0;
            }
          }

          v16 = *(a1 + 4);
          if (v7 * 0.25 <= v16)
          {
            v17 = *(a1 + 12) / (*a1 / v11);
            *(a1 + 16) = v17;
            v18 = *(a1 + 8);
            v19 = *(qword_D8DF0 + 184);
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_1BCC8;
            v20[3] = &unk_AE220;
            v25 = v17;
            v26 = v11;
            v27 = v10;
            v20[4] = v18;
            v20[5] = v16;
            *&v20[6] = v7;
            v21 = v33;
            v22 = v34;
            v23 = v8;
            v24 = v9;
            dispatch_async(v19, v20);
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = -1024458752;
            *(a1 + 24) = 0;
          }
        }
      }

      else if (os_log_type_enabled(qword_C2338, OS_LOG_TYPE_ERROR))
      {
        sub_79764();
      }
    }

    else if (os_log_type_enabled(qword_C2338, OS_LOG_TYPE_ERROR))
    {
      sub_79798();
    }
  }
}

double sub_1BCC8(uint64_t a1)
{
  v2 = qword_C2338;
  if (os_log_type_enabled(qword_C2338, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 88);
    v5 = *(a1 + 92);
    v6 = *(a1 + 96);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = 134219264;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "BTAudioDetect virtual avgPwr %fdB,intv %u/%u,processed %llu,delivered %llu,rate %f", &v10, 0x36u);
  }

  return result;
}

void sub_1BDAC(uint64_t a1, uint64_t a2, const float *a3, uint64_t a4)
{
  __C[0] = 0.0;
  if (sub_70820())
  {
    v8 = *(a1 + 72);
    if (v8)
    {
      if ((*(*v8 + 1336))(v8))
      {
        if (a3)
        {
          v9 = *(a1 + 72);
          if (*(v9 + 224))
          {
            if ((a2 - 7681) > 0xFFFFFFFFFFFFE1FFLL)
            {
              if (a4 && sub_57E8(v9) == 1953719151)
              {
                (*(**(a1 + 72) + 824))(&v34);
                v11 = v34;
                v38 = v35;
                v39 = v36;
                v12 = *(*(*(a1 + 72) + 224) + 80);
                if (v12)
                {
                  v13 = __IA[0];
                  v14 = a2 / v12;
                  v15 = (v34 / v14);
                  v16 = *&__IA[1];
                  if (v15 >= 4)
                  {
                    v17 = v15 >> 2;
                  }

                  else
                  {
                    v17 = 2;
                  }

                  v18 = *(a1 + 44) + v14;
                  v19 = *(a1 + 40) + 1;
                  *(a1 + 40) = v19;
                  *(a1 + 44) = v18;
                  *(a1 + 32) += a4;
                  if (!(v19 % v17))
                  {
                    vDSP_svesq(a3, v13, __C, v14);
                    v20 = (__C[0] / v14) + 1.0e-12;
                    *(a1 + 52) = *(a1 + 52) + (log10f(v20) * 10.0);
                    v18 = *(a1 + 44);
                    *(a1 + 48) += v14;
                  }

                  if (v11 + v11 <= v18)
                  {
                    v21 = *(a1 + 52) / (*(a1 + 40) / v17);
                    *(a1 + 56) = v21;
                    v22 = *(a1 + 48);
                    v23 = *(a1 + 32);
                    v24 = *(qword_D8DF0 + 184);
                    block[0] = _NSConcreteStackBlock;
                    block[1] = 3221225472;
                    block[2] = sub_1C0A4;
                    block[3] = &unk_AE240;
                    v31 = v21;
                    v32 = v17;
                    v33 = (v11 / v14);
                    block[4] = v22;
                    block[5] = v18;
                    *&block[6] = v11;
                    v26 = v38;
                    v27 = v39;
                    v28 = v13;
                    v29 = v16;
                    v30 = v23;
                    dispatch_async(v24, block);
                    *(a1 + 40) = 0;
                    *(a1 + 48) = 0;
                    *(a1 + 56) = -1024458752;
                    *(a1 + 32) = 0;
                  }
                }

                else if (os_log_type_enabled(qword_C2338, OS_LOG_TYPE_ERROR))
                {
                  sub_797CC();
                }
              }
            }

            else
            {
              v10 = qword_C2338;
              if (os_log_type_enabled(qword_C2338, OS_LOG_TYPE_ERROR))
              {
                sub_79800(a2, v10);
              }
            }
          }
        }
      }
    }
  }
}

double sub_1C0A4(uint64_t a1)
{
  v2 = qword_C2338;
  if (os_log_type_enabled(qword_C2338, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 100);
    v6 = *(a1 + 104);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 88);
    v11 = 134219520;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "BTAudioDetect Input avgPwr %fdB,intv %u/%u,processed %llu,delivered %llu,rate %f,encoded %zu", &v11, 0x40u);
  }

  return result;
}

void sub_1C194(uint64_t a1, unsigned int a2, const float *a3, uint64_t a4)
{
  __C = 0.0;
  if (sub_70820())
  {
    v8 = *(a1 + 72);
    if (v8)
    {
      if ((*(*v8 + 1336))(v8))
      {
        if (a2 - 1921 > 0xFFFFF87F)
        {
          if (a3)
          {
            if (sub_57E8(*(a1 + 72)) == 1953719151)
            {
              (*(**(a1 + 72) + 824))(&v32);
              v9 = v32;
              v37 = v33;
              v10 = v35;
              v38 = v34;
              v11 = v36;
              v12 = (v32 / a2);
              if (v12 >= 4)
              {
                v13 = v12 >> 2;
              }

              else
              {
                v13 = 2;
              }

              v14.i32[0] = 1;
              v14.i32[1] = a2;
              v15 = vadd_s32(*a1, v14);
              *a1 = v15;
              *(a1 + 24) += a4;
              if (!(v15.i32[0] % v13))
              {
                vDSP_svesq(a3, v10, &__C, a2);
                v16 = (__C / a2) + 1.0e-12;
                v17 = log10f(v16) * 10.0;
                *(a1 + 12) = *(a1 + 12) + v17;
                *(a1 + 8) += a2;
                if (v17 <= -119.9)
                {
                  *(a1 + 64) += v13 * a2;
                }

                else
                {
                  *(a1 + 64) = 0;
                }
              }

              v18 = *(a1 + 4);
              if (v9 * 0.25 <= v18)
              {
                v19 = *(a1 + 12) / (*a1 / v13);
                *(a1 + 16) = v19;
                v20 = *(a1 + 8);
                v21 = *(a1 + 24);
                v22 = *(qword_D8DF0 + 184);
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_1C48C;
                block[3] = &unk_AE240;
                v29 = v19;
                v30 = v13;
                v31 = v12;
                block[4] = v20;
                block[5] = v18;
                *&block[6] = v9;
                v24 = v37;
                v25 = v38;
                v26 = v10;
                v27 = v11;
                v28 = v21;
                dispatch_async(v22, block);
                *a1 = 0;
                *(a1 + 8) = 0;
                *(a1 + 16) = -1024458752;
                *(a1 + 24) = 0;
              }
            }
          }

          else if (os_log_type_enabled(qword_C2338, OS_LOG_TYPE_ERROR))
          {
            sub_79878();
          }
        }

        else if (os_log_type_enabled(qword_C2338, OS_LOG_TYPE_ERROR))
        {
          sub_798AC();
        }
      }
    }
  }
}

double sub_1C48C(uint64_t a1)
{
  v2 = qword_C2338;
  if (os_log_type_enabled(qword_C2338, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 100);
    v6 = *(a1 + 104);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 88);
    v11 = 134219520;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "BTAudioDetect Output avgPwr %fdB,intv %u/%u,processed %llu,delivered %llu,rate %f,encoded %zu", &v11, 0x40u);
  }

  return result;
}

os_log_t sub_1C57C()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C2338 = result;
  return result;
}

void sub_1C5AC(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t *a6, int a7)
{
  v13 = qword_C2340;
  if (os_log_type_enabled(qword_C2340, OS_LOG_TYPE_DEBUG))
  {
    if (*(a6 + 23) < 0)
    {
      a6 = *a6;
    }

    v14[0] = 67110402;
    v14[1] = a2;
    v15 = 1024;
    v16 = a3;
    v17 = 1024;
    v18 = a4;
    v19 = 2048;
    v20 = a5;
    v21 = 2080;
    v22 = a6;
    v23 = 1024;
    v24 = a7;
    _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "Sending arbitration metric - version: %d, productId: %d, action: %d, epoch: %llu, responseId: %s, type: %d", v14, 0x2Eu);
  }
}

void sub_1C6BC(uint64_t a1, int a2, int a3, int a4)
{
  v7 = qword_C2340;
  if (os_log_type_enabled(qword_C2340, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109632;
    v8[1] = a2;
    v9 = 1024;
    v10 = a3;
    v11 = 1024;
    v12 = a4;
    _os_log_debug_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "Sending codec metric - codecType: %d, mediaType: %d, [sampleRate: %d]", v8, 0x14u);
  }
}

void sub_1C784()
{
  v0 = qword_C2340;
  if (os_log_type_enabled(qword_C2340, OS_LOG_TYPE_DEBUG))
  {
    sub_798E0(v0);
  }
}

os_log_t sub_1C7CC()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C2340 = result;
  return result;
}

uint64_t sub_1C7FC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *sub_38E7C(a1) = &off_AE270;
  v8 = qword_C2348;
  if (os_log_type_enabled(qword_C2348, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_39024(a1);
    v10 = "output";
    if (a3 == 1768845428)
    {
      v10 = "input";
    }

    v12 = 136446466;
    v13 = v10;
    v14 = 1024;
    v15 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Creating %{public}s audio control with audioObjectID: %u", &v12, 0x12u);
  }

  *(a1 + 24) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  return a1;
}

void sub_1C934(uint64_t a1)
{
  sub_38F74(a1);

  operator delete();
}

uint64_t sub_1CA80(uint64_t a1, __int32 *a2)
{
  if (!a2)
  {
    return 1852797029;
  }

  v3 = (**(qword_D8DF0 + 144))(*(qword_D8DF0 + 144), *(a1 + 8), 1, a2);
  if (v3)
  {
    v4 = qword_C2348;
    if (os_log_type_enabled(qword_C2348, OS_LOG_TYPE_ERROR))
    {
      sub_76460(a2, v4, v5);
    }
  }

  return v3;
}

os_log_t sub_1CB10()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C2348 = result;
  return result;
}

uint64_t sub_1CB40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1948(a1, a3);
  *v7 = off_AE2D8;
  v7[1153] = 0;
  v7[1135] = 0;
  v7[1137] = 0;
  v7[1136] = 0;
  sub_709AC(v7 + 1154, v8);
  sub_8998(a1, a2);
  (*(*a1 + 1600))(a1, a4);
  sub_1CBC(a1, a4);
  sub_1CED4(a1, a4);
  *(a1 + 368) = 1818583905;
  atomic_store(1u, (a1 + 288));
  *(a1 + 292) = 1;
  *(a1 + 296) = 0x40D7700000000000;
  *(a1 + 304) = 0xC6C70636DLL;
  v9 = *(a1 + 9168);
  *(a1 + 312) = 2 * v9;
  *(a1 + 316) = 1;
  *(a1 + 320) = 2 * v9;
  *(a1 + 324) = v9;
  *(a1 + 328) = 16;
  *(a1 + 372) = 10240;
  *(a1 + 376) = 0xA00000002800;
  *(a1 + 88) = 0;
  *(a1 + 40) = sub_24E2C() + *(a1 + 372);
  v10 = (a1 + 296);
  if ((*(*a1 + 1080))(a1))
  {
    *(a1 + 56) = sub_24E2C() + *(a1 + 372);
    *(a1 + 72) = sub_24E2C() + *(a1 + 372);
    *(a1 + 9208) = *(a1 + 328);
    v11 = *(a1 + 312);
    *(a1 + 9176) = *v10;
    *(a1 + 9192) = v11;
    *(a1 + 9192) = 2;
    *(a1 + 9200) = 0x100000002;
  }

  *(a1 + 9152) = &unk_88AB8;
  *(a1 + 9160) = 4;
  *(a1 + 9120) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9128) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9136) = CFArrayCreateMutable(0, 0, 0);
  sub_1D2DC(a1, *(a1 + 9112));
  *(a1 + 388) = 0;
  *(a1 + 396) = 0;
  *(a1 + 424) = 0;
  *(a1 + 480) = 1056964608;
  *(a1 + 496) = 0;
  *(a1 + 488) = 0xC2C80000C2480000;
  if ((*(*a1 + 1320))(a1))
  {
    operator new();
  }

  (*(*a1 + 496))(a1, *(a1 + 488));
  *(a1 + 508) = 1;
  *(a1 + 9104) = 1;
  v12 = *(a1 + 216);
  if (v12)
  {
    sub_1C6BC(*(qword_D8DF0 + 456), *(v12 + 52), 3, *v10);
  }

  return a1;
}

uint64_t sub_1CED4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyDirection");
  if (xpc_get_type(value) != &_xpc_type_int64)
  {
    v5 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
    {
      sub_76AF0(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    if (sub_70820())
    {
      goto LABEL_30;
    }
  }

  v13 = xpc_int64_get_value(value);
  v14 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyInputAudio");
  if (xpc_get_type(v14) != &_xpc_type_BOOL)
  {
    v15 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
    {
      sub_76B68(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    if (sub_70820())
    {
      goto LABEL_30;
    }
  }

  *(a1 + 9144) = xpc_BOOL_get_value(v14);
  (*(*a1 + 1056))(a1, (v13 >> 1) & 1);
  (*(*a1 + 1064))(a1, *(a1 + 9144));
  v23 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v24 = (*(*a1 + 1072))(a1);
    v25 = (*(*a1 + 1080))(a1);
    v63[0] = 67109632;
    v63[1] = v13;
    v64 = 1024;
    v65 = v24;
    v66 = 1024;
    v67 = v25;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "LECA: Direction %x Stream state output = %d input = %d", v63, 0x14u);
  }

  v26 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyMaxChannels");
  if (xpc_get_type(v26) != &_xpc_type_int64)
  {
    v27 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
    {
      sub_79924(v27, v28, v29, v30, v31, v32, v33, v34);
    }

    if (sub_70820())
    {
      goto LABEL_30;
    }
  }

  *(a1 + 9168) = xpc_int64_get_value(v26);
  v35 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertySupportsAudioMixing");
  if (xpc_get_type(v35) != &_xpc_type_BOOL)
  {
    v36 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
    {
      sub_76C58(v36, v37, v38, v39, v40, v41, v42, v43);
    }

    if (sub_70820())
    {
      goto LABEL_30;
    }
  }

  *(a1 + 9165) = xpc_BOOL_get_value(v35);
  v44 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertySupportedCodecs");
  if (xpc_get_type(v44) != &_xpc_type_array)
  {
    v45 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
    {
      sub_76CD0(v45, v46, v47, v48, v49, v50, v51, v52);
    }

    if (sub_70820())
    {
      goto LABEL_30;
    }
  }

  *(a1 + 9112) = _CFXPCCreateCFObjectFromXPCObject();
  v53 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyECNRIsEnabled");
  if (xpc_get_type(v53) != &_xpc_type_BOOL)
  {
    v54 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
    {
      sub_76DC0(v54, v55, v56, v57, v58, v59, v60, v61);
    }

    if (sub_70820())
    {
LABEL_30:
      abort();
    }
  }

  result = xpc_BOOL_get_value(v53);
  if (result)
  {
    return (*(*a1 + 424))(a1, 1);
  }

  return result;
}

void sub_1D2DC(uint64_t a1, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray) > 0)
  {
    v4 = 0;
    do
    {
      valuePtr = 0;
      v5 = *(a1 + 296);
      v6 = *(a1 + 320);
      *__p = *(a1 + 304);
      v41 = v6;
      v7 = *(a1 + 9176);
      v8 = *(a1 + 9200);
      v38 = *(a1 + 9184);
      v39 = v8;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      v10 = *(a1 + 9160);
      if (v10)
      {
        v11 = *(a1 + 9152);
        while (1)
        {
          v12 = *v11++;
          if (valuePtr == v12)
          {
            break;
          }

          if (!--v10)
          {
            goto LABEL_7;
          }
        }

        v14 = valuePtr - 515;
        if (valuePtr - 515) < 0xA && ((0x30Fu >> v14))
        {
          v15 = 64000;
          v16 = qword_88C30[v14];
        }

        else
        {
          v17 = qword_C2350;
          if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_ERROR))
          {
            sub_7999C(&v36, v37, v17);
          }

          v15 = 0;
        }

        if ((*(*a1 + 1072))(a1))
        {
          operator new();
        }

        if ((*(*a1 + 1080))(a1) && (valuePtr - 515) <= 1)
        {
          operator new();
        }

        v18 = qword_C2350;
        if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
        {
          sub_1DD7C(valuePtr, buf);
          v19 = v50 >= 0 ? buf : *buf;
          *v43 = 136315394;
          v44 = v19;
          v45 = 1024;
          v46 = v15;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Adding codec %s at bitrate %d", v43, 0x12u);
          if (SHIBYTE(v50) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
LABEL_7:
        v13 = qword_C2350;
        if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = valuePtr;
          _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Could not find codec %d matching codec priority table, skipping codec", buf, 8u);
        }
      }

      ++v4;
    }

    while (v4 < CFArrayGetCount(theArray));
  }

  if ((*(*a1 + 1072))(a1) && *(a1 + 9160))
  {
    v20 = 0;
    while (1)
    {
      v21 = sub_1E090(a1, *(*(a1 + 9152) + 4 * v20));
      if (v21)
      {
        break;
      }

      if (++v20 >= *(a1 + 9160))
      {
        goto LABEL_35;
      }
    }

    *(a1 + 216) = v21;
  }

LABEL_35:
  if ((*(*a1 + 1080))(a1))
  {
    v22 = 0;
    v23 = 1;
    while (1)
    {
      v24 = v23;
      v25 = sub_1E1D4(a1, dword_88C08[v22]);
      if (v25)
      {
        break;
      }

      v23 = 0;
      v22 = 1;
      if ((v24 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    *(a1 + 224) = v25;
  }

LABEL_41:
  v26 = *(a1 + 224);
  if (v26)
  {
    if (*(a1 + 9104) == 2)
    {
      v27 = sub_1E090(a1, *(v26 + 8));
      if (v27)
      {
        *(a1 + 216) = v27;
      }
    }
  }

  v28 = *(a1 + 216);
  if (v28)
  {
    sub_11E18(*(a1 + 208), *(v28 + 52));
    v29 = *(a1 + 216);
    v30 = *(v29 + 96);
    v31 = *(v29 + 80);
    *(a1 + 296) = *(v29 + 64);
    *(a1 + 312) = v31;
    *(a1 + 328) = v30;
    v32 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
    {
      sub_1DD7C(*(v29 + 52), __p);
      if ((SBYTE7(v41) & 0x80u) == 0)
      {
        v33 = __p;
      }

      else
      {
        v33 = __p[0];
      }

      v34 = *(a1 + 296);
      v35 = *(a1 + 9104);
      *buf = 136315650;
      *&buf[4] = v33;
      v48 = 2048;
      v49 = v34;
      v50 = 1024;
      v51 = v35;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Update physical format based %s at bitrate %f mAudioContentType = %d", buf, 0x1Cu);
      if (SBYTE7(v41) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t sub_1D944(uint64_t a1)
{
  *a1 = off_AE2D8;
  v2 = *(*(a1 + 416) + 9280);
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
      v10 = *(v2 + 24);
      *__p = v4;
    }

    sub_4D7D4(v3, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  CFRelease(*(a1 + 9112));
  sub_1DB14(a1);
  sub_5F00(a1);
  if ((*(*a1 + 1680))(a1) && (*(*a1 + 1072))(a1))
  {
    v5 = (*(*a1 + 1680))(a1);
    free(v5);
    (*(*a1 + 1696))(a1, 0);
  }

  (*(*a1 + 72))(a1);
  sub_70A28(a1 + 9232, v6);
  return sub_1B04(a1, v7);
}

void sub_1DB14(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 9120));
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9120), i);
      if (ValueAtIndex)
      {
        v6 = ValueAtIndex;
        v7 = *ValueAtIndex;
        if (*ValueAtIndex)
        {
          v8 = qword_C2350;
          if (!os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEBUG) || (*buf = 134217984, v12 = v7, _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "Deleting BTAudioEncoder 0x%p from mCodecList", buf, 0xCu), (v7 = *v6) != 0))
          {
            (*(*v7 + 8))(v7);
          }

          *v6 = 0;
        }

        v9 = v6[1];
        if (v9)
        {
          v10 = qword_C2350;
          if (!os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEBUG) || (*buf = 134217984, v12 = v9, _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Deleting BTAudioDecoder 0x%p from mCodecList", buf, 0xCu), (v9 = v6[1]) != 0))
          {
            (*(*v9 + 8))(v9);
          }
        }

        free(v6);
      }
    }
  }

  if (*(a1 + 216))
  {
    *(a1 + 216) = 0;
  }

  if (*(a1 + 224))
  {
    *(a1 + 224) = 0;
  }

  CFArrayRemoveAllValues(*(a1 + 9120));
  CFRelease(*(a1 + 9120));
  CFArrayRemoveAllValues(*(a1 + 9128));
  CFRelease(*(a1 + 9128));
  CFArrayRemoveAllValues(*(a1 + 9136));
  CFRelease(*(a1 + 9136));
}

void sub_1DD34(uint64_t a1)
{
  sub_1D944(a1);

  operator delete();
}

std::string *sub_1DD7C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 23) = 7;
  strcpy(a2, "Unknown");
  if ((a1 - 513) >= 0xC)
  {
    v2 = "Unknown Codec";
  }

  else
  {
    v2 = off_AE9F0[a1 - 513];
  }

  return std::string::assign(a2, v2);
}

void sub_1DDF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE0C(CFArrayRef *a1, uint64_t a2)
{
  if (a2)
  {
    Count = CFArrayGetCount(a1[1140]);
    v5 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "Yes";
      v7 = *(a2 + 16);
      if (*a2)
      {
        v8 = "Yes";
      }

      else
      {
        v8 = "NO";
      }

      if (!*(a2 + 8))
      {
        v6 = "NO";
      }

      v17 = 134219010;
      v18 = a2;
      v19 = 1024;
      *v20 = v7;
      *&v20[4] = 2048;
      *&v20[6] = Count;
      v21 = 2080;
      v22 = v8;
      v23 = 2080;
      v24 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Adding BTAudioEncoder %p type %d, to mCodecArray at index %ld Encode %s decode %s", &v17, 0x30u);
    }

    CFArrayInsertValueAtIndex(a1[1140], Count, a2);
    v9 = CFArrayGetCount(a1[1141]);
    if (!sub_D2A8(v9, a1[1141], *(a2 + 24)))
    {
      v10 = qword_C2350;
      if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 24);
        v12 = *(a2 + 16);
        v17 = 134218496;
        v18 = v11;
        v19 = 2048;
        *v20 = v9;
        *&v20[8] = 1024;
        *&v20[10] = v12;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Adding sampleRate %f to mSampleRateArray at index %ld via Codec %d ", &v17, 0x1Cu);
      }

      CFArrayInsertValueAtIndex(a1[1141], v9, (a2 + 24));
    }

    if (*(a2 + 8))
    {
      v13 = CFArrayGetCount(a1[1142]);
      if (!sub_D2A8(v13, a1[1142], *(a2 + 24)))
      {
        v14 = qword_C2350;
        if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a2 + 24);
          v16 = *(a2 + 16);
          v17 = 134218496;
          v18 = v15;
          v19 = 2048;
          *v20 = v13;
          *&v20[8] = 1024;
          *&v20[10] = v16;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Adding sampleRate %f to mSampleRateInputArray at index %ld via Codec %d ", &v17, 0x1Cu);
        }

        CFArrayInsertValueAtIndex(a1[1142], v13, (a2 + 24));
      }
    }
  }

  else if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_ERROR))
  {
    sub_76E90();
  }
}

uint64_t sub_1E090(uint64_t a1, int a2)
{
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEBUG))
  {
    sub_76EC4();
  }

  if ((a2 - 513) > 0xFD || CFArrayGetCount(*(a1 + 9120)) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9120), v4);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      v7 = *ValueAtIndex;
      if (*ValueAtIndex)
      {
        if (*(v7 + 52) == a2)
        {
          break;
        }
      }
    }

    if (++v4 >= CFArrayGetCount(*(a1 + 9120)))
    {
      return 0;
    }
  }

  v9 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = v7;
    _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "GetEncoder returned encoder at addr %p", &v10, 0xCu);
    return *v6;
  }

  return v7;
}

uint64_t sub_1E1D4(uint64_t a1, int a2)
{
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEBUG))
  {
    sub_76F38();
  }

  if ((a2 - 513) > 0xFD || CFArrayGetCount(*(a1 + 9120)) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9120), v4);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      v7 = ValueAtIndex[1];
      if (v7)
      {
        if (*(v7 + 8) == a2)
        {
          break;
        }
      }
    }

    if (++v4 >= CFArrayGetCount(*(a1 + 9120)))
    {
      return 0;
    }
  }

  v9 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = v7;
    _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "GetDecoder returned decoder at addr %p", &v10, 0xCu);
    return v6[1];
  }

  return v7;
}

uint64_t sub_1E318(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a4 && (v6 = sub_1E090(a1, a2)) != 0)
  {
    *(a1 + 216) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1E1D4(a1, a2);
  if (v8)
  {
    *(a1 + 224) = v8;
    v7 = 1;
  }

  v9 = *(a1 + 216);
  if (v9)
  {
    v10 = *(v9 + 64);
    v11 = *(v9 + 80);
    *(a1 + 328) = *(v9 + 96);
    *(a1 + 296) = v10;
    *(a1 + 312) = v11;
    v12 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
    {
      sub_1DD7C(*(v9 + 52), __p);
      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = *(a1 + 296);
      v15 = *(a1 + 9104);
      *buf = 136315650;
      v20 = v13;
      v21 = 2048;
      v22 = v14;
      v23 = 1024;
      v24 = v15;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Update physical format based %s at bitrate %f mAudioContentType = %d", buf, 0x1Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return v7;
}

uint64_t sub_1E474(uint64_t a1, int a2, float *a3)
{
  v6 = *(a1 + 296);
  *a3 = v6;
  if ((*(*a1 + 1080))(a1) && a2 == 2 && *(a1 + 224))
  {
    v7 = dword_88C08;
    v8 = 2;
  }

  else
  {
    v8 = *(a1 + 9160);
    if (!v8)
    {
      v9 = 0;
LABEL_19:
      v15 = 1;
LABEL_20:
      v17 = 1;
      goto LABEL_21;
    }

    v7 = *(a1 + 9152);
  }

  v9 = 0;
  v10 = v8;
  do
  {
    v11 = *v7++;
    v12 = sub_1E090(a1, v11);
    if (!v12)
    {
      goto LABEL_14;
    }

    if (!v9)
    {
      v13 = *(v12 + 64);
LABEL_13:
      v6 = v13;
      v9 = v12;
      goto LABEL_14;
    }

    v13 = *(v12 + 64);
    if (v13 > v6)
    {
      goto LABEL_13;
    }

LABEL_14:
    --v10;
  }

  while (v10);
  if (!v9)
  {
    goto LABEL_19;
  }

  v14 = *(a1 + 216);
  if (v9 != v14)
  {
    v15 = 0;
    v16 = *(v9 + 64);
    *a3 = v16;
    goto LABEL_20;
  }

  v22 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(v9 + 52);
    v24 = *(v14 + 52);
    v25 = 67109376;
    *v26 = v23;
    *&v26[4] = 1024;
    *&v26[6] = v24;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Preferred encoded is same as current encoder = %d : %d", &v25, 0xEu);
  }

  v15 = 0;
  v17 = 0;
LABEL_21:
  v18 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *a3;
    if (v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v9 + 52);
    }

    v25 = 134218240;
    *v26 = v19;
    *&v26[8] = 1024;
    v27 = v20;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "New suggested sampling rate %f preferredEncoder = %d", &v25, 0x12u);
  }

  return v17;
}

id *sub_1E6A0(uint64_t a1, unsigned int a2)
{
  v8 = 0.0;
  sub_1E474(a1, a2, &v8);
  v4 = *(a1 + 216);
  if (v4 && *(v4 + 64) == v8)
  {
    *(a1 + 9104) = a2;
    (*(*a1 + 528))(a1, *(a1 + 296));
    v5 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 216) + 52);
      *buf = 67109120;
      v10 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Updating Content Type immediately as we are already using the requested codec: %d", buf, 8u);
    }

    result = *(a1 + 208);
    if (result)
    {
      sub_124B0(result, *(a1 + 9104));
      return 0;
    }
  }

  else
  {
    (*(*a1 + 240))(a1, 1650549620, a2);
    return (&dword_0 + 1);
  }

  return result;
}

void sub_1E7FC(uint64_t a1, int a2)
{
  v4 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 9104);
    v8[0] = 1.5047e-36;
    v8[1] = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Update content type via config change, new content type =%d", v8, 8u);
  }

  v8[0] = 0.0;
  sub_1E474(a1, a2, v8);
  *(a1 + 9104) = a2;
  v6.n128_f64[0] = v8[0];
  (*(*a1 + 528))(a1, v6);
  v7 = *(a1 + 208);
  if (v7)
  {
    sub_124B0(v7, *(a1 + 9104));
  }
}

uint64_t sub_1E918(uint64_t a1, double a2)
{
  v4 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 296);
    v22 = 134218240;
    v23 = v5;
    v24 = 2048;
    v25 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Updating sample rate %f -> %f", &v22, 0x16u);
  }

  if (*(a1 + 224) && (v6 = *(a1 + 9104), v6 == 2))
  {
    v7 = dword_88C08;
  }

  else
  {
    v6 = *(a1 + 9160);
    if (!v6)
    {
LABEL_12:
      v12 = 560227702;
      if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_ERROR))
      {
        sub_79A10();
      }

      return v12;
    }

    v7 = *(a1 + 9152);
  }

  v8 = v6;
  while (1)
  {
    v9 = sub_1E090(a1, *v7);
    v10 = *v7++;
    v11 = sub_1E1D4(a1, v10);
    if (v9)
    {
      if (*(v9 + 64) == a2)
      {
        break;
      }
    }

    if (!--v8)
    {
      goto LABEL_12;
    }
  }

  if (v9 == *(a1 + 216))
  {
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_ERROR))
    {
      sub_799DC();
    }
  }

  else
  {
    v14 = *(v9 + 64);
    v15 = *(v9 + 80);
    *(a1 + 328) = *(v9 + 96);
    *(a1 + 296) = v14;
    *(a1 + 312) = v15;
    *(a1 + 216) = v9;
    if (v11)
    {
      *(a1 + 224) = v11;
    }

    v16 = *(a1 + 208);
    if (v16)
    {
      sub_11E18(v16, *(v9 + 52));
    }
  }

  *(a1 + 296) = a2;
  v17 = qword_C2350;
  v12 = 0;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 216);
    if (v18)
    {
      v19 = *(v18 + 52);
    }

    else
    {
      v19 = 255;
    }

    v20 = *(a1 + 224);
    if (v20)
    {
      v21 = *(v20 + 8);
    }

    else
    {
      v21 = 255;
    }

    v22 = 134218752;
    v23 = a2;
    v24 = 2048;
    v25 = a2;
    v26 = 1024;
    v27 = v19;
    v28 = 1024;
    v29 = v21;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Device sample rate changed %f -> %f [encoder = %d, decoder = %d]", &v22, 0x22u);
    return 0;
  }

  return v12;
}

void *sub_1EB74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1EBDC(uint64_t a1, char a2, float a3)
{
  *(a1 + 480) = a3;
  *(a1 + 488) = ((a3 + -1.0) * 100.0) + 0.0;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEBUG))
  {
    sub_77014(a3);
  }

  result = (*(*a1 + 1320))(a1);
  if (result)
  {
    if ((*(a1 + 408) & 1) == 0)
    {
      v7 = *(a1 + 400);
      if (v7)
      {
        v8 = atomic_load((v7 + 24));
        if (v8)
        {
          sub_16518(*(a1 + 400), *(a1 + 488));
        }
      }
    }

    if ((a2 & 1) != 0 || (result = sub_42134(), result))
    {
      v9 = 0x6F757470766F6C64;
      v10 = 0;
      return (*(*a1 + 248))(a1, &v9);
    }
  }

  return result;
}

void sub_1ED38(uint64_t a1, float a2)
{
  *(a1 + 488) = a2;
  *(a1 + 480) = ((0.0 - a2) / -100.0) + 1.0;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEBUG))
  {
    sub_77094(a2);
  }

  if ((*(*a1 + 1320))(a1))
  {
    if (*(a1 + 408) == 1)
    {
      v4 = *(a1 + 208);
      if (v4)
      {
        sub_126AC(v4, *(a1 + 480));
      }
    }

    else
    {
      v5 = *(a1 + 400);
      if (v5)
      {
        v6 = atomic_load((v5 + 24));
        if (v6)
        {
          sub_16518(*(a1 + 400), *(a1 + 488));
        }
      }
    }
  }
}

uint64_t sub_1EE28(_DWORD *a1, int a2)
{
  v4 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BT LEA device set ecnr is %{public}s. AG will %{public}s EC/NR.", v8, 0x16u);
  }

  a1[2304] = a2;
  strcpy(v8, "rncebolg");
  BYTE1(v8[2]) = 0;
  HIWORD(v8[2]) = 0;
  return (*(*a1 + 248))(a1, v8);
}

uint64_t sub_1EF4C(CFTypeRef *a1, const void *a2)
{
  v4 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "LECA: Setting Supported Codecs", v6, 2u);
  }

  CFRelease(a1[1139]);
  a1[1139] = a2;
  return (*(*a1 + 30))(a1, 1885762657, a2);
}

uint64_t sub_1F000(uint64_t a1)
{
  sub_1DB14(a1);
  sub_5F00(a1);
  *(a1 + 9120) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9128) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9136) = CFArrayCreateMutable(0, 0, 0);
  sub_1D2DC(a1, *(a1 + 9112));
  v5 = 0.0;
  sub_1E474(a1, *(a1 + 9104), &v5);
  v2.n128_f64[0] = v5;
  v3 = *(*a1 + 528);

  return v3(a1, v2);
}

void sub_1F0E0(uint64_t a1, int a2, int a3)
{
  v6 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = "Yes";
    }

    else
    {
      v7 = "No";
    }

    v8 = *(a1 + 224);
    if (v8)
    {
      v9 = *(v8 + 8);
    }

    else
    {
      v9 = 255;
    }

    if (a3)
    {
      v10 = "Yes";
    }

    else
    {
      v10 = "No";
    }

    v11 = *(a1 + 216);
    if (v11)
    {
      v12 = *(v11 + 52);
    }

    else
    {
      v12 = 255;
    }

    v26 = 136446978;
    v27 = v7;
    v28 = 1024;
    v29 = v9;
    v30 = 2082;
    v31 = v10;
    v32 = 1024;
    v33 = v12;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "LECA: Updating Codecs Input = %{public}s Decoder = %d , Output = %{public}s Encoder = %d", &v26, 0x22u);
  }

  if (a3 && !*(a1 + 216) && *(a1 + 9160))
  {
    v24 = 0;
    while (1)
    {
      v25 = sub_1E090(a1, *(*(a1 + 9152) + 4 * v24));
      if (v25)
      {
        break;
      }

      if (++v24 >= *(a1 + 9160))
      {
        goto LABEL_17;
      }
    }

    *(a1 + 216) = v25;
  }

LABEL_17:
  if (a2)
  {
    v13 = *(a1 + 224);
    if (v13)
    {
      goto LABEL_25;
    }

    v14 = 1;
    while (1)
    {
      v15 = v14;
      v16 = sub_1E1D4(a1, dword_88C08[v13]);
      if (v16)
      {
        break;
      }

      v14 = 0;
      v13 = 1;
      if ((v15 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 224) = v16;
LABEL_25:
  v17 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v18 = "Yes";
    }

    else
    {
      v18 = "No";
    }

    v19 = *(a1 + 224);
    if (v19)
    {
      v20 = *(v19 + 8);
    }

    else
    {
      v20 = 255;
    }

    if (a3)
    {
      v21 = "Yes";
    }

    else
    {
      v21 = "No";
    }

    v22 = *(a1 + 216);
    if (v22)
    {
      v23 = *(v22 + 52);
    }

    else
    {
      v23 = 255;
    }

    v26 = 136446978;
    v27 = v18;
    v28 = 1024;
    v29 = v20;
    v30 = 2082;
    v31 = v21;
    v32 = 1024;
    v33 = v23;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "LECA: Codec Update completed Input = %{public}s Decoder = %d , Output = %{public}s Encoder = %d", &v26, 0x22u);
  }
}

uint64_t sub_1F338(uint64_t a1, int *a2)
{
  v4 = *a2;
  result = 1;
  if (*a2 <= 1701015153)
  {
    if (v4 == 1650549620 || v4 == 1651728749)
    {
      return result;
    }
  }

  else
  {
    if (v4 == 1701015154)
    {
      return result;
    }

    if (v4 == 1937009955 || v4 == 1870098020)
    {
      if (((*(*a1 + 1080))(a1) & 1) != 0 || a2[1] != 1768845428) && ((v6 = (*(*a1 + 1072))(a1), v7 = a2[1], (v6) || v7 != 1869968496) && (v7 == 1735159650 || v7 == 1869968496 || v7 == 1768845428))
      {
        return a2[2] == 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return sub_6FE8();
}

uint64_t sub_1F4B8(uint64_t a1, int *a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a2 == 1701015154 || v3 == 1651728749)
  {
    *a3 = 0;
    return 0;
  }

  if (v3 == 1650549620)
  {
    *a3 = 1;
    return 0;
  }

  return sub_6FF0();
}

uint64_t sub_1F508(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *a2;
  if (*a2 > 1668641651)
  {
    if (v6 != 1701015154)
    {
      if (v6 == 1668641652)
      {
        result = sub_6FF8();
        *a5 += 36;
        return result;
      }

      goto LABEL_10;
    }

LABEL_8:
    v7 = 4;
    goto LABEL_9;
  }

  if (v6 == 1650549620)
  {
    goto LABEL_8;
  }

  if (v6 == 1651728749)
  {
    v7 = 1;
LABEL_9:
    *a5 = v7;
    return 0;
  }

LABEL_10:

  return sub_6FF8();
}

uint64_t sub_1F5F0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int *a7, uint64_t a8)
{
  v12 = *a2;
  if (*a2 <= 1668641651)
  {
    if (v12 != 1650549620)
    {
      if (v12 != 1651728749)
      {
        goto LABEL_37;
      }

      result = 0;
      *a8 = *(a1 + 9165);
      v21 = 1;
LABEL_43:
      *a7 = v21;
      return result;
    }

    result = 0;
    v26 = *(a1 + 9104);
LABEL_36:
    *a8 = v26;
    v21 = 4;
    goto LABEL_43;
  }

  switch(v12)
  {
    case 1853059619:
      if (CFArrayGetCount(*(a1 + 9128)))
      {
        v22 = *CFArrayGetValueAtIndex(*(a1 + 9128), 0);
        if (CFArrayGetCount(*(a1 + 9128)) < 2)
        {
          v24 = v22;
        }

        else
        {
          v23 = 1;
          v24 = v22;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9128), v23);
            if (*ValueAtIndex < v24)
            {
              v24 = *ValueAtIndex;
            }

            if (*ValueAtIndex > v22)
            {
              v22 = *ValueAtIndex;
            }

            ++v23;
          }

          while (v23 < CFArrayGetCount(*(a1 + 9128)));
        }
      }

      else
      {
        v24 = 8000.0;
        v22 = 8000.0;
      }

      result = 0;
      *a8 = v24;
      *(a8 + 8) = v22;
      v21 = 16;
      goto LABEL_43;
    case 1701015154:
      result = 0;
      v26 = *(a1 + 9216);
      goto LABEL_36;
    case 1668641652:
      result = sub_7000();
      if (result)
      {
        return result;
      }

      v14 = *a7;
      v15 = (a6 - v14) / 0xCu;
      if (v15 >= 2)
      {
        v15 = 2;
      }

      if ((a6 - v14) >= 0xC)
      {
        v16 = 0;
        v17 = (a8 + v14);
        if (v15 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v15;
        }

        while (1)
        {
          if (v16 == 2)
          {
            v17[6] = 1701015154;
            v19 = v17 + 7;
            v20 = v17 + 8;
            goto LABEL_18;
          }

          if (v16 == 1)
          {
            break;
          }

          if (!v16)
          {
            *v17 = 1650549620;
            v19 = v17 + 1;
            v20 = v17 + 2;
LABEL_18:
            *v19 = 1918990199;
            *v20 = 0;
          }

          if (v18 == ++v16)
          {
            LODWORD(v14) = *a7;
            goto LABEL_21;
          }
        }

        v17[3] = 1651728749;
        v19 = v17 + 4;
        v20 = v17 + 5;
        goto LABEL_18;
      }

LABEL_21:
      result = 0;
      v21 = v14 + 12 * v15;
      goto LABEL_43;
  }

LABEL_37:

  return sub_7000();
}

uint64_t sub_1F880(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, unsigned int *a6)
{
  v6 = 561211770;
  if (!a6)
  {
    return v6;
  }

  if (*a2 == 1853059700)
  {
    if (a5 != 8)
    {
      if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_ERROR))
      {
        sub_79A44();
      }

      return v6;
    }

    v8 = *(a1 + 296);
    v9 = *a6;
    v10 = qword_C2350;
    v11 = os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      v17 = 67109376;
      v18 = v8;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "setPropertyData: sample rate (%d->%d)\n", &v17, 0xEu);
    }

    if (v9 != v8)
    {
      if (*(a1 + 224) && *(a1 + 9104) == 2)
      {
        v12 = 9136;
      }

      else
      {
        v12 = 9128;
      }

      v14 = sub_D2A8(v11, *(a1 + v12), v9);
      v15 = qword_C2350;
      v16 = os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT);
      if (!v14)
      {
        v6 = 560226676;
        if (v16)
        {
          v17 = 67109376;
          v18 = v8;
          v19 = 1024;
          v20 = v9;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "setPropertyData unsupported: sample rate (%d->%d)\n", &v17, 0xEu);
        }

        return v6;
      }

      if (v16)
      {
        v17 = 67109376;
        v18 = v8;
        v19 = 1024;
        v20 = v9;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Request device configuration change: sample rate (%d->%d)\n", &v17, 0xEu);
      }

      (*(*a1 + 240))(a1, 1853059700, v9);
    }

    return 0;
  }

  if (*a2 == 1650549620)
  {
    if (*a6 != *(a1 + 9104))
    {
      sub_1E6A0(a1, *a6);
    }

    return 0;
  }

  return sub_7008();
}

uint64_t sub_1FB34()
{
  v0 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_1FB80()
{
  v0 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_1FBCC()
{
  v0 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_1FC18()
{
  v0 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_1FC64(uint64_t a1)
{
  v2 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 416) + 9288);
    v32[0] = BYTE3(v3);
    v32[1] = BYTE2(v3);
    v32[2] = BYTE1(v3);
    v32[3] = v3;
    v32[4] = 0;
    v4 = *(a1 + 432);
    v5 = sub_5448(a1);
    v6 = (*(*a1 + 16))(a1);
    v7 = (*(*a1 + 408))(a1);
    *buf = 136447234;
    *v34 = v32;
    *&v34[8] = 2048;
    *&v34[10] = v4;
    v35 = 2114;
    v36 = v5;
    v37 = 1024;
    v38 = v6;
    v39 = 1024;
    v40 = v7;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "LECA Starting IO on profile %{public}s, activeIO:%llu to %{public}@ mAudioObjectID: %u Wait IO Start %d", buf, 0x2Cu);
  }

  v8 = *(a1 + 432);
  if (v8 == -1)
  {
    v9 = 1852797029;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_ERROR))
    {
      sub_79AAC();
    }

    goto LABEL_26;
  }

  v9 = 0;
  *(a1 + 432) = v8 + 1;
  *(a1 + 592) = 0;
  if (v8)
  {
LABEL_26:
    v22 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 432);
      *buf = 67109376;
      *v34 = v9;
      *&v34[4] = 2048;
      *&v34[6] = v23;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "LECA StartIO returns %x (%llu)", buf, 0x12u);
    }

    return v9;
  }

  v10 = (*(*a1 + 1536))(a1);
  if (!*(a1 + 208))
  {
LABEL_25:
    v9 = 0;
    *(a1 + 472) = 0;
    goto LABEL_26;
  }

  v11 = v10;
  pthread_mutex_lock((a1 + 664));
  v13 = *(a1 + 16);
  if (v13)
  {
    v12.n128_f64[0] = sub_1B974(v13);
  }

  if (((*(*a1 + 376))(a1, v12) & 1) == 0)
  {
    sub_5450(a1);
  }

  sub_5718(a1);
  if (v11)
  {
    v14 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "LECA StartIO CIS Already up", buf, 2u);
    }
  }

  else
  {
    sub_11930(*(a1 + 208), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  if (!*(a1 + 508) || v11 & 1 | (((*(*a1 + 408))(a1) & 1) == 0))
  {
LABEL_24:
    pthread_mutex_unlock((a1 + 664));
    goto LABEL_25;
  }

  v15 = mach_absolute_time();
  v16 = pthread_cond_timedwait_relative_np((a1 + 728), (a1 + 664), (a1 + 776));
  if (v16 == 60)
  {
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_ERROR))
    {
      sub_79A78();
    }

    dispatch_async(*(qword_D8DF0 + 192), &stru_AE998);
  }

  if (*(a1 + 192))
  {
    v17 = mach_absolute_time();
    v18 = sub_352E8(*(*(a1 + 416) + 9280), v17 - v15, 1);
    v19 = sub_57E8(a1);
    v20 = (*(*a1 + 856))(a1);
    v21 = *(qword_D8DF0 + 192);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_20158;
    v26[3] = &unk_AD388;
    v27 = 0;
    v28 = v16;
    v29 = v19;
    v30 = v20;
    v31 = v18;
    dispatch_async(v21, v26);
    goto LABEL_24;
  }

  v25 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "device No longer valid, StartIO return immediately", buf, 2u);
  }

  pthread_mutex_unlock((a1 + 664));
  return 560227702;
}

void sub_20158(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);
  sub_4F374(*(a1 + 40), &__p);
  sub_4F18C(v2, v3, &__p, *(a1 + 44), *(a1 + 48));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_201C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_201E0(uint64_t a1)
{
  v2 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 416) + 9288);
    v11[0] = BYTE3(v3);
    v11[1] = BYTE2(v3);
    v11[2] = BYTE1(v3);
    v11[3] = v3;
    v11[4] = 0;
    LODWORD(v3) = *(a1 + 9164);
    v4 = *(a1 + 432);
    *buf = 136446722;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "LECA StopIO %{public}s, activeIO:%llu, need immediate CIS disconnect:%d", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_70AF4(buf, a1 + 600);
  v5 = *(a1 + 432);
  if (v5)
  {
    *(a1 + 592) = 0;
    v6 = v5 - 1;
    *(a1 + 432) = v6;
    if (!v6)
    {
      *(a1 + 440) = 0u;
      *(a1 + 456) = 0u;
      if (*(a1 + 9164) == 1)
      {
        sub_5D54(a1);
        (*(*a1 + 1424))(a1, 1);
        *(a1 + 9164) = 0;
      }

      else
      {
        (*(*a1 + 1528))(a1);
      }

      v8 = *(a1 + 216);
      if (v8)
      {
        AudioConverterReset(*(v8 + 56));
        if (*(a1 + 792) == 1)
        {
          sub_111E8(*(a1 + 216));
        }
      }

      v9 = *(a1 + 224);
      if (v9)
      {
        AudioConverterReset(*(v9 + 16));
        if (sub_24F3C(a1 + 144))
        {
          sub_25350(a1 + 144);
        }
      }

      sub_2990(a1);
      sub_29E0(a1);
      sub_5DC8(a1);
      *(a1 + 585) = 1;
      pthread_mutex_lock((*(a1 + 416) + 9512));
      pthread_cond_broadcast((*(a1 + 416) + 9576));
      pthread_mutex_unlock((*(a1 + 416) + 9512));
    }

    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEBUG))
    {
      sub_79AE0((a1 + 432));
    }

    v7 = 0;
  }

  else
  {
    v7 = 1852797029;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_ERROR))
    {
      sub_79B58();
    }
  }

  sub_70C40(buf);
  return v7;
}

double sub_2049C(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0.0;
  }
}

__n128 sub_204B4@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = 216;
  if (a2)
  {
    v3 = 224;
  }

  v4 = *(a1 + v3);
  result = *(v4 + 64);
  v6 = *(v4 + 80);
  *a3 = result;
  *(a3 + 16) = v6;
  *(a3 + 32) = *(v4 + 96);
  return result;
}

void sub_204DC(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kBTAudioMsgPropertyDeviceUID");
  if (!string)
  {
    v4 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
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
  v13 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (*(*a1 + 16))(a1);
    v15 = 136315394;
    v16 = string;
    v17 = 1024;
    v18 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "LECA Device XPC connection for UID %s connected to[ %d ] ", &v15, 0x12u);
    v12 = *(a1 + 200);
  }

  **(a1 + 208) = v12;
}

CFIndex sub_20638(uint64_t a1, uint64_t a2, CFIndex Count, int a4)
{
  if (a4)
  {
    v7 = *(a1 + 224);
    v8 = *(v7 + 72);
    v20 = v8;
    v21 = *(v7 + 88);
LABEL_3:
    v9 = 9136;
    goto LABEL_8;
  }

  v10 = *(a1 + 216);
  v11 = *(v10 + 72);
  v20 = v11;
  v21 = *(v10 + 88);
  if ((*(*a1 + 1080))(a1) && *(a1 + 224) && *(a1 + 9104) == 2)
  {
    goto LABEL_3;
  }

  v9 = 9128;
LABEL_8:
  v12 = *(a1 + v9);
  if (CFArrayGetCount(v12) < Count)
  {
    Count = CFArrayGetCount(v12);
  }

  if (CFArrayGetCount(v12) >= 1)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
      v16 = *ValueAtIndex;
      v17 = a2 + 56 * v13;
      *v17 = *ValueAtIndex;
      *(v17 + 24) = v21;
      *(v17 + 8) = v20;
      *(v17 + 40) = v16;
      *(v17 + 48) = v16;
      v13 = v14;
    }

    while (CFArrayGetCount(v12) > v14++);
  }

  return Count;
}

uint64_t sub_20770(uint64_t a1, double *a2, uint64_t a3)
{
  if (a3 != 1)
  {
    v6 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_FAULT))
    {
      sub_771FC(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  if (CFArrayGetCount(*(a1 + 9128)))
  {
    v14 = *CFArrayGetValueAtIndex(*(a1 + 9128), 0);
    if (CFArrayGetCount(*(a1 + 9128)) < 2)
    {
      v16 = v14;
    }

    else
    {
      v15 = 1;
      v16 = v14;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9128), v15);
        if (*ValueAtIndex < v14)
        {
          v14 = *ValueAtIndex;
        }

        if (*ValueAtIndex > v16)
        {
          v16 = *ValueAtIndex;
        }

        ++v15;
      }

      while (v15 < CFArrayGetCount(*(a1 + 9128)));
    }
  }

  else
  {
    v16 = 8000.0;
    v14 = 8000.0;
  }

  v18 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218240;
    v21 = v14;
    v22 = 2048;
    v23 = v16;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "LECA: UpdateSamplingRate minRate %f, maxRate %f", &v20, 0x16u);
  }

  *a2 = v14;
  a2[1] = v16;
  return a3;
}

uint64_t sub_20928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 1064))(a1);
  (*(*a1 + 1056))(a1, a3);
  v6 = *(*a1 + 1520);

  return v6(a1, a2, a3);
}

CFIndex sub_20A14(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (*(*a1 + 1080))(a1) && *(a1 + 224) && *(a1 + 9104) == 2)
  {
    v3 = 9136;
  }

  else
  {
    v3 = 9128;
  }

  return CFArrayGetCount(*(a1 + v3));
}

BOOL sub_20AC0(uint64_t a1, char a2, double a3, double a4)
{
  if (a4 == a3)
  {
    v7 = 0;
  }

  else
  {
    if ((a2 & 1) != 0 || *(a1 + 224) && *(a1 + 9104) == 2)
    {
      v6 = 9136;
    }

    else
    {
      v6 = 9128;
    }

    v7 = sub_D2A8(a1, *(a1 + v6), a4);
  }

  v8 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109632;
    v10[1] = a3;
    v11 = 1024;
    v12 = a4;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "FormatChangeSupported: sample rate (%d->%d) Supported = %d\n", v10, 0x14u);
  }

  return v7;
}

uint64_t sub_20BD0(uint64_t a1, int a2, int a3)
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

void sub_20CD4(uint64_t a1)
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
  v4 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
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
      v9 = "Not disconnecting CIS";
    }

    v13 = 2082;
    v14 = v9;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Status : IO = %{public}s. CIS Up = %{public}s. Delayed Transport Disconnect: %{public}s", buf, 0x20u);
  }

  if (v3)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_70AF4(buf, a1 + 9232);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_20F68;
    v10[3] = &unk_AE9B8;
    v10[4] = a1;
    v11 = v2;
    *(a1 + 9224) = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10);
    sub_70BD4(buf);
    sub_51628(qword_D8DF0, 5000, v2, *(a1 + 9224));
    sub_70C40(buf);
  }
}

void *sub_20F68(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_508C0(qword_D8DF0, *(a1 + 40));
  if (result)
  {
    v3 = result;
    v8[0] = 0;
    v8[1] = 0;
    sub_70AF4(v8, v1 + 9232);
    v4 = *(v1 + 9224);
    if (v4)
    {
      _Block_release(v4);
      *(v1 + 9224) = 0;
    }

    sub_70BD4(v8);
    v5 = qword_C2350;
    if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Delayed Transport Disconnect: Disconnect Timer Fired..Disconnect CIS", v7, 2u);
    }

    v6 = v3[1141];
    if (v6)
    {
      if (*(v6 + 192) == 1)
      {
        sub_5D54(v1);
        sub_11CAC(*(v1 + 208));
      }
    }

    return sub_70C40(v8);
  }

  return result;
}

void sub_21050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

BOOL sub_21064(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_70AF4(v9, a1 + 9232);
  v2 = *(a1 + 9224);
  if (v2)
  {
    if (!dispatch_block_testcancel(*(a1 + 9224)))
    {
      v3 = qword_C2350;
      v4 = os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT);
      v5 = v2;
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Delayed Transport Disconnect: Cancelling current Dispatch", buf, 2u);
        v5 = *(a1 + 9224);
      }

      dispatch_block_cancel(v5);
    }

    *(a1 + 9224) = 0;
  }

  v6 = qword_C2350;
  if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
  {
    v7 = atomic_load((a1 + 288));
    *buf = 67109376;
    v11 = v2 != 0;
    v12 = 1024;
    v13 = v7 & 1;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Delayed Transport Disconnect: cisConnected = %d. Transport = %d", buf, 0xEu);
  }

  sub_70C40(v9);
  return v2 != 0;
}

unint64_t sub_211BC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v16 = 0;
  if (a3)
  {
    v8 = 0;
    while (1)
    {
      while (1)
      {
        if (!sub_24F3C(a1 + 120))
        {
          return v8;
        }

        v9 = sub_2523C(a1 + 120, byte_C2358, 0x2021uLL);
        if (v9)
        {
          break;
        }

        v10 = qword_C2350;
        if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_ERROR))
        {
          sub_79B8C(buf, &v18, v10);
        }
      }

      v11 = v9;
      *a4 += v9;
      *(a1 + 592) = 1;
      sub_2B44(a1, 0, byte_C2358, v9);
      if (*(a1 + 592) == 1)
      {
        (*(*a2 + 32))(a2, byte_C2358, v11, byte_C437A, 16450, &v16);
        v12 = v16;
        if (*(a1 + 584) && !v16)
        {
          (*(*a2 + 32))(a2, byte_C2358, 0, byte_C437A, 16450, &v16);
          v12 = v16;
        }

        v8 += v12;
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v13 = qword_C2350;
        if (os_log_type_enabled(qword_C2350, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Input Decode: This may be an invalid packet. Not decoding", v15, 2u);
        }

        v12 = v16;
        if (!v16)
        {
          goto LABEL_17;
        }
      }

      sub_25624(a1 + 144, byte_C437A, v12);
      sub_2B44(a1, 1, byte_C437A, v16);
      v16 = 0;
LABEL_17:
      if (v8 >= a3)
      {
        return v8;
      }
    }
  }

  return 0;
}

os_log_t sub_214C0()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C2350 = result;
  return result;
}

void sub_214F0(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  v8 = *(a3 + 32);
  sub_58DE4(a1, a2, v7);
  *v6 = off_AEA60;
  *(v6 + 152) = 1;
  *(v6 + 161) = a4;
  *(v6 + 16) = 0;
}

void *sub_2155C(void *a1)
{
  *a1 = off_AEA60;
  v2 = a1[2];
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  else
  {
    v3 = qword_CC400;
    if (os_log_type_enabled(qword_CC400, OS_LOG_TYPE_ERROR))
    {
      sub_79BD4(v3);
    }
  }

  return sub_58E28(a1);
}

void sub_215DC(void *a1)
{
  sub_2155C(a1);

  operator delete();
}

void sub_21614(uint64_t a1, int a2)
{
  *(a1 + 116) = a2;
  if (*(a1 + 161) == 1)
  {
    v3 = qword_CC400;
    if (os_log_type_enabled(qword_CC400, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "LC3 decoder init to AACELD", buf, 2u);
    }

    v4 = 1633772389;
  }

  else
  {
    v4 = 1818440480;
  }

  *(a1 + 24) = *(a1 + 64);
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = v4;
  v5 = *(a1 + 8);
  if (v5 <= 259)
  {
    if (v5 == 258)
    {
      v6 = 180;
    }

    else
    {
      if (v5 != 259)
      {
        goto LABEL_18;
      }

      v6 = 240;
    }
  }

  else
  {
    switch(v5)
    {
      case 260:
        v6 = 360;
        break;
      case 515:
        v6 = 120;
        break;
      case 516:
        v6 = 160;
        break;
      default:
        goto LABEL_18;
    }
  }

  *(a1 + 44) = v6;
LABEL_18:
  v7 = *(a1 + 92);
  *(a1 + 48) = 0;
  *(a1 + 52) = v7;
  *(a1 + 56) = 0;
  ioPropertyDataSize = 40;
  Property = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, (a1 + 64));
  sub_199EC(Property, "couldn't get output data format");
  v9 = qword_CC400;
  if (os_log_type_enabled(qword_CC400, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    v12 = *(a1 + 36);
    v13 = *(a1 + 40);
    v14 = *(a1 + 44);
    v15 = *(a1 + 48);
    v16 = *(a1 + 52);
    v17 = *(a1 + 56);
    *buf = 134219776;
    v29 = v10;
    v30 = 1024;
    v31 = v11;
    v32 = 1024;
    v33 = v12;
    v34 = 1024;
    v35 = v13;
    v36 = 1024;
    v37 = v14;
    v38 = 1024;
    v39 = v15;
    v40 = 1024;
    v41 = v16;
    v42 = 1024;
    v43 = v17;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Decoder intput format:  mSampleRate = %f, mFormatID = %u, mFormatFlags:%u, mBytesPerPacket:%u, mFramesPerPacket = %u, mBytesPerFrame:%u, mChannelsPerFrame = %u, mBitsPerChannel:%u, format = float PCM\n", buf, 0x36u);
    v9 = qword_CC400;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    v20 = *(a1 + 76);
    v21 = *(a1 + 80);
    v22 = *(a1 + 84);
    v23 = *(a1 + 88);
    v24 = *(a1 + 92);
    v25 = *(a1 + 96);
    *buf = 134219776;
    v29 = v18;
    v30 = 1024;
    v31 = v19;
    v32 = 1024;
    v33 = v20;
    v34 = 1024;
    v35 = v21;
    v36 = 1024;
    v37 = v22;
    v38 = 1024;
    v39 = v23;
    v40 = 1024;
    v41 = v24;
    v42 = 1024;
    v43 = v25;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Decoder output format:  mSampleRate = %f, mFormatID = %u, mFormatFlags:%u, mBytesPerPacket:%u, mFramesPerPacket = %u, mBytesPerFrame:%u, mChannelsPerFrame = %u, mBitsPerChannel:%u, format = float PCM\n", buf, 0x36u);
  }

  v26 = AudioConverterNew((a1 + 24), (a1 + 64), (a1 + 16));
  sub_199EC(v26, "Could not create new audio converter");
  *(a1 + 120) = 1;
  operator new[]();
}

void sub_21954(uint64_t a1, int a2, double a3)
{
  *(a1 + 24) = a3;
  v5 = (a1 + 24);
  *(a1 + 116) = a2;
  if (*(a1 + 161) == 1)
  {
    v6 = qword_CC400;
    if (os_log_type_enabled(qword_CC400, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "LC3 decoderasym init to AACELD 48K", buf, 2u);
    }

    v7 = 1633772389;
  }

  else
  {
    v7 = 1818440480;
  }

  *(a1 + 32) = v7;
  if (a3 == 24000.0)
  {
    v8 = 180;
  }

  else
  {
    if (a3 != 32000.0)
    {
      goto LABEL_11;
    }

    v8 = 240;
  }

  *(a1 + 44) = v8;
LABEL_11:
  *(a1 + 156) = 360;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_88600;
  ioPropertyDataSize = 40;
  Property = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, (a1 + 64));
  sub_199EC(Property, "couldn't get output data format");
  v10 = qword_CC400;
  if (os_log_type_enabled(qword_CC400, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v13 = *(a1 + 36);
    v14 = *(a1 + 40);
    v15 = *(a1 + 44);
    v16 = *(a1 + 48);
    v17 = *(a1 + 52);
    v18 = *(a1 + 56);
    *buf = 134219776;
    v32 = v11;
    v33 = 1024;
    v34 = v12;
    v35 = 1024;
    v36 = v13;
    v37 = 1024;
    v38 = v14;
    v39 = 1024;
    v40 = v15;
    v41 = 1024;
    v42 = v16;
    v43 = 1024;
    v44 = v17;
    v45 = 1024;
    v46 = v18;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Decoder input format:  mSampleRate = %f, mFormatID = %u, mFormatFlags:%u, mBytesPerPacket:%u, mFramesPerPacket = %u, mBytesPerFrame:%u, mChannelsPerFrame = %u, mBitsPerChannel:%u, format = float PCM\n", buf, 0x36u);
    v10 = qword_CC400;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 64);
    v20 = *(a1 + 72);
    v21 = *(a1 + 76);
    v22 = *(a1 + 80);
    v23 = *(a1 + 84);
    v24 = *(a1 + 88);
    v25 = *(a1 + 92);
    v26 = *(a1 + 96);
    *buf = 134219776;
    v32 = v19;
    v33 = 1024;
    v34 = v20;
    v35 = 1024;
    v36 = v21;
    v37 = 1024;
    v38 = v22;
    v39 = 1024;
    v40 = v23;
    v41 = 1024;
    v42 = v24;
    v43 = 1024;
    v44 = v25;
    v45 = 1024;
    v46 = v26;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Decoder output format:  mSampleRate = %f, mFormatID = %u, mFormatFlags:%u, mBytesPerPacket:%u, mFramesPerPacket = %u, mBytesPerFrame:%u, mChannelsPerFrame = %u, mBitsPerChannel:%u, format = float PCM\n", buf, 0x36u);
  }

  v27 = AudioConverterNew(v5, (a1 + 64), (a1 + 16));
  sub_199EC(v27, "Could not create new audio converter");
  *buf = 1835626096;
  v28 = AudioConverterSetProperty(*(a1 + 16), 0x73726361u, 4u, buf);
  sub_199EC(v28, "Failed to set kAudioConverterSampleRateConverterComplexity");
  *buf = 33;
  v29 = AudioConverterSetProperty(*(a1 + 16), 0x73726371u, 4u, buf);
  sub_199EC(v29, "Failed to set kAudioConverterSampleRateConverterQuality");
  *(a1 + 120) = 1;
  operator new[]();
}

void sub_21CCC(uint64_t a1, unsigned __int8 *a2, _BOOL8 a3, void *a4, unint64_t a5, void *a6)
{
  if (a3)
  {
    a3 = *a2 != 255;
  }

  sub_58EC8(a1, a2, a3, a4, a5, a6);
}

os_log_t sub_21CEC()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_CC400 = result;
  return result;
}

uint64_t sub_21D1C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "Disconnected";
    if (a3)
    {
      v6 = "Ready";
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "AMPAudioInput Transport is %s, IO read unblocked", buf, 0xCu);
  }

  atomic_store(a3, (a1 + 288));
  *(a1 + 9082) = a3;
  *buf = 0x676C6F6200000000;
  *&buf[8] = 0;
  (*(*a1 + 248))(a1, buf);
  if (a3)
  {
    sub_2688(a1, 1);
  }

  else if (*(a1 + 432) && (sub_42134() & 1) == 0)
  {
    *buf = 1685283695;
    v7 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 8);
      v11[0] = 67109120;
      v11[1] = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AMPAudioInput Relinquishing Audio for mAudioObjectID %d", v11, 8u);
    }

    (*(*a1 + 248))(a1, buf);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BluetoothRelinquishAudioNotification", 0, 0, 0);
  }

  return sub_5BC0C(*(a1 + 416), 1952538980, a3);
}

double sub_21F04(uint64_t a1)
{
  *(a1 + 296) = 0x40E7700000000000;
  *&result = 0x96C70636DLL;
  *(a1 + 304) = xmmword_88CC0;
  *(a1 + 320) = xmmword_88CD0;
  return result;
}

void sub_21F28(uint64_t a1)
{
  *(a1 + 296) = 0x40E7700000000000;
  *(a1 + 304) = xmmword_88CC0;
  *(a1 + 320) = xmmword_88CD0;
  if (*(a1 + 9081))
  {
    operator new();
  }

  if (*(a1 + 9080))
  {
    operator new();
  }

  v1 = *(a1 + 240);
  if (v1)
  {
    *(a1 + 224) = v1;
    v2 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = v1;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "AMPAudioInput init install decoder to %p", &v3, 0xCu);
    }
  }
}

uint64_t sub_22128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 0x2000;
  v6 = sub_6C24(a3);
  sub_1948(a1, v6);
  *a1 = off_AEAD0;
  *(v5 + 890) = 0;
  *(a1 + 9112) = 0;
  *(a1 + 9120) = 0;
  *(a1 + 9092) = 0;
  *(a1 + 9100) = 0;
  *(a1 + 9084) = 0;
  sub_709AC(a1 + 9128, v7);
  *(a1 + 9192) = 0u;
  *(a1 + 9208) = 0;
  sub_709AC(a1 + 9224, v8);
  *(a1 + 9288) = 0;
  *(a1 + 9296) = 0;
  sub_8998(a1, a2);
  *(a1 + 368) = 1952542064;
  *(v5 + 888) = 1;
  sub_21F28(a1);
  atomic_store(0, (a1 + 288));
  *(a1 + 508) = 1;
  (*(*a1 + 1064))(a1, 1);
  (*(*a1 + 1056))(a1, 0);
  *(v5 + 824) = 0;
  *(a1 + 509) = 0;
  *(a1 + 56) = sub_24E2C() + 12000;
  *(a1 + 72) = sub_24E2C() + 120000;
  v9 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 56);
    v12 = 134217984;
    v13 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Created & Initialize AMPAudioInput Device, input sharememory %zu", &v12, 0xCu);
  }

  return a1;
}

void sub_22334(_Unwind_Exception *a1, uint64_t a2)
{
  sub_70A28(v2 + v3, a2);
  sub_1B04(v2, v5);
  _Unwind_Resume(a1);
}

void sub_2236C(uint64_t a1, int a2)
{
  *(a1 + 9088) = a2;
  *(a1 + 9084) = a2 - 180;
  *(a1 + 9096) = 0;
  sub_25350(a1 + 144);
  v4 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 9084);
    v6 = *(a1 + 9088);
    v7 = *(a1 + 9092);
    v8[0] = 67110144;
    v8[1] = a2;
    v9 = 1024;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = sub_24F20(a1 + 144);
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AMPAudioInput timeline Anchored, dsp curr %u, consumeStart %u, decodeFL %u, amFL %u, PCM %zu", v8, 0x24u);
  }
}

void sub_22478(_DWORD *a1, int a2)
{
  if (a1[2272] - a1[2271] >= 0)
  {
    v4 = a1[2272] - a1[2271];
  }

  else
  {
    v4 = a1[2271] - a1[2272];
  }

  v5 = a2 - 180;
  a1[2272] = a2 - 180;
  v6 = a2 - 180 - v4;
  a1[2271] = v6;
  a1[2280] = 0;
  v7 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[2273];
    v9[0] = 67110144;
    v9[1] = v4;
    v10 = 1024;
    v11 = a2;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AMPAudioInput timeline (re)Anchored, gap %d, dsp curr %u, consumeStart %u, decodeFL %u, amFL %u", v9, 0x20u);
  }
}

uint64_t sub_22578(uint64_t a1, int a2, int a3)
{
  if (a2 - a3 >= 0)
  {
    return (a2 - a3);
  }

  else
  {
    return (a3 - a2);
  }
}

void sub_22584(uint64_t a1, int a2)
{
  v4 = *(a1 + 9104);
  if (v4)
  {
    if (v4 - a2 >= 0)
    {
      v5 = v4 - a2;
    }

    else
    {
      v5 = a2 - v4;
    }

    *(a1 + 9104) = a2;
    v6 = (*(**(a1 + 416) + 16))(*(a1 + 416));
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_226DC;
    v8[3] = &unk_AD3A8;
    v8[4] = a1;
    v9 = v6;
    v10 = v5;
    v11 = v4;
    v12 = a2;
    sub_507D8(qword_D8DF0, v6, v8);
  }

  else
  {
    *(a1 + 9104) = a2;
    v7 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = a2;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AMPAudioInput anchor mDspTsLastEffective dspTs @ %u", buf, 8u);
    }
  }
}

void sub_226DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (sub_508C0(qword_D8DF0, *(a1 + 40)) && *(v2 + 208))
  {
    v3 = *(a1 + 44);
    if (v3 >= 181)
    {
      v4 = qword_CC408;
      if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 48);
        v6 = *(a1 + 52);
        v10[0] = 67109376;
        v10[1] = v5;
        v11 = 1024;
        v12 = v6;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AMPAudioInput dspTs jump @ %u vs %u", v10, 0xEu);
        v3 = *(a1 + 44);
      }

      v7 = *(v2 + 9112);
      if (v7)
      {
        v8 = vdupq_n_s64(1uLL);
        v8.i64[0] = (v3 / 24);
        *v7 = vaddq_s64(*v7, v8);
      }

      if (v3 >= 3601)
      {
        sub_121B8(*(v2 + 208), 1u);
      }
    }
  }

  else
  {
    v9 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "AMPAudioInput DspTimestampGapCheck update dispatched after disconnection", v10, 2u);
    }
  }
}

BOOL sub_22858(_DWORD *a1, int a2)
{
  v4 = a1[2272];
  if (a2 - v4 >= 0)
  {
    v5 = a2 - v4;
  }

  else
  {
    v5 = v4 - a2;
  }

  v6 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109888;
    v8[1] = v5;
    v9 = 1024;
    v10 = a2;
    v11 = 1024;
    v12 = v4;
    v13 = 1024;
    v14 = 3600;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AMPAudioInput deviate gap %d, DSPTs %u-%u, threshold %u", v8, 0x1Au);
  }

  if (v5 >= 0xE10)
  {
    sub_22478(a1, a2);
  }

  return v5 > 0xE0F;
}

uint64_t sub_22950(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v62 = 0;
  v59 = *(a1 + 9092);
  v58 = *(a1 + 9084);
  v8 = 180 * (sub_24F20(a1 + 144) + a3) / 0x5A0 + v58;
  v57 = 180 * a3 / 0x5A0u;
  v74 = 0;
  v75 = 0;
LABEL_2:
  while (1)
  {
    v9 = *(a1 + 9088);
    if (v9 >= v8 && *(a1 + 9120) != 1)
    {
      break;
    }

    if (sub_25870(a1 + 120))
    {
      *(a1 + 9100) = 0;
      v10 = sub_2523C(a1 + 120, byte_CC410, 0x2021uLL);
      if (v10 > 1)
      {
        v14 = byte_CC417;
        if ((byte_CC417 & 0xF) == 0xB)
        {
          v15 = byte_CC417 >> 4;
          if (byte_CC417 < 0x50u)
          {
            v59 = dword_CC418;
            *(a1 + 9092) = dword_CC418;
            if (v14 >= 0x10)
            {
              v23 = 0;
              v24 = 12;
              while (1)
              {
                v56 = v23;
                v25 = *&byte_CC410[v24];
                *(&v74 + v23) = v25;
                sub_22584(a1, v25);
                v26 = byte_CC410[(v24 + 4)];
                v54 = v26;
                v55 = v24 + 5;
                if (*(a1 + 9120) == 1)
                {
                  break;
                }

                v28 = *(a1 + 9088);
                v53 = v25;
                if (v25 <= v28)
                {
                  v32 = qword_CC408;
                  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109632;
                    *v64 = v53;
                    *&v64[4] = 1024;
                    *&v64[6] = v28;
                    *&v64[10] = 1024;
                    *&v64[12] = v59;
                    _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "AMPAudioInput deviated audio curr %u decodeFL %u, am %u", buf, 0x14u);
                  }

                  v25 = v53;
                  if (sub_22858(a1, v53))
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                  if (v25 - v28 < 0xB5)
                  {
                    goto LABEL_38;
                  }

                  if (sub_22858(a1, v25))
                  {
LABEL_37:
                    v8 = *(a1 + 9084) + v57;
                    v26 = v54;
LABEL_38:
                    *(a1 + 9088) = v25;
LABEL_39:
                    if (v26 < 0xC8)
                    {
                      (*(*a2 + 32))(a2, &byte_CC410[v55]);
                    }

                    else
                    {
                      (*(*a2 + 32))(a2, &unk_CC412, 0, byte_CE432, 16450, &v62);
                      v33 = qword_CC408;
                      if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 67109376;
                        *v64 = v54;
                        *&v64[4] = 2048;
                        *&v64[6] = v62;
                        _os_log_error_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "AMPAudioInput aaceldFrameSize invalid %u, trigger PLC, decoded %zu", buf, 0x12u);
                      }
                    }

                    v34 = v62;
                    *a4 += v62;
                    if (v34)
                    {
                      sub_25624(a1 + 144, byte_CE432, v34);
                      v62 = 0;
                    }

                    if (*(a1 + 9096) >= 0x41u)
                    {
                      v35 = *(a1 + 208);
                      if (v35)
                      {
                        sub_121B8(v35, 1u);
                      }
                    }

                    v24 = v54 + v55;
                    *(a1 + 9096) = 0;
                    goto LABEL_49;
                  }

                  if (*(a1 + 9088) < v25)
                  {
                    do
                    {
                      (*(*a2 + 32))(a2, &unk_CC412, 0, byte_CE432, 16450, &v62);
                      sub_25624(a1 + 144, byte_CE432, v62);
                      v29 = *(a1 + 9088) + 180;
                      *(a1 + 9088) = v29;
                      v52 = v62;
                      *a4 += v62;
                      v30 = qword_CC408;
                      if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_ERROR))
                      {
                        v31 = sub_24F20(a1 + 144);
                        *buf = 134219008;
                        *v64 = v52;
                        *&v64[8] = 1024;
                        *&v64[10] = v29;
                        *&v64[14] = 1024;
                        *&v64[16] = v53;
                        *&v64[20] = 2048;
                        v65 = v31;
                        *v66 = 1024;
                        *&v66[2] = v59;
                        _os_log_error_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "AMPAudioInput flush trigger PLC, decoded %zu, decodeFL %u, currDspTs %u, leftdata %zu, am %u", buf, 0x28u);
                        v29 = *(a1 + 9088);
                      }

                      ++*(a1 + 9096);
                    }

                    while (v29 < v53);
                  }
                }

                v24 = v54 + v55;
LABEL_49:
                v23 = v56 + 1;
                if (v56 + 1 == v15)
                {
                  goto LABEL_2;
                }
              }

              *(a1 + 9296) = v25;
              if (!v56)
              {
                v27 = v26;
                sub_2236C(a1, v25);
                v26 = v27;
                v8 = *(a1 + 9084) + v57;
                *(a1 + 9120) = 2;
              }

              goto LABEL_39;
            }
          }

          else
          {
            v16 = qword_CC408;
            if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v64 = v15;
              _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "AMPAudioInput amp remote data aaceldFrameCount invalid %u", buf, 8u);
            }
          }
        }

        else
        {
          v22 = qword_CC408;
          if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_ERROR))
          {
            sub_79C18(&v60, v61, v22);
          }
        }
      }

      else
      {
        v11 = v10;
        v12 = qword_CC408;
        if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *v64 = v11;
          _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "AMPAudioInput DecodeAMPacket: Bytes read too small: bytesRead %lu", buf, 0xCu);
        }
      }
    }

    else
    {
      if (*(a1 + 9100) > 3u)
      {
        bzero(byte_CE432, 0x4042uLL);
        v62 = 1440;
        v13 = 1440;
      }

      else
      {
        (*(*a2 + 32))(a2, &unk_CC412, 0, byte_CE432, 16450, &v62);
        v13 = v62;
      }

      *(a1 + 9088) += 180;
      *a4 += v13;
      sub_25624(a1 + 144, byte_CE432, v13);
      v17 = qword_CC408;
      if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 9088);
        v19 = v62;
        v20 = sub_24F20(a1 + 144);
        v21 = *(a1 + 9100);
        *buf = 67110144;
        *v64 = v18;
        *&v64[4] = 1024;
        *&v64[6] = v8;
        *&v64[10] = 2048;
        *&v64[12] = v19;
        *&v64[20] = 2048;
        v65 = v20;
        *v66 = 1024;
        *&v66[2] = v21;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "AMPAudioInput jitter exhausted: trigger PLC, decodeFL %u, ConsumeEnd %u, output %zu bytes, PCM %zu, %ust exhaust", buf, 0x28u);
      }

      if (*(a1 + 9120) == 1)
      {
        v44 = qword_CC408;
        if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_ERROR))
        {
          sub_79C58(v44, v45, v46, v47, v48, v49, v50, v51);
        }

        return 0;
      }

      ++*(a1 + 9100);
    }
  }

  if (*(a1 + 793) == 1)
  {
    v36 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v74;
      v38 = HIDWORD(v74);
      v39 = v75;
      v40 = HIDWORD(v75);
      v41 = sub_25870(a1 + 120);
      v42 = *a4;
      *buf = 67111424;
      *v64 = v59;
      *&v64[4] = 1024;
      *&v64[6] = v37;
      *&v64[10] = 1024;
      *&v64[12] = v38;
      *&v64[16] = 1024;
      *&v64[18] = v39;
      LOWORD(v65) = 1024;
      *(&v65 + 2) = v40;
      HIWORD(v65) = 1024;
      *v66 = v58;
      *&v66[4] = 1024;
      v67 = v8;
      v68 = 1024;
      v69 = v9;
      v70 = 2048;
      v71 = v41;
      v72 = 2048;
      v73 = v42;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "AMPAudioInput DecodeAMPackets am %u, dsp %u %u %u %u, consume [%u ~ %u], decodeFL %u, ring %zu, total %zu", buf, 0x46u);
    }
  }

  return *a4;
}

double sub_231A4(uint64_t a1)
{
  if (!*(a1 + 9120))
  {
    v2 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = sub_25870(a1 + 120) - 1;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "AMPAudioInput check jitter, %zu frame in queue", buf, 0xCu);
    }

    if (!sub_24F3C(a1 + 144))
    {
      v3 = qword_CC408;
      if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
      {
        v4 = sub_25870(a1 + 120);
        *buf = 134217984;
        v12 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AMPAudioInput stream start, %zu frame in queue", buf, 0xCu);
      }

      if (sub_25870(a1 + 120) >= 9)
      {
        do
        {
          v5 = sub_2523C(a1 + 120, byte_D64B6, 0x2021uLL);
          v6 = qword_CC408;
          if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
          {
            v7 = sub_25870(a1 + 120);
            *buf = 134218240;
            v12 = v5;
            v13 = 2048;
            v14 = v7;
            _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AMPAudioInput build jitter drain Frame, got %zu bytes, Ring has %zu frames", buf, 0x16u);
          }
        }

        while (sub_25870(a1 + 120) > 8);
      }
    }

    if (sub_25870(a1 + 120) >= 8)
    {
      v9 = qword_CC408;
      if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_25870(a1 + 120);
        *buf = 134217984;
        v12 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "AMPAudioInput build jitter done with %zu frm", buf, 0xCu);
      }

      *(a1 + 9120) = 1;
      result = 0.0;
      *(a1 + 9088) = 0;
      *(a1 + 9084) = 0;
    }
  }

  return result;
}

uint64_t sub_233E8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *a6)
{
  v7 = atomic_load((a1 + 288));
  if (v7)
  {
    if (a3 != 1919246692)
    {
      return 0;
    }

    v54 = 0;
    v55 = 0;
    memset(v53, 0, sizeof(v53));
    (*(*a1 + 824))(v53, a1, 1);
    v10 = *(a1 + 224);
    if (v10)
    {
      v11 = (*(v10 + 80) * a4);
      if (v11)
      {
        bzero(a6, v11);
        v12 = *(a1 + 224);
        if (*(a1 + 9120) || (sub_231A4(a1), *(a1 + 9120)))
        {
          if (sub_24F20(a1 + 144) < v11)
          {
            v13 = v11 - sub_24F20(a1 + 144);
            if (*(a1 + 793) == 1)
            {
              v14 = qword_CC408;
              if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *v57 = v13;
                _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "AMPAudioInput need to decode %zu bytes", buf, 0xCu);
              }
            }

            sub_22950(a1, v12, v13, &v55);
            v15 = v55;
            if (v55 < v13)
            {
              v16 = qword_CC408;
              if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_ERROR))
              {
                sub_79C90(v13, v15, v16);
              }
            }
          }

          v17 = sub_251D0(a1 + 144, a6, v11);
          v18 = *(a1 + 9084) + 180 * v11 / 0x5A0u;
          *(a1 + 9084) = v18;
          v19 = 4 * (1440 * (*(a1 + 9088) - v18) / 0xB4uLL);
          v20 = 1440 * (*(a1 + 9088) - v18) / 0xB4uLL;
          if (sub_24F20(a1 + 144) != v19 >> 34)
          {
            v47 = qword_CC408;
            if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_ERROR))
            {
              v48 = *(a1 + 9088);
              v49 = *(a1 + 9084);
              v50 = sub_24F20(a1 + 144);
              *buf = 67110144;
              *v57 = v48;
              *&v57[4] = 1024;
              *&v57[6] = v49;
              v58 = 2048;
              v59 = v50;
              v60 = 2048;
              v61 = v20;
              v62 = 2048;
              v63 = v17;
              _os_log_error_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "AMPAudioInput decode mismatch dspDecodeFL %u, dspConsumeFL %u, leftinQ %lu, expect %lu, bytesToHAL %lu", buf, 0x2Cu);
            }

            return 0;
          }

          if (*(a1 + 793) == 1)
          {
            v21 = qword_CC408;
            if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
            {
              v22 = *(a1 + 9088);
              v23 = *(a1 + 9084);
              v24 = sub_24F20(a1 + 144);
              *buf = 67110144;
              *v57 = v22;
              *&v57[4] = 1024;
              *&v57[6] = v23;
              v58 = 2048;
              v59 = v24;
              v60 = 2048;
              v61 = v20;
              v62 = 2048;
              v63 = v17;
              v25 = "AMPAudioInput toHAL: dspDecodeFL %u, dspConsumeFL %u, left %lu, expect %lu, bytesToHAL %lu";
              v26 = v21;
              v27 = 44;
LABEL_29:
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
            }
          }
        }

        else
        {
          v51 = qword_CC408;
          if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v25 = "===== AMPAudioInput still building jitter, return silence ===== ";
            v26 = v51;
            v27 = 2;
            goto LABEL_29;
          }
        }

        return 0;
      }

      v39 = qword_CC408;
      if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_ERROR))
      {
        sub_79D18(v39, v40, v41, v42, v43, v44, v45, v46);
      }
    }

    else
    {
      v31 = qword_CC408;
      if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_ERROR))
      {
        sub_79D50(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    return 1852797029;
  }

  else
  {
    v28 = 1852797029;
    v29 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 8);
      *buf = 67109120;
      *v57 = v30;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "DoIOOperation not allowed right now because mAudioObjectID %d is not accepting I/O", buf, 8u);
    }
  }

  return v28;
}

uint64_t sub_23830(uint64_t a1)
{
  *a1 = off_AEAD0;
  sub_238D0(a1);
  sub_5F00(a1);
  (*(*a1 + 72))(a1);
  sub_70A28(a1 + 9224, v2);
  sub_70A28(a1 + 9128, v3);

  return sub_1B04(a1, v4);
}

uint64_t sub_238D0(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_70AF4(v6, a1 + 9128);
  if (*(a1 + 208))
  {
    if (*(a1 + 9112))
    {
      operator delete();
    }

    v2 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      v3 = "AMPAudioInput SessionSummary already destroyed";
      goto LABEL_8;
    }
  }

  else
  {
    v2 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      v3 = "AMPAudioInput Destroy SessionSummary dispatched after disconnection";
LABEL_8:
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, v3, v5, 2u);
    }
  }

  return sub_70C40(v6);
}

void sub_239E0(uint64_t a1)
{
  sub_23830(a1);

  operator delete();
}

uint64_t sub_23A2C(uint64_t a1, uint64_t a2)
{
  v4 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AMPAudioInput: A2IPerformPropertyChange", v6, 2u);
  }

  return (*(**(a1 + 416) + 248))(*(a1 + 416), a2);
}

uint64_t sub_23ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AMPAudioInput: A2IRequestConfigChange", v8, 2u);
  }

  return (*(**(a1 + 416) + 240))(*(a1 + 416), a2, a3);
}

void *sub_23B84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

void sub_23BB4(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kBTAudioMsgPropertyDeviceUID");
  if (!string)
  {
    v4 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_FAULT))
    {
      sub_79D88(v4);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  v5 = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x8000100u);
  *(a1 + 200) = v5;
  v6 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = 136315650;
    v9 = string;
    v10 = 1024;
    v11 = v7;
    v12 = 2080;
    v13 = string;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AMPAudioInput: BTHAL AccessoryAudio Device XPC connection for UID %s connected to[ %d ], deviceUid: %s", &v8, 0x1Cu);
    v5 = *(a1 + 200);
  }

  **(a1 + 208) = v5;
}

double sub_23DB4(uint64_t a1)
{
  v2 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 824))(v4, a1, 0);
    *buf = 134217984;
    v6 = v4[0];
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "AMPAudioInput: GetSampleRate %f", buf, 0xCu);
  }

  (*(*a1 + 824))(v4, a1, 0);
  return *v4;
}

void sub_23EE0(uint64_t a1, int a2, unsigned int a3)
{
  v6 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    if (*(a1 + 9081))
    {
      v8 = 257;
    }

    else
    {
      v8 = 130;
    }

    v9 = (*(*a1 + 1352))(a1);
    v15 = 136315650;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AMPAudioInput set TriggerAMPAudio : %s, codecID %u, owned %d", &v15, 0x18u);
  }

  *(a1 + 9296) = 0;
  if (a2)
  {
    v10 = *(a1 + 208);
    if (v10)
    {
      if (*(a1 + 9081))
      {
        v11 = 257;
      }

      else
      {
        v11 = 130;
      }

      sub_11EB8(v10, a3, v11);
    }

    *(a1 + 9120) = 0;
  }

  else
  {
    *(a1 + 9104) = 0;
    v12 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Stop AMPAudioInput AUDIO!", &v15, 2u);
    }

    v13 = *(a1 + 208);
    if (v13)
    {
      if (*(a1 + 9081))
      {
        v14 = 257;
      }

      else
      {
        v14 = 130;
      }

      sub_11EB8(v13, 0, v14);
    }
  }
}

uint64_t sub_240B4(uint64_t a1)
{
  v2 = (*(**(a1 + 416) + 16))(*(a1 + 416));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_24168;
  v4[3] = &unk_AE9B8;
  v4[4] = a1;
  v5 = v2;
  return sub_507D8(qword_D8DF0, v2, v4);
}

uint64_t sub_24168(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_508C0(qword_D8DF0, *(a1 + 40))[1138];
  if (!*(v2 + 192))
  {
    v2 = 0;
  }

  if (*(v2 + 9168) && (v3 = *(v1 + 208)) != 0 && (v4 = *(v1 + 9112)) != 0)
  {
    v6 = *v4;
    v5 = v4[1];
    v7 = qword_CC408;
    v8 = *v4 / v5;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218496;
      v12 = v6;
      v13 = 2048;
      v14 = v5;
      v15 = 1024;
      v16 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AMPAudioInput SendSessionSummary %llu, %llu, %u", &v11, 0x1Cu);
      v3 = *(v1 + 208);
    }

    sub_12070(v3, v6 / v5);
  }

  else
  {
    v9 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "AMPAudioInput send SessionSummary dispatched after disconnection", &v11, 2u);
    }
  }

  return sub_238D0(v1);
}

uint64_t sub_242D4(uint64_t *a1, int a2, unsigned int a3)
{
  v6 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "tear down";
    if (a2)
    {
      v7 = "creation";
    }

    *buf = 136315138;
    v14 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AMPAudioInput TriggerAudioStream: Request AMP %s ", buf, 0xCu);
  }

  sub_23EE0(a1, a2, a3);
  v8 = a1[52];
  if (a2)
  {
    v9 = (*(*v8 + 16))(v8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_244C0;
    v11[3] = &unk_AE9B8;
    v11[4] = a1;
    v12 = v9;
    sub_507D8(qword_D8DF0, v9, v11);
    return (*(*a1 + 1200))(a1) ^ 1;
  }

  else
  {
    if (sub_69474(v8))
    {
      sub_69718(a1[52]);
    }

    return (*(*a1 + 1200))(a1);
  }
}

void sub_244C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (sub_508C0(qword_D8DF0, *(a1 + 40)) && *(v1 + 208) && !*(v1 + 9112))
  {
    operator new();
  }

  v2 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "AMPAudioInput create SessionSummary after disconnection", v3, 2u);
  }
}

uint64_t sub_245A8(uint64_t a1, int a2, int a3, unsigned int a4)
{
  v8 = qword_CC408;
  if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = HIBYTE(a2);
    v13[1] = BYTE2(a2);
    v13[2] = BYTE1(a2);
    v13[3] = a2;
    v13[4] = 0;
    v12[0] = HIBYTE(a3);
    v12[1] = BYTE2(a3);
    v12[2] = BYTE1(a3);
    v12[3] = a3;
    v12[4] = 0;
    v11[0] = HIBYTE(a4);
    v11[1] = BYTE2(a4);
    v11[2] = BYTE1(a4);
    v11[3] = a4;
    v11[4] = 0;
    if (*(a1 + 508))
    {
      v9 = "Yes";
    }

    else
    {
      v9 = "No";
    }

    *buf = 136315906;
    v15 = v13;
    v16 = 2080;
    v17 = v12;
    v18 = 2080;
    v19 = v11;
    v20 = 2080;
    v21 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "AMPAudioInput HandleProfileTransition %s => %s , reason %s， Need Transport Ready %s", buf, 0x2Au);
  }

  if (a2 != a3)
  {
    if (a2 == 1952538980 && *(a1 + 509) == 1)
    {
      sub_23EE0(a1, 0, a4);
    }

    if (a3 == 1952538980 && *(a1 + 509) == 1)
    {
      sub_23EE0(a1, 1, a4);
    }
  }

  return 0;
}

uint64_t sub_24764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 1)
  {
    v8 = qword_CC408;
    if (os_log_type_enabled(qword_CC408, OS_LOG_TYPE_FAULT))
    {
      sub_79E0C(v8);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  (*(*a1 + 824))(v11, a1, a4);
  v9 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v9;
  *(a2 + 32) = v12;
  *(a2 + 40) = (*(*a1 + 808))(a1);
  *(a2 + 48) = (*(*a1 + 808))(a1);
  return a3;
}

__n128 sub_248E0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = *(a1 + 328);
  result = *(a1 + 296);
  v3 = *(a1 + 312);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

os_log_t sub_249B0()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_CC408 = result;
  return result;
}

uint64_t sub_249E0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v5;
  v10 = *(a3 + 32);
  sub_10828(a1, a2, v9);
  *v6 = off_AF1B8;
  *(v6 + 176) = 0;
  if (a2 > 0x11 || ((1 << a2) & 0x30018) == 0)
  {
    v8 = qword_D84D8;
    if (os_log_type_enabled(qword_D84D8, OS_LOG_TYPE_ERROR))
    {
      sub_79E90(a2, v8);
    }
  }

  return a1;
}

void sub_24AA4(void *a1)
{
  sub_10878(a1);

  operator delete();
}

void sub_24ADC(_DWORD *a1, int a2)
{
  a1[39] = a2;
  if (a2 == 64000)
  {
    v2 = 8;
  }

  else
  {
    if (a2 != 48000)
    {
      goto LABEL_6;
    }

    v2 = 6;
  }

  a1[7825] = v2;
LABEL_6:
  a1[38] = 10240;
  operator new[]();
}

void sub_24BA8(uint64_t a1, __int16 *a2, unsigned int a3, uint64_t a4)
{
  v14 = 0;
  v6 = *(a1 + 92);
  if (v6 == 2)
  {
    if (a3)
    {
      v7 = a3;
      v8 = a1;
      do
      {
        *(v8 + 580) = *a2;
        *(v8 + 10820) = a2[1];
        v8 += 2;
        a2 += 2;
        --v7;
      }

      while (v7);
    }

    v9 = a3;
    g722_encode_frame((a1 + 180), (a1 + 580), a3, (a1 + 21060), &v14);
    g722_encode_frame((a1 + 380), (a1 + 10820), v9, (a1 + 26180), &v14);
    v10 = v14;
    if (v14 >= 1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        *(*(a1 + 144) + v11) = *(a1 + 21060 + v12);
        v13 = *(a1 + 144) + v11;
        v11 += 2;
        *(v13 + 1) = *(a1 + 26180 + v12++);
      }

      while (v12 < v14);
      v10 = v14;
    }
  }

  else
  {
    g722_encode_frame((a1 + 180), a2, a3, *(a1 + 144), &v14);
    v10 = v14;
  }

  if (*(a1 + 177) == 1)
  {
    sub_10EE4(a1, v10, 0);
    v10 = v14;
  }

  *a4 = 1;
  *(a4 + 16) = *(a1 + 144);
  *(a4 + 8) = 1;
  *(a4 + 12) = v6 * v10;
}

os_log_t sub_24D0C()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D84D8 = result;
  return result;
}

os_log_t *sub_24D3C(os_log_t *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = os_log_create("com.apple.bluetooth", "BTAudio");
  return a1;
}

uint64_t sub_24D7C(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v6 = (strlen(off_B7398) & 0xFFFFFFFFFFFFFFF8) + 56;
  v7 = a3 - v6;
  if (a3 < v6 || v7 < 2)
  {
    return 0;
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a2 + v6;
  *a2 = v7;
  a2[1] = 0;
  a2[2] = 0;
  v8 = atomic_load(a2 + 3);
  atomic_fetch_add((*(a1 + 8) + 24), -v8);
  v9 = *(a1 + 8);
  *(v9 + 40) = 0;
  atomic_store(0, (v9 + 32));
  strlcpy((*(a1 + 8) + 41), off_B7398, a3 - 41);
  return 1;
}

uint64_t sub_24E5C(uint64_t result)
{
  v1 = *(result + 8);
  v1[1] = 0;
  v1[2] = 0;
  v2 = atomic_load(v1 + 3);
  atomic_fetch_add((*(result + 8) + 24), -v2);
  v3 = *(result + 8);
  *(v3 + 40) = 0;
  atomic_store(0, (v3 + 32));
  return result;
}

BOOL sub_24E94(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v3 = off_B7398;
  *(a1 + 16) = a2 + (strlen(off_B7398) & 0xFFFFFFFFFFFFFFF8) + 56;
  v4 = strlen(v3);
  return strncmp((a2 + 41), v3, v4) == 0;
}

uint64_t sub_24F04(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

unint64_t sub_24F20(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return atomic_load((v1 + 24));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_24F3C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (*(v1 + 40) != 1)
    {
      return atomic_load((v1 + 24));
    }

    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    v2 = atomic_load((v1 + 24));
    atomic_fetch_add((*(a1 + 8) + 24), -v2);
    v3 = *(a1 + 8);
    *(v3 + 40) = 0;
    atomic_store(0, (v3 + 32));
    v1 = *(a1 + 8);
    if (v1)
    {
      return atomic_load((v1 + 24));
    }
  }

  else if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    sub_79F08();
  }

  return 0;
}

void *sub_24FD4(uint64_t a1, char *__dst, size_t a3)
{
  v5 = *(a1 + 8);
  v6 = v5[1];
  v7 = *v5;
  v8 = v6 + a3;
  v9 = *v5 - v6;
  if (a3 - v9 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = a3 - v9;
  }

  if (v8 >= v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = a3;
  }

  result = memcpy(__dst, (v6 + *(a1 + 16)), v11);
  if (v8 >= v7 && v10 != 0)
  {
    result = memcpy(&__dst[v11], *(a1 + 16), v10);
  }

  if (v8 >= v7)
  {
    v14 = v10;
  }

  else
  {
    v14 = v8;
  }

  *(*(a1 + 8) + 8) = v14;
  return result;
}

unint64_t sub_25090(uint64_t a1, char *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a1 + 8;
  v5 = *(a1 + 8);
  if ((v5[1] + 2) > *v5)
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_79FBC();
    }

    return 0;
  }

  v7 = v5[1];
  v8 = *(v7 + *(a1 + 16));
  if (!*(v7 + *(a1 + 16)))
  {
    return 0;
  }

  if (v8 >= a4)
  {
    v8 = a4;
  }

  *a3 = v8;
  v10 = v8 & 1;
  v11 = v8 + v10 + 2;
  v12 = atomic_load(v5 + 3);
  if (v11 > v12)
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_79F3C(a3, v6);
    }

    return 0;
  }

  v14 = *(a1 + 8);
  v14[1] += 2;
  v14[1] %= *v14;
  sub_24FD4(a1, a2, *a3);
  v15 = *(a1 + 8);
  if (v10)
  {
    v15[1] = (v15[1] + 1) % *v15;
  }

  atomic_fetch_add(v15 + 4, 0xFFFFFFFFFFFFFFFFLL);
  return v11;
}

size_t sub_251D0(uint64_t a1, char *a2, size_t a3)
{
  v6 = sub_24F3C(a1);
  if (!v6)
  {
    return 0;
  }

  if (v6 < a3)
  {
    a3 = v6;
  }

  sub_24FD4(a1, a2, a3);
  atomic_fetch_add((*(a1 + 8) + 24), -a3);
  return a3;
}

unint64_t sub_2523C(uint64_t a1, char *a2, unint64_t a3)
{
  result = sub_24F3C(a1);
  if (result)
  {
    v7 = 0;
    result = sub_25090(a1, a2, &v7, a3);
    if (result)
    {
      atomic_fetch_add((*(a1 + 8) + 24), -result);
      return v7;
    }
  }

  return result;
}

BOOL sub_252AC(uint64_t a1, char *a2, uint64_t *a3, unint64_t a4, char *a5, uint64_t *a6, unint64_t a7)
{
  v14 = sub_24F3C(a1);
  if (v14)
  {
    v15 = sub_25090(a1, a2, a3, a4);
    atomic_fetch_add((*(a1 + 8) + 24), -(sub_25090(a1, a5, a6, a7) + v15));
  }

  return v14 != 0;
}

void sub_25350(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[1];
  v3 = *v1;
  v4 = atomic_load(v1 + 3);
  v5 = *(a1 + 8);
  *(v5 + 8) = (v4 + v2) % v3;
  atomic_fetch_add((v5 + 24), -v4);
  atomic_store(0, (*(a1 + 8) + 32));
}

BOOL sub_25390(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (v2[5])
    {
      return 0;
    }

    v5 = *v2;
    v6 = atomic_load(v2 + 3);
    if (v5 + ~v6 >= a2)
    {
      return 1;
    }

    else
    {
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        sub_79FF0(v3);
      }

      result = 0;
      *(*v3 + 40) = 1;
    }
  }

  else
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_7A070();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2544C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = atomic_load(v1 + 3);
  return v2 + ~v3;
}

void sub_25464(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 8);
  v3 = v2[2];
  v4 = *v2;
  if (v3 + 2 <= *v2)
  {
    *(v3 + *(a1 + 16)) = a2;
    v2[2] = (v3 + 2) % v4;
  }

  else if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    sub_7A0A4();
  }
}

void *sub_254CC(uint64_t a1, char *a2, size_t a3)
{
  v6 = *(a1 + 8);
  v7 = v6[2];
  v8 = *v6;
  v9 = v7 + a3;
  v10 = *v6 - v7;
  v11 = a3 - v10;
  if (v7 + a3 >= *v6)
  {
    v12 = *v6 - v7;
  }

  else
  {
    v12 = a3;
  }

  result = memcpy((v7 + *(a1 + 16)), a2, v12);
  if (v9 >= v8 && a3 != v10)
  {
    result = memcpy(*(a1 + 16), &a2[v12], v11);
  }

  if (v9 >= v8)
  {
    v15 = v11;
  }

  else
  {
    v15 = v9;
  }

  *(*(a1 + 8) + 16) = v15;
  return result;
}

uint64_t sub_25564(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v2[2] += a2;
  v2[2] %= *v2;
  return result;
}

void sub_2558C(uint64_t a1, char **a2, size_t *a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  sub_25464(a1, a5);
  for (; a4; --a4)
  {
    v12 = *a2++;
    v11 = v12;
    v13 = *a3++;
    sub_254CC(a1, v11, v13);
  }

  v14 = *(a1 + 8);
  if (a6)
  {
    v14[2] += a6;
    v14[2] %= *v14;
  }

  atomic_fetch_add(v14 + 4, 1uLL);
}

size_t sub_25624(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = a3;
  if (!sub_25390(a1, a3))
  {
    return 0;
  }

  sub_254CC(a1, a2, v3);
  atomic_fetch_add((*(a1 + 8) + 24), v3);
  return v3;
}

unint64_t sub_25698(uint64_t a1, char *a2, size_t a3)
{
  v3 = a3;
  v8 = a3;
  v9 = a2;
  v5 = a3 & 1;
  v6 = a3 + v5 + 2;
  if (!sub_25390(a1, v6))
  {
    return 0;
  }

  sub_2558C(a1, &v9, &v8, 1, v3, v5);
  atomic_fetch_add((*(a1 + 8) + 24), v6);
  return v6;
}

unint64_t sub_2571C(uint64_t a1, char **a2, size_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = a5 & 1;
  v11 = a5 + v10 + 2;
  if (!sub_25390(a1, v11))
  {
    return 0;
  }

  sub_2558C(a1, a2, a3, a4, v5, v10);
  atomic_fetch_add((*(a1 + 8) + 24), v11);
  return v11;
}

BOOL sub_257B0(uint64_t a1, char *a2, size_t a3, char *a4, size_t a5)
{
  v5 = a5;
  v6 = a3;
  v15 = a3;
  v16 = a2;
  v13 = a5;
  v14 = a4;
  v8 = a3 & 1;
  v9 = a5 & 1;
  v10 = a3 + a5 + v8 + v9 + 4;
  v11 = sub_25390(a1, v10);
  if (v11)
  {
    sub_2558C(a1, &v16, &v15, 1, v6, v8);
    sub_2558C(a1, &v14, &v13, 1, v5, v9);
    atomic_fetch_add((*(a1 + 8) + 24), v10);
  }

  return v11;
}

unint64_t sub_25870(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return atomic_load((v1 + 32));
  }

  else
  {
    return 0;
  }
}

void sub_258A0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_258C0(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  v8 = *(a3 + 32);
  sub_10828(a1, a2, v7);
  *v6 = off_AF210;
  *(v6 + 209) = 0;
  *(v6 + 176) = 1;
  *(v6 + 208) = a4;
  *(v6 + 56) = 0;
}

void *sub_25930(void *a1)
{
  *a1 = off_AF210;
  v2 = a1[7];
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  else
  {
    v3 = qword_D84E0;
    if (os_log_type_enabled(qword_D84E0, OS_LOG_TYPE_ERROR))
    {
      sub_7A0D8(v3);
    }
  }

  return sub_10878(a1);
}

void sub_259B0(void *a1)
{
  sub_25930(a1);

  operator delete();
}

void sub_259E8(uint64_t a1, int a2, unsigned int a3)
{
  v4 = *(a1 + 92);
  v34 = 96;
  *(a1 + 156) = a2;
  v5 = *(a1 + 52);
  if (v5 <= 6)
  {
    switch(v5)
    {
      case 2:
        v34 = 32;
        *(a1 + 184) = a3;
        *(a1 + 200) = 0;
        v6 = 1633772320;
        v8 = 1024;
        goto LABEL_35;
      case 5:
        v6 = 1633772389;
        if (a3 == 60)
        {
          *(a1 + 184) = 177;
          v7 = 90;
          goto LABEL_33;
        }

        if (a3 == 56)
        {
          *(a1 + 184) = 165;
          v7 = 168;
          goto LABEL_33;
        }

        break;
      case 6:
        v6 = 1633772389;
        if (a3 == 60)
        {
          *(a1 + 184) = 236;
          v7 = 240;
          goto LABEL_33;
        }

        break;
      default:
LABEL_15:
        v9 = qword_D84E0;
        if (os_log_type_enabled(qword_D84E0, OS_LOG_TYPE_ERROR))
        {
          sub_7A11C(v9);
        }

        v8 = 0;
        v6 = 0;
LABEL_35:
        *(a1 + 104) = *(a1 + 64);
        *(a1 + 192) = 8 * *(a1 + 184);
        *(a1 + 112) = v6;
        *(a1 + 116) = 0;
        *(a1 + 124) = v8;
        *(a1 + 128) = 0;
        *(a1 + 132) = v4;
        *(a1 + 136) = 0;
        ioPropertyDataSize = 40;
        Property = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, (a1 + 104));
        sub_199EC(Property, "couldn't create output data format");
        if (*(a1 + 48) == 1 && os_log_type_enabled(qword_D84E0, OS_LOG_TYPE_DEBUG))
        {
          sub_7A160((a1 + 120));
        }

        v12 = AudioConverterNew((a1 + 64), (a1 + 104), (a1 + 56));
        sub_199EC(v12, "Could not create new audio converter");
        if (*(a1 + 120))
        {
          *(a1 + 160) = 6;
          *(a1 + 152) = 10240;
          operator new[]();
        }

        outPropertyData = 0;
        ioPropertyDataSize = 4;
        v31 = 3;
        if (*(a1 + 208) == 1)
        {
          v13 = *(a1 + 156);
          inPropertyData = *(a1 + 156);
          v31 = 0;
          if (*(a1 + 48) == 1)
          {
            v14 = qword_D84E0;
            if (os_log_type_enabled(qword_D84E0, OS_LOG_TYPE_DEBUG))
            {
              sub_7A238(v13, v14, v15, v16, v17, v18, v19, v20);
            }
          }

          v21 = AudioConverterSetProperty(*(a1 + 56), 0x62726174u, 4u, &inPropertyData);
          sub_199EC(v21, "Failed to set target data rate");
          v22 = AudioConverterGetProperty(*(a1 + 56), 0x62726174u, &ioPropertyDataSize, &inPropertyData);
          sub_199EC(v22, "Failed to set target data rate");
          if (os_log_type_enabled(qword_D84E0, OS_LOG_TYPE_DEBUG))
          {
            sub_7A2A4(&inPropertyData);
          }

          v23 = AudioConverterGetProperty(*(a1 + 56), 0x70616B62u, &ioPropertyDataSize, &outPropertyData);
          sub_199EC(v23, "Failed to get kAudioCodecPropertyMaximumPacketByteSize");
        }

        else
        {
          v24 = AudioConverterGetProperty(*(a1 + 56), 0x70616B62u, &ioPropertyDataSize, &outPropertyData);
          sub_199EC(v24, "Failed to get kAudioCodecPropertyMaximumPacketByteSize");
          if (*(a1 + 48) == 1 && os_log_type_enabled(qword_D84E0, OS_LOG_TYPE_DEBUG))
          {
            sub_7A1CC(&outPropertyData);
          }
        }

        v25 = AudioConverterSetProperty(*(a1 + 56), 0x63647175u, 4u, &v34);
        sub_199EC(v25, "Failed to set kAudioConverterCodecQuality");
        v26 = AudioConverterSetProperty(*(a1 + 56), 0x61636266u, 4u, &v31);
        sub_199EC(v26, "Failed to set kAudioCodecPropertyBitRateControlMode");
        inPropertyData = 256;
        v27 = AudioConverterSetProperty(*(a1 + 56), 0x70616B6Du, 4u, &inPropertyData);
        sub_199EC(v27, "Failed to set kAudioCodecPrivatePropertyMinimumPacketBitSize");
        v28 = outPropertyData;
        v29 = vcvtps_u32_f32((20480 * v4 * *(a1 + 88)) / outPropertyData);
        *(a1 + 160) = v29;
        *(a1 + 152) = v28 * v29;
        operator new[]();
    }

    if (a3 == 40)
    {
      *(a1 + 184) = 156;
      v7 = 160;
      goto LABEL_33;
    }
  }

  else
  {
    if (v5 <= 509)
    {
      if (v5 != 7)
      {
        if (v5 == 15)
        {
          v6 = 1633772389;
          *(a1 + 184) = 88;
          v7 = 180;
LABEL_33:
          *(a1 + 200) = v7;
          goto LABEL_34;
        }

        goto LABEL_15;
      }

      v6 = 1633772389;
      switch(a3)
      {
        case '<':
          *(a1 + 184) = 118;
          v10 = 120;
          break;
        case '8':
          *(a1 + 184) = 110;
          v10 = 112;
          break;
        case '(':
          *(a1 + 184) = 78;
          v10 = 80;
          break;
        default:
LABEL_30:
          v8 = 480;
          v4 = 1;
          goto LABEL_35;
      }

      *(a1 + 200) = v10;
      goto LABEL_30;
    }

    if (v5 == 510)
    {
      v6 = 1633772389;
      *(a1 + 184) = a3;
      *(a1 + 200) = 0;
      v8 = 180;
      goto LABEL_35;
    }

    if (v5 != 33023)
    {
      goto LABEL_15;
    }

    v6 = 1633772389;
    v34 = 64;
    *(a1 + 184) = a3;
    *(a1 + 200) = 0;
  }

LABEL_34:
  v8 = 480;
  goto LABEL_35;
}

void sub_26014(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, UInt32 a5)
{
  v5 = a1;
  v40 = 0;
  v6 = 0;
  v7 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  memset(&outOutputData, 0, sizeof(outOutputData));
  inInputDataProcUserData[0] = a2;
  ioOutputDataPacketSize = *(a1 + 160);
  inInputDataProcUserData[1] = *(a1 + 80) * a3;
  v8 = *(a1 + 80);
  v44 = *(a1 + 64);
  v45 = v8;
  v46 = *(a1 + 96);
  *a4 = 0;
  v38 = a4 + 2;
  while (1)
  {
    v9 = *(v5 + 152);
    if (v9 <= v6)
    {
      break;
    }

    v10 = *(v5 + 132);
    outOutputData.mNumberBuffers = 1;
    outOutputData.mBuffers[0].mNumberChannels = v10;
    outOutputData.mBuffers[0].mDataByteSize = v9 - v6;
    outOutputData.mBuffers[0].mData = (*(v5 + 144) + v6);
    if (*(v5 + 209) == 1)
    {
      v11 = qword_D84E0;
      v12 = os_log_type_enabled(qword_D84E0, OS_LOG_TYPE_DEFAULT);
      v5 = a1;
      if (v12)
      {
        *buf = 67109376;
        *v51 = ioOutputDataPacketSize;
        *&v51[4] = 2048;
        *&v51[6] = v6;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "AACEncoder ->c io:%u, offset %llu", buf, 0x12u);
        v5 = a1;
      }
    }

    v13 = AudioConverterFillComplexBuffer(*(v5 + 56), sub_198B8, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, *(v5 + 168));
    sub_199EC(v13, "Encoder AudioConverterFillComplexBuffer failed");
    v5 = a1;
    if (*(a1 + 209) == 1)
    {
      v14 = qword_D84E0;
      v15 = os_log_type_enabled(qword_D84E0, OS_LOG_TYPE_DEFAULT);
      v5 = a1;
      if (v15)
      {
        *buf = 67109120;
        *v51 = ioOutputDataPacketSize;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "AACEncoder c-> io:%u", buf, 8u);
        v5 = a1;
      }
    }

    v16 = ioOutputDataPacketSize;
    if (!ioOutputDataPacketSize)
    {
      return;
    }

    if (ioOutputDataPacketSize > a5)
    {
      if (os_log_type_enabled(qword_D84E0, OS_LOG_TYPE_ERROR))
      {
        sub_7A40C();
      }

      *a4 = 0;
      return;
    }

    v17 = 0;
    v18 = 0;
    v36 = v7 + 1;
    v19 = *(v5 + 144) + v6;
    do
    {
      v20 = (*(v5 + 168) + v17);
      v21 = *v20;
      v22 = (v19 + *v20);
      v23 = &v38[4 * (v40 + v18)];
      *(v23 + 1) = v22;
      v24 = *(v20 + 3);
      *v23 = 1;
      v23[1] = v24;
      ++*a4;
      if (*(v5 + 209) == 1)
      {
        v25 = qword_D84E0;
        v26 = os_log_type_enabled(qword_D84E0, OS_LOG_TYPE_DEFAULT);
        v5 = a1;
        if (v26)
        {
          v27 = *(v19 + v21);
          v28 = v22[1];
          v29 = v22[2];
          v30 = v22[3];
          *buf = 134220032;
          *v51 = v19;
          *&v51[8] = 1024;
          *&v51[10] = v18;
          v52 = 1024;
          v53 = v40 + v18;
          v54 = 2048;
          v55 = v21;
          v56 = 1024;
          v57 = v24;
          v58 = 1024;
          v59 = v27;
          v60 = 1024;
          v61 = v28;
          v62 = 1024;
          v63 = v29;
          v64 = 1024;
          v65 = v30;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "AACEncoder c->%p,%d,%u,%lld,%u,%02x,%02x,%02x,%02x", buf, 0x40u);
          v5 = a1;
          v16 = ioOutputDataPacketSize;
        }
      }

      v6 += v24;
      ++v18;
      v17 += 16;
    }

    while (v18 < v16);
    v7 = v36;
    if (v16 && (*(v5 + 177) & 1) != 0)
    {
      v31 = 0;
      v32 = (*(v5 + 168) + 12);
      v33 = v16;
      do
      {
        v34 = *v32;
        v32 += 4;
        v31 += v34;
        --v33;
      }

      while (v33);
      sub_10EE4(v5, v31, v16);
      v5 = a1;
    }

    v40 += v18;
    if (v36 == 10)
    {
      return;
    }
  }

  if (os_log_type_enabled(qword_D84E0, OS_LOG_TYPE_ERROR))
  {
    sub_7A39C();
  }
}

void sub_2645C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

os_log_t sub_2647C()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D84E0 = result;
  return result;
}

uint64_t sub_264AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1948(a1, a3);
  *v7 = off_AF268;
  *(v7 + 9160) = 256;
  *(v7 + 9080) = 0;
  *(v7 + 9088) = 0u;
  *(v7 + 9168) = 0u;
  v8 = qword_D84E8;
  if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Initialize AppleAudioAccessoryDevice", &v16, 2u);
  }

  *(a1 + 372) = 0x50000004000;
  sub_8998(a1, a2);
  (*(*a1 + 1600))(a1, a4);
  sub_1CBC(a1, a4);
  *(a1 + 368) = 1952538980;
  *(a1 + 380) = 21856;
  if (_os_feature_enabled_impl())
  {
    (*(*a1 + 1056))(a1, 1);
    (*(*a1 + 1064))(a1, 1);
    value = xpc_dictionary_get_value(a4, "kBTAudioMsgStudioMicSupported");
    if (value)
    {
      if (xpc_BOOL_get_value(value))
      {
        v10 = qword_D84E8;
        if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17 = "support";
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice Publishing with StudioMic %s", &v16, 0xCu);
        }

        sub_267D0(a1, a2, 1952542064);
        v11 = *(a2 + 9088);
        if (v11)
        {
          if (*(v11 + 192))
          {
            v12 = *(a2 + 9088);
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        sub_268A8(a1, v12);
      }
    }
  }

  v13 = xpc_dictionary_get_value(a4, "kBTAudioMsgAccessoryEnhancedDSPEQSupported");
  if (v13 && xpc_BOOL_get_value(v13))
  {
    v14 = qword_D84E8;
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "support";
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice Publishing with enhancedAccessoryEQ %s", &v16, 0xCu);
    }

    sub_2CBC0(*(a2 + 9280), 1);
  }

  return a1;
}

void sub_267D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1952542064)
  {
    if (!*(a1 + 9168))
    {
      operator new();
    }

    v3 = qword_D84E8;
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice input device already installed", v4, 2u);
    }
  }
}

void sub_268A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a1 + 9176) = a2;
    v3 = qword_D84E8;
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = a2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice output device installed to %p", &v4, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A47C();
  }
}

uint64_t sub_2697C(void *a1)
{
  *a1 = off_AF268;
  sub_5F00(a1);
  if ((*(*a1 + 1680))(a1))
  {
    v2 = (*(*a1 + 1680))(a1);
    free(v2);
    (*(*a1 + 1696))(a1, 0);
  }

  v3 = a1[1146];
  *(a1 + 573) = 0u;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  (*(*a1 + 72))(a1);

  return sub_1B04(a1, v4);
}

void sub_26AD0(void *a1)
{
  sub_2697C(a1);

  operator delete();
}

uint64_t sub_26B08(uint64_t a1)
{
  result = *(a1 + 9176);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_26B38(uint64_t a1)
{
  v1 = *(a1 + 9176);
  if (v1)
  {
    return (*(*v1 + 32))();
  }

  else
  {
    return 1852990585;
  }
}

uint64_t sub_26B70(uint64_t a1)
{
  v1 = *(a1 + 9176);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return 1852990585;
  }
}

uint64_t sub_26BA8(uint64_t a1)
{
  v1 = *(a1 + 9176);
  if (v1)
  {
    return (*(*v1 + 48))(v1);
  }

  else
  {
    return 1852990585;
  }
}

uint64_t sub_26BE0(uint64_t a1)
{
  v1 = *(a1 + 9176);
  if (v1)
  {
    return (*(*v1 + 56))();
  }

  else
  {
    return 1852990585;
  }
}

uint64_t sub_26C18(uint64_t a1)
{
  v1 = *(a1 + 9176);
  if (v1)
  {
    return (*(*v1 + 144))(v1);
  }

  else
  {
    return 1852990585;
  }
}

void sub_26C50(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kBTAudioMsgPropertyDeviceUID");
  if (!string)
  {
    v4 = qword_D84E8;
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_FAULT))
    {
      sub_79D88(v4);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  v5 = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x8000100u);
  *(a1 + 200) = v5;
  v6 = qword_D84E8;
  if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = 136315394;
    v9 = string;
    v10 = 1024;
    v11 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice XPC connection for UID %s connected to[ %d ] ", &v8, 0x12u);
    v5 = *(a1 + 200);
  }

  **(a1 + 208) = v5;
}

void sub_26DAC(uint64_t a1, const __CFString *a2, int a3)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    v7 = qword_D84E8;
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Calling SendUSBEnabled on XPC from AppleAudioAccessoryDevice", v8, 2u);
      v3 = *(a1 + 208);
    }

    sub_13A98(v3, a2, a3);
  }
}

void sub_26E48(uint64_t a1, _BOOL4 a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    v5 = qword_D84E8;
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Calling HeadtrackingAvailablityChanged %d on XPC from AppleAudioAccessoryDevice", v6, 8u);
      v2 = *(a1 + 208);
    }

    sub_13950(v2, a2);
  }
}

__n128 sub_26F0C@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = 296;
  if (a2)
  {
    v3 = 9184;
  }

  v4 = a1 + v3;
  result = *v4;
  v6 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v6;
  *(a3 + 32) = *(v4 + 32);
  return result;
}

double sub_26F34(uint64_t a1)
{
  (*(**(a1 + 9176) + 824))(&v5);
  v2 = v6;
  *(a1 + 296) = v5;
  *(a1 + 312) = v2;
  *(a1 + 328) = v7;
  (*(**(a1 + 9168) + 824))(&v5);
  result = *&v5;
  v4 = v6;
  *(a1 + 9184) = v5;
  *(a1 + 9200) = v4;
  *(a1 + 9216) = v7;
  return result;
}

uint64_t sub_27008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_70AF4(v16, a1 + 600);
  if (a2 != a3)
  {
    v8 = *(a1 + 9176);
    if (v8)
    {
      (*(*v8 + 1408))(v8, a2, a3, a4);
    }

    v9 = *(a1 + 9168);
    if (v9)
    {
      (*(*v9 + 1408))(v9, a2, a3, a4);
    }

    if (a3 == 1952538980)
    {
      sub_26F34(a1);
    }
  }

  v10 = qword_D84E8;
  if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = BYTE3(a2);
    v15[1] = BYTE2(a2);
    v15[2] = BYTE1(a2);
    v15[3] = a2;
    v15[4] = 0;
    v14[0] = BYTE3(a3);
    v14[1] = BYTE2(a3);
    v14[2] = BYTE1(a3);
    v14[3] = a3;
    v14[4] = 0;
    v13[0] = BYTE3(a4);
    v13[1] = BYTE2(a4);
    v13[2] = BYTE1(a4);
    v13[3] = a4;
    v13[4] = 0;
    if (*(a1 + 508))
    {
      v11 = "Yes";
    }

    else
    {
      v11 = "No";
    }

    *buf = 136315906;
    v18 = v15;
    v19 = 2080;
    v20 = v14;
    v21 = 2080;
    v22 = v13;
    v23 = 2080;
    v24 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice Profile Transition %s => %s , reason %s, Need Transport Ready %s", buf, 0x2Au);
  }

  sub_70C40(v16);
  return 0;
}

void sub_27224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27240(uint64_t a1)
{
  result = *(a1 + 9168);
  if (result)
  {
    return (*(*result + 392))();
  }

  return result;
}

uint64_t sub_27278(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 9168);
  v5 = qword_D84E8;
  if (v4)
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice input startIO", buf, 2u);
      v4 = *(a1 + 9168);
    }

    (*(*v4 + 184))(v4, a2);
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A4B0();
  }

  v6 = *(a1 + 9176);
  v7 = qword_D84E8;
  if (v6)
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice output device startIO", v9, 2u);
      v6 = *(a1 + 9176);
    }

    (*(*v6 + 184))(v6, a2);
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A4E4();
  }

  return 0;
}

uint64_t sub_273DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 9168);
  if (v4)
  {
    (*(*v4 + 192))(v4, a2);
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A518();
  }

  v5 = *(a1 + 9176);
  if (v5)
  {
    (*(*v5 + 192))(v5, a2);
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A54C();
  }

  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  return 0;
}

void sub_274C8(uint64_t *a1, char *__s1, void *a3)
{
  if (!strcmp(__s1, "kBTAudioMsgPropertyAmpIsEnabled"))
  {
    value = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyAmpStatus");
    v7 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyAmpIsEnabled");
    if (v7 && value)
    {
      v8 = v7;
      v9 = xpc_int64_get_value(value);
      v10 = xpc_BOOL_get_value(v8);
      v11 = *(*a1 + 392);

      v11(a1, v9, v10);
    }
  }

  else
  {

    sub_773C(a1, __s1, a3);
  }
}

uint64_t sub_275D0(uint64_t a1)
{
  v2 = *(a1 + 9168);
  if (v2)
  {
    v3 = *(*v2 + 1624);

    return v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A580();
    }

    return 0;
  }
}

uint64_t sub_27654(uint64_t a1, uint64_t a2, int a3)
{
  if (!_os_feature_enabled_impl() || *(a1 + 368) != 1952538980)
  {
    return 0;
  }

  if (a3 != 1919513701)
  {
    v7 = *(a1 + 9168);
    if (v7)
    {
      v6 = *(*v7 + 208);
      goto LABEL_8;
    }

    return 0;
  }

  v5 = *(a1 + 9176);
  if (!v5)
  {
    return 0;
  }

  v6 = *(*v5 + 208);
LABEL_8:

  return v6();
}

uint64_t sub_2777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (_os_feature_enabled_impl())
  {
    v8 = *(a1 + 9168);
    if (v8)
    {
      (*(*v8 + 256))(v8, a2, a3, a4);
    }

    else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A5B4();
    }

    v9 = *(a1 + 9176);
    if (v9)
    {
      (*(*v9 + 256))(v9, a2, a3, a4);
    }

    else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A5E8();
    }
  }

  return 1;
}

void sub_278A4(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 576);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A61C();
  }
}

void sub_27924(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 1240);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A61C();
  }
}

void sub_279A4(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 1472);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A61C();
  }
}

double sub_27A24(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 368);

    v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A650();
    }

    return 0.0;
  }

  return result;
}

void sub_27AA8(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 976);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A684();
  }
}

double sub_27B28(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 1016);

    v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A6B8();
    }

    return 0.0;
  }

  return result;
}

double sub_27BAC(uint64_t a1, float a2)
{
  v3 = *(a1 + 9176);
  if (v3)
  {

    *&result = sub_610C(v3, a2);
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A6EC();
    }

    return 0.0;
  }

  return result;
}

double sub_27C08(uint64_t a1, float a2)
{
  v3 = *(a1 + 9176);
  if (v3)
  {

    *&result = sub_6138(v3, a2);
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A720();
    }

    return 0.0;
  }

  return result;
}

double sub_27C64(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 984);

    v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A754();
    }

    return 0.0;
  }

  return result;
}

double sub_27CE8(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 992);

    v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A788();
    }

    return 0.0;
  }

  return result;
}

double sub_27D6C(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 968);

    v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A7BC();
    }

    return 0.0;
  }

  return result;
}

double sub_27DF0(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 952);

    v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A7F0();
    }

    return 0.0;
  }

  return result;
}

double sub_27E74(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 960);

    v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A824();
    }

    return 0.0;
  }

  return result;
}

void sub_27EF8(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 496);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A858();
  }
}

void sub_27F78(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 488);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A88C();
  }
}

uint64_t sub_27FF8(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 1504);

    return v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A8C0();
    }

    return 0;
  }
}

uint64_t sub_2807C(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    (*(*v2 + 528))(v2);
    sub_26F34(a1);
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7A8F4();
  }

  return 0;
}

uint64_t sub_28114(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 848);

    return v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A928();
    }

    return 0;
  }
}

uint64_t sub_28198(uint64_t a1)
{
  v2 = *(a1 + 9168);
  if (v2)
  {
    v3 = *(*v2 + 848);

    return v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A95C();
    }

    return 0;
  }
}

void *sub_2821C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_2824C(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 856);

    return v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A990();
    }

    return 0;
  }
}

uint64_t sub_282D0(uint64_t a1)
{
  v1 = *(a1 + 9168);
  if (v1)
  {
    v2 = *(v1 + 9082);
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A990();
    }

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_2832C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(a1 + 9176);
  if (v6)
  {
    if (a4)
    {
      v7 = *(**(a1 + 9168) + 1256);
    }

    else
    {
      v7 = *(*v6 + 1256);
    }

    return v7();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A9C4();
    }

    return 0;
  }
}

uint64_t sub_283FC(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 1272);

    return v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7A9F8();
    }

    return 0;
  }
}

uint64_t sub_28480(uint64_t a1, int a2, int a3)
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

uint64_t sub_28574(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 1296);

    return v3();
  }

  else
  {
    if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
    {
      sub_7AA2C();
    }

    return 0;
  }
}

uint64_t sub_285F8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 9176);
  if (v5)
  {
    v6 = *a2;
    v7 = a2[1];
    v13 = *(a2 + 4);
    v12[0] = v6;
    v12[1] = v7;
    v8 = *(a3 + 16);
    v10[0] = *a3;
    v10[1] = v8;
    v11 = *(a3 + 32);
    return (*(*v5 + 1304))(v5, v12, v10, a4, a5);
  }

  else
  {
    result = os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_7AA60();
      return 0;
    }
  }

  return result;
}

void sub_286B0(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 736);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7AA94();
  }
}

void sub_28730(uint64_t a1, float a2)
{
  v3 = *(a1 + 9176);
  if (v3)
  {

    sub_65E0(v3, a2);
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7AAC8();
  }
}

void sub_28788(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 1160);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7AAFC();
  }
}

void sub_28808(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 1432);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7AB30();
  }
}

void sub_28888(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 1496);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7AB64();
  }
}

void sub_28908(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 272);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7AB98();
  }
}

void sub_28988(uint64_t a1)
{
  v2 = *(a1 + 9176);
  if (v2)
  {
    v3 = *(*v2 + 1456);

    v3();
  }

  else if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_ERROR))
  {
    sub_7ABCC();
  }
}

uint64_t sub_28A08(uint64_t a1)
{
  v2 = qword_D84E8;
  if (os_log_type_enabled(qword_D84E8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "AppleAudioAccessoryDevice::Invalidate", v5, 2u);
  }

  v3 = *(a1 + 9168);
  if (v3)
  {
    (*(*v3 + 1184))(v3);
  }

  return sub_2624(a1);
}

os_log_t sub_28B6C()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D84E8 = result;
  return result;
}

void sub_28B9C(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v6 = *(a3 + 32);
  sub_10828(a1, a2, v5);
  *v4 = off_AF950;
  *(v4 + 176) = 1;
}

void sub_28BF8(void *a1)
{
  sub_10878(a1);

  operator delete();
}

void sub_28C30(uint64_t a1, int a2)
{
  *(a1 + 104) = 0x40BF400000000000;
  v2 = (a1 + 104);
  *(a1 + 156) = a2;
  *(a1 + 112) = 1634492791;
  v3 = (a1 + 64);
  v4 = *(a1 + 92);
  *(a1 + 120) = v4;
  *(a1 + 124) = 1;
  *(a1 + 128) = v4;
  *(a1 + 132) = v4;
  *(a1 + 136) = 8;
  ioPropertyDataSize = 40;
  Property = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, (a1 + 104));
  sub_199EC(Property, "couldn't create output data format");
  v6 = AudioConverterNew(v3, v2, &v2[-2].mBitsPerChannel);
  sub_199EC(v6, "Could not create new audio converter");
  v2[1].mFormatID = 4096;
  operator new[]();
}

void sub_28D5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  *&outOutputData.mNumberBuffers = 0;
  v6 = *(a1 + 152);
  outOutputData.mBuffers[0].mNumberChannels = *(a1 + 92);
  outOutputData.mBuffers[0].mDataByteSize = v6;
  outOutputData.mBuffers[0].mData = *(a1 + 144);
  inInputDataProcUserData[0] = a2;
  ioOutputDataPacketSize = *(a1 + 160);
  outOutputData.mNumberBuffers = 1;
  inInputDataProcUserData[1] = (*(a1 + 80) * a3);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v18 = *(a1 + 96);
  v17 = v8;
  v16 = v7;
  v9 = AudioConverterFillComplexBuffer(*(a1 + 56), sub_198B8, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
  sub_199EC(v9, "AudioConverterFillComplexBuffer failed");
  v10 = ioOutputDataPacketSize;
  if (*(a1 + 177) == 1 && ioOutputDataPacketSize)
  {
    sub_10EE4(a1, *(a4 + 12), ioOutputDataPacketSize);
    v10 = ioOutputDataPacketSize;
  }

  v11 = 0;
  if (v10)
  {
    mDataByteSize = outOutputData.mBuffers[0].mDataByteSize;
    if (outOutputData.mBuffers[0].mDataByteSize)
    {
      *(a4 + 16) = *(a1 + 144);
      *(a4 + 8) = outOutputData.mBuffers[0].mNumberChannels;
      *(a4 + 12) = mDataByteSize;
      v11 = 1;
    }
  }

  *a4 = v11;
}

os_log_t sub_28E58()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D84F0 = result;
  return result;
}

os_log_t sub_29370()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_D84F8 = result;
  return result;
}

void sub_29AFC(uint64_t a1)
{
  v2 = sub_508C0(qword_D8DF0, *(*(a1 + 32) + 20));
  if (v2)
  {
    v3 = v2;
    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Spatial Client, Proc Exit handler Fired", v5, 2u);
    }

    sub_29BAC(v3[1160], *(a1 + 48));
    sub_29D3C(v3[1160], 1);
  }

  dispatch_source_cancel(*(a1 + 40));
}

uint64_t sub_29BAC(uint64_t a1, int a2)
{
  v10 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_70AF4(v9, a1 + 424);
  v4 = *(a1 + 408);
  if (v4)
  {
    v5 = a1 + 408;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v5 != a1 + 408 && *(v5 + 32) <= a2)
    {
      *buf = &v10;
      [sub_35E38(a1 + 400 &v10)[5]];
      *buf = &v10;

      sub_35F0C(a1 + 400, &v10);
      v6 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 416);
        *buf = 67109376;
        *&buf[4] = v10;
        v12 = 1024;
        v13 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Released client info for PID %d Pending Clients %d", buf, 0xEu);
      }
    }
  }

  return sub_70C40(v9);
}

void sub_29D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29D3C(void *a1, uint64_t a2)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_70AF4(v22, (a1 + 53));
  v4 = a1[50];
  if (v4 == a1 + 51)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [v4[5] HighestQualityFormat];
      v9 = BYTE1(v6);
      if (v8 == 4)
      {
        v10 = v8;
      }

      else
      {
        v10 = v6;
      }

      if (v8 == 4)
      {
        v11 = v7;
      }

      else
      {
        v11 = v5;
      }

      if (v8 == 2)
      {
        v12 = v8;
      }

      else
      {
        v12 = v6;
      }

      if (v8 == 2)
      {
        v13 = v7;
      }

      else
      {
        v13 = v5;
      }

      if (v8 - 1 <= 1)
      {
        v14 = v13;
      }

      else
      {
        v12 = v10;
        v14 = v11;
      }

      if (BYTE1(v6) == BYTE1(v8))
      {
        v15 = v12;
      }

      else
      {
        v15 = v6;
      }

      if (BYTE1(v6) == BYTE1(v8))
      {
        v16 = v14;
      }

      else
      {
        v16 = v5;
      }

      if (BYTE1(v6) < BYTE1(v8))
      {
        v15 = v8;
        v16 = v7;
      }

      if (BYTE1(v6))
      {
        v6 = v15;
      }

      else
      {
        v6 = v8;
      }

      if (v9)
      {
        v5 = v16;
      }

      else
      {
        v5 = v7;
      }

      v17 = v4[1];
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
          v18 = v4[2];
          v19 = *v18 == v4;
          v4 = v18;
        }

        while (!v19);
      }

      v4 = v18;
    }

    while (v18 != a1 + 51);
  }

  sub_70BD4(v22);
  a1[46] = v5;
  *(a1 + 94) = v6;
  v20 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    v24 = BYTE1(v6);
    v25 = 1024;
    v26 = v6;
    v27 = 1024;
    v28 = 1;
    v29 = 1024;
    v30 = 1;
    v31 = 1024;
    v32 = a2;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Updated Best Possible Stream info, Channels = %d Spatial Status = %d Mode = %d Head Tracking = %d delaySpatialUIUpdate = %d", buf, 0x20u);
  }

  (*(**a1 + 624))(*a1, a2, 200);
  return sub_70C40(v22);
}

void *sub_29F5C(uint64_t a1)
{
  v2 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Spatial Enable: Cancel Proc Exit handler", v4, 2u);
  }

  dispatch_release(*(a1 + 32));
  result = sub_508C0(qword_D8DF0, *(*(a1 + 40) + 20));
  if (result)
  {
    return sub_29FF4(result[1160], *(a1 + 48));
  }

  return result;
}

uint64_t sub_29FF4(uint64_t a1, int a2)
{
  v8 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_70AF4(v7, a1 + 424);
  v4 = *(a1 + 408);
  if (v4)
  {
    v5 = a1 + 408;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v5 != a1 + 408 && *(v5 + 32) <= a2)
    {
      v9 = &v8;
      [sub_35E38(a1 + 400 &v8)[5]];
    }
  }

  return sub_70C40(v7);
}

void sub_2A560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

void sub_2AC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2B120(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_709AC(a1 + 64, a2);
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 164) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 218) = 1;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 340) = 0;
  *(a1 + 219) = 0;
  *(a1 + 224) = 0;
  *(a1 + 227) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 255) = 0;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 341) = 1;
  *(a1 + 347) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = 1;
  *(a1 + 364) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = a1 + 408;
  sub_709AC(a1 + 424, v8);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 528) = 0;
  *(a1 + 520) = 0;
  sub_709AC(a1 + 536, v9);
  *(a1 + 600) = 1;
  *(a1 + 608) = 0;
  *a1 = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  mach_timebase_info((a1 + 616));
  *(a1 + 144) = 0;
  sub_2B430(a1, 0);
  sub_2B538(a1, 0);
  sub_2B684(a1, 0);
  sub_2B79C(a1, 0);
  *(a1 + 148) = 0;
  *(a1 + 168) = 1;
  *(a1 + 196) = 0;
  *(a1 + 172) = 0x300000003;
  *(a1 + 180) = 3;
  *(a1 + 188) = 0;
  *(a1 + 145) = 0;
  *(a1 + 293) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 294) = 512;
  *(a1 + 296) = -1082130432;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 336) = 3;
  v11[0] = 0;
  v11[1] = 0;
  sub_70AF4(v11, a1 + 536);
  *(a1 + 512) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_70BD4(v11);
  *(a1 + 376) = 0;
  *(a1 + 368) = 0;
  *(a1 + 343) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  keys = @"airpods noise suppression";
  values = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRetain(values);
  *(a1 + 264) = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_2B89C(a1, a3, a4);
  sub_2BC80(a1);
  *(a1 + 624) = -1;
  sub_70C40(v11);
  return a1;
}

void sub_2B3C0(_Unwind_Exception *a1, uint64_t a2)
{
  sub_70A28(v2 + 536, a2);
  sub_70A28(v2 + 424, v5);
  sub_16FF8(v2 + 400, *v3);
  sub_70A28(v2 + 64, v6);
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_2B430(_BYTE *a1, int a2)
{
  if (a1[156] != a2)
  {
    a1[156] = a2;
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

      v6 = (*(**a1 + 16))();
      v7 = 136446466;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AccessoryInEarDetectionSupported set to %{public}s for mAudioObjectID %d", &v7, 0x12u);
    }
  }
}

void sub_2B538(unsigned __int8 *a1, int a2)
{
  if (a1[504] != a2)
  {
    a1[504] = a2;
    v3 = *(*a1 + 9096);
    if (v3 && v3[192] == 1)
    {
      (*(*v3 + 1000))(v3);
    }

    v4 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      if (a1[504])
      {
        v5 = "enabled";
      }

      else
      {
        v5 = "disabled";
      }

      v6 = (*(**a1 + 16))();
      v7 = 136446466;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Accessory SetHfpExtendedVolumeRange set to %{public}s for mAudioObjectID %d", &v7, 0x12u);
    }
  }
}

void sub_2B684(uint64_t a1, int a2)
{
  if (*(a1 + 157) != a2)
  {
    *(a1 + 157) = a2;
    sub_5AAC0(*a1, 1768252517);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 157))
      {
        v4 = "enabled";
      }

      else
      {
        v4 = "disabled";
      }

      v5 = (*(**a1 + 16))();
      v6 = 136446466;
      v7 = v4;
      v8 = 1024;
      v9 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Accessory SetInEarDetectionEnabled set to %{public}s for mAudioObjectID %d", &v6, 0x12u);
    }
  }
}

void sub_2B79C(uint64_t a1, int a2)
{
  if (*(a1 + 160) != a2)
  {
    *(a1 + 160) = a2;
    sub_5AAC0(*a1, 1819503987);
    v3 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 160);
      v5 = (*(**a1 + 16))();
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Accessory mListenModeSupported set to %d for mAudioObjectID %d", v6, 0xEu);
    }
  }
}

void *sub_2B89C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v70) = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "InitializeCommonAccessoryFeatureFromDevice", &v70, 2u);
  }

  string = xpc_dictionary_get_string(a3, "kBTAudioMsgPropertyName");
  if (string)
  {
    v70 = 0uLL;
    sub_70AF4(&v70, a1 + 64);
    v7 = *(a1 + 32);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 32) = 0;
    }

    v8 = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x8000100u);
    *(a1 + 32) = v8;
    v9 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v8;
    }

    sub_70C40(&v70);
  }

  else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
  {
    sub_7AC34();
  }

  v10 = xpc_dictionary_get_string(a3, "kBTAudioMsgPropertyDeviceAddress");
  if (!v10)
  {
    v11 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
    {
      sub_7AC68(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (sub_70820())
    {
      goto LABEL_49;
    }
  }

  sub_2088(&v70, v10);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = v70;
  *(a1 + 24) = v71;
  if (!xpc_dictionary_get_string(a3, "kBTAudioMsgPropertyDeviceUID"))
  {
    v19 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
    {
      sub_77184(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    if (sub_70820())
    {
      goto LABEL_49;
    }
  }

  value = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyProductID");
  v28 = value;
  if (value)
  {
    if (xpc_get_type(value) != &_xpc_type_int64)
    {
      v29 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7ACE0(v29, v30, v31, v32, v33, v34, v35, v36);
      }

      if (sub_70820())
      {
        goto LABEL_49;
      }
    }

    *(a1 + 48) = xpc_int64_get_value(v28);
  }

  v37 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyVersion");
  v38 = v37;
  if (v37)
  {
    if (xpc_get_type(v37) != &_xpc_type_int64)
    {
      v39 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7AD58(v39, v40, v41, v42, v43, v44, v45, v46);
      }

      if (sub_70820())
      {
        goto LABEL_49;
      }
    }

    *(a1 + 52) = xpc_int64_get_value(v38);
  }

  v47 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyVendorID");
  v48 = v47;
  if (v47)
  {
    if (xpc_get_type(v47) != &_xpc_type_int64)
    {
      v49 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
      {
        sub_7ADD0(v49, v50, v51, v52, v53, v54, v55, v56);
      }

      if (sub_70820())
      {
        goto LABEL_49;
      }
    }

    *(a1 + 56) = xpc_int64_get_value(v48);
  }

  v57 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySupportedServices");
  v59 = v57;
  if (!v57)
  {
    goto LABEL_45;
  }

  if (xpc_get_type(v57) != &_xpc_type_int64)
  {
    v60 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_FAULT))
    {
      sub_7AE48(v60, v61, v62, v63, v64, v65, v66, v67);
    }

    if (sub_70820())
    {
LABEL_49:
      abort();
    }
  }

  *(a1 + 192) = xpc_int64_get_value(v59);
LABEL_45:
  sub_2E700(a1, v58, a3);
  result = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyIsAppleAudioDevice");
  v69 = result;
  if (result)
  {
    result = xpc_get_type(result);
    if (result == &_xpc_type_BOOL)
    {
      result = xpc_BOOL_get_value(v69);
      *(a1 + 144) = result;
    }
  }

  return result;
}
void sub_19B728E9C(_BYTE *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
  }

  v4 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
  {
    v5 = *a1;
    *buf = 67240192;
    LODWORD(v31) = v5;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Received keyboard state %{public}u", buf, 8u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v7 = *a1;
    v26 = 67240192;
    LODWORD(v27) = v7;
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLOrientationNotifier::onKeyboardState(const BOOL *, void *)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = *(a2 + 40);
  if (v9)
  {
    *(v9 + 1036) = *a1;
  }

  if (*(a2 + 384))
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v10 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
    {
      v11 = *a1;
      *buf = 67109120;
      LODWORD(v31) = v11;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "Sending keyboard state %u to AOP", buf, 8u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v13 = *a1;
      v26 = 67109120;
      LODWORD(v27) = v13;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLOrientationNotifier::onKeyboardState(const BOOL *, void *)", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v25 = 5;
    HIBYTE(v25) = *a1;
    v24 = 0;
    v23 = 1;
    v15 = (*(**(a2 + 384) + 160))(*(a2 + 384), 32, &v25, 2, &v24, &v23);
    if (v15)
    {
      v16 = v15;
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v17 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
      {
        v18 = mach_error_string(v16);
        *buf = 136315394;
        v31 = v18;
        v32 = 1026;
        v33 = v16;
        _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "SendCommand() = %s (0x%{public}x)", buf, 0x12u);
      }

      v19 = sub_19B420058();
      if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v20 = mach_error_string(v16);
        v26 = 136315394;
        v27 = v20;
        v28 = 1026;
        v29 = v16;
        v21 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "static void CLOrientationNotifier::onKeyboardState(const BOOL *, void *)", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_19B7293B0(NSObject *a1)
{
  sub_19B4498FC(a1);

  sub_19B4529B4(a1);
}

void sub_19B7293F8(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a2 + 336) == -1.79769313e308)
  {
    CFAbsoluteTimeGetCurrent();
    kdebug_trace();
    *(a2 + 336) = CFAbsoluteTimeGetCurrent();
    if (*(a2 + 48))
    {
      v4 = sub_19B4249E4();
      v5 = *(a2 + 48);
      *buf = (1.0 / (*(a2 + 56) * *(a2 + 76)));
      sub_19B44E2F8(v4, 0, v5, buf);
    }
  }

  v6 = *(a2 + 72);
  v7 = __OFSUB__(v6--, 1);
  *(a2 + 72) = v6;
  if ((v6 < 0) ^ v7 | (v6 == 0))
  {
    *(a2 + 72) = *(a2 + 76);
    sub_19B7520A0(*(a2 + 40), (a1 + 8), a1);
    if (sub_19B754C78(*(a2 + 40), &v30, &v29))
    {
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v8 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "Sending orientation changed notification", buf, 2u);
      }

      v9 = sub_19B420058();
      if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v10 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLOrientationNotifier::onAccelerometerData(const CLAccelerometer::Sample *, void *)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      sub_19B4455DC(a2, 0, &v29, 16);
      sub_19B4455DC(a2, 1, &v29, 16);
    }
  }

  if (*(a2 + 80) == 1)
  {
    sub_19B4200DC(a2 + 120, (a1 + 8));
    sub_19B4200DC(a2 + 192, (a1 + 12));
    sub_19B4200DC(a2 + 264, (a1 + 16));
    v11 = *(a2 + 184);
    if (v11 < *(a2 + 128))
    {
      goto LABEL_36;
    }

    v12 = 0.0;
    v13 = 0.0;
    if (v11 >= 2)
    {
      v14 = (v11 * *(a2 + 140)) - (*(a2 + 136) * *(a2 + 136));
      v13 = 0.0;
      if (v14 >= 0.0)
      {
        v13 = v14 / ((v11 - 1) * v11);
      }
    }

    v15 = *(a2 + 256);
    if (v15 >= 2)
    {
      v16 = (v15 * *(a2 + 212)) - (*(a2 + 208) * *(a2 + 208));
      if (v16 >= 0.0)
      {
        v12 = v16 / ((v15 - 1) * v15);
      }
    }

    v17 = *(a2 + 328);
    v18 = 0.0;
    if (v17 >= 2)
    {
      v19 = (v17 * *(a2 + 284)) - (*(a2 + 280) * *(a2 + 280));
      if (v19 >= 0.0)
      {
        v18 = v19 / ((v17 - 1) * v17);
      }
    }

    if (v13 >= v12)
    {
      v12 = v13;
    }

    if (v12 < v18)
    {
      v12 = v18;
    }

    if (v12 <= *(a2 + 84))
    {
      if (*(a2 + 64) && *a1 > *(a2 + 96) + *(a2 + 88))
      {
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v23 = off_1ED71C7C0;
        if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_INFO, "Device is stationary and OrientationGyroTimeout exceeded, disabling Gyro.", buf, 2u);
        }

        v24 = sub_19B420058();
        if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
          }

          LOWORD(v29) = 0;
          v25 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLOrientationNotifier::onAccelerometerData(const CLAccelerometer::Sample *, void *)", "CoreLocation: %s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        v26 = sub_19B42AD98();
        sub_19B426A14(v26, 0, *(a2 + 64));
        v27 = *(a2 + 64);
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }

        *(a2 + 64) = 0;
        sub_19B75709C(*(a2 + 40));
      }
    }

    else
    {
LABEL_36:
      *(a2 + 96) = *a1;
      if (!*(a2 + 64))
      {
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v20 = off_1ED71C7C0;
        if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_INFO, "Device is in motion, re-enabling Gyro.", buf, 2u);
        }

        v21 = sub_19B420058();
        if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
          }

          LOWORD(v29) = 0;
          v22 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLOrientationNotifier::onAccelerometerData(const CLAccelerometer::Sample *, void *)", "CoreLocation: %s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        operator new();
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_19B729B68(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a2 + 344) == -1.79769313e308)
  {
    CFAbsoluteTimeGetCurrent();
    kdebug_trace();
    *(a2 + 344) = CFAbsoluteTimeGetCurrent();
  }

  sub_19B7524EC(*(a2 + 40), (a1 + 8), a1);
  if (!*(a2 + 48) && sub_19B754C78(*(a2 + 40), &v9, &v8))
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v4 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "GYRO: Sending orientation changed notification", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLOrientationNotifier::onGyroData(const CLGyro::Sample *, void *)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    sub_19B4455DC(a2, 0, &v8, 16);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B729D9C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (CFStringCompare(*(a1 + 48), @"com.apple.springboard.HasSeenACaseLatchCoverNotification", 0) == kCFCompareEqualTo)
  {
    *(v1 + 34) = 1;
    if (*(v1 + 384))
    {
      sub_19B453A10(v1);
    }
  }

  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
  }

  v2 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 34);
    *buf = 67240192;
    v9 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "fHasSeenACaseLatchCoverOnce, %{public}d", buf, 8u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v7 = *(v1 + 34);
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::onCoverNotification(CFNotificationCenterRef, CFStringRef, const void *, CFDictionaryRef)", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B729F98(uint64_t a1, unint64_t a2, unsigned int a3, double a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 402) >= a2)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v10 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      v17 = a3;
      v18 = 2050;
      v19 = a2;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "Skipping stale orientation (%{public}u @ %{public}llu)", buf, 0x12u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      LODWORD(v14) = 67240448;
      HIDWORD(v14) = a3;
      LOWORD(v15[0]) = 2050;
      *(v15 + 2) = a2;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::notifyAOO(const uint64_t, const uint8_t, const CLMotionTypeTimestamp)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  else
  {
    *(a1 + 401) = a3;
    *(a1 + 402) = a2;
    v14 = a4;
    v15[0] = a3;
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v7 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v17 = a3;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "AOO update: %u", buf, 8u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::notifyAOO(const uint64_t, const uint8_t, const CLMotionTypeTimestamp)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    sub_19B4455DC(a1, 0, &v14, 16);
    sub_19B4455DC(a1, 1, &v14, 16);
  }

  v13 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B72A334()
{
  result = os_log_create("com.apple.locationd.Motion", "Orientation");
  off_1ED71C7C0 = result;
  return result;
}

double sub_19B72A398(unsigned __int8 *a1, int a2)
{
  v2 = *a1;
  *a1 = v2 & ~a2;
  if ((v2 & (a2 ^ 0xFF)) == 0)
  {
    *(a1 + 2) = CFAbsoluteTimeGetCurrent();
    sub_19B454944(a1);
    result = 2.22507386e-308;
    *(a1 + 8) = xmmword_19B7BD300;
  }

  return result;
}

unsigned __int8 *sub_19B72A3F0(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return (*(*a2 + 32))(a2, result);
    }

    else if (v2 == 4)
    {
      return (*(*a2 + 40))(a2, result);
    }
  }

  else if (v2 == 1)
  {
    return (*(*a2 + 16))(a2, result);
  }

  else if (v2 == 2)
  {
    return (*(*a2 + 24))(a2, result);
  }

  return result;
}

uint64_t sub_19B72A4D4(float32x2_t *a1, float32x2_t *a2, double a3)
{
  sub_19B6931F4(a1 + 3, a2);
  v5 = *&a1[7] - 1;
  a1[7] = v5;
  if (!v5)
  {
    a1[7] = a1[6];
    v6 = a1[5].i32[0];
    v8 = a1[4];
    v9 = v6;
    sub_19B5BE720(&a1[8], &v8);
    sub_19B72A554(a1, a3);
  }

  return a1->u8[1];
}

void sub_19B72A554(unsigned __int8 *a1, double a2)
{
  v122 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 33);
  if (*(a1 + 17) != v2)
  {
    goto LABEL_33;
  }

  v5 = sub_19B5BF0D0(a1 + 32, 0, v2);
  v7 = v6;
  v9 = v8;
  v10 = 0;
  *v117 = v5;
  *&v117[1] = v6;
  *&v117[2] = v8;
  v11 = 0.0;
  do
  {
    v11 = v11 + (*&v117[v10] * *&v117[v10]);
    ++v10;
  }

  while (v10 != 3);
  v12 = sqrtf(v11);
  sub_19B5E9EFC(a1 + 32, 0, *(a1 + 33));
  v14 = v13;
  v16 = v15;
  v17 = -(v12 + -1.0);
  if ((v12 + -1.0) > 0.0)
  {
    v17 = v12 + -1.0;
  }

  if (v17 <= 0.25)
  {
    v18 = v13 <= v16 ? v16 : v13;
    if (v18 <= 0.25)
    {
      v19 = -v5;
      if (v5 > 0.0)
      {
        v19 = v5;
      }

      if (v19 <= 1.1)
      {
        v26 = sqrtf((v7 * v7) + (v5 * v5));
        if (v26 > 1.1)
        {
          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v27 = qword_1EAFE27E0;
          if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *v121 = v26;
            _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEBUG, "Invalid xyNorm, %.2f", buf, 0xCu);
          }

          v28 = sub_19B420058();
          if (*(v28 + 160) <= 1 && *(v28 + 164) <= 1 && *(v28 + 168) <= 1 && !*(v28 + 152))
          {
            goto LABEL_33;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v118 = 134217984;
          *v119 = v26;
          goto LABEL_31;
        }

        v29 = v18;
        v30 = (atan2f(v26, -v9) * -57.296) + 90.0;
        if (v30 <= 0.0)
        {
          v31 = -v30;
        }

        else
        {
          v31 = v30;
        }

        if (v31 > 55.0 || ((v32 = *a1, v31 > 30.0) ? (v33 = v32 == 0) : (v33 = 1), !v33))
        {
          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v94 = qword_1EAFE27E0;
          if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *v121 = v31;
            _os_log_impl(&dword_19B41C000, v94, OS_LOG_TYPE_DEBUG, "Invalid tilt, %.2f", buf, 0xCu);
          }

          v95 = sub_19B420058();
          if (*(v95 + 160) <= 1 && *(v95 + 164) <= 1 && *(v95 + 168) <= 1 && !*(v95 + 152))
          {
            goto LABEL_33;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v118 = 134217984;
          *v119 = v31;
          goto LABEL_31;
        }

        if (v7 <= 0.0)
        {
          v34 = -v7;
        }

        else
        {
          v34 = v7;
        }

        v35 = atan2f(v5, v34) * 57.296;
        v36 = -v35;
        if (v35 > 0.0)
        {
          v36 = v35;
        }

        if (v36 < 25.0 || (v35 <= 0.0 ? (v37 = 1) : (v37 = 2), v31 > 45.0 ? (v38 = v36 < 37.5) : (v38 = 0), v38))
        {
          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v96 = qword_1EAFE27E0;
          v97 = v35;
          if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *v121 = v97;
            _os_log_impl(&dword_19B41C000, v96, OS_LOG_TYPE_DEBUG, "Invalid swivel, %.2f", buf, 0xCu);
          }

          v98 = sub_19B420058();
          if (*(v98 + 160) > 1 || *(v98 + 164) > 1 || *(v98 + 168) > 1 || *(v98 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE27A8 != -1)
            {
              dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
            }

            v118 = 134217984;
            *v119 = v97;
            v99 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCallHandednessDetector::detect(double)", "CoreLocation: %s\n", v99);
            if (v99 != buf)
            {
              free(v99);
            }
          }

          if (*a1)
          {
            goto LABEL_33;
          }

          v37 = 0;
        }

        else if (v32)
        {
          v39 = sub_19B5BC7B8(a1 + 32);
          if (v39 <= 0.0)
          {
            v39 = -v39;
          }

          if (v29 > 0.075 || v39 > 1.1)
          {
            goto LABEL_84;
          }

          v40 = sub_19B5BC7B8(a1 + 32);
          v41 = v40 - sub_19B72B3C4(a1 + 32);
          if (v41 <= 0.0)
          {
            v42 = -v41;
          }

          else
          {
            v42 = v41;
          }

          sub_19B5BC7B8(a1 + 32);
          v44 = v43;
          sub_19B72B3C4(a1 + 32);
          v46 = v44 - v45;
          v47 = -(v44 - v45);
          if (v46 <= 0.0)
          {
            v48 = v47;
          }

          else
          {
            v48 = v46;
          }

          v49 = sub_19B5BC7B8(a1 + 32);
          v51 = v50;
          v52 = sub_19B72B3C4(a1 + 32);
          v54 = v51 - v53;
          v55 = v49 - v52;
          if (v42 <= v48)
          {
            v55 = v54;
          }

          if (v55 <= 0.0)
          {
            v55 = -v55;
          }

          if (v55 > 0.6)
          {
LABEL_84:
            if (qword_1EAFE27A8 != -1)
            {
              dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
            }

            v56 = qword_1EAFE27E0;
            if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
            {
              v57 = sub_19B5BC7B8(a1 + 32);
              if (v57 <= 0.0)
              {
                v57 = -v57;
              }

              v58 = v57;
              v59 = sub_19B5BC7B8(a1 + 32);
              v60 = v59 - sub_19B72B3C4(a1 + 32);
              if (v60 <= 0.0)
              {
                v61 = -v60;
              }

              else
              {
                v61 = v60;
              }

              sub_19B5BC7B8(a1 + 32);
              v63 = v62;
              sub_19B72B3C4(a1 + 32);
              v65 = v63 - v64;
              v66 = -(v63 - v64);
              if (v65 <= 0.0)
              {
                v67 = v66;
              }

              else
              {
                v67 = v65;
              }

              v68 = sub_19B5BC7B8(a1 + 32);
              v70 = v69;
              v71 = sub_19B72B3C4(a1 + 32);
              v73 = v70 - v72;
              v74 = v68 - v71;
              if (v61 <= v67)
              {
                v74 = v73;
              }

              if (v74 <= 0.0)
              {
                v74 = -v74;
              }

              *buf = 134218496;
              *v121 = v58;
              *&v121[8] = 2048;
              *&v121[10] = v29;
              *&v121[18] = 2048;
              *&v121[20] = v74;
              _os_log_impl(&dword_19B41C000, v56, OS_LOG_TYPE_DEBUG, "Swing1. xMag, %.2f, maxXYVar, %.2f, swingX, %.2f", buf, 0x20u);
            }

            v75 = sub_19B420058();
            if (*(v75 + 160) > 1 || *(v75 + 164) > 1 || *(v75 + 168) > 1 || *(v75 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE27A8 != -1)
              {
                dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
              }

              v76 = sub_19B5BC7B8(a1 + 32);
              if (v76 <= 0.0)
              {
                v76 = -v76;
              }

              v77 = v76;
              v78 = sub_19B5BC7B8(a1 + 32);
              v79 = v78 - sub_19B72B3C4(a1 + 32);
              if (v79 <= 0.0)
              {
                v80 = -v79;
              }

              else
              {
                v80 = v79;
              }

              sub_19B5BC7B8(a1 + 32);
              v82 = v81;
              sub_19B72B3C4(a1 + 32);
              v84 = v82 - v83;
              v85 = -(v82 - v83);
              if (v84 <= 0.0)
              {
                v86 = v85;
              }

              else
              {
                v86 = v84;
              }

              v87 = sub_19B5BC7B8(a1 + 32);
              v89 = v88;
              v90 = sub_19B72B3C4(a1 + 32);
              v92 = v89 - v91;
              v93 = v87 - v90;
              if (v80 <= v86)
              {
                v93 = v92;
              }

              if (v93 <= 0.0)
              {
                v93 = -v93;
              }

              v118 = 134218496;
              *v119 = v77;
              *&v119[8] = 2048;
              *&v119[10] = v29;
              *&v119[18] = 2048;
              *&v119[20] = v93;
              v24 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCallHandednessDetector::detect(double)", "CoreLocation: %s\n", v24);
              if (v24 != buf)
              {
                goto LABEL_32;
              }
            }

            goto LABEL_33;
          }

          v103 = sub_19B72B3C4(a1 + 32);
          if ((v103 * sub_19B5BC7B8(a1 + 32)) < 0.0)
          {
            if (qword_1EAFE27A8 != -1)
            {
              dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
            }

            v104 = qword_1EAFE27E0;
            if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v104, OS_LOG_TYPE_DEBUG, "Swing2. X sign flipping.", buf, 2u);
            }

            v105 = sub_19B420058();
            if (*(v105 + 160) <= 1 && *(v105 + 164) <= 1 && *(v105 + 168) <= 1 && !*(v105 + 152))
            {
              goto LABEL_33;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE27A8 != -1)
            {
              dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
            }

            LOWORD(v118) = 0;
            goto LABEL_31;
          }

          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v106 = qword_1EAFE27E0;
          if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
          {
            v107 = sub_19B5BC7B8(a1 + 32);
            if (v107 <= 0.0)
            {
              v107 = -v107;
            }

            v108 = v107;
            v109 = sub_19B5BC7B8(a1 + 32);
            v110 = v109 - sub_19B72B3C4(a1 + 32);
            *buf = 67109888;
            *v121 = v37;
            if (v110 <= 0.0)
            {
              v110 = -v110;
            }

            *&v121[4] = 2048;
            *&v121[6] = v108;
            *&v121[14] = 2048;
            *&v121[16] = v29;
            *&v121[24] = 2048;
            *&v121[26] = v110;
            _os_log_impl(&dword_19B41C000, v106, OS_LOG_TYPE_DEBUG, "Passed swing-detect. hand, %d, xMag, %.2f, maxXYVar, %.3f, swingX, %.3f", buf, 0x26u);
          }

          v111 = sub_19B420058();
          if (*(v111 + 160) > 1 || *(v111 + 164) > 1 || *(v111 + 168) > 1 || *(v111 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE27A8 != -1)
            {
              dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
            }

            v112 = sub_19B5BC7B8(a1 + 32);
            if (v112 <= 0.0)
            {
              v112 = -v112;
            }

            v113 = v112;
            v114 = sub_19B5BC7B8(a1 + 32);
            v115 = v114 - sub_19B72B3C4(a1 + 32);
            v118 = 67109888;
            *v119 = v37;
            if (v115 <= 0.0)
            {
              v115 = -v115;
            }

            *&v119[4] = 2048;
            *&v119[6] = v113;
            *&v119[14] = 2048;
            *&v119[16] = v29;
            *&v119[24] = 2048;
            *&v119[26] = v115;
            v116 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCallHandednessDetector::detect(double)", "CoreLocation: %s\n", v116);
            if (v116 != buf)
            {
              free(v116);
            }
          }
        }

        if (a1[1] == v37)
        {
LABEL_146:
          a1[8] = 3;
          *(a1 + 2) = 0;
          goto LABEL_33;
        }

        v100 = *a1;
        v101 = a1[8];
        if (v101 == 3 || (v102 = (a1 + 16), a2 - *(a1 + 2) > 2.0))
        {
          a1[8] = v37;
          v102 = (a1 + 16);
        }

        else
        {
          if (v101 == v37)
          {
            a1[1] = v37;
            *a1 = 0;
            goto LABEL_146;
          }

          a1[8] = v37;
        }

        *v102 = a2;
        if ((v100 & 1) == 0)
        {
          *(a1 + 16) = 0;
        }

        goto LABEL_33;
      }
    }
  }

  if (qword_1EAFE27A8 != -1)
  {
    dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
  }

  v20 = qword_1EAFE27E0;
  if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
  {
    if (v14 <= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v14;
    }

    *buf = 134218496;
    *v121 = v12;
    *&v121[8] = 2048;
    *&v121[10] = v21;
    *&v121[18] = 2048;
    *&v121[20] = v5;
    _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEBUG, "Invalid dynamics, mag, %.2f, xyVarMax, %.2f, xMean, %.2f", buf, 0x20u);
  }

  v22 = sub_19B420058();
  if (*(v22 + 160) <= 1 && *(v22 + 164) <= 1 && *(v22 + 168) <= 1 && !*(v22 + 152))
  {
    goto LABEL_33;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE27A8 != -1)
  {
    dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
  }

  if (v14 <= v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = v14;
  }

  v118 = 134218496;
  *v119 = v12;
  *&v119[8] = 2048;
  *&v119[10] = v23;
  *&v119[18] = 2048;
  *&v119[20] = v5;
LABEL_31:
  v24 = _os_log_send_and_compose_impl();
  sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCallHandednessDetector::detect(double)", "CoreLocation: %s\n", v24);
  if (v24 != buf)
  {
LABEL_32:
    free(v24);
  }

LABEL_33:
  v25 = *MEMORY[0x1E69E9840];
}

float sub_19B72B3C4(unsigned __int16 *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28760);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 139,front() on empty buffer.", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28760);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "Element CMVectorBufferBase<float, 3>::front() const [T = float, N = 3]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v2 = sub_19B5BEC4C(a1, 0);
  result = *v2;
  v4 = *(v2 + 4);
  v5 = *(v2 + 8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B72B58C()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

void sub_19B72B908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B72BC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B72BDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  v21 = *(v19 - 40);
  if (v21)
  {
    sub_19B41FFEC(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B72C020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B72C230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a20)
  {
    sub_19B41FFEC(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B72C268(uint64_t a1, void *a2)
{
  v4 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"CMErrorMessage");
  v6 = objc_msgSend_objectForKeyedSubscript_(a2, v5, @"CMReturnCode");
  v9 = objc_msgSend_BOOLValue(v6, v7, v8);
  if (v4 || (v9 & 1) == 0)
  {
    v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v10, v11);
    objc_msgSend_removeItemAtURL_error_(v12, v13, *(a1 + 32), 0);
  }

  v14 = *(*(a1 + 40) + 16);

  return v14();
}

void sub_19B72C478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  sub_19B41FFEC(v18);
  _Unwind_Resume(a1);
}

void sub_19B72C5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B72C630()
{
  result = os_log_create("com.apple.locationd.Motion", "Fall");
  qword_1EAFE29B0 = result;
  return result;
}

void sub_19B72CA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B72CA5C(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2798 != -1)
  {
    dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
  }

  v3 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136446210;
    v12 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManagerInternal init]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void *sub_19B72CC54(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v7 = ExecutablePathFromPid;
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v8 = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = getpid();
      v10 = *(a1 + 32);
      *buf = 138478339;
      v32 = v7;
      v33 = 1025;
      v34 = v9;
      v35 = 2049;
      v36 = v10;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %{private}@, %{private}d, %{private}p", buf, 0x1Cu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }

      v12 = getpid();
      v13 = *(a1 + 32);
      v25 = 138478339;
      v26 = v7;
      v27 = 1025;
      v28 = v12;
      v29 = 2049;
      v30 = v13;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManagerInternal init]_block_invoke", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v16 = objc_msgSend_copy(result, v5, v6);
    v17 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"Session and fences lost due to disconnection";
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v24, &v23, 1);
    v21 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v20, @"CMPedestrianFenceErrorDomain", 5, v19);
    result = v16[2](v16, 0, v21);
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B72D008(uint64_t a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 48) & 1) == 0)
  {

    *(*(a1 + 32) + 24) = 0;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 24);
    if (v3 != v2)
    {

      *(*(a1 + 32) + 24) = objc_msgSend_copy(*(a1 + 40), v4, v5);
    }
  }

  v6 = *(*(a1 + 32) + 8);
  sub_19B428B50(&__p, "PedestrianFence/kCLConnectionMessagePedestrianFenceStatus");
  v14 = *(a1 + 32);
  CLConnectionClient::setHandlerForMessage();
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v17[0] = @"kCLConnectionMessageSubscribeKey";
  v18[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v7, *(a1 + 48));
  v17[1] = @"CMPedestrianFenceClientIdentifier";
  v10 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v8, v9);
  v18[1] = objc_msgSend_processName(v10, v11, v12);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v18, v17, 2);
  sub_19B5B9C88();
}

void sub_19B72D1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B72D238(uint64_t a1, const char *a2, uint64_t a3)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v5 = objc_msgSend_copy(result, a2, a3);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10);
    v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMPedestrianFenceStatus");
    v14 = v5[2];

    return v14(v5, v13, 0);
  }

  return result;
}

void sub_19B72D378(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3 != *(a1 + 64))
  {

    *(*(a1 + 32) + 16) = objc_msgSend_copy(*(a1 + 64), v4, v5);
    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 8);
  sub_19B428B50(__p, "PedestrianFence/kCLConnectionMessagePedestrianFence");
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = sub_19B72D798;
  v27 = &unk_1E7532DC8;
  v28 = *(a1 + 32);
  CLConnectionClient::setHandlerForMessage();
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  memset(&__dst, 0, sizeof(__dst));
  v9 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v10, *(a1 + 40), @"CMPedestrianFenceIdentifier");
  v12 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v11, *(a1 + 72));
  objc_msgSend_setObject_forKeyedSubscript_(v9, v13, v12, @"CMPedestrianFenceShouldWake");
  if (*(a1 + 48))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v14, MEMORY[0x1E695E118], @"kCLConnectionMessageSubscribeKey");
    objc_msgSend_setObject_forKeyedSubscript_(v9, v15, *(a1 + 48), @"CMPedestrianFenceRadius");
    v16 = "PedestrianFence/kCLConnectionMessagePedestrianFence";
    v17 = 51;
    goto LABEL_9;
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v14, v18, @"CMPedestrianFenceDelay");
    v16 = "PedestrianFence/kCLConnectionMessagePedestrianFenceSimulation";
    v17 = 61;
LABEL_9:
    sub_19B432174(&__dst, v16, v17);
    operator new();
  }

  if (qword_1EAFE2798 != -1)
  {
    dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
  }

  v19 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "Bad parameters given ", __p, 2u);
  }

  v20 = sub_19B420058();
  if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v21 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedestrianFenceManagerInternal _setFence:withRadius:wake:delay:withCompletion:]_block_invoke", "CoreLocation: %s\n", v21);
    if (v21 != __p)
    {
      free(v21);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_19B72D728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B72D798(uint64_t a1, const char *a2, uint64_t a3)
{
  v29[1] = *MEMORY[0x1E69E9840];
  result = *(*(a1 + 32) + 16);
  if (!result)
  {
LABEL_10:
    v27 = *MEMORY[0x1E69E9840];
    return result;
  }

  v5 = objc_msgSend_copy(result, a2, a3);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10);
  v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMErrorMessage");
  if (v13)
  {
    v16 = objc_msgSend_integerValue(v13, v14, v15);
    if (v16 > 4)
    {
      v19 = @"Unknown error";
      v18 = 103;
    }

    else
    {
      v18 = qword_19B7BD318[v16];
      v19 = off_1E7535940[v16];
    }

    v23 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = v19;
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, v29, &v28, 1);
    v26 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"CMErrorDomain", v18, v24);
    result = v5[2](v5, 0, v26);
    goto LABEL_10;
  }

  v20 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMPedestrianFenceIdentifier");
  v21 = v5[2];
  v22 = *MEMORY[0x1E69E9840];

  return v21(v5, v20, 0);
}

void sub_19B72D9DC(uint64_t a1, const char *a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E695E110];
  v7[0] = @"kCLConnectionMessageSubscribeKey";
  v7[1] = @"CMPedestrianFenceForceClear";
  v8[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, *(a1 + 48));
  v7[2] = @"CMPedestrianFenceForceClearAll";
  v4 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v3, *(a1 + 32) == 0);
  v7[3] = @"CMPedestrianFenceIdentifier";
  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = &stru_1F0E3D7A0;
  }

  v8[2] = v4;
  v8[3] = v6;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v8, v7, 4);
  sub_19B72F4D0();
}

void sub_19B72DB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B72F4A0()
{
  result = os_log_create("com.apple.locationd.Motion", "PedestrianFence");
  qword_1EAFE27D0 = result;
  return result;
}

void *sub_19B72F544(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B72F5A0((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B72F5A0(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B72F5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B72F614(void *a1)
{
  *a1 = &unk_1F0E344B8;
  sub_19B72F6E4(a1);
  v2 = a1[37];
  a1[37] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[22];
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v4 = a1[20];
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  v5 = a1[18];
  a1[18] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return sub_19B70B29C(a1);
}

void sub_19B72F6E4(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(a1 + 192));
    *(a1 + 192) = 0;
  }
}

void sub_19B72F720(void *a1)
{
  sub_19B72F614(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B72F758(uint64_t result, double *a2)
{
  v2 = a2[7];
  if (v2 == -1.0)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    v3 = 0u;
    v2 = -1.0;
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
  }

  *(result + 200) = v3;
  *(result + 216) = v4;
  *(result + 232) = v5;
  *(result + 248) = v6;
  *(result + 256) = v2;
  return result;
}

void sub_19B72F7C4(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
  }

  v4 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v9 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Compass for AOP started. CoverAttached %{public}d", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompass7::start(BOOL)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  *(a1 + 272) = a2;
  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B72F998()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
  }

  v0 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "Compass for AOP stopped.", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompass7::stop()", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

double sub_19B72FB3C(uint64_t a1, int a2, double *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  sub_19B70B4A4(a1, a2, a3);
  if (!a2)
  {
    if (*a3 <= 0.0)
    {
      if (*(a1 + 184) == 1)
      {
        *(a1 + 184) = 0;
        sub_19B72F6E4(a1);
        context.version = 0;
        context.info = a1;
        memset(&context.retain, 0, 24);
        v8 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v10 = CFRunLoopTimerCreate(v8, Current + 600.0, 0.0, 0, 0, sub_19B731228, &context);
        *(a1 + 192) = v10;
        if (v10)
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
          }

          v11 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v23 = 0x4082C00000000000;
            _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "Keeping compass on for %{public}.0f seconds", buf, 0xCu);
          }

          v12 = sub_19B420058();
          if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
            }

            v20 = 134349056;
            v21 = 0x4082C00000000000;
            v13 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompass7::startTurnOffTimer()", "CoreLocation: %s\n", v13);
            if (v13 != buf)
            {
              free(v13);
            }
          }

          sub_19B420D84();
          CFRunLoopAddTimer(*qword_1ED71C908, *(a1 + 192), *MEMORY[0x1E695E8D0]);
        }

        else
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
          }

          v14 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Could not create turn-off timer", buf, 2u);
          }

          v15 = sub_19B420058();
          if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
            }

            LOWORD(v20) = 0;
            v16 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLCompass7::startTurnOffTimer()", "CoreLocation: %s\n", v16);
            if (v16 != buf)
            {
              free(v16);
            }
          }

          sub_19B72FF38(a1, (a1 + 264));
        }
      }

      if (*(a1 + 192))
      {
        v7 = &unk_19B7BD348;
      }

      else
      {
        v7 = a3;
      }

      v6 = a1;
    }

    else
    {
      v6 = a1;
      v7 = a3;
    }

    sub_19B72FF38(v6, v7);
  }

  result = *a3;
  *(a1 + 264) = *a3;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B72FF38(uint64_t a1, double *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
  }

  v4 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 134349056;
    *&buf[4] = v5;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Setting compass update interval to %{public}f", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
    }

    v16 = *a2;
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompass7::setDeviceMotionServiceUpdateInterval(const CFTimeInterval &)", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (*(a1 + 136))
  {
    v8 = sub_19B421620();
    v9 = (a1 + 168);
    if ((v8 & 0x20) != 0)
    {
      v10 = (a1 + 168);
      v9 = (a1 + 152);
    }

    else
    {
      v10 = (a1 + 152);
    }
  }

  else
  {
    v9 = (a1 + 168);
    v10 = (a1 + 152);
  }

  if (*v9)
  {
    sub_19B4238F4(*v9, rint(0.0));
  }

  if (!*v10)
  {
    v11 = sub_19B42CAAC();
    sub_19B42C428(v11);
  }

  v12 = rint(*a2 * 1000000.0);
  if (*a2 < 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  result = sub_19B4238F4(*v10, v13);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B7301FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3);
  v9 = *MEMORY[0x1E69E9840];
  IOHIDEventGetVendorDefinedData();
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28440);
  }

  v3 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Empty payload, returning", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28440);
    }

    LOWORD(v8) = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass7::onDeviceMotionServiceIohidEvent(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B731228(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 264) <= 0.0)
  {
    sub_19B72FF38(a2, (a2 + 264));
  }

  sub_19B72F6E4(a2);
}

__n128 sub_19B731290(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 104) = *(a2 + 24);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = result;
  return result;
}

void sub_19B73140C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B73143C(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE2790 != -1)
  {
    dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
  }

  v14 = qword_1EAFE27C8;
  if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSkiTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B731664(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v6 = qword_1EAFE27C8;
    if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      *buf = 138413058;
      v15 = v5;
      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = v9;
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMSkiTracker client connection interrupt, %@, %d, %d, %p", buf, 0x22u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2790 != -1)
      {
        dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
      }

      getpid();
      v13 = *(*(a1 + 32) + 24);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B7319D8(uint64_t result)
{
  v1 = result;
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  v3 = *(v2 + 40);
  if (v3 != *(result + 48) || (*(v2 + 24) & 1) == 0)
  {

    *(*(v1 + 32) + 40) = *(v1 + 48);
    *(*(v1 + 32) + 32) = *(v1 + 40);
    *(*(v1 + 32) + 56) = 0xBFF0000000000000;
    v5 = *(v1 + 40);
    if (v5)
    {
      v23 = @"CMSkiKeyDataRecord";
      v24[0] = v5;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v24, &v23, 1);
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E696AFB0]);
      v8 = objc_msgSend_initWithUUIDString_(v6, v7, @"00000000-0000-0000-0000-000000000000");
      v9 = [CMSkiData alloc];
      v11 = objc_msgSend_initWithSessionId_(v9, v10, v8);
      v21 = @"CMSkiKeyDataRecord";
      v22 = v11;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, &v22, &v21, 1);
    }

    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v13 = qword_1EAFE27C8;
    if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v1 + 40);
      buf = 138412290;
      *buf_4 = v14;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "Querying data to anchor updates from %@", &buf, 0xCu);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2790 != -1)
      {
        dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
      }

      v18 = *(v1 + 40);
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _startUpdatesFromRecord:handler:]_block_invoke", "CoreLocation: %s\n", v16);
      if (v16 != &buf)
      {
        free(v16);
      }
    }

    sub_19B6A2040();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B731E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, void *__p, std::__shared_weak_count *a34, int a35, __int16 a36, char a37, char a38)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a34)
  {
    sub_19B41FFEC(a34);
  }

  if (a32)
  {
    sub_19B41FFEC(a32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B731ECC(uint64_t result, uint64_t *a2)
{
  if (*(*(result + 32) + 40))
  {
    v3 = result;
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v4, v9, v5, v6, v7, v8, 0);
    result = *a2;
    if (*a2)
    {
      result = CLConnectionMessage::getDictionaryOfClasses(result, v10);
      if (result)
      {
        v11 = result;
        v12 = *(v3 + 32);

        return MEMORY[0x1EEE66B58](v12, sel__handleUpdates_, v11);
      }
    }
  }

  return result;
}

void sub_19B731FB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 40);
  if (v4)
  {
    v6 = objc_msgSend_copy(v4, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v7, v12, v8, v9, v10, v11, 0);
    if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v13)) != 0)
    {
      v15 = DictionaryOfClasses;
      v16 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v16, sel__handleUpdates_, v15);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B732104;
      block[3] = &unk_1E7532B40;
      block[4] = v6;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t sub_19B732104(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B7321DC(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24))
  {
    v6 = @"kCLConnectionMessageSubscribeKey";
    v7 = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &v7, &v6, 1);
    sub_19B66451C();
  }

  if (qword_1EAFE2790 != -1)
  {
    dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
  }

  v2 = qword_1EAFE27C8;
  if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Unable to stop Ski data updates as we are are not receiving updates.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _stopUpdates]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B73242C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B7324D0(uint64_t a1, const char *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = @"CMSkiKeyDataRecord";
    v13[0] = v2;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, &v12, 1);
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E696AFB0]);
    v5 = objc_msgSend_initWithUUIDString_(v3, v4, @"00000000-0000-0000-0000-000000000000");
    v6 = [CMSkiData alloc];
    v8 = objc_msgSend_initWithSessionId_(v6, v7, v5);
    v10 = @"CMSkiKeyDataRecord";
    v11 = v8;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v11, &v10, 1);
  }

  sub_19B6A2040();
}

void sub_19B732674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B7326A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_copy(*(a1 + 32), a2, a3);
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v5, v10, v6, v7, v8, v9, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11)) != 0)
  {
    v14 = DictionaryOfClasses;
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage");
    v17 = objc_msgSend_objectForKeyedSubscript_(v14, v16, @"CMSkiKeyDataArray");
    if (v15)
    {
      v18 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B732AA0;
      v26[3] = &unk_1E7532B90;
      v26[5] = v4;
      v4 = v15;
    }

    else if (v17)
    {
      v18 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_19B732B18;
      v25[3] = &unk_1E7532B90;
      v25[5] = v4;
      v4 = v17;
    }

    else
    {
      if (qword_1EAFE2790 != -1)
      {
        dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
      }

      v20 = qword_1EAFE27C8;
      if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageSkiDataQuery message.", buf, 2u);
      }

      v21 = sub_19B420058();
      if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2790 != -1)
        {
          dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
        }

        v24 = 0;
        v22 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSkiTrackerInternal _queryUpdatesFromRecord:handler:]_block_invoke", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      v18 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_19B732B30;
      v23[3] = &unk_1E7532B40;
    }
  }

  else
  {
    v18 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B732A3C;
    block[3] = &unk_1E7532B40;
  }

  v18[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B732A3C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B732AA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B732B30(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B7332C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B733350(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B733428(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2790 != -1)
  {
    dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
  }

  v2 = qword_1EAFE27C8;
  if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[live data] starting updates", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _startLiveUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  *(*(a1 + 32) + 48) = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  sub_19B428B50(buf, "kCLConnectionMessageSkiDataLiveUpdate");
  v7 = *(a1 + 32);
  CLConnectionClient::setHandlerForMessage();
  if (v11 < 0)
  {
    operator delete(*buf);
  }

  v8 = @"kCLConnectionMessageSubscribeKey";
  v9 = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, &v9, &v8, 1);
  sub_19B686B90();
}

void sub_19B73370C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B733750(uint64_t a1, const char *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 48);
  if (v3)
  {
    v5 = objc_msgSend_copy(v3, a2, a3);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v6, v10, v7, v8, v9, 0);
    if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11), *a2) && (v14 = DictionaryOfClasses) != 0)
    {
      if (objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage"))
      {
        if (qword_1EAFE2790 != -1)
        {
          dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
        }

        v16 = qword_1EAFE27C8;
        if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_msgSend_objectForKeyedSubscript_(v14, v17, @"CMErrorMessage");
          *buf = 67109120;
          LODWORD(v50) = objc_msgSend_intValue(v18, v19, v20);
          _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "[live data] encountered error while trying to stream, %d", buf, 8u);
        }

        v21 = sub_19B420058();
        if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2790 != -1)
          {
            dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
          }

          v24 = objc_msgSend_objectForKeyedSubscript_(v14, v23, @"CMErrorMessage");
          v47 = 67109120;
          LODWORD(v48) = objc_msgSend_intValue(v24, v25, v26);
          v27 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSkiTrackerInternal _startLiveUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        v28 = MEMORY[0x1E696ABC0];
        v29 = objc_msgSend_objectForKeyedSubscript_(v14, v22, @"CMErrorMessage");
        v32 = objc_msgSend_integerValue(v29, v30, v31);
        v34 = objc_msgSend_errorWithDomain_code_userInfo_(v28, v33, @"CMErrorDomain", v32, 0);
        v35 = v45;
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[5] = v5;
        v45[2] = sub_19B733E24;
        v45[3] = &unk_1E7532B90;
        v5 = v34;
      }

      else
      {
        v40 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"CMSkiKeyDataRecord");
        if (qword_1EAFE2790 != -1)
        {
          dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
        }

        v41 = qword_1EAFE27C8;
        if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v50 = v40;
          _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_INFO, "[live data] delivering live update %@", buf, 0xCu);
        }

        v42 = sub_19B420058();
        if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2790 != -1)
          {
            dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
          }

          v47 = 138412290;
          v48 = v40;
          v43 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _startLiveUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v43);
          if (v43 != buf)
          {
            free(v43);
          }
        }

        v35 = v44;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = sub_19B733E3C;
        v44[3] = &unk_1E7532B90;
        v44[5] = v5;
        v5 = v40;
      }
    }

    else
    {
      if (qword_1EAFE2790 != -1)
      {
        dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
      }

      v36 = qword_1EAFE27C8;
      if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_ERROR, "[live data] malformed payload while trying to stream", buf, 2u);
      }

      v37 = sub_19B420058();
      if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2790 != -1)
        {
          dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
        }

        LOWORD(v47) = 0;
        v38 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSkiTrackerInternal _startLiveUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }

      v35 = block;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B733DC0;
      block[3] = &unk_1E7532B40;
    }

    v35[4] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v35);
  }

  v39 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B733DC0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B734058(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B686B90();
}

void sub_19B73413C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B734368(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return objc_msgSend__startUpdatesFromRecord_handler_(v4, v5, v6, v7);
}

uint64_t sub_19B73441C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__internal(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopUpdates, v4);
}

uint64_t sub_19B734530(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D620 = result;
  return result;
}

uint64_t sub_19B734630(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startLiveUpdatesWithHandler_, v5);
}

uint64_t sub_19B7346E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__internal(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopLiveUpdates, v4);
}

os_log_t sub_19B734718()
{
  result = os_log_create("com.apple.locationd.Motion", "Skiing");
  qword_1EAFE27C8 = result;
  return result;
}

void sub_19B73480C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

void sub_19B734910(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E3B348);
  }

  v14 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3B348);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMCatherineFeederInternal _startDaemonConnection]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B734C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B734FD0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_internal(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = mach_absolute_time();
  sub_19B41E070(v7);

  return MEMORY[0x1EEE66B58](v4, sel__feedCatherine_confidence_timestamp_, v8);
}

os_log_t sub_19B735038()
{
  result = os_log_create("com.apple.locationd.Motion", "HeartRate");
  qword_1EAFE29F0 = result;
  return result;
}

uint64_t *sub_19B735CF8(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = *(a2 + 160);
    if (result)
    {
      return sub_19B5E7F7C(result, v2);
    }
  }

  return result;
}

uint64_t *sub_19B735D14(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = *(a2 + 160);
    if (result)
    {
      return sub_19B5E8118(result, v2);
    }
  }

  return result;
}

void sub_19B735D3C(char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B388);
  }

  v4 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
  {
    v5 = *a1;
    v6 = *(a1 + 25);
    *buf = 67240963;
    v14 = v5;
    v15 = 2081;
    v16 = (a1 + 4);
    v17 = 2081;
    v18 = (a1 + 68);
    v19 = 1026;
    v20 = v6;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMHeadphoneActivityManager] Config,side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", buf, 0x22u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B388);
    }

    v11 = *a1;
    v12 = *(a1 + 25);
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void onHeadphoneDeviceMotionConfig(const CLAccessoryDeviceMotion::Config *, void *)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (a2)
  {
    v9 = *(a2 + 160);
    if (v9)
    {
      sub_19B5E73F0(v9, a1);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t *sub_19B735F80(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = *(a2 + 160);
    if (result)
    {
      return sub_19B5E5DB4(result, v2);
    }
  }

  return result;
}

void sub_19B7365AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B736898(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_pauseActivityStreamingPrivate(*(a1 + 32), a2, a3);
  objc_msgSend_pauseStatusStreamingPrivate(*(a1 + 32), v4, v5);
  v8 = *(*(a1 + 32) + 8);

  return objc_msgSend_stopMslLoggingPrivate(v8, v6, v7);
}

uint64_t sub_19B736934()
{
  if (sub_19B43B6EC() & 1) != 0 || (sub_19B4426E4() & 1) != 0 || (sub_19B4215D8())
  {
    result = 1;
  }

  else
  {
    result = objc_msgSend_isMotionActivityEntitled(CMMotionUtils, v0, v1);
  }

  byte_1ED71D630 = result;
  return result;
}

__n128 sub_19B736A14(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 32) + 8) + 8);
  block[1] = 3221225472;
  block[2] = sub_19B736A9C;
  block[3] = &unk_1E7532C08;
  v5 = v1;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
  return result;
}

void sub_19B736B24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 8) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B736B9C;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_sync(v2, block);
}

uint64_t sub_19B736D60(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_mslLoggingEnabledPrivate(*(*(a1 + 32) + 8), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_19B73710C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_19B737128(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  v4 = MEMORY[0x1E696ACD0];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v5, v10, v6, v7, v8, v9, 0);
  v13 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v4, v12, v11, a2, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Weak = objc_loadWeak((v3 + 32));
    v15 = v13;
LABEL_4:

    return MEMORY[0x1EEE66B58](Weak, sel_onActivityPrivate_error_, v15);
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return result;
  }

  v17 = objc_msgSend_objectForKeyedSubscript_(v13, v16, @"EventType");
  isEqualToString = objc_msgSend_isEqualToString_(v17, v18, @"Activity");
  v20 = objc_loadWeak((v3 + 32));
  v22 = v20;
  if (isEqualToString)
  {
    v23 = objc_msgSend_objectForKeyedSubscript_(v13, v21, @"PayloadData");
    objc_msgSend_objectForKeyedSubscript_(v13, v24, @"PayloadError");
    Weak = v22;
    v15 = v23;
    goto LABEL_4;
  }

  return MEMORY[0x1EEE66B58](v20, sel_onStatusEventPrivate_, v13);
}

uint64_t sub_19B737454(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138543618;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CMHeadphoneActivityManager] motion activity: %{public}@ error: %{public}@", buf, 0x16u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
    }

    v11 = a1[4];
    v12 = a1[5];
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneActivityManager onActivityPrivate:error:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = a1[5];
  v8 = a1[4];
  result = (*(a1[6] + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B7378E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_19B73790C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = MEMORY[0x1E696ACD0];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v9 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
    v11 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v4, v10, v9, a2, 0);
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      Weak = objc_loadWeak((v3 + 32));

      return MEMORY[0x1EEE66B58](Weak, sel_onStatusEventPrivate_, v11);
    }
  }

  return result;
}

uint64_t sub_19B737F5C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CMHeadphoneActivityManager] notifying client of connection", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneActivityManager notifyDeviceConnectedEventToClientPrivate]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B738358(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CMHeadphoneActivityManager] notifying client of disconnection", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneActivityManager notifyDeviceDisconnectedEventToClientPrivate]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B738520()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void sub_19B7385C4(_DWORD *a1)
{
  sub_19B718268(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B738600(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  bzero(&v8, 0x12uLL);
  v8 = *(a1 + 126);
  v9 = *(a1 + 134);
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E2A120);
  }

  v2 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    *buf = 67110656;
    v25 = v8;
    v26 = 1024;
    v27 = SWORD1(v8);
    v28 = 1024;
    v29 = SWORD2(v8);
    v30 = 1024;
    v31 = SHIWORD(v8);
    v32 = 1024;
    v33 = v9;
    v34 = 1024;
    v35 = SHIWORD(v9);
    v36 = 1024;
    v37 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Setting calibration data %d, %d, %d, %d, %d, %d from sensor mode %d", buf, 0x2Cu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E2A120);
    }

    v5 = *(a1 + 64);
    v10 = 67110656;
    v11 = v8;
    v12 = 1024;
    v13 = SWORD1(v8);
    v14 = 1024;
    v15 = SWORD2(v8);
    v16 = 1024;
    v17 = SHIWORD(v8);
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = SHIWORD(v9);
    v22 = 1024;
    v23 = v5;
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV11::chooseOffsetData()", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  sub_19B71913C(a1, &v8);
  v7 = *MEMORY[0x1E69E9840];
}

float sub_19B73888C(float *a1)
{
  v1 = 0;
  v2 = 0.0;
  do
  {
    v2 = v2 + (a1[v1] * a1[v1]);
    ++v1;
  }

  while (v1 != 3);
  v3 = sqrtf(v2);
  if (v3 < 0.001)
  {
    return 0.0;
  }

  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  if ((atomic_load_explicit(&qword_1EAFE3B38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EAFE3B38))
  {
    v11 = sub_19B69A550();
    HIDWORD(v11) = v12;
    qword_1EAFE3B28 = vadd_f32(*&v11, *&v11);
    *&dword_1EAFE3B30 = v13 + v13;
    __cxa_guard_release(&qword_1EAFE3B38);
  }

  v8 = (v7 / v3) * *&dword_1EAFE3B30;
  v9 = (v8 + ((v6 / v3) * *(&qword_1EAFE3B28 + 1))) + ((v5 / v3) * *&qword_1EAFE3B28);
  v10 = 1.0;
  if (v9 <= 1.0)
  {
    v10 = -1.0;
    if (v9 >= -1.0)
    {
      v10 = (v8 + ((v6 / v3) * *(&qword_1EAFE3B28 + 1))) + ((v5 / v3) * *&qword_1EAFE3B28);
    }
  }

  return acosf(v10);
}

uint64_t sub_19B7389C0(uint64_t a1, uint64_t *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x3F80000000000000;
  sub_19B41E130((a1 + 24), 0);
  *(a1 + 40) = xmmword_19B7B7E30;
  sub_19B41E130((a1 + 40), xmmword_19B7B7E30);
  if (a2 != a1)
  {
    v4 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *a1 = v4;
    v5 = *(a2 + 12);
    *(a1 + 20) = *(a2 + 5);
    *(a1 + 12) = v5;
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = *(a2 + 5);
  }

  return a1;
}

void sub_19B738A58(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40) * 1000000.0;
  v5 = v4;
  v6 = *a2;
  v7 = (*a2 < 0xCu) & (6u >> *a2);
  v8 = *a1;
  v9 = 1;
  if (*a1 > 0xBu)
  {
LABEL_4:
    if ((v7 & v9) == 1 && !*(a1 + 16))
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = v5;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v15 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 16);
        *buf = 134349056;
        v47 = v16;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "[RelDM] Activity: detected moving to static. staticStartTime, %{public}llu", buf, 0xCu);
      }

      v17 = sub_19B420058();
      if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
        }

        v41 = *(a1 + 16);
        goto LABEL_35;
      }
    }

    else if (v8 <= 0xB && ((1 << v8) & 0xC06) != 0 && (v8 & 0xFFFFFFFE) != 10 && ((*a2 > 0xBu) | (0xFF8u >> *a2) & 1) != 0)
    {
      *(a1 + 8) = v5;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v10 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 8);
        *buf = 134349056;
        v47 = v11;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "[RelDM] Activity: detected static to moving. movingStartTime, %{public}llu", buf, 0xCu);
      }

      v12 = sub_19B420058();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
        }

        v40 = *(a1 + 8);
LABEL_35:
        v18 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::ActivityState::feedActivity(const CLMotionActivity &)", "CoreLocation: %s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }
    }

    v19 = *a1;
    if (*a2 == 1)
    {
      if (v19 == 1)
      {
        goto LABEL_95;
      }

      *(a1 + 32) = -1;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v20 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v47 = v5;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_INFO, "[RelDM] Activity: entered frozen state, %{public}llu", buf, 0xCu);
      }

      v21 = sub_19B420058();
      if (*(v21 + 160) <= 1 && *(v21 + 164) <= 1 && *(v21 + 168) <= 1 && !*(v21 + 152))
      {
        goto LABEL_61;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 == -1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v19 != 1)
      {
LABEL_62:
        if (v19 == 41 || v19 == 4)
        {
          if (*a2 != 4 && *a2 != 41)
          {
            *(a1 + 24) = v5;
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
            }

            v25 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
            {
              *buf = 134349056;
              v47 = v5;
              _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_INFO, "[RelDM] Activity: walking stopped, %{public}llu", buf, 0xCu);
            }

            v26 = sub_19B420058();
            if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
              }

LABEL_93:
              v31 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::ActivityState::feedActivity(const CLMotionActivity &)", "CoreLocation: %s\n", v31);
              if (v31 != buf)
              {
                free(v31);
              }

              goto LABEL_95;
            }
          }
        }

        else if (*a2 == 41 || *a2 == 4)
        {
          *(a1 + 24) = -1;
        }

        goto LABEL_95;
      }

      *(a1 + 32) = v5;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v22 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v47 = v5;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_INFO, "[RelDM] Activity: exited frozen state, %{public}llu", buf, 0xCu);
      }

      v23 = sub_19B420058();
      if (*(v23 + 160) <= 1 && *(v23 + 164) <= 1 && *(v23 + 168) <= 1 && !*(v23 + 152))
      {
LABEL_61:
        v19 = *a1;
        goto LABEL_62;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 == -1)
      {
LABEL_59:
        v24 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::ActivityState::feedActivity(const CLMotionActivity &)", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }

        goto LABEL_61;
      }
    }

    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    goto LABEL_59;
  }

  if (((1 << v8) & 0xC06) != 0)
  {
    v9 = (v8 & 0xFFFFFFFE) == 10;
    goto LABEL_4;
  }

  if (v8)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    *(a1 + 16) = v5;
    if (v6 != 1)
    {
      goto LABEL_82;
    }

    v13 = -1;
    v14 = 32;
  }

  else
  {
    if (!((*a2 > 0xBu) | (0xFF8u >> *a2) & 1))
    {
      goto LABEL_82;
    }

    v14 = 8;
    v13 = v4;
  }

  *(a1 + v14) = v13;
LABEL_82:
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
  }

  v27 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v28 = CLMotionActivity::activityTypeToString(*a2);
    v29 = *(a2 + 40);
    *buf = 136446466;
    v47 = v28;
    v48 = 2050;
    *v49 = v29;
    _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "[RelDM] Activity: initialize srcMotionState. type %{public}s, timestamp, %{public}f", buf, 0x16u);
  }

  v30 = sub_19B420058();
  if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    CLMotionActivity::activityTypeToString(*a2);
    v42 = *(a2 + 40);
    goto LABEL_93;
  }

LABEL_95:
  *a1 = *a2;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
  }

  v32 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    v33 = CLMotionActivity::activityTypeToString(*a1);
    v34 = *(a1 + 4);
    v36 = *(a1 + 8);
    v35 = *(a1 + 16);
    *buf = 136447234;
    v47 = v33;
    v48 = 1026;
    *v49 = v34;
    *&v49[4] = 2050;
    *&v49[6] = v5;
    v50 = 2050;
    v51 = v35;
    v52 = 2050;
    v53 = v36;
    _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_INFO, "[RelDM] ActivityType, %{public}s, confidence, %{public}d, timestamp, %{public}llu, lastStaticTS, %{public}llu, lastMovingTS, %{public}llu", buf, 0x30u);
  }

  v37 = sub_19B420058();
  if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    CLMotionActivity::activityTypeToString(*a1);
    v43 = *(a1 + 4);
    v44 = *(a1 + 16);
    v45 = *(a1 + 8);
    v38 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::ActivityState::feedActivity(const CLMotionActivity &)", "CoreLocation: %s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

void sub_19B739578(int *a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*a1 <= 0xB)
  {
    if (((1 << v4) & 0xC06) != 0)
    {
      if ((v4 & 0xFFFFFFFE) != 0xA)
      {
        goto LABEL_23;
      }
    }

    else if (!v4)
    {
      goto LABEL_23;
    }
  }

  v5 = *(a1 + 1);
  v7 = a2 >= v5;
  v6 = a2 - v5;
  v7 = v6 != 0 && v7 && v6 >= 0x30D41;
  if (v7 && *(a1 + 2))
  {
    *(a1 + 2) = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 1);
      *buf = 134349312;
      v15 = a2;
      v16 = 2050;
      v17 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "[RelDM] Activity: Reseting static startTime. Curr %{public}llu, lastMoving, %{public}llu", buf, 0x16u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v13 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::ActivityState::feedWatchdogTimestamp(uint64_t)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

LABEL_23:
  v12 = *MEMORY[0x1E69E9840];
}

float sub_19B7397C0(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = 0.0;
  if (v2)
  {
    v5 = a2 >= v2;
    v6 = a2 - v2;
    if (v6 != 0 && v5)
    {
      v3 = v6 * 0.000001;
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v8 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 16);
        *buf = 134349312;
        v16 = a2;
        v17 = 2050;
        v18 = v9;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "[RelDM] Activity:timestamp error: current %{public}llu, lastStatic, %{public}llu", buf, 0x16u);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
        }

        v14 = *(a1 + 16);
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "float CMRelDM::ActivityState::getStaticDuration(uint64_t) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

float sub_19B7399E4(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = 0.0;
  if (v2)
  {
    v5 = a2 >= v2;
    v6 = a2 - v2;
    if (v6 != 0 && v5)
    {
      v3 = v6 * 0.000001;
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v8 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 8);
        *buf = 134349312;
        v16 = a2;
        v17 = 2050;
        v18 = v9;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "[RelDM] Activity:timestamp error: current %{public}llu, lastMoving, %{public}llu", buf, 0x16u);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
        }

        v14 = *(a1 + 8);
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "float CMRelDM::ActivityState::getMovingDuration(uint64_t) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_19B739C08(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  if (v2 && v2 != -1 && a2 <= v2)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 24);
      *buf = 134349312;
      v12 = a2;
      v13 = 2050;
      v14 = v6;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "[RelDM] Activity:timestamp error: current %{public}llu, lastWalkStop, %{public}llu", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v10 = *(a1 + 24);
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CMRelDM::ActivityState::getTimeSinceWalkingStopped(uint64_t) const", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_19B739E38(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && v2 != -1 && a2 <= v2)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 134349312;
      v12 = a2;
      v13 = 2050;
      v14 = v6;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "[RelDM] Activity:timestamp error: current %{public}llu, lastFrozenStopTimestamp, %{public}llu", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v10 = *(a1 + 32);
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CMRelDM::ActivityState::getTimeSinceLastFrozenState(uint64_t) const", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

unint64_t sub_19B73A068(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  ++*a1;
  if (*(a1 + 8) == 0.0)
  {
    v6 = *(a1 + 18);
    if (*(a1 + 18))
    {
      if (v6 > 2)
      {
        memset(__p, 0, 24);
        sub_19B4C50B4(__p, v6);
      }

      v7 = v6 + *(a1 + 16) - 1;
      v8 = *(a1 + 20);
      if (v7 < v8)
      {
        v8 = 0;
      }

      v9 = *(a1 + 8 * (v7 - v8) + 24);
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v10 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "[RelDM][UnTimesyncedAuxSampleHelper] Buffer is empty.", &buf, 2u);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || (v9 = 0, *(v11 + 152)))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
        }

        LOWORD(__p[0]) = 0;
        v12 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "double CMRelDM::UnTimesyncedAuxSampleHelper::getMedianOffset() const", "CoreLocation: %s\n", v12);
        if (v12 != &buf)
        {
          free(v12);
        }

        v9 = 0;
      }
    }

    *(a1 + 8) = v9;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v13 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 8);
      buf = 134217984;
      buf_4 = v14;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[RelDM] Using auxTimeOfArrival. Offset, %f", &buf, 0xCu);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v16 = *(a1 + 8);
      LODWORD(__p[0]) = 134217984;
      *(__p + 4) = v16;
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "uint64_t CMRelDM::UnTimesyncedAuxSampleHelper::constructAuxTimestampFromUntimesyncedAuxSample(uint64_t, uint64_t)", "CoreLocation: %s\n", v17);
      if (v17 != &buf)
      {
        free(v17);
      }
    }
  }

  result = (*(a1 + 8) * 1000000.0) + a2;
  v19 = result - a3;
  if (result > a3)
  {
    ++*(a1 + 4);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v20 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      v21 = *a1;
      v22 = *(a1 + 4);
      buf = 134218496;
      buf_4 = (v19 * 0.001);
      v31 = 1024;
      v32 = v21;
      v33 = 1024;
      v34 = v22;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "[RelDM] fake auxTimestamp is ahead of src, diffMS: %f, totalUnsynced: %u, totalOutlier, %u", &buf, 0x18u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v24 = *a1;
      v25 = *(a1 + 4);
      LODWORD(__p[0]) = 134218496;
      *(__p + 4) = (v19 * 0.001);
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v24;
      WORD1(__p[2]) = 1024;
      HIDWORD(__p[2]) = v25;
      v26 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "uint64_t CMRelDM::UnTimesyncedAuxSampleHelper::constructAuxTimestampFromUntimesyncedAuxSample(uint64_t, uint64_t)", "CoreLocation: %s\n", v26);
      if (v26 != &buf)
      {
        free(v26);
      }
    }

    if (*a1 >= 0x15u && (*a1 * 0.15) < *(a1 + 4))
    {
      sub_19B644550(a1, 0);
    }

    result = a3;
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B73A6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B73A714()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B73A8BC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  __p[3] = a3;
  __p[4] = a4;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v5 < 0x42)
  {
    memset(__p, 0, 24);
    v6 = (v5 - 1) * v5;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (!(v6 >> 62))
    {
      sub_19B4C4FA8(__p, v7);
    }

    sub_19B5BE690();
  }

  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E2A160);
  }

  v8 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "assert";
    v18 = 2081;
    v19 = "n <= 65";
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A160);
    }
  }

  v9 = qword_1ED71C818;
  if (os_signpost_enabled(qword_1ED71C818))
  {
    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "assert";
    v18 = 2081;
    v19 = "n <= 65";
    _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A160);
    }
  }

  v10 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
  {
    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "assert";
    v18 = 2081;
    v19 = "n <= 65";
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  __break(1u);
}

void sub_19B73B060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B73B1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B73B20C(uint64_t a1, CLConnectionMessage **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a2 && (Dictionary = CLConnectionMessage::getDictionary(*a2)) != 0 && (v4 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v3, @"CMErrorMessage")) != 0)
  {
    v7 = objc_msgSend_intValue(v4, v5, v6);
  }

  else
  {
    v7 = 103;
  }

  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
  }

  v8 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v13 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "CMWorkoutMets, Failed with CMError code %{public}d", buf, 8u);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutMetsInternal init]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B73B3F8(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
    }

    v6 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_UTF8String(v5, v7, v8);
      v10 = getpid();
      v11 = *(a1 + 32);
      *buf = 136446722;
      v19 = v9;
      v20 = 1026;
      v21 = v10;
      v22 = 2050;
      v23 = v11;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMWorkoutMets, Client connection interrupt, %{public}s, %{public}d, %{public}p", buf, 0x1Cu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
      }

      objc_msgSend_UTF8String(v5, v13, v14);
      getpid();
      v17 = *(a1 + 32);
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutMetsInternal init]_block_invoke", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B73B914(uint64_t a1, const char *a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    v7 = @"CMWorkoutSessionIdKey";
    v8[0] = v3;
    block[5] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v8, &v7, 1);
    sub_19B686A4C();
  }

  v4 = objc_msgSend_copy(*(a1 + 48), a2, a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B73BAD8;
  block[3] = &unk_1E7532B40;
  block[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B73BAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B73BAD8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 107, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B73BB3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_copy(*(a1 + 32), a2, a3);
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v9, v6, v7, v8, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10)) != 0)
  {
    v13 = DictionaryOfClasses;
    v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMErrorMessage");
    v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"CMWorkoutMetsQueryResult");
    if (v14)
    {
      v17 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_19B73BF24;
      v25[3] = &unk_1E7532B90;
      v25[5] = v4;
      v4 = v14;
    }

    else if (v16)
    {
      v17 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_19B73BF9C;
      v24[3] = &unk_1E7532B90;
      v24[5] = v4;
      v4 = v16;
    }

    else
    {
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
      }

      v19 = qword_1EAFE2830;
      if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageWorkoutMetsQuery message.", buf, 2u);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2808 != -1)
        {
          dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
        }

        v23 = 0;
        v21 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutMetsInternal _queryWorkoutMetsWithSessionId:handler:]_block_invoke", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      v17 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_19B73BFB4;
      v22[3] = &unk_1E7532B40;
    }
  }

  else
  {
    v17 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B73BEC0;
    block[3] = &unk_1E7532B40;
  }

  v17[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B73BEC0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B73BF24(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B73BFB4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B73C288(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D640 = result;
  return result;
}

os_log_t sub_19B73C2C0()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

uint64_t sub_19B73C2F0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *a1 = 1;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0x1900000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0x7FC0000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
  }

  v2 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "Constructing CMTNBDoTEstimatorBase.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMTNBDoTEstimatorBase::CMTNBDoTEstimatorBase()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B73C4DC(_Unwind_Exception *exception_object)
{
  v3 = 0;
  v4 = v1 + 176;
  while (1)
  {
    v5 = *(v4 + v3);
    *(v4 + v3) = 0;
    if (v5)
    {
      MEMORY[0x19EAE76F0](v5, 0x1000C40FF89C88ELL);
    }

    v3 -= 8;
    if (v3 == -16)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_19B73C524(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 68);
  if (v3 == 1)
  {
    v5 = atan2f(*(a2 + 48), *(a2 + 44));
    v6 = (v5 + 1.5708) + floor(((v5 + 1.5708) + 3.14159265) / 6.28318531) * -6.28318531;
    v37 = v6;
    if (*(a1 + 30))
    {
      v7 = *(a1 + 30) + *(a1 + 28) - 1;
      v8 = *(a1 + 32);
      if (v7 < v8)
      {
        v8 = 0;
      }

      v9 = *(a1 + 4 * (v7 - v8) + 36);
      v10 = (v6 - v9);
      if (v10 <= 3.14159265)
      {
        if (v10 < -3.14159265)
        {
          v10 = v10 + 6.28318531;
        }
      }

      else
      {
        v10 = v10 + -6.28318531;
      }

      v11 = v10;
      v37 = v9 + v11;
    }

    sub_19B5BC034(a1, &v37);
    v12 = __sincosf_stret(v37);
    *(a1 + 136) = v12.__cosval;
    *(a1 + 140) = v12.__sinval;
    v13 = *(a2 + 72);
    v14 = *(a1 + 144);
    if (*a1 == 1)
    {
      sub_19B5BE7E0(a1);
    }

    v15 = *(a1 + 8);
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v16 = sqrtf(v15);
    if (v16 <= 2.0944)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 2.0944 / v16;
    }

    if (v13 - v14 > 1.75)
    {
      v17 = exp((v13 - v14 + -1.75) * -0.5) * v17;
    }

    *(a1 + 156) = v17;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v18 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 144);
      *buf = 134218240;
      v49 = v13;
      v50 = 2048;
      v51 = v19;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "[CMTNBDoTEstimatorBase] timestamp, %.4f, timeOfLastStep, %.4f\n", buf, 0x16u);
    }

    v20 = sub_19B420058();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
      }

      v21 = *(a1 + 144);
      v38 = 134218240;
      v39 = v13;
      v40 = 2048;
      v41 = v21;
      v22 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMTNBDoTEstimatorBase::TNBDoT CMTNBDoTEstimatorBase::directionFromTNB(const CMPdrInputs &)", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    v23 = *(a1 + 144);
    v24 = sub_19B5C0034((a1 + 28), sub_19B5C0258, 0);
    v25 = sub_19B5C0034((a1 + 28), sub_19B5C024C, 0);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v26 = v13 - v23;
    v27 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      if (*a1 == 1)
      {
        sub_19B5BE7E0(a1);
      }

      v28 = *(a1 + 8);
      if (v28 < 0.0)
      {
        v28 = 0.0;
      }

      v29 = *(a1 + 156);
      *buf = 134219008;
      v49 = (sqrtf(v28) * 57.296);
      v50 = 2048;
      v51 = (v24 * 57.296);
      v52 = 2048;
      v53 = (v25 * 57.296);
      v54 = 2048;
      v55 = v26;
      v56 = 2048;
      v57 = v29;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEBUG, "[CMTNBDoTEstimatorBase] Sway std %f, min, %f, max, %f, timeSinceStep, %f, quality, %.2f\n", buf, 0x34u);
    }

    v30 = sub_19B420058();
    if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
      }

      if (*a1 == 1)
      {
        sub_19B5BE7E0(a1);
      }

      v31 = *(a1 + 8);
      if (v31 < 0.0)
      {
        v31 = 0.0;
      }

      v38 = 134219008;
      v32 = *(a1 + 156);
      v39 = (sqrtf(v31) * 57.296);
      v40 = 2048;
      v41 = (v24 * 57.296);
      v42 = 2048;
      v43 = (v25 * 57.296);
      v44 = 2048;
      v45 = v26;
      v46 = 2048;
      v47 = v32;
      v33 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMTNBDoTEstimatorBase::printDebugInfo(double) const", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    v3 = *(a2 + 68);
  }

  result = *(a1 + 136);
  v35 = *MEMORY[0x1E69E9840];
  v36 = *(a1 + 156) | (v3 << 32);
  return result;
}

double sub_19B73CB1C(uint64_t a1, double a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 160);
  v3 = *(a1 + 144);
  *(a1 + 152) = 0;
  result = v2 * 0.5 + a2;
  *(a1 + 144) = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B73CDFC(uint64_t a1, float *a2)
{
  v4 = 0;
  v6 = *a2;
  v5 = a2[1];
  v7 = a1 + 168;
  v8 = 1;
  v9 = 1;
  do
  {
    v10 = v8;
    v11 = *(v7 + 8 * v4);
    v12 = sub_19B6E4AE4(a2, v4);
    v13 = sub_19B5BE1A8(v11, v12);
    v8 = 0;
    v9 &= v13;
    v4 = 1;
  }

  while ((v10 & 1) != 0);
  if (v9)
  {
    v14 = *(*(a1 + 168) + 4 * *(*(a1 + 168) + 8) + 16);
    v15 = *(*(a1 + 176) + 4 * *(*(a1 + 176) + 8) + 16);
  }

  else
  {
    v14 = v6;
    v15 = v5;
  }

  return v14 / sqrtf((v15 * v15) + (v14 * v14));
}

unsigned __int16 *sub_19B73CEB8(unsigned __int16 *result, float a2, float a3, float a4, double a5)
{
  v8 = result;
  v13 = a2;
  v11 = 0.0;
  v12 = 0.0;
  *(result + 200) = 0;
  if (a5 - *result >= 0.5)
  {
    v9 = (a3 - *(result + 48)) + floor(((a3 - *(result + 48)) + 3.14159265) / 6.28318531) * -6.28318531;
    v10 = (a4 - *(result + 49)) + floor(((a4 - *(result + 49)) + 3.14159265) / 6.28318531) * -6.28318531;
    v11 = v10;
    v12 = v9;
    *(result + 200) = 1;
    sub_19B5BC034((result + 36), &v11);
    sub_19B5BC034((v8 + 6), &v12);
    result = sub_19B5BC034((v8 + 66), &v13);
    *(v8 + 48) = a3;
    *(v8 + 49) = a4;
    *v8 = a5;
  }

  return result;
}

BOOL sub_19B73CFB0(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(a1 + 200) != 1 || *(a1 + 44) != *(a1 + 42) || sub_19B5C0034((a1 + 160), sub_19B5C0258, 0) <= 0.0)
  {
    v21 = *(a1 + 160) + *(a1 + 162) - 1;
    v22 = *(a1 + 164);
    if (v21 < v22)
    {
      v22 = 0;
    }

    if (*(a1 + 4 * (v21 - v22) + 168) == 0.0)
    {
      v23 = *(a1 + 204);
      v24 = __OFSUB__(v23, 1);
      v25 = v23 - 1;
      if (v25 < 0 == v24)
      {
        v14 = 0;
        *(a1 + 204) = v25;
        goto LABEL_73;
      }
    }

    goto LABEL_72;
  }

  if (*(a1 + 12) == 1)
  {
    sub_19B5BE7E0(a1 + 12);
  }

  v2 = *(a1 + 20);
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  v3 = sqrtf(v2);
  v4 = *(a1 + 24) + floor((*(a1 + 24) + 3.14159265) / 6.28318531) * -6.28318531;
  if (v4 <= 0.0)
  {
    v5 = -v4;
  }

  else
  {
    v5 = v4;
  }

  if (v3 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (v6 >= 0.2618)
  {
    goto LABEL_72;
  }

  if (*(a1 + 72) == 1)
  {
    sub_19B5BE7E0(a1 + 72);
  }

  v7 = *(a1 + 80);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = *(a1 + 84) + floor((*(a1 + 84) + 3.14159265) / 6.28318531) * -6.28318531;
  if (v8 <= 0.0)
  {
    v9 = -v8;
  }

  else
  {
    v9 = v8;
  }

  if (qword_1EAFE2A58 != -1)
  {
    v31 = v7;
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    v7 = v31;
  }

  v10 = qword_1EAFE2A60;
  v11 = sqrtf(v7);
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v34 = (v11 * 57.296);
    v35 = 2048;
    v36 = (v9 * 57.296);
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMTNBDoTEstimatorBase::AnomalySteppingDetect] dotStd, %.2f, dotDeltaSum, %.2f", buf, 0x16u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL AnomalySteppingDetect::checkForAnomaly()", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = v9 > 1.1345 || v11 > 0.87266;
  v15 = *(a1 + 204);
  if (v14)
  {
    *(a1 + 204) = v15 + 1;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v16 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 204);
      *buf = 134219008;
      v34 = (v3 * 57.296);
      v35 = 2048;
      v36 = (v5 * 57.296);
      v37 = 2048;
      v38 = (v11 * 57.296);
      v39 = 2048;
      v40 = (v9 * 57.296);
      v41 = 1024;
      v42 = v17;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "[CMTNBDoTEstimatorBase::AnomalySteppingDetect] headingStd, %.2f, headingDelta, %.2f, dotStd, %.2f, dotDelta, %.2f, count, %d", buf, 0x30u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
      }

      v32 = *(a1 + 204);
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL AnomalySteppingDetect::checkForAnomaly()", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v20 = *(a1 + 204);
    goto LABEL_58;
  }

  v24 = __OFSUB__(v15, 1);
  v20 = v15 - 1;
  if (v20 < 0 != v24)
  {
LABEL_72:
    v14 = 0;
    goto LABEL_73;
  }

  *(a1 + 204) = v20;
LABEL_58:
  if (v20 >= 4)
  {
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v26 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "[CMTNBDoTEstimatorBase::AnomalySteppingDetect] TNB degenerate scenario detected! Switch to heading.", buf, 2u);
    }

    v27 = sub_19B420058();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
      }

      v28 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL AnomalySteppingDetect::checkForAnomaly()", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    *(a1 + 8) = 1;
  }

LABEL_73:
  v29 = *MEMORY[0x1E69E9840];
  return v14;
}

os_log_t sub_19B73D6D0()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

uint64_t sub_19B73E2C8(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_pauseDeviceMotionStreamingPrivate(*(a1 + 32), a2, a3);
  v6 = *(a1 + 32);

  return objc_msgSend_pauseStatusStreamingPrivate(v6, v4, v5);
}

uint64_t sub_19B73E358()
{
  if (sub_19B43B6EC() & 1) != 0 || (sub_19B4426E4() & 1) != 0 || (sub_19B4215D8())
  {
    result = 1;
  }

  else
  {
    result = objc_msgSend_isMotionActivityEntitled(CMMotionUtils, v0, v1);
  }

  byte_1ED71D650 = result;
  return result;
}

void sub_19B73E438(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 8) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B73E4B0;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

__n128 sub_19B73E53C(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 32) + 8) + 8);
  block[1] = 3221225472;
  block[2] = sub_19B73E5C4;
  block[3] = &unk_1E7532C08;
  v5 = v1;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
  return result;
}

void sub_19B73E64C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 8) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B73E6C4;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void sub_19B73EA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_19B73EA98(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = MEMORY[0x1E696ACD0];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v5, v9, v6, v7, v8, 0);
    v12 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v4, v11, v10, a2, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      Weak = objc_loadWeak((v3 + 32));

      return MEMORY[0x1EEE66B58](Weak, sel_onDeviceMotionPrivate_, v12);
    }

    else
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        v14 = objc_loadWeak((v3 + 32));

        return MEMORY[0x1EEE66B58](v14, sel_onStatusEventPrivate_, v12);
      }
    }
  }

  return result;
}

uint64_t sub_19B73ECE0(uint64_t a1, const char *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = @"logTimestamp";
  v3 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *(a1 + 32));
  v15[1] = @"timeBetweenDeviceConnectAndFirstValidDeviceMotion";
  v16[0] = v3;
  v16[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, *(a1 + 40));
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v16, v15, 2);
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
  }

  v8 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v14 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "[CMHeadphoneMotionManager] Sending analytics: \n%{private}@", buf, 0xCu);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneMotionManager pauseDeviceMotionStreamingPrivate]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_19B73EFBC(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 138477827;
    v11 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CMHeadphoneMotionManager] deviceMotion: %{private}@", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
    }

    v9 = *(a1 + 32);
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneMotionManager onDeviceMotionPrivate:]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B73F638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_19B73F654(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = MEMORY[0x1E696ACD0];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v9 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
    v11 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v4, v10, v9, a2, 0);
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      Weak = objc_loadWeak((v3 + 32));

      return MEMORY[0x1EEE66B58](Weak, sel_onStatusEventPrivate_, v11);
    }
  }

  return result;
}

uint64_t sub_19B73FAE0(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(*(*(result + 32) + 8) + 42) & 1) == 0)
  {
    v1 = result;
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
    }

    v2 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CMHeadphoneMotionManager] Device connected", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneMotionManager notifyDeviceConnectedEventToClientPrivate]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    *(*(*(v1 + 32) + 8) + 42) = 1;
    objc_loadWeak((*(v1 + 32) + 16));
    result = objc_opt_respondsToSelector();
    if (result)
    {
      Weak = objc_loadWeak((*(v1 + 32) + 16));
      result = objc_msgSend_headphoneMotionManagerDidConnect_(Weak, v6, *(v1 + 32));
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B73FD5C(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 32) + 8) + 42) == 1)
  {
    v1 = result;
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
    }

    v2 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CMHeadphoneMotionManager] Device disconnected", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneMotionManager notifyDeviceDisconnectedEventToClientPrivate]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    *(*(*(v1 + 32) + 8) + 42) = 0;
    objc_loadWeak((*(v1 + 32) + 16));
    result = objc_opt_respondsToSelector();
    if (result)
    {
      Weak = objc_loadWeak((*(v1 + 32) + 16));
      result = objc_msgSend_headphoneMotionManagerDidDisconnect_(Weak, v6, *(v1 + 32));
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B73FF78(float *a1, int a2)
{
  v3 = (&unk_19B7BD41C + 20 * *a1);
  v4 = a1[5];
  if (v4 >= 18.0)
  {
    v5 = (((*v3 + ((v3[2] * a1[2]) * 100.0)) + (v3[1] * a1[3])) + (v3[3] * v4)) / (a1[3] * 24.0);
  }

  else
  {
    v5 = ((((*v3 + ((v3[2] * a1[2]) * 100.0)) + (v3[1] * a1[3])) + (v3[3] * v4)) / (a1[3] * 24.0)) + 0.001;
  }

  sub_19B421798();
  v6 = fminf(v5, 2.1);
  if (v6 > 1.3)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  if (!v7)
  {
    v6 = 1.3;
  }

  return fmaxf(v6, 0.0);
}

void *sub_19B740058(void *a1)
{
  *a1 = &unk_1F0E317E8;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, a1);
  if (*(a1 + 151) < 0)
  {
    operator delete(a1[16]);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(a1[13]);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(a1[10]);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(a1[7]);
  }

  sub_19B5F4684((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return a1;
}

uint64_t sub_19B740104()
{
  v0 = objc_opt_new();
  qword_1ED71D660 = v0;

  return objc_msgSend_setDateFormat_(v0, v1, @"yyyy-MM-dd_HH-mm-ss");
}

void sub_19B740144(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71D670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D670))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71D6A0, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71D670);
  }

  if (qword_1ED71D678 != -1)
  {
    dispatch_once(&qword_1ED71D678, &unk_1F0E27D40);
  }

  if (byte_1ED71D6B7 < 0)
  {
    v2 = xmmword_1ED71D6A0;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71D6A0;
    *(a1 + 16) = unk_1ED71D6B0;
  }
}

void sub_19B740244(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71D680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D680))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71D6B8, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71D680);
  }

  if (qword_1ED71D688 != -1)
  {
    dispatch_once(&qword_1ED71D688, &unk_1F0E28B60);
  }

  if (byte_1ED71D6CF < 0)
  {
    v2 = xmmword_1ED71D6B8;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71D6B8;
    *(a1 + 16) = unk_1ED71D6C8;
  }
}

void sub_19B74032C()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_19B428B50(v11, "mobile");
  sub_19B432230(v11, __p);
  if (v14 >= 0)
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p);
  }

  else
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p[0]);
  }

  v4 = v2;
  v5 = objc_msgSend_componentsJoinedByString_(&unk_1F0E6A1D0, v3, @"/");
  v7 = objc_msgSend_stringByAppendingPathComponent_(v4, v6, v5);
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  sub_19B43212C(&xmmword_1ED71D6B8, v10);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_19B7403E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B74041C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71D690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D690))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71D6D0, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71D690);
  }

  if (qword_1ED71D698 != -1)
  {
    dispatch_once(&qword_1ED71D698, &unk_1F0E28580);
  }

  if (byte_1ED71D6E7 < 0)
  {
    v2 = xmmword_1ED71D6D0;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71D6D0;
    *(a1 + 16) = unk_1ED71D6E0;
  }
}

void sub_19B740504()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_19B428B50(v11, "mobile");
  sub_19B432230(v11, __p);
  if (v14 >= 0)
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p);
  }

  else
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p[0]);
  }

  v4 = v2;
  v5 = objc_msgSend_componentsJoinedByString_(&unk_1F0E6A1E8, v3, @"/");
  v7 = objc_msgSend_stringByAppendingPathComponent_(v4, v6, v5);
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  sub_19B43212C(&xmmword_1ED71D6D0, v10);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_19B7405C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B7405F4(const void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, std::string *a5@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = &v35;
  sub_19B50FF5C(&v35, v10 + 1);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v35.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a1 + 23) >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v35, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v36, "_", 1uLL);
  v20 = *&v18->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v20;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (qword_1ED71D668 != -1)
  {
    dispatch_once(&qword_1ED71D668, &unk_1F0E2A1E0);
  }

  v21 = objc_msgSend_stringFromDate_(qword_1ED71D660, v19, a4);
  v24 = objc_msgSend_UTF8String(v21, v22, v23);
  sub_19B428B50(__p, v24);
  if ((v34 & 0x80u) == 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v26 = v34;
  }

  else
  {
    v26 = __p[1];
  }

  v27 = std::string::append(&v37, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = *(a3 + 23);
  if (v29 >= 0)
  {
    v30 = a3;
  }

  else
  {
    v30 = *a3;
  }

  if (v29 >= 0)
  {
    v31 = *(a3 + 23);
  }

  else
  {
    v31 = *(a3 + 8);
  }

  v32 = std::string::append(&v38, v30, v31);
  *a5 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void sub_19B740814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B740890(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  sub_19B740144(v9);
  if (v10 >= 0)
  {
    v8 = v9;
  }

  else
  {
    v8 = v9[0];
  }

  sub_19B428B50(__p, v8);
  sub_19B7405F4(__p, a2, a1 + 104, a3, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_19B740930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B740964(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_19B74041C(v8);
  if (v9 >= 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = v8[0];
  }

  sub_19B428B50(__p, v4);
  v7 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
  sub_19B7405F4(__p, a1 + 80, a1 + 104, v7, a2);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_19B740A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B740A40(uint64_t a1, char **a2, char *a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  v5 = a3[23];
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = a3[23];
  }

  else
  {
    v7 = *(a3 + 1);
  }

  if (!v7)
  {
    return 1;
  }

  v8 = &v3[v4];
  if (v3 >= v7)
  {
    v12 = *v6;
    v13 = v4;
    do
    {
      v14 = &v3[-v7];
      if (v14 == -1)
      {
        break;
      }

      v15 = memchr(v13, v12, (v14 + 1));
      if (!v15)
      {
        break;
      }

      v9 = v15;
      if (!memcmp(v15, v6, v7))
      {
        return v9 != v8 && v9 == v4;
      }

      v13 = v9 + 1;
      v3 = (v8 - (v9 + 1));
    }

    while (v3 >= v7);
  }

  v9 = v8;
  return v9 != v8 && v9 == v4;
}

BOOL sub_19B740B0C(uint64_t a1, uint64_t *a2, char *a3)
{
  v3 = *(a2 + 23);
  v4 = a3[23];
  if (v4 >= 0)
  {
    v5 = a3[23];
  }

  else
  {
    v5 = *(a3 + 1);
  }

  if (v4 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v3 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v3 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = v7 == v5;
  v10 = v7 - v9;
  if (v7 < v9)
  {
    return 1;
  }

  if (v5)
  {
    if (v10 >= v5)
    {
      v12 = (v8 + v7);
      v13 = (v8 + v9);
      v14 = *v6;
      while (1)
      {
        v15 = v10 - v5;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        if (!memcmp(v16, v6, v5))
        {
          if (v17 == v12)
          {
            return 1;
          }

          v9 = &v17[-v8];
          return v9 != 0;
        }

        v13 = v17 + 1;
        v10 = v12 - (v17 + 1);
        if (v10 < v5)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  return v9 != 0;
}

void sub_19B740BEC(uint64_t a1, uint64_t a2, char a3, unint64_t a4, float a5, float a6)
{
  v38 = *MEMORY[0x1E69E9840];
  *(a1 + 12) = 0;
  v7 = *(a1 + 24);
  if (a4 >= v7)
  {
    v8 = (a4 - v7) * 0.000001;
  }

  else
  {
    v8 = 0.0;
  }

  if (*a1 == 1)
  {
    v9 = 1.5;
    if (*(a1 + 1) == 1)
    {
      v9 = *(a1 + 4);
    }

    v11 = v9 >= v8 || *(a1 + 16) != 1;
LABEL_13:
    *a1 = v11;
    goto LABEL_42;
  }

  if (*(a1 + 16) == 1)
  {
    goto LABEL_42;
  }

  if (a3)
  {
    if (*(a1 + 1) == 1)
    {
      if (v8 <= *(a1 + 8))
      {
        goto LABEL_42;
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
      }

      v12 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] Requesting anchor periodically.", buf, 2u);
      }

      v13 = sub_19B420058();
      if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
        }

        v14 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMCameraController::updateCameraRequest(const CMBleedToZero &, BOOL, float, float, uint64_t)", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      v11 = 1;
      goto LABEL_13;
    }

    v19 = *(a2 + 80);
    v20 = a5;
    if (v8 <= v20)
    {
      v20 = v8;
    }

    if (v20 > 12.0 && v19 < 12.0)
    {
      *a1 = 1;
      *(a1 + 12) = 1;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
      }

      v28 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] Request anchor after long moving duration.", buf, 2u);
      }

      v29 = sub_19B420058();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 == -1)
        {
LABEL_40:
          v17 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMCameraController::updateCameraRequest(const CMBleedToZero &, BOOL, float, float, uint64_t)", "CoreLocation: %s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }

          goto LABEL_42;
        }

LABEL_78:
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
        goto LABEL_40;
      }
    }

    else
    {
      if (v8 <= 5.0 || (*(a2 + 41) & 1) == 0 || v19 <= 1.0)
      {
        *a1 = 0;
        goto LABEL_42;
      }

      v22 = v19;
      v23 = a6;
      if (v8 <= a6)
      {
        v24 = v8;
      }

      else
      {
        v24 = a6;
      }

      v25 = v8 > 17.5;
      *(a1 + 13) = v8 > 17.5;
      if (v24 > v22)
      {
        v25 = 1;
      }

      *a1 = v25;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
      }

      v26 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109888;
        v31 = v24 > v22;
        v32 = 2048;
        v33 = v23;
        v34 = 1024;
        v35 = v8 > 17.5;
        v36 = 2048;
        v37 = v22;
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] hasMovementSinceLastAnchorOrRequest, %d, timeSinceLastConsumedCamAnchor, %.3f, reachedExtendedDutyCycleStatic, %d, staticPoseDurationAfterDisturbance, %.3f", buf, 0x22u);
      }

      v27 = sub_19B420058();
      if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 == -1)
        {
          goto LABEL_40;
        }

        goto LABEL_78;
      }
    }
  }

  else
  {
    *a1 = 1;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
    }

    v15 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] Requesting anchor on initialization.", buf, 2u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 == -1)
      {
        goto LABEL_40;
      }

      goto LABEL_78;
    }
  }

LABEL_42:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_19B741280(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  v6 = (a3 - v5) * 0.000001;
  if (a3 < v5)
  {
    v6 = 0.0;
  }

  if (*a1 == 1)
  {
    v7 = 1.5;
    if (*(a1 + 1) == 1)
    {
      v7 = *(a1 + 4);
    }

    v9 = v7 >= v6 || *(a1 + 16) != 1;
LABEL_12:
    *a1 = v9;
    goto LABEL_14;
  }

  if (*(a1 + 16) == 1)
  {
    goto LABEL_14;
  }

  if (*(a1 + 1) == 1)
  {
    if (v6 <= *(a1 + 8))
    {
      goto LABEL_14;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
    }

    v11 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] Requesting anchor periodically during DV.", buf, 2u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMCameraController::updateCameraRequestDV(uint64_t, uint64_t, BOOL)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v9 = 1;
    goto LABEL_12;
  }

  if (!a4)
  {
    v17 = a3 <= a2 || a2 == 0;
    v18 = (a3 - a2) * 0.000001;
    if (v17)
    {
      v18 = 0.0;
    }

    v9 = v6 > v18 && v18 > 1.0;
    goto LABEL_12;
  }

  *a1 = 0;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
  }

  v14 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] Not requesting anchor during DV because of walking detection.", buf, 2u);
  }

  v15 = sub_19B420058();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMCameraController::updateCameraRequestDV(uint64_t, uint64_t, BOOL)", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B74164C()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

double sub_19B74167C()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v149 = *MEMORY[0x1E69E9840];
  LODWORD(v146) = sub_19B66BFF4(v3 + 4, v6);
  HIDWORD(v146) = v7;
  v147 = v8;
  v148 = v9;
  v10.f32[0] = sub_19B66C1A4(&v146, -v4[2].f32[1], -v4[3].f32[0], -v4[3].f32[1]);
  v13 = *(v5 + 42);
  if (*(v5 + 42))
  {
    v14 = *(v5 + 40);
    v15 = v13 + v14 - 1;
    v16 = *(v5 + 44);
    if (v15 >= v16)
    {
      v17 = *(v5 + 44);
    }

    else
    {
      v17 = 0;
    }

    v18 = (v5 + 24 * (v15 - v17));
    v19 = v18[7];
    v20 = v18[8].f32[0];
  }

  else
  {
    v16 = *(v5 + 44);
    v14 = *(v5 + 40);
    v19 = 0;
    v20 = 0.0;
  }

  v10.i32[1] = v11;
  v21 = vadd_f32(v10, v19);
  v22 = v14 + v13;
  if (v22 >= v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v5 + 24 * (v22 - v23));
  v24[6] = *v4;
  v24[7] = v21;
  v24[8].f32[0] = v12 + v20;
  v25 = *(v5 + 42);
  if (v16 <= v25)
  {
    v26 = *(v5 + 40) + 1;
    if (v26 < v16)
    {
      LOWORD(v16) = 0;
    }

    *(v5 + 40) = v26 - v16;
  }

  else
  {
    LOWORD(v25) = v25 + 1;
    *(v5 + 42) = v25;
  }

  v27 = v2[1];
  if (v27 > 0.0)
  {
    v28 = *v2;
    if (vabdd_f64(v27, *(v5 + 8)) > 0.0001 && v28 < v27)
    {
      *(v5 + 8) = v27;
      v146 = 0xC800000000;
      if (v25)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0.0;
        do
        {
          v33 = *sub_19B742188((v5 + 40), v30);
          v34 = *sub_19B742188((v5 + 40), v30);
          if (v28 <= v33 && v34 <= v27)
          {
            v36 = sub_19B742188((v5 + 40), v30);
            sub_19B5BE720(&v146, v36 + 8);
            v37 = sub_19B742188((v5 + 40), v30);
            v31 = vadd_f32(v31, v37[1]);
            v32 = v32 + v37[2].f32[0];
          }

          ++v30;
        }

        while (v30 < *(v5 + 42));
        *v131 = 0;
        v38.i32[1] = 0;
        memset(v130, 0, sizeof(v130));
        if (WORD1(v146))
        {
          v39 = 0;
          *v38.i32 = WORD1(v146);
          v40 = vdiv_f32(v31, vdup_lane_s32(v38, 0));
          v41 = v32 / *v38.i32;
          do
          {
            v42 = sub_19B5BEC4C(&v146, v39);
            v43 = v42[1].f32[0] - v41;
            v117 = vsub_f32(*v42, v40);
            v118 = v43;
            sub_19B5DB70C(&v117, buf);
            for (i = 0; i != 9; ++i)
            {
              *(v130 + i) = sub_19B5DB794(buf, i) + *(v130 + i);
            }

            ++v39;
          }

          while (v39 < WORD1(v146));
        }
      }

      else
      {
        *v131 = 0;
        memset(v130, 0, sizeof(v130));
      }

      *buf = v130[0];
      *&buf[16] = v130[1];
      *v139 = *v131;
      v117.i32[0] = sub_19B5DB98C(buf, &v119);
      v117.i32[1] = v45;
      v118 = v46;
      *buf = &v117;
      *&buf[8] = &v119;
      sub_19B5DBFAC(buf, 0, 1uLL);
      sub_19B5DBFAC(buf, 0, 2uLL);
      sub_19B5DBFAC(buf, 1uLL, 2uLL);
      v47 = v124;
      v48 = *v125;
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A220);
      }

      v49 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
      {
        v50 = *v4;
        *buf = 134219520;
        *&buf[4] = v50;
        *&buf[12] = 2048;
        *&buf[14] = v28;
        *&buf[22] = 2048;
        *&buf[24] = v27;
        *v139 = 2048;
        *&v139[2] = WORD1(v146);
        v140 = 2048;
        v141 = *&v47;
        v142 = 2048;
        v143 = *(&v47 + 1);
        v144 = 2048;
        v145 = v48;
        _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_DEBUG, "[CMPdr] pdrdir,time,%f,startImpulse,%f,endImpulse,%f,velBufferSize,%zu,planeNormal,%f,%f,%f\n", buf, 0x48u);
      }

      v51 = sub_19B420058();
      if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A220);
        }

        v52 = *v4;
        LODWORD(v130[0]) = 134219520;
        *(v130 + 4) = v52;
        WORD6(v130[0]) = 2048;
        *(v130 + 14) = v28;
        WORD3(v130[1]) = 2048;
        *(&v130[1] + 1) = v27;
        *v131 = 2048;
        *&v131[2] = WORD1(v146);
        v132 = 2048;
        v133 = *&v47;
        v134 = 2048;
        v135 = *(&v47 + 1);
        v136 = 2048;
        v137 = v48;
        v115 = 72;
        v53 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "Pdr::PdrOutput CMPdrDirectionality::feedImuData(const AccessoryActivity::ImuData *const, const CMAccessoryStepDetector::Impulse *const)", "CoreLocation: %s\n", v53);
        if (v53 != buf)
        {
          free(v53);
        }
      }

      *&v130[0] = 0x3200000000;
      if (WORD1(v146))
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        do
        {
          v57 = *sub_19B5BEC4C(&v146, v56);
          v58 = *(sub_19B5BEC4C(&v146, v56) + 4);
          v59 = (((*&v47 * v58) + (v57 * *(&v47 + 1))) + (*(sub_19B5BEC4C(&v146, v56) + 8) * 0.0));
          v60 = v55 + v54;
          if (v60 >= 0x32)
          {
            v61 = -392;
          }

          else
          {
            v61 = 8;
          }

          *(v130 + 8 * v60 + v61) = v59;
          if (v55 > 0x31)
          {
            if (v54 >= 0x31u)
            {
              v62 = -50;
            }

            else
            {
              v62 = 0;
            }

            v63 = v54 + v62;
            v54 = v63 + 1;
            LOWORD(v130[0]) = v63 + 1;
          }

          else
          {
            WORD1(v130[0]) = ++v55;
          }

          ++v56;
        }

        while (v56 < WORD1(v146));
      }

      v64 = sub_19B7423A4(v130, sub_19B7425BC);
      *v65.i64 = sub_19B7423A4(v130, sub_19B7425C8);
      if (WORD1(v130[0]))
      {
        v67 = 0;
        v68 = (v64 + *v65.i64) * 0.5;
        do
        {
          v69 = *sub_19B5D6C98(v130, v67);
          *sub_19B5D6C98(v130, v67++) = v69 - v68;
        }

        while (v67 < WORD1(v130[0]));
        v70 = WORD1(v130[0]) - 1;
      }

      else
      {
        v70 = -1;
      }

      v71 = *(v130 + LOWORD(v130[0]) + 1);
      v72 = v70 + LOWORD(v130[0]);
      v73 = DWORD1(v130[0]);
      if (v72 < DWORD1(v130[0]))
      {
        v73 = 0;
      }

      if (((*(v130 + v72 - v73 + 1) ^ *(v130 + LOWORD(v130[0]) + 1)) & 0x8000000000000000) != 0)
      {
        v74 = sub_19B7423A4(v130, sub_19B7425BC);
        v75 = *(v130 + LOWORD(v130[0]) + 1);
        v76 = sub_19B7423A4(v130, sub_19B7425C8);
        v77 = vabdd_f64(v71, v74);
        v78 = vabdd_f64(v75, v76);
        if (v78 >= v77)
        {
          v79 = v77;
        }

        else
        {
          v79 = v78;
        }

        v80 = LOWORD(v130[0]) + WORD1(v130[0]) - 1;
        v81 = DWORD1(v130[0]);
        if (v80 < DWORD1(v130[0]))
        {
          v81 = 0;
        }

        v82 = *(v130 + v80 - v81 + 1);
        v83 = sub_19B7423A4(v130, sub_19B7425BC);
        v84 = LOWORD(v130[0]) + WORD1(v130[0]) - 1;
        v85 = DWORD1(v130[0]);
        if (v84 < DWORD1(v130[0]))
        {
          v85 = 0;
        }

        v86 = *(v130 + v84 - v85 + 1);
        *v65.i64 = sub_19B7423A4(v130, sub_19B7425C8);
        v87 = vabdd_f64(v82, v83);
        *v65.i64 = vabdd_f64(v86, *v65.i64);
        if (*v65.i64 < v87)
        {
          v87 = *v65.i64;
        }

        if (v79 <= v87)
        {
          v90 = LOWORD(v130[0]) + WORD1(v130[0]) - 1;
          v91 = DWORD1(v130[0]);
          if (v90 < DWORD1(v130[0]))
          {
            v91 = 0;
          }

          v65.i64[0] = *(v130 + v90 - v91 + 1);
          if (v79 < v87)
          {
            *v65.i64 = *v65.i64 - *(v130 + LOWORD(v130[0]) + 1);
          }
        }

        else
        {
          v88 = LOWORD(v130[0]) + WORD1(v130[0]) - 1;
          v89 = DWORD1(v130[0]);
          if (v88 < DWORD1(v130[0]))
          {
            v89 = 0;
          }

          *v65.i64 = *(v130 + LOWORD(v130[0]) + 1) - *(v130 + v88 - v89 + 1);
        }
      }

      else
      {
        *v65.i64 = -v71;
      }

      v66.i64[0] = 1.0;
      v92.f64[0] = NAN;
      v92.f64[1] = NAN;
      v92.f64[0] = *vbslq_s8(vnegq_f64(v92), v66, v65).i64;
      v93 = atan2(v92.f64[0] * *&v47, v92.f64[0] * -*(&v47 + 1));
      v94 = *(v5 + 16);
      if (v28 - *v5 <= 1.0)
      {
        v95 = __sincos_stret(v93);
        v96 = __sincos_stret(v94);
        v97 = atan2((v95.__sinval + v96.__sinval) * 0.5, (v95.__cosval + v96.__cosval) * 0.5);
        v98 = *(v5 + 24);
        v101 = __sincos_stret(v97);
        cosval = v101.__cosval;
        sinval = v101.__sinval;
        v102 = *(v5 + 32);
        if (qword_1EAFE2A58 != -1)
        {
          v116 = v101.__sinval;
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A220);
          cosval = v101.__cosval;
          sinval = v116;
        }

        v103 = v98 + cosval * 0.73787;
        v104 = v102 + sinval * 0.73787;
        v105 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
        {
          v106 = *v4;
          *buf = 134219264;
          *&buf[4] = v106;
          *&buf[12] = 2048;
          *&buf[14] = v93;
          *&buf[22] = 2048;
          *&buf[24] = v97;
          *v139 = 2048;
          *&v139[2] = v103;
          v140 = 2048;
          v141 = v104;
          v142 = 2048;
          *&v143 = WORD1(v130[0]);
          _os_log_impl(&dword_19B41C000, v105, OS_LOG_TYPE_DEBUG, "[CMPdr] directionResult,time,%f,directionRadians,%f,avgDirectionRadians,%f,x,%f,y,%f,scoreBufSize,%zu\n", buf, 0x3Eu);
        }

        v107 = sub_19B420058();
        if (*(v107 + 160) > 1 || *(v107 + 164) > 1 || *(v107 + 168) > 1 || *(v107 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A220);
          }

          v108 = *v4;
          v119 = 134219264;
          v120 = v108;
          v121 = 2048;
          v122 = v93;
          v123 = 2048;
          v124 = v97;
          *v125 = 2048;
          *&v125[2] = v103;
          v126 = 2048;
          v127 = v104;
          v128 = 2048;
          v129 = WORD1(v130[0]);
          v115 = 62;
          v114 = &v119;
          v109 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "Pdr::PdrOutput CMPdrDirectionality::feedImuData(const AccessoryActivity::ImuData *const, const CMAccessoryStepDetector::Impulse *const)", "CoreLocation: %s\n", v109);
          if (v109 != buf)
          {
            free(v109);
          }
        }

        *(v5 + 24) = v103;
        *(v5 + 32) = v104;
      }

      *(v5 + 16) = v93;
      *v5 = v28;
    }
  }

  v110 = *(v5 + 24);
  v111 = *(v5 + 32);
  v112 = *MEMORY[0x1E69E9840];
  return *(v5 + 16) * 57.2957802;
}

os_log_t sub_19B742158()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

uint64_t sub_19B742188(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E289A0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E289A0);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMPdrDirectionality::AggAccelSample>::operator[](const size_t) const [T = CMPdrDirectionality::AggAccelSample]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[12 * (v4 - v5) + 4];
}

double sub_19B7423A4(unsigned __int16 *a1, unsigned int (*a2)(double, double))
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (a1[1])
  {
    v5 = 0;
    v6 = *sub_19B5D6C98(a1, 0);
    do
    {
      v7 = sub_19B5D6C98(a1, v5);
      v8 = *v7;
      if (a2(*v7, v6))
      {
        v6 = v8;
      }

      ++v5;
    }

    while (v3 != v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E289A0);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E289A0);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMQueue<double>::getComparison(int (*)(const T, const T), size_t) const [T = double]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v6 = *sub_19B5D6C98(a1, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B7425F4()
{
  result = sub_19B421620();
  if ((result & 0x2000000000000000) != 0)
  {
    operator new();
  }

  return result;
}

void sub_19B74269C(_Unwind_Exception *a1)
{
  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_19B7426C4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
  }

  v6 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240448;
    v14 = a2;
    v15 = 2050;
    v16 = a3;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "NumberOfSpectatorsChanged,notification,%{public}d,num,%{public}zu", buf, 0x12u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLFlickGestureNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (a2 < 2)
  {
    if (sub_19B6B2D1C(a1 + 32))
    {
      sub_19B4238F4(*(a1 + 40), a3 != 0);
    }
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
    }

    v9 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v14 = a2;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Unrecognized notification,%{public}d", buf, 8u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLFlickGestureNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B742A28(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
  }

  v3 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
  {
    v4 = *(a2 + 1);
    *buf = 67240192;
    v10 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "pong,%{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
    }

    v8 = *(a2 + 1);
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLFlickGestureNotifier::visitPong(const CMFlickGestureReport::Pong *)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B742BF8(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
  }

  v4 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *(a1 + 64);
    v8 = mach_absolute_time();
    *buf = 67240960;
    *&buf[4] = v5;
    LOWORD(v18) = 1026;
    *(&v18 + 2) = v6;
    HIWORD(v18) = 2050;
    v19 = v7;
    v20 = 2050;
    v21 = sub_19B41E070(v8);
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Report,gestureState,%{public}u,isSimulated,%{public}u,timestamp,%{public}lf,now,%{public}lf", buf, 0x22u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
    }

    v10 = *(a2 + 1);
    v11 = *(a2 + 2);
    v12 = *(a1 + 64);
    v13 = mach_absolute_time();
    sub_19B41E070(v13);
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLFlickGestureNotifier::visitFlickGestureState(const CMFlickGestureReport::FlickGestureState *)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v18 = 0;
  *buf = *(a1 + 64);
  LOWORD(v18) = *(a2 + 1);
  result = sub_19B41DF08(a1, 0, buf, 16);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B742E70(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
  }

  v4 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 1);
    v6 = mach_absolute_time();
    *buf = 67240448;
    *&buf[4] = v5;
    *v18 = 2050;
    *&v18[2] = sub_19B41E070(v6);
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Report,Analytics,gestureDetected%{public}u,timestamp,%{public}lf", buf, 0x12u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
    }

    v8 = *(a2 + 1);
    v9 = mach_absolute_time();
    v13 = 67240448;
    v14 = v8;
    v15 = 2050;
    v16 = sub_19B41E070(v9);
    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLFlickGestureNotifier::visitFlickAnalytics(const CMFlickGestureReport::FlickAnalytics *)", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  *buf = 0;
  sub_19B6241D0(&v13, "FlickMaxGestureLength", buf, 0);
  *buf = 0;
  *v18 = 0;
  buf[0] = *(a2 + 1);
  *&buf[1] = *(a2 + 2);
  *&buf[4] = *(a2 + 4);
  v18[0] = *(a2 + 8);
  *&v18[4] = *(a2 + 9);
  v19 = *(a2 + 25);
  v20 = *(a2 + 41);
  v21 = *(a2 + 57);
  v22 = v14;
  result = sub_19B41DF08(a1, 1, buf, 72);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B743100(void *a1)
{
  sub_19B6B3EDC((a1 + 4));

  return sub_19B674784(a1);
}

void sub_19B74313C(void *a1)
{
  sub_19B6B3EDC((a1 + 4));
  sub_19B674784(a1);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B74318C(uint64_t a1)
{
  v1 = (a1 - 32);
  sub_19B6B3EDC(a1);

  return sub_19B674784(v1);
}

os_log_t sub_19B7431CC()
{
  result = os_log_create("com.apple.locationd.Motion", "Flick");
  off_1EAFE2970 = result;
  return result;
}

uint64_t sub_19B7432B0()
{
  v0 = objc_alloc(MEMORY[0x1E69AD360]);
  result = objc_msgSend_initWithIdentifier_(v0, v1, @"CLGyroCalibrationDatabaseSilo");
  qword_1ED71D6F0 = result;
  return result;
}

uint64_t sub_19B743784()
{
  result = sub_19B42AD98();
  if (result)
  {
    byte_1ED71D6E8 = 1;
  }

  return result;
}

uint64_t sub_19B743CFC(uint64_t a1, char *a2, void *a3)
{
  *a1 = &unk_1F0E343B8;
  sub_19B428B50((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = objc_msgSend_silo(a3, v5, v6);
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_19B743D8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B743DA8(uint64_t a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_1F0E343B8;
  objc_msgSend_invalidate(*(a1 + 48), a2, a3);

  sub_19B6F37F4(a1 + 80, *(a1 + 88));
  sub_19B6F3854(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

_BYTE *sub_19B743E2C@<X0>(_DWORD *a1@<X1>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x20uLL, "%d", *a1);
  result = sub_19B428B50(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B743EC4()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3B538);
  }

  v0 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_INFO, "Warning: Not implemented.", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3B538);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLGyroCalibrationDatabase::getGyroStats(CLMotionTypeRotationRate &, CLMotionTypeRotationRate &, CLMotionTypeRotationRate &, BOOL)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B74406C()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3B538);
  }

  v0 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_INFO, "Warning: Not implemented.", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3B538);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual int CLGyroCalibrationDatabase::getMaxDynamicTemperature()", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0x80000000;
}

os_log_t sub_19B744214()
{
  result = os_log_create("com.apple.locationd.Core", "Notifier");
  qword_1EAFE2820 = result;
  return result;
}

void *sub_19B74424C(void *a1)
{
  a1[3] = 0;
  *a1 = &unk_1F0E32630;
  a1[1] = 0;
  a1[2] = 0;
  v2 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B744320;
  v4[3] = &unk_1E75327D8;
  v4[4] = a1;
  sub_19B420C9C(v2, v4);
  return a1;
}

void sub_19B7442FC(_Unwind_Exception *a1)
{
  sub_19B6B3E90(v2, 0);
  v4 = *(v1 + 16);
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  _Unwind_Resume(a1);
}

void sub_19B744320(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_19B42CAAC();
  sub_19B42C428(v2);
}

void sub_19B744454(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  MEMORY[0x19EAE76F0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B744484(void *a1)
{
  v2 = a1[3];
  sub_19B6B1BB4(v2);
  sub_19B6B1F70(v2);
  v3 = *(*a1 + 16);

  return v3(a1);
}

uint64_t sub_19B7444EC(uint64_t a1)
{
  *a1 = &unk_1F0E32630;
  sub_19B6B3E90((a1 + 24), 0);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return a1;
}

void sub_19B744544(uint64_t a1)
{
  sub_19B7444EC(a1);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B74457C()
{
  result = os_log_create("com.apple.locationd.Motion", "Eclipse");
  off_1EAFE2828 = result;
  return result;
}

uint64_t sub_19B7445AC(uint64_t a1)
{
  *a1 = &unk_1F0E32238;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0;
  v2 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B744688;
  v4[3] = &unk_1E75327D8;
  v4[4] = a1;
  sub_19B420C9C(v2, v4);
  return a1;
}

void sub_19B744664(_Unwind_Exception *a1)
{
  sub_19B6B3E90(v2, 0);
  v4 = *(v1 + 16);
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B744690(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  v2 = sub_19B421620();
  if ((v2 & 0x400) != 0)
  {
    if (!*(a1 + 8))
    {
      v3 = sub_19B42CAAC();
      sub_19B42C428(v3);
    }
  }

  else
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v4 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Service unavailable.", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUMagicMountInterface::openHidDevice()", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return (v2 >> 10) & 1;
}

void sub_19B74497C(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

BOOL sub_19B7449B0(uint64_t a1, uint64_t a2, char *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  if ((sub_19B421620() & 0x400) == 0)
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v8 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLMagicMountInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }
    }

    v9 = qword_1EAFE2990;
    if (os_signpost_enabled(qword_1EAFE2990))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "isAvailable()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLMagicMountInterface] Service required", "{msg%{public}.0s:[CLMagicMountInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }
    }

    v10 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLMagicMountInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v11 = 0;
  *buf = 4;
  result = sub_19B44CF80(*(a1 + 24), a2, a3, &v11, buf) == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B744C54(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_19B6B1BB4(v2);
  sub_19B6B1F70(v2);

  return sub_19B744C9C(a1);
}

BOOL sub_19B744C9C(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  v12[0] = 2;
  v2 = *(a1 + 40);
  v12[1] = *(a1 + 40);
  v13 = 0;
  v14 = 0;
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
  }

  v3 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v18 = v2;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "[CLMagicMountInterface] Sending config shouldKeepRunning,%{public}u,", buf, 8u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v15 = 67240192;
    v16 = v2;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLSPUMagicMountInterface::configure()", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = sub_19B7449B0(a1, v12, 0xE);
  if (!v6)
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v7 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "[CLMagicMountInterface] Configure failed", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      LOWORD(v15) = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUMagicMountInterface::configure()", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_19B744FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    IOHIDEventGetVendorDefinedData();
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v4 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUMagicMountInterface::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n");
LABEL_23:
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v7 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Event ref invalid", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUMagicMountInterface::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n");
      goto LABEL_23;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_19B74570C(uint64_t a1, char a2, double a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B7457A0;
  v7[3] = &unk_1E75342D8;
  v7[4] = a1;
  v8 = a2;
  *&v7[5] = a3;
  sub_19B420C9C(v6, v7);
}

void sub_19B7457A0(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (sub_19B744690(v2))
  {
    v14[0] = 3;
    v14[1] = *(a1 + 48);
    v15 = (*(a1 + 40) * 1000000.0);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v3 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 40);
      *buf = 67240448;
      v21 = v4;
      v22 = 2050;
      v23 = v5;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CLMagicMountInterface] Simulate,mountStatus,%{public}u,%{public}f", buf, 0x12u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v16 = 67240448;
      v17 = v7;
      v18 = 2050;
      v19 = v8;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUMagicMountInterface::simulateMagicMountEvent(uint8_t, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    if (!sub_19B7449B0(v2, v14, 0xA))
    {
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      v10 = qword_1EAFE2990;
      if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "[CLMagicMountInterface] Simulate failed", buf, 2u);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2988 != -1)
        {
          dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
        }

        LOWORD(v16) = 0;
        v12 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUMagicMountInterface::simulateMagicMountEvent(uint8_t, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B745B1C()
{
  result = os_log_create("com.apple.locationd.Motion", "MagicMount");
  qword_1EAFE2990 = result;
  return result;
}

uint64_t sub_19B746CF4(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B747364;
  v10[3] = &unk_1E7535A70;
  v10[4] = v7;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v8, v10);
  return v7;
}

os_log_t sub_19B747334()
{
  result = os_log_create("com.apple.locationd.Motion", "HealthColdStorage");
  qword_1EAFE2AB0 = result;
  return result;
}

void sub_19B747364(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 32);
    v7 = objc_msgSend_sr_dictionaryRepresentation(a2, v4, v5);
    v9 = *MEMORY[0x1E69E9840];

    objc_msgSend_addObject_(v6, v8, v7);
  }

  else
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E2A2C0);
    }

    v10 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = a2;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, " sr_dictionaryRepresentation not available for %{public}@", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E2A2C0);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "NSArray *convertedSRDictArrayFromContainer(NSArray *)_block_invoke", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

BOOL sub_19B747778(void *a1, char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_length(a1, a2, a3) > 1)
  {
    v11 = *objc_msgSend_bytes(a1, v5, v6);
    if (a2)
    {
      *a2 = v11;
    }

    else
    {
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v12 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Invalid version parameter.", buf, 2u);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
        }

        v14 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLGyroCalibrationUtils::isGYTTVersionValid(NSData *, UInt16 *)", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }

    result = v11 == 2;
  }

  else
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    v7 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "GYTT data not long enough to get version properly", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLGyroCalibrationUtils::isGYTTVersionValid(NSData *, UInt16 *)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    result = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B747A9C(uint64_t a1, void *a2)
{
  v168[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v3 = sub_19B420D84();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_19B5EB694(v4, "GYTTOverride", &cf);
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  p_vtable = CMDeviceOrientationManager.vtable;
  if (v7)
  {
    CFRetain(cf);
  }

  else
  {
    v167 = @"name";
    v168[0] = @"gyro";
    v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v168, &v167, 1);
    v165 = @"IOPropertyMatch";
    v166 = v9;
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v166, &v165, 1);
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v11);
    v13 = MatchingService;
    if (!MatchingService)
    {
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E27F80);
      }

      v66 = qword_1EAFE2838;
      if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v66, OS_LOG_TYPE_FAULT, "Service doesn't exist", buf, 2u);
      }

      v67 = sub_19B420058();
      if ((*(v67 + 160) & 0x80000000) == 0 || (*(v67 + 164) & 0x80000000) == 0 || (*(v67 + 168) & 0x80000000) == 0 || *(v67 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2810 != -1)
        {
          dispatch_once(&qword_1EAFE2810, &unk_1F0E27F80);
        }

        LOWORD(v137) = 0;
        v68 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLGyroCalibrationUtils::copyGYTTData(NSData **)", "CoreLocation: %s\n", v68);
        if (v68 != buf)
        {
          free(v68);
        }
      }

      goto LABEL_122;
    }

    cf = IORegistryEntryCreateCFProperty(MatchingService, @"gyro-temp-table", *MEMORY[0x1E695E480], 0);
    IOObjectRelease(v13);
  }

  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFDataGetTypeID())
    {
      v131 = cf;
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v15 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v156 = v131;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "GYTT data %@", buf, 0xCu);
      }

      v16 = sub_19B420058();
      if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
        }

        v137 = 138412290;
        v138 = v131;
        LODWORD(v129) = 12;
        v18 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLGyroCalibrationUtils::copyGYTTData(NSData **)", "CoreLocation: %s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      LOWORD(cf) = -1;
      if (sub_19B747778(v131, &cf, v17))
      {
        v21 = objc_msgSend_bytes(v131, v19, v20);
      }

      else
      {
        sub_19B421798();
        if ((sub_19B439CEC() & 0xFFFFFFFE) != 0xC6)
        {
          v113 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v76, @"GYTT version (%u) does not match expected version (%u)", cf, 2);
          if (a2)
          {
            v114 = objc_alloc(MEMORY[0x1E696ABC0]);
            v151 = *MEMORY[0x1E696A578];
            v152 = v113;
            v116 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v115, &v152, &v151, 1);
            *a2 = objc_msgSend_initWithDomain_code_userInfo_(v114, v117, @"CMErrorDomainFactory", 5, v116);
          }

          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
          }

          v118 = qword_1ED71C818;
          if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v156 = v113;
            _os_log_impl(&dword_19B41C000, v118, OS_LOG_TYPE_FAULT, "%{public}@", buf, 0xCu);
          }

          v119 = sub_19B420058();
          if ((*(v119 + 160) & 0x80000000) != 0 && (*(v119 + 164) & 0x80000000) != 0 && (*(v119 + 168) & 0x80000000) != 0 && !*(v119 + 152))
          {
            goto LABEL_212;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
          }

          v137 = 138543362;
          v138 = v113;
          v112 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v112);
          goto LABEL_194;
        }

        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
        }

        v77 = qword_1ED71C818;
        if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v77, OS_LOG_TYPE_DEFAULT, "Attempting GYTT recovery!", buf, 2u);
        }

        v78 = sub_19B420058();
        if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
          }

          LOWORD(v137) = 0;
          LODWORD(v129) = 2;
          v81 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v81);
          if (v81 != buf)
          {
            free(v81);
          }
        }

        v82 = objc_msgSend_mutableCopy(v131, v79, v80);

        v85 = objc_msgSend_bytes(v82, v83, v84);
        v90 = objc_msgSend_length(v82, v86, v87);
        if (v90 >= 4)
        {
          v91 = 0;
          do
          {
            *buf = bswap32(*(v85 + v91));
            objc_msgSend_replaceBytesInRange_withBytes_length_(v82, v88, v91, 4, buf, 4);
            v91 += 4;
            v90 -= 4;
          }

          while (v90 > 3);
        }

        if (!sub_19B747778(v82, &cf, v89))
        {
          v120 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v92, @"After recovery, GYTT version (%u) still does not match expected version (%u)", cf, 2);
          if (a2)
          {
            v121 = objc_alloc(MEMORY[0x1E696ABC0]);
            v149 = *MEMORY[0x1E696A578];
            v150 = v120;
            v123 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v122, &v150, &v149, 1);
            *a2 = objc_msgSend_initWithDomain_code_userInfo_(v121, v124, @"CMErrorDomainFactory", 5, v123);
          }

          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
          }

          v125 = qword_1ED71C818;
          if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v156 = v120;
            _os_log_impl(&dword_19B41C000, v125, OS_LOG_TYPE_FAULT, "%{public}@", buf, 0xCu);
          }

          v126 = sub_19B420058();
          if ((*(v126 + 160) & 0x80000000) == 0 || (*(v126 + 164) & 0x80000000) == 0 || (*(v126 + 168) & 0x80000000) == 0 || *(v126 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C810 != -1)
            {
              dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
            }

            v137 = 138543362;
            v138 = v120;
            v127 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v127);
            if (v127 != buf)
            {
              free(v127);
            }
          }

          v131 = v82;
          goto LABEL_212;
        }

        sub_19B421798();
        if ((sub_19B439CEC() & 0xFFFFFFFE) == 0xC6)
        {
          v95 = objc_msgSend_bytes(v82, v93, v94);
          v96 = *(v95 + 4);
          *buf = -*(v95 + 6);
          LOWORD(v137) = v96;
          objc_msgSend_replaceBytesInRange_withBytes_length_(v82, v97, 4, 2, buf, 2);
          objc_msgSend_replaceBytesInRange_withBytes_length_(v82, v98, 6, 2, &v137, 2);
        }

        v131 = v82;
        v21 = objc_msgSend_bytes(v82, v93, v94);
      }

      v24 = v21;
      v25 = objc_msgSend_length(v131, v22, v23);
      if ((v25 - 10) > 0xFFFFFFFFFFFFFFF7)
      {
        v27 = 0;
      }

      else
      {
        v27 = 0;
        v28 = v25 - 2;
        v29 = (v24 + 2);
        v130 = *MEMORY[0x1E696A578];
        do
        {
          v133 = *v29;
          v30 = vcvts_n_f32_s32(*v29, 8uLL);
          if (v30 > 100.0)
          {
            v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v26, @"Invalid GYTT temperature %f", v30, v129);
            if (a2)
            {
              v32 = objc_alloc(MEMORY[0x1E696ABC0]);
              v147 = v130;
              v148 = v31;
              v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v33, &v148, &v147, 1);
              *a2 = objc_msgSend_initWithDomain_code_userInfo_(v32, v35, @"CMErrorDomainFactory", 6, v34);
            }

            if (qword_1ED71C810 != -1)
            {
              dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
            }

            v36 = p_vtable[259];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v156 = v31;
              _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            v37 = sub_19B420058();
            if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C810 != -1)
              {
                dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
              }

              v38 = p_vtable[259];
              v137 = 138543362;
              v138 = v31;
              LODWORD(v129) = 12;
              v39 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v39);
              if (v39 != buf)
              {
                free(v39);
              }
            }
          }

          v40 = vcvts_n_f32_s32(SWORD1(v133), 8uLL);
          v41 = vcvts_n_f32_s32(SWORD2(v133), 8uLL);
          v42 = vcvts_n_f32_s32(SHIWORD(v133), 8uLL);
          if (v133)
          {
            if (qword_1ED71C810 != -1)
            {
              dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
            }

            v43 = p_vtable[259];
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134219008;
              v156 = v27;
              v157 = 2048;
              v158 = v30;
              v159 = 2048;
              v160 = v40;
              v161 = 2048;
              v162 = v41;
              v163 = 2048;
              v164 = v42;
              _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEBUG, "Reading GYTT point %zu: %f,%f,%f,%f", buf, 0x34u);
            }

            v44 = sub_19B420058();
            if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C810 != -1)
              {
                dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
              }

              v45 = p_vtable[259];
              v137 = 134219008;
              v138 = v27;
              v139 = 2048;
              v140 = v30;
              v141 = 2048;
              v142 = v40;
              v143 = 2048;
              v144 = v41;
              v145 = 2048;
              v146 = v42;
              LODWORD(v129) = 52;
              v46 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v46);
              if (v46 != buf)
              {
                free(v46);
              }
            }

            v47 = *(a1 + 8);
            v48 = *(a1 + 16);
            if (v47 >= v48)
            {
              v54 = *a1;
              v55 = v47 - *a1;
              v56 = v55 >> 4;
              v57 = (v55 >> 4) + 1;
              if (v57 >> 60)
              {
                sub_19B5BE690();
              }

              v58 = v48 - v54;
              if (v58 >> 3 > v57)
              {
                v57 = v58 >> 3;
              }

              if (v58 >= 0x7FFFFFFFFFFFFFF0)
              {
                v59 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v59 = v57;
              }

              if (v59)
              {
                if (!(v59 >> 60))
                {
                  operator new();
                }

                sub_19B4C5080();
              }

              v60 = (16 * v56);
              *v60 = v30;
              v60[1] = v40;
              v60[2] = v41;
              v60[3] = v42;
              v49 = 16 * v56 + 16;
              memcpy(0, v54, v55);
              *a1 = 0;
              *(a1 + 8) = v49;
              *(a1 + 16) = 0;
              if (v54)
              {
                operator delete(v54);
              }

              p_vtable = (CMDeviceOrientationManager + 24);
            }

            else
            {
              *v47 = v30;
              v47[1] = v40;
              v49 = (v47 + 4);
              v47[2] = v41;
              v47[3] = v42;
            }

            *(a1 + 8) = v49;
            v27 = (v27 + 1);
          }

          else
          {
            if (qword_1ED71C810 != -1)
            {
              dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
            }

            v50 = p_vtable[259];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134219008;
              v156 = v27;
              v157 = 2048;
              v158 = v30;
              v159 = 2048;
              v160 = v40;
              v161 = 2048;
              v162 = v41;
              v163 = 2048;
              v164 = v42;
              _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_DEBUG, "Skipping GYTT point %zu: %f,%f,%f,%f", buf, 0x34u);
            }

            v51 = sub_19B420058();
            if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C810 != -1)
              {
                dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
              }

              v52 = p_vtable[259];
              v137 = 134219008;
              v138 = v27;
              v139 = 2048;
              v140 = v30;
              v141 = 2048;
              v142 = v40;
              v143 = 2048;
              v144 = v41;
              v145 = 2048;
              v146 = v42;
              LODWORD(v129) = 52;
              v53 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v53);
              if (v53 != buf)
              {
                free(v53);
              }
            }
          }

          v28 -= 8;
          ++v29;
        }

        while (v28 > 7);
      }

      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v99 = p_vtable[259];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v156 = v27;
        _os_log_impl(&dword_19B41C000, v99, OS_LOG_TYPE_DEBUG, "%zu GYTT points found", buf, 0xCu);
      }

      v100 = sub_19B420058();
      if (*(v100 + 160) > 1 || *(v100 + 164) > 1 || *(v100 + 168) > 1 || *(v100 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
        }

        v102 = p_vtable[259];
        v137 = 134217984;
        v138 = v27;
        v103 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v103);
        if (v103 != buf)
        {
          free(v103);
        }
      }

      if (v27)
      {
        goto LABEL_212;
      }

      v104 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v101, @"Insufficent GYTT points. Found: %zu", 0);
      if (a2)
      {
        v105 = objc_alloc(MEMORY[0x1E696ABC0]);
        v135 = *MEMORY[0x1E696A578];
        v136 = v104;
        v107 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v106, &v136, &v135, 1);
        *a2 = objc_msgSend_initWithDomain_code_userInfo_(v105, v108, @"CMErrorDomainFactory", 7, v107);
      }

      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v109 = p_vtable[259];
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v156 = v104;
        _os_log_impl(&dword_19B41C000, v109, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v110 = sub_19B420058();
      if ((*(v110 + 160) & 0x80000000) != 0 && (*(v110 + 164) & 0x80000000) != 0 && (*(v110 + 168) & 0x80000000) != 0 && !*(v110 + 152))
      {
        goto LABEL_212;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v111 = p_vtable[259];
      v137 = 138543362;
      v138 = v104;
      v112 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v112);
LABEL_194:
      if (v112 != buf)
      {
        free(v112);
      }

LABEL_212:

      goto LABEL_213;
    }
  }

  if ((sub_19B421620() & 0x100000) != 0)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    v64 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v64, OS_LOG_TYPE_DEFAULT, "No optional GYTT data found", buf, 2u);
    }

    v65 = sub_19B420058();
    if (*(v65 + 160) <= 1 && *(v65 + 164) <= 1 && *(v65 + 168) <= 1 && !*(v65 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    LOWORD(v137) = 0;
    v63 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLGyroCalibrationUtils::copyGYTTData(NSData **)", "CoreLocation: %s\n", v63);
  }

  else
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    v61 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v61, OS_LOG_TYPE_FAULT, "Cannot get GYTT property", buf, 2u);
    }

    v62 = sub_19B420058();
    if ((*(v62 + 160) & 0x80000000) != 0 && (*(v62 + 164) & 0x80000000) != 0 && (*(v62 + 168) & 0x80000000) != 0 && !*(v62 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    LOWORD(v137) = 0;
    v63 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLGyroCalibrationUtils::copyGYTTData(NSData **)", "CoreLocation: %s\n", v63);
  }

  if (v63 != buf)
  {
    free(v63);
  }

LABEL_109:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_122:
  if (a2)
  {
    v69 = objc_alloc(MEMORY[0x1E696ABC0]);
    v153 = *MEMORY[0x1E696A578];
    v154 = @"Failed to read GYTT key from gyro service";
    v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v70, &v154, &v153, 1);
    *a2 = objc_msgSend_initWithDomain_code_userInfo_(v69, v72, @"CMErrorDomainFactory", 3, v71);
  }

  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
  }

  v73 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v156 = @"Failed to read GYTT key from gyro service";
    _os_log_impl(&dword_19B41C000, v73, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v74 = sub_19B420058();
  if ((*(v74 + 160) & 0x80000000) == 0 || (*(v74 + 164) & 0x80000000) == 0 || (*(v74 + 168) & 0x80000000) == 0 || *(v74 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    v137 = 138543362;
    v138 = @"Failed to read GYTT key from gyro service";
    v75 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v75);
    if (v75 != buf)
    {
      free(v75);
    }
  }

LABEL_213:
  v128 = *MEMORY[0x1E69E9840];
}

void sub_19B7493AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B7493CC()
{
  result = os_log_create("com.apple.locationd.Motion", "AOP");
  qword_1EAFE2838 = result;
  return result;
}

void sub_19B7497F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 736);
  if (v4)
  {
    v5 = (*(a2 + 8) - v4) / 1000000.0;
    *(a1 + 28) = v5;
    if (v5 >= 0.08)
    {
      if (*(a1 + 4))
      {
        *(a1 + 4) = 0;
        *(a1 + 52) = 0;
        *(a1 + 824) = 0;
        *(a1 + 752) = 0;
        *(a1 + 732) = 0;
        *(a1 + 716) = 0u;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *(a1 + 28) = 1025758986;
  }

  sub_19B749924(a1, a2);
  if (*(a1 + 4) != 2)
  {
LABEL_9:
    sub_19B749C40(a1, a2);
    goto LABEL_10;
  }

  if (*a1)
  {
    *a1 = 0;
    *(a1 + 36) = 0;
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
  }

LABEL_10:
  v6 = *(a1 + 736);
  if (v6)
  {
    v7 = *(a2 + 8) - v6;
    v8 = *(a1 + 794);
    v9 = *(a1 + 796);
    v10 = *(a1 + 792);
    if (v10 + v8 >= v9)
    {
      v11 = *(a1 + 796);
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 8 * (v10 + v8 - v11) + 800) = v7;
    if (v9 <= v8)
    {
      if (v10 + 1 < v9)
      {
        LOWORD(v9) = 0;
      }

      *(a1 + 792) = v10 + 1 - v9;
    }

    else
    {
      *(a1 + 794) = v8 + 1;
    }
  }

  *(a1 + 736) = *(a2 + 8);
}

void sub_19B749924(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 54))
  {
    *(a1 + 728) = *(a2 + 8);
    *(a1 + 4) = 1;
  }

  sub_19B5BE78C((a1 + 824), a2);
  if (*(a1 + 4) == 2 && *(a1 + 756) <= 22.5)
  {
    v13 = *sub_19B5BFE1C((a1 + 824), 0);
    v14 = *sub_19B5BFE1C((a1 + 824), 1uLL);
    v15 = *sub_19B5BFE1C((a1 + 824), 2uLL);
    if (v13 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    if (v13 <= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    if (v17 < v15)
    {
      v15 = v17;
    }

    if (v16 > v15)
    {
      v15 = v16;
    }

    v4 = *(a1 + 54);
    v5 = *(a1 + 56);
    v18 = *(a1 + 52);
    if (v18 + v4 >= v5)
    {
      v19 = *(a1 + 56);
    }

    else
    {
      v19 = 0;
    }

    *(a1 + 4 * (v18 + v4 - v19) + 60) = v15;
    if (v5 <= v4)
    {
      v24 = v18 + 1;
      if (v24 >= v5)
      {
        v25 = v5;
      }

      else
      {
        v25 = 0;
      }

      *(a1 + 52) = v24 - v25;
    }

    else
    {
      LOWORD(v4) = v4 + 1;
      *(a1 + 54) = v4;
    }
  }

  else
  {
    sub_19B5BE78C((a1 + 52), a2);
    LOWORD(v4) = *(a1 + 54);
    LODWORD(v5) = *(a1 + 56);
  }

  v6 = *(a1 + 752);
  *(a1 + 752) = v6 + 1;
  if (v5 == v4 && v6 >= 163)
  {
    if (*(a1 + 4) == 2)
    {
      v7 = *(a1 + 716);
      v8 = *(a1 + 764);
      v9 = *(a1 + 760);
      if ((*(a1 + 768) & 1) == 0)
      {
LABEL_10:
        v10 = &unk_19B7BBBC8;
        v11 = (a1 + 52);
        v12 = 6;
LABEL_40:
        v28 = sub_19B749DC4(v11, v7, v8, v9, v10, v12);
        *(a1 + 772) = v28;
        v29 = sub_19B5C0034((a1 + 52), sub_19B5C024C, 0x8EuLL);
        v30 = sub_19B5C0034((a1 + 52), sub_19B5C0258, 0x8EuLL);
        v31 = *(a2 + 8) - *(a1 + 724);
        *(a1 + 8) = v28;
        *(a1 + 12) = v29 - v30;
        *(a1 + 16) = v31;
        *(a1 + 752) -= *(a1 + 720);
        *(a1 + 744) = *(a2 + 8);
        return;
      }

LABEL_39:
      v10 = &unk_19B7BBBE0;
      v11 = (a1 + 52);
      v12 = 7;
      goto LABEL_40;
    }

    v20 = 163000000.0 / (*(a2 + 8) - *(a1 + 728));
    *(a1 + 756) = v20;
    v21 = *(a1 + 768);
    if (v21 == 1)
    {
      v7 = 150;
      *(a1 + 716) = 150;
      v9 = v20;
      *(a1 + 760) = v20;
      v8 = 14;
      *(a1 + 764) = 14;
      v22 = v20;
      v23 = 14.0;
      goto LABEL_38;
    }

    if (v20 <= 28.5)
    {
      if (v20 > 22.5)
      {
        v7 = 36;
        *(a1 + 716) = 36;
        *(a1 + 760) = 0x8000000019;
        v22 = 25.0;
        v8 = 128;
        v9 = 25;
        v23 = 128.0;
        goto LABEL_38;
      }

      v7 = 60;
      *(a1 + 716) = 60;
      *(a1 + 760) = 0x6800000014;
      v22 = 20.0;
      v8 = 104;
      v9 = 20;
      *&v26 = 104.0;
    }

    else
    {
      v7 = 0;
      *(a1 + 716) = 0;
      *(a1 + 760) = 0xA400000020;
      v8 = 164;
      v9 = 32;
      v22 = 32.0;
      *&v26 = 164.0;
    }

    v23 = *&v26;
LABEL_38:
    v27.i32[0] = *(a1 + 24);
    v27.f32[1] = (1000000.0 / v20) * v23;
    *(a1 + 720) = vcvt_s32_f32(vmul_f32((LODWORD(v22) | 0x3F00000000000000), v27));
    *(a1 + 4) = 2;
    if (!v21)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }
}

void sub_19B749C40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = (v4 - *(a1 + 744)) / 1000000.0;
  if (*a1)
  {
    v6 = *(a1 + 776);
    v7 = 1.0;
    if (v6 != 0.0)
    {
      v7 = 1.0 - expf(-*(a1 + 28) / v6);
    }

    *(a1 + 40) = v7;
    *(a1 + 48) = 0;
    *(a1 + 36) = 3;
LABEL_9:
    v10 = *a2;
    *(a1 + 36) = 4;
    v11 = *(a1 + 44) - (v7 * (*(a1 + 44) - v10));
    goto LABEL_10;
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 776);
  if (v8 > -1.0)
  {
    v7 = 1.0;
    if (v9 != 0.0)
    {
      v7 = 1.0 - expf(-v5 / v9);
    }

    *(a1 + 48) = 0;
    *(a1 + 40) = v7;
    *(a1 + 44) = v8;
    *(a1 + 36) = 3;
    *a1 = 1;
    goto LABEL_9;
  }

  v13 = 1.0;
  if (v9 != 0.0)
  {
    v13 = 1.0 - expf(-*(a1 + 28) / v9);
  }

  *(a1 + 36) = 0;
  *(a1 + 40) = v13;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 744) = v4;
  *a1 = 1;
  v14 = *a2;
  *(a1 + 36) = 1;
  v5 = 0.0;
  v11 = v14 + (0.0 * 0.0);
LABEL_10:
  *(a1 + 44) = v11;
  if (v5 > *(a1 + 24))
  {
    *a1 = 2;
    v12 = v4 - *(a1 + 784);
    *(a1 + 8) = v11;
    *(a1 + 12) = -1082130432;
    *(a1 + 16) = v12;
    *(a1 + 744) = *(a2 + 8);
  }
}

float sub_19B749DC4(unsigned __int16 *a1, int a2, int a3, int a4, float *a5, unsigned int a6)
{
  if ((a4 + 1) >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  v8 = (a3 / 2);
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  if (a3 >= 2)
  {
    v13 = 0;
    v14 = v7;
    v15 = (a3 + 1) >> 1;
    v27 = a3;
    v16 = a3 + a2;
    v28 = a2;
    v17 = a2;
    v18 = a6 - 1;
    v19 = a5 + 1;
    v20 = 0.0;
    do
    {
      v21 = *a5;
      v22 = v19;
      v23 = v18;
      do
      {
        v24 = *v22++;
        v21 = v24 + (v21 * (v14 * (v15 + ~v13)));
        --v23;
      }

      while (v23);
      v20 = v20 + v21;
      v25 = *sub_19B5BFE1C(a1, v13 + v17);
      v9 = v9 + ((v25 + *sub_19B5BFE1C(a1, v16 + ~v13)) * v21);
      if (!v13)
      {
        v10 = v21;
      }

      ++v13;
    }

    while (v13 != v8);
    v11 = v20 + v20;
    a2 = v28;
    LOBYTE(a3) = v27;
  }

  if (a3)
  {
    v9 = v9 + (*sub_19B5BFE1C(a1, v8 + a2) * v10);
  }

  return v9 / v11;
}

void sub_19B74A808(uint64_t a1)
{
  sub_19B74A854(a1);
  sub_19B4238F4(*(a1 + 56), 1);
  *(a1 + 80) = 1;

  sub_19B74A9C0(a1);
}

uint64_t sub_19B74A854(uint64_t result)
{
  if (!*(result + 56))
  {
    v1 = sub_19B42CAAC();
    sub_19B42C428(v1);
  }

  return result;
}

void sub_19B74A990(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  MEMORY[0x19EAE76F0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_19B74A9C0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 1;
  HIBYTE(v6) = *(a1 + 80);
  sub_19B420D84();
  sub_19B44B9A0();
  v7[0] = 0;
  *buf = 4;
  if (sub_19B44CF80(*(a1 + 72), &v6, 2, v7, buf))
  {
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
    }

    v2 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[PickupDetection] Configure failed", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
      }

      LOWORD(v7[0]) = 0;
      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMPickupServiceMotionCoprocessor::configure()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B74ABA0(uint64_t a1)
{
  sub_19B74A854(a1);
  sub_19B4238F4(*(a1 + 56), 0);
  *(a1 + 80) = 0;

  sub_19B74A9C0(a1);
}

void sub_19B74ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    IOHIDEventGetVendorDefinedData();
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
    }

    v4 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPickupServiceMotionCoprocessor::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n");
LABEL_23:
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
    }

    v7 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Event ref invalid", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMPickupServiceMotionCoprocessor::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n");
      goto LABEL_23;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_19B74B230(uint64_t a1)
{
  v2 = *(a1 + 72);
  sub_19B6B1BB4(v2);
  sub_19B6B1F70(v2);

  sub_19B74A9C0(a1);
}

uint64_t sub_19B74B278(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27A8 != -1)
  {
    dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
  }

  v4 = qword_1EAFE27E0;
  if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 1);
    v6 = *(a1 + 48);
    v7 = mach_absolute_time();
    *buf = 67240704;
    *&buf[4] = v5;
    *v16 = 2050;
    *&v16[2] = v6;
    v17 = 2050;
    v18 = sub_19B41E070(v7);
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Report,pickupState,%{public}u,timestamp,%{public}lf,now,%{public}lf", buf, 0x1Cu);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
    }

    v9 = *(a2 + 1);
    v10 = *(a1 + 48);
    v11 = mach_absolute_time();
    sub_19B41E070(v11);
    v12 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMPickupServiceMotionCoprocessor::visitPickupState(const CMAudioAccessoryReport::PickupState *)", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  *buf = 0;
  buf[0] = *(a2 + 1);
  *v16 = *(a1 + 48);
  result = sub_19B41DF08(a1, 0, buf, 16);
  *(a1 + 32) = buf[0];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B74B4D8(uint64_t a1)
{
  *a1 = &unk_1F0E31B88;
  *(a1 + 40) = &unk_1F0E31BE0;
  sub_19B6B3E90((a1 + 72), 0);
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B661DD8(a1);
}

void sub_19B74B560(uint64_t a1)
{
  *a1 = &unk_1F0E31B88;
  *(a1 + 40) = &unk_1F0E31BE0;
  sub_19B6B3E90((a1 + 72), 0);
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  sub_19B661DD8(a1);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B74B5FC(uint64_t a1)
{
  v2 = (a1 - 40);
  *(a1 - 40) = &unk_1F0E31B88;
  *a1 = &unk_1F0E31BE0;
  sub_19B6B3E90((a1 + 32), 0);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return sub_19B661DD8(v2);
}

void sub_19B74B680(uint64_t a1)
{
  v2 = (a1 - 40);
  *(a1 - 40) = &unk_1F0E31B88;
  *a1 = &unk_1F0E31BE0;
  sub_19B6B3E90((a1 + 32), 0);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  sub_19B661DD8(v2);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B74B718()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

void sub_19B74E310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}
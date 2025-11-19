BOOL sub_878(uint64_t a1)
{
  v2 = 0;
  v3 = qword_14148 == -1;
  do
  {
    if (!v3)
    {
      sub_A094();
    }

    result = os_signpost_enabled(qword_14150[v2]);
    *(a1 + v2++) = result;
    v3 = 1;
  }

  while (v2 != 4);
  return result;
}

_UNKNOWN **NUC_Create(uint64_t a1, const void *a2)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v3 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    *buf = 138412290;
    v9 = a2;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Create", "uuid %@", buf, 0xCu);
  }

  v4 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  v5 = CFEqual(a2, v4);
  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

  v6 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    *buf = 67109120;
    LODWORD(v9) = v5 != 0;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Create", "success %{BOOL}d", buf, 8u);
  }

  return &off_14088;
}

void sub_B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_9A60(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_B4C(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 24);
  os_unfair_lock_lock(a1 + 25);
  if (sub_10BC(a1))
  {
    sub_13BC(a1);
    sub_14FC(a1);
  }

  sub_185C(a1);
  os_unfair_lock_unlock(a1 + 25);
  os_unfair_lock_unlock(a1 + 24);
  return 0;
}

void sub_BCC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 25);
  os_unfair_lock_unlock(v1 + 24);
  _Unwind_Resume(a1);
}

char *sub_BE8(char *a1, __int128 *a2, uint64_t a3, dispatch_queue_s *a4)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  a1[64] = *(a2 + 48);
  *(a1 + 2) = v7;
  *(a1 + 3) = v8;
  *(a1 + 1) = v6;
  v9 = *(a2 + 7);
  if (v9)
  {
    v9 = _Block_copy(v9);
  }

  v10 = *a2;
  *(a1 + 9) = v9;
  *(a1 + 10) = v10;
  if (v10)
  {
    dispatch_retain(v10);
    v11 = *(a1 + 10);
  }

  else
  {
    LODWORD(v11) = 0;
  }

  waipc::util::createSerialQueueWithQosAndTarget("com.apple.WirelessIPC.audio.NetworkUplinkClock.AudioSession", &dword_14 + 1, v11, a4);
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 18) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 61) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  bzero(a1 + 496, 0x208uLL);
  *(a1 + 127) = a1 + 504;
  *(a1 + 128) = a1 + 672;
  *(a1 + 129) = a1 + 840;
  *(a1 + 65) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 67) = 0u;
  *(a1 + 68) = 0u;
  a1[1104] = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  a1[1144] = 1;
  *(a1 + 144) = 0;
  *(a1 + 145) = mach_continuous_time();
  *(a1 + 146) = 0;
  if (*(a2 + 48) == 1)
  {
    operator new();
  }

  *(a1 + 147) = 0;
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v12 = qword_14168;
  v13 = os_signpost_id_make_with_pointer(qword_14168, a1);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "AudioSession", "", v16, 2u);
    }
  }

  return a1;
}

void sub_E68(_Unwind_Exception *a1)
{
  sub_9EE0((v1 + 1168), 0);
  sub_9E40(v2 + 368);
  sub_9DF4((v2 + 16), 0);
  sub_9A14((v2 + 8));
  sub_9A14(v2);
  sub_9A14((v2 - 8));
  v4 = *(v1 + 112);
  if (v4)
  {
    sub_9A60(v4);
  }

  v5 = *(v1 + 88);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(v1 + 80);
  if (v6)
  {
    dispatch_release(v6);
  }

  sub_EFC(v1 + 16);
  v7 = *(v1 + 8);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_EFC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t sub_F30(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 96));
  os_unfair_lock_lock((a1 + 100));
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v2 = qword_14168;
  v3 = os_signpost_id_make_with_pointer(qword_14168, a1);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v2, OS_SIGNPOST_INTERVAL_END, v4, "AudioSession", "", v12, 2u);
    }
  }

  os_unfair_lock_unlock((a1 + 100));
  os_unfair_lock_unlock((a1 + 96));
  v5 = *(a1 + 1176);
  *(a1 + 1176) = 0;
  if (v5)
  {
    sub_9D54(v5 + 144);
    operator delete();
  }

  sub_9EE0((a1 + 1168), 0);
  sub_9E40(a1 + 496);
  sub_9DF4((a1 + 144), 0);
  sub_9A14((a1 + 136));
  sub_9A14((a1 + 128));
  sub_9A14((a1 + 120));
  v6 = *(a1 + 112);
  if (v6)
  {
    sub_9A60(v6);
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  return a1;
}

uint64_t sub_10BC(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 96));
  if (*(a1 + 104))
  {
    sub_A0D0();
  }

  NetworkUplinkClock_getTimesyncOverride();
  v2 = v14;
  v14 = 0uLL;
  v3 = *(a1 + 112);
  *(a1 + 104) = v2;
  if (v3)
  {
    sub_9A60(v3);
    v3 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      sub_9A60(*(&v14 + 1));
    }

    if (*(a1 + 104))
    {
      goto LABEL_12;
    }
  }

  else if (v2)
  {
    goto LABEL_12;
  }

  waipc::timesync::BasebandConfig::getDefault(&v14, v3);
  v19 = *(a1 + 64);
  v4 = *(a1 + 80);
  waipc::timesync::BasebandService::create();
  v5 = v13;
  v13 = 0uLL;
  v6 = *(a1 + 112);
  *(a1 + 104) = v5;
  if (v6)
  {
    sub_9A60(v6);
    if (*(&v13 + 1))
    {
      sub_9A60(*(&v13 + 1));
    }

    if (*(a1 + 104))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

LABEL_12:
  *&v14 = 0;
  *(&v14 + 1) = &v14;
  v15 = 0x3802000000;
  v16 = sub_18D0;
  v17 = sub_18EC;
  sub_9F2C(&v13, a1);
  v7 = *(&v13 + 1);
  v18 = v13;
  if (*(&v13 + 1))
  {
    atomic_fetch_add_explicit((*(&v13 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_9A60(v7);
  }

  v8 = *(a1 + 104);
  waipc::timesync::BasebandService::addConnectionObserver();
  sub_1AE8((a1 + 120), &v13);
  sub_9A14(&v13);
  v9 = *(a1 + 104);
  waipc::timesync::BasebandService::addTimesyncObserver();
  sub_1AE8((a1 + 128), &v13);
  sub_9A14(&v13);
  v10 = *(a1 + 104);
  waipc::timesync::BasebandService::addTimestampObserver();
  sub_1AE8((a1 + 136), &v13);
  sub_9A14(&v13);
  v11 = *(a1 + 104);
  waipc::timesync::BasebandService::setTimestampRequiredForReady();
  _Block_object_dispose(&v14, 8);
  if (*(&v18 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v18 + 1));
  }

  return 1;
}

void sub_1374(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  v3 = *(v1 - 80);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_13BC(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 96));
  os_unfair_lock_assert_owner((a1 + 100));
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 104) + 128);
  mach_continuous_time();
  waipc::SampleTimeline::SampleTimeline();
  *(a1 + 160) = v11;
  *(a1 + 176) = v12;
  *(a1 + 248) = v16;
  *(a1 + 264) = v17;
  *(a1 + 280) = v18;
  *(a1 + 200) = v13;
  *(a1 + 216) = v14;
  *(a1 + 232) = v15;
  *(a1 + 304) = v20;
  v2 = *(a1 + 176);
  *(a1 + 328) = *(a1 + 160);
  *(a1 + 344) = v2;
  v3 = *(a1 + 248);
  v4 = *(a1 + 280);
  *(a1 + 432) = *(a1 + 264);
  *(a1 + 448) = v4;
  v5 = *(a1 + 216);
  *(a1 + 368) = *(a1 + 200);
  *(a1 + 384) = v5;
  *(a1 + 400) = *(a1 + 232);
  *(a1 + 416) = v3;
  *(a1 + 472) = *(a1 + 304);
  *&v5 = *(a1 + 56);
  v6 = *(a1 + 184);
  *&v2 = *(a1 + 48) * 1000000000.0 / v6 * 0.5;
  *(a1 + 296) = v19;
  *(a1 + 320) = v21;
  *(a1 + 464) = *(a1 + 296);
  *(a1 + 488) = *(a1 + 320);
  *(a1 + 1128) = *&v2 * *&v2;
  *(a1 + 1136) = (*&v5 * 1000000000.0 / v6);
  return 1;
}

void sub_14FC(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 96));
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3802000000;
  v6[3] = sub_18D0;
  v6[4] = sub_18EC;
  sub_9F2C(&v4, a1);
  v2 = v5;
  v6[5] = v4;
  v6[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_9A60(v2);
  }

  v3 = *(a1 + 88);
  operator new();
}

void sub_1650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  _Block_object_dispose(&a18, 8);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  _Unwind_Resume(a1);
}

void sub_1698(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 96));
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3802000000;
  v8[3] = sub_18D0;
  v8[4] = sub_18EC;
  sub_9F2C(&v6, a1);
  v2 = v7;
  v8[5] = v6;
  v8[6] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_9A60(v2);
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  if (*(v5 + 416))
  {
    dispatch_retain(*(v5 + 416));
  }

  operator new();
}

void sub_185C(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 100));
  v2 = *(a1 + 1176);
  if (v2)
  {
    v3 = *(a1 + 1088);
    *v2 = *(a1 + 1072);
    *(v2 + 16) = v3;
    v4 = *(a1 + 1056);
    *(v2 + 32) = *(a1 + 1040);
    *(v2 + 48) = v4;
    *(v2 + 64) = *(a1 + 1152);
    v5 = *(a1 + 1176);

    sub_277C(v5 + 36, v5);
  }
}

uint64_t sub_18D0(uint64_t result, uint64_t a2)
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

void sub_18EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_18FC(uint64_t a1, int a2, const __CFString *a3)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 48))
  {
    v6 = *(a1 + 40);
    v7 = std::__shared_weak_count::lock(*(v3 + 48));
    if (v7)
    {
      v8 = v7;
      if (*(v3 + 40))
      {
        if (qword_14148 != -1)
        {
          sub_A094();
        }

        v9 = qword_14158;
        if (os_signpost_enabled(qword_14158))
        {
          v11[0] = 67109378;
          v11[1] = a2;
          v12 = 2112;
          v13 = a3;
          _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AudioSession_ConnectCB", "connected %{BOOL}d, reason %@", v11, 0x12u);
        }

        os_unfair_lock_lock((v6 + 96));
        if (a2)
        {
          *(v6 + 152) = 0;
        }

        else
        {
          *(v6 + 1104) = 0;
          atomic_store(1u, (v6 + 1144));
          if ((*(v6 + 152) & 1) == 0)
          {
            if (qword_14148 != -1)
            {
              sub_A0A8();
            }

            v10 = qword_14160;
            if (os_signpost_enabled(qword_14160))
            {
              LOWORD(v11[0]) = 0;
              _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AudioSession_ErrorTimerStart", "", v11, 2u);
            }

            *(v6 + 152) = 1;
            waipc::util::GroupErrorTimer::start(*(v6 + 144), a3);
          }
        }

        os_unfair_lock_unlock((v6 + 96));
      }

      sub_9A60(v8);
    }
  }
}

void (***sub_1AE8(void (***a1)(void), const void **a2))(void)
{
  v4 = *a1;
  if (v4)
  {
    v4[2]();
  }

  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *a2;
  *a2 = 0;
  if (v7)
  {
    _Block_release(v7);
  }

  return a1;
}

void sub_1B54(uint64_t a1, waipc::timesync::KalmanEstimator *a2, int a3)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 48))
  {
    v6 = *(a1 + 40);
    v7 = std::__shared_weak_count::lock(*(v3 + 48));
    if (v7)
    {
      v8 = v7;
      if (*(v3 + 40))
      {
        if (qword_14148 != -1)
        {
          sub_A094();
        }

        v9 = qword_14160;
        if (os_signpost_enabled(qword_14160))
        {
          v10 = waipc::timesync::KalmanEstimator::dumpState(a2);
          LODWORD(v15[0]) = 138412546;
          *(v15 + 4) = v10;
          WORD6(v15[0]) = 1024;
          *(v15 + 14) = a3;
          _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AudioSession_TimesyncCB", "estimator %@, reset %{BOOL}d", v15, 0x12u);
          if (v10)
          {
            CFRelease(v10);
          }
        }

        os_unfair_lock_lock((v6 + 96));
        waipc::SampleTimeline::updateTimesync((v6 + 160), a2, a3);
        if (a3)
        {
          atomic_store(0, (v6 + 1144));
        }

        sub_1D80((v6 + 496), v6 + 160);
        if (a3)
        {
          LOBYTE(a3) = *(v6 + 1104);
        }

        memset(v15, 0, sizeof(v15));
        v11 = *(v6 + 1112);
        waipc::SampleTimeline::timestampFromDevice((v6 + 160));
        v12 = *(v6 + 1120);
        v13 = *(v6 + 176);
        os_unfair_lock_unlock((v6 + 96));
        if (a3)
        {
          v14 = *(v6 + 72);
          if (v14)
          {
            (*(v14 + 16))(v14, v15, v13 * v12);
          }
        }
      }

      sub_9A60(v8);
    }
  }
}

const void **sub_1D4C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1D80(os_unfair_lock_t lock, uint64_t a2)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  v4 = sub_9FBC(lock);
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  *(v4 + 72) = *(a2 + 72);
  *(v4 + 56) = v7;
  *(v4 + 40) = v6;
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  v10 = *(a2 + 120);
  *(v4 + 136) = *(a2 + 136);
  *(v4 + 120) = v10;
  *(v4 + 104) = v9;
  *(v4 + 88) = v8;
  v11 = *(a2 + 144);
  *(v4 + 160) = *(a2 + 160);
  *(v4 + 144) = v11;
  v12 = atomic_exchange(&lock[128], v4);
  if (v12)
  {
    sub_9E7C(lock, v12);
  }

  if (lock)
  {

    os_unfair_lock_unlock(lock);
  }
}

void sub_1E60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E7C(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 48))
  {
    v8 = *(a1 + 40);
    v9 = std::__shared_weak_count::lock(*(v4 + 48));
    if (v9)
    {
      v10 = v9;
      if (*(v4 + 40))
      {
        if (qword_14148 != -1)
        {
          sub_A094();
        }

        v11 = qword_14160;
        if (os_signpost_enabled(qword_14160))
        {
          *buf = 134218496;
          *&buf[4] = a2;
          *&buf[12] = 2048;
          *&buf[14] = a4;
          *&buf[22] = 2048;
          *&buf[24] = a3;
          _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AudioSession_TimestampCB", "timestamp %llu, granularity %lf, interval %llu", buf, 0x20u);
        }

        os_unfair_lock_lock((v8 + 96));
        v12 = a4 / *(v8 + 176);
        if (v12 == 1.0)
        {
          v13 = a2;
        }

        else
        {
          v13 = (v12 * a2);
        }

        if (*(v8 + 1104) == 1 && (v14 = atomic_load((v8 + 1144)), (v14 & 1) == 0))
        {
          *(v8 + 1104) = 1;
          *(v8 + 1112) = v13;
          *(v8 + 1120) = a3;
          atomic_store(1u, (v8 + 1144));
          waipc::timesync::BasebandService::triggerReset(*(v8 + 104));
        }

        else
        {
          v15 = atomic_load((v8 + 1144));
          *(v8 + 1104) = 1;
          *(v8 + 1112) = v13;
          *(v8 + 1120) = a3;
          if ((v15 & 1) == 0)
          {
            waipc::SampleTimeline::timestampFromDevice((v8 + 160));
            *buf = v19;
            *&buf[16] = v20;
            v16 = *(v8 + 1120);
            v17 = *(v8 + 176);
            os_unfair_lock_unlock((v8 + 96));
            v18 = *(v8 + 72);
            if (v18)
            {
              (*(v18 + 16))(v18, buf, v17 * v16);
            }

            goto LABEL_18;
          }
        }

        os_unfair_lock_unlock((v8 + 96));
      }

LABEL_18:
      sub_9A60(v10);
    }
  }
}

void sub_2098(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 48);
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (*(v3 + 40))
      {
        os_unfair_lock_lock((v6 + 96));
        if (a2)
        {
          waipc::timesync::BasebandService::triggerMeasurement(*(v6 + 104));
        }

        os_unfair_lock_unlock((v6 + 96));
      }

      sub_9A60(v8);
    }
  }
}

void sub_2140(uint64_t a1, const __CFString *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 48);
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (*(v3 + 40))
      {
        os_unfair_lock_lock((v6 + 96));
        if (qword_14148 != -1)
        {
          sub_A094();
        }

        v9 = qword_14160;
        if (os_signpost_enabled(qword_14160))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AudioSession_ErrorTimerExpiry", "", buf, 2u);
        }

        if (!a2 || !CFStringGetLength(a2))
        {
          a2 = @"unknown error";
        }

        v10 = *(v6 + 88);
        v11 = _CTServerConnectionCreateOnTargetQueue();
        *buf = v11;
        if (v11)
        {
          if (qword_14148 != -1)
          {
            sub_A0A8();
          }

          v12 = qword_14158;
          if (os_signpost_enabled(qword_14158))
          {
            *v15 = 0;
            _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AudioSession_ResetModem", "", v15, 2u);
          }

          MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, @"PCIe audio error: ");
          *v15 = MutableCopy;
          CFStringAppend(MutableCopy, a2);
          _CTServerConnectionResetModemWithCrashLogs();
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          CFRelease(v11);
        }

        else
        {
          if (qword_14148 != -1)
          {
            sub_A0A8();
          }

          v14 = qword_14150[0];
          if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
          {
            *v15 = 0;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "failed to open CTServer connection", v15, 2u);
          }
        }

        os_unfair_lock_unlock((v6 + 96));
      }

      sub_9A60(v8);
    }
  }
}

void sub_2370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9FF4(va);
  os_unfair_lock_unlock(v4 + 24);
  sub_9A60(v3);
  _Unwind_Resume(a1);
}

BOOL sub_23B0(uint64_t a1, _BOOL4 a2)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v4 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v11 = 67109120;
    v12 = a2;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AudioSession_WaitUntilReady", "timeout %u", &v11, 8u);
  }

  v5 = *(a1 + 104);
  v6 = *(v5 + 416);
  if (v6)
  {
    dispatch_retain(*(v5 + 416));
  }

  v7 = dispatch_time(0, 1000000 * a2);
  v8 = dispatch_group_wait(v6, v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

  v9 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v11 = 67109120;
    v12 = v8 != 0;
    _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AudioSession_WaitUntilReady", "timed out %{BOOL}d", &v11, 8u);
  }

  return v8 == 0;
}

void sub_254C(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 100));
  v4 = mach_continuous_time();
  sub_26B4(a1 + 496, a1 + 328);
  waipc::SampleTimeline::currentTimestamp((a1 + 328));
  *(a1 + 1040) = v10;
  *(a1 + 1056) = v11;
  waipc::SampleTimeline::nextHostVariance((a1 + 328));
  v6 = atomic_load((a1 + 1144));
  if (((v6 & 1) != 0 || v5 >= *(a1 + 1128)) && v4 >= *(a1 + 1136) + *(a1 + 1152))
  {
    waipc::util::NonblockingEventSource::trigger(*(a1 + 1168), 1u);
    *(a1 + 1152) = v4;
  }

  v7 = *(a1 + 1040) <= *(a1 + 1072) && *(a1 + 1064) == *(a1 + 1096);
  if (*(a1 + 1048) < v4 && !v7)
  {
    v8 = *(a1 + 1056);
    *(a1 + 1072) = *(a1 + 1040);
    *(a1 + 1088) = v8;
  }

  sub_185C(a1);
  mach_get_times();
  *a2 = *(a1 + 1072);
  v9 = *(a1 + 1096);
  a2[1] = *(a1 + 1080);
  a2[2] = v9;
  os_unfair_lock_unlock((a1 + 100));
}

BOOL sub_26B4(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  v4 = atomic_exchange((a1 + 512), 0);
  if (v4)
  {
    if (a2)
    {
      v5 = *(v4 + 16);
      *a2 = *v4;
      *(a2 + 16) = v5;
      v6 = *(v4 + 104);
      v7 = *(v4 + 120);
      v8 = *(v4 + 136);
      *(a2 + 88) = *(v4 + 88);
      *(a2 + 136) = v8;
      *(a2 + 120) = v7;
      *(a2 + 104) = v6;
      v9 = *(v4 + 40);
      v10 = *(v4 + 56);
      *(a2 + 72) = *(v4 + 72);
      *(a2 + 56) = v10;
      *(a2 + 40) = v9;
      v11 = *(v4 + 144);
      *(a2 + 160) = *(v4 + 160);
      *(a2 + 144) = v11;
    }

    sub_9E7C(a1, v4);
  }

  os_unfair_lock_unlock((a1 + 4));
  return v4 != 0;
}

void sub_277C(os_unfair_lock_t lock, uint64_t a2)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  v4 = sub_A05C(lock);
  *v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 16) = v5;
  v8 = atomic_exchange(&lock[56], v4);
  if (v8)
  {
    sub_9D90(lock, v8);
  }

  if (lock)
  {

    os_unfair_lock_unlock(lock);
  }
}

void sub_280C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2828(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 96));
  v2 = *(a1 + 1176);
  if (v2)
  {
    sub_2D54(v2 + 144, v2 + 72);
    v3 = *(a1 + 1176);
    mach_timebase_info(&info);
    v4 = mach_continuous_time();
    v5 = *(a1 + 1160);
    numer = info.numer;
    denom = info.denom;
    sub_309C(v31, @"Sample Rate", (a1 + 24));
    sub_3154(v32, @"Timestamp Period", (a1 + 32));
    v32[2] = @"Error Timeout";
    LODWORD(valuePtr) = *(a1 + 40);
    if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    sub_309C(&v34, @"Error Threshold", (a1 + 48));
    sub_309C(v35, @"Measurement Moderation", (a1 + 56));
    v8 = *(a1 + 104);
    if (v8)
    {
      v8 = waipc::timesync::BasebandService::dumpState(v8);
    }

    v35[2] = @"Timesync";
    v35[3] = v8;
    valuePtr = 0;
    if (waipc::util::GroupErrorTimer::isRunning(*(a1 + 144)))
    {
      v9 = kCFBooleanTrue;
    }

    else
    {
      v9 = kCFBooleanFalse;
    }

    v35[4] = @"Error Timer Running";
    v35[5] = v9;
    v10 = waipc::util::GroupErrorTimer::copyReason(*(a1 + 144));
    v35[6] = @"Error Reason";
    v35[7] = v10;
    v27 = 0;
    if (*(a1 + 152))
    {
      v11 = kCFBooleanTrue;
    }

    else
    {
      v11 = kCFBooleanFalse;
    }

    v35[8] = @"Error Timer Started for Connection";
    v35[9] = v11;
    v12 = waipc::SampleTimeline::dumpState((a1 + 160));
    v35[10] = @"Timeline";
    v35[11] = v12;
    v26 = 0;
    sub_2DEC((v3 + 104), &cf);
    v35[12] = @"Current Timestamp";
    v13 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v35[13] = v13;
    sub_2DEC((v3 + 72), &v24);
    v35[14] = @"Last Timestamp";
    v14 = v24;
    if (v24)
    {
      CFRetain(v24);
    }

    v35[15] = v14;
    v35[16] = @"Uplink Schedule Valid";
    if (*(a1 + 1104))
    {
      v15 = kCFBooleanTrue;
    }

    else
    {
      v15 = kCFBooleanFalse;
    }

    v35[17] = v15;
    sub_3154(&v36, @"Uplink Schedule Basis", (a1 + 1112));
    sub_3154(v37, @"Uplink Schedule Interval", (a1 + 1120));
    v16 = atomic_load((a1 + 1144));
    if (v16)
    {
      v17 = kCFBooleanTrue;
    }

    else
    {
      v17 = kCFBooleanFalse;
    }

    v37[2] = @"Timeline Reset Pending";
    v37[3] = v17;
    sub_3154(&v38, @"Last Measurement Time", (a1 + 1152));
    sub_3154(&v39, @"Start Time", (a1 + 1160));
    v23 = ((v4 - v5) * numer / denom) / 1000000000.0;
    sub_33C8(&v40, @"Duration", &v23);
    sub_3240(v31, &v29);
    for (i = 37; i != -1; i -= 2)
    {
      v19 = v31[i];
      if (v19)
      {
        CFRelease(v19);
      }
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    v20 = v29;
  }

  else
  {
    v20 = 0;
  }

  os_unfair_lock_unlock((a1 + 96));
  return v20;
}

void sub_2C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_8BB0((v19 + 40));
  while (v18 != &a17)
  {
    v18 -= 16;
    sub_320C(v18);
  }

  os_unfair_lock_unlock(v17 + 24);
  _Unwind_Resume(a1);
}

BOOL sub_2D54(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  v4 = atomic_exchange((a1 + 224), 0);
  if (v4)
  {
    if (a2)
    {
      *a2 = *v4;
      v5 = *(v4 + 16);
      v6 = *(v4 + 32);
      v7 = *(v4 + 48);
      *(a2 + 64) = *(v4 + 64);
      *(a2 + 32) = v6;
      *(a2 + 48) = v7;
      *(a2 + 16) = v5;
    }

    sub_9D90(a1, v4);
  }

  os_unfair_lock_unlock((a1 + 4));
  return v4 != 0;
}

void sub_2DEC(uint64_t *a1@<X1>, void *a2@<X8>)
{
  sub_309C(v6, @"Sample", a1);
  sub_3154(&v7, @"Host", a1 + 1);
  sub_3154(&v8, @"Device", a1 + 2);
  sub_3154(&v9, @"Seed", a1 + 3);
  sub_2F3C(v6, a2);
  for (i = 7; i != -1; i -= 2)
  {
    v5 = v6[i];
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void sub_2EDC(_Unwind_Exception *a1)
{
  v3 = v1 + 48;
  v4 = -64;
  do
  {
    v3 = sub_320C(v3) - 16;
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

const void *sub_2F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  *keys = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  v4 = (a1 + 8);
  v5 = 64;
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v11 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(kCFAllocatorDefault, keys, v11, v3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return result;
}

void sub_3060(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_8EBC(v1);
  _Unwind_Resume(a1);
}

void *sub_309C(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void *sub_3154(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

uint64_t sub_320C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *sub_3240@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *keys = 0u;
  v12 = 0;
  v4 = (a1 + 8);
  v5 = 304;
  memset(v11, 0, sizeof(v11));
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v11 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(kCFAllocatorDefault, keys, v11, v3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return result;
}

void sub_338C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_8EBC(v1);
  _Unwind_Resume(a1);
}

void *sub_33C8(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

const void **sub_3480(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_34B4(id a1)
{
  for (i = 0; i != 4; ++i)
  {
    qword_14150[i] = os_log_create("com.apple.WirelessIPC.audio.NetworkUplinkClock", (&off_10450)[i]);
  }
}

uint64_t sub_3510(_UNKNOWN **a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v8 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "QueryInterface", "", buf, 2u);
  }

  if (a1 == &off_14088)
  {
    if (a4)
    {
      *&v20.byte0 = a2;
      *&v20.byte8 = a3;
      v12 = CFUUIDCreateFromUUIDBytes(0, v20);
      if (v12)
      {
        if (qword_14148 != -1)
        {
          sub_A0A8();
        }

        v13 = qword_14160;
        if (os_signpost_enabled(qword_14160))
        {
          *buf = 138412290;
          v19 = v12;
          _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "QueryInterface", "uuid %@", buf, 0xCu);
        }

        v14 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
        if (CFEqual(v12, v14) || (v15 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u), CFEqual(v12, v15)))
        {
          sub_38EC(&off_14088);
          v9 = 0;
          *a4 = &off_14088;
        }

        else
        {
          v9 = 2147483652;
        }

        goto LABEL_20;
      }

      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      v9 = 1852797029;
      v10 = qword_14150[0];
      if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v11 = "failed to create CFUUID";
        goto LABEL_10;
      }
    }

    else
    {
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      v9 = 1852797029;
      v10 = qword_14150[0];
      if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v11 = "nowhere to store returned interface";
        goto LABEL_10;
      }
    }

LABEL_30:
    v12 = 0;
    goto LABEL_31;
  }

  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

  v9 = 560947818;
  v10 = qword_14150[0];
  if (!os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
  {
    goto LABEL_30;
  }

  *buf = 0;
  v11 = "bad driver reference";
LABEL_10:
  _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
  v12 = 0;
LABEL_20:
  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

LABEL_31:
  v16 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    *buf = 67109120;
    LODWORD(v19) = v9;
    _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "QueryInterface", "success %{waipc:4cc}u", buf, 8u);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t sub_38EC(_UNKNOWN **a1)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v2 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    LOWORD(v7[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AddRef", "", v7, 2u);
  }

  os_unfair_lock_lock(&unk_14008);
  if (a1 == &off_14088)
  {
    if (dword_14028 != -1)
    {
      v4 = ++dword_14028;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v3 = qword_14150[0];
    if (!os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      v4 = 0;
      goto LABEL_16;
    }

    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "bad driver reference", v7, 2u);
  }

  v4 = 0;
LABEL_13:
  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

LABEL_16:
  v5 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AddRef", "result %u", v7, 8u);
  }

  os_unfair_lock_unlock(&unk_14008);
  return v4;
}

uint64_t sub_3ACC(_UNKNOWN **a1)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v2 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    LOWORD(v7[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Release", "", v7, 2u);
  }

  os_unfair_lock_lock(&unk_14008);
  if (a1 == &off_14088)
  {
    if (dword_14028)
    {
      v4 = --dword_14028;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v3 = qword_14150[0];
    if (!os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      v4 = 0;
      goto LABEL_16;
    }

    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "bad driver reference", v7, 2u);
  }

  v4 = 0;
LABEL_13:
  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

LABEL_16:
  v5 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Release", "result %u", v7, 8u);
  }

  os_unfair_lock_unlock(&unk_14008);
  return v4;
}

uint64_t sub_3CA8(_UNKNOWN **a1, int *a2)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v4 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    LOWORD(v12[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Initialize", "", v12, 2u);
  }

  os_unfair_lock_lock(&unk_14008);
  if (a1 == &off_14088)
  {
    off_14000[0] = a2;
    v8 = dispatch_workloop_create("com.apple.WirelessIPC.audio.NetworkUplinkClock");
    qword_14010 = v8;
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    qword_14018 = dispatch_queue_create_with_target_V2("com.apple.WirelessIPC.audio.NetworkUplinkClock.PlugIn", v9, v8);
    os_unfair_lock_assert_owner(&unk_14008);
    if (!os_variant_has_internal_diagnostics() || (qword_14020 = os_state_add_handler()) != 0)
    {
      v5 = 0;
LABEL_14:
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      goto LABEL_16;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v5 = 2003329396;
    v6 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v12[0]) = 0;
      v7 = "failed to add state handler";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v5 = 560947818;
    v6 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v12[0]) = 0;
      v7 = "bad driver reference";
LABEL_10:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, v7, v12, 2u);
      goto LABEL_14;
    }
  }

LABEL_16:
  v10 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v12[0] = 67109120;
    v12[1] = v5;
    _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Initialize", "result %{waipc:4cc}u", v12, 8u);
  }

  os_unfair_lock_unlock(&unk_14008);
  return v5;
}

uint64_t sub_3F60(_UNKNOWN **a1)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v2 = 1970171760;
  v3 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    LOWORD(v8[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateDevice", "", v8, 2u);
    v4 = qword_14148;
    if (a1 == &off_14088)
    {
      goto LABEL_10;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }
  }

  else if (a1 == &off_14088)
  {
    goto LABEL_12;
  }

  v2 = 560947818;
  v5 = qword_14150[0];
  if (!os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
  {
    goto LABEL_12;
  }

  LOWORD(v8[0]) = 0;
  _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "bad driver reference", v8, 2u);
  v4 = qword_14148;
LABEL_10:
  if (v4 != -1)
  {
    sub_A0A8();
  }

LABEL_12:
  v6 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v8[0] = 67109120;
    v8[1] = v2;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateDevice", "result %{waipc:4cc}u", v8, 8u);
  }

  return v2;
}

uint64_t sub_411C(_UNKNOWN **a1)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v2 = 1970171760;
  v3 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    LOWORD(v8[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DestroyDevice", "", v8, 2u);
    v4 = qword_14148;
    if (a1 == &off_14088)
    {
      goto LABEL_10;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }
  }

  else if (a1 == &off_14088)
  {
    goto LABEL_12;
  }

  v2 = 560947818;
  v5 = qword_14150[0];
  if (!os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
  {
    goto LABEL_12;
  }

  LOWORD(v8[0]) = 0;
  _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "bad driver reference", v8, 2u);
  v4 = qword_14148;
LABEL_10:
  if (v4 != -1)
  {
    sub_A0A8();
  }

LABEL_12:
  v6 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v8[0] = 67109120;
    v8[1] = v2;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DestroyDevice", "result %{waipc:4cc}u", v8, 8u);
  }

  return v2;
}

uint64_t sub_42D8(_UNKNOWN **a1, int a2)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v4 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    LOWORD(v10[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AddDeviceClient", "", v10, 2u);
  }

  if (a1 == &off_14088)
  {
    if (a2 == 2)
    {
      v5 = 0;
      goto LABEL_17;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v5 = 560947818;
    v6 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      v7 = "bad device ID";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v5 = 560947818;
    v6 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      v7 = "bad driver reference";
LABEL_16:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, v7, v10, 2u);
LABEL_17:
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }
    }
  }

  v8 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v10[0] = 67109120;
    v10[1] = v5;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AddDeviceClient", "result %{waipc:4cc}u", v10, 8u);
  }

  return v5;
}

uint64_t sub_44DC(_UNKNOWN **a1, int a2)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v4 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    LOWORD(v10[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RemoveDeviceClient", "", v10, 2u);
  }

  if (a1 == &off_14088)
  {
    if (a2 == 2)
    {
      v5 = 0;
      goto LABEL_17;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v5 = 560947818;
    v6 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      v7 = "bad device ID";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v5 = 560947818;
    v6 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      v7 = "bad driver reference";
LABEL_16:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, v7, v10, 2u);
LABEL_17:
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }
    }
  }

  v8 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v10[0] = 67109120;
    v10[1] = v5;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RemoveDeviceClient", "result %{waipc:4cc}u", v10, 8u);
  }

  return v5;
}

uint64_t sub_46E0(_UNKNOWN **a1, int a2, uint64_t a3, void (**a4)(void, void))
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v8 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    LOWORD(v20[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PerformDeviceConfigurationChange", "", v20, 2u);
  }

  if (a1 == &off_14088)
  {
    if (a2 == 2)
    {
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      v12 = qword_14168;
      v13 = os_signpost_id_make_with_pointer(qword_14168, a4);
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = v13;
        if (os_signpost_enabled(v12))
        {
          LOWORD(v20[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_EVENT, v14, "DeviceConfigurationChange", "perform", v20, 2u);
        }
      }

      if (a3)
      {
        sub_A0FC();
      }

      if (!a4)
      {
        sub_A128();
      }

      a4[2](a4, 1);
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      v15 = qword_14168;
      v16 = os_signpost_id_make_with_pointer(qword_14168, a4);
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = v16;
        if (os_signpost_enabled(v15))
        {
          LOWORD(v20[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_0, v15, OS_SIGNPOST_INTERVAL_END, v17, "DeviceConfigurationChange", "done", v20, 2u);
        }
      }

      _Block_release(a4);
      v9 = 0;
      goto LABEL_29;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v9 = 560947818;
    v10 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      v11 = "bad device ID";
      goto LABEL_28;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v9 = 560947818;
    v10 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      v11 = "bad driver reference";
LABEL_28:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, v11, v20, 2u);
LABEL_29:
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }
    }
  }

  v18 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v20[0] = 67109120;
    v20[1] = v9;
    _os_signpost_emit_with_name_impl(&dword_0, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PerformDeviceConfigurationChange", "result %{waipc:4cc}u", v20, 8u);
  }

  return v9;
}

uint64_t sub_4A0C(_UNKNOWN **a1, int a2, uint64_t a3, void (**a4)(void, void))
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v8 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    LOWORD(v20[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AbortDeviceConfigurationChange", "", v20, 2u);
  }

  if (a1 == &off_14088)
  {
    if (a2 == 2)
    {
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      v12 = qword_14168;
      v13 = os_signpost_id_make_with_pointer(qword_14168, a4);
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = v13;
        if (os_signpost_enabled(v12))
        {
          LOWORD(v20[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_EVENT, v14, "DeviceConfigurationChange", "aborted", v20, 2u);
        }
      }

      if (a3)
      {
        sub_A154();
      }

      if (!a4)
      {
        sub_A180();
      }

      a4[2](a4, 0);
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      v15 = qword_14168;
      v16 = os_signpost_id_make_with_pointer(qword_14168, a4);
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = v16;
        if (os_signpost_enabled(v15))
        {
          LOWORD(v20[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_0, v15, OS_SIGNPOST_INTERVAL_END, v17, "DeviceConfigurationChange", "done", v20, 2u);
        }
      }

      _Block_release(a4);
      v9 = 0;
      goto LABEL_29;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v9 = 560947818;
    v10 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      v11 = "bad device ID";
      goto LABEL_28;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v9 = 560947818;
    v10 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      v11 = "bad driver reference";
LABEL_28:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, v11, v20, 2u);
LABEL_29:
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }
    }
  }

  v18 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v20[0] = 67109120;
    v20[1] = v9;
    _os_signpost_emit_with_name_impl(&dword_0, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AbortDeviceConfigurationChange", "result %{waipc:4cc}u", v20, 8u);
  }

  return v9;
}

uint64_t sub_4D38(_UNKNOWN **a1, int a2, uint64_t a3, int *a4)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v7 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v8 = *a4;
    v9 = a4[1];
    v10 = a4[2];
    v20 = 67109888;
    v21 = a2;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    v26 = 1024;
    v27 = v10;
    _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "HasProperty", "object %u, selector %{waipc:4cc}u, scope %{waipc:4cc}u, element %u", &v20, 0x1Au);
  }

  if (a1 != &off_14088)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v11 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      v12 = "bad driver reference";
LABEL_10:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, &v20, 2u);
LABEL_11:
      v13 = 0;
      goto LABEL_64;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v11 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      v12 = "no address";
      goto LABEL_10;
    }

LABEL_23:
    v13 = 0;
    goto LABEL_66;
  }

  if (a2 == 2)
  {
    v13 = 0;
    v14 = *a4;
    if (*a4 > 1818850925)
    {
      if (v14 <= 1853059699)
      {
        if (v14 > 1819173228)
        {
          if (v14 != 1819173229 && v14 != 1819569763)
          {
            v16 = 1853059619;
            goto LABEL_62;
          }

          goto LABEL_63;
        }

        v17 = 1818850926;
LABEL_56:
        if (v14 == v17)
        {
          goto LABEL_63;
        }

        v16 = 1819107691;
        goto LABEL_62;
      }

      if (v14 > 1919512166)
      {
        if (v14 != 1919512167 && v14 != 1953653102)
        {
          goto LABEL_47;
        }

        goto LABEL_63;
      }

      if (v14 == 1853059700)
      {
        goto LABEL_63;
      }

      v16 = 1870098020;
    }

    else if (v14 > 1668050794)
    {
      if (v14 > 1668639075)
      {
        if (v14 != 1668639076 && v14 != 1668641652)
        {
          v16 = 1735354734;
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      if (v14 == 1668050795)
      {
        goto LABEL_63;
      }

      v16 = 1668510818;
    }

    else
    {
      if (v14 > 1650682994)
      {
        if (v14 == 1650682995 || v14 == 1668047219)
        {
          goto LABEL_63;
        }

        v15 = 27492;
        goto LABEL_39;
      }

      if (v14 == 1396918340)
      {
        goto LABEL_63;
      }

      v16 = 1414746691;
    }

LABEL_62:
    if (v14 != v16)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if (a2 != 1)
  {
    goto LABEL_11;
  }

  v13 = 0;
  v14 = *a4;
  if (*a4 <= 1819173228)
  {
    if (v14 <= 1668049698)
    {
      if (v14 == 1650682995 || v14 == 1651472419)
      {
        goto LABEL_63;
      }

      v15 = 24947;
LABEL_39:
      v16 = v15 | 0x636C0000;
      goto LABEL_62;
    }

    if (v14 == 1668049699)
    {
      goto LABEL_63;
    }

    v17 = 1684370979;
    goto LABEL_56;
  }

  if (v14 <= 1937007733)
  {
    if (v14 == 1819173229 || v14 == 1870098020)
    {
      goto LABEL_63;
    }

    v16 = 1920168547;
    goto LABEL_62;
  }

  if ((v14 - 1969841250) >= 3)
  {
LABEL_47:
    v16 = 1937007734;
    goto LABEL_62;
  }

LABEL_63:
  v13 = 1;
LABEL_64:
  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

LABEL_66:
  v18 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v20 = 67109120;
    v21 = v13;
    _os_signpost_emit_with_name_impl(&dword_0, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "HasProperty", "result %{BOOL}d", &v20, 8u);
  }

  return v13;
}

uint64_t sub_51D8(_UNKNOWN **a1, int a2, uint64_t a3, int *a4, char *a5)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v9 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v10 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v24 = 67109888;
    v25 = a2;
    v26 = 1024;
    v27 = v10;
    v28 = 1024;
    v29 = v11;
    v30 = 1024;
    v31 = v12;
    _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IsPropertySettable", "object %u, selector %{waipc:4cc}u, scope %{waipc:4cc}u, element %u", &v24, 0x1Au);
  }

  if (a1 != &off_14088)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v13 = 560947818;
    v14 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      v15 = "bad driver reference";
LABEL_10:
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, v15, &v24, 2u);
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (a4)
  {
    if (!a5)
    {
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      v13 = 1852797029;
      v14 = qword_14150[0];
      if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        v15 = "nowhere to store result";
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    if (a2 != 2)
    {
      if (a2 != 1)
      {
        v13 = 560947818;
        goto LABEL_11;
      }

      v13 = 2003332927;
      v18 = *a4;
      if (*a4 <= 1819173228)
      {
        if (v18 > 1668049698)
        {
          if (v18 == 1668049699 || v18 == 1684370979)
          {
            goto LABEL_66;
          }

          v19 = 1819107691;
        }

        else
        {
          if (v18 == 1650682995 || v18 == 1651472419)
          {
            goto LABEL_66;
          }

          v19 = 1668047219;
        }
      }

      else
      {
        if (v18 > 1937007733)
        {
          if ((v18 - 1969841250) >= 3)
          {
            v19 = 1937007734;
            goto LABEL_65;
          }

LABEL_66:
          v13 = 0;
          *a5 = 0;
          goto LABEL_11;
        }

        if (v18 == 1819173229 || v18 == 1870098020)
        {
          goto LABEL_66;
        }

        v19 = 1920168547;
      }

LABEL_65:
      if (v18 != v19)
      {
        goto LABEL_11;
      }

      goto LABEL_66;
    }

    v21 = 0;
    v13 = 2003332927;
    v22 = *a4;
    if (*a4 <= 1818850925)
    {
      if (v22 > 1668050794)
      {
        if (v22 <= 1668639075)
        {
          if (v22 == 1668050795)
          {
            goto LABEL_79;
          }

          v23 = 1668510818;
        }

        else
        {
          if (v22 == 1668639076 || v22 == 1668641652)
          {
            goto LABEL_79;
          }

          v23 = 1735354734;
        }

        goto LABEL_76;
      }

      if (v22 > 1650682994)
      {
        if (v22 == 1650682995 || v22 == 1668047219)
        {
          goto LABEL_79;
        }

        v23 = 1668049764;
        goto LABEL_76;
      }

      if (v22 == 1396918340)
      {
        goto LABEL_79;
      }

      if (v22 != 1414746691)
      {
        goto LABEL_11;
      }

LABEL_78:
      v21 = 1;
      goto LABEL_79;
    }

    if (v22 <= 1853059699)
    {
      if (v22 <= 1819173228)
      {
        if (v22 == 1818850926)
        {
          goto LABEL_79;
        }

        v23 = 1819107691;
      }

      else
      {
        if (v22 == 1819173229 || v22 == 1819569763)
        {
          goto LABEL_79;
        }

        v23 = 1853059619;
      }

      goto LABEL_76;
    }

    if (v22 <= 1919512166)
    {
      if (v22 == 1853059700)
      {
        goto LABEL_78;
      }

      v23 = 1870098020;
    }

    else
    {
      if (v22 == 1919512167 || v22 == 1937007734)
      {
        goto LABEL_79;
      }

      v23 = 1953653102;
    }

LABEL_76:
    if (v22 != v23)
    {
LABEL_11:
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      goto LABEL_13;
    }

LABEL_79:
    v13 = 0;
    *a5 = v21;
    goto LABEL_11;
  }

  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

  v13 = 1852797029;
  v14 = qword_14150[0];
  if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
  {
    LOWORD(v24) = 0;
    v15 = "no address";
    goto LABEL_10;
  }

LABEL_13:
  v16 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    if (a5)
    {
      v17 = *a5;
    }

    else
    {
      v17 = 0;
    }

    v24 = 67109376;
    v25 = v13;
    v26 = 1024;
    v27 = v17;
    _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IsPropertySettable", "result %{waipc:4cc}u, isSettable %{BOOL}d", &v24, 0xEu);
  }

  return v13;
}

uint64_t sub_5744(_UNKNOWN **a1, int a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, int *a7)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v11 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v12 = *a4;
    v13 = a4[1];
    v14 = a4[2];
    v26 = 67109888;
    v27 = a2;
    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = v13;
    v32 = 1024;
    v33 = v14;
    _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetPropertyDataSize", "object %u, selector %{waipc:4cc}u, scope %{waipc:4cc}u, element %u", &v26, 0x1Au);
  }

  if (a1 != &off_14088)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v15 = 560947818;
    v16 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      v17 = "bad driver reference";
LABEL_10:
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, v17, &v26, 2u);
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (a4)
  {
    if (!a7)
    {
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      v15 = 1852797029;
      v16 = qword_14150[0];
      if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        v17 = "nowhere to store result";
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    if (a2 == 2)
    {
      v15 = 2003332927;
      v20 = *a4;
      v21 = 4;
      if (*a4 <= 1818850925)
      {
        if (v20 > 1668050794)
        {
          if (v20 <= 1668639075)
          {
            if (v20 == 1668050795)
            {
              goto LABEL_81;
            }

            v22 = 1668510818;
            goto LABEL_75;
          }

          if (v20 != 1668639076)
          {
            if (v20 == 1668641652)
            {
              v21 = 24;
              goto LABEL_81;
            }

            v22 = 1735354734;
            goto LABEL_75;
          }

          goto LABEL_80;
        }

        if (v20 <= 1650682994)
        {
          if (v20 != 1396918340)
          {
            v22 = 1414746691;
            goto LABEL_75;
          }

          goto LABEL_80;
        }

        if (v20 == 1650682995 || v20 == 1668047219)
        {
          goto LABEL_81;
        }

        v24 = 27492;
LABEL_52:
        v22 = v24 | 0x636C0000;
        goto LABEL_75;
      }

      if (v20 > 1853059699)
      {
        if (v20 > 1919512166)
        {
          if (v20 == 1919512167 || v20 == 1937007734)
          {
            goto LABEL_81;
          }

          v22 = 1953653102;
          goto LABEL_75;
        }

        if (v20 == 1853059700)
        {
          goto LABEL_80;
        }

        if (v20 != 1870098020)
        {
          goto LABEL_11;
        }

        goto LABEL_79;
      }

      if (v20 > 1819173228)
      {
        if (v20 != 1819173229)
        {
          if (v20 != 1819569763)
          {
            if (v20 != 1853059619)
            {
              goto LABEL_11;
            }

            v21 = 16;
          }

          goto LABEL_81;
        }

        goto LABEL_80;
      }

      if (v20 == 1818850926)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (a2 != 1)
      {
        v15 = 560947818;
        goto LABEL_11;
      }

      v15 = 2003332927;
      v20 = *a4;
      v21 = 4;
      if (*a4 > 1819173228)
      {
        if (v20 > 1937007733)
        {
          if ((v20 - 1969841250) < 3)
          {
            goto LABEL_81;
          }

          v22 = 1937007734;
LABEL_75:
          if (v20 != v22)
          {
LABEL_11:
            if (qword_14148 != -1)
            {
              sub_A0A8();
            }

            goto LABEL_13;
          }

LABEL_81:
          v15 = 0;
          *a7 = v21;
          goto LABEL_11;
        }

        if (v20 != 1819173229)
        {
          if (v20 == 1870098020)
          {
            goto LABEL_81;
          }

          v25 = 1920168547;
          goto LABEL_71;
        }

LABEL_80:
        v21 = 8;
        goto LABEL_81;
      }

      if (v20 <= 1668049698)
      {
        if (v20 == 1650682995)
        {
          goto LABEL_81;
        }

        if (v20 != 1651472419)
        {
          v24 = 24947;
          goto LABEL_52;
        }

LABEL_79:
        v21 = 0;
        goto LABEL_81;
      }

      if (v20 == 1668049699)
      {
        goto LABEL_81;
      }

      if (v20 == 1684370979)
      {
        goto LABEL_79;
      }
    }

    v25 = 1819107691;
LABEL_71:
    if (v20 != v25)
    {
      goto LABEL_11;
    }

    goto LABEL_80;
  }

  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

  v15 = 1852797029;
  v16 = qword_14150[0];
  if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
  {
    LOWORD(v26) = 0;
    v17 = "no address";
    goto LABEL_10;
  }

LABEL_13:
  v18 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    if (a7)
    {
      v19 = *a7;
    }

    else
    {
      v19 = 0;
    }

    v26 = 67109376;
    v27 = v15;
    v28 = 1024;
    v29 = v19;
    _os_signpost_emit_with_name_impl(&dword_0, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetPropertyDataSize", "result %{waipc:4cc}u, dataSize %u", &v26, 0xEu);
  }

  return v15;
}

uint64_t sub_5CB8(_UNKNOWN **a1, int a2, int a3, int *a4, unsigned int a5, CFStringRef *a6, unsigned int a7, int *a8, _DWORD *__dst)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v16 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v17 = *a4;
    v18 = a4[1];
    v19 = a4[2];
    v44 = 67109888;
    *v45 = a2;
    *&v45[4] = 1024;
    *&v45[6] = v17;
    v46 = 1024;
    v47 = v18;
    v48 = 1024;
    v49 = v19;
    _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetPropertyData", "object %u, selector %{waipc:4cc}u, scope %{waipc:4cc}u, element %u", &v44, 0x1Au);
  }

  if (a1 != &off_14088)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v20 = 560947818;
    v21 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v44) = 0;
      v22 = "bad driver reference";
LABEL_10:
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, v22, &v44, 2u);
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (a4)
  {
    if (!a8)
    {
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      v20 = 1852797029;
      v21 = qword_14150[0];
      if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
      {
        LOWORD(v44) = 0;
        v22 = "nowhere to store result size";
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    if (!__dst)
    {
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      v20 = 1852797029;
      v21 = qword_14150[0];
      if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
      {
        LOWORD(v44) = 0;
        v22 = "nowhere to store result";
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    if (a2 != 2)
    {
      if (a2 != 1)
      {
        v20 = 560947818;
        goto LABEL_11;
      }

      v20 = 2003332927;
      v25 = *a4;
      if (*a4 > 1819173228)
      {
        if (v25 > 1937007733)
        {
          if (v25 <= 1969841250)
          {
            if (v25 == 1937007734)
            {
              goto LABEL_87;
            }

            v26 = 25698;
LABEL_86:
            if (v25 != (v26 | 0x75690000))
            {
              goto LABEL_11;
            }

LABEL_87:
            if (a7 >= 4)
            {
              *__dst = 0;
LABEL_123:
              v29 = 4;
              goto LABEL_124;
            }

LABEL_147:
            v20 = 561211770;
            goto LABEL_11;
          }

          if (v25 != 1969841251)
          {
            v26 = 25700;
            goto LABEL_86;
          }

          v20 = 561211770;
          if (a5 < 8)
          {
            goto LABEL_11;
          }

          if (a6)
          {
            if (qword_14148 != -1)
            {
              sub_A0A8();
            }

            v35 = qword_14160;
            if (os_signpost_enabled(qword_14160))
            {
              v36 = *a6;
              v44 = 138412290;
              *v45 = v36;
              _os_signpost_emit_with_name_impl(&dword_0, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetPropertyData", "uid %@", &v44, 0xCu);
            }

            v37 = CFStringCompare(*a6, @"NetworkUplinkClock_UID", 0);
            if (a7 < 4)
            {
              goto LABEL_11;
            }

            v30 = 2 * (v37 == kCFCompareEqualTo);
            goto LABEL_122;
          }

          v20 = 1852797029;
LABEL_11:
          if (qword_14148 != -1)
          {
            sub_A0A8();
          }

          goto LABEL_13;
        }

        if (v25 == 1819173229)
        {
          if (a7 < 8)
          {
            goto LABEL_147;
          }

          v33 = @"Network Uplink PlugIn";
          goto LABEL_119;
        }

        if (v25 != 1870098020)
        {
          if (v25 != 1920168547)
          {
            goto LABEL_11;
          }

          if (a7 < 8)
          {
            goto LABEL_147;
          }

          v33 = &stru_10AA8;
          goto LABEL_119;
        }

LABEL_89:
        if (a7 >= 4)
        {
          v30 = 2;
          goto LABEL_122;
        }

        goto LABEL_108;
      }

      v29 = 0;
      if (v25 > 1668049698)
      {
        if (v25 == 1668049699)
        {
          goto LABEL_89;
        }

        if (v25 != 1684370979)
        {
          if (v25 != 1819107691)
          {
            goto LABEL_11;
          }

          if (a7 < 8)
          {
            goto LABEL_147;
          }

          v33 = @"Apple Inc.";
LABEL_119:
          *__dst = v33;
          v29 = 8;
        }
      }

      else
      {
        if (v25 == 1650682995)
        {
          if (a7 < 4)
          {
            goto LABEL_147;
          }

          v30 = 1634689642;
LABEL_122:
          *__dst = v30;
          goto LABEL_123;
        }

        if (v25 != 1651472419)
        {
          if (v25 != 1668047219)
          {
            goto LABEL_11;
          }

          if (a7 < 4)
          {
            goto LABEL_147;
          }

          v30 = 1634757735;
          goto LABEL_122;
        }
      }

LABEL_124:
      v20 = 0;
LABEL_153:
      *a8 = v29;
      goto LABEL_11;
    }

    v20 = 2003332927;
    v28 = *a4;
    if (*a4 > 1818850925)
    {
      if (v28 > 1853059699)
      {
        if (v28 <= 1919512166)
        {
          if (v28 != 1853059700)
          {
            if (v28 == 1870098020)
            {
              v20 = 0;
              *a8 = 0;
            }

            goto LABEL_11;
          }

          os_unfair_lock_lock(&unk_14008);
          if (a7 >= 8)
          {
            v20 = 0;
            *__dst = qword_14030;
            v41 = 8;
            goto LABEL_155;
          }

          goto LABEL_149;
        }

        if (v28 == 1919512167)
        {
          os_unfair_lock_lock(&unk_14008);
          if (a7 >= 4)
          {
            v20 = 0;
            v31 = vcvtad_u64_f64(*&qword_14030 * 0.3);
            goto LABEL_141;
          }

          goto LABEL_149;
        }

        if (v28 != 1937007734)
        {
          if (v28 != 1953653102)
          {
            goto LABEL_11;
          }

          if (a7 < 4)
          {
            goto LABEL_147;
          }

          v20 = 0;
          v32 = 1885563168;
          goto LABEL_151;
        }
      }

      else
      {
        if (v28 > 1819173228)
        {
          if (v28 != 1819173229)
          {
            if (v28 != 1819569763)
            {
              if (v28 != 1853059619)
              {
                goto LABEL_11;
              }

              if (a7 < 0x10)
              {
LABEL_108:
                v29 = 0;
                goto LABEL_124;
              }

              *__dst = xmmword_A988;
              v29 = 16;
              goto LABEL_124;
            }

            goto LABEL_106;
          }

          if (a7 < 8)
          {
            goto LABEL_147;
          }

          v20 = 0;
          v34 = @"Network Uplink Clock Device";
          goto LABEL_138;
        }

        if (v28 != 1818850926)
        {
          if (v28 != 1819107691)
          {
            goto LABEL_11;
          }

          if (a7 < 8)
          {
            goto LABEL_147;
          }

          v20 = 0;
          v34 = @"Apple Inc.";
          goto LABEL_138;
        }
      }
    }

    else
    {
      if (v28 <= 1668050794)
      {
        if (v28 > 1650682994)
        {
          switch(v28)
          {
            case 1650682995:
              if (a7 < 4)
              {
                goto LABEL_147;
              }

              v20 = 0;
              v32 = 1634689642;
              break;
            case 1668047219:
              if (a7 < 4)
              {
                goto LABEL_147;
              }

              v20 = 0;
              v32 = 1633905771;
              break;
            case 1668049764:
LABEL_106:
              if (a7 < 4)
              {
                goto LABEL_147;
              }

              v20 = 0;
              *__dst = 0;
LABEL_152:
              v29 = 4;
              goto LABEL_153;
            default:
              goto LABEL_11;
          }

LABEL_151:
          *__dst = v32;
          goto LABEL_152;
        }

        if (v28 == 1396918340)
        {
          os_unfair_lock_lock(&unk_14048);
          v42 = qword_14050;
          if (qword_14050)
          {
            CFRetain(qword_14050);
          }

          if (a7 >= 8)
          {
            v20 = 0;
            *__dst = v42;
            *a8 = 8;
          }

          else
          {
            v20 = 561211770;
          }

          v43 = &unk_14048;
          goto LABEL_157;
        }

        if (v28 != 1414746691)
        {
          goto LABEL_11;
        }

        os_unfair_lock_lock(&unk_14008);
        if (a7 >= 4)
        {
          v20 = 0;
          v31 = *aLlec;
          goto LABEL_141;
        }

        goto LABEL_149;
      }

      if (v28 > 1668639075)
      {
        if (v28 != 1668639076)
        {
          if (v28 == 1668641652)
          {
            v38 = a7 / 0xC;
            if (a7 / 0xC >= 2)
            {
              v38 = 2;
            }

            v39 = 3 * v38;
            v40 = 4 * v39;
            if (a7 >= 0xC)
            {
              memcpy(__dst, "DHCStslp", (4 * v39));
            }

            v20 = 0;
            *a8 = v40;
            goto LABEL_11;
          }

          if (v28 != 1735354734)
          {
            goto LABEL_11;
          }

          os_unfair_lock_lock(&unk_14008);
          if (a7 >= 4)
          {
            v20 = 0;
            v31 = dword_1402C != 0;
LABEL_141:
            *__dst = v31;
            v41 = 4;
LABEL_155:
            *a8 = v41;
            goto LABEL_156;
          }

LABEL_149:
          v20 = 561211770;
LABEL_156:
          v43 = &unk_14008;
LABEL_157:
          os_unfair_lock_unlock(v43);
          goto LABEL_11;
        }

        if (a7 < 8)
        {
          goto LABEL_147;
        }

        v20 = 0;
        v34 = @"NetworkUplinkClock_UID";
LABEL_138:
        *__dst = v34;
        v29 = 8;
        goto LABEL_153;
      }

      if (v28 == 1668050795)
      {
        if (a7 < 4)
        {
          goto LABEL_147;
        }

        v20 = 0;
        v32 = 1835103847;
        goto LABEL_151;
      }

      if (v28 != 1668510818)
      {
        goto LABEL_11;
      }
    }

    if (a7 < 4)
    {
      goto LABEL_147;
    }

    v20 = 0;
    v32 = 1;
    goto LABEL_151;
  }

  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

  v20 = 1852797029;
  v21 = qword_14150[0];
  if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
  {
    LOWORD(v44) = 0;
    v22 = "no address";
    goto LABEL_10;
  }

LABEL_13:
  v23 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    if (a8)
    {
      v24 = *a8;
    }

    else
    {
      v24 = 0;
    }

    v44 = 67109376;
    *v45 = v20;
    *&v45[4] = 1024;
    *&v45[6] = v24;
    _os_signpost_emit_with_name_impl(&dword_0, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetPropertyData", "result %{waipc:4cc}u, dataSize %u", &v44, 0xEu);
  }

  return v20;
}

void sub_66A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10A4(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_66AC(_UNKNOWN **a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int a7, double *a8)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v13 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v14 = *a4;
    v15 = a4[1];
    v16 = a4[2];
    *buf = 67109888;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = v14;
    *&buf[14] = 1024;
    *&buf[16] = v15;
    *&buf[20] = 1024;
    *&buf[22] = v16;
    _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetPropertyData", "object %u, selector %{waipc:4cc}u, scope %{waipc:4cc}u, element %u", buf, 0x1Au);
  }

  memset(&v48[4], 0, 20);
  if (!off_14000[0])
  {
    sub_A1FC();
  }

  if (a1 != &off_14088)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v17 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "bad driver reference", buf, 2u);
    }

    v18 = 560947818;
LABEL_12:
    v47 = v18;
    goto LABEL_13;
  }

  if (!a4)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v21 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "no address", buf, 2u);
    }

    v18 = 1852797029;
    goto LABEL_12;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v47 = 2003332927;
      memset(&v48[4], 0, 20);
    }

    else
    {
      memset(&buf[4], 0, 20);
      v47 = 560947818;
      *v48 = *buf;
      *&v48[16] = 0;
    }

    goto LABEL_13;
  }

  if (*a4 != 1414746691)
  {
    if (*a4 != 1853059700)
    {
      a8 = 0;
      v22 = 2003332927;
      goto LABEL_94;
    }

    if (a7 >= 8)
    {
      v22 = 1852797029;
      if (a8)
      {
        if (qword_14148 != -1)
        {
          sub_A0A8();
        }

        v23 = qword_14160;
        if (os_signpost_enabled(qword_14160))
        {
          v24 = *a8;
          *buf = 134217984;
          *&buf[4] = v24;
          _os_signpost_emit_with_name_impl(&dword_0, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetPropertyData", "NominalSampleRate %lf", buf, 0xCu);
        }

        v25 = *a8;
        if (*a8 < 8000.0 || v25 > 48000.0)
        {
          if (qword_14148 != -1)
          {
            sub_A0A8();
          }

          v35 = qword_14150[0];
          if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
          {
            v36 = *a8;
            *buf = 134217984;
            *&buf[4] = v36;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "unsupported sample rate %lf", buf, 0xCu);
          }
        }

        else
        {
          os_unfair_lock_lock(&unk_14008);
          v26 = qword_14030;
          if (*&qword_14030 != v25)
          {
            v49 = 0;
            v50 = &v49;
            v51 = 0x2000000000;
            v52 = 0;
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 0x40000000;
            *&buf[16] = sub_8EF0;
            *&buf[24] = &unk_104B8;
            v60 = v25;
            v59 = &v49;
            v27 = _Block_copy(buf);
            v50[3] = v27;
            if (qword_14148 != -1)
            {
              sub_A0A8();
            }

            v28 = qword_14158;
            v29 = os_signpost_id_make_with_pointer(qword_14158, v50[3]);
            if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v30 = v29;
              if (os_signpost_enabled(v28))
              {
                *aBlock = 134218240;
                *&aBlock[4] = v26;
                *&aBlock[12] = 2048;
                *&aBlock[14] = v25;
                _os_signpost_emit_with_name_impl(&dword_0, v28, OS_SIGNPOST_INTERVAL_BEGIN, v30, "SampleRateChange", "oldRate %lf, newRate %lf", aBlock, 0x16u);
              }
            }

            if (qword_14148 != -1)
            {
              sub_A0A8();
            }

            if (os_signpost_enabled(qword_14168))
            {
              *aBlock = _NSConcreteStackBlock;
              *&aBlock[8] = 0x40000000;
              *&aBlock[16] = sub_9008;
              v62 = &unk_104E0;
              v63 = v27;
              v31 = _Block_copy(aBlock);
            }

            else
            {
              v31 = _Block_copy(v27);
            }

            v39 = v31;
            if (qword_14148 != -1)
            {
              sub_A0A8();
            }

            v40 = qword_14168;
            v41 = os_signpost_id_make_with_pointer(qword_14168, v39);
            if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v42 = v41;
              if (os_signpost_enabled(v40))
              {
                *block = 0;
                _os_signpost_emit_with_name_impl(&dword_0, v40, OS_SIGNPOST_INTERVAL_BEGIN, v42, "DeviceConfigurationChange", "async", block, 2u);
              }
            }

            *block = _NSConcreteStackBlock;
            v54 = 0x40000000;
            v55 = sub_9018;
            v56 = &unk_10500;
            v57 = v39;
            dispatch_async(qword_14018, block);
            _Block_release(v27);
            _Block_object_dispose(&v49, 8);
          }

          os_unfair_lock_unlock(&unk_14008);
          v22 = 0;
        }

        a8 = 0;
      }

      goto LABEL_94;
    }

LABEL_49:
    a8 = 0;
    v22 = 561211770;
LABEL_94:
    v43 = 0;
    goto LABEL_95;
  }

  if (a7 < 4)
  {
    goto LABEL_49;
  }

  v22 = 1852797029;
  if (!a8)
  {
    goto LABEL_94;
  }

  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

  v32 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v33 = *a8;
    *buf = 67109120;
    *&buf[4] = v33;
    _os_signpost_emit_with_name_impl(&dword_0, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetPropertyData", "TimeSource %{waipc:4cc}u", buf, 8u);
  }

  v34 = *a8;
  os_unfair_lock_lock(&unk_14008);
  if (v34 != 1128614988 && v34 != 1280262988)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v38 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v34;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "unsupported time source %{waipc:4cc}u", buf, 8u);
    }

    a8 = 0;
    goto LABEL_84;
  }

  if (*aLlec != v34)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v37 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      strcpy(&buf[4], "LLEC");
      buf[9] = 4;
      *&buf[10] = v34;
      *&buf[14] = 1024;
      *&buf[16] = dword_1402C;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "changing time source %{waipc:4cc}u -> %{waipc:4cc}u (running %u)", buf, 0x14u);
    }

    if (dword_1402C)
    {
      if (*aLlec == 1280262988)
      {
        if (v34 != 1128614988)
        {
          v44 = "newTimeSource == kNetworkUplinkClockTimeSourceCellular";
          v45 = 1713;
          goto LABEL_113;
        }

        if (qword_14170 != -1)
        {
          sub_A1AC();
        }

        if (byte_14178 != 1)
        {
          goto LABEL_104;
        }

        if (qword_14180 != -1)
        {
          sub_A1D4();
        }

        if ((byte_14188 & 1) == 0)
        {
LABEL_104:
          sub_933C();
        }
      }

      else
      {
        if (*aLlec != 1128614988)
        {
          v44 = "false";
          v45 = 1743;
          goto LABEL_113;
        }

        if (v34 != 1280262988)
        {
          v44 = "newTimeSource == kNetworkUplinkClockTimeSourceLocal";
          v45 = 1695;
          goto LABEL_113;
        }

        if (qword_14170 != -1)
        {
          sub_A1AC();
        }

        if (byte_14178 != 1)
        {
          goto LABEL_78;
        }

        if (qword_14180 != -1)
        {
          sub_A1D4();
        }

        if ((byte_14188 & 1) == 0)
        {
LABEL_78:
          os_unfair_lock_lock(&stru_14060);
          qword_14078 = mach_absolute_time();
          *aLlec = 1280262988;
          os_unfair_lock_unlock(&stru_14060);
          sub_9230();
LABEL_107:
          if (*aLlec == v34)
          {
            v22 = 0;
            v46 = 0x676C6F6254535243;
            a8 = (&dword_0 + 1);
            goto LABEL_109;
          }

          v44 = "gNUC_State.io.timeSource == newTimeSource";
          v45 = 1746;
LABEL_113:
          __assert_rtn("NUCPerformTimeSourceChange", "PlugIn.cpp", v45, v44);
        }
      }
    }

    os_unfair_lock_lock(&stru_14060);
    *aLlec = v34;
    os_unfair_lock_unlock(&stru_14060);
    goto LABEL_107;
  }

  a8 = 0;
  v22 = 0;
LABEL_84:
  v46 = 0;
LABEL_109:
  os_unfair_lock_unlock(&unk_14008);
  v43 = v46;
LABEL_95:
  v47 = v22;
  *&v48[4] = a8;
  *&v48[12] = v43;
  *&v48[20] = 0;
  if (a8)
  {
    (*off_14000[0])(off_14000[0], a2, a8, &v48[12]);
  }

LABEL_13:
  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

  v19 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    *buf = 67109376;
    *&buf[4] = v47;
    *&buf[8] = 2048;
    *&buf[10] = *&v48[4];
    _os_signpost_emit_with_name_impl(&dword_0, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetPropertyData", "result %{waipc:4cc}u, changed %zu", buf, 0x12u);
  }

  return v47;
}

void sub_71CC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&stru_14060);
  os_unfair_lock_unlock(&unk_14008);
  _Unwind_Resume(a1);
}

uint64_t sub_7218(_UNKNOWN **a1, int a2)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v4 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    LOWORD(v14[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StartIO", "", v14, 2u);
  }

  os_unfair_lock_lock(&unk_14008);
  if (a1 != &off_14088)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v5 = 560947818;
    v6 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v14[0]) = 0;
      v7 = "bad driver reference";
LABEL_21:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, v7, v14, 2u);
LABEL_22:
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (a2 != 2)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v5 = 560947818;
    v6 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v14[0]) = 0;
      v7 = "bad device ID";
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (!dword_1402C)
  {
    os_unfair_lock_lock(&stru_14060);
    sub_878(&unk_14080);
    os_unfair_lock_unlock(&stru_14060);
    if (qword_14170 != -1)
    {
      sub_A1AC();
    }

    if (byte_14178 != 1)
    {
      goto LABEL_33;
    }

    if (qword_14180 != -1)
    {
      sub_A1D4();
    }

    if ((byte_14188 & 1) == 0)
    {
LABEL_33:
      if (*aLlec == 1128614988)
      {
        sub_933C();
      }

      if (*aLlec != 1280262988)
      {
        __assert_rtn("NUC_StartIO", "PlugIn.cpp", 1294, "false");
      }
    }

    os_unfair_lock_lock(&stru_14060);
    qword_14078 = mach_absolute_time();
    os_unfair_lock_unlock(&stru_14060);
    dword_1402C = 1;
    v10 = mach_absolute_time();
    v11 = qword_14040;
    qword_14038 = v10;
    qword_14040 = 0;
    if (v11)
    {
      CFRelease(v11);
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v12 = qword_14158;
    if (os_signpost_enabled(qword_14158))
    {
      LOWORD(v14[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOSession", "", v14, 2u);
    }

    goto LABEL_42;
  }

  if (dword_1402C != -1)
  {
    ++dword_1402C;
LABEL_42:
    v5 = *&aLlec[4];
    if (*&aLlec[4])
    {
      if (qword_14170 != -1)
      {
        sub_A1AC();
      }

      if (byte_14178)
      {
        v13 = 200;
      }

      else
      {
        v13 = 50;
      }

      sub_23B0(v5, v13);
      v5 = 0;
    }

    goto LABEL_22;
  }

  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

  v5 = 1852797029;
  v6 = qword_14150[0];
  if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
  {
    LOWORD(v14[0]) = 0;
    v7 = "out of references";
    goto LABEL_21;
  }

LABEL_24:
  v8 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v14[0] = 67109120;
    v14[1] = v5;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "StartIO", "result %{waipc:4cc}u", v14, 8u);
  }

  os_unfair_lock_unlock(&unk_14008);
  return v5;
}

uint64_t sub_76D4(_UNKNOWN **a1, int a2)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v4 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    LOWORD(v11[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StopIO", "", v11, 2u);
  }

  os_unfair_lock_lock(&unk_14008);
  if (a1 == &off_14088)
  {
    if (a2 == 2)
    {
      if (dword_1402C)
      {
        if (dword_1402C == 1)
        {
          dword_1402C = 0;
          sub_9230();
          if (qword_14148 != -1)
          {
            sub_A0A8();
          }

          v8 = qword_14158;
          if (!os_signpost_enabled(qword_14158))
          {
            v5 = 0;
            goto LABEL_24;
          }

          LOWORD(v11[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOSession", "", v11, 2u);
          v5 = 0;
        }

        else
        {
          v5 = 0;
          --dword_1402C;
        }
      }

      else
      {
        v5 = 1852797029;
      }

      goto LABEL_22;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v5 = 560947818;
    v6 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v11[0]) = 0;
      v7 = "bad device ID";
      goto LABEL_21;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v5 = 560947818;
    v6 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v11[0]) = 0;
      v7 = "bad driver reference";
LABEL_21:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, v7, v11, 2u);
LABEL_22:
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }
    }
  }

LABEL_24:
  v9 = qword_14160;
  if (os_signpost_enabled(qword_14160))
  {
    v11[0] = 67109120;
    v11[1] = v5;
    _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "StopIO", "result %{waipc:4cc}u", v11, 8u);
  }

  os_unfair_lock_unlock(&unk_14008);
  return v5;
}

uint64_t sub_79A8(_UNKNOWN **a1, int a2, uint64_t a3, double *a4, NSObject **a5, void *a6)
{
  v12 = &stru_14060;
  os_unfair_lock_lock(&stru_14060);
  if (byte_14082 == 1)
  {
    if (qword_14148 != -1)
    {
      sub_A094();
    }

    v12 = qword_14160;
    if (os_signpost_enabled(qword_14160))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetZeroTimeStamp", "", &v22, 2u);
    }
  }

  if (a1 != &off_14088)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v13 = 560947818;
    v14 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      v15 = "bad driver reference";
LABEL_26:
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, v15, &v22, 2u);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (a2 == 2)
  {
    if (qword_14170 != -1)
    {
      sub_A1AC();
    }

    if (byte_14178 != 1)
    {
      goto LABEL_18;
    }

    if (qword_14180 != -1)
    {
      sub_A1D4();
    }

    if ((byte_14188 & 1) == 0)
    {
LABEL_18:
      if (*aLlec != 1280262988)
      {
        if (*aLlec == 1128614988)
        {
          if (*&aLlec[4])
          {
            sub_254C(*&aLlec[4], &v22);
            v6 = v22;
            v12 = *v23;
            a1 = *&v23[8];
LABEL_34:
            v13 = 0;
            *a4 = v6;
            *a5 = v12;
            *a6 = a1;
            goto LABEL_27;
          }

          v20 = "gNUC_State.io.audioSession";
          v21 = 1382;
        }

        else
        {
          v20 = "false";
          v21 = 1404;
        }

        __assert_rtn("NUC_GetZeroTimeStamp", "PlugIn.cpp", v21, v20);
      }
    }

    mach_timebase_info(&v22);
    v18 = mach_absolute_time();
    a1 = qword_14078;
    v19 = round(*&qword_14030 * 0.3);
    v6 = v19 * floor(*&qword_14030 * (((v18 - qword_14078) * LODWORD(v22) / HIDWORD(v22)) / 1000000000.0) / v19);
    v12 = (qword_14078 + vcvtmd_u64_f64(v6 / *&qword_14030 * 1000000000.0 * HIDWORD(v22) / LODWORD(v22)));
    goto LABEL_34;
  }

  if (qword_14148 != -1)
  {
    sub_A0A8();
  }

  v13 = 560947818;
  v14 = qword_14150[0];
  if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    v15 = "bad device ID";
    goto LABEL_26;
  }

LABEL_27:
  if (byte_14082 == 1)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v16 = qword_14160;
    if (os_signpost_enabled(qword_14160))
    {
      LODWORD(v22) = 67109888;
      HIDWORD(v22) = v13;
      *v23 = 2048;
      *&v23[2] = v6;
      *&v23[10] = 2048;
      *&v23[12] = v12;
      v24 = 2048;
      v25 = a1;
      _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetZeroTimeStamp", "result %{waipc:4cc}u, sampleTime %lf, hostTime %llu, seed %llu", &v22, 0x26u);
    }
  }

  os_unfair_lock_unlock(&stru_14060);
  return v13;
}

uint64_t sub_7D9C(_UNKNOWN **a1, int a2, uint64_t a3, int a4, _BYTE *a5, _BYTE *a6)
{
  os_unfair_lock_lock(&stru_14060);
  if (byte_14082 == 1)
  {
    if (qword_14148 != -1)
    {
      sub_A094();
    }

    v11 = qword_14160;
    if (os_signpost_enabled(qword_14160))
    {
      v17 = 67109120;
      v18 = a4;
      _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WillDoIOOperation", "op %{waipc:4cc}u", &v17, 8u);
    }
  }

  if (a1 == &off_14088)
  {
    if (a2 == 2)
    {
      v12 = 0;
      *a5 = 0;
      *a6 = 0;
      goto LABEL_18;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v12 = 560947818;
    v13 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      v14 = "bad device ID";
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v12 = 560947818;
    v13 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      v14 = "bad driver reference";
LABEL_17:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, v14, &v17, 2u);
    }
  }

LABEL_18:
  if (byte_14082 == 1)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v15 = qword_14160;
    if (os_signpost_enabled(qword_14160))
    {
      v17 = 67109120;
      v18 = v12;
      _os_signpost_emit_with_name_impl(&dword_0, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WillDoIOOperation", "result %{waipc:4cc}u", &v17, 8u);
    }
  }

  os_unfair_lock_unlock(&stru_14060);
  return v12;
}

uint64_t sub_800C(_UNKNOWN **a1, int a2, uint64_t a3, int a4)
{
  os_unfair_lock_lock(&stru_14060);
  if (byte_14082 == 1)
  {
    if (qword_14148 != -1)
    {
      sub_A094();
    }

    v7 = qword_14160;
    if (os_signpost_enabled(qword_14160))
    {
      v13 = 67109120;
      v14 = a4;
      _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BeginIOOperation", "op %{waipc:4cc}u", &v13, 8u);
    }
  }

  if (a1 == &off_14088)
  {
    if (a2 == 2)
    {
      v8 = 1970171760;
      goto LABEL_18;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v8 = 560947818;
    v9 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v10 = "bad device ID";
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v8 = 560947818;
    v9 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v10 = "bad driver reference";
LABEL_17:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v10, &v13, 2u);
    }
  }

LABEL_18:
  if (byte_14082 == 1)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v11 = qword_14160;
    if (os_signpost_enabled(qword_14160))
    {
      v13 = 67109120;
      v14 = v8;
      _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BeginIOOperation", "result %{waipc:4cc}u", &v13, 8u);
    }
  }

  os_unfair_lock_unlock(&stru_14060);
  return v8;
}

uint64_t sub_8268(_UNKNOWN **a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  os_unfair_lock_lock(&stru_14060);
  if (byte_14082 == 1)
  {
    if (qword_14148 != -1)
    {
      sub_A094();
    }

    v8 = qword_14160;
    if (os_signpost_enabled(qword_14160))
    {
      v14 = 67109120;
      v15 = a5;
      _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DoIOOperation", "op %{waipc:4cc}u", &v14, 8u);
    }
  }

  if (a1 == &off_14088)
  {
    if (a2 == 2)
    {
      v9 = 1970171760;
      goto LABEL_18;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v9 = 560947818;
    v10 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      v11 = "bad device ID";
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v9 = 560947818;
    v10 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      v11 = "bad driver reference";
LABEL_17:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, v11, &v14, 2u);
    }
  }

LABEL_18:
  if (byte_14082 == 1)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v12 = qword_14160;
    if (os_signpost_enabled(qword_14160))
    {
      v14 = 67109120;
      v15 = v9;
      _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DoIOOperation", "result %{waipc:4cc}u", &v14, 8u);
    }
  }

  os_unfair_lock_unlock(&stru_14060);
  return v9;
}

uint64_t sub_84C4(_UNKNOWN **a1, int a2, uint64_t a3, int a4)
{
  os_unfair_lock_lock(&stru_14060);
  if (byte_14082 == 1)
  {
    if (qword_14148 != -1)
    {
      sub_A094();
    }

    v7 = qword_14160;
    if (os_signpost_enabled(qword_14160))
    {
      v13 = 67109120;
      v14 = a4;
      _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "EndIOOperation", "op %{waipc:4cc}u", &v13, 8u);
    }
  }

  if (a1 == &off_14088)
  {
    if (a2 == 2)
    {
      v8 = 1970171760;
      goto LABEL_18;
    }

    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v8 = 560947818;
    v9 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v10 = "bad device ID";
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v8 = 560947818;
    v9 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v10 = "bad driver reference";
LABEL_17:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v10, &v13, 2u);
    }
  }

LABEL_18:
  if (byte_14082 == 1)
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v11 = qword_14160;
    if (os_signpost_enabled(qword_14160))
    {
      v13 = 67109120;
      v14 = v8;
      _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EndIOOperation", "result %{waipc:4cc}u", &v13, 8u);
    }
  }

  os_unfair_lock_unlock(&stru_14060);
  return v8;
}

const void **sub_8720(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

os_state_data_s *__cdecl sub_8754(id a1, os_state_hints_s *a2)
{
  os_unfair_lock_lock(&unk_14008);
  mach_timebase_info(&info);
  v2 = mach_absolute_time();
  v3 = qword_14038;
  numer = info.numer;
  denom = info.denom;
  os_unfair_lock_lock(&stru_14060);
  v19 = qword_14078;
  os_unfair_lock_unlock(&stru_14060);
  sub_8D4C(buf, @"Refcount", &dword_14028);
  sub_8D4C(v24, @"IO Running", &dword_1402C);
  v24[2] = @"Sample Rate";
  valuePtr = qword_14030;
  if (!CFNumberCreate(0, kCFNumberDoubleType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_8D4C(v26, @"Time Source", aLlec);
  if (*&aLlec[4])
  {
    v6 = sub_2828(*&aLlec[4]);
  }

  else
  {
    v6 = qword_14040;
    if (qword_14040)
    {
      CFRetain(qword_14040);
    }
  }

  v26[2] = @"IO Session";
  v26[3] = v6;
  valuePtr = 0;
  sub_8E04(&v27, @"Local Base Time (Absolute)", &v19);
  sub_8E04(&v28, @"Start Time (Absolute)", &qword_14038);
  v17 = ((v2 - v3) * numer / denom) / 1000000000.0;
  sub_33C8(v29, @"Duration", &v17);
  sub_8BE4(buf, &v18);
  for (i = 120; i != -8; i -= 16)
  {
    v8 = *&buf[i];
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9 = v18;
  os_unfair_lock_unlock(&unk_14008);
  if (v9)
  {
    valuePtr = 0;
    StateData = waipc::util::createStateData(v9, "NetworkUplinkClock", &valuePtr, v10);
    v12 = valuePtr;
    if (!StateData)
    {
      if (qword_14148 != -1)
      {
        sub_A0A8();
      }

      v13 = qword_14150[0];
      if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v12;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "failed to serialze state %@", buf, 0xCu);
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }

    CFRelease(v9);
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v14 = qword_14150[0];
    if (os_log_type_enabled(qword_14150[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "failed to dump state", buf, 2u);
    }

    return 0;
  }

  return StateData;
}

const void **sub_8BB0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *sub_8BE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v14 = 0u;
  v15 = 0u;
  *keys = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  v4 = (a1 + 8);
  v5 = 128;
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v11 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(kCFAllocatorDefault, keys, v11, v3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return result;
}

void sub_8D10(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_8EBC(v1);
  _Unwind_Resume(a1);
}

void *sub_8D4C(void *a1, uint64_t a2, int *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void *sub_8E04(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

const void **sub_8EBC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_8EF0(uint64_t a1, int a2)
{
  if (a2)
  {
    os_unfair_lock_lock(&unk_14008);
    qword_14030 = *(a1 + 40);
    os_unfair_lock_unlock(&unk_14008);
  }

  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v4 = qword_14158;
  v5 = os_signpost_id_make_with_pointer(qword_14158, *(*(*(a1 + 32) + 8) + 24));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_END, v6, "SampleRateChange", "allowed %{BOOL}d", v7, 8u);
    }
  }
}

void sub_9018(uint64_t a1)
{
  if (qword_14148 != -1)
  {
    sub_A094();
  }

  v2 = qword_14168;
  v3 = os_signpost_id_make_with_pointer(qword_14168, *(a1 + 32));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      LOWORD(v15[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v2, OS_SIGNPOST_EVENT, v4, "DeviceConfigurationChange", "request", v15, 2u);
    }
  }

  v5 = *(a1 + 32);
  v6 = (*(off_14000[0] + &stru_20))();
  if (v6)
  {
    v7 = v6;
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v8 = qword_14168;
    v9 = os_signpost_id_make_with_pointer(qword_14168, *(a1 + 32));
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        v15[0] = 67109120;
        v15[1] = v7;
        _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_EVENT, v10, "DeviceConfigurationChange", "failed %{waipc:4cc}u", v15, 8u);
      }
    }

    v11 = *(a1 + 32);
    v11[2](v11, 0);
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v12 = qword_14168;
    v13 = os_signpost_id_make_with_pointer(qword_14168, *(a1 + 32));
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        LOWORD(v15[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_END, v14, "DeviceConfigurationChange", "done", v15, 2u);
      }
    }

    _Block_release(v11);
  }
}

void sub_9230()
{
  os_unfair_lock_assert_owner(&unk_14008);
  if (qword_14020)
  {
    if (*&aLlec[4])
    {
      v0 = sub_2828(*&aLlec[4]);
      v1 = qword_14040;
      qword_14040 = v0;
      if (v1)
      {
        CFRelease(v1);
      }
    }
  }

  os_unfair_lock_lock(&stru_14060);
  v2 = qword_14070;
  *&aLlec[4] = 0;
  qword_14070 = 0;
  os_unfair_lock_unlock(&stru_14060);
  if (v2)
  {
    sub_9A60(v2);
  }

  os_unfair_lock_lock(&unk_14048);
  v3 = qword_14050;
  qword_14050 = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  if (off_14058[0])
  {
    (*(off_14058[0] + &dword_10))();
    v4 = off_14058[0];
    off_14058[0] = 0;
    if (v4)
    {
      _Block_release(v4);
    }
  }

  os_unfair_lock_unlock(&unk_14048);
}

void sub_933C()
{
  os_unfair_lock_assert_owner(&unk_14008);
  if (!*&aLlec[4])
  {
    v1[0] = 0;
    v1[1] = v1;
    v1[2] = 0x2000000000;
    v2 = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_95FC;
    aBlock[3] = &unk_105A8;
    aBlock[5] = qword_14030;
    aBlock[4] = v1;
    _Block_copy(aBlock);
    sub_A88();
  }

  sub_A228();
}

void sub_956C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_EFC(va);
  _Block_object_dispose((v2 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_95FC(uint64_t a1, uint64_t *a2, double a3)
{
  v12 = *a2;
  sub_33C8(buf, @"basis", &v12);
  v11 = *(a1 + 40) * a3 / 1000000000.0;
  sub_33C8((&v16 + 2), @"interval", &v11);
  sub_986C(buf, &cf);
  for (i = 24; i != -8; i -= 16)
  {
    v7 = *&buf[i];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  os_unfair_lock_lock(&unk_14048);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    os_unfair_lock_unlock(&unk_14048);
  }

  else
  {
    if (qword_14148 != -1)
    {
      sub_A0A8();
    }

    v8 = qword_14158;
    if (os_signpost_enabled(qword_14158))
    {
      v9 = *a2;
      *buf = 134218240;
      *&buf[4] = v9;
      v15 = 2048;
      v16 = a3;
      _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UplinkScheduleChange", "sample %lf, interval %lf", buf, 0x16u);
    }

    v10 = qword_14050;
    qword_14050 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    os_unfair_lock_unlock(&unk_14048);
    strcpy(buf, "DHCSbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*off_14000[0])(off_14000[0], 2, 1, buf);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

const void *sub_986C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  keys[0] = 0;
  keys[1] = 0;
  values[0] = 0;
  values[1] = 0;
  v4 = (a1 + 8);
  v5 = 32;
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        values[v3++] = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return result;
}

void sub_998C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_8EBC(v1);
  _Unwind_Resume(a1);
}

void sub_99C8(uint64_t a1)
{
  os_unfair_lock_assert_owner(&unk_14048);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 1)
  {
    sub_A254();
  }

  *(v2 + 24) = 1;
}

const void **sub_9A14(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v2[2]();
    if (*a1)
    {
      _Block_release(*a1);
    }
  }

  return a1;
}

void sub_9A60(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_9ACC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_9B5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9BF8(va);
  _Unwind_Resume(a1);
}

void sub_9B70(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_9A60(v5);
      }
    }
  }
}

uint64_t *sub_9BF8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_F30(v2);
    operator delete();
  }

  return a1;
}

void sub_9C44(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_9C7C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_F30(result);

    operator delete();
  }

  return result;
}

uint64_t sub_9CC0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_9D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_9D54(uint64_t a1)
{
  v2 = atomic_exchange((a1 + 224), 0);
  if (v2)
  {
    sub_9D90(a1, v2);
  }

  return a1;
}

uint64_t sub_9D90(uint64_t result, unint64_t a2)
{
  if (!a2)
  {
    sub_A2D8();
  }

  v2 = a2 - result - 8;
  if (v2 < -71 || (v3 = 0x8E38E38E38E38E39 * (v2 >> 3), v3 >= 3))
  {
    sub_A2AC();
  }

  if (atomic_exchange((result + 8 * v3 + 232), a2))
  {
    sub_A280();
  }

  return result;
}

waipc::util::GroupErrorTimer *sub_9DF4(waipc::util::GroupErrorTimer **a1, waipc::util::GroupErrorTimer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    waipc::util::GroupErrorTimer::~GroupErrorTimer(result);

    operator delete();
  }

  return result;
}

uint64_t sub_9E40(uint64_t a1)
{
  v2 = atomic_exchange((a1 + 512), 0);
  if (v2)
  {
    sub_9E7C(a1, v2);
  }

  return a1;
}

uint64_t sub_9E7C(uint64_t result, unint64_t a2)
{
  if (!a2)
  {
    sub_A2D8();
  }

  v2 = a2 - result - 8;
  if (v2 < -167 || (v3 = 0xCF3CF3CF3CF3CF3DLL * (v2 >> 3), v3 >= 3))
  {
    sub_A2AC();
  }

  if (atomic_exchange((result + 8 * v3 + 520), a2))
  {
    sub_A280();
  }

  return result;
}

waipc::util::NonblockingEventSource *sub_9EE0(waipc::util::NonblockingEventSource **a1, waipc::util::NonblockingEventSource *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    waipc::util::NonblockingEventSource::~NonblockingEventSource(result);

    operator delete();
  }

  return result;
}

void *sub_9F2C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_9F70();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_9F70()
{
  exception = __cxa_allocate_exception(8uLL);
}

unint64_t sub_9FBC(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 520;
  do
  {
    result = atomic_exchange((v2 + 8 * v1), 0);
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = v1 >= 2;
    }

    ++v1;
  }

  while (!v4);
  if (!result)
  {
    sub_A304();
  }

  return result;
}

const void **sub_9FF4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_A028(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

unint64_t sub_A05C(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 232;
  do
  {
    result = atomic_exchange((v2 + 8 * v1), 0);
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = v1 >= 2;
    }

    ++v1;
  }

  while (!v4);
  if (!result)
  {
    sub_A304();
  }

  return result;
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
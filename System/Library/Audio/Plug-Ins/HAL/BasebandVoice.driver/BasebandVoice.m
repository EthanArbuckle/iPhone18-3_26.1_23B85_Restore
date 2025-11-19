uint64_t sub_8D0(_UNKNOWN **a1, unsigned int a2, int a3, int *a4, unsigned int a5, CFStringRef *a6, size_t a7, int *a8, char *__dst)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v16 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v17 = *a4;
    v18 = a4[1];
    v19 = a4[2];
    *&v32 = __PAIR64__(a2, 67109888);
    WORD4(v32) = 1024;
    *(&v32 + 10) = v17;
    HIWORD(v32) = 1024;
    LODWORD(v33) = v18;
    WORD2(v33) = 1024;
    *(&v33 + 6) = v19;
    _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetPropertyData", "object %u, selector %{waipc:4cc}u, scope %{waipc:4cc}u, element %u", &v32, 0x1Au);
  }

  if (a1 != &off_14158)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v20 = 560947818;
    v21 = qword_14220;
    if (os_log_type_enabled(qword_14220, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      v22 = "bad driver reference";
LABEL_10:
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, v22, &v32, 2u);
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (a4)
  {
    if (!a8)
    {
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v20 = 1852797029;
      v21 = qword_14220;
      if (os_log_type_enabled(qword_14220, OS_LOG_TYPE_INFO))
      {
        LOWORD(v32) = 0;
        v22 = "nowhere to store result size";
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    if (!__dst)
    {
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v20 = 1852797029;
      v21 = qword_14220;
      if (os_log_type_enabled(qword_14220, OS_LOG_TYPE_INFO))
      {
        LOWORD(v32) = 0;
        v22 = "nowhere to store result";
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    if (a2 - 3 >= 2)
    {
      if (a2 == 2)
      {
        v25 = sub_ECC(a4, a7, a8, __dst);
        goto LABEL_46;
      }

      if (a2 == 1)
      {
        v25 = sub_9414(a4, a5, a6, a7, a8, __dst);
LABEL_46:
        v20 = v25;
        goto LABEL_11;
      }

      v20 = 560947818;
LABEL_11:
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      goto LABEL_13;
    }

    v20 = 0;
    v27 = *a4;
    if (*a4 > 1935762291)
    {
      if (v27 <= 1936092512)
      {
        switch(v27)
        {
          case 1935762292:
            os_unfair_lock_lock(&unk_14008);
            if (a7 >= 4)
            {
              v20 = 0;
              v31 = &byte_14040;
              if (a2 != 3)
              {
                v31 = &byte_14041;
              }

              *__dst = *v31;
              *a8 = 4;
            }

            else
            {
              v20 = 561211770;
            }

            os_unfair_lock_unlock(&unk_14008);
            goto LABEL_11;
          case 1935894638:
            if (a7 < 4)
            {
              goto LABEL_77;
            }

            v20 = 0;
            v28 = 1;
            break;
          case 1935960434:
            if (a7 < 4)
            {
              goto LABEL_77;
            }

            v20 = 0;
            v28 = a2 == 3;
            break;
          default:
            goto LABEL_11;
        }

        goto LABEL_83;
      }

      if (v27 == 1936092513)
      {
LABEL_63:
        v32 = xmmword_AFC8;
        v33 = unk_AFD8;
        v34 = xmmword_AFB0;
        if (a7 < 0x38)
        {
          v30 = 0;
        }

        else
        {
          *__dst = 0x40DF400000000000;
          v29 = v33;
          *(__dst + 8) = v32;
          *(__dst + 24) = v29;
          *(__dst + 40) = v34;
          v30 = 56;
        }

        v20 = 0;
        goto LABEL_85;
      }

      if (v27 != 1936092532)
      {
        if (v27 != 1937007734)
        {
          goto LABEL_11;
        }

        if (a7 < 4)
        {
          goto LABEL_77;
        }

        v20 = 0;
        v28 = 2;
        goto LABEL_83;
      }
    }

    else
    {
      if (v27 <= 1870098019)
      {
        switch(v27)
        {
          case 1650682995:
            if (a7 < 4)
            {
              goto LABEL_77;
            }

            v20 = 0;
            v28 = 1634689642;
            break;
          case 1668047219:
            if (a7 < 4)
            {
              goto LABEL_77;
            }

            v20 = 0;
            v28 = 1634956402;
            break;
          case 1819569763:
            if (a7 >= 4)
            {
              v20 = 0;
              *__dst = 0;
LABEL_84:
              v30 = 4;
              goto LABEL_85;
            }

LABEL_77:
            v20 = 561211770;
            goto LABEL_11;
          default:
            goto LABEL_11;
        }

LABEL_83:
        *__dst = v28;
        goto LABEL_84;
      }

      if (v27 == 1870098020)
      {
        v20 = 0;
        *a8 = 0;
        goto LABEL_11;
      }

      if (v27 != 1885762592)
      {
        if (v27 != 1885762657)
        {
          goto LABEL_11;
        }

        goto LABEL_63;
      }
    }

    if (a7 >= 0x28)
    {
      v20 = 0;
      *__dst = qword_14030;
      *(__dst + 8) = xmmword_AFC8;
      *(__dst + 24) = unk_AFD8;
      v30 = 40;
LABEL_85:
      *a8 = v30;
      goto LABEL_11;
    }

    goto LABEL_77;
  }

  if (qword_14218 != -1)
  {
    sub_A668();
  }

  v20 = 1852797029;
  v21 = qword_14220;
  if (os_log_type_enabled(qword_14220, OS_LOG_TYPE_INFO))
  {
    LOWORD(v32) = 0;
    v22 = "no address";
    goto LABEL_10;
  }

LABEL_13:
  v23 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    if (a8)
    {
      v24 = *a8;
    }

    else
    {
      v24 = 0;
    }

    LODWORD(v32) = 67109376;
    DWORD1(v32) = v20;
    WORD4(v32) = 1024;
    *(&v32 + 10) = v24;
    _os_signpost_emit_with_name_impl(&dword_0, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetPropertyData", "result %{waipc:4cc}u, dataSize %u", &v32, 0xEu);
  }

  return v20;
}

uint64_t sub_ECC(int *a1, size_t __n, int *a3, double *__dst)
{
  v6 = __n;
  v7 = 2003332927;
  v8 = *a1;
  if (*a1 <= 1819107690)
  {
    if (v8 > 1668575851)
    {
      if (v8 > 1735354733)
      {
        if (v8 == 1735354734)
        {
          os_unfair_lock_lock(&unk_14008);
          if (v6 < 4)
          {
            goto LABEL_86;
          }

          v7 = 0;
          v19 = dword_1402C != 0;
          goto LABEL_93;
        }

        if (v8 == 1751737454)
        {
          goto LABEL_46;
        }

        v14 = 1818850926;
LABEL_30:
        if (v8 != v14)
        {
          return v7;
        }

        goto LABEL_31;
      }

      if (v8 == 1668575852)
      {
LABEL_53:
        v7 = 0;
        *a3 = 0;
        return v7;
      }

      if (v8 != 1684434036)
      {
        if (v8 != 1718843939)
        {
          return v7;
        }

        os_unfair_lock_lock(&unk_14008);
        if (v6 < 0x10)
        {
          goto LABEL_86;
        }

        v7 = 0;
        v12 = round(*&qword_14030 * 0.02);
        *__dst = 0.0;
        __dst[1] = v12;
        v13 = 16;
        goto LABEL_94;
      }
    }

    else
    {
      if (v8 <= 1668049763)
      {
        switch(v8)
        {
          case 1634429294:
            if (__n >= 4)
            {
              v7 = 0;
              v11 = 2;
              goto LABEL_33;
            }

            break;
          case 1650682995:
            if (__n >= 4)
            {
              v7 = 0;
              v11 = 1634689642;
              goto LABEL_33;
            }

            break;
          case 1668047219:
            if (__n >= 4)
            {
              v7 = 0;
              v11 = 1633969526;
LABEL_33:
              *__dst = v11;
LABEL_48:
              v17 = 4;
LABEL_83:
              *a3 = v17;
              return v7;
            }

            break;
          default:
            return v7;
        }

        return 561211770;
      }

      if (v8 != 1668049764)
      {
        if (v8 == 1668050795)
        {
          if (__n >= 4)
          {
            v7 = 0;
            v11 = 1835103847;
            goto LABEL_33;
          }

          return 561211770;
        }

        v14 = 1668510818;
        goto LABEL_30;
      }
    }

LABEL_46:
    if (__n >= 4)
    {
      v7 = 0;
      *__dst = 0;
      goto LABEL_48;
    }

    return 561211770;
  }

  if (v8 > 1919512166)
  {
    if (v8 > 1937007733)
    {
      if (v8 <= 1953653101)
      {
        if (v8 != 1937007734)
        {
          v10 = 1937009955;
          goto LABEL_37;
        }

LABEL_31:
        if (__n >= 4)
        {
          v7 = 0;
          v11 = 1;
          goto LABEL_33;
        }

        return 561211770;
      }

      if (v8 == 1953653102)
      {
        if (__n >= 4)
        {
          v7 = 0;
          v11 = 1885563168;
          goto LABEL_33;
        }

        return 561211770;
      }

      if (v8 != 1969841184)
      {
        return v7;
      }

      goto LABEL_51;
    }

    if (v8 != 1919512167)
    {
      if (v8 != 1935763060)
      {
        if (v8 != 1936092276)
        {
          return v7;
        }

        goto LABEL_46;
      }

      os_unfair_lock_lock(&unk_14008);
      v20 = a1[1];
      if (v20 == 1869968496)
      {
        if (v6 >= 4)
        {
          v21 = 0.0001;
          goto LABEL_92;
        }
      }

      else
      {
        if (v20 != 1768845428)
        {
LABEL_95:
          os_unfair_lock_unlock(&unk_14008);
          return v7;
        }

        if (v6 >= 4)
        {
          v21 = 0.001;
LABEL_92:
          v7 = 0;
          v19 = vcvtpd_u64_f64(*&qword_14030 * v21);
          goto LABEL_93;
        }
      }

LABEL_86:
      v7 = 561211770;
      goto LABEL_95;
    }

    os_unfair_lock_lock(&unk_14008);
    if (v6 < 4)
    {
      goto LABEL_86;
    }

    v7 = 0;
    v19 = llround(*&qword_14030 * 0.02) * llround(15.0);
LABEL_93:
    *__dst = v19;
    v13 = 4;
    goto LABEL_94;
  }

  if (v8 <= 1853059618)
  {
    if (v8 == 1819107691)
    {
      if (__n < 8)
      {
        return 561211770;
      }

      v7 = 0;
      v18 = @"Apple Inc.";
      goto LABEL_66;
    }

    if (v8 == 1819173229)
    {
LABEL_51:
      if (__n < 8)
      {
        return 561211770;
      }

      v7 = 0;
      v18 = @"Baseband Voice";
LABEL_66:
      *__dst = v18;
      v17 = 8;
      goto LABEL_83;
    }

    v14 = 1819569763;
    goto LABEL_30;
  }

  if (v8 == 1853059619)
  {
    if (__n >= 0x10)
    {
      *__dst = xmmword_AFB0;
      v17 = 16;
LABEL_82:
      v7 = 0;
      goto LABEL_83;
    }

LABEL_81:
    v17 = 0;
    goto LABEL_82;
  }

  if (v8 == 1853059700)
  {
    os_unfair_lock_lock(&unk_14008);
    if (v6 < 8)
    {
      goto LABEL_86;
    }

    v7 = 0;
    *__dst = qword_14030;
    v13 = 8;
LABEL_94:
    *a3 = v13;
    goto LABEL_95;
  }

  v10 = 1870098020;
LABEL_37:
  if (v8 != v10)
  {
    return v7;
  }

  v15 = a1[1];
  if (v15 == 1869968496)
  {
    if (__n >= 4)
    {
      v17 = 4;
      *__dst = 4;
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (v15 == 1768845428)
  {
    if (__n >= 4)
    {
      *__dst = 3;
      v17 = 4;
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (v15 != 1735159650)
  {
    goto LABEL_53;
  }

  __src = 0x400000003;
  if (__n >= 4)
  {
    v22 = __n >> 2;
    if (__n >> 2 >= 2)
    {
      v22 = 2;
    }

    v16 = 4 * v22;
    memcpy(__dst, &__src, 4 * v22);
  }

  else
  {
    v16 = 0;
  }

  v7 = 0;
  *a3 = v16;
  return v7;
}

BOOL sub_1458(uint64_t a1)
{
  v2 = 0;
  v3 = qword_14218 == -1;
  do
  {
    if (!v3)
    {
      sub_A654();
    }

    result = os_signpost_enabled(qword_14220[v2]);
    *(a1 + v2++) = result;
    v3 = 1;
  }

  while (v2 != 4);
  return result;
}

_UNKNOWN **BV_Create(uint64_t a1, const void *a2)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v3 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    *buf = 138412290;
    v9 = a2;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Create", "uuid %@", buf, 0xCu);
  }

  v4 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  v5 = CFEqual(a2, v4);
  if (qword_14218 != -1)
  {
    sub_A668();
  }

  v6 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    *buf = 67109120;
    LODWORD(v9) = v5 != 0;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Create", "success %{BOOL}d", buf, 8u);
  }

  if (v5)
  {
    return &off_14158;
  }

  else
  {
    return 0;
  }
}

void sub_1704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_9F5C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1734(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 34);
  os_unfair_lock_lock(a1 + 35);
  if (sub_1C34(a1))
  {
    sub_1EA4(a1);
    sub_1F9C(a1);
  }

  os_unfair_lock_unlock(a1 + 35);
  os_unfair_lock_unlock(a1 + 34);
  return 0;
}

void sub_17B8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 35);
  os_unfair_lock_unlock(v1 + 34);
  _Unwind_Resume(a1);
}

char *sub_17D4(char *a1, __int128 *a2, uint64_t a3, dispatch_queue_s *a4)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  v5 = *a2;
  v6 = a2[2];
  *(a1 + 2) = a2[1];
  *(a1 + 3) = v6;
  *(a1 + 1) = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  *(a1 + 14) = *(a2 + 12);
  *(a1 + 5) = v8;
  *(a1 + 6) = v9;
  *(a1 + 4) = v7;
  v10 = *a2;
  *(a1 + 15) = *a2;
  if (v10)
  {
    dispatch_retain(v10);
    v11 = *(a1 + 15);
  }

  else
  {
    LODWORD(v11) = 0;
  }

  waipc::util::createSerialQueueWithQosAndTarget("com.apple.WirelessIPC.audio.BasebandVoice.AudioSession", &dword_14 + 1, v11, a4);
  *(a1 + 200) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  a1[184] = 0;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 27) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 29) = 0u;
  *(a1 + 30) = 0u;
  *(a1 + 31) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 33) = 0u;
  *(a1 + 34) = 0u;
  *(a1 + 35) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 37) = 0u;
  *(a1 + 38) = 0u;
  *(a1 + 39) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 42) = 0u;
  *(a1 + 43) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 46) = 0u;
  *(a1 + 47) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 100) = 0;
  *(a1 + 101) = a1 + 440;
  *(a1 + 102) = a1 + 560;
  *(a1 + 103) = a1 + 680;
  *(a1 + 52) = 0u;
  *(a1 + 53) = 0u;
  *(a1 + 108) = 0;
  *(a1 + 109) = mach_continuous_time();
  *(a1 + 110) = 0;
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v12 = qword_14238;
  v13 = os_signpost_id_make_with_pointer(qword_14238, a1);
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

void sub_1A5C(_Unwind_Exception *a1)
{
  sub_9EDC((v1 + 864));
  sub_A334((v1 + 856), 0);
  sub_A29C(v2 + 232);
  sub_A250((v1 + 176), 0);
  sub_9EDC((v1 + 168));
  sub_9EDC((v1 + 160));
  v4 = *(v1 + 152);
  if (v4)
  {
    sub_9F5C(v4);
  }

  v5 = *(v1 + 128);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(v1 + 120);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(v1 + 8);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AD8(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 136));
  os_unfair_lock_lock((a1 + 140));
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v2 = qword_14238;
  v3 = os_signpost_id_make_with_pointer(qword_14238, a1);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v2, OS_SIGNPOST_INTERVAL_END, v4, "AudioSession", "", v10, 2u);
    }
  }

  os_unfair_lock_unlock((a1 + 140));
  os_unfair_lock_unlock((a1 + 136));
  sub_A380((a1 + 880), 0);
  sub_9EDC((a1 + 864));
  sub_A334((a1 + 856), 0);
  sub_A29C(a1 + 432);
  sub_A250((a1 + 176), 0);
  sub_9EDC((a1 + 168));
  sub_9EDC((a1 + 160));
  v5 = *(a1 + 152);
  if (v5)
  {
    sub_9F5C(v5);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

uint64_t sub_1C34(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 136));
  if (*(a1 + 144))
  {
    sub_A690();
  }

  BasebandVoice_getTimesyncOverride();
  v2 = v12;
  v12 = 0uLL;
  v3 = *(a1 + 152);
  *(a1 + 144) = v2;
  if (v3)
  {
    sub_9F5C(v3);
    v3 = *(&v12 + 1);
    if (*(&v12 + 1))
    {
      sub_9F5C(*(&v12 + 1));
    }

    if (*(a1 + 144))
    {
      goto LABEL_12;
    }
  }

  else if (v2)
  {
    goto LABEL_12;
  }

  waipc::timesync::BasebandConfig::getDefault(&v12, v3);
  v17 = *(a1 + 112);
  v4 = *(a1 + 120);
  waipc::timesync::BasebandService::create();
  v5 = v11;
  v11 = 0uLL;
  v6 = *(a1 + 152);
  *(a1 + 144) = v5;
  if (v6)
  {
    sub_9F5C(v6);
    if (*(&v11 + 1))
    {
      sub_9F5C(*(&v11 + 1));
    }

    if (*(a1 + 144))
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
  *&v12 = 0;
  *(&v12 + 1) = &v12;
  v13 = 0x3802000000;
  v14 = sub_25CC;
  v15 = sub_25E8;
  sub_A3CC(&v11, a1);
  v7 = *(&v11 + 1);
  v16 = v11;
  if (*(&v11 + 1))
  {
    atomic_fetch_add_explicit((*(&v11 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_9F5C(v7);
  }

  v8 = *(a1 + 144);
  waipc::timesync::BasebandService::addConnectionObserver();
  sub_28CC((a1 + 160), &v11);
  sub_9EDC(&v11);
  v9 = *(a1 + 144);
  waipc::timesync::BasebandService::addTimesyncObserver();
  sub_28CC((a1 + 168), &v11);
  sub_9EDC(&v11);
  _Block_object_dispose(&v12, 8);
  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v16 + 1));
  }

  return 1;
}

void sub_1E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  sub_9EDC(&a21);
  _Block_object_dispose(&a23, 8);
  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1EA4(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 136));
  os_unfair_lock_assert_owner((a1 + 140));
  v2 = *(a1 + 144);
  mach_continuous_time();
  v3 = *(v2 + 128) / *(v2 + 136);
  waipc::timesync::KalmanEstimator::fixed();
  *(a1 + 248) = v13;
  *(a1 + 264) = v14;
  *(a1 + 280) = v15;
  *(a1 + 296) = v16;
  *(a1 + 200) = v10;
  *(a1 + 216) = v11;
  *(a1 + 232) = v12;
  v4 = *(a1 + 248);
  v5 = *(a1 + 280);
  *(a1 + 384) = *(a1 + 264);
  *(a1 + 400) = v5;
  *(a1 + 416) = v16;
  v6 = *(a1 + 216);
  *(a1 + 320) = *(a1 + 200);
  *(a1 + 336) = v6;
  *(a1 + 352) = *(a1 + 232);
  *(a1 + 368) = v4;
  *&v6 = *(a1 + 56);
  v7 = *(v2 + 136);
  v8 = *(a1 + 48) * 1000000000.0 / v7 * 0.5;
  *(a1 + 304) = 0;
  *(a1 + 424) = 0;
  *(a1 + 832) = v8 * v8;
  *(a1 + 840) = (*&v6 * 1000000000.0 / v7);
  return 1;
}

void sub_1F9C(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 136));
  v2 = *(a1 + 24);
  v4 = *(a1 + 68);
  v3 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  v8 = *(a1 + 112);
  v9 = *(*(a1 + 144) + 128);
  waipc::PCIeAudioLink::computeBufferLength();
  sub_A494();
}

void sub_21F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_9EDC((v12 - 80));
  if (a10)
  {
    sub_9F5C(a10);
  }

  if (a12)
  {
    sub_9F5C(a12);
  }

  _Unwind_Resume(a1);
}

void sub_2268(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 136));
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3802000000;
  v6[3] = sub_25CC;
  v6[4] = sub_25E8;
  sub_A3CC(&v4, a1);
  v2 = v5;
  v6[5] = v4;
  v6[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_9F5C(v2);
  }

  v3 = *(a1 + 128);
  operator new();
}

void sub_23BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  _Block_object_dispose(&a18, 8);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  _Unwind_Resume(a1);
}

void sub_2404(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 136));
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3802000000;
  v8[3] = sub_25CC;
  v8[4] = sub_25E8;
  sub_A3CC(&v6, a1);
  v2 = v7;
  v8[5] = v6;
  v8[6] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_9F5C(v2);
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 128);
  v5 = *(a1 + 144);
  if (*(v5 + 416))
  {
    dispatch_retain(*(v5 + 416));
  }

  operator new();
}

uint64_t sub_25CC(uint64_t result, uint64_t a2)
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

void sub_25E8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_25F8(uint64_t a1, int a2, const __CFString *a3)
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
        if (qword_14218 != -1)
        {
          sub_A654();
        }

        v9 = qword_14228;
        if (os_signpost_enabled(qword_14228))
        {
          v11[0] = 67109378;
          v11[1] = a2;
          v12 = 2112;
          v13 = a3;
          _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AudioSession_ConnectCB", "connected %{BOOL}d, reason %@", v11, 0x12u);
        }

        os_unfair_lock_lock((v6 + 136));
        if (a2)
        {
          *(v6 + 184) = 0;
        }

        else
        {
          *(v6 + 304) = 0;
          sub_27E4((v6 + 432), v6 + 192);
          if ((*(v6 + 184) & 1) == 0)
          {
            if (qword_14218 != -1)
            {
              sub_A668();
            }

            v10 = qword_14230;
            if (os_signpost_enabled(qword_14230))
            {
              LOWORD(v11[0]) = 0;
              _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AudioSession_ErrorTimerStart", "", v11, 2u);
            }

            *(v6 + 184) = 1;
            waipc::util::GroupErrorTimer::start(*(v6 + 176), a3);
          }
        }

        os_unfair_lock_unlock((v6 + 136));
      }

      sub_9F5C(v8);
    }
  }
}

void sub_27E4(os_unfair_lock_t lock, uint64_t a2)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  v4 = sub_A45C(lock);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 24) = v6;
  *(v4 + 8) = v5;
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  *(v4 + 104) = *(a2 + 104);
  *(v4 + 88) = v9;
  *(v4 + 72) = v8;
  *(v4 + 56) = v7;
  *(v4 + 112) = *(a2 + 112);
  v10 = atomic_exchange(&lock[92], v4);
  if (v10)
  {
    sub_A2D8(lock, v10);
  }

  if (lock)
  {

    os_unfair_lock_unlock(lock);
  }
}

void sub_28B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void (***sub_28CC(void (***a1)(void), const void **a2))(void)
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

void sub_2938(uint64_t a1, uint64_t a2, int a3)
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
        if (qword_14218 != -1)
        {
          sub_A654();
        }

        v9 = qword_14230;
        if (os_signpost_enabled(qword_14230))
        {
          v10 = waipc::timesync::KalmanEstimator::dumpState(a2);
          v13 = 138412546;
          v14 = v10;
          v15 = 1024;
          v16 = a3;
          _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AudioSession_TimesyncCB", "estimator %@, reset %{BOOL}d", &v13, 0x12u);
          if (v10)
          {
            CFRelease(v10);
          }
        }

        os_unfair_lock_lock((v6 + 136));
        if (a3)
        {
          v11 = 1;
        }

        else
        {
          v11 = *(v6 + 304);
        }

        v12 = v11 & 1;
        memmove((v6 + 200), (a2 + 8), 0x68uLL);
        *(v6 + 304) = v12;
        sub_27E4((v6 + 432), v6 + 192);
        os_unfair_lock_unlock((v6 + 136));
      }

      sub_9F5C(v8);
    }
  }
}

const void **sub_2AE0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_2B14(uint64_t a1, char a2)
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
        os_unfair_lock_lock((v6 + 136));
        if (a2)
        {
          waipc::timesync::BasebandService::triggerMeasurement(*(v6 + 144));
        }

        os_unfair_lock_unlock((v6 + 136));
      }

      sub_9F5C(v8);
    }
  }
}

void sub_2BBC(uint64_t a1, const __CFString *a2)
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
        os_unfair_lock_lock((v6 + 136));
        if (qword_14218 != -1)
        {
          sub_A654();
        }

        v9 = qword_14230;
        if (os_signpost_enabled(qword_14230))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AudioSession_ErrorTimerExpiry", "", buf, 2u);
        }

        if (!a2 || !CFStringGetLength(a2))
        {
          a2 = @"unknown error";
        }

        v10 = *(v6 + 128);
        v11 = _CTServerConnectionCreateOnTargetQueue();
        *buf = v11;
        if (v11)
        {
          if (qword_14218 != -1)
          {
            sub_A668();
          }

          v12 = qword_14228;
          if (os_signpost_enabled(qword_14228))
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
          if (qword_14218 != -1)
          {
            sub_A668();
          }

          v14 = qword_14220[0];
          if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
          {
            *v15 = 0;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "failed to open CTServer connection", v15, 2u);
          }
        }

        os_unfair_lock_unlock((v6 + 136));
      }

      sub_9F5C(v8);
    }
  }
}

void sub_2DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A5EC(va);
  os_unfair_lock_unlock(v4 + 34);
  sub_9F5C(v3);
  _Unwind_Resume(a1);
}

void sub_2E2C(uint64_t a1, unint64_t a2)
{
  os_unfair_lock_assert_owner((a1 + 140));
  if (*(a1 + 840) + *(a1 + 848) <= a2)
  {
    waipc::util::NonblockingEventSource::trigger(*(a1 + 880), 1u);
    *(a1 + 848) = a2;
  }
}

uint64_t sub_2E7C(uint64_t a1, unsigned int a2)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v4 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v21 = 67109120;
    v22 = a2;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AudioSession_WaitUntilReady", "timeout %u", &v21, 8u);
  }

  v5 = *(a1 + 144);
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

  if (v8)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v9 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AudioSession_WaitUntilReady", "connection timed out", &v21, 2u);
    }

    return 0;
  }

  else
  {
    if (waipc::PCIeAudioLink::isPeripheralActive(*(a1 + 856)))
    {
      v10 = 1;
    }

    else
    {
      LOWORD(v11) = *(a1 + 64);
      v12 = (v11 / *(a1 + 24) * 1000000.0);
      v13 = 1000 * a2 - 1;
      v14 = __CFADD__(v13, v12);
      v15 = v13 + v12;
      if (v14)
      {
        v10 = 0;
      }

      else
      {
        v16 = v15 / v12;
        do
        {
          usleep(v12);
          isPeripheralActive = waipc::PCIeAudioLink::isPeripheralActive(*(a1 + 856));
          v10 = isPeripheralActive;
          if (--v16)
          {
            v18 = isPeripheralActive;
          }

          else
          {
            v18 = 1;
          }
        }

        while (v18 != 1);
      }
    }

    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v19 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      v21 = 67109120;
      v22 = v10;
      _os_signpost_emit_with_name_impl(&dword_0, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AudioSession_WaitUntilReady", "peripheral active %{BOOL}d", &v21, 8u);
    }
  }

  return v10;
}

void sub_30F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 140));
  v4 = mach_continuous_time();
  sub_3238(a1, v4);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  waipc::PCIeAudioLink::getZeroTimestamp(&v9, *(a1 + 856), v4);
  LOWORD(v5) = *(a1 + 64);
  v6 = v5 / *(a1 + 24) * 1000000000.0 / *(*(a1 + 144) + 136) + v10;
  waipc::timesync::KalmanEstimator::hostToDevice();
  waipc::timesync::KalmanEstimator::deviceToHostVariance();
  if (*(a1 + 424) != 1 || v7 >= *(a1 + 832))
  {
    sub_2E2C(a1, v4);
  }

  mach_get_times();
  *a2 = v9;
  v8 = v11;
  a2[1] = v10;
  a2[2] = v8;
  os_unfair_lock_unlock((a1 + 140));
}

uint64_t sub_3238(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner((a1 + 140));
  result = sub_32A4(a1 + 432, a1 + 312);
  if (*(a1 + 424) == 1)
  {
    v5 = *(a1 + 856);

    return waipc::PCIeAudioLink::sync(v5, a1 + 312, a2);
  }

  return result;
}

BOOL sub_32A4(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  v4 = atomic_exchange((a1 + 368), 0);
  if (v4)
  {
    if (a2)
    {
      v5 = *(v4 + 8);
      v6 = *(v4 + 24);
      *(a2 + 40) = *(v4 + 40);
      *(a2 + 24) = v6;
      *(a2 + 8) = v5;
      v7 = *(v4 + 56);
      v8 = *(v4 + 72);
      v9 = *(v4 + 88);
      *(a2 + 104) = *(v4 + 104);
      *(a2 + 88) = v9;
      *(a2 + 72) = v8;
      *(a2 + 56) = v7;
      *(a2 + 112) = *(v4 + 112);
    }

    sub_A2D8(a1, v4);
  }

  os_unfair_lock_unlock((a1 + 4));
  return v4 != 0;
}

void sub_335C(uint64_t a1, void *a2, unsigned int a3, double a4)
{
  os_unfair_lock_lock((a1 + 140));
  v8 = mach_continuous_time();
  sub_3238(a1, v8);
  if (a2)
  {
    waipc::PCIeAudioLink::readInput(*(a1 + 856), a4, a2, a3);
  }

  os_unfair_lock_unlock((a1 + 140));
}

void sub_33F0(uint64_t a1, const void *a2, unsigned int a3, unsigned int a4, double a5)
{
  os_unfair_lock_lock((a1 + 140));
  if (a2)
  {
    waipc::PCIeAudioLink::writeMix(*(a1 + 856), a5, a2, a3, a4);
  }

  v10 = mach_continuous_time();
  sub_3238(a1, v10);

  os_unfair_lock_unlock((a1 + 140));
}

double sub_348C(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 140));
  waipc::PCIeAudioLink::getDLAlignmentAnchor(*(a1 + 856));
  v3 = v2;
  os_unfair_lock_unlock((a1 + 140));
  return v3;
}

double sub_34E8(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 140));
  waipc::PCIeAudioLink::getULAlignmentAnchor(*(a1 + 856));
  v3 = v2;
  os_unfair_lock_unlock((a1 + 140));
  return v3;
}

uint64_t sub_3544(uint64_t a1)
{
  mach_timebase_info(&info);
  os_unfair_lock_lock((a1 + 136));
  v2 = mach_continuous_time();
  v3 = *(a1 + 872);
  numer = info.numer;
  denom = info.denom;
  sub_3A88(v21, @"Error Timeout", (a1 + 40));
  sub_3A88(&v22, @"Error Threshold", (a1 + 48));
  sub_3A88(v23, @"Measurement Moderation", (a1 + 56));
  v6 = *(a1 + 144);
  if (v6)
  {
    v6 = waipc::timesync::BasebandService::dumpState(v6);
  }

  v23[2] = @"Timesync";
  v23[3] = v6;
  if (waipc::util::GroupErrorTimer::isRunning(*(a1 + 176)))
  {
    v7 = kCFBooleanTrue;
  }

  else
  {
    v7 = kCFBooleanFalse;
  }

  v23[4] = @"Error Timer Running";
  v23[5] = v7;
  v8 = waipc::util::GroupErrorTimer::copyReason(*(a1 + 176));
  v23[6] = @"Error Reason";
  v23[7] = v8;
  if (*(a1 + 184))
  {
    v9 = kCFBooleanTrue;
  }

  else
  {
    v9 = kCFBooleanFalse;
  }

  v23[8] = @"Error Timer Started for Connection";
  v23[9] = v9;
  v10 = waipc::timesync::KalmanEstimator::dumpState((a1 + 192));
  v23[10] = @"Timeline Estimator";
  v23[11] = v10;
  if (*(a1 + 304))
  {
    v11 = kCFBooleanTrue;
  }

  else
  {
    v11 = kCFBooleanFalse;
  }

  v23[12] = @"Timeline Ready";
  v23[13] = v11;
  sub_3B40(v24, @"Last Measurement Time", (a1 + 848));
  v12 = *(a1 + 856);
  if (v12)
  {
    v12 = waipc::PCIeAudioLink::dumpState(v12);
  }

  v24[2] = @"PCIe Link";
  v24[3] = v12;
  sub_3B40(v25, @"Start Time", (a1 + 872));
  v25[2] = @"Duration";
  valuePtr = ((v2 - v3) * numer / denom) / 1000000000.0;
  if (!CFNumberCreate(0, kCFNumberDoubleType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_3910(v21, &v18);
  for (i = 25; i != -1; i -= 2)
  {
    v14 = v21[i];
    if (v14)
    {
      CFRelease(v14);
    }
  }

  v15 = v18;
  os_unfair_lock_unlock((a1 + 136));
  return v15;
}

void sub_3804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_8F38((v18 + 200));
  sub_2AE0(&a9);
  sub_2AE0(&a10);
  sub_2AE0(&a11);
  sub_2AE0(&a12);
  while (v17 != &a16)
  {
    v17 -= 16;
    sub_3BF8(v17);
  }

  os_unfair_lock_unlock(v16 + 34);
  _Unwind_Resume(a1);
}

const void *sub_3910@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *keys = 0u;
  v14 = 0u;
  v12 = 0;
  v4 = (a1 + 8);
  v5 = 208;
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

void sub_3A4C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_93E0(v1);
  _Unwind_Resume(a1);
}

void *sub_3A88(void *a1, uint64_t a2, uint64_t *a3)
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

void *sub_3B40(void *a1, uint64_t a2, uint64_t *a3)
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

uint64_t sub_3BF8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_3C2C(id a1)
{
  for (i = 0; i != 4; ++i)
  {
    qword_14220[i] = os_log_create("com.apple.WirelessIPC.audio.BasebandVoice", (&off_10488)[i]);
  }
}

uint64_t sub_3C88(_UNKNOWN **a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v8 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "QueryInterface", "", buf, 2u);
  }

  if (a1 == &off_14158)
  {
    if (a4)
    {
      *&v20.byte0 = a2;
      *&v20.byte8 = a3;
      v12 = CFUUIDCreateFromUUIDBytes(0, v20);
      if (v12)
      {
        if (qword_14218 != -1)
        {
          sub_A668();
        }

        v13 = qword_14230;
        if (os_signpost_enabled(qword_14230))
        {
          *buf = 138412290;
          v19 = v12;
          _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "QueryInterface", "uuid %@", buf, 0xCu);
        }

        v14 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
        if (CFEqual(v12, v14) || (v15 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u), CFEqual(v12, v15)))
        {
          sub_4064(&off_14158);
          v9 = 0;
          *a4 = &off_14158;
        }

        else
        {
          v9 = 2147483652;
        }

        goto LABEL_20;
      }

      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v9 = 1852797029;
      v10 = qword_14220[0];
      if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v11 = "failed to create CFUUID";
        goto LABEL_10;
      }
    }

    else
    {
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v9 = 1852797029;
      v10 = qword_14220[0];
      if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
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

  if (qword_14218 != -1)
  {
    sub_A668();
  }

  v9 = 560947818;
  v10 = qword_14220[0];
  if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
  {
    goto LABEL_30;
  }

  *buf = 0;
  v11 = "bad driver reference";
LABEL_10:
  _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
  v12 = 0;
LABEL_20:
  if (qword_14218 != -1)
  {
    sub_A668();
  }

LABEL_31:
  v16 = qword_14230;
  if (os_signpost_enabled(qword_14230))
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

uint64_t sub_4064(_UNKNOWN **a1)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v2 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    LOWORD(v7[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AddRef", "", v7, 2u);
  }

  os_unfair_lock_lock(&unk_14008);
  if (a1 == &off_14158)
  {
    if (dword_14028 != -1)
    {
      v4 = ++dword_14028;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v3 = qword_14220[0];
    if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      v4 = 0;
      goto LABEL_16;
    }

    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "bad driver reference", v7, 2u);
  }

  v4 = 0;
LABEL_13:
  if (qword_14218 != -1)
  {
    sub_A668();
  }

LABEL_16:
  v5 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AddRef", "result %u", v7, 8u);
  }

  os_unfair_lock_unlock(&unk_14008);
  return v4;
}

uint64_t sub_4244(_UNKNOWN **a1)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v2 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    LOWORD(v7[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Release", "", v7, 2u);
  }

  os_unfair_lock_lock(&unk_14008);
  if (a1 == &off_14158)
  {
    if (dword_14028)
    {
      v4 = --dword_14028;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v3 = qword_14220[0];
    if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      v4 = 0;
      goto LABEL_16;
    }

    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "bad driver reference", v7, 2u);
  }

  v4 = 0;
LABEL_13:
  if (qword_14218 != -1)
  {
    sub_A668();
  }

LABEL_16:
  v5 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Release", "result %u", v7, 8u);
  }

  os_unfair_lock_unlock(&unk_14008);
  return v4;
}

uint64_t sub_4420(_UNKNOWN **a1, int *a2)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v4 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    LOWORD(v12[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Initialize", "", v12, 2u);
  }

  os_unfair_lock_lock(&unk_14008);
  if (a1 == &off_14158)
  {
    off_14000[0] = a2;
    v8 = dispatch_workloop_create("com.apple.WirelessIPC.audio.BasebandVoice");
    qword_14010 = v8;
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    qword_14018 = dispatch_queue_create_with_target_V2("com.apple.WirelessIPC.audio.BasebandVoice.PlugIn", v9, v8);
    os_unfair_lock_assert_owner(&unk_14008);
    if (!os_variant_has_internal_diagnostics() || (qword_14020 = os_state_add_handler()) != 0)
    {
      v5 = 0;
LABEL_14:
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      goto LABEL_16;
    }

    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v5 = 2003329396;
    v6 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v12[0]) = 0;
      v7 = "failed to add state handler";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v5 = 560947818;
    v6 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v12[0]) = 0;
      v7 = "bad driver reference";
LABEL_10:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, v7, v12, 2u);
      goto LABEL_14;
    }
  }

LABEL_16:
  v10 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v12[0] = 67109120;
    v12[1] = v5;
    _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Initialize", "result %{waipc:4cc}u", v12, 8u);
  }

  os_unfair_lock_unlock(&unk_14008);
  return v5;
}

uint64_t sub_46D8(_UNKNOWN **a1)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v2 = 1970171760;
  v3 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    LOWORD(v8[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateDevice", "", v8, 2u);
    v4 = qword_14218;
    if (a1 == &off_14158)
    {
      goto LABEL_10;
    }

    if (qword_14218 != -1)
    {
      sub_A668();
    }
  }

  else if (a1 == &off_14158)
  {
    goto LABEL_12;
  }

  v2 = 560947818;
  v5 = qword_14220[0];
  if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
  {
    goto LABEL_12;
  }

  LOWORD(v8[0]) = 0;
  _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "bad driver reference", v8, 2u);
  v4 = qword_14218;
LABEL_10:
  if (v4 != -1)
  {
    sub_A668();
  }

LABEL_12:
  v6 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v8[0] = 67109120;
    v8[1] = v2;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateDevice", "result %{waipc:4cc}u", v8, 8u);
  }

  return v2;
}

uint64_t sub_4894(_UNKNOWN **a1)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v2 = 1970171760;
  v3 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    LOWORD(v8[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DestroyDevice", "", v8, 2u);
    v4 = qword_14218;
    if (a1 == &off_14158)
    {
      goto LABEL_10;
    }

    if (qword_14218 != -1)
    {
      sub_A668();
    }
  }

  else if (a1 == &off_14158)
  {
    goto LABEL_12;
  }

  v2 = 560947818;
  v5 = qword_14220[0];
  if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
  {
    goto LABEL_12;
  }

  LOWORD(v8[0]) = 0;
  _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "bad driver reference", v8, 2u);
  v4 = qword_14218;
LABEL_10:
  if (v4 != -1)
  {
    sub_A668();
  }

LABEL_12:
  v6 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v8[0] = 67109120;
    v8[1] = v2;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DestroyDevice", "result %{waipc:4cc}u", v8, 8u);
  }

  return v2;
}

uint64_t sub_4A50(_UNKNOWN **a1, int a2)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v4 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    LOWORD(v10[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AddDeviceClient", "", v10, 2u);
  }

  if (a1 == &off_14158)
  {
    if (a2 == 2)
    {
      v5 = 0;
      goto LABEL_17;
    }

    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v5 = 560947818;
    v6 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      v7 = "bad device ID";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v5 = 560947818;
    v6 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      v7 = "bad driver reference";
LABEL_16:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, v7, v10, 2u);
LABEL_17:
      if (qword_14218 != -1)
      {
        sub_A668();
      }
    }
  }

  v8 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v10[0] = 67109120;
    v10[1] = v5;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AddDeviceClient", "result %{waipc:4cc}u", v10, 8u);
  }

  return v5;
}

uint64_t sub_4C54(_UNKNOWN **a1, int a2)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v4 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    LOWORD(v10[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RemoveDeviceClient", "", v10, 2u);
  }

  if (a1 == &off_14158)
  {
    if (a2 == 2)
    {
      v5 = 0;
      goto LABEL_17;
    }

    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v5 = 560947818;
    v6 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      v7 = "bad device ID";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v5 = 560947818;
    v6 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      v7 = "bad driver reference";
LABEL_16:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, v7, v10, 2u);
LABEL_17:
      if (qword_14218 != -1)
      {
        sub_A668();
      }
    }
  }

  v8 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v10[0] = 67109120;
    v10[1] = v5;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RemoveDeviceClient", "result %{waipc:4cc}u", v10, 8u);
  }

  return v5;
}

uint64_t sub_4E58(_UNKNOWN **a1, int a2, uint64_t a3, void (**a4)(void, void))
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v8 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    LOWORD(v20[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PerformDeviceConfigurationChange", "", v20, 2u);
  }

  if (a1 == &off_14158)
  {
    if (a2 == 2)
    {
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v12 = qword_14238;
      v13 = os_signpost_id_make_with_pointer(qword_14238, a4);
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
        sub_A6BC();
      }

      if (!a4)
      {
        sub_A6E8();
      }

      a4[2](a4, 1);
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v15 = qword_14238;
      v16 = os_signpost_id_make_with_pointer(qword_14238, a4);
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

    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v9 = 560947818;
    v10 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      v11 = "bad device ID";
      goto LABEL_28;
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v9 = 560947818;
    v10 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      v11 = "bad driver reference";
LABEL_28:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, v11, v20, 2u);
LABEL_29:
      if (qword_14218 != -1)
      {
        sub_A668();
      }
    }
  }

  v18 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v20[0] = 67109120;
    v20[1] = v9;
    _os_signpost_emit_with_name_impl(&dword_0, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PerformDeviceConfigurationChange", "result %{waipc:4cc}u", v20, 8u);
  }

  return v9;
}

uint64_t sub_5184(_UNKNOWN **a1, int a2, uint64_t a3, void (**a4)(void, void))
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v8 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    LOWORD(v20[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AbortDeviceConfigurationChange", "", v20, 2u);
  }

  if (a1 == &off_14158)
  {
    if (a2 == 2)
    {
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v12 = qword_14238;
      v13 = os_signpost_id_make_with_pointer(qword_14238, a4);
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
        sub_A714();
      }

      if (!a4)
      {
        sub_A740();
      }

      a4[2](a4, 0);
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v15 = qword_14238;
      v16 = os_signpost_id_make_with_pointer(qword_14238, a4);
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

    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v9 = 560947818;
    v10 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      v11 = "bad device ID";
      goto LABEL_28;
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v9 = 560947818;
    v10 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      v11 = "bad driver reference";
LABEL_28:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, v11, v20, 2u);
LABEL_29:
      if (qword_14218 != -1)
      {
        sub_A668();
      }
    }
  }

  v18 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v20[0] = 67109120;
    v20[1] = v9;
    _os_signpost_emit_with_name_impl(&dword_0, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AbortDeviceConfigurationChange", "result %{waipc:4cc}u", v20, 8u);
  }

  return v9;
}

BOOL sub_54B0(_UNKNOWN **a1, int a2, uint64_t a3, int *a4)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v7 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v8 = *a4;
    v9 = a4[1];
    v10 = a4[2];
    v23 = 67109888;
    v24 = a2;
    v25 = 1024;
    v26 = v8;
    v27 = 1024;
    v28 = v9;
    v29 = 1024;
    v30 = v10;
    _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "HasProperty", "object %u, selector %{waipc:4cc}u, scope %{waipc:4cc}u, element %u", &v23, 0x1Au);
  }

  if (a1 != &off_14158)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v11 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      v12 = "bad driver reference";
LABEL_10:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, &v23, 2u);
LABEL_11:
      v13 = 0;
      goto LABEL_93;
    }

    goto LABEL_24;
  }

  if (!a4)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v11 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      v12 = "no address";
      goto LABEL_10;
    }

LABEL_24:
    v13 = 0;
    goto LABEL_95;
  }

  if ((a2 - 3) < 2)
  {
    v13 = 0;
    v14 = *a4;
    if (*a4 > 1935762291)
    {
      if (v14 > 1936092512)
      {
        if (v14 == 1936092513 || v14 == 1937007734)
        {
          goto LABEL_92;
        }

        v16 = 1936092532;
      }

      else
      {
        if (v14 == 1935762292 || v14 == 1935894638)
        {
          goto LABEL_92;
        }

        v16 = 1935960434;
      }
    }

    else
    {
      if (v14 <= 1870098019)
      {
        if (v14 != 1650682995 && v14 != 1668047219)
        {
          v16 = 1819569763;
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      if (v14 == 1870098020 || v14 == 1885762592)
      {
        goto LABEL_92;
      }

      v16 = 1885762657;
    }

    goto LABEL_91;
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      goto LABEL_11;
    }

    v13 = 0;
    v14 = *a4;
    if (*a4 > 1819173228)
    {
      if (v14 > 1937007733)
      {
        if ((v14 - 1969841250) >= 3)
        {
          v15 = 25718;
LABEL_36:
          v16 = v15 | 0x73740000;
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      if (v14 == 1819173229 || v14 == 1870098020)
      {
        goto LABEL_92;
      }

      v16 = 1920168547;
      goto LABEL_91;
    }

    if (v14 > 1668049698)
    {
      if (v14 == 1668049699 || v14 == 1684370979)
      {
        goto LABEL_92;
      }

      v16 = 1819107691;
      goto LABEL_91;
    }

    if (v14 == 1650682995)
    {
      goto LABEL_92;
    }

    v17 = 1651472419;
LABEL_54:
    if (v14 == v17)
    {
      goto LABEL_92;
    }

    v16 = 1668047219;
    goto LABEL_91;
  }

  v13 = 0;
  v14 = *a4;
  if (*a4 <= 1819107690)
  {
    if (v14 <= 1668575851)
    {
      if (v14 > 1668049763)
      {
        if (v14 == 1668049764 || v14 == 1668050795)
        {
          goto LABEL_92;
        }

        v16 = 1668510818;
        goto LABEL_91;
      }

      if (v14 == 1634429294)
      {
        goto LABEL_92;
      }

      v17 = 1650682995;
      goto LABEL_54;
    }

    if (v14 > 1735354733)
    {
      if (v14 == 1735354734 || v14 == 1751737454)
      {
        goto LABEL_92;
      }

      v16 = 1818850926;
      goto LABEL_91;
    }

    if (v14 == 1668575852)
    {
      goto LABEL_92;
    }

    if (v14 != 1684434036)
    {
      v16 = 1718843939;
      goto LABEL_91;
    }
  }

  else
  {
    if (v14 <= 1919512166)
    {
      if (v14 > 1853059618)
      {
        if (v14 == 1853059619 || v14 == 1853059700)
        {
          goto LABEL_92;
        }

        v16 = 1870098020;
        goto LABEL_91;
      }

      if (v14 == 1819107691 || v14 == 1819173229)
      {
        goto LABEL_92;
      }

      v18 = 1819569763;
      goto LABEL_82;
    }

    if (v14 > 1937007733)
    {
      if (v14 <= 1953653101)
      {
        if (v14 != 1937007734)
        {
          v15 = 27939;
          goto LABEL_36;
        }

LABEL_92:
        v13 = 1;
        goto LABEL_93;
      }

      if (v14 == 1969841184)
      {
        goto LABEL_92;
      }

      v16 = 1953653102;
LABEL_91:
      if (v14 != v16)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    if (v14 == 1919512167)
    {
      goto LABEL_92;
    }

    if (v14 != 1935763060)
    {
      v18 = 1936092276;
LABEL_82:
      if (v14 != v18)
      {
        goto LABEL_93;
      }
    }
  }

  v19 = a4[1];
  v13 = v19 == 1768845428 || v19 == 1869968496;
LABEL_93:
  if (qword_14218 != -1)
  {
    sub_A668();
  }

LABEL_95:
  v21 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v23 = 67109120;
    v24 = v13;
    _os_signpost_emit_with_name_impl(&dword_0, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "HasProperty", "result %{BOOL}d", &v23, 8u);
  }

  return v13;
}

uint64_t sub_5AD0(_UNKNOWN **a1, int a2, uint64_t a3, int *a4, char *a5)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v9 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v10 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v25 = 67109888;
    v26 = a2;
    v27 = 1024;
    v28 = v10;
    v29 = 1024;
    v30 = v11;
    v31 = 1024;
    v32 = v12;
    _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IsPropertySettable", "object %u, selector %{waipc:4cc}u, scope %{waipc:4cc}u, element %u", &v25, 0x1Au);
  }

  if (a1 != &off_14158)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v13 = 560947818;
    v14 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      v15 = "bad driver reference";
LABEL_10:
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, v15, &v25, 2u);
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (a4)
  {
    if (!a5)
    {
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v13 = 1852797029;
      v14 = qword_14220[0];
      if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        v15 = "nowhere to store result";
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    if ((a2 - 3) < 2)
    {
      v21 = 0;
      v13 = 2003332927;
      v22 = *a4;
      if (*a4 > 1935762291)
      {
        if (v22 > 1936092512)
        {
          if (v22 == 1936092513 || v22 == 1937007734)
          {
            goto LABEL_96;
          }

          if (v22 != 1936092532)
          {
LABEL_11:
            if (qword_14218 != -1)
            {
              sub_A668();
            }

            goto LABEL_13;
          }
        }

        else if (v22 != 1935762292)
        {
          if (v22 == 1935894638)
          {
            goto LABEL_96;
          }

          v24 = 1935960434;
          goto LABEL_56;
        }
      }

      else
      {
        if (v22 <= 1870098019)
        {
          if (v22 == 1650682995)
          {
            goto LABEL_96;
          }

          v23 = 1668047219;
          goto LABEL_40;
        }

        if (v22 == 1870098020)
        {
          goto LABEL_96;
        }

        if (v22 != 1885762592)
        {
          v24 = 1885762657;
          goto LABEL_56;
        }
      }
    }

    else
    {
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
              goto LABEL_85;
            }

            v19 = 1819107691;
          }

          else
          {
            if (v18 == 1650682995 || v18 == 1651472419)
            {
              goto LABEL_85;
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
              goto LABEL_84;
            }

LABEL_85:
            v13 = 0;
            *a5 = 0;
            goto LABEL_11;
          }

          if (v18 == 1819173229 || v18 == 1870098020)
          {
            goto LABEL_85;
          }

          v19 = 1920168547;
        }

LABEL_84:
        if (v18 != v19)
        {
          goto LABEL_11;
        }

        goto LABEL_85;
      }

      v21 = 0;
      v13 = 2003332927;
      v22 = *a4;
      if (*a4 <= 1819107690)
      {
        if (v22 > 1668575851)
        {
          if (v22 > 1735354733)
          {
            if (v22 == 1735354734 || v22 == 1751737454)
            {
              goto LABEL_96;
            }

            v24 = 1818850926;
          }

          else
          {
            if (v22 == 1668575852 || v22 == 1684434036)
            {
              goto LABEL_96;
            }

            v24 = 1718843939;
          }
        }

        else if (v22 > 1668049763)
        {
          if (v22 == 1668049764 || v22 == 1668050795)
          {
            goto LABEL_96;
          }

          v24 = 1668510818;
        }

        else
        {
          if (v22 == 1634429294 || v22 == 1650682995)
          {
            goto LABEL_96;
          }

          v24 = 1668047219;
        }

        goto LABEL_56;
      }

      if (v22 > 1919512166)
      {
        if (v22 <= 1937007733)
        {
          if (v22 == 1919512167 || v22 == 1935763060)
          {
            goto LABEL_96;
          }

          v24 = 1936092276;
        }

        else if (v22 > 1953653101)
        {
          if (v22 == 1953653102)
          {
            goto LABEL_96;
          }

          v24 = 1969841184;
        }

        else
        {
          if (v22 == 1937007734)
          {
            goto LABEL_96;
          }

          v24 = 1937009955;
        }

        goto LABEL_56;
      }

      if (v22 <= 1853059618)
      {
        if (v22 == 1819107691)
        {
          goto LABEL_96;
        }

        v23 = 1819173229;
LABEL_40:
        if (v22 == v23)
        {
          goto LABEL_96;
        }

        v24 = 1819569763;
        goto LABEL_56;
      }

      if (v22 == 1853059619)
      {
        goto LABEL_96;
      }

      if (v22 != 1853059700)
      {
        v24 = 1870098020;
LABEL_56:
        if (v22 != v24)
        {
          goto LABEL_11;
        }

LABEL_96:
        v13 = 0;
        *a5 = v21;
        goto LABEL_11;
      }
    }

    v21 = 1;
    goto LABEL_96;
  }

  if (qword_14218 != -1)
  {
    sub_A668();
  }

  v13 = 1852797029;
  v14 = qword_14220[0];
  if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
  {
    LOWORD(v25) = 0;
    v15 = "no address";
    goto LABEL_10;
  }

LABEL_13:
  v16 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    if (a5)
    {
      v17 = *a5;
    }

    else
    {
      v17 = 0;
    }

    v25 = 67109376;
    v26 = v13;
    v27 = 1024;
    v28 = v17;
    _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IsPropertySettable", "result %{waipc:4cc}u, isSettable %{BOOL}d", &v25, 0xEu);
  }

  return v13;
}

uint64_t sub_6184(_UNKNOWN **a1, int a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, int *a7)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v11 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v12 = *a4;
    v13 = a4[1];
    v14 = a4[2];
    v27 = 67109888;
    v28 = a2;
    v29 = 1024;
    v30 = v12;
    v31 = 1024;
    v32 = v13;
    v33 = 1024;
    v34 = v14;
    _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetPropertyDataSize", "object %u, selector %{waipc:4cc}u, scope %{waipc:4cc}u, element %u", &v27, 0x1Au);
  }

  if (a1 != &off_14158)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v15 = 560947818;
    v16 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v27) = 0;
      v17 = "bad driver reference";
LABEL_10:
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, v17, &v27, 2u);
      goto LABEL_109;
    }

    goto LABEL_111;
  }

  if (a4)
  {
    if (!a7)
    {
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v15 = 1852797029;
      v16 = qword_14220[0];
      if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        v17 = "nowhere to store result";
        goto LABEL_10;
      }

      goto LABEL_111;
    }

    if ((a2 - 3) >= 2)
    {
      if (a2 != 2)
      {
        if (a2 != 1)
        {
          v15 = 560947818;
          goto LABEL_109;
        }

        v15 = 2003332927;
        v18 = *a4;
        v19 = 4;
        if (*a4 > 1819173228)
        {
          if (v18 > 1937007733)
          {
            if ((v18 - 1969841250) < 3)
            {
              goto LABEL_108;
            }

            goto LABEL_50;
          }

          if (v18 != 1819173229)
          {
            if (v18 != 1870098020)
            {
              v22 = 1920168547;
              goto LABEL_99;
            }

            if (qword_14240 == -1)
            {
              goto LABEL_105;
            }

            goto LABEL_117;
          }

LABEL_100:
          v19 = 8;
          goto LABEL_108;
        }

        if (v18 > 1668049698)
        {
          if (v18 != 1668049699)
          {
            if (v18 != 1684370979)
            {
              v22 = 1819107691;
LABEL_99:
              if (v18 != v22)
              {
                goto LABEL_109;
              }

              goto LABEL_100;
            }

            if (qword_14240 == -1)
            {
LABEL_105:
              if (byte_14248)
              {
                v19 = 4;
              }

              else
              {
                v19 = 0;
              }

              goto LABEL_108;
            }

LABEL_117:
            sub_A76C();
            goto LABEL_105;
          }
        }

        else
        {
          if (v18 == 1650682995)
          {
            goto LABEL_108;
          }

          if (v18 != 1651472419)
          {
LABEL_59:
            v20 = 1668047219;
LABEL_95:
            if (v18 != v20)
            {
LABEL_109:
              if (qword_14218 != -1)
              {
                sub_A668();
              }

              goto LABEL_111;
            }

LABEL_108:
            v15 = 0;
            *a7 = v19;
            goto LABEL_109;
          }
        }

        goto LABEL_91;
      }

      v15 = 2003332927;
      v18 = *a4;
      v19 = 4;
      if (*a4 <= 1819107690)
      {
        if (v18 <= 1668575851)
        {
          if (v18 > 1668049763)
          {
            if (v18 == 1668049764 || v18 == 1668050795)
            {
              goto LABEL_108;
            }

            v20 = 1668510818;
            goto LABEL_95;
          }

          if (v18 == 1634429294 || v18 == 1650682995)
          {
            goto LABEL_108;
          }

          goto LABEL_59;
        }

        if (v18 > 1735354733)
        {
          if (v18 == 1735354734 || v18 == 1751737454)
          {
            goto LABEL_108;
          }

          v20 = 1818850926;
          goto LABEL_95;
        }

        if (v18 == 1668575852)
        {
LABEL_91:
          v19 = 0;
          goto LABEL_108;
        }

        if (v18 == 1684434036)
        {
          goto LABEL_108;
        }

        if (v18 != 1718843939)
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v18 > 1919512166)
        {
          if (v18 <= 1937007733)
          {
            if (v18 == 1919512167 || v18 == 1935763060)
            {
              goto LABEL_108;
            }

            v20 = 1936092276;
            goto LABEL_95;
          }

          if (v18 > 1953653101)
          {
            if (v18 == 1953653102)
            {
              goto LABEL_108;
            }

            v22 = 1969841184;
            goto LABEL_99;
          }

          if (v18 == 1937007734)
          {
            goto LABEL_108;
          }

          v21 = 1937009955;
LABEL_86:
          if (v18 != v21)
          {
            goto LABEL_109;
          }

          v23 = a4[1];
          if (v23 == 1735159650)
          {
            goto LABEL_100;
          }

          if (v23 == 1869968496 || v23 == 1768845428)
          {
            v19 = 4;
            goto LABEL_108;
          }

          goto LABEL_91;
        }

        if (v18 <= 1853059618)
        {
          if (v18 == 1819107691 || v18 == 1819173229)
          {
            goto LABEL_100;
          }

LABEL_32:
          v20 = 1819569763;
          goto LABEL_95;
        }

        if (v18 != 1853059619)
        {
          if (v18 == 1853059700)
          {
            goto LABEL_100;
          }

          v21 = 1870098020;
          goto LABEL_86;
        }
      }

      v19 = 16;
      goto LABEL_108;
    }

    v15 = 2003332927;
    v18 = *a4;
    v19 = 4;
    if (*a4 > 1935762291)
    {
      if (v18 <= 1936092512)
      {
        if (v18 == 1935762292 || v18 == 1935894638)
        {
          goto LABEL_108;
        }

        v20 = 1935960434;
        goto LABEL_95;
      }

      if (v18 == 1936092513)
      {
LABEL_60:
        v19 = 56;
        goto LABEL_108;
      }

      if (v18 != 1936092532)
      {
LABEL_50:
        v20 = 1937007734;
        goto LABEL_95;
      }
    }

    else
    {
      if (v18 <= 1870098019)
      {
        if (v18 == 1650682995 || v18 == 1668047219)
        {
          goto LABEL_108;
        }

        goto LABEL_32;
      }

      if (v18 == 1870098020)
      {
        goto LABEL_91;
      }

      if (v18 != 1885762592)
      {
        if (v18 != 1885762657)
        {
          goto LABEL_109;
        }

        goto LABEL_60;
      }
    }

    v19 = 40;
    goto LABEL_108;
  }

  if (qword_14218 != -1)
  {
    sub_A668();
  }

  v15 = 1852797029;
  v16 = qword_14220[0];
  if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
  {
    LOWORD(v27) = 0;
    v17 = "no address";
    goto LABEL_10;
  }

LABEL_111:
  v24 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    if (a7)
    {
      v25 = *a7;
    }

    else
    {
      v25 = 0;
    }

    v27 = 67109376;
    v28 = v15;
    v29 = 1024;
    v30 = v25;
    _os_signpost_emit_with_name_impl(&dword_0, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetPropertyDataSize", "result %{waipc:4cc}u, dataSize %u", &v27, 0xEu);
  }

  return v15;
}

uint64_t sub_68DC(_UNKNOWN **a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v13 = qword_14230;
  if (os_signpost_enabled(qword_14230))
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

  *&v56[12] = 0;
  *&v56[20] = 0;
  if (!off_14000[0])
  {
    sub_A794();
  }

  if (a1 != &off_14158)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v17 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "bad driver reference", buf, 2u);
    }

    goto LABEL_11;
  }

  if (!a4)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v22 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "no address", buf, 2u);
    }

    memset(&buf[4], 0, 20);
    v18 = 1852797029;
    goto LABEL_12;
  }

  if ((a2 - 3) >= 2)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
LABEL_11:
        memset(&buf[4], 0, 20);
        v18 = 560947818;
LABEL_12:
        v55 = v18;
        *v56 = *buf;
        *&v56[16] = *&buf[16];
        goto LABEL_13;
      }

      *&v56[20] = 0;
      v21 = 2003332927;
LABEL_90:
      v55 = v21;
      *&v56[4] = 0;
      *&v56[12] = 0;
      goto LABEL_15;
    }

    if (*a4 == 1853059700)
    {
      if (a7 >= 8)
      {
        if (a8)
        {
          if (qword_14218 != -1)
          {
            sub_A668();
          }

          v39 = qword_14230;
          if (os_signpost_enabled(qword_14230))
          {
            v40 = *a8;
            *buf = 134217984;
            *&buf[4] = v40;
            _os_signpost_emit_with_name_impl(&dword_0, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetPropertyData", "NominalSampleRate %lf", buf, 0xCu);
          }

          if (*a8 == 32000.0)
          {
            sub_9798(32000.0);
            v21 = 0;
            goto LABEL_89;
          }

          if (qword_14218 != -1)
          {
            sub_A668();
          }

          v46 = qword_14220[0];
          if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
          {
            v47 = *a8;
            *buf = 134217984;
            *&buf[4] = v47;
            _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "unsupported sample rate %lf", buf, 0xCu);
          }
        }

        v21 = 1852797029;
        goto LABEL_89;
      }

      v21 = 561211770;
    }

    else
    {
      v21 = 2003332927;
    }

LABEL_89:
    *&v56[20] = 0;
    goto LABEL_90;
  }

  v23 = *a4;
  if (*a4 != 1885762592 && v23 != 1936092532)
  {
    if (v23 != 1935762292)
    {
      a8 = 0;
      v28 = 0;
      v29 = 2003332927;
      goto LABEL_118;
    }

    if (a7 >= 4)
    {
      if (a8)
      {
        if (qword_14218 != -1)
        {
          sub_A668();
        }

        v24 = qword_14230;
        if (os_signpost_enabled(qword_14230))
        {
          v25 = *a8 != 0;
          *buf = 67109120;
          *&buf[4] = v25;
          _os_signpost_emit_with_name_impl(&dword_0, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetPropertyData", "IsActive %{BOOL}d", buf, 8u);
        }

        v26 = *a8 != 0;
        if (a2 == 3)
        {
          v27 = 64;
        }

        else
        {
          v27 = 65;
        }

        os_unfair_lock_lock(&unk_14008);
        if (*(off_14000 + v27) == v26)
        {
          a8 = 0;
          v54 = 0;
        }

        else
        {
          *(off_14000 + v27) = v26;
          v54 = 0x676C6F6273616374;
          a8 = 1;
        }

        os_unfair_lock_unlock(&unk_14008);
        v29 = 0;
        v28 = v54;
        goto LABEL_118;
      }

      goto LABEL_77;
    }

    goto LABEL_48;
  }

  if (a7 >= 0x28)
  {
    if (a8)
    {
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v30 = qword_14230;
      if (os_signpost_enabled(qword_14230))
      {
        v31 = *a8;
        v32 = *(a8 + 8);
        v33 = *(a8 + 12);
        v34 = *(a8 + 16);
        v35 = *(a8 + 20);
        v36 = *(a8 + 24);
        v37 = *(a8 + 28);
        v38 = *(a8 + 32);
        *buf = 134219776;
        *&buf[4] = v31;
        *&buf[12] = 1024;
        *&buf[14] = v32;
        *&buf[18] = 1024;
        *&buf[20] = v33;
        *&buf[24] = 1024;
        v58 = v34;
        v59 = 1024;
        v60 = v35;
        v61 = 1024;
        v62 = v36;
        v63 = 1024;
        v64 = v37;
        v65 = 1024;
        v66 = v38;
        _os_signpost_emit_with_name_impl(&dword_0, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetPropertyData", "sampleRate %lf, formatID %{waipc:4cc}u, formatFlags 0x%08x, bytesPerPacket %u, framesPerPacket %u, bytesPerFrame %u, channelsPerFrame %u, bitsPerChannel %u", buf, 0x36u);
      }

      if (*a8 == 32000.0)
      {
        if (*(a8 + 8) == 1819304813)
        {
          if (*(a8 + 12) == 12)
          {
            if (*(a8 + 16) == 2)
            {
              if (*(a8 + 20) == 1)
              {
                if (*(a8 + 24) == 2)
                {
                  if (*(a8 + 28) == 1)
                  {
                    if (*(a8 + 32) == 16)
                    {
                      sub_9798(32000.0);
                      a8 = 0;
                      v29 = 0;
                      v28 = 0;
                      goto LABEL_118;
                    }

                    if (qword_14218 != -1)
                    {
                      sub_A668();
                    }

                    v43 = qword_14220[0];
                    if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
                    {
LABEL_117:
                      a8 = 0;
                      v28 = 0;
                      v29 = 560226676;
                      goto LABEL_118;
                    }

                    v53 = *(a8 + 32);
                    *buf = 67109120;
                    *&buf[4] = v53;
                    v45 = "unsupported bits per channel %u";
                  }

                  else
                  {
                    if (qword_14218 != -1)
                    {
                      sub_A668();
                    }

                    v43 = qword_14220[0];
                    if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_117;
                    }

                    v52 = *(a8 + 28);
                    *buf = 67109120;
                    *&buf[4] = v52;
                    v45 = "unsupported channels per frame %u";
                  }
                }

                else
                {
                  if (qword_14218 != -1)
                  {
                    sub_A668();
                  }

                  v43 = qword_14220[0];
                  if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_117;
                  }

                  v51 = *(a8 + 24);
                  *buf = 67109120;
                  *&buf[4] = v51;
                  v45 = "unsupported bytes per frame %u";
                }
              }

              else
              {
                if (qword_14218 != -1)
                {
                  sub_A668();
                }

                v43 = qword_14220[0];
                if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
                {
                  goto LABEL_117;
                }

                v50 = *(a8 + 20);
                *buf = 67109120;
                *&buf[4] = v50;
                v45 = "unsupported frames per packet %u";
              }
            }

            else
            {
              if (qword_14218 != -1)
              {
                sub_A668();
              }

              v43 = qword_14220[0];
              if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
              {
                goto LABEL_117;
              }

              v49 = *(a8 + 16);
              *buf = 67109120;
              *&buf[4] = v49;
              v45 = "unsupported bytes per packet %u";
            }
          }

          else
          {
            if (qword_14218 != -1)
            {
              sub_A668();
            }

            v43 = qword_14220[0];
            if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
            {
              goto LABEL_117;
            }

            v48 = *(a8 + 12);
            *buf = 67109120;
            *&buf[4] = v48;
            v45 = "unsupported format flags 0x%08x";
          }
        }

        else
        {
          if (qword_14218 != -1)
          {
            sub_A668();
          }

          v43 = qword_14220[0];
          if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
          {
            goto LABEL_117;
          }

          v44 = *(a8 + 8);
          *buf = 67109120;
          *&buf[4] = v44;
          v45 = "unsupported format ID %{waipc:4cc}u";
        }

        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, v45, buf, 8u);
        goto LABEL_117;
      }

      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v41 = qword_14220[0];
      if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
      {
        v42 = *a8;
        *buf = 134217984;
        *&buf[4] = v42;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "unsupported sample rate %lf", buf, 0xCu);
      }

      a8 = 0;
    }

LABEL_77:
    v28 = 0;
    v29 = 1852797029;
    goto LABEL_118;
  }

LABEL_48:
  a8 = 0;
  v28 = 0;
  v29 = 561211770;
LABEL_118:
  v55 = v29;
  *&v56[4] = a8;
  *&v56[12] = v28;
  *&v56[20] = 0;
LABEL_13:
  if (*&v56[4])
  {
    (*off_14000[0])(off_14000[0], a2, *&v56[4], &v56[12]);
  }

LABEL_15:
  if (qword_14218 != -1)
  {
    sub_A668();
  }

  v19 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    *buf = 67109376;
    *&buf[4] = v55;
    *&buf[8] = 2048;
    *&buf[10] = *&v56[4];
    _os_signpost_emit_with_name_impl(&dword_0, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetPropertyData", "result %{waipc:4cc}u, changed %zu", buf, 0x12u);
  }

  return v55;
}

uint64_t sub_729C(_UNKNOWN **a1, int a2)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v4 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StartIO", "", buf, 2u);
  }

  os_unfair_lock_lock(&unk_14008);
  if (a1 == &off_14158)
  {
    if (a2 == 2)
    {
      if (!dword_1402C)
      {
        v10 = llround(*&qword_14030 * 0.02);
        *buf = qword_14010;
        v13 = qword_14030;
        v14 = v10 * llround(15.0);
        v15 = vcvtpd_u64_f64(*&qword_14030 * 0.0001);
        v16 = xmmword_AFA0;
        v17 = 0x3FE0000000000000;
        v18 = v10;
        v19 = 2;
        v20 = 0x400000004;
        v21 = 2 * v10;
        v22 = vcvtpd_u64_f64(*&qword_14030 * 0.001) + 4 * v10;
        v23 = vdupq_n_s64(0x3F747AE147AE147BuLL);
        v24 = 0x3F747AE147AE147BLL;
        v25 = qword_14020 != 0;
        sub_1670();
      }

      if (dword_1402C != -1)
      {
        ++dword_1402C;
        if ((sub_2E7C(qword_14050, 0x32u) & 1) == 0)
        {
          if (qword_14218 != -1)
          {
            sub_A668();
          }

          v11 = qword_14220[0];
          v5 = 0;
          if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          *buf = 0;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "IO started but baseband audio seems inactive", buf, 2u);
        }

        v5 = 0;
LABEL_22:
        if (qword_14218 != -1)
        {
          sub_A668();
        }

        goto LABEL_24;
      }

      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v5 = 1852797029;
      v6 = qword_14220[0];
      if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v7 = "out of references";
        goto LABEL_21;
      }
    }

    else
    {
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v5 = 560947818;
      v6 = qword_14220[0];
      if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v7 = "bad device ID";
        goto LABEL_21;
      }
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v5 = 560947818;
    v6 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "bad driver reference";
LABEL_21:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, v7, buf, 2u);
      goto LABEL_22;
    }
  }

LABEL_24:
  v8 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    *buf = 67109120;
    *&buf[4] = v5;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "StartIO", "result %{waipc:4cc}u", buf, 8u);
  }

  os_unfair_lock_unlock(&unk_14008);
  return v5;
}

uint64_t sub_7814(_UNKNOWN **a1, int a2)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v4 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    LOWORD(v14[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StopIO", "", v14, 2u);
  }

  os_unfair_lock_lock(&unk_14008);
  if (a1 == &off_14158)
  {
    if (a2 == 2)
    {
      if (dword_1402C)
      {
        if (dword_1402C == 1)
        {
          dword_1402C = 0;
          if (qword_14020)
          {
            v8 = sub_3544(qword_14050);
          }

          else
          {
            v8 = 0;
          }

          v11 = qword_14038;
          qword_14038 = v8;
          if (v11)
          {
            CFRelease(v11);
          }

          os_unfair_lock_lock(&unk_14048);
          v12 = qword_14058;
          qword_14050 = 0;
          qword_14058 = 0;
          if (v12)
          {
            sub_9F5C(v12);
          }

          os_unfair_lock_unlock(&unk_14048);
          if (qword_14218 != -1)
          {
            sub_A668();
          }

          v13 = qword_14228;
          if (!os_signpost_enabled(qword_14228))
          {
            v5 = 0;
            goto LABEL_22;
          }

          LOWORD(v14[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOSession", "", v14, 2u);
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

      goto LABEL_20;
    }

    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v5 = 560947818;
    v6 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v14[0]) = 0;
      v7 = "bad device ID";
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v5 = 560947818;
    v6 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v14[0]) = 0;
      v7 = "bad driver reference";
LABEL_19:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, v7, v14, 2u);
LABEL_20:
      if (qword_14218 != -1)
      {
        sub_A668();
      }
    }
  }

LABEL_22:
  v9 = qword_14230;
  if (os_signpost_enabled(qword_14230))
  {
    v14[0] = 67109120;
    v14[1] = v5;
    _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "StopIO", "result %{waipc:4cc}u", v14, 8u);
  }

  os_unfair_lock_unlock(&unk_14008);
  return v5;
}

uint64_t sub_7B5C(_UNKNOWN **a1, int a2, uint64_t a3, unint64_t *a4, void *a5, void *a6)
{
  os_unfair_lock_lock(&unk_14048);
  if (byte_14062 == 1)
  {
    if (qword_14218 != -1)
    {
      sub_A654();
    }

    v11 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetZeroTimeStamp", "", &v21, 2u);
    }
  }

  if (a1 != &off_14158)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v12 = 560947818;
    v13 = qword_14220[0];
    if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    LOWORD(v21) = 0;
    v14 = "bad driver reference";
LABEL_18:
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, v14, &v21, 2u);
LABEL_19:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_20;
  }

  if (a2 != 2)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v12 = 560947818;
    v13 = qword_14220[0];
    if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    LOWORD(v21) = 0;
    v14 = "bad device ID";
    goto LABEL_18;
  }

  if (!qword_14050)
  {
    __assert_rtn("BV_GetZeroTimeStamp", "PlugIn.cpp", 1871, "gBV_State.io.audioSession");
  }

  sub_30F4(qword_14050, &v21);
  v12 = 0;
  v15 = v21;
  v17 = *v22;
  v16 = *&v22[8];
  *a4 = v21;
  *a5 = v17;
  *a6 = v16;
  v18 = v15;
LABEL_20:
  if (byte_14062 == 1)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v19 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      v21 = __PAIR64__(v12, 67109888);
      *v22 = 2048;
      *&v22[2] = v18;
      *&v22[10] = 2048;
      *&v22[12] = v17;
      v23 = 2048;
      v24 = v16;
      _os_signpost_emit_with_name_impl(&dword_0, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetZeroTimeStamp", "result %{waipc:4cc}u, sampleTime %lf, hostTime %llu, seed %llu", &v21, 0x26u);
    }
  }

  os_unfair_lock_unlock(&unk_14048);
  return v12;
}

uint64_t sub_7E4C(_UNKNOWN **a1, int a2, uint64_t a3, int a4, _BYTE *a5, _BYTE *a6)
{
  os_unfair_lock_lock(&unk_14048);
  if (byte_14062 == 1)
  {
    if (qword_14218 != -1)
    {
      sub_A654();
    }

    v11 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      v19 = 67109120;
      v20 = a4;
      _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WillDoIOOperation", "op %{waipc:4cc}u", &v19, 8u);
    }
  }

  if (a1 != &off_14158)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v12 = 560947818;
    v13 = qword_14220[0];
    if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    LOWORD(v19) = 0;
    v14 = "bad driver reference";
LABEL_23:
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, v14, &v19, 2u);
LABEL_24:
    v16 = 0;
    v15 = 0;
    goto LABEL_25;
  }

  if (a2 != 2)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v12 = 560947818;
    v13 = qword_14220[0];
    if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    LOWORD(v19) = 0;
    v14 = "bad device ID";
    goto LABEL_23;
  }

  v15 = 1;
  if (a4 != 1668899692 && a4 != 1919246692)
  {
    v15 = a4 == 1919513701;
  }

  if (a5)
  {
    *a5 = v15;
  }

  v16 = 1;
  v12 = 0;
  if (a6)
  {
    *a6 = 1;
  }

LABEL_25:
  if (byte_14062 == 1)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v17 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      v19 = 67109632;
      v20 = v12;
      v21 = 1024;
      v22 = v15;
      v23 = 1024;
      v24 = v16;
      _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WillDoIOOperation", "result %{waipc:4cc}u, willDo %{BOOL}d, willDoInPlace %{BOOL}d", &v19, 0x14u);
    }
  }

  os_unfair_lock_unlock(&unk_14048);
  return v12;
}

uint64_t sub_811C(_UNKNOWN **a1, int a2, uint64_t a3, int a4, int a5, double *a6)
{
  os_unfair_lock_lock(&unk_14048);
  if (byte_14062 == 1)
  {
    if (qword_14218 != -1)
    {
      sub_A654();
    }

    v11 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      v21 = 67109120;
      LODWORD(v22) = a4;
      _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BeginIOOperation", "op %{waipc:4cc}u", &v21, 8u);
    }
  }

  if (a1 == &off_14158)
  {
    if (a2 == 2)
    {
      if (a4 == 1668899692 && byte_14062 == 1)
      {
        if (qword_14218 != -1)
        {
          sub_A668();
        }

        v15 = qword_14230;
        if (os_signpost_enabled(qword_14230))
        {
          v16 = a6[2];
          v17 = a6[10];
          v18 = a6[18];
          v21 = 134218752;
          v22 = v16;
          v23 = 2048;
          v24 = v17;
          v25 = 2048;
          v26 = v18;
          v27 = 1024;
          v28 = a5;
          _os_signpost_emit_with_name_impl(&dword_0, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BeginIOOperation_CycleInfo", "currentTime %llu, inputTime %llu, outputTime %llu, ioBufferFrameSize %u", &v21, 0x26u);
        }
      }

      v12 = 0;
    }

    else
    {
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v12 = 560947818;
      v13 = qword_14220[0];
      if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        v14 = "bad device ID";
        goto LABEL_23;
      }
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v12 = 560947818;
    v13 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      v14 = "bad driver reference";
LABEL_23:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, v14, &v21, 2u);
    }
  }

  if (byte_14062 == 1)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v19 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      v21 = 67109120;
      LODWORD(v22) = v12;
      _os_signpost_emit_with_name_impl(&dword_0, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BeginIOOperation", "result %{waipc:4cc}u", &v21, 8u);
    }
  }

  os_unfair_lock_unlock(&unk_14048);
  return v12;
}

uint64_t sub_8448(_UNKNOWN **a1, int a2, int a3, uint64_t a4, int a5, int a6, double *a7, void *a8)
{
  os_unfair_lock_lock(&unk_14048);
  if (byte_14062 == 1)
  {
    if (qword_14218 != -1)
    {
      sub_A654();
    }

    v15 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      v16 = a7[2];
      v22 = 67109888;
      v23 = a5;
      v24 = 1024;
      v25 = a3;
      v26 = 2048;
      v27 = v16;
      v28 = 1024;
      v29 = a6;
      _os_signpost_emit_with_name_impl(&dword_0, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DoIOOperation", "op %{waipc:4cc}u, stream %u, currentTime %llu, ioBufferFrameSize %u", &v22, 0x1Eu);
    }
  }

  if (a1 == &off_14158)
  {
    if (a2 == 2)
    {
      if (a5 == 1919513701)
      {
        if (!qword_14050)
        {
          __assert_rtn("BV_DoIOOperation", "PlugIn.cpp", 2097, "gBV_State.io.audioSession");
        }

        sub_33F0(qword_14050, a8, 2 * a6, dword_14088, (a7[18] - dword_14088));
      }

      else
      {
        if (a5 != 1919246692)
        {
          v17 = 1970171760;
          goto LABEL_25;
        }

        if (!qword_14050)
        {
          __assert_rtn("BV_DoIOOperation", "PlugIn.cpp", 2039, "gBV_State.io.audioSession");
        }

        sub_335C(qword_14050, a8, 2 * a6, (dword_14078 + a7[10]));
      }

      v17 = 0;
      goto LABEL_25;
    }

    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v17 = 560947818;
    v18 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      v19 = "bad device ID";
      goto LABEL_20;
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v17 = 560947818;
    v18 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      v19 = "bad driver reference";
LABEL_20:
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, v19, &v22, 2u);
    }
  }

LABEL_25:
  if (byte_14062 == 1)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v20 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      v22 = 67109120;
      v23 = v17;
      _os_signpost_emit_with_name_impl(&dword_0, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DoIOOperation", "result %{waipc:4cc}u", &v22, 8u);
    }
  }

  os_unfair_lock_unlock(&unk_14048);
  return v17;
}

uint64_t sub_87DC(_UNKNOWN **a1, int a2, uint64_t a3, int a4)
{
  os_unfair_lock_lock(&unk_14048);
  if (byte_14062 == 1)
  {
    if (qword_14218 != -1)
    {
      sub_A654();
    }

    v7 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      v13 = 67109120;
      v14 = a4;
      _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "EndIOOperation", "op %{waipc:4cc}u", &v13, 8u);
    }
  }

  if (a1 == &off_14158)
  {
    if (a2 == 2)
    {
      v8 = 0;
      goto LABEL_18;
    }

    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v8 = 560947818;
    v9 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v10 = "bad device ID";
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v8 = 560947818;
    v9 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v10 = "bad driver reference";
LABEL_17:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v10, &v13, 2u);
    }
  }

LABEL_18:
  if (byte_14062 == 1)
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v11 = qword_14230;
    if (os_signpost_enabled(qword_14230))
    {
      v13 = 67109120;
      v14 = v8;
      _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EndIOOperation", "result %{waipc:4cc}u", &v13, 8u);
    }
  }

  os_unfair_lock_unlock(&unk_14048);
  return v8;
}

const void **sub_8A34(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

os_state_data_s *__cdecl sub_8A68(id a1, os_state_hints_s *a2)
{
  os_unfair_lock_lock(&unk_14008);
  sub_8F6C(&unk_14090, &dword_14130);
  sub_8FF4(buf, @"Refcount", &dword_14028);
  sub_8FF4(v20, @"IO Running", &dword_1402C);
  v20[2] = @"Sample Rate";
  valuePtr = qword_14030;
  if (!CFNumberCreate(0, kCFNumberDoubleType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (byte_14040)
  {
    v2 = kCFBooleanTrue;
  }

  else
  {
    v2 = kCFBooleanFalse;
  }

  v22 = @"Input Active";
  v23 = v2;
  if (byte_14041)
  {
    v3 = kCFBooleanTrue;
  }

  else
  {
    v3 = kCFBooleanFalse;
  }

  v24 = @"Output Active";
  v25 = v3;
  if (qword_14050)
  {
    v4 = sub_3544(qword_14050);
  }

  else
  {
    v4 = qword_14038;
    if (qword_14038)
    {
      CFRetain(qword_14038);
    }
  }

  v26 = @"IO Session";
  v27 = v4;
  valuePtr = 0;
  sub_8FF4(&v28, @"Alignment Buffer Frame Size", &dword_14130);
  sub_8FF4(&v29, @"Max Alignment Adjustment", &dword_14134);
  sub_90AC(&v30, @"Input Alignment Anchor", &qword_14138);
  sub_8FF4(&v31, @"Input Readahead", &unk_14140);
  sub_90AC(&v32, @"Output Alignment Anchor", &qword_14148);
  sub_8FF4(v33, @"Output Writeahead", &unk_14150);
  if (qword_14240 != -1)
  {
    sub_A76C();
  }

  if (byte_14248)
  {
    v5 = kCFBooleanTrue;
  }

  else
  {
    v5 = kCFBooleanFalse;
  }

  v33[2] = @"Published";
  v33[3] = v5;
  sub_3910(buf, &v16);
  for (i = 200; i != -8; i -= 16)
  {
    v7 = *&buf[i];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  v8 = v16;
  os_unfair_lock_unlock(&unk_14008);
  if (v8)
  {
    valuePtr = 0;
    StateData = waipc::util::createStateData(v8, "BasebandVoice", &valuePtr, v9);
    v11 = valuePtr;
    if (!StateData)
    {
      if (qword_14218 != -1)
      {
        sub_A668();
      }

      v12 = qword_14220[0];
      if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "failed to serialze state %@", buf, 0xCu);
      }
    }

    if (v11)
    {
      CFRelease(v11);
    }

    CFRelease(v8);
  }

  else
  {
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v13 = qword_14220[0];
    if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "failed to dump state", buf, 2u);
    }

    return 0;
  }

  return StateData;
}

const void **sub_8F38(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL sub_8F6C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  v4 = atomic_exchange((a1 + 128), 0);
  if (v4)
  {
    if (a2)
    {
      v5 = *v4;
      v6 = *(v4 + 16);
      *(a2 + 32) = *(v4 + 32);
      *a2 = v5;
      *(a2 + 16) = v6;
    }

    sub_9164(a1, v4);
  }

  os_unfair_lock_unlock((a1 + 4));
  return v4 != 0;
}

void *sub_8FF4(void *a1, uint64_t a2, int *a3)
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

void *sub_90AC(void *a1, uint64_t a2, uint64_t *a3)
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

uint64_t sub_9164(uint64_t result, unint64_t a2)
{
  if (!a2)
  {
    sub_A818();
  }

  v2 = a2 - result - 8;
  if (v2 < -39 || (v3 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 3), v3 >= 3))
  {
    sub_A7EC();
  }

  if (atomic_exchange((result + 8 * v3 + 136), a2))
  {
    sub_A7C0();
  }

  return result;
}

void sub_91C0(id a1)
{
  if (capabilities::pci::supportsPCIAudio(a1))
  {
    v1 = IOServiceNameMatching("Baseband Voice");
    cf = v1;
    if (v1)
    {
      v2 = CFGetTypeID(v1);
      if (v2 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v1 = cf;
    }

    CFRetain(v1);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, cf);
    v4 = MatchingService;
    if (MatchingService)
    {
      IOObjectRelease(MatchingService);
      if (qword_14218 != -1)
      {
        sub_A654();
      }

      v5 = qword_14220[0];
      if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v11 = 0;
      v6 = "BVCanPublishBasebandVoice: NO (I2S device present)";
      v7 = &v11;
    }

    else
    {
      if (qword_14218 != -1)
      {
        sub_A654();
      }

      v5 = qword_14220[0];
      if (!os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v10 = 0;
      v6 = "BVCanPublishBasebandVoice: YES";
      v7 = &v10;
    }

    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
LABEL_20:
    byte_14248 = v4 == 0;
    if (cf)
    {
      CFRelease(cf);
    }

    return;
  }

  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v8 = qword_14220[0];
  if (os_log_type_enabled(qword_14220[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "BVCanPublishBasebandVoice: NO (not supported)", buf, 2u);
  }

  byte_14248 = 0;
}

void sub_93A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  __cxa_free_exception(v12);
  sub_93E0(&a12);
  _Unwind_Resume(a1);
}

const void **sub_93E0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_9414(int *a1, unsigned int a2, CFStringRef *a3, unsigned int a4, int *a5, const __CFString **a6)
{
  if (!a5)
  {
    sub_A858();
  }

  v9 = *a1;
  v10 = 2003332927;
  if (*a1 <= 1819173228)
  {
    v11 = 0;
    if (v9 > 1668049698)
    {
      if (v9 != 1668049699)
      {
        if (v9 == 1684370979)
        {
          if (qword_14240 == -1)
          {
            goto LABEL_49;
          }

          goto LABEL_60;
        }

        if (v9 != 1819107691)
        {
          return v10;
        }

        if (a4 < 8)
        {
          return 561211770;
        }

        v13 = @"Apple Inc.";
LABEL_43:
        *a6 = v13;
        v11 = 8;
      }
    }

    else
    {
      if (v9 == 1650682995)
      {
        if (a4 < 4)
        {
          return 561211770;
        }

        v12 = 1634689642;
        goto LABEL_53;
      }

      if (v9 != 1651472419)
      {
        if (v9 != 1668047219)
        {
          return v10;
        }

        if (a4 < 4)
        {
          return 561211770;
        }

        v12 = 1634757735;
        goto LABEL_53;
      }
    }

LABEL_55:
    v10 = 0;
    *a5 = v11;
    return v10;
  }

  if (v9 <= 1937007733)
  {
    if (v9 != 1819173229)
    {
      if (v9 != 1870098020)
      {
        if (v9 != 1920168547)
        {
          return v10;
        }

        if (a4 < 8)
        {
          return 561211770;
        }

        v13 = &stru_10A40;
        goto LABEL_43;
      }

      if (qword_14240 == -1)
      {
LABEL_49:
        v11 = 0;
        if (byte_14248 != 1 || a4 < 4)
        {
          goto LABEL_55;
        }

        v12 = 2;
        goto LABEL_53;
      }

LABEL_60:
      sub_A844();
      goto LABEL_49;
    }

    if (a4 < 8)
    {
      return 561211770;
    }

    v13 = @"Baseband Voice";
    goto LABEL_43;
  }

  if (v9 <= 1969841250)
  {
    if (v9 != 1937007734 && v9 != 1969841250)
    {
      return v10;
    }

LABEL_39:
    if (a4 >= 4)
    {
      *a6 = 0;
LABEL_54:
      v11 = 4;
      goto LABEL_55;
    }

    return 561211770;
  }

  if (v9 == 1969841251)
  {
    goto LABEL_39;
  }

  if (v9 == 1969841252)
  {
    v10 = 561211770;
    if (a2 >= 8)
    {
      if (!a3)
      {
        return 1852797029;
      }

      if (qword_14218 != -1)
      {
        sub_A654();
      }

      v15 = qword_14230;
      if (os_signpost_enabled(qword_14230))
      {
        v16 = *a3;
        v18 = 138412290;
        v19 = v16;
        _os_signpost_emit_with_name_impl(&dword_0, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetPropertyData", "uid %@", &v18, 0xCu);
      }

      if (qword_14240 != -1)
      {
        sub_A76C();
      }

      v12 = byte_14248 == 1 && CFStringCompare(*a3, @"Baseband Voice", 0) == kCFCompareEqualTo ? 2 : 0;
      if (a4 >= 4)
      {
LABEL_53:
        *a6 = v12;
        goto LABEL_54;
      }
    }
  }

  return v10;
}

void sub_9798(double a1)
{
  os_unfair_lock_lock(&unk_14008);
  v2 = qword_14030;
  if (*&qword_14030 != a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_9AC8;
    v12[3] = &unk_10530;
    *&v12[5] = a1;
    v12[4] = &v13;
    v3 = _Block_copy(v12);
    v14[3] = v3;
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v4 = qword_14228;
    v5 = os_signpost_id_make_with_pointer(qword_14228, v14[3]);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        *buf = 134218240;
        *&buf[4] = v2;
        *&buf[12] = 2048;
        *&buf[14] = a1;
        _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SampleRateChange", "oldRate %lf, newRate %lf", buf, 0x16u);
      }
    }

    if (qword_14218 != -1)
    {
      sub_A668();
    }

    if (os_signpost_enabled(qword_14238))
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_9BE0;
      v23 = &unk_10558;
      v24 = v3;
      v7 = _Block_copy(buf);
    }

    else
    {
      v7 = _Block_copy(v3);
    }

    v8 = v7;
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v9 = qword_14238;
    v10 = os_signpost_id_make_with_pointer(qword_14238, v8);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *block = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "DeviceConfigurationChange", "async", block, 2u);
      }
    }

    *block = _NSConcreteStackBlock;
    v18 = 0x40000000;
    v19 = sub_9BF0;
    v20 = &unk_10578;
    v21 = v8;
    dispatch_async(qword_14018, block);
    _Block_release(v3);
    _Block_object_dispose(&v13, 8);
  }

  os_unfair_lock_unlock(&unk_14008);
}

void sub_9AC8(uint64_t a1, int a2)
{
  if (a2)
  {
    os_unfair_lock_lock(&unk_14008);
    qword_14030 = *(a1 + 40);
    os_unfair_lock_unlock(&unk_14008);
  }

  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v4 = qword_14228;
  v5 = os_signpost_id_make_with_pointer(qword_14228, *(*(*(a1 + 32) + 8) + 24));
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

void sub_9BF0(uint64_t a1)
{
  if (qword_14218 != -1)
  {
    sub_A654();
  }

  v2 = qword_14238;
  v3 = os_signpost_id_make_with_pointer(qword_14238, *(a1 + 32));
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
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v8 = qword_14238;
    v9 = os_signpost_id_make_with_pointer(qword_14238, *(a1 + 32));
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
    if (qword_14218 != -1)
    {
      sub_A668();
    }

    v12 = qword_14238;
    v13 = os_signpost_id_make_with_pointer(qword_14238, *(a1 + 32));
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

void sub_9E08(os_unfair_lock_t lock, __int128 *a2)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  v4 = sub_9EA4(lock);
  v5 = *a2;
  v6 = a2[1];
  *(v4 + 32) = *(a2 + 4);
  *v4 = v5;
  *(v4 + 16) = v6;
  v7 = atomic_exchange(&lock[32], v4);
  if (v7)
  {
    sub_9164(lock, v7);
  }

  if (lock)
  {

    os_unfair_lock_unlock(lock);
  }
}

void sub_9E88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_9EA4(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 136;
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
    sub_A884();
  }

  return result;
}

const void **sub_9EDC(const void **a1)
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

const void **sub_9F28(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_9F5C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_9FC8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_A058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A0F4(va);
  _Unwind_Resume(a1);
}

void sub_A06C(uint64_t a1, void *a2, uint64_t a3)
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

        sub_9F5C(v5);
      }
    }
  }
}

uint64_t *sub_A0F4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1AD8(v2);
    operator delete();
  }

  return a1;
}

void sub_A140(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_A178(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1AD8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_A1BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_A1FC(uint64_t a1, uint64_t a2)
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

waipc::util::GroupErrorTimer *sub_A250(waipc::util::GroupErrorTimer **a1, waipc::util::GroupErrorTimer *a2)
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

uint64_t sub_A29C(uint64_t a1)
{
  v2 = atomic_exchange((a1 + 368), 0);
  if (v2)
  {
    sub_A2D8(a1, v2);
  }

  return a1;
}

uint64_t sub_A2D8(uint64_t result, unint64_t a2)
{
  if (!a2)
  {
    sub_A818();
  }

  v2 = a2 - result - 8;
  if (v2 < -119 || (v3 = 0xEEEEEEEEEEEEEEEFLL * (v2 >> 3), v3 >= 3))
  {
    sub_A7EC();
  }

  if (atomic_exchange((result + 8 * v3 + 376), a2))
  {
    sub_A7C0();
  }

  return result;
}

waipc::PCIeAudioLink *sub_A334(waipc::PCIeAudioLink **a1, waipc::PCIeAudioLink *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    waipc::PCIeAudioLink::~PCIeAudioLink(result);

    operator delete();
  }

  return result;
}

waipc::util::NonblockingEventSource *sub_A380(waipc::util::NonblockingEventSource **a1, waipc::util::NonblockingEventSource *a2)
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

void *sub_A3CC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_A410();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_A410()
{
  exception = __cxa_allocate_exception(8uLL);
}

unint64_t sub_A45C(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 376;
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
    sub_A884();
  }

  return result;
}

void *sub_A508(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10620;
  v3 = *a2;
  waipc::MappableBuffer::MappableBuffer();
  return a1;
}

void sub_A58C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_A5EC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_A620(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
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
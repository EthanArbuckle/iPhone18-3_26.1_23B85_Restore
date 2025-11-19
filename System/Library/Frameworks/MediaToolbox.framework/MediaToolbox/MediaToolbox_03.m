uint64_t crabsInitBlock(uint64_t a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x68uLL, 0x10B0040C2E76BD9uLL);
  if (v4)
  {
    if (*(a1 + 504))
    {
      v4[4] |= 0x200u;
    }

    v5 = 0;
    *v4 = a2;
    *(v4 + 12) = -1;
    *(*(a1 + 80) + 8 * a2) = v4;
  }

  else
  {
    crabsInitBlock_cold_1(&v7);
    return v7;
  }

  return v5;
}

uint64_t crabAllocWorkingSet(void *a1, uint64_t a2)
{
  if (a1[43] > 15)
  {
    return 0;
  }

  v5 = MEMORY[0x19A8CC720](*a1, a1[12], 801318823, 0);
  if (v5)
  {
    goto LABEL_4;
  }

  if (a1[63])
  {
    return 0;
  }

  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = *(a2 + 8);
  *(a2 + 8) = v10 | 0x400;
  v11 = crabsSwipeBacking(a1, v12, 0);
  v2 = 0;
  v5 = *(&v13 + 1);
  *(a2 + 8) = *(a2 + 8) & 0xFBFF | v10 & 0x400;
  if (!v11)
  {
    if (v5)
    {
LABEL_4:
      v6 = (a1 + 12);
      v7 = vld1q_dup_f64(v6);
      gCRABS_Stats = vaddq_s64(gCRABS_Stats, v7);
      *(a1 + 105) = vaddq_s64(*(a1 + 105), v7);
      v8 = malloc_type_malloc(0x20uLL, 0x10300405ED1140EuLL);
      *(a2 + 80) = v8;
      if (v8)
      {
        *v8 = a2;
        v8[1] = a1;
        *(v8 + 6) = 0;
        v8[2] = v5;
        v2 = 1;
        addToWorkingSet(a1, a2, 1, 1);
        return v2;
      }

      CFAllocatorDeallocate(*a1, v5);
      return 0;
    }
  }

  return v2;
}

vm_address_t QTMovieCacheMemAllocateCallBack(vm_size_t size, uint64_t a2, uint64_t a3)
{
  valuePtr = size;
  address = 0;
  if (*(a3 + 16) + size > *(a3 + 24))
  {
    return 0;
  }

  v4 = size;
  v5 = MEMORY[0x1E69E9A60];
  if (vm_allocate(*MEMORY[0x1E69E9A60], &address, size, 1610612739))
  {
    return 0;
  }

  v7 = *(a3 + 16);
  if (!v7)
  {
    *a3 = v4;
    goto LABEL_13;
  }

  if (*a3 == v4)
  {
LABEL_13:
    *(a3 + 16) = v7 + v4;
    return address;
  }

  v8 = *MEMORY[0x1E695E480];
  if (*(a3 + 8) || (memset(&v12, 0, sizeof(v12)), v9 = CFDictionaryCreateMutable(v8, 0, &v12, MEMORY[0x1E695E9E8]), (*(a3 + 8) = v9) != 0))
  {
    v10 = CFNumberCreate(v8, kCFNumberSInt64Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      CFDictionaryAddValue(*(a3 + 8), address, v10);
      CFRelease(v11);
      v4 = valuePtr;
      if (*(a3 + 8))
      {
        v7 = *(a3 + 16);
        goto LABEL_13;
      }
    }

    else
    {
      v4 = valuePtr;
    }
  }

  MEMORY[0x19A8D6C70](*v5, address, v4);
  return 0;
}

uint64_t addToWorkingSet(void *a1, uint64_t a2, int a3, int a4)
{
  FigSimpleMutexLock();
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  if (v8)
  {
    v10 = (v8 + 72);
LABEL_5:
    *v10 = v9;
    *v9 = v8;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    goto LABEL_6;
  }

  if (v9)
  {
    v10 = a1 + 47;
    goto LABEL_5;
  }

LABEL_6:
  result = FigSimpleMutexUnlock();
  v12 = a2 + 32;
  if (!*(a2 + 32) && !*(a2 + 40))
  {
    if (a3)
    {
      if (!a4)
      {
        v18 = a1[40];
        *(a2 + 32) = 0;
        *(a2 + 40) = v18;
        *v18 = a2;
        a1[40] = v12;
        goto LABEL_22;
      }

      v13 = a1 + 39;
      v14 = a1[39];
      *(a2 + 32) = v14;
      if (v14)
      {
        v15 = (v14 + 40);
      }

      else
      {
        v15 = a1 + 40;
      }

      *v15 = v12;
      a1[39] = a2;
    }

    else
    {
      ++a1[44];
      *(a2 + 8) |= 0x20u;
      if (!a4)
      {
        v19 = a1[42];
        *(a2 + 32) = 0;
        *(a2 + 40) = v19;
        *v19 = a2;
        a1[42] = v12;
        goto LABEL_22;
      }

      v13 = a1 + 41;
      v16 = a1[41];
      *(a2 + 32) = v16;
      if (v16)
      {
        v17 = (v16 + 40);
      }

      else
      {
        v17 = a1 + 42;
      }

      *v17 = v12;
      a1[41] = a2;
    }

    *(a2 + 40) = v13;
LABEL_22:
    ++a1[43];
  }

  return result;
}

void *crabsRetainWorking(void *a1, uint64_t a2)
{
  result = FigAtomicIncrement32();
  if (result == 1 && (*(a2 + 32) || *(a2 + 40)))
  {
    v5 = a1[12];
    *(&gCRABS_Stats + 1) -= v5;
    a1[106] -= v5;

    return removeFromWorkingSet(a1, a2);
  }

  return result;
}

void *removeFromWorkingSet(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x20) != 0)
  {
    --result[44];
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    if (*(a2 + 32) != 0)
    {
      v9 = result + 42;
      if (v7)
      {
        v9 = (v7 + 40);
      }

      *v9 = v8;
      *v8 = v7;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
    }

    *(a2 + 8) = v2 & 0xFFDF;
  }

  else
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    v3 = (a2 + 32);
    if (v4 | v5)
    {
      v6 = result + 40;
      if (v4)
      {
        v6 = (v4 + 40);
      }

      *v6 = v5;
      *v5 = v4;
      *v3 = 0;
      v3[1] = 0;
    }
  }

  --result[43];
  return result;
}

uint64_t crabsEvaluateFirehose(uint64_t a1, int *a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  if (*(a1 + 560) != 1 || *(a1 + 56) == -1 || !*(a1 + 80))
  {
    return 0;
  }

  v4 = *(a1 + 528);
  v5 = *(a1 + 544);
  v6 = v5 + v4;
  v7 = *(a1 + 96);
  if (v7 == 0x4000)
  {
    v8 = v6 >> 14;
  }

  else
  {
    v8 = v6 / v7;
    if (v7 == 0x10000)
    {
      v8 = v6 >> 16;
    }
  }

  v9 = *a2;
  v10 = v7 * v9;
  if (v4 <= v7 * v9 + a2[1] && *(a1 + 536) + v4 >= v10 + v7 && v6 < v10 + v7)
  {
    if (v5 < 1)
    {
      if (v7 == 0x4000)
      {
        v12 = v4 >> 14;
      }

      else if (v7 == 0x10000)
      {
        v12 = v4 >> 16;
      }

      else
      {
        v12 = v4 / v7;
      }

      if (v12 > v9 || v12 + 2 < v9)
      {
        goto LABEL_26;
      }
    }

    else if (*(a1 + 584) / *(a1 + 600) + v6 < v10)
    {
      goto LABEL_26;
    }

    v13 = 1;
LABEL_61:
    *a4 = 0;
    return v13;
  }

LABEL_26:
  if (!a3)
  {
    v16 = 1;
LABEL_38:
    if (*(a1 + 568) >= 1)
    {
      v16 = 0;
      *a4 = 0;
    }

    goto LABEL_40;
  }

  v14 = v8 + 2;
  if (__OFSUB__(v8, v8 + 2))
  {
    v14 = v8;
  }

  v15 = v14 + 1;
  v16 = 1;
  v17 = v8;
  do
  {
    if (v17 >= *(a1 + 88))
    {
      break;
    }

    v18 = *(*(a1 + 80) + 8 * v17);
    if (v18 && (*(v18 + 8) & 1) != 0)
    {
      v16 = 0;
      *a4 = 0;
    }

    ++v17;
  }

  while (v15 != v17);
  if (v16)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (*(a1 + 216) <= 0)
  {
    v23 = *(a1 + 184);
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = v8 - 8;
      v26 = v8 + 2;
      while (v16 && *(a1 + 116))
      {
        v27 = *(*(a1 + 192) + 8 * v24);
        if (v27 >= v25 && v27 <= v26)
        {
          v16 = 0;
          *a4 = 0;
          v23 = *(a1 + 184);
        }

        v22 = 0;
        if (++v24 >= v23)
        {
          return v22;
        }
      }
    }

    return 0;
  }

  v19 = *(a1 + 208);
  v20 = *(a1 + 88);
  if (v19 >= v20)
  {
    return 0;
  }

  while (1)
  {
    v21 = *(*(a1 + 80) + 8 * v19);
    if (!v21 || (*(v21 + 8) & 4) == 0)
    {
      break;
    }

    v22 = 0;
    if (v20 == ++v19)
    {
      return v22;
    }
  }

  v13 = 0;
  v22 = 0;
  if (*a2 != v19)
  {
    goto LABEL_61;
  }

  return v22;
}

uint64_t crabsMoveFirehose(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  IsBusy = crabsDiskBackingIsBusy(a1, 0);
  v5 = *(a1 + 760);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 560) == 1)
  {
    v7 = *(a1 + 512);
    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (*(a1 + 56) == -1 || (v9 = *(a1 + 80)) == 0)
  {
    if (dword_1EAF16BD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = crabsIssueLoad(a1, a1 + 512, a2, 0, v8, v7);
  }

  else
  {
    v10 = *(a1 + 96);
    if (v10 == 0x4000)
    {
      v11 = a2 >> 14;
    }

    else if (v10 == 0x10000)
    {
      v11 = a2 >> 16;
    }

    else
    {
      v11 = a2 / v10;
    }

    v12 = *(a1 + 88);
    if (v11 >= v12)
    {
LABEL_23:
      if (v11 < v12)
      {
        v16 = v11 + 1;
        if (v11 + 1 < v12)
        {
          while (1)
          {
            v17 = *(v9 + 8 * v16);
            if (v17)
            {
              if ((*(v17 + 8) & 4) != 0 && (!IsBusy || *(v17 + 80)))
              {
                break;
              }
            }

            if (v12 == ++v16)
            {
              v16 = v12;
              break;
            }
          }
        }

        v18 = *(a1 + 96);
        v19 = v18 * v11;
        v20 = v18 * v16;
        if (dword_1EAF16BD0)
        {
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v21 = *(a1 + 920);
        if (v21)
        {
          v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v22)
          {
            v22(v21, 0x1F0B64598, 0x1F0B3F378, 1);
          }
        }

        v14 = crabsIssueLoad(a1, a1 + 512, v19, v20 - v19, v8, v7);
        if (!v14)
        {
          *(a1 + 112) = 1;
        }
      }

      else
      {
        v14 = 4294954366;
      }
    }

    else
    {
      while (1)
      {
        v13 = *(v9 + 8 * v11);
        if (!v13)
        {
          if (crabsInitBlock(a1, v11))
          {
            break;
          }

          v9 = *(a1 + 80);
          v13 = *(v9 + 8 * v11);
          if (!v13)
          {
            break;
          }
        }

        if ((*(v13 + 8) & 4) != 0 && (!IsBusy || *(v13 + 80)) && ++v11 < *(a1 + 88))
        {
          continue;
        }

        v12 = *(a1 + 88);
        goto LABEL_23;
      }

      crabsMoveFirehose_cold_1(v25);
      v14 = v25[0];
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v14;
}

uint64_t crabsIssueLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = *(a1 + 760);
  if (v11)
  {
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v61 = CFRetain(v13);
  }

  else
  {
    v61 = 0;
  }

  v14 = *(a1 + 920);
  if (v14)
  {
    v15 = CFRetain(v14);
    if (!a5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v15 = 0;
    if (!a5)
    {
      goto LABEL_19;
    }
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v17 = UpTimeNanoseconds - *(a2 + 64);
  if (v17 >= 1 && v15)
  {
    v18 = UpTimeNanoseconds;
    v19 = *(a2 + 32);
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v20)
    {
      v20(v15, 0x1F0B64598, 0x1F0B3F338, v19);
    }

    v59 = v19;
    v21 = *(a2 + 64);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v22)
    {
      v22(v15, 0x1F0B64598, 0x1F0B3F358, (v18 - v21) / 0xF4240uLL);
    }

    v23 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v23)
    {
      v23(v15, 0x1F0B64598, 0x1F0B3F298, (v59 * 8.0 / (v17 / 1000000000.0)));
    }
  }

LABEL_19:
  v62 = 0;
  v24 = *(a1 + 56);
  if (v24 == -1 || (v25 = *(a1 + 80)) == 0)
  {
    v35 = *(a1 + 96);
    v28 = a3 / v35 * v35;
    v36 = a3 % v35 + a4;
    v37 = (a4 + a3) % v35;
    v38 = v36 + v35 - v37;
    if (!v37)
    {
      v38 = v36;
    }

    if (a4)
    {
      v31 = v38;
    }

    else
    {
      v31 = 0;
    }

LABEL_40:
    *(a2 + 16) = v28;
    *(a2 + 24) = v31;
    *(a2 + 32) = 0;
    *(a2 + 48) = 1;
    *a2 = 1;
    *(a2 + 64) = FigGetUpTimeNanoseconds();
    *(a2 + 96) = 0;
    v39 = FigAtomicIncrement32();
    *(a2 + 8) = v39;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v41 = a1 + 512;
    FigCFDictionarySetInt();
    FigRetainProxyUnlockMutex();
    if (a5)
    {
      v42 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v42)
      {
        v42(v61, a6);
      }

      if (v15)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 32))
        {
          v43 = OUTLINED_FUNCTION_267_0();
          v44(v43);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 32))
        {
          v45 = OUTLINED_FUNCTION_267_0();
          v46(v45);
        }
      }
    }

    v47 = v61;
    v48 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v48)
    {
      v31 = v48(v61, v28, v31, Mutable, crabsIncrementalReadCallback, v12, v39, &v62);
    }

    else
    {
      v31 = 4294954514;
    }

    FigRetainProxyLockMutex();
    if (!FigRetainProxyIsInvalidated())
    {
      if (v31)
      {
        *(a2 + 48) = v31;
        *a2 = 1;
        goto LABEL_70;
      }

      if (v39 == *(a2 + 8) && *a2 == 1)
      {
        *a2 = v62;
        if (v15)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 32))
          {
            v49 = OUTLINED_FUNCTION_797();
            v50(v49);
          }

          if (v41 != a2)
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 32))
            {
              v51 = OUTLINED_FUNCTION_797();
              v52(v51);
            }

            goto LABEL_62;
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 32))
          {
            v57 = OUTLINED_FUNCTION_797();
            v58(v57);
          }
        }

        else if (v41 != a2)
        {
LABEL_62:
          v31 = 0;
          ++*(a1 + 836);
          goto LABEL_70;
        }

        v31 = 0;
        ++*(a1 + 832);
LABEL_70:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v15)
        {
          goto LABEL_73;
        }

        goto LABEL_74;
      }

      FigRetainProxyUnlockMutex();
      v53 = v62;
      v54 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v54)
      {
        v54(v61, v53);
      }

      FigRetainProxyLockMutex();
      if (!FigRetainProxyIsInvalidated())
      {
        if (v15)
        {
          v55 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v55)
          {
            v55(v15, 0x1F0B64598, 0x1F0B655B8, 1);
          }
        }

        OUTLINED_FUNCTION_5_8();
        v31 = FigSignalErrorAtGM();
        goto LABEL_70;
      }
    }

    v31 = 4294954511;
    goto LABEL_70;
  }

  v26 = *(a1 + 96);
  v27 = a3 / v26;
  v28 = a3 / v26 * v26;
  v29 = (a4 + a3) % v26;
  if (v29)
  {
    v30 = v26 - v29;
  }

  else
  {
    v30 = 0;
  }

  if (a3 % v26 + a4 + v30 + v28 <= v24)
  {
    v31 = a3 % v26 + a4 + v30;
  }

  else
  {
    v31 = v24 - v28;
  }

  v32 = v28 >> 14;
  if (v26 == 0x10000)
  {
    v27 = v28 >> 16;
  }

  if (v26 != 0x4000)
  {
    v32 = v27;
  }

  v33 = *(v25 + 8 * v32);
  if (!v33)
  {
    goto LABEL_40;
  }

  v34 = *(v33 + 4);
  if (!v34)
  {
    goto LABEL_40;
  }

  v31 -= v34;
  if (v31)
  {
    v28 += v34;
    goto LABEL_40;
  }

  *(a2 + 48) = 0;
  v47 = v61;
  if (v15)
  {
LABEL_73:
    CFRelease(v15);
  }

LABEL_74:
  if (v47)
  {
    CFRelease(v47);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v31;
}

uint64_t crabsWaitForLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 760);
  if (v11)
  {
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v14 = CFRetain(Owner);
  }

  else
  {
    v14 = 0;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  ++*(a2 + 56);
  clock = HostTimeClock;
  if (a5 == -1)
  {
    v20 = *(a1 + 968);
    CMTimeMake(&time, *(a1 + 48), 1000);
    v18 = FigNetworkUrgencyAssertDeadline(v20, &time);
    v19 = 0.0;
  }

  else
  {
    CMClockGetTime(&time, HostTimeClock);
    v16 = a5 * 1000000.0 + CMTimeGetSeconds(&time) * 1000000000.0;
    v17 = *(a1 + 968);
    CMTimeMake(&time, a5, 1000);
    v18 = FigNetworkUrgencyAssertDeadline(v17, &time);
    v19 = v16;
  }

  FigRetainProxyUnlockMutex();
  v21 = FigThreadRegisterAbortAction();
  FigRetainProxyLockMutex();
  if (!v21)
  {
    v59 = v18;
    v60 = v14;
    if (FigRetainProxyIsInvalidated() || !*(a1 + 104))
    {
LABEL_81:
      v21 = 4294954425;
      goto LABEL_74;
    }

    v55 = v5;
    if (*(a1 + 56) != -1 && a4 && *(a1 + 80))
    {
      OUTLINED_FUNCTION_31_3();
      if (v25)
      {
        v26 = a3 >> 14;
      }

      else
      {
        v26 = v23 == 0x10000 ? a3 >> 16 : a3 / v23;
      }

      v27 = *(v24 + 8 * v26);
      if (v27)
      {
        v28 = v27[1] + v23 * *v27;
        v29 = v28 <= a3;
        v30 = v28 - a3;
        if (!v29)
        {
          if (v30 >= a4)
          {
            v30 = a4;
          }

          a3 += v30;
          a4 -= v30;
        }
      }
    }

    v65 = 0;
    v31 = a3 + a4;
    v63 = @"CoreMediaErrorDomain";
    *&v22 = 136316162;
    *v61 = v22;
    *&v22 = 136316418;
    *v56 = v22;
    *&v22 = 136315650;
    *v62 = v22;
    if (!a4)
    {
      goto LABEL_33;
    }

LABEL_27:
    v21 = *(a2 + 48);
    if (v21 == 1)
    {
      v32 = *(a2 + 16);
      if (v32 <= a3 && *(a2 + 24) + v32 >= v31 && *(a2 + 32) + v32 < v31 && !crabsRangeInBlockIsCached(a1, a3, a4))
      {
        while (1)
        {
          if (a5 == -1)
          {
            v65 = *(a1 + 400);
          }

          else
          {
            CMClockGetTime(&time, clock);
            if ((v19 + CMTimeGetSeconds(&time) * -1000000000.0) < 1)
            {
              v21 = 4294966295;
              goto LABEL_74;
            }
          }

          v21 = FigRetainProxyConditionVariableWaitRelative();
          if (FigRetainProxyIsInvalidated())
          {
            goto LABEL_73;
          }

          if (v21 == -12792)
          {
            crabsReportingReportError(a1, v63, @"CRABS Timed out", -1001);
            OUTLINED_FUNCTION_1_18();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(type)))
            {
              v34 = HIDWORD(type);
            }

            else
            {
              v34 = HIDWORD(type) & 0xFFFFFFFE;
            }

            if (v34)
            {
              OUTLINED_FUNCTION_5_10();
              OUTLINED_FUNCTION_4_13();
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v21 = 4294966295;
          }

          if (a5 == -1 && v21 && v65 != *(a1 + 400))
          {
            if (dword_1EAF16BD0)
            {
              v58 = a3;
              OUTLINED_FUNCTION_1_18();
              v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v46 = os_log_type_enabled(v45, BYTE3(type));
              if (OUTLINED_FUNCTION_115_1(v46))
              {
                OUTLINED_FUNCTION_4_13();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_414();
            }
          }

          else if (v21)
          {
            goto LABEL_74;
          }

          v35 = *(a1 + 104);
          if (!*(a1 + 104) && dword_1EAF16BD0)
          {
            OUTLINED_FUNCTION_1_18();
            v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v44 = OUTLINED_FUNCTION_33_3(v36, v37, v38, v39, v40, v41, v42, v43, v52, v53, v54, v55, v56[0], v56[1], v57, v58, v59, v60, v61[0], v61[1], v62[0], v62[1], v63, clock, v65, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
            if (OUTLINED_FUNCTION_115_1(v44))
            {
              OUTLINED_FUNCTION_5_10();
              OUTLINED_FUNCTION_4_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414();
            v35 = *(a1 + 104);
          }

          if (!v35)
          {
            goto LABEL_81;
          }

          v21 = *(a2 + 48);
          if (v21 > 1)
          {
            goto LABEL_74;
          }

          ++qword_1EAF18A08;
          ++*(a1 + 896);
          if (a4)
          {
            goto LABEL_27;
          }

LABEL_33:
          if (*(a1 + 56) != -1 && *(a1 + 80))
          {
            goto LABEL_73;
          }
        }
      }
    }

    OUTLINED_FUNCTION_31_3();
    if (v25)
    {
      v49 = a3 >> 14;
    }

    else if (v47 == 0x10000)
    {
      v49 = a3 >> 16;
    }

    else
    {
      v49 = a3 / v47;
    }

    v50 = *(v48 + 8 * v49);
    if (v50 && v50[1] + v47 * *v50 >= v31)
    {
LABEL_73:
      v21 = 0;
    }

    else if (v21 <= 1)
    {
      OUTLINED_FUNCTION_5_8();
      v21 = FigSignalErrorAtGM();
    }

LABEL_74:
    FigRetainProxyUnlockMutex();
    FigThreadUnregisterAbortAction();
    FigRetainProxyLockMutex();
    v18 = v59;
    v14 = v60;
    if (FigRetainProxyIsInvalidated())
    {
      v21 = 4294954425;
    }
  }

  FigNetworkUrgencyCancelDeadline(*(a1 + 968), v18);
  --*(a2 + 56);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v21;
}

uint64_t FigCFHTTPReadResponse(uint64_t a1, int a2, uint64_t a3, void *a4, size_t a5, size_t a6, int a7, unsigned int a8)
{
  HIDWORD(v186) = a7;
  v213[16] = *MEMORY[0x1E69E9840];
  v189 = 0;
  v190 = 0;
  HIBYTE(v188) = 0;
  blockBufferOut = 0;
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_115;
  }

  v184 = v8;
  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v16 = CFRetain(Owner);
  }

  else
  {
    v16 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = *(DerivedStorage + 56);
  if (v18)
  {
    v19 = DerivedStorage;
    while (*(v18 + 24) != a1 || *(v18 + 32) != a2)
    {
      v18 = *(v18 + 128);
      if (!v18)
      {
        goto LABEL_111;
      }
    }

    if (!*(v18 + 125))
    {
      FigAtomicIncrement32();
      v20 = BYTE4(v186);
      if (*(v18 + 104))
      {
        goto LABEL_13;
      }

      v213[0] = 0;
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v34 && !v34(a1, @"FHRP_CFNetworkTimingData", *MEMORY[0x1E695E480], v213))
      {
        LODWORD(v35) = FigNetworkInterfaceGetInterfaceTypeFromCFNStats(v213[0]);
        *(v19 + 388) = v35;
        if (!v213[0])
        {
          goto LABEL_52;
        }

        CFRelease(v213[0]);
      }

      LODWORD(v35) = *(v19 + 388);
LABEL_52:
      if (!v35)
      {
        v35 = *(v19 + 408);
        if (v35)
        {
          LODWORD(v35) = FigNetworkPathInformationGetInterfaceType();
          *(v19 + 388) = v35;
        }
      }

      if (FigNetworkInterfaceIsCellular(v35))
      {
        ++*(v19 + 360);
      }

      fbf_ConfigurePathEvaluator(v19, *v19);
      *(v18 + 104) = 1;
LABEL_13:
      HIDWORD(v183) = a8;
      if (*(v19 + 72))
      {
        if (!a8)
        {
          if ((v186 & 0x100000000) != 0)
          {
            v213[0] = 0;
            v65 = fbf_httpRequestHandlesNetworkTransitions(a1);
            *(v18 + 124) = v65;
            fbf_UpdateAndReportMultiPathActivity(v19, v65);
            v66 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v66)
            {
              if (!v66(a1, @"FHRP_RemoteIPAddress", *MEMORY[0x1E695E480], v213))
              {
                v67 = *(v19 + 136);
                if (v67)
                {
                  if (CFEqual(v67, v213[0]))
                  {
                    CFRelease(v213[0]);
                  }

                  else
                  {
                    FigReportingAgentStatsAddToCountValue_1(*(v19 + 32), 0x1F0B645B8, 0x1F0B65778);
                    CFRelease(*(v19 + 136));
                    v81 = *(v19 + 144) + 1;
                    *(v19 + 136) = v213[0];
                    *(v19 + 144) = v81;
                  }
                }

                else
                {
                  *(v19 + 136) = v213[0];
                }

                fbf_ReportingAgentSetServerAddress(v19);
              }
            }
          }

          goto LABEL_16;
        }
      }

      else
      {
        v182 = v16;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 24) || (v36 = OUTLINED_FUNCTION_249(), v37(v36)))
        {
          *(v19 + 336) = 0;
        }

        fbf_GetResponseProperties(a1, v19);
        if (*(v19 + 32) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v38 = OUTLINED_FUNCTION_41_6();
          v39(v38);
        }

        fbf_ReportingAgentSetCDNHeaders(v19, a1);
        v20 = BYTE4(v186);
        if (!a8)
        {
          Error = fbf_ParseResponseHeadersAndSetLastError(a1, v19, 0);
          if (Error)
          {
            a8 = Error;
            goto LABEL_149;
          }

          v41 = fbf_httpRequestHandlesNetworkTransitions(a1);
          *(v18 + 124) = v41;
          fbf_UpdateAndReportMultiPathActivity(v19, v41);
          if (!*(v18 + 8))
          {
            *(v18 + 8) = *(v19 + 216) - *v18;
          }

          *(v19 + 72) = 1;
LABEL_16:
          if (!a4 || !a6)
          {
LABEL_73:
            if ((v20 & 2) == 0)
            {
              HTTPRequestFlags = fbf_CreateHTTPRequestFlags(v19);
              v43 = *(v18 + 36);
              if (((v43 ^ HTTPRequestFlags) & 0xFFFFFE7F) == 0)
              {
                if (!FigNetworkInterfaceIsCellular(*(v19 + 388)))
                {
                  if (!*(v18 + 105))
                  {
                    if (dword_1EAF16F58)
                    {
                      LODWORD(v199) = 0;
                      type[0] = OS_LOG_TYPE_DEFAULT;
                      v60 = OUTLINED_FUNCTION_43_4();
                      v61 = v199;
                      if (os_log_type_enabled(v60, type[0]))
                      {
                        v62 = v61;
                      }

                      else
                      {
                        v62 = v61 & 0xFFFFFFFE;
                      }

                      if (v62)
                      {
                        v63 = *(v18 + 36);
                        v64 = *(v19 + 388);
                        *cf = 136316162;
                        *&cf[4] = "FigCFHTTPReadResponse";
                        v201 = 2048;
                        v202 = v19;
                        v203 = 1024;
                        *v204 = v63;
                        *&v204[4] = 1024;
                        *&v204[6] = HTTPRequestFlags;
                        v205 = 1024;
                        LODWORD(v206) = v64;
                        OUTLINED_FUNCTION_47_0();
                        OUTLINED_FUNCTION_12_19();
                        _os_log_send_and_compose_impl();
                      }

                      OUTLINED_FUNCTION_7();
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                      v20 = BYTE4(v186);
                    }

                    a8 = 0;
                    *(v18 + 105) = 1;
                    goto LABEL_83;
                  }

                  goto LABEL_82;
                }

                v43 = *(v18 + 36);
              }

              if (HTTPRequestFlags != v43)
              {
                v44 = *(v18 + 112);
                v45 = *(v18 + 8) - v44;
                if (dword_1EAF16F58)
                {
                  v185 = v44 + *v18;
                  LODWORD(v199) = 0;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  v46 = OUTLINED_FUNCTION_43_4();
                  v47 = os_log_type_enabled(v46, type[0]);
                  if (OUTLINED_FUNCTION_28_1(v47))
                  {
                    v70 = *(v18 + 36);
                    v71 = *v18;
                    v72 = *(v18 + 8);
                    *cf = 136316930;
                    *&cf[4] = "FigCFHTTPReadResponse";
                    v201 = 2048;
                    v202 = v19;
                    v203 = 1024;
                    *v204 = v70;
                    *&v204[4] = 1024;
                    *&v204[6] = HTTPRequestFlags;
                    v205 = 2048;
                    v206 = v185;
                    v207 = 2048;
                    v208 = v45;
                    v209 = 2048;
                    v210 = v71;
                    v211 = 2048;
                    v212 = v72;
                    OUTLINED_FUNCTION_47_0();
                    OUTLINED_FUNCTION_12_19();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_417();
                }

                v73 = v16;
                v74 = *(v18 + 24);
                v75 = *(v18 + 32);
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 36) = HTTPRequestFlags;
                v76 = OUTLINED_FUNCTION_184();
                HTTPRequest = fbf_CreateHTTPRequest(v76);
                if (HTTPRequest)
                {
                  *(v18 + 24) = v74;
                  *(v18 + 32) = v75;
                  *(v18 + 120) = HTTPRequest;
                  v16 = v73;
                  if (!*(v18 + 125))
                  {
                    v78 = OUTLINED_FUNCTION_184();
                    FigCFHTTPFinishReadRequest(v78, v79, 0);
                  }

                  goto LABEL_110;
                }

                if (v74)
                {
                  v80 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                  v16 = v73;
                  if (v80)
                  {
                    v80(v74);
                  }

                  CFRelease(v74);
                  a8 = 0;
                }

                else
                {
                  a8 = 0;
                  v16 = v73;
                }

                goto LABEL_141;
              }

LABEL_82:
              a8 = 0;
              goto LABEL_83;
            }

            FigReportingAgentUpdateFinalTransactionMetrics(*(v19 + 32), a1, 0, 1);
            *(v18 + 120) = -12930;
            if (*(v18 + 125))
            {
              goto LABEL_82;
            }

            v68 = OUTLINED_FUNCTION_184();
            FigCFHTTPFinishReadRequest(v68, v69, 1);
            if (!FigRetainProxyIsInvalidated())
            {
              goto LABEL_82;
            }

LABEL_110:
            ReadRequestRelease(v18);
            goto LABEL_111;
          }

          v182 = v16;
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v189 = UpTimeNanoseconds - *(v19 + 320);
          LODWORD(v190) = a6;
          ++*(v19 + 284);
          FigByteRateHistoryAddToSample(*(v19 + 344), &v189);
          if (FigByteRateHistoryGetCurrentSampleDuration(*(v19 + 344)) >= 100000000)
          {
            FigByteRateHistoryNextSample(*(v19 + 344));
          }

          v22 = *(v19 + 312) + v189;
          *(v19 + 312) = v22;
          *(v19 + 320) = UpTimeNanoseconds;
          v23 = *(v19 + 288) + a6;
          *(v19 + 288) = v23;
          if (v22 >= 1 && *(v19 + 32))
          {
            v181 = 0x1F0B645B8;
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v24 = OUTLINED_FUNCTION_41_6();
              v25(v24, 0x1F0B645B8);
            }

            v26 = *(v19 + 32);
            if (v26)
            {
              v27 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v27)
              {
                v27(v26, 0x1F0B645B8, 0x1F0B647F8, (v23 * 8.0 / (v22 / 1000000000.0)));
              }
            }
          }

          v20 = BYTE4(v186);
          if ((v186 & 0x400000000) != 0)
          {
            *(v19 + 296) += a6;
          }

          v16 = v182;
          if ((v186 & 0x800000000) != 0)
          {
            *(v19 + 304) += a6;
          }

          if (!a5 && CMBlockBufferGetDataLength(a4) == a6)
          {
            CFRetain(a4);
            blockBufferOut = a4;
            goto LABEL_35;
          }

          if (!CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a4, 0, 0, a5, a6, 0, &blockBufferOut))
          {
LABEL_35:
            v28 = *(v18 + 112);
            *(v18 + 112) = v28 + a6;
            if ((v28 + a6) >= *(v18 + 8))
            {
              v29 = 1;
              *(v18 + 127) = 1;
            }

            else
            {
              v29 = 0;
            }

            v30 = *(v19 + 24);
            if (v30)
            {
              CFRelease(v30);
              *(v19 + 24) = 0;
            }

            *(v19 + 328) = 0;
            if (*(v19 + 17) == 1)
            {
              if (dword_1EAF16F58)
              {
                LODWORD(v199) = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v31 = OUTLINED_FUNCTION_43_4();
                v32 = v199;
                if (os_log_type_enabled(v31, type[0]))
                {
                  v33 = v32;
                }

                else
                {
                  v33 = v32 & 0xFFFFFFFE;
                }

                if (v33)
                {
                  *cf = 136315394;
                  OUTLINED_FUNCTION_1_50();
                  OUTLINED_FUNCTION_12_19();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v20 = BYTE4(v186);
              }

              *(v19 + 17) = 0;
              *(v19 + 496) = 0;
              if (FigByteFlumePostHostAvailableNotification(v19))
              {
                fbf_ReportingAgentResetErrorStats(v19);
              }
            }

            (*(v18 + 16))(*(v18 + 40), *(v18 + 48), *(v18 + 64), v28, blockBufferOut, v29, 0);
            if (FigRetainProxyIsInvalidated())
            {
              goto LABEL_110;
            }

            goto LABEL_73;
          }

          a8 = FigSignalErrorAtGM();
          if (!a8)
          {
            goto LABEL_196;
          }

LABEL_149:
          v199 = 0;
          v82 = *(v19 + 44);
          if (*(v19 + 40))
          {
            v83 = v82 == 1;
          }

          else
          {
            v83 = 0;
          }

          v85 = v83 || v82 == 2;
          FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v19 + 592), a1, *(v19 + 32), 0x1F0B645B8, v85);
          v86 = *(v19 + 72);
          if (v86)
          {
            if (*(v19 + 152))
            {
              v87 = *(v19 + 24);
              if (v87)
              {
                if (*(v19 + 216) > *(v19 + 160) && CFErrorGetCode(*(v19 + 24)) == -1009)
                {
                  CFErrorGetDomain(v87);
                  if (FigCFEqual() || (CFErrorGetDomain(v87), FigCFEqual()))
                  {
                    v100 = -17760;
                    fbf_ReleaseAndCreateLastError(v19, -17760, @"CoreMediaErrorDomain", @"File exceeds max size allowed over cellular.");
                    fbf_FailImmediately(v19);
                    v99 = 1;
LABEL_177:
                    FigByteFlumePostHostUnavailableNotification(v19);
                    FigRetainProxyRetainOwner();
                    FigCFHTTPStopAllReads(v19, v100);
                    FigRetainProxyReleaseOwner();
                    if (FigRetainProxyIsInvalidated())
                    {
                      v16 = v182;
                      goto LABEL_110;
                    }

                    if (!v86)
                    {
                      if (dword_1EAF16F58)
                      {
                        OUTLINED_FUNCTION_23_13();
                        v133 = OUTLINED_FUNCTION_22_11();
                        v141 = OUTLINED_FUNCTION_15_15(v133, v134, v135, v136, v137, v138, v139, v140, v179, v180, v181, v182, v183, v184, v186, blockBufferOut, v188, v189, v190, v191, v192, v193, v194, v195, v196, LOBYTE(v197), SHIDWORD(v197), *type);
                        if (OUTLINED_FUNCTION_28_1(v141))
                        {
                          *cf = 136315394;
                          OUTLINED_FUNCTION_1_50();
                          OUTLINED_FUNCTION_12_19();
                          OUTLINED_FUNCTION_27_10();
                          OUTLINED_FUNCTION_24_9();
                        }

                        OUTLINED_FUNCTION_7();
                        OUTLINED_FUNCTION_417();
                      }

                      *(v19 + 608) = 1;
                      fbf_FailImmediately(v19);
                      v160 = HIDWORD(v183);
                      if (!HIDWORD(v183))
                      {
                        v160 = a8;
                      }

                      fbf_ReportingAgentReportErrorEvent(v19, @"CoreMediaErrorDomain", @"Failed without successful flume open", 1u, v160);
                      goto LABEL_196;
                    }

                    if ((v99 & 1) == 0)
                    {
                      *(v19 + 17) = 1;
                      if (HIDWORD(v183) == -12421 || HIBYTE(v188))
                      {
                        v110 = *(v19 + 328) + 300000000000;
                        if (v110 >= FigGetUpTimeNanoseconds())
                        {
                          v120 = v199;
                          if (v199)
                          {
                            if (dword_1EAF16F58)
                            {
                              OUTLINED_FUNCTION_23_13();
                              v121 = OUTLINED_FUNCTION_22_11();
                              v129 = OUTLINED_FUNCTION_15_15(v121, v122, v123, v124, v125, v126, v127, v128, v179, v180, v181, v182, v183, v184, v186, blockBufferOut, v188, v189, v190, v191, v192, v193, v194, v195, v196, LOBYTE(v197), SHIDWORD(v197), *type);
                              if (OUTLINED_FUNCTION_28_1(v129))
                              {
                                *cf = 136315650;
                                OUTLINED_FUNCTION_3_41();
                                v203 = v130;
                                *v204 = v131 / v132;
                                OUTLINED_FUNCTION_47_0();
                                OUTLINED_FUNCTION_12_19();
                                OUTLINED_FUNCTION_27_10();
                                OUTLINED_FUNCTION_24_9();
                              }

                              OUTLINED_FUNCTION_7();
                              OUTLINED_FUNCTION_417();
                            }

                            *(v19 + 512) = &v120[FigGetUpTimeNanoseconds()];
                            FigHTTPRescheduleTimer(v120 / 1000000000.0, *(v19 + 48), *(v19 + 456));
                          }

                          else
                          {
                            if (dword_1EAF16F58)
                            {
                              OUTLINED_FUNCTION_23_13();
                              v142 = OUTLINED_FUNCTION_22_11();
                              v150 = OUTLINED_FUNCTION_15_15(v142, v143, v144, v145, v146, v147, v148, v149, v179, v180, v181, v182, v183, v184, v186, blockBufferOut, v188, v189, v190, v191, v192, v193, v194, v195, v196, LOBYTE(v197), SHIDWORD(v197), *type);
                              if (OUTLINED_FUNCTION_28_1(v150))
                              {
                                *cf = 136315394;
                                OUTLINED_FUNCTION_1_50();
                                OUTLINED_FUNCTION_12_19();
                                OUTLINED_FUNCTION_27_10();
                                OUTLINED_FUNCTION_24_9();
                              }

                              OUTLINED_FUNCTION_7();
                              OUTLINED_FUNCTION_417();
                            }

                            fbf_TryReconnect(v19);
                          }

                          goto LABEL_196;
                        }

                        if (!dword_1EAF16F58)
                        {
                          goto LABEL_195;
                        }

                        OUTLINED_FUNCTION_23_13();
                        v111 = OUTLINED_FUNCTION_22_11();
                        v119 = OUTLINED_FUNCTION_15_15(v111, v112, v113, v114, v115, v116, v117, v118, v179, v180, v181, v182, v183, v184, v186, blockBufferOut, v188, v189, v190, v191, v192, v193, v194, v195, v196, LOBYTE(v197), SHIDWORD(v197), *type);
                        if (!OUTLINED_FUNCTION_28_1(v119))
                        {
                          goto LABEL_194;
                        }

                        *cf = 136315650;
                        OUTLINED_FUNCTION_3_41();
                        v203 = 1024;
                        *v204 = 30;
                        OUTLINED_FUNCTION_47_0();
                      }

                      else
                      {
                        if (!dword_1EAF16F58)
                        {
LABEL_195:
                          *(v19 + 512) = 0;
                          fbf_postConnectionToHostLostNotification(v19);
                          goto LABEL_196;
                        }

                        OUTLINED_FUNCTION_23_13();
                        v101 = OUTLINED_FUNCTION_22_11();
                        v109 = OUTLINED_FUNCTION_15_15(v101, v102, v103, v104, v105, v106, v107, v108, v179, v180, v181, v182, v183, v184, v186, blockBufferOut, v188, v189, v190, v191, v192, v193, v194, v195, v196, LOBYTE(v197), SHIDWORD(v197), *type);
                        if (!OUTLINED_FUNCTION_28_1(v109))
                        {
LABEL_194:
                          OUTLINED_FUNCTION_7();
                          OUTLINED_FUNCTION_417();
                          goto LABEL_195;
                        }

                        *cf = 136315650;
                        OUTLINED_FUNCTION_3_41();
                        v203 = 1024;
                        *v204 = HIDWORD(v183);
                        OUTLINED_FUNCTION_47_0();
                      }

                      OUTLINED_FUNCTION_12_19();
                      OUTLINED_FUNCTION_27_10();
                      OUTLINED_FUNCTION_24_9();
                      goto LABEL_194;
                    }

LABEL_196:
                    v16 = v182;
LABEL_141:
                    v20 = BYTE4(v186);
LABEL_83:
                    if (v20 & 2 | HIDWORD(v183) | a8)
                    {
                      v213[0] = 0;
                      if (HIDWORD(v183))
                      {
                        v48 = HIDWORD(v183);
                      }

                      else
                      {
                        v48 = a8;
                      }

                      v199 = 0;
                      *cf = 0;
                      v197 = 0.0;
                      *type = 0;
                      v195 = 0;
                      v196 = 0;
                      v193 = 0;
                      v194 = 0;
                      v191 = 0;
                      v192 = 0;
                      if (*(v19 + 648))
                      {
                        AllocatorForMedia = FigGetAllocatorForMedia();
                        v50 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v50)
                        {
                          v50(a1, @"FHRP_CFNetworkTimingData", AllocatorForMedia, cf);
                        }

                        FigCFDictionaryGetDoubleIfPresent();
                        FigCFDictionaryGetDoubleIfPresent();
                        FigCFDictionaryGetDoubleIfPresent();
                        FigCFDictionaryGetDoubleIfPresent();
                        v51 = FigGetAllocatorForMedia();
                        v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v52)
                        {
                          v52(a1, @"FHRP_CFNetworkTransactionMetrics", v51, type);
                        }

                        v53 = FigCFHTTPCreateAddressString(*(v19 + 136));
                        v54 = FigGetAllocatorForMedia();
                        v55 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v55)
                        {
                          v55(a1, 0x1F0B5D218, v54, &v199);
                        }

                        FigCFDictionaryGetInt64IfPresent();
                        FigCFDictionaryGetInt64IfPresent();
                        if (!FigCreateErrorForOSStatus(v48, v213))
                        {
                          v56 = FigGetAllocatorForMedia();
                          if (!FigMetricMediaResourceRequestEventCreate(v56, *(v19 + 168), v53, v193, v192, 0, v213[0], *type, v197, *&v196, *&v195, *&v194, &v191))
                          {
                            if (*(*(CMBaseObjectGetVTable() + 16) + 40))
                            {
                              v57 = OUTLINED_FUNCTION_249();
                              v58(v57);
                            }
                          }
                        }
                      }

                      else
                      {
                        v53 = 0;
                      }

                      if (*cf)
                      {
                        CFRelease(*cf);
                      }

                      if (*type)
                      {
                        CFRelease(*type);
                      }

                      if (v53)
                      {
                        CFRelease(v53);
                      }

                      if (v199)
                      {
                        CFRelease(v199);
                      }

                      if (v213[0])
                      {
                        CFRelease(v213[0]);
                      }

                      if (v191)
                      {
                        CFRelease(v191);
                      }
                    }

                    goto LABEL_110;
                  }
                }
              }
            }

            if (!*(v19 + 380))
            {
              if (dword_1EAF16F58)
              {
                OUTLINED_FUNCTION_23_13();
                v88 = OUTLINED_FUNCTION_22_11();
                v96 = OUTLINED_FUNCTION_15_15(v88, v89, v90, v91, v92, v93, v94, v95, v179, v180, v181, v182, v183, v8, v186, blockBufferOut, v188, v189, v190, v191, v192, v193, v194, v195, v196, LOBYTE(v197), SHIDWORD(v197), *type);
                if (OUTLINED_FUNCTION_28_1(v96))
                {
                  *cf = 136315394;
                  OUTLINED_FUNCTION_1_50();
                  OUTLINED_FUNCTION_12_19();
                  OUTLINED_FUNCTION_27_10();
                  OUTLINED_FUNCTION_24_9();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_417();
              }

              fbf_FailImmediately(v19);
LABEL_175:
              v99 = 1;
              goto LABEL_176;
            }

            FigCFHTTPGoInactiveIfUnreachable(v19, &v199);
            if (*(v19 + 392))
            {
              if (dword_1EAF16F58)
              {
                OUTLINED_FUNCTION_23_13();
                v151 = OUTLINED_FUNCTION_22_11();
                v159 = OUTLINED_FUNCTION_15_15(v151, v152, v153, v154, v155, v156, v157, v158, v179, v180, v181, v182, v183, v8, v186, blockBufferOut, v188, v189, v190, v191, v192, v193, v194, v195, v196, LOBYTE(v197), SHIDWORD(v197), *type);
                if (OUTLINED_FUNCTION_28_1(v159))
                {
                  *cf = 136315394;
                  OUTLINED_FUNCTION_1_50();
                  OUTLINED_FUNCTION_12_19();
                  OUTLINED_FUNCTION_27_10();
                  OUTLINED_FUNCTION_24_9();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_417();
              }

              FigHTTPRescheduleTimer(8073216000.0, *(v19 + 48), *(v19 + 456));
              fbf_CancelReconnect(v19);
              goto LABEL_175;
            }

            if (*(v19 + 17))
            {
              if (dword_1EAF16F58)
              {
                OUTLINED_FUNCTION_23_13();
                v161 = OUTLINED_FUNCTION_22_11();
                v169 = OUTLINED_FUNCTION_15_15(v161, v162, v163, v164, v165, v166, v167, v168, v179, v180, v181, v182, v183, v8, v186, blockBufferOut, v188, v189, v190, v191, v192, v193, v194, v195, v196, LOBYTE(v197), SHIDWORD(v197), *type);
                if (OUTLINED_FUNCTION_28_1(v169))
                {
                  *cf = 136315394;
                  OUTLINED_FUNCTION_1_50();
                  OUTLINED_FUNCTION_12_19();
                  OUTLINED_FUNCTION_27_10();
                  OUTLINED_FUNCTION_24_9();
                }

                v99 = 1;
                OUTLINED_FUNCTION_417();
                goto LABEL_176;
              }

              goto LABEL_175;
            }

            if (dword_1EAF16F58)
            {
              OUTLINED_FUNCTION_23_13();
              v170 = OUTLINED_FUNCTION_22_11();
              v178 = OUTLINED_FUNCTION_15_15(v170, v171, v172, v173, v174, v175, v176, v177, v179, v180, v181, v182, v183, v8, v186, blockBufferOut, v188, v189, v190, v191, v192, v193, v194, v195, v196, LOBYTE(v197), SHIDWORD(v197), *type);
              if (OUTLINED_FUNCTION_28_1(v178))
              {
                *cf = 136315650;
                *&cf[4] = "FigCFHTTPReadResponse";
                v201 = 2048;
                v202 = v19;
                v203 = 1024;
                *v204 = v199 / 0x3B9ACA00;
                OUTLINED_FUNCTION_47_0();
                OUTLINED_FUNCTION_12_19();
                OUTLINED_FUNCTION_27_10();
                OUTLINED_FUNCTION_24_9();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_417();
            }
          }

          else
          {
            *(v19 + 72) = 2;
            v97 = *(v19 + 88);
            if (v97)
            {
              v98 = *(*(CMBaseObjectGetVTable() + 8) + 24);
              if (v98)
              {
                v98(v97);
              }
            }
          }

          v99 = 0;
LABEL_176:
          v100 = -12935;
          goto LABEL_177;
        }
      }

      v182 = v16;
      fbf_ReleaseAndSetLastErrorFromHTTPRequest(v19, a1, a8, &v188 + 7);
      goto LABEL_149;
    }
  }

LABEL_111:
  if (v16)
  {
    CFRelease(v16);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

LABEL_115:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

double FigByteRateHistoryNextSample(uint64_t *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  v3 = v1 * 1000000000.0 / v2;
  v4 = *(a1 + 4) + 1;
  v5 = *(a1 + 2);
  if (v4 >= v5)
  {
    v6 = *(a1 + 5);
    if (v6 == 0.0)
    {
      v7 = v1 * 1000000000.0 / v2;
    }

    else
    {
      v7 = v3 * 0.1 + v6 * 0.9;
    }

    *(a1 + 5) = v7;
  }

  v8 = *(a1 + 3);
  v9 = *a1;
  v10 = *(*a1 + 16 * v8 + 8) * 1000000000.0 / *(*a1 + 16 * v8) - v3;
  v11 = v10 * v10;
  v12 = *(a1 + 6);
  if (1.79769313e308 - v11 >= v12)
  {
    v13 = a1[7] + 1;
  }

  else
  {
    v12 = 0.0;
    v13 = 1;
  }

  result = v11 + v12;
  *(a1 + 6) = result;
  a1[7] = v13;
  v15 = (v8 + 1) % v5;
  *(a1 + 3) = v15;
  *(a1 + 4) = v4;
  v16 = v9 + 16 * v15;
  v17 = v1 - *(v16 + 8);
  a1[3] = v2 - *v16;
  a1[4] = v17;
  *v16 = 0;
  *(v16 + 8) = 0;
  return result;
}

void crabsIncrementalReadCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, OpaqueCMBlockBuffer *a5, char a6, int a7)
{
  v104[21] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = CFRetain(a1);
  }

  else
  {
    v10 = 0;
  }

  v104[0] = 0;
  FigMemoryBarrier();
  if (a7 == -12932 || !v10)
  {
LABEL_235:
    if (!v10)
    {
      return;
    }

    goto LABEL_236;
  }

  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    v103 = a7;
    Owner = FigRetainProxyGetOwner();
    if (Owner)
    {
      Owner = CFRetain(Owner);
    }

    cf = Owner;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 104))
    {
      goto LABEL_233;
    }

    v14 = DerivedStorage;
    v102 = *(DerivedStorage + 520);
    if (v102 == a2)
    {
      v15 = 512;
      v16 = 568;
      v17 = 544;
      v18 = 528;
    }

    else
    {
      if (*(DerivedStorage + 624) != a2)
      {
        v40 = *(DerivedStorage + 32);
        v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v41)
        {
          v41(v40, a3);
        }

        v42 = *(v14 + 920);
        if (v42)
        {
          v43 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v43)
          {
            v43(v42, 0x1F0B64598, 0x1F0B655B8, 1);
          }
        }

        goto LABEL_233;
      }

      v15 = 616;
      v16 = 672;
      v17 = 648;
      v18 = 632;
    }

    v19 = DerivedStorage + v15;
    v20 = *(DerivedStorage + v18);
    v21 = *(DerivedStorage + v17);
    v94 = *(DerivedStorage + v16);
    if (*(DerivedStorage + 56) == -1 || !*(DerivedStorage + 80))
    {
      updated = v103;
      if (v103)
      {
        goto LABEL_49;
      }

      updated = crabsUpdateLength(DerivedStorage, *(DerivedStorage + 32));
      if (updated)
      {
        goto LABEL_49;
      }

      if (!*(v19 + 24))
      {
        *(v19 + 24) = *(v14 + 56) - *(v19 + 16);
      }

      updated = crabsInitialize(v14);
      if (updated)
      {
LABEL_49:
        v44 = crabsCancelRead(v14, v19, updated);
        goto LABEL_50;
      }
    }

    if ((*(v14 + 504) & 1) != 0 && !*(v14 + 720))
    {
      FigRetainProxyUnlockMutex();
      Current = CFRunLoopGetCurrent();
      FigAIOClientCreate(Current, crabsAIOCallback, *(v14 + 760), (v14 + 720));
      FigRetainProxyLockMutex();
      if (FigRetainProxyIsInvalidated() || !*(v14 + 104))
      {
        goto LABEL_233;
      }
    }

    v24 = 0;
    v25 = 0;
    v26 = v103;
    if (v103)
    {
      v27 = v103 == -12930;
    }

    else
    {
      v27 = 1;
    }

    v28 = v27;
    v96 = 1;
    if (a5)
    {
      v92 = 0;
      DataLength = 0;
      v30 = 0;
      if (v28)
      {
        DataLength = CMBlockBufferGetDataLength(a5);
        if (DataLength)
        {
          v97 = v20;
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v99 = v19;
          v32 = UpTimeNanoseconds - *(v19 + 64);
          if (v32 >= 1)
          {
            v33 = *(v14 + 920);
            v34 = v102 == a2 ? &kFigReportingEventKey_SampleFirehoseObservedBitrate : kFigReportingEventKey_SampleImmediateObservedBitrate;
            if (v33)
            {
              v35 = v99[4];
              v36 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v36)
              {
                v36(v33, 0x1F0B64598, *v34, (v35 * 8.0 / (v32 / 1000000000.0)));
              }
            }
          }

          v19 = v99;
          v37 = v99[4];
          v38 = v99[8];
          if (v37)
          {
            v39 = (UpTimeNanoseconds - (v38 + v99[9])) / (v37 + DataLength - v99[10]);
          }

          else
          {
            v45 = UpTimeNanoseconds - v38;
            v99[9] = v45;
            v99[10] = DataLength;
            v39 = v45 / DataLength;
          }

          if (v39 <= 1)
          {
            v39 = 1;
          }

          v99[11] = v39;
          if (v37 + DataLength <= v99[3])
          {
            v93 = 0;
            goto LABEL_61;
          }

          FigLogBacktrace();
          v46 = v99[3];
          v47 = v99[4];
          DataLength = v46 - v47;
          if (v46 != v47)
          {
            v93 = 1;
LABEL_61:
            v30 = 0;
            v92 = 0;
            v48 = 0;
            v49 = 0;
            v24 = 0;
            v98 = v21 + v97;
            while (1)
            {
              v50 = v98 + v49;
              v51 = *(v14 + 96);
              if (v51 == 0x4000)
              {
                v52 = v50 >> 14;
              }

              else if (v51 == 0x10000)
              {
                v52 = v50 >> 16;
              }

              else
              {
                v52 = v50 / v51;
              }

              v53 = *(v14 + 88);
              if (v52 >= v53)
              {
                FigLogBacktrace();
                v53 = *(v14 + 88);
                v93 = 1;
              }

              if (v52 >= v53)
              {
                crabsIncrementalReadCallback_cold_1(v24, v104);
                v96 = 1;
                v19 = v99;
                goto LABEL_140;
              }

              v24 = *(*(v14 + 80) + 8 * v52);
              if (!v24 && (crabsInitBlock(v14, v52) || (v24 = *(*(v14 + 80) + 8 * v52)) == 0))
              {
                crabsIncrementalReadCallback_cold_4();
                v19 = v99;
                goto LABEL_232;
              }

              if (*(v24 + 10))
              {
                if ((*(v14 + 504) & 1) != 0 && v24 == *(v14 + 744))
                {
                  crabsCompleteLazyPagein(v14, 1);
                }
              }

              else
              {
                if (v94 <= 0)
                {
                  v55 = *(v24 + 4);
                  v54 = (v55 & 1) != 0 && (v55 & 0x800) == 0;
                }

                else
                {
                  v54 = 1;
                }

                crabsReadyBlockForLoad(v14, v24, v54);
                if (!*(v24 + 10))
                {
                  v104[0] = v24;
                  if ((v24[2] & 0x800) != 0)
                  {
                    crabsUnhint(v14, v24);
                  }

                  v96 = 0;
                  *(v14 + 134) = 1;
                  v30 = -12876;
                  goto LABEL_137;
                }
              }

              v56 = *(v14 + 96);
              v57 = v24[1];
              v58 = v50 - v56 * *v24;
              if (v57 > v58)
              {
                v49 += v57 - v58;
                if (v49 >= DataLength)
                {
                  v19 = v99;
                  goto LABEL_133;
                }

                v58 = v24[1];
              }

              v59 = v56 - v58;
              if ((DataLength - v49) >= v59)
              {
                v60 = v59;
              }

              else
              {
                v60 = DataLength - v49;
              }

              if (v58 > v57 || (v24[2] & 4) != 0)
              {
                goto LABEL_100;
              }

              if (v30 || (v62 = *(v24 + 10)) == 0)
              {
                v104[0] = v24;
                *(v14 + 134) = 1;
                v30 = -12876;
                crabsReportingReportError(v14, @"CoreMediaErrorDomain", @"No space for load", -12876);
                v96 = 0;
LABEL_137:
                v19 = v99;
                goto LABEL_138;
              }

              if ((v49 & 0x8000000000000000) != 0)
              {
                crabsIncrementalReadCallback_cold_3();
                goto LABEL_233;
              }

              if ((v60 & 0x8000000000000000) != 0)
              {
                crabsIncrementalReadCallback_cold_2();
                goto LABEL_233;
              }

              v63 = CMBlockBufferCopyDataBytes(a5, v49, v60, (*(v62 + 16) + v58));
              if (v63)
              {
                break;
              }

              v64 = *(v24 + 4);
              *(v24 + 4) = v64 | 8;
              ++*(v14 + 400);
              if ((*(v14 + 504) & 1) == 0 && (v64 & 0x100) != 0)
              {
                *(v24 + 4) = v64 | 0x48;
              }

              v65 = v24[1];
              v66 = v60 + v58;
              if ((v60 + v58) > v65)
              {
                FigSimpleMutexLock();
                v71 = *(v14 + 64) - v24[1];
                v24[1] = v66;
                *(v14 + 64) = v71 + v66;
                FigReportingAgentStatsSetIntValue_0(*(v14 + 920));
                FigSimpleMutexUnlock();
                v65 = v24[1];
              }

              v19 = v99;
              if (v103 == -12930 || (v67 = *(v14 + 96), v67 == v65) || (v68 = *v24, v69 = *(v14 + 88) - 1, (a6 & 1) != 0) && v69 == v68 || v69 == v68 && v65 + v67 * v68 >= *(v14 + 56))
              {
                v70 = *(v24 + 4);
                *(v24 + 4) = v70 | 4;
                if (v70)
                {
                  crabsUnhint(v14, v24);
                  v92 = *(v14 + 248) == 0;
                }

                else if (!v94 && (*(v24 + 4) || *(v24 + 5)))
                {
                  removeFromWorkingSet(v14, v24);
                  addToWorkingSet(v14, v24, 1, 0);
                }
              }

              if ((v24[2] & 0x20) != 0)
              {
                crabsRetainWorking(v14, v24);
                crabsReleaseWorking(v14, v24, 1, 1);
              }

              v30 = 0;
              *(v14 + 176) |= 1u;
LABEL_101:
              v49 += v60;
              if (v49 >= DataLength)
              {
                goto LABEL_133;
              }

              if (v102 == a2 && *(v14 + 664) == 1 && crabsRangeInBlockIsCached(v14, *(v14 + 632), *(v14 + 640)))
              {
                MEMORY[0x19A8D12E0](*(v14 + 656));
              }

              FigRetainProxyUnlockMutex();
              FigRetainProxyLockMutex();
              if (FigRetainProxyIsInvalidated() || !*(v14 + 104))
              {
                goto LABEL_233;
              }

              if (*(v19 + 8) != a2)
              {
                v48 = 1;
              }
            }

            v30 = v63;
LABEL_100:
            v19 = v99;
            goto LABEL_101;
          }

          v92 = 0;
          v93 = 1;
          v24 = 0;
          v48 = 0;
          v30 = 0;
LABEL_133:
          v104[0] = v24;
          v96 = 1;
LABEL_138:
          if (v48)
          {
            goto LABEL_233;
          }

          *(v19 + 32) += DataLength;
LABEL_140:
          v26 = v103;
          v25 = v93;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v92 = 0;
          v30 = 0;
          v96 = 1;
        }
      }
    }

    else
    {
      v92 = 0;
      DataLength = 0;
      v30 = 0;
    }

    if (v25)
    {
      v72 = -12870;
    }

    else
    {
      v72 = v30;
    }

    if (v72)
    {
      v26 = v72;
    }

    if (v25 | v26)
    {
      if (crabsCancelRead(v14, v19, v26) == -12785)
      {
        goto LABEL_233;
      }
    }

    else if ((a6 & 1) != 0 || *(v19 + 32) == *(v19 + 24))
    {
      *(v19 + 48) = 0;
    }

    if (*(v14 + 116))
    {
      if (v102 != a2 || !*(v14 + 135))
      {
        goto LABEL_172;
      }
    }

    else if (v102 != a2)
    {
      goto LABEL_172;
    }

    if (*(v14 + 560) == 1)
    {
      v73 = *(v14 + 544) + *(v14 + 528);
      v74 = v73 - DataLength;
      v75 = *(v14 + 96);
      if (v75 == 0x4000)
      {
        v76 = v74 >> 14;
        v77 = v73 >> 14;
      }

      else if (v75 == 0x10000)
      {
        v76 = v74 >> 16;
        v77 = v73 >> 16;
      }

      else
      {
        v76 = v74 / v75;
        v77 = v73 / v75;
      }

      if (v76 > v77)
      {
LABEL_168:
        v104[0] = v24;
        if (!*(v14 + 568) && crabsCancelRead(v14, v14 + 512, -12932) == -12785)
        {
          goto LABEL_233;
        }
      }

      else
      {
        v78 = v77 - v76 + 1;
        v79 = (*(v14 + 80) + 8 * v76);
        while (1)
        {
          v24 = *v79;
          if (*v79)
          {
            if (v24[2])
            {
              break;
            }
          }

          ++v79;
          if (!--v78)
          {
            goto LABEL_168;
          }
        }

        v104[0] = *v79;
      }
    }

LABEL_172:
    if ((*(v14 + 504) & 3) == 0)
    {
      v13.n128_f32[0] = crabsPurgeCompletionSweep(v14);
    }

    if (*(v14 + 560) != 1)
    {
      goto LABEL_215;
    }

    v80 = *(v14 + 544) + *(v14 + 528);
    v81 = *(v14 + 96);
    if (v81 == 0x4000)
    {
      v82 = v80 >> 14;
    }

    else if (v81 == 0x10000)
    {
      v82 = v80 >> 16;
    }

    else
    {
      v82 = v80 / v81;
    }

    if (*(v14 + 416) != *(v14 + 408) || v92)
    {
      v83 = 1;
      if (!crabsSelectNextFill(v14, v104) && v104[0])
      {
        v83 = v82 <= *v104[0];
      }

      *(v14 + 416) = *(v14 + 408);
    }

    else
    {
      v83 = 1;
    }

    v84 = *(*(v14 + 80) + 8 * v82);
    if (v84)
    {
      if (v83)
      {
        goto LABEL_189;
      }
    }

    else
    {
      if (!crabsInitBlock(v14, v82))
      {
        v84 = *(*(v14 + 80) + 8 * v82);
        if (!v83)
        {
          goto LABEL_203;
        }

LABEL_189:
        if ((*(v14 + 504) & 3) != 0 || (v84[2] & 0x10) != 0)
        {
          goto LABEL_205;
        }

        v85 = *(v14 + 224);
        v86 = *v84;
        if (*(v14 + 133))
        {
          if (v85 <= v86 && *(v14 + 472) + v85 > v86)
          {
            goto LABEL_205;
          }
        }

        else if (v85 <= v86)
        {
          goto LABEL_205;
        }

        if (!crabsEnsureSafetyMargin(v14, v82))
        {
          *(v14 + 134) = 1;
          goto LABEL_203;
        }

LABEL_205:
        v87 = *(v14 + 568);
        if (*(v14 + 132))
        {
          if (v87)
          {
            goto LABEL_215;
          }

LABEL_211:
          if (*(v14 + 560) != 1 || !*(v14 + 608))
          {
            goto LABEL_215;
          }

          crabsIncrementalReadCallback_cold_5((v14 + 608), v14);
          goto LABEL_214;
        }

        if (v87)
        {
          goto LABEL_215;
        }

        if (v82 >= *(v14 + 224) || (v84[2] & 1) != 0)
        {
          goto LABEL_211;
        }

LABEL_214:
        if (crabsCancelRead(v14, v14 + 512, -12932) == -12785)
        {
          goto LABEL_233;
        }

LABEL_215:
        if (*(v14 + 104))
        {
          crabsRebalanceWorkingSet(v14);
        }

        if (v26 == -12935)
        {
          if (!*(v19 + 56))
          {
            crabsReportingReportError(v14, @"CoreMediaErrorDomain", @"Network error with no clients", -12935);
LABEL_232:
            MEMORY[0x19A8D12E0](*(v19 + 40));
LABEL_233:
            crabsRetainProxyUnlockWithActions();
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_235;
          }
        }

        else if (!v26 || v26 == -12930)
        {
          v44 = crabsStartIdleRead(v14, v13);
LABEL_50:
          if (v44 == -12785)
          {
            goto LABEL_233;
          }

          goto LABEL_232;
        }

        if (v96)
        {
          v88 = *(v14 + 952);
          if (v88)
          {
            CFRelease(v88);
            *(v14 + 952) = 0;
          }

          FigBaseObject = FigByteFlumeGetFigBaseObject(*(v14 + 32));
          v90 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v90)
          {
            v90(FigBaseObject, @"FBF_LastError", *MEMORY[0x1E695E480], v14 + 952);
          }

          *(v14 + 944) = v26;
          *(v14 + 176) |= 0x20u;
        }

        else if (*(v14 + 112))
        {
          *(v14 + 112) = 0;
          *(v14 + 176) |= 8u;
          if (dword_1EAF16BD0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        goto LABEL_232;
      }

      v84 = 0;
      if (v83)
      {
        goto LABEL_189;
      }
    }

LABEL_203:
    if (!*(v14 + 568) && (v84[2] & 1) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_205;
  }

  crabsRetainProxyUnlockWithActions();
LABEL_236:
  CFRelease(v10);
}

float crabsPurgeCompletionSweep(void *a1)
{
  crabsEnsureCanary(a1);
  v3 = **(a1[36] + 8);
  v4 = MEMORY[0x1E69E9A60];
  v5 = 0;
  if (v3)
  {
    do
    {
      v6 = **(*(v3 + 56) + 8);
      if ((*(v3 + 8) & 0x80) != 0)
      {
        v7 = *(v3 + 88);
        v13 = 0;
        if (MEMORY[0x19A8D6C80](*v4, v7, 1, &v13))
        {
          v8 = 0;
        }

        else
        {
          v8 = (v13 & 3) == 2;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        crabsRemovePurgedBacking(a1, v3, 0);
        crabsCleanupOrphan(a1, v3);
        ++v5;
      }

      v3 = v6;
    }

    while (v6);
  }

  v9 = **(a1[34] + 8);
  if (v9)
  {
    do
    {
      v10 = **(*(v9 + 56) + 8);
      if ((*(v9 + 8) & 0x80) != 0)
      {
        v11 = *(v9 + 88);
        v14 = 0;
        if (MEMORY[0x19A8D6C80](*v4, v11, 1, &v14))
        {
          v12 = 0;
        }

        else
        {
          v12 = (v14 & 3) == 2;
        }

        if (!v12)
        {
          break;
        }

        crabsRemovePurgedBacking(a1, v9, 1);
        crabsCleanupOrphan(a1, v9);
        ++v5;
      }

      v9 = v10;
    }

    while (v10);
  }

LABEL_19:
  if (v5 >= 1)
  {
    result = vcvts_n_f32_s64(a1[60], 1uLL) + v5 * 0.5 + 0.5;
    a1[60] = result;
  }

  return result;
}

BOOL crabsEnsureCanary(void *a1)
{
  v2 = a1[57];
  v3 = MEMORY[0x1E69E9A60];
  if (!v2)
  {
    goto LABEL_8;
  }

  v8 = 0;
  v4 = 1;
  if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v2, 1, &v8))
  {
    v5 = 0;
  }

  else
  {
    v5 = (v8 & 3) == 2;
  }

  if (v5)
  {
    CFAllocatorDeallocate(*a1, a1[57]);
    a1[57] = 0;
LABEL_8:
    v6 = MEMORY[0x19A8CC720](*a1, a1[12], 3221054981, 0);
    a1[57] = v6;
    if (v6)
    {
      v9 = 33;
      MEMORY[0x19A8D6C80](*v3, v6, 0, &v9);
      return a1[57] != 0;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL crabsMakeVolatile(uint64_t a1, int a2, int a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      v3 = 577;
      v4 = 769;
    }

    else
    {
      v3 = 1089;
      v4 = 1281;
    }

    if (a3 == 1)
    {
      v3 = v4;
    }
  }

  else if (a2 == 2)
  {
    v3 = 257;
  }

  else if (a2 == 3)
  {
    v3 = 1537;
  }

  else
  {
    v3 = 33;
  }

  v7 = v3;
  if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], a1, 0, &v7))
  {
    v5 = 1;
  }

  else
  {
    v5 = (v7 & 3) == 2;
  }

  return !v5;
}

void crabsStartIdleRead(uint64_t a1)
{
  v8[20] = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) && !*(a1 + 108) && !*(a1 + 135))
  {
    if (*(a1 + 56) == -1 || !*(a1 + 80))
    {
      if (*(a1 + 560) != 1 && ((*(a1 + 504) & 8) == 0 || *(a1 + 116) && *(a1 + 360) != *(a1 + 88)))
      {
        crabsMoveFirehose(a1, 0);
        OUTLINED_FUNCTION_13_3();
      }
    }

    else
    {
      v7 = 0;
      crabsTaskHints(a1, &v7);
      OUTLINED_FUNCTION_13_3();
      if (!v3)
      {
        if ((*(a1 + 504) & 8) != 0)
        {
          if (!*(a1 + 116))
          {
            return;
          }

          v4 = *(a1 + 360) != *(a1 + 88);
        }

        else
        {
          v4 = 1;
        }

        if (!v2 && v4 && *(a1 + 116) && !v7 && *(a1 + 560) != 1)
        {
          v8[0] = 0;
          if (!crabsSelectNextFill(a1, v8) && (v5 = v8[0]) != 0 && crabsShouldStartFirehose(a1, *v8[0]))
          {
            crabsMoveFirehose(a1, *(a1 + 96) * *v5);
            OUTLINED_FUNCTION_13_3();
          }

          else if (*(a1 + 112))
          {
            *(a1 + 112) = 0;
            *(a1 + 176) |= 8u;
            if (dword_1EAF16BD0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }
  }
}

uint64_t crabsTaskHints(uint64_t a1, _BYTE *a2)
{
  IsBusy = crabsDiskBackingIsBusy(a1, 0);
  v5 = *(a1 + 760);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 504))
  {
    crabsCompleteLazyPagein(a1, 0);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = !*(a1 + 568) && !*(a1 + 672);
  v9 = *(a1 + 248);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (!v8 && !v7)
      {
        goto LABEL_53;
      }

      if ((v9[2] & 4) != 0 && !IsBusy)
      {
        if ((*(a1 + 504) & 1) != 0 && !*(v9 + 10))
        {
          if (v7 && !*(a1 + 744) && *(a1 + 720) && (crabAllocWorkingSet(a1, v9) || !crabsSwipeUnusedWorking(a1, v9)))
          {
            v10 = FigAIOIssueRead();
            if (v10)
            {
              crabsReleaseWorkingBlock(a1, v9);
              if (v10 == 35)
              {
                v7 = 0;
                v10 = 0;
              }

              else
              {
                v10 = v10;
              }
            }

            else
            {
              *(a1 + 744) = v9;
              crabsRetainWorking(a1, v9);
            }
          }

          else
          {
            v7 = 0;
          }
        }

        goto LABEL_46;
      }

      v20 = 0;
      if (v8)
      {
        if (!crabsEvaluateFirehose(a1, v9, 1, &v20))
        {
          v12 = *(a1 + 96);
          v13 = v12 * *v9;
          v16 = *(a1 + 664) == 1 && (v14 = *(a1 + 632), v14 <= v13 + v9[1]) && (v15 = v13 + v12, *(a1 + 640) + v14 >= v15) && *(a1 + 648) + v14 < v15;
          if (v20 && !v16)
          {
            v17 = crabsMoveFirehose(a1, v13, "crabsTaskHints", 5516);
            v10 = v17;
            if (!v17)
            {
              goto LABEL_44;
            }

            if (v17 == -12785)
            {
              goto LABEL_60;
            }

            v10 = 0;
          }

          if (v11 != 0 || v16)
          {
            goto LABEL_45;
          }

          if (*(a1 + 664) != 1)
          {
            v18 = crabsIssueImmedLoad(a1, *(a1 + 96) * *v9, *(a1 + 96));
            if (v18 == -12785)
            {
              LOBYTE(v11) = 0;
LABEL_60:
              v10 = 4294954511;
              if (a2)
              {
                goto LABEL_54;
              }

              goto LABEL_55;
            }

            v10 = v18;
LABEL_44:
            v11 = 1;
LABEL_45:
            v8 = 1;
            goto LABEL_46;
          }

          v11 = 0;
        }

        v8 = 0;
      }

LABEL_46:
      v9 = *(v9 + 6);
      if (!v9)
      {
        goto LABEL_53;
      }
    }
  }

  LOBYTE(v11) = 0;
  v10 = 0;
LABEL_53:
  if (a2)
  {
LABEL_54:
    *a2 = v11;
  }

LABEL_55:
  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

uint64_t crabsReleaseWorking(void *a1, void *a2, int a3, int a4)
{
  result = FigAtomicDecrement32();
  if (!result)
  {
    if (a4 || (result = FigRetainProxyTryLockMutex(), result))
    {
      if (*(a2[10] + 24))
      {
        if (a4)
        {
          return result;
        }
      }

      else
      {
        result = addToWorkingSet(a1, a2, a3, 1);
        v9 = a1[12];
        *(&gCRABS_Stats + 1) += v9;
        a1[106] += v9;
        if (a4)
        {
          return result;
        }
      }

      return crabsUnlockWithActions(a1);
    }

    else
    {
      FigSimpleMutexLock();
      if (!a2[8] && !a2[9])
      {
        v10 = a1[46];
        a2[8] = v10;
        if (v10)
        {
          v11 = (v10 + 72);
        }

        else
        {
          v11 = a1 + 47;
        }

        *v11 = a2 + 8;
        a1[46] = a2;
        a2[9] = a1 + 46;
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t crabsCancelRead(void *a1, uint64_t a2, int a3)
{
  v6 = a1[95];
  if (v6)
  {
    v7 = CFRetain(v6);
  }

  else
  {
    v7 = 0;
  }

  if (*(a2 + 48) != 1)
  {
    v28 = 0;
    goto LABEL_45;
  }

  v8 = *a2;
  v9 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 48) = a3;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v11 = UpTimeNanoseconds - *(a2 + 64);
  if (v11 >= 1)
  {
    v12 = UpTimeNanoseconds;
    v13 = v9;
    v14 = *(a2 + 32);
    v15 = a1[115];
    v34 = v8;
    v16 = a1 + 64;
    if (a1 + 64 == a2)
    {
      v17 = &kFigReportingEventKey_FirehoseRequestBytes;
    }

    else
    {
      v17 = &kFigReportingEventKey_ImmediateRequestBytes;
    }

    if (v15)
    {
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v18)
      {
        v18(v15, 0x1F0B64598, *v17, v14);
      }
    }

    v33 = v14;
    v19 = a1[115];
    if (v16 == a2)
    {
      v20 = &kFigReportingEventKey_FirehoseRequestTimeMilliseconds;
    }

    else
    {
      v20 = &kFigReportingEventKey_ImmediateRequestTimeMilliseconds;
    }

    if (v19)
    {
      v21 = *(a2 + 64);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v22)
      {
        v22(v19, 0x1F0B64598, *v20, ((v12 - v21) / 1000000.0));
      }
    }

    v23 = a1[115];
    if (v16 == a2)
    {
      v24 = &kFigReportingEventKey_SampleFirehoseObservedBitrate;
    }

    else
    {
      v24 = kFigReportingEventKey_SampleImmediateObservedBitrate;
    }

    v9 = v13;
    v8 = v34;
    if (v23)
    {
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v25)
      {
        v25(v23, 0x1F0B64598, *v24, (v33 * 8.0 / (v11 / 1000000000.0)));
      }
    }
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v27 = CFRetain(Owner);
  }

  else
  {
    v27 = 0;
  }

  v29 = a1[4];
  if (v29)
  {
    v30 = CFRetain(v29);
  }

  else
  {
    v30 = 0;
  }

  FigRetainProxyUnlockMutex();
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v31)
  {
    v28 = v31(v30, v8);
  }

  else
  {
    v28 = 4294954514;
  }

  FigRetainProxyLockMutex();
  if (v30)
  {
    CFRelease(v30);
  }

  if (FigRetainProxyIsInvalidated())
  {
    v28 = 4294954511;
  }

  else
  {
    if (*(a2 + 8) != v9)
    {
      goto LABEL_43;
    }

    if (v28 == -12934)
    {
      if (*a2)
      {
        v28 = 4294954362;
        goto LABEL_43;
      }
    }

    else if (v28)
    {
      goto LABEL_43;
    }

    crabsCancelRead_cold_1(a1, a2, v28, &v35);
    v28 = v35;
  }

LABEL_43:
  if (v27)
  {
    CFRelease(v27);
  }

LABEL_45:
  if (v7)
  {
    CFRelease(v7);
  }

  return v28;
}

uint64_t FigCFHTTPCancel(uint64_t a1, uint64_t a2)
{
  FigByteFlumeGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigCFHTTPCancel_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    FigRetainProxyRetainOwner();
    v4 = *(DerivedStorage + 56);
    if (v4)
    {
      while (*(v4 + 64) != a2)
      {
        v4 = *(v4 + 128);
        if (!v4)
        {
          goto LABEL_5;
        }
      }

      *(v4 + 120) = -12932;
      FigCFHTTPFinishReadRequest(DerivedStorage, v4, 1);
      v5 = 0;
    }

    else
    {
LABEL_5:
      v5 = 4294954362;
    }

    FigRetainProxyReleaseOwner();
  }

  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  return v5;
}

uint64_t FigCFHTTPFinishReadRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_172(a1);
  FigRetainProxyRetainOwner();
  v6 = (a2 + 125);
  if (*(a2 + 125))
  {
    goto LABEL_41;
  }

  if (*(a2 + 126))
  {
    RemoveReadRequestFromQueue(v3, a2);
  }

  v7 = *(v3 + 44);
  if (*(v3 + 40))
  {
    v8 = v7 == 1;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8 || v7 == 2;
  FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v3 + 592), *(a2 + 24), *(v3 + 32), 0x1F0B645B8, v10);
  if (*(a2 + 127) || *v6)
  {
    goto LABEL_18;
  }

  if (*(v3 + 377))
  {
    *v6 = 1;
LABEL_17:
    (*(a2 + 16))(*(a2 + 40), *(a2 + 48), *(a2 + 64), *(a2 + 112), 0, a3, *(a2 + 120));
    v6 = (a2 + 127);
LABEL_18:
    *v6 = 1;
    goto LABEL_19;
  }

  IsInvalidated = FigRetainProxyIsInvalidated();
  *v6 = 1;
  if (!IsInvalidated)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11 = *(a2 + 120);
  if (v11 && v11 != -12930)
  {
    v15 = 0;
    v14 = 1;
  }

  else
  {
    v12 = *(v3 + 128);
    if (v12)
    {
      CFRelease(v12);
      *(v3 + 128) = 0;
    }

    v13 = *(a2 + 24);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    v14 = 0;
    *(v3 + 128) = v13;
    v15 = 1;
  }

  v16 = *(a2 + 24);
  *(a2 + 24) = 0;
  FigRetainProxyUnlockMutex();
  if ((v15 & 1) == 0)
  {
    if (v16)
    {
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v17)
      {
        v17(v16);
      }
    }
  }

  v18 = *(v3 + 88);
  v19 = v14 ^ 1;
  if (v16 != v18)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0 && !*(v3 + 72))
  {
    if (v16)
    {
      CFRelease(v18);
      *(v3 + 88) = 0;
    }

    *(v3 + 96) = -1;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  FigRetainProxyLockMutex();
  ReadRequestRelease(a2);
LABEL_41:

  return FigRetainProxyReleaseOwner();
}

void ReadRequestRelease(uint64_t a1)
{
  if (!FigAtomicDecrement32())
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 24) = 0;
    }

    if (*(a1 + 126))
    {
      FigRetainProxyLockMutex();
      if (!FigRetainProxyIsInvalidated())
      {
        FigRetainProxyGetOwner();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        RemoveReadRequestFromQueue(DerivedStorage, a1);
      }

      FigRetainProxyUnlockMutex();
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      CFRelease(v8);
    }

    FigRetainProxyRelease();

    free(a1);
  }
}

void crabsBBufRefReleaseFn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  crabsReleaseWorking(v4, *a1, 1, 0);
  --qword_1EAF189F0;
  --*(v4 + 872);
  qword_1EAF189E0 -= a3;
  *(v4 + 856) -= a3;
  if ((*(v4 + 504) & 1) == 0 && FigRetainProxyTryLockMutex())
  {
    if (*(v4 + 344) >= 49)
    {
      do
      {
        v7 = 0;
        memset(v6, 0, sizeof(v6));
        if (crabsSwipeUnusedWorking(v4, v6))
        {
          break;
        }

        removeFromWorkingSet(v4, v6);
        crabsReleaseWorkingBlock(v4, v6);
      }

      while (*(v4 + 344) >= 17);
    }

    crabsUnlockWithActions(v4);
  }

  v5 = *(v4 + 40);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t FigByteRateHistoryAddToSample(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * *(result + 12);
  *v2 += *a2;
  *(v2 + 8) += *(a2 + 8);
  v3 = *(result + 32) + *(a2 + 8);
  *(result + 24) += *a2;
  *(result + 32) = v3;
  return result;
}

uint64_t crabsIssueImmedLoad(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 760);
  if (v6)
  {
    v7 = CFRetain(v6);
  }

  else
  {
    v7 = 0;
  }

  do
  {
    while (1)
    {
      if (*(a1 + 664) != 1)
      {
        goto LABEL_14;
      }

      if (*(a1 + 56) == -1)
      {
        break;
      }

      v8 = *(a1 + 632);
      v9 = *(a1 + 640);
      if (!*(a1 + 80) || !crabsRangeInBlockIsCached(a1, *(a1 + 632), *(a1 + 640)))
      {
        goto LABEL_9;
      }

LABEL_14:
      if (dword_1EAF16BD0 >= 2)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v13 = crabsIssueLoad(a1, a1 + 616, a2, a3, 0, 0);
      if (v13 != -12871)
      {
        if (!v7)
        {
          return v13;
        }

        goto LABEL_18;
      }
    }

    v8 = *(a1 + 632);
    v9 = *(a1 + 640);
LABEL_9:
    v10 = crabsWaitForLoad(a1, a1 + 616, v8, v9, -1);
    if (v10)
    {
      v11 = v10 == -12930;
    }

    else
    {
      v11 = 1;
    }
  }

  while (v11);
  v13 = v10;
  if (v7)
  {
LABEL_18:
    CFRelease(v7);
  }

  return v13;
}

uint64_t crabsReadyBlockForLoad(uint64_t a1, int *a2, int a3)
{
  v6 = (a2[2] & 0x80) != 0 && crabsMakeBackingNonvolatile(a1, a2, *(a1 + 224) <= *a2) != 0;
  if (crabAllocWorkingSet(a1, a2))
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  if (a3)
  {
    goto LABEL_22;
  }

  v12 = *(a2 + 4);
  if ((v12 & 0x200) != 0)
  {
    if ((v12 >> 8))
    {
      goto LABEL_22;
    }
  }

  else if (*(a2 + 11))
  {
LABEL_22:
    LODWORD(v7) = 0;
    goto LABEL_23;
  }

  if (crabsAllocBacking(a1, a2))
  {
    LODWORD(v7) = 1;
  }

  else
  {
    v7 = 0;
    if (!crabsBlockIsAKeeper(a1, a2))
    {
      v10 = 1;
      goto LABEL_27;
    }
  }

LABEL_23:
  if (!crabsSwipeUnusedWorking(a1, a2))
  {
LABEL_6:
    v8 = *(a2 + 4);
    if ((v8 & 0x200) != 0)
    {
      v9 = (v8 >> 8) & 1;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = *(a2 + 11) != 0;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    if (v9)
    {
      crabsPageInBlock(a1, a2);
      v8 = *(a2 + 4);
    }

LABEL_12:
    if ((v8 & 0x200) != 0)
    {
      if ((v8 >> 8))
      {
        goto LABEL_14;
      }
    }

    else if (*(a2 + 11))
    {
LABEL_14:
      v10 = 0;
LABEL_15:
      v11 = 1;
      goto LABEL_25;
    }

    if (crabsAllocBacking(a1, a2))
    {
      v10 = 0;
      v11 = 1;
LABEL_26:
      crabsAddBlockToBackedList(a1, a2);
      v7 = v11;
      goto LABEL_27;
    }

    v10 = 0;
    LODWORD(v7) = crabsSwipeBacking(a1, a2, 0) == 0;
    goto LABEL_15;
  }

  v11 = 0;
  v10 = 1;
LABEL_25:
  v13 = v7;
  v7 = v11;
  if (v13)
  {
    goto LABEL_26;
  }

LABEL_27:
  if ((v6 & v10) == 1 && (*(a1 + 504) & 3) == 0)
  {
    crabsMakeBlockVolatileRelativeToAnchor(a1, a2);
  }

  return v7;
}

BOOL crabsAllocBacking(void *a1, int *a2)
{
  v4 = *(a1 + 126);
  if (v4)
  {
    *host_info_out = 0;
    v6 = a1[1];
    if (v6)
    {
      v7 = a1[12];
      v8 = a2 + 24;
      v9 = *a2;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10)
      {
        if (v10(v6, v7, v7 * v9, host_info_out, a2 + 24))
        {
          v11 = a1[2];
          if (v11)
          {
            if (v11 != *host_info_out)
            {
              FigSignalErrorAtGM();
              result = 0;
              *v8 = -1;
              return result;
            }
          }

          else
          {
            a1[2] = *host_info_out;
          }

          *(a2 + 4) |= 0x100u;
        }
      }
    }
  }

  else if ((v4 & 2) != 0)
  {
    *(a2 + 11) = MEMORY[0x19A8CC720](*a1, a1[12], 4260386219, 0);
  }

  else
  {
    v5 = a1[58] >= a1[59] && (a2[2] & 0x10) == 0;
    v30 = 0u;
    memset(v31, 0, sizeof(v31));
    *host_info_out = 0u;
    host_info_outCnt = 60;
    v26 = 8;
    v27 = 0;
    v18 = MEMORY[0x19A8D5D90]();
    if (host_statistics(v18, 2, host_info_out, &host_info_outCnt) || sysctlbyname("vm.vm_page_free_target", &v27, &v26, 0, 0) || host_info_out[0] <= v27)
    {
      v19 = 0;
    }

    else
    {
      v19 = *MEMORY[0x1E69E9AC8] * (host_info_out[0] - v27);
    }

    if (!v5 || v19 > a1[12] && crabsEnsureCanary(a1))
    {
      v20 = MEMORY[0x19A8CC720](*a1, a1[12], 3307936231, 0);
      if (v20)
      {
        v21 = v20;
        if (a1[12])
        {
          v22 = 0;
          v23 = MEMORY[0x1E69E9AC8];
          do
          {
            *(v20 + v22) = 0;
            v22 += *v23;
          }

          while (v22 < a1[12]);
        }

        if (v5 && ((v24 = a1[57], host_info_out[0] = 0, !MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v24, 1, host_info_out)) ? (v25 = (host_info_out[0] & 3) == 2) : (v25 = 0), v25))
        {
          CFAllocatorDeallocate(*a1, v21);
        }

        else
        {
          *(a2 + 11) = v21;
          if ((a2[2] & 0x10) == 0)
          {
            ++a1[58];
          }
        }
      }
    }
  }

  v13 = *(a2 + 4);
  result = (v13 >> 8) & 1;
  if ((v13 & 0x200) != 0)
  {
    if (!result)
    {
      goto LABEL_21;
    }

LABEL_16:
    v14 = a1[12];
    v15 = (a1[63] & 1) == 0;
    v16 = 40;
    if ((a1[63] & 1) == 0)
    {
      v16 = 0;
    }

    *(&gCRABS_Stats + v16) += v14;
    v17 = 105;
    if (!v15)
    {
      v17 = 110;
    }

    a1[v17] += v14;
    goto LABEL_21;
  }

  if (*(a2 + 11))
  {
    goto LABEL_16;
  }

LABEL_21:
  if ((v13 & 0x200) == 0)
  {
    return *(a2 + 11) != 0;
  }

  return result;
}

uint64_t *crabsAddBlockToBackedList(uint64_t *result, int *a2)
{
  v2 = *(a2 + 4);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 0x10) != 0)
    {
      v6 = result[37];
      *(a2 + 6) = v6;
      if (v6)
      {
        v7 = (v6 + 56);
      }

      else
      {
        v7 = result + 38;
      }

      *v7 = a2 + 12;
      v5 = result + 37;
      result[37] = a2;
    }

    else
    {
      if (result[28] <= *a2)
      {
        return addToAscendingBackedBlockList(result, result + 33, a2);
      }

      v3 = result[35];
      *(a2 + 6) = v3;
      if (v3)
      {
        v4 = (v3 + 56);
      }

      else
      {
        v4 = result + 36;
      }

      *v4 = a2 + 12;
      v5 = result + 35;
      result[35] = a2;
    }

    *(a2 + 7) = v5;
  }

  return result;
}

void *addToAscendingBackedBlockList(void *result, uint64_t *a2, int *a3)
{
  v3 = *a2;
  if (!*a2)
  {
    *(a3 + 6) = 0;
    a2[1] = (a3 + 12);
    goto LABEL_5;
  }

  v4 = *a3;
  if (v4 < *v3)
  {
    *(a3 + 6) = v3;
    *(v3 + 56) = a3 + 12;
LABEL_5:
    *a2 = a3;
    *(a3 + 7) = a2;
    goto LABEL_6;
  }

  v5 = a2[1];
  if (v4 <= ***(v5 + 8))
  {
    v6 = *(result[10] + 8 * v4 - 8);
    if (!v6 || (*(v6 + 8) & 0x1000) == 0 || (v7 = *(v6 + 48)) == 0)
    {
      while (v4 > *v3)
      {
        v3 = *(v3 + 48);
        if (!v3)
        {
          goto LABEL_18;
        }
      }

      v7 = v3;
    }

    v8 = *(v7 + 56);
    *(a3 + 7) = v8;
    *(a3 + 6) = v7;
    *v8 = a3;
    *(v7 + 56) = a3 + 12;
LABEL_18:
    ++qword_1EAF18A00;
    ++result[111];
  }

  else
  {
    *(a3 + 6) = 0;
    *(a3 + 7) = v5;
    *v5 = a3;
    a2[1] = (a3 + 12);
  }

LABEL_6:
  if (result + 33 == a2)
  {
    *(a3 + 4) |= 0x1000u;
  }

  return result;
}

uint64_t crabsSyncBlock(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 504);
  if ((v3 & 1) != 0 && *(a1 + 728) == a2)
  {

    return crabsCompleteLazySync(a1, 1);
  }

  else
  {
    v4 = *(a2 + 8);
    if ((v4 & 8) == 0)
    {
      return 0;
    }

    if ((v4 & 0x200) != 0)
    {
      if ((v4 >> 8))
      {
        goto LABEL_7;
      }
    }

    else if (*(a2 + 88))
    {
LABEL_7:
      if (v3)
      {
        if (*(a1 + 135))
        {
          return 4294954755;
        }

        v7 = *(a2 + 4);
        if (crabsDiskBackingIsBusy(a1, 0))
        {
          return 4294954754;
        }

        v5 = FigFileForkWrite();
        if (v7)
        {
          return FigSignalErrorAtGM();
        }
      }

      else
      {
        memcpy(*(a2 + 88), *(*(a2 + 80) + 16), *(a2 + 4));
        v5 = 0;
      }

      *(a2 + 8) &= ~8u;
      return v5;
    }

    return FigSignalErrorAtGM();
  }
}

uint64_t FigCRABSHintActiveRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 1, a3);
}

void FigCRABS_HintActiveRanges(const void *a1, int a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (!crabsEnsureInitialized(a1))
  {
    if (a3 < 1)
    {
      v22 = 1;
      if (a2)
      {
        goto LABEL_31;
      }

LABEL_30:
      if (!v22)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v9 = 0;
      v10 = *(DerivedStorage + 96);
      v11 = 1;
      do
      {
        v12 = (a4 + 16 * v9);
        v13 = *v12;
        if (v10 == 0x4000)
        {
          v14 = v13 >> 14;
        }

        else if (v10 == 0x10000)
        {
          v14 = v13 >> 16;
        }

        else
        {
          v14 = v13 / v10;
        }

        if (v14 < 0 || (v15 = *(DerivedStorage + 88), v14 >= v15))
        {
          FigSignalErrorAtGM();
          goto LABEL_182;
        }

        v16 = v13 + v12[1] - 1;
        v17 = v16 >> 14;
        v18 = v16 >> 16;
        v19 = v16 / v10;
        while (1)
        {
          v20 = v18;
          if (v10 != 0x10000)
          {
            v20 = v17;
            if (v10 != 0x4000)
            {
              v20 = v19;
            }
          }

          if (v14 >= v15 || v14 > v20)
          {
            break;
          }

          if (v14 != *(DerivedStorage + 360))
          {
            v11 = 0;
          }

          ++v14;
        }

        ++v9;
        v22 = v11 != 0;
      }

      while (v9 < a3 && v11);
      if (!a2)
      {
        goto LABEL_30;
      }

LABEL_31:
      if (!FigRetainProxyLockMutex())
      {
        if (!*(DerivedStorage + 104))
        {
          FigSignalErrorAtGM();
          v24 = 0;
          goto LABEL_160;
        }

        v23 = *(DerivedStorage + 760);
        if (v23)
        {
          v24 = CFRetain(v23);
        }

        else
        {
          v24 = 0;
        }

        if (a3 >= 1)
        {
          v92 = v24;
          v25 = 0;
          v93 = a1;
          v94 = DerivedStorage + 8;
          v26 = (DerivedStorage + 248);
          v27 = *(DerivedStorage + 96);
          while (2)
          {
            v28 = (a4 + 16 * v25);
            v29 = *v28;
            if (v27 == 0x4000)
            {
              v30 = v29 >> 14;
            }

            else if (v27 == 0x10000)
            {
              v30 = v29 >> 16;
            }

            else
            {
              v30 = v29 / v27;
            }

LABEL_43:
            v31 = v29 + v28[1] - 1;
            if (v27 == 0x4000)
            {
              v32 = v31 >> 14;
            }

            else if (v27 == 0x10000)
            {
              v32 = v31 >> 16;
            }

            else
            {
              v32 = v31 / v27;
            }

            if (v30 > v32 || v30 >= *(DerivedStorage + 88))
            {
              if (++v25 != a3)
              {
                continue;
              }

              if ((a2 & 2) != 0)
              {
                v24 = v92;
                a1 = v93;
                do
                {
                  OUTLINED_FUNCTION_28_3();
                  if (v83)
                  {
                    v91 = v90;
                  }

                  else if (v86 == 0x10000)
                  {
                    v91 = v88;
                  }

                  else
                  {
                    v91 = v89;
                  }

                  if (v77 > v91)
                  {
                    if (v86 == 0x4000)
                    {
                      v77 = v90;
                    }

                    else if (v86 == 0x10000)
                    {
                      v77 = v88;
                    }

                    else
                    {
                      v77 = v89;
                    }
                  }
                }

                while (v87 != 1);
                v85 = 0;
              }

              else
              {
                v24 = v92;
                a1 = v93;
                if ((a2 & 0x10) == 0)
                {
                  goto LABEL_165;
                }

                do
                {
                  OUTLINED_FUNCTION_28_3();
                  if (v83)
                  {
                    v84 = v82;
                  }

                  else if (v78 == 0x10000)
                  {
                    v84 = v80;
                  }

                  else
                  {
                    v84 = v81;
                  }

                  if (v77 > v84)
                  {
                    if (v78 == 0x4000)
                    {
                      v77 = v82;
                    }

                    else if (v78 == 0x10000)
                    {
                      v77 = v80;
                    }

                    else
                    {
                      v77 = v81;
                    }
                  }
                }

                while (v79 != 1);
LABEL_152:
                v85 = 1;
                if (*(DerivedStorage + 224) <= v77)
                {
LABEL_158:
                  if ((v85 & 1) == 0 && !a3)
                  {
                    goto LABEL_160;
                  }

LABEL_165:
                  crabsStartIdleRead(DerivedStorage);
                  goto LABEL_160;
                }
              }

              goto LABEL_157;
            }

            break;
          }

          v33 = *(*(DerivedStorage + 80) + 8 * v30);
          if (!v33)
          {
            v34 = OUTLINED_FUNCTION_309();
            if (crabsInitBlock(v34, v35) || (v33 = *(*(DerivedStorage + 80) + 8 * v30)) == 0)
            {
LABEL_154:
              OUTLINED_FUNCTION_3_12();
              FigSignalErrorAtGM();
LABEL_155:
              v24 = v92;
              a1 = v93;
              goto LABEL_160;
            }
          }

          if ((a2 & 4) != 0 && *(DerivedStorage + 232) > v30)
          {
            *(DerivedStorage + 232) = v30;
          }

          *(DerivedStorage + 360) = v30;
          if ((a2 & 8) != 0)
          {
            if (*(DerivedStorage + 504))
            {
              if (v33 == *(DerivedStorage + 728) && crabsCompleteLazySync(DerivedStorage, 1))
              {
                goto LABEL_155;
              }

              if (v33 == *(DerivedStorage + 744))
              {
                crabsCompleteLazyPagein(DerivedStorage, 1);
              }
            }

            v36 = *(v33 + 10);
            if (v36 && *(v36 + 24) >= 1)
            {
              goto LABEL_154;
            }

            if ((v33[2] & 4) != 0 || v33[1])
            {
              v72 = OUTLINED_FUNCTION_267_0();
              crabsMarkBlockUnfilled(v72, v73);
            }
          }

          if ((*(DerivedStorage + 504) & 3) != 0)
          {
            if ((a2 & 1) == 0)
            {
              goto LABEL_72;
            }

LABEL_70:
            if ((v33[2] & 0x80) != 0)
            {
              v39 = OUTLINED_FUNCTION_2_17();
              crabsMakeBackingNonvolatile(v39, v33, v40);
            }
          }

          else
          {
            v37 = OUTLINED_FUNCTION_267_0();
            crabsCleanupBlockIfPurged(v37, v38);
            if (a2)
            {
              goto LABEL_70;
            }
          }

LABEL_72:
          v41 = *(v33 + 4);
          if ((v41 & 1) == 0 && ((v41 & 4) == 0 || (*(DerivedStorage + 504) & 1) != 0 && !*(v33 + 10)))
          {
            if ((v41 & 0x80) != 0)
            {
              v42 = OUTLINED_FUNCTION_2_17();
              crabsMakeBackingNonvolatile(v42, v33, v43);
              v41 = *(v33 + 4);
            }

            if ((v41 & 0x200) != 0)
            {
              if (((v41 >> 8) & 1) == 0)
              {
                goto LABEL_93;
              }
            }

            else if (!*(v33 + 11))
            {
              goto LABEL_93;
            }

            if ((v41 & 0x10) != 0)
            {
              v44 = 0;
              v45 = 296;
            }

            else
            {
              v44 = *(DerivedStorage + 224) <= *v33;
              v45 = 280;
              if (*(DerivedStorage + 224) <= *v33)
              {
                v45 = 264;
              }
            }

            v46 = *(v33 + 6);
            v47 = *(v33 + 7);
            if (*(v33 + 3) != 0)
            {
              v48 = (v94 + v45);
              if (v46)
              {
                v48 = (v46 + 56);
              }

              *v48 = v47;
              *v47 = v46;
              *(v33 + 6) = 0;
              *(v33 + 7) = 0;
              if (v44)
              {
                v41 &= ~0x1000u;
              }
            }

LABEL_93:
            v49 = v41 & 0xFFFFF7FF;
            v50 = v41 | ~(v41 << 11) & 0x800;
            if ((a2 & 0x10) == 0)
            {
              v50 = v49;
            }

            v41 = v50 | 1;
            *(v33 + 4) = v41;
            v51 = *v26;
            if (*v26)
            {
              v52 = *v33;
              if (v52 < *v51)
              {
                *(v33 + 2) = v51;
                *(v51 + 3) = v33 + 4;
                goto LABEL_99;
              }

              v63 = *(DerivedStorage + 256);
              if (v52 <= ***(v63 + 8))
              {
                v74 = *(*(DerivedStorage + 80) + 8 * v52 - 8);
                if (!v74 || (*(v74 + 8) & 1) == 0 || (v75 = *(v74 + 16)) == 0)
                {
                  while (v52 > *v51)
                  {
                    v51 = *(v51 + 2);
                    if (!v51)
                    {
                      goto LABEL_132;
                    }
                  }

                  v75 = v51;
                }

                v76 = *(v75 + 3);
                *(v33 + 3) = v76;
                *(v33 + 2) = v75;
                *v76 = v33;
                *(v75 + 3) = v33 + 4;
LABEL_132:
                ++qword_1EAF18A00;
                ++*(DerivedStorage + 888);
              }

              else
              {
                *(v33 + 2) = 0;
                *(v33 + 3) = v63;
                *v63 = v33;
                *(DerivedStorage + 256) = v33 + 4;
              }
            }

            else
            {
              *(v33 + 2) = 0;
              *(DerivedStorage + 256) = v33 + 4;
LABEL_99:
              *v26 = v33;
              *(v33 + 3) = v26;
            }
          }

          if ((a2 & 1) == 0 || (v41 & 0x10) != 0)
          {
            LOBYTE(v55) = v41;
          }

          else
          {
            if ((v41 & 0x80) != 0)
            {
              v53 = OUTLINED_FUNCTION_2_17();
              crabsMakeBackingNonvolatile(v53, v33, v54);
              v41 = *(v33 + 4);
            }

            v55 = v41 | 0x10;
            *(v33 + 4) = v41 | 0x10;
            if (v41)
            {
              goto LABEL_109;
            }

            if ((v41 & 0x200) == 0)
            {
              OUTLINED_FUNCTION_400_1();
              if (!v56)
              {
                goto LABEL_109;
              }

LABEL_115:
              v64 = *(v33 + 6);
              v65 = *(v33 + 7);
              if (*(v33 + 3) != 0)
              {
                v66 = *(DerivedStorage + 224);
                v67 = *v33;
                v68 = 280;
                if (v66 <= v67)
                {
                  v68 = 264;
                }

                v69 = (v94 + v68);
                if (v64)
                {
                  v69 = (v64 + 56);
                }

                *v69 = v65;
                *v65 = v64;
                *(v33 + 6) = 0;
                *(v33 + 7) = 0;
                if (v66 <= v67)
                {
                  *(v33 + 4) = v55 & 0xEFFE;
                }
              }

              v70 = OUTLINED_FUNCTION_267_0();
              crabsAddBlockToBackedList(v70, v71);
              v55 = *(v33 + 4);
              goto LABEL_109;
            }

            if ((v41 >> 8))
            {
              goto LABEL_115;
            }
          }

LABEL_109:
          if ((v55 & 0x20) != 0)
          {
            v57 = OUTLINED_FUNCTION_267_0();
            removeFromWorkingSet(v57, v58);
            OUTLINED_FUNCTION_267_0();
            OUTLINED_FUNCTION_29_2();
            addToWorkingSet(v59, v60, v61, v62);
          }

          ++v30;
          v29 = *v28;
          v27 = *(DerivedStorage + 96);
          goto LABEL_43;
        }

        if ((a2 & 2) == 0)
        {
          if ((a2 & 0x10) != 0)
          {
            v77 = *(DerivedStorage + 88);
            goto LABEL_152;
          }

          goto LABEL_165;
        }

        v85 = 0;
        v77 = *(DerivedStorage + 88);
LABEL_157:
        if (!crabsDoJump(DerivedStorage, v77))
        {
          goto LABEL_158;
        }

LABEL_160:
        crabsRetainProxyUnlockWithActions();
        if (a1)
        {
          goto LABEL_161;
        }

        goto LABEL_162;
      }
    }
  }

LABEL_182:
  v24 = 0;
  if (a1)
  {
LABEL_161:
    CFRelease(a1);
  }

LABEL_162:
  if (v24)
  {
    CFRelease(v24);
  }

  OUTLINED_FUNCTION_207_0();
}

void crabsCleanupBlockIfPurged(uint64_t a1, int *a2)
{
  if ((a2[2] & 0x80) != 0)
  {
    v4 = *(a2 + 11);
    v6 = 0;
    if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v4, 1, &v6))
    {
      v5 = 0;
    }

    else
    {
      v5 = (v6 & 3) == 2;
    }

    if (v5)
    {
      crabsRemovePurgedBacking(a1, a2, *(a1 + 224) <= *a2);
    }
  }
}

uint64_t fpSupport_copyFormatDescription(uint64_t a1, void *a2)
{
  theArray = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = v4(FigBaseObject, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  v6 = theArray;
  if (v5)
  {
    goto LABEL_8;
  }

  if (!theArray)
  {
    return 4294954513;
  }

  Count = CFArrayGetCount(theArray);
  v6 = theArray;
  if (Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    v5 = 0;
    *a2 = ValueAtIndex;
    v6 = theArray;
LABEL_8:
    if (!v6)
    {
      return v5;
    }

    goto LABEL_13;
  }

  v5 = 4294954513;
  if (theArray)
  {
LABEL_13:
    CFRelease(v6);
  }

  return v5;
}

void crabsUnhint(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a2 + 8) = v4 & 0xF7FE;
  if (*(a1 + 360) == *a2)
  {
    *(a1 + 360) = *(a1 + 88);
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (v5)
  {
    v7 = (v5 + 24);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = (a1 + 256);
  }

  *v7 = v6;
  *v6 = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
LABEL_8:
  if ((v4 & 0x200) != 0)
  {
    if (((v4 >> 8) & 1) == 0)
    {
      return;
    }
  }

  else if (!*(a2 + 88))
  {
    return;
  }

  crabsAddBlockToBackedList(a1, a2);
  if ((*(a1 + 504) & 3) == 0 && !*(a2 + 80) && (*(a2 + 8) & 0x10) == 0)
  {

    crabsMakeBlockVolatileRelativeToAnchor(a1, a2);
  }
}

uint64_t crabsSelectNextFill(uint64_t a1, int **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 504) & 3) == 0)
  {
    crabsPurgeCompletionSweep(a1);
  }

  *a2 = 0;
  if (*(a1 + 131))
  {
    return 0;
  }

  v5 = *(a1 + 88);
  if (v5 < 1)
  {
    v6 = 0;
LABEL_26:
    if (*(a1 + 56) != -1 && *(a1 + 80))
    {
      *(a1 + 131) = 1;
      if (v6 == *(a1 + 88))
      {
        *(a1 + 130) = 1;
      }

      if (dword_1EAF16BD0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = (v6 + *(a1 + 240)) % v5;
    v8 = *(*(a1 + 80) + 8 * v7);
    if (!v8 && (crabsInitBlock(a1, v7) || (v8 = *(*(a1 + 80) + 8 * v7)) == 0))
    {
      crabsSelectNextFill_cold_1(v14);
      return v14[0];
    }

    if ((*(a1 + 504) & 3) == 0 && *(a1 + 224) > *v8)
    {
      crabsCleanupBlockIfPurged(a1, v8);
    }

    if ((v8[2] & 4) == 0)
    {
      v9 = *v8;
      if (*(a1 + 664) != 1)
      {
        break;
      }

      v10 = *(a1 + 96);
      v11 = *(a1 + 632);
      if (v11 > v10 * v9 + v8[1])
      {
        break;
      }

      v12 = v10 * v9 + v10;
      if (*(a1 + 640) + v11 < v12 || *(a1 + 648) + v11 >= v12)
      {
        break;
      }
    }

    ++v6;
    v5 = *(a1 + 88);
    if (v6 >= v5)
    {
      goto LABEL_26;
    }
  }

  if (*(a1 + 224) > v9 && !*(a1 + 132))
  {
    goto LABEL_26;
  }

  *(a1 + 240) = v7;
  if (!*(v8 + 10))
  {
    crabsReadyBlockForLoad(a1, v8, 0);
    if (!*(v8 + 10))
    {
      return 4294954420;
    }
  }

  result = 0;
  *a2 = v8;
  return result;
}

uint64_t crabsSwipeUnusedWorking(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 336); ; i = *(a1 + 336))
  {
    v5 = *(i + 8);
    v6 = *v5;
    if (!*v5)
    {
      break;
    }

    removeFromWorkingSet(a1, *v5);
    if ((*(v6 + 8) & 8) == 0 || !crabsBlockIsAKeeper(a1, v6))
    {
      v8 = 0;
      goto LABEL_9;
    }

    addToWorkingSet(a1, v6, 1, 1);
  }

  flushPendingReleaseSet(a1);
  v7 = *(*(a1 + 320) + 8);
  v6 = *v7;
  if (*v7)
  {
    removeFromWorkingSet(a1, *v7);
    v8 = 1;
LABEL_9:
    if ((*(a1 + 504) & 1) != 0 && v6 == *(a1 + 728))
    {
      v9 = crabsCompleteLazySync(a1, 0);
      if (v9)
      {
        v20 = v9;
        addToWorkingSet(a1, v6, 1, 1);
        return v20;
      }
    }

    v10 = *(v6 + 8);
    if ((v10 & 8) == 0)
    {
LABEL_33:
      v17 = *(v6 + 80);
      *(a2 + 80) = v17;
      *v17 = a2;
      *(v6 + 80) = 0;
      if ((*(a1 + 504) & 3) == 0)
      {
        v18 = *(v6 + 8);
        if ((v18 & 0x200) != 0)
        {
          v19 = (v18 >> 8) & 1;
        }

        else
        {
          v19 = *(v6 + 88) != 0;
        }

        if ((v18 & 0x11) == 0)
        {
          if (v19)
          {
            crabsMakeBlockVolatileRelativeToAnchor(a1, v6);
          }
        }
      }

      crabsCleanupOrphan(a1, v6);
      addToWorkingSet(a1, a2, 1, 1);
      return 0;
    }

    if ((v10 & 0x200) != 0)
    {
      v11 = (v10 >> 8) & 1;
    }

    else
    {
      v11 = *(v6 + 88) != 0;
    }

    if ((v8 ^ 1 | v11))
    {
      v13 = 0;
      if ((v10 & 0x200) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = crabsAllocBacking(a1, v6);
      v10 = *(v6 + 8);
      if ((v10 & 0x200) != 0)
      {
LABEL_21:
        v14 = (v10 >> 8) & 1;
LABEL_24:
        if (((v8 ^ 1 | v14) & 1) == 0 && crabsBlockIsAKeeper(a1, v6))
        {
          v15 = *(a2 + 8);
          *(a2 + 8) = v15 | 0x400;
          v13 = crabsSwipeBacking(a1, v6, 0) == 0;
          *(a2 + 8) = *(a2 + 8) & 0xFBFF | v15 & 0x400;
          v10 = *(v6 + 8);
        }

        if ((v10 & 0x200) != 0)
        {
          if ((v10 >> 8))
          {
LABEL_29:
            v16 = crabsSyncBlock(a1, v6) == 0;
            if (!v13)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        else if (*(v6 + 88))
        {
          goto LABEL_29;
        }

        v16 = 1;
        if (!v13)
        {
LABEL_31:
          if (!v16)
          {
            crabsMarkBlockUnfilled(a1, v6);
          }

          goto LABEL_33;
        }

LABEL_30:
        crabsAddBlockToBackedList(a1, v6);
        goto LABEL_31;
      }
    }

    v14 = *(v6 + 88) != 0;
    goto LABEL_24;
  }

  return FigSignalErrorAtGM();
}

void crabsMakeBlockVolatileRelativeToAnchor(void *a1, int *a2)
{
  if (!*(a2 + 11))
  {
    return;
  }

  v2 = a2;
  if ((a2[2] & 0x91) != 0)
  {
    return;
  }

  v3 = a1;
  v4 = a1[28];
  v5 = *a2;
  if (*(a1 + 133))
  {
    if (v4 <= v5 && a1[59] + v4 > v5)
    {
      return;
    }
  }

  else if (v4 <= v5)
  {
    return;
  }

  if (v4 > v5)
  {
    if (crabsChangeBlockVolatility(a1, a2, 2, 1) && (v2[2] & 0x80) == 0)
    {
      v6 = v3[12];
      qword_1EAF189E8 += v6;
      v3[108] += v6;
    }

    return;
  }

  v7 = a1[53];
  if (v7 < v5)
  {
    v8 = a1[54];
    if (v8 > v5)
    {
      v9 = 0;
      v10 = 0;
      v11 = a1[10];
      v12 = *(v11 + 8 * v7);
      v13 = *(v11 + 8 * v8);
      v14 = 16;
      v15 = v12;
      v16 = v13;
      while (1)
      {
        if (v10)
        {
LABEL_24:
          if (v9 == 1)
          {
            if (*v12 < v5)
            {
              do
              {
                v17 = *(v12 + 6);
                if ((v12[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v12, 3, 1))
                {
                  crabsRemovePurgedBacking(v3, v12, 1);
                }

                v12 = v17;
              }

              while (*v17 < *v2);
            }

            v18 = crabsChangeBlockVolatility(v3, v2, 0, 1);
            v19 = **(*(v2 + 7) + 8);
            while (v19 && v7 <= *v19)
            {
              v20 = v19;
              v19 = **(*(v19 + 7) + 8);
              if ((v20[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v20, 0, 1))
              {
                crabsRemovePurgedBacking(v3, v20, 1);
              }
            }

            goto LABEL_77;
          }

          if (*v13 > v5)
          {
            do
            {
              v36 = **(*(v13 + 7) + 8);
              if ((v13[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v13, 1, 1))
              {
                crabsRemovePurgedBacking(v3, v13, 1);
              }

              v13 = v36;
            }

            while (*v36 > *v2);
          }

LABEL_74:
          a1 = v3;
          a2 = v2;
          v34 = 1;
LABEL_75:
          v35 = 1;
          goto LABEL_76;
        }

        v15 = *(v15 + 6);
        v16 = **(*(v16 + 7) + 8);
        if (v15 == a2)
        {
          break;
        }

        if (v16 == a2)
        {
          v9 = 2;
          goto LABEL_22;
        }

        v10 = 0;
LABEL_23:
        if (!--v14)
        {
          goto LABEL_24;
        }
      }

      v9 = 1;
LABEL_22:
      v10 = v9;
      goto LABEL_23;
    }
  }

  v21 = a1[55];
  if (v21 >= v5 || (v22 = a1[56], v22 <= v5))
  {
    if (v7 > v5)
    {
      v34 = 0;
      goto LABEL_75;
    }

    if (a1[56] >= v5)
    {
      goto LABEL_74;
    }

    v34 = 1;
    v35 = 2;
LABEL_76:
    v18 = crabsChangeBlockVolatility(a1, a2, v34, v35);
    goto LABEL_77;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1[10];
  v26 = *(v25 + 8 * v21);
  v27 = *(v25 + 8 * v22);
  v28 = 16;
  v29 = v26;
  v30 = v27;
  while (!v24)
  {
    v29 = *(v29 + 6);
    v30 = **(*(v30 + 7) + 8);
    if (v29 == a2)
    {
      v23 = 1;
LABEL_45:
      v24 = v23;
      goto LABEL_46;
    }

    if (v30 == a2)
    {
      v23 = 2;
      goto LABEL_45;
    }

    v24 = 0;
LABEL_46:
    if (!--v28)
    {
      break;
    }
  }

  if (v23 != 2)
  {
    if (*v26 < v5)
    {
      do
      {
        v37 = *(v26 + 6);
        if ((v26[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v26, 0, 2))
        {
          crabsRemovePurgedBacking(v3, v26, 1);
        }

        v26 = v37;
      }

      while (*v37 < *v2);
    }

    goto LABEL_74;
  }

  if (*v27 > v5)
  {
    do
    {
      v31 = **(*(v27 + 7) + 8);
      if ((v27[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v27, 3, 1))
      {
        crabsRemovePurgedBacking(v3, v27, 1);
      }

      v27 = v31;
    }

    while (*v31 > *v2);
  }

  v18 = crabsChangeBlockVolatility(v3, v2, 1, 2);
  v32 = *(v2 + 6);
  while (v32 && v22 >= *v32)
  {
    v33 = v32;
    v32 = *(v32 + 6);
    if ((v33[2] & 0x80) != 0 && !crabsChangeBlockVolatility(v3, v33, 1, 2))
    {
      crabsRemovePurgedBacking(v3, v33, 1);
    }
  }

LABEL_77:
  if (v18)
  {
    *(v2 + 4) &= ~0x80u;
    crabsPurgeCompletionSweep(v3);
    *(v2 + 4) |= 0x80u;
  }
}

void crabsCleanupOrphan(void *a1, uint64_t a2)
{
  if (!*(a2 + 80))
  {
    v2 = *(a2 + 8);
    if ((v2 & 0x200) != 0)
    {
      v3 = (v2 >> 8) & 1;
      if ((v2 & 0x400) != 0)
      {
        return;
      }
    }

    else
    {
      LOBYTE(v3) = *(a2 + 88) != 0;
      if ((v2 & 0x400) != 0)
      {
        return;
      }
    }

    if ((v3 & 1) == 0)
    {
      crabsCleanupOrphan_cold_1(a1, a2, (a2 + 8));
    }
  }
}

void crabsPageInBlock(uint64_t a1, int *a2)
{
  v4 = *(a1 + 504);
  if ((v4 & 1) != 0 && *(a1 + 744) == a2)
  {

    crabsCompleteLazyPagein(a1, 1);
  }

  else
  {
    v5 = *(a2 + 10);
    if (v5)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x200) != 0)
      {
        v7 = (v6 >> 8) & 1;
      }

      else
      {
        v7 = *(a2 + 11) != 0;
      }

      v8 = a2[1];
      if (v7)
      {
        if (v8)
        {
          if (v4)
          {
            if (crabsDiskBackingIsBusy(a1, 0))
            {
              crabsMarkBlockUnbacked(a1, a2, *(a1 + 224) <= *a2);
            }

            else
            {
              FigFileForkRead();
              crabsMarkBlockUnbacked(a1, a2, *(a1 + 224) <= *a2);
              __error();
              FigSignalErrorAtGM();
            }
          }

          else
          {
            memcpy(*(v5 + 16), *(a2 + 11), a2[1]);
            if ((~*(a2 + 4) & 5) == 0)
            {
              crabsUnhint(a1, a2);
            }
          }
        }
      }

      else if (v8)
      {

        FigSignalErrorAtGM();
      }
    }

    else
    {
      crabsPageInBlock_cold_1();
    }
  }
}

void crabsReleaseWorkingBlock(CFAllocatorRef *a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2)
  {
    CFAllocatorDeallocate(*a1, *(v2 + 16));
    free(*(a2 + 80));
    *(a2 + 80) = 0;
  }
}

uint64_t QTMovieCacheMemDeallocateCallBack(void *key, uint64_t *a2)
{
  valuePtr = 0;
  v4 = a2[1];
  if (v4 && (Value = CFDictionaryGetValue(v4, key)) != 0)
  {
    CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
    v6 = valuePtr;
  }

  else
  {
    v6 = *a2;
    valuePtr = *a2;
  }

  result = MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], key, v6);
  a2[2] -= valuePtr;
  return result;
}

uint64_t itemfig_CopyTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFAllocator *a4, CFDictionaryRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v48 = 0;
  valuePtr = 0;
  v46 = 0;
  if (*DerivedStorage || !a5)
  {

    return FigSignalErrorAtGM();
  }

  v12 = DerivedStorage;
  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v13)
  {
    itemfig_CopyTrackProperty_cold_1(v45);
    v21 = LODWORD(v45[0]);
    goto LABEL_23;
  }

  TrackStorage = itemfig_assureBasicsReadyForInspection(a1);
  if (TrackStorage)
  {
    goto LABEL_36;
  }

  v15 = *(v12 + 1008);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v16)
  {
    goto LABEL_22;
  }

  TrackStorage = v16(v15, a2, &v48, &valuePtr);
  if (TrackStorage)
  {
LABEL_36:
    v21 = TrackStorage;
    goto LABEL_23;
  }

  CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a3, @"MediaType"))
  {
    if (CFEqual(a3, @"FormatDescriptionArray"))
    {
      FigBaseObject = FigTrackReaderGetFigBaseObject(v48);
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v23)
      {
        v24 = kFigTrackProperty_FormatDescriptionArray;
LABEL_21:
        TrackStorage = v23(FigBaseObject, *v24, a4, a5);
        goto LABEL_36;
      }

      goto LABEL_22;
    }

    if (CFEqual(a3, @"Dimensions"))
    {
      FigBaseObject = FigTrackReaderGetFigBaseObject(v48);
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v23)
      {
        v24 = kFigTrackProperty_Dimensions;
        goto LABEL_21;
      }

LABEL_22:
      v21 = 4294954514;
      goto LABEL_23;
    }

    if (CFEqual(a3, @"EstimatedDataRate"))
    {
      v25 = v48;
      v26 = kFigTrackProperty_EstimatedDataRate;
LABEL_35:
      v27 = *v26;
      v28 = FigTrackReaderGetFigBaseObject(v25);
      TrackStorage = CMBaseObjectCopyProperty(v28, v27, a4, a5);
      goto LABEL_36;
    }

    if (CFEqual(a3, @"NominalFrameRate"))
    {
      v25 = v48;
      v26 = kFigTrackProperty_NominalFrameRate;
      goto LABEL_35;
    }

    if (CFEqual(a3, @"CurrentVideoFrameRate"))
    {
      TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
      if (TrackStorage)
      {
        goto LABEL_36;
      }

      FigSimpleMutexLock();
      if (valuePtr != 1986618469)
      {
        goto LABEL_114;
      }

      v36 = *(v46 + 16);
      if (!v36)
      {
        goto LABEL_114;
      }

      v37 = kFigRenderPipelineProperty_CurrentVideoFrameRate;
    }

    else
    {
      if (CFEqual(a3, @"Matrix"))
      {
        v25 = v48;
        v26 = kFigTrackProperty_Matrix;
        goto LABEL_35;
      }

      if (CFEqual(a3, @"FormatDetails"))
      {
        TrackStorage = itemfig_createTrackFormatDetailsDictionary(v12, v48, a4, a5);
        goto LABEL_36;
      }

      if (CFEqual(a3, @"HasMultipleNonEmptyEdits"))
      {
        if (FigTrackReaderImplementsGetTrackEditCount() && (TrackEditCount = FigTrackReaderGetTrackEditCount(v48), TrackEditCount >= 1))
        {
          v30 = TrackEditCount;
          v31 = 0;
          v32 = 0;
          v33 = MEMORY[0x1E695E4D0];
          v34 = MEMORY[0x1E695E4C0];
          do
          {
            memset(v45, 0, sizeof(v45));
            if (!FigTrackReaderGetTrackEditWithIndex(v48, v31, v45) && (BYTE12(v45[0]) & 1) != 0)
            {
              if (v32 > 0)
              {
                goto LABEL_50;
              }

              ++v32;
            }

            ++v31;
          }

          while (v30 != v31);
          v33 = v34;
        }

        else
        {
          v33 = MEMORY[0x1E695E4C0];
        }

LABEL_50:
        v35 = *v33;
        *a5 = *v33;
        CFRetain(v35);
        v21 = 0;
        goto LABEL_23;
      }

      if (CFEqual(a3, @"AudioCurves"))
      {
        TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
        if (TrackStorage)
        {
          goto LABEL_36;
        }

        if (valuePtr == 1936684398)
        {
          Copy = *(v46 + 80);
          if (!Copy)
          {
            goto LABEL_13;
          }

          goto LABEL_141;
        }

        goto LABEL_142;
      }

      if (CFEqual(a3, @"AudioProcessingUnits"))
      {
        TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
        if (TrackStorage)
        {
          goto LABEL_36;
        }

        if (valuePtr == 1936684398)
        {
          Copy = *(v46 + 96);
          if (!Copy)
          {
            goto LABEL_13;
          }

          goto LABEL_141;
        }

        goto LABEL_142;
      }

      if (CFEqual(a3, @"Enabled"))
      {
        v21 = itemfig_getTrackStorage(a1, a2, &v46);
        if (v21)
        {
          goto LABEL_23;
        }

        if (*(v46 + 8))
        {
          v41 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v41 = MEMORY[0x1E695E4C0];
        }

        Copy = CFRetain(*v41);
        goto LABEL_14;
      }

      if (CFEqual(a3, @"VideoFieldMode"))
      {
        TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
        if (TrackStorage)
        {
          goto LABEL_36;
        }

        if (valuePtr == 1986618469)
        {
          Copy = *(v46 + 24);
          if (!Copy)
          {
            goto LABEL_13;
          }

          goto LABEL_141;
        }

        goto LABEL_142;
      }

      if (CFEqual(a3, @"AudioProcessingTap"))
      {
        TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
        if (TrackStorage)
        {
          goto LABEL_36;
        }

        if (valuePtr == 1936684398)
        {
          Copy = *(v46 + 88);
          if (!Copy)
          {
            goto LABEL_13;
          }

          goto LABEL_141;
        }

        goto LABEL_142;
      }

      if (CFEqual(a3, @"LoudnessInfo"))
      {
        TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
        if (TrackStorage)
        {
          goto LABEL_36;
        }

        if (valuePtr == 1936684398)
        {
          Copy = *(v46 + 104);
          if (!Copy)
          {
            goto LABEL_13;
          }

          goto LABEL_141;
        }

        goto LABEL_142;
      }

      if (CFEqual(a3, @"EffectiveLoudnessInfo"))
      {
        TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
        if (TrackStorage)
        {
          goto LABEL_36;
        }

        if (valuePtr == 1936684398)
        {
          TrackStorage = itemfig_copyCombinedLoudnessInfoDictionary(a1, a2, a5);
          goto LABEL_36;
        }

        goto LABEL_142;
      }

      if (!CFEqual(a3, @"EffectiveEQPreset"))
      {
        if (CFEqual(a3, @"WillTrimShortDurationAudioSamples"))
        {
          TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
          if (TrackStorage)
          {
            goto LABEL_36;
          }

          FigSimpleMutexLock();
          if (valuePtr == 1936684398)
          {
            v36 = *(v46 + 16);
            if (!v36)
            {
              v44 = *MEMORY[0x1E695E4D0];
              if (*MEMORY[0x1E695E4D0])
              {
                v44 = CFRetain(v44);
              }

              v40 = 0;
              *a5 = v44;
              goto LABEL_115;
            }

            v37 = kFigAudioRenderPipelineProperty_WillTrimShortDurationSamples;
            goto LABEL_72;
          }
        }

        else
        {
          if (!CFEqual(a3, @"EmploysHardwarePassthrough"))
          {
            if (!CFEqual(a3, @"TimePitchAlgorithm"))
            {
              if (CFEqual(a3, @"SweepFilterConfiguration"))
              {
                TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
                if (TrackStorage)
                {
                  goto LABEL_36;
                }

                if (valuePtr != 1936684398)
                {
                  goto LABEL_142;
                }

                v42 = *(v46 + 128);
                if (!v42)
                {
                  Copy = CFDictionaryCreate(a4, &kFigPlaybackItemTrackSweepFilterConfigurationKey_Enabled, MEMORY[0x1E695E4C0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  goto LABEL_13;
                }
              }

              else
              {
                if (CFEqual(a3, @"SweepFilterSweepValue"))
                {
                  TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
                  if (TrackStorage)
                  {
                    goto LABEL_36;
                  }

                  if (valuePtr == 1936684398)
                  {
                    v17 = *MEMORY[0x1E695E480];
                    p_valuePtr = (v46 + 136);
                    v19 = kCFNumberFloat32Type;
                    goto LABEL_12;
                  }

                  goto LABEL_142;
                }

                if (CFEqual(a3, @"CinematicAudioParameters"))
                {
                  TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
                  if (TrackStorage)
                  {
                    goto LABEL_36;
                  }

                  if (valuePtr == 1936684398)
                  {
                    v43 = *(v46 + 152);
                    if (v43)
                    {
                      Copy = CFDataCreateCopy(*MEMORY[0x1E695E480], v43);
                    }

                    else
                    {
                      Copy = 0;
                    }

                    goto LABEL_13;
                  }

                  goto LABEL_142;
                }

                if (!CFEqual(a3, @"VideoEnhancementFilterOptions"))
                {
                  if (!CFEqual(a3, @"DisableColorMatching"))
                  {
                    v21 = 4294954512;
                    goto LABEL_23;
                  }

                  TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
                  if (TrackStorage)
                  {
                    goto LABEL_36;
                  }

                  if (valuePtr == 1986618469)
                  {
                    Copy = *(v46 + 64);
                    if (!Copy)
                    {
                      goto LABEL_13;
                    }

LABEL_141:
                    Copy = CFRetain(Copy);
                    goto LABEL_13;
                  }

                  goto LABEL_142;
                }

                TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
                if (TrackStorage)
                {
                  goto LABEL_36;
                }

                if (valuePtr != 1986618469)
                {
                  goto LABEL_142;
                }

                v42 = *(v46 + 56);
                if (!v42)
                {
                  v21 = 0;
                  *a5 = 0;
                  goto LABEL_23;
                }
              }

              Copy = CFDictionaryCreateCopy(a4, v42);
              goto LABEL_13;
            }

            TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
            if (TrackStorage)
            {
              goto LABEL_36;
            }

            if (valuePtr == 1936684398)
            {
              Copy = *(v46 + 112);
              if (!Copy)
              {
                goto LABEL_13;
              }

              goto LABEL_141;
            }

LABEL_142:
            TrackStorage = FigSignalErrorAtGM();
            goto LABEL_36;
          }

          TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
          if (TrackStorage)
          {
            goto LABEL_36;
          }

          FigSimpleMutexLock();
          if (valuePtr == 1936684398)
          {
            v36 = *(v46 + 16);
            if (v36)
            {
              v37 = kFigAudioRenderPipelineProperty_EmploysHardwarePassthrough;
              goto LABEL_72;
            }
          }
        }

LABEL_114:
        v40 = 4294954513;
        goto LABEL_115;
      }

      TrackStorage = itemfig_getTrackStorage(a1, a2, &v46);
      if (TrackStorage)
      {
        goto LABEL_36;
      }

      FigSimpleMutexLock();
      if (valuePtr != 1936684398)
      {
        goto LABEL_114;
      }

      v36 = *(v46 + 16);
      if (!v36)
      {
        goto LABEL_114;
      }

      v37 = kFigAudioRenderPipelineProperty_EQPreset;
    }

LABEL_72:
    v38 = *v37;
    v39 = FigRenderPipelineGetFigBaseObject(v36);
    v40 = CMBaseObjectCopyProperty(v39, v38, a4, a5);
LABEL_115:
    FigSimpleMutexUnlock();
    v21 = v40;
    goto LABEL_23;
  }

  v17 = *MEMORY[0x1E695E480];
  p_valuePtr = &valuePtr;
  v19 = kCFNumberSInt32Type;
LABEL_12:
  Copy = CFNumberCreate(v17, v19, p_valuePtr);
LABEL_13:
  v21 = 0;
LABEL_14:
  *a5 = Copy;
LABEL_23:
  if (v48)
  {
    CFRelease(v48);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v21;
}

CFArrayRef FigMatrixToCFArray(const __CFAllocator *a1, char *valuePtr)
{
  v4 = 0;
  v5 = 0;
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v6 = *MEMORY[0x1E695E480];
  do
  {
    v7 = valuePtr;
    v8 = 3;
    do
    {
      v9 = v4;
      v10 = CFNumberCreate(v6, kCFNumberFloat32Type, v7);
      v4 = v9 + 1;
      *(v15 + v9) = v10;
      v7 += 4;
      --v8;
    }

    while (v8);
    ++v5;
    valuePtr += 12;
  }

  while (v5 != 3);
  v11 = CFArrayCreate(a1, v15, 9, MEMORY[0x1E695E9C0]);
  for (i = 0; i != 72; i += 8)
  {
    v13 = *(v15 + i);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  return v11;
}

uint64_t FPSupport_CreateDestinationPixelBufferAttributes(int a1, int a2, char *valuePtr, int a4, char a5, int a6, int a7, int a8, int a9, CFDictionaryRef *a10)
{
  v10 = a8;
  v12 = a6;
  v13 = a5;
  v14 = valuePtr;
  v61 = *MEMORY[0x1E69E9840];
  v39 = a2;
  valuePtra = a1;
  v37 = a8;
  v38 = a7;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  *keys = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = &v41[1];
  v18 = &keys[1];
  *v41 = 0u;
  v42 = 0u;
  v19 = MEMORY[0x1E695E480];
  if (a4 == 1)
  {
    keys[0] = *MEMORY[0x1E6966130];
    v41[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
    v20 = 1;
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a4 < 2)
  {
    v20 = 0;
    v18 = keys;
    v17 = v41;
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v21 = 0;
  keys[0] = *MEMORY[0x1E6966130];
  v22 = *MEMORY[0x1E695E480];
  v59 = 0uLL;
  v60 = 0uLL;
  v57 = 0uLL;
  v58 = 0uLL;
  v55 = 0uLL;
  v56 = 0uLL;
  v53 = 0uLL;
  v54 = 0uLL;
  *values = 0uLL;
  v52 = 0uLL;
  v23 = a4;
  v24 = 8 * a4;
  do
  {
    values[v21 / 8] = CFNumberCreate(v22, kCFNumberSInt32Type, v14);
    v21 += 8;
    v14 += 4;
  }

  while (v24 != v21);
  v25 = CFArrayCreate(v22, values, v23, MEMORY[0x1E695E9C0]);
  v26 = 0;
  v27 = 8 * v23;
  v10 = a8;
  v17 = &v41[1];
  do
  {
    v28 = values[v26 / 8];
    if (v28)
    {
      CFRelease(v28);
    }

    v26 += 8;
  }

  while (v27 != v26);
  v41[0] = v25;
  v20 = 1;
  v13 = a5;
  v12 = a6;
  v19 = MEMORY[0x1E695E480];
  if (a1)
  {
LABEL_14:
    *v18 = *MEMORY[0x1E6966208];
    *v17 = CFNumberCreate(*v19, kCFNumberIntType, &valuePtra);
    ++v20;
  }

LABEL_15:
  if (a2)
  {
    keys[v20] = *MEMORY[0x1E69660B8];
    v41[v20++] = CFNumberCreate(*v19, kCFNumberIntType, &v39);
  }

  if (v13)
  {
    keys[v20] = *MEMORY[0x1E6966110];
    v41[v20++] = CFRetain(*MEMORY[0x1E695E4D0]);
  }

  if (a7 >= 2)
  {
    keys[v20] = *MEMORY[0x1E6966140];
    v41[v20++] = CFNumberCreate(*v19, kCFNumberSInt32Type, &v38);
  }

  if (v10 >= 2)
  {
    keys[v20] = *MEMORY[0x1E6966020];
    v41[v20++] = CFNumberCreate(*v19, kCFNumberSInt32Type, &v37);
  }

  if ((v13 & 2) != 0)
  {
    keys[v20] = *MEMORY[0x1E69660F0];
    v41[v20++] = *MEMORY[0x1E695E4D0];
  }

  v29 = CFDictionaryCreate(*v19, keys, v41, v20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v12)
  {
    values[0] = 0;
    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    if (PixelBufferAttributesWithIOSurfaceSupport)
    {
      v31 = PixelBufferAttributesWithIOSurfaceSupport;
      if (!v20)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    if (v29)
    {
      CFRelease(v29);
    }

    v29 = values[0];
  }

  v31 = 0;
  *a10 = v29;
  v29 = 0;
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_31:
  v32 = v41;
  do
  {
    if (*v32)
    {
      CFRelease(*v32);
    }

    ++v32;
    --v20;
  }

  while (v20);
LABEL_35:
  if (v29)
  {
    CFRelease(v29);
  }

  return v31;
}

void FPSupport_EnsureCAImageQueue(CFTypeRef *a1, unsigned int *a2, int a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  if (*a1)
  {
    if (CAImageQueueGetWidth() != a3 || CAImageQueueGetHeight() != a4)
    {
      CAImageQueueSetSize();
    }
  }

  else
  {
    CFPreferencesGetAppIntegerValue(@"caiq_capacity", @"com.apple.coremedia", 0);
    v9 = CAImageQueueCreate();
    if (*a1)
    {
      CFRelease(*a1);
    }

    *a1 = v9;
    if (v9)
    {
      CAImageQueueSetFlags();
      if (a2)
      {
        FPSupport_CreateCASlot(*a1, a2);
      }
    }
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t fpSupport_getContext()
{
  v0 = objc_autoreleasePoolPush();
  if (fpSupport_getContext_onceToken != -1)
  {
    fpSupport_getContext_cold_1();
  }

  FigSimpleMutexLock();
  if (fpSupport_getContext_sContext)
  {
    [MEMORY[0x1E6979518] synchronize];
    if (([fpSupport_getContext_sContext valid] & 1) == 0)
    {
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      CFRelease(fpSupport_getContext_sContext);
      fpSupport_getContext_sContext = 0;
      [MEMORY[0x1E6979518] commit];
    }

    v1 = fpSupport_getContext_sContext;
    if (fpSupport_getContext_sContext)
    {
      goto LABEL_14;
    }
  }

  v2 = (CARenderServerIsRunning() ? [MEMORY[0x1E6979320] localContext] : objc_msgSend(MEMORY[0x1E6979320], "remoteContext"));
  fpSupport_getContext_sContext = v2;
  if (v2)
  {
    CFRetain(v2);
    v1 = fpSupport_getContext_sContext;
    if (fpSupport_getContext_sContext)
    {
LABEL_14:
      CFRetain(v1);
      CFAutorelease(fpSupport_getContext_sContext);
    }
  }

  FigSimpleMutexUnlock();
  objc_autoreleasePoolPop(v0);
  return fpSupport_getContext_sContext;
}

uint64_t FigVideoRenderPipelineCreateWithLKImageQueue(const __CFAllocator *a1, const void *a2, const void *a3, int a4, const void *a5, CFDictionaryRef theDict, void *a7)
{
  value = 0;
  values = 0;
  if (theDict && (CFDictionaryGetValueIfPresent(theDict, @"LoggingID", &value), value))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    if (!Mutable)
    {
      FigVideoRenderPipelineCreateWithLKImageQueue_cold_1(&v20);
      v14 = v20;
      goto LABEL_8;
    }
  }

  else
  {
    Mutable = 0;
  }

  FigImageQueueCreateForCoreAnimationWithOptions(0, a5, Mutable, &values);
  v15 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0]);
  v14 = FigVideoRenderPipelineCreateWithFigImageQueueArray(a1, a2, a3, 0, v16, v15, 0, theDict, a7);
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_8:
  if (values)
  {
    CFRelease(values);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t RegisterFigImageQueueType()
{
  CMBaseGetClassID();
  FigBaseClassRegisterClass();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t VMC2CreateWithQueues(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, const void *a3, const void *a4, const void *a5, const void *a6, uint64_t a7, void *a8, __int128 *a9, __int128 *a10, const void *a11, const void *a12, const __CFDictionary *a13, uint64_t *a14)
{
  values = a8;
  v17 = *MEMORY[0x1E695E480];
  v18 = MEMORY[0x1E695E9C0];
  v19 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  v20 = CFArrayCreate(v17, MEMORY[0x1E695E738], 1, v18);
  v29 = *a9;
  v30 = *(a9 + 2);
  v27 = *a10;
  v28 = *(a10 + 2);
  v21 = VMC2CreateWithQueues2(a1, a2, a3, a4, a5, a6, a7, v19, v20, &v29, &v27, a11, a12, a13, a14);
  CFRelease(v19);
  CFRelease(v20);
  return v21;
}

uint64_t FigSampleBufferProviderCreateForBufferQueue(uint64_t a1, const void *a2, void **a3)
{
  refcon = 0;
  if (a2 && a3)
  {
    FigSampleBufferProviderGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), *(DerivedStorage + 8) = a2, CFRetain(a2), *(DerivedStorage + 40) = FigSimpleMutexCreate(), *(DerivedStorage + 48) = 0, v7 = *(DerivedStorage + 8), v12 = *MEMORY[0x1E6960CC0], *&time.value = *MEMORY[0x1E6960CC0], v8 = *(MEMORY[0x1E6960CC0] + 16), time.epoch = v8, v5 = CMBufferQueueInstallTrigger(v7, sbp_bq_minOrMaxPTSChanged_orEndOfDataReached, refcon, 8, &time, (DerivedStorage + 16)), v5) || (v9 = *(DerivedStorage + 8), *&time.value = v12, time.epoch = v8, v5 = CMBufferQueueInstallTrigger(v9, sbp_bq_dataBecameReady, refcon, 7, &time, (DerivedStorage + 24)), v5) || (v5 = CMBufferQueueInstallTriggerWithIntegerThreshold(*(DerivedStorage + 8), sbp_bq_dataBecameAvailable, refcon, 11, 0, (DerivedStorage + 32)), v5) || (CMNotificationCenterGetDefaultLocalCenter(), v5 = FigNotificationCenterAddWeakListener(), v5) || (CMNotificationCenterGetDefaultLocalCenter(), v5 = FigNotificationCenterAddWeakListener(), v5) || (CMNotificationCenterGetDefaultLocalCenter(), v5 = FigNotificationCenterAddWeakListener(), v5))
    {
      v10 = v5;
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v10 = FigNotificationCenterAddWeakListener();
      if (!v10)
      {
        *a3 = refcon;
        return v10;
      }
    }

    if (refcon)
    {
      CFRelease(refcon);
    }

    return v10;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t RegisterFigSampleBufferProviderType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigActivitySchedulerCreateForNewThread(uint64_t a1, int a2, void *a3, void *a4)
{
  values = a3;
  if (a4)
  {
    v7 = *MEMORY[0x1E695E480];
    FigActivitySchedulerGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      return v8;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = FigSimpleMutexCreate();
    *(DerivedStorage + 48) = v10;
    if (v10)
    {
      v11 = FigSemaphoreCreate();
      *(DerivedStorage + 24) = v11;
      if (v11)
      {
        v12 = FigSimpleMutexCreate();
        *(DerivedStorage + 16) = v12;
        if (v12)
        {
          if (!a3)
          {
            values = @"com.apple.coremedia.activityscheduler";
          }

          v13 = CFDictionaryCreate(v7, MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(DerivedStorage + 60) = a2;
          v14 = FigThreadCreate();
          if (!v14)
          {
            *a4 = 0;
          }

          if (v13)
          {
            CFRelease(v13);
          }

          return v14;
        }

        FigActivitySchedulerCreateForNewThread_cold_1();
      }

      else
      {
        FigActivitySchedulerCreateForNewThread_cold_2();
      }
    }

    else
    {
      FigActivitySchedulerCreateForNewThread_cold_3();
    }

    return 4294954510;
  }

  return FigSignalErrorAtGM();
}

uint64_t RegisterFigActivitySchedulerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t VMC2CreateWithCallbacks(int a1, const opaqueCMFormatDescription *a2, const void *a3, const void *a4, const void *a5, const void *a6, uint64_t a7, void *a8, CFTypeRef cf, __int128 *a10, __int128 *a11, const void *a12, const void *a13, const __CFDictionary *a14, uint64_t *a15)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    goto LABEL_32;
  }

  if (!a8)
  {
    fig_log_get_emitter();
    v33 = FigSignalErrorAtGM();
    Instance = 0;
    goto LABEL_37;
  }

  if (!a8[2] || !a8[3] || !a8[4] || !a8[5] || !a8[6] || !a8[7] || !a8[8] || !a8[9] || !a8[11] || !a12 || !a15)
  {
LABEL_32:
    fig_log_get_emitter();
    v33 = FigSignalErrorAtGM();
    Instance = 0;
    if (!a8)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  MEMORY[0x19A8D3660](&sRegisterVMCTypeOnce, RegisterVMC2Type);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    fig_log_get_emitter();
    v23 = FigSignalErrorAtGM();
    goto LABEL_46;
  }

  v22 = cf;
  if (cf)
  {
    v22 = CFRetain(cf);
  }

  *(Instance + 256) = v22;
  vmc2SetVideoFormatDescription(Instance, a2);
  *(Instance + 48) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  *(Instance + 56) = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  *(Instance + 88) = a6;
  CFRetain(a6);
  *(Instance + 800) = 0;
  vmc2UpdateDisplayMode(Instance);
  CMNotificationCenterGetDefaultLocalCenter();
  v23 = CMNotificationCenterAddListener();
  if (v23 || (CMNotificationCenterGetDefaultLocalCenter(), v23 = CMNotificationCenterAddListener(), v23) || (CMNotificationCenterGetDefaultLocalCenter(), v23 = CMNotificationCenterAddListener(), v23) || (CMNotificationCenterGetDefaultLocalCenter(), v23 = CMNotificationCenterAddListener(), v23) || (CMNotificationCenterGetDefaultLocalCenter(), FPSupport_GetDisplayVideoRangeNotificationSingleton(), v23 = FigNotificationCenterAddWeakListener(), v23))
  {
LABEL_46:
    v33 = v23;
    if (!a8)
    {
      goto LABEL_37;
    }

LABEL_33:
    if (v33)
    {
      v34 = a8[9];
      if (v34)
      {
        v34(a8[1]);
      }
    }

LABEL_37:
    if (a7)
    {
      v35 = *(a7 + 24);
      if (v35)
      {
        v35(*(a7 + 8));
      }
    }

    if (Instance)
    {
      goto LABEL_41;
    }

    return v33;
  }

  if (a7)
  {
    __copy_assignment_8_8_t0w16_pa0_323_16_pa0_24722_24_pa0_38677_32(Instance + 96, a7);
  }

  *(Instance + 136) = FigReadWriteLockCreate();
  __copy_assignment_8_8_t0w16_pa0_37031_16_pa0_15589_24_pa0_48845_32_pa0_31235_40_pa0_15173_48_pa0_1637_56_pa0_22919_64_pa0_52647_72_pa0_36147_80_pa0_30122_88(Instance + 144, a8);
  *(Instance + 248) = 256;
  *(Instance + 240) = 0;
  v24 = *a11;
  *(Instance + 512) = *(a11 + 2);
  *(Instance + 496) = v24;
  v25 = *a10;
  *(Instance + 488) = *(a10 + 2);
  *(Instance + 472) = v25;
  *(Instance + 264) = a12;
  CFRetain(a12);
  valuePtr[0] = 0;
  v26 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  FigBaseObject = FigActivitySchedulerGetFigBaseObject(*(Instance + 264));
  CMBaseObjectSetProperty(FigBaseObject, @"ClientPID", v26);
  CFRelease(v26);
  v28 = *MEMORY[0x1E695E4C0];
  v29 = FigActivitySchedulerGetFigBaseObject(*(Instance + 264));
  CMBaseObjectSetProperty(v29, @"ThrottleForBackground", v28);
  v30 = FigActivitySchedulerSetProcessingCallback(*(Instance + 264), vmc2DecodeUntilHighWaterMet, Instance);
  if (v30)
  {
    goto LABEL_65;
  }

  *(Instance + 272) = 1;
  v31 = MEMORY[0x1E6960C70];
  *(Instance + 392) = *MEMORY[0x1E6960C70];
  *(Instance + 408) = *(v31 + 16);
  if (a13)
  {
    v32 = CFRetain(a13);
    *(Instance + 584) = v32;
    if (v32)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
    }
  }

  else
  {
    *(Instance + 584) = 0;
  }

  *(Instance + 873) = 1;
  *(Instance + 877) = 0;
  *(Instance + 879) = 1;
  if (a14)
  {
    LOBYTE(valuePtr[0]) = 0;
    Value = CFDictionaryGetValue(a14, @"SharePixelBufferPool");
    *(Instance + 992) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    v38 = CFDictionaryGetValue(a14, @"AllowClientProcessDecode");
    *(Instance + 1000) = v38;
    if (v38)
    {
      CFRetain(v38);
    }

    *(Instance + 873) = CFDictionaryGetValue(a14, @"RealTime") != v28;
    FigCFDictionaryGetBooleanIfPresent();
    *(Instance + 874) = valuePtr[0];
    FigCFDictionaryGetBooleanIfPresent();
    *(Instance + 875) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    *(Instance + 876) = 0;
    FigCFDictionaryGetInt32IfPresent();
    v39 = FigCFDictionaryGetValue();
    if (v39)
    {
      v39 = CFRetain(v39);
    }

    *(Instance + 848) = v39;
    FigCFDictionaryGetBooleanIfPresent();
    StringValue = FigCFDictionaryGetStringValue();
    *(Instance + 864) = StringValue;
    if (StringValue)
    {
      CFRetain(StringValue);
    }

    FigCFDictionaryGetBooleanIfPresent();
  }

  if (a3)
  {
    v41 = CFRetain(a3);
  }

  else
  {
    v41 = 0;
  }

  *(Instance + 24) = v41;
  if (*(Instance + 32))
  {
    if (!*(Instance + 40))
    {
      FigSimpleMutexLock();
      v42 = vmc2BuildDecompressionSession(Instance);
      FigSimpleMutexUnlock();
      if (v42)
      {
        v33 = v42;
        goto LABEL_41;
      }
    }
  }

  v30 = VTPixelBufferConformerCreateWithAttributes();
  if (v30 || (v43 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(Instance + 816)), *(Instance + 824) = v43, dispatch_source_set_timer(v43, 0, 0x3B9ACA00uLL, 0x1DCD6500uLL), dispatch_set_context(*(Instance + 824), Instance), dispatch_source_set_event_handler_f(*(Instance + 824), vmc2UpdateExternalProtectionStatus), *(Instance + 1424) = voucher_copy(), v30 = vmc2InvokeOutputCallback_InstallOccupancyChangedCallback(Instance), v30))
  {
LABEL_65:
    v33 = v30;
LABEL_41:
    CFRelease(Instance);
    return v33;
  }

  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  AdoptedVoucherProcessIDAndUUIDString = FigDebugGetAdoptedVoucherProcessIDAndUUIDString();
  *(Instance + 1200) = AdoptedVoucherProcessIDAndUUIDString;
  if (AdoptedVoucherProcessIDAndUUIDString <= 0)
  {
    *(Instance + 1200) = getpid();
  }

  if (dword_1EAF18AC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v46 = *(Instance + 32);
  if (v46)
  {
    *(Instance + 1204) = CMFormatDescriptionGetMediaSubType(v46);
  }

  v33 = 0;
  *a15 = Instance;
  return v33;
}

uint64_t RegisterVMC2Type()
{
  result = _CFRuntimeRegisterClass();
  sVMC2ID = result;
  return result;
}

uint64_t vmc2Init(uint64_t a1)
{
  bzero((a1 + 16), 0x5F8uLL);
  *(a1 + 280) = FigReentrantMutexCreate();
  *(a1 + 296) = FigSimpleMutexCreate();
  *(a1 + 304) = FigSemaphoreCreate();
  *(a1 + 632) = FigSimpleMutexCreate();
  *(a1 + 536) = FigSimpleMutexCreate();
  *(a1 + 776) = FigSimpleMutexCreate();
  *(a1 + 72) = FigSimpleMutexCreate();
  *(a1 + 1512) = FigSimpleMutexCreate();
  *(a1 + 448) = dispatch_queue_create("com.apple.coremedia.videomediaconverter.inbound", 0);
  *(a1 + 464) = dispatch_queue_create("com.apple.coremedia.videomediaconverter.outbound", 0);
  *(a1 + 456) = FigDispatchQueueCreateWithPriority();
  *(a1 + 816) = dispatch_queue_create("com.apple.coremedia.videomediaconverter.cpec", 0);
  FigDispatchQueueSetPriorityAndClientPID();
  *(a1 + 824) = 0;
  *(a1 + 832) = 0;
  *(a1 + 836) = 1;
  *(a1 + 704) = FigSimpleMutexCreate();
  *(a1 + 984) = dispatch_queue_create("com.apple.coremedia.videomediaconverter.filter", 0);
  *(a1 + 888) = *MEMORY[0x1E695F060];
  *(a1 + 624) = 1;
  *(a1 + 576) = FigSimpleMutexCreate();
  *(a1 + 792) = 1;
  *(a1 + 1184) = FigSimpleMutexCreate();
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v4, CFPreferenceNumberWithDefault, 1000);
  *(a1 + 1452) = v4;
  *(a1 + 1476) = FigGetCFPreferenceNumberWithDefault();
  result = FigSimpleMutexCreate();
  *(a1 + 1528) = result;
  return result;
}

uint64_t FigActivitySchedulerSetProcessingCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t activityOnThread_setProcessingCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    *(v7 + 4) = a3;
    *(v7 + 5) = a2;
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t activitySchedulerOnThread(uint64_t a1)
{
  while (!*(a1 + 57))
  {
    if (*(a1 + 56))
    {
      FigSimpleMutexLock();
      if (*(a1 + 40))
      {
        v2 = objc_autoreleasePoolPush();
        (*(a1 + 40))(*(a1 + 32));
        objc_autoreleasePoolPop(v2);
      }

      FigSimpleMutexUnlock();
    }

    FigSemaphoreWaitRelative();
  }

  return 0;
}

uint64_t VMC2Go(uint64_t a1)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    ++*(a1 + 524);
    vmc2ResetTroubleMonitorTimers(a1);
    *(a1 + 288) = 1;
    FigMemoryBarrier();
    v3 = *(a1 + 264);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v3);
    }

    return 0;
  }
}

uint64_t activityOnThread_triggerScheduling()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v2 = DerivedStorage;
    DerivedStorage[56] = 1;
    FigMemoryBarrier();
    if (*(v2 + 3))
    {
      FigSemaphoreSignal();
    }

    return 0;
  }
}

uint64_t figVideoRenderPipelineSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!DerivedStorage || (v7 = DerivedStorage, *DerivedStorage))
  {

    return FigSignalErrorAtGM();
  }

  if (!CFEqual(@"Timebase", a2))
  {
    if (CFEqual(@"PrerollRate", a2))
    {
      if (a3)
      {
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(a3))
        {
          valuePtr = 1.0;
          CFNumberGetValue(a3, kCFNumberFloatType, &valuePtr);
          v12 = *(v7 + 5);
          if (v12)
          {
            Count = CFArrayGetCount(v12);
            if (Count >= 1)
            {
              v14 = Count;
              for (i = 0; i != v14; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 5), i);
                v17 = valuePtr;
                v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v18)
                {
                  v18(ValueAtIndex, v17);
                }
              }
            }
          }

          figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
          if (theArray)
          {
            v19 = CFArrayGetCount(theArray);
            if (v19 >= 1)
            {
              v20 = v19;
              for (j = 0; j != v20; ++j)
              {
                v22 = CFArrayGetValueAtIndex(theArray, j);
                v23 = valuePtr;
                v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v24)
                {
                  v24(v22, v23);
                }
              }
            }
          }

          v25 = *(v7 + 4);
          if (v25)
          {
            if (valuePtr < 0.0)
            {
              v26 = -1;
            }

            else
            {
              v26 = 0;
            }

            if (valuePtr <= 0.0)
            {
              v27 = v26;
            }

            else
            {
              v27 = 1;
            }

            FigSampleAttachmentCollectorSetDirection(v25, v27);
          }

          goto LABEL_10;
        }
      }

      goto LABEL_49;
    }

    if (CFEqual(@"PreventDisplaySleepDuringVideoPlayback", a2))
    {
      if (!a3)
      {
        goto LABEL_49;
      }

      v28 = CFBooleanGetTypeID();
      if (v28 != CFGetTypeID(a3))
      {
        goto LABEL_49;
      }

      v7[88] = CFBooleanGetValue(a3);
LABEL_55:
      FigImageQueueArraySetProperty();
      goto LABEL_10;
    }

    if (CFEqual(@"VideoEnqueueResetsSystemSleepTimer", a2))
    {
      if (!a3)
      {
        goto LABEL_49;
      }

      v29 = CFBooleanGetTypeID();
      if (v29 != CFGetTypeID(a3))
      {
        goto LABEL_49;
      }

      goto LABEL_44;
    }

    if (CFEqual(@"CAImageQueueCaptionsMayAppearHint", a2))
    {
      if (!a3)
      {
        goto LABEL_49;
      }

      v30 = CFBooleanGetTypeID();
      if (v30 != CFGetTypeID(a3))
      {
        goto LABEL_49;
      }

      goto LABEL_44;
    }

    if (CFEqual(@"DurationAllowedForCachedVideoFrames", a2))
    {
      goto LABEL_55;
    }

    if (CFEqual(@"ObeyEmptyMediaMarkers", a2))
    {
      v32 = *(v7 + 2);
      if (!v32)
      {
        goto LABEL_10;
      }

      v33 = kVideoMediaConverter2Property_ObeyEmptyMediaMarkers;
      goto LABEL_59;
    }

    if (CFEqual(@"AttachmentCollectorMetadataSourceBuffers", a2))
    {
      v34 = *(v7 + 4);
      if (v34)
      {
        v35 = kFigSampleAttachmentCollectorProperty_MetadataSourceBufferQueues;
LABEL_63:
        updated = CMBaseObjectSetProperty(v34, *v35, a3);
        goto LABEL_50;
      }

LABEL_49:
      updated = FigSignalErrorAtGM();
      goto LABEL_50;
    }

    if (CFEqual(@"SampleAttachmentCollectionRules", a2))
    {
      v36 = *(v7 + 4);
      if (v36)
      {
        v10 = CMBaseObjectSetProperty(v36, @"SampleAttachmentCollectionRules", a3);
      }

      else
      {
        v10 = 0;
      }

      v37 = *(v7 + 2);
      if (v37)
      {
        VMC2SetProperty(v37, @"CollectionRules", a3);
      }

      goto LABEL_51;
    }

    if (CFEqual(@"RenderEmptyMedia", a2))
    {
      v32 = *(v7 + 2);
      if (!v32)
      {
        goto LABEL_10;
      }

      v33 = kVideoMediaConverter2Property_RenderEmptyMedia;
      goto LABEL_59;
    }

    if (CFEqual(@"ClientPID", a2))
    {
      if (!a3)
      {
        goto LABEL_10;
      }

      v38 = CFGetTypeID(a3);
      if (v38 != CFNumberGetTypeID())
      {
        goto LABEL_10;
      }

      valuePtr = 0.0;
      CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
      if (LODWORD(valuePtr) == *(v7 + 1))
      {
        goto LABEL_10;
      }

      *(v7 + 1) = valuePtr;
      videopipelineUpdateVideoPlaybackStateForClient();
      v32 = *(v7 + 2);
      if (!v32)
      {
        goto LABEL_10;
      }

      v33 = kVideoMediaConverter2Property_ClientPID;
      goto LABEL_59;
    }

    if (CFEqual(@"ThrottleForBackground", a2))
    {
      v32 = *(v7 + 2);
      if (!v32)
      {
        goto LABEL_10;
      }

      v33 = kVideoMediaConverter2Property_ThrottleForBackground;
      goto LABEL_59;
    }

    if (CFEqual(@"FieldMode", a2))
    {
      v32 = *(v7 + 2);
      if (!v32)
      {
        goto LABEL_10;
      }

      v33 = kVideoMediaConverter2Property_FieldMode;
      goto LABEL_59;
    }

    if (CFEqual(@"AllowVideoQualityOfServiceAdjustments", a2))
    {
      v32 = *(v7 + 2);
      if (!v32)
      {
        goto LABEL_10;
      }

      v33 = kVideoMediaConverter2Property_AllowVideoQualityOfServiceAdjustments;
      goto LABEL_59;
    }

    if (CFEqual(@"VideoDecoderUsage", a2))
    {
      v32 = *(v7 + 2);
      if (!v32)
      {
        goto LABEL_10;
      }

      v33 = kVideoMediaConverter2Property_DecoderUsage;
      goto LABEL_59;
    }

    if (CFEqual(@"VideoDecoderPriority", a2))
    {
      v32 = *(v7 + 2);
      if (!v32)
      {
        goto LABEL_10;
      }

      v33 = kVideoMediaConverter2Property_DecoderPriority;
      goto LABEL_59;
    }

    if (CFEqual(@"VideoDecoderThreadCount", a2))
    {
      v32 = *(v7 + 2);
      if (!v32)
      {
        goto LABEL_10;
      }

      v33 = kVideoMediaConverter2Property_DecoderThreadCount;
      goto LABEL_59;
    }

    if (CFEqual(@"Suspended", a2))
    {
      if (!a3)
      {
        goto LABEL_49;
      }

      v39 = CFBooleanGetTypeID();
      if (v39 != CFGetTypeID(a3))
      {
        goto LABEL_49;
      }

      Value = CFBooleanGetValue(a3);
      v41 = *(v7 + 2);
      if (v41)
      {
        v42 = Value ? VMC2Stop(v41) : VMC2Go(v41);
        v10 = v42;
        if (v42)
        {
          goto LABEL_51;
        }
      }

      v45 = *(v7 + 4);
      if (!v45)
      {
        goto LABEL_10;
      }

      if (Value)
      {
        updated = FigSampleAttachmentCollectorStop(v45);
      }

      else
      {
        updated = FigSampleAttachmentCollectorGo(v45);
      }

LABEL_50:
      v10 = updated;
      goto LABEL_51;
    }

    if (CFEqual(@"MaxAgeForOutputBufferPool", a2))
    {
      if (a3)
      {
        v43 = CFNumberGetTypeID();
        if (v43 != CFGetTypeID(a3))
        {
          goto LABEL_49;
        }
      }

      v32 = *(v7 + 2);
      if (!v32)
      {
        goto LABEL_10;
      }

      v33 = kVideoMediaConverter2Property_MaxAgeForOutputPixelBufferPool;
    }

    else
    {
      if (CFEqual(@"VideoDecoderIsSecondary", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_VideoDecoderIsSecondary;
        goto LABEL_59;
      }

      if (CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
      {
        v44 = *(v7 + 2);
        if (v44)
        {
          v10 = VMC2SetProperty(v44, @"PropagatePerFrameHDRDisplayMetadata", a3);
          if (v10)
          {
            goto LABEL_51;
          }
        }

        v34 = *(v7 + 4);
        if (!v34)
        {
          goto LABEL_10;
        }

        v35 = kFigSampleAttachmentCollectorProperty_PropagatePerFrameHDRDisplayMetadata;
        goto LABEL_63;
      }

      if (CFEqual(@"ForceFullPowerDecode", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_ForceFullPowerDecode;
        goto LABEL_59;
      }

      if (CFEqual(@"EnableIOFenceDecode", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_EnableIOFenceDecode;
        goto LABEL_59;
      }

      if (CFEqual(@"EnhancementFilterOptions", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_EnhancementFilterOptions;
        goto LABEL_59;
      }

      if (CFEqual(@"VideoEnhancementMode", a2))
      {
        if (a3)
        {
          v46 = CFStringGetTypeID();
          if (v46 != CFGetTypeID(a3))
          {
            goto LABEL_49;
          }

          v47 = *(v7 + 12);
          *(v7 + 12) = a3;
          CFRetain(a3);
        }

        else
        {
          v47 = *(v7 + 12);
          *(v7 + 12) = 0;
        }

        if (v47)
        {
          CFRelease(v47);
        }

        goto LABEL_55;
      }

      if (CFEqual(@"Rotation", a2))
      {
        v48 = *(v7 + 17);
        if (!v48)
        {
          goto LABEL_10;
        }

        updated = FigTransformUtilitySetRotation(v48, a3);
        goto LABEL_50;
      }

      if (CFEqual(@"MinImageBounds", a2))
      {
        v49 = *(v7 + 17);
        if (!v49)
        {
          goto LABEL_10;
        }

        updated = FigTransformUtilitySetMinImageBounds(v49, a3);
        goto LABEL_50;
      }

      if (CFEqual(@"MaxImageBounds", a2))
      {
        v50 = *(v7 + 17);
        if (!v50)
        {
          goto LABEL_10;
        }

        updated = FigTransformUtilitySetMaxImageBounds(v50, a3);
        goto LABEL_50;
      }

      if (CFEqual(a2, @"NeroVideoGravity"))
      {
        v51 = *(v7 + 17);
        if (!v51)
        {
          goto LABEL_10;
        }

        updated = FigTransformUtilitySetVideoGravity(v51);
        goto LABEL_50;
      }

      if (CFEqual(@"DisableColorMatching", a2))
      {
        if (a3)
        {
          v52 = CFBooleanGetTypeID();
          if (v52 != CFGetTypeID(a3))
          {
            goto LABEL_49;
          }
        }

LABEL_44:
        figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
        goto LABEL_55;
      }

      if (CFEqual(@"FigImageQueueArray", a2))
      {
        if (!a3 || (v53 = CFArrayGetTypeID(), v53 == CFGetTypeID(a3)))
        {
          updated = figVideoRenderPipelineUpdateImageQueues(a1, a3);
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      if (CFEqual(@"ColorPrimaries", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_ColorPrimaries;
      }

      else if (CFEqual(@"TransferFunction", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_TransferFunction;
      }

      else if (CFEqual(@"YCbCrMatrix", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_YCbCrMatrix;
      }

      else if (CFEqual(@"PreserveSyncFrames", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_PreserveSyncFrames;
      }

      else if (CFEqual(@"PlaybackSessionID", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_PlaybackSessionID;
      }

      else if (CFEqual(@"HDRCrossTalker", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_HDRCrossTalker;
      }

      else if (CFEqual(@"PriorImageQueueGauge", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_PriorImageQueueGauge;
      }

      else if (CFEqual(@"DecompressionSessionProperties", a2))
      {
        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_DecompressionSessionProperties;
      }

      else
      {
        if (!CFEqual(@"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", a2))
        {
          v10 = 4294954446;
          goto LABEL_51;
        }

        v32 = *(v7 + 2);
        if (!v32)
        {
          goto LABEL_10;
        }

        v33 = kVideoMediaConverter2Property_MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs;
      }
    }

LABEL_59:
    updated = VMC2SetProperty(v32, *v33, a3);
    goto LABEL_50;
  }

  if (a3)
  {
    v9 = CMTimebaseGetTypeID();
    if (v9 != CFGetTypeID(a3))
    {
      goto LABEL_49;
    }
  }

  videopipelineSetTimebase(a1, a3);
LABEL_10:
  v10 = 0;
LABEL_51:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v10;
}

uint64_t piqca_setProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"PreventDisplaySleepDuringVideoPlayback", a2))
  {
    if (a3)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        Value = CFBooleanGetValue(a3);
        result = 0;
        *(DerivedStorage + 132) = Value;
        return result;
      }
    }

    goto LABEL_16;
  }

  if (CFEqual(@"EnableImageQueueTiming", a2))
  {
    if (a3)
    {
      v10 = CFBooleanGetTypeID();
      if (v10 == CFGetTypeID(a3))
      {
        v11 = *(DerivedStorage + 3056);
        v12 = CFBooleanGetValue(a3);
        *(DerivedStorage + 3056) = v12;
        if (v11 != v12)
        {
          v13 = *(DerivedStorage + 3064);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __piqca_setProperty_block_invoke;
          block[3] = &__block_descriptor_tmp_45;
          block[4] = a1;
          dispatch_sync(v13, block);
        }

        return 0;
      }
    }

LABEL_16:

    return FigSignalErrorAtGM();
  }

  if (CFEqual(@"Duration", a2))
  {
    if (a3)
    {
      v14 = CFDictionaryGetTypeID();
      if (v14 == CFGetTypeID(a3))
      {
        CMTimeMakeFromDictionary(v39, a3);
        result = 0;
        *(DerivedStorage + 3120) = v39[0];
        return result;
      }
    }

    goto LABEL_16;
  }

  if (CFEqual(@"FigImageQueueProperty_BlendsVideoFrames", a2))
  {
    if (a3)
    {
      v15 = CFBooleanGetTypeID();
      if (v15 != CFGetTypeID(a3))
      {
        goto LABEL_16;
      }
    }

    v16 = *MEMORY[0x1E695E4D0] == a3;
    if (*(DerivedStorage + 133) != v16)
    {
      *(DerivedStorage + 133) = v16;
LABEL_24:
      CAImageQueueSetFlags();
    }

    return 0;
  }

  if (CFEqual(@"FigImageQueueProperty_ImageQueueInterpolationCurve", a2))
  {
    if (!a3 || (v17 = CFGetTypeID(a3), v17 == CFArrayGetTypeID()))
    {
      *&v39[0].value = xmmword_196E772A8;
      *&v39[0].epoch = unk_196E772B8;
      if (!piqca_setProperty_sFigCAImageQueueSetInterpolationCurve)
      {
        v18 = dlopen("/System/Library/Frameworks/QuartzCore.framework/QuartzCore", 1);
        if (v18)
        {
          piqca_setProperty_sFigCAImageQueueSetInterpolationCurve = dlsym(v18, "CAImageQueueSetInterpolationCurve");
        }
      }

      if (a3)
      {
        FigCFArrayGetDoubleAtIndex();
        FigCFArrayGetDoubleAtIndex();
        FigCFArrayGetDoubleAtIndex();
        FigCFArrayGetDoubleAtIndex();
      }

      if (piqca_setProperty_sFigCAImageQueueSetInterpolationCurve)
      {
        (piqca_setProperty_sFigCAImageQueueSetInterpolationCurve)(*DerivedStorage, *&v39[0].value, *&v39[0].timescale, *&v39[0].epoch, *&v39[1].value);
      }

      return 0;
    }

    goto LABEL_16;
  }

  if (CFEqual(@"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", a2))
  {
    if (a3)
    {
      v19 = CFBooleanGetTypeID();
      if (v19 == CFGetTypeID(a3))
      {
        v20 = CFBooleanGetValue(a3);
        result = 0;
        *(DerivedStorage + 134) = v20;
        return result;
      }
    }

    goto LABEL_16;
  }

  if (CFEqual(@"FigImageQueueProperty_Timebase", a2))
  {
    if (a3)
    {
      v21 = CMTimebaseGetTypeID();
      if (v21 != CFGetTypeID(a3))
      {
        goto LABEL_16;
      }
    }

    piqca_setTimebase(a1, a3);
    return 0;
  }

  if (CFEqual(@"FigImageQueueProperty_CAImageQueueCaptionsMayAppearHint", a2))
  {
    if (!a3)
    {
      goto LABEL_16;
    }

    v22 = CFBooleanGetTypeID();
    if (v22 != CFGetTypeID(a3))
    {
      goto LABEL_16;
    }

    *(DerivedStorage + 136) = CFBooleanGetValue(a3);
    goto LABEL_24;
  }

  if (CFEqual(@"FigImageQueueProperty_DisableColorMatching", a2))
  {
    if (a3)
    {
      v23 = CFBooleanGetTypeID();
      if (v23 != CFGetTypeID(a3))
      {
        goto LABEL_16;
      }

      *(DerivedStorage + 3008) = a3;
      if (!CFEqual(a3, *MEMORY[0x1E695E4D0]))
      {
        CFEqual(*(DerivedStorage + 3008), *MEMORY[0x1E695E4C0]);
      }
    }

    else
    {
      *(DerivedStorage + 3008) = 0;
      if (defaultDisableColorMatching_alreadyChecked != 1)
      {
        defaultDisableColorMatching_result = MGGetBoolAnswer() ^ 1;
        defaultDisableColorMatching_alreadyChecked = 1;
      }
    }

    goto LABEL_24;
  }

  if (CFEqual(@"VideoEnhancementMode", a2))
  {
    piqca_setEnhancementMode(DerivedStorage, a3);
    return 0;
  }

  if (CFEqual(@"CAImageQueueAlwaysSync", a2))
  {
    v24 = *MEMORY[0x1E695E4D0] == a3;
    *(DerivedStorage + 137) = v24;
    if (!v24)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (CFEqual(@"UseLowLatencyModeForImmediateFrames", a2))
  {
    result = 0;
    *(DerivedStorage + 138) = *MEMORY[0x1E695E4D0] == a3;
    return result;
  }

  if (CFEqual(@"ForScrubbingOnly", a2))
  {
    v24 = *MEMORY[0x1E695E4D0] == a3;
    *(DerivedStorage + 221) = v24;
    if (v24)
    {
      FigImageQueueDisplayCountHistory_CancelTracingDisplayCount(*(DerivedStorage + 2984));
    }

    return 0;
  }

  if (CFEqual(@"EnablePSEMitigation", a2))
  {
    if (a3)
    {
      v25 = CFGetTypeID(a3);
      if (v25 == CFBooleanGetTypeID())
      {
        result = 0;
        *(DerivedStorage + 3164) = *MEMORY[0x1E695E4D0] == a3;
        return result;
      }
    }

    goto LABEL_16;
  }

  if (CFEqual(@"RendererPreparationInfo", a2))
  {
    FigSimpleMutexLock();
    v26 = *(DerivedStorage + 3200);
    v27 = FigCFDictionaryGetValue();
    FigCFDictionaryGetBooleanIfPresent();
    if (v26)
    {
      *(DerivedStorage + 3200) = 0;
      v28 = *(DerivedStorage + 3208);
      *(DerivedStorage + 3208) = v27;
      if (v27)
      {
        CFRetain(v27);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      if (dword_1EAF170E0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSimpleMutexUnlock();
      piqca_postRendererPreparationCompletedIfPreviouslyRequestedAndRecordNewRequest(a1, 0, 0);
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  if (CFEqual(@"ImageQueueGauge", a2))
  {
    v29 = *(DerivedStorage + 3224);
    if (!v29 || v29 == a3)
    {
      if (v29)
      {
        CFRelease(v29);
        *(DerivedStorage + 3224) = 0;
      }

      if (a3)
      {
        a3 = CFRetain(a3);
      }

      *(DerivedStorage + 3224) = a3;
      FigImageQueueGetSafeDisplayDuration(a1, v39);
      return FigImageQueueGaugeSetSafeDisplayDuration(a3, &v39[0].value);
    }

    else
    {
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return FigSignalErrorAtGM();
    }
  }

  if (!CFEqual(@"ResponsibleProcessID", a2))
  {
    return 4294954512;
  }

  if (!a3 || (v31 = CFGetTypeID(a3), v31 != CFNumberGetTypeID()))
  {
    piqca_setProperty_cold_2(v39);
    return LODWORD(v39[0].value);
  }

  SInt32 = FigCFNumberGetSInt32();
  if (SInt32 <= 0)
  {
    piqca_setProperty_cold_1(v39);
    return LODWORD(v39[0].value);
  }

  v33 = SInt32;
  v34 = *(DerivedStorage + 3160);
  *(DerivedStorage + 3160) = SInt32;
  if (v34 == SInt32)
  {
    return 0;
  }

  v35 = *(DerivedStorage + 3152);
  if (v35)
  {
    CFRelease(v35);
    *(DerivedStorage + 3152) = 0;
  }

  v36 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"com.apple.coremedia.iq.ca.pid%d", v33);
  result = 0;
  *(DerivedStorage + 3152) = v36;
  return result;
}

uint64_t FigCRABSScheduledIOCreate(const void *a1, uint64_t a2, void *a3)
{
  FigScheduledIOGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a1);
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = DerivedStorage + 24;
  v7 = FigSimpleMutexCreate();
  *(DerivedStorage + 16) = v7;
  if (v7)
  {
    v8 = 0;
    *a3 = 0;
  }

  else
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
    CFRelease(*DerivedStorage);
    CFRelease(0);
  }

  return v8;
}

uint64_t figVideoRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (DerivedStorage)
  {
    v9 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (CFEqual(@"SourceSampleBufferQueue", a2))
      {
        v11 = *(v9 + 1);
        goto LABEL_10;
      }

      if (CFEqual(@"Timebase", a2))
      {
        v11 = *(v9 + 16);
LABEL_10:
        *a4 = v11;
        if (v11)
        {
          CFRetain(v11);
        }

        goto LABEL_12;
      }

      if (CFEqual(@"FigImageQueueArray", a2))
      {
        figVideoRenderPipelineCopyVideoImageQueueArray(a1, a4, 0);
LABEL_12:
        v12 = 0;
        goto LABEL_13;
      }

      if (CFEqual(@"PerformanceDictionary", a2))
      {
        NonJerkyStopTime = videopipelineCopyPerformanceDictionary(a1);
LABEL_33:
        v12 = NonJerkyStopTime;
        goto LABEL_13;
      }

      if (CFEqual(@"NextNonJerkyStopTime", a2))
      {
        NonJerkyStopTime = videopipelineCopyNextNonJerkyStopTime(a1, a3, a4);
        goto LABEL_33;
      }

      if (CFEqual(@"CachedTimeRange", a2))
      {
        v14 = *(v9 + 5);
        if (v14 && CFArrayGetCount(v14) == 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 5), 0);
          v16 = kFigImageQueueProperty_CachedTimeRange;
LABEL_31:
          NonJerkyStopTime = FigImageQueueCopyProperty(ValueAtIndex, *v16, a3, a4);
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (CFEqual(@"CachedVideoFrames", a2))
      {
        v17 = *(v9 + 5);
        if (v17 && CFArrayGetCount(v17) == 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 5), 0);
          v16 = kFigImageQueueProperty_CachedVideoFrames;
          goto LABEL_31;
        }

LABEL_32:
        NonJerkyStopTime = FigSignalErrorAtGM();
        goto LABEL_33;
      }

      if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
      {
        memset(&v37, 0, sizeof(v37));
        CMBufferQueueGetEndPresentationTimeStamp(&v37, *(v9 + 1));
        time = v37;
        v18 = CMTimeCopyAsDictionary(&time, a3);
LABEL_36:
        v12 = 0;
        *a4 = v18;
        goto LABEL_13;
      }

      if (CFEqual(@"CurrentVideoFrameRate", a2))
      {
        figVideoRenderPipelineCopyVideoImageQueueArray(a1, &cf, 0);
        if (cf)
        {
          Count = CFArrayGetCount(cf);
          if (Count >= 1)
          {
            v20 = Count;
            v21 = 0;
            v22 = 0;
            do
            {
              v37.value = 0;
              v23 = CFArrayGetValueAtIndex(cf, v21);
              v12 = FigImageQueueCopyProperty(v23, @"FigImageQueueProperty_CurrentFrameRate", a3, &v37);
              value = v37.value;
              if (!v12)
              {
                valuePtr = 0.0;
                LODWORD(time.value) = 0;
                if (v37.value)
                {
                  CFNumberGetValue(v37.value, kCFNumberFloat32Type, &time);
                }

                if (v22)
                {
                  CFNumberGetValue(v22, kCFNumberFloat32Type, &valuePtr);
                }

                if (*&time.value <= valuePtr)
                {
                  v25 = v22;
                }

                else
                {
                  v25 = v37.value;
                  if (v37.value)
                  {
                    CFRetain(v37.value);
                  }

                  if (v22)
                  {
                    CFRelease(v22);
                  }
                }

                value = v37.value;
                v22 = v25;
              }

              if (value)
              {
                CFRelease(value);
              }

              ++v21;
            }

            while (v20 != v21);
            if (v22)
            {
              v12 = 0;
              *a4 = v22;
            }

            goto LABEL_13;
          }

LABEL_63:
          v12 = 4294954513;
          goto LABEL_13;
        }

        return 4294954513;
      }

      if (CFEqual(@"VideoEnqueueResetsSystemSleepTimer", a2))
      {
        figVideoRenderPipelineCopyVideoImageQueueArray(a1, &cf, 0);
        if (cf)
        {
          if (CFArrayGetCount(cf) >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
            v16 = kFigImageQueueProperty_EnqueueResetsSystemSleepTimer;
            goto LABEL_31;
          }

          goto LABEL_63;
        }

        return 4294954513;
      }

      if (CFEqual(@"ObeyEmptyMediaMarkers", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_ObeyEmptyMediaMarkers;
        goto LABEL_94;
      }

      if (CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_EndPresentationTimeForDecodedSamples;
        goto LABEL_94;
      }

      if (CFEqual(@"RenderEmptyMedia", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_RenderEmptyMedia;
        goto LABEL_94;
      }

      if (CFEqual(@"OutputPixelBufferPool", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_OutputPixelBufferPool;
        goto LABEL_94;
      }

      if (CFEqual(@"FieldMode", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_FieldMode;
        goto LABEL_94;
      }

      if (CFEqual(@"AllowVideoQualityOfServiceAdjustments", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_AllowVideoQualityOfServiceAdjustments;
        goto LABEL_94;
      }

      if (CFEqual(@"VideoQualityOfServiceTier", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_QualityOfServiceTier;
        goto LABEL_94;
      }

      if (CFEqual(@"VideoDecoderUsage", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_DecoderUsage;
        goto LABEL_94;
      }

      if (CFEqual(@"VideoDecoderPriority", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_DecoderPriority;
        goto LABEL_94;
      }

      if (CFEqual(@"VideoDecoderThreadCount", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_DecoderThreadCount;
        goto LABEL_94;
      }

      if (CFEqual(@"SupportsSavingFrames", a2))
      {
        v28 = MEMORY[0x1E695E4D0];
        v29 = MEMORY[0x1E695E4C0];
        v30 = *(v9 + 2) == 0;
LABEL_97:
        if (v30)
        {
          v28 = v29;
        }

        v18 = CFRetain(*v28);
        goto LABEL_36;
      }

      if (CFEqual(@"ForceFullPowerDecode", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_ForceFullPowerDecode;
        goto LABEL_94;
      }

      if (CFEqual(@"EnableIOFenceDecode", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_EnableIOFenceDecode;
        goto LABEL_94;
      }

      if (CFEqual(@"EnhancementFilterOptions", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_EnhancementFilterOptions;
        goto LABEL_94;
      }

      if (CFEqual(@"ColorPrimaries", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_ColorPrimaries;
        goto LABEL_94;
      }

      if (CFEqual(@"TransferFunction", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_TransferFunction;
        goto LABEL_94;
      }

      if (CFEqual(@"YCbCrMatrix", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_YCbCrMatrix;
        goto LABEL_94;
      }

      if (CFEqual(@"PreserveSyncFrames", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_PreserveSyncFrames;
        goto LABEL_94;
      }

      if (CFEqual(@"PlaybackSessionID", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_PlaybackSessionID;
        goto LABEL_94;
      }

      if (CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_PropagatePerFrameHDRDisplayMetadata;
        goto LABEL_94;
      }

      if (CFEqual(@"HDRCrossTalker", a2))
      {
        v26 = *(v9 + 2);
        if (!v26)
        {
          goto LABEL_12;
        }

        v27 = kVideoMediaConverter2Property_HDRCrossTalker;
        goto LABEL_94;
      }

      if (CFEqual(@"VetoFigReadCacheUsage", a2))
      {
        v28 = MEMORY[0x1E695E4D0];
        v31 = v9[144];
      }

      else
      {
        if (CFEqual(@"Suspended", a2))
        {
          v32 = *(v9 + 2);
          if (v32)
          {
            v37.value = 0;
            v12 = VMC2CopyProperty(v32, @"IsRunning", a3, &v37);
            if (!v12)
            {
              v33 = (v37.value == *MEMORY[0x1E695E4C0] ? *MEMORY[0x1E695E4D0] : *MEMORY[0x1E695E4C0]);
              *a4 = CFRetain(v33);
              if (v37.value)
              {
                CFRelease(v37.value);
              }
            }

            goto LABEL_13;
          }

          goto LABEL_12;
        }

        if (!CFEqual(@"UsingAV1FilmGrainDeferMode", a2))
        {
          if (!CFEqual(@"DecompressionSessionProperties", a2))
          {
            if (CFEqual(@"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", a2))
            {
              v34 = *(v9 + 2);
              if (v34)
              {
                VMC2CopyProperty(v34, @"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", a3, a4);
              }

              goto LABEL_12;
            }

            v12 = 4294954446;
LABEL_13:
            if (cf)
            {
              CFRelease(cf);
            }

            return v12;
          }

          v26 = *(v9 + 2);
          if (!v26)
          {
            goto LABEL_12;
          }

          v27 = kVideoMediaConverter2Property_DecompressionSessionProperties;
LABEL_94:
          NonJerkyStopTime = VMC2CopyProperty(v26, *v27, a3, a4);
          goto LABEL_33;
        }

        v28 = MEMORY[0x1E695E4D0];
        v31 = v9[153];
      }

      v29 = MEMORY[0x1E695E4C0];
      v30 = v31 == 0;
      goto LABEL_97;
    }
  }

  return FigSignalErrorAtGM();
}

void videopipelineSetTimebase(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CFRelease(*(DerivedStorage + 128));
  }

  *(DerivedStorage + 128) = a2;
  if (a2)
  {
    CFRetain(a2);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  FigImageQueueArraySetProperty();
  if (!*DerivedStorage)
  {
    v4 = *(DerivedStorage + 16);
    if (v4)
    {
      VMC2SetTimebase(v4, *(DerivedStorage + 128));
    }
  }

  videopipelineUpdateVideoPlaybackStateForClient();
}

uint64_t VMC2SetTimebase(uint64_t a1, const void *a2)
{
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    if (*(a1 + 584))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v5 = *(a1 + 584);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 584) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 584);
    if (v6)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v6 = *(a1 + 584);
      if (v6)
      {
        v6 = *(a1 + 600);
        if (v6)
        {
          LOBYTE(v6) = *(a1 + 624) != 0;
        }
      }
    }

    *(a1 + 625) = v6;
    FigSimpleMutexUnlock();
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t VideoMentorNew(const void *a1, const void *a2, const void *a3, const __CFDictionary *a4, void *a5)
{
  values = @"com.apple.coremedia.videomentor";
  if (VideoMentorNew_onceToken == -1)
  {
    if (!a1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    VideoMentorNew_cold_1();
    if (!a1)
    {
      goto LABEL_28;
    }
  }

  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        v10 = malloc_type_calloc(0x3C0uLL, 1uLL, 0x10E0040E3B063F7uLL);
        if (v10)
        {
          v11 = v10;
          v10[1] = CFRetain(a1);
          v11[2] = CFRetain(a2);
          v11[3] = CFRetain(a3);
          *(v11 + 41) = 0;
          if (a4)
          {
            v12 = *MEMORY[0x1E695E4D0];
            if (v12 == CFDictionaryGetValue(a4, @"SpeculativelySaveFrames"))
            {
              *(v11 + 549) = 1;
            }

            if (_os_feature_enabled_impl())
            {
              v13 = v12 == CFDictionaryGetValue(a4, @"OptimizeSampleCursorIPCForPower");
            }

            else
            {
              v13 = 0;
            }

            *(v11 + 41) = v13;
            Value = CFDictionaryGetValue(a4, @"SampleBufferCryptor");
            v11[6] = Value;
            if (Value)
            {
              CFRetain(Value);
            }
          }

          FigCFDictionaryGetInt32IfPresent();
          v11[11] = FigSemaphoreCreate();
          v11[12] = FigSimpleMutexCreate();
          v11[10] = FigSimpleMutexCreate();
          v11[33] = FigSimpleMutexCreate();
          v11[15] = FigSemaphoreCreate();
          *(v11 + 11) = 0;
          v11[69] = 0;
          *(v11 + 92) = 1065353216;
          fig_note_initialize_category_with_default_work_cf();
          fig_note_initialize_category_with_default_work_cf();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          v15 = v11[3];
          v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v16 || v16(v15, videoMentorLowWaterTrigger, v11, v11 + 4))
          {
            v18 = FigSignalErrorAtGM();
          }

          else
          {
            *(v11 + 40) = 1;
            *(v11 + 136) = -2;
            *(v11 + 28) = 0;
            v17 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v18 = FigThreadCreate();
            if (!v18)
            {
              *a5 = v11;
              v11 = 0;
            }

            if (v17)
            {
              CFRelease(v17);
            }
          }

          VideoMentorDispose(v11);
          return v18;
        }
      }
    }
  }

LABEL_28:

  return FigSignalErrorAtGM();
}

uint64_t videoMentorThread(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 41))
  {
    FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread(*(a1 + 44), &cf);
  }

  if (*(a1 + 112) != 5)
  {
    v117 = (a1 + 552);
    allocator = *MEMORY[0x1E695E480];
    key = *MEMORY[0x1E6960518];
    v120 = *MEMORY[0x1E6960598];
    v119 = *MEMORY[0x1E69605A0];
    v121 = *MEMORY[0x1E69604F8];
    v123 = *MEMORY[0x1E695E4D0];
    v118 = *MEMORY[0x1E69604B8];
    v134 = *(MEMORY[0x1E6960C70] + 16);
    v133 = *MEMORY[0x1E6960C70];
    while (1)
    {
      FigSimpleMutexLock();
      v5 = *(a1 + 112);
      v6 = *(a1 + 128);
      v148 = *(a1 + 136);
      v149 = *(a1 + 152);
      v7 = *(a1 + 160);
      v138 = v6;
      v139 = *(a1 + 168);
      v146 = *(a1 + 176);
      v135 = *(a1 + 200);
      v147 = *(a1 + 192);
      *(a1 + 176) = v133;
      v8 = *(a1 + 208);
      v145 = *(a1 + 224);
      v144 = v8;
      *(a1 + 224) = v134;
      *(a1 + 208) = v133;
      v9 = *(a1 + 500);
      v11 = *(a1 + 232);
      v10 = *(a1 + 236);
      v13 = *(a1 + 240);
      v12 = *(a1 + 244);
      v14 = *(a1 + 248);
      v15 = *(a1 + 252);
      v16 = *(a1 + 256);
      v17 = *(a1 + 260);
      v18 = *(a1 + 372);
      v19 = *(a1 + 373);
      v20 = *(a1 + 374);
      v21 = *(a1 + 377);
      v22 = *(a1 + 378);
      v23 = *(a1 + 464);
      v137 = *(a1 + 456);
      v24 = *(a1 + 375);
      v25 = *(a1 + 428);
      v142.epoch = *(a1 + 444);
      v143 = v23;
      *&v142.value = v25;
      v26 = *(a1 + 376);
      v140 = *(a1 + 472);
      v136 = *(a1 + 480);
      *(a1 + 488) = *(a1 + 452);
      *(a1 + 492) = 0;
      *(a1 + 128) = 0;
      *(a1 + 168) = 0;
      *(a1 + 192) = v134;
      *(a1 + 200) = 0;
      *(a1 + 520) = 0;
      *(a1 + 116) = 0;
      *(a1 + 484) = 0;
      *(a1 + 452) = 0u;
      *(a1 + 468) = 0u;
      if (!v5)
      {
        v43 = v23;
        if (*(a1 + 117))
        {
          *(a1 + 117) = 0;
          FigSemaphoreSignal();
        }

        FigMemoryBarrier();
        FigSimpleMutexUnlock();
        v29 = v135;
        v28 = v136;
        v30 = v140;
        if (v43)
        {
          CFRelease(v43);
          v143 = 0;
        }

        if (v140)
        {
          audioMentorEnqueueBufferConsumedMarker(a1, v140);
        }

        goto LABEL_129;
      }

      v128 = v14;
      v129 = v19;
      v125 = v9;
      v126 = v7;
      v127 = v23;
      v130 = v18;
      v131 = v12;
      *v132 = v20;
      FigMemoryBarrier();
      FigSimpleMutexUnlock();
      if (v5 <= 2)
      {
        break;
      }

      if (v5 != 3)
      {
        v27 = v5 == 4;
        v29 = v135;
        v28 = v136;
        v30 = v140;
        if (!v27)
        {
          goto LABEL_129;
        }

        if (v127)
        {
          CFRelease(v127);
          v143 = 0;
        }

        time1.value = 0;
        *(a1 + 496) = v13;
        *(a1 + 492) = *(a1 + 488) != 0;
        if ((v13 & 0xFFFFFFFD) == 1 && *MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        *(a1 + 524) = 0;
        v31 = *(a1 + 536);
        if (v31)
        {
          CFRelease(v31);
          *(a1 + 536) = 0;
        }

        *(a1 + 560) = v133;
        *(a1 + 576) = v134;
        *(a1 + 680) = 0;
        videoMentorThrottlingStateStartNewOrder(a1 + 584, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0);
        if ((v131 - 3) >= 0xFFFFFFFE)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 72))
          {
            v32 = *(a1 + 24);
            v33 = *(*(CMBaseObjectGetVTable() + 16) + 72);
            if (v33)
            {
              v33(v32);
            }
          }

          v34 = *(a1 + 528);
          if (v34)
          {
            CFRelease(v34);
            *(a1 + 528) = 0;
          }

          *(a1 + 544) = -2;
          ++*(a1 + 504);
          values.value = CFNumberCreate(allocator, kCFNumberIntType, (a1 + 504));
          v35 = CFDictionaryCreate(allocator, MEMORY[0x1E6960580], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *&sampleTimingArray.duration.value = *MEMORY[0x1E6960CC0];
          sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960CC0] + 16);
          *&sampleTimingArray.presentationTimeStamp.value = v133;
          sampleTimingArray.presentationTimeStamp.epoch = v134;
          *&sampleTimingArray.decodeTimeStamp.value = v133;
          sampleTimingArray.decodeTimeStamp.epoch = v134;
          if (v137)
          {
            CMSampleBufferGetOutputPresentationTimeStamp(&time2.start, v137);
            sampleTimingArray.presentationTimeStamp = time2.start;
          }

          if (CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &time1))
          {
            goto LABEL_109;
          }

          CMSetAttachment(time1.value, key, values.value, 1u);
          v36 = *(a1 + 24);
          v37 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (v37)
          {
            v37(v36, v120, v35, 0);
          }

          v38 = *(a1 + 24);
          v39 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (v39)
          {
            v39(v38, v119, 0, 0);
          }

          if (values.value)
          {
            CFRelease(values.value);
          }

          if (v35)
          {
            CFRelease(v35);
          }

          v40 = *(a1 + 24);
          value = time1.value;
          v42 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v42 || v42(v40, value))
          {
            goto LABEL_109;
          }
        }

        if (v137 && (CMGetAttachment(v137, v121, 0) == v123 && (CMGetAttachment(v137, v118, 0), CMSampleBufferGetOutputPresentationTimeStamp(&sampleTimingArray.duration, v137), videoMentorEnqueueTimestampIntervalMarker(a1)) || (v64 = *(a1 + 24), (v65 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || v65(v64, v137)))
        {
LABEL_109:
          v66 = FigSignalErrorAtGM();
          v67 = v140;
        }

        else
        {
          if (v140)
          {
            v66 = audioMentorEnqueueBufferConsumedMarker(a1, v140);
          }

          else
          {
            v66 = 0;
          }

          v67 = 0;
        }

        if (*(a1 + 492))
        {
          videoMentorPostCollectorCoherenceConduitNotification(a1);
          *(a1 + 492) = 0;
          if (*v132)
          {
            goto LABEL_114;
          }
        }

        else if (*v132)
        {
LABEL_114:
          if ((v66 + 1) <= 1)
          {
            videoMentorPostMinAndMaxUpcomingOutputPTS(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
          }
        }

        videoMentorThreadFinishPreroll(a1, 0, v136);
        if (!*a1)
        {
          v68 = @"MentorStoppingDueToCompletion";
          if (v66)
          {
            v68 = @"MentorStoppingDueToError";
          }

          if (v66 == -1)
          {
            v69 = 0;
          }

          else
          {
            v69 = v66;
          }

          if (v66 == -1)
          {
            v70 = @"MentorResettingDueToModeSwitch";
          }

          else
          {
            v70 = v68;
          }

          v71 = FigMentorNotificationPayloadCreate(v70, v136, v69, *(a1 + 520), v67, 0);
          CMNotificationCenterGetDefaultLocalCenter();
          v30 = v140;
          CMNotificationCenterPostNotification();
          if (v71)
          {
            CFRelease(v71);
          }
        }

        videoMentorThrottlingStateFree(a1 + 584);
        v63 = time1.value;
        if (!time1.value)
        {
          goto LABEL_129;
        }

LABEL_128:
        CFRelease(v63);
        goto LABEL_129;
      }

      *&sampleTimingArray.duration.value = v146;
      sampleTimingArray.duration.epoch = v147;
      *&time2.start.value = v144;
      time2.start.epoch = v145;
      v29 = v135;
      v52 = v11;
      v28 = v136;
      v53 = v10;
      v30 = v140;
      videoMentorThreadReversePlayback(a1, v139, &sampleTimingArray.duration, v135, &time2.start, v52, v53, v13, v131, v128, v130, v129, v132[0], &v143, v140, v136);
LABEL_129:
      *(a1 + 380) = v146;
      *(a1 + 396) = v147;
      *(a1 + 404) = v144;
      *(a1 + 420) = v145;
      if (v138)
      {
        CFRelease(v138);
      }

      if (v139)
      {
        CFRelease(v139);
      }

      if (v29)
      {
        CFRelease(v29);
      }

      if (v137)
      {
        CFRelease(v137);
      }

      if (v143)
      {
        CFRelease(v143);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      if (*(a1 + 112) != 5)
      {
        if (*(a1 + 116))
        {
          continue;
        }

        do
        {
          FigSemaphoreWaitRelative();
        }

        while (!*(a1 + 116));
        if (*(a1 + 112) != 5)
        {
          continue;
        }
      }

      goto LABEL_4;
    }

    if (v5 != 1)
    {
      v27 = v5 == 2;
      v29 = v135;
      v28 = v136;
      v30 = v140;
      if (v27)
      {
        *&sampleTimingArray.duration.value = v146;
        sampleTimingArray.duration.epoch = v147;
        *&time2.start.value = v144;
        time2.start.epoch = v145;
        videoMentorThreadForwardPlayback(a1, v139, &sampleTimingArray.duration, v135, &time2.start, v13, v125, v131, v15, v16, v128, v17, v130, v129, v132[0], v21, v22, 0, &v143, v140, v24, v26, v136);
      }

      goto LABEL_129;
    }

    v44 = 0;
    v141.epoch = v149;
    ++*(a1 + 916);
    *(a1 + 492) = *(a1 + 488) != 0;
    *&v141.value = v148;
    v159 = 0;
    v160 = v138;
    v158 = 1;
    v157 = 0;
    v156 = 0;
    *(a1 + 496) = 2;
    v29 = v135;
    v30 = v140;
    if (!v138)
    {
      *&sampleTimingArray.duration.value = v148;
      sampleTimingArray.duration.epoch = v149;
      CursorForPresentationTimeStamp = videoMentorCreateCursorForPresentationTimeStamp(a1, v130, &sampleTimingArray.duration.value, &v160);
      if (CursorForPresentationTimeStamp)
      {
        v47 = CursorForPresentationTimeStamp;
        v56 = 0;
        v44 = 0;
        goto LABEL_77;
      }

      v44 = 1;
    }

    if ((v141.flags & 0x1D) == 1)
    {
LABEL_55:
      if (v126 != 2)
      {
        goto LABEL_157;
      }

      *&time1.value = v133;
      time1.epoch = v134;
      v45 = v160;
      v46 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v46)
      {
        v47 = v46(v45, &time1);
        if (!v47)
        {
          sampleTimingArray.duration = time1;
          time2.start = v141;
          if (CMTimeCompare(&sampleTimingArray.duration, &time2.start))
          {
            *&values.value = v133;
            values.epoch = v134;
            *&rhs.value = v133;
            rhs.epoch = v134;
            v48 = *(MEMORY[0x1E6960C98] + 16);
            *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C98];
            *&sampleTimingArray.duration.epoch = v48;
            *&sampleTimingArray.presentationTimeStamp.timescale = *(MEMORY[0x1E6960C98] + 32);
            v49 = v160;
            v50 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v50)
            {
              v51 = v50(v49, &values);
              if (!v51)
              {
                CursorPTSRange = FigSampleCursorStepInPresentationOrderAndReportStepsTaken(v160, 1, &v156);
                v30 = v140;
                if (!CursorPTSRange)
                {
                  CursorPTSRange = videoMentorGetCursorPTSRange(v160, &sampleTimingArray);
                  if (!CursorPTSRange)
                  {
                    *&time2.start.value = *&sampleTimingArray.duration.value;
                    *&time2.start.epoch = *&sampleTimingArray.duration.epoch;
                    *&time2.duration.timescale = *&sampleTimingArray.presentationTimeStamp.timescale;
                    CMTimeRangeGetEnd(&rhs, &time2);
                    time2.start = values;
                    v151 = rhs;
                    videoMentorThreadForwardPlayback(a1, 0, &time2.start, 0, &v151, v125, v125, v131, 0.0, 0.0, 0, 0, v130, v129, 0, 0, 0, 1u, &v143, v140, 0, 0, v136);
                    v56 = 0;
                    ++*(a1 + 920);
                    if (!v44)
                    {
LABEL_99:
                      if (v159)
                      {
                        CFRelease(v159);
                        v159 = 0;
                      }

                      v28 = v136;
                      if (!v56)
                      {
                        goto LABEL_129;
                      }

                      v63 = v56;
                      goto LABEL_128;
                    }

LABEL_97:
                    if (v160)
                    {
                      CFRelease(v160);
                      v160 = 0;
                    }

                    goto LABEL_99;
                  }
                }

                v47 = CursorPTSRange;
                goto LABEL_152;
              }

              v47 = v51;
            }

            else
            {
              v47 = -12782;
            }

            v30 = v140;
LABEL_152:
            v56 = 0;
            goto LABEL_77;
          }

          v30 = v140;
LABEL_157:
          if (*MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
          }

          if (v127)
          {
            if (CFArrayGetCount(v127) < 1 || (v73 = v160, (v74 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || v74(v73, &v159))
            {
              v56 = 0;
            }

            else
            {
              CachedVideoFrameForCursor = videoMentorGetCachedVideoFrameForCursor(a1, v159, v127, v136);
              v56 = CachedVideoFrameForCursor;
              if (CachedVideoFrameForCursor)
              {
                CFRetain(CachedVideoFrameForCursor);
                v76 = v160;
                v160 = v159;
                if (v159)
                {
                  CFRetain(v159);
                }

                if (v76)
                {
                  CFRelease(v76);
                }
              }

              if (v159)
              {
                CFRelease(v159);
                v159 = 0;
              }
            }

            CFRelease(v127);
            v143 = 0;
          }

          else
          {
            v56 = 0;
          }

          started = videoMentorDependencyStateStartNewOrder(a1, (a1 + 744));
          if (started)
          {
            goto LABEL_175;
          }

          LOBYTE(v151.value) = 0;
          sampleTimingArray.duration = v141;
          time2.start = v141;
          time1 = v141;
          values = v142;
          started = videoMentorDependencyStateCopyCursorForDecodeWalk(a1, a1 + 744, 1, v136, v131, &sampleTimingArray, &time2, &time1.value, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v160, 0, &values.value, &v151, &v157, &v158, 0, &v159);
          if (started)
          {
            goto LABEL_175;
          }

          v78 = LOBYTE(v151.value) == 0;
          if (!v157)
          {
            time1 = v141;
            v85 = a1 + 552;
            while (1)
            {
              v85 = *v85;
              if (!v85)
              {
                break;
              }

              v86 = *(v85 + 32);
              *&sampleTimingArray.duration.value = *(v85 + 16);
              *&sampleTimingArray.duration.epoch = v86;
              *&sampleTimingArray.presentationTimeStamp.timescale = *(v85 + 48);
              time2.start = time1;
              if (CMTimeRangeContainsTime(&sampleTimingArray, &time2.start))
              {
                v47 = videoMentorThreadGenerateAndEnqueueFrame(a1, *(v85 + 8), 3, 2, v158, 1, 0, v78, v129, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v136);
                if (v47)
                {
                  v58 = v30;
                  v29 = v135;
                  goto LABEL_78;
                }

                v158 = 0;
                v29 = v135;
                goto LABEL_260;
              }
            }

            v87 = *v117;
            if (*v117)
            {
              v88 = *(a1 + 528);
              if (v88)
              {
                while (1)
                {
                  v89 = v87[1];
                  v90 = *(CMBaseObjectGetVTable() + 16);
                  v91 = v90 ? v90 : 0;
                  if (v88 && (v92 = *(CMBaseObjectGetVTable() + 16)) != 0)
                  {
                    v93 = v92;
                  }

                  else
                  {
                    v93 = 0;
                  }

                  if (v91 != v93 || !*(v91 + 32) || (*(v93 + 32))(v89, v88) != 1)
                  {
                    v94 = *(v87 + 2);
                    *&sampleTimingArray.duration.value = *(v87 + 1);
                    *&sampleTimingArray.duration.epoch = v94;
                    *&sampleTimingArray.presentationTimeStamp.timescale = *(v87 + 3);
                    CMTimeRangeGetEnd(&time2.start, &sampleTimingArray);
                    sampleTimingArray.duration = v141;
                    if (CMTimeCompare(&time2.start, &sampleTimingArray.duration) > 0)
                    {
                      break;
                    }
                  }

                  v87 = *v87;
                  if (!v87)
                  {
                    goto LABEL_210;
                  }

                  v88 = *(a1 + 528);
                }
              }

              else
              {
LABEL_210:
                videoMentorResetSavedListAndEnqueueMarker(a1);
              }
            }

            v95 = v159;
            if (!v159)
            {
              v47 = 0;
              v29 = v135;
              v30 = v140;
              goto LABEL_260;
            }

            v96 = v160;
            if (!v56)
            {
              v97 = *(CMBaseObjectGetVTable() + 16);
              if (v97)
              {
                v98 = v97;
              }

              else
              {
                v98 = 0;
              }

              if (v96 && (v99 = *(CMBaseObjectGetVTable() + 16)) != 0)
              {
                v100 = v99;
              }

              else
              {
                v100 = 0;
              }

              if (v98 == v100 && *(v98 + 32))
              {
                v101 = (*(v100 + 32))(v95, v96);
                if (v101 == 1)
                {
                  v47 = 0;
                  v29 = v135;
                  v30 = v140;
LABEL_259:
                  videoMentorEnqueueDrainAfterDecodingMarker(a1);
                  goto LABEL_260;
                }
              }

              else
              {
                v101 = 0;
              }

              v30 = v140;
              while (1)
              {
                values.value = 0;
                NodeForCursor = videoMentorDependencyStateGetNodeForCursor(a1, a1 + 744, v159, v136, 0, &values);
                if (NodeForCursor)
                {
LABEL_281:
                  v47 = NodeForCursor;
                  goto LABEL_275;
                }

                v103 = values.value;
                if (!values.value)
                {
                  videoMentorThread_cold_1(&sampleTimingArray);
                  v47 = sampleTimingArray.duration.value;
                  goto LABEL_275;
                }

                if (*(values.value + 76) == 2)
                {
                  v104 = 0;
                  if (v101 && *(a1 + 549))
                  {
                    v105 = *(MEMORY[0x1E6960C98] + 16);
                    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C98];
                    *&sampleTimingArray.duration.epoch = v105;
                    *&sampleTimingArray.presentationTimeStamp.timescale = *(MEMORY[0x1E6960C98] + 32);
                    if (videoMentorGetCursorPTSRange(v159, &sampleTimingArray))
                    {
                      v104 = 0;
                    }

                    else
                    {
                      *&time2.start.value = *&sampleTimingArray.duration.value;
                      *&time2.start.epoch = *&sampleTimingArray.duration.epoch;
                      *&time2.duration.timescale = *&sampleTimingArray.presentationTimeStamp.timescale;
                      CMTimeRangeGetEnd(&time1, &time2);
                      time2.start = v141;
                      v104 = CMTimeCompare(&time1, &time2.start) > 0;
                    }
                  }

                  if (v101)
                  {
                    v107 = 2;
                  }

                  else
                  {
                    v107 = 3;
                  }

                  NodeForCursor = videoMentorThreadGenerateAndEnqueueFrame(a1, v159, v107, v104, v158, 1, 0, v78, v129, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v136);
                  if (NodeForCursor)
                  {
                    goto LABEL_281;
                  }

                  LOBYTE(v78) = 0;
                  v158 = 0;
                  v106 = 1;
                }

                else
                {
                  v106 = 0;
                }

                videoMentorUpdateDecoderState(a1, v103, v106);
                if (!v101)
                {
                  goto LABEL_257;
                }

                v108 = v159;
                v109 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                if (!v109)
                {
                  v47 = -12782;
                  goto LABEL_274;
                }

                v110 = v109(v108, 1, &v156);
                if (v110)
                {
                  break;
                }

                if (v156 != 1)
                {
                  v47 = FigSignalErrorAtGM();
                  goto LABEL_258;
                }

                v111 = v159;
                v112 = v160;
                v113 = *(CMBaseObjectGetVTable() + 16);
                if (v113)
                {
                  v114 = v113;
                }

                else
                {
                  v114 = 0;
                }

                if (v112 && (v115 = *(CMBaseObjectGetVTable() + 16)) != 0)
                {
                  v116 = v115;
                }

                else
                {
                  v116 = 0;
                }

                if (v114 == v116 && *(v114 + 32))
                {
                  v101 = (*(v116 + 32))(v111, v112);
                }

                else
                {
                  v101 = 0;
                }

                v30 = v140;
                if (v101 == 1)
                {
LABEL_257:
                  v47 = 0;
LABEL_258:
                  v29 = v135;
                  goto LABEL_259;
                }
              }

              v47 = v110;
LABEL_274:
              FigSignalErrorAtGM();
LABEL_275:
              v29 = v135;
              goto LABEL_152;
            }

            v47 = videoMentorThreadResendCachedSampleBuffer(a1, v160, v56, 3, v158, 0, v129, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v136);
            v29 = v135;
            v30 = v140;
            if (v47)
            {
              goto LABEL_77;
            }

LABEL_260:
            v58 = v30;
            if (v30 && !v47)
            {
              v47 = audioMentorEnqueueBufferConsumedMarker(a1, v30);
              v58 = 0;
            }

            ++*(a1 + 920);
LABEL_78:
            if (*(a1 + 492))
            {
              videoMentorPostCollectorCoherenceConduitNotification(a1);
              *(a1 + 492) = 0;
            }

            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            if (v143)
            {
              CFRelease(v143);
              v143 = 0;
            }

            if (!*a1)
            {
              v59 = @"MentorStoppingDueToCompletion";
              if (v47)
              {
                v59 = @"MentorStoppingDueToError";
              }

              if (v47 == -1)
              {
                v60 = 0;
              }

              else
              {
                v60 = v47;
              }

              if (v47 == -1)
              {
                v61 = @"MentorResettingDueToModeSwitch";
              }

              else
              {
                v61 = v59;
              }

              v62 = FigMentorNotificationPayloadCreate(v61, v136, v60, *(a1 + 520), v58, 0);
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              if (v62)
              {
                CFRelease(v62);
              }

              v30 = v140;
            }

            if (!v44)
            {
              goto LABEL_99;
            }

            goto LABEL_97;
          }

          memset(&sampleTimingArray, 0, 24);
          memset(&time2, 0, 24);
          memset(&time1, 0, sizeof(time1));
          v79 = v160;
          v80 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v80)
          {
            v47 = -12782;
            v29 = v135;
            goto LABEL_209;
          }

          v29 = v135;
          v47 = v80(v79, &sampleTimingArray);
          if (!v47)
          {
            if ((sampleTimingArray.duration.flags & 0x1D) == 1)
            {
              v81 = v160;
              v82 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (!v82)
              {
LABEL_183:
                *&time2.start.value = *MEMORY[0x1E6960CC0];
                time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
LABEL_184:
                values = sampleTimingArray.duration;
                rhs = time2.start;
                CMTimeAdd(&time1, &values, &rhs);
                FigSimpleMutexLock();
                v84 = *(a1 + 64);
                if (v84)
                {
                  v84(*(a1 + 72), v136, 0, &sampleTimingArray, &time1);
                }

                FigSimpleMutexUnlock();
                values = sampleTimingArray.duration;
                rhs = time1;
                videoMentorEnqueueTimestampIntervalMarker(a1);
                v47 = 0;
                goto LABEL_260;
              }

              v83 = v82(v81, &time2);
              if (v83)
              {
                v47 = v83;
                if (v83 == -12782)
                {
                  goto LABEL_183;
                }

                goto LABEL_209;
              }

              if ((time2.start.flags & 0x1D) == 1)
              {
                goto LABEL_184;
              }
            }

            started = FigSignalErrorAtGM();
LABEL_175:
            v47 = started;
            goto LABEL_77;
          }

LABEL_209:
          FigSignalErrorAtGM();
          goto LABEL_77;
        }
      }

      else
      {
        v47 = -12782;
      }

      goto LABEL_76;
    }

    v54 = v160;
    v55 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v55)
    {
      v47 = v55(v54, &v141);
      if (!v47)
      {
        v30 = v140;
        if ((v141.flags & 0x1D) == 1)
        {
          goto LABEL_55;
        }

        videoMentorThread_cold_2(&sampleTimingArray);
        v56 = 0;
        v47 = sampleTimingArray.duration.value;
LABEL_77:
        v58 = v30;
        goto LABEL_78;
      }
    }

    else
    {
      v47 = -12782;
    }

    FigSignalErrorAtGM();
LABEL_76:
    v56 = 0;
    v30 = v140;
    goto LABEL_77;
  }

LABEL_4:
  v2 = *(a1 + 528);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 528) = 0;
  }

  v3 = *(a1 + 536);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 536) = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}
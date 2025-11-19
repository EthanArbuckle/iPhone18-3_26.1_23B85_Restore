void *figEndpointRPCCacheAddObject(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 == *(a1 + 16))
  {
    v7 = v6 + 16;
    result = malloc_type_realloc(*(a1 + 24), 16 * (v6 + 16), 0xC6660CE8uLL);
    *(a1 + 16) = v7;
    *(a1 + 24) = result;
    v6 = *(a1 + 8);
  }

  else
  {
    result = *(a1 + 24);
  }

  result[2 * v6 + 1] = a3;
  if (a2)
  {
    v9 = CFRetain(a2);
    result = *(a1 + 24);
    v6 = *(a1 + 8);
  }

  else
  {
    v9 = 0;
  }

  result[2 * v6] = v9;
  *(a1 + 8) = v6 + 1;
  return result;
}

uint64_t FigEndpointRPCCacheCopyAvailableObjects(uint64_t a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (*(a1 + 8) >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        CFArrayAppendValue(Mutable, *(*(a1 + 24) + v5));
        ++v6;
        v5 += 16;
      }

      while (v6 < *(a1 + 8));
    }

    result = 0;
  }

  else
  {
    FigEndpointRPCCacheCopyAvailableObjects_cold_1(&v8);
    result = v8;
  }

  *a2 = Mutable;
  return result;
}

uint64_t FigRPCTimeoutRemote_KillAndForceCrashReport(mach_port_t a1, uint64_t a2, char *src)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  memset(v14, 0, 464);
  *reply_port = 0u;
  v12 = 0u;
  *(&v12 + 1) = *MEMORY[0x1E69E99E0];
  *&v13 = a2;
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v14, src, 512);
  }

  else
  {
    v4 = mig_strncpy(v14, src, 512);
  }

  DWORD2(v13) = 0;
  HIDWORD(v13) = v4;
  v5 = (v4 + 3) & 0xFFFFFFFC;
  v6 = mig_get_reply_port();
  reply_port[2] = a1;
  reply_port[3] = v6;
  reply_port[0] = 5395;
  *&v12 = 0x275C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(reply_port);
    v7 = reply_port[3];
  }

  else
  {
    v7 = v6;
  }

  v8 = mach_msg(reply_port, 3, v5 + 48, 0x2Cu, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
    return v9;
  }

  if (v8)
  {
    mig_dealloc_reply_port(reply_port[3]);
    return v9;
  }

  if (DWORD1(v12) == 71)
  {
    v9 = 4294966988;
LABEL_21:
    mach_msg_destroy(reply_port);
    return v9;
  }

  if (DWORD1(v12) != 10176)
  {
    v9 = 4294966995;
    goto LABEL_21;
  }

  v9 = 4294966996;
  if ((reply_port[0] & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  if (reply_port[1] != 36)
  {
    goto LABEL_21;
  }

  if (reply_port[2])
  {
    goto LABEL_21;
  }

  v9 = v13;
  if (v13)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t (*FigRPCTimeout_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 10079) >= 0xFFFFFFFD)
  {
    return FigRPCTimeoutServer_FigRPCTimeout_subsystem[5 * (v1 - 10076) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _XKillAndForceCrashReport(int *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if ((v6 - 561) >= 0xFFFFFDFF)
    {
      v7 = a1[11];
      v8 = v7 <= 0x200 && v6 - 48 >= v7;
      if (v8 && v6 == ((v7 + 3) & 0x7FC) + 48)
      {
        if (memchr(a1 + 12, 0, v6 - 48))
        {
          v9 = a1 + ((v6 + 3) & 0x7FC);
          if (*v9 || *(v9 + 4) < 0x20u)
          {
            result = 4294966987;
          }

          else
          {
            v10 = a1[3];
            v11 = *(a1 + 4);
            v12 = *(v9 + 36);
            v13[0] = *(v9 + 20);
            v13[1] = v12;
            result = FigRPCTimeoutServer_KillAndForceCrashReport(v10, v11, a1 + 48, v13);
          }
        }

        else
        {
          result = 4294966992;
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetFigNotePreferences(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 3 && *(a1 + 4) == 96)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 71) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 84)) && (v4 = *(a1 + 56), v4 == *(a1 + 88)) && (v5 = *(a1 + 72), v5 == *(a1 + 92)))
    {
      result = FigRPCTimeoutServer_SetFigNotePreferences(*(a1 + 12), *(a1 + 28), v3, *(a1 + 44), v4, *(a1 + 60), v5);
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XResetFigNotePreset(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 52)))
    {
      result = FigRPCTimeoutServer_ResetFigNotePreset(*(a1 + 12), *(a1 + 28), v3);
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t FigRPCTimeout_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 10079) >= 0xFFFFFFFD && (v5 = FigRPCTimeoutServer_FigRPCTimeout_subsystem[5 * (v4 - 10076) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t sntp_datestamp_subsecs_to_nsec(unint64_t a1)
{
  v1 = (a1 * 0x3B9ACA00uLL) >> 64;
  if (1000000000 * a1 < 0x8000000000000000)
  {
    return v1;
  }

  else
  {
    return (v1 + 1);
  }
}

uint64_t sntp_calc_offset(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = sntp_timestamp_to_datestamp(*(a1 + 28));
  v14 = __PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6 + __CFADD__(v8 - v4, v11) + v9, v8 - v4 + v11) - v13;
  return (__CFADD__(v14, (*(&v14 + 1) - v12) >> 63) + *(&v14 + 1) - v12) >> 1;
}

uint64_t sntp_calc_delay(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = -v9;
  v13 = sntp_timestamp_to_datestamp(*(a1 + 28));
  return v13 + ((__PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6, v8 - v4) - v11 + __PAIR128__(v12, v14)) >> 64);
}

unint64_t sntp_clock_select(unint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = 0;
  v4 = a1 + 80 * a2;
  v5 = a1;
  do
  {
    if (!*v5 && *(v5 + 37))
    {
      ++v3;
    }

    v5 += 80;
  }

  while (v5 < v4);
  result = 0;
  v7 = 0;
  v8 = 0;
  v31 = v3 >> 1;
  do
  {
    if (!*v2 && *(v2 + 37))
    {
      v32 = v8;
      v33 = v7;
      v34 = result;
      v9 = sntp_calc_delay(v2);
      v37 = v10;
      v11 = (v2 + 80);
      if (v2 + 80 >= v4)
      {
        v36 = 1;
        v35 = v2;
      }

      else
      {
        v36 = 1;
        v35 = v2;
        do
        {
          if (!*v11)
          {
            v12 = sntp_calc_offset(v2);
            v14 = v13;
            v15 = sntp_calc_offset(v11);
            v17 = v16;
            v18 = sntp_calc_delay(v2);
            v20 = v19;
            v21 = sntp_calc_delay(v11);
            if ((__PAIR128__(v18, v20) + __PAIR128__(v12, v14)) >= (__PAIR128__(v15, v17) - __PAIR128__(v21, v22)) && (__PAIR128__(v21, v22) + __PAIR128__(v15, v17)) >= (__PAIR128__(v12, v14) - __PAIR128__(v18, v20)))
            {
              ++v36;
              v23 = sntp_calc_delay(v11);
              v25 = v37;
              v26 = v35;
              if (__PAIR128__(v23, v24) < __PAIR128__(v9, v37))
              {
                v26 = v11;
              }

              v35 = v26;
              if (__PAIR128__(v23, v24) < __PAIR128__(v9, v37))
              {
                v9 = v23;
                v25 = v24;
              }

              v37 = v25;
            }
          }

          v11 += 20;
        }

        while (v11 < v4);
      }

      v8 = v32;
      v7 = v33;
      v27 = v37;
      result = v34;
      v28 = v35;
      v29 = __PAIR128__(v9, v37) < __PAIR128__(v32, v33) || v34 == 0;
      if (v29)
      {
        v30 = v9;
      }

      else
      {
        v30 = v32;
      }

      if (!v29)
      {
        v27 = v33;
        v28 = v34;
      }

      if (v36 > v31)
      {
        v7 = v27;
        v8 = v30;
        result = v28;
      }
    }

    v2 += 80;
  }

  while (v2 < v4);
  return result;
}

unint64_t sntp_packet_ntoh@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *a1;
  v6 = *(a1 + 2);
  sntp_header_ntoh(&v5, a2);
  *(a2 + 24) = sntp_timestamp_hton(*(a1 + 3));
  *(a2 + 32) = sntp_timestamp_hton(*(a1 + 4));
  result = sntp_timestamp_hton(*(a1 + 5));
  *(a2 + 40) = result;
  return result;
}

unint64_t sntp_header_ntoh@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 4) = sntp_shortstamp_ntoh(v4);
  v6 = sntp_shortstamp_ntoh(a1[2]);
  v7 = bswap32(a1[3]);
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  result = sntp_timestamp_hton(*(a1 + 2));
  *(a2 + 16) = result;
  return result;
}

__n128 sntp_client_exchange@<Q0>(int a1@<W0>, timeval *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  if (__darwin_check_fd_set_overflow(a1, &v17, 0))
  {
    *(v17.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  LOBYTE(v15[0]) = 35;
  if (a3)
  {
    *(v18 + 4) = a3();
    *(&v16 + 1) = sntp_timestamp_hton(*(v18 + 4));
  }

  if (send(a1, v15, 0x30uLL, 0) != 48)
  {
    v9 = 5;
LABEL_17:
    LODWORD(v18[0]) = v9;
    v10 = v19;
    *(a4 + 32) = v18[2];
    *(a4 + 48) = v10;
    *(a4 + 64) = v20;
    result = v18[1];
    *a4 = v18[0];
    *(a4 + 16) = result;
    return result;
  }

  if (a2 && (a2->tv_sec || a2->tv_usec) && select(a1 + 1, &v17, 0, &v17, a2) != 1)
  {
    v9 = 6;
    goto LABEL_17;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (recv(a1, &v12, 0x30uLL, 0) != 48)
  {
    v9 = 7;
    goto LABEL_17;
  }

  if (a3)
  {
    *(&v18[1] + 12) = a3();
  }

  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  sntp_client_process_response(v11, (v18 + 4), (&v18[1] + 12), a4);
  return result;
}

unint64_t sntp_client_process_response@<X0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a2)
  {
    v8 = *a2;
    *(a4 + 4) = *a2;
    v9 = HIDWORD(v8);
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  LODWORD(v9) = 0;
  LODWORD(v8) = 0;
  if (a3)
  {
LABEL_3:
    *(a4 + 28) = *a3;
  }

LABEL_4:
  v10 = *(a1 + 1);
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = *(a1 + 2);
  result = sntp_packet_ntoh(v16, v17);
  v12 = v17[1];
  *a1 = v17[0];
  *(a1 + 1) = v12;
  *(a1 + 2) = v17[2];
  *(a4 + 36) = *a1;
  *(a4 + 52) = *(a1 + 2);
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  *(a4 + 12) = v13;
  *(a4 + 20) = v14;
  if (*a1 <= 0xBFu)
  {
    if (a1[1])
    {
      if (__ROR8__(v14, 32) >= __ROR8__(v13, 32))
      {
        if (a2)
        {
          if (*(a1 + 6) != v8 || *(a1 + 7) != v9)
          {
            v15 = 10;
            goto LABEL_19;
          }

          if (a3)
          {
            result = sntp_calc_delay(a4);
            if ((result & 0x8000000000000000) != 0)
            {
              v15 = 11;
              goto LABEL_19;
            }
          }
        }

        v15 = 0;
      }

      else
      {
        v15 = 12;
      }
    }

    else
    {
      v15 = 8;
    }
  }

  else
  {
    v15 = 9;
  }

LABEL_19:
  *a4 = v15;
  return result;
}

size_t brokeredPlugin_CreateDeviceBroker(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v11 = 0;
  v3 = CFGetAllocator(a1);
  ClassID = FigHALAudioDeviceBrokerGetClassID();
  v9 = CMDerivedObjectCreate(v3, &kFigHALAudioBasicBrokerVTable, ClassID, &v11, v5, v6, v7, v8);
  if (!v9)
  {
    *CMBaseObjectGetDerivedStorage(v11) = a1;
    *(DerivedStorage + 24) = v11;
  }

  return v9;
}

uint64_t basicBroker_CreateDevice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *CMBaseObjectGetDerivedStorage(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(v8);
  v14 = 0;
  v10 = (DerivedStorage[6])(*MEMORY[0x1E695E480], DerivedStorage[1], *DerivedStorage, a3, a4, a5, &v14);
  if (!v10)
  {
    v11 = DerivedStorage[4];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __brokeredPlugin_CreateDeviceForEndpointStream_block_invoke;
    v13[3] = &__block_descriptor_tmp;
    v13[4] = DerivedStorage;
    v13[5] = v14;
    v13[6] = v8;
    dispatch_sync(v11, v13);
    FigHALAudioPropertySendChanges(*DerivedStorage, 1, 2, "#vedbolg");
  }

  return v10;
}

size_t brokeredPlugin_Initialize(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  *DerivedStorage = a2;
  v5 = DerivedStorage[7];
  if (v5)
  {
    v6 = DerivedStorage;
    v13 = 0;
    v5(*MEMORY[0x1E695E480], DerivedStorage[1], a2, &v13);
    if (v13)
    {
      v7 = v6[4];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __brokeredPlugin_Initialize_block_invoke;
      block[3] = &__block_descriptor_tmp_19;
      block[4] = v6;
      block[5] = v13;
      dispatch_sync(v7, block);
      CFRelease(v13);
    }
  }

  result = brokeredPlugin_CreateDeviceBroker(a1);
  if (!result)
  {
    v9 = CMBaseObjectGetDerivedStorage(a1);
    v10 = *(v9 + 64);
    if (!v10)
    {
      return FigHALAudioDeviceBrokerRegister(*(v9 + 16), *(v9 + 24));
    }

    v11 = CFGetAllocator(a1);
    result = v10(v11, v9 + 72);
    if (!result)
    {
      return FigHALAudioDeviceBrokerRegister(*(v9 + 16), *(v9 + 24));
    }
  }

  return result;
}

size_t brokeredPlugin_CreateBrokeredPluginObjectInternal_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBE06uLL, "<<< BrokeredHALPlugin >>>", a1, v5, v6, v7);
  *a2 = result;
  return result;
}

size_t brokeredPlugin_GetPropertyData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< BrokeredHALPlugin >>>", 0x1ED, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t brokeredPlugin_GetPropertyData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< BrokeredHALPlugin >>>", 0x1EE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t brokeredPlugin_GetPropertyData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< BrokeredHALPlugin >>>", 0x1EC, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigEndpointManagerRemoteXPC_Finalize(uint64_t a1)
{
  v50[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v11 = OUTLINED_FUNCTION_4(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v37, v39, v41, v43, SBYTE2(v43), SBYTE3(v43), SHIDWORD(v43));
  v19 = OUTLINED_FUNCTION_10(v11, v12, v13, v14, v15, v16, v17, v18, v38, v40, v42, v44, v45, v46, v47);
  if (OUTLINED_FUNCTION_6(v19))
  {
    LODWORD(v49[0]) = 136315138;
    *(v49 + 4) = "FigEndpointManagerRemoteXPC_Finalize";
    OUTLINED_FUNCTION_5();
    v1 = v48;
  }

  v20 = OUTLINED_FUNCTION_2();
  fig_log_call_emit_and_clean_up_after_send_and_compose(v20, v21, v22, v23, v24, v1, 0, v25);
  v26 = CMBaseObjectGetDerivedStorage(a1);
  v50[0] = 0;
  v49[0] = 0;
  v27 = *(v26 + 48);
  if (!v27 || (v28 = v26, remoteXPCEndpointManager_getSharedXPCClient(v49)))
  {
    v31 = 0;
  }

  else
  {
    remoteXPCEndpointManager_EmptyCaches(v28);
    v29 = v49[0];
    FigXPCRemoteClientDisassociateObject(v49[0], v27);
    v30 = FigXPCCreateBasicMessage(0x646F6F6Du, v27, v50);
    v31 = v50[0];
    if (!v30)
    {
      FigXPCRemoteClientSendSyncMessage(v29, v50[0]);
      v31 = v50[0];
    }
  }

  FigXPCRelease(v31);
  NeroValeriaListenerDestroy(*(DerivedStorage + 8));
  FigEndpointRPCCacheDispose(*(DerivedStorage + 32));
  FigEndpointRPCCacheDispose(*(DerivedStorage + 40));
  v32 = *(DerivedStorage + 24);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 24) = 0;
  }

  v33 = *(DerivedStorage + 56);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 56) = 0;
  }

  v34 = *(DerivedStorage + 64);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 64) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v35 = *(DerivedStorage + 16);
  if (v35)
  {
    dispatch_release(v35);
    *(DerivedStorage + 16) = 0;
  }

  v36 = *(DerivedStorage + 72);
  if (v36)
  {
    dispatch_release(v36);
    *(DerivedStorage + 72) = 0;
  }
}

uint64_t FigEndpointManagerRemoteXPC_CopyProperty(uint64_t a1, __CFString *a2, uint64_t a3, CFTypeRef *a4)
{
  v23 = 0;
  v24 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(@"Name", a2))
  {
    v8 = 0;
    cf = CFRetain(*DerivedStorage);
    goto LABEL_5;
  }

  cf = 0;
  p_cf = &cf;
  v27 = 0x2000000000;
  v28 = 0;
  v9 = OUTLINED_FUNCTION_3();
  v30 = 0x40000000;
  v31 = __remoteXPCEndpointManager_CopyCachedProperty_block_invoke;
  v32 = &unk_1E749CAF8;
  v33 = v10;
  v34 = DerivedStorage;
  v35 = a2;
  dispatch_sync(v9, block);
  v11 = p_cf[3];
  _Block_object_dispose(&cf, 8);
  cf = v11;
  if (v11)
  {
    goto LABEL_4;
  }

  v13 = remoteXPCEndpointManager_ensureConnected(a1, &v23, &v24);
  if (!v13)
  {
    v14 = @"AvailableEndpoints";
    if (CFEqual(@"AvailableEndpoints", a2))
    {
      v13 = FigEndpointXPCRemotePing();
      if (!v13)
      {
        v15 = a1;
        v16 = 1635148140;
LABEL_17:
        v8 = remoteXPCEndpointManager_CopyAvailableEndpoints(v15, v16, &cf);
        v21 = OUTLINED_FUNCTION_3();
        v30 = 0x40000000;
        v31 = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
        v32 = &__block_descriptor_tmp_26;
        v33 = v22;
        v34 = DerivedStorage;
        v35 = v14;
        dispatch_sync(v21, block);
        goto LABEL_5;
      }
    }

    else
    {
      v14 = @"AvailableEndpointsExtended";
      if (CFEqual(@"AvailableEndpointsExtended", a2))
      {
        v13 = FigEndpointXPCRemotePing();
        if (!v13)
        {
          v16 = 1635149176;
          v15 = a1;
          goto LABEL_17;
        }
      }

      else
      {
        v13 = FigXPCSendStdCopyPropertyMessage(v23, v24, a2, &cf, v17, v18, v19, v20);
        if (!v13)
        {
          if (CFEqual(@"EndpointPresent", a2))
          {
            remoteXPCEndpointManager_SetCachedProperty(DerivedStorage, a2, cf);
          }

LABEL_4:
          v8 = 0;
          goto LABEL_5;
        }
      }
    }
  }

  v8 = v13;
LABEL_5:
  if (a4)
  {
    *a4 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigEndpointManagerRemoteXPC_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  result = remoteXPCEndpointManager_ensureConnected(a1, &v10, &v11);
  if (!result)
  {
    return FigXPCSendStdSetPropertyMessage(v10, v11, a2, a3, v6, v7, v8, v9);
  }

  return result;
}

void remoteXPCEndpointManagerClient_DeadConnectionCallback(const void *a1)
{
  v67[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v61 = 0;
  v62 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v10 = OUTLINED_FUNCTION_8(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v44, v46, block, v49, v50, v51, v52, v53, v54, v55, type, v57);
  v11 = v57;
  v12 = os_log_type_enabled(v10, type);
  if (OUTLINED_FUNCTION_6(v12))
  {
    v63 = 136315138;
    v64 = "remoteXPCEndpointManagerClient_DeadConnectionCallback";
    LODWORD(v47) = 12;
    v45 = &v63;
    OUTLINED_FUNCTION_5();
    v11 = v57;
  }

  v13 = OUTLINED_FUNCTION_2();
  fig_log_call_emit_and_clean_up_after_send_and_compose(v13, v14, v15, v16, v17, v11, 0, v18);
  v19 = *(DerivedStorage + 16);
  block = MEMORY[0x1E69E9820];
  v49 = 0x40000000;
  v50 = __remoteXPCEndpointManagerClient_DeadConnectionCallback_block_invoke;
  v51 = &unk_1E749CAD0;
  v52 = &v58;
  v53 = DerivedStorage;
  dispatch_sync(v19, &block);
  remoteXPCEndpointManager_ResetCachedAvailableEndpoints(DerivedStorage);
  v20 = *MEMORY[0x1E695E4C0];
  v21 = *(DerivedStorage + 16);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 0x40000000;
  v67[2] = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
  v67[3] = &__block_descriptor_tmp_26;
  v67[4] = v20;
  v67[5] = DerivedStorage;
  v67[6] = @"EndpointPresent";
  dispatch_sync(v21, v67);
  v22 = *(DerivedStorage + 72);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification(v22, DefaultLocalCenter, @"EndpointManager_AvailableEndpointsChanged", a1, 0, 0, v24, v25);
  if (!remoteXPCEndpointManager_getSharedXPCClient(&v62))
  {
    v26 = FigXPCRemoteClientDisassociateObject(v62, v59[3]);
    v34 = OUTLINED_FUNCTION_8(v26, v27, v28, v29, v30, v31, v32, v33, v45, v47, block, v49, v50, v51, v52, v53, v54, v55, type, v57);
    v35 = v57;
    if (os_log_type_enabled(v34, type))
    {
      v36 = v35;
    }

    else
    {
      v36 = v35 & 0xFFFFFFFE;
    }

    if (v36)
    {
      v37 = v59[3];
      v63 = 136315394;
      v64 = "remoteXPCEndpointManagerClient_DeadConnectionCallback";
      v65 = 2048;
      v66 = v37;
      _os_log_send_and_compose_impl();
      LOBYTE(v35) = v57;
    }

    v38 = OUTLINED_FUNCTION_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose(v38, v39, v40, v41, v42, v35, 0, v43);
  }

  _Block_object_dispose(&v58, 8);
}

uint64_t remoteXPCEndpointManager_ensureConnected(uint64_t a1, uint64_t *a2, void *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  SharedXPCClient = remoteXPCEndpointManager_getSharedXPCClient(&v13);
  *(v19 + 6) = SharedXPCClient;
  if (SharedXPCClient)
  {
    v10 = SharedXPCClient;
  }

  else
  {
    OUTLINED_FUNCTION_1();
    v12[1] = 0x40000000;
    v12[2] = __remoteXPCEndpointManager_ensureConnected_block_invoke;
    v12[3] = &unk_1E749CB20;
    v8 = v13;
    v12[6] = DerivedStorage;
    v12[7] = v13;
    v12[4] = &v18;
    v12[5] = &v14;
    v12[8] = a1;
    dispatch_sync(v9, v12);
    v10 = *(v19 + 6);
    if (!v10)
    {
      if (a3)
      {
        *a3 = v15[3];
      }

      v10 = 0;
      if (a2)
      {
        *a2 = v8;
      }
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v10;
}

uint64_t remoteXPCEndpointManager_CopyAvailableEndpoints(uint64_t a1, unsigned int a2, void *a3)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v20 = 0;
  v6 = remoteXPCEndpointManager_ensureConnected(a1, &v20, &v27);
  if (!OUTLINED_FUNCTION_9(v6))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
    v8 = FigXPCCreateBasicMessage(a2, v27, &v26);
    if (!OUTLINED_FUNCTION_9(v8))
    {
      v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(v20, v26, &v25);
      if (!OUTLINED_FUNCTION_9(v9))
      {
        value = xpc_dictionary_get_value(v25, "AddedEndpoints");
        v11 = xpc_dictionary_get_value(v25, "SubtractedEndpoints");
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          if (!value)
          {
LABEL_9:
            OUTLINED_FUNCTION_1();
            v18[1] = 0x40000000;
            v18[2] = __remoteXPCEndpointManager_CopyAvailableEndpoints_block_invoke;
            v18[3] = &unk_1E749CB48;
            v19 = a2;
            v18[6] = DerivedStorage;
            v18[7] = value;
            v18[8] = v11;
            v18[4] = &v28;
            v18[5] = &v21;
            dispatch_sync(v13, v18);
            v14 = v22;
            *a3 = v22[3];
            v14[3] = 0;
            goto LABEL_10;
          }

          v12 = 0;
        }

        NeroValeriaListenerSetActiveStatus(*(DerivedStorage + 8), v12);
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  v15 = v22[3];
  if (v15)
  {
    CFRelease(v15);
  }

  FigXPCRelease(v26);
  FigXPCRelease(v25);
  v16 = *(v29 + 6);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v28, 8);
  return v16;
}

void __remoteXPCEndpointManager_ensureConnected_block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  xdict = 0;
  *v67 = 0;
  v4 = *(*(a1 + 48) + 48);
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  else
  {
    v5 = FigXPCCreateBasicMessage(0x6765706Du, 0, v67);
    OUTLINED_FUNCTION_0_0(v5);
    if (!v6)
    {
      v7 = FigXPCMessageSetCFString(*v67, "EndpointManagerType", **(a1 + 48));
      OUTLINED_FUNCTION_0_0(v7);
      if (!v8)
      {
        v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(*(a1 + 56), *v67, &xdict);
        OUTLINED_FUNCTION_0_0(v9);
        if (!v10)
        {
          uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
          *(*(*(a1 + 40) + 8) + 24) = uint64;
          if (*(*(*(a1 + 40) + 8) + 24))
          {
            v19 = OUTLINED_FUNCTION_4(uint64, v12, v13, v14, v15, v16, v17, v18, v52, v54, v56, v58, SBYTE2(v58), SBYTE3(v58), SHIDWORD(v58));
            v20 = v63;
            if (os_log_type_enabled(v19, type))
            {
              v21 = v63;
            }

            else
            {
              v21 = v63 & 0xFFFFFFFE;
            }

            if (v21)
            {
              v22 = **(a1 + 48);
              v23 = *(*(*(a1 + 40) + 8) + 24);
              v68 = 136315650;
              v69 = "remoteXPCEndpointManager_ensureConnected_block_invoke";
              v70 = 2112;
              v71 = v22;
              v72 = 2048;
              v73 = v23;
              _os_log_send_and_compose_impl();
              v20 = v63;
            }

            v33 = OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose(v33, v34, v35, v36, v37, v20, 0, v38);
            v39 = FigXPCRemoteClientAssociateObject(*(a1 + 56), *(a1 + 64), *(*(*(a1 + 40) + 8) + 24));
            OUTLINED_FUNCTION_0_0(v39);
            if (!v40)
            {
              v41 = *(a1 + 48);
              *(v41 + 48) = *(*(*(a1 + 40) + 8) + 24);
              v42 = *(v41 + 56);
              if (v42)
              {
                remoteXPCFigEndpointManager_sendSetDiscoveryMode(*(*(*(a1 + 40) + 8) + 24), *(a1 + 56), v42, *(v41 + 64));
              }
            }
          }

          else
          {
            v24 = OUTLINED_FUNCTION_4(uint64, v12, v13, v14, v15, v16, v17, v18, v52, v54, v56, v58, SBYTE2(v58), SBYTE3(v58), SHIDWORD(v58));
            v32 = OUTLINED_FUNCTION_10(v24, v25, v26, v27, v28, v29, v30, v31, v53, v55, v57, v59, v60, typea, v64);
            if (OUTLINED_FUNCTION_6(v32))
            {
              v68 = 136315138;
              v69 = "remoteXPCEndpointManager_ensureConnected_block_invoke";
              OUTLINED_FUNCTION_5();
              v1 = v65;
            }

            v43 = OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose(v43, v44, v45, v46, v47, v1, 0, v48);
            emitter = fig_log_get_emitter("com.apple.coremedia", "");
            *(*(*(a1 + 32) + 8) + 24) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<< FigEndpointManagerXPCRemote >>", 0x1C1, v2, v50, v51);
          }
        }
      }
    }
  }

  FigXPCRelease(xdict);
  FigXPCRelease(*v67);
}

uint64_t remoteXPCFigEndpointManager_sendSetDiscoveryMode(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  *v10 = 0;
  v7 = FigXPCCreateBasicMessage(0x73646D20u, a1, v10);
  if (!v7)
  {
    FigXPCMessageSetCFString(*v10, "DiscoveryMode", a3);
    FigXPCMessageSetCFDictionary(*v10, "DiscoveryOptions", a4);
    v7 = FigXPCRemoteClientSendSyncMessage(a2, *v10);
  }

  v8 = v7;
  FigXPCRelease(*v10);
  return v8;
}

uint64_t FigEndpointManagerRemoteXPC_SetDiscoveryMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v13 = 0;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v7 = remoteXPCEndpointManager_ensureConnected(a1, &v13, &v14);
  v8 = OUTLINED_FUNCTION_9(v7);
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_1();
    v12[1] = 0x40000000;
    v12[2] = __FigEndpointManagerRemoteXPC_SetDiscoveryMode_block_invoke;
    v12[3] = &unk_1E749CB70;
    v12[4] = &v15;
    v12[5] = v14;
    v12[6] = v13;
    v12[7] = a2;
    v12[8] = a3;
    v12[9] = DerivedStorage;
    dispatch_sync(v9, v12);
    v10 = *(v16 + 6);
  }

  _Block_object_dispose(&v15, 8);
  return v10;
}

uint64_t FigEndpointManagerRemoteXPC_CreateEndpointAggregate(uint64_t a1, unsigned int a2, CFTypeRef *a3)
{
  xdict = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  cf = 0;
  v5 = remoteXPCEndpointManager_ensureConnected(a1, &v9, &v12);
  if (v5 || (v5 = FigXPCCreateBasicMessage(0x63726561u, v12, &xdict), v5) || (xpc_dictionary_set_uint64(xdict, "EndpointAggregateType", a2), v5 = FigXPCRemoteClientSendSyncMessageCreatingReply(v9, xdict, &v10), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = FigEndpointXPCRemoteRetainCopiedEndpointFromReply(v10, 0, &cf);
    if (!v6)
    {
      *a3 = cf;
      cf = 0;
    }
  }

  FigXPCRelease(xdict);
  FigXPCRelease(v10);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t FigEndpointManagerRemoteXPC_CopyEndpointRemoteControlDepot(uint64_t a1, CFTypeRef *a2)
{
  v10 = 0;
  v8 = 0;
  v9 = 0;
  cf = 0;
  v7 = 0;
  if (a2)
  {
    v3 = remoteXPCEndpointManager_ensureConnected(a1, &v7, &v10);
    if (v3 || (v3 = FigXPCCreateBasicMessage(0x65726364u, v10, &v9), v3) || (v3 = FigXPCRemoteClientSendSyncMessageCreatingReply(v7, v9, &v8), v3))
    {
      v4 = v3;
    }

    else
    {
      v4 = FigEndpointXPCRemoteRetainCopiedEndpointFromReply(v8, 0, &cf);
      if (!v4)
      {
        *a2 = cf;
        cf = 0;
      }
    }
  }

  else
  {
    v4 = 4294950586;
  }

  FigXPCRelease(v9);
  FigXPCRelease(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

size_t FigEndpointManagerRemoteCreateWithType_cold_2(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBEAFuLL, "<< FigEndpointManagerXPCRemote >>", a1, v5, v6, v7);
  *a2 = result;
  return result;
}

size_t remoteXPCEndpointManager_ResetCachedAvailableEndpoints_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEAFuLL, "<< FigEndpointManagerXPCRemote >>", 0x10A, v3, v4, v5);
  *a1 = result;
  return result;
}

BOOL FigEndpointManagerRemoteCopyAirPlayManager_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEBAuLL, "<< FigEndpointManagerXPCRemote >>", 0x3AB, v3, v4, v5);
  *a1 = v6;
  return v6 == 0;
}

size_t FigWatchdogStart(uint64_t a1)
{
  if (a1)
  {
    if ((_MergedGlobals_2 & 1) == 0)
    {
      qword_1ED4CC398 = FigSimpleMutexCreate();
      qword_1ED4CC3A0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      wd_endpoint_register();
      wd_endpoint_set_alive_func();
      wd_endpoint_activate();
      _MergedGlobals_2 = 1;
    }

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_0_1();

    return FigSignalErrorAtGM(v2, v3, v4, v5, 0x7C, v6, v7, v8);
  }
}

size_t FigWatchdogMonitorDispatchQueue_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB9F5uLL, "(Fig)", 0x23, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigWatchdogMonitorDispatchQueue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_1();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x22, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigWatchdogBeginVitalWork_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB9F5uLL, "(Fig)", 0x4D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigWatchdogBeginVitalWork_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_1();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x4C, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigWatchdogBeginVitalWork_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_1();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x4B, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigWatchdogCompleteVitalWork_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB9F5uLL, "(Fig)", 0x68, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigWatchdogCompleteVitalWork_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_1();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x67, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigBaseClassRegisterClass_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0xD4, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigBaseClassRegisterClass_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xCE, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigBaseProtocolRegisterProtocol_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0xFC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigBaseProtocolRegisterProtocol_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xF9, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMDerivedObjectCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x118, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMDerivedObjectCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0x11F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMDerivedObjectCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE13uLL, "(Fig)", 0x117, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMDerivedObjectCreate_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE13uLL, "(Fig)", 0x116, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMDerivedObjectCreate_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x114, v6, v7, v8);
  *a1 = result;
  return result;
}

uint64_t FigCopyCoverageFilePathPattern(void *a1)
{
  if (qword_1ED4CC3B8 != -1)
  {
    dispatch_once(&qword_1ED4CC3B8, &__block_literal_global_1);
  }

  FigSimpleMutexLock(qword_1ED4CC3B0);
  if (_MergedGlobals_3)
  {
    v2 = CFRetain(_MergedGlobals_3);
    FigSimpleMutexUnlock(qword_1ED4CC3B0);
    if (v2)
    {
LABEL_9:
      result = 0;
      *a1 = v2;
      return result;
    }
  }

  else
  {
    FigSimpleMutexUnlock(qword_1ED4CC3B0);
  }

  v3 = getenv("LLVM_PROFILE_FILE");
  if (v3)
  {
    v2 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v3, 0x8000100u, *MEMORY[0x1E695E498]);
    goto LABEL_9;
  }

  return 4294949395;
}

size_t _FigCopyResolvedCoverageFilePath(uint64_t a1, CFStringRef *a2)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      v5 = v3();
      if (v5)
      {
        *a2 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v5, 0x8000100u, *MEMORY[0x1E695E488]);
      }

      return 0;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = v2;
    v11 = 217;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = v2;
    v11 = 216;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", v11, v10, v8, v9);
}

size_t _FigFinishUpdatingIncrementalCodeCoverageData(uint64_t (**a1)(void))
{
  if (FigCodeCoverageCollectionIsUsingContinousMode())
  {
    return 0;
  }

  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {

      return v2();
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v8 = 270;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v8 = 269;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", v8, v5, v6, v7);
}

size_t _FigBeginUpdatingIncrementalCodeCoverageData(uint64_t a1)
{
  if (FigCodeCoverageCollectionIsUsingContinousMode())
  {
    return 0;
  }

  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v2();
      return 0;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v8 = 287;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v8 = 286;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", v8, v5, v6, v7);
}

size_t _FigEnsureReadyToCollectIncrementalCoverageData_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", 0x66, v1, v2, v3);
}

size_t _FigEnsureReadyToCollectIncrementalCoverageData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA12uLL, "<<<< CodeCoverageSupport >>>>", 0x8E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t _FigEnsureReadyToCollectIncrementalCoverageData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", 0xAC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t _FigSetCoverageFilePathPattern_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA13uLL, "<<<< CodeCoverageSupport >>>>", 0xFA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t _FigSetCoverageFilePathPattern_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", 0xF4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t _FigSetCoverageFilePathPattern_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", 0xF3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t _FigSetCoverageFilePathPattern_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", 0xF2, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t FigEndpointManagerCopyActivatedEndpoints(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  BOOLean = 0;
  theArray = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v22 = 75;
LABEL_28:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFCE14uLL, "(Fig)", v22, v19, v20, v21);
LABEL_29:
    v16 = v7;
    goto LABEL_16;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v22 = 76;
    goto LABEL_28;
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v6)
  {
    Mutable = 0;
LABEL_18:
    v16 = 4294954514;
    goto LABEL_19;
  }

  v7 = v6(CMBaseObject, @"AvailableEndpoints", a2, &theArray);
  if (v7)
  {
    goto LABEL_29;
  }

  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
        v13 = FigEndpointGetCMBaseObject(ValueAtIndex);
        v14 = *(*(CMBaseObjectGetVTable(v13) + 8) + 48);
        if (!v14)
        {
          goto LABEL_18;
        }

        v15 = v14(v13, @"IsActivated", a2, &BOOLean);
        if (v15)
        {
          goto LABEL_31;
        }

        if (CFBooleanGetValue(BOOLean))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }

        if (BOOLean)
        {
          CFRelease(BOOLean);
          BOOLean = 0;
        }
      }

      while (v10 != ++v11);
    }

    v16 = 0;
    *a3 = Mutable;
LABEL_16:
    Mutable = 0;
    goto LABEL_19;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_3();
  v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCE0EuLL, "(Fig)", 0x52, v24, v25, v26);
LABEL_31:
  v16 = v15;
LABEL_19:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v16;
}

uint64_t managerUtil_copyEndpointMatchingPropertyValue(const void *a1, uint64_t a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  theArray = 0;
  if (!a1 || (v10 = CFGetTypeID(a1), v10 != FigEndpointManagerGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v27 = 118;
LABEL_33:
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCE14uLL, "(Fig)", v27, v24, v25, v26);
LABEL_34:
    v21 = v14;
    goto LABEL_24;
  }

  if (!a3 || (v11 = CFGetTypeID(a3), v11 != CFStringGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v27 = 119;
    goto LABEL_33;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v27 = 120;
    goto LABEL_33;
  }

  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v27 = 121;
    goto LABEL_33;
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject(a1);
  v13 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v13)
  {
LABEL_18:
    v21 = 4294954514;
    goto LABEL_24;
  }

  v14 = v13(CMBaseObject, @"AvailableEndpoints", a2, &theArray);
  if (v14)
  {
    goto LABEL_34;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v16 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
      v18 = CFGetAllocator(ValueAtIndex);
      v19 = FigEndpointGetCMBaseObject(ValueAtIndex);
      v20 = *(*(CMBaseObjectGetVTable(v19) + 8) + 48);
      if (!v20)
      {
        goto LABEL_18;
      }

      v14 = v20(v19, a3, v18, &cf);
      if (v14)
      {
        goto LABEL_34;
      }

      if (FigCFEqual(cf, a4))
      {
        *a5 = CFRetain(ValueAtIndex);
        goto LABEL_21;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (Count == ++v16)
      {
        v16 = Count;
        goto LABEL_21;
      }
    }
  }

  v16 = 0;
LABEL_21:
  if (v16 == Count)
  {
    v21 = 4294950583;
  }

  else
  {
    v21 = 0;
  }

LABEL_24:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

size_t FigEndpointManagerCopyEndpointsForType(const void *a1, const __CFAllocator *a2, const void *a3, __CFArray **a4)
{
  cf = 0;
  theArray = 0;
  if (!a1 || (v8 = CFGetTypeID(a1), v8 != FigEndpointManagerGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v28 = 188;
LABEL_32:
    v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 0xFFFFBEBAuLL, "(Fig)", v28, v25, v26, v27);
    goto LABEL_19;
  }

  if (!a3 || (v9 = CFGetTypeID(a3), v9 != CFStringGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v28 = 189;
    goto LABEL_32;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v28 = 190;
    goto LABEL_32;
  }

  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 0xFFFFBEB9uLL, "(Fig)", 0xC1, v30, v31, v32);
LABEL_34:
    v22 = v13;
    goto LABEL_21;
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject(a1);
  v12 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v12)
  {
    v22 = 4294954514;
    goto LABEL_21;
  }

  v13 = v12(CMBaseObject, @"AvailableEndpoints", a2, &theArray);
  if (v13)
  {
    goto LABEL_34;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_18:
    v22 = 0;
    *a4 = Mutable;
LABEL_19:
    Mutable = 0;
    goto LABEL_21;
  }

  v15 = Count;
  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
    v18 = CFGetAllocator(ValueAtIndex);
    v19 = FigEndpointGetCMBaseObject(ValueAtIndex);
    v20 = *(*(CMBaseObjectGetVTable(v19) + 8) + 48);
    if (!v20)
    {
      v22 = 4294954514;
      goto LABEL_27;
    }

    v21 = v20(v19, @"Type", v18, &cf);
    if (v21)
    {
      break;
    }

    if (FigCFEqual(cf, a3))
    {
      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v15 == ++v16)
    {
      goto LABEL_18;
    }
  }

  v22 = v21;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v22;
}

size_t FigEndpointManagerCopyEndpointForID_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "(Fig)", 0xA0, v1, v4, v5);
  *a1 = result;
  return result;
}

size_t FigEndpointManagerCopyEndpointForName_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "(Fig)", 0xAC, v1, v4, v5);
  *a1 = result;
  return result;
}

CMBlockBufferRef FigBlockBufferCreateSliceForSwiftOverlay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  blockBufferOut = 0;
  if (a1)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v6 = a2;
      if ((a2 & 0x8000000000000000) == 0)
      {
        if ((a3 + a2) > *(a1 + 40))
        {
          return 0;
        }

        else if (CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, a3, &blockBufferOut))
        {
          return blockBufferOut;
        }

        else
        {
          while (*(a1 + 32) == 1 && *(a1 + 48) == 1)
          {
            v6 += *(a1 + 56);
            a1 = *(a1 + 72);
          }

          result = blockBufferOut;
          if (a3)
          {
            *(blockBufferOut + 8) = 1;
            *(result + 5) = a3;
            *(result + 12) = 1;
            v7 = CFRetain(a1);
            result = blockBufferOut;
            *(blockBufferOut + 8) = a3;
            *(result + 9) = v7;
          }

          else
          {
            *(blockBufferOut + 12) = 0;
          }

          *(result + 7) = v6;
        }
      }
    }
  }

  return result;
}

uint64_t FigCreateBlockBufferWithDispatchDataNoCopyForSwiftOverlay(const __CFAllocator *a1, dispatch_data_t data, CMBlockBufferRef *a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = __FigCreateBlockBufferWithDispatchDataNoCopyForSwiftOverlay_block_invoke;
  applier[3] = &unk_1E749CCB0;
  applier[4] = &v12;
  dispatch_data_apply(data, applier);
  Empty = CMBlockBufferCreateEmpty(a1, *(v13 + 6), v6, a3);
  *(v17 + 6) = Empty;
  if (Empty)
  {
    v8 = Empty;
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __FigCreateBlockBufferWithDispatchDataNoCopyForSwiftOverlay_block_invoke_2;
    v10[3] = &unk_1E749CCD8;
    v10[4] = &v16;
    v10[5] = a3;
    dispatch_data_apply(data, v10);
    v8 = *(v17 + 6);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v8;
}

size_t FigBlockBufferEnumerateBlocksForSwiftOverlay_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5FuLL, "(Fig)", a1, v8, a7, a8);
  *a2 = result;
  return result;
}

BOOL fcto_Equal(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    OUTLINED_FUNCTION_0_4(&sRegisterFigCaptionTextOutlineTypeOnce);
    result = 0;
    if (a2)
    {
      if (v4 == sFigCaptionTextOutlineID)
      {
        v5 = CFGetTypeID(a2);
        OUTLINED_FUNCTION_0_4(&sRegisterFigCaptionTextOutlineTypeOnce);
        if (v5 == sFigCaptionTextOutlineID)
        {
          result = CGColorEqualToColor(*(v3 + 32), *(a2 + 32));
          if (result)
          {
            return FigGeometryDimensionEqualToDimension(*(v3 + 16), *(v3 + 24), *(a2 + 16), *(a2 + 24));
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

CFHashCode fcto_Hash(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  OUTLINED_FUNCTION_0_4(&sRegisterFigCaptionTextOutlineTypeOnce);
  if (v2 != sFigCaptionTextOutlineID)
  {
    return 0;
  }

  v3 = a1[4];

  return CFHash(v3);
}

size_t FigCaptionTextOutlineCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0x9D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCaptionTextOutlineCreateNone_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0xB6, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCardCreateInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0x291, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCardCreateInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0x289, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0x99, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC5uLL, "<<< FigVirtualCaptureCard >>>", 0x98, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0xBD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0xC1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0xBA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0xB9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t vcc_FigVirtualCaptureCardPreallocateCapacity_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC0uLL, "<<< FigVirtualCaptureCard >>>", 0x1F0, v3, v4, v5);
  *a1 = result;
  return result;
}

void vcc_FigVirtualCaptureCardPreallocateCapacity_cold_2(const __CFURL **a1, uint64_t a2, int *a3)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v7 = -17214;
  if (!FigFileGetFileInfo(*a1, v18) && !*&v18[0])
  {
    v8 = vcc_StatFileCapacity(*a1);
    v9 = a2 - v8;
    if (a2 <= v8)
    {
      if (a2 < v8)
      {
        v13 = APFSCaptureDeletePreallocFile();
        if (v13)
        {
          v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigFileDeleteFile failed for path %@, err %d", *a1, v13);
          v12 = 533;
          goto LABEL_11;
        }

        PreallocFile = APFSCaptureCreatePreallocFile();
        if (PreallocFile)
        {
          v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"APFSCaptureCreatePreallocFile failed: path %@, err %d, capacity %lld", *a1, PreallocFile, a2);
          v12 = 540;
          goto LABEL_11;
        }
      }
    }

    else
    {
      v10 = APFSCaptureExtendPreallocSizeForFile();
      if (v10)
      {
        v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"APFSCaptureExtendPreallocSizeForFile failed: path %@, err %d, growBy %lld", *a1, v10, v9);
        v12 = 525;
LABEL_11:
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", v12, v3, v16, v17);
        CFRelease(v11);
        goto LABEL_13;
      }
    }

    v7 = 0;
  }

LABEL_13:
  *a3 = v7;
}

size_t vcc_FigVirtualCaptureCardPreallocateCapacity_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0x1EF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_ReserveForCaptureToFile_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC0uLL, "<<< FigVirtualCaptureCard >>>", 0xE4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_ReserveForCaptureToFile_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0xE7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_ReserveForCaptureToFile_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0xE5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_ReserveForCaptureToFile_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0xE3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SaveCapture_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0x113, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SaveCapture_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCBFuLL, "<<< FigVirtualCaptureCard >>>", 0x111, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SaveCapture_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0x110, v3, v4, v5);
  *a1 = result;
  return result;
}

CFTypeRef FigCFStringCreateWithJSONDictionary(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return figCFStringCreateWithCFDictionaryOrCFArray(cf);
}

CFTypeRef figCFStringCreateWithCFDictionaryOrCFArray(CFTypeRef cf)
{
  v1 = cf;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    TypeID = CFDictionaryGetTypeID();
    v4 = CFGetTypeID(v1);
    v5 = CFArrayGetTypeID();
    if (v2 == TypeID || v4 == v5)
    {
      v7 = objc_autoreleasePoolPush();
      if ([MEMORY[0x1E696ACB0] isValidJSONObject:v1] && (v8 = objc_msgSend(MEMORY[0x1E696ACB0], "dataWithJSONObject:options:error:", v1, 1, 0), (v9 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", v8, 4)) != 0))
      {
        v1 = CFRetain(v9);
      }

      else
      {
        v1 = 0;
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

CFTypeRef FigCFStringCreateWithJSONArray(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFArrayGetTypeID())
  {
    return 0;
  }

  return figCFStringCreateWithCFDictionaryOrCFArray(cf);
}

uint64_t FigCreateSerializedDictionaryFromNSErrorUserInfo(const __CFDictionary *a1, __CFDictionary **a2)
{
  value = 0;
  result = 4294950436;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (CFDictionaryGetValueIfPresent(a1, *MEMORY[0x1E696A9A0], &value))
    {
      CFDictionarySetValue(Mutable, @"CFError_NetworkUnavailableReason", value);
    }

    result = 0;
    *a2 = Mutable;
  }

  return result;
}

uint64_t FigCreateNSErrorUserInfoFromSerializedDictionary(const __CFDictionary *a1, __CFDictionary **a2)
{
  value = 0;
  result = 4294950436;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      if (CFDictionaryGetValueIfPresent(a1, @"CFError_NetworkUnavailableReason", &value))
      {
        CFDictionarySetValue(v6, *MEMORY[0x1E696A9A0], value);
      }

      result = 0;
      *a2 = v6;
    }

    else
    {
      return 4294950435;
    }
  }

  return result;
}

uint64_t FigCreateCFDataFromBase64EncodedString(uint64_t a1, uint64_t *a2)
{
  result = 4294950436;
  if (a1 && a2)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:a1 options:0];
    if (v5)
    {
      v6 = v5;
      result = 0;
      *a2 = v6;
    }

    else
    {
      return 4294950436;
    }
  }

  return result;
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0x88, v1, v2, v3);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0x9A, v1, v2, v3);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0x9D, v1, v2, v3);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_4()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0xA0, v1, v2, v3);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_5()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0xA4, v1, v2, v3);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_6()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0xA9, v1, v2, v3);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_7()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0xAC, v1, v2, v3);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_8()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0xAF, v1, v2, v3);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_9()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE23uLL, "<FigFoundationUtilities>", 0x93, v1, v2, v3);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_10()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0x87, v1, v2, v3);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_11()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0x86, v1, v2, v3);
}

size_t FigTriggerTapToRadar(uint64_t a1, const __CFString *a2, uint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0x996E3u:
      v10 = 0;
      v11 = @"All";
      v12 = @"Audio - Toolbox";
      break;
    case 0x999C9u:
      v10 = 0;
      v11 = @"All";
      v12 = @"AirPlay (New Bugs)";
      break;
    case 0x999E3u:
      v10 = 0;
      v11 = @"All";
      v12 = @"CoreMedia Playback";
      break;
    default:
      OUTLINED_FUNCTION_0_5();
      if (v9)
      {
        v10 = 0;
        v11 = @"All";
        v12 = @"videocodecd triage";
      }

      else
      {
        switch(a4)
        {
          case 0xF8CFAu:
            v10 = 0;
            v11 = @"All";
            v12 = @"MediaExperience (New Bugs)";
            break;
          case 0x143C88u:
            v10 = 0;
            v11 = @"All";
            v12 = @"CoreMedia Streaming (New Bugs)";
            break;
          case 0x16FF06u:
            v10 = 0;
            v11 = @"All";
            v12 = @"CoreMedia (New Bugs)";
            break;
          case 0x16FF08u:
            v10 = 0;
            v11 = @"All";
            v12 = @"CoreMedia Formats";
            break;
          default:
            OUTLINED_FUNCTION_0_5();
            if (v9)
            {
              v10 = 0;
              v11 = @"All";
              v12 = @"audiomxd triage";
            }

            else
            {
              OUTLINED_FUNCTION_0_5();
              if (v9)
              {
                v10 = 0;
                v11 = @"All";
                v12 = @"mediaparserd triage";
              }

              else
              {
                OUTLINED_FUNCTION_0_5();
                if (v9)
                {
                  v10 = 0;
                  v11 = @"All";
                  v12 = @"mediaplaybackd triage";
                }

                else if (a4 == 629221)
                {
                  v10 = 0;
                  v11 = @"All";
                  v12 = @"CoreMedia Video Toolbox";
                }

                else
                {
                  v12 = 0;
                  v11 = 0;
                  v10 = 1;
                }
              }
            }

            break;
        }
      }

      break;
  }

  if (!FigDebugIsInternalBuild())
  {
    return 4294947925;
  }

  if (!figIsAllowedToTriggerTapToRadar())
  {
    return 4294947926;
  }

  v13 = v10 ^ 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13)
  {
    if (a2 && a3 && CFStringGetLength(a2) < 206)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = objc_alloc_init(off_1ED4CBF78[0]());
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Automatic CoreMedia Diagnostics] %@", a2];
      [v15 setTitle:v16];

      [v15 setProblemDescription:a3];
      v17 = [objc_alloc(off_1ED4CBF80()) initWithName:v12 version:v11 identifier:a4];
      [v15 setComponent:v17];
      [v15 setClassification:0];
      [v15 setReproducibility:0];
      [v15 setIsUserInitiated:0];
      v18 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"com.apple.coremedia.CoreMediaDiagnostics.CoreMediaDiagnosticExtension", 0}];
      [v15 setDiagnosticExtensionIDs:v18];

      v19 = [_MergedGlobals[0]() shared];
      v29 = 0;
      [v19 createDraft:v15 forProcessNamed:@"CoreMedia" withDisplayReason:a1 error:&v29];
      v20 = v29;

      v21 = 0;
      if (NSErrorToOSStatus())
      {
        v21 = NSErrorToOSStatus();
      }

      objc_autoreleasePoolPop(v14);
      return v21;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v26 = v4;
    v27 = 4294947923;
    v28 = 189;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v26 = v4;
    v27 = 4294947924;
    v28 = 188;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v27, "<<<< FigTTRSupport >>>>", v28, v26, v24, v25);
}

size_t CMTextFormatDescriptionGetDisplayFlags_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x85, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDisplayFlags_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x73, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetJustification_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xAB, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetJustification_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB7, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetJustification_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x92, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xE7, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xE3, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xDF, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xDB, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xD8, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xC7, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x113, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x12A, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x160, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x15B, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x156, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x151, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x148, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x143, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x13E, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x139, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x10F, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xFF, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x190, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x18D, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x18A, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x185, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x172, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x171, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t __FigPurgeAndRenewProcessStateTrackerModifyPurgeEligibilityForPID_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 44);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
  result = _os_feature_enabled_impl();
  if (result)
  {
    v6 = [_MergedGlobals_4 objectForKey:v4];
    if (v6)
    {
      if ([*(v6 + 8) setPurgeSuspended:v3])
      {
        result = 0;
        goto LABEL_5;
      }

      v9 = qword_1EAF1CC60;
      v10 = v1;
      v11 = 4294947823;
      v12 = 586;
    }

    else
    {
      v9 = qword_1EAF1CC60;
      v10 = v1;
      v11 = 4294947824;
      v12 = 581;
    }

    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<< FigPurgeAndRenewProcessStateTracker >>>", v12, v10, v7, v8);
  }

LABEL_5:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t FigPurgeAndRenewProcessStateTrackerGetTrackedState(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_0_7();
  fig_note_initialize_category_with_default_work_cf(v3, v4, v5, v6, v7, v8, 0, gFigPurgeAndRenewProcessStateTracker);
  OUTLINED_FUNCTION_0_7();
  fig_note_initialize_category_with_default_work_cf(v9, v10, v11, v12, v13, 1u, 0, v14);
  if (qword_1ED4CC3D8 != -1)
  {
    dispatch_once(&qword_1ED4CC3D8, &__block_literal_global_3);
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  if (_os_feature_enabled_impl())
  {
    v16 = [_MergedGlobals_4 objectForKey:v15];
    if (v16)
    {
      if ([*(v16 + 8) isProcessStateSuspended])
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  objc_autoreleasePoolPop(v2);
  return v17;
}

uint64_t __FigPurgeAndRenewProcessStateTrackerGetOperatorForPID_block_invoke(uint64_t a1)
{
  result = [_MergedGlobals_4 objectForKey:*(a1 + 32)];
  if (result)
  {
    result = [*(result + 8) operator];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

size_t __FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_block_invoke_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F0uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x22C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t __FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_block_invoke_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F2uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x228, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t __startProcessStateTracking_block_invoke_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F1uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x200, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t __startProcessStateTracking_block_invoke_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F1uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x1F2, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t __startProcessStateTracking_block_invoke_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F1uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x1EF, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t __startProcessStateTracking_block_invoke_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F1uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x1EC, v8, a7, a8);
  *a1 = result;
  return result;
}

uint64_t FigCAStatsReportingSubmitData(const void *a1, const void *a2, uint64_t a3, double a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (qword_1ED4CC3E8 != -1)
  {
    dispatch_once(&qword_1ED4CC3E8, &__block_literal_global_4);
  }

  v8 = 0;
  if (a1 && _MergedGlobals_5)
  {
    v9 = objc_autoreleasePoolPush();
    if (a3)
    {
      v20[1] = a3;
      v21[0] = a1;
      v20[0] = @"appName";
      v21[1] = [MEMORY[0x1E696AD98] numberWithDouble:a4];
      v10 = MEMORY[0x1E695DF20];
      v11 = v21;
      v12 = v20;
      v13 = 2;
    }

    else
    {
      v18 = @"appName";
      v19 = a1;
      v10 = MEMORY[0x1E695DF20];
      v11 = &v19;
      v12 = &v18;
      v13 = 1;
    }

    v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:v13];
    if (v14)
    {
      CFRetain(a1);
      if (a2)
      {
        CFRetain(a2);
      }

      OUTLINED_FUNCTION_1();
      v17[1] = 3221225472;
      v17[2] = __FigCAStatsReportingSubmitData_block_invoke;
      v17[3] = &unk_1E749D0A8;
      v17[4] = v14;
      v17[5] = a2;
      v17[6] = a1;
      dispatch_async(v15, v17);
      v8 = 0;
    }

    else
    {
      v8 = 4294954510;
    }

    objc_autoreleasePoolPop(v9);
  }

  return v8;
}

uint64_t FigCAStatsReportingSubmitDataDict(const void *a1, const void *a2)
{
  if (qword_1ED4CC3E8 == -1)
  {
    if (!a2)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&qword_1ED4CC3E8, &__block_literal_global_4);
    if (!a2)
    {
      return 0;
    }
  }

  if (a1 && _MergedGlobals_5)
  {
    v4 = objc_autoreleasePoolPush();
    CFRetain(a1);
    CFRetain(a2);
    OUTLINED_FUNCTION_1();
    v7[1] = 3221225472;
    v7[2] = __FigCAStatsReportingSubmitDataDict_block_invoke;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = a1;
    v7[5] = a2;
    dispatch_async(v5, v7);
    objc_autoreleasePoolPop(v4);
  }

  return 0;
}

uint64_t FigAudioDeviceGetCurrentPresentationTime(AudioObjectID inObjectID, uint64_t a2)
{
  outDataSize = 0;
  memset(v14, 0, sizeof(v14));
  if (sCheckTraceOnceToken != -1)
  {
    dispatch_once(&sCheckTraceOnceToken, &__block_literal_global_7);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_10:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v9 = 121;
    goto LABEL_12;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (inObjectID)
  {
    result = AudioObjectGetPropertyDataSize(inObjectID, "tptbbolg", 0, 0, &outDataSize);
    if (!result)
    {
      if (outDataSize == 40)
      {
        result = AudioObjectGetPropertyData(inObjectID, "tptbbolg", 0, 0, &outDataSize, v14);
        if (!result)
        {
          *a2 = *v14;
          *(a2 + 8) = *&v14[8];
          *(a2 + 24) = *&v14[24];
        }
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFB9FEuLL, "<<<< AudioDevicePresentationTime >>>>", 0x7E, v11, v12, v13);
      }
    }

    return result;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v9 = 122;
LABEL_12:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFBA00uLL, "<<<< AudioDevicePresentationTime >>>>", v9, v6, v7, v8);
}

size_t FigAudioDeviceGetCurrentDynamicLatency(AudioObjectID inObjectID, CMTime *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  outData = NAN;
  *&inAddress.mSelector = *"trsnptuo";
  inAddress.mElement = 0;
  if (sCheckTraceOnceToken == -1)
  {
    if (a2)
    {
LABEL_3:
      result = FigAudioDeviceGetCurrentPresentationTime(inObjectID, &v16);
      if (!result)
      {
        v6 = *(&v16 + 1);
        v7 = *&v17;
        ioDataSize = 8;
        result = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
        if (!result)
        {
          v8 = v6 - v7;
          if (v6 - v7 < 0.0)
          {
            v8 = -(v6 - v7);
          }

          CMTimeMake(&v12, v8, outData);
          result = 0;
          *a2 = v12;
        }
      }

      return result;
    }
  }

  else
  {
    dispatch_once(&sCheckTraceOnceToken, &__block_literal_global_10_0);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBA00uLL, "<<<< AudioDevicePresentationTime >>>>", 0xA0, v2, v10, v11);
}

size_t FigAudioDeviceSupportsPresentationTime_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBA00uLL, "<<<< AudioDevicePresentationTime >>>>", 0x49, v1, v2, v3);
}

uint64_t FigCaptionDataCopySubrange(const __CFAllocator *a1, uint64_t a2, CFIndex a3, CFIndex a4, CFTypeRef *a5)
{
  theArray = 0;
  v48 = 0;
  cf = 0;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v39 = 320;
LABEL_47:
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 0xFFFFCE14uLL, "<<<< FigCaptionData >>>>", v39, v36, v37, v38);
    goto LABEL_48;
  }

  v5 = a5;
  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v39 = 321;
    goto LABEL_47;
  }

  v10 = *(*(CMBaseObjectGetVTable(a2) + 16) + 8);
  if (v10)
  {
    v11 = v10(a2);
  }

  else
  {
    v11 = &stru_1F0B78830;
  }

  Length = CFStringGetLength(v11);
  if (a3 < 0)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v39 = 326;
    goto LABEL_47;
  }

  v13 = a3 + a4;
  if (a3 + a4 > Length)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v39 = 327;
    goto LABEL_47;
  }

  v14 = FigCaptionDataCreateMutable(a1, &v48);
  if (!v14)
  {
    v15 = *MEMORY[0x1E695E480];
    v49.location = a3;
    v49.length = a4;
    v16 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v11, v49);
    v17 = v48;
    v18 = *(*(CMBaseObjectGetVTable(v48) + 16) + 16);
    if (v18)
    {
      v19 = v18(v17, v16);
      if (v19)
      {
LABEL_42:
        v33 = v19;
        goto LABEL_32;
      }

      v20 = *(*(CMBaseObjectGetVTable(a2) + 8) + 48);
      if (v20)
      {
        v19 = v20(a2, @"StylePropertyKeysInUse", v15, &theArray);
        if (!v19)
        {
          if (!theArray || (Count = CFArrayGetCount(theArray)) == 0)
          {
LABEL_30:
            v33 = 0;
            *v5 = v48;
            v48 = 0;
            goto LABEL_32;
          }

          v21 = 0;
          v42 = v16;
          while (1)
          {
            v41 = v21;
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
            if (a4 >= 1)
            {
              break;
            }

LABEL_29:
            v21 = v41 + 1;
            if (v41 + 1 == Count)
            {
              goto LABEL_30;
            }
          }

          v22 = a3;
          while (1)
          {
            v44 = 0;
            v45 = 0;
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v23 = *(*(CMBaseObjectGetVTable(a2) + 16) + 24);
            if (!v23)
            {
              goto LABEL_31;
            }

            v19 = v23(a2, v22, ValueAtIndex, v15, &cf, &v44);
            if (v19)
            {
              goto LABEL_42;
            }

            v24 = cf;
            if (cf)
            {
              v25 = v5;
              v26 = a3;
              v27 = (v44 - a3) & ~((v44 - a3) >> 63);
              v28 = ((v44 - a3) & ((v44 - a3) >> 63)) + v45;
              v29 = a4;
              if (v28 + v27 <= a4)
              {
                v30 = v28;
              }

              else
              {
                v30 = a4 - v27;
              }

              v31 = v48;
              v32 = *(*(CMBaseObjectGetVTable(v48) + 16) + 32);
              if (!v32)
              {
                v33 = 4294954514;
                v16 = v42;
                goto LABEL_32;
              }

              v19 = v32(v31, ValueAtIndex, v24, v27, v30);
              v5 = v25;
              v16 = v42;
              a4 = v29;
              a3 = v26;
              if (v19)
              {
                goto LABEL_42;
              }
            }

            v22 = v45 + v44;
            if (v45 + v44 >= v13)
            {
              goto LABEL_29;
            }
          }
        }

        goto LABEL_42;
      }
    }

LABEL_31:
    v33 = 4294954514;
    goto LABEL_32;
  }

LABEL_48:
  v33 = v14;
  v16 = 0;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v33;
}

size_t FigCaptionDataCreate_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE14uLL, "<<<< FigCaptionData >>>>", a1, v5, v6, v7);
  *a2 = result;
  return result;
}

size_t FigProcessStateMonitorServerEnsureStartedAndCopyEndpoint(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v13 = 0;
  if (!a1)
  {
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorServer >>>>", 0x30B, v8, a7, a8);
    goto LABEL_7;
  }

  if (qword_1ED4CC418 != -1)
  {
    dispatch_once(&qword_1ED4CC418, &__block_literal_global_6);
  }

  v10 = _MergedGlobals_6;
  if (_MergedGlobals_6)
  {
    goto LABEL_7;
  }

  v10 = FigXPCServerCopyXPCEndpoint(qword_1ED4CC3F8, &v13);
  v11 = v13;
  if (!v10)
  {
    *a1 = v13;
    v13 = 0;
LABEL_7:
    v11 = 0;
  }

  FigXPCRelease(v11);
  return v10;
}

size_t FigProcessStateMonitorCreateExpiringAssertionOnBehalfOfProcessWithPID(int a1, const void *a2, uint64_t a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0;
  result = fpsmServer_copyCompanionForPID(a1, &v38);
  if (!result)
  {
    v15 = v38;
    if (*(v38 + 80))
    {
      result = figProcessStateMonitorMustNotPurgeClientObjects(v38, a2, v9, v10, v11, v12, v13, v14);
      if (!result)
      {
        if (qword_1ED4CC408 != -1)
        {
          OUTLINED_FUNCTION_2_0();
          dispatch_once_f(v32, v33, v34);
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance || (result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB419uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x392, v4, v16, v17), !result))
        {
          if (dword_1EAF1CC88)
          {
            v37 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, &v37, &type);
            v20 = v37;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v21 = v20;
            }

            else
            {
              v21 = v20 & 0xFFFFFFFE;
            }

            if (v21)
            {
              v39 = 136315650;
              v40 = "FigProcessStateMonitorCreateExpiringAssertionOnBehalfOfProcessWithPID";
              v41 = 2112;
              v42 = Instance;
              v43 = 2048;
              v44 = a3;
              _os_log_send_and_compose_impl();
              LOBYTE(v20) = v37;
            }

            OUTLINED_FUNCTION_1_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose(v22, v23, v24, v25, v26, v20, 0, v27);
          }

          v28 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v15[3]);
          v29 = dispatch_time(0, 1000000000 * a3);
          dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          v30 = FigCFWeakReferenceHolderCreateWithReferencedObject(Instance);
          dispatch_set_context(v28, v30);
          dispatch_set_finalizer_f(v28, figProcessStateMonitorPurgePreventionAssertionTimeoutFinalizer);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __FigProcessStateMonitorCreateExpiringAssertionOnBehalfOfProcessWithPID_block_invoke;
          handler[3] = &unk_1E749CE18;
          handler[4] = v28;
          dispatch_source_set_event_handler(v28, handler);
          Instance[5] = v28;
          if (a2)
          {
            v31 = CFRetain(a2);
          }

          else
          {
            v31 = 0;
          }

          Instance[3] = v31;
          Instance[4] = CFRetain(v15);
          dispatch_activate(v28);
          result = 0;
          *a4 = Instance;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t fpsmServer_copyCompanionForPID(int a1, void *a2)
{
  cf = 0;
  v5 = FigCFWeakReferenceTableCopyValues(qword_1ED4CC400, &cf);
  if (v5)
  {
    goto LABEL_16;
  }

  v6 = FigCFDictionaryCopyArrayOfKeys(cf);
  if (!v6)
  {
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB419uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x134, v2, v7, v8);
LABEL_16:
    v15 = v5;
    goto LABEL_12;
  }

  v9 = v6;
  if (CFArrayGetCount(v6) < 1)
  {
LABEL_9:
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB418uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x13E, v2, v10, v11);
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v13 = cf;
      CFArrayGetValueAtIndex(v9, v12);
      Value = FigCFDictionaryGetValue(v13);
      if (Value)
      {
        Value = CFRetain(Value);
      }

      if (Value[4] == a1)
      {
        break;
      }

      CFRelease(Value);
      if (++v12 >= CFArrayGetCount(v9))
      {
        goto LABEL_9;
      }
    }

    v15 = 0;
    *a2 = Value;
  }

  CFRelease(v9);
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

CFMutableStringRef figProcessStateMonitorServer_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v4 = Mutable;
  if (!Mutable)
  {
    return v4;
  }

  OUTLINED_FUNCTION_6_0(Mutable, v3, @"<FigProcessStateMonitorServerCompanion (%p, %d)> {\n");
  OUTLINED_FUNCTION_6_0(v5, v6, @"\tMEMRC=%@,\n");
  v7 = CFTimeZoneCopySystem();
  v8 = *MEMORY[0x1E695E480];
  StringWithDate = CFDateFormatterCreate(*MEMORY[0x1E695E480], 0, kCFDateFormatterShortStyle, kCFDateFormatterLongStyle);
  v11 = StringWithDate;
  v12 = 0;
  v13 = 0;
  if (!v7 || !StringWithDate || ((CFDateFormatterSetProperty(StringWithDate, *MEMORY[0x1E695E5D8], v7), (v14 = *(a1 + 88)) == 0) ? (v15 = 0) : (StringWithDate = CFDateFormatterCreateStringWithDate(v8, v11, v14), v15 = StringWithDate), (v16 = *(a1 + 96)) == 0 ? (v13 = 0) : (StringWithDate = CFDateFormatterCreateStringWithDate(v8, v11, v16), v13 = StringWithDate), (v17 = *(a1 + 112)) == 0 ? (v12 = 0) : (StringWithDate = CFDateFormatterCreateStringWithDate(v8, v11, v17), v12 = StringWithDate), *(a1 + 88) && !v15))
  {
    OUTLINED_FUNCTION_6_0(StringWithDate, v10, @"\t // Note: Fallback to GMT\n");
    goto LABEL_16;
  }

  if (*(a1 + 96) && !v13 || *(a1 + 112) && !v12)
  {
    OUTLINED_FUNCTION_6_0(StringWithDate, v10, @"\t // Note: Fallback to GMT\n");
    if (v15)
    {
      CFRelease(v15);
    }

LABEL_16:
    v18 = *(a1 + 88);
    if (v18)
    {
      v15 = CFRetain(v18);
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = 0;
      if (!v13)
      {
LABEL_19:
        v19 = *(a1 + 96);
        if (v19)
        {
          v13 = CFRetain(v19);
          if (!v12)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v13 = 0;
          if (!v12)
          {
LABEL_22:
            v20 = *(a1 + 112);
            if (v20)
            {
              v12 = CFRetain(v20);
            }

            else
            {
              v12 = 0;
            }

            goto LABEL_29;
          }
        }

        CFRelease(v12);
        goto LABEL_22;
      }
    }

    CFRelease(v13);
    goto LABEL_19;
  }

LABEL_29:
  v21 = *(a1 + 80);
  if (*(a1 + 80) && (FigPurgeAndRenewProcessStateTrackerGetTrackedState(*(a1 + 16)), v22 = FigReentrantMutexTryLock(*(a1 + 64)), !v22))
  {
    OUTLINED_FUNCTION_6_0(v22, v23, @"N/A}");
    if (!v7)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Count = CFArrayGetCount(*(a1 + 48));
    OUTLINED_FUNCTION_6_0(Count, v25, @"\tENRD=%@, AC=%ld, PS=%s, MRP=%lld@%@,\n");
    if (*(a1 + 120))
    {
      OUTLINED_FUNCTION_6_0(v26, v27, @"\t!!!! SPE=%lld SPD=%@\n");
    }

    OUTLINED_FUNCTION_6_0(v26, v27, @"}");
    if (v21)
    {
      FigReentrantMutexUnlock(*(a1 + 64));
    }

    if (!v7)
    {
      goto LABEL_37;
    }
  }

  CFRelease(v7);
LABEL_37:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v4;
}

void __figProcessStateMonitorHandleEnrollInPurge_block_invoke(uint64_t a1, uint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v80 = 0;
  dataPointerOut = 0;
  if (dword_1EAF1CC88)
  {
    v5 = OUTLINED_FUNCTION_0_8();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v5, 1, v6, v7);
    if (OUTLINED_FUNCTION_7(os_log_and_send_and_compose_flags_and_os_log_type, v9, v10, v11, v12, v13, v14, v15, v67, v68, block, v70, v71, v72, v73, v74, v75, v76, v77, type, v79))
    {
      v16 = v2;
    }

    else
    {
      v16 = v2 & 0xFFFFFFFE;
    }

    if (v16)
    {
      v17 = *(a1 + 32);
      v82 = 136315394;
      v83 = "figProcessStateMonitorHandleEnrollInPurge_block_invoke";
      v84 = 2048;
      v85 = v17;
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_send_and_compose_impl();
      v2 = v79;
    }

    OUTLINED_FUNCTION_1_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose(v18, v19, v20, v21, v22, v2, 0, v23);
  }

  v24 = fpsmServer_copyCompanionForPID(a2, &v80);
  v25 = v80;
  if (v24)
  {
    if (v80)
    {
LABEL_29:
      CFRelease(v25);
    }
  }

  else
  {
    if (v80)
    {
      if (dword_1EAF1CC88)
      {
        v26 = OUTLINED_FUNCTION_0_8();
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v26, 1, v27, v28);
        if (OUTLINED_FUNCTION_7(v29, v30, v31, v32, v33, v34, v35, v36, v67, v68, block, v70, v71, v72, v73, v74, v75, v76, v77, type, v79))
        {
          v37 = v2;
        }

        else
        {
          v37 = v2 & 0xFFFFFFFE;
        }

        if (v37)
        {
          v82 = 136315394;
          v83 = "figProcessStateMonitorHandleEnrollInPurge_block_invoke";
          v84 = 2114;
          v85 = v25;
          OUTLINED_FUNCTION_3_0();
          OUTLINED_FUNCTION_4_0();
          _os_log_send_and_compose_impl();
          LOBYTE(v2) = v79;
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v38, v39, v40, v41, v42, v2, 0, v43);
      }

      FigReentrantMutexLock(*(v25 + 64));
      if (*(v25 + 56))
      {
        FigReentrantMutexUnlock(*(v25 + 64));
        if (!CMBlockBufferGetDataPointer(*(v25 + 40), 0, 0, 0, &dataPointerOut))
        {
          if ((dataPointerOut & 0xF) != 0)
          {
            OUTLINED_FUNCTION_5_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, 0xFFFFB416uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x1DC, v64, v65, v66);
          }

          else
          {
            v44 = *(v25 + 24);
            block = MEMORY[0x1E69E9820];
            v70 = 3221225472;
            v71 = __figProcessStateMonitorHandleEnrollInPurge_block_invoke_41;
            v72 = &__block_descriptor_52_e5_v8__0l;
            LODWORD(v75) = a2;
            v73 = v25;
            v74 = dataPointerOut;
            dispatch_sync(v44, &block);
            v45 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"event=%lld, stickyCouldNotPurgeAllObjects=%d", *(v25 + 72), *(v25 + 120));
            if (v45)
            {
              v46 = v45;
              FigPerformanceMonitorAddToReclamationEventLog(a2, v45);
              CFRelease(v46);
            }

            else
            {
              v47 = OUTLINED_FUNCTION_0_8();
              v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v47, 0, v48, v49);
              v51 = v79;
              if (os_log_type_enabled(v50, type))
              {
                v53 = v51;
              }

              else
              {
                v53 = v51 & 0xFFFFFFFE;
              }

              if (v53)
              {
                v82 = 136315138;
                v83 = "figProcessStateMonitorHandleEnrollInPurge_block_invoke";
                OUTLINED_FUNCTION_3_0();
                OUTLINED_FUNCTION_4_0();
                v54 = _os_log_send_and_compose_impl();
                LOBYTE(v51) = v79;
              }

              else
              {
                v54 = 0;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 0, 1, v54, v54 != &v86, v51, 0, v52);
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, 0xFFFFB415uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x1D5, v60, v61, v62);
        FigReentrantMutexUnlock(*(v25 + 64));
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_5_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v55, 0xFFFFB418uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x1CE, v56, v57, v58);
  }
}

size_t figProcessStateMonitorMustNotPurgeClientObjects_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorServer >>>>", 0x199, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figProcessStateMonitorMustNotPurgeClientObjects_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorServer >>>>", 0x198, v8, a7, a8);
  *a1 = result;
  return result;
}

void __FigProcessStateMonitorEnsureServerStarted_block_invoke_cold_1(unint64_t *a1, const void *a2)
{
  _MergedGlobals_6 = FigXPCServerStartWithNewXPCEndpoint("ProcessStateMonitorServer", a1, a2, &qword_1ED4CC3F8);
  if (!_MergedGlobals_6)
  {
    Default = CFAllocatorGetDefault();
    _MergedGlobals_6 = FigCFWeakReferenceTableCreate(Default, 1, &qword_1ED4CC400);
  }

  CFRelease(a2);
}

size_t __FigProcessStateMonitorEnsureServerStarted_block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB419uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x2F5, v8, a7, a8);
  _MergedGlobals_6 = result;
  return result;
}

uint64_t FigVideoFormatDescriptionGetMVHEVCVideoLayerIDs(const opaqueCMFormatDescription *a1, uint64_t *a2, uint64_t *a3)
{
  tagCollectionsOut = 0;
  CMFormatDescriptionGetMediaType(a1);
  OUTLINED_FUNCTION_5_1();
  if (!v7 && CMFormatDescriptionGetMediaType(a1) != 1635088502)
  {
    goto LABEL_69;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v7 = MediaSubType == 1667524657 || MediaSubType == 1667790435;
  v8 = v7 || MediaSubType == 1684895096;
  v9 = v8 || MediaSubType == 1685481521;
  v10 = v9 || MediaSubType == 1685481573;
  v11 = v10 || MediaSubType == 1718908520;
  v12 = v11 || MediaSubType == 1718908528;
  v13 = v12 || MediaSubType == 1751479857;
  v14 = v13 || MediaSubType == 1752589105;
  v15 = v14 || MediaSubType == 1836415073;
  v16 = v15 || MediaSubType == 1869117027;
  v17 = v16 || MediaSubType == 1902405681;
  v18 = v17 || MediaSubType == 1902405733;
  v19 = v18 || MediaSubType == 1902407032;
  v20 = v19 || MediaSubType == 1902667126;
  v21 = v20 || MediaSubType == 1902998904;
  if (!v21 && MediaSubType != 1902671459)
  {
    goto LABEL_69;
  }

  CMVideoFormatDescriptionCopyTagCollectionArray(a1, &tagCollectionsOut);
  if (!tagCollectionsOut)
  {
    v27 = 0;
    v31 = 0;
    return v27 & v31;
  }

  Count = CFArrayGetCount(tagCollectionsOut);
  if (Count >= 1)
  {
    v24 = Count;
    v25 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(tagCollectionsOut, v25);
      if (FigTagCollectionContainsTag(ValueAtIndex, *"seye\a", 1))
      {
        break;
      }

      if (v24 == ++v25)
      {
        v27 = 0;
        goto LABEL_65;
      }
    }

    OUTLINED_FUNCTION_8_0();
    if (FigTagCollectionGetTagsWithCategory(ValueAtIndex, 1986814329))
    {
      v28 = 0;
    }

    else
    {
      v28 = v34 == 1;
    }

    if (!v28)
    {
      goto LABEL_69;
    }

    *a2 = FigTagGetSInt64Value(v35, v36);
    v27 = 1;
LABEL_65:
    v29 = 0;
    while (1)
    {
      v30 = CFArrayGetValueAtIndex(tagCollectionsOut, v29);
      if (FigTagCollectionContainsTag(v30, *"seye\a", 2))
      {
        break;
      }

      if (v24 == ++v29)
      {
        goto LABEL_68;
      }
    }

    OUTLINED_FUNCTION_8_0();
    if (FigTagCollectionGetTagsWithCategory(v30, 1986814329))
    {
      v32 = 0;
    }

    else
    {
      v32 = v34 == 1;
    }

    if (!v32)
    {
LABEL_68:
      v31 = 0;
      goto LABEL_76;
    }

    *a3 = FigTagGetSInt64Value(v35, v36);
    v31 = 1;
  }

  else
  {
LABEL_69:
    v31 = 0;
    v27 = 0;
  }

LABEL_76:
  if (tagCollectionsOut)
  {
    CFRelease(tagCollectionsOut);
  }

  return v27 & v31;
}

size_t FigVideoFormatDescriptionCopyVEXUExtensions(const opaqueCMFormatDescription *a1, __CFDictionary **a2)
{
  v18[12] = *MEMORY[0x1E69E9840];
  v18[0] = @"HasLeftStereoEyeView";
  v18[1] = @"HasRightStereoEyeView";
  v18[2] = @"HasEyeViewsReversed";
  v18[3] = @"HasAdditionalViews";
  v18[4] = @"HeroEye";
  v18[5] = @"StereoCameraBaseline";
  v18[6] = @"HorizontalDisparityAdjustment";
  v18[7] = @"ProjectionKind";
  v18[8] = @"ViewPackingKind";
  v18[9] = @"TransportIdentifier";
  v18[10] = @"HorizontalFieldOfView";
  v18[11] = @"CameraCalibrationDataLensCollection";
  CMFormatDescriptionGetMediaType(a1);
  OUTLINED_FUNCTION_5_1();
  if (v4 || CMFormatDescriptionGetMediaType(a1) == 1635088502)
  {
    v5 = 0;
    Mutable = 0;
    v7 = *MEMORY[0x1E695E480];
    v8 = MEMORY[0x1E695E9D8];
    v9 = MEMORY[0x1E695E9E8];
    while (1)
    {
      v10 = v18[v5];
      Extension = CMFormatDescriptionGetExtension(a1, v10);
      if (Extension)
      {
        v12 = Extension;
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(v7, 0, v8, v9);
          if (!Mutable)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_2();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE59uLL, "(Fig)", 0x4CF, v15, v16, v17);
            goto LABEL_10;
          }
        }

        CFDictionarySetValue(Mutable, v10, v12);
      }

      if (++v5 == 12)
      {
        goto LABEL_9;
      }
    }
  }

  Mutable = 0;
LABEL_9:
  result = 0;
LABEL_10:
  *a2 = Mutable;
  return result;
}

const opaqueCMFormatDescription *FigVideoCreateBlockBufferAndFormatDescriptionForHoistingInStreamParameterSets(const opaqueCMFormatDescription *a1, OpaqueCMBlockBuffer *a2, unint64_t a3, void *a4)
{
  parameterSetPointers[20] = *MEMORY[0x1E69E9840];
  formatDescriptionOut = 0;
  blockBufferOut = 0;
  bzero(parameterSetPointers, 0xA0uLL);
  bzero(parameterSetSizes, 0xA0uLL);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v11 = MediaSubType;
  valuePtr = MediaSubType;
  v57 = MediaSubType == 1667524657 || MediaSubType == 1667790435 || MediaSubType == 1684895096 || MediaSubType == 1685481521 || MediaSubType == 1685481573 || MediaSubType == 1718908520 || MediaSubType == 1718908528 || MediaSubType == 1751479857 || MediaSubType == 1752589105 || MediaSubType == 1836415073 || MediaSubType == 1869117027 || MediaSubType == 1902405681 || MediaSubType == 1902405733 || MediaSubType == 1902407032 || MediaSubType == 1902667126 || MediaSubType == 1902671459 || MediaSubType == 1902998904;
  Dimensions = CMVideoFormatDescriptionGetDimensions(a1);
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v75 = 1271;
LABEL_160:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v71, 0xFFFFCE5AuLL, "(Fig)", v75, v72, v73, v74);
    OUTLINED_FUNCTION_6_1();
    a2 = 0;
    goto LABEL_161;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v76, 0xFFFFCE5AuLL, "(Fig)", 0x4F8, v77, v78, v79);
    OUTLINED_FUNCTION_6_1();
    goto LABEL_157;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, 0xFFFFCE5AuLL, "(Fig)", 0x4F9, v81, v82, v83);
    OUTLINED_FUNCTION_6_1();
LABEL_161:
    a3 = 0;
    goto LABEL_162;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v75 = 1274;
    goto LABEL_160;
  }

  v87 = v11;
  v84 = a3;
  *width = Dimensions;
  desc = a1;
  *a3 = 0;
  v86 = a4;
  *a4 = 0;
  DataLength = CMBlockBufferGetDataLength(a2);
  if (!DataLength)
  {
    a3 = 0;
LABEL_100:
    switch(v87)
    {
      case 0x61766333u:
        v47 = 1635148593;
        break;
      case 0x64766865u:
        v47 = 1685481521;
        break;
      case 0x68657631u:
        v47 = 1752589105;
        break;
      case 0x71646865u:
        v47 = 1902405681;
        break;
      case 0x71686576u:
        v47 = 1902671459;
        break;
      default:
        v47 = v87;
        break;
    }

    if (a3)
    {
      v48 = *MEMORY[0x1E695E480];
      Extensions = CMFormatDescriptionGetExtensions(a1);
      MutableCopy = FigCFDictionaryCreateMutableCopy(v48, Extensions);
      Value = CFDictionaryGetValue(MutableCopy, @"SampleDescriptionExtensionAtoms");
      v4 = FigCFDictionaryCreateMutableCopy(v48, Value);
      if (v57)
      {
        v51 = FigVideoFormatDescriptionCreateUpdatedFromHEVCParameterSets(v48, a1, a3, parameterSetPointers, parameterSetSizes, 4u, &formatDescriptionOut);
        if (v51)
        {
LABEL_114:
          a1 = v51;
LABEL_157:
          a2 = 0;
LABEL_162:
          v44 = 0;
          goto LABEL_139;
        }
      }

      else
      {
        v51 = CMVideoFormatDescriptionCreateFromH264ParameterSets(v48, a3, parameterSetPointers, parameterSetSizes, 4, &formatDescriptionOut);
        if (v51)
        {
          goto LABEL_114;
        }
      }

      v52 = CMFormatDescriptionGetExtensions(formatDescriptionOut);
      v53 = CFDictionaryGetValue(v52, @"SampleDescriptionExtensionAtoms");
      CFDictionaryApplyFunction(v52, sFigTransferDictionaryValues, MutableCopy);
      CFDictionaryApplyFunction(v53, sFigTransferDictionaryValues, v4);
      CFDictionarySetValue(MutableCopy, @"SampleDescriptionExtensionAtoms", v4);
      CFDictionaryRemoveValue(MutableCopy, @"VerbatimISOSampleEntry");
      CFDictionaryRemoveValue(MutableCopy, @"VerbatimSampleDescription");
      if (v47 == valuePtr)
      {
        a2 = 0;
      }

      else
      {
        a2 = CFNumberCreate(v48, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(MutableCopy, @"OriginalCodec", a2);
      }

      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
        formatDescriptionOut = 0;
      }
    }

    else
    {
      if (v47 == v87)
      {
        a2 = 0;
        v4 = 0;
        MutableCopy = 0;
        goto LABEL_125;
      }

      v48 = *MEMORY[0x1E695E480];
      v54 = CMFormatDescriptionGetExtensions(a1);
      MutableCopy = FigCFDictionaryCreateMutableCopy(v48, v54);
      a2 = CFNumberCreate(v48, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(MutableCopy, @"OriginalCodec", a2);
      v4 = 0;
    }

    v55 = CMVideoFormatDescriptionCreate(v48, v47, width[0], width[1], MutableCopy, &formatDescriptionOut);
    if (v55)
    {
      a1 = v55;
      goto LABEL_162;
    }

LABEL_125:
    v56 = blockBufferOut;
    if (blockBufferOut)
    {
      v56 = CFRetain(blockBufferOut);
    }

    *v86 = v56;
    if (formatDescriptionOut && !CMFormatDescriptionEqual(desc, formatDescriptionOut))
    {
      v44 = 0;
      a1 = 0;
      *v84 = FigFormatDescriptionRetain(formatDescriptionOut);
    }

    else
    {
      v44 = 0;
      a1 = 0;
    }

    goto LABEL_139;
  }

  v30 = DataLength;
  a3 = 0;
  v31 = 0;
  v32 = *MEMORY[0x1E695E480];
  blockAllocator = *MEMORY[0x1E695E488];
  v88 = *MEMORY[0x1E695E480];
  while (1)
  {
    destination = 0;
    v92 = 0;
    if (v31 + 5 > v30)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v62 = 4294954554;
      v63 = 1289;
LABEL_136:
      appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v62, "(Fig)", v63, v59, v60, v61);
LABEL_137:
      a1 = appended;
      v44 = 0;
      goto LABEL_138;
    }

    appended = CMBlockBufferCopyDataBytes(a2, v31, 4uLL, &destination);
    if (appended)
    {
      goto LABEL_137;
    }

    v34 = bswap32(destination);
    destination = v34;
    if (v31 + 4 + v34 > v30)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v62 = 4294954554;
      v63 = 1296;
      goto LABEL_136;
    }

    appended = CMBlockBufferCopyDataBytes(a2, v31 + 4, 1uLL, &v92);
    if (appended)
    {
      goto LABEL_137;
    }

    if (v57)
    {
      v35 = (v92 >> 1) & 0x3F;
      v92 = (v92 >> 1) & 0x3F;
      if ((v35 - 32) >= 3)
      {
        if (v35 == 39)
        {
          v36 = 0;
          v37 = v31 + 4 + destination;
          v91 = 0;
          v38 = v31 + 7;
          while (1)
          {
            appended = CMBlockBufferCopyDataBytes(a2, v38 - 1, 1uLL, &v91);
            if (appended)
            {
              goto LABEL_137;
            }

            v36 += v91;
            if (v91 != 255 || v38++ >= v37)
            {
              if ((v36 - 137) <= 0xA && ((1 << (v36 + 119)) & 0x481) != 0)
              {
                v32 = v88;
                goto LABEL_78;
              }

              v32 = v88;
              break;
            }
          }
        }

LABEL_95:
        if (blockBufferOut)
        {
          appended = CMBlockBufferAppendBufferReference(blockBufferOut, a2, v31, destination + 4, 0);
          if (appended)
          {
            goto LABEL_137;
          }
        }

        goto LABEL_97;
      }
    }

    else
    {
      v92 &= 0x1Fu;
      if (v92 - 7 >= 2)
      {
        goto LABEL_95;
      }
    }

LABEL_78:
    v41 = destination + 4;
    if (v41 <= 6)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v62 = 4294954554;
      v63 = 1344;
      goto LABEL_136;
    }

    if (!blockBufferOut)
    {
      if (v31)
      {
        appended = CMBlockBufferCreateWithBufferReference(v32, a2, 0, v31, 0, &blockBufferOut);
        if (appended)
        {
          goto LABEL_137;
        }
      }

      else
      {
        appended = CMBlockBufferCreateEmpty(v32, 0, 0, &blockBufferOut);
        if (appended)
        {
          goto LABEL_137;
        }
      }
    }

    if (a3 >= 0x14)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v62 = 4294954554;
      v63 = 1359;
      goto LABEL_136;
    }

    v42 = destination;
    parameterSetSizes[a3] = destination;
    v43 = malloc_type_malloc(v42, 0x26CE5BA1uLL);
    parameterSetPointers[a3] = v43;
    if (!v43)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v62 = 4294954510;
      v63 = 1362;
      goto LABEL_136;
    }

    appended = CMBlockBufferCopyDataBytes(a2, v31 + 4, destination, v43);
    if (appended)
    {
      goto LABEL_137;
    }

    v44 = malloc_type_malloc(v41, 0x21758ECBuLL);
    if (!v44)
    {
      break;
    }

    v45 = CMBlockBufferCopyDataBytes(a2, v31, 4uLL, v44);
    if (v45)
    {
      goto LABEL_154;
    }

    memset(v44 + 5, 255, v41 - 6);
    if (v57)
    {
      v44[5] = 1;
      v46 = 76;
    }

    else
    {
      v46 = 12;
    }

    v44[4] = v46;
    v44[v41 - 1] = 0x80;
    appended = CMBlockBufferAppendMemoryBlock(blockBufferOut, v44, v41, blockAllocator, 0, 0, v41, 0);
    if (appended)
    {
      goto LABEL_137;
    }

    ++a3;
LABEL_97:
    v31 += destination + 4;
    if (v31 >= v30)
    {
      goto LABEL_100;
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_1_2();
  v45 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, 0xFFFFCE0EuLL, "(Fig)", 0x559, v68, v69, v70);
LABEL_154:
  a1 = v45;
LABEL_138:
  MutableCopy = 0;
  v4 = 0;
  a2 = 0;
LABEL_139:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (a3)
  {
    v64 = parameterSetPointers;
    do
    {
      v65 = *v64++;
      free(v65);
      --a3;
    }

    while (a3);
  }

  free(v44);
  return a1;
}

uint64_t sFigGetDolbyVisionProfileAndCompatibilityIDIfGiven(const opaqueCMFormatDescription *a1, _BYTE *a2, _BYTE *a3)
{
  result = CMFormatDescriptionGetExtension(a1, @"SampleDescriptionExtensionAtoms");
  if (result)
  {
    v6 = result;
    v7 = CFGetTypeID(result);
    if (v7 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    Value = CFDictionaryGetValue(v6, @"dvvC");
    if (Value)
    {
      v9 = Value;
      BytePtr = CFDataGetBytePtr(Value);
      if (CFDataGetLength(v9) <= 8)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v16 = 1513;
        goto LABEL_17;
      }

      if (*BytePtr != 1 || BytePtr[1] != 0)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v16 = 1525;
LABEL_17:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE5AuLL, "(Fig)", v16, v13, v14, v15);
        return 0;
      }
    }

    else
    {
      result = CFDictionaryGetValue(v6, @"dvcC");
      if (!result)
      {
        return result;
      }

      v17 = result;
      BytePtr = CFDataGetBytePtr(result);
      if (CFDataGetLength(v17) <= 8)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v16 = 1534;
        goto LABEL_17;
      }

      if ((*BytePtr & 0xFD) != 1 || BytePtr[1] != 0)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v16 = 1546;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      *a2 = BytePtr[2] >> 1;
    }

    if (a3)
    {
      *a3 = BytePtr[4] >> 4;
    }

    return 1;
  }

  return result;
}

uint64_t FigVideoFormatDescriptionConformsToDolbyVisionProfile81(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_4_1(a1);
  result = OUTLINED_FUNCTION_9_0();
  if (v2)
  {
    if (v4 == 8)
    {
      return v3 == 1;
    }
  }

  return result;
}

uint64_t FigVideoFormatDescriptionConformsToDolbyVisionProfile10p0(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_4_1(a1);
  result = OUTLINED_FUNCTION_9_0();
  if (v2)
  {
    if (v4 == 10)
    {
      return v3 == 0;
    }
  }

  return result;
}

uint64_t FigVideoFormatDescriptionConformsToDolbyVisionProfile10p1(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_4_1(a1);
  result = OUTLINED_FUNCTION_9_0();
  if (v2)
  {
    if (v4 == 10)
    {
      return v3 == 1;
    }
  }

  return result;
}

uint64_t FigVideoFormatDescriptionConformsToDolbyVisionProfile10p4(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_4_1(a1);
  result = OUTLINED_FUNCTION_9_0();
  if (v2)
  {
    if (v4 == 10)
    {
      return v3 == 4;
    }
  }

  return result;
}

uint64_t CMVideoFormatDescriptionGetVideoDynamicRange(const opaqueCMFormatDescription *a1)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (!a1)
  {
    return 0;
  }

  v10 = MediaSubType;
  if (MediaSubType == 1684108849 || MediaSubType == 1902403958)
  {
    return 6;
  }

  if (MediaSubType == 1667524657 || MediaSubType == 1684895096 || MediaSubType == 1685481521 || MediaSubType == 1685481573 || MediaSubType == 1902405681 || MediaSubType == 1902407032 || MediaSubType == 1902405733)
  {
    v36 = OUTLINED_FUNCTION_7_0(MediaSubType, v3, v4, v5, v6, v7, v8, v9, v51, *v52, *&v52[4], 0, 0);
    if (v55 != 20 || v36 == 0)
    {
      return 5;
    }

    else
    {
      return 10;
    }
  }

  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F30]);
  v20 = FigCFEqual(Extension, @"SMPTE_ST_2084_PQ");
  if (!v20)
  {
    v28 = FigCFEqual(Extension, @"ITU_R_2100_HLG");
    if (!v28)
    {
      return !Extension || FigCFEqual(Extension, @"ITU_R_2020") || FigCFEqual(Extension, @"SMPTE_ST_428_1") || FigCFEqual(Extension, *MEMORY[0x1E6965F50]) || FigCFEqual(Extension, *MEMORY[0x1E6965F68]) || FigCFEqual(Extension, *MEMORY[0x1E6965F80]) || FigCFEqual(Extension, @"IEC_sRGB") != 0;
    }

    v48 = OUTLINED_FUNCTION_7_0(v28, v29, v30, v31, v32, v33, v34, v35, v51, *v52, *&v52[4], 0, 0);
    result = 2;
    if (!v48 || v54 != 4)
    {
      return result;
    }

    if (v57 != 10)
    {
      if (v57 == 8)
      {
        if (FigVideoCodecTypeIsHEVCFlavor(v10))
        {
          return 3;
        }

        else
        {
          return 2;
        }
      }

      return result;
    }

    v49 = v10 == 1902212657 || v10 == 1635135537;
    v50 = 7;
LABEL_92:
    if (v49)
    {
      return v50;
    }

    else
    {
      return result;
    }
  }

  v38 = OUTLINED_FUNCTION_7_0(v20, v21, v22, v23, v24, v25, v26, v27, v51, *v52, *&v52[4], 0, 0);
  result = 4;
  if (!v38 || v53 != 1)
  {
    return result;
  }

  if (v56 == 10)
  {
    v49 = v10 == 1902212657 || v10 == 1635135537;
    v50 = 9;
    goto LABEL_92;
  }

  if (v56 == 8)
  {
    v39 = v10 == 1667790435 || v10 == 1718908520;
    v40 = v39 || v10 == 1718908528;
    v41 = v40 || v10 == 1751479857;
    v42 = v41 || v10 == 1752589105;
    v43 = v42 || v10 == 1836415073;
    v44 = v43 || v10 == 1869117027;
    v45 = v44 || v10 == 1902667126;
    v46 = v45 || v10 == 1902998904;
    if (v46 || v10 == 1902671459)
    {
      return 8;
    }
  }

  return result;
}

size_t CMVideoFormatDescriptionGetPlaintextMediaSubTypeAndEncryptionScheme(const opaqueCMFormatDescription *a1, int *a2, int *a3)
{
  v4 = 1852796517;
  v58 = 1852796517;
  if (!a1)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v56 = v3;
    v57 = 1685;
    goto LABEL_162;
  }

  CMFormatDescriptionGetMediaType(a1);
  OUTLINED_FUNCTION_5_1();
  if (!v9)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v56 = v3;
    v57 = 1687;
LABEL_162:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "(Fig)", v57, v56, v54, v55);
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v59 = MediaSubType;
  if ((MediaSubType - 1885430579 > 0x3D || (OUTLINED_FUNCTION_2_1(), v9)) && (MediaSubType - 1902207795 > 0x3D || (OUTLINED_FUNCTION_2_1(), v9)) && (MediaSubType - 1902212657 > 0x34 || ((1 << (MediaSubType - 49)) & 0x14000000000001) == 0) && (MediaSubType - 2053202739 > 0x3D || (OUTLINED_FUNCTION_2_1(), v9)) && (MediaSubType != 1633771875 ? (v9 = MediaSubType == 1667312947) : (v9 = 1), !v9 ? (v10 = MediaSubType == 1667326307) : (v10 = 1), !v10 ? (v11 = MediaSubType == 1667326824) : (v11 = 1), !v11 ? (v12 = MediaSubType == 1667326832) : (v12 = 1), !v12 ? (v13 = MediaSubType == 1667330147) : (v13 = 1), !v13 ? (v14 = MediaSubType == 1667331683) : (v14 = 1), !v14 ? (v15 = MediaSubType == 1667524657) : (v15 = 1), !v15 ? (v16 = MediaSubType == 1667574579) : (v16 = 1), !v16 ? (v17 = MediaSubType == 1667575091) : (v17 = 1), !v17 ? (v18 = MediaSubType == 1667656803) : (v18 = 1), !v18 ? (v19 = MediaSubType == 1667790435) : (v19 = 1), !v19 ? (v20 = MediaSubType == 1668047203) : (v20 = 1), !v20 ? (v21 = MediaSubType == 1668641633) : (v21 = 1), !v21 ? (v22 = MediaSubType == 1685220713) : (v22 = 1), !v22 ? (v23 = MediaSubType == 1700886115) : (v23 = 1), !v23 ? (v24 = MediaSubType == 1701733217) : (v24 = 1), !v24 ? (v25 = MediaSubType == 1701733238) : (v25 = 1), !v25 ? (v26 = MediaSubType == 1869117027) : (v26 = 1), !v26 ? (v27 = MediaSubType == 1882599480) : (v27 = 1), !v27 ? (v28 = MediaSubType == 1885430115) : (v28 = 1), !v28 ? (v29 = MediaSubType == 1885547315) : (v29 = 1), !v29 ? (v30 = MediaSubType == 1885692723) : (v30 = 1), !v30 ? (v31 = MediaSubType == 1886745441) : (v31 = 1), !v31 ? (v32 = MediaSubType == 1902207331) : (v32 = 1), !v32 ? (v33 = MediaSubType == 1902211171) : (v33 = 1), !v33 ? (v34 = MediaSubType == 1902324531) : (v34 = 1), !v34 ? (v35 = MediaSubType == 1902403958) : (v35 = 1), !v35 ? (v36 = MediaSubType == 1902405681) : (v36 = 1), !v36 ? (v37 = MediaSubType == 1902405733) : (v37 = 1), !v37 ? (v38 = MediaSubType == 1902407032) : (v38 = 1), !v38 ? (v39 = MediaSubType == 1902469939) : (v39 = 1), !v39 ? (v40 = MediaSubType == 1902537827) : (v40 = 1), !v40 ? (v41 = MediaSubType == 1902667126) : (v41 = 1), !v41 ? (v42 = MediaSubType == 1902671459) : (v42 = 1), !v42 ? (v43 = MediaSubType == 1902928227) : (v43 = 1), !v43 ? (v44 = MediaSubType == 1902998904) : (v44 = 1), !v44 ? (v45 = MediaSubType == 1903522657) : (v45 = 1), !v45 ? (v46 = MediaSubType == 1903587385) : (v46 = 1), !v46 ? (v47 = MediaSubType == 2053202275) : (v47 = 1), !v47 ? (v48 = MediaSubType == 2054517601) : (v48 = 1), !v48 ? (v49 = MediaSubType == 2053319475) : (v49 = 1), !v49 ? (v50 = MediaSubType == 2053464883) : (v50 = 1), !v50 ? (v51 = MediaSubType == 2053923171) : (v51 = 1), !v51))
  {
    if (MediaSubType == 2053207651)
    {
      v59 = 1635148593;
      v4 = 2053467747;
    }
  }

  else
  {
    result = FigBridge_GetPlaintextMediaSubTypeAndEncryptionSchemeFromProtectedCodecType(MediaSubType, &v59, &v58);
    if (result)
    {
      return result;
    }

    if (v58 == 1667392306)
    {
      v4 = 1667392371;
    }

    else
    {
      v4 = v58;
    }
  }

  if (a2)
  {
    *a2 = v59;
  }

  result = 0;
  if (a3)
  {
    *a3 = v4;
  }

  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3E2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3DE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3DD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3DC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3DB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3D8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x41C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x418, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x417, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x416, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x415, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x412, v3, v4, v5);
  *a1 = result;
  return result;
}

void figMobileAsset_QueryMostRecentAsset(const void *a1, int a2, int a3, int a4, const __CFDictionary *a5, const void *a6, const void *a7)
{
  if (a2 <= 1)
  {
    v31 = v7;
    v32 = v8;
    v16 = objc_autoreleasePoolPush();
    v17 = [[sMAAssetQueryClass alloc] initWithType:a1];
    if (a5)
    {
      CFDictionaryApplyFunction(a5, figMobileAsset_AddFilterToQuery, v17);
    }

    [v17 setDoNotBlockBeforeFirstUnlock:1];
    if (a4)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    [v17 returnTypes:v18];
    if (a1)
    {
      CFRetain(a1);
    }

    if (a5)
    {
      CFRetain(a5);
    }

    if (a6)
    {
      CFRetain(a6);
    }

    if (a7)
    {
      CFRetain(a7);
    }

    OUTLINED_FUNCTION_3_1();
    v20 = 3221225472;
    v21 = __figMobileAsset_QueryMostRecentAsset_block_invoke;
    v22 = &unk_1E749DAE0;
    v30 = a4;
    v23 = v17;
    v24 = a1;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a3;
    v29 = a2;
    [v17 queryMetaData:v19];
    objc_autoreleasePoolPop(v16);
  }
}

uint64_t CMNotificationCenterAddListener(__CFNotificationCenter *a1, const void *a2, void (__cdecl *a3)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef), const __CFString *a4, unint64_t a5)
{
  if (!a1)
  {
    return 4294954575;
  }

  if (!a3)
  {
    return 4294954576;
  }

  if (!a2)
  {
    return 4294954573;
  }

  if (!(a4 | a5))
  {
    return 4294954571;
  }

  CFNotificationCenterAddObserver(a1, a2, a3, a4, a5, 0);
  return 0;
}

uint64_t CMNotificationCenterRemoveListener(__CFNotificationCenter *a1, const void *a2, int a3, CFNotificationName name, void *object)
{
  if (!a1)
  {
    return 4294954575;
  }

  if (!a2)
  {
    return 4294954573;
  }

  CFNotificationCenterRemoveObserver(a1, a2, name, object);
  return 0;
}

size_t CMNotificationCenterPostNotification(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294954575;
  }

  if (!a2)
  {
    return 4294954574;
  }

  if (!a3)
  {
    return 4294954572;
  }

  if (cf && (v5 = CFGetTypeID(cf), v5 != CFDictionaryGetTypeID()))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE4CuLL, "(Fig)", 0x3C2, v4, v19, v20);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_0_10();
    FigNotificationCenterSupportWillPostNotification(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_0_10();
    CFNotificationCenterPostNotification(v9, v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_0_10();
    FigNotificationCenterSupportDidPostNotification(v14, v15, v16);
    return 0;
  }
}

size_t FigNotificationCenterAddWeakListener_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE4AuLL, "(Fig)", 0x2C5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigNotificationCenterAddWeakListener_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE4AuLL, "(Fig)", 0x2C2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigNotificationCenterAddWeakListener_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE4AuLL, "(Fig)", 0x2BB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigNotificationCenterRemoveWeakListener_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE4AuLL, "(Fig)", 0x311, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigDispatchAsyncPostNotification_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4AuLL, "(Fig)", 0x156, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigDispatchAsyncPostNotification_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4BuLL, "(Fig)", 0x153, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigDispatchAsyncPostNotification_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4FuLL, "(Fig)", 0x152, v8, a7, a8);
  *a1 = result;
  return result;
}

void sBufTrackOtherToMakeDataReady(size_t a1, uint64_t a2, int a3)
{
  sBufReleaseMakeDataReady(a1);
  if (a2)
  {
    while (*(a2 + 40) == 4)
    {
      a2 = *(a2 + 48);
    }

    v6 = *(a2 + 28);
    if (!(sBufTransitionDataReady(a1, v6, *(a2 + 32), a3) | v6))
    {
      *(a1 + 40) = 4;
      *(a1 + 48) = CFRetain(a2);
    }
  }
}

uint64_t sBufTransitionDataReady(size_t a1, unsigned int a2, int a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  if (FigAtomicCompareAndSwap32(0, a2, (a1 + 28)))
  {
    if (a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = a2 == 2;
    }

    if (v8)
    {
      a3 = -16750;
    }

    *(a1 + 32) = a3;
    sBufReleaseMakeDataReady(a1);
    figSampleBufferCheckDataSize(a1);
    if (a4)
    {
      if (a2 == 1)
      {
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification(DefaultLocalCenter, @"FigSampleBufferDataBecameReady", a1, 0);
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt32(Mutable, @"OSStatus", a3, v12, v13, v14, v15, v16);
        v17 = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification(v17, @"CMSampleBufferDataFailed", a1, Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }

    return 0;
  }

  else if (*(a1 + 28) == 1)
  {
    return 4294954564;
  }

  else
  {
    return 4294950546;
  }
}

void sBufPokeTrackedSampleBufferForDataReadyTransition(size_t a1)
{
  if (*(a1 + 40) == 4)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = CFRetain(v2);
      if (v3)
      {
        v4 = v3;
        sBufTransitionDataReady(a1, *(v3 + 7), *(v3 + 8), 1);

        CFRelease(v4);
      }
    }
  }
}

OSStatus CMSampleBufferTrackDataReadiness(CMSampleBufferRef sbuf, CMSampleBufferRef sampleBufferToTrack)
{
  if (!sbuf)
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954565;
    v8 = 4418;
    goto LABEL_5;
  }

  if (*(sbuf + 25) || sampleBufferToTrack && *(sampleBufferToTrack + 25))
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954552;
    v8 = 4423;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< SampleBuffer >>>>", v8, v6, v2, v3);
  }

  v10 = *(sbuf + 7);
  if (v10 == 2)
  {
    v5 = qword_1EAF1CCE0;
    v7 = *(sbuf + 8);
    v6 = v4;
    v8 = 4434;
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954564;
    v8 = 4431;
    goto LABEL_5;
  }

  if (sbuf != sampleBufferToTrack)
  {
    sBufTrackOtherToMakeDataReady(sbuf, sampleBufferToTrack, 1);
  }

  return 0;
}

OSStatus CMSampleBufferCopyPCMDataIntoAudioBufferList(CMSampleBufferRef sbuf, int32_t frameOffset, int32_t numFrames, AudioBufferList *bufferList)
{
  if (!sbuf)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954565;
    v29 = 5954;
LABEL_35:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v28, "<<<< SampleBuffer >>>>", v29, v25, v26, v27);
  }

  if (!bufferList)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954565;
    v29 = 5955;
    goto LABEL_35;
  }

  if (CMFormatDescriptionGetMediaType(*(sbuf + 10)) != 1936684398)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954555;
    v29 = 5956;
    goto LABEL_35;
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(sbuf + 10));
  if (!StreamBasicDescription)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954586;
    v29 = 5959;
    goto LABEL_35;
  }

  v9 = StreamBasicDescription;
  if (StreamBasicDescription->mFormatID != 1819304813)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954554;
    v29 = 5960;
    goto LABEL_35;
  }

  v10 = *(sbuf + 11);
  if (v10 <= frameOffset)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954562;
    v29 = 5962;
    goto LABEL_35;
  }

  if (!numFrames)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954565;
    v29 = 5963;
    goto LABEL_35;
  }

  if (v10 < numFrames + frameOffset)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954562;
    v29 = 5964;
    goto LABEL_35;
  }

  v11 = *(sbuf + 2);
  if (!v11)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954563;
    v29 = 5966;
    goto LABEL_35;
  }

  if (*(sbuf + 7) != 1)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954563;
    v29 = 5967;
    goto LABEL_35;
  }

  mFormatFlags = v9->mFormatFlags;
  mBytesPerFrame = v9->mBytesPerFrame;
  mChannelsPerFrame = v9->mChannelsPerFrame;
  v15 = (mBytesPerFrame * numFrames);
  LODWORD(v16) = bufferList->mNumberBuffers;
  if ((mFormatFlags & 0x20) == 0)
  {
    if (v16 != 1)
    {
      goto LABEL_48;
    }

    goto LABEL_17;
  }

  if (v16 != mChannelsPerFrame)
  {
LABEL_48:
    OUTLINED_FUNCTION_0_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x1759, v31, v32, v33);
    return 0;
  }

  if (mChannelsPerFrame)
  {
    LODWORD(v16) = v9->mChannelsPerFrame;
    mChannelsPerFrame = 1;
LABEL_17:
    v16 = v16;
    p_mData = &bufferList->mBuffers[0].mData;
    do
    {
      if (*(p_mData - 2) != mChannelsPerFrame)
      {
        OUTLINED_FUNCTION_0_11();
        v28 = 4294954565;
        v29 = 5980;
        goto LABEL_35;
      }

      if (*(p_mData - 1) != v15)
      {
        OUTLINED_FUNCTION_0_11();
        v28 = 4294954565;
        v29 = 5981;
        goto LABEL_35;
      }

      if (!*p_mData)
      {
        OUTLINED_FUNCTION_0_11();
        v28 = 4294954565;
        v29 = 5982;
        goto LABEL_35;
      }

      p_mData += 2;
      --v16;
    }

    while (v16);
    if ((mFormatFlags & 0x20) != 0)
    {
      goto LABEL_26;
    }

    mData = bufferList->mBuffers[0].mData;

    return CMBlockBufferCopyDataBytes(v11, (mBytesPerFrame * frameOffset), v15, mData);
  }

LABEL_26:
  if (!v9->mChannelsPerFrame)
  {
    return 0;
  }

  v20 = 0;
  v21 = (mBytesPerFrame * frameOffset);
  v22 = &bufferList->mBuffers[0].mData;
  v23 = v10 * mBytesPerFrame;
  while (1)
  {
    result = CMBlockBufferCopyDataBytes(*(sbuf + 2), v21, v15, *v22);
    if (result)
    {
      break;
    }

    ++v20;
    v22 += 2;
    v21 += v23;
    if (v20 >= v9->mChannelsPerFrame)
    {
      return 0;
    }
  }

  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x960, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3CuLL, "<<<< SampleBuffer >>>>", 0x961, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x9DC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x977, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x962, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x95F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3EuLL, "<<<< SampleBuffer >>>>", 0x95E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x95D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figSampleBufferCreateForImageBufferCallbackOrHandler_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3BuLL, "<<<< SampleBuffer >>>>", 0xA62, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figSampleBufferCreateForImageBufferCallbackOrHandler_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xA63, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figSampleBufferCreateForImageBufferCallbackOrHandler_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xA61, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figSampleBufferCreateForImageBufferCallbackOrHandler_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xA60, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figSampleBufferCreateForImageBufferCallbackOrHandler_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xA5F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForCaptionGroup_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB0F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForCaptionGroup_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB10, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForCaptionGroup_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB11, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForCaptionGroup_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB0E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t sBufCreate_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0x7F9, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t sBufCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0x7F5, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t sBufCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0x7F1, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForTaggedBufferGroup_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB44, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForTaggedBufferGroup_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB45, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForTaggedBufferGroup_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB43, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateForTaggedBufferGroup_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB78, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateForTaggedBufferGroup_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3BuLL, "<<<< SampleBuffer >>>>", 0xB7A, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateForTaggedBufferGroup_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB7E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateForTaggedBufferGroup_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB79, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateForTaggedBufferGroup_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB77, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateCopyWithNewTiming_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3EuLL, "<<<< SampleBuffer >>>>", 0xC84, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateCopyWithNewSizesAndDataBuffer_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE39uLL, "<<<< SampleBuffer >>>>", 0xCD0, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateCopyWithNewSizesAndDataBuffer_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3EuLL, "<<<< SampleBuffer >>>>", 0xCD3, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCopySampleBufferForRange_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0xF87, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCopySampleBufferForRange_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0xF76, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataReadyWithNewSize_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3CuLL, "<<<< SampleBuffer >>>>", 0x1057, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataReadyWithNewSize_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3CuLL, "<<<< SampleBuffer >>>>", 0x1058, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataReadyWithNewSize_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x105B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataReadyWithNewSize_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x105A, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataReadyWithNewSize_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x1056, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataFailed_cold_1(size_t a1, int a2, int *a3)
{
  result = sBufTransitionDataReady(a1, 2u, a2, 1);
  if (result == -16750)
  {
    v9 = qword_1EAF1CCE0;
    v10 = v3;
    v8 = -16750;
    v11 = 4294950546;
    v12 = 4269;
    goto LABEL_5;
  }

  v8 = result;
  if (result == -12732)
  {
    v9 = qword_1EAF1CCE0;
    v10 = v3;
    v8 = -12732;
    v11 = 4294954564;
    v12 = 4265;
LABEL_5:
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< SampleBuffer >>>>", v12, v10, v6, v7);
  }

  *a3 = v8;
  return result;
}

uint64_t CMSampleBufferInvalidate_cold_1(size_t a1, _BYTE *a2)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    (*(v4 + 16))(v4, a1);
  }

  *a2 = 1;

  return sBufTransitionDataReady(a1, 2u, -16751, 0);
}

char *CMSampleBufferSetDataBufferFromAudioBufferList_cold_1(CMBlockBufferRef *a1, char **dataPointerOut, _DWORD *a3, size_t a4)
{
  result = CMBlockBufferGetDataPointer(*a1, 0, 0, 0, dataPointerOut);
  if (*a3)
  {
    v8 = 0;
    result = *dataPointerOut;
    v9 = 4;
    do
    {
      memcpy(result, *&a3[v9], a4);
      result = &(*dataPointerOut)[a4];
      *dataPointerOut = result;
      ++v8;
      v9 += 4;
    }

    while (v8 < *a3);
  }

  return result;
}

size_t FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0x1877, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C3, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE39uLL, "<<<< SampleBuffer >>>>", 0x18CD, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C8, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C5, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C4, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C2, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C1, v8, a7, a8);
  *a1 = result;
  return result;
}

uint64_t HandleEndpointStreamRemoteMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v48 = 0;
  v47 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v48);
  if (OpCode)
  {
    return OpCode;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  *&v59 = 0;
  v8 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &v59, &v47);
  if (!v8)
  {
    if (v59)
    {
      v9 = CFGetTypeID(v59);
      if (v9 == FigEndpointStreamGetTypeID())
      {
        v10 = v59;
        goto LABEL_6;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 0xFFFFBE88uLL, "<< FigEndpointStreamXPCServer >>", 0xE9, v44, v45, v46);
  }

  v21 = v8;
  if (v59)
  {
    CFRelease(v59);
  }

  if (!v21)
  {
    v10 = 0;
LABEL_6:
    if (v48 == 778268793)
    {
      CMTime = FigXPCHandleStdCopyPropertyMessage(v10, a2, a3);
      goto LABEL_35;
    }

    if (v48 == 779314548)
    {
      CMTime = FigXPCHandleStdSetPropertyMessage(v10, a2);
      goto LABEL_35;
    }

    if (v48 != 1668572772)
    {
      switch(v48)
      {
        case 1937072484:
          *&v59 = 0;
          CMBaseObject = FigEndpointStreamGetCMBaseObject(v10);
          v26 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
          if (!v26)
          {
            goto LABEL_44;
          }

          v14 = v26(CMBaseObject, @"SupportedAudioFormatDescriptions", *MEMORY[0x1E695E480], &v59);
          v15 = v59;
          if (!v14)
          {
            v16 = FigXPCMessageSetFigEndpointStreamAudioFormatDescriptionArray(a3, "FormatDescriptionArray", v59);
LABEL_32:
            v21 = v16;
            v15 = v59;
            if (!v59)
            {
              goto LABEL_66;
            }

LABEL_33:
            v27 = v15;
LABEL_55:
            CFRelease(v27);
            goto LABEL_66;
          }

          break;
        case 1718383987:
          *&v59 = 0;
          v18 = FigXPCMessageCopyCFDictionary(a2, "Options", &v59);
          if (!v18)
          {
            v22 = xpc_dictionary_get_uint64(a2, "FlushFlags");
            v23 = v59;
            v24 = *(*(CMBaseObjectGetVTable(v10) + 16) + 24);
            if (!v24)
            {
              goto LABEL_53;
            }

            v18 = v24(v10, v22, v23);
          }

          goto LABEL_48;
        case 1886611044:
          LOBYTE(v57) = 0;
          *&v59 = 0;
          v18 = FigXPCMessageCopyFigEndpointStreamAudioFormatDescription(*MEMORY[0x1E695E480], a2, "FormatDescription", &v59);
          if (v18)
          {
            goto LABEL_48;
          }

          if (*(*(CMBaseObjectGetVTable(v10) + 24) + 32))
          {
            v37 = OUTLINED_FUNCTION_2_3();
            v21 = v38(v37);
            if (!v21)
            {
              xpc_dictionary_set_BOOL(a3, "IsPassthroughSupported", v57 != 0);
            }

LABEL_54:
            v27 = v59;
            if (!v59)
            {
              goto LABEL_66;
            }

            goto LABEL_55;
          }

LABEL_53:
          v21 = 4294954514;
          goto LABEL_54;
        case 1918985828:
          *&v59 = 0;
          v12 = FigEndpointStreamGetCMBaseObject(v10);
          v13 = *(*(CMBaseObjectGetVTable(v12) + 8) + 48);
          if (!v13)
          {
            goto LABEL_44;
          }

          v14 = v13(v12, @"RichestAudioFormatDescription", *MEMORY[0x1E695E480], &v59);
          v15 = v59;
          if (!v14)
          {
            v16 = FigXPCMessageSetFigEndpointStreamAudioFormatDescription(a3, "RichestFormatDescription", v59);
            goto LABEL_32;
          }

          break;
        case 1920169325:
          v17 = v47;
          *&v59 = 0;
          v18 = FigXPCMessageCopyCFDictionary(a2, "Options", &v59);
          if (!v18)
          {
            CreateCompletionCallbackParametersFromMessageAndConnection(a2, a1);
            OUTLINED_FUNCTION_1_4();
            if (*(*(CMBaseObjectGetVTable(v10) + 16) + 16))
            {
              v19 = OUTLINED_FUNCTION_2_3();
              v21 = v20(v19);
              if (!v21)
              {
                *v17 = 1;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }

LABEL_48:
          v21 = v18;
          goto LABEL_54;
        case 1936875892:
          v28 = v47;
          v55 = *&kCMTimeInvalid.value;
          v56 = 0;
          v53 = *&kCMTimeInvalid.value;
          v54 = 0;
          v29 = xpc_dictionary_get_double(a2, "Rate");
          CMTime = FigXPCMessageGetCMTime(a2, "SampleTime", &v55);
          if (CMTime)
          {
            goto LABEL_35;
          }

          CMTime = FigXPCMessageGetCMTime(a2, "HostTime", &v53);
          if (CMTime)
          {
            goto LABEL_35;
          }

          CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(a2, a1);
          *v28 = 0;
          if (CompletionCallbackParametersFromMessageAndConnection)
          {
            v31 = SetRateAndAnchorTimeCallback;
          }

          else
          {
            v31 = 0;
          }

          v51 = v55;
          v52 = v56;
          v49 = v53;
          v50 = v54;
          v32 = *(CMBaseObjectGetVTable(v10) + 24);
          if (v32)
          {
            v33 = *(v32 + 16);
            if (v33)
            {
              v59 = v51;
              v60 = v52;
              v57 = v49;
              v58 = v50;
              CMTime = v33(v10, &v59, &v57, v31, CompletionCallbackParametersFromMessageAndConnection, v29);
              goto LABEL_35;
            }
          }

LABEL_44:
          v21 = 4294954514;
          goto LABEL_66;
        case 1936945252:
          v34 = v47;
          *&v59 = 0;
          v18 = FigXPCMessageCopyCFDictionary(a2, "Options", &v59);
          if (v18)
          {
            goto LABEL_48;
          }

          CreateCompletionCallbackParametersFromMessageAndConnection(a2, a1);
          *v34 = 0;
          OUTLINED_FUNCTION_1_4();
          if (*(*(CMBaseObjectGetVTable(v10) + 16) + 8))
          {
            v35 = OUTLINED_FUNCTION_2_3();
            v18 = v36(v35);
            goto LABEL_48;
          }

          goto LABEL_53;
        case 1685024621:
          CMTime = FigXPCServerDisassociateObjectWithConnection(a1, uint64);
LABEL_35:
          v21 = CMTime;
          goto LABEL_66;
        default:
          v21 = 4294950536;
LABEL_66:
          if (v10)
          {
            CFRelease(v10);
          }

          return v21;
      }

      v21 = v14;
      if (!v15)
      {
        goto LABEL_66;
      }

      goto LABEL_33;
    }

    *&v59 = 0;
    *&v57 = 0;
    v39 = FigXPCMessageCopyFigEndpointStreamAudioFormatDescription(*MEMORY[0x1E695E480], a2, "FormatDescription", &v59);
    if (!v39)
    {
      if (!*(*(CMBaseObjectGetVTable(v10) + 24) + 24))
      {
        v21 = 4294954514;
LABEL_63:
        if (v59)
        {
          CFRelease(v59);
        }

        v27 = v57;
        if (!v57)
        {
          goto LABEL_66;
        }

        goto LABEL_55;
      }

      v40 = OUTLINED_FUNCTION_2_3();
      v39 = v41(v40);
      if (!v39)
      {
        v39 = FigXPCMessageSetFigEndpointStreamAudioFormatDescription(a3, "FormatDescription", v57);
      }
    }

    v21 = v39;
    goto LABEL_63;
  }

  return v21;
}

void SuspendResumeCompletionCallback(uint64_t a1, int a2, uint64_t a3)
{
  xdict = 0;
  if (a3 && !FigXPCCreateBasicMessage(0x63616C62u, *(a3 + 8), &xdict))
  {
    xpc_dictionary_set_uint64(xdict, "CompletionID", *a3);
    xpc_dictionary_set_int64(xdict, "CompletionStatus", a2);
    xpc_connection_send_message(*(a3 + 16), xdict);
  }

  DestroyCompletionCallbackParameters(a3);
  FigXPCRelease(xdict);
}

void SetRateAndAnchorTimeCallback(double a1, uint64_t a2, int a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  xdict = 0;
  if (a6 && !FigXPCCreateBasicMessage(0x63616C62u, *(a6 + 8), &xdict))
  {
    xpc_dictionary_set_uint64(xdict, "CompletionID", *a6);
    xpc_dictionary_set_int64(xdict, "CompletionStatus", a3);
    xpc_dictionary_set_double(xdict, "Rate", a1);
    v11 = *a4;
    v12 = *(a4 + 2);
    FigXPCMessageSetCMTime(xdict, "SampleTime", &v11);
    v11 = *a5;
    v12 = *(a5 + 2);
    FigXPCMessageSetCMTime(xdict, "HostTime", &v11);
    xpc_connection_send_message(*(a6 + 16), xdict);
  }

  DestroyCompletionCallbackParameters(a6);
  FigXPCRelease(xdict);
}

size_t FigXPCEndpointStreamServerAssociateNeighborFigEndpointStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE88uLL, "<< FigEndpointStreamXPCServer >>", 0x2D3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CreateEndpointStreamServerState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE87uLL, "<< FigEndpointStreamXPCServer >>", 0xD6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCEndpointStreamServerAssociateCopiedNeighborFigEndpointStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE88uLL, "<< FigEndpointStreamXPCServer >>", 0x2E9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCEndpointStreamServerAssociateCopiedEndpointStreamWithNeighborProcessByPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE88uLL, "<< FigEndpointStreamXPCServer >>", 0x2FF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigXPCEndpointStreamServerRetainEndpointStreamForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< FigEndpointStreamXPCServer >>", 0x316, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CreateCompletionCallbackParametersFromMessageAndConnection_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE87uLL, "<< FigEndpointStreamXPCServer >>", 0x107, v1, v2, v3);
}

const __CFURL *FigCopyRedactedURLFromURL(const __CFURL *a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    if (fur_ensureLoggingInitialized_sOnceToken != -1)
    {
      dispatch_once(&fur_ensureLoggingInitialized_sOnceToken, &__block_literal_global_9);
    }

    v4 = objc_autoreleasePoolPush();
    if (a2)
    {
      v5 = CFURLGetString(v2);
      if (!v5)
      {
        v2 = 0;
        goto LABEL_10;
      }

      v6 = CFRetain(v5);
    }

    else
    {
      v6 = fur_redactURL(v2);
    }

    v2 = v6;
LABEL_10:
    objc_autoreleasePoolPop(v4);
  }

  return v2;
}

__CFString *FigCopyRedactedURLFromString(__CFString *a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    if (fur_ensureLoggingInitialized_sOnceToken != -1)
    {
      dispatch_once(&fur_ensureLoggingInitialized_sOnceToken, &__block_literal_global_9);
    }

    v4 = objc_autoreleasePoolPush();
    if (a2)
    {
      v2 = CFRetain(v2);
    }

    else
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v2];
      v6 = v5;
      if (v5)
      {
        v2 = fur_redactURL(v5);
      }

      else
      {
        v2 = @"<redacted (not a URL)>";
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  return v2;
}

void FigGeometryPointMakeFromDictionary(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_0_14(a1);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_2_4(v3);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValueIfPresent(v2, @"x", &value))
      {
        if (CFDictionaryGetValueIfPresent(v2, @"y", &cf))
        {
          if (value)
          {
            v5 = CFGetTypeID(value);
            if (v5 == CFDictionaryGetTypeID())
            {
              if (cf)
              {
                v6 = CFGetTypeID(cf);
                if (v6 == CFDictionaryGetTypeID())
                {
                  v7 = FigGeometryDimensionMakeFromDictionary(value);
                  v15 = OUTLINED_FUNCTION_1_5(v7, v8, v9, v10, v11, v12, v13, v14, cf);
                  *v1 = v6;
                  v1[1] = v4;
                  v1[2] = v15;
                  v1[3] = v16;
                }
              }
            }
          }
        }
      }
    }
  }
}

void FigGeometrySizeMakeFromDictionary(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_0_14(a1);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_2_4(v3);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValueIfPresent(v2, @"width", &value))
      {
        if (CFDictionaryGetValueIfPresent(v2, @"height", &cf))
        {
          if (value)
          {
            v5 = CFGetTypeID(value);
            if (v5 == CFDictionaryGetTypeID())
            {
              if (cf)
              {
                v6 = CFGetTypeID(cf);
                if (v6 == CFDictionaryGetTypeID())
                {
                  v7 = FigGeometryDimensionMakeFromDictionary(value);
                  v15 = OUTLINED_FUNCTION_1_5(v7, v8, v9, v10, v11, v12, v13, v14, cf);
                  *v1 = v6;
                  v1[1] = v4;
                  v1[2] = v15;
                  v1[3] = v16;
                }
              }
            }
          }
        }
      }
    }
  }
}

void FigGeometryVectorMakeFromDictionary(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_0_14(a1);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_2_4(v3);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValueIfPresent(v2, @"dx", &value))
      {
        if (CFDictionaryGetValueIfPresent(v2, @"dy", &cf))
        {
          if (value)
          {
            v5 = CFGetTypeID(value);
            if (v5 == CFDictionaryGetTypeID())
            {
              if (cf)
              {
                v6 = CFGetTypeID(cf);
                if (v6 == CFDictionaryGetTypeID())
                {
                  v7 = FigGeometryDimensionMakeFromDictionary(value);
                  v15 = OUTLINED_FUNCTION_1_5(v7, v8, v9, v10, v11, v12, v13, v14, cf);
                  *v1 = v6;
                  v1[1] = v4;
                  v1[2] = v15;
                  v1[3] = v16;
                }
              }
            }
          }
        }
      }
    }
  }
}

double FigGeometryRectMakeFromDictionary@<D0>(const void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = 0.0;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v13 = 0;
  value = 0;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_2_4(a1);
    if (v5 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValueIfPresent(v3, @"origin", &value))
      {
        if (CFDictionaryGetValueIfPresent(v3, @"size", &v13))
        {
          if (value)
          {
            v6 = CFGetTypeID(value);
            if (v6 == CFDictionaryGetTypeID())
            {
              if (v13)
              {
                v7 = CFGetTypeID(v13);
                if (v7 == CFDictionaryGetTypeID())
                {
                  FigGeometryPointMakeFromDictionary(v12);
                  FigGeometrySizeMakeFromDictionary(v11);
                  result = *v12;
                  v8 = v12[1];
                  v9 = v11[0];
                  v10 = v11[1];
                  *v2 = v12[0];
                  v2[1] = v8;
                  v2[2] = v9;
                  v2[3] = v10;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

size_t FigXPCMessageSetFigEndpointStreamAudioFormatDescription(void *a1, const char *a2, xpc_object_t a3)
{
  value = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_15();
    v14 = 68;
LABEL_9:
    v5 = FigSignalErrorAtGM(v7, v8, v9, v10, v14, v11, v12, v13);
    a3 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_0_15();
    v14 = 69;
    goto LABEL_9;
  }

  if (a3)
  {
    v5 = _FigEndpointStreamAudioFormatDescriptionCopyXPCObject(a3, &value);
    a3 = value;
    if (!v5)
    {
      xpc_dictionary_set_value(a1, a2, value);
      a3 = value;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_6:
  FigXPCRelease(a3);
  return v5;
}

size_t FigXPCMessageSetFigEndpointStreamAudioFormatDescriptionArray(void *a1, const char *a2, const __CFArray *a3)
{
  value = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_15();
    v24 = 109;
LABEL_13:
    v15 = FigSignalErrorAtGM(v17, v18, v19, v20, v24, v21, v22, v23);
LABEL_15:
    empty = 0;
    goto LABEL_10;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_0_15();
    v24 = 110;
    goto LABEL_13;
  }

  if (!a3)
  {
    v15 = 0;
    goto LABEL_15;
  }

  empty = xpc_array_create_empty();
  if (!empty)
  {
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7EuLL, "(Fig)", 0x72, v3, v7, v8);
LABEL_17:
    v15 = v14;
    goto LABEL_10;
  }

  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v11 = Count;
    v12 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v12);
      v14 = _FigEndpointStreamAudioFormatDescriptionCopyXPCObject(ValueAtIndex, &value);
      if (v14)
      {
        goto LABEL_17;
      }

      xpc_array_append_value(empty, value);
      xpc_release(value);
    }

    while (v11 != ++v12);
  }

  xpc_dictionary_set_value(a1, a2, empty);
  v15 = 0;
LABEL_10:
  FigXPCRelease(empty);
  return v15;
}

size_t _FigEndpointStreamAudioFormatDescriptionCopyXPCObject_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7EuLL, "(Fig)", 0x27, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCopyXPCObject_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x21, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCopyXPCObject_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x20, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescription_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x59, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescription_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x58, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescription_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x57, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7DuLL, "(Fig)", 0x34, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7CuLL, "(Fig)", 0x35, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x33, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x32, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7DuLL, "(Fig)", 0x94, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7EuLL, "(Fig)", 0x99, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x90, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x8F, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x8E, v6, v7, v8);
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayClientRoutingRegistryRegisterClientWithRemoteID(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  v4 = 4294949576;
  if (a1 && a2 && a3)
  {
    FigSimpleMutexLock(*(a1 + 32));
    Value = CFDictionaryGetValue(*(a1 + 24), a3);
    v17 = Value;
    if (Value)
    {
      Value = CFRetain(Value);
    }

    if (dword_1EAF1CD28)
    {
      v18 = OUTLINED_FUNCTION_4_3(Value, v10, v11, v12, v13, v14, v15, v16, v75, v76, v77, v78, SBYTE2(v78), SBYTE3(v78), SHIDWORD(v78));
      v19 = BYTE4(v78);
      if (os_log_type_enabled(v18, BYTE3(v78)))
      {
        v20 = HIDWORD(v78);
      }

      else
      {
        v20 = HIDWORD(v78) & 0xFFFFFFFE;
      }

      if (v20)
      {
        FigCFDictionaryGetCount(v17);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_6_3();
        _os_log_send_and_compose_impl();
        v19 = BYTE4(v78);
      }

      OUTLINED_FUNCTION_1_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v21, v22, v23, v24, v25, v19, 0, v26);
    }

    if (v17)
    {
      if (CFDictionaryContainsKey(v17, a2))
      {
        v4 = 0;
        goto LABEL_39;
      }

      CFDictionaryAddValue(v17, a2, a4);
    }

    else
    {
      v27 = OUTLINED_FUNCTION_11();
      Mutable = CFDictionaryCreateMutable(v27, v28, 0, 0);
      if (!Mutable)
      {
        FigSimpleMutexUnlock(*(a1 + 32));
        return 4294949575;
      }

      v17 = Mutable;
      CFDictionarySetValue(Mutable, a2, a4);
      CFDictionarySetValue(*(a1 + 24), a3, v17);
    }

    v30 = OUTLINED_FUNCTION_11();
    v34 = CFDictionaryCreateMutable(v30, v31, v32, v33);
    if (v34)
    {
      v35 = v34;
      CFDictionarySetValue(v34, @"RoutingContextUUID", a3);
      if (dword_1EAF1CD28)
      {
        v44 = OUTLINED_FUNCTION_4_3(v36, v37, v38, v39, v40, v41, v42, v43, v75, v76, v77, v78, SBYTE2(v78), SBYTE3(v78), SHIDWORD(v78));
        v45 = BYTE4(v78);
        if (os_log_type_enabled(v44, BYTE3(v78)))
        {
          v46 = HIDWORD(v78);
        }

        else
        {
          v46 = HIDWORD(v78) & 0xFFFFFFFE;
        }

        if (v46)
        {
          OUTLINED_FUNCTION_8_1();
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl();
          v45 = BYTE4(v78);
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v47, v48, v49, v50, v51, v45, 0, v52);
      }

      v53 = *(a1 + 16);
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      v57 = FigDispatchAsyncPostNotification(v53, DefaultLocalCenter, @"RunningClientsChanged", a1, v35, 0, v55, v56);
      v4 = v57;
      if (!v57 && dword_1EAF1CD28)
      {
        v65 = OUTLINED_FUNCTION_4_3(v57, v58, v59, v60, v61, v62, v63, v64, v75, v76, v77, v78, SBYTE2(v78), SBYTE3(v78), SHIDWORD(v78));
        v66 = v80;
        if (os_log_type_enabled(v65, type))
        {
          v67 = v80;
        }

        else
        {
          v67 = v80 & 0xFFFFFFFE;
        }

        if (v67)
        {
          FigCFDictionaryGetCount(v17);
          OUTLINED_FUNCTION_8_1();
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl();
          v66 = v80;
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v68, v69, v70, v71, v72, v66, 0, v73);
      }

      FigSimpleMutexUnlock(*(a1 + 32));
      CFRelease(v35);
      goto LABEL_35;
    }

    v4 = 4294949575;
LABEL_39:
    FigSimpleMutexUnlock(*(a1 + 32));
LABEL_35:
    CFRelease(v17);
  }

  return v4;
}

uint64_t FigBufferedAirPlayClientRoutingRegistryUnregisterClientWithRemoteID(uint64_t a1, const void *a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 4294949576;
  if (a1 && a2)
  {
    FigSimpleMutexLock(*(a1 + 32));
    if (CFDictionaryContainsKey(*(a1 + 24), a3))
    {
      Value = CFDictionaryGetValue(*(a1 + 24), a3);
      v16 = Value;
      if (dword_1EAF1CD28)
      {
        v17 = OUTLINED_FUNCTION_5_3(Value, v9, v10, v11, v12, v13, v14, v15, v87, v90, v93, v96, SBYTE2(v96), SBYTE3(v96), SHIDWORD(v96));
        v18 = BYTE4(v96);
        v3 = BYTE3(v96);
        if (os_log_type_enabled(v17, BYTE3(v96)))
        {
          v19 = HIDWORD(v96);
        }

        else
        {
          v19 = HIDWORD(v96) & 0xFFFFFFFE;
        }

        if (v19)
        {
          CFDictionaryGetCount(v16);
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl();
          v18 = BYTE4(v96);
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v20, v21, v22, v23, v24, v18, 0, v25);
      }

      CFDictionaryRemoveValue(v16, a2);
      if (dword_1EAF1CD28)
      {
        v34 = OUTLINED_FUNCTION_5_3(v26, v27, v28, v29, v30, v31, v32, v33, v87, v90, v93, v96, SBYTE2(v96), SBYTE3(v96), SHIDWORD(v96));
        if (OUTLINED_FUNCTION_12(v34, v35, v36, v37, v38, v39, v40, v41, v88, v91, v94, v97, v99, type, v103))
        {
          v42 = v3;
        }

        else
        {
          v42 = v3 & 0xFFFFFFFE;
        }

        if (v42)
        {
          CFDictionaryGetCount(v16);
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_13(v43, v44, v45, v46, v47, v48, v49, v50);
      }

      if (!CFDictionaryGetCount(v16))
      {
        CFDictionaryRemoveValue(*(a1 + 24), a3);
      }

      v51 = OUTLINED_FUNCTION_11();
      Mutable = CFDictionaryCreateMutable(v51, v52, v53, v54);
      if (Mutable)
      {
        v56 = Mutable;
        CFDictionarySetValue(Mutable, @"RoutingContextUUID", a3);
        if (dword_1EAF1CD28)
        {
          v65 = OUTLINED_FUNCTION_5_3(v57, v58, v59, v60, v61, v62, v63, v64, v87, v90, v93, v96, SBYTE2(v96), SBYTE3(v96), SHIDWORD(v96));
          v73 = OUTLINED_FUNCTION_12(v65, v66, v67, v68, v69, v70, v71, v72, v89, v92, v95, v98, v100, typea, v104);
          if (OUTLINED_FUNCTION_9_1(v73))
          {
            OUTLINED_FUNCTION_10_0();
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_6_3();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_13(v74, v75, v76, v77, v78, v79, v80, v81);
        }

        v82 = *(a1 + 16);
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        v5 = FigDispatchAsyncPostNotification(v82, DefaultLocalCenter, @"RunningClientsChanged", a1, v56, 0, v84, v85);
        FigSimpleMutexUnlock(*(a1 + 32));
        CFRelease(v56);
        return v5;
      }

      v5 = 4294949575;
    }

    else
    {
      v5 = 0;
    }

    FigSimpleMutexUnlock(*(a1 + 32));
  }

  return v5;
}

uint64_t FigBufferedAirPlayClientRoutingRegistryGetCountOfRunningClientsForRoutingContext(uint64_t a1, const void *a2, CFIndex *a3)
{
  Count = 0;
  v74 = *MEMORY[0x1E69E9840];
  cf = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v6 = 4294949576;
  if (!a1)
  {
    goto LABEL_30;
  }

  v7 = a2;
  if (!a2)
  {
    goto LABEL_30;
  }

  FigSimpleMutexLock(*(a1 + 32));
  if (FigServer_IsAirplayd() && qword_1ED4CC4B8 || qword_1ED4CC4C8)
  {
    v8 = OUTLINED_FUNCTION_11();
    if (v9(v8))
    {
      goto LABEL_52;
    }
  }

  else
  {
    v40 = OUTLINED_FUNCTION_1_6();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v40, 0, v41, v42);
    v44 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    if (OUTLINED_FUNCTION_9_1(v44))
    {
      v68 = 136315138;
      v69 = "routingRegistry_figRoutingContextCopySystemAudioContext";
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_6_3();
      _os_log_send_and_compose_impl();
    }

    v50 = OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_13(v50, 0, 1, v51, v52, v53, v54, v55);
  }

  v10 = *MEMORY[0x1E695E480];
  if (routingRegistry_figRoutingContextCopyProperty(v65, *_MergedGlobals_11, *MEMORY[0x1E695E480], &v63))
  {
    goto LABEL_52;
  }

  if (FigCFEqual(v7, v63))
  {
    if (FigServer_IsAirplayd() && qword_1ED4CC4C0 || qword_1ED4CC4D0)
    {
      v11 = OUTLINED_FUNCTION_11();
      if (v12(v11))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v45 = OUTLINED_FUNCTION_1_6();
      v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v45, 0, v46, v47);
      v61 = v67;
      if (os_log_type_enabled(v48, type))
      {
        v49 = v61;
      }

      else
      {
        v49 = v61 & 0xFFFFFFFE;
      }

      if (v49)
      {
        v68 = 136315138;
        v69 = "routingRegistry_figRoutingContextCopySystemMusicContext";
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_6_3();
        _os_log_send_and_compose_impl();
      }

      v56 = OUTLINED_FUNCTION_3_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v56, 0, 1, v57, v58, v59, 0, v60);
    }

    if (!routingRegistry_figRoutingContextCopyProperty(cf, *_MergedGlobals_11, v10, &v62))
    {
      if (dword_1EAF1CD28)
      {
        v13 = OUTLINED_FUNCTION_1_6();
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v13, 1, v14, v15);
        v17 = os_log_type_enabled(v16, type);
        if (OUTLINED_FUNCTION_9_1(v17))
        {
          v68 = 136315650;
          v69 = "FigBufferedAirPlayClientRoutingRegistryGetCountOfRunningClientsForRoutingContext";
          v70 = 2112;
          v71 = v62;
          v72 = 2112;
          v73 = v7;
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_13(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      v7 = v62;
      goto LABEL_19;
    }

LABEL_52:
    Count = 0;
    v6 = 4294949574;
    goto LABEL_30;
  }

LABEL_19:
  Value = CFDictionaryGetValue(*(a1 + 24), v7);
  if (Value)
  {
    Count = CFDictionaryGetCount(Value);
  }

  else
  {
    Count = 0;
  }

  if (dword_1EAF1CD28)
  {
    v27 = OUTLINED_FUNCTION_1_6();
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v27, 1, v28, v29);
    v31 = v67;
    if (os_log_type_enabled(v30, type))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFE;
    }

    if (v32)
    {
      v68 = 136315650;
      v69 = "FigBufferedAirPlayClientRoutingRegistryGetCountOfRunningClientsForRoutingContext";
      v70 = 2112;
      v71 = v7;
      v72 = 2048;
      v73 = Count;
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_6_3();
      _os_log_send_and_compose_impl();
      LOBYTE(v31) = v67;
    }

    OUTLINED_FUNCTION_1_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose(v33, v34, v35, v36, v37, v31, 0, v38);
  }

  v6 = 0;
LABEL_30:
  FigSimpleMutexUnlock(*(a1 + 32));
  if (a3)
  {
    *a3 = Count;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  return v6;
}

uint64_t routingRegistry_figRoutingContextCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294949576;
  }

  v8 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

size_t __FigBufferedAirPlayClientRoutingRegistryGetSharedInstance_block_invoke_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD20, 0xFFFFBAC7uLL, "<<<< FigBufferedAirPlayClientRoutingRegistry >>>>", 0xED, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t fadc_getDeviceRateAndSampleTimeAndHostTime(uint64_t a1, Float64 *a2, Float64 *a3, Float64 *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!*(DerivedStorage + 1))
  {
    v28 = DerivedStorage;
    v29 = FigDerivedClockGetDerivedStorage(a1, v14, v15, v16, v17, v18, v19, v20);
    v30 = FigAudioDeviceSupportsPresentationTime(*(v29 + 88));
    v31 = v30;
    if (v30 != *(v28 + 112))
    {
      *(v28 + 112) = v30;
      FigDerivedClockDiscontinuityOccurred(a1);
    }

    if (v31)
    {
      v32 = FigDerivedClockGetDerivedStorage(a1, v14, v15, v16, v17, v18, v19, v20);
      memset(&v33, 0, 40);
      result = FigAudioDeviceGetCurrentPresentationTime(*(v32 + 88), &v33);
      if (result)
      {
        return result;
      }

      v25 = *&v33.mSMPTETime.mSubframes;
      mRateScalar = v33.mRateScalar;
      mSampleTime = v33.mSampleTime;
      if (!a2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v21 = FigDerivedClockGetDerivedStorage(a1, v14, v15, v16, v17, v18, v19, v20);
  memset(&v33, 0, sizeof(v33));
  v33.mFlags = 7;
  result = AudioDeviceGetCurrentTime(*(v21 + 88), &v33);
  if (result)
  {
    return result;
  }

  if ((~v33.mFlags & 7) == 0)
  {
    v25 = v33.mRateScalar;
    mSampleTime = *&v33.mHostTime;
    mRateScalar = v33.mSampleTime;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, 0xFFFFB9CCuLL, "<<<< FADC >>>>", 0x46F, v8, v23, v24);
  if (result)
  {
    return result;
  }

  mSampleTime = 0.0;
  v25 = NAN;
  mRateScalar = NAN;
  if (a2)
  {
LABEL_11:
    *a2 = v25;
  }

LABEL_12:
  if (a3)
  {
    *a3 = mRateScalar;
  }

  result = 0;
  if (a4)
  {
    *a4 = mSampleTime;
  }

  return result;
}

size_t fadcSetAudioDeviceID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, 0xFFFFCE37uLL, "<<<< FADC >>>>", 0x737, v8, a7, a8);
  *a1 = result;
  return result;
}

OSStatus CMClockGetAnchorTime(CMClockRef clock, CMTime *clockTimeOut, CMTime *referenceClockTimeOut)
{
  v177 = *MEMORY[0x1E69E9840];
  v159 = *&kCMTimeInvalid.value;
  v9 = 0;
  v160 = 0;
  memset(v157, 0, sizeof(v157));
  if (!clock)
  {
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE37uLL, "(Fig)", 0x1BA, v5, v3, v4);
    goto LABEL_7;
  }

  v10 = FigReentrantMutexLock(*(clock + 2));
  if (!*(clock + 41))
  {
    v21 = -12746;
    goto LABEL_10;
  }

  v19 = *(clock + 11);
  if (v19 == 1702392677)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s: kFigClockClass_ExternalSyncEvents not yet implemented\n", "CMClockGetAnchorTime");
    v21 = -12756;
    goto LABEL_10;
  }

  if (v19 != 1735680866)
  {
    v21 = 0;
    goto LABEL_10;
  }

  if (*(clock + 72))
  {
    v20 = (*(*(clock + 3) + 48))(clock, &v159, v157);
LABEL_7:
    v21 = v20;
    goto LABEL_10;
  }

  if (*(clock + 73))
  {
    v175 = 0;
    v176 = 0;
    memset(&v168, 0, sizeof(v168));
    memset(&clockTimeOuta, 0, sizeof(clockTimeOuta));
    memset(&rhs, 0, sizeof(rhs));
    memset(&v162, 0, sizeof(v162));
    FigMemoryBarrier();
    v45 = *(clock + 50);
    v44 = *(clock + 51);
    OUTLINED_FUNCTION_0_17(*(clock + 4), v46, v47, v48, v49, v50, v51, v52, v139, v146, v53);
    AnchorTime = CMClockGetAnchorTime(v54, &time2, 0);
    value = time2.value;
    timescale = time2.timescale;
    epoch_high = HIDWORD(time2.epoch);
    time1 = *(clock + 128);
    time = *(clock + 2);
    v173 = *&time2.flags;
    v65 = OUTLINED_FUNCTION_2_7(AnchorTime, v58, v59, v60, v61, v62, v63, v64, v143, v150, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, *v157, *&v157[8], *&v157[16], v158, v159, *(&v159 + 1), v160, v161, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, 0, v163, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, 0, v165, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, 0, v167, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, 0, v169, time1.value);
    CMTimeAdd(v67, v65, v66);
    time1.value = value;
    *&time1.flags = v173;
    time1.timescale = timescale;
    HIDWORD(time1.epoch) = epoch_high;
    v68 = CMTimeCompare(&time1, &time2);
    if ((v68 & 0x80000000) == 0 || v44 != v45)
    {
      v77 = OUTLINED_FUNCTION_0_17(v68, v69, v70, v71, v72, v73, v74, v75, v144, v151, v76);
      if (v44 != v45)
      {
        goto LABEL_30;
      }

      while (1)
      {
        if (!(*(*(clock + 3) + 48))(clock, &v168, &time2, v77))
        {
          OUTLINED_FUNCTION_1_8();
          if (v78)
          {
            time = v168;
            CMTimeConvertScale(&time1, &time, timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            v168 = time1;
            clockTimeOuta = time2;
          }
        }

        FigMemoryBarrier();
        if (*(clock + 51) == *(clock + 50))
        {
          break;
        }

        OUTLINED_FUNCTION_0_17(v79, v80, v81, v82, v83, v84, v85, v86, v145, v152, v87);
LABEL_30:
        *(clock + 124) = 0;
        FigMemoryBarrier();
        *(clock + 51) = *(clock + 50);
      }

      *(clock + 16) = value;
      *(clock + 34) = timescale;
      *(clock + 140) = v173;
      *(clock + 37) = epoch_high;
      OUTLINED_FUNCTION_1_8();
      if (v78)
      {
        *(clock + 74) = 1;
        if (!*(clock + 124))
        {
          *(clock + 100) = clockTimeOuta;
          time1 = v168;
          time = *(clock + 152);
          v96 = OUTLINED_FUNCTION_2_7(v88, v89, v90, v91, v92, v93, v94, v95, v145, v152, v155, v156, *v157, *&v157[8], *&v157[16], v158, v159, *(&v159 + 1), v160, v161, v162.value, *&v162.timescale, v162.epoch, v163, rhs.value, *&rhs.timescale, rhs.epoch, v165, clockTimeOuta.value, *&clockTimeOuta.timescale, clockTimeOuta.epoch, v167, v168.value, *&v168.timescale, v168.epoch, v169, v168.value);
          CMTimeSubtract(v98, v96, v97);
          *(clock + 76) = time2;
          *(clock + 124) = 1;
        }

        time2 = v168;
        time1 = *(clock + 76);
        v99 = OUTLINED_FUNCTION_4_4();
        CMTimeSubtract(v101, v99, v100);
        time2 = *(clock + 100);
        time1 = rhs;
        v102 = OUTLINED_FUNCTION_4_4();
        v105 = CMTimeAdd(v104, v102, v103);
        *&time1.timescale = *&v162.timescale;
        time1.epoch = v162.epoch;
        time = clockTimeOuta;
        v113 = OUTLINED_FUNCTION_2_7(v105, v106, v107, v108, v109, v110, v111, v112, v145, v152, v155, v156, *v157, *&v157[8], *&v157[16], v158, v159, *(&v159 + 1), v160, v161, v162.value, *&v162.timescale, v162.epoch, v163, rhs.value, *&rhs.timescale, rhs.epoch, v165, clockTimeOuta.value, *&clockTimeOuta.timescale, clockTimeOuta.epoch, v167, v168.value, *&v168.timescale, v168.epoch, v169, v162.value);
        CMTimeSubtract(v115, v113, v114);
        *(clock + 152) = time2;
      }

      else
      {
        *(clock + 74) = 0;
        *(clock + 124) = 0;
      }
    }

    *&time2.flags = v173;
    time2.value = value;
    HIDWORD(time2.epoch) = epoch_high;
    time2.timescale = timescale;
    time1 = *(clock + 152);
    v116 = OUTLINED_FUNCTION_4_4();
    CMTimeAdd(v118, v116, v117);
    v175 = time.value;
    v176 = time.timescale;
    epoch = time.epoch;
    v120 = time.flags & 0xFFFFFFFD;
    time2.value = time.value;
    time2.timescale = time.timescale;
    time2.flags = time.flags & 0xFFFFFFFD;
    time2.epoch = time.epoch;
    time1 = *(clock + 176);
    v121 = OUTLINED_FUNCTION_4_4();
    if (CMTimeCompare(v121, v122) < 0 && (OUTLINED_FUNCTION_5_4(), v78))
    {
      v175 = *(clock + 22);
      v176 = *(clock + 46);
      epoch = *(clock + 24);
      v120 = v123;
    }

    else
    {
      *(clock + 22) = v175;
      *(clock + 46) = v176;
      *(clock + 47) = v120;
      *(clock + 24) = epoch;
    }

    v21 = 0;
    *&v159 = v175;
    *(&v159 + 1) = __PAIR64__(v120, v176);
    v160 = epoch;
    *v157 = value;
    *&v157[8] = timescale;
    *&v157[12] = v173;
    v124 = epoch_high;
    goto LABEL_47;
  }

  time.value = 0;
  time.timescale = 0;
  *&time1.value = OUTLINED_FUNCTION_0_17(v10, v11, v12, v13, v14, v15, v16, v17, v139, 0, v18);
  time1.epoch = 0;
  *&v168.value = *&time1.value;
  v168.epoch = 0;
  FigMemoryBarrier();
  v24 = *(clock + 50);
  v23 = *(clock + 51);
  OUTLINED_FUNCTION_3_3(*(clock + 4), v25, v26, v27, v28, v29, v30, v31, v140, v147, *&kCMTimeInvalid.value);
  CMClockGetAnchorTime(v32, &clockTimeOuta, 0);
  v175 = *&clockTimeOuta.flags;
  v33 = clockTimeOuta.timescale;
  v176 = HIDWORD(clockTimeOuta.epoch);
  v34 = clockTimeOuta.value;
  rhs = *(clock + 128);
  CMTimeSubtract(&v168, &clockTimeOuta, &rhs);
  clockTimeOuta = v168;
  rhs = *(clock + 2);
  v35 = CMTimeCompare(&clockTimeOuta, &rhs);
  if ((v35 & 0x80000000) != 0 && v23 == v24 && *(clock + 124))
  {
    goto LABEL_48;
  }

  v43 = OUTLINED_FUNCTION_3_3(v35, v36, v37, v38, v39, v40, v41, v42, v141, v148, v153);
  if (v23 != v24)
  {
    goto LABEL_57;
  }

  while (1)
  {
    if (!(*(*(clock + 3) + 48))(clock, &time2, &clockTimeOuta, v43))
    {
      OUTLINED_FUNCTION_1_8();
      if (v78)
      {
        v162 = time2;
        CMTimeConvertScale(&rhs, &v162, v33, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        time2 = rhs;
        time1 = clockTimeOuta;
      }
    }

    FigMemoryBarrier();
    if (*(clock + 51) == *(clock + 50))
    {
      break;
    }

    OUTLINED_FUNCTION_3_3(v128, v129, v130, v131, v132, v133, v134, v135, v142, v149, *&v154);
LABEL_57:
    FigMemoryBarrier();
    *(clock + 51) = *(clock + 50);
  }

  *(clock + 16) = v34;
  *(clock + 34) = v33;
  *(clock + 140) = v175;
  *(clock + 37) = v176;
  OUTLINED_FUNCTION_1_8();
  if (v78)
  {
    *(clock + 100) = *&time1.value;
    *(clock + 76) = *&time2.value;
    *(clock + 74) = v136;
    *(clock + 124) = v136;
    *(clock + 116) = time1.epoch;
    *(clock + 92) = time2.epoch;
    OUTLINED_FUNCTION_6_4();
    rhs.value = v34;
    rhs.timescale = v33;
    *&v162.value = v137;
    v162.epoch = v138;
    goto LABEL_49;
  }

  *(clock + 74) = 0;
  if (*(clock + 124))
  {
LABEL_48:
    rhs.value = v34;
    rhs.timescale = v33;
    OUTLINED_FUNCTION_6_4();
    v162 = *(clock + 100);
LABEL_49:
    CMTimeSubtract(&clockTimeOuta, &rhs, &v162);
    v168 = clockTimeOuta;
    rhs = clockTimeOuta;
    v162 = *(clock + 76);
    CMTimeAdd(&clockTimeOuta, &rhs, &v162);
    time.value = clockTimeOuta.value;
    flags = clockTimeOuta.flags;
    time.timescale = clockTimeOuta.timescale;
    v9 = clockTimeOuta.epoch;
    goto LABEL_50;
  }

  time.value = v149;
  time.timescale = 0;
  flags = 0;
LABEL_50:
  v126 = flags & 0xFFFFFFFD;
  clockTimeOuta.value = time.value;
  clockTimeOuta.timescale = time.timescale;
  clockTimeOuta.flags = flags & 0xFFFFFFFD;
  clockTimeOuta.epoch = v9;
  rhs = *(clock + 176);
  if (CMTimeCompare(&clockTimeOuta, &rhs) < 0 && (OUTLINED_FUNCTION_5_4(), v78))
  {
    time.value = *(clock + 22);
    time.timescale = *(clock + 46);
    v9 = *(clock + 24);
    v126 = v127;
  }

  else
  {
    *(clock + 22) = time.value;
    *(clock + 46) = time.timescale;
    *(clock + 47) = v126;
    *(clock + 24) = v9;
  }

  v21 = 0;
  *&v159 = time.value;
  *(&v159 + 1) = __PAIR64__(v126, time.timescale);
  v160 = v9;
  *v157 = v34;
  *&v157[8] = v33;
  *&v157[12] = v175;
  v124 = v176;
LABEL_47:
  *&v157[20] = v124;
LABEL_10:
  if (clockTimeOut)
  {
    *&clockTimeOut->value = v159;
    clockTimeOut->epoch = v160;
  }

  if (referenceClockTimeOut)
  {
    *&referenceClockTimeOut->value = *v157;
    referenceClockTimeOut->epoch = *&v157[16];
  }

  if (clock)
  {
    FigReentrantMutexUnlock(*(clock + 2));
  }

  return v21;
}

CMTime *__cdecl CMClockGetTime(CMTime *__return_ptr retstr, CMClockRef clock)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  return CMClockGetAnchorTime(clock, retstr, 0);
}

size_t FigStartForwardingMediaServicesProcessDeathNotification_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0x6A, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigStartForwardingMediaServicesProcessDeathNotification_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0x69, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigStopForwardingMediaServicesProcessDeathNotification_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0x7C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigStopForwardingMediaServicesProcessDeathNotification_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0x7B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigStartMonitoringMediaServicesProcessDeathWithCallback_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0xB2, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigStartMonitoringMediaServicesProcessDeathWithCallback_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0xB1, v8, a7, a8);
  *a1 = result;
  return result;
}

void figObjectDependencyDeathDefaultCallback_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void soft_FigAudioSessionTriggerAVAudioSessionReset(pid_t)") description:{@"FigMediaServicesProcessDeathMonitoringFigOnly.m", 80, @"%s", dlerror()}];
  __break(1u);
}

size_t FigStopMonitoringMediaServicesProcessDeathWithCallback_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0xCB, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigStopMonitoringMediaServicesProcessDeathWithCallback_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0xC9, v8, a7, a8);
  *a1 = result;
  return result;
}

void __getFigAudioSessionTriggerAVAudioSessionResetSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *MediaToolboxLibrary(void)") description:{@"FigMediaServicesProcessDeathMonitoringFigOnly.m", 79, @"%s", *a1}];
  __break(1u);
}

void endpointStreamUtil_createSyncContext_cold_1(void *a1, const CMBlockBufferCustomBlockSource *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBE87uLL, "(Fig)", a2, v8, a7, a8))
  {
    free(a1);
    a1 = 0;
  }

  *a3 = a1;
}

uint64_t HandleControlCommandsServerRemoteMessage(uint64_t a1, void *a2, void *a3)
{
  v15 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v15);
  if (OpCode)
  {
    return OpCode;
  }

  if (v15 != 1885827696)
  {
    return 4294951145;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v17 = 0;
  int64 = xpc_dictionary_get_int64(a2, "Pid");
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"|%-80s|%-20s|%-64s|%-32s|\n", "Server", "Purged", "Purge Identifier", "Could Not Purge All Objects");
  if (xpc_dictionary_get_BOOL(a2, "ForcePurge"))
  {
    goto LABEL_6;
  }

  PurgeEligibilityForPID = FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID(int64, &v17);
  if (PurgeEligibilityForPID)
  {
    v9 = PurgeEligibilityForPID;
    goto LABEL_7;
  }

  if (v17)
  {
    v9 = 0;
    *(v19 + 24) = 1;
  }

  else
  {
LABEL_6:
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __HandleLoggingPurgeObjectsAndGenerateReportForPID_block_invoke;
    v16[3] = &unk_1E749EAB8;
    v16[4] = &v18;
    v16[5] = Mutable;
    FigXPCPurgeObjectsForPIDWithReportingBlock(int64, v16);
    v9 = 0;
  }

LABEL_7:
  v10 = *MEMORY[0x1E695E4D0];
  v11 = *MEMORY[0x1E695E4C0];
  if (*(v19 + 24))
  {
    v12 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v12 = *MEMORY[0x1E695E4C0];
  }

  FigXPCMessageSetCFBoolean(a3, "CouldNotPurgeAllObjects", v12);
  if (v17)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  FigXPCMessageSetCFBoolean(a3, "PurgeProhibited", v13);
  FigXPCMessageSetCFString(a3, "Stats", Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  _Block_object_dispose(&v18, 8);
  return v9;
}

size_t HandleControlCommandsServerRemoteMessageNoReply(_xpc_connection_s *a1, void *a2)
{
  v4 = 0;
  result = FigXPCMessageGetOpCode(a2, &v4);
  if (!result)
  {
    if (v4 == 1819242352)
    {
      v5 = 0;
      result = FigXPCServerAssociateObjectWithConnection(a1, @"Loopback", @"refcon", AirPlayLoopbackDispose, 0, &v5);
      if (!result)
      {
        if (setenv("ENABLE_BUFFERED_LOCAL_PLAYBACK", "1", 1))
        {
          return 4294948106;
        }

        else
        {
          FigAtomicIncrement32(gEnableBufferedAirplayEnvClientCount);
          return 0;
        }
      }
    }

    else
    {
      return 4294951145;
    }
  }

  return result;
}

size_t CMTimebaseCreateReadOnlyTimebaseWithFlags(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, char a5, CFTypeRef *a6)
{
  cf = 0;
  v6 = 4294954548;
  if (a2 && a6)
  {
    v11 = figTimebaseCreate(a1, a5, &cf);
    if (v11)
    {
      v6 = v11;
    }

    else
    {
      *(cf + 4) = 2;
      v12 = CFRetain(a2);
      v13 = cf;
      *(cf + 3) = v12;
      v13[4] = a3;
      v13[5] = a4;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_9();
      v6 = FigNotificationCenterAddWeakListener(v14, v13, v15, 0, v12, 2, 0);
      if (!v6)
      {
        *a6 = cf;
        return v6;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v6;
}

OSStatus CMTimebaseAddTimerDispatchSource(CMTimebaseRef timebase, dispatch_source_t timerSource)
{
  v2 = -12748;
  if (!timebase || !timerSource)
  {
    return v2;
  }

  if (!dispatch_source_testcancel(timerSource))
  {
    FigReentrantMutexLock(*(timebase + 14));
    v10 = *(timebase + 38);
    if (v10 || (keyCallBacks.version = 0, keyCallBacks.retain = cfDispatchSourceRetain, keyCallBacks.release = cfDispatchSourceRelease, memset(&keyCallBacks.copyDescription, 0, 24), OUTLINED_FUNCTION_7_3(), valueCallBacks.release = cfDataFigTimeRelease, valueCallBacks.equal = cfDataFigTimeEqual, valueCallBacks.copyDescription = cfDataFigTimeCopyDescription, v11 = CFGetAllocator(timebase), v10 = CFDictionaryCreateMutable(v11, 0, &keyCallBacks, &valueCallBacks), (*(timebase + 38) = v10) != 0))
    {
      if (!*(timebase + 39))
      {
        CFGetAllocator(timebase);
        OUTLINED_FUNCTION_26();
        Mutable = CFDictionaryCreateMutable(v12, v13, v14, v15);
        *(timebase + 39) = Mutable;
        if (!Mutable)
        {
          OUTLINED_FUNCTION_0_11();
          v28 = 3757;
          goto LABEL_19;
        }

        v10 = *(timebase + 38);
      }

      if (CFDictionaryContainsKey(v10, timerSource))
      {
LABEL_15:
        v2 = 0;
LABEL_20:
        FigReentrantMutexUnlock(*(timebase + 14));
        return v2;
      }

      v17 = CFGetAllocator(timebase);
      v18 = CFDataCreate(v17, &kCMTimeInvalid, 24);
      if (v18)
      {
        v19 = v18;
        OUTLINED_FUNCTION_26();
        dispatch_source_set_timer(v20, v21, v22, v23);
        CFDictionaryAddValue(*(timebase + 38), timerSource, v19);
        CFRelease(v19);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_0_11();
      v28 = 3765;
    }

    else
    {
      OUTLINED_FUNCTION_0_11();
      v28 = 3749;
    }

LABEL_19:
    v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 0xFFFFCE32uLL, "<<< timebase >>>", v28, v25, v26, v27);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_11();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFCE33uLL, "<<< timebase >>>", 0xE8B, v6, v7, v8);
}

OSStatus CMTimebaseSetTimerDispatchSourceNextFireTime(CMTimebaseRef timebase, dispatch_source_t timerSource, CMTime *fireTime, uint32_t flags)
{
  v6 = -12748;
  if (timebase && timerSource)
  {
    OUTLINED_FUNCTION_19(timebase);
    v10 = *(v4 + 304);
    if (!v10 || !CFDictionaryContainsKey(v10, timerSource))
    {
      v6 = -12749;
      goto LABEL_10;
    }

    if (dispatch_source_testcancel(timerSource))
    {
      CFDictionaryRemoveValue(*(v4 + 304), timerSource);
      CFDictionaryRemoveValue(*(v4 + 312), timerSource);
      v13 = qword_1ED4CC298;
      v14 = v5;
      v15 = 4294954547;
      v16 = 3833;
    }

    else
    {
      v17 = CFGetAllocator(v4);
      v18 = CFDataCreate(v17, fireTime, 24);
      if (v18)
      {
        v20 = v18;
        CFDictionaryReplaceValue(*(v4 + 304), timerSource, v18);
        CFRelease(v20);
        CFDictionarySetValue(*(v4 + 312), timerSource, flags);
        OUTLINED_FUNCTION_10_1(&v22);
        OUTLINED_FUNCTION_13_0();
        rescheduleTimerSource(timerSource, &v21, v4, &v22, 2, flags);
        v6 = 0;
        goto LABEL_10;
      }

      v13 = qword_1ED4CC298;
      v14 = v5;
      v15 = 4294954546;
      v16 = 3840;
    }

    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v15, "<<< timebase >>>", v16, v14, v11, v12);
LABEL_10:
    FigReentrantMutexUnlock(*(v4 + 112));
  }

  return v6;
}

uint64_t FigReadOnlyTimebaseSetTargetTimebase(uint64_t a1, OpaqueCMTimebase *cf)
{
  memset(&v68, 0, sizeof(v68));
  TransformRelativeToUltimateMasterClock = 4294954548;
  if (!a1 || !cf)
  {
    return TransformRelativeToUltimateMasterClock;
  }

  if (!*(a1 + 24) || figTimebaseIsDescendantOfTimebase(cf, a1))
  {
    return 4294954547;
  }

  *multiplier = 0u;
  memset(&v67, 0, sizeof(v67));
  v65 = 0u;
  v61 = 0u;
  v62 = 0u;
  memset(&v63, 0, sizeof(v63));
  v6 = CFGetAllocator(a1);
  OUTLINED_FUNCTION_10_1(&v73);
  v7 = figTimebaseCreatePayloadForNotificationAtTime(v6, &v73);
  if (!v7)
  {
    return 4294954546;
  }

  v8 = v7;
  OUTLINED_FUNCTION_20(v7, @"CMTimebaseMasterWillChange");
  FigReentrantMutexLock(*(a1 + 112));
  v9 = *(a1 + 24);
  if (v9 == cf)
  {
    TransformRelativeToUltimateMasterClock = 0;
    v11 = 0;
    goto LABEL_41;
  }

  FigReentrantMutexLock(*(v9 + 14));
  EffectiveRate = CMTimebaseGetEffectiveRate(v9);
  v11 = FigTimebaseCopyUltimateMasterClockAndHeight(v9, 0);
  TransformRelativeToUltimateMasterClock = FigTimebaseGetTransformRelativeToUltimateMasterClock(v9, 1, &v65);
  FigReentrantMutexUnlock(*(v9 + 14));
  if (TransformRelativeToUltimateMasterClock)
  {
LABEL_41:
    v13 = 0;
LABEL_43:
    PayloadForNotificationAtTime = FigReentrantMutexUnlock(*(a1 + 112));
    goto LABEL_45;
  }

  FigReentrantMutexLock(*(cf + 14));
  v12 = CMTimebaseGetEffectiveRate(cf);
  v13 = FigTimebaseCopyUltimateMasterClockAndHeight(cf, 0);
  v14 = FigTimebaseGetTransformRelativeToUltimateMasterClock(cf, 1, &v61);
  if (v14)
  {
    TransformRelativeToUltimateMasterClock = v14;
    FigReentrantMutexUnlock(*(cf + 14));
    goto LABEL_43;
  }

  memset(&v73, 0, sizeof(v73));
  memset(&v72, 0, sizeof(v72));
  memset(&v71, 0, sizeof(v71));
  if (CFEqual(v11, v13) && multiplier[1] == *(&v62 + 1))
  {
    lhs = v67;
    rhs = v63;
    CMTimeSubtract(&v73, &lhs, &rhs);
    *&lhs.value = v65;
    *&lhs.epoch = multiplier[0];
    *&rhs.value = v61;
    rhs.epoch = v62;
    CMTimeSubtract(&v72, &lhs, &rhs);
    lhs = v72;
    CMTimeMultiplyByFloat64(&v71, &lhs, multiplier[1]);
    lhs = v71;
    rhs = v73;
    v15 = CMTimeCompare(&lhs, &rhs) != 0;
  }

  else
  {
    v15 = 1;
  }

  *(a1 + 24) = cf;
  CFRetain(cf);
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_1_9();
  FigNotificationCenterAddWeakListener(v16, a1, v17, 0, cf, 2, 0);
  OUTLINED_FUNCTION_17(cf, &v68);
  FigReentrantMutexUnlock(*(cf + 14));
  v18 = EffectiveRate != v12 || v15;
  if (v18 == 1)
  {
    CMTimebaseGetEffectiveRate(a1);
    OUTLINED_FUNCTION_21();
    if (!(v31 ^ v32 | v19))
    {
      v29 = 1;
    }

    if (v19)
    {
      v29 = v28;
    }

    *(a1 + 320) = v29;
    if (*(a1 + 280))
    {
      OUTLINED_FUNCTION_5_5(v20, v21, v22, v23, v24, v25, v26, v27, v61, *(&v61 + 1), v62, *(&v62 + 1), v63.value, *&v63.timescale, v63.epoch, v64, v65, *(&v65 + 1), *&multiplier[0], *&multiplier[1], v67.value, *&v67.timescale, v67.epoch, v30, v68.value);
      v33 = OUTLINED_FUNCTION_28();
      rescheduleValidAndRemoveInvalidTimers(v33, v34, v35);
    }

    if (*(a1 + 304))
    {
      OUTLINED_FUNCTION_5_5(v20, v21, v22, v23, v24, v25, v26, v27, v61, *(&v61 + 1), v62, *(&v62 + 1), v63.value, *&v63.timescale, v63.epoch, v64, v65, *(&v65 + 1), *&multiplier[0], *&multiplier[1], v67.value, *&v67.timescale, v67.epoch, v30, v68.value);
      v36 = OUTLINED_FUNCTION_28();
      rescheduleValidAndRemoveCancelledTimerSources(v36, v37, v38);
    }
  }

  FigReentrantMutexUnlock(*(a1 + 112));
  TransformRelativeToUltimateMasterClock = figTimebaseUninstallReadOnlyTimebaseNotifications(a1, v9);
  CFRelease(v9);
  v39 = CFGetAllocator(a1);
  OUTLINED_FUNCTION_5_5(v39, v40, v41, v42, v43, v44, v45, v46, v61, *(&v61 + 1), v62, *(&v62 + 1), v63.value, *&v63.timescale, v63.epoch, v64, v65, *(&v65 + 1), *&multiplier[0], *&multiplier[1], v67.value, *&v67.timescale, v67.epoch, v47, v68.value);
  PayloadForNotificationAtTime = figTimebaseCreatePayloadForNotificationAtTime(v48, v49);
  if (PayloadForNotificationAtTime)
  {
    v51 = PayloadForNotificationAtTime;
    v52 = OUTLINED_FUNCTION_28();
    figTimebasePostNotification(v52, v53, v54);
    if (v18)
    {
      if (EffectiveRate != v12)
      {
        v55 = OUTLINED_FUNCTION_28();
        figTimebasePostNotification(v55, v56, v57);
      }

      if (v15)
      {
        v58 = OUTLINED_FUNCTION_28();
        figTimebasePostNotification(v58, v59, v60);
      }
    }

    CFRelease(v8);
    goto LABEL_35;
  }

  TransformRelativeToUltimateMasterClock = 4294954546;
LABEL_45:
  OUTLINED_FUNCTION_20(PayloadForNotificationAtTime, @"CMTimebaseMasterDidChange");
  v51 = v8;
LABEL_35:
  CFRelease(v51);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return TransformRelativeToUltimateMasterClock;
}

CFDictionaryRef figTimebaseCreatePayloadForNotificationAtTime(CFAllocatorRef allocator, CMTime *a2)
{
  cf = *a2;
  cf.value = CMTimeCopyAsDictionary(&cf, allocator);
  if (!cf.value)
  {
    return 0;
  }

  v3 = CFDictionaryCreate(allocator, &kCMTimebaseNotificationKey_EventTime, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (cf.value)
  {
    CFRelease(cf.value);
  }

  return v3;
}

Float64 CMTimebaseGetEffectiveRate(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return 0.0;
  }

  v1 = FigTimebaseCopyTargetTimebase(timebase);
  Rate = CMTimebaseGetRate(v1);
  if (Rate == 0.0)
  {
    RelativeRate = Rate;
    v4 = 0;
    if (!v1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = FigTimebaseCopyUltimateMasterClockAndHeight(v1, 0);
  RelativeRate = CMSyncGetRelativeRate(v1, v4);
  if (v1)
  {
LABEL_4:
    CFRelease(v1);
  }

LABEL_5:
  if (v4)
  {
    CFRelease(v4);
  }

  return RelativeRate;
}

uint64_t figTimebaseUninstallReadOnlyTimebaseNotifications(const void *a1, const void *a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_1_9();
  v6 = FigNotificationCenterRemoveWeakListener(v4, a1, v5, 0, a2);
  if (a2)
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterBarrier(DefaultLocalCenter, a2);
  }

  return v6;
}

void figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness(void *a1@<X0>, int a2@<W1>, int a3@<W2>, CMTime *a4@<X8>)
{
  v222 = *MEMORY[0x1E69E9840];
  *&a4->value = *&kCMTimeInvalid.value;
  a4->epoch = 0;
  v197 = *&kCMTimeInvalid.value;
  v198 = 0;
  if (a1)
  {
    v7 = FigTimebaseCopyTargetTimebase(a1);
    MasterTime = figTimebaseGetMasterTime(&v197, v7);
    OUTLINED_FUNCTION_3_4(MasterTime, v9, v10, v11, v12, v13, v14, v15, v131, v139, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, v160, v170, v179, v189, v16, v197);
    figTimebaseGetTimeAtMasterTime(v7, a4);
    if (a3 && dword_1ED4CC2A0)
    {
      v25 = OUTLINED_FUNCTION_34(v17, v18, v19, v20, v21, v22, v23, v24, p_lhs, v140, v147, v154, v161, v171, v180, v190, v197, *(&v197 + 1), v198, v199, rhs.value, *&rhs.timescale, rhs.epoch, v201, v202.value, *&v202.timescale, v202.epoch, v203, v204, *(&v204 + 1), v205, v206, v207, *(&v207 + 1), v208, v209.value, *&v209.timescale, v209.epoch, 0, *&type[8], v211, v212, 0);
      v26 = v213;
      v27 = os_log_type_enabled(v25, type[0]);
      if (v27)
      {
        v36 = v26;
      }

      else
      {
        v36 = v26 & 0xFFFFFFFE;
      }

      if (v36)
      {
        v26 = *(v7 + 4);
        OUTLINED_FUNCTION_3_4(v27, v28, v29, v30, v31, v32, v33, v34, p_lhs, v140, v147, v154, v162, v172, v181, v190, v35, v197);
        Seconds = CMTimeGetSeconds(&time[0].start);
        OUTLINED_FUNCTION_11_0();
        v38 = CMTimeGetSeconds(&time[0].start);
        LODWORD(lhs.value) = 136316162;
        *(&lhs.value + 4) = "figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v7;
        HIWORD(lhs.epoch) = 1024;
        v216 = v26;
        v217 = 2048;
        v218 = Seconds;
        v219 = 2048;
        v220 = v38;
        LODWORD(v140) = 48;
        p_lhs = &lhs;
        _os_log_send_and_compose_impl();
        LOBYTE(v26) = v213;
      }

      OUTLINED_FUNCTION_22();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v39, v40, v41, v42, v43, v26, 0, v44);
    }

    if (*(v7 + 4) == 1)
    {
      v163 = *&a4->value;
      epoch = a4->epoch;
      v45 = FigTimebaseCopyTargetTimebase(v7);
      v46 = v45;
      if (*(v45 + 4) == 1)
      {
        v47 = *(v45 + 4);
        v213 = *(v45 + 3);
        v214 = v45[8];
        *type = *(v45 + 9);
        v211 = v45[11];
        memset(&v209, 0, sizeof(v209));
        *&time[0].start.value = *(v45 + 3);
        *&time[0].start.epoch = v47;
        *&time[0].duration.timescale = *(v45 + 5);
        CMTimeRangeGetEnd(&v209, time);
        OUTLINED_FUNCTION_11_0();
        lhs = v209;
        v48 = OUTLINED_FUNCTION_18();
        v50 = CMTimeCompare(v48, v49);
        if ((v50 & 0x80000000) == 0)
        {
          v207 = 0uLL;
          v208 = 0;
          OUTLINED_FUNCTION_3_4(v50, v51, v52, v53, v54, v55, v56, v57, p_lhs, v140, v147, v154, v163, *(&v163 + 1), epoch, v190, v58, v197);
          OUTLINED_FUNCTION_25(v59, v60, v61, v62, v63, v64, v65, v66, v133, v141, v148, v155, v164, v173, v183, v191, v197, *(&v197 + 1), v198, v199, rhs.value, *&rhs.timescale, rhs.epoch, v201, v202.value, *&v202.timescale, v202.epoch, v203, v204, *(&v204 + 1), v205, v206, v207, *(&v207 + 1), v208, v209.value, *&v209.timescale, v209.epoch, *type, *&type[8], v211, v212, v213);
          v67 = OUTLINED_FUNCTION_18();
          v70 = CMTimeSubtract(v69, v67, v68);
          *&time[0].start.value = v207;
          time[0].start.epoch = v208;
          OUTLINED_FUNCTION_33(v70, v71, v72, v73, v74, v75, v76, v77, v134, v142, v149, v156, v165, v174, v184, v192, v197, *(&v197 + 1), v198, v199, rhs.value, *&rhs.timescale, rhs.epoch, v201, v202.value, *&v202.timescale, v202.epoch, v203, v149, v156, 0, v206, v207, *(&v207 + 1), v208, v209.value, *&v209.timescale, v209.epoch, *type);
          v78 = OUTLINED_FUNCTION_18();
          v80 = CMTimeDivide(v78, v79, &v204);
          if (a2)
          {
            *&v202.value = v150;
            v202.epoch = 0;
            if (v80 > 0x7FFFFFFF)
            {
              OUTLINED_FUNCTION_3_4(v80, v80, v82, v83, v84, v85, v86, v87, v135, v143, v150.n128_i64[0], v150.n128_i64[1], v166, v175, v185, v193, v150, v197);
              OUTLINED_FUNCTION_32(v97, v98, v99, v100, v101, v102, v103, v104, v138, v146, v153, v159, v169, v178, v188, v196, v197, *(&v197 + 1), v198, v199, rhs.value, *&rhs.timescale, rhs.epoch, v201, v202.value, *&v202.timescale, v202.epoch, v203, v204);
              v105 = OUTLINED_FUNCTION_18();
              CMTimeSubtract(v107, v105, v106);
            }

            else
            {
              memset(time, 0, 24);
              OUTLINED_FUNCTION_33(v80, v80, v82, v83, v84, v85, v86, v87, v135, v143, v150.n128_i64[0], v150.n128_i64[1], v166, v175, v185, v193, v197, *(&v197 + 1), v198, v199, rhs.value, *&rhs.timescale, rhs.epoch, v201, v202.value, *&v202.timescale, v202.epoch, v203, v204, *(&v204 + 1), v205, v206, v207, *(&v207 + 1), v208, v209.value, *&v209.timescale, v209.epoch, *type);
              v89 = CMTimeMultiply(&time[0].start, &lhs, v88);
              OUTLINED_FUNCTION_25(v89, v90, v91, v92, v93, v94, v95, v96, v136, v144, v151, v157, v167, v176, v186, v194, v197, *(&v197 + 1), v198, v199, rhs.value, *&rhs.timescale, rhs.epoch, v201, v202.value, *&v202.timescale, v202.epoch, v203, v204, *(&v204 + 1), v205, v206, v207, *(&v207 + 1), v208, v209.value, *&v209.timescale, v209.epoch, *type, *&type[8], v211, v212, v213);
              rhs = time[0].start;
              CMTimeAdd(&v202, &lhs, &rhs);
            }

            *&time[0].start.value = *(v46 + 10);
            OUTLINED_FUNCTION_24(v46[22], v137, v145, v152, v158, v168, v177, v187, v195, v197, *(&v197 + 1), v198, v199, rhs.value, *&rhs.timescale, rhs.epoch, v201, *&v202.value);
            v108 = OUTLINED_FUNCTION_18();
            v80 = CMTimeCompare(v108, v109);
            if (v80)
            {
              *&time[0].start.value = v213;
              OUTLINED_FUNCTION_24(v214, v135, v143, v150.n128_i64[0], v150.n128_i64[1], v166, v175, v185, v193, v197, *(&v197 + 1), v198, v199, rhs.value, *&rhs.timescale, rhs.epoch, v201, *&v202.value);
              v80 = figTimebaseSetAnchorTimeMaybeNowMaybeNotifying();
            }
          }

          *&time[0].start.value = v213;
          time[0].start.epoch = v214;
          OUTLINED_FUNCTION_32(v80, v81, v82, v83, v84, v85, v86, v87, v135, v143, v150.n128_i64[0], v150.n128_i64[1], v166, v175, v185, v193, v197, *(&v197 + 1), v198, v199, rhs.value, *&rhs.timescale, rhs.epoch, v201, v202.value, *&v202.timescale, v202.epoch, v203, v204);
          v110 = OUTLINED_FUNCTION_18();
          CMTimeAdd(v112, v110, v111);
        }
      }

      CFRelease(v46);
      *&a4->value = v163;
      a4->epoch = epoch;
      if (a3 && dword_1ED4CC2A0)
      {
        v121 = OUTLINED_FUNCTION_34(v113, v114, v115, v116, v117, v118, v119, v120, p_lhs, v140, v147, v154, v163, *(&v163 + 1), epoch, v190, v197, *(&v197 + 1), v198, v199, rhs.value, *&rhs.timescale, rhs.epoch, v201, v202.value, *&v202.timescale, v202.epoch, v203, v204, *(&v204 + 1), v205, v206, v207, *(&v207 + 1), v208, v209.value, *&v209.timescale, v209.epoch, 0, *&type[8], v211, v212, 0);
        v122 = v213;
        if (os_log_type_enabled(v121, type[0]))
        {
          v123 = v122;
        }

        else
        {
          v123 = v122 & 0xFFFFFFFE;
        }

        if (v123)
        {
          OUTLINED_FUNCTION_11_0();
          v124 = CMTimeGetSeconds(&time[0].start);
          LODWORD(lhs.value) = 136315394;
          *(&lhs.value + 4) = "figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v124;
          _os_log_send_and_compose_impl();
          LOBYTE(v122) = v213;
        }

        OUTLINED_FUNCTION_22();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v125, v126, v127, v128, v129, v122, 0, v130);
      }
    }

    CFRelease(v7);
  }
}

CMTime *__cdecl CMTimebaseGetTimeWithTimeScale(CMTime *__return_ptr retstr, CMTime *timebase, CMTimeScale timescale, CMTimeRoundingMethod method)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (timebase)
  {
    v7 = FigTimebaseCopyTargetTimebase(timebase);
    OUTLINED_FUNCTION_17(v7, retstr);
    if (timescale)
    {
      if ((retstr->flags & 0x1D) == 1 && retstr->timescale != timescale)
      {
        OUTLINED_FUNCTION_2_8();
        timebase = CMTimeConvertScale(retstr, &v9, timescale, method);
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return timebase;
}

OSStatus CMTimebaseSetTime(CMTimebaseRef timebase, CMTime *time)
{
  if (!timebase)
  {
    return -12748;
  }

  if ((time->flags & 0x1D) == 1)
  {
    result = figTimebaseVerifyReadWrite(timebase, time, v2, v3, v4, v5, v6, v7);
    if (result)
    {
      return result;
    }

    if (*(timebase + 4) != 1)
    {
      OUTLINED_FUNCTION_12_0();
      return figTimebaseSetAnchorTimeMaybeNowMaybeNotifying();
    }

    OUTLINED_FUNCTION_0_11();
    v14 = 4294954539;
    v15 = 2371;
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    v14 = 4294954548;
    v15 = 2361;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v14, "<<< timebase >>>", v15, v11, v12, v13);
}

OSStatus CMTimebaseSetAnchorTime(CMTimebaseRef timebase, CMTime *timebaseTime, CMTime *immediateSourceTime)
{
  if (!timebase)
  {
    return -12748;
  }

  if (*(timebase + 4) == 1)
  {
    v6 = qword_1ED4CC298;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFCE2BuLL, "<<< timebase >>>", 0x962, v5, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    return figTimebaseSetAnchorTimeMaybeNowMaybeNotifying();
  }
}

Float64 CMTimebaseGetRate(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return 0.0;
  }

  v2 = FigTimebaseCopyTargetTimebase(timebase);
  OUTLINED_FUNCTION_19(v2);
  v3 = v1[23];
  FigReentrantMutexUnlock(*(v1 + 14));
  CFRelease(v1);
  return v3;
}

OSStatus CMTimebaseGetTimeAndRate(CMTimebaseRef timebase, CMTime *timeOut, Float64 *rateOut)
{
  if (timebase)
  {
    OUTLINED_FUNCTION_19(timebase);
    if (timeOut)
    {
      OUTLINED_FUNCTION_10_1(&v7);
      *timeOut = v7;
      if (!rateOut)
      {
        goto LABEL_4;
      }
    }

    else if (!rateOut)
    {
LABEL_4:
      FigReentrantMutexUnlock(*(v3 + 14));
      return 0;
    }

    *rateOut = CMTimebaseGetRate(v3);
    goto LABEL_4;
  }

  return -12748;
}

OSStatus CMTimebaseSetRate(CMTimebaseRef timebase, Float64 rate)
{
  if (!timebase)
  {
    return -12748;
  }

  result = figTimebaseVerifyReadWrite(timebase, v2, v3, v4, v5, v6, v7, v8);
  if (!result)
  {
    OUTLINED_FUNCTION_12_0();
    return figTimebaseSetRateAndMaybeAnchorTime(timebase, v12, v13, 0, rate, v14, v15, v16, v17);
  }

  return result;
}

size_t CMTimebaseSetRateAndAnchorTimeWithFlags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8, double a9)
{
  if (!a1)
  {
    return 4294954548;
  }

  v9 = a4;
  result = figTimebaseVerifyReadWrite(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    v19 = *a2;
    v20 = *(a2 + 16);
    OUTLINED_FUNCTION_2_8();
    return figTimebaseSetRateAndMaybeAnchorTime(a1, &v19, &v18, v9, a9, v14, v15, v16, v17);
  }

  return result;
}

CMTimebaseRef CMTimebaseCopySourceTimebase(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return 0;
  }

  v1 = FigTimebaseCopyTargetTimebase(timebase);
  FigReentrantMutexLock(v1[14]);
  v2 = v1[17];
  if (v2)
  {
    CFRetain(v1[17]);
  }

  FigReentrantMutexUnlock(v1[14]);
  CFRelease(v1);
  return v2;
}

CMClockRef CMTimebaseCopySourceClock(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return 0;
  }

  v1 = FigTimebaseCopyTargetTimebase(timebase);
  FigReentrantMutexLock(v1[14]);
  v2 = v1[16];
  if (v2)
  {
    CFRetain(v1[16]);
  }

  FigReentrantMutexUnlock(v1[14]);
  CFRelease(v1);
  return v2;
}

CMTimebaseRef CMTimebaseGetMasterTimebase(CMTimebaseRef timebase)
{
  v1 = CMTimebaseCopySourceTimebase(timebase);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

CMClockOrTimebaseRef CMTimebaseCopySource(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return 0;
  }

  v2 = FigTimebaseCopyTargetTimebase(timebase);
  OUTLINED_FUNCTION_19(v2);
  v3 = v1[17];
  if (v3 || (v3 = v1[16]) != 0)
  {
    CFRetain(v3);
  }

  FigReentrantMutexUnlock(v1[14]);
  CFRelease(v1);
  return v3;
}

uint64_t FigTimebaseCopyUltimateMasterClockAndHeight(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = FigTimebaseCopyTargetTimebase(a1);
  FigReentrantMutexLock(v3[14]);
  v4 = v3[18];
  if (v4)
  {
    CFRetain(v3[18]);
  }

  v5 = v3[19];
  FigReentrantMutexUnlock(v3[14]);
  if (a2 && v4)
  {
    *a2 = v5;
  }

  CFRelease(v3);
  return v4;
}

OSStatus CMTimebaseSetSourceClock(CMTimebaseRef timebase, CMClockRef newSourceClock)
{
  result = -12748;
  if (timebase)
  {
    if (newSourceClock)
    {
      result = figTimebaseVerifyReadWrite(timebase, newSourceClock, v2, v3, v4, v5, v6, v7);
      if (!result)
      {

        return figTimebaseSetMaster();
      }
    }
  }

  return result;
}

uint64_t figTimebaseSetMaster()
{
  OUTLINED_FUNCTION_27(&kCMTimeInvalid);
  if (!v0)
  {
    return 4294954548;
  }

  v3 = v2;
  v4 = v1;
  if ((v1 == 0) == (v2 == 0))
  {
    return 4294954548;
  }

  v5 = v0;
  OUTLINED_FUNCTION_17(v0, &v89);
  CFGetAllocator(v5);
  OUTLINED_FUNCTION_0_18(v6, v7, v8, v9, v10, v11, v12, v13, *&v85.value, *&v85.timescale, *&v85.epoch, *&v86, *&time1.value, *&time1.timescale, *&time1.epoch, v88, *&v89.value);
  PayloadForNotificationAtTime = figTimebaseCreatePayloadForNotificationAtTime(v14, v15);
  OUTLINED_FUNCTION_20(PayloadForNotificationAtTime, @"CMTimebaseMasterWillChange");
  FigReentrantMutexLock(v5[14]);
  OUTLINED_FUNCTION_10_1(&v89);
  EffectiveRate = CMTimebaseGetEffectiveRate(v5);
  v18 = OUTLINED_FUNCTION_28();
  figTimebaseSwitchListenersToNewMaster(v18, v19, v20);
  v21 = v5[16];
  if (v21)
  {
    v22 = CFRetain(v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = v5[17];
  if (v23 && (v24 = CFRetain(v23)) != 0)
  {
    v25 = v24;
    OUTLINED_FUNCTION_17(v24, &time1);
    v26 = 0;
  }

  else
  {
    CMClockGetTime(&time1, v22);
    v25 = 0;
    v26 = 1;
  }

  v27 = v5[16];
  v5[16] = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  v28 = v5[17];
  v5[17] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  v29 = v5[18];
  UltimateMasterClock = figTimebaseFindUltimateMasterClock(v5, v5 + 19);
  v5[18] = UltimateMasterClock;
  if (UltimateMasterClock)
  {
    CFRetain(UltimateMasterClock);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  time1 = *(v5 + 8);
  v85 = v89;
  if (CMTimeCompare(&time1, &v85) > 0)
  {
    if (v26)
    {
      v31 = v22;
    }

    else
    {
      v31 = v25;
    }

    if (v4)
    {
      v32 = v4;
    }

    else
    {
      v32 = v3;
    }

    v85 = *(v5 + 20);
    v33 = CMSyncConvertTime(&time1, &v85, v31, v32);
    OUTLINED_FUNCTION_9_2(v33, v34, v35, v36, v37, v38, v39, v40, v85.value, *&v85.timescale, v85.epoch, v86, v41, time1.value);
    *(v5 + 216) = 0;
    v42 = v5 + 27;
    if (v4)
    {
      goto LABEL_35;
    }

LABEL_33:
    CMClockGetTime(&time1, v3);
    goto LABEL_36;
  }

  *(v5 + 8) = v89;
  v42 = v5 + 27;
  if (!v4)
  {
    Time = CMClockGetTime(&time1, v3);
    OUTLINED_FUNCTION_9_2(Time, v44, v45, v46, v47, v48, v49, v50, v85.value, *&v85.timescale, v85.epoch, v86, v51, time1.value);
    *v42 = 0;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_17(v4, &time1);
  OUTLINED_FUNCTION_9_2(v52, v53, v54, v55, v56, v57, v58, v59, v85.value, *&v85.timescale, v85.epoch, v86, v60, time1.value);
  *v42 = 0;
LABEL_35:
  OUTLINED_FUNCTION_17(v4, &time1);
LABEL_36:
  if (*(v5 + 23) != 0.0)
  {
    FigSyncInvertTransform((v5 + 20), (v5 + 28));
    if (!v61)
    {
      *v42 = 1;
    }
  }

  if (CMTimebaseGetEffectiveRate(v5) == EffectiveRate)
  {
    v62 = FigReentrantMutexUnlock(v5[14]);
    v63 = @"CMTimebaseMasterDidChange";
  }

  else
  {
    CMTimebaseGetEffectiveRate(v5);
    OUTLINED_FUNCTION_21();
    if (!(v76 ^ v77 | v65))
    {
      v67 = 1;
    }

    if (v65)
    {
      v67 = v66;
    }

    *(v5 + 80) = v67;
    if (v5[35])
    {
      OUTLINED_FUNCTION_0_18(v68, v69, v70, v71, v72, v73, v74, v75, *&v85.value, *&v85.timescale, *&v85.epoch, *&v86, *&time1.value, *&time1.timescale, *&time1.epoch, v88, *&v89.value);
      v78 = OUTLINED_FUNCTION_28();
      rescheduleValidAndRemoveInvalidTimers(v78, v79, v80);
    }

    if (v5[38])
    {
      OUTLINED_FUNCTION_0_18(v68, v69, v70, v71, v72, v73, v74, v75, *&v85.value, *&v85.timescale, *&v85.epoch, *&v86, *&time1.value, *&time1.timescale, *&time1.epoch, v88, *&v89.value);
      v81 = OUTLINED_FUNCTION_28();
      rescheduleValidAndRemoveCancelledTimerSources(v81, v82, v83);
    }

    v84 = FigReentrantMutexUnlock(v5[14]);
    v62 = OUTLINED_FUNCTION_20(v84, @"CMTimebaseMasterDidChange");
    v63 = @"CMTimebaseEffectiveRateChanged";
  }

  OUTLINED_FUNCTION_20(v62, v63);
  if (PayloadForNotificationAtTime)
  {
    CFRelease(PayloadForNotificationAtTime);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return 0;
}

OSStatus CMTimebaseSetSourceTimebase(CMTimebaseRef timebase, CMTimebaseRef newSourceTimebase)
{
  result = -12748;
  if (timebase)
  {
    if (newSourceTimebase)
    {
      result = figTimebaseVerifyReadWrite(timebase, newSourceTimebase, v2, v3, v4, v5, v6, v7);
      if (!result)
      {
        if (figTimebaseIsDescendantOfTimebase(newSourceTimebase, timebase))
        {
          return -12749;
        }

        else
        {

          return figTimebaseSetMaster();
        }
      }
    }
  }

  return result;
}

OSStatus CMTimebaseAddTimer(CMTimebaseRef timebase, CFRunLoopTimerRef timer, CFRunLoopRef runloop)
{
  if (!timebase)
  {
    return -12748;
  }

  v4 = -12748;
  if (!timer || !runloop)
  {
    return v4;
  }

  if (CFRunLoopTimerGetInterval(timer) >= 86400.0)
  {
    FigReentrantMutexLock(*(timebase + 14));
    if (*(timebase + 35) || (OUTLINED_FUNCTION_7_3(), valueCallBacks.release = cfDataFigTimeRelease, valueCallBacks.equal = cfDataFigTimeEqual, valueCallBacks.copyDescription = cfDataFigTimeCopyDescription, v12 = CFGetAllocator(timebase), v13 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], &valueCallBacks), (*(timebase + 35) = v13) != 0))
    {
      if (!*(timebase + 36))
      {
        CFGetAllocator(timebase);
        OUTLINED_FUNCTION_26();
        Mutable = CFDictionaryCreateMutable(v14, v15, v16, v17);
        *(timebase + 36) = Mutable;
        if (!Mutable)
        {
          OUTLINED_FUNCTION_6_5();
          v26 = 4294954546;
          v27 = 3470;
          goto LABEL_24;
        }
      }

      if (!*(timebase + 37))
      {
        v19 = CFGetAllocator(timebase);
        v20 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(timebase + 37) = v20;
        if (!v20)
        {
          OUTLINED_FUNCTION_6_5();
          v26 = 4294954546;
          v27 = 3478;
          goto LABEL_24;
        }
      }

      if (CFDictionaryContainsKey(*(timebase + 35), timer))
      {
        Value = CFDictionaryGetValue(*(timebase + 37), timer);
        if (!FigCFEqual(Value, runloop))
        {
          OUTLINED_FUNCTION_6_5();
          v26 = 4294954547;
          v27 = 3500;
LABEL_24:
          v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v26, "<<< timebase >>>", v27, v23, v24, v25);
          goto LABEL_25;
        }
      }

      else
      {
        v28 = CFGetAllocator(timebase);
        v29 = CFDataCreate(v28, &kCMTimeInvalid, 24);
        if (!v29)
        {
          OUTLINED_FUNCTION_6_5();
          v26 = 4294954546;
          v27 = 3486;
          goto LABEL_24;
        }

        v30 = v29;
        CFRunLoopTimerSetNextFireDate(timer, 8073216000.0);
        CFRunLoopWakeUp(runloop);
        CFDictionaryAddValue(*(timebase + 35), timer, v30);
        CFRelease(v30);
        CFDictionaryAddValue(*(timebase + 37), timer, runloop);
      }

      v4 = 0;
LABEL_25:
      FigReentrantMutexUnlock(*(timebase + 14));
      return v4;
    }

    OUTLINED_FUNCTION_6_5();
    v26 = 4294954546;
    v27 = 3462;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_6_5();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE31uLL, "<<< timebase >>>", 0xD74, v8, v9, v10);
}

OSStatus CMTimebaseRemoveTimer(CMTimebaseRef timebase, CFRunLoopTimerRef timer)
{
  v3 = -12748;
  if (timebase && timer)
  {
    OUTLINED_FUNCTION_19(timebase);
    v5 = *(v2 + 280);
    if (v5 && CFDictionaryContainsKey(v5, timer))
    {
      v6 = OUTLINED_FUNCTION_30();
      CFDictionaryRemoveValue(v6, v7);
      CFDictionaryRemoveValue(*(v2 + 288), timer);
      CFDictionaryRemoveValue(*(v2 + 296), timer);
      CFRunLoopTimerSetNextFireDate(timer, 8073216000.0);
      v3 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_6_5();
      v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0xFFFFCE33uLL, "<<< timebase >>>", 0xDC8, v9, v10, v11);
    }

    FigReentrantMutexUnlock(*(v2 + 112));
  }

  return v3;
}

OSStatus CMTimebaseSetTimerNextFireTime(CMTimebaseRef timebase, CFRunLoopTimerRef timer, CMTime *fireTime, uint32_t flags)
{
  v5 = -12748;
  if (timebase && timer)
  {
    OUTLINED_FUNCTION_19(timebase);
    v9 = *(v4 + 280);
    if (v9 && CFDictionaryContainsKey(v9, timer))
    {
      if (CFRunLoopTimerIsValid(timer))
      {
        v10 = *(v4 + 296);
        if (v10)
        {
          Value = CFDictionaryGetValue(v10, timer);
          if (Value)
          {
            v12 = Value;
            v13 = CFGetAllocator(v4);
            v14 = CFDataCreate(v13, fireTime, 24);
            if (v14)
            {
              v24 = v14;
              v25 = OUTLINED_FUNCTION_30();
              CFDictionaryReplaceValue(v25, v26, v24);
              CFRelease(v24);
              CFDictionarySetValue(*(v4 + 288), timer, flags);
              OUTLINED_FUNCTION_10_1(&v28);
              v27 = *fireTime;
              rescheduleTimer(timer, v12, &v27, v4, &v28, 2, flags);
              v5 = 0;
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_23();
            v19 = 4294954546;
            v20 = 3589;
          }

          else
          {
            OUTLINED_FUNCTION_23();
            v19 = 4294954547;
            v20 = 3582;
          }
        }

        else
        {
          OUTLINED_FUNCTION_23();
          v19 = 4294954547;
          v20 = 3576;
        }
      }

      else
      {
        v22 = OUTLINED_FUNCTION_30();
        CFDictionaryRemoveValue(v22, v23);
        CFDictionaryRemoveValue(*(v4 + 288), timer);
        CFDictionaryRemoveValue(*(v4 + 296), timer);
        OUTLINED_FUNCTION_23();
        v19 = 4294954547;
        v20 = 3571;
      }
    }

    else
    {
      OUTLINED_FUNCTION_23();
      v19 = 4294954547;
      v20 = 3563;
    }

    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<<< timebase >>>", v20, v16, v17, v18);
LABEL_12:
    FigReentrantMutexUnlock(*(v4 + 112));
  }

  return v5;
}

OSStatus CMTimebaseSetTimerToFireImmediately(CMTimebaseRef timebase, CFRunLoopTimerRef timer)
{
  v3 = -12748;
  if (timebase && timer)
  {
    OUTLINED_FUNCTION_19(timebase);
    v5 = *(v2 + 280);
    if (v5 && CFDictionaryContainsKey(v5, timer))
    {
      if (CFRunLoopTimerIsValid(timer))
      {
        v6 = *(v2 + 296);
        if (v6)
        {
          Value = CFDictionaryGetValue(v6, timer);
          if (Value)
          {
            v8 = Value;
            CFDictionaryReplaceValue(*(v2 + 280), timer, *MEMORY[0x1E695E4C0]);
            Current = CFAbsoluteTimeGetCurrent();
            CFRunLoopTimerSetNextFireDate(timer, Current);
            CFRunLoopWakeUp(v8);
            v3 = 0;
LABEL_11:
            FigReentrantMutexUnlock(*(v2 + 112));
            return v3;
          }

          OUTLINED_FUNCTION_6_5();
          v14 = 3642;
        }

        else
        {
          OUTLINED_FUNCTION_6_5();
          v14 = 3636;
        }
      }

      else
      {
        v16 = OUTLINED_FUNCTION_30();
        CFDictionaryRemoveValue(v16, v17);
        CFDictionaryRemoveValue(*(v2 + 288), timer);
        CFDictionaryRemoveValue(*(v2 + 296), timer);
        OUTLINED_FUNCTION_6_5();
        v14 = 3631;
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_5();
      v14 = 3623;
    }

    v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE33uLL, "<<< timebase >>>", v14, v11, v12, v13);
    goto LABEL_11;
  }

  return v3;
}

OSStatus CMTimebaseRemoveTimerDispatchSource(CMTimebaseRef timebase, dispatch_source_t timerSource)
{
  v3 = -12748;
  if (timebase && timerSource)
  {
    OUTLINED_FUNCTION_19(timebase);
    v5 = *(v2 + 304);
    if (v5 && CFDictionaryContainsKey(v5, timerSource))
    {
      CFDictionaryRemoveValue(*(v2 + 304), timerSource);
      CFDictionaryRemoveValue(*(v2 + 312), timerSource);
      OUTLINED_FUNCTION_26();
      dispatch_source_set_timer(v6, v7, v8, v9);
      v3 = 0;
    }

    else
    {
      v3 = -12749;
    }

    FigReentrantMutexUnlock(*(v2 + 112));
  }

  return v3;
}

OSStatus CMTimebaseSetTimerDispatchSourceToFireImmediately(CMTimebaseRef timebase, dispatch_source_t timerSource)
{
  v3 = -12748;
  if (timebase && timerSource)
  {
    OUTLINED_FUNCTION_19(timebase);
    v5 = *(v2 + 304);
    if (v5 && CFDictionaryContainsKey(v5, timerSource))
    {
      v6 = dispatch_source_testcancel(timerSource);
      v7 = *(v2 + 304);
      if (!v6)
      {
        CFDictionaryReplaceValue(v7, timerSource, *MEMORY[0x1E695E4C0]);
        dispatch_source_set_timer(timerSource, 0, 0x7009D32DA3000000uLL, 0);
        v3 = 0;
        goto LABEL_9;
      }

      CFDictionaryRemoveValue(v7, timerSource);
      CFDictionaryRemoveValue(*(v2 + 312), timerSource);
      OUTLINED_FUNCTION_6_5();
      v12 = 3880;
    }

    else
    {
      OUTLINED_FUNCTION_6_5();
      v12 = 3873;
    }

    v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0xFFFFCE33uLL, "<<< timebase >>>", v12, v9, v10, v11);
LABEL_9:
    FigReentrantMutexUnlock(*(v2 + 112));
  }

  return v3;
}

OSStatus CMTimebaseNotificationBarrier(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return -12748;
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterBarrier(DefaultLocalCenter, timebase);
}

void figTimebaseGetAnchorTimebaseTimeIfClamped(OpaqueCMTimebase *a1@<X0>, CMTime *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *&kCMTimeInvalid.value;
  *(a4 + 16) = 0;
  v8 = FigTimebaseCopyUltimateMasterClockAndHeight(a1, 0);
  v9 = CMTimebaseCopySource(a1);
  v10 = v9;
  if (v8 && v9)
  {
    v28 = 0.0;
    outRelativeRate = 0.0;
    memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
    memset(&outRelativeToClockOrTimebaseAnchorTime, 0, sizeof(outRelativeToClockOrTimebaseAnchorTime));
    CMSyncGetRelativeRateAndAnchorTime(a1, v8, &outRelativeRate, 0, 0);
    CMSyncGetRelativeRateAndAnchorTime(a1, v10, 0, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
    CMSyncGetRelativeRateAndAnchorTime(v10, v8, &v28, 0, 0);
    Time = CMSyncGetTime(&v27, v10);
    if (outRelativeRate == 0.0)
    {
LABEL_9:
      v20 = 0;
LABEL_17:
      *a3 = v20;
      goto LABEL_18;
    }

    v19 = v28;
    if (v28 > 0.0)
    {
      Time = OUTLINED_FUNCTION_14(Time, v12, v13, v14, v15, v16, v17, v18, *&v22.value, v22.epoch, v23, v24.value, *&v24.timescale, *&outRelativeToClockOrTimebaseAnchorTime.value, outRelativeToClockOrTimebaseAnchorTime.epoch);
      if (Time > 0)
      {
        goto LABEL_14;
      }

      v19 = v28;
    }

    if (v19 >= 0.0 || (OUTLINED_FUNCTION_14(Time, v12, v13, v14, v15, v16, v17, v18, *&v22.value, v22.epoch, v23, v24.value, *&v24.timescale, *&outRelativeToClockOrTimebaseAnchorTime.value, outRelativeToClockOrTimebaseAnchorTime.epoch) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    *a4 = outOfClockOrTimebaseAnchorTime;
    if (a2)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      v22 = outRelativeToClockOrTimebaseAnchorTime;
      CMSyncConvertTime(&v24, &v22, v10, HostTimeClock);
      *a2 = v24;
    }

    v20 = 1;
    goto LABEL_17;
  }

  *a3 = 0;
  if (!v8)
  {
    if (!v9)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_18:
  CFRelease(v8);
  if (!v10)
  {
    return;
  }

LABEL_12:
  CFRelease(v10);
}

__CFString *ftbCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  OUTLINED_FUNCTION_17(a1, &v53);
  v4 = CFGetAllocator(a1);
  OUTLINED_FUNCTION_31(v4, v5, v6, v7, v8, v9, v10, v11, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, time.value, *&time.timescale, time.epoch, *&v53.value);
  v13 = CMTimeCopyDescription(v12, &time);
  OUTLINED_FUNCTION_31(v13, v14, v15, v16, v17, v18, v19, v20, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, time.value, *&time.timescale, time.epoch, *&v53.value);
  Seconds = CMTimeGetSeconds(&time);
  v22 = "(UNKNOWN TYPE)";
  v23 = *(a1 + 16);
  if (v23 == 1)
  {
    v22 = "(Looping)";
  }

  if (v23 == 2)
  {
    v22 = "(ReadOnly)";
  }

  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = "";
  }

  v25 = *(a1 + 24);
  v26 = CFGetRetainCount(a1);
  v27 = CFGetAllocator(a1);
  v28 = *(a1 + 128);
  if (v28)
  {
    v29 = "clock";
  }

  else
  {
    v29 = "timebase";
  }

  if (!v28)
  {
    v28 = *(a1 + 136);
  }

  Rate = CMTimebaseGetRate(a1);
  CFStringAppendFormat(Mutable, 0, @"FigTimebase: %p %s targetTimebase: %p retainCount: %d allocator: %p master %s: %p rate: %f time: %@ = %f seconds\n", a1, v24, v25, v26, v27, v29, v28, *&Rate, v13, *&Seconds);
  if (v13)
  {
    CFRelease(v13);
  }

  return Mutable;
}
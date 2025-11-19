uint64_t VCPixelBufferOverlay_updateSourceForType(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v2 = *(a1 + 168);
    v9 = 1;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __VCPixelBufferOverlay_updateSourceForType_block_invoke;
    v5[3] = &unk_1E85F6D88;
    v5[5] = &v6;
    v5[6] = a2;
    v5[4] = a1;
    dispatch_sync(v2, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

char *VCFFTMeter_Create()
{
  v0 = 69824;
  v1 = malloc_type_calloc(1uLL, 0x111E0uLL, 0x10E004047CE1534uLL);
  if (v1)
  {
    if (VCAllocatorFirstCome_Create(*MEMORY[0x1E695E480], "FFTMeterLERPFilterAllocator", v1 + 8763))
    {
      VCFFTMeter_Create_cold_1();
    }

    else
    {
      vDSP_hann_window(v1 + 9608, 0xF00uLL, 0);
      *(v1 + 1) = v1 + 23072;
      *(v1 + 2) = v1 + 30752;
      Setup = vDSP_DFT_zrop_CreateSetup(0, 0xF00uLL, vDSP_DFT_FORWARD);
      *v1 = Setup;
      if (Setup)
      {
        *(v1 + 17523) = 730643660;
        memset_pattern4(v1 + 69152, v1 + 70092, 0xD8uLL);
        v3 = 0;
        *(v1 + 17522) = 965249161;
        v4 = xmmword_1DBD45970;
        v5 = vdupq_n_s64(0x42uLL);
        v6 = xmmword_1DBD45330;
        v7 = vdupq_n_s64(4uLL);
        do
        {
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(v5, v6)), *v4.i8).u8[0])
          {
            *&v1[v0] = (v3 * 53.0) / 65.0;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x42uLL), *&v6)), *&v4).i8[2])
          {
            *&v1[v0 + 4] = ((v3 + 1) * 53.0) / 65.0;
          }

          if (vuzp1_s16(*&v4, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x42uLL), *&v4))).i32[1])
          {
            *&v1[v0 + 8] = ((v3 + 2) * 53.0) / 65.0;
            *&v1[v0 + 12] = ((v3 + 3) * 53.0) / 65.0;
          }

          v3 += 4;
          v4 = vaddq_s64(v4, v7);
          v6 = vaddq_s64(v6, v7);
          v0 += 16;
        }

        while (v3 != 68);
        *(v1 + 8762) = 264;
        return v1;
      }

      VCFFTMeter_Create_cold_2();
    }
  }

  else
  {
    VCFFTMeter_Create_cold_3();
  }

  if (*v1)
  {
    vDSP_DFT_DestroySetup(*v1);
  }

  free(v1);
  return 0;
}

void VCFFTMeter_Destroy(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
    *a1 = 0;
    if (v1)
    {
      if (*v1)
      {
        vDSP_DFT_DestroySetup(*v1);
      }

      v2 = *(v1 + 70104);
      if (v2)
      {
        CFRelease(v2);
      }

      free(v1);
    }
  }
}

__CFData *VCFFTMeter_Compute(uint64_t a1, uint64_t a2)
{
  Mutable = 0;
  v29 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v28 = -1431655766;
    AveragePower = VCAudioBufferList_GetAveragePower(a2);
    BufferAtIndex = VCAudioBufferList_GetBufferAtIndex(a2, 0, &v28);
    memmove((a1 + 32), (a1 + 32 + 4 * v28), 4 * (3840 - v28));
    v7 = (a1 + 32 + 4 * (3840 - v28));
    if (AveragePower <= -70.0)
    {
      bzero(v7, 4 * v28);
    }

    else
    {
      memcpy(v7, BufferAtIndex, 4 * v28);
    }

    MEMORY[0x1E128D6F0](a1 + 32, 1, a1 + 38432, 1, a1 + 53792, 1, 3840);
    vDSP_ctoz((a1 + 53792), 2, (a1 + 8), 1, 0x780uLL);
    vDSP_DFT_Execute(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 8), *(a1 + 16));
    MEMORY[0x1E128D710](*(a1 + 8), 1, a1 + 70088, *(a1 + 8), 1, 1920);
    MEMORY[0x1E128D710](*(a1 + 16), 1, a1 + 70088, *(a1 + 16), 1, 1920);
    vDSP_zvmags((a1 + 8), 1, (a1 + 15392), 1, 0x780uLL);
    v8 = 0;
    v9 = 0;
    *(a1 + 15392) = 0;
    v10 = (a1 + 69376);
    do
    {
      v11 = v9 + 1;
      v12 = _octave2IndexTable6[v9 + 1];
      v13 = 1.0e-12;
      if (v12 > v8)
      {
        v14 = (a1 + 15392 + 4 * v8);
        v13 = 1.0e-12;
        v15 = v12 - v8;
        do
        {
          v16 = *v14++;
          v13 = v13 + v16;
          --v15;
        }

        while (v15);
      }

      v10[v9] = v13 / (v12 - v8);
      v8 = v12;
      ++v9;
    }

    while (v11 != 54);
    __B = 1.0;
    vDSP_vdbcon((a1 + 69376), 1, &__B, (a1 + 69376), 1, 0x36uLL, 0);
    __C = 0.13673;
    v25 = 1060765361;
    vDSP_vasm((a1 + 69376), 1, (a1 + 69152), 1, &__C, (a1 + 69152), 1, 0x36uLL);
    MEMORY[0x1E128D700](a1 + 69600, 1, &v25, a1 + 69152, 1, a1 + 69600, 1, 54);
    v17 = *(a1 + 69552);
    *(a1 + 69312) = *(a1 + 69536);
    *(a1 + 69328) = v17;
    *(a1 + 69344) = *(a1 + 69568);
    *(a1 + 69360) = *(a1 + 69584);
    v18 = *(a1 + 69488);
    *(a1 + 69248) = *(a1 + 69472);
    *(a1 + 69264) = v18;
    v19 = *(a1 + 69520);
    *(a1 + 69280) = *(a1 + 69504);
    *(a1 + 69296) = v19;
    v20 = *(a1 + 69424);
    *(a1 + 69184) = *(a1 + 69408);
    *(a1 + 69200) = v20;
    v21 = *(a1 + 69456);
    *(a1 + 69216) = *(a1 + 69440);
    *(a1 + 69232) = v21;
    v22 = *(a1 + 69392);
    *(a1 + 69152) = *v10;
    *(a1 + 69168) = v22;
    *(a1 + 69816) = *(a1 + 69812);
    Mutable = CFDataCreateMutable(*(a1 + 70104), *(a1 + 70096));
    CFDataSetLength(Mutable, *(a1 + 70096));
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    vDSP_vlint((a1 + 69600), (a1 + 69824), 1, MutableBytePtr, 1, 0x42uLL, 0x36uLL);
  }

  return Mutable;
}

__CFString *VCSessionMediaType_Name(uint64_t a1)
{
  if (a1 >= 6)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", a1];
  }

  else
  {
    return off_1E85F8740[a1];
  }
}

uint64_t VCSessionMediaType_FromAVCSessionMediaType(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_1DBD4F32C[a1];
  }
}

uint64_t VCMediaStreamTransport_GetSRTPMediaKeyLength(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return -1;
  }

  else
  {
    return qword_1DBD4F380[a1];
  }
}

__CFString *_VCMediaStreamTransport_CipherSuiteAsString(uint64_t a1)
{
  if ((a1 + 1) >= 0xD)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown cipher=%d", a1];
  }

  else
  {
    return off_1E85F8770[(a1 + 1)];
  }
}

double VCMediaStreamTransport_DecryptionTimeoutInterval(uint64_t a1)
{
  if (a1)
  {
    return VCMediaStreamConfig_DecryptionTimeOutInterval(*(a1 + 8));
  }

  else
  {
    return 0.0;
  }
}

uint64_t VCMediaStreamTransport_SetDecryptionTimeoutInterval(uint64_t result, double a2)
{
  if (result)
  {
    return VCAudioBufferList_SetHostTimeJumpSize(*(result + 8), a2);
  }

  return result;
}

double VCMediaStreamTransport_DecryptionMKMRecoveryInterval(uint64_t a1)
{
  if (a1)
  {
    return VCMediaStreamConfig_DecryptionMKMRecoveryInterval(*(a1 + 8));
  }

  else
  {
    return 0.0;
  }
}

__CFString *VCMediaStreamTransport_SRTPCipherSuiteForVCMediaStreamCipherSuite(uint64_t a1)
{
  v1 = [VCMediaStreamTransport SRTPCipherSuiteForVCMediaStreamCipherSuite:a1];

  return _VCMediaStreamTransport_CipherSuiteAsString(v1);
}

uint64_t VCMediaStreamTransport_GetSRTPSaltLength(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return -1;
  }

  else
  {
    return qword_1DBD4F3E0[a1];
  }
}

uint64_t VCPacketFilterRTPCreate(uint64_t a1, void *a2)
{
  ClassID = VCPacketFilterGetClassID();

  return VCFBOUtils_ObjectCreate(a1, a2, &kVCPacketFilterRTPVTable, ClassID, 52);
}

void _VCPacketFilterRTPFinalize(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v2 = DerivedStorage;
      v3 = *DerivedStorage;
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = v2[1];
      if (v4)
      {

        CFRelease(v4);
      }
    }

    else
    {
      _VCPacketFilterRTPFinalize_cold_1();
    }
  }

  else
  {
    _VCPacketFilterRTPFinalize_cold_2();
  }
}

uint64_t _VCPacketFilterRTPCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCPacketFilterRTPCopyProperty_cold_3();
    return v14;
  }

  if (!a2 || !a4)
  {
    _VCPacketFilterRTPCopyProperty_cold_2();
    return v14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"RTPRemoteSSRC"))
  {
    v7 = *DerivedStorage;
    if (!*DerivedStorage)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return 4294954513;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 4294954513;
      }

      v14 = 136315906;
      v15 = v8;
      v16 = 2080;
      v17 = "_VCPacketFilterRTPCopyProperty";
      v18 = 1024;
      v19 = 70;
      v20 = 2112;
      v21 = a2;
LABEL_19:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Parameter '%@' is currently not set for packet filter", &v14, 0x26u);
      return 4294954513;
    }

    goto LABEL_11;
  }

  if (CFEqual(a2, @"RTPPayloadList"))
  {
    v7 = *(DerivedStorage + 8);
    if (!v7)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return 4294954513;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 4294954513;
      }

      v14 = 136315906;
      v15 = v13;
      v16 = 2080;
      v17 = "_VCPacketFilterRTPCopyProperty";
      v18 = 1024;
      v19 = 78;
      v20 = 2112;
      v21 = a2;
      goto LABEL_19;
    }

LABEL_11:
    v10 = CFRetain(v7);
    result = 0;
    *a4 = v10;
    return result;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCPacketFilterRTPCopyProperty_cold_1(v12);
    }
  }

  return 4294954512;
}

uint64_t _VCPacketFilterRTPSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    _VCPacketFilterRTPSetProperty_cold_3();
    return v11;
  }

  if (!a2 || !a3)
  {
    _VCPacketFilterRTPSetProperty_cold_2();
    return v11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"RTPRemoteSSRC"))
  {
    v6 = *DerivedStorage;
    *DerivedStorage = a3;
    CFRetain(a3);
    if (!v6)
    {
      return 0;
    }

LABEL_6:
    CFRelease(v6);
    return 0;
  }

  if (CFEqual(a2, @"RTPPayloadList"))
  {
    Copy = CFArrayCreateCopy(0, a3);
    v6 = Copy;
    v9 = *(DerivedStorage + 8);
    *(DerivedStorage + 8) = Copy;
    if (Copy)
    {
      CFRetain(Copy);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (!v6)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCPacketFilterRTPSetProperty_cold_1(v10);
    }
  }

  return 4294954512;
}

void _VCXPCConnection_timeoutHandlerFunc(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
  {
    _VCXPCConnection_timeoutHandlerFunc_cold_1();
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    [VCXPCConnection selfTerminateDueToTimeout:v2];
    CFRelease(v3);
  }
}

void sub_1DB96E0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB96ED6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB96FB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t VCVideoStreamConfig_StreamType(uint64_t result)
{
  if (result)
  {
    return *(result + 456);
  }

  return result;
}

uint64_t Crossfade_Initialize(uint64_t a1, signed int a2, int a3, char a4)
{
  v7 = a3 * a2;
  Crossfade_Finalize(a1);
  v8 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  v9 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  result = malloc_type_malloc(v7, 0xA0E6E636uLL);
  v11 = result;
  if (v8 && v9 && result)
  {
    if (a2 < 0 || (*(a1 + 8) = v8, *(a1 + 16) = v9, *(a1 + 32) = a2, v7 < 0))
    {
      __break(0x5519u);
    }

    else
    {
      *a1 = result;
      *(a1 + 24) = v7;
      if (a2)
      {
        v12 = 0;
        do
        {
          v13 = cos(v12 * 3.14159265 / a2);
          v14 = sqrt(v13 * -0.5 + 0.5);
          v8[v12] = v14;
          *&v13 = sqrt(v13 * 0.5 + 0.5);
          v9[v12++] = LODWORD(v13);
        }

        while (a2 != v12);
      }

      result = 0;
      *(a1 + 36) = a4;
    }
  }

  else
  {
    free(v8);
    free(v9);
    free(v11);
    return 2147549187;
  }

  return result;
}

double Crossfade_Finalize(uint64_t a1)
{
  free(*(a1 + 8));
  free(*(a1 + 16));
  free(*a1);
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t Crossfade_Apply(uint64_t result, const float *__C, unint64_t a3, float *__E, unint64_t a5)
{
  if (!result || !__C || !__E)
  {
    return 0;
  }

  v5 = *(result + 24);
  if (v5 > a3 || v5 > a5)
  {
    return 0;
  }

  if (*(result + 36) == 1)
  {
    v7 = 1;
    vDSP_vmma(__E, 1, *(result + 8), 1, __C, 1, *(result + 16), 1, __E, 1, *(result + 32));
    return v7;
  }

  v8 = *(result + 32);
  if (v8 < 1)
  {
    return 1;
  }

  v9 = 0;
  v10 = 4 * v8;
  v11 = __E;
  v12 = __C;
  while (v11 < (__E + a5) && v11 >= __E && v12 < (__C + a3) && v12 >= __C)
  {
    v13 = *v12;
    v12 = (v12 + 2);
    *v11 = ((*(*(result + 16) + v9) * v13) + (*v11 * *(*(result + 8) + v9)));
    v11 = (v11 + 2);
    v9 += 4;
    if (v10 == v9)
    {
      return 1;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t VCSpatialAudioMetadata_Create(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t *a5)
{
  if (!a5)
  {
    VCSpatialAudioMetadata_Create_cold_13();
    return v18;
  }

  *a5 = 0;
  if (!a2)
  {
    VCSpatialAudioMetadata_Create_cold_12();
    return v18;
  }

  v8 = a3;
  if (!a3)
  {
    if (GetSpatialMetadataSPI_sSpatialMetadataSPIOnce != -1)
    {
      VCSpatialAudioMetadata_Create_cold_1();
    }

    v8 = GetSpatialMetadataSPI_sSpatialMetadataSPI;
    if (!GetSpatialMetadataSPI_sSpatialMetadataSPI)
    {
      VCSpatialAudioMetadata_Create_cold_11();
      return v18;
    }
  }

  if (_MergedGlobals_17 != -1)
  {
    VCSpatialAudioMetadata_Create_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCSpatialAudioMetadata_Create_cold_10();
    return v18;
  }

  v11 = Instance;
  v12 = malloc_type_calloc(a2, 0x10uLL, 0x102004075F474C6uLL);
  *(v11 + 104) = v12;
  if (!v12)
  {
    VCSpatialAudioMetadata_Create_cold_9();
LABEL_36:
    v16 = v18;
    CFRelease(v11);
    return v16;
  }

  *(v11 + 80) = v8;
  if ((*(v8 + 8))(v11 + 88, a2))
  {
    VCSpatialAudioMetadata_Create_cold_3();
    goto LABEL_36;
  }

  v13 = *(v11 + 88);
  if (!v13)
  {
    VCSpatialAudioMetadata_Create_cold_8();
    goto LABEL_36;
  }

  if ((*(*(v11 + 80) + 40))(v13, v11 + 168))
  {
    VCSpatialAudioMetadata_Create_cold_4();
    goto LABEL_36;
  }

  if (!*(v11 + 168))
  {
    VCSpatialAudioMetadata_Create_cold_7();
    goto LABEL_36;
  }

  if (VCAllocatorFirstCome_Create(a1, "VCSpatialAudioMetadataAllocator", (v11 + 184)))
  {
    VCSpatialAudioMetadata_Create_cold_5();
    goto LABEL_36;
  }

  if (VCAllocatorFirstCome_Create(a1, "VCSpatialAudioMetadataAllocator", (v11 + 176)))
  {
    VCSpatialAudioMetadata_Create_cold_6();
    goto LABEL_36;
  }

  pthread_mutex_init((v11 + 16), 0);
  if (a4)
  {
    *(v11 + 192) = _Block_copy(a4);
  }

  *(v11 + 100) = a2;
  v14 = *(v11 + 104);
  if (a2 != 1)
  {
    v15 = v14 + 16;
    do
    {
      *(v15 + 12) = *(v15 - 4) + 1;
      *(v15 - 16) = v15;
      v15 += 16;
    }

    while (v15 <= v14 + 16 * (a2 - 1));
  }

  v16 = 0;
  *(v11 + 112) = v14;
  *a5 = v11;
  return v16;
}

uint64_t VCSpatialAudioMetadata_HasChanged(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 96);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t VCSpatialAudioMetadata_CreateEntry(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    *a3 = 0;
    if (a2)
    {
      pthread_mutex_lock((a2 + 16));
      if (*(a2 + 112))
      {
        if (qword_1EDBDA9E0 != -1)
        {
          VCSpatialAudioMetadata_CreateEntry_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          v6 = Instance;
          v7 = *(a2 + 112);
          *(Instance + 48) = v7;
          *(a2 + 112) = *v7;
          *v7 = 0;
          *(v7 + 8) = 1;
          *(Instance + 16) = CFRetain(a2);
          _VCSpatialAudioMetadata_SetEntryPropertyUInt32(v6, 10, 1);
          v8 = 0;
          *a3 = v6;
LABEL_8:
          pthread_mutex_unlock((a2 + 16));
          return v8;
        }

        VCSpatialAudioMetadata_CreateEntry_cold_2();
      }

      else
      {
        VCSpatialAudioMetadata_CreateEntry_cold_3();
      }

      v8 = v10;
      goto LABEL_8;
    }

    v8 = 2151415809;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCSpatialAudioMetadata_CreateEntry_cold_4();
      }
    }
  }

  else
  {
    v8 = 2151415809;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCSpatialAudioMetadata_CreateEntry_cold_5();
      }
    }
  }

  return v8;
}

void _VCSpatialAudioMetadata_SetEntryPropertyUInt32(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = *(a1 + 16);
  if ((*(*(v4 + 80) + 32))(*(v4 + 88), a2, *(*(a1 + 48) + 12), &v9, 4))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v7 = v9;
        v8 = FourccToCStr(v3);
        *buf = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "_VCSpatialAudioMetadata_SetEntryPropertyUInt32";
        v14 = 1024;
        v15 = 166;
        v16 = 1024;
        v17 = v3;
        v18 = 1024;
        v19 = v7;
        v20 = 2080;
        v21 = v8;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to set property %d to %u. error=%s", buf, 0x32u);
      }
    }
  }

  else
  {
    *(v4 + 96) = 1;
  }
}

uint64_t VCSpatialAudioMetadata_ChannelIndex(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      pthread_mutex_lock((v3 + 16));
      if (a2)
      {
        v5 = 0;
        *a2 = *(*(a1 + 48) + 12);
      }

      else
      {
        VCSpatialAudioMetadata_ChannelIndex_cold_1();
        v5 = v7;
      }

      pthread_mutex_unlock((*(a1 + 16) + 16));
    }

    else
    {
      v5 = 2151415812;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCSpatialAudioMetadata_ChannelIndex_cold_2();
          return 2151415812;
        }
      }
    }
  }

  else
  {
    v5 = 2151415809;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCSpatialAudioMetadata_ChannelIndex_cold_3();
      }
    }
  }

  return v5;
}

uint64_t VCSpatialAudioMetadata_UpdateGlobalInfo(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 16));
    if (a2)
    {
      v4 = *(a2 + 1);
      if (v4 <= 0.0)
      {
        VCSpatialAudioMetadata_UpdateGlobalInfo_cold_6();
      }

      else if (*(a2 + 2) <= 0.0)
      {
        VCSpatialAudioMetadata_UpdateGlobalInfo_cold_5();
      }

      else if (*(a2 + 3) <= 0.0)
      {
        VCSpatialAudioMetadata_UpdateGlobalInfo_cold_4();
      }

      else if (*(a2 + 4) <= 0.0)
      {
        VCSpatialAudioMetadata_UpdateGlobalInfo_cold_3();
      }

      else
      {
        v5 = (a2 + 2);
        if (*(a2 + 8) >= 2u)
        {
          VCSpatialAudioMetadata_UpdateGlobalInfo_cold_2();
        }

        else
        {
          v6 = a2 + 7;
          if (!*(a2 + 7))
          {
            v7 = *a2;
            if (*(a1 + 120) == 1 && v7 == *(a1 + 124) || (_VCSpatialAudioMetadata_SetPropertyUInt32(a1, 0, v7), v4 = *(a2 + 1), (*(a1 + 120))) && v4 == *(a1 + 128))
            {
              v8 = *(a2 + 2);
            }

            else
            {
              _VCSpatialAudioMetadata_SetPropertyFloat32(a1, 4, v4);
              v8 = *(a2 + 2);
              if ((*(a1 + 120) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            if (v8 == *(a1 + 132))
            {
              v10 = *(a2 + 3);
LABEL_23:
              if (v10 == *(a1 + 136))
              {
                v11 = *(a2 + 4);
                goto LABEL_27;
              }

LABEL_24:
              _VCSpatialAudioMetadata_SetPropertyFloat32(a1, 6, v10);
              v11 = *(a2 + 4);
              if ((*(a1 + 120) & 1) == 0)
              {
LABEL_28:
                _VCSpatialAudioMetadata_SetPropertyFloat32(a1, 7, v11);
                if ((*(a1 + 120) & 1) == 0)
                {
                  v12 = *(a2 + 5);
LABEL_32:
                  _VCSpatialAudioMetadata_SetPropertyFloat32(a1, 8, v12);
                  if ((*(a1 + 120) & 1) == 0)
                  {
                    v13 = *(a2 + 6);
                    goto LABEL_36;
                  }

LABEL_33:
                  v13 = *(a2 + 6);
                  if (v13 == *(a1 + 148))
                  {
                    v14 = *v6;
LABEL_37:
                    if (v14 == *(a1 + 152))
                    {
                      v15 = *v5;
LABEL_40:
                      if (v15 == *(a1 + 156))
                      {
LABEL_42:
                        v9 = 0;
                        *(a1 + 120) = 1;
                        v16 = *a2;
                        v17 = a2[1];
                        *(a1 + 156) = *(a2 + 8);
                        *(a1 + 140) = v17;
                        *(a1 + 124) = v16;
LABEL_43:
                        pthread_mutex_unlock((a1 + 16));
                        return v9;
                      }

LABEL_41:
                      _VCSpatialAudioMetadata_SetPropertyUInt32(a1, 2, v15);
                      goto LABEL_42;
                    }

LABEL_39:
                    _VCSpatialAudioMetadata_SetPropertyUInt32(a1, 1, v14);
                    v15 = *v5;
                    if ((*(a1 + 120) & 1) == 0)
                    {
                      goto LABEL_41;
                    }

                    goto LABEL_40;
                  }

LABEL_36:
                  _VCSpatialAudioMetadata_SetPropertyFloat32(a1, 9, v13);
                  v14 = *v6;
                  if ((*(a1 + 120) & 1) == 0)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_37;
                }

LABEL_29:
                v12 = *(a2 + 5);
                if (v12 == *(a1 + 144))
                {
                  goto LABEL_33;
                }

                goto LABEL_32;
              }

LABEL_27:
              if (v11 == *(a1 + 140))
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }

LABEL_20:
            _VCSpatialAudioMetadata_SetPropertyFloat32(a1, 5, v8);
            v10 = *(a2 + 3);
            if ((*(a1 + 120) & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          VCSpatialAudioMetadata_UpdateGlobalInfo_cold_1();
        }
      }
    }

    else
    {
      VCSpatialAudioMetadata_UpdateGlobalInfo_cold_7();
    }

    v9 = v19;
    goto LABEL_43;
  }

  v9 = 2151415809;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCSpatialAudioMetadata_UpdateGlobalInfo_cold_8();
    }
  }

  return v9;
}

void _VCSpatialAudioMetadata_SetPropertyUInt32(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ((*(*(a1 + 80) + 32))(*(a1 + 88), a2, 0, &v9, 4))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v7 = v9;
        v8 = FourccToCStr(v3);
        *buf = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "_VCSpatialAudioMetadata_SetPropertyUInt32";
        v14 = 1024;
        v15 = 147;
        v16 = 1024;
        v17 = v3;
        v18 = 1024;
        v19 = v7;
        v20 = 2080;
        v21 = v8;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to set property %d to %u. error=%s", buf, 0x32u);
      }
    }
  }

  else
  {
    *(a1 + 96) = 1;
  }
}

void _VCSpatialAudioMetadata_SetPropertyFloat32(uint64_t a1, uint64_t a2, float a3)
{
  v3 = a2;
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ((*(*(a1 + 80) + 32))(*(a1 + 88), a2, 0, &v9, 4))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v7 = v9;
        v8 = FourccToCStr(v3);
        *buf = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "_VCSpatialAudioMetadata_SetPropertyFloat32";
        v14 = 1024;
        v15 = 156;
        v16 = 1024;
        v17 = v3;
        v18 = 2048;
        v19 = v7;
        v20 = 2080;
        v21 = v8;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to set property %d to %f. error=%s", buf, 0x36u);
      }
    }
  }

  else
  {
    *(a1 + 96) = 1;
  }
}

uint64_t VCSpatialAudioMetadata_UpdateOrientation(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 16));
    if (a2 >= 4)
    {
      v5 = 2151415809;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCSpatialAudioMetadata_UpdateOrientation_cold_1();
        }
      }
    }

    else
    {
      v4 = a2 + 1;
      if (*(a1 + 160) != 1 || v4 != *(a1 + 164))
      {
        _VCSpatialAudioMetadata_SetPropertyUInt32(a1, 3, a2 + 1);
        *(a1 + 164) = v4;
      }

      v5 = 0;
      *(a1 + 160) = 1;
    }

    pthread_mutex_unlock((a1 + 16));
  }

  else
  {
    v5 = 2151415809;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCSpatialAudioMetadata_UpdateOrientation_cold_2();
      }
    }
  }

  return v5;
}

uint64_t VCSpatialAudioMetadata_UpdatePositionalInfo(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      pthread_mutex_lock((v3 + 16));
      if (a2)
      {
        if (*(a1 + 24) != *a2)
        {
          _VCSpatialAudioMetadata_SetEntryPropertyFloat32(a1, 13, *a2);
        }

        v5 = *(a2 + 1);
        if (*(a1 + 28) != v5)
        {
          _VCSpatialAudioMetadata_SetEntryPropertyFloat32(a1, 14, v5);
        }

        v6 = *(a2 + 2);
        if (*(a1 + 32) != v6)
        {
          _VCSpatialAudioMetadata_SetEntryPropertyFloat32(a1, 15, v6);
        }

        v7 = *(a2 + 3);
        if (*(a1 + 36) != v7)
        {
          _VCSpatialAudioMetadata_SetEntryPropertyUInt32(a1, 16, v7);
        }

        v8 = *(a2 + 4);
        if (*(a1 + 40) != v8)
        {
          _VCSpatialAudioMetadata_SetEntryPropertyUInt32(a1, 12, v8);
        }

        v9 = *(a2 + 5);
        if (*(a1 + 44) != v9)
        {
          _VCSpatialAudioMetadata_SetEntryPropertyUInt32(a1, 11, v9);
        }

        v10 = 0;
        v11 = *a2;
        *(a1 + 40) = *(a2 + 2);
        *(a1 + 24) = v11;
      }

      else
      {
        VCSpatialAudioMetadata_UpdatePositionalInfo_cold_1();
        v10 = v13;
      }

      pthread_mutex_unlock((*(a1 + 16) + 16));
    }

    else
    {
      v10 = 2151415812;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCSpatialAudioMetadata_UpdatePositionalInfo_cold_2();
          return 2151415812;
        }
      }
    }
  }

  else
  {
    v10 = 2151415809;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCSpatialAudioMetadata_UpdatePositionalInfo_cold_3();
      }
    }
  }

  return v10;
}

void _VCSpatialAudioMetadata_SetEntryPropertyFloat32(uint64_t a1, uint64_t a2, float a3)
{
  v3 = a2;
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = *(a1 + 16);
  if ((*(*(v4 + 80) + 32))(*(v4 + 88), a2, *(*(a1 + 48) + 12), &v9, 4))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v7 = v9;
        v8 = FourccToCStr(v3);
        *buf = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "_VCSpatialAudioMetadata_SetEntryPropertyFloat32";
        v14 = 1024;
        v15 = 176;
        v16 = 1024;
        v17 = v3;
        v18 = 2048;
        v19 = v7;
        v20 = 2080;
        v21 = v8;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to set property %d to %f. error=%s", buf, 0x36u);
      }
    }
  }

  else
  {
    *(v4 + 96) = 1;
  }
}

uint64_t VCSpatialAudioMetadata_Serialize(uint64_t a1, CMBlockBufferRef *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
    if (a1)
    {
      pthread_mutex_lock((a1 + 16));
      v4 = MEMORY[0x1E1288880](*(a1 + 184), *(a1 + 168), 2475461602, 0);
      LODWORD(dataLength) = *(a1 + 168);
      if ((*(*(a1 + 80) + 48))(*(a1 + 88), v4, &dataLength))
      {
        VCSpatialAudioMetadata_Serialize_cold_1();
      }

      else
      {
        if (!CMBlockBufferCreateWithMemoryBlock(*(a1 + 176), v4, *(a1 + 168), *(a1 + 184), 0, 0, dataLength, 0, a2))
        {
          *(a1 + 96) = 0;
          pthread_mutex_unlock((a1 + 16));
          return 0;
        }

        VCSpatialAudioMetadata_Serialize_cold_2();
      }

      v5 = HIDWORD(dataLength);
      pthread_mutex_unlock((a1 + 16));
      if (v4)
      {
        CFAllocatorDeallocate(*(a1 + 184), v4);
      }
    }

    else
    {
      v5 = 2151415809;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCSpatialAudioMetadata_Serialize_cold_3();
        }
      }
    }
  }

  else
  {
    v5 = 2151415809;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCSpatialAudioMetadata_Serialize_cold_4();
      }
    }
  }

  return v5;
}

uint64_t VCSpatialAudioMetadata_SetNeedsRefresh(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 16));
    *(a1 + 96) = 1;
    pthread_mutex_unlock((a1 + 16));
    return 0;
  }

  else
  {
    v2 = 2151415809;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCSpatialAudioMetadata_SetNeedsRefresh_cold_1();
      }
    }
  }

  return v2;
}

uint64_t _VCSpatialAudioMetadataClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t _VCSpatialAudioMetadataEntryClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void *__GetSpatialMetadataSPI_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "gSpatialMetadataSPI");
    GetSpatialMetadataSPI_sSpatialMetadataSPI = result;
  }

  return result;
}

double _VCSpatialAudioMetadata_Init(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void _VCSpatialAudioMetadata_Finalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 100);
    if (v2)
    {
      v3 = (*(a1 + 104) + 8);
      while (1)
      {
        v4 = *v3;
        v3 += 16;
        if (v4 == 1)
        {
          break;
        }

        if (!--v2)
        {
          goto LABEL_6;
        }
      }

      _VCSpatialAudioMetadata_Finalize_cold_1();
    }

    else
    {
LABEL_6:
      v5 = *(a1 + 192);
      if (v5)
      {
        _Block_release(v5);
        *(a1 + 192) = 0;
      }

      if (*(a1 + 88))
      {
        (*(*(a1 + 80) + 16))();
      }

      free(*(a1 + 104));
      v6 = *(a1 + 176);
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *(a1 + 184);
      if (v7)
      {
        CFRelease(v7);
      }

      pthread_mutex_destroy((a1 + 16));
    }
  }

  else
  {
    _VCSpatialAudioMetadata_Finalize_cold_2();
  }
}

double _VCSpatialAudioMetadataEntry_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void _VCSpatialAudioMetadataEntry_Finalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      pthread_mutex_lock((v2 + 16));
      v3 = *(a1 + 48);
      if (v3)
      {
        _VCSpatialAudioMetadata_SetEntryPropertyUInt32(a1, 10, 0);
        *(v3 + 8) = 0;
        *v3 = *(v2 + 112);
        *(v2 + 112) = v3;
        *(v2 + 96) = 1;
        v4 = *(v2 + 192);
        if (v4)
        {
          (*(v4 + 16))();
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCSpatialAudioMetadataEntry_Finalize_cold_1();
        }
      }

      pthread_mutex_unlock((v2 + 16));
      CFRelease(v2);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCSpatialAudioMetadataEntry_Finalize_cold_2();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCSpatialAudioMetadataEntry_Finalize_cold_3();
    }
  }
}

uint64_t VCTimescalePSOLA_CheckforSignalCorrelation(unsigned __int8 *a1, uint64_t a2, int a3, int a4)
{
  v6 = a1;
  v88 = *MEMORY[0x1E69E9840];
  v7 = VCTimescalePSOLA_CalcFsMult(*(a1 + 1));
  v62 = a4;
  if (a4 == 1)
  {
    v8 = 240;
  }

  else
  {
    v8 = 160;
  }

  if (*(a2 + 66) < ((v7 * v8) & 0xFFF0))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 66);
        *buf = 136315906;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "VCTimescalePSOLA_CheckforSignalCorrelation";
        *&buf[22] = 1024;
        *&buf[24] = 380;
        *&buf[28] = 1024;
        *&buf[30] = v11;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Not Enough samples to Timescale input bufferLength=%d", buf, 0x22u);
      }
    }

    return 1;
  }

  if (!*v6)
  {
    return 0;
  }

  v13 = (a2 + 32);
  if (a4)
  {
    v14 = 239;
  }

  else
  {
    v14 = 159;
  }

  v60 = v14;
  v15 = (v6 + 100);
  if (a4)
  {
    v16 = 110;
  }

  else
  {
    v16 = 70;
  }

  v59 = v16;
  if (a4)
  {
    v17 = 60;
  }

  else
  {
    v17 = 40;
  }

  v58 = &buf[2 * v17];
  if (a4)
  {
    v18 = 60;
  }

  else
  {
    v18 = 40;
  }

  if (a4)
  {
    v19 = 50;
  }

  else
  {
    v19 = 30;
  }

  v56 = v18 - 10;
  v57 = v19;
  v55 = &buf[2 * (v18 - 10)];
  v20 = (v6 + 6);
  v21 = "Compress";
  if (a4 == 1)
  {
    v21 = "Expand";
  }

  v53 = v21;
  v22 = 4;
  v54 = v6;
  while (1)
  {
    v23 = *(v13 - 4);
    v63 = v13;
    v24 = *v13;
    v25 = *(a2 + 66);
    v26 = *(a2 + 66);
    v27 = VCTimescalePSOLA_CalcFsMult(*(v6 + 1));
    v28 = v6;
    v29 = a2;
    v30 = v27;
    Float32ToNativeInt16_Portable();
    if (v25 >= (v30 * v60))
    {
      break;
    }

    *(v29 + 68) = v25;
    memmove(v24, v23, 4 * v26);
    v12 = 1;
    a2 = v29;
    v6 = v28;
LABEL_39:
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      v44 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *v20;
          *buf = 136316162;
          *&buf[4] = v42;
          *&buf[12] = 2080;
          *&buf[14] = "VCTimescalePSOLA_CheckforSignalCorrelation";
          *&buf[22] = 1024;
          *&buf[24] = 389;
          *&buf[28] = 2080;
          *&buf[30] = v53;
          *&buf[38] = 1024;
          *&buf[40] = v45;
          _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mode=%s: pitch period=%d", buf, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v48 = *v20;
        *buf = 136316162;
        *&buf[4] = v42;
        *&buf[12] = 2080;
        *&buf[14] = "VCTimescalePSOLA_CheckforSignalCorrelation";
        *&buf[22] = 1024;
        *&buf[24] = 389;
        *&buf[28] = 2080;
        *&buf[30] = v53;
        *&buf[38] = 1024;
        *&buf[40] = v48;
        _os_log_debug_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEBUG, " [%s] %s:%d mode=%s: pitch period=%d", buf, 0x2Cu);
      }
    }

    v46 = *v20;
    if (v46 >= a3)
    {
      v46 = a3;
    }

    *v20++ = v46;
    _VCTimescalePSOLA_FinalCorrelationCheck(v6, &v15[a3 - v46], &v15[a3], v62, *(a2 + 66), *(a2 + 64), (v22 - 4));
    v47 = v22 - 3;
    ++v22;
    v13 = v63 + 1;
    if (v47 >= *v6)
    {
      return v12;
    }
  }

  v64 = -21846;
  *&v31 = 0xAAAAAAAAAAAAAAAALL;
  *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v31;
  *&buf[16] = v31;
  *&buf[32] = v31;
  v68 = v31;
  v69 = v31;
  v70 = v31;
  v71 = v31;
  v72 = v31;
  v73 = v31;
  v74 = v31;
  v75 = v31;
  v76 = v31;
  v77[0] = v31;
  *(v77 + 12) = v31;
  v65[0] = v31;
  v65[1] = v31;
  v65[2] = v31;
  v65[3] = v31;
  v65[4] = v31;
  v66[0] = v31;
  *(v66 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v32 = VCTimescalePSOLA_DownSampleTo4kHz(v15, v25, *(v28 + 1), buf, v59, 1);
  if ((v32 & 0x80000000) == 0)
  {
    *&v33 = 0xAAAAAAAAAAAAAAAALL;
    *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v87 + 12) = v33;
    v86 = v33;
    v87[0] = v33;
    v84 = v33;
    v85 = v33;
    v82 = v33;
    v83 = v33;
    v80 = v33;
    v81 = v33;
    *&v78[32] = v33;
    v79 = v33;
    *v78 = v33;
    *&v78[16] = v33;
    v34 = VCTimescalePSOLA_MaxAbsValueW16(v15, v25);
    v35 = VCTimescalePSOLA_Normalize((v34 * v34));
    VCTimescalePSOLA_CrossCorrelation(v78, v58, v55, v57, v56, (6 - v35) & ~((6 - v35) >> 31), -1);
    v36 = VCTimescalePSOLA_MaxAbsValueW32(v78, v57);
    v37 = VCTimescalePSOLA_Normalize(v36);
    VCTimescalePSOLA_VectorBitShiftW32ToW16(v65, v57, v78, (17 - v37) & ~((17 - v37) >> 31));
    VCTimescalePSOLA_PeakDetection(v65, v57, 1, v30, v20, &v64);
    *v20 += 20 * v30;
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      a2 = v29;
      v6 = v54;
      v12 = v32;
    }

    else
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      v12 = v32;
      v40 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        a2 = v29;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *v20;
          *v78 = 136316162;
          *&v78[4] = v38;
          *&v78[12] = 2080;
          *&v78[14] = "_VCTimescalePSOLA_DownSampledCoarseCorrelation";
          *&v78[22] = 1024;
          *&v78[24] = 296;
          *&v78[28] = 1024;
          *&v78[30] = v41;
          *&v78[34] = 1024;
          *&v78[36] = v22 - 4;
          _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PSOLA Adapt : pitch period=%d channel=%d", v78, 0x28u);
        }
      }

      else
      {
        a2 = v29;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v49 = *v20;
          *v78 = 136316162;
          *&v78[4] = v38;
          *&v78[12] = 2080;
          *&v78[14] = "_VCTimescalePSOLA_DownSampledCoarseCorrelation";
          *&v78[22] = 1024;
          *&v78[24] = 296;
          *&v78[28] = 1024;
          *&v78[30] = v49;
          *&v78[34] = 1024;
          *&v78[36] = v22 - 4;
          _os_log_debug_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEBUG, " [%s] %s:%d PSOLA Adapt : pitch period=%d channel=%d", v78, 0x28u);
        }
      }

      v6 = v54;
    }

    goto LABEL_39;
  }

  *(v29 + 68) = v25;
  memmove(v24, v23, 4 * v26);
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return v32;
  }

  v50 = VRTraceErrorLogLevelToCSTR();
  v51 = *MEMORY[0x1E6986650];
  v12 = v32;
  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
  {
    VCTimescalePSOLA_CheckforSignalCorrelation_cold_1(v50, v51);
  }

  return v12;
}

void _VCTimescalePSOLA_FinalCorrelationCheck(uint64_t a1, int16x4_t *a2, int16x4_t *a3, int a4, int a5, int a6, unsigned int a7)
{
  v70 = *MEMORY[0x1E69E9840];
  v12 = a7;
  v57 = a1 + 22;
  *(a1 + 22 + 2 * a7) = 1;
  v13 = VCTimescalePSOLA_MaxAbsValueW16((a1 + 100), a5);
  v14 = VCTimescalePSOLA_Normalize((v13 * v13));
  v15 = a1 + 6;
  v16 = VCTimescalePSOLA_Normalize(*(a1 + 6 + 2 * a7));
  v17 = (31 - v16 - v14) & ~((31 - v16 - v14) >> 31);
  v18 = VCTimescalePSOLA_DotProductWithScale(a2, a2, *(a1 + 6 + 2 * a7), (31 - v16 - v14) & ~((31 - v16 - v14) >> 31));
  v19 = VCTimescalePSOLA_DotProductWithScale(a3, a3, *(a1 + 6 + 2 * a7), v17);
  v20 = VCTimescalePSOLA_DotProductWithScale(a2, a3, *(a1 + 6 + 2 * a7), v17);
  v56 = a4;
  if (*(a1 + 64) == 1)
  {
    v21 = *(a1 + 60);
  }

  else
  {
    v21 = 75000;
  }

  v22 = VCTimescalePSOLA_Normalize(v21);
  v23 = (16 - v22) & ~((16 - v22) >> 31);
  v24 = ((v19 + v18) >> 4 >> v23);
  v25 = (v21 >> v23) * *(v15 + 2 * v12);
  v26 = 2 * v17;
  if (VCTimescalePSOLA_Normalize(v24) < 2 * v17)
  {
    v27 = VCTimescalePSOLA_Normalize(v24);
    v28 = v26 - v27;
    v26 = v27;
    v25 >>= v28;
  }

  if (v24 << v26 <= v25)
  {
    v43 = a1 + 2 * v12;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      v46 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = "Compress";
          v48 = *(v43 + 38);
          *buf = 136316418;
          v59 = v44;
          v60 = 2080;
          if (v56 == 1)
          {
            v47 = "Expand";
          }

          v61 = "_VCTimescalePSOLA_VadCheckForScaling";
          v62 = 1024;
          v63 = 210;
          v64 = 2080;
          v65 = v47;
          v66 = 1024;
          v67 = v48;
          v68 = 1024;
          v69 = v24 << v26;
          _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mode=%s bestCorrelation=%d VAD=0 energy_Q14=%d", buf, 0x32u);
        }
      }

      else if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v52 = "Compress";
        v53 = *(v43 + 38);
        *buf = 136316418;
        v59 = v44;
        v60 = 2080;
        if (v56 == 1)
        {
          v52 = "Expand";
        }

        v61 = "_VCTimescalePSOLA_VadCheckForScaling";
        v62 = 1024;
        v63 = 210;
        v64 = 2080;
        v65 = v52;
        v66 = 1024;
        v67 = v53;
        v68 = 1024;
        v69 = v24 << v26;
        _os_log_debug_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEBUG, " [%s] %s:%d mode=%s bestCorrelation=%d VAD=0 energy_Q14=%d", buf, 0x32u);
      }
    }

    *(v57 + 2 * v12) = 0;
    *(v43 + 38) = 0;
    if (v56 == 1)
    {
      v51 = *(v15 + 2 * v12);
      if (a5 - a6 <= v51)
      {
        LOWORD(v51) = a5 - a6;
      }

      *(v15 + 2 * v12) = v51;
    }
  }

  else
  {
    *(v57 + 2 * v12) = 1;
    v29 = VCTimescalePSOLA_Normalize(v18);
    v30 = (16 - v29) & ~((16 - v29) >> 31);
    v31 = VCTimescalePSOLA_Normalize(v19);
    v32 = (16 - v31) & ~((16 - v31) >> 31);
    if ((v32 + v30))
    {
      v33 = v30 + 1;
    }

    else
    {
      v33 = v30;
    }

    v34 = (v18 >> v33) * (v19 >> v32);
    v35 = VCTimescalePSOLA_ShiftW32(v20, (14 - ((v32 + v33) >> 1)));
    v36 = VCTimescalePSOLA_DivW32W16(v35 & ~(v35 >> 31), sqrt(v34));
    v37 = a1 + 38;
    if (v36 >= 0x4000)
    {
      LOWORD(v36) = 0x4000;
    }

    *(v37 + 2 * v12) = v36;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      v40 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *(v37 + 2 * v12);
          v42 = "Compress";
          *buf = 136316418;
          v59 = v38;
          v60 = 2080;
          if (v56 == 1)
          {
            v42 = "Expand";
          }

          v61 = "_VCTimescalePSOLA_VadCheckForScaling";
          v62 = 1024;
          v63 = 232;
          v64 = 2080;
          v65 = v42;
          v66 = 1024;
          v67 = v41;
          v68 = 1024;
          v69 = v34;
          _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mode=%s: bestCorrelation=%d VAD=1 energy_Q14=%d", buf, 0x32u);
        }
      }

      else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v49 = *(v37 + 2 * v12);
        v50 = "Compress";
        *buf = 136316418;
        v59 = v38;
        v60 = 2080;
        if (v56 == 1)
        {
          v50 = "Expand";
        }

        v61 = "_VCTimescalePSOLA_VadCheckForScaling";
        v62 = 1024;
        v63 = 232;
        v64 = 2080;
        v65 = v50;
        v66 = 1024;
        v67 = v49;
        v68 = 1024;
        v69 = v34;
        _os_log_debug_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEBUG, " [%s] %s:%d mode=%s: bestCorrelation=%d VAD=1 energy_Q14=%d", buf, 0x32u);
      }
    }
  }
}

void VCTimescalePSOLA_SynchronizeChannelCorrelation(_WORD *a1, uint64_t a2, int a3, __int16 a4)
{
  if (*a1 >= 2u)
  {
    v5 = a1[11];
    if (v5 == 1)
    {
      v6 = a1[12];
      v7 = a1[3];
      v8 = a1[4];
      v9 = v7 == v8;
      if (v7 == v8 || v6 != 1)
      {
LABEL_7:
        if (!v9)
        {
          return;
        }

        goto LABEL_12;
      }

      v15 = 0;
      if (a3)
      {
        v16 = 120;
      }

      else
      {
        v16 = 80;
      }

      a1[5] = v8;
      a1[6] = v7;
      v17 = a1 + 50;
      v18 = (v16 * a4);
      v19 = &a1[v18 + 50];
      do
      {
        Float32ToNativeInt16_Portable();
        v20 = &a1[v15];
        v21 = v20[5];
        if (v21 >= v18)
        {
          v21 = v18;
        }

        v20[5] = v21;
        _VCTimescalePSOLA_FinalCorrelationCheck(a1, &v17[v18 - v21], v19, a3, *(a2 + 66), *(a2 + 64), (v15++ + 2));
      }

      while (v15 < *a1);
      v22 = a1[21];
      v23 = a1[22];
      if (v22 >= v23)
      {
        if (a1[20] < v22)
        {
          LOWORD(v22) = a1[20];
        }

        a1[3] = a1[6];
      }

      else
      {
        v22 = a1[19];
        if (v22 >= v23)
        {
          LOWORD(v22) = a1[22];
        }
      }

      a1[19] = v22;
    }

    else
    {
      v11 = a1[3];
      v12 = a1[4];
      v9 = v11 == v12;
      if (a1[11])
      {
        if (v11 != v12)
        {
          return;
        }

        LOWORD(v6) = a1[12];
LABEL_12:
        a1[19] = a1[20];
        if (v5 <= v6)
        {
          LOWORD(v5) = v6;
        }

        goto LABEL_14;
      }

      v6 = a1[12];
      if (v11 == v12 || v6 != 0)
      {
        if (v6 == 1)
        {
          a1[3] = v12;
          a1[19] = a1[20];
          LOWORD(v5) = 1;
LABEL_14:
          a1[11] = v5;
          return;
        }

        goto LABEL_7;
      }

      v25 = a1[4];
      if (v11 > v12)
      {
        v25 = a1[3];
      }

      a1[3] = v25;
    }
  }
}

uint64_t VCEffects_EffectsMode(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 8);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v4 = 136315650;
    v5 = v2;
    v6 = 2080;
    v7 = "VCEffects_EffectsMode";
    v8 = 1024;
    v9 = 63;
    _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
  }

  return 0;
}

BOOL VCRemoteImageQueue_CreateSenderQueueWithPoolSize(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
    v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
    v7[0] = v3;
    if (v3)
    {
      v4 = v3;
      if (FigSharedMemPoolCreate())
      {
        VCRemoteImageQueue_CreateSenderQueueWithPoolSize_cold_1();
      }

      else
      {
        v7[1] = 0x6400000064;
        v8 = 0;
        if (FigRemoteQueueSenderCreate() || !v4[1])
        {
          VCRemoteImageQueue_CreateSenderQueueWithPoolSize_cold_3();
        }

        else
        {
          if (!FigRemoteQueueSenderSetMaximumBufferAge())
          {
            *a2 = v4;
            return *a2 != 0;
          }

          VCRemoteImageQueue_CreateSenderQueueWithPoolSize_cold_2();
        }
      }

      VCRemoteImageQueue_Destroy(v7);
      return *a2 != 0;
    }

    VCRemoteImageQueue_CreateSenderQueueWithPoolSize_cold_4();
    return *a2 != 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCRemoteImageQueue_CreateSenderQueueWithPoolSize_cold_5(v6);
  }

  return 0;
}

void VCRemoteImageQueue_Destroy(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (v2[1])
      {
        VCRemoteImageQueue_ReleaseIOSurfaces(*a1);
        CFRelease(v2[1]);
      }

      if (*v2)
      {
        CFRelease(*v2);
      }

      if (v2[2])
      {
        FigRemoteQueueReceiverUnsetHandler();
        CFRelease(v2[2]);
      }

      *a1 = 0;

      free(v2);
    }
  }
}

BOOL VCRemoteImageQueue_CreateReceiverQueue(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1 && a4)
  {
    *a4 = 0;
    v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
    v11[0] = v5;
    if (v5)
    {
      v6 = v5;
      if (FigRemoteQueueReceiverCreateFromXPCObject() || !v6[2])
      {
        VCRemoteImageQueue_CreateReceiverQueue_cold_3();
      }

      else
      {
        MessageReceiver = FigRemoteOperationReceiverCreateMessageReceiver();
        if (MessageReceiver)
        {
          v8 = MessageReceiver;
          FigRemoteQueueReceiverSetHandler();
          _Block_release(v8);
          *a4 = v6;
          return *a4 != 0;
        }

        VCRemoteImageQueue_CreateReceiverQueue_cold_2();
      }

      VCRemoteImageQueue_Destroy(v11);
      return *a4 != 0;
    }

    VCRemoteImageQueue_CreateReceiverQueue_cold_4();
    return *a4 != 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCRemoteImageQueue_CreateReceiverQueue_cold_1(v10);
  }

  return 0;
}

uint64_t VCRemoteImageQueue_SharedMemoryPoolAllocator(void *a1)
{
  if (a1 && *a1)
  {
    return MEMORY[0x1EEDF1058](a1[1]);
  }

  else
  {
    return *MEMORY[0x1E695E480];
  }
}

uint64_t VCRemoteImageQueue_ReleaseIOSurfaces(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 8))
  {

    return MEMORY[0x1EEDF1060]();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v2;
        v7 = 2080;
        v8 = "VCRemoteImageQueue_ReleaseIOSurfaces";
        v9 = 1024;
        v10 = 198;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid remoteImageQueue=%p", &v5, 0x26u);
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t VCRemoteImageQueue_EnqueueFrame(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1 || !*(a1 + 8))
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *v12 = 136315906;
    *&v12[4] = v4;
    *&v12[12] = 2080;
    *&v12[14] = "VCRemoteImageQueue_EnqueueFrame";
    *&v12[22] = 1024;
    LODWORD(v13) = 152;
    WORD2(v13) = 2048;
    *(&v13 + 6) = a1;
    v6 = " [%s] %s:%d Cannot Enqueue on an invalid remoteImageQueue %p";
    v7 = v5;
    v8 = 38;
    goto LABEL_9;
  }

  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *v12 = 136315650;
    *&v12[4] = v9;
    *&v12[12] = 2080;
    *&v12[14] = "VCRemoteImageQueue_EnqueueFrame";
    *&v12[22] = 1024;
    LODWORD(v13) = 157;
    v6 = " [%s] %s:%d Pixel Buffer was NULL could not enqueue";
    v7 = v10;
    v8 = 28;
LABEL_9:
    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v12, v8);
    return 0xFFFFFFFFLL;
  }

  *&v12[8] = 0u;
  *v12 = 3;
  v14 = 0;
  v13 = a2;
  v3 = _VCRemoteImageQueue_Enqueue(a1, v12);
  if (v3)
  {
    VCRemoteImageQueue_EnqueueFrame_cold_1();
  }

  return v3;
}

uint64_t _VCRemoteImageQueue_Enqueue(uint64_t a1, int *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = FigRemoteOperationSenderResetIfFullAndEnqueueOperation();
  if (v4 == -16669)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 4294950627;
    }

    else
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v5 = 4294950627;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *a2;
        *buf = 136316418;
        v17 = v9;
        v18 = 2080;
        v19 = "_VCRemoteImageQueue_Enqueue";
        v20 = 1024;
        v21 = 140;
        v22 = 2048;
        v23 = a1;
        v24 = 1024;
        v25 = -16669;
        v26 = 1024;
        v27 = v11;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d remoteImageQueue=%p err=%d opType=%d Queue is full!", buf, 0x32u);
      }
    }
  }

  else
  {
    v5 = v4;
    if (v4)
    {
      if (v4 == -16665)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return 4294950631;
        }

        else
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          v5 = 4294950631;
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v8 = *a2;
            *buf = 136316418;
            v17 = v6;
            v18 = 2080;
            v19 = "_VCRemoteImageQueue_Enqueue";
            v20 = 1024;
            v21 = 137;
            v22 = 2048;
            v23 = a1;
            v24 = 1024;
            v25 = -16665;
            v26 = 1024;
            v27 = v8;
            _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d remoteImageQueue=%p err=%d opType=%d Client terminated the queue", buf, 0x32u);
          }
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v14 = *a2;
            *buf = 136316418;
            v17 = v12;
            v18 = 2080;
            v19 = "_VCRemoteImageQueue_Enqueue";
            v20 = 1024;
            v21 = 143;
            v22 = 2048;
            v23 = a1;
            v24 = 1024;
            v25 = v5;
            v26 = 1024;
            v27 = v14;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d remoteImageQueue=%p err=%d opType=%d Error occurred when enqueuing data", buf, 0x32u);
          }
        }

        return 0;
      }
    }
  }

  return v5;
}

uint64_t VCRemoteImageQueue_EnqueueAttributes(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1 || !*(a1 + 8))
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 4294967294;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 4294967294;
    }

    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = "VCRemoteImageQueue_EnqueueAttributes";
    *&buf[22] = 1024;
    LODWORD(v23) = 175;
    WORD2(v23) = 2048;
    *(&v23 + 6) = a1;
    v8 = " [%s] %s:%d Cannot Enqueue on an invalid remoteImageQueue %p";
    v9 = v7;
    v10 = 38;
    goto LABEL_11;
  }

  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 4294967294;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 4294967294;
    }

    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = "VCRemoteImageQueue_EnqueueAttributes";
    *&buf[22] = 1024;
    LODWORD(v23) = 180;
    v8 = " [%s] %s:%d Attributes are NULL could not enqueue";
    v9 = v12;
    v10 = 28;
LABEL_11:
    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    return 4294967294;
  }

  *&buf[8] = 0u;
  *buf = 1;
  v24 = 0;
  v23 = a2;
  v3 = _VCRemoteImageQueue_Enqueue(a1, buf);
  if (v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315906;
        v15 = v4;
        v16 = 2080;
        v17 = "VCRemoteImageQueue_EnqueueAttributes";
        v18 = 1024;
        v19 = 191;
        v20 = 1024;
        v21 = v3;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Error occurred when sending the video attributes. err=%d", &v14, 0x22u);
      }
    }
  }

  return v3;
}

uint64_t VCRemoteImageQueue_CreateQueueXPCObject(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 8))
  {
    FigRemoteQueueSenderCreateXPCObject();
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 136315906;
        *&v5[1] = v3;
        v6 = 2080;
        v7 = "VCRemoteImageQueue_CreateQueueXPCObject";
        v8 = 1024;
        v9 = 206;
        v10 = 2048;
        v11 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cannot get the XPC object on an invalid remoteImageQueue %p", v5, 0x26u);
      }
    }

    return 0;
  }
}

void VCAudioDump_LogCompressedAudio(uint64_t a1, void *a2, UInt32 a3, unsigned int *a4, unsigned __int16 *a5, double *a6)
{
  if (a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      if (a2)
      {
        v9 = *(a1 + 24);
        if (v9)
        {
          if (a4)
          {
            v11 = *a4;
          }

          else
          {
            v12 = *(a1 + 4);
            v13 = v12 == 111 || v12 == 97;
            v14 = v13 ? 160 : 320;
            v11 = v14 + bswap32(v8[3]);
          }

          v8[3] = bswap32(v11);
          if (a3)
          {
            if (a6)
            {
              v15 = *(a1 + 32);
              v16 = *a6;
              v17 = bswap32(((*a6 - v15) * 1000000.0));
              if (v15 == 0.0)
              {
                v17 = 0;
              }

              v8[1] = v17;
              *(a1 + 32) = v16;
            }

            if (a5)
            {
              v18 = *a5;
            }

            else
            {
              v18 = (bswap32(*(v8 + 5)) >> 16) + 1;
            }

            *(v8 + 5) = bswap32(v18) >> 16;
            *(v8 + 1) = bswap32(a3 + 12) >> 16;
            *v8 = bswap32(a3 + 14) >> 16;
            _VCAudioDumpFileWrapper_Update(v9, v8, 0x14u);
            v19 = *(a1 + 24);

            _VCAudioDumpFileWrapper_Update(v19, a2, a3);
          }
        }
      }
    }
  }
}

void _VCAudioDumpFileWrapper_Update(uint64_t a1, void *a2, UInt32 a3)
{
  v16 = *MEMORY[0x1E69E9840];
  *(&ioData.mNumberBuffers + 1) = -1431655766;
  ioData.mNumberBuffers = 1;
  ioData.mBuffers[0].mNumberChannels = 1;
  ioData.mBuffers[0].mDataByteSize = a3;
  ioData.mBuffers[0].mData = a2;
  v3 = ExtAudioFileWriteAsync(*a1, a3 / *(a1 + 16), &ioData);
  if (v3)
  {
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "_VCAudioDumpFileWrapper_Update";
        v11 = 1024;
        v12 = 175;
        v13 = 1024;
        v14 = v4;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ExtAudioFileWriteAsync failed with error=%d", &v7, 0x22u);
      }
    }
  }
}

void VCAudioDump_LogUnCompressedAudio(uint64_t a1, void *a2, uint64_t a3, UInt32 a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      if (a2)
      {
        v5 = *(a1 + 24);

        _VCAudioDumpFileWrapper_Update(v5, a2, a4);
      }

      else if (a3)
      {
        AudioBufferList = VCAudioBufferList_GetAudioBufferList(a3);
        SampleCount = VCAudioBufferList_GetSampleCount(a3);
        v9 = ExtAudioFileWriteAsync(*v4, SampleCount, AudioBufferList);
        if (v9)
        {
          v10 = v9;
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v13 = 136315906;
              v14 = v11;
              v15 = 2080;
              v16 = "_VCAudioDumpFileWrapper_UpdateSamples";
              v17 = 1024;
              v18 = 167;
              v19 = 1024;
              v20 = v10;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ExtAudioFileWriteAsync failed with error=%d", &v13, 0x22u);
            }
          }
        }
      }
    }
  }
}

unsigned int *VCAudioDump_Create(unsigned int a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCAudioDump_Create_cold_3(&v23);
    return *&v23.mSampleRate;
  }

  if (*a2 != 1)
  {
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040282E6EF3uLL);
  if (!v4)
  {
    VCAudioDump_Create_cold_2(&v23);
    return *&v23.mSampleRate;
  }

  v5 = v4;
  v6 = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040A86A77D5uLL);
  *(v5 + 2) = v6;
  if (!v6)
  {
    VCAudioDump_Create_cold_1(v5);
    return 0;
  }

  *v5 = a1;
  if (a1 > 4)
  {
    v7 = "";
  }

  else
  {
    v7 = off_1E85F8938[a1];
  }

  v8 = *(a2 + 4);
  v9 = 8000;
  if (v8 <= 106)
  {
    if (v8 == 97)
    {
      goto LABEL_17;
    }

    if (v8 != 98)
    {
      goto LABEL_16;
    }

LABEL_15:
    v9 = 16000;
    goto LABEL_17;
  }

  if (v8 == 107)
  {
    goto LABEL_15;
  }

  if (v8 != 111)
  {
    if (v8 == 108)
    {
      v9 = 32000;
      goto LABEL_17;
    }

LABEL_16:
    v9 = 0;
  }

LABEL_17:
  *(v5 + 6) = v9;
  if ((a1 & 0xFFFFFFFB) != 0 || (v14 = *(a2 + 16)) == 0)
  {
    v5[1] = v8;
    if ((v8 - 97) > 1)
    {
      v10 = 5;
      if ((v8 - 107) <= 4 && ((1 << (v8 - 107)) & 0x13) != 0)
      {
        v10 = *(a2 + 9);
      }
    }

    else if (*(a2 + 8))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v5[2] = v10;
    v11 = "none";
    if (v8 <= 106)
    {
      if (v8 == 97)
      {
        v12 = "amr_nb_be";
        if (v10 != 2)
        {
          v12 = "none";
        }

        v13 = "amr_nb_oa";
      }

      else
      {
        if (v8 != 98)
        {
          goto LABEL_53;
        }

        v12 = "amr_wb_be";
        if (v10 != 2)
        {
          v12 = "none";
        }

        v13 = "amr_wb_oa";
      }

      v15 = v10 == 3;
    }

    else
    {
      switch(v8)
      {
        case 'k':
          v12 = "evs_wb_hf";
          if (v10 != 1)
          {
            v12 = "none";
          }

          v13 = "evs_wb_ch";
          break;
        case 'l':
          v12 = "evs_swb_hf";
          if (v10 != 1)
          {
            v12 = "none";
          }

          v13 = "evs_swb_ch";
          break;
        case 'o':
          v12 = "evs_nb_hf";
          if (v10 != 1)
          {
            v12 = "none";
          }

          v13 = "evs_nb_ch";
          break;
        default:
          goto LABEL_53;
      }

      v15 = v10 == 0;
    }

    if (v15)
    {
      v11 = v13;
    }

    else
    {
      v11 = v12;
    }

LABEL_53:
    v23.mSampleRate = v9;
    *&v23.mFormatID = xmmword_1DBD4F440;
    *&v23.mBytesPerFrame = xmmword_1DBD4F450;
    _VCAudioDump_CreateFile(v5, v7, v11, ".rtpdump", &v23);
    v16 = *(v5 + 3);
    if (v16)
    {
      _VCAudioDumpFileWrapper_Update(v16, _rtpDumpHeader, 0x39u);
    }

    goto LABEL_55;
  }

  _VCAudioDump_CreateFile(v5, v7, "pcm", ".caf", v14);
LABEL_55:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(v5 + 6);
      v20 = v5[1];
      v21 = v5[2];
      LODWORD(v23.mSampleRate) = 136316930;
      *(&v23.mSampleRate + 4) = v17;
      LOWORD(v23.mFormatFlags) = 2080;
      *(&v23.mFormatFlags + 2) = "VCAudioDump_Create";
      HIWORD(v23.mFramesPerPacket) = 1024;
      v23.mBytesPerFrame = 392;
      LOWORD(v23.mChannelsPerFrame) = 2048;
      *(&v23.mChannelsPerFrame + 2) = v5;
      HIWORD(v23.mReserved) = 1024;
      v24 = a1;
      v25 = 1024;
      v26 = v20;
      v27 = 1024;
      v28 = v19;
      v29 = 1024;
      v30 = v21;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio dump file=[%p] created successfully for tap point=%d, payloadType=%d, bandwidth=%d, rtpPayloadFormat=%d", &v23, 0x3Eu);
    }
  }

  return v5;
}

void _VCAudioDump_CreateFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const AudioStreamBasicDescription *a5)
{
  v7 = LogDumpUtility_CopyLogFilename(2, a2, 1, a3, a4);
  v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040EDCEB4C7uLL);
  if (v8)
  {
    if (!a5)
    {
      a5 = malloc_type_calloc(1uLL, 0x28uLL, 0x10000400A747E1EuLL);
      Format_Short(a5, 1, 24000);
    }

    *(v8 + 4) = a5->mBytesPerFrame;
    Default = CFAllocatorGetDefault();
    v10 = CFStringCreateWithCString(Default, v7, 0x8000100u);
    v11 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v10, kCFURLPOSIXPathStyle, 0);
    v12 = AudioFileCreateWithURL(v11, 0x63616666u, a5, 1u, v8 + 1);
    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCAudioDump_CreateFile_cold_1();
        }
      }

LABEL_20:
      free(v8);
      v8 = 0;
      goto LABEL_21;
    }

    if (ExtAudioFileWrapAudioFileID(v8[1], 1u, v8))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCAudioDump_CreateFile_cold_2();
        }
      }

      goto LABEL_20;
    }

    if (ExtAudioFileWriteAsync(*v8, 0, 0))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCAudioDump_CreateFile_cold_3();
        }
      }

      goto LABEL_20;
    }
  }

LABEL_21:
  *(a1 + 24) = v8;
  free(v7);
}

void VCAudioDump_Finalize(void **a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v5 = *v2;
          v8 = 136315906;
          v9 = v3;
          v10 = 2080;
          v11 = "VCAudioDump_Finalize";
          v12 = 1024;
          v13 = 407;
          v14 = 1024;
          v15 = v5;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio dump finalized for tap point=%d", &v8, 0x22u);
        }
      }

      v6 = *(v2 + 3);
      if (v6)
      {
        ExtAudioFileDispose(*v6);
        AudioFileClose(v6[1]);
        free(v6);
        *(v2 + 3) = 0;
      }

      v7 = *(v2 + 2);
      if (v7)
      {
        free(v7);
      }

      free(v2);
    }

    *a1 = 0;
  }
}

void sub_1DB97EC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void VCAudioPlayerDTMF_Initialize(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 35996);
  v5 = *(a2 + 48);
  *(a1 + 37176) = v5;
  v6 = *(a2 + 72);
  *(a1 + 37196) = v6;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    return;
  }

  v7 = a1 + 37176;
  v8 = a1 + 37256;
  v9 = *v4;
  *(a1 + 37184) = 3 * *(a1 + 35996);
  v9 *= 4;
  *(a1 + 37180) = v9;
  *(a1 + 37188) = v9;
  *(a1 + 37192) = *(a2 + 52);
  inSourceFormat.mSampleRate = NAN;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&inSourceFormat.mFormatID = v10;
  *&inSourceFormat.mBytesPerFrame = v10;
  v21.mSampleRate = NAN;
  *&v21.mBytesPerFrame = v10;
  *&v21.mFormatID = v10;
  Format_Short(&inSourceFormat, *(*(a2 + 8) + 28), **(a2 + 8));
  Format_Float(&v21, *(*(a2 + 8) + 28), **(a2 + 8));
  if (v7 >= v8)
  {
    __break(0x5519u);
    return;
  }

  v11 = (v4 + 311);
  AudioConverterNew(&inSourceFormat, &v21, (v4 + 311));
  if (*(v4 + 311))
  {
    *(v4 + 301) = 0;
    *(a1 + 37208) = 0u;
    *(a1 + 37224) = 0;
    v12 = VCDTMFToneGenerator_Create();
    *(v4 + 309) = v12;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v12)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = v4[299];
          v17 = **(a2 + 8);
          v18 = v4[297];
          v19 = v4[296];
          v20 = v4[298];
          *buf = 136317186;
          v24 = v14;
          v25 = 2080;
          v26 = "VCAudioPlayerDTMF_Initialize";
          v27 = 1024;
          v28 = 63;
          v29 = 2048;
          v30 = v4 + 295;
          v31 = 1024;
          v32 = v16;
          v33 = 2048;
          v34 = v17;
          v35 = 1024;
          v36 = v18;
          v37 = 1024;
          v38 = v19;
          v39 = 1024;
          v40 = v20;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPlayerDTMF[%p] Successfully initialized DTMF: dtmfSampleRate=%d, audioSampleRate=%f maxTonePlaybackExtensionDuration=%d minTonePlaybackDuration=%d toneGapDuration=%d", buf, 0x48u);
        }
      }

      return;
    }

    VCAudioPlayerDTMF_Initialize_cold_1(ErrorLogLevelForModule);
  }

  else
  {
    VCAudioPlayerDTMF_Initialize_cold_2();
  }

  if (*v11)
  {
    AudioConverterDispose(*v11);
    *v11 = 0;
  }
}

uint64_t VCAudioPlayerDTMF_Finalize(uint64_t result)
{
  v1 = result;
  if ((*result & 1) != 0 || *(result + 20) == 1)
  {
    VCDTMFToneGenerator_Destroy((result + 56));
    result = *(v1 + 64);
    if (result)
    {
      result = AudioConverterDispose(result);
      *(v1 + 64) = 0;
    }
  }

  return result;
}

BOOL VCAudioPlayerDTMF_ShouldProcessDTMF(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = a1 + 35568;
  v3 = *(a1 + 37200);
  if ((*(a1 + 37176) & 1) == 0 && *(a1 + 37196) != 1)
  {
    return 0;
  }

  if (!JitterQueue_IsEmpty(*v2) && !JitterQueue_IsNextFrameDTMF(*v2))
  {
    *(v2 + 1656) = 0;
  }

  v4 = 0;
  v5 = a1 + 37256;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_23;
      }

LABEL_13:
      result = JitterQueue_IsNextFrameDTMF(*v2);
      if (!result)
      {
        goto LABEL_14;
      }

LABEL_22:
      v4 = 1;
      goto LABEL_23;
    }

    if (JitterQueue_IsNextFrameDTMF(*v2))
    {
      v4 = 1;
      *(v2 + 1632) = 1;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_23;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (JitterQueue_IsEmpty(*v2))
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

LABEL_23:
    if (v3 != *(v2 + 1632) && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          if (v3 > 3)
          {
            v10 = "Invalid";
          }

          else
          {
            v10 = off_1E85F8988[v3];
          }

          v12 = *(v2 + 1632);
          if (v12 > 3)
          {
            v13 = "Invalid";
          }

          else
          {
            v13 = off_1E85F8988[v12];
          }

          v16 = 136316418;
          v17 = v7;
          v18 = 2080;
          v19 = "VCAudioPlayerDTMF_ShouldProcessDTMF";
          v20 = 1024;
          v21 = 477;
          v22 = 2048;
          v23 = v2 + 1608;
          v24 = 2080;
          v25 = v10;
          v26 = 2080;
          v27 = v13;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPlayerDTMF[%p] Transitioning DTMF State currentState=%s ==> newState=%s", &v16, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        if (v3 > 3)
        {
          v11 = "Invalid";
        }

        else
        {
          v11 = off_1E85F8988[v3];
        }

        v14 = *(v2 + 1632);
        if (v14 > 3)
        {
          v15 = "Invalid";
        }

        else
        {
          v15 = off_1E85F8988[v14];
        }

        v16 = 136316418;
        v17 = v7;
        v18 = 2080;
        v19 = "VCAudioPlayerDTMF_ShouldProcessDTMF";
        v20 = 1024;
        v21 = 477;
        v22 = 2048;
        v23 = v2 + 1608;
        v24 = 2080;
        v25 = v11;
        v26 = 2080;
        v27 = v15;
        _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAudioPlayerDTMF[%p] Transitioning DTMF State currentState=%s ==> newState=%s", &v16, 0x3Au);
      }
    }

    return v4;
  }

  if (JitterQueue_IsEmpty(*v2))
  {
    goto LABEL_22;
  }

  result = JitterQueue_IsNextFrameDTMF(*v2);
  if (result || *(v2 + 1648) <= *(v2 + 1638))
  {
    goto LABEL_22;
  }

LABEL_14:
  if (v2 + 1608 < v5)
  {
    v4 = 0;
    *(v2 + 1632) = 0;
    *(v2 + 1640) = 0;
    *(v2 + 1648) = 0;
    *(v2 + 1656) = 0;
    goto LABEL_23;
  }

  __break(0x5519u);
  return result;
}

void VCAudioPlayerDTMF_ProcessDTMF(_DWORD *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 8882;
  *(&v116[2] + 4) = *MEMORY[0x1E69E9840];
  v5 = a1 + 9294;
  v106 = a1 + 9305;
  v108 = a1 + 9314;
  do
  {
    while (1)
    {
      JitterQueue_Purge(*(v4 + 5), _VCAudioPlayerDTMF_ShouldPurgeJitterQueue);
      v6 = v4[418];
      if (v6 == 3)
      {
        ChannelCount = VCAudioBufferList_GetChannelCount(*a2);
        if (ChannelCount)
        {
          v17 = 0;
          while (1)
          {
            memset(buf, 0, sizeof(buf));
            VCAudioBufferList_GetSizedBufferAtIndex(*a2, v17, 0, buf);
            v18 = (v4[118] * *(a2 + 8));
            if (*&buf[8] < v18)
            {
              break;
            }

            bzero(*buf, v18);
            if (ChannelCount == ++v17)
            {
              goto LABEL_18;
            }
          }

LABEL_164:
          __break(0x5519u);
        }

LABEL_18:
        v19 = v4[423] + *(a2 + 8);
        v4[423] = v19;
        if (v19 >= v4[415])
        {
          v4[418] = 1;
          v4[422] = 0;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x1E6986650];
          v22 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = *(a2 + 8);
              v24 = v4[415];
              v25 = v4[423];
              *buf = 136316674;
              *&buf[4] = v20;
              *&buf[12] = 2080;
              *&buf[14] = "_VCAudioPlayerDTMF_ProcessDTMFStatePlayingGap";
              *&buf[22] = 1024;
              v111 = 398;
              v112 = 2048;
              *v113 = v5;
              *&v113[8] = 1024;
              *v114 = v23;
              *&v114[4] = 1024;
              *&v114[6] = v24;
              *&v114[10] = 1024;
              *&v114[12] = v25;
              _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPlayerDTMF[%p] Playing Gap samplesCount=%d maxToneGapDuration=%d toneGapDurationCount=%d ", buf, 0x38u);
            }
          }

          else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v58 = *(a2 + 8);
            v59 = v4[415];
            v60 = v4[423];
            *buf = 136316674;
            *&buf[4] = v20;
            *&buf[12] = 2080;
            *&buf[14] = "_VCAudioPlayerDTMF_ProcessDTMFStatePlayingGap";
            *&buf[22] = 1024;
            v111 = 398;
            v112 = 2048;
            *v113 = v5;
            *&v113[8] = 1024;
            *v114 = v58;
            *&v114[4] = 1024;
            *&v114[6] = v59;
            *&v114[10] = 1024;
            *&v114[12] = v60;
            _os_log_debug_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAudioPlayerDTMF[%p] Playing Gap samplesCount=%d maxToneGapDuration=%d toneGapDurationCount=%d ", buf, 0x38u);
          }
        }

LABEL_45:
        v8 = 0;
        goto LABEL_123;
      }

      if (v6 == 2)
      {
        v109 = -1431655766;
        NextFrameTimestamp = JitterQueue_GetNextFrameTimestamp(*(v4 + 5), &v109);
        v10 = v4[422];
        if (v10 < *(v4 + 839))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            v13 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = v4[422];
                v15 = *(v4 + 839);
                *buf = 136316418;
                *&buf[4] = v11;
                *&buf[12] = 2080;
                *&buf[14] = "_VCAudioPlayerDTMF_GetNextDTMFFrame";
                *&buf[22] = 1024;
                v111 = 260;
                v112 = 2048;
                *v113 = v5;
                *&v113[8] = 1024;
                *v114 = v14;
                *&v114[4] = 1024;
                *&v114[6] = v15;
                _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPlayerDTMF[%p] Continue with last event duration, lastEventDurationCount=%d lastEventInfo.duration=%d", buf, 0x32u);
              }
            }

            else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              v39 = v4[422];
              v40 = *(v4 + 839);
              *buf = 136316418;
              *&buf[4] = v11;
              *&buf[12] = 2080;
              *&buf[14] = "_VCAudioPlayerDTMF_GetNextDTMFFrame";
              *&buf[22] = 1024;
              v111 = 260;
              v112 = 2048;
              *v113 = v5;
              *&v113[8] = 1024;
              *v114 = v39;
              *&v114[4] = 1024;
              *&v114[6] = v40;
              _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAudioPlayerDTMF[%p] Continue with last event duration, lastEventDurationCount=%d lastEventInfo.duration=%d", buf, 0x32u);
            }
          }

LABEL_60:
          v8 = 0;
          goto LABEL_111;
        }

        if (!v10)
        {
LABEL_27:
          v26 = JitterQueue_Pop(*(v4 + 5));
          if (!v26)
          {
            goto LABEL_81;
          }

          v27 = v26;
          if (*(v26 + 1144) != 4)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v92 = VRTraceErrorLogLevelToCSTR();
              v93 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v94 = *(v27 + 1144);
                *buf = 136315906;
                *&buf[4] = v92;
                *&buf[12] = 2080;
                *&buf[14] = "_VCAudioPlayerDTMF_ParseDTMFEventPacket";
                *&buf[22] = 1024;
                v111 = 155;
                v112 = 1024;
                *v113 = v94;
                v95 = v93;
                v96 = " [%s] %s:%d Invalid DTMF payloadSize=%d";
                goto LABEL_155;
              }
            }

LABEL_156:
            v4[418] = 1;
            v3 = a1;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v99 = VRTraceErrorLogLevelToCSTR();
              v100 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = v99;
                *&buf[12] = 2080;
                *&buf[14] = "_VCAudioPlayerDTMF_ProcessNextDTMFFrameForCurrentEvent";
                *&buf[22] = 1024;
                v111 = 200;
                _os_log_error_impl(&dword_1DB56E000, v100, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to parse DTMF payload", buf, 0x1Cu);
              }
            }

LABEL_82:
            v4[421] = v4[420];
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v55 = VRTraceErrorLogLevelToCSTR();
              v56 = *MEMORY[0x1E6986650];
              v57 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = v55;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VCAudioPlayerDTMF_ProcessDTMFStatePlayingTone";
                  *&buf[22] = 1024;
                  v111 = 350;
                  v112 = 2048;
                  *v113 = v5;
                  _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPlayerDTMF[%p] _VCAudioPlayerDTMF_ProcessDTMFStatePlayingTone Skipped", buf, 0x26u);
                }
              }

              else if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315906;
                *&buf[4] = v55;
                *&buf[12] = 2080;
                *&buf[14] = "_VCAudioPlayerDTMF_ProcessDTMFStatePlayingTone";
                *&buf[22] = 1024;
                v111 = 350;
                v112 = 2048;
                *v113 = v5;
                _os_log_debug_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAudioPlayerDTMF[%p] _VCAudioPlayerDTMF_ProcessDTMFStatePlayingTone Skipped", buf, 0x26u);
              }
            }

LABEL_8:
            v8 = 1;
            goto LABEL_123;
          }

          v28 = *(v26 + 16);
          if ((v28 & 0xF0) != 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v97 = VRTraceErrorLogLevelToCSTR();
              v98 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = v97;
                *&buf[12] = 2080;
                *&buf[14] = "_VCAudioPlayerDTMF_ParseDTMFEventPacket";
                *&buf[22] = 1024;
                v111 = 170;
                v112 = 1024;
                *v113 = v28;
                v95 = v98;
                v96 = " [%s] %s:%d Received Invalid DTMF eventType=%d";
LABEL_155:
                _os_log_error_impl(&dword_1DB56E000, v95, OS_LOG_TYPE_ERROR, v96, buf, 0x22u);
              }
            }

            goto LABEL_156;
          }

          v29 = bswap32(v28);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v32 = VRTraceErrorLogLevelToCSTR();
            v33 = *MEMORY[0x1E6986650];
            v34 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = *(v27 + 4);
                v36 = *(v27 + 10);
                v37 = *(v27 + 12);
                *buf = 136317442;
                *&buf[4] = v32;
                *&buf[12] = 2080;
                *&buf[14] = "_VCAudioPlayerDTMF_ParseDTMFEventPacket";
                *&buf[22] = 1024;
                v111 = 174;
                v112 = 1024;
                *v113 = v28 & 0xF;
                *&v113[4] = 1024;
                *&v113[6] = (v28 >> 15) & 1;
                *v114 = 1024;
                *&v114[2] = (v28 >> 8) & 0x3F;
                *&v114[6] = 1024;
                *&v114[8] = v29;
                *&v114[12] = 1024;
                *&v114[14] = v35;
                v115 = 1024;
                LODWORD(v116[0]) = v36;
                WORD2(v116[0]) = 1024;
                *(v116 + 6) = v37;
                _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Parsed DTMF EventInfo: eventType=%d isEnd=%d volume=%d duration=%d, RTP Header Info: isMarker=%d seqNumber=%d rtpTimeStamp=%d", buf, 0x46u);
              }
            }

            else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v61 = *(v27 + 4);
              v62 = *(v27 + 10);
              v63 = *(v27 + 12);
              *buf = 136317442;
              *&buf[4] = v32;
              *&buf[12] = 2080;
              *&buf[14] = "_VCAudioPlayerDTMF_ParseDTMFEventPacket";
              *&buf[22] = 1024;
              v111 = 174;
              v112 = 1024;
              *v113 = v28 & 0xF;
              *&v113[4] = 1024;
              *&v113[6] = (v28 >> 15) & 1;
              *v114 = 1024;
              *&v114[2] = (v28 >> 8) & 0x3F;
              *&v114[6] = 1024;
              *&v114[8] = v29;
              *&v114[12] = 1024;
              *&v114[14] = v61;
              v115 = 1024;
              LODWORD(v116[0]) = v62;
              WORD2(v116[0]) = 1024;
              *(v116 + 6) = v63;
              _os_log_debug_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Parsed DTMF EventInfo: eventType=%d isEnd=%d volume=%d duration=%d, RTP Header Info: isMarker=%d seqNumber=%d rtpTimeStamp=%d", buf, 0x46u);
            }
          }

          LODWORD(v30) = v4[116];
          LODWORD(v31) = v4[416];
          v44 = (v30 / v31 * v29);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v45 = VRTraceErrorLogLevelToCSTR();
            v46 = *MEMORY[0x1E6986650];
            v47 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                *&buf[4] = v45;
                *&buf[12] = 2080;
                *&buf[14] = "_VCAudioPlayerDTMF_ProcessNextDTMFFrameForCurrentEvent";
                *&buf[22] = 1024;
                v111 = 205;
                v112 = 1024;
                *v113 = v44;
                _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPlayerDTMF Updated DTMF duration=%d", buf, 0x22u);
                if ((v28 & 0x8000) != 0)
                {
LABEL_89:
                  v49 = v44;
                  if (v4[413] <= v44)
                  {
                    v3 = a1;
                  }

                  else
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 8)
                    {
                      v64 = VRTraceErrorLogLevelToCSTR();
                      v65 = *MEMORY[0x1E6986650];
                      v66 = *MEMORY[0x1E6986650];
                      if (*MEMORY[0x1E6986640] == 1)
                      {
                        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                        {
                          v67 = v4[413];
                          *buf = 136316418;
                          *&buf[4] = v64;
                          *&buf[12] = 2080;
                          *&buf[14] = "_VCAudioPlayerDTMF_ProcessNextDTMFFrameForCurrentEvent";
                          *&buf[22] = 1024;
                          v111 = 209;
                          v112 = 2048;
                          *v113 = v5;
                          *&v113[8] = 1024;
                          *v114 = v44;
                          *&v114[4] = 1024;
                          *&v114[6] = v67;
                          _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPlayerDTMF[%p] Reset evenDuration for endFrame oldValue=%d newValue=%d", buf, 0x32u);
                        }
                      }

                      else if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                      {
                        v88 = v4[413];
                        *buf = 136316418;
                        *&buf[4] = v64;
                        *&buf[12] = 2080;
                        *&buf[14] = "_VCAudioPlayerDTMF_ProcessNextDTMFFrameForCurrentEvent";
                        *&buf[22] = 1024;
                        v111 = 209;
                        v112 = 2048;
                        *v113 = v5;
                        *&v113[8] = 1024;
                        *v114 = v44;
                        *&v114[4] = 1024;
                        *&v114[6] = v88;
                        _os_log_debug_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAudioPlayerDTMF[%p] Reset evenDuration for endFrame oldValue=%d newValue=%d", buf, 0x32u);
                      }
                    }

                    v49 = *(v4 + 826);
                    v3 = a1;
                  }

                  v48 = v4[422];
                  if (v48 > v49)
                  {
                    v4[418] = 3;
                    v4[423] = 0;
                    v8 = 1;
                    goto LABEL_111;
                  }

                  goto LABEL_100;
                }

LABEL_70:
                v48 = v4[422];
                v49 = v44;
                v3 = a1;
                if (v48 > v44)
                {
                  v50 = v48 - v44;
                  v51 = 9306;
                  goto LABEL_108;
                }

LABEL_100:
                if (v48)
                {
LABEL_109:
                  v3[6] = *(v27 + 12);
                  v4[419] = v28 & 0xFF0F | (v49 << 16);
                  v4[420] = *(v27 + 12);
                  if (v27 >= v27 + 1272)
                  {
                    goto LABEL_164;
                  }

                  (*(v27 + 1200))(*(v27 + 1208), v27);
                  v8 = 0;
LABEL_111:
                  if (_VCAudioPlayerDTMF_GenerateSamples(v3, a2))
                  {
                    v72 = v4[422];
                    v73 = *(v4 + 839);
                    v74 = *(a2 + 8);
                    if (v72 >= v73)
                    {
                      v4[424] += v74;
                    }

                    v75 = v74 + v72;
                    v4[422] = v75;
                    if (v75 >= v73)
                    {
                      if (*(v4 + 1677) < 0)
                      {
                        v4[421] = v4[420];
                        if (v5 >= v108)
                        {
                          goto LABEL_164;
                        }

                        JitterQueue_Purge(*(v4 + 5), _VCAudioPlayerDTMF_ShouldPurgeJitterQueue);
                        if (JitterQueue_IsNextFrameDTMF(*(v4 + 5)))
                        {
                          *v106 = 0;
                          v76 = 3;
                        }

                        else
                        {
                          v76 = 1;
                        }

                        v4[418] = v76;
                      }
                    }

                    else
                    {
                      if (v5 >= v108)
                      {
                        goto LABEL_164;
                      }

                      JitterQueue_Purge(*(v4 + 5), _VCAudioPlayerDTMF_ShouldPurgeJitterQueue);
                    }
                  }

                  else if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v89 = VRTraceErrorLogLevelToCSTR();
                    v90 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      v91 = *(v4 + 1676);
                      *buf = 136315906;
                      *&buf[4] = v89;
                      *&buf[12] = 2080;
                      *&buf[14] = "_VCAudioPlayerDTMF_ProcessDTMFStatePlayingTone";
                      *&buf[22] = 1024;
                      v111 = 353;
                      v112 = 1024;
                      *v113 = v91;
                      _os_log_error_impl(&dword_1DB56E000, v90, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to generate DTMF samples for event=%d", buf, 0x22u);
                    }
                  }

                  goto LABEL_123;
                }

                JitterQueue_SetLastDecodedDTMFFrameTimestamp(*(v4 + 5), *(v27 + 12));
                v68 = v28 & 0xF;
                v69 = VCDTMFToneGenerator_Reinit(*(v4 + 213), v68, (v28 >> 8) & 0x3F, v4[116]);
                if (v69 < 0)
                {
                  v101 = v69;
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v102 = VRTraceErrorLogLevelToCSTR();
                    v103 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316162;
                      *&buf[4] = v102;
                      *&buf[12] = 2080;
                      *&buf[14] = "_VCAudioPlayerDTMF_ProcessNextDTMFFrameForCurrentEvent";
                      *&buf[22] = 1024;
                      v111 = 235;
                      v112 = 1024;
                      *v113 = v28 & 0xF;
                      *&v113[4] = 1024;
                      *&v113[6] = v101;
                      _os_log_error_impl(&dword_1DB56E000, v103, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to initialize DTMFToneGenerator, event=%d result=%d", buf, 0x28u);
                    }
                  }

                  v8 = 0;
                  v3 = a1;
                  goto LABEL_111;
                }

                v3 = a1;
                if (*(v4 + 1668) == 1)
                {
                  v70 = *(v4 + 222);
                  if (v70)
                  {
                    v71 = &_VCAudioPlayerDTMF_KeysForEvents[v68];
                    if (&_VCAudioPlayerDTMF_KeysForEvents[v68] >= _preferredDecodingFormatMappings || v71 < _VCAudioPlayerDTMF_KeysForEvents)
                    {
                      goto LABEL_164;
                    }

                    v70(*(v4 + 221), *v71);
                  }
                }

                v50 = v4[430] + 1;
                v4[430] = v50;
                v51 = 9084;
LABEL_108:
                v3[v51] = v50;
                goto LABEL_109;
              }
            }

            else if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              *&buf[4] = v45;
              *&buf[12] = 2080;
              *&buf[14] = "_VCAudioPlayerDTMF_ProcessNextDTMFFrameForCurrentEvent";
              *&buf[22] = 1024;
              v111 = 205;
              v112 = 1024;
              *v113 = v44;
              _os_log_debug_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAudioPlayerDTMF Updated DTMF duration=%d", buf, 0x22u);
              if ((v28 & 0x8000) != 0)
              {
                goto LABEL_89;
              }

              goto LABEL_70;
            }
          }

          if ((v28 & 0x8000) != 0)
          {
            goto LABEL_89;
          }

          goto LABEL_70;
        }

        if (NextFrameTimestamp)
        {
          if (v109 == v4[420])
          {
            goto LABEL_27;
          }

          if (!JitterQueue_IsEmpty(*(v4 + 5)) && v109 == v4[420])
          {
LABEL_57:
            if (v4[422] == *(v4 + 839) && !JitterQueue_IsNextFrameMarkerSet(*(v4 + 5)) && *(v4 + 839) == -1)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v52 = VRTraceErrorLogLevelToCSTR();
                v53 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = v52;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VCAudioPlayerDTMF_GetNextDTMFFrame";
                  *&buf[22] = 1024;
                  v111 = 278;
                  v112 = 2048;
                  *v113 = v5;
                  _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPlayerDTMF[%p] Discard the long event", buf, 0x26u);
                }
              }

              v54 = JitterQueue_Pop(*(v4 + 5));
              if (v54)
              {
                if (v54 >= v54 + 1272)
                {
                  goto LABEL_164;
                }

                VCAudioPlayerDTMF_ProcessDTMF_cold_1(v54);
              }

LABEL_81:
              v4[418] = 1;
              goto LABEL_82;
            }

            goto LABEL_60;
          }
        }

        else if (!JitterQueue_IsEmpty(*(v4 + 5)))
        {
          goto LABEL_57;
        }

        if (v4[424] == v4[414])
        {
          v4[418] = 3;
          *v106 = 0;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v41 = VRTraceErrorLogLevelToCSTR();
            v42 = *MEMORY[0x1E6986650];
            v43 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                *&buf[4] = v41;
                *&buf[12] = 2080;
                *&buf[14] = "_VCAudioPlayerDTMF_GetNextDTMFFrame";
                *&buf[22] = 1024;
                v111 = 274;
                v112 = 2048;
                *v113 = v5;
                _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPlayerDTMF[%p] Exiting from Tone extension window", buf, 0x26u);
              }
            }

            else if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              *&buf[4] = v41;
              *&buf[12] = 2080;
              *&buf[14] = "_VCAudioPlayerDTMF_GetNextDTMFFrame";
              *&buf[22] = 1024;
              v111 = 274;
              v112 = 2048;
              *v113 = v5;
              _os_log_debug_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAudioPlayerDTMF[%p] Exiting from Tone extension window", buf, 0x26u);
            }
          }

          goto LABEL_82;
        }

        goto LABEL_57;
      }

      if (v6 != 1)
      {
        goto LABEL_8;
      }

      *buf = -1431655766;
      v7 = JitterQueue_GetNextFrameTimestamp(*(v4 + 5), buf);
      if (!v4[423] && v4[420] && (v38 = v7, JitterQueue_IsNextFrameDTMF(*(v4 + 5))) && (JitterQueue_IsNextFrameMarkerSet(*(v4 + 5)) || v38 && *buf > v4[420]) || JitterQueue_IsEmpty(*(v4 + 5)))
      {
        v4[418] = 3;
        v4[423] = 0;
        goto LABEL_8;
      }

      if (!JitterQueue_IsNextFrameDTMF(*(v4 + 5)))
      {
        goto LABEL_45;
      }

      if (v5 >= v108)
      {
        goto LABEL_164;
      }

      v4[420] = 0;
      *(v4 + 211) = 0;
      v4[424] = 0;
      v8 = 1;
      *(v4 + 209) = 2;
LABEL_123:
      if (v6 == v4[418] || VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_136;
      }

      v77 = VRTraceErrorLogLevelToCSTR();
      v78 = *MEMORY[0x1E6986650];
      v79 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        break;
      }

      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = "Invalid";
        if (v6 <= 3)
        {
          v80 = off_1E85F8988[v6];
        }

        v81 = v4[418];
        v82 = "Invalid";
        if (v81 <= 3)
        {
          v82 = off_1E85F8988[v81];
        }

        *buf = 136316674;
        v83 = "NO";
        if (v8)
        {
          v83 = "YES";
        }

        *&buf[4] = v77;
        *&buf[12] = 2080;
        *&buf[14] = "VCAudioPlayerDTMF_ProcessDTMF";
        *&buf[22] = 1024;
        v111 = 505;
        v112 = 2048;
        *v113 = v5;
        *&v113[8] = 2080;
        *v114 = v80;
        *&v114[8] = 2080;
        *&v114[10] = v82;
        v115 = 2080;
        v116[0] = v83;
        _os_log_impl(&dword_1DB56E000, v78, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPlayerDTMF[%p] Transitioning DTMF State currentState=%s ==> newState=%s shouldContinue=%s", buf, 0x44u);
        if ((v8 & 1) == 0)
        {
          goto LABEL_163;
        }
      }

      else
      {
LABEL_136:
        if ((v8 & 1) == 0)
        {
          goto LABEL_163;
        }
      }
    }

    if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_136;
    }

    v84 = "Invalid";
    if (v6 <= 3)
    {
      v84 = off_1E85F8988[v6];
    }

    v85 = v4[418];
    v86 = "Invalid";
    if (v85 <= 3)
    {
      v86 = off_1E85F8988[v85];
    }

    *buf = 136316674;
    v87 = "NO";
    if (v8)
    {
      v87 = "YES";
    }

    *&buf[4] = v77;
    *&buf[12] = 2080;
    *&buf[14] = "VCAudioPlayerDTMF_ProcessDTMF";
    *&buf[22] = 1024;
    v111 = 505;
    v112 = 2048;
    *v113 = v5;
    *&v113[8] = 2080;
    *v114 = v84;
    *&v114[8] = 2080;
    *&v114[10] = v86;
    v115 = 2080;
    v116[0] = v87;
    _os_log_debug_impl(&dword_1DB56E000, v78, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAudioPlayerDTMF[%p] Transitioning DTMF State currentState=%s ==> newState=%s shouldContinue=%s", buf, 0x44u);
  }

  while ((v8 & 1) != 0);
LABEL_163:
  v104 = *(a2 + 8);
  v3[6] += v104;
  *v4 += v104;
  v105 = v3[43] + v104;
  v3[42] = 0;
  v3[43] = v105;
  v3[77] += v104;
  v3[76] = 0;
}

BOOL _VCAudioPlayerDTMF_GenerateSamples(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  ChannelCount = VCAudioBufferList_GetChannelCount(*a2);
  v5 = ChannelCount;
  if (!ChannelCount)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = a1 + 36008;
  v9 = (a1 + 37176);
  while (1)
  {
    v10 = *(a2 + 8);
    MEMORY[0x1EEE9AC00](ChannelCount);
    v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v10)
    {
      memset(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 255, v11);
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    VCAudioBufferList_GetSizedBufferAtIndex(*a2, v6, 0, &v27);
    if (*v8)
    {
      v13 = &v12[4 * v10];
      v14 = v12;
    }

    else
    {
      v14 = v27;
      v13 = &v27[v28];
    }

    if (*v9 != 1)
    {
      v15 = 2 * *(a2 + 8);
      v16 = v13 >= v14;
      v17 = v13 - v14;
      if (!v16 || v15 > v17)
      {
LABEL_27:
        __break(0x5519u);
      }

      bzero(v14, v15);
      goto LABEL_18;
    }

    if (v14 && v14 >= v13)
    {
      goto LABEL_27;
    }

    ChannelCount = VCDTMFToneGenerator_GenerateSamples(*(v8 + 1224), *(a2 + 8), v14);
    if ((ChannelCount & 0x80000000) != 0)
    {
      break;
    }

LABEL_18:
    if (*v8 == 1)
    {
      v19 = *(a2 + 8);
      ioOutputDataSize = 4 * v19;
      ChannelCount = AudioConverterConvertBuffer(*(v8 + 1232), 2 * v19, v12, &ioOutputDataSize, v27);
    }

    v7 = v5 <= ++v6;
    if (v5 == v6)
    {
      return 1;
    }
  }

  v21 = ChannelCount;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 3)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v25 = *(v8 + 1196);
      ioOutputDataSize = 136316418;
      v31 = v23;
      v32 = 2080;
      v33 = "_VCAudioPlayerDTMF_GenerateSamples";
      v34 = 1024;
      v35 = 329;
      v36 = 2048;
      v37 = v9;
      v38 = 1024;
      v39 = v25;
      v40 = 1024;
      v41 = v21;
      _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCAudioPlayerDTMF[%p] Failed to generate tone samples, event=%d result=%d", &ioOutputDataSize, 0x32u);
    }
  }

  return v7;
}

void VCVideoReceiverSampleBuffer_Destroy(const __CFAllocator ***a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *v2;
      VCBlockBuffer_Clear((v2 + 20));
      VCBlockBuffer_Clear((v2 + 23));
      VCBlockBuffer_Clear((v2 + 17));
      VCBlockBuffer_Clear((v2 + 26));
      v4 = v2[16];
      if (v4)
      {
        CFRelease(v4);
        v2[16] = 0;
      }

      v5 = v2[14];
      if (v5)
      {
        CFRelease(v5);
        v2[14] = 0;
      }

      CFAllocatorDeallocate(v3, v2);
      if (v3)
      {
        CFRelease(v3);
      }

      *a1 = 0;
    }
  }
}

uint64_t VCVideoReceiverSampleBuffer_Create(const void *a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E1288880](a1, 248, 0x10700409AD223D3, 0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0;
  if (a1)
  {
    v5 = CFRetain(a1);
  }

  else
  {
    v5 = 0;
  }

  *v4 = v5;
  *a2 = v4;
  return 1;
}

void VCVideoReceiverDecodedFrame_Destroy(const __CFAllocator ***a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        CFRelease(v4);
        v2[2] = 0;
      }

      v5 = v2[1];
      if (v5)
      {
        CFRelease(v5);
        v2[1] = 0;
      }

      CFAllocatorDeallocate(v3, v2);
      if (v3)
      {
        CFRelease(v3);
      }

      *a1 = 0;
    }
  }
}

BOOL VCVideoReceiverDecodedFrame_Create(const void *a1, uint64_t *a2, const void *a3, __CVBuffer *a4, __int128 *a5, __int128 *a6)
{
  v12 = MEMORY[0x1E1288880](a1, 120, 0x1060040299FB7E7, 0);
  v13 = v12;
  if (v12)
  {
    *(v12 + 112) = 0;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *v12 = 0u;
    if (a1)
    {
      v14 = CFRetain(a1);
    }

    else
    {
      v14 = 0;
    }

    *v13 = v14;
    *(v13 + 16) = a4;
    CVPixelBufferRetain(a4);
    if (a3)
    {
      v15 = CFRetain(a3);
    }

    else
    {
      v15 = 0;
    }

    *(v13 + 8) = v15;
    v16 = *a5;
    v17 = a5[1];
    v18 = a5[2];
    *(v13 + 72) = a5[3];
    *(v13 + 56) = v18;
    *(v13 + 40) = v17;
    *(v13 + 24) = v16;
    v19 = *a6;
    *(v13 + 104) = *(a6 + 2);
    *(v13 + 88) = v19;
  }

  result = v13 != 0;
  *a2 = v13;
  return result;
}

void _VCStreamInputAudio_SampleBufferHandler(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  VCStreamInput_UpdateReportingStats(a1, a2);
  os_unfair_lock_lock((a1 + 312));
  v4 = *(a1 + 296);
  if (v4)
  {
    v4(*(a1 + 304), a2);
  }

  os_unfair_lock_unlock((a1 + 312));
}

void VCTerminateProcess_HandleAutoBugCapture(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyTerminationSource", a1);
  CFDictionarySetValue(Mutable, @"SymptomReporterOptionalIsLocalSideOnly", *MEMORY[0x1E695E4D0]);
  reportingSymptom();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void VCTerminateProcess(uint64_t a1, const void *a2, uint64_t a3)
{
  *&v23[1021] = *MEMORY[0x1E69E9840];
  v6 = getpid();
  bzero(v23, 0x3FDuLL);
  memset(buffer, 63, sizeof(buffer));
  proc_name(v6, buffer, 0x400u);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Terminating %s (PID=%d) terminateSource=%@ reason=%@", buffer, v6, a2, a1];
  Diagnostics = 0;
  if (!VCDefaults_GetBoolValueForKey(@"disableGenerateDiagnostics", 0))
  {
    Diagnostics = VCUtil_GenerateDiagnostics(1, 1, [v7 UTF8String], 7u);
  }

  if (a3)
  {
    VCTerminateProcess_HandleAutoBugCapture(a2);
  }

  if (VRTraceGetErrorLogLevelForModule() < 3 || (v9 = VRTraceErrorLogLevelToCSTR(), v10 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
  {
    if (Diagnostics)
    {
      return;
    }

    goto LABEL_8;
  }

  v11 = " -- ##### Skipping terminate due to concurrent termination requests";
  *buf = 136316162;
  if (!Diagnostics)
  {
    v11 = "";
  }

  v13 = v9;
  v14 = 2080;
  v15 = "VCTerminateProcess";
  v16 = 1024;
  v17 = 42;
  v18 = 2112;
  v19 = v7;
  v20 = 2080;
  v21 = v11;
  _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d ##### %@%s", buf, 0x30u);
  if ((Diagnostics & 1) == 0)
  {
LABEL_8:
    MEMORY[0x720] = 1;
    kill(v6, 11);
  }
}

void OUTLINED_FUNCTION_2_28(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Cu);
}

uint64_t VCTimescalePSOLA_PeakDetection(uint64_t result, __int16 a2, int a3, int a4, __int16 *a5, _WORD *a6)
{
  if (a3 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    v25 = result - 2;
    v12 = a3;
    v13 = a3 - 1;
    v27 = a3 == 1;
    v24 = 2 * a4;
    do
    {
      a2 += v27;
      result = VCTimescalePSOLA_MaxIndexW16(v9, (a2 - 1));
      *a5 = result;
      v14 = ((result << 16) + 0x20000) >> 16;
      if (v14 >= (a2 - 1))
      {
        LOWORD(v14) = a2 - 1;
      }

      if (v13)
      {
        v11 = (((result << 16) - 0x20000) >> 16) & ~(((result << 16) - 0x20000) >> 31);
        v10 = v14;
      }

      v15 = a2 - 2;
      if (result)
      {
        v16 = v15 == result;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = (v9 + 2 * result);
        v18 = *v17;
        if (v15 != result)
        {
          *a6 = v18;
          v23 = v24 * *a5;
          goto LABEL_21;
        }

        v17[1] = v18;
        v19 = (v9 + 2 * *a5);
        v20 = *v19;
        v21 = v19[1];
        if (v20 <= v21)
        {
          *a6 = (v21 + v20) >> 1;
          v23 = ((2 * *a5) | 1) * a4;
LABEL_21:
          *a5 = v23;
          if (!v13)
          {
            goto LABEL_17;
          }

LABEL_16:
          result = VCTimescalePSOLA_MemSetW16(v9 + 2 * v11, 0, v10 - v11 + 1);
          goto LABEL_17;
        }

        v22 = v19 - 1;
      }

      else
      {
        v22 = (v25 + 2 * result);
      }

      result = VCTimescalePSOLA_PrblFit(v22, a5, a6, a4);
      if (v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      --v13;
      ++a6;
      ++a5;
      --v12;
    }

    while (v12);
  }

  return result;
}

__int16 *VCTimescalePSOLA_PrblFit(__int16 *result, _WORD *a2, _WORD *a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = -21846;
  *&v24[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v24[16] = 0xAAAAAAAAAAAAAAAALL;
  *v24 = 0xAAAAAAAAAAAA0000;
  switch(a4)
  {
    case 4:
      v4 = &v24[16];
      *&v24[2] = 0x8000600040002;
      *&v24[10] = 786442;
      *&v24[14] = 14;
      break;
    case 2:
      v4 = &v24[8];
      *&v24[2] = 524292;
      *&v24[6] = 12;
      break;
    case 1:
      v4 = &v24[4];
      *&v24[2] = 8;
      break;
    default:
      v4 = &v25;
      *&v24[2] = xmmword_1DBD4F550;
      *&v24[18] = 851980;
      *&v24[22] = 15;
      break;
  }

  *v4 = 16;
  v5 = *result;
  v6 = result[1];
  v7 = result[2];
  v8 = -3 * v5 + 4 * v6 - v7;
  v9 = v5 - 2 * v6 + v7;
  v10 = 120 * v8;
  v11 = &v24[2 * a4];
  v12 = VCTimescalePSOLA_PrblCf[3 * *v11];
  v13 = VCTimescalePSOLA_PrblCf[3 * *(v11 - 1)];
  v14 = v12 - v13;
  v15 = v13 + v12;
  v16 = -v9;
  v17 = v15 >> 1;
  if (120 * v8 >= -(v9 * (v15 >> 1)))
  {
    if (v10 <= (v17 + v14) * v16)
    {
      *a3 = v6;
      v22 = 2 * a4 * *a2;
    }

    else
    {
      v19 = v17 + 2 * v14;
      LOWORD(v20) = 1;
      while (v20 != a4 && v10 >= v19 * v16)
      {
        v20 = v20 + 1;
        v19 += v14;
        if ((v20 & 0x10000) != 0)
        {
          return result;
        }
      }

      v23 = &VCTimescalePSOLA_PrblCf[3 * *&v24[2 * a4 + 2 * v20]];
      *a3 = *result + ((v9 * v23[1] + v8 * v23[2]) >> 8);
      v22 = v20 + 2 * a4 * *a2;
    }
  }

  else
  {
    LOWORD(v18) = 1;
    while (v18 != a4)
    {
      v17 -= v14;
      if (v10 > v17 * v16)
      {
        break;
      }

      v18 = v18 + 1;
      if ((v18 & 0x10000) != 0)
      {
        return result;
      }
    }

    v21 = &VCTimescalePSOLA_PrblCf[3 * *&v24[2 * (a4 - v18)]];
    *a3 = *result + ((v9 * v21[1] + v8 * v21[2]) >> 8);
    v22 = 2 * a4 * *a2 - v18;
  }

  *a2 = v22;
  return result;
}

uint64_t VCAudioSession_InterruptionListenerCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v8;
      v13 = 2080;
      v14 = "VCAudioSession_InterruptionListenerCallback";
      v15 = 1024;
      v16 = 452;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received notification that interruption information has changed", &v11, 0x1Cu);
    }
  }

  return [a2 handleAudioInterruption:a4 interruptionInfo:a5];
}

uint64_t VCAudioSession_AvailableSampleRateChangeListenerCallback(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "VCAudioSession_AvailableSampleRateChangeListenerCallback";
      v10 = 1024;
      v11 = 460;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received notification that Sample Rate has changed", &v6, 0x1Cu);
    }
  }

  [a2 didAvailableSampleRateChange];
  return [a2 setBlockSizeOnSampleRateChange];
}

uint64_t VCAudioSession_ActiveAudioRouteDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = v7;
      v12 = 2080;
      v13 = "VCAudioSession_ActiveAudioRouteDidChange";
      v14 = 1024;
      v15 = 467;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received route notification change", &v10, 0x1Cu);
    }
  }

  return [a2 didAudioRouteChangeWithUserInfo:a5];
}

uint64_t VCAudioSessionCMS_SessionReference()
{
  v0 = +[VCAudioSession sharedVoiceChatInstance];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v0 cmSession];
}

void *receiveProc(void *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 strong];
  v4 = [v3 transportSessionID];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = "receiveProc";
      *&buf[22] = 1024;
      *&buf[24] = 70;
      *&buf[28] = 1024;
      *&buf[30] = v4;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d control channel starts listening for sessionID='%d'", buf, 0x22u);
    }
  }

  v7 = [v3 isRunning];
  objc_autoreleasePoolPop(v2);
  if (!v7)
  {
    return a1;
  }

  pthread_setname_np("com.apple.vccontrolchannel.receiveproc");
  v8 = micro();
  memset(buf, 0, sizeof(buf));
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v9 = objc_autoreleasePoolPush();
  v10 = [a1 strong];
  if (![v10 isRunning])
  {
LABEL_50:
    v34 = v9;
LABEL_51:
    objc_autoreleasePoolPop(v34);
    goto LABEL_52;
  }

  v12 = MEMORY[0x1E6986650];
  v13 = v8 + 30.0;
  *&v11 = 136315650;
  v52 = v11;
  while (1)
  {
    v14 = [v10 vfdMessage];
    v15 = [v10 vfdCancel];
    objc_autoreleasePoolPop(v9);
    if (v14 == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_52;
      }

      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *v12;
      if (!os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      *v57 = 136316162;
      v58 = v38;
      v59 = 2080;
      v60 = "receiveProc";
      v61 = 1024;
      v62 = 93;
      v63 = 1024;
      v64 = -1;
      v65 = 1024;
      v66 = v4;
      v40 = " [%s] %s:%d receiveProc: vfdMessage='%d', exiting receiveProc for sessionID='%d'";
      goto LABEL_62;
    }

    if (v15 == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_52;
      }

      v41 = VRTraceErrorLogLevelToCSTR();
      v39 = *v12;
      if (!os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      *v57 = 136316162;
      v58 = v41;
      v59 = 2080;
      v60 = "receiveProc";
      v61 = 1024;
      v62 = 97;
      v63 = 1024;
      v64 = -1;
      v65 = 1024;
      v66 = v4;
      v40 = " [%s] %s:%d receiveProc: vfdCancel='%d', exiting receiveProc for sessionID='%d'";
LABEL_62:
      _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, v40, v57, 0x28u);
      goto LABEL_52;
    }

    if (__darwin_check_fd_set_overflow(v15, buf, 0))
    {
      *&buf[(v15 >> 3) & 0x1FFFFFFFFFFFFFFCLL] |= 1 << v15;
    }

    if (__darwin_check_fd_set_overflow(v14, buf, 0))
    {
      *&buf[(v14 >> 3) & 0x1FFFFFFFFFFFFFFCLL] |= 1 << v14;
    }

    if (v14 > v15)
    {
      v15 = v14;
    }

    v16 = v13 - micro();
    if (v16 <= 0.0)
    {
      v13 = micro() + 30.0;
    }

    v55 = v16;
    LODWORD(v56) = ((v16 - v16) * 1000000.0);
    v17 = VTP_Select((v15 + 1), buf, 0, 0, &v55);
    if (!v17)
    {
      v13 = micro() + 30.0;
      goto LABEL_45;
    }

    if (v17 == -1)
    {
      if (*__error() != 9)
      {
        v42 = *__error();
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 3)
        {
          v44 = VRTraceErrorLogLevelToCSTR();
          v45 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
          {
            *v57 = 136316162;
            v58 = v44;
            v59 = 2080;
            v60 = "receiveProc";
            v61 = 1024;
            v62 = 123;
            v63 = 1024;
            v64 = v42 | 0xC00F0000;
            v65 = 1024;
            v66 = v4;
            v46 = " [%s] %s:%d select failed(%08X) for sessionID='%d'";
            v47 = v45;
            v48 = 40;
            goto LABEL_69;
          }
        }

        goto LABEL_52;
      }

      goto LABEL_45;
    }

    if (!__darwin_check_fd_set_overflow(v14, buf, 0) || ((*&buf[(v14 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v14) & 1) == 0)
    {
      goto LABEL_45;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *v12;
      v20 = *v12;
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v57 = 136315906;
          v58 = v18;
          v59 = 2080;
          v60 = "receiveProc";
          v61 = 1024;
          v62 = 132;
          v63 = 1024;
          v64 = v4;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d from sessionID='%d'", v57, 0x22u);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *v57 = 136315906;
        v58 = v18;
        v59 = 2080;
        v60 = "receiveProc";
        v61 = 1024;
        v62 = 132;
        v63 = 1024;
        v64 = v4;
        _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d from sessionID='%d'", v57, 0x22u);
      }
    }

    v54 = 0;
    v21 = VTP_Recvfrom(v14, &v54);
    if ((v21 & 0x80000000) != 0)
    {
      break;
    }

    if (!v54[66])
    {
      VTP_ReleasePacket(&v54);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          *v57 = 136316162;
          v58 = v30;
          v59 = 2080;
          v60 = "receiveProc";
          v61 = 1024;
          v62 = 142;
          v63 = 1024;
          v64 = v14;
          v65 = 1024;
          v66 = v4;
          _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTP_Recvfrom(%d) returned 0: empty message for sessionID='%d'", v57, 0x28u);
        }
      }

      goto LABEL_45;
    }

    v22 = v21;
    v23 = objc_autoreleasePoolPush();
    v24 = [a1 strong];
    if (![v24 isRunning])
    {
      VTP_ReleasePacket(&v54);
      v34 = v23;
      goto LABEL_51;
    }

    [v24 addToReceivedStats:*(v54 + 132)];
    v53 = 0;
    v25 = [VCControlChannelMultiWay allocPayoadDataFromVTPPacket:v54 + 65 vpktFlags:v54 + 23 channelDataFormat:&v53];
    if (v25)
    {
      v26 = v25;
      [v24 messageReceived:v25 participantInfo:v53];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *v57 = v52;
        v58 = v32;
        v59 = 2080;
        v60 = "receiveProc";
        v61 = 1024;
        v62 = 157;
        _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not parse raw input data", v57, 0x1Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *v12;
      v29 = *v12;
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *v57 = 136316162;
          v58 = v27;
          v59 = 2080;
          v60 = "receiveProc";
          v61 = 1024;
          v62 = 161;
          v63 = 1024;
          v64 = v4;
          v65 = 1024;
          v66 = v22;
          _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCControlChannelMultiWay: receiveProc for MW control channel parsed message for sessionID='%d', status='%d", v57, 0x28u);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *v57 = 136316162;
        v58 = v27;
        v59 = 2080;
        v60 = "receiveProc";
        v61 = 1024;
        v62 = 161;
        v63 = 1024;
        v64 = v4;
        v65 = 1024;
        v66 = v22;
        _os_log_debug_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCControlChannelMultiWay: receiveProc for MW control channel parsed message for sessionID='%d', status='%d", v57, 0x28u);
      }
    }

    objc_autoreleasePoolPop(v23);
    VTP_ReleasePacket(&v54);
LABEL_45:
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    memset(buf, 0, sizeof(buf));
    v9 = objc_autoreleasePoolPush();
    v10 = [a1 strong];
    if (([v10 isRunning] & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v49 = VRTraceErrorLogLevelToCSTR();
    v50 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v51 = *__error() | 0xC00F0000;
      *v57 = 136316418;
      v58 = v49;
      v59 = 2080;
      v60 = "receiveProc";
      v61 = 1024;
      v62 = 137;
      v63 = 1024;
      v64 = v14;
      v65 = 1024;
      v66 = v51;
      v67 = 1024;
      v68 = v4;
      v46 = " [%s] %s:%d VTP_Recvfrom(%d) failed(%08X) for sessionID='%d'";
      v47 = v50;
      v48 = 46;
LABEL_69:
      _os_log_error_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_ERROR, v46, v57, v48);
    }
  }

LABEL_52:
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v57 = 136315906;
      v58 = v35;
      v59 = 2080;
      v60 = "receiveProc";
      v61 = 1024;
      v62 = 167;
      v63 = 1024;
      v64 = v4;
      _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d control channel receiveProc ended for sessionID='%d'", v57, 0x22u);
    }
  }

  return a1;
}

uint64_t VCTransportStreamGetClassID()
{
  if (VCTransportStreamGetClassID_onceToken != -1)
  {
    VCTransportStreamGetClassID_cold_1();
  }

  return VCTransportStreamGetClassID_classID;
}

uint64_t __VCTransportStreamGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&VCTransportStreamGetClassID_descriptor, ClassID, 1, &VCTransportStreamGetClassID_classID);
}

uint64_t VCTransportStreamCommonInitialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  if (a2)
  {
    FigCFDictionaryGetBooleanIfPresent();
    *(a1 + 12) = 0;
  }

  return 0;
}

void VCTransportStreamCommonFinalize(uint64_t *a1)
{
  if (*(a1 + 2) == 2)
  {
    v2 = *a1;
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v3)
    {
      v3(v2);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = a1[5];
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t VCTransportStreamCommonCopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, const void **a4)
{
  if (CFEqual(cf1, @"IsReceiveExternallyScheduled"))
  {
    if (*(a1 + 12))
    {
      v7 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    v8 = *v7;
    *a4 = *v7;
    CFRetain(v8);
    return 0;
  }

  else
  {
    v9 = 2150760464;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCTransportStreamCommonCopyProperty_cold_1(v10, cf1, v11);
      }
    }
  }

  return v9;
}

uint64_t VCTransportStreamCommonSetSendFailedHandler(uint64_t a1, void *aBlock, dispatch_object_t object)
{
  if (!aBlock)
  {
    VCTransportStreamCommonSetSendFailedHandler_cold_2();
    return v10;
  }

  if (*(a1 + 8) != 1)
  {
    VCTransportStreamCommonSetSendFailedHandler_cold_1();
    return v10;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 24) = 0;
  }

  if (object)
  {
    dispatch_retain(object);
    *(a1 + 24) = object;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = _Block_copy(aBlock);
  result = 0;
  *(a1 + 16) = v8;
  return result;
}

uint64_t VCTransportStreamCommonSetReceivedHandler(uint64_t a1, void *aBlock)
{
  if (!aBlock)
  {
    VCTransportStreamCommonSetReceivedHandler_cold_2();
    return v7;
  }

  if (*(a1 + 8) != 1)
  {
    VCTransportStreamCommonSetReceivedHandler_cold_1();
    return v7;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = _Block_copy(aBlock);
  result = 0;
  *(a1 + 32) = v5;
  return result;
}

void VCBlockBuffer_Copy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (a1)
    {
      v4 = *(a1 + 16);
      *a2 = *a1;
      *(a2 + 16) = v4;
      v5 = *a2;
      if (*a2)
      {

        CFRetain(v5);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCBlockBuffer_Copy_cold_1(v6, v7);
    }
  }
}

void VCBlockBuffer_Clear(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t _VCCannedVideoCaptureSource_ProducerThread(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a1 + 168;
  pthread_mutex_lock((a1 + 264));
  if ((*(v2 + 88) & 1) == 0)
  {
    v4 = MEMORY[0x1E6986650];
    do
    {
      pthread_mutex_lock((v2 + 336));
      v5 = *(v2 + 408);
      v6 = 16;
      while (1)
      {
        v7 = v5 <= 0 ? -(-v5 & 0xF) : v5 & 0xF;
        v8 = (*(v2 + 400) + 16 * v7);
        if (!*(v8 + 1))
        {
          v9 = *v8;
          if (v9 != -1)
          {
            break;
          }
        }

        ++v5;
        if (!--v6)
        {
          pthread_mutex_unlock((v2 + 336));
          pthread_cond_wait((v2 + 160), (v2 + 96));
          goto LABEL_12;
        }
      }

      pthread_mutex_unlock((v2 + 336));
      pthread_mutex_lock((v2 + 336));
      v10 = *(v2 + 408);
      v11 = 16;
      do
      {
        if (v10 <= 0)
        {
          v12 = -(-v10 & 0xF);
        }

        else
        {
          v12 = v10 & 0xF;
        }

        if (*(*(v2 + 400) + 16 * v12) == v9)
        {
          *(*(v2 + 400) + 16 * v12 + 8) = [*(a1 + 592) createPixelBufferForFrameIndex:v9];
          pthread_mutex_unlock((v2 + 336));
          goto LABEL_12;
        }

        ++v10;
        --v11;
      }

      while (v11);
      pthread_mutex_unlock((v2 + 336));
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = v13;
          v17 = 2080;
          v18 = "_VCCannedVideoCaptureSource_WriteToRingBuffer";
          v19 = 1024;
          v20 = 312;
          v21 = 1024;
          v22 = v9;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PixelBuffer became obsolete - frame index %d changed?", buf, 0x22u);
        }
      }

LABEL_12:
      ;
    }

    while (*(v2 + 88) != 1);
  }

  pthread_mutex_unlock((v2 + 96));
  return 0;
}

uint64_t _VCCannedVideoCaptureSource_ConsumerThread(uint64_t a1)
{
  v1 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v2 = a1 + 168;
  queue = *(a1 + 584);
  pthread_mutex_lock((a1 + 392));
  v46.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v46.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v46, 0);
  memset(&v45, 170, sizeof(v45));
  CMClockGetTime(&v45, *(v2 + 72));
  v3 = +[VCCannedAVSync sharedCannedAVSync];
  VCCannedAVSync_SetBase(v3, v45.value / v45.timescale);
  if ((*(v2 + 216) & 1) == 0)
  {
    v5 = 0;
    v6 = -1;
    v35 = v1;
    while (1)
    {
      v7 = atomic_load((v2 + 64));
      if (v7 && v7 != v5)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_10;
      }

LABEL_43:
      if (*(v2 + 216) == 1)
      {
        goto LABEL_2;
      }
    }

    setRealTimeConstraints(1.0 / v7);
    v5 = v7;
LABEL_10:
    memset(v47, 170, 16);
    gettimeofday(v47, 0);
    tv_usec = v46.tv_usec;
    tv_sec = v46.tv_sec;
    v11 = v46.tv_sec;
    do
    {
      while (1)
      {
        tv_usec += 0xF4240uLL / v7;
        if (tv_usec > 999999)
        {
          tv_sec = ++v11;
          tv_usec -= 1000000;
        }

        if (v11 == *v47)
        {
          break;
        }

        if (v11 >= *v47)
        {
          goto LABEL_17;
        }
      }
    }

    while (tv_usec < *&v47[8]);
    v11 = *v47;
LABEL_17:
    v46.tv_sec = tv_sec;
    v46.tv_usec = tv_usec;
    v41.value = v11;
    *&v41.timescale = 1000 * tv_usec;
    if (pthread_cond_timedwait((v2 + 288), (v2 + 224), &v41) == 60)
    {
      v44 = NAN;
      v42 = -1431655766;
      v43 = -1431655766;
      [*(v1 + 592) getFrameRate:&v44 frameCount:&v43 transformFlags:&v42];
      memset(&v41, 170, sizeof(v41));
      CMClockGetTime(&v41, *(v2 + 72));
      v12 = vcvtmd_s64_f64(VCCannedAVSync_ClampForTime(+[VCCannedAVSync sharedCannedAVSync], v41.value / v41.timescale) * v44);
      if (v6 != v12)
      {
        v13 = v43;
        pthread_mutex_lock((v2 + 336));
        v14 = 0;
        v15 = *(v2 + 400);
        v16 = *(v2 + 408);
        do
        {
          v17 = v15 + 16 * v16;
          if (*v17 == v12)
          {
            v18 = *(v17 + 8);
            *(v17 + 8) = 0;
          }

          else
          {
            v18 = 0;
          }

          v19 = v16 + 1;
          v20 = -v19 < 0;
          v21 = -v19 & 0xF;
          v16 = v19 & 0xF;
          if (!v20)
          {
            v16 = -v21;
          }

          if (v18)
          {
            break;
          }
        }

        while (v14++ < 0xF);
        v23 = 0;
        *(v2 + 408) = v16;
        do
        {
          v24 = v23 + *(v2 + 408);
          v25 = v24 & 0xF;
          v26 = -v24;
          v20 = v26 < 0;
          v27 = v26 & 0xF;
          if (v20)
          {
            v28 = v25;
          }

          else
          {
            v28 = -v27;
          }

          v29 = (v12 + v23 + 1) % v13;
          v30 = v15 + 16 * v28;
          if (*v30 != v29)
          {
            v31 = v28;
            v32 = *(v30 + 8);
            if (v32)
            {
              CVPixelBufferRelease(v32);
              v15 = *(v2 + 400);
              *(v15 + 16 * v31 + 8) = 0;
            }

            *(v15 + 16 * v31) = v29;
          }

          ++v23;
        }

        while (v23 != 16);
        pthread_mutex_unlock((v2 + 336));
        pthread_cond_signal((v2 + 160));
        if (v18)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          v1 = v35;
          block[2] = ___VCCannedVideoCaptureSource_ConsumerThread_block_invoke;
          block[3] = &unk_1E85F8BB0;
          block[4] = v35;
          block[5] = v18;
          v38 = v41;
          v39 = v42;
          v40 = v12;
          dispatch_async(queue, block);
        }

        else
        {
          v1 = v35;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v33 = VRTraceErrorLogLevelToCSTR();
            v34 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *v47 = 136315906;
              *&v47[4] = v33;
              *&v47[12] = 2080;
              *&v47[14] = "_VCCannedVideoCaptureSource_ConsumerThread";
              v48 = 1024;
              v49 = 469;
              v50 = 1024;
              v51 = v12;
              _os_log_error_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_ERROR, " [%s] %s:%d Pixel buffer for frame %d not available", v47, 0x22u);
            }
          }
        }

        v6 = v12;
      }
    }

    goto LABEL_43;
  }

LABEL_2:
  pthread_mutex_unlock((v2 + 224));
  dispatch_sync(queue, &__block_literal_global_81);
  dispatch_release(queue);
  return 0;
}

VTSessionRef VCMediaRecorderUtil_AllocTransferSession()
{
  session[1] = *MEMORY[0x1E69E9840];
  session[0] = 0xAAAAAAAAAAAAAAAALL;
  VTPixelTransferSessionCreate(0, session);
  VTSessionSetProperty(session[0], *MEMORY[0x1E6983E30], *MEMORY[0x1E69840F8]);
  return session[0];
}

CVPixelBufferRef VCMediaRecorderUtil_CreateResizeFrame(__CVBuffer *a1, OpaqueVTPixelTransferSession *a2, CVPixelBufferPoolRef pixelBufferPool)
{
  pixelBufferOut[2] = *MEMORY[0x1E69E9840];
  pixelBufferOut[0] = 0;
  if (!a2)
  {
    VCMediaRecorderUtil_CreateResizeFrame_cold_4();
LABEL_11:
    v5 = pixelBufferOut[1];
    goto LABEL_6;
  }

  if (!pixelBufferPool)
  {
    VCMediaRecorderUtil_CreateResizeFrame_cold_3();
    goto LABEL_11;
  }

  if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], pixelBufferPool, pixelBufferOut))
  {
    VCMediaRecorderUtil_CreateResizeFrame_cold_1();
    goto LABEL_11;
  }

  if (VTPixelTransferSessionTransferImage(a2, a1, pixelBufferOut[0]))
  {
    VCMediaRecorderUtil_CreateResizeFrame_cold_2();
    goto LABEL_11;
  }

  v5 = pixelBufferOut[0];
  pixelBufferOut[0] = 0;
LABEL_6:
  CVPixelBufferRelease(pixelBufferOut[0]);
  return v5;
}

uint64_t VCMediaRecorderUtil_SetupBufferPool(__CFString *a1, CVPixelBufferPoolRef *a2, double a3, double a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E696CF98];
  v16[0] = *MEMORY[0x1E696CF68];
  v16[1] = v7;
  v8 = @"AVConference:MediaRecorderUtil";
  if (a1)
  {
    v8 = a1;
  }

  v17[0] = MEMORY[0x1E695E118];
  v17[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v10 = VCVideoUtil_DefaultCameraCapturePixelFormat();
  v14[0] = *MEMORY[0x1E6966208];
  v15[0] = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v14[1] = *MEMORY[0x1E69660B8];
  v15[1] = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v14[2] = *MEMORY[0x1E6966130];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  v14[3] = *MEMORY[0x1E69660D8];
  v15[2] = v11;
  v15[3] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  return CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, v12, a2);
}

__CVPixelBufferPool *VCMediaRecorderUtil_PixelBufferPoolMatchDimensions(__CVPixelBufferPool *result, int a2, int a3)
{
  if (result)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(result);
    v6 = [(__CFDictionary *)PixelBufferAttributes objectForKeyedSubscript:*MEMORY[0x1E6966208]];
    v7 = [(__CFDictionary *)PixelBufferAttributes objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
    if ([v6 intValue] == a2)
    {
      return ([v7 intValue] == a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *VCMediaRecorderUtil_FilePrefixForMediaType(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "media";
  }

  else
  {
    return off_1E85F8BD0[(a1 - 1)];
  }
}

CFStringRef VCMediaRecorderUtil_CopyDescriptionForMediaType(const __CFAllocator *a1, uint64_t a2)
{
  if ((a2 - 1) > 4)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = off_1E85F8BF8[(a2 - 1)];
  }

  return CFStringCreateWithFormat(a1, 0, @"%s(%hhu)", v4, a2, v2, v3);
}

CFStringRef VCMediaRecorderUtil_DescriptionForMediaType(uint64_t a1)
{
  v1 = VCMediaRecorderUtil_CopyDescriptionForMediaType(*MEMORY[0x1E695E480], a1);
  v2 = v1;
  if (v1)
  {
    CFAutorelease(v1);
  }

  return v2;
}

uint64_t VCMediaRecorderUtil_PrintMediaURL(uint64_t a1, int a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v4 = VCUtil_BinaryPrefix([VCFileUtil sizeOfFile:a1], &v46);
  v5 = [MEMORY[0x1E6988168] URLAssetWithURL:a1 options:0];
  v6 = v5;
  memset(&v45, 170, sizeof(v45));
  if (v5)
  {
    [v5 duration];
  }

  else
  {
    memset(&v45, 0, sizeof(v45));
  }

  time = v45;
  Seconds = CMTimeGetSeconds(&time);
  v8 = [v6 tracks];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a2 < 1 || ErrorLogLevelForModule < a2)
  {
    goto LABEL_24;
  }

  v10 = VRTraceErrorLogLevelToCSTR();
  if (a2 > 2)
  {
    if (a2 > 4)
    {
      if (a2 > 7)
      {
        if (a2 != 8)
        {
          goto LABEL_24;
        }

        v15 = *MEMORY[0x1E6986650];
        v17 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v42 = [v8 count];
            LODWORD(time.value) = 136316930;
            *(&time.value + 4) = v10;
            LOWORD(time.flags) = 2080;
            *(&time.flags + 2) = "VCMediaRecorderUtil_PrintMediaURL";
            HIWORD(time.epoch) = 1024;
            v53 = 142;
            v54 = 2112;
            v55 = a1;
            v56 = 2048;
            *v57 = v42;
            *&v57[8] = 2048;
            *&v57[10] = v46;
            v58 = 1024;
            v59 = v4;
            v60 = 2048;
            v61 = Seconds;
            _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d mediaURL=%@ trackCount=%lu fileSize=%.2f%cB fileLength=%f", &time, 0x4Au);
          }

          goto LABEL_24;
        }

        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v15 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }
      }

      v16 = [v8 count];
      LODWORD(time.value) = 136316930;
      *(&time.value + 4) = v10;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "VCMediaRecorderUtil_PrintMediaURL";
      HIWORD(time.epoch) = 1024;
      v53 = 142;
      v54 = 2112;
      v55 = a1;
      v56 = 2048;
      *v57 = v16;
      *&v57[8] = 2048;
      *&v57[10] = v46;
      v58 = 1024;
      v59 = v4;
      v60 = 2048;
      v61 = Seconds;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mediaURL=%@ trackCount=%lu fileSize=%.2f%cB fileLength=%f", &time, 0x4Au);
      goto LABEL_24;
    }

    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v13 = [v8 count];
      LODWORD(time.value) = 136316930;
      *(&time.value + 4) = v10;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "VCMediaRecorderUtil_PrintMediaURL";
      HIWORD(time.epoch) = 1024;
      v53 = 142;
      v54 = 2112;
      v55 = a1;
      v56 = 2048;
      *v57 = v13;
      *&v57[8] = 2048;
      *&v57[10] = v46;
      v58 = 1024;
      v59 = v4;
      v60 = 2048;
      v61 = Seconds;
      _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d mediaURL=%@ trackCount=%lu fileSize=%.2f%cB fileLength=%f", &time, 0x4Au);
    }
  }

  else
  {
    IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
    v12 = *MEMORY[0x1E6986650];
    if ((IsOSFaultDisabled & 1) == 0)
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        v14 = [v8 count];
        LODWORD(time.value) = 136316930;
        *(&time.value + 4) = v10;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "VCMediaRecorderUtil_PrintMediaURL";
        HIWORD(time.epoch) = 1024;
        v53 = 142;
        v54 = 2112;
        v55 = a1;
        v56 = 2048;
        *v57 = v14;
        *&v57[8] = 2048;
        *&v57[10] = v46;
        v58 = 1024;
        v59 = v4;
        v60 = 2048;
        v61 = Seconds;
        _os_log_fault_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_FAULT, " [%s] %s:%d mediaURL=%@ trackCount=%lu fileSize=%.2f%cB fileLength=%f", &time, 0x4Au);
      }

      goto LABEL_24;
    }

    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }
  }

LABEL_24:
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  result = [v8 countByEnumeratingWithState:&v48 objects:v47 count:16];
  if (!result)
  {
    return result;
  }

  v19 = result;
  v20 = MEMORY[0x1E6986650];
  v21 = *v49;
  do
  {
    v22 = 0;
    do
    {
      if (*v49 != v21)
      {
        objc_enumerationMutation(v8);
      }

      v23 = *(*(&v48 + 1) + 8 * v22);
      if (v23)
      {
        [*(*(&v48 + 1) + 8 * v22) timeRange];
        v24 = *(&v43 + 1);
        v25 = *(&v44 + 1);
        v26 = v44;
      }

      else
      {
        v25 = 0;
        v24 = 0;
        v43 = 0u;
        v44 = 0u;
        v26 = 0;
      }

      time.value = v24;
      *&time.timescale = v26;
      time.epoch = v25;
      v27 = CMTimeGetSeconds(&time);
      v28 = VRTraceGetErrorLogLevelForModule();
      if (a2 >= 1 && v28 >= a2)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        if (a2 > 2)
        {
          if (a2 <= 4)
          {
            v31 = *v20;
            if (!os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_52;
            }

            goto LABEL_40;
          }

          if (a2 <= 7)
          {
            v36 = *v20;
            if (!os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_52;
            }

LABEL_45:
            v37 = [v23 mediaType];
            v38 = [v23 trackID];
            LODWORD(time.value) = 136316418;
            *(&time.value + 4) = v29;
            LOWORD(time.flags) = 2080;
            *(&time.flags + 2) = "VCMediaRecorderUtil_PrintMediaURL";
            HIWORD(time.epoch) = 1024;
            v53 = 147;
            v54 = 2112;
            v55 = v37;
            v20 = MEMORY[0x1E6986650];
            v56 = 1024;
            *v57 = v38;
            *&v57[4] = 2048;
            *&v57[6] = v27;
            _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mediaType=%@ trackID=%d trackLength=%f", &time, 0x36u);
            goto LABEL_52;
          }

          if (a2 == 8)
          {
            v36 = *v20;
            v39 = *v20;
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }
            }

            else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v40 = [v23 mediaType];
              v41 = [v23 trackID];
              LODWORD(time.value) = 136316418;
              *(&time.value + 4) = v29;
              LOWORD(time.flags) = 2080;
              *(&time.flags + 2) = "VCMediaRecorderUtil_PrintMediaURL";
              HIWORD(time.epoch) = 1024;
              v53 = 147;
              v54 = 2112;
              v55 = v40;
              v20 = MEMORY[0x1E6986650];
              v56 = 1024;
              *v57 = v41;
              *&v57[4] = 2048;
              *&v57[6] = v27;
              _os_log_debug_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEBUG, " [%s] %s:%d mediaType=%@ trackID=%d trackLength=%f", &time, 0x36u);
            }
          }
        }

        else
        {
          v30 = VRTraceIsOSFaultDisabled();
          v31 = *v20;
          if (v30)
          {
            if (!os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_52;
            }

LABEL_40:
            v32 = [v23 mediaType];
            v33 = [v23 trackID];
            LODWORD(time.value) = 136316418;
            *(&time.value + 4) = v29;
            LOWORD(time.flags) = 2080;
            *(&time.flags + 2) = "VCMediaRecorderUtil_PrintMediaURL";
            HIWORD(time.epoch) = 1024;
            v53 = 147;
            v54 = 2112;
            v55 = v32;
            v20 = MEMORY[0x1E6986650];
            v56 = 1024;
            *v57 = v33;
            *&v57[4] = 2048;
            *&v57[6] = v27;
            _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d mediaType=%@ trackID=%d trackLength=%f", &time, 0x36u);
            goto LABEL_52;
          }

          if (os_log_type_enabled(*v20, OS_LOG_TYPE_FAULT))
          {
            v34 = [v23 mediaType];
            v35 = [v23 trackID];
            LODWORD(time.value) = 136316418;
            *(&time.value + 4) = v29;
            LOWORD(time.flags) = 2080;
            *(&time.flags + 2) = "VCMediaRecorderUtil_PrintMediaURL";
            HIWORD(time.epoch) = 1024;
            v53 = 147;
            v54 = 2112;
            v55 = v34;
            v20 = MEMORY[0x1E6986650];
            v56 = 1024;
            *v57 = v35;
            *&v57[4] = 2048;
            *&v57[6] = v27;
            _os_log_fault_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_FAULT, " [%s] %s:%d mediaType=%@ trackID=%d trackLength=%f", &time, 0x36u);
          }
        }
      }

LABEL_52:
      ++v22;
    }

    while (v19 != v22);
    result = [v8 countByEnumeratingWithState:&v48 objects:v47 count:16];
    v19 = result;
  }

  while (result);
  return result;
}

void VCVideoStreamReceiveGroup_UpdateSourcePlayoutTime(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if ([a1 isVideoExpected] && (*(a1 + 529) & 1) == 0)
      {
        v4 = *a2;
        v5 = a2[1];
        ++*(a1 + 608);
        v8[0] = v4;
        v8[1] = v5;
        if (*(a1 + 600) == 1)
        {
          v6 = *(a1 + 328);
          v7 = *a2;
          CMTimeConvertScale(v8, &v7, v6, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        }

        [objc_msgSend(*(a1 + 176) "firstObject")];
      }
    }

    else
    {
      VCVideoStreamReceiveGroup_UpdateSourcePlayoutTime_cold_1(a1);
    }
  }

  else
  {
    VCVideoStreamReceiveGroup_UpdateSourcePlayoutTime_cold_2();
  }
}

void _VCPacketBundler_CleanupCDRXInfo(void ***a1)
{
  if (a1 && (v2 = *a1) != 0)
  {
    if (v2[10])
    {
      free(v2[10]);
      (*a1)[10] = 0;
      v2 = *a1;
    }

    free(v2);
    *a1 = 0;
  }

  else
  {
    _VCPacketBundler_CleanupCDRXInfo_cold_1();
  }
}

uint64_t VCPacketBundler_BundleAudio(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    VCPacketBundler_BundleAudio_cold_4(a1, a2, buf);
    return buf[0];
  }

  v4 = (a1 + 129);
  if (*(a1 + 129) == 1)
  {
    VCPacketBundler_BundleAudio_cold_3(a1, (a1 + 129), buf);
    return buf[0];
  }

  if (*(a1 + 108) && *(a2 + 3) != *(a1 + 92))
  {
    VCPacketBundler_BundleAudio_cold_1(buf);
    return buf[0];
  }

  v5 = *(a1 + 124);
  switch(v5)
  {
    case 1:
      result = [a1 bundleAudioLegacy:*a2 numInputBytes:*(a2 + 2) payloadType:*(a2 + 3) timestamp:*(a2 + 4)];
      if (!result)
      {
        return result;
      }

      goto LABEL_36;
    case 3:
      v7 = a1 + 144;
      v6 = *(a1 + 144);
      if (v6 && *a2)
      {
        v8 = CMSimpleQueueDequeue(*(v6 + 80));
        if (v8)
        {
          v9 = MEMORY[0x1E6986650];
          do
          {
            if (*v8 == 1)
            {
              if (v8[1] == 40)
              {
                v10 = 2;
              }

              else
              {
                v10 = 1;
              }
            }

            else
            {
              v10 = 1;
            }

            *(a1 + 88) = v10;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v11 = VRTraceErrorLogLevelToCSTR();
              v12 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v13 = *(a1 + 88);
                *buf = 136315906;
                v34 = v11;
                v35 = 2080;
                v36 = "_VCPacketBundler_UpdatePacketsPerBundle";
                v37 = 1024;
                v38 = 291;
                v39 = 1024;
                v40 = v13;
                _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d After processing CDRX event, packets per bundle=%d", buf, 0x22u);
              }
            }

            v8 = CMSimpleQueueDequeue(*(*v7 + 80));
          }

          while (v8);
        }

        v14 = *(a1 + 100);
        v15 = *(a2 + 2);
        if ((v15 + v14) <= *(a1 + 16))
        {
          v16 = (*(a1 + 8) + v14);
          memcpy(v16, *a2, v15);
          v17 = v16 + *(a2 + 2);
          v18 = *(a1 + 144);
          v19 = v18 + 20 * *(a1 + 108);
          v20 = *(a1 + 8);
          *(v19 + 8) = v17 - (v20 + *(a1 + 100));
          *(a1 + 100) = v17 - v20;
          *v19 = *(a2 + 12);
          *(v19 + 12) = *(a2 + 6);
          v21 = *(a2 + 20);
          if (v21 == 1)
          {
            v22 = *(v18 + 40) ^ 1;
          }

          else
          {
            v22 = 0;
          }

          *(v19 + 16) = v22 & 1;
          *(v18 + 40) = v21;
          v24 = *(a1 + 108) + 1;
          *(a1 + 108) = v24;
          *(a1 + 92) = *(a2 + 3);
          if (v24 >= *(a1 + 88))
          {
            v25 = 1;
          }

          else
          {
            v25 = *(a2 + 29);
          }

          *v4 = v25 & 1;
          goto LABEL_36;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *MEMORY[0x1E6986650];
          result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 2);
          v30 = *(a1 + 16);
          v31 = *(a1 + 100);
          v32 = *(a1 + 108);
          *buf = 136316674;
          v34 = v27;
          v35 = 2080;
          v36 = "_VCPacketBundler_BundleAudioCDRX";
          v37 = 1024;
          v38 = 301;
          v39 = 1024;
          v40 = v29;
          v41 = 1024;
          v42 = v30;
          v43 = 1024;
          v44 = v31;
          v45 = 1024;
          v46 = v32;
          _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d Bundling encountered an error: inputBytes=%u bufferSize=%u encodedBufferSize=%u bundledCount=%u", buf, 0x34u);
        }

        return 0;
      }

      VCPacketBundler_BundleAudio_cold_2(a1 + 144, a2, buf);
      return buf[0];
    case 2:
      if ([a1 bundleAudioRFC3640:*a2 numInputBytes:*(a2 + 2) payloadType:*(a2 + 3) timestamp:*(a2 + 4)])
      {
        goto LABEL_36;
      }

      return 0;
  }

  if (([a1 _copyInputBytes:*a2 numInputBytes:*(a2 + 2) payloadType:*(a2 + 3) timestamp:*(a2 + 4)] & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  if (*(a2 + 20))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(a1 + 112);
  }

  *(a1 + 112) = v26 & 1;
  VCAudioPacketBundler_UpdatePriority(a1, *(a2 + 21));
  *(a1 + 156) = *(a2 + 6);
  return 1;
}

void VCAudioPacketBundler_UpdatePriority(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v2 = *(a1 + 136);
    if (v2 <= a2)
    {
      LOBYTE(v2) = a2;
    }

    *(a1 + 136) = v2;
  }

  else
  {
    VCAudioPacketBundler_UpdatePriority_cold_1();
  }
}

uint64_t VCPacketBundler_ExtractBundledPackets(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v5)
  {
    VCPacketBundler_ExtractBundledPackets_cold_1(a1, a3);
    return v6;
  }

  v8 = *(a1 + 124);
  if (v8 == 3)
  {
    v10 = *(a1 + 144);
    if (v10)
    {
      if (a2)
      {
        v10 = *(a1 + 8) + *(v10 + 20 * (a2 - 1) + 8);
      }

      else
      {
        v10 = *(a1 + 8);
      }
    }

    *a3 = v10;
  }

  else
  {
    if (v8 == 2)
    {
      v9 = [a1 encodedBufferForRFC3640];
      v8 = *(a1 + 124);
    }

    else
    {
      v9 = *(a1 + 8);
    }

    *a3 = v9;
    if (v8 != 3)
    {
      if (v8 == 2)
      {
        v11 = [a1 encodedBufferSizeForRFC3640];
      }

      else
      {
        v11 = *(a1 + 100);
      }

      goto LABEL_24;
    }
  }

  v12 = *(a1 + 144);
  if (v12)
  {
    v11 = *(v12 + 20 * a2 + 8);
  }

  else
  {
    v11 = 0;
  }

LABEL_24:
  *(a3 + 8) = v11;
  if (*(a1 + 124) == 3)
  {
    v13 = *(a1 + 144);
    if (!v13)
    {
      goto LABEL_29;
    }

    v13 += 5 * a2 + 1;
  }

  else
  {
    v13 = (a1 + 96);
  }

  LODWORD(v13) = *v13;
LABEL_29:
  *(a3 + 16) = v13;
  if (*(a1 + 124) == 3)
  {
    v14 = *(a1 + 144);
    if (v14)
    {
      LOBYTE(v14) = *(v14 + 20 * a2 + 16);
    }
  }

  else if (*(a1 + 113))
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    LOBYTE(v14) = *(a1 + 112);
  }

  *(a3 + 28) = v14 & 1;
  *(a3 + 12) = *(a1 + 92);
  if (*(a1 + 124) != 3)
  {
    v15 = (a1 + 156);
    goto LABEL_39;
  }

  v15 = *(a1 + 144);
  if (v15)
  {
    v15 += 5 * a2 + 3;
LABEL_39:
    LODWORD(v15) = *v15;
  }

  *(a3 + 24) = v15;
  *(a3 + 21) = *(a1 + 136);
  return v6;
}

void VCPacketBundler_StoreAndEnqueueCdrxInfo(uint64_t a1, int a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1 && (v4 = *(a1 + 144)) != 0)
  {
    v7 = v4 + 4 * *(v4 + 74);
    *(v7 + 42) = a2;
    *(v7 + 44) = a3;
    v8 = MEMORY[0x1E6986650];
    while (1)
    {
      v9 = *(v4 + 80);
        ;
      }

      v10 = *(v4 + 74);
      v11 = CMSimpleQueueEnqueue(v9, (v4 + 4 * v10 + 42));
      if (v11 != -12773)
      {
        break;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v19 = v12;
          v20 = 2080;
          v21 = "VCPacketBundler_StoreAndEnqueueCdrxInfo";
          v22 = 1024;
          v23 = 546;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cdrx event queue is Full. Reset Queue and enqueue", buf, 0x1Cu);
        }
      }

      CMSimpleQueueDequeue(*(*(a1 + 144) + 80));
      v4 = *(a1 + 144);
    }

    if (v11)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          VCPacketBundler_StoreAndEnqueueCdrxInfo_cold_1(v17);
        }
      }
    }

    else
    {
      *(*(a1 + 144) + 74) = (v10 + 1) & 7;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          Count = CMSimpleQueueGetCount(*(*(a1 + 144) + 80));
          *buf = 136316418;
          v19 = v14;
          v20 = 2080;
          v21 = "VCPacketBundler_StoreAndEnqueueCdrxInfo";
          v22 = 1024;
          v23 = 543;
          v24 = 1024;
          v25 = a2;
          v26 = 1024;
          v27 = a3;
          v28 = 1024;
          v29 = Count;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cdrx event enqueued: cdrx state=%d, cdrx cycle=%d, enqueued event count=%d", buf, 0x2Eu);
        }
      }
    }
  }

  else
  {
    VCPacketBundler_StoreAndEnqueueCdrxInfo_cold_2();
  }
}

uint64_t _AVCAudioStream_UpdateFrequencyLevel(void *a1, const char *a2, int a3)
{
  v4 = *(a1 + 6);
  if (a3)
  {
    return [a1 vcMediaStream:v4 updateInputFrequencyLevel:a2];
  }

  else
  {
    return [a1 vcMediaStream:v4 updateOutputFrequencyLevel:a2];
  }
}

void OUTLINED_FUNCTION_15_13(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint8_t buf, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  LODWORD(a13) = a1;
  WORD2(a13) = v16;
  *(&a13 + 6) = v15;
  HIWORD(a13) = v16;
  a14 = v19;

  _os_log_impl(v17, v20, OS_LOG_TYPE_DEFAULT, v18, &buf, 0x30u);
}

void OUTLINED_FUNCTION_23_6(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_impl(a1, v17, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x36u);
}

void VCVideoCaptureServer_OnCaptureVideoFrame(uint64_t a1, CMSampleBufferRef sbuf, CMTime *a3, uint64_t a4, uint64_t a5, int a6)
{
  v75 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
    Width = CVPixelBufferGetWidth(ImageBuffer);
    Height = CVPixelBufferGetHeight(ImageBuffer);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v14 = MEMORY[0x1E6986640];
    if (ErrorLogLevelForModule >= 8)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      v17 = *MEMORY[0x1E6986650];
      if (*v14 == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          time = *a3;
          Seconds = CMTimeGetSeconds(&time);
          LODWORD(time.value) = 136316418;
          *(&time.value + 4) = v15;
          LOWORD(time.flags) = 2080;
          *(&time.flags + 2) = "VCVideoCaptureServer_OnCaptureVideoFrame";
          HIWORD(time.epoch) = 1024;
          LODWORD(v71) = 1709;
          WORD2(v71) = 1024;
          *(&v71 + 6) = Width;
          WORD5(v71) = 1024;
          HIDWORD(v71) = Height;
          *v72 = 2048;
          *&v72[2] = Seconds;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d width=%d, height=%d, frameTime=%f", &time, 0x32u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        time = *a3;
        v63 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 136316418;
        *(&time.value + 4) = v15;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "VCVideoCaptureServer_OnCaptureVideoFrame";
        HIWORD(time.epoch) = 1024;
        LODWORD(v71) = 1709;
        WORD2(v71) = 1024;
        *(&v71 + 6) = Width;
        WORD5(v71) = 1024;
        HIDWORD(v71) = Height;
        *v72 = 2048;
        *&v72[2] = v63;
        _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, "VCVideoCaptureServer [%s] %s:%d width=%d, height=%d, frameTime=%f", &time, 0x32u);
      }
    }

    if ([*(a1 + 448) camera] != a5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(a1 + 448) camera];
          LODWORD(time.value) = 136316162;
          *(&time.value + 4) = v19;
          LOWORD(time.flags) = 2080;
          *(&time.flags + 2) = "VCVideoCaptureServer_OnCaptureVideoFrame";
          HIWORD(time.epoch) = 1024;
          LODWORD(v71) = 1712;
          WORD2(v71) = 1024;
          *(&v71 + 6) = v21;
          WORD5(v71) = 1024;
          HIDWORD(v71) = a5;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d camera changing from %d -->> %d", &time, 0x28u);
        }
      }

      *(a1 + 96) = 0;
      [*(a1 + 448) setCamera:a5];
      [+[VCAudioSession sharedVoiceChatInstance](VCAudioSession "sharedVoiceChatInstance")];
    }

    [*(a1 + 448) setCameraSwitching:a4];
    if (*(a1 + 460) != 1)
    {
      goto LABEL_29;
    }

    v22 = CVPixelBufferGetWidth(ImageBuffer);
    v23 = CVPixelBufferGetHeight(ImageBuffer);
    v24 = *(a1 + 721);
    [*(a1 + 448) ratio];
    v26 = v25;
    v28 = v27;
    [*(a1 + 448) ratio];
    if (v24)
    {
      v29 = v30;
      v31 = v26;
    }

    else
    {
      v31 = v28;
    }

    v32 = v31;
    v33 = v29;
    v34 = VideoUtil_IsFrameAFBPerFrameAttachment(ImageBuffer);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(time.value) = 136316930;
        *(&time.value + 4) = v35;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "_VCVideoCaptureServer_UpdateLocalVideoAttributesOrientation";
        HIWORD(time.epoch) = 1024;
        LODWORD(v71) = 1675;
        WORD2(v71) = 1024;
        *(&v71 + 6) = v32;
        WORD5(v71) = 1024;
        HIDWORD(v71) = v33;
        *v72 = 1024;
        *&v72[2] = v22;
        *&v72[6] = 1024;
        *&v72[8] = v23;
        *&v72[12] = 1024;
        *&v72[14] = v34;
        _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d _pendingOrientationChange YES, check lastFrame %dx%d, newFrame %dx%d isFrameFullBleed %d", &time, 0x3Au);
      }
    }

    v37 = v22 == v32 && v23 == v33;
    v38 = v37;
    if ((v38 & v34 & 1) == 0 && (v39 = [*(a1 + 448) copy], objc_msgSend(v39, "setOrientation:", *(a1 + 464)), v40 = *(a1 + 232), time.value = MEMORY[0x1E69E9820], *&time.timescale = 3221225472, time.epoch = ___VCVideoCaptureServer_UpdateLocalVideoAttributesOrientation_block_invoke, *&v71 = &unk_1E85F3778, *(&v71 + 1) = a1, dispatch_async(v40, &time), v39))
    {
      v41 = VCCameraStatusBitsFromVideoAttributes(v39);
    }

    else
    {
LABEL_29:
      v41 = VCCameraStatusBitsFromVideoAttributes(*(a1 + 448));
    }

    if (a6)
    {
      v42 = 4;
    }

    else
    {
      v42 = 0;
    }

    pthread_mutex_lock((a1 + 480));
    if (*(a1 + 721))
    {
      RotatedSampleBuffer = FigSampleBufferRetain();
    }

    else
    {
      if (a5)
      {
        v44 = 0;
      }

      else
      {
        v44 = a6 ^ 1;
      }

      v45 = *(a1 + 472);
      time = *a3;
      RotatedSampleBuffer = VCImageRotationConverter_CreateRotatedSampleBuffer(v45, sbufb, &time.value, v44);
    }

    v46 = RotatedSampleBuffer;
    v47 = v41 & 0xFB;
    v48 = CMSampleBufferGetImageBuffer(RotatedSampleBuffer);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x1E6986650];
      v51 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          CVOFromPixelBuffer = VCCVOExtensionUtils_GetCVOFromPixelBuffer(v48);
          LODWORD(time.value) = 136315906;
          *(&time.value + 4) = v49;
          LOWORD(time.flags) = 2080;
          *(&time.flags + 2) = "VCVideoCaptureServer_OnCaptureVideoFrame";
          HIWORD(time.epoch) = 1024;
          LODWORD(v71) = 1747;
          WORD2(v71) = 1024;
          *(&v71 + 6) = CVOFromPixelBuffer;
          _os_log_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d CVO=%d", &time, 0x22u);
        }
      }

      else if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        VCVideoCaptureServer_OnCaptureVideoFrame_cold_1(v49, v48, v50);
      }
    }

    v53 = v47 | v42;
    if (v46)
    {
      time = *a3;
      _classVTable_0(a1, v46, &time, a5, v47 | v42);
      CFRelease(v46);
    }

    pthread_mutex_unlock((a1 + 480));
    if (*(a1 + 429) == 1)
    {
      v67 = *&a3->value;
      epoch = a3->epoch;
      if (a6)
      {
        if ((v41 & 3) == 3)
        {
          v54 = 2;
        }

        else
        {
          v54 = v41 & 3;
        }

        if ((v41 & 3) == 2)
        {
          v55 = 3;
        }

        else
        {
          v55 = v54;
        }

        v53 = v55 | v53 & 0xFC;
      }

      ++*(a1 + 44);
      v56 = CMSampleBufferGetImageBuffer(sbufb);
      v57 = VCCVOExtensionUtils_GetCVOFromPixelBuffer(v56);
      v69 = v57;
      if (a6)
      {
        v58 = VCCVOExtensionUtils_CVOOrientation(v57);
        if (v58 == 2)
        {
          v59 = 0;
        }

        else
        {
          v59 = v58;
        }

        if (v58)
        {
          v60 = v59;
        }

        else
        {
          v60 = 2;
        }

        VCCVOExtensionUtils_SetCVOOrientation(&v69, v60);
        VCCVOExtensionUtils_SetCVOFlip(&v69, 1);
        VCCVOExtensionUtils_AttachCVOToPixelBuffer(v56, v69);
      }

      v61 = FigSampleBufferRetain();
      v62 = *(a1 + 240);
      time.value = MEMORY[0x1E69E9820];
      *&time.timescale = 3221225472;
      time.epoch = ___VCVideoCaptureServer_ProcessCaptureSampleBuffer_block_invoke;
      *&v71 = &unk_1E85F8E28;
      *(&v71 + 1) = a1;
      *v72 = v61;
      v74 = v53;
      *&v72[8] = v67;
      v73 = epoch;
      dispatch_async(v62, &time);
    }
  }

  else
  {
    VCVideoCaptureServer_OnCaptureVideoFrame_cold_2();
  }
}

void VCVideoCaptureServer_ApplyPressureLevelChanges(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v41 = *(a1 + 416);
    v42 = *(a1 + 420);
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v39 = *(a1 + 404);
    v40 = *(a1 + 408);
    if (v40 == v39)
    {
      v8 = *(a1 + 16);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 404);
          v7 = *(a1 + 408);
          *buf = 136316162;
          v54 = v4;
          v55 = 2080;
          v56 = "VCVideoCaptureServer_ApplyPressureLevelChanges";
          v57 = 1024;
          v58 = 1996;
          v59 = 1024;
          v60 = v6;
          v61 = 1024;
          v62 = v7;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Notifying clients change in thermal level %d -> %d", buf, 0x28u);
        }
      }

      v8 = [a1 getFrameRateForThermalLevel:*(a1 + 408) peakPowerPressure:*(a1 + 420)];
      if (*(a1 + 312))
      {
        LODWORD(v3) = *(a1 + 20);
        v9 = [a1 getScreenFrameRateForThermalLevel:*(a1 + 408)];
        if (v3 >= v9)
        {
          v3 = v9;
        }

        else
        {
          v3 = v3;
        }
      }

      v10 = *(a1 + 232);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __VCVideoCaptureServer_ApplyPressureLevelChanges_block_invoke;
      block[3] = &unk_1E85F3778;
      block[4] = a1;
      dispatch_async(v10, block);
    }

    if (v42 != v41)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 416);
          v14 = *(a1 + 420);
          *buf = 136316162;
          v54 = v11;
          v55 = 2080;
          v56 = "VCVideoCaptureServer_ApplyPressureLevelChanges";
          v57 = 1024;
          v58 = 2017;
          v59 = 1024;
          v60 = v13;
          v61 = 1024;
          v62 = v14;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Change in peak power level %d -> %d", buf, 0x28u);
        }
      }

      v8 = [a1 getFrameRateForThermalLevel:*(a1 + 408) peakPowerPressure:*(a1 + 420)];
      v15 = *(a1 + 232);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __VCVideoCaptureServer_ApplyPressureLevelChanges_block_invoke_252;
      v45[3] = &unk_1E85F3778;
      v45[4] = a1;
      dispatch_async(v15, v45);
    }

    if (v2 != v8)
    {
      [a1 setCaptureFrameRate:v8];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          v54 = v16;
          v55 = 2080;
          v56 = "VCVideoCaptureServer_ApplyPressureLevelChanges";
          v57 = 1024;
          v58 = 2026;
          v59 = 1024;
          v60 = v2;
          v61 = 1024;
          v62 = v8;
          v63 = 1024;
          v64 = v40 != v39;
          v65 = 1024;
          v66 = v42 != v41;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Throttling framerate:(%d -> %d) because of changes in levels thermalLevelDidChange:%d powerLevelDidChange:%d", buf, 0x34u);
        }
      }

      [a1 notifyFrameRateBeingThrottledForClients:*(a1 + 104) newFrameRate:v8 thermalLevelDidChange:v40 != v39 powerLevelDidChange:v42 != v41];
    }

    if (*(a1 + 312) && *(a1 + 24) != v3)
    {
      [a1 setScreenCaptureFrameRate:v3];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 24);
          *buf = 136316674;
          v54 = v18;
          v55 = 2080;
          v56 = "VCVideoCaptureServer_ApplyPressureLevelChanges";
          v57 = 1024;
          v58 = 2032;
          v59 = 1024;
          v60 = v20;
          v61 = 1024;
          v62 = v3;
          v63 = 1024;
          v64 = v40 != v39;
          v65 = 1024;
          v66 = v42 != v41;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Throttling screen framerate (old=%d -> new=%d) because of changes in levels thermalLevelDidChange=%d powerLevelDidChange=%d", buf, 0x34u);
        }
      }

      [a1 notifyFrameRateBeingThrottledForClients:*(a1 + 112) newFrameRate:v3 thermalLevelDidChange:v40 != v39 powerLevelDidChange:v42 != v41];
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = *(a1 + 568);
    v21 = [obj countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (v21)
    {
      v23 = v21;
      v24 = *v50;
      v25 = @"FrameRate";
      v26 = @"CurrentFrameRate";
      *&v22 = 136316674;
      v38 = v22;
      do
      {
        v27 = 0;
        v43 = v23;
        do
        {
          if (*v50 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v49 + 1) + 8 * v27);
          v29 = [*(a1 + 576) objectForKeyedSubscript:{v28, v38}];
          v30 = [objc_msgSend(v29 objectForKeyedSubscript:{v26), "intValue"}];
          v31 = [a1 screenFrameRateForThermalLevel:*(a1 + 408) configuredFrameRate:objc_msgSend(objc_msgSend(v29 captureSourceID:{"objectForKeyedSubscript:", v25), "intValue"), v28}];
          if (v31 != v30)
          {
            v32 = v31;
            v33 = v25;
            v34 = v24;
            v35 = v26;
            [a1 setScreenCaptureFrameRate:v31 captureSourceID:v28];
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v36 = VRTraceErrorLogLevelToCSTR();
              v37 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = v38;
                v54 = v36;
                v55 = 2080;
                v56 = "VCVideoCaptureServer_ApplyPressureLevelChanges";
                v57 = 1024;
                v58 = 2043;
                v59 = 1024;
                v60 = v30;
                v61 = 1024;
                v62 = v32;
                v63 = 1024;
                v64 = v40 != v39;
                v65 = 1024;
                v66 = v42 != v41;
                _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Throttling screen framerate (old=%d -> new=%d) because of changes in levels thermalLevelDidChange=%d powerLevelDidChange=%d", buf, 0x34u);
              }
            }

            v47 = [objc_msgSend(*(a1 + 576) objectForKeyedSubscript:{v28), "objectForKeyedSubscript:", @"Client"}];
            [a1 notifyFrameRateBeingThrottledForClients:objc_msgSend(MEMORY[0x1E695DEC8] newFrameRate:"arrayWithObjects:count:" thermalLevelDidChange:&v47 powerLevelDidChange:{1), v32, v40 != v39, v42 != v41}];
            v26 = v35;
            v24 = v34;
            v25 = v33;
            v23 = v43;
          }

          ++v27;
        }

        while (v23 != v27);
        v23 = [obj countByEnumeratingWithState:&v49 objects:v48 count:16];
      }

      while (v23);
    }
  }

  else
  {
    VCVideoCaptureServer_ApplyPressureLevelChanges_cold_1();
  }
}

void sub_1DB9BA75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB9BB7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB9BF360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB9BF730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB9C06A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCVideoCaptureServer_CopyLocalVideoAttributes(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__32;
  v9 = __Block_byref_object_dispose__32;
  v10 = 0;
  if (a1)
  {
    v1 = *(a1 + 232);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCVideoCaptureServer_CopyLocalVideoAttributes_block_invoke;
    block[3] = &unk_1E85F40B8;
    block[4] = a1;
    block[5] = &v5;
    dispatch_sync(v1, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoCaptureServer_CopyLocalVideoAttributes_cold_1();
    }
  }

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t VCVideoCaptureServer_IsCaptureFullBleedPreferred(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 232);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __VCVideoCaptureServer_IsCaptureFullBleedPreferred_block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = a1;
  block[5] = &v5;
  dispatch_sync(v1, block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void VCVideoCaptureServer_UpdateRemoteScreenAttributes(int a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *(+[VCVideoCaptureServer VCVideoCaptureServerSingleton]+ 232);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __VCVideoCaptureServer_UpdateRemoteScreenAttributes_block_invoke;
  v5[3] = &__block_descriptor_37_e5_v8__0l;
  v6 = a1;
  v7 = a2;
  dispatch_async(v4, v5);
}

void _VCVideoCaptureServer_ProcessPreviewSampleBuffer(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3, int a4, unsigned int a5)
{
  v99 = *MEMORY[0x1E69E9840];
  ++*(a1 + 40);
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (*(a1 + 100) >= 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 100);
        *buf = 136315906;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "_VCVideoCaptureServer_ProcessPreviewSampleBuffer";
        *&buf[22] = 1024;
        *&buf[24] = 1825;
        *&buf[28] = 1024;
        *&buf[30] = v11;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d snapshotRequestCount=%d", buf, 0x22u);
      }
    }

    CVPixelBufferRetain(ImageBuffer);
    v12 = *(a1 + 288);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___VCVideoCaptureServer_SendSnapshotFromFrame_block_invoke;
    *&buf[24] = &unk_1E85F40E0;
    *&buf[32] = a1;
    *&buf[40] = ImageBuffer;
    dispatch_async(v12, buf);
    atomic_fetch_add((a1 + 100), 0xFFFFFFFF);
  }

  v13 = CVPixelBufferRetain(ImageBuffer);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  [*(a1 + 448) ratio];
  if (v16 == 768.0)
  {
    [*(a1 + 448) ratio];
    if (v17 == 1024.0 && Width == 720 && Height == 1280)
    {
      v18 = (a1 + 352);
LABEL_23:
      *v18 = 0;
LABEL_24:
      v33 = *(a1 + 336);
      if (v33)
      {
        VTPixelTransferSessionInvalidate(v33);
        v34 = *(a1 + 336);
        if (v34)
        {
          CFRelease(v34);
          *(a1 + 336) = 0;
        }
      }

      v35 = *(a1 + 344);
      if (v35)
      {
        CVPixelBufferPoolRelease(v35);
        *(a1 + 344) = 0;
      }

      goto LABEL_29;
    }
  }

  v18 = (a1 + 352);
  if (Width < 720 || Height < 1024)
  {
    goto LABEL_23;
  }

  if ((*v18 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!*(a1 + 336))
  {
    VTPixelTransferSessionCreate(0, (a1 + 336));
    VTSessionSetProperty(*(a1 + 336), *MEMORY[0x1E6983E30], *MEMORY[0x1E69840F8]);
  }

  v19 = MEMORY[0x1E695E480];
  if (!*(a1 + 344))
  {
    v20 = objc_alloc(MEMORY[0x1E695DF20]);
    v21 = [v20 initWithObjectsAndKeys:{MEMORY[0x1E695E118], *MEMORY[0x1E696CF68], @"AVConference:CaptureServer", *MEMORY[0x1E696CF98], 0}];
    v22 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:576];
    v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1024];
    v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(a1 + 456)];
    v25 = objc_alloc(MEMORY[0x1E695DF20]);
    v26 = a5;
    v27 = [v25 initWithObjectsAndKeys:{v22, *MEMORY[0x1E6966208], v23, *MEMORY[0x1E69660B8], v24, *MEMORY[0x1E6966130], v21, *MEMORY[0x1E69660D8], 0}];
    CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, v27, (a1 + 344));

    a5 = v26;
    v19 = MEMORY[0x1E695E480];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v30 = CVPixelBufferGetWidth(ImageBuffer);
      v31 = CVPixelBufferGetHeight(ImageBuffer);
      *buf = 136316162;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = "_VCVideoCaptureServer_CreateResizedFrame";
      *&buf[22] = 1024;
      *&buf[24] = 2277;
      *&buf[28] = 1024;
      *&buf[30] = v30;
      *&buf[34] = 1024;
      *&buf[36] = v31;
      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Frame Transform resize, preview frame from %dx%d to 576x1024", buf, 0x28u);
    }
  }

  *buf = 0;
  CVPixelBufferPoolCreatePixelBuffer(*v19, *(a1 + 344), buf);
  if (*buf)
  {
    VTPixelTransferSessionTransferImage(*(a1 + 336), ImageBuffer, *buf);
    CVOFromPixelBuffer = VCCVOExtensionUtils_GetCVOFromPixelBuffer(ImageBuffer);
    VCCVOExtensionUtils_AttachCVOToPixelBuffer(ImageBuffer, CVOFromPixelBuffer);
    CVPixelBufferRelease(ImageBuffer);
    v13 = *buf;
  }

LABEL_29:
  v36 = 392;
  if (a4)
  {
    v37 = "back";
  }

  else
  {
    v36 = 384;
    v37 = "front";
  }

  v38 = *(a1 + v36);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v38)
  {
    _VCVideoCaptureServer_ProcessPreviewSampleBuffer_cold_3(ErrorLogLevelForModule);
    goto LABEL_92;
  }

  if (ErrorLogLevelForModule >= 8)
  {
    v40 = VRTraceErrorLogLevelToCSTR();
    v41 = *MEMORY[0x1E6986650];
    v42 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v40;
        *&buf[12] = 2080;
        *&buf[14] = "_VCVideoCaptureServer_EnqueueFrameToQueueFront";
        *&buf[22] = 1024;
        *&buf[24] = 1607;
        *&buf[28] = 2080;
        *&buf[30] = v37;
        *&buf[38] = 2048;
        *&buf[40] = v38;
        _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d FigImageQueueEnqueueImage [local] %sCameraQueue, imgQ %p", buf, 0x30u);
      }
    }

    else if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      *&buf[4] = v40;
      *&buf[12] = 2080;
      *&buf[14] = "_VCVideoCaptureServer_EnqueueFrameToQueueFront";
      *&buf[22] = 1024;
      *&buf[24] = 1607;
      *&buf[28] = 2080;
      *&buf[30] = v37;
      *&buf[38] = 2048;
      *&buf[40] = v38;
      _os_log_debug_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEBUG, "VCVideoCaptureServer [%s] %s:%d FigImageQueueEnqueueImage [local] %sCameraQueue, imgQ %p", buf, 0x30u);
    }
  }

  memset(&v95, 170, sizeof(v95));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v95, HostTimeClock);
  *buf = v95;
  v44 = CMTimeGetSeconds(buf) - *(a1 + 632);
  v45 = floor(1.0 / *(a1 + 16) / 0.2) * 0.2 + 0.2;
  if (v44 > v45 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v46 = VRTraceErrorLogLevelToCSTR();
    v47 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v46;
      *&buf[12] = 2080;
      *&buf[14] = "_VCVideoCaptureServer_EnqueueFrameToQueueFront";
      *&buf[22] = 1024;
      *&buf[24] = 1618;
      *&buf[28] = 2048;
      *&buf[30] = v45;
      *&buf[38] = 2048;
      *&buf[40] = v44;
      _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Unexpected capture frame duration expectedFrameDurationWithThreshold=%f and currentFrameDuration=%f", buf, 0x30u);
    }
  }

  if (*(a1 + 722) != ((a5 >> 2) & 1))
  {
    VCImageQueue_EffectsEnabledForPreview(v38, (a5 & 4) != 0);
    *(a1 + 722) = (a5 & 4) >> 2;
  }

  *buf = v95;
  v48 = VCImageQueue_EnqueueFrame(v38, v13, buf);
  v49 = micro();
  if (v48)
  {
    v50 = 0;
    *(a1 + 376) = 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v51 = VRTraceErrorLogLevelToCSTR();
      v52 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v51;
        *&buf[12] = 2080;
        *&buf[14] = "_VCVideoCaptureServer_EnqueueFrameToQueueFront";
        *&buf[22] = 1024;
        *&buf[24] = 1631;
        *&buf[28] = 2080;
        *&buf[30] = v37;
        *&buf[38] = 2048;
        *&buf[40] = v38;
        _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d FigImageQueueEnqueueImage skipped [local -%s], imgQ %p!", buf, 0x30u);
      }
    }

    v53 = *(a1 + 376);
    if (v53 == 0.0)
    {
      *(a1 + 376) = v49;
      v53 = v49;
    }

    v50 = v49 - v53 >= 10.0;
  }

  if (*(a1 + 704) == 1)
  {
    *buf = v95;
    *(a1 + 664) = CMTimeGetSeconds(buf);
    *(a1 + 696) = v49;
    v54 = *(a1 + 640);
    v55 = *(a1 + 712);
    v56 = *(a1 + 632);
    *&v57 = 0xAAAAAAAAAAAAAAAALL;
    *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v93 = v57;
    v94 = v57;
    v91 = v57;
    v92 = v57;
    *&buf[32] = v57;
    v90 = v57;
    *buf = v57;
    *&buf[16] = v57;
    Timestamp = VRLogfileGetTimestamp(buf, 0x80u);
    fprintf(v54, "%s\t%d\t%d\t%d\t%f\t%f\t%f\t%f\t%f\t%f\t%f\n", Timestamp, *(a1 + 648), *(a1 + 652), *(a1 + 656), *(a1 + 672), *(a1 + 680), *(a1 + 688), *(a1 + 664), *(a1 + 664) - v56, *(a1 + 696), *(a1 + 696) - v55);
    *(a1 + 712) = *(a1 + 696);
  }

  *buf = v95;
  *(a1 + 632) = CMTimeGetSeconds(buf);
  if (!v50)
  {
    if (!v48)
    {
      goto LABEL_92;
    }

    goto LABEL_62;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCVideoCaptureServer_ProcessPreviewSampleBuffer_cold_1();
    }
  }

  [a1 stopPreview];
  if (v48)
  {
LABEL_62:
    if ((*(a1 + 96) & 1) == 0)
    {
      v59 = [*(a1 + 88) deviceNameForToken:*(a1 + 432)];
      v60 = *(a1 + 360);
      v61 = VRTraceGetErrorLogLevelForModule();
      if (v60)
      {
        if (v61 >= 7)
        {
          v62 = VRTraceErrorLogLevelToCSTR();
          v63 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v62;
            *&buf[12] = 2080;
            *&buf[14] = "_VCVideoCaptureServer_DidReceiveFirstPreviewFrame";
            *&buf[22] = 1024;
            *&buf[24] = 1855;
            _os_log_impl(&dword_1DB56E000, v63, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d notifying app of first preview frame", buf, 0x1Cu);
          }
        }

        v64 = *(a1 + 272);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___VCVideoCaptureServer_DidReceiveFirstPreviewFrame_block_invoke;
        *&buf[24] = &unk_1E85F37F0;
        *&buf[32] = a1;
        *&buf[40] = v59;
        dispatch_async(v64, buf);
      }

      else
      {
        if (v61 >= 7)
        {
          v65 = VRTraceErrorLogLevelToCSTR();
          v66 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v65;
            *&buf[12] = 2080;
            *&buf[14] = "_VCVideoCaptureServer_DidReceiveFirstPreviewFrame";
            *&buf[22] = 1024;
            *&buf[24] = 1862;
            _os_log_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d notifying clients of first preview frame", buf, 0x1Cu);
          }
        }

        v67 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v68 = v67;
        if (v59)
        {
          [v67 setObject:v59 forKeyedSubscript:@"localCameraUIDString"];
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VCVideoCaptureServer_ProcessPreviewSampleBuffer_cold_2();
          }
        }

        v69 = *(a1 + 272);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___VCVideoCaptureServer_DidReceiveFirstPreviewFrame_block_invoke_871;
        *&buf[24] = &unk_1E85F3778;
        *&buf[32] = v68;
        dispatch_async(v69, buf);
      }

      *(a1 + 96) = 1;
    }

    v88 = v13;
    v70 = a5;
    v71 = CVPixelBufferGetWidth(ImageBuffer);
    v72 = CVPixelBufferGetHeight(ImageBuffer);
    [*(a1 + 448) ratio];
    v74 = v73;
    [*(a1 + 448) ratio];
    v76 = v75;
    v77 = VideoUtil_IsFrameAFBPerFrameAttachment(ImageBuffer);
    FrameOrientationReference = VCVideoAttributes_GetFrameOrientationReference(*(a1 + 448), v78);
    v80 = FrameOrientationReference;
    if (v71 != v74 || v72 != v76 || FrameOrientationReference != v77)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v81 = VRTraceErrorLogLevelToCSTR();
        v82 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136317186;
          *&buf[4] = v81;
          *&buf[12] = 2080;
          *&buf[14] = "_VCVideoCaptureServer_ProcessPreviewFrameSizeChange";
          *&buf[22] = 1024;
          *&buf[24] = 1887;
          *&buf[28] = 1024;
          *&buf[30] = v74;
          *&buf[34] = 1024;
          *&buf[36] = v76;
          *&buf[40] = 1024;
          *&buf[42] = v71;
          *&buf[46] = 1024;
          LODWORD(v90) = v72;
          WORD2(v90) = 1024;
          *(&v90 + 6) = v80;
          WORD5(v90) = 1024;
          HIDWORD(v90) = v77;
          _os_log_impl(&dword_1DB56E000, v82, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d frame size changed from=%dx%d to=%dx%d and frameOrientationReference changed from=%d to=%d", buf, 0x40u);
        }
      }

      v83 = *(a1 + 232);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke;
      *&buf[24] = &unk_1E85F8E00;
      BYTE12(v90) = v70;
      *&buf[40] = v71;
      *&buf[44] = v72;
      *&buf[32] = a1;
      *&v90 = __PAIR64__(v74, v77);
      DWORD2(v90) = v76;
      dispatch_async(v83, buf);
      [*(a1 + 448) setRatio:{v71, v72}];
      VCVideoAttributes_SetFrameOrientationReference((a1 + 448), v77);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v84 = VRTraceErrorLogLevelToCSTR();
        v85 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v86 = *(a1 + 448);
          if (v86)
          {
            v87 = [objc_msgSend(v86 "description")];
          }

          else
          {
            v87 = "<nil>";
          }

          LODWORD(v95.value) = 136315906;
          *(&v95.value + 4) = v84;
          LOWORD(v95.flags) = 2080;
          *(&v95.flags + 2) = "_VCVideoCaptureServer_ProcessPreviewFrameSizeChange";
          HIWORD(v95.epoch) = 1024;
          v96 = 1927;
          v97 = 2080;
          v98 = v87;
          _os_log_impl(&dword_1DB56E000, v85, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d localVideoAttributes changed to %s", &v95, 0x26u);
        }
      }
    }

    v13 = v88;
    if ((*(a1 + 428) & 1) == 0)
    {
      VCVideoCaptureServer_ApplyPressureLevelChanges(a1);
    }
  }

LABEL_92:
  CVPixelBufferRelease(v13);
}

uint64_t _VCMockIDSDatagramChannel_ComparePacket(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1648);
  v3 = *(a2 + 1648);
  v4 = v2 == v3;
  v5 = 2 * (v2 >= v3);
  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t VCMockIDSDatagramChannelReceiveThread(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = atomic_load((result + 3322352));
  if ((v4 & 1) == 0)
  {
    v5 = result;
    do
    {
      result = [v5 readyToRead];
      v6 = atomic_load(v5 + 3322352);
    }

    while ((v6 & 1) == 0);
  }

  *a3 = 1;
  return result;
}

uint64_t _VCMediaQueueClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void _VCMediaQueue_ReportingEvent(_DWORD *a1, int a2, unsigned int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2 <= 192)
  {
    if (a2 == 191)
    {
      v11 = atomic_load(a1 + 71);
      valuePtr = v11;
      v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
      v9 = @"VCMQPeakBR";
      goto LABEL_10;
    }

    if (a2 == 192)
    {
      v10 = atomic_load(a1 + 72);
      valuePtr = v10;
      v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
      v9 = @"VCMQMTU";
      goto LABEL_10;
    }
  }

  else
  {
    if ((a2 - 193) < 2)
    {
      valuePtr = a3;
      v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
      v9 = @"VCMQStreamID";
LABEL_10:
      CFDictionaryAddValue(Mutable, v9, v8);
      CFRelease(v8);
      goto LABEL_11;
    }

    if (a2 == 321)
    {
      valuePtr = a1[22];
      v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
      v9 = @"MQSchP";
      goto LABEL_10;
    }
  }

LABEL_11:
  reportingEventWithAllowedClientType();
  CFRelease(Mutable);
}

uint64_t _VCMediaQueue_GetInternalQueueIndexFromStreamId(uint64_t result, int a2, int a3, int *a4)
{
  if (!a4)
  {
    v5 = 2149580801;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCMediaQueue_GetInternalQueueIndexFromStreamId_cold_2();
      }
    }

    return v5;
  }

  v4 = *(result + 128);
  if (a3)
  {
    if (v4)
    {
      v5 = 0;
      *a4 = 0;
    }

    else
    {
      v5 = 2149580801;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCMediaQueue_GetInternalQueueIndexFromStreamId_cold_1();
        }
      }
    }

    return v5;
  }

  v6 = atomic_load((result + 760));
  if (v6 <= v4)
  {
    return 0;
  }

  v7 = (result + 632 + 4 * *(result + 128));
  v8 = v6 - *(result + 128);
  while (v7 < result + 760 && v7 >= result + 632)
  {
    if (*v7 == a2)
    {
      v5 = 0;
      *a4 = v4;
      return v5;
    }

    ++v4;
    ++v7;
    if (!--v8)
    {
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

void VCMediaQueue_FreeMediaPacket(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v4 = *(a2 + 228);
      *(a2 + 8) = 0;
      v12 = -1;
      if (_VCMediaQueue_GetInternalQueueIndexFromStreamId(a1, v4, *(a2 + 295), &v12) || (v12 & 0x80000000) != 0)
      {
        VCMediaQueue_FreeMediaPacket_cold_3();
      }

      else
      {
        v5 = *(a1 + 624);
        v6 = v5 + 176 * v12;
        if (v6 >= v5 + 176 * *(a1 + 348) || v6 < v5)
        {
LABEL_21:
          __break(0x5519u);
        }

        if (CMSimpleQueueGetHead(*(v6 + 8)) == a2)
        {
          v8 = *(a1 + 624);
          v9 = (v8 + 176 * v12);
          if (v9 >= v8 + 176 * *(a1 + 348) || v9 < v8)
          {
            goto LABEL_21;
          }

          v10 = *v9;
          v11 = CMSimpleQueueDequeue(v9[1]);
          if (CMSimpleQueueEnqueue(v10, v11))
          {
            VCMediaQueue_FreeMediaPacket_cold_2();
          }
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCMediaQueue_FreeMediaPacket_cold_1();
          }
        }
      }
    }
  }

  else
  {
    VCMediaQueue_FreeMediaPacket_cold_4();
  }
}

void _VCMediaQueue_FreeMediaPacketList(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _VCMediaQueue_FreeMediaPacketList_cold_1(a1, a2);
  }
}

uint64_t _VCMediaQueue_RegisterStream(uint64_t a1, atomic_uint a2, signed int *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  result = 2149580801;
  if (a3)
  {
    v6 = (a1 + 760);
    v7 = atomic_load((a1 + 760));
    do
    {
      v8 = v7;
      if (v7 >= *(a1 + 348))
      {
        return 2149580805;
      }

      atomic_compare_exchange_strong(v6, &v7, v7 + 1);
    }

    while (v7 != v8);
    v9 = (a1 + 632 + 4 * v8);
    if (v9 < v6 && v9 >= a1 + 632 && ((*v9 = a2, v10 = *(a1 + 624), v11 = v10 + 176 * v8, v11 < v10 + 176 * *(a1 + 348)) ? (v12 = v11 >= v10) : (v12 = 0), v12))
    {
      *(v11 + 124) = a2;
      *a3 = v8;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v22 = v19;
          v23 = 2080;
          v24 = "_VCMediaQueue_RegisterStream";
          v25 = 1024;
          v26 = 823;
          v27 = 1024;
          v28 = a2;
          v29 = 1024;
          v30 = v8;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue register mediaQueueStreamId=%u with internal queue index=%d", buf, 0x28u);
        }
      }

      result = *(a1 + 168);
      if (result)
      {
        VRLogfilePrintWithTimestamp(result, "Stream registration with index=%d, mediaQueueStreamId=%u\n", v13, v14, v15, v16, v17, v18, v8);
        return 0;
      }
    }

    else
    {
      __break(0x5519u);
    }
  }

  return result;
}

void _VCMediaQueue_SchedulePackets(uint64_t a1)
{
  v2 = micro();
  *(a1 + 312) = v2 + *(a1 + 24);
  atomic_exchange((a1 + 280), 0);
  v3 = *(a1 + 320);
  if (v3 != 0.0)
  {
    *(a1 + 352) = v2 - v3;
  }

  v4 = *(a1 + 88);
  *(a1 + 320) = v2;
  if ((v4 - 1) >= 2)
  {
    if (v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCMediaQueue_SchedulePackets_cold_1();
        }
      }
    }

    else
    {

      _VCMediaQueue_SchedulePacketsWithPolicyNone(a1);
    }
  }

  else
  {

    _VCMediaQueue_SchedulePacketsWithLimitedBudget(a1);
  }
}

uint64_t _VCMediaQueue_SchedulePacketsWithPolicyNone(uint64_t result)
{
  if (*(result + 348))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(v1 + 624) + 176 * v2;
      if (*(v3 + 24))
      {
        v4 = *(v3 + 16);
        result = CMSimpleQueueGetCount(v4);
        if (result >= 1)
        {
          do
          {
            Head = CMSimpleQueueGetHead(v4);
            result = VCMediaQueuePacketBundler_AddPacket(*(v1 + 136), Head);
            if (result)
            {
              break;
            }

            CMSimpleQueueDequeue(v4);
            result = CMSimpleQueueGetCount(v4);
          }

          while (result > 0);
        }
      }

      ++v2;
    }

    while (v2 < *(v1 + 348));
  }

  return result;
}

void _VCMediaQueue_SchedulePacketsWithLimitedBudget(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  _VCMediaQueue_UpdateTotalBudgetForThisInterval(a1);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 340);
        v14 = 136315906;
        v15 = v2;
        v16 = 2080;
        v17 = "_VCMediaQueue_SchedulePacketsWithLimitedBudget";
        v18 = 1024;
        v19 = 878;
        v20 = 1024;
        v21 = v5;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d Starting budget in this interval: %d", &v14, 0x22u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      _VCMediaQueue_SchedulePacketsWithLimitedBudget_cold_1();
    }
  }

  v6 = _VCMediaQueue_ScheduleDirectSendQueuesAndReduceRemainingBudget(a1);
  v7 = _VCMediaQueue_ScheduleWaitingQueuesAndReduceRemainingBudget(a1) + v6;
  *(a1 + 308) = v7 != 0;
  v8 = _VCMediaQueue_ScheduleThrottlingQueuesAndReduceRemainingBudget(a1) + v7;
  if (v8 && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 340);
        v14 = 136316162;
        v15 = v9;
        v16 = 2080;
        v17 = "_VCMediaQueue_SchedulePacketsWithLimitedBudget";
        v18 = 1024;
        v19 = 887;
        v20 = 1024;
        v21 = v8;
        v22 = 1024;
        v23 = v12;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d Total byte count scheduled in this interval: %d, remaining budget: %d", &v14, 0x28u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 340);
      v14 = 136316162;
      v15 = v9;
      v16 = 2080;
      v17 = "_VCMediaQueue_SchedulePacketsWithLimitedBudget";
      v18 = 1024;
      v19 = 887;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = v13;
      _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, "VCMediaQueue [%s] %s:%d Total byte count scheduled in this interval: %d, remaining budget: %d", &v14, 0x28u);
    }
  }

  *(a1 + 412) += v8;
}

uint64_t _VCMediaQueue_UpdateTotalBudgetForThisInterval(uint64_t result)
{
  v1 = atomic_load((result + 888));
  if (v1)
  {
    v2 = (*(result + 24) * 50000000.0);
    goto LABEL_20;
  }

  *(result + 360) = *(result + 352) * 0.9 + *(result + 360) * 0.1;
  v3 = atomic_load((result + 284));
  *(result + 392) = v3;
  v4 = atomic_load((result + 300));
  if (*(result + 129) == 1 && (v4 & 1) != 0)
  {
    if (!*(result + 348))
    {
      goto LABEL_11;
    }

    v5 = 0;
    v6 = 0;
    v7 = 93;
    do
    {
      v6 |= atomic_exchange((*(result + 624) + v7), 0);
      ++v5;
      v7 += 176;
    }

    while (v5 < *(result + 348));
    if (v6)
    {
      v8 = *(result + 320);
      v9 = fmax(*(result + 376) * 0.5, 1.0);
      *(result + 384) = v8;
    }

    else
    {
LABEL_11:
      v11 = *(result + 384);
      if (v11 != 0.0)
      {
        HIDWORD(v8) = 1078853632;
        if (*(result + 320) - v11 <= 60.0)
        {
          v9 = *(result + 376);
          goto LABEL_15;
        }
      }

      v8 = 10.0;
      v9 = fmin(*(result + 376) + 0.01, 10.0);
    }

    *(result + 376) = v9;
LABEL_15:
    LODWORD(v8) = *(result + 392);
    v10 = (v9 * v8);
    *(result + 392) = v10;
    goto LABEL_16;
  }

  v10 = *(result + 392);
LABEL_16:
  v12 = *(result + 360);
  v13 = *(result + 368) * v12;
  v14 = v10;
  if (v13 >= *(result + 24))
  {
    v13 = *(result + 24);
  }

  v2 = (v13 * v14 * 0.125);
  *(result + 332) = v2;
  v15 = v12 * v14 * 0.125;
  LODWORD(v12) = *(result + 340);
  if (v2 >= (v15 + *&v12))
  {
    v2 = (v15 + *&v12);
  }

LABEL_20:
  *(result + 340) = v2;
  *(result + 336) = v2;
  return result;
}

uint64_t _VCMediaQueue_ScheduleDirectSendQueuesAndReduceRemainingBudget(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 348);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 624) + 176 * v3;
      if (*(v5 + 24) == 1)
      {
        if (CMSimpleQueueGetCount(*(v5 + 16)) >= 1)
        {
          while (1)
          {
            Head = CMSimpleQueueGetHead(*(v5 + 16));
            v7 = CMSimpleQueueEnqueue(*(a1 + 616), Head);
            if (v7)
            {
              break;
            }

            CMSimpleQueueDequeue(*(v5 + 16));
            v8 = Head[67];
            if (*(Head + 293))
            {
              v9 = 48;
            }

            else
            {
              v9 = 28;
            }

            v10 = v9 + *Head;
            v11 = *(Head + 2);
            *(a1 + 420) += v8;
            *(a1 + 416) += v10 * v8;
            v12 = Head[59];
            *(v5 + 80) += v8;
            *(v5 + 84) = v12;
            v4 = (v4 + (v10 + v11) * v8);
            if (CMSimpleQueueGetCount(*(v5 + 16)) <= 0)
            {
              goto LABEL_14;
            }
          }

          v13 = v7;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v21 = v14;
              v22 = 2080;
              v23 = "_VCMediaQueue_ScheduleDirectSendQueuesAndReduceRemainingBudget";
              v24 = 1024;
              v25 = 994;
              v26 = 1024;
              v27 = v13;
              _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, "VCMediaQueue [%s] %s:%d Failed to enqueue! status: %d", buf, 0x22u);
            }
          }
        }

LABEL_14:
        *(a1 + 600) |= 1 << v3;
        v2 = *(a1 + 348);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  else
  {
    v4 = 0;
  }

  v16 = *(a1 + 340);
  v17 = v16 >= v4;
  v18 = v16 - v4;
  if (v18 == 0 || !v17)
  {
    v18 = 0;
    *(a1 + 344) += v4;
  }

  *(a1 + 340) = v18;
  return v4;
}

uint64_t _VCMediaQueue_ScheduleWaitingQueuesAndReduceRemainingBudget(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = *(a1 + 348) - 1;
  if (v3 >= 0)
  {
    do
    {
      v4 = *(a1 + 624);
      v5 = v4 + 176 * *(a1 + 348);
      v6 = v4 + 176 * v3;
      v7 = v4 > v6 || v6 + 176 > v5;
      if (v7)
      {
LABEL_30:
        __break(0x5519u);
      }

      if (*(v6 + 24) == 2)
      {
        if (CMSimpleQueueGetCount(*(v6 + 16)) >= 1)
        {
          if (v6)
          {
            v8 = v6 >= v5;
          }

          else
          {
            v8 = 0;
          }

          v9 = !v8;
          while (1)
          {
            Head = CMSimpleQueueGetHead(*(v6 + 16));
            v11 = VCMediaQueuePacketBundler_AddPacket(*(a1 + 136), Head);
            if (v11)
            {
              break;
            }

            CMSimpleQueueDequeue(*(v6 + 16));
            if (!v9)
            {
              goto LABEL_30;
            }

            v12 = Head[67];
            if (*(Head + 293))
            {
              v13 = 48;
            }

            else
            {
              v13 = 28;
            }

            v14 = v13 + *Head;
            v15 = *(Head + 2);
            *(a1 + 420) += v12;
            *(a1 + 416) += v14 * v12;
            v16 = Head[59];
            *(v6 + 80) += v12;
            *(v6 + 84) = v16;
            v2 = (v2 + (v14 + v15) * v12);
            if (CMSimpleQueueGetCount(*(v6 + 16)) <= 0)
            {
              goto LABEL_24;
            }
          }

          v17 = v11;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v18 = VRTraceErrorLogLevelToCSTR();
            v19 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v24 = v18;
              v25 = 2080;
              v26 = "_VCMediaQueue_ScheduleWaitingQueuesAndReduceRemainingBudget";
              v27 = 1024;
              v28 = 1017;
              v29 = 1024;
              v30 = v17;
              _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, "VCMediaQueue [%s] %s:%d Failed to add packet to bundler! status=%d", buf, 0x22u);
            }
          }
        }

LABEL_24:
        *(a1 + 600) |= 1 << v3;
      }

      v7 = v3-- <= 0;
    }

    while (!v7);
  }

  v20 = *(a1 + 340);
  v8 = v20 >= v2;
  v21 = v20 - v2;
  if (v21 == 0 || !v8)
  {
    v21 = 0;
    *(a1 + 344) += v2;
  }

  *(a1 + 340) = v21;
  return v2;
}

uint64_t _VCMediaQueue_ScheduleThrottlingQueuesAndReduceRemainingBudget(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 2)
  {

    return _VCMediaQueue_ScheduleThrottlingQueuesWithoutWait(a1);
  }

  else if (v1 == 1)
  {

    return _VCMediaQueue_ScheduleThrottlingQueuesWithIDRAndLongestIdleTimeFirst(a1);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCMediaQueue_ScheduleThrottlingQueuesAndReduceRemainingBudget_cold_1();
      }
    }

    return 0;
  }
}

uint64_t _VCMediaQueue_ScheduleThrottlingQueuesWithIDRAndLongestIdleTimeFirst(uint64_t a1)
{
  *v14 = *MEMORY[0x1E69E9840];
  memset(v13, 0, sizeof(v13));
  if (*(a1 + 348))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 624);
      if (*(v6 + v2 + 24) == 3 && CMSimpleQueueGetCount(*(v6 + v2 + 16)) >= 1)
      {
        if (atomic_exchange((v6 + v2 + 92), 0))
        {
          v4 = _VCMediaQueue_ScheduleFramesFromThrottlingQueue(a1, v3) + v4;
          *(a1 + 600) |= 1 << v3;
          *(a1 + 602) |= 1 << v3;
        }

        else
        {
          v7 = &v13[v5];
          if (v7 >= v14 || v7 < v13)
          {
            goto LABEL_19;
          }

          v8 = *(v6 + v2 + 32);
          ++v5;
          *v7 = v3;
          v7[1] = -1431655766;
          *(v7 + 1) = v8;
        }
      }

      ++v3;
      v2 += 176;
    }

    while (v3 < *(a1 + 348));
    v9 = v5;
    qsort(v13, v5, 0x10uLL, _VCMediaQueue_CompareScheduleOrderElementWithScheduleTime);
    if (v5)
    {
      for (i = v13; i < v14 && i >= v13; i += 4)
      {
        v11 = *i;
        v4 = _VCMediaQueue_ScheduleFramesFromThrottlingQueue(a1, v11) + v4;
        if (!--v9)
        {
          return v4;
        }
      }

LABEL_19:
      __break(0x5519u);
    }
  }

  else
  {
    qsort(v13, 0, 0x10uLL, _VCMediaQueue_CompareScheduleOrderElementWithScheduleTime);
    return 0;
  }

  return v4;
}

uint64_t _VCMediaQueue_ScheduleThrottlingQueuesWithoutWait(uint64_t result)
{
  v1 = result;
  v2 = atomic_load((result + 888));
  if (v2)
  {
    v3 = *(result + 348);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 176 * v3;
      while (1)
      {
        v8 = *(v1 + 624);
        if (v8 > v8 + v4 || v8 + v4 + 176 > v8 + 176 * *(v1 + 348))
        {
          break;
        }

        if (*(v8 + v4 + 24) == 3)
        {
          result = CMSimpleQueueGetCount(*(v8 + v4 + 16));
          if (result >= 1)
          {
            result = _VCMediaQueue_ScheduleFramesFromThrottlingQueue(v1, v5);
            v6 = (result + v6);
          }
        }

        ++v5;
        v4 += 176;
        if (v7 == v4)
        {
          return v6;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return _VCMediaQueue_ScheduleThrottlingQueuesWithIDRAndLongestIdleTimeFirst(result);
  }

  return result;
}

uint64_t _VCMediaQueue_ScheduleFramesFromThrottlingQueue(uint64_t a1, unsigned int a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 340))
  {
    return 0;
  }

  v3 = *(a1 + 624);
  v4 = v3 + 176 * *(a1 + 348);
  v36 = a2;
  v5 = v3 + 176 * a2;
  if (v3 > v5 || v5 + 176 > v4)
  {
LABEL_61:
    __break(0x5519u);
  }

  v7 = atomic_load((v5 + 104));
  if (CMSimpleQueueGetCount(*(v5 + 16)) < 1)
  {
    v8 = 0;
    goto LABEL_59;
  }

  v8 = 0;
  if (v5)
  {
    v9 = v5 >= v4;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  v11 = 1;
  while (1)
  {
    Head = CMSimpleQueueGetHead(*(v5 + 16));
    if (!v10)
    {
      goto LABEL_61;
    }

    v13 = Head;
    v14 = atomic_load((a1 + 300));
    if ((v14 & 1) == 0)
    {
      v16 = 1;
      goto LABEL_24;
    }

    if (Head[94] == 1)
    {
      if (Head[291])
      {
        v15 = 1;
LABEL_22:
        *(v5 + 168) = v15;
        goto LABEL_23;
      }

      if (Head[292] == 1)
      {
        v15 = 0;
        goto LABEL_22;
      }
    }

LABEL_23:
    v16 = *(v5 + 168) ^ 1;
LABEL_24:
    if ((*(a1 + 308) & 1) == 0 && ((*(a1 + 309) | v16) & 1) == 0 || (v11 & Head[225] & 1) == 0 && !*(a1 + 340))
    {
      goto LABEL_59;
    }

    if (v11)
    {
      v11 = Head[292] ^ 1;
    }

    else
    {
      v11 = Head[291];
    }

    if (Head >= Head + 312)
    {
      goto LABEL_61;
    }

    if (VCMediaQueuePacketBundler_AddPacket(*(a1 + 136), Head))
    {
      break;
    }

    CMSimpleQueueDequeue(*(v5 + 16));
    if (v13[289] == 1)
    {
      v17 = *(v13 + 59);
      if (v7 == v17)
      {
        if (v13[291])
        {
          v18 = 1;
LABEL_46:
          *(v5 + 160) = v18;
          goto LABEL_47;
        }

        v19 = v13[292];
        ++*(v5 + 160);
        if (v19 == 1)
        {
          v20 = atomic_load((v5 + 104));
          while ((v17 - v20) <= 0x7FFFFFFE)
          {
            v21 = v20;
            atomic_compare_exchange_strong((v5 + 104), &v21, 0xFFFFFFFFFFFFFFFFLL);
            v22 = v21 == v20;
            v20 = v21;
            if (v22)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v35 = VRTraceErrorLogLevelToCSTR();
                v23 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v24 = *(v5 + 124);
                  v25 = *(v5 + 160);
                  *buf = 136316162;
                  v38 = v35;
                  v39 = 2080;
                  v40 = "_VCMediaQueue_ResetLastIDRTimestamp";
                  v41 = 1024;
                  v42 = 1188;
                  v43 = 1024;
                  v44 = v24;
                  v45 = 1024;
                  v46 = v25;
                  _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d IDR frame sent out. Reset lastIDRTimestamp for mediaQueueStreamId=%u, frameSizeInPackets=%u", buf, 0x28u);
                }
              }

              break;
            }
          }

          v18 = 0;
          goto LABEL_46;
        }
      }
    }

LABEL_47:
    v26 = *(v13 + 67);
    if (v13[293])
    {
      v27 = 48;
    }

    else
    {
      v27 = 28;
    }

    v28 = v27 + *v13;
    v29 = *(v13 + 2);
    *(a1 + 420) += v26;
    *(a1 + 416) += v28 * v26;
    v30 = *(v13 + 59);
    *(v5 + 80) += v26;
    *(v5 + 84) = v30;
    v31 = (v28 + v29) * v26;
    v32 = *(a1 + 340);
    v9 = v32 >= v31;
    v33 = v32 - v31;
    if (v33 == 0 || !v9)
    {
      v33 = 0;
      *(a1 + 344) += v31;
    }

    *(a1 + 340) = v33;
    v8 = v31 + v8;
    if (CMSimpleQueueGetCount(*(v5 + 16)) <= 0)
    {
      goto LABEL_59;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCMediaQueue_ScheduleFramesFromThrottlingQueue_cold_1();
    }
  }

LABEL_59:
  *(a1 + 600) |= 1 << v36;
  *(v5 + 32) = *(a1 + 320);
  return v8;
}

void _VCMediaQueue_SendAndFreePackets(uint64_t a1)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v5;
  v7 = v4;
  v85[1] = *MEMORY[0x1E69E9840];
  v65 = (v4 + 24576);
  v8 = *(v5 + 268);
  v9 = atomic_load((v4 + 300));
  v68 = v8;
  v69 = v9;
  v10 = micro();
  v64 = *(v6 + 176);
  if (v64 == 1)
  {
    v11 = 700;
  }

  else
  {
    v11 = 800;
  }

  v66 = v11;
  v67 = *(v6 + 264);
  memset(v84, 0, sizeof(v84));
  memset(v81, 0, sizeof(v81));
  v82 = 0;
  bzero(v73, 0x2760uLL);
  v12 = 0;
  v13 = MEMORY[0x1E6986650];
  v14 = v6;
  while (1)
  {
    v15 = *(v14 + 268);
    if (v15 >= 2 && *(v14 + 304))
    {
      v68 = 0;
      goto LABEL_97;
    }

    if (*(v14 + 58) != 1)
    {
      break;
    }

    if (*(v14 + 4))
    {
      break;
    }

    v21 = *(v14 + 304);
    if (!v21)
    {
      break;
    }

    *(v21 + 58) = 1;
    *(v21 + 60) = *(v14 + 60);
    *(v7 + 499) = 1;
    v14 = v21;
LABEL_94:
    if (!v14)
    {
      goto LABEL_101;
    }
  }

  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(*(v14 + 8), 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    LODWORD(v1) = DataPointer;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v2 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v14 + 58);
        if (v17 == 1)
        {
          v18 = *(v14 + 60);
        }

        else
        {
          v18 = 0;
        }

        v28 = *(v14 + 228);
        *buf = 136316674;
        *&buf[4] = v3;
        *&buf[12] = 2080;
        *&buf[14] = "_VCMediaQueue_SendAndFreePackets";
        *&buf[22] = 1024;
        *&buf[24] = 1436;
        *&buf[28] = 1024;
        *&buf[30] = v1;
        *&buf[34] = 1024;
        *&buf[36] = v28;
        *&buf[40] = 1024;
        *&buf[42] = v17;
        *&buf[46] = 1024;
        *&buf[48] = v18;
        _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, "VCMediaQueue [%s] %s:%d CMBlock error %d when send/free media packet for mediaQueueStreamId=%u, isServerStats=%u, id=%u", buf, 0x34u);
      }
    }

LABEL_93:
    v14 = *(v14 + 304);
    goto LABEL_94;
  }

  if (v12 < 30)
  {
    if ((v69 & 1) == 0)
    {
LABEL_67:
      v1 = &v73[21 * v12];
      if (v1 >= v81 || v1 < v73)
      {
        goto LABEL_138;
      }

      *(v1 + 8) = *(v14 + 232);
      *(v1 + 168) = 1;
      v37 = *(v14 + 64);
      v36 = *(v14 + 80);
      v38 = *(v14 + 48);
      *(v1 + 192) = *(v14 + 32);
      *(v1 + 208) = v38;
      *(v1 + 224) = v37;
      *(v1 + 240) = v36;
      *(v1 + 176) = *(v14 + 16);
      *(v1 + 205) = 1;
      *(v1 + 313) = *(v14 + 297);
      VTP_SetPktTag(&v73[21 * v12], 0, *(v14 + 248));
      VTP_SetPktTag(&v73[21 * v12], 1u, *(v14 + 252));
      VTP_SetPktTag(&v73[21 * v12], 2u, *(v14 + 236));
      if (*(v1 + 201) == 1)
      {
        *(v14 + 296) = 1;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v3 = VRTraceErrorLogLevelToCSTR();
          v2 = *v13;
          v39 = *v13;
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = *(v7 + 604);
              v41 = *(v14 + 228);
              v42 = *(v14 + 4);
              *buf = 136316418;
              *&buf[4] = v3;
              *&buf[12] = 2080;
              *&buf[14] = "_VCMediaQueue_SendAndFreePackets";
              *&buf[22] = 1024;
              *&buf[24] = 1484;
              *&buf[28] = 1024;
              *&buf[30] = v40;
              *&buf[34] = 1024;
              *&buf[36] = v41;
              *&buf[40] = 1024;
              *&buf[42] = v42;
              _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d Sending out probingGroupID=%d, mediaQueueStreamId=%u, size=%d", buf, 0x2Eu);
            }
          }

          else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v47 = *(v7 + 604);
            v48 = *(v14 + 228);
            v49 = *(v14 + 4);
            *buf = 136316418;
            *&buf[4] = v3;
            *&buf[12] = 2080;
            *&buf[14] = "_VCMediaQueue_SendAndFreePackets";
            *&buf[22] = 1024;
            *&buf[24] = 1484;
            *&buf[28] = 1024;
            *&buf[30] = v47;
            *&buf[34] = 1024;
            *&buf[36] = v48;
            *&buf[40] = 1024;
            *&buf[42] = v49;
            _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, "VCMediaQueue [%s] %s:%d Sending out probingGroupID=%d, mediaQueueStreamId=%u, size=%d", buf, 0x2Eu);
          }
        }

        v43 = *(v7 + 604);
        *(v1 + 202) = v43;
        if (*(v14 + 292) == 1)
        {
          *(v7 + 604) = v43 + 1;
        }
      }

      if (dataPointerOut && !lengthAtOffsetOut)
      {
        goto LABEL_138;
      }

      v44 = &v84[v12];
      if (v44 >= v85)
      {
        goto LABEL_138;
      }

      if (v44 < v84)
      {
        goto LABEL_138;
      }

      v84[v12] = dataPointerOut;
      v45 = (v81 + 4 * v12);
      if (v45 >= &v83 || v45 < v81)
      {
        goto LABEL_138;
      }

      *v45 = *(v14 + 4);
      v46 = *(v14 + 268);
      if (*(v14 + 227) == 1)
      {
        *(v7 + 476) += v46;
        *(v7 + 496) = *(v14 + 248);
      }

      else
      {
        *(v7 + 480) += v46;
      }

      if (*(v14 + 226) == 1)
      {
        *(v7 + 488) += v46;
      }

      if (*(v14 + 296) == 1)
      {
        *(v7 + 484) += v46;
      }

      ++v12;
      if (*(v14 + 289) == 1)
      {
        *(v7 + 498) = 1;
      }

      goto LABEL_93;
    }

    v19 = *(v14 + 176);
    if (v19 == 1)
    {
      if (*(v14 + 94) != 1 || (v22 = *(v14 + 184)) == 0 || (*(v7 + 309) & 1) != 0)
      {
        v20 = *(v14 + 268);
        goto LABEL_30;
      }

      *buf = bswap32(v65[263]);
      VCMediaControlInfoSetInfo(v22, 8, buf, 4);
      *(v14 + 296) = 1;
      v19 = *(v14 + 176);
    }

    else if (!v19)
    {
      v65[263] = *(v14 + 236);
      v20 = *(v14 + 268);
      goto LABEL_28;
    }

    v20 = *(v14 + 268);
    if (v19 != 1)
    {
      if (v19)
      {
LABEL_32:
        v23 = *(v14 + 4);
        if (*(v14 + 293))
        {
          v24 = 48;
        }

        else
        {
          v24 = 28;
        }

        v65[262] += (v24 + v23) * v20;
        v25 = *(v14 + 244);
        v3 = &dataPointerOut[v25];
        if (dataPointerOut > &dataPointerOut[v25])
        {
          goto LABEL_138;
        }

        if (v3 > &dataPointerOut[lengthAtOffsetOut])
        {
          goto LABEL_138;
        }

        v1 = (v23 - v25);
        if (lengthAtOffsetOut - v25 < v1)
        {
          goto LABEL_138;
        }

        v2 = *(v14 + 184);
        if (v2)
        {
          if (VCMediaControlInfoHasInfo(*(v14 + 184), 0) && *(v7 + 130) == 1)
          {
            memset(buf, 0, 40);
            *&buf[28] = RTPPackDouble(*(v14 + 208));
            v26 = *(v14 + 216);
            if (v26 == 0.0)
            {
              v27 = 0;
            }

            else if (v26 == v10)
            {
              v27 = 1;
            }

            else
            {
              v27 = vcvtd_n_u64_f64(v10 - v26, 0xAuLL);
            }

            *&buf[20] = v27;
            v29 = MicroToNTP(v10);
            v30 = NTPToMiddle32(v29);
            *&buf[24] = v30 >> 6;
            VCMediaControlInfoSetInfoUnserialized(v2, buf, 1);
            _VCMediaQueue_AddInfoToOneToOneTxHistory(v7, v30 >> 6, v10);
            pthread_mutex_lock((v7 + 216));
            if (*(v7 + 176) == 1)
            {
              *(v7 + 176) = 0;
              *(v7 + 200) = v10;
              *(v7 + 180) = *(v7 + 188);
            }

            v13 = MEMORY[0x1E6986650];
            if (*(v7 + 177) == 1)
            {
              *(v7 + 177) = 0;
              *(v7 + 208) = v10;
              *(v7 + 184) = *(v7 + 192);
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v62 = VRTraceErrorLogLevelToCSTR();
                v63 = *v13;
                if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
                {
                  v31 = *(v7 + 184);
                  v32 = *(v7 + 208);
                  *buf = 136316162;
                  *&buf[4] = v62;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VCMediaQueue_UpdateStabilizationCounters";
                  *&buf[22] = 1024;
                  *&buf[24] = 1337;
                  *&buf[28] = 1024;
                  *&buf[30] = v31;
                  *&buf[34] = 2048;
                  *&buf[36] = v32;
                  _os_log_impl(&dword_1DB56E000, v63, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d Refresh frame counter=%d, time=%.4f", buf, 0x2Cu);
                }
              }
            }

            pthread_mutex_unlock((v7 + 216));
          }

          if (v3 && v23 == v25)
          {
LABEL_138:
            __break(0x5519u);
            goto LABEL_139;
          }

          v33 = VCMediaControlInfoSerialize(v2);
          if (v33 < 0)
          {
            LODWORD(v1) = v33;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v3 = VRTraceErrorLogLevelToCSTR();
              v13 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
LABEL_139:
                v61 = *(v14 + 248);
                *buf = 136316418;
                *&buf[4] = v3;
                *&buf[12] = 2080;
                *&buf[14] = "_VCMediaQueue_SerializeMediaControlInfoInOneToOneMediaPacket";
                *&buf[22] = 1024;
                *&buf[24] = 1355;
                *&buf[28] = 1024;
                *&buf[30] = v1;
                *&buf[34] = 1024;
                *&buf[36] = v61;
                *&buf[40] = 2048;
                *&buf[42] = v2;
                _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "VCMediaQueue [%s] %s:%d Adding extension failed with result=%08X for packet sequenceNum=%u controlInfo=%p", buf, 0x32u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _VCMediaQueue_SendAndFreePackets_cold_1();
              }
            }

            goto LABEL_137;
          }
        }

        else if ((*(v7 + 130) & 1) == 0)
        {
          _VCMediaQueue_AddInfoToOneToOneTxHistory(v7, *(v14 + 236) / 0x3E8u, v10);
        }

        if (*(v14 + 297) == 1)
        {
          if (lengthAtOffsetOut < *(v14 + 4))
          {
            goto LABEL_138;
          }

          if (!*(v14 + 244))
          {
            _VCMediaQueue_SendAndFreePackets_cold_5();
            goto LABEL_134;
          }

          v34 = *(v14 + 192);
          if (!v34)
          {
            _VCMediaQueue_SendAndFreePackets_cold_4();
            goto LABEL_134;
          }

          v35 = *(v14 + 200);
          if (v35 == 0xFFFFFFFFLL)
          {
            _VCMediaQueue_SendAndFreePackets_cold_3();
            goto LABEL_134;
          }

          if ((v34(v35, dataPointerOut) & 0x80000000) != 0)
          {
            _VCMediaQueue_SendAndFreePackets_cold_2();
LABEL_134:
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _VCMediaQueue_SendAndFreePackets_cold_6();
              }
            }

LABEL_137:
            v68 = 0;
            v15 = *(v14 + 268);
LABEL_97:
            *(v7 + 492) += v15;
            goto LABEL_101;
          }

          *(v14 + 297) = 0;
        }

        goto LABEL_67;
      }

LABEL_28:
      if (*(v14 + 227) == 1)
      {
        v65[260] += v20;
      }

      goto LABEL_32;
    }

LABEL_30:
    if ((*(v14 + 226) & 1) == 0)
    {
      v65[261] += v20;
    }

    goto LABEL_32;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCMediaQueue_SendAndFreePackets_cold_7();
    }
  }

LABEL_101:
  v50 = 552;
  if (v64 == 1)
  {
    v50 = 544;
  }

  v51 = 568;
  if (v64 == 1)
  {
    v51 = 576;
  }

  *(v7 + v50) += v68;
  ++*(v7 + v51);
  *(v7 + 560) += v68;
  ++*(v7 + 584);
  if (v68 >= 1)
  {
    for (i = 0; i != v68; ++i)
    {
      if (v69)
      {
        if (v12 >= 2 && VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v53 = VRTraceErrorLogLevelToCSTR();
          v54 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = v53;
            *&buf[12] = 2080;
            *&buf[14] = "_VCMediaQueue_SendAndFreePackets";
            *&buf[22] = 1024;
            *&buf[24] = 1501;
            _os_log_error_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_ERROR, "VCMediaQueue [%s] %s:%d One to one should not have compound packets", buf, 0x1Cu);
          }
        }

        _VCMediaQueue_RateStats_TrackMediaPacket(*(v7 + 160), v6, 0, v10);
        v55 = atomic_load((v7 + 302));
        v80 = v55 & 1;
        if (*(v6 + 227))
        {
          v56 = 16;
        }

        else
        {
          v56 = 32;
        }

        v74 = v56;
        VTP_Send(v67, v84[0], LODWORD(v81[0]), v66, v73);
        v57 = *(v6 + 256);
        if (v57 > *(v7 + 188))
        {
          *(v7 + 176) = 1;
          *(v7 + 188) = v57;
        }

        v58 = *(v6 + 260);
        if (v58 > *(v7 + 192))
        {
          *(v7 + 177) = 1;
          *(v7 + 192) = v58;
        }
      }

      else
      {
        if (i && v12 == 1)
        {
          v59 = *(v6 + 144);
          v77 = *(v6 + 128);
          v78 = v59;
          v79 = *(v6 + 160);
          v60 = *(v6 + 112);
          v75 = *(v6 + 96);
          v76 = v60;
        }

        VTP_SendCompoundPacket(v67);
      }

      atomic_fetch_add((v7 + 296), v12);
    }
  }

  _VCMediaQueue_FreeMediaPacketList(v7, v6);
}
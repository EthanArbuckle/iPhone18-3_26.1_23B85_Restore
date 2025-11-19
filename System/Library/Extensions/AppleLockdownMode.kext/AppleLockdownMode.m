OSMetaClass *AppleLockdownMode::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleLockdownMode", &IOService::gMetaClass, 0x88u);
  result->__vftable = off_246C8;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleLockdownMode", &IOService::gMetaClass, 0x88u);
  result->__vftable = off_246C8;
  return result;
}

void AppleLockdownMode::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleLockdownMode::AppleLockdownMode(AppleLockdownMode *this, const OSMetaClass *a2)
{
  IOService::IOService(this, a2)->__vftable = off_24170;
}

{
  IOService::IOService(this, a2)->__vftable = off_24170;
}

void AppleLockdownMode::~AppleLockdownMode(IOService *this)
{
  IOService::~IOService(this);
}

{
  IOService::~IOService(this);
}

{
  IOService::~IOService(this);

  _OSObject_typed_operator_delete(&AppleLockdownMode_ktv, this, 136);
}

IOService *AppleLockdownMode::MetaClass::alloc(AppleLockdownMode::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOService::IOService(v1, &AppleLockdownMode::gMetaClass)->__vftable = off_24170;
  OSMetaClass::instanceConstructed(&AppleLockdownMode::gMetaClass);
  return v1;
}

void AppleLockdownMode::AppleLockdownMode(AppleLockdownMode *this)
{
  IOService::IOService(this, &AppleLockdownMode::gMetaClass)->__vftable = off_24170;
  OSMetaClass::instanceConstructed(&AppleLockdownMode::gMetaClass);
}

{
  IOService::IOService(this, &AppleLockdownMode::gMetaClass)->__vftable = off_24170;
  OSMetaClass::instanceConstructed(&AppleLockdownMode::gMetaClass);
}

BOOL PlatformSupportsXART(void)
{
  v0 = IORegistryEntry::fromPath("/arm-io/sep/iop-sep-nub/xART", gIODTPlane, 0, 0, 0);
  v1 = v0;
  if (v0)
  {
    (v0->release_0)(v0);
  }

  return v1 != 0;
}

uint64_t LDMShouldEnforceParity(void)
{
  if (PE_parse_boot_argn("-restore", 0, 0))
  {
    IOLog("[AppleLockdownMode - %s] restoreOS check failed\n");
  }

  else
  {
    IOLog("[AppleLockdownMode - %s] restoreOS check passed\n", "LDMShouldEnforceParity");
    v0 = IOService::serviceMatching("AppleSEPManager", 0);
    if (v0)
    {
      v1 = v0;
      v2 = IOService::waitForMatchingService(v0, 0xFFFFFFFFFFFFFFFFLL);
      if (v2)
      {
        v3 = v2;
        v4 = IOService::nameMatching("sep-endpoint,scrd", 0);
        if (v4)
        {
          v5 = v4;
          v6 = IOService::waitForMatchingService(v4, 0xFFFFFFFFFFFFFFFFLL);
          v7 = v6 == 0;
          if (v6)
          {
            v8 = v6;
            IOLog("[AppleLockdownMode - %s] SEP check passed\n", "LDMShouldEnforceParity");
            (v8->release_0)(v8);
          }

          else
          {
            IOLog("[AppleLockdownMode - %s] SEP check failed\n", "LDMShouldEnforceParity");
          }

          (v5->release_0)(v5);
        }

        else
        {
          IOLog("[AppleLockdownMode - %s] SEP check failed\n", "LDMShouldEnforceParity");
          v7 = 1;
        }

        (v3->release_0)(v3);
        (*(*v1 + 40))(v1);
        if (!v7)
        {
          v9 = IOService::serviceMatching("IODTNVRAM", 0);
          if (v9)
          {
            v10 = v9;
            v11 = IOService::waitForMatchingService(v9, 0xFFFFFFFFFFFFFFFFLL);
            if (v11)
            {
              v12 = v11;
              v13 = (v11->copyProperty_4)(v11, "oblit-inprogress");
              v14 = OSData::metaClass;
              v15 = OSMetaClassBase::safeMetaCast(v13, OSData::metaClass);
              if (v15)
              {
                IOLog("[AppleLockdownMode - %s] MobileObliteration check failed\n", "LDMShouldEnforceParity");
                (v15->release_0)(v15);
              }

              else
              {
                if (v13)
                {
                  (v13->release_0)(v13);
                }

                IOLog("[AppleLockdownMode - %s] MobileObliteration check passed\n", "LDMShouldEnforceParity");
              }

              (v12->release_0)(v12);
              (*(*v10 + 40))(v10);
              if (!v15)
              {
                LDMShouldEnforceParity(v14, &v17);
                return v17;
              }
            }

            else
            {
              LDMShouldEnforceParity(v10);
            }
          }

          else
          {
            IOLog("[AppleLockdownMode - %s] MobileObliteration check failed\n");
          }
        }
      }

      else
      {
        LDMShouldEnforceParity(v1);
      }
    }

    else
    {
      IOLog("[AppleLockdownMode - %s] SEP check failed\n");
    }
  }

  return 0;
}

void LDMCheckParity(void *a1)
{
  if (LDMShouldEnforceParity())
  {
    IOLog("[AppleLockdownMode - %s] enforcing parity check\n", "LDMCheckParity");
    v3 = 0;
    v2 = 1;
    if (ACMKernGetEnvironmentVariable(41, &v3, &v2))
    {
      IOLog("[AppleLockdownMode - %s] could not get environment variable from ACM: %d\n");
    }

    else
    {
      lockdown_mode_state = get_lockdown_mode_state();
      IOLog("[AppleLockdownMode - %s] state in ACM: %d, in nvram: %d\n", "LDMCheckParity", v3, lockdown_mode_state != 0);
      if (lockdown_mode_state || !v3)
      {
        if (lockdown_mode_state)
        {
          if (!v3)
          {
            IOLog("[AppleLockdownMode - %s] setting state to off in nvram because state in ACM is also off (not rebooting)\n", "LDMCheckParity");
            disable_lockdown_mode();
          }
        }
      }

      else
      {
        IOLog("[AppleLockdownMode - %s] setting state to on in nvram because state in ACM is also on (not rebooting)\n", "LDMCheckParity");
        enable_lockdown_mode();
      }
    }
  }

  else
  {
    IOLog("[AppleLockdownMode - %s] skipping parity check\n");
  }
}

BOOL AppleLockdownMode::start(AppleLockdownMode *this, IOService *a2)
{
  {
    IOLog("[AppleLockdownMode - %s] started\n", "start");
    new_thread = 0;
    v3 = kernel_thread_start(LDMCheckParity, this, &new_thread);
    v4 = v3 == 0;
    if (v3)
    {
      IOLog("[AppleLockdownMode - %s] unable to start LDMCheckParity thread: %d\n", "start", v3);
    }

    else
    {
      thread_deallocate(new_thread);
    }
  }

  else
  {
    IOLog("[AppleLockdownMode - %s] failed to start IOService\n", "start");
    return 0;
  }

  return v4;
}

OSMetaClass *_GLOBAL__sub_I_AppleLockdownMode_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleLockdownMode::gMetaClass, "AppleLockdownMode", &IOService::gMetaClass, 0x88u);
  result->__vftable = off_246C8;
  return result;
}

uint64_t ACMKernelTransport(_BYTE *a1, char a2, uint64_t a3, const void *a4, size_t a5, void *a6, IOByteCount *a7)
{
  v33 = 0;
  if (a7)
  {
    if ((a6 != 0) != (*a7 != 0))
    {
LABEL_3:
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "( ((outSize != nullptr && *outSize > 0) && outBuffer != nullptr) || ((outSize == nullptr || *outSize == 0) && outBuffer == nullptr))", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 125);
      v13 = 4294967293;
LABEL_37:
      IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelTransport", "ACMKernelTransport", v13);
      return v13;
    }
  }

  else if (a6)
  {
    goto LABEL_3;
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transportContext", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 126);
    v13 = 4294967291;
    goto LABEL_37;
  }

  if (ACMKernelTransport::_acmService)
  {
    goto LABEL_14;
  }

  v14 = IOService::serviceMatching("AppleCredentialManager", 0);
  if (!v14)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "serviceMatchingDict", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 100);
    v13 = 4294967291;
LABEL_11:
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelTransport", "initAppleCredentialService", v13);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = IOService::waitForMatchingService(v14, 0xFFFFFFFFFFFFFFFFLL);
  v17 = v16;
  if (v16)
  {
    v13 = 0;
    ACMKernelTransport::_acmService = v16;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "service", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 103);
    v13 = 4294967291;
  }

  (v15->release_0)(v15);
  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v13)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v13, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 130);
    goto LABEL_37;
  }

  if (!ACMKernelTransport::_acmService)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "_acmService", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 131);
    goto LABEL_50;
  }

LABEL_14:
  v18 = LibCall_BuildCommand(a2, 0, 0, a4, a5, &v33);
  if (!v18)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "command", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 135);
LABEL_50:
    v13 = 4294967291;
    goto LABEL_37;
  }

  v19 = v18;
  v20 = ACMKernelTransport::_acmService;
  if (a7)
  {
    v21 = *a7;
  }

  else
  {
    v21 = 0;
  }

  v22 = v33;
  v37 = v21;
  if (!ACMKernelTransport::_acmService)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "acmService", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 54);
LABEL_43:
    v30 = 4294967293;
LABEL_35:
    IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelTransport", "performCommand", v30);
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v30, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 138);
    goto LABEL_36;
  }

  if (v33 <= 7)
  {
    ACMKernelTransport_cold_1();
    goto LABEL_43;
  }

  v23 = v18[4];
  v24 = OSSymbol::withCString("performCommandV2");
  if (!v24)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "performCommandFunc", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 60);
    v30 = 4294967291;
    goto LABEL_35;
  }

  v25 = v24;
  v26 = IOMemoryDescriptor::withAddress(v19, v22, 2u);
  if (v21)
  {
    v27 = IOMemoryDescriptor::withAddress(a6, *a7, 1u);
  }

  else
  {
    v27 = 0;
  }

  if (*a1)
  {
    v28 = -2;
  }

  else
  {
    v28 = -1;
  }

  v34 = v28;
  v35 = 0;
  v36 = v23;
  v29 = (*(*v20 + 936))(v20, v25, 1, v26, v27, &v37, &v34);
  v30 = v29;
  if (v29)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v29, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 75);
  }

  else if (a7)
  {
    *a7 = v37;
  }

  (v25->release_0)(v25);
  if (v26)
  {
    (v26->release_0)(v26);
  }

  if (v27)
  {
    (v27->release_0)(v27);
  }

  if (v30)
  {
    goto LABEL_35;
  }

LABEL_36:
  v31 = v33;
  acm_mem_free_info("<data>", v19, v33, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 142, "ACMKernelTransport");
  acm_mem_free_data(v19, v31);
  v13 = v30;
  if (v30)
  {
    goto LABEL_37;
  }

  return v13;
}

void ACMKernelTransport_cold_1()
{
  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inSize >= sizeof(acm_command_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 30);
  IOLog("%s: %s: returning, err = %ld.\n", "ACMKernelTransport", "validateCommand", -3);
  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", -3, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/ACMKernelLib/ACMKernelTransport.cpp", 57);
}

_BYTE *LibCall_BuildCommand(char a1, char a2, char a3, const void *a4, size_t a5, void *a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_BuildCommand");
  }

  if (!a4 && a5)
  {
    v15 = 19;
    v14 = "!dataSize || data";
LABEL_15:
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", v14, 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v15);
LABEL_17:
    v12 = 0;
    goto LABEL_10;
  }

  if (!a6)
  {
    v15 = 20;
    v14 = "commandSize";
    goto LABEL_15;
  }

  if (a5 >= 0xFFFFFFFFFFFFFFF8)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "__os_warn_unused(__builtin_add_overflow((sizeof(acm_command_t)), (dataSize), (&cmdSize))) == 0 ", 1, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 21);
    goto LABEL_17;
  }

  v12 = acm_mem_alloc_data(a5 + 8);
  acm_mem_alloc_info("<data>", v12, a5 + 8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 22, "LibCall_BuildCommand");
  if (v12)
  {
    *a6 = a5 + 8;
    *v12 = 1396920900;
    v12[4] = a1;
    v12[5] = a2;
    v12[6] = a3;
    v12[7] = 2;
    if (a5)
    {
      memmove(v12 + 8, a4, a5);
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "cmd = (acm_command_t *)({ size_t sizeVal = (cmdSize); void *ptr = acm_mem_alloc_data(sizeVal); acm_mem_alloc_info(<data>, ptr, sizeVal, /Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c, 22, __func__); ptr; })", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 22);
  }

LABEL_10:
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: returning.\n", "ACM", "LibCall_BuildCommand");
  }

  return v12;
}

uint64_t LibCall_ACMContextCreate(uint64_t (*a1)(uint64_t, uint64_t, void, void, void, _BYTE *, uint64_t *), uint64_t a2, void *a3, char a4, _BYTE *a5, int a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextCreate");
  }

  if (!a1 || !a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport && context", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 46);
LABEL_17:
    v15 = 70;
    v16 = 4294967293;
    goto LABEL_26;
  }

  if ((a4 & 1) != 0 && (a6 & 1) == 0)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "trackingSupported || !nonAutoDisposableRequested", 0, "nonAutoDisposable requires tracking support", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 47);
    goto LABEL_17;
  }

  v12 = IOMallocTypeImpl();
  acm_mem_alloc_info("ACMHandleWithPayload", v12, 20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 49, "LibCall_ACMContextCreate");
  if (!v12)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handleWithPayload", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 50);
    v15 = 70;
    v16 = 4294967292;
    goto LABEL_26;
  }

  memset(v21, 0, sizeof(v21));
  if (a6)
  {
    v20 = 21;
    if (a4)
    {
      v13 = 52;
    }

    else
    {
      v13 = 36;
    }

    v14 = a1(a2, v13, 0, 0, 0, v21, &v20);
    if (!v14)
    {
      if (v20 != 21)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseSize == sizeof(response)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 60);
LABEL_31:
        v16 = 4294967291;
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    v16 = v14;
    if (v14 != -3)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v14, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 59);
      goto LABEL_33;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err != kACMErrorBadParameter", 0, "fallback", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 58);
  }

  v20 = 17;
  v17 = a1(a2, 1, 0, 0, 0, v21, &v20);
  if (v17)
  {
    v16 = v17;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v17, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 69);
LABEL_33:
    acm_mem_free_info("ACMHandleWithPayload", v12, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 89, "LibCall_ACMContextCreate");
    IOFreeTypeImpl();
    v15 = 70;
    goto LABEL_26;
  }

  if (v20 != 17)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseSize == sizeof(response.body)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 70);
    goto LABEL_31;
  }

LABEL_23:
  v18 = *&v21[17];
  *v12 = *v21;
  v12[4] = v18;
  *a3 = v12;
  v16 = 0;
  if (a5)
  {
    *a5 = v21[16];
  }

  v15 = 10;
LABEL_26:
  if (v15 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextCreate", v16);
  }

  return v16;
}

uint64_t LibCall_ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, _BYTE *a5, int a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextCreateWithExternalForm");
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 102);
LABEL_14:
    v13 = 70;
    v14 = -3;
    goto LABEL_24;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "externalForm", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 103);
LABEL_13:
    a1 = 0;
    goto LABEL_14;
  }

  if (a4 != 16)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMHandle)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 104);
    goto LABEL_13;
  }

  memset(v19, 0, 9);
  if (a6)
  {
    v18 = 9;
    v12 = (a1)(a2, 37, 0, a3, 16, v19, &v18);
    if (!v12)
    {
      if (v18 != 9)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseSize == sizeof(response)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 113);
LABEL_31:
        v14 = -5;
        goto LABEL_33;
      }

      goto LABEL_19;
    }

    v14 = v12;
    if (v12 != -3)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v12, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 112);
      goto LABEL_33;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err != kACMErrorBadParameter", 0, "fallback", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 111);
  }

  v18 = 5;
  v15 = (a1)(a2, 18, 0, a3, 16, v19, &v18);
  if (!v15)
  {
    if (v18 != 5)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseSize == sizeof(response.body)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 123);
      goto LABEL_31;
    }

LABEL_19:
    if (LODWORD(v19[0]))
    {
      a1 = IOMallocTypeImpl();
      acm_mem_alloc_info("ACMHandleWithPayload", a1, 20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 128, "LibCall_ACMContextCreateWithExternalForm");
      if (!a1)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handleWithPayload", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 129);
        v13 = 70;
        v14 = -4;
        goto LABEL_24;
      }

      v16 = *(v19 + 5);
      *a1 = *a3;
      *(a1 + 16) = v16;
      v14 = 0;
      if (a5)
      {
        *a5 = BYTE4(v19[0]);
      }
    }

    else
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "response.body.found", 0, "context not found", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 126);
      v14 = 0;
      a1 = 0;
    }

    v13 = 10;
    goto LABEL_24;
  }

  v14 = v15;
  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v15, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 122);
LABEL_33:
  a1 = 0;
  v13 = 70;
LABEL_24:
  if (v13 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextCreateWithExternalForm", v14);
  }

  return a1;
}

uint64_t LibCall_ACMContextDelete(uint64_t (*a1)(uint64_t, uint64_t, void, const void *, uint64_t, void, void), uint64_t a2, const void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        v8 = a1(a2, 2, 0, a3, 16, 0, 0);
        if (v8)
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v8, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 163);
        }
      }

      goto LABEL_8;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 159);
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 158);
    if (a3)
    {
LABEL_8:
      acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
      IOFreeTypeImpl();
      v9 = 0;
      v10 = 10;
      goto LABEL_9;
    }
  }

  v10 = 70;
  v9 = 4294967293;
LABEL_9:
  if (v10 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v9);
  }

  return v9;
}

uint64_t LibCall_ACMContexAddCredentialWithScope(uint64_t (*a1)(uint64_t, uint64_t, void, const void *, unint64_t, void, void), uint64_t a2, _OWORD *a3, _DWORD *a4, int a5)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContexAddCredentialWithScope");
  }

  v20 = 0;
  if (!a3 && a5 != 2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context || scope == kACMScopeGlobal", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 186);
LABEL_18:
    v16 = 70;
    v13 = 4294967293;
    goto LABEL_13;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 187);
    goto LABEL_18;
  }

  SerializedAddCredentialSize = GetSerializedAddCredentialSize(a3, a4, a5, &v20);
  if (SerializedAddCredentialSize)
  {
    v18 = SerializedAddCredentialSize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedAddCredentialSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 190);
    v16 = 70;
    v13 = v18;
    goto LABEL_13;
  }

  v11 = v20;
  v12 = acm_mem_alloc_data(v20);
  acm_mem_alloc_info("<data>", v12, v11, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 192, "LibCall_ACMContexAddCredentialWithScope");
  if (!v12)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inputBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 193);
    v16 = 70;
    v13 = 4294967292;
    goto LABEL_13;
  }

  v13 = SerializeAddCredential(a3, a4, a5, v12, &v20);
  if (v13)
  {
    v19 = 196;
  }

  else
  {
    v14 = a1(a2, 5, 0, v12, v20, 0, 0);
    if (!v14)
    {
      goto LABEL_10;
    }

    v19 = 199;
    v13 = v14;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v13, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v19);
LABEL_10:
  v15 = v20;
  acm_mem_free_info("<data>", v12, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 203, "LibCall_ACMContexAddCredentialWithScope");
  acm_mem_free_data(v12, v15);
  if (v13)
  {
    v16 = 70;
  }

  else
  {
    v16 = 10;
  }

LABEL_13:
  if (v16 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContexAddCredentialWithScope", v13);
  }

  return v13;
}

uint64_t LibCall_ACMContextContainsCredentialTypeEx(uint64_t (*a1)(uint64_t, uint64_t, void, const void *, unint64_t, int *, uint64_t *), uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextContainsCredentialTypeEx");
  }

  v23 = 0;
  v22 = 0;
  v21 = 4;
  if (a3)
  {
    Size = LibSer_GetSerializedContainsCredential_GetSize(a3, a4, a5, &v23);
    if (Size)
    {
      v15 = Size;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", Size, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 221);
      v17 = 70;
    }

    else
    {
      v11 = v23;
      v12 = acm_mem_alloc_data(v23);
      acm_mem_alloc_info("<data>", v12, v11, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 223, "LibCall_ACMContextContainsCredentialTypeEx");
      if (v12)
      {
        SerializedContainsCredential_Serialize = LibSer_GetSerializedContainsCredential_Serialize(a3, a4, a5, v12, &v23);
        if (SerializedContainsCredential_Serialize)
        {
          v19 = SerializedContainsCredential_Serialize;
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedContainsCredential_Serialize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 227);
          v15 = v19;
        }

        else
        {
          v14 = a1(a2, 4, 0, v12, v23, &v22, &v21);
          if (v14)
          {
            v20 = v14;
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v14, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 230);
            v15 = v20;
          }

          else if (v22)
          {
            v15 = 0;
          }

          else
          {
            v15 = 4294967289;
          }
        }

        v16 = v23;
        acm_mem_free_info("<data>", v12, v23, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 236, "LibCall_ACMContextContainsCredentialTypeEx");
        acm_mem_free_data(v12, v16);
        if (v15)
        {
          v17 = 70;
        }

        else
        {
          v17 = 10;
        }
      }

      else
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inputBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 224);
        v17 = 70;
        v15 = 4294967292;
      }
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 218);
    v17 = 70;
    v15 = 4294967293;
  }

  if (v17 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextContainsCredentialTypeEx", v15);
  }

  return v15;
}

uint64_t LibCall_ACMContexRemoveCredentialsByTypeAndScope(uint64_t (*a1)(uint64_t, uint64_t, void, _OWORD *, uint64_t, void, void), uint64_t a2, _OWORD *a3, int a4, int a5)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContexRemoveCredentialsByTypeAndScope");
  }

  if (a3 || a5 == 2)
  {
    v10 = acm_mem_alloc_data(24);
    acm_mem_alloc_info("<data>", v10, 24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 251, "LibCall_ACMContexRemoveCredentialsByTypeAndScope");
    if (v10)
    {
      if (a3)
      {
        *v10 = *a3;
      }

      else
      {
        *v10 = 0;
        *(v10 + 1) = 0;
      }

      *(v10 + 4) = a4;
      *(v10 + 5) = a5;
      v11 = a1(a2, 9, 0, v10, 24, 0, 0);
      v12 = v11;
      if (v11)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v11, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 263);
        v13 = 70;
      }

      else
      {
        v13 = 10;
      }

      acm_mem_free_info("<data>", v10, 0x18uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 267, "LibCall_ACMContexRemoveCredentialsByTypeAndScope");
      acm_mem_free_data(v10, 0x18uLL);
    }

    else
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inputBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 252);
      v13 = 70;
      v12 = 4294967292;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context || scope == kACMScopeGlobal", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 249);
    v13 = 70;
    v12 = 4294967293;
  }

  if (v13 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContexRemoveCredentialsByTypeAndScope", v12);
  }

  return v12;
}

uint64_t LibCall_ACMContextRemoveCredentialsByValueAndScope(uint64_t (*a1)(uint64_t, uint64_t, void, const void *, unint64_t, void, void), uint64_t a2, _OWORD *a3, _DWORD *a4, int a5)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextRemoveCredentialsByValueAndScope");
  }

  v20 = 0;
  if (!a3 && a5 != 2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context || scope == kACMScopeGlobal", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 279);
LABEL_18:
    v16 = 70;
    v13 = 4294967293;
    goto LABEL_13;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 280);
    goto LABEL_18;
  }

  v10 = GetSerializedRemoveCredentialSize(a3, a4, a5, &v20);
  if (v10)
  {
    v18 = v10;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v10, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 283);
    v16 = 70;
    v13 = v18;
    goto LABEL_13;
  }

  v11 = v20;
  v12 = acm_mem_alloc_data(v20);
  acm_mem_alloc_info("<data>", v12, v11, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 285, "LibCall_ACMContextRemoveCredentialsByValueAndScope");
  if (!v12)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inputBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 286);
    v16 = 70;
    v13 = 4294967292;
    goto LABEL_13;
  }

  v13 = SerializeRemoveCredential(a3, a4, a5, v12, &v20);
  if (v13)
  {
    v19 = 289;
  }

  else
  {
    v14 = a1(a2, 6, 0, v12, v20, 0, 0);
    if (!v14)
    {
      goto LABEL_10;
    }

    v19 = 292;
    v13 = v14;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v13, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v19);
LABEL_10:
  v15 = v20;
  acm_mem_free_info("<data>", v12, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 298, "LibCall_ACMContextRemoveCredentialsByValueAndScope");
  acm_mem_free_data(v12, v15);
  if (v13)
  {
    v16 = 70;
  }

  else
  {
    v16 = 10;
  }

LABEL_13:
  if (v16 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextRemoveCredentialsByValueAndScope", v13);
  }

  return v13;
}

uint64_t LibCall_ACMContextVerifyPolicyAndCopyRequirementEx(uint64_t (*a1)(uint64_t, uint64_t, void, const void *, size_t, unsigned int *, unint64_t *), uint64_t a2, _OWORD *a3, char *__s1, _BOOL8 a5, _DWORD *a6, unsigned int a7, uint64_t a8, BOOL *a9, int **a10, char a11)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
  }

  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 4096;
  v41 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 331);
    goto LABEL_45;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 332);
    goto LABEL_45;
  }

  if (!__s1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "policyId", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 333);
    goto LABEL_45;
  }

  if (!a9)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "policySatisfied", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 334);
    goto LABEL_45;
  }

  if (a6 && a7)
  {
    v19 = a7;
    v20 = a6 + 4;
    while (*(v20 - 4) != 13)
    {
      v20 += 6;
      if (!--v19)
      {
        goto LABEL_23;
      }
    }

    v21 = *(v20 - 1);
    v22 = *v20;
    if (v21)
    {
      v23 = v22 == 1;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "param.parameterData && param.parameterDataLength == sizeof(uint8_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 310);
      goto LABEL_23;
    }

    if (a11)
    {
      a5 = *v21 != 0;
      goto LABEL_23;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "!preflightFound || allowPreflightParameter", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 339);
LABEL_45:
    v34 = 4294967293;
    goto LABEL_35;
  }

  if (a6 || a7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "( (parametersCount > 0 && parameters != ((void*)0)) || ((parametersCount == 0) && parameters == ((void*)0)))", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 335);
    goto LABEL_45;
  }

LABEL_23:
  v24 = a2;
  SerializedVerifyPolicySize = GetSerializedVerifyPolicySize(a3, __s1, a5, a8, a6, a7, &v45);
  if (SerializedVerifyPolicySize)
  {
    v34 = SerializedVerifyPolicySize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedVerifyPolicySize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 346);
    goto LABEL_35;
  }

  v26 = a1;
  v27 = v45;
  v28 = acm_mem_alloc_data(v45);
  acm_mem_alloc_info("<data>", v28, v27, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 348, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
  if (!v28)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inputBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 349);
    v34 = 4294967292;
    goto LABEL_35;
  }

  v44 = v45;
  v29 = SerializeVerifyPolicy(a3, __s1, a5, a8, a6, a7, v28, &v44);
  if (v29)
  {
    v38 = v29;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v29, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 353);
    v30 = 0;
    v34 = v38;
    goto LABEL_33;
  }

  v30 = acm_mem_alloc_data(4096);
  acm_mem_alloc_info("<data>", v30, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 355, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
  if (!v30)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "reqBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 356);
    v34 = 4294967292;
    goto LABEL_33;
  }

  v31 = v26(v24, 3, 0, v28, v44, v30, &v43);
  if (v31)
  {
    v34 = v31;
    v39 = v31;
    v40 = 359;
  }

  else
  {
    v32 = v43;
    if (v43 <= 3)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "reqBufferSize >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 360);
      v34 = 4294967291;
      goto LABEL_33;
    }

    *a9 = *v30 != 0;
    if (!a10)
    {
      v34 = 0;
      goto LABEL_33;
    }

    v33 = DeserializeRequirement(v30 + 1, v32 - 4, &v42, &v41);
    v34 = v33;
    if (!v33)
    {
      *a10 = v42;
      goto LABEL_33;
    }

    v39 = v33;
    v40 = 369;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v39, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v40);
LABEL_33:
  v35 = v45;
  acm_mem_free_info("<data>", v28, v45, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 379, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
  acm_mem_free_data(v28, v35);
  if (v30)
  {
    acm_mem_free_info("<data>", v30, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 382, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
    acm_mem_free_data(v30, 0x1000uLL);
  }

LABEL_35:
  if (v34 && v42)
  {
    Util_DeallocRequirement(v42);
  }

  if (v34)
  {
    v36 = 70;
  }

  else
  {
    v36 = 10;
  }

  if (v36 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx", v34);
  }

  return v34;
}

uint64_t LibCall_ACMRequirementDelete(uint64_t a1, int *a2)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMRequirementDelete");
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 395);
LABEL_12:
    v6 = 70;
    v5 = 4294967293;
    goto LABEL_7;
  }

  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 396);
    goto LABEL_12;
  }

  v4 = Util_DeallocRequirement(a2);
  v5 = v4;
  if (v4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v4, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 399);
    v6 = 70;
  }

  else
  {
    v6 = 10;
  }

LABEL_7:
  if (v6 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMRequirementDelete", v5);
  }

  return v5;
}

void LibCall_ACMKernelControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, uint64_t, uint64_t), uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl");
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 410);
LABEL_19:
    v17 = 70;
    v16 = -3;
    goto LABEL_14;
  }

  if (a4)
  {
    v14 = a5 - 4097 < 0xFFFFFFFFFFFFF000;
  }

  else
  {
    v14 = a5 != 0;
  }

  if (v14)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(data && dataLength && dataLength <= 4096) || (!data && !dataLength)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 411);
    goto LABEL_19;
  }

  __chkstk_darwin();
  v15 = (&v18 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0));
  bzero(v15, a5 + 4);
  *v15 = a3;
  if (a5)
  {
    if (a5 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      __break(0xBFFEu);
      return;
    }

    memcpy(v15 + 1, a4, a5);
  }

  v16 = a1(a2, 26, 0, &v18 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0), a5 + 4, a6, a7);
  if (v16)
  {
    v17 = 70;
  }

  else
  {
    v17 = 10;
  }

LABEL_14:
  if (v17 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl", v16);
  }
}

void LibCall_ACMCredentialDelete(_DWORD *a1)
{
  if (a1)
  {

    Util_DeallocCredential(a1);
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 442);
  }
}

uint64_t LibCall_ACMCredentialGetType(unsigned int *a1)
{
  if (a1)
  {
    return *a1;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 456);
  return 0;
}

__n128 LibCall_ACMCredentialSetProperty(__n128 *a1, int a2, __n128 *__src, size_t __len, __n128 result)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 467);
    return result;
  }

  v5 = __len;
  if ((__src != 0) != (__len != 0))
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(data && dataLength) || (!data && !dataLength)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 468);
    return result;
  }

  if (a2 > 305)
  {
    if (a2 > 600)
    {
      if (a2 > 800)
      {
        if (a2 <= 900)
        {
          if (a2 != 801)
          {
            if (a2 == 802)
            {
              if (a1->n128_u32[0] == 17)
              {
                if (__len == 65)
                {
                  v7 = a1 + 3;
LABEL_91:
                  v12 = __src;
                  v13 = 65;
                  goto LABEL_92;
                }

                v23 = 670;
LABEL_182:
                IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(credData->accPubKey)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v23);
                return result;
              }

              v21 = 666;
LABEL_164:
              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeSecureIntent", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v21);
              return result;
            }

            goto LABEL_120;
          }

          if (a1->n128_u32[0] != 17)
          {
            v21 = 656;
            goto LABEL_164;
          }

          if (__len != 16)
          {
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(credData->accUUID)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 660);
            return result;
          }

          result = *__src;
LABEL_111:
          a1[2] = result;
          return result;
        }

        if (a2 != 901)
        {
          if (a2 == 1001)
          {
            if (a1->n128_u32[0] == 21)
            {
              if (__len > 0x80)
              {
                IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength <= sizeof(credData->signature)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 688);
              }

              else
              {
                memmove(&a1[2].n128_u8[4], __src, __len);
                a1[2].n128_u32[0] = v5;
              }
            }

            else
            {
              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeSignature", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 685);
            }

            return result;
          }

LABEL_120:
          v14 = 705;
          goto LABEL_121;
        }

        if (a1->n128_u32[0] != 20)
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeAP", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 676);
          return result;
        }

        if (__len != 32)
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(credData->confirmationHash)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 679);
          return result;
        }

LABEL_110:
        result = *__src;
        a1[3] = __src[1];
        goto LABEL_111;
      }

      if (a2 != 601)
      {
        if (a2 != 602)
        {
          if (a2 != 701)
          {
            goto LABEL_120;
          }

          if (a1->n128_u32[0] != 13)
          {
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypePassphraseExtractable", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 551);
            return result;
          }

          if (__len < 0x81)
          {
            a1[2].n128_u32[0] = __len;
            v7 = (a1 + 36);
LABEL_76:
            v12 = __src;
            v13 = __len;
LABEL_92:
            memmove(v7, v12, v13);
            return result;
          }

          v22 = 552;
          goto LABEL_185;
        }

        if (a1->n128_u32[0] == 12 || a1->n128_u32[0] == 15)
        {
          if (__len != 4)
          {
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMKextDenyListRevision)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 651);
            return result;
          }

LABEL_115:
          a1[2].n128_u32[1] = __src->n128_u32[0];
          return result;
        }

        v16 = 650;
LABEL_130:
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeKextDenyListApplePay || credential->type == kACMCredentialTypeKextDenyListFairPlay", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v16);
        return result;
      }

      if (a1->n128_u32[0] != 12 && a1->n128_u32[0] != 15)
      {
        v16 = 643;
        goto LABEL_130;
      }

      if (__len != 4)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMKextDenyListFormat)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 644);
        return result;
      }

LABEL_127:
      a1[2].n128_u32[0] = __src->n128_u32[0];
      return result;
    }

    if (a2 <= 500)
    {
      if (a2 != 306)
      {
        if (a2 != 400)
        {
          if (a2 != 401)
          {
            goto LABEL_120;
          }

          if (a1->n128_u32[0] == 7)
          {
            if (__len == 24)
            {
              result = *__src;
              a1[5].n128_u64[0] = __src[1].n128_u64[0];
              a1[4] = result;
            }

            else
            {
              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == 24", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 619);
            }

            return result;
          }

          v19 = 618;
LABEL_155:
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeUserOutputDisplayed", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v19);
          return result;
        }

        if (a1->n128_u32[0] != 7)
        {
          v19 = 612;
          goto LABEL_155;
        }

        if (__len == 32)
        {
          goto LABEL_110;
        }

        v15 = 613;
LABEL_168:
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == 32", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v15);
        return result;
      }

      if (a1->n128_u32[0] == 3)
      {
        if (__len > 0x80)
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength <= sizeof(credData->unlockSecret)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 698);
        }

        else
        {
          memmove(a1[13].n128_u64 + 1, __src, __len);
          *(&a1[12].n128_u32[3] + 1) = v5;
        }

        return result;
      }

      v17 = 695;
LABEL_158:
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeBiometryMatched", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v17);
      return result;
    }

    if (a2 != 501)
    {
      if (a2 != 502)
      {
        if (a2 != 503)
        {
          goto LABEL_120;
        }

        if (a1->n128_u32[0] == 10)
        {
          if (__len == 16)
          {
            result = *__src;
            goto LABEL_72;
          }

          v24 = 637;
LABEL_178:
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(uuid_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v24);
          return result;
        }

        v20 = 636;
LABEL_160:
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypePasscodeValidated2", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v20);
        return result;
      }

      if (a1->n128_u32[0] != 10)
      {
        v20 = 630;
        goto LABEL_160;
      }

      if (__len != 16)
      {
        v24 = 631;
        goto LABEL_178;
      }

LABEL_98:
      result = *__src;
      *(a1 + 52) = *__src;
      return result;
    }

    if (a1->n128_u32[0] != 10)
    {
      v20 = 624;
      goto LABEL_160;
    }

    if (__len != 16)
    {
      v24 = 625;
      goto LABEL_178;
    }

LABEL_104:
    result = *__src;
    *(a1 + 36) = *__src;
    return result;
  }

  if (a2 > 299)
  {
    if (a2 <= 302)
    {
      if (a2 == 300)
      {
        if (a1->n128_u32[0] != 3)
        {
          v17 = 559;
          goto LABEL_158;
        }

        if (__len == 16)
        {
          goto LABEL_104;
        }

        v9 = 560;
      }

      else
      {
        if (a2 == 301)
        {
          if (a1->n128_u32[0] != 3)
          {
            v17 = 571;
            goto LABEL_158;
          }

          if (__len != 32)
          {
            v15 = 572;
            goto LABEL_168;
          }

          result = *__src;
          *(a1 + 84) = __src[1];
LABEL_72:
          *(a1 + 68) = result;
          return result;
        }

        if (a1->n128_u32[0] != 3)
        {
          v17 = 565;
          goto LABEL_158;
        }

        if (__len == 16)
        {
          goto LABEL_98;
        }

        v9 = 566;
      }

      goto LABEL_139;
    }

    if (a2 == 303)
    {
      if (a1->n128_u32[0] == 3)
      {
        if (__len == 65)
        {
          v7 = (a1 + 120);
          goto LABEL_91;
        }

        v23 = 581;
        goto LABEL_182;
      }

      v17 = 577;
      goto LABEL_158;
    }

    if (a2 == 304)
    {
      if (a1->n128_u32[0] != 3)
      {
        v17 = 587;
        goto LABEL_158;
      }

      if (__len == 16)
      {
        result = *__src;
        *(a1 + 185) = *__src;
      }

      else
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(credData->identityUuid)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 591);
      }
    }

    else
    {
      if (a1->n128_u32[0] != 3)
      {
        v17 = 597;
        goto LABEL_158;
      }

      if (__len == 4)
      {
        *(&a1[12].n128_u32[2] + 1) = __src->n128_u32[0];
      }

      else
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(credData->originator)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 601);
      }
    }
  }

  else
  {
    if (a2 > 101)
    {
      switch(a2)
      {
        case 102:
          if (__len != 4)
          {
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(int32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 525);
            return result;
          }

          if (a1->n128_u32[0] != 1)
          {
            v14 = 531;
LABEL_121:
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v14);
            return result;
          }

          goto LABEL_115;
        case 200:
          if (a1->n128_u32[0] == 2)
          {
            if (__len < 0x81)
            {
              a1[2].n128_u32[1] = __len;
              v7 = (a1 + 40);
              goto LABEL_76;
            }

            v22 = 538;
LABEL_185:
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength <= 128", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v22);
            return result;
          }

          v18 = 537;
          break;
        case 201:
          if (a1->n128_u32[0] == 2)
          {
            if (__len != 4)
            {
              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMPassphrasePurpose)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 545);
              return result;
            }

            goto LABEL_127;
          }

          v18 = 544;
          break;
        default:
          goto LABEL_120;
      }

      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypePassphraseEntered", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v18);
      return result;
    }

    if (a2 != 5)
    {
      if (a2 != 100)
      {
        if (a2 != 101)
        {
          goto LABEL_120;
        }

        if (__len != 4)
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 500);
          return result;
        }

        v8 = a1->n128_u32[0];
        if (a1->n128_i32[0] <= 8)
        {
          if (v8 == 1 || v8 == 3)
          {
            goto LABEL_127;
          }
        }

        else if (v8 == 9 || v8 == 10 || v8 == 18)
        {
          goto LABEL_127;
        }

        v14 = 519;
        goto LABEL_121;
      }

      if (__len == 16)
      {
        v10 = a1->n128_u32[0];
        if (a1->n128_i32[0] > 8)
        {
          if (v10 == 9)
          {
            v11 = (a1 + 40);
            a1[2].n128_u32[1] = 16;
            goto LABEL_134;
          }

          if (v10 == 18)
          {
            v11 = (a1 + 36);
            goto LABEL_134;
          }
        }

        else
        {
          if (v10 == 1)
          {
            v11 = (a1 + 44);
            a1[2].n128_u32[2] = 16;
            goto LABEL_134;
          }

          if (v10 == 3)
          {
            v11 = (a1 + 104);
            a1[6].n128_u32[1] = 16;
LABEL_134:
            result = *__src;
            *v11 = *__src;
            return result;
          }
        }

        v14 = 492;
        goto LABEL_121;
      }

      v9 = 472;
LABEL_139:
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == 16", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v9);
      return result;
    }

    if (__len == 4)
    {
      a1->n128_u32[3] = __src->n128_u32[0];
    }

    else
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(uid_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 607);
    }
  }

  return result;
}

uint64_t LibCall_ACMCredentialGetPropertyData(int *a1, int a2, int **a3, uint64_t *a4)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 718);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "data", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 719);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "length", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 720);
    return 4294967293;
  }

  if (a2 <= 303)
  {
    if (a2 > 101)
    {
      if (a2 > 299)
      {
        if (a2 > 301)
        {
          if (a2 != 302)
          {
            if (*a1 == 3)
            {
              v12 = a1 + 30;
              goto LABEL_58;
            }

            v28 = 849;
            goto LABEL_154;
          }

          if (*a1 != 3)
          {
            v28 = 837;
            goto LABEL_154;
          }

          result = 0;
          v20 = a1 + 13;
        }

        else
        {
          if (a2 != 300)
          {
            if (*a1 == 3)
            {
              result = 0;
              v10 = a1 + 17;
              goto LABEL_82;
            }

            v28 = 843;
LABEL_154:
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeBiometryMatched", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v28);
            return 4294967293;
          }

          if (*a1 != 3)
          {
            v28 = 831;
            goto LABEL_154;
          }

          result = 0;
          v20 = a1 + 9;
        }

LABEL_95:
        *a3 = v20;
LABEL_130:
        v11 = 16;
        goto LABEL_131;
      }

      switch(a2)
      {
        case 102:
          if (*a1 != 1)
          {
            v23 = 804;
LABEL_115:
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v23);
            return 4294967293;
          }

          goto LABEL_102;
        case 200:
          if (*a1 == 2)
          {
            result = 0;
            *a3 = a1 + 10;
            v11 = a1[9];
            goto LABEL_131;
          }

          v13 = 811;
          break;
        case 201:
          if (*a1 == 2)
          {
LABEL_54:
            result = 0;
            v9 = a1 + 8;
            goto LABEL_103;
          }

          v13 = 817;
          break;
        default:
          goto LABEL_114;
      }

      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypePassphraseEntered", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v13);
      return 4294967293;
    }

    if (a2 <= 3)
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          result = 0;
          v9 = a1 + 6;
          goto LABEL_103;
        }

        if (a2 == 3)
        {
          result = 0;
          *a3 = a1;
LABEL_104:
          v11 = 4;
          goto LABEL_131;
        }

        goto LABEL_114;
      }

      result = 0;
      *a3 = a1 + 4;
      v11 = 8;
LABEL_131:
      *a4 = v11;
      return result;
    }

    if (a2 <= 99)
    {
      if (a2 == 4)
      {
        result = 0;
        v9 = a1 + 1;
        goto LABEL_103;
      }

      if (a2 == 5)
      {
        result = 0;
        v9 = a1 + 3;
LABEL_103:
        *a3 = v9;
        goto LABEL_104;
      }

      goto LABEL_114;
    }

    if (a2 != 100)
    {
      if (*a1 > 0x12 || ((1 << *a1) & 0x4060A) == 0)
      {
        v23 = 792;
        goto LABEL_115;
      }

      goto LABEL_54;
    }

    v21 = *a1;
    if (*a1 > 8)
    {
      if (v21 == 9)
      {
        v22 = 10;
        goto LABEL_127;
      }

      if (v21 == 18)
      {
        v22 = 9;
        goto LABEL_127;
      }
    }

    else
    {
      if (v21 == 1)
      {
        v22 = 11;
        goto LABEL_127;
      }

      if (v21 == 3)
      {
        v22 = 26;
LABEL_127:
        v18 = &a1[v22];
LABEL_128:
        *a3 = v18;
        result = Util_isNullOrZeroMemory(v18, 16);
        if (result)
        {
          result = 0;
          *a4 = 0;
          *a3 = 0;
          return result;
        }

        goto LABEL_130;
      }
    }

    v23 = 763;
    goto LABEL_115;
  }

  if (a2 <= 502)
  {
    if (a2 > 399)
    {
      if (a2 > 500)
      {
        if (a2 == 501)
        {
          if (*a1 == 10)
          {
            v18 = a1 + 9;
            goto LABEL_128;
          }

          v30 = 887;
        }

        else
        {
          if (*a1 == 10)
          {
            v18 = a1 + 13;
            goto LABEL_128;
          }

          v30 = 898;
        }

        goto LABEL_152;
      }

      if (a2 != 400)
      {
        if (a2 != 401)
        {
          goto LABEL_114;
        }

        if (*a1 == 7)
        {
          result = 0;
          *a3 = a1 + 16;
          v11 = 24;
          goto LABEL_131;
        }

        v29 = 881;
LABEL_150:
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeUserOutputDisplayed", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v29);
        return 4294967293;
      }

      if (*a1 != 7)
      {
        v29 = 875;
        goto LABEL_150;
      }

      result = 0;
      v10 = a1 + 8;
LABEL_82:
      *a3 = v10;
      v11 = 32;
      goto LABEL_131;
    }

    if (a2 != 304)
    {
      if (a2 == 305)
      {
        if (*a1 == 3)
        {
          result = 0;
          v9 = (a1 + 201);
          goto LABEL_103;
        }

        v28 = 869;
      }

      else
      {
        if (a2 != 306)
        {
          goto LABEL_114;
        }

        if (*a1 == 3)
        {
          result = 0;
          v11 = *(a1 + 205);
          v14 = (a1 + 209);
          if (!*(a1 + 205))
          {
            v14 = 0;
          }

          *a3 = v14;
          goto LABEL_131;
        }

        v28 = 988;
      }

      goto LABEL_154;
    }

    if (*a1 != 3)
    {
      v28 = 863;
      goto LABEL_154;
    }

    result = 0;
    v20 = (a1 + 185);
    goto LABEL_95;
  }

  if (a2 <= 800)
  {
    if (a2 <= 601)
    {
      if (a2 != 503)
      {
        if (a2 == 601)
        {
          if (*a1 != 12 && *a1 != 15)
          {
            v7 = 921;
LABEL_122:
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeKextDenyListApplePay || credential->type == kACMCredentialTypeKextDenyListFairPlay", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v7);
            return 4294967293;
          }

          goto LABEL_54;
        }

        goto LABEL_114;
      }

      if (*a1 == 10)
      {
        v18 = a1 + 17;
        goto LABEL_128;
      }

      v30 = 909;
LABEL_152:
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypePasscodeValidated2", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v30);
      return 4294967293;
    }

    if (a2 != 602)
    {
      if (a2 == 701)
      {
        if (*a1 != 13)
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypePassphraseExtractable", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 824);
          return 4294967293;
        }

        result = 0;
        *a3 = a1 + 9;
        v11 = a1[8];
        goto LABEL_131;
      }

      goto LABEL_114;
    }

    if (*a1 != 12 && *a1 != 15)
    {
      v7 = 928;
      goto LABEL_122;
    }

LABEL_102:
    result = 0;
    v9 = a1 + 9;
    goto LABEL_103;
  }

  if (a2 <= 900)
  {
    if (a2 == 801)
    {
      if (*a1 == 17)
      {
        v12 = a1 + 8;
        v15 = 16;
        v16 = a1 + 8;
        v17 = 16;
        goto LABEL_107;
      }

      v31 = 934;
      goto LABEL_156;
    }

    if (a2 == 802)
    {
      if (*a1 == 17)
      {
        v12 = a1 + 12;
LABEL_58:
        v15 = 65;
        v16 = v12;
        v17 = 65;
        goto LABEL_107;
      }

      v31 = 948;
LABEL_156:
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeSecureIntent", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v31);
      return 4294967293;
    }

LABEL_114:
    v23 = 997;
    goto LABEL_115;
  }

  if (a2 != 901)
  {
    if (a2 == 1001)
    {
      if (*a1 != 21)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeSignature", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 975);
        return 4294967293;
      }

      v19 = a1 + 9;
      if (Util_isNullOrZeroMemory(a1 + 36, 128))
      {
        v19 = 0;
        v11 = 0;
      }

      else
      {
        v11 = a1[8];
      }

      result = 0;
      *a3 = v19;
      goto LABEL_131;
    }

    goto LABEL_114;
  }

  if (*a1 != 20)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential->type == kACMCredentialTypeAP", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 962);
    return 4294967293;
  }

  v12 = a1 + 8;
  v15 = 32;
  v16 = a1 + 8;
  v17 = 32;
LABEL_107:
  v24 = Util_isNullOrZeroMemory(v16, v17);
  result = 0;
  v25 = v24 == 0;
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v12;
  }

  if (v25)
  {
    v27 = v15;
  }

  else
  {
    v27 = 0;
  }

  *a3 = v26;
  *a4 = v27;
  return result;
}

uint64_t LibCall_ACMRequirementGetType(unsigned int *a1)
{
  if (a1)
  {
    return *a1;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1010);
  return 0;
}

uint64_t LibCall_ACMRequirementGetState(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1021);
  return 0;
}

uint64_t LibCall_ACMRequirementGetPriority(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8);
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1032);
  return 0;
}

uint64_t LibCall_ACMRequirementGetPropertyData(_DWORD *a1, int a2, void *a3, uint64_t *a4)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1043);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "data", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1044);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1045);
    return 4294967293;
  }

  v6 = a1;
  if (a2 > 304)
  {
    if (a2 <= 599)
    {
      if (a2 <= 306)
      {
        if (a2 == 305)
        {
          if (*a1 == 3)
          {
            if (a1[3] > 0x9Bu)
            {
              result = 0;
              v6 += 42;
              goto LABEL_78;
            }

            v20 = 1144;
LABEL_114:
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement->dataLength >= sizeof(ACMRequirementDataBiometryMatched)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v20);
            return 4294967282;
          }

          v16 = 1143;
LABEL_107:
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement->type == kACMRequirementTypeBiometryMatched", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v16);
          return 4294967293;
        }

        if (*a1 == 24)
        {
          result = 0;
          *a3 = v6 + 5;
          v8 = v6[4];
          goto LABEL_79;
        }

        v17 = 1183;
      }

      else
      {
        if (a2 != 307)
        {
          if (a2 != 400)
          {
            if (a2 != 500)
            {
              goto LABEL_80;
            }

            if (*a1 != 25)
            {
              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement->type == kACMRequirementTypeKeyRef", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1201);
              return 4294967293;
            }

            result = 0;
            *a3 = v6 + 4;
            v8 = 43;
LABEL_79:
            *a4 = v8;
            return result;
          }

          if (*a1 != 13)
          {
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement->type == kACMRequirementTypeUserOutputDisplayed", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1177);
            return 4294967293;
          }

          result = 0;
          v9 = v6 + 4;
LABEL_62:
          *a3 = v9;
          v8 = 32;
          goto LABEL_79;
        }

        if (*a1 == 24)
        {
          result = 0;
          v9 = v6 + 261;
          goto LABEL_62;
        }

        v17 = 1192;
      }

      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement->type == kACMRequirementTypeAP", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v17);
      return 4294967293;
    }

    if (a2 <= 601)
    {
      if (a2 == 600)
      {
        if (*a1 == 26)
        {
          if (a1[3] > 0x1Bu)
          {
            result = 0;
            v6 += 6;
            goto LABEL_78;
          }

          v19 = 1158;
          goto LABEL_116;
        }

        v18 = 1157;
      }

      else
      {
        if (*a1 == 26)
        {
          if (a1[3] > 0x1Bu)
          {
            result = 0;
            v10 = v6 + 7;
            goto LABEL_74;
          }

          v19 = 1165;
LABEL_116:
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement->dataLength >= sizeof(ACMRequirementDataRatchet)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v19);
          return 4294967282;
        }

        v18 = 1164;
      }
    }

    else
    {
      if (a2 != 602)
      {
        if (a2 == 700)
        {
          if (*a1 != 7)
          {
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement->type == kACMRequirementTypeKofN", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1171);
            return 4294967293;
          }

          goto LABEL_58;
        }

        if (a2 == 800)
        {
          if (*a1 != 11)
          {
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement->type == kACMRequirementTypePushButtonPressed", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1210);
            return 4294967293;
          }

          result = 0;
          v6 += 5;
          goto LABEL_78;
        }

        goto LABEL_80;
      }

      if (*a1 == 26)
      {
        if (a1[3] > 0x1Bu)
        {
          result = 0;
          *a3 = v6 + 4;
          v8 = 8;
          goto LABEL_79;
        }

        v19 = 1151;
        goto LABEL_116;
      }

      v18 = 1150;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement->type == kACMRequirementTypeRatchet", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v18);
    return 4294967293;
  }

  if (a2 <= 299)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        result = 0;
        v6 += 2;
        goto LABEL_78;
      }

      if (a2 != 100)
      {
        if (a2 == 200)
        {
          if (*a1 != 2)
          {
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement->type == kACMCredentialTypePassphraseEntered", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1096);
            return 4294967293;
          }

          goto LABEL_58;
        }

        goto LABEL_80;
      }

      v11 = *a1;
      if (*a1 <= 10)
      {
        if (v11 != 1 && v11 != 3)
        {
          goto LABEL_88;
        }
      }

      else if (v11 != 11 && v11 != 20 && v11 != 21)
      {
LABEL_88:
        v15 = 1091;
        goto LABEL_81;
      }

LABEL_58:
      result = 0;
      v6 += 4;
      goto LABEL_78;
    }

    if (a2 == 1)
    {
      result = 0;
      goto LABEL_78;
    }

    if (a2 == 2)
    {
      result = 0;
      ++v6;
      goto LABEL_78;
    }

LABEL_80:
    v15 = 1219;
LABEL_81:
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v15);
    return 4294967293;
  }

  if (a2 <= 301)
  {
    if (a2 != 300)
    {
      if (*a1 != 3)
      {
        v16 = 1114;
        goto LABEL_107;
      }

      result = 0;
      v9 = v6 + 13;
      goto LABEL_62;
    }

    if (*a1 != 3)
    {
      v16 = 1102;
      goto LABEL_107;
    }

    result = 0;
    v10 = v6 + 5;
LABEL_74:
    *a3 = v10;
    v8 = 16;
    goto LABEL_79;
  }

  if (a2 == 302)
  {
    if (*a1 != 3)
    {
      v16 = 1108;
      goto LABEL_107;
    }

    result = 0;
    v10 = v6 + 9;
    goto LABEL_74;
  }

  if (a2 != 303)
  {
    if (*a1 == 3)
    {
      if (a1[3] > 0x9Bu)
      {
        result = 0;
        v6 += 41;
LABEL_78:
        *a3 = v6;
        v8 = 4;
        goto LABEL_79;
      }

      v20 = 1137;
      goto LABEL_114;
    }

    v16 = 1136;
    goto LABEL_107;
  }

  if (*a1 != 3)
  {
    v16 = 1120;
    goto LABEL_107;
  }

  v12 = 0;
  v13 = a1 + 21;
  while ((Util_isNullOrZeroMemory(&v13[v12], 16) & 1) == 0)
  {
    v14 = v12 >= 16;
    v12 += 4;
    if (v14)
    {
      v12 = 20;
      goto LABEL_85;
    }
  }

  if (!(v12 * 4))
  {
    v13 = 0;
  }

LABEL_85:
  result = 0;
  *a3 = v13;
  *a4 = v12 * 4;
  return result;
}

uint64_t LibCall_ACMPing(uint64_t (*a1)(uint64_t, uint64_t, void, void, void, void, void), uint64_t a2, uint64_t a3)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMPing");
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1234);
    goto LABEL_9;
  }

  if (a3 != 29 && a3 != 47)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "opcode == kCmdPing || opcode == kCmdPingOnDoubleClick", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1235);
LABEL_9:
    v8 = 70;
    v7 = 4294967293;
    goto LABEL_10;
  }

  v6 = a1(a2, a3, 0, 0, 0, 0, 0);
  v7 = v6;
  if (v6)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v6, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1237);
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

LABEL_10:
  if (v8 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMPing", v7);
  }

  return v7;
}

uint64_t LibCall_ACMKernDoubleClickNotify(uint64_t (*a1)(uint64_t, uint64_t, void, void, void, void, void), uint64_t a2)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMKernDoubleClickNotify");
  }

  if (a1)
  {
    v4 = a1(a2, 28, 0, 0, 0, 0, 0);
    v5 = v4;
    if (v4)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v4, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1251);
      v6 = 70;
    }

    else
    {
      v6 = 10;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1249);
    v6 = 70;
    v5 = 4294967293;
  }

  if (v6 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernDoubleClickNotify", v5);
  }

  return v5;
}

uint64_t LibCall_ACMContextCredentialGetProperty(uint64_t (*a1)(uint64_t, uint64_t, void, void *, uint64_t, uint64_t, uint64_t), uint64_t a2, _OWORD *a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextCredentialGetProperty");
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1263);
LABEL_17:
    v17 = 70;
    v16 = 4294967293;
    goto LABEL_11;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1264);
    goto LABEL_17;
  }

  if (!a6 || !a7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "data && dataLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1265);
    goto LABEL_17;
  }

  memset(v20, 0, sizeof(v20));
  v19 = 24;
  Property_Serialize = LibSer_ContextCredentialGetProperty_Serialize(a3, a4, a5, v20, &v19);
  if (Property_Serialize)
  {
    v16 = Property_Serialize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", Property_Serialize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1272);
  }

  else if (v19 == 24)
  {
    v15 = a1(a2, 33, 0, v20, 24, a6, a7);
    v16 = v15;
    if (!v15)
    {
      v17 = 10;
      goto LABEL_11;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v15, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1276);
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "commandSize == sizeof(commandBuffer)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1273);
    v16 = 4294967291;
  }

  v17 = 70;
LABEL_11:
  if (v17 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextCredentialGetProperty", v16);
  }

  return v16;
}

uint64_t LibCall_ACMGlobalContextCredentialGetProperty(uint64_t (*a1)(uint64_t, uint64_t, void, uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextCredentialGetProperty");
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1289);
LABEL_15:
    v15 = 70;
    v14 = 4294967293;
    goto LABEL_10;
  }

  if (!a5 || !a6)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "data && dataLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1290);
    goto LABEL_15;
  }

  v17 = 8;
  v18 = 0;
  Property_Serialize = LibSer_GlobalContextCredentialGetProperty_Serialize(a3, a4, &v18, &v17);
  if (Property_Serialize)
  {
    v14 = Property_Serialize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", Property_Serialize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1297);
  }

  else if (v17 == 8)
  {
    v13 = a1(a2, 27, 0, &v18, 8, a5, a6);
    v14 = v13;
    if (!v13)
    {
      v15 = 10;
      goto LABEL_10;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v13, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1301);
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "commandSize == sizeof(commandBuffer)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1298);
    v14 = 4294967291;
  }

  v15 = 70;
LABEL_10:
  if (v15 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMGlobalContextCredentialGetProperty", v14);
  }

  return v14;
}

uint64_t LibCall_ACMContextVerifyPolicyEx(uint64_t (*a1)(uint64_t, uint64_t, void, const void *, size_t, unsigned int *, unint64_t *), uint64_t a2, _OWORD *a3, char *__s1, _BOOL8 a5, _DWORD *a6, unsigned int a7, uint64_t a8, BOOL *a9, int **a10)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextVerifyPolicyEx");
  }

  v18 = LibCall_ACMContextVerifyPolicyAndCopyRequirementEx(a1, a2, a3, __s1, a5, a6, a7, a8, a9, a10, 0);
  v19 = v18;
  if (v18)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v18, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1313);
    v20 = 70;
  }

  else
  {
    v20 = 10;
  }

  if (v20 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextVerifyPolicyEx", v19);
  }

  return v19;
}

uint64_t LibCall_ACMSecContextVerifyPolicyAndCopyRequirementEx(uint64_t (*a1)(uint64_t, uint64_t, void, const void *, size_t, unsigned int *, unint64_t *), uint64_t a2, _OWORD *a3, char *__s1, _DWORD *a5, unsigned int a6, uint64_t a7, BOOL *a8, int **a9)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMSecContextVerifyPolicyAndCopyRequirementEx");
  }

  v17 = LibCall_ACMContextVerifyPolicyAndCopyRequirementEx(a1, a2, a3, __s1, 0, a5, a6, a7, a8, a9, 1);
  v18 = v17;
  if (v17)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v17, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1325);
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

  if (v19 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSecContextVerifyPolicyAndCopyRequirementEx", v18);
  }

  return v18;
}

uint64_t LibCall_ACMGlobalContextVerifyPolicyEx(uint64_t (*a1)(uint64_t, uint64_t, void, const void *, size_t, unsigned int *, unint64_t *), uint64_t a2, char *a3, _BOOL8 a4, _DWORD *a5, unsigned int a6, BOOL *a7, int **a8)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicyEx");
  }

  *v21 = 0;
  v16 = LibCall_ACMContextCreate(a1, a2, v21, 0, 0, 1);
  if (v16)
  {
    v17 = v16;
    v20 = 1338;
  }

  else
  {
    v17 = LibCall_ACMContextVerifyPolicyEx(a1, a2, *v21, a3, a4, a5, a6, 0xFFFFFFFFLL, a7, a8);
    if (!v17)
    {
      goto LABEL_5;
    }

    v20 = 1341;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v17, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v20);
LABEL_5:
  if (*v21)
  {
    LibCall_ACMContextDelete(a1, a2, *v21, 1);
  }

  if (v17)
  {
    v18 = 70;
  }

  else
  {
    v18 = 10;
  }

  if (v18 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicyEx", v17);
  }

  return v17;
}

uint64_t LibCall_ACMGetEnvironmentVariable(uint64_t (*a1)(uint64_t, uint64_t, void, int *, uint64_t, uint64_t, uint64_t), uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v13 = a3;
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMGetEnvironmentVariable");
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1359);
LABEL_13:
    v11 = 70;
    v10 = 4294967293;
    goto LABEL_8;
  }

  if (!a4 || !a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataOutBuffer && dataInOutLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1360);
    goto LABEL_13;
  }

  v9 = a1(a2, 25, 0, &v13, 4, a4, a5);
  v10 = v9;
  if (v9)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v9, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1363);
    v11 = 70;
  }

  else
  {
    v11 = 10;
  }

LABEL_8:
  if (v11 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMGetEnvironmentVariable", v10);
  }

  return v10;
}

uint64_t LibCall_ACMSetEnvironmentVariable(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, void, void), uint64_t a2, int a3, _OWORD *a4, _OWORD *a5, uint64_t a6, const void *a7, size_t a8)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMSetEnvironmentVariable");
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1378);
LABEL_31:
    v23 = 70;
    v22 = 4294967293;
    goto LABEL_24;
  }

  if (a6 != 16 * (a5 != 0))
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(keybagUuid && keybagUuidLength == 16) || (!keybagUuid && !keybagUuidLength)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1379);
    goto LABEL_31;
  }

  if (a7)
  {
    v16 = a8 - 129 < 0xFFFFFFFFFFFFFF80;
  }

  else
  {
    v16 = a8 != 0;
  }

  if (v16)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(data && dataLength && dataLength <= 128) || (!data && !dataLength)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1380);
    goto LABEL_31;
  }

  v17 = a8 + 44;
  __chkstk_darwin();
  v18 = (&v25 - ((a8 + 59) & 0xFFFFFFFFFFFFFFF0));
  bzero(v18, a8 + 44);
  v26 = 0uLL;
  *v18 = a3;
  v18[1] = 2;
  v18[2] = a8;
  *(v18 + 3) = v26;
  *(v18 + 7) = 0u;
  if (a4)
  {
    v19 = a8 + 32;
    if (v17 < 0xC)
    {
      v19 = 0;
    }

    if (v19 <= 0xF)
    {
      goto LABEL_32;
    }

    *(v18 + 3) = *a4;
  }

  if (a5)
  {
    v20 = a8 + 16;
    if (v17 < 0x1C)
    {
      v20 = 0;
    }

    if (v20 <= 0xF)
    {
      goto LABEL_32;
    }

    *(v18 + 7) = *a5;
  }

  if (!a8)
  {
    goto LABEL_22;
  }

  if (a8 >= 0xFFFFFFFFFFFFFFD4)
  {
LABEL_32:
    __break(0xBFFEu);
  }

  memcpy(v18 + 11, a7, a8);
LABEL_22:
  v21 = a1(a2, 44, 0, &v25 - ((a8 + 59) & 0xFFFFFFFFFFFFFFF0), a8 + 44, 0, 0);
  v22 = v21;
  if (v21)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v21, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1422);
    v23 = 70;
  }

  else
  {
    v23 = 10;
  }

LABEL_24:
  if (v23 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSetEnvironmentVariable", v22);
  }

  return v22;
}

uint64_t LibCall_ACMTRMLoadState(uint64_t (*a1)(uint64_t, uint64_t, void, void, void, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMTRMLoadState");
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1436);
LABEL_13:
    v10 = 70;
    v9 = 4294967293;
    goto LABEL_8;
  }

  if (!a3 || !a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "stateOutBuffer && stateInOutSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1437);
    goto LABEL_13;
  }

  v8 = a1(a2, 38, 0, 0, 0, a3, a4);
  v9 = v8;
  if (v8)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v8, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1440);
    v10 = 70;
  }

  else
  {
    v10 = 10;
  }

LABEL_8:
  if (v10 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMTRMLoadState", v9);
  }

  return v9;
}

uint64_t LibCall_ACMTRMSaveState(uint64_t (*a1)(uint64_t, uint64_t, void, uint64_t, uint64_t, void, void), uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMTRMSaveState");
  }

  if (a1)
  {
    v10 = (a4 - 8193) < 0xFFFFFFFFFFFFE000;
    if (!a3)
    {
      v10 = a4 != 0;
    }

    if (!v10)
    {
      if (a5)
      {
        v11 = 43;
      }

      else
      {
        v11 = 39;
      }

      v12 = a1(a2, v11, 0, a3, a4, 0, 0);
      v13 = v12;
      if (v12)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v12, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1455);
        v14 = 70;
      }

      else
      {
        v14 = 10;
      }

      goto LABEL_12;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(state && stateSize && stateSize <= 8192) || (!state && !stateSize)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1452);
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1451);
  }

  v14 = 70;
  v13 = 4294967293;
LABEL_12:
  if (v14 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMTRMSaveState", v13);
  }

  return v13;
}

uint64_t LibCall_ACMContextLoadFromImage()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextLoadFromImage");
  }

  if (!v9)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1474);
LABEL_16:
    v14 = 70;
    v12 = 4294967293;
    goto LABEL_11;
  }

  if (!v6 || v4 - 4097 <= 0xFFFFFFFFFFFFEFFFLL)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(ctxImage && ctxImageSize && ctxImageSize <= (4 * 1024))", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1475);
    goto LABEL_16;
  }

  v10 = IOMallocTypeImpl();
  acm_mem_alloc_info("ACMHandleWithPayload", v10, 20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1479, "LibCall_ACMContextLoadFromImage");
  if (v10)
  {
    bzero(v20, 0x1005uLL);
    v19 = 1;
    *&v20[1] = 6;
    v21 = v4;
    memcpy(&v22, v6, v4);
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v16 = 280;
    v11 = v9(v8, 48, 0, &v19, 4102, v17, &v16);
    if (v11)
    {
      v12 = v11;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v11, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1521);
    }

    else if (v16 <= 0x17)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseBufferSize >= sizeof(Response)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1525);
      v12 = 4294967291;
    }

    else
    {
      if (LOBYTE(v17[0]))
      {
        v12 = 0;
        v13 = DWORD1(v17[1]);
        *v10 = *(v17 + 4);
        v10[4] = v13;
        *v2 = v10;
        v14 = 10;
        goto LABEL_11;
      }

      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "response->resVersion > 0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1526);
      v12 = 4294967280;
    }

    acm_mem_free_info("ACMHandleWithPayload", v10, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1540, "LibCall_ACMContextLoadFromImage");
    IOFreeTypeImpl();
    v14 = 70;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handleWithPayload", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1480);
    v14 = 70;
    v12 = 4294967292;
  }

LABEL_11:
  if (v14 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextLoadFromImage", v12);
  }

  return v12;
}

uint64_t LibCall_ACMContextUnloadToImage()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextUnloadToImage");
  }

  if (v9)
  {
    if (v4 && v2)
    {
      v21 = 0uLL;
      v20 = 1310721;
      if (v6)
      {
        v21 = *v6;
      }

      else
      {
        v21 = 0uLL;
      }

      bzero(v17, 0x1106uLL);
      *v16 = 4358;
      v10 = v9(v8, 49, 0, &v20, 20, v17, v16);
      if (v10)
      {
        v12 = v10;
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v10, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1590);
        v13 = 70;
      }

      else if (*v16 <= 5uLL)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseBufferSize >= sizeof(Response)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1594);
        v13 = 70;
        v12 = 4294967291;
      }

      else if (v17[0])
      {
        v15 = v18;
        v11 = Util_ReadFromBuffer(v17, *v16, &v15, v4, __len);
        v12 = v11;
        if (v11)
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v11, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1599);
          v13 = 70;
        }

        else
        {
          *v2 = v15 - v18;
          v13 = 10;
        }
      }

      else
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "response->resVersion > 0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1595);
        v13 = 70;
        v12 = 4294967280;
      }

      goto LABEL_14;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "ctxImageOutBuffer && ctxImageInOutSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1557);
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1556);
  }

  v13 = 70;
  v12 = 4294967293;
LABEL_14:
  if (v13 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextUnloadToImage", v12);
  }

  return v12;
}

uint64_t LibCall_ACMContextSetData(uint64_t (*a1)(uint64_t, uint64_t, void, const void *, size_t, void, void), uint64_t a2, _OWORD *a3, int a4, _DWORD *a5, unsigned int a6, const void *a7, size_t a8)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextSetData");
  }

  v26 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1616);
LABEL_20:
    v22 = 70;
    v19 = 4294967293;
    goto LABEL_14;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1617);
    goto LABEL_20;
  }

  if ((a7 != 0) != (a8 != 0))
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(inData && inSize) || (!inData && !inSize)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1618);
    goto LABEL_20;
  }

  if (a8 >= 0xE01)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inSize <= (3*1024 + 512)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1619);
    v22 = 70;
    v19 = 4294967276;
    goto LABEL_14;
  }

  Size = LibSer_StorageSetData_GetSize(a8, a5, a6, &v26);
  if (Size)
  {
    v24 = Size;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", Size, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1623);
    v22 = 70;
    v19 = v24;
    goto LABEL_14;
  }

  v17 = v26;
  v18 = acm_mem_alloc_data(v26);
  acm_mem_alloc_info("<data>", v18, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1625, "LibCall_ACMContextSetData");
  if (!v18)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "commandBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1626);
    v22 = 70;
    v19 = 4294967292;
    goto LABEL_14;
  }

  v19 = LibSer_StorageSetData_Serialize(a3, a4, a7, a8, a5, a6, v18, &v26);
  if (v19)
  {
    v25 = 1629;
  }

  else
  {
    v20 = a1(a2, 40, 0, v18, v26, 0, 0);
    if (!v20)
    {
      goto LABEL_11;
    }

    v25 = 1632;
    v19 = v20;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v19, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v25);
LABEL_11:
  v21 = v26;
  acm_mem_free_info("<data>", v18, v26, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1637, "LibCall_ACMContextSetData");
  acm_mem_free_data(v18, v21);
  if (v19)
  {
    v22 = 70;
  }

  else
  {
    v22 = 10;
  }

LABEL_14:
  if (v22 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextSetData", v19);
  }

  return v19;
}

uint64_t LibCall_ACMContextGetData(uint64_t (*a1)(uint64_t, uint64_t, void, const void *, unint64_t, uint64_t, uint64_t), uint64_t a2, _OWORD *a3, int a4, char a5, _DWORD *a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextGetData");
  }

  v27 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1652);
LABEL_19:
    v22 = 70;
    Data_Serialize = 4294967293;
    goto LABEL_14;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1653);
    goto LABEL_19;
  }

  if (!a8 || !a9)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer && outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1654);
    v22 = 70;
    Data_Serialize = 4294967293;
    goto LABEL_14;
  }

  Size = LibSer_StorageGetData_GetSize(a6, a7, &v27);
  if (Size)
  {
    v24 = Size;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", Size, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1658);
    v22 = 70;
    Data_Serialize = v24;
    goto LABEL_14;
  }

  v17 = v27;
  v18 = acm_mem_alloc_data(v27);
  acm_mem_alloc_info("<data>", v18, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1660, "LibCall_ACMContextGetData");
  if (!v18)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "commandBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1661);
    v22 = 70;
    Data_Serialize = 4294967292;
    goto LABEL_14;
  }

  Data_Serialize = LibSer_StorageGetData_Serialize(a3, a4, a5, a6, a7, v18, &v27);
  if (Data_Serialize)
  {
    v25 = 1664;
  }

  else
  {
    v20 = a1(a2, 41, 0, v18, v27, a8, a9);
    if (!v20)
    {
      goto LABEL_11;
    }

    v25 = 1667;
    Data_Serialize = v20;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", Data_Serialize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v25);
LABEL_11:
  v21 = v27;
  acm_mem_free_info("<data>", v18, v27, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1672, "LibCall_ACMContextGetData");
  acm_mem_free_data(v18, v21);
  if (Data_Serialize)
  {
    v22 = 70;
  }

  else
  {
    v22 = 10;
  }

LABEL_14:
  if (v22 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextGetData", Data_Serialize);
  }

  return Data_Serialize;
}

uint64_t LibCall_ACMContextCopyData(uint64_t (*a1)(uint64_t, uint64_t, void, int *, uint64_t, void, void), uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, int a7, int a8)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextCopyData");
  }

  if (!a3 || a4 != 16)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "sourceContextExternalForm && sourceContextExternalFormLength == sizeof(ACMHandle)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1685);
LABEL_14:
    v19 = 70;
    v18 = 4294967293;
    goto LABEL_9;
  }

  if (!a5 || a6 != 16)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "targetContextExternalForm && targetContextExternalFormLength == sizeof(ACMHandle)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1686);
    goto LABEL_14;
  }

  v21 = 1;
  v16 = *a5;
  v22 = *a3;
  v23 = v16;
  v24 = a7;
  v25 = a8;
  v17 = a1(a2, 53, 0, &v21, 44, 0, 0);
  v18 = v17;
  if (v17)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v17, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1705);
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

LABEL_9:
  if (v19 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextCopyData", v18);
  }

  return v18;
}

uint64_t LibCall_ACMPublishTrustedAccessories(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, void, void), uint64_t a2, const void *a3, size_t a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMPublishTrustedAccessories");
  }

  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1720);
LABEL_19:
    v11 = 70;
    v10 = 4294967293;
    goto LABEL_12;
  }

  if (!a3 && a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "!accUUIDsSize || accUUIDs", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1721);
    goto LABEL_19;
  }

  if (a4 >= 0x101)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "accUUIDsSize <= (16 * 16)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1724);
    goto LABEL_19;
  }

  if ((a4 & 0xF) != 0)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "accUUIDsSize % sizeof(uuid_t) == 0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1725);
    goto LABEL_19;
  }

  __chkstk_darwin();
  v8 = (&v13 - ((a4 + 23) & 0xFFFFFFFFFFFFFFF0));
  bzero(v8, a4 | 8);
  *v8 = 1;
  v8[1] = a4;
  if (a4)
  {
    memcpy(v8 + 2, a3, a4);
  }

  v9 = a1(a2, 45, 0, &v13 - ((a4 + 23) & 0xFFFFFFFFFFFFFFF0), a4 | 8, 0, 0);
  v10 = v9;
  if (v9)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v9, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1754);
    v11 = 70;
  }

  else
  {
    v11 = 10;
  }

LABEL_12:
  if (v11 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMPublishTrustedAccessories", v10);
  }

  return v10;
}

uint64_t LibCall_ACMContextGetInfo(uint64_t (*a1)(uint64_t, uint64_t, void, int *, uint64_t, _OWORD *, unint64_t *), uint64_t a2, __int128 *a3, int a4, void *a5)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMContextGetInfo");
  }

  if (a3 && a1 && a5)
  {
    v16 = 1;
    v18 = a4;
    v17 = *a3;
    memset(v15, 0, 140);
    v14 = 140;
    v10 = a1(a2, 46, 0, &v16, 24, v15, &v14);
    if (v10)
    {
      v11 = v10;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v10, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1801);
    }

    else if (v14 <= 0xB)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseBufferSize >= sizeof(Response)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1805);
      v11 = 4294967291;
    }

    else
    {
      if (LODWORD(v15[0]))
      {
        v11 = 0;
        *a5 = *(v15 + 4);
        v12 = 10;
        goto LABEL_10;
      }

      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "response->version >= kCmdCurrentVersion_ContextGetInfo", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1806);
      v11 = 4294967281;
    }

    v12 = 70;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport && context && value", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1768);
    v12 = 70;
    v11 = 4294967293;
  }

LABEL_10:
  if (v12 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextGetInfo", v11);
  }

  return v11;
}

uint64_t verifyAclConstraintInternal(uint64_t (*a1)(uint64_t, void, void, const void *, unint64_t, unsigned int *, unint64_t *), uint64_t a2, unsigned int a3, _OWORD *a4, const void *a5, uint64_t a6, const void *a7, unsigned int a8, unsigned __int8 a9, _DWORD *a10, unsigned int a11, unsigned int a12, BOOL *a13, int **a14)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "verifyAclConstraintInternal");
  }

  v45[0] = 0;
  v43 = 0;
  v44 = 4096;
  v42 = 0;
  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1986);
LABEL_31:
    v31 = 4294967293;
    goto LABEL_19;
  }

  if (!a5 || !a6)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "aclConstraint && aclConstraintLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1987);
    goto LABEL_31;
  }

  if (!a13)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "policySatisfied", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1988);
    goto LABEL_31;
  }

  v39 = a1;
  v40 = a3;
  v21 = a3;
  v22 = a8;
  SerializedVerifyAclConstraintSize = GetSerializedVerifyAclConstraintSize(v21, a4, a5, a6, a7, a8, a9, a12, a10, a11, v45);
  if (SerializedVerifyAclConstraintSize)
  {
    v31 = SerializedVerifyAclConstraintSize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedVerifyAclConstraintSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1992);
    goto LABEL_19;
  }

  v24 = v45[0];
  v25 = acm_mem_alloc_data(v45[0]);
  acm_mem_alloc_info("<data>", v25, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1994, "verifyAclConstraintInternal");
  if (!v25)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inputBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1995);
    v31 = 4294967292;
    goto LABEL_19;
  }

  v26 = SerializeVerifyAclConstraint(v40, a4, a5, a6, a7, v22, a9, a12, a10, a11, v25, v45);
  if (v26)
  {
    v35 = v26;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v26, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1998);
    v27 = 0;
    v31 = v35;
    goto LABEL_17;
  }

  v27 = acm_mem_alloc_data(4096);
  acm_mem_alloc_info("<data>", v27, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2000, "verifyAclConstraintInternal");
  if (!v27)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "reqBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2001);
    v31 = 4294967292;
    goto LABEL_17;
  }

  v28 = v39(a2, v40, 0, v25, v45[0], v27, &v44);
  if (v28)
  {
    v36 = v28;
    v37 = v28;
    v38 = 2004;
  }

  else
  {
    v29 = v44;
    if (v44 <= 3)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "reqBufferSize >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2005);
      v31 = 4294967291;
      goto LABEL_17;
    }

    *a13 = *v27 != 0;
    if (!a14)
    {
      v31 = 0;
      goto LABEL_17;
    }

    v30 = DeserializeRequirement(v27 + 1, v29 - 4, &v43, &v42);
    if (!v30)
    {
      v31 = 0;
      *a14 = v43;
      goto LABEL_17;
    }

    v36 = v30;
    v37 = v30;
    v38 = 2014;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v37, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v38);
  v31 = v36;
LABEL_17:
  v32 = v45[0];
  acm_mem_free_info("<data>", v25, v45[0], "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2023, "verifyAclConstraintInternal");
  acm_mem_free_data(v25, v32);
  if (v27)
  {
    acm_mem_free_info("<data>", v27, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2026, "verifyAclConstraintInternal");
    acm_mem_free_data(v27, 0x1000uLL);
  }

LABEL_19:
  if (v31 && v43)
  {
    Util_DeallocRequirement(v43);
  }

  if (v31)
  {
    v33 = 70;
  }

  else
  {
    v33 = 10;
  }

  if (v33 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "verifyAclConstraintInternal", v31);
  }

  return v31;
}

uint64_t processAclCommandInternal(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, int *, uint64_t *), uint64_t a2, int a3, _OWORD *a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, _DWORD *a9, unsigned int a10, unsigned int a11, _DWORD *a12, BOOL *a13, void *a14, unint64_t *a15)
{
  v20 = gACMLoggingLevel;
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "processAclCommandInternal");
    v20 = gACMLoggingLevel;
  }

  if (v20 <= 0x14)
  {
    IOLog("%s: %s: command = %u.\n", "ACM", "processAclCommandInternal", a3);
    v20 = gACMLoggingLevel;
    if (gACMLoggingLevel <= 0x14u)
    {
      IOLog("%s: %s: context = %p.\n", "ACM", "processAclCommandInternal", a4);
      v20 = gACMLoggingLevel;
      if (gACMLoggingLevel <= 0x14u)
      {
        IOLog("%s: %s: acl = %p, aclLength = %zu.\n", "ACM", "processAclCommandInternal", a5, a6);
        v20 = gACMLoggingLevel;
        if (gACMLoggingLevel <= 0x14u)
        {
          IOLog("%s: %s (len=%u): acl:", "ACM", "processAclCommandInternal", a6);
          v20 = gACMLoggingLevel;
        }
      }
    }
  }

  if (a6)
  {
    v21 = a6;
    v22 = a5;
    do
    {
      if (v20 <= 0x14)
      {
        IOLog("%02x ", *v22);
        v20 = gACMLoggingLevel;
      }

      ++v22;
      --v21;
    }

    while (v21);
  }

  if (v20 < 0x15)
  {
    IOLog("\n");
    v20 = gACMLoggingLevel;
    if (gACMLoggingLevel <= 0x14u)
    {
      IOLog("%s: %s: operation = %p, operationLength = %zu.\n", "ACM", "processAclCommandInternal", a7, a8);
      v20 = gACMLoggingLevel;
      if (gACMLoggingLevel <= 0x14u)
      {
        IOLog("%s: %s (len=%u): operation:", "ACM", "processAclCommandInternal", a8);
        v20 = gACMLoggingLevel;
      }
    }
  }

  v50 = a3;
  v23 = a5;
  if (a8)
  {
    v24 = a8;
    v25 = a7;
    do
    {
      if (v20 <= 0x14)
      {
        IOLog("%02x ", *v25);
        v20 = gACMLoggingLevel;
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  if (v20 < 0x15)
  {
    IOLog("\n");
    if (gACMLoggingLevel <= 0x14u)
    {
      IOLog("%s: %s: parameters = %p, parameterCount = %u.\n", "ACM", "processAclCommandInternal", a9, a10);
      if (gACMLoggingLevel <= 0x14u)
      {
        IOLog("%s: %s: maxGlobalCredentialAge = %u.\n", "ACM", "processAclCommandInternal", a11);
        if (gACMLoggingLevel <= 0x14u)
        {
          IOLog("%s: %s: constraintState = %p.\n", "ACM", "processAclCommandInternal", a12);
          if (gACMLoggingLevel <= 0x14u)
          {
            IOLog("%s: %s: requirePasscode = %p.\n", "ACM", "processAclCommandInternal", a13);
          }
        }
      }
    }
  }

  if (a7 || a9 || a12)
  {
    if (!v23 || !a6)
    {
      v45 = 1958;
LABEL_81:
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "acl && aclLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v45);
      goto LABEL_85;
    }

    if (!a7 || !a8)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "operation && operationLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1959);
      goto LABEL_85;
    }

    if ((a9 != 0) != (a10 != 0))
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(parametersCount == 0 && !parameters) || (parametersCount > 0 && parameters)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1960);
      goto LABEL_85;
    }

    if (!a12)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "constraintState", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1961);
      goto LABEL_85;
    }

    v55 = 0;
    v54 = 4096;
    if (gACMLoggingLevel <= 0xAu)
    {
      IOLog("%s: %s: called.\n", "ACM", "processAclInternal");
    }

    SerializedProcessAclSize = GetSerializedProcessAclSize(a4, v23, a6, a7, a8, a11, a9, a10, &v55);
    if (SerializedProcessAclSize)
    {
      v46 = SerializedProcessAclSize;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedProcessAclSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1839);
      v42 = 70;
      v27 = v46;
      goto LABEL_70;
    }

    v31 = v55;
    v32 = acm_mem_alloc_data(v55);
    v33 = v31;
    v34 = v32;
    acm_mem_alloc_info("<data>", v32, v33, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1841, "processAclInternal");
    if (!v34)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "commandBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1842);
      v42 = 70;
      v27 = 4294967292;
      goto LABEL_70;
    }

    v54 = 4096;
    v35 = acm_mem_alloc_data(4096);
    acm_mem_alloc_info("<data>", v35, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1845, "processAclInternal");
    if (!v35)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1846);
      v40 = 0;
      v39 = 0;
      v27 = 4294967292;
      goto LABEL_64;
    }

    v36 = SerializeProcessAcl(a4, v23, a6, a7, a8, a11, a9, a10, v34, &v55);
    if (v36)
    {
      v47 = v36;
      v48 = v36;
      v49 = 1849;
    }

    else
    {
      v37 = a1(a2, v50, 0, v34, v55, v35, &v54);
      if (!v37)
      {
        v38 = v54;
        if (v54 <= 7)
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseBufferSize >= 2 * sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1855);
        }

        else
        {
          *a12 = *v35;
          if (a13)
          {
            *a13 = v35[1] != 0;
          }

          v27 = 0;
          v39 = 0;
          if (v50 != 30 || !a14)
          {
            v40 = 0;
            goto LABEL_63;
          }

          v40 = 0;
          if (!a15)
          {
LABEL_63:
            acm_mem_free_info("<data>", v35, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1882, "processAclInternal");
            acm_mem_free_data(v35, 0x1000uLL);
LABEL_64:
            v41 = v55;
            acm_mem_free_info("<data>", v34, v55, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1886, "processAclInternal");
            acm_mem_free_data(v34, v41);
            if (v27 && v39)
            {
              acm_mem_free_info("<data>", v39, v40, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1890, "processAclInternal");
              acm_mem_free_data(v39, v40);
              v42 = 70;
            }

            else if (v27)
            {
              v42 = 70;
            }

            else
            {
              v42 = 10;
            }

LABEL_70:
            if (v42 >= gACMLoggingLevel)
            {
              IOLog("%s: %s: returning, err = %ld.\n", "ACM", "processAclInternal", v27);
            }

            if (v27)
            {
              v28 = v27;
              v29 = 1964;
              goto LABEL_88;
            }

LABEL_73:
            v43 = 10;
            goto LABEL_74;
          }

          if (v38 > 0xB)
          {
            v40 = v35[2];
            if (v40)
            {
              if (v38 >= v40 + 12)
              {
                v39 = acm_mem_alloc_data(v35[2]);
                acm_mem_alloc_info("<data>", v39, v40, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1870, "processAclInternal");
                if (v39)
                {
                  memmove(v39, v35 + 3, v40);
                  v27 = 0;
                  *a14 = v39;
                  *a15 = v40;
                }

                else
                {
                  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "authMethodInst", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1871);
                  v27 = 4294967292;
                }

                goto LABEL_63;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseBufferSize >= 3 * sizeof(uint32_t) + authMethodInstLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1869);
              v39 = 0;
              goto LABEL_97;
            }

            v39 = 0;
            v40 = 0;
            v27 = 0;
            goto LABEL_63;
          }

          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseBufferSize >= 3 * sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1866);
        }

        v39 = 0;
        v40 = 0;
LABEL_97:
        v27 = 4294967291;
        goto LABEL_63;
      }

      v47 = v37;
      v48 = v37;
      v49 = 1854;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v48, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v49);
    v39 = 0;
    v40 = 0;
    v27 = v47;
    goto LABEL_63;
  }

  if (a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "!context", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1949);
LABEL_85:
    v43 = 70;
    v27 = 4294967293;
    goto LABEL_74;
  }

  if (!v23 || !a6)
  {
    v45 = 1950;
    goto LABEL_81;
  }

  if (!a13)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirePasscode", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1951);
    goto LABEL_85;
  }

  v26 = aclRequiresPasscodeInternal(a1, a2, v23, a6, a13);
  v27 = v26;
  if (!v26)
  {
    goto LABEL_73;
  }

  v28 = v26;
  v29 = 1954;
LABEL_88:
  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v28, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v29);
  v43 = 70;
LABEL_74:
  if (v43 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "processAclCommandInternal", v27);
  }

  return v27;
}

uint64_t LibCall_ACMSecContextVerifyAclConstraintAndCopyRequirement(uint64_t (*a1)(uint64_t, void, void, const void *, unint64_t, unsigned int *, unint64_t *), uint64_t a2, _OWORD *a3, const void *a4, uint64_t a5, const void *a6, unsigned int a7, unsigned __int8 a8, _DWORD *a9, unsigned int a10, unsigned int a11, BOOL *a12, int **a13)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMSecContextVerifyAclConstraintAndCopyRequirement");
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2047);
LABEL_17:
    v23 = 70;
    v22 = 4294967293;
    goto LABEL_10;
  }

  if (!a4 || !a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "aclConstraint && aclConstraintLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2048);
    goto LABEL_17;
  }

  if ((a9 != 0) != (a10 != 0))
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(parametersCount == 0 && !parameters) || (parametersCount > 0 && parameters)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2049);
    goto LABEL_17;
  }

  if (!a12)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "constraintSatisfied", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2050);
    goto LABEL_17;
  }

  v21 = verifyAclConstraintInternal(a1, a2, 0xBu, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  v22 = v21;
  if (v21)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v21, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2053);
    v23 = 70;
  }

  else
  {
    v23 = 10;
  }

LABEL_10:
  if (v23 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSecContextVerifyAclConstraintAndCopyRequirement", v22);
  }

  return v22;
}

uint64_t LibCall_ACMSecCredentialProviderEnrollmentStateChangedForUser(uint64_t (*a1)(uint64_t, uint64_t, void, char *, uint64_t, void, void), uint64_t a2, const void *a3, unsigned int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, uint64_t a9)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMSecCredentialProviderEnrollmentStateChangedForUser");
  }

  v17 = a4 - 113 < 0xFFFFFF90;
  if (!a3)
  {
    v17 = a4 != 0;
  }

  if (v17)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(enrollmentState && enrollmentStateLength && enrollmentStateLength <= (32 + (5 * 16))) || (!enrollmentState && !enrollmentStateLength)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2075);
    goto LABEL_21;
  }

  if (!a8 || a9 != 16)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "keybagUuid && keybagUuidLength == sizeof(uuid_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2076);
LABEL_21:
    v21 = 70;
    v20 = 4294967293;
    goto LABEL_14;
  }

  if (!a5 || a6 != 16)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "catacombUuid && catacombUuidLength == sizeof(uuid_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2077);
    goto LABEL_21;
  }

  __chkstk_darwin();
  v18 = (&v23 - ((a4 + 51) & 0x1FFFFFFF0));
  bzero(v18, a4 + 36);
  *v18 = a7;
  *(v18 + 1) = *a8;
  *(v18 + 5) = *a5;
  if (a3)
  {
    memcpy(v18 + 9, a3, a4);
  }

  v19 = a1(a2, 14, 0, &v23 - ((a4 + 51) & 0x1FFFFFFF0), a4 + 36, 0, 0);
  v20 = v19;
  if (v19)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v19, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2108);
    v21 = 70;
  }

  else
  {
    v21 = 10;
  }

LABEL_14:
  if (v21 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSecCredentialProviderEnrollmentStateChangedForUser", v20);
  }

  return v20;
}

uint64_t LibCall_ACMSecSetBuiltinBiometry(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, void, void), uint64_t a2, char a3)
{
  v9 = a3;
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMSecSetBuiltinBiometry");
  }

  v5 = LibCall_ACMSetEnvironmentVariable(a1, a2, 30, 0, 0, 0, &v9, 1uLL);
  v6 = v5;
  if (v5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v5, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2119);
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSecSetBuiltinBiometry", v6);
  }

  return v6;
}

uint64_t LibCall_ACMSecSetBiometryAvailability(uint64_t (*a1)(uint64_t, uint64_t, void, int *, uint64_t, uint64_t, uint64_t), uint64_t a2, char a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMSecSetBiometryAvailability");
  }

  v16 = 0;
  v15 = 1;
  v14 = 0;
  v8 = LibCall_ACMGetEnvironmentVariable(a1, a2, 6, &v16, &v15);
  if (v8)
  {
    v11 = v8;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v8, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2134);
    v12 = 70;
  }

  else if (v15 >= 2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "currentStateSize <= 1", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2135);
    v12 = 70;
    v11 = 4294967291;
  }

  else
  {
    v9 = v16 & ~a3;
    if (a4)
    {
      v9 = v16 | a3;
    }

    v14 = v9;
    v10 = LibCall_ACMSetEnvironmentVariable(a1, a2, 6, 0, 0, 0, &v14, 1uLL);
    v11 = v10;
    if (v10)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v10, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2140);
      v12 = 70;
    }

    else
    {
      v12 = 10;
    }
  }

  if (v12 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSecSetBiometryAvailability", v11);
  }

  return v11;
}

uint64_t LibCall_ACMSecContextGetUnlockSecret(uint64_t (*a1)(void, void, void, void, void, void, void), uint64_t a2, _OWORD *a3, _DWORD *a4, unsigned int a5, void *a6, size_t *a7, _BYTE *a8)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMSecContextGetUnlockSecret");
  }

  memset(v30, 0, sizeof(v30));
  v27 = 64;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v26 = 129;
  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2157);
LABEL_26:
    v21 = 70;
    v20 = 4294967293;
    goto LABEL_14;
  }

  if (!a6 || !a7 || !a8)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "unlockSecret && unlockSecretLength && unlockSecretType", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2158);
    goto LABEL_26;
  }

  if ((a4 != 0) != (a5 != 0))
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "( (parametersCount > 0 && parameters != ((void*)0)) || ((parametersCount == 0) && parameters == ((void*)0)))", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2159);
    goto LABEL_26;
  }

  UnlockSecret_Serialize = LibSer_GetUnlockSecret_Serialize(a3, a4, a5, v30, &v27);
  if (UnlockSecret_Serialize)
  {
    v20 = UnlockSecret_Serialize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", UnlockSecret_Serialize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2162);
  }

  else
  {
    v17 = a1(a2, 50, 0, v30, v27, v28, &v26);
    if (v17)
    {
      v20 = v17;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v17, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2165);
      v21 = 70;
      goto LABEL_14;
    }

    __len = 0;
    __src = 0;
    v23 = 0;
    UnlockSecretResponse_Deserialize = LibSer_GetUnlockSecretResponse_Deserialize(v28, v26, &__src, &__len, &v23);
    if (UnlockSecretResponse_Deserialize)
    {
      v20 = UnlockSecretResponse_Deserialize;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", UnlockSecretResponse_Deserialize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2173);
    }

    else
    {
      v19 = __len;
      if (*a7 < __len)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*unlockSecretLength >= dataSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2174);
        v20 = 4294967276;
      }

      else
      {
        if (__src)
        {
          memmove(a6, __src, __len);
          v20 = 0;
          *a7 = v19;
          *a8 = v23;
          v21 = 10;
          goto LABEL_14;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "data", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2175);
        v20 = 4294967291;
      }
    }
  }

  v21 = 70;
LABEL_14:
  if (v21 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSecContextGetUnlockSecret", v20);
  }

  return v20;
}

uint64_t LibCall_ACMSEPControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, unint64_t, unsigned int *, unint64_t *), uint64_t a2, const void *a3, size_t a4, _OWORD *a5, _DWORD *a6, unsigned int a7, void *a8, size_t *a9)
{
  v30 = a8;
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl");
  }

  v34 = 0;
  bzero(v35, 0x400uLL);
  v33 = 1024;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "transport", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2195);
LABEL_26:
    v22 = 70;
    v21 = 4294967293;
    goto LABEL_17;
  }

  v16 = a4 - 4097 < 0xFFFFFFFFFFFFF000;
  if (!a3)
  {
    v16 = a4 != 0;
  }

  if (v16)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(data && dataLength && dataLength <= 4096) || (!data && !dataLength)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2196);
    goto LABEL_26;
  }

  Size = LibSer_SEPControl_GetSize(a4, a6, a7, &v34);
  if (Size)
  {
    v27 = Size;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", Size, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2201);
    v22 = 70;
    v21 = v27;
    goto LABEL_17;
  }

  __chkstk_darwin();
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v19, v18);
  v20 = LibSer_SEPControl_Serialize(a5, a6, a7, a3, a4, v19, &v34);
  if (v20)
  {
    v21 = v20;
    v28 = 2209;
LABEL_24:
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v21, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", v28);
    v22 = 70;
    goto LABEL_17;
  }

  v21 = a1(a2, 51, 0, v19, v34, v35, &v33);
  if (v21)
  {
    v28 = 2213;
    goto LABEL_24;
  }

  v22 = 10;
  v23 = v30;
  if (!v30 || !a9)
  {
    goto LABEL_17;
  }

  v31 = 0;
  v32 = 0;
  v24 = LibSer_SEPControlResponse_Deserialize(v35, v33, &v32, &v31);
  if (v24)
  {
    v21 = v24;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v24, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2221);
LABEL_29:
    v22 = 70;
    goto LABEL_17;
  }

  v25 = v31;
  if (*a9 < v31)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*resultLength >= respDataSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 2222);
    v21 = 4294967276;
    goto LABEL_29;
  }

  if (v32)
  {
    memmove(v23, v32, v31);
  }

  v21 = 0;
  *a9 = v25;
  v22 = 10;
LABEL_17:
  if (v22 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl", v21);
  }

  return v21;
}

uint64_t aclRequiresPasscodeInternal(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, int *, uint64_t *), uint64_t a2, const void *a3, unsigned int a4, _BYTE *a5)
{
  v18 = 0;
  v17 = 4;
  v10 = a4;
  __chkstk_darwin();
  v11 = (&v16 - ((v10 + 19) & 0x1FFFFFFF0));
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "aclRequiresPasscodeInternal");
  }

  bzero(&v16 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4);
  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "acl", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1909);
LABEL_13:
    v14 = 70;
    v13 = 4294967293;
    goto LABEL_8;
  }

  if (!a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirePasscode", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1910);
    goto LABEL_13;
  }

  *v11 = a4;
  memcpy(v11 + 1, a3, v10);
  v12 = a1(a2, 17, 0, &v16 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4, &v18, &v17);
  if (v12)
  {
    v13 = v12;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v12, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1918);
    v14 = 70;
  }

  else if (v17 == 4)
  {
    v13 = 0;
    *a5 = 1;
    v14 = 10;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseSize == sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibCall.c", 1921);
    v14 = 70;
    v13 = 4294967291;
  }

LABEL_8:
  if (v14 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "aclRequiresPasscodeInternal", v13);
  }

  return v13;
}

uint64_t acm_mem_alloc_data(uint64_t a1)
{
  v2 = IOMallocZeroData();
  if (v2)
  {
    _allocatedMem_2 += a1;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "ptr", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonMem.c", 49);
  }

  return v2;
}

void acm_mem_free_data(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    IOFreeData();
    if (_allocatedMem_2 < a2)
    {
      acm_mem_free_data_cold_1();
    }

    else
    {
      _allocatedMem_2 -= a2;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "ptr", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonMem.c", 56);
  }
}

void acm_mem_alloc_info(const char *a1, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    _allocatedMem_0 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    IOLog("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, 0, v8, a5, v6);
  }
}

void acm_mem_free_info(const char *a1, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  v9 = a3;
  if (a2)
  {
    v12 = _allocatedMem_0 - a3;
    if (_allocatedMem_0 < a3)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "_allocatedMem.total >= size", 0, "heap underflow / memory tracking issue?", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonMem.c", 123);
      v12 = 0;
    }

    _allocatedMem_0 = v12;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v13 = "NULL";
    if (a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = "NULL";
    }

    if (a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = "NULL";
    }

    if (a6)
    {
      v13 = a6;
    }

    IOLog("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v14, a2, v9, _allocatedMem_0, 0, _allocatedMem_2, 0, v15, a5, v13);
  }
}

uint64_t GetSerializedVerifyPolicySize(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned int a6, void *a7)
{
  v14 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 243);
    return 4294967293;
  }

  if (!__s1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "policyId", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 244);
    return 4294967293;
  }

  if (!a7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 245);
    return 4294967293;
  }

  v10 = strnlen(__s1, 0x81uLL);
  if (v10 >= 0x81)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "policyLength <= 128", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 249);
    return 4294967293;
  }

  v11 = v10;
  LengthOfParameters = getLengthOfParameters(a5, a6, &v14);
  if (LengthOfParameters)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == kACMErrorSuccess", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 253);
  }

  else
  {
    *a7 = v11 + v14 + 26;
  }

  return LengthOfParameters;
}

uint64_t getLengthOfParameters(_DWORD *a1, unsigned int a2, _DWORD *a3)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "getLengthOfParameters");
  }

  if (a3)
  {
    *a3 = 0;
    v6 = 0;
    if (!a2)
    {
LABEL_9:
      v11 = 0;
      *a3 = v6;
      v12 = 10;
      goto LABEL_10;
    }

    v7 = a2;
    while (1)
    {
      v8 = checkParameter(a1);
      if (v8)
      {
        v11 = v8;
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v8, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 111);
        v12 = 70;
        goto LABEL_10;
      }

      v9 = v6 + 8;
      v10 = a1[4];
      v6 += v10 + 8;
      if (__CFADD__(v10, v9))
      {
        break;
      }

      a1 += 6;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parametersLength + param->parameterDataLength >= parametersLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 113);
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "paramsLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 101);
  }

  v12 = 70;
  v11 = 4294967293;
LABEL_10:
  if (v12 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "getLengthOfParameters", v11);
  }

  return v11;
}

uint64_t SerializeVerifyPolicy(_OWORD *a1, char *__s1, char a3, uint64_t a4, _DWORD *a5, unsigned int a6, uint64_t a7, size_t *a8)
{
  v24 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 278);
    return 4294967293;
  }

  if (!__s1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "policyId", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 279);
    return 4294967293;
  }

  if ((a5 != 0) != (a6 != 0))
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(parameters && parametersCount) || (!parameters && !parametersCount)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 280);
    return 4294967293;
  }

  if (a6 >= 0xB)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parametersCount <= 10", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 281);
    return 4294967293;
  }

  if (!a7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 282);
    return 4294967293;
  }

  if (!a8)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 283);
    return 4294967293;
  }

  v13 = a4;
  SerializedVerifyPolicySize = GetSerializedVerifyPolicySize(a1, __s1, 0, a4, a5, a6, &v24);
  if (SerializedVerifyPolicySize)
  {
    v21 = SerializedVerifyPolicySize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedVerifyPolicySize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 287);
    return v21;
  }

  if (*a8 < v24)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 288);
    return 4294967293;
  }

  *a7 = *a1;
  v17 = strnlen(__s1, 0x81uLL);
  if (v17 >= 0x81)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "policyLength <= 128", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 296);
    return 4294967293;
  }

  v18 = v17;
  memmove((a7 + 16), __s1, v17 + 1);
  v19 = a7 + v18;
  if (((a7 ^ (a7 + v18)) & 0xFFC0000000000000) != 0)
  {
    v19 = v19 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  *(v19 + 17) = a3;
  *(v19 + 18) = v13;
  v23 = v18 + 22;
  v20 = serializeParameters(a5, a6, a7, &v23);
  v21 = v20;
  if (v20)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v20, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 310);
  }

  else
  {
    *a8 = v23;
  }

  return v21;
}

uint64_t serializeParameters(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "serializeParameters");
  }

  if (a3 && a4)
  {
    v8 = *a4;
    *(a3 + v8) = a2;
    v9 = v8 + 4;
    if (a2)
    {
      v10 = a2;
      while (1)
      {
        *__src = *a1;
        __len = *(a1 + 16);
        v11 = checkParameter(__src);
        if (v11)
        {
          break;
        }

        v12 = (a3 + v9);
        v13 = __len;
        *v12 = __src[0];
        v12[1] = v13;
        v9 += 8;
        if (v13)
        {
          v14 = a3 + v9;
          if (((a3 ^ (a3 + v9)) & 0xFFC0000000000000) != 0)
          {
            v14 = v14 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
          }

          memmove(v14, __src[1], v13);
          v9 += v13;
        }

        a1 += 24;
        if (!--v10)
        {
          goto LABEL_13;
        }
      }

      v15 = v11;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v11, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 148);
      v16 = 70;
    }

    else
    {
LABEL_13:
      v15 = 0;
      *a4 = v9;
      v16 = 10;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer && offset", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 134);
    v16 = 70;
    v15 = 4294967293;
  }

  if (v16 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "serializeParameters", v15);
  }

  return v15;
}

uint64_t DeserializeVerifyPolicy(uint64_t a1, unint64_t a2, _OWORD *a3, void *a4, BOOL *a5, _DWORD *a6, void *a7, _DWORD *a8)
{
  v28 = 0;
  v27 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 334);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 335);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "policyId", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 336);
    return 4294967293;
  }

  if (!a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "preflight", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 337);
    return 4294967293;
  }

  if (!a6)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "maxGlobalCredentialAge", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 338);
    return 4294967293;
  }

  if (!a7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parameters", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 339);
    return 4294967293;
  }

  if (!a8)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parametersCount", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 340);
    return 4294967293;
  }

  if (a2 <= 0xF)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(ACMHandle)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 343);
    return 4294967293;
  }

  *a3 = *a1;
  v15 = (a1 + 16);
  v16 = a2 - 16;
  v17 = strnlen((a1 + 16), a2 - 16);
  v18 = v17;
  if (v17 >= 0x81uLL)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(policyLength <= 128)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 349);
    return 4294967293;
  }

  if (v16 <= v17)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= (policyLength + 1)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 350);
    return 4294967293;
  }

  v19 = acm_mem_alloc_data(v17 + 1);
  acm_mem_alloc_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 351, "DeserializeVerifyPolicy");
  if (!v19)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "policy", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 352);
    return 4294967292;
  }

  memmove(v19, v15, v18 + 1);
  v29 = v18 + 17;
  if (v18 + 17 == a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(uint8_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 357);
LABEL_31:
    v24 = 4294967293;
    goto LABEL_33;
  }

  v20 = *(a1 + v18 + 17) != 0;
  v29 = v18 + 18;
  if (a2 - (v18 + 18) <= 3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 362);
    goto LABEL_31;
  }

  v26 = v19;
  v21 = a8;
  v22 = *(a1 + v18 + 18);
  v29 = v18 + 22;
  v23 = deserializeParameters(a1, a2, &v29, &v28, &v27);
  v24 = v23;
  if (!v23)
  {
    *a4 = v26;
    *a5 = v20;
    *a6 = v22;
    *a7 = v28;
    *v21 = v27;
    return v24;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v23, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 368);
  v19 = v26;
LABEL_33:
  acm_mem_free_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 380, "DeserializeVerifyPolicy");
  acm_mem_free_data(v19, v18 + 1);
  if (v28)
  {
    Util_SafeDeallocParameters(v28, v27);
  }

  return v24;
}

uint64_t deserializeParameters(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4, _DWORD *a5)
{
  v10 = &kmod_info;
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  if (!a1 || !a3 || !a4 || !a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer && offset && parameters && parametersCount", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 178);
LABEL_40:
    v23 = 70;
    v22 = 4294967293;
    goto LABEL_27;
  }

  v11 = *a3;
  v27 = a4;
  if (a2 <= *a3)
  {
    LODWORD(v21) = 0;
    goto LABEL_25;
  }

  if (a2 - *a3 <= 3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - newOffset) >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 184);
    goto LABEL_40;
  }

  v21 = *(a1 + v11);
  if (v21 >= 0xB)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "paramsCount <= 10", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 187);
    goto LABEL_40;
  }

  v11 += 4;
  if (!v21)
  {
LABEL_25:
    v20 = 0;
LABEL_26:
    v22 = 0;
    *v27 = v20;
    *a5 = v21;
    v23 = 10;
    *a3 = v11;
    goto LABEL_27;
  }

  v12 = IOMallocTypeVarImpl();
  acm_mem_alloc_info("array of ACMParameter", v12, 24 * v21, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v12)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "params", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 197);
    v23 = 70;
    v22 = 4294967292;
    goto LABEL_27;
  }

  v25 = v12;
  v26 = a3;
  v13 = v12;
  v14 = v21;
  while (1)
  {
    *(v13 + 1) = 0;
    if (a2 - v11 <= 7)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - newOffset) >= sizeof(ACMParameterType) + sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 201);
LABEL_33:
      v23 = 70;
      v22 = 4294967293;
      goto LABEL_36;
    }

    *v13 = *(a1 + v11);
    if (a2 - (v11 + 4) <= 3)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - newOffset) >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 204);
      goto LABEL_33;
    }

    v15 = *(a1 + v11 + 4);
    v13[4] = v15;
    v11 += 8;
    if (a2 - v11 < v15)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - newOffset) >= params[i].parameterDataLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 208);
      goto LABEL_33;
    }

    v16 = checkParameter(v13);
    if (v16)
    {
      v22 = v16;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v16, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 211);
      v23 = 70;
      goto LABEL_36;
    }

    v17 = v13[4];
    if (v17)
    {
      break;
    }

LABEL_23:
    v13 += 6;
    if (!--v14)
    {
      v10 = &kmod_info;
      a3 = v26;
      v20 = v25;
      goto LABEL_26;
    }
  }

  v18 = acm_mem_alloc_data(v13[4]);
  acm_mem_alloc_info("<data>", v18, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v13 + 1) = v18;
  if (v18)
  {
    v19 = a1 + v11;
    if (((a1 ^ (a1 + v11)) & 0xFFC0000000000000) != 0)
    {
      v19 = v19 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    memmove(v18, v19, v13[4]);
    v11 += v13[4];
    goto LABEL_23;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "params[i].parameterData", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 215);
  v23 = 70;
  v22 = 4294967292;
LABEL_36:
  v10 = &kmod_info;
LABEL_27:
  if (v23 >= v10[196])
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v22);
  }

  return v22;
}

uint64_t GetSerializedVerifyAclConstraintSize(int a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, _DWORD *a9, unsigned int a10, void *a11)
{
  v19 = 0;
  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "aclConstraint", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 398);
    return 4294967293;
  }

  if (!a11)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 399);
    return 4294967293;
  }

  if ((a9 != 0) != (a10 != 0))
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(parameters && parametersCount) || (!parameters && !parametersCount)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 400);
    return 4294967293;
  }

  if (a10 >= 0xB)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parametersCount <= 10", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 401);
    return 4294967293;
  }

  LengthOfParameters = getLengthOfParameters(a9, a10, &v19);
  if (LengthOfParameters)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == kACMErrorSuccess", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 405);
  }

  else
  {
    v15 = 29;
    if (a1 == 32)
    {
      v15 = 33;
    }

    v16 = v15 + a4;
    if (a1 == 32)
    {
      v17 = a6;
    }

    else
    {
      v17 = 0;
    }

    *a11 = v16 + v17 + v19;
  }

  return LengthOfParameters;
}

uint64_t SerializeVerifyAclConstraint(int a1, _OWORD *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, char a7, uint64_t a8, _DWORD *a9, unsigned int a10, uint64_t a11, unint64_t *a12)
{
  v29 = 0;
  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "aclConstraint", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 441);
    return 4294967293;
  }

  if ((a9 != 0) != (a10 != 0))
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(parameters && parametersCount) || (!parameters && !parametersCount)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 442);
    return 4294967293;
  }

  if (a10 >= 0xB)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parametersCount <= 10", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 443);
    return 4294967293;
  }

  if (!a11)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 444);
    return 4294967293;
  }

  if (!a12)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 445);
    return 4294967293;
  }

  v27 = a8;
  SerializedVerifyAclConstraintSize = GetSerializedVerifyAclConstraintSize(a1, a2, a3, a4, a5, a6, 0, a8, a9, a10, &v29);
  if (SerializedVerifyAclConstraintSize)
  {
    v23 = SerializedVerifyAclConstraintSize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedVerifyAclConstraintSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 449);
    return v23;
  }

  if (*a12 < v29)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 450);
    return 4294967293;
  }

  if (a2)
  {
    *a11 = *a2;
  }

  else
  {
    *a11 = 0;
    *(a11 + 8) = 0;
  }

  *(a11 + 16) = a4;
  memmove((a11 + 20), a3, a4);
  v18 = a4 + 20;
  if (a1 == 32)
  {
    *(a11 + v18) = a6;
    v19 = a4 + 24;
    v20 = a11 + v19;
    if (((a11 ^ (a11 + v19)) & 0xFFC0000000000000) != 0)
    {
      v20 = v20 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    memmove(v20, a5, a6);
    v18 = v19 + a6;
  }

  v21 = a11 + v18;
  if (((a11 ^ (a11 + v18)) & 0xFFC0000000000000) != 0)
  {
    v21 = v21 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  *v21 = a7;
  *(v21 + 1) = v27;
  v28 = v18 + 5;
  v22 = serializeParameters(a9, a10, a11, &v28);
  v23 = v22;
  if (v22)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v22, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 487);
  }

  else
  {
    *a12 = v28;
  }

  return v23;
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, size_t *a7, _DWORD *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v35 = 0;
  v34 = 0;
  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 515);
LABEL_36:
    v30 = 4294967293;
    goto LABEL_49;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 516);
    goto LABEL_36;
  }

  if (!a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "aclConstraint", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 517);
    goto LABEL_36;
  }

  if (!a6)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "aclConstraintLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 518);
    goto LABEL_36;
  }

  if (!a9)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "preflight", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 519);
    goto LABEL_36;
  }

  if (!a10)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "maxGlobalCredentialAge", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 520);
    goto LABEL_36;
  }

  if (!a11)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parameters", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 521);
    goto LABEL_36;
  }

  if (!a12)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parametersCount", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 522);
    goto LABEL_36;
  }

  if (a3 <= 0xF)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(ACMHandle)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 525);
    goto LABEL_36;
  }

  v14 = a3;
  *a4 = *a2;
  v36 = 16;
  if ((a3 & 0xFFFFFFFC) == 0x10)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 530);
    goto LABEL_36;
  }

  v18 = *(a2 + 16);
  v36 = 20;
  v19 = acm_mem_alloc_data(v18);
  acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
  if (v19)
  {
    if (v14 - 20 < v18)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= constraintLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 536);
    }

    else
    {
      memmove(v19, (a2 + 20), v18);
      v20 = v18 + 20;
      v36 = v18 + 20;
      if (a1 != 32)
      {
        v23 = 0;
        LODWORD(v21) = 0;
        goto LABEL_21;
      }

      if (v14 - v20 > 3)
      {
        v21 = *(a2 + v20);
        v22 = v18 + 24;
        v36 = v18 + 24;
        v23 = acm_mem_alloc_data(v21);
        acm_mem_alloc_info("<data>", v23, v21, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
        if (!v23)
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "op", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 547);
          v30 = 4294967292;
          goto LABEL_47;
        }

        if (v14 - v22 >= v21)
        {
          v24 = a2 + v22;
          if (((a2 ^ (a2 + v22)) & 0xFFC0000000000000) != 0)
          {
            v24 = v24 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
          }

          memmove(v23, v24, v21);
          v20 = v22 + v21;
          v36 = v22 + v21;
LABEL_21:
          if (v20 == v14)
          {
            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(uint8_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 554);
          }

          else
          {
            v25 = *(a2 + v20) != 0;
            v36 = v20 + 1;
            if (v14 - (v20 + 1) > 3)
            {
              v32 = v18;
              v26 = v21;
              v21 = v23;
              v27 = v19;
              v28 = *(a2 + v20 + 1);
              v36 = v20 + 5;
              v29 = deserializeParameters(a2, v14, &v36, &v35, &v34);
              v30 = v29;
              if (!v29)
              {
                *a5 = v27;
                *a7 = v21;
                *a8 = v26;
                *a6 = v32;
                *a9 = v25;
                *a10 = v28;
                *a11 = v35;
                *a12 = v34;
                return v30;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v29, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 565);
              v19 = v27;
              v23 = v21;
              LODWORD(v21) = v26;
              v18 = v32;
              goto LABEL_47;
            }

            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 559);
          }

          goto LABEL_46;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= opLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 548);
LABEL_46:
        v30 = 4294967293;
LABEL_47:
        acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
        acm_mem_free_data(v19, v18);
        if (v23)
        {
          acm_mem_free_info("<data>", v23, v21, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
          acm_mem_free_data(v23, v21);
        }

        goto LABEL_49;
      }

      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 542);
    }

    v23 = 0;
    LODWORD(v21) = 0;
    goto LABEL_46;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "constraint", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 535);
  v30 = 4294967292;
LABEL_49:
  if (v35)
  {
    Util_SafeDeallocParameters(v35, v34);
  }

  return v30;
}

uint64_t GetSerializedProcessAclSize(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, _DWORD *a7, unsigned int a8, void *a9)
{
  v13 = 0;
  if (!a2 || !a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "acl && aclLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 603);
    return 4294967293;
  }

  if (!a9)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 604);
    return 4294967293;
  }

  if ((a7 != 0) != (a8 != 0))
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(parameters && parametersCount) || (!parameters && !parametersCount)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 605);
    return 4294967293;
  }

  if (a8 >= 0xB)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parametersCount <= 10", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 606);
    return 4294967293;
  }

  LengthOfParameters = getLengthOfParameters(a7, a8, &v13);
  if (LengthOfParameters)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == kACMErrorSuccess", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 610);
  }

  else
  {
    *a9 = a3 + a5 + v13 + 36;
  }

  return LengthOfParameters;
}

uint64_t SerializeProcessAcl(_OWORD *a1, const void *a2, unsigned int a3, const void *a4, unsigned int a5, uint64_t a6, _DWORD *a7, unsigned int a8, uint64_t a9, unint64_t *a10)
{
  v25 = 0;
  if (!a2 || !a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "acl && aclLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 636);
    return 4294967293;
  }

  if ((a7 != 0) != (a8 != 0))
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(parameters && parametersCount) || (!parameters && !parametersCount)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 637);
    return 4294967293;
  }

  if (a8 >= 0xB)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parametersCount <= 10", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 638);
    return 4294967293;
  }

  if (!a9)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 639);
    return 4294967293;
  }

  if (!a10)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 640);
    return 4294967293;
  }

  v16 = a6;
  SerializedProcessAclSize = GetSerializedProcessAclSize(a1, a2, a3, a4, a5, a6, a7, a8, &v25);
  if (SerializedProcessAclSize)
  {
    v21 = SerializedProcessAclSize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedProcessAclSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 644);
    return v21;
  }

  if (*a10 < v25)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 645);
    return 4294967293;
  }

  if (a1)
  {
    *a9 = *a1;
  }

  else
  {
    *a9 = 0;
    *(a9 + 8) = 0;
  }

  *(a9 + 16) = a3;
  memmove((a9 + 20), a2, a3);
  *(a9 + a3 + 20) = a5;
  v18 = a3 + 24;
  if (a5)
  {
    v19 = a9 + v18;
    if (((a9 ^ (a9 + v18)) & 0xFFC0000000000000) != 0)
    {
      v19 = v19 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    memmove(v19, a4, a5);
    v18 += a5;
  }

  *(a9 + v18) = v16;
  v24 = v18 + 4;
  v20 = serializeParameters(a7, a8, a9, &v24);
  v21 = v20;
  if (v20)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v20, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 679);
  }

  else
  {
    *a10 = v24;
  }

  return v21;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, size_t *a6, _DWORD *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v33 = 0;
  v32 = 0;
  v31 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 705);
LABEL_37:
    v26 = 4294967293;
    goto LABEL_49;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 706);
    goto LABEL_37;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "acl", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 707);
    goto LABEL_37;
  }

  if (!a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "aclLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 708);
    goto LABEL_37;
  }

  if (!a6)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "operation", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 709);
    goto LABEL_37;
  }

  if (!a7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "operationLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 710);
    goto LABEL_37;
  }

  if (!a8)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "maxGlobalCredentialAge", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 711);
    goto LABEL_37;
  }

  if (!a9)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parameters", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 712);
    goto LABEL_37;
  }

  if (!a10)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parametersCount", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 713);
    goto LABEL_37;
  }

  if (a2 <= 0xF)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(ACMHandle)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 716);
    goto LABEL_37;
  }

  v16 = a2;
  *a3 = *a1;
  v33 = 16;
  if ((a2 & 0xFFFFFFFC) == 0x10)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 721);
    goto LABEL_37;
  }

  v17 = *(a1 + 16);
  v33 = 20;
  v18 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v18, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
  if (v18)
  {
    if (v16 - 20 < v17)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= tmpAclLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 726);
    }

    else
    {
      memmove(v18, (a1 + 20), v17);
      v33 = v17 + 20;
      if (v16 - (v17 + 20) > 3)
      {
        v29 = a4;
        v30 = a5;
        v19 = *(a1 + v17 + 20);
        v20 = v17 + 24;
        v33 = v17 + 24;
        if (!v19)
        {
          v21 = 0;
LABEL_22:
          if (v16 - v20 > 3)
          {
            v28 = v19;
            v19 = v21;
            v23 = v18;
            v24 = *(a1 + v20);
            v33 = v20 + 4;
            v25 = deserializeParameters(a1, v16, &v33, &v32, &v31);
            v26 = v25;
            if (!v25)
            {
              *v29 = v23;
              *v30 = v17;
              *a6 = v19;
              *a7 = v28;
              *a8 = v24;
              *a9 = v32;
              *a10 = v31;
              return v26;
            }

            IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v25, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 750);
            v18 = v23;
            v21 = v19;
            LODWORD(v19) = v28;
            goto LABEL_47;
          }

          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 744);
          goto LABEL_46;
        }

        v21 = acm_mem_alloc_data(v19);
        acm_mem_alloc_info("<data>", v21, v19, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
        if (!v21)
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "op", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 737);
          v26 = 4294967292;
          goto LABEL_47;
        }

        if (v16 - v20 >= v19)
        {
          v22 = a1 + v20;
          if (((a1 ^ (a1 + v20)) & 0xFFC0000000000000) != 0)
          {
            v22 = v22 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
          }

          memmove(v21, v22, v19);
          v20 += v19;
          v33 = v20;
          goto LABEL_22;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= opLen", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 738);
LABEL_46:
        v26 = 4294967293;
LABEL_47:
        acm_mem_free_info("<data>", v18, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
        acm_mem_free_data(v18, v17);
        if (v21)
        {
          acm_mem_free_info("<data>", v21, v19, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
          acm_mem_free_data(v21, v19);
        }

        goto LABEL_49;
      }

      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 731);
    }

    LODWORD(v19) = 0;
    v21 = 0;
    goto LABEL_46;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "tmpAcl", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 725);
  v26 = 4294967292;
LABEL_49:
  if (v32)
  {
    Util_SafeDeallocParameters(v32, v31);
  }

  return v26;
}

uint64_t GetSerializedRequirementSize(uint64_t a1, int *a2, void *a3)
{
  v13 = 0;
  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 849);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 850);
    return 4294967293;
  }

  v5 = *a2;
  if (*a2 > 0x1C)
  {
    goto LABEL_20;
  }

  if (((1 << v5) & 0x1FFCFF4E) != 0)
  {
    v7 = 0;
    *a3 = getRequirementDataSizeForVersion(a1, a2) + 16;
    return v7;
  }

  if (((1 << v5) & 0x30) != 0)
  {
    *a3 = 20;
    if (a2[4])
    {
      v9 = 0;
      while (1)
      {
        SerializedRequirementSize = GetSerializedRequirementSize(a1, *&a2[2 * v9 + 5], &v13);
        if (SerializedRequirementSize)
        {
          break;
        }

        *a3 += v13;
        if (++v9 >= a2[4])
        {
          return 0;
        }
      }

      v7 = SerializedRequirementSize;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedRequirementSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 886);
      return v7;
    }

    return 0;
  }

  if (v5 != 7)
  {
LABEL_20:
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 902);
    return 4294967293;
  }

  *a3 = 24;
  if (!a2[5])
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = GetSerializedRequirementSize(a1, *&a2[2 * v11 + 6], &v13);
    v7 = v12;
    if (v12)
    {
      break;
    }

    *a3 += v13;
    if (++v11 >= a2[5])
    {
      return v7;
    }
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v12, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 895);
  return v7;
}

uint64_t getRequirementDataSizeForVersion(unsigned int a1, _DWORD *a2)
{
  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1A)
  {
    return 0;
  }

  else
  {
    return qword_758[v2];
  }
}

uint64_t SerializeRequirement(uint64_t a1, int *a2, uint64_t a3, unint64_t *a4)
{
  v25 = 0;
  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 922);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 923);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "bufferSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 924);
    return 4294967293;
  }

  SerializedRequirementSize = GetSerializedRequirementSize(a1, a2, &v25);
  if (SerializedRequirementSize)
  {
    v14 = SerializedRequirementSize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedRequirementSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 928);
    return v14;
  }

  if (v25 > *a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "reqLen <= *bufferSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 929);
    return 4294967293;
  }

  RequirementDataSizeForVersion = getRequirementDataSizeForVersion(a1, a2);
  v10 = a2[2];
  *a3 = *a2;
  *(a3 + 8) = v10;
  *(a3 + 12) = RequirementDataSizeForVersion;
  v11 = *a2;
  if (*a2 > 0x1C)
  {
LABEL_27:
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 996);
    return 4294967293;
  }

  if (((1 << v11) & 0x1FFCFF4E) == 0)
  {
    if (((1 << v11) & 0x30) != 0)
    {
      *(a3 + 16) = a2[4];
      if (!a2[4])
      {
        v13 = 20;
        goto LABEL_9;
      }

      v16 = 0;
      v13 = 20;
      while (1)
      {
        v24 = *a4 - v13;
        v17 = a3 + v13;
        if (((a3 ^ (a3 + v13)) & 0xFFC0000000000000) != 0)
        {
          v17 = v17 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
        }

        v18 = SerializeRequirement(a1, *&a2[2 * v16 + 5], v17, &v24);
        if (v18)
        {
          break;
        }

        v13 += v24;
        if (++v16 >= a2[4])
        {
          goto LABEL_9;
        }
      }

      v14 = v18;
      v22 = v18;
      v23 = 978;
LABEL_38:
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v22, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", v23);
      return v14;
    }

    if (v11 == 7)
    {
      *(a3 + 16) = *(a2 + 2);
      if (!a2[5])
      {
        v13 = 24;
        goto LABEL_9;
      }

      v19 = 0;
      v13 = 24;
      while (1)
      {
        v24 = *a4 - v13;
        v20 = a3 + v13;
        if (((a3 ^ (a3 + v13)) & 0xFFC0000000000000) != 0)
        {
          v20 = v20 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
        }

        v21 = SerializeRequirement(a1, *&a2[2 * v19 + 6], v20, &v24);
        if (v21)
        {
          break;
        }

        v13 += v24;
        if (++v19 >= a2[5])
        {
          goto LABEL_9;
        }
      }

      v14 = v21;
      v22 = v21;
      v23 = 990;
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  v12 = getRequirementDataSizeForVersion(a1, a2);
  memmove((a3 + 16), a2 + 4, v12);
  v13 = v12 + 16;
LABEL_9:
  v14 = 0;
  *a4 = v13;
  return v14;
}

uint64_t DeserializeRequirement(unsigned int *a1, unint64_t a2, void **a3, uint64_t *a4)
{
  __dst = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1020);
    return 4294967293;
  }

  if (a2 <= 0xF)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMRequirement)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1021);
    goto LABEL_39;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirement", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1022);
    goto LABEL_39;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "consumedBytes", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1023);
    goto LABEL_39;
  }

  v8 = *a1;
  if (v8 > 0x1C)
  {
LABEL_38:
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1130);
LABEL_39:
    v13 = 4294967293;
    goto LABEL_40;
  }

  if (((1 << v8) & 0x1FFCFF4E) == 0)
  {
    if (((1 << v8) & 0x30) != 0)
    {
      v15 = a1[4];
      if (8 * v15 + 20 > a2)
      {
        v32 = 1067;
        goto LABEL_50;
      }

      v16 = Util_AllocRequirement(v8, v15, &__dst);
      if (!v16)
      {
        v17 = __dst;
        if (!__dst)
        {
          v33 = 1071;
          goto LABEL_53;
        }

        if (*(__dst + 3) == 84)
        {
          v18 = a1[4];
          *__dst = *a1;
          v17[3] = 84;
          v17[4] = v18;
          if (!a1[4])
          {
            v10 = 20;
            goto LABEL_12;
          }

          v19 = 0;
          v10 = 20;
          while (1)
          {
            v34 = 0;
            v35 = 0;
            v20 = a1 + v10;
            if (((a1 ^ (a1 + v10)) & 0xFFC0000000000000) != 0)
            {
              v20 = v20 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
            }

            v21 = DeserializeRequirement(v20, a2 - v10, &v35, &v34);
            if (v21)
            {
              break;
            }

            *(__dst + 8 * v19 + 20) = v35;
            v10 += v34;
            if (++v19 >= a1[4])
            {
              goto LABEL_12;
            }
          }

          v29 = v21;
          v30 = v21;
          v31 = 1090;
          goto LABEL_56;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "req->dataLength == sizeof(ACMRequirementDataAnd)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1077);
LABEL_65:
        v13 = 4294967291;
        goto LABEL_40;
      }

      v29 = v16;
      v30 = v16;
      v31 = 1070;
      goto LABEL_56;
    }

    if (v8 == 7)
    {
      v22 = a1[5];
      if (8 * v22 + 24 > a2)
      {
        v32 = 1100;
        goto LABEL_50;
      }

      v23 = Util_AllocRequirement(7, v22, &__dst);
      if (v23)
      {
        v13 = v23;
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v23, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1103);
        goto LABEL_40;
      }

      v24 = __dst;
      if (!__dst)
      {
        v33 = 1104;
        goto LABEL_53;
      }

      if (*(__dst + 3) != 88)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "req->dataLength == sizeof(ACMRequirementDataKofN)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1110);
        goto LABEL_65;
      }

      v25 = *a1;
      *(__dst + 2) = *(a1 + 2);
      *v24 = v25;
      v24[3] = 88;
      if (!a1[5])
      {
        v10 = 24;
        goto LABEL_12;
      }

      v26 = 0;
      v10 = 24;
      while (1)
      {
        v34 = 0;
        v35 = 0;
        v27 = a1 + v10;
        if (((a1 ^ (a1 + v10)) & 0xFFC0000000000000) != 0)
        {
          v27 = v27 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
        }

        v28 = DeserializeRequirement(v27, a2 - v10, &v35, &v34);
        if (v28)
        {
          break;
        }

        *(__dst + v26 + 3) = v35;
        v10 += v34;
        if (++v26 >= a1[5])
        {
          goto LABEL_12;
        }
      }

      v29 = v28;
      v30 = v28;
      v31 = 1123;
LABEL_56:
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v30, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", v31);
      v13 = v29;
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v9 = a1[3];
  v10 = v9 + 16;
  if (v9 + 16 > a2)
  {
    v32 = 1050;
LABEL_50:
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= reqSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", v32);
    goto LABEL_39;
  }

  v11 = Util_AllocRequirement(v8, 0, &__dst);
  if (v11)
  {
    v13 = v11;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v11, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1052);
    goto LABEL_40;
  }

  if (!__dst)
  {
    v33 = 1053;
LABEL_53:
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "req", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", v33);
    v13 = 4294967292;
    goto LABEL_40;
  }

  v12 = *(__dst + 3);
  if (v12 <= v9)
  {
    memmove(__dst, a1, v12 + 16);
LABEL_12:
    v13 = 0;
    *a4 = v10;
    *a3 = __dst;
    return v13;
  }

  IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "requirementSize <= reqSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1055);
  v13 = 4294967280;
LABEL_40:
  if (__dst)
  {
    Util_DeallocRequirement(__dst);
  }

  return v13;
}

uint64_t GetSerializedCredentialSize(_DWORD *a1, void *a2)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1155);
    return 4294967293;
  }

  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1156);
    return 4294967293;
  }

  if (*a1 > 0x17u || ((1 << *a1) & 0xFFF7FE) == 0)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1187);
    return 4294967293;
  }

  result = 0;
  *a2 = a1[7] + 32;
  return result;
}

uint64_t SerializeCredential(_DWORD *a1, void *a2, unint64_t *a3)
{
  v9 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1207);
    return 4294967293;
  }

  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1208);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1209);
    return 4294967293;
  }

  SerializedCredentialSize = GetSerializedCredentialSize(a1, &v9);
  if (SerializedCredentialSize)
  {
    v7 = SerializedCredentialSize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedCredentialSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1213);
    return v7;
  }

  if (v9 > *a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credLen <= *outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1214);
    return 4294967293;
  }

  if (*a1 > 0x17u || ((1 << *a1) & 0xFFF7FE) == 0)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1246);
    return 4294967293;
  }

  memmove(a2, a1, a1[7] + 32);
  v7 = 0;
  *a3 = a1[7] + 32;
  return v7;
}

uint64_t DeserializeCredential(unsigned int *a1, unint64_t a2, void **a3, void *a4)
{
  __dst = 0;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (a2 <= 0x1F)
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMCredential)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1274);
        }

        else
        {
          v8 = *a1;
          v9 = a1[7];
          switch(*a1)
          {
            case 1u:
              __asm { BTI             j; jumptable 0000000000014A1C case 1 }

              if (v9 == 28)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataPasscodeValidated)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1309);
              break;
            case 2u:
              __asm { BTI             j; jumptable 0000000000014A1C case 2 }

              if (v9 == 136)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataPassphraseEntered)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1297);
              break;
            case 3u:
              __asm { BTI             j; jumptable 0000000000014A1C case 3 }

              if (v9 == 305)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataBiometryMatched)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1305);
              break;
            case 4u:
            case 5u:
            case 6u:
            case 8u:
            case 0xEu:
            case 0x10u:
            case 0x13u:
            case 0x16u:
            case 0x17u:
              __asm { BTI             j; jumptable 0000000000014A1C cases 4-6,8,14,16,19,22,23 }

              if (!v9)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == 0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1289);
              break;
            case 7u:
              __asm { BTI             j; jumptable 0000000000014A1C case 7 }

              if (v9 == 56)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataUserOutputDisplayed)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1301);
              break;
            case 9u:
              __asm { BTI             j; jumptable 0000000000014A1C case 9 }

              if (v9 == 24)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataContinuityUnlock)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1317);
              break;
            case 0xAu:
              __asm { BTI             j; jumptable 0000000000014A1C case 10 }

              if (v9 == 52)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataPasscodeValidated2)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1313);
              break;
            case 0xCu:
            case 0xFu:
              __asm { BTI             j; jumptable 0000000000014A1C cases 12,15 }

              if (v9 == 8)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataKextDenyList)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1322);
              break;
            case 0xDu:
              __asm { BTI             j; jumptable 0000000000014A1C case 13 }

              if (v9 == 132)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataPassphraseExtractable)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1293);
              break;
            case 0x11u:
              __asm { BTI             j; jumptable 0000000000014A1C case 17 }

              if (v9 == 81)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataSecureIntent)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1326);
              break;
            case 0x12u:
              __asm { BTI             j; jumptable 0000000000014A1C case 18 }

              if (v9 == 20)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataBiometryMatchAttempted)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1330);
              break;
            case 0x14u:
              __asm { BTI             j; jumptable 0000000000014A1C case 20 }

              if (v9 == 32)
              {
                goto LABEL_7;
              }

              IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataAP)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1334);
              break;
            case 0x15u:
              __asm { BTI             j; jumptable 0000000000014A1C case 21 }

              if (v9 != 132)
              {
                IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataLength == sizeof(ACMCredentialDataSignature)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1338);
                break;
              }

LABEL_7:
              v14 = Util_AllocCredential(*a1, &__dst);
              if (v14)
              {
                v15 = v14;
                IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v14, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1348);
                goto LABEL_17;
              }

              if (!__dst)
              {
                IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "cred", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1349);
                v15 = 4294967292;
                goto LABEL_17;
              }

              if (*(__dst + 1) >= 4u)
              {
                IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "cred->domain == kACMDomainUnknown || cred->domain == kACMDomainUserMode || cred->domain == kACMDomainKernelMode || cred->domain == kACMDomainSecureEnclave", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1352);
              }

              else if (*(__dst + 2) >= 0x101u)
              {
                IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "cred->numCredSets <= kACMContextPoolTotalCount", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1353);
              }

              else if (v8 <= 0x17 && ((1 << v8) & 0xFFF7FE) != 0)
              {
                if (v9 + 32 <= a2)
                {
                  memmove(__dst, a1, v9 + 32);
                  v15 = 0;
                  *a3 = __dst;
                  *a4 = v9 + 32;
                  return v15;
                }

                IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= credSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1378);
              }

              else
              {
                v17 = 1384;
LABEL_46:
                IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", v17);
              }

              break;
            default:
              __asm { BTI             j; jumptable 0000000000014A1C default case, case 11 }

              v17 = 1342;
              goto LABEL_46;
          }
        }
      }

      else
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "consumedBytes", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1273);
      }
    }

    else
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1272);
    }

    v15 = 4294967293;
LABEL_17:
    if (__dst)
    {
      Util_DeallocCredential(__dst);
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1271);
    return 4294967293;
  }

  return v15;
}

uint64_t CopyCredential(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1410);
    return 4294967293;
  }

  if (a2)
  {
    v4 = Util_AllocCredential(*a1, &__dst);
    if (v4)
    {
      v5 = v4;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v4, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1415);
    }

    else
    {
      if (__dst)
      {
        memmove(__dst, a1, *(a1 + 28) + 32);
        v5 = 0;
        *a2 = __dst;
        return v5;
      }

      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "cred", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1416);
      v5 = 4294967292;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "copy", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1411);
    v5 = 4294967293;
  }

  if (__dst)
  {
    Util_DeallocCredential(__dst);
  }

  return v5;
}

uint64_t CompareCredentials(char *__s1, char *__s2, BOOL *a3)
{
  if (!__s1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential1", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1457);
    return 4294967293;
  }

  if (!__s2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential2", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1458);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "equal", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1459);
    return 4294967293;
  }

  if (*__s1 == *__s2 && (v6 = *(__s1 + 7), v6 == *(__s2 + 7)))
  {
    switch(*__s1)
    {
      case 1:
        __asm { BTI             j; jumptable 0000000000015154 case 1 }

        if (memcmp(__s1, __s2, 0x20uLL))
        {
          goto LABEL_31;
        }

        v15 = __s1 + 44;
        v14 = __s2 + 44;
        goto LABEL_33;
      case 2:
        __asm { BTI             j; jumptable 0000000000015154 case 2 }

        if (*(__s1 + 8) != *(__s2 + 8))
        {
          goto LABEL_31;
        }

        v16 = *(__s1 + 9);
        if (v16 != *(__s2 + 9))
        {
          goto LABEL_31;
        }

        v14 = __s2 + 40;
        v15 = __s1 + 40;
        goto LABEL_34;
      case 3:
        __asm { BTI             j; jumptable 0000000000015154 case 3 }

        if (memcmp(__s1, __s2, 0x20uLL))
        {
          goto LABEL_31;
        }

        v15 = __s1 + 104;
        v14 = __s2 + 104;
        goto LABEL_33;
      case 4:
      case 5:
      case 6:
      case 8:
      case 0xC:
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x16:
      case 0x17:
        __asm { BTI             j; jumptable 0000000000015154 cases 4-6,8,12,14-19,22,23 }

        v11 = memcmp(__s1, __s2, v6 + 32);
        result = 0;
        v13 = v11 == 0;
        goto LABEL_36;
      case 7:
        __asm { BTI             j; jumptable 0000000000015154 case 7 }

        if (memcmp(__s1, __s2, 0x20uLL) || memcmp(__s1 + 32, __s2 + 32, 0x20uLL))
        {
          goto LABEL_31;
        }

        v15 = __s1 + 64;
        v14 = __s2 + 64;
        v16 = 24;
        goto LABEL_34;
      case 9:
        __asm { BTI             j; jumptable 0000000000015154 case 9 }

        if (memcmp(__s1, __s2, 0x20uLL))
        {
          goto LABEL_31;
        }

        v15 = __s1 + 40;
        v14 = __s2 + 40;
        goto LABEL_33;
      case 0xA:
        __asm { BTI             j; jumptable 0000000000015154 case 10 }

        if (memcmp(__s1, __s2, 0x20uLL) || memcmp(__s1 + 36, __s2 + 36, 0x10uLL))
        {
          goto LABEL_31;
        }

        v15 = __s1 + 52;
        v14 = __s2 + 52;
LABEL_33:
        v16 = 16;
        goto LABEL_34;
      case 0xD:
        __asm { BTI             j; jumptable 0000000000015154 case 13 }

        v16 = *(__s1 + 8);
        if (v16 != *(__s2 + 8))
        {
          goto LABEL_31;
        }

        v14 = __s2 + 36;
        v15 = __s1 + 36;
        goto LABEL_34;
      case 0x14:
        __asm { BTI             j; jumptable 0000000000015154 case 20 }

        if (memcmp(__s1, __s2, 0x20uLL))
        {
          goto LABEL_31;
        }

        v14 = __s2 + 32;
        v15 = __s1 + 32;
        v16 = 32;
        goto LABEL_34;
      case 0x15:
        __asm { BTI             j; jumptable 0000000000015154 case 21 }

        if (!memcmp(__s1, __s2, 0x20uLL))
        {
          v15 = __s1 + 36;
          v14 = __s2 + 36;
          v16 = 128;
LABEL_34:
          v13 = memcmp(v15, v14, v16) == 0;
        }

        else
        {
LABEL_31:
          v13 = 0;
        }

        result = 0;
LABEL_36:
        *a3 = v13;
        break;
      default:
        __asm { BTI             j; jumptable 0000000000015154 default case, case 11 }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1566);
        return 4294967293;
    }
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t GetSerializedAddCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  v8 = 0;
  if (!a1 && a3 != 2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle || scope == kACMScopeGlobal", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1589);
    return 4294967293;
  }

  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1590);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1591);
    return 4294967293;
  }

  SerializedCredentialSize = GetSerializedCredentialSize(a2, &v8);
  v6 = SerializedCredentialSize;
  if (SerializedCredentialSize)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedCredentialSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1594);
  }

  else
  {
    *a4 = v8 + 20;
  }

  return v6;
}

uint64_t SerializeAddCredential(_OWORD *a1, _DWORD *a2, int a3, uint64_t a4, unint64_t *a5)
{
  v16 = 0;
  if (!a1 && a3 != 2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle || scope == kACMScopeGlobal", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1615);
    return 4294967293;
  }

  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1616);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1617);
    return 4294967293;
  }

  if (!a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1618);
    return 4294967293;
  }

  SerializedAddCredentialSize = GetSerializedAddCredentialSize(a1, a2, a3, &v16);
  if (SerializedAddCredentialSize)
  {
    v12 = SerializedAddCredentialSize;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedAddCredentialSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1621);
    return v12;
  }

  if (*a5 < v16)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1622);
    return 4294967293;
  }

  if (a1)
  {
    *a4 = *a1;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  v15 = *a5 - 16;
  v11 = SerializeCredential(a2, (a4 + 16), &v15);
  v12 = v11;
  if (v11)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v11, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1636);
  }

  else
  {
    v13 = v15;
    *(a4 + v15 + 16) = a3;
    *a5 = v13 + 20;
  }

  return v12;
}

uint64_t DeserializeAddCredential(uint64_t a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5)
{
  *v12 = 0;
  v13 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1661);
    return 4294967293;
  }

  if (a2 <= 0x33)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMHandle) + sizeof(ACMCredential) + sizeof(ACMScope)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1662);
  }

  else if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        *a3 = *a1;
        v9 = DeserializeCredential((a1 + 16), a2 - 16, v12, &v13);
        if (v9)
        {
          v10 = v9;
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v9, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1671);
          goto LABEL_18;
        }

        if (a2 - (v13 + 16) > 3)
        {
          v10 = 0;
          *a5 = *(a1 + v13 + 16);
          *a4 = *v12;
          return v10;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size - offset >= sizeof(ACMScope)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1674);
      }

      else
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "scope", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1665);
      }
    }

    else
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1664);
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1663);
  }

  v10 = 4294967293;
LABEL_18:
  if (*v12)
  {
    Util_DeallocCredential(*v12);
  }

  return v10;
}

uint64_t DeserializeAddCredentialType(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (!a1 || !a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer && type", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1695);
    return 4294967293;
  }

  if (a2 <= 0x33)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMHandle) + sizeof(ACMCredential) + sizeof(ACMScope)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1696);
    return 4294967293;
  }

  result = 0;
  *a3 = *(a1 + 16);
  return result;
}

uint64_t LibSer_GetSerializedContainsCredential_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && a4)
  {
    result = 0;
    *a4 = 24;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context && outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1709);
    return 4294967293;
  }

  return result;
}

uint64_t LibSer_GetSerializedContainsCredential_Serialize(_OWORD *a1, int a2, int a3, uint64_t a4, void *a5)
{
  if (!a4 || !a1 || !a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "context && outSize && outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1726);
    return 4294967293;
  }

  if (*a5 <= 0x17uLL)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1731);
    return 4294967293;
  }

  result = 0;
  *a4 = *a1;
  *(a4 + 16) = a2;
  *(a4 + 20) = a3;
  *a5 = 24;
  return result;
}

uint64_t GetSerializedRemoveCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  SerializedAddCredentialSize = GetSerializedAddCredentialSize(a1, a2, a3, a4);
  v5 = SerializedAddCredentialSize;
  if (SerializedAddCredentialSize)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedAddCredentialSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1755);
  }

  return v5;
}

uint64_t SerializeRemoveCredential(_OWORD *a1, _DWORD *a2, int a3, uint64_t a4, unint64_t *a5)
{
  v5 = SerializeAddCredential(a1, a2, a3, a4, a5);
  v6 = v5;
  if (v5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v5, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1771);
  }

  return v6;
}

uint64_t DeserializeRemoveCredential(uint64_t a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5)
{
  v5 = DeserializeAddCredential(a1, a2, a3, a4, a5);
  v6 = v5;
  if (v5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v5, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1787);
  }

  return v6;
}

uint64_t GetSerializedReplacePassphraseCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  SerializedAddCredentialSize = GetSerializedAddCredentialSize(a1, a2, a3, a4);
  v5 = SerializedAddCredentialSize;
  if (SerializedAddCredentialSize)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", SerializedAddCredentialSize, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1803);
  }

  return v5;
}

uint64_t SerializeReplacePassphraseCredential(_OWORD *a1, _DWORD *a2, int a3, uint64_t a4, unint64_t *a5)
{
  v5 = SerializeAddCredential(a1, a2, a3, a4, a5);
  v6 = v5;
  if (v5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v5, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1819);
  }

  return v6;
}

uint64_t DeserializeReplacePassphraseCredential(uint64_t a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5)
{
  v5 = DeserializeAddCredential(a1, a2, a3, a4, a5);
  v6 = v5;
  if (v5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v5, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1835);
  }

  return v6;
}

uint64_t SerializeCredentialList(_DWORD **a1, unsigned int a2, unint64_t a3, void *a4)
{
  v6 = a1;
  v14 = 0;
  if (!a1 && a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credentialList || (count == 0)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1851);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1852);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1853);
    return 4294967293;
  }

  *a3 = a2;
  if (a2)
  {
    v7 = a2;
    v8 = 4;
    while (1)
    {
      v9 = *v6;
      if (!*v6)
      {
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credentialList[i]", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1859);
        return 4294967293;
      }

      v14 = *a4 - v8;
      v10 = a3 + v8;
      if (((a3 ^ (a3 + v8)) & 0xFFC0000000000000) != 0)
      {
        v10 = v10 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      v11 = SerializeCredential(v9, v10, &v14);
      if (v11)
      {
        break;
      }

      v8 += v14;
      ++v6;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    v12 = v11;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v11, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1862);
  }

  else
  {
    v8 = 4;
LABEL_14:
    v12 = 0;
    *a4 = v8;
  }

  return v12;
}

uint64_t DeserializeCredentialList(unint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v17 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1886);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credentialList", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1887);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "count", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1888);
    return 4294967293;
  }

  v7 = *a1;
  if (v7 >= 0x3E9)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credCount <= 1000", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1893);
    return 4294967293;
  }

  if (v7)
  {
    v9 = IOMallocTypeVarImpl();
    acm_mem_alloc_info("array of ACMCredentialRef", v9, 8 * v7, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1897, "DeserializeCredentialList");
    if (v9)
    {
      v10 = 4;
      v11 = v9;
      v12 = v7;
      while (1)
      {
        v13 = a1 + v10;
        if (((a1 ^ (a1 + v10)) & 0xFFC0000000000000) != 0)
        {
          v13 = v13 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
        }

        v14 = DeserializeCredential(v13, a2 - v10, v11, &v17);
        if (v14)
        {
          break;
        }

        v10 += v17;
        ++v11;
        if (!--v12)
        {
          goto LABEL_14;
        }
      }

      v15 = v14;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v14, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1902);
      DeallocCredentialList(v9, v7);
    }

    else
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "list", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1898);
      return 4294967292;
    }
  }

  else
  {
    v9 = 0;
LABEL_14:
    v15 = 0;
    *a4 = v7;
    *a3 = v9;
  }

  return v15;
}

void DeallocCredentialList(_DWORD **a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1;
      v5 = a2;
      do
      {
        if (*v4)
        {
          Util_DeallocCredential(*v4);
          *v4 = 0;
        }

        ++v4;
        --v5;
      }

      while (v5);
    }

    acm_mem_free_info("array of ACMCredentialRef", a1, 8 * v3, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1935, "DeallocCredentialList");

    IOFreeTypeVarImpl();
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credentialList", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1926);
  }
}

uint64_t GetSerializedGetContextPropertySize(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    result = 0;
    *a3 = 20;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1949);
    return 4294967293;
  }

  return result;
}

uint64_t SerializeGetContextProperty(_OWORD *a1, int a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1966);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1967);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1968);
    return 4294967293;
  }

  if (*a4 <= 0x13uLL)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1973);
    return 4294967293;
  }

  result = 0;
  *a3 = *a1;
  *(a3 + 16) = a2;
  *a4 = 20;
  return result;
}

uint64_t DeserializeGetContextProperty(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1998);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 1999);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "property", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2000);
    return 4294967293;
  }

  if (a2 <= 0xF)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(ACMHandle)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2003);
    return 4294967293;
  }

  *a3 = *a1;
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0x10)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "(size - offset) >= sizeof(ACMContextProperty)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2008);
    return 4294967293;
  }

  result = 0;
  *a4 = *(a1 + 16);
  return result;
}

uint64_t LibSer_GetAclAuthMethod_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 16;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2023);
    return 4294967293;
  }

  return result;
}

uint64_t LibSer_GetAclAuthMethod_Serialize(_OWORD *a1, _OWORD *a2, void *a3)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2041);
    return 4294967293;
  }

  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2042);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2043);
    return 4294967293;
  }

  if (*a3 <= 0xFuLL)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2048);
    return 4294967293;
  }

  result = 0;
  *a2 = *a1;
  *a3 = 16;
  return result;
}

uint64_t LibSer_GetAclAuthMethod_Deserialize(_OWORD *a1, unint64_t a2, _OWORD *a3)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2068);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2069);
    return 4294967293;
  }

  if (a2 <= 0xF)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMHandle)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2072);
    return 4294967293;
  }

  result = 0;
  *a3 = *a1;
  return result;
}

uint64_t LibSer_ContextCredentialGetProperty_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    result = 0;
    *a4 = 24;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2090);
    return 4294967293;
  }

  return result;
}

uint64_t LibSer_ContextCredentialGetProperty_Serialize(_OWORD *a1, int a2, int a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2108);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2109);
    return 4294967293;
  }

  if (!a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2110);
    return 4294967293;
  }

  if (*a5 <= 0x17uLL)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2115);
    return 4294967293;
  }

  result = 0;
  *a4 = *a1;
  *(a4 + 16) = a2;
  *(a4 + 20) = a3;
  *a5 = 24;
  return result;
}

uint64_t LibSer_ContextCredentialGetProperty_Deserialize(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2144);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2145);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credentialType", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2146);
    return 4294967293;
  }

  if (!a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credentialProperty", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2147);
    return 4294967293;
  }

  if (a2 <= 0x17)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMHandle) + sizeof(ACMCredentialType) + sizeof(ACMCredentialProperty)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2150);
    return 4294967293;
  }

  result = 0;
  *a3 = *a1;
  *a4 = *(a1 + 16);
  *a5 = *(a1 + 20);
  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_GetSize(void *a1)
{
  if (a1)
  {
    result = 0;
    *a1 = 8;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2179);
    return 4294967293;
  }

  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_Serialize(int a1, int a2, _DWORD *a3, void *a4)
{
  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2198);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2199);
    return 4294967293;
  }

  if (*a4 <= 7uLL)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2204);
    return 4294967293;
  }

  result = 0;
  *a3 = a1;
  a3[1] = a2;
  *a4 = 8;
  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_Deserialize(_DWORD *a1, unint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2231);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credentialType", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2232);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credentialProperty", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2233);
    return 4294967293;
  }

  if (a2 <= 7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2238);
    return 4294967293;
  }

  result = 0;
  *a3 = *a1;
  *a4 = a1[1];
  return result;
}

uint64_t LibSer_RemoveCredentialByType_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    result = 0;
    *a4 = 24;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2262);
    return 4294967293;
  }

  return result;
}

uint64_t LibSer_RemoveCredentialByType_Serialize(_OWORD *a1, int a2, int a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2280);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2281);
    return 4294967293;
  }

  if (!a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2282);
    return 4294967293;
  }

  if (*a5 <= 0x17uLL)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2287);
    return 4294967293;
  }

  result = 0;
  *a4 = *a1;
  *(a4 + 16) = a2;
  *(a4 + 20) = a3;
  *a5 = 24;
  return result;
}

uint64_t LibSer_RemoveCredentialByType_Deserialize(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2316);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2317);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credentialType", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2318);
    return 4294967293;
  }

  if (!a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "scope", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2319);
    return 4294967293;
  }

  if (a2 <= 0x17)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMHandle) + sizeof(ACMCredentialType) + sizeof(ACMScope)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2322);
    return 4294967293;
  }

  result = 0;
  *a3 = *a1;
  *a4 = *(a1 + 16);
  *a5 = *(a1 + 20);
  return result;
}

uint64_t LibSer_DeleteContext_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 16;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2350);
    return 4294967293;
  }

  return result;
}

uint64_t LibSer_DeleteContext_Serialize(_OWORD *a1, _OWORD *a2, void *a3)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2368);
    return 4294967293;
  }

  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2369);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2370);
    return 4294967293;
  }

  if (*a3 <= 0xFuLL)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2375);
    return 4294967293;
  }

  result = 0;
  *a2 = *a1;
  *a3 = 16;
  return result;
}

uint64_t LibSer_DeleteContext_Deserialize(_OWORD *a1, unint64_t a2, _OWORD *a3)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2396);
    return 4294967293;
  }

  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2397);
    return 4294967293;
  }

  if (a2 <= 0xF)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMHandle)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2400);
    return 4294967293;
  }

  result = 0;
  *a3 = *a1;
  return result;
}

uint64_t LibSer_StorageAnyCmd_DeserializeCommonFields(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2421);
    return 4294967293;
  }

  if (a2 <= 0x13)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMHandle) + sizeof(ACMContextDataType)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2422);
    return 4294967293;
  }

  if (a3)
  {
    *a3 = *a1;
  }

  result = 0;
  if (a4)
  {
    *a4 = *(a1 + 16);
  }

  return result;
}

uint64_t LibSer_StorageSetData_GetSize(uint64_t a1, _DWORD *a2, unsigned int a3, void *a4)
{
  v9 = 0;
  if (a4)
  {
    LengthOfParameters = getLengthOfParameters(a2, a3, &v9);
    v7 = LengthOfParameters;
    if (LengthOfParameters)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", LengthOfParameters, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2454);
    }

    else
    {
      *a4 = a1 + v9 + 28;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2451);
    return 4294967291;
  }

  return v7;
}

uint64_t LibSer_StorageSetData_Serialize(_OWORD *a1, int a2, const void *a3, size_t a4, _DWORD *a5, unsigned int a6, uint64_t a7, size_t *a8)
{
  v21 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2474);
    return 4294967293;
  }

  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataType != kACMContextDataTypeUnknown", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2475);
    return 4294967293;
  }

  if (!a7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2476);
    return 4294967293;
  }

  if (!a8)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2477);
    return 4294967293;
  }

  Size = LibSer_StorageSetData_GetSize(a4, a5, a6, &v21);
  if (Size)
  {
    v18 = Size;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", Size, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2481);
    return v18;
  }

  if (*a8 < v21)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2482);
    return 4294967293;
  }

  *a7 = *a1;
  *(a7 + 16) = a2;
  *(a7 + 20) = a4;
  memmove((a7 + 24), a3, a4);
  v20 = a4 + 24;
  v17 = serializeParameters(a5, a6, a7, &v20);
  v18 = v17;
  if (v17)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v17, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2503);
  }

  else
  {
    *a8 = v20;
  }

  return v18;
}

uint64_t LibSer_StorageSetData_Deserialize(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4, void *a5, void *a6, void *a7, _DWORD *a8)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2521);
    return 4294967293;
  }

  if (!a3 || !a4 || !a5 || !a6)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle && dataType && data && dataSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2522);
    return 4294967293;
  }

  if (!a7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parameters", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2523);
    return 4294967293;
  }

  if (!a8)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "parametersCount", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2524);
    return 4294967293;
  }

  if (a2 <= 0x17)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMHandle) + sizeof(ACMContextDataType) + sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2527);
    return 4294967293;
  }

  *a3 = *a1;
  *a4 = *(a1 + 16);
  v8 = *(a1 + 20);
  v13 = 24;
  *a6 = v8;
  if (v8)
  {
    v9 = v8 + 24;
    if (v9 <= a2)
    {
      *a5 = a1 + 24;
      v13 = v9;
      goto LABEL_13;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "offset + *dataSize <= size", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2544);
    return 4294967293;
  }

  *a5 = 0;
LABEL_13:
  v10 = deserializeParameters(a1, a2, &v13, a7, a8);
  v11 = v10;
  if (v10)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v10, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2553);
  }

  return v11;
}

uint64_t LibSer_StorageGetData_GetSize(_DWORD *a1, unsigned int a2, void *a3)
{
  v7 = 0;
  if (a3)
  {
    LengthOfParameters = getLengthOfParameters(a1, a2, &v7);
    v5 = LengthOfParameters;
    if (LengthOfParameters)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", LengthOfParameters, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2574);
    }

    else
    {
      *a3 = v7 + 25;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2571);
    return 4294967291;
  }

  return v5;
}

uint64_t LibSer_StorageGetData_Serialize(_OWORD *a1, int a2, char a3, _DWORD *a4, unsigned int a5, uint64_t a6, unint64_t *a7)
{
  v19 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2594);
    return 4294967293;
  }

  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "dataType != kACMContextDataTypeUnknown", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2595);
    return 4294967293;
  }

  if (!a6)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2596);
    return 4294967293;
  }

  if (!a7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2597);
    return 4294967293;
  }

  Size = LibSer_StorageGetData_GetSize(a4, a5, &v19);
  if (Size)
  {
    v16 = Size;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", Size, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2601);
    return v16;
  }

  if (*a7 < v19)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2602);
    return 4294967293;
  }

  *a6 = *a1;
  *(a6 + 16) = a2;
  *(a6 + 20) = a3;
  v18 = 21;
  v15 = serializeParameters(a4, a5, a6, &v18);
  v16 = v15;
  if (v15)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v15, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2618);
  }

  else
  {
    *a7 = v18;
  }

  return v16;
}

uint64_t LibSer_StorageGetData_Deserialize(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4, BOOL *a5, void *a6, _DWORD *a7)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2636);
    return 4294967293;
  }

  if (!a3 || !a4 || !a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle && dataType && getSizeOnly", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2637);
    return 4294967293;
  }

  if (a2 <= 0x14)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMHandle) + sizeof(ACMContextDataType) + sizeof(uint8_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2640);
    return 4294967293;
  }

  *a3 = *a1;
  *a4 = *(a1 + 16);
  *a5 = *(a1 + 20) != 0;
  v10 = 21;
  v7 = deserializeParameters(a1, a2, &v10, a6, a7);
  v8 = v7;
  if (v7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v7, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2657);
  }

  return v8;
}

uint64_t LibSer_GetUnlockSecret_GetSize(_DWORD *a1, unsigned int a2, void *a3)
{
  v7 = 0;
  if (a3)
  {
    LengthOfParameters = getLengthOfParameters(a1, a2, &v7);
    v5 = LengthOfParameters;
    if (LengthOfParameters)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", LengthOfParameters, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2673);
    }

    else
    {
      *a3 = v7 + 20;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2670);
    return 4294967291;
  }

  return v5;
}

uint64_t LibSer_GetUnlockSecret_Serialize(_OWORD *a1, _DWORD *a2, unsigned int a3, _OWORD *a4, unint64_t *a5)
{
  v15 = 0;
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2686);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2687);
    return 4294967293;
  }

  if (!a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2688);
    return 4294967293;
  }

  Size = LibSer_GetUnlockSecret_GetSize(a2, a3, &v15);
  if (Size)
  {
    v12 = Size;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", Size, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2692);
    return v12;
  }

  if (*a5 < v15)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2693);
    return 4294967293;
  }

  *a4 = *a1;
  v14 = 16;
  v11 = serializeParameters(a2, a3, a4, &v14);
  v12 = v11;
  if (v11)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v11, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2701);
  }

  else
  {
    *a5 = v14;
  }

  return v12;
}

uint64_t LibSer_GetUnlockSecret_Deserialize(_OWORD *a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2713);
    return 4294967293;
  }

  if (!a3 || !a4 || !a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle && parameters && parametersCount", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2714);
    return 4294967293;
  }

  if (a2 <= 0xF)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMHandle)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2717);
    return 4294967293;
  }

  *a3 = *a1;
  v8 = 16;
  v5 = deserializeParameters(a1, a2, &v8, a4, a5);
  v6 = v5;
  if (v5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v5, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2725);
  }

  return v6;
}

uint64_t LibSer_GetUnlockSecretResponse_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = a1 + 1;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2735);
    return 4294967291;
  }

  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_Serialize(void *__src, size_t __len, char a3, _BYTE *a4, void *a5)
{
  if (__src && __len)
  {
    if (a4 && a5)
    {
      v6 = __len + 1;
      if (*a5 >= __len + 1)
      {
        *a4 = a3;
        memmove(a4 + 1, __src, __len);
        result = 0;
        *a5 = v6;
        return result;
      }

      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2753);
    }

    else
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer && outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2748);
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "unlockSecret && unlockSecretSize > 0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2747);
  }

  return 4294967293;
}

uint64_t LibSer_GetUnlockSecretResponse_Deserialize(_BYTE *a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  if (!a1 || !a3 || !a4 || !a5)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer && unlockSecret && unlockSecretSize && unlockSecretType", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2774);
    return 4294967293;
  }

  if (!a2)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMUnlockSecretType)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2777);
    return 4294967293;
  }

  result = 0;
  *a5 = *a1;
  *a3 = a1 + 1;
  *a4 = a2 - 1;
  return result;
}

uint64_t LibSer_SEPControl_GetSize(uint64_t a1, _DWORD *a2, unsigned int a3, void *a4)
{
  v9 = 0;
  if (a4)
  {
    LengthOfParameters = getLengthOfParameters(a2, a3, &v9);
    v7 = LengthOfParameters;
    if (LengthOfParameters)
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", LengthOfParameters, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2803);
    }

    else
    {
      *a4 = a1 + v9 + 24;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2800);
    return 4294967291;
  }

  return v7;
}

uint64_t LibSer_SEPControl_Serialize(_OWORD *a1, _DWORD *a2, unsigned int a3, const void *a4, size_t a5, uint64_t a6, unint64_t *a7)
{
  v22 = 0;
  if (!a6)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2816);
    return 4294967293;
  }

  if (!a7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2817);
    return 4294967293;
  }

  Size = LibSer_SEPControl_GetSize(a5, a2, a3, &v22);
  if (Size)
  {
    v16 = Size;
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", Size, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2821);
    return v16;
  }

  if (*a7 < v22)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2822);
    return 4294967293;
  }

  if (a1)
  {
    *a6 = *a1;
  }

  else
  {
    *a6 = 0;
    *(a6 + 8) = 0;
  }

  v21 = 16;
  v15 = serializeParameters(a2, a3, a6, &v21);
  v16 = v15;
  if (v15)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v15, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2834);
  }

  else
  {
    v17 = v21;
    *(a6 + v21) = a5;
    v18 = v17 + 4;
    v21 = v17 + 4;
    v19 = a6 + v17 + 4;
    if (((a6 ^ v19) & 0xFFC0000000000000) != 0)
    {
      v19 = v19 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    memmove(v19, a4, a5);
    *a7 = v18 + a5;
  }

  return v16;
}

uint64_t LibSer_SEPControl_Deserialize(uint64_t a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, void *a7)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2855);
    return 4294967293;
  }

  if (!a3 || !a4 || !a5 || !a6 || !a7)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "handle && parameters && parametersCount && command && commandSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2856);
    return 4294967293;
  }

  if (a2 <= 0x17)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(ACMHandle) + sizeof(uint32_t) + sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2859);
    return 4294967293;
  }

  *a3 = *a1;
  v14 = 16;
  v10 = deserializeParameters(a1, a2, &v14, a4, a5);
  v11 = v10;
  if (v10)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v10, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2867);
  }

  else
  {
    v12 = a1 + v14;
    if (((a1 ^ (a1 + v14)) & 0xFFC0000000000000) != 0)
    {
      v12 = v12 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    *a7 = *v12;
    *a6 = v12 + 4;
  }

  return v11;
}

uint64_t LibSer_SEPControlResponse_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = a1 + 4;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2883);
    return 4294967291;
  }

  return result;
}

uint64_t LibSer_SEPControlResponse_Serialize(void *__src, size_t __len, _DWORD *a3, uint64_t *a4)
{
  if (!a3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outBuffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2898);
    return 4294967293;
  }

  if (!a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "outSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2899);
    return 4294967293;
  }

  v5 = __len + 4;
  if (*a4 < __len + 4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "*outSize >= requiredSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2904);
    return 4294967293;
  }

  *a3 = __len;
  if (__src)
  {
    memmove(a3 + 1, __src, __len);
  }

  else
  {
    v5 = 4;
  }

  result = 0;
  *a4 = v5;
  return result;
}

uint64_t LibSer_SEPControlResponse_Deserialize(unsigned int *a1, unint64_t a2, void *a3, void *a4)
{
  if (!a1)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "buffer", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2928);
    return 4294967293;
  }

  if (!a3 || !a4)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "responseData && responseDataSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2929);
    return 4294967293;
  }

  if (a2 <= 3)
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "size >= sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2932);
    return 4294967293;
  }

  result = 0;
  v7 = *a1;
  v6 = a1 + 1;
  *a4 = v7;
  if (!v7)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t LibSer_ACMDeserializeEnvironmentVariableType(_DWORD *a1, unint64_t a2, _DWORD *a3)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibSer_ACMDeserializeEnvironmentVariableType");
  }

  if (a1 && a2)
  {
    if (a2 > 3)
    {
      v6 = 0;
      *a3 = *a1;
      v7 = 10;
      goto LABEL_7;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inSize >= sizeof(ACMEnvironmentVariable)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2957);
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inData && inSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2956);
  }

  v6 = 4294967293;
  v7 = 70;
LABEL_7:
  if (v7 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibSer_ACMDeserializeEnvironmentVariableType", v6);
  }

  return v6;
}

uint64_t LibSer_ACMDeserializeSEPControlCode(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "LibSer_ACMDeserializeSEPControlCode");
  }

  v14 = 0uLL;
  v13 = 0;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  if (a1 && a2)
  {
    v6 = LibSer_SEPControl_Deserialize(a1, a2, &v14, &v13, &v12, &v11, &v10);
    if (v6)
    {
      v7 = v6;
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "err == 0 ", v6, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2979);
      goto LABEL_9;
    }

    if (v11 && v10 > 3)
    {
      v7 = 0;
      *a3 = *v11;
      goto LABEL_9;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "command && commandSize >= sizeof(ACMSEPControlCode)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2981);
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inData && inSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 2976);
  }

  v7 = 4294967293;
LABEL_9:
  Util_SafeDeallocParameters(v13, v12);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "LibSer_ACMDeserializeSEPControlCode", v7);
  }

  return v7;
}

uint64_t checkParameter(_DWORD *a1)
{
  if (a1)
  {
    switch(*a1)
    {
      case 0:
        __asm { BTI             j; jumptable 0000000000018A00 case 0 }

        if (!a1[4])
        {
          return 0;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "!param->parameterDataLength", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 27);
        return 4294967293;
      case 1:
        __asm { BTI             j; jumptable 0000000000018A00 case 1 }

        if (a1[4] == 4)
        {
          return 0;
        }

        v7 = 31;
        goto LABEL_25;
      case 2:
      case 6:
      case 7:
        __asm { BTI             j; jumptable 0000000000018A00 cases 2,6,7 }

        if (a1[4] == 16)
        {
          return 0;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "param->parameterDataLength == 16", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 37);
        return 4294967293;
      case 3:
        __asm { BTI             j; jumptable 0000000000018A00 case 3 }

        if ((a1[4] - 1001) > 0xFFFFFC17)
        {
          return 0;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "param->parameterDataLength && (param->parameterDataLength <= 1000)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 41);
        return 4294967293;
      case 4:
        __asm { BTI             j; jumptable 0000000000018A00 case 4 }

        if (a1[4] == 4)
        {
          return 0;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "param->parameterDataLength == sizeof(uid_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 45);
        return 4294967293;
      case 5:
        __asm { BTI             j; jumptable 0000000000018A00 case 5 }

        if (a1[4] == 4)
        {
          return 0;
        }

        v7 = 49;
LABEL_25:
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "param->parameterDataLength == sizeof(int32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", v7);
        return 4294967293;
      case 8:
        __asm { BTI             j; jumptable 0000000000018A00 case 8 }

        if (a1[4] == 1)
        {
          return 0;
        }

        v5 = 53;
        goto LABEL_35;
      case 9:
        __asm { BTI             j; jumptable 0000000000018A00 case 9 }

        if (a1[4] == 1)
        {
          return 0;
        }

        v5 = 57;
        goto LABEL_35;
      case 0xA:
        __asm { BTI             j; jumptable 0000000000018A00 case 10 }

        if (a1[4] == 4)
        {
          return 0;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "param->parameterDataLength == sizeof(uint32_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 65);
        return 4294967293;
      case 0xB:
        __asm { BTI             j; jumptable 0000000000018A00 case 11 }

        if (a1[4] < 0x401u)
        {
          return 0;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "param->parameterDataLength <= 1024", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 61);
        return 4294967293;
      case 0xC:
        __asm { BTI             j; jumptable 0000000000018A00 case 12 }

        if (!a1[4])
        {
          return 0;
        }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "param->parameterDataLength == 0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 69);
        return 4294967293;
      case 0xD:
        __asm { BTI             j; jumptable 0000000000018A00 case 13 }

        if (a1[4] == 1)
        {
          return 0;
        }

        v5 = 73;
        goto LABEL_35;
      case 0xE:
        __asm { BTI             j; jumptable 0000000000018A00 case 14 }

        if (a1[4] == 1)
        {
          return 0;
        }

        v5 = 77;
LABEL_35:
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "param->parameterDataLength == sizeof(uint8_t)", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", v5);
        break;
      default:
        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 81);
        return 4294967293;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "param", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/LibSerialization.c", 23);
  }

  return 4294967293;
}

uint64_t Util_GetBitCount(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

char *Util_isNullOrZeroMemory(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    return &dword_0 + 1;
  }

  if (*a1)
  {
    return 0;
  }

  return (memcmp(a1, a1 + 1, a2 - 1) == 0);
}

BOOL Util_isNonNullEqualMemory(void *__s1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return memcmp(__s1, __s2, __n) == 0;
    }
  }

  return result;
}

char *Util_hexDumpToStrHelper(char *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    v5 = (a3 + 1);
    do
    {
      *(v5 - 1) = a0123456789abcd[*result >> 4];
      v6 = *result++;
      *v5 = a0123456789abcd[v6 & 0xF];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t Util_WriteToBuffer(uint64_t a1, size_t a2, void *a3, void *__src, size_t __len)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "Util_WriteToBuffer");
  }

  if (a3)
  {
    v10 = *a3;
    v11 = *a3 + __len;
    if (__CFADD__(*a3, __len))
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "__os_warn_unused(__builtin_add_overflow((pos), (inDataSize), (&end))) == 0 ", 1, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 54);
LABEL_20:
      v12 = 4294967291;
      goto LABEL_21;
    }

    if (!a1 || v11 <= a2)
    {
      if (!a1 || !__src || !__len)
      {
        goto LABEL_12;
      }

      if (!__CFADD__(a1, v10))
      {
        memmove((a1 + v10), __src, __len);
LABEL_12:
        v12 = 0;
        *a3 = v11;
        v13 = 10;
        goto LABEL_13;
      }

      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "__os_warn_unused(__builtin_add_overflow(((uintptr_t)outBufferOpt), (pos), ((uintptr_t *)&writePtr))) == 0 ", 1, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 59);
      goto LABEL_20;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "!outBufferOpt || end <= outBufferSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 55);
    v12 = 4294967276;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "writePos", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 49);
    v12 = 4294967293;
  }

LABEL_21:
  v13 = 70;
LABEL_13:
  if (v13 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "Util_WriteToBuffer", v12);
  }

  return v12;
}

uint64_t Util_ReadFromBuffer(uint64_t a1, size_t a2, void *a3, void *__dst, size_t __len)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "Util_ReadFromBuffer");
  }

  if (a1 && a3)
  {
    v10 = *a3;
    v11 = *a3 + __len;
    if (__CFADD__(*a3, __len))
    {
      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "__os_warn_unused(__builtin_add_overflow((pos), (outDataSize), (&end))) == 0 ", 1, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 79);
LABEL_19:
      v12 = 4294967291;
      goto LABEL_20;
    }

    if (v11 <= a2)
    {
      if (!__dst || !__len)
      {
        goto LABEL_11;
      }

      if (!__CFADD__(a1, v10))
      {
        memmove(__dst, (a1 + v10), __len);
LABEL_11:
        v12 = 0;
        *a3 = v11;
        v13 = 10;
        goto LABEL_12;
      }

      IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "__os_warn_unused(__builtin_add_overflow(((uintptr_t)inBuffer), (pos), ((uintptr_t *)&readPtr))) == 0 ", 1, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 84);
      goto LABEL_19;
    }

    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "end <= inBufferSize", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 80);
    v12 = 4294967276;
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "inBuffer && readPos", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 75);
    v12 = 4294967293;
  }

LABEL_20:
  v13 = 70;
LABEL_12:
  if (v13 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "Util_ReadFromBuffer", v12);
  }

  return v12;
}

unint64_t Util_KeybagLockStateToEnvVar(unsigned int a1)
{
  v1 = 0x2010103020201uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 3;
}

uint64_t Util_SafeDeallocParameters(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    if (a2)
    {
      v4 = result + 8;
      v5 = a2;
      do
      {
        v6 = *v4;
        if (*v4)
        {
          v7 = *(v4 + 8);
          *v4 = 0;
          acm_mem_free_info("<data>", v6, v7, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 118, "Util_SafeDeallocParameters");
          acm_mem_free_data(v6, v7);
        }

        v4 += 24;
        --v5;
      }

      while (v5);
    }

    acm_mem_free_info("array of ACMParameter", v2, 24 * v3, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 121, "Util_SafeDeallocParameters");

    return IOFreeTypeVarImpl();
  }

  return result;
}

uint64_t Util_DeallocCredential(_DWORD *a1)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    IOLog("%s: %s: called.\n", "ACM", "Util_DeallocCredential");
  }

  if (a1)
  {
    switch(*a1)
    {
      case 1:
        __asm { BTI             j; jumptable 000000000001935C case 1 }

        acm_explicit_bzero(a1, 0x3CuLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataPasscodeValidated", a1, 0x3CuLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 146, "Util_DeallocCredential");
        goto LABEL_21;
      case 2:
        __asm { BTI             j; jumptable 000000000001935C case 2 }

        acm_explicit_bzero(a1, 0xA8uLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataPassphraseEntered", a1, 0xA8uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 138, "Util_DeallocCredential");
        goto LABEL_21;
      case 3:
        __asm { BTI             j; jumptable 000000000001935C case 3 }

        acm_explicit_bzero(a1, 0x151uLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataBiometryMatched", a1, 0x151uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 142, "Util_DeallocCredential");
        goto LABEL_21;
      case 4:
      case 5:
      case 6:
      case 8:
      case 0xE:
      case 0x10:
      case 0x13:
      case 0x16:
      case 0x17:
        __asm { BTI             j; jumptable 000000000001935C cases 4-6,8,14,16,19,22,23 }

        acm_mem_free_info("ACMCredential", a1, 0x20uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 191, "Util_DeallocCredential");
        IOFreeTypeImpl();
        goto LABEL_22;
      case 7:
        __asm { BTI             j; jumptable 000000000001935C case 7 }

        acm_explicit_bzero(a1, 0x58uLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataUserOutputDisplayed", a1, 0x58uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 154, "Util_DeallocCredential");
        goto LABEL_21;
      case 9:
        __asm { BTI             j; jumptable 000000000001935C case 9 }

        acm_explicit_bzero(a1, 0x38uLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataContinuityUnlock", a1, 0x38uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 158, "Util_DeallocCredential");
        goto LABEL_21;
      case 0xA:
        __asm { BTI             j; jumptable 000000000001935C case 10 }

        acm_explicit_bzero(a1, 0x54uLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataPasscodeValidated2", a1, 0x54uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 150, "Util_DeallocCredential");
        goto LABEL_21;
      case 0xC:
      case 0xF:
        __asm { BTI             j; jumptable 000000000001935C cases 12,15 }

        acm_explicit_bzero(a1, 0x28uLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataKextDenyList", a1, 0x28uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 163, "Util_DeallocCredential");
        goto LABEL_21;
      case 0xD:
        __asm { BTI             j; jumptable 000000000001935C case 13 }

        acm_explicit_bzero(a1, 0xA4uLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataPassphraseExtractable", a1, 0xA4uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 133, "Util_DeallocCredential");
        goto LABEL_21;
      case 0x11:
        __asm { BTI             j; jumptable 000000000001935C case 17 }

        acm_explicit_bzero(a1, 0x71uLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataSecureIntent", a1, 0x71uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 167, "Util_DeallocCredential");
        goto LABEL_21;
      case 0x12:
        __asm { BTI             j; jumptable 000000000001935C case 18 }

        acm_explicit_bzero(a1, 0x34uLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataBiometryMatchAttempted", a1, 0x34uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 171, "Util_DeallocCredential");
        goto LABEL_21;
      case 0x14:
        __asm { BTI             j; jumptable 000000000001935C case 20 }

        acm_explicit_bzero(a1, 0x40uLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataAP", a1, 0x40uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 175, "Util_DeallocCredential");
        goto LABEL_21;
      case 0x15:
        __asm { BTI             j; jumptable 000000000001935C case 21 }

        acm_explicit_bzero(a1, 0xA4uLL);
        acm_mem_free_info("ACMCredential - ACMCredentialDataSignature", a1, 0xA4uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 179, "Util_DeallocCredential");
LABEL_21:
        IOFreeTypeVarImpl();
LABEL_22:
        v6 = 0;
        v7 = 10;
        break;
      default:
        __asm { BTI             j; jumptable 000000000001935C default case, case 11 }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 195);
        goto LABEL_16;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 128);
LABEL_16:
    v6 = 4294967293;
    v7 = 70;
  }

  if (v7 >= gACMLoggingLevel)
  {
    IOLog("%s: %s: returning, err = %ld.\n", "ACM", "Util_DeallocCredential", v6);
  }

  return v6;
}

uint64_t Util_AllocCredential(int a1, void *a2)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        __asm { BTI             j; jumptable 0000000000019884 case 1 }

        v8 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMCredential - ACMCredentialDataPasscodeValidated", v8, 60, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 230, "Util_AllocCredential");
        v9 = 28;
        goto LABEL_4;
      case 2:
        __asm { BTI             j; jumptable 0000000000019884 case 2 }

        v8 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMCredential - ACMCredentialDataPassphraseEntered", v8, 168, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 220, "Util_AllocCredential");
        v9 = 136;
        goto LABEL_4;
      case 3:
        __asm { BTI             j; jumptable 0000000000019884 case 3 }

        v8 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMCredential - ACMCredentialDataBiometryMatched", v8, 337, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 225, "Util_AllocCredential");
        v9 = 305;
        goto LABEL_4;
      case 4:
      case 5:
      case 6:
      case 8:
      case 14:
      case 16:
      case 19:
      case 22:
      case 23:
        __asm { BTI             j; jumptable 0000000000019884 cases 4-6,8,14,16,19,22,23 }

        v8 = IOMallocTypeImpl();
        acm_mem_alloc_info("ACMCredential", v8, 32, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 284, "Util_AllocCredential");
        v9 = 0;
        goto LABEL_4;
      case 7:
        __asm { BTI             j; jumptable 0000000000019884 case 7 }

        v8 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMCredential - ACMCredentialDataUserOutputDisplayed", v8, 88, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 240, "Util_AllocCredential");
        v9 = 56;
        goto LABEL_4;
      case 9:
        __asm { BTI             j; jumptable 0000000000019884 case 9 }

        v8 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMCredential - ACMCredentialDataContinuityUnlock", v8, 56, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 245, "Util_AllocCredential");
        v9 = 24;
        goto LABEL_4;
      case 10:
        __asm { BTI             j; jumptable 0000000000019884 case 10 }

        v8 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMCredential - ACMCredentialDataPasscodeValidated2", v8, 84, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 235, "Util_AllocCredential");
        v9 = 52;
        goto LABEL_4;
      case 12:
      case 15:
        __asm { BTI             j; jumptable 0000000000019884 cases 12,15 }

        v8 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMCredential - ACMCredentialDataKextDenyList", v8, 40, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 251, "Util_AllocCredential");
        v9 = 8;
        goto LABEL_4;
      case 13:
        __asm { BTI             j; jumptable 0000000000019884 case 13 }

        v8 = IOMallocTypeVarImpl();
        v11 = "ACMCredential - ACMCredentialDataPassphraseExtractable";
        v12 = v8;
        v13 = 214;
        goto LABEL_19;
      case 17:
        __asm { BTI             j; jumptable 0000000000019884 case 17 }

        v8 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMCredential - ACMCredentialDataSecureIntent", v8, 113, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 256, "Util_AllocCredential");
        v9 = 81;
        goto LABEL_4;
      case 18:
        __asm { BTI             j; jumptable 0000000000019884 case 18 }

        v8 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMCredential - ACMCredentialDataBiometryMatchAttempted", v8, 52, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 261, "Util_AllocCredential");
        v9 = 20;
        goto LABEL_4;
      case 20:
        __asm { BTI             j; jumptable 0000000000019884 case 20 }

        v8 = IOMallocTypeVarImpl();
        acm_mem_alloc_info("ACMCredential - ACMCredentialDataAP", v8, 64, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 266, "Util_AllocCredential");
        v9 = 32;
        goto LABEL_4;
      case 21:
        __asm { BTI             j; jumptable 0000000000019884 case 21 }

        v8 = IOMallocTypeVarImpl();
        v11 = "ACMCredential - ACMCredentialDataSignature";
        v12 = v8;
        v13 = 271;
LABEL_19:
        acm_mem_alloc_info(v11, v12, 164, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", v13, "Util_AllocCredential");
        v9 = 132;
LABEL_4:
        if (v8)
        {
          result = 0;
          *v8 = a1;
          v8[1] = 2;
          v8[7] = v9;
          v8[3] = -1;
          *a2 = v8;
        }

        else
        {
          IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "cred", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 292);
          result = 4294967292;
        }

        break;
      default:
        __asm { BTI             j; jumptable 0000000000019884 default case, case 11 }

        IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "0", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 289);
        return 4294967293;
    }
  }

  else
  {
    IOLog("AssertMacros: %s (value: 0x%lx), %s, file: %s:%d\n", "credential", 0, "---", "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_KernelLibs/common/CommonUtil.c", 209);
    return 4294967293;
  }

  return result;
}
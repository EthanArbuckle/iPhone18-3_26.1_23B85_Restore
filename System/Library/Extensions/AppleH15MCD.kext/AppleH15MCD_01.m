OSMetaClass *AppleMemCacheModeFunction::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCacheModeFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_3ED80;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCacheModeFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_3ED80;
  return result;
}

void AppleMemCacheModeFunction::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleMemCacheModeFunction::AppleMemCacheModeFunction(AppleMemCacheModeFunction *this, const OSMetaClass *a2)
{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_3ECE0;
}

{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_3ECE0;
}

void AppleMemCacheModeFunction::~AppleMemCacheModeFunction(AppleMemCacheModeFunction *this)
{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);

  _OSObject_typed_operator_delete(&AppleMemCacheModeFunction_ktv, this, 48);
}

AppleARMFunction *AppleMemCacheModeFunction::MetaClass::alloc(AppleMemCacheModeFunction::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleARMFunction::AppleARMFunction(v1, &AppleMemCacheModeFunction::gMetaClass);
  *v2 = off_3ECE0;
  OSMetaClass::instanceConstructed(&AppleMemCacheModeFunction::gMetaClass);
  return v1;
}

uint64_t AppleMemCacheModeFunction::callFunction(AppleMemCacheModeFunction *this, int *a2, unsigned int *a3, void *a4)
{
  result = 3758097090;
  v6 = *a2;
  v7 = *a3;
  if (v6 <= 4)
  {
    switch(v6)
    {
      case 1:
        return 3758097095;
      case 2:
        return (*(**(this + 5) + 1536))(*(this + 5), v7);
      case 3:
        return 0;
    }
  }

  else if (v6 > 6)
  {
    if (v6 == 7)
    {
      return (*(**(this + 5) + 1560))(*(this + 5), v7);
    }

    else if (v6 == 8)
    {
      return (*(**(this + 5) + 1568))(*(this + 5), v7);
    }
  }

  else if (v6 == 5)
  {
    return (*(**(this + 5) + 1552))(*(this + 5), v7);
  }

  else
  {
    return (*(**(this + 5) + 1544))(*(this + 5), v7);
  }

  return result;
}

uint64_t AppleMemCacheModeFunction::initWithTargetDataAndSymbol(const OSMetaClassBase **this, IOService *a2, const OSData *a3, const OSSymbol *a4)
{
  if (v5)
  {
    this[5] = OSMetaClassBase::safeMetaCast(this[2], &AppleH15MemCacheController::gMetaClass);
  }

  return v5;
}

OSMetaClass *AppleMemCachePanicFunction::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCachePanicFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_3EEB8;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCachePanicFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_3EEB8;
  return result;
}

void AppleMemCachePanicFunction::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleMemCachePanicFunction::AppleMemCachePanicFunction(AppleMemCachePanicFunction *this, const OSMetaClass *a2)
{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_3EE18;
}

{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_3EE18;
}

void AppleMemCachePanicFunction::~AppleMemCachePanicFunction(AppleMemCachePanicFunction *this)
{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);

  _OSObject_typed_operator_delete(&AppleMemCachePanicFunction_ktv, this, 48);
}

AppleARMFunction *AppleMemCachePanicFunction::MetaClass::alloc(AppleMemCachePanicFunction::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleARMFunction::AppleARMFunction(v1, &AppleMemCachePanicFunction::gMetaClass);
  *v2 = off_3EE18;
  OSMetaClass::instanceConstructed(&AppleMemCachePanicFunction::gMetaClass);
  return v1;
}

uint64_t AppleMemCachePanicFunction::initWithTargetDataAndSymbol(const OSMetaClassBase **this, IOService *a2, const OSData *a3, const OSSymbol *a4)
{
  if (v5)
  {
    this[5] = OSMetaClassBase::safeMetaCast(this[2], &AppleH15MemCacheController::gMetaClass);
  }

  return v5;
}

OSMetaClass *AppleMemCacheFlushFunction::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCacheFlushFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_3EFF0;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCacheFlushFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_3EFF0;
  return result;
}

void AppleMemCacheFlushFunction::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleMemCacheFlushFunction::AppleMemCacheFlushFunction(AppleMemCacheFlushFunction *this, const OSMetaClass *a2)
{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_3EF50;
}

{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_3EF50;
}

void AppleMemCacheFlushFunction::~AppleMemCacheFlushFunction(AppleMemCacheFlushFunction *this)
{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);

  _OSObject_typed_operator_delete(&AppleMemCacheFlushFunction_ktv, this, 48);
}

AppleARMFunction *AppleMemCacheFlushFunction::MetaClass::alloc(AppleMemCacheFlushFunction::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleARMFunction::AppleARMFunction(v1, &AppleMemCacheFlushFunction::gMetaClass);
  *v2 = off_3EF50;
  OSMetaClass::instanceConstructed(&AppleMemCacheFlushFunction::gMetaClass);
  return v1;
}

uint64_t AppleMemCacheFlushFunction::callFunction(AppleH15MemCacheController **this, void *a2, void *a3, void *a4)
{
  AppleH15MemCacheController::_mccFlush(this[5]);
  AppleH15MemCacheController::_dcsWriteQueueFlush(this[5]);
  return 0;
}

uint64_t AppleMemCacheFlushFunction::initWithTargetDataAndSymbol(const OSMetaClassBase **this, IOService *a2, const OSData *a3, const OSSymbol *a4)
{
  if (v5)
  {
    this[5] = OSMetaClassBase::safeMetaCast(this[2], &AppleH15MemCacheController::gMetaClass);
  }

  return v5;
}

OSMetaClass *_GLOBAL__sub_I_AppleH15MemCacheController_cpp()
{
  OSMetaClass::OSMetaClass(&AppleH15MemCacheController::gMetaClass, "AppleH15MemCacheController", &AppleMemCacheController::gMetaClass, 0x8C0u)->__vftable = off_3EC28;
  OSMetaClass::OSMetaClass(&AppleMemCacheModeFunction::gMetaClass, "AppleMemCacheModeFunction", &AppleARMFunction::gMetaClass, 0x30u)->__vftable = off_3ED80;
  OSMetaClass::OSMetaClass(&AppleMemCachePanicFunction::gMetaClass, "AppleMemCachePanicFunction", &AppleARMFunction::gMetaClass, 0x30u)->__vftable = off_3EEB8;
  result = OSMetaClass::OSMetaClass(&AppleMemCacheFlushFunction::gMetaClass, "AppleMemCacheFlushFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_3EFF0;
  return result;
}

void global destructor keyed to_a_1()
{
  OSMetaClass::~OSMetaClass(&AppleMemCacheFlushFunction::gMetaClass);
  OSMetaClass::~OSMetaClass(&AppleMemCachePanicFunction::gMetaClass);
  OSMetaClass::~OSMetaClass(&AppleMemCacheModeFunction::gMetaClass);

  OSMetaClass::~OSMetaClass(&AppleH15MemCacheController::gMetaClass);
}

uint64_t _start()
{
  if (_realmain)
  {
    return _realmain();
  }

  else
  {
    return 0;
  }
}

uint64_t _stop()
{
  if (_antimain)
  {
    return _antimain();
  }

  else
  {
    return 0;
  }
}

void AppleH15IO::start()
{
  panic("start: can't find 'function-clock_gate', update Device Tree @%s:%d", "AppleH15IO.cpp", 94);
}

{
  panic("start: can't find 'function-power_gate', update Device Tree @%s:%d", "AppleH15IO.cpp", 100);
}

{
  panic("start: can't create AppleARM64ErrorHandler @%s:%d", "AppleH15IO.cpp", 105);
}

void AppleH15PlatformErrorHandler::start()
{
  panic("super start failed @%s:%d", "AppleH15PlatformErrorHandler.cpp", 162);
}

{
  panic("Failed to register all interrupts @%s:%d", "AppleH15PlatformErrorHandler.cpp", 419);
}

{
  panic("Invalid AMCC configuration @%s:%d", "AppleH15PlatformErrorHandler.cpp", 359);
}

{
  panic("Failed to map all apertures @%s:%d", "AppleH15PlatformErrorHandler.cpp", 344);
}

{
  panic("Invalid %s configuration @%s:%d", "NS aperture name", "AppleH15PlatformErrorHandler.cpp", 310);
}

{
  panic("Invalid %s configuration @%s:%d", "metadata", "AppleH15PlatformErrorHandler.cpp", 298);
}

{
  panic("eccLock init failed @%s:%d", "AppleH15PlatformErrorHandler.cpp", 251);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "start", "AppleH15PlatformErrorHandler.cpp", 239);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "start", "AppleH15PlatformErrorHandler.cpp", 237);
}

void AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts()
{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1238);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1248);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1249);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1251);
}

{
  panic("%s @%s:%d", AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts(int,void *)::msg, "AppleH15PlatformErrorHandler.cpp", 1383);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1244);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1241);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1235);
}

void AppleH15PlatformErrorHandler::_afxNsDecodeInterrupts()
{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1481);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1482);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1484);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1489);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1476);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1473);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1444);
}

void AppleH15PlatformErrorHandler::_amccDecodeInterrupts()
{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_amccDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 2737);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_amccDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 2738);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_amccDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 2772);
}

void AppleH15PlatformErrorHandler::_dcsDecodeInterrupts()
{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_dcsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3222);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_dcsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3230);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_dcsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3259);
}

void AppleH15PlatformErrorHandler::_d2dAfxDecodeInterrupts()
{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfxDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3771);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfxDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3772);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfxDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3777);
}

void AppleH15PlatformErrorHandler::_d2dAfrDecodeInterrupts()
{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfrDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 4244);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfrDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 4245);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfrDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 4250);
}

void AppleH15PlatformErrorHandler::_ioaDecodeInterrupts()
{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_ioaDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 4532);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_ioaDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 4533);
}

void AppleH15MemCacheController::start()
{
  panic("STR_CLASS ::%s:%d:  Failed to get PMGR SOC CLUSTER register map @%s:%d", "start", 540, "AppleH15MemCacheController.cpp", 540);
}

{
  panic("STR_CLASS ::%s:%d:  dram-limit is missing in mcc node in EDT @%s:%d", "start", 659, "AppleH15MemCacheController.cpp", 659);
}

{
  panic("STR_CLASS ::%s:%d:  dram-base is missing in mcc node in EDT @%s:%d", "start", 652, "AppleH15MemCacheController.cpp", 652);
}

{
  panic("STR_CLASS ::%s:%d:  panic-max-size is missing in mcc node in EDT @%s:%d", "start", 645, "AppleH15MemCacheController.cpp", 645);
}

{
  panic("STR_CLASS ::%s:%d:  start:no pram range @%s:%d", "start", 624, "AppleH15MemCacheController.cpp", 624);
}

{
  panic("STR_CLASS ::%s:%d:  start:no pram service @%s:%d", "start", 618, "AppleH15MemCacheController.cpp", 618);
}

{
  panic("STR_CLASS ::%s:%d:  Cache Policy Manager is missing!\\n @%s:%d", "start", 598, "AppleH15MemCacheController.cpp", 598);
}

{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "virtual BOOL AppleH15MemCacheController::start(IOService *)", 548, "_mcwMap != NULL", "AppleH15MemCacheController.cpp", 548);
}

{
  panic("DRAM access disable supported only through GP CE @%s:%d", "AppleH15MemCacheController.cpp", 533);
}

{
  panic("STR_CLASS ::%s:%d:  Failed to map all apertures @%s:%d", "start", 524, "AppleH15MemCacheController.cpp", 524);
}

{
  panic("STR_CLASS ::%s:%d:  Not possible to have zero amccs @%s:%d", "start", 516, "AppleH15MemCacheController.cpp", 516);
}

{
  panic("STR_CLASS ::%s:%d:  dcs-count-per-amcc is missing in mcc node in EDT @%s:%d", "start", 505, "AppleH15MemCacheController.cpp", 505);
}

{
  panic("STR_CLASS ::%s:%d:  plane-count-per-amcc is missing in mcc node in EDT @%s:%d", "start", 499, "AppleH15MemCacheController.cpp", 499);
}

{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "virtual BOOL AppleH15MemCacheController::start(IOService *)", 493, "regCount != 0", "AppleH15MemCacheController.cpp", 493);
}

void AppleH15MemCacheController::_getRankCfgByteMode()
{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "IOReturn AppleH15MemCacheController::_getRankCfgByteMode()", 2704, "(data != 0) && (data->getLength() == sizeof(uint32_t))", "AppleH15MemCacheController.cpp", 2704);
}

{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "IOReturn AppleH15MemCacheController::_getRankCfgByteMode()", 2697, "(data != 0) && (data->getLength() == sizeof(uint32_t))", "AppleH15MemCacheController.cpp", 2697);
}

void AppleH15MemCacheController::_initMemHashParam()
{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "IOReturn AppleH15MemCacheController::_initMemHashParam(IOService *)", 2742, "NULL != _ecsNubSramBaseMap[die]", "AppleH15MemCacheController.cpp", 2742);
}

{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "IOReturn AppleH15MemCacheController::_initMemHashParam(IOService *)", 2738, "NULL != _ecsNubSramBaseDesc[die]", "AppleH15MemCacheController.cpp", 2738);
}

{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "IOReturn AppleH15MemCacheController::_initMemHashParam(IOService *)", 2734, "(MAX_AMCC_APERTURES/2 * DCS_GROUPS_PER_AMCC * DCS_PER_DCS_GROUPS * MAX_ECS_PER_DCS * MAX_DRAM_CS) != _ecsNubSramSize", "AppleH15MemCacheController.cpp", 2734);
}

{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "IOReturn AppleH15MemCacheController::_initMemHashParam(IOService *)", 2730, "(data != 0) && (data->getLength() == sizeof(uint64_t))", "AppleH15MemCacheController.cpp", 2730);
}

{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "IOReturn AppleH15MemCacheController::_initMemHashParam(IOService *)", 2725, "(data != 0) && (data->getLength() == sizeof(uint64_t))", "AppleH15MemCacheController.cpp", 2725);
}

{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "IOReturn AppleH15MemCacheController::_initMemHashParam(IOService *)", 2721, "(data != 0) && (data->getLength() == sizeof(uint64_t))", "AppleH15MemCacheController.cpp", 2721);
}

void AppleH15MemCacheController::setMuiSsbCtrl()
{
  panic("Assert failed: %s @%s:%d", "reg_val == readback_val", "AppleH15MemCacheController.cpp", 1306);
}

{
  panic("Invalid op in setMuiSsbCtrl() @%s:%d", "AppleH15MemCacheController.cpp", 1289);
}

void AppleH15MemCacheController::_setCntrCtrlParmeters(_DWORD *a1)
{
  panic("Counter type %d is not supported\\n @%s:%d", *a1, "AppleH15MemCacheController.cpp", 1825);
}

{
  panic("Counter type %d is not supported\\n @%s:%d", *a1, "AppleH15MemCacheController.cpp", 1766);
}

{
  panic("Camcxounter AMCX channel %d is not supported \\n @%s:%d", *a1, "AppleH15MemCacheController.cpp", 1790);
}
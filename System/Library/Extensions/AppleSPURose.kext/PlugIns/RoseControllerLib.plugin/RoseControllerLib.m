void RoseController::ServiceCallback(RoseController *this, int a2, char *a3)
{
  switch(a2)
  {
    case -469794812:
      std::mutex::lock((this + 824));
      *(this + 936) = 1;
      std::mutex::unlock((this + 824));

      std::condition_variable::notify_one((this + 888));
      break;
    case -469794814:
      v25 = 0;
      v26 = &v25;
      v27 = 0x6802000000;
      v28 = sub_5770;
      v29 = nullsub_2;
      if (a3)
      {
        Instance = _RCLog::getInstance(this);
        if (a3[60])
        {
          v9 = "fatal";
        }

        else
        {
          v9 = "non-fatal";
        }

        _RCLog::log(Instance, 1, "received a %s crashlog", v9);
        v11 = 0;
        v12 = 1;
        do
        {
          v13 = 0;
          v14 = v12;
          v15 = 1;
          do
          {
            v16 = v15;
            v17 = _RCLog::getInstance(v10);
            v18 = &a3[16 * v13 + 30 * v11 - v13];
            _RCLog::log(v17, 1, "core/logtype(%d/%d) size:%llu corrupted:%d id:%llu", v11, v13, *(v18 + 2), v18[12], *v18);
            v15 = 0;
            v13 = 1;
          }

          while ((v16 & 1) != 0);
          v12 = 0;
          v11 = 1;
        }

        while ((v14 & 1) != 0);
        v19 = v26;
        v21 = *(a3 + 1);
        v20 = *(a3 + 2);
        v22 = *(a3 + 45);
        *(v26 + 5) = *a3;
        *(v19 + 85) = v22;
        *(v19 + 9) = v20;
        *(v19 + 7) = v21;
      }

      RoseController::_flushResponseQueue(this);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 0x40000000;
      v24[2] = sub_5798;
      v24[3] = &unk_C450;
      v24[4] = this;
      RoseController::_dispatchToClient(this, v24, 1);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 0x40000000;
      v23[2] = sub_57FC;
      v23[3] = &unk_C478;
      v23[5] = this;
      v23[6] = a3;
      v23[4] = &v25;
      RoseController::_dispatchToClient(this, v23, 1);
      _Block_object_dispose(&v25, 8);
      break;
    case -469794816:
      *(this + 245) = a3;
      if (a3)
      {
LABEL_7:
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 0x40000000;
        v30[2] = sub_5708;
        v30[3] = &unk_C430;
        v30[4] = this;
        RoseController::_dispatchToClient(this, v30, 1);
        return;
      }

      std::mutex::lock((this + 824));
      v5 = *(this + 936);
      *(this + 936) = 0;
      std::mutex::unlock((this + 824));
      if (v5 == 1)
      {
        v7 = _RCLog::getInstance(v6);
        _RCLog::log(v7, 16, "rose firmware reset asynchronously");
        RoseController::_flushResponseQueue(this);
        goto LABEL_7;
      }

      break;
  }
}

uint64_t _buildRTKitCommsCrashRequest(uint64_t result, char a2, int a3)
{
  if (result)
  {
    *result = *result & 0xFFF80000 | 0x4401;
    *(result + 4) = a2;
    *(result + 5) = a3;
  }

  return result;
}

uint64_t _processRTKitCommsCrashlogResponse(unsigned __int8 *a1)
{
  Instance = _RCLog::getInstance(a1);
  _RCLog::log(Instance, 1, "crashlog trigger with status %d", a1[4]);
  if (!a1[4])
  {
    return 0;
  }

  v4 = _RCLog::getInstance(v3);
  _RCLog::log(v4, 16, "crashlog trigger failed with status %d", a1[4]);
  return 3758097084;
}

void *_buildRTKitCommsBootNonceRequest(void *result)
{
  if (result)
  {
    *result = *result & 0xFFF80000 | 0x4801;
  }

  return result;
}

uint64_t _processRTKitCommsBootNonceResponse(uint64_t a1)
{
  if ((*a1 & 0xC000) != 0x8000)
  {
    sub_60BC(a1);
    return 3758096385;
  }

  if ((*a1 & 0x3C00) != 0x800)
  {
    sub_6114(a1);
    return 3758096385;
  }

  v2 = *a1 & 0x3FF;
  Instance = _RCLog::getInstance(a1);
  if (v2 != 1)
  {
    _RCLog::log(Instance, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "header->cmd == RTKOS_boot_nonce", &unk_8F85, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/common/Controller/RTKitCommHelpers.cpp", 78, 0);
    return 3758096385;
  }

  _RCLog::log(Instance, 1, "Boot Nonce response with status %d", *(a1 + 4));
  v4 = *(a1 + 4);
  v6 = _RCLog::getInstance(v5);
  if (v4)
  {
    _RCLog::log(v6, 16, "Nonce generation failed with status %d", *(a1 + 4));
    return 3758097084;
  }

  else
  {
    _RCLog::log(v6, 2, "Boot Nonce is %lu", *(a1 + 6));
    return 0;
  }
}

uint64_t RoseSIKDataSession::InitSessionWithID(RoseSIKDataSession *this)
{
  std::mutex::lock(&RoseSIKDataSession::_lock);
  if (!RoseSIKDataSession::_session)
  {
    operator new();
  }

  std::mutex::unlock(&RoseSIKDataSession::_lock);
  return 0;
}

uint64_t RoseSIKDataSession::GetSession(RoseSIKDataSession *this)
{
  std::mutex::lock(&RoseSIKDataSession::_lock);
  v1 = RoseSIKDataSession::_session;
  if (RoseSIKDataSession::_session)
  {
    ++*(RoseSIKDataSession::_session + 72);
  }

  std::mutex::unlock(&RoseSIKDataSession::_lock);
  return v1;
}

void RoseSIKDataSession::Release(RoseSIKDataSession *this)
{
  std::mutex::lock(&RoseSIKDataSession::_lock);
  if (RoseSIKDataSession::_session)
  {
    v2 = *(RoseSIKDataSession::_session + 72) - 1;
    *(RoseSIKDataSession::_session + 72) = v2;
    if (!v2)
    {
      Instance = _RCLog::getInstance(v1);
      _RCLog::log(Instance, 1, "deleting SIK blob session");
      v4 = RoseSIKDataSession::_session;
      if (*(RoseSIKDataSession::_session + 24))
      {
        CFWriteStreamClose(*(RoseSIKDataSession::_session + 24));
        CFRelease(*(RoseSIKDataSession::_session + 24));
        v4 = RoseSIKDataSession::_session;
        *(RoseSIKDataSession::_session + 24) = 0;
      }

      v5 = *(v4 + 32);
      if (v5)
      {
        CFAllocatorDeallocate(*(v4 + 64), v5);
        v4 = RoseSIKDataSession::_session;
        *(RoseSIKDataSession::_session + 32) = 0;
      }

      (*(*v4 + 8))(v4);
      RoseSIKDataSession::_session = 0;
    }
  }

  std::mutex::unlock(&RoseSIKDataSession::_lock);
}

uint64_t RoseSIKDataSession::AllocateDataBuffer(RoseSIKDataSession *this, const __CFAllocator *a2, uint64_t a3)
{
  v5 = this + 32;
  if (*(this + 4))
  {
    sub_616C(this);
    v9 = 3758097109;
  }

  else
  {
    *(this + 5) = a3;
    Typed = CFAllocatorAllocateTyped();
    *(this + 4) = Typed;
    if (Typed)
    {
      v7 = CFWriteStreamCreateWithBuffer(a2, Typed, *(this + 5));
      *(this + 3) = v7;
      v8 = CFWriteStreamOpen(v7);
      if (v8)
      {
        v9 = 0;
        *(this + 8) = a2;
        *(this + 6) = 0;
        return v9;
      }

      v9 = 3758097084;
      sub_61C0(v8);
    }

    else
    {
      sub_6214(0);
      v9 = 3758097085;
    }
  }

  v11 = *(this + 3);
  if (v11)
  {
    CFWriteStreamClose(v11);
    CFRelease(*(this + 3));
    *(this + 3) = 0;
  }

  if (*v5)
  {
    CFAllocatorDeallocate(a2, *v5);
    *v5 = 0;
    *(v5 + 1) = 0;
  }

  return v9;
}

uint64_t RoseSIKDataSession::AppendData(RoseSIKDataSession *this, unsigned __int8 *a2, CFIndex a3)
{
  Instance = _RCLog::getInstance(this);
  _RCLog::log(Instance, 1, "append data of size %u to SIK blob", a3);
  v7 = *(this + 3);
  if (v7)
  {
    if (*(this + 56) == 1)
    {
      sub_62BC(v7);
      return 3758097115;
    }

    else
    {
      v8 = CFWriteStreamWrite(v7, a2, a3);
      if (v8 == -1)
      {
        v12 = 3758097084;
        sub_6268(0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        v9 = v8;
        *(this + 6) += v8;
        v10 = _RCLog::getInstance(v8);
        Status = CFWriteStreamGetStatus(*(this + 3));
        _RCLog::log(v10, 1, "append status %u st %u sz %u wr %u", v9, Status, *(this + 5), *(this + 6));
        if (*(this + 6) == *(this + 5))
        {
          *(this + 56) = 1;
          dispatch_semaphore_signal(*(this + 2));
        }

        return 0;
      }
    }
  }

  else
  {
    v12 = 3758097084;
    sub_6310(0);
  }

  return v12;
}

intptr_t RoseSIKDataSession::WaitforData(NSObject **this, int64_t a2)
{
  Instance = _RCLog::getInstance(this);
  _RCLog::log(Instance, 1, "wait for SIK data rx completion");
  if (*(this + 56) == 1)
  {
    sub_6364(v5);
    return 0;
  }

  else
  {
    v6 = this[2];
    v7 = dispatch_time(0, a2);
    result = dispatch_semaphore_wait(v6, v7);
    if (result)
    {
      v9 = _RCLog::getInstance(result);
      _RCLog::log(v9, 16, "Rose SIK Blob collection session(%d) timed out (size(%d)/rx(%d))", *(this + 4), this[5], this[6]);
      return 3758097110;
    }
  }

  return result;
}

uint64_t RoseSIKDataSession::ReadData(RoseSIKDataSession *this, unsigned __int8 *__dst, size_t a3, unint64_t *a4)
{
  if (*(this + 56))
  {
    if (a4)
    {
      v7 = *(this + 5);
      if (__dst)
      {
        if (v7 > a3)
        {
          sub_640C(this);
          return 3758097115;
        }

        else
        {
          memcpy(__dst, *(this + 4), v7);
          v8 = 0;
          *a4 = *(this + 5);
        }
      }

      else
      {
        v8 = 0;
        *a4 = v7;
      }
    }

    else
    {
      v8 = 3758097090;
      sub_6460(this);
    }
  }

  else
  {
    sub_63B8(this);
    return 3758097112;
  }

  return v8;
}

void *_buildRTKitCommsSIKInfoRequest(void *result, __int16 a2)
{
  if (result)
  {
    *result = *result & 0xFFF80000 | a2 & 0x3FF | 0x4800;
  }

  return result;
}

uint64_t _processRTKitCommsSIKInfoResponse(unsigned __int16 *a1)
{
  Instance = _RCLog::getInstance(a1);
  _RCLog::log(Instance, 1, "SIK response with session id %d status %d", a1[3], a1[2]);
  if (a1[2])
  {
    v4 = _RCLog::getInstance(v3);
    _RCLog::log(v4, 16, "SIK generation for session id %d failed with status %d", a1[3], a1[2]);
    return 0;
  }

  else
  {
    v6 = a1[3];

    return RoseSIKDataSession::InitSessionWithID(v6);
  }
}

uint64_t _processRTKitCommsSIKInfoEvent(unsigned __int8 *a1, unint64_t a2)
{
  Session = RoseSIKDataSession::GetSession(a1);
  if (!Session)
  {
    sub_68C4(0);
    return 3758097101;
  }

  v5 = Session;
  if ((*a1 & 0x10000) != 0)
  {
    if ((*a1 & 0x60000) != 0)
    {
      if (a2 <= 4)
      {
        v10 = 3758097090;
        sub_6530(Session);
      }

      else
      {
        appended = RoseSIKDataSession::AppendData(Session, a1 + 4, a2 - 4);
        v10 = appended;
        if (appended)
        {
          sub_64B4(appended);
        }
      }

      goto LABEL_17;
    }

    Instance = _RCLog::getInstance(Session);
    _RCLog::log(Instance, 1, "SIK data collection started from session id %u %u sz %u", *(a1 + 2), v5[4], *(a1 + 3));
    if (a2 > 7)
    {
      if (*(a1 + 2) == v5[4])
      {
        DataBuffer = RoseSIKDataSession::AllocateDataBuffer(v5, 0, *(a1 + 3));
        if (DataBuffer)
        {
          v10 = DataBuffer;
          sub_65D8(DataBuffer);
        }

        else
        {
          appended = RoseSIKDataSession::AppendData(v5, a1 + 8, a2 - 8);
          v10 = appended;
          if (appended)
          {
            sub_6654(appended);
          }
        }

        goto LABEL_17;
      }

      sub_6584(v12);
LABEL_26:
      v10 = 3758096385;
      goto LABEL_17;
    }

    v10 = 3758097090;
    sub_66D0(v12);
  }

  else
  {
    v6 = _RCLog::getInstance(Session);
    _RCLog::log(v6, 1, "SIK data collection for session id %u %u sz %u", *(a1 + 2), v5[4], *(a1 + 3));
    if (a2 > 7)
    {
      if (*(a1 + 2) == v5[4])
      {
        v8 = RoseSIKDataSession::AllocateDataBuffer(v5, 0, *(a1 + 3));
        if (v8)
        {
          v10 = v8;
          sub_6778(v8);
        }

        else
        {
          appended = RoseSIKDataSession::AppendData(v5, a1 + 8, a2 - 8);
          v10 = appended;
          if (appended)
          {
            sub_67F4(appended);
          }
        }

        goto LABEL_17;
      }

      sub_6724(v7);
      goto LABEL_26;
    }

    v10 = 3758097090;
    sub_6870(v7);
  }

LABEL_17:
  RoseSIKDataSession::Release(appended);
  return v10;
}

void sub_1568(uint64_t a1)
{
  sub_15A0(a1);

  operator delete();
}

uint64_t sub_15A0(uint64_t a1)
{
  *a1 = off_C2F8;
  v2 = *(a1 + 24);
  if (v2)
  {
    CFWriteStreamClose(v2);
  }

  dispatch_release(*(a1 + 16));
  return a1;
}

void sub_1624(uint64_t a1, uint64_t a2, const char *a3)
{

  _RCLog::log(v3, 16, a3);
}

char *sub_163C()
{

  return mach_error_string(v0);
}

uint64_t sub_1680(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = (*(v1 + 976) + 1);
  *(v1 + 976) = result;
  return result;
}

uint64_t sub_16CC(_RCLog *a1, void (*a2)(void *, os_log_type_t, const char *), void *a3)
{
  Instance = _RCLog::getInstance(a1);
  _RCLog::registerLogSink(Instance, a2, a3);
  return 0;
}

uint64_t sub_1704(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 760));
  *(v3 + 752) = a2;
  std::mutex::unlock((v3 + 760));
  return 0;
}

uint64_t sub_1880(uint64_t a1)
{
  v1 = *(a1 + 8);
  input = 0;
  return IOConnectCallMethod(*(v1 + 696), 0xBu, &input, 1u, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_18D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  input = 1;
  return IOConnectCallMethod(*(v1 + 696), 0xBu, &input, 1u, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  std::mutex::lock((v5 + 472));
  *(v5 + 440) = a2;
  *(v5 + 448) = a3;
  std::mutex::unlock((v5 + 472));
  return 0;
}

uint64_t sub_19E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  std::mutex::lock((v5 + 472));
  *(v5 + 456) = a2;
  *(v5 + 464) = a3;
  std::mutex::unlock((v5 + 472));
  return 0;
}

uint64_t sub_1A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  std::mutex::lock((v5 + 552));
  *(v5 + 536) = a2;
  *(v5 + 544) = a3;
  std::mutex::unlock((v5 + 552));
  return 0;
}

uint64_t sub_1A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  std::mutex::lock((v5 + 632));
  *(v5 + 616) = a2;
  *(v5 + 624) = a3;
  std::mutex::unlock((v5 + 632));
  return 0;
}

uint64_t sub_1AE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  input = 0;
  return IOConnectCallMethod(*(v1 + 696), 0x12u, &input, 1u, 0, 0, 0, 0, 0, 0);
}

void RoseController::alloc(RoseController *this, const __CFAllocator *a2)
{
  Typed = CFAllocatorAllocateTyped();

  RoseController::RoseController(Typed, this);
}

void RoseController::RoseController(RoseController *this, const __CFAllocator *a2)
{
  *this = &RoseController::vtbl_v1;
  *(this + 1) = this;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 46) = 0;
  *(this + 47) = 850045863;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 58) = 0;
  *(this + 59) = 850045863;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 68) = 0;
  *(this + 69) = 850045863;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 78) = 0;
  *(this + 79) = 850045863;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 700) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 94) = 0;
  *(this + 95) = 850045863;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 102) = 0;
  *(this + 103) = 850045863;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 110) = 0;
  *(this + 111) = 1018212795;
  *(this + 921) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 59) = 0u;
  *(this + 121) = a2;
  *(this + 244) = 1;
  v2 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xD5u, 2u, 0x79u, 0x78u, 0xFAu, 0x7Au, 0x46u, 0x29u, 0x92u, 0x42u, 0x7Du, 0xFDu, 0x8Eu, 0xD4u, 0x61u, 0x1Du);
  CFPlugInAddInstanceForFactory(v2);
}

void sub_1D50(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable((v1 + 888));
  std::mutex::~mutex((v1 + 824));
  std::mutex::~mutex((v1 + 760));
  std::mutex::~mutex((v1 + 632));
  std::mutex::~mutex((v1 + 552));
  std::mutex::~mutex((v1 + 472));
  std::mutex::~mutex((v1 + 376));
  _Unwind_Resume(a1);
}

void RoseController::~RoseController(RoseController *this)
{
  v2 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xD5u, 2u, 0x79u, 0x78u, 0xFAu, 0x7Au, 0x46u, 0x29u, 0x92u, 0x42u, 0x7Du, 0xFDu, 0x8Eu, 0xD4u, 0x61u, 0x1Du);
  CFPlugInRemoveInstanceForFactory(v2);
  std::condition_variable::~condition_variable((this + 888));
  std::mutex::~mutex((this + 824));
  std::mutex::~mutex((this + 760));
  std::mutex::~mutex((this + 632));
  std::mutex::~mutex((this + 552));
  std::mutex::~mutex((this + 472));
  std::mutex::~mutex((this + 376));
}

uint64_t RoseController::QueryInterface(RoseController *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x10u, 0x3Au, 0xBDu, 0x4Au, 0x60u, 0x94u, 0x4Bu, 0xC0u, 0xAEu, 0xEEu, 0x3Eu, 0x37u, 0xF5u, 0xA2u, 0xFu, 0x3Bu);
  if (CFEqual(v5, v6) || (v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v5, v7)))
  {
    v8 = 0;
    ++*(this + 244);
  }

  else
  {
    this = 0;
    v8 = 2147483652;
  }

  *a3 = this;
  CFRelease(v5);
  return v8;
}

uint64_t RoseController::AddRef(RoseController *this)
{
  v1 = (*(this + 244) + 1);
  *(this + 244) = v1;
  return v1;
}

uint64_t RoseController::Release(RoseController *this)
{
  v1 = *(this + 244);
  v2 = (v1 - 1);
  *(this + 244) = v2;
  if (v1 == 1)
  {
    RoseController::~RoseController(this);
    RoseController::operator delete(v3);
  }

  return v2;
}

uint64_t RoseController::Start(RoseController *this, const __CFDictionary *a2, io_registry_entry_t a3)
{
  size = 4;
  v24 = 0;
  if (a3)
  {
    *(this + 175) = a3;
    Property = IORegistryEntryGetProperty(a3, "RoseFirmwareState", &v24, &size);
    if (Property)
    {
      Instance = _RCLog::getInstance(Property);
      _RCLog::log(Instance, 16, "unable to query rose f/w state");
    }

    else
    {
      *(this + 245) = v24;
    }

    v6 = _RCLog::getInstance(Property);
    _RCLog::log(v6, 1, "rose f/w state set to %d", *(this + 245));
    v7 = IORegistryEntrySearchCFProperty(*(this + 175), "IOService", @"RoseRTKReady", kCFAllocatorDefault, 1u);
    if (v7)
    {
      v8 = v7;
      std::mutex::lock((this + 824));
      *(this + 936) = CFBooleanGetValue(v8) != 0;
      std::mutex::unlock((this + 824));
    }

    else
    {
      v10 = _RCLog::getInstance(0);
      _RCLog::log(v10, 1, "unable to query rose boot_done value");
    }

    v11 = _RCLog::getInstance(v9);
    _RCLog::log(v11, 1, "rose _rtkRead set to %d", *(this + 936));
    v12 = IOServiceOpen(*(this + 175), mach_task_self_, 0, this + 174);
    if (v12)
    {
      v18 = v12;
      sub_6918(v12);
    }

    else
    {
      v13 = IONotificationPortCreate(kIOMainPortDefault);
      *(this + 90) = v13;
      if (v13)
      {
        v14 = dispatch_queue_create("com.apple.RoseController.notificationQueue", 0);
        *(this + 92) = v14;
        if (v14)
        {
          IONotificationPortSetDispatchQueue(*(this + 90), v14);
          v15 = IOServiceAddInterestNotification(*(this + 90), *(this + 175), "IOGeneralInterest", sub_828, this, this + 240);
          if (v15)
          {
            v18 = v15;
            sub_6994(v15);
          }

          else
          {
            v16 = dispatch_queue_create("com.apple.RoseController.commandQueue", 0);
            *(this + 91) = v16;
            if (v16)
            {
              std::mutex::lock((this + 376));
              *(this + 17) = RoseController::RTKitCommsCallback;
              *(this + 18) = this;
              *(this + 152) = 1;
              std::mutex::unlock((this + 376));
              v17 = RoseController::_registerSharedDataQueueEventHandler(this);
              v18 = v17;
              if (!v17)
              {
                dispatch_retain(*(this + 93));
                return v18;
              }

              sub_6A10(v17);
            }

            else
            {
              v18 = 3758097086;
              sub_6A8C(0);
            }
          }
        }

        else
        {
          v18 = 3758097086;
          sub_6AE0(0);
        }
      }

      else
      {
        v18 = 3758097086;
        sub_6B34(0);
      }
    }
  }

  else
  {
    sub_6B88(this);
    v18 = 3758097095;
  }

  v20 = *(this + 174);
  if (v20)
  {
    if (*(this + 90))
    {
      IONotificationPortDestroy(*(this + 90));
      v20 = *(this + 174);
    }

    IOServiceClose(v20);
    *(this + 90) = 0;
    *(this + 174) = 0;
  }

  v21 = *(this + 92);
  if (v21)
  {
    dispatch_release(v21);
    *(this + 92) = 0;
  }

  v22 = *(this + 91);
  if (v22)
  {
    dispatch_release(v22);
    *(this + 91) = 0;
  }

  return v18;
}

uint64_t RoseController::_registerEventCallbackForInterface(RoseController *this, unsigned int a2, void (*a3)(void *, void *, unint64_t), void *a4, char a5)
{
  std::mutex::lock((this + 376));
  if (a2 >= 0xF)
  {
    Instance = _RCLog::getInstance(v10);
    _RCLog::log(Instance, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "interface < ROSE_INTERFACE_MAX", &unk_8F85, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 1186, 0);
    v11 = 3758097090;
  }

  else
  {
    v11 = 0;
    v12 = this + 24 * a2;
    *(v12 + 2) = a3;
    *(v12 + 3) = a4;
    v12[32] = a5;
  }

  std::mutex::unlock((this + 376));
  return v11;
}

void RoseController::RTKitCommsCallback(RoseController *this, RoseController *a2, unint64_t a3)
{
  Instance = _RCLog::getInstance(this);
  if (a3 <= 4)
  {
    _RCLog::log(Instance, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85);
  }

  else
  {
    _RCLog::log(Instance, 1, "eid:%d, mt:%d, mp:%d, mpt:%d, size %d", (*a2 >> 10) & 0xF, *a2 >> 14, HIWORD(*a2) & 1, (*a2 >> 17) & 3, a3);
    if ((*a2 & 0x3C00) == 0x800)
    {
      v8 = RoseController::_handleSecurityEvents(a2, a3);
      if (!v8)
      {
        return;
      }

      sub_6BDC(v8);
    }

    else
    {
      v9 = _RCLog::getInstance(v7);
      v10 = (*a2 >> 10) & 0xF;
      _RCLog::log(v9, 16, "unhandled endpoint %d on RTKOS comms interface");
    }
  }

  if (this)
  {

    RoseController::_callErrorCallback(this, 10, a2, a3);
  }
}

uint64_t RoseController::_registerSharedDataQueueEventHandler(RoseController *this)
{
  ofSize = 0;
  NotificationPort = IODataQueueAllocateNotificationPort();
  *(this + 178) = NotificationPort;
  if (!NotificationPort)
  {
    v8 = 3758097086;
    sub_6E4C(NotificationPort);
LABEL_15:
    RoseController::_deRegisterSharedDataQueueEventHandler(this);
    return v8;
  }

  v3 = dispatch_queue_create("com.apple.RoseController.reportQueue", 0);
  *(this + 93) = v3;
  if (!v3)
  {
    v8 = 3758097086;
    sub_6DF8(0);
    goto LABEL_15;
  }

  v4 = IOConnectSetNotificationPort(*(this + 174), 0, *(this + 178), 0);
  if (v4)
  {
    v8 = v4;
    sub_6C58(v4);
    goto LABEL_15;
  }

  v5 = IOConnectMapMemory(*(this + 174), 0, mach_task_self_, this + 88, &ofSize, 1u);
  if (v5)
  {
    v8 = v5;
    sub_6CD4(v5);
    goto LABEL_15;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_mach_recv, *(this + 178), 0, *(this + 93));
  *(this + 118) = v6;
  if (!v6)
  {
    v8 = 3758097086;
    sub_6DA4(0);
    goto LABEL_15;
  }

  v7 = dispatch_group_create();
  *(this + 119) = v7;
  if (!v7)
  {
    v8 = 3758097086;
    sub_6D50(0);
    goto LABEL_15;
  }

  ++*(this + 244);
  dispatch_set_context(*(this + 118), this);
  dispatch_source_set_event_handler_f(*(this + 118), RoseController::QueueEventSourceCallback);
  dispatch_source_set_cancel_handler_f(*(this + 118), RoseController::QueueEventSourceCancelHandler);
  dispatch_resume(*(this + 118));
  return 0;
}

uint64_t RoseController::Stop(dispatch_object_t *this)
{
  dispatch_release(this[93]);
  this[93] = 0;
  RoseController::_deRegisterSharedDataQueueEventHandler(this);
  v2 = this[92];
  if (v2)
  {
    dispatch_barrier_sync(v2, &stru_C338);
    dispatch_release(this[92]);
    this[92] = 0;
  }

  v3 = this[91];
  if (v3)
  {
    dispatch_release(v3);
    this[91] = 0;
  }

  return 0;
}

void RoseController::_deRegisterSharedDataQueueEventHandler(dispatch_group_t *this)
{
  if (this[118])
  {
    dispatch_group_enter(this[119]);
    dispatch_source_cancel(this[118]);
    dispatch_group_wait(this[119], 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(this[118]);
    this[118] = 0;
  }
}

uint64_t RoseController::SetDispatchQueue(RoseController *this, dispatch_queue_s *a2)
{
  std::mutex::lock((this + 760));
  *(this + 94) = a2;
  std::mutex::unlock((this + 760));
  return 0;
}

uint64_t RoseController::SetLogSink(RoseController *this, void (*a2)(void *, os_log_type_t, const char *), void *a3)
{
  Instance = _RCLog::getInstance(this);
  _RCLog::registerLogSink(Instance, a2, a3);
  return 0;
}

_RCLog *RoseController::DownloadCustomFirmwareExten(RoseController *this, const void *a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8, unint64_t a9)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v12[6] = a8;
  v12[7] = a9;
  v9 = IOConnectCallStructMethod(*(this + 174), 0, v12, 0x40uLL, 0, 0);
  v10 = v9;
  if (v9)
  {
    sub_6EA0(v9);
  }

  return v10;
}

_RCLog *RoseController::Reset(RoseController *this)
{
  std::mutex::lock((this + 824));
  v2 = IOConnectCallStructMethod(*(this + 174), 2u, 0, 0, 0, 0);
  v3 = v2;
  if (v2)
  {
    Instance = _RCLog::getInstance(v2);
    if (mach_error_string(v3))
    {
      v6 = mach_error_string(v3);
    }

    else
    {
      v6 = &unk_8F85;
    }

    _RCLog::log(Instance, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "result == 0 ", v6, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 392, v3);
    std::mutex::unlock((this + 824));
  }

  else
  {
    *(this + 936) = 0;
    *(this + 245) = 0;
    std::mutex::unlock((this + 824));
    RoseController::_flushResponseQueue(this);
  }

  return v3;
}

void RoseController::_flushResponseQueue(RoseController *this)
{
  v2 = *(this + 93);
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_5B5C;
    block[3] = &unk_C498;
    block[4] = this;
    dispatch_sync(v2, block);
  }
}

_RCLog *RoseController::ResetSMCRoseState(RoseController *this)
{
  std::mutex::lock((this + 824));
  v2 = IOConnectCallStructMethod(*(this + 174), 0x17u, 0, 0, 0, 0);
  v3 = v2;
  if (v2)
  {
    Instance = _RCLog::getInstance(v2);
    if (mach_error_string(v3))
    {
      v6 = mach_error_string(v3);
    }

    else
    {
      v6 = &unk_8F85;
    }

    _RCLog::log(Instance, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "result == 0 ", v6, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 414, v3);
    std::mutex::unlock((this + 824));
  }

  else
  {
    std::mutex::unlock((this + 824));
    RoseController::_flushResponseQueue(this);
  }

  return v3;
}

uint64_t RoseController::TriggerCrashlog(RoseController *this, int a2)
{
  Instance = _RCLog::getInstance(this);
  v5 = "non-fatal";
  if (a2)
  {
    v5 = "fatal";
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  _RCLog::log(Instance, 1, "triggering %s rose crashlog", v5);

  return RoseController::TriggerCrash(this, v6, 0);
}

uint64_t RoseController::TriggerCrash(mach_port_t *this, unsigned int a2, int a3)
{
  if (a2 >= 3)
  {
    v8 = 3758097090;
    sub_7058(this);
  }

  else if (a2 == 2)
  {
    Instance = _RCLog::getInstance(this);
    if (a3)
    {
      v8 = 3758097090;
      _RCLog::log(Instance, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "delay_ms == 0", &unk_8F85, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 1746, 0);
    }

    else
    {
      _RCLog::log(Instance, 1, "triggering rose NMI crash");
      v7 = IOConnectCallStructMethod(this[174], 0xDu, 0, 0, 0, 0);
      v8 = v7;
      if (v7)
      {
        sub_6FDC(v7);
      }
    }
  }

  else
  {
    v15 = 0;
    v9 = _RCLog::getInstance(this);
    v10 = a2 == 0;
    v11 = "non-fatal";
    if (v10)
    {
      v11 = "fatal";
    }

    _RCLog::log(v9, 1, "triggering %s rose crashlog with delay %u", v11, a3);
    _buildRTKitCommsCrashRequest(v17, v10, a3);
    v12 = RoseController::PerformCommand(this, 5, v17, 9, v16, 5, &v15, 5000000000);
    if (v12)
    {
      v8 = v12;
      sub_6F00(v12);
    }

    else
    {
      v13 = _processRTKitCommsCrashlogResponse(v16);
      if (v13)
      {
        sub_6F7C(v13);
        return 3758097084;
      }

      else
      {
        return 0;
      }
    }
  }

  return v8;
}

_RCLog *RoseController::GetChipID(RoseController *this, unsigned __int16 *a2)
{
  input = 209;
  outputCnt = 0;
  v6 = 8;
  v3 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, &outputCnt, &outputStruct, &v6);
  v4 = v3;
  if (v3)
  {
    sub_70AC(v3);
  }

  else
  {
    *a2 = outputStruct;
  }

  return v4;
}

_RCLog *RoseController::GetBoardID(RoseController *this, unsigned __int16 *a2)
{
  input = 208;
  outputCnt = 0;
  v6 = 8;
  v3 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, &outputCnt, &outputStruct, &v6);
  v4 = v3;
  if (v3)
  {
    sub_7128(v3);
  }

  else
  {
    *a2 = outputStruct;
  }

  return v4;
}

_RCLog *RoseController::GetECID(RoseController *this, unint64_t *a2)
{
  input = 210;
  outputCnt = 0;
  v6 = 8;
  v3 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, &outputCnt, &outputStruct, &v6);
  v4 = v3;
  if (v3)
  {
    sub_71A4(v3);
  }

  else
  {
    *a2 = outputStruct;
  }

  return v4;
}

uint64_t RoseController::GenerateBootNonce(mach_port_t *this)
{
  Instance = _RCLog::getInstance(this);
  _RCLog::log(Instance, 2, "rose hw state is %d", this[245]);
  v4 = this[245];
  if (v4 == 1)
  {
    v11 = 0;
    v7 = _RCLog::getInstance(v3);
    _RCLog::log(v7, 1, "sending boot nonce command to firmware");
    _buildRTKitCommsBootNonceRequest(&outputCnt);
    v8 = RoseController::PerformCommand(this, 5, &outputCnt, 8, v12, 14, &v11, 20000000000);
    if (v8)
    {
      v6 = v8;
      sub_7220(v8);
      return v6;
    }

    if (v11 == 14)
    {
      v9 = _processRTKitCommsBootNonceResponse(v12);
      if (!v9)
      {
        return 0;
      }

      sub_72F0(v9);
      return 3758097084;
    }

    sub_729C(v8);
    return 3758096385;
  }

  if (v4)
  {
    return 3758096385;
  }

  LODWORD(outputCnt) = 0;
  v12[0] = 0;
  v5 = IOConnectCallMethod(this[174], 0x13u, 0, 0, 0, 0, 0, &outputCnt, 0, v12);
  v6 = v5;
  if (v5)
  {
    sub_7350(v5);
  }

  return v6;
}

uint64_t RoseController::PerformCommand(RoseController *this, char a2, const unsigned __int8 *a3, uint64_t a4, void *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v8 = *(this + 91);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_3C68;
  block[3] = &unk_C360;
  v12 = a2;
  block[4] = &v13;
  block[5] = this;
  block[6] = a8;
  block[7] = a3;
  block[8] = a4;
  block[9] = a6;
  block[10] = a5;
  block[11] = a7;
  dispatch_sync(v8, block);
  v9 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v9;
}

_RCLog *RoseController::GetBootNonceHash(RoseController *this, void *outputStruct, size_t a3, unint64_t *a4)
{
  input = 211;
  outputCnt = 0;
  v8 = a3;
  v5 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, &outputCnt, outputStruct, &v8);
  v6 = v5;
  if (v5)
  {
    sub_73CC(v5);
  }

  else
  {
    *a4 = v8;
  }

  return v6;
}

_RCLog *RoseController::GetBootNonce(RoseController *this, void *a2, uint64_t a3, unint64_t *a4)
{
  input = 229;
  outputCnt = 0;
  v16 = 8;
  outputStruct = 0;
  v8 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, &outputCnt, &outputStruct, &v16);
  if (v8)
  {
    v10 = v8;
    sub_7448(v8);
  }

  else if ((outputStruct & 2) != 0)
  {
    v15 = 220;
    v14 = 0;
    v13 = a3;
    v11 = IOConnectCallMethod(*(this + 174), 8u, &v15, 1u, 0, 0, 0, &v14, a2, &v13);
    v10 = v11;
    if (v11)
    {
      sub_74C4(v11);
    }

    else
    {
      *a4 = v13;
    }
  }

  else
  {
    LODWORD(v15) = 1;
    v9 = RoseController::PerformCommand(this, 4, &v15, 4, a2, a3, a4, 5000000000);
    if (v9)
    {
      sub_7540(v9);
    }

    return 0;
  }

  return v10;
}

uint64_t RoseController::GetDebugInfo(RoseController *this, __CFDictionary *a2)
{
  v17 = 3;
  input = 218;
  output = 57005;
  outputCnt = 1;
  if (a2)
  {
    v4 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, 0, valuePtr, &v17);
    if (v4)
    {
      v12 = v4;
      sub_75BC(v4);
    }

    else
    {
      v5 = CFNumberCreate(*(this + 121), kCFNumberShortType, valuePtr);
      if (v5)
      {
        v6 = v5;
        CFDictionaryAddValue(a2, @"SecureROMStatus", v5);
        CFRelease(v6);
        v7 = CFNumberCreate(*(this + 121), kCFNumberCharType, &v19);
        if (v7)
        {
          v8 = v7;
          CFDictionaryAddValue(a2, @"RoseServiceState", v7);
          CFRelease(v8);
          v17 = 0;
          v9 = IOConnectCallMethod(*(this + 174), 0x11u, 0, 0, 0, 0, &output, &outputCnt, 0, &v17);
          if (v9)
          {
            sub_761C(v9);
          }

          else
          {
            v10 = CFNumberCreate(*(this + 121), kCFNumberIntType, &output);
            if (!v10)
            {
              v12 = 3758097115;
              sub_767C(0);
              return v12;
            }

            v11 = v10;
            CFDictionaryAddValue(a2, @"RosePowerState", v10);
            CFRelease(v11);
          }

          return 0;
        }

        else
        {
          v12 = 3758097115;
          sub_76D0(0);
        }
      }

      else
      {
        v12 = 3758097115;
        sub_7724(0);
      }
    }
  }

  else
  {
    sub_7778(this);
    return 3758097090;
  }

  return v12;
}

_RCLog *RoseController::SetHostBootNonce(RoseController *this, void *inputStruct, size_t inputStructCnt)
{
  input = 213;
  v3 = IOConnectCallMethod(*(this + 174), 9u, &input, 1u, inputStruct, inputStructCnt, 0, 0, 0, 0);
  v4 = v3;
  if (v3)
  {
    sub_77CC(v3);
  }

  return v4;
}

_RCLog *RoseController::GetHostBootNonce(RoseController *this, void *outputStruct, size_t a3, unint64_t *a4)
{
  input = 213;
  outputCnt = 0;
  v8 = a3;
  v5 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, &outputCnt, outputStruct, &v8);
  v6 = v5;
  if (v5)
  {
    sub_7848(v5);
  }

  else
  {
    *a4 = v8;
  }

  return v6;
}

_RCLog *RoseController::SetBootMode(RoseController *this, int a2)
{
  inputStruct = a2;
  v2 = *(this + 174);
  input = 212;
  v3 = IOConnectCallMethod(v2, 9u, &input, 1u, &inputStruct, 4uLL, 0, 0, 0, 0);
  v4 = v3;
  if (v3)
  {
    sub_78C4(v3);
  }

  return v4;
}

_RCLog *RoseController::GetBootMode(RoseController *this, unsigned int *a2)
{
  input = 212;
  outputCnt = 0;
  v6 = 8;
  v3 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, &outputCnt, &outputStruct, &v6);
  v4 = v3;
  if (v3)
  {
    sub_7940(v3);
  }

  else
  {
    *a2 = outputStruct;
  }

  return v4;
}

uint64_t RoseController::GetTime(RoseController *this, __CFDictionary *a2)
{
  v12 = 0;
  outputCnt = 2;
  if (a2)
  {
    v4 = IOConnectCallMethod(*(this + 174), 7u, 0, 0, 0, 0, &output, &outputCnt, 0, &v12);
    if (v4)
    {
      v9 = v4;
      sub_79BC(v4);
    }

    else
    {
      v5 = CFNumberCreate(*(this + 121), kCFNumberLongLongType, &output);
      if (v5)
      {
        v6 = v5;
        CFDictionaryAddValue(a2, @"continuous_time", v5);
        CFRelease(v6);
        v7 = CFNumberCreate(*(this + 121), kCFNumberLongLongType, &v14);
        if (v7)
        {
          v8 = v7;
          CFDictionaryAddValue(a2, @"rose_time", v7);
          CFRelease(v8);
          return 0;
        }

        else
        {
          v9 = 3758097115;
          sub_7A38(0);
        }
      }

      else
      {
        v9 = 3758097115;
        sub_7A8C(0);
      }
    }
  }

  else
  {
    sub_7AE0(this);
    return 3758097090;
  }

  return v9;
}

uint64_t RoseController::PerformTimeSync(RoseController *this, __CFDictionary *a2)
{
  v12 = 0;
  outputCnt = 2;
  if (a2)
  {
    v4 = IOConnectCallMethod(*(this + 174), 6u, 0, 0, 0, 0, &output, &outputCnt, 0, &v12);
    if (v4)
    {
      v9 = v4;
      sub_7B34(v4);
    }

    else
    {
      v5 = CFNumberCreate(*(this + 121), kCFNumberLongLongType, &output);
      if (v5)
      {
        v6 = v5;
        CFDictionaryAddValue(a2, @"continuous_time", v5);
        CFRelease(v6);
        v7 = CFNumberCreate(*(this + 121), kCFNumberLongLongType, &v14);
        if (v7)
        {
          v8 = v7;
          CFDictionaryAddValue(a2, @"rose_time", v7);
          CFRelease(v8);
          return 0;
        }

        else
        {
          v9 = 3758097115;
          sub_7BB0(0);
        }
      }

      else
      {
        v9 = 3758097115;
        sub_7C04(0);
      }
    }
  }

  else
  {
    sub_7C58(this);
    return 3758097090;
  }

  return v9;
}

_RCLog *RoseController::GetProductionMode(RoseController *this, unsigned __int8 *a2)
{
  input = 214;
  outputCnt = 0;
  v6 = 8;
  v3 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, &outputCnt, &outputStruct, &v6);
  v4 = v3;
  if (v3)
  {
    sub_7CAC(v3);
  }

  else
  {
    *a2 = outputStruct;
  }

  return v4;
}

_RCLog *RoseController::GetSecureMode(RoseController *this, unsigned __int8 *a2)
{
  input = 215;
  outputCnt = 0;
  v6 = 8;
  v3 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, &outputCnt, &outputStruct, &v6);
  v4 = v3;
  if (v3)
  {
    sub_7D28(v3);
  }

  else
  {
    *a2 = outputStruct;
  }

  return v4;
}

_RCLog *RoseController::GetSecurityDomain(RoseController *this, unsigned __int8 *a2)
{
  input = 216;
  outputCnt = 0;
  v6 = 8;
  v3 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, &outputCnt, &outputStruct, &v6);
  v4 = v3;
  if (v3)
  {
    sub_7DA4(v3);
  }

  else
  {
    *a2 = outputStruct;
  }

  return v4;
}

_RCLog *RoseController::GetMinimumEpoch(RoseController *this, unsigned __int8 *a2)
{
  input = 217;
  outputCnt = 0;
  v6 = 8;
  v3 = IOConnectCallMethod(*(this + 174), 8u, &input, 1u, 0, 0, 0, &outputCnt, &outputStruct, &v6);
  v4 = v3;
  if (v3)
  {
    sub_7E20(v3);
  }

  else
  {
    *a2 = outputStruct;
  }

  return v4;
}

_RCLog *RoseController::GetChipRevision(mach_port_t *this, unsigned __int16 *a2)
{
  input = 219;
  outputCnt = 0;
  v8 = 8;
  Instance = _RCLog::getInstance(this);
  _RCLog::log(Instance, 1, "calling getchiprev");
  v5 = IOConnectCallMethod(this[174], 8u, &input, 1u, 0, 0, 0, &outputCnt, &outputStruct, &v8);
  v6 = v5;
  if (v5)
  {
    sub_7E9C(v5);
  }

  else
  {
    *a2 = outputStruct;
  }

  return v6;
}

void sub_3C68(uint64_t a1)
{
  outputCnt = 0;
  __n = 128;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48) / 0xF4240uLL;
  input[0] = *(a1 + 96);
  input[1] = v3;
  *(*(*(a1 + 32) + 8) + 24) = IOConnectCallMethod(*(v2 + 696), 5u, input, 2u, *(a1 + 56), *(a1 + 64), 0, &outputCnt, __src, &__n);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    sub_7F18(*(*(*(a1 + 32) + 8) + 24));
  }

  else if (*(a1 + 72) < __n)
  {
    sub_7F78((a1 + 32));
  }

  else
  {
    memcpy(*(a1 + 80), __src, __n);
    **(a1 + 88) = __n;
  }
}

uint64_t RoseController::QueueCommand(RoseController *this, char a2, const unsigned __int8 *a3, uint64_t a4, void (*a5)(void *, int, void *, unint64_t), void *a6, uint64_t a7, char a8)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (*(this + 94))
  {
    v8 = *(this + 91);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_3EA8;
    block[3] = &unk_C3B0;
    v13 = a2;
    block[4] = &v15;
    block[5] = this;
    block[6] = a7;
    block[7] = a3;
    v14 = a8;
    block[8] = a4;
    block[9] = a5;
    block[10] = a6;
    dispatch_async(v8, block);
    v9 = *(v16 + 6);
  }

  else
  {
    Instance = _RCLog::getInstance(this);
    _RCLog::log(Instance, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "_clientQueue", &unk_8F85, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 854, 0);
    v9 = 3758097113;
    *(v16 + 6) = -536870183;
  }

  _Block_object_dispose(&v15, 8);
  return v9;
}

void sub_3EA8(uint64_t a1)
{
  outputCnt = 0;
  v23 = 0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48) / 0xF4240uLL;
  input[0] = *(a1 + 88);
  input[1] = v3;
  dispatch_suspend(*(v2 + 744));
  v4 = IOConnectCallMethod(*(v2 + 696), 5u, input, 2u, *(a1 + 56), *(a1 + 64), 0, &outputCnt, outputStruct, &v23);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  v5 = *(a1 + 32);
  v6 = *(*(v5 + 8) + 24);
  if (v6)
  {
    Instance = _RCLog::getInstance(v4);
    _RCLog::log(Instance, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "result == 0 ", &unk_8F85, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 871, v6);
    v5 = *(a1 + 32);
  }

  v7 = *(a1 + 89);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v11 = *(a1 + 72);
  v17 = outputStruct[5];
  v18 = outputStruct[6];
  v19 = outputStruct[7];
  v13 = outputStruct[1];
  v14 = outputStruct[2];
  v15 = outputStruct[3];
  v16 = outputStruct[4];
  v10[2] = sub_40FC;
  v10[3] = &unk_C388;
  v10[4] = v5;
  v20 = v23;
  v12 = outputStruct[0];
  RoseController::_dispatchToClient(v2, v10, (v7 & 1) == 0);
  dispatch_resume(*(v2 + 744));
}

void RoseController::_dispatchToClient(uint64_t a1, void (**a2)(void), char a3)
{
  std::mutex::lock((a1 + 760));
  if (a3)
  {
    v6 = *(a1 + 752);
    if (v6)
    {
      dispatch_async(v6, a2);
    }
  }

  else
  {
    a2[2](a2);
  }

  std::mutex::unlock((a1 + 760));
}

void *sub_40FC(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = *(*(result[4] + 8) + 24);
    v3 = result[6];
    if (v2)
    {
      return v1(result[6], v2, 0, 0);
    }

    else
    {
      return v1(result[6], v2, result + 7, result[23]);
    }
  }

  return result;
}

uint64_t RoseController::_dequeueLogs(RoseController *this, unsigned __int8 *outputStruct, size_t a3, unint64_t *a4)
{
  outputCnt = 0;
  v8 = a3;
  if (outputStruct)
  {
    if (a4)
    {
      v5 = IOConnectCallMethod(*(this + 174), 0xCu, 0, 0, 0, 0, 0, &outputCnt, outputStruct, &v8);
      v6 = v5;
      if (v5)
      {
        sub_7FEC(v5);
      }

      else
      {
        *a4 = v8;
      }
    }

    else
    {
      v6 = 3758097090;
      sub_8068(this);
    }
  }

  else
  {
    v6 = 3758097090;
    sub_80BC(this);
  }

  return v6;
}

uint64_t RoseController::DequeueCrashLogForCore(mach_port_t *a1, unsigned int a2, char *a3, void *a4, size_t a5, size_t *a6)
{
  outputCnt = 1;
  v28 = 0;
  v27 = 0;
  if (!a6)
  {
    v15 = 3758097090;
    sub_82D8(a1);
    return v15;
  }

  output = 0;
  *a6 = 0;
  v12 = IOConnectCallMethod(a1[174], 0x16u, 0, 0, 0, 0, &output, &outputCnt, 0, &v28);
  if (v12)
  {
    v15 = v12;
    sub_8110(v12);
    return v15;
  }

  outputCnt = 0;
  if (output)
  {
    input = 0;
    ofSize = 0;
    if (a2)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    if (a2 >= 2)
    {
      v15 = 3758097090;
      sub_8208(v12);
    }

    else
    {
      v19 = IOConnectMapMemory(a1[174], v18, mach_task_self_, &input, &ofSize, 1u);
      if (v19)
      {
        v15 = v19;
        sub_818C(v19);
      }

      else
      {
        v15 = RoseController::_dequeueCrashlogEntry(v19, input, a4, a5, a6, a3);
        IOConnectUnmapMemory(a1[174], v18, mach_task_self_, input);
      }
    }
  }

  else
  {
    input = a2;
    ofSize = 15;
    outputStruct = &v26;
    if (a3)
    {
      outputStruct = a3;
    }

    v14 = IOConnectCallMethod(a1[174], 0x14u, &input, 1u, 0, 0, 0, &outputCnt, outputStruct, &ofSize);
    if (v14 == -536870160)
    {
      return 0;
    }

    v15 = v14;
    if (!v14)
    {
      v16 = &v26;
      if (a3)
      {
        v16 = a3;
      }

      *a6 = *(v16 + 2) - 15;
      ofSize = a5;
      if (a4)
      {
        v17 = IOConnectCallMethod(a1[174], 0x15u, &input, 1u, 0, 0, 0, &outputCnt, a4, &ofSize);
        v15 = v17;
        if (v17)
        {
          sub_825C(v17);
        }

        else
        {
          *a6 = ofSize;
        }

        return v15;
      }

      return 0;
    }

    Instance = _RCLog::getInstance(v14);
    if (mach_error_string(v15))
    {
      v22 = mach_error_string(v15);
    }

    else
    {
      v22 = &unk_8F85;
    }

    _RCLog::log(Instance, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "result == 0 ", v22, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 974, v15);
  }

  return v15;
}

uint64_t RoseController::_dequeueCrashlogEntry(_RCLog *a1, IODataQueueMemory *dataQueue, unint64_t a3, size_t a4, size_t *a5, void *a6)
{
  if (!dataQueue)
  {
    sub_8428(a1);
    return 3758097101;
  }

  if (!a5)
  {
    v20 = 3758097090;
    sub_83D4(a1);
    return v20;
  }

  *a5 = 0;
  v11 = IODataQueuePeek(dataQueue);
  if (!(a3 | v11))
  {
    return 0;
  }

  v12 = v11;
  if (!v11)
  {
    sub_8380(0);
    return 3758097120;
  }

  data = v11->data;
  size = v11->size;
  if (size > 0xE)
  {
    size -= 15;
    v16 = 15;
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_14:
    v20 = 0;
    *a5 = size;
    return v20;
  }

  Instance = _RCLog::getInstance(v11);
  _RCLog::log(Instance, 16, "crashlog is too small");
  v16 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (size > a4)
  {
    sub_832C(v11);
    return 3758097121;
  }

  v17 = memcpy(a3, &data[v16], size);
  *a5 += size;
  if (a6)
  {
    v18 = *data;
    *(a6 + 7) = *(&v12[1] + 3);
    *a6 = v18;
  }

  v19 = _RCLog::getInstance(v17);
  _RCLog::log(v19, 1, "crashlog(%llu) dequeued: corrupt:%d, size in hdr/real size (%llu/%llu)", *v12->data, LOBYTE(v12[2].size), *v12[1].data, *a5);
  *dataSize = 0;
  IODataQueueDequeue(dataQueue, 0, dataSize);
  return 0;
}

_RCLog *RoseController::GetCoreDumpInfo(mach_port_t *a1, unsigned int a2, void *outputStruct)
{
  outputCnt = 0;
  v6 = 15;
  if (outputStruct)
  {
    input = a2;
    v3 = IOConnectCallMethod(a1[174], 0xFu, &input, 1u, 0, 0, 0, &outputCnt, outputStruct, &v6);
    v4 = v3;
    if (v3)
    {
      sub_847C(v3);
    }
  }

  else
  {
    sub_84F8(a1);
    return 3758097090;
  }

  return v4;
}

uint64_t RoseController::ReadCoredump(RoseController *this, unsigned int a2, uint64_t a3, size_t a4, unsigned __int8 *outputStruct, unint64_t *a6)
{
  outputCnt = 0;
  v10 = a4;
  if (outputStruct)
  {
    if (a6)
    {
      input[0] = a2;
      input[1] = a3;
      v7 = IOConnectCallMethod(*(this + 174), 0xEu, input, 2u, 0, 0, 0, &outputCnt, outputStruct, &v10);
      v8 = v7;
      if (v7)
      {
        sub_854C(v7);
      }

      else
      {
        *a6 = v10;
      }
    }

    else
    {
      v8 = 3758097090;
      sub_85C8(this);
    }
  }

  else
  {
    v8 = 3758097090;
    sub_861C(this);
  }

  return v8;
}

void RoseController::_getSIKInfo(RoseController *this, const __CFAllocator *a2, unsigned __int8 **a3, unint64_t *a4, __int16 a5)
{
  v45 = 0;
  v46 = 0;
  __lk.__m_ = (this + 824);
  __lk.__owns_ = 1;
  std::mutex::lock((this + 824));
  if ((*(this + 936) & 1) == 0)
  {
    v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 5000000000;
    while (1)
    {
      if (*(this + 936))
      {
        goto LABEL_20;
      }

      v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      if (v11.__d_.__rep_ >= v10.__d_.__rep_)
      {
        goto LABEL_19;
      }

      v12.__d_.__rep_ = v10.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v12.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_18:
      v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      if (v11.__d_.__rep_ >= v10.__d_.__rep_)
      {
LABEL_19:
        if (*(this + 936))
        {
          goto LABEL_20;
        }

        Instance = _RCLog::getInstance(v11.__d_.__rep_);
        _RCLog::log(Instance, 16, "timed out waiting for boot_done event");
        goto LABEL_36;
      }
    }

    std::chrono::steady_clock::now();
    v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v13.__d_.__rep_)
    {
      v14 = 0;
      goto LABEL_16;
    }

    if (v13.__d_.__rep_ < 1)
    {
      if (v13.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v14 = 0x8000000000000000;
        goto LABEL_16;
      }
    }

    else if (v13.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v14 = 1000 * v13.__d_.__rep_;
LABEL_14:
    if (v14 > (v12.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v15.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_17:
      std::condition_variable::__do_timed_wait((this + 888), &__lk, v15);
      std::chrono::steady_clock::now();
      goto LABEL_18;
    }

LABEL_16:
    v15.__d_.__rep_ = v14 + v12.__d_.__rep_;
    goto LABEL_17;
  }

LABEL_20:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    Session = RoseSIKDataSession::GetSession(v16);
    if (Session)
    {
      v18 = _RCLog::getInstance(Session);
      _RCLog::log(v18, 16, "Rose SIK Blob session already in progress");
    }

    else
    {
      _buildRTKitCommsSIKInfoRequest(&v48, a5);
      dispatch_suspend(*(this + 93));
      v19 = RoseController::PerformCommand(this, 5, &v48, 8, v47, 12, &v45, 20000000000);
      if (v19)
      {
        v32 = v19;
        dispatch_resume(*(this + 93));
        v34 = _RCLog::getInstance(v33);
        if (mach_error_string(v32))
        {
          v35 = mach_error_string(v32);
        }

        else
        {
          v35 = &unk_8F85;
        }

        _RCLog::log(v34, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "result == 0 ", v35, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 1088, v32);
      }

      else
      {
        v20 = _processRTKitCommsSIKInfoResponse(v47);
        dispatch_resume(*(this + 93));
        if (v20)
        {
          v22 = RoseSIKDataSession::WaitforData(v20, 10000000000);
          v23 = v22;
          if (v22)
          {
            v37 = _RCLog::getInstance(v22);
            if (mach_error_string(v23))
            {
              v38 = mach_error_string(v23);
            }

            else
            {
              v38 = &unk_8F85;
            }

            _RCLog::log(v37, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "result == 0 ", v38, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 1097, v23);
          }

          else
          {
            v24 = RoseSIKDataSession::ReadData(v20, 0, 0, &v46);
            v25 = v24;
            if (v24)
            {
              v39 = _RCLog::getInstance(v24);
              if (mach_error_string(v25))
              {
                v40 = mach_error_string(v25);
              }

              else
              {
                v40 = &unk_8F85;
              }

              _RCLog::log(v39, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "result == 0 ", v40, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 1100, v25);
            }

            else
            {
              Typed = CFAllocatorAllocateTyped();
              if (Typed)
              {
                v27 = RoseSIKDataSession::ReadData(v20, Typed, v46, &v45);
                v28 = v27;
                if (v27)
                {
                  v42 = _RCLog::getInstance(v27);
                  if (mach_error_string(v28))
                  {
                    v43 = mach_error_string(v28);
                  }

                  else
                  {
                    v43 = &unk_8F85;
                  }

                  _RCLog::log(v42, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "result == 0 ", v43, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 1106, v28);
                  CFAllocatorDeallocate(a2, Typed);
                }

                else
                {
                  v29 = _RCLog::getInstance(v27);
                  _RCLog::log(v29, 1, "SIK Blob: out size %u", v45);
                  *a3 = Typed;
                  *a4 = v45;
                }
              }

              else
              {
                v41 = _RCLog::getInstance(0);
                _RCLog::log(v41, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "_buffer", &unk_8F85, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 1103, 0);
              }
            }
          }
        }

        else
        {
          v36 = _RCLog::getInstance(v21);
          _RCLog::log(v36, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "session", &unk_8F85, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 1094, 0);
        }
      }

      RoseSIKDataSession::Release(v30);
    }

LABEL_36:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }
}

void sub_4DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::mutex *a16, char a17)
{
  if (a17 == 1)
  {
    std::mutex::unlock(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseController::RegisterCrashLogAvailableHandler(RoseController *this, void (*a2)(void *), void *a3)
{
  std::mutex::lock((this + 472));
  *(this + 55) = a2;
  *(this + 56) = a3;
  std::mutex::unlock((this + 472));
  return 0;
}

uint64_t RoseController::RegisterCrashHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 472));
  *(a1 + 456) = a2;
  *(a1 + 464) = a3;
  std::mutex::unlock((a1 + 472));
  return 0;
}

uint64_t RoseController::RegisterStateHandler(RoseController *this, void (*a2)(void *, unsigned __int8), void *a3)
{
  std::mutex::lock((this + 552));
  *(this + 67) = a2;
  *(this + 68) = a3;
  std::mutex::unlock((this + 552));
  return 0;
}

uint64_t RoseController::RegisterErrorReportHandler(RoseController *this, void (*a2)(void *, unsigned __int8, void *, unint64_t), void *a3)
{
  std::mutex::lock((this + 632));
  *(this + 77) = a2;
  *(this + 78) = a3;
  std::mutex::unlock((this + 632));
  return 0;
}

uint64_t RoseController::RegisterEventHandler(RoseController *this, void (*a2)(void *, void *, unint64_t), void *a3)
{
  if (*(this + 94))
  {
    std::mutex::lock((this + 376));
    *(this + 2) = a2;
    *(this + 3) = a3;
    *(this + 32) = 0;
    std::mutex::unlock((this + 376));
    RoseController::_flushResponseQueue(this);
    return 0;
  }

  else
  {
    sub_8670(this);
    return 3758097113;
  }
}

uint64_t RoseController::_callEventCallback(uint64_t a1, const void *a2, size_t a3)
{
  memcpy(__dst, a2, a3);
  std::mutex::lock((a1 + 376));
  if (BYTE2(__dst[0]) >= 0xFuLL)
  {
    Instance = _RCLog::getInstance(v4);
    _RCLog::log(Instance, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", &unk_8F85, "event.header.interface < ROSE_INTERFACE_MAX", &unk_8F85, "/Library/Caches/com.apple.xbs/Sources/AppleSPUKext/AppleSPURTKitOSClientDrivers/Rose/RoseControllerLib/RoseController.cpp", 1206, 0);
    v10 = 3758097090;
  }

  else
  {
    v5 = a1 + 24 * BYTE2(__dst[0]);
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    v8 = v5 + 16;
    v9 = *(v8 + 16);
    if (v9)
    {
      if (v7)
      {
        (v7)(v6, __dst + 5, BYTE3(__dst[0]));
      }
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 0x40000000;
      v13[2] = sub_5158;
      v13[3] = &unk_C3D0;
      v13[4] = a1;
      v13[5] = v7;
      v13[6] = v6;
      v14 = v9;
      *v15 = *(v8 + 17);
      *&v15[3] = *(v8 + 20);
      v19 = __dst[3];
      v18 = __dst[2];
      *&v23[13] = *&v25[13];
      *v23 = *v25;
      v22 = __dst[6];
      v20 = __dst[4];
      v21 = __dst[5];
      v17 = __dst[1];
      v16 = __dst[0];
      RoseController::_dispatchToClient(a1, v13, 1);
    }

    v10 = 0;
  }

  std::mutex::unlock((a1 + 376));
  return v10;
}

void sub_5158(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::mutex::lock((v2 + 376));
  v3 = *(a1 + 40);
  if (v3)
  {
    v3(*(a1 + 48), a1 + 69, *(a1 + 67));
  }

  std::mutex::unlock((v2 + 376));
}

uint64_t RoseController::_callErrorCallback(void (*a1)(void), const void *a2, size_t a3)
{
  memcpy(&v6, a2, a3);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_527C;
  v5[3] = &unk_C3F0;
  v5[4] = a1;
  RoseController::_dispatchToClient(a1, v5, 1);
  return 0;
}

void sub_527C(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::mutex::lock((v2 + 632));
  v3 = *(v2 + 616);
  if (v3)
  {
    v3(*(v2 + 624), *(a1 + 42), a1 + 45, *(a1 + 43));
  }

  else
  {
    snprintf(__str, 0x20uLL, "error_code %d", *(a1 + 42));
    RCDumpPacket((a1 + 45), *(a1 + 43), __str);
  }

  std::mutex::unlock((v2 + 632));
}

void RCDumpPacket(_RCLog *a1, unsigned int a2, const char *a3)
{
  v17 = a1;
  v4 = __str;
  if (a3)
  {
    a1 = snprintf(__str, 0x400uLL, "%s\n", a3);
    v4 = &__str[a1];
  }

  if (a2)
  {
    v5 = a2;
    v6 = v17;
    do
    {
      if (v5 >= 0x10)
      {
        v7 = 16;
      }

      else
      {
        v7 = v5;
      }

      v8 = v7 - 1;
      if (v5 >= 0x10)
      {
        v9 = 16;
      }

      else
      {
        v9 = v5;
      }

      v10 = 0;
      v11 = &v4[snprintf(v4, 0x400uLL, "%08x: ", v6 - v17)];
      do
      {
        a1 = snprintf(v11, 0x400uLL, "%02x ", *(v6 + v10));
        v11 += a1;
        if (v10 == 7)
        {
          *v11++ = 32;
        }

        ++v10;
      }

      while (v9 != v10);
      if (v5 <= 0xF)
      {
        do
        {
          *v11 = 2105376;
          if (v8 == 6)
          {
            *(v11 + 3) = 32;
            v11 += 4;
          }

          else
          {
            v11 += 3;
          }

          ++v8;
        }

        while (v8 < 0xF);
      }

      *v11 = 2128928;
      v12 = v11 + 3;
      v13 = 7;
      do
      {
        v14 = *v6;
        if ((v14 - 33) >= 0x5E)
        {
          LOBYTE(v14) = 46;
        }

        *v12 = v14;
        v12[1] = 0;
        if (v13)
        {
          ++v12;
        }

        else
        {
          *(v12 + 1) = 32;
          v12 += 2;
        }

        v6 = (v6 + 1);
        --v13;
        --v7;
      }

      while (v7);
      *v12 = 10;
      v4 = v12 + 1;
      v15 = v5 > 0x10;
      v5 -= 16;
    }

    while (v15);
  }

  Instance = _RCLog::getInstance(a1);
  _RCLog::log(Instance, 16, "%s", __str);
}

uint64_t RoseController::_callErrorCallback(RoseController *this, char a2, void *__src, size_t __n)
{
  v4 = __n;
  if (__n > 0x80)
  {
    Instance = _RCLog::getInstance(this);
    _RCLog::log(Instance, 16, "error packet too large (size %d)", v4);
    return 3758097121;
  }

  else
  {
    memcpy(v11, __src, __n);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_563C;
    v9[3] = &unk_C410;
    v9[4] = this;
    v10 = a2;
    v11[128] = v4;
    RoseController::_dispatchToClient(this, v9, 1);
    return 0;
  }
}

void sub_563C(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::mutex::lock((v2 + 632));
  v3 = *(v2 + 616);
  if (v3)
  {
    v3(*(v2 + 624), *(a1 + 40), a1 + 46, *(a1 + 174));
  }

  else
  {
    snprintf(__str, 0x20uLL, "error_code %d", *(a1 + 40));
    RCDumpPacket((a1 + 46), *(a1 + 174), __str);
  }

  std::mutex::unlock((v2 + 632));
}

void sub_5708(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((v1 + 552));
  v2 = *(v1 + 536);
  if (v2)
  {
    v2(*(v1 + 544), *(v1 + 980));
  }

  std::mutex::unlock((v1 + 552));
}

void sub_5758(_Unwind_Exception *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 552));
  _Unwind_Resume(a1);
}

__n128 sub_5770(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void sub_5798(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((v1 + 472));
  v2 = *(v1 + 440);
  if (v2)
  {
    v2(*(v1 + 448));
  }

  std::mutex::unlock((v1 + 472));
}

void sub_57E4(_Unwind_Exception *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 472));
  _Unwind_Resume(a1);
}

void sub_57FC(void *a1)
{
  v2 = a1[5];
  std::mutex::lock((v2 + 472));
  v3 = *(v2 + 456);
  if (v3)
  {
    if (a1[6])
    {
      v4 = *(a1[4] + 8) + 40;
    }

    else
    {
      v4 = 0;
    }

    v3(*(v2 + 464), v4);
  }

  std::mutex::unlock((v2 + 472));
}

void RoseController::QueueEventSourceCallback(IODataQueueEntry *this, void *a2)
{
  v3 = 92;
  Typed = CFAllocatorAllocateTyped();
  for (Typed->msgh_size = 92; ; Typed->msgh_size = v3)
  {
    Typed->msgh_bits = 0;
    size = this[89].size;
    Typed->msgh_remote_port = 0;
    Typed->msgh_local_port = size;
    Typed->msgh_id = 0;
    v6 = mach_msg(Typed, 117440518, 0, v3, size, 0, 0);
    if (v6 != 268451844)
    {
      break;
    }

    v3 = (Typed->msgh_size + 71) & 0xFFFFFFFC;
    Typed = CFAllocatorReallocateTyped();
  }

  if (!v6)
  {
    RoseController::_dequeueEvents(this);
  }

  CFAllocatorDeallocate(kCFAllocatorSystemDefault, Typed);
}

IODataQueueEntry *RoseController::_dequeueEvents(IODataQueueEntry *this)
{
  v1 = this[88];
  if (v1)
  {
    v2 = this;
    dataSize = 0;
    this = IODataQueuePeek(v1);
    if (this)
    {
      v3 = this;
      do
      {
        RoseController::_dispatchDataQueueMessage(v2, v3 + 4, *v3);
        dataSize = 0;
        IODataQueueDequeue(v1, 0, &dataSize);
        this = IODataQueuePeek(v1);
        v3 = this;
      }

      while (this);
    }
  }

  return this;
}

void RoseController::_dispatchDataQueueMessage(_RCLog *this, unsigned __int8 *a2, size_t a3)
{
  v6 = a2[1];
  if (v6 == 2)
  {
    Instance = _RCLog::getInstance(this);
    _RCLog::log(Instance, 2, "received packet error report size %d", a3);
    memcpy(&v10, a2, a3);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_527C;
    v9[3] = &unk_C3F0;
    v9[4] = this;
    RoseController::_dispatchToClient(this, v9, 1);
  }

  else if (v6 == 1)
  {

    RoseController::_callEventCallback(this, a2, a3);
  }

  else
  {
    v8 = _RCLog::getInstance(this);
    _RCLog::log(v8, 16, "unhandled packetType: %d", a2[1]);
  }
}

void RoseController::_dispatchSourceCancelHandler(RoseController *this)
{
  v2 = *(this + 93);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 88);
  if (v3)
  {
    IOConnectUnmapMemory(*(this + 174), 0, mach_task_self_, v3);
    *(this + 88) = 0;
  }

  v4 = *(this + 174);
  if (v4)
  {
    if (*(this + 90))
    {
      IONotificationPortSetDispatchQueue(*(this + 90), 0);
      IONotificationPortDestroy(*(this + 90));
      v4 = *(this + 174);
    }

    IOServiceClose(v4);
    *(this + 90) = 0;
    *(this + 174) = 0;
  }

  v5 = *(this + 178);
  if (v5)
  {
    mach_port_mod_refs(mach_task_self_, v5, 1u, -1);
    *(this + 178) = 0;
  }

  v6 = *(this + 90);
  if (v6)
  {
    IONotificationPortDestroy(v6);
  }

  *(this + 175) = 0;
  RoseController::Release(this);
  v7 = *(this + 119);

  dispatch_group_leave(v7);
}

_RCLog *RoseController::_handleSecurityEvents(RoseController *this, unint64_t a2)
{
  if ((*this & 0x3FD | 2) == 0x202)
  {
    v3 = _processRTKitCommsSIKInfoEvent(this, a2);
    v4 = v3;
    if (v3)
    {
      sub_86C4(v3);
    }
  }

  else
  {
    Instance = _RCLog::getInstance(this);
    _RCLog::log(Instance, 16, "unsupported command 0x%02x", *this & 0x3FF);
    return 3758097095;
  }

  return v4;
}

_RCLog *RoseController::SetPowerState(mach_port_t *this, unsigned int a2)
{
  input = a2;
  Instance = _RCLog::getInstance(this);
  _RCLog::log(Instance, 1, "SetPowerState called with on = %d", a2);
  v5 = IOConnectCallMethod(this[174], 0x10u, &input, 1u, 0, 0, 0, 0, 0, 0);
  if (v5)
  {
    v7 = v5;
    sub_8740(v5);
  }

  else if (a2)
  {
    usleep(0x2710u);
    v6 = RoseController::Reset(this);
    v7 = v6;
    if (v6)
    {
      sub_87BC(v6);
    }
  }

  else
  {
    v7 = 0;
    this[245] = 4;
  }

  return v7;
}

_RCLog *RoseController::SetDeepSleepState(mach_port_t *this, unsigned int a2)
{
  input = 222;
  inputStruct = a2;
  Instance = _RCLog::getInstance(this);
  _RCLog::log(Instance, 1, "SetDeepSleepState called with on = %d", a2);
  v5 = IOConnectCallMethod(this[174], 9u, &input, 1u, &inputStruct, 8uLL, 0, 0, 0, 0);
  v6 = v5;
  if (v5)
  {
    sub_8838(v5);
  }

  return v6;
}

void RoseControllerLibFactory(const __CFAllocator *a1, const void *a2)
{
  v4 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xAu, 0x3Au, 0xB3u, 0x17u, 0x88u, 0xE7u, 0x40u, 0xA0u, 0x89u, 0x68u, 0x33u, 0x55u, 0x58u, 0x14u, 0x66u, 0x63u);
  if (CFEqual(a2, v4))
  {
    Typed = CFAllocatorAllocateTyped();
    RoseController::RoseController(Typed, a1);
  }
}

intptr_t DefaultSyncDownloadCallback(NSObject *a1, int a2)
{
  *dispatch_get_context(a1) = a2;

  return dispatch_semaphore_signal(a1);
}

void _RCLog::_RCLog(_RCLog *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = os_log_create("com.apple.RoseControllerLib", "default");
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = os_log_create("com.apple.RoseControllerLib", "default");
}

uint64_t *_RCLog::getInstance(_RCLog *this)
{
  if ((atomic_load_explicit(&qword_10228, memory_order_acquire) & 1) == 0)
  {
    sub_88B4();
  }

  return &qword_10230;
}

void *_RCLog::registerLogSink(void *this, void (*a2)(void *, os_log_type_t, const char *), void *a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

void _RCLog::log(_RCLog *this, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  vsnprintf(__str, 0x400uLL, a3, va);
  if (*this)
  {
    (*this)(*(this + 1), a2, __str);
  }

  else
  {
    v5 = *(this + 2);
    if (os_log_type_enabled(v5, a2))
    {
      *buf = 136315138;
      v7 = __str;
      _os_log_impl(&dword_0, v5, a2, "%s", buf, 0xCu);
    }
  }
}

void sub_616C(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_buf == __null", v3, v4, v5, v6);
}

void sub_61C0(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "ok", v3, v4, v5, v6);
}

void sub_6214(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_buf", v3, v4, v5, v6);
}

void sub_6268(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "status != -1", v3, v4, v5, v6);
}

void sub_62BC(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "!_blob_rx_complete", v3, v4, v5, v6);
}

void sub_6310(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_stream", v3, v4, v5, v6);
}

void sub_6364(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "!_blob_rx_complete", v3, v4, v5, v6);
}

void sub_63B8(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_blob_rx_complete", v3, v4, v5, v6);
}

void sub_640C(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "in_size >= _buf_size", v3, v4, v5, v6);
}

void sub_6460(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "out_size", v3, v4, v5, v6);
}

void sub_64B4(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_6530(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "size > __builtin_offsetof(RTKOS_sik_info_event, cont) + sizeof(RTKOS_sik_info_event::cont)", v3, v4, v5, v6);
}

void sub_6584(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "sikEvent->start.sessionID == session->GetID()", v3, v4, v5, v6);
}

void sub_65D8(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_6654(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_66D0(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "size >= __builtin_offsetof(RTKOS_sik_info_event, start) + sizeof(RTKOS_sik_info_event::start)", v3, v4, v5, v6);
}

void sub_6724(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "sikEvent->start.sessionID == session->GetID()", v3, v4, v5, v6);
}

void sub_6778(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_67F4(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_6870(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "size >= __builtin_offsetof(RTKOS_sik_info_event, start) + sizeof(RTKOS_sik_info_event::start)", v3, v4, v5, v6);
}

void sub_68C4(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "session", v3, v4, v5, v6);
}

void sub_6918(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_6994(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_6A10(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_6A8C(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_commandQueue", v3, v4, v5, v6);
}

void sub_6AE0(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_notificationQueue", v3, v4, v5, v6);
}

void sub_6B34(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_servicePort", v3, v4, v5, v6);
}

void sub_6B88(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "service", v3, v4, v5, v6);
}

void sub_6BDC(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_6C58(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_6CD4(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_6D50(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_asyncEventsourceCancelGroup", v3, v4, v5, v6);
}

void sub_6DA4(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_asyncEventSource", v3, v4, v5, v6);
}

void sub_6DF8(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_reportQueue", v3, v4, v5, v6);
}

void sub_6E4C(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_queuePort", v3, v4, v5, v6);
}

void sub_6EA0(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_5EFC();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "result == 0 ", v3, v4, v5, v6);
}

void sub_6F00(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_6F7C(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_5EFC();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "result == 0 ", v3, v4, v5, v6);
}

void sub_6FDC(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7058(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "crash_type < RoseTriggerCrashCount", v3, v4, v5, v6);
}

void sub_70AC(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7128(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_71A4(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7220(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_729C(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "out_size == sizeof(response)", v3, v4, v5, v6);
}

void sub_72F0(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_5EFC();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "result == 0 ", v3, v4, v5, v6);
}

void sub_7350(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_73CC(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7448(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_74C4(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7540(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_75BC(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_5EFC();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "result == 0 ", v3, v4, v5, v6);
}

void sub_761C(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_5EFC();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "result == 0 ", v3, v4, v5, v6);
}

void sub_767C(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "intProperty", v3, v4, v5, v6);
}

void sub_76D0(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "intProperty", v3, v4, v5, v6);
}

void sub_7724(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "intProperty", v3, v4, v5, v6);
}

void sub_7778(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "info", v3, v4, v5, v6);
}

void sub_77CC(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7848(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_78C4(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7940(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_79BC(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7A38(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "time_base", v3, v4, v5, v6);
}

void sub_7A8C(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "time_base", v3, v4, v5, v6);
}

void sub_7AE0(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "time_dictionary", v3, v4, v5, v6);
}

void sub_7B34(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7BB0(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "time_base", v3, v4, v5, v6);
}

void sub_7C04(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "time_base", v3, v4, v5, v6);
}

void sub_7C58(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "time_dictionary", v3, v4, v5, v6);
}

void sub_7CAC(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7D28(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7DA4(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7E20(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7E9C(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_7F18(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_5EFC();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "result == 0 ", v3, v4, v5, v6);
}

void sub_7F78(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v2, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v3, "in_size >= _response_size", v4, v5, v6, v7);
  *(*(*a1 + 8) + 24) = -536870168;
}

void sub_7FEC(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_8068(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "out_size", v3, v4, v5, v6);
}

void sub_80BC(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "buffer", v3, v4, v5, v6);
}

void sub_8110(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_818C(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_8208(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "core < RoseCoreCount", v3, v4, v5, v6);
}

void sub_825C(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_82D8(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "out_size", v3, v4, v5, v6);
}

void sub_832C(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "in_size >= size", v3, v4, v5, v6);
}

void sub_8380(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "nextEntry", v3, v4, v5, v6);
}

void sub_83D4(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "out_size", v3, v4, v5, v6);
}

void sub_8428(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "queueMemory", v3, v4, v5, v6);
}

void sub_847C(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_84F8(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "desc", v3, v4, v5, v6);
}

void sub_854C(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_85C8(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "out_len", v3, v4, v5, v6);
}

void sub_861C(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "buffer", v3, v4, v5, v6);
}

void sub_8670(_RCLog *a1)
{
  _RCLog::getInstance(a1);
  sub_160C();
  _RCLog::log(v1, 16, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v2, "_clientQueue", v3, v4, v5, v6);
}

void sub_86C4(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_8740(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_87BC(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_8838(_RCLog *a1)
{
  v1 = a1;
  _RCLog::getInstance(a1);
  if (sub_163C())
  {
    mach_error_string(v1);
  }

  sub_1618();
  sub_1624(v2, v3, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n");
}

void sub_88B4()
{
  if (__cxa_guard_acquire(&qword_10228))
  {
    qword_10238 = 0;
    qword_10230 = 0;
    qword_10240 = os_log_create("com.apple.RoseControllerLib", "default");
    __cxa_atexit(nullsub_3, &qword_10230, &dword_0);

    __cxa_guard_release(&qword_10228);
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
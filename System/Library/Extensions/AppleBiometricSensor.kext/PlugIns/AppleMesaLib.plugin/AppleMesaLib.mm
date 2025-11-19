uint64_t MesaPlugIn::SetCaptureCallback(MesaPlugIn *this, void (*a2)(unint64_t), void (*a3)(unint64_t), uint64_t a4, uint64_t a5)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "SetCaptureCallback";
    v13 = 2080;
    v14 = "SetCaptureCallback";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: ", &v11, 0x16u);
  }

  return MesaPlugIn::SetCaptureCallback(this, a2, a3, a4, a5);
}

MesaPlugIn *AppleMesaFactory(uint64_t a1, const void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "AppleMesaFactory";
    v9 = 2080;
    v10 = "AppleMesaFactory";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: ", buf, 0x16u);
  }

  v3 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x3Fu, 0x3Bu, 4u, 0xCCu, 0xA0u, 0x7Au, 0x46u, 0xA5u, 0x9Du, 0xDFu, 0x78u, 0x76u, 0x8Cu, 0x96u, 0x67u, 0x71u);
  if (CFEqual(a2, v3))
  {
    Typed = CFAllocatorAllocateTyped();
    v5 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 1u, 0xBFu, 0x9Au, 0x83u, 0x2Bu, 0x71u, 0x40u, 0xF9u, 0x9Au, 0xA2u, 0x79u, 0x4Au, 0xC0u, 0x82u, 0xF6u, 1u);
    MesaPlugIn::MesaPlugIn(Typed, v5);
  }

  else
  {
    Typed = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v8 = "AppleMesaFactory";
    v9 = 2080;
    v10 = "AppleMesaFactory";
    v11 = 2048;
    v12 = Typed;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  return Typed;
}

void MesaPlugIn::MesaPlugIn(MesaPlugIn *this, CFTypeRef cf)
{
  v4 = CFRetain(cf);
  *(this + 4) = 1;
  *(this + 4) = 0;
  *this = &MesaPlugIn::sMesaPlugInFtbl;
  *(this + 1) = v4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "MesaPlugIn";
    v7 = 2080;
    v8 = "MesaPlugIn";
    v9 = 2048;
    v10 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v5, 0x20u);
  }

  CFPlugInAddInstanceForFactory(cf);
}

void MesaPlugIn::~MesaPlugIn(CFUUIDRef *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = 136315650;
    v3 = "~MesaPlugIn";
    v4 = 2080;
    v5 = "~MesaPlugIn";
    v6 = 2048;
    v7 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v2, 0x20u);
  }

  CFPlugInRemoveInstanceForFactory(this[1]);
  CFRelease(this[1]);
}

void sub_BE0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_BEC(a1);
}

uint64_t MesaPlugIn::QueryInterface(MesaPlugIn *this, CFUUIDBytes a2, void **a3)
{
  v4 = *&a2.byte8;
  v5 = *&a2.byte0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v14 = "QueryInterface";
    v15 = 2080;
    v16 = "QueryInterface";
    v17 = 2048;
    v18 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  *&v19.byte0 = v5;
  *&v19.byte8 = v4;
  v7 = CFUUIDCreateFromUUIDBytes(0, v19);
  v8 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x5Bu, 0x12u, 0x84u, 0x69u, 0x10u, 0xE8u, 0x43u, 0x2Au, 0xB8u, 0x33u, 0xE5u, 0x71u, 0xBAu, 0xE2u, 0x9Fu, 0xA0u);
  if (CFEqual(v7, v8) || (v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v7, v9)) || (v10 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v7, v10)))
  {
    MesaPlugIn::AddRef(this);
    v11 = 0;
  }

  else
  {
    this = 0;
    v11 = 2147483652;
  }

  *a3 = this;
  CFRelease(v7);
  return v11;
}

uint64_t MesaPlugIn::AddRef(MesaPlugIn *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = 136315650;
    v4 = "AddRef";
    v5 = 2080;
    v6 = "AddRef";
    v7 = 2048;
    v8 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v3, 0x20u);
  }

  result = (*(this + 4) + 1);
  *(this + 4) = result;
  return result;
}

uint64_t MesaPlugIn::Release(MesaPlugIn *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "Release";
    v6 = 2080;
    v7 = "Release";
    v8 = 2048;
    v9 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v4, 0x20u);
  }

  v2 = *(this + 4);
  *(this + 4) = v2 - 1;
  if (v2 == 1)
  {
    MesaPlugIn::~MesaPlugIn(this);
    operator delete();
  }

  return (v2 - 1);
}

uint64_t MesaPlugIn::Probe(MesaPlugIn *this, const __CFDictionary *a2, unsigned int a3, int *a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "Probe";
    v9 = 2080;
    v10 = "Probe";
    v11 = 2048;
    v12 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v7, 0x20u);
  }

  *a4 = 1000;
  return 0;
}

uint64_t MesaPlugIn::Start(io_connect_t *this, const __CFDictionary *a2, io_service_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "Start";
    v8 = 2080;
    v9 = "Start";
    v10 = 2048;
    v11 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v6, 0x20u);
  }

  this[5] = a3;
  return IOServiceOpen(a3, mach_task_self_, 1u, this + 6);
}

uint64_t MesaPlugIn::Stop(io_connect_t *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = 136315650;
    v4 = "Stop";
    v5 = 2080;
    v6 = "Stop";
    v7 = 2048;
    v8 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v3, 0x20u);
  }

  result = IOServiceClose(this[6]);
  this[5] = 0;
  this[6] = 0;
  return result;
}

uint64_t MesaPlugIn::Open(mach_port_t *this, unsigned int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v9 = "Open";
    v10 = 2080;
    v11 = "Open";
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  input = a2;
  v4 = IOConnectCallScalarMethod(this[6], 3u, &input, 1u, 0, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = mach_error_string(v4);
    *buf = 136315650;
    v9 = "Open";
    v10 = 2080;
    v11 = "Open";
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v4;
}

uint64_t MesaPlugIn::Close(mach_port_t *this, unsigned int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v9 = "Close";
    v10 = 2080;
    v11 = "Close";
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  input = a2;
  v4 = IOConnectCallScalarMethod(this[6], 4u, &input, 1u, 0, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = mach_error_string(v4);
    *buf = 136315650;
    v9 = "Close";
    v10 = 2080;
    v11 = "Close";
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v4;
}

uint64_t MesaPlugIn::Reset(uint64_t a1, unsigned int a2, void *a3, size_t a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v14 = "Reset";
    v15 = 2080;
    v16 = "Reset";
    v17 = 2048;
    v18 = a1;
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p %x", buf, 0x26u);
  }

  v11 = a4;
  input = a2;
  v8 = IOConnectCallMethod(*(a1 + 24), 5u, &input, 1u, 0, 0, 0, 0, a3, &v11);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = mach_error_string(v8);
    *buf = 136315650;
    v14 = "Reset";
    v15 = 2080;
    v16 = "Reset";
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v8;
}

uint64_t MesaPlugIn::Idle(mach_port_t *this, unsigned __int8 *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "Idle";
    v12 = 2080;
    v13 = "Idle";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  outputStructCnt = a3;
  v6 = IOConnectCallStructMethod(this[6], 0x17u, 0, 0, a2, &outputStructCnt);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    *buf = 136315650;
    v11 = "Idle";
    v12 = 2080;
    v13 = "Idle";
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v6;
}

uint64_t MesaPlugIn::StartCapture(mach_port_t *this, unsigned __int8 *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "StartCapture";
    v12 = 2080;
    v13 = "StartCapture";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  outputStructCnt = a3;
  v6 = IOConnectCallStructMethod(this[6], 6u, 0, 0, a2, &outputStructCnt);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    *buf = 136315650;
    v11 = "StartCapture";
    v12 = 2080;
    v13 = "StartCapture";
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v6;
}

uint64_t MesaPlugIn::StopCapture(mach_port_t *this, unsigned __int8 *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "StopCapture";
    v12 = 2080;
    v13 = "StopCapture";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  outputStructCnt = a3;
  v6 = IOConnectCallStructMethod(this[6], 7u, 0, 0, a2, &outputStructCnt);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    *buf = 136315650;
    v11 = "StopCapture";
    v12 = 2080;
    v13 = "StopCapture";
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v6;
}

uint64_t MesaPlugIn::PauseCapture(mach_port_t *this, unsigned __int8 *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "PauseCapture";
    v12 = 2080;
    v13 = "PauseCapture";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  outputStructCnt = a3;
  v6 = IOConnectCallStructMethod(this[6], 8u, 0, 0, a2, &outputStructCnt);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    *buf = 136315650;
    v11 = "PauseCapture";
    v12 = 2080;
    v13 = "PauseCapture";
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v6;
}

uint64_t MesaPlugIn::GetStatus(mach_port_t *this, unsigned __int8 *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "GetStatus";
    v12 = 2080;
    v13 = "GetStatus";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  outputStructCnt = a3;
  v6 = IOConnectCallStructMethod(this[6], 9u, 0, 0, a2, &outputStructCnt);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    *buf = 136315650;
    v11 = "GetStatus";
    v12 = 2080;
    v13 = "GetStatus";
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v6;
}

uint64_t MesaPlugIn::GetSerialNumber(mach_port_t *this, unsigned __int8 *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "GetSerialNumber";
    v12 = 2080;
    v13 = "GetSerialNumber";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  outputStructCnt = a3;
  v6 = IOConnectCallStructMethod(this[6], 0xAu, 0, 0, a2, &outputStructCnt);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    *buf = 136315906;
    v11 = "GetSerialNumber";
    v12 = 2080;
    v13 = "GetSerialNumber";
    v14 = 2080;
    v15 = v7;
    v16 = 2048;
    v17 = outputStructCnt;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s size=%zu\n", buf, 0x2Au);
  }

  return v6;
}

uint64_t MesaPlugIn::GetModuleSerialNumber(mach_port_t *this, unsigned __int8 *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "GetModuleSerialNumber";
    v12 = 2080;
    v13 = "GetModuleSerialNumber";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  outputStructCnt = a3;
  v6 = IOConnectCallStructMethod(this[6], 0xBu, 0, 0, a2, &outputStructCnt);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    *buf = 136315906;
    v11 = "GetModuleSerialNumber";
    v12 = 2080;
    v13 = "GetModuleSerialNumber";
    v14 = 2080;
    v15 = v7;
    v16 = 2048;
    v17 = outputStructCnt;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s size=%zu\n", buf, 0x2Au);
  }

  return v6;
}

uint64_t MesaPlugIn::GetModuleSerialNumberDynamic(mach_port_t *this, unsigned __int8 *a2, unint64_t *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "GetModuleSerialNumberDynamic";
    v14 = 2080;
    v15 = "GetModuleSerialNumberDynamic";
    v16 = 2048;
    v17 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  v11 = *a3;
  outputCnt = 1;
  v6 = IOConnectCallMethod(this[6], 0xCu, 0, 0, 0, 0, a3, &outputCnt, a2, &v11);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    v8 = *a3;
    *buf = 136316162;
    v13 = "GetModuleSerialNumberDynamic";
    v14 = 2080;
    v15 = "GetModuleSerialNumberDynamic";
    v16 = 2080;
    v17 = v7;
    v18 = 2048;
    v19 = v11;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s size=%zu serialLen:%zu\n", buf, 0x34u);
  }

  return v6;
}

uint64_t MesaPlugIn::GoToProductionMode(mach_port_t *this, unsigned __int8 *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "GoToProductionMode";
    v12 = 2080;
    v13 = "GoToProductionMode";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  outputStructCnt = a3;
  v6 = IOConnectCallStructMethod(this[6], 0xDu, 0, 0, a2, &outputStructCnt);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    *buf = 136315650;
    v11 = "GoToProductionMode";
    v12 = 2080;
    v13 = "GoToProductionMode";
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v6;
}

uint64_t MesaPlugIn::LoadPatch(MesaPlugIn *this, char *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315906;
    v10 = "LoadPatch";
    v11 = 2080;
    v12 = "LoadPatch";
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p %zx", &v9, 0x2Au);
  }

  v6 = IOConnectCallStructMethod(*(this + 6), 0xEu, a2, a3, 0, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    v9 = 136315650;
    v10 = "LoadPatch";
    v11 = 2080;
    v12 = "LoadPatch";
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", &v9, 0x20u);
  }

  return v6;
}

uint64_t MesaPlugIn::Provision(mach_port_t *this, unsigned __int8 *a2, unsigned __int8 *a3, size_t a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "Provision";
    v14 = 2080;
    v15 = "Provision";
    v16 = 2048;
    v17 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  outputStructCnt = a4;
  v8 = IOConnectCallStructMethod(this[6], 0xFu, a2, 0x20uLL, a3, &outputStructCnt);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = mach_error_string(v8);
    *buf = 136315650;
    v13 = "Provision";
    v14 = 2080;
    v15 = "Provision";
    v16 = 2080;
    v17 = v9;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v8;
}

uint64_t MesaPlugIn::ScheduleWithRunLoop(IONotificationPortRef *this, __CFRunLoop *a2, const __CFString *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "ScheduleWithRunLoop";
    v11 = 2080;
    v12 = "ScheduleWithRunLoop";
    v13 = 2048;
    v14 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v9, 0x20u);
  }

  v4 = 3758097084;
  if (!this[4])
  {
    v5 = IONotificationPortCreate(kIOMainPortDefault);
    this[4] = v5;
    if (v5)
    {
      Current = CFRunLoopGetCurrent();
      RunLoopSource = IONotificationPortGetRunLoopSource(this[4]);
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
      return 0;
    }
  }

  return v4;
}

uint64_t MesaPlugIn::UnscheduleWithRunLoop(IONotificationPortRef *this, __CFRunLoop *a2, const __CFString *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "UnscheduleWithRunLoop";
    v9 = 2080;
    v10 = "UnscheduleWithRunLoop";
    v11 = 2048;
    v12 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v7, 0x20u);
  }

  if (!this[4])
  {
    return 3758097084;
  }

  Current = CFRunLoopGetCurrent();
  RunLoopSource = IONotificationPortGetRunLoopSource(this[4]);
  CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  IONotificationPortDestroy(this[4]);
  result = 0;
  this[4] = 0;
  return result;
}

uint64_t MesaPlugIn::interruptAsyncCallout(MesaPlugIn *this, int a2, void *a3)
{
  v4 = *(this + 7);
  if (v4)
  {
    v4(*(this + 8), this + 40, 16);
  }

  reference[0] = 0;
  v12 = 0u;
  v13 = 0u;
  reference[1] = MesaPlugIn::_interruptAsyncCallout;
  v11 = this;
  input[0] = this + 40;
  input[1] = 16;
  outputCnt = 0;
  v5 = *(this + 6);
  MachPort = IONotificationPortGetMachPort(*(this + 4));
  return IOConnectCallAsyncScalarMethod(v5, 0x16u, MachPort, reference, 3u, input, 2u, 0, &outputCnt);
}

uint64_t MesaPlugIn::SetInterruptCallback(MesaPlugIn *this, void (*a2)(unint64_t, unsigned __int8 *, unint64_t), uint64_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "SetInterruptCallback";
    *&buf[12] = 2080;
    *&buf[14] = "SetInterruptCallback";
    *&buf[22] = 2048;
    v13 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  v6 = *(this + 4);
  if (!v6)
  {
    return 3758097084;
  }

  *buf = 0;
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  *&buf[8] = MesaPlugIn::_interruptAsyncCallout;
  *&buf[16] = this;
  input[0] = this + 40;
  input[1] = 16;
  outputCnt = 0;
  v7 = *(this + 6);
  MachPort = IONotificationPortGetMachPort(v6);
  result = IOConnectCallAsyncScalarMethod(v7, 0x16u, MachPort, buf, 3u, input, 2u, 0, &outputCnt);
  if (!result)
  {
    *(this + 7) = a2;
    *(this + 8) = a3;
  }

  return result;
}

uint64_t MesaPlugIn::ReadCaptureAsyncCallback(MesaPlugIn *this, uint64_t a2, void *a3)
{
  v4 = *(this + 9);
  if (v4)
  {
    v4(*(this + 10), a2, a3);
  }

  reference[0] = 0;
  v13 = 0u;
  v14 = 0u;
  reference[1] = MesaPlugIn::_ReadCaptureAsyncCallback;
  v12 = this;
  v5 = *(this + 12);
  input[0] = *(this + 11);
  input[1] = v5;
  outputCnt = 0;
  v6 = *(this + 6);
  MachPort = IONotificationPortGetMachPort(*(this + 4));
  return IOConnectCallAsyncScalarMethod(v6, 1u, MachPort, reference, 3u, input, 2u, 0, &outputCnt);
}

uint64_t MesaPlugIn::SetCaptureCallback(MesaPlugIn *this, void (*a2)(unint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "SetCaptureCallback";
    *&buf[12] = 2080;
    *&buf[14] = "SetCaptureCallback";
    *&buf[22] = 2048;
    v16 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  *(this + 9) = a2;
  *(this + 10) = a3;
  *(this + 11) = a4;
  *(this + 12) = a5;
  *buf = 0;
  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  *&buf[8] = MesaPlugIn::_ReadCaptureAsyncCallback;
  *&buf[16] = this;
  input[0] = a4;
  input[1] = a5;
  outputCnt = 0;
  v10 = *(this + 6);
  MachPort = IONotificationPortGetMachPort(*(this + 4));
  return IOConnectCallAsyncScalarMethod(v10, 1u, MachPort, buf, 3u, input, 2u, 0, &outputCnt);
}

uint64_t MesaPlugIn::SetPower(mach_port_t *this, unsigned int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v9 = "SetPower";
    v10 = 2080;
    v11 = "SetPower";
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  input = a2;
  v4 = IOConnectCallScalarMethod(this[6], 0x10u, &input, 1u, 0, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = mach_error_string(v4);
    *buf = 136315650;
    v9 = "SetPower";
    v10 = 2080;
    v11 = "SetPower";
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v4;
}

uint64_t MesaPlugIn::SetParameters(mach_port_t *this, unsigned __int8 *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "SetParameters";
    v11 = 2080;
    v12 = "SetParameters";
    v13 = 2048;
    v14 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v9, 0x20u);
  }

  v6 = IOConnectCallStructMethod(this[6], 0x11u, a2, a3, 0, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    v9 = 136315650;
    v10 = "SetParameters";
    v11 = 2080;
    v12 = "SetParameters";
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", &v9, 0x20u);
  }

  return v6;
}

uint64_t MesaPlugIn::TriggerESD(mach_port_t *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "TriggerESD";
    v7 = 2080;
    v8 = "TriggerESD";
    v9 = 2048;
    v10 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v5, 0x20u);
  }

  v2 = IOConnectCallScalarMethod(this[6], 0x12u, 0, 0, 0, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = mach_error_string(v2);
    v5 = 136315650;
    v6 = "TriggerESD";
    v7 = 2080;
    v8 = "TriggerESD";
    v9 = 2080;
    v10 = v3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", &v5, 0x20u);
  }

  return v2;
}

uint64_t MesaPlugIn::TriggerSPIError(mach_port_t *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "TriggerSPIError";
    v7 = 2080;
    v8 = "TriggerSPIError";
    v9 = 2048;
    v10 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v5, 0x20u);
  }

  v2 = IOConnectCallScalarMethod(this[6], 0x18u, 0, 0, 0, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = mach_error_string(v2);
    v5 = 136315650;
    v6 = "TriggerSPIError";
    v7 = 2080;
    v8 = "TriggerSPIError";
    v9 = 2080;
    v10 = v3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", &v5, 0x20u);
  }

  return v2;
}

uint64_t MesaPlugIn::ClearPatchOverride(mach_port_t *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "ClearPatchOverride";
    v7 = 2080;
    v8 = "ClearPatchOverride";
    v9 = 2048;
    v10 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", &v5, 0x20u);
  }

  v2 = IOConnectCallScalarMethod(this[6], 0x13u, 0, 0, 0, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = mach_error_string(v2);
    v5 = 136315650;
    v6 = "ClearPatchOverride";
    v7 = 2080;
    v8 = "ClearPatchOverride";
    v9 = 2080;
    v10 = v3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", &v5, 0x20u);
  }

  return v2;
}

uint64_t MesaPlugIn::StartFingerDetect(mach_port_t *this, unsigned __int8 *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "StartFingerDetect";
    v12 = 2080;
    v13 = "StartFingerDetect";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  outputStructCnt = a3;
  v6 = IOConnectCallStructMethod(this[6], 0x19u, 0, 0, a2, &outputStructCnt);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    *buf = 136315650;
    v11 = "StartFingerDetect";
    v12 = 2080;
    v13 = "StartFingerDetect";
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v6;
}

uint64_t MesaPlugIn::StartBurnIn(mach_port_t *this, unsigned __int8 *a2, size_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "StartBurnIn";
    v12 = 2080;
    v13 = "StartBurnIn";
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  outputStructCnt = a3;
  v6 = IOConnectCallStructMethod(this[6], 0x1Au, 0, 0, a2, &outputStructCnt);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v6);
    *buf = 136315650;
    v11 = "StartBurnIn";
    v12 = 2080;
    v13 = "StartBurnIn";
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v6;
}

uint64_t MesaPlugIn::StopSSHBHB(mach_port_t *this, char a2, unsigned __int8 *a3, size_t a4)
{
  inputStruct = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "StopSSHBHB";
    v14 = 2080;
    v15 = "StopSSHBHB";
    v16 = 2048;
    v17 = this;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %p", buf, 0x20u);
  }

  v10 = a4;
  v7 = IOConnectCallStructMethod(this[6], 0x1Bu, &inputStruct, 1uLL, a3, &v10);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = mach_error_string(v7);
    *buf = 136315650;
    v13 = "StopSSHBHB";
    v14 = 2080;
    v15 = "StopSSHBHB";
    v16 = 2080;
    v17 = v8;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: %s\n", buf, 0x20u);
  }

  return v7;
}

void operator delete()
{
    ;
  }
}
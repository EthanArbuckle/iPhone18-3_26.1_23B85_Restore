OSMetaClass *AppleUSBTopCaseHIDDriver::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleUSBTopCaseHIDDriver", &IOUSBHostHIDDevice::gMetaClass, 0x168u);
  result->__vftable = off_C790;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleUSBTopCaseHIDDriver", &IOUSBHostHIDDevice::gMetaClass, 0x168u);
  result->__vftable = off_C790;
  return result;
}

void AppleUSBTopCaseHIDDriver::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleUSBTopCaseHIDDriver::AppleUSBTopCaseHIDDriver(AppleUSBTopCaseHIDDriver *this, const OSMetaClass *a2)
{
  IOUSBHostHIDDevice::IOUSBHostHIDDevice(this, a2)->__vftable = off_C098;
}

{
  IOUSBHostHIDDevice::IOUSBHostHIDDevice(this, a2)->__vftable = off_C098;
}

void AppleUSBTopCaseHIDDriver::~AppleUSBTopCaseHIDDriver(IOUSBHostHIDDevice *this)
{
  IOUSBHostHIDDevice::~IOUSBHostHIDDevice(this);
}

{
  IOUSBHostHIDDevice::~IOUSBHostHIDDevice(this);
}

{
  IOUSBHostHIDDevice::~IOUSBHostHIDDevice(this);

  _OSObject_typed_operator_delete(&AppleUSBTopCaseHIDDriver_ktv, this, 360);
}

IOUSBHostHIDDevice *AppleUSBTopCaseHIDDriver::MetaClass::alloc(AppleUSBTopCaseHIDDriver::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOUSBHostHIDDevice::IOUSBHostHIDDevice(v1, &AppleUSBTopCaseHIDDriver::gMetaClass)->__vftable = off_C098;
  OSMetaClass::instanceConstructed(&AppleUSBTopCaseHIDDriver::gMetaClass);
  return v1;
}

void AppleUSBTopCaseHIDDriver::AppleUSBTopCaseHIDDriver(AppleUSBTopCaseHIDDriver *this)
{
  IOUSBHostHIDDevice::IOUSBHostHIDDevice(this, &AppleUSBTopCaseHIDDriver::gMetaClass)->__vftable = off_C098;
  OSMetaClass::instanceConstructed(&AppleUSBTopCaseHIDDriver::gMetaClass);
}

{
  IOUSBHostHIDDevice::IOUSBHostHIDDevice(this, &AppleUSBTopCaseHIDDriver::gMetaClass)->__vftable = off_C098;
  OSMetaClass::instanceConstructed(&AppleUSBTopCaseHIDDriver::gMetaClass);
}

uint64_t AppleUSBTopCaseHIDDriver::handleStart(AppleUSBTopCaseHIDDriver *this, IOService *a2)
{
  if (result)
  {
    v5 = OSMetaClassBase::safeMetaCast(a2, IOUSBHostInterface::metaClass);
    if (v5)
    {
      v6 = v5;
      v7 = (v5->__vftable[14].Dispatch)(v5);
      if ((v7 & 0xF) == 2)
      {
        v8 = 100;
      }

      else
      {
        v8 = 0;
      }

      if ((v7 & 0xF) == 2)
      {
        v9 = 3000;
      }

      else
      {
        v9 = 0;
      }

      v10 = (v6->__vftable[13].release)(v6, v9);
      if (v10)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s hostInterfaceProvider->setIdlePolicy() returned 0x%08X\n", "ATC", "AppleUSBTopCaseHIDDriver", "handleStart", v10);
        return 0;
      }

      else
      {
        v11 = *(this + 31);
        if (v11 && (v12 = (*(*v11 + 328))(v11, v8)) != 0)
        {
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s _interruptPipe->setIdlePolicy() returned 0x%08X\n", "ATC", "AppleUSBTopCaseHIDDriver", "handleStart", v12);
          return 0;
        }

        else
        {
          v13 = *(this + 32);
          if (v13 && (v14 = (*(*v13 + 328))(v13, v8)) != 0)
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s _interruptOutPipe->setIdlePolicy() returned 0x%08X\n", "ATC", "AppleUSBTopCaseHIDDriver", "handleStart", v14);
            return 0;
          }

          else
          {
            return 1;
          }
        }
      }
    }

    else
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Failed to cast provider to IOUSBHostInterface!\n", "ATC", "AppleUSBTopCaseHIDDriver", "handleStart");
      return 0;
    }
  }

  return result;
}

OSMetaClass *_GLOBAL__sub_I_AppleUSBTopCaseHIDDriver_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleUSBTopCaseHIDDriver::gMetaClass, "AppleUSBTopCaseHIDDriver", &IOUSBHostHIDDevice::gMetaClass, 0x168u);
  result->__vftable = off_C790;
  return result;
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
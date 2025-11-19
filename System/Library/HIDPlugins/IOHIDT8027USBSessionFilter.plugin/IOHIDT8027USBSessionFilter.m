CFTypeRef IOHIDT8027USBSessionFilter::getPropertyForClient(IOHIDT8027USBSessionFilter *this, CFTypeRef cf1, const void *a3)
{
  if (!CFEqual(cf1, @"SessionFilterDebug"))
  {
    return 0;
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  cf = 0xAAAAAAAAAAAAAAAALL;
  sub_29D443830(&v6, 0);
  IOHIDT8027USBSessionFilter::serialize(this, cf);
  if (cf)
  {
    v4 = CFRetain(cf);
  }

  else
  {
    v4 = 0;
  }

  sub_29D443954(&v6);
  return v4;
}

void IOHIDT8027USBSessionFilter::setPropertyForClient(NSObject *this, CFTypeRef cf1, __CFString *a3, const void *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (CFEqual(cf1, @"T8027USBAssertionTimeout"))
  {
    sub_29D444458(a3, this);
  }

  else if (CFEqual(cf1, @"T8027USBSetAssertion"))
  {
    v7 = _IOHIDLogCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = &stru_2A2420AE8;
      if (a3)
      {
        v8 = a3;
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_29D442000, v7, OS_LOG_TYPE_DEFAULT, "Setting T8027 USB assertion state %@\n", &v10, 0xCu);
    }

    if (*MEMORY[0x29EDB8F00] == a3)
    {
      IOHIDT8027USBSessionFilter::preventIdleSleepAssertion(this, @"SetProperty");
    }

    else if (LODWORD(this[10].isa))
    {
      IOHIDT8027USBSessionFilter::releaseIdleSleepAssertion(this);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

void IOHIDT8027USBSessionFilter::unregisterService(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    if (CFSetContainsValue(v3, a2))
    {
      CFSetRemoveValue(*(a1 + 56), a2);
      if (*(a1 + 84) == 1 && !CFSetGetCount(*(a1 + 56)))
      {
        v5 = _IOHIDLogCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&dword_29D442000, v5, OS_LOG_TYPE_DEFAULT, "Removing T8027USB assertion\n", v6, 2u);
        }

        IOHIDT8027USBSessionFilter::releaseIdleSleepAssertion(a1);
      }
    }
  }
}

uint64_t IOHIDT8027USBSessionFilter::filter(uint64_t a1, const void *a2, uint64_t a3)
{
  if (*(a1 + 56) && a2 && a3 && IOHIDEventConformsTo() && IOHIDEventGetIntegerValue() && CFSetContainsValue(*(a1 + 56), a2) && *(a1 + 84) == 1)
  {
    v7 = sub_29D4432FC();
    v8 = _IOHIDLogCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_29D442000, v8, OS_LOG_TYPE_INFO, "T8027USB HID activity\n", v9, 2u);
    }

    IOHIDT8027USBSessionFilter::preventIdleSleepAssertion(a1, v7);
    *(a1 + 86) = 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  return a3;
}

void *IOHIDT8027USBSessionFilter::registerService(uint64_t a1, const void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  sub_29D442E5C(&v14, "Transport");
  if (*(a1 + 56))
  {
    v4 = v15 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && (IOHIDServiceConformsTo() || IOHIDServiceConformsTo() || IOHIDServiceConformsTo()))
  {
    v5 = IOHIDServiceCopyProperty();
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID() && CFEqual(v6, @"USB"))
      {
        CFSetSetValue(*(a1 + 56), a2);
        if (*(a1 + 86))
        {
          v13 = _IOHIDLogCategory();
          sub_29D444364(v13);
        }

        else if (*(a1 + 84) == 1)
        {
          v8 = sub_29D4432FC();
          v9 = _IOHIDLogCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 72);
            *buf = 138412546;
            v17 = v8;
            v18 = 2048;
            v19 = v10;
            _os_log_impl(&dword_29D442000, v9, OS_LOG_TYPE_DEFAULT, "Creating T8027USB assertion for %@ (timeout:%llus)\n", buf, 0x16u);
          }

          IOHIDT8027USBSessionFilter::preventIdleSleepAssertion(a1, v8);
          if (v8)
          {
            CFRelease(v8);
          }
        }
      }

      CFRelease(v6);
    }
  }

  result = sub_29D442EC0(&v14);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_29D442E5C(void *a1, const char *a2)
{
  *a1 = &unk_2A2420868;
  a1[1] = CFStringCreateWithCString(0, a2, 0);
  return a1;
}

void *sub_29D442EC0(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A24208B0;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

IOHIDT8027USBSessionFilter *IOHIDT8027USBSessionFilterFactory(uint64_t a1, const void *a2)
{
  v3 = *MEMORY[0x29EDB8EF0];
  v4 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x7Fu, 0x1Au, 0x3Au, 0xE6u, 0x3Eu, 0x3Du, 0x47u, 0xAu, 0xBDu, 0x15u, 0xA2u, 0xDDu, 0x7Eu, 0x1Bu, 0xB7u, 0x19u);
  if (!CFEqual(a2, v4))
  {
    return 0;
  }

  v5 = MEMORY[0x29ED582A0](*MEMORY[0x29EDB8ED8], 88, 0x10E00401721D0F8, 0);
  v6 = CFUUIDGetConstantUUIDWithBytes(v3, 0xC8u, 0x52u, 0xD4u, 0xBFu, 0x2Cu, 0x29u, 0x4Du, 0xCBu, 0xBBu, 0x7Eu, 0x88u, 0x54u, 0x8Fu, 0x66u, 0xAAu, 0x41u);
  IOHIDT8027USBSessionFilter::IOHIDT8027USBSessionFilter(v5, v6);
  return v5;
}

uint64_t IOHIDT8027USBSessionFilter::_AddRef(IOHIDT8027USBSessionFilter *this, void *a2)
{
  v2 = (*(this + 4) + 1);
  *(this + 4) = v2;
  return v2;
}

void IOHIDT8027USBSessionFilter::IOHIDT8027USBSessionFilter(IOHIDT8027USBSessionFilter *this, CFTypeRef cf)
{
  *this = &IOHIDT8027USBSessionFilter::sIOHIDT8027USBSessionFilterFtbl;
  *(this + 1) = CFRetain(cf);
  *(this + 4) = 1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  sub_29D443684(this + 6, 0);
  *(this + 8) = 0;
  *(this + 9) = 7200;
  *(this + 20) = 0;
  *(this + 42) = 0;
  if (MGGetSInt32Answer() == 1)
  {
    *(this + 9) = 480;
  }

  CFPlugInAddInstanceForFactory(cf);
}

void IOHIDT8027USBSessionFilter::~IOHIDT8027USBSessionFilter(CFUUIDRef *this)
{
  CFPlugInRemoveInstanceForFactory(this[1]);
  CFRelease(this[1]);
  sub_29D44376C(this + 6);
}

uint64_t IOHIDT8027USBSessionFilter::QueryInterface(IOHIDT8027USBSessionFilter *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x19u, 0xD7u, 0x74u, 0x41u, 0xBBu, 0xC4u, 0x45u, 0x11u, 0x91u, 0x49u, 0x60u, 0x57u, 0x2Au, 0xBu, 1u, 0x5Cu);
  if (CFEqual(v5, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(v6, 0x3Du, 0xC3u, 0x5Au, 0xA6u, 0xD3u, 0x5Cu, 0x44u, 0x5Bu, 0x9Au, 0x59u, 0xCAu, 3u, 0xDAu, 0x40u, 0x8Bu, 0x97u), CFEqual(v5, v8)) || (v9 = CFUUIDGetConstantUUIDWithBytes(v6, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v5, v9)))
  {
    v10 = 0;
    ++*(this + 4);
  }

  else
  {
    this = 0;
    v10 = 2147483652;
  }

  *a3 = this;
  CFRelease(v5);
  return v10;
}

uint64_t IOHIDT8027USBSessionFilter::AddRef(IOHIDT8027USBSessionFilter *this)
{
  v1 = (*(this + 4) + 1);
  *(this + 4) = v1;
  return v1;
}

uint64_t IOHIDT8027USBSessionFilter::Release(IOHIDT8027USBSessionFilter *this)
{
  v1 = *(this + 4);
  v2 = (v1 - 1);
  *(this + 4) = v2;
  if (v1 == 1)
  {
    IOHIDT8027USBSessionFilter::~IOHIDT8027USBSessionFilter(this);
    MEMORY[0x29ED58560]();
  }

  return v2;
}

CFStringRef sub_29D4432FC()
{
  valuePtr = 0;
  v0 = IOHIDServiceCopyProperty();
  v1 = &stru_2A2420AE8;
  if (v0)
  {
    v2 = v0;
    v3 = CFGetTypeID(v0);
    if (v3 == CFStringGetTypeID())
    {
      v1 = v2;
    }

    CFRelease(v2);
  }

  RegistryID = IOHIDServiceGetRegistryID();
  if (RegistryID && (v5 = RegistryID, v6 = CFGetTypeID(RegistryID), v6 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr);
    v7 = valuePtr;
  }

  else
  {
    v7 = 0;
  }

  return CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"RegID:0x%llx %@", v7, v1);
}

void IOHIDT8027USBSessionFilter::releaseIdleSleepAssertion(IOHIDT8027USBSessionFilter *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    dispatch_source_cancel(v2);
    *(this + 8) = 0;
  }

  if (IOPMAssertionRelease(*(this + 20)))
  {
    sub_29D4443C0();
  }

  *(this + 20) = 0;
  *(this + 85) = 0;
}

void IOHIDT8027USBSessionFilter::unscheduleFromDispatchQueue(IOHIDT8027USBSessionFilter *this, dispatch_queue_s *a2)
{
  if (*(this + 20))
  {
    IOHIDT8027USBSessionFilter::releaseIdleSleepAssertion(this);
  }

  v3 = *(this + 10);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 10) = 0;
  }

  v4 = *(this + 11);
  if (v4)
  {
    IOObjectRelease(v4);
    *(this + 11) = 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    IONotificationPortDestroy(v5);
    *(this + 4) = 0;
  }
}

void *IOHIDT8027USBSessionFilter::serialize(IOHIDT8027USBSessionFilter *this, __CFDictionary *a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  theDict = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4439A4(&v13, a2, 0);
  v13 = &unk_2A24208D0;
  CFDictionarySetValue(theDict, @"Class", @"IOHIDT8027USBSessionFilter");
  v3 = *MEMORY[0x29EDB8F00];
  v4 = *MEMORY[0x29EDB8EF8];
  if (*(this + 84))
  {
    v5 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v5 = *MEMORY[0x29EDB8EF8];
  }

  if (v5)
  {
    CFDictionarySetValue(theDict, @"HasT8027USB", v5);
  }

  sub_29D443ACC(&v11, *(this + 9));
  if (value)
  {
    CFDictionarySetValue(theDict, @"AssertionTimeout", value);
  }

  sub_29D443A40(&v11);
  if (*(this + 85))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    CFDictionarySetValue(theDict, @"Asserting", v6);
  }

  Count = CFSetGetCount(*(this + 7));
  sub_29D443604(&v13, @"USBHIDServiceCount", Count);
  v8 = *(this + 20);
  if (v8)
  {
    v9 = IOPMAssertionCopyProperties(v8);
    if (v9)
    {
      CFDictionarySetValue(theDict, @"AssertionProperties", v9);
      CFRelease(v9);
    }
  }

  return sub_29D443954(&v13);
}

void sub_29D4435D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_29D443A40(&a9);
  sub_29D443954(&a11);
  _Unwind_Resume(a1);
}

void *sub_29D443604(uint64_t a1, const void *a2, uint64_t a3)
{
  sub_29D443B80(&v6, a3);
  if (a2 && value)
  {
    CFDictionarySetValue(*(a1 + 8), a2, value);
  }

  return sub_29D443A40(&v6);
}

void *sub_29D443684(void *a1, int a2)
{
  *a1 = &unk_2A24207E8;
  a1[1] = 0;
  a1[1] = CFSetCreateMutable(*MEMORY[0x29EDB8ED8], a2, MEMORY[0x29EDB9030]);
  return a1;
}

void sub_29D4436F8(void *a1)
{
  sub_29D44376C(a1);

  JUMPOUT(0x29ED58560);
}

void sub_29D443734(void *a1)
{
  sub_29D44376C(a1);

  JUMPOUT(0x29ED58560);
}

void *sub_29D44376C(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A2420848;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_29D4437BC(void *a1)
{
  sub_29D442EC0(a1);

  JUMPOUT(0x29ED58560);
}

void sub_29D4437F8(void *a1)
{
  sub_29D442EC0(a1);

  JUMPOUT(0x29ED58560);
}

void *sub_29D443830(void *a1, int a2)
{
  *a1 = &unk_2A24208D0;
  a1[1] = CFDictionaryCreateMutable(0, a2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  return a1;
}

void sub_29D4438A4(void *a1)
{
  sub_29D443954(a1);

  JUMPOUT(0x29ED58560);
}

void sub_29D4438E0(void *a1)
{
  sub_29D443954(a1);

  JUMPOUT(0x29ED58560);
}

void sub_29D44391C(void *a1)
{
  sub_29D443954(a1);

  JUMPOUT(0x29ED58560);
}

void *sub_29D443954(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A2420950;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29D4439A4(void *a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = &unk_2A2420950;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A2420930;
  return a1;
}

void *sub_29D443A40(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A2420970;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_29D443A94(void *a1)
{
  sub_29D443A40(a1);

  JUMPOUT(0x29ED58560);
}

void *sub_29D443ACC(void *a1, uint64_t a2)
{
  valuePtr = a2;
  *a1 = &unk_2A24209A0;
  a1[1] = 0;
  a1[1] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
  return a1;
}

void sub_29D443B48(void *a1)
{
  sub_29D443A40(a1);

  JUMPOUT(0x29ED58560);
}

void *sub_29D443B80(void *a1, uint64_t a2)
{
  valuePtr = a2;
  *a1 = &unk_2A24209A0;
  a1[1] = 0;
  a1[1] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
  return a1;
}

void sub_29D443C38(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

BOOL sub_29D443C54(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void IOHIDT8027USBSessionFilter::preventIdleSleepAssertion(NSObject *this, const __CFString *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  valuePtr = 255;
  v3 = &this[10];
  if (LODWORD(this[10].isa))
  {
    v4 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, &valuePtr);
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = v4;
    if (IOPMAssertionSetProperty(*v3, @"AssertLevel", v4))
    {
      v14 = _IOHIDLogCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        sub_29D443C24();
        _os_log_error_impl(&dword_29D442000, v14, OS_LOG_TYPE_ERROR, "%s error turning on assertion 0x%x\n", buf, 0x12u);
      }

      goto LABEL_5;
    }
  }

  else
  {
    if (!IOHIDT8027USBSessionFilter::initTimer(this))
    {
      goto LABEL_6;
    }

    v10 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", @"IOHIDT8027USBAssertion", a2, 0, 0, 0.0, 0, v3);
    v5 = 0;
    if (v10)
    {
      v11 = _IOHIDLogCategory();
      if (sub_29D443C54(v11))
      {
        *buf = 136315394;
        sub_29D443C24();
        sub_29D443C38(&dword_29D442000, v12, v13, "%s error creating assertion 0x%x\n", buf);
      }

      goto LABEL_6;
    }
  }

  isa = this[8].isa;
  v7 = dispatch_time(0, 1000000000 * this[9].isa);
  dispatch_source_set_timer(isa, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  BYTE5(this[10].isa) = 1;
  if (v5)
  {
LABEL_5:
    CFRelease(v5);
  }

LABEL_6:
  v8 = *MEMORY[0x29EDCA608];
}

void IOHIDT8027USBSessionFilter::scheduleWithDispatchQueue(IOHIDT8027USBSessionFilter *this, dispatch_queue_s *a2)
{
  keys[2] = *MEMORY[0x29EDCA608];
  keys[0] = @"IONameMatch";
  keys[1] = @"usb-repeater";
  values[0] = @"usb-drd,t8130";
  values[1] = @"prrt";
  *(this + 3) = a2;
  v3 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
  *(this + 4) = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  IOServiceNameMatching("usb-drd,t8027");
  sub_29D443BFC();
  if (IOServiceAddMatchingNotification(v4, v5, v6, v7, this, this + 10))
  {
    v14 = _IOHIDLogCategory();
    if (!sub_29D443C54(v14))
    {
      goto LABEL_11;
    }

    v18[0] = 136315394;
    sub_29D443C10();
LABEL_16:
    sub_29D443C38(&dword_29D442000, v15, v16, "%s adding matching notification 0x%x\n", v18);
    goto LABEL_11;
  }

  if (!*(this + 10) || !CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]))
  {
    goto LABEL_11;
  }

  v8 = *(this + 4);
  sub_29D443BFC();
  if (IOServiceAddMatchingNotification(v9, v10, v11, v12, this, this + 11))
  {
    v17 = _IOHIDLogCategory();
    if (!sub_29D443C54(v17))
    {
      goto LABEL_11;
    }

    v18[0] = 136315394;
    sub_29D443C10();
    goto LABEL_16;
  }

  if (*(this + 11))
  {
    IONotificationPortSetDispatchQueue(*(this + 4), *(this + 3));
    if (IOIteratorNext(*(this + 10)))
    {
      sub_29D443C6C();
    }

    if (IOIteratorNext(*(this + 11)))
    {
      sub_29D443C6C();
    }
  }

LABEL_11:
  v13 = *MEMORY[0x29EDCA608];
}

void IOHIDT8027USBSessionFilter::_serviceNotificationCallback(IOHIDT8027USBSessionFilter *this, io_iterator_t iterator)
{
  if (IOIteratorNext(iterator))
  {
    sub_29D443C6C();
  }
}

void IOHIDT8027USBSessionFilter::serviceNotificationCallback(IOHIDT8027USBSessionFilter *this, io_iterator_t iterator)
{
  if (IOIteratorNext(iterator))
  {
    sub_29D443C6C();
  }
}

uint64_t IOHIDT8027USBSessionFilter::initTimer(NSObject *this)
{
  v13 = *MEMORY[0x29EDCA608];
  if (this[8].isa)
  {
    goto LABEL_5;
  }

  isa = this[3].isa;
  if (isa)
  {
    v3 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 1uLL, isa);
    if (v3)
    {
      v4 = v3;
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 0x40000000;
      handler[2] = sub_29D443674;
      handler[3] = &unk_29F34F420;
      handler[4] = this;
      dispatch_source_set_event_handler(v3, handler);
      v9[0] = MEMORY[0x29EDCA5F8];
      v9[1] = 0x40000000;
      v9[2] = sub_29D44367C;
      v9[3] = &unk_29F34F440;
      v9[4] = v4;
      dispatch_source_set_cancel_handler(v4, v9);
      dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_activate(v4);
      this[8].isa = v4;
LABEL_5:
      result = 1;
      goto LABEL_6;
    }
  }

  v7 = _IOHIDLogCategory();
  v8 = sub_29D443C54(v7);
  result = 0;
  if (v8)
  {
    *buf = 136315138;
    v12 = "BOOL IOHIDT8027USBSessionFilter::initTimer()";
    _os_log_error_impl(&dword_29D442000, this, OS_LOG_TYPE_ERROR, "%s error\n", buf, 0xCu);
    result = 0;
  }

LABEL_6:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void IOHIDT8027USBSessionFilter::timerHandler(IOHIDT8027USBSessionFilter *this)
{
  v11 = *MEMORY[0x29EDCA608];
  valuePtr = 0;
  if (*(this + 20))
  {
    v2 = _IOHIDLogCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29D442000, v2, OS_LOG_TYPE_DEFAULT, "T8027USB HID assertion timeout\n", buf, 2u);
    }

    v3 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      if (IOPMAssertionSetProperty(*(this + 20), @"AssertLevel", v3))
      {
        v6 = _IOHIDLogCategory();
        if (sub_29D443C54(v6))
        {
          *buf = 136315394;
          sub_29D443C24();
          sub_29D443C38(&dword_29D442000, v7, v8, "%s error turning off assertion 0x%x\n", buf);
        }
      }

      else
      {
        *(this + 85) = 256;
      }

      CFRelease(v4);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_29D444364(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_29D442000, a1, OS_LOG_TYPE_DEFAULT, "T8027 assertion previously timed out, not taking assertion\n", v2, 2u);
  }
}

void sub_29D4443C0()
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = _IOHIDLogCategory();
  if (sub_29D443C54(v0))
  {
    v4[0] = 136315394;
    sub_29D443C10();
    sub_29D443C38(&dword_29D442000, v2, v3, "%s error releasing assertion 0x%x\n", v4);
  }

  v1 = *MEMORY[0x29EDCA608];
}

void sub_29D444458(__CFString *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  v4 = _IOHIDLogCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 72);
    v6 = &stru_2A2420AE8;
    if (a1)
    {
      v6 = a1;
    }

    *buf = 134218242;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_29D442000, v4, OS_LOG_TYPE_DEFAULT, "Setting T8027 USB assertion timeout from %llu to %@\n", buf, 0x16u);
  }

  if (a1)
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
      *(a2 + 72) = valuePtr;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void operator delete()
{
    ;
  }
}
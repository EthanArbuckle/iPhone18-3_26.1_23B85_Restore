void IOHIDEventProcessor::unscheduleFromDispatchQueue(IOHIDEventProcessor *this, void *a2, dispatch_queue_s *a3)
{
  if (*(this + 3) == a2)
  {
    v4 = *(this + 20);
    if (*v4)
    {
      dispatch_source_cancel(*v4);
    }

    *(v4 + 8) = 0;
    *(this + 3) = 0;
  }
}

void IOHIDEventProcessor::setPropertyForClient(IOHIDEventProcessor *this, CFStringRef theString1, const void *a3, const void *a4)
{
  valuePtr = 0;
  if (theString1 && a3)
  {
    if (CFStringCompare(theString1, @"PressCountTrackingEnabled", 0) == kCFCompareEqualTo)
    {
      *(this + 64) = *MEMORY[0x29EDB8F00] == a3;
      v7 = _IOHIDLogCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_29D423D10(this + 64);
      }

      if (*(this + 64) == 1 && !*(this + 18))
      {
        operator new();
      }
    }

    if (CFStringCompare(theString1, @"PressCountUsagePairs", 0) == kCFCompareEqualTo)
    {
      v8 = *(this + 9);
      if (v8)
      {
        CFRelease(v8);
      }

      *(this + 9) = a3;
      CFRetain(a3);
      v9 = _IOHIDLogCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_29D423D94(this + 9);
      }
    }

    if (CFStringCompare(theString1, @"PressCountDoublePressTimeout", 0) == kCFCompareEqualTo)
    {
      CFNumberGetValue(a3, kCFNumberLongLongType, &valuePtr);
      *(this + 10) = valuePtr;
      v10 = _IOHIDLogCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_29D423DFC(this + 10);
      }
    }

    if (CFStringCompare(theString1, @"PressCountTriplePressTimeout", 0) == kCFCompareEqualTo)
    {
      CFNumberGetValue(a3, kCFNumberLongLongType, &valuePtr);
      *(this + 11) = valuePtr;
      v11 = _IOHIDLogCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_29D423E64(this + 11);
      }
    }

    if (CFStringCompare(theString1, @"LongPressTimeout", 0) == kCFCompareEqualTo)
    {
      CFNumberGetValue(a3, kCFNumberLongLongType, &valuePtr);
      *(this + 16) = valuePtr;
      v12 = _IOHIDLogCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_29D423ECC(this + 16);
      }
    }

    if (CFStringCompare(theString1, @"AlternateLongPressHandling", 0) == kCFCompareEqualTo)
    {
      *(this + 120) = *MEMORY[0x29EDB8F00] == a3;
      v13 = _IOHIDLogCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_29D423F34(this + 120);
      }
    }

    if (CFStringCompare(theString1, @"TapTrackingEnabled", 0) == kCFCompareEqualTo)
    {
      *(this + 96) = *MEMORY[0x29EDB8F00] == a3;
      v14 = _IOHIDLogCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_29D423FB8(this + 96);
      }

      if (*(this + 96) == 1 && !*(this + 19))
      {
        operator new();
      }
    }

    if (CFStringCompare(theString1, @"DoubleTapTimeout", 0) == kCFCompareEqualTo)
    {
      CFNumberGetValue(a3, kCFNumberLongLongType, &valuePtr);
      *(this + 13) = valuePtr;
      v15 = _IOHIDLogCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_29D42403C(this + 13);
      }
    }

    if (CFStringCompare(theString1, @"TripleTapTimeout", 0) == kCFCompareEqualTo)
    {
      CFNumberGetValue(a3, kCFNumberLongLongType, &valuePtr);
      *(this + 14) = valuePtr;
      v16 = (this + 112);
      v17 = _IOHIDLogCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_29D4240A4(v16);
      }
    }
  }
}

uint64_t IOHIDEventProcessor::filter(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 24))
  {
    goto LABEL_45;
  }

  Type = IOHIDEventGetType();
  v5 = Type;
  if (Type == 3)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      goto LABEL_45;
    }

    v32 = 144;
    v6 = 88;
    v7 = 80;
  }

  else
  {
    if (Type != 29 || *(a1 + 96) != 1)
    {
      goto LABEL_45;
    }

    v32 = 152;
    v6 = 112;
    v7 = 104;
  }

  v8 = *(a1 + v7);
  v9 = *(a1 + v6);
  IntegerValue = IOHIDEventGetIntegerValue();
  v11 = IOHIDEventGetIntegerValue();
  v12 = _IOHIDLogCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(valuePtr) = 67109632;
    HIDWORD(valuePtr) = v5;
    v34 = 1024;
    v35 = IntegerValue;
    v36 = 1024;
    v37 = v11;
    _os_log_debug_impl(&dword_29D420000, v12, OS_LOG_TYPE_DEBUG, "filter: type = %d p = %d u = %d\n", &valuePtr, 0x14u);
  }

  if (v5 != 3)
  {
    goto LABEL_16;
  }

  v13 = *(a1 + 72);
  if (!v13)
  {
    goto LABEL_16;
  }

  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {
    goto LABEL_22;
  }

  v15 = Count;
  v31 = v8;
  v16 = 0;
  for (i = 0; i != v15; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, &valuePtr);
    v16 |= (v11 | (IntegerValue << 16)) == valuePtr;
  }

  v8 = v31;
  if ((v16 & 1) == 0)
  {
LABEL_22:
    v21 = _IOHIDLogCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_29D4241BC();
    }
  }

  else
  {
LABEL_16:
    if ((IOHIDEventGetPhase() & 4) != 0)
    {
      v20 = _IOHIDLogCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_29D4241F0();
      }
    }

    else
    {
      if (IOHIDEventGetIntegerValue())
      {
        v19 = _IOHIDLogCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_29D424224();
        }

        goto LABEL_45;
      }

      v22 = *(a1 + 136);
      if (v22)
      {
        while (*(v22 + 44) != v5 || *(v22 + 52) != v11 || *(v22 + 48) != IntegerValue)
        {
          v22 = *(v22 + 16);
          if (!v22)
          {
            goto LABEL_29;
          }
        }

LABEL_36:
        v25 = IOHIDEventGetType();
        if (v25 == 29)
        {
          IOHIDEventGetFloatValue();
          v26 = v27 == 1.0;
        }

        else
        {
          if (v25 != 3)
          {
            v28 = 0;
LABEL_44:
            Event::stateHandler(v22, v28 ^ 1, a2);
            goto LABEL_45;
          }

          v26 = IOHIDEventGetIntegerValue() == 1;
        }

        v28 = v26;
        goto LABEL_44;
      }

LABEL_29:
      v22 = *(a1 + v32);
      if (v22)
      {
        *(a1 + v32) = *(v22 + 16);
        if (v5 == 3)
        {
          v23 = *(a1 + 128);
        }

        else
        {
          v23 = 0;
        }

        Event::init(v22, a1, *(a1 + 160), v5, IntegerValue, v11, v8, v9, v23, *(a1 + 120));
        *(v22 + 16) = *(a1 + 136);
        *(a1 + 136) = v22;
        goto LABEL_36;
      }

      v24 = _IOHIDLogCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_29D424258();
      }
    }
  }

LABEL_45:
  v29 = *MEMORY[0x29EDCA608];
  return a2;
}

CFTypeRef IOHIDEventProcessor::copyPropertyForClient(IOHIDEventProcessor *this, CFTypeRef cf1, const void *a3)
{
  if (!CFEqual(cf1, @"ServiceFilterDebug"))
  {
    return 0;
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  cf = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4238C8(&v6, 0);
  if (cf)
  {
    IOHIDEventProcessor::serialize(this, cf);
    v4 = CFRetain(cf);
  }

  else
  {
    v4 = 0;
  }

  sub_29D4239EC(&v6);
  return v4;
}

void *IOHIDEventProcessor::setEventCallback(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  return result;
}

{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  return result;
}

uint64_t IOHIDEventProcessor::Release(IOHIDEventProcessor *this)
{
  v1 = *(this + 4);
  v2 = (v1 - 1);
  *(this + 4) = v2;
  if (v1 == 1)
  {
    IOHIDEventProcessor::~IOHIDEventProcessor(this);
    MEMORY[0x29ED56F40]();
  }

  return v2;
}

void IOHIDEventProcessor::~IOHIDEventProcessor(IOHIDEventProcessor *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    do
    {
      v4 = v3[2];
      (*(*v3 + 8))(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(this + 19);
  if (v5)
  {
    do
    {
      v6 = v5[2];
      (*(*v5 + 8))(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 17);
  if (v7)
  {
    do
    {
      v8 = v7[2];
      (*(*v7 + 8))(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(this + 20);
  if (v9)
  {
    MEMORY[0x29ED56F40](v9, 0x20C40960023A9);
  }

  CFPlugInRemoveInstanceForFactory(*(this + 1));
  CFRelease(*(this + 1));
}

uint64_t IOHIDEventProcessorFactory(uint64_t a1, const void *a2)
{
  v3 = *MEMORY[0x29EDB8EF0];
  v4 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x6Bu, 3u, 0x40u, 0xD3u, 0x57u, 0x98u, 0x40u, 0x64u, 0xAAu, 0x17u, 0x92u, 4u, 0xC7u, 0xB0u, 0x6Fu, 0xFDu);
  if (CFEqual(a2, v4))
  {
    v5 = MEMORY[0x29ED56D50](*MEMORY[0x29EDB8ED8], 168, 0x10E004022AA7AC2, 0);
    v6 = CFUUIDGetConstantUUIDWithBytes(v3, 0x7Du, 0xCFu, 0x18u, 0xB5u, 7u, 0xBEu, 0x4Fu, 0xF5u, 0x87u, 0xCFu, 0x44u, 0xB3u, 0xC1u, 0x7Cu, 0x92u, 0x16u);
    IOHIDEventProcessor::IOHIDEventProcessor(v5, v6);
  }

  return 0;
}

void IOHIDEventProcessor::IOHIDEventProcessor(IOHIDEventProcessor *this, CFTypeRef cf)
{
  *this = &IOHIDEventProcessor::sIOHIDEventProcessorFtbl;
  *(this + 1) = CFRetain(cf);
  *(this + 4) = 1;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 49) = 0u;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 96) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 120) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  operator new();
}

uint64_t IOHIDEventProcessor::QueryInterface(IOHIDEventProcessor *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 5u, 5u, 0xD7u, 0x8Du, 0x4Fu, 0x4Eu, 0x4Cu, 0x41u, 0xA3u, 0xA6u, 0xC7u, 0xA7u, 0x7Bu, 0x41u, 0xBDu, 0xACu);
  if (CFEqual(v5, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(v6, 0xC7u, 0x10u, 0x95u, 0x1Du, 0x18u, 0x40u, 0x45u, 0x6Eu, 0x82u, 0xE7u, 0xFCu, 0xA1u, 0xA0u, 0xFAu, 0x7Fu, 0xE4u), CFEqual(v5, v8)) || (v9 = CFUUIDGetConstantUUIDWithBytes(v6, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v5, v9)))
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

uint64_t IOHIDEventProcessor::match(uint64_t a1, uint64_t a2)
{
  v4 = IOHIDServiceCopyProperty();
  if (v4)
  {
    v5 = v4;
    valuePtr = 0;
    CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr)
    {
      *(a1 + 20) = 200;
      *(a1 + 32) = a2;
    }

    CFRelease(v5);
  }

  else
  {
    *(a1 + 20) = 200;
    *(a1 + 32) = a2;
  }

  v6 = _IOHIDLogCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_29D42410C(a1, a2, v6);
  }

  return *(a1 + 20);
}

void IOHIDEventProcessor::open(IOHIDEventProcessor *a1)
{
  for (i = 0; i != 9; ++i)
  {
    v3 = off_29F34EE10[i];
    v4 = IOHIDServiceCopyProperty();
    if (v4)
    {
      v6 = v4;
      IOHIDEventProcessor::setPropertyForClient(a1, v3, v4, v5);
      CFRelease(v6);
    }
  }
}

void Timer::init(Timer *this, dispatch_queue_t queue)
{
  *(this + 1) = queue;
  if (!*this)
  {
    handler[5] = v5;
    handler[6] = v4;
    handler[9] = v2;
    handler[10] = v3;
    v7 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 1uLL, queue);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = sub_29D4236C8;
    handler[3] = &unk_29F34EED8;
    handler[4] = this;
    dispatch_source_set_event_handler(v7, handler);
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 0x40000000;
    v8[2] = sub_29D421204;
    v8[3] = &unk_29F34EEF8;
    v8[4] = v7;
    dispatch_source_set_cancel_handler(v7, v8);
    dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    *this = v7;
    dispatch_resume(v7);
  }
}

uint64_t IOHIDEventProcessor::filterCopyEvent(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t IOHIDEventProcessor::AddRef(IOHIDEventProcessor *this, void *a2)
{
  v2 = (*(this + 4) + 1);
  *(this + 4) = v2;
  return v2;
}

void Timer::Timer(Timer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

uint64_t IOHIDEventProcessor::AddRef(IOHIDEventProcessor *this)
{
  v1 = (*(this + 4) + 1);
  *(this + 4) = v1;
  return v1;
}

void *IOHIDEventProcessor::serialize(IOHIDEventProcessor *this, __CFDictionary *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  theDict = 0xAAAAAAAAAAAAAAAALL;
  sub_29D423A3C(&v5, a2, 0);
  v5 = &unk_2A241DDC0;
  CFDictionarySetValue(theDict, @"Class", @"IOHIDEventProcessor");
  sub_29D421FDC(&v5, @"PressCountTrackingEnabled", *(this + 64));
  v3 = *(this + 9);
  if (v3)
  {
    CFDictionarySetValue(theDict, @"PressCountUsagePairs", v3);
  }

  sub_29D42204C(&v5, @"PressCountDoublePressTimeout", *(this + 10));
  sub_29D42204C(&v5, @"PressCountTriplePressTimeout", *(this + 11));
  sub_29D42204C(&v5, @"LongPressTimeout", *(this + 16));
  sub_29D421FDC(&v5, @"AlternateLongPressHandling", *(this + 120));
  sub_29D42204C(&v5, @"TapTrackingEnabled", *(this + 11));
  sub_29D42204C(&v5, @"DoubleTapTimeout", *(this + 13));
  sub_29D42204C(&v5, @"TripleTapTimeout", *(this + 14));
  sub_29D42204C(&v5, @"MatchScore", *(this + 5));
  return sub_29D4239EC(&v5);
}

void Event::init(Event *this, IOHIDEventProcessor *a2, Timer *a3, int a4, int a5, int a6, unint64_t a7, unint64_t a8, unint64_t a9, BOOL a10)
{
  v22 = *MEMORY[0x29EDCA608];
  *(this + 11) = a4;
  *(this + 12) = a5;
  *(this + 13) = a6;
  *(this + 10) = a7;
  *(this + 11) = a8;
  *(this + 12) = 0;
  *(this + 13) = a9;
  *(this + 40) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 7) = a3;
  *(this + 8) = 0;
  *(this + 70) = 0;
  *(this + 78) = a10;
  if (a9)
  {
    if (a9 == a7)
    {
      a7 = a9 + 1;
      *(this + 10) = a9 + 1;
    }

    if (a9 == a8)
    {
      a8 = a9 + 1;
      *(this + 11) = a9 + 1;
    }
  }

  if (a7 > a9 || a8 > a9)
  {
    v11 = _IOHIDLogCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(this + 13);
      v14 = *(this + 10);
      v15 = *(this + 11);
      v16 = 134218496;
      v17 = v13;
      v18 = 2048;
      v19 = v14;
      v20 = 2048;
      v21 = v15;
      _os_log_debug_impl(&dword_29D420000, v11, OS_LOG_TYPE_DEBUG, "long %llu second %llu third %llu\n\n", &v16, 0x20u);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

BOOL Event::stateHandler(uint64_t a1, unsigned int a2, uint64_t a3)
{
  Timer::checkEventTimeouts(*(a1 + 56));
  v6 = *(&_stateMap[3 * *(a1 + 64)] + a2);
  v7 = _IOHIDLogCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_29D424298((a1 + 64), a2);
    if (v6)
    {
LABEL_3:
      v6(a1, a3);
      v8 = _IOHIDLogCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_29D4243B4((a1 + 64));
      }

      return v6 != 0;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  v9 = _IOHIDLogCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_29D424330((a1 + 64));
  }

  return v6 != 0;
}

void IOHIDEventProcessor::unscheduleFromDispatchQueue(IOHIDEventProcessor *this, dispatch_queue_s *a2)
{
  if (*(this + 3) == a2)
  {
    v3 = *(this + 20);
    if (*v3)
    {
      dispatch_source_cancel(*v3);
    }

    *(v3 + 8) = 0;
    *(this + 3) = 0;
  }
}

void Timer::cancel(NSObject **this, dispatch_queue_s *a2)
{
  v3 = *this;
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  this[1] = 0;
}

void IOHIDEventProcessor::dispatchEvent(uint64_t a1, CFTypeRef cf, int a3)
{
  if (*(a1 + 24))
  {
    if (a3)
    {
      CFRetain(cf);
      v5 = *(a1 + 24);
      v7[0] = MEMORY[0x29EDCA5F8];
      v7[1] = 0x40000000;
      v7[2] = sub_29D421E84;
      v7[3] = &unk_29F34EE58;
      v7[4] = a1;
      v7[5] = cf;
      dispatch_async(v5, v7);
    }

    else
    {
      v6 = _IOHIDLogCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_29D42442C();
      }

      (*(a1 + 40))(*(a1 + 48), *(a1 + 56), *(a1 + 32), cf, 0);
    }
  }
}

void sub_29D421E84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _IOHIDLogCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_29D424494(a1);
  }

  (*(v2 + 40))(*(v2 + 48), *(v2 + 56), *(v2 + 32), *(a1 + 40), 0);
  CFRelease(*(a1 + 40));
}

void IOHIDEventProcessor::returnToFreePool(IOHIDEventProcessor *this, Event *a2)
{
  v4 = *(this + 17);
  v5 = _IOHIDLogCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_29D424500();
  }

  v6 = *(a2 + 11);
  v7 = (this + 144);
  v8 = this + 152;
  if (v6 != 29)
  {
    v8 = 0;
  }

  if (v6 != 3)
  {
    v7 = v8;
  }

  if (v4)
  {
    v9 = 0;
    while (*(a2 + 12) != *(v4 + 48) || *(a2 + 13) != *(v4 + 52) || v6 != *(v4 + 44))
    {
      v9 = v4;
      v4 = *(v4 + 16);
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    if (v9)
    {
      *(v9 + 16) = *(a2 + 2);
    }

    else
    {
      *(this + 17) = *(*(this + 17) + 16);
    }
  }

LABEL_13:
  if (v7)
  {
    *(a2 + 2) = *v7;
    *v7 = a2;
  }
}

void *sub_29D421FDC(uint64_t a1, const void *a2, char a3)
{
  sub_29D423ADC(&v6, a3);
  if (a2 && value)
  {
    CFDictionarySetValue(*(a1 + 8), a2, value);
  }

  return sub_29D423B58(&v6);
}

void *sub_29D42204C(uint64_t a1, const void *a2, uint64_t a3)
{
  sub_29D423C1C(&v6, a3);
  if (a2 && value)
  {
    CFDictionarySetValue(*(a1 + 8), a2, value);
  }

  return sub_29D423B58(&v6);
}

void Event::Event(Event *this)
{
  *this = &unk_2A241DC00;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 1;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 75) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
}

void Timer::checkEventTimeouts(Timer *this)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(this + 2);
  v3 = mach_absolute_time();
  if (v2)
  {
    v4 = v3;
    do
    {
      v5 = v2;
      v2 = *(v2 + 24);
      if (*(v5 + 8) && *(v5 + 40) != 1)
      {
        if (*(v5 + 8) < (v4 - *(v5 + 96)) * dword_2A1A130C8 / dword_2A1A130CC / 0x3E8)
        {
          v6 = _IOHIDLogCategory();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v7 = *(v5 + 8);
            v8 = (v4 - *(v5 + 96)) * dword_2A1A130C8 / dword_2A1A130CC / 0x3E8;
            *buf = 134218240;
            v11 = v5;
            v12 = 2048;
            v13 = v8 - v7;
            _os_log_debug_impl(&dword_29D420000, v6, OS_LOG_TYPE_DEBUG, "%p past deadline %lld us\n", buf, 0x16u);
          }

          Timer::removeEvent(this, v5);
          Event::stateHandler(v5, 2, 0);
        }
      }

      else
      {
        Timer::removeEvent(this, v5);
      }
    }

    while (v2);
  }

  Timer::updateTimeout(this);
  v9 = *MEMORY[0x29EDCA608];
}

uint64_t ButtonEvent::setMultiEventCount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = _IOHIDLogCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218496;
    v10 = a1;
    v11 = 2048;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    _os_log_debug_impl(&dword_29D420000, v6, OS_LOG_TYPE_DEBUG, "%p %p setting multi count = %d\n", &v9, 0x1Cu);
  }

  result = IOHIDEventSetIntegerValue();
  if (!a3)
  {
    LODWORD(a3) = *(a1 + 72);
  }

  *(a1 + 72) = a3;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ButtonEvent::createSyntheticEvent(ButtonEvent *this, int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  mach_absolute_time();
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = *(this + 12);
  v6 = *(this + 13);
  v7 = *(this + 16);
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  if (KeyboardEvent)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    (*(*this + 24))(this, KeyboardEvent, *(this + 18));
    IOHIDEventGetPhase();
    IOHIDEventSetPhase();
    if (*(this + 78) == 1)
    {
      v10 = *(this + 77);
      IOHIDEventSetIntegerValue();
    }

    *(this + 76) = 1;
  }

  v11 = _IOHIDLogCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(this + 11);
    v15[0] = 67109632;
    v15[1] = a2;
    v16 = 2048;
    v17 = KeyboardEvent;
    v18 = 1024;
    v19 = v14;
    _os_log_debug_impl(&dword_29D420000, v11, OS_LOG_TYPE_DEBUG, "created terminal(%d) event %p type %d\n", v15, 0x18u);
  }

  v12 = *MEMORY[0x29EDCA608];
  return KeyboardEvent;
}

void ButtonEvent::NoneEnter(Timer **a1, uint64_t a2)
{
  if (a2)
  {
    Timer::registerEventTimeout(a1[7], a1, 0);
    (*(*a1 + 3))(a1, a2, *(a1 + 18));
  }

  *(a1 + 40) = 1;
  IOHIDEventProcessor::returnToFreePool(a1[4], a1);
  *(a1 + 16) = 0;
}

void Timer::registerEventTimeout(Timer *this, Event *a2, uint64_t a3)
{
  v6 = _IOHIDLogCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_29D424568();
  }

  *(a2 + 1) = a3;
  Timer::removeEvent(this, a2);
  if (a3)
  {
    *(a2 + 3) = *(this + 2);
    *(this + 2) = a2;
  }

  Timer::updateTimeout(this);
}

void ButtonEvent::FDEnter(Event *a1, uint64_t a2)
{
  *(a1 + 12) = IOHIDEventGetTimeStamp();
  IOHIDEventGetPhase();
  IOHIDEventSetPhase();
  (*(*a1 + 24))(a1, a2, 1);
  *(a1 + 77) = 0;
  *(a1 + 16) = 1;
  v4 = *(a1 + 10);
  if (!v4)
  {
    (*(*a1 + 96))(a1, a2);
    v4 = *(a1 + 10);
  }

  v5 = *(a1 + 13);
  if (v5 - 1 >= v4)
  {
    v6 = 7;
  }

  else
  {
    v6 = 8;
  }

  if (v5 - 1 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a1 + 13);
  }

  *(a1 + 17) = v6;
  v8 = *(a1 + 7);

  Timer::registerEventTimeout(v8, a1, v7);
}

uint64_t ButtonEvent::FUEnter(_DWORD *a1, uint64_t a2)
{
  result = (*(*a1 + 24))(a1, a2, 1);
  a1[16] = 2;
  return result;
}

void ButtonEvent::SDEnter(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = IOHIDEventGetTimeStamp();
  (*(*a1 + 24))(a1, a2, 2);
  *(a1 + 64) = 3;
  *(a1 + 77) = 0;
  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = *(a1 + 104);
    if (v5 - 1 >= v4)
    {
      *(a1 + 68) = 7;
      v6 = *(a1 + 56);
      v7 = a1;
    }

    else
    {
      *(a1 + 68) = 8;
      v6 = *(a1 + 56);
      v7 = a1;
      v4 = v5;
    }

    Timer::registerEventTimeout(v6, v7, v4);
  }

  else
  {
    v8 = *(*a1 + 96);

    v8(a1, a2);
  }
}

uint64_t ButtonEvent::SUEnter(_DWORD *a1, uint64_t a2)
{
  result = (*(*a1 + 24))(a1, a2, 2);
  a1[16] = 4;
  return result;
}

uint64_t ButtonEvent::TDEnter(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = IOHIDEventGetTimeStamp();
  (*(*a1 + 24))(a1, a2, 3);
  *(a1 + 64) = 5;
  *(a1 + 77) = 0;
  v4 = *(*a1 + 96);

  return v4(a1, a2);
}

uint64_t ButtonEvent::TUEnter(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 24))(a1, a2, 3);
  v4 = *(*a1 + 32);

  return v4(a1, a2);
}

_DWORD *ButtonEvent::TOEnter(_DWORD *result)
{
  v1 = result[17];
  if (v1 == 8)
  {
    return (*(*result + 104))();
  }

  if (v1 == 7)
  {
    return (*(*result + 96))();
  }

  return result;
}

void ButtonEvent::TEEnter(_DWORD *a1, uint64_t a2)
{
  v4 = a1[16];
  if (v4 > 8 || ((1 << v4) & 0x12A) == 0)
  {
    v8 = 0;
    v6 = 0;
    goto LABEL_18;
  }

  v6 = *(a1 + 13);
  if (v6)
  {
    if (v4 != 5)
    {
      if (v4 == 3)
      {
        v7 = *(a1 + 11);
LABEL_12:
        v9 = v6 >= v7;
        v10 = v6 - v7;
        if (v9)
        {
          v6 = v10;
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_16;
      }

      if (v4 == 1)
      {
        v7 = *(a1 + 10);
        goto LABEL_12;
      }

      v6 = 0;
    }

LABEL_16:
    a1[17] = 8;
  }

  v8 = 1;
LABEL_18:
  v11 = (*(*a1 + 16))(a1, 1);
  IOHIDEventProcessor::dispatchEvent(*(a1 + 4), v11, a2 != 0);
  *(a1 + 12) = IOHIDEventGetTimeStamp();
  CFRelease(v11);
  Timer::registerEventTimeout(*(a1 + 7), a1, v6);
  if (v8)
  {
    a1[16] = 7;
  }

  else
  {
    v12 = *(*a1 + 32);

    v12(a1, 0);
  }
}

void ButtonEvent::LPEnter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  switch(v3)
  {
    case 2u:
      v5 = 80;
LABEL_7:
      v6 = *(a1 + v5);
      v7 = *(a1 + 104);
      v8 = v6 >= v7;
      v9 = v6 - v7;
      if (v8)
      {
        v4 = v9;
      }

      else
      {
        v4 = 0;
      }

LABEL_10:
      *(a1 + 68) = 7;
      *(a1 + 96) = mach_absolute_time();
      v10 = *(a1 + 56);

      Timer::registerEventTimeout(v10, a1, v4);
      return;
    case 4u:
      v5 = 88;
      goto LABEL_7;
    case 6u:
      v4 = 0;
      goto LABEL_10;
  }

  v12 = (*(*a1 + 16))(a1, 0);
  IOHIDEventSetIntegerValue();
  IOHIDEventSetIntegerValue();
  (*(*a1 + 24))(a1, v12, *(a1 + 72));
  IOHIDEventProcessor::dispatchEvent(*(a1 + 32), v12, a2 != 0);
  *(a1 + 77) = 1;
  if ((*(a1 + 78) & 1) == 0)
  {
    if (((v3 < 6) & v3) != 0)
    {
      *(a1 + 64) = 8;
      (*(*a1 + 96))(a1, v12);
    }

    goto LABEL_23;
  }

  v13 = *(a1 + 64);
  if (v13 == 3)
  {
    v14 = *(a1 + 88);
  }

  else
  {
    if (v13 != 1)
    {
LABEL_21:
      *(a1 + 64) = 8;
      (*(*a1 + 96))(a1, v12);
      v16 = 0;
      goto LABEL_22;
    }

    v14 = *(a1 + 80);
  }

  v15 = *(a1 + 104);
  v16 = v14 - v15;
  if (v14 <= v15)
  {
    goto LABEL_21;
  }

LABEL_22:
  *(a1 + 68) = 7;
  *(a1 + 96) = mach_absolute_time();
  Timer::registerEventTimeout(*(a1 + 56), a1, v16);
LABEL_23:

  CFRelease(v12);
}

uint64_t TapEvent::setMultiEventCount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = _IOHIDLogCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218496;
    v10 = a1;
    v11 = 2048;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    _os_log_debug_impl(&dword_29D420000, v6, OS_LOG_TYPE_DEBUG, "%p %p setting multi count = %d\n", &v9, 0x1Cu);
  }

  result = IOHIDEventSetIntegerValue();
  if (!a3)
  {
    LODWORD(a3) = *(a1 + 72);
  }

  *(a1 + 72) = a3;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t TapEvent::createSyntheticEvent(TapEvent *this, int a2)
{
  v18 = *MEMORY[0x29EDCA608];
  mach_absolute_time();
  v4 = *MEMORY[0x29EDB8ED8];
  *(this + 16);
  BiometricEvent = IOHIDEventCreateBiometricEvent();
  if (BiometricEvent)
  {
    v6 = *(this + 12);
    IOHIDEventSetIntegerValue();
    v7 = *(this + 13);
    IOHIDEventSetIntegerValue();
    if (a2)
    {
      (*(*this + 24))(this, BiometricEvent, *(this + 18));
      IOHIDEventGetPhase();
      IOHIDEventSetPhase();
      if (*(this + 78) == 1)
      {
        v8 = *(this + 77);
        IOHIDEventSetIntegerValue();
      }

      *(this + 76) = 1;
    }
  }

  v9 = _IOHIDLogCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(this + 11);
    v13[0] = 67109632;
    v13[1] = a2;
    v14 = 2048;
    v15 = BiometricEvent;
    v16 = 1024;
    v17 = v12;
    _os_log_debug_impl(&dword_29D420000, v9, OS_LOG_TYPE_DEBUG, "created terminal(%d) event %p type %d\n", v13, 0x18u);
  }

  v10 = *MEMORY[0x29EDCA608];
  return BiometricEvent;
}

void TapEvent::NoneEnter(Timer **a1, uint64_t a2)
{
  if (a2)
  {
    Timer::registerEventTimeout(a1[7], a1, 0);
    (*(*a1 + 3))(a1, a2, *(a1 + 18));
  }

  *(a1 + 40) = 1;
  IOHIDEventProcessor::returnToFreePool(a1[4], a1);
  *(a1 + 16) = 0;
}

uint64_t TapEvent::FDEnter(_DWORD *a1, uint64_t a2)
{
  result = (*(*a1 + 24))(a1, a2, 0);
  a1[16] = 1;
  return result;
}

void TapEvent::FUEnter(Event *a1, uint64_t a2)
{
  *(a1 + 12) = IOHIDEventGetTimeStamp();
  IOHIDEventGetPhase();
  IOHIDEventSetPhase();
  (*(*a1 + 24))(a1, a2, 1);
  *(a1 + 16) = 2;
  v4 = *(a1 + 10);
  if (v4)
  {
    v5 = *(a1 + 7);

    Timer::registerEventTimeout(v5, a1, v4);
  }

  else
  {
    v6 = *(*a1 + 96);

    v6(a1, a2);
  }
}

uint64_t TapEvent::SDEnter(_DWORD *a1, uint64_t a2)
{
  result = (*(*a1 + 24))(a1, a2, 1);
  a1[16] = 3;
  return result;
}

void TapEvent::SUEnter(Event *a1, uint64_t a2)
{
  *(a1 + 12) = IOHIDEventGetTimeStamp();
  (*(*a1 + 24))(a1, a2, 2);
  *(a1 + 16) = 4;
  v4 = *(a1 + 11);
  if (v4)
  {
    v5 = *(a1 + 7);

    Timer::registerEventTimeout(v5, a1, v4);
  }

  else
  {
    v6 = *(*a1 + 96);

    v6(a1, a2);
  }
}

uint64_t TapEvent::TDEnter(_DWORD *a1, uint64_t a2)
{
  result = (*(*a1 + 24))(a1, a2, 2);
  a1[16] = 5;
  return result;
}

uint64_t TapEvent::TUEnter(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = IOHIDEventGetTimeStamp();
  (*(*a1 + 24))(a1, a2, 3);
  *(a1 + 64) = 6;
  v4 = *(*a1 + 96);

  return v4(a1, a2);
}

void TapEvent::TEEnter(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = (*(*a1 + 16))(a1, 1);
  IOHIDEventProcessor::dispatchEvent(a1[4], v5, a2 != 0);
  CFRelease(v5);
  Timer::registerEventTimeout(a1[7], a1, 0);
  if (v4 <= 5 && (v4 & 1) != 0)
  {
    *(a1 + 16) = 1;
  }

  else
  {
    v6 = *(*a1 + 32);

    v6(a1, 0);
  }
}

void Timer::timeoutHandler(Timer *this)
{
  v2 = _IOHIDLogCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_29D4245E4();
  }

  Timer::checkEventTimeouts(this);
}

uint64_t Timer::removeEvent(uint64_t this, Event *a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 16);
    while (*(a2 + 12) != *(v4 + 48) || *(a2 + 13) != *(v4 + 52) || *(a2 + 11) != *(v4 + 44))
    {
      v3 = v4;
      v4 = *(v4 + 24);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    if (v3)
    {
      *(v3 + 24) = *(a2 + 3);
    }

    else
    {
      *(this + 16) = *(v2 + 24);
    }
  }

LABEL_7:
  *(a2 + 3) = 0;
  return this;
}

uint64_t Timer::insertEvent(Timer *this, Event *a2)
{
  result = Timer::removeEvent(this, a2);
  *(a2 + 3) = *(this + 2);
  *(this + 2) = a2;
  return result;
}

void Timer::updateTimeout(Timer *this)
{
  v2 = mach_absolute_time();
  v3 = *(this + 2);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v4 >= (v3[1] - (v2 - v3[12]) * dword_2A1A130C8 / dword_2A1A130CC / 0x3E8))
    {
      v4 = v3[1] - (v2 - v3[12]) * dword_2A1A130C8 / dword_2A1A130CC / 0x3E8;
    }

    v3 = v3[3];
  }

  while (v3);
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = *this;
    v6 = dispatch_time(0, 1000 * (v4 & ~(v4 >> 63)));
    v5 = v8;
    v7 = -1;
  }

  else
  {
LABEL_7:
    v5 = *this;
    v6 = -1;
    v7 = 0;
  }

  dispatch_source_set_timer(v5, v6, v7, 0);
}

void *sub_29D4238C8(void *a1, int a2)
{
  *a1 = &unk_2A241DDC0;
  a1[1] = CFDictionaryCreateMutable(0, a2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  return a1;
}

void sub_29D42393C(void *a1)
{
  sub_29D4239EC(a1);

  JUMPOUT(0x29ED56F40);
}

void sub_29D423978(void *a1)
{
  sub_29D4239EC(a1);

  JUMPOUT(0x29ED56F40);
}

void sub_29D4239B4(void *a1)
{
  sub_29D4239EC(a1);

  JUMPOUT(0x29ED56F40);
}

void *sub_29D4239EC(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241DE40;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29D423A3C(void *a1, CFTypeRef cf, char a3)
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

  *a1 = &unk_2A241DE40;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A241DE20;
  return a1;
}

void *sub_29D423ADC(void *a1, char a2)
{
  valuePtr = a2;
  *a1 = &unk_2A241DE60;
  a1[1] = 0;
  a1[1] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt8Type, &valuePtr);
  return a1;
}

void *sub_29D423B58(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241DEA8;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_29D423BA8(void *a1)
{
  sub_29D423B58(a1);

  JUMPOUT(0x29ED56F40);
}

void sub_29D423BE4(void *a1)
{
  sub_29D423B58(a1);

  JUMPOUT(0x29ED56F40);
}

void *sub_29D423C1C(void *a1, uint64_t a2)
{
  valuePtr = a2;
  *a1 = &unk_2A241DE60;
  a1[1] = 0;
  a1[1] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
  return a1;
}

void sub_29D423C98(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t *sub_29D423CC0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_29D423CDC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_29D423D10(_BYTE *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  *a1;
  sub_29D423CB4();
  sub_29D423C98(&dword_29D420000, v1, v2, "Press Count %s\n", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29D423D94(uint64_t *a1)
{
  sub_29D423CC0(a1, *MEMORY[0x29EDCA608]);
  sub_29D423CB4();
  sub_29D423C98(&dword_29D420000, v1, v2, "Press Count Usage Pairs %@\n", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29D423DFC(uint64_t *a1)
{
  sub_29D423CC0(a1, *MEMORY[0x29EDCA608]);
  sub_29D423CB4();
  sub_29D423C98(&dword_29D420000, v1, v2, "doublePressTimeout now %llu\n", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29D423E64(uint64_t *a1)
{
  sub_29D423CC0(a1, *MEMORY[0x29EDCA608]);
  sub_29D423CB4();
  sub_29D423C98(&dword_29D420000, v1, v2, "triplePressTimeout now %llu\n", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29D423ECC(uint64_t *a1)
{
  sub_29D423CC0(a1, *MEMORY[0x29EDCA608]);
  sub_29D423CB4();
  sub_29D423C98(&dword_29D420000, v1, v2, "LongPress now %llu\n", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29D423F34(_BYTE *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  *a1;
  sub_29D423CB4();
  sub_29D423C98(&dword_29D420000, v1, v2, "Alternate Long Press %s\n", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29D423FB8(_BYTE *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  *a1;
  sub_29D423CB4();
  sub_29D423C98(&dword_29D420000, v1, v2, "Tap Count %s\n", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29D42403C(uint64_t *a1)
{
  sub_29D423CC0(a1, *MEMORY[0x29EDCA608]);
  sub_29D423CB4();
  sub_29D423C98(&dword_29D420000, v1, v2, "double tap timeout now %llu\n", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29D4240A4(uint64_t *a1)
{
  sub_29D423CC0(a1, *MEMORY[0x29EDCA608]);
  sub_29D423CB4();
  sub_29D423C98(&dword_29D420000, v1, v2, "triple tap timeout now %llu\n", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29D42410C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  RegistryID = IOHIDServiceGetRegistryID();
  v6 = *(a1 + 20);
  v8 = 134218498;
  v9 = a1;
  v10 = 2112;
  v11 = RegistryID;
  v12 = 1024;
  v13 = v6;
  _os_log_debug_impl(&dword_29D420000, a3, OS_LOG_TYPE_DEBUG, "(%p) for ServiceID %@ with score %d\n", &v8, 0x1Cu);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29D424298(unsigned int *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = off_29F34EE78[*a1];
  v3 = off_29F34EEC0[a2];
  sub_29D423CB4();
  sub_29D423CCC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x29EDCA608];
}

void sub_29D424330(int *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = *a1;
  sub_29D423CCC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29D4243B4(unsigned int *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = off_29F34EE78[*a1];
  sub_29D423CB4();
  sub_29D423C98(&dword_29D420000, v2, v3, "new state = %s\n", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x29EDCA608];
}

void sub_29D42442C()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29D423CF8();
  sub_29D423C98(&dword_29D420000, v0, v1, "synchronously dispatching event = %p\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29D424494(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  sub_29D423CB4();
  sub_29D423C98(&dword_29D420000, v2, v3, "asynchronously dispatching event = %p\n", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x29EDCA608];
}

void sub_29D424500()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29D423CF8();
  sub_29D423C98(&dword_29D420000, v0, v1, "returning event %p to free pool\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29D424568()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29D423CF8();
  sub_29D423CCC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29D4245E4()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29D423CF8();
  sub_29D423C98(&dword_29D420000, v0, v1, "%p timeout occurred\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
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
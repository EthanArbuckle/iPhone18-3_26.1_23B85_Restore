CFTypeRef IOHIDEventSystemStatistics::getPropertyForClient(IOHIDEventSystemStatistics *this, CFTypeRef cf1, const void *a3)
{
  if (!CFEqual(cf1, @"SessionFilterDebug"))
  {
    return 0;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  sub_29D427A40(&v15, 0);
  CFDictionarySetValue(v16, @"Class", @"IOHIDEventSystemStatistics");
  if (*(this + 16))
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3802000000;
    v12 = sub_29D42833C;
    v13 = sub_29D4283A4;
    v14[0] = 0xAAAAAAAAAAAAAAAALL;
    v14[1] = 0xAAAAAAAAAAAAAAAALL;
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    sub_29D4287D0(v14, Mutable, 1);
    v14[0] = &unk_2A241E310;
    v5 = *(this + 16);
    _IOHIDCFSetApplyBlock();
    v6 = v10[6];
    if (v6)
    {
      CFDictionarySetValue(v16, @"KeyboardServices", v6);
    }

    _Block_object_dispose(&v9, 8);
    sub_29D428780(v14);
  }

  v7 = CFRetain(v16);
  sub_29D427CE4(&v15);
  return v7;
}

void sub_29D426A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  sub_29D428780(v6);
  sub_29D427CE4((v7 - 32));
  _Unwind_Resume(a1);
}

uint64_t IOHIDEventSystemStatistics::filter(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a3 || !*(a1 + 48))
  {
    return a3;
  }

  if (IOHIDEventSystemStatistics::collectKeyStats(a1, a2))
  {
    goto LABEL_4;
  }

  if (IOHIDEventGetType() != 3 || IOHIDEventGetIntegerValue() != 12)
  {
    if (*(a1 + 144) != a2 || IOHIDEventGetType() != 6)
    {
      goto LABEL_18;
    }

    IntegerValue = IOHIDEventGetIntegerValue();
    if (IntegerValue < 1)
    {
      if ((IntegerValue & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      *(a1 + 116) += IntegerValue;
    }

    else
    {
      *(a1 + 112) += IntegerValue;
    }

LABEL_16:
    *(a1 + 120) = 1;
LABEL_4:
    dispatch_source_merge_data(*(a1 + 48), 1uLL);
    goto LABEL_18;
  }

  if (IOHIDEventGetIntegerValue())
  {
    v6 = IOHIDEventGetIntegerValue();
    if (v6 == 48)
    {
      if (*(a1 + 24))
      {
        ++*(a1 + 76);
      }

      else
      {
        ++*(a1 + 72);
      }

      goto LABEL_4;
    }

    if (v6 == 64)
    {
      if (*(a1 + 24))
      {
        ++*(a1 + 68);
      }

      else
      {
        ++*(a1 + 64);
      }

      if (*(a1 + 152) != a2 || !*(a1 + 144))
      {
        goto LABEL_4;
      }

      ++*(a1 + 108);
      goto LABEL_16;
    }
  }

LABEL_18:
  if (a2)
  {
    v8 = *(a1 + 136);
    if (v8)
    {
      if (CFDictionaryContainsKey(v8, a2))
      {
        Value = CFDictionaryGetValue(*(a1 + 136), a2);
        v10 = CFGetTypeID(Value);
        if (v10 == CFDictionaryGetTypeID())
        {
          v11 = IOHIDEventGetTimeStampOfType() * *(a1 + 56) / *(a1 + 60);
          v41 = v11;
          v12 = IOHIDEventGetIntegerValue();
          v40 = v12;
          v13 = IOHIDEventGetIntegerValue();
          v14 = IOHIDEventGetIntegerValue();
          v15 = IOHIDEventGetIntegerValue();
          v16 = IOHIDEventGetIntegerValue();
          Phase = IOHIDEventGetPhase();
          v18 = CFDictionaryGetValue(Value, @"MultiPressUsages");
          if (v18)
          {
            valuePtr[0] = v15 | (v14 << 16);
            v19 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, valuePtr);
            v20 = CFGetTypeID(v18);
            if (v20 == CFArrayGetTypeID())
            {
              v42.length = CFArrayGetCount(v18);
              v42.location = 0;
              LOBYTE(v18) = CFArrayContainsValue(v18, v42, v19) == 0;
            }

            else
            {
              LOBYTE(v18) = 0;
            }

            CFRelease(v19);
          }

          if (v13 && (v18 & 1) == 0 && (Phase & 4) == 0 && !v16)
          {
            v39 = 0;
            v38 = 0;
            v21 = CFDictionaryGetValue(Value, @"PressCount");
            if (v21)
            {
              v22 = v21;
              v23 = CFGetTypeID(v21);
              if (v23 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v22, kCFNumberLongLongType, &v38);
              }
            }

            v24 = CFDictionaryGetValue(Value, @"MultiPressTime");
            if (v24 && (v25 = v24, v26 = CFGetTypeID(v24), v26 == CFNumberGetTypeID()))
            {
              CFNumberGetValue(v25, kCFNumberLongLongType, &v39);
              v27 = v39;
            }

            else
            {
              v27 = 0;
            }

            v28 = v11 - v27;
            if (v38)
            {
              v29 = v27 == 0;
            }

            else
            {
              v29 = 1;
            }

            v30 = !v29;
            if (v29 || v38 != v12)
            {
              if (v38 >= v12)
              {
                v30 = 0;
              }

              if (v30 != 1)
              {
                goto LABEL_58;
              }

              v32 = _IOHIDLogCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                sub_29D428D18();
              }
            }

            else
            {
              if (v28 > 0x773593FF)
              {
LABEL_58:
                v33 = *MEMORY[0x29EDB8ED8];
                v34 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberLongLongType, &v40);
                v35 = CFNumberCreate(v33, kCFNumberLongLongType, &v41);
                CFDictionarySetValue(Value, @"PressCount", v34);
                CFDictionarySetValue(Value, @"MultiPressTime", v35);
                CFRelease(v34);
                CFRelease(v35);
                return a3;
              }

              v31 = _IOHIDLogCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                sub_29D428D88();
              }
            }

            valuePtr[0] = 0;
            valuePtr[1] = valuePtr;
            valuePtr[2] = 0x2000000000;
            valuePtr[3] = v28;
            analytics_send_event_lazy();
            _Block_object_dispose(valuePtr, 8);
            goto LABEL_58;
          }
        }
      }
    }
  }

  return a3;
}

void sub_29D427020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void IOHIDEventSystemStatistics::unregisterService(uint64_t a1, void *value)
{
  v4 = *(a1 + 128);
  if (v4)
  {
    if (CFSetGetValue(v4, value))
    {
      CFSetRemoveValue(*(a1 + 128), value);
      v5 = _IOHIDLogCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_29D4289E0();
      }
    }
  }

  v6 = *(a1 + 136);
  if (v6 && CFDictionaryContainsKey(v6, value))
  {
    CFDictionaryRemoveValue(*(a1 + 136), value);
    v7 = _IOHIDLogCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_29D428A14(value, v7);
    }
  }
}

uint64_t IOHIDEventSystemStatistics::collectKeyStats(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!*(a1 + 128) || IOHIDEventGetType() != 3)
  {
    return 0;
  }

  result = IOHIDEventGetIntegerValue();
  if (result)
  {
    result = CFSetGetValue(*(a1 + 128), a2);
    if (result)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      v6 = IOHIDEventGetIntegerValue();
      if (IntegerValue == 7 && (v6 - 4) <= 0x19)
      {
        v7 = _IOHIDLogCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_29D428CE4();
        }

        ++*(a1 + 84);
        return 1;
      }

      if (IntegerValue == 7)
      {
        if ((v6 - 30) < 0xA)
        {
LABEL_18:
          v8 = _IOHIDLogCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            sub_29D428CB0();
          }

          ++*(a1 + 88);
          return 1;
        }

        if (v6 <= 0x38)
        {
          if (((1 << v6) & 0x1FBE00000000000) != 0)
          {
            goto LABEL_18;
          }

          if (v6 == 44)
          {
            v10 = _IOHIDLogCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              sub_29D428BE0();
            }

            ++*(a1 + 92);
            return 1;
          }
        }

        if ((v6 - 79) <= 3)
        {
          v11 = _IOHIDLogCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            sub_29D428C7C();
          }

          ++*(a1 + 96);
          return 1;
        }

        if ((v6 - 224) > 7 || v6 == 228)
        {
          result = 1;
          if (v6 <= 0x39 && ((1 << v6) & 0x2000D0000000000) != 0)
          {
            v12 = _IOHIDLogCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              sub_29D428C48();
            }

            ++*(a1 + 100);
            return 1;
          }

          return result;
        }
      }

      else
      {
        result = 1;
        if (IntegerValue != 12 || v6 != 669)
        {
          return result;
        }
      }

      v9 = _IOHIDLogCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_29D428C14();
      }

      ++*(a1 + 104);
      return 1;
    }
  }

  return result;
}

void IOHIDEventSystemStatistics::registerService(uint64_t a1, const void *a2)
{
  IOHIDEventSystemStatistics::registerKeyboardService(a1, a2);
  IOHIDEventSystemStatistics::registerMultiPressService(a1, a2);
  IOHIDEventSystemStatistics::registerCrownService(a1, a2);

  IOHIDEventSystemStatistics::registerButtonService(a1, a2);
}

void IOHIDEventSystemStatistics::registerKeyboardService(uint64_t a1, const void *a2)
{
  if (IOHIDServiceConformsTo())
  {
    valuePtr = 0;
    Property = IOHIDServiceGetProperty();
    if (Property)
    {
      v5 = Property;
      v6 = CFGetTypeID(Property);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
        if (valuePtr == 1452)
        {
          v7 = IOHIDServiceGetProperty();
          if (v7)
          {
            v8 = v7;
            v9 = CFGetTypeID(v7);
            if (v9 == CFStringGetTypeID())
            {
              if (CFEqual(v8, @"AID"))
              {
                ++*(a1 + 80);
                v10 = *(a1 + 128);
                if (v10)
                {
                  CFSetAddValue(v10, a2);
                }

                v11 = _IOHIDLogCategory();
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
                {
                  sub_29D4288AC();
                }
              }
            }
          }
        }
      }
    }
  }
}

void IOHIDEventSystemStatistics::registerMultiPressService(uint64_t a1, const void *a2)
{
  Property = IOHIDServiceGetProperty();
  if (Property)
  {
    v5 = Property;
    v6 = CFGetTypeID(Property);
    if (v6 == CFBooleanGetTypeID())
    {
      if (v5 != *MEMORY[0x29EDB8F00])
      {
        return;
      }
    }

    else
    {
      v7 = CFGetTypeID(v5);
      if (v7 != CFNumberGetTypeID())
      {
        return;
      }

      valuePtr = 0;
      CFNumberGetValue(v5, kCFNumberLongLongType, &valuePtr);
      if (!valuePtr)
      {
        return;
      }
    }

    if (*(a1 + 136))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v9 = Mutable;
        v10 = IOHIDServiceGetProperty();
        if (v10)
        {
          CFDictionarySetValue(v9, @"MultiPressUsages", v10);
        }

        CFDictionarySetValue(*(a1 + 136), a2, v9);
        v11 = _IOHIDLogCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_29D4288E0(a2, v10, v11);
        }

        CFRelease(v9);
      }
    }
  }
}

void IOHIDEventSystemStatistics::registerCrownService(uint64_t a1, uint64_t a2)
{
  if (IOHIDServiceConformsTo())
  {
    *(a1 + 144) = a2;
    v4 = _IOHIDLogCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_29D428978();
    }
  }
}

void IOHIDEventSystemStatistics::registerButtonService(uint64_t a1, uint64_t a2)
{
  if (IOHIDServiceConformsTo())
  {
    *(a1 + 152) = a2;
    v4 = _IOHIDLogCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_29D4289AC();
    }
  }
}

void IOHIDEventSystemStatistics::handlePendingStats(IOHIDEventSystemStatistics *this)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3802000000;
  v12[3] = sub_29D4283F8;
  v12[5] = 0;
  v12[6] = 0;
  v12[4] = nullsub_1;
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x4802000000;
  v10[2] = sub_29D428408;
  v10[3] = nullsub_2;
  memset(&v10[4], 0, 24);
  v11 = 0;
  v7 = 0;
  v8[0] = &v7;
  v8[1] = 0x3802000000;
  v8[2] = sub_29D428420;
  v8[4] = 0;
  v8[5] = 0;
  v8[3] = nullsub_3;
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_29D427A40(v6, 0);
  v2 = *(this + 5);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_29D427AB4;
  block[3] = &unk_29F34EFB8;
  block[4] = v12;
  block[5] = &v9;
  block[6] = &v7;
  block[7] = this;
  dispatch_sync(v2, block);
  analytics_send_event_lazy();
  v3 = _IOHIDLogCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_29D428A9C(v10);
  }

  analytics_send_event_lazy();
  if (*(v8[0] + 52) == 1)
  {
    v4 = _IOHIDLogCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_29D428B4C(v8);
    }

    analytics_send_event_lazy();
  }

  sub_29D427CE4(v6);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v12, 8);
}

void sub_29D4279F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_29D427CE4(&a32);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Block_object_dispose((v34 - 120), 8);
  _Unwind_Resume(a1);
}

void *sub_29D427A40(void *a1, int a2)
{
  *a1 = &unk_2A241E290;
  a1[1] = CFDictionaryCreateMutable(0, a2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  return a1;
}

void sub_29D427AB4(void *a1)
{
  v2 = a1[7];
  *(*(a1[4] + 8) + 40) = v2[4];
  bzero(v2 + 4, 0x10uLL);
  v3 = *(a1[5] + 8);
  v4 = v2[5];
  v5 = *(v2 + 12);
  *(v3 + 64) = *(v2 + 26);
  *(v3 + 56) = v5;
  *(v3 + 40) = v4;
  bzero(v2 + 5, 0x1CuLL);
  *(*(a1[6] + 8) + 40) = *(v2 + 108);

  bzero(v2 + 108, 0x10uLL);
}

xpc_object_t sub_29D427B48(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "homeButtonWakeCount", *(*(*(a1 + 32) + 8) + 40));
  xpc_dictionary_set_uint64(v2, "homeButtonActionCount", *(*(*(a1 + 32) + 8) + 44));
  xpc_dictionary_set_uint64(v2, "powerButtonWakeCount", *(*(*(a1 + 32) + 8) + 48));
  xpc_dictionary_set_uint64(v2, "powerButtonSleepCount", *(*(*(a1 + 32) + 8) + 52));
  return v2;
}

xpc_object_t sub_29D427BEC(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "enumerationCount", *(*(*(a1 + 32) + 8) + 40));
  xpc_dictionary_set_uint64(v2, "characterKeyCount", *(*(*(a1 + 32) + 8) + 44));
  xpc_dictionary_set_uint64(v2, "symbolKeyCount", *(*(*(a1 + 32) + 8) + 48));
  xpc_dictionary_set_uint64(v2, "spacebarKeyCount", *(*(*(a1 + 32) + 8) + 52));
  xpc_dictionary_set_uint64(v2, "arrowKeyCount", *(*(*(a1 + 32) + 8) + 56));
  xpc_dictionary_set_uint64(v2, "cursorKeyCount", *(*(*(a1 + 32) + 8) + 60));
  xpc_dictionary_set_uint64(v2, "modifierKeyCount", *(*(*(a1 + 32) + 8) + 64));
  return v2;
}

void *sub_29D427CE4(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241E2F0;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

IOHIDEventSystemStatistics *IOHIDEventSystemStatisticsFactory(uint64_t a1, const void *a2)
{
  v3 = *MEMORY[0x29EDB8EF0];
  v4 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x7Fu, 0x1Au, 0x3Au, 0xE6u, 0x3Eu, 0x3Du, 0x47u, 0xAu, 0xBDu, 0x15u, 0xA2u, 0xDDu, 0x7Eu, 0x1Bu, 0xB7u, 0x19u);
  if (!CFEqual(a2, v4))
  {
    return 0;
  }

  v5 = MEMORY[0x29ED57060](*MEMORY[0x29EDB8ED8], 168, 0x106004053378A11, 0);
  v6 = CFUUIDGetConstantUUIDWithBytes(v3, 7u, 0x2Bu, 0xC0u, 0x77u, 0xE9u, 0x84u, 0x4Cu, 0x2Au, 0xBBu, 0x72u, 0xD4u, 0x76u, 0x9Cu, 0xE4u, 0x4Fu, 0xAFu);
  IOHIDEventSystemStatistics::IOHIDEventSystemStatistics(v5, v6);
  return v5;
}

uint64_t IOHIDEventSystemStatistics::AddRef(IOHIDEventSystemStatistics *this, void *a2)
{
  v2 = (*(this + 4) + 1);
  *(this + 4) = v2;
  return v2;
}

void IOHIDEventSystemStatistics::IOHIDEventSystemStatistics(IOHIDEventSystemStatistics *this, CFTypeRef cf)
{
  *this = &IOHIDEventSystemStatistics::sIOHIDEventSystemStatisticsFtbl;
  *(this + 1) = CFRetain(cf);
  *(this + 4) = 1;
  *(this + 3) = 1;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  bzero(this + 64, 0x10uLL);
  bzero(this + 80, 0x1CuLL);
  bzero(this + 108, 0x10uLL);
  CFPlugInAddInstanceForFactory(cf);
}

uint64_t IOHIDEventSystemStatistics::QueryInterface(IOHIDEventSystemStatistics *this, CFUUIDBytes a2, void **a3)
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

uint64_t IOHIDEventSystemStatistics::AddRef(IOHIDEventSystemStatistics *this)
{
  v1 = (*(this + 4) + 1);
  *(this + 4) = v1;
  return v1;
}

uint64_t IOHIDEventSystemStatistics::Release(IOHIDEventSystemStatistics *this)
{
  v1 = *(this + 4);
  v2 = (v1 - 1);
  *(this + 4) = v2;
  if (v1 == 1)
  {
    IOHIDEventSystemStatistics::~IOHIDEventSystemStatistics(this);
    MEMORY[0x29ED57300]();
  }

  return v2;
}

BOOL IOHIDEventSystemStatistics::open(uint64_t a1)
{
  v2 = *MEMORY[0x29EDB8ED8];
  *(a1 + 128) = CFSetCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9030]);
  *(a1 + 160) = IOHIDEventCreateKeyboardEvent();
  *(a1 + 136) = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  mach_timebase_info((a1 + 56));
  return *(a1 + 128) && *(a1 + 160) && *(a1 + 136) != 0;
}

void IOHIDEventSystemStatistics::close(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    CFRelease(v2);
    a1[16] = 0;
  }

  v3 = a1[20];
  if (v3)
  {
    CFRelease(v3);
    a1[20] = 0;
  }

  v4 = a1[17];
  if (v4)
  {
    CFRelease(v4);
    a1[17] = 0;
  }
}

uint64_t IOHIDEventSystemStatistics::scheduleWithDispatchQueue(uint64_t this, dispatch_queue_s *a2)
{
  *(this + 40) = a2;
  if (a2)
  {
    v2 = this;
    global_queue = dispatch_get_global_queue(-2, 0);
    v4 = dispatch_source_create(MEMORY[0x29EDCA588], 0, 0, global_queue);
    *(v2 + 48) = v4;
    dispatch_set_context(v4, v2);
    dispatch_source_set_event_handler_f(*(v2 + 48), IOHIDEventSystemStatistics::handlePendingStats);
    dispatch_resume(*(v2 + 48));
    v5 = *(v2 + 40);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = sub_29D4282E0;
    handler[3] = &unk_29F34EF68;
    handler[4] = v2;
    return notify_register_dispatch("com.apple.iokit.hid.displayStatus", (v2 + 32), v5, handler);
  }

  return this;
}

void IOHIDEventSystemStatistics::unscheduleFromDispatchQueue(IOHIDEventSystemStatistics *this, dispatch_queue_s *a2)
{
  if (*(this + 5) == a2)
  {
    v3 = *(this + 6);
    if (v3)
    {
      dispatch_source_cancel(v3);
      dispatch_release(*(this + 6));
      *(this + 6) = 0;
    }
  }
}

CFTypeRef sub_29D42833C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  result = *(a2 + 48);
  *(a1 + 40) = &unk_2A241E390;
  *(a1 + 48) = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *v3 = &unk_2A241E310;
  return result;
}

void sub_29D4283B0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  RegistryID = IOHIDServiceGetRegistryID();
  v3 = *(v1 + 48);

  CFArrayAppendValue(v3, RegistryID);
}

__n128 sub_29D4283F8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 sub_29D428408(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 40) = result;
  return result;
}

__n128 sub_29D428420(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

xpc_object_t sub_29D428430(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "clockwiseRotation", *(*(*(a1 + 32) + 8) + 44));
  xpc_dictionary_set_int64(v2, "counterclockwiseRotation", *(*(*(a1 + 32) + 8) + 48));
  xpc_dictionary_set_uint64(v2, "pressCount", *(*(*(a1 + 32) + 8) + 40));
  return v2;
}

uint64_t IOHIDEventSystemStatistics::isSymbolKey(IOHIDEventSystemStatistics *this, unsigned int a2)
{
  v2 = 0x1FBE00000000000uLL >> a2;
  if (a2 > 0x38)
  {
    LOBYTE(v2) = 0;
  }

  if (a2 - 30 >= 0xA)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (this != 7)
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t IOHIDEventSystemStatistics::isCursorKey(IOHIDEventSystemStatistics *this, unsigned int a2)
{
  v2 = 0x2000D0000000000uLL >> a2;
  if (a2 > 0x39)
  {
    LOBYTE(v2) = 0;
  }

  if (this != 7)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t IOHIDEventSystemStatistics::isModifierKey(IOHIDEventSystemStatistics *this, int a2)
{
  if (this == 12 && a2 == 669)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = 0xEFu >> (a2 + 32);
    if ((a2 - 224) > 7u)
    {
      LOBYTE(v2) = 0;
    }

    if (this != 7)
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

xpc_object_t sub_29D42858C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "PressFailureTime", *(*(*(a1 + 32) + 8) + 24) / 0xF4240uLL);
  return v2;
}

xpc_object_t sub_29D4285F4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "PressSuccessTime", *(*(*(a1 + 32) + 8) + 24) / 0xF4240uLL);
  return v2;
}

void sub_29D42865C(void *a1)
{
  sub_29D427CE4(a1);

  JUMPOUT(0x29ED57300);
}

void sub_29D428698(void *a1)
{
  sub_29D427CE4(a1);

  JUMPOUT(0x29ED57300);
}

void sub_29D4286D0(void *a1)
{
  sub_29D428780(a1);

  JUMPOUT(0x29ED57300);
}

void sub_29D42870C(void *a1)
{
  sub_29D428780(a1);

  JUMPOUT(0x29ED57300);
}

void sub_29D428748(void *a1)
{
  sub_29D428780(a1);

  JUMPOUT(0x29ED57300);
}

void *sub_29D428780(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241E390;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29D4287D0(void *a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
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

  *a1 = &unk_2A241E390;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A241E370;
  return a1;
}

void sub_29D42886C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_29D4288E0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  IOHIDServiceGetRegistryID();
  sub_29D4288A0();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_29D426000, a3, OS_LOG_TYPE_DEBUG, "Added MultiPress Analytics for service:%@ %@\n", v6, 0x16u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29D428A14(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  IOHIDServiceGetRegistryID();
  sub_29D4288A0();
  _os_log_debug_impl(&dword_29D426000, a2, OS_LOG_TYPE_DEBUG, "MultiPress service removed: %@\n", v4, 0xCu);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_29D428A9C(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v7 = *(*a1 + 44);
  v8 = *(*a1 + 48);
  v9 = *(*a1 + 52);
  v10 = *(*a1 + 56);
  v11 = *(*a1 + 60);
  v12 = *(*a1 + 64);
  sub_29D428888();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29D428B4C(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v7 = *(*a1 + 44);
  v8 = *(*a1 + 48);
  v9 = *(*a1 + 40);
  sub_29D428888();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x14u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29D428D18()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29D4288A0();
  sub_29D428888();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29D428D88()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29D4288A0();
  sub_29D428888();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void operator delete()
{
    ;
  }
}
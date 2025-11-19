uint64_t IOHIDLibFactory(uint64_t a1, const void *a2)
{
  v16 = 0;
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xFAu, 0x12u, 0xFAu, 0x38u, 0x6Fu, 0x1Au, 0x11u, 0xD4u, 0xBAu, 0xCu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
  if (CFEqual(a2, v3))
  {
    v4 = objc_alloc_init(IOHIDObsoleteDeviceClass);
    v5 = CFUUIDGetConstantUUIDWithBytes(0, 0x78u, 0xBDu, 0x42u, 0xCu, 0x6Fu, 0x14u, 0x11u, 0xD4u, 0x94u, 0x74u, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
    v6 = CFUUIDGetUUIDBytes(v5);
    objc_msgSend_queryInterface_outInterface_(v4, *&v6.byte8, *&v6.byte0, *&v6.byte8, &v16);
LABEL_7:

    return v16;
  }

  v7 = CFUUIDGetConstantUUIDWithBytes(0, 0x7Du, 0xDEu, 0xECu, 0xA8u, 0xA7u, 0xB4u, 0x11u, 0xDAu, 0x8Au, 0xEu, 0, 0x14u, 0x51u, 0x97u, 0x58u, 0xEFu);
  if (CFEqual(a2, v7))
  {
    v4 = objc_alloc_init(IOHIDDeviceClass);
    v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x47u, 0x4Bu, 0xDCu, 0x8Eu, 0x9Fu, 0x4Au, 0x11u, 0xDAu, 0xB3u, 0x66u, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
    v9 = CFUUIDGetUUIDBytes(v8);
    objc_msgSend_queryInterface_outInterface_(v4, *&v9.byte8, *&v9.byte0, *&v9.byte8, &v16);
    goto LABEL_7;
  }

  v10 = CFUUIDGetConstantUUIDWithBytes(0, 0x40u, 0xA5u, 0x7Au, 0x4Eu, 0x26u, 0xA0u, 0x11u, 0xD8u, 0x92u, 0x95u, 0, 0xAu, 0x95u, 0x8Au, 0x2Cu, 0x78u);
  if (CFEqual(a2, v10))
  {
    v4 = objc_alloc_init(IOHIDUPSClass);
    v11 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    v12 = CFUUIDGetUUIDBytes(v11);
    objc_msgSend_queryInterface_outInterface_(v4, *&v12.byte8, *&v12.byte0, *&v12.byte8, &v16);
    goto LABEL_7;
  }

  v14 = CFUUIDGetConstantUUIDWithBytes(0, 0xBu, 0x84u, 0x2Au, 0xDDu, 0xC3u, 0x95u, 0x43u, 0x52u, 0x95u, 0xF6u, 0x65u, 0x85u, 0xEBu, 0x51u, 0x56u, 0x23u);
  v15 = CFEqual(a2, v14);
  if (v15)
  {
    IOHIDEventServiceFastPathClass::alloc(v15);
  }

  return v16;
}

void IOHIDIUnknown::IOHIDIUnknown(IOHIDIUnknown *this, void *a2)
{
  *this = &unk_2A241A750;
  *(this + 2) = 1;
  *(this + 2) = a2;
  *(this + 3) = this;
  IOHIDIUnknown::factoryAddRef(this);
}

void IOHIDIUnknown::factoryAddRef(IOHIDIUnknown *this)
{
  v1 = CFUUIDGetConstantUUIDWithBytes(0, 0x13u, 0xAAu, 0x9Cu, 0x44u, 0x6Fu, 0x1Bu, 0x11u, 0xD4u, 0x90u, 0x7Cu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);

  CFPlugInAddInstanceForFactory(v1);
}

uint64_t IOHIDEventServiceFastPathClass::queryInterface(IOHIDEventServiceFastPathClass *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v5, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v5, v8)))
  {
    v9 = *this;
    *a3 = this + 16;
LABEL_4:
    (*(v9 + 24))(this);
    goto LABEL_5;
  }

  v12 = CFUUIDGetConstantUUIDWithBytes(v6, 0x27u, 0xBAu, 0xAEu, 0x90u, 0x2Fu, 0xE5u, 0x40u, 0x2Au, 0xBFu, 0x7Fu, 0x4Eu, 0xFAu, 0x27u, 0x7Du, 0x37u, 8u);
  if (CFEqual(v5, v12))
  {
    *(this + 4) = &IOHIDEventServiceFastPathClass::sIOHIDServiceFastPathInterface;
    *(this + 5) = this;
    *a3 = this + 32;
    v9 = *this;
    goto LABEL_4;
  }

  *a3 = 0;
LABEL_5:
  if (*a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2147483652;
  }

  CFRelease(v5);
  return v10;
}

uint64_t IOHIDIUnknown::release(atomic_uint *this)
{
  add = atomic_fetch_add(this + 2, 0xFFFFFFFF);
  if (add)
  {
    if (this && add == 1)
    {
      (*(*this + 8))(this);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
  {
    sub_29D3FA7A0();
  }

  return add - 1;
}

uint64_t IOHIDEventServiceFastPathClass::_probe(IOHIDEventServiceFastPathClass *this, void *a2, io_object_t object, unsigned int a4, int *a5)
{
  v5 = 3758097090;
  if (object)
  {
    if (IOObjectConformsTo(object, "IOHIDEventService"))
    {
      return 0;
    }

    else
    {
      return 3758097090;
    }
  }

  return v5;
}

uint64_t IOHIDEventServiceFastPathClass::start(IOHIDEventServiceFastPathClass *this, const __CFDictionary *a2, io_object_t object)
{
  v5 = IOObjectRetain(object);
  if (v5)
  {
    sub_29D3FA8EC(v5, &v10);
    return v10;
  }

  else
  {
    *(this + 12) = object;
    if (IOServiceOpen(object, *MEMORY[0x29EDCA6B0], 2u, this + 13))
    {
      v6 = _IOHIDLogCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_29D3FA9A0();
      }
    }

    v7 = MEMORY[0x29ED55800](*(this + 13), this + 56);
    if (v7)
    {
      v8 = _IOHIDLogCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_29D3FAA08();
      }
    }
  }

  return v7;
}

uint64_t IOHIDEventServiceFastPathClass::open(IOHIDEventServiceFastPathClass *this, unsigned int a2, CFTypeRef object)
{
  v5 = IOCFSerialize(object, 1uLL);
  if (v5)
  {
    v6 = v5;
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v6);
    input = a2;
    v9 = IOConnectCallMethod(*(this + 13), 0, &input, 1u, BytePtr, Length, 0, 0, 0, 0);
    CFRelease(v6);
    if (v9)
    {
LABEL_3:
      v10 = _IOHIDLogCategory();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      result = 0;
      if (!v11)
      {
        return result;
      }

      sub_29D3FAA70();
      return 0;
    }
  }

  else
  {
    input = a2;
    if (IOConnectCallMethod(*(this + 13), 0, &input, 1u, 0, 0, 0, 0, 0, 0))
    {
      goto LABEL_3;
    }
  }

  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(*(this + 14), @"QueueSize", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v14 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v14);
    if (valuePtr)
    {
      v19 = 0;
      v20 = 0;
      v15 = MEMORY[0x29ED55810](*(this + 13), 0, *MEMORY[0x29EDCA6B0], &v20, &v19, 1);
      v16 = v19;
      v17 = v20;
      *(this + 8) = v20;
      *(this + 9) = v16;
      if (v15 || !v17 || !v16)
      {
        v18 = _IOHIDLogCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_29D3FAAD8(&valuePtr, v15, v18);
        }

        return 0;
      }
    }
  }

  return 1;
}

void IOHIDEventServiceFastPathClass::~IOHIDEventServiceFastPathClass(IOHIDEventServiceFastPathClass *this)
{
  IOHIDEventServiceFastPathClass::~IOHIDEventServiceFastPathClass(this);

  JUMPOUT(0x29ED55B70);
}

{
  *this = &unk_2A241A798;
  v2 = (this + 64);
  if (*(this + 8))
  {
    MEMORY[0x29ED55830](*(this + 13), 0, *MEMORY[0x29EDCA6B0], *(this + 9));
    *v2 = 0;
    v2[1] = 0;
  }

  v3 = *(this + 12);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 12) = 0;
  }

  v4 = *(this + 14);
  if (v4)
  {
    IOObjectRelease(v4);
    *(this + 14) = 0;
  }

  v5 = *(this + 13);
  if (v5)
  {
    IOServiceClose(v5);
    *(this + 13) = 0;
  }

  IOHIDIUnknown::~IOHIDIUnknown(this);
}

void IOHIDEventServiceFastPathClass::close(IOHIDEventServiceFastPathClass *this, unsigned int a2)
{
  input = a2;
  if (IOConnectCallScalarMethod(*(this + 13), 1u, &input, 1u, 0, 0))
  {
    v2 = _IOHIDLogCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_29D3FAB64();
    }
  }
}

uint64_t sub_29D3EFA88(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  v10 = **a1;
  if (a5)
  {
    v20 = *a5;
    v12 = v10;
    v18 = 0;
    Report_reportID_report_reportLength_timeout_callback_context_options = objc_msgSend_getReport_reportID_report_reportLength_timeout_callback_context_options_(v12, v13, a2, a3, a4, &v20, a6, 0, 0, v18);
    *a5 = v20;
  }

  else
  {
    v20 = 0;
    v15 = v10;
    v19 = 0;
    Report_reportID_report_reportLength_timeout_callback_context_options = objc_msgSend_getReport_reportID_report_reportLength_timeout_callback_context_options_(v15, v16, a2, a3, a4, &v20, a6, 0, 0, v19);
  }

  return Report_reportID_report_reportLength_timeout_callback_context_options;
}

uint64_t sub_29D3EFB80(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

void IOHIDIUnknown::factoryRelease(IOHIDIUnknown *this)
{
  v1 = CFUUIDGetConstantUUIDWithBytes(0, 0x13u, 0xAAu, 0x9Cu, 0x44u, 0x6Fu, 0x1Bu, 0x11u, 0xD4u, 0x90u, 0x7Cu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);

  CFPlugInRemoveInstanceForFactory(v1);
}

uint64_t sub_29D3EFDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 20) == 53)
  {
    JUMPOUT(0x29ED55880);
  }

  return MEMORY[0x2A1C70FE8](*(a4 + 80), sel_queueCallback_msg_size_info_, a1);
}

uint64_t sub_29D3F018C(id **a1)
{
  v1 = **a1;
  v2 = CFGetRetainCount(v1);
  CFRetain(v1);

  return (v2 + 1);
}

uint64_t sub_29D3F01D0(id **a1)
{
  v1 = **a1;
  v2 = CFGetRetainCount(v1);
  CFRelease(v1);

  return (v2 - 1);
}

void sub_29D3F05CC(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v42 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      v8 = 0;
      if (a3)
      {
        if (a4)
        {
          v9 = *(a1 + 4);
          if (v9)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            obj = v9;
            v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v37, v41, 16);
            if (v11)
            {
              v12 = v11;
              v34 = a2;
              v13 = 0;
              v8 = 0;
              v14 = *v38;
              v15 = a3;
              v16 = *MEMORY[0x29EDB8ED8];
              while (2)
              {
                v17 = 0;
                v18 = v8;
                do
                {
                  if (*v38 != v14)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v8 = *(*(&v37 + 1) + 8 * v17);

                  v21 = (a4 + v13);
                  v22 = *(a4 + v13 + 4);
                  v13 += v22 >> 8;
                  if (v22 >> 10 < 5 || v13 > v15)
                  {
                    v30 = _IOHIDLogCategory();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                    {
                      sub_29D3FA720(v21 + 1, v30);
                    }

                    goto LABEL_26;
                  }

                  v24 = *v21;
                  if (v24 != objc_msgSend_elementCookie(v8, v19, v20))
                  {
                    v30 = _IOHIDLogCategory();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                    {
                      sub_29D3FA684(v21, v8, v30);
                    }

                    goto LABEL_26;
                  }

                  objc_msgSend_elementRef(v8, v25, v26);
                  v27 = _IOHIDValueCreateWithElementValuePtr();
                  objc_msgSend_setValueRef_(v8, v28, v27);
                  if (v27)
                  {
                    CFRelease(v27);
                  }

                  ++v17;
                  v18 = v8;
                }

                while (v12 != v17);
                v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v37, v41, 16);
                if (v12)
                {
                  continue;
                }

                break;
              }

              v30 = v8;
              v8 = 0;
LABEL_26:
              a2 = v34;
            }

            else
            {
              v8 = 0;
            }

            objc_msgSend_releaseReport_(*(a1 + 2), v31, a4);
            v5 = *a1;
          }
        }
      }

      v5(*(a1 + 1), a2, *(a1 + 3));
      v32 = *(a1 + 4);
      *(a1 + 4) = 0;

      free(a1);
    }
  }

  v33 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29D3F1018(id ***a1, CFTypeRef *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  v3 = **a1;
  v4 = v3;
  WeakRetained = objc_loadWeakRetained(v3 + 5);
  *a2 = objc_msgSend_runLoopSource(WeakRetained, v6, v7);

  CFRetain(*a2);
  return 0;
}

uint64_t sub_29D3F1094(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((**a1 + 40));
  v4 = objc_msgSend_runLoopSource(WeakRetained, v2, v3);

  return v4;
}

uint64_t sub_29D3F10DC(uint64_t a1, _DWORD *a2)
{
  WeakRetained = objc_loadWeakRetained((**a1 + 40));
  *a2 = objc_msgSend_port(WeakRetained, v4, v5);

  return 0;
}

uint64_t sub_29D3F1128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((**a1 + 40));
  v4 = objc_msgSend_port(WeakRetained, v2, v3);

  return v4;
}

uint64_t sub_29D3F1180(id ***a1, uint64_t a2)
{
  v3 = **a1;
  v4 = v3;
  WeakRetained = objc_loadWeakRetained(v3 + 5);
  Element = objc_msgSend_getElement_(WeakRetained, v6, a2);
  v9 = objc_msgSend_addElement_(v4, v8, Element);

  return v9;
}

uint64_t sub_29D3F11F0(id ***a1, uint64_t a2)
{
  v3 = **a1;
  v4 = v3;
  WeakRetained = objc_loadWeakRetained(v3 + 5);
  Element = objc_msgSend_getElement_(WeakRetained, v6, a2);
  v9 = objc_msgSend_removeElement_(v4, v8, Element);

  return v9;
}

uint64_t sub_29D3F1260(id ***a1, uint64_t a2)
{
  v3 = **a1;
  v10 = 0;
  v4 = v3;
  WeakRetained = objc_loadWeakRetained(v3 + 5);
  Element = objc_msgSend_getElement_(WeakRetained, v6, a2);
  objc_msgSend_containsElement_value_(v4, v8, Element, &v10);

  return v10;
}

void sub_29D3F13B8(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 224) = a2;
  v4 = v3 - 224;
  *(v4 + 4) = a1;
  *(v3 - 212) = 1024;
  *(v4 + 14) = v2;
}

void sub_29D3F2B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = IOHIDQueueClass;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_29D3F3000(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = v4[17];
  if (v3)
  {
    v3(v4[18], a2, v4[19], v4 + 16);
  }
}

uint64_t sub_29D3F3248(id **a1, void *a2)
{
  v3 = **a1;
  v4 = v3;
  if (a2)
  {
    CFRetain(*(v3 + 6));
    v5 = 0;
    *a2 = v4[6];
  }

  else
  {
    v5 = 3758097090;
  }

  return v5;
}

uint64_t sub_29D3F3328(id **a1, uint64_t a2)
{
  v3 = **a1;
  WeakRetained = objc_loadWeakRetained(v3 + 3);
  Element = objc_msgSend_getElement_(WeakRetained, v5, a2);
  v8 = objc_msgSend_addElement_(v3, v7, Element);

  return v8;
}

uint64_t sub_29D3F33AC(id **a1, uint64_t a2)
{
  v3 = **a1;
  WeakRetained = objc_loadWeakRetained(v3 + 3);
  Element = objc_msgSend_getElement_(WeakRetained, v5, a2);
  v8 = objc_msgSend_removeElement_(v3, v7, Element);

  return v8;
}

uint64_t sub_29D3F3430(id **a1, uint64_t a2)
{
  v3 = **a1;
  v10 = 0;
  WeakRetained = objc_loadWeakRetained(v3 + 3);
  Element = objc_msgSend_getElement_(WeakRetained, v5, a2);
  objc_msgSend_containsElement_pValue_(v3, v7, Element, &v10);

  v8 = v10;
  return v8;
}

void IOHIDEventServiceFastPathClass::IOHIDEventServiceFastPathClass(IOHIDEventServiceFastPathClass *this)
{
  IOHIDIUnknown::IOHIDIUnknown(this, &IOHIDEventServiceFastPathClass::sIOCFPlugInInterfaceV1);
  *v1 = &unk_2A241A798;
  *(v1 + 32) = 0;
  *(v1 + 40) = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
}

{
  IOHIDIUnknown::IOHIDIUnknown(this, &IOHIDEventServiceFastPathClass::sIOCFPlugInInterfaceV1);
  *v1 = &unk_2A241A798;
  *(v1 + 32) = 0;
  *(v1 + 40) = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
}

uint64_t IOHIDEventServiceFastPathClass::probe(IOHIDEventServiceFastPathClass *this, const __CFDictionary *a2, io_object_t object, int *a4)
{
  v4 = 3758097090;
  if (object)
  {
    if (IOObjectConformsTo(object, "IOHIDEventService"))
    {
      return 0;
    }

    else
    {
      return 3758097090;
    }
  }

  return v4;
}

BOOL IOHIDEventServiceFastPathClass::setProperty(IOHIDEventServiceFastPathClass *this, const __CFString *a2, const void *a3)
{
  v3 = IOConnectSetCFProperty(*(this + 13), a2, a3);
  if (v3)
  {
    v4 = _IOHIDLogCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29D3FABCC();
    }
  }

  return v3 == 0;
}

uint64_t IOHIDEventServiceFastPathClass::copyEvent(uint64_t a1, CFTypeRef cf, unsigned int a3, uint64_t *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  input = a3;
  v22 = 0;
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFDataGetTypeID())
    {
      v8 = CFRetain(cf);
      v22 = 1;
      if (!v8)
      {
        goto LABEL_8;
      }

LABEL_7:
      BytePtr = CFDataGetBytePtr(v8);
      Length = CFDataGetLength(v8);
      goto LABEL_9;
    }

    v8 = IOCFSerialize(cf, 1uLL);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  Length = 0;
  BytePtr = 0;
LABEL_9:
  v11 = *(a1 + 64);
  if (v11)
  {
    if (a4)
    {
      *v11 = 0;
      v12 = IOConnectCallMethod(*(a1 + 52), 2u, &input, 2u, BytePtr, Length, 0, 0, 0, 0);
      if (v12)
      {
        v13 = v12;
        v14 = _IOHIDLogCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_29D3FAC34(cf, v13, v14);
        }
      }

      else
      {
        if (**(a1 + 64))
        {
          v17 = *MEMORY[0x29EDB8ED8];
          v18 = IOHIDEventCreateWithBytesInternal();
          *a4 = v18;
        }

        else
        {
          v18 = *a4;
        }

        if (v18)
        {
          v13 = 0;
        }

        else
        {
          v13 = 3758097084;
        }
      }
    }

    else
    {
      v16 = _IOHIDLogCategory();
      v13 = 3758097090;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_29D3FACBC(v16);
      }
    }
  }

  else
  {
    v13 = 3758097084;
    v15 = _IOHIDLogCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_29D3FAD00(v15);
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29D3F38E8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t IOHIDAnalyticsGetConsoleModeStatus(void *a1)
{
  v1 = a1;
  if (qword_2A17A2830 != -1)
  {
    sub_29D3FAD44();
  }

  v2 = 3758097084;
  if (qword_2A17A2828)
  {
    v3 = NSClassFromString(&cfstr_Gpprocessmonit.isa);
    if (v3)
    {
      v4 = v3;
      Uid = sel_getUid("monitorForCurrentProcess");
      v7 = objc_msgSend_performSelector_(v4, v6, Uid);
      if (v7)
      {
        v8 = v7;
        v11[0] = MEMORY[0x29EDCA5F8];
        v11[1] = 3221225472;
        v11[2] = sub_29D3F3A0C;
        v11[3] = &unk_29F34D148;
        v12 = v1;
        objc_msgSend_setUpdateHandler_(v8, v9, v11);

        v2 = 0;
      }
    }
  }

  return v2;
}

uint64_t sub_29D3F3A0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  Uid = sel_getUid("isIdentifiedGame");
  objc_msgSend_performSelector_(v4, v6, Uid);

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

void *sub_29D3F3A80()
{
  result = dlopen("/System/Library/PrivateFrameworks/GamePolicy.framework/GamePolicy", 1);
  qword_2A17A2828 = result;
  return result;
}

void sub_29D3F4AF0(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(*(a1 + 32) + 112);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v23, v27, 16);
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        if ((objc_msgSend_isConstant(v8, v9, v10, v23) & 1) == 0)
        {

LABEL_12:
          if (objc_msgSend_pollEventUpdate(*(a1 + 32), v19, v20))
          {
            v21 = *(a1 + 32);
            if (*(v21 + 136))
            {
              sub_29D3F4CB8(*(v21 + 80), @"timer dispatchEvent");
              (*(*(a1 + 32) + 136))(*(*(a1 + 32) + 144), 0, *(*(a1 + 32) + 152), *(a1 + 32) + 24, *(*(a1 + 32) + 80));
            }
          }

          goto LABEL_15;
        }

        isUpdated = objc_msgSend_isUpdated(v8, v11, v12);

        if (!isUpdated)
        {
          goto LABEL_12;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v14, &v23, v27, 16);
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  objc_msgSend_invalidate(*(*(a1 + 32) + 160), v15, v16);
  v17 = *(a1 + 32);
  v18 = *(v17 + 160);
  *(v17 + 160) = 0;

LABEL_15:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_29D3F4CB8(void *a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = a1;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"Debug Information");
  v9 = objc_msgSend_mutableCopy(v4, v7, v8);

  objc_msgSend_removeObjectForKey_(v9, v10, @"Debug Information");
  v11 = _IOHIDLogCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_29D3EE000, v11, OS_LOG_TYPE_DEFAULT, "%@: %@", &v14, 0x16u);
  }

  if (v6)
  {
    v12 = _IOHIDLogCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_29D3FB478(v3, v6, v12);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_29D3F67C8(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  v8 = objc_msgSend_copyElements_psKey_(*(a1 + 32), v7, *(*(a1 + 32) + 120), v5);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v8;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v39, v43, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      v13 = 0;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = objc_msgSend_integerValue(v6, v15, v16);
          if ((objc_msgSend_isEqualToString_(v5, v18, @"Delayed Remove Power") & 1) != 0 || objc_msgSend_isEqualToString_(v5, v19, @"Startup Delay"))
          {
            objc_msgSend_setIntegerValue_(v14, v19, 60 * v17);
          }

          else
          {
            isEqualToString = objc_msgSend_isEqualToString_(v5, v19, @"Enable Audible Alarm");
            v25 = 1;
            if (v17)
            {
              v25 = 2;
            }

            if (isEqualToString)
            {
              objc_msgSend_setIntegerValue_(v14, v24, v25);
            }

            else
            {
              objc_msgSend_setIntegerValue_(v14, v24, v17);
            }
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_18;
          }

          objc_msgSend_setDataValue_(v14, v22, v6);
        }

        v26 = *(*(a1 + 32) + 48);
        v27 = *(*v26 + 56);
        v28 = objc_msgSend_elementRef(v14, v20, v21);
        v27(v26, v28, 0);
        v29 = *(*(a1 + 32) + 48);
        v30 = *(*v29 + 80);
        v33 = objc_msgSend_elementRef(v14, v31, v32);
        v36 = objc_msgSend_valueRef(v14, v34, v35);
        v30(v29, v33, v36, 0);
LABEL_18:
        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v39, v43, 16);
    }

    while (v11);
  }

  v37 = *MEMORY[0x29EDCA608];
}

void sub_29D3F6EA0(uint64_t a1)
{
  v2 = *(a1 + 16);
}

BOOL sub_29D3F6F10(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_29D3F7D94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (!objc_msgSend_isEqualToString_(v5, v8, @"UsageMin"))
  {
    if (objc_msgSend_isEqualToString_(v5, v9, @"UsageMax"))
    {
      objc_msgSend_propertyForElementKey_(*(a1 + 32), v13, @"Usage");
    }

    else
    {
      if (objc_msgSend_isEqualToString_(v5, v13, @"ElementCookieMin"))
      {
        objc_msgSend_propertyForElementKey_(*(a1 + 32), v21, @"ElementCookie");
        goto LABEL_3;
      }

      isEqualToString = objc_msgSend_isEqualToString_(v5, v21, @"ElementCookieMax");
      v24 = *(a1 + 32);
      if (!isEqualToString)
      {
        v10 = objc_msgSend_propertyForElementKey_(v24, v22, v5);
        v11 = 4;
        objc_msgSend_expressionForKeyPath_(MEMORY[0x29EDB9FA8], v25, v10);
        goto LABEL_7;
      }

      objc_msgSend_propertyForElementKey_(v24, v22, @"ElementCookie");
    }
    v10 = ;
    v11 = 1;
    objc_msgSend_expressionForKeyPath_(MEMORY[0x29EDB9FA8], v14, v10);
    goto LABEL_7;
  }

  objc_msgSend_propertyForElementKey_(*(a1 + 32), v9, @"Usage");
  v10 = LABEL_3:;
  v11 = 3;
  objc_msgSend_expressionForKeyPath_(MEMORY[0x29EDB9FA8], v12, v10);
  v15 = LABEL_7:;
  v17 = objc_msgSend_expressionForConstantValue_(MEMORY[0x29EDB9FA8], v16, v6);
  v19 = objc_msgSend_predicateWithLeftExpression_rightExpression_modifier_type_options_(MEMORY[0x29EDB9F58], v18, v15, v17, 0, v11, 0);
  objc_msgSend_filterUsingPredicate_(*(a1 + 40), v20, v19);

  objc_autoreleasePoolPop(v7);
}

void sub_29D3F85DC(unsigned int *a1, uint64_t a2, size_t __len, void *__src)
{
  if (a1)
  {
    v5 = *(a1 + 3);
    if (v5)
    {
      v7 = __len;
      if (__src && *(a1 + 5))
      {
        memmove(*(a1 + 1), __src, __len);
        objc_msgSend_releaseReport_(*(a1 + 5), v9, __src);
        v5 = *(a1 + 3);
      }

      v5(*(a1 + 4), a2, *(a1 + 6), *a1, a1[4], *(a1 + 1), v7);

      free(a1);
    }
  }
}

uint64_t (*sub_29D3F8BF0())()
{
  v0 = qword_2A17A2838;
  if (!qword_2A17A2838)
  {
    v0 = dlopen("/usr/lib/libRosetta.dylib", 2);
    qword_2A17A2838 = v0;
  }

  result = dlsym(v0, "rosetta_is_current_process_translated");
  off_2A1C00728 = result;
  if (result)
  {

    return result();
  }

  return result;
}

uint64_t sub_29D3F8C60(uint64_t a1)
{
  v2 = qword_2A17A2838;
  if (!qword_2A17A2838)
  {
    v2 = dlopen("/usr/lib/libRosetta.dylib", 2);
    qword_2A17A2838 = v2;
  }

  v3 = dlsym(v2, "rosetta_convert_to_rosetta_absolute_time");
  off_2A1C00730 = v3;
  if (!v3)
  {
    return a1;
  }

  return (v3)(a1);
}

uint64_t sub_29D3F8CE0@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a1 + 40) = v4;
  *(a1 + 48) = &v4[a4];

  return objc_msgSend_initPort(v4, a2, a3);
}

void *sub_29D3F8D0C()
{

  return malloc_type_malloc(0x38uLL, 0x109004093AC984DuLL);
}

void sub_29D3F8D30(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

__n128 sub_29D3F8D48()
{
  result.n128_u64[0] = 0xAAAAAAAAAAAAAAAALL;
  result.n128_u64[1] = 0xAAAAAAAAAAAAAAAALL;
  return result;
}

uint64_t sub_29D3F9098(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  if (v4)
  {
    if (a3 == -536870896)
    {
      v5 = v4[25];
      if (v5)
      {
        v5(v4[26], 0, v4[27], v4 + 22);
      }
    }
  }

  return MEMORY[0x2A1C71028]();
}

void *sub_29D3F9510(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = result[28];
  if (v7)
  {
    return v7(result[29], a2, result[30], a3, a7);
  }

  return result;
}

uint64_t sub_29D3F977C(void ***a1, void *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  v3 = **a1;
  v4 = v3[8];
  v5 = v3;
  CFRetain(v4);
  v6 = v5[8];

  result = 0;
  *a2 = v6;
  return result;
}

void sub_29D3FA684(unsigned int *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v10 = *a1;
  objc_msgSend_elementCookie(a2, a2, a3);
  sub_29D3EFB54();
  _os_log_error_impl(v3, v4, v5, v6, v7, v8);
  v9 = *MEMORY[0x29EDCA608];
}

void sub_29D3FA720(_DWORD *a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *a1 >> 8;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_29D3EE000, a2, OS_LOG_TYPE_ERROR, "Unable to copy back value for element, unexpected size(%d)\n", v4, 8u);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_29D3FA7E8(NSObject *a1, int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_29D3EE000, a1, OS_LOG_TYPE_INFO, "Failed to create IOHIDQueue plugin result: 0x%x\n", v5, 8u);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_29D3FA888(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_29D3EE000, a1, OS_LOG_TYPE_ERROR, "Unable to create queue analytics\n", v2, 2u);
  }
}

void sub_29D3FA8EC(int a1, _DWORD *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = _IOHIDLogCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = a1;
    _os_log_error_impl(&dword_29D3EE000, v4, OS_LOG_TYPE_ERROR, "IOHIDEventServiceFastPathClass failed to retain service object with err %x\n", v6, 8u);
  }

  *a2 = a1;
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29D3FA9A0()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29D3EFB60();
  sub_29D3F38E8(&dword_29D3EE000, v0, v1, "IOServiceOpen(kIOHIDEventServiceFastPathUserClientType): 0x%x\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29D3FAA08()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29D3EFB60();
  sub_29D3F38E8(&dword_29D3EE000, v0, v1, "IOConnectGetService(kIOHIDEventServiceFastPathUserClientType): 0x%x\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29D3FAA70()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29D3EFB60();
  sub_29D3F38E8(&dword_29D3EE000, v0, v1, "IOConnectCallMethod (kIOHIDEventServiceFastPathUserClientOpen): 0x%x\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29D3FAAD8(int *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_29D3EE000, log, OS_LOG_TYPE_ERROR, "IOConnectMapMemory (sharedMemorySize:%d): 0x%x\n", v5, 0xEu);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_29D3FAB64()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29D3EFB60();
  sub_29D3F38E8(&dword_29D3EE000, v0, v1, "IOConnectCallMethod (kIOHIDEventServiceFastPathUserClientClose): 0x%x\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29D3FABCC()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29D3EFB60();
  sub_29D3F38E8(&dword_29D3EE000, v0, v1, "IOConnectSetCFProperty: 0x%x\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29D3FAC34(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_29D3EE000, log, OS_LOG_TYPE_ERROR, "IOConnectCallMethod (kIOHIDEventServiceFastPathUserClientCopyEvent): 0x%x (copySpec = %@)\n", v4, 0x12u);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_29D3FB478(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_29D3EE000, log, OS_LOG_TYPE_DEBUG, "%@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_29D3FB500()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29D3F6F48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29D3FB574()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29D3F6F48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29D3FCA38(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = _IOHIDLogCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = a1;
    sub_29D3F8D30(&dword_29D3EE000, v2, v3, "IOServiceOpen failed: 0x%x\n", v5);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_29D3FCADC(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = _IOHIDLogCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = a1;
    sub_29D3F8D30(&dword_29D3EE000, v2, v3, "IOHIDDeviceClass failed to retain service object with err %x\n", v5);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_29D3FCB80(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  *a4 = v8;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v9 = a2;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, a1, a3, 16);
  if (v11)
  {
    v14 = v11;
    v15 = **(a1 + 16);
    do
    {
      v16 = 0;
      do
      {
        if (**(a1 + 16) != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = objc_msgSend_elementRef(*(*(a1 + 8) + 8 * v16), v12, v13);
        objc_msgSend_addObject_(v8, v18, v17);
        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, a1, a3, 16);
    }

    while (v14);
  }
}

void sub_29D3FCC6C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_29D3EE000, log, OS_LOG_TYPE_ERROR, "Unsupported matching criteria: %@ %@\n", &v4, 0x16u);
  v3 = *MEMORY[0x29EDCA608];
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
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
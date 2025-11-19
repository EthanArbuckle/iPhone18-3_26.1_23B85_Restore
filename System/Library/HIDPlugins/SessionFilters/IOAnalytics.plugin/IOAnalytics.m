uint64_t _servicesMatched(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceMatched:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void OUTLINED_FUNCTION_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint8_t buf)
{

  _os_log_impl(a1, v27, OS_LOG_TYPE_DEFAULT, a4, &buf, 2u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t OUTLINED_FUNCTION_6()
{
  v2 = *(v0 + 896);

  return objc_opt_class();
}

BOOL OUTLINED_FUNCTION_7(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_9(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint8_t buf)
{

  _os_log_impl(a1, v27, OS_LOG_TYPE_DEFAULT, a4, &buf, 2u);
}

uint64_t _serviceMatched(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceMatched:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

id convertNSDataToHexString(void *a1)
{
  if (a1)
  {
    v3 = 0;
    [a1 getBytes:&v3 length:4];
    a1 = [NSString stringWithFormat:@"0x%X", v3];
    v1 = vars8;
  }

  return a1;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t _servicesMatched_0(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceMatched:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint8_t buf)
{

  _os_log_error_impl(a1, v23, OS_LOG_TYPE_ERROR, a4, &buf, 2u);
}

BOOL OUTLINED_FUNCTION_5_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  v2 = *(v0 + 880);

  return objc_opt_class();
}

id OUTLINED_FUNCTION_7_0()
{

  return [v0 setObject:v1 forKey:?];
}

id OUTLINED_FUNCTION_8_0()
{

  return [v1 setObject:v0 forKey:?];
}

id get_kCAEvent_Thunderbolt_Daily()
{
  if (get_kCAEvent_Thunderbolt_Daily_onceToken != -1)
  {
    get_kCAEvent_Thunderbolt_Daily_cold_1();
  }

  v1 = get_kCAEvent_Thunderbolt_Daily_event;

  return v1;
}

uint64_t _servicesMatched_1(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceMatched:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

CFMutableDictionaryRef copyIORegistryEntryProperties(io_registry_entry_t a1)
{
  if (a1)
  {
    properties = 0;
    v2 = IORegistryEntryCreateCFProperties(a1, &properties, kCFAllocatorDefault, 0);
    if (properties)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v4 = properties;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t _servicesMatched_2(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceMatched:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint8_t buf)
{

  _os_log_error_impl(a1, v21, OS_LOG_TYPE_ERROR, a4, &buf, 2u);
}

id OUTLINED_FUNCTION_3_2()
{

  return [v0 setObject:v1 forKey:?];
}

id OUTLINED_FUNCTION_4_1()
{

  return [v0 setObject:v1 forKey:?];
}

void *createPayloadFromDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = +[NSMutableDictionary dictionary];
    if (v6)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = v3;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            v13 = [v12 ioProperty];
            v14 = [v5 objectForKeyedSubscript:v13];

            if (!v14)
            {
              v14 = +[NSNull null];
            }

            v15 = [v12 name];
            [v6 setObject:v14 forKeyedSubscript:v15];
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }

      v16 = v6;
      v3 = v18;
    }
  }

  return v6;
}

CFStringRef copyIOObjectClassName(io_object_t a1)
{
  if (a1)
  {
    return IOObjectCopyClass(a1);
  }

  else
  {
    return 0;
  }
}

CFTypeRef copyIORegistryEntryProperty(io_registry_entry_t a1, const __CFString *a2)
{
  if (a1 && a2)
  {
    return IORegistryEntryCreateCFProperty(a1, a2, kCFAllocatorDefault, 0);
  }

  else
  {
    return 0;
  }
}

CFMutableDictionaryRef copyIORegistryEntryProperties_0(io_registry_entry_t a1)
{
  if (!a1)
  {
    return 0;
  }

  properties = 0;
  v1 = IORegistryEntryCreateCFProperties(a1, &properties, kCFAllocatorDefault, 0);
  if (properties)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return properties;
  }

  else
  {
    return 0;
  }
}

CFMutableDictionaryRef copyIORegistryEntryParentProperties(io_registry_entry_t a1, const char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    parent = 0;
    if (IORegistryEntryGetParentEntry(a1, a2, &parent))
    {
      v2 = 0;
    }

    else
    {
      v2 = copyIORegistryEntryProperties_0(parent);
    }

    if (parent)
    {
      IOObjectRelease(parent);
    }
  }

  return v2;
}

void foreachIOObject(io_iterator_t a1, void *a2)
{
  v6 = a2;
  if (a1 && v6)
  {
    do
    {
      v3 = IOIteratorNext(a1);
      if (!v3)
      {
        break;
      }

      v4 = v3;
      v5 = v6[2](v6, v3);
      IOObjectRelease(v4);
    }

    while (v5 == 1);
  }
}

void foreachIORegistryEntryChild(io_registry_entry_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (a2)
    {
      if (v5)
      {
        iterator = -1431655766;
        if (!IORegistryEntryGetChildIterator(a1, a2, &iterator))
        {
          v7 = iterator;
          v8[0] = _NSConcreteStackBlock;
          v8[1] = 3221225472;
          v8[2] = __foreachIORegistryEntryChild_block_invoke;
          v8[3] = &unk_207F0;
          v9 = v6;
          foreachIOObject(v7, v8);
          if (iterator)
          {
            IOObjectRelease(iterator);
          }
        }
      }
    }
  }
}

void foreachIORegistryEntryParent(io_registry_entry_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (a2)
    {
      if (v5)
      {
        iterator = -1431655766;
        if (!IORegistryEntryCreateIterator(a1, a2, 3u, &iterator))
        {
          v7 = iterator;
          v8[0] = _NSConcreteStackBlock;
          v8[1] = 3221225472;
          v8[2] = __foreachIORegistryEntryParent_block_invoke;
          v8[3] = &unk_207F0;
          v9 = v6;
          foreachIOObject(v7, v8);
          if (iterator)
          {
            IOObjectRelease(iterator);
          }
        }
      }
    }
  }
}

id searchIORegistryEntryParentsForPropertyWithLimit(io_registry_entry_t a1, const char *a2, uint64_t a3, int a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __searchIORegistryEntryParentsForPropertyWithLimit_block_invoke;
  v6[3] = &unk_20818;
  v7 = a4;
  v6[4] = v8;
  v6[5] = &v10;
  v6[6] = a2;
  v6[7] = a3;
  foreachIORegistryEntryParent(a1, a2, v6);
  v4 = v11[5];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_61CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL __searchIORegistryEntryParentsForPropertyWithLimit_block_invoke(uint64_t a1, io_registry_entry_t entry)
{
  if (++*(*(*(a1 + 32) + 8) + 24) <= *(a1 + 64))
  {
    v4 = IORegistryEntrySearchCFProperty(entry, *(a1 + 48), *(a1 + 56), kCFAllocatorDefault, 2u);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return *(*(*(a1 + 40) + 8) + 40) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL isRegistryEntryIDPresentInIOReg(uint64_t a1)
{
  existing = 0;
  v1 = IORegistryEntryIDMatching(a1);
  v2 = 0;
  if (!IOServiceGetMatchingServices(kIOMasterPortDefault, v1, &existing))
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __isRegistryEntryIDPresentInIOReg_block_invoke;
    v4[3] = &unk_20840;
    v4[4] = &v5;
    foreachIOObject(existing, v4);
    if (existing)
    {
      IOObjectRelease(existing);
    }

    v2 = *(v6 + 6) != 0;
    _Block_object_dispose(&v5, 8);
  }

  return v2;
}

void sub_6390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL checkIOObjectParentConformsTo(io_registry_entry_t a1, const char *a2, const char *a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    parent = -1431655766;
    if (IORegistryEntryGetParentEntry(a1, a2, &parent))
    {
      return 0;
    }

    else
    {
      v3 = IOObjectConformsTo(parent, a3) != 0;
      if (parent)
      {
        IOObjectRelease(parent);
      }
    }
  }

  return v3;
}

uint64_t _serviceMatched_0(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceMatched:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

id OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{

  return [a14 setObject:v14 forKey:?];
}

CFTypeRef OUTLINED_FUNCTION_1_4(io_registry_entry_t a1, const __CFString *a2)
{

  return IORegistryEntryCreateCFProperty(a1, a2, v2, 0);
}

id OUTLINED_FUNCTION_2_2()
{

  return [v1 setObject:v0 forKey:?];
}

void _serviceRemoved(uint64_t a1, io_iterator_t a2)
{
  v4 = LogIOAnalytics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _serviceRemoved_cold_1();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = ___serviceRemoved_block_invoke;
  v5[3] = &__block_descriptor_40_e8_i12__0I8l;
  v5[4] = a1;
  foreachIOObject(a2, v5);
}

void _serviceAdded(uint64_t a1, io_iterator_t a2)
{
  v4 = LogIOAnalytics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _serviceAdded_cold_1();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = ___serviceAdded_block_invoke;
  v5[3] = &__block_descriptor_40_e8_i12__0I8l;
  v5[4] = a1;
  foreachIOObject(a2, v5);
}

void sub_94F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___serviceRemoved_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = copyIOObjectClassName(a2);
  v5 = LogIOAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    ___serviceRemoved_block_invoke_cold_1();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 removedService:a2 withClassName:v4];
  }

  else
  {
    v7 = LogIOAnalytics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___serviceRemoved_block_invoke_cold_2();
    }
  }

  return 1;
}

uint64_t ___serviceAdded_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = copyIOObjectClassName(a2);
  v5 = LogIOAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    ___serviceAdded_block_invoke_cold_1();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 addedService:a2 withClassName:v4];
  }

  else
  {
    v7 = LogIOAnalytics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___serviceRemoved_block_invoke_cold_2();
    }
  }

  return 1;
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t *OUTLINED_FUNCTION_7_1@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t _serviceMatched_1(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceMatched:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

id getPropFromReg(CFStringRef key, io_registry_entry_t entry)
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, key, kCFAllocatorDefault, 0);

  return CFProperty;
}

id get_kCAEvent_USBFW()
{
  if (get_kCAEvent_USBFW_onceToken != -1)
  {
    get_kCAEvent_USBFW_cold_1();
  }

  v1 = get_kCAEvent_USBFW_event;

  return v1;
}

id get_kCAEvent_ThunderboltCounters()
{
  if (get_kCAEvent_ThunderboltCounters_onceToken != -1)
  {
    get_kCAEvent_ThunderboltCounters_cold_1();
  }

  v1 = get_kCAEvent_ThunderboltCounters_event;

  return v1;
}

uint64_t _servicesMatched_3(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceMatched:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void OUTLINED_FUNCTION_2_4(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 2u);
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  v2 = *(v0 + 880);

  return objc_opt_class();
}

id get_kCAEvent_USB_Device_Daily()
{
  if (get_kCAEvent_USB_Device_Daily_onceToken != -1)
  {
    get_kCAEvent_USB_Device_Daily_cold_1();
  }

  v1 = get_kCAEvent_USB_Device_Daily_event;

  return v1;
}

id get_USBFields(void *a1)
{
  v1 = a1;
  if (get_USBFields_onceToken != -1)
  {
    get_USBFields_cold_1();
  }

  v2 = get_USBFields_usbFields;
  if (v1)
  {
    v3 = get_USBFields_usbFields;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __get_USBFields_block_invoke_2;
    v7[3] = &unk_20670;
    v8 = v1;
    v4 = [v3 indexesOfObjectsPassingTest:v7];
    v5 = [get_USBFields_usbFields objectsAtIndexes:v4];

    v2 = v5;
  }

  return v2;
}

id get_kCAEvent_USB_Interface_Daily()
{
  if (get_kCAEvent_USB_Interface_Daily_onceToken != -1)
  {
    get_kCAEvent_USB_Interface_Daily_cold_1();
  }

  v1 = get_kCAEvent_USB_Interface_Daily_event;

  return v1;
}

uint64_t LogIOAnalytics()
{
  if (LogIOAnalytics_onceToken != -1)
  {
    LogIOAnalytics_cold_1();
  }

  return LogIOAnalytics_logIOAnalytics;
}

id convertNSDataToNSString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v3 bytes];
    v6 = objc_alloc_init(NSMutableString);
    if ([v3 length])
    {
      v7 = 0;
      do
      {
        [v6 appendFormat:v4, v5[v7++]];
      }

      while (v7 < [v3 length]);
    }

    v8 = [NSString stringWithString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id trimBidirectionalUnicodeCharacters(void *a1)
{
  v1 = a1;
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"\u202A\u202B\u202C\u202D"];
  v3 = [v1 stringByTrimmingCharactersInSet:v2];

  return v3;
}

id removeBidirectionalUnicodeCharacters(void *a1)
{
  v1 = a1;
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"\u202A\u202B\u202C\u202D"];
  v3 = [v1 componentsSeparatedByCharactersInSet:v2];

  v4 = [v3 componentsJoinedByString:&stru_23958];

  return v4;
}

id convertNSStringToNSData(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[NSCharacterSet hexadecimalCharacterSet];
    v3 = [v2 invertedSet];
    v4 = [v1 componentsSeparatedByCharactersInSet:v3];
    v5 = [v4 componentsJoinedByString:&stru_23958];

    v6 = [v5 UTF8String];
    v7 = strlen(v6) >> 1;
    v8 = malloc_type_malloc(v7, 0x5E84AA4CuLL);
    if (v6 && [v5 length] >= 2)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = 0;
        v23 = -86;
        v22 = -86;
        v12 = &v23;
        v13 = 1;
        do
        {
          v14 = v13;
          v15 = v6[2 * v10 + v11];
          v16 = v15 - 48;
          v17 = v15 - 65;
          if ((v15 - 97) >= 6)
          {
            v18 = 0;
          }

          else
          {
            v18 = v15 - 87;
          }

          v19 = v15 - 55;
          if (v17 > 5)
          {
            v19 = v18;
          }

          if (v16 < 0xA)
          {
            v19 = v16;
          }

          *v12 = v19;
          v12 = &v22;
          v11 = 1;
          v13 = 0;
        }

        while ((v14 & 1) != 0);
        v8[v9] = v22 | (16 * v23);
        v9 = (v10 + 1);
        v20 = [v5 length];
        v10 = v9;
      }

      while (v9 < v20 >> 1);
    }

    v1 = [NSData dataWithBytes:v8 length:v7];
    if (v8)
    {
      free(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v1;
}

uint64_t classImplementsMethodsInProtocol(void *a1, void *a2, BOOL a3, BOOL a4, void *a5)
{
  v9 = a2;
  v10 = +[NSMutableSet set];
  outCount = 0;
  v11 = protocol_copyMethodDescriptionList(v9, a3, a4, &outCount);
  v12 = v11;
  if (outCount)
  {
    v13 = 0;
    p_name = &v11->name;
    do
    {
      if (([a1 instancesRespondToSelector:*p_name] & 1) == 0)
      {
        v15 = NSStringFromSelector(*p_name);
        [v10 addObject:v15];
      }

      ++v13;
      p_name += 2;
    }

    while (v13 < outCount);
  }

  free(v12);
  if (outCount && [v10 count])
  {
    v16 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = 1;
  if (a5)
  {
LABEL_11:
    *a5 = [NSSet setWithSet:v10];
  }

LABEL_12:

  return v16;
}

uint64_t isNSObjectNull(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1;
  v2 = +[NSNull null];
  v3 = [v1 isEqual:v2];

  return v3;
}

id NSObjectIfNotNull(void *a1)
{
  v1 = a1;
  if (isNSObjectNull(v1))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

id isNSObjectEqual(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return &dword_0 + 1;
  }
}

id castNSObjectToType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id readJSONFile(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSData dataWithContentsOfFile:a1];
    if (v1)
    {
      v5 = 0;
      v2 = [NSJSONSerialization JSONObjectWithData:v1 options:0 error:&v5];
      v3 = v2;
      if (!v5)
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v3 = 0;
    goto LABEL_6;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

id writeJSONFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (!v3)
  {
    v3 = &__NSDictionary0__struct;
  }

  if ([NSJSONSerialization isValidJSONObject:v3])
  {
    v9 = 0;
    v5 = [NSJSONSerialization dataWithJSONObject:v3 options:1 error:&v9];
    v6 = v5;
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 writeToFile:v4 atomically:1];
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  return v7;
}

id base64EncodeArray(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) base64EncodedStringWithOptions:{0, v10}];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id base64DecodeArray(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [NSData alloc];
        v10 = [v9 initWithBase64EncodedString:v8 options:{0, v12}];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t _servicesMatched_4(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceMatched:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void OUTLINED_FUNCTION_4_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint8_t buf)
{

  _os_log_error_impl(a1, v31, OS_LOG_TYPE_ERROR, a4, &buf, 2u);
}

id OUTLINED_FUNCTION_9_0(unsigned __int8 *a1)
{
  v3 = *a1;

  return v1;
}

BOOL OUTLINED_FUNCTION_10(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

id OUTLINED_FUNCTION_12()
{

  return [v0 setObject:v1 forKey:?];
}

uint64_t OUTLINED_FUNCTION_13()
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_14()
{
  v2 = *(v0 + 880);

  return objc_opt_class();
}

BOOL OUTLINED_FUNCTION_18(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void _serviceRemoved_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void _serviceAdded_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void ___serviceRemoved_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ___serviceRemoved_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___serviceAdded_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}
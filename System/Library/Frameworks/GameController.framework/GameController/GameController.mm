void GCFrameworkStaticInitializer()
{
  v0 = objc_autoreleasePoolPush();
  _CFNotificationCenterRegisterDependentNotificationList();

  objc_autoreleasePoolPop(v0);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GCPhysicalInputElementName()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

uint64_t static GCDirectionPadElementName.directionPad.getter@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
}

uint64_t gc_isInternalBuild()
{
  if (gc_isInternalBuild_onceToken != -1)
  {
    gc_isInternalBuild_cold_1();
  }

  return gc_isInternalBuild_isInternalBuild;
}

id getGCLogger()
{
  if (getGCLogger_onceToken != -1)
  {
    getGCLogger_cold_1();
  }

  v1 = gcLogger;

  return v1;
}

uint64_t sub_1D2CD7740()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2CD7778()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

void __HIDServicesChangedCallback(void *a1, uint64_t a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a3;
  v8 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v6 onHIDServiceRemoved:*(*(&v23 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v6 onHIDServiceAdded:{*(*(&v19 + 1) + 8 * v17++), v19}];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

BOOL OUTLINED_FUNCTION_9(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_11(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void OUTLINED_FUNCTION_15(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_debug_impl(a1, a2, a3, a4, v4, 0xCu);
}

BOOL GCMicroGamepadSnapshotDataFromNSData(GCMicroGamepadSnapshotData *snapshotData, NSData *data)
{
  v3 = data;
  v4 = v3;
  v5 = 0;
  if (snapshotData && v3)
  {
    v8 = 0;
    [(NSData *)v3 getBytes:&v8 length:4];
    v6 = HIWORD(v8);
    if (HIWORD(v8) <= 0x14u)
    {
      [(NSData *)v4 getBytes:snapshotData length:HIWORD(v8)];
      if (v6 != 20)
      {
        bzero(snapshotData + HIWORD(v8), 20 - v6);
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

BOOL GCExtendedGamepadSnapshotDataFromNSData(GCExtendedGamepadSnapshotData *snapshotData, NSData *data)
{
  v3 = data;
  v4 = v3;
  v5 = 0;
  if (snapshotData && v3)
  {
    v8 = 0;
    [(NSData *)v3 getBytes:&v8 length:4];
    v6 = HIWORD(v8);
    if (HIWORD(v8) <= 0x3Fu)
    {
      [(NSData *)v4 getBytes:snapshotData length:HIWORD(v8)];
      if (v6 != 63)
      {
        bzero(snapshotData + HIWORD(v8), 63 - v6);
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

NSData *__cdecl NSDataFromGCMicroGamepadSnapshotData(GCMicroGamepadSnapshotData *snapshotData)
{
  if (snapshotData)
  {
    v2 = snapshotData;
    if (snapshotData->version)
    {
      v3 = MEMORY[0x1E695DEF0];
    }

    else
    {
      v5 = *&snapshotData->version;
      *&v6 = snapshotData->buttonX;
      LODWORD(v5) = 1310976;
      v3 = MEMORY[0x1E695DEF0];
      v2 = &v5;
    }

    snapshotData = [v3 dataWithBytes:v2 length:{20, v5, v6}];
    v1 = vars8;
  }

  return snapshotData;
}

NSData *__cdecl NSDataFromGCExtendedGamepadSnapshotData(GCExtendedGamepadSnapshotData *snapshotData)
{
  if (snapshotData)
  {
    v2 = snapshotData;
    if (snapshotData->version)
    {
      v3 = MEMORY[0x1E695DEF0];
    }

    else
    {
      v4 = *&snapshotData->buttonB;
      v6 = *&snapshotData->version;
      v7 = v4;
      v8[0] = *&snapshotData->rightShoulder;
      *(v8 + 15) = *(&snapshotData->rightThumbstickX + 3);
      LODWORD(v6) = 4129025;
      v3 = MEMORY[0x1E695DEF0];
      v2 = &v6;
    }

    snapshotData = [v3 dataWithBytes:v2 length:{63, v6, v7, v8[0], v8[1]}];
    v1 = vars8;
  }

  return snapshotData;
}

BOOL GCMicroGamepadSnapShotDataV100FromNSData(GCMicroGamepadSnapShotDataV100 *snapshotData, NSData *data)
{
  v3 = data;
  v4 = v3;
  v5 = 0;
  if (snapshotData && v3)
  {
    v8 = 0;
    [(NSData *)v3 getBytes:&v8 length:4];
    v6 = HIWORD(v8);
    if (HIWORD(v8) <= 0x14u)
    {
      [(NSData *)v4 getBytes:snapshotData length:HIWORD(v8)];
      if (v6 != 20)
      {
        bzero(snapshotData + HIWORD(v8), 20 - v6);
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

BOOL GCExtendedGamepadSnapShotDataV100FromNSData(GCExtendedGamepadSnapShotDataV100 *snapshotData, NSData *data)
{
  v3 = data;
  v4 = v3;
  v5 = 0;
  if (snapshotData && v3)
  {
    v8 = 0;
    [(NSData *)v3 getBytes:&v8 length:4];
    v6 = HIWORD(v8);
    if (HIWORD(v8) <= 0x3Cu)
    {
      [(NSData *)v4 getBytes:snapshotData length:HIWORD(v8)];
      if (v6 != 60)
      {
        bzero(snapshotData + HIWORD(v8), 60 - v6);
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

NSData *__cdecl NSDataFromGCMicroGamepadSnapShotDataV100(GCMicroGamepadSnapShotDataV100 *snapshotData)
{
  if (snapshotData)
  {
    v2 = snapshotData;
    if (snapshotData->version)
    {
      v3 = MEMORY[0x1E695DEF0];
    }

    else
    {
      v5 = *&snapshotData->version;
      *&v6 = snapshotData->buttonX;
      LODWORD(v5) = 1310976;
      v3 = MEMORY[0x1E695DEF0];
      v2 = &v5;
    }

    snapshotData = [v3 dataWithBytes:v2 length:{20, v5, v6}];
    v1 = vars8;
  }

  return snapshotData;
}

NSData *__cdecl NSDataFromGCExtendedGamepadSnapShotDataV100(GCExtendedGamepadSnapShotDataV100 *snapshotData)
{
  if (snapshotData)
  {
    v2 = snapshotData;
    if (snapshotData->version)
    {
      v3 = MEMORY[0x1E695DEF0];
    }

    else
    {
      v4 = *&snapshotData->buttonB;
      v6 = *&snapshotData->version;
      v7 = v4;
      v8[0] = *&snapshotData->rightShoulder;
      *(v8 + 12) = *&snapshotData->rightThumbstickX;
      LODWORD(v6) = 3932416;
      v3 = MEMORY[0x1E695DEF0];
      v2 = &v6;
    }

    snapshotData = [v3 dataWithBytes:v2 length:{60, v6, v7, v8[0], v8[1]}];
    v1 = vars8;
  }

  return snapshotData;
}

id GCAgentServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA1338];
  v1 = GCVideoRelocationXPCProxyServiceRemoteClientInterface();
  [v0 setInterface:v1 forSelector:sel_connectToVideoRelocationXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v2 = GCVideoRelocationXPCProxyServiceRemoteServerInterface();
  [v0 setInterface:v2 forSelector:sel_connectToVideoRelocationXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v3 = GCGameIntentLauncherXPCServerInterface();
  [v0 setInterface:v3 forSelector:sel_connectToGameIntentLauncherXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v4 = GCGameIntentLauncherXPCClientInterface();
  [v0 setInterface:v4 forSelector:sel_connectToGameIntentLauncherXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v5 = GCUserDefaultsXPCProxyServiceRemoteClientInterface();
  [v0 setInterface:v5 forSelector:sel_connectToUserDefaultsXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v6 = GCUserDefaultsXPCProxyServiceRemoteServerInterface();
  [v0 setInterface:v6 forSelector:sel_connectToUserDefaultsXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1D2CDD3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2CDDC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GCBatteryXPCProxyRemoteClientEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4E929B0];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCBatteryXPCProxyRemoteServerEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4E92B40];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCBatteryXPCProxyServiceRemoteServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA5E90];
  v1 = GCBatteryXPCProxyRemoteClientEndpointInterface();
  [v0 setInterface:v1 forSelector:sel_batteryXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:0];

  v2 = GCBatteryXPCProxyRemoteServerEndpointInterface();
  [v0 setInterface:v2 forSelector:sel_batteryXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

__CFString *GCSystemGestureModeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Off";
  }

  else
  {
    return off_1E8418DB0[a1];
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

uint64_t HapticSharedMemory::allocate(HapticSharedMemory *a1, void **a2, _DWORD *a3)
{
  v6 = xpc_null_create();
  v7 = *a2;
  *a2 = v6;

  *a3 = 0;
  v14 = 1;
  v13 = &unk_1F4E38A38;
  v15 = 0;
  inited = SharableMemoryBlock::InitServer(a1, 0x189C0uLL, &v13);
  if (!inited)
  {
    HapticSharedMemory::clear(a1);
    v9 = v15;
    v10 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
    }

    v11 = *a2;
    *a2 = v10;

    *a3 = HIDWORD(v14);
  }

  SharableMemoryBlock::XPCServerToken::~XPCServerToken(&v13);
  return inited;
}

void sub_1D2CE03A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SharableMemoryBlock::XPCServerToken::~XPCServerToken(va);
  _Unwind_Resume(a1);
}

void HapticSharedMemory::clear(HapticSharedMemory *this)
{
  mBuffer = this->mBuffer;
  if (mBuffer)
  {
    if (gc_isInternalBuild())
    {
      HapticSharedMemory::clear();
    }

    v3 = LODWORD(this->mSize) - 16;
    mBuffer[1] = 0;
    mBuffer[2] = 0;
    *mBuffer = v3;
  }
}

void sub_1D2CE36C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  __destructor_8_s0_s8_s16(v17 + 40);
  __destructor_8_s0_s8_s16(va);
  _Unwind_Resume(a1);
}

__n128 __copy_constructor_8_8_s0_s8_s16_t24w64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = result;
  return result;
}

void __destructor_8_s0_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_1D2CE5FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id __copy_constructor_8_8_s0_t8w39_s48_s56_s64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 39);
  v5 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v5;
  *(a1 + 39) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

void __destructor_8_s0_s48_s56_s64(uint64_t a1)
{
  v2 = *(a1 + 64);
}

void sub_1D2CE6B14(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + *(v2 + 1820)));
  objc_exception_rethrow();
}

void sub_1D2CE6C74(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1D2CE6D90(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1D2CE739C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2CE7490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2CE7584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2CE7678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, a5, a6, &a9, 0x20u);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v10, OS_SIGNPOST_INTERVAL_END, v9, a5, a6, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_7_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return [v0 lastEventTimestamp];
}

id OUTLINED_FUNCTION_12_0()
{

  return objc_loadWeakRetained((v0 + 32));
}

void sub_1D2CE973C(_Unwind_Exception *a1)
{
  for (i = 0; i != -224; i -= 32)
  {
  }

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_1(void *a1, const char *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  return [a1 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 8 * (a4 - 1) + 24);

  return [(_GCDevicePhysicalInputInitializationContext *)a1 _stateMagic:v5];
}

id _gc_log_system_button()
{
  if (_gc_log_system_button_onceToken != -1)
  {
    _gc_log_system_button_cold_1();
  }

  v1 = _gc_log_system_button_Log;

  return v1;
}

void ___gc_log_system_button_block_invoke()
{
  v0 = os_log_create("com.apple.gamecontroller", "SystemButton");
  v1 = _gc_log_system_button_Log;
  _gc_log_system_button_Log = v0;
}

void SetupVirtualGameControllerIfForced()
{
  if (SetupVirtualGameControllerIfForced_onceToken != -1)
  {
    SetupVirtualGameControllerIfForced_cold_1();
  }
}

id VirtualControllerBundle()
{
  v0 = VirtualControllerBundle_Bundle;
  if (VirtualControllerBundle_Bundle)
  {
    goto LABEL_2;
  }

  v3 = GCFrameworkBundle();
  v4 = [v3 URLForResource:@"VirtualGameController" withExtension:@"bundle"];
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E696AAE8] bundleWithURL:v4];
    if (v6)
    {
      v7 = v6;
      v12 = 0;
      v8 = [v6 loadAndReturnError:&v12];
      v9 = v12;
      if (v8)
      {
        v10 = v7;
        v11 = VirtualControllerBundle_Bundle;
        VirtualControllerBundle_Bundle = v10;
      }

      else
      {
        v11 = _gc_log_virtualcontroller();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          VirtualControllerBundle_cold_1(v9, v11);
        }
      }

      if (v8)
      {
        v0 = VirtualControllerBundle_Bundle;
LABEL_2:
        v1 = v0;
        goto LABEL_3;
      }
    }

    else
    {
      VirtualControllerBundle_cold_2(v5, v3);
    }
  }

  else
  {
    VirtualControllerBundle_cold_3(v3);
  }

  v1 = 0;
LABEL_3:

  return v1;
}

void __ControllerAxisInputSetValue_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))(*(a1 + 64));
  v3 = _gc_log_signpost();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    __ControllerAxisInputSetValue_block_invoke_cold_1(a1);
  }
}

id gcBundle()
{
  if (gcBundle_onceToken != -1)
  {
    gcBundle_cold_1();
  }

  v1 = _gcBundle;

  return v1;
}

void __gcBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.GameController"];
  v1 = _gcBundle;
  _gcBundle = v0;
}

id GCExecutablePathWithPID()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v5 = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:proc_pidpath(v0 encoding:{buffer, 0x1000u), 4}];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

id GCBundleWithPID()
{
  v0 = GCExecutablePathWithPID();
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v0];
  if (v1)
  {
    v2 = _CFBundleCopyBundleURLForExecutableURL();
    if (v2)
    {
      v3 = [MEMORY[0x1E696AAE8] bundleWithURL:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id GCFrameworkBundle()
{
  if (GCFrameworkBundle_onceToken != -1)
  {
    GCFrameworkBundle_cold_1();
  }

  v1 = GCFrameworkBundle_bundle;

  return v1;
}

void __GCFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = GCFrameworkBundle_bundle;
  GCFrameworkBundle_bundle = v0;
}

id GCGameIntentBlocklist()
{
  if (GCGameIntentBlocklist_onceToken != -1)
  {
    GCGameIntentBlocklist_cold_1();
  }

  v1 = GCGameIntentBlocklist__gameIntentBlockList;

  return v1;
}

void __GCGameIntentBlocklist_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.mobilesafari", @"com.apple.SafariViewService", 0}];
  v1 = GCGameIntentBlocklist__gameIntentBlockList;
  GCGameIntentBlocklist__gameIntentBlockList = v0;
}

double clamp(double a1, double a2, double a3)
{
  if (a1 <= a3)
  {
    a3 = a1;
  }

  if (a1 >= a2)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

double GCNSTimeIntervalFromMachAbsoluteTime(uint64_t a1)
{
  if (GCNSTimeIntervalFromMachAbsoluteTime_once != -1)
  {
    GCNSTimeIntervalFromMachAbsoluteTime_cold_1();
  }

  return (GCNSTimeIntervalFromMachAbsoluteTime_sTimebaseInfo * a1 / *algn_1EC735F0C) / 1000000000.0;
}

__IOHIDDevice *deviceMatchesUsageAndUsagePage(__IOHIDDevice *result, int a2, int a3)
{
  if (result)
  {
    result = IOHIDDeviceGetProperty(result, @"DeviceUsagePairs");
    if (result)
    {
      v5 = result;
      Count = CFArrayGetCount(result);
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v7 = Count;
        v8 = 1;
        do
        {
          result = CFArrayGetValueAtIndex(v5, v8 - 1);
          if (result)
          {
            v9 = result;
            Value = CFDictionaryGetValue(result, @"DeviceUsage");
            v11 = CFDictionaryGetValue(v9, @"DeviceUsagePage");
            result = 0;
            if (Value)
            {
              if (v11)
              {
                v12 = CFGetTypeID(Value);
                if (v12 == CFNumberGetTypeID() && (v13 = CFGetTypeID(v11), v13 == CFNumberGetTypeID()))
                {
                  valuePtr = 0;
                  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
                  CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
                  result = (valuePtr == a2 && HIDWORD(valuePtr) == a3);
                }

                else
                {
                  result = 0;
                }
              }
            }
          }

          if (v8 >= v7)
          {
            break;
          }

          ++v8;
        }

        while (!result);
      }
    }
  }

  return result;
}

BOOL elementRangesMatch(__IOHIDElement *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  LogicalMin = IOHIDElementGetLogicalMin(a1);
  LogicalMax = IOHIDElementGetLogicalMax(a1);
  PhysicalMin = IOHIDElementGetPhysicalMin(a1);
  PhysicalMax = IOHIDElementGetPhysicalMax(a1);
  ReportSize = IOHIDElementGetReportSize(a1);
  ReportCount = IOHIDElementGetReportCount(a1);
  return LogicalMin == a2 && LogicalMax == a3 && PhysicalMin == a4 && PhysicalMax == a5 && ReportSize == a6 && ReportCount == a7;
}

BOOL serviceMatchesUsageAndUsagePage(__IOHIDServiceClient *a1, int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = IOHIDServiceClientCopyProperty(a1, @"DeviceUsagePairs");
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    v11 = 0;
  }

  else
  {
    v8 = Count;
    v9 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v9 - 1);
      v11 = ValueAtIndex;
      if (ValueAtIndex)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"DeviceUsage");
        v13 = CFDictionaryGetValue(v11, @"DeviceUsagePage");
        v11 = 0;
        if (Value)
        {
          v14 = v13;
          if (v13)
          {
            valuePtr = 0;
            CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
            CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
            v11 = valuePtr == a2 && HIDWORD(valuePtr) == a3;
          }
        }
      }

      if (v9 >= v8)
      {
        break;
      }

      ++v9;
    }

    while (!v11);
  }

  CFRelease(v6);
  return v11;
}

uint64_t isDeviceParentAuthenticated(__IOHIDServiceClient *a1)
{
  v2 = GC_IOHIDServiceClientGetStringProperty(a1, @"Transport");
  if ([v2 isEqualToString:@"USB"])
  {
    v3 = IOHIDServiceClientGetRegistryID(a1);
    v4 = *MEMORY[0x1E696CD60];
    v5 = IORegistryEntryIDMatching([v3 unsignedLongValue]);
    MatchingService = IOServiceGetMatchingService(v4, v5);
    if (MatchingService)
    {
      v7 = MatchingService;
      if (gc_isInternalBuild())
      {
        isDeviceParentAuthenticated_cold_1(v3);
      }

      v8 = IORegistryEntrySearchCFProperty(v7, "IOService", @"Authenticated", 0, 3u);
      if (v8)
      {
        if (gc_isInternalBuild())
        {
          isDeviceParentAuthenticated_cold_2();
        }

        v9 = [v8 BOOLValue];
      }

      else
      {
        v9 = 0;
      }

      IOObjectRelease(v7);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t isDeviceMFiGamepadCompliantForDeviceRef(__IOHIDDevice *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = IOHIDDeviceCopyMatchingElements(a1, 0, 0);
  v2 = v1;
  if (v1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v1;
    v3 = v1;
    v4 = [(__CFArray *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          UsagePage = IOHIDElementGetUsagePage(v11);
          Usage = IOHIDElementGetUsage(v11);
          if (UsagePage == 9)
          {
            if (Usage <= 8)
            {
              v8 |= 1 << (Usage - 1);
            }
          }

          else if (UsagePage == 1)
          {
            if (Usage - 144 <= 3)
            {
              v7 |= 1 << (Usage + 112);
            }
          }

          else
          {
            v15 = UsagePage == 12 && Usage == 547;
            v6 |= v15;
          }
        }

        v5 = [(__CFArray *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }

    v2 = v18;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  if (gc_isInternalBuild())
  {
    isDeviceMFiGamepadCompliantForDeviceRef_cold_1();
  }

  v16 = *MEMORY[0x1E69E9840];
  return ((~v8 | (~v7 & 0xF)) == 0) & v6;
}

uint64_t isDeviceKeyboard(__IOHIDServiceClient *a1)
{
  result = serviceMatchesUsageAndUsagePage(a1, 1, 6);
  if (result)
  {
    return isDeviceAppleDirectionalRemote(a1) ^ 1;
  }

  return result;
}

uint64_t isDeviceAppleDirectionalRemote(__IOHIDServiceClient *a1)
{
  v2 = GC_IOHIDServiceClientGetStringProperty(a1, @"VendorID");
  v3 = [v2 unsignedIntValue];

  v4 = GC_IOHIDServiceClientGetStringProperty(a1, @"ProductID");
  v5 = [v4 unsignedIntValue];

  v6 = (v5 & 0xFFFFFFFE) == 0x314 && v3 == 76;
  v7 = serviceMatchesUsageAndUsagePage(a1, 12, 1);
  v8 = serviceMatchesUsageAndUsagePage(a1, 13, 5);
  v10 = v3 == 147 && v5 == 40960 || v6;
  return v10 & v7 | ((v5 & 0xFFFFFFFE) == 788 && v8);
}

uint64_t isDeviceAppleSiriRemote(__IOHIDServiceClient *a1)
{
  v2 = GC_IOHIDServiceClientGetStringProperty(a1, @"VendorID");
  v3 = [v2 unsignedIntValue];

  v4 = GC_IOHIDServiceClientGetStringProperty(a1, @"ProductID");
  v5 = [v4 unsignedIntValue];

  v7 = v5 == 614 || v5 == 621;
  v8 = v3 == 76 && v7;
  v9 = 1;
  v10 = serviceMatchesUsageAndUsagePage(a1, 12, 1);
  v11 = serviceMatchesUsageAndUsagePage(a1, 13, 12);
  v12 = serviceMatchesUsageAndUsagePage(a1, 65280, 16);
  v13 = serviceMatchesUsageAndUsagePage(a1, 13, 5);
  if (!v8 || !v10 && !v12 && !v13)
  {
    return (v5 == 621 || v5 == 614) && v11;
  }

  return v9;
}

uint64_t isDeviceXbox(int a1, int a2)
{
  if (a1 != 1118)
  {
    return 0;
  }

  result = 1;
  if (a2 > 2817)
  {
    if ((a2 - 2818) <= 0x3A && ((1 << (a2 - 2)) & 0x4000003C0030409) != 0)
    {
      return result;
    }

    return 0;
  }

  if (a2 != 654 && a2 != 736 && a2 != 765)
  {
    return 0;
  }

  return result;
}

__CFString *VendorNameForATVProfile(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_1F4E9C418])
  {
    v2 = [v1 deviceType];
    if ((v2 - 1) > 4)
    {
      v3 = @"Unset";
    }

    else
    {
      v3 = off_1E8419300[v2 - 1];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL currentProcessHasEntitlement(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 UTF8String];
  v2 = xpc_copy_entitlement_for_self();
  v3 = v2;
  if (v2)
  {
    value = xpc_BOOL_get_value(v2);
    if (gc_isInternalBuild())
    {
      v5 = getGCLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (value)
        {
          v6 = @"YES";
        }

        v9 = 138412546;
        v10 = v1;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_INFO, "Does the current process have entitlement (%@)? %@", &v9, 0x16u);
      }

LABEL_13:
    }
  }

  else
  {
    if (gc_isInternalBuild())
    {
      v5 = getGCLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v1;
        _os_log_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_INFO, "Unable to find entitlement %@", &v9, 0xCu);
      }

      value = 0;
      goto LABEL_13;
    }

    value = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return value;
}

uint64_t currentProcessIsGameControllerDaemon()
{
  if (currentProcessIsGameControllerDaemon_onceToken != -1)
  {
    currentProcessIsGameControllerDaemon_cold_1();
  }

  return currentProcessIsGameControllerDaemon_IsGameControllerDaemon;
}

void __currentProcessIsGameControllerDaemon_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  currentProcessIsGameControllerDaemon_IsGameControllerDaemon = [v0 isEqualToString:@"com.apple.GameController.gamecontrollerd"];
}

id currentProcessBundleIdentifier()
{
  if (currentProcessBundleIdentifier_onceToken != -1)
  {
    currentProcessBundleIdentifier_cold_1();
  }

  v1 = currentProcessBundleIdentifier_currentProcessBundleIdentifier;

  return v1;
}

void __currentProcessBundleIdentifier_block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = currentProcessBundleIdentifier_currentProcessBundleIdentifier;
  currentProcessBundleIdentifier_currentProcessBundleIdentifier = v0;
}

__CFString *nameForKeyCode(uint64_t a1)
{
  if (nameForKeyCode_onceToken != -1)
  {
    nameForKeyCode_cold_1();
  }

  v2 = nameForKeyCode_dict;
  v3 = [MEMORY[0x1E696AD98] numberWithLong:a1];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F4E3B4E0;
  }

  v6 = v5;

  return v5;
}

void __nameForKeyCode_block_invoke()
{
  v138[134] = *MEMORY[0x1E69E9840];
  v136 = [MEMORY[0x1E696AD98] numberWithLong:4];
  v137[0] = v136;
  v138[0] = @"A";
  v135 = [MEMORY[0x1E696AD98] numberWithLong:5];
  v137[1] = v135;
  v138[1] = @"B";
  v134 = [MEMORY[0x1E696AD98] numberWithLong:6];
  v137[2] = v134;
  v138[2] = @"C";
  v133 = [MEMORY[0x1E696AD98] numberWithLong:7];
  v137[3] = v133;
  v138[3] = @"D";
  v132 = [MEMORY[0x1E696AD98] numberWithLong:8];
  v137[4] = v132;
  v138[4] = @"E";
  v131 = [MEMORY[0x1E696AD98] numberWithLong:9];
  v137[5] = v131;
  v138[5] = @"F";
  v130 = [MEMORY[0x1E696AD98] numberWithLong:10];
  v137[6] = v130;
  v138[6] = @"G";
  v129 = [MEMORY[0x1E696AD98] numberWithLong:11];
  v137[7] = v129;
  v138[7] = @"H";
  v128 = [MEMORY[0x1E696AD98] numberWithLong:12];
  v137[8] = v128;
  v138[8] = @"I";
  v127 = [MEMORY[0x1E696AD98] numberWithLong:13];
  v137[9] = v127;
  v138[9] = @"J";
  v126 = [MEMORY[0x1E696AD98] numberWithLong:14];
  v137[10] = v126;
  v138[10] = @"K";
  v125 = [MEMORY[0x1E696AD98] numberWithLong:15];
  v137[11] = v125;
  v138[11] = @"L";
  v124 = [MEMORY[0x1E696AD98] numberWithLong:16];
  v137[12] = v124;
  v138[12] = @"M";
  v123 = [MEMORY[0x1E696AD98] numberWithLong:17];
  v137[13] = v123;
  v138[13] = @"N";
  v122 = [MEMORY[0x1E696AD98] numberWithLong:18];
  v137[14] = v122;
  v138[14] = @"O";
  v121 = [MEMORY[0x1E696AD98] numberWithLong:19];
  v137[15] = v121;
  v138[15] = @"P";
  v120 = [MEMORY[0x1E696AD98] numberWithLong:20];
  v137[16] = v120;
  v138[16] = @"Q";
  v119 = [MEMORY[0x1E696AD98] numberWithLong:21];
  v137[17] = v119;
  v138[17] = @"R";
  v118 = [MEMORY[0x1E696AD98] numberWithLong:22];
  v137[18] = v118;
  v138[18] = @"S";
  v117 = [MEMORY[0x1E696AD98] numberWithLong:23];
  v137[19] = v117;
  v138[19] = @"T";
  v116 = [MEMORY[0x1E696AD98] numberWithLong:24];
  v137[20] = v116;
  v138[20] = @"U";
  v115 = [MEMORY[0x1E696AD98] numberWithLong:25];
  v137[21] = v115;
  v138[21] = @"V";
  v114 = [MEMORY[0x1E696AD98] numberWithLong:26];
  v137[22] = v114;
  v138[22] = @"W";
  v113 = [MEMORY[0x1E696AD98] numberWithLong:27];
  v137[23] = v113;
  v138[23] = @"X";
  v112 = [MEMORY[0x1E696AD98] numberWithLong:28];
  v137[24] = v112;
  v138[24] = @"Y";
  v111 = [MEMORY[0x1E696AD98] numberWithLong:29];
  v137[25] = v111;
  v138[25] = @"Z";
  v110 = [MEMORY[0x1E696AD98] numberWithLong:30];
  v137[26] = v110;
  v138[26] = @"One";
  v109 = [MEMORY[0x1E696AD98] numberWithLong:31];
  v137[27] = v109;
  v138[27] = @"Two";
  v108 = [MEMORY[0x1E696AD98] numberWithLong:32];
  v137[28] = v108;
  v138[28] = @"Three";
  v107 = [MEMORY[0x1E696AD98] numberWithLong:33];
  v137[29] = v107;
  v138[29] = @"Four";
  v106 = [MEMORY[0x1E696AD98] numberWithLong:34];
  v137[30] = v106;
  v138[30] = @"Five";
  v105 = [MEMORY[0x1E696AD98] numberWithLong:35];
  v137[31] = v105;
  v138[31] = @"Six";
  v104 = [MEMORY[0x1E696AD98] numberWithLong:36];
  v137[32] = v104;
  v138[32] = @"Seven";
  v103 = [MEMORY[0x1E696AD98] numberWithLong:37];
  v137[33] = v103;
  v138[33] = @"Eight";
  v102 = [MEMORY[0x1E696AD98] numberWithLong:38];
  v137[34] = v102;
  v138[34] = @"Nine";
  v101 = [MEMORY[0x1E696AD98] numberWithLong:39];
  v137[35] = v101;
  v138[35] = @"Zero";
  v100 = [MEMORY[0x1E696AD98] numberWithLong:40];
  v137[36] = v100;
  v138[36] = @"ReturnOrEnter";
  v99 = [MEMORY[0x1E696AD98] numberWithLong:41];
  v137[37] = v99;
  v138[37] = @"Escape";
  v98 = [MEMORY[0x1E696AD98] numberWithLong:42];
  v137[38] = v98;
  v138[38] = @"DeleteOrBackspace";
  v97 = [MEMORY[0x1E696AD98] numberWithLong:43];
  v137[39] = v97;
  v138[39] = @"Tab";
  v96 = [MEMORY[0x1E696AD98] numberWithLong:44];
  v137[40] = v96;
  v138[40] = @"Spacebar";
  v95 = [MEMORY[0x1E696AD98] numberWithLong:45];
  v137[41] = v95;
  v138[41] = @"Hyphen";
  v94 = [MEMORY[0x1E696AD98] numberWithLong:46];
  v137[42] = v94;
  v138[42] = @"EqualSign";
  v93 = [MEMORY[0x1E696AD98] numberWithLong:47];
  v137[43] = v93;
  v138[43] = @"OpenBracket";
  v92 = [MEMORY[0x1E696AD98] numberWithLong:48];
  v137[44] = v92;
  v138[44] = @"CloseBracket";
  v91 = [MEMORY[0x1E696AD98] numberWithLong:49];
  v137[45] = v91;
  v138[45] = @"Backslash";
  v90 = [MEMORY[0x1E696AD98] numberWithLong:50];
  v137[46] = v90;
  v138[46] = @"NonUSPound";
  v89 = [MEMORY[0x1E696AD98] numberWithLong:51];
  v137[47] = v89;
  v138[47] = @"Semicolon";
  v88 = [MEMORY[0x1E696AD98] numberWithLong:52];
  v137[48] = v88;
  v138[48] = @"Quote";
  v87 = [MEMORY[0x1E696AD98] numberWithLong:53];
  v137[49] = v87;
  v138[49] = @"GraveAccentAndTilde";
  v86 = [MEMORY[0x1E696AD98] numberWithLong:54];
  v137[50] = v86;
  v138[50] = @"Comma";
  v85 = [MEMORY[0x1E696AD98] numberWithLong:55];
  v137[51] = v85;
  v138[51] = @"Period";
  v84 = [MEMORY[0x1E696AD98] numberWithLong:56];
  v137[52] = v84;
  v138[52] = @"Slash";
  v83 = [MEMORY[0x1E696AD98] numberWithLong:57];
  v137[53] = v83;
  v138[53] = @"CapsLock";
  v82 = [MEMORY[0x1E696AD98] numberWithLong:58];
  v137[54] = v82;
  v138[54] = @"F1";
  v81 = [MEMORY[0x1E696AD98] numberWithLong:59];
  v137[55] = v81;
  v138[55] = @"F2";
  v80 = [MEMORY[0x1E696AD98] numberWithLong:60];
  v137[56] = v80;
  v138[56] = @"F3";
  v79 = [MEMORY[0x1E696AD98] numberWithLong:61];
  v137[57] = v79;
  v138[57] = @"F4";
  v78 = [MEMORY[0x1E696AD98] numberWithLong:62];
  v137[58] = v78;
  v138[58] = @"F5";
  v77 = [MEMORY[0x1E696AD98] numberWithLong:63];
  v137[59] = v77;
  v138[59] = @"F6";
  v76 = [MEMORY[0x1E696AD98] numberWithLong:64];
  v137[60] = v76;
  v138[60] = @"F7";
  v75 = [MEMORY[0x1E696AD98] numberWithLong:65];
  v137[61] = v75;
  v138[61] = @"F8";
  v74 = [MEMORY[0x1E696AD98] numberWithLong:66];
  v137[62] = v74;
  v138[62] = @"F9";
  v73 = [MEMORY[0x1E696AD98] numberWithLong:67];
  v137[63] = v73;
  v138[63] = @"F10";
  v72 = [MEMORY[0x1E696AD98] numberWithLong:68];
  v137[64] = v72;
  v138[64] = @"F11";
  v71 = [MEMORY[0x1E696AD98] numberWithLong:69];
  v137[65] = v71;
  v138[65] = @"F12";
  v70 = [MEMORY[0x1E696AD98] numberWithLong:104];
  v137[66] = v70;
  v138[66] = @"F13";
  v69 = [MEMORY[0x1E696AD98] numberWithLong:105];
  v137[67] = v69;
  v138[67] = @"F14";
  v68 = [MEMORY[0x1E696AD98] numberWithLong:106];
  v137[68] = v68;
  v138[68] = @"F15";
  v67 = [MEMORY[0x1E696AD98] numberWithLong:107];
  v137[69] = v67;
  v138[69] = @"F16";
  v66 = [MEMORY[0x1E696AD98] numberWithLong:108];
  v137[70] = v66;
  v138[70] = @"F17";
  v65 = [MEMORY[0x1E696AD98] numberWithLong:109];
  v137[71] = v65;
  v138[71] = @"F18";
  v64 = [MEMORY[0x1E696AD98] numberWithLong:110];
  v137[72] = v64;
  v138[72] = @"F19";
  v63 = [MEMORY[0x1E696AD98] numberWithLong:111];
  v137[73] = v63;
  v138[73] = @"F20";
  v62 = [MEMORY[0x1E696AD98] numberWithLong:70];
  v137[74] = v62;
  v138[74] = @"PrintScreen";
  v61 = [MEMORY[0x1E696AD98] numberWithLong:71];
  v137[75] = v61;
  v138[75] = @"ScrollLock";
  v60 = [MEMORY[0x1E696AD98] numberWithLong:72];
  v137[76] = v60;
  v138[76] = @"Pause";
  v59 = [MEMORY[0x1E696AD98] numberWithLong:73];
  v137[77] = v59;
  v138[77] = @"Insert";
  v58 = [MEMORY[0x1E696AD98] numberWithLong:74];
  v137[78] = v58;
  v138[78] = @"Home";
  v57 = [MEMORY[0x1E696AD98] numberWithLong:75];
  v137[79] = v57;
  v138[79] = @"PageUp";
  v56 = [MEMORY[0x1E696AD98] numberWithLong:76];
  v137[80] = v56;
  v138[80] = @"DeleteForward";
  v55 = [MEMORY[0x1E696AD98] numberWithLong:77];
  v137[81] = v55;
  v138[81] = @"End";
  v54 = [MEMORY[0x1E696AD98] numberWithLong:78];
  v137[82] = v54;
  v138[82] = @"PageDown";
  v53 = [MEMORY[0x1E696AD98] numberWithLong:79];
  v137[83] = v53;
  v138[83] = @"RightArrow";
  v52 = [MEMORY[0x1E696AD98] numberWithLong:80];
  v137[84] = v52;
  v138[84] = @"LeftArrow";
  v51 = [MEMORY[0x1E696AD98] numberWithLong:81];
  v137[85] = v51;
  v138[85] = @"DownArrow";
  v50 = [MEMORY[0x1E696AD98] numberWithLong:82];
  v137[86] = v50;
  v138[86] = @"UpArrow";
  v49 = [MEMORY[0x1E696AD98] numberWithLong:83];
  v137[87] = v49;
  v138[87] = @"KeypadNumLock";
  v48 = [MEMORY[0x1E696AD98] numberWithLong:84];
  v137[88] = v48;
  v138[88] = @"KeypadSlash";
  v47 = [MEMORY[0x1E696AD98] numberWithLong:85];
  v137[89] = v47;
  v138[89] = @"KeypadAsterisk";
  v46 = [MEMORY[0x1E696AD98] numberWithLong:45];
  v137[90] = v46;
  v138[90] = @"Hyphen";
  v45 = [MEMORY[0x1E696AD98] numberWithLong:87];
  v137[91] = v45;
  v138[91] = @"KeypadPlus";
  v44 = [MEMORY[0x1E696AD98] numberWithLong:88];
  v137[92] = v44;
  v138[92] = @"KeypadEnter";
  v43 = [MEMORY[0x1E696AD98] numberWithLong:89];
  v137[93] = v43;
  v138[93] = @"Keypad1";
  v42 = [MEMORY[0x1E696AD98] numberWithLong:90];
  v137[94] = v42;
  v138[94] = @"Keypad2";
  v41 = [MEMORY[0x1E696AD98] numberWithLong:91];
  v137[95] = v41;
  v138[95] = @"Keypad3";
  v40 = [MEMORY[0x1E696AD98] numberWithLong:92];
  v137[96] = v40;
  v138[96] = @"Keypad4";
  v39 = [MEMORY[0x1E696AD98] numberWithLong:93];
  v137[97] = v39;
  v138[97] = @"Keypad5";
  v38 = [MEMORY[0x1E696AD98] numberWithLong:94];
  v137[98] = v38;
  v138[98] = @"Keypad6";
  v37 = [MEMORY[0x1E696AD98] numberWithLong:95];
  v137[99] = v37;
  v138[99] = @"Keypad7";
  v36 = [MEMORY[0x1E696AD98] numberWithLong:96];
  v137[100] = v36;
  v138[100] = @"Keypad8";
  v35 = [MEMORY[0x1E696AD98] numberWithLong:97];
  v137[101] = v35;
  v138[101] = @"Keypad9";
  v34 = [MEMORY[0x1E696AD98] numberWithLong:98];
  v137[102] = v34;
  v138[102] = @"Keypad0";
  v33 = [MEMORY[0x1E696AD98] numberWithLong:99];
  v137[103] = v33;
  v138[103] = @"KeypadPeriod";
  v32 = [MEMORY[0x1E696AD98] numberWithLong:103];
  v137[104] = v32;
  v138[104] = @"KeypadEqualSign";
  v31 = [MEMORY[0x1E696AD98] numberWithLong:100];
  v137[105] = v31;
  v138[105] = @"NonUSBackslash";
  v30 = [MEMORY[0x1E696AD98] numberWithLong:101];
  v137[106] = v30;
  v138[106] = @"Application";
  v29 = [MEMORY[0x1E696AD98] numberWithLong:102];
  v137[107] = v29;
  v138[107] = @"Power";
  v28 = [MEMORY[0x1E696AD98] numberWithLong:135];
  v137[108] = v28;
  v138[108] = @"International1";
  v27 = [MEMORY[0x1E696AD98] numberWithLong:136];
  v137[109] = v27;
  v138[109] = @"International2";
  v26 = [MEMORY[0x1E696AD98] numberWithLong:137];
  v137[110] = v26;
  v138[110] = @"International3";
  v25 = [MEMORY[0x1E696AD98] numberWithLong:138];
  v137[111] = v25;
  v138[111] = @"International4";
  v24 = [MEMORY[0x1E696AD98] numberWithLong:139];
  v137[112] = v24;
  v138[112] = @"International5";
  v23 = [MEMORY[0x1E696AD98] numberWithLong:140];
  v137[113] = v23;
  v138[113] = @"International6";
  v22 = [MEMORY[0x1E696AD98] numberWithLong:141];
  v137[114] = v22;
  v138[114] = @"International7";
  v21 = [MEMORY[0x1E696AD98] numberWithLong:142];
  v137[115] = v21;
  v138[115] = @"International8";
  v20 = [MEMORY[0x1E696AD98] numberWithLong:143];
  v137[116] = v20;
  v138[116] = @"International9";
  v19 = [MEMORY[0x1E696AD98] numberWithLong:144];
  v137[117] = v19;
  v138[117] = @"LANG1";
  v18 = [MEMORY[0x1E696AD98] numberWithLong:145];
  v137[118] = v18;
  v138[118] = @"LANG2";
  v17 = [MEMORY[0x1E696AD98] numberWithLong:146];
  v137[119] = v17;
  v138[119] = @"LANG3";
  v16 = [MEMORY[0x1E696AD98] numberWithLong:147];
  v137[120] = v16;
  v138[120] = @"LANG4";
  v15 = [MEMORY[0x1E696AD98] numberWithLong:148];
  v137[121] = v15;
  v138[121] = @"LANG5";
  v14 = [MEMORY[0x1E696AD98] numberWithLong:149];
  v137[122] = v14;
  v138[122] = @"LANG6";
  v13 = [MEMORY[0x1E696AD98] numberWithLong:150];
  v137[123] = v13;
  v138[123] = @"LANG7";
  v0 = [MEMORY[0x1E696AD98] numberWithLong:151];
  v137[124] = v0;
  v138[124] = @"LANG8";
  v1 = [MEMORY[0x1E696AD98] numberWithLong:152];
  v137[125] = v1;
  v138[125] = @"LANG9";
  v2 = [MEMORY[0x1E696AD98] numberWithLong:224];
  v137[126] = v2;
  v138[126] = @"LeftControl";
  v3 = [MEMORY[0x1E696AD98] numberWithLong:225];
  v137[127] = v3;
  v138[127] = @"LeftShift";
  v4 = [MEMORY[0x1E696AD98] numberWithLong:226];
  v137[128] = v4;
  v138[128] = @"LeftAlt";
  v5 = [MEMORY[0x1E696AD98] numberWithLong:227];
  v137[129] = v5;
  v138[129] = @"LeftGUI";
  v6 = [MEMORY[0x1E696AD98] numberWithLong:228];
  v137[130] = v6;
  v138[130] = @"RightControl";
  v7 = [MEMORY[0x1E696AD98] numberWithLong:229];
  v137[131] = v7;
  v138[131] = @"RightShift";
  v8 = [MEMORY[0x1E696AD98] numberWithLong:230];
  v137[132] = v8;
  v138[132] = @"RightAlt";
  v9 = [MEMORY[0x1E696AD98] numberWithLong:231];
  v137[133] = v9;
  v138[133] = @"RightGUI";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:v137 count:134];
  v11 = nameForKeyCode_dict;
  nameForKeyCode_dict = v10;

  v12 = *MEMORY[0x1E69E9840];
}

BOOL GCCallerAddressIsGameControllerFramework()
{
  if (GCCallerAddressIsGameControllerFramework_onceToken != -1)
  {
    GCCallerAddressIsGameControllerFramework_cold_1();
  }

  return dyld_image_header_containing_address() == GCCallerAddressIsGameControllerFramework_GCFrameworkHeader;
}

uint64_t __GCCallerAddressIsGameControllerFramework_block_invoke()
{
  result = dyld_image_header_containing_address();
  GCCallerAddressIsGameControllerFramework_GCFrameworkHeader = result;
  return result;
}

unint64_t GCOverrideCurrentProcessLinkedOn(unint64_t a1)
{
  result = mapFromVersionSet(a1);
  OverrideLinkedOn = result;
  return result;
}

unint64_t mapFromVersionSet(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if (a1 == -1)
  {
    v2 = &dword_1D2DEE1E0;
    v3 = 6;
    while (*v2 != HIDWORD(a1))
    {
      v2 += 5;
      if (!--v3)
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"dyld_build_version_t mapFromVersionSet(dyld_build_version_t)"];
        [v4 handleFailureInFunction:v5 file:@"GCUtility.m" lineNumber:734 description:{@"No versionMap entry for combined version: %x.  Update versionMap!", v1}];

        v2 = 0;
        break;
      }
    }

    dyld_get_active_platform();
    base_platform = dyld_get_base_platform();
    if (base_platform <= 2)
    {
      if (base_platform == 1)
      {
        LODWORD(v1) = v2[1];
        LODWORD(a1) = 1;
        return a1 | (v1 << 32);
      }

      if (base_platform == 2)
      {
        LODWORD(v1) = v2[2];
LABEL_16:
        LODWORD(a1) = 2;
        return a1 | (v1 << 32);
      }

      goto LABEL_13;
    }

    if (base_platform == 3)
    {
      LODWORD(v1) = v2[3];
      goto LABEL_16;
    }

    if (base_platform != 11)
    {
LABEL_13:
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"dyld_build_version_t mapFromVersionSet(dyld_build_version_t)"];
      [v7 handleFailureInFunction:v8 file:@"GCUtility.m" lineNumber:745 description:@"Unknown platform!"];

      LODWORD(a1) = 0;
      LODWORD(v1) = 0;
      return a1 | (v1 << 32);
    }

    LODWORD(v1) = v2[4];
    LODWORD(a1) = 11;
  }

  return a1 | (v1 << 32);
}

uint64_t GCCurrentProcessLinkedOnAfter(unint64_t a1)
{
  if (OverrideLinkedOn)
  {
    v2 = mapFromVersionSet(a1);
    return OverrideLinkedOn == v2 && HIDWORD(OverrideLinkedOn) >= HIDWORD(v2);
  }

  else
  {

    return dyld_program_sdk_at_least();
  }
}

id loadNSDictionaryFromJSON(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v5 = [v4 pathForResource:v3 ofType:@"json"];
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5 options:1 error:0];
  v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    loadNSDictionaryFromJSON_cold_1();
  }

  return v7;
}

uint64_t GCBypassMFiAuthentication()
{
  if (GCBypassMFiAuthentication_onceToken != -1)
  {
    GCBypassMFiAuthentication_cold_1();
  }

  return GCBypassMFiAuthentication_bypassMFiAuthentication;
}

void __GCBypassMFiAuthentication_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.GameController"];
  GCBypassMFiAuthentication_bypassMFiAuthentication = [v0 BOOLForKey:@"GCMFiAuthBypassEnable"];
  if (gc_isInternalBuild())
  {
    __GCBypassMFiAuthentication_block_invoke_cold_1();
  }
}

uint64_t xAxisUpdateContext(uint64_t a1)
{
  v2 = xAxisUpdateContext_Offset;
  if (xAxisUpdateContext_Offset == -1)
  {
    xAxisUpdateContext_cold_1();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v3;
    v2 = xAxisUpdateContext_Offset;
  }

  return a1 + v3 + v2;
}

uint64_t yAxisUpdateContext(uint64_t a1)
{
  v2 = yAxisUpdateContext_Offset;
  if (yAxisUpdateContext_Offset == -1)
  {
    yAxisUpdateContext_cold_1();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v3;
    v2 = yAxisUpdateContext_Offset;
  }

  return a1 + v3 + v2;
}

uint64_t upButtonUpdateContext(uint64_t a1)
{
  v2 = upButtonUpdateContext_Offset;
  if (upButtonUpdateContext_Offset == -1)
  {
    upButtonUpdateContext_cold_1();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v3;
    v2 = upButtonUpdateContext_Offset;
  }

  return a1 + v3 + v2;
}

uint64_t downButtonUpdateContext(uint64_t a1)
{
  v2 = downButtonUpdateContext_Offset;
  if (downButtonUpdateContext_Offset == -1)
  {
    downButtonUpdateContext_cold_1();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v3;
    v2 = downButtonUpdateContext_Offset;
  }

  return a1 + v3 + v2;
}

uint64_t leftButtonUpdateContext(uint64_t a1)
{
  v2 = leftButtonUpdateContext_Offset;
  if (leftButtonUpdateContext_Offset == -1)
  {
    leftButtonUpdateContext_cold_1();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v3;
    v2 = leftButtonUpdateContext_Offset;
  }

  return a1 + v3 + v2;
}

uint64_t rightButtonUpdateContext(uint64_t a1)
{
  v2 = rightButtonUpdateContext_Offset;
  if (rightButtonUpdateContext_Offset == -1)
  {
    rightButtonUpdateContext_cold_1();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v3;
    v2 = rightButtonUpdateContext_Offset;
  }

  return a1 + v3 + v2;
}

uint64_t pressUpdateContext(uint64_t a1)
{
  v2 = pressUpdateContext_Offset;
  if (pressUpdateContext_Offset == -1)
  {
    pressUpdateContext_cold_1();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v3;
    v2 = pressUpdateContext_Offset;
  }

  return a1 + v3 + v2;
}

uint64_t touchUpdateContext(uint64_t a1)
{
  v2 = touchUpdateContext_Offset;
  if (touchUpdateContext_Offset == -1)
  {
    touchUpdateContext_cold_1();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v3;
    v2 = touchUpdateContext_Offset;
  }

  return a1 + v3 + v2;
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1)
{

  return [_GCDevicePhysicalInputPressInput update:v1 withValue:a1 timestamp:v3];
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1)
{

  return [v1 update:v2 forUsages:v3 with:a1];
}

uint64_t OUTLINED_FUNCTION_27@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{

  return [(_GCDevicePhysicalInputAxis2DInput *)v2 update:v5 withValue:v6 timestamp:?];
}

uint64_t OUTLINED_FUNCTION_32@<X0>(uint64_t a1@<X8>)
{

  return [(_GCDevicePhysicalInputView *)v1 _primitiveValueForSlot:?];
}

void OUTLINED_FUNCTION_36(uint64_t a1, const char *a2, uint64_t a3, ptrdiff_t a4)
{

  objc_setProperty_nonatomic_copy(v4, a2, v5, a4);
}

uint64_t OUTLINED_FUNCTION_41(uint64_t result)
{
  *(v2 + 1400) = result;
  v3 = *(v1 + 3904) == 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_48(uint64_t result)
{

  return [(_GCDevicePhysicalInputJoystickElement *)result _xy];
}

uint64_t OUTLINED_FUNCTION_49@<X0>(uint64_t a1@<X8>)
{

  return [(_GCDevicePhysicalInputView *)v1 _primitiveValueForSlot:?];
}

uint64_t OUTLINED_FUNCTION_50@<X0>(uint64_t a1@<X8>)
{

  return [(_GCDevicePhysicalInputView *)v1 _primitiveValueForSlot:?];
}

uint64_t OUTLINED_FUNCTION_51@<X0>(uint64_t a1@<X8>)
{

  return [(_GCDevicePhysicalInputView *)v1 _primitiveValueForSlot:?];
}

uint64_t OUTLINED_FUNCTION_52@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return [(_GCDevicePhysicalInputView *)v2 _testAndSetPrimitiveValue:a1 forSlot:v2 + a2];
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2)
{

  return [_GCDevicePhysicalInputAxisInput update:a1 withValue:a2 timestamp:v3];
}

uint64_t OUTLINED_FUNCTION_54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return [(_GCDevicePhysicalInputView *)v2 _testAndSetPrimitiveValue:a1 forSlot:v2 + a2];
}

uint64_t _dependentNotificationInit()
{
  result = currentProcessIsGameControllerDaemon();
  if ((result & 1) == 0)
  {
    return +[_GCLegacyDeviceSession sharedInstance];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4@<X0>(uint64_t a1@<X8>)
{

  return [(_GCDevicePhysicalInputView *)v1 _primitiveValueForSlot:?];
}

uint64_t OUTLINED_FUNCTION_4_4@<X0>(uint64_t a1@<X8>)
{

  return [(_GCDevicePhysicalInputView *)v1 _primitiveValueForSlot:?];
}

void HandleReport(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v97 = *MEMORY[0x1E69E9840];
  v12 = a1;
  if (gc_isInternalBuild())
  {
    HandleReport_cold_1(a5, a7);
    if (a4)
    {
      goto LABEL_237;
    }
  }

  else if (a4)
  {
    goto LABEL_237;
  }

  if (*(v12 + 7) == a3)
  {
    v13 = objc_opt_new();
    v15 = v13;
    v16 = v12[19];
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        if (v16 != 3)
        {
          goto LABEL_236;
        }

        if (a5)
        {
          if (gc_isInternalBuild())
          {
            v17 = getGCLogger();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_207;
            }

            goto LABEL_235;
          }

          goto LABEL_236;
        }

        goto LABEL_138;
      }

      if (a5 != 1)
      {
        if (gc_isInternalBuild())
        {
          v17 = getGCLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
LABEL_207:
            HandleReport_cold_2();
          }

LABEL_235:
        }

LABEL_236:

        goto LABEL_237;
      }

      LODWORD(v14) = 1.0;
      v41 = *(a6 + 1) & 0xF;
      if ((*(a6 + 1) & 0xF) != 0)
      {
        v14 = 0.0;
        if (v41 == 1)
        {
          *&v14 = 1.0;
        }

        if (v41 == 7)
        {
          *&v14 = 1.0;
        }
      }

      [v13 setDpadUpValue:v14];
      v43 = *(a6 + 1) & 0xF;
      if (v43 == 5)
      {
        *&v42 = 1.0;
      }

      else
      {
        *&v42 = 0.0;
      }

      if ((v43 - 3) < 2)
      {
        *&v42 = 1.0;
      }

      [v15 setDpadDownValue:v42];
      v45 = *(a6 + 1) & 0xF;
      if (v45 == 7)
      {
        *&v44 = 1.0;
      }

      else
      {
        *&v44 = 0.0;
      }

      if ((v45 - 5) < 2)
      {
        *&v44 = 1.0;
      }

      [v15 setDpadLeftValue:v44];
      v47 = *(a6 + 1) & 0xF;
      if (v47 == 3)
      {
        *&v46 = 1.0;
      }

      else
      {
        *&v46 = 0.0;
      }

      if ((v47 - 1) < 2)
      {
        *&v46 = 1.0;
      }

      [v15 setDpadRightValue:v46];
      if ((*(a6 + 1) & 0x10) != 0)
      {
        *&v48 = 1.0;
      }

      else
      {
        *&v48 = 0.0;
      }

      [v15 setButtonAValue:v48];
      if ((*(a6 + 1) & 0x20) != 0)
      {
        *&v49 = 1.0;
      }

      else
      {
        *&v49 = 0.0;
      }

      [v15 setButtonBValue:v49];
      if (*(a6 + 1) < 0)
      {
        *&v50 = 1.0;
      }

      else
      {
        *&v50 = 0.0;
      }

      [v15 setButtonYValue:v50];
      if ((*(a6 + 1) & 0x40) != 0)
      {
        *&v51 = 1.0;
      }

      else
      {
        *&v51 = 0.0;
      }

      [v15 setButtonXValue:v51];
      if ((*(a6 + 2) & 8) != 0)
      {
        *&v52 = 1.0;
      }

      else
      {
        *&v52 = 0.0;
      }

      [v15 setLeftTrigger:v52];
      if ((*(a6 + 2) & 4) != 0)
      {
        *&v53 = 1.0;
      }

      else
      {
        *&v53 = 0.0;
      }

      [v15 setRightTrigger:v53];
      if ((*(a6 + 2) & 0x20) != 0)
      {
        *&v54 = 1.0;
      }

      else
      {
        *&v54 = 0.0;
      }

      [v15 setLeftThumbstickButton:v54];
      if ((*(a6 + 2) & 0x10) != 0)
      {
        *&v55 = 1.0;
      }

      else
      {
        *&v55 = 0.0;
      }

      [v15 setRightThumbstickButton:v55];
      if ((*(a6 + 2) & 2) != 0)
      {
        *&v56 = 1.0;
      }

      else
      {
        *&v56 = 0.0;
      }

      [v15 setButtonLeftShoulder:v56];
      if (*(a6 + 2))
      {
        *&v57 = 1.0;
      }

      else
      {
        *&v57 = 0.0;
      }

      [v15 setButtonRightShoulder:v57];
      if ((*(a6 + 2) & 0x40) != 0)
      {
        *&v58 = 1.0;
      }

      else
      {
        *&v58 = 0.0;
      }

      [v15 setButtonHome:v58];
      *&v59 = (*(a6 + 6) ^ 0xFFu) / 255.0;
      [v15 setButtonSpecial0:v59];
      *&v60 = ~(*(a6 + 6) >> 8) / 255.0;
      [v15 setButtonSpecial1:v60];
      *&v61 = (*(a6 + 8) ^ 0xFFu) / 255.0;
      [v15 setButtonSpecial2:v61];
      *&v62 = (*(a6 + 4) - 0x7FFF) / 32767.0;
      [v15 setButtonSpecial3:v62];
      v40 = (*(a6 + 2) >> 7) & 0x7F;
    }

    else
    {
      if (v16)
      {
        if (v16 != 1)
        {
          goto LABEL_236;
        }

        if (a5)
        {
          if (gc_isInternalBuild())
          {
            v17 = getGCLogger();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_207;
            }

            goto LABEL_235;
          }

          goto LABEL_236;
        }

LABEL_138:
        v63 = 1.0;
        LODWORD(v14) = 1.0;
        v64 = *a6 & 0xF;
        if (v64)
        {
          v14 = 0.0;
          if (v64 == 1)
          {
            *&v14 = 1.0;
          }

          if (v64 == 7)
          {
            *&v14 = 1.0;
          }
        }

        [v13 setDpadUpValue:v14];
        if ((*a6 & 0xF) == 5)
        {
          *&v65 = 1.0;
        }

        else
        {
          *&v65 = 0.0;
        }

        if ((*a6 & 0xFu) - 3 < 2)
        {
          *&v65 = 1.0;
        }

        [v15 setDpadDownValue:v65];
        if ((*a6 & 0xF) == 7)
        {
          *&v66 = 1.0;
        }

        else
        {
          *&v66 = 0.0;
        }

        if ((*a6 & 0xFu) - 5 < 2)
        {
          *&v66 = 1.0;
        }

        [v15 setDpadLeftValue:v66];
        if ((*a6 & 0xF) == 3)
        {
          *&v67 = 1.0;
        }

        else
        {
          *&v67 = 0.0;
        }

        if ((*a6 & 0xFu) - 1 < 2)
        {
          *&v67 = 1.0;
        }

        [v15 setDpadRightValue:v67];
        if ((*a6 & 0x10) != 0)
        {
          *&v68 = 1.0;
        }

        else
        {
          *&v68 = 0.0;
        }

        [v15 setButtonAValue:v68];
        if ((*a6 & 0x40) != 0)
        {
          *&v69 = 1.0;
        }

        else
        {
          *&v69 = 0.0;
        }

        [v15 setButtonBValue:v69];
        if ((*a6 & 0x80) != 0)
        {
          *&v70 = 1.0;
        }

        else
        {
          *&v70 = 0.0;
        }

        [v15 setButtonYValue:v70];
        if ((*a6 & 0x20) != 0)
        {
          *&v71 = 1.0;
        }

        else
        {
          *&v71 = 0.0;
        }

        [v15 setButtonXValue:v71];
        if ((*a6 & 0x800) != 0)
        {
          *&v72 = 1.0;
        }

        else
        {
          *&v72 = 0.0;
        }

        [v15 setLeftTrigger:v72];
        if ((*a6 & 0x400) != 0)
        {
          *&v73 = 1.0;
        }

        else
        {
          *&v73 = 0.0;
        }

        [v15 setRightTrigger:v73];
        if ((*a6 & 0x8000) != 0)
        {
          *&v74 = 1.0;
        }

        else
        {
          *&v74 = 0.0;
        }

        [v15 setLeftThumbstickButton:v74];
        if ((*a6 & 0x4000) != 0)
        {
          *&v75 = 1.0;
        }

        else
        {
          *&v75 = 0.0;
        }

        [v15 setRightThumbstickButton:v75];
        if ((*a6 & 0x200) != 0)
        {
          *&v76 = 1.0;
        }

        else
        {
          *&v76 = 0.0;
        }

        [v15 setButtonLeftShoulder:v76];
        if ((*a6 & 0x100) != 0)
        {
          *&v77 = 1.0;
        }

        else
        {
          *&v77 = 0.0;
        }

        [v15 setButtonRightShoulder:v77];
        if ((*a6 & 0x10000000) != 0)
        {
          *&v78 = 1.0;
        }

        else
        {
          *&v78 = 0.0;
        }

        [v15 setButtonHome:v78];
        if ((*a6 & 0x2000) != 0)
        {
          *&v79 = 1.0;
        }

        else
        {
          *&v79 = 0.0;
        }

        [v15 setButtonOptions:v79];
        if ((*a6 & 0x1000) != 0)
        {
          *&v80 = 1.0;
        }

        else
        {
          *&v80 = 0.0;
        }

        [v15 setButtonSpecial15:v80];
        *&v81 = (*(a6 + 6) ^ 0xFFu) / 255.0;
        [v15 setButtonSpecial0:v81];
        *&v82 = (~*(a6 + 6) >> 8) / 255.0;
        [v15 setButtonSpecial1:v82];
        *&v83 = (*(a6 + 8) ^ 0xFFu) / 255.0;
        [v15 setButtonSpecial2:v83];
        *&v84 = (*(a6 + 4) - 0x7FFF) / 32767.0;
        [v15 setButtonSpecial3:v84];
        v85 = *(a6 + 2) & 0x7F;
        if (v85 > 7)
        {
          if ((*(a6 + 2) & 0x7Fu) <= 0x1F)
          {
            if (v85 != 8)
            {
              if (v85 != 16)
              {
                goto LABEL_225;
              }

LABEL_220:
              v63 = 5.0;
              goto LABEL_228;
            }

LABEL_221:
            v63 = 4.0;
            goto LABEL_228;
          }

          if (v85 != 32)
          {
            if (v85 == 64)
            {
              goto LABEL_224;
            }

LABEL_225:
            v63 = 0.0;
            goto LABEL_228;
          }

          goto LABEL_226;
        }

        if (v85 == 1)
        {
          goto LABEL_228;
        }

        if (v85 != 2)
        {
          if (v85 != 4)
          {
            goto LABEL_225;
          }

          goto LABEL_215;
        }

        goto LABEL_219;
      }

      if (a5 != 1)
      {
        if (gc_isInternalBuild())
        {
          v17 = getGCLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_207;
          }

          goto LABEL_235;
        }

        goto LABEL_236;
      }

      LODWORD(v14) = 1.0;
      v18 = *(a6 + 1) & 0xF;
      if (v18)
      {
        v14 = 0.0;
        if (v18 == 1)
        {
          *&v14 = 1.0;
        }

        if (v18 == 7)
        {
          *&v14 = 1.0;
        }
      }

      [v13 setDpadUpValue:v14];
      if ((*(a6 + 1) & 0xF) == 5)
      {
        *&v19 = 1.0;
      }

      else
      {
        *&v19 = 0.0;
      }

      if ((*(a6 + 1) & 0xFu) - 3 < 2)
      {
        *&v19 = 1.0;
      }

      [v15 setDpadDownValue:v19];
      if ((*(a6 + 1) & 0xF) == 7)
      {
        *&v20 = 1.0;
      }

      else
      {
        *&v20 = 0.0;
      }

      if ((*(a6 + 1) & 0xFu) - 5 < 2)
      {
        *&v20 = 1.0;
      }

      [v15 setDpadLeftValue:v20];
      if ((*(a6 + 1) & 0xF) == 3)
      {
        *&v21 = 1.0;
      }

      else
      {
        *&v21 = 0.0;
      }

      if ((*(a6 + 1) & 0xFu) - 1 < 2)
      {
        *&v21 = 1.0;
      }

      [v15 setDpadRightValue:v21];
      if ((*(a6 + 1) & 0x10) != 0)
      {
        *&v22 = 1.0;
      }

      else
      {
        *&v22 = 0.0;
      }

      [v15 setButtonAValue:v22];
      if ((*(a6 + 1) & 0x20) != 0)
      {
        *&v23 = 1.0;
      }

      else
      {
        *&v23 = 0.0;
      }

      [v15 setButtonBValue:v23];
      if ((*(a6 + 1) & 0x80) != 0)
      {
        *&v24 = 1.0;
      }

      else
      {
        *&v24 = 0.0;
      }

      [v15 setButtonYValue:v24];
      if ((*(a6 + 1) & 0x40) != 0)
      {
        *&v25 = 1.0;
      }

      else
      {
        *&v25 = 0.0;
      }

      [v15 setButtonXValue:v25];
      if ((*(a6 + 1) & 0x800) != 0)
      {
        *&v26 = 1.0;
      }

      else
      {
        *&v26 = 0.0;
      }

      [v15 setLeftTrigger:v26];
      if ((*(a6 + 1) & 0x400) != 0)
      {
        *&v27 = 1.0;
      }

      else
      {
        *&v27 = 0.0;
      }

      [v15 setRightTrigger:v27];
      if ((*(a6 + 1) & 0x2000) != 0)
      {
        *&v28 = 1.0;
      }

      else
      {
        *&v28 = 0.0;
      }

      [v15 setLeftThumbstickButton:v28];
      if ((*(a6 + 1) & 0x1000) != 0)
      {
        *&v29 = 1.0;
      }

      else
      {
        *&v29 = 0.0;
      }

      [v15 setRightThumbstickButton:v29];
      if ((*(a6 + 1) & 0x200) != 0)
      {
        *&v30 = 1.0;
      }

      else
      {
        *&v30 = 0.0;
      }

      [v15 setButtonLeftShoulder:v30];
      if ((*(a6 + 1) & 0x100) != 0)
      {
        *&v31 = 1.0;
      }

      else
      {
        *&v31 = 0.0;
      }

      [v15 setButtonRightShoulder:v31];
      if ((*(a6 + 1) & 0x4000) != 0)
      {
        *&v32 = 1.0;
      }

      else
      {
        *&v32 = 0.0;
      }

      [v15 setButtonHome:v32];
      if ((*(a6 + 1) & 0x400) != 0)
      {
        *&v33 = 1.0;
      }

      else
      {
        *&v33 = 0.0;
      }

      [v15 setButtonMenu:v33];
      if ((*(a6 + 1) & 0x800) != 0)
      {
        *&v34 = 1.0;
      }

      else
      {
        *&v34 = 0.0;
      }

      [v15 setButtonOptions:v34];
      *&v35 = (*(a6 + 7) ^ 0xFFu) / 255.0;
      [v15 setButtonSpecial0:v35];
      *&v36 = ~(*(a6 + 7) >> 8) / 255.0;
      [v15 setButtonSpecial1:v36];
      *&v37 = (*(a6 + 9) ^ 0xFFu) / 255.0;
      [v15 setButtonSpecial2:v37];
      *&v38 = (*(a6 + 5) - 0x7FFF) / 32767.0;
      [v15 setButtonSpecial3:v38];
      v40 = (*(a6 + 1) >> 15) & 0x7F;
    }

    if (v40 > 7)
    {
      if (v40 > 31)
      {
        if (v40 == 32)
        {
          goto LABEL_220;
        }

        if (v40 != 64)
        {
          goto LABEL_225;
        }

LABEL_226:
        v63 = 6.0;
        goto LABEL_228;
      }

      if (v40 != 8)
      {
        if (v40 == 16)
        {
          goto LABEL_221;
        }

        goto LABEL_225;
      }

LABEL_215:
      v63 = 3.0;
      goto LABEL_228;
    }

    if (v40 == 1)
    {
LABEL_224:
      v63 = -1.0;
      goto LABEL_228;
    }

    if (v40 == 2)
    {
      v63 = 1.0;
LABEL_228:
      *&v39 = v63;
      [v15 setButtonSpecial4:v39];
      v17 = objc_getProperty(v12, v86, 144, 1);
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v87 = [v17 countByEnumeratingWithState:&v92 objects:v96 count:16];
      if (v87)
      {
        v88 = v87;
        v89 = *v93;
        do
        {
          for (i = 0; i != v88; ++i)
          {
            if (*v93 != v89)
            {
              objc_enumerationMutation(v17);
            }

            (*(*(*(&v92 + 1) + 8 * i) + 16))();
          }

          v88 = [v17 countByEnumeratingWithState:&v92 objects:v96 count:16];
        }

        while (v88);
      }

      goto LABEL_235;
    }

    if (v40 != 4)
    {
      goto LABEL_225;
    }

LABEL_219:
    v63 = 2.0;
    goto LABEL_228;
  }

LABEL_237:

  v91 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

__CFString *GCInputBackLeftButton(uint64_t a1)
{
  if (a1 < 0)
  {
    GCInputBackLeftButton_cold_1(a1);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v1 = @"Back Left Button 1";
    }

    else
    {
      v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Back Left Button %ld", a1];
    }
  }

  else
  {
    v1 = @"Back Left Button 0";
  }

  return v1;
}

__CFString *GCInputBackRightButton(uint64_t a1)
{
  if (a1 < 0)
  {
    GCInputBackLeftButton_cold_1(a1);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v1 = @"Back Right Button 1";
    }

    else
    {
      v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Back Right Button %ld", a1];
    }
  }

  else
  {
    v1 = @"Back Right Button 0";
  }

  return v1;
}

void OUTLINED_FUNCTION_0_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t result)
{
  *(v2 + 1640) = result;
  v3 = *(v1 + 3944) == 0;
  return result;
}

id GCControllerServiceRemoteClientInterface()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA1CF8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_publishControllers_ argumentIndex:0 ofReply:0];

  v4 = GCIPCObjectIdentifier_Classes();
  v9[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [v4 setByAddingObjectsFromArray:v5];
  [v0 setClasses:v6 forSelector:sel_unpublishControllersWithIdentifiers_ argumentIndex:0 ofReply:0];

  v7 = *MEMORY[0x1E69E9840];

  return v0;
}

id GCControllerServiceRemoteServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA61B0];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_fetchControllerDescriptionsWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1D2CFE500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2CFECD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GCMotionXPCProxyRemoteClientEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4E98F30];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCMotionXPCProxyRemoteServerEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4E99020];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCMotionXPCProxyServiceRemoteServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA5F30];
  v1 = GCMotionXPCProxyRemoteClientEndpointInterface();
  [v0 setInterface:v1 forSelector:sel_motionXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:0];

  v2 = GCMotionXPCProxyRemoteServerEndpointInterface();
  [v0 setInterface:v2 forSelector:sel_motionXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCIPCObjectIdentifier_Classes()
{
  if (GCIPCObjectIdentifier_Classes_onceToken != -1)
  {
    GCIPCObjectIdentifier_Classes_cold_1();
  }

  v1 = GCIPCObjectIdentifier_Classes_IPCObjectIdentifierTypes;

  return v1;
}

void sub_1D2CFFC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x16u);
}

void sub_1D2D02AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D02C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_0_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0xCu);
}

id GCUserDefaultsXPCProxyServiceRemoteServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA11F0];
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EB2FB8];
  [v0 setInterface:v1 forSelector:sel_userDefaultsCheckIn_ argumentIndex:0 ofReply:0];

  return v0;
}

id _GCHIDEventSourceDescription_Classes()
{
  if (_GCHIDEventSourceDescription_Classes_onceToken != -1)
  {
    _GCHIDEventSourceDescription_Classes_cold_1();
  }

  v1 = _GCHIDEventSourceDescription_Classes_Classes;

  return v1;
}

void sub_1D2D086B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D0A284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void DecodeJoyConRGBColor(void *a1, _BYTE *a2)
{
  v8 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v8;
  if (isKindOfClass)
  {
    v5 = [v8 objectForKeyedSubscript:@"red"];
    v6 = [v8 objectForKeyedSubscript:@"green"];
    v7 = [v8 objectForKeyedSubscript:@"blue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *a2 = [v5 intValue];
          a2[1] = [v6 intValue];
          a2[2] = [v7 intValue];
        }
      }
    }

    v4 = v8;
  }
}

void sub_1D2D0B8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 40));
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_1D2D0CDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL OUTLINED_FUNCTION_4_5(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t __gc_isInternalBuild_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  gc_isInternalBuild_isInternalBuild = result;
  return result;
}

void __getGCLogger_block_invoke()
{
  v0 = os_log_create("com.apple.GameController", "default");
  v1 = gcLogger;
  gcLogger = v0;
}

id getGCAppStateMonitorLogger()
{
  if (getGCAppStateMonitorLogger_onceToken != -1)
  {
    getGCAppStateMonitorLogger_cold_1();
  }

  v1 = gcAppStateMonitorLogger;

  return v1;
}

void __getGCAppStateMonitorLogger_block_invoke()
{
  v0 = os_log_create("com.apple.GameController", "monitor");
  v1 = gcAppStateMonitorLogger;
  gcAppStateMonitorLogger = v0;
}

id getGCAnalyticsLogger()
{
  if (getGCAnalyticsLogger_onceToken != -1)
  {
    getGCAnalyticsLogger_cold_1();
  }

  v1 = gcAnalyticsLogger;

  return v1;
}

void __getGCAnalyticsLogger_block_invoke()
{
  v0 = os_log_create("com.apple.GameController", "analytics");
  v1 = gcAnalyticsLogger;
  gcAnalyticsLogger = v0;
}

id getGCDLogger()
{
  if (getGCDLogger_onceToken != -1)
  {
    getGCDLogger_cold_1();
  }

  v1 = gcdLogger;

  return v1;
}

void __getGCDLogger_block_invoke()
{
  v0 = os_log_create("com.apple.GameController.Daemon", "default");
  v1 = gcdLogger;
  gcdLogger = v0;
}

void setGCHIDLoggerCategory(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = gcHIDLogger;
  gcHIDLogger = v1;
}

id getGCHIDLogger()
{
  if (getGCHIDLogger_onceToken != -1)
  {
    getGCHIDLogger_cold_1();
  }

  v1 = gcHIDLogger;

  return v1;
}

void __getGCHIDLogger_block_invoke()
{
  if (!gcHIDLogger)
  {
    objc_storeStrong(&gcHIDLogger, MEMORY[0x1E69E9C10]);
  }
}

id getGCSettingsLogger()
{
  if (getGCSettingsLogger_onceToken != -1)
  {
    getGCSettingsLogger_cold_1();
  }

  v1 = gcSettingsLogger;

  return v1;
}

void __getGCSettingsLogger_block_invoke()
{
  v0 = os_log_create("com.apple.GameController.Settings", "default");
  v1 = gcSettingsLogger;
  gcSettingsLogger = v0;
}

id getGCHapticsLogger()
{
  if (getGCHapticsLogger_onceToken != -1)
  {
    getGCHapticsLogger_cold_1();
  }

  v1 = gcHapticsLogger;

  return v1;
}

void __getGCHapticsLogger_block_invoke()
{
  v0 = os_log_create("com.apple.GameController.Haptics", "default");
  v1 = gcHapticsLogger;
  gcHapticsLogger = v0;
}

id getGCRuntimeIssuesLogger()
{
  if (getGCRuntimeIssuesLogger_onceToken != -1)
  {
    getGCRuntimeIssuesLogger_cold_1();
  }

  v1 = gcRuntimeIssuesLogger;

  return v1;
}

void __getGCRuntimeIssuesLogger_block_invoke()
{
  v0 = os_log_create("com.apple.runtime-issues", "GameController");
  v1 = gcRuntimeIssuesLogger;
  gcRuntimeIssuesLogger = v0;
}

void sub_1D2D1154C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ConnectToDriverService(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (&unk_1F4EB3018 == v7)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __ConnectToDriverService_block_invoke;
    v27[3] = &unk_1E8419F20;
    v12 = &v28;
    v28 = v10;
    [v8 connectToNintendoJoyConFusionGestureServiceWithClient:v9 reply:v27];
  }

  else if (&unk_1F4EB3198 == v7)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __ConnectToDriverService_block_invoke_2;
    v25[3] = &unk_1E8419F48;
    v12 = &v26;
    v26 = v10;
    [v8 connectToLightServiceWithClient:v9 reply:v25];
  }

  else if (&unk_1F4EB31F8 == v7)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __ConnectToDriverService_block_invoke_3;
    v23[3] = &unk_1E8419F70;
    v12 = &v24;
    v24 = v10;
    [v8 connectToAdaptiveTriggersServiceWithClient:v9 reply:v23];
  }

  else if (&unk_1F4EB3258 == v7)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __ConnectToDriverService_block_invoke_4;
    v21[3] = &unk_1E8419F98;
    v12 = &v22;
    v22 = v10;
    [v8 connectToMotionServiceWithClient:v9 reply:v21];
  }

  else if (&unk_1F4EB30D8 == v7)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __ConnectToDriverService_block_invoke_5;
    v19[3] = &unk_1E8419FC0;
    v12 = &v20;
    v20 = v10;
    [v8 connectToIdleServiceWithClient:v9 reply:v19];
  }

  else if (&unk_1F4EB3078 == v7)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __ConnectToDriverService_block_invoke_6;
    v17[3] = &unk_1E8419FE8;
    v12 = &v18;
    v18 = v10;
    [v8 connectToBatteryServiceWithClient:v9 reply:v17];
  }

  else if (&unk_1F4EB32B8 == v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __ConnectToDriverService_block_invoke_7;
    v15[3] = &unk_1E841A010;
    v12 = &v16;
    v16 = v10;
    [v8 connectToGameIntentServiceWithClient:v9 reply:v15];
  }

  else
  {
    if (&unk_1F4EB3348 != v7)
    {
      ConnectToDriverService_cold_1(v7);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __ConnectToDriverService_block_invoke_8;
    v13[3] = &unk_1E841A038;
    v12 = &v14;
    v14 = v10;
    [v8 connectToGenericDeviceDriverConfigurationServiceWithClient:v9 reply:v13];
  }
}

void sub_1D2D12078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D2D12908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t GCCurrentProcessGetFlags(char a1)
{
  if (a1)
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 isMacCatalystApp];

    v2 = v4 & 1;
    if ((a1 & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = 0;
    if ((a1 & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  v5 = [MEMORY[0x1E696AE30] processInfo];
  v6 = [v5 isiOSAppOnMac];

  if (v6)
  {
    v2 |= 2uLL;
  }

LABEL_7:
  if ((a1 & 4) != 0)
  {
    return v2 | (4 * (NSClassFromString(&cfstr_Uiapplication.isa) != 0));
  }

  return v2;
}

uint64_t LoadGameControllerUIFramework(const char *a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    LoadGameControllerUIFramework_cold_1(a1);
  }

  if (([GameControllerUIBundle isLoaded] & 1) == 0)
  {
    os_unfair_recursive_lock_lock_with_options();
    v4 = NSClassFromString(&cfstr_Gcuiscreenreco.isa);
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:v4];
      v7 = GameControllerUIBundle;
      GameControllerUIBundle = v6;

      if (GameControllerUIBundle)
      {
LABEL_10:
        v2 = 0;
LABEL_11:
        os_unfair_recursive_lock_unlock();
        return v2;
      }

      LoadGameControllerUIFramework_cold_2(v5);
    }

    if (GameControllerUIBundle)
    {
      goto LABEL_10;
    }

    if (a1 == 2)
    {
      goto LABEL_18;
    }

    if (a1 != 1 || !NSClassFromString(&cfstr_Uiapplication.isa))
    {
      v2 = -1;
      goto LABEL_11;
    }

    v8 = GameControllerUIBundle;
    if (!GameControllerUIBundle)
    {
LABEL_18:
      if (GCCurrentProcessGetFlags(1))
      {
        v10 = @"/System/iOSSupport";
      }

      else
      {
        v10 = @"/";
      }

      v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:1];
      v9 = [v11 URLByAppendingPathComponent:@"System/Library/PrivateFrameworks/GameControllerUI.framework"];

      v12 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v9];
      v13 = GameControllerUIBundle;
      GameControllerUIBundle = v12;

      v8 = GameControllerUIBundle;
      if (!GameControllerUIBundle)
      {
        LoadGameControllerUIFramework_cold_5(v9);
        goto LABEL_38;
      }
    }

    else
    {
      v9 = 0;
    }

    error = 0;
    v14 = *MEMORY[0x1E695E480];
    v15 = [v8 bundleURL];
    v16 = CFBundleCreate(v14, v15);

    if (v16)
    {
      if (CFBundleLoadExecutableAndReturnError(v16, &error))
      {
        goto LABEL_29;
      }

      v17 = _gc_log_bundle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        LoadGameControllerUIFramework_cold_3(v16, &error);
      }
    }

    else
    {
      v17 = _gc_log_bundle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        LoadGameControllerUIFramework_cold_4();
      }
    }

LABEL_29:
    if (error)
    {
      CFRelease(error);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if ([GameControllerUIBundle load])
    {
      v18 = _gc_log_bundle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_INFO, "#NOTE GameControllerUI support has loaded.", v19, 2u);
      }

      v2 = 1;
      goto LABEL_39;
    }

LABEL_38:
    v2 = -1;
LABEL_39:

    goto LABEL_11;
  }

  return 0;
}

id _gc_log_bundle()
{
  if (_gc_log_bundle_onceToken != -1)
  {
    _gc_log_bundle_cold_1();
  }

  v1 = _gc_log_bundle_Log;

  return v1;
}

void ___gc_log_bundle_block_invoke()
{
  v0 = os_log_create("com.apple.gamecontroller", "Bundle");
  v1 = _gc_log_bundle_Log;
  _gc_log_bundle_Log = v0;
}

void OUTLINED_FUNCTION_0_19(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_1_11(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void OUTLINED_FUNCTION_2_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3_5(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 addObserver:a3 forKeyPath:a4 options:1 context:0];
}

id GCControllerComponent_Classes()
{
  if (GCControllerComponent_Classes_onceToken != -1)
  {
    GCControllerComponent_Classes_cold_1();
  }

  v1 = GCControllerComponent_Classes_Classes;

  return v1;
}

id _GCControllerComponentDescription_Classes()
{
  if (_GCControllerComponentDescription_Classes_onceToken != -1)
  {
    _GCControllerComponentDescription_Classes_cold_1();
  }

  v1 = _GCControllerComponentDescription_Classes_Classes;

  return v1;
}

void sub_1D2D16478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _GCHapticServerManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D2D16698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL HapticSharedMemory::readCommand(HapticSharedMemory *this, HapticCommand *a2)
{
  mBuffer = this->mBuffer;
  v3 = mBuffer[1];
  v4 = mBuffer[2];
  if (v4 == v3)
  {
    return v4 != v3;
  }

  v6 = mBuffer + 4;
  if (gc_isInternalBuild())
  {
    HapticSharedMemory::readCommand((v6 + v4));
  }

  v7 = *(v6 + v4);
  if (!*(v6 + v4))
  {
    HapticSharedMemory::readCommand();
  }

  v8 = v4 + v7;
  if (v4 + v7 >= *mBuffer)
  {
    v9 = *mBuffer;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8 - v9;
  if (v8 - v9 > v4)
  {
    v11 = v6 + v4;
    v12 = a2;
LABEL_12:
    memcpy(v12, v11, v7);
    goto LABEL_13;
  }

  v13 = (*mBuffer - v4);
  memcpy(a2, v6 + v4, v13);
  v14 = *(v6 + v4);
  if (v13 < v14)
  {
    v7 = v14 - v13;
    v12 = (a2 + v13);
    v11 = (mBuffer + 4);
    goto LABEL_12;
  }

LABEL_13:
  if (gc_isInternalBuild())
  {
    HapticSharedMemory::readCommand();
  }

  mBuffer[2] = v10;
  return v4 != v3;
}

BOOL OUTLINED_FUNCTION_8_4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_INFO, a4, v5, 0xCu);
}

BOOL OUTLINED_FUNCTION_11_3(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_12_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0xCu);
}

void sub_1D2D1B3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _gc_log_device_physicalinput()
{
  if (_gc_log_device_physicalinput_onceToken != -1)
  {
    _gc_log_device_physicalinput_cold_1();
  }

  v1 = _gc_log_device_physicalinput_Log;

  return v1;
}

void ___gc_log_device_physicalinput_block_invoke()
{
  v0 = os_log_create("com.apple.gamecontroller", "PhysicalInput");
  v1 = _gc_log_device_physicalinput_Log;
  _gc_log_device_physicalinput_Log = v0;
}

uint64_t OUTLINED_FUNCTION_2_9@<X0>(uint64_t a1@<X8>)
{

  return [(_GCDevicePhysicalInputView *)v1 _testAndSetObjectValue:v2 forSlot:v1 + a1 policy:771];
}

void sub_1D2D1E710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64((&a11 + i));
  }

  _Unwind_Resume(a1);
}

void sub_1D2D1F440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&a9 + i);
  }

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return [v0 initWithName:v1 additionalAliases:v2 attributes:2 nameLocalizationKey:v3 symbolName:? sourceAttributes:? sourceExtendedEventField:?];
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1)
{

  return [v1 addObject:a1];
}

uint64_t OUTLINED_FUNCTION_7_4(__int16 a1)
{

  return [v1 setAnalog:(a1 & 0x100) == 0];
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return [v0 addObject:v1];
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1)
{

  return [v1 addObject:a1];
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return [v0 setAnalog:1];
}

void sub_1D2D20194(_Unwind_Exception *a1)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v1 + i);
  }

  _Unwind_Resume(a1);
}

void sub_1D2D203E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D21254(_Unwind_Exception *a1)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v1 + i);
  }

  _Unwind_Resume(a1);
}

void sub_1D2D22314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&a9 + i);
  }

  _Unwind_Resume(a1);
}

void sub_1D2D24734(_Unwind_Exception *a1)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v1 + i);
  }

  _Unwind_Resume(a1);
}

void __handleAncillaryButtonEvent_block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __handleAncillaryButtonEvent_block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 32) controller];
  v3 = [v2 __deprecated_controllerPausedHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) controller];
    v5 = [v4 __deprecated_controllerPausedHandler];
    v6 = [*(a1 + 32) controller];
    (v5)[2](v5, v6);
  }
}

void __handleAncillaryButtonEvent_block_invoke_104(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __handleAncillaryButtonEvent_block_invoke_104_cold_1(a1);
  }

  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  v4 = *(*(a1 + 32) + 672);
  if (v4)
  {
    v5 = *(a1 + 40);
    (*(v4 + 16))();
  }
}

void __handleGameControllerExtendedEvent_block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __handleAncillaryButtonEvent_block_invoke_104_cold_1(a1);
  }

  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  v4 = *(*(a1 + 32) + 672);
  if (v4)
  {
    v5 = *(a1 + 40);
    (*(v4 + 16))();
  }
}

void __handleGameControllerEvent_block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __handleAncillaryButtonEvent_block_invoke_104_cold_1(a1);
  }

  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  v4 = *(*(a1 + 32) + 672);
  if (v4)
  {
    v5 = *(a1 + 40);
    (*(v4 + 16))();
  }
}

void sub_1D2D25DF4(_Unwind_Exception *a1)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v1 + i);
  }

  _Unwind_Resume(a1);
}

void sub_1D2D268AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D27024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 40));
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_1D2D28B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64((&a27 + i));
  }

  _Unwind_Resume(a1);
}

void sub_1D2D2A020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&a9 + i);
  }

  _Unwind_Resume(a1);
}

uint64_t xAxisUpdateContext_0(uint64_t a1)
{
  v2 = xAxisUpdateContext_Offset_0;
  if (xAxisUpdateContext_Offset_0 == -1)
  {
    xAxisUpdateContext_cold_1_0();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_9;
  if (MyUpdateContext_Offset_9 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_9 = v3;
    v2 = xAxisUpdateContext_Offset_0;
  }

  return a1 + v3 + v2;
}

uint64_t yAxisUpdateContext_0(uint64_t a1)
{
  v2 = yAxisUpdateContext_Offset_0;
  if (yAxisUpdateContext_Offset_0 == -1)
  {
    yAxisUpdateContext_cold_1_0();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_9;
  if (MyUpdateContext_Offset_9 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_9 = v3;
    v2 = yAxisUpdateContext_Offset_0;
  }

  return a1 + v3 + v2;
}

uint64_t upButtonUpdateContext_0(uint64_t a1)
{
  v2 = upButtonUpdateContext_Offset_0;
  if (upButtonUpdateContext_Offset_0 == -1)
  {
    upButtonUpdateContext_cold_1_0();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_9;
  if (MyUpdateContext_Offset_9 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_9 = v3;
    v2 = upButtonUpdateContext_Offset_0;
  }

  return a1 + v3 + v2;
}

uint64_t downButtonUpdateContext_0(uint64_t a1)
{
  v2 = downButtonUpdateContext_Offset_0;
  if (downButtonUpdateContext_Offset_0 == -1)
  {
    downButtonUpdateContext_cold_1_0();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_9;
  if (MyUpdateContext_Offset_9 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_9 = v3;
    v2 = downButtonUpdateContext_Offset_0;
  }

  return a1 + v3 + v2;
}

uint64_t leftButtonUpdateContext_0(uint64_t a1)
{
  v2 = leftButtonUpdateContext_Offset_0;
  if (leftButtonUpdateContext_Offset_0 == -1)
  {
    leftButtonUpdateContext_cold_1_0();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_9;
  if (MyUpdateContext_Offset_9 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_9 = v3;
    v2 = leftButtonUpdateContext_Offset_0;
  }

  return a1 + v3 + v2;
}

uint64_t rightButtonUpdateContext_0(uint64_t a1)
{
  v2 = rightButtonUpdateContext_Offset_0;
  if (rightButtonUpdateContext_Offset_0 == -1)
  {
    rightButtonUpdateContext_cold_1_0();
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_9;
  if (MyUpdateContext_Offset_9 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_9 = v3;
    v2 = rightButtonUpdateContext_Offset_0;
  }

  return a1 + v3 + v2;
}

void OUTLINED_FUNCTION_21_0(uint64_t a1, const char *a2, uint64_t a3, ptrdiff_t a4)
{

  objc_setProperty_nonatomic_copy(v4, a2, v5, a4);
}

void OUTLINED_FUNCTION_22_0(char *newValue)
{

  [(_GCDevicePhysicalInputPressInputParameters *)v1 setSources:?];
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t result)
{
  *(v2 + 24) = result;
  v3 = *(v1 + 96) == 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t result)
{

  return [(_GCDevicePhysicalInputDirectionPadElement *)result _xy];
}

void sub_1D2D2D758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&a9 + i);
  }

  _Unwind_Resume(a1);
}

void sub_1D2D2F8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromGCPoint2(float a1, float a2)
{
  v2 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g}", 6, a1, 6, a2);

  return v2;
}

void sub_1D2D327DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D330A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GCLightXPCProxyRemoteClientEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4E9EC70];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCLightXPCProxyRemoteServerEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4E9ED90];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCLightXPCProxyServiceRemoteServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA6078];
  v1 = GCLightXPCProxyRemoteClientEndpointInterface();
  [v0 setInterface:v1 forSelector:sel_lightXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:0];

  v2 = GCLightXPCProxyRemoteServerEndpointInterface();
  [v0 setInterface:v2 forSelector:sel_lightXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id _GCGamepadEventSourceDescription_Classes()
{
  if (_GCGamepadEventSourceDescription_Classes_onceToken != -1)
  {
    _GCGamepadEventSourceDescription_Classes_cold_1();
  }

  v1 = _GCGamepadEventSourceDescription_Classes_Classes;

  return v1;
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t result)
{
  *(v2 + 1496) = result;
  v3 = *(v1 + 168) == 0;
  return result;
}

id GCPhotoVideoXPCProxyServiceRemoteServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EB3708];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_onVideoRecordingStart_ argumentIndex:0 ofReply:1];

  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v2 forSelector:sel_onVideoRecordingStopWithURL_reply_ argumentIndex:0 ofReply:0];

  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_onVideoRecordingStopWithURL_reply_ argumentIndex:0 ofReply:1];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_takeScreenshotWithReply_ argumentIndex:0 ofReply:1];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_generateURLFor_withReply_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_generateURLFor_withReply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1D2D3510C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D35268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D3612C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(location, a16);
  objc_destroyWeak(location);
  _Unwind_Resume(a1);
}

id getGPUserExperienceProxyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGPUserExperienceProxyClass_softClass;
  v7 = getGPUserExperienceProxyClass_softClass;
  if (!getGPUserExperienceProxyClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGPUserExperienceProxyClass_block_invoke;
    v3[3] = &unk_1E841A650;
    v3[4] = &v4;
    __getGPUserExperienceProxyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D2D368BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D38A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

Class __getGPUserExperienceProxyClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!GamePolicyLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __GamePolicyLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E841A670;
    v6 = 0;
    GamePolicyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GamePolicyLibraryCore_frameworkLibrary)
  {
    __getGPUserExperienceProxyClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("GPUserExperienceProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGPUserExperienceProxyClass_block_invoke_cold_1();
  }

  getGPUserExperienceProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __GamePolicyLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GamePolicyLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_1_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

BOOL OUTLINED_FUNCTION_8_6(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_10_6(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void OUTLINED_FUNCTION_11_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

id getLogger()
{
  if (getLogger_once != -1)
  {
    getLogger_cold_1();
  }

  v1 = getLogger_logger;

  return v1;
}

void __onqueue_3PSyntheticControllersChanged(void *a1, uint64_t a2)
{
  v3 = a1;
  dispatch_assert_queue_V2(v3[2]);
  v4 = _os_activity_create(&dword_1D2CD5000, "[Synthetic Device Manager] Third-party synthetic game controllers changed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  if (a2)
  {
    __3PSyntheticControllersDrainIterator(v3, a2);
  }

  __onqueue_3PSyntheticControllersScan(v3);
  os_activity_scope_leave(&v5);
}

void __3PSyntheticControllersDrainIterator(void *a1, uint64_t a2)
{
  v4 = a1;
  while (1)
  {
    while (1)
    {
      v3 = IOIteratorNext(a2);
      if (!v3)
      {
        break;
      }

      IOObjectRelease(v3);
    }

    if (IOIteratorIsValid(a2))
    {
      break;
    }

    MEMORY[0x1D38AC3D0](a2);
  }
}

void __onqueue_3PSyntheticControllersScan(void *a1)
{
  v1 = a1;
  existing = 0;
  v2 = *MEMORY[0x1E696CD60];
  v3 = CFRetain(v1[8]);
  if (IOServiceGetMatchingServices(v2, v3, &existing))
  {
    v4 = getLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __onqueue_3PSyntheticControllersScan_cold_1();
    }
  }

  v5 = existing;
  if (existing)
  {
    v6 = 0;
    while (1)
    {
      v7 = IOIteratorNext(v5);
      if (v7)
      {
        ++v6;
        IOObjectRelease(v7);
      }

      else
      {
        if (IOIteratorIsValid(existing))
        {
          goto LABEL_7;
        }

        MEMORY[0x1D38AC3D0](existing);
        v6 = 0;
      }

      v5 = existing;
    }
  }

  v6 = 0;
LABEL_7:
  v1[10] = v6;
  [(GCSyntheticDeviceManager *)v1 _onqueue_refreshSyntheticControllersEnabled];
}

void __getLogger_block_invoke()
{
  v0 = os_log_create("com.apple.GameController", "SyntheticDeviceManager");
  v1 = getLogger_logger;
  getLogger_logger = v0;
}

BOOL OUTLINED_FUNCTION_5_8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_1_19(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void sub_1D2D40AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D40F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D2D41404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D419E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D41E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x20u);
}

id _gc_log_bluetooth()
{
  if (_gc_log_bluetooth_onceToken != -1)
  {
    _gc_log_bluetooth_cold_1();
  }

  v1 = _gc_log_bluetooth_Log;

  return v1;
}

void ___gc_log_bluetooth_block_invoke()
{
  v0 = os_log_create("com.apple.gamecontroller", "Bluetooth");
  v1 = _gc_log_bluetooth_Log;
  _gc_log_bluetooth_Log = v0;
}

void sub_1D2D42FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&a9 + i);
  }

  _Unwind_Resume(a1);
}

id _gc_log_virtualcontroller()
{
  if (_gc_log_virtualcontroller_onceToken != -1)
  {
    _gc_log_virtualcontroller_cold_1();
  }

  v1 = _gc_log_virtualcontroller_Log;

  return v1;
}

void ___gc_log_virtualcontroller_block_invoke()
{
  v0 = os_log_create("com.apple.gamecontroller", "VirtualController");
  v1 = _gc_log_virtualcontroller_Log;
  _gc_log_virtualcontroller_Log = v0;
}

void GCAnalyticsSendVirtualControllerConnectedEvent(void *a1, void *a2, char a3)
{
  v5 = a1;
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3254779904;
    v6[2] = __GCAnalyticsSendVirtualControllerConnectedEvent_block_invoke;
    v6[3] = &__block_descriptor_48_e8_32n11_8_8_s0_t8w1_e30___NSObject_OS_xpc_object__8__0l;
    v7 = a2;
    v8 = a3;
    [v5 sendEvent:@"com.apple.GameController.VirtualController.connected" withXPCPayloadBuilder:v6];
  }
}

xpc_object_t __GCAnalyticsSendVirtualControllerConnectedEvent_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v6 processName];
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) containsObject:@"Left Thumbstick"];
  v9 = [*(a1 + 32) containsObject:@"Right Thumbstick"];
  v10 = [*(a1 + 32) containsObject:@"Direction Pad"];
  if ([*(a1 + 32) containsObject:@"Left Shoulder"])
  {
    v11 = 1;
  }

  else
  {
    v11 = [*(a1 + 32) containsObject:@"Right Shoulder"];
  }

  if ([*(a1 + 32) containsObject:@"Left Trigger"])
  {
    v12 = 1;
  }

  else
  {
    v12 = [*(a1 + 32) containsObject:@"Right Trigger"];
  }

  *keys = xmmword_1E841A870;
  v19 = *&off_1E841A880;
  v20 = xmmword_1E841A890;
  v17[0] = xpc_BOOL_create(v7);
  v17[1] = xpc_BOOL_create(v8);
  v17[2] = xpc_BOOL_create(v9);
  v17[3] = xpc_BOOL_create(v10);
  v17[4] = xpc_BOOL_create(v11);
  v17[5] = xpc_BOOL_create(v12);
  v13 = xpc_dictionary_create(keys, v17, 6uLL);
  if (v13)
  {
    __GCAnalyticsSendVirtualControllerConnectedEvent_block_invoke_cold_1(v5, v13);
  }

  for (i = 5; i != -1; --i)
  {
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1D2D45430(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_32n11_8_8_s0_t8w1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

void sub_1D2D45738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D4610C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GCSettingsXPCProxyRemoteClientEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA0B50];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCSettingsXPCProxyRemoteServerEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA0C30];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCSettingsXPCProxyServiceRemoteServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA5D48];
  v1 = GCSettingsXPCProxyRemoteClientEndpointInterface();
  [v0 setInterface:v1 forSelector:sel_settingsXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:0];

  v2 = GCSettingsXPCProxyRemoteServerEndpointInterface();
  [v0 setInterface:v2 forSelector:sel_settingsXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1D2D47BC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D2D4C2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D4CCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_16_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t _publishCustomController(void *a1)
{
  v1 = a1;
  if (currentProcessIsGameControllerDaemon())
  {
    v2 = 0;
  }

  else
  {
    v3 = +[_GCLegacyPublishedControllerStore sharedInstance];
    if (v3)
    {
      v5 = [v1 physicalInputProfile];
      v6 = [_GCXRComponent componentWithPhysicalInputProfile:v5];

      if (v6)
      {
        if (gc_isInternalBuild())
        {
          _publishCustomController_cold_1();
        }

        [v1 _addComponent:v6];
      }

      v2 = [(_GCLegacyPublishedControllerStore *)v3 _publishCustomController:v1];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t _unpublishCustomController(void *a1)
{
  v1 = a1;
  if (currentProcessIsGameControllerDaemon())
  {
    v2 = 0;
  }

  else
  {
    v3 = +[_GCLegacyPublishedControllerStore sharedInstance];
    v4 = v3;
    if (v3)
    {
      v2 = [(_GCLegacyPublishedControllerStore *)v3 _unpublishCustomController:v1];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void OUTLINED_FUNCTION_3_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0xCu);
}

uint64_t clientParamToSynthParam(int a1, float a2, unsigned int *a3, float *a4)
{
  if (a1 > 1019)
  {
    v7 = 4294967292;
    if (a1 <= 2009)
    {
      switch(a1)
      {
        case 1020:
          return v7;
        case 2000:
          v28 = fminf(a2, 1.0);
          v25 = a2 <= 0.0;
          v6 = 0.0;
          if (!v25)
          {
            v6 = v28;
          }

          a1 = 5002;
          if (!a3)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
        case 2001:
          v12 = fminf(a2, 1.0);
          if (a2 <= -1.0)
          {
            v13 = -1.0;
          }

          else
          {
            v13 = v12;
          }

          v6 = v13 * 0.5 + 0.5;
          a1 = 5003;
          if (!a3)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
      }
    }

    else
    {
      if (a1 <= 2011)
      {
        if (a1 == 2010)
        {
          v18 = fminf(a2, 1.0);
          if (a2 <= -1.0)
          {
            v19 = -1.0;
          }

          else
          {
            v19 = v18;
          }

          v6 = (v19 * 63.5) + 63.5;
          a1 = 79;
          if (!a3)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v8 = fminf(a2, 1.0);
          if (a2 <= -1.0)
          {
            v9 = -1.0;
          }

          else
          {
            v9 = v8;
          }

          v6 = (v9 * 63.5) + 63.5;
          a1 = 80;
          if (!a3)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_77;
      }

      if (a1 == 2012)
      {
        v22 = fminf(a2, 1.0);
        if (a2 <= -1.0)
        {
          v23 = -1.0;
        }

        else
        {
          v23 = v22;
        }

        v6 = (v23 * 63.5) + 63.5;
        a1 = 81;
        if (!a3)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      if (a1 == 2020)
      {
        return v7;
      }
    }

    goto LABEL_43;
  }

  if (a1 <= 1010)
  {
    switch(a1)
    {
      case 1000:
        v24 = fminf(a2, 1.0);
        v25 = a2 <= 0.0;
        v6 = 0.0;
        if (!v25)
        {
          v6 = v24;
        }

        a1 = 5000;
        if (!a3)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      case 1001:
        v26 = fminf(a2, 1.0);
        if (a2 <= -1.0)
        {
          v27 = -1.0;
        }

        else
        {
          v27 = v26;
        }

        v6 = v27 * 0.5 + 0.5;
        a1 = 5001;
        if (!a3)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      case 1010:
        v10 = fminf(a2, 1.0);
        if (a2 <= -1.0)
        {
          v11 = -1.0;
        }

        else
        {
          v11 = v10;
        }

        v6 = (v11 * 63.5) + 63.5;
        a1 = 73;
        if (!a3)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
    }

    goto LABEL_43;
  }

  if (a1 > 1012)
  {
    if (a1 == 1013)
    {
      v20 = fminf(a2, 1.0);
      if (a2 <= -1.0)
      {
        v21 = -1.0;
      }

      else
      {
        v21 = v20;
      }

      v6 = v21 * 0.5 + 0.5;
      a1 = 5004;
      if (!a3)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if (a1 == 1015)
    {
      v14 = fminf(a2, 1.0);
      if (a2 <= -1.0)
      {
        v15 = -1.0;
      }

      else
      {
        v15 = v14;
      }

      v6 = v15 * 0.5 + 0.5;
      a1 = 5011;
      if (!a3)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

LABEL_43:
    if (a1 > 0xFF)
    {
      return 4294962494;
    }

    v30 = fminf(a2, 1.0) * 127.0;
    v25 = a2 <= 0.0;
    v6 = 0.0;
    if (!v25)
    {
      v6 = v30;
    }

    if (!a3)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (a1 == 1011)
  {
    v16 = fminf(a2, 1.0);
    if (a2 <= -1.0)
    {
      v17 = -1.0;
    }

    else
    {
      v17 = v16;
    }

    v6 = (v17 * 63.5) + 63.5;
    a1 = 75;
    if (!a3)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v4 = fminf(a2, 1.0);
    if (a2 <= -1.0)
    {
      v5 = -1.0;
    }

    else
    {
      v5 = v4;
    }

    v6 = (v5 * 63.5) + 63.5;
    a1 = 72;
    if (!a3)
    {
      goto LABEL_78;
    }
  }

LABEL_77:
  *a3 = a1;
LABEL_78:
  v7 = 0;
  if (a4)
  {
    *a4 = v6;
  }

  return v7;
}

void sub_1D2D50798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = _GCHapticPlayer;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t result, uint64_t a2, double a3, float a4)
{
  *result = a4;
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = a3;
  return result;
}

BOOL OUTLINED_FUNCTION_1_21(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_2_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t result, double a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  return result;
}

id _GCCollectionEventSourceDescription_Classes()
{
  if (_GCCollectionEventSourceDescription_Classes_onceToken != -1)
  {
    _GCCollectionEventSourceDescription_Classes_cold_1();
  }

  v1 = _GCCollectionEventSourceDescription_Classes_Classes;

  return v1;
}

void _HIDEventCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  IOHIDEventGetSenderID();
  IOHIDEventGetTimeStamp();
  IOHIDEventGetType();
  kdebug_trace();
  [v4 publishHIDEvent:a3];
}

void sub_1D2D55230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_activity_scope_state_s state)
{
  objc_sync_exit(v18);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t _IOObjectCFRetain(int a1, uint64_t object)
{
  if (IOObjectRetain(object))
  {
    return 0;
  }

  else
  {
    return object;
  }
}

void DeviceMatched(void *a1, io_iterator_t a2)
{
  v3 = a1;
  dispatch_assert_queue_V2(*(v3 + 1));
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      entryID = 0;
      IORegistryEntryGetRegistryEntryID(v5, &entryID);
      if (!entryID)
      {
        break;
      }

      v6 = *(v3 + 5);
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      v8 = [v6 objectForKeyedSubscript:v7];

      if (v8)
      {
        goto LABEL_16;
      }

      v9 = [[_GCLogitechRacingWheel alloc] initWithService:v5];
      if (!v9)
      {
        if (gc_isInternalBuild())
        {
          DeviceMatched_cold_2();
        }

        goto LABEL_16;
      }

      v10 = v9;
      notification = 0;
      if (IOServiceAddInterestNotification([*(v3 + 2) port], v5, "IOGeneralInterest", DeviceGeneralNotification, v3, &notification))
      {
        if (gc_isInternalBuild())
        {
          DeviceMatched_cold_1();
        }

        goto LABEL_16;
      }

      CFSetAddValue(*(v3 + 4), notification);
      v11 = [MEMORY[0x1E695DFD8] setWithObject:v10];
      [v3 willChangeValueForKey:@"racingWheels" withSetMutation:1 usingObjects:v11];
      [v3 willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v11];
      v12 = v3;
      objc_sync_enter(v12);
      v13 = *(v3 + 5);
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:entryID];
      [v13 setObject:v10 forKeyedSubscript:v14];

      objc_sync_exit(v12);
      [v12 didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v11];
      [v12 didChangeValueForKey:@"racingWheels" withSetMutation:1 usingObjects:v11];

      v5 = IOIteratorNext(a2);
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    if (gc_isInternalBuild())
    {
      DeviceMatched_cold_3();
    }
  }

LABEL_16:
}

void DeviceGeneralNotification(void *a1, io_registry_entry_t a2, int a3)
{
  v5 = a1;
  dispatch_assert_queue_V2(v5[1]);
  if (a3 == -536870896)
  {
    entryID = 0;
    IORegistryEntryGetRegistryEntryID(a2, &entryID);
    if (entryID)
    {
      v6 = v5[5];
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      v8 = [v6 objectForKeyedSubscript:v7];

      if (v8)
      {
        if (gc_isInternalBuild())
        {
          DeviceGeneralNotification_cold_1();
        }

        v9 = [MEMORY[0x1E695DFD8] setWithObject:v8];
        [(dispatch_queue_t *)v5 willChangeValueForKey:@"racingWheels" withSetMutation:2 usingObjects:v9];
        [(dispatch_queue_t *)v5 willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v9];
        v10 = v5;
        objc_sync_enter(v10);
        v11 = v5[5];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:entryID];
        [v11 setObject:0 forKeyedSubscript:v12];

        objc_sync_exit(v10);
        [(dispatch_queue_t *)v10 didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v9];
        [(dispatch_queue_t *)v10 didChangeValueForKey:@"racingWheels" withSetMutation:2 usingObjects:v9];
      }
    }

    else
    {
      if (!gc_isInternalBuild())
      {
        goto LABEL_9;
      }

      v8 = getGCLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        DeviceGeneralNotification_cold_2(v8);
      }
    }
  }

LABEL_9:
}

void GCExtendedGamepadInitInfoMake(void *a1@<X8>)
{
  bzero(a1, 0x638uLL);
  for (i = 8; i != 1160; i += 72)
  {
    *(a1 + i) = 1;
  }

  GCExtendedGamepadInitInfoPopulateNames(a1);
}

void sub_1D2D56BC0(_Unwind_Exception *a1)
{
  v3 = 1584;
  do
  {
    __destructor_8_s0_s48_s56_s64(v1);
    v1 += 72;
    v3 -= 72;
  }

  while (v3);
  _Unwind_Resume(a1);
}

void GCExtendedGamepadInitInfoPopulateNames(uint64_t a1)
{
  objc_storeStrong(a1, @"Direction Pad");
  objc_storeStrong((a1 + 72), @"Button A");
  objc_storeStrong((a1 + 144), @"Button B");
  objc_storeStrong((a1 + 216), @"Button X");
  objc_storeStrong((a1 + 288), @"Button Y");
  objc_storeStrong((a1 + 360), @"Left Thumbstick");
  objc_storeStrong((a1 + 432), @"Right Thumbstick");
  objc_storeStrong((a1 + 504), @"Left Shoulder");
  objc_storeStrong((a1 + 576), @"Right Shoulder");
  objc_storeStrong((a1 + 648), @"Left Trigger");
  objc_storeStrong((a1 + 720), @"Right Trigger");
  objc_storeStrong((a1 + 792), @"Left Thumbstick Button");
  objc_storeStrong((a1 + 864), @"Right Thumbstick Button");
  objc_storeStrong((a1 + 936), @"Button Home");
  objc_storeStrong((a1 + 1008), @"Button Menu");
  objc_storeStrong((a1 + 1080), @"Button Options");
  objc_storeStrong((a1 + 1152), @"Left Bumper");
  objc_storeStrong((a1 + 1224), @"Right Bumper");
  objc_storeStrong((a1 + 1296), @"Back Left Button 0");
  objc_storeStrong((a1 + 1368), @"Back Left Button 1");
  objc_storeStrong((a1 + 1440), @"Back Right Button 0");
  objc_storeStrong((a1 + 1512), @"Back Right Button 1");
  v2 = *(a1 + 56);
  *(a1 + 56) = @"DIRECTION_PAD";

  v3 = *(a1 + 128);
  *(a1 + 128) = @"BUTTON_A";

  v4 = *(a1 + 200);
  *(a1 + 200) = @"BUTTON_B";

  v5 = *(a1 + 272);
  *(a1 + 272) = @"BUTTON_X";

  v6 = *(a1 + 344);
  *(a1 + 344) = @"BUTTON_Y";

  v7 = *(a1 + 560);
  *(a1 + 560) = @"LEFT_SHOULDER";

  v8 = *(a1 + 632);
  *(a1 + 632) = @"RIGHT_SHOULDER";

  v9 = *(a1 + 704);
  *(a1 + 704) = @"LEFT_TRIGGER";

  v10 = *(a1 + 776);
  *(a1 + 776) = @"RIGHT_TRIGGER";

  v11 = *(a1 + 416);
  *(a1 + 416) = @"LEFT_THUMBSTICK";

  v12 = *(a1 + 488);
  *(a1 + 488) = @"RIGHT_THUMBSTICK";

  v13 = *(a1 + 848);
  *(a1 + 848) = @"BUTTON_LEFT_THUMBSTICK";

  v14 = *(a1 + 920);
  *(a1 + 920) = @"BUTTON_RIGHT_THUMBSTICK";

  v15 = *(a1 + 1208);
  *(a1 + 1208) = @"BUTTON_L4";

  v16 = *(a1 + 1280);
  *(a1 + 1280) = @"BUTTON_R4";

  v17 = *(a1 + 1496);
  *(a1 + 1496) = @"BUTTON_M1";

  v18 = *(a1 + 1568);
  *(a1 + 1568) = @"BUTTON_M3";

  v19 = *(a1 + 1352);
  *(a1 + 1352) = @"BUTTON_M2";

  v20 = *(a1 + 1424);
  *(a1 + 1424) = @"BUTTON_M4";

  v21 = *(a1 + 48);
  *(a1 + 48) = @"dpad";

  v22 = *(a1 + 120);
  *(a1 + 120) = @"a.circle";

  v23 = *(a1 + 192);
  *(a1 + 192) = @"b.circle";

  v24 = *(a1 + 336);
  *(a1 + 336) = @"y.circle";

  v25 = *(a1 + 264);
  *(a1 + 264) = @"x.circle";

  v26 = *(a1 + 552);
  *(a1 + 552) = @"l1.rectangle.roundedbottom";

  v27 = *(a1 + 624);
  *(a1 + 624) = @"r1.rectangle.roundedbottom";

  v28 = *(a1 + 696);
  *(a1 + 696) = @"l2.rectangle.roundedtop";

  v29 = *(a1 + 768);
  *(a1 + 768) = @"r2.rectangle.roundedtop";

  v30 = *(a1 + 408);
  *(a1 + 408) = @"l.joystick";

  v31 = *(a1 + 480);
  *(a1 + 480) = @"r.joystick";

  v32 = *(a1 + 840);
  *(a1 + 840) = @"l.joystick.down";

  v33 = *(a1 + 912);
  *(a1 + 912) = @"r.joystick.press.down";

  v34 = *(a1 + 1200);
  *(a1 + 1200) = @"l4.button.horizontal";

  v35 = *(a1 + 1272);
  *(a1 + 1272) = @"r4.button.horizontal";

  v36 = *(a1 + 1488);
  *(a1 + 1488) = @"m1.button.horizontal";

  v37 = *(a1 + 1560);
  *(a1 + 1560) = @"m3.button.horizontal";

  v38 = *(a1 + 1344);
  *(a1 + 1344) = @"m2.button.horizontal";

  v39 = *(a1 + 1416);
  *(a1 + 1416) = @"m4.button.horizontal";

  *(a1 + 44) = 1;
  *(a1 + 116) = 1;
  *(a1 + 188) = 1;
  *(a1 + 332) = 1;
  *(a1 + 260) = 1;
  *(a1 + 548) = 1;
  *(a1 + 620) = 1;
  *(a1 + 692) = 1;
  *(a1 + 764) = 1;
  *(a1 + 404) = 1;
  *(a1 + 476) = 1;
  *(a1 + 836) = 1;
  *(a1 + 908) = 1;
  *(a1 + 1196) = 1;
  *(a1 + 1268) = 1;
  *(a1 + 1340) = 1;
  *(a1 + 1412) = 1;
  *(a1 + 1484) = 1;
  *(a1 + 1556) = 1;
  *(a1 + 16) = xmmword_1D2DF0550;
  *(a1 + 88) = 4;
  *(a1 + 160) = 5;
  *(a1 + 304) = 7;
  *(a1 + 232) = 6;
  *(a1 + 520) = 8;
  *(a1 + 592) = 9;
  *(a1 + 376) = xmmword_1D2DF0560;
  *(a1 + 448) = xmmword_1D2DF0570;
  *(a1 + 664) = 18;
  *(a1 + 736) = 19;
  *(a1 + 808) = 20;
  *(a1 + 880) = 21;
  *(a1 + 1168) = 41;
  *(a1 + 1240) = 42;
  *(a1 + 1312) = 43;
  *(a1 + 1384) = 44;
  *(a1 + 1456) = 45;
  *(a1 + 1528) = 46;
  *(a1 + 40) = 1;
  *(a1 + 112) = 1;
  *(a1 + 184) = 1;
  *(a1 + 328) = 1;
  *(a1 + 256) = 1;
  *(a1 + 544) = 1;
  *(a1 + 616) = 1;
  *(a1 + 400) = 1;
  *(a1 + 472) = 1;
  *(a1 + 688) = 1;
  *(a1 + 760) = 1;
  *(a1 + 832) = 1;
  *(a1 + 904) = 1;
  *(a1 + 1192) = 1;
  *(a1 + 1264) = 1;
  *(a1 + 1336) = 1;
  *(a1 + 1408) = 1;
  *(a1 + 1480) = 1;
  *(a1 + 1552) = 1;
  v40 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 3"];
  v41 = *(a1 + 1360);
  *(a1 + 1360) = v40;

  v42 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 4"];
  v43 = *(a1 + 1432);
  *(a1 + 1432) = v42;

  v44 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 1"];
  v45 = *(a1 + 1504);
  *(a1 + 1504) = v44;

  v46 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 2"];
  v47 = *(a1 + 1576);
  *(a1 + 1576) = v46;
}

void sub_1D2D574D4(_Unwind_Exception *a1)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v1 + i);
  }

  _Unwind_Resume(a1);
}

void sub_1D2D584A8(_Unwind_Exception *a1)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v1 + i);
  }

  _Unwind_Resume(a1);
}

void sub_1D2D587CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  __destructor_8_s0_s48_s56_s64(&a38);
  __destructor_8_s0_s48_s56_s64(v38 - 160);
  _Unwind_Resume(a1);
}

void sub_1D2D5A4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D5AF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64((&a40 + i));
  }

  _Unwind_Resume(a1);
}

id allCodes()
{
  if (allCodes_onceToken != -1)
  {
    allCodes_cold_1();
  }

  v1 = allCodes_codes;

  return v1;
}

void __allCodes_block_invoke()
{
  v0 = allCodes_codes;
  allCodes_codes = &unk_1F4E8F498;
}

double __timestampToSecondsMultiplier_block_invoke()
{
  mach_timebase_info(&timestampToSecondsMultiplier_timebaseInfo);
  LODWORD(v0) = timestampToSecondsMultiplier_timebaseInfo;
  LODWORD(v1) = *algn_1EC73610C;
  result = v0 / v1 / 1000000000.0;
  timestampToSecondsMultiplier_multiplier = *&result;
  return result;
}

void OUTLINED_FUNCTION_2_16(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_INTERVAL_END, v10, a5, a6, &a9, 2u);
}

id OUTLINED_FUNCTION_4_9(uint64_t a1)
{
  v2 = *(a1 + 40);

  return v2;
}

void OUTLINED_FUNCTION_0_29(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_5_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

void sub_1D2D60D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&a9 + i);
  }

  _Unwind_Resume(a1);
}

void sub_1D2D63CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D66AC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _GCKeyboardEventSourceDescription_Classes()
{
  if (_GCKeyboardEventSourceDescription_Classes_onceToken != -1)
  {
    _GCKeyboardEventSourceDescription_Classes_cold_1();
  }

  v1 = _GCKeyboardEventSourceDescription_Classes_Classes;

  return v1;
}

void sub_1D2D682CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&a9 + i);
  }

  _Unwind_Resume(a1);
}

id _gc_log_ui()
{
  if (_gc_log_ui_onceToken != -1)
  {
    _gc_log_ui_cold_1();
  }

  v1 = _gc_log_ui_Log;

  return v1;
}

void ___gc_log_ui_block_invoke()
{
  v0 = os_log_create("com.apple.gamecontroller", "UI");
  v1 = _gc_log_ui_Log;
  _gc_log_ui_Log = v0;
}

void sub_1D2D69CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D6A684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GCAdaptiveTriggersXPCProxyRemoteClientEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA5730];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_newStatuses_ argumentIndex:0 ofReply:0];

  return v0;
}

id GCAdaptiveTriggersXPCProxyRemoteServerEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA5838];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_fetchStatusesWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCAdaptiveTriggersXPCProxyServiceRemoteServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA5FD8];
  v1 = GCAdaptiveTriggersXPCProxyRemoteClientEndpointInterface();
  [v0 setInterface:v1 forSelector:sel_adaptiveTriggersXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:0];

  v2 = GCAdaptiveTriggersXPCProxyRemoteServerEndpointInterface();
  [v0 setInterface:v2 forSelector:sel_adaptiveTriggersXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id _gc_log_physical_device()
{
  if (_gc_log_physical_device_onceToken != -1)
  {
    _gc_log_physical_device_cold_1();
  }

  v1 = _gc_log_physical_device_Log;

  return v1;
}

void ___gc_log_physical_device_block_invoke()
{
  v0 = os_log_create("com.apple.gamecontroller", "PhysicalDevice");
  v1 = _gc_log_physical_device_Log;
  _gc_log_physical_device_Log = v0;
}

id _gc_log_logical_device()
{
  if (_gc_log_logical_device_onceToken != -1)
  {
    _gc_log_logical_device_cold_1();
  }

  v1 = _gc_log_logical_device_Log;

  return v1;
}

void ___gc_log_logical_device_block_invoke()
{
  v0 = os_log_create("com.apple.gamecontroller", "LogicalDevice");
  v1 = _gc_log_logical_device_Log;
  _gc_log_logical_device_Log = v0;
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  return [v47 countByEnumeratingWithState:&a15 objects:&a47 count:16];
}

void sub_1D2D6E8CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D2D70048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D70460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRPScreenRecorderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ReplayKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ReplayKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E841AF10;
    v6 = 0;
    ReplayKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReplayKitLibraryCore_frameworkLibrary)
  {
    __getRPScreenRecorderClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("RPScreenRecorder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRPScreenRecorderClass_block_invoke_cold_1();
  }

  getRPScreenRecorderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ReplayKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReplayKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSSUIServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ScreenshotServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ScreenshotServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E841AF28;
    v6 = 0;
    ScreenshotServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ScreenshotServicesLibraryCore_frameworkLibrary)
  {
    __getSSUIServiceClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("SSUIService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSSUIServiceClass_block_invoke_cold_1();
  }

  getSSUIServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ScreenshotServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ScreenshotServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2D72E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D2D73094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D732EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D73544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D7379C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D73A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D73CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D73F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2D741B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_11_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D2D7782C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&a9 + i);
  }

  _Unwind_Resume(a1);
}

void sub_1D2D77FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D78684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GCSystemGestureXPCProxyRemoteClientEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA6E58];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCSystemGestureXPCProxyRemoteServerEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA6EB8];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCSystemGestureXPCProxyServiceRemoteServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA5DF0];
  v1 = GCSystemGestureXPCProxyRemoteClientEndpointInterface();
  [v0 setInterface:v1 forSelector:sel_systemGestureXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:0];

  v2 = GCSystemGestureXPCProxyRemoteServerEndpointInterface();
  [v0 setInterface:v2 forSelector:sel_systemGestureXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

void OUTLINED_FUNCTION_2_19(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 2u);
}

void sub_1D2D79980(_Unwind_Exception *a1)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v1 + i);
  }

  _Unwind_Resume(a1);
}

void sub_1D2D79AEC(_Unwind_Exception *a1)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v1 + i);
  }

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_32(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id GCDriverClientInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EB3BF8];
  v1 = GCNintendoJoyConFusionGestureServiceClientInterface();
  [v0 setInterface:v1 forSelector:sel_connectToNintendoJoyConFusionGestureServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v2 = GCNintendoJoyConFusionGestureServiceServerInterface();
  [v0 setInterface:v2 forSelector:sel_connectToNintendoJoyConFusionGestureServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v3 = GCLightServiceClientInterface();
  [v0 setInterface:v3 forSelector:sel_connectToLightServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v4 = GCLightServiceServerInterface();
  [v0 setInterface:v4 forSelector:sel_connectToLightServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v5 = GCIdleServiceClientInterface();
  [v0 setInterface:v5 forSelector:sel_connectToIdleServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v6 = GCIdleServiceServerInterface();
  [v0 setInterface:v6 forSelector:sel_connectToIdleServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v7 = GCAdaptiveTriggersServiceClientInterface();
  [v0 setInterface:v7 forSelector:sel_connectToAdaptiveTriggersServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v8 = GCAdaptiveTriggersServiceServerInterface();
  [v0 setInterface:v8 forSelector:sel_connectToAdaptiveTriggersServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v9 = GCMotionServiceClientInterface();
  [v0 setInterface:v9 forSelector:sel_connectToMotionServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v10 = GCMotionServiceServerInterface();
  [v0 setInterface:v10 forSelector:sel_connectToMotionServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v11 = GCBatteryServiceClientInterface();
  [v0 setInterface:v11 forSelector:sel_connectToBatteryServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v12 = GCBatteryServiceServerInterface();
  [v0 setInterface:v12 forSelector:sel_connectToBatteryServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v13 = GCGameIntentServiceClientInterface();
  [v0 setInterface:v13 forSelector:sel_connectToGameIntentServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v14 = GCGameIntentServiceServerInterface();
  [v0 setInterface:v14 forSelector:sel_connectToGameIntentServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:sel_connectToGenericDeviceDriverConfigurationServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:sel_connectToGenericDeviceDriverConfigurationServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

float32x4_t dqMakeDualQuaternion(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  v2 = vadd_f32(*v1.i8, *&vextq_s8(v1, v1, 8uLL));
  if (vaddv_f32(v2) == 0.0)
  {
    return xmmword_1D2DEE4B0;
  }

  else
  {
    v4 = vadd_f32(v2, vdup_lane_s32(v2, 1)).u32[0];
    v5 = vrsqrte_f32(v4);
    v6 = vmul_f32(v5, vrsqrts_f32(v4, vmul_f32(v5, v5)));
    return vmulq_n_f32(a1, vmul_f32(v6, vrsqrts_f32(v4, vmul_f32(v6, v6))).f32[0]);
  }
}

double dqNormalize(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  v2 = vaddv_f32(vadd_f32(*v1.i8, *&vextq_s8(v1, v1, 8uLL)));
  if (v2 <= 0.000001)
  {
    dqNormalize_cold_1();
  }

  *&result = vmulq_n_f32(a1, 1.0 / v2).u64[0];
  return result;
}

double dqMul(float32x4_t a1, double a2, float32x4_t a3)
{
  v3 = vnegq_f32(a1);
  v4 = vtrn2q_s32(a1, vtrn1q_s32(a1, v3));
  v5 = vrev64q_s32(a1);
  v5.i32[0] = v3.i32[1];
  v5.i32[3] = v3.i32[2];
  *&result = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a1, v3, 8uLL), *a3.f32, 1), vextq_s8(v4, v4, 8uLL), a3.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a1, a3, 3), v5, a3, 2)).u64[0];
  return result;
}

double dqDLB(float32x4_t a1, double a2, float32x4_t a3, double a4, float a5)
{
  v5 = vaddq_f32(vmulq_n_f32(a3, a5), vmulq_n_f32(a1, 1.0 - a5));
  v6 = vmulq_f32(v5, v5);
  v7 = vaddv_f32(vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL)));
  if (v7 <= 0.000001)
  {
    dqNormalize_cold_1();
  }

  *&result = vmulq_n_f32(v5, 1.0 / v7).u64[0];
  return result;
}

void dqScLERP(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float a5)
{
  if ((vminvq_u32(vceqq_f32(a1, a3)) & 0x80000000) == 0 || (vminvq_u32(vceqq_f32(a2, a4)) & 0x80000000) == 0)
  {
    v6 = vmulq_f32(a1, a3);
    v7 = a1;
    v8 = vextq_s8(v6, v6, 8uLL);
    *a1.f32 = vadd_f32(*v6.i8, *v8.f32);
    a1.f32[0] = vaddv_f32(*a1.f32);
    v8.i64[0] = 0;
    v9 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v8, a1), 0), vnegq_f32(a3), a3);
    v10 = vmulq_f32(v7, xmmword_1D2DF0A90);
    v11 = vnegq_f32(v10);
    v12 = vtrn2q_s32(v10, vtrn1q_s32(v10, v11));
    v13 = vrev64q_s32(v10);
    v13.i32[0] = v11.i32[1];
    v13.i32[3] = v11.i32[2];
    v14 = acosf(COERCE_FLOAT(vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(*&v10, *&v11, 8uLL), *&v9, 1), vextq_s8(v12, v12, 8uLL), *&v9), vmlaq_laneq_f32(vmulq_laneq_f32(v10, v9, 3), v13, v9, 2)).i32[3]));
    __sincosf_stret(((v14 + v14) * a5) * 0.5);
  }
}

double dqGetTranslation(float32x4_t a1, float32x4_t a2)
{
  v2 = vaddq_f32(a2, a2);
  v3 = vmulq_f32(a1, xmmword_1D2DF0A90);
  v4 = vnegq_f32(v3);
  v5 = vtrn2q_s32(v3, vtrn1q_s32(v3, v4));
  v6 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v3, v4, 8uLL), *v2.f32, 1), vextq_s8(v5, v5, 8uLL), v2.f32[0]);
  v7 = vrev64q_s32(v3);
  v7.i32[0] = v4.i32[1];
  v7.i32[3] = v4.i32[2];
  *&result = vaddq_f32(v6, vmlaq_laneq_f32(vmulq_laneq_f32(v3, v2, 3), v7, v2, 2)).u64[0];
  return result;
}

__n64 dqGetMatrix(float32x4_t a1)
{
  v2 = vmulq_f32(a1, a1);
  v3 = vaddv_f32(vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL)));
  if (v3 <= 0.000001)
  {
    dqNormalize_cold_1();
  }

  v4 = *(MEMORY[0x1E69E9B18] + 16);
  v5 = *(MEMORY[0x1E69E9B18] + 32);
  v6 = HIDWORD(*MEMORY[0x1E69E9B18]);
  _Q4 = vmulq_n_f32(a1, 1.0 / v3);
  _S6 = _Q4.i32[3];
  _S5 = _Q4.f32[1];
  _S16 = _Q4.i32[2];
  __asm
  {
    FMLA            S17, S6, V4.S[3]
    FMLS            S17, S5, V4.S[1]
    FMLS            S17, S16, V4.S[2]
  }

  result.n64_u32[0] = _S17;
  _S17 = _Q4.f32[0] + _Q4.f32[0];
  __asm { FMLA            S19, S17, V4.S[1] }

  result.n64_u32[1] = _S19;
  __asm
  {
    FMLA            S19, S17, V4.S[2]
    FMLA            S19, S17, V4.S[1]
    FMLA            S19, S6, V4.S[3]
    FMLS            S19, S16, V4.S[2]
  }

  _S19 = _S5 + _S5;
  __asm
  {
    FMLA            S20, S19, V4.S[2]
    FMLA            S7, S17, V4.S[2]
    FMLA            S7, S19, V4.S[2]
    FMLA            S7, S6, V4.S[3]
    FMLS            S6, S5, V4.S[1]
  }

  v31 = *(MEMORY[0x1E69E9B18] + 60);
  return result;
}

void sub_1D2D82350(_Unwind_Exception *a1)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v1 + i);
  }

  _Unwind_Resume(a1);
}

void sub_1D2D83674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t forceUpdateContext(uint64_t a1)
{
  v2 = forceUpdateContext_Offset;
  if (forceUpdateContext_Offset == -1)
  {
    forceUpdateContext_cold_1(&v5);
    v2 = v5;
  }

  v3 = MyUpdateContext_Offset_12;
  if (MyUpdateContext_Offset_12 == -1)
  {
    v3 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_12 = v3;
    v2 = forceUpdateContext_Offset;
  }

  return a1 + v3 + v2;
}

uint64_t OUTLINED_FUNCTION_6_9@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return [(_GCDevicePhysicalInputView *)v2 _testAndSetPrimitiveValue:a1 forSlot:v2 + a2];
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t result)
{
  *(v2 + 560) = result;
  v3 = *(v1 + 512) == 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t result)
{

  return [(_GCDevicePhysicalInputButtonElement *)result _touch];
}

id AllControllerProfiles()
{
  if (AllControllerProfiles_onceToken != -1)
  {
    AllControllerProfiles_cold_1();
  }

  v1 = AllControllerProfiles_ControllerProfiles;

  return v1;
}

void __AllControllerProfiles_block_invoke()
{
  v3[11] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:11];
  v1 = AllControllerProfiles_ControllerProfiles;
  AllControllerProfiles_ControllerProfiles = v0;

  v2 = *MEMORY[0x1E69E9840];
}

id hexStringFromByteArray(uint64_t a1, int a2)
{
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:2 * a2];
  if (a2 >= 1)
  {
    v5 = a2 - 1;
    do
    {
      if (v5)
      {
        v6 = @":";
      }

      else
      {
        v6 = &stru_1F4E3B4E0;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x%@", *(a1 + v5), v6];
      [v4 appendString:v7];

      v8 = v5-- + 1;
    }

    while (v8 > 1);
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithString:v4];
  v10 = [v9 uppercaseString];

  return v10;
}

uint64_t isPartnerSupportEnabled()
{
  if (isPartnerSupportEnabled_onceToken != -1)
  {
    isPartnerSupportEnabled_cold_1();
  }

  return isPartnerSupportEnabled__partnerSupportEnabled;
}

void __isPartnerSupportEnabled_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.GameController"];
  isPartnerSupportEnabled__partnerSupportEnabled = [v0 BOOLForKey:@"GCPartnersEnable"];
  v1 = getGCHIDLogger();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = isPartnerSupportEnabled__partnerSupportEnabled;
    _os_log_impl(&dword_1D2CD5000, v1, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v3, 8u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t SharableMemoryBase::AllocNonShared(SharableMemoryBase *this, size_t size)
{
  *(this + 8) = 1;
  v4 = malloc_type_malloc(size, 0x53F7E1ADuLL);
  if (size && !v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v7, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  *(this + 2) = size;
  *(this + 3) = v4;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 4294967188;
  }
}

uint64_t SharableMemoryBase::Set(uint64_t this, void *a2, uint64_t a3)
{
  *(this + 8) = 0;
  *(this + 16) = a3;
  *(this + 24) = a2;
  return this;
}

uint64_t SharableMemoryBlock::InitServer(uint64_t a1, size_t a2, _DWORD *a3)
{
  address[8] = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(a1);
  v6 = a3[2];
  if (v6 == 2)
  {
    v15 = atomic_fetch_add_explicit(SharableMemoryBlock::InitServer(unsigned long,SharableMemoryBlock::ServerToken &)::gBufSerialNum, 1u, memory_order_relaxed) + 1;
    *(a1 + 40) = v15;
    v16 = getpid();
    snprintf(address, 0x40uLL, "AppleABL.%x.%x", v16, v15);
    v17 = shm_open(address, 514, 511);
    *(a1 + 36) = v17;
    if (v17 != -1)
    {
      ftruncate(v17, a2);
      *(a1 + 16) = a2;
      v18 = mmap(0, a2, 3, 1, *(a1 + 36), 0);
      *(a1 + 24) = v18;
      if (v18 + 1 <= 1)
      {
        v11 = *__error();
        close(*(a1 + 36));
        *(a1 + 36) = -1;
        shm_unlink(address);
        goto LABEL_19;
      }

      v11 = 0;
      *(a1 + 8) = 257;
      a3[3] = *(a1 + 16);
      v19 = *(a1 + 36);
LABEL_18:
      a3[4] = v19;
      goto LABEL_19;
    }

LABEL_13:
    v11 = *__error();
    goto LABEL_19;
  }

  if (v6 == 1)
  {
    *(a1 + 16) = a2;
    v13 = mmap(0, a2, 3, 4097, -1, 0);
    *(a1 + 24) = v13;
    if (v13 + 1 > 1)
    {
      *(a1 + 8) = 257;
      v14 = xpc_shmem_create(v13, *(a1 + 16));
      v11 = 0;
      *(a1 + 48) = v14;
      a3[3] = *(a1 + 16);
      *(a3 + 2) = v14;
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    v11 = 0;
    goto LABEL_19;
  }

  v7 = a2 + *MEMORY[0x1E69E9AC8] - 1;
  v8 = -*MEMORY[0x1E69E9AC8];
  address[0] = 0;
  v9 = v7 & v8;
  if ((v7 & v8) == 0)
  {
    v19 = 0;
    v20 = 0;
    *(a1 + 32) = 0;
LABEL_16:
    v11 = 0;
    *(a1 + 8) = 257;
    *(a1 + 16) = v9;
    *(a1 + 24) = v20;
    a3[3] = v9;
    goto LABEL_18;
  }

  v10 = MEMORY[0x1E69E9A60];
  v11 = vm_allocate(*MEMORY[0x1E69E9A60], address, v7 & v8, 1);
  if (!v11)
  {
    size = v9;
    memory_entry_64 = mach_make_memory_entry_64(*v10, &size, address[0], 3, (a1 + 32), 0);
    if (memory_entry_64)
    {
      v11 = memory_entry_64;
      MEMORY[0x1D38AD500](*v10, address[0], v9);
      goto LABEL_19;
    }

    ++debugSerial;
    v20 = address[0];
    *address[0] = debugSerial;
    v19 = *(a1 + 32);
    goto LABEL_16;
  }

LABEL_19:
  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t SharableMemoryBlock::InitClient(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 16))(a1);
  v4 = *(a2 + 8);
  if (v4 == 2)
  {
    v11 = *(a2 + 20);
    *(a1 + 36) = v11;
    *(a2 + 20) = -1;
    v12 = *(a2 + 12);
    *(a1 + 16) = v12;
    v13 = mmap(0, v12, 3, 1, v11, 0);
    *(a1 + 24) = v13;
    if (v13 + 1 < 2)
    {
      v8 = *__error();
      close(*(a1 + 36));
      *(a1 + 36) = -1;
      return v8;
    }

    goto LABEL_11;
  }

  if (v4 == 1)
  {
    v9 = *(a2 + 24);
    *(a1 + 48) = v9;
    *(a2 + 24) = 0;
    v10 = xpc_shmem_map(v9, (a1 + 24));
    *(a1 + 16) = v10;
    if (!v10)
    {
      xpc_release(*(a1 + 48));
      *(a1 + 48) = 0;
      return 0xFFFFFFFFLL;
    }

LABEL_11:
    v8 = 0;
    *(a1 + 8) = 256;
    return v8;
  }

  if (v4)
  {
    return 0;
  }

  address = 0;
  v5 = (*MEMORY[0x1E69E9AC8] + *(a2 + 12) - 1) & -*MEMORY[0x1E69E9AC8];
  v6 = *(a2 + 20);
  *(a1 + 32) = v6;
  *(a2 + 20) = 0;
  v7 = MEMORY[0x1E69E9A60];
  v8 = vm_map(*MEMORY[0x1E69E9A60], &address, v5, 0xFuLL, 1, v6, 0, 0, 3, 3, 1u);
  if (v8)
  {
    mach_port_deallocate(*v7, *(a1 + 32));
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 8) = 256;
    v14 = address;
    *(a1 + 16) = v5;
    *(a1 + 24) = v14;
  }

  return v8;
}

void SharableMemoryBlock::Free(SharableMemoryBlock *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2)
  {
    if (*(this + 9) == 1)
    {
      if (*(this + 8))
      {
        v3 = MEMORY[0x1E69E9A60];
        v4 = *(this + 2);
        MEMORY[0x1D38AD500](*MEMORY[0x1E69E9A60]);
        v5 = *(this + 8);
        if (v5)
        {
          mach_port_deallocate(*v3, v5);
        }

        *(this + 9) = 0;
        *(this + 8) = 0;
      }

      else
      {
        v6 = *(this + 6);
        if (v6)
        {
          xpc_release(v6);
          *(this + 6) = 0;
          munmap(*(this + 3), *(this + 2));
        }

        else if (*(this + 9) != -1)
        {
          munmap(v2, *(this + 2));
          close(*(this + 9));
          if (*(this + 8) == 1)
          {
            v7 = *(this + 10);
            v8 = getpid();
            snprintf(__str, 0x40uLL, "AppleABL.%x.%x", v8, v7);
            shm_unlink(__str);
          }

          *(this + 9) = -1;
        }
      }
    }

    else if (*(this + 8) == 1)
    {
      free(*(this + 3));
    }
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t SharableMemoryBlock::MachClientToken::Reset(uint64_t this)
{
  v1 = this;
  v2 = *(this + 20);
  if (v2)
  {
    this = mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
    *(v1 + 20) = 0;
  }

  *(v1 + 12) = 0;
  return this;
}

void SharableMemoryBlock::XPCClientToken::Reset(SharableMemoryBlock::XPCClientToken *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    xpc_release(v2);
    *(this + 3) = 0;
  }

  *(this + 3) = 0;
}

uint64_t SharableMemoryBlock::FDClientToken::Reset(SharableMemoryBlock::FDClientToken *this)
{
  result = *(this + 5);
  if (result != -1)
  {
    result = close(result);
    *(this + 5) = -1;
  }

  *(this + 3) = 0;
  return result;
}

void SharableMemoryBlock::XPCClientToken::~XPCClientToken(SharableMemoryBlock::XPCClientToken *this)
{
  *this = &unk_1F4E38A10;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 3);
    if (v2)
    {
      xpc_release(v2);
      *(this + 3) = 0;
    }

    *(this + 3) = 0;
  }
}

{
  SharableMemoryBlock::XPCClientToken::~XPCClientToken(this);

  JUMPOUT(0x1D38AC5E0);
}

void SharableMemoryBlock::~SharableMemoryBlock(SharableMemoryBlock *this)
{
  SharableMemoryBlock::~SharableMemoryBlock(this);

  JUMPOUT(0x1D38AC5E0);
}

{
  *this = &unk_1F4E38AC8;
  SharableMemoryBlock::Free(this);
}

void sub_1D2D85C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = _GCHapticClientProxy;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D2D8694C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));

  _Unwind_Resume(a1);
}

void sub_1D2D86A7C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id NSErrorFromOSStatus(int a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:a1 userInfo:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void HapticSharedMemory::~HapticSharedMemory(HapticSharedMemory *this)
{
  SharableMemoryBlock::~SharableMemoryBlock(this);

  JUMPOUT(0x1D38AC5E0);
}

BOOL OUTLINED_FUNCTION_8_8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id GC_IOHIDServiceClientGetStringProperty(__IOHIDServiceClient *a1, const __CFString *a2)
{
  v2 = IOHIDServiceClientCopyProperty(a1, a2);

  return v2;
}

void GC_IOHIDSetLEDs(const void *a1, uint64_t a2)
{
  if (a1)
  {
    CFRetain(a1);
    v4 = dispatch_get_global_queue(0, 0);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __GC_IOHIDSetLEDs_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = a1;
    v5[5] = a2;
    dispatch_async(v4, v5);
  }
}

double NormalizedLogicalAxisValueRaw(double a1, double a2, double a3)
{
  result = round(((a1 - a2 + a1 - a2) / (a3 - a2) + -1.0) * 1024.0) * 0.0009765625;
  if (result < -1.0)
  {
    result = -1.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

double NormalizedLogicalButtonValueRaw(double a1, double a2, double a3)
{
  result = round((a1 - a2) / (a3 - a2) * 1024.0) * 0.0009765625;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

CFIndex NormalizedLogicalAxisValue(__IOHIDValue *a1)
{
  Element = IOHIDValueGetElement(a1);
  IOHIDValueGetIntegerValue(a1);
  IOHIDElementGetLogicalMin(Element);
  return IOHIDElementGetLogicalMax(Element);
}

CFIndex NormalizedLogicalButtonValue(__IOHIDValue *a1)
{
  Element = IOHIDValueGetElement(a1);
  IOHIDValueGetIntegerValue(a1);
  IOHIDElementGetLogicalMin(Element);
  return IOHIDElementGetLogicalMax(Element);
}

void sub_1D2D8AEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _DescendantPointerEvent(uint64_t a1)
{
  v1 = a1;
  if (a1 && IOHIDEventGetType() != 17)
  {
    Children = IOHIDEventGetChildren();
    if (Children && (v3 = Children, Count = CFArrayGetCount(Children), Count >= 1))
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        v8 = _DescendantPointerEvent(ValueAtIndex);
        if (v8)
        {
          break;
        }

        if (v5 == ++v6)
        {
          return 0;
        }
      }

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

id GCAppServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA6500];
  v1 = GCControllerServiceRemoteClientInterface();
  [v0 setInterface:v1 forSelector:sel_connectToControllerServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v2 = GCControllerServiceRemoteServerInterface();
  [v0 setInterface:v2 forSelector:sel_connectToControllerServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v3 = GCPlayerIndicatorXPCProxyServiceRemoteClientInterface();
  [v0 setInterface:v3 forSelector:sel_connectToPlayerIndicatorXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v4 = GCPlayerIndicatorXPCProxyServiceRemoteServerInterface();
  [v0 setInterface:v4 forSelector:sel_connectToPlayerIndicatorXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v5 = GCLightXPCProxyServiceRemoteClientInterface();
  [v0 setInterface:v5 forSelector:sel_connectToLightXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v6 = GCLightXPCProxyServiceRemoteServerInterface();
  [v0 setInterface:v6 forSelector:sel_connectToLightXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v7 = GCAdaptiveTriggersXPCProxyServiceRemoteClientInterface();
  [v0 setInterface:v7 forSelector:sel_connectToAdaptiveTriggersXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v8 = GCAdaptiveTriggersXPCProxyServiceRemoteServerInterface();
  [v0 setInterface:v8 forSelector:sel_connectToAdaptiveTriggersXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v9 = GCMotionXPCProxyServiceRemoteClientInterface();
  [v0 setInterface:v9 forSelector:sel_connectToMotionXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v10 = GCMotionXPCProxyServiceRemoteServerInterface();
  [v0 setInterface:v10 forSelector:sel_connectToMotionXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v11 = GCBatteryXPCProxyServiceRemoteClientInterface();
  [v0 setInterface:v11 forSelector:sel_connectToBatteryXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v12 = GCBatteryXPCProxyServiceRemoteServerInterface();
  [v0 setInterface:v12 forSelector:sel_connectToBatteryXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v13 = GCSettingsXPCProxyServiceRemoteClientInterface();
  [v0 setInterface:v13 forSelector:sel_connectToSettingsXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v14 = GCSettingsXPCProxyServiceRemoteServerInterface();
  [v0 setInterface:v14 forSelector:sel_connectToSettingsXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v15 = GCPhotoVideoXPCProxyServiceRemoteClientInterface();
  [v0 setInterface:v15 forSelector:sel_connectToPhotoVideoXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v16 = GCPhotoVideoXPCProxyServiceRemoteServerInterface();
  [v0 setInterface:v16 forSelector:sel_connectToPhotoVideoXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v17 = GCSystemGestureXPCProxyServiceRemoteClientInterface();
  [v0 setInterface:v17 forSelector:sel_connectToSystemGestureXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:0];

  v18 = GCSystemGestureXPCProxyServiceRemoteServerInterface();
  [v0 setInterface:v18 forSelector:sel_connectToSystemGestureXPCProxyServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

void OUTLINED_FUNCTION_1_27(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id _GCMotionEventSourceDescription_Classes()
{
  if (_GCMotionEventSourceDescription_Classes_onceToken != -1)
  {
    _GCMotionEventSourceDescription_Classes_cold_1();
  }

  v1 = _GCMotionEventSourceDescription_Classes_Classes;

  return v1;
}

void sub_1D2D92AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D93254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GCPlayerIndicatorXPCProxyRemoteClientEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA87D8];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCPlayerIndicatorXPCProxyRemoteServerEndpointInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA88B8];
  v1 = GCIPCObjectIdentifier_Classes();
  [v0 setClasses:v1 forSelector:sel_fetchObjectIdentifierWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id GCPlayerIndicatorXPCProxyServiceRemoteServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EA6120];
  v1 = GCPlayerIndicatorXPCProxyRemoteClientEndpointInterface();
  [v0 setInterface:v1 forSelector:sel_playerIndicatorXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:0];

  v2 = GCPlayerIndicatorXPCProxyRemoteServerEndpointInterface();
  [v0 setInterface:v2 forSelector:sel_playerIndicatorXPCProxyServiceClientEndpointConnect_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1D2D94758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  objc_sync_exit(v11);
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64((&a11 + i));
  }

  _Unwind_Resume(a1);
}

__CFString *stringFromState(int a1)
{
  v1 = @"nil";
  if (a1 == 2)
  {
    v1 = @"digital";
  }

  if (a1 == 1)
  {
    return @"analog";
  }

  else
  {
    return v1;
  }
}

id convertToDict(unsigned int *a1, void (*a2)(void))
{
  v23[15] = *MEMORY[0x1E69E9840];
  v22[0] = @"buttonA";
  v21 = a2(*a1);
  v23[0] = v21;
  v22[1] = @"buttonB";
  v20 = a2(a1[1]);
  v23[1] = v20;
  v22[2] = @"buttonX";
  v19 = a2(a1[2]);
  v23[2] = v19;
  v22[3] = @"buttonY";
  v18 = a2(a1[3]);
  v23[3] = v18;
  v22[4] = @"buttonMenu";
  v17 = a2(a1[4]);
  v23[4] = v17;
  v22[5] = @"buttonOptions";
  v16 = a2(a1[5]);
  v23[5] = v16;
  v22[6] = @"leftShoulder";
  v4 = a2(a1[6]);
  v23[6] = v4;
  v22[7] = @"rightShoulder";
  v5 = a2(a1[7]);
  v23[7] = v5;
  v22[8] = @"leftTrigger";
  v6 = a2(a1[8]);
  v23[8] = v6;
  v22[9] = @"rightTrigger";
  v7 = a2(a1[9]);
  v23[9] = v7;
  v22[10] = @"dpad";
  v8 = a2(a1[10]);
  v23[10] = v8;
  v22[11] = @"leftThumbstick";
  v9 = a2(a1[11]);
  v23[11] = v9;
  v22[12] = @"rightThumbstick";
  v10 = a2(a1[12]);
  v23[12] = v10;
  v22[13] = @"leftThumbstickButton";
  v11 = a2(a1[13]);
  v23[13] = v11;
  v22[14] = @"rightThumbstickButton";
  v12 = a2(a1[14]);
  v23[14] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:15];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void *getElementTimePressed(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 getAndResetTimesPressed];
  }

  return a1;
}

uint64_t getElementCapability(uint64_t result)
{
  if (result)
  {
    if ([result isAnalog])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void mapToAnalytics(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 44) = 0u;
  v59 = v5;
  v6 = [v5 extendedGamepad];

  if (v6)
  {
    v7 = [v59 extendedGamepad];
    v8 = [v7 buttonA];
    *a3 = a2();

    v9 = [v59 extendedGamepad];
    v10 = [v9 buttonB];
    *(a3 + 4) = a2();

    v11 = [v59 extendedGamepad];
    v12 = [v11 buttonX];
    *(a3 + 8) = a2();

    v13 = [v59 extendedGamepad];
    v14 = [v13 buttonY];
    *(a3 + 12) = a2();

    v15 = [v59 extendedGamepad];
    v16 = [v15 buttonMenu];
    *(a3 + 16) = a2();

    v17 = [v59 extendedGamepad];
    v18 = [v17 buttonOptions];
    *(a3 + 20) = a2();

    v19 = [v59 extendedGamepad];
    v20 = [v19 leftShoulder];
    *(a3 + 24) = a2();

    v21 = [v59 extendedGamepad];
    v22 = [v21 rightShoulder];
    *(a3 + 28) = a2();

    v23 = [v59 extendedGamepad];
    v24 = [v23 leftTrigger];
    *(a3 + 32) = a2();

    v25 = [v59 extendedGamepad];
    v26 = [v25 rightTrigger];
    *(a3 + 36) = a2();

    v27 = [v59 extendedGamepad];
    v28 = [v27 dpad];
    *(a3 + 40) = a2();

    v29 = [v59 extendedGamepad];
    v30 = [v29 leftThumbstick];
    *(a3 + 44) = a2();

    v31 = [v59 extendedGamepad];
    v32 = [v31 rightThumbstick];
    *(a3 + 48) = a2();

    v33 = [v59 extendedGamepad];
    v34 = [v33 leftThumbstickButton];
    *(a3 + 52) = a2();

    v35 = [v59 extendedGamepad];
    v36 = [v35 rightThumbstickButton];
    v37 = 56;
  }

  else
  {
    v38 = [v59 gamepad];

    if (v38)
    {
      v39 = [v59 gamepad];
      v40 = [v39 buttonA];
      *a3 = a2();

      v41 = [v59 gamepad];
      v42 = [v41 buttonB];
      *(a3 + 4) = a2();

      v43 = [v59 gamepad];
      v44 = [v43 buttonX];
      *(a3 + 8) = a2();

      v45 = [v59 gamepad];
      v46 = [v45 buttonY];
      *(a3 + 12) = a2();

      v47 = [v59 gamepad];
      v48 = [v47 leftShoulder];
      *(a3 + 24) = a2();

      v49 = [v59 gamepad];
      v50 = [v49 rightShoulder];
      *(a3 + 28) = a2();

      v51 = [v59 gamepad];
    }

    else
    {
      v52 = [v59 microGamepad];

      if (!v52)
      {
        goto LABEL_9;
      }

      v53 = [v59 microGamepad];
      v54 = [v53 buttonA];
      *a3 = a2();

      v55 = [v59 microGamepad];
      v56 = [v55 buttonX];
      *(a3 + 8) = a2();

      v57 = [v59 microGamepad];
      v58 = [v57 buttonMenu];
      *(a3 + 16) = a2();

      v51 = [v59 microGamepad];
    }

    v35 = v51;
    v36 = [v51 dpad];
    v37 = 40;
  }

  *(a3 + v37) = (a2)(v36);

LABEL_9:
}

void dataFromController(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  v21 = v3;
  v4 = [v3 detailedProductCategory];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F4E3B4E0;
  }

  *a2 = v6;

  v7 = [v21 vendorName];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F4E3B4E0;
  }

  *(a2 + 8) = v9;

  v10 = [v21 physicalInputProfileName];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_1F4E3B4E0;
  }

  *(a2 + 16) = v12;

  *(a2 + 24) = [v21 isAttachedToDevice];
  v13 = [v21 isATVRemote];
  *(a2 + 26) = v13;
  if (v13)
  {
    v14 = [v21 hidServices];
    *(a2 + 27) = [v14 count] != 0;
  }

  else
  {
    *(a2 + 27) = 0;
  }

  v15 = [v21 extendedGamepad];
  if (v15)
  {
    v16 = [v21 extendedGamepad];
    v17 = [v16 rightThumbstickButton];
    if (v17)
    {
      v18 = [v21 extendedGamepad];
      v19 = [v18 leftThumbstickButton];
      *(a2 + 25) = v19 != 0;
    }

    else
    {
      *(a2 + 25) = 0;
    }
  }

  else
  {
    *(a2 + 25) = 0;
  }

  mapToAnalytics(v21, getElementCapability, v22);
  v20 = v22[1];
  *(a2 + 28) = v22[0];
  *(a2 + 44) = v20;
  *(a2 + 60) = *v23;
  *(a2 + 72) = *&v23[12];
}

int32x2_t batchInputData(uint64_t a1, void *a2)
{
  v6 = 0u;
  memset(v7, 0, 28);
  v5 = 0u;
  mapToAnalytics(a2, getElementTimePressed, &v5);
  v3 = vaddq_s32(*(a1 + 16), v6);
  *a1 = vaddq_s32(*a1, v5);
  *(a1 + 16) = v3;
  *(a1 + 32) = vaddq_s32(*(a1 + 32), v7[0]);
  result = vadd_s32(*(a1 + 48), *v7[1].i8);
  *(a1 + 48) = result;
  *(a1 + 56) += v7[1].i32[2];
  return result;
}

NSData *__cdecl NSDataFromGCGamepadSnapShotDataV100(GCGamepadSnapShotDataV100 *snapshotData)
{
  if (snapshotData)
  {
    v2 = snapshotData;
    if (snapshotData->version)
    {
      v3 = MEMORY[0x1E695DEF0];
    }

    else
    {
      v4 = *&snapshotData->buttonB;
      v6 = *&snapshotData->version;
      v7 = v4;
      *&v8 = snapshotData->rightShoulder;
      LODWORD(v6) = 2359552;
      v3 = MEMORY[0x1E695DEF0];
      v2 = &v6;
    }

    snapshotData = [v3 dataWithBytes:v2 length:{36, v6, v7, v8}];
    v1 = vars8;
  }

  return snapshotData;
}

BOOL GCGamepadSnapShotDataV100FromNSData(GCGamepadSnapShotDataV100 *snapshotData, NSData *data)
{
  v3 = data;
  v4 = v3;
  v5 = 0;
  if (snapshotData && v3)
  {
    if ([(NSData *)v3 length]< 0x24 || (v7 = 0, [(NSData *)v4 getBytes:&v7 length:4], v7 < 0x100u) || HIWORD(v7) < 0x24u)
    {
      v5 = 0;
    }

    else
    {
      [(NSData *)v4 getBytes:snapshotData length:36];
      v5 = 1;
    }
  }

  return v5;
}

void OUTLINED_FUNCTION_0_36(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

void sub_1D2D9A00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2D9AD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __destructor_8_s0_s48_s56_s64(va);
  _Unwind_Resume(a1);
}

void sub_1D2D9B118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __destructor_8_s0_s48_s56_s64(va);
  _Unwind_Resume(a1);
}

void sub_1D2D9D2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _gc_log_session()
{
  if (_gc_log_session_onceToken != -1)
  {
    _gc_log_session_cold_1();
  }

  v1 = _gc_log_session_Log;

  return v1;
}

void ___gc_log_session_block_invoke()
{
  v0 = os_log_create("com.apple.gamecontroller", "Session");
  v1 = _gc_log_session_Log;
  _gc_log_session_Log = v0;
}

id GCPhysicalInputElementCollection.subscript.getter()
{
  v1 = *v0;
  v2 = MEMORY[0x1D38ABB70]();
  v3 = [v1 elementForAlias_];

  return v3;
}

id GCPhysicalInputElementCollection.subscript.getter(void *a1)
{
  v2 = [*v1 elementAtIndex_];

  return v2;
}

id GCPhysicalInputElementCollection.endIndex.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  *a1 = result;
  return result;
}

void *GCPhysicalInputElementCollection.index(after:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance GCPhysicalInputElementCollection<A>(void *a1, void *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = GCPhysicalInputElementCollection.subscript.read(v4, a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance GCPhysicalInputElementCollection<A>;
}

void protocol witness for Collection.subscript.read in conformance GCPhysicalInputElementCollection<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance GCPhysicalInputElementCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance GCPhysicalInputElementCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance GCPhysicalInputElementCollection<A>()
{
  swift_getWitnessTable();
  v1 = specialized Collection._copyToContiguousArray()();

  return v1;
}

uint64_t GCPhysicalInputElementName.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t one-time initialization function for shifter()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCPhysicalInputElementName.shifter = result;
  unk_1EC736280 = v1;
  return result;
}

uint64_t *GCPhysicalInputElementName.shifter.unsafeMutableAddressor()
{
  if (one-time initialization token for shifter != -1)
  {
    swift_once();
  }

  return &static GCPhysicalInputElementName.shifter;
}

uint64_t static GCPhysicalInputElementName.shifter.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shifter != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = unk_1EC736280;
  *a1 = static GCPhysicalInputElementName.shifter;
  a1[1] = v2;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance GCPhysicalInputElementName@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GCPhysicalInputElementName@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GCPhysicalInputElementName()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GCPhysicalInputElementName()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GCPhysicalInputElementName(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

id GCPhysicalInputElementCollection<>.subscript.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;

  v5 = MEMORY[0x1D38ABB70](v2, v3);

  v6 = [v4 elementForAlias_];

  return v6;
}

{
  v2 = *a1;
  v3 = a1[1];
  v6 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo06GCAxisE0_pGMd, &_s14GameController32GCPhysicalInputElementCollectionVySo06GCAxisE0_pGMR);
  v4 = GCPhysicalInputElementCollection.subscript.getter();

  return v4;
}

{
  v2 = *a1;
  v3 = a1[1];
  v6 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo014GCDirectionPadE0_pGMd, &_s14GameController32GCPhysicalInputElementCollectionVySo014GCDirectionPadE0_pGMR);
  v4 = GCPhysicalInputElementCollection.subscript.getter();

  return v4;
}

{
  v2 = *a1;
  v3 = a1[1];
  v6 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCSwitchE0_pGMd, &_s14GameController32GCPhysicalInputElementCollectionVySo08GCSwitchE0_pGMR);
  v4 = GCPhysicalInputElementCollection.subscript.getter();

  return v4;
}

{
  v2 = *a1;
  v3 = a1[1];
  v6 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd, &_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMR);
  v4 = GCPhysicalInputElementCollection.subscript.getter();

  return v4;
}

uint64_t GCPhysicalInputElementCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(a4 + 16);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = GCPhysicalInputElementCollection.subscript.getter();

  if (!v8)
  {
    return 0;
  }

  v9 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

id GCPhysicalInputElementCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v6 = MEMORY[0x1D38ABB70]();

  v7 = [v4 elementForAlias_];

  return v7;
}

unint64_t lazy protocol witness table accessor for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName()
{
  result = lazy protocol witness table cache variable for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName;
  if (!lazy protocol witness table cache variable for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName;
  if (!lazy protocol witness table cache variable for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName;
  if (!lazy protocol witness table cache variable for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GCPhysicalInputElementName(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName();
  result = lazy protocol witness table accessor for type GCPhysicalInputElementName and conformance GCPhysicalInputElementName();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for GCPhysicalInputElementCollection()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for GCPhysicalInputElementCollection(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GCPhysicalInputElementCollection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for GCPhysicalInputElementCollection.Index()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for GCPhysicalInputElementCollection.Index(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GCPhysicalInputElementCollection.Index(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GCPhysicalInputElementName(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GCPhysicalInputElementName(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(type metadata accessor for Range() + 36);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

NSEnumerator_optional __swiftcall GCDevicePhysicalInputStateDiff.changedElements()()
{
  v1 = [v0 changedElements];

  v2 = v1;
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

id GCDevicePhysicalInputStateDiff.changedElements()@<X0>(void *a1@<X8>)
{
  result = [v1 changedElements];
  if (result)
  {
    v4 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
    v5 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
    v6 = closure #1 in GCDevicePhysicalInputStateDiff.changedElements();
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  *a1 = result;
  a1[1] = v6;
  a1[2] = 0;
  a1[3] = v5;
  a1[4] = 0;
  a1[5] = v4;
  a1[6] = 0;
  return result;
}

uint64_t closure #1 in GCDevicePhysicalInputStateDiff.changedElements()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Any(a1, &v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22GCPhysicalInputElement_pMd, &_sSo22GCPhysicalInputElement_pMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<NSEnumerator, GCPhysicalInputElement?>>, GCPhysicalInputElement> and conformance LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<NSEnumerator, GCPhysicalInputElement?>>, GCPhysicalInputElement> and conformance LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<NSEnumerator, GCPhysicalInputElement?>>, GCPhysicalInputElement> and conformance LazyMapSequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABySo12NSEnumeratorCSo22GCPhysicalInputElement_pSgGGSoAG_pGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABySo12NSEnumeratorCSo22GCPhysicalInputElement_pSgGGSoAG_pGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<NSEnumerator, GCPhysicalInputElement?>>, GCPhysicalInputElement> and conformance LazyMapSequence<A, B>);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t GCAxisElementName.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t one-time initialization function for steeringWheel()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCAxisElementName.steeringWheel = result;
  unk_1EC736720 = v1;
  return result;
}

uint64_t *GCAxisElementName.steeringWheel.unsafeMutableAddressor()
{
  if (one-time initialization token for steeringWheel != -1)
  {
    swift_once();
  }

  return &static GCAxisElementName.steeringWheel;
}

uint64_t static GCAxisElementName.steeringWheel.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for steeringWheel != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = unk_1EC736720;
  *a1 = static GCAxisElementName.steeringWheel;
  a1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type GCAxisElementName and conformance GCAxisElementName()
{
  result = lazy protocol witness table cache variable for type GCAxisElementName and conformance GCAxisElementName;
  if (!lazy protocol witness table cache variable for type GCAxisElementName and conformance GCAxisElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCAxisElementName and conformance GCAxisElementName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GCAxisElementName and conformance GCAxisElementName;
  if (!lazy protocol witness table cache variable for type GCAxisElementName and conformance GCAxisElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCAxisElementName and conformance GCAxisElementName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GCAxisElementName and conformance GCAxisElementName;
  if (!lazy protocol witness table cache variable for type GCAxisElementName and conformance GCAxisElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCAxisElementName and conformance GCAxisElementName);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GCAxisElementName(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type GCAxisElementName and conformance GCAxisElementName();
  result = lazy protocol witness table accessor for type GCAxisElementName and conformance GCAxisElementName();
  *(a1 + 16) = result;
  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for GCMouse()
{
  result = lazy cache variable for type metadata for GCMouse;
  if (!lazy cache variable for type metadata for GCMouse)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GCMouse);
  }

  return result;
}

uint64_t static GCMouse.DidConnectMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v6)
  {
    result = outlined destroy of Any?(v5);
    goto LABEL_5;
  }

  type metadata accessor for GCMouse();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

uint64_t static NSNotificationCenter.MessageIdentifier<>.didConnect.getter()
{
  v0 = lazy protocol witness table accessor for type GCMouse.DidConnectMessage and conformance GCMouse.DidConnectMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCMouse.DidConnectMessage, v0);
}

{
  v0 = lazy protocol witness table accessor for type GCKeyboard.DidConnectMessage and conformance GCKeyboard.DidConnectMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCKeyboard.DidConnectMessage, v0);
}

{
  v0 = lazy protocol witness table accessor for type GCRacingWheel.DidConnectMessage and conformance GCRacingWheel.DidConnectMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCRacingWheel.DidConnectMessage, v0);
}

{
  v0 = lazy protocol witness table accessor for type GCStylus.DidConnectMessage and conformance GCStylus.DidConnectMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCStylus.DidConnectMessage, v0);
}

{
  v0 = lazy protocol witness table accessor for type GCController.DidConnectMessage and conformance GCController.DidConnectMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCController.DidConnectMessage, v0);
}

unint64_t lazy protocol witness table accessor for type GCMouse.DidConnectMessage and conformance GCMouse.DidConnectMessage()
{
  result = lazy protocol witness table cache variable for type GCMouse.DidConnectMessage and conformance GCMouse.DidConnectMessage;
  if (!lazy protocol witness table cache variable for type GCMouse.DidConnectMessage and conformance GCMouse.DidConnectMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCMouse.DidConnectMessage and conformance GCMouse.DidConnectMessage);
  }

  return result;
}

uint64_t static NSNotificationCenter.MessageIdentifier<>.didDisconnect.getter()
{
  v0 = lazy protocol witness table accessor for type GCMouse.DidDisconnectMessage and conformance GCMouse.DidDisconnectMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCMouse.DidDisconnectMessage, v0);
}

{
  v0 = lazy protocol witness table accessor for type GCKeyboard.DidDisconnectMessage and conformance GCKeyboard.DidDisconnectMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCKeyboard.DidDisconnectMessage, v0);
}

{
  v0 = lazy protocol witness table accessor for type GCRacingWheel.DidDisconnectMessage and conformance GCRacingWheel.DidDisconnectMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCRacingWheel.DidDisconnectMessage, v0);
}

{
  v0 = lazy protocol witness table accessor for type GCStylus.DidDisconnectMessage and conformance GCStylus.DidDisconnectMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCStylus.DidDisconnectMessage, v0);
}

{
  v0 = lazy protocol witness table accessor for type GCController.DidDisconnectMessage and conformance GCController.DidDisconnectMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCController.DidDisconnectMessage, v0);
}

unint64_t lazy protocol witness table accessor for type GCMouse.DidDisconnectMessage and conformance GCMouse.DidDisconnectMessage()
{
  result = lazy protocol witness table cache variable for type GCMouse.DidDisconnectMessage and conformance GCMouse.DidDisconnectMessage;
  if (!lazy protocol witness table cache variable for type GCMouse.DidDisconnectMessage and conformance GCMouse.DidDisconnectMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCMouse.DidDisconnectMessage and conformance GCMouse.DidDisconnectMessage);
  }

  return result;
}

uint64_t static NSNotificationCenter.MessageIdentifier<>.didBecomeCurrent.getter()
{
  v0 = lazy protocol witness table accessor for type GCMouse.DidBecomeCurrentMessage and conformance GCMouse.DidBecomeCurrentMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCMouse.DidBecomeCurrentMessage, v0);
}

{
  v0 = lazy protocol witness table accessor for type GCController.DidBecomeCurrentMessage and conformance GCController.DidBecomeCurrentMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCController.DidBecomeCurrentMessage, v0);
}

unint64_t lazy protocol witness table accessor for type GCMouse.DidBecomeCurrentMessage and conformance GCMouse.DidBecomeCurrentMessage()
{
  result = lazy protocol witness table cache variable for type GCMouse.DidBecomeCurrentMessage and conformance GCMouse.DidBecomeCurrentMessage;
  if (!lazy protocol witness table cache variable for type GCMouse.DidBecomeCurrentMessage and conformance GCMouse.DidBecomeCurrentMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCMouse.DidBecomeCurrentMessage and conformance GCMouse.DidBecomeCurrentMessage);
  }

  return result;
}

uint64_t static NSNotificationCenter.MessageIdentifier<>.didStopBeingCurrent.getter()
{
  v0 = lazy protocol witness table accessor for type GCMouse.DidStopBeingCurrentMessage and conformance GCMouse.DidStopBeingCurrentMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCMouse.DidStopBeingCurrentMessage, v0);
}

{
  v0 = lazy protocol witness table accessor for type GCController.DidStopBeingCurrentMessage and conformance GCController.DidStopBeingCurrentMessage();

  return MEMORY[0x1EEDC6400](&type metadata for GCController.DidStopBeingCurrentMessage, v0);
}

unint64_t lazy protocol witness table accessor for type GCMouse.DidStopBeingCurrentMessage and conformance GCMouse.DidStopBeingCurrentMessage()
{
  result = lazy protocol witness table cache variable for type GCMouse.DidStopBeingCurrentMessage and conformance GCMouse.DidStopBeingCurrentMessage;
  if (!lazy protocol witness table cache variable for type GCMouse.DidStopBeingCurrentMessage and conformance GCMouse.DidStopBeingCurrentMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCMouse.DidStopBeingCurrentMessage and conformance GCMouse.DidStopBeingCurrentMessage);
  }

  return result;
}

unint64_t type metadata accessor for GCKeyboard()
{
  result = lazy cache variable for type metadata for GCKeyboard;
  if (!lazy cache variable for type metadata for GCKeyboard)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GCKeyboard);
  }

  return result;
}

uint64_t static GCKeyboard.DidConnectMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v6)
  {
    result = outlined destroy of Any?(v5);
    goto LABEL_5;
  }

  type metadata accessor for GCKeyboard();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type GCKeyboard.DidConnectMessage and conformance GCKeyboard.DidConnectMessage()
{
  result = lazy protocol witness table cache variable for type GCKeyboard.DidConnectMessage and conformance GCKeyboard.DidConnectMessage;
  if (!lazy protocol witness table cache variable for type GCKeyboard.DidConnectMessage and conformance GCKeyboard.DidConnectMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCKeyboard.DidConnectMessage and conformance GCKeyboard.DidConnectMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GCKeyboard.DidDisconnectMessage and conformance GCKeyboard.DidDisconnectMessage()
{
  result = lazy protocol witness table cache variable for type GCKeyboard.DidDisconnectMessage and conformance GCKeyboard.DidDisconnectMessage;
  if (!lazy protocol witness table cache variable for type GCKeyboard.DidDisconnectMessage and conformance GCKeyboard.DidDisconnectMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCKeyboard.DidDisconnectMessage and conformance GCKeyboard.DidDisconnectMessage);
  }

  return result;
}

uint64_t one-time initialization function for overlay()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.overlay);
  __swift_project_value_buffer(v0, static Logger.overlay);
  return Logger.init(subsystem:category:)();
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for GCOverlaySettingsStore()) init];
  static GCOverlaySettingsStore.shared = result;
  return result;
}

uint64_t *GCOverlaySettingsStore.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static GCOverlaySettingsStore.shared;
}

id static GCOverlaySettingsStore.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static GCOverlaySettingsStore.shared;

  return v1;
}

id variable initialization expression of GCOverlaySettingsStore.userDefaults()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = MEMORY[0x1D38ABB70](0xD000000000000018, 0x80000001D2DFBCF0);
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() standardUserDefaults];

  return v4;
}

uint64_t GCOverlaySettingsStore.connectedControllerIdentifiers.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_connectedControllerIdentifiers);
  *(v1 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_connectedControllerIdentifiers) = a1;
}

uint64_t key path getter for GCOverlaySettingsStore.connectedControllerIdentifiers : GCOverlaySettingsStore@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for GCOverlaySettingsStore.connectedControllerIdentifiers : GCOverlaySettingsStore(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);

  return v3(v4);
}

uint64_t GCOverlaySettingsStore.allControllers.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_allControllers);
  *(v1 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_allControllers) = a1;
}

uint64_t key path getter for GCOverlaySettingsStore.allControllers : GCOverlaySettingsStore@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for GCOverlaySettingsStore.allControllers : GCOverlaySettingsStore(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC0);

  return v3(v4);
}

void *GCOverlaySettingsStore.curentController.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_curentController);
  v2 = v1;
  return v1;
}

void GCOverlaySettingsStore.curentController.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_curentController);
  *(v1 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_curentController) = a1;
}

uint64_t key path getter for GCOverlaySettingsStore.curentController : GCOverlaySettingsStore@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for GCOverlaySettingsStore.curentController : GCOverlaySettingsStore(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD8);
  v4 = *a1;
  return v3(v2);
}

Class @objc GCOverlaySettingsStore.allControllers.getter(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + *a3);
  type metadata accessor for OS_dispatch_queue(0, a4, a5);

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

uint64_t @objc GCOverlaySettingsStore.allControllers.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, void *a6)
{
  type metadata accessor for OS_dispatch_queue(0, a4, a5);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(a1 + *a6);
  *(a1 + *a6) = v8;
}

uint64_t GCOverlaySettingsStore.profiles.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_profiles);
  *(v1 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_profiles) = a1;
}

uint64_t key path getter for GCOverlaySettingsStore.profiles : GCOverlaySettingsStore@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for GCOverlaySettingsStore.profiles : GCOverlaySettingsStore(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF0);

  return v3(v4);
}

uint64_t variable initialization expression of GCOverlaySettingsStore.profiles(uint64_t *a1, SEL *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2DF13F0;
  v5 = *a1;
  *(v4 + 32) = [objc_opt_self() *a2];
  return v4;
}

uint64_t GCOverlaySettingsStore.games.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_games);
  *(v1 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_games) = a1;
}

uint64_t key path getter for GCOverlaySettingsStore.games : GCOverlaySettingsStore@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t key path setter for GCOverlaySettingsStore.games : GCOverlaySettingsStore(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x108);

  return v3(v4);
}

uint64_t GCOverlaySettingsStore.defaultGame.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))();
  v2 = v1;
  v24 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x1D38ABE20](v20))
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D38ABDB0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 bundleIdentifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = [objc_opt_self() defaultIdentifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v24 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_6:
      ++v4;
      if (v8 == i)
      {
        v19 = v24;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    if (v2 < 0)
    {
      v20 = v2;
    }

    else
    {
      v20 = v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_26:

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    result = MEMORY[0x1D38ABE20](v19);
    if (result)
    {
      goto LABEL_29;
    }

LABEL_35:

    __break(1u);
    goto LABEL_36;
  }

  if (!*(v19 + 16))
  {
    goto LABEL_35;
  }

LABEL_29:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1D38ABDB0](0, v19);
    goto LABEL_32;
  }

  if (*(v19 + 16))
  {
    v22 = *(v19 + 32);
LABEL_32:
    v23 = v22;

    return v23;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v24 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x1D38ABE20](v18))
  {
    v8 = 0;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v22 = v4 & 0xC000000000000001;
    v20 = v4;
    while (1)
    {
      if (v22)
      {
        v9 = MEMORY[0x1D38ABDB0](v8, v4);
      }

      else
      {
        if (v8 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v23 = v9;
      v12 = a2;
      v13 = a1(&v23);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v24 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v20;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v24;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    if (v4 < 0)
    {
      v18 = v4;
    }

    else
    {
      v18 = v4 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_23:

  return v12;
}

uint64_t GCOverlaySettingsStore.defaultProfile.getter()
{
  v32 = type metadata accessor for UUID();
  v1 = *(v32 - 8);
  v2 = v1[8];
  v3 = (MEMORY[0x1EEE9AC00])();
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))(v5);
  v9 = v8;
  v33 = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x1D38ABE20](v24))
  {
    v11 = 0;
    v29 = v9 & 0xFFFFFFFFFFFFFF8;
    v30 = v9 & 0xC000000000000001;
    v12 = v1 + 1;
    while (1)
    {
      if (v30)
      {
        v13 = MEMORY[0x1D38ABDB0](v11, v9);
      }

      else
      {
        if (v11 >= *(v29 + 16))
        {
          goto LABEL_15;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v1 = v13;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = v9;
      v16 = [v13 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = [objc_opt_self() defaultProfileUUID];
      v18 = v31;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v17) = static UUID.== infix(_:_:)();
      v19 = *v12;
      v20 = v18;
      v21 = v32;
      (*v12)(v20, v32);
      v19(v7, v21);
      if (v17)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = *(v33 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v9 = v15;
      ++v11;
      if (v14 == i)
      {
        v23 = v33;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    if (v9 < 0)
    {
      v24 = v9;
    }

    else
    {
      v24 = v9 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_21:

  if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
  {
    result = MEMORY[0x1D38ABE20](v23);
    if (result)
    {
      goto LABEL_24;
    }

LABEL_30:

    __break(1u);
    goto LABEL_31;
  }

  if (!*(v23 + 16))
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1D38ABDB0](0, v23);
    goto LABEL_27;
  }

  if (*(v23 + 16))
  {
    v26 = *(v23 + 32);
LABEL_27:
    v27 = v26;

    return v27;
  }

LABEL_31:
  __break(1u);
  return result;
}
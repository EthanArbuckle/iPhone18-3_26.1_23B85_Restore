uint64_t THLogHandleForCategory(int a1)
{
  if (THLogHandleForCategory_onceToken != -1)
  {
    THLogHandleForCategory_cold_1();
  }

  return THLogHandleForCategory_logHandles[a1];
}

os_log_t __THLogHandleForCategory_block_invoke()
{
  THLogHandleForCategory_logHandles = os_log_create("com.apple.thread", "unspecified");
  result = os_log_create("com.apple.thread", "credentials");
  qword_27DFC4278 = result;
  return result;
}

int setlogmask(int a1)
{
  v1 = logMask;
  logMask = a1;
  return v1;
}

uint64_t ThreadNetworkLoggingCategory(int a1)
{
  if (ThreadNetworkLoggingCategory_onceToken != -1)
  {
    ThreadNetworkLoggingCategory_cold_1();
  }

  return ThreadNetworkLoggingCategory_logHandles[a1];
}

os_log_t __ThreadNetworkLoggingCategory_block_invoke()
{
  ThreadNetworkLoggingCategory_logHandles = os_log_create("com.apple.ThreadNetwork", "THClient");
  result = os_log_create("com.apple.ThreadNetwork", "THServer");
  qword_281407330 = result;
  return result;
}

void sub_23AACCBB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23AACD9D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_23AACDCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23AACDE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_23AACE134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 64));
  _Block_object_dispose(&a20, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23AACE624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_23AACEB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t dispatch_get_xpc_connection_queue()
{
  if (dispatch_get_xpc_connection_queue_onceToken != -1)
  {
    dispatch_get_xpc_connection_queue_cold_1();
  }

  return dispatch_get_xpc_connection_queue__xpcConnectionQueue;
}

dispatch_queue_t __dispatch_get_xpc_connection_queue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("CTCS Client XPC Connection Queue", v0);
  dispatch_get_xpc_connection_queue__xpcConnectionQueue = result;
  return result;
}

void DispatchXPCConnectionQueueIfNecessaryAndWait(void *a1, int a2)
{
  block = a1;
  if (DispatchXPCConnectionQueueIfNecessaryAndWait_onceToken != -1)
  {
    DispatchXPCConnectionQueueIfNecessaryAndWait_cold_1();
  }

  if (dispatch_get_specific(DispatchXPCConnectionQueueIfNecessaryAndWait_xpcConnectionQueueMarker))
  {
    block[2]();
  }

  else
  {
    v3 = block;
    if (a2)
    {
      if (dispatch_get_xpc_connection_queue_onceToken != -1)
      {
        dispatch_get_xpc_connection_queue_cold_1();
        v3 = block;
      }

      dispatch_sync(dispatch_get_xpc_connection_queue__xpcConnectionQueue, v3);
    }

    else
    {
      if (dispatch_get_xpc_connection_queue_onceToken != -1)
      {
        dispatch_get_xpc_connection_queue_cold_1();
        v3 = block;
      }

      dispatch_async(dispatch_get_xpc_connection_queue__xpcConnectionQueue, v3);
    }
  }
}

void __DispatchXPCConnectionQueueIfNecessaryAndWait_block_invoke()
{
  if (dispatch_get_xpc_connection_queue_onceToken != -1)
  {
    dispatch_get_xpc_connection_queue_cold_1();
  }

  v1 = dispatch_get_xpc_connection_queue__xpcConnectionQueue;
  v2 = DispatchXPCConnectionQueueIfNecessaryAndWait_xpcConnectionQueueMarker;
  v3 = DispatchXPCConnectionQueueIfNecessaryAndWait_xpcConnectionQueueMarker;

  dispatch_queue_set_specific(v1, v2, v3, 0);
}

void sub_23AACEF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}
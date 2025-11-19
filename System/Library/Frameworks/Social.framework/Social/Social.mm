uint64_t sub_1C23B0AD8(mach_port_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unint64_t *a5, void *a6, unsigned int *a7)
{
  v19 = 1;
  v20 = a3;
  v21 = 16777472;
  v22 = a4;
  v23 = *MEMORY[0x1E69E99E0];
  v24 = __PAIR64__(a4, a2);
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 3, 0x3Cu, 0x48u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (v13)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (msg.msgh_id == 71)
  {
    v16 = 4294966988;
  }

  else if (msg.msgh_id == 1300)
  {
    if ((msg.msgh_bits & 0x80000000) != 0)
    {
      v16 = 4294966996;
      if (v19 == 1 && msg.msgh_size == 64 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
      {
        v17 = v22;
        if (v22 == v25)
        {
          *a5 = v24;
          *a6 = v20;
          *a7 = v17;
          return 0;
        }
      }
    }

    else if (msg.msgh_size == 36)
    {
      v16 = 4294966996;
      if (HIDWORD(v20))
      {
        if (msg.msgh_remote_port)
        {
          v16 = 4294966996;
        }

        else
        {
          v16 = HIDWORD(v20);
        }
      }
    }

    else
    {
      v16 = 4294966996;
    }
  }

  else
  {
    v16 = 4294966995;
  }

  mach_msg_destroy(&msg);
  return v16;
}

uint64_t sub_1C23B0CD4(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 1;
  v13 = a4;
  v14 = 16777472;
  v15 = a5;
  v16 = *MEMORY[0x1E69E99E0];
  v17 = a2;
  v18 = a3;
  v19 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v8 = mach_msg(&msg, 3, 0x44u, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v9;
  }

  if (v8)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v9;
  }

  if (msg.msgh_id == 71)
  {
    v9 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v9;
  }

  if (msg.msgh_id != 1301)
  {
    v9 = 4294966995;
    goto LABEL_18;
  }

  v9 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v9 = HIDWORD(v13);
  if (HIDWORD(v13))
  {
    goto LABEL_18;
  }

  return v9;
}

uint64_t sub_1C23B0E54(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, int a5, void *a6, _DWORD *a7)
{
  v18 = 1;
  v19 = a4;
  v20 = 16777472;
  v21 = a5;
  v22 = *MEMORY[0x1E69E99E0];
  v23 = a2;
  v24 = a3;
  v25 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x44u, 0x40u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v13;
  }

  if (v12)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v13;
  }

  if (msg.msgh_id == 71)
  {
    v15 = 4294966988;
  }

  else if (msg.msgh_id == 1302)
  {
    if ((msg.msgh_bits & 0x80000000) != 0)
    {
      v15 = 4294966996;
      if (v18 == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v20) == 1)
      {
        v16 = v21;
        if (v21 == v23)
        {
          *a6 = v19;
          *a7 = v16;
          return 0;
        }
      }
    }

    else if (msg.msgh_size == 36)
    {
      v15 = 4294966996;
      if (HIDWORD(v19))
      {
        if (msg.msgh_remote_port)
        {
          v15 = 4294966996;
        }

        else
        {
          v15 = HIDWORD(v19);
        }
      }
    }

    else
    {
      v15 = 4294966996;
    }
  }

  else
  {
    v15 = 4294966995;
  }

  mach_msg_destroy(&msg);
  return v15;
}

uint64_t sub_1C23B104C(mach_port_t a1, unsigned int a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E99E0];
  v11 = a2;
  v12 = a3;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v6 = mach_msg(&msg, 3, 0x2Cu, 0x2Cu, msgh_local_port, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v7;
  }

  if (v6)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v7;
  }

  else
  {
    if (msg.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      v7 = 4294966996;
      if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
      {
        v7 = v11;
        if (!v11)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&msg);
    return v7;
  }
}

uint64_t sub_1C23B14E0()
{
  result = (*(v3 + 8 * (v0 + 49)))(v2);
  *(v1 + 4) = 0;
  return result;
}

void sub_1C23B1694(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) ^ (801985777 * ((2 * (a1 & 0x3D6FE1E) - a1 + 2083062241) ^ 0x9B5855C0));
  v2 = *a1;
  v3 = **(&unk_1E81767E0 + v1 - 59);
  strcpy(v6, "com.apple.absd");
  v4 = *(&unk_1E81767E0 + (v1 ^ 0x39));
  v5 = *(v4 + 8 * ((((*(v4 + 8 * (v1 ^ 0x50)))(v3, v6, v2) == 0) * ((v1 + 24) ^ 0x3D)) ^ v1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C23B18F0()
{
  result = (*(v3 + 8 * (v4 + v0 + 6)))(*(v1 + 8 * (v0 ^ (v5 + 52))), nullsub_1);
  *v2 = -1793105400;
  return result;
}

void sub_1C23B690C(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {

    objc_end_catch();
  }

  JUMPOUT(0x1C23B67E8);
}

void _SLSystemConfigManagerPreferencesCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  pthread_mutex_lock(&__SystemConfigManagerMutex);
  v6 = [SLSystemConfigManager sharedInstanceForCallbackWhileLocked:a3];
  pthread_mutex_unlock(&__SystemConfigManagerMutex);
  if (v6)
  {
    [v6 _notifyTarget:a2];
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1C23B86E8(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x1C23B8500);
  }

  objc_exception_rethrow();
}

void sub_1C23BA40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a27);
  objc_destroyWeak((v28 - 136));
  _Unwind_Resume(a1);
}

void sub_1C23BAAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C23BB434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _SLServiceRegionIsChina()
{
  v0 = CPGetDeviceRegionCode();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 isEqualToString:@"CH"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _SLServiceChineseKeyboardInstalled()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v1 = [v0 enabledInputModeIdentifiers];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = MEMORY[0x1C69176E0](*(*(&v11 + 1) + 8 * v6));
        v8 = [v7 isEqualToString:{@"zh", v11}];

        if (v8)
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t _SLServiceHasEntitlement(const __CFString *a1)
{
  Default = CFAllocatorGetDefault();
  v3 = SecTaskCreateFromSelf(Default);
  v4 = SecTaskCopyValueForEntitlement(v3, a1, 0);
  v5 = [v4 BOOLValue];

  return v5;
}

void sub_1C23BE27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C23C18FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MKCoordinateRegionMakeWithDistance(double a1, double a2, double a3, double a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v8 = getMKCoordinateRegionMakeWithDistanceSymbolLoc_ptr;
  v14 = getMKCoordinateRegionMakeWithDistanceSymbolLoc_ptr;
  if (!getMKCoordinateRegionMakeWithDistanceSymbolLoc_ptr)
  {
    v9 = MapKitLibrary();
    v12[3] = dlsym(v9, "MKCoordinateRegionMakeWithDistance");
    getMKCoordinateRegionMakeWithDistanceSymbolLoc_ptr = v12[3];
    v8 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v8)
  {
    __MKCoordinateRegionMakeWithDistance_cold_1();
  }

  return v8(a1, a2, a3, a4);
}

void sub_1C23C1A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C23C2574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C23C2D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double initMKMapRectNull()
{
  v0 = MapKitLibrary();
  v1 = dlsym(v0, "MKMapRectNull");
  if (!v1)
  {
    initMKMapRectNull_cold_1();
  }

  v2 = v1[1];
  constantMKMapRectNull = *v1;
  *&qword_1EBF3D9E0 = v2;
  getMKMapRectNull = MKMapRectNullFunction;
  return *&constantMKMapRectNull;
}

uint64_t MapKitLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MapKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E8175E00;
    v4 = 0;
    MapKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MapKitLibraryCore_frameworkLibrary;
  if (!MapKitLibraryCore_frameworkLibrary)
  {
    MapKitLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __MapKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMKMapPointForCoordinateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary();
  result = dlsym(v2, "MKMapPointForCoordinate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKMapPointForCoordinateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKMapRectUnionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary();
  result = dlsym(v2, "MKMapRectUnion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKMapRectUnionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKCoordinateRegionMakeWithDistanceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary();
  result = dlsym(v2, "MKCoordinateRegionMakeWithDistance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKCoordinateRegionMakeWithDistanceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKCoordinateRegionForMapRectSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary();
  result = dlsym(v2, "MKCoordinateRegionForMapRect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKCoordinateRegionForMapRectSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMKLocationManagerClass_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  result = objc_getClass("MKLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMKLocationManagerClass_block_invoke_cold_1();
  }

  getMKLocationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMKMapViewClass_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  result = objc_getClass("MKMapView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMKMapViewClass_block_invoke_cold_1();
  }

  getMKMapViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C23C6134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C23C8FA8(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x1C23C8E90);
  }

  objc_exception_rethrow();
}

void sub_1C23CD18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C23CDB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C23CDD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C23D4FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void _SLSheetURLPreviewImageFrameWithBounds()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];

  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];

  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];

  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 scale];
}

void sub_1C23D5E30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t SLAttachmentPayloadIsAssetLibraryURL(void *a1)
{
  v1 = a1;
  v2 = [v1 payload];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 payload];
    v4 = [v3 scheme];
    v5 = [v4 isEqualToString:@"assets-library"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t SLAttachmentPayloadIsVideoFileURL(void *a1)
{
  v1 = a1;
  if ([v1 type] == 9)
  {
    v2 = [v1 payload];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v1 payload];
      v4 = [v3 scheme];
      v5 = [v4 isEqualToString:@"file"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _SLAttachmentURLForAsset(void *a1)
{
  v2 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    _SLLog(v1, 3, @"SLAttachment media assets must be URLs - returning nil attachment");
    v3 = 0;
  }

  return v3;
}

CGImageRef SLCreateThumbnailImageForImageData(const __CFData *a1, uint64_t a2)
{
  keys[3] = *MEMORY[0x1E69E9840];
  v10 = a2;
  v2 = CGImageSourceCreateWithData(a1, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFNumberCreate(0, kCFNumberNSIntegerType, &v10);
  v5 = *MEMORY[0x1E695E4D0];
  v6 = *MEMORY[0x1E696DFF0];
  keys[0] = *MEMORY[0x1E696E000];
  keys[1] = v6;
  values[0] = v5;
  values[1] = v5;
  keys[2] = *MEMORY[0x1E696E100];
  values[2] = v4;
  v7 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v3, 0, v7);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v3);
  return ThumbnailAtIndex;
}

CGImageSource *SLDownSampledImageData(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v24 = a2;
  _SLLog(v3, 6, @"Will downsample image to target width:%i height:%i");
  v7 = CGImageSourceCreateWithData(v6, 0);

  if (!v7)
  {
    _SLLog(v3, 6, @"SLImageDownsampling cannot create image source, returning nil");
    goto LABEL_29;
  }

  v8 = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
  v9 = v8;
  if (v8)
  {
    v10 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x1E696DE78], a2, a3];
    v11 = [(__CFDictionary *)v9 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
    if (v11)
    {
      v12 = v11;
      v13 = *MEMORY[0x1E696DF58];
      v14 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696DF58]];
      v15 = v14;
      if (v14)
      {
        v25 = v13;
        v26[0] = v14;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      }

      else
      {

        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v10 = 0;
  }

  if (CGImageSourceGetCount(v7))
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
    CFRelease(v7);
    if (ImageAtIndex)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
      v18 = CGImageDestinationCreateWithData(v7, @"public.jpeg", 1uLL, 0);
      if (v18)
      {
        v19 = v18;
        v20 = objc_opt_new();
        [v20 setObject:&unk_1F4202B98 forKeyedSubscript:*MEMORY[0x1E696D338]];
        if (a2 && a3)
        {
          if (a2 <= a3)
          {
            v21 = a3;
          }

          else
          {
            v21 = a2;
          }

          v22 = [MEMORY[0x1E696AD98] numberWithInteger:{v21, v24}];
          [v20 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696D328]];
        }

        _SLLog(v3, 6, @"Orientation is %@");
        if (v10)
        {
          [v20 setObject:v10 forKeyedSubscript:{*MEMORY[0x1E696DE78], v10}];
        }

        if (v16)
        {
          [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696DF28]];
        }

        CGImageDestinationAddImage(v19, ImageAtIndex, v20);
        CGImageDestinationFinalize(v19);
        CFRelease(v19);
      }

      CGImageRelease(ImageAtIndex);
      goto LABEL_28;
    }
  }

  else
  {
    CFRelease(v7);
  }

  v7 = 0;
LABEL_28:

LABEL_29:

  return v7;
}

uint64_t SLServiceMain(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [v4 serviceName];
  _SLLog(v3, 5, @"SLServiceMain is creating a service listener for %@");

  [v4 beginAcceptingConnections];
  return 0;
}

__CFString *SLUserDataDirectory()
{
  v0 = CFCopyHomeDirectoryURLForUser();
  if (v0)
  {
    v1 = v0;
    v2 = CFURLCopyFileSystemPath(v0, kCFURLPOSIXPathStyle);
    if (v2)
    {
      v3 = v2;
      MutableCopy = CFStringCreateMutableCopy(0, 0, v2);
      CFStringAppend(MutableCopy, @"/Library/Social/");
      CFRelease(v3);
    }

    else
    {
      MutableCopy = 0;
    }

    CFRelease(v1);
  }

  else
  {
    MutableCopy = 0;
  }

  return MutableCopy;
}

id SLUserLibraryDirectory()
{
  if (SLUserLibraryDirectory_onceToken != -1)
  {
    SLUserLibraryDirectory_cold_1();
  }

  v1 = SLUserLibraryDirectory_userLibraryDirectory;

  return v1;
}

void __SLUserLibraryDirectory_block_invoke()
{
  v0 = CFCopyHomeDirectoryURLForUser();
  if (v0)
  {
    v1 = v0;
    v2 = CFURLCopyFileSystemPath(v0, kCFURLPOSIXPathStyle);
    if (v2)
    {
      v3 = v2;
      MutableCopy = CFStringCreateMutableCopy(0, 0, v2);
      CFStringAppend(MutableCopy, @"/Library/");
      CFRelease(v3);
      v5 = SLUserLibraryDirectory_userLibraryDirectory;
      SLUserLibraryDirectory_userLibraryDirectory = MutableCopy;
    }

    CFRelease(v1);
  }
}

id SLSocialFrameworkBundle()
{
  if (SLSocialFrameworkBundle_onceToken != -1)
  {
    SLSocialFrameworkBundle_cold_1();
  }

  v1 = SLSocialFrameworkBundle_socialBundle;

  return v1;
}

void __SLSocialFrameworkBundle_block_invoke()
{
  v4 = CPSystemRootDirectory();
  v0 = MEMORY[0x1E696AAE8];
  v1 = [v4 stringByAppendingPathComponent:@"System/Library/Frameworks/Social.framework"];
  v2 = [v0 bundleWithPath:v1];
  v3 = SLSocialFrameworkBundle_socialBundle;
  SLSocialFrameworkBundle_socialBundle = v2;
}

void sub_1C23DB454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___startObservingPreferenceChanges_block_invoke()
{
  v0 = _preferencesQueue();
  notify_register_dispatch("com.apple.social.facebook.envDidChange", &_startObservingPreferenceChanges_token, v0, &__block_literal_global_74);
}

id _preferencesQueue()
{
  if (_preferencesQueue_once != -1)
  {
    _preferencesQueue_cold_1();
  }

  v1 = _preferencesQueue_queue;

  return v1;
}

uint64_t ___preferencesQueue_block_invoke()
{
  _preferencesQueue_queue = dispatch_queue_create("com.apple.social.facebook.preferencesQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C23DC024(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1C23DBF3CLL);
}

void sub_1C23DE8B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1C23DF168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _SLLog(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = _SLGetLogSystem_onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    _SLLog_cold_1();
  }

  os_log_shim_with_CFString();
}

void sub_1C23E8C38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t IW1PcFszqNK(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = qword_1E81767E0[((-15 * (dword_1EBF3D900 ^ 0x34 ^ dword_1EBF3D8E8)) ^ byte_1C23F4770[byte_1C23F5070[(-15 * (dword_1EBF3D900 ^ 0x34 ^ dword_1EBF3D8E8))] ^ 0xE7]) - 156];
  v2 = qword_1E81767E0[((-15 * ((dword_1EBF3D8E8 + *v1) ^ 0x34)) ^ byte_1C23F4D70[byte_1C23F4A70[(-15 * ((dword_1EBF3D8E8 + *v1) ^ 0x34))] ^ 0x6F]) - 157];
  v3 = (*(v2 - 4) - *v1) ^ &v9;
  *v1 = 618829553 * (v3 - 0x36690F2252B96534);
  *(v2 - 4) = 618829553 * (v3 ^ 0x36690F2252B96534);
  v4 = qword_1E81767E0[((-15 * ((dword_1EBF3D8E8 + dword_1EBF3D900) ^ 0x34)) ^ byte_1C23F4E70[byte_1C23F4B70[(-15 * ((dword_1EBF3D8E8 + dword_1EBF3D900) ^ 0x34))] ^ 0xD1]) - 162];
  v5 = *(v4 + 72);
  v6 = 1402727023 * (((v10 | 0x27DEB680A9B42913) - v10 + (v10 & 0xD821497F564BD6E8)) ^ 0x50B504743F2B62FBLL);
  v10[0] = -1850172192 - v6;
  v11 = a1;
  v12 = v5 - v6;
  v7 = -15 * (*v1 ^ 0x34 ^ *(v2 - 4));
  (*(v4 + 8 * ((byte_1C23F487C[(byte_1C23F457C[v7 - 12] ^ 0xF8) - 12] ^ v7) - 109)))(v10);
  return v10[1];
}

uint64_t Be81a395Bf0(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = qword_1E81767E0[((-15 * ((dword_1EBF3D8E8 - dword_1EBF3D908) ^ 0x34)) ^ byte_1C23F4E70[byte_1C23F4B70[(-15 * ((dword_1EBF3D8E8 - dword_1EBF3D908) ^ 0x34))] ^ 0x68]) - 161];
  v2 = qword_1E81767E0[((-15 * ((dword_1EBF3D8E8 + *v1) ^ 0x34)) ^ byte_1C23F4670[byte_1C23F4F70[(-15 * ((dword_1EBF3D8E8 + *v1) ^ 0x34))] ^ 0x49]) - 156];
  v3 = *v1 - &v9 + *(v2 - 4);
  *v1 = 618829553 * v3 - 0x36690F2252B96534;
  *(v2 - 4) = 618829553 * (v3 ^ 0x36690F2252B96534);
  v4 = qword_1E81767E0[((-15 * ((dword_1EBF3D8E8 - dword_1EBF3D908) ^ 0x34)) ^ byte_1C23F4870[byte_1C23F4570[(-15 * ((dword_1EBF3D8E8 - dword_1EBF3D908) ^ 0x34))] ^ 0x43]) - 161];
  v5 = 1402727023 * (((v10 | 0x7C6B3F64920E76B7) - v10 + (v10 & 0x8394C09B6DF18948)) ^ 0xB008D9004913D5FLL);
  v6 = *(v4 + 56) - v5;
  v10[0] = -1850172192 - v5;
  v11 = a1;
  v12 = v6;
  v7 = -15 * ((*(v2 - 4) + *v1) ^ 0x34);
  (*(v4 + 8 * ((byte_1C23F4C70[byte_1C23F497C[v7 - 12] ^ 0xF5] ^ v7) - 110)))(v10);
  return v10[1];
}

void nDYmeMqvWb(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && a3 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C23ED494(uint64_t a1, uint64_t a2, int a3)
{
  v8[0] = *(v3 + 240);
  v12 = v8;
  v11 = 1646140907 * ((((2 * &v10) | 0x3988BEFC) - &v10 - 482631550) ^ 0x9DCFCC13) - 1458603509;
  (*(v3 + 792))(&v10);
  v8[0] = *(v3 + 224);
  v8[1] = a1;
  v8[2] = a2;
  v9 = a3 - ((2 * a3) & 0xC11FE834) - 527436774;
  v12 = v8;
  v11 = 1646140907 * ((-971957249 - (&v10 | 0xC6111BFF) + (&v10 | 0x39EEE400)) ^ 0xB8E5776D) - 1458603509;
  (*(v3 + 792))(&v10);
  return (v10 - 1247915629);
}

void KxmB0CKvgWt(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C23ED634(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = *(v5 + 240);
  v18 = v12;
  v17 = 1646140907 * ((((&v16 | 0xE5FBA1E6) ^ 0xFFFFFFFE) - (~&v16 | 0x1A045E19)) ^ 0x9B0FCD74) - 1458603509;
  (*(v5 + 792))(&v16);
  v12[0] = *(v5 + 120);
  v12[1] = a1;
  v13 = (a2 ^ 0xEBCFBCFF) + 1056145346 + ((2 * a2) & 0xD79F79FE);
  v12[2] = a3;
  v14 = a4;
  v15 = a5;
  v17 = 1646140907 * ((&v16 & 0x300CA9DE | ~(&v16 | 0x300CA9DE)) ^ 0x4EF8C54C) - 1458603509;
  v18 = v12;
  (*(v5 + 792))(&v16);
  return (v16 - 1247915629);
}

void t1BoNctgaUu66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C23ED7E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v12[0] = *(v5 + 240);
  v18 = v12;
  v17 = 1646140907 * ((&v16 - 367535318 - 2 * (&v16 & 0xEA17DB2A)) ^ 0x6B1C4847) - 1458603509;
  (*(v5 + 792))(&v16);
  v12[0] = *(v5 + 168);
  v12[1] = a1;
  v12[2] = a2;
  v13 = (a3 ^ 0xF9DE9AFF) + 1878779883 + ((2 * a3) & 0xF3BD35FE);
  v14 = a4;
  v15 = a5;
  v17 = 1646140907 * (((&v16 | 0x4D50755D) - &v16 + (&v16 & 0xB2AF8AA0)) ^ 0xCC5BE630) - 1458603509;
  v18 = v12;
  (*(v5 + 792))(&v16);
  return (v16 - 1247915629);
}

void __MKCoordinateRegionMakeWithDistance_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MKCoordinateRegion __MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D, CLLocationDistance, CLLocationDistance)"}];
  [v0 handleFailureInFunction:v1 file:@"SLSheetPlaceViewController.m" lineNumber:45 description:{@"%s", dlerror()}];

  __break(1u);
}

void MapKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MapKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SLSheetPlaceViewController.m" lineNumber:39 description:{@"%s", *a1}];

  __break(1u);
}

void __getMKLocationManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKLocationManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SLSheetPlaceViewController.m" lineNumber:42 description:{@"Unable to find class %s", "MKLocationManager"}];

  __break(1u);
}

void __getMKMapViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKMapViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SLSheetPlaceViewController.m" lineNumber:41 description:{@"Unable to find class %s", "MKMapView"}];

  __break(1u);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}
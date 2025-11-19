__CFString *NISessionInternalStateToString(int a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Activating";
  }

  else
  {
    return off_1E7F13FE8[a1 - 1];
  }
}

uint64_t InternalInterruptionReasonToNISessionSuspensionReason(uint64_t result)
{
  if ((result - 1) >= 9)
  {
    return 0;
  }

  return result;
}

__CFString *NIAcwgSessionTriggerReasonToString(uint64_t a1)
{
  v1 = @"DeviceCloserIntent";
  v2 = @"DeviceFallbackWalletInteractionIntent";
  v3 = @"LockSelfInitiated";
  if (a1 != 200)
  {
    v3 = @"DeviceCloserIntent";
  }

  if (a1 != 103)
  {
    v2 = v3;
  }

  if (a1 == 102)
  {
    v1 = @"DeviceFallbackGeofenceEntryIntent";
  }

  if (a1 == 101)
  {
    v1 = @"DeviceFallbackWristRaiseIntent";
  }

  if (a1 <= 102)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

__CFString *NIAcwgSuspendTriggerReasonToString(uint64_t a1)
{
  v1 = @"DeviceFarther";
  v2 = @"DeviceClientPause";
  v3 = @"LockSelfInitiatedRequest";
  v4 = @"LockUnilaterallySuspended";
  if (a1 != 201)
  {
    v4 = @"DeviceFarther";
  }

  if (a1 != 200)
  {
    v3 = v4;
  }

  if (a1 != 107)
  {
    v2 = v3;
  }

  v5 = @"DeviceNIError";
  if (a1 != 106)
  {
    v5 = @"DeviceFarther";
  }

  if (a1 == 105)
  {
    v5 = @"DeviceNIInvalidated";
  }

  if (a1 <= 106)
  {
    v2 = v5;
  }

  v6 = @"DeviceNITimeout";
  v7 = @"DeviceNIInterrupted";
  if (a1 != 104)
  {
    v7 = @"DeviceFarther";
  }

  if (a1 != 103)
  {
    v6 = v7;
  }

  if (a1 == 102)
  {
    v1 = @"DeviceStationary";
  }

  if (a1 == 101)
  {
    v1 = @"DeviceReceivedUnlockNotification";
  }

  if (a1 > 102)
  {
    v1 = v6;
  }

  if (a1 <= 104)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

__CFString *NIAcwgSFZoneToString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Closer";
  }

  if (a1 == 2)
  {
    return @"Further";
  }

  else
  {
    return v1;
  }
}

void sub_1BAC44C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void nsNumberArrayToStdVector<unsigned short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  __src[0] = 0;
  __src[1] = 0;
  v24 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
  v18 = a2;
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 longLongValue];
        v9 = __src[1];
        if (__src[1] >= v24)
        {
          v11 = __src[0];
          v12 = __src[1] - __src[0];
          v13 = (__src[1] - __src[0]) >> 1;
          if (v13 <= -2)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          if (v24 - __src[0] <= (v13 + 1))
          {
            v14 = v13 + 1;
          }

          else
          {
            v14 = v24 - __src[0];
          }

          if ((v24 - __src[0]) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(__src, v15);
          }

          *(2 * v13) = v8;
          v10 = (2 * v13 + 2);
          memcpy(0, v11, v12);
          v16 = __src[0];
          __src[0] = 0;
          __src[1] = v10;
          v24 = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *__src[1] = v8;
          v10 = v9 + 2;
        }

        __src[1] = v10;
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v4);
  }

  *v18 = *__src;
  *(v18 + 16) = v24;

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1BAC44E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nsNumberArrayToStdVector<unsigned char>(void *a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  obj = a1;
  if ([obj countByEnumeratingWithState:&v5 objects:v9 count:16])
  {
    *v6;
    *v6;
    [**(&v5 + 1) longLongValue];
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;

  v3 = *MEMORY[0x1E69E9840];
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7F13760, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t rose::alisha::AcwgM1MsgStruct::AcwgM1MsgStruct(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4, int a5, char a6, __int16 a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 24, *a3, a3[1], a3[1] - *a3);
  *(a1 + 48) = a4;
  *(a1 + 52) = a5;
  *(a1 + 56) = a6;
  *(a1 + 58) = a7;
  return a1;
}

void sub_1BAC468C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1BAC46944(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1BAC469F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

double combinedQuaternionFromAoA(float a1, float a2)
{
  v3 = __sincosf_stret(a1 * 0.5);
  v10 = vmulq_n_f32(xmmword_1BAC847E0, v3.__sinval);
  v4 = __sincosf_stret(a2 * 0.5);
  v5 = vmulq_n_f32(xmmword_1BAC847F0, v4.__sinval);
  v6.i32[0] = LODWORD(v4.__cosval);
  v6.f32[1] = -v5.f32[2];
  v6.i32[2] = v5.i32[1];
  *v7.f32 = vneg_f32(*v5.f32);
  v6.i32[3] = v7.i32[0];
  v8.i32[0] = vdupq_laneq_s32(v5, 2).u32[0];
  v8.i32[1] = LODWORD(v4.__cosval);
  v8.i64[1] = v7.i64[0];
  v7.i32[0] = vdup_lane_s32(*v7.f32, 1).u32[0];
  v7.i32[1] = v5.i32[0];
  v7.i32[2] = LODWORD(v4.__cosval);
  v7.f32[3] = -v5.f32[2];
  v5.i32[3] = LODWORD(v4.__cosval);
  *&result = vmlaq_n_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, v10.f32[0]), v8, *v10.f32, 1), v7, v10, 2), v5, v3.__cosval).u64[0];
  return result;
}

__n64 unitVectorForAoAInNearbydCoordinates(float *a1)
{
  v2 = __sincosf_stret(*a1);
  cosval = __sincosf_stret(a1[4]).__cosval;
  result.n64_u32[0] = LODWORD(v2.__sinval);
  result.n64_f32[1] = v2.__cosval * cosval;
  return result;
}

float convertAoAFromNearbydCoordinatesToSpatialCoordinates(float *a1)
{
  v2 = *a1;
  v3 = cosf(*a1);
  v4 = __sincosf_stret(a1[1]);
  atan2f(v3 * v4.__cosval, -(v3 * v4.__sinval));
  return v2;
}

float calculateAoAFromUnitVectorInSpatialCoordinates(float a1, float a2, float a3)
{
  v3 = a3;
  v4 = a2;
  v5 = sqrtf(((a2 * a2) + (a1 * a1)) + (a3 * a3));
  if (v5 >= 0.000001)
  {
    a1 = a1 / v5;
    v4 = v4 / v5;
    v3 = a3 / v5;
  }

  v6 = asinf(a1);
  atan2f(v4, -v3);
  return v6;
}

void sub_1BAC47544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BAC47898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAC489E8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__951(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1BAC4A0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1BAC4BAC0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__CFString *NIAlgorithmConvergenceStatusReasonDescription_Private(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"insufficientSignalStrength")
  {
    v4 = @"NIALGORITHMCONVERGENCESTATUSREASON_INSUFFICIENTSIGNALSTRENGTH";
  }

  else if (v1 == @"insufficientHorizontalSweep")
  {
    v4 = @"NIALGORITHMCONVERGENCESTATUSREASON_INSUFFICIENTHORIZONTALSWEEP";
  }

  else if (v1 == @"insufficientVerticalSweep")
  {
    v4 = @"NIALGORITHMCONVERGENCESTATUSREASON_INSUFFICIENTVERTICALSWEEP";
  }

  else if (v1 == @"insufficientMovement")
  {
    v4 = @"NIALGORITHMCONVERGENCESTATUSREASON_INSUFFICIENTMOVEMENT";
  }

  else
  {
    if (v1 != @"insufficientLighting")
    {
      v3 = v1;
      goto LABEL_13;
    }

    v4 = @"NIALGORITHMCONVERGENCESTATUSREASON_INSUFFICIENTLIGHTING";
  }

  v3 = [NILocalization _niLocalizedStringFromFrameworkBundleWithKey:v4];
LABEL_13:
  v5 = v3;

  return v5;
}

NSString *__cdecl NIAlgorithmConvergenceStatusReasonDescription(const NIAlgorithmConvergenceStatusReason reason)
{
  v1 = NIAlgorithmConvergenceStatusReasonDescription_Private(reason);

  return v1;
}

void sub_1BAC4EBB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BAC4EEBC(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_1BAC568C0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void NINotifySystemShutdownWithReason(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [NIServerConnection createOneShotConnectionAndResume:1];
  v5 = [v4 remoteObjectProxy];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v6 = dispatch_semaphore_create(0);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __NINotifySystemShutdownWithReason_block_invoke;
  v17 = &unk_1E7F13FC8;
  v19 = &v27;
  v20 = &v21;
  v7 = v6;
  v18 = v7;
  [v5 notifySystemShutdownWithReason:a1 reply:&v14];
  v8 = dispatch_time(0, (*&kNISystemShutdownCompletionTimeoutSeconds * 1000000000.0));
  dispatch_semaphore_wait(v7, v8);
  [v4 invalidate];
  if (*(v28 + 24) == 1)
  {
    v9 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32[0] = @"Shutdown notification timed out.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];
    v12 = v22[5];
    v22[5] = v11;
  }

  v3[2](v3, v22[5]);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BAC56C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, id);
  v13 = v12;

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void __NINotifySystemShutdownWithReason_block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 0;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<UWBSessionInterruptionBookkeeping>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<UWBSessionInterruptionBookkeeping>::__assign_with_size[abi:ne200100]<UWBSessionInterruptionBookkeeping*,UWBSessionInterruptionBookkeeping*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<UWBSessionInterruptionBookkeeping>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<UWBSessionInterruptionBookkeeping>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<UWBSessionInterruptionBookkeeping>>(a1, a2);
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

void sub_1BAC57130(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BAC58B30(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BAC592D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BAC5CDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAC5D464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1BAC5D55C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BAC5DF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BAC60764(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1BAC60C18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1BAC60C8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAC61E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  v37 = v36;

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1BAC62750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  v34 = v32;

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1BAC62C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  v34 = v32;

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1BAC630B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  v34 = v32;

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1BAC647A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BAC660F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  if (v17 != v18)
  {
  }

  if (v16 != v19)
  {
  }

  if (v15 != *(v13 - 168))
  {
  }

  if (v14 != *(v13 - 156))
  {
  }

  _Unwind_Resume(a1);
}

uint64_t extractHashFromSimdFloat3(__n128 a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v2 = [v1 hash];
  HIDWORD(v3) = a1.n128_u32[1];
  LODWORD(v3) = a1.n128_u32[1];
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v5 = [v4 hash];
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v7 = [v6 hash];

  return v5 ^ v2 ^ v7;
}

void sub_1BAC66B9C(_Unwind_Exception *a1)
{
  if (v3 != v4)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1BAC671A8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BAC67364(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BAC67BE8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BAC67D90(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id NIErrorWithCodeAndUserInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = a1 + 5889;
  if ((a1 + 5889) <= 9)
  {
    v6 = *(&off_1E7F14278 + v5);
    v7 = *(&off_1E7F142C8 + v5);
    v8 = [NILocalization _niLocalizedStringFromFrameworkBundleWithKey:*(&off_1E7F14228 + v5)];
    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];

    v9 = [NILocalization _niLocalizedStringFromFrameworkBundleWithKey:v6];
    [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A588]];

    v10 = [NILocalization _niLocalizedStringFromFrameworkBundleWithKey:v7];
    [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A598]];
  }

  if (v3)
  {
    [v4 addEntriesFromDictionary:v3];
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.NearbyInteraction" code:a1 userInfo:v4];

  return v11;
}

id NIInternalErrorWithCodeAndUserInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v4;
  if (a1 > -10018)
  {
    if (a1 <= -10011)
    {
      if (a1 > -10014)
      {
        if (a1 == -10013)
        {
          v6 = @"Ensure region predicates are using NIDevicePresencePreset. Use NIRegionPredicate initWithName:devicePresencePreset: initializer. Ensure the smaller region predicate is specified as the inner boundary.";
          v7 = @"Region predicate verification failed.";
        }

        else if (a1 == -10012)
        {
          v6 = @"Ensure peer discovery token was generated correctly.";
          v7 = @"Peer discovery token was either invalid or did not contain required information for specialized session.";
        }

        else
        {
          v6 = @"Try running the session again at a later time. Implement throttling if necessary.";
          v7 = @"Activation reply not received. The server may be unavailable right now.";
        }
      }

      else
      {
        switch(a1)
        {
          case -10017:
            v6 = @"Check Bluetooth settings, status and configuration.";
            v7 = @"Bluetooth is currently unavailable.";
            break;
          case -10016:
            v6 = @"Check Bluetooth settings, status and configuration.";
            v7 = @"Failed to produce a Discovery Token.";
            break;
          case -10014:
            v6 = @"Monitor session suspension callbacks. Try again when suspension ends.";
            v7 = @"Usage while suspended.";
            break;
          default:
            goto LABEL_59;
        }
      }
    }

    else if (a1 <= 300)
    {
      switch(a1)
      {
        case -10010:
          v6 = @"Check the errors and run the session again.";
          v7 = @"Camera Assistance ARSession failed.";
          break;
        case -10008:
          v6 = @"No action needed as the session completed successfully";
          v7 = @"The session completed successfully";
          break;
        case 300:
          v6 = @"Change tag cell";
          v7 = @"Tag cell low power";
          break;
        default:
          goto LABEL_59;
      }
    }

    else if (a1 > 302)
    {
      if (a1 == 303)
      {
        v6 = @"Check localized description";
        v7 = @"Reconfigure errored out";
      }

      else
      {
        if (a1 != 304)
        {
          goto LABEL_59;
        }

        v6 = @"Check localized description";
        v7 = @"Beacon resolution failed";
      }
    }

    else
    {
      v6 = @"Check localized description";
      if (a1 == 301)
      {
        v7 = @"Tag errored out";
      }

      else
      {
        v7 = @"Bluetooth errored out";
      }
    }
  }

  else if (a1 <= -19884)
  {
    if (a1 > -19887)
    {
      if (a1 == -19886)
      {
        v6 = @"Check the logs for specific internal error";
        v7 = @"The given debug key was invalid or the system was not able to set it. Inspect error message.";
      }

      else if (a1 == -19885)
      {
        v6 = @"Vehicle possibly changed its ranging capabilities";
        v7 = @"The capabilities specified in a DCK message are not supported. An action should be taken to indicate this to the vehicle.";
      }

      else
      {
        v6 = @"Try again at a later time";
        v7 = @"A DCK request to recover a suspended ranging session has been received, but recovery has failed. An action should be taken to indicate this to the vehicle.";
      }
    }

    else
    {
      switch(a1)
      {
        case -19889:
          v6 = @"Check the message from the vehicle for format violation";
          v7 = @"The session was given an invalid or unexpected DCK message.";
          break;
        case -19888:
          v6 = @"Try again or check the vehicle";
          v7 = @"The session was expecting a response from the vehicle and did not receive it for over the allowed time.";
          break;
        case -19887:
          v6 = @"Event from bluetooth is corrupted";
          v7 = @"The bluetooth event provided to the session was of an invalid type or contained invalid values.";
          break;
        default:
          goto LABEL_59;
      }
    }
  }

  else if (a1 <= -19704)
  {
    switch(a1)
    {
      case -19883:
        v6 = @"Most likely an internal error, try again.";
        v7 = @"URSKs could not be deleted";
        break;
      case -19882:
        v6 = @"Pick one of the supported policies";
        v7 = @"The priority provided to the session was of an invalid type or contained invalid values";
        break;
      case -19881:
        v6 = @"Check the event notification parameters or format";
        v7 = @"The session was notified of a Car Key event, but the event or its parameters were invalid";
        break;
      default:
        goto LABEL_59;
    }
  }

  else if (a1 > -19702)
  {
    if (a1 == -19701)
    {
      v6 = @"Try again later";
      v7 = @"Indicates internal resource unavailability.";
    }

    else
    {
      if (a1 != -19700)
      {
        goto LABEL_59;
      }

      v6 = @"Check the logs for specific internal error";
      v7 = @"No specific reason for failure is indicated.";
    }
  }

  else if (a1 == -19703)
  {
    v6 = @"Wrong UWB session ID possibly";
    v7 = @"Indicates URSK corresponding to the UWB Session Identifier is not found.";
  }

  else
  {
    v6 = @"Rework the message parameters or fix the order";
    v7 = @"Indicates use of unsupported message or message format.";
  }

  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A588]];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A598]];
LABEL_59:
  if (v3)
  {
    [v5 addEntriesFromDictionary:v3];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.NearbyInteraction" code:a1 userInfo:v5];

  return v8;
}

__CFString *NIRegionSizeCategoryToString(uint64_t a1)
{
  if (!a1)
  {
    return @"Default";
  }

  if (a1 != 10)
  {
    [NIRegionPredicate descriptionInternal];
  }

  return @"Large";
}

double PRCommonConvertTicksToSeconds(unint64_t a1)
{
  v2 = *&PRCommonConvertTicksToSeconds(unsigned long long)::ticksToSeconds;
  if (*&PRCommonConvertTicksToSeconds(unsigned long long)::ticksToSeconds == 0.0)
  {
    if (mach_timebase_info(&info))
    {
      PRCommonConvertTicksToSeconds();
    }

    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&PRCommonConvertTicksToSeconds(unsigned long long)::ticksToSeconds = v2;
  }

  return v2 * a1;
}

double PRCommonGetMachTimeSeconds(void)
{
  v0 = mach_absolute_time();

  return PRCommonConvertTicksToSeconds(v0);
}

double PRCommonGetMachContinuousTimeSeconds(void)
{
  v0 = mach_continuous_time();

  return PRCommonConvertTicksToSeconds(v0);
}

BOOL PRCommonGetAllTimes(double *a1, double *a2, double *a3)
{
  times = mach_get_times();
  if (!times)
  {
    if (a1)
    {
      *a1 = v9 / 1000000000.0 + v8 - *MEMORY[0x1E695E468];
    }

    if (a2)
    {
      *a2 = PRCommonConvertTicksToSeconds(0);
    }

    if (a3)
    {
      *a3 = PRCommonConvertTicksToSeconds(0);
    }
  }

  return times == 0;
}

id PRCommonConvertNSDataToHexNSString(NSData *a1, int a2)
{
  v3 = a1;
  memset(&v16, 0, sizeof(v16));
  std::vector<unsigned char>::vector[abi:ne200100](&v14, -[NSData length](v3, "length"));
  [(NSData *)v3 getBytes:v14 length:[(NSData *)v3 length]];
  v4 = v14;
  v5 = v15;
  if (v14 == v15)
  {
    v9 = &v16;
  }

  else
  {
    do
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X", *v4];
      std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);

      if ((v13 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v8 = v13;
      }

      else
      {
        v8 = __p[1];
      }

      if (a2)
      {
        std::string::insert(&v16, 0, v7, v8);
      }

      else
      {
        std::string::append(&v16, v7, v8);
      }

      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      ++v4;
    }

    while (v4 != v5);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v16;
    }

    else
    {
      v9 = v16.__r_.__value_.__r.__words[0];
    }
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1BAC701A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

id PRCommonConvertHexNSStringToNSData(NSString *a1)
{
  v1 = a1;
  if (([(NSString *)v1 length]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, -[NSString UTF8String](v1, "UTF8String"));
    v2 = objc_opt_new();
    v11 = 0;
    v3 = v13;
    if (v14 >= 0)
    {
      v3 = v14;
    }

    if (v3 >= 2)
    {
      v4 = 0;
      v5 = v14 >> 63;
      do
      {
        if (v5)
        {
          p_p = __p;
        }

        else
        {
          p_p = &__p;
        }

        *__str = *&p_p[v4];
        HIBYTE(v11) = strtol(__str, 0, 16);
        [v2 appendBytes:&v11 + 1 length:1];
        v7 = v4 + 3;
        v4 += 2;
        v8 = v14;
        v5 = v14 >> 63;
        if (v14 < 0)
        {
          v8 = v13;
        }
      }

      while (v8 > v7);
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  return v2;
}

void sub_1BAC703D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *PRCommonSerializePrintableState(void *a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:0];
  if ([v6 length] > 0x8000)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WARNING: statedump too big (%d > %d)", objc_msgSend(v6, "length"), 0x8000];
    v8 = MEMORY[0x1E696AE40];
    v17 = v3;
    v18[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10 = [v8 dataWithPropertyList:v9 format:200 options:0 error:0];

    v6 = v10;
  }

  v11 = malloc_type_calloc(1uLL, [v6 length] + 200, 0x1000040BEF03554uLL);
  *v11 = 1;
  *(v11 + 1) = [v6 length];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[nearbyd] %@", v3];
  v13 = v12;
  strlcpy(v11 + 136, [v12 UTF8String], 0x40uLL);

  v14 = v6;
  memcpy(v11 + 200, [v6 bytes], objc_msgSend(v6, "length"));

  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v9 = v3;
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = PRCommonSerializePrintableState(v3, v5);

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1BAC70788(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BAC70E44(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BAC70F60(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id UWBMakeSessionServerXPCInterface()
{
  v81[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38E0F50];
  v1 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v71 = [v1 initWithObjects:{v2, v3, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v70 = [v4 initWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v8 = objc_alloc(MEMORY[0x1E695DFD8]);
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v69 = [v8 initWithObjects:{v9, v10, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v11 = objc_alloc(MEMORY[0x1E695DFA8]);
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v72 = [v11 initWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
  v81[0] = objc_opt_class();
  v81[1] = objc_opt_class();
  v81[2] = objc_opt_class();
  v81[3] = objc_opt_class();
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:4];
  [v72 addObjectsFromArray:?];
  v80 = objc_opt_class();
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  [v72 addObjectsFromArray:?];
  v79[0] = objc_opt_class();
  v79[1] = objc_opt_class();
  v79[2] = objc_opt_class();
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
  [v72 addObjectsFromArray:?];
  v78[0] = objc_opt_class();
  v78[1] = objc_opt_class();
  v78[2] = objc_opt_class();
  v78[3] = objc_opt_class();
  v78[4] = objc_opt_class();
  v78[5] = objc_opt_class();
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:6];
  [v72 addObjectsFromArray:?];
  v77[0] = objc_opt_class();
  v77[1] = objc_opt_class();
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
  [v72 addObjectsFromArray:?];
  v76 = objc_opt_class();
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
  [v72 addObjectsFromArray:?];
  v75[0] = objc_opt_class();
  v75[1] = objc_opt_class();
  v75[2] = objc_opt_class();
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
  [v72 addObjectsFromArray:?];
  v74[0] = objc_opt_class();
  v74[1] = objc_opt_class();
  v74[2] = objc_opt_class();
  v74[3] = objc_opt_class();
  v74[4] = objc_opt_class();
  v74[5] = objc_opt_class();
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:6];
  [v72 addObjectsFromArray:?];
  v73[0] = objc_opt_class();
  v73[1] = objc_opt_class();
  v73[2] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:3];
  [v72 addObjectsFromArray:v17];

  v18 = objc_alloc(MEMORY[0x1E695DFD8]);
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v60 = [v18 initWithObjects:{v19, v20, objc_opt_class(), 0}];
  v21 = [v72 setByAddingObjectsFromSet:?];
  [v0 setClasses:v21 forSelector:sel_runWithConfiguration_reply_ argumentIndex:0 ofReply:0];

  [v0 setClass:objc_opt_class() forSelector:sel__addObject_reply_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel__removeObject_reply_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_processDCKMessage_reply_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_processDCKMessage_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_processDCKMessage_reply_ argumentIndex:1 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_processBluetoothHostTimeSyncWithType_btcClockTicks_eventCounter_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_isRangingLimitExceeded_ argumentIndex:1 ofReply:1];
  v22 = objc_alloc(MEMORY[0x1E695DFD8]);
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v59 = [v22 initWithObjects:{v23, v24, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  [v0 setClass:objc_opt_class() forSelector:sel__processCarKeyEvent_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_processAcwgM1Msg_withSessionTriggerReason_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_processAcwgM3Msg_ argumentIndex:0 ofReply:0];
  v25 = objc_alloc(MEMORY[0x1E695DFD8]);
  v26 = objc_opt_class();
  v58 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v57 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v27 = objc_alloc(MEMORY[0x1E695DFD8]);
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v56 = [v27 initWithObjects:{v28, v29, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v30 = objc_alloc(MEMORY[0x1E695DFD8]);
  v31 = objc_opt_class();
  v32 = [v30 initWithObjects:{v31, objc_opt_class(), 0}];
  [v0 setClasses:v32 forSelector:sel_setLocalDeviceCanInteract_withDiscoveryTokens_reply_ argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_setLocalDeviceCanInteract_withDiscoveryTokens_reply_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v32 forSelector:sel_setLocalDeviceInteractableDiscoveryTokens_reply_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_setLocalDeviceInteractableDiscoveryTokens_reply_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v32 forSelector:sel_getInteractableDiscoveryTokens_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_getInteractableDiscoveryTokens_ argumentIndex:1 ofReply:1];
  [v0 setClasses:v32 forSelector:sel_getActivelyInteractingDiscoveryTokens_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_getActivelyInteractingDiscoveryTokens_ argumentIndex:1 ofReply:1];
  v33 = objc_alloc(MEMORY[0x1E695DFD8]);
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v55 = [v33 initWithObjects:{v34, v35, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  [v0 setClass:objc_opt_class() forSelector:sel_getLocalDevicePrintableState_ argumentIndex:1 ofReply:1];
  v36 = objc_alloc(MEMORY[0x1E695DFD8]);
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = [v36 initWithObjects:{v37, v38, v39, v40, v41, v42, v43, objc_opt_class(), 0}];
  [v0 setClasses:v44 forSelector:sel__processFindingEvent_reply_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel__processFindingEvent_reply_ argumentIndex:0 ofReply:1];
  v45 = objc_alloc(MEMORY[0x1E695DFD8]);
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = [v45 initWithObjects:{v46, v47, objc_opt_class(), 0}];
  [v0 setClasses:v48 forSelector:sel_setLocalDeviceDebugParameters_reply_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_setLocalDeviceDebugParameters_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_generateSOSBeaconDataForSubject_peerData_reply_ argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_generateSOSBeaconDataForSubject_peerData_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_generateSOSBeaconDataForSubject_peerData_reply_ argumentIndex:1 ofReply:1];
  v49 = objc_alloc(MEMORY[0x1E695DFD8]);
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = [v49 initWithObjects:{v50, v51, objc_opt_class(), 0}];
  [v0 setClasses:v52 forSelector:sel__processSystemEvent_reply_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel__processSystemEvent_reply_ argumentIndex:0 ofReply:1];

  v53 = *MEMORY[0x1E69E9840];

  return v0;
}

id UWBMakeSessionDelegateXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38DA0B0];
  [v0 setClass:objc_opt_class() forSelector:sel_didUpdateLocalDiscoveryToken_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_uwbSessionDidInvalidateWithError_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_uwbSessionDidFailWithError_ argumentIndex:0 ofReply:0];
  v1 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v1 initWithObjects:{v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_didUpdateNearbyObjects_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v8 forSelector:sel_didRemoveNearbyObjects_withReason_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_didDiscoverNearbyObject_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_object_didUpdateRegion_previousRegion_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_object_didUpdateRegion_previousRegion_ argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_object_didUpdateRegion_previousRegion_ argumentIndex:2 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_relayDCKMessage_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_didProcessAcwgM1MsgWithResponse_error_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_didProcessAcwgM3MsgWithResponse_error_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_didProcessAcwgRangingSessionResumeRequestMsgWithResponse_error_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_didReceiveAopSFZoneUpdate_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_didReceiveRangingAuthRecommendation_forObject_ argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_didUpdateAlgorithmState_forObject_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_didUpdateAlgorithmState_forObject_ argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_systemDidUpdateState_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_systemDidUpdateResourceUsageLimitExceeded_forSessionConfigurationTypeWithName_ argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_didUpdateNICoordinates_ argumentIndex:0 ofReply:0];
  v9 = objc_alloc(MEMORY[0x1E695DFD8]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_didUpdateDLTDOAMeasurements_ argumentIndex:0 ofReply:0];

  return v0;
}

__CFString *UWBSessionInterruptionReasonInternalToString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"AirplaneModeActive";
  }

  else
  {
    return off_1E7F14380[a1];
  }
}

__CFString *UWBTrackingStopReasonInternalToString(uint64_t a1)
{
  v1 = @"Timeout";
  if (a1 == 1)
  {
    v1 = @"PeerEnded";
  }

  if (a1 == 2)
  {
    return @"LocalForceRemoved";
  }

  else
  {
    return v1;
  }
}

int32x2_t NINearbyObject.direction.getter()
{
  [v0 direction];
  if (*v1.i32 != *&NINearbyObjectDirectionNotAvailable_Private || (result = vceq_f32(*&vextq_s8(v1, v1, 4uLL), *&vextq_s8(NINearbyObjectDirectionNotAvailable_Private, NINearbyObjectDirectionNotAvailable_Private, 4uLL)), (result.i32[0] & result.i32[1] & 1) == 0))
  {
    [v0 direction];
  }

  return result;
}

unint64_t sub_1BAC742DC(SEL *a1, float *a2)
{
  [v2 *a1];
  v6 = v5;
  v7 = *a2;
  if (v5 == *a2)
  {
    v8 = 0;
  }

  else
  {
    [v2 *a1];
    v8 = v9;
  }

  return v8 | ((v6 == v7) << 32);
}

uint64_t sub_1BAC74364(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(result + 16);
  v5 = a2 + 32;
  for (i = (result + 40); ; i += 2)
  {
    if (v2 == v3)
    {
      if (!v4)
      {
        return 1;
      }

      v8 = 0;
      v9 = 0;
      v2 = v3;
      goto LABEL_11;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_24;
    }

    v10 = (v5 + 16 * v2);
    v9 = *v10;
    v8 = v10[1];

    if (!v4)
    {
      if (v8)
      {
        goto LABEL_20;
      }

      return 1;
    }

    ++v2;
LABEL_11:
    v12 = *(i - 1);
    v11 = *i;

    if (!v8)
    {
      if (v11)
      {
LABEL_20:

        return 0;
      }

      return 1;
    }

    if (!v11)
    {
      goto LABEL_20;
    }

    if (v9 == v12 && v8 == v11)
    {
    }

    else
    {
      v7 = sub_1BAC75E10();

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    --v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t NIAlgorithmConvergenceStatus.Reason.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NIAlgorithmConvergenceStatus.Reason.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NIAlgorithmConvergenceStatus.Reason.localizedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1BAC75D90();
  v4 = NIAlgorithmConvergenceStatusReasonDescription_Private(v3);

  v5 = sub_1BAC75DC0();
  return v5;
}

uint64_t sub_1BAC7459C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BAC75E20();
  sub_1BAC75DD0();
  return sub_1BAC75E30();
}

uint64_t sub_1BAC745E8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BAC75DD0();
}

uint64_t sub_1BAC745F0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BAC75E20();
  sub_1BAC75DD0();
  return sub_1BAC75E30();
}

uint64_t sub_1BAC74638(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAC75E10();
  }
}

void *sub_1BAC74668@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1BAC74674@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1BAC74680()
{
  result = sub_1BAC75DC0();
  qword_1EBC277D8 = result;
  unk_1EBC277E0 = v1;
  return result;
}

uint64_t *sub_1BAC746B0()
{
  if (qword_1EBC277D0 != -1)
  {
    swift_once();
  }

  return &qword_1EBC277D8;
}

uint64_t sub_1BAC74728()
{
  result = sub_1BAC75DC0();
  qword_1EBC277F0 = result;
  *algn_1EBC277F8 = v1;
  return result;
}

uint64_t *sub_1BAC74758()
{
  if (qword_1EBC277E8 != -1)
  {
    swift_once();
  }

  return &qword_1EBC277F0;
}

uint64_t sub_1BAC747D0()
{
  result = sub_1BAC75DC0();
  qword_1EBC27808 = result;
  unk_1EBC27810 = v1;
  return result;
}

uint64_t *sub_1BAC74800()
{
  if (qword_1EBC27800 != -1)
  {
    swift_once();
  }

  return &qword_1EBC27808;
}

uint64_t sub_1BAC74878()
{
  result = sub_1BAC75DC0();
  qword_1EBC27820 = result;
  *algn_1EBC27828 = v1;
  return result;
}

uint64_t *sub_1BAC748A8()
{
  if (qword_1EBC27818 != -1)
  {
    swift_once();
  }

  return &qword_1EBC27820;
}

uint64_t sub_1BAC74920()
{
  result = sub_1BAC75DC0();
  qword_1EBC27838 = result;
  unk_1EBC27840 = v1;
  return result;
}

uint64_t *sub_1BAC74950()
{
  if (qword_1EBC27830 != -1)
  {
    swift_once();
  }

  return &qword_1EBC27838;
}

uint64_t sub_1BAC749C8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
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

id NIAlgorithmConvergence.status.getter@<X0>(uint64_t *a1@<X8>)
{
  result = [v1 status];
  if (!result)
  {
    goto LABEL_10;
  }

  if (result == 2)
  {
    v8 = 1;
    goto LABEL_13;
  }

  if (result == 1)
  {
    v4 = [v1 reasonsPrivate];
    type metadata accessor for Reason(0);
    v5 = sub_1BAC75DF0();

    v6 = *(v5 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1BAC75020(0, v6, 0);
      v7 = 32;
      v8 = v17;
      do
      {
        v9 = *(v5 + v7);
        v10 = sub_1BAC75DC0();
        v13 = *(v17 + 16);
        v12 = *(v17 + 24);
        if (v13 >= v12 >> 1)
        {
          v15 = v10;
          v16 = v11;
          sub_1BAC75020((v12 > 1), v13 + 1, 1);
          v11 = v16;
          v10 = v15;
        }

        *(v17 + 16) = v13 + 1;
        v14 = v17 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        v7 += 8;
        --v6;
      }

      while (v6);
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

LABEL_13:
  *a1 = v8;
  return result;
}

void __swiftcall NISession.worldTransform(for:)(simd_float4x4_optional *__return_ptr retstr, NINearbyObject *a2)
{
  [v2 worldTransformForObject_];
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v5, unk_1EBC27DA0), vceqq_f32(v4, NINearbyObjectWorldTransformNotAvailable_Private)), vandq_s8(vceqq_f32(v6, xmmword_1EBC27DB0), vceqq_f32(v7, unk_1EBC27DC0)))) & 0x80000000) != 0)
  {
    v8 = 1;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    v8 = 0;
  }

  retstr->value.columns[0] = v4;
  retstr->value.columns[1] = v5;
  retstr->value.columns[2] = v6;
  retstr->value.columns[3] = v7;
  retstr->is_nil = v8;
}

uint64_t sub_1BAC74C4C(uint64_t a1, id *a2)
{
  result = sub_1BAC75DA0();
  *a2 = 0;
  return result;
}

uint64_t sub_1BAC74CC4(uint64_t a1, id *a2)
{
  v3 = sub_1BAC75DB0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BAC74D44@<X0>(uint64_t *a1@<X8>)
{
  sub_1BAC75DC0();
  v2 = sub_1BAC75D90();

  *a1 = v2;
  return result;
}

uint64_t sub_1BAC74D88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1BAC75D90();

  *a2 = v5;
  return result;
}

uint64_t sub_1BAC74DD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BAC75DC0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1BAC74DFC(uint64_t a1)
{
  v2 = sub_1BAC7549C(&qword_1EBC27790);
  v3 = sub_1BAC7549C(&qword_1EBC27798);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BAC74E94()
{
  v1 = *v0;
  v2 = sub_1BAC75DC0();
  v3 = MEMORY[0x1BFAFF8C0](v2);

  return v3;
}

uint64_t sub_1BAC74ED0()
{
  v1 = *v0;
  sub_1BAC75DC0();
  sub_1BAC75DD0();
}

uint64_t sub_1BAC74F24()
{
  v1 = *v0;
  sub_1BAC75DC0();
  sub_1BAC75E20();
  sub_1BAC75DD0();
  v2 = sub_1BAC75E30();

  return v2;
}

uint64_t sub_1BAC74F98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1BAC75DC0();
  v6 = v5;
  if (v4 == sub_1BAC75DC0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1BAC75E10();
  }

  return v9 & 1;
}

char *sub_1BAC75020(char *a1, int64_t a2, char a3)
{
  result = sub_1BAC75040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BAC75040(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC277A0, &qword_1BAC84C68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s17NearbyInteraction28NIAlgorithmConvergenceStatusO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v4 = 0;
      v5 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_1BAC75560(*a2);
      sub_1BAC75560(v2);
      sub_1BAC75560(v2);
      sub_1BAC75560(v3);
      v5 = sub_1BAC74364(v3, v2);
      sub_1BAC75570(v2);
      sub_1BAC75570(v3);
      v4 = v3;
      v3 = v2;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_1BAC75560(*a1);
    sub_1BAC75560(v3);
    v5 = 0;
    v4 = v2;
    goto LABEL_10;
  }

  v4 = 1;
  v5 = 1;
LABEL_10:
  sub_1BAC75570(v4);
  sub_1BAC75570(v3);
  return v5 & 1;
}

unint64_t sub_1BAC7523C()
{
  result = qword_1EBC27768;
  if (!qword_1EBC27768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC27768);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17NearbyInteraction28NIAlgorithmConvergenceStatusO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BAC752B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAC75308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BAC75364(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BAC753A0(uint64_t a1, int a2)
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

uint64_t sub_1BAC753E8(uint64_t result, int a2, int a3)
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

uint64_t sub_1BAC7549C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Reason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

unint64_t sub_1BAC75560(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1BAC75570(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

void sub_1BAC75594(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}
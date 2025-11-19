@interface IOHIDSessionScheduleAsync
@end

@implementation IOHIDSessionScheduleAsync

intptr_t ____IOHIDSessionScheduleAsync_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = _IOHIDLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = pthread_self();
    _os_log_impl(&dword_197195000, v2, OS_LOG_TYPE_INFO, "thread_id=%p", buf, 0xCu);
  }

  v23 = 0;
  theArray = 0;
  v22 = 0;
  v3 = _IOHIDLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionSchedule", &unk_19724ED59, buf, 2u);
  }

  if (pthread_mutex_lock((*(*(a1 + 32) + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(context, buf);
  }

  ++**(*(a1 + 32) + 32);
  v4 = _IOHIDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_INFO, "HID Session async scheduling initiated.", buf, 2u);
  }

  v5 = pthread_self();
  if (!pthread_getschedparam(v5, &v22, &v23))
  {
    v6 = _IOHIDLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v23.sched_priority;
      *&buf[8] = 1024;
      *&buf[10] = v22;
      _os_log_impl(&dword_197195000, v6, OS_LOG_TYPE_INFO, "HID Session async root queue running at priority %d and schedule %d.", buf, 0xEu);
    }
  }

  context[0] = *(a1 + 32);
  context[1] = &theArray;
  v7 = *(context[0] + 160);
  v27.length = CFArrayGetCount(v7);
  v27.location = 0;
  CFArrayApplyFunction(v7, v27, __FilterFunctionOpen_0, context);
  v8 = theArray;
  if (theArray)
  {
    v9 = *(*(a1 + 32) + 152);
    v29.length = CFArrayGetCount(theArray);
    v29.location = 0;
    CFArrayAppendArray(v9, v8, v29);
    CFRelease(theArray);
  }

  v10 = *(*(a1 + 32) + 152);
  v28.length = CFArrayGetCount(v10);
  v28.location = 0;
  CFArrayApplyFunction(v10, v28, __FilterFunctionScheduleAsync_0, *(a1 + 32));
  v11 = CFGetAllocator(*(*(a1 + 32) + 136));
  Copy = CFSetCreateCopy(v11, *(*(a1 + 32) + 136));
  v13 = _IOHIDLog();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionRegisterFilters", &unk_19724ED59, buf, 2u);
  }

  if (Copy)
  {
    CFSetApplyFunction(Copy, __RegisterServiceWithSessionFunction, *(a1 + 32));
    CFRelease(Copy);
  }

  v14 = _IOHIDLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionRegisterFilters", &unk_19724ED59, buf, 2u);
  }

  v15 = *(*(a1 + 32) + 32);
  if (*v15)
  {
    --*v15;
    if (pthread_mutex_unlock((v15 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v20, buf);
    }
  }

  v16 = _IOHIDLog();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionSchedule", &unk_19724ED59, buf, 2u);
  }

  v17 = _IOHIDLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_197195000, v17, OS_LOG_TYPE_INFO, "HID Session async scheduling complete.", buf, 2u);
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

@end
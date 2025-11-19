@interface USBFrameTimeCorrelater
- (BOOL)start:(unsigned __int8)a3;
- (USBFrameTimeCorrelater)initWithIOUSBHostObject:(id)a3;
- (USBFrameTimeCorrelaterStatistics)getStatistics;
- (id).cxx_construct;
- (unint64_t)timeforUSBFrame:(unint64_t)a3;
- (unint64_t)updateCurrentMicroframeTimestamp;
- (unint64_t)updateReferenceMicroframeTimestamp;
- (unint64_t)updateTimestampsWithRetries:(int)a3;
- (void)dealloc;
- (void)stop;
@end

@implementation USBFrameTimeCorrelater

- (USBFrameTimeCorrelater)initWithIOUSBHostObject:(id)a3
{
  v5 = a3;
  self->_correlationStatus = 0;
  if ((atomic_load_explicit(&qword_1001796A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001796A0))
  {
    mach_timebase_info(&info);
    qword_100179698 = info;
    __cxa_guard_release(&qword_1001796A0);
  }

  v6 = 80000;
  if (qword_100179698 != HIDWORD(qword_100179698))
  {
    v6 = 80000 * HIDWORD(qword_100179698) / qword_100179698;
  }

  self->_kPreemptionLimitMach = v6;
  objc_storeStrong(&self->_usbHostObject, a3);
  v7 = objc_alloc_init(AUAPeriodicEventRT);
  timer = self->_timer;
  self->_timer = v7;

  self->_useHardwareTimestamping = 0;
  *&self->_startLock._os_unfair_lock_opaque = 0;
  self->_started = 0;
  *&self->_wakeOffsetMachCurrent = 0u;
  *&self->_wakeErrorMachMax = 0u;
  *&self->_preemptedTimeMachMax = 0u;
  self->_hasHardwareTimestamping = controllerHasHardwareTimestamping(self->_usbHostObject);
  v11.receiver = self;
  v11.super_class = USBFrameTimeCorrelater;
  v9 = [(USBFrameTimeCorrelater *)&v11 init];

  return v9;
}

- (void)dealloc
{
  [(AUAPeriodicEventRT *)self->_timer stop];
  v3.receiver = self;
  v3.super_class = USBFrameTimeCorrelater;
  [(USBFrameTimeCorrelater *)&v3 dealloc];
}

- (USBFrameTimeCorrelaterStatistics)getStatistics
{
  wakeOffsetMachCurrent = self->_wakeOffsetMachCurrent;
  if ((atomic_load_explicit(qword_1001796B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1001796B0))
  {
    mach_timebase_info(&info);
    qword_1001796A8 = info.n128_u64[0];
    __cxa_guard_release(qword_1001796B0);
  }

  if (qword_1001796A8 != HIDWORD(qword_1001796A8))
  {
    wakeOffsetMachCurrent = wakeOffsetMachCurrent * qword_1001796A8 / HIDWORD(qword_1001796A8);
  }

  retstr->var1 = wakeOffsetMachCurrent;
  wakeOffsetMachPrevious = self->_wakeOffsetMachPrevious;
  if ((atomic_load_explicit(qword_1001796B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1001796B0))
  {
    mach_timebase_info(&info);
    qword_1001796A8 = info.n128_u64[0];
    __cxa_guard_release(qword_1001796B0);
  }

  if (qword_1001796A8 != HIDWORD(qword_1001796A8))
  {
    wakeOffsetMachPrevious = wakeOffsetMachPrevious * qword_1001796A8 / HIDWORD(qword_1001796A8);
  }

  retstr->var2 = wakeOffsetMachPrevious;
  sub_100004348(&self->_tc.timePairs.mSlots.__elems_[1].mValue.machPerMicroframe, &info);
  retstr->var0 = v12 * 8.0;
  wakeErrorMachMax = self->_wakeErrorMachMax;
  if ((atomic_load_explicit(qword_1001796B0, memory_order_acquire) & 1) == 0)
  {
    result = __cxa_guard_acquire(qword_1001796B0);
    if (result)
    {
      mach_timebase_info(&info);
      qword_1001796A8 = info.n128_u64[0];
      __cxa_guard_release(qword_1001796B0);
    }
  }

  if (qword_1001796A8 != HIDWORD(qword_1001796A8))
  {
    wakeErrorMachMax = wakeErrorMachMax * qword_1001796A8 / HIDWORD(qword_1001796A8);
  }

  retstr->var3 = wakeErrorMachMax;
  measurementDurationMachMax = self->_measurementDurationMachMax;
  if ((atomic_load_explicit(qword_1001796B0, memory_order_acquire) & 1) == 0)
  {
    result = __cxa_guard_acquire(qword_1001796B0);
    if (result)
    {
      mach_timebase_info(&info);
      qword_1001796A8 = info.n128_u64[0];
      __cxa_guard_release(qword_1001796B0);
    }
  }

  if (qword_1001796A8 != HIDWORD(qword_1001796A8))
  {
    measurementDurationMachMax = measurementDurationMachMax * qword_1001796A8 / HIDWORD(qword_1001796A8);
  }

  retstr->var4 = measurementDurationMachMax;
  preemptedTimeMachMax = self->_preemptedTimeMachMax;
  if ((atomic_load_explicit(qword_1001796B0, memory_order_acquire) & 1) == 0)
  {
    result = __cxa_guard_acquire(qword_1001796B0);
    if (result)
    {
      mach_timebase_info(&info);
      qword_1001796A8 = info.n128_u64[0];
      __cxa_guard_release(qword_1001796B0);
    }
  }

  if (qword_1001796A8 != HIDWORD(qword_1001796A8))
  {
    preemptedTimeMachMax = preemptedTimeMachMax * qword_1001796A8 / HIDWORD(qword_1001796A8);
  }

  retstr->var5 = preemptedTimeMachMax;
  *&retstr->var6 = *&self->_failedMeasurementCount;
  *&self->_wakeErrorMachMax = 0u;
  *&self->_preemptedTimeMachMax = 0u;
  return result;
}

- (BOOL)start:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_startLock);
  ++self->_startCount;
  started = self->_started;
  if (!started)
  {
    if (v3)
    {
      v6 = self->_hasHardwareTimestamping == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6;
    self->_useHardwareTimestamping = v7;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_useHardwareTimestamping)
      {
        v8 = "hardware";
      }

      else
      {
        v8 = "polling";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "starting USBFrameTimeCorrelater timestamping = %s\n", &buf, 0xCu);
    }

    self->_tc.machPerMicroframeFilter.index = 0;
    *&self->_tc.machPerMicroframeFilter.values[14] = 0u;
    *&self->_tc.machPerMicroframeFilter.sum = 0u;
    *&self->_tc.machPerMicroframeFilter.values[10] = 0u;
    *&self->_tc.machPerMicroframeFilter.values[12] = 0u;
    *&self->_tc.machPerMicroframeFilter.values[6] = 0u;
    *&self->_tc.machPerMicroframeFilter.values[8] = 0u;
    *&self->_tc.machPerMicroframeFilter.values[2] = 0u;
    *&self->_tc.machPerMicroframeFilter.values[4] = 0u;
    *self->_tc.machPerMicroframeFilter.values = 0u;
    atomic_store(0, &self->_tc.timePairs.mSlots.__elems_[1].mValue.machPerMicroframe);
    atomic_store(1u, &self->_anon_138[8]);
    atomic_store(1u, &self->_anon_138[72]);
    atomic_store(1u, &self->_anon_138[136]);
    atomic_store(1u, &self->_anon_138[200]);
    v9 = [(USBFrameTimeCorrelater *)self updateTimestampsWithRetries:10];
    self->_started = v9 != 0;
    if (v9)
    {
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2020000000;
      v21[3] = qword_100179678 + mach_absolute_time();
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2020000000;
      v20[3] = qword_100179688;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v23 = 0x5812000000;
      v24 = sub_1000034DC;
      v25 = nullsub_1;
      v26 = &unk_100135581;
      v30 = qword_100179688;
      v31 = 0;
      v27 = qword_100179688;
      v28 = qword_100179688;
      v29 = qword_100179688;
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x2020000000;
      v19[3] = 0;
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x2020000000;
      v18 = 0;
      objc_initWeak(&location, self);
      timer = self->_timer;
      v11 = qword_100179678;
      v12 = qword_100179690;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000034F4;
      v14[3] = &unk_100159CE0;
      v14[4] = v19;
      objc_copyWeak(&v15, &location);
      v14[5] = v21;
      v14[6] = v17;
      v14[7] = v20;
      v14[8] = &buf;
      [(AUAPeriodicEventRT *)timer start:v11 maxPeriodMach:v12 eventHandler:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
      _Block_object_dispose(v17, 8);
      _Block_object_dispose(v19, 8);
      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(v20, 8);
      _Block_object_dispose(v21, 8);
      started = self->_started;
    }

    else
    {
      started = 0;
    }
  }

  os_unfair_lock_unlock(&self->_startLock);
  return started;
}

- (void)stop
{
  os_unfair_lock_lock(&self->_startLock);
  startCount = self->_startCount;
  if (startCount <= 0)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"USBFrameTimeCorrelater.mm" lineNumber:408 description:@"USBFrameTimeCorrelater stop called without first being started"];

    v8 = self->_startCount - 1;
    self->_startCount = v8;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = startCount - 1;
    self->_startCount = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  if (!self->_started)
  {
LABEL_3:
    p_startLock = &self->_startLock;

    goto LABEL_5;
  }

  self->_started = 0;
  [(AUAPeriodicEventRT *)self->_timer stop];
  p_startLock = &self->_startLock;

LABEL_5:
  os_unfair_lock_unlock(p_startLock);
}

- (unint64_t)timeforUSBFrame:(unint64_t)a3
{
  v3 = 8 * a3;
  sub_100004348(&self->_tc.timePairs.mSlots.__elems_[1].mValue.machPerMicroframe, &v5);
  return v5.n128_u64[1] + (v6 * (v3 - v5.n128_u64[0]));
}

- (unint64_t)updateTimestampsWithRetries:(int)a3
{
  v4 = (a3 & ~(a3 >> 31)) + 1;
  while (--v4)
  {
    if (self->_useHardwareTimestamping)
    {
      result = [(USBFrameTimeCorrelater *)self updateReferenceMicroframeTimestamp];
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = [(USBFrameTimeCorrelater *)self updateCurrentMicroframeTimestamp];
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

- (unint64_t)updateReferenceMicroframeTimestamp
{
  v17 = 0;
  v18 = 0;
  v3 = [(IOUSBHostObject *)self->_usbHostObject referenceMicroframeWithTime:&v18 error:&v17];
  v4 = v17;
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_100004348(&self->_tc.timePairs.mSlots.__elems_[1].mValue.machPerMicroframe, &v16);
    if (v16.n128_u64[0] == v3)
    {
LABEL_29:
      v9 = v18;
      goto LABEL_30;
    }

    if (!v16.n128_u64[0] || !v16.n128_u64[1])
    {
      v14 = v18;
LABEL_28:
      sub_100003C9C(&self->_tc, v3, v14);
      self->_correlationStatus = 0;
      goto LABEL_29;
    }

    sub_100004348(&self->_tc.timePairs.mSlots.__elems_[1].mValue.machPerMicroframe, buf);
    v11 = *&buf[8] + (*&buf[16] * (v3 - *buf));
    v12 = v18 - v11;
    if ((v18 - v11) >= 0)
    {
      v13 = v18 - v11;
    }

    else
    {
      v13 = v11 - v18;
    }

    if ((atomic_load_explicit(qword_1001796B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1001796B0))
    {
      mach_timebase_info(buf);
      qword_1001796A8 = *buf;
      __cxa_guard_release(qword_1001796B0);
    }

    if (qword_1001796A8 == HIDWORD(qword_1001796A8))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v13 * qword_1001796A8 / HIDWORD(qword_1001796A8);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:
        *buf = 134219008;
        *&buf[4] = v12;
        *&buf[12] = 2048;
        *&buf[14] = v13;
        *&buf[22] = 2048;
        v20 = v3;
        v21 = 2048;
        v22 = v18;
        v23 = 2048;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "reference microframe timestamp calcError %lld = ns %lld, uf x%llx, ts %lld c %lld\n", buf, 0x34u);
        if (v13 >= 0x989681)
        {
LABEL_21:
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10011B988();
          }

          v9 = 0;
          v10 = 2;
          goto LABEL_9;
        }

        goto LABEL_27;
      }
    }

    if (v13 >= 0x989681)
    {
      goto LABEL_21;
    }

LABEL_27:
    v14 = v18 - v12 / 4;
    v18 = v14;
    goto LABEL_28;
  }

  v6 = [v4 code];
  v7 = v6;
  if (v3)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "USBFrameTimeCorrelater updateReferenceMicroframeTimestamp failed to read timestamp: micrframe %llu error %08x\n", buf, 0x12u);
  }

  v9 = 0;
  v10 = 1;
LABEL_9:
  self->_correlationStatus = v10;
LABEL_30:

  return v9;
}

- (unint64_t)updateCurrentMicroframeTimestamp
{
  v3 = self->_usbHostObject;
  v4 = mach_absolute_time();
  v5 = [(IOUSBHostObject *)v3 currentMicroframeWithTime:0 error:0];
  mach_absolute_time();

  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_6:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "USBFrameTimeCorrelater updateCurrentMicroframeTimestamp failed to read time pair, microframe == 0 device terminated?", buf, 2u);
    }

    v7 = 0;
    v8 = 1;
    goto LABEL_9;
  }

  do
  {
    v7 = v4;
    v10 = self->_usbHostObject;
    v4 = mach_absolute_time();
    v11 = [(IOUSBHostObject *)v10 currentMicroframeWithTime:0 error:0];
    v12 = mach_absolute_time();

    if (v11)
    {
      v13 = v4 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_6;
    }
  }

  while (v11 == v5);
  v14 = v12 - v7;
  preemptedTimeMachMax = self->_preemptedTimeMachMax;
  if (v12 - v7 > preemptedTimeMachMax)
  {
    preemptedTimeMachMax = v12 - v7;
  }

  self->_preemptedTimeMachMax = preemptedTimeMachMax;
  if (v14 > self->_kPreemptionLimitMach)
  {
    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if ((atomic_load_explicit(qword_1001796B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1001796B0))
      {
        mach_timebase_info(&info);
        qword_1001796A8 = info.n128_u64[0];
        __cxa_guard_release(qword_1001796B0);
      }

      if (qword_1001796A8 != HIDWORD(qword_1001796A8))
      {
        v14 = v14 * qword_1001796A8 / HIDWORD(qword_1001796A8);
      }

      kPreemptionLimitMach = self->_kPreemptionLimitMach;
      if ((atomic_load_explicit(qword_1001796B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1001796B0))
      {
        mach_timebase_info(&info);
        qword_1001796A8 = info.n128_u64[0];
        __cxa_guard_release(qword_1001796B0);
      }

      if (qword_1001796A8 != HIDWORD(qword_1001796A8))
      {
        kPreemptionLimitMach = kPreemptionLimitMach * qword_1001796A8 / HIDWORD(qword_1001796A8);
      }

      *buf = 134218240;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = kPreemptionLimitMach;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "USBFrameTimeCorrelater prememtion limit exceeded %llu > %llu ns", buf, 0x16u);
    }

LABEL_28:
    v7 = 0;
    v8 = 2;
    goto LABEL_9;
  }

  sub_100004348(&self->_tc.timePairs.mSlots.__elems_[1].mValue.machPerMicroframe, &info);
  if (info.n128_u64[0] != v11)
  {
    v18 = v12 - (v14 >> 1);
    if (!info.n128_u64[0] || !info.n128_u64[1])
    {
LABEL_45:
      sub_100003C9C(&self->_tc, v11, v18);
      v8 = 0;
LABEL_9:
      self->_correlationStatus = v8;
      return v7;
    }

    sub_100004348(&self->_tc.timePairs.mSlots.__elems_[1].mValue.machPerMicroframe, buf);
    v19 = *&buf[8] + (*&buf[16] * &v11[-*buf]);
    if (v18 - v19 >= 0)
    {
      v20 = v18 - v19;
    }

    else
    {
      v20 = v19 - v18;
    }

    if ((atomic_load_explicit(qword_1001796B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1001796B0))
    {
      mach_timebase_info(buf);
      qword_1001796A8 = *buf;
      __cxa_guard_release(qword_1001796B0);
    }

    if (qword_1001796A8 == HIDWORD(qword_1001796A8))
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }
    }

    else
    {
      v20 = v20 * qword_1001796A8 / HIDWORD(qword_1001796A8);
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_38:
        if (v20 > 0x989680)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }
    }

    *buf = 134219264;
    *&buf[4] = v18 - v19;
    *&buf[12] = 2048;
    *&buf[14] = v20;
    *&buf[22] = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v18;
    v28 = 2048;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "current microframe timestamp calcError %lld = ns %lld, uf1 x%llx, uf2 x%llx, ts %lld c %lld\n", buf, 0x3Eu);
    if (v20 > 0x989680)
    {
      goto LABEL_46;
    }

LABEL_42:
    if (v11 < v5 || (v11 - v5) >= 9)
    {
LABEL_46:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10011B9D0();
      }

      goto LABEL_28;
    }

    v18 = v19 + (v18 - v19) / 2;
    goto LABEL_45;
  }

  return v7;
}

- (id).cxx_construct
{
  *(self + 26) = 0;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 4) = 0u;
  v2 = qword_100179670;
  *(self + 328) = 0u;
  *(self + 43) = v2;
  *(self + 392) = 0u;
  *(self + 51) = v2;
  *(self + 456) = 0u;
  *(self + 59) = v2;
  *(self + 520) = 0u;
  *(self + 67) = v2;
  return self;
}

@end
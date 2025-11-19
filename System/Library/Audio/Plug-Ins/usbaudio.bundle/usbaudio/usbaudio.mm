int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for XPCListener.InitializationOptions();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  qword_100179460 = 0xD000000000000013;
  *algn_100179468 = 0x800000010012A2F0;
  sub_100001A14();
  v5 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  static XPCListener.InitializationOptions.none.getter();
  v6 = type metadata accessor for XPCListener();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  qword_100179470 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  type metadata accessor for DriverPlugin();
  static DriverPlugin.registerActiveDriverInLoop()();
  dispatch_main();
}

unint64_t sub_100001A14()
{
  result = qword_100173C90;
  if (!qword_100173C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100173C90);
  }

  return result;
}

uint64_t sub_100001AB4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001AFC()
{
  result = qword_100173CA0;
  if (!qword_100173CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173CA0);
  }

  return result;
}

void sub_100001B50(uint64_t a1@<X8>)
{
  sub_100001A14();
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  *(a1 + 24) = &type metadata for Bool;
  *(a1 + 32) = &protocol witness table for Bool;
  *a1 = 1;
}

uint64_t AUAGetBootArg(void *a1, uint64_t a2)
{
  v3 = [a1 cStringUsingEncoding:4];

  return _os_parse_boot_arg_int(v3, a2);
}

uint64_t IOUSBGetEndpointBurstSize_ValidatePtrs(signed int a1, IOUSBEndpointDescriptor *descriptor, uint64_t a3, uint64_t a4)
{
  v8 = IOUSBGetEndpointType(descriptor);
  result = IOUSBGetEndpointMaxPacketSize(a1, descriptor);
  v10 = 0;
  if (a1 <= 3)
  {
    if ((a1 - 1) < 2)
    {
      return result;
    }

    if (a1 == 3)
    {
      return (result + result * ((descriptor->wMaxPacketSize >> 11) & 3));
    }

    return v10;
  }

  if ((a1 - 5) < 2)
  {
    if (!v8)
    {
      return result;
    }

    if (v8 == 1)
    {
      if (!a3)
      {
        return result;
      }

      v11 = *(a3 + 3);
      if (a4 && v11 < 0)
      {
        return *(a4 + 4);
      }

LABEL_18:
      v12 = result + result * *(a3 + 2);
      return (v12 + v12 * (v11 & 3));
    }

LABEL_19:
    if (a3)
    {
      return result + result * *(a3 + 2);
    }

    return result;
  }

  if (a1 != 4)
  {
    return v10;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      if (!a3)
      {
        return result;
      }

      LOBYTE(v11) = *(a3 + 3);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  return result;
}

void *AudioDeviceRealtimeGetZeroTimestampBlock(void *a1)
{
  v1 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001EE4;
  v5[3] = &unk_100159C68;
  v5[4] = [v1 timestamps];
  v5[5] = [v1 seed];
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  return v3;
}

uint64_t sub_100001EE4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = atomic_load((v4 + 64));
  v6 = (v4 + 8 * v5);
  v7 = atomic_load(v6 + 4);
  *a3 = v7;
  v8 = atomic_load(v6);
  *a2 = v8;
  *a4 = *(a1 + 40);
  return 0;
}

void *AudioDeviceCreateGenericWillDoBlock(char a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001FB0;
  v4[3] = &unk_100159C88;
  v5 = a1;
  v1 = objc_retainBlock(v4);
  v2 = objc_retainBlock(v1);

  return v2;
}

uint64_t sub_100001FB0(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  result = 1970171760;
  if (a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *(a1 + 32);
      *a4 = 1;
    }
  }

  return result;
}

NSObject *CreateFixedPriorityDispatchQueue(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s.workloop", a1];
  inactive = dispatch_workloop_create_inactive([v2 UTF8String]);

  if (inactive)
  {
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(inactive);
    v4 = dispatch_queue_attr_make_initially_inactive(0);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INTERACTIVE, 0);

    v6 = [NSString stringWithFormat:@"%s.queue", a1];
    v7 = dispatch_queue_create([v6 UTF8String], v5);

    if (v7)
    {
      dispatch_set_target_queue(v7, inactive);
      dispatch_activate(v7);
      v8 = v7;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100002148()
{
  v0 = objc_autoreleasePoolPush();
  dword_1001794B8 = 0;
  qword_1001794C0 = 0;

  objc_autoreleasePoolPop(v0);
}

char *AUAPeriodicEventRTImpl::AUAPeriodicEventRTImpl(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = a2;
  v11 = a5;
  *a1 = off_100159CB8;
  *(a1 + 2) = 0;
  *(a1 + 2) = a3;
  *(a1 + 3) = a4;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0;
  *(a1 + 21) = &stru_100167E00;
  *(a1 + 22) = 0;
  v12 = [v11 copy];
  v13 = *(a1 + 4);
  *(a1 + 4) = v12;

  objc_storeStrong(a1 + 21, a2);
  if (pthread_mutex_init((a1 + 40), 0))
  {
    __assert_rtn("AUAPeriodicEventRTImpl", "AUAPeriodicEventRT.mm", 102, "!error");
  }

  pthread_cond_init((a1 + 112), 0);
  if (pthread_attr_init(&v19))
  {
    v17 = "!error";
    v18 = 108;
    goto LABEL_10;
  }

  *(a1 + 2) = 1;
  v14 = os_workgroup_interval_create();
  v15 = *(a1 + 22);
  *(a1 + 22) = v14;

  if (!*(a1 + 22))
  {
    v17 = "_workgroup";
    v18 = 115;
    goto LABEL_10;
  }

  if (pthread_create(a1 + 13, &v19, AUAPeriodicEventRTImpl::eventThread, a1))
  {
    v17 = "!error";
    v18 = 119;
LABEL_10:
    __assert_rtn("AUAPeriodicEventRTImpl", "AUAPeriodicEventRT.mm", v18, v17);
  }

  pthread_attr_destroy(&v19);

  return a1;
}

uint64_t AUAPeriodicEventRTImpl::eventThread(AUAPeriodicEventRTImpl *this, void *a2)
{
  mach_timebase_info(&info);
  LODWORD(policy_info) = this->var3;
  HIDWORD(policy_info) = 3000000 * info.denom / info.numer;
  v21 = 4000000 * info.denom / info.numer;
  v22 = 0;
  v3 = mach_thread_self();
  if (thread_policy_set(v3, 2u, &policy_info, 4u))
  {
    sub_10011B904();
  }

  if (os_workgroup_join(this->var10, &this->var11))
  {
    sub_10011B930();
  }

  pthread_setname_np([this->var9 UTF8String]);
  while (1)
  {
    result = pthread_mutex_lock(&this->var5);
    var1 = this->var1;
    if (var1 != 1)
    {
      break;
    }

    this->var8 = 0;
    var6 = this->var6;
    if (var6 == pthread_self())
    {
      pthread_cond_wait(&this->var7, &this->var5);
    }

LABEL_6:
    pthread_mutex_unlock(&this->var5);
  }

  if (var1 == 2)
  {
    v7 = mach_absolute_time();
    var8 = this->var8;
    if (var8)
    {
      if (!this->var4)
      {
        var2 = this->var2;
        goto LABEL_29;
      }

      v9 = v7 + v21;
      v10 = v7;
      v11 = os_workgroup_interval_start(this->var10, v7 - 1, v9, 0);
      if (v11)
      {
        NSLog(@"Failed to start work interval: %d, start %llu deadline %llu\n", v11, v10, v9, policy_info);
      }

      this->var8 = (*(this->var4 + 2))();
      if (os_workgroup_interval_finish(this->var10, 0))
      {
        sub_10011B95C();
      }

      v12 = this->var8;
      if (v12 < mach_absolute_time())
      {
        do
        {
          var8 = this->var2;
          var2 = this->var8;
LABEL_29:
          v18 = var2 + var8;
LABEL_27:
          this->var8 = v18;
        }

        while (v18 < mach_absolute_time());
      }

      v13 = this->var8;
      v14 = mach_absolute_time();
      if ((atomic_load_explicit(&qword_100179668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100179668))
      {
        mach_timebase_info(&v24);
        qword_100179660 = v24.tv_sec;
        __cxa_guard_release(&qword_100179668);
      }

      v15 = v13 - v14;
      if (qword_100179660 != HIDWORD(qword_100179660))
      {
        v15 = v15 * qword_100179660 / HIDWORD(qword_100179660);
      }

      v16 = this->var6;
      if (v16 == pthread_self())
      {
        if (v15 >= 0x3B9ACA00)
        {
          v17 = v15 / 0x3B9ACA00;
          v15 %= 0x3B9ACA00uLL;
        }

        else
        {
          v17 = 0;
        }

        v24.tv_sec = v17;
        v24.tv_nsec = v15;
        pthread_cond_timedwait_relative_np(&this->var7, &this->var5, &v24);
      }

      goto LABEL_6;
    }

    v18 = this->var2 + v7;
    goto LABEL_27;
  }

  if (var1)
  {
    __break(1u);
  }

  else
  {
    pthread_mutex_unlock(&this->var5);
    os_workgroup_leave(this->var10, &this->var11);
    return 0;
  }

  return result;
}

void AUAPeriodicEventRTImpl::~AUAPeriodicEventRTImpl(AUAPeriodicEventRTImpl *this)
{
  this->var0 = off_100159CB8;
  p_var5 = &this->var5;
  pthread_mutex_lock(&this->var5);
  this->var1 = 0;
  pthread_cond_signal(&this->var7);
  pthread_mutex_unlock(p_var5);
  pthread_join(this->var6, 0);
  pthread_cond_destroy(&this->var7);
  pthread_mutex_destroy(p_var5);
}

{
  AUAPeriodicEventRTImpl::~AUAPeriodicEventRTImpl(this);

  operator delete();
}

void sub_100002BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AUAPeriodicEventRT;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL controllerHasHardwareTimestamping(IOUSBHostObject *a1)
{
  v1 = a1;
  v5 = 0;
  v2 = [(IOUSBHostObject *)v1 referenceMicroframeWithTime:&v5 error:0];
  usleep(0x1F4u);
  if ([(IOUSBHostObject *)v1 referenceMicroframeWithTime:&v5 error:0]== v2 || (usleep(0x1F4u), [(IOUSBHostObject *)v1 referenceMicroframeWithTime:&v5 error:0]== v2))
  {

    return 0;
  }

  else
  {
    usleep(0x1F4u);
    v4 = [(IOUSBHostObject *)v1 referenceMicroframeWithTime:&v5 error:0]!= v2;

    return v4;
  }
}

void sub_100002E1C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1001796A0);

  _Unwind_Resume(a1);
}

void sub_100002E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = USBFrameTimeCorrelater;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100003480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v33 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1000034DC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t sub_1000034F4(uint64_t a1)
{
  v2 = mach_absolute_time();
  ++*(*(*(a1 + 32) + 8) + 24);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = a1 + 40;
    v6 = v2 - *(*(*(a1 + 40) + 8) + 24);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if (v6 > *(*(*(a1 + 56) + 8) + 24))
      {
        v7 = 644;
LABEL_21:
        ++*&v4[v7];
        *(*(*(a1 + 48) + 8) + 24) = 0;
        *(*(*(a1 + 40) + 8) + 24) = qword_100179678 + *(*(*(a1 + 40) + 8) + 24) - qword_100179688;
        goto LABEL_28;
      }

      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = [WeakRetained updateTimestampsWithRetries:v8];
    if (!v9)
    {
      v7 = 640;
      goto LABEL_21;
    }

    v10 = mach_absolute_time();
    v11 = *(*(a1 + 64) + 8);
    v12 = 10 * qword_100179688;
    if (10 * qword_100179688 >= qword_100179688 + v6)
    {
      v12 = qword_100179688 + v6;
    }

    v13 = v11[5].i64[0];
    v11[3].i64[v13] = v12;
    if ((v13 + 1) <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 0;
    }

    v11[5].i64[0] = v14;
    v15 = vbslq_s8(vcgtq_u64(v11[3], v11[4]), v11[3], v11[4]);
    v16 = vextq_s8(v15, v15, 8uLL).u64[0];
    *(*(*(a1 + 56) + 8) + 24) = vbsl_s8(vcgtd_u64(v15.u64[0], v16), *v15.i8, v16);
    *(v4 + 76) = *(v4 + 75);
    *(v4 + 75) = *(*(*(a1 + 56) + 8) + 24);
    v17 = *(v4 + 77);
    if (v6 > v17)
    {
      v17 = v6;
    }

    *(v4 + 77) = v17;
    v18 = v10 - v2;
    if (v10 - v2 <= *(v4 + 78))
    {
      v18 = *(v4 + 78);
    }

    *(v4 + 78) = v18;
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) > 4uLL;
    if (*(v4 + 25) < 5uLL)
    {
      v20 = *(*(*(a1 + 48) + 8) + 24);
      v22 = qword_100179678;
      v21 = qword_100179680;
      sub_100004348(v4 + 64, &v27);
      if (v20)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      v24 = (v28 / *&qword_100179670 * v23) - *(*(*(a1 + 56) + 8) + 24);
      v19 = qword_100179690;
      if (qword_100179690 >= v24)
      {
        v19 = v24;
      }
    }

    else
    {
      v19 = qword_100179690;
    }

    *(*(*v5 + 8) + 24) = &v9[v19];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 40) + 8) + 24) = qword_100179678 + mach_absolute_time();
    v5 = a1 + 40;
  }

LABEL_28:
  v25 = *(*(*v5 + 8) + 24);

  return v25;
}

void sub_100003C68(_Unwind_Exception *a1)
{
  __cxa_guard_abort(qword_1001796B0);

  _Unwind_Resume(a1);
}

void sub_100003C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *&qword_100179670;
  v7 = (a1 + 192);
  sub_100004348((a1 + 192), &v21);
  if (v21.n128_u64[0])
  {
    v8 = v21.n128_u64[1] == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_11;
  }

  v9 = (a3 - v21.n128_u64[1]) / (a2 - v21.n128_u64[0]);
  *(a1 + 128) = v9 + *(a1 + 128);
  v11 = *(a1 + 136);
  v10 = *(a1 + 144);
  v12 = *(a1 + 8 * v10);
  *(a1 + 8 * v10) = v9;
  v13 = v10 + 1;
  *(a1 + 136) = v11 + 1;
  *(a1 + 144) = v13;
  if (v11 <= 0xF)
  {
    v14 = v13;
    if (v13 < 0x10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(a1 + 128) = *(a1 + 128) - v12;
  v14 = 16.0;
  if (v13 >= 0x10)
  {
LABEL_9:
    *(a1 + 144) = 0;
  }

LABEL_10:
  v6 = *(a1 + 128) / v14;
LABEL_11:
  v15 = 0;
  while (1)
  {
    v16 = atomic_load(v7);
    if ((v16 & 1) == 0)
    {
      v17 = v16;
      atomic_compare_exchange_strong(v7, &v17, v16 | 1);
      if (v17 == v16)
      {
        break;
      }
    }

    if (++v15 == 100)
    {
      sched_yield();
      v15 = 0;
    }
  }

  v18 = v16 >> 2;
  v19 = v16 & 0xFFFFFFFC;
  v20 = a1 + (((v16 >> 2) & 3) << 6);
  atomic_store((2 * (v18 & 0x3FFFFFFF)) | 1, (v20 + 256));
  *(v20 + 264) = a2;
  *(v20 + 272) = a3;
  *(v20 + 280) = v6;
  __dmb(0xBu);
  atomic_store(2 * v18, (v20 + 256));
  atomic_store((v19 + 5) & 0xFFFFFFFC | 2, (a1 + 192));
}

void sub_100004254(_Unwind_Exception *a1)
{
  __cxa_guard_abort(qword_1001796B0);

  _Unwind_Resume(a1);
}

__n128 sub_100004348@<Q0>(unsigned int *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = atomic_load(a1);
  if ((v3 & 2) != 0)
  {
    v6 = 0;
    v7 = a1 + 16;
    do
    {
      v8 = &v7[16 * (((v3 >> 2) - 1) & 3)];
      explicit = atomic_load_explicit(v8, memory_order_acquire);
      if (explicit & 1) != 0 && (v8 = &v7[16 * ((v3 >> 2) & 3 ^ 2)], explicit = atomic_load_explicit(v8, memory_order_acquire), (explicit))
      {
        if (++v6 == 100)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __dmb(9u);
        result = *(v8 + 2);
        *a2 = result;
        a2[1].n128_u64[0] = *(v8 + 3);
        __dmb(9u);
        if (explicit == atomic_load_explicit(v8, memory_order_acquire))
        {
          return result;
        }

        if (++v6 == 100)
        {
LABEL_11:
          sched_yield();
          v6 = 0;
        }
      }

      v3 = atomic_load(a1);
    }

    while ((v3 & 2) != 0);
  }

  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  result.n128_u64[0] = qword_100179670;
  a2[1].n128_u64[0] = qword_100179670;
  return result;
}

void sub_100004424()
{
  v0 = objc_autoreleasePoolPush();
  if ((atomic_load_explicit(&qword_1001796A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001796A0))
  {
    mach_timebase_info(&info);
    qword_100179698 = info;
    __cxa_guard_release(&qword_1001796A0);
  }

  if (qword_100179698 == HIDWORD(qword_100179698))
  {
    v1 = 125000.0;
  }

  else
  {
    v1 = (125000 * HIDWORD(qword_100179698) / qword_100179698);
  }

  qword_100179670 = *&v1;
  if ((atomic_load_explicit(&qword_1001796A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001796A0))
  {
    mach_timebase_info(&info);
    qword_100179698 = info;
    __cxa_guard_release(&qword_1001796A0);
  }

  v2 = 200000000;
  if (qword_100179698 != HIDWORD(qword_100179698))
  {
    v2 = 200000000 * HIDWORD(qword_100179698) / qword_100179698;
  }

  qword_100179678 = v2;
  if ((atomic_load_explicit(&qword_1001796A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001796A0))
  {
    mach_timebase_info(&info);
    qword_100179698 = info;
    __cxa_guard_release(&qword_1001796A0);
  }

  if (qword_100179698 == HIDWORD(qword_100179698))
  {
    v3 = 2048000000;
  }

  else
  {
    v3 = 2048000000 * HIDWORD(qword_100179698) / qword_100179698;
  }

  qword_100179680 = v3;
  qword_100179690 = qword_100179678 + v3;
  if ((atomic_load_explicit(&qword_1001796A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001796A0))
  {
    mach_timebase_info(&info);
    qword_100179698 = info;
    __cxa_guard_release(&qword_1001796A0);
  }

  if (qword_100179698 == HIDWORD(qword_100179698))
  {
    v4 = 50000;
  }

  else
  {
    v4 = 50000 * HIDWORD(qword_100179698) / qword_100179698;
  }

  qword_100179688 = v4;
  objc_autoreleasePoolPop(v0);
}

BOOL IsAUARTInputTransferBlockOkToEnqueue(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = mach_absolute_time() - v1;
  if (v1)
  {
    v3 = v2 < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  info = 0;
  mach_timebase_info(&info);
  if (info.numer != info.denom)
  {
    v2 = v2 * info.numer / info.denom;
  }

  return v2 > 0x7A1200;
}

unint64_t PrepareAUARTInputTransferBlock(unsigned int *a1, uint64_t a2)
{
  *(a1 + 5) = a2;
  *(a1 + 6) = -1;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0x7FFFFFFFLL;
  *(a1 + 9) = 0;
  result = memset(*(a1 + 3), a1[5], a1[4]);
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 4);
    v6 = a1[1];
    v7 = *(a1 + 1);
    if (v4 == 1)
    {
      v8 = 0;
LABEL_7:
      v12 = v6 * v8;
      v13 = v5 + 28 * v8 + 12;
      v14 = v4 - v8;
      do
      {
        *(v13 - 12) = 0;
        *(v13 - 8) = v6;
        *(v13 - 4) = v12;
        *v13 = -1;
        v12 += v6;
        *(v13 + 4) = v7;
        *(v13 + 12) = 0;
        v13 += 28;
        --v14;
      }

      while (v14);
      return result;
    }

    v9 = 0;
    v8 = v4 & 0xFFFFFFFE;
    v10 = v5 + 32;
    v11 = v8;
    do
    {
      *(v10 - 32) = 0;
      *(v10 - 28) = v6;
      result = v6 + v9;
      *v10 = v6;
      *(v10 + 4) = result;
      *(v10 - 24) = v9;
      *(v10 - 20) = -1;
      *(v10 + 8) = -1;
      *(v10 - 16) = v7;
      *(v10 - 8) = 0;
      *(v10 + 12) = v7;
      *(v10 + 20) = 0;
      v10 += 56;
      v9 += 2 * v6;
      v11 -= 2;
    }

    while (v11);
    if (v8 != v4)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t AUARecordBlockCompletion(uint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4, unsigned int a5, void *a6, _DWORD *a7)
{
  if (*a1 < a4)
  {
    *(a1 + 48) = a3;
    return 0;
  }

  LODWORD(v8) = 0;
  v9 = 0;
  v10 = *(a1 + 32);
  v11 = a3 % a2;
  if (a4 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4;
  }

  v13 = a3 % a2;
  v14 = *a1 / a4;
  while (2)
  {
    v15 = 0;
    for (i = v12; i; --i)
    {
      v17 = *v10;
      if (*v10 == -536870169 || v17 == 0)
      {
        v19 = v10[3] / a5;
        if (!*a6)
        {
          goto LABEL_19;
        }

        goto LABEL_9;
      }

      if (v17 != -536870168)
      {
        break;
      }

      v19 = v10[1] / a5;
      if (!*a6)
      {
LABEL_19:
        v13 += v19;
        if (v13 >= a2)
        {
          *a6 = *(a1 + 40) + v9;
          *a7 = a2 - v11;
        }
      }

LABEL_9:
      v15 += v19;
      v10 += 7;
    }

    v8 = (v15 + v8);
    LODWORD(v11) = v11 + v15;
    if (++v9 < v14)
    {
      continue;
    }

    break;
  }

  *(a1 + 48) = a3;
  return v8;
}

void *AUARealtimeReadInputBlock(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x5810000000;
  v12[3] = &unk_100135581;
  v12[4] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = 0;
  v20 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000049B0;
  v9[3] = &unk_100159D08;
  v9[4] = v12;
  v9[5] = a7;
  v10 = a2;
  v11 = a4;
  v7 = objc_retainBlock(v9);
  _Block_object_dispose(v12, 8);

  return v7;
}

uint64_t sub_1000049B0(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v4 = 2003329396;
  if (!a2 || !a3 || !a4)
  {
    return v4;
  }

  v5 = *(a3 + 80);
  v6 = v5;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 56);
  v9 = *(v7 + 44);
  if (*(v7 + 80) != *(v8 + 80 * *(v7 + 72) + 48))
  {
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = (v8 + 48);
      do
      {
        v15 = *v13;
        v13 += 10;
        v14 = v15;
        if (v15 != -1 && v15 > v12)
        {
          v12 = v14;
          v11 = v10;
        }

        ++v10;
      }

      while (v9 != v10);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    *(v8 + 80 * v11 + 68) = 1;
    *(v7 + 80) = v12;
    *(v7 + 72) = v11;
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 56);
    LODWORD(v9) = *(v7 + 44);
  }

  v16 = *(v7 + 40);
  __dst = *(v7 + 64);
  v17 = *(v7 + 48);
  v18 = (v8 + 80 * *(v7 + 72));
  v20 = v18 + 15;
  v19 = v18[15];
  v21 = *v18;
  if (v19 >= v21)
  {
LABEL_54:
    v4 = 0;
    goto LABEL_55;
  }

  v62 = v5;
  v63 = a1;
  v65 = a4;
  v22 = v18[14];
  v23 = *(v18 + 6);
  v24 = -1;
  v64 = a2;
  v60 = v7;
  v61 = a2;
  v58 = v9;
  v59 = v8;
  while (2)
  {
    v25 = 0;
    v66 = *(v18 + 3);
    v26 = v22 + v23;
    while (1)
    {
      v27 = (*(v18 + 4) + 28 * v19);
      v28 = *v27;
      if ((*v27 + 536870169) >= 2 && v28 != 0)
      {
        v4 = 2003329396;
        v6 = v62;
        if (v28 == -536870911)
        {
          v42 = 1;
          a4 = v65;
          a2 = v64;
          a1 = v63;
          if (v24 == -1)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v42 = 0;
          a4 = v65;
          a2 = v64;
          a1 = v63;
          if (v24 == -1)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_51;
      }

      v30 = v27[3];
      if (v30 == -1)
      {
        ++v25;
        v42 = 1;
        if (v19 >= v21)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28 == -536870168;
      }

      v32 = v27[2];
      if (v31)
      {
        v33 = v27[1];
      }

      else
      {
        v33 = v27[3];
      }

      v34 = (v66 + v32);
      v35 = v26 % v17;
      v36 = v33 / v16;
      v37 = v17 - v35;
      if (v36 + v35 <= v17)
      {
        v37 = v36;
      }

      if (v36 + v35 >= v17)
      {
        v38 = v36 + v35 - v17;
      }

      else
      {
        v38 = 0;
      }

      v39 = v37 * v16;
      if (v37 * v16)
      {
        memcpy(&__dst[v16 * v35], v34, v37 * v16);
      }

      v40 = v38 * v16;
      if (v40)
      {
        memcpy(__dst, &v34[v39], v40);
      }

      v24 = v26 + v36;
      v41 = v18[14] + v36;
      v18[14] = v41;
      *v20 = ++v19;
      v21 = *v18;
      if (v19 == v21)
      {
        break;
      }

      v25 = 0;
      v26 += v36;
      v42 = 1;
      if (v19 >= v21)
      {
        goto LABEL_45;
      }

LABEL_41:
      if (v25 >= 2)
      {
        goto LABEL_45;
      }
    }

    *(v60 + 80) = *(v18 + 6) + v41;
    v43 = mach_absolute_time();
    v22 = 0;
    v19 = 0;
    *(v18 + 9) = v43;
    *(v60 + 72) = (*(v60 + 72) + 1) % v58;
    v18 = (v59 + 80 * *(v60 + 72));
    v18[15] = 0;
    v20 = v18 + 15;
    v18[14] = 0;
    v23 = *(v60 + 80);
    *(v18 + 6) = v23;
    v21 = *v18;
    if (v21)
    {
      continue;
    }

    break;
  }

  v42 = 1;
LABEL_45:
  v4 = 2003329396;
  a4 = v65;
  a2 = v64;
  v6 = v62;
  a1 = v63;
  if (v24 == -1)
  {
LABEL_53:
    if (!v42)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_51:
  v44 = v24 - (v6 + v61);
  v45 = v18[16];
  if (v45 <= v44 && v45 != 0x7FFFFFFF)
  {
    goto LABEL_53;
  }

  v18[16] = v44;
  if (v42)
  {
    goto LABEL_54;
  }

LABEL_55:
  v46 = *(a1 + 40);
  v47 = *(a1 + 48);
  v48 = *(a1 + 52);
  v49 = v6 % v48;
  v50 = v48 - v49;
  v51 = v49 + a2 >= v48;
  v52 = v49 + a2 - v48;
  if (v52 != 0 && v51)
  {
    v53 = v50;
  }

  else
  {
    v53 = a2;
  }

  if (!v51)
  {
    v52 = 0;
  }

  v54 = (v53 * v47);
  v55 = (v52 * v47);
  if (v54)
  {
    v56 = a4;
    memcpy(a4, &v46[v47 * v49], v54);
    a4 = v56;
  }

  if (v55)
  {
    memcpy(&a4[v54], v46, v55);
  }

  return v4;
}

uint64_t AUARealtimeCopyToRingBufferManualWrap515C(int a1, unint64_t a2, unsigned int a3, float32x4_t *a4, uint64_t a5, unsigned int a6, unsigned int a7, float a8)
{
  v8 = a6 * a1;
  v9 = (a5 + v8);
  v10 = a2 % a6;
  v11 = v10 + a3;
  v12 = a6 - v10;
  v13 = v10 + a3 - a6;
  if (v10 + a3 <= a6)
  {
    v12 = a3;
  }

  if (v11 < a6)
  {
    v13 = 0;
  }

  v14 = v12 * a1;
  v15 = v13 * a1;
  if (!v14)
  {
    goto LABEL_55;
  }

  v16 = (v10 * a1);
  v17 = a5 + v16;
  v18 = v14 >> 2;
  if (((v12 * a1) & 4) != 0)
  {
    if (v14 > 0x1F)
    {
      v22 = 0;
      v21 = (v14 >> 2) & 0x3FFFFFF8;
      v23 = a4 + 1;
      v24.i64[0] = 0x7F0000007FLL;
      v24.i64[1] = 0x7F0000007FLL;
      v25.i64[0] = 0x7F0000007FLL;
      v25.i64[1] = 0x7F0000007FLL;
      v26 = v21;
      do
      {
        v27 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(*v23, a8)), v24), v25), 8uLL);
        v28 = (v17 + 4 * v22);
        *v28 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v23[-1], a8)), v24), v25), 8uLL);
        v28[1] = v27;
        v22 += 8;
        v23 += 2;
        v26 -= 8;
      }

      while (v26);
      if (v18 == v21)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v21 = 0;
    }

    do
    {
      v29 = (a4->f32[v21] * a8);
      if (v29 >= 0x7FFFFF)
      {
        v29 = 0x7FFFFF;
      }

      if (v29 <= -8388608)
      {
        v29 = -8388608;
      }

      *(v17 + 4 * v21++) = v29 << 8;
    }

    while (v18 > v21);
  }

  else
  {
    if (v14 < 4)
    {
      goto LABEL_28;
    }

    v19 = 2;
    if (v18 > 2)
    {
      v19 = v14 >> 2;
    }

    if (v14 <= 0x1B)
    {
      v20 = 0;
LABEL_26:
      v37 = &a4->f32[v20];
      do
      {
        v38 = *v37++;
        *(v17 + 4 * v20) = vshl_n_s32(vmax_s32(vmin_s32(vcvt_s32_f32(vmul_n_f32(v38, a8)), 0x7F0000007FLL), 0x7F0000007FLL), 8uLL);
        v20 += 2;
      }

      while (v18 > v20);
      goto LABEL_28;
    }

    v30 = 0;
    v31 = ((v19 - 1) >> 1) + 1;
    v20 = 2 * (v31 & 0x7FFFFFFFFFFFFFFCLL);
    v32.i64[0] = 0x7F0000007FLL;
    v32.i64[1] = 0x7F0000007FLL;
    v33.i64[0] = 0x7F0000007FLL;
    v33.i64[1] = 0x7F0000007FLL;
    v34 = v31 & 0x7FFFFFFFFFFFFFFCLL;
    v35 = a4;
    do
    {
      v105 = vld2q_f32(v35);
      v35 += 8;
      v109.val[0] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v105.val[0], a8)), v32), v33), 8uLL);
      v109.val[1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v105.val[1], a8)), v32), v33), 8uLL);
      v36 = (v17 + 8 * v30);
      vst2q_f32(v36, v109);
      v30 += 4;
      v34 -= 4;
    }

    while (v34);
    if (v31 != (v31 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_26;
    }
  }

LABEL_28:
  if (v16 >= a7)
  {
    goto LABEL_55;
  }

  v39 = a7 - v16;
  v40 = v9 + v16;
  if (v39 >= v14)
  {
    v41 = v14;
  }

  else
  {
    v41 = v39;
  }

  v42 = v41 >> 2;
  if ((v41 & 4) != 0)
  {
    if (v41 > 0x1F)
    {
      v46 = 0;
      v45 = (v41 >> 2) & 0x3FFFFFF8;
      v47 = a4 + 1;
      v48.i64[0] = 0x7F0000007FLL;
      v48.i64[1] = 0x7F0000007FLL;
      v49.i64[0] = 0x7F0000007FLL;
      v49.i64[1] = 0x7F0000007FLL;
      v50 = v45;
      do
      {
        v51 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(*v47, a8)), v48), v49), 8uLL);
        v52 = &v40[4 * v46];
        *v52 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v47[-1], a8)), v48), v49), 8uLL);
        v52[1] = v51;
        v46 += 8;
        v47 += 2;
        v50 -= 8;
      }

      while (v50);
      if (v42 == v45)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v45 = 0;
    }

    do
    {
      v53 = (a4->f32[v45] * a8);
      if (v53 >= 0x7FFFFF)
      {
        v53 = 0x7FFFFF;
      }

      if (v53 <= -8388608)
      {
        v53 = -8388608;
      }

      *&v40[4 * v45++] = v53 << 8;
    }

    while (v42 > v45);
  }

  else
  {
    if (v41 < 4)
    {
      goto LABEL_55;
    }

    if (v42 <= 2)
    {
      v43 = 2;
    }

    else
    {
      v43 = v41 >> 2;
    }

    if (v41 <= 0x1B)
    {
      v44 = 0;
LABEL_53:
      v61 = &a4->f32[v44];
      do
      {
        v62 = *v61++;
        *&v40[4 * v44] = vshl_n_s32(vmax_s32(vmin_s32(vcvt_s32_f32(vmul_n_f32(v62, a8)), 0x7F0000007FLL), 0x7F0000007FLL), 8uLL);
        v44 += 2;
      }

      while (v42 > v44);
      goto LABEL_55;
    }

    v54 = 0;
    v55 = ((v43 - 1) >> 1) + 1;
    v44 = 2 * (v55 & 0x7FFFFFFFFFFFFFFCLL);
    v56.i64[0] = 0x7F0000007FLL;
    v56.i64[1] = 0x7F0000007FLL;
    v57.i64[0] = 0x7F0000007FLL;
    v57.i64[1] = 0x7F0000007FLL;
    v58 = v55 & 0x7FFFFFFFFFFFFFFCLL;
    v59 = a4;
    do
    {
      v106 = vld2q_f32(v59);
      v59 += 8;
      v110.val[0] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v106.val[0], a8)), v56), v57), 8uLL);
      v110.val[1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v106.val[1], a8)), v56), v57), 8uLL);
      v60 = &v40[8 * v54];
      vst2q_f32(v60, v110);
      v54 += 4;
      v58 -= 4;
    }

    while (v58);
    if (v55 != (v55 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_53;
    }
  }

LABEL_55:
  if (!v15)
  {
    goto LABEL_104;
  }

  v63 = v15 >> 2;
  v64 = a4 + v14;
  if ((v15 & 4) != 0)
  {
    if (v15 > 0x1F)
    {
      v68 = 0;
      v67 = (v15 >> 2) & 0x3FFFFFF8;
      v69 = (a5 + 16);
      v70.i64[0] = 0x7F0000007FLL;
      v70.i64[1] = 0x7F0000007FLL;
      v71.i64[0] = 0x7F0000007FLL;
      v71.i64[1] = 0x7F0000007FLL;
      v72 = v67;
      do
      {
        v73 = &v64[4 * v68];
        v74 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v73[1], a8)), v70), v71), 8uLL);
        v69[-1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(*v73, a8)), v70), v71), 8uLL);
        *v69 = v74;
        v68 += 8;
        v69 += 2;
        v72 -= 8;
      }

      while (v72);
      if (v63 == v67)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v67 = 0;
    }

    do
    {
      v75 = (*&v64[4 * v67] * a8);
      if (v75 >= 0x7FFFFF)
      {
        v75 = 0x7FFFFF;
      }

      if (v75 <= -8388608)
      {
        v75 = -8388608;
      }

      *(a5 + 4 * v67++) = v75 << 8;
    }

    while (v63 > v67);
  }

  else if (v15 >= 4)
  {
    v65 = 2;
    if (v63 > 2)
    {
      v65 = v15 >> 2;
    }

    if (v15 > 0x1B)
    {
      v76 = 0;
      v77 = ((v65 - 1) >> 1) + 1;
      v66 = 2 * (v77 & 0x7FFFFFFFFFFFFFFCLL);
      v78.i64[0] = 0x7F0000007FLL;
      v78.i64[1] = 0x7F0000007FLL;
      v79.i64[0] = 0x7F0000007FLL;
      v79.i64[1] = 0x7F0000007FLL;
      v80 = v77 & 0x7FFFFFFFFFFFFFFCLL;
      v81 = a5;
      do
      {
        v82 = &v64[8 * v76];
        v107 = vld2q_f32(v82);
        v111.val[0] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v107.val[0], a8)), v78), v79), 8uLL);
        v111.val[1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v107.val[1], a8)), v78), v79), 8uLL);
        vst2q_f32(v81, v111);
        v81 += 8;
        v76 += 4;
        v80 -= 4;
      }

      while (v80);
      if (v77 == (v77 & 0x7FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_78;
      }
    }

    else
    {
      v66 = 0;
    }

    v83 = (a5 + 4 * v66);
    do
    {
      *v83++ = vshl_n_s32(vmax_s32(vmin_s32(vcvt_s32_f32(vmul_n_f32(*&v64[4 * v66], a8)), 0x7F0000007FLL), 0x7F0000007FLL), 8uLL);
      v66 += 2;
    }

    while (v63 > v66);
  }

LABEL_78:
  if (v15 >= a7)
  {
    v84 = a7;
  }

  else
  {
    v84 = v15;
  }

  v85 = v84 >> 2;
  if ((v84 & 4) != 0)
  {
    if (v84 > 0x1F)
    {
      v89 = 0;
      v88 = (v84 >> 2) & 0x3FFFFFF8;
      v90 = (v8 + a5 + 16);
      v91.i64[0] = 0x7F0000007FLL;
      v91.i64[1] = 0x7F0000007FLL;
      v92.i64[0] = 0x7F0000007FLL;
      v92.i64[1] = 0x7F0000007FLL;
      v93 = v88;
      do
      {
        v94 = &v64[4 * v89];
        v95 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v94[1], a8)), v91), v92), 8uLL);
        v90[-1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(*v94, a8)), v91), v92), 8uLL);
        *v90 = v95;
        v89 += 8;
        v90 += 2;
        v93 -= 8;
      }

      while (v93);
      if (v85 == v88)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v88 = 0;
    }

    do
    {
      v96 = (*&v64[4 * v88] * a8);
      if (v96 >= 0x7FFFFF)
      {
        v96 = 0x7FFFFF;
      }

      if (v96 <= -8388608)
      {
        v96 = -8388608;
      }

      LODWORD(v9[v88++]) = v96 << 8;
    }

    while (v85 > v88);
  }

  else if (v84 >= 4)
  {
    if (v85 <= 2)
    {
      v86 = 2;
    }

    else
    {
      v86 = v84 >> 2;
    }

    if (v84 > 0x1B)
    {
      v97 = 0;
      v98 = ((v86 - 1) >> 1) + 1;
      v87 = 2 * (v98 & 0x7FFFFFFFFFFFFFFCLL);
      v99.i64[0] = 0x7F0000007FLL;
      v99.i64[1] = 0x7F0000007FLL;
      v100.i64[0] = 0x7F0000007FLL;
      v100.i64[1] = 0x7F0000007FLL;
      v101 = v98 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v102 = &v64[8 * v97];
        v108 = vld2q_f32(v102);
        v112.val[0] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v108.val[0], a8)), v99), v100), 8uLL);
        v112.val[1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v108.val[1], a8)), v99), v100), 8uLL);
        vst2q_f32(v9, v112);
        v9 += 8;
        v97 += 4;
        v101 -= 4;
      }

      while (v101);
      if (v98 == (v98 & 0x7FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_104;
      }
    }

    else
    {
      v87 = 0;
    }

    v103 = (a5 + v8 + 4 * v87);
    do
    {
      *v103++ = vshl_n_s32(vmax_s32(vmin_s32(vcvt_s32_f32(vmul_n_f32(*&v64[4 * v87], a8)), 0x7F0000007FLL), 0x7F0000007FLL), 8uLL);
      v87 += 2;
    }

    while (v85 > v87);
  }

LABEL_104:
  if (v11 < a6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v12;
  }
}

void *AUARealtimeWriteMixBlock(uint64_t a1, int a2, int a3, int a4, unint64_t a5, int a6)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x5010000000;
  v16 = 0u;
  v13[3] = &unk_100135581;
  v13[4] = a1;
  v14 = a2;
  v15 = a3;
  LODWORD(v16) = a4;
  v17 = a5;
  DWORD2(v17) = (__exp10((a6 & 0x1F) / -20.0) * 8388607.0);
  if (a6 < 0)
  {
    v7 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v8 = sub_10000554C;
  }

  else
  {
    v7 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v8 = sub_1000055A4;
  }

  v7[2] = v8;
  v7[3] = &unk_100159D30;
  v7[4] = v13;
  v9 = objc_retainBlock(v7);
  _Block_object_dispose(v13, 8);

  return v9;
}

uint64_t sub_10000554C(uint64_t a1, unsigned int a2, uint64_t a3, float32x4_t *a4)
{
  if (a2 && a3 && a4)
  {
    v4 = *(*(a1 + 32) + 8);
    AUARealtimeCopyToRingBufferManualWrap515C(*(v4 + 40), *(a3 + 144), a2, a4, *(v4 + 64), *(v4 + 44), *(v4 + 48), *(v4 + 72));
  }

  return 0;
}

uint64_t sub_1000055A4(uint64_t a1, int a2, uint64_t a3, char *__src)
{
  if (a2 && a3 && __src)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 64);
    v7 = *(v5 + 40);
    v8 = *(v5 + 44);
    v9 = *(v5 + 48);
    v10 = &v6[(v8 * v7)];
    v11 = *(a3 + 144) % v8;
    v12 = v11 + a2 >= v8;
    v13 = v11 + a2 - v8;
    if (v11 + a2 <= v8)
    {
      v14 = a2;
    }

    else
    {
      v14 = v8 - v11;
    }

    if (!v12)
    {
      v13 = 0;
    }

    v15 = v14 * v7;
    v16 = (v13 * v7);
    if (v14 * v7)
    {
      v17 = (v7 * v11);
      memcpy(&v6[v17], __src, (v14 * v7));
      if (v17 < v9)
      {
        if (v9 - v17 >= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v9 - v17;
        }

        memcpy(&v10[v17], __src, v18);
      }
    }

    if (v16)
    {
      v19 = &__src[v15];
      memcpy(v6, v19, v16);
      if (v16 >= v9)
      {
        v20 = v9;
      }

      else
      {
        v20 = v16;
      }

      memcpy(v10, v19, v20);
    }
  }

  return 0;
}

id sub_100005764(uint64_t a1, uint64_t a2)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = AUAPluginTrampoline;
  return objc_msgSendSuper2(&v3, "halInitializeWithPluginHost:", a2);
}

id sub_100005814(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LogID(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v8 = [a1 ioDataWithCapacity:a2 error:&v19];
  if (v8)
  {
    v9 = v19;
    return v8;
  }

  v10 = v19;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 code];

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v19 = 0xD00000000000001BLL;
  v20 = 0x800000010012A9B0;
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10011DE90;
  *(v13 + 56) = &type metadata for Int32;
  *(v13 + 64) = &protocol witness table for Int32;
  *(v13 + 32) = v12;
  v14._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v14);

  v11 = v19;
  v12 = v20;
  if (qword_100173CB8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v15 = sub_10000A1BC(v4, qword_1001794F0);
  sub_10000A2A4(v15, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v16, qword_100179508);
  sub_100039F58(4, v7, v11, v12);

  sub_10000C9D0(v7);
  swift_willThrow();
  return v8;
}

uint64_t sub_100005AD4()
{

  return swift_deallocClassInstance();
}

void sub_100005C58(id a1, char *a2, void *a3)
{
  v5 = v4;
  v92 = a3;
  v89 = a2;
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = "Unable to allocate ioData: ";
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  v93 = v3;
  v12 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v13 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v13, qword_100179508);
    sub_100039AA0(4, a1 + v12, 0xD00000000000001CLL, (v11 | 0x8000000000000000));
    type metadata accessor for AUAInputStream(0);
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      sub_10000CA2C();
      swift_allocError();
      *v39 = 1;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0xE000000000000000;
      swift_willThrow();

      goto LABEL_41;
    }

    v15 = v14;
    *(v93 + 184) = v14;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      sub_10000CA2C();
      swift_allocError();
      *v40 = 1;
      *(v40 + 8) = 0;
      *(v40 + 16) = 0xE000000000000000;
      swift_willThrow();

      goto LABEL_41;
    }

    v17 = v93;
    *(v93 + 176) = Strong;
    v18 = Strong;
    v19 = a1;
    v20 = v18;
    *(v17 + 168) = AUAAudioDevice.streamingSampleManager.getter();
    v21 = v89;
    v22 = *&v89[OBJC_IVAR___AUAStreamFormat_altSetting];
    if (!v22)
    {
      sub_10000CA2C();
      swift_allocError();
      *v41 = 83;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0xE000000000000000;
      swift_willThrow();

      v42 = v92;
      goto LABEL_39;
    }

    v76 = v19;
    v78 = v20;
    v23 = v93;
    v24 = *(v93 + 176);

    v25 = [v24 timestampPeriod];
    v26 = *(v22 + 104);
    v23[11] = v26[14];
    v23[14] = v26[13];
    v23[13] = v26[12];
    v23[8] = v25;
    v27 = [v21 channelsPerFrame];
    v77 = v22;
    v28 = *(v22 + 40);
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (is_mul_ok(v27, v28))
    {
      v29 = v93;
      *(v93 + 96) = v27 * v28;
      *(v29 + 72) = 0;
      *(v29 + 80) = 0;
      *(v29 + 128) = 0;
      *(v29 + 136) = 0;
      *(v29 + 120) = 0;
      *(v29 + 144) = sub_1000B4B2C() & 1;
      v22 = OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;
      sub_10000A2A4(v15 + OBJC_IVAR___AUAStream_logID, v29 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID);
      if (qword_100173CF8 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_49;
    }

    __break(1u);
LABEL_49:
    swift_once();
LABEL_8:
    v30 = *(qword_100179640 + 16);
    if (v30)
    {
      v31 = v25;
      v32 = v30;
      v33 = String._bridgeToObjectiveC()();
      v34 = [v32 BOOLForKey:v33];

      if (v34)
      {
        v94 = 0;
        v95 = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        v94 = 0xD00000000000001DLL;
        v95 = 0x800000010012A9F0;
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_10011DE90;
        *(v35 + 56) = &type metadata for Int32;
        *(v35 + 64) = &protocol witness table for Int32;
        v88 = 127;
        *(v35 + 32) = 127;
        v36._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v36);

        v37 = v94;
        v38 = v95;
        sub_10000A2A4(v93 + v22, v10);
        sub_100039AA0(4, v10, v37, v38);

        sub_10000C9D0(v10);
      }

      else
      {
        v88 = 0;
      }

      v25 = v31;
    }

    else
    {
      v88 = 0;
    }

    v43 = *(v93 + 96);
    v44 = v78;
    if (!is_mul_ok(v25, v43))
    {
      break;
    }

    if (((v25 * v43) & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v45 = [objc_allocWithZone(NSMutableData) initWithLength:v25 * v43];
    a1 = v92;
    if (!v45)
    {
      goto LABEL_56;
    }

    v46 = v93;
    *(v93 + 48) = v45;
    *(v46 + 56) = [v45 mutableBytes];
    v47 = [objc_allocWithZone(NSMutableData) initWithLength:2560];
    if (!v47)
    {
      goto LABEL_57;
    }

    v48 = v93;
    *(v93 + 16) = v47;
    v87 = [v47 mutableBytes];
    *(v48 + 24) = v87;
    *(v48 + 32) = 32;
    v49 = v77;
    v50 = *(v77 + 104);
    v51 = v50[13];
    v10 = v50[14];
    v52 = v50[12];
    v53 = OBJC_IVAR___AUAAudioDevice_lowestLatencyEnabled;
    swift_beginAccess();
    if (v51 >= 9)
    {
      sub_10000CA2C();
      swift_allocError();
      *v54 = 105;
      *(v54 + 8) = 0;
      *(v54 + 16) = 0xE000000000000000;
      swift_willThrow();

      v22 = v49;
LABEL_38:
      v71 = v93;

      v42 = *(v71 + 48);
LABEL_39:

      v72 = v93;
      v73 = *(v93 + 168);

      if (v22)
      {
        sub_10000C9D0(v93 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID);
      }

LABEL_41:
      type metadata accessor for AUAInputTransferManager(0);
      v74 = *(*v93 + 48);
      v75 = *(*v93 + 52);
      swift_deallocPartialClassInstance();
      return;
    }

    if (v52 >> 61)
    {
      goto LABEL_52;
    }

    if (!v51)
    {
      goto LABEL_53;
    }

    v55 = v44[v53];
    v96 = _swiftEmptyArrayStorage;
    v56 = 8 * v52 / v51;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (!is_mul_ok(v56, v10))
    {
      goto LABEL_54;
    }

    v11 = v56 * v10;
    if (((v56 * v10) & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    v12 = 0;
    v57 = 0;
    v85 = 28 * v56;
    v86 = !is_mul_ok(v56, 0x1CuLL);
    v58 = &kUSBHostMessageInterruptIsochFrame;
    if (!v55)
    {
      v58 = &kUSBHostMessageDefaultInterrupt;
    }

    v81 = *v58;
    v80 = -1;
    v79 = 0x7FFFFFFF;
    v83 = HIDWORD(v11);
    v84 = (v56 | v10) >> 32;
    v82 = v56 * v10;
    while (1)
    {
      v59 = sub_100005814(a1, v11);
      if (v5)
      {

        v22 = v77;

        goto LABEL_38;
      }

      if (v86)
      {
        break;
      }

      if (v85 < 0)
      {
        goto LABEL_43;
      }

      v60 = v59;
      v61 = sub_100005814(a1, v85);
      if (v84)
      {
        goto LABEL_44;
      }

      if (v83)
      {
        goto LABEL_45;
      }

      v62 = v61;
      v63 = v87;
      v90 = &v87[v57];
      v91 = 0;
      v64 = [v60 mutableBytes];
      v65 = [v62 mutableBytes];
      v66 = &v63[v57];
      v5 = v91;
      v67 = v81;
      v11 = v82;
      *v66 = v56;
      *(v66 + 1) = v10;
      *(v66 + 1) = v67;
      LODWORD(v67) = v88;
      *(v66 + 4) = v11;
      *(v66 + 5) = v67;
      *(v66 + 3) = v64;
      *(v66 + 4) = v65;
      v68 = v80;
      *(v66 + 5) = 0;
      *(v66 + 6) = v68;
      *(v66 + 7) = 0;
      *(v66 + 8) = v79;
      *(v66 + 9) = 0;
      type metadata accessor for AUATransferManagerInputTransferBlock();
      v69 = swift_allocObject();
      *(v69 + 48) = 0;
      *(v69 + 56) = 0;
      *(v69 + 64) = 0;
      *(v69 + 72) = 1;
      *(v69 + 16) = v12;
      *(v69 + 24) = v90;
      *(v69 + 32) = v60;
      *(v69 + 40) = v62;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v70 = v96[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a1 = v92;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v57 += 80;
      v12 = (v12 + 1);
      if (v57 == 2560)
      {

        *(v93 + 40) = v96;
        return;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_10000658C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 168);

  v3 = v0 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;

  return sub_10000C9D0(v3);
}

uint64_t sub_1000065EC()
{
  v1 = type metadata accessor for LogID(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;
  sub_10000A2A4(v0 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID, v4);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v6, qword_100179508);
  sub_100039AA0(4, v4, 0xD00000000000001ELL, 0x800000010012AE60);
  sub_10000C9D0(v4);

  v7 = *(v0 + 40);

  v8 = *(v0 + 168);

  sub_10000C9D0(v0 + v5);
  return v0;
}

uint64_t sub_100006748(uint64_t a1)
{
  _StringGuts.grow(_:)(27);

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v5, qword_100179508);
  sub_100039AA0(4, v1 + v4, 0xD000000000000019, 0x800000010012AE40);

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_100006864@<X0>(void *a1@<X8>)
{
  v5 = v1;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v5[15];
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (*(v2 + 48))
    {
      goto LABEL_24;
    }

LABEL_5:
    if (IsAUARTInputTransferBlockOkToEnqueue(*(v2 + 24)) || v5[17] <= 0xFuLL)
    {
      v14 = *(v2 + 24);
      v15 = *(v14 + 68);
      v57 = v7;
      if (v15)
      {
        v16 = *(v14 + 48);
        v59 = 0;
        v60 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v59 = 0xD000000000000015;
        v60 = 0x800000010012ADF0;
        v58 = v16;
        v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v17);

        sub_100038CD8("AUAInputTransferManager_inputResync", 35, 2, v59, v60, v5 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID);

        v14 = *(v2 + 24);
      }

      PrepareAUARTInputTransferBlock(v14, v5[9]);
      v59 = 0;
      v60 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v18._countAndFlagsBits = 0x7551736B636F6C62;
      v18._object = 0xED00002064657565;
      String.append(_:)(v18);
      v58 = v5[17];
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v20._countAndFlagsBits = 47;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v58 = 32;
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v22._object = 0x800000010012AAA0;
      v22._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v22);
      v58 = v5[10];
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      v24._object = 0x800000010012AAC0;
      v24._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v24);
      v58 = v5[9];
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 0x66736E617274202CLL;
      v26._object = 0xED00002044497265;
      String.append(_:)(v26);
      v58 = *(v2 + 16);
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v4 = v59;
      v3 = v60;
      v7 = OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;
      if (qword_100173CB0 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }

LABEL_24:

    v48 = 0;
    v51 = 0;
    v50 = 0;
    v53 = 0;
    v52 = 0;
    goto LABEL_25;
  }

  v13 = v5[5];
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (v12 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v13 + 8 * v12 + 32);

    if (*(v2 + 48))
    {
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_10:
  v28 = (v5 + v7);
  if (byte_1001794E8 != 1)
  {
    v56 = v4;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v33, qword_100179508);
    v34 = *(v33 + 24);
    v35 = type metadata accessor for LogID(0);
    v36 = v57;
    (*(v8 + 16))(v11, v28 + *(v35 + 20), v57);

    v28 = OSSignposter.logHandle.getter();
    v4 = static os_signpost_type_t.event.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      HIDWORD(v55) = v4;
      v4 = v38;
      v59 = v38;
      *v37 = 136446210;
      v39 = sub_100035760(v56, v3, &v59);

      *(v37 + 4) = v39;
      v40 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, BYTE4(v55), v40, "AUAInputTransferManager_nextBlockToQueue", "%{public}s", v37, 0xCu);
      sub_10000CE78(v4);

      (*(v8 + 8))(v11, v57);
    }

    else
    {

      (*(v8 + 8))(v11, v36);
    }

    goto LABEL_18;
  }

  if (qword_100173CC0 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v29 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v29, qword_100179508);
    v59 = StaticString.description.getter();
    v60 = v30;
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    v32._countAndFlagsBits = v4;
    v32._object = v3;
    String.append(_:)(v32);

    sub_100039AA0(4, v28, v59, v60);

LABEL_18:
    v41 = v5[9];
    v42 = __CFADD__(v41, 8);
    v43 = v41 + 8;
    if (v42)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v5[9] = v43;
    v44 = v5[15];
    v42 = __CFADD__(v44, 1);
    v45 = v44 + 1;
    if (v42)
    {
      goto LABEL_29;
    }

    v5[15] = v45 & 0x1F;
    v46 = v5[17];
    v42 = __CFADD__(v46, 1);
    v47 = v46 + 1;
    if (!v42)
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v5[17] = v47;
  *(v2 + 48) = 1;
  v48 = *(v2 + 16);
  v49 = *(v2 + 24);
  v50 = *v49;
  v52 = *(v49 + 4);
  v51 = *(v49 + 5);
  v53 = *(v2 + 32);

LABEL_25:
  *a1 = v48;
  a1[1] = v51;
  a1[2] = v50;
  a1[3] = v53;
  a1[4] = v52;
  return result;
}

unint64_t sub_100006F18(uint64_t a1, int a2)
{
  result = v3[16];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = a2;
  v6 = v3[5];
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if (result >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v6 + 8 * result + 32);

LABEL_5:
  result = *(v7 + 24);
  if (*(result + 32) != a1)
  {

    return 0;
  }

  v8 = v3[17];
  v9 = v8 != 0;
  v10 = v8 - 1;
  if (!v9)
  {
    goto LABEL_16;
  }

  v3[17] = v10;
  if (v2 != -536870165)
  {
    sub_100007048();
  }

  *(v7 + 48) = 0;

  v11 = v3[16];
  v9 = __CFADD__(v11, 1);
  v12 = v11 + 1;
  if (!v9)
  {
    v3[16] = v12 & 0x1F;
    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10000857C()
{

  return swift_deallocClassInstance();
}

void sub_1000085BC(void *a1, char *a2, void *a3)
{
  v5 = v3;
  v64 = a2;
  v8 = type metadata accessor for LogID(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v12, qword_100179508);
  sub_100039AA0(4, a1 + v11, 0xD00000000000001DLL, 0x800000010012AA10);
  type metadata accessor for AUAOutputStream(0);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    sub_10000CA2C();
    swift_allocError();
    *v35 = 1;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0xE000000000000000;
    swift_willThrow();

LABEL_26:
    type metadata accessor for AUAOutputTransferManager(0);
    v49 = *(*v5 + 48);
    v50 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
    return;
  }

  v14 = v13;
  v61 = a3;
  *(v5 + 136) = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v36 = 1;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0xE000000000000000;
    swift_willThrow();

    v37 = v61;
LABEL_18:

    goto LABEL_26;
  }

  v16 = Strong;
  v59 = v4;
  *(v5 + 128) = Strong;
  v17 = v64;
  v18 = *&v64[OBJC_IVAR___AUAStreamFormat_altSetting];
  if (!v18)
  {
    sub_10000CA2C();
    swift_allocError();
    *v41 = 83;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0xE000000000000000;
    swift_willThrow();

    v37 = *(v5 + 128);
    goto LABEL_18;
  }

  v57 = a1;
  v19 = v16;

  v20 = [v19 timestampPeriod];
  v21 = *(v18 + 104);
  *(v5 + 64) = v21[14];
  *(v5 + 88) = v21[13];
  *(v5 + 80) = v21[12];
  v58 = v20;
  *(v5 + 40) = v20;
  v22 = [v17 channelsPerFrame];
  v23 = *(v18 + 40);
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v56 = v19;
  if (!is_mul_ok(v22, v23))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v5 + 72) = v22 * v23;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 96) = 0;
  v17 = OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID;
  sub_10000A2A4(v14 + OBJC_IVAR___AUAStream_logID, v5 + OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID);
  v16 = v61;
  if (qword_100173CF8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v24 = *(qword_100179640 + 16);
  if (v24 && (v25 = v24, v26 = String._bridgeToObjectiveC()(), v27 = [v25 BOOLForKey:v26], v25, v26, v16 = v61, (v27 & 1) != 0))
  {
    *(v5 + 120) = 63;
    v62 = 0;
    v63 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v62 = 0xD00000000000001ELL;
    v63 = 0x800000010012AA30;
    v28 = *(v5 + 120);
    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10011DE90;
    *(v29 + 56) = &type metadata for Int32;
    *(v29 + 64) = &protocol witness table for Int32;
    *(v29 + 32) = v28;
    v30._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v30);

    v31 = v62;
    v32 = v63;
    v33 = v17 + v5;
    v34 = v60;
    sub_10000A2A4(v33, v60);
    sub_100039AA0(4, v34, v31, v32);

    sub_10000C9D0(v34);
  }

  else
  {
    *(v5 + 120) = 0;
  }

  v38 = *(v18 + 104);
  v39 = *(v38 + 104);
  if (v39 >= 9)
  {
    sub_10000CA2C();
    swift_allocError();
    *v40 = 105;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_25:

    sub_10000C9D0(v5 + OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID);
    goto LABEL_26;
  }

  v42 = *(v38 + 96);
  if (v42 >> 61)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (!v39)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v43 = *(v5 + 72);
  if (!is_mul_ok(v58, v43))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v44 = v58 * v43;
  v45 = *(v5 + 64);
  v46 = v44 + v45;
  if (__CFADD__(v44, v45))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v46 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v47 = v59;
  v48 = sub_100005814(v16, v44 + v45);
  if (v47)
  {
    goto LABEL_25;
  }

  *(v5 + 24) = v48;
  v51 = 8 * v42 / v39;
  v52 = [v48 mutableBytes];
  *(v5 + 32) = v52;
  memset(v52, *(v5 + 120), v46);
  if (!HIDWORD(v51))
  {
    v53 = *(v5 + 24);
    v54 = v61;
    v55 = sub_10000CCE0(v61, v53, v51);

    *(v5 + 16) = v55;
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_100008C6C()
{
  v1 = *(v0 + 16);

  v2 = v0 + OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID;

  return sub_10000C9D0(v2);
}

uint64_t sub_100008CBC()
{
  v1 = type metadata accessor for LogID(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID;
  sub_10000A2A4(v0 + OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID, v4);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v6, qword_100179508);
  sub_100039AA0(4, v4, 0xD00000000000001FLL, 0x800000010012AB00);
  sub_10000C9D0(v4);
  v7 = *(v0 + 16);

  sub_10000C9D0(v0 + v5);
  return v0;
}

uint64_t sub_100008E00(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void *sub_100008E5C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  if (!is_mul_ok(v1, v2))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v1 * v2;
  v4 = *(v0 + 64);
  v5 = v3 + v4;
  if (__CFADD__(v3, v4))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    return memset(*(v0 + 32), *(v0 + 120), v5);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100008EA4(uint64_t a1)
{
  _StringGuts.grow(_:)(28);

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v5, qword_100179508);
  sub_100039AA0(4, v1 + v4, 0xD00000000000001ALL, 0x800000010012AAE0);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_100008FC0@<X0>(void *a1@<X8>)
{
  v7 = v1;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9);
  if (*(v1 + 14) <= 7uLL)
  {
    v15 = *(v1 + 12);
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_69;
    }

    v4 = *(v1 + 2);
    v6 = v4 & 0xC000000000000001;
    v84 = &v81[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v85 = v13;
    v83 = v14;
    if ((v4 & 0xC000000000000001) != 0)
    {
      goto LABEL_70;
    }

    if (v15 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    else
    {
      v16 = *(v4 + 8 * v15 + 32);

      {
        v18 = *(i + 32);

        v20 = *(*(v7 + 17) + OBJC_IVAR___AUAOutputStream_sampleManager);
        v21 = *(v20 + 96);
        v22 = v21 == 1;
        if (v21 == 1)
        {
          v3 = v81;
          v5 = *(v20 + 88);
          __chkstk_darwin(v19);
          *&v81[-16] = sub_10000CEC4;
          *&v81[-8] = v20;

          os_unfair_lock_lock((v5 + 16));
          v2 = 0;
          sub_10000CEE0(&v87);
          os_unfair_lock_unlock((v5 + 16));

          v23 = v87;

          v22 = v23 == v18;
          if (v23 < v18)
          {
            goto LABEL_8;
          }

          v29 = *(v7 + 12);
          if ((v29 & 0x8000000000000000) != 0)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }
        }

        else
        {
          v2 = 0;
          v29 = *(v7 + 12);
          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }
        }

        if (v6)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v29 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_79;
          }

          v4 = *(v4 + 8 * v29 + 32);
        }

        *(v4 + 64) = *(v7 + 6);
        v6 = *(v7 + 7);
        *(v4 + 80) = 0;
        *(v4 + 88) = 0;
        *(v4 + 72) = v6;
        *(v4 + 96) = 1;
        v5 = *(*(v7 + 17) + OBJC_IVAR___AUAOutputStream_sampleManager);
        v30 = *(v4 + 32);

        v1 = sub_10005BDBC(v30);

        v31 = *(v7 + 5);
        if (!v31)
        {
          break;
        }

        v32 = *(v7 + 10);
        if (!v32)
        {
          goto LABEL_73;
        }

        if (v32 > v30)
        {

          v3 = 0;
          goto LABEL_18;
        }

        v3 = 0;
        v47 = 0;
        v48 = 0;
        v49 = v6 % v31;
        v50 = v30 / v32;
        while (v48 < v50)
        {
          v51 = 0;
          v52 = v48 + 1;
          v53 = *(v7 + 9);
          v54 = *(v4 + 48) + 28 * v47 + 12;
          v55 = v32;
          do
          {
            if (v47 >= *(v1 + 2))
            {
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v56 = *&v1[8 * v47 + 32];
            if (!is_mul_ok(v56, v53))
            {
              goto LABEL_57;
            }

            v57 = v6 % v31;
            if (!is_mul_ok(v6 % v31, v53))
            {
              goto LABEL_58;
            }

            *(v54 - 12) = 0;
            if ((v56 * v53) >> 32)
            {
              goto LABEL_59;
            }

            *(v54 - 8) = v56 * v53;
            if ((v57 * v53) >> 32)
            {
              goto LABEL_60;
            }

            *(v54 - 4) = v57 * v53;
            *v54 = 0;
            *(v54 + 4) = 3758117128;
            *(v54 + 12) = 0;
            if (*(v4 + 96) == 1)
            {
              v58 = __CFADD__(v57, v56);
              v59 = v57 + v56;
              if (v58)
              {
                goto LABEL_63;
              }

              if (v59 >= v31)
              {
                v60 = *(v7 + 6);
                v58 = __CFADD__(v60, v48);
                v61 = v60 + v48;
                if (v58)
                {
                  goto LABEL_64;
                }

                if (v31 < v49)
                {
                  goto LABEL_65;
                }

                *(v4 + 80) = v61;
                *(v4 + 88) = v31 - v49;
                *(v4 + 96) = 0;
              }
            }

            v58 = __CFADD__(v6, v56);
            v6 += v56;
            if (v58)
            {
              goto LABEL_61;
            }

            v58 = __CFADD__(v51, v56);
            v51 += v56;
            if (v58)
            {
              goto LABEL_62;
            }

            ++v47;
            v54 += 28;
            --v55;
          }

          while (v55);
          v58 = __CFADD__(v49, v51);
          v49 += v51;
          if (v58)
          {
            goto LABEL_67;
          }

          v58 = __CFADD__(v3, v51);
          v3 += v51;
          if (v58)
          {
            goto LABEL_68;
          }

          ++v48;
          if (v52 == v50)
          {

LABEL_18:
            v87 = 0;
            v88 = 0xE000000000000000;
            _StringGuts.grow(_:)(75);
            v33._countAndFlagsBits = 0x7551736B636F6C62;
            v33._object = 0xED00002064657565;
            String.append(_:)(v33);
            v86 = *(v7 + 14);
            v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v34);

            v35._countAndFlagsBits = 47;
            v35._object = 0xE100000000000000;
            String.append(_:)(v35);
            v86 = 8;
            v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v36);

            v37._object = 0x800000010012AAA0;
            v37._countAndFlagsBits = 0xD000000000000013;
            String.append(_:)(v37);
            v86 = *(v7 + 7);
            v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v38);

            v39._object = 0x800000010012AAC0;
            v39._countAndFlagsBits = 0xD000000000000013;
            String.append(_:)(v39);
            v86 = *(v7 + 6);
            v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v40);

            v41._countAndFlagsBits = 0x66736E617274202CLL;
            v41._object = 0xED00002044497265;
            String.append(_:)(v41);
            v86 = *(v4 + 16);
            v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v42);

            v6 = v87;
            v2 = v88;
            v1 = OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID;
            if (qword_100173CB0 == -1)
            {
LABEL_19:
              v5 = &v1[v7];
              v22 = qword_100173CC0 == -1;
              if (byte_1001794E8)
              {
                if (qword_100173CC0 != -1)
                {
                  goto LABEL_80;
                }

                goto LABEL_21;
              }

LABEL_45:
              if (!v22)
              {
                swift_once();
              }

              v62 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v62, qword_100179508);
              v63 = *(v62 + 24);
              v64 = type metadata accessor for LogID(0);
              v65 = v83;
              (*(v83 + 16))(v84, v5 + *(v64 + 20), v85);

              v5 = OSSignposter.logHandle.getter();
              v66 = static os_signpost_type_t.event.getter();

              if (OS_os_log.signpostsEnabled.getter())
              {
                v67 = v6;
                v6 = swift_slowAlloc();
                v68 = swift_slowAlloc();
                v82 = v66;
                v69 = v68;
                v87 = v68;
                *v6 = 136446210;
                v70 = sub_100035760(v67, v2, &v87);

                *(v6 + 4) = v70;
                v71 = v84;
                v72 = OSSignpostID.rawValue.getter();
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v82, v72, "AUAOutputTransferManager_nextBlockToQueue", "%{public}s", v6, 0xCu);
                sub_10000CE78(v69);

                (*(v65 + 8))(v71, v85);
              }

              else
              {

                (*(v65 + 8))(v84, v85);
              }

              while (2)
              {
                v73 = *(v7 + 6);
                v58 = __CFADD__(v73, 8);
                v74 = v73 + 8;
                if (v58)
                {
                  __break(1u);
                }

                else
                {
                  *(v7 + 6) = v74;
                  v75 = *(v7 + 12);
                  v58 = __CFADD__(v75, 1);
                  v76 = v75 + 1;
                  if (!v58)
                  {
                    *(v7 + 12) = v76 & 7;
                    v77 = *(v7 + 7);
                    v58 = __CFADD__(v77, v3);
                    v78 = &v3[v77];
                    if (!v58)
                    {
                      *(v7 + 7) = v78;
                      v79 = *(v7 + 14);
                      v58 = __CFADD__(v79, 1);
                      v80 = v79 + 1;
                      if (!v58)
                      {
                        *(v7 + 14) = v80;
                        *(v4 + 56) = 1;
                        v24 = *(v4 + 16);
                        v25 = *(v4 + 64);
                        v26 = *(v4 + 32);
                        v28 = *(v4 + 48);
                        v27 = *(v4 + 24);

                        goto LABEL_55;
                      }

                      goto LABEL_78;
                    }

LABEL_77:
                    __break(1u);
LABEL_78:
                    __break(1u);
LABEL_79:
                    __break(1u);
LABEL_80:
                    swift_once();
LABEL_21:
                    v43 = type metadata accessor for AUALog(0);
                    sub_10000A1BC(v43, qword_100179508);
                    v87 = StaticString.description.getter();
                    v88 = v44;
                    v45._countAndFlagsBits = 32;
                    v45._object = 0xE100000000000000;
                    String.append(_:)(v45);
                    v46._countAndFlagsBits = v6;
                    v46._object = v2;
                    String.append(_:)(v46);

                    v2 = v88;
                    sub_100039AA0(4, v5, v87, v88);

                    continue;
                  }
                }

                break;
              }

              __break(1u);
              goto LABEL_77;
            }

LABEL_74:
            swift_once();
            goto LABEL_19;
          }
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        ;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_8:
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
LABEL_55:
  *a1 = v24;
  a1[1] = v25;
  a1[2] = v26;
  a1[3] = v27;
  a1[4] = v28;
  return result;
}

unint64_t sub_10000988C(uint64_t a1, int a2)
{
  result = *(v2 + 104);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = a2;
  v6 = *(v2 + 16);
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_19:
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v7 = result;
    goto LABEL_5;
  }

  if (result >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(v6 + 8 * result + 32);

LABEL_5:
  v8 = *(v7 + 48);
  if (v8 != a1)
  {

    return 0;
  }

  v9 = *(v2 + 112);
  v10 = v9 != 0;
  v11 = v9 - 1;
  if (!v10)
  {
    goto LABEL_21;
  }

  *(v2 + 112) = v11;
  if (v3 == -536870165)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v7 + 80);
    v13 = *(v7 + 88);
    v14 = *(v7 + 96);
    v15 = *(v7 + 32);
    v16 = *(v2 + 120);
    v17 = [*(v7 + 24) mutableBytes];
    if (v15)
    {
      v18 = v17;
      v19 = (v8 + 8);
      do
      {
        memset(&v18[*v19], v16, *(v19 - 1));
        v19 += 7;
        --v15;
      }

      while (v15);
    }

    v20 = *(v2 + 136);
    if (*(v20 + OBJC_IVAR___AUAOutputStream_explicitFeedback))
    {
      v21 = *(v20 + OBJC_IVAR___AUAOutputStream_explicitFeedback);

      sub_1000B7860();
    }
  }

  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 1;
  *(v7 + 56) = 0;

  v22 = *(v2 + 104);
  v10 = __CFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v10)
  {
    *(v2 + 104) = v23 & 7;
    return v12;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_100009A38()
{
  v1 = v0;
  v2 = type metadata accessor for LogID(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(v0 + 128) + OBJC_IVAR___AUAAudioDevice_function);
  if (!*v6)
  {
    goto LABEL_16;
  }

  v7 = v6[1];
  v8 = *v6;
  ObjectType = swift_getObjectType();
  v10 = *(v7 + 16);
  swift_unknownObjectRetain();
  v11 = v10(ObjectType, v7);
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = *&v11[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (!v12 || !sub_1000AA808(0x21u, v12))
  {
    goto LABEL_15;
  }

  v13 = (*(v0 + 128) + OBJC_IVAR___AUAAudioDevice_function);
  if (!*v13)
  {
LABEL_26:

    v18 = 0x80000000;
    goto LABEL_17;
  }

  v14 = v13[1];
  v15 = *v13;
  v16 = swift_getObjectType();
  v17 = *(v14 + 112);
  swift_unknownObjectRetain();
  if (!v17(v16, v14) || (, ![*(v0 + 128) isHidden]))
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  if (qword_100173CF8 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v18 = -2147483636;
    v19 = *(qword_100179640 + 16);
    if (!v19)
    {
      goto LABEL_30;
    }

    v39 = qword_100179640;
    v20 = v19;
    v38 = "debugFillOutBuffers";
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 objectForKey:v21];

    if (!v22)
    {

      memset(v40, 0, sizeof(v40));
      sub_10000D040(v40, &unk_100174A20, &unk_100120170);
      goto LABEL_30;
    }

    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_10000D040(v40, &unk_100174A20, &unk_100120170);
    v23 = *(v39 + 16);
    if (!v23)
    {
      LOBYTE(v26) = 0;
LABEL_29:
      v18 = v26 & 0x1F | 0x80000000;
LABEL_30:

      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    v24 = v23;
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 integerForKey:v25];

    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (!HIDWORD(v26))
    {
      goto LABEL_29;
    }

    __break(1u);
LABEL_15:

LABEL_16:
    v18 = 0;
LABEL_17:
    *&v40[0] = 0;
    *(&v40[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    *&v40[0] = 0xD000000000000016;
    *(&v40[0] + 1) = 0x800000010012AA50;
    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10011DE90;
    *(v27 + 56) = &type metadata for UInt32;
    *(v27 + 64) = &protocol witness table for UInt32;
    *(v27 + 32) = v18;
    v28._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v28);

    v11 = *(&v40[0] + 1);
    v29 = *&v40[0];
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v30 = sub_10000A1BC(v2, qword_1001794F0);
    sub_10000A2A4(v30, v5);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v31, qword_100179508);
    sub_100039AA0(3, v5, v29, v11);

    sub_10000C9D0(v5);
    v32 = v1 + OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID + *(v2 + 20);
    v33 = OSSignpostID.rawValue.getter();
    v34 = v1[9];
    if (HIDWORD(v34))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v35 = v1[5];
    if (HIDWORD(v35))
    {
      goto LABEL_32;
    }

    v36 = v1[8];
    if (!HIDWORD(v36))
    {
      v37 = AUARealtimeWriteMixBlock(v33, v34, v35, v36, v1[4], v18);
      *(swift_allocObject() + 16) = v37;
      return;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  __break(1u);
}

uint64_t variable initialization expression of AUAAudioDevice.configChangedHandlers()
{
  sub_100001AB4(&qword_100173D08, &qword_10011DF88);
  v0 = swift_allocObject();
  sub_100001AB4(&qword_100173D10, &qword_10011DF90);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t variable initialization expression of ActiveClockSource.logID@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LogID(0);
  v3 = sub_10000A1BC(v2, qword_1001794F0);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v4, qword_100179508);
  return sub_100039740(0xD000000000000011, 0x800000010012A5D0, v3, a1);
}

uint64_t variable initialization expression of ActiveClockSelector.logID@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LogID(0);
  v3 = sub_10000A1BC(v2, qword_1001794F0);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v4, qword_100179508);
  return sub_100039740(0xD000000000000013, 0x800000010012A5F0, v3, a1);
}

uint64_t sub_10000A1BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t variable initialization expression of AUASampleManager.feedbackSamplesLock()
{
  sub_100001AB4(&qword_100173D10, &qword_10011DF90);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of AUASampleManager.logID@<X0>(uint64_t a1@<X8>)
{
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LogID(0);
  v3 = sub_10000A1BC(v2, qword_1001794F0);

  return sub_10000A2A4(v3, a1);
}

uint64_t sub_10000A2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double variable initialization expression of ControlInterface.interruptEP@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

uint64_t variable initialization expression of USBDevice.logID@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LogID(0);
  v3 = sub_10000A1BC(v2, qword_1001794F0);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v4, qword_100179508);
  return sub_100039740(0x6369766544425355, 0xE900000000000065, v3, a1);
}

BOOL sub_10000A464(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_10000A494@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_10000A4C0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_10000A5CC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_10000A5F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000A66C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000A6CC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10000D84C(a1);

  *a2 = v3;
  return result;
}

void *sub_10000A718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100001AB4(&qword_100174A80, &qword_1001201C8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_10001D194(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 4 * v10) = v4;
    v13 = (v3[7] + 24 * v10);
    *v13 = v5;
    v13[1] = v6;
    v13[2] = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 6);
    v5 = *(v12 - 2);
    v6 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_10001D194(v4);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10000A844(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_100174A70, &qword_1001201B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001AB4(&qword_100174A78, &qword_1001201C0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000D0B8(v10, v6, &qword_100174A70, &qword_1001201B8);
      v12 = *v6;
      result = sub_10001D1DC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for Logger();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_100174A40, &qword_100120188);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D0B8(v4, &v16, &qword_100174A48, &qword_100120190);
      v5 = v16;
      v6 = v17;
      result = sub_10001D11C(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&unk_1001749C0, &qword_100120118);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10001D11C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AC68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_1001749D8, &unk_100124AF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D0B8(v4, &v13, &qword_1001749E0, &qword_100120130);
      v5 = v13;
      v6 = v14;
      result = sub_10001D11C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000CE28(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AD98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_100174A18, &qword_100120168);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_10001D260(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AE90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_1001749E8, &qword_100120138);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001D11C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AF8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_100174A10, &qword_100120160);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10001D11C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000B0C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100001AB4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10001D11C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000B1C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_1001749F0, &unk_100120140);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D0B8(v4, v13, &qword_1001749F8, &qword_100121B40);
      result = sub_10001D2A4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000CE28(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000B300(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_100174A60, &qword_100124B10);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 8)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10001EF4C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 2 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000B450()
{
  result = type metadata accessor for LogID(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10000B59C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B5D4()
{
  result = type metadata accessor for LogID(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10000B6BC(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10000B6D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B6F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

__n128 sub_10000B734(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000B75C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10000B770(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B790(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10000B7D0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10000B7F8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

__n128 sub_10000B820(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_10000B834(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 23))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B854(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 23) = v3;
  return result;
}

uint64_t sub_10000B8A8(uint64_t a1, int a2)
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

uint64_t sub_10000B8C8(uint64_t result, int a2, int a3)
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

uint64_t sub_10000B918(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B938(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_10000B978(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioClassRange16bit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioClassRange16bit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

__n128 sub_10000B9EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

_DWORD *sub_10000BA0C(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t sub_10000BA20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 7))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BA40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 7) = v3;
  return result;
}

uint64_t sub_10000BAAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BACC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

__n128 sub_10000BBC0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_10000BBD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BBF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AUAZTSWrap(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s9AUASDCore10AUAZTSWrapVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AUAZTSWrap(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_10000BC9C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10000BCB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 80))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 24))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_10000BCFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_10000BD98(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BDB8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_10000BE30(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000BED0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

void *sub_10000BF20(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

__n128 sub_10000BF48(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_10000BF70(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_10000BFAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 22))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BFCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 22) = v3;
  return result;
}

__n128 sub_10000C010(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000C024(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C044(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 36) = v3;
  return result;
}

uint64_t sub_10000C0B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 14))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C0D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
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

  *(result + 14) = v3;
  return result;
}

__n128 sub_10000C128(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000C13C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C15C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ClockRateRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClockRateRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioClassRange32bit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioClassRange32bit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_10000C414(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 11))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C434(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
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

  *(result + 11) = v3;
  return result;
}

__n128 sub_10000C568(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_10000C57C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 19))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C59C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 19) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for USBDescriptorControl(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ADC4ClusterDescriptorSegment(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000C8A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C8C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_10000C9D0(uint64_t a1)
{
  v2 = type metadata accessor for LogID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000CA2C()
{
  result = qword_1001749D0;
  if (!qword_1001749D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001749D0);
  }

  return result;
}

void *sub_10000CA80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100001AB4(&qword_100174A68, &qword_1001201B0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 40);
  v7 = sub_10001D324(v4 | (v5 << 8));
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 48);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 2 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 16;
    v4 = *v11;
    v5 = v11[1];
    v17 = *(v11 + 1);

    v9 = sub_10001D324(v4 | (v5 << 8));
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10000CBAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_100174A50, &qword_100120198);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D0B8(v4, &v13, &qword_100174A58, &unk_1001201A0);
      v5 = v13;
      v6 = v14;
      result = sub_10001D11C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000D0A0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10000CCE0(void *a1, void *a2, unsigned int a3)
{
  result = specialized ContiguousArray.reserveCapacity(_:)();
  v8 = 28 * a3;
  if ((v8 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = v8;
    while (1)
    {
      v11 = sub_100005814(a1, v10);
      if (v3)
      {
        break;
      }

      v12 = v11;
      v13 = v9 + 1;
      type metadata accessor for AUATransferManagerOutputTransferBlock();
      v14 = swift_allocObject();
      *(v14 + 56) = 0;
      *(v14 + 64) = 0u;
      *(v14 + 80) = 0u;
      *(v14 + 96) = 1;
      *(v14 + 16) = v9;
      *(v14 + 32) = a3;
      *(v14 + 24) = a2;
      *(v14 + 40) = v12;
      v15 = a2;
      *(v14 + 48) = [v12 mutableBytes];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 = v13;
      if (v13 == 8)
      {
        return _swiftEmptyArrayStorage;
      }
    }
  }

  return result;
}

_OWORD *sub_10000CE28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000CE38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CE78(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_10000CEE0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_10000CF24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CF9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CFDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000CFF4()
{
  result = qword_100174A30;
  if (!qword_100174A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100174A30);
  }

  return result;
}

uint64_t sub_10000D040(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001AB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D0A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000D0B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001AB4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for AudioClassRange8bit(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for AudioClassRange8bit(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

__n128 sub_10000D22C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000D240(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D260(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_10000D3F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D410(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 34) = v3;
  return result;
}

__n128 sub_10000D468(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000D47C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10000D4C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000D534(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000D57C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000D5D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_10000D610(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D630(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 224) = v3;
  return result;
}

uint64_t sub_10000D72C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D84C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

__n128 sub_10000D8A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AudioClassRange32bit(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_10000D908(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (v4)
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *sub_10000D978(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_10000DA30(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (v4)
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t sub_10000DA9C(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

__n128 sub_10000DB5C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_10000DBAC(uint64_t a1, unint64_t *a2)
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

id sub_10000DCC0(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AUANullInputStream();
  result = objc_msgSendSuper2(&v10, "initWithDirection:withPlugin:", 1768845428, a1);
  if (result)
  {
    v4 = result;
    [v4 setStartingChannel:1];
    [v4 setTerminalType:1835623282];
    result = [objc_allocWithZone(ASDStreamFormat) initWithSampleRate:1 numChannels:1 commonPCMFormat:1 isInterleaved:48000.0];
    if (result)
    {
      v5 = result;
      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100120A20;
      *(v6 + 32) = v5;
      sub_10001EBA8(0, &qword_100174FA8, ASDStreamFormat_ptr);
      v7 = v5;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v4 setPhysicalFormats:isa];

      v9 = v7;
      [v4 setPhysicalFormat:v9];

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DE90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10000DED0()
{
  v1 = v0;
  v2 = type metadata accessor for LogID(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CB8 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v7 = sub_10000A1BC(v4, qword_1001794F0);
  sub_10000A2A4(v7, v6);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v8, qword_100179508);
  sub_100039AA0(4, v6, 0xD000000000000027, 0x800000010012BA20);
  sub_10000C9D0(v6);
  [*(v1 + 16) stop];

  return swift_deallocClassInstance();
}

uint64_t AUAAudioDevice.function.getter()
{
  v1 = *(v0 + OBJC_IVAR___AUAAudioDevice_function);
  v2 = *(v0 + OBJC_IVAR___AUAAudioDevice_function + 8);
  return swift_unknownObjectRetain();
}

uint64_t AUAAudioDevice.functionProtocol.getter()
{
  v1 = v0 + OBJC_IVAR___AUAAudioDevice_function;
  v2 = *(v0 + OBJC_IVAR___AUAAudioDevice_function);
  if (v2)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 40))(ObjectType, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v2 == 0) << 8);
}

uint64_t AUAAudioDevice.lowestLatencyEnabled.getter()
{
  v1 = OBJC_IVAR___AUAAudioDevice_lowestLatencyEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AUAAudioDevice.lowestLatencyEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___AUAAudioDevice_lowestLatencyEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t AUAAudioDevice.streamingSampleManager.getter()
{
  result = AUAAudioDevice.outputAUAStreams()();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  v4 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v4;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;

    if (sub_1000B817C() == 1)
    {
      v3 = *&v2[OBJC_IVAR___AUAOutputStream_sampleManager];

      return v3;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_10000E2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v289 = a5;
  v278 = a4;
  v282 = a3;
  v277 = type metadata accessor for Logger();
  v276 = *(v277 - 8);
  v9 = *(v276 + 64);
  __chkstk_darwin(v277);
  v280 = &v260 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = type metadata accessor for LogID(0);
  v11 = *(*(v271 - 8) + 64);
  v12 = __chkstk_darwin(v271);
  v261 = &v260 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v267 = &v260 - v15;
  v16 = __chkstk_darwin(v14);
  v268 = (&v260 - v17);
  v18 = __chkstk_darwin(v16);
  v20 = (&v260 - v19);
  __chkstk_darwin(v18);
  v275 = (&v260 - v21);
  *(v5 + OBJC_IVAR___AUAAudioDevice_extraLockDelayMS) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_lockDelayMS) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_feedbackDelayMS) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_startingUSBLockDelayFrame) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_curZTSSeed) = 0;
  v22 = OBJC_IVAR___AUAAudioDevice_timeCorrelaterSession;
  *(v5 + OBJC_IVAR___AUAAudioDevice_timeCorrelaterSession) = 0;
  v23 = OBJC_IVAR___AUAAudioDevice_timestampStream;
  *(v5 + OBJC_IVAR___AUAAudioDevice_timestampStream) = 0;
  v24 = OBJC_IVAR___AUAAudioDevice_configChangedHandlers;
  sub_100001AB4(&qword_100173D08, &qword_10011DF88);
  v25 = swift_allocObject();
  sub_100001AB4(&qword_100173D10, &qword_10011DF90);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v25 + 16) = v26;
  *(v25 + 24) = _swiftEmptyArrayStorage;
  v288 = v24;
  *&v24[v6] = v25;
  *(v6 + OBJC_IVAR___AUAAudioDevice_lastZTSMach) = 0;
  *(v6 + OBJC_IVAR___AUAAudioDevice_lastZTSDeltaNS) = 0;
  v27 = OBJC_IVAR___AUAAudioDevice_asdInputStreams;
  *(v6 + OBJC_IVAR___AUAAudioDevice_asdInputStreams) = _swiftEmptyArrayStorage;
  v28 = OBJC_IVAR___AUAAudioDevice_asdOutputStreams;
  *(v6 + OBJC_IVAR___AUAAudioDevice_asdOutputStreams) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR___AUAAudioDevice_lowestLatencyEnabled) = 0;
  ObjectType = swift_getObjectType();
  v30 = *(a2 + 16);
  v274 = ObjectType;
  v281 = a2;
  v31 = v30(ObjectType, a2);
  if (!v31)
  {

    sub_10000CA2C();
    swift_allocError();
    *v59 = 7;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v60 = *(v6 + v22);

    v61 = *(v6 + v288);

    v62 = *(v27 + v6);

    v63 = *(v6 + v28);

    type metadata accessor for AUAAudioDevice();
    v64 = *((swift_isaMask & *v6) + 0x30);
    v65 = *((swift_isaMask & *v6) + 0x34);
    swift_deallocPartialClassInstance();
    return;
  }

  v32 = v31;
  v273 = v6;
  v284 = a1;
  v33 = v289;
  if (v289 >> 62)
  {
    goto LABEL_47;
  }

  v34 = *((v289 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v35 = _swiftEmptyArrayStorage;
  v272 = v20;
  if (v34)
  {
    v36 = v33;
    v291 = _swiftEmptyArrayStorage;
    sub_1000467E4(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      __break(1u);
      goto LABEL_131;
    }

    v288 = v32;
    v37 = 0;
    v35 = v291;
    v38 = v36;
    v39 = v36 & 0xC000000000000001;
    do
    {
      if (v39)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v38 + 8 * v37 + 32);
      }

      LOBYTE(v295) = *(*(v40 + 32) + 2);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;

      v291 = v35;
      v45 = v35[2];
      v44 = v35[3];
      if (v45 >= v44 >> 1)
      {
        sub_1000467E4((v44 > 1), v45 + 1, 1);
        v35 = v291;
      }

      ++v37;
      v35[2] = v45 + 1;
      v46 = &v35[2 * v45];
      v46[4] = v41;
      v46[5] = v43;
      v38 = v289;
    }

    while (v34 != v37);
    v32 = v288;
  }

  v291 = v35;
  sub_100001AB4(&qword_100174F18, &qword_100120B68);
  sub_10001EB60(&qword_100174F20, &qword_100174F18, &qword_100120B68);
  v47 = BidirectionalCollection<>.joined(separator:)();
  a1 = v48;

  v49 = USBDevice.locationID.getter();
  if ((v49 & &_mh_execute_header) != 0)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49;
  }

  LODWORD(v291) = v50;
  sub_10001E938();
  v51 = String.init<A>(_:radix:uppercase:)();
  v53 = v52;
  v54 = v32;
  v55 = [v54 serialNumber];
  v270 = v51;
  if (v55)
  {
    v56 = v55;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
  }

  else
  {

    v58 = v53;
  }

  v66 = [v54 manufacturerName];
  v265 = v53;
  if (v66)
  {
    v67 = v66;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v68;
  }

  else
  {
    v32 = 0x800000010012B350;
    v20 = 0xD000000000000014;
  }

  v291 = 0;
  v292 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v291 = 0xD000000000000014;
  v266 = 0x800000010012B370;
  v292 = 0x800000010012B370;
  v69._countAndFlagsBits = v20;
  v69._object = v32;
  String.append(_:)(v69);
  v70._countAndFlagsBits = 58;
  v70._object = 0xE100000000000000;
  String.append(_:)(v70);
  v72 = *&v54[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
  v71 = *&v54[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];
  v262 = &v54[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];

  v73._countAndFlagsBits = v72;
  v73._object = v71;
  String.append(_:)(v73);

  v74._countAndFlagsBits = 58;
  v74._object = 0xE100000000000000;
  String.append(_:)(v74);
  v75._countAndFlagsBits = v51;
  v75._object = v58;
  String.append(_:)(v75);

  v76._countAndFlagsBits = 58;
  v76._object = 0xE100000000000000;
  String.append(_:)(v76);
  v283 = v47;
  v77._countAndFlagsBits = v47;
  v77._object = a1;
  String.append(_:)(v77);
  v285 = v291;
  v27 = v292;
  v288 = v54;
  v78 = [v288 plugin];
  if (!v78)
  {
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    v231 = mach_absolute_time();
    v183 = v231 >= v71;
    v137 = v231 - v71;
    if (!v183)
    {
      goto LABEL_147;
    }

    if (qword_100173D00 != -1)
    {
      goto LABEL_148;
    }

    goto LABEL_141;
  }

  v79 = v78;
  v71 = [v78 audioDevices];

  if (!v71)
  {
    goto LABEL_136;
  }

  sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
  v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v279 = v32;
  v263 = v20;
  v264 = a1;
  if (v80 >> 62)
  {
    a1 = _CocoaArrayWrapper.endIndex.getter();
    if (!a1)
    {
LABEL_49:

      goto LABEL_50;
    }
  }

  else
  {
    a1 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a1)
    {
      goto LABEL_49;
    }
  }

  v81 = 0;
  v287 = (v80 & 0xC000000000000001);
  v33 = &v296;
  *&v286 = v80 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v287)
    {
      v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v81 >= *(v286 + 16))
      {
        goto LABEL_46;
      }

      v82 = *(v80 + 8 * v81 + 32);
    }

    v83 = v82;
    v84 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v101 = v33;
      v102 = _CocoaArrayWrapper.endIndex.getter();
      v33 = v101;
      v34 = v102;
      goto LABEL_4;
    }

    v85 = [v82 deviceUID];
    if (!v85)
    {

      goto LABEL_30;
    }

    v86 = v85;
    v20 = v27;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90 = v87;
    v27 = v20;
    if (v90 == v285 && v89 == v20)
    {
      break;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_44;
    }

LABEL_30:
    ++v81;
    if (v84 == a1)
    {
      goto LABEL_49;
    }
  }

LABEL_44:

  v291 = 0;
  v292 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v291 = 0xD000000000000014;
  v292 = v266;
  v92._countAndFlagsBits = v263;
  v92._object = v279;
  String.append(_:)(v92);
  v93._countAndFlagsBits = 58;
  v93._object = 0xE100000000000000;
  String.append(_:)(v93);
  v95 = *v262;
  v94 = v262[1];

  v96._countAndFlagsBits = v95;
  v96._object = v94;
  String.append(_:)(v96);

  v97._countAndFlagsBits = 58;
  v97._object = 0xE100000000000000;
  String.append(_:)(v97);
  v98._countAndFlagsBits = v270;
  v98._object = v265;
  String.append(_:)(v98);
  v99._countAndFlagsBits = 58;
  v99._object = 0xE100000000000000;
  String.append(_:)(v99);
  v100._countAndFlagsBits = v283;
  v100._object = v264;
  String.append(_:)(v100);

  v285 = v291;
  v27 = v292;
LABEL_50:
  v103 = v284;
  a1 = v282;
  inited = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
  if (qword_100173CC0 != -1)
  {
    goto LABEL_125;
  }

LABEL_51:
  v105 = type metadata accessor for AUALog(0);
  v106 = sub_10000A1BC(v105, qword_100179508);
  v107 = v288;
  v108 = (v288 + inited);
  v109 = v275;
  v270 = v106;
  sub_100039740(0x6F69647541415541, 0xEE00656369766544, v108, v275);
  v110 = v273;
  sub_10001E98C(v109, v273 + OBJC_IVAR___AUAAudioDevice_logID);
  v111 = *&v107[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (v111 && sub_1000AA808(0x12u, v111))
  {
    v112 = 10000;
  }

  else
  {
    v112 = 667000;
  }

  v113 = v281;
  *(v110 + OBJC_IVAR___AUAAudioDevice_formatChangeIOStartDelay_us) = v112;
  v287 = OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor;
  *(v110 + OBJC_IVAR___AUAAudioDevice_isAppleVID) = *(*&v107[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor] + 8) == 1452;
  v114 = (v110 + OBJC_IVAR___AUAAudioDevice_function);
  *v114 = v103;
  v114[1] = v113;
  v115 = (v110 + OBJC_IVAR___AUAAudioDevice_clock);
  v116 = v278;
  *v115 = a1;
  v115[1] = v116;
  v117 = swift_getObjectType();
  v118 = *(v116 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v119 = v118(v117, v116);
  v266 = v27;
  if (v119)
  {
    v262 = v119;
    v120 = *(v119 + 16);
    if (!v120)
    {
LABEL_65:

      a1 = v282;
      goto LABEL_66;
    }

    v283 = "his is an iPhone";
    v27 = v262 + 6;
    v286 = xmmword_100120A30;
    while (1)
    {
      v122 = *(v27 - 2);
      a1 = *(v27 - 1);
      if (v122 != a1)
      {
        v103 = *v27;
        sub_100001AB4(&unk_100177280, &unk_100120B70);
        inited = swift_initStackObject();
        *(inited + 16) = v286;
        *(inited + 32) = 0x6E6F6973726556;
        *(inited + 40) = 0xE700000000000000;
        sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
        *(inited + 48) = NSNumber.init(integerLiteral:)(*(*&v287[v288] + 12));
        *(inited + 56) = 0x6E694D65676E6172;
        *(inited + 64) = 0xE800000000000000;
        if (v122 < 0)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          swift_once();
          goto LABEL_51;
        }

        *(inited + 72) = NSNumber.init(integerLiteral:)(v122);
        *(inited + 80) = 0x78614D65676E6172;
        *(inited + 88) = 0xE800000000000000;
        if (a1 < 0)
        {
          goto LABEL_124;
        }

        *(inited + 96) = NSNumber.init(integerLiteral:)(a1);
        *(inited + 104) = 0x73655265676E6172;
        *(inited + 112) = 0xEF6E6F6974756C6FLL;
        if (v103 < 0)
        {
          __break(1u);
          goto LABEL_65;
        }

        *(inited + 120) = NSNumber.init(integerLiteral:)(v103);
        v121 = sub_10000AB64(inited);
        swift_setDeallocating();
        sub_100001AB4(&qword_100174A38, &qword_100120180);
        swift_arrayDestroy();
        sub_1000FC32C(0xD000000000000027, v283 | 0x8000000000000000, v121);
      }

      v27 += 3;
      if (!--v120)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_66:
  v123 = [v288 serialNumber];
  if (v123)
  {
    v124 = v123;
    v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v126;
  }

  else
  {
    v125 = 0;
    v127 = 0xE000000000000000;
  }

  v34 = v269;
  v128 = v274;
  v129 = v273;
  v130 = (v273 + OBJC_IVAR___AUAAudioDevice_serialNumber);
  *v130 = v125;
  v130[1] = v127;
  v32 = v288;
  v131 = *(v288 + OBJC_IVAR____TtC9AUASDCore9USBDevice_timeCorrelater);
  *(v129 + OBJC_IVAR___AUAAudioDevice_timeCorrelater) = v131;
  v132 = objc_allocWithZone(AUALocklessTimestamp);
  v133 = v131;
  v134 = [v132 init];
  *(v129 + OBJC_IVAR___AUAAudioDevice_timestamp) = v134;
  *(v129 + OBJC_IVAR___AUAAudioDevice_streamingInterfaces) = v289;

  v71 = String._bridgeToObjectiveC()();
  v135 = [v32 plugin];

  v136 = type metadata accessor for AUAAudioDevice();
  v294.receiver = v129;
  v294.super_class = v136;
  v27 = objc_msgSendSuper2(&v294, "initWithDeviceUID:withPlugin:", v71, v135);

  if (!v27)
  {
    goto LABEL_137;
  }

  v137 = v281;
  v138 = (*(v281 + 88))(v128, v281);
  if (!v138)
  {

    goto LABEL_83;
  }

  if (*(v138 + 32))
  {
    v291 = 0x4B4C4E554D454D48;
    sub_1000A1940(&v291, &v292, v138, &v295);
    if (v34)
    {

      v34 = 0;
      goto LABEL_79;
    }

    v34 = 0;
  }

  v139 = sub_1000A1ABC();
  v140 = v34;
  if (!v34)
  {
    v213 = v139;
    v214 = MobileGestalt_get_current_device();
    if (!v214)
    {
      goto LABEL_145;
    }

    v215 = v214;

    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (v213)
    {
      if (deviceClassNumber == 1)
      {
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v217 = sub_10000A1BC(v271, qword_1001794F0);
        v218 = v275;
        sub_10000A2A4(v217, v275);
        sub_100039AA0(1, v218, 0xD000000000000030, 0x800000010012B470);
        sub_10000C9D0(v218);
LABEL_119:
        v158 = "ut is not responding correctly";
        if (qword_100173CB8 != -1)
        {
          goto LABEL_134;
        }

        goto LABEL_120;
      }

      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v219 = sub_10000A1BC(v271, qword_1001794F0);
      v220 = v275;
      sub_10000A2A4(v219, v275);
      sub_100039AA0(1, v220, 0xD000000000000035, 0x800000010012B430);
      sub_10000C9D0(v220);
      sub_1000A1EA4(0);
    }

    if (deviceClassNumber == 9)
    {
      goto LABEL_121;
    }

    goto LABEL_119;
  }

  while (2)
  {
    v34 = 0;
LABEL_79:
    v291 = 0;
    v292 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v141 = [(Swift::Int *)v27 deviceName];
    if (v141)
    {
      v142 = v141;
      v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = v144;
    }

    else
    {
      v145 = 0xEE00656369766564;
      v143 = 0x206E776F6E6B6E55;
    }

    v146._countAndFlagsBits = v143;
    v146._object = v145;
    String.append(_:)(v146);

    v147._countAndFlagsBits = 0xD00000000000003ELL;
    v147._object = 0x800000010012B3D0;
    String.append(_:)(v147);
    v148 = v291;
    v149 = v292;
    v150 = v275;
    sub_10000A2A4(v27 + OBJC_IVAR___AUAAudioDevice_logID, v275);
    sub_100039F58(1, v150, v148, v149);

    sub_10000C9D0(v150);
    v137 = v281;
    v128 = v274;
    (*(v281 + 96))(0, v274, v281);

LABEL_83:
    v151 = (*(v137 + 112))(v128, v137);
    v20 = v272;
    if (v151)
    {
      v152 = v151;
      [(Swift::Int *)v27 addCustomProperty:*(v151 + 32)];
      [(Swift::Int *)v27 addCustomProperty:v152[6]];
      [(Swift::Int *)v27 addCustomProperty:v152[5]];
      [(Swift::Int *)v27 addCustomProperty:v152[7]];
      if (qword_100173CF8 != -1)
      {
LABEL_131:
        swift_once();
      }

      v153 = *(qword_100179640 + 16);
      if (v153)
      {
        v154 = v153;
        v155 = String._bridgeToObjectiveC()();
        v156 = [v154 BOOLForKey:v155];

        if (v156)
        {

          goto LABEL_88;
        }
      }

      [(Swift::Int *)v27 setHidden:1];
      v157 = v288;
      [v288 setAcquirable:1];
    }

    else
    {
LABEL_88:
      v157 = v288;
    }

    sub_10000A2A4(v27 + OBJC_IVAR___AUAAudioDevice_logID, v20);
    v32 = v157;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v288 = v27;

    *&v286 = mach_absolute_time();
    v140 = v270;
    v158 = *(*v270 + 16);
    __chkstk_darwin(v286);
    *(&v260 - 2) = sub_10001E9F0;
    *(&v260 - 1) = v159;
    v275 = v159;

    os_unfair_lock_lock((v158 + 16));
    sub_10001EA0C(&v291);
    v285 = v34;
    if (v34)
    {
      goto LABEL_155;
    }

    os_unfair_lock_unlock((v158 + 16));
    v283 = v291;
    v160 = v292;
    LODWORD(v274) = v293;

    isa = v140[1].isa;
    v27 = v268;
    if (!*(isa + 2))
    {
      __break(1u);
      goto LABEL_127;
    }

    v162 = sub_10001D1DC(1);
    if ((v163 & 1) == 0)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    (*(v276 + 16))(v280, *(isa + 7) + *(v276 + 72) * v162, v277);
    v291 = StaticString.description.getter();
    v292 = v164;
    v165._countAndFlagsBits = 32;
    v165._object = 0xE100000000000000;
    String.append(_:)(v165);
    v166._countAndFlagsBits = 0;
    v166._object = 0xE000000000000000;
    String.append(_:)(v166);
    v167 = v291;
    v168 = v292;
    sub_10000A2A4(v20, v27);

    v140 = Logger.logObject.getter();
    v169 = static os_log_type_t.default.getter();

    v170 = os_log_type_enabled(v140, v169);
    v289 = v160;
    v287 = v32;
    if (v170)
    {
      v171 = swift_slowAlloc();
      v273 = swift_slowAlloc();
      v295 = v273;
      *v171 = 136446210;
      v291 = 2113069;
      v292 = 0xE300000000000000;
      LODWORD(v270) = v169;
      v172._countAndFlagsBits = v283;
      v172._object = v160;
      String.append(_:)(v172);
      v173 = (v27 + *(v271 + 24));
      v174 = *v173;
      v175 = v173[1];

      v176._countAndFlagsBits = v174;
      v176._object = v175;
      a1 = v282;
      String.append(_:)(v176);

      v177._countAndFlagsBits = v167;
      v177._object = v168;
      String.append(_:)(v177);

      v178 = v291;
      v179 = v292;
      sub_10000C9D0(v27);
      v180 = sub_100035760(v178, v179, &v295);

      *(v171 + 4) = v180;
      _os_log_impl(&_mh_execute_header, v140, v270, "%{public}s", v171, 0xCu);
      sub_10000CE78(v273);
      v20 = v272;

      v32 = v287;
    }

    else
    {

      sub_10000C9D0(v27);
    }

    v160 = v267;
    v71 = v286;
    v181 = v285;
    v27 = v288;
    sub_100010864(v32, v288, v284, v281, v263, v279, a1, v278);
    a1 = v181;
    if (v181)
    {
      goto LABEL_138;
    }

    v182 = mach_absolute_time();
    v183 = v182 >= v71;
    v158 = v182 - v71;
    if (v183)
    {
      if (qword_100173D00 != -1)
      {
        goto LABEL_129;
      }
    }

    else
    {
LABEL_128:
      __break(1u);
LABEL_129:
      swift_once();
    }

    if (qword_100179650 == HIDWORD(qword_100179650))
    {
      goto LABEL_104;
    }

    if (!is_mul_ok(v158, qword_100179650))
    {
      __break(1u);
      goto LABEL_133;
    }

    if (!HIDWORD(qword_100179650))
    {
LABEL_133:
      __break(1u);
LABEL_134:
      swift_once();
LABEL_120:
      v221 = sub_10000A1BC(v271, qword_1001794F0);
      v222 = v275;
      sub_10000A2A4(v221, v275);
      sub_100039AA0(1, v222, 0xD000000000000017, (v158 | 0x8000000000000000));
      sub_10000C9D0(v222);
      sub_1000A23E4();
      if (v140)
      {
        continue;
      }

LABEL_121:
      sub_1000A21EC();
      v34 = 0;
      v224 = sub_1000852D0(v223);
      v225 = type metadata accessor for AUAReadOnlyCustomDictionaryProperty();
      v226 = objc_allocWithZone(v225);
      *&v226[OBJC_IVAR____TtC9AUASDCore35AUAReadOnlyCustomDictionaryProperty_dictionary] = v224;
      v227 = objc_allocWithZone(ASDPropertyAddress);
      v137 = v224;
      v228 = [v227 initWithSelector:1751474532 scope:1735159650 element:0];
      v290.receiver = v226;
      v290.super_class = v225;
      v229 = objc_msgSendSuper2(&v290, "initWithAddress:propertyDataType:qualifierDataType:", v228, 1886155636, 0);

      if (!v229)
      {
        while (1)
        {
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          swift_once();
LABEL_141:
          v232 = qword_100179650;
          v233 = HIDWORD(qword_100179650);
          if (qword_100179650 == HIDWORD(qword_100179650))
          {
            break;
          }

          if (!is_mul_ok(v137, qword_100179650))
          {
            __break(1u);
LABEL_150:
            v137 = v137 * v232 / v233;
            break;
          }

          if (HIDWORD(qword_100179650))
          {
            goto LABEL_150;
          }

          __break(1u);
LABEL_145:
          __break(1u);
        }

        v291 = 0;
        v292 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v234._countAndFlagsBits = StaticString.description.getter();
        String.append(_:)(v234);

        v235._countAndFlagsBits = 0x203A524F52524520;
        v235._object = 0xE800000000000000;
        String.append(_:)(v235);
        v295 = a1;
        sub_100001AB4(&qword_100177270, &qword_100120A40);
        _print_unlocked<A, B>(_:_:)();
        v236._countAndFlagsBits = 23328;
        v236._object = 0xE200000000000000;
        String.append(_:)(v236);
        v295 = v137 / 0x3E8;
        v237._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v237);

        v238._countAndFlagsBits = 1567847712;
        v238._object = 0xE400000000000000;
        String.append(_:)(v238);
        v239 = v291;
        v240 = v292;
        sub_10000A2A4(v272, v261);

        v241 = Logger.logObject.getter();
        v242 = static os_log_type_t.default.getter();

        LODWORD(v285) = v242;
        *&v286 = v241;
        if (os_log_type_enabled(v241, v242))
        {
          v243 = swift_slowAlloc();
          v284 = swift_slowAlloc();
          v295 = v284;
          *v243 = 136446210;
          v291 = 11580;
          v292 = 0xE200000000000000;
          v244._countAndFlagsBits = v283;
          v244._object = v289;
          String.append(_:)(v244);
          v245 = v261;
          v246 = (v261 + *(v271 + 24));
          v247 = *v246;
          v248 = v246[1];

          v249._countAndFlagsBits = v247;
          v249._object = v248;
          String.append(_:)(v249);

          v250._countAndFlagsBits = v239;
          v250._object = v240;
          String.append(_:)(v250);

          v251 = v291;
          v252 = v292;
          sub_10000C9D0(v245);
          v253 = sub_100035760(v251, v252, &v295);

          *(v243 + 4) = v253;
          v254 = v286;
          _os_log_impl(&_mh_execute_header, v286, v285, "%{public}s", v243, 0xCu);
          sub_10000CE78(v284);
        }

        else
        {

          v255 = sub_10000C9D0(v261);
        }

        v158 = v275[2];
        v256 = __chkstk_darwin(v255);
        *(&v260 - 2) = v257;
        *(&v260 - 2) = v274;
        __chkstk_darwin(v256);
        *(&v260 - 2) = sub_10001EA28;
        *(&v260 - 1) = v258;

        os_unfair_lock_lock((v158 + 16));
        sub_10001EA48(v259);
        goto LABEL_156;
      }

      v230 = v229;
      [v230 setSettable:0];

      [(Swift::Int *)v27 addCustomProperty:v230];

      v137 = v281;
      v128 = v274;
      goto LABEL_83;
    }

    break;
  }

  v158 = v158 * qword_100179650 / HIDWORD(qword_100179650);
LABEL_104:
  *&v286 = a1;
  v291 = StaticString.description.getter();
  v292 = v184;
  v185._countAndFlagsBits = 23328;
  v185._object = 0xE200000000000000;
  String.append(_:)(v185);
  v295 = v158 / 0x3E8;
  v186._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v186);

  v187._countAndFlagsBits = 1567847712;
  v187._object = 0xE400000000000000;
  String.append(_:)(v187);
  v188 = v291;
  v189 = v292;
  sub_10000A2A4(v20, v160);
  v190 = v289;

  v191 = Logger.logObject.getter();
  v192 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v285 = v188;
    v195 = v194;
    v295 = v194;
    *v193 = 136446210;
    v291 = 2108732;
    v292 = 0xE300000000000000;
    v196._countAndFlagsBits = v283;
    v196._object = v190;
    String.append(_:)(v196);
    v197 = &v160[*(v271 + 24)];
    v198 = v160;
    v199 = *v197;
    v200 = v197[1];

    v201._countAndFlagsBits = v199;
    v201._object = v200;
    String.append(_:)(v201);
    v27 = v288;

    v202._countAndFlagsBits = v285;
    v202._object = v189;
    String.append(_:)(v202);

    v203 = v291;
    v204 = v292;
    sub_10000C9D0(v198);
    v205 = sub_100035760(v203, v204, &v295);

    *(v193 + 4) = v205;
    _os_log_impl(&_mh_execute_header, v191, v192, "%{public}s", v193, 0xCu);
    sub_10000CE78(v195);

    v20 = v272;
  }

  else
  {

    v206 = sub_10000C9D0(v160);
  }

  v32 = v266;
  v158 = v275[2];
  v207 = __chkstk_darwin(v206);
  *(&v260 - 2) = v208;
  *(&v260 - 2) = v274;
  __chkstk_darwin(v207);
  *(&v260 - 2) = sub_10001EF68;
  *(&v260 - 1) = v209;

  os_unfair_lock_lock((v158 + 16));
  v210 = v286;
  sub_10001F004(v211);
  if (!v210)
  {
    os_unfair_lock_unlock((v158 + 16));

    (*(v276 + 8))(v280, v277);
    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();

    v212 = v287;

    sub_10000C9D0(v20);

    return;
  }

LABEL_155:
  os_unfair_lock_unlock((v158 + 16));
  __break(1u);
LABEL_156:
  os_unfair_lock_unlock((v158 + 16));

  swift_willThrow();
  (*(v276 + 8))(v280, v277);

  __break(1u);
}

uint64_t sub_10001073C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_100010864(char *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v201 = a7;
  v202 = a8;
  v209 = a5;
  v210 = a6;
  v206 = a3;
  v208 = a2;
  v194 = type metadata accessor for LogID(0);
  v11 = *(*(v194 - 8) + 64);
  __chkstk_darwin(v194);
  v195 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CharacterSet();
  p_type = *(v13 - 1);
  v15 = *(p_type + 64);
  __chkstk_darwin(v13);
  v17 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = a1;
  v18 = *&a1[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (v18 && sub_1000AA808(0x1Bu, v18))
  {
    usleep(0x16E360u);
  }

  v200 = v18;
  AUAAudioDevice.createStreams()();
  v213 = AUAAudioDevice.inputAUAStreams()();
  v214 = AUAAudioDevice.outputAUAStreams()();
  ObjectType = swift_getObjectType();
  v20 = *(a4 + 32);
  v205 = ObjectType;
  v21 = v20(ObjectType, a4);
  v199 = v8;
  if (v21 >> 62)
  {
    goto LABEL_163;
  }

  v211 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

  v22 = v214 >> 62;
  if (v214 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v213 >> 62;
  if (!(v213 >> 62))
  {
    v25 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v23 + v25;
    if (!__OFADD__(v23, v25))
    {
      goto LABEL_10;
    }

LABEL_167:
    __break(1u);
LABEL_168:
    swift_once();
    goto LABEL_61;
  }

  v192 = _CocoaArrayWrapper.endIndex.getter();
  v26 = v23 + v192;
  if (__OFADD__(v23, v192))
  {
    goto LABEL_167;
  }

LABEL_10:
  v207 = v24;
  v27 = (*(a4 + 24))(v205, a4);
  v28 = *(v27 + 176);
  v29 = *(v27 + 184);

  v204 = a4;
  if (v29)
  {
    v212 = v28;
    v219 = v28;
    v220 = v29;
    static CharacterSet.whitespaces.getter();
    sub_10001EA64();
    v28 = StringProtocol.trimmingCharacters(in:)();
    v31 = v30;
    v32 = *(p_type + 8);
    p_type += 8;
    v32(v17, v13);

    v33 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v33 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v34 = v208;
      v35 = v212;
      goto LABEL_18;
    }

    v35 = 0;
    v29 = 0;
  }

  else
  {
    v35 = 0;
  }

  v34 = v208;
LABEL_18:
  v36 = 0;
  if (v211 == v26)
  {
    v37 = 0;
    if (v26 >= 2)
    {

      v36 = v35;
      v37 = v29;
    }
  }

  else
  {
    v37 = 0;
  }

  v229 = v36;
  v230 = v37;
  if (![v34 hasOutput])
  {
    goto LABEL_32;
  }

  v38 = v214;
  if (v22)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
    v38 = v214;
    if (!v39)
    {
      goto LABEL_32;
    }
  }

  else if (!*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_172;
    }

    v40 = *(v38 + 32);
  }

  v41 = v40;
  v13 = [v40 streamName];

  if (v13)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    goto LABEL_33;
  }

LABEL_32:
  v28 = 0;
  v43 = 0;
LABEL_33:
  v231 = v28;
  v232 = v43;
  if (![v208 hasInput])
  {
    goto LABEL_43;
  }

  v44 = v213;
  if (v207)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
    v44 = v213;
    if (v45)
    {
      goto LABEL_38;
    }

LABEL_43:
    v48 = 0;
    a4 = 0;
    goto LABEL_44;
  }

  if (!*((v213 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

LABEL_38:
  if ((v44 & 0xC000000000000001) == 0)
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v46 = *(v44 + 32);
      goto LABEL_41;
    }

LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_41:
  v47 = v46;
  v13 = [v46 streamName];

  if (!v13)
  {
    goto LABEL_43;
  }

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4 = v49;

LABEL_44:
  v233 = v48;
  v234 = a4;
  v211 = v29;
  v212 = v35;
  v235 = v35;
  v236 = v29;

  v50 = 0;
  active = ActiveFunction.deviceName.getter(v205, v204);
  v238 = v51;
  v239 = 0;
  v240 = 0;
  v17 = 6;
  p_type = v228;
  v52 = _swiftEmptyArrayStorage;
LABEL_45:
  if (v50 <= 6)
  {
    v53 = 6;
  }

  else
  {
    v53 = v50;
  }

  v54 = v53 + 1;
  v55 = 16 * v50 + 40;
  while (v50 != 6)
  {
    if (v54 == ++v50)
    {
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      v211 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_6;
    }

    v56 = v55 + 16;
    a4 = *&v228[v55];
    v55 += 16;
    if (a4)
    {
      v57 = *(v227 + v56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_100024068(0, *(v52 + 2) + 1, 1, v52);
      }

      v59 = *(v52 + 2);
      v58 = *(v52 + 3);
      v13 = (v59 + 1);
      if (v59 >= v58 >> 1)
      {
        v52 = sub_100024068((v58 > 1), v59 + 1, 1, v52);
      }

      *(v52 + 2) = v13;
      v60 = &v52[16 * v59];
      *(v60 + 4) = v57;
      *(v60 + 5) = a4;
      goto LABEL_45;
    }
  }

  p_type = sub_100001AB4(&qword_100177290, &qword_100120B80);
  swift_arrayDestroy();
  if (*(v52 + 2))
  {
    v17 = *(v52 + 4);
    v22 = *(v52 + 5);
  }

  else
  {

    v22 = 0x800000010012B570;
    v17 = 0xD000000000000010;
  }

  v26 = v208;
  if (qword_100173CF8 != -1)
  {
    goto LABEL_168;
  }

LABEL_61:
  v61 = *(qword_100179640 + 16);
  if (v61 && (v62 = v61, v63 = String._bridgeToObjectiveC()(), v64 = [v62 BOOLForKey:v63], v62, v26 = v208, v63, (v64 & 1) != 0))
  {
    v65 = 0xE100000000000000;
    v66 = 46;
  }

  else
  {
    v66 = 0;
    v65 = 0xE000000000000000;
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v68 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v196 = v17;
  v197 = v22;
  v69 = String._bridgeToObjectiveC()();
  v70 = [v68 localizedStringForKey:v69 value:0 table:0];

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v219 = v66;
  v220 = v65;

  v74._countAndFlagsBits = v71;
  v74._object = v73;
  String.append(_:)(v74);

  v75 = String._bridgeToObjectiveC()();

  [v26 setDeviceName:v75];

  v76 = v203;
  v77 = [v203 modelName];
  if (!v77)
  {
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v78 = v77;
  [v26 setModelName:v77];

  v226 = v212;
  v227[0] = v211;
  v79 = *&v76[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
  if (!v79)
  {
    goto LABEL_74;
  }

  v80 = v79;
  v81 = [v80 deviceDescriptor];
  if (!v81 || (v82 = v81[15], !v82))
  {
LABEL_73:

LABEL_74:
    v86 = 0;
    v87 = 0;
    goto LABEL_75;
  }

  v83 = v199;
  v84 = sub_1000F8280(v82);
  if (!v83)
  {
    v199 = 0;
    if (v85)
    {
      v219 = v84;
      v220 = v85;
      v217 = 0;
      v218 = 0xE100000000000000;
      v215 = 0;
      v216 = 0xE000000000000000;
      sub_10001EA64();
      v86 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v87 = v88;

      goto LABEL_75;
    }

    goto LABEL_73;
  }

  v86 = 0;
  v87 = 0;
  v199 = 0;
LABEL_75:
  v89 = 0;
  v227[1] = v86;
  v227[2] = v87;
  v90 = _swiftEmptyArrayStorage;
LABEL_76:
  v91 = &v227[2 * v89];
  while (++v89 != 3)
  {
    v92 = v91 + 2;
    v93 = *v91;
    v91 += 2;
    if (v93)
    {
      v94 = *(v92 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_100024068(0, *(v90 + 2) + 1, 1, v90);
      }

      v96 = *(v90 + 2);
      v95 = *(v90 + 3);
      if (v96 >= v95 >> 1)
      {
        v90 = sub_100024068((v95 > 1), v96 + 1, 1, v90);
      }

      *(v90 + 2) = v96 + 1;
      v97 = &v90[16 * v96];
      *(v97 + 4) = v94;
      *(v97 + 5) = v93;
      goto LABEL_76;
    }
  }

  swift_arrayDestroy();
  if (*(v90 + 2))
  {
    v99 = *(v90 + 4);
    v98 = *(v90 + 5);
  }

  else
  {

    v98 = 0x800000010012B550;
    v99 = 0xD000000000000018;
  }

  v219 = v99;
  v220 = v98;

  v100._countAndFlagsBits = 58;
  v100._object = 0xE100000000000000;
  String.append(_:)(v100);
  v101 = [v203 modelUID];
  if (!v101)
  {
    goto LABEL_175;
  }

  v102 = v101;

  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;

  v106._countAndFlagsBits = v103;
  v106._object = v105;
  String.append(_:)(v106);

  v107 = String._bridgeToObjectiveC()();

  v108 = v208;
  [v208 setModelUID:v107];

  v109 = String._bridgeToObjectiveC()();
  [v108 setManufacturerName:v109];

  [v108 setCanBeDefaultInputDevice:{objc_msgSend(v108, "hasInput")}];
  [v108 setCanBeDefaultOutputDevice:{objc_msgSend(v108, "hasOutput")}];
  [v108 setCanBeDefaultSystemDevice:1];
  [v108 setCanChangeDeviceName:0];
  v110 = (*(v204 + 16))(v205);
  if (v110)
  {
    v111 = v110;
    v112 = *(v110 + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
    if (v112)
    {
      a4 = sub_1000AA808(0x20u, v112);
    }

    else
    {
      a4 = 0;
    }
  }

  else
  {
    a4 = 0;
  }

  [v208 setSupportsHeySiri:a4 & 1];
  v113 = swift_getObjectType();
  v114 = *(v202 + 40);
  v198 = v113;
  v115 = v114();
  if (v115)
  {
    v13 = v115;
    v211 = *(v115 + 16);
    if (v211)
    {
      v17 = 0;
      v210 = v115 + 32;
      v214 = _swiftEmptyArrayStorage;
      v207 = v115;
      while (1)
      {
        if (v17 >= v13[2])
        {
          goto LABEL_158;
        }

        v116 = ClockRateRange.asdSampleRateRanges.getter(*(v210 + 24 * v17), *(v210 + 24 * v17 + 8), *(v210 + 24 * v17 + 16));
        p_type = v116;
        v117 = v116 >> 62;
        if (v116 >> 62)
        {
          v118 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v118 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v119 = v214 >> 62;
        if (v214 >> 62)
        {
          v136 = _CocoaArrayWrapper.endIndex.getter();
          v121 = v136 + v118;
          if (__OFADD__(v136, v118))
          {
LABEL_130:
            __break(1u);
            break;
          }
        }

        else
        {
          v120 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v121 = v120 + v118;
          if (__OFADD__(v120, v118))
          {
            goto LABEL_130;
          }
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v213 = v118;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (v119)
          {
            goto LABEL_111;
          }

          v123 = v214 & 0xFFFFFFFFFFFFFF8;
          if (v121 <= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_113;
          }
        }

        else
        {
          if (v119)
          {
LABEL_111:
            _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_112;
          }

          v123 = v214 & 0xFFFFFFFFFFFFFF8;
        }

        v124 = *(v123 + 16);
LABEL_112:
        v214 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v123 = v214 & 0xFFFFFFFFFFFFFF8;
LABEL_113:
        a4 = *(v123 + 16);
        v125 = *(v123 + 24);
        if (v117)
        {
          v127 = v123;
          v128 = _CocoaArrayWrapper.endIndex.getter();
          v123 = v127;
          v126 = v128;
          if (!v128)
          {
LABEL_97:

            if (v213 > 0)
            {
              goto LABEL_159;
            }

            goto LABEL_98;
          }
        }

        else
        {
          v126 = *((p_type & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v126)
          {
            goto LABEL_97;
          }
        }

        if (((v125 >> 1) - a4) < v213)
        {
          goto LABEL_160;
        }

        a4 = v123 + 8 * a4 + 32;
        v212 = v17;
        v209 = v123;
        if (v117)
        {
          if (v126 < 1)
          {
            goto LABEL_162;
          }

          sub_10001EB60(&qword_100174F48, &qword_100174F40, &qword_100120B88);
          for (i = 0; i != v126; ++i)
          {
            sub_100001AB4(&qword_100174F40, &qword_100120B88);
            v130 = sub_10001D8F4(&v219, i, p_type);
            v132 = *v131;
            (v130)(&v219, 0);
            *(a4 + 8 * i) = v132;
          }
        }

        else
        {
          sub_10001EBA8(0, &qword_100174F38, ASDSampleRateRange_ptr);
          swift_arrayInitWithCopy();
        }

        if (v213 <= 0)
        {
          v13 = v207;
          v17 = v212;
        }

        else
        {
          v133 = *(v209 + 16);
          v134 = __OFADD__(v133, v213);
          v135 = v133 + v213;
          v13 = v207;
          v17 = v212;
          if (v134)
          {
            goto LABEL_161;
          }

          *(v209 + 16) = v135;
        }

LABEL_98:
        if (++v17 == v211)
        {
          goto LABEL_132;
        }
      }
    }

    v214 = _swiftEmptyArrayStorage;
LABEL_132:

    sub_10001EBA8(0, &qword_100174F38, ASDSampleRateRange_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v208 setSamplingRateRanges:isa];
  }

  v138 = (*(v202 + 16))(v198);
  v139 = 0.0;
  if ((v140 & 1) == 0)
  {
    v139 = v138;
    if (v200)
    {
      if (v138 == 44100 && sub_1000AA808(1u, v200))
      {
        v139 = 48000.0;
      }
    }
  }

  v219 = 0;
  v220 = 0xE000000000000000;
  v141._countAndFlagsBits = 0x3A6574615277656ELL;
  v141._object = 0xE900000000000020;
  String.append(_:)(v141);
  Double.write<A>(to:)();
  v143 = v219;
  v142 = v220;
  v144 = OBJC_IVAR___AUAAudioDevice_logID;
  v145 = qword_100173CC0;
  v146 = v208;
  v147 = v208;
  if (v145 != -1)
  {
    swift_once();
  }

  v148 = type metadata accessor for AUALog(0);
  v212 = sub_10000A1BC(v148, qword_100179508);
  v149 = v199;
  sub_10003B08C(3, "setSamplingRate", 15, 2, v146 + v144, v143, v142, v212, v139, v147);
  v213 = v149;

  [v147 setTransportType:1970496032];
  v214 = v147;
  v150 = v204;
  v151 = v205;
  v152 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:{(*(v204 + 40))(v205, v204)}];
  v153 = type metadata accessor for AUACustomNumberProperty();
  v154 = objc_allocWithZone(v153);
  *&v154[OBJC_IVAR____TtC9AUASDCore23AUACustomNumberProperty_number] = v152;
  v155 = objc_allocWithZone(ASDPropertyAddress);
  v156 = v152;
  v157 = [v155 initWithSelector:1967211587 scope:1735159650 element:0];
  v225.receiver = v154;
  v225.super_class = v153;
  v158 = objc_msgSendSuper2(&v225, "initWithAddress:propertyDataType:qualifierDataType:", v157, 1886155636, 0);

  if (!v158)
  {
    goto LABEL_176;
  }

  v159 = v158;
  [v159 setSettable:0];

  [v214 addCustomProperty:v159];
  v160 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:{(*(v150 + 48))(v151, v150)}];
  v161 = objc_allocWithZone(v153);
  *&v161[OBJC_IVAR____TtC9AUASDCore23AUACustomNumberProperty_number] = v160;
  v162 = objc_allocWithZone(ASDPropertyAddress);
  v163 = v160;
  v164 = [v162 initWithSelector:1967212099 scope:1735159650 element:0];
  v224.receiver = v161;
  v224.super_class = v153;
  v165 = objc_msgSendSuper2(&v224, "initWithAddress:propertyDataType:qualifierDataType:", v164, 1886155636, 0);

  if (!v165)
  {
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v166 = v165;
  [v166 setSettable:0];

  v167 = v214;
  [v214 addCustomProperty:v166];

  v168 = USBDevice.locationID.getter();
  if ((v168 & &_mh_execute_header) != 0)
  {
    v169 = 0;
  }

  else
  {
    v169 = v168;
  }

  v170 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v169];
  v171 = objc_allocWithZone(v153);
  *&v171[OBJC_IVAR____TtC9AUASDCore23AUACustomNumberProperty_number] = v170;
  v172 = objc_allocWithZone(ASDPropertyAddress);
  v173 = v170;
  v174 = [v172 initWithSelector:1818446148 scope:1735159650 element:0];
  v223.receiver = v171;
  v223.super_class = v153;
  v175 = objc_msgSendSuper2(&v223, "initWithAddress:propertyDataType:qualifierDataType:", v174, 1886155636, 0);

  if (!v175)
  {
    goto LABEL_178;
  }

  v176 = v175;
  [v176 setSettable:0];

  [v167 addCustomProperty:v176];
  v26 = type metadata accessor for AUACustomBooleanProperty();
  v177 = objc_allocWithZone(v26);
  v177[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet] = 1;
  v178 = [objc_allocWithZone(ASDPropertyAddress) initWithSelector:1967215440 scope:1735159650 element:0];
  v222.receiver = v177;
  v222.super_class = v26;
  v179 = objc_msgSendSuper2(&v222, "initWithAddress:propertyDataType:qualifierDataType:", v178, 1886155636, 0);

  if (v179)
  {
    [v179 setSettable:0];
    p_type = &stru_10016FFF0.type;
    [v167 addCustomProperty:v179];

    v180 = v200;
    v22 = v196;
    v29 = v197;
    if (!v200)
    {
      goto LABEL_156;
    }

    if (!sub_1000AA808(0x1Au, v200))
    {
LABEL_151:
      if (sub_1000AA808(0x23u, v180))
      {
        v219 = 0;
        v220 = 0xE000000000000000;
        _StringGuts.grow(_:)(42);

        v219 = 0xD000000000000028;
        v220 = 0x800000010012B4F0;
        v184._countAndFlagsBits = v22;
        v184._object = v29;
        String.append(_:)(v184);

        v185 = v219;
        v186 = v220;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v187 = sub_10000A1BC(v194, qword_1001794F0);
        v188 = v195;
        sub_10000A2A4(v187, v195);
        sub_100039AA0(1, v188, v185, v186);

        sub_10000C9D0(v188);
        v189 = objc_allocWithZone(v26);
        v189[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet] = 1;
        v190 = [objc_allocWithZone(ASDPropertyAddress) initWithSelector:1967211588 scope:1735159650 element:0];
        v221.receiver = v189;
        v221.super_class = v26;
        v191 = objc_msgSendSuper2(&v221, "initWithAddress:propertyDataType:qualifierDataType:", v190, 1886155636, 0);

        if (v191)
        {
          [v191 setSettable:0];
          [v167 *(p_type + 4000)];

          return;
        }

        goto LABEL_180;
      }

LABEL_156:

      return;
    }

    v35 = v167;
    v219 = 0;
    v220 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v219 = 0xD000000000000020;
    v220 = 0x800000010012B520;
    v181._countAndFlagsBits = v22;
    v181._object = v29;
    String.append(_:)(v181);
    v28 = v219;
    v13 = v220;
    if (qword_100173CB8 == -1)
    {
LABEL_150:
      v182 = sub_10000A1BC(v194, qword_1001794F0);
      v183 = v195;
      sub_10000A2A4(v182, v195);
      sub_100039AA0(1, v183, v28, v13);

      sub_10000C9D0(v183);
      v167 = v35;
      [v35 setWantsDisplayRouting:1];
      v180 = v200;
      goto LABEL_151;
    }

LABEL_173:
    swift_once();
    goto LABEL_150;
  }

LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
}

uint64_t AUAAudioDevice.clockForOutline.getter()
{
  v1 = *(v0 + OBJC_IVAR___AUAAudioDevice_clock);
  v2 = *(v0 + OBJC_IVAR___AUAAudioDevice_clock + 8);
  return swift_unknownObjectRetain();
}

Swift::Void __swiftcall AUAAudioDevice.handleSigTerm()()
{
  v1 = 0xEE00656369766564;
  v2 = 0x206E776F6E6B6E55;
  v3 = type metadata accessor for LogID(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  v38 = v0;
  v7 = [v0 deviceName];
  if (v7)
  {
    v8 = v7;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v9;
  }

  v10._countAndFlagsBits = v2;
  v10._object = v1;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD000000000000022;
  v11._object = 0x800000010012AE80;
  String.append(_:)(v11);
  v12 = v40;
  v13 = v41;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A1BC(v3, qword_1001794F0);
  sub_10000A2A4(v14, v6);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for AUALog(0);
  v37 = sub_10000A1BC(v15, qword_100179508);
  sub_100039AA0(1, v6, v12, v13);

  sub_10000C9D0(v6);
  v16 = *&v38[OBJC_IVAR___AUAAudioDevice_streamingInterfaces];
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v33 = *&v38[OBJC_IVAR___AUAAudioDevice_streamingInterfaces];
    }

    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_9:
      if (v17 < 1)
      {
        __break(1u);
      }

      v18 = 0;
      v35 = "ng alternates to 0";
      v36 = OBJC_IVAR___AUAAudioDevice_logID;
      p_type = &stru_10016FFF0.type;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 112);
          if (v20)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v21 = *(v16 + 8 * v18 + 32);

          v20 = *(v21 + 112);
          if (v20)
          {
LABEL_17:
            v40 = 0;
            v22 = v20;
            if ([v22 p_type[477]])
            {
              v23 = v40;
            }

            else
            {
              v24 = v40;
              v25 = _convertNSErrorToError(_:)();

              swift_willThrow();
              v40 = 0;
              v41 = 0xE000000000000000;
              _StringGuts.grow(_:)(35);
              v26 = [v38 deviceName];
              if (v26)
              {
                v27 = v26;
                v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v30 = v29;
              }

              else
              {
                v28 = 0x206E776F6E6B6E55;
                v30 = 0xEE00656369766564;
              }

              v31._countAndFlagsBits = v28;
              v31._object = v30;
              String.append(_:)(v31);

              v32._object = (v35 | 0x8000000000000000);
              v32._countAndFlagsBits = 0xD00000000000001FLL;
              String.append(_:)(v32);
              v39 = v25;
              sub_100001AB4(&qword_100177270, &qword_100120A40);
              _print_unlocked<A, B>(_:_:)();
              sub_100039F58(1, &v38[v36], v40, v41);

              p_type = (&stru_10016FFF0 + 16);
            }

            goto LABEL_12;
          }
        }

LABEL_12:
        ++v18;
      }

      while (v17 != v18);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AUAAudioDevice.startDevice()()
{
  if (!*(v0 + OBJC_IVAR___AUAAudioDevice_function) || (v1 = *(v0 + OBJC_IVAR___AUAAudioDevice_function + 8), ObjectType = swift_getObjectType(), (v3 = (*(v1 + 16))(ObjectType, v1)) == 0))
  {
    sub_10000CA2C();
    swift_allocError();
    *v13 = 58;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
  if (!v5 || !sub_1000AA808(0x25u, v5))
  {
    goto LABEL_18;
  }

  v6 = swift_getObjectType();
  v7 = *((*(v1 + 24))(v6, v1) + 168);

  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_10:

    v19 = 0;
    memset(v18, 0, sizeof(v18));
LABEL_13:
    sub_10001ED24(v18, &v15);
    if (v16)
    {
      sub_100001AB4(&qword_100174F60, &qword_100121090);
      type metadata accessor for ActiveFeatureUnit();
      if (swift_dynamicCast())
      {
        sub_1000C63C8();
      }

      sub_10000D040(v18, &qword_100174FB0, &unk_100120FC0);
    }

    else
    {
      sub_10000D040(v18, &qword_100174FB0, &unk_100120FC0);
      sub_10000D040(&v15, &qword_100174FB0, &unk_100120FC0);
    }

LABEL_18:
    AUAAudioDevice.publishStreamFormats()();
    if (!v14)
    {
      AUAAudioDevice.updateSafetyOffsets()();
    }

    return;
  }

  v9 = 0;
  v10 = v7 + 32;
  while (v9 < *(v7 + 16))
  {
    sub_10001EAFC(v10, &v15);
    v11 = v16;
    v12 = v17;
    sub_10001EAB8(&v15, v16);
    if ((*(v12 + 48))(v11, v12) == 18)
    {

      sub_10000D0A0(&v15, v18);
      goto LABEL_13;
    }

    ++v9;
    sub_10000CE78(&v15);
    v10 += 40;
    if (v8 == v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AUAAudioDevice.publishStreamFormats()()
{
  v1 = v0;
  v2 = sub_10000AD98(_swiftEmptyArrayStorage);
  v3 = *(v0 + OBJC_IVAR___AUAAudioDevice_streamingInterfaces);
  v114 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    active = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      if (active)
      {
        active = 1;
      }

      else
      {
        active = ActiveStreamingInterface.hasValidAlternateSettingsControl.getter();
      }

      ++v5;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  active = 0;
LABEL_17:
  v112 = *(v1 + OBJC_IVAR___AUAAudioDevice_clock + 8);
  v113 = *(v1 + OBJC_IVAR___AUAAudioDevice_clock);
  ObjectType = swift_getObjectType();
  if (((*(v112 + 56))(ObjectType, v112) & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR___AUAAudioDevice_function))
    {
      v8 = *(v1 + OBJC_IVAR___AUAAudioDevice_function + 8);
      v9 = swift_getObjectType();
      v10 = (*(v8 + 16))(v9, v8);
      if (v10)
      {
        v11 = v10;
        v12 = *&v10[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
        if (v12)
        {
          v13 = sub_1000AA808(0, v12);

          v14 = !v13;
          goto LABEL_24;
        }
      }
    }
  }

  v14 = 1;
LABEL_24:
  v15 = (*(v112 + 48))(ObjectType, v112);
  v16 = (*(v112 + 40))(ObjectType, v112);
  if (!v16)
  {
    if (v114)
    {
      v66 = _CocoaArrayWrapper.endIndex.getter();
      if (!v66)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v66 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v66)
      {
        goto LABEL_161;
      }
    }

    v67 = 0;
    v68 = v3 & 0xC000000000000001;
    v124 = v3 & 0xFFFFFFFFFFFFFF8;
    v121 = v66;
    v122 = v3 + 32;
    p_type = &stru_10016FFF0.type;
    v120 = (v3 & 0xC000000000000001);
    while (1)
    {
LABEL_116:
      v132 = v2;
      if (v68)
      {
        v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v29 = __OFADD__(v67++, 1);
        if (v29)
        {
          goto LABEL_184;
        }
      }

      else
      {
        if (v67 >= *(v124 + 16))
        {
          goto LABEL_186;
        }

        v70 = *(v122 + 8 * v67);

        v29 = __OFADD__(v67++, 1);
        if (v29)
        {
          goto LABEL_184;
        }
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v72 = Strong, v73 = [Strong p_type[498]], v72, v73))
      {
        sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
        v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v74 >> 62)
        {
          v75 = _CocoaArrayWrapper.endIndex.getter();
          if (v75)
          {
LABEL_126:
            v126 = v67;
            v76 = 0;
            v77 = v74 & 0xC000000000000001;
            v130 = v75;
            while (1)
            {
              if (v77)
              {
                v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v76 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_185;
                }

                v78 = *(v74 + 32 + 8 * v76);
              }

              v79 = v78;
              v29 = __OFADD__(v76++, 1);
              if (v29)
              {
                goto LABEL_183;
              }

              type metadata accessor for AUAAudioDevice();
              if (swift_dynamicCastClass())
              {
                v135 = v79;
                v80 = AUAAudioDevice.inputAUAStreams()();
                if (v80 >> 62)
                {
                  type metadata accessor for AUAStream(0);
                  v81 = _bridgeCocoaArray<A>(_:)();
                }

                else
                {

                  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                  type metadata accessor for AUAStream(0);
                  v81 = v80;
                }

                v82 = AUAAudioDevice.outputAUAStreams()();
                if (v82 >> 62)
                {
                  type metadata accessor for AUAStream(0);
                  v83 = _bridgeCocoaArray<A>(_:)();
                }

                else
                {

                  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                  type metadata accessor for AUAStream(0);
                  v83 = v82;
                }

                sub_10007DC24(v83);
                v84 = v81;
                if (v81 >> 62)
                {
                  v85 = _CocoaArrayWrapper.endIndex.getter();
                  if (v85)
                  {
LABEL_140:
                    v86 = 0;
                    while (1)
                    {
                      if ((v84 & 0xC000000000000001) != 0)
                      {
                        v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        if (v86 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_177;
                        }

                        v87 = *(v84 + 8 * v86 + 32);
                      }

                      v88 = v87;
                      v89 = v86 + 1;
                      if (__OFADD__(v86, 1))
                      {
                        break;
                      }

                      if (*(*(*&v87[OBJC_IVAR___AUAStream_interface] + 32) + 2) == *(*(v70 + 32) + 2))
                      {

                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        sub_100083DB8(_swiftEmptyArrayStorage, v88, isUniquelyReferenced_nonNull_native);

                        v2 = v132;
                        goto LABEL_156;
                      }

                      ++v86;
                      if (v89 == v85)
                      {
                        goto LABEL_127;
                      }
                    }

                    __break(1u);
LABEL_177:
                    __break(1u);
LABEL_178:
                    __break(1u);
LABEL_179:
                    __break(1u);
                    goto LABEL_180;
                  }
                }

                else
                {
                  v85 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v85)
                  {
                    goto LABEL_140;
                  }
                }

LABEL_127:

                v75 = v130;
                v77 = v74 & 0xC000000000000001;
                if (v76 == v130)
                {
                  goto LABEL_158;
                }
              }

              else
              {

                if (v76 == v75)
                {
LABEL_158:

                  v2 = v132;
LABEL_156:
                  v68 = v120;
                  v66 = v121;
                  v67 = v126;
                  p_type = (&stru_10016FFF0 + 16);
                  if (v126 != v121)
                  {
                    goto LABEL_116;
                  }

                  goto LABEL_161;
                }
              }
            }
          }
        }

        else
        {
          v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v75)
          {
            goto LABEL_126;
          }
        }
      }

      else
      {
      }

      v2 = v132;
      if (v67 == v66)
      {
        goto LABEL_161;
      }
    }
  }

  v105 = v16;
  v104 = *(v112 + 16);
  v17 = v104(ObjectType, v112);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = v105;
  v110 = v19;
  v101 = *(v105 + 16);
  if (v101)
  {
    v21 = 0;
    v100 = v15 & v14;
    v22 = v105 + 32;
    v118 = v3 & 0xFFFFFFFFFFFFFF8;
    v129 = v3 & 0xC000000000000001;
    v117 = v3 + 32;
    while (1)
    {
      v107 = v21;
      if (v21 >= *(v20 + 16))
      {
        goto LABEL_192;
      }

      v23 = ClockRateRange.asdSampleRateRanges.getter(*(v22 + 24 * v21), *(v22 + 24 * v21 + 8), *(v22 + 24 * v21 + 16));
      v24 = v23;
      v109 = v23;
      if (!(v23 >> 62))
      {
        v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          break;
        }

        goto LABEL_106;
      }

      v25 = _CocoaArrayWrapper.endIndex.getter();
      v24 = v109;
      if (v25)
      {
        break;
      }

LABEL_106:

      v21 = v107 + 1;
      v20 = v105;
      v22 = v105 + 32;
      if (v107 + 1 == v101)
      {
        goto LABEL_107;
      }
    }

    v26 = 0;
    v108 = v24 & 0xC000000000000001;
    v102 = v24 + 32;
    v103 = v24 & 0xFFFFFFFFFFFFFF8;
    v106 = v25;
    while (1)
    {
      if (v108)
      {
        v27 = v26;
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v103 + 16))
        {
          goto LABEL_191;
        }

        v27 = v26;
        v28 = *(v102 + 8 * v26);
      }

      v119 = v28;
      v29 = __OFADD__(v27, 1);
      v30 = v27 + 1;
      if (v29)
      {
        goto LABEL_187;
      }

      v115 = v30;
      [v28 minimum];
      v32 = v31;
      [v119 maximum];
      v116 = v110;
      if (v32 == v33)
      {
        [v119 minimum];
        if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_188;
        }

        if (v34 <= -1.0)
        {
          goto LABEL_189;
        }

        if (v34 >= 1.84467441e19)
        {
          goto LABEL_190;
        }

        v116 = v34;
        if (active)
        {
          v35 = v104(ObjectType, v112);
          if ((v36 & 1) == 0 && v35 != v116)
          {
            if ((v100 & 1) == 0)
            {
              goto LABEL_34;
            }

            (*(v112 + 24))(v116, 0, ObjectType);
          }
        }
      }

      if (v114)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
        if (v37)
        {
LABEL_53:
          v38 = 0;
          v127 = v37;
          do
          {
            if (v129)
            {
              v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v29 = __OFADD__(v38++, 1);
              if (v29)
              {
                goto LABEL_179;
              }
            }

            else
            {
              if (v38 >= *(v118 + 16))
              {
                goto LABEL_182;
              }

              v39 = *(v117 + 8 * v38);

              v29 = __OFADD__(v38++, 1);
              if (v29)
              {
                goto LABEL_179;
              }
            }

            swift_beginAccess();
            v40 = swift_unknownObjectWeakLoadStrong();
            if (v40 && (v41 = v40, v42 = [v40 audioDevices], v41, v42))
            {
              v131 = v2;
              sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
              v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v43 >> 62)
              {
                v44 = _CocoaArrayWrapper.endIndex.getter();
                if (v44)
                {
LABEL_66:
                  v45 = 0;
                  v46 = v43 & 0xC000000000000001;
                  v128 = v38;
                  v125 = v44;
                  while (1)
                  {
                    if (v46)
                    {
                      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_181;
                      }

                      v47 = *(v43 + 32 + 8 * v45);
                    }

                    v48 = v47;
                    v29 = __OFADD__(v45++, 1);
                    if (v29)
                    {
                      goto LABEL_178;
                    }

                    type metadata accessor for AUAAudioDevice();
                    if (swift_dynamicCastClass())
                    {
                      v133 = v48;
                      v49 = AUAAudioDevice.inputAUAStreams()();
                      if (v49 >> 62)
                      {
                        type metadata accessor for AUAStream(0);
                        v50 = _bridgeCocoaArray<A>(_:)();
                      }

                      else
                      {

                        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                        type metadata accessor for AUAStream(0);
                        v50 = v49;
                      }

                      v51 = AUAAudioDevice.outputAUAStreams()();
                      if (v51 >> 62)
                      {
                        type metadata accessor for AUAStream(0);
                        v52 = _bridgeCocoaArray<A>(_:)();
                      }

                      else
                      {

                        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                        type metadata accessor for AUAStream(0);
                        v52 = v51;
                      }

                      sub_10007DC24(v52);
                      v53 = v50;
                      if (v50 >> 62)
                      {
                        v54 = _CocoaArrayWrapper.endIndex.getter();
                        if (v54)
                        {
LABEL_80:
                          v55 = 0;
                          while (1)
                          {
                            if ((v53 & 0xC000000000000001) != 0)
                            {
                              v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                            }

                            else
                            {
                              if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_173;
                              }

                              v56 = *(v53 + 8 * v55 + 32);
                            }

                            v57 = v56;
                            v58 = v55 + 1;
                            if (__OFADD__(v55, 1))
                            {
                              __break(1u);
LABEL_173:
                              __break(1u);
                              goto LABEL_174;
                            }

                            if (*(*(*&v56[OBJC_IVAR___AUAStream_interface] + 32) + 2) == *(*(v39 + 32) + 2))
                            {
                              break;
                            }

                            ++v55;
                            if (v58 == v54)
                            {
                              goto LABEL_67;
                            }
                          }

                          ActiveStreamingInterface.streamFormats(forSamplingRate:inRateRange:nonStreamingTerminal:)(v116, v119, v57 + OBJC_IVAR___AUAStream_otherTerminal);
                          v38 = v128;
                          if (v123)
                          {

                            return;
                          }

                          if (*(v131 + 16))
                          {
                            v60 = v59;
                            v61 = sub_10001D260(v57);
                            if (v62)
                            {
                              v63 = *(*(v131 + 56) + 8 * v61);
                            }

                            else
                            {
                              v63 = _swiftEmptyArrayStorage;
                            }

                            v59 = v60;
                          }

                          else
                          {
                            v63 = _swiftEmptyArrayStorage;
                          }

                          sub_10007DC3C(v59);
                          v64 = swift_isUniquelyReferenced_nonNull_native();
                          sub_100083DB8(v63, v57, v64);

                          v2 = v131;
                          v37 = v127;
                          goto LABEL_55;
                        }
                      }

                      else
                      {
                        v54 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (v54)
                        {
                          goto LABEL_80;
                        }
                      }

LABEL_67:

                      v37 = v127;
                      v38 = v128;
                      v46 = v43 & 0xC000000000000001;
                      v44 = v125;
                      if (v45 == v125)
                      {
                        break;
                      }
                    }

                    else
                    {

                      if (v45 == v44)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              else
              {
                v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v44)
                {
                  goto LABEL_66;
                }
              }

              v2 = v131;
            }

            else
            {
            }

LABEL_55:
            ;
          }

          while (v38 != v37);
        }
      }

      else
      {
        v37 = *(v118 + 16);
        if (v37)
        {
          goto LABEL_53;
        }
      }

LABEL_34:

      v26 = v115;
      if (v115 == v106)
      {
        goto LABEL_106;
      }
    }
  }

LABEL_107:

  if (active)
  {
    v65 = swift_getObjectType();
    (*(v112 + 24))(v110, 0, v65, v112);
  }

LABEL_161:
  v91 = 1 << *(v2 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & *(v2 + 64);
  v94 = (v91 + 63) >> 6;

  v95 = 0;
  if (v93)
  {
    while (1)
    {
      v96 = v95;
LABEL_168:
      v97 = (v96 << 9) | (8 * __clz(__rbit64(v93)));
      v98 = *(*(v2 + 56) + v97);
      v53 = *(*(v2 + 48) + v97);

      sub_1000ACF28(v99);
      if (v123)
      {
        break;
      }

      v93 &= v93 - 1;

      v95 = v96;
      if (!v93)
      {
        goto LABEL_165;
      }
    }

LABEL_174:

LABEL_175:
  }

  else
  {
LABEL_165:
    while (1)
    {
      v96 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (v96 >= v94)
      {
        goto LABEL_175;
      }

      v93 = *(v2 + 64 + 8 * v96);
      ++v95;
      if (v93)
      {
        goto LABEL_168;
      }
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
  }
}
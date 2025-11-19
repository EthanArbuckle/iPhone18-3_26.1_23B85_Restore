void sub_18F6E9894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  PropertyNotificationDeferrer::~PropertyNotificationDeferrer(va);
  _Unwind_Resume(a1);
}

void PropertyNotificationDeferrer::PropertyNotificationDeferrer(PropertyNotificationDeferrer *this, AURemoteHost *a2)
{
  v3 = a2;
  *this = v3;
  *(this + 8) = 0;
  v4 = [(AURemoteHost *)v3 propertyObserverQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN28PropertyNotificationDeferrerC2EP12AURemoteHost_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v4, block);
}

id PropertyNotificationDeferrer::changedProperties(id *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1738;
  v10 = __Block_byref_object_dispose__1739;
  v11 = 0;
  v2 = [*this propertyObserverQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN28PropertyNotificationDeferrer17changedPropertiesEv_block_invoke;
  v5[3] = &unk_1E72C1C20;
  v5[4] = &v6;
  v5[5] = this;
  dispatch_sync(v2, v5);

  *(this + 8) = 1;
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_18F6E9AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void PropertyNotificationDeferrer::~PropertyNotificationDeferrer(id *this)
{
  v2 = [*this propertyObserverQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN28PropertyNotificationDeferrerD2Ev_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
}

uint64_t ___ZN28PropertyNotificationDeferrerD2Ev_block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    v3 = *v2;
    v4 = [*v2 deferPropertyChangeNotifications] - 1;

    return [v3 setDeferPropertyChangeNotifications:v4];
  }

  return result;
}

uint64_t __Block_byref_object_copy__1738(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN28PropertyNotificationDeferrer17changedPropertiesEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(v1 + 8) == 1)
  {
    __assert_rtn("changedProperties_block_invoke", "AURemoteExtensionContext.mm", 101, "!mPropertiesFetched");
  }

  v3 = *v1;
  v4 = [*v1 deferPropertyChangeNotifications] - 1;
  [v3 setDeferPropertyChangeNotifications:v4];
  if (!v4)
  {
    v5 = [*v1 pendingChangedProperties];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [*v1 _fetchAndClearPendingChangedProperties];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      MEMORY[0x1EEE66BB8]();
    }
  }
}

uint64_t ___ZN28PropertyNotificationDeferrerC2EP12AURemoteHost_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  v2 = [v1 deferPropertyChangeNotifications] + 1;

  return [v1 setDeferPropertyChangeNotifications:v2];
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSArrayEEEU13block_pointerFvDpT_ES9_i_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = applesauce::dispatch::v1::queue::operator*(v3);
  dispatch_source_cancel(v4);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c120_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSArrayEEEU13block_pointerFvDpT_ES9_iEUlS4_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c120_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSArrayEEEU13block_pointerFvDpT_ES9_iEUlS4_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18F6EA118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v8 = v7;

  PropertyNotificationDeferrer::~PropertyNotificationDeferrer(va);
  _Unwind_Resume(a1);
}

void KVOAggregator::removeObserver(KVOAggregator *this, NSObject *a2, NSObject *a3, NSString *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = a4;
  v9 = KVOAggregator::find(this, v7, v8, 0);
  v10 = v9;
  end = this->mRecords.__end_;
  if (end != v9)
  {
    v12 = *(v9 + 6) - 1;
    *(v9 + 6) = v12;
    if (!v12)
    {
      [v7 removeObserver:v23 forKeyPath:v8 context:this];
      v13 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<KVOAggregator::Record *,KVOAggregator::Record *,KVOAggregator::Record *>(v10 + 32, this->mRecords.__end_, v10);
      std::vector<KVOAggregator::Record>::__base_destruct_at_end[abi:ne200100](this, v13);
      end = this->mRecords.__end_;
    }
  }

  for (i = this->mRecords.__begin_; ; i = (i + 32))
  {
    if (i == end)
    {
      i = end;
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained(i + 1);

    if (!WeakRetained)
    {
      break;
    }
  }

  if (i != end)
  {
    for (j = (i + 32); j != end; j = (j + 32))
    {
      v19 = objc_loadWeakRetained(j + 1);

      if (v19)
      {
        *i = *j;
        v20 = objc_loadWeakRetained(j + 1);
        objc_storeWeak(i + 1, v20);

        v21 = *(j + 2);
        *(j + 2) = 0;
        v22 = *(i + 2);
        *(i + 2) = v21;

        *(i + 6) = *(j + 6);
        i = (i + 32);
      }
    }
  }

LABEL_9:
  v16 = this->mRecords.__end_;
  if (v16 != i)
  {
    v17 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<KVOAggregator::Record *,KVOAggregator::Record *,KVOAggregator::Record *>(v16, this->mRecords.__end_, i);
    std::vector<KVOAggregator::Record>::__base_destruct_at_end[abi:ne200100](this, v17);
  }
}

Record *KVOAggregator::find(KVOAggregator *this, NSObject *a2, NSString *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v46 = v7;
  objc_initWeak(&v47, v7);
  v48 = v8;
  v49 = 0;
  begin = this->mRecords.__begin_;
  end = this->mRecords.__end_;
  if (end != this->mRecords.__begin_)
  {
    v11 = (end - this->mRecords.__begin_) >> 5;
    do
    {
      v12 = v11 >> 1;
      v13 = begin + 32 * (v11 >> 1);
      if (*v13 < v46 || *v13 <= v46 && [*(v13 + 2) compare:v48] < 0)
      {
        begin = (v13 + 32);
        v12 = v11 + ~v12;
      }

      v11 = v12;
    }

    while (v12);
    end = this->mRecords.__end_;
  }

  if (end == begin || *begin != v46 || [*(begin + 2) compare:v48])
  {
    if (a4)
    {
      v15 = this->mRecords.__end_;
      cap = this->mRecords.__cap_;
      if (v15 >= cap)
      {
        v29 = this->mRecords.__begin_;
        v30 = ((v15 - this->mRecords.__begin_) >> 5) + 1;
        if (v30 >> 59)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v31 = cap - v29;
        if (v31 >> 4 > v30)
        {
          v30 = v31 >> 4;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFE0)
        {
          v32 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        v53 = this;
        if (v32)
        {
          std::allocator<KVOAggregator::Record>::allocate_at_least[abi:ne200100](v32);
        }

        v33 = begin - v29;
        v34 = (begin - v29) >> 5;
        v35 = 32 * v34;
        v50 = 0;
        v51 = 32 * v34;
        v52 = (32 * v34);
        if (!v34)
        {
          if (v33 < 1)
          {
            v37 = v33 >> 4;
            if (begin == v29)
            {
              v38 = 1;
            }

            else
            {
              v38 = v37;
            }

            v54 = this;
            std::allocator<KVOAggregator::Record>::allocate_at_least[abi:ne200100](v38);
          }

          v36 = ((v33 >> 1) + 16) & 0xFFFFFFFFFFFFFFE0;
          v35 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<KVOAggregator::Record *,KVOAggregator::Record *,KVOAggregator::Record *>(0, v35, v35 - v36);
          v51 -= v36;
          *&v52 = v35;
        }

        *v35 = v46;
        objc_copyWeak((v35 + 8), &v47);
        *(v35 + 16) = v48;
        *(v35 + 24) = v49;
        v39 = v51;
        *&v52 = v52 + 32;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<KVOAggregator::Record>,KVOAggregator::Record*>(this, begin, this->mRecords.__end_, v52);
        v40 = this->mRecords.__begin_;
        v41 = v51;
        *&v52 = v52 + this->mRecords.__end_ - begin;
        this->mRecords.__end_ = begin;
        v42 = (v41 + v40 - begin);
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<KVOAggregator::Record>,KVOAggregator::Record*>(this, v40, begin, v42);
        v43 = this->mRecords.__begin_;
        this->mRecords.__begin_ = v42;
        v44 = this->mRecords.__cap_;
        *&this->mRecords.__end_ = v52;
        *&v52 = v43;
        *(&v52 + 1) = v44;
        v50 = v43;
        v51 = v43;
        std::__split_buffer<KVOAggregator::Record>::~__split_buffer(&v50);
        begin = v39;
      }

      else if (begin == v15)
      {
        *v15 = v46;
        objc_copyWeak(v15 + 1, &v47);
        *(v15 + 2) = v48;
        *(v15 + 6) = v49;
        this->mRecords.__end_ = (v15 + 32);
      }

      else
      {
        v16 = (v15 - 32);
        v17 = this->mRecords.__end_;
        if (v15 >= 0x20)
        {
          v17 = this->mRecords.__end_;
          do
          {
            *v17 = *v16;
            objc_moveWeak(v17 + 1, v16 + 1);
            v18 = v16[2];
            v16[2] = 0;
            *(v17 + 2) = v18;
            *(v17 + 6) = *(v16 + 6);
            v17 = (v17 + 32);
            v16 += 4;
          }

          while (v16 < v15);
        }

        this->mRecords.__end_ = v17;
        if (v15 != (begin + 32))
        {
          v19 = 0;
          do
          {
            v20 = v15 + v19;
            *(v15 + v19 - 32) = *(v15 + v19 - 64);
            WeakRetained = objc_loadWeakRetained((v15 + v19 - 56));
            objc_storeWeak((v15 + v19 - 24), WeakRetained);

            v22 = *(v15 + v19 - 48);
            *(v20 - 6) = 0;
            v23 = *(v15 + v19 - 16);
            *(v20 - 2) = v22;

            *(v20 - 2) = *(v20 - 10);
            v19 -= 32;
          }

          while (begin - v15 + 32 != v19);
          v17 = this->mRecords.__end_;
        }

        v24 = 4;
        if (begin > &v46 || v17 <= &v46)
        {
          v24 = 0;
        }

        *begin = (&v46)[v24];
        if (begin <= &v46 && v17 > &v46)
        {
          v25 = &v51;
        }

        else
        {
          v25 = &v47;
        }

        if (begin <= &v46 && v17 > &v46)
        {
          v26 = 6;
        }

        else
        {
          v26 = 2;
        }

        if (begin <= &v46 && v17 > &v46)
        {
          v27 = 7;
        }

        else
        {
          v27 = 3;
        }

        v28 = objc_loadWeakRetained(v25);
        objc_storeWeak(begin + 1, v28);

        objc_storeStrong(begin + 2, (&v46)[v26]);
        *(begin + 6) = (&v46)[v27];
      }
    }

    else
    {
      begin = this->mRecords.__end_;
    }
  }

  objc_destroyWeak(&v47);
  return begin;
}

void sub_18F6EA8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<KVOAggregator::Record>::~__split_buffer(va);

  objc_destroyWeak(v7);
  _Unwind_Resume(a1);
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<KVOAggregator::Record *,KVOAggregator::Record *,KVOAggregator::Record *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      WeakRetained = objc_loadWeakRetained((v5 + 8));
      objc_storeWeak((a3 + 8), WeakRetained);

      v7 = *(v5 + 16);
      *(v5 + 16) = 0;
      v8 = *(a3 + 16);
      *(a3 + 16) = v7;

      *(a3 + 24) = *(v5 + 24);
      a3 += 32;
      v5 += 32;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::allocator<KVOAggregator::Record>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<KVOAggregator::Record>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;

    objc_destroyWeak((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<KVOAggregator::Record>,KVOAggregator::Record*>(uint64_t a1, id *a2, id *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      *a4 = *v7;
      objc_moveWeak((a4 + 8), v7 + 1);
      v8 = v7[2];
      v7[2] = 0;
      *(a4 + 16) = v8;
      *(a4 + 24) = *(v7 + 6);
      v7 += 4;
      a4 += 32;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2 + 1;
      do
      {

        objc_destroyWeak(v9);
        v10 = v9 + 3;
        v9 += 4;
      }

      while (v10 != a3);
    }
  }
}

void KVOAggregator::addObserver(KVOAggregator *this, NSObject *a2, NSObject *a3, NSString *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = KVOAggregator::find(this, v7, v8, 1);
  v10 = *(v9 + 6);
  *(v9 + 6) = v10 + 1;
  if (!v10)
  {
    [v7 addObserver:v11 forKeyPath:v8 options:0 context:this];
  }
}

void sub_18F6EADC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v8 = v7;

  PropertyNotificationDeferrer::~PropertyNotificationDeferrer(va);
  _Unwind_Resume(a1);
}

void sub_18F6EAF64(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},objc_object * {__strong}>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  if ((*a1 & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP11objc_objectEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c147_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP11objc_objectEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E__e20_v24__0__NSError_8_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v8 = _Block_copy(v3);
    v10 = v7;
    v11 = _Block_copy(v8);
    v4 = _Block_copy(aBlock);

    v5 = v10;
    v10 = 0;

    v3 = v4;
  }

  return v3;
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP11objc_objectEEEU13block_pointerFvDpT_ESC_i_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = applesauce::dispatch::v1::queue::operator*(v6);
  dispatch_source_cancel(v7);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c147_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP11objc_objectEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c147_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP11objc_objectEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18F6EB2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v13 = v12;

  PropertyNotificationDeferrer::~PropertyNotificationDeferrer(&a9);
  _Unwind_Resume(a1);
}

uint64_t maintainWakeMonitor(int a1)
{
  pthread_mutex_lock(&maintainWakeMonitor(BOOL)::lock);
  v2 = maintainWakeMonitor(BOOL)::count;
  if (a1)
  {
    ++maintainWakeMonitor(BOOL)::count;
    if (!v2)
    {
      getpid();
      proc_disable_wakemon();
    }
  }

  else
  {
    --maintainWakeMonitor(BOOL)::count;
    if (v2 == 1)
    {
      getpid();
      proc_set_wakemon_defaults();
    }
  }

  return pthread_mutex_unlock(&maintainWakeMonitor(BOOL)::lock);
}

void sub_18F6EBD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, caulk::mach::details *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    if (v31 < 0)
    {
      operator delete(__p);
    }

    if (*(v33 + 200) == 1)
    {
      a26 = (v33 + 168);
      std::vector<audioipc::SharedAudioBuffers::Element>::__destroy_vector::operator()[abi:ne200100](&a26);
    }

    audioipc::eventlink_primitive::~eventlink_primitive((v33 + 120));
    caulk::ipc::mapped_memory::reset((v33 + 64));
    if (*(v33 + 56) == 1)
    {
      caulk::thread::~thread(v32);
    }

    v35 = *(v33 + 32);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    BaseOpaqueObject::~BaseOpaqueObject(v33);
    MEMORY[0x193ADF220](v33, 0x10E3C4077E7D444);

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    v36 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10875 userInfo:0];
    v37 = v36;

    JUMPOUT(0x18F6EBCA8);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjEEEU13block_pointerFvDpT_ES9_i_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = applesauce::dispatch::v1::queue::operator*(v3);
  dispatch_source_cancel(v4);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjEEEU13block_pointerFvDpT_ES9_iEUlS4_jE_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjEEEU13block_pointerFvDpT_ES9_iEUlS4_jE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18F6EC834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  PropertyNotificationDeferrer::~PropertyNotificationDeferrer(&a14);
  _Unwind_Resume(a1);
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrormmmU8__strongP6NSDatabjEEEU13block_pointerFvDpT_ESC_i_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  v11 = a2;
  v9 = *(a1 + 32);
  v10 = applesauce::dispatch::v1::queue::operator*(v9);
  dispatch_source_cancel(v10);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c151_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrormmmU8__strongP6NSDatabjEEEU13block_pointerFvDpT_ESC_iEUlS4_mmmS7_bjE_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c151_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrormmmU8__strongP6NSDatabjEEEU13block_pointerFvDpT_ESC_iEUlS4_mmmS7_bjE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id MarshalBusArray(AUAudioUnitBusArray *a1, unsigned int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v18 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v16;
  v3 = [(AUAudioUnitBusArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v20;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = objc_alloc_init(AUAudioUnitBus_XPC);
        v8->_scope = a2;
        v8->_element = v4;
        v9 = [v7 format];
        format = v8->_format;
        v8->_format = v9;

        -[AUAudioUnitBus_XPC setEnabled:](v8, "setEnabled:", [v7 isEnabled]);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v7 name];
          [(AUAudioUnitBus *)v8 setName:v11];
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = [v7 supportedChannelLayoutTags];
          supportedChannelLayoutTags = v8->_supportedChannelLayoutTags;
          v8->_supportedChannelLayoutTags = v12;
        }

        [v18 addObject:v8];

        ++v4;
      }

      v3 = [(AUAudioUnitBusArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v3);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v18;
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbbU8__strongP7NSArrayS8_bbimmEEEU13block_pointerFvDpT_ESC_i_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v14 = a2;
  v12 = *(a1 + 32);
  v13 = applesauce::dispatch::v1::queue::operator*(v12);
  dispatch_source_cancel(v13);

  (*(*(a1 + 40) + 16))(*(a1 + 40), v14, a3);
}

void __destroy_helper_block_ea8_32c162_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbbU8__strongP7NSArrayS8_bbimmEEEU13block_pointerFvDpT_ESC_iEUlS4_bbS7_S7_bbimmE_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c162_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbbU8__strongP7NSArrayS8_bbimmEEEU13block_pointerFvDpT_ESC_iEUlS4_bbS7_S7_bbimmE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18F6EDCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::log_category::log_category(caulk::log_category *this, const char *a2, const char *a3)
{
  auhs_log_category(void)::category = 0;
  unk_1EAD314B0 = 0;
  auhs_log_category(void)::category = os_log_create(this, a2);

  return MEMORY[0x1EEE66BB8]();
}

id native_instruments_window_workaround(AudioComponentDescription const&)::$_0::operator() const(objc_class *)::{lambda(objc_object *,objc_selector *,NSString *)#1}::__invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if ([v8 isEqualToString:@"canBecomeKeyWindow"])
  {
    Class = object_getClass(v7);
    MethodImplementation = class_getMethodImplementation(Class, native_instruments_window_workaround(AudioComponentDescription const&)::$_0::operator() const(objc_class *)::sel_canBecomeKeyWindow);
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{(MethodImplementation)(v7, a2)}];
  }

  else
  {
    if ([v8 isEqualToString:@"canBecomeMainWindow"])
    {
      v12 = object_getClass(v7);
      v13 = class_getMethodImplementation(v12, native_instruments_window_workaround(AudioComponentDescription const&)::$_0::operator() const(objc_class *)::sel_canBecomeMainWindow);
      [MEMORY[0x1E696AD98] numberWithBool:{(v13)(v7, a2)}];
    }

    else
    {
      native_instruments_window_workaround(AudioComponentDescription const&)::$_0::operator() const(objc_class *)::imp_valueForKey(v7, a2, v8);
    }
    v11 = ;
  }

  v14 = v11;

  return v14;
}

void sub_18F6EE09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);

  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v8 - 56));
  _Unwind_Resume(a1);
}

void sub_18F6EE1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void sub_18F6EE328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void sub_18F6EE4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AURemoteHost;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void KVOAggregator::removeAllObservations(KVOAggregator *this, NSObject *a2)
{
  v8 = a2;
  begin = this->mRecords.__begin_;
  end = this->mRecords.__end_;
  if (this->mRecords.__begin_ != end)
  {
    v5 = begin + 8;
    do
    {
      WeakRetained = objc_loadWeakRetained(v5);
      [WeakRetained removeObserver:v8 forKeyPath:*(v5 + 1) context:this];

      v7 = (v5 + 24);
      v5 += 32;
    }

    while (v7 != end);
    begin = this->mRecords.__begin_;
  }

  std::vector<KVOAggregator::Record>::__base_destruct_at_end[abi:ne200100](this, begin);
}

void sub_18F6EE784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_18F6EE9C4(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<auoop::WorkgroupMirror>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0326C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F6EF33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

Class ___ZL24getAUViewControllerClassv_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!CoreAudioKitLibraryCore(char **)::frameworkLibrary)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = ___ZL23CoreAudioKitLibraryCorePPc_block_invoke_1773;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v9 = xmmword_1E72BA960;
    v10 = 0;
    CoreAudioKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!CoreAudioKitLibraryCore(char **)::frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreAudioKitLibrary()"];
    [v4 handleFailureInFunction:v5 file:@"AUAudioUnit_Internal.h" lineNumber:359 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("AUViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAUViewControllerClass()_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"AUAudioUnit_Internal.h" lineNumber:360 description:{@"Unable to find class %s", "AUViewController"}];

LABEL_10:
    __break(1u);
  }

  getAUViewControllerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL23CoreAudioKitLibraryCorePPc_block_invoke_1773(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreAudioKitLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CA::ADMBuilder::Impl::parse_track_format(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  if (!strcmp(__s1, "audioStreamFormatIDRef"))
  {
    operator new();
  }

  return 1;
}

uint64_t CADeprecated::TSingleton<ExtAudioFileAsyncWriteMgr>::instance()
{
  if (atomic_load_explicit(&CADeprecated::TSingleton<ExtAudioFileAsyncWriteMgr>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&CADeprecated::TSingleton<ExtAudioFileAsyncWriteMgr>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<ExtAudioFileAsyncWriteMgr>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<ExtAudioFileAsyncWriteMgr>::sInstance;
}

uint64_t ExtAudioFile::PerformAsyncWrites(ExtAudioFile *this, int a2)
{
  v4 = 0;
  while (1)
  {
    v16 = 0;
    *&v18.__val_ = AT::RingBuffer::GetTimeBounds(*(*(this + 42) + 48), &v17, &v16);
    CheckRingBufferResult(v18, -66570, "get ring buffer bounds on fetch");
    v5 = v16 - *(this + 48) >= *(this + 86) ? *(this + 86) : v16 - *(this + 48);
    v6 = a2 ? 1 : *(this + 86);
    if (v6 <= v5)
    {
      break;
    }

LABEL_16:
    if (!v5 || (a2 & 1) == 0)
    {
      return v4 & 1;
    }
  }

  v7 = *(this + 45);
  if (!*(v7 + 8))
  {
    memcpy((v7 + 24), (*(this + 44) + 24), *(this + 44) + 16 * *(*(this + 44) + 24) - (*(this + 44) + 24) + 32);
    v8 = *(this + 45);
    if ((a2 & 1) == 0)
    {
      LODWORD(v5) = ExtAudioFile::AlignIO(this, v5);
    }

    *&v19.__val_ = AT::RingBuffer::Fetch(*(this + 42), &v8[1], v5, *(this + 48));
    CheckRingBufferResult(v19, -66570, "fetch ring buffer");
    *(this + 48) += v5;
    do
    {
      v9 = ExtAudioFile::Write(this, v5, v8 + 1);
      if (!v9)
      {
        break;
      }

      usleep(0x3D090u);
    }

    while (v9 != -66559);
    v4 = 1;
    goto LABEL_16;
  }

  v11 = CAAssertRtn();
  v13 = v12;
  v14 = __cxa_begin_catch(v11);
  if (v13 == 2)
  {
    v15 = v14[66];
    __cxa_end_catch();
    if (!v15)
    {
      return v4 & 1;
    }
  }

  else
  {
    __cxa_end_catch();
    v15 = -1;
  }

  if (!*(this + 92))
  {
    *(this + 92) = v15;
  }

  return v4 & 1;
}

uint64_t ExtAudioFile::WritePacketsFromCallback(ExtAudioFile *this, int (*inInputDataProcUserData)(OpaqueAudioConverter *, unsigned int *, AudioBufferList *, AudioStreamPacketDescription **, void *), void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  do
  {
    v5 = *(this + 22);
    ioOutputDataPacketSize = *(this + 23);
    *(this + 27) = v5;
    v7 = *(this + 18);
    v6 = *(this + 19);
    v8 = *(this + 16);
    if (v7)
    {
      v9 = AudioConverterFillComplexBufferWithPacketDependencies(v6, ExtAudioFile::WriteInputProc, inInputDataProcUserData, &ioOutputDataPacketSize, this + 96, v8, *(this + 18));
    }

    else
    {
      v9 = AudioConverterFillComplexBuffer(v6, ExtAudioFile::WriteInputProc, inInputDataProcUserData, &ioOutputDataPacketSize, this + 4, v8);
    }

    v10 = v9;
    if (v9)
    {
      v11 = v9 == 1752656245;
    }

    else
    {
      v11 = 1;
    }

    if (!v11 && v9 != 1852139886)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v33, v10);
        *buf = 136315906;
        *&buf[4] = "ExtAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1695;
        v35 = 2080;
        v36 = v33;
        v37 = 2080;
        v38 = "convert audio packets (write)";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "convert audio packets (write)", v10);
    }

    if (!ioOutputDataPacketSize)
    {
      break;
    }

    v13 = *(this + 14);
    if (*(this + 416) == 1)
    {
      v14 = mach_absolute_time();
    }

    else
    {
      v14 = 0;
    }

    v15 = *(this + 2);
    v16 = *(this + 29);
    v17 = *(this + 27);
    v18 = *(this + 16);
    if (v7)
    {
      v19 = AudioFileWritePacketsWithDependencies(v15, v16, v17, v18, *(this + 18), *(this + 6), &ioOutputDataPacketSize, v13);
    }

    else
    {
      v19 = AudioFileWritePackets(v15, v16, v17, v18, *(this + 6), &ioOutputDataPacketSize, v13);
    }

    if (v19)
    {
      v27 = *(this + 19);
      *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterReset::$_0>;
      *&buf[8] = v33;
      v28 = v19;
      with_resolved(v27, buf);
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v33, v28);
        *buf = 136315906;
        *&buf[4] = "ExtAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1726;
        v35 = 2080;
        v36 = v33;
        v37 = 2080;
        v38 = "write audio file";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v29 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v29, "write audio file", v28);
    }

    if (*(this + 416) == 1)
    {
      *(this + 53) += mach_absolute_time() - v14;
    }

    v20 = ioOutputDataPacketSize;
    *(this + 6) += ioOutputDataPacketSize;
    v21 = *(this + 47);
    if (v21)
    {
      v22 = *(this + 7) + (v21 * v20);
LABEL_28:
      *(this + 7) = v22;
      continue;
    }

    if (v20)
    {
      v22 = *(this + 7);
      v23 = (*(this + 16) + 8);
      do
      {
        v24 = *v23;
        v23 += 4;
        v22 += v24;
        --v20;
      }

      while (v20);
      goto LABEL_28;
    }
  }

  while (!v10);
  if (v10 == 1852139886)
  {
    v10 = 0;
  }

  else if (v10 == 1752656245)
  {
    if (*(this + 328))
    {
      v10 = 4294900737;
    }

    else
    {
      v10 = 4294900736;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t ExtAudioFile::GetFilePacketTable(AudioFileID *this, AudioFilePacketTableInfo *outPropertyData)
{
  ioDataSize = 16;
  result = AudioFileGetProperty(this[2], 0x706E666Fu, &ioDataSize, outPropertyData);
  if (!result)
  {
    if (*(this + 392) != 1)
    {
      return 0;
    }

    v5 = outPropertyData->mNumberValidFrames + outPropertyData->mPrimingFrames + outPropertyData->mRemainderFrames;
    v6 = *(this + 102);
    if (v6 != -2 && *(this + 103) != -2 && this[50] != -2)
    {
      v9 = 0;
      v8 = 0;
LABEL_11:
      if (v6 == -1)
      {
        goto LABEL_16;
      }

      if (v6 == -2)
      {
        if (v9)
        {
          goto LABEL_16;
        }

        v6 = 0;
      }

      outPropertyData->mPrimingFrames = v6;
LABEL_16:
      v10 = *(this + 103);
      if (v10 != -1)
      {
        if (v10 != -2)
        {
LABEL_20:
          outPropertyData->mRemainderFrames = v10;
          goto LABEL_21;
        }

        if (!v9)
        {
          v10 = 0;
          goto LABEL_20;
        }
      }

LABEL_21:
      v11 = this[50];
      if (!v11)
      {
        v11 = v5 - (outPropertyData->mPrimingFrames + outPropertyData->mRemainderFrames);
LABEL_28:
        result = 0;
        outPropertyData->mNumberValidFrames = v11;
        return result;
      }

      if (v11 != -1)
      {
        if (v11 == -2)
        {
          v11 = v8 - (outPropertyData->mPrimingFrames + outPropertyData->mRemainderFrames);
        }

        goto LABEL_28;
      }

      return 0;
    }

    v12 = 0;
    ioDataSize = 8;
    result = AudioFileGetProperty(this[2], 0x70636E74u, &ioDataSize, &v12);
    v7 = *(this + 47);
    if (!v7)
    {
      return 2003334207;
    }

    if (!result)
    {
      v8 = v12 * v7;
      v9 = v5 == v8;
      v6 = *(this + 102);
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t ExtAudioFile::CopyEncoderCookieToFile(ExtAudioFile *this)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = *(this + 37);
  if (v2)
  {
    MEMORY[0x193ADF1F0](v2, 0x1000C8077774924);
  }

  v6 = 0;
  *(this + 37) = 0;
  *(this + 76) = 0;
  v3 = *(this + 19);
  v9 = 1668114275;
  v7 = 0;
  *isWritable = &v6;
  v12[0] = &v9;
  v12[1] = isWritable;
  v12[2] = &v7;
  *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetPropertyInfo::$_0>;
  v11 = v12;
  result = with_resolved(v3, buf);
  if (!result)
  {
    result = v6;
    if (v6)
    {
      operator new[]();
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void CAXException::CAXException(CAXException *this, const char *__s, int a3)
{
  *this = MEMORY[0x1E69E5050] + 16;
  *(this + 66) = a3;
  if (__s)
  {
    if (strlen(__s) < 0x100)
    {
      strlcpy(this + 8, __s, 0x100uLL);
    }

    else
    {
      v5 = *__s;
      v6 = *(__s + 1);
      v7 = *(__s + 2);
      *(this + 56) = *(__s + 3);
      *(this + 40) = v7;
      *(this + 24) = v6;
      *(this + 8) = v5;
      v8 = *(__s + 4);
      v9 = *(__s + 5);
      v10 = *(__s + 6);
      *(this + 120) = *(__s + 7);
      *(this + 104) = v10;
      *(this + 88) = v9;
      *(this + 72) = v8;
      v11 = *(__s + 8);
      v12 = *(__s + 9);
      v13 = *(__s + 10);
      *(this + 184) = *(__s + 11);
      *(this + 168) = v13;
      *(this + 152) = v12;
      *(this + 136) = v11;
      v14 = *(__s + 12);
      v15 = *(__s + 13);
      v16 = *(__s + 14);
      *(this + 247) = *(__s + 239);
      *(this + 232) = v16;
      *(this + 216) = v15;
      *(this + 200) = v14;
      *(this + 263) = 0;
    }
  }

  else
  {
    *(this + 8) = 0;
  }
}

uint64_t ExtAudioFile::WriteInputProc(ExtAudioFile *this, OpaqueAudioConverter *a2, unsigned int *__dst, AudioBufferList *a4, AudioStreamPacketDescription **a5, void *a6)
{
  if (*(a5 + 30) == 1)
  {
    *a2 = 0;
    v8 = *__dst;
    if (v8)
    {
      v9 = (v8 + 3) & 0x1FFFFFFFCLL;
      v10 = vdupq_n_s64(v8 - 1);
      v11 = xmmword_18F9016B0;
      v12 = xmmword_18F9016C0;
      v13 = __dst + 11;
      v14 = vdupq_n_s64(4uLL);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v10, v12));
        if (vuzp1_s16(v15, *v10.i8).u8[0])
        {
          *(v13 - 8) = 0;
        }

        if (vuzp1_s16(v15, *&v10).i8[2])
        {
          *(v13 - 4) = 0;
        }

        if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11))).i32[1])
        {
          *v13 = 0;
          v13[4] = 0;
        }

        v11 = vaddq_s64(v11, v14);
        v12 = vaddq_s64(v12, v14);
        v13 += 16;
        v9 -= 4;
      }

      while (v9);
    }

    *(__dst + 2) = 0;
    result = 0;
    if (a4)
    {
      *&a4->mNumberBuffers = 0;
    }

    return result;
  }

  v18 = *(a5 + 78);
  if (!v18)
  {
    return 1852139886;
  }

  memcpy(__dst, &a5[40][1].mVariableFramesInPacket, (16 * a5[40][1].mVariableFramesInPacket) | 8);
  v19 = a5[40];
  if (*&v19->mVariableFramesInPacket)
  {
LABEL_25:
    v26 = CAAssertRtn();
    return AT::RingBuffer::GetTimeBounds(v26, v27, v28);
  }

  mVariableFramesInPacket = v19[1].mVariableFramesInPacket;
  if (mVariableFramesInPacket)
  {
    v21 = (*(a5 + 62) * v18);
    p_mVariableFramesInPacket = &v19[2].mVariableFramesInPacket;
    while (1)
    {
      v23 = *(p_mVariableFramesInPacket - 1);
      v24 = v23 >= v21;
      v25 = v23 - v21;
      if (!v24)
      {
        break;
      }

      *p_mVariableFramesInPacket += v21;
      *(p_mVariableFramesInPacket - 1) = v25;
      p_mVariableFramesInPacket += 4;
      if (!--mVariableFramesInPacket)
      {
        goto LABEL_20;
      }
    }

    CAAssertRtn();
    goto LABEL_25;
  }

LABEL_20:
  *a2 = v18;
  if (a4)
  {
    *&a4->mNumberBuffers = 0;
  }

  result = 0;
  *(a5 + 78) -= v18;
  *(a5 + 328) = 1;
  return result;
}

uint64_t AT::RingBuffer::GetTimeBounds(AT::RingBuffer *this, uint64_t *a2, uint64_t *a3)
{
  v3 = 8;
  while (1)
  {
    v4 = atomic_load(this + 236);
    v5 = this + 24 * (v4 & 0x1F) + 176;
    v6 = *(v5 + 1);
    if (*(v5 + 4) == v4)
    {
      break;
    }

    if (!--v3)
    {
      return 4;
    }
  }

  *a2 = *v5;
  *a3 = v6;
  std::system_category();
  return 0;
}

uint64_t CheckRingBufferResult(std::error_code a1, int a2, const char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = a1;
  if (a1.__val_)
  {
    std::error_code::message(&v9, &v10);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }

    snprintf(__str, 0x80uLL, "%s ring buffer error: %s", a3, v6);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, __str, a2);
  }

  v3 = *MEMORY[0x1E69E9840];
  return *&a1.__val_;
}

void ___ZN25ExtAudioFileAsyncWriteMgr12RemoveClientEP12ExtAudioFile_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock(v1);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  std::mutex::unlock(v1);
  if (v2 == v3)
  {

    std::condition_variable::notify_one((v1 + 64));
  }
}

uint64_t ExtAudioFile::FileFormatChanged(ExtAudioFile *this, CFURLRef inFileRef, const AudioStreamBasicDescription *inFileType, AudioFileFlags inFlags)
{
  v53 = *MEMORY[0x1E69E9840];
  if ((*(this + 8) & 0xFFFFFFFE) != 2)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&inFormat, 0xFFFEFBFB);
      LODWORD(buf.mSampleRate) = 136315906;
      *(&buf.mSampleRate + 4) = "ExtAudioFile.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 307;
      HIWORD(buf.mBytesPerPacket) = 2080;
      *&buf.mFramesPerPacket = &inFormat;
      LOWORD(buf.mChannelsPerFrame) = 2080;
      *(&buf.mChannelsPerFrame + 2) = "new file not prepared";
      _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "new file not prepared", -66565);
  }

  v5 = inFileType;
  size = 0;
  v8 = this + 168;
  v9 = *(this + 184);
  *&buf.mSampleRate = *(this + 168);
  *&buf.mBytesPerPacket = v9;
  *&buf.mBitsPerChannel = *(this + 25);
  v10 = *(this + 19);
  if (v10)
  {
    size = 40;
    v11 = *v8;
    v46 = 1633906532;
    v47[0] = &size;
    size_4 = v8;
    *v48 = &v46;
    *&v48[8] = v47;
    *&v48[16] = &size_4;
    *&inFormat.mSampleRate = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
    *&inFormat.mFormatID = v48;
    v12 = with_resolved(v10, &inFormat);
    if (v12)
    {
      v32 = v12;
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v48, v32);
        LODWORD(inFormat.mSampleRate) = 136315906;
        *(&inFormat.mSampleRate + 4) = "ExtAudioFile.cpp";
        LOWORD(inFormat.mFormatFlags) = 1024;
        *(&inFormat.mFormatFlags + 2) = 323;
        HIWORD(inFormat.mBytesPerPacket) = 2080;
        *&inFormat.mFramesPerPacket = v48;
        LOWORD(inFormat.mChannelsPerFrame) = 2080;
        *(&inFormat.mChannelsPerFrame + 2) = "get audio converter's output stream description";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &inFormat, 0x26u);
      }

      v33 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v33, "get audio converter's output stream description", v32);
    }

    if (*v8 == 0.0)
    {
      *v8 = v11;
    }

    v13 = *(this + 19);
    v46 = 1868786720;
    v47[0] = &size;
    size_4 = 0;
    *v48 = &v46;
    *&v48[8] = v47;
    *&v48[16] = &size_4;
    *&inFormat.mSampleRate = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetPropertyInfo::$_0>;
    *&inFormat.mFormatID = v48;
    if (!with_resolved(v13, &inFormat) && size)
    {
      v14 = malloc_type_malloc(size, 0x803CA496uLL);
      if (!v14 && size)
      {
        v36 = __cxa_allocate_exception(8uLL);
        v37 = std::bad_alloc::bad_alloc(v36);
      }

      v15 = *(this + 19);
      v46 = 1868786720;
      v47[0] = &size;
      size_4 = v14;
      *v48 = &v46;
      *&v48[8] = v47;
      *&v48[16] = &size_4;
      *&inFormat.mSampleRate = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
      *&inFormat.mFormatID = v48;
      v16 = with_resolved(v15, &inFormat);
      if (v16)
      {
        v38 = v16;
        free(v14);
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v48, v38);
          LODWORD(inFormat.mSampleRate) = 136315906;
          *(&inFormat.mSampleRate + 4) = "ExtAudioFile.cpp";
          LOWORD(inFormat.mFormatFlags) = 1024;
          *(&inFormat.mFormatFlags + 2) = 336;
          HIWORD(inFormat.mBytesPerPacket) = 2080;
          *&inFormat.mFramesPerPacket = v48;
          LOWORD(inFormat.mChannelsPerFrame) = 2080;
          *(&inFormat.mChannelsPerFrame + 2) = "couldn't get audio converter's output channel layout";
          _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &inFormat, 0x26u);
        }

        v39 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v39, "couldn't get audio converter's output channel layout", v38);
      }

      CAAudioChannelLayout::operator=();
      free(v14);
    }
  }

  if (*(this + 8) == 2)
  {
    v17 = *(v8 + 1);
    *&inFormat.mSampleRate = *v8;
    *&inFormat.mBytesPerPacket = v17;
    *&inFormat.mBitsPerChannel = *(v8 + 4);
    if (inFormat.mSampleRate == 0.0)
    {
      inFormat.mSampleRate = 44100.0;
    }

    v18 = AudioFileCreateWithURL(inFileRef, v5, &inFormat, inFlags, this + 2);
    if (v18)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v47, v18);
        *v48 = 136315906;
        *&v48[4] = "ExtAudioFile.cpp";
        *&v48[12] = 1024;
        *&v48[14] = 354;
        *&v48[18] = 2080;
        *&v48[20] = v47;
        v49 = 2080;
        v50 = "create audio file";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", v48, 0x26u);
      }

      v35 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v35, "create audio file", v18);
    }

    *(this + 8) = 3;
    *(this + 28) = 1;
  }

  else if (!CAStreamBasicDescription::IsEquivalent(v8, &buf, inFileType))
  {
    v19 = *v8;
    if (*v8 == 0.0)
    {
      v19 = *(this + 28);
      *(this + 21) = v19;
    }

    if (v19 == 0.0)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v48, 0xFFFEFBFA);
        LODWORD(inFormat.mSampleRate) = 136315906;
        *(&inFormat.mSampleRate + 4) = "ExtAudioFile.cpp";
        LOWORD(inFormat.mFormatFlags) = 1024;
        *(&inFormat.mFormatFlags + 2) = 364;
        HIWORD(inFormat.mBytesPerPacket) = 2080;
        *&inFormat.mFramesPerPacket = v48;
        LOWORD(inFormat.mChannelsPerFrame) = 2080;
        *(&inFormat.mChannelsPerFrame + 2) = "file's sample rate is 0";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &inFormat, 0x26u);
      }

      v41 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v41, "file's sample rate is 0", -66566);
    }

    v20 = AudioFileSetProperty(*(this + 2), 0x64666D74u, 0x28u, v8);
    if (v20)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v48, v20);
        LODWORD(inFormat.mSampleRate) = 136315906;
        *(&inFormat.mSampleRate + 4) = "ExtAudioFile.cpp";
        LOWORD(inFormat.mFormatFlags) = 1024;
        *(&inFormat.mFormatFlags + 2) = 365;
        HIWORD(inFormat.mBytesPerPacket) = 2080;
        *&inFormat.mFramesPerPacket = v48;
        LOWORD(inFormat.mChannelsPerFrame) = 2080;
        *(&inFormat.mChannelsPerFrame + 2) = "couldn't update file's data format";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &inFormat, 0x26u);
      }

      v42 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v42, "couldn't update file's data format", v20);
    }
  }

  inPropertyData = 1;
  AudioFileSetProperty(*(this + 2), 0x64737A75u, 4u, &inPropertyData);
  if (*(this + 19))
  {
    ExtAudioFile::CopyEncoderCookieToFile(this);
    size = 4;
    v21 = *(this + 19);
    v46 = 2020569203;
    v47[0] = &size;
    size_4 = this + 280;
    *v48 = &v46;
    *&v48[8] = v47;
    *&v48[16] = &size_4;
    *&inFormat.mSampleRate = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
    *&inFormat.mFormatID = v48;
    v22 = with_resolved(v21, &inFormat);
    if (v22)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v48, v22);
        LODWORD(inFormat.mSampleRate) = 136315906;
        *(&inFormat.mSampleRate + 4) = "ExtAudioFile.cpp";
        LOWORD(inFormat.mFormatFlags) = 1024;
        *(&inFormat.mFormatFlags + 2) = 377;
        HIWORD(inFormat.mBytesPerPacket) = 2080;
        *&inFormat.mFramesPerPacket = v48;
        LOWORD(inFormat.mChannelsPerFrame) = 2080;
        *(&inFormat.mChannelsPerFrame + 2) = "get audio converter's maximum output packet size";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &inFormat, 0x26u);
      }

      v34 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v34, "get audio converter's maximum output packet size", v22);
    }

    if (*(this + 44) == 1634754915)
    {
      v23 = *(this + 19);
      LODWORD(size_4) = 1634955366;
      v46 = 4;
      v47[0] = this + 288;
      *v48 = &size_4;
      *&v48[8] = &v46;
      *&v48[16] = v47;
      *&inFormat.mSampleRate = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
      *&inFormat.mFormatID = v48;
      v24 = with_resolved(v23, &inFormat);
      if (v24)
      {
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v48, v24);
          LODWORD(inFormat.mSampleRate) = 136315906;
          *(&inFormat.mSampleRate + 4) = "ExtAudioFile.cpp";
          LOWORD(inFormat.mFormatFlags) = 1024;
          *(&inFormat.mFormatFlags + 2) = 382;
          HIWORD(inFormat.mBytesPerPacket) = 2080;
          *&inFormat.mFramesPerPacket = v48;
          LOWORD(inFormat.mChannelsPerFrame) = 2080;
          *(&inFormat.mChannelsPerFrame + 2) = "set default encoder ASP frequency";
          _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &inFormat, 0x26u);
        }

        v40 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v40, "set default encoder ASP frequency", v24);
      }
    }

    ExtAudioFile::AllocateBuffers(this, 1);
  }

  else
  {
    ExtAudioFile::InitFileMaxPacketSize(this);
  }

  v26 = *(this + 33);
  if (v26)
  {
    if (CAAudioChannelLayout::NumberChannels((v26 + 16), v25))
    {
      LODWORD(inFormat.mSampleRate) = 0;
      if (!AudioFileGetPropertyInfo(*(this + 2), 0x636D6170u, 0, &inFormat))
      {
        if (LODWORD(inFormat.mSampleRate))
        {
          v27 = *(this + 33);
          if (v27)
          {
            v28 = *(v27 + 12);
          }

          else
          {
            v28 = 0;
          }

          if (AudioFileSetProperty(*(this + 2), 0x636D6170u, v28, (v27 + 16)) && *MEMORY[0x1E69E5008])
          {
            (*MEMORY[0x1E69E5008])("could not set the file's channel layout");
          }
        }
      }
    }
  }

  result = ExtAudioFile::UpdateInternals(this);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL CA::Implementation::EquivalentFormatFlags(CA::Implementation *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v3 = *(this + 3);
  if (*(this + 2) != 1819304813)
  {
    return v3 == a2->mFormatFlags;
  }

  v4 = v3 & 0x7FFFFFFF;
  if ((v3 & 0x7FFFFFFF) == 0)
  {
    v4 = *(this + 3);
  }

  v5 = v4 & 0xFFFFFFBF;
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    if ((v3 & 0x20) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(this + 7);
    }

    if (v8)
    {
      v6 = 8 * (v6 / v8);
      v9 = *(this + 8);
      v10 = v5 | 8;
      v11 = v6 == v9;
      goto LABEL_14;
    }

    v6 = 0;
    v9 = *(this + 8);
    v10 = v5 | 8;
  }

  else
  {
    v10 = v4 & 0xFFFFFFB7 | 8;
    v7 = *(this + 7);
    v9 = *(this + 8);
  }

  v11 = v9 == 0;
LABEL_14:
  if (v11)
  {
    v5 = v10;
  }

  v13 = (v9 & 7) == 0 && v6 == v9;
  v14 = v5 & 0xFFFFFFEF;
  if (!v13)
  {
    v14 = v5;
  }

  if (v14)
  {
    v14 &= ~4u;
  }

  v15 = (v14 & 8) == 0 || v9 > 8;
  v16 = v14 & 2;
  if (v15)
  {
    v16 = v14;
  }

  if (v7 == 1)
  {
    v17 = v16 & 0xFFFFFFDF;
  }

  else
  {
    v17 = v16;
  }

  if (!v17)
  {
    v17 = 0x80000000;
  }

  mFormatFlags = a2->mFormatFlags;
  if (a2->mFormatID != 1819304813)
  {
    return v17 == mFormatFlags;
  }

  v19 = mFormatFlags & 0x7FFFFFFF;
  if ((mFormatFlags & 0x7FFFFFFF) == 0)
  {
    v19 = a2->mFormatFlags;
  }

  v20 = v19 & 0xFFFFFFBF;
  mBytesPerFrame = a2->mBytesPerFrame;
  if (!mBytesPerFrame)
  {
    v25 = v19 & 0xFFFFFFB7 | 8;
    mChannelsPerFrame = a2->mChannelsPerFrame;
    mBitsPerChannel = a2->mBitsPerChannel;
LABEL_44:
    v26 = mBitsPerChannel == 0;
    goto LABEL_45;
  }

  mChannelsPerFrame = a2->mChannelsPerFrame;
  if ((mFormatFlags & 0x20) != 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = a2->mChannelsPerFrame;
  }

  if (!v23)
  {
    mBytesPerFrame = 0;
    mBitsPerChannel = a2->mBitsPerChannel;
    v25 = v20 | 8;
    goto LABEL_44;
  }

  mBytesPerFrame = 8 * (mBytesPerFrame / v23);
  mBitsPerChannel = a2->mBitsPerChannel;
  v25 = v20 | 8;
  v26 = mBytesPerFrame == mBitsPerChannel;
LABEL_45:
  if (v26)
  {
    v20 = v25;
  }

  v27 = (mBitsPerChannel & 7) == 0 && mBytesPerFrame == mBitsPerChannel;
  v28 = v20 & 0xFFFFFFEF;
  if (!v27)
  {
    v28 = v20;
  }

  if (v28)
  {
    v28 &= ~4u;
  }

  v29 = (v28 & 8) == 0 || mBitsPerChannel > 8;
  v30 = v28 & 2;
  if (v29)
  {
    v30 = v28;
  }

  if (mChannelsPerFrame == 1)
  {
    v31 = v30 & 0xFFFFFFDF;
  }

  else
  {
    v31 = v30;
  }

  if (v31)
  {
    mFormatFlags = v31;
  }

  else
  {
    mFormatFlags = 0x80000000;
  }

  return v17 == mFormatFlags;
}

uint64_t ExtAudioFile::SetConverterProperty(ExtAudioFile *this, int a2, int a3, void *a4, char a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 == 1633906803)
  {
    if (!*a4)
    {
      goto LABEL_11;
    }

    v9 = *(this + 19);
    v18 = a3;
    v19 = 1633906803;
    v17 = a4;
    v25 = &v19;
    v26 = &v18;
    v27 = &v17;
    *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
    *&buf[8] = &v25;
    v10 = with_resolved(v9, buf);
  }

  else
  {
    v11 = *(this + 19);
    v18 = a3;
    v19 = a2;
    v17 = a4;
    v25 = &v19;
    v26 = &v18;
    v27 = &v17;
    *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
    *&buf[8] = &v25;
    v10 = with_resolved(v11, buf);
  }

  if ((a5 & 1) == 0 && v10)
  {
    v15 = v10;
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&v25, v15);
      *buf = 136315906;
      *&buf[4] = "ExtAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 766;
      v21 = 2080;
      v22 = &v25;
      v23 = 2080;
      v24 = "set audio converter property";
      _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "set audio converter property", v15);
  }

  if (a2 == 1634955366 && a4 && !v10)
  {
    *(this + 72) = *a4;
  }

LABEL_11:
  result = ExtAudioFile::UpdateInternals(this);
  if (*(this + 8) == 3)
  {
    v13 = *MEMORY[0x1E69E9840];

    return ExtAudioFile::FileFormatChanged(this, 0, 0, 0);
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t ExtAudioFile::GetConverterConfig(ExtAudioFile *this)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v6 = 8;
  v10 = 1633906803;
  v9 = &v6;
  v7 = 0;
  v8 = &v7;
  v16[0] = &v10;
  v16[1] = &v9;
  v16[2] = &v8;
  *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
  *&buf[8] = v16;
  v1 = with_resolved(this, buf);
  if (v1)
  {
    v5 = v1;
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v16, v5);
      *buf = 136315906;
      *&buf[4] = "ExtAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 812;
      v12 = 2080;
      v13 = v16;
      v14 = 2080;
      v15 = "get converter property settings";
      _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "get converter property settings", v5);
  }

  result = v7;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

caulk::thread *std::unique_ptr<caulk::thread>::reset[abi:ne200100](caulk::thread **a1, caulk::thread *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    caulk::thread::~thread(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t std::default_delete<std::tuple<caulk::thread::attributes,ExtAudioFileAsyncWriteMgr::AddClient(ExtAudioFile *)::{lambda(void)#1},std::tuple<>>>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    if (*(result + 24) == 1 && *(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,ExtAudioFileAsyncWriteMgr::AddClient(ExtAudioFile *)::{lambda(void)#1},std::tuple<>>>(caulk::thread::attributes *a1)
{
  caulk::thread::attributes::apply_to_this_thread(a1);
  v2 = *(a1 + 8);
  do
  {
    v9.__m_ = v2;
    v9.__owns_ = 1;
    std::mutex::lock(v2);
    std::condition_variable::wait((v2 + 64), &v9);
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = v4;
    if (v3 == v4)
    {
      std::unique_ptr<caulk::thread>::reset[abi:ne200100]((v2 + 136), 0);
    }

    else
    {
      do
      {
        v6 = *(v2 + 112);
        if (v6 == v5)
        {
          break;
        }

        v7 = 0;
        do
        {
          v7 |= ExtAudioFile::PerformAsyncWrites(*v6++, 0);
          v5 = *(v2 + 120);
        }

        while (v6 != v5);
      }

      while ((v7 & 1) != 0);
    }

    if (v9.__owns_)
    {
      std::mutex::unlock(v9.__m_);
    }
  }

  while (v3 != v4);
  if (a1)
  {
    std::default_delete<std::tuple<caulk::thread::attributes,ExtAudioFileAsyncWriteMgr::AddClient(ExtAudioFile *)::{lambda(void)#1},std::tuple<>>>::operator()[abi:ne200100](a1);
  }

  return 0;
}

void sub_18F6F25A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (v10)
  {
    std::default_delete<std::tuple<caulk::thread::attributes,ExtAudioFileAsyncWriteMgr::AddClient(ExtAudioFile *)::{lambda(void)#1},std::tuple<>>>::operator()[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

CFMutableDictionaryRef ExtAudioFile::GetInstrumentation(ExtAudioFile *this)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = 256;
  v2 = *(this + 53) / 24000000.0 * 1000.0 + 0.5;
  CACFDictionary::AddUInt32(&Mutable, @"ms in I/O");
  v3 = *(this + 19);
  if (v3)
  {
    cf = 0;
    v6 = 8;
    v14 = 610889316;
    v13 = &v6;
    p_cf = &cf;
    v10[0] = &v14;
    v10[1] = &v13;
    v10[2] = &p_cf;
    v11[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
    v11[1] = v10;
    with_resolved(v3, v11);
    if (cf)
    {
      CACFDictionary::AddCFType(&Mutable, @"converter", cf);
      CFRelease(cf);
    }
  }

  v4 = Mutable;
  CACFDictionary::~CACFDictionary(&Mutable);
  return v4;
}

void sub_18F6F26F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t WAVEAudioStream::ParseHeader(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 236);
  if (v4 > 110)
  {
    switch(v4)
    {
      case 111:
        v11 = *(a1 + 256);
        v12 = *(a1 + 264);
        goto LABEL_23;
      case 153:
        v21 = *(a1 + 256);
        v22 = *(a1 + 264);
        goto LABEL_54;
      case 276:
        v8 = *(a1 + 256);
        v9 = *(a1 + 264);
        goto LABEL_45;
    }

    goto LABEL_12;
  }

  if (v4 == -1)
  {
    return 0;
  }

  if (!v4)
  {
    v6 = *(a1 + 8);
    v79 = 1;
    if ((*(v6 + 104) & 1) == 0)
    {
      *(v6 + 104) = 1;
      v13 = *(v6 + 24);
      if (v13)
      {
        v13(*(v6 + 40), *(v6 + 8), 1717988724, &v79);
        v6 = *(a1 + 8);
      }
    }

    *(a1 + 296) = *(v6 + 96);
    v5 = 12;
    *(a1 + 256) = 12;
    v7 = (a1 + 332);
    *(a1 + 264) = a1 + 332;
    goto LABEL_17;
  }

  if (v4 != 92)
  {
LABEL_12:
    result = 0;
    goto LABEL_72;
  }

  v5 = *(a1 + 256);
  v6 = *(a1 + 8);
  v7 = *(a1 + 264);
LABEL_17:
  v79 = v5;
  StreamBuffer::Copy((v6 + 72), &v79, v7);
  v14 = v79;
  v15 = *(a1 + 256);
  *(a1 + 264) += v79;
  v16 = v15 - v14;
  *(a1 + 256) = v16;
  if (v16)
  {
    result = 0;
    v20 = 92;
    goto LABEL_76;
  }

  v17 = *(a1 + 332);
  *(a1 + 332) = bswap32(v17);
  v18 = *(a1 + 340);
  *(a1 + 340) = bswap32(v18);
  if (v17 != 1179011410 || v18 != 1163280727)
  {
LABEL_71:
    result = 1685348671;
    *(a1 + 177) = 1;
    goto LABEL_72;
  }

  v19 = *(a1 + 296);
  *(a1 + 344) = v19 + *(a1 + 336) + 8;
  *(a1 + 16) = 1463899717;
  *(a1 + 296) = v19 + 12;
  while (1)
  {
    v11 = 8;
    *(a1 + 256) = 8;
    v12 = (a1 + 352);
    *(a1 + 264) = a1 + 352;
LABEL_23:
    v79 = v11;
    StreamBuffer::Copy((*(a1 + 8) + 72), &v79, v12);
    v23 = v79;
    v24 = *(a1 + 256);
    *(a1 + 264) += v79;
    v25 = v24 - v23;
    *(a1 + 256) = v25;
    if (v25)
    {
      result = 0;
      v20 = 111;
      goto LABEL_76;
    }

    v26 = bswap32(*(a1 + 352));
    *(a1 + 352) = v26;
    v27 = *(a1 + 356);
    v28 = *(a1 + 356);
    v29 = *(a1 + 296);
    *(a1 + 296) = v29 + 8;
    if (v26 != 1718449184)
    {
      break;
    }

    if (v28 > 0xFFFFFFF7 || (v29 + v27 + 16) > *(a1 + 344) || v27 <= 0xF)
    {
      goto LABEL_71;
    }

    v47 = v27 + 8;
    if (v47 <= 0x30)
    {
      LODWORD(v47) = 48;
    }

    CADeprecated::CAAutoFree<unsigned char>::alloc((a1 + 360), v47, 1);
    v48 = *(a1 + 360);
    if (!v48)
    {
      result = 1685348671;
      *(a1 + 177) = 1;
      goto LABEL_72;
    }

    *(a1 + 368) = v48;
    *v48 = *(a1 + 352);
    v21 = *(a1 + 356);
    *(a1 + 256) = v21;
    v22 = (*(a1 + 360) + 8);
    *(a1 + 264) = v22;
LABEL_54:
    v79 = v21;
    v43 = (a1 + 8);
    StreamBuffer::Copy((*(a1 + 8) + 72), &v79, v22);
    v49 = v79;
    v50 = *(a1 + 256);
    *(a1 + 264) += v79;
    v51 = v50 - v49;
    *(a1 + 256) = v51;
    if (v51)
    {
      result = 0;
      v20 = 153;
      goto LABEL_76;
    }

    v52 = *(a1 + 368);
    v53 = *(v52 + 8);
    if (v53 == 2)
    {
      goto LABEL_62;
    }

    if (v53 == 17)
    {
      if (*(v52 + 4) < 15)
      {
        goto LABEL_63;
      }

LABEL_62:
      *(a1 + 380) = 1;
      goto LABEL_63;
    }

    if (v53 == 65534 && *(v52 + 4) >= 0x18u && *(v52 + 24) >= 6u)
    {
      *(a1 + 376) = *(v52 + 28);
    }

LABEL_63:
    if (*(v52 + 12) >= 0xFFFF0000)
    {
      *(v52 + 12) = *(v52 + 12);
    }

    if (*(a1 + 380) == 1)
    {
      v54 = *(a1 + 356);
      v55 = (v54 + 28);
      *(a1 + 128) = v55;
      CADeprecated::CAAutoFree<unsigned char>::alloc((a1 + 120), v55, 0);
      v56 = *(a1 + 120);
      *v56 = 0x616D72660C000000;
      v57 = bswap32(*(*(a1 + 368) + 8) | 0x6D730000);
      *(v56 + 8) = v57;
      *(v56 + 12) = bswap32(v54 + 8);
      *(v56 + 16) = v57;
      memcpy((v56 + 20), (*(a1 + 360) + 8), v54);
      *(v56 + (*(a1 + 128) - 8)) = 0x8000000;
LABEL_67:
      v58 = *v43;
      v79 = 1;
      *(v58 + 108) = 1;
      v59 = *(v58 + 24);
      if (v59)
      {
        v59(*(v58 + 40), *(v58 + 8), 1835493731, &v79);
      }
    }

LABEL_69:
    v60 = *(a1 + 296) + *(a1 + 356);
    *(a1 + 296) = v60;
    *(*(a1 + 8) + 96) = v60;
  }

  if (v26 == 2002876005)
  {
    CADeprecated::CAAutoFree<unsigned char>::alloc((a1 + 120), v27, 0);
    v8 = *(a1 + 356);
    *(a1 + 256) = v8;
    v9 = *(a1 + 120);
    *(a1 + 264) = v9;
LABEL_45:
    v79 = v8;
    v43 = (a1 + 8);
    StreamBuffer::Copy((*(a1 + 8) + 72), &v79, v9);
    v44 = v79;
    v45 = *(a1 + 256);
    *(a1 + 264) += v79;
    v46 = v45 - v44;
    *(a1 + 256) = v46;
    if (v46)
    {
      result = 0;
      v20 = 276;
      goto LABEL_76;
    }

    *(a1 + 128) = *(a1 + 356);
    goto LABEL_67;
  }

  if (v26 != 1684108385)
  {
    goto LABEL_69;
  }

  if (!*(a1 + 368))
  {
    goto LABEL_71;
  }

  *(a1 + 104) = v29 + 8;
  (*(*a1 + 96))(a1);
  FillDescriptionFromWAVEFormat(a1 + 24, *(a1 + 128), *(a1 + 120), *(a1 + 368), 0);
  if (*(a1 + 32) == 778924083)
  {
    AudioFileFormatRegistry = GetAudioFileFormatRegistry();
    v31 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, 0x4D504733u);
    if (v31)
    {
      v32 = (*(*v31 + 120))(v31);
      if (v32)
      {
        v33 = (*(*v32 + 144))(v32);
        if (v33)
        {
          v34 = 0;
          *a2 = v33;
          *(a2 + 8) = AudioFileStreamObject::ParseHeader;
          *(a2 + 16) = 0;
          v35 = *(a1 + 8);
          v36 = *(v35 + 88);
          v37 = *(v35 + 96);
          v38 = v36 + *(v35 + 80);
          v39 = v37 < v36 || v38 <= v37;
          v40 = v39;
          v41 = v38 - v37;
          if (!v39 && v41)
          {
            v34 = *(v35 + 72) + (v37 - v36);
          }

          result = 0;
          *(a2 + 32) = v34;
          if (v40)
          {
            v42 = 0;
          }

          else
          {
            v42 = v41;
          }

          goto LABEL_105;
        }
      }
    }

    result = 1954115647;
LABEL_72:
    v20 = -1;
LABEL_76:
    *(a1 + 236) = v20;
  }

  else
  {
    v61 = *(a1 + 8);
    v79 = 1;
    if ((*(v61 + 105) & 1) == 0)
    {
      *(v61 + 105) = 1;
      v62 = *(v61 + 24);
      if (v62)
      {
        v62(*(v61 + 40), *(v61 + 8), 1684434292, &v79);
        v61 = *(a1 + 8);
      }
    }

    v79 = 1;
    v63 = *(v61 + 24);
    if (v63)
    {
      v63(*(v61 + 40), *(v61 + 8), 1650683508, &v79);
      v64 = *(a1 + 8);
      v65 = *(v64 + 24);
      v79 = 1;
      if (v65)
      {
        v65(*(v64 + 40), *(v64 + 8), 1685022310, &v79);
      }
    }

    else
    {
      v79 = 1;
    }

    v66 = *(a1 + 40);
    if (v66)
    {
      *(a1 + 112) = v66;
      v67 = (*(*a1 + 88))(a1);
      (*(*a1 + 80))(a1, v67 / *(a1 + 40));
      v68 = *(a1 + 8);
      v79 = 1;
      v69 = *(v68 + 24);
      if (v69)
      {
        v69(*(v68 + 40), *(v68 + 8), 1885564532, &v79);
      }
    }

    v70 = *(a1 + 8);
    v79 = 1;
    if (!*(v70 + 112))
    {
      *(v70 + 112) = 1;
      v71 = *(v70 + 24);
      if (v71)
      {
        v71(*(v70 + 40), *(v70 + 8), 1919247481, &v79);
        v70 = *(a1 + 8);
      }
    }

    v72 = 0;
    *a2 = a1;
    *(a2 + 8) = AudioFileStreamObject::GeneratePackets;
    *(a2 + 16) = 0;
    v73 = *(v70 + 88);
    v74 = *(v70 + 96);
    v75 = v73 + *(v70 + 80);
    v76 = v74 < v73 || v75 <= v74;
    v77 = v76;
    v78 = v75 - v74;
    if (!v76 && v78)
    {
      v72 = *(v70 + 72) + (v74 - v73);
    }

    result = 0;
    *(a2 + 32) = v72;
    if (v77)
    {
      v42 = 0;
    }

    else
    {
      v42 = v78;
    }

LABEL_105:
    *(a2 + 24) = v42;
  }

  return result;
}

void *StreamBuffer::Copy(void *this, unsigned int *a2, unsigned __int8 *__dst)
{
  v4 = this[2];
  v5 = this[3];
  v6 = v4 + *(this + 2);
  v7 = v6 - v5;
  v8 = __OFSUB__(v5, v4);
  v9 = v5 - v4;
  if (v9 < 0 != v8 || v6 <= v5 || v6 == v5)
  {
    *a2 = 0;
  }

  else
  {
    v12 = this;
    v13 = *a2;
    if (*a2 > v7)
    {
      *a2 = v7;
      v13 = v7;
    }

    this = memcpy(__dst, (*this + v9), v13);
    v12[3] += *a2;
  }

  return this;
}

void CADeprecated::CAAutoFree<unsigned char>::alloc(void **a1, size_t size, int a3)
{
  v6 = *a1;
  if (v6)
  {
    free(v6);
    *a1 = 0;
  }

  if (a3)
  {
    v7 = malloc_type_malloc(size, 0xAFA3E4BEuLL);
    v8 = v7;
    if (!size || v7)
    {
      bzero(v7, size);
      goto LABEL_9;
    }

LABEL_10:
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
  }

  v9 = malloc_type_malloc(size, 0x100004077774924uLL);
  v8 = v9;
  if (size && !v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  *a1 = v8;
}

uint64_t AudioFileStreamObject::GeneratePackets(uint64_t a1)
{
  return (*(*a1 + 120))();
}

{
  v2 = 2003334207;
  v3 = *(a1 + 236);
  if (v3 > 148)
  {
    if (v3 == 152)
    {
      LODWORD(v7) = *(a1 + 256);
      v8 = *(a1 + 264);
      goto LABEL_23;
    }

    if (v3 == 149)
    {
      v5 = *(a1 + 8);
      v6 = *(v5 + 96);
      goto LABEL_14;
    }
  }

  else
  {
    if (v3 == -1)
    {
      return 0;
    }

    if (!v3)
    {
      for (i = *(a1 + 184); ; *(a1 + 184) = i)
      {
        if ((*(*a1 + 136))(a1, i, a1 + 312, a1 + 304))
        {
          goto LABEL_51;
        }

        *(a1 + 312) += *(a1 + 104);
        if (((*(*a1 + 88))(a1) & 0x8000000000000000) == 0)
        {
          v9 = *(a1 + 312) + *(a1 + 304);
          v10 = *(a1 + 104);
          if (v9 > (*(*a1 + 88))(a1) + v10)
          {
            goto LABEL_51;
          }
        }

        v5 = *(a1 + 8);
        v6 = *(a1 + 312);
        *(v5 + 96) = v6;
LABEL_14:
        v11 = *(v5 + 88);
        v12 = v11 + *(v5 + 80);
        v13 = v6 < v11 || v12 <= v6;
        if (v13 || (v14 = v12 - v6) == 0)
        {
          v2 = 0;
          v48 = 149;
          goto LABEL_53;
        }

        v7 = *(a1 + 304);
        if (v7 <= v14)
        {
          break;
        }

        if (*(a1 + 284) < v7)
        {
          *(a1 + 284) = v7;
          CADeprecated::CAAutoFree<unsigned char>::allocBytes((a1 + 288), v7, 0);
          LODWORD(v7) = *(a1 + 304);
        }

        *(a1 + 256) = v7;
        v8 = *(a1 + 288);
        *(a1 + 264) = v8;
LABEL_23:
        v51[0] = v7;
        StreamBuffer::Copy((*(a1 + 8) + 72), v51, v8);
        v15 = v51[0];
        v16 = *(a1 + 256);
        *(a1 + 264) += v51[0];
        v17 = v16 - v15;
        *(a1 + 256) = v17;
        if (v17)
        {
          v2 = 0;
          v48 = 152;
          goto LABEL_53;
        }

        if (*(a1 + 40))
        {
          v18 = *(a1 + 304);
          v19 = *(a1 + 288);
          v20 = *(a1 + 8);
          v21 = *(v20 + 16);
          v21[14].i64[0] += v21[2].u32[3];
          v22.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v22.i64[1] = v18;
          v21[13] = vaddq_s64(v21[13], v22);
          (*(v20 + 32))(*(v20 + 40));
        }

        else
        {
          v39 = *(a1 + 152);
          v54.mStartOffset = 0;
          CompressedPacketTable::operator[](v51, v39, *(a1 + 184));
          v54.mDataByteSize = v53;
          CompressedPacketTable::operator[](v51, v39, *(a1 + 184));
          v54.mVariableFramesInPacket = v52;
          AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), *(a1 + 304), 1u, *(a1 + 288), &v54, 1);
        }

        i = *(a1 + 184) + 1;
LABEL_59:
        ;
      }

      v23 = *(a1 + 184);
      LODWORD(v54.mStartOffset) = 0;
      v50 = v14;
      if (((*(*a1 + 88))(a1) & 0x8000000000000000) == 0)
      {
        v24 = v6 + v50;
        v25 = *(a1 + 104);
        if (v24 > (*(*a1 + 88))(a1) + v25)
        {
          v26 = *(a1 + 104);
          v50 = v26 - v6 + (*(*a1 + 88))(a1);
        }
      }

      v27 = (*(*a1 + 208))(a1, v23, &v50, &v54);
      if (v27)
      {
        v2 = v27;
        if (v27 == 1685348671)
        {
          *(a1 + 177) = 1;
          v2 = 1685348671;
        }

        goto LABEL_52;
      }

      mStartOffset = v54.mStartOffset;
      if (!LODWORD(v54.mStartOffset))
      {
        goto LABEL_52;
      }

      v29 = 0;
      v30 = *(a1 + 8);
      v31 = *(v30 + 88);
      v32 = *(v30 + 96);
      v33 = v31 + *(v30 + 80);
      if (v32 >= v31 && v33 > v32 && v33 - v32 != 0)
      {
        v29 = (*(v30 + 72) + (v32 - v31));
      }

      if (!*(a1 + 40))
      {
        if (*(a1 + 200) < LODWORD(v54.mStartOffset))
        {
          v40 = (1 << -__clz(LODWORD(v54.mStartOffset) - 1));
          *(a1 + 200) = v40;
          CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((a1 + 192), v40);
        }

        v41 = *(a1 + 152);
        if (v41)
        {
          v42 = *(a1 + 184);
          if (v42 > *(v41 + 24))
          {
            goto LABEL_52;
          }

          CompressedPacketTable::operator[](v51, *(a1 + 152), v42);
          if (LODWORD(v54.mStartOffset))
          {
            v43 = 0;
            v44 = 0;
            v45 = *v51;
            do
            {
              CompressedPacketTable::operator[](v51, v41, v44 + *(a1 + 184));
              *(*(a1 + 192) + v43 * 16) = *v51 - v45;
              CompressedPacketTable::operator[](v51, v41, v44 + *(a1 + 184));
              *(*(a1 + 192) + v43 * 16 + 12) = v53;
              CompressedPacketTable::operator[](v51, v41, v44 + *(a1 + 184));
              v46 = *(a1 + 192);
              v46[v43].mVariableFramesInPacket = v52;
              ++v44;
              v47 = v54.mStartOffset;
              ++v43;
            }

            while (v44 < LODWORD(v54.mStartOffset));
          }

          else
          {
            v47 = 0;
            v46 = *(a1 + 192);
          }

          AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v50, v47, v29, v46, 1);
          goto LABEL_58;
        }

        mStartOffset = v54.mStartOffset;
        v30 = *(a1 + 8);
      }

      v36 = v50;
      v37 = *(v30 + 16);
      *(v37 + 224) += *(v37 + 44) * mStartOffset;
      v38 = *(v37 + 216) + v36;
      *(v37 + 208) += mStartOffset;
      *(v37 + 216) = v38;
      (*(v30 + 32))(*(v30 + 40));
LABEL_58:
      *(*(a1 + 8) + 96) += v50;
      i = *(a1 + 184) + LODWORD(v54.mStartOffset);
      goto LABEL_59;
    }
  }

LABEL_51:
  v2 = 0;
LABEL_52:
  v48 = -1;
LABEL_53:
  *(a1 + 236) = v48;
  return v2;
}

uint64_t AudioFileStreamObject::SetFormatList(AudioFileStreamObject *this, unsigned int a2, const AudioFormatListItem *a3)
{
  v5 = a2 / 0x30uLL;
  v6 = (this + 64);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 9) - *(this + 8)) >> 4) != v5)
  {
    std::vector<AudioFormatListItem>::resize(this + 8, a2 / 0x30uLL);
  }

  if (a2 >= 0x30)
  {
    v7 = 0;
    do
    {
      v8 = (*v6 + v7 * 48);
      v9 = *&a3[v7].mASBD.mSampleRate;
      v10 = *&a3[v7].mASBD.mBitsPerChannel;
      v8[1] = *&a3[v7].mASBD.mBytesPerPacket;
      v8[2] = v10;
      *v8 = v9;
      ++v7;
    }

    while (v5 != v7);
  }

  return 0;
}

void std::vector<AudioFormatListItem>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 48 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x2AAAAAAAAAAAAAALL)
        {
          v10 = 0x555555555555555;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<AudioFormatListItem>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v12 = 48 * ((48 * v6 - 48) / 0x30) + 48;
    bzero(a1[1], v12);
    v11 = v4 + v12;
  }

  a1[1] = v11;
}

void std::allocator<AudioFormatListItem>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AudioFileStreamObject::SetDataFormat(AudioFileStreamObject *this, const AudioStreamBasicDescription *a2)
{
  v2 = *&a2->mSampleRate;
  v3 = *&a2->mBytesPerPacket;
  *(this + 7) = *&a2->mBitsPerChannel;
  *(this + 40) = v3;
  *(this + 24) = v2;
  return 0;
}

void WAVEAudioStream::~WAVEAudioStream(WAVEAudioStream *this)
{
  WAVEAudioStream::~WAVEAudioStream(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0327038;
  v2 = *(this + 45);
  if (v2)
  {
    free(v2);
    *(this + 45) = 0;
  }

  AudioFileStreamObject::~AudioFileStreamObject(this);
}

uint64_t AudioFormatProperty_FormatName(AudioStreamBasicDescription *a1, const __CFString **a2)
{
  v45 = *MEMORY[0x1E69E9840];
  Copy = 0;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v41 = &Copy;
  theString = Mutable;
  p_theString = &theString;
  v7 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    Mutable = pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v7 = sAudioToolboxBundle;
  }

  mFormatID = a1->mFormatID;
  v9 = (mFormatID & 0xFFFF0000) == 0x6D730000 || (mFormatID & 0xFFFF0000) == 1297285120;
  v10 = a1->mFormatID;
  if (!v9 || mFormatID == 1836253269 || v10 > 0x1400)
  {
    if (mFormatID > 1819304812)
    {
      if (mFormatID <= 1903522656)
      {
        if (mFormatID > 1886745440)
        {
          if (mFormatID <= 1902211170)
          {
            if (mFormatID > 1902207794)
            {
              if (mFormatID != 1902207795)
              {
                if (mFormatID != 1902207848)
                {
                  v13 = 1902207856;
                  goto LABEL_160;
                }

LABEL_162:
                v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG-4 HE AAC", @"FormatNames", v7, v6);
                goto LABEL_267;
              }

              goto LABEL_147;
            }

            if (mFormatID != 1886745441)
            {
              v20 = 1902207331;
              goto LABEL_150;
            }

LABEL_154:
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"xHE-AAC", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID > 1902469938)
          {
            if (mFormatID != 1902469939)
            {
              if (mFormatID != 1902537827)
              {
                v19 = 1902928227;
                goto LABEL_83;
              }

LABEL_169:
              v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"FLAC", @"FormatNames", v7, v6);
              goto LABEL_267;
            }

            goto LABEL_113;
          }

          if (mFormatID != 1902211171)
          {
            if (mFormatID != 1902324531)
            {
              goto LABEL_213;
            }

            goto LABEL_157;
          }

LABEL_189:
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"APAC", @"FormatNames", v7, v6);
          goto LABEL_267;
        }

        if (mFormatID > 1885430578)
        {
          if (mFormatID > 1885430639)
          {
            if (mFormatID == 1885430640)
            {
LABEL_161:
              v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG-4 HE AAC V2", @"FormatNames", v7, v6);
              goto LABEL_267;
            }

            if (mFormatID != 1885547315)
            {
              v16 = 1885692723;
LABEL_61:
              if (mFormatID != v16)
              {
                goto LABEL_213;
              }

LABEL_113:
              v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Dolby Digital Plus", @"FormatNames", v7, v6);
              goto LABEL_267;
            }

LABEL_157:
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Dolby Atmos", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID != 1885430579)
          {
            v21 = 1885430632;
            goto LABEL_125;
          }

LABEL_147:
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Dolby Digital", @"FormatNames", v7, v6);
          goto LABEL_267;
        }

        if (mFormatID > 1869641074)
        {
          if (mFormatID == 1869641075)
          {
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Opus", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          v20 = 1885430115;
LABEL_150:
          if (mFormatID != v20)
          {
            goto LABEL_213;
          }

          goto LABEL_151;
        }

        if (mFormatID == 1819304813)
        {
          Copy = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Linear PCM", @"FormatNames", v7, v6);
          if (a1->mBitsPerChannel)
          {
            snprintf(__str, 0x80uLL, ", %u ", a1->mBitsPerChannel);
            CFStringAppendCString(theString, __str, 0x8000100u);
            v23 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"bit", @"FormatNames", v7, v22);
            CFStringAppend(theString, v23);
            CFRelease(v23);
            if (a1->mBitsPerChannel >= 9)
            {
              CFStringAppendCString(theString, " ", 0x8000100u);
              if ((a1->mFormatFlags & 2) != 0)
              {
                v25 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"big-endian", @"FormatNames", v7, v24);
              }

              else
              {
                v25 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"little-endian", @"FormatNames", v7, v24);
              }

              CFStringAppend(theString, v25);
              CFRelease(v25);
            }

            CFStringAppendCString(theString, " ", 0x8000100u);
            mFormatFlags = a1->mFormatFlags;
            if (mFormatFlags)
            {
              v39 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"floating point", @"FormatNames", v7, v35);
              CFStringAppend(theString, v39);
              CFRelease(v39);
            }

            else
            {
              if ((mFormatFlags & 4) != 0)
              {
                v37 = @"signed integer";
              }

              else
              {
                v37 = @"unsigned integer";
              }

              v38 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v37, @"FormatNames", v7, v35);
              CFStringAppend(theString, v38);
              CFRelease(v38);
            }
          }

          goto LABEL_268;
        }

        if (mFormatID != 1836069684)
        {
          goto LABEL_213;
        }

        v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MP3onMP4", @"FormatNames", v7, v6);
LABEL_267:
        Copy = v18;
LABEL_268:
        if (a1->mChannelsPerFrame)
        {
          snprintf(__str, 0x80uLL, ", %u ", a1->mChannelsPerFrame);
          CFStringAppendCString(theString, __str, 0x8000100u);
          v30 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"channels", @"FormatNames", v7, v29);
          CFStringAppend(theString, v30);
          CFRelease(v30);
        }

        if (a1->mSampleRate != 0.0)
        {
          snprintf(__str, 0x80uLL, ", %g ", a1->mSampleRate);
          CFStringAppendCString(theString, __str, 0x8000100u);
          v32 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Hz", @"FormatNames", v7, v31);
          CFStringAppend(theString, v32);
          CFRelease(v32);
        }

        CFStringInsert(theString, 0, Copy);
        v14 = 0;
        *a2 = CFStringCreateCopy(v4, theString);
        goto LABEL_273;
      }

      if (mFormatID <= 1970037110)
      {
        if (mFormatID <= 1936487266)
        {
          if (mFormatID > 1935767393)
          {
            if (mFormatID == 1935767394)
            {
              v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"AMR Wideband", @"FormatNames", v7, v6);
              goto LABEL_267;
            }

            if (mFormatID != 1936029299)
            {
              goto LABEL_213;
            }

            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"EVS", @"FormatNames", v7, v6);
          }

          else
          {
            if (mFormatID == 1903522657)
            {
              goto LABEL_154;
            }

            if (mFormatID != 1935764850)
            {
              goto LABEL_213;
            }

            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"AMR Narrowband", @"FormatNames", v7, v6);
          }
        }

        else if (mFormatID <= 1936745847)
        {
          if (mFormatID == 1936487267)
          {
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG-4 SLS (HD-AAC)", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID != 1936487278)
          {
            goto LABEL_213;
          }

          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG-4 SLS Non-Core", @"FormatNames", v7, v6);
        }

        else
        {
          if (mFormatID == 1936745848)
          {
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Speex", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID == 1953790320)
          {
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"TTY", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID != 1953986161)
          {
            goto LABEL_213;
          }

          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"TwinVQ", @"FormatNames", v7, v6);
        }

        goto LABEL_267;
      }

      if (mFormatID <= 2053202791)
      {
        if (mFormatID <= 1987015265)
        {
          if (mFormatID == 1970037111)
          {
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"\\U03BC-Law 2:1", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID != 1970495843)
          {
            goto LABEL_213;
          }

          goto LABEL_154;
        }

        if (mFormatID == 1987015266)
        {
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Vorbis", @"FormatNames", v7, v6);
          goto LABEL_267;
        }

        if (mFormatID == 2053202275)
        {
LABEL_151:
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG-4 AAC", @"FormatNames", v7, v6);
          goto LABEL_267;
        }

        v17 = 2053202739;
        goto LABEL_146;
      }

      if (mFormatID > 2053319474)
      {
        if (mFormatID != 2053319475)
        {
          if (mFormatID != 2053464883)
          {
            v19 = 2053923171;
LABEL_83:
            if (mFormatID != v19)
            {
              goto LABEL_213;
            }

            goto LABEL_143;
          }

          goto LABEL_113;
        }

        goto LABEL_157;
      }

      if (mFormatID == 2053202792)
      {
        goto LABEL_162;
      }

      v13 = 2053202800;
LABEL_160:
      if (mFormatID == v13)
      {
        goto LABEL_161;
      }

LABEL_213:
      RegistryAccess::instance(Mutable);
      v26 = qword_1ED746318;
      os_unfair_recursive_lock_lock_with_options();
      v27 = (*(*v26 + 16))(v26, a1->mFormatID, 1819304813, 0, 0);
      if (!v27 && (v27 = (*(*v26 + 16))(v26, 1819304813, a1->mFormatID, 0, 0)) == 0 || (v28 = (*(*v27 + 16))(v27)) == 0)
      {
        v14 = 1718449215;
        os_unfair_recursive_lock_unlock();
        goto LABEL_273;
      }

      Copy = CFStringCreateCopy(v4, v28);
      os_unfair_recursive_lock_unlock();
      goto LABEL_268;
    }

    if (mFormatID > 1633772401)
    {
      if (mFormatID > 1667591279)
      {
        if (mFormatID <= 1718378850)
        {
          if (mFormatID <= 1685481783)
          {
            if (mFormatID == 1667591280)
            {
              v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG-4 CELP", @"FormatNames", v7, v6);
              goto LABEL_267;
            }

            if (mFormatID == 1685354616)
            {
              v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"DTX", @"FormatNames", v7, v6);
              goto LABEL_267;
            }

            goto LABEL_213;
          }

          if (mFormatID == 1685481784)
          {
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"DVI8", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID == 1700997939)
          {
            goto LABEL_157;
          }

          v16 = 1700998451;
          goto LABEL_61;
        }

        if (mFormatID <= 1768710754)
        {
          if (mFormatID != 1718378851)
          {
            if (mFormatID == 1752594531)
            {
              v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"HVXC", @"FormatNames", v7, v6);
              goto LABEL_267;
            }

            goto LABEL_213;
          }

          goto LABEL_169;
        }

        if (mFormatID == 1768710755)
        {
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"iLBC", @"FormatNames", v7, v6);
          goto LABEL_267;
        }

        if (mFormatID == 1768775988)
        {
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"IMA 4:1", @"FormatNames", v7, v6);
          goto LABEL_267;
        }

        if (mFormatID != 1818440480)
        {
          goto LABEL_213;
        }

        v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"LC3", @"FormatNames", v7, v6);
        goto LABEL_267;
      }

      if (mFormatID > 1634492770)
      {
        if (mFormatID <= 1634497331)
        {
          if (mFormatID == 1634492771)
          {
LABEL_143:
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Apple Lossless", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID != 1634492791)
          {
            goto LABEL_213;
          }

          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"A-Law 2:1", @"FormatNames", v7, v6);
        }

        else
        {
          if (mFormatID == 1634497332)
          {
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG-4 ALS", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID == 1634754915)
          {
            goto LABEL_189;
          }

          if (mFormatID != 1667326771)
          {
            goto LABEL_213;
          }

          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"IMA4", @"FormatNames", v7, v6);
        }

        goto LABEL_267;
      }

      if (mFormatID <= 1633772403)
      {
        if (mFormatID == 1633772402)
        {
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"AAC Scalable Sampling Rate", @"FormatNames", v7, v6);
        }

        else
        {
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG Surround", @"FormatNames", v7, v6);
        }

        goto LABEL_267;
      }

      if (mFormatID == 1633772404)
      {
        v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"AAC Long Term Predictor", @"FormatNames", v7, v6);
        goto LABEL_267;
      }

      v17 = 1633889587;
LABEL_146:
      if (mFormatID != v17)
      {
        goto LABEL_213;
      }

      goto LABEL_147;
    }

    if (mFormatID > 1633771874)
    {
      if (mFormatID > 1633772390)
      {
        if (mFormatID <= 1633772395)
        {
          if (mFormatID == 1633772391)
          {
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG-4 AAC Enhanced Low Delay V2", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          v21 = 1633772392;
LABEL_125:
          if (mFormatID != v21)
          {
            goto LABEL_213;
          }

          goto LABEL_162;
        }

        if (mFormatID == 1633772396)
        {
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG-4 AAC Low Delay", @"FormatNames", v7, v6);
          goto LABEL_267;
        }

        if (mFormatID == 1633772397)
        {
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"AAC Main", @"FormatNames", v7, v6);
          goto LABEL_267;
        }

        v13 = 1633772400;
        goto LABEL_160;
      }

      if (mFormatID > 1633772388)
      {
        if (mFormatID == 1633772389)
        {
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG-4 AAC Enhanced Low Delay", @"FormatNames", v7, v6);
        }

        else
        {
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG-4 AAC Enhanced Low Delay with SBR", @"FormatNames", v7, v6);
        }

        goto LABEL_267;
      }

      if (mFormatID != 1633771875)
      {
        v20 = 1633772320;
        goto LABEL_150;
      }
    }

    else
    {
      if (mFormatID > 1296122674)
      {
        if (mFormatID <= 1363430705)
        {
          if (mFormatID == 1296122675)
          {
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MACE 3:1", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID != 1296122678)
          {
            goto LABEL_213;
          }

          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MACE 6:1", @"FormatNames", v7, v6);
        }

        else
        {
          if (mFormatID == 1363430706)
          {
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"QDesign Music 2", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID == 1363430723)
          {
            v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"QDesign", @"FormatNames", v7, v6);
            goto LABEL_267;
          }

          if (mFormatID != 1365470320)
          {
            goto LABEL_213;
          }

          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Qualcomm PureVoice\\U2122", @"FormatNames", v7, v6);
        }

        goto LABEL_267;
      }

      if (mFormatID <= 778924082)
      {
        if (mFormatID == 778924081)
        {
          v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG Layer 1", @"FormatNames", v7, v6);
          goto LABEL_267;
        }

        if (mFormatID != 778924082)
        {
          goto LABEL_213;
        }

        v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG Layer 2", @"FormatNames", v7, v6);
        goto LABEL_267;
      }

      if (mFormatID == 778924083)
      {
        v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"MPEG Layer 3", @"FormatNames", v7, v6);
        goto LABEL_267;
      }

      if (mFormatID != 1096107074)
      {
        goto LABEL_213;
      }
    }

    v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Audible", @"FormatNames", v7, v6);
    goto LABEL_267;
  }

  v14 = 1718449215;
  if (a1->mFormatID > 0x7Fu)
  {
    if (a1->mFormatID <= 0x3FFu)
    {
      if (a1->mFormatID <= 0x201u)
      {
        switch(v10)
        {
          case 0x80u:
            v15 = @"SOFTSOUND";
            break;
          case 0x100u:
            v15 = @"RHETOREX ADPCM";
            break;
          case 0x200u:
            v15 = @"CREATIVE ADPCM";
            break;
          default:
            goto LABEL_273;
        }
      }

      else if (a1->mFormatID > 0x21Fu)
      {
        if (v10 == 544)
        {
          v15 = @"QUARTERDECK";
        }

        else
        {
          if (v10 != 768)
          {
            goto LABEL_273;
          }

          v15 = @"FM TOWNS SND";
        }
      }

      else if (v10 == 514)
      {
        v15 = @"CREATIVE FASTSPEECH8";
      }

      else
      {
        if (v10 != 515)
        {
          goto LABEL_273;
        }

        v15 = @"CREATIVE FASTSPEECH10";
      }
    }

    else if (a1->mFormatID > 0x1002u)
    {
      if (a1->mFormatID > 0x10FFu)
      {
        if (v10 == 4352)
        {
          v15 = @"Lernout & Hauspie";
        }

        else
        {
          if (v10 != 5120)
          {
            goto LABEL_273;
          }

          v15 = @"NORRIS";
        }
      }

      else if (v10 == 4099)
      {
        v15 = @"OLISBC";
      }

      else
      {
        if (v10 != 4100)
        {
          goto LABEL_273;
        }

        v15 = @"OLIOPR";
      }
    }

    else if (a1->mFormatID > 0x1000u)
    {
      if (v10 == 4097)
      {
        v15 = @"OLIADPCM";
      }

      else
      {
        v15 = @"OLICELP";
      }
    }

    else if (v10 == 1024)
    {
      v15 = @"BTV DIGITAL";
    }

    else
    {
      if (v10 != 4096)
      {
        goto LABEL_273;
      }

      v15 = @"OLIGSM";
    }

LABEL_266:
    v18 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v15, @"FormatNames", v7, v6);
    goto LABEL_267;
  }

  v15 = @"Microsoft ADPCM";
  switch(a1->mFormatID)
  {
    case 2u:
      goto LABEL_266;
    case 5u:
      v15 = @"IBM CVSD";
      goto LABEL_266;
    case 0x10u:
      v15 = @"OKI ADPCM";
      goto LABEL_266;
    case 0x11u:
      v15 = @"DVI ADPCM";
      goto LABEL_266;
    case 0x12u:
      v15 = @"MEDIASPACE ADPCM";
      goto LABEL_266;
    case 0x13u:
      v15 = @"SIERRA ADPCM";
      goto LABEL_266;
    case 0x14u:
      v15 = @"G723 ADPCM";
      goto LABEL_266;
    case 0x15u:
    case 0x34u:
      v15 = @"DIGISTD";
      goto LABEL_266;
    case 0x16u:
      v15 = @"DIGIFIX";
      goto LABEL_266;
    case 0x17u:
      v15 = @"DIALOGIC OKI ADPCM";
      goto LABEL_266;
    case 0x18u:
      v15 = @"MEDIAVISION ADPCM";
      goto LABEL_266;
    case 0x20u:
      v15 = @"YAMAHA ADPCM";
      goto LABEL_266;
    case 0x21u:
      v15 = @"SONARC";
      goto LABEL_266;
    case 0x22u:
      v15 = @"DSPGROUP TRUESPEECH";
      goto LABEL_266;
    case 0x23u:
      v15 = @"ECHOSC1";
      goto LABEL_266;
    case 0x24u:
      v15 = @"AUDIOFILE AF36";
      goto LABEL_266;
    case 0x25u:
      v15 = @"APTX";
      goto LABEL_266;
    case 0x26u:
      v15 = @"AUDIOFILE AF10";
      goto LABEL_266;
    case 0x30u:
      v15 = @"DOLBY AC2";
      goto LABEL_266;
    case 0x31u:
      v15 = @"GSM610";
      goto LABEL_266;
    case 0x32u:
      v15 = @"MSNAUDIO";
      goto LABEL_266;
    case 0x33u:
      v15 = @"ANTEX ADPCME";
      goto LABEL_266;
    case 0x35u:
      v15 = @"DIGIREAL";
      goto LABEL_266;
    case 0x36u:
      v15 = @"DIGIADPCM";
      goto LABEL_266;
    case 0x37u:
      v15 = @"CONTROL RES CR10";
      goto LABEL_266;
    case 0x38u:
      v15 = @"NMS VBXADPCM";
      goto LABEL_266;
    case 0x39u:
      v15 = @"CS IMAADPCM";
      goto LABEL_266;
    case 0x3Au:
      v15 = @"ECHOSC3";
      goto LABEL_266;
    case 0x3Bu:
      v15 = @"ROCKWELL ADPCM";
      goto LABEL_266;
    case 0x3Cu:
      v15 = @"ROCKWELL DIGITALK";
      goto LABEL_266;
    case 0x3Du:
      v15 = @"XEBEC";
      goto LABEL_266;
    case 0x40u:
      v15 = @"G721 ADPCM";
      goto LABEL_266;
    case 0x41u:
      v15 = @"G728 CELP";
      goto LABEL_266;
    case 0x50u:
      v15 = @"MPEG";
      goto LABEL_266;
    case 0x55u:
      v15 = @"MPEGLAYER3";
      goto LABEL_266;
    case 0x60u:
      v15 = @"CIRRUS";
      goto LABEL_266;
    case 0x61u:
      v15 = @"ESPCM";
      goto LABEL_266;
    case 0x62u:
      v15 = @"VOXWARE";
      goto LABEL_266;
    case 0x63u:
      v15 = @"CANOPUS ATRAC";
      goto LABEL_266;
    case 0x64u:
      v15 = @"G726 ADPCM";
      goto LABEL_266;
    case 0x65u:
      v15 = @"G722 ADPCM";
      goto LABEL_266;
    case 0x66u:
      v15 = @"DSAT";
      goto LABEL_266;
    case 0x67u:
      v15 = @"DSAT DISPLAY";
      goto LABEL_266;
    default:
      break;
  }

LABEL_273:
  CACFReleaser<__CFString *>::~CACFReleaser(&p_theString);
  CACFReleaser<__CFString const*>::~CACFReleaser(&v41);
  v33 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_18F6F489C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void **);
  CACFReleaser<__CFString *>::~CACFReleaser(va);
  CACFReleaser<__CFString const*>::~CACFReleaser(va1);
  _Unwind_Resume(a1);
}

const void ***CACFReleaser<__CFString *>::~CACFReleaser(const void ***a1)
{
  v2 = **a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void ***CACFReleaser<__CFString const*>::~CACFReleaser(const void ***a1)
{
  v2 = **a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t AudioFormatProperty_ChannelName(AudioChannelDescription *a1, const __CFString **a2, uint64_t a3, const __CFString *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  mChannelLabel = a1->mChannelLabel;
  v7 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v7 = sAudioToolboxBundle;
  }

  v8 = mChannelLabel & 0xFFFF0000;
  if ((mChannelLabel & 0xFFFF0000) == 0x30000)
  {
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v14 = @"HOA_N3D";
    goto LABEL_9;
  }

  if (v8 == 0x20000)
  {
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v14 = @"HOA_ACN";
LABEL_9:
    v12 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v14, @"AudioChannelLabels", v7, v13);
    snprintf(__str, 0x10uLL, "(%u,%d)");
    goto LABEL_10;
  }

  if (v8 != 0x10000)
  {
    result = 560360820;
    if (mChannelLabel > 199)
    {
      if (mChannelLabel > 206)
      {
        if (mChannelLabel <= 303)
        {
          switch(mChannelLabel)
          {
            case 207:
              v20 = @"Y";
              break;
            case 301:
              v20 = @"Headphones Left";
              break;
            case 302:
              v20 = @"Headphones Right";
              break;
            default:
              goto LABEL_87;
          }
        }

        else if (mChannelLabel > 399)
        {
          if (mChannelLabel == 400)
          {
            v20 = @"Discrete";
          }

          else
          {
            if (mChannelLabel != 0x40000)
            {
              goto LABEL_87;
            }

            v20 = @"Object";
          }
        }

        else if (mChannelLabel == 304)
        {
          v20 = @"Click Track";
        }

        else
        {
          if (mChannelLabel != 305)
          {
            goto LABEL_87;
          }

          v20 = @"Foreign Language";
        }
      }

      else if (mChannelLabel <= 202)
      {
        if (mChannelLabel == 200)
        {
          v20 = @"Ambisonic W";
        }

        else if (mChannelLabel == 201)
        {
          v20 = @"Ambisonic X";
        }

        else
        {
          v20 = @"Ambisonic Y";
        }
      }

      else if (mChannelLabel > 204)
      {
        if (mChannelLabel == 205)
        {
          v20 = @"Side";
        }

        else
        {
          v20 = @"X";
        }
      }

      else if (mChannelLabel == 203)
      {
        v20 = @"Ambisonic Z";
      }

      else
      {
        v20 = @"Mid";
      }

LABEL_85:
      v17 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v20, @"AudioChannelLabels", v7, a4);
    }

    else
    {
      switch(mChannelLabel)
      {
        case -1:
          v17 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Unknown", @"AudioChannelLabels", v7, a4);
          mChannelFlags = a1->mChannelFlags;
          if (!mChannelFlags)
          {
            break;
          }

          if ((mChannelFlags & 2) != 0)
          {
            if ((mChannelFlags & 4) != 0)
            {
              v19 = @"%@ (%g\\U00B0, %g\\U00B0, %gm)";
            }

            else
            {
              v19 = @"%@ (%g\\U00B0, %g\\U00B0, %g)";
            }
          }

          else
          {
            if ((mChannelFlags & 1) == 0)
            {
              break;
            }

            if ((mChannelFlags & 4) != 0)
            {
              v19 = @"%@ (%gm, %gm, %gm)";
            }

            else
            {
              v19 = @"%@ (%g, %g, %g)";
            }
          }

          v22 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v19, @"AudioChannelLabels", v7, v16);
          v23 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, v22, v17, a1->mCoordinates[0], a1->mCoordinates[1], a1->mCoordinates[2]);
          CFRelease(v22);
          CFRelease(v17);
          v17 = v23;
          break;
        case 0:
          v20 = @"Unused";
          goto LABEL_85;
        case 1:
          v20 = @"Left";
          goto LABEL_85;
        case 2:
          v20 = @"Right";
          goto LABEL_85;
        case 3:
          v20 = @"Center";
          goto LABEL_85;
        case 4:
          v20 = @"LFE Screen";
          goto LABEL_85;
        case 5:
          v20 = @"Left Surround";
          goto LABEL_85;
        case 6:
          v20 = @"Right Surround";
          goto LABEL_85;
        case 7:
          v20 = @"Left Center";
          goto LABEL_85;
        case 8:
          v20 = @"Right Center";
          goto LABEL_85;
        case 9:
          v20 = @"Center Surround";
          goto LABEL_85;
        case 10:
          v20 = @"Left Surround Direct";
          goto LABEL_85;
        case 11:
          v20 = @"Right Surround Direct";
          goto LABEL_85;
        case 12:
          v20 = @"Top Center Surround";
          goto LABEL_85;
        case 13:
          v20 = @"Vertical Height Left";
          goto LABEL_85;
        case 14:
          v20 = @"Vertical Height Center";
          goto LABEL_85;
        case 15:
          v20 = @"Vertical Height Right";
          goto LABEL_85;
        case 16:
          v20 = @"Top Back Left";
          goto LABEL_85;
        case 17:
          v20 = @"Top Back Center";
          goto LABEL_85;
        case 18:
          v20 = @"Top Back Right";
          goto LABEL_85;
        case 33:
          v20 = @"Rear Surround Left";
          goto LABEL_85;
        case 34:
          v20 = @"Rear Surround Right";
          goto LABEL_85;
        case 35:
          v20 = @"Left Wide";
          goto LABEL_85;
        case 36:
          v20 = @"Right Wide";
          goto LABEL_85;
        case 37:
          v20 = @"LFE2";
          goto LABEL_85;
        case 38:
          v20 = @"Left Total";
          goto LABEL_85;
        case 39:
          v20 = @"Right Total";
          goto LABEL_85;
        case 40:
          v20 = @"Hearing Impaired";
          goto LABEL_85;
        case 41:
          v20 = @"Narration";
          goto LABEL_85;
        case 42:
          v20 = @"Mono";
          goto LABEL_85;
        case 43:
          v20 = @"Dialog Centric Mix";
          goto LABEL_85;
        case 44:
          v20 = @"Center Surround Direct";
          goto LABEL_85;
        case 45:
          v20 = @"Haptic";
          goto LABEL_85;
        case 49:
          v20 = @"Left Top Middle";
          goto LABEL_85;
        case 51:
          v20 = @"Right Top Middle";
          goto LABEL_85;
        case 52:
          v20 = @"Left Top Rear";
          goto LABEL_85;
        case 53:
          v20 = @"Center Top Rear";
          goto LABEL_85;
        case 54:
          v20 = @"Right Top Rear";
          goto LABEL_85;
        default:
          goto LABEL_87;
      }
    }

    result = 0;
    *a2 = v17;
    goto LABEL_87;
  }

  v9 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v12 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Discrete", @"AudioChannelLabels", v7, v11);
  snprintf(__str, 0x10uLL, "-%u");
LABEL_10:
  CFStringAppendCString(Mutable, __str, 0x8000100u);
  CFStringInsert(Mutable, 0, v12);
  *a2 = CFStringCreateCopy(v9, Mutable);
  CFRelease(Mutable);
  CFRelease(v12);
  result = 0;
LABEL_87:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AudioFormatProperty_ChannelLayoutName(const AudioChannelLayout *a1, const __CFString **a2, uint64_t a3, const __CFString *a4)
{
  mChannelLayoutTag = a1->mChannelLayoutTag;
  v22 = a1->mChannelLayoutTag;
  v7 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v7 = sAudioToolboxBundle;
    if (mChannelLayoutTag)
    {
LABEL_3:
      if (mChannelLayoutTag == 0x10000)
      {
        mChannelBitmap = a1->mChannelBitmap;
        v9 = vcnt_s8(mChannelBitmap);
        v9.i16[0] = vaddlv_u8(v9);
        v10 = v9.i32[0];
        if (v9.i32[0] == 1)
        {
          AudioFormatProperty_ChannelLayoutForBitmap(mChannelBitmap.i32[0], &v21, v9);
          v24 = 0;
          v25 = 0;
          mChannelLabel = v21.mChannelDescriptions[0].mChannelLabel;
          p_mChannelLabel = &mChannelLabel;
          return AudioFormatProperty_ChannelName(p_mChannelLabel, a2, a3, a4);
        }

        mChannelLayoutTag = AudioFormatProperty_LayoutTagForBitmap(mChannelBitmap.i32[0]);
        v22 = mChannelLayoutTag;
        if (mChannelLayoutTag == 0x10000)
        {
          *&v21.mChannelLayoutTag = 0;
          CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v21, (20 * v10 + 12), 0);
          v14 = *&v21.mChannelLayoutTag;
          AudioFormatProperty_ChannelLayoutForBitmap(mChannelBitmap.i32[0], *&v21.mChannelLayoutTag, v15);
          v13 = AudioFormatProperty_ChannelLayoutNameFromDescriptions(v14, a2, 0);
          if (v14)
          {
            free(v14);
          }

          return v13;
        }
      }

LABEL_18:
      v17 = mChannelLayoutTag & 0xFFFF0000;
      if ((mChannelLayoutTag & 0xFFFF0000) == 0xBF0000)
      {
        v20 = @"High-Order Ambisonics, ACN/N3D";
      }

      else if (v17 == 12451840)
      {
        v20 = @"High-Order Ambisonics, ACN/SN3D";
      }

      else
      {
        if (v17 == 9633792)
        {
          if (mChannelLayoutTag == 1)
          {
            v18 = @"Discrete Channel";
          }

          else
          {
            v18 = @"Discrete Channels";
          }

          v19 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v18, @"AudioChannelLayouts", v7, a4);
          *a2 = CFStringCreateWithFormat(0, 0, @"%d %@", mChannelLayoutTag, v19);
          CFRelease(v19);
          return 0;
        }

        v13 = 560360820;
        if (mChannelLayoutTag <= 10420230)
        {
          if (mChannelLayoutTag > 8454151)
          {
            if (mChannelLayoutTag <= 9371654)
            {
              if (mChannelLayoutTag > 8912899)
              {
                if (mChannelLayoutTag <= 9109509)
                {
                  switch(mChannelLayoutTag)
                  {
                    case 8912900:
                      v20 = @"3.1 (L R C LFE)";
                      break;
                    case 8978437:
                      v20 = @"4.1 (L R C LFE Cs)";
                      break;
                    case 9043973:
                      v20 = @"4.1 (L R Ls Rs LFE)";
                      break;
                    default:
                      return v13;
                  }
                }

                else if (mChannelLayoutTag > 9240581)
                {
                  if (mChannelLayoutTag == 9240582)
                  {
                    v20 = @"6.0 (C L R Ls Rs Cs)";
                  }

                  else
                  {
                    if (mChannelLayoutTag != 9306119)
                    {
                      return v13;
                    }

                    v20 = @"6.1 (C L R Ls Rs Cs LFE)";
                  }
                }

                else if (mChannelLayoutTag == 9109510)
                {
                  v20 = @"6.0 (L R Ls Rs C Cs)";
                }

                else
                {
                  if (mChannelLayoutTag != 9175047)
                  {
                    return v13;
                  }

                  v20 = @"7.0 (L R Ls Rs C Rls Rrs)";
                }
              }

              else if (mChannelLayoutTag <= 8650755)
              {
                switch(mChannelLayoutTag)
                {
                  case 8454152:
                    v20 = @"7.1 (L R Ls Rs C LFE Lc Rc)";
                    break;
                  case 8519688:
                    v20 = @"SMPTE DTV (L R C LFE Ls Rs Lt Rt)";
                    break;
                  case 8585219:
                    v20 = @"3.0 (L R Cs)";
                    break;
                  default:
                    return v13;
                }
              }

              else if (mChannelLayoutTag > 8781827)
              {
                if (mChannelLayoutTag == 8781828)
                {
                  v20 = @"3.1 (L R LFE Cs)";
                }

                else
                {
                  if (mChannelLayoutTag != 8847365)
                  {
                    return v13;
                  }

                  v20 = @"4.1 (L R LFE Ls Rs)";
                }
              }

              else if (mChannelLayoutTag == 8650756)
              {
                v20 = @"4.0 (L R Ls Rs)";
              }

              else
              {
                if (mChannelLayoutTag != 8716291)
                {
                  return v13;
                }

                v20 = @"2.1 (L R LFE)";
              }
            }

            else if (mChannelLayoutTag <= 9895939)
            {
              if (mChannelLayoutTag <= 9568276)
              {
                switch(mChannelLayoutTag)
                {
                  case 9371655:
                    v20 = @"7.0 (C L R Ls Rs Rls Rrs)";
                    break;
                  case 9437192:
                    v20 = @"8.0 (C L R Ls Rs Rls Rrs Cs)";
                    break;
                  case 9502736:
                    v20 = @"TMH 10.2 (16 channel)";
                    break;
                  default:
                    return v13;
                }
              }

              else if (mChannelLayoutTag > 9764865)
              {
                if (mChannelLayoutTag == 9764866)
                {
                  v20 = @"1.1 (C LFE)";
                }

                else
                {
                  if (mChannelLayoutTag != 9830403)
                  {
                    return v13;
                  }

                  v20 = @"3.0 (L C R)";
                }
              }

              else if (mChannelLayoutTag == 9568277)
              {
                v20 = @"TMH 10.2 (21 channel)";
              }

              else
              {
                if (mChannelLayoutTag != 9699335)
                {
                  return v13;
                }

                v20 = @"7.0 (L R Ls Rs C Lc Rc)";
              }
            }

            else if (mChannelLayoutTag > 10158085)
            {
              if (mChannelLayoutTag > 10289158)
              {
                if (mChannelLayoutTag == 10289159)
                {
                  v20 = @"6.1 (L C R Ls Rs LFE Cs)";
                }

                else
                {
                  if (mChannelLayoutTag != 10354695)
                  {
                    return v13;
                  }

                  v20 = @"6.1 (L C R Ls Rs LFE Ts)";
                }
              }

              else if (mChannelLayoutTag == 10158086)
              {
                v20 = @"6.0 (L C R Ls Rs Cs)";
              }

              else
              {
                if (mChannelLayoutTag != 10223623)
                {
                  return v13;
                }

                v20 = @"7.0 (L C R Ls Rs Rls Rrs)";
              }
            }

            else if (mChannelLayoutTag > 10027011)
            {
              if (mChannelLayoutTag == 10027012)
              {
                v20 = @"3.1 (L R Cs LFE)";
              }

              else
              {
                if (mChannelLayoutTag != 10092549)
                {
                  return v13;
                }

                v20 = @"4.1 (L C R Cs LFE)";
              }
            }

            else if (mChannelLayoutTag == 9895940)
            {
              v20 = @"4.0 (L C R Cs)";
            }

            else
            {
              if (mChannelLayoutTag != 9961476)
              {
                return v13;
              }

              v20 = @"3.1 (L C R LFE)";
            }
          }

          else if (mChannelLayoutTag <= 7471106)
          {
            if (mChannelLayoutTag > 7012355)
            {
              if (mChannelLayoutTag <= 7208965)
              {
                switch(mChannelLayoutTag)
                {
                  case 7012356:
                    v20 = @"Ambisonic B Format (W X Y Z)";
                    break;
                  case 7077892:
                    v20 = @"Quadraphonic";
                    break;
                  case 7143429:
                    v20 = @"Pentagonal";
                    break;
                  default:
                    return v13;
                }
              }

              else if (mChannelLayoutTag > 7340039)
              {
                if (mChannelLayoutTag == 7340040)
                {
                  v20 = @"Cube";
                }

                else
                {
                  if (mChannelLayoutTag != 7405571)
                  {
                    return v13;
                  }

                  v20 = @"3.0 (L R C)";
                }
              }

              else if (mChannelLayoutTag == 7208966)
              {
                v20 = @"Hexagonal";
              }

              else
              {
                if (mChannelLayoutTag != 7274504)
                {
                  return v13;
                }

                v20 = @"Octagonal";
              }
            }

            else if (mChannelLayoutTag <= 6750209)
            {
              switch(mChannelLayoutTag)
              {
                case 6553601:
                  v20 = @"Mono";
                  break;
                case 6619138:
                  v20 = @"Stereo (L R)";
                  break;
                case 6684674:
                  v20 = @"Stereo Headphones";
                  break;
                default:
                  return v13;
              }
            }

            else if (mChannelLayoutTag > 6881281)
            {
              if (mChannelLayoutTag == 6881282)
              {
                v20 = @"X-Y";
              }

              else
              {
                if (mChannelLayoutTag != 6946818)
                {
                  return v13;
                }

                v20 = @"Binaural";
              }
            }

            else if (mChannelLayoutTag == 6750210)
            {
              v20 = @"Matrix Stereo (Lt Rt)";
            }

            else
            {
              if (mChannelLayoutTag != 6815746)
              {
                return v13;
              }

              v20 = @"Mid-Side";
            }
          }

          else if (mChannelLayoutTag <= 7929861)
          {
            if (mChannelLayoutTag <= 7667716)
            {
              switch(mChannelLayoutTag)
              {
                case 7471107:
                  v20 = @"3.0 (C L R)";
                  break;
                case 7536644:
                  v20 = @"4.0 (L R C Cs)";
                  break;
                case 7602180:
                  v20 = @"4.0 (C L R Cs)";
                  break;
                default:
                  return v13;
              }
            }

            else if (mChannelLayoutTag > 7798788)
            {
              if (mChannelLayoutTag == 7798789)
              {
                v20 = @"5.0 (L C R Ls Rs)";
              }

              else
              {
                if (mChannelLayoutTag != 7864325)
                {
                  return v13;
                }

                v20 = @"5.0 (C L R Ls Rs)";
              }
            }

            else if (mChannelLayoutTag == 7667717)
            {
              v20 = @"5.0 (L R C Ls Rs)";
            }

            else
            {
              if (mChannelLayoutTag != 7733253)
              {
                return v13;
              }

              v20 = @"5.0 (L R Ls Rs C)";
            }
          }

          else if (mChannelLayoutTag > 8192006)
          {
            if (mChannelLayoutTag > 8323079)
            {
              if (mChannelLayoutTag == 8323080)
              {
                v20 = @"7.1 (C Lc Rc L R Ls Rs LFE)";
              }

              else
              {
                if (mChannelLayoutTag != 8388616)
                {
                  return v13;
                }

                v20 = @"7.1 (L R C LFE Ls Rs Rls Rrs)";
              }
            }

            else if (mChannelLayoutTag == 8192007)
            {
              v20 = @"6.1 (L R C LFE Ls Rs Cs)";
            }

            else
            {
              if (mChannelLayoutTag != 8257544)
              {
                return v13;
              }

              v20 = @"7.1 (L R C LFE Ls Rs Lc Rc)";
            }
          }

          else if (mChannelLayoutTag > 8060933)
          {
            if (mChannelLayoutTag == 8060934)
            {
              v20 = @"5.1 (L C R Ls Rs LFE)";
            }

            else
            {
              if (mChannelLayoutTag != 8126470)
              {
                return v13;
              }

              v20 = @"5.1 (C L R Ls Rs LFE)";
            }
          }

          else if (mChannelLayoutTag == 7929862)
          {
            v20 = @"5.1 (L R C LFE Ls Rs)";
          }

          else
          {
            if (mChannelLayoutTag != 7995398)
            {
              return v13;
            }

            v20 = @"5.1 (L R Ls Rs C LFE)";
          }
        }

        else if (mChannelLayoutTag <= 12320774)
        {
          if (mChannelLayoutTag <= 11337734)
          {
            if (mChannelLayoutTag > 10878983)
            {
              if (mChannelLayoutTag <= 11075588)
              {
                switch(mChannelLayoutTag)
                {
                  case 10878984:
                    v20 = @"7.1 (L C R Ls Rs LFE Cs Vhc)";
                    break;
                  case 10944520:
                    v20 = @"7.1 (L C R Ls Rs LFE Ts Vhc)";
                    break;
                  case 11010052:
                    v20 = @"3.1 (C L R LFE)";
                    break;
                  default:
                    return v13;
                }
              }

              else if (mChannelLayoutTag > 11206661)
              {
                if (mChannelLayoutTag == 11206662)
                {
                  v20 = @"6.0 (C L R Rls Rrs Ts)";
                }

                else
                {
                  if (mChannelLayoutTag != 11272198)
                  {
                    return v13;
                  }

                  v20 = @"6.0 (C Cs L R Rls Rrs)";
                }
              }

              else if (mChannelLayoutTag == 11075589)
              {
                v20 = @"4.1 (C L R Cs LFE)";
              }

              else
              {
                if (mChannelLayoutTag != 11141126)
                {
                  return v13;
                }

                v20 = @"6.0 (Lc Rc L R Ls Rs)";
              }
            }

            else if (mChannelLayoutTag <= 10616839)
            {
              switch(mChannelLayoutTag)
              {
                case 10420231:
                  v20 = @"6.1 (L C R Ls Rs LFE Vhc)";
                  break;
                case 10485768:
                  v20 = @"7.1 (L C R Ls Rs LFE Rls Rrs)";
                  break;
                case 10551304:
                  v20 = @"7.1 (L C R Ls Rs LFE Lc Rc)";
                  break;
                default:
                  return v13;
              }
            }

            else if (mChannelLayoutTag > 10747911)
            {
              if (mChannelLayoutTag == 10747912)
              {
                v20 = @"7.1 (L C R Ls Rs LFE Vhl Vhr)";
              }

              else
              {
                if (mChannelLayoutTag != 10813448)
                {
                  return v13;
                }

                v20 = @"7.1 (L C R Ls Rs LFE Cs Ts)";
              }
            }

            else if (mChannelLayoutTag == 10616840)
            {
              v20 = @"7.1 (L C R Ls Rs LFE Lsd Rsd)";
            }

            else
            {
              if (mChannelLayoutTag != 10682376)
              {
                return v13;
              }

              v20 = @"7.1 (L C R Ls Rs LFE Lw Rw)";
            }
          }

          else if (mChannelLayoutTag <= 11796488)
          {
            if (mChannelLayoutTag <= 11534342)
            {
              switch(mChannelLayoutTag)
              {
                case 11337735:
                  v20 = @"6.1 (Lc Rc L R Ls Rs LFE)";
                  break;
                case 11403271:
                  v20 = @"6.1 (C L R Rls Rrs Ts LFE)";
                  break;
                case 11468807:
                  v20 = @"6.1 (C Cs L R Rls Rrs LFE)";
                  break;
                default:
                  return v13;
              }
            }

            else if (mChannelLayoutTag > 11665415)
            {
              if (mChannelLayoutTag == 11665416)
              {
                v20 = @"8.0 (Lc Rc L R Ls Rs Rls Rrs)";
              }

              else
              {
                if (mChannelLayoutTag != 11730952)
                {
                  return v13;
                }

                v20 = @"8.0 (Lc C Rc L R Ls Cs Rs)";
              }
            }

            else if (mChannelLayoutTag == 11534343)
            {
              v20 = @"7.1 (Lc C Rc L R Ls Rs)";
            }

            else
            {
              if (mChannelLayoutTag != 11599880)
              {
                return v13;
              }

              v20 = @"7.1 (Lc C Rc L R Ls Rs LFE)";
            }
          }

          else if (mChannelLayoutTag > 12058631)
          {
            if (mChannelLayoutTag > 12189700)
            {
              if (mChannelLayoutTag == 12189701)
              {
                v20 = @"5.0 (L R C Rls Rrs)";
              }

              else
              {
                if (mChannelLayoutTag != 12255238)
                {
                  return v13;
                }

                v20 = @"5.1 (L R C LFE Rls Rrs)";
              }
            }

            else if (mChannelLayoutTag == 12058632)
            {
              v20 = @"7.1 (C L R Ls Rs LFE Vhl Vhr)";
            }

            else
            {
              if (mChannelLayoutTag != 12124164)
              {
                return v13;
              }

              v20 = @"4.0 (L R Rls Rrs)";
            }
          }

          else if (mChannelLayoutTag > 11927558)
          {
            if (mChannelLayoutTag == 11927559)
            {
              v20 = @"6.1 (C L R Ls Rs LFE Cs)";
            }

            else
            {
              if (mChannelLayoutTag != 11993096)
              {
                return v13;
              }

              v20 = @"7.1 (C L R Ls Rs Rls Rrs LFE)";
            }
          }

          else if (mChannelLayoutTag == 11796489)
          {
            v20 = @"8.1 (Lc Rc L R Ls Rs Rls Rrs LFE)";
          }

          else
          {
            if (mChannelLayoutTag != 11862025)
            {
              return v13;
            }

            v20 = @"8.1 (Lc C Rc L R Ls Cs Rs LFE)";
          }
        }

        else if (mChannelLayoutTag > 13434887)
        {
          if (mChannelLayoutTag <= 13893636)
          {
            if (mChannelLayoutTag <= 13631499)
            {
              switch(mChannelLayoutTag)
              {
                case 13434888:
                  v20 = @"7.1 (L R C LFE Ls Rs Vhl Vhr)";
                  break;
                case 13500428:
                  v20 = @"10.2 (L R C LFE2 Rls Rrs LFE3 Lss Rss Vhl Vhr Ctr)";
                  break;
                case 13565962:
                  v20 = @"9.1 (L R C LFE Ls Rs Vhl Vhr Lts Rts)";
                  break;
                default:
                  return v13;
              }
            }

            else if (mChannelLayoutTag > 13762571)
            {
              if (mChannelLayoutTag == 13762572)
              {
                v20 = @"11.1 (L R C LFE Rls Rrs Lss Rss Vhl Vhr Ltr Rtr)";
              }

              else
              {
                if (mChannelLayoutTag != 13828110)
                {
                  return v13;
                }

                v20 = @"13.1 (L R C LFE Rls Rrs Lss Rss Vhl Vhr Ltr Rtr Leos Reos)";
              }
            }

            else if (mChannelLayoutTag == 13631500)
            {
              v20 = @"11.1 (L R C LFE Ls Rs Vhl Vhr Vhc Lts Rts Ts)";
            }

            else
            {
              if (mChannelLayoutTag != 13697038)
              {
                return v13;
              }

              v20 = @"13.1 (L R C LFE Ls Rs Lbs Rbs Vhl Vhr Vhc Lts Rts Ts)";
            }
          }

          else if (mChannelLayoutTag > 14155780)
          {
            if (mChannelLayoutTag > 14286854)
            {
              if (mChannelLayoutTag == 14286855)
              {
                v20 = @"6.1 (L R Ls Rs C Cs LFE)";
              }

              else
              {
                if (mChannelLayoutTag != 14352392)
                {
                  return v13;
                }

                v20 = @"7.1 (L R Rls Rrs Ls Rs C LFE)";
              }
            }

            else if (mChannelLayoutTag == 14155781)
            {
              v20 = @"5.0 (L R Rls Rrs C)";
            }

            else
            {
              if (mChannelLayoutTag != 14221318)
              {
                return v13;
              }

              v20 = @"5.1 (L R Rls Rrs C LFE)";
            }
          }

          else if (mChannelLayoutTag > 14024710)
          {
            if (mChannelLayoutTag == 14024711)
            {
              v20 = @"6.1 (L C R Ls Rs Cs LFE)";
            }

            else
            {
              if (mChannelLayoutTag != 14090248)
              {
                return v13;
              }

              v20 = @"7.1 (L C R Ls Rs Rls Rrs LFE)";
            }
          }

          else if (mChannelLayoutTag == 13893637)
          {
            v20 = @"5.0 (L C R Rls Rrs)";
          }

          else
          {
            if (mChannelLayoutTag != 13959174)
            {
              return v13;
            }

            v20 = @"5.1 (L C R Rls Rrs LFE)";
          }
        }

        else if (mChannelLayoutTag <= 12910595)
        {
          if (mChannelLayoutTag <= 12648463)
          {
            switch(mChannelLayoutTag)
            {
              case 12320775:
                v20 = @"6.1 (L R C LFE Cs Ls Rs)";
                break;
              case 12386312:
                v20 = @"7.1 (L R C LFE Rls Rrs Ls Rs)";
                break;
              case 12582924:
                v20 = @"7.1.4 (L R C LFE Ls Rs Rls Rrs Vhl Vhr Ltr Rtr)";
                break;
              default:
                return v13;
            }
          }

          else if (mChannelLayoutTag > 12779529)
          {
            if (mChannelLayoutTag == 12779530)
            {
              v20 = @"5.1.4 (L R C LFE Ls Rs Vhl Vhr Ltr Rtr)";
            }

            else
            {
              if (mChannelLayoutTag != 12845066)
              {
                return v13;
              }

              v20 = @"7.1.2 (L R C LFE Ls Rs Rls Rrs Ltm Rtm)";
            }
          }

          else if (mChannelLayoutTag == 12648464)
          {
            v20 = @"9.1.6 (L R C LFE Ls Rs Rls Rrs Lw Rw Vhl Vhr Ltm Rtm Ltr Rtr)";
          }

          else
          {
            if (mChannelLayoutTag != 12713992)
            {
              return v13;
            }

            v20 = @"5.1.2 (L R C LFE Ls Rs Ltm Rtm)";
          }
        }

        else if (mChannelLayoutTag > 13172743)
        {
          if (mChannelLayoutTag > 13303821)
          {
            if (mChannelLayoutTag == 13303822)
            {
              v20 = @"7.1.6 (L R Rls Rrs Ls Rs C LFE Vhl Vhr Ltm Rtm Ltr Rtr)";
            }

            else
            {
              if (mChannelLayoutTag != 13369368)
              {
                return v13;
              }

              v20 = @"22.2 (Lw Rw C LFE2 Rls Rrs L R Cs LFE3 Lss Rss Vhl Vhr Vhc Ts Ltr Rtr Ltm Rtm Ctr Cb Lb Rb)";
            }
          }

          else if (mChannelLayoutTag == 13172744)
          {
            v20 = @"7.1 (L R Ls Rs Rls Rrs C LFE)";
          }

          else
          {
            if (mChannelLayoutTag != 13238284)
            {
              return v13;
            }

            v20 = @"7.1.4 (L R Rls Rrs Ls Rs C LFE Vhl Vhr Ltr Rtr)";
          }
        }

        else if (mChannelLayoutTag > 13041670)
        {
          if (mChannelLayoutTag == 13041671)
          {
            v20 = @"6.1 (L R Ls Rs Cs C LFE)";
          }

          else
          {
            if (mChannelLayoutTag != 13107207)
            {
              return v13;
            }

            v20 = @"6.1 (L C R Ls Cs Rs LFE)";
          }
        }

        else if (mChannelLayoutTag == 12910596)
        {
          v20 = @"4.0 (L R Cs C)";
        }

        else
        {
          if (mChannelLayoutTag != 12976134)
          {
            return v13;
          }

          v20 = @"6.0 (L R Ls Rs Cs C)";
        }
      }

      v13 = 0;
      *a2 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v20, @"AudioChannelLayouts", v7, a4);
      return v13;
    }
  }

  else if (mChannelLayoutTag)
  {
    goto LABEL_3;
  }

  if (a1->mNumberChannelDescriptions == 1)
  {
    v12 = a1->mChannelDescriptions[0].mChannelLabel;
    *&v21.mChannelDescriptions[0].mChannelLabel = 0;
    *&v21.mChannelBitmap = 0;
    v21.mChannelLayoutTag = v12;
    p_mChannelLabel = &v21;
    return AudioFormatProperty_ChannelName(p_mChannelLabel, a2, a3, a4);
  }

  if (!AudioFormatProperty_TagForChannelLayout(a1, &v22))
  {
    mChannelLayoutTag = v22;
    goto LABEL_18;
  }

  return AudioFormatProperty_ChannelLayoutNameFromDescriptions(a1, a2, 0);
}

void sub_18F6F61BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFormatProperty_ChannelLayoutNameFromDescriptions(const AudioChannelLayout *a1, const __CFString **a2, int a3)
{
  v48 = *MEMORY[0x1E69E9840];
  mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions)
  {
    mChannelDescriptions = a1->mChannelDescriptions;
    v7 = a1->mNumberChannelDescriptions;
    v8 = a1->mChannelDescriptions;
    while (1)
    {
      mChannelLabel = v8->mChannelLabel;
      ++v8;
      if (mChannelLabel != 400)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    if ((mChannelDescriptions->mChannelLabel & 0xFFFF0000) == 0x10000)
    {
      v22 = a1->mNumberChannelDescriptions;
      v23 = a1->mChannelDescriptions;
      v24 = mChannelDescriptions->mChannelLabel;
      while (1)
      {
        v26 = v23->mChannelLabel;
        ++v23;
        v25 = v26;
        if ((v26 & 0xFFFF0000) != 0x10000 || v24 != v25)
        {
          break;
        }

        ++v24;
        if (!--v22)
        {
          v27 = sAudioToolboxBundle;
          if (sAudioToolboxBundle == -1)
          {
            pthread_once(&sOnce, InitGetAudioToolboxBundle);
            v27 = sAudioToolboxBundle;
          }

          v11 = *MEMORY[0x1E695E480];
          Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
          snprintf(__str, 0x10uLL, "%u ", a1->mNumberChannelDescriptions);
          CFStringAppendCString(Mutable, __str, 0x8000100u);
          if (a1->mNumberChannelDescriptions == 1)
          {
            v29 = @"Channel";
          }

          else
          {
            v29 = @"Channels";
          }

          v30 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v29, @"AudioChannelLabels", v27, v28);
          CFStringAppend(Mutable, v30);
          CFRelease(v30);
          CFStringAppendCString(Mutable, " (", 0x8000100u);
          v32 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Discrete", @"AudioChannelLabels", v27, v31);
          CFStringAppend(Mutable, v32);
          CFRelease(v32);
          if (a1->mNumberChannelDescriptions == 1)
          {
            snprintf(__str, 0x10uLL, " %u)");
          }

          else
          {
            snprintf(__str, 0x10uLL, " %u-%u)");
          }

          v18 = __str;
          goto LABEL_11;
        }
      }
    }

    if (a3)
    {
      v33 = 0;
      v34 = a1->mNumberChannelDescriptions;
      do
      {
        v36 = mChannelDescriptions->mChannelLabel;
        ++mChannelDescriptions;
        v35 = v36;
        if (v36 == 37 || v35 == 4)
        {
          ++v33;
        }

        --v34;
      }

      while (v34);
      snprintf(__str, 0x10uLL, "%u.%u", mNumberChannelDescriptions - v33, v33);
      v19 = 0;
      *a2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x8000100u);
    }

    else
    {
      v38 = *MEMORY[0x1E695E480];
      v39 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      v42 = CFStringCreateMutable(v38, 0);
      if (a1->mNumberChannelDescriptions)
      {
        v43 = 0;
        v44 = 0;
        while (1)
        {
          if (v43)
          {
            CFStringAppendCString(v39, " ", 0x8000100u);
          }

          *__str = 0;
          v45 = AudioFormatProperty_ChannelShortName(mChannelDescriptions->mChannelLabel, __str, v40, v41);
          if (v45)
          {
            break;
          }

          v46 = *__str;
          CFStringAppend(v39, *__str);
          CFRelease(v46);
          if (mChannelDescriptions->mChannelLabel == 37 || mChannelDescriptions->mChannelLabel == 4)
          {
            ++v44;
          }

          ++v43;
          ++mChannelDescriptions;
          if (v43 >= a1->mNumberChannelDescriptions)
          {
            goto LABEL_45;
          }
        }

        v19 = v45;
      }

      else
      {
        v44 = 0;
LABEL_45:
        CFStringAppendCString(v39, ")", 0x8000100u);
        snprintf(__str, 0x10uLL, "%u.%u (", a1->mNumberChannelDescriptions - v44, v44);
        CFStringAppendCString(v42, __str, 0x8000100u);
        CFStringAppend(v42, v39);
        v19 = 0;
        *a2 = CFStringCreateCopy(v38, v42);
      }

      CFRelease(v39);
      CFRelease(v42);
    }
  }

  else
  {
LABEL_5:
    v10 = sAudioToolboxBundle;
    if (sAudioToolboxBundle == -1)
    {
      pthread_once(&sOnce, InitGetAudioToolboxBundle);
      v10 = sAudioToolboxBundle;
    }

    v11 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    snprintf(__str, 0x10uLL, "%u ", a1->mNumberChannelDescriptions);
    CFStringAppendCString(Mutable, __str, 0x8000100u);
    if (a1->mNumberChannelDescriptions == 1)
    {
      v14 = @"Channel";
    }

    else
    {
      v14 = @"Channels";
    }

    v15 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v14, @"AudioChannelLabels", v10, v13);
    CFStringAppend(Mutable, v15);
    CFRelease(v15);
    CFStringAppendCString(Mutable, " (", 0x8000100u);
    v17 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(@"Discrete", @"AudioChannelLabels", v10, v16);
    CFStringAppend(Mutable, v17);
    CFRelease(v17);
    v18 = ")";
LABEL_11:
    CFStringAppendCString(Mutable, v18, 0x8000100u);
    *a2 = CFStringCreateCopy(v11, Mutable);
    CFRelease(Mutable);
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t AudioFormatProperty_ChannelLayoutSimpleName(const AudioChannelLayout *a1, const __CFString **a2, uint64_t a3, const __CFString *a4)
{
  mChannelLayoutTag = a1->mChannelLayoutTag;
  v36 = a1->mChannelLayoutTag;
  v7 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v7 = sAudioToolboxBundle;
    if (mChannelLayoutTag)
    {
LABEL_3:
      if (mChannelLayoutTag == 0x10000)
      {
        mChannelBitmap = a1->mChannelBitmap;
        v9 = vcnt_s8(mChannelBitmap);
        v9.i16[0] = vaddlv_u8(v9);
        v10 = v9.i32[0];
        if (v9.i32[0] == 1)
        {
          AudioFormatProperty_ChannelLayoutForBitmap(mChannelBitmap.i32[0], &v35, v9);
          v38 = 0;
          v39 = 0;
          mChannelLabel = v35.mChannelDescriptions[0].mChannelLabel;
          p_mChannelLabel = &mChannelLabel;
          return AudioFormatProperty_ChannelName(p_mChannelLabel, a2, a3, a4);
        }

        mChannelLayoutTag = AudioFormatProperty_LayoutTagForBitmap(mChannelBitmap.i32[0]);
        if (mChannelLayoutTag == 0x10000)
        {
          *&v35.mChannelLayoutTag = 0;
          CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v35, (20 * v10 + 12), 0);
          v14 = *&v35.mChannelLayoutTag;
          AudioFormatProperty_ChannelLayoutForBitmap(mChannelBitmap.i32[0], *&v35.mChannelLayoutTag, v15);
          v13 = AudioFormatProperty_ChannelLayoutNameFromDescriptions(v14, a2, 1);
          if (v14)
          {
            free(v14);
          }

          return v13;
        }
      }

LABEL_18:
      v17 = mChannelLayoutTag & 0xFFFF0000;
      if ((mChannelLayoutTag & 0xFFFF0000) == 0xBF0000)
      {
        v20 = @"HOA_ACN_N3D";
        goto LABEL_27;
      }

      if (v17 == 12451840)
      {
        v20 = @"HOA_ACN_SN3D";
        goto LABEL_27;
      }

      if (v17 == 9633792)
      {
        if (mChannelLayoutTag == 1)
        {
          v18 = @"Discrete Channel";
        }

        else
        {
          v18 = @"Discrete Channels";
        }

        v19 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v18, @"AudioChannelLayouts", v7, a4);
        *a2 = CFStringCreateWithFormat(0, 0, @"%d %@", mChannelLayoutTag, v19);
        CFRelease(v19);
        return 0;
      }

      v13 = 560360820;
      if (mChannelLayoutTag > 10420230)
      {
        if (mChannelLayoutTag > 12320774)
        {
          if (mChannelLayoutTag <= 13434887)
          {
            if (mChannelLayoutTag <= 12910595)
            {
              if (mChannelLayoutTag > 12648463)
              {
                if (mChannelLayoutTag > 12779529)
                {
                  if (mChannelLayoutTag == 12779530)
                  {
                    v24 = @"5.1.4";
                  }

                  else
                  {
                    if (mChannelLayoutTag != 12845066)
                    {
                      return v13;
                    }

                    v24 = @"7.1.2";
                  }
                }

                else if (mChannelLayoutTag == 12648464)
                {
                  v24 = @"9.1.6";
                }

                else
                {
                  if (mChannelLayoutTag != 12713992)
                  {
                    return v13;
                  }

                  v24 = @"5.1.2";
                }

                goto LABEL_238;
              }

              if (mChannelLayoutTag == 12320775)
              {
                goto LABEL_237;
              }

              if (mChannelLayoutTag != 12386312)
              {
                v30 = 12582924;
                goto LABEL_154;
              }
            }

            else
            {
              if (mChannelLayoutTag <= 13172743)
              {
                if (mChannelLayoutTag <= 13041670)
                {
                  if (mChannelLayoutTag != 12910596)
                  {
                    v22 = 12976134;
                    goto LABEL_177;
                  }

                  goto LABEL_167;
                }

                if (mChannelLayoutTag != 13041671)
                {
                  v34 = 13107207;
                  goto LABEL_236;
                }

                goto LABEL_237;
              }

              if (mChannelLayoutTag > 13303821)
              {
                if (mChannelLayoutTag == 13303822)
                {
                  v24 = @"7.1.6";
                }

                else
                {
                  if (mChannelLayoutTag != 13369368)
                  {
                    return v13;
                  }

                  v24 = @"22.2";
                }

                goto LABEL_238;
              }

              if (mChannelLayoutTag != 13172744)
              {
                v30 = 13238284;
LABEL_154:
                if (mChannelLayoutTag != v30)
                {
                  return v13;
                }

                v24 = @"7.1.4";
                goto LABEL_238;
              }
            }

LABEL_233:
            v24 = @"7.1";
            goto LABEL_238;
          }

          if (mChannelLayoutTag > 13893636)
          {
            if (mChannelLayoutTag <= 14155780)
            {
              if (mChannelLayoutTag <= 14024710)
              {
                if (mChannelLayoutTag != 13893637)
                {
                  v23 = 13959174;
                  goto LABEL_223;
                }

LABEL_220:
                v24 = @"5.0";
                goto LABEL_238;
              }

              if (mChannelLayoutTag == 14024711)
              {
                goto LABEL_237;
              }

              v26 = 14090248;
LABEL_232:
              if (mChannelLayoutTag != v26)
              {
                return v13;
              }

              goto LABEL_233;
            }

            if (mChannelLayoutTag > 14286854)
            {
              if (mChannelLayoutTag == 14286855)
              {
                goto LABEL_237;
              }

              v26 = 14352392;
              goto LABEL_232;
            }

            if (mChannelLayoutTag == 14155781)
            {
              goto LABEL_220;
            }

            v23 = 14221318;
LABEL_223:
            if (mChannelLayoutTag != v23)
            {
              return v13;
            }

            goto LABEL_224;
          }

          if (mChannelLayoutTag <= 13631499)
          {
            if (mChannelLayoutTag != 13434888)
            {
              if (mChannelLayoutTag == 13500428)
              {
                v24 = @"10.2";
              }

              else
              {
                if (mChannelLayoutTag != 13565962)
                {
                  return v13;
                }

                v24 = @"9.1";
              }

              goto LABEL_238;
            }

            goto LABEL_233;
          }

          if (mChannelLayoutTag > 13762571)
          {
            if (mChannelLayoutTag != 13762572)
            {
              v28 = 13828110;
              goto LABEL_194;
            }
          }

          else if (mChannelLayoutTag != 13631500)
          {
            v28 = 13697038;
LABEL_194:
            if (mChannelLayoutTag != v28)
            {
              return v13;
            }

            v24 = @"13.1";
            goto LABEL_238;
          }

          v24 = @"11.1";
          goto LABEL_238;
        }

        if (mChannelLayoutTag > 11337734)
        {
          if (mChannelLayoutTag > 11796488)
          {
            if (mChannelLayoutTag <= 12058631)
            {
              if (mChannelLayoutTag <= 11927558)
              {
                if (mChannelLayoutTag != 11796489 && mChannelLayoutTag != 11862025)
                {
                  return v13;
                }

                v24 = @"8.1";
                goto LABEL_238;
              }

              if (mChannelLayoutTag == 11927559)
              {
                goto LABEL_237;
              }

              v26 = 11993096;
              goto LABEL_232;
            }

            if (mChannelLayoutTag > 12189700)
            {
              if (mChannelLayoutTag == 12189701)
              {
                goto LABEL_220;
              }

              v23 = 12255238;
              goto LABEL_223;
            }

            if (mChannelLayoutTag == 12058632)
            {
              goto LABEL_233;
            }

            v31 = 12124164;
            goto LABEL_166;
          }

          if (mChannelLayoutTag <= 11534342)
          {
            if (mChannelLayoutTag != 11337735 && mChannelLayoutTag != 11403271)
            {
              v34 = 11468807;
              goto LABEL_236;
            }

            goto LABEL_237;
          }

          if (mChannelLayoutTag <= 11665415)
          {
            if (mChannelLayoutTag != 11534343)
            {
              v26 = 11599880;
              goto LABEL_232;
            }

LABEL_172:
            v24 = @"7.0";
            goto LABEL_238;
          }

          if (mChannelLayoutTag != 11665416 && mChannelLayoutTag != 11730952)
          {
            return v13;
          }

LABEL_198:
          v24 = @"8.0";
          goto LABEL_238;
        }

        if (mChannelLayoutTag <= 10878983)
        {
          if (mChannelLayoutTag <= 10616839)
          {
            if (mChannelLayoutTag == 10420231)
            {
              goto LABEL_237;
            }

            if (mChannelLayoutTag == 10485768)
            {
              goto LABEL_233;
            }

            v26 = 10551304;
          }

          else if (mChannelLayoutTag > 10747911)
          {
            if (mChannelLayoutTag == 10747912)
            {
              goto LABEL_233;
            }

            v26 = 10813448;
          }

          else
          {
            if (mChannelLayoutTag == 10616840)
            {
              goto LABEL_233;
            }

            v26 = 10682376;
          }

          goto LABEL_232;
        }

        if (mChannelLayoutTag > 11075588)
        {
          if (mChannelLayoutTag <= 11206661)
          {
            if (mChannelLayoutTag != 11075589)
            {
              v22 = 11141126;
              goto LABEL_177;
            }

LABEL_228:
            v24 = @"4.1";
            goto LABEL_238;
          }

          if (mChannelLayoutTag != 11206662)
          {
            v22 = 11272198;
LABEL_177:
            if (mChannelLayoutTag != v22)
            {
              return v13;
            }
          }

LABEL_188:
          v24 = @"6.0";
          goto LABEL_238;
        }

        if (mChannelLayoutTag == 10878984 || mChannelLayoutTag == 10944520)
        {
          goto LABEL_233;
        }

        v25 = 11010052;
        goto LABEL_135;
      }

      if (mChannelLayoutTag <= 8454151)
      {
        if (mChannelLayoutTag > 7471106)
        {
          if (mChannelLayoutTag > 7929861)
          {
            if (mChannelLayoutTag > 8192006)
            {
              if (mChannelLayoutTag > 8323079)
              {
                if (mChannelLayoutTag == 8323080)
                {
                  goto LABEL_233;
                }

                v26 = 8388616;
              }

              else
              {
                if (mChannelLayoutTag == 8192007)
                {
                  goto LABEL_237;
                }

                v26 = 8257544;
              }

              goto LABEL_232;
            }

            if (mChannelLayoutTag > 8060933)
            {
              if (mChannelLayoutTag != 8060934)
              {
                v23 = 8126470;
                goto LABEL_223;
              }
            }

            else if (mChannelLayoutTag != 7929862)
            {
              v23 = 7995398;
              goto LABEL_223;
            }

LABEL_224:
            v24 = @"5.1";
            goto LABEL_238;
          }

          if (mChannelLayoutTag > 7667716)
          {
            if (mChannelLayoutTag > 7798788)
            {
              if (mChannelLayoutTag == 7798789)
              {
                goto LABEL_220;
              }

              v29 = 7864325;
            }

            else
            {
              if (mChannelLayoutTag == 7667717)
              {
                goto LABEL_220;
              }

              v29 = 7733253;
            }

            if (mChannelLayoutTag != v29)
            {
              return v13;
            }

            goto LABEL_220;
          }

          if (mChannelLayoutTag != 7471107)
          {
            if (mChannelLayoutTag != 7536644)
            {
              v31 = 7602180;
LABEL_166:
              if (mChannelLayoutTag != v31)
              {
                return v13;
              }

              goto LABEL_167;
            }

            goto LABEL_167;
          }

LABEL_206:
          v24 = @"3.0";
          goto LABEL_238;
        }

        if (mChannelLayoutTag <= 7012355)
        {
          if (mChannelLayoutTag <= 6750209)
          {
            if (mChannelLayoutTag == 6553601)
            {
              v20 = @"Mono";
            }

            else
            {
              if (mChannelLayoutTag != 6619138 && mChannelLayoutTag != 6684674)
              {
                return v13;
              }

              v20 = @"Stereo";
            }
          }

          else if (mChannelLayoutTag > 6881281)
          {
            if (mChannelLayoutTag == 6881282)
            {
              v20 = @"X-Y";
            }

            else
            {
              if (mChannelLayoutTag != 6946818)
              {
                return v13;
              }

              v20 = @"Binaural";
            }
          }

          else if (mChannelLayoutTag == 6750210)
          {
            v20 = @"Matrix Stereo";
          }

          else
          {
            if (mChannelLayoutTag != 6815746)
            {
              return v13;
            }

            v20 = @"Mid-Side";
          }

          goto LABEL_27;
        }

        if (mChannelLayoutTag <= 7208965)
        {
          switch(mChannelLayoutTag)
          {
            case 7012356:
              v20 = @"Ambisonic B Format";
              break;
            case 7077892:
              v20 = @"Quadraphonic";
              break;
            case 7143429:
              v20 = @"Pentagonal";
              break;
            default:
              return v13;
          }
        }

        else
        {
          if (mChannelLayoutTag <= 7340039)
          {
            if (mChannelLayoutTag == 7208966)
            {
              v20 = @"Hexagonal";
            }

            else
            {
              if (mChannelLayoutTag != 7274504)
              {
                return v13;
              }

              v20 = @"Octagonal";
            }

            goto LABEL_27;
          }

          if (mChannelLayoutTag != 7340040)
          {
            v32 = 7405571;
LABEL_205:
            if (mChannelLayoutTag != v32)
            {
              return v13;
            }

            goto LABEL_206;
          }

          v20 = @"Cube";
        }

        goto LABEL_27;
      }

      if (mChannelLayoutTag <= 9371654)
      {
        if (mChannelLayoutTag <= 8912899)
        {
          if (mChannelLayoutTag <= 8650755)
          {
            if (mChannelLayoutTag == 8454152)
            {
              goto LABEL_233;
            }

            if (mChannelLayoutTag != 8519688)
            {
              v32 = 8585219;
              goto LABEL_205;
            }

            v20 = @"SMPTE DTV";
LABEL_27:
            Copy = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v20, @"AudioChannelLayouts", v7, a4);
LABEL_239:
            v13 = 0;
            *a2 = Copy;
            return v13;
          }

          if (mChannelLayoutTag <= 8781827)
          {
            if (mChannelLayoutTag != 8650756)
            {
              if (mChannelLayoutTag != 8716291)
              {
                return v13;
              }

              v24 = @"2.1";
              goto LABEL_238;
            }

            goto LABEL_167;
          }

          if (mChannelLayoutTag != 8781828)
          {
            v33 = 8847365;
            goto LABEL_227;
          }

          goto LABEL_229;
        }

        if (mChannelLayoutTag <= 9109509)
        {
          if (mChannelLayoutTag != 8912900)
          {
            if (mChannelLayoutTag == 8978437)
            {
              goto LABEL_228;
            }

            v33 = 9043973;
LABEL_227:
            if (mChannelLayoutTag != v33)
            {
              return v13;
            }

            goto LABEL_228;
          }

LABEL_229:
          v24 = @"3.1";
          goto LABEL_238;
        }

        if (mChannelLayoutTag > 9240581)
        {
          if (mChannelLayoutTag != 9240582)
          {
            v34 = 9306119;
            goto LABEL_236;
          }

          goto LABEL_188;
        }

        if (mChannelLayoutTag == 9109510)
        {
          goto LABEL_188;
        }

        v27 = 9175047;
      }

      else if (mChannelLayoutTag <= 9895939)
      {
        if (mChannelLayoutTag <= 9568276)
        {
          if (mChannelLayoutTag == 9371655)
          {
            goto LABEL_172;
          }

          if (mChannelLayoutTag == 9437192)
          {
            goto LABEL_198;
          }

          if (mChannelLayoutTag != 9502736)
          {
            return v13;
          }

          v20 = @"TMH 10.2 (16 channel)";
          goto LABEL_27;
        }

        if (mChannelLayoutTag > 9764865)
        {
          if (mChannelLayoutTag == 9764866)
          {
            v24 = @"1.1";
            goto LABEL_238;
          }

          v32 = 9830403;
          goto LABEL_205;
        }

        if (mChannelLayoutTag == 9568277)
        {
          v20 = @"TMH 10.2 (21 channel)";
          goto LABEL_27;
        }

        v27 = 9699335;
      }

      else
      {
        if (mChannelLayoutTag <= 10158085)
        {
          if (mChannelLayoutTag <= 10027011)
          {
            if (mChannelLayoutTag != 9895940)
            {
              v25 = 9961476;
LABEL_135:
              if (mChannelLayoutTag != v25)
              {
                return v13;
              }

              goto LABEL_229;
            }

LABEL_167:
            v24 = @"4.0";
LABEL_238:
            Copy = CFStringCreateCopy(0, v24);
            goto LABEL_239;
          }

          if (mChannelLayoutTag != 10027012)
          {
            v33 = 10092549;
            goto LABEL_227;
          }

          goto LABEL_229;
        }

        if (mChannelLayoutTag > 10289158)
        {
          if (mChannelLayoutTag != 10289159)
          {
            v34 = 10354695;
LABEL_236:
            if (mChannelLayoutTag != v34)
            {
              return v13;
            }
          }

LABEL_237:
          v24 = @"6.1";
          goto LABEL_238;
        }

        if (mChannelLayoutTag == 10158086)
        {
          goto LABEL_188;
        }

        v27 = 10223623;
      }

      if (mChannelLayoutTag != v27)
      {
        return v13;
      }

      goto LABEL_172;
    }
  }

  else if (mChannelLayoutTag)
  {
    goto LABEL_3;
  }

  if (a1->mNumberChannelDescriptions == 1)
  {
    v12 = a1->mChannelDescriptions[0].mChannelLabel;
    *&v35.mChannelDescriptions[0].mChannelLabel = 0;
    *&v35.mChannelBitmap = 0;
    v35.mChannelLayoutTag = v12;
    p_mChannelLabel = &v35;
    return AudioFormatProperty_ChannelName(p_mChannelLabel, a2, a3, a4);
  }

  if (!AudioFormatProperty_TagForChannelLayout(a1, &v36))
  {
    mChannelLayoutTag = v36;
    goto LABEL_18;
  }

  return AudioFormatProperty_ChannelLayoutNameFromDescriptions(a1, a2, 1);
}

void sub_18F6F7554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFormatProperty_AudibleProtectedContentCanBeAuthorized(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v18 = 0;
  PropertyInfo = OpenCodecComponent(v4, &v18, 0x61646563u);
  if (!PropertyInfo)
  {
    v6 = v18;
    v17 = v18;
    outSize = 0;
    outWritable = 0;
    PropertyInfo = AudioCodecGetPropertyInfo(v18, 0x61617468u, &outSize, &outWritable);
    if (!PropertyInfo && outSize == 64)
    {
      v7 = *(a1 + 16);
      v10[0] = *a1;
      v10[1] = v7;
      v8 = *(a1 + 40);
      v11 = *(a1 + 32);
      v12 = v8;
      v13 = *(a1 + 48);
      v14 = 0;
      outSize = 64;
      PropertyInfo = AudioCodecGetProperty(v6, 0x61617468u, &outSize, v10);
      if (!PropertyInfo)
      {
        *a2 = v14;
      }
    }

    AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&v17);
  }

  return PropertyInfo;
}

uint64_t AMRAudioStream::GeneratePackets(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 236);
  v4 = -1;
  if (v3 <= 155)
  {
    if (v3 == -1)
    {
      return result;
    }

    if (v3)
    {
      goto LABEL_73;
    }
  }

  else
  {
    if (v3 == 252)
    {
      v5 = *(a1 + 256);
      v6 = *(a1 + 264);
      goto LABEL_70;
    }

    if (v3 == 247)
    {
      v7 = *(a1 + 256);
      v8 = *(a1 + 264);
      goto LABEL_64;
    }

    if (v3 != 156)
    {
      goto LABEL_73;
    }
  }

LABEL_11:
  v9 = *(a1 + 8);
  v10 = *(v9 + 96);
  while (1)
  {
    v11 = *(v9 + 88);
    v12 = v11 + *(v9 + 80);
    v13 = v12 - v10;
    if (v10 < v11 || v12 <= v10 || v12 == v10)
    {
      result = 0;
      v4 = 156;
      goto LABEL_73;
    }

    *(a1 + 344) = 0;
    v16 = v13 ? (*(v9 + 72) + (v10 - v11)) : 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *(a1 + 340) = 0;
    v20 = (*(a1 + 404) ? &_AMR_WB_FRAMESIZE : &_AMR_NB_FRAMESIZE);
    do
    {
      v21 = v20[(v16[v19] >> 3) & 0xF];
      if (!v20[(v16[v19] >> 3) & 0xF])
      {
        goto LABEL_72;
      }

      if (v13 - v19 >= v21)
      {
        *(a1 + 344) = ++v18;
      }

      else
      {
        v17 = 1;
        *(a1 + 340) = 1;
        *(a1 + 332) = v19;
        *(a1 + 336) = v21;
      }

      v19 += v21;
    }

    while (v19 < v13);
    v22 = *(a1 + 408);
    if (!v22)
    {
      __assert_rtn("GeneratePackets", "AMRAudioStream.cpp", 197, "mSmallPacketsPerLargePacket > 0");
    }

    v23 = v18 / v22;
    *(a1 + 412) = v18 / v22;
    *(a1 + 416) = v18 % v22;
    *(a1 + 432) = 0;
    if (v22 <= v18)
    {
      break;
    }

    *(v9 + 96) = v10;
    v24 = (v9 + 96);
    if (v17)
    {
      goto LABEL_53;
    }

LABEL_49:
    if (*(a1 + 416))
    {
      goto LABEL_53;
    }

    if (!*(a1 + 344))
    {
      v10 = *(v9 + 88) + *(v9 + 80);
      *v24 = v10;
    }
  }

  if (*(a1 + 200) < v23)
  {
    v25 = (1 << -__clz(v23 - 1));
    *(a1 + 200) = v25;
    CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((a1 + 192), v25);
    v23 = *(a1 + 412);
  }

  *(a1 + 420) = 0;
  v26 = *(a1 + 192);
  if (v23)
  {
    v27 = 0;
    v28 = 0;
    v29 = *(a1 + 408);
    while (1)
    {
      v30 = &v26[v27];
      v30->mStartOffset = v28;
      v30->mVariableFramesInPacket = 0;
      *(a1 + 424) = 0;
      v31 = 0;
      if (v29)
      {
        break;
      }

LABEL_46:
      v30->mDataByteSize = v31;
      *(a1 + 420) = ++v27;
      if (v27 >= v23 || v28 >= v13)
      {
        goto LABEL_48;
      }
    }

    if (*(a1 + 404))
    {
      v32 = &_AMR_WB_FRAMESIZE;
    }

    else
    {
      v32 = &_AMR_NB_FRAMESIZE;
    }

    v33 = 1;
    while (1)
    {
      v34 = v32[(v16[v28] >> 3) & 0xF];
      if (!v32[(v16[v28] >> 3) & 0xF])
      {
        break;
      }

      v31 += v34;
      *(a1 + 428) = v31;
      v28 += v34;
      *(a1 + 432) += v34;
      *(a1 + 424) = v33;
      if (v33 < v29)
      {
        ++v33;
        if (v28 < v13)
        {
          continue;
        }
      }

      goto LABEL_46;
    }

LABEL_72:
    *(a1 + 177) = 1;
    result = 1685348671;
    v4 = -1;
    goto LABEL_73;
  }

LABEL_48:
  AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), *(a1 + 432), v23, v16, v26, 1);
  *(a1 + 184) += *(a1 + 412);
  v9 = *(a1 + 8);
  v35 = *(a1 + 340);
  v24 = (v9 + 96);
  v10 = *(v9 + 96) + *(a1 + 432);
  *(v9 + 96) = v10;
  if ((v35 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_53:
  if (*(a1 + 404))
  {
    v36 = 61;
  }

  else
  {
    v36 = 32;
  }

  v37 = (v36 * *(a1 + 408));
  if (*(a1 + 284) < v37)
  {
    *(a1 + 284) = v37;
    CADeprecated::CAAutoFree<unsigned char>::allocBytes((a1 + 288), v37, 0);
  }

  *(a1 + 440) = *(a1 + 288);
  *(a1 + 448) = 0;
  if (!*(a1 + 200))
  {
    *(a1 + 200) = 1;
    CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((a1 + 192), 1);
  }

  v38 = 0;
  v39 = 0;
  v40 = *(a1 + 192);
  *v40 = 0;
  *(v40 + 8) = 0;
  *(a1 + 424) = 0;
  while (1)
  {
    if (v39 >= *(a1 + 408))
    {
      v51 = *(a1 + 192);
      v51->mDataByteSize = v38;
      AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v38, 1u, *(a1 + 288), v51, 1);
      ++*(a1 + 184);
      goto LABEL_11;
    }

    v7 = 1;
    *(a1 + 256) = 1;
    v8 = (*(a1 + 440) + *(a1 + 448));
    *(a1 + 264) = v8;
LABEL_64:
    v53 = v7;
    StreamBuffer::Copy((*(a1 + 8) + 72), &v53, v8);
    v41 = v53;
    v42 = *(a1 + 256);
    *(a1 + 264) += v53;
    v43 = v42 - v41;
    *(a1 + 256) = v43;
    if (v43)
    {
      result = 0;
      v4 = 247;
      goto LABEL_73;
    }

    v44 = (*(a1 + 440) + *(a1 + 448));
    if (*(a1 + 404))
    {
      v45 = &_AMR_WB_FRAMESIZE;
    }

    else
    {
      v45 = &_AMR_NB_FRAMESIZE;
    }

    v46 = v45[(*v44 >> 3) & 0xF];
    *(a1 + 452) = v46;
    if (!v46)
    {
      goto LABEL_72;
    }

    v5 = v46 - 1;
    *(a1 + 256) = v5;
    v6 = v44 + 1;
    *(a1 + 264) = v44 + 1;
LABEL_70:
    v52 = v5;
    StreamBuffer::Copy((*(a1 + 8) + 72), &v52, v6);
    v47 = v52;
    v48 = *(a1 + 256);
    *(a1 + 264) += v52;
    v49 = v48 - v47;
    *(a1 + 256) = v49;
    if (v49)
    {
      break;
    }

    v50 = *(a1 + 452);
    v38 = *(a1 + 428) + v50;
    *(a1 + 428) = v38;
    *(a1 + 448) += v50;
    v39 = *(a1 + 424) + 1;
    *(a1 + 424) = v39;
  }

  result = 0;
  v4 = 252;
LABEL_73:
  *(a1 + 236) = v4;
  return result;
}

uint64_t AMRAudioStream::ParseHeader(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 348;
  v5 = *(a1 + 236);
  if (v5 <= 57)
  {
    if (v5 == -1)
    {
      return 0;
    }

    if (v5)
    {
      goto LABEL_35;
    }

    v8 = *(a1 + 8);
    v52 = 1;
    if ((*(v8 + 104) & 1) == 0)
    {
      *(v8 + 104) = 1;
      v9 = *(v8 + 24);
      if (v9)
      {
        v9(*(v8 + 40), *(v8 + 8), 1717988724, &v52);
      }
    }

    goto LABEL_11;
  }

  if (v5 == 58)
  {
LABEL_11:
    v10 = *(a1 + 8);
    v11 = *(v10 + 88);
    v12 = *(v10 + 96);
    v13 = v11 + *(v10 + 80);
    if (v12 < v11 || v13 <= v12 || v13 - v12 == 0)
    {
      result = 0;
      v17 = 58;
      goto LABEL_37;
    }

    v18 = 6;
    *(a1 + 256) = 6;
    v19 = (a1 + 348);
    *(a1 + 264) = a1 + 348;
    goto LABEL_21;
  }

  if (v5 != 60)
  {
    if (v5 == 64)
    {
      v6 = *(a1 + 256);
      v7 = *(a1 + 264);
LABEL_27:
      v52 = v6;
      StreamBuffer::Copy((*(a1 + 8) + 72), &v52, v7);
      v24 = v52;
      v25 = *(a1 + 256);
      *(a1 + 264) += v52;
      v26 = v25 - v24;
      *(a1 + 256) = v26;
      if (!v26)
      {
        if (*v4 != *AMR_WBMagicNumber || *(v4 + 8) != AMR_WBMagicNumber[8])
        {
          *(a1 + 177) = 1;
          *(a1 + 236) = -1;
          return 1685348671;
        }

        *(a1 + 404) = 1;
        goto LABEL_42;
      }

      result = 0;
      v17 = 64;
LABEL_37:
      *(a1 + 236) = v17;
      return result;
    }

LABEL_35:
    result = 0;
    v17 = -1;
    goto LABEL_37;
  }

  v18 = *(a1 + 256);
  v10 = *(a1 + 8);
  v19 = *(a1 + 264);
LABEL_21:
  v52 = v18;
  StreamBuffer::Copy((v10 + 72), &v52, v19);
  v20 = v52;
  v21 = *(a1 + 256);
  *(a1 + 264) += v52;
  v22 = v21 - v20;
  *(a1 + 256) = v22;
  if (v22)
  {
    result = 0;
    v17 = 60;
    goto LABEL_37;
  }

  if (*(a1 + 348) != AMRMagicNumber || *(a1 + 352) != word_1EAD0B364)
  {
    v6 = 3;
    *(a1 + 256) = 3;
    v7 = (a1 + 354);
    *(a1 + 264) = a1 + 354;
    goto LABEL_27;
  }

  if ((*(a1 + 404) & 1) == 0)
  {
    v28 = -127;
    v29 = 1919770995;
    v30 = 6;
    goto LABEL_43;
  }

LABEL_42:
  v28 = -125;
  v29 = 1651990899;
  v30 = 9;
LABEL_43:
  *(a1 + 104) = v30;
  *(v4 + 9) = 0x616D72660C000000;
  v31 = v4 + 9;
  *(v31 + 8) = v29;
  *(v31 + 12) = 0x61646E650A000000;
  *(v31 + 20) = 0;
  *(v31 + 22) = 0x726D616411000000;
  *(v31 + 30) = 1819308129;
  v32 = 1;
  *(a1 + 391) = 1;
  *(a1 + 392) = v28;
  *(a1 + 394) = 256;
  *(v31 + 39) = 0x8000000;
  *(a1 + 128) = 47;
  CADeprecated::CAAutoFree<unsigned char>::alloc((a1 + 120), 0x2FuLL, 0);
  memcpy(*(a1 + 120), v31, *(a1 + 128));
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v33 = *(a1 + 404) == 0;
  if (*(a1 + 404))
  {
    v34 = 1935767394;
  }

  else
  {
    v34 = 1935764850;
  }

  *(a1 + 32) = v34;
  v35 = 8000.0;
  if (!v33)
  {
    v35 = 16000.0;
  }

  *(a1 + 24) = v35;
  *(a1 + 52) = 1;
  ioPropertyDataSize = 40;
  AudioFormatGetProperty(0x666D7469u, 0x2Fu, *(a1 + 120), &ioPropertyDataSize, (a1 + 24));
  v36 = *(a1 + 44);
  if (*(a1 + 404))
  {
    v37 = 320;
  }

  else
  {
    v37 = 160;
  }

  *(a1 + 408) = v36 / v37;
  if (v37 <= v36)
  {
    if (v36 / v37 < 0x10)
    {
      goto LABEL_55;
    }

    v32 = 15;
  }

  *(a1 + 408) = v32;
LABEL_55:
  (*(*a1 + 56))(a1, a1 + 24);
  v38 = *(a1 + 8);
  v52 = 1;
  if ((*(v38 + 105) & 1) == 0)
  {
    *(v38 + 105) = 1;
    v39 = *(v38 + 24);
    if (v39)
    {
      v39(*(v38 + 40), *(v38 + 8), 1684434292, &v52);
      v38 = *(a1 + 8);
    }
  }

  v52 = 1;
  v40 = *(v38 + 24);
  if (v40)
  {
    v40(*(v38 + 40), *(v38 + 8), 1685022310, &v52);
    v38 = *(a1 + 8);
    v41 = *(v38 + 24);
    v52 = 1;
    *(v38 + 108) = 1;
    if (v41)
    {
      v41(*(v38 + 40), *(v38 + 8), 1835493731, &v52);
      v38 = *(a1 + 8);
    }
  }

  else
  {
    v52 = 1;
    *(v38 + 108) = 1;
  }

  v52 = 1;
  if (!*(v38 + 112))
  {
    *(v38 + 112) = 1;
    v42 = *(v38 + 24);
    if (v42)
    {
      v42(*(v38 + 40), *(v38 + 8), 1919247481, &v52);
      v38 = *(a1 + 8);
    }
  }

  v43 = 0;
  *a2 = a1;
  *(a2 + 8) = AudioFileStreamObject::GeneratePackets;
  *(a2 + 16) = 0;
  v44 = *(v38 + 88);
  v45 = *(v38 + 96);
  v46 = v44 + *(v38 + 80);
  v47 = v45 < v44 || v46 <= v45;
  v48 = v47;
  v49 = v46 - v45;
  if (!v47 && v49)
  {
    v43 = *(v38 + 72) + (v45 - v44);
  }

  result = 0;
  *(a2 + 32) = v43;
  if (v48)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49;
  }

  *(a2 + 24) = v50;
  return result;
}

uint64_t AMRAudioStream::Flush(AMRAudioStream *this)
{
  if (*(this + 104))
  {
    v2 = *(this + 24);
    v2->mStartOffset = 0;
    v3 = *(this + 107);
    v2->mVariableFramesInPacket = 0;
    v2->mDataByteSize = v3;
    AudioFileStreamWrapper::CallPacketsProc(*(this + 1), v3, 1u, *(this + 36), v2, 0);
    *(this + 340) = 0;
  }

  return 0;
}

void AMRAudioStream::~AMRAudioStream(AMRAudioStream *this)
{
  AudioFileStreamObject::~AudioFileStreamObject(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AUOOPRenderingClient::NeverTimesOut(AUOOPRenderingClient *this)
{
  v1 = &unk_1EAD30000;
  {
    v1 = &unk_1EAD30000;
    if (v3)
    {
      AUOOPRenderingClient::NeverTimesOut(void)::kNeverTimeout = AUOOPRenderingClient::NeverTimesOut(void)::$_0::operator()();
      v1 = &unk_1EAD30000;
    }
  }

  return v1[3576];
}

BOOL AUOOPRenderingClient::NeverTimesOut(void)::$_0::operator()()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = getenv("IPCAU_NeverTimeout");
  if (v0)
  {
    if (kInterAppAudioScope)
    {
      v1 = *kInterAppAudioScope;
      if (!v1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v1 = MEMORY[0x1E69E9C10];
      v2 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "AUOOPRenderingClient.mm";
      v7 = 1024;
      v8 = 50;
      _os_log_impl(&dword_18F5DF000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Timeouts disabled!", &v5, 0x12u);
    }
  }

LABEL_9:
  result = v0 != 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t AUOOPSharedMemory::InitializationParams::requiredByteSize(AUOOPSharedMemory::InitializationParams *this)
{
  v2 = caulk::numeric::exceptional_add<unsigned long>(4 * *(this + 1) + 4316, 15);
  v3 = *(this + 5);
  v4 = v3 - 128;
  v5 = (16 * v3) | 8;
  if (v4 >= 0x1309)
  {
    v6 = 2056;
  }

  else
  {
    v6 = v5;
  }

  v7 = caulk::numeric::exceptional_add<unsigned long>(v6, 15);
  v8 = *(this + 4);
  audioipc::SharedAudioBuffers::extendASBDs(&v26, *this, *(this + 1));
  if (!v8)
  {
    std::terminate();
  }

  v9 = v26;
  v10 = v27;
  if (v27 == v26)
  {
    v11 = 0;
    if (v26)
    {
LABEL_22:
      operator delete(v9);
    }
  }

  else
  {
    v11 = 0;
    v12 = v26;
    do
    {
      if (*(v12 + 4) <= *(v12 + 10))
      {
        v13 = *(v12 + 10);
      }

      else
      {
        v13 = *(v12 + 4);
      }

      v14 = caulk::numeric::exceptional_mul<unsigned int>(v8, v13);
      v15 = caulk::numeric::exceptional_add<unsigned long>(v14, 15);
      if (HIDWORD(v15))
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_1F033FDD0;
      }

      if ((*(v12 + 12) & 0x20) != 0)
      {
        v16 = *(v12 + 7);
      }

      else
      {
        v16 = 1;
      }

      v17 = caulk::numeric::exceptional_mul<unsigned int>(v15 & 0xFFFFFFF0, v16);
      v11 = caulk::numeric::exceptional_add<unsigned long>(v11, v17);
      if (!*(v12 + 6) || !*(v12 + 5))
      {
        v18 = caulk::numeric::exceptional_add<unsigned long>(16 * v8, 15);
        v11 = caulk::numeric::exceptional_add<unsigned long>(v11, v18 & 0xFFFFFFFFFFFFFFF0);
      }

      ioPropertyDataSize = 4;
      outPropertyData = 0;
      if (!AudioFormatGetProperty(0x66646570u, 0x28u, v12, &ioPropertyDataSize, &outPropertyData) && outPropertyData)
      {
        v19 = caulk::numeric::exceptional_add<unsigned long>(16 * v8, 15);
        v11 = caulk::numeric::exceptional_add<unsigned long>(v11, v19 & 0xFFFFFFFFFFFFFFF0);
      }

      v12 += 3;
    }

    while (v12 != v10);
    if (v9)
    {
      goto LABEL_22;
    }
  }

  v20 = *(this + 5);
  v21 = v20 - 128;
  v22 = (32 * v20) | 8;
  if (v21 >= 0x1309)
  {
    v23 = 4104;
  }

  else
  {
    v23 = v22;
  }

  return (v7 & 0xFFFFFFFFFFFFFFF0) + (v2 & 0xFFFFFFFFFFFFFFF0) + v11 + (caulk::numeric::exceptional_add<unsigned long>(v23, 15) & 0xFFFFFFFFFFFFFFF0);
}

void sub_18F6F8418(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<audioipc::SharedAudioBuffers::Element>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 16;
        std::__destroy_at[abi:ne200100]<audioipc::SharedAudioBuffers::Element,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::~rt_sender(uint64_t a1)
{
  audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::stop(a1);
  audioipc::eventlink_primitive::~eventlink_primitive((a1 + 56));
  caulk::ipc::mapped_memory::reset(a1);
  return a1;
}

uint64_t audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::stop(uint64_t result)
{
  v1 = atomic_load((result + 49));
  if ((v1 & 1) == 0)
  {
    v2 = result;
    v3 = atomic_load(*(result + 24));
    if (v3 != 2)
    {
      atomic_store(1u, (result + 49));
      atomic_store(2u, *(result + 24));
      audioipc::eventlink_primitive::timed_wait_signal_or_error(*(result + 56), 0.02);
      v4 = *(v2 + 56);

      return os_eventlink_cancel();
    }
  }

  return result;
}

void std::__destroy_at[abi:ne200100]<audioipc::SharedAudioBuffers::Element,0>(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;

    operator delete(v3);
  }
}

void audioipc::log_and_throw(audioipc *this, const char *a2)
{
  v2 = a2;
  v10 = *MEMORY[0x1E69E9840];
  v4 = CADefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315394;
    v7 = this;
    v8 = 1024;
    v9 = v2;
    _os_log_fault_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_FAULT, "EXCEPTION: %s (%d)", &v6, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, this);
}

void AUOOPSharedMemory::init2(uint64_t a1, AUOOPSharedMemory::InitializationParams *this, _DWORD *a3, unint64_t a4)
{
  if (a4 < AUOOPSharedMemory::InitializationParams::requiredByteSize(this))
  {
    goto LABEL_17;
  }

  v8 = a3 + a4;
  *a1 = a3;
  *a3 = 4096;
  v9 = (a3 + (caulk::numeric::exceptional_add<unsigned long>(4 * *(this + 1) + 4316, 15) & 0xFFFFFFFFFFFFFFF0));
  *(a1 + 8) = v9;
  v10 = *(this + 5);
  v11 = v10 - 128;
  v12 = 16 * v10;
  if (v11 >= 0x1309)
  {
    v12 = 2048;
  }

  *v9 = v12;
  v13 = (v9 + (caulk::numeric::exceptional_add<unsigned long>(v12 | 8u, 15) & 0xFFFFFFFFFFFFFFF0));
  *(a1 + 16) = v13;
  v14 = *(this + 5);
  v15 = v14 - 128;
  v16 = 32 * v14;
  if (v15 >= 0x1309)
  {
    v16 = 4096;
  }

  *v13 = v16;
  v17 = v13 + (caulk::numeric::exceptional_add<unsigned long>(v16 | 8u, 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17 > v8)
  {
    goto LABEL_17;
  }

  if (*(a1 + 56) == 1)
  {
    outPropertyData[0] = (a1 + 24);
    std::vector<audioipc::SharedAudioBuffers::Element>::__destroy_vector::operator()[abi:ne200100](outPropertyData);
    *(a1 + 56) = 0;
  }

  v18 = *(this + 4);
  audioipc::SharedAudioBuffers::extendASBDs(__p, *this, *(this + 1));
  v19 = __p[0];
  v20 = __p[1];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = v18;
  if (!v18 || (v17 & 0xF) != 0)
  {
LABEL_17:
    std::terminate();
  }

  if (v20 != v19)
  {
    v21 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 4);
    if (!(v21 >> 57))
    {
      outPropertyData[4] = (a1 + 24);
      std::allocator<audioipc::SharedAudioBuffers::Element>::allocate_at_least[abi:ne200100](v21);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  *(a1 + 56) = 1;
}

void sub_18F6F8AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::vector<audioipc::SharedAudioBuffers::Element>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void audioipc::SharedAudioBuffers::extendASBDs(__int128 **a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (40 * a3)
  {
    v3 = a2;
    v5 = 0;
    v6 = a2 + 40 * a3;
    do
    {
      v7 = *(v3 + 16);
      v19 = *(v3 + 20);
      v20 = *(v3 + 36);
      if (!v7)
      {
        std::terminate();
      }

      v8 = a1[2];
      if (v5 >= v8)
      {
        v9 = *a1;
        v10 = v5 - *a1;
        v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 4) + 1;
        if (v11 > 0x555555555555555)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 4);
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x2AAAAAAAAAAAAAALL)
        {
          v13 = 0x555555555555555;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          if (v13 <= 0x555555555555555)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v14 = 16 * (v10 >> 4);
        *v14 = *v3;
        *(v14 + 16) = v7;
        *(v14 + 20) = v19;
        *(v14 + 36) = v20;
        *(v14 + 40) = 0;
        if (v9 != v5)
        {
          v15 = v9;
          v16 = (v14 - v10);
          do
          {
            v17 = *v15;
            v18 = v15[2];
            v16[1] = v15[1];
            v16[2] = v18;
            *v16 = v17;
            v16 += 3;
            v15 += 3;
          }

          while (v15 != v5);
        }

        v5 = v14 + 48;
        *a1 = (v14 - v10);
        a1[1] = (v14 + 48);
        a1[2] = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v5 = *v3;
        *(v5 + 16) = v7;
        *(v5 + 20) = v19;
        *(v5 + 36) = v20;
        v5 += 48;
      }

      a1[1] = v5;
      v3 += 40;
    }

    while (v3 != v6);
  }
}

void sub_18F6F8CF4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t audioipc::SharedAudioBuffers::immutableBufferList(audioipc::SharedAudioBuffers *this, unsigned int a2, unsigned int a3)
{
  if (a2 >= ((*(this + 1) - *this) >> 7))
  {
    CAAssertRtn();
LABEL_7:
    std::terminate();
  }

  if (*(this + 6) < a3)
  {
    goto LABEL_7;
  }

  v3 = (*this + (a2 << 7));

  return audioipc::SharedAudioBuffers::Element::immutableBufferList(v3, a3);
}

uint64_t audioipc::SharedAudioBuffers::Element::immutableBufferList(audioipc::SharedAudioBuffers::Element *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (v2 <= *(this + 10))
  {
    v2 = *(this + 10);
  }

  v3 = a2 * v2;
  if ((v3 & 0xFFFFFFFF00000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 | 0x100000000;
  }

  if ((v4 & 0x100000000) != 0)
  {
    v7 = *(this + 6);
    v6 = *(this + 7);
    result = this + 48;
    if (v7 + 8 != v6)
    {
      v8 = 0;
      v9 = (v6 - v7 - 24) >> 4;
      v10 = vdupq_n_s64(v9);
      v11 = (v9 + 4) & 0x1FFFFFFFFFFFFFFCLL;
      v12 = (v7 + 44);
      do
      {
        v13 = vdupq_n_s64(v8);
        v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_18F9016C0)));
        if (vuzp1_s16(v14, *v10.i8).u8[0])
        {
          *(v12 - 8) = v4;
        }

        if (vuzp1_s16(v14, *&v10).i8[2])
        {
          *(v12 - 4) = v4;
        }

        if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_18F9016B0)))).i32[1])
        {
          *v12 = v4;
          v12[4] = v4;
        }

        v8 += 4;
        v12 += 16;
      }

      while (v11 != v8);
    }
  }

  else
  {
    v15 = CAAssertRtn();
    return AUOOPRenderingClient::copySharedOutput(v15, v16, v17, v18, v19);
  }

  return result;
}

UInt32 **AUOOPRenderingClient::copySharedOutput(AUOOPRenderingClient *this, unsigned int a2, AudioBufferList *a3, unsigned int a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    a2 += *(this + 54);
  }

  result = audioipc::SharedAudioBuffers::immutableBufferList((this + 104), a2, a4);
  v7 = **result;
  if (a3->mNumberBuffers >= v7)
  {
    mNumberBuffers = v7;
  }

  else
  {
    mNumberBuffers = a3->mNumberBuffers;
  }

  if (mNumberBuffers)
  {
    v9 = (*result + 4);
    p_mData = &a3->mBuffers[0].mData;
    do
    {
      result = *p_mData;
      if (*p_mData)
      {
        if (result != *v9)
        {
          result = memcpy(result, *v9, *(v9 - 1));
        }
      }

      else
      {
        *p_mData = *v9;
      }

      v9 += 2;
      p_mData += 2;
      --mNumberBuffers;
    }

    while (mNumberBuffers);
  }

  return result;
}

uint64_t AUOOPRenderingClient::readMidiOut(uint64_t this, const AUOOPRenderClientUser *a2)
{
  v2 = *(this + 4);
  if (v2 && a2->MIDIOutputEventBlock)
  {
    v4 = this;
    v5 = 0;
    v6 = 0;
    v7 = this + 8;
    v8 = this + 8 + v2;
    do
    {
      v9 = (v7 + v5);
      if (v6)
      {
        v10 = 0;
        v11 = 0;
        v12 = 1;
        while (1)
        {
          if (v9 > v8)
          {
            goto LABEL_21;
          }

          v11 |= (*v9 & 0x7F) << v10;
          if ((*v9 & 0x80) == 0)
          {
            break;
          }

          v10 += 7;
          ++v12;
          ++v9;
          if (v10 == 70)
          {
            v13 = 10;
LABEL_18:
            v5 += v13;
            goto LABEL_21;
          }
        }

        v13 = v12;
        goto LABEL_18;
      }

      v14 = 0;
      v15 = 0;
      v16 = 1;
      while (v9 <= v8)
      {
        v15 |= (*v9 & 0x7F) << v14;
        if ((*v9 & 0x80) == 0)
        {
          v17 = v16;
          goto LABEL_20;
        }

        v14 += 7;
        ++v16;
        ++v9;
        if (v14 == 70)
        {
          v17 = 10;
LABEL_20:
          v5 += v17;
          break;
        }
      }

LABEL_21:
      if (v7 + v5 + 1 <= v8)
      {
        v18 = *(v7 + v5++);
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = v7 + v5;
      while (1)
      {
        v23 = (v22 + v20);
        if (v22 + v20 > v8)
        {
          v21 = 0;
          goto LABEL_31;
        }

        ++v20;
        v24 = *v23;
        v21 |= ((v24 & 0x7F) << v19);
        if ((v24 & 0x80000000) == 0)
        {
          break;
        }

        v19 += 7;
        if (v20 == 5)
        {
          goto LABEL_30;
        }
      }

      v20 = v20;
LABEL_30:
      v5 += v20;
LABEL_31:
      if (v7 + v5 + v21 <= v8)
      {
        v5 += v21;
        this = (*(a2->MIDIOutputEventBlock + 2))();
      }

      v6 = 1;
    }

    while (v5 < v2);
    *(v4 + 4) = 0;
  }

  return this;
}

uint64_t AUOOPRenderingClient::readMidiEventListOut(uint64_t this, const AUOOPRenderClientUser *a2)
{
  v2 = *(this + 4);
  if (v2 && a2->MIDIOutputEventListBlock)
  {
    v4 = this;
    v5 = 0;
    v6 = 0;
    v7 = this + 8;
    v8 = this + 8 + v2;
    do
    {
      v9 = (v7 + v5);
      if (v6)
      {
        v10 = 0;
        v11 = 0;
        v12 = 1;
        while (1)
        {
          if (v9 > v8)
          {
            goto LABEL_21;
          }

          v11 |= (*v9 & 0x7F) << v10;
          if ((*v9 & 0x80) == 0)
          {
            break;
          }

          v10 += 7;
          ++v12;
          ++v9;
          if (v10 == 70)
          {
            v13 = 10;
LABEL_18:
            v5 += v13;
            goto LABEL_21;
          }
        }

        v13 = v12;
        goto LABEL_18;
      }

      v14 = 0;
      v15 = 0;
      v16 = 1;
      while (v9 <= v8)
      {
        v15 |= (*v9 & 0x7F) << v14;
        if ((*v9 & 0x80) == 0)
        {
          v17 = v16;
          goto LABEL_20;
        }

        v14 += 7;
        ++v16;
        ++v9;
        if (v14 == 70)
        {
          v17 = 10;
LABEL_20:
          v5 += v17;
          break;
        }
      }

LABEL_21:
      if (v7 + v5 + 1 <= v8)
      {
        v18 = *(v7 + v5++);
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = v7 + v5;
      while (1)
      {
        v23 = (v22 + v20);
        if (v22 + v20 > v8)
        {
          v21 = 0;
          goto LABEL_31;
        }

        ++v20;
        v24 = *v23;
        v21 |= ((v24 & 0x7F) << v19);
        if ((v24 & 0x80000000) == 0)
        {
          break;
        }

        v19 += 7;
        if (v20 == 5)
        {
          goto LABEL_30;
        }
      }

      v20 = v20;
LABEL_30:
      v5 += v20;
LABEL_31:
      v25 = v7 + v5;
      if (v7 + v5 + v21 <= v8)
      {
        v26 = v5 - (v25 & 3);
        v27 = v25 & 3;
        v28 = v26 + 4;
        if (!v27)
        {
          v28 = v5;
        }

        v29 = v7 + v28 + v21;
        if (v29 <= v8)
        {
          v30 = 0;
        }

        else
        {
          v21 = 0;
          v30 = v27 == 0;
        }

        v31 = v21 + v28;
        if (!v30)
        {
          v5 = v21 + v28;
        }

        if (v29 <= v8)
        {
          this = (*(a2->MIDIOutputEventListBlock + 2))();
          v5 = v31;
        }
      }

      v6 = 1;
    }

    while (v5 < v2);
    *(v4 + 4) = 0;
  }

  return this;
}

unint64_t AUOOPRenderingClient::copyEventsToSharedMemory(unint64_t this, AURenderEventAllocator *a2, double a3, int a4)
{
  v6 = this;
  v7 = *(this + 80);
  v8 = v7[1];
  v9 = v7 + 8;
  v10 = v7 + v8 + 8;
  if (a2)
  {
    v11 = a2;
    v12 = *v7 - v8;
    do
    {
      v13 = AURenderEventAllocator::eventSize(v11, a2);
      if (v12 >= v13)
      {
        goto LABEL_13;
      }

      v7[1] = v10 - v9;
      v15 = *(v6 + 80);
      this = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::can_send(v6 + 8, v14);
      v16 = HIDWORD(this);
      if (this & 0x100000000) != 0 && (this)
      {
        *(v15 + 4104) = 4;
        v17 = v6 + 8;
        if (a3 <= 0.0)
        {
          this = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait(v17);
        }

        else
        {
          this = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait_with_timeout(v17, a3);
        }

        v16 = HIDWORD(this);
      }

      if (!v16 || (this & 1) == 0)
      {
        break;
      }

      v7[1] = 0;
      v12 = *v7;
      v10 = (v7 + 2);
      if (*v7 >= v13)
      {
LABEL_13:
        this = memcpy(v10, v11, v13);
        v10 += v13;
        v12 -= v13;
      }

      v11 = *v11;
    }

    while (v11);
  }

  v7[1] = v10 - v9;
  if (a4 && v10 != v9)
  {
    v18 = *(v6 + 80);
    this = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::can_send(v6 + 8, a3);
    if (HIDWORD(this) && (this & 1) != 0)
    {
      *(v18 + 4104) = 5;
      v19 = v6 + 8;
      if (a3 <= 0.0)
      {
        this = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait(v19);
      }

      else
      {
        this = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait_with_timeout(v19, a3);
      }
    }

    v7[1] = 0;
  }

  return this;
}

uint64_t AUOOPRenderingClient::pullOneInput(AUOOPRenderingClient *this, unsigned int a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = *(this + 10);
  v9 = *audioipc::SharedAudioBuffers::mutableBufferList((this + 104), a2, a4);
  v10 = v8 + 4 * a2;
  *(v10 + 4316) = 0;
  result = *(this + 26);
  if (result)
  {
    result = (*(result + 16))(result, v10 + 4316, a3, a4, a2, v9);
    if (!result)
    {
      v12 = audioipc::SharedAudioBuffers::immutableBufferList((this + 104), a2, a4);
      v13 = **v12;
      if (v13 >= *v9)
      {
        v14 = *v9;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        v15 = (v9 + 4);
        v16 = (*v12 + 4);
        do
        {
          if (*v16 != *v15)
          {
            memcpy(*v16, *v15, *(v15 - 1));
          }

          v15 += 2;
          v16 += 2;
          --v14;
        }

        while (v14);
      }

      return 0;
    }
  }

  return result;
}

unint64_t audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::can_send(uint64_t a1, double a2)
{
  v2 = atomic_load((a1 + 49));
  v3 = *(a1 + 24);
  if (v2)
  {
    v8 = 0;
    v6 = 0;
    atomic_store(2u, v3);
LABEL_10:
    LOBYTE(v7) = 1;
    return v8 | (v6 << 8) | (v7 << 32);
  }

  v4 = atomic_load(v3);
  if (v4 == 2)
  {
    goto LABEL_9;
  }

  v5 = atomic_load(*(a1 + 32));
  if (v5 == 2)
  {
    goto LABEL_9;
  }

  if (*(a1 + 48))
  {
    v6 = 0;
    LOBYTE(v7) = 1;
    v8 = 1;
    return v8 | (v6 << 8) | (v7 << 32);
  }

  if (atomic_load(*(a1 + 32)))
  {
LABEL_9:
    v8 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v11 = audioipc::eventlink_primitive::timed_wait_or_error(*(a1 + 56), a2);
  v6 = v11 >> 8;
  v7 = HIDWORD(v11);
  v8 = v11;
  if ((v11 & 0x100000000) == 0)
  {
    v14 = v11;
    v12 = HIDWORD(v11);
    v13 = v11 >> 8;
    audioipc::log_error("can_send draining", v11);
    LOBYTE(v7) = v12;
    v6 = v13;
    v8 = v14;
  }

  return v8 | (v6 << 8) | (v7 << 32);
}

unint64_t audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait_with_timeout(uint64_t a1, double a2)
{
  atomic_store(0, *(a1 + 24));
  v3 = audioipc::eventlink_primitive::timed_wait_signal_or_error(*(a1 + 56), a2);
  v4 = atomic_load((a1 + 49));
  if (v4)
  {
    LOBYTE(v5) = 0;
    v7 = 0;
    atomic_store(2u, *(a1 + 24));
  }

  else
  {
    v5 = v3;
    v6 = *(a1 + 24);
    if (!HIDWORD(v3))
    {
      atomic_store(2u, v6);
      audioipc::log_error("rt_sender::signal_wait_with_timeout", v3);
      v8 = 0;
      v7 = v5 & 0xFFFFFF00;
      return v5 | v8 | v7;
    }

    v7 = 0;
    atomic_store(1u, v6);
    *(a1 + 48) = v3;
  }

  v8 = 0x100000000;
  return v5 | v8 | v7;
}

uint64_t audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait(uint64_t a1)
{
  atomic_store(0, *(a1 + 24));
  v2 = audioipc::eventlink_primitive::wait_signal_or_error(*(a1 + 56));
  v3 = atomic_load((a1 + 49));
  if (v3)
  {
    v7 = 0;
    v6 = 0;
    atomic_store(2u, *(a1 + 24));
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 24);
    if (!HIDWORD(v2))
    {
      atomic_store(2u, v5);
      audioipc::log_error("rt_sender::signal_wait", v2);
      v8 = 0;
      v6 = v4 & 0xFFFFFF00;
      v7 = v4;
      return v7 | v6 | v8;
    }

    v6 = 0;
    v7 = 1;
    atomic_store(1u, v5);
    *(a1 + 48) = 1;
  }

  v8 = 0x100000000;
  return v7 | v6 | v8;
}

void audioipc::log_error(audioipc *this, const char *a2)
{
  v2 = a2;
  v10 = *MEMORY[0x1E69E9840];
  v4 = CADefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = this;
    v8 = 1024;
    v9 = v2;
    _os_log_error_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_ERROR, "%s failed: %d", &v6, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void *audioipc::SharedAudioBuffers::mutableBufferList(audioipc::SharedAudioBuffers *this, unsigned int a2, unsigned int a3)
{
  if (a2 >= ((*(this + 1) - *this) >> 7))
  {
    CAAssertRtn();
LABEL_7:
    std::terminate();
  }

  if (*(this + 6) < a3)
  {
    goto LABEL_7;
  }

  v3 = (*this + (a2 << 7));
  v4 = audioipc::SharedAudioBuffers::Element::immutableBufferList(v3, a3);
  v5 = v4[1];
  v6 = (*v4 + 8);
  if (v5 != v6)
  {
    memmove((*(v3 + 9) + 8), v6, v5 - v6);
  }

  return (v3 + 72);
}

uint64_t AURenderEventAllocator::eventSize(AURenderEventAllocator *this, const AURenderEvent *a2)
{
  v2 = *(this + 16);
  if (v2 > 8)
  {
    if (v2 == 9)
    {
      return *(this + 9) + 21;
    }

    if (v2 == 10)
    {
      return MIDI::EventList::size((this + 20)) + 20;
    }
  }

  else
  {
    if (v2 - 1 < 2)
    {
      return 48;
    }

    if (v2 == 8)
    {
      return 24;
    }
  }

  return 0;
}

void EC3PacketParser::EC3PacketParser(EC3PacketParser *this, int a2, const void *__src, unsigned int a4)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = a2;
  *(this + 2) = 0;
  *(this + 1) = __src;
  *(this + 4) = a4;
  *(this + 20) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  if ((a2 | 0x4000000) == 0x65632D33)
  {
    v5 = a2 == 1633889587 ? 10 : 12;
    if (v5 <= a4)
    {
      v6 = 12;
      if (a2 == 1633889587)
      {
        v6 = 10;
      }

      memcpy(__dst, __src, v6);
      if (__dst[0] == 30475)
      {
        v8 = 4;
        v9 = 20;
        v7 = 1;
        goto LABEL_12;
      }

      if (__dst[0] == 2935)
      {
        v7 = 0;
        v8 = 20;
        v9 = 4;
LABEL_12:
        *(this + v9) = 1;
        *(this + v8) = v7;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t EC3PacketParser::IsValid(EC3PacketParser *this)
{
  if (*(this + 4) != 1)
  {
    return 0;
  }

  if (*(this + 5))
  {
    return 1;
  }

  v3 = *(this + 1);
  if (*this == 1633889587)
  {
    v4 = 10;
  }

  else
  {
    v4 = 12;
  }

  if (ParseAC3Header(v3, v4, (this + 24), this + 16, this + 17, 0, this + 18, 0))
  {
    return 0;
  }

  result = 1;
  *(this + 5) = 1;
  return result;
}

uint64_t EC3StreamParser::AssessPacket(int32x2_t *this, unsigned __int8 *a2, unsigned int a3, int a4, unsigned int *a5, BOOL *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = this->u8[0];
  if (v7 == 1)
  {
    result = 0;
LABEL_3:
    *a6 = v7;
    goto LABEL_6;
  }

  *v30 = 0;
  v29 = 0;
  memset(&v28, 0, sizeof(v28));
  v27 = 0;
  result = ParseAC3Header(a2, a3, &v28, 0, &v29, 0, &v27, 0);
  if (!result)
  {
    result = GetAC3PacketIndex(a2, v30, &v30[1], v14);
    if (!result)
    {
      if (a3 <= 0xB)
      {
        v32 = 0;
        __dst = 0;
      }

      if (a3 >= 0xC)
      {
        v16 = 12;
      }

      else
      {
        v16 = a3;
      }

      memcpy(&__dst, a2, v16);
      if (a4)
      {
        if (v30[1] - 1 > 1)
        {
          if (!v30[1])
          {
            std::vector<EC3Header>::push_back[abi:ne200100](&this[21], &__dst);
            v23 = v29;
            v24.i32[0] = 1;
            v24.i32[1] = v29;
            this[4] = vadd_s32(this[4], v24);
            v25 = &this[2 * (this->i32[1] - 1)];
            ++v25[5].i32[0];
            v25[6].i32[0] += v23;
          }

          goto LABEL_26;
        }

        if (v30[0])
        {
          if (this->i32[1] != 8)
          {
            std::vector<EC3Header>::push_back[abi:ne200100](&this[21], &__dst);
            v17 = this->u32[1];
            this->i32[1] = v17 + 1;
            v18.i32[0] = 1;
            v18.i32[1] = v29;
            this[4] = vadd_s32(this[4], v18);
            v19 = &this[2 * v17];
            v20 = 0x600 / v28.mFramesPerPacket;
            v19[5] = __PAIR64__(v18.u32[1], 1);
            v19[6].i32[0] = v18.i32[1];
            v19[6].i32[1] = v20;
            if (v20 > this[24].i32[0])
            {
              this[24].i32[0] = v20;
            }

            goto LABEL_26;
          }

LABEL_22:
          result = 560226676;
          goto LABEL_6;
        }

        v26 = this[24].i32[1] + 1;
        if (v26 >= this[24].i32[0])
        {
          this->i8[0] = 1;
        }

        else
        {
          this[24].i32[1] = v26;
        }
      }

      else
      {
        if (!v30[1])
        {
          goto LABEL_22;
        }

        std::vector<EC3Header>::push_back[abi:ne200100](&this[21], &__dst);
        this->i32[1] = 1;
        v21 = v29;
        v22 = this[4].i32[1] + v29;
        this[4].i32[0] = 1;
        this[4].i32[1] = v22;
        this[5].i32[0] = 1;
        this[5].i32[1] = v21;
        this[6].i32[0] = v21;
      }

LABEL_26:
      result = 0;
      *a5 = v29;
      LOBYTE(v7) = this->i8[0];
      goto LABEL_3;
    }
  }

LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void std::vector<EC3Header>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
    if (v9 > 0x1555555555555555)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = v12 + 12;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

Float64 EC3StreamParser::AssessPacketHeader(EC3StreamParser *this, const void *a2, unsigned int *a3, unsigned int *a4, BOOL *a5, AudioStreamBasicDescription *a6, unsigned int *a7, int *a8)
{
  v19 = 0;
  memset(&v17, 0, sizeof(v17));
  if (!ParseAC3Header(this, a2, &v17, 0, a3, 0, &v18, a7) && !GetAC3PacketIndex(this, &v19, a6, v12))
  {
    if (LODWORD(a6->mSampleRate))
    {
      v14 = v19 == 0;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    *a4 = v15;
    if (a5)
    {
      result = v17.mSampleRate;
      v16 = *&v17.mBytesPerPacket;
      *a5 = *&v17.mSampleRate;
      *(a5 + 1) = v16;
      *(a5 + 4) = *&v17.mBitsPerChannel;
    }
  }

  return result;
}

uint64_t *std::vector<AudioFormatListItem>::resize(uint64_t *result, unint64_t a2, __int128 *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return result;
    }

    v12 = (v4 + 48 * a2);
  }

  else
  {
    v8 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 4) < v7)
    {
      if (a2 <= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 4);
        v10 = 0x5555555555555556 * ((v8 - v4) >> 4);
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x2AAAAAAAAAAAAAALL)
        {
          v11 = 0x555555555555555;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<AudioFormatListItem>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v12 = &v3[3 * v7];
    v13 = 48 * a2 - 16 * (v5 >> 4);
    do
    {
      v14 = *a3;
      v15 = a3[2];
      v3[1] = a3[1];
      v3[2] = v15;
      *v3 = v14;
      v3 += 3;
      v13 -= 48;
    }

    while (v13);
  }

  result[1] = v12;
  return result;
}

uint64_t std::vector<AudioFormatListItem>::__init_with_size[abi:ne200100]<AudioFormatListItem*,AudioFormatListItem*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioFormatListItem>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F6FA0CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioFormatListItem>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::allocator<AudioFormatListItem>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::unique_ptr<auoop::PipeSubPool>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::unique_ptr<auoop::PipeSubPool>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<auoop::PipeSubPool>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 120);
    std::vector<auoop::PipeSubPool::PipeSlot>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x193ADE990](v2 + 100);

    v3 = *(v2 + 40);
    if (v3)
    {
      *(v2 + 48) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      *(v2 + 24) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::vector<auoop::PipeSubPool::PipeSlot>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 4;
        std::unique_ptr<AUOOPRenderingClient>::reset[abi:ne200100](v4 - 3, 0);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<AUOOPRenderingClient>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 136) == 1)
    {
      v3 = (v2 + 104);
      std::vector<audioipc::SharedAudioBuffers::Element>::__destroy_vector::operator()[abi:ne200100](&v3);
    }

    audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::~rt_sender(v2 + 8);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::__shared_ptr_emplace<caulk::synchronized<auoop::RenderPipePool,std::recursive_mutex,caulk::empty_atomic_interface<auoop::RenderPipePool>>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    auoop::WorkgroupPropagator::~WorkgroupPropagator((a1 + 128));
    *(a1 + 200) = 0;
  }

  if (*(a1 + 200) == 1)
  {
    auoop::WorkgroupPropagator::~WorkgroupPropagator((a1 + 128));
  }

  v2 = (a1 + 104);
  std::vector<std::unique_ptr<auoop::PipeSubPool>>::__destroy_vector::operator()[abi:ne200100](&v2);

  std::recursive_mutex::~recursive_mutex((a1 + 24));
}

void std::__shared_ptr_emplace<caulk::synchronized<auoop::RenderPipePool,std::recursive_mutex,caulk::empty_atomic_interface<auoop::RenderPipePool>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F03272A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void auoop::RenderPipeUser::~RenderPipeUser(auoop::RenderPipeUser *this)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (!*this)
  {
    goto LABEL_39;
  }

  v3 = *v2;
  std::recursive_mutex::lock(*v2);
  [*&v3[2].__m_.__opaque[48] removeObject:*(this + 2)];
  v4 = *this;
  v5 = atomic_load(this + 64);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(this + 2);
  }

  v31 = v6;
  v32 = v6;
  v7 = *(v4 + 23);
  v8 = *(v4 + 22) - 1;
  *(v4 + 22) = v8;
  v9 = *(v4 + 24);
  if (v9 >= v8)
  {
    v9 = v8;
  }

  if (v7 > v9)
  {
    v10 = auoop::PipeSubPool::acquirePipeSlot(v4, 0, 0);
    if ((v11 & 1) == 0)
    {
      CAAssertRtn();
    }

    v12 = v10;
    v13 = v32;
    v14 = v12 + 8;
    audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::stop(*(v12 + 8) + 8);
    if (!v13)
    {
      goto LABEL_22;
    }

    if (kAUExtensionScope)
    {
      v15 = *kAUExtensionScope;
      if (!v15)
      {
LABEL_17:
        caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(buf, v13);
        v18 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(buf);
        v19 = *(*v14 + 144);
        v20 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(buf);
        [v18 destroyRenderPipe:v19 reply:{v20, v31}];

        v21 = v40;
        if (v21)
        {
          v22 = *kAUExtensionScope;
          v23 = applesauce::dispatch::v1::queue::operator*(*kAUExtensionScope);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v30 = [v21 description];
            *v33 = 138412290;
            v34 = v30;
            _os_log_error_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_ERROR, "Error in destroying pipe %@", v33, 0xCu);
          }
        }

        _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&buf[8]);
LABEL_22:
        std::unique_ptr<AUOOPRenderingClient>::reset[abi:ne200100]((v12 + 8), 0);

        __dmb(0xBu);
        atomic_store(0, v12);
        v8 = *(v4 + 22);
        --*(v4 + 23);
        goto LABEL_23;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*v14 + 144);
      *buf = 136315650;
      *&buf[4] = "AUOOPRenderPipePool.mm";
      v36 = 1024;
      v37 = 181;
      v38 = 1024;
      v39 = v17;
      _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Host destroying render pipe %d", buf, 0x18u);
    }

    goto LABEL_17;
  }

LABEL_23:
  if (!v8)
  {
    v24 = *&v3[1].__m_.__opaque[8];
    v25 = *&v3[1].__m_.__opaque[16];
    if (v24 != v25)
    {
      while (*v24 != v4)
      {
        if (++v24 == v25)
        {
          v24 = *&v3[1].__m_.__opaque[16];
          break;
        }
      }
    }

    if (v25 != v24)
    {
      v26 = v24 + 1;
      if (v24 + 1 != v25)
      {
        do
        {
          v24 = v26;
          v27 = v26 - 1;
          v28 = *v26;
          *v26++ = 0;
          std::unique_ptr<auoop::PipeSubPool>::reset[abi:ne200100](v27, v28);
        }

        while (v26 != v25);
        v25 = *&v3[1].__m_.__opaque[16];
      }

      while (v25 != v24)
      {
        std::unique_ptr<auoop::PipeSubPool>::reset[abi:ne200100](--v25, 0);
      }

      *&v3[1].__m_.__opaque[16] = v24;
    }
  }

  if ((v5 & 1) == 0)
  {
  }

  if (v3)
  {
    std::recursive_mutex::unlock(v3);
  }

LABEL_39:
  v29 = *MEMORY[0x1E69E9840];
}

void sub_18F6FA7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, id a13)
{
  if (a2)
  {

    caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::~sync_message(&a13);
    if ((v13 & 1) == 0)
    {
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t auoop::PipeSubPool::acquirePipeSlot(auoop::PipeSubPool *this, unint64_t *a2, int a3)
{
  v6 = 561015152;
LABEL_2:
  while (!caulk::semaphore::timed_wait((this + 100), 1.0))
  {
    if (a3)
    {
      v7 = *(this + 24);
      v8 = v7 >= 0 ? *(this + 24) : v7 + 3;
      v9 = pthread_self();
      v10 = *(this + 15);
      v11 = *(this + 16);
      if (v10 != v11)
      {
        v12 = 0;
        while (1)
        {
          v13 = atomic_load(v10);
          if (v13)
          {
            v14 = atomic_load((v10 + 24));
            if (v9 == v14 && ++v12 == v8 >> 2)
            {
              return v6;
            }
          }

          v10 += 32;
          if (v10 == v11)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = 1;
  do
  {
LABEL_16:
    v16 = v15;
    v6 = *(this + 15);
    v17 = *(this + 16);
    v15 = 0;
  }

  while (v6 == v17);
  while (1)
  {
    if (!*(v6 + 8) || ((a2 != 0) & v16) != 0 && *(v6 + 16) != *a2 || (atomic_exchange(v6, 1u) & 1) != 0)
    {
      goto LABEL_26;
    }

    *(v6 + 24) = pthread_self();
    __dmb(9u);
    if (*(v6 + 8))
    {
      break;
    }

LABEL_25:
    atomic_store(0, v6);
LABEL_26:
    v6 += 32;
    if (v6 == v17)
    {
      v15 = 0;
      goto LABEL_16;
    }
  }

  if (v16)
  {
    if (!a2)
    {
      return v6;
    }

    v18 = *(v6 + 16);
    if (v18 == *a2)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    return v6;
  }

  v18 = *a2;
LABEL_30:
  *(v6 + 16) = v18;
  return v6;
}

void *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(void *a1, void *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F032C5E0;
  v5[1] = a1;
  v5[3] = v5;
  caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(a1, a2, v5);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v5);
  a1[5] = 0;
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F6FAA84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c50_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEE_e17_v16__0__NSError_8l;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v7);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v8);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_18F6FAB84(_Unwind_Exception *a1)
{
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v1 + 32);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v6, a1 + 8);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJEE5replyEv_block_invoke;
  aBlock[3] = &__block_descriptor_64_ea8_32c50_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEE_e17_v16__0__NSError_8l;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v5, v6);
  v1 = _Block_copy(aBlock);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v5);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v6);
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::~sync_message(id *a1)
{
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev((a1 + 1));

  return a1;
}

void *caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_((a1 + 1), a3);

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN5caulk3xpc12sync_messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJEEC1EP15NSXPCConnectionEUlP7NSErrorONS_5tupleIJEEEE_NS_9allocatorISG_EEFvSC_SF_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032C5E0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<auoop::RenderPipePool::registerUser(AUOOPRenderClientUser const&,auoop::RenderPipeConfig const&)::$_1,std::allocator<auoop::RenderPipePool::registerUser(AUOOPRenderClientUser const&,auoop::RenderPipeConfig const&)::$_1>,void ()(applesauce::xpc::dict const&)>::operator()(uint64_t a1, id *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = **(a1 + 8);
  std::recursive_mutex::lock(v3);
  v4 = [*(v3 + 184) anyObject];
  if (!v4)
  {
    *(v3 + 76) = 1;
    goto LABEL_12;
  }

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v20, v4);
  v5 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v20);
  v6 = *a2;
  applesauce::dispatch::v1::queue::operator*(*a2);
  objc_claimAutoreleasedReturnValue();
  v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v20);
  [v5 updateWorkgroupMirror:v6 reply:v7];

  v8 = v22;
  if (v8)
  {
    if (kAUExtensionScope)
    {
      v9 = *kAUExtensionScope;
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v8 description];
      v14 = 136315650;
      v15 = "AUOOPRenderPipePool.mm";
      v16 = 1024;
      v17 = 144;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d error from workgroupsChanged: %@", &v14, 0x1Cu);
    }
  }

LABEL_11:

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v21);
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock(v3);
}

void sub_18F6FB038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::~sync_message(va);
  std::recursive_mutex::unlock(v5);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<auoop::RenderPipePool::registerUser(AUOOPRenderClientUser const&,auoop::RenderPipeConfig const&)::$_1,std::allocator<auoop::RenderPipePool::registerUser(AUOOPRenderClientUser const&,auoop::RenderPipeConfig const&)::$_1>,void ()(applesauce::xpc::dict const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0327218;
  a2[1] = v2;
  return result;
}

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},unsigned int>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t caulk::__expected_detail::base<std::unique_ptr<AUOOPRenderingClient>,NSError * {__strong}>::~base(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::unique_ptr<AUOOPRenderingClient>::reset[abi:ne200100](a1, 0);
  }

  else
  {
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}
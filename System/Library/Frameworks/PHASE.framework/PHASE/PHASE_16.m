void sub_23A429EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::mutex::unlock((a10 + 632));
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrIN5Phase3JobEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrIN5Phase3JobEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void Phase::JobManagerDispatch::ScheduleJobs(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16) != *(a3 + 16))
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "JobManagerDispatch.cpp";
      v10 = 1024;
      v11 = 459;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inJobs.size() == inPeriodsSeconds.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: inJobs.size() == inPeriodsSeconds.size() is false.");
  }

  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  if (*(a4 + 24))
  {
    std::list<std::shared_ptr<Phase::Job>>::list(v7, a2);
    std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::operator()(a4, 1);
    std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v7);
  }
}

uint64_t std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void Phase::JobManagerDispatch::StopScheduledJob(Phase::Logger *a1, uint64_t *a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(*a2 + 624);
  if (!v4)
  {
    v16 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315394;
      *v26 = "JobManagerDispatch.cpp";
      *&v26[8] = 1024;
      *&v26[10] = 491;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pJob->mSchedule is false.", v25, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: pJob->mSchedule is false.");
  }

  __lk.__m_ = (v3 + 632);
  __lk.__owns_ = 1;
  std::mutex::lock((v3 + 632));
  v7 = atomic_load((v4 + 24));
  if (v7)
  {
    atomic_store(1u, (v4 + 25));
    if (a3)
    {
      Phase::JobManagerDispatch::doCancelJob(v25, a1, v3, 0);
      for (i = *&v26[4]; i != v25; i = *(i + 8))
      {
        v9 = *(i + 16);
        v10 = *(i + 24);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = v10;
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v19 = 0;
        }

        v18 = v9;
        v11 = (*(*a1 + 96))(a1, &v18, 0.0);
        v12 = v19;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (HIDWORD(v11))
        {
          v13 = 1;
        }

        else
        {
          v13 = v11 == 0;
        }

        if (!v13)
        {
          v14 = **(Phase::Logger::GetInstance(v12) + 480);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v22 = "JobManagerDispatch.cpp";
            v23 = 1024;
            v24 = 514;
            _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Couldn't wait on running job.", buf, 0x12u);
          }
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

      std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v25);
    }

    while (1)
    {
      v15 = atomic_load((v4 + 24));
      if ((v15 & 1) == 0)
      {
        break;
      }

      std::condition_variable::wait((v4 + 32), &__lk);
    }

    atomic_store(0, (v4 + 25));
  }

  std::unique_ptr<Phase::JobDispatch::Schedule>::reset[abi:ne200100]((v3 + 624), 0);
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_23A42A4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 == 1)
  {
    std::mutex::unlock(a13);
  }

  _Unwind_Resume(exception_object);
}

void Phase::JobManagerDispatch::doCancelJob(Phase::JobManagerDispatch *this, Phase::JobDispatch *a2, uint64_t a3, int a4)
{
  *this = this;
  *(this + 1) = this;
  *(this + 2) = 0;
  if ((*(a3 + 592) & 0x10) != 0)
  {
    return;
  }

  v8 = *(a3 + 616);
  v52 = *(a3 + 608);
  v53 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a3 + 576);
  if (v9)
  {
    dispatch_block_cancel(v9);
    v10 = 0;
    atomic_compare_exchange_strong(Phase::JobManager::GetExecutionState(a2, a3), &v10, 3u);
    if (v10)
    {
      atomic_store(3u, Phase::JobManager::GetExecutionState(a2, a3));
      goto LABEL_12;
    }

    if (!v53 || v53->__shared_owners_ <= 0)
    {
      __assert_rtn("doCancelJob", "JobManagerDispatch.cpp", 682, "jobRef.use_count() > 1");
    }

    atomic_store(1u, (a3 + 600));
    v11 = *(a3 + 616);
    *(a3 + 608) = 0u;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  v10 = 0;
LABEL_12:
  *(a3 + 592) |= 0x10uLL;
  Dependencies = Phase::JobManager::GetDependencies(a2, a3);
  for (i = *(Dependencies + 8); i != Dependencies; i = i[1])
  {
    v14 = i[2];
    v15 = i[3];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Phase::JobManagerDispatch::doCancelJob(&v49, a2, v14);
    v16 = v51;
    if (v51)
    {
      v18 = v49;
      v17 = v50;
      v19 = *(v49 + 8);
      v20 = *v50;
      *(v20 + 8) = v19;
      *v19 = v20;
      v21 = *this;
      *(v21 + 8) = v17;
      *v17 = v21;
      *this = v18;
      *(v18 + 8) = this;
      *(this + 2) += v16;
      v51 = 0;
    }

    std::__list_imp<std::shared_ptr<Phase::Job>>::clear(&v49);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  if (v10 == 1)
  {
    std::list<std::shared_ptr<Phase::Job>>::push_back();
  }

  if (a4)
  {
    Dependents = Phase::JobManager::GetDependents(a2, a3);
    v23 = Dependents + 1;
    v24 = *Dependents;
    if (*Dependents != Dependents + 1)
    {
      do
      {
        v26 = v24[4];
        v25 = v24[5];
        atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v27 = std::__shared_weak_count::lock(v25);
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        v28 = *(v26 + 616);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        Phase::JobManagerDispatch::doCancelJob(&v49, a2, v26);
        v29 = v51;
        if (v51)
        {
          v31 = v49;
          v30 = v50;
          v32 = *(v49 + 8);
          v33 = *v50;
          *(v33 + 8) = v32;
          *v32 = v33;
          v34 = *this;
          *(v34 + 8) = v30;
          *v30 = v34;
          *this = v31;
          *(v31 + 8) = this;
          *(this + 2) += v29;
          v51 = 0;
        }

        std::__list_imp<std::shared_ptr<Phase::Job>>::clear(&v49);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        std::__shared_weak_count::__release_weak(v25);
        v35 = v24[1];
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = v24[2];
            v37 = *v36 == v24;
            v24 = v36;
          }

          while (!v37);
        }

        v24 = v36;
      }

      while (v36 != v23);
    }
  }

  if (!v10)
  {
    v38 = Phase::JobManager::GetDependents(a2, a3);
    v39 = v38 + 1;
    v40 = *v38;
    if (*v38 != v38 + 1)
    {
      do
      {
        v41 = v40[5];
        if (v41)
        {
          v42 = v40[4];
          atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v43 = std::__shared_weak_count::lock(v41);
          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            v44 = v42 + 584;
          }

          else
          {
            v44 = 584;
          }

          dispatch_group_leave(*v44);
          std::__shared_weak_count::__release_weak(v41);
        }

        else
        {
          dispatch_group_leave(MEMORY[0x248]);
        }

        v45 = v40[1];
        if (v45)
        {
          do
          {
            v46 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v46 = v40[2];
            v37 = *v46 == v40;
            v40 = v46;
          }

          while (!v37);
        }

        v40 = v46;
      }

      while (v46 != v39);
    }

    v47 = *(a3 + 624);
    if (v47)
    {
      v48 = atomic_load((v47 + 25));
      if (v48)
      {
        atomic_store(0, (*(a3 + 624) + 24));
      }
    }
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }
}

void sub_23A42A910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v14);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<Phase::JobDispatch::Schedule>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::condition_variable::~condition_variable((v2 + 32));

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::JobManagerDispatch::StopScheduledJobs(uint64_t a1, void *a2, char a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "StopScheduledJobsRoot");
  (*(*a1 + 16))(&v20, a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = a2[1]; i != a2; i = i[1])
  {
    v8 = i[2];
    v7 = i[3];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "StopScheduledJob");
    (*(*a1 + 16))(&v16, a1, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = v16;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *(v9 + 256) = &unk_284D35720;
    *(v9 + 264) = a1;
    *(v9 + 272) = v8;
    *(v9 + 280) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(v9 + 288) = a3;
      std::__shared_weak_count::__release_weak(v7);
      *(v9 + 383) = 1;
      std::__shared_weak_count::__release_weak(v7);
      atomic_store(1u, (v9 + 40));
      std::__shared_weak_count::__release_weak(v7);
    }

    else
    {
      *(v9 + 288) = a3;
      *(v9 + 383) = 1;
      atomic_store(1u, (v9 + 40));
    }

    v14 = v20;
    v15 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v16;
    v13 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 24))(a1, &v14, &v12);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v10 = v21;
  v11[0] = v20;
  v11[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::RunJob(a1, v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_23A42AC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(exception_object);
}

void Phase::JobManagerDispatch::StopScheduledJobAsync(Phase::Logger *a1, void **a2, uint64_t a3, char a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!*(*a2 + 78))
  {
    v14 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      v31 = 1024;
      v32 = 554;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pJob->mSchedule is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: pJob->mSchedule is false.");
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "StopScheduledJobAsync");
  (*(*a1 + 16))(&v24, a1, buf);
  if (v33 < 0)
  {
    operator delete(*buf);
  }

  v8 = v24;
  v9 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(v8 + 256) = &unk_284D35748;
  *(v8 + 264) = a1;
  *(v8 + 272) = v10;
  *(v8 + 280) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v8 + 288) = a4;
    std::__shared_weak_count::__release_weak(v11);
    *(v8 + 383) = 1;
    std::__shared_weak_count::__release_weak(v11);
    atomic_store(1u, (v8 + 40));
    std::__shared_weak_count::__release_weak(v11);
  }

  else
  {
    *(v8 + 288) = a4;
    *(v8 + 383) = 1;
    atomic_store(1u, (v8 + 40));
  }

  if (*(a3 + 24))
  {
    v12 = a2[1];
    __p = *a2;
    v28 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::list<std::shared_ptr<Phase::Job>>::list(buf, &__p, 1);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "StopScheduledJobAsyncCallback");
    (*(*a1 + 16))(&v22, a1, &__p);
    v8 = v22;
    v13 = v23;
    v22 = 0;
    v23 = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }

    if (v29 < 0)
    {
      operator delete(__p);
    }

    std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::__value_func[abi:ne200100](v26, a3);
    std::list<std::shared_ptr<Phase::Job>>::list(v21, buf);
    Phase::Job::SetTaskFunction<std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,BOOL,std::list<std::shared_ptr<Phase::Job>>>(v8, v26, v21);
    std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v21);
    std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](v26);
    v19 = v8;
    v20 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v24;
    v18 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 24))(a1, &v19, &v17);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    std::__list_imp<std::shared_ptr<Phase::Job>>::clear(buf);
  }

  else
  {
    v13 = v9;
  }

  v16[0] = v8;
  v16[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::RunJobAsync(a1, v16);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

uint64_t Phase::Job::SetTaskFunction<std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,BOOL,std::list<std::shared_ptr<Phase::Job>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::__value_func[abi:ne200100](v15, a2);
  std::list<std::shared_ptr<Phase::Job>>::list(&v12, a3);
  std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::__value_func[abi:ne200100](v16, v15);
  *(a1 + 256) = &unk_284D35770;
  std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::__value_func[abi:ne200100](a1 + 264, v16);
  *(a1 + 296) = 1;
  *(a1 + 304) = a1 + 304;
  *(a1 + 312) = a1 + 304;
  *(a1 + 320) = 0;
  v5 = v14;
  if (v14)
  {
    v7 = v12;
    v6 = v13;
    v8 = *(v12 + 8);
    v9 = *v13;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *(a1 + 304);
    *(v10 + 8) = v6;
    *v6 = v10;
    *(a1 + 304) = v7;
    *(v7 + 8) = a1 + 304;
    *(a1 + 320) = v5;
    v14 = 0;
  }

  std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](v16);
  *(a1 + 383) = 1;
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(&v12);
  result = std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](v15);
  atomic_store(1u, (a1 + 40));
  return result;
}

void sub_23A42B288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](&a16);
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(&a9);
  std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void Phase::JobManagerDispatch::StopScheduledJobsAsync(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v32 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(buf, "StopScheduledJobsAsyncRoot");
  v8 = (*(*a1 + 16))(&v25, a1, buf);
  if (v31 < 0)
  {
    operator delete(*buf);
  }

  for (i = *(a2 + 8); i != a2; i = i[1])
  {
    v11 = i[2];
    v10 = i[3];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*(v11 + 624))
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 480);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "JobManagerDispatch.cpp";
        v29 = 1024;
        v30 = 585;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: static_cast<JobDispatch*>(inJob.get())->mSchedule is false.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "PRECONDITION: static_cast<JobDispatch*>(inJob.get())->mSchedule is false.");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "StopScheduledJobAsync");
    (*(*a1 + 16))(&v23, a1, buf);
    if (v31 < 0)
    {
      operator delete(*buf);
    }

    v12 = v23;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *(v12 + 256) = &unk_284D35798;
    *(v12 + 264) = a1;
    *(v12 + 272) = v11;
    *(v12 + 280) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(v12 + 288) = a4;
      std::__shared_weak_count::__release_weak(v10);
      *(v12 + 383) = 1;
      std::__shared_weak_count::__release_weak(v10);
      atomic_store(1u, (v12 + 40));
      std::__shared_weak_count::__release_weak(v10);
    }

    else
    {
      *(v12 + 288) = a4;
      *(v12 + 383) = 1;
      atomic_store(1u, (v12 + 40));
    }

    v21 = v25;
    v22 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v23;
    v20 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 24))(a1, &v21, &v19);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v8 = v24;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  if (*(a3 + 24))
  {
    v13 = v25;
    std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::__value_func[abi:ne200100](v27, a3);
    std::list<std::shared_ptr<Phase::Job>>::list(v18, a2);
    Phase::Job::SetTaskFunction<std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,BOOL,std::list<std::shared_ptr<Phase::Job>>>(v13, v27, v18);
    std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v18);
    std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](v27);
  }

  v14 = v26;
  v17[0] = v25;
  v17[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::RunJobAsync(a1, v17);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void sub_23A42B66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, std::__shared_weak_count *);
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(va);
  std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](va1);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

void Phase::JobManagerDispatch::ResetJob(Phase::JobManager *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 592);
  if ((v3 & 0x1F) != 0)
  {
    v6 = *(v2 + 576);
    *(v2 + 576) = 0;
    if (v6)
    {
      _Block_release(v6);
      v3 = *(v2 + 592);
    }

    *(v2 + 592) = v3 & 0xFFFFFFFFFFFFFFE0;
    atomic_store(0, Phase::JobManager::GetExecutionState(a1, v2));
    atomic_store(0, (v2 + 600));
    atomic_store(0, (v2 + 601));
    v7 = *a2;
    v8 = a2[1];
    v25[0] = v7;
    v25[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Phase::JobManager::TreeLock::TreeLock(&v26, a1, v25);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    Dependencies = Phase::JobManager::GetDependencies(a1, v2);
    for (i = *(Dependencies + 8); i != Dependencies; i = i[1])
    {
      v11 = i[2];
      v12 = i[3];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24[0] = v11;
      v24[1] = v12;
      Phase::JobManagerDispatch::ResetJob(a1, v24);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    Dependents = Phase::JobManager::GetDependents(a1, v2);
    v14 = Dependents + 1;
    v15 = *Dependents;
    if (*Dependents != Dependents + 1)
    {
      do
      {
        v16 = v15[5];
        if (v16)
        {
          v17 = v15[4];
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v22 = 0;
          v18 = std::__shared_weak_count::lock(v16);
          v23 = v18;
          if (v18)
          {
            v22 = v17;
          }
        }

        else
        {
          v18 = 0;
          v22 = 0;
          v23 = 0;
        }

        Phase::JobManagerDispatch::ResetJob(a1, &v22);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        if (v16)
        {
          std::__shared_weak_count::__release_weak(v16);
        }

        v19 = v15[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v15[2];
            v21 = *v20 == v15;
            v15 = v20;
          }

          while (!v21);
        }

        v15 = v20;
      }

      while (v20 != v14);
    }

    std::recursive_mutex::unlock((v26 + 96));
    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }
  }
}

void sub_23A42B934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Phase::JobManager::TreeLock::~TreeLock(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::JobManagerDispatch::CancelJob(Phase::JobManager *a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  v31 = &v31;
  v32 = &v31;
  v33 = 0;
  if (*(v4 + 624))
  {
    v5 = a2[1];
    v29 = v4;
    v30 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 64))(a1, &v29, 1);
    v6 = v30;
    if (v30)
    {
LABEL_5:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v13 = a2[1];
    v27[0] = v4;
    v27[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Phase::JobManager::TreeLock::TreeLock(&v28, a1, v27);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    Phase::JobManagerDispatch::doCancelJob(&v24, a1, v4, a3);
    std::__list_imp<std::shared_ptr<Phase::Job>>::clear(&v31);
    v14 = v26;
    if (v26)
    {
      v16 = v24;
      v15 = v25;
      v17 = *(v24 + 8);
      v18 = *v25;
      *(v18 + 8) = v17;
      *v17 = v18;
      v19 = v31;
      v20 = v33;
      *(v31 + 8) = v15;
      *v15 = v19;
      *(v16 + 8) = &v31;
      v31 = v16;
      v33 = v20 + v14;
      v26 = 0;
    }

    std::__list_imp<std::shared_ptr<Phase::Job>>::clear(&v24);
    std::recursive_mutex::unlock((v28 + 96));
    v6 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      goto LABEL_5;
    }
  }

  v7 = v32;
  if (v32 == &v31)
  {
    v11 = 0;
  }

  else
  {
    do
    {
      v8 = v7[2];
      v9 = v7[3];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v23 = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v23 = 0;
      }

      v22 = v8;
      v10 = (*(*a1 + 96))(a1, &v22, 0.0);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v7 = v7[1];
    }

    while (v7 != &v31);
    if (HIDWORD(v10))
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }
  }

  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(&v31);
  return v11;
}

void sub_23A42BBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  Phase::JobManager::TreeLock::~TreeLock(va);
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear((v8 - 72));
  _Unwind_Resume(a1);
}

uint64_t Phase::JobManagerDispatch::WaitForJob(Phase::JobManager *a1, Phase::Job **a2, double a3)
{
  v3 = *a2;
  if (*(*a2 + 78))
  {
    return 1;
  }

  v5 = atomic_load(v3 + 600);
  if (v5)
  {
    v6 = atomic_load(Phase::JobManager::GetExecutionState(a1, *a2));
    v7 = v6 == 2;
  }

  else
  {
    if (!*(v3 + 72))
    {
      return 3;
    }

    result = 1;
    if (atomic_exchange(v3 + 601, 1u))
    {
      return result;
    }

    v8 = (a3 * 1000000000.0);
    if (v8)
    {
      v9 = dispatch_time(0, v8);
    }

    else
    {
      v9 = -1;
    }

    v7 = dispatch_block_wait(*(v3 + 72), v9) == 0;
  }

  v10 = !v7;
  return 4 * v10;
}

uint64_t Phase::JobManagerDispatch::DestroyJob(atomic_uint *this, Phase::Job *a2)
{
  result = Phase::JobManager::DestroyJob(this, a2);
  atomic_fetch_add(this + 54, 0xFFFFFFFF);
  return result;
}

uint64_t Phase::JobManagerDispatch::PrepareJob(Phase::JobManager *a1, uint64_t *a2)
{
  v4 = a2[1];
  v12[0] = *a2;
  v12[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::TreeLock::TreeLock(&v13, a1, v12);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a2[1];
  v10 = *a2;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 96))(a1, &v10, 0.0);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v6 = *a2;
  v7 = a2[1];
  v9[0] = v6;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManagerDispatch::ResetJob(a1, v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::recursive_mutex::unlock((v13 + 96));
  if (*(&v13 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
  }

  return 0;
}

void sub_23A42BDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  Phase::JobManager::TreeLock::~TreeLock(va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>,std::__map_value_compare<Phase::Job::Priority,std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>,std::less<Phase::Job::Priority>,true>,std::allocator<std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>,std::__map_value_compare<Phase::Job::Priority,std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>,std::less<Phase::Job::Priority>,true>,std::allocator<std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>>>::destroy(*a1);
    std::__tree<std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>,std::__map_value_compare<Phase::Job::Priority,std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>,std::less<Phase::Job::Priority>,true>,std::allocator<std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      dispatch_release(v2);
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_pointer<Phase::JobDispatch *,std::__bind<void (Phase::JobManagerDispatch::*)(Phase::Job *),Phase::JobManagerDispatch*,std::placeholders::__ph<1> const&>,std::allocator<Phase::JobDispatch>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::JobDispatch *,std::__bind<void (Phase::JobManagerDispatch::*)(Phase::Job *),Phase::JobManagerDispatch*,std::placeholders::__ph<1> const&>,std::allocator<Phase::JobDispatch>>::__on_zero_shared(void *a1)
{
  v1 = a1[5];
  v2 = a1[4];
  v3 = (a1[6] + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, a1[3]);
}

void *std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__emplace_unique_key_args<std::weak_ptr<Phase::Job>,std::weak_ptr<Phase::Job>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[5];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__erase_unique<std::weak_ptr<Phase::Job>>(uint64_t **a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = (a1 + 1);
  do
  {
    v5 = v2[5];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[5])
  {
    return 0;
  }

  std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__remove_node_pointer(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (v18 && (v18[3] & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (v23[3] & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  v7[1] = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = v7[2];
  v24[2] = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  v7[2] = v24;
  v23 = v7;
LABEL_68:
  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

void *Phase::Command<128>::Invoker<Phase::JobManagerDispatch::StopScheduledJobs(std::list<std::shared_ptr<Phase::Job>>,BOOL)::$_0,void>::~Invoker(void *a1)
{
  *a1 = &unk_284D35720;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void Phase::Command<128>::Invoker<Phase::JobManagerDispatch::StopScheduledJobs(std::list<std::shared_ptr<Phase::Job>>,BOOL)::$_0,void>::~Invoker(void *a1)
{
  *a1 = &unk_284D35720;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::Command<128>::Invoker<Phase::JobManagerDispatch::StopScheduledJobs(std::list<std::shared_ptr<Phase::Job>>,BOOL)::$_0,void>::Call(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 16))
      {
        v6 = *(a1 + 16);
        v7 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        (*(*v3 + 64))(v3, &v6, *(a1 + 32));
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_23A42C5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void *Phase::Command<128>::Invoker<Phase::JobManagerDispatch::StopScheduledJobAsync(std::shared_ptr<Phase::Job>,std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,BOOL)::$_0,void>::~Invoker(void *a1)
{
  *a1 = &unk_284D35748;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void Phase::Command<128>::Invoker<Phase::JobManagerDispatch::StopScheduledJobAsync(std::shared_ptr<Phase::Job>,std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,BOOL)::$_0,void>::~Invoker(void *a1)
{
  *a1 = &unk_284D35748;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::Command<128>::Invoker<Phase::JobManagerDispatch::StopScheduledJobAsync(std::shared_ptr<Phase::Job>,std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,BOOL)::$_0,void>::Call(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 16))
      {
        v6 = *(a1 + 16);
        v7 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        (*(*v3 + 64))(v3, &v6, *(a1 + 32));
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_23A42C774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void *Phase::Command<128>::Invoker<std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,void,BOOL,std::list<std::shared_ptr<Phase::Job>>>::~Invoker(void *a1)
{
  *a1 = &unk_284D35770;
  v2 = (a1 + 1);
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(a1 + 6);
  std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](v2);
  return a1;
}

void Phase::Command<128>::Invoker<std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,void,BOOL,std::list<std::shared_ptr<Phase::Job>>>::~Invoker(void *a1)
{
  *a1 = &unk_284D35770;
  v1 = (a1 + 1);
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(a1 + 6);
  std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](v1);

  JUMPOUT(0x23EE864A0);
}

void Phase::Command<128>::Invoker<std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,void,BOOL,std::list<std::shared_ptr<Phase::Job>>>::Call(uint64_t a1)
{
  v2 = *(a1 + 40);
  std::list<std::shared_ptr<Phase::Job>>::list(v3, a1 + 48);
  std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::operator()(a1 + 8, v2);
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v3);
}

void sub_23A42C8AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(va);
  _Unwind_Resume(a1);
}

void *Phase::Command<128>::Invoker<Phase::JobManagerDispatch::StopScheduledJobsAsync(std::list<std::shared_ptr<Phase::Job>>,std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,BOOL)::$_0,void>::~Invoker(void *a1)
{
  *a1 = &unk_284D35798;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void Phase::Command<128>::Invoker<Phase::JobManagerDispatch::StopScheduledJobsAsync(std::list<std::shared_ptr<Phase::Job>>,std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,BOOL)::$_0,void>::~Invoker(void *a1)
{
  *a1 = &unk_284D35798;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::Command<128>::Invoker<Phase::JobManagerDispatch::StopScheduledJobsAsync(std::list<std::shared_ptr<Phase::Job>>,std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>,BOOL)::$_0,void>::Call(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 16))
      {
        v6 = *(a1 + 16);
        v7 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        (*(*v3 + 64))(v3, &v6, *(a1 + 32));
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_23A42CA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void Phase::JobManagerSynchronous::CreateJob(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x280uLL, 0x80uLL);
  Phase::Job::Job(v6, a1, a2);
  *v6 = &unk_284D357C0;
  v6[72] = v6 + 72;
  v6[73] = v6 + 72;
  v6[74] = 0;
  *a3 = v6;
  operator new();
}

void sub_23A42CB0C(void *a1)
{
  __cxa_begin_catch(a1);
  (*(*v2 + 112))(v2, v1);
  __cxa_rethrow();
}

uint64_t Phase::JobManagerSynchronous::AddDependency(Phase::Logger *a1, uint64_t a2, Phase::Job **a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (!*a2)
  {
    v16 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136315394;
      *&v20[4] = "JobManagerSynchronous.cpp";
      *&v20[12] = 1024;
      *&v20[14] = 33;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependent is false.", v20, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: nullptr != pInDependent is false.");
  }

  v5 = *a3;
  if (!*a3)
  {
    v18 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136315394;
      *&v20[4] = "JobManagerSynchronous.cpp";
      *&v20[12] = 1024;
      *&v20[14] = 34;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependency is false.", v20, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v19, "PRECONDITION: nullptr != pInDependency is false.");
  }

  if (atomic_load(Phase::JobManager::GetExecutionState(a1, *a2)))
  {
    return 3;
  }

  Dependents = Phase::JobManager::GetDependents(a1, v5);
  v11 = *(a2 + 8);
  *v20 = *a2;
  *&v20[8] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__emplace_unique_key_args<std::weak_ptr<Phase::Job>,std::weak_ptr<Phase::Job>>(Dependents, v20);
  v13 = v12;
  if (*&v20[8])
  {
    std::__shared_weak_count::__release_weak(*&v20[8]);
  }

  if (v13)
  {
    v14 = *a3;
    v15 = *(*a3 + 131);
    if (v15 <= *(*a2 + 524))
    {
      v15 = *(*a2 + 524);
    }

    *(v14 + 131) = v15;
    atomic_store(1u, v14 + 40);
    Phase::JobManager::GetDependencies(a1, v3);
    std::list<std::shared_ptr<Phase::Job>>::push_back();
  }

  return 2;
}

void sub_23A42CDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::JobManagerSynchronous::AddEnqueuedDependency(Phase::Logger *a1, uint64_t a2, Phase::Job **a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (!*a2)
  {
    v13 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 136315394;
      *&v17[4] = "JobManagerSynchronous.cpp";
      *&v17[12] = 1024;
      *&v17[14] = 55;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependent is false.", v17, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: nullptr != pInDependent is false.");
  }

  v4 = *a3;
  if (!*a3)
  {
    v15 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 136315394;
      *&v17[4] = "JobManagerSynchronous.cpp";
      *&v17[12] = 1024;
      *&v17[14] = 56;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependency is false.", v17, 0x12u);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v16, "PRECONDITION: nullptr != pInDependency is false.");
  }

  if (atomic_load(Phase::JobManager::GetExecutionState(a1, *a3)))
  {
    return 3;
  }

  Dependents = Phase::JobManager::GetDependents(a1, v4);
  v10 = *(a2 + 8);
  *v17 = *a2;
  *&v17[8] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__emplace_unique_key_args<std::weak_ptr<Phase::Job>,std::weak_ptr<Phase::Job>>(Dependents, v17);
  v12 = v11;
  if (*&v17[8])
  {
    std::__shared_weak_count::__release_weak(*&v17[8]);
  }

  if (v12)
  {
    Phase::JobManager::GetDependencies(a1, v3);
    std::list<std::shared_ptr<Phase::Job>>::push_back();
  }

  return 2;
}

void sub_23A42D06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::JobManagerSynchronous::InsertDependency(Phase::Logger *a1, uint64_t a2, uint64_t a3, Phase::Job **a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (!*a2)
  {
    v23 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerSynchronous.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 84;
      _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInInsertor is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: nullptr != pInInsertor is false.");
  }

  v6 = *a3;
  if (!*a3)
  {
    v25 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerSynchronous.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 85;
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependent is false.", buf, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v26, "PRECONDITION: nullptr != pInDependent is false.");
  }

  v8 = *a4;
  if (!*a4)
  {
    v27 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerSynchronous.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 86;
      _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependency is false.", buf, 0x12u);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v28, "PRECONDITION: nullptr != pInDependency is false.");
  }

  if (atomic_load(Phase::JobManager::GetExecutionState(a1, *a2)))
  {
    return 3;
  }

  v13 = *(Phase::JobManager::GetDependencies(a1, v6) + 8);
  Dependencies = Phase::JobManager::GetDependencies(a1, v6);
  if (v13 != Dependencies)
  {
    while (*(v13 + 16) != *a4)
    {
      v13 = *(v13 + 8);
      if (v13 == Dependencies)
      {
        v13 = Dependencies;
        break;
      }
    }
  }

  if (v13 != Phase::JobManager::GetDependencies(a1, v6))
  {
    Dependents = Phase::JobManager::GetDependents(a1, v8);
    v16 = *(a2 + 8);
    *buf = *a2;
    *&buf[8] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
    }

    std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__emplace_unique_key_args<std::weak_ptr<Phase::Job>,std::weak_ptr<Phase::Job>>(Dependents, buf);
    if (v17)
    {
      v18 = Phase::JobManager::GetDependents(a1, v4);
      v19 = *(a3 + 8);
      v29 = *a3;
      v30 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__emplace_unique_key_args<std::weak_ptr<Phase::Job>,std::weak_ptr<Phase::Job>>(v18, &v29);
      v21 = v20;
      if (v30)
      {
        std::__shared_weak_count::__release_weak(v30);
      }
    }

    else
    {
      v21 = 0;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_weak(*&buf[8]);
    }

    if (v21)
    {
      v22 = *(v4 + 131);
      if (v22 <= *(v6 + 131))
      {
        v22 = *(v6 + 131);
      }

      *(v4 + 131) = v22;
      atomic_store(1u, v4 + 40);
      Phase::JobManager::GetDependencies(a1, v6);
      std::list<std::shared_ptr<Phase::Job>>::push_back();
    }
  }

  return 2;
}

void sub_23A42D4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::list<std::shared_ptr<Phase::Job>>::remove(uint64_t *a1, uint64_t a2)
{
  v12[0] = v12;
  v12[1] = v12;
  v13 = 0;
  v2 = a1[1];
  if (v2 != a1)
  {
    v3 = 0;
    do
    {
      v4 = v2[1];
      if (v2[2] == a2)
      {
        if (v4 == a1)
        {
          v5 = 1;
        }

        else
        {
          do
          {
            v5 = v4[2] == a2;
            if (v4[2] != a2)
            {
              break;
            }

            v4 = v4[1];
          }

          while (v4 != a1);
        }

        if (v2 != v4)
        {
          v6 = *v4;
          if (v12 != a1)
          {
            v7 = 1;
            if (v6 != v2)
            {
              v8 = v2;
              do
              {
                v8 = v8[1];
                ++v7;
              }

              while (v8 != v6);
            }

            a1[2] -= v7;
            v3 += v7;
            v13 = v3;
          }

          v9 = *(v6 + 8);
          v10 = *v2;
          *(v10 + 8) = v9;
          *v9 = v10;
          v11 = v12[0];
          *(v12[0] + 8) = v2;
          *v2 = v11;
          v12[0] = v6;
          *(v6 + 8) = v12;
        }

        if (!v5)
        {
          v4 = v4[1];
        }
      }

      v2 = v4;
    }

    while (v4 != a1);
  }

  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v12);
}

uint64_t Phase::JobManagerSynchronous::ReplaceDependency(Phase::Logger *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (!*a2)
  {
    v25 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v31 = 136315394;
      *&v31[4] = "JobManagerSynchronous.cpp";
      *&v31[12] = 1024;
      *&v31[14] = 125;
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInReplacement is false.", v31, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: nullptr != pInReplacement is false.");
  }

  v6 = *a3;
  if (!*a3)
  {
    v27 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v31 = 136315394;
      *&v31[4] = "JobManagerSynchronous.cpp";
      *&v31[12] = 1024;
      *&v31[14] = 126;
      _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependent is false.", v31, 0x12u);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v28, "PRECONDITION: nullptr != pInDependent is false.");
  }

  v8 = *a4;
  if (!*a4)
  {
    v29 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v31 = 136315394;
      *&v31[4] = "JobManagerSynchronous.cpp";
      *&v31[12] = 1024;
      *&v31[14] = 127;
      _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependency is false.", v31, 0x12u);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v30, "PRECONDITION: nullptr != pInDependency is false.");
  }

  v11 = *(Phase::JobManager::GetDependencies(a1, *a3) + 8);
  Dependencies = Phase::JobManager::GetDependencies(a1, v6);
  v13 = Dependencies;
  if (v11 != Dependencies)
  {
    while (*(v11 + 16) != *a4)
    {
      v11 = *(v11 + 8);
      if (v11 == Dependencies)
      {
        goto LABEL_9;
      }
    }

    v13 = v11;
  }

LABEL_9:
  if (atomic_load(Phase::JobManager::GetExecutionState(a1, v4)))
  {
    return 3;
  }

  if (Phase::JobManager::GetDependencies(a1, v6) == v13)
  {
    return 2;
  }

  v16 = *(v4 + 524);
  if (v16 <= *(v8 + 131))
  {
    v16 = *(v8 + 131);
  }

  *(v4 + 524) = v16;
  atomic_store(1u, (v4 + 40));
  v18 = *a2;
  v17 = a2[1];
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = *(v13 + 24);
  *(v13 + 16) = v18;
  *(v13 + 24) = v17;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  Dependents = Phase::JobManager::GetDependents(a1, v8);
  v21 = *(a3 + 8);
  *v31 = *a3;
  *&v31[8] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
  }

  std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__erase_unique<std::weak_ptr<Phase::Job>>(Dependents, v31);
  if (*&v31[8])
  {
    std::__shared_weak_count::__release_weak(*&v31[8]);
  }

  v22 = Phase::JobManager::GetDependents(a1, v4);
  v23 = *(a3 + 8);
  *v31 = *a3;
  *&v31[8] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
  }

  std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__emplace_unique_key_args<std::weak_ptr<Phase::Job>,std::weak_ptr<Phase::Job>>(v22, v31);
  if (*&v31[8])
  {
    std::__shared_weak_count::__release_weak(*&v31[8]);
  }

  v24 = atomic_load(Phase::JobManager::GetExecutionState(a1, v6));
  if (v24 == 1)
  {
    std::list<std::shared_ptr<Phase::Job>>::remove(v6 + 72, *a4);
    std::list<std::shared_ptr<Phase::Job>>::push_back();
  }

  return 0;
}

void sub_23A42D9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t Phase::JobManagerSynchronous::CancelJob(Phase::JobManager *this, uint64_t a2, int a3)
{
  v5 = *a2;
  if (a3)
  {
    v6 = *(a2 + 8);
    v21 = v5;
    v22 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RootJob = Phase::JobManager::GetRootJob(this, &v21, &v23);
    v8 = (*(*this + 104))(this, &v23, 0, RootJob);
    v9 = v8;
    v10 = HIDWORD(v8);
    if (*(&v23 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  else
  {
    ExecutionState = Phase::JobManager::GetExecutionState(this, v5);
    v9 = 3;
    v12 = 1;
    atomic_compare_exchange_strong(ExecutionState, &v12, 3u);
    if (v12 == 1)
    {
      Dependencies = Phase::JobManager::GetDependencies(this, *a2);
      v14 = *(Dependencies + 8);
      if (v14 != Dependencies)
      {
        v15 = Dependencies;
        do
        {
          v16 = v14[2];
          v17 = v14[3];
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            v20 = v17;
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v20 = 0;
          }

          v19 = v16;
          (*(*this + 104))(this, &v19, 0);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v14 = v14[1];
        }

        while (v14 != v15);
      }

      v9 = 0;
    }

    LODWORD(v10) = 0;
  }

  return v9 | (v10 << 32);
}

void sub_23A42DBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::JobManagerSynchronous::RunJob(Phase::JobManager *a1, uint64_t a2, double a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3 <= 0.0)
  {
    Dependents = Phase::JobManager::GetDependents(a1, *a2);
    if (*(Dependents + 2))
    {
      v10 = **(Phase::Logger::GetInstance(Dependents) + 480);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "JobManagerSynchronous.cpp";
        v15 = 1024;
        v16 = 216;
        _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: GetDependents(pJob).empty() is false.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: GetDependents(pJob).empty() is false.");
    }

    v7 = *a2;
    v8 = *(a2 + 8);
    v12[0] = v7;
    v12[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }

    v3 = 2 * (Phase::JobManagerSynchronous::doRunJob(a1, v12) == 0);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    return 1;
  }

  return v3;
}

uint64_t Phase::JobManagerSynchronous::doRunJob(Phase::JobManager *a1, Phase::Job **a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  ExecutionState = Phase::JobManager::GetExecutionState(a1, *a2);
  v5 = 0;
  atomic_compare_exchange_strong(ExecutionState, &v5, 1u);
  if (v5)
  {
    if (v5 != 3)
    {
      v7 = **(Phase::Logger::GetInstance(ExecutionState) + 480);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = "JobManagerSynchronous.cpp";
        v22 = 1024;
        v23 = 250;
        v24 = 1024;
        v25 = v5;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Attempting to run a job with active state %i", buf, 0x18u);
      }
    }

    return 0;
  }

  else
  {
    v6 = *(Phase::JobManager::GetDependencies(a1, v3) + 8);
    if (v6 != Phase::JobManager::GetDependencies(a1, v3))
    {
      operator new();
    }

    v9 = *(v3 + 74);
    if (v9)
    {
      LODWORD(v8) = 1;
      do
      {
        v10 = *(v3 + 73);
        v12 = v10[2];
        v11 = v10[3];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *(v3 + 73);
          v9 = *(v3 + 74);
          v13 = v10[3];
        }

        else
        {
          v13 = 0;
        }

        v15 = *v10;
        v14 = v10[1];
        *(v15 + 8) = v14;
        *v14 = v15;
        *(v3 + 74) = v9 - 1;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        operator delete(v10);
        v19[0] = v12;
        v19[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = Phase::JobManagerSynchronous::doRunJob(a1, v19);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v8 = (v16 + v8);
        v9 = *(v3 + 74);
      }

      while (v9);
    }

    else
    {
      v8 = 1;
    }

    v17 = atomic_load(Phase::JobManager::GetExecutionState(a1, v3));
    if (v17 != 3)
    {
      Phase::Job::Run(v3);
      atomic_store(2u, Phase::JobManager::GetExecutionState(a1, v3));
    }
  }

  return v8;
}

void sub_23A42E060(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    while (1)
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
      if (!v3)
      {
        __cxa_rethrow();
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void Phase::JobManagerSynchronous::ScheduleJobs(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!*(a4 + 24))
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "JobManagerSynchronous.cpp";
      v10 = 1024;
      v11 = 265;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Schedule periodic jobs is not supported in JobManagerSynchronous", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Schedule periodic jobs is not supported in JobManagerSynchronous");
  }

  std::list<std::shared_ptr<Phase::Job>>::list(v7, a2);
  std::function<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::operator()(a4, 0);
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v7);
}

uint64_t Phase::JobManagerSynchronous::PrepareJob(Phase::JobManager *a1, Phase::Job **a2)
{
  v3 = *a2;
  v4 = 2 * (*(*a2 + 132) == 1);
  atomic_store(0, Phase::JobManager::GetExecutionState(a1, *a2));
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v3 + 72);
  Dependencies = Phase::JobManager::GetDependencies(a1, v3);
  v6 = *(Dependencies + 8);
  if (v6 != Dependencies)
  {
    v7 = Dependencies;
    do
    {
      v8 = v6[2];
      v9 = v6[3];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v15 = 0;
      }

      v14 = v8;
      v10 = (*(*a1 + 144))(a1, &v14);
      if (HIDWORD(v10))
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      v12 = v11;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (!v12)
      {
        v4 = 2;
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v6 = v6[1];
    }

    while (v6 != v7);
  }

  return v4;
}

void sub_23A42E344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::JobManagerSynchronous::~JobManagerSynchronous(Phase::JobManagerSynchronous *this)
{
  Phase::JobManager::~JobManager(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::JobSynchronous::~JobSynchronous(Phase::JobSynchronous *this)
{
  *this = &unk_284D357C0;
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(this + 72);

  Phase::Job::~Job(this);
}

{
  *this = &unk_284D357C0;
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(this + 72);
  Phase::Job::~Job(this);

  JUMPOUT(0x23EE86490);
}

void std::__shared_ptr_pointer<Phase::JobSynchronous *,std::__bind<void (Phase::JobManager::*)(Phase::Job *),Phase::JobManagerSynchronous *,std::placeholders::__ph<1> const&>,std::allocator<Phase::JobSynchronous>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::JobSynchronous *,std::__bind<void (Phase::JobManager::*)(Phase::Job *),Phase::JobManagerSynchronous *,std::placeholders::__ph<1> const&>,std::allocator<Phase::JobSynchronous>>::__on_zero_shared(void *a1)
{
  v1 = a1[5];
  v2 = a1[4];
  v3 = (a1[6] + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, a1[3]);
}

uint64_t Phase::ParseJSONFile(void *a1, void *a2, void **a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v65 = a1;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v65 resourceSpecifier];
  v63 = v5;
  v7 = [v5 contentsAtPath:v6];

  v62 = v7;
  if (v7)
  {
    v66 = v7;
    if (a3)
    {
      *a3 = 0;
    }

    v64 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v66 options:2 error:a3];
    if (a3 && ((v8 = *a3, !v64) || v8))
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v24 = [v8 userInfo];
      v25 = [v24 allValues];

      obj = v25;
      v26 = [v25 countByEnumeratingWithState:&v83 objects:buf count:16];
      if (v26)
      {
        v68 = *v84;
        do
        {
          v69 = v26;
          for (i = 0; i != v69; ++i)
          {
            if (*v84 != v68)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v83 + 1) + 8 * i);
            v29 = [v28 hasPrefix:@"Badly formed object around character"];
            if (v29)
            {
              v30 = [v28 substringFromIndex:{objc_msgSend(@"Badly formed object around character", "length")}];
              v31 = [v30 intValue];
              v32 = v66;
              v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v32 encoding:4];
              v34 = 0;
              v35 = 0;
              v36 = 0;
              if (v31 < 0)
              {
                v37 = -1;
              }

              else
              {
                v37 = v31;
              }

              v38 = (v37 + 1);
              while ([v33 length] > v34)
              {
                if ([v33 characterAtIndex:v34] == 10)
                {
                  ++v35;
                  v36 = v34;
                }

                if (v38 + 1 == ++v34)
                {

                  v40 = **(Phase::Logger::GetInstance(v39) + 16);
                  v41 = v40;
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    *v72 = 136315906;
                    v73 = "JSONParser.mm";
                    v74 = 1024;
                    v75 = 92;
                    v76 = 1024;
                    *v77 = v35;
                    *&v77[4] = 1024;
                    *&v77[6] = v38 - v36;
                    _os_log_impl(&dword_23A302000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d JSON parse error at line %d, column %d", v72, 0x1Eu);
                  }

                  goto LABEL_43;
                }
              }

              v42 = **(Phase::Logger::GetInstance(v45) + 16);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v46 = v28;
                v47 = [v28 UTF8String];
                *v72 = 136315650;
                v73 = "JSONParser.mm";
                v74 = 1024;
                v75 = 96;
                v76 = 2080;
                *v77 = v47;
                _os_log_impl(&dword_23A302000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", v72, 0x1Cu);
              }
            }

            else
            {
              v42 = **(Phase::Logger::GetInstance(v29) + 16);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v43 = v28;
                v44 = [v28 UTF8String];
                *v72 = 136315650;
                v73 = "JSONParser.mm";
                v74 = 1024;
                v75 = 101;
                v76 = 2080;
                *v77 = v44;
                _os_log_impl(&dword_23A302000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", v72, 0x1Cu);
              }
            }

LABEL_43:
            ;
          }

          v26 = [obj countByEnumeratingWithState:&v83 objects:buf count:16];
        }

        while (v26);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        obj = [v64 objectForKeyedSubscript:@"PHASEJSONVersion"];
        if (obj && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if ([obj integerValue] == 1)
          {
            *a2 = v64;
            v9 = 1;
LABEL_52:

            goto LABEL_53;
          }

          v56 = MEMORY[0x277CCACA8];
          v57 = [MEMORY[0x277CCA8D8] mainBundle];
          v58 = [v57 localizedStringForKey:@"Unsupported PHASEJSONVersion.  Should be %d value:found %d" table:{&stru_284D3D208, 0}];
          v51 = [v56 stringWithFormat:v58, 1, objc_msgSend(obj, "intValue"), v7];

          v60 = **(Phase::Logger::GetInstance(v59) + 16);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "JSONParser.mm";
            v79 = 1024;
            v80 = 118;
            v81 = 2080;
            v82 = [v51 UTF8String];
            _os_log_impl(&dword_23A302000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
          }

          if (a3)
          {
            *&v83 = *MEMORY[0x277CCA450];
            *buf = v51;
            v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v83 count:1];
            *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924647 userInfo:v61];
          }
        }

        else
        {
          v48 = MEMORY[0x277CCACA8];
          v49 = [MEMORY[0x277CCA8D8] mainBundle];
          v50 = [v49 localizedStringForKey:@"Data is not a valid PHASE JSON" value:&stru_284D3D208 table:0];
          v51 = [v48 stringWithFormat:v50];

          v53 = **(Phase::Logger::GetInstance(v52) + 16);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "JSONParser.mm";
            v79 = 1024;
            v80 = 131;
            v81 = 2080;
            v82 = [v51 UTF8String];
            _os_log_impl(&dword_23A302000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
          }

          if (a3)
          {
            *&v83 = *MEMORY[0x277CCA450];
            *buf = v51;
            v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v83 count:1];
            *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v54];
          }
        }
      }

      else
      {
        v18 = MEMORY[0x277CCACA8];
        v19 = [MEMORY[0x277CCA8D8] mainBundle];
        v20 = [v19 localizedStringForKey:@"Data is not a valid PHASE JSON" value:&stru_284D3D208 table:0];
        obj = [v18 stringWithFormat:v20];

        v22 = **(Phase::Logger::GetInstance(v21) + 16);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "JSONParser.mm";
          v79 = 1024;
          v80 = 146;
          v81 = 2080;
          v82 = [obj UTF8String];
          _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
        }

        if (a3)
        {
          *&v83 = *MEMORY[0x277CCA450];
          *buf = obj;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v83 count:1];
          *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v23];
        }
      }
    }

    v9 = 0;
    goto LABEL_52;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"Could not read file %@" value:&stru_284D3D208 table:0];
  v13 = [v65 resourceSpecifier];
  v14 = [v10 stringWithFormat:v12, v13];

  v16 = **(Phase::Logger::GetInstance(v15) + 16);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "JSONParser.mm";
    v79 = 1024;
    v80 = 29;
    v81 = 2080;
    v82 = [v14 UTF8String];
    _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
  }

  if (a3)
  {
    v70 = *MEMORY[0x277CCA450];
    v71 = v14;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924647 userInfo:v17];
  }

  v9 = 0;
LABEL_53:

  return v9;
}

void Phase::MakeDataBundleFromJSONFile(uint64_t a1@<X0>, void *a2@<X1>, void **a3@<X3>, void *a4@<X8>)
{
  v9 = a2;
  v10 = 0;
  v7 = Phase::ParseJSONFile(v9, &v10, a3);
  v8 = v10;
  if (v7)
  {
    Phase::MakeDataBundle(a1, v8);
  }

  *a4 = 0;
}

uint64_t Phase::SpatialModeler::LateReverbIRBuildControl::IsNewIRPerceptuallyDifferent(uint64_t a1, float *a2, int a3)
{
  v6 = *(a2 + 31);
  if (v6 == *(a1 + 124) && (v7 = *(a2 + 63), v7 == *(a1 + 252)))
  {
    if (v6)
    {
      v8 = a1;
      v9 = a2;
      do
      {
        v10 = *v9;
        if (*v8 == 0.0)
        {
          if (v10 != 0.0)
          {
            goto LABEL_20;
          }
        }

        else if (v10 == 0.0 || fabsf((v10 / *v8) + -1.0) > (Phase::SpatialModeler::LateReverbIRBuildControl::sToleranceRT60InPercent[*(a1 + 256)] / 100.0))
        {
          goto LABEL_20;
        }

        ++v9;
        ++v8;
        --v6;
      }

      while (v6);
    }

    if (v7)
    {
      v11 = a2 + 32;
      v12 = (a1 + 128);
      do
      {
        v13 = *v11;
        if (*v12 == 0.0)
        {
          if (v13 != 0.0)
          {
            goto LABEL_20;
          }
        }

        else if (v13 == 0.0 || fabsf(log10f(v13 / *v12) * 10.0) > Phase::SpatialModeler::LateReverbIRBuildControl::sToleranceEnergyInDb[*(a1 + 256)])
        {
          goto LABEL_20;
        }

        ++v11;
        ++v12;
        --v7;
      }

      while (v7);
    }

    return 0;
  }

  else
  {
LABEL_20:
    if (a3)
    {
      v15 = *a2;
      v16 = *(a2 + 1);
      v17 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v17;
      *a1 = v15;
      *(a1 + 16) = v16;
      v18 = *(a2 + 4);
      v19 = *(a2 + 5);
      v20 = *(a2 + 7);
      *(a1 + 96) = *(a2 + 6);
      *(a1 + 112) = v20;
      *(a1 + 64) = v18;
      *(a1 + 80) = v19;
      v21 = *(a2 + 8);
      v22 = *(a2 + 9);
      v23 = *(a2 + 11);
      *(a1 + 160) = *(a2 + 10);
      *(a1 + 176) = v23;
      *(a1 + 128) = v21;
      *(a1 + 144) = v22;
      v24 = *(a2 + 12);
      v25 = *(a2 + 13);
      v26 = *(a2 + 15);
      *(a1 + 224) = *(a2 + 14);
      *(a1 + 240) = v26;
      *(a1 + 192) = v24;
      *(a1 + 208) = v25;
    }

    return 1;
  }
}

uint64_t Phase::SpatialModeler::LateReverbSimulationImpl::AllocClusterQueryState@<X0>(Phase::SpatialModeler::LateReverbSimulationImpl *this@<X0>, Phase::SpatialModeler::LateReverbSimulation *a2@<X1>, uint64_t *a3@<X8>)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = 1344;
  if (*(*(a2 + 11) + 48))
  {
    v6 = 26640;
  }

  v11 = 16;
  v10[0] = this + v6 + 25256;
  v10[1] = &v11;
  v9 = v10[0];
  Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState*)#1} const&>(v10, &v9, &v12);
  v7 = v12;
  *(v12 + 72) = *(this + 3);
  *(v7 + 137808) = Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationBegin;
  v12 = 0;
  *a3 = v7;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a3 + 1), v13);
  std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>>::reset[abi:ne200100](&v12, 0);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v13);
}

uint64_t Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationBegin@<X0>(float32x2_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, Phase::Logger *a4@<X8>)
{
  v134 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v9 = os_signpost_id_generate(**(Instance + 224));
  v118 = v9;
  v10 = Phase::Logger::GetInstance(v9);
  if (*(v10 + 1272) == 1)
  {
    v11 = **(Phase::Logger::GetInstance(v10) + 1264);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Phase_RoomSimulation_LateReverbBegin", "LateReverbBegin", buf, 2u);
    }
  }

  v117 = &v118;
  Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationBeginInitCommon(a1, a2, a3, v115);
  if (v116 == 2)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v114, v115);
    Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v117, v114);
    v13 = v114;
LABEL_26:
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v13);
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v115);
  }

  v14 = (a3 + 112800);
  v15 = a2[8];
  v16 = a2[11];
  v17 = (a3 + 112876);
  Phase::SpatialModeler::RoomSimulationImpl::ParseOptionalProperties(a1, v15, v16, (a3 + 135520), (a3 + 112876), (a3 + 112864), buf);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(v115, buf);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
  if (v116 == 2)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v113, v115);
    Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v117, v113);
    v13 = v113;
    goto LABEL_26;
  }

  v18 = (a3 + 131680);
  v19 = *(v16 + 48);
  if (*(v16 + 48))
  {
    v20 = 3340;
  }

  else
  {
    v20 = 178;
  }

  v21 = &a1[v20];
  if (*v14 <= 0.0)
  {
    v24 = 0;
    v25 = 113248;
    v26 = &a1[v20 + 64] + 4;
    do
    {
      v27 = v25;
      v28 = v26;
      v29 = 3;
      do
      {
        *(v28 - 5) = *(a3 + v27);
        *(v28 - 4) = *(a3 + v27 + 4);
        *(v28 - 3) = *(a3 + v27 + 8);
        *(v28 - 2) = *(a3 + v27 + 12);
        *(v28 - 1) = *(a3 + v27 + 16);
        *v28 = *(a3 + v27 + 20);
        v28 += 6;
        v27 += 24;
        --v29;
      }

      while (v29);
      ++v24;
      v26 += 72;
      v25 += 72;
    }

    while (v24 != 256);
    if (&v21[62] != (a3 + 113248))
    {
      std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*>(&v21[2366], *v18, *(a3 + 131688), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 131688) - *v18) >> 3));
      std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>(&v21[2369], *(a3 + 131704), *(a3 + 131712), (*(a3 + 131712) - *(a3 + 131704)) >> 3);
      std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>(&v21[2372], *(a3 + 131728), *(a3 + 131736), (*(a3 + 131736) - *(a3 + 131728)) >> 3);
    }

    memcpy(&v21[2376], (a3 + 131760), 0x160uLL);
    Phase::SpatialModeler::LateReverbSimulationImpl::ClusterLateReverb(v112, a1, a2, a3);
    Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v117, v112);
    v13 = v112;
    goto LABEL_26;
  }

  if (v19)
  {
    v22 = a2[11];
    v23 = (*(*a1 + 104))(a1, *v14);
    if (v23 && *(v23 + 19448))
    {
      Phase::SpatialModeler::RayTracerState::operator=(&a1[v20], v23);
      Phase::SpatialModeler::RoomSimulationLogging::CheckLRClusterResultAndSourceListenerResultCoherence(&a1[v20], "RoomSimulationBegin - LR after sustain -> attack cache load", 59);
      Phase::SpatialModeler::RoomSimulationLogging::logInQuerySources((v22 + 104), "RoomSimulationBegin - LR after sustain -> attack cache load", 59);
      Phase::SpatialModeler::RoomSimulationLogging::logRayTracerStateStatus(&a1[v20], "RoomSimulationBegin - LR after sustain -> attack cache load", 59);
      Phase::SpatialModeler::RoomSimulationImpl::CheckClusterQueryInput(a1, a2, v119);
      if (v120 == 2)
      {
        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v110, v119);
LABEL_103:
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v119);
        Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v117, v110);
        v13 = v110;
        goto LABEL_26;
      }

      if (a1[5771])
      {
        v102 = a2[8];
        v51 = a2[11];
        v52 = a2[12];
        v53 = operator new(0x150uLL, 0x10uLL);
        v54 = v53;
        v55 = 0;
        *(v53 + 8) = 0;
        *v53 = 0u;
        *(v53 + 1) = 0u;
        *(v53 + 36) = 1065353216;
        *(v53 + 44) = 0;
        *(v53 + 13) = 1065353216;
        do
        {
          v56 = &v53[v55];
          *(v56 + 14) = 0;
          *(v56 + 8) = 0;
          v55 += 16;
        }

        while (v55 != 128);
        *(v53 + 23) = 0;
        *&v129 = 0;
        DWORD2(v129) = 0;
        Phase::Subbands<float>::Subbands((v53 + 192), &v129, 3);
        v54[320] = 0;
        v131 = &unk_284D33868;
        LOBYTE(v132) = 0;
        v133 = &v131;
        *&v129 = v54;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v129 + 8, &v131);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v131);
        v57 = v129;
        *&v129 = 0;
        *buf = v57;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v129 + 8);
        *(&v124 + 1) = 1;
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](&v129);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v129 + 8);
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100](v52 + 1, buf);
        v52[6] = *(&v124 + 1);
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
        v58 = operator new(1uLL, 1uLL);
        v131 = &unk_284D33940;
        LOBYTE(v132) = 0;
        v133 = &v131;
        *&v129 = v58;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v129 + 8, &v131);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v131);
        v59 = v129;
        *&v129 = 0;
        *buf = v59;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v129 + 8);
        *(&v124 + 1) = 1;
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v129);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v129 + 8);
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](v52 + 7, buf);
        v52[12] = *(&v124 + 1);
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
        v60 = v51[18];
        v121 = 8;
        v122 = v60;
        v131 = &v122;
        v132 = &v121;
        Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput>(unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(v60, &v131, &v129);
        v61 = v129;
        *&v129 = 0;
        *buf = v61;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v129 + 8);
        *(&v124 + 1) = v60;
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](&v129);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v129 + 8);
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::operator=[abi:ne200100](v52 + 13, buf);
        v52[18] = *(&v124 + 1);
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
        v62 = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
        if (!v51[18])
        {
LABEL_96:
          Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryCleanupCommon(a1, a2, a3);
          v92 = 1;
LABEL_102:
          v111 = v92;
          goto LABEL_103;
        }

        v63 = 0;
        v64 = 16;
        while (1)
        {
          v65 = v51[13];
          v66 = v65 + 304 * v63;
          v67 = *(v66 + 144);
          if (*(v102 + 184) <= v67)
          {
            break;
          }

          v68 = *(v102 + 168) + 24 * v67;
          if (*(v68 + 20) != HIDWORD(v67))
          {
            break;
          }

          v62 = *v68;
          if (!*v68 || v62->i32[0] != 3)
          {
            break;
          }

          v69 = a1[6190].f32[0] - v62[9].f32[0];
          v70 = vsub_f32(a1[6189], v62[8]);
          v71 = sqrtf(vaddv_f32(vmul_f32(v70, v70)) + (v69 * v69));
          if (v71 <= 1000000.0)
          {
            v72 = v71;
          }

          else
          {
            v72 = 1000000.0;
          }

          v122 = *(*&a1[5770] + 16);
          v129 = xmmword_23A555530;
          if (v51[12])
          {
            v73 = 0;
            v129 = *v51[7];
          }

          else
          {
            v73 = 1;
          }

          *v52[7] = v73;
          LODWORD(v121) = 0;
          Phase::SpatialModeler::getClosestLRClusterToSourceInClusteringResults(v62, &a1[3340], &v122, &v129, &v121);
          v74 = v52[1];
          *(v74 + 184) = v122;
          *v74 = v129;
          *(v52[1] + 320) = 1;
          *v52[7] = 1;
          v75 = *(v66 + 140);
          if (v75)
          {
            v76 = (v65 + v64);
            v77 = -3.4028e38;
            do
            {
              v78 = *v76++;
              v79 = v78;
              if (v77 < v78)
              {
                v77 = v79;
              }

              --v75;
            }

            while (v75);
          }

          else
          {
            v77 = -3.4028e38;
          }

          v80 = (fmaxf(v72, 1.0) * -0.5) + -6.0;
          v81 = v52[13] + 16 * v63;
          *v81 = 0;
          if (v80 >= *&v121)
          {
            v82 = *&v121;
          }

          else
          {
            v82 = (v80 + *&v121) * 0.5;
          }

          *(v81 + 8) = v82;
          SharedEnergyReFixedDb = Phase::SpatialModeler::RayTracerState::GetSharedEnergyReFixedDb(&a1[3340], &v122);
          v84 = v52[13] + 16 * v63;
          v85 = *(v84 + 8);
          v86 = v85 + (*(v102 + 976) * (SharedEnergyReFixedDb - v85));
          if (!*(v102 + 952))
          {
            v86 = *(v84 + 8);
          }

          *(v84 + 8) = v86;
          *&v131 = v77;
          *(&v131 + 1) = v77;
          *&v132 = v77;
          v62 = Phase::Subbands<float>::Subbands(buf, &v131, 3);
          v87 = v52[1];
          v88 = v126;
          v87[16] = *&v125[16];
          v87[17] = v88;
          v89 = v128;
          v87[18] = v127;
          v87[19] = v89;
          v90 = *&buf[16];
          v87[12] = *buf;
          v87[13] = v90;
          v91 = *v125;
          v87[14] = v124;
          v87[15] = v91;
          ++v63;
          v64 += 304;
          if (v63 >= v51[18])
          {
            goto LABEL_96;
          }
        }

        v95 = **(Phase::Logger::GetInstance(v62) + 1264);
        v96 = v95;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          v97 = *(v66 + 144);
          *buf = 136315650;
          *&buf[4] = "LateReverbSimulationImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 773;
          *&buf[18] = 2048;
          *&buf[20] = v97;
          _os_log_impl(&dword_23A302000, v95, OS_LOG_TYPE_ERROR, "%25s:%-5d Source from persisting state not found in the Geo Layer (Handle %llu).", buf, 0x1Cu);
        }

        v93 = a1 + 9;
        v94 = 6;
      }

      else
      {
        v93 = a1 + 9;
        v94 = 4;
      }

      v110[0] = v94;
      v110[1] = v93;
      v92 = 2;
      goto LABEL_102;
    }
  }

  else
  {
    if ((*(a3 + 112947) & 1) == 0)
    {
      v31 = a2[8];
      v101 = a2[11];
      v32 = *(v101 + 152);
      if (*(v31 + 184) <= v32 || (v33 = *(v31 + 168) + 24 * v32, *(v33 + 20) != HIDWORD(v32)) || (v34 = *v33) == 0 || *v34 != 2)
      {
        v34 = 0;
      }

      v99 = v34;
      v100 = a2[8];
      if (Phase::SpatialModeler::RoomSimulation::psERtoLRModelerCache)
      {
        v35 = caulk::concurrent::multi_buffer<Phase::SpatialModeler::RayTracerState,3>::read_if (Phase::SpatialModeler::RoomSimulation::psERtoLRModelerCache);
        if (v35)
        {
          v98 = v35;
          if (((std::chrono::steady_clock::now().__d_.__rep_ - *(v35 + 3131)) / 1000000000.0) < (2.0 / *v17))
          {
            Phase::SpatialModeler::RayTracerState::CopyStateAndAssignToModelerInstance(&a1[v20], a1, (v101 + 104), v99, v98, v100);
            Phase::SpatialModeler::SimulationController::RequireSimulation(&a1[10], (a3 + 112752), &a1[v20], v100, buf);
            v36 = *v125;
            *v21[2855].f32 = v124;
            *v21[2857].f32 = v36;
            *&v21[2858].u16[3] = *&v125[14];
            v37 = *&buf[16];
            *v21[2851].f32 = *buf;
            *v21[2853].f32 = v37;
            Phase::SpatialModeler::RoomSimulationLogging::logInQuerySources((v101 + 104), "RoomSimulationBegin - LR after ER -> LR modeler cache load", 58);
            Phase::SpatialModeler::RoomSimulationLogging::logRayTracerStateStatus(&a1[v20], "RoomSimulationBegin - LR after ER -> LR modeler cache load", 58);
            Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationFinish(a1, a2, a3, v109);
            Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v117, v109);
            v13 = v109;
            goto LABEL_26;
          }
        }
      }
    }

    Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationBeginHandleSustainQueryCommon(a1, a2, a3, &a1[v20]);
    v39 = 0;
    do
    {
      v40 = v21[2853].i8[v39 + 3];
      if (v40)
      {
        break;
      }
    }

    while (v39++ != 18);
    if ((v40 & 1) == 0)
    {
      v45 = 0;
      v46 = 113248;
      v47 = &a1[v20 + 64] + 4;
      do
      {
        v48 = v46;
        v49 = v47;
        v50 = 3;
        do
        {
          *(v49 - 5) = *(a3 + v48);
          *(v49 - 4) = *(a3 + v48 + 4);
          *(v49 - 3) = *(a3 + v48 + 8);
          *(v49 - 2) = *(a3 + v48 + 12);
          *(v49 - 1) = *(a3 + v48 + 16);
          *v49 = *(a3 + v48 + 20);
          v49 += 6;
          v48 += 24;
          --v50;
        }

        while (v50);
        ++v45;
        v47 += 72;
        v46 += 72;
      }

      while (v45 != 256);
      if (&v21[62] != (a3 + 113248))
      {
        std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*>(&v21[2366], *v18, *(a3 + 131688), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 131688) - *v18) >> 3));
        std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>(&v21[2369], *(a3 + 131704), *(a3 + 131712), (*(a3 + 131712) - *(a3 + 131704)) >> 3);
        std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>(&v21[2372], *(a3 + 131728), *(a3 + 131736), (*(a3 + 131736) - *(a3 + 131728)) >> 3);
      }

      memcpy(&v21[2376], (a3 + 131760), 0x160uLL);
      Phase::SpatialModeler::LateReverbSimulationImpl::ClusterLateReverb(v108, a1, a2, a3);
      Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v117, v108);
      v13 = v108;
      goto LABEL_26;
    }

    if (v21[3130].i8[0] != 1 || v21[15].f32[1] != *v17 || v21[6].f32[0] != *v14)
    {
      v42 = **(Phase::Logger::GetInstance(v38) + 1264);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        Phase::SpatialModeler::RoomSimulationLogging::MakeInfoString(a1[4].i32[0], &v129);
        v43 = v130 >= 0 ? &v129 : v129;
        *buf = 136315650;
        *&buf[4] = "LateReverbSimulationImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 256;
        *&buf[18] = 2080;
        *&buf[20] = v43;
        _os_log_impl(&dword_23A302000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", buf, 0x1Cu);
        if (v130 < 0)
        {
          operator delete(v129);
        }
      }
    }
  }

  v44 = *(v15 + 216) && (*(v15 + 980) & 1) == 0 && *&a1[6] <= ((*&v21[2617] - *&v21[2616]) >> 2);
  Phase::SpatialModeler::RoomSimulationImpl::PrepareRayTrace(a3, &a1[v20], a1[7].i32[1], v44);
  *&v129 = a3;
  v106 = 0;
  v107 = 0;
  __p = 0;
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch * const*,Phase::Geometry::SceneQueryBatch * const*>(&__p, &v129, &v129 + 8, 1uLL);
  memset(buf, 0, 24);
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(buf, __p, v106, (v106 - __p) >> 3);
  if (__p)
  {
    v106 = __p;
    operator delete(__p);
  }

  memset(v103, 0, sizeof(v103));
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(v103, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
  v104 = 3;
  Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v117, v103);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v103);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v115);
}

void sub_23A4302C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a50);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a44);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::LateReverbSimulationImpl::RunClusterQuery(Phase::Logger *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v8 = 1344;
    if (*(*(a2 + 88) + 48))
    {
      v8 = 26640;
    }

    v9 = a1 + v8;
    if (*(a3 + 137808) == Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationBegin)
    {
      Instance = Phase::Logger::GetInstance(a1);
      v11 = os_signpost_id_generate(**(Instance + 224));
      *(v9 + 2966) = v11;
      v12 = Phase::Logger::GetInstance(v11);
      if (*(v12 + 1272) == 1)
      {
        v13 = **(Phase::Logger::GetInstance(v12) + 1264);
        v14 = v13;
        v15 = *(v9 + 2966);
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Phase_RoomSimulation_LRClusterQuery", "LateReverbClusterQuery", buf, 2u);
        }
      }
    }

    v16 = (*(a3 + 137808))(a1, a2, a3);
    if (*(a4 + 24) == 1)
    {
      v17 = Phase::Logger::GetInstance(v16);
      if (*(v17 + 1272) == 1)
      {
        v18 = **(Phase::Logger::GetInstance(v17) + 1264);
        v19 = v18;
        v20 = *(v9 + 2966);
        if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
        {
          *v21 = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v19, OS_SIGNPOST_INTERVAL_END, v20, "Phase_RoomSimulation_LRClusterQuery", &unk_23A5C28A2, v21, 2u);
        }
      }
    }
  }

  else
  {
    *a4 = 1;
    *(a4 + 8) = a1 + 72;
    *(a4 + 24) = 2;
  }
}

void Phase::SpatialModeler::LateReverbSimulationImpl::RunSpatialQuery(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v293 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v6 = os_signpost_id_generate(**(Instance + 224));
  v7 = Phase::Logger::GetInstance(v6);
  if (*(v7 + 232) == 1)
  {
    v8 = **(Phase::Logger::GetInstance(v7) + 224);
    v9 = v8;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Phase_LateReverb_Spatial_Query_Begin", "LateReverbSimulation: Spatial Query Begin", buf, 2u);
    }
  }

  v10 = Phase::Logger::GetInstance(v7);
  spid = os_signpost_id_generate(**(v10 + 224));
  v11 = Phase::Logger::GetInstance(spid);
  if (*(v11 + 1272) == 1)
  {
    v12 = **(Phase::Logger::GetInstance(v11) + 1264);
    v13 = v12;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v13, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Phase_RoomSimulation_LRSpatialQuery", "LateReverbSpatialQuery", buf, 2u);
    }
  }

  v14 = Phase::Logger::GetInstance(v11);
  v252 = os_signpost_id_generate(**(v14 + 432));
  v15 = Phase::Logger::GetInstance(v252);
  if (*(v15 + 1272) == 1)
  {
    v16 = **(Phase::Logger::GetInstance(v15) + 1264);
    v17 = v16;
    if (v252 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v252, "Phase_RoomSimulation_HandleResultsLateReverb", "LateReverbHandleResults", buf, 2u);
    }
  }

  v18 = Phase::SpatialModeler::RoomSimulationImpl::CheckSpatialQueryInput(a1, a2, v264);
  if (v265 == 2)
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a3, v264);
    goto LABEL_301;
  }

  v19 = a2[11];
  v20 = a2[12];
  v21 = *(v19 + 552);
  v255 = a2[8];
  if (*(v255 + 184) <= v21 || (v22 = *(v255 + 168) + 24 * v21, *(v22 + 20) != HIDWORD(v21)) || (v248 = *v22) == 0 || v248->i32[0] != 2)
  {
    v248 = 0;
  }

  if (*(v19 + 48))
  {
    v23 = 26720;
  }

  else
  {
    v23 = 1424;
  }

  v24 = 1;
  v263 = 1;
  if (*(v19 + 376) != 1)
  {
    v25 = **(Phase::Logger::GetInstance(v18) + 1264);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v19 + 376);
      *buf = 136315906;
      *&buf[4] = "LateReverbSimulationImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 874;
      *&buf[18] = 2048;
      *&buf[20] = v263;
      *&buf[28] = 2048;
      *&buf[30] = v26;
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d Cluster Key mismatch in HandleResultsLR: %llu vs. %llu", buf, 0x26u);
    }

    v24 = v263;
  }

  v27 = a1 + v23;
  *buf = &v263;
  v28 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + v23 + 19464), v24);
  v30 = 0;
  v31 = v28[3] == 0;
  v32 = *(v19 + 48);
  do
  {
    v33 = *(v27 + 22865 + v30);
    if (v33)
    {
      break;
    }

    v34 = v30++ == 18;
  }

  while (!v34);
  if (v33)
  {
    v35 = 1;
  }

  else
  {
    v35 = *(v27 + 168) ^ 1;
  }

  v36 = *(v27 + 132);
  v262[0] = 0;
  v262[1] = 0;
  v251 = *(a2[11] + 8);
  v37 = *(a1 + 16);
  if (*(v37 + 3192) && (v37 = Phase::Geometry::SystemDebugger::GetFromSystem(v37)) != 0)
  {
    v38 = *(v37 + 112);
    if (!v38)
    {
      goto LABEL_51;
    }

    v39 = *(v19 + 552);
    v40 = v37 + 112;
    do
    {
      v41 = *(v38 + 32);
      v42 = v41 >= v39;
      v43 = v41 < v39;
      if (v42)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * v43);
    }

    while (v38);
    if (v40 == v37 + 112)
    {
LABEL_51:
      v250 = 0;
    }

    else
    {
      if (*(v40 + 32) <= v39)
      {
        v44 = (v40 + 40);
      }

      else
      {
        v44 = 0;
      }

      v250 = v44;
    }

    v249 = 0;
    v247 = *(v37 + 80);
    v45 = *(v37 + 40);
  }

  else
  {
    v250 = 0;
    v247 = 0;
    v45 = 1;
    v249 = 1;
  }

  v246 = v45;
  v245 = (v27 + 19512);
  if (*(v27 + 19512) > 0.0)
  {
    v46 = *(v27 + 19016);
    if (v46)
    {
      if (*(v27 + 168) != 1)
      {
        goto LABEL_66;
      }

      v47 = 0;
      do
      {
        v48 = *(v27 + 22808 + v47);
        if (v48)
        {
          break;
        }

        v34 = v47++ == 18;
      }

      while (!v34);
      if (v48)
      {
        goto LABEL_66;
      }

      v49 = 0;
      do
      {
        v50 = *(v27 + 22827 + v49);
        if (v50)
        {
          break;
        }

        v34 = v49++ == 18;
      }

      while (!v34);
      if (v50)
      {
LABEL_66:
        v51 = (*(v27 + 19308) / (v46 - *(v27 + 64))) * 100.0;
        if (v51 > 3.0)
        {
          v52 = **(Phase::Logger::GetInstance(v37) + 1264);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "LateReverbSimulationImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 924;
            *&buf[18] = 2048;
            *&buf[20] = v51;
            _os_log_impl(&dword_23A302000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d High energy loss: %.1f%%.\n", buf, 0x1Cu);
          }
        }
      }
    }
  }

  Phase::SpatialModeler::RoomSimulationLogging::logInvalidIntersections(v27, v29);
  v54 = v35 | v36;
  v55 = v32 | v31;
  if (!v54 && !v55)
  {
    *buf = &v263;
    v56 = v250;
    v57 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v27 + 19464), v263)[3];
    if (v57)
    {
      v57 = Phase::SpatialModeler::CopyMetadata<float>(v57, v20);
    }

    v244 = 0;
    v58 = 0;
LABEL_199:
    if (*(v255 + 952) != *(a1 + 1288) || vabds_f32(*(v255 + 976), *(a1 + 1296)) >= 0.05)
    {
      goto LABEL_203;
    }

    v154 = 0;
    v155 = 0;
    goto LABEL_206;
  }

  if (*(v19 + 208))
  {
    v59 = **(Phase::Logger::GetInstance(v53) + 1264);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "LateReverbSimulationImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 937;
      _os_log_impl(&dword_23A302000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d LR Spatial Query is called with an individual source but must be called with a cluster key.", buf, 0x12u);
    }
  }

  v60 = *(v27 + 19432);
  if (!*&v60)
  {
    goto LABEL_95;
  }

  v61 = *(v19 + 376);
  v62 = vcnt_s8(v60);
  v62.i16[0] = vaddlv_u8(v62);
  if (v62.u32[0] > 1uLL)
  {
    v63 = *(v19 + 376);
    if (*&v60 <= v61)
    {
      v63 = v61 % *&v60;
    }
  }

  else
  {
    v63 = (*&v60 - 1) & v61;
  }

  v64 = *(*(v27 + 19424) + 8 * v63);
  if (!v64)
  {
    goto LABEL_95;
  }

  v65 = *v64;
  if (!*v64)
  {
    goto LABEL_95;
  }

  while (1)
  {
    v66 = v65[1];
    if (v66 == v61)
    {
      break;
    }

    if (v62.u32[0] > 1uLL)
    {
      if (v66 >= *&v60)
      {
        v66 %= *&v60;
      }
    }

    else
    {
      v66 &= *&v60 - 1;
    }

    if (v66 != v63)
    {
      goto LABEL_95;
    }

LABEL_94:
    v65 = *v65;
    if (!v65)
    {
      goto LABEL_95;
    }
  }

  if (v65[2] != v61)
  {
    goto LABEL_94;
  }

  if (!v65[8])
  {
LABEL_95:
    v244 = 0;
    goto LABEL_96;
  }

  Phase::SpatialModeler::RayTracerState::CopyDirectivityHistogram(v27, v65 + 8, buf);
  *v262 = *buf;
  v244 = (v65 + 3);
  v58 = *buf;
  if (!*buf)
  {
LABEL_96:
    if (*(v19 + 208))
    {
      v67 = **(Phase::Logger::GetInstance(v53) + 1264);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = *(v19 + 208);
        *buf = 136315650;
        *&buf[4] = "LateReverbSimulationImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 957;
        *&buf[18] = 2048;
        *&buf[20] = v68;
        v69 = "%25s:%-5d No histogram found for given sound source handle %llu.";
LABEL_101:
        _os_log_impl(&dword_23A302000, v67, OS_LOG_TYPE_ERROR, v69, buf, 0x1Cu);
      }
    }

    else
    {
      v67 = **(Phase::Logger::GetInstance(v53) + 1264);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v70 = *(v19 + 376);
        *buf = 136315650;
        *&buf[4] = "LateReverbSimulationImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 962;
        *&buf[18] = 2048;
        *&buf[20] = v70;
        v69 = "%25s:%-5d No histogram found for given cluster key %llu.";
        goto LABEL_101;
      }
    }

    v58 = 0;
    v71 = 1;
    goto LABEL_103;
  }

  v71 = 0;
LABEL_103:
  v272 = 0u;
  memset(v271, 0, sizeof(v271));
  v269 = 0u;
  v270 = 0u;
  v268 = 0u;
  memset(v267, 0, sizeof(v267));
  memset(buf, 0, sizeof(buf));
  v243 = v55;
  if (v246)
  {
    v72 = *(a1 + 48);
    if (v72)
    {
      v73 = (v27 + 19904);
      v74 = *v245;
      SumOfActiveRays = Phase::SpatialModeler::RayTracerState::getSumOfActiveRays(v27);
      v76 = 0.0;
      do
      {
        v77 = 3.4028e38;
        if (SumOfActiveRays > 0.0 && v74 > 0.0 && *v73 > 0.0)
        {
          v77 = sqrtf(((v74 * 0.163) / *v73) / (SumOfActiveRays * 12.566)) * 4.34;
        }

        if (v77 >= v76)
        {
          v76 = v77;
        }

        ++v73;
        --v72;
      }

      while (v72);
      if (v76 > 3.0 && v76 < 3.4028e38)
      {
        v79 = **(Phase::Logger::GetInstance(v53) + 1264);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          __dst[0].i32[0] = 136315650;
          *(__dst[0].i64 + 4) = "LateReverbSimulationImpl.mm";
          __dst[0].i16[6] = 1024;
          *(&__dst[0].i32[3] + 2) = 984;
          __dst[1].i16[1] = 2048;
          *(__dst[1].i64 + 4) = v76;
          _os_log_impl(&dword_23A302000, v79, OS_LOG_TYPE_DEBUG, "%25s:%-5d High ray tracing simulation uncertainty for total level: %.1fdB", __dst, 0x1Cu);
        }
      }
    }

    else
    {
      v76 = 0.0;
    }

    if (*(v255 + 980) != 1)
    {
      v80 = fminf(fmaxf((v76 + -0.5) / 2.5, 0.0), 1.0);
      v81 = 1344;
      if (*(a2[11] + 48))
      {
        v81 = 26640;
      }

      v82 = a1 + v81;
      *(a1 + v81 + 25136) = v58;
      SharedEnergyReFixedDb = Phase::SpatialModeler::RayTracerState::GetSharedEnergyReFixedDb(v27, &v263);
      v84 = expf(((SharedEnergyReFixedDb * -10.0) / 10.0) * 0.23026);
      v85 = (v80 + -1.0) + 1.0;
      if (*(v255 + 216))
      {
        v86 = (v27 + 21040);
        Phase::SpatialModeler::TailCorrection::executeTargetRt60(v82 + 25136, v27, v27 + 20800, v27 + 21040, (v27 + 20544), v85, v84);
        goto LABEL_129;
      }

      Phase::SpatialModeler::TailCorrection::execute(v82 + 25136, v27, v27 + 20800, (v27 + 20544), v85, v84);
    }

    v86 = (v27 + 19776);
LABEL_129:
    v87 = v86[5];
    v267[1] = v86[4];
    v268 = v87;
    v88 = v86[7];
    v269 = v86[6];
    v270 = v88;
    v89 = v86[1];
    *buf = *v86;
    *&buf[16] = v89;
    v90 = v86[3];
    *&buf[32] = v86[2];
    v267[0] = v90;
  }

  if (v71)
  {
    goto LABEL_171;
  }

  v91 = *(a1 + 48);
  memset(__dst, 0, sizeof(__dst));
  v288 = 0u;
  v289 = 0u;
  v290 = 0u;
  v291 = 0u;
  memset(v292, 0, 28);
  *&v292[28] = v91;
  v92 = Phase::Logger::GetInstance(v53);
  if (*(a1 + 48) == (*(v92 + 195) - *(v92 + 194)) >> 2)
  {
    v93 = Phase::Logger::GetInstance(v92);
    v94 = *(v93 + 194);
    v95 = Phase::Logger::GetInstance(v93);
    v96 = *(v95 + 195);
    if (v96 != v94)
    {
      v95 = memmove(__dst, v94, v96 - v94);
    }
  }

  else
  {
    if (*&v292[28])
    {
      bzero(__dst, 4 * *&v292[28]);
    }

    v97 = **(Phase::Logger::GetInstance(v92) + 1264);
    v98 = os_log_type_enabled(v97, OS_LOG_TYPE_ERROR);
    if (v98)
    {
      v99 = Phase::Logger::GetInstance(v98);
      v100 = (*(v99 + 1560) - *(v99 + 1552)) >> 2;
      v101 = *(a1 + 48);
      *v286 = 136315906;
      *&v286[4] = "LateReverbSimulationImpl.mm";
      *&v286[12] = 1024;
      *&v286[14] = 1054;
      *&v286[18] = 2048;
      *&v286[20] = v100;
      *&v286[28] = 2048;
      *&v286[30] = v101;
      _os_log_impl(&dword_23A302000, v97, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting phase_room_eq_lr: Its sub-band count of %zu does not match the modeler internal sub-band count of %zu", v286, 0x26u);
    }
  }

  if ((*(v255 + 216) | 2) != 3)
  {
    goto LABEL_155;
  }

  v102 = Phase::Logger::GetInstance(v95);
  if (*(v102 + 1520) != 1 || (*(v255 + 980) & 1) != 0)
  {
    goto LABEL_155;
  }

  v103 = *(a1 + 48);
  switch(v103)
  {
    case 31:
      *&v286[108] = *(v255 + 784);
      v106 = *(v255 + 756);
      *&v286[64] = *(v255 + 740);
      *&v286[80] = v106;
      *&v286[96] = *(v255 + 772);
      v107 = *(v255 + 692);
      *v286 = *(v255 + 676);
      *&v286[16] = v107;
      v108 = *(v255 + 724);
      *&v286[32] = *(v255 + 708);
      *&v286[48] = v108;
      *&v286[124] = 31;
      goto LABEL_151;
    case 10:
      v104 = *(v255 + 364);
      *v286 = *(v255 + 348);
      *&v286[16] = v104;
      v105 = *(v255 + 380);
      memset(&v286[40], 0, 80);
      *&v286[32] = v105;
      *&v286[120] = 0xA00000000;
LABEL_151:
      Phase::Subbands<float>::operator+=(__dst, v286);
      goto LABEL_155;
    case 3:
      *v286 = *(v255 + 244);
      *&v286[8] = *(v255 + 252);
      *&v286[124] = 3;
      memset(&v286[12], 0, 112);
      goto LABEL_151;
  }

  v109 = **(Phase::Logger::GetInstance(v102) + 1264);
  if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
  {
    v110 = *(a1 + 48);
    *v286 = 136315650;
    *&v286[4] = "LateReverbSimulationImpl.mm";
    *&v286[12] = 1024;
    *&v286[14] = 1083;
    *&v286[18] = 2048;
    *&v286[20] = v110;
    _os_log_impl(&dword_23A302000, v109, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported sub-band count: %zu\n", v286, 0x1Cu);
  }

LABEL_155:
  v111 = *(a1 + 48);
  if (v111)
  {
    v112 = 0;
    v113 = 0;
    v114 = *(v58 + 36);
    do
    {
      v115 = __exp10f(__dst[0].f32[v113] / 10.0);
      if ((v114 & 1) == 0)
      {
        v116 = *(v58 + 28);
        if (v116 > v113)
        {
          v117 = *(v58 + 24);
          if (v117)
          {
            v118 = (*(v58 + 8) + v112);
            v119 = 4 * v116;
            do
            {
              *v118 = v115 * *v118;
              v118 = (v118 + v119);
              --v117;
            }

            while (v117);
          }
        }
      }

      v113 = (v113 + 1);
      v112 += 4;
    }

    while (v111 > v113);
    v120 = 0;
    HIDWORD(v272) = v111;
    v121 = *(v58 + 36);
    LOBYTE(v55) = v243;
    do
    {
      v122 = 0.0;
      if ((v121 & 1) == 0)
      {
        v123 = *(v58 + 24);
        if (v123)
        {
          v124 = (*(v58 + 8) + 4 * v120);
          do
          {
            v122 = v122 + *v124;
            v124 += *(v58 + 28);
            --v123;
          }

          while (v123);
        }
      }

      *(v271 + v120++) = v122;
    }

    while (v120 != v111);
  }

  else
  {
    HIDWORD(v272) = 0;
  }

LABEL_171:
  IsNewIRPerceptuallyDifferent = Phase::SpatialModeler::LateReverbIRBuildControl::IsNewIRPerceptuallyDifferent(v27 + 22896, buf, 1);
  if ((v247 & 1) != 0 || (v126 = 0.0, *(v27 + 72) == 1))
  {
    v126 = *(v27 + 108);
  }

  v127 = *(v27 + 132) | IsNewIRPerceptuallyDifferent;
  if (v58)
  {
    v128 = *(v58 + 40);
  }

  else
  {
    v128 = 0.0;
  }

  v129 = *(v27 + 464);
  v131 = log10f(((1.0 / ((v128 * v129) * (v128 * v129))) * *(v27 + 104)) + 1.0e-15);
  v132 = *(a1 + 40);
  if (*(v27 + 135))
  {
    v133 = 0;
  }

  else
  {
    v133 = (v132 * v128);
  }

  if (v58 && v127 | v55)
  {
    v134 = *v245;
    v135 = *(v27 + 128);
    v136 = *(v27 + 112);
    v137 = Phase::Logger::GetInstance(v130);
    v139 = expf(((*(v137 + 1284) * 10.0) / 10.0) * 0.11513);
    v138 = v132;
    Phase::SpatialModeler::generateDirectionalMetadataLR(v58, v133, v20, v251, v134, v129, v138, fminf(fmaxf(v131 * 10.0, -144.0), -60.0), v135, v126, v136, v139);
    __dst[0].i64[0] = &v263;
    v140 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v27 + 19464), v263)[3];
    if (!v140)
    {
      operator new();
    }

    v57 = Phase::SpatialModeler::CopyMetadata<float>(v20, v140);
    if ((v247 & 1) != 0 || *(v27 + 72) == 1)
    {
      v141 = *(v20 + 48);
      if (v141)
      {
        v142 = 0;
        v143 = 0;
        v144 = *(v27 + 76);
        v145 = *(v27 + 108) - v144;
        v146 = *(a1 + 40);
        v147 = *(v20 + 56);
        v148 = (v146 * (v144 + v144)) + -1.0;
        do
        {
          v149 = *(v147 + 4 * v143) - v145;
          if (v149 >= 0.0 && v149 < *(v27 + 76))
          {
            v150 = cosf(((v146 * v149) * 6.2832) / v148);
            if (v251)
            {
              v151 = (1.0 - v150) * 0.5;
              v152 = (*(v20 + 104) + *(*(v20 + 104) + 8) * v142 + 16);
              v153 = v251;
              do
              {
                *v152 = v151 * *v152;
                ++v152;
                --v153;
              }

              while (v153);
            }
          }

          ++v143;
          v142 += 4;
        }

        while (v141 > v143);
      }
    }
  }

  else
  {
    __dst[0].i64[0] = &v263;
    v57 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v27 + 19464), v263)[3];
    if (v57)
    {
      v57 = Phase::SpatialModeler::CopyMetadata<float>(v57, v20);
    }
  }

  if (v127)
  {
    v56 = v250;
  }

  else
  {
    v56 = v250;
    if ((v243 & 1) == 0)
    {
      goto LABEL_199;
    }
  }

LABEL_203:
  v156 = Phase::SpatialModeler::RayTracerState::GetSharedEnergyReFixedDb(v27, &v263);
  v157 = *(v255 + 976);
  v158 = *(a1 + 1280);
  v160 = Phase::Logger::GetInstance(v159);
  v161 = expf(((v156 * -10.0) / 10.0) * 0.23026);
  v57 = Phase::SpatialModeler::SpaceBlending((v255 + 952), (v255 + 960), v158, 1, *(v160 + 1308), v20, *(a1 + 48), v157, -144.0, v161);
  v155 = v57;
  if (*(v27 + 170) == 1)
  {
    v162 = v248[7].i32[1];
    v163 = -v248[7].f32[0];
    *buf = vneg_f32(v248[6]);
    *&buf[8] = v163;
    *&buf[12] = v162;
    Phase::SpatialModeler::RotateMetadata<float>(v20, buf);
  }

  v154 = 1;
LABEL_206:
  v164 = v249;
  if (!v56)
  {
    v164 = 1;
  }

  if ((v164 & 1) == 0 && v58 && (*(v19 + 48) & 1) == 0)
  {
    if (v56[9])
    {
      *&buf[40] = 0;
      *&v267[0] = 0;
      *(&v267[1] + 1) = 0;
      v268 = 0uLL;
      *(&v269 + 1) = 0;
      v270 = 0uLL;
      memset(v271 + 8, 0, 96);
      v272 = 0u;
      v273 = 0u;
      v274 = 0u;
      v275 = 0u;
      v276 = 0u;
      v277 = 0u;
      v284 = 0u;
      v285 = 0u;
      v282 = 0u;
      v283 = 0u;
      v280 = 0u;
      v281 = 0u;
      *buf = 0;
      *&buf[8] = 0;
      v165 = *(v27 + 22576);
      *&buf[32] = 0;
      *&buf[16] = v165;
      *(&v267[0] + 1) = *(v58 + 28);
      *&v267[1] = *(v58 + 24);
      __dst[0].i32[0] = 0;
      std::vector<float>::assign(&v267[1] + 1, LODWORD(v267[1]) * DWORD2(v267[0]), __dst, 0);
      v166 = *(&v267[0] + 1);
      if (*(&v267[0] + 1))
      {
        LODWORD(v167) = 0;
        v168 = 0;
        v169 = v267[1];
        do
        {
          if (v169)
          {
            LODWORD(v170) = 0;
            v171 = *(v58 + 28);
            v172 = v167;
            do
            {
              v173 = 0;
              if (v171 > v167 && *(v58 + 24) > v170)
              {
                v173 = *(*(v58 + 8) + 4 * v172);
              }

              *(*(&v169 + 1) + 4 * (v168 + v170)) = v173;
              v170 = (v170 + 1);
              v172 += v171;
            }

            while (v169 > v170);
            v168 += v170;
          }

          v167 = (v167 + 1);
        }

        while (v166 > v167);
      }

      std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator()((v56 + 6), buf);
      Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::~RoomSimulationDebugView(buf);
    }

    if (v56[5])
    {
      *(v27 + 23216) = *(v27 + 22576);
      v174 = *(v27 + 23240);
      v175 = *(v27 + 23232);
      *&buf[40] = 0;
      *&v267[0] = 0;
      *&buf[32] = 0;
      v176 = 0x6DB6DB6DB6DB6DB7 * ((v174 - v175) >> 2);
      *(v27 + 23224) = v176;
      v177 = *(v27 + 23216);
      *buf = *(v27 + 23200);
      *&buf[16] = v177;
      if (v174 != v175)
      {
        std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection>::__vallocate[abi:ne200100](&buf[32], v176);
      }

      v178 = v155;
      *(v267 + 8) = *(v27 + 23256);
      v268 = 0uLL;
      *(&v267[1] + 1) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v267[1] + 8, *(v27 + 23272), *(v27 + 23280), (*(v27 + 23280) - *(v27 + 23272)) >> 2);
      v269 = *(v27 + 23296);
      v270 = 0uLL;
      v179 = *(v27 + 23304);
      v180 = *(v27 + 23312);
      __dst[0].i64[0] = &v269 + 8;
      __dst[0].i8[8] = 0;
      if (v180 != v179)
      {
        std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::__vallocate[abi:ne200100](&v269 + 8, 0xCCCCCCCCCCCCCCCDLL * ((v180 - v179) >> 3));
      }

      Phase::SpatialModeler::RoomSimulationDebugger::DebugDirectionalMetadata::DebugDirectionalMetadata(v271, (v27 + 23328));
      Phase::SpatialModeler::RoomSimulationDebugger::DebugDirectionalMetadata::DebugDirectionalMetadata((&v271[6] + 8), (v27 + 23432));
      v155 = v178;
      v278 = *(v27 + 23536);
      v279 = *(v27 + 23544);
      *&v281 = 0;
      v280 = 0uLL;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v280, *(v27 + 23552), *(v27 + 23560), (*(v27 + 23560) - *(v27 + 23552)) >> 2);
      v282 = 0uLL;
      *(&v281 + 1) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v281 + 8, *(v27 + 23576), *(v27 + 23584), (*(v27 + 23584) - *(v27 + 23576)) >> 2);
      v283 = 0uLL;
      *&v284 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v283, *(v27 + 23600), *(v27 + 23608), (*(v27 + 23608) - *(v27 + 23600)) >> 2);
      v285 = 0uLL;
      *(&v284 + 1) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v284 + 8, *(v27 + 23624), *(v27 + 23632), (*(v27 + 23632) - *(v27 + 23624)) >> 2);
      std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator()((v56 + 2), buf);
      Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::~RoomSimulationDebugView(buf);
    }

    v181 = v154 ^ 1;
    if (!v56[21])
    {
      v181 = 1;
    }

    if ((v181 & 1) == 0)
    {
      *&buf[40] = 0;
      *&v267[0] = 0;
      *(&v267[1] + 1) = 0;
      v268 = 0uLL;
      *(&v269 + 1) = 0;
      v270 = 0uLL;
      memset(v271 + 8, 0, 96);
      v272 = 0u;
      v273 = 0u;
      v274 = 0u;
      v275 = 0u;
      v276 = 0u;
      v277 = 0u;
      v284 = 0u;
      v285 = 0u;
      v282 = 0u;
      v283 = 0u;
      v280 = 0u;
      v281 = 0u;
      memset(buf, 0, 24);
      *&buf[32] = 0;
      v182 = *(v20 + 48);
      __dst[0].i64[0] = 0;
      __dst[0].i32[2] = 0;
      std::vector<Phase::Vector<float,3ul>>::assign(&v272, v182, __dst);
      __dst[0].i32[0] = 0;
      std::vector<float>::assign(&v273 + 1, v182, __dst, v183);
      *v286 = 0;
      std::vector<float>::vector[abi:ne200100](__dst, v251);
      std::vector<std::vector<float>>::assign(&v275, v182, __dst);
      if (__dst[0].i64[0])
      {
        __dst[0].i64[1] = __dst[0].i64[0];
        operator delete(__dst[0].i64[0]);
      }

      __dst[0].i8[0] = 0;
      std::vector<unsigned char>::assign(&v276 + 1, v182, __dst);
      *(&v271[6] + 1) = v182;
      *&buf[16] = v248[1];
      if (v182)
      {
        v184 = 0;
        for (i = 0; i != v182; ++i)
        {
          v186 = (*(v20 + 8) + 12 * i);
          v187 = (v272 + 12 * i);
          *v187 = *v186;
          v187[1] = v186[1];
          v187[2] = v186[2];
          *(*(&v273 + 1) + 4 * i) = *(*(v20 + 56) + 4 * i);
          *(*(&v276 + 1) + i) = *(*(v20 + 144) + i);
          if (v251)
          {
            v188 = *(v275 + 24 * i);
            v189 = (*(v20 + 104) + *(*(v20 + 104) + 8) * v184 + 16);
            v190 = v251;
            do
            {
              v191 = *v189++;
              *v188++ = v191;
              --v190;
            }

            while (v190);
          }

          v184 += 4;
        }
      }

      std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator()((v56 + 18), buf);
      Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::~RoomSimulationDebugView(buf);
    }
  }

  if (v154)
  {
    *(v20 + 4) = 1;
    v192 = Phase::SpatialModeler::RayTracerState::GetSharedEnergyReFixedDb(v27, &v263);
    v193 = expf(((v192 * 10.0) / 10.0) * 0.23026);
    v194 = v193;
    v195 = v262[0];
    if (*(a1 + 1304))
    {
      if (v262[0])
      {
        *&v270 = 0;
        v268 = 0u;
        v269 = 0u;
        memset(v267, 0, sizeof(v267));
        memset(buf, 0, sizeof(buf));
        *(&v270 + 1) = vrev64_s32(*(v27 + 19508));
        v196 = Phase::Logger::GetInstance(v57);
        v197 = expf(((*(v196 + 1284) * 10.0) / 10.0) * 0.23026);
        if (*(v255 + 980))
        {
          v198 = *(v20 + 104);
          if (v198)
          {
            v199 = *(v198 + 8);
          }

          else
          {
            v199 = 0;
          }

          *v286 = 0;
          std::vector<float>::vector[abi:ne200100](__dst, v199);
          Phase::SpatialModeler::GetRT60EstimateFromDirectionalMetadata(v20, __dst, -3.0, -15.0);
          Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationHandleResultsLateReverberation(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &)::$_0::operator()<unsigned long,std::vector<float>,Phase::PackedSubbands<float,10ul>>(((__dst[0].i64[1] - __dst[0].i64[0]) >> 2), __dst[0].i64[0], __dst[0].i64[1], buf);
          if (__dst[0].i64[0])
          {
            __dst[0].i64[1] = __dst[0].i64[0];
            operator delete(__dst[0].i64[0]);
          }
        }

        else
        {
          v200 = 21040;
          if (!*(v255 + 216))
          {
            v200 = 19776;
          }

          Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationHandleResultsLateReverberation(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &)::$_0::operator()<unsigned long,std::array<float,31ul>,Phase::PackedSubbands<float,10ul>>(*(a1 + 48), v27 + v200, buf);
        }

        if (v155)
        {
          memset(&v286[8], 0, 40);
          Phase::SpatialModeler::GetRoomDataForSpaceBlendTarget((v255 + 952), v286);
          *(&v270 + 1) = vmla_n_f32(vmul_n_f32(*v286, *(v255 + 976)), vrev64_s32(*(v27 + 19508)), 1.0 - *(v255 + 976));
          v201 = buf;
          for (j = 2; j != 12; ++j)
          {
            *v201 = (*(v255 + 976) * *&v286[4 * j]) + ((1.0 - *(v255 + 976)) * *v201);
            v201 += 4;
          }

          v259 = 0;
          v260 = 0;
          v261 = 0;
          if (*(a1 + 48))
          {
            v203 = 0;
            do
            {
              __dst[0].f32[0] = v194 * Phase::SpatialModeler::GetTotalEnergyInBand<float>(v20, v203);
              std::vector<float>::push_back[abi:ne200100](&v259, __dst);
              ++v203;
              v204 = *(a1 + 48);
            }

            while (v204 > v203);
            v205 = v259;
            v206 = v260;
          }

          else
          {
            v206 = 0;
            v205 = 0;
            v204 = 0;
          }

          Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationHandleResultsLateReverberation(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &)::$_0::operator()<unsigned long,std::vector<float>,Phase::PackedSubbands<float,10ul>>(v204, v205, v206, &v268);
          __p = 0;
          v257 = 0;
          v258 = 0;
          Phase::SpatialModeler::RayTracerState::calculateTotalSpecularEarlyEnergy(v27, __dst);
          v218 = *(v255 + 976);
          v220 = Phase::Logger::GetInstance(v219);
          Phase::SpatialModeler::EstimateEarlyEnergy(__dst, &__p, *(v220 + 1308), *(a1 + 1280), *(v255 + 952), v218);
          v221 = __p;
          v222 = v257;
          if (__p == v257)
          {
            v225 = v257;
            v224 = __p;
          }

          else
          {
            v223 = __p;
            do
            {
              *v223 = v197 * *v223;
              ++v223;
            }

            while (v223 != v222);
            v224 = __p;
            v225 = v257;
          }

          Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationHandleResultsLateReverberation(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &)::$_0::operator()<unsigned long,std::vector<float>,Phase::PackedSubbands<float,10ul>>(((v222 - v221) >> 2), v224, v225, &buf[40]);
          if (__p)
          {
            v257 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v259 = 0;
          v260 = 0;
          v261 = 0;
          if (*(a1 + 48))
          {
            v207 = 0;
            do
            {
              v208 = 0.0;
              if ((*(v195 + 36) & 1) == 0)
              {
                v209 = *(v195 + 6);
                if (v209)
                {
                  v210 = (*(v195 + 1) + 4 * v207);
                  do
                  {
                    v208 = v208 + *v210;
                    v210 += *(v195 + 7);
                    --v209;
                  }

                  while (v209);
                }
              }

              __dst[0].f32[0] = v194 * (v197 * v208);
              std::vector<float>::push_back[abi:ne200100](&v259, __dst);
              ++v207;
              v211 = *(a1 + 48);
            }

            while (v211 > v207);
            v212 = v259;
            v213 = v260;
          }

          else
          {
            v213 = 0;
            v212 = 0;
            v211 = 0;
          }

          Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationHandleResultsLateReverberation(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &)::$_0::operator()<unsigned long,std::vector<float>,Phase::PackedSubbands<float,10ul>>(v211, v212, v213, &v268);
          Phase::SpatialModeler::RayTracerState::calculateTotalSpecularEarlyEnergy(v27, v286);
          v214 = *&v286[124];
          memset(__dst, 0, sizeof(__dst));
          v288 = 0u;
          v289 = 0u;
          v290 = 0u;
          v291 = 0u;
          memset(v292, 0, 28);
          *&v292[28] = *&v286[124];
          if (*&v286[124])
          {
            v215 = __dst;
            v216 = v286;
            do
            {
              v217 = *v216++;
              v215->f32[0] = v197 * v217;
              v215 = (v215 + 4);
              --v214;
            }

            while (v214);
          }

          Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationHandleResultsLateReverberation(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &)::$_0::operator()<unsigned long,std::array<float,31ul>,Phase::PackedSubbands<float,10ul>>(*(a1 + 48), __dst, &buf[40]);
        }

        if (v259)
        {
          v260 = v259;
          operator delete(v259);
        }

        v226 = *(a1 + 1304);
        v290 = v267[1];
        v291 = v268;
        *v292 = v269;
        *&v292[16] = v270;
        __dst[0] = *buf;
        __dst[1] = *&buf[16];
        v288 = *&buf[32];
        v289 = v267[0];
        v227 = **(v226 + 8);
        v259 = 0;
        LOBYTE(__p) = 1;
        v228 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v227, 144, &v259, &__p);
        if (!v228)
        {
          v239 = Phase::Logger::GetInstance(0);
          Phase::Logger::DumpTailspinWithThrottleAsync(v239, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
          v240 = **(v227 + 48);
          v241 = v240;
          if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
          {
            *v286 = 136315394;
            *&v286[4] = "CommandQueue.hpp";
            *&v286[12] = 1024;
            *&v286[14] = 100;
            _os_log_impl(&dword_23A302000, v240, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", v286, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        }

        if (__p == 1)
        {
          v229 = **(v227 + 48);
          v230 = v229;
          if (os_log_type_enabled(v229, OS_LOG_TYPE_DEBUG))
          {
            *v286 = 136315906;
            *&v286[4] = "CommandQueue.hpp";
            *&v286[12] = 1024;
            *&v286[14] = 89;
            *&v286[18] = 2048;
            *&v286[20] = v259;
            *&v286[28] = 2048;
            *&v286[30] = 144;
            _os_log_impl(&dword_23A302000, v229, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", v286, 0x26u);
          }
        }

        *v228 = &unk_284D358F8;
        *(v228 + 8) = v226;
        v231 = __dst[0];
        *(v228 + 80) = v290;
        *(v228 + 96) = v291;
        *(v228 + 112) = *v292;
        *(v228 + 128) = *&v292[16];
        *(v228 + 16) = v231;
        *(v228 + 32) = __dst[1];
        *(v228 + 48) = v288;
        *(v228 + 64) = v289;
        Phase::LockFreeQueueSPSC::CommitBytes(v227, 144);
        atomic_store(0, (v227 + 40));
        v57 = Phase::SpatialModeler::RoomSimulationLogging::logRoomStatisticsAtIRBuild(v27, v244, buf, *(v255 + 980), v155, v194);
      }
    }

    else if (v262[0])
    {
      v57 = Phase::SpatialModeler::RoomSimulationLogging::logRoomStatisticsAtIRBuild(v27, v262[0], *(v255 + 980), v193);
    }

    *(a1 + 1296) = *(v255 + 976);
    *(a1 + 1288) = *(v255 + 952);
    ++*(v27 + 22132);
  }

  else
  {
    *(v20 + 4) = 0;
  }

  if (v262[0])
  {
    Phase::SpatialModeler::RayTracerState::FreeDirectivityHistogram(v27, v262);
  }

  *&buf[24] = 1;
  v232 = Phase::Logger::GetInstance(v57);
  if (*(v232 + 1272) == 1)
  {
    v233 = **(Phase::Logger::GetInstance(v232) + 1264);
    v234 = v233;
    if (v252 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v233))
    {
      __dst[0].i16[0] = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v234, OS_SIGNPOST_INTERVAL_END, v252, "Phase_RoomSimulation_HandleResultsLateReverb", &unk_23A5C28A2, __dst, 2u);
    }
  }

  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a3, buf);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
  if (v262[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v262[1]);
  }

LABEL_301:
  v235 = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v264);
  v236 = Phase::Logger::GetInstance(v235);
  if (*(v236 + 1272) == 1)
  {
    v237 = **(Phase::Logger::GetInstance(v236) + 1264);
    v238 = v237;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v237))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v238, OS_SIGNPOST_INTERVAL_END, spid, "Phase_RoomSimulation_LRSpatialQuery", &unk_23A5C28A2, buf, 2u);
    }
  }
}

void sub_23A4324BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(Phase::Logger *a1, os_signpost_id_t **a2, uint64_t a3)
{
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1272) == 1)
  {
    v7 = **(Phase::Logger::GetInstance(Instance) + 1264);
    v8 = v7;
    v9 = **a2;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Phase_RoomSimulation_LateReverbBegin", &unk_23A5C28A2, v11, 2u);
    }
  }

  return std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, a3);
}

uint64_t Phase::SpatialModeler::LateReverbSimulationImpl::ClusterLateReverb(uint64_t a1, Phase::Logger *a2, void *a3, uint64_t a4)
{
  v120 = *MEMORY[0x277D85DE8];
  Phase::SpatialModeler::RoomSimulationImpl::CheckClusterQueryInput(a2, a3, v100);
  if (v101 == 2)
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, v100);
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v100);
  }

  v95 = a3;
  v96 = a1;
  v8 = a3[8];
  v10 = a3[11];
  v9 = a3[12];
  if (*(v10 + 48))
  {
    v11 = 26720;
  }

  else
  {
    v11 = 1424;
  }

  v12 = operator new(0x150uLL, 0x10uLL);
  v13 = v12;
  v14 = 0;
  v15 = (a2 + v11);
  *(v12 + 8) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 36) = 1065353216;
  *(v12 + 44) = 0;
  *(v12 + 13) = 1065353216;
  do
  {
    v16 = &v12[v14];
    *(v16 + 14) = 0;
    *(v16 + 8) = 0;
    v14 += 16;
  }

  while (v14 != 128);
  v94 = a4;
  v97 = a2;
  *(v12 + 23) = 0;
  memset(v111, 0, sizeof(v111));
  Phase::Subbands<float>::Subbands((v12 + 192), v111, 3);
  v13[320] = 0;
  *&v118 = &unk_284D33868;
  BYTE8(v118) = 0;
  v119 = &v118;
  *v111 = v13;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v111[8], &v118);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v118);
  v17 = *v111;
  *v111 = 0;
  *buf = v17;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v111[8]);
  *(&v105 + 1) = 1;
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](v111);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v111[8]);
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100](v9 + 1, buf);
  v9[6] = *(&v105 + 1);
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
  v18 = operator new(1uLL, 1uLL);
  *&v118 = &unk_284D33940;
  BYTE8(v118) = 0;
  v119 = &v118;
  *v111 = v18;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v111[8], &v118);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v118);
  v19 = *v111;
  *v111 = 0;
  *buf = v19;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v111[8]);
  *(&v105 + 1) = 1;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](v111);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v111[8]);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](v9 + 7, buf);
  v9[12] = *(&v105 + 1);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
  v99 = 1;
  v20 = v9[1];
  *(v20 + 184) = 1;
  *(v20 + 320) = 1;
  *v9[7] = 1;
  *v20 = xmmword_23A555530;
  if (*(v10 + 96))
  {
    v21 = *(v10 + 56);
    if (*v21)
    {
      *v20 = *v21;
    }
  }

  *buf = &v99;
  v22 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v15[2428], &v99);
  *(v22 + 11) = *v9[1];
  MaximumEnergy = Phase::SpatialModeler::GetMaximumEnergy(v15, (v10 + 152), v23);
  v26 = __exp10f((v15[18].f32[1] - v15[18].f32[0]) / 10.0);
  v27 = v15[2366];
  v28 = *&v15[2367] - *&v27;
  if (v28)
  {
    v29 = 0x6DB6DB6DB6DB6DB7 * (v28 >> 3);
    if (v29 <= 1)
    {
      v29 = 1;
    }

    v30 = 48;
    while (1)
    {
      v31 = *(*&v27 + v30);
      if (*(v8 + 184) <= v31)
      {
        break;
      }

      v32 = *(v8 + 168) + 24 * v31;
      if (*(v32 + 20) != HIDWORD(v31) || !*v32 || **v32 != 3)
      {
        break;
      }

      v30 += 56;
      if (!--v29)
      {
        goto LABEL_20;
      }
    }

    v35 = **(Phase::Logger::GetInstance(v25) + 1264);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = *(*&v15[2366] + v30);
      *buf = 136315650;
      *&buf[4] = "LateReverbSimulationImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 579;
      *&buf[18] = 2048;
      *&buf[20] = v36;
      _os_log_impl(&dword_23A302000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Source from persisting state not found in the Geo Layer (Handle %llu).", buf, 0x1Cu);
    }

    *v96 = 6;
    *(v96 + 8) = a2 + 72;
    *(v96 + 24) = 2;
  }

  else
  {
LABEL_20:
    v33 = MaximumEnergy * v26;
    if (v22[8])
    {
      memset(buf, 0, sizeof(buf));
      LODWORD(v105) = 1065353216;
      *(&v105 + 1) = 0;
      *&v106 = 0;
      Phase::SpatialModeler::ConstructSharedHistogram(a2, v10, v33, v8, v15, buf);
      Phase::SpatialModeler::AggregateSharedHistogram(v15, v99, buf, v34);
      Phase::SpatialModeler::RayTracerState::FreeDirectivityHistogram(v15, &v105 + 1);
      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v106);
      }

      std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(buf);
    }

    else
    {
      Phase::SpatialModeler::ConstructSharedHistogram(a2, v10, v33, v8, v15, (v22 + 3));
    }

    SharedEnergyReFixedDb = Phase::SpatialModeler::RayTracerState::GetSharedEnergyReFixedDb(v15, &v99);
    *&v38 = expf(((SharedEnergyReFixedDb * -10.0) / 10.0) * 0.23026);
    Phase::SpatialModeler::DirectivityHistogram::operator*=(v22[8], v38);
    v39 = *(v10 + 144);
    v102 = 8;
    SoundSourceHash = v39;
    *&v118 = &SoundSourceHash;
    *(&v118 + 1) = &v102;
    Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput>(unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(v39, &v118, v111);
    v40 = *v111;
    *v111 = 0;
    *buf = v40;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v111[8]);
    *(&v105 + 1) = v39;
    std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](v111);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v111[8]);
    std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::operator=[abi:ne200100](v9 + 13, buf);
    v9[18] = *(&v105 + 1);
    std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
    if (*(v10 + 144))
    {
      v41 = 0;
      v42 = -3.4028e38;
      v43 = 16;
      while (1)
      {
        v44 = *(v10 + 104);
        v45 = v44 + 304 * v41;
        v46 = (v45 + 144);
        SoundSourceHash = Phase::SpatialModeler::GetSoundSourceHash(*(v45 + 144), *(v10 + 152), v45 + 160);
        *buf = &SoundSourceHash;
        v47 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v22 + 3, &SoundSourceHash);
        v48 = vsub_f32(v15[2849], v47[3]);
        v49 = sqrtf(vaddv_f32(vmul_f32(v48, v48)) + ((v15[2850].f32[0] - v47[4].f32[0]) * (v15[2850].f32[0] - v47[4].f32[0])));
        if (v49 <= 1000000.0)
        {
          v50 = v49;
        }

        else
        {
          v50 = 1000000.0;
        }

        v51 = *(v45 + 140);
        if (v51)
        {
          v52 = (v44 + v43);
          do
          {
            v53 = *v52++;
            v54 = v53;
            if (v42 < v53)
            {
              v42 = v54;
            }

            --v51;
          }

          while (v51);
        }

        *(v9[13] + 16 * v41) = 0;
        Phase::SpatialModeler::RayTracerState::GetSourceListenerResult(v15, v46, (v10 + 152), v45 + 160, buf);
        v55 = v9[13];
        v56 = v55 + 16 * v41;
        *(v56 + 8) = 0xC7EFFFFFE0000000;
        v57 = (v56 + 8);
        if (*&buf[16])
        {
          if (*(v22 + 20) <= 1.1755e-38)
          {
            v66 = 2.351e-38;
          }

          else
          {
            v58 = 0.0;
            if ((*(*&buf[16] + 36) & 1) == 0)
            {
              v67 = (*(*&buf[16] + 28) * *(*&buf[16] + 24));
              if (v67)
              {
                v68 = (v67 + 3) & 0x1FFFFFFFCLL;
                v69 = vdupq_n_s64(v67 - 1);
                v70 = (*(*&buf[16] + 8) + 8);
                v71 = xmmword_23A554B70;
                v72 = xmmword_23A554B60;
                v73 = xmmword_23A555020;
                do
                {
                  v74 = v73;
                  v75 = vcgeq_u64(v69, v71);
                  v76 = vmovn_s64(v75);
                  *v73.f32 = vuzp1_s16(v76, *v69.i8);
                  if (v73.i8[0])
                  {
                    v73.i32[0] = *(v70 - 2);
                  }

                  if (vuzp1_s16(v76, *&v69).i8[2])
                  {
                    v73.i32[1] = *(v70 - 1);
                  }

                  v77 = vcgeq_u64(v69, v72);
                  if (vuzp1_s16(*&v69, vmovn_s64(*&v77)).i32[1])
                  {
                    v73.i64[1] = *v70;
                  }

                  v73 = vaddq_f32(v74, v73);
                  v78 = vdupq_n_s64(4uLL);
                  v72 = vaddq_s64(v72, v78);
                  v71 = vaddq_s64(v71, v78);
                  v70 += 2;
                  v68 -= 4;
                }

                while (v68);
                v79 = vbslq_s8(vuzp1q_s32(v75, v77), v73, v74);
                v58 = (vaddv_f32(*v79.i8) + *&v79.i32[2]) + *&v79.i32[3];
              }
            }

            v66 = (v58 / v15[60].f32[0]) + 1.1755e-38;
          }

          v80 = (fmaxf(v50, 1.0) * -0.5) + -6.0;
          v65 = log10f(v66) * 10.0;
          if ((v65 - SharedEnergyReFixedDb) >= v80)
          {
            v83 = v15[18].f32[0];
            if ((v65 - SharedEnergyReFixedDb) > v83)
            {
              v65 = SharedEnergyReFixedDb + v83;
            }

            *v57 = v65;
          }

          else
          {
            *v111 = &SoundSourceHash;
            v81 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v22 + 3, &SoundSourceHash);
            if (v15[19].i8[4] != 1 || ((v65 = v81[9], (v65 - SharedEnergyReFixedDb) >= v80) ? (v82 = (v65 - SharedEnergyReFixedDb) <= v15[18].f32[0]) : (v82 = 0), !v82))
            {
              v65 = SharedEnergyReFixedDb + v80;
            }

            v55 = v9[13];
            *(v55 + 16 * v41 + 8) = v65;
          }
        }

        else
        {
          v59 = *v46;
          if (*(v8 + 184) <= *v46 || (v60 = *(v8 + 168) + 24 * v59, *(v60 + 20) != HIDWORD(v59)) || (v61 = *v60) == 0 || v61->i32[0] != 3)
          {
            *v96 = 6;
            *(v96 + 8) = v97 + 72;
            *(v96 + 24) = 2;
            if (*&buf[24])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[24]);
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }

            return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v100);
          }

          v102 = 0;
          v118 = 0uLL;
          v98 = -3.4028e38;
          Phase::SpatialModeler::getClosestLRClusterToSourceInClusteringResults(v61, v15, &v102, &v118, &v98);
          v63 = **(Phase::Logger::GetInstance(v62) + 1264);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            *v111 = 136315906;
            *&v111[4] = "LateReverbSimulationImpl.mm";
            v112 = 1024;
            v113 = 708;
            v114 = 2048;
            v115 = SoundSourceHash;
            v116 = 2048;
            v117 = v98;
            _os_log_impl(&dword_23A302000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d ClusterLateReverb Warning: no histogram for for source %llu setting send to %f", v111, 0x26u);
          }

          v55 = v9[13];
          v64 = v55 + 16 * v41;
          *(v64 + 8) = v98;
          v65 = *(v64 + 8);
        }

        if (*(v8 + 952))
        {
          v84 = v65 + (*(v8 + 976) * (SharedEnergyReFixedDb - v65));
        }

        else
        {
          v84 = v65;
        }

        *(v55 + 16 * v41 + 8) = v84;
        *v111 = &SoundSourceHash;
        *(std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v22 + 3, &SoundSourceHash) + 9) = v84;
        if (*&buf[24])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[24]);
        }

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        ++v41;
        v43 += 304;
        if (v41 >= *(v10 + 144))
        {
          goto LABEL_82;
        }
      }
    }

    v42 = -3.4028e38;
LABEL_82:
    *v111 = v42;
    *&v111[4] = v42;
    *&v111[8] = v42;
    Phase::Subbands<float>::Subbands(buf, v111, 3);
    v85 = v9[1];
    v86 = v108;
    v87 = v109;
    v85[16] = v107;
    v85[17] = v86;
    v88 = v110;
    v85[18] = v87;
    v85[19] = v88;
    v89 = *&buf[16];
    v85[12] = *buf;
    v85[13] = v89;
    v90 = v106;
    v85[14] = v105;
    v85[15] = v90;
    if ((*(v10 + 48) & 1) == 0)
    {
      (*(*v97 + 96))(v97, v15);
      std::string::basic_string[abi:ne200100]<0>(buf, "ClusterLateReverb - after StoreRayTracerStateToCache");
      if ((buf[23] & 0x80u) == 0)
      {
        v91 = buf;
      }

      else
      {
        v91 = *buf;
      }

      if ((buf[23] & 0x80u) == 0)
      {
        v92 = buf[23];
      }

      else
      {
        v92 = *&buf[8];
      }

      Phase::SpatialModeler::RoomSimulationLogging::CheckLRClusterResultAndSourceListenerResultCoherence(v15, v91, v92);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryCleanupCommon(v97, v95, v94);
    *(v96 + 24) = 1;
  }

  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v100);
}

void sub_23A433344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationFinish@<X0>(float32x2_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, Phase::Logger *a4@<X8>)
{
  v77 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v9 = os_signpost_id_generate(**(Instance + 432));
  v67 = v9;
  v10 = Phase::Logger::GetInstance(v9);
  if (*(v10 + 1272) == 1)
  {
    v11 = **(Phase::Logger::GetInstance(v10) + 1264);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Phase_RoomSimulation_LateReverbFinish", "LateReverbFinish", buf, 2u);
    }
  }

  v66 = &v67;
  Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationFinishCommonPreProcess(a1, a2, a3, v64);
  if (v65 == 2)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v63, v64);
    v13 = v63;
    Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationFinish(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v66, v63);
    goto LABEL_41;
  }

  v14 = (a3 + 131768);
  v15 = a2[8];
  v16 = 178;
  if (*(a2[11] + 48))
  {
    v16 = 3340;
  }

  v17 = &a1[v16];
  if (*(a2[11] + 48))
  {
    Phase::SpatialModeler::RayTracerState::operator=(&a1[v16], a3 + 112752);
LABEL_37:
    if (*(v15 + 216))
    {
      v57 = *(v15 + 980) ^ 1;
    }

    else
    {
      v57 = 0;
    }

    *&v58 = Phase::SpatialModeler::RayTracerState::UpdateLaunchedRayHistory(v17, *v14);
    Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationFinishHandleMatchReverbTimes((v57 & 1), (a3 + 112752), v17, v59, v58);
    v17[3130].i8[1] = 0;
    Phase::SpatialModeler::LateReverbSimulationImpl::ClusterLateReverb(v61, a1, a2, a3);
    v13 = v61;
    Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationFinish(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v66, v61);
    goto LABEL_41;
  }

  if (v17[3130].i8[1])
  {
LABEL_32:
    v39 = a1[2];
    Phase::SpatialModeler::RoomSimulationLogging::logRoomStatistics(v17, a1[4].i32[0], "RoomSimulationFinish after aggregation", 38);
    Phase::SpatialModeler::RoomSimulationDebugger::ExecuteRoomDataCallbacks(v17, v39, v15, v40);
    *v17[2692].f32 = *v17[2638].f32;
    *v17[2694].f32 = *v17[2640].f32;
    *v17[2696].f32 = *v17[2642].f32;
    *v17[2698].f32 = *v17[2644].f32;
    *v17[2684].f32 = *v17[2630].f32;
    *v17[2686].f32 = *v17[2632].f32;
    *v17[2688].f32 = *v17[2634].f32;
    *v17[2690].f32 = *v17[2636].f32;
    v41 = *v17[2504].f32;
    v42 = *v17[2506].f32;
    v43 = *v17[2508].f32;
    *v17[2738].f32 = *v17[2510].f32;
    *v17[2736].f32 = v43;
    *v17[2734].f32 = v42;
    *v17[2732].f32 = v41;
    v44 = *v17[2512].f32;
    v45 = *v17[2514].f32;
    v46 = *v17[2516].f32;
    *v17[2746].f32 = *v17[2518].f32;
    *v17[2744].f32 = v46;
    *v17[2742].f32 = v45;
    *v17[2740].f32 = v44;
    v47 = *v17[2440].f32;
    v48 = *v17[2442].f32;
    v49 = *v17[2444].f32;
    *v17[2754].f32 = *v17[2446].f32;
    *v17[2752].f32 = v49;
    *v17[2750].f32 = v48;
    *v17[2748].f32 = v47;
    v50 = *v17[2448].f32;
    v51 = *v17[2450].f32;
    v52 = *v17[2452].f32;
    *v17[2762].f32 = *v17[2454].f32;
    *v17[2760].f32 = v52;
    *v17[2758].f32 = v51;
    *v17[2756].f32 = v50;
    *&v50 = v17[2438];
    v17[2765].i32[0] = v17[2439].i32[0];
    v17[2765].i32[1] = v17[2377].i32[0];
    v53 = v17[2416].i32[0];
    v17[2764] = v50;
    v17[2766].i32[0] = v53;
    v54 = a2[8];
    v55 = *(v54 + 216);
    if ((v55 & 0x80000000) == 0)
    {
      ++v17[2768].i32[v55 + 1];
    }

    v56 = *(v54 + 984);
    if (v17[2770].i32[1] != v56)
    {
      v17[2770].i32[1] = v56;
      ++v17[2771].i32[0];
    }

    Phase::SpatialModeler::Telemetry::Send(&v17[2684]);
    goto LABEL_37;
  }

  v18 = (a3 + 112872);
  if (!Phase::SpatialModeler::SimulationController::ShouldEnableListenerOutsideMitigation(&a1[10], (a3 + 112752), &a1[178], *(v15 + 980)) || *(a3 + 112945) != 1)
  {
    Phase::SpatialModeler::SimulationController::AdjustAggregationCoefficientsDefault(*v18, *(a3 + 112876), &a1[10], (a3 + 112760));
    if (v17[21].i8[0] == 1 && v17[21].i8[1] == 1)
    {
      Phase::SpatialModeler::SimulationController::AdjustAggregationCoefficientsDynamic(a1 + 10, &v17[2851], (a3 + 112760), *v18, *(a3 + 112876), v17[2628].f32[1], *v14);
    }

    v23 = (a3 + 132272);
    v24 = *(a3 + 132352);
    v73 = *(a3 + 132336);
    v74 = v24;
    v25 = *(a3 + 132384);
    v75 = *(a3 + 132368);
    v76 = v25;
    v26 = *(a3 + 132288);
    *buf = *(a3 + 132272);
    *&buf[16] = v26;
    v27 = *(a3 + 132320);
    v71 = *(a3 + 132304);
    v72 = v27;
    v28 = HIDWORD(v25);
    if (HIDWORD(v25))
    {
      v29 = *(a3 + 133680);
      if ((*(a3 + 133688) - v29) >> 2 == HIDWORD(v76))
      {
        v30 = buf;
        do
        {
          v31 = *v29++;
          *v30 = *v30 / v31;
          ++v30;
          --v28;
        }

        while (v28);
      }
    }

    v32 = *(a3 + 132256);
    v33 = *(a3 + 132396);
    if (v33)
    {
      v34 = 0.0;
      v35 = *(a3 + 132396);
      do
      {
        v36 = *v23++;
        v34 = v34 + v36;
        --v35;
      }

      while (v35);
      if (v33 != 1)
      {
        v34 = v34 / v33;
      }
    }

    else
    {
      v34 = 0.0;
    }

    v37 = *(a3 + 135552);
    v68 = *(a3 + 135544);
    v69 = v37;
    Phase::SpatialModeler::RoomChangeDetector::IncrementResultInternal<0ul,1ul,2ul,float,float,Phase::Vector<float,3ul>>(v32, v34, &a1[84], &a1[84], &v68);
    Phase::SpatialModeler::GetRoomChangeProbabilityEstimate(&a1[84]);
    *(a3 + 133788) = v38;
    Phase::SpatialModeler::RayTracerState::AggregateResultData(v17, (a3 + 112752), v15);
    Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::operator=(&v17[2900], a3 + 135952);
    goto LABEL_32;
  }

  Phase::SpatialModeler::RayTracerState::UpdateResultData(v17, (a3 + 112752), v15);
  v20 = **(Phase::Logger::GetInstance(v19) + 1264);
  v21 = v20;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[2807].i32[0];
    *buf = 136315650;
    *&buf[4] = "LateReverbSimulationImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 306;
    *&buf[18] = 1024;
    *&buf[20] = v22;
    _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d listenerOutsideMitigation LR: Listener is outside, mitigating by skipping aggregation, counter %u", buf, 0x18u);
  }

  Phase::SpatialModeler::LateReverbSimulationImpl::ClusterLateReverb(v62, a1, a2, a3);
  v13 = v62;
  Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationFinish(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v66, v62);
LABEL_41:
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v13);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v64);
}

void sub_23A4339A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationFinish(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(Phase::Logger *a1, os_signpost_id_t **a2, uint64_t a3)
{
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1272) == 1)
  {
    v7 = **(Phase::Logger::GetInstance(Instance) + 1264);
    v8 = v7;
    v9 = **a2;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Phase_RoomSimulation_LateReverbFinish", &unk_23A5C28A2, v11, 2u);
    }
  }

  return std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, a3);
}

void Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationHandleResultsLateReverberation(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &)::$_0::operator()<unsigned long,std::array<float,31ul>,Phase::PackedSubbands<float,10ul>>(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 == 31)
  {
    v6 = Phase::sThirdOctaveBandFrequencies;
    v7 = &constinit_1;
    goto LABEL_7;
  }

  if (a1 == 10)
  {
    v8 = *a2;
    v9 = *(a2 + 16);
    *(a3 + 32) = *(a2 + 32);
    *a3 = v8;
    *(a3 + 16) = v9;
    return;
  }

  if (a1 == 3)
  {
    v6 = &Phase::sThreeBandFrequencies;
    v7 = &Phase::sOctaveBandFrequencies;
LABEL_7:

    Phase::GetValuesFromFrequencyResponse<float const*,float const*,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(v6, v7, a2, a2 + 124, &Phase::sOctaveBandFrequencies, Phase::sThirdOctaveBandFrequencies, a3);
    return;
  }

  v10 = **(Phase::Logger::GetInstance(a1) + 1264);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315650;
    v12 = "LateReverbSimulationImpl.mm";
    v13 = 1024;
    v14 = 1347;
    v15 = 2048;
    v16 = a1;
    _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported sub-band count: %zu\n", &v11, 0x1Cu);
  }
}

void Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationHandleResultsLateReverberation(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &)::$_0::operator()<unsigned long,std::vector<float>,Phase::PackedSubbands<float,10ul>>(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 == 31)
  {
    v6 = Phase::sThirdOctaveBandFrequencies;
    v7 = &constinit_1;
    goto LABEL_7;
  }

  if (a1 == 10)
  {
    v8 = *a2;
    v9 = *(a2 + 16);
    *(a4 + 32) = *(a2 + 32);
    *a4 = v8;
    *(a4 + 16) = v9;
    return;
  }

  if (a1 == 3)
  {
    v6 = &Phase::sThreeBandFrequencies;
    v7 = &Phase::sOctaveBandFrequencies;
LABEL_7:

    Phase::GetValuesFromFrequencyResponse<float const*,std::__wrap_iter<float const*>,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(v6, v7, a2, a4);
    return;
  }

  v10 = **(Phase::Logger::GetInstance(a1) + 1264);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315650;
    v12 = "LateReverbSimulationImpl.mm";
    v13 = 1024;
    v14 = 1347;
    v15 = 2048;
    v16 = a1;
    _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported sub-band count: %zu\n", &v11, 0x1Cu);
  }
}

float Phase::SpatialModeler::GetTotalEnergyInBand<float>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  result = 0.0;
  if (v4)
  {
    v6 = *v4;
    v7 = v4[1];
    if (*v4)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v10 = v2;
      v11 = v3;
      v9 = 0.0;
      vDSP_svesq(v4 + a2 + 4, v7, &v9, v6);
      return v9;
    }
  }

  return result;
}

void Phase::SpatialModeler::SingleLRClusterResult::~SingleLRClusterResult(Phase::SpatialModeler::SingleLRClusterResult *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this);
}

void Phase::SpatialModeler::RoomSimulationDebugger::DebugDirectionalMetadata::~DebugDirectionalMetadata(Phase::SpatialModeler::RoomSimulationDebugger::DebugDirectionalMetadata *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v5 = (this + 56);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

Phase::SpatialModeler::RoomSimulationDebugger::DebugDirectionalMetadata *Phase::SpatialModeler::RoomSimulationDebugger::DebugDirectionalMetadata::DebugDirectionalMetadata(Phase::SpatialModeler::RoomSimulationDebugger::DebugDirectionalMetadata *this, const Phase::SpatialModeler::RoomSimulationDebugger::DebugDirectionalMetadata *a2)
{
  *this = *a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<Phase::Vector<float,3ul>>::__init_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>(this + 8, *(a2 + 1), *(a2 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - *(a2 + 1)) >> 2));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v4 = *(a2 + 7);
  v5 = *(a2 + 8);
  if (v5 != v4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](this + 56, 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3));
  }

  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v7 = *(a2 + 10);
  v6 = *(a2 + 11);
  if (v6 != v7)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](this + 80, v6 - v7);
  }

  return this;
}

void sub_23A433FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v14 = *v12;
  if (*v12)
  {
    v9[11] = v14;
    operator delete(v14);
  }

  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v15 = *v11;
  if (*v11)
  {
    v9[5] = v15;
    operator delete(v15);
  }

  v16 = *v10;
  if (*v10)
  {
    v9[2] = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void Phase::GetValuesFromFrequencyResponse<float const*,std::__wrap_iter<float const*>,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(float *a1, float *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a1)
  {
    for (i = a1 + 1; i != a2; ++i)
    {
      v8 = *(i - 1);
      v7 = *i;
      if (v7 < v8)
      {
        __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 262, "std::is_sorted(inFrequenciesFirst, inFrequenciesLast)");
      }
    }
  }

  v9 = a2 - a1;
  v10 = &unk_23A555F1C;
  for (j = 36; j; j -= 4)
  {
    v13 = *(v10 - 1);
    v12 = *v10++;
    if (v12 < v13)
    {
      __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 263, "std::is_sorted(inOutputFrequenciesFirst, inOutputFrequenciesLast)");
    }
  }

  Phase::GetBandsFromCenterFrequencies<float const*,float>(a1, a2, v45, 22000.0);
  Phase::GetBandsFromCenterFrequencies<float const*,float>(&Phase::sOctaveBandFrequencies, Phase::sThirdOctaveBandFrequencies, v44, 22000.0);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v43 = 0.0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  __p = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  do
  {
    v18 = (v44[0] + 8 * v17);
    v19 = *v18;
    v20 = v18[1];
    v41 = v40;
    v38 = v15;
    v35 = v14;
    v33 = v16;
    if (v16 < v9)
    {
      v21 = v16;
      while (1)
      {
        v22.i32[0] = *(v45[0] + v21);
        v22.i32[1] = HIDWORD(*(v44[0] + v17));
        v23.i32[0] = *(v44[0] + v17);
        v23.i32[1] = HIDWORD(*(v45[0] + v21));
        v24 = vbsl_s8(vcgt_f32(v23, v22), *(v44[0] + 8 * v17), *(v45[0] + 8 * v21));
        v43 = fmaxf(vsub_f32(vdup_lane_s32(v24, 1), v24).f32[0], 0.0);
        if (v43 == 0.0)
        {
          break;
        }

        std::vector<float>::push_back[abi:ne200100](&v40, &v43);
        std::vector<long>::push_back[abi:ne200100](&__p, &v33);
        if (v33 == v9 - 1)
        {
          v16 = v33;
        }

        v21 = v33 + 1;
        v33 = v21;
        if (v21 >= v9)
        {
          goto LABEL_19;
        }
      }

      v16 = v21 - (*(v45[0] + 2 * v21) != *(v44[0] + 2 * v17 + 1));
    }

LABEL_19:
    v15 = __p;
    v25 = 0.0;
    if (v38 == __p)
    {
      v28 = 0.0;
    }

    else
    {
      v26 = 0;
      v27 = v20 - v19;
      v28 = 0.0;
      do
      {
        v29 = *(v40 + v26) / v27;
        *&v33 = v29 * (*(a3 + 4 * *&v15[8 * v26]) * *(a3 + 4 * *&v15[8 * v26]));
        std::vector<float>::push_back[abi:ne200100](&v34, &v33);
        v28 = v28 + v29;
        ++v26;
        v15 = __p;
      }

      while (v26 < (v38 - __p) >> 3);
    }

    v14 = v34;
    if (v34 != v35)
    {
      v30 = 0.0;
      v31 = v34;
      do
      {
        v32 = *v31++;
        v30 = v30 + v32;
      }

      while (v31 != v35);
      v25 = v30;
    }

    *(a4 + 4 * v17++) = sqrtf(v25 / v28);
  }

  while (v17 != 10);
  if (v14)
  {
    v35 = v14;
    operator delete(v14);
    v15 = __p;
  }

  if (v15)
  {
    v38 = v15;
    operator delete(v15);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }
}

void sub_23A434340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_23A434614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,Phase::SpatialModeler::SingleLRClusterResult>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__shared_ptr_emplace<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D358C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_emplace<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__on_zero_shared(uint64_t *a1)
{
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 21);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 22));
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 16, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 17));
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 10);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 11));
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 4);

  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 5));
}

void Phase::SpatialModeler::LateReverbSimulation::GetSupportedQueryDescs(void *a1@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v12[23] = 4;
  strcpy(v12, "CULL");
  v13 = 0;
  v14 = 0x100000001;
  v15 = 1;
  memset(v16, 0, sizeof(v16));
  std::vector<unsigned int>::resize(v16, 7uLL);
  v3 = 0;
  v4 = *v16;
  do
  {
    *(v4 + v3 * 4) = Phase::SpatialModeler::LateReverbSimulationPrivate::sCullQueryPropertyUIDs[v3];
    ++v3;
  }

  while (v3 != 7);
  v17[23] = 7;
  strcpy(v17, "CLUSTER");
  v18 = 1;
  v19 = 0x200000003;
  v20 = 1;
  memset(v21, 0, sizeof(v21));
  std::vector<unsigned int>::resize(v21, 7uLL);
  v5 = 0;
  v6 = *v21;
  do
  {
    *(v6 + v5 * 4) = Phase::SpatialModeler::LateReverbSimulationPrivate::sClusterQueryPropertyUIDs[v5];
    ++v5;
  }

  while (v5 != 7);
  v22[23] = 7;
  strcpy(v22, "SPATIAL");
  v23 = 2;
  v24 = 0x300000002;
  v25 = 2;
  memset(v26, 0, sizeof(v26));
  std::vector<unsigned int>::resize(v26, 7uLL);
  v7 = 0;
  v8 = *v26;
  do
  {
    *(v8 + v7 * 4) = Phase::SpatialModeler::LateReverbSimulationPrivate::sSpatialQueryPropertyUIDs[v7];
    ++v7;
  }

  while (v7 != 7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<Phase::SpatialModeler::QueryDesc>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::QueryDesc const*,Phase::SpatialModeler::QueryDesc const*>(a1, v12, &v27, 3uLL);
  for (i = 0; i != -240; i -= 80)
  {
    v10 = &v12[i];
    v11 = *&v26[i];
    if (v11)
    {
      *(v10 + 27) = v11;
      operator delete(v11);
    }

    if (v10[183] < 0)
    {
      operator delete(*(v10 + 20));
    }
  }
}

void sub_23A434DDC(_Unwind_Exception *a1)
{
  v3 = (v1 + 160);
  v4 = -240;
  do
  {
    Phase::SpatialModeler::QueryDesc::~QueryDesc(v3);
    v3 = (v5 - 80);
    v4 += 80;
  }

  while (v4);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::LateReverbSimulation::GetEntityShapeTemplates@<X0>(Phase::SpatialModeler::LateReverbSimulation *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = 0;
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  v8 = 4;
  v3 = *(Phase::Logger::GetInstance(this) + 1280);
  if (!v3)
  {
    v3 = 3;
  }

  v5 = v3;
  if (v3 > 3)
  {
    __assert_rtn("GetEntityShapeTemplates", "LateReverbSimulationModeler.cpp", 238, "occluderTemplate.mShapeType > Geometry::DefaultShapeType::Invalid && occluderTemplate.mShapeType < Geometry::DefaultShapeType::Count");
  }

  a2[1] = std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__emplace_back_slow_path<Phase::SpatialModeler::EntityShapeTemplate const&>(a2, &v5);
  return std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v6);
}

void sub_23A434EF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v2 + 8);
  std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::LateReverbSimulation::Init(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *(a1 + 40) = a2[3];
  *(a1 + 32) = 3;
  *(a1 + 60) = Phase::Geometry::SceneQueryTypeRegistry::DeriveNewType((*(a1 + 16) + 2720), 3u);
  *(a1 + 64) = Phase::Geometry::SceneQueryTypeRegistry::DeriveNewType((*(a1 + 16) + 2720), 3u);
  Phase::Geometry::System::GetCurrentState(*(a1 + 16), &v12);
  v4 = a2[1];
  if (v4)
  {
    v5 = *v4;
    *(a1 + 1072) = v4[1];
    *(a1 + 1056) = v5;
    v6 = v4[2];
    v7 = v4[3];
    v8 = v4[4];
    *(a1 + 1136) = v4[5];
    *(a1 + 1120) = v8;
    *(a1 + 1104) = v7;
    *(a1 + 1088) = v6;
    v9 = v4[6];
    v10 = v4[7];
    v11 = v4[8];
    *(a1 + 1200) = *(v4 + 36);
    *(a1 + 1184) = v11;
    *(a1 + 1168) = v10;
    *(a1 + 1152) = v9;
  }

  Phase::SpatialModeler::RoomSimulationConfig::ReadDefaultsWriteFlags((a1 + 1056));
  *(a1 + 1280) = *a2;
  *(a1 + 1304) = a2[2];
  operator new();
}

void sub_23A4352E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::SpatialModeler::LateReverbSimulation::Shutdown(Phase::SpatialModeler::LateReverbSimulation *this)
{
  v2 = *(this + 164);
  *(this + 164) = 0;
  if (v2)
  {
    std::default_delete<caulk::concurrent::multi_buffer<Phase::SpatialModeler::RayTracerState,3>>::operator()[abi:ne200100](this + 1312, v2);
    v1 = vars8;
  }

  return Phase::SpatialModeler::RoomSimulation::DeinitERtoLRModelerCache(this);
}

uint64_t Phase::SpatialModeler::LateReverbSimulation::RunQuery@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[10];
  if (v3 > 2)
  {
    *a3 = 2;
    *(a3 + 8) = result + 72;
    *(a3 + 24) = 2;
  }

  else
  {
    v4 = a2[11];
    if (v4 && (v5 = Phase::SpatialModeler::LateReverbSimulationPrivate::QueryTable[v3], *(v5 + 4) == *v4))
    {
      v6 = a2[12];
      if (v6 && *(v5 + 5) == *v6)
      {
        return (*(v5 + 8))();
      }

      v7 = result + 72;
      v8 = 4;
    }

    else
    {
      v7 = result + 72;
      v8 = 3;
    }

    *a3 = v8;
    *(a3 + 8) = v7;
    *(a3 + 24) = 2;
  }

  return result;
}

uint64_t Phase::SpatialModeler::LateReverbSimulation::AllocateQueryState@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 80);
  if (v2 <= 2)
  {
    v3 = *(Phase::SpatialModeler::LateReverbSimulationPrivate::QueryTable[v2] + 7);
    if (v3)
    {
      return v3();
    }
  }

  *a2 = 0;
  a2[4] = 0;
  return result;
}

std::string *Phase::SpatialModeler::LateReverbSimulation::GetGraphDescription@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a1 == 2)
  {
    std::string::__assign_external(a2, "LateReverbSimSpatialQueryGraph", 0x1EuLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullLateReverbSimSpatialGraph", 0x1DuLL);
  }

  else if (a1 == 1)
  {
    std::string::__assign_external(a2, "LateReverbSimClusterQueryGraph", 0x1EuLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullLateReverbSimClusterGraph", 0x1DuLL);
  }

  else
  {
    if (a1)
    {
      return result;
    }

    std::string::__assign_external(a2, "LateReverbSimCullQueryGraph", 0x1BuLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullLateReverbSimCullGraph", 0x1AuLL);
  }

  v4[1].__r_.__value_.__r.__words[0] = 0xFFFFFFFFLL;
  return result;
}

void Phase::SpatialModeler::LateReverbSimulation::StoreRayTracerStateToCache(Phase::SpatialModeler::LateReverbSimulation *this, const Phase::SpatialModeler::RayTracerState *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v5[3133] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 1312);
  Phase::SpatialModeler::RayTracerState::RayTracerState(v5, v4);
  caulk::concurrent::multi_buffer<Phase::SpatialModeler::RayTracerState,3>::write(v3, v5);
  Phase::SpatialModeler::RayTracerState::~RayTracerState(v5);
}

void Phase::SpatialModeler::LateReverbSimulation::~LateReverbSimulation(Phase::SpatialModeler::LateReverbSimulation *this)
{
  Phase::SpatialModeler::RoomSimulation::~RoomSimulation(this);

  JUMPOUT(0x23EE864A0);
}

Phase::SpatialModeler::LaunchConfig *Phase::SpatialModeler::LaunchConfig::LaunchConfig(Phase::SpatialModeler::LaunchConfig *this, unsigned int a2, unsigned int a3)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  Phase::SpatialModeler::LaunchConfig::Init(this, a2, a3);
  return this;
}

void sub_23A4356AC(_Unwind_Exception *a1)
{
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](v2);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v1 + 24);
  _Unwind_Resume(a1);
}

float Phase::SpatialModeler::LaunchConfig::Init(Phase::SpatialModeler::LaunchConfig *this, unsigned int a2, unsigned int a3)
{
  result = Phase::SpatialModeler::LaunchConfig::SetLaunchingAngles(this, &Phase::SpatialModeler::launchconfig_128x256, a2, a3);
  if (a2 != 256 || *this != 128)
  {
    std::terminate();
  }

  return result;
}

float Phase::SpatialModeler::LaunchConfig::SetLaunchingAngles(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v19[4] = *MEMORY[0x277D85DE8];
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *a1 = a4 / a3;
  v6 = a4;
  v13 = 4;
  v14 = a4;
  v15 = &v14;
  v16[0] = &v13;
  Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(a4, &v15, &v18);
  v7 = v18;
  v18 = 0;
  v15 = v7;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v16, v19);
  v17 = v6;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v18);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v19);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 16), &v15);
  *(a1 + 56) = v17;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v15);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v16);
  if (*(a1 + 56))
  {
    v9 = 0;
    v10 = 0;
    v11 = (a2 + 4);
    do
    {
      *(*(a1 + 16) + v9) = 1065353216;
      *(*(a1 + 16) + v9 + 4) = *(v11 - 1);
      v12 = *v11;
      v11 += 2;
      result = v12;
      *(*(a1 + 16) + v9 + 8) = v12;
      ++v10;
      v9 += 12;
    }

    while (*(a1 + 56) > v10);
  }

  return result;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x23EE86030](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_23A435A0C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x23EE863B0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x23EE86040](a1 + 2);

  return std::istream::~istream();
}

uint64_t Phase::LinkedList::InsertNodeAfter(uint64_t result, uint64_t a2, uint64_t a3)
{
  ++*(result + 16);
  v3 = *(result + 8);
  if (*result == 0)
  {
    *result = a2;
    *(result + 8) = a2;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *(a2 + 8) = a3;
    if (v3 == a3)
    {
      *(a2 + 16) = 0;
      *(a3 + 16) = a2;
      *(result + 8) = a2;
    }

    else
    {
      *(a2 + 16) = *(a3 + 16);
      *(a3 + 16) = a2;
    }
  }

  return result;
}

Phase::Logger *Phase::LinkedList::RemoveNode(Phase::Logger *result, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *result;
  if (!*result && !*(result + 1))
  {
    v12 = **(Phase::Logger::GetInstance(result) + 352);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "LinkedList.cpp";
      v16 = 1024;
      v17 = 94;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: !IsEmpty() is false.", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: !IsEmpty() is false.");
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 8);
  }

  while (v3);
  if (v4 != v2)
  {
LABEL_15:
    v10 = **(Phase::Logger::GetInstance(result) + 352);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "LinkedList.cpp";
      v16 = 1024;
      v17 = 95;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: IsNodeOwner(pInNode) is false.", &v14, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v11, "PRECONDITION: IsNodeOwner(pInNode) is false.");
  }

  --*(result + 4);
  v5 = *(result + 1);
  if (v2 == v5)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *result = 0;
    *(result + 1) = 0;
  }

  else if (v2 == a2)
  {
    v8 = *(a2 + 16);
    *(v8 + 8) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *result = v8;
  }

  else if (v5 == a2)
  {
    v9 = *(a2 + 8);
    *(v9 + 16) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(result + 1) = v9;
  }

  else
  {
    v7 = *(a2 + 8);
    v6 = *(a2 + 16);
    *(v7 + 16) = v6;
    *(v6 + 8) = v7;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

Phase::LinkwitzRileyFilterBank *Phase::LinkwitzRileyFilterBank::LinkwitzRileyFilterBank(Phase::LinkwitzRileyFilterBank *this, int a2, int a3, int a4, int a5)
{
  *this = a5;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 4) = 5;
  *(this + 24) = 0u;
  v8 = (this + 24);
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 20) = 1065353216;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<float>::resize(this + 11, a3 * a2);
  std::vector<Phase::MdlMeshAsset::VertexDescriptor::Layout>::resize(v8, *(this + 4) * *(this + 2) * *(this + 3));
  Phase::LinkwitzRileyFilterBank::GetDefaultCenterFrequencies(v9, a3, __p);
  Phase::LinkwitzRileyFilterBank::CreateWithCenterFrequency(this, a4, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_23A435E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v14 = *v12;
  if (*v12)
  {
    *(v10 + 96) = v14;
    operator delete(v14);
  }

  std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::~__hash_table(v10 + 48);
  v15 = *v11;
  if (*v11)
  {
    *(v10 + 32) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::LinkwitzRileyFilterBank::GetDefaultCenterFrequencies@<X0>(Phase::LinkwitzRileyFilterBank *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 > 9)
  {
    if (a2 == 10)
    {
      memset(v9, 0, sizeof(v9));
      result = std::vector<double>::__init_with_size[abi:ne200100]<float const*,float const*>(v9, &Phase::sOctaveBandFrequencies, &unk_23A5960EC, 0xAuLL);
    }

    else
    {
      if (a2 != 31)
      {
        goto LABEL_11;
      }

      memset(v9, 0, sizeof(v9));
      result = std::vector<double>::__init_with_size[abi:ne200100]<float const*,float const*>(v9, &Phase::sThirdOctaveBandFrequencies, &Phase::sOctaveBandFrequencies, 0x1FuLL);
    }
  }

  else
  {
    if (a2 != 3)
    {
      if (a2 == 5)
      {
        operator new();
      }

LABEL_11:
      v7 = **(Phase::Logger::GetInstance(this) + 640);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 136315650;
        *&v9[4] = "LinkwitzRileyFilterBank.cpp";
        *&v9[12] = 1024;
        *&v9[14] = 154;
        *&v9[18] = 1024;
        *&v9[20] = a2;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Current number of bands (%d bands) not defined in Subbands.hpp. Please, create your own custom vector of  center frequencies.", v9, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Current number of bands (%d bands) not defined in Subbands.hpp. Please, create your own custom vector of center frequencies.");
    }

    memset(v9, 0, sizeof(v9));
    result = std::vector<double>::__init_with_size[abi:ne200100]<float const*,float const*>(v9, &Phase::sThreeBandFrequencies, &unk_23A596124, 3uLL);
  }

  v5 = *&v9[16];
  *a3 = *v9;
  a3[2] = v5;
  return result;
}

void Phase::LinkwitzRileyFilterBank::CreateWithCenterFrequency(int *a1, int a2, double **a3)
{
  Phase::GetBandsFromCenterFrequencies<std::__wrap_iter<double *>,double>(*a3, a3[1], __p, ((*a1 >> 1) - 1));
  Phase::LinkwitzRileyFilterBank::CreateWithBands(a1, a2, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_23A436134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::LinkwitzRileyFilterBank::~LinkwitzRileyFilterBank(Phase::LinkwitzRileyFilterBank *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::~__hash_table(this + 48);
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

void Phase::LinkwitzRileyFilterBank::CreateWithBands(int *a1, int a2, void *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  a1[3] = a2;
  v6 = *a1;
  std::vector<Phase::MdlMeshAsset::VertexDescriptor::Layout>::resize(a1 + 3, a1[2] * a2 * a1[4]);
  v84 = 0;
  v7 = a1[2];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v72 = a2;
    v10 = (2 * a2);
    v71 = a2;
    v70 = a2;
    __asm { FMOV            V0.2D, #0.5 }

    v77 = _Q0;
    _Q0.f64[0] = NAN;
    _Q0.f64[1] = NAN;
    v74 = vnegq_f64(_Q0);
    do
    {
      v16 = (*a3 + 16 * v9);
      if (v16[1] >= (v6 >> 1))
      {
        __assert_rtn("CreateWithBands", "LinkwitzRileyFilterBank.cpp", 69, "band.mHighCutInHertz < nyquist");
      }

      if (*v16 <= 0.0)
      {
        __assert_rtn("CreateWithBands", "LinkwitzRileyFilterBank.cpp", 70, "band.mLowCutInHertz > dc");
      }

      v17 = a1[3];
      if (v17)
      {
        if ((v17 & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      v87 = COERCE_DOUBLE(&v84);
      v18 = std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 6, v9);
      v19 = v18[3];
      if (v19)
      {
        v18[4] = v19;
        operator delete(v19);
        v18[3] = 0;
        v18[4] = 0;
        v18[5] = 0;
      }

      v18[3] = 0;
      v18[4] = 0;
      v18[5] = 0;
      LODWORD(v3) = *a1;
      v21 = *v16;
      v20 = v16[1];
      v87 = COERCE_DOUBLE(&v84);
      v22 = std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 6, v84)[3];
      v87 = COERCE_DOUBLE(&v84);
      v23 = std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 6, v84);
      v24 = *&v3;
      if (*&v3 * 0.5 <= v20 || v21 <= 0.0 || v20 <= v21 || (0xCCCCCCCCCCCCCCCDLL * ((v23[4] - v22) >> 3)) < v72)
      {
        __assert_rtn("ButterworthBandPassNthOrder", "Biquad.hpp", 561, "inHighCutoffFrequencyInHertz > inLowCutoffFrequencyInHertz && inLowCutoffFrequencyInHertz > T(0) && inHighCutoffFrequencyInHertz < inSampleRateInHertz / T(2) && std::distance(outSectionFirst, outSectionLast) >= inOrder");
      }

      v25 = sqrt(v21 * v20) / v24 * 6.28318531;
      *__Y = xmmword_23A554FF0;
      v87 = v25 * 0.0;
      v88 = v25;
      std::exp[abi:ne200100]<double>(&v87);
      __Delay = v26;
      v82 = v27;
      if (v71 > 0)
      {
        v28 = v24 / 3.14159265 * tan(v21 * 3.14159265 / v24);
        v29 = v24 / 3.14159265 * tan(v20 * 3.14159265 / v24);
        v30 = sqrt(v28 * v29);
        v78 = (v29 - v28) / v30;
        v3 = v30 * 6.28318531;
        v31 = v24 + v24;
        v32 = (v22 + 16);
        v33 = 1;
        v34 = v70;
        do
        {
          v35 = __sincos_stret((v33 * 2.0 + -1.0) * 3.14159265 / v10);
          v36.f64[0] = *__Y * v35.__cosval - v35.__sinval;
          v79 = v36.f64[0];
          v80 = *&__Y[1] * v35.__cosval;
          v36.f64[1] = *&__Y[1] * v35.__cosval;
          v86 = vmulq_f64(vmulq_n_f64(v36, v78), v77);
          *v37.i64 = std::operator*[abi:ne200100]<double,0>(v86.f64, v86.f64);
          *v39.i64 = -v38;
          v40.i64[0] = 0x7FF0000000000000;
          if (fabs(v38) != INFINITY)
          {
            *v40.i64 = 1.0 - *v37.i64;
            if (fabs(1.0 - *v37.i64) == INFINITY)
            {
              if (*v40.i64 <= 0.0)
              {
                v39.i64[0] = vbslq_s8(v74, v40, v39).u64[0];
                v40.i64[0] = 0;
              }

              else
              {
                v37.i64[0] = 0;
                v39.i64[0] = vbslq_s8(v74, v37, v39).u64[0];
              }
            }

            else
            {
              v75 = -v38;
              v76 = 1.0 - *v37.i64;
              v55 = sqrt(hypot(*v40.i64, -v38));
              v56 = atan2(v75, v76);
              v39.i64[0] = 0x7FF8000000000000;
              v40.i64[0] = 0x7FF8000000000000;
              if ((*&v55 & 0x8000000000000000) == 0)
              {
                if (fabs(v56 * 0.5) == INFINITY)
                {
                  v39.i64[0] = 0x7FF8000000000000;
                  if (fabs(v55) == INFINITY)
                  {
                    *v40.i64 = v55;
                  }

                  else
                  {
                    v40.i64[0] = 0x7FF8000000000000;
                  }
                }

                else
                {
                  v57 = __sincos_stret(v56 * 0.5);
                  *v40.i64 = v55 * v57.__cosval;
                  *v39.i64 = v55 * v57.__sinval;
                }
              }
            }
          }

          v85[0] = *v40.i64;
          v85[1] = *v39.i64;
          v41 = std::operator*[abi:ne200100]<double,0>(__Y, v85);
          v43 = __divdc3(v3 * (v78 * 0.5 * v79 + v41) / v31 + 1.0, v3 * (v78 * 0.5 * v80 + v42) / v31, 1.0 - v3 * (v78 * 0.5 * v79 + v41) / v31, -(v3 * (v78 * 0.5 * v80 + v42) / v31));
          v45 = hypot(v43, v44);
          v46 = v45 * v45;
          v32[1] = v43 * -2.0;
          v32[2] = v46;
          v87 = 1.0;
          v88 = v43 * -2.0;
          v89 = v46;
          v47 = Phase::Biquad::details::EvaluatePolynomial<double>(dbl_23A596128, &__Delay);
          v49 = v48;
          v50 = Phase::Biquad::details::EvaluatePolynomial<double>(&v87, &__Delay);
          v52 = __divdc3(v47, v49, v50, v51);
          v54 = 1.0 / hypot(v52, v53);
          *(v32 - 2) = v54;
          *(v32 - 1) = 0.0;
          *v32 = -v54;
          v32 += 5;
          ++v33;
          --v34;
        }

        while (v34);
      }

      if (a1[3] >= 1)
      {
        v58 = 0;
        v59 = 0;
        do
        {
          v87 = COERCE_DOUBLE(&v84);
          v60 = a1 + 6;
          *(*(a1 + 3) + 8 * v8) = *(std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 6, v84)[3] + v58);
          v87 = COERCE_DOUBLE(&v84);
          *(*v60 + 8 * v8 + 8) = *(std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 6, v84)[3] + v58 + 8);
          v87 = COERCE_DOUBLE(&v84);
          *(*v60 + 8 * v8 + 16) = *(std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 6, v84)[3] + v58 + 16);
          v87 = COERCE_DOUBLE(&v84);
          *(*v60 + 8 * v8 + 24) = *(std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 6, v84)[3] + v58 + 24);
          v87 = COERCE_DOUBLE(&v84);
          *(*v60 + 8 * v8 + 32) = *(std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 6, v84)[3] + v58 + 32);
          v8 += a1[4];
          ++v59;
          v58 += 40;
        }

        while (v59 < a1[3]);
      }

      v9 = v84 + 1;
      v84 = v9;
      v7 = a1[2];
    }

    while (v9 < v7);
  }

  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v61 = a1[1];
  __Y[0] = 0;
  std::vector<double>::vector[abi:ne200100](&v87, v61);
  v62 = a1[1];
  __Delay = 0;
  std::vector<double>::vector[abi:ne200100](__Y, v62);
  **&v87 = 0x3FF0000000000000;
  if (a1[2] >= 1)
  {
    v63 = 0;
    v64 = 2 * a1[3];
    do
    {
      v86.f64[0] = 0.0;
      std::vector<double>::vector[abi:ne200100](&__Delay, v64 + 2);
      vDSP_biquadD(*(8 * v63), __Delay, *&v87, 1, __Y[0], 1, a1[1]);
      vDSP_vclrD(__Delay, 1, v64 + 2);
      vDSP_biquadD(*(8 * v63), __Delay, __Y[0], 1, __Y[0], 1, a1[1]);
      v65 = a1[1];
      if (v65 >= 1)
      {
        v66 = __Y[0];
        v67 = (*(a1 + 11) + 4 * v65 * v63);
        do
        {
          v68 = *v66++;
          v69 = v68;
          *v67++ = v69;
          --v65;
        }

        while (v65);
      }

      if (__Delay)
      {
        v82 = __Delay;
        operator delete(__Delay);
      }

      ++v63;
    }

    while (v63 < a1[2]);
  }

  if (__Y[0])
  {
    __Y[1] = __Y[0];
    operator delete(__Y[0]);
  }

  if (v87 != 0.0)
  {
    v88 = v87;
    operator delete(*&v87);
  }
}

void sub_23A436A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  v41 = *(v39 - 184);
  if (v41)
  {
    *(v39 - 176) = v41;
    operator delete(v41);
  }

  if (v38)
  {
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

Phase::Logger *Phase::GetBandsFromCenterFrequencies<std::__wrap_iter<double *>,double>@<X0>(double *a1@<X0>, double *a2@<X1>, double **a3@<X8>, double a4@<D0>)
{
  v6 = a1;
  v42 = *MEMORY[0x277D85DE8];
  v8 = a2 - a1;
  *v37 = 0;
  *&v37[8] = 0;
  result = std::vector<Phase::FrequencyBand<double>>::vector[abi:ne200100](a3, v8);
  v10 = *a3;
  **a3 = 10.0;
  if (v8 == 31)
  {
    if (a2 == v6)
    {
      v12 = 0;
      v11 = 1;
      goto LABEL_23;
    }

    v17 = v6 + 1;
    v18 = &Phase::sThirdOctaveBandFrequencies;
    do
    {
      v19 = *v18++;
      v11 = *(v17 - 1) == v19;
      v20 = *(v17 - 1) != v19 || v17 == a2;
      ++v17;
    }

    while (!v20);
    goto LABEL_21;
  }

  if (v8 != 10)
  {
    v11 = 0;
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  if (a2 == v6)
  {
    v11 = 0;
    v12 = 1;
LABEL_23:
    v21 = 0;
    v22 = v10 + 2;
    v23 = v8 - 1;
    while (1)
    {
      v24 = *v6;
      if (v12)
      {
        v25 = v24 + v24 / 1.41421356 * 0.5;
        if (v25 >= a4)
        {
          v25 = a4;
        }

        v26 = 20.3630682;
      }

      else if (v11)
      {
        v25 = v24 + v24 / 4.24264069 * 0.5;
        if (v25 >= a4)
        {
          v25 = a4;
        }

        v26 = 17.6429774;
      }

      else
      {
        if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v32 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = *v6;
            *v37 = 136315650;
            *&v37[4] = "FrequencyResponse.hpp";
            *&v37[12] = 1024;
            *&v37[14] = 99;
            v38 = 2048;
            v39 = v33;
            _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!std::isfinite(inFrequenciesFirst[i]) is true]: GetBandsFromCenterFrequencies: bad center frequency: %fHz", v37, 0x1Cu);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: bad center frequency: %fHz");
LABEL_56:
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
        }

        if (v24 < 10.0)
        {
          v30 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            *&v37[12] = 1024;
            *&v37[14] = 103;
            v38 = 2048;
            v39 = v31;
            v40 = 2048;
            v41 = 10.0;
            _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inFrequenciesFirst[i] < lowestSupportedFreqInHz is true]: GetBandsFromCenterFrequencies: center frequency: %fHz cannot be below lowest supported frequency: %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequency: %fHz cannot be below lowest supported frequency: %fHz");
          goto LABEL_56;
        }

        if (v24 > a4)
        {
          v27 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            *&v37[12] = 1024;
            *&v37[14] = 107;
            v38 = 2048;
            v39 = v28;
            v40 = 2048;
            v41 = a4;
            _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inFrequenciesFirst[i] > highestSupportedFreqInHz is true]: GetBandsFromCenterFrequencies: center frequency: %fHz cannot be above highest supported frequency: %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequency: %fHz cannot be above highest supported frequency: %fHz");
          goto LABEL_56;
        }

        if (v21 && *(v6 - 1) >= v24)
        {
          v34 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = *(v6 - 1);
            v36 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            *&v37[12] = 1024;
            *&v37[14] = 111;
            v38 = 2048;
            v39 = v35;
            v40 = 2048;
            v41 = v36;
            _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [i > 0 && inFrequenciesFirst[i - 1] >= inFrequenciesFirst[i] is true]: GetBandsFromCenterFrequencies: center frequencies are not in ascending order. %fHz is before %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequencies are not in ascending order. %fHz is before %fHz");
          goto LABEL_56;
        }

        v26 = 10.0;
        if (v23 <= v21)
        {
          v25 = a4;
        }

        else
        {
          v25 = v24 * sqrt(v6[1] / v24);
        }
      }

      *(v22 - 1) = v25;
      *v10 = v26;
      if (v23 > v21)
      {
        *v22 = v25;
      }

      ++v21;
      ++v6;
      v22 += 2;
      if (v8 == v21)
      {
        return result;
      }
    }
  }

  v13 = v6 + 1;
  v14 = &Phase::sOctaveBandFrequencies;
  do
  {
    v15 = *v14++;
    v12 = *(v13 - 1) == v15;
    v16 = *(v13 - 1) != v15 || v13 == a2;
    ++v13;
  }

  while (!v16);
  v11 = 0;
LABEL_22:
  if (v8 >= 1)
  {
    goto LABEL_23;
  }

  return result;
}

void sub_23A436FE8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::LinkwitzRileyFilterBank::GetOneBandImpulseResponse(Phase::LinkwitzRileyFilterBank *this, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 2) <= a2)
  {
    v4 = **(Phase::Logger::GetInstance(this) + 640);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(this + 2);
      *buf = 136315906;
      v9 = "LinkwitzRileyFilterBank.cpp";
      v10 = 1024;
      v11 = 173;
      v12 = 1024;
      v13 = a2;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inBand > mNumBands - 1 is true]: Current band (%d) is bigger than than the current constructed filter bank (%d bands)", buf, 0x1Eu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Current band (%d) is bigger than than the current constructed filter bank (%d bands)");
  }

  return *(this + 11) + 4 * *(this + 1) * a2;
}

uint64_t Phase::LinkwitzRileyFilterBank::GetOneBandBiquadStage(Phase::LinkwitzRileyFilterBank *this, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 2) <= a2)
  {
    v4 = **(Phase::Logger::GetInstance(this) + 640);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(this + 2);
      *buf = 136315906;
      v9 = "LinkwitzRileyFilterBank.cpp";
      v10 = 1024;
      v11 = 182;
      v12 = 1024;
      v13 = a2;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inBand > mNumBands - 1 is true]: Current band (%d) is bigger than than the current constructed filter bank (%d bands)", buf, 0x1Eu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Current band (%d) is bigger than than the current constructed filter bank (%d bands)");
  }

  return *(this + 3) + 8 * *(this + 4) * a2 * *(this + 3);
}

void Phase::LinkwitzRileyFilterBank::CreateVDSPFilterBankSetup(Phase::LinkwitzRileyFilterBank *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<vDSP_biquad_SetupStruct *>::resize(a2, *(this + 2));
  if (*(this + 2) >= 1)
  {
    v4 = 0;
    do
    {
      OneBandBiquadStage = Phase::LinkwitzRileyFilterBank::GetOneBandBiquadStage(this, v4);
      *(*a2 + 8 * v4++) = vDSP_biquad_CreateSetup(OneBandBiquadStage, *(this + 3));
    }

    while (v4 < *(this + 2));
  }
}

void sub_23A437350(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<vDSP_biquad_SetupStruct *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<vDSP_biquad_SetupStruct *>::__append(a1, a2 - v2);
  }
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23A43745C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A4374D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<vDSP_biquad_SetupStruct *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<Phase::Biquad::Coefficients<double>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::exp[abi:ne200100]<double>(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 == 0.0)
  {
    exp(v1);
    return;
  }

  if (fabs(v1) == INFINITY)
  {
    if (v1 >= 0.0)
    {
      if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        return;
      }
    }

    else if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v2 = 1.0;
    }
  }

  v3 = v2;
  exp(v1);
  __sincos_stret(v3);
}

double Phase::Biquad::details::EvaluatePolynomial<double>(double *a1, double *a2)
{
  v3 = 0;
  v4 = a1 + 1;
  v7 = *a1;
  v8 = 0;
  do
  {
    result = std::operator*[abi:ne200100]<double,0>(a2, &v7) + *&v4[v3];
    v7 = result;
    v8 = v6;
    ++v3;
  }

  while (v3 != 2);
  return result;
}

void *std::vector<Phase::FrequencyBand<double>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23A437CD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::ListenerHeadTracker::~ListenerHeadTracker(id **this)
{
  v1 = *this;
  if (v1)
  {
    Phase::Controller::ListenerHeadTrackerImpl::~ListenerHeadTrackerImpl(v1);
    MEMORY[0x23EE864A0]();
  }
}

double Phase::Controller::ListenerHeadTrackerImpl::UpdateAndGetLatest(id *a1, _OWORD *a2)
{
  v20 = xmmword_23A554920;
  if (![*a1 _currentAudioListenerPose:v19 timestamp:0])
  {
    *&v3.f64[0] = v19[2];
    *&v3.f64[1] = v19[0];
    v4 = *&v19[1];
    v5 = *&v19[3];
    *&v20 = v4;
    *(&v20 + 4) = vneg_f32(vcvt_f32_f64(v3));
    *(&v20 + 3) = v5;
  }

  Phase::Matrix33From<float>(&v20, v21);
  v8 = *v21;
  v9 = *&v21[8];
  v10 = 0;
  v11 = *&v21[12];
  v12 = *&v21[20];
  v13 = 0;
  v14 = *&v21[24];
  v15 = v22;
  v17 = 0;
  v16 = 0;
  v18 = 1065353216;
  Phase::AffineFrom<float>(&v8, v21);
  result = *v21;
  v7 = *&v21[16];
  *a2 = *v21;
  a2[1] = v7;
  return result;
}

char **Phase::Controller::ListenerHeadTrackerImpl::ListenerHeadTrackerImpl(char **this)
{
  *this = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v2 = _MergedGlobals_16;
  v14 = _MergedGlobals_16;
  if (!_MergedGlobals_16)
  {
    RelativeMotionLibraryCore(this);
    v12[3] = objc_getClass("RMMediaSessionOptions");
    _MergedGlobals_16 = v12[3];
    v2 = v12[3];
  }

  v3 = v2;
  _Block_object_dispose(&v11, 8);
  v4 = [v2 alloc];
  v5 = [v4 setClientMode:0];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v6 = qword_27DF97B30;
  v14 = qword_27DF97B30;
  if (!qword_27DF97B30)
  {
    RelativeMotionLibraryCore(v5);
    v12[3] = objc_getClass("RMMediaSession");
    qword_27DF97B30 = v12[3];
    v6 = v12[3];
  }

  v7 = v6;
  _Block_object_dispose(&v11, 8);
  v8 = [[v6 alloc] _initWithOptions:v4];
  v9 = *this;
  *this = v8;

  [*this _start];
  return this;
}

void sub_23A438058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class ___ZL29getRMMediaSessionOptionsClassv_block_invoke(uint64_t a1)
{
  RelativeMotionLibraryCore(a1);
  result = objc_getClass("RMMediaSessionOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_16 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void RelativeMotionLibraryCore(char **a1)
{
  if (!RelativeMotionLibraryCore(char **)::frameworkLibrary)
  {
    RelativeMotionLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }
}

uint64_t ___ZL25RelativeMotionLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  RelativeMotionLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL22getRMMediaSessionClassv_block_invoke(uint64_t a1)
{
  RelativeMotionLibraryCore(a1);
  result = objc_getClass("RMMediaSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DF97B30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void Phase::Controller::ListenerHeadTrackerImpl::~ListenerHeadTrackerImpl(id *this)
{
  [*this _stop];
  v2 = *this;
  *this = 0;
}

float Phase::AffineFrom<float>@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = *MEMORY[0x277D85DE8];
  *a2 = xmmword_23A554920;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  *(a2 + 28) = 1065353216;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v11 = a1[8];
  v10 = a1[9];
  v12 = a1[10];
  v13 = sqrtf(((v5 * v5) + (v4 * v4)) + (v6 * v6));
  v14 = sqrtf(((v8 * v8) + (v7 * v7)) + (v9 * v9));
  v15 = sqrtf(((v11 * v11) + (v10 * v10)) + (v12 * v12));
  v16 = fmaxf(fmaxf(v13, v14), v15) * 0.001;
  v17 = v13 - v14;
  if ((v13 - v14) < 0.0)
  {
    v17 = -(v13 - v14);
  }

  if (v17 > v16)
  {
    goto LABEL_20;
  }

  v18 = v13 - v15;
  if ((v13 - v15) < 0.0)
  {
    v18 = -(v13 - v15);
  }

  if (v18 > v16)
  {
LABEL_20:
    v54 = **(Phase::Logger::GetInstance(a1) + 112);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = *a1;
      v56 = a1[1];
      v57 = a1[2];
      v58 = a1[3];
      v59 = a1[4];
      v60 = a1[5];
      v61 = a1[6];
      v62 = a1[7];
      v63 = a1[8];
      v64 = a1[9];
      v65 = a1[10];
      v66 = a1[11];
      v67 = a1[12];
      v68 = a1[13];
      v69 = a1[14];
      v70 = a1[15];
      *buf = 136319490;
      *&buf[4] = "AffineFunctions.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      v74 = 2048;
      v75 = v55;
      v76 = 2048;
      v77 = v56;
      v78 = 2048;
      v79 = v57;
      v80 = 2048;
      v81 = v58;
      v82 = 2048;
      v83 = v59;
      v84 = 2048;
      v85 = v60;
      v86 = 2048;
      v87 = v61;
      v88 = 2048;
      v89 = v62;
      v90 = 2048;
      v91 = v63;
      v92 = 2048;
      v93 = v64;
      v94 = 2048;
      v95 = v65;
      v96 = 2048;
      v97 = v66;
      v98 = 2048;
      v99 = v67;
      v100 = 2048;
      v101 = v68;
      v102 = 2048;
      v103 = v69;
      v104 = 2048;
      v105 = v70;
      _os_log_impl(&dword_23A302000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!IsNearlyEqual(len0, len1, uniformScalingEpsilon) || !IsNearlyEqual(len0, len2, uniformScalingEpsilon) is true]: Matrix 4x4 passed into AffineFrom() does not have uniform scale: [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f,  %f], [%f, %f, %f, %f]", buf, 0xB2u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Matrix 4x4 passed into AffineFrom() does not have uniform scale: [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f]");
  }

  *(a2 + 28) = ((v13 + v14) + v15) / 3.0;
  v19 = 1.0 / v13;
  v20 = v5 * v19;
  v21 = v4 * v19;
  v72[0] = v20;
  v72[1] = v21;
  v22 = v6 * v19;
  v23 = 1.0 / v14;
  v24 = v8 * v23;
  v72[2] = v22;
  v72[3] = v24;
  v25 = v7 * v23;
  v26 = v9 * v23;
  v72[4] = v25;
  v72[5] = v26;
  v27 = 1.0 / v15;
  v28 = v11 * v27;
  v29 = v10 * v27;
  v72[6] = v28;
  v72[7] = v29;
  v30 = v12 * v27;
  v72[8] = v30;
  v31 = (v22 * v26) + ((v20 * v24) + (v21 * v25));
  v32 = -v31;
  if (v31 >= 0.0)
  {
    v32 = (v22 * v26) + ((v20 * v24) + (v21 * v25));
  }

  if (v32 > 0.017)
  {
    goto LABEL_17;
  }

  v33 = (v22 * v30) + ((v20 * v28) + (v21 * v29));
  if (v33 < 0.0)
  {
    v33 = -v33;
  }

  if (v33 > 0.017)
  {
    goto LABEL_17;
  }

  v34 = (v26 * v30) + ((v24 * v28) + (v25 * v29));
  if (v34 < 0.0)
  {
    v34 = -v34;
  }

  if (v34 > 0.017)
  {
LABEL_17:
    v36 = **(Phase::Logger::GetInstance(a1) + 112);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = *a1;
      v38 = a1[1];
      v39 = a1[2];
      v40 = a1[3];
      v41 = a1[4];
      v42 = a1[5];
      v43 = a1[6];
      v44 = a1[7];
      v45 = a1[8];
      v46 = a1[9];
      v47 = a1[10];
      v48 = a1[11];
      v49 = a1[12];
      v50 = a1[13];
      v51 = a1[14];
      v52 = a1[15];
      *buf = 136319490;
      *&buf[4] = "AffineFunctions.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 94;
      v74 = 2048;
      v75 = v37;
      v76 = 2048;
      v77 = v38;
      v78 = 2048;
      v79 = v39;
      v80 = 2048;
      v81 = v40;
      v82 = 2048;
      v83 = v41;
      v84 = 2048;
      v85 = v42;
      v86 = 2048;
      v87 = v43;
      v88 = 2048;
      v89 = v44;
      v90 = 2048;
      v91 = v45;
      v92 = 2048;
      v93 = v46;
      v94 = 2048;
      v95 = v47;
      v96 = 2048;
      v97 = v48;
      v98 = 2048;
      v99 = v49;
      v100 = 2048;
      v101 = v50;
      v102 = 2048;
      v103 = v51;
      v104 = 2048;
      v105 = v52;
      _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!IsNearlyEqual(dot1, T(0), orthogonalityEpsilon) || !IsNearlyEqual(dot2, T(0), orthogonalityEpsilon) || !IsNearlyEqual(dot3, T(0), orthogonalityEpsilon) is true]: Matrix 4x4 passed into AffineFrom() is not orthogonal: [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f]", buf, 0xB2u);
    }

    v53 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v53, "Matrix 4x4 passed into AffineFrom() is not orthogonal: [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f]");
  }

  Phase::QuaternionFromMatrix33<float>(v72, buf);
  *a2 = *buf;
  result = a1[14];
  *(a2 + 16) = *(a1 + 6);
  *(a2 + 24) = result;
  return result;
}

float Phase::QuaternionFromMatrix33<float>@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  v2 = a1[8];
  v3 = *a1;
  v4 = a1[4];
  if (v2 >= 0.0)
  {
    v7 = a1[1] - a1[3];
    if (v3 >= -v4)
    {
      v8 = v2 + ((v3 + 1.0) + v4);
      v5 = a1[5] - a1[7];
      v9 = a1[6] - a1[2];
      v6 = v8;
    }

    else
    {
      v6 = v2 + ((1.0 - v3) - v4);
      v5 = a1[6] + a1[2];
      v9 = a1[5] + a1[7];
      v8 = a1[1] - a1[3];
      v7 = v6;
    }
  }

  else
  {
    v5 = a1[1] + a1[3];
    if (v3 <= v4)
    {
      v9 = ((1.0 - v3) + v4) - v2;
      v7 = a1[5] + a1[7];
      v8 = a1[6] - a1[2];
      v6 = v9;
    }

    else
    {
      v6 = ((v3 + 1.0) - v4) - v2;
      v7 = a1[6] + a1[2];
      v8 = a1[5] - a1[7];
      v9 = a1[1] + a1[3];
      v5 = v6;
    }
  }

  v10 = 0.5 / sqrtf(v6);
  *a2 = v5 * v10;
  a2[1] = v9 * v10;
  result = v7 * v10;
  a2[2] = result;
  a2[3] = v8 * v10;
  return result;
}

void Phase::Controller::ListenerManager::Update(id ***this, float a2)
{
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this);
  v14 = xmmword_23A554920;
  v15 = 0;
  v16 = 0;
  v17 = 1065353216;
  v3 = (this + 8);
  v4 = (this + 8);
  do
  {
    v4 = *v4;
    if (!v4)
    {
      std::unique_ptr<Phase::Controller::ListenerHeadTracker>::reset[abi:ne200100](this + 11, 0);
      goto LABEL_8;
    }
  }

  while (v4[64] != 1);
  v5 = this[11];
  if (!v5)
  {
    operator new();
  }

  Phase::Controller::ListenerHeadTrackerImpl::UpdateAndGetLatest(*v5, &v14);
LABEL_8:
  for (i = *v3; i; i = *i)
  {
    v9 = *(i + 2);
    v10 = *(i + 3);
    v12 = v9;
    v13 = v10;
    if (*(i + 64) == 1)
    {
      Phase::operator*<float>(i + 4, &v14, v11, v9, v6, v7);
      v12 = v11[0];
      v13 = v11[1];
    }

    Phase::Geometry::SystemScheduler::UpdateTransform((this[5] + 348), i[3], &v12);
  }
}

uint64_t Phase::Controller::ListenerManager::AddListener(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  v12 = 0;
  v11 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 24, &v12, &v11);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v9 = **(v4 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 100;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v11)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 89;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = 24;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D35AA8;
  v5[1] = a1;
  v5[2] = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 24);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A438D1C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A438C34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::ListenerManager::RemoveListener(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  v12 = 0;
  v11 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 24, &v12, &v11);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v9 = **(v4 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 100;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v11)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 89;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = 24;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D35AD0;
  v5[1] = a1;
  v5[2] = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 24);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A438F8C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A438EA4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::ListenerManager::UpdateTransform(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v12 = a3[1];
  v13 = *a3;
  v5 = **(a1 + 8);
  v15 = 0;
  v14 = 1;
  v6 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v5, 56, &v15, &v14);
  if (!v6)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v10 = **(v5 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "CommandQueue.hpp";
      v18 = 1024;
      v19 = 100;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v14)
  {
    v7 = **(v5 + 48);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v17 = "CommandQueue.hpp";
      v18 = 1024;
      v19 = 89;
      v20 = 2048;
      v21 = v15;
      v22 = 2048;
      v23 = 56;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v6 = &unk_284D35AF8;
  *(v6 + 8) = a1;
  *(v6 + 16) = a2;
  *(v6 + 24) = v13;
  *(v6 + 40) = v12;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v5, 56);
  atomic_store(0, (v5 + 40));
  return result;
}

void sub_23A439210(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A439128);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::ListenerManager::SetTracking(uint64_t a1, uint64_t a2, char a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = **(a1 + 8);
  v14 = 0;
  v13 = 1;
  v7 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v6, 32, &v14, &v13);
  if (!v7)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v11 = **(v6 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 100;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v13)
  {
    v8 = **(v6 + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 89;
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      v22 = 32;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v7 = &unk_284D35B20;
  *(v7 + 8) = a1;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v6, 32);
  atomic_store(0, (v6 + 40));
  return result;
}

void sub_23A439488(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A4393A0);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::ListenerManager::~ListenerManager(id ***this)
{
  Phase::Controller::ListenerManager::~ListenerManager(this);

  JUMPOUT(0x23EE864A0);
}

{
  *this = &unk_284D35A78;
  std::unique_ptr<Phase::Controller::ListenerHeadTracker>::reset[abi:ne200100](this + 11, 0);
  v2 = this[8];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = this[6];
  this[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

id **std::unique_ptr<Phase::Controller::ListenerHeadTracker>::reset[abi:ne200100](id ***a1, id **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::ListenerHeadTracker::~ListenerHeadTracker(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

double Phase::LambdaFunction<Phase::Controller::ListenerManager::AddListener(Phase::Handle64)::$_0,void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (!std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(&v2[6], v1))
  {
    v4 = v2[7];
    if (!*&v4)
    {
      goto LABEL_19;
    }

    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = v1;
      if (*&v4 <= v1)
      {
        v6 = v1 % *&v4;
      }
    }

    else
    {
      v6 = (*&v4 - 1) & v1;
    }

    v7 = *(*&v2[6] + 8 * v6);
    if (!v7 || (v8 = *v7) == 0)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      v9 = v8[1];
      if (v9 == v1)
      {
        if (v8[2] == v1)
        {
          v8[3] = v1;
          result = 0.0;
          *(v8 + 2) = xmmword_23A554920;
          *(v8 + 3) = xmmword_23A554920;
          *(v8 + 64) = 0;
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v4)
          {
            v9 %= *&v4;
          }
        }

        else
        {
          v9 &= *&v4 - 1;
        }

        if (v9 != v6)
        {
          goto LABEL_19;
        }
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

void Phase::LambdaFunction<Phase::Controller::ListenerManager::RemoveListener(Phase::Handle64)::$_0,void>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(v1 + 6, *(a1 + 16));
  if (!v2)
  {
    return;
  }

  v3 = v1[7];
  v4 = *v2;
  v5 = v2[1];
  v6 = vcnt_s8(v3);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    if (v5 >= *&v3)
    {
      v5 %= *&v3;
    }
  }

  else
  {
    v5 &= *&v3 - 1;
  }

  v7 = v1[6];
  v8 = *(v7 + 8 * v5);
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 != v2);
  if (v9 == v1 + 8)
  {
    goto LABEL_20;
  }

  v10 = v9[1];
  if (v6.u32[0] > 1uLL)
  {
    if (v10 >= *&v3)
    {
      v10 %= *&v3;
    }
  }

  else
  {
    v10 &= *&v3 - 1;
  }

  if (v10 != v5)
  {
LABEL_20:
    if (v4)
    {
      v11 = *(v4 + 8);
      if (v6.u32[0] > 1uLL)
      {
        v12 = *(v4 + 8);
        if (v11 >= *&v3)
        {
          v12 = v11 % *&v3;
        }
      }

      else
      {
        v12 = v11 & (*&v3 - 1);
      }

      if (v12 == v5)
      {
        goto LABEL_24;
      }
    }

    *(v7 + 8 * v5) = 0;
    v4 = *v2;
  }

  if (v4)
  {
    v11 = *(v4 + 8);
LABEL_24:
    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v5)
    {
      *(v1[6] + 8 * v11) = v9;
      v4 = *v2;
    }
  }

  *v9 = v4;
  *v2 = 0;
  --v1[9];

  operator delete(v2);
}

float Phase::LambdaFunction<Phase::Controller::ListenerManager::UpdateTransform(Phase::Handle64,Phase::Affine<float> const&)::$_0,void>::operator()(uint64_t a1)
{
  v2 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>((*(a1 + 8) + 48), *(a1 + 16));
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *(v2 + 8) = *(a1 + 24);
  *(v2 + 9) = *(a1 + 28);
  *(v2 + 10) = *(a1 + 32);
  *(v2 + 11) = *(a1 + 36);
  *(v2 + 12) = *(a1 + 40);
  *(v2 + 13) = *(a1 + 44);
  *(v2 + 14) = *(a1 + 48);
  result = *(a1 + 52);
  *(v2 + 15) = result;
  return result;
}

void *Phase::LambdaFunction<Phase::Controller::ListenerManager::SetTracking(Phase::Handle64,BOOL)::$_0,void>::operator()(uint64_t a1)
{
  result = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>((*(a1 + 8) + 48), *(a1 + 16));
  if (!result)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *(result + 64) = *(a1 + 24);
  return result;
}

void Phase::Controller::LoadBalancer::LoadBalancer(Phase::Controller::LoadBalancer *this, const Phase::StringId *a2, Phase::Controller::VoiceManager *a3, Phase::Controller::ProfileRegistry *a4, Phase::Geometry::System *a5)
{
  v6 = *MEMORY[0x277D85DE8];
  Phase::Logger::GetInstance(this);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::Commandable(this);
}

void sub_23A439EB4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::~mutex((v1 + 264));
  if ((*(v1 + 168) & 1) == 0)
  {
    free(*(v1 + 160));
  }

  *(v1 + 152) = 0;
  *(v1 + 160) = v3;
  *(v1 + 168) = 1;
  if ((*(v1 + 56) & 1) == 0)
  {
    free(*(v1 + 48));
  }

  *(v1 + 40) = 0;
  *(v1 + 48) = v3;
  *(v1 + 56) = 1;
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v1);
  _Unwind_Resume(a1);
}

void Phase::Controller::LoadBalancer::SetProfile(const char **this, const Phase::StringId *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((!*a2 || *a2 == -1) && ((v4 = *(a2 + 1), v4 == &str_20) || !*v4))
  {
    v11 = **(Phase::Logger::GetInstance(this) + 816);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "LoadBalancer.mm";
      v16 = 1024;
      v17 = 121;
      v18 = 2048;
      v19 = this;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d loadbalancer@%p: inProfile is invalid or empty. Not setting profile.", &v14, 0x1Cu);
    }
  }

  else
  {
    v5 = std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::find<Phase::StringId>(this[31], a2);
    if (v5)
    {
      if (*a2 != this[5] || (v6 = *(a2 + 1), v7 = this[6], v6 != v7) && (v5 = strcmp(v6, v7), v5))
      {
        v8 = **(Phase::Logger::GetInstance(v5) + 816);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = this[6];
          v10 = *(a2 + 1);
          v14 = 136316162;
          v15 = "LoadBalancer.mm";
          v16 = 1024;
          v17 = 136;
          v18 = 2048;
          v19 = this;
          v20 = 2080;
          v21 = v9;
          v22 = 2080;
          v23 = v10;
          _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d loadbalancer@%p: Profile changed from '%s' to '%s'", &v14, 0x30u);
        }

        Phase::StringId::operator=((this + 5), a2);
        if ((this[27] & 1) == 0)
        {
          this[29] = (this[29] | 1);
        }
      }
    }

    else
    {
      v12 = **(Phase::Logger::GetInstance(0) + 816);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a2 + 1);
        v14 = 136315906;
        v15 = "LoadBalancer.mm";
        v16 = 1024;
        v17 = 129;
        v18 = 2048;
        v19 = this;
        v20 = 2080;
        v21 = v13;
        _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d loadbalancer@%p: Failed to find a profile with name '%s' in the profile registry. Not setting profile.", &v14, 0x26u);
      }
    }
  }
}

void Phase::Controller::LoadBalancer::Update(Phase::Controller::LoadBalancer *this)
{
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this);
  Phase::Geometry::System::GetCurrentState(*(this + 32), &v37);
  if (v37)
  {
    v2 = *(v37 + 984);
    v3 = v2 & ~(v2 >> 63);
    if (v3 != *(this + 8))
    {
      if (v2 <= 1)
      {
        v2 = 1;
      }

      v4 = pow(1.0 - 1.0 / v2, 10000.0);
      v6 = Phase::Controller::sClamp<double>(v5, 1.0 - v4, *(this + 9), *(this + 10));
      if (v6 == *(this + 12))
      {
        if ((*(this + 104) & 1) == 0)
        {
LABEL_10:
          *(this + 8) = v3;
          goto LABEL_11;
        }
      }

      else
      {
        *(this + 12) = v6;
      }

      *(this + 104) = 0;
      if ((*(this + 216) & 1) == 0)
      {
        *(this + 29) |= 2uLL;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v7 = *(this + 29);
  if (v7)
  {
    v8 = 40;
    if (*(this + 216))
    {
      v8 = 152;
    }

    Phase::StringId::StringId(v34, this + v8);
    if (*(this + 216) == 1)
    {
      v9 = *(this + 25);
    }

    else
    {
      v9 = fmin(fmax(*(this + 12) * *(this + 17), 0.0), 1.0);
    }

    Phase::Controller::ProfileRegistry::GetModelers(*(this + 31), v34, v31);
    Phase::Logger::GetInstance(v10);
    Phase::Controller::ProfileRegistry::GetParameters(*(this + 31), v34, v9, __p);
    Phase::Logger::GetInstance(v11);
    Phase::Controller::SpatialModelerSystem::SetModelers((**(this + 30) + 560), v31, __p);
    Phase::Controller::ProfileRegistry::GetComputeWeights(*(this + 31), v34, v28);
    Phase::Logger::GetInstance(v12);
    ComputeTime = Phase::Controller::ProfileRegistry::GetComputeTime(*(this + 31), v34);
    v15 = v29;
    if (v29)
    {
      v16 = *&ComputeTime;
      v17 = 0.0;
      v18 = v29;
      do
      {
        v17 = v17 + v18[3];
        v18 = *v18;
      }

      while (v18);
      if ((v14 & 1) == 0)
      {
        v16 = 1.79769313e308;
      }

      v19 = v16 / v17;
      do
      {
        v15[3] = v19 * v15[3];
        v15 = *v15;
      }

      while (v15);
    }

    Phase::Controller::SpatialModelerSystem::SetComputeTimes((**(this + 30) + 560), v28);
    Phase::Controller::ProfileRegistry::GetOverflowParameters(*(this + 31), v34, &v26);
    if (v27 == 1)
    {
      for (i = *(**(this + 30) + 576); i; i = *i)
      {
        v21 = i[3];
        v22 = v26;
        *(v21 + 136) = v26;
        *(*(v21 + 80) + 320) = v22;
      }
    }

    *(this + 29) &= 0xFFFFFFFFFFFFFFFCLL;
    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v28);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v31);
    if ((v36 & 1) == 0)
    {
      free(v35);
    }

    v7 = *(this + 29);
  }

  if ((v7 & 2) != 0)
  {
    v23 = 40;
    if (*(this + 216))
    {
      v23 = 152;
    }

    Phase::StringId::StringId(v31, this + v23);
    if (*(this + 216) == 1)
    {
      v24 = *(this + 25);
    }

    else
    {
      v24 = fmin(fmax(*(this + 12) * *(this + 17), 0.0), 1.0);
    }

    Phase::Controller::ProfileRegistry::GetParameters(*(this + 31), v31, v24, v28);
    Phase::Logger::GetInstance(v25);
    Phase::Controller::SpatialModelerSystem::SetParameters((**(this + 30) + 560), v28);
    *(this + 29) &= ~2uLL;
    if (v28[0])
    {
      v28[1] = v28[0];
      operator delete(v28[0]);
    }

    if ((v33 & 1) == 0)
    {
      free(v32);
    }
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }
}

void sub_23A43A4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::LoadBalancer::~LoadBalancer(Phase::Controller::LoadBalancer *this)
{
  std::mutex::~mutex((this + 264));
  if ((*(this + 168) & 1) == 0)
  {
    free(*(this + 20));
  }

  *(this + 19) = 0;
  *(this + 20) = &str_20;
  *(this + 168) = 1;
  if ((*(this + 56) & 1) == 0)
  {
    free(*(this + 6));
  }

  *(this + 5) = 0;
  *(this + 6) = &str_20;
  *(this + 56) = 1;

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  Phase::Controller::LoadBalancer::~LoadBalancer(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::LoadBalancer::SetProfileOverride(Phase::Controller::LoadBalancer *this, uint64_t a2, double a3)
{
  v30 = *MEMORY[0x277D85DE8];
  ProfileId = Phase::Controller::ProfileRegistry::FindProfileId(*(this + 31), a2, &v17);
  if (v17 && v17 != -1 || __s1 != &str_20 && *__s1)
  {
    v7 = std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::find<Phase::StringId>(*(this + 31), &v17);
    if (!v7)
    {
      v14 = **(Phase::Logger::GetInstance(0) + 816);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v21 = "LoadBalancer.mm";
        v22 = 1024;
        v23 = 218;
        v24 = 2048;
        v25 = this;
        v26 = 2080;
        v27 = __s1;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d loadbalancer@%p: Failed to find a profile with name '%s' in the profile registry. Not overriding profile.", buf, 0x26u);
      }

      goto LABEL_23;
    }

    if (v17 != *(this + 19) || (v7 = __s1, v8 = *(this + 20), __s1 != v8) && (v7 = strcmp(__s1, v8), v7))
    {
      v9 = **(Phase::Logger::GetInstance(v7) + 816);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(this + 20);
        *buf = 136316162;
        v21 = "LoadBalancer.mm";
        v22 = 1024;
        v23 = 225;
        v24 = 2048;
        v25 = this;
        v26 = 2080;
        v27 = v10;
        v28 = 2080;
        v29 = __s1;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d loadbalancer@%p: Overridden Profile changed from '%s' to '%s'", buf, 0x30u);
      }

      v7 = Phase::StringId::operator=(this + 152, &v17);
      *(this + 29) |= 1uLL;
    }

    v12 = Phase::Controller::sClamp<double>(v7, a3, *(this + 22), *(this + 23));
    if (v12 == *(this + 25))
    {
      if ((*(this + 208) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *(this + 25) = v12;
      *(this + 208) = 1;
    }

    *(this + 208) = 0;
    *(this + 29) |= 2uLL;
LABEL_21:
    *(this + 216) = 1;
    v14 = **(Phase::Logger::GetInstance(v11) + 816);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(this + 20);
      v16 = *(this + 25);
      *buf = 136316162;
      v21 = "LoadBalancer.mm";
      v22 = 1024;
      v23 = 245;
      v24 = 2048;
      v25 = this;
      v26 = 2080;
      v27 = v15;
      v28 = 2048;
      v29 = v16;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d loadbalancer@%p: Overriding the Load Balancer with profile name: %s, balance: %f", buf, 0x30u);
    }

LABEL_23:

    goto LABEL_24;
  }

  v13 = **(Phase::Logger::GetInstance(ProfileId) + 816);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v21 = "LoadBalancer.mm";
    v22 = 1024;
    v23 = 210;
    v24 = 2048;
    v25 = this;
    v26 = 2048;
    v27 = a2;
    _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d loadbalancer@%p: Profile name hash 0x%llx not found. Not overriding profile.", buf, 0x26u);
  }

LABEL_24:
  if ((v19 & 1) == 0)
  {
    free(__s1);
  }
}
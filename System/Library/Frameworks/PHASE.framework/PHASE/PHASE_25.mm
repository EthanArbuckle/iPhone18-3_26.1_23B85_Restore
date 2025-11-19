Phase::Dispatch::TapsClientCommandProcessor *Phase::Dispatch::TapsClientCommandProcessor::TapsClientCommandProcessor(Phase::Dispatch::TapsClientCommandProcessor *this, Phase::Dispatch::TapsClientInterface *a2, Phase::Controller::TaskManager *a3)
{
  v6 = Phase::Dispatch::TransactionExecutor<Phase::Dispatch::TapsServerMessageType>::TransactionExecutor(this);
  *v6 = &unk_284D37EC8;
  v6[10] = a2;
  v7 = Phase::Controller::TaskManager::GetService<Phase::Controller::ClientTapRegistryProxy>(a3, 16);
  *(this + 11) = v7;
  if (!v7)
  {
    std::terminate();
  }

  return this;
}

uint64_t Phase::Dispatch::TransactionExecutor<Phase::Dispatch::TapsServerMessageType>::TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D32148;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(a1 + 72);
  *(a1 + 72) = v2;

  return a1;
}

Phase::Dispatch::TapsClientDirectDispatcher *Phase::Dispatch::TapsClientDirectDispatcher::TapsClientDirectDispatcher(Phase::Dispatch::TapsClientDirectDispatcher *this, Phase::Controller::TaskManager *a2)
{
  *this = &unk_284D37EF0;
  *(this + 1) = 0;
  v3 = Phase::Controller::TaskManager::GetService<Phase::Controller::TapManager>(a2, 18);
  *(this + 1) = v3;
  if (!v3)
  {
    std::terminate();
  }

  return this;
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::TapManager>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = *(v3 + 32 * a2);
  if (!v4)
  {
    v9 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = v4(3);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A51A628(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::TapsClientDirectDispatcher::TapCreatePreSpatialTap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 8);
  v10 = **(v9 + 8);
  v18 = 0;
  v17 = 1;
  v11 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v10, 48, &v18, &v17);
  if (!v11)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v15 = **(v10 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "CommandQueue.hpp";
      v21 = 1024;
      v22 = 100;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v17)
  {
    v12 = **(v10 + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v20 = "CommandQueue.hpp";
      v21 = 1024;
      v22 = 89;
      v23 = 2048;
      v24 = v18;
      v25 = 2048;
      v26 = 48;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v11 = &unk_284D37F68;
  v11[1] = v9;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v10, 48);
  atomic_store(0, (v10 + 40));
  return result;
}

void sub_23A51A870(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A51A784);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Dispatch::TapsClientDirectDispatcher::TapRemovePreSpatialTap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = **(v5 + 8);
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

  *v7 = &unk_284D37F90;
  v7[1] = v5;
  v7[2] = a2;
  v7[3] = a3;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v6, 32);
  atomic_store(0, (v6 + 40));
  return result;
}

void sub_23A51AAE4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A51A9FCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Dispatch::TapsClientDirectDispatcher::TapRegisterSubmix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 8);
  v10 = **(v9 + 8);
  v18 = 0;
  v17 = 1;
  v11 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v10, 48, &v18, &v17);
  if (!v11)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v15 = **(v10 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "CommandQueue.hpp";
      v21 = 1024;
      v22 = 100;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v17)
  {
    v12 = **(v10 + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v20 = "CommandQueue.hpp";
      v21 = 1024;
      v22 = 89;
      v23 = 2048;
      v24 = v18;
      v25 = 2048;
      v26 = 48;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v11 = &unk_284D37FB8;
  v11[1] = v9;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v10, 48);
  atomic_store(0, (v10 + 40));
  return result;
}

void sub_23A51AD6C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A51AC80);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Dispatch::TapsClientDirectDispatcher::TapDeRegisterSubmix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 8);
  v10 = **(v9 + 8);
  v18 = 0;
  v17 = 1;
  v11 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v10, 48, &v18, &v17);
  if (!v11)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v15 = **(v10 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "CommandQueue.hpp";
      v21 = 1024;
      v22 = 100;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v17)
  {
    v12 = **(v10 + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v20 = "CommandQueue.hpp";
      v21 = 1024;
      v22 = 89;
      v23 = 2048;
      v24 = v18;
      v25 = 2048;
      v26 = 48;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v11 = &unk_284D37FE0;
  v11[1] = v9;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v10, 48);
  atomic_store(0, (v10 + 40));
  return result;
}

void sub_23A51AFF4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A51AF08);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Dispatch::TapsClientDirectDispatcher::TapRegisterSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8);
  v8 = **(v7 + 8);
  v16 = 0;
  v15 = 1;
  v9 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v8, 40, &v16, &v15);
  if (!v9)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v13 = **(v8 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 100;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v15)
  {
    v10 = **(v8 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 89;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v9 = &unk_284D38008;
  v9[1] = v7;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v8, 40);
  atomic_store(0, (v8 + 40));
  return result;
}

void sub_23A51B278(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A51B18CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Dispatch::TapsClientDirectDispatcher::TapDeRegisterSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8);
  v8 = **(v7 + 8);
  v16 = 0;
  v15 = 1;
  v9 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v8, 40, &v16, &v15);
  if (!v9)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v13 = **(v8 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 100;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v15)
  {
    v10 = **(v8 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 89;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v9 = &unk_284D38030;
  v9[1] = v7;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v8, 40);
  atomic_store(0, (v8 + 40));
  return result;
}

void sub_23A51B4FC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A51B410);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Dispatch::TapsClientDirectDispatcher::TapRegisterTapReceiver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8);
  v8 = **(v7 + 8);
  v16 = 0;
  v15 = 1;
  v9 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v8, 40, &v16, &v15);
  if (!v9)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v13 = **(v8 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 100;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v15)
  {
    v10 = **(v8 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 89;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v9 = &unk_284D38058;
  v9[1] = v7;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v8, 40);
  atomic_store(0, (v8 + 40));
  return result;
}

void sub_23A51B780(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A51B694);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Dispatch::TapsClientDirectDispatcher::TapDeRegisterTapReceiver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = **(v5 + 8);
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

  *v7 = &unk_284D38080;
  v7[1] = v5;
  v7[2] = a2;
  v7[3] = a3;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v6, 32);
  atomic_store(0, (v6 + 40));
  return result;
}

void sub_23A51B9F4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A51B90CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A51BD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v11 = v10;
  v13 = *v11;
  if (*v11)
  {
    v9[10] = v13;
    operator delete(v13);
  }

  std::vector<std::any>::__destroy_vector::operator()[abi:ne200100](&a9);
  v14 = v9[5];
  v9[5] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v9);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::TaskManager::DefaultUpdate(uint64_t this, __n128 a2)
{
  v2 = *(this + 72);
  v3 = *(this + 80);
  while (v2 != v3)
  {
    this = *v2;
    if (*v2)
    {
      this = (**this)(this, a2);
    }

    ++v2;
  }

  return this;
}

void Phase::Controller::TaskManager::~TaskManager(std::__shared_weak_count **this)
{
  *this = &unk_284D380A8;
  Phase::Controller::TaskManager::StopUpdateLoop(this);
  v2 = this[17];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100]((this + 12));
  v3 = this[9];
  if (v3)
  {
    this[10] = v3;
    operator delete(v3);
  }

  v5 = (this + 6);
  std::vector<std::any>::__destroy_vector::operator()[abi:ne200100](&v5);
  v4 = this[5];
  this[5] = 0;
  if (v4)
  {
    (v4->~__shared_weak_count_0)(v4);
  }

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  Phase::Controller::TaskManager::~TaskManager(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::TaskManager::StopUpdateLoop(Phase::Controller::TaskManager *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(this + 16);
  if (v1)
  {
    v3 = *(this + 5);
    v4 = *(this + 17);
    v9 = v1;
    v10 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 64))(v3, &v9, 0);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v5 = *(this + 17);
    *(this + 16) = 0;
    *(this + 17) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    *(this + 18) = 0;
    v6 = **(Phase::Logger::GetInstance(v5) + 464);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "TaskManager.mm";
      v13 = 1024;
      v14 = 110;
      v15 = 2048;
      v16 = this;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: TaskManager: update loop stopped", buf, 0x1Cu);
    }

    v8 = *(this + 9);
    v7 = *(this + 10);
    while (v8 != v7)
    {
      if (*v8)
      {
        (*(**v8 + 8))(*v8);
      }

      ++v8;
    }
  }
}

void sub_23A51C008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::TaskManager::ClearServiceRegistry(Phase::Controller::TaskManager *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = *(this + 10);
  v5 = (this + 72);
  v6 = v5[2];
  v7 = v4 - v3;
  if (v6 - v3 < (v4 - v3))
  {
    v8 = v7 >> 3;
    if (v3)
    {
      *(this + 10) = v3;
      operator delete(v3);
      v6 = 0;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    if (!(v8 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= v8)
      {
        v9 = v7 >> 3;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::SubmixController *>>(v5, v10);
      }
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  if (v4 != v3)
  {
    bzero(v3, v4 - v3);
  }

  *(this + 10) = *v5 + v7;
  v11 = *(this + 6);
  v12 = *(this + 7);
  while (v11 != v12)
  {
    v3 = std::any::reset[abi:ne200100](v11);
    v11 += 4;
  }

  v13 = **(Phase::Logger::GetInstance(v3) + 464);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "TaskManager.mm";
    v16 = 1024;
    v17 = 45;
    v18 = 2048;
    v19 = this;
    _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: TaskManager: cleared service registry", &v14, 0x1Cu);
  }
}

uint64_t Phase::Controller::TaskManager::SetUpdateFunction(uint64_t a1, uint64_t a2)
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 128))
  {
    v8 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "TaskManager.mm";
      v12 = 1024;
      v13 = 61;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: !mUpdateJob is false.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: !mUpdateJob is false.");
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v14 = &v10;
      (*(*v3 + 24))(v3, &v10);
    }

    else
    {
      v14 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v14 = 0;
  }

  v4 = a1 + 96;
  if (&v10 != (a1 + 96))
  {
    v5 = v14;
    v6 = *(a1 + 120);
    if (v14 == &v10)
    {
      if (v6 == v4)
      {
        (*(*v14 + 24))();
        (*(*v14 + 32))(v14);
        v14 = 0;
        (*(**(a1 + 120) + 24))(*(a1 + 120), &v10);
        (*(**(a1 + 120) + 32))(*(a1 + 120));
        *(a1 + 120) = 0;
        v14 = &v10;
        (*(v15[0] + 24))(v15, a1 + 96);
        (*(v15[0] + 32))(v15);
      }

      else
      {
        (*(*v14 + 24))();
        (*(*v14 + 32))(v14);
        v14 = *(a1 + 120);
      }

      *(a1 + 120) = v4;
    }

    else if (v6 == v4)
    {
      (*(*v6 + 24))(*(a1 + 120), &v10);
      (*(**(a1 + 120) + 32))(*(a1 + 120));
      *(a1 + 120) = v14;
      v14 = &v10;
    }

    else
    {
      v14 = *(a1 + 120);
      *(a1 + 120) = v5;
    }
  }

  return std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](&v10);
}

void sub_23A51C688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Controller::TaskManager::StartUpdateLoop(Phase::Controller::TaskManager *this, double a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(this + 16);
  v5 = **(Phase::Logger::GetInstance(this) + 464);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "TaskManager.mm";
      *&buf[12] = 1024;
      v19 = 98;
      v20 = 2048;
      v21 = this;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: TaskManager: attempting to start update loop while already running", buf, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "TaskManager.mm";
      *&buf[12] = 1024;
      v19 = 76;
      v20 = 2048;
      v21 = this;
      v22 = 2048;
      v23 = a2;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: TaskManager: starting update loop with target framerate: %F1 Hz", buf, 0x26u);
    }

    *(this + 18) = a2;
    v7 = *(this + 5);
    BYTE3(v21) = 13;
    strcpy(buf, "Engine-Update");
    (*(*v7 + 16))(&v15, v7, buf);
    v8 = v15;
    v15 = 0uLL;
    v9 = *(this + 17);
    *(this + 8) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }
    }

    if (SBYTE3(v21) < 0)
    {
      operator delete(*buf);
    }

    v10 = *(this + 16);
    *(v10 + 256) = &unk_284D38120;
    *(v10 + 264) = Phase::Controller::TaskManager::UpdateFrame;
    *(v10 + 272) = 0;
    v11 = 1.0 / a2;
    *(v10 + 280) = this;
    *(v10 + 288) = 0xBFF0000000000000;
    *(v10 + 383) = 1;
    atomic_store(1u, (v10 + 40));
    *(this + 19) = std::chrono::steady_clock::now().__d_.__rep_ / 1000000000.0;
    v12 = *(this + 17);
    v13 = *(this + 16);
    v14 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = 0;
    Phase::JobManager::ScheduleJobWithPeriod(v7, &v13, v16, v11);
    std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](v16);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void sub_23A51C938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](&a13);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::TaskManager::UpdateFrame(Phase::Controller::TaskManager *this, double a2)
{
  v2 = a2;
  if (a2 < 0.0)
  {
    v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v5 = *(this + 19);
    v2 = v4.__d_.__rep_ / 1000000000.0 - v5;
    *(this + 19) = v5 + v2;
  }

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this);
  v6 = *(this + 15);
  v8 = v2;
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6, &v8);
}

void std::vector<std::any>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 4;
        std::any::reset[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::__function::__func<std::__bind<void (Phase::Controller::TaskManager::*)(double),Phase::Controller::TaskManager*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (Phase::Controller::TaskManager::*)(double),Phase::Controller::TaskManager*,std::placeholders::__ph<1> const&>>,void ()(double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D380D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (Phase::Controller::TaskManager::*)(double),Phase::Controller::TaskManager*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (Phase::Controller::TaskManager::*)(double),Phase::Controller::TaskManager*,std::placeholders::__ph<1> const&>>,void ()(double)>::operator()(void *a1, double *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t Phase::Command<128>::Invoker<std::__mem_fn<void (Phase::Controller::TaskManager::*)(double)>,void,Phase::Controller::TaskManager*,double>::Call(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32));
}

_DWORD *Phase::SpatialModeler::Telemetry::AddSceneObserverResults(_DWORD *result, uint64_t a2)
{
  v2 = 0;
  ++result[166];
  do
  {
    v3 = *(a2 + v2);
    if (v3)
    {
      break;
    }

    v4 = v2++ == 18;
  }

  while (!v4);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v6 = 0;
    do
    {
      v5 = *(a2 + 19 + v6);
      if (v5)
      {
        break;
      }

      v4 = v6++ == 18;
    }

    while (!v4);
  }

  v7 = 0;
  result[167] += v5;
  v8 = a2 + 38;
  do
  {
    v9 = *(v8 + v7);
    if (v9)
    {
      break;
    }

    v4 = v7++ == 18;
  }

  while (!v4);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = 0;
    do
    {
      v10 = *(a2 + 57 + v11);
      if (v10)
      {
        break;
      }

      v4 = v11++ == 18;
    }

    while (!v4);
  }

  v12 = 0;
  result[168] += v10;
  do
  {
    result[v12 + 175] += *(a2 + v12);
    ++v12;
  }

  while (v12 != 19);
  for (i = 0; i != 19; ++i)
  {
    result[i + 194] += *(a2 + 19 + i);
  }

  for (j = 0; j != 19; ++j)
  {
    result[j + 213] += *(v8 + j);
  }

  for (k = 0; k != 19; ++k)
  {
    result[k + 232] += *(a2 + 57 + k);
  }

  return result;
}

uint64_t Phase::SpatialModeler::Telemetry::Send(Phase::SpatialModeler::Telemetry *this)
{
  if ((atomic_load_explicit(_MergedGlobals_23, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_MergedGlobals_23))
  {
    xmmword_27DF97C40 = xmmword_23A5981D0;
    dword_27DF97C50 = 0;
    __cxa_guard_release(_MergedGlobals_23);
  }

  result = Phase::Throttle::ShouldFire(&xmmword_27DF97C40, 0);
  if (result)
  {
    analytics_send_event_lazy();
    if (*(this + 31) == 10)
    {
      analytics_send_event_lazy();
    }

    if (*(this + 63) == 10)
    {
      analytics_send_event_lazy();
    }

    if (*(this + 95) == 10)
    {
      analytics_send_event_lazy();
    }

    if (*(this + 127) == 10)
    {
      analytics_send_event_lazy();
    }

    if (*(this + 159) == 10)
    {
      analytics_send_event_lazy();
    }

    analytics_send_event_lazy();
    analytics_send_event_lazy();
    analytics_send_event_lazy();
    analytics_send_event_lazy();
    return analytics_send_event_lazy();
  }

  return result;
}

xpc_object_t ___ZN5Phase14SpatialModeler9Telemetry4SendEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = 0;
  v4 = v1 + 676;
  do
  {
    std::to_string(&v7, v3);
    if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v7;
    }

    else
    {
      v5 = v7.__r_.__value_.__r.__words[0];
    }

    xpc_dictionary_set_uint64(v2, v5, *(v4 + 4 * v3));
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    *(v4 + 4 * v3++) = 0;
  }

  while (v3 != 4);
  return v2;
}

void sub_23A51D1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t ___ZN5Phase14SpatialModeler9Telemetry4SendEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_double(v2, "mean_free_path", *(v1 + 640));
  xpc_dictionary_set_double(v2, "surface_area", *(v1 + 644));
  xpc_dictionary_set_double(v2, "volume", *(v1 + 648));
  xpc_dictionary_set_uint64(v2, "rays_per_query", *(v1 + 652));
  xpc_dictionary_set_uint64(v2, "intersections_per_query", *(v1 + 656));
  LODWORD(v3) = *(v1 + 660);
  xpc_dictionary_set_double(v2, "lr_ir_build_frequency", v3 / 600.0);
  *(v1 + 660) = 0;
  LODWORD(v4) = *(v1 + 664);
  xpc_dictionary_set_double(v2, "scene_observer_frequency", v4 / 600.0);
  *(v1 + 664) = 0;
  LODWORD(v5) = *(v1 + 668);
  xpc_dictionary_set_double(v2, "trace_frequency", v5 / 600.0);
  *(v1 + 668) = 0;
  LODWORD(v6) = *(v1 + 672);
  xpc_dictionary_set_double(v2, "building_metadata_frequency", v6 / 600.0);
  *(v1 + 672) = 0;
  xpc_dictionary_set_uint64(v2, "triangle_count", *(v1 + 692));
  LODWORD(v7) = *(v1 + 696);
  xpc_dictionary_set_double(v2, "triangle_count_change_frequency", v7 / 600.0);
  *(v1 + 696) = 0;
  return v2;
}

xpc_object_t ___ZZN5Phase14SpatialModeler9Telemetry4SendEvENK3__0clIPKcNS_8SubbandsIfEEEEDaT_RKT0__block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = *(a1 + 32);
  if (*(v3 + 124))
  {
    v4 = 0;
    do
    {
      xpc_dictionary_set_double(v2, _ZZZN5Phase14SpatialModeler9Telemetry4SendEvENK3__0clIPKcNS_8SubbandsIfEEEEDaT_RKT0_E9bandNames[v4], *(v3 + 4 * v4));
      ++v4;
      v3 = *(a1 + 32);
    }

    while (v4 < *(v3 + 124));
  }

  xpc_dictionary_set_double(v2, "din", ((*(v3 + 16) + *(v3 + 20)) * 0.5));
  v5 = *(a1 + 32);
  v6 = *(v5 + 124);
  if (v6)
  {
    v7 = 0.0;
    v8 = *(v5 + 124);
    do
    {
      v9 = *v5;
      v5 += 4;
      v7 = v7 + v9;
      --v8;
    }

    while (v8);
    if (v6 != 1)
    {
      v7 = v7 / v6;
    }
  }

  else
  {
    v7 = 0.0;
  }

  xpc_dictionary_set_double(v2, "mean", v7);
  return v2;
}

xpc_object_t ___ZZN5Phase14SpatialModeler9Telemetry4SendEvENK3__1clIPKcNSt3__15arrayIjLm19EEEEEDaT_RT0__block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v4 = 0;
  v5 = *(a1 + 32);
  do
  {
    LODWORD(v3) = *(v5 + 4 * v4);
    xpc_dictionary_set_double(v2, Phase::SpatialModeler::kCauseNames[v4], v3 / 600.0);
    v5 = *(a1 + 32);
    *(v5 + 4 * v4++) = 0;
  }

  while (v4 != 19);
  return v2;
}

float Phase::Trace::YawFromAffine(float *a1)
{
  Phase::Matrix33From<float>(a1, &v6);
  if (fabsf(v8) >= 1.0)
  {
    v2 = v6.f32[0];
    v1 = -v6.f32[2];
  }

  else
  {
    v1 = v7;
    v2 = v9;
  }

  result = atan2f(v1, v2) * -57.296;
  v4 = fabsf(result);
  if (v4 >= 1.0e15 || v4 <= 1.0e-15)
  {
    return 0.0;
  }

  return result;
}

uint64_t Phase::Trace::PostDirectPathSpatialModelerOutput(Phase::Logger *a1, uint64_t a2, float *a3)
{
  result = Phase::Logger::GetInstance(a1);
  if (*(result + 1632) == 1)
  {
    Phase::Trace::YawFromAffine(a3);
    return kdebug_trace();
  }

  return result;
}

uint64_t Phase::Trace::PostSharedListenerTransformUpdate(Phase::Logger *a1, float *a2)
{
  result = Phase::Logger::GetInstance(a1);
  if (*(result + 1632) == 1)
  {
    Phase::Trace::YawFromAffine(a2);
    return kdebug_trace();
  }

  return result;
}

uint64_t Phase::Trace::PostSignalStatsTraceIfSignificant(Phase::Trace *this, const float *__A, vDSP_Length __N, float a4)
{
  if (__N)
  {
    v6 = 0;
    while (fabsf(__A[v6]) <= 0.01)
    {
      if (__N == ++v6)
      {
        return result;
      }
    }

    if ((v6 / a4) != -1.0)
    {
      __C = 0.0;
      vDSP_rmsqv(__A, 1, &__C, __N);
      log10f(__C);
      v9 = 0.0;
      v8 = 0;
      vDSP_maxmgvi(__A, 1, &v9, &v8, __N);
      log10f(v9);
      return kdebug_trace();
    }
  }

  return result;
}

void Phase::SpatialModeler::RaycastWithEnergyVsMesh(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t *a4)
{
  v76 = *MEMORY[0x277D85DE8];
  v66 = -1;
  v4 = *a4;
  v5 = **(a4[1] + 120);
  v6 = *(*(**(v5 + 16) + 16 * *(v5 + 24)) + 8);
  v7 = a3[1].f32[0];
  v8 = a3[3].f32[0];
  v59 = vcvtq_f64_f32(*a3);
  *v60 = v7;
  *(v60 + 8) = vcvtq_f64_f32(a3[2]);
  *(&v60[1] + 1) = v8;
  v9 = *(v5 + 56);
  v10 = **(v5 + 48);
  v11 = *(v10 + 16 * v9);
  if (v11[3])
  {
    v56 = v4;
    v13 = 0;
    v14 = -1.0;
    v15 = 3.4028e38;
    do
    {
      v16 = v11[1] + v11[4] * v13;
      if (*(v16 + 24) != 1)
      {
        __assert_rtn("RaycastVsMesh", "GeoRaycastUtility.hpp", 533, "MeshTopology::Triangles == submesh.mTopology");
      }

      v17 = *(*(**(v16 + 48) + 16 * *(v16 + 56)) + 24);
      if (v17)
      {
        v18 = 0;
        v19 = (*(*(**(v16 + 32) + 16 * *(v16 + 40)) + 8) + 8);
        do
        {
          v20 = (v6 + 12 * *(v19 - 2));
          v21 = (v6 + 12 * *(v19 - 1));
          v22 = (v6 + 12 * *v19);
          v67 = vcvtq_f64_f32(*v20);
          *v68 = v20[1].f32[0];
          *(v68 + 8) = vcvtq_f64_f32(*v21);
          *(&v68[1] + 1) = v21[1].f32[0];
          v69 = vcvtq_f64_f32(*v22);
          *&v70 = v22[1].f32[0];
          Phase::Intersection<double>(v67.f64, v59.f64, &v73);
          if (v75 == 1 && v73 < a3[3].f32[1] && v73 > a3[1].f32[1])
          {
            if (v13 >= 0x100)
            {
              std::terminate();
            }

            v23 = v73;
            v15 = fminf(v15, v23);
            v14 = fmaxf(v14, v23);
            v66 = (v13 << 24) | v18;
          }

          v19 += 3;
          ++v18;
        }

        while (v17 != v18);
        v9 = *(v5 + 56);
        v10 = **(v5 + 48);
      }

      ++v13;
      v11 = *(v10 + 16 * v9);
    }

    while (v13 < v11[3]);
    if (v14 > v15)
    {
      v24 = **(a4[1] + 120);
      v65 = 0;
      Phase::Geometry::GetMaterials(v24, &v66, 1, &v65, 1, 1);
      if (*(a1 + 136) > v65)
      {
        v25 = *(a1 + 120) + 24 * v65;
        if (*(v25 + 20) == HIDWORD(v65))
        {
          v26 = *v25;
          if (*v25)
          {
            if (*v26 == 1)
            {
              v27 = *(*(v26 + 40) + 40 * a3[5].i32[1]);
              if (v27)
              {
                v28 = (v14 - v15) * *(v56 + 76);
                a3[7].f32[1] = a3[7].f32[1] + v28;
                v29 = v28 / *(v27 + 272);
                if (v29 <= 1.0)
                {
                  v40 = *(v27 + 268);
                  v67 = 0u;
                  memset(v68, 0, sizeof(v68));
                  v69 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  memset(v72, 0, sizeof(v72));
                  if (v40)
                  {
                    v41 = 1.0 - ((1.0 - v29) * (1.0 - v29));
                    v42 = (v27 + 144);
                    v43 = &v67;
                    v44 = v40;
                    do
                    {
                      v45 = *v42++;
                      *v43++ = v41 * v45;
                      --v44;
                    }

                    while (v44);
                    v63 = 0u;
                    memset(v64, 0, 28);
                    v61 = 0u;
                    v62 = 0u;
                    memset(v60, 0, sizeof(v60));
                    v46 = &v59;
                    v47 = &v67;
                    v59 = 0u;
                    do
                    {
                      v48 = *v47++;
                      *v46++ = fmaxf(v48, 0.0);
                      --v40;
                    }

                    while (v40);
LABEL_36:
                    v49 = 0;
                    v50 = 0;
                    v51 = 0;
                    v73 = v59.f64[0];
                    v74 = *&v59.f64[1];
                    v67.f64[0] = 0.0;
                    LODWORD(v67.f64[1]) = 0;
                    do
                    {
                      if (v50 <= 2)
                      {
                        v49 = v50 + 1;
                        *(v67.f64 + v50++) = *(&v73 + v51);
                      }

                      v51 += 4;
                    }

                    while (v51 != 12);
                    if (v49 <= 2)
                    {
                      bzero(&v67 + 4 * v49, 12 - 4 * v49);
                    }

                    v52 = 0;
                    v53 = 0;
                    v54 = 0;
                    v73 = COERCE_DOUBLE(vadd_f32(*&v67.f64[0], a3[6]));
                    v74 = *&v67.f64[1] + a3[7].f32[0];
                    v67.f64[0] = 0.0;
                    LODWORD(v67.f64[1]) = 0;
                    do
                    {
                      if (v53 <= 2)
                      {
                        v52 = v53 + 1;
                        *(v67.f64 + v53++) = *(&v73 + v54);
                      }

                      v54 += 4;
                    }

                    while (v54 != 12);
                    if (v52 <= 2)
                    {
                      bzero(&v67 + 4 * v52, 12 - 4 * v52);
                    }

                    v55 = LODWORD(v67.f64[1]);
                    a3[6] = *&v67.f64[0];
                    a3[7].i32[0] = v55;
                    return;
                  }
                }

                else
                {
                  v30 = log2f(v29);
                  v31 = *(v27 + 268);
                  v67 = 0u;
                  memset(v68, 0, sizeof(v68));
                  v69 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  memset(v72, 0, sizeof(v72));
                  if (v31)
                  {
                    v32 = v30 * 6.0206;
                    v33 = (v27 + 144);
                    v34 = &v67;
                    v35 = v31;
                    do
                    {
                      v36 = *v33++;
                      *v34++ = v32 + v36;
                      --v35;
                    }

                    while (v35);
                    v63 = 0u;
                    memset(v64, 0, 28);
                    v61 = 0u;
                    v62 = 0u;
                    memset(v60, 0, sizeof(v60));
                    v37 = &v59;
                    v38 = &v67;
                    v59 = 0u;
                    do
                    {
                      v39 = *v38++;
                      *v37++ = fmaxf(v39, 0.0);
                      --v31;
                    }

                    while (v31);
                    goto LABEL_36;
                  }
                }

                memset(v64, 0, sizeof(v64));
                v62 = 0uLL;
                v63 = 0uLL;
                v61 = 0uLL;
                v59 = 0uLL;
                memset(v60, 0, sizeof(v60));
                goto LABEL_36;
              }
            }
          }
        }
      }
    }
  }
}

float Phase::SpatialModeler::RaycastWithEnergyVsVoxelTree(uint64_t a1, double a2, double a3, double a4, double a5, double a6, float64x2_t a7, uint64_t a8, float32x2_t *a9, uint64_t *a10)
{
  v74 = *MEMORY[0x277D85DE8];
  v63 = -1.0;
  v64 = 3.4028e38;
  v62 = -1;
  v61[0] = &v64;
  v61[1] = &v63;
  v61[2] = &v62;
  v11 = *a10;
  v10 = a10[1];
  v12 = **(v10 + 120);
  *&v65 = v61;
  *(&v65 + 1) = v10;
  v13 = *(v12 + 48);
  v14 = **(v12 + 40);
  v15 = *(v14 + 16 * v13);
  if (v15[3])
  {
    v19 = 0;
    do
    {
      v20 = v15[1] + v15[4] * v19;
      if (*(*(**(v20 + 40) + 16 * *(v20 + 48)) + 24))
      {
        _ZN5Phase8Geometry7details21RaycastVsVoxelSubtreeILb0ERKZNS0_18RaycastVsVoxelTreeILb0ERZNS_14SpatialModeler28RaycastWithEnergyVsVoxelTreeERNS0_11SystemStateERNS0_15SceneQueryBatchERNS0_10SceneQueryERNS0_20SceneQueryShapeStateEE3__0EEvS6_RNS0_12RaycastInputERKNS0_5ShapeEOT0_EUlT_SK_T1_E_EEvS6_SG_RKNS0_12VoxelSubtreeESL_(a9, v20, &v65, a2, a3, a4, a5, a6, a7);
        v13 = *(v12 + 48);
        v14 = **(v12 + 40);
      }

      ++v19;
      v15 = *(v14 + 16 * v13);
    }

    while (v15[3] > v19);
    *&a2 = v63;
    if (v63 > v64)
    {
      v21 = **(a10[1] + 120);
      v60 = 0;
      Phase::Geometry::GetMaterials(v21, &v62, 1, &v60, 1, 1);
      if (*(a1 + 136) > v60)
      {
        v22 = *(a1 + 120) + 24 * v60;
        if (*(v22 + 20) == HIDWORD(v60))
        {
          v23 = *v22;
          if (*v22)
          {
            if (*v23 == 1)
            {
              v24 = *(*(v23 + 40) + 40 * a9[5].i32[1]);
              if (v24)
              {
                v25 = (v63 - v64) * *(v11 + 76);
                a9[7].f32[1] = a9[7].f32[1] + v25;
                v26 = v25 / *(v24 + 272);
                if (v26 <= 1.0)
                {
                  v37 = *(v24 + 268);
                  v65 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v70 = 0u;
                  memset(v71, 0, sizeof(v71));
                  if (v37)
                  {
                    v38 = 1.0 - ((1.0 - v26) * (1.0 - v26));
                    v39 = (v24 + 144);
                    v40 = &v65;
                    v41 = v37;
                    do
                    {
                      v42 = *v39++;
                      *v40++ = v38 * v42;
                      --v41;
                    }

                    while (v41);
                    v58 = 0u;
                    memset(v59, 0, 28);
                    v56 = 0u;
                    v57 = 0u;
                    v54 = 0u;
                    v55 = 0u;
                    v43 = &v53;
                    v44 = &v65;
                    v53 = 0u;
                    do
                    {
                      v45 = *v44++;
                      *v43++ = fmaxf(v45, 0.0);
                      --v37;
                    }

                    while (v37);
LABEL_26:
                    v46 = 0;
                    v47 = 0;
                    v48 = 0;
                    v72 = v53;
                    v73 = *(&v53 + 2);
                    *&v65 = 0;
                    DWORD2(v65) = 0;
                    do
                    {
                      if (v47 <= 2)
                      {
                        v46 = v47 + 1;
                        *(&v65 + v47++) = v72.i32[v48];
                      }

                      ++v48;
                    }

                    while (v48 != 3);
                    if (v46 <= 2)
                    {
                      bzero(&v65 + 4 * v46, 12 - 4 * v46);
                    }

                    v49 = 0;
                    v50 = 0;
                    v51 = 0;
                    v72 = vadd_f32(*&v65, a9[6]);
                    v73 = *(&v65 + 2) + a9[7].f32[0];
                    *&v65 = 0;
                    DWORD2(v65) = 0;
                    do
                    {
                      if (v50 <= 2)
                      {
                        v49 = v50 + 1;
                        *(&v65 + v50++) = v72.i32[v51];
                      }

                      ++v51;
                    }

                    while (v51 != 3);
                    if (v49 <= 2)
                    {
                      bzero(&v65 + 4 * v49, 12 - 4 * v49);
                    }

                    LODWORD(a2) = DWORD2(v65);
                    a9[6] = v65;
                    a9[7].i32[0] = LODWORD(a2);
                    return *&a2;
                  }
                }

                else
                {
                  v27 = log2f(v26);
                  v28 = *(v24 + 268);
                  v65 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v70 = 0u;
                  memset(v71, 0, sizeof(v71));
                  if (v28)
                  {
                    v29 = v27 * 6.0206;
                    v30 = (v24 + 144);
                    v31 = &v65;
                    v32 = v28;
                    do
                    {
                      v33 = *v30++;
                      *v31++ = v29 + v33;
                      --v32;
                    }

                    while (v32);
                    v58 = 0u;
                    memset(v59, 0, 28);
                    v56 = 0u;
                    v57 = 0u;
                    v54 = 0u;
                    v55 = 0u;
                    v34 = &v53;
                    v35 = &v65;
                    v53 = 0u;
                    do
                    {
                      v36 = *v35++;
                      *v34++ = fmaxf(v36, 0.0);
                      --v28;
                    }

                    while (v28);
                    goto LABEL_26;
                  }
                }

                memset(v59, 0, sizeof(v59));
                v57 = 0uLL;
                v58 = 0uLL;
                v55 = 0uLL;
                v56 = 0uLL;
                v53 = 0uLL;
                v54 = 0uLL;
                goto LABEL_26;
              }
            }
          }
        }
      }
    }
  }

  return *&a2;
}

void Phase::SpatialModeler::RaycastWithEnergyVsScene(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, int a5)
{
  v55 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v52 = 0;
    v53 = 0.0;
    *&v44 = 0;
    DWORD2(v44) = 0;
    do
    {
      if (v7 <= 2)
      {
        v6 = v7 + 1;
        *(&v45[-1] + v7++) = v52.i32[v8];
      }

      ++v8;
    }

    while (v8 != 3);
    if (v6 <= 2)
    {
      v9 = a2;
      v10 = a3;
      bzero(&v45[-1] + 4 * v6, 12 - 4 * v6);
      a2 = v9;
      a3 = v10;
    }

    HIDWORD(v44) = 0;
    *(a3 + 16) = 0;
    a3[3] = v44;
  }

  v11 = a3 + 2;
  v48 = *(a3 + 4);
  v49 = *(a3 + 10);
  v12 = *(a1 + 168);
  v13 = *(a1 + 184);
  v14 = &v12[3 * v13];
  if (v13)
  {
    v15 = *v12;
    if (!*v12)
    {
      v16 = v12 + 3;
      while (1)
      {
        v12 = v16;
        if (v16 >= v14)
        {
          break;
        }

        v16 += 3;
        v15 = *v12;
        if (*v12)
        {
          goto LABEL_17;
        }
      }

      v15 = 0;
    }

LABEL_17:
    v17 = v14;
  }

  else
  {
    v15 = 0;
    v17 = *(a1 + 168);
  }

  if (v12 != v14)
  {
    v18 = a3 + 3;
    v39 = v14;
    v40 = a3;
    v42 = a2;
    do
    {
      if (v15 && v15->i32[0] == 4 && (v15[18].i32[0] & *(a2 + 72)) != 0)
      {
        v20 = v15[15];
        v19 = v15[16];
        while (v20 != v19)
        {
          v21 = *v20;
          if (*(a1 + 160) > *v20)
          {
            v22 = *(a1 + 144) + 24 * v21;
            if (*(v22 + 20) == HIDWORD(v21))
            {
              v23 = *v22;
              if (*v22)
              {
                if ((v23[4] & *(a2 + 72)) != 0)
                {
                  v24 = *a4 + 32 * *v23;
                  v26 = *(v24 + 24);
                  v25 = (v24 + 24);
                  if (v26)
                  {
                    v43[0] = v15;
                    v43[1] = v23;
                    v27 = a3[1];
                    v44 = *a3;
                    v45[0] = v27;
                    v45[1] = *v11;
                    v46 = *v18;
                    v47 = *(v18 + 4);
                    Phase::TransformPositionByInverse<float>(v15 + 6, &v44, &v52);
                    *&v44 = v52;
                    *(&v44 + 2) = v53;
                    v28 = v15[7].i32[1];
                    v29 = -v15[7].f32[0];
                    v52 = vneg_f32(v15[6]);
                    v53 = v29;
                    v54 = v28;
                    Phase::operator*<float>(&v52, v45, &v50);
                    v30 = 0;
                    v31 = 0;
                    v32 = 0;
                    *&v45[0] = v50;
                    v33 = 1.0 / v15[9].f32[1];
                    *(&v44 + 3) = *(&v44 + 3) * v33;
                    DWORD2(v45[0]) = v51;
                    *(v45 + 3) = v33 * *(v45 + 3);
                    v50 = 0;
                    v51 = 0;
                    v52 = 0;
                    v53 = 0.0;
                    do
                    {
                      if (v31 <= 2)
                      {
                        v30 = v31 + 1;
                        v52.i32[v31++] = *(&v50 + v32);
                      }

                      v32 += 4;
                    }

                    while (v32 != 12);
                    if (v30 <= 2)
                    {
                      bzero(&v52 + 4 * v30, 12 - 4 * v30);
                    }

                    *&v46 = v52;
                    *(&v46 + 1) = LODWORD(v53);
                    if (!*v25)
                    {
                      std::__throw_bad_function_call[abi:ne200100]();
                    }

                    (*(**v25 + 48))(*v25, a1, v42, &v44, v43);
                    v34 = 0;
                    v14 = v39;
                    a3 = v40;
                    v40[15] = *(&v46 + 3) + v40[15];
                    v35 = 1;
                    do
                    {
                      while (1)
                      {
                        v36 = *(&v46 + v34) + *(v18 + v34);
                        *(v18 + v34) = v36;
                        if (v35)
                        {
                          break;
                        }

                        v35 = 0;
                        if (++v34 == 3)
                        {
                          goto LABEL_45;
                        }
                      }

                      v37 = *(v11 + v34);
                      v35 = v36 > v37;
                      ++v34;
                    }

                    while (v34 != 3);
                    if (v36 > v37)
                    {
                      v40[7] = -1.0;
                    }

LABEL_45:
                    a2 = v42;
                  }
                }
              }
            }
          }

          ++v20;
        }
      }

      if (v12 < v17)
      {
        v38 = v12 + 3;
        while (1)
        {
          v12 = v38;
          if (v38 >= v17)
          {
            break;
          }

          v38 += 3;
          v15 = *v12;
          if (*v12)
          {
            goto LABEL_53;
          }
        }

        v15 = 0;
      }

LABEL_53:
      ;
    }

    while (v12 != v14);
  }

  *v11 = v48;
  *(v11 + 2) = v49;
}

void Phase::SpatialModeler::IterateTraceWithEnergyBatch(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 88))
  {
    __assert_rtn("IterateTraceWithEnergyBatch", "TraceWithEnergy.cpp", 277, "inSceneQueryFunctionTable.mTestScene");
  }

  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  Phase::Geometry::RunSceneQueriesOnRange(a1, a2, a3, 0, *(a2 + 96));
  Phase::SpatialModeler::CalculateFinalEnergyLoss(a1, a2, v7);
  atomic_store(3u, a2);
  atomic_store(2u, (a2 + 4));
  if (*(a2 + 48))
  {

    std::function<void ()(Phase::Geometry::SceneQueryBatch *)>::operator()(a2 + 24, a2);
  }
}

void Phase::SpatialModeler::CalculateFinalEnergyLoss(Phase::SpatialModeler *this, Phase::Geometry::SystemState *a2, Phase::Geometry::SceneQueryBatch *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *(this + 25);
  if (*(this + 28) > v4)
  {
    v5 = *(this + 12) + 24 * v4;
    if (*(v5 + 20) == HIDWORD(v4))
    {
      v6 = *v5;
      if (*v5)
      {
        if (*v6 == 1)
        {
          v7 = *(*(v6 + 40) + 40);
          v8 = *(v7 + 224);
          v38[4] = *(v7 + 208);
          v38[5] = v8;
          v9 = *(v7 + 256);
          v38[6] = *(v7 + 240);
          v39 = v9;
          v10 = *(v7 + 160);
          v38[0] = *(v7 + 144);
          v38[1] = v10;
          v11 = *(v7 + 192);
          v38[2] = *(v7 + 176);
          v38[3] = v11;
          v12 = *(a2 + 24);
          if (v12)
          {
            v13 = 0;
            v14 = *(v7 + 272);
            v15 = HIDWORD(v39);
            v16 = 4 * HIDWORD(v39);
            do
            {
              v17 = (*(a2 + 11) + *(a2 + 25) * v13);
              v18 = (v17[3].f32[1] - v17[1].f32[1]) - v17[7].f32[1];
              if (v18 > 0.0)
              {
                memset(v35, 0, 124);
                if (v15)
                {
                  v19 = 0;
                  do
                  {
                    *(v35 + v19) = v18 * *(v38 + v19);
                    v19 += 4;
                  }

                  while (v16 != v19);
                  v20 = *&v35[0];
                  v21 = *(v35 + 2);
                }

                else
                {
                  v20 = 0;
                  v21 = 0.0;
                }

                v22 = 0;
                v23 = 0;
                v24 = 0;
                v40 = v20;
                v41 = v21;
                v36 = 0;
                v37 = 0.0;
                do
                {
                  if (v23 <= 2)
                  {
                    v22 = v23 + 1;
                    v36.i32[v23++] = v40.i32[v24];
                  }

                  ++v24;
                }

                while (v24 != 3);
                if (v22 <= 2)
                {
                  bzero(&v36 + 4 * v22, 12 - 4 * v22);
                }

                v25 = 0;
                v26 = 0;
                v27 = 0;
                v40 = vadd_f32(v36, v17[6]);
                v41 = v37 + v17[7].f32[0];
                v36 = 0;
                v37 = 0.0;
                do
                {
                  if (v26 <= 2)
                  {
                    v25 = v26 + 1;
                    v36.i32[v26++] = v40.i32[v27];
                  }

                  ++v27;
                }

                while (v27 != 3);
                if (v25 <= 2)
                {
                  bzero(&v36 + 4 * v25, 12 - 4 * v25);
                }

                v28 = v37;
                v17[6] = v36;
                v17[7].f32[0] = v28;
                v17[8].f32[0] = v18 / v14;
                v12 = *(a2 + 24);
              }

              ++v13;
            }

            while (v13 < v12);
          }
        }
      }
    }
  }

  if (*(a2 + 24))
  {
    v29 = 0;
    do
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = (*(a2 + 11) + *(a2 + 25) * v29);
      *&v38[0] = vminnm_f32(v33[6], v33[4]);
      DWORD2(v38[0]) = fminf(v33[7].f32[0], v33[5].f32[0]);
      *&v35[0] = 0;
      DWORD2(v35[0]) = 0;
      do
      {
        if (v31 <= 2)
        {
          v30 = v31 + 1;
          *(v35 + v31++) = *(v38 + v32);
        }

        v32 += 4;
      }

      while (v32 != 12);
      if (v30 <= 2)
      {
        bzero(v35 + 4 * v30, 12 - 4 * v30);
      }

      v34 = DWORD2(v35[0]);
      v33[6] = *&v35[0];
      v33[7].i32[0] = v34;
      ++v29;
    }

    while (v29 < *(a2 + 24));
  }
}

void Phase::SpatialModeler::RunTraceWithEnergyBatchAsync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 88))
  {
    __assert_rtn("IterateBatchAsync", "GeoSceneQueryUtility.hpp", 85, "inSceneQueryFunctionTable.mTestScene");
  }

  v6 = *(a2 + 80);
  if (v6 <= 0xC0)
  {
    v7 = v6 > 0x3F;
  }

  else
  {
    v7 = 2;
  }

  v8 = *(*(a1 + 1064) + 2848);
  std::string::basic_string[abi:ne200100]<0>(__p, "GeoBatch");
  (*(*v8 + 16))(&v29, v8, __p);
  v9 = v29;
  v29 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }
  }

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(a2 + 8);
  *(v11 + 256) = &unk_284D38148;
  *(v11 + 264) = Phase::SpatialModeler::CompleteTraceWithEnergyBatch;
  *(v11 + 272) = a1;
  *(v11 + 280) = a2;
  *(v11 + 383) = 1;
  atomic_store(1u, (v11 + 40));
  v12 = *(a2 + 8);
  *(v12 + 524) = v7;
  atomic_store(1u, (v12 + 40));
  v13 = *(a2 + 96);
  if (v13)
  {
    v14 = 0;
    v15 = v13 >> 4;
    v16 = *(a2 + 96) & 0xF;
    do
    {
      v17 = v16 <= 0;
      if (v16 <= 0)
      {
        v16 = 0;
      }

      else
      {
        --v16;
      }

      if (v17)
      {
        v18 = v14 + v15;
      }

      else
      {
        v18 = v14 + v15 + 1;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "GeoTestScene");
      (*(*v8 + 16))(&v29, v8, __p);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      v19 = v29;
      *(v29 + 256) = &unk_284D34680;
      *(v19 + 264) = Phase::Geometry::RunSceneQueriesOnRange;
      *(v19 + 272) = a1;
      *(v19 + 280) = a2;
      *(v19 + 288) = a3;
      *(v19 + 296) = v14;
      *(v19 + 300) = v18;
      *(v19 + 383) = 1;
      atomic_store(1u, (v19 + 40));
      *(v19 + 524) = v7;
      atomic_store(1u, (v19 + 40));
      v20 = *(a2 + 16);
      v25 = *(a2 + 8);
      v26 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = v19;
      v24 = *(&v29 + 1);
      if (*(&v29 + 1))
      {
        atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v8 + 24))(v8, &v25, &v23);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (*(&v29 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
      }

      v14 = v18;
    }

    while (v18 < *(a2 + 96));
  }

  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  __p[0] = v21;
  __p[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::RunJobAsync(v8, __p);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_23A51EBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::SpatialModeler::TraceWithEnergyQuery::RegisterQuery(Phase::SpatialModeler::TraceWithEnergyQuery *this, Phase::Geometry::System *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = &unk_284D34B38;
  v7 = Phase::SpatialModeler::IterateTraceWithEnergyBatch;
  v8 = &v6;
  v5[0] = &unk_284D34B38;
  v5[1] = Phase::SpatialModeler::RunTraceWithEnergyBatchAsync;
  v5[3] = v5;
  v3 = Phase::Geometry::SceneQueryTypeRegistry::RegisterNewType(this + 340, &v6, v5);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34B80;
  v7 = Phase::SpatialModeler::RaycastWithEnergyVsScene;
  v8 = &v6;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 2720, v3, &v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34BC8;
  v7 = Phase::SpatialModeler::RaycastWithEnergyVsMesh;
  v8 = &v6;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, v3, 1u, &v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34BC8;
  v7 = Phase::SpatialModeler::RaycastWithEnergyVsVoxelTree;
  v8 = &v6;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, v3, 2u, &v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](&v6);
  return v3;
}

void sub_23A51EE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void _ZN5Phase8Geometry7details21RaycastVsVoxelSubtreeILb0ERKZNS0_18RaycastVsVoxelTreeILb0ERZNS_14SpatialModeler28RaycastWithEnergyVsVoxelTreeERNS0_11SystemStateERNS0_15SceneQueryBatchERNS0_10SceneQueryERNS0_20SceneQueryShapeStateEE3__0EEvS6_RNS0_12RaycastInputERKNS0_5ShapeEOT0_EUlT_SK_T1_E_EEvS6_SG_RKNS0_12VoxelSubtreeESL_(float32x2_t *a1, uint64_t a2, float ***a3, double a4, double a5, double a6, double a7, double a8, float64x2_t a9)
{
  v157 = *MEMORY[0x277D85DE8];
  v12 = vcvtq_f64_f32(*a1);
  v10.f64[0] = a1[1].f32[0];
  v13 = vcvtq_f64_f32(a1[2]);
  v9.f64[0] = a1[3].f32[0];
  __asm { FMOV            V16.2D, #1.0 }

  v19 = vminnmq_f64(vmaxnmq_f64(vdivq_f64(_Q16, v13), vdupq_n_s64(0xC1EFFFFFFFE00000)), vdupq_n_s64(0x41EFFFFFFFE00000uLL));
  v20 = vminnmq_f64(*&vmaxnmq_f64(*&vdivq_f64(_Q16, v9), xmmword_23A555970), xmmword_23A555980);
  v11.f64[0] = *(a2 + 8);
  a9.f64[0] = *(a2 + 20);
  v21 = vmulq_f64(v19, vsubq_f64(vcvtq_f64_f32(*a2), v12));
  v22 = *&vmulq_f64(v20, vsubq_f64(v11, v10));
  v23 = vmulq_f64(v19, vsubq_f64(vcvtq_f64_f32(*(a2 + 12)), v12));
  *&v20.f64[0] = *&vmulq_f64(v20, vsubq_f64(a9, v10));
  *&v24.f64[0] = *&vminnmq_f64(v22, *&v20.f64[0]);
  v24.f64[1] = a1[1].f32[1];
  *&v25.f64[0] = *&vmaxnmq_f64(v22, *&v20.f64[0]);
  v25.f64[1] = a1[3].f32[1];
  v26 = vpmaxq_f64(vmaxnmq_f64(vminnmq_f64(v21, v23), v24));
  v27 = vpminq_f64(vminnmq_f64(vmaxnmq_f64(v21, v23), v25));
  if (v26 > v27)
  {
    return;
  }

  if (v26 < 0.0)
  {
    v26 = 0.0;
    if (v27 <= 0.0)
    {
      return;
    }
  }

  v29 = *(**(a2 + 40) + 16 * *(a2 + 48));
  v30 = v29[3];
  if (v30 == 1)
  {
    v31 = *a3;
    v32 = (*a3)[1];
    v33 = v26;
    ***a3 = fminf(***a3, v33);
    v34 = v27;
    *v32 = fmaxf(*v32, v34);
    *v31[2] = 0.0;
    return;
  }

  if (v30 > 32)
  {
    v138 = **(Phase::Logger::GetInstance(a1) + 432);
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v152 = "GeoRaycastUtility.hpp";
      v153 = 1024;
      v154 = 477;
      v155 = 1024;
      v156 = v30;
      _os_log_impl(&dword_23A302000, v138, OS_LOG_TYPE_ERROR, "%25s:%-5d Excessive level count (%d) in voxel tree: resolution has an invalid numerical value.", buf, 0x18u);
    }

    return;
  }

  v146 = vextq_s8(v13, v13, 8uLL);
  MEMORY[0x28223BE20](a1);
  v36 = &v139 - v35;
  v149 = v38;
  v150 = v37;
  v139 = v39;
  v147 = v40;
  v148 = v41;
  v144 = v42;
  v145 = v43;
  v140 = v44;
  v141 = v45;
  v142 = v46;
  v143 = v47;
  bzero(&v139 - v35, v35);
  v48 = v149.f64[0];
  v49 = v150.f64[0];
  v50.i64[0] = 0;
  v51 = v29[1];
  v52.f64[0] = v51[3].f32[0];
  v53 = vdivq_f64(v139, v52);
  v54.f64[0] = v140.f64[0];
  *&v54.f64[1] = v146.i64[0];
  v55 = vdivq_f64(v139, vcvtq_f64_f32(v51[2]));
  v56.f64[0] = 1073741820.0;
  v57 = vdupq_n_s64(0x41CFFFFFFF800000uLL);
  v58 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(vmaxnmq_f64(vmulq_f64(vsubq_f64(vmlaq_n_f64(v141, v54, v150.f64[0]), v145), v55), 0), v139), v57));
  v59 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(*&vmaxnmq_f64(*&vmulq_f64(vsubq_f64(vmlaq_f64(v142, v150, v144), v143), v53), 0), xmmword_23A555990), v56));
  v60 = vmlaq_n_f64(v141, v54, v149.f64[0]);
  v61 = vuzp1q_s32(v58, v59);
  *&v54.f64[0] = vmovn_s64(v58);
  *v58.i8 = vmovn_s64(v59);
  v62 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(vmaxnmq_f64(vmulq_f64(vsubq_f64(v60, v145), v55), 0), v139), v57));
  v63 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(*&vmaxnmq_f64(*&vmulq_f64(vsubq_f64(vmlaq_f64(v142, v149, v144), v143), v53), 0), xmmword_23A555990), v56));
  v64 = vuzp1q_s32(v62, v63);
  *v63.i8 = vsub_s32(vmovn_s64(v63), *v58.i8);
  v65.i64[0] = v63.i32[0];
  v65.i64[1] = v63.i32[1];
  v66 = vcvtq_f64_s64(v65);
  *&v54.f64[0] = vsub_s32(vmovn_s64(v62), *&v54.f64[0]);
  v65.i64[0] = SLODWORD(v54.f64[0]);
  v65.i64[1] = SHIDWORD(v54.f64[0]);
  v67 = vcvtq_f64_s64(v65);
  v68 = vceqq_s32(v64, v61);
  v65.i64[0] = v68.i32[2];
  v68.i64[1] = v68.i32[1];
  v68.i64[0] = v68.i32[0] & v65.i64[0] & v68.i32[1];
  v69 = vcgtq_s64(v50, v68);
  v70 = vbslq_s8(vdupq_lane_s64(v69.i64[0], 0), vmulq_f64(vmulq_f64(v140, v55), v57), v67);
  v71 = vbslq_s8(v69, vmulq_f64(vmulq_f64(v144, v53), v56), v66);
  v72 = vextq_s8(v70, v70, 8uLL).u64[0];
  v73 = vminnmq_f64(vmaxnmq_f64(vdivq_f64(v139, v70), vdupq_n_s64(0xC1EFFFFFFFE00000)), vdupq_n_s64(0x41EFFFFFFFE00000uLL));
  v74 = vminnmq_f64(*&vmaxnmq_f64(*&vdivq_f64(v139, v71), v147), v148);
  if (v30 >= 1)
  {
    v75 = vcltzq_s32(vsubq_s32(v64, v61));
    v76 = v30 & 0x7FFFFFFF;
    v77 = v29[4];
    v78 = v51 + 8;
    v79 = v36 + 216;
    v80 = 30;
    do
    {
      v81 = vdupq_n_s32(1 << v80);
      *(v79 - 2) = v80;
      *(v79 - 21) = vorrq_s8(v81, v75);
      v82 = vorrq_s8(vandq_s8(vdupq_n_s32(-(1 << v80)), v75), vbicq_s8(v81, v75));
      *(v79 - 13) = v82;
      v83.i64[0] = v82.i32[2];
      v83.i64[1] = v82.i32[3];
      v84 = vcvtq_f64_s64(v83);
      v83.i64[0] = v82.i32[0];
      v83.i64[1] = v82.i32[1];
      *(v79 - 9) = vmulq_f64(v74, v84);
      *(v79 - 11) = vmulq_f64(v73, vcvtq_f64_s64(v83));
      *v79 = *(*(**&v78[-1] + 16 * *v78) + 8);
      v79 += 28;
      v78 = (v78 + v77);
      v80 -= 2;
      --v76;
    }

    while (v76);
  }

  v85 = v48 - v49;
  v86 = *(v36 + 27);
  v88 = *v86;
  v87 = v86[1];
  *(v36 + 28) = v88;
  v89 = v36 + 224;
  v90 = vdupq_n_s32(*(v89 + 52));
  LODWORD(v56.f64[0]) = *(v89 + 52);
  v91 = *&vshlq_s32(v61, vnegq_s32(v90)) & __PAIR128__(0xFFFFFFFCFFFFFFFCLL, 0xFFFFFFFCFFFFFFFCLL);
  v92.i64[0] = 0x400000004;
  v92.i64[1] = 0x400000004;
  *(v89 + 1) = vshlq_u32(v91, v90);
  *(v89 + 2) = vshlq_u32(vaddq_s32(v91, v92), v90);
  v93.i64[0] = -1;
  v93.i64[1] = -1;
  v94 = vaddq_s32(vandq_s8(vdupq_lane_s32(*&vshlq_u32(v93, v56), 0), v61), *(v89 + 3));
  v95 = vsubq_s32(v94, v61);
  v96.i64[0] = v95.i32[2];
  v96.i64[1] = v95.i32[3];
  v97 = vcvtq_f64_s64(v96);
  v96.i64[0] = v95.i32[0];
  v96.i64[1] = v95.i32[1];
  *(v89 + 5) = vmulq_f64(v73, vcvtq_f64_s64(v96));
  *(v89 + 6) = vmulq_f64(v74, v97);
  *(v89 + 4) = v94;
  *(v89 + 2) = v87;
  v98 = 0.0;
  v99 = 1;
  v100.i64[0] = 0x100000001;
  v100.i64[1] = 0x100000001;
  v101.i64[0] = 0x800000008;
  v101.i64[1] = 0x800000008;
  *&v70.f64[1] = v72;
  v102 = v61;
  while (1)
  {
    while (1)
    {
      v103 = (v89 + 208);
      v104 = vld1q_dup_f32(v103);
      v105 = vshlq_s32(v102, vnegq_s32(v104));
      v108 = vshlq_u32(vorrq_s8(vandq_s8(vshlq_n_s32(v105, 2uLL), v101), vandq_s8(v105, v100)), xmmword_23A5559A0);
      LOBYTE(v103) = LOBYTE(v108.f64[0]) | BYTE4(v108.f64[0]);
      v106 = *(v89 + 5);
      v107 = *(v89 + 6);
      v108.f64[0] = fmin(fmin(v106.f64[0], v107.f64[0]), *(v89 + 11));
      v109 = v103 | LOBYTE(v108.f64[1]);
      if (((v88 >> v109) & 1) == 0)
      {
        goto LABEL_16;
      }

      v110 = vcnt_s8((v88 & ~(-1 << v109)));
      v110.i16[0] = vaddlv_u8(v110);
      v111 = *(v89 + 2) + v110.i32[0];
      if (v30 - 1 == v99)
      {
        break;
      }

      v112 = vdupq_lane_s64(*&v108.f64[0], 0);
      v113 = vceqq_f64(v107, v108);
      v114 = vceqq_f64(v106, v112);
      *(v89 + 10) = v114;
      *(v89 + 11) = v113;
      *(v89 + 12) = vuzp1q_s32(v114, v113);
      v115 = (*(v89 + 27) + 16 * v111);
      v88 = *v115;
      v116 = v115[1];
      *(v89 + 28) = v88;
      v89 += 224;
      ++v99;
      v117 = vdupq_n_s32(*(v89 + 52));
      v114.i32[0] = *(v89 + 52);
      v118 = *&vshlq_s32(v102, vnegq_s32(v117)) & __PAIR128__(0xFFFFFFFCFFFFFFFCLL, 0xFFFFFFFCFFFFFFFCLL);
      *(v89 + 1) = vshlq_u32(v118, v117);
      *(v89 + 2) = vshlq_u32(vaddq_s32(v118, v92), v117);
      v119 = vaddq_s32(vandq_s8(vdupq_lane_s32(*&vshlq_u32(v93, v114), 0), v102), *(v89 + 3));
      v120 = vsubq_s32(v119, v61);
      v121.i64[0] = v120.i32[2];
      v121.i64[1] = v120.i32[3];
      v122 = vcvtq_f64_s64(v121);
      v121.i64[0] = v120.i32[0];
      v121.i64[1] = v120.i32[1];
      *(v89 + 5) = vmulq_f64(v73, vcvtq_f64_s64(v121));
      *(v89 + 6) = vmulq_f64(v74, v122);
      *(v89 + 4) = v119;
      *(v89 + 2) = v116;
    }

    v123 = *a3;
    v124 = (*a3)[1];
    v125 = v49 + v85 * v98;
    ***a3 = fminf(***a3, v125);
    v126 = v49 + v85 * v108.f64[0];
    *v124 = fmaxf(*v124, v126);
    *v123[2] = v111;
LABEL_16:
    if (v108.f64[0] >= 1.0)
    {
      return;
    }

    v128 = *(v89 + 5);
    v127 = *(v89 + 6);
    v129 = vceqq_f64(v127, v108);
    v130 = *(v89 + 4);
    v131 = vceqq_f64(v128, vdupq_lane_s64(*&v108.f64[0], 0));
    v132 = vuzp1q_s32(v131, v129);
    *(v89 + 10) = v131;
    *(v89 + 11) = v129;
    *(v89 + 12) = v132;
    v102 = vbslq_s8(v132, v130, vaddq_s32(vuzp1q_s32(vcvtq_s64_f64(vmulq_n_f64(v70, v108.f64[0])), vcvtq_s64_f64(vmulq_f64(v71, v108))), v61));
    v133 = vorrq_s8(vcgeq_s32(v102, *(v89 + 2)), vcgtq_s32(*(v89 + 1), v102));
    v133.i32[3] = v133.i32[2];
    if ((vmaxvq_u32(v133) & 0x80000000) != 0)
    {
      break;
    }

    v134 = v89;
LABEL_22:
    v136 = vbslq_s8(vcltzq_s64(v129.u64[0]), vaddq_f64(v127, *(v134 + 9)), v127);
    v137 = vbslq_s8(vcltzq_s64(v131), vaddq_f64(v128, *(v134 + 8)), v128);
    *(v134 + 4) = vbslq_s8(v132, vaddq_s32(*(v134 + 7), v130), v130);
    *(v134 + 5) = v137;
    *(v134 + 6) = v136;
    v98 = v108.f64[0];
  }

  while (v99 >= 2)
  {
    --v99;
    v134 = v89 - 224;
    v135 = vorrq_s8(vcgeq_s32(v102, *(v89 - 12)), vcgtq_s32(*(v89 - 13), v102));
    v135.i32[3] = v135.i32[2];
    v89 -= 224;
    if ((vmaxvq_u32(v135) & 0x80000000) == 0)
    {
      v129 = *(v134 + 11);
      v132 = *(v134 + 12);
      v128 = *(v134 + 5);
      v127 = *(v134 + 6);
      v130 = *(v134 + 4);
      v131 = *(v134 + 10);
      v89 = v134;
      v88 = *v134;
      goto LABEL_22;
    }
  }
}

void Phase::SpatialModeler::CompleteTraceWithEnergyBatch(Phase::SpatialModeler *this, atomic_uint *a2, Phase::Geometry::SceneQueryBatch *a3)
{
  v3 = 1;
  atomic_compare_exchange_strong(a2 + 1, &v3, 2u);
  if (v3 == 1)
  {
    v6 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = atomic_load(a2);
    if (v7 != 5)
    {
      if (v7 == 2)
      {
        Phase::SpatialModeler::CalculateFinalEnergyLoss(this, a2, a3);
        v8 = 3;
      }

      else
      {
        v8 = 5;
      }

      atomic_store(v8, a2);
    }

    atomic_store(4u, a2 + 1);
    if (*(a2 + 6))
    {

      std::function<void ()(Phase::Geometry::SceneQueryBatch *)>::operator()((a2 + 6), a2);
    }
  }
}

BOOL Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 124);
  if (v2 == 10)
  {
    return 1;
  }

  if (!v2)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 124) = 10;
    return 1;
  }

  v6 = **(Phase::Logger::GetInstance(a1) + 1264);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v7 = *(a1 + 124);
    v8 = 136316162;
    v9 = "TRAPCommon.cpp";
    v10 = 1024;
    v11 = 34;
    v12 = 2080;
    v13 = a2;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = 10;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d CheckInputDataSubbandCount: subband count of %s is %d. Only %d or 0 are supported", &v8, 0x28u);
    return 0;
  }

  return result;
}

char *Phase::SpatialModeler::TRAP::CleanInputReverbTime(char *this, float *a2)
{
  v2 = this;
  v3 = *this;
  if ((*this & 0x7FFFFFFFu) > 0x7F7FFFFF || (this = Phase::SpatialModeler::TRAP::TP(this), v3 < *(this + 100)))
  {
    this = Phase::SpatialModeler::TRAP::TP(this);
    *v2 = *(this + 100);
  }

  return this;
}

float Phase::SpatialModeler::TRAP::CleanInputReverbTimeAndConfidence(Phase::SpatialModeler::TRAP *this, float *a2, float *a3)
{
  v5 = *this;
  v6 = *this & 0x7FFFFFFF;
  v7 = Phase::SpatialModeler::TRAP::TP(this);
  v8 = v7[100];
  if (v6 < 2139095040)
  {
    if (v5 < v8)
    {
      *this = *(Phase::SpatialModeler::TRAP::TP(v7) + 100);
    }
  }

  else
  {
    *this = v8;
    *a2 = 0.0;
  }

  result = fminf(fmaxf(*a2, 0.0), 1.0);
  *a2 = result;
  return result;
}

void Phase::SpatialModeler::TRAP::MixMultibandValuesAndConfidences(uint64_t a1, float32x2_t *a2, float (*a3)(float), float (*a4)(float), float (*a5)(float, float, float, float), float (*a6)(float), float (*a7)(float))
{
  v57 = a4;
  v13 = 0;
  memset(v59, 0, 124);
  do
  {
    *(v59 + v13) = a3(*(a1 + v13));
    v13 += 4;
  }

  while (v13 != 40);
  v14 = 0;
  memset(v58, 0, 124);
  do
  {
    *(v58 + v14) = a3(*(a1 + 256 + v14));
    v14 += 4;
  }

  while (v14 != 40);
  v15 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[3].i32[0] = 0;
  a2[2] = 0;
  v16 = (a1 + 512);
  *(a1 + 620) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 636) = 10;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 748) = 0u;
  *(a1 + 764) = 10;
  *(a1 + 876) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 892) = 10;
  v17 = 0.0;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 768) = 0u;
  v18 = 0.0;
  do
  {
    v19 = *(v59 + v15);
    v20 = *(v58 + v15);
    v21 = (a1 + v15);
    v22 = a5(v19, v20, *(a1 + v15 + 128), *(a1 + v15 + 384));
    v21[192] = v22;
    v23 = *(a1 + v15 + 128);
    v24 = *(a1 + v15 + 384);
    v21[160] = (v22 * v24) + ((1.0 - v22) * v23);
    if (v15)
    {
      v25 = *(&v58[7] + v15 + 12);
      v26 = *(&v57 + v15 + 4);
      v27 = a5((v19 + v25) * 0.5, (v20 + v26) * 0.5, sqrtf(v23 * v21[31]), sqrtf(v24 * v21[95]));
      v21[128] = v21[127] + (((v20 - v26) * v27) + ((1.0 - v27) * (v19 - v25)));
    }

    else
    {
      *v16 = 0;
    }

    v28 = a6(v21[32]);
    v29 = fmaxf(v28, fmaxf(v28, 0.00000011921) * 0.00000011921);
    v30 = a7(v21[96]);
    v31 = v29 * fmaxf(v30, fmaxf(v30, 0.00000011921) * 0.00000011921);
    v17 = v17 + v31;
    v32 = a2->f32[1];
    v33 = a2->f32[0] + (v31 * v19);
    a2->f32[0] = v33;
    v34 = v32 + (v31 * v21[32]);
    v35 = a2[1].f32[1];
    v36 = a2[1].f32[0] + (v31 * v20);
    a2->f32[1] = v34;
    a2[1].f32[0] = v36;
    v37 = v35 + (v31 * v21[96]);
    a2[1].f32[1] = v37;
    v18 = v18 + (v31 * *(a1 + v15 + 512));
    v15 += 4;
  }

  while (v15 != 40);
  a2->f32[0] = v33 / v17;
  a2->f32[1] = v34 / v17;
  a2[1].f32[0] = v36 / v17;
  a2[1].f32[1] = v37 / v17;
  v38 = (a5)();
  a2[3].f32[0] = v38;
  v39 = vmla_n_f32(vmul_n_f32(a2[1], v38), *a2, 1.0 - v38);
  a2[2] = v39;
  v40 = *(a1 + 636);
  if (v40)
  {
    *v39.i32 = *v39.i32 - (v18 / v17);
    if (v40 == 10)
    {
      v50 = vdupq_lane_s32(v39, 0);
      v51 = vaddq_f32(v50, *(a1 + 512));
      v52 = vaddq_f32(v50, *(a1 + 528));
      v53 = vaddq_f32(v50, *(a1 + 544));
      *(a1 + 512) = v51;
      *(a1 + 528) = v52;
      *(a1 + 544) = v53;
    }

    else if (v40 == 31)
    {
      v41 = vdupq_lane_s32(v39, 0);
      v42 = vaddq_f32(v41, *(a1 + 528));
      v43 = vaddq_f32(v41, *(a1 + 512));
      v44 = vaddq_f32(v41, *(a1 + 560));
      v45 = vaddq_f32(v41, *(a1 + 544));
      v46 = vaddq_f32(v41, *(a1 + 592));
      v47 = vaddq_f32(v41, *(a1 + 576));
      v48 = vaddq_f32(v41, *(a1 + 608));
      v49 = vaddq_f32(v41, *(a1 + 624));
      v49.i32[3] = HIDWORD(*(a1 + 624));
      *(a1 + 512) = v43;
      *(a1 + 528) = v42;
      *(a1 + 544) = v45;
      *(a1 + 560) = v44;
      *(a1 + 576) = v47;
      *(a1 + 592) = v46;
      *(a1 + 608) = v48;
      *(a1 + 624) = v49;
    }

    else
    {
      v54 = (a1 + 512);
      do
      {
        *v54 = *v39.i32 + *v54;
        ++v54;
        --v40;
      }

      while (v40);
    }
  }

  v55 = 0;
  v56 = v57;
  do
  {
    *&v16[v55] = v56(*&v16[v55]);
    ++v55;
  }

  while (v55 != 10);
  a2->f32[0] = v56(a2->f32[0]);
  a2[1].f32[0] = v56(a2[1].f32[0]);
  a2[2].f32[0] = v56(a2[2].f32[0]);
}

char *Phase::SpatialModeler::TRAP::CalculateSeatbeltReverbTimeAndConfidenceFromMFP(Phase::SpatialModeler::TRAP *a1, uint64_t a2, float a3)
{
  v6 = Phase::SpatialModeler::TRAP::TP(a1);
  v7 = *(v6 + 118);
  result = Phase::SpatialModeler::TRAP::TP(v6);
  v9 = 0;
  v10 = fminf(fmaxf(a3, v7), *(result + 119));
  *(a1 + 31) = 10;
  *(a2 + 124) = 10;
  do
  {
    *(a1 + v9 * 4) = *&__const__ZN5Phase14SpatialModeler4TRAP47CalculateSeatbeltReverbTimeAndConfidenceFromMFPEfRNS_8SubbandsIfEES4__kCCoef[v9] + ((*&__const__ZN5Phase14SpatialModeler4TRAP47CalculateSeatbeltReverbTimeAndConfidenceFromMFPEfRNS_8SubbandsIfEES4__kBCoef[v9] + (*&__const__ZN5Phase14SpatialModeler4TRAP47CalculateSeatbeltReverbTimeAndConfidenceFromMFPEfRNS_8SubbandsIfEES4__kACoef[v9] * v10)) * v10);
    result = Phase::SpatialModeler::TRAP::TP(result);
    *(a2 + v9 * 4) = *(result + 111);
    ++v9;
  }

  while (v9 != 10);
  return result;
}

float Phase::SpatialModeler::TRAP::CalculateRoomChangeConfidence(Phase::SpatialModeler::TRAP *this, float a2)
{
  v3 = Phase::SpatialModeler::TRAP::TP(this);
  v4 = v3[120];
  v5 = Phase::SpatialModeler::TRAP::TP(v3);
  v6 = fminf(fmaxf((a2 - v4) / (v5[121] - v4), 0.0), 1.0);
  v7 = Phase::SpatialModeler::TRAP::TP(v5);
  v8 = powf(v6, *(v7 + 122));
  v10 = Phase::SpatialModeler::TRAP::TP(v9);
  v11 = v10[122];
  return v8 * ((*(Phase::SpatialModeler::TRAP::TP(v10) + 122) + 1.0) - (v11 * v6));
}

float Phase::SpatialModeler::TRAP::CalculateAcousticAndVisualMix(Phase::SpatialModeler::TRAP *this, float a2, float a3, float a4, float a5)
{
  v7 = Phase::SpatialModeler::TRAP::TP(this);
  v8 = powf(a4, *(v7 + 109)) + 1.1755e-38;
  v10 = Phase::SpatialModeler::TRAP::TP(v9);
  return fmaxf(1.0 - (v8 / (powf(a5, *(v10 + 110)) + 1.1755e-38)), 0.0);
}

float Phase::SpatialModeler::TRAP::CalculateSeatbeltAndAcousticVisualMix(Phase::SpatialModeler::TRAP *this, float a2, int8x16_t a3, float a4, float a5)
{
  result = 1.0;
  if (a2 < *a3.i32)
  {
    *a3.i32 = a4 - a5;
    v12 = a3;
    if ((a4 - a5) < 0.0)
    {
      v7 = -(a4 - a5);
    }

    else
    {
      v7 = a4 - a5;
    }

    v8 = Phase::SpatialModeler::TRAP::TP(this);
    *v9.i32 = powf(v7, *(v8 + 116));
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    return 1.0 - fminf((*vbslq_s8(v10, v9, v12).i32 * 0.5) + 0.5, *(Phase::SpatialModeler::TRAP::TP(v11) + 117));
  }

  return result;
}

float Phase::SpatialModeler::TRAP::CalculateRateLimitingConfidenceWithRoomChange(Phase::SpatialModeler::TRAP *this, float a2, float a3)
{
  v5 = Phase::SpatialModeler::TRAP::TP(this);
  v6 = powf(a3, *(v5 + 124));
  v8 = Phase::SpatialModeler::TRAP::TP(v7);
  v9 = fmaxf(a2, v8[104]);
  v10 = Phase::SpatialModeler::TRAP::TP(v8);
  v11 = powf(v9, *(v10 + 103));
  return (v6 * *(Phase::SpatialModeler::TRAP::TP(v12) + 125)) + ((1.0 - v6) * v11);
}

char *Phase::SpatialModeler::TRAP::TP(Phase::SpatialModeler::TRAP *this)
{
  v136 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(_MergedGlobals_24, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(_MergedGlobals_24);
    if (this)
    {
      Phase::SpatialModeler::TRAP::TuningParameters::TuningParameters(this);
      __cxa_guard_release(_MergedGlobals_24);
    }
  }

  if ((byte_27DF97C70 & 1) == 0)
  {
    byte_27DF97C70 = 1;
    Instance = Phase::Logger::GetInstance(this);
    v2 = Phase::SpatialModeler::TRAP::TP(Instance);
    v3 = **(Phase::Logger::GetInstance(v2) + 1264);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v5 = *(Instance + 1312);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "minimum_reverb_time";
      v134 = 2048;
      v135 = v5;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    LODWORD(xmmword_27DF97E00) = *(Instance + 1312);
    v6 = Phase::SpatialModeler::TRAP::TP(v4);
    v7 = **(Phase::Logger::GetInstance(v6) + 1264);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v9 = *(Instance + 1316);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "maximum_reverb_time";
      v134 = 2048;
      v135 = v9;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    DWORD1(xmmword_27DF97E00) = *(Instance + 1316);
    v10 = Phase::SpatialModeler::TRAP::TP(v8);
    v11 = **(Phase::Logger::GetInstance(v10) + 1264);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      v13 = *(Instance + 1320);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "smoothing_in_seconds_per_jnd";
      v134 = 2048;
      v135 = v13;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    DWORD2(xmmword_27DF97E00) = *(Instance + 1320);
    v14 = Phase::SpatialModeler::TRAP::TP(v12);
    v15 = **(Phase::Logger::GetInstance(v14) + 1264);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      v17 = *(Instance + 1324);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "low_confidence_convergence_slowing_exponent";
      v134 = 2048;
      v135 = v17;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    HIDWORD(xmmword_27DF97E00) = *(Instance + 1324);
    v18 = Phase::SpatialModeler::TRAP::TP(v16);
    v19 = **(Phase::Logger::GetInstance(v18) + 1264);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      v21 = *(Instance + 1328);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "minimum_convergence_confidence";
      v134 = 2048;
      v135 = v21;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E10 = *(Instance + 1328);
    Phase::SpatialModeler::TRAP::TP(v20);
    v22 = Phase::SpatialModeler::TRAP::TP(void)::$_0::operator()<std::vector<float>,std::array<float,31ul>>((Instance + 1336), &unk_27DF97C80, "acoustic_confidence_multipliers");
    Phase::SpatialModeler::TRAP::TP(v22);
    v23 = Phase::SpatialModeler::TRAP::TP(void)::$_0::operator()<std::vector<float>,std::array<float,31ul>>((Instance + 1360), &unk_27DF97D00, "default_curated_from_scene_reverb_time");
    Phase::SpatialModeler::TRAP::TP(v23);
    v24 = Phase::SpatialModeler::TRAP::TP(void)::$_0::operator()<std::vector<float>,std::array<float,31ul>>((Instance + 1384), &unk_27DF97D80, "default_curated_from_scene_confidence");
    v25 = Phase::SpatialModeler::TRAP::TP(v24);
    v26 = **(Phase::Logger::GetInstance(v25) + 1264);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      v28 = *(Instance + 1408);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "acoustic_high_confidence_weight_exponent";
      v134 = 2048;
      v135 = v28;
      _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E14 = *(Instance + 1408);
    v29 = Phase::SpatialModeler::TRAP::TP(v27);
    v30 = **(Phase::Logger::GetInstance(v29) + 1264);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      v32 = *(Instance + 1412);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "visual_high_confidence_weight_exponent";
      v134 = 2048;
      v135 = v32;
      _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E18 = *(Instance + 1412);
    v33 = Phase::SpatialModeler::TRAP::TP(v31);
    v34 = **(Phase::Logger::GetInstance(v33) + 1264);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      v36 = *(Instance + 1416);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "seatbelt_high_confidence_weight_exponent";
      v134 = 2048;
      v135 = v36;
      _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E1C = *(Instance + 1416);
    v37 = Phase::SpatialModeler::TRAP::TP(v35);
    v38 = **(Phase::Logger::GetInstance(v37) + 1264);
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    if (v39)
    {
      v40 = *(Instance + 1420);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "visual_acoustic_high_confidence_weight_exponent";
      v134 = 2048;
      v135 = v40;
      _os_log_impl(&dword_23A302000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    LODWORD(xmmword_27DF97E20) = *(Instance + 1420);
    v41 = Phase::SpatialModeler::TRAP::TP(v39);
    v42 = **(Phase::Logger::GetInstance(v41) + 1264);
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
    if (v43)
    {
      v44 = *(Instance + 1424);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "acoustic_mix_confidence_reduction_exponent";
      v134 = 2048;
      v135 = v44;
      _os_log_impl(&dword_23A302000, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    DWORD1(xmmword_27DF97E20) = *(Instance + 1424);
    v45 = Phase::SpatialModeler::TRAP::TP(v43);
    v46 = **(Phase::Logger::GetInstance(v45) + 1264);
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
    if (v47)
    {
      v48 = *(Instance + 1428);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "visual_mix_confidence_reduction_exponent";
      v134 = 2048;
      v135 = v48;
      _os_log_impl(&dword_23A302000, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    DWORD2(xmmword_27DF97E20) = *(Instance + 1428);
    v49 = Phase::SpatialModeler::TRAP::TP(v47);
    v50 = **(Phase::Logger::GetInstance(v49) + 1264);
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
    if (v51)
    {
      v52 = *(Instance + 1432);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "broadband_seatbelt_confidence";
      v134 = 2048;
      v135 = v52;
      _os_log_impl(&dword_23A302000, v50, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    HIDWORD(xmmword_27DF97E20) = *(Instance + 1432);
    v53 = Phase::SpatialModeler::TRAP::TP(v51);
    v54 = **(Phase::Logger::GetInstance(v53) + 1264);
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
    if (v55)
    {
      v56 = *(Instance + 1436);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "broadband_visual_confidence";
      v134 = 2048;
      v135 = v56;
      _os_log_impl(&dword_23A302000, v54, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E30 = *(Instance + 1436);
    v57 = Phase::SpatialModeler::TRAP::TP(v55);
    v58 = **(Phase::Logger::GetInstance(v57) + 1264);
    v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
    if (v59)
    {
      v60 = *(Instance + 1440);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "seatbelt_to_initial_reverb_time_multiplier";
      v134 = 2048;
      v135 = v60;
      _os_log_impl(&dword_23A302000, v58, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E34 = *(Instance + 1440);
    v61 = Phase::SpatialModeler::TRAP::TP(v59);
    v62 = **(Phase::Logger::GetInstance(v61) + 1264);
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
    if (v63)
    {
      v64 = *(Instance + 1444);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "broadband_seatbelt_initial_confidence";
      v134 = 2048;
      v135 = v64;
      _os_log_impl(&dword_23A302000, v62, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E38 = *(Instance + 1444);
    v65 = Phase::SpatialModeler::TRAP::TP(v63);
    v66 = **(Phase::Logger::GetInstance(v65) + 1264);
    v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
    if (v67)
    {
      v68 = *(Instance + 1448);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "seatbelt_reverb_time_multiplier";
      v134 = 2048;
      v135 = v68;
      _os_log_impl(&dword_23A302000, v66, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E3C = *(Instance + 1448);
    v69 = Phase::SpatialModeler::TRAP::TP(v67);
    v70 = **(Phase::Logger::GetInstance(v69) + 1264);
    v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
    if (v71)
    {
      v72 = *(Instance + 1452);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "seatbelt_confidence_exponent";
      v134 = 2048;
      v135 = v72;
      _os_log_impl(&dword_23A302000, v70, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    LODWORD(xmmword_27DF97E40) = *(Instance + 1452);
    v73 = Phase::SpatialModeler::TRAP::TP(v71);
    v74 = **(Phase::Logger::GetInstance(v73) + 1264);
    v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
    if (v75)
    {
      v76 = *(Instance + 1456);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "seatbelt_maximum_mix";
      v134 = 2048;
      v135 = v76;
      _os_log_impl(&dword_23A302000, v74, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    DWORD1(xmmword_27DF97E40) = *(Instance + 1456);
    v77 = Phase::SpatialModeler::TRAP::TP(v75);
    v78 = **(Phase::Logger::GetInstance(v77) + 1264);
    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
    if (v79)
    {
      v80 = *(Instance + 1460);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "lower_seatbelt_mean_free_path_limit";
      v134 = 2048;
      v135 = v80;
      _os_log_impl(&dword_23A302000, v78, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    DWORD2(xmmword_27DF97E40) = *(Instance + 1460);
    v81 = Phase::SpatialModeler::TRAP::TP(v79);
    v82 = **(Phase::Logger::GetInstance(v81) + 1264);
    v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
    if (v83)
    {
      v84 = *(Instance + 1464);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "upper_seatbelt_mean_free_path_limit";
      v134 = 2048;
      v135 = v84;
      _os_log_impl(&dword_23A302000, v82, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    HIDWORD(xmmword_27DF97E40) = *(Instance + 1464);
    v85 = Phase::SpatialModeler::TRAP::TP(v83);
    v86 = **(Phase::Logger::GetInstance(v85) + 1264);
    v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
    if (v87)
    {
      v88 = *(Instance + 1468);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "room_change_probability_min";
      v134 = 2048;
      v135 = v88;
      _os_log_impl(&dword_23A302000, v86, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E50 = *(Instance + 1468);
    v89 = Phase::SpatialModeler::TRAP::TP(v87);
    v90 = **(Phase::Logger::GetInstance(v89) + 1264);
    v91 = os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT);
    if (v91)
    {
      v92 = *(Instance + 1472);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "room_change_probability_max";
      v134 = 2048;
      v135 = v92;
      _os_log_impl(&dword_23A302000, v90, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E54 = *(Instance + 1472);
    v93 = Phase::SpatialModeler::TRAP::TP(v91);
    v94 = **(Phase::Logger::GetInstance(v93) + 1264);
    v95 = os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);
    if (v95)
    {
      v96 = *(Instance + 1476);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "room_change_confidence_exponent";
      v134 = 2048;
      v135 = v96;
      _os_log_impl(&dword_23A302000, v94, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E58 = *(Instance + 1476);
    v97 = Phase::SpatialModeler::TRAP::TP(v95);
    v98 = **(Phase::Logger::GetInstance(v97) + 1264);
    v99 = os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);
    if (v99)
    {
      v100 = *(Instance + 1480);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "room_change_acoustic_confidence_exponent";
      v134 = 2048;
      v135 = v100;
      _os_log_impl(&dword_23A302000, v98, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E5C = *(Instance + 1480);
    v101 = Phase::SpatialModeler::TRAP::TP(v99);
    v102 = **(Phase::Logger::GetInstance(v101) + 1264);
    v103 = os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT);
    if (v103)
    {
      v104 = *(Instance + 1484);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "room_change_rate_confidence_exponent";
      v134 = 2048;
      v135 = v104;
      _os_log_impl(&dword_23A302000, v102, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    LODWORD(qword_27DF97E60) = *(Instance + 1484);
    v105 = Phase::SpatialModeler::TRAP::TP(v103);
    v106 = **(Phase::Logger::GetInstance(v105) + 1264);
    v107 = os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT);
    if (v107)
    {
      v108 = *(Instance + 1488);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "room_change_rate_confidence_max";
      v134 = 2048;
      v135 = v108;
      _os_log_impl(&dword_23A302000, v106, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    HIDWORD(qword_27DF97E60) = *(Instance + 1488);
    v109 = Phase::SpatialModeler::TRAP::TP(v107);
    v110 = **(Phase::Logger::GetInstance(v109) + 1264);
    v111 = os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT);
    if (v111)
    {
      v112 = *(Instance + 1492);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "minimum_seatbelt_initial_confidence";
      v134 = 2048;
      v135 = v112;
      _os_log_impl(&dword_23A302000, v110, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E68 = *(Instance + 1492);
    v113 = Phase::SpatialModeler::TRAP::TP(v111);
    if (*(Instance + 1496) == 1)
    {
      v114 = **(Phase::Logger::GetInstance(v113) + 1264);
      v113 = os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
      if (v113)
      {
        *&v115 = COERCE_DOUBLE("false");
        v116 = *(Instance + 1496);
        v129 = "TRAPParameters.cpp";
        v128 = 136315906;
        if (v116)
        {
          *&v115 = COERCE_DOUBLE("true");
        }

        v130 = 1024;
        v131 = 42;
        v132 = 2080;
        v133 = "enable_soft_limiting";
        v134 = 2080;
        v135 = *&v115;
        _os_log_impl(&dword_23A302000, v114, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %s", &v128, 0x26u);
      }

      byte_27DF97E6C = *(Instance + 1496);
    }

    v117 = Phase::SpatialModeler::TRAP::TP(v113);
    v118 = **(Phase::Logger::GetInstance(v117) + 1264);
    v119 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
    if (v119)
    {
      v120 = *(Instance + 1500);
      v128 = 136315906;
      v129 = "TRAPParameters.cpp";
      v130 = 1024;
      v131 = 34;
      v132 = 2080;
      v133 = "maximum_log_rate_in_hz";
      v134 = 2048;
      v135 = v120;
      _os_log_impl(&dword_23A302000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %f", &v128, 0x26u);
    }

    dword_27DF97E70 = *(Instance + 1500);
    v121 = Phase::SpatialModeler::TRAP::TP(v119);
    if (*(Instance + 1504))
    {
      v122 = **(Phase::Logger::GetInstance(v121) + 1264);
      v121 = os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT);
      if (v121)
      {
        v123 = *(Instance + 1504);
        v128 = 136315906;
        v129 = "TRAPParameters.cpp";
        v130 = 1024;
        v131 = 64;
        v132 = 2080;
        v133 = "simulation_in_file_pathname";
        v134 = 2080;
        v135 = v123;
        _os_log_impl(&dword_23A302000, v122, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %s", &v128, 0x26u);
      }

      *&xmmword_27DF97E78 = *(Instance + 1504);
    }

    v124 = Phase::SpatialModeler::TRAP::TP(v121);
    if (*(Instance + 1512))
    {
      v125 = **(Phase::Logger::GetInstance(v124) + 1264);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        v126 = *(Instance + 1512);
        v128 = 136315906;
        v129 = "TRAPParameters.cpp";
        v130 = 1024;
        v131 = 64;
        v132 = 2080;
        v133 = "simulation_out_file_pathname";
        v134 = 2080;
        v135 = v126;
        _os_log_impl(&dword_23A302000, v125, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %s", &v128, 0x26u);
      }

      *(&xmmword_27DF97E78 + 1) = *(Instance + 1512);
    }
  }

  return &byte_27DF97C70;
}

const void **Phase::SpatialModeler::TRAP::TP(void)::$_0::operator()<std::vector<float>,std::array<float,31ul>>(const void **result, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*result == result[1])
  {
    return result;
  }

  v5 = result;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v6 = std::ostream::operator<<();
  if ((v5[1] - *v5) >= 5)
  {
    v7 = 1;
    do
    {
      buf[0] = 44;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, buf, 1);
      v6 = std::ostream::operator<<();
      ++v7;
    }

    while (v7 < (v5[1] - *v5) >> 2);
  }

  v8 = **(Phase::Logger::GetInstance(v6) + 1264);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ((v25 & 0x10) != 0)
    {
      v10 = v24;
      if (v24 < v21)
      {
        v24 = v21;
        v10 = v21;
      }

      locale = v20[4].__locale_;
    }

    else
    {
      if ((v25 & 8) == 0)
      {
        v9 = 0;
        v16 = 0;
LABEL_19:
        *(&__p + v9) = 0;
        p_p = &__p;
        if (v16 < 0)
        {
          p_p = __p;
        }

        *buf = 136315906;
        v28 = "TRAPParameters.cpp";
        v29 = 1024;
        v30 = 56;
        v31 = 2080;
        v32 = a3;
        v33 = 2080;
        v34 = p_p;
        _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ReadTuningParametersFromDefaults changed phase_are_process_rt60_%s to %s", buf, 0x26u);
        if (v16 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_23;
      }

      locale = v20[1].__locale_;
      v10 = v20[3].__locale_;
    }

    v9 = v10 - locale;
    if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v16 = v10 - locale;
    if (v9)
    {
      memmove(&__p, locale, v9);
    }

    goto LABEL_19;
  }

LABEL_23:
  v13 = v5[1];
  if (v13 != *v5)
  {
    memmove(a2, *v5, v13 - *v5);
  }

  v17[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v14;
  v19 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v26);
}

void sub_23A521934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x277D82818]);
  MEMORY[0x23EE863B0](&a28);
  _Unwind_Resume(a1);
}

double Phase::SpatialModeler::TRAP::TuningParameters::TuningParameters(Phase::SpatialModeler::TRAP::TuningParameters *this)
{
  v5 = *MEMORY[0x277D85DE8];
  byte_27DF97C70 = 0;
  v2 = xmmword_23A5982E0;
  v3 = unk_23A5982F0;
  v4 = 0;
  Phase::Subbands<float>::Subbands(&unk_27DF97C80, &v2, 10);
  v2 = xmmword_23A598308;
  v3 = unk_23A598318;
  v4 = 0x3E99999A3E99999ALL;
  Phase::Subbands<float>::Subbands(&unk_27DF97D00, &v2, 10);
  v2 = xmmword_23A598330;
  v3 = unk_23A598340;
  v4 = 0x3F8000003F800000;
  Phase::Subbands<float>::Subbands(&unk_27DF97D80, &v2, 10);
  xmmword_27DF97E00 = xmmword_23A598280;
  *&dword_27DF97E10 = xmmword_23A598290;
  xmmword_27DF97E20 = xmmword_23A5982A0;
  *&dword_27DF97E30 = xmmword_23A5982B0;
  xmmword_27DF97E40 = xmmword_23A5982C0;
  *&dword_27DF97E50 = xmmword_23A5982D0;
  qword_27DF97E60 = 0x40C000003F800000;
  dword_27DF97E68 = 1050253722;
  byte_27DF97E6C = 1;
  dword_27DF97E70 = 1056964608;
  result = 0.0;
  xmmword_27DF97E78 = 0u;
  return result;
}

Phase::DspLayer::UPConvolver *Phase::DspLayer::UPConvolver::UPConvolver(Phase::DspLayer::UPConvolver *this, int a2, int a3, int a4)
{
  *this = &unk_284D38170;
  *(this + 2) = a2;
  *(this + 3) = a4;
  v6 = 2 * a2;
  if (a3 % a2 <= 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = v7 + a3 / a2 * a2;
  *(this + 4) = v6;
  *(this + 5) = v8;
  v9 = v8 / a2;
  v10 = v6 + 8;
  *(this + 6) = v9;
  *(this + 7) = v10;
  v11 = v9 * v10;
  *(this + 8) = a2 + 4;
  *(this + 9) = v11;
  *(this + 10) = 0;
  *(this + 6) = malloc_type_malloc(4 * v11 * a4, 0x100004052888210uLL);
  *(this + 20) = 0;
  *(this + 11) = Phase::DspLayer::IConvolver::GetFftFwd(this, *(this + 4));
  *(this + 12) = Phase::DspLayer::IConvolver::GetFftInv(this, *(this + 4));
  *(this + 7) = malloc_type_malloc(4 * *(this + 9), 0x100004052888210uLL);
  *(this + 8) = malloc_type_malloc(4 * *(this + 2), 0x100004052888210uLL);
  v12 = *(this + 9);
  *(this + 18) = a2;
  *(this + 19) = v12;
  (*(*this + 32))(this);
  return this;
}

void Phase::DspLayer::UPConvolver::~UPConvolver(void **this)
{
  *this = &unk_284D38170;
  free(this[6]);
  free(this[7]);
  free(this[8]);
}

{
  Phase::DspLayer::UPConvolver::~UPConvolver(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer::UPConvolver::Reset(Phase::DspLayer::UPConvolver *this)
{
  *(this + 10) = 0;
  *(this + 20) = 0;
  vDSP_vclr(*(this + 6), 1, *(this + 9) * *(this + 3));
  vDSP_vclr(*(this + 7), 1, *(this + 9));
  v2 = *(this + 8);
  v3 = *(this + 2);

  vDSP_vclr(v2, 1, v3);
}

uint64_t Phase::DspLayer::UPConvolver::SetFilter(Phase::DspLayer::UPConvolver *this, int a2, float *a3, int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a2 < 0 || *(this + 3) <= a2)
  {
    return 2;
  }

  if (a4 < 1 || (*(*this + 48))(this) < a4)
  {
    return 1;
  }

  v9 = *(this + 2);
  v10 = a4 / v9;
  if (a4 % v9)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v10;
  }

  *(this + 10) = v11 * *(this + 7);
  v12 = *(this + 6);
  v13 = *(this + 9);
  v27 = (v13 * a2);
  v28 = v12;
  v14 = (v12 + 4 * v27);
  vDSP_vclr(v14, 1, v13);
  v16 = *(this + 2);
  if (v16 <= a4)
  {
    LODWORD(v18) = 0;
    v17 = 0;
    do
    {
      __C = 0.0;
      __I = 0;
      vDSP_maxvi(&a3[v17], 1, &__C, &__I, v16);
      if (__C > 0.000015849)
      {
        Phase::DspLayer::UPConvolver::fftFwd(this, &a3[v17], &v14[v18]);
        v14[v18 - 1 + *(this + 8)] = 1.1755e-38;
      }

      v16 = *(this + 2);
      v17 += v16;
      v18 = *(this + 7) + v18;
    }

    while (v17 <= a4 - v16);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (a4 > v17)
  {
    if (v16 > 4096)
    {
      operator new[]();
    }

    v19 = v16;
    MEMORY[0x28223BE20](v15);
    v21 = (&v26 - v20);
    bzero(&v26 - v20, v22);
    vDSP_vclr(v21, 1, v19);
    memcpy(v21, &a3[v17], 4 * (a4 - v17));
    __C = 0.0;
    __I = 0;
    vDSP_maxvi(v21, 1, &__C, &__I, *(this + 2));
    if (__C > 0.000015849)
    {
      Phase::DspLayer::UPConvolver::fftFwd(this, v21, &v14[v18]);
      v14[v18 - 1 + *(this + 8)] = 1.1755e-38;
    }
  }

  if (v11 >= 1)
  {
    v23 = *(this + 7);
    v24 = v11 + 1;
    v25 = (4 * (v11 - 1) * v23 + 4 * *(this + 8) + 4 * v27 + v28 - 4);
    while (*v25 != 1.1755e-38)
    {
      result = 0;
      *(this + 10) -= v23;
      --v24;
      v25 -= v23;
      if (v24 <= 1)
      {
        return result;
      }
    }
  }

  return 0;
}

void sub_23A522018(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x23EE86470](v1, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

float Phase::DspLayer::UPConvolver::fftFwd(Phase::DspLayer::UPConvolver *this, DSPComplex *__C, float *a3)
{
  v5 = *(this + 2) + (*(this + 2) >> 31);
  v6 = *(this + 2) / 2;
  v7 = &a3[*(this + 8)];
  v12.realp = a3;
  v12.imagp = v7;
  vDSP_ctoz(__C, 2, &v12, 1, v5 >> 1);
  v8 = *(this + 7) - *(this + 2);
  v9 = (v8 + (v8 >> 31)) >> 1;
  vDSP_vclr(&v12.realp[v6], 1, v9);
  vDSP_vclr(&v12.imagp[v6], 1, v9);
  v10 = &a3[*(this + 8)];
  vDSP_DFT_Execute(*(this + 11), a3, v10, a3, v10);
  result = *v10;
  a3[*(this + 4) / 2] = *v10;
  *v10 = 0.0;
  return result;
}

uint64_t Phase::DspLayer::UPConvolver::Process(Phase::DspLayer::UPConvolver *this, const DSPComplex *a2, float **a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = *(this + 7);
  v6 = *(this + 8);
  v8 = (v7 + 4 * *(this + 20));
  v9 = *(this + 2) + (*(this + 2) >> 31);
  v10 = *(this + 2) / 2;
  v11 = &v8[*(this + 8)];
  __Z.realp = v8;
  __Z.imagp = v11;
  v12 = v9 >> 1;
  vDSP_ctoz(v6, 2, &__Z, 1, v12);
  __Z.realp += v10;
  __Z.imagp += v10;
  vDSP_ctoz(a2, 2, &__Z, 1, v12);
  v13 = &v8[*(this + 8)];
  __Z.realp = v8;
  __Z.imagp = v13;
  vDSP_DFT_Execute(*(this + 11), v8, v13, v8, v13);
  imagp = __Z.imagp;
  __Z.realp[*(this + 4) / 2] = *__Z.imagp;
  *imagp = 0.0;
  v15 = memcpy(v6, a2, 4 * *(this + 2));
  result = MEMORY[0x28223BE20](v15);
  v19 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(this + 3) >= 1)
  {
    bzero(&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    v20 = 0;
    do
    {
      v21 = *(this + 8);
      v22 = (*(this + 6) + 4 * *(this + 9) * v20);
      v23 = *(this + 20);
      __Z.realp = v19;
      __Z.imagp = v19 + v21;
      __A.realp = v22;
      __A.imagp = &v22[v21];
      __B.realp = (v7 + 4 * v23);
      __B.imagp = &__B.realp[v21];
      if (*(__A.imagp - 1) == 1.1755e-38)
      {
        vDSP_zvmul(&__A, 1, &__B, 1, &__Z, 1, v21, 1);
      }

      else
      {
        vDSP_vclr(v19, 1, *(this + 7));
      }

      v24 = *(this + 7);
      v25 = v23 - v24;
      if (v23 - v24 < 0)
      {
        v26 = *(this + 7);
      }

      else
      {
        v26 = *(this + 7);
        do
        {
          if (v26 >= *(this + 10))
          {
            break;
          }

          v27 = *(this + 8);
          __A.realp = &v22[v26];
          __A.imagp = &__A.realp[v27];
          __B.realp = (v7 + 4 * v25);
          __B.imagp = &__B.realp[v27];
          if (*(__A.imagp - 1) == 1.1755e-38)
          {
            vDSP_zvma(&__A, 1, &__B, 1, &__Z, 1, &__Z, 1, v27);
            v24 = *(this + 7);
          }

          v26 += v24;
          v25 -= v24;
        }

        while (v25 >= 0);
      }

      v28 = *(this + 10);
      if (v26 < v28)
      {
        v29 = *(this + 9) + v25;
        do
        {
          v30 = *(this + 8);
          __A.realp = &v22[v26];
          __A.imagp = &__A.realp[v30];
          __B.realp = (v7 + 4 * v29);
          __B.imagp = &__B.realp[v30];
          if (*(__A.imagp - 1) == 1.1755e-38)
          {
            vDSP_zvma(&__A, 1, &__B, 1, &__Z, 1, &__Z, 1, v30);
            v24 = *(this + 7);
            v28 = *(this + 10);
          }

          v26 += v24;
          v29 -= v24;
        }

        while (v26 < v28);
      }

      Phase::DspLayer::UPConvolver::fftInv(this, v19, v19);
      v31 = *(this + 2);
      *&__A.realp = 0.125 / v31;
      result = MEMORY[0x23EE87290](v19 + 4 * v31, 1, &__A, a3[v20++], 1);
    }

    while (v20 < *(this + 3));
    v18 = *(this + 7);
  }

  *(this + 20) = (*(this + 20) + v18) % *(this + 9);
  return result;
}

void Phase::DspLayer::UPConvolver::fftInv(const vDSP_DFT_SetupStruct **this, const float *a2, DSPComplex *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *(this + 8);
  v7 = &a2[v6];
  MEMORY[0x28223BE20](this);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  v10 = &v9[4 * v6];
  *v7 = a2[*(this + 4) / 2];
  vDSP_DFT_Execute(this[12], a2, v7, v9, v10);
  __Z.realp = v9;
  __Z.imagp = v10;
  vDSP_ztoc(&__Z, 1, a3, 2, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
}

uint64_t Phase::DspLayer::UPConvolver::CopyStateFrom(Phase::DspLayer::UPConvolver *this, Phase::DspLayer::IConvolver *a2)
{
  v4 = (*(*this + 72))(this);
  if (v4 != (*(*a2 + 72))(a2))
  {
    return 0;
  }

  v5 = (*(*a2 + 88))(a2);

  return Phase::DspLayer::IConvolver::FilterState::CopyStateFrom(this + 56, v5);
}

void *Phase::Controller::VbapSpatializer::VbapSpatializer(void *a1, __int128 *a2, uint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "VBAP");
  Phase::Controller::Spatializer::Spatializer(a1, a2, a3, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_284D381F0;
  return a1;
}

void sub_23A522730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::VbapSpatializer::~VbapSpatializer(void **this)
{
  Phase::Controller::Spatializer::~Spatializer(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A522834(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void Phase::Controller::VbapSpatializer::OutputChannelLayoutChanged(uint64_t a1, char **a2)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (a1 + 24);
  memset(__p, 0, 24);
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(__p, v3, v4, v4 - v3);
  if (v5 != a2)
  {
    std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(v5, *a2, a2[1], a2[1] - *a2);
  }

  operator new();
}

void sub_23A5229A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23A522B08(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A522A14);
}

void Phase::Controller::VbapEncoder::VbapEncoder(Phase::Controller::VbapEncoder *this, const Phase::Controller::VbapSpatializer *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *(this + 4) = 1;
  *(this + 2) = a2;
  *(this + 24) = 0u;
  *this = &unk_284D38228;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = -1;
  *(this + 10) = 0;
  v5 = *(a2 + 3);
  v3 = (a2 + 24);
  v4 = v5;
  v6 = *v5;
  if (*v5 == 0x10000)
  {
    v8 = vcnt_s8(v4[1]);
    v8.i16[0] = vaddlv_u8(v8);
    v7 = v8.i32[0];
  }

  else if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4[2];
  }

  *(this + 18) = v7;
  Phase::ChannelLayout::GetChannelLayoutChannelDescriptions(v3, &v38);
  __src = 0;
  v36 = 0;
  v37 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  v10 = v38;
  v11 = v39;
  if (v38 != v39)
  {
    do
    {
      if (*v10 == 4 || *v10 == 37)
      {
        --*(this + 18);
      }

      else
      {
        v12 = v10[2] - (floorf(v10[2] / 360.0) * 360.0);
        if (v12 >= 360.0)
        {
          v13 = nextafterf(360.0, 0.0);
        }

        else
        {
          v13 = v12 + 0.0;
        }

        v14 = v36;
        if (v36 >= v37)
        {
          v16 = __src;
          v17 = v36 - __src;
          v18 = (v36 - __src) >> 2;
          v19 = v18 + 1;
          if ((v18 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v20 = v37 - __src;
          if ((v37 - __src) >> 1 > v19)
          {
            v19 = v20 >> 1;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v21 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v21);
          }

          *(4 * v18) = v13;
          v15 = 4 * v18 + 4;
          memcpy(0, v16, v17);
          v9 = __src;
          __src = 0;
          v36 = v15;
          v37 = 0;
          if (v9)
          {
            operator delete(v9);
          }
        }

        else
        {
          *v36 = v13;
          v15 = (v14 + 1);
        }

        v36 = v15;
        v22 = v33;
        if (v33 >= v34)
        {
          v24 = __p;
          v25 = v33 - __p;
          v26 = (v33 - __p) >> 2;
          v27 = v26 + 1;
          if ((v26 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v28 = v34 - __p;
          if ((v34 - __p) >> 1 > v27)
          {
            v27 = v28 >> 1;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v29 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__p, v29);
          }

          *(4 * v26) = v10[3];
          v23 = 4 * v26 + 4;
          memcpy(0, v24, v25);
          v9 = __p;
          __p = 0;
          v33 = v23;
          v34 = 0;
          if (v9)
          {
            operator delete(v9);
          }
        }

        else
        {
          *v33 = v10[3];
          v23 = (v22 + 4);
        }

        v33 = v23;
        if (*(v23 - 4) != fminf(fmaxf(*(v23 - 4), -90.0), 90.0))
        {
          v30 = **(Phase::Logger::GetInstance(v9) + 592);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *v41 = "VbapSpatializer.mm";
            *&v41[8] = 1024;
            *&v41[10] = 43;
            _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [elevations.back() != Clamp(elevations.back(), -90.f, 90.f) is true]: VBAP encoder init: Invalid elevation angle in channel description!", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "VBAP encoder init: Invalid elevation angle in channel description!");
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
        }
      }

      v10 += 5;
    }

    while (v10 != v11);
  }

  *buf = 1;
  *&v41[4] = 0u;
  v42 = 0u;
  v43 = 0u;
  operator new();
}

void sub_23A522FA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Phase::Controller::SpatializerFilterHandle *a9, AudioDSP::Core::VBAP **a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 buf)
{
  MEMORY[0x23EE864A0](v21, 0x20C4093837F09);
  AudioDSP::Core::VBAP::InitParameters::~InitParameters(&buf);
  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = **(Phase::Logger::GetInstance(v24) + 592);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "VbapSpatializer.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 60;
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): VBAP encoder init: invalid output channel layout!", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "VBAP encoder init: invalid output channel layout!");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  std::unique_ptr<AudioDSP::Core::VBAP>::reset[abi:ne200100](a10, 0);
  Phase::Controller::SpatializerFilterHandle::~SpatializerFilterHandle(a9);
  _Unwind_Resume(a1);
}

void sub_23A5230B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Phase::Controller::SpatializerFilterHandle *a9, AudioDSP::Core::VBAP **a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  __cxa_end_catch();
  if (a11)
  {
    operator delete(a11);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  std::unique_ptr<AudioDSP::Core::VBAP>::reset[abi:ne200100](a10, 0);
  Phase::Controller::SpatializerFilterHandle::~SpatializerFilterHandle(a9);
  _Unwind_Resume(a1);
}

void sub_23A5230D0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A523150);
}

void sub_23A5230E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Phase::Controller::SpatializerFilterHandle *a9, AudioDSP::Core::VBAP **a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  __cxa_free_exception(v17);
  if (a11)
  {
    operator delete(a11);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  std::unique_ptr<AudioDSP::Core::VBAP>::reset[abi:ne200100](a10, 0);
  Phase::Controller::SpatializerFilterHandle::~SpatializerFilterHandle(a9);
  _Unwind_Resume(a1);
}

void Phase::Controller::VbapEncoder::~VbapEncoder(AudioDSP::Core::VBAP **this)
{
  Phase::Controller::VbapEncoder::~VbapEncoder(this);

  JUMPOUT(0x23EE864A0);
}

{
  *this = &unk_284D38228;
  std::unique_ptr<AudioDSP::Core::VBAP>::reset[abi:ne200100](this + 10, 0);
  v2 = this[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void Phase::Controller::VbapEncoder::Initialize(Phase::Controller::VbapEncoder *this)
{
  v2 = *(this + 2);
  memset(v4, 0, sizeof(v4));
  v3 = (*(*this + 56))(this, v4);
  v6 = this;
  v7 = v2;
  v5 = v3;
  std::allocate_shared[abi:ne200100]<Phase::Controller::SpatializerFilterDatabase,std::allocator<Phase::Controller::SpatializerFilterDatabase>,Phase::Controller::Spatializer const*&,Phase::Controller::SpatializerEncoder const*&,unsigned int &,0>();
}

BOOL Phase::Controller::VbapEncoder::GetFiltersAndDelays(int *a1, float *a2, unsigned int a3, float **a4, float *a5)
{
  v10 = (*(*a1 + 48))(a1);
  v11 = v10;
  v12 = v10;
  if (v10 >= 1)
  {
    v13 = a4;
    v14 = v10;
    do
    {
      vDSP_vclr(*v13++, 1, a3);
      --v14;
    }

    while (v14);
  }

  vDSP_vclr(a5, 1, v11);
  Phase::Controller::SpatializerEncoder::VerifyCoordinateRanges(a1, a2);
  std::vector<float>::vector[abi:ne200100](__p, a1[18]);
  v15 = (a2[2] * 0.017453);
  __sincos_stret(((a2[1] + -90.0) * 0.017453));
  __sincos_stret(v15);
  v16 = AudioDSP::Core::VBAP::calculateVBAPGains();
  v17 = __p[0];
  if (v11 >= 1 && v16 == 0)
  {
    v19 = __p[0];
    do
    {
      v20 = *v19++;
      v21 = v20;
      v22 = *a4++;
      *v22 = v21;
      --v12;
    }

    while (v12);
  }

  else if (!__p[0])
  {
    return v16 == 0;
  }

  __p[1] = v17;
  operator delete(v17);
  return v16 == 0;
}

void sub_23A52347C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *Phase::Controller::VbapEncoder::GetDescription@<X0>(Phase::Controller::VbapEncoder *this@<X0>, _BYTE *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x100uLL, "<Encoder Type: Vbap, Filter Length: %d, Output Channel Count: %d>", *(*(this + 3) + 8), *(this + 18));
  return std::string::basic_string[abi:ne200100]<0>(a2, __str);
}

uint64_t Phase::Controller::VbapEncoder::GetNearestFilter(Phase::Controller::SpatializerFilterDatabase **a1, uint64_t a2, float *a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 592);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "VbapSpatializer.mm";
      v11 = 1024;
      v12 = 130;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr == pInWorkBuffer is false.", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: nullptr == pInWorkBuffer is false.");
  }

  Phase::Controller::SpatializerEncoder::VerifyCoordinateRanges(a1, a3);
  return *Phase::Controller::SpatializerFilterDatabase::GetNearestFilterData(a1[3], a3[1], a3[2]);
}

void std::__shared_ptr_emplace<Phase::Controller::VbapEncoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D382A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_pointer<Phase::Controller::VbapEncoder *,std::shared_ptr<Phase::Controller::SpatializerEncoder>::__shared_ptr_default_delete<Phase::Controller::SpatializerEncoder,Phase::Controller::VbapEncoder>,std::allocator<Phase::Controller::VbapEncoder>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::Controller::VbapEncoder *,std::shared_ptr<Phase::Controller::SpatializerEncoder>::__shared_ptr_default_delete<Phase::Controller::SpatializerEncoder,Phase::Controller::VbapEncoder>,std::allocator<Phase::Controller::VbapEncoder>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t Phase::VirtualAllocator::ReserveAddressSpace(Phase::VirtualAllocator *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = this << *MEMORY[0x277D85F90];
  v2 = mmap(0, v1, 0, 4098, -1, 0);
  if (v2 == -1)
  {
    v6 = **(Phase::Logger::GetInstance(0xFFFFFFFFFFFFFFFFLL) + 128);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      v12 = 136316162;
      v13 = "VirtualAllocator.cpp";
      v14 = 1024;
      v15 = 45;
      v16 = 2048;
      v17 = v1;
      v18 = 2048;
      v19 = -1;
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [pBaseAddress == MAP_FAILED is true]: mmap() failed to map %zu bytes from address space %p (errno: %d)\\n", &v12, 0x2Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "mmap() failed to map %zu bytes from address space %p (errno: %d)\n");
  }

  v3 = v2;
  v4 = msync(v2, v1, 18);
  if (v4 == -1)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 128);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *__error();
      v12 = 136316162;
      v13 = "VirtualAllocator.cpp";
      v14 = 1024;
      v15 = 49;
      v16 = 2048;
      v17 = v1;
      v18 = 2048;
      v19 = v3;
      v20 = 1024;
      v21 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [result == -1 is true]: msync() failed to sync %zu bytes from address space %p (errno: %d)\\n", &v12, 0x2Cu);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v11, "msync() failed to sync %zu bytes from address space %p (errno: %d)\n");
  }

  return v3;
}

Phase::Logger *Phase::VirtualAllocator::ReleaseAddressSpace(Phase::VirtualAllocator *this, const void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((*MEMORY[0x277D85F88] & this) != 0)
  {
    v6 = **(Phase::Logger::GetInstance(this) + 128);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *MEMORY[0x277D85FA0];
      v15 = 136315906;
      v16 = "VirtualAllocator.cpp";
      v17 = 1024;
      v18 = 59;
      v19 = 2048;
      v20 = this;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [(((uintptr_t) pInBaseAddress) & vm_page_mask) != 0 is true]: base address %p must be aligned to the page size %lu!)\\n", &v15, 0x26u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "base address %p must be aligned to the page size %lu!)\n");
  }

  v3 = a2 << *MEMORY[0x277D85F90];
  v4 = msync(this, v3, 16);
  if (v4 == -1)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 128);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *__error();
      v15 = 136316162;
      v16 = "VirtualAllocator.cpp";
      v17 = 1024;
      v18 = 65;
      v19 = 2048;
      v20 = v3;
      v21 = 2048;
      v22 = this;
      v23 = 1024;
      v24 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [result == -1 is true]: msync() failed to unsync %zu bytes from address space %p (errno: %d)\\n", &v15, 0x2Cu);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v11, "msync() failed to unsync %zu bytes from address space %p (errno: %d)\n");
  }

  result = munmap(this, v3);
  if (result == -1)
  {
    v12 = **(Phase::Logger::GetInstance(result) + 128);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *__error();
      v15 = 136316162;
      v16 = "VirtualAllocator.cpp";
      v17 = 1024;
      v18 = 69;
      v19 = 2048;
      v20 = v3;
      v21 = 2048;
      v22 = this;
      v23 = 1024;
      v24 = v13;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [result == -1 is true]: munmap() failed to unmap %zu bytes from address space %p (errno: %d)\\n", &v15, 0x2Cu);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v14, "munmap() failed to unmap %zu bytes from address space %p (errno: %d)\n");
  }

  return result;
}

Phase::Logger *Phase::VirtualAllocator::CommitPages(Phase::VirtualAllocator *this, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((*MEMORY[0x277D85F88] & this) != 0)
  {
    v7 = **(Phase::Logger::GetInstance(this) + 128);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *MEMORY[0x277D85FA0];
      v16 = 136315906;
      v17 = "VirtualAllocator.cpp";
      v18 = 1024;
      v19 = 78;
      v20 = 2048;
      v21 = this;
      v22 = 2048;
      v23 = v8;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [(((uintptr_t) pInBaseAddress) & vm_page_mask) != 0 is true]: base address %p must be aligned to the page size %lu!)\\n", &v16, 0x26u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "base address %p must be aligned to the page size %lu!)\n");
  }

  v3 = a2 << *MEMORY[0x277D85F90];
  v4 = mmap(this, v3, 3, 4113, -1, 0);
  if (v4 == -1)
  {
    v10 = **(Phase::Logger::GetInstance(0xFFFFFFFFFFFFFFFFLL) + 128);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v16 = 136316162;
      v17 = "VirtualAllocator.cpp";
      v18 = 1024;
      v19 = 84;
      v20 = 2048;
      v21 = v3;
      v22 = 2048;
      v23 = -1;
      v24 = 1024;
      v25 = v11;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [pBaseAddress == MAP_FAILED is true]: mmap() failed to map %zu bytes from address space %p (errno: %d)\\n", &v16, 0x2Cu);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v12, "mmap() failed to map %zu bytes from address space %p (errno: %d)\n");
  }

  v5 = v4;
  result = msync(v4, v3, 18);
  if (result == -1)
  {
    v13 = **(Phase::Logger::GetInstance(result) + 128);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      v16 = 136316162;
      v17 = "VirtualAllocator.cpp";
      v18 = 1024;
      v19 = 88;
      v20 = 2048;
      v21 = v3;
      v22 = 2048;
      v23 = v5;
      v24 = 1024;
      v25 = v14;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [result == -1 is true]: msync() failed to sync %zu bytes from address space %p (errno: %d)\\n", &v16, 0x2Cu);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "msync() failed to sync %zu bytes from address space %p (errno: %d)\n");
  }

  return result;
}

Phase::Logger *Phase::VirtualAllocator::DecommitPages(Phase::VirtualAllocator *this, const void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((*MEMORY[0x277D85F88] & this) != 0)
  {
    v7 = **(Phase::Logger::GetInstance(this) + 128);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *MEMORY[0x277D85FA0];
      v16 = 136315906;
      v17 = "VirtualAllocator.cpp";
      v18 = 1024;
      v19 = 99;
      v20 = 2048;
      v21 = this;
      v22 = 2048;
      v23 = v8;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [(((uintptr_t) pInBaseAddress) & vm_page_mask) != 0 is true]: base address %p must be aligned to the page size %lu!)\\n", &v16, 0x26u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "base address %p must be aligned to the page size %lu!)\n");
  }

  v3 = a2 << *MEMORY[0x277D85F90];
  v4 = mmap(this, v3, 0, 4114, -1, 0);
  if (v4 == -1)
  {
    v10 = **(Phase::Logger::GetInstance(0xFFFFFFFFFFFFFFFFLL) + 128);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v16 = 136316162;
      v17 = "VirtualAllocator.cpp";
      v18 = 1024;
      v19 = 105;
      v20 = 2048;
      v21 = v3;
      v22 = 2048;
      v23 = -1;
      v24 = 1024;
      v25 = v11;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [pBaseAddress == MAP_FAILED is true]: mmap() failed to map %zu bytes from address space %p (errno: %d)\\n", &v16, 0x2Cu);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v12, "mmap() failed to map %zu bytes from address space %p (errno: %d)\n");
  }

  v5 = v4;
  result = msync(v4, v3, 18);
  if (result == -1)
  {
    v13 = **(Phase::Logger::GetInstance(result) + 128);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      v16 = 136316162;
      v17 = "VirtualAllocator.cpp";
      v18 = 1024;
      v19 = 109;
      v20 = 2048;
      v21 = v3;
      v22 = 2048;
      v23 = v5;
      v24 = 1024;
      v25 = v14;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [result == -1 is true]: msync() failed to sync %zu bytes from address space %p (errno: %d)\\n", &v16, 0x2Cu);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "msync() failed to sync %zu bytes from address space %p (errno: %d)\n");
  }

  return result;
}

void Phase::Controller::DVM23::Voice::~Voice(Phase::Controller::DVM23::Voice *this)
{
  *this = &unk_284D38318;
  v2 = *(this + 20);
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

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  *this = &unk_284D38550;
  v8 = (this + 32);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 8);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

{
  Phase::Controller::DVM23::Voice::~Voice(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::function<void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

_BYTE *Phase::Controller::DVM23::Voice::ToGraphviz@<X0>(Phase::Controller::DVM23::Voice *this@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *(this + 22);
  if (v5 > 4)
  {
    v6 = "black";
  }

  else
  {
    v6 = off_278B4FEF8[v5];
  }

  v7 = Phase::DspLayer23::KernelTypeToString(*(this + 9));
  v8 = snprintf(__str, 0x80uLL, "voice_%p [label=(%s)[%x], color=%s];\n", this, v7, *(this + 8), v6);
  return std::string::basic_string[abi:ne200100](a2, __str, v8);
}

uint64_t Phase::Controller::DVM23::Voice::PerVoice(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v5 = a1;
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v5);
}

{
  v3 = *(a2 + 24);
  v5 = a1;
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v5);
}

void Phase::Controller::DVM23::Voice::OrderedVoicesHelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  if (*a3 != v8)
  {
    while (*v7 != a1)
    {
      if (++v7 == v8)
      {
        goto LABEL_6;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_6:
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if ((-858993459 * ((v9 - v10) >> 3)) >= 1)
    {
      v11 = 0;
      do
      {
        v12 = *(v10 + 40 * v11 + 16);
        if (v12)
        {
          do
          {
            (*(*v12[2] + 72))(v12[2], *(v12 + 6), a3, a4);
            v12 = *v12;
          }

          while (v12);
          v10 = *(a1 + 8);
          v9 = *(a1 + 16);
        }

        ++v11;
      }

      while (v11 < (-858993459 * ((v9 - v10) >> 3)));
      v8 = *(a3 + 8);
    }

    v13 = *(a3 + 16);
    if (v8 >= v13)
    {
      v15 = *a3;
      v16 = v8 - *a3;
      v17 = v16 >> 3;
      v18 = (v16 >> 3) + 1;
      if (v18 >> 61)
      {
        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      v19 = v13 - v15;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v17) = a1;
      v14 = 8 * v17 + 8;
      memcpy(0, v15, v16);
      *a3 = 0;
      *(a3 + 8) = v14;
      *(a3 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v8 = a1;
      v14 = (v8 + 1);
    }

    *(a3 + 8) = v14;
  }
}

_BYTE *Phase::Controller::DVM23::Voice::ToString@<X0>(Phase::Controller::DVM23::Voice *this@<X0>, _BYTE *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(this + 10);
  v5 = (*(*this + 16))(this);
  Phase::DspLayer23::KernelTypeToString(v5);
  Phase::Controller::DVM23::PlaystateToString(*(this + 22));
  if (v4)
  {
    v6 = snprintf(__str, 0x40uLL, "(%s)%p[%llx]<%s>");
  }

  else
  {
    v6 = snprintf(__str, 0x40uLL, "(%s)[%llx]<%s>");
  }

  return std::string::basic_string[abi:ne200100](a2, __str, v6);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<void *,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<void *,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<void *,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<void *,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

uint64_t std::__tree<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::__map_value_compare<std::pair<Phase::Controller::DVM23::Voice *,int>,std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::less<std::pair<Phase::Controller::DVM23::Voice *,int>>,true>,std::allocator<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>>>::__emplace_unique_key_args<std::pair<Phase::Controller::DVM23::Voice *,int>,std::piecewise_construct_t const&,std::tuple<std::pair<Phase::Controller::DVM23::Voice *,int>&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::__map_value_compare<std::pair<Phase::Controller::DVM23::Voice *,int>,std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::less<std::pair<Phase::Controller::DVM23::Voice *,int>>,true>,std::allocator<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>>>::__find_equal<std::pair<Phase::Controller::DVM23::Voice *,int>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::__map_value_compare<std::pair<Phase::Controller::DVM23::Voice *,int>,std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::less<std::pair<Phase::Controller::DVM23::Voice *,int>>,true>,std::allocator<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>>>::__find_equal<std::pair<Phase::Controller::DVM23::Voice *,int>>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    while (1)
    {
      v8 = v4;
      v9 = v4[4];
      if (v6 == v9)
      {
        v11 = *(v8 + 10);
        if (v7 < v11)
        {
          goto LABEL_11;
        }

        v12 = v11 == v7;
        if (v11 >= v7)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }

        if (v12)
        {
          v13 = 0;
        }

        if ((v13 & 0x80) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        result = v8 + 1;
        v4 = v8[1];
        if (!v4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 >= v9)
        {
          if (v9 >= v6)
          {
            v10 = 1;
          }

          else
          {
            v10 = -1;
          }

          if ((v10 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_11:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v8 = result;
LABEL_22:
  *a2 = v8;
  return result;
}

uint64_t Phase::DspLayer23::VoiceConnections::Add(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1 + 104);
  if (v8 > 3)
  {
    if (v8 > 0x3FF)
    {
      return 0;
    }

    v11 = *(a1 + 96);
    if (v8 == 4)
    {
      if (v11)
      {
        v8 = 4;
      }

      else
      {
        v11 = malloc_type_malloc(0x5FA0uLL, 0x102004024DAA5DEuLL);
        *(a1 + 96) = v11;
        v8 = *(a1 + 104);
      }
    }

    v13 = &v11[24 * v8];
    *(v13 - 12) = a2;
    *(v13 - 11) = a3;
    *(v13 - 20) = a4;
    v10 = v13 - 76;
  }

  else
  {
    v9 = a1 + 24 * v8;
    *v9 = a2;
    *(v9 + 8) = a3;
    *(v9 + 16) = a4;
    v10 = (v9 + 20);
  }

  *v10 = 0;
  ++*(a1 + 104);
  return 1;
}

uint64_t Phase::DspLayer23::VoiceConnections::Remove(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 104);
  if (v4 > 4)
  {
    v7 = v4 - 5;
    v8 = 4;
    v9 = a1;
    do
    {
      if (*v9 == a2 && *(v9 + 8) == a3 && *(v9 + 16) == a4)
      {
        v13 = *(a1 + 96) + 24 * v7;
        v14 = *v13;
        *(v9 + 16) = *(v13 + 16);
        *v9 = v14;
        goto LABEL_25;
      }

      v9 += 24;
      --v8;
    }

    while (v8);
    v10 = 0;
    for (i = *(a1 + 96); *i != a2 || *(i + 8) != a3 || *(i + 16) != a4; i += 24)
    {
      if (v4 - 4 == ++v10)
      {
        return 0;
      }
    }

    if (v7 <= v10)
    {
      goto LABEL_26;
    }

    v15 = *(a1 + 96) + 24 * v7;
    v16 = *v15;
    *(i + 16) = *(v15 + 16);
    *i = v16;
LABEL_25:
    v4 = *(a1 + 104);
LABEL_26:
    v17 = v4 - 1;
    goto LABEL_27;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  for (j = a1; *j != a2 || *(j + 8) != a3 || *(j + 16) != a4; j += 24)
  {
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  v17 = v4 - 1;
  if (v17 > v5)
  {
    v18 = (a1 + 24 * v17);
    v19 = *v18;
    *(j + 16) = *(v18 + 2);
    *j = v19;
    goto LABEL_25;
  }

LABEL_27:
  *(a1 + 104) = v17;
  return 1;
}

uint64_t Phase::DspLayer23::VoiceConnections::GetConnection(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = result;
  v5 = *(result + 104);
  if (v5 >= 5)
  {
    v6 = 4;
    while (*result != a2 || *(result + 8) != a3 || *(result + 16) != a4)
    {
      result += 24;
      if (!--v6)
      {
        result = *(v4 + 96);
        v7 = v5 - 4;
        while (*result != a2 || *(result + 8) != a3 || *(result + 16) != a4)
        {
          result += 24;
          if (!--v7)
          {
            return 0;
          }
        }

        return result;
      }
    }
  }

  else if (v5)
  {
    while (*v4 != a2 || *(v4 + 8) != a3 || *(v4 + 16) != a4)
    {
      v4 += 24;
      if (!--v5)
      {
        return 0;
      }
    }

    return v4;
  }

  else
  {
    return 0;
  }

  return result;
}

Phase::DspLayer23::VoiceEngine *Phase::DspLayer23::VoiceEngine::VoiceEngine(Phase::DspLayer23::VoiceEngine *this, unsigned int a2, double a3, int a4, int a5, int a6)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = a5;
  *(this + 7) = a6;
  *(this + 8) = (a4 + 63) & 0xFFFFFFC0;
  if (a5 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = malloc_type_malloc((4 * a2 + 8) * a5, 0x80040B8603338uLL);
    a6 = *(this + 7);
  }

  *(this + 5) = v9;
  if (a6 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = malloc_type_malloc((4 * a2 + 8) * a6, 0x80040B8603338uLL);
  }

  *(this + 6) = v10;
  *(this + 7) = malloc_type_malloc(8 * *(this + 8) + 4 * *(this + 8) * a2, 0x80040B8603338uLL);
  *(this + 8) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(this + 18) = a2;
  *(this + 10) = a3;
  *(this + 11) = 1.0 / a3;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = 0;
  v11 = *(this + 8);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = *(this + 7) + 8 * v11;
    v15 = 8 * v11;
    do
    {
      *(*(this + 7) + v13) = v14 + 4 * v12;
      v13 += 8;
      v12 += a2;
    }

    while (v15 != v13);
  }

  v16 = *(this + 6);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = *(this + 5) + 8 * v16;
    do
    {
      v19 = *(this + 18);
      *(*(this + 5) + 8 * v17) = v18 + 4 * (v19 * v17);
      bzero(*(*(this + 5) + 8 * v17++), 4 * v19);
    }

    while (v17 < *(this + 6));
  }

  v20 = *(this + 7);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = *(this + 6) + 8 * v20;
    v24 = *(this + 18);
    v25 = 8 * v20;
    do
    {
      *(*(this + 6) + v22) = v23 + 4 * v21;
      v22 += 8;
      v21 += v24;
    }

    while (v25 != v22);
  }

  return this;
}

void sub_23A5257CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VoiceEngine::~VoiceEngine(void **this)
{
  free(this[5]);
  free(this[6]);
  free(this[7]);
  free(this[8]);
  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void Phase::DspLayer23::VoiceEngine::Reset(Phase::DspLayer23::VoiceEngine *this)
{
  *(this + 1) = *this;
  *(this + 12) = 0;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    bzero(**(this + 6), 4 * (*(this + 18) * v2));
  }

  v3 = *(this + 6);
  if (v3 >= 1)
  {
    v4 = **(this + 5);
    v5 = 4 * (*(this + 18) * v3);

    bzero(v4, v5);
  }
}

uint64_t Phase::DspLayer23::VoiceEngine::AddPool(Phase::DspLayer23::VoiceEngine *this, Phase::DspLayer23::VoicePool *a2, int a3)
{
  v9 = a2;
  *(a2 + 72) = this;
  if (a3)
  {
    v4 = a3;
    if (a3 > ((*(this + 1) - *this) >> 3))
    {
      return 0;
    }

    std::vector<Phase::DspLayer23::VoicePool *>::insert(this, (*this + 8 * a3), &v9);
    v7 = v9;
    v8 = *(*this + 8 * v4 - 8);
    memcpy(*(v9 + 1), *(v8 + 8), 8 * (*(v9 + 6) / 64));
    memcpy(*(v7 + 2), *(v8 + 16), 2 * *(v7 + 6));
  }

  else
  {
    std::vector<Phase::DspLayer23::VoicePool *>::insert(this, *this, &v9);
    v6 = v9;
    bzero(*(v9 + 1), 8 * (*(v9 + 6) / 64));
    bzero(*(v6 + 2), 2 * *(v6 + 6));
  }

  return 1;
}

char *std::vector<Phase::DspLayer23::VoicePool *>::insert(uint64_t a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>>(v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>>(v19);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, __src, *(a1 + 8) - __src);
    v20 = *a1;
    v21 = v16 + *(a1 + 8) - v4 + 8;
    *(a1 + 8) = v4;
    v22 = v4 - v20;
    v23 = v16 - (v4 - v20);
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v17 = v9 <= a3 || v4 > a3;
    v18 = 8;
    if (v17)
    {
      v18 = 0;
    }

    *v4 = *&a3[v18];
  }

  return v4;
}

void sub_23A525BA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::DspLayer23::VoiceEngine::RemovePool(char **a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = *a1;
    while (*v5 != a2)
    {
      v5 += 8;
      v4 += 8;
      if (v5 == v3)
      {
        v4 = a1[1];
        break;
      }
    }
  }

  if (v3 == v4)
  {
    return 11;
  }

  *(*v4 + 576) = 0;
  v6 = v3 - (v4 + 8);
  if (v3 != v4 + 8)
  {
    memmove(v4, v4 + 8, v3 - (v4 + 8));
  }

  result = 0;
  a1[1] = &v4[v6];
  return result;
}

uint64_t Phase::DspLayer23::VoiceEngine::PlayVoice(Phase::DspLayer23::VoiceEngine *this, Phase::DspLayer23::VoicePool *a2, unint64_t a3)
{
  if (Phase::DspLayer23::VoicePool::IsVoiceStopped(a2, a3))
  {
    v6 = (*(*a2 + 16))(a2, a3);
    if (!v6)
    {
      if ((*(*a2 + 128))(a2) >= 1)
      {
        v7 = 0;
        do
        {
          (*(*a2 + 72))(a2, a3, v7, *(this + 8));
          v7 = (v7 + 1);
        }

        while (v7 < (*(*a2 + 128))(a2));
      }

      return 0;
    }
  }

  else if (Phase::DspLayer23::VoicePool::IsVoicePaused(a2, a3))
  {
    v6 = (*(*a2 + 16))(a2, a3);
    if ((*(*a2 + 120))(a2) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = (*(*a2 + 48))(a2, a3, v8);
        v10 = *(v9 + 104);
        if (v10)
        {
          v11 = v9;
          v12 = 0;
          v13 = -96;
          do
          {
            if (v12 > 3)
            {
              v14 = (*(v11 + 96) + v13);
            }

            else
            {
              v14 = (v11 + 24 * v12);
            }

            if (Phase::DspLayer23::VoicePool::IsVoicePlaying(*v14, v14[1]))
            {
              v15 = (*(**v14 + 80))(*v14, v14[1], *(v14 + 4));
              v16 = (*(*a2 + 64))(a2, a3, v8);
              Phase::DspLayer23::AudioConnections::Add(v16, v15);
            }

            ++v12;
            v13 += 24;
          }

          while (v10 != v12);
        }

        v8 = (v8 + 1);
      }

      while (v8 < (*(*a2 + 120))(a2));
    }

    if ((*(*a2 + 128))(a2) >= 1)
    {
      v27 = v6;
      v17 = 0;
      do
      {
        v18 = (*(*a2 + 80))(a2, a3, v17);
        v19 = (*(*a2 + 56))(a2, a3, v17);
        v20 = *(v19 + 104);
        if (v20)
        {
          v21 = v19;
          v22 = 0;
          v23 = -96;
          do
          {
            if (v22 > 3)
            {
              v24 = (*(v21 + 96) + v23);
            }

            else
            {
              v24 = (v21 + 24 * v22);
            }

            if (Phase::DspLayer23::VoicePool::IsVoicePlaying(*v24, v24[1]))
            {
              v25 = (*(**v24 + 64))(*v24, v24[1], *(v24 + 4));
              Phase::DspLayer23::AudioConnections::Add(v25, v18);
            }

            ++v22;
            v23 += 24;
          }

          while (v20 != v22);
        }

        v17 = (v17 + 1);
      }

      while (v17 < (*(*a2 + 128))(a2));
      return v27;
    }
  }

  else
  {
    return 3;
  }

  return v6;
}

uint64_t Phase::DspLayer23::VoiceEngine::PauseVoice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 24))(a2, a3);
  if (!v5)
  {
    if ((*(*a2 + 120))(a2) >= 1)
    {
      v6 = 0;
      do
      {
        *((*(*a2 + 64))(a2, a3, v6) + 120) = 0;
        v6 = (v6 + 1);
      }

      while (v6 < (*(*a2 + 120))(a2));
    }

    if ((*(*a2 + 128))(a2) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = (*(*a2 + 80))(a2, a3, v7);
        v9 = (*(*a2 + 56))(a2, a3, v7);
        v10 = *(v9 + 104);
        if (v10)
        {
          v11 = v9;
          v12 = 0;
          v13 = -96;
          do
          {
            if (v12 > 3)
            {
              v14 = (*(v11 + 96) + v13);
            }

            else
            {
              v14 = (v11 + 24 * v12);
            }

            v15 = (*(**v14 + 64))(*v14, v14[1], *(v14 + 4));
            Phase::DspLayer23::AudioConnections::Remove(v15, v8);
            ++v12;
            v13 += 24;
          }

          while (v10 != v12);
        }

        v7 = (v7 + 1);
      }

      while (v7 < (*(*a2 + 128))(a2));
    }
  }

  return v5;
}

uint64_t Phase::DspLayer23::VoiceEngine::StopVoice(Phase::DspLayer23::VoiceEngine *this, Phase::DspLayer23::VoicePool *a2, unint64_t a3)
{
  if (Phase::DspLayer23::VoicePool::IsVoiceStopped(a2, a3))
  {
    return 2;
  }

  if ((*(*a2 + 120))(a2) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = (*(*a2 + 48))(a2, a3, v7);
      if (*(v8 + 104))
      {
        v9 = v8;
        do
        {
          Phase::DspLayer23::VoiceEngine::DisconnectVoices(this, *v9, *(v9 + 8), *(v9 + 16), a2, a3, v7);
        }

        while (*(v9 + 104));
      }

      v7 = (v7 + 1);
    }

    while (v7 < (*(*a2 + 120))(a2));
  }

  if ((*(*a2 + 128))(a2) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = (*(*a2 + 56))(a2, a3, v10);
      if (*(v11 + 104))
      {
        v12 = v11;
        do
        {
          Phase::DspLayer23::VoiceEngine::DisconnectVoices(this, a2, a3, v10, *v12, *(v12 + 8), *(v12 + 16));
        }

        while (*(v12 + 104));
      }

      v10 = (v10 + 1);
    }

    while (v10 < (*(*a2 + 128))(a2));
  }

  v13 = *(*a2 + 32);

  return v13(a2, a3);
}

uint64_t Phase::DspLayer23::VoiceEngine::DisconnectVoices(Phase::DspLayer23::VoiceEngine *this, Phase::DspLayer23::VoicePool *a2, uint64_t a3, uint64_t a4, Phase::DspLayer23::VoicePool *a5, uint64_t a6, uint64_t a7)
{
  v59 = *MEMORY[0x277D85DE8];
  v14 = (*(*a2 + 56))(a2, a3, a4);
  v15 = (*(*a5 + 48))(a5, a6, a7);
  Connection = Phase::DspLayer23::VoiceConnections::GetConnection(v14, a5, a6, a7);
  if (Connection && (Connection = Phase::DspLayer23::VoiceConnections::GetConnection(v15, a2, a3, a4)) != 0)
  {
    v17 = (*(*a2 + 80))(a2, a3, a4);
    v18 = v17;
    v19 = *this;
    v20 = *(this + 1) - *this;
    if ((v20 >> 3) < 1)
    {
LABEL_7:
      LODWORD(v21) = -1;
    }

    else
    {
      v21 = 0;
      while (*(v19 + 8 * v21) != a2)
      {
        if (((v20 >> 3) & 0x7FFFFFFF) == ++v21)
        {
          goto LABEL_7;
        }
      }
    }

    if (v21 + 1 >= (v20 >> 3))
    {
LABEL_12:
      LODWORD(v22) = -1;
    }

    else
    {
      v22 = v21 + 1;
      v23 = (v20 >> 3);
      while (*(v19 + 8 * v22) != a5)
      {
        if (v23 == ++v22)
        {
          goto LABEL_12;
        }
      }
    }

    v24 = v22 - v21;
    if (v22 > v21)
    {
      v25 = ((v17 - **(this + 7)) >> 2) / *(this + 18);
      v26 = 2 * v25;
      v27 = v25 + 63;
      if (v25 >= 0)
      {
        v27 = ((v17 - **(this + 7)) >> 2) / *(this + 18);
      }

      v28 = v25 - (v27 & 0xC0);
      v29 = v27 >> 6;
      v30 = (v19 + 8 * v21);
      do
      {
        v31 = *v30++;
        v32 = *(v31 + 16);
        v33 = *(v32 + v26) - 1;
        *(*(v31 + 8) + 8 * v29) ^= (*(v32 + v26) == 1) << v28;
        *(v32 + v26) = v33;
        --v24;
      }

      while (v24);
    }

    Phase::DspLayer23::VoiceConnections::Remove(v14, a5, a6, a7);
    Phase::DspLayer23::VoiceConnections::Remove(v15, a2, a3, a4);
    v34 = (*(*a5 + 64))(a5, a6, a7);
    Phase::DspLayer23::AudioConnections::Remove(v34, v18);
    if (!*(v14 + 104))
    {
      (*(*a2 + 72))(a2, a3, a4, *(this + 8));
    }

    return 0;
  }

  else
  {
    v36 = **(Phase::Logger::GetInstance(Connection) + 1184);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = (*(*a2 + 192))(a2);
      v38 = (*(*a5 + 192))(a5);
      v39 = 136317442;
      v40 = "VoiceEngine.cpp";
      v41 = 1024;
      v42 = 696;
      v43 = 2080;
      v44 = v37;
      v45 = 2048;
      v46 = a2;
      v47 = 2048;
      v48 = a3;
      v49 = 1024;
      v50 = a4;
      v51 = 1024;
      v52 = a7;
      v53 = 2080;
      v54 = v38;
      v55 = 2048;
      v56 = a5;
      v57 = 2048;
      v58 = a6;
      _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Could not disconnect unconnected voices: (%s)%p[%llx]:%i -x> %i:(%s)%p[%llx]", &v39, 0x5Au);
    }

    return 6;
  }
}

uint64_t Phase::DspLayer23::VoiceEngine::MoveVoice(Phase::DspLayer23::VoiceEngine *this, Phase::DspLayer23::VoicePool *a2, Phase::DspLayer23::VoicePool *a3, unint64_t a4)
{
  v47 = a3;
  v51 = *MEMORY[0x277D85DE8];
  v7 = (*(*a2 + 120))(a2);
  v8 = (*(*a2 + 128))(a2);
  MEMORY[0x28223BE20]();
  v10 = &v46 - v9;
  bzero(&v46 - v9, v11 + 128);
  v50 = (v10 + 127) & 0xFFFFFFFFFFFFFF80;
  v48 = v8;
  MEMORY[0x28223BE20]();
  v13 = &v46 - v12;
  bzero(&v46 - v12, v14 + 128);
  v46 = (v13 + 127);
  if (v7 >= 1)
  {
    v15 = 0;
    v49 = v7;
    do
    {
      v16 = (v50 + (v15 << 7));
      v16[5] = 0u;
      v16[6] = 0u;
      v16[3] = 0u;
      v16[4] = 0u;
      v16[1] = 0u;
      v16[2] = 0u;
      *v16 = 0u;
      v17 = (*(*a2 + 48))(a2, a4, v15);
      v18 = *(v17 + 104);
      if (v18)
      {
        v19 = v17;
        v20 = 0;
        v21 = -96;
        do
        {
          if (v20 > 3)
          {
            v22 = *(v19 + 96) + v21;
          }

          else
          {
            v22 = v19 + 24 * v20;
          }

          Phase::DspLayer23::VoiceConnections::Add(v16, *v22, *(v22 + 8), *(v22 + 16));
          Phase::DspLayer23::VoiceEngine::DisconnectVoices(this, *v22, *(v22 + 8), *(v22 + 16), a2, a4, v15);
          ++v20;
          v21 += 24;
        }

        while (v18 != v20);
      }

      ++v15;
    }

    while (v15 != v49);
  }

  v49 = v46 & 0xFFFFFFFFFFFFFF80;
  if (v48 >= 1)
  {
    v23 = 0;
    v48 = v48;
    do
    {
      v24 = (v49 + (v23 << 7));
      v24[5] = 0u;
      v24[6] = 0u;
      v24[3] = 0u;
      v24[4] = 0u;
      v24[1] = 0u;
      v24[2] = 0u;
      *v24 = 0u;
      v25 = (*(*a2 + 56))(a2, a4, v23);
      v26 = *(v25 + 104);
      if (v26)
      {
        v27 = v25;
        v28 = 0;
        v29 = -96;
        do
        {
          if (v28 > 3)
          {
            v30 = *(v27 + 96) + v29;
          }

          else
          {
            v30 = v27 + 24 * v28;
          }

          Phase::DspLayer23::VoiceConnections::Add(v24, *v30, *(v30 + 8), *(v30 + 16));
          Phase::DspLayer23::VoiceEngine::DisconnectVoices(this, a2, a4, v23, *v30, *(v30 + 8), *(v30 + 16));
          ++v28;
          v29 += 24;
        }

        while (v26 != v28);
      }

      ++v23;
    }

    while (v23 != v48);
  }

  v31 = v47;
  v32 = (*(*a2 + 40))(a2, a4, v47);
  if (!v32)
  {
    if ((*(*v31 + 120))(v31) >= 1)
    {
      v33 = 0;
      do
      {
        v34 = v50 + (v33 << 7);
        v35 = *(v34 + 104);
        if (v35)
        {
          v36 = 0;
          v37 = -96;
          do
          {
            if (v36 > 3)
            {
              v38 = *(v34 + 96) + v37;
            }

            else
            {
              v38 = v34 + 24 * v36;
            }

            Phase::DspLayer23::VoiceEngine::ConnectVoices(this, *v38, *(v38 + 8), *(v38 + 16), v31, a4, v33);
            ++v36;
            v37 += 24;
          }

          while (v35 != v36);
        }

        ++v33;
      }

      while (v33 < (*(*v31 + 120))(v31));
    }

    if ((*(*v31 + 128))(v31) >= 1)
    {
      v39 = 0;
      do
      {
        v40 = v49 + (v39 << 7);
        v41 = *(v40 + 104);
        if (v41)
        {
          v42 = 0;
          v43 = -96;
          do
          {
            if (v42 > 3)
            {
              v44 = *(v40 + 96) + v43;
            }

            else
            {
              v44 = v40 + 24 * v42;
            }

            Phase::DspLayer23::VoiceEngine::ConnectVoices(this, v31, a4, v39, *v44, *(v44 + 8), *(v44 + 16));
            ++v42;
            v43 += 24;
          }

          while (v41 != v42);
        }

        ++v39;
      }

      while (v39 < (*(*v31 + 128))(v31));
    }
  }

  return v32;
}

uint64_t Phase::DspLayer23::VoiceEngine::ConnectVoices(Phase::DspLayer23::VoiceEngine *this, Phase::DspLayer23::VoicePool *a2, unint64_t a3, uint64_t a4, Phase::DspLayer23::VoicePool *a5, unint64_t a6, uint64_t a7)
{
  v115 = *MEMORY[0x277D85DE8];
  if (Phase::DspLayer23::VoicePool::IsVoiceStopped(a2, a3) & 1) != 0 || (Phase::DspLayer23::VoicePool::IsVoiceStopped(a5, a6))
  {
    return 2;
  }

  v15 = (*(*a2 + 56))(a2, a3, a4);
  v16 = (*(*a5 + 48))(a5, a6, a7);
  Connection = Phase::DspLayer23::VoiceConnections::GetConnection(v15, a5, a6, a7);
  v18 = Phase::DspLayer23::VoiceConnections::GetConnection(v16, a2, a3, a4);
  if (Connection)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    return 0;
  }

  if (Connection | v18)
  {
    return 6;
  }

  v20 = *this;
  v21 = *(this + 1) - *this;
  v22 = v21 >> 3;
  if ((v21 >> 3) < 1)
  {
LABEL_16:
    LODWORD(v23) = -1;
  }

  else
  {
    v23 = 0;
    v24 = (v21 >> 3) & 0x7FFFFFFF;
    while (*(v20 + 8 * v23) != a2)
    {
      if (v24 == ++v23)
      {
        goto LABEL_16;
      }
    }
  }

  v25 = v23 + 1;
  if (v23 + 1 >= v22)
  {
    return 2;
  }

  v93 = v16;
  v94 = v15;
  v26 = 0;
  v27 = (v23 << 32) + 0x100000000;
  v28 = v20 + 8 * v23 + 8;
  v29 = v25 - v22;
  result = 2;
  while (*(v28 + 8 * v26) != a5)
  {
    ++v26;
    v27 += 0x100000000;
    if (!(v29 + v26))
    {
      return result;
    }
  }

  result = 2;
  if (v23 != -1 && -2 - v23 != v26)
  {
    if (*(v94 + 104) == 1024 || *(v93 + 104) == 1024)
    {
      v30 = **(Phase::Logger::GetInstance(2) + 1184);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = (*(*a2 + 192))(a2);
        v32 = (*(*a5 + 192))(a5);
        *buf = 136317442;
        v96 = "VoiceEngine.cpp";
        v97 = 1024;
        v98 = 474;
        v99 = 2080;
        v100 = v31;
        v101 = 2048;
        v102 = a2;
        v103 = 2048;
        v104 = a3;
        v105 = 1024;
        v106 = a4;
        v107 = 1024;
        v108 = a7;
        v109 = 2080;
        v110 = v32;
        v111 = 2048;
        v112 = a5;
        v113 = 2048;
        v114 = a6;
        _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unable to connect Voices; connection set is full: (%s)%p[%llx]:%i --> %i:(%s)%p[%llx]", buf, 0x5Au);
      }

      return 5;
    }

    else
    {
      v88 = v25;
      v92 = v25 + v26;
      IsVoicePlaying = Phase::DspLayer23::VoicePool::IsVoicePlaying(a2, a3);
      v33 = (*(*a2 + 80))(a2, a3, a4);
      if (v33 != *(this + 8))
      {
        v34 = v33;
        v35 = ((v33 - **(this + 7)) >> 2) / *(this + 18);
        v36 = *this;
        v37 = v23;
        v38 = *(*(*(*this + 8 * v23) + 16) + 2 * v35);
        if (v23 <= v92)
        {
          v37 = v92;
        }

        v39 = -v37;
        v40 = v88;
        v90 = v34;
        do
        {
          if ((v40 + v39) == 1)
          {
            goto LABEL_58;
          }

          v41 = *(*(*(v36 + v40) + 16) + 2 * v35);
          v40 = (v40 + 1);
          v42 = v38 >= v41;
          v38 = v41;
        }

        while (v42);
        if (v40 - 2 >= v27 >> 32)
        {
LABEL_58:
          v72 = v35;
          Phase::DspLayer23::VoiceConnections::Add(v94, a5, a6, a7);
          Phase::DspLayer23::VoiceConnections::Add(v93, a2, a3, a4);
          if (v23 < v92)
          {
            if (v72 >= 0)
            {
              v73 = v72;
            }

            else
            {
              v73 = v72 + 63;
            }

            v74 = 1 << (v72 - (v73 & 0xC0u));
            v75 = v73 >> 6;
            v76 = v92 - v23;
            v77 = (*this + 8 * v23);
            do
            {
              v78 = *v77++;
              v79 = *(v78 + 16);
              *(*(v78 + 8) + 8 * v75) |= v74;
              ++*(v79 + 2 * v72);
              --v76;
            }

            while (v76);
          }

          goto LABEL_69;
        }

        v43 = *(this + 7);
        v87 = v26 + 1;
        v44 = v35;
        AvailableChannelBetween = Phase::DspLayer23::VoiceEngine::FindAvailableChannelBetween(v36, v23, v92);
        if ((AvailableChannelBetween & 0x80000000) != 0)
        {
          return 12;
        }

        v89 = *(v43 + 8 * AvailableChannelBetween);
        v46 = AvailableChannelBetween;
        LastChildIndex = Phase::DspLayer23::VoiceEngine::FindLastChildIndex(this, a2, a3, a4);
        v48 = v46;
        if (v23 < LastChildIndex)
        {
          if (v44 >= 0)
          {
            v49 = v44;
          }

          else
          {
            v49 = v44 + 63;
          }

          v50 = v44 - (v49 & 0xC0);
          v51 = v49 >> 6;
          v52 = LastChildIndex - v23;
          v53 = (*this + 8 * v23);
          do
          {
            v54 = *v53++;
            v55 = *(v54 + 8);
            v56 = *(v54 + 16);
            v57 = *(v56 + 2 * v44);
            *(v55 + 8 * (v46 >> 6)) |= 1 << v46;
            *(v56 + 2 * v46) += v57;
            v58 = *(v56 + 2 * v44) - v57;
            *(v55 + 8 * v51) ^= (v58 == 0) << v50;
            *(v56 + 2 * v44) = v58;
            --v52;
          }

          while (v52);
        }

        v59 = v94;
        v60 = v87;
        if (v23 < v92)
        {
          v61 = (*this + 8 * v23);
          do
          {
            v62 = *v61++;
            v63 = *(v62 + 16);
            *(*(v62 + 8) + 8 * (v48 >> 6)) |= 1 << v48;
            ++*(v63 + 2 * v48);
            --v60;
          }

          while (v60);
        }

        (*(*a2 + 72))(a2, a3, a4, v89);
        v64 = v93;
        if (IsVoicePlaying)
        {
          v65 = *(v94 + 104);
          if (v65)
          {
            v66 = 0;
            v67 = -96;
            do
            {
              if (v66 > 3)
              {
                v68 = (*(v94 + 96) + v67);
              }

              else
              {
                v68 = (v94 + 24 * v66);
              }

              v69 = (*(**v68 + 64))(*v68, v68[1], *(v68 + 4));
              v70 = Phase::DspLayer23::AudioConnections::GetConnection(v69, v90);
              if (v70)
              {
                *v70 = v89;
              }

              ++v66;
              v67 += 24;
            }

            while (v65 != v66);
          }

          v64 = v93;
          v59 = v94;
          if (Phase::DspLayer23::VoicePool::IsVoicePlaying(a5, a6))
          {
            v71 = (*(*a5 + 64))(a5, a6, a7);
            Phase::DspLayer23::AudioConnections::Add(v71, v89);
          }
        }

        Phase::DspLayer23::VoiceConnections::Add(v59, a5, a6, a7);
        Phase::DspLayer23::VoiceConnections::Add(v64, a2, a3, a4);
        return 0;
      }

      v80 = Phase::DspLayer23::VoiceEngine::FindAvailableChannelBetween(*this, v23, v92);
      if ((v80 & 0x80000000) != 0)
      {
        return 12;
      }

      v81 = v80;
      v90 = *(*(this + 7) + 8 * v80);
      (*(*a2 + 72))(a2, a3, a4);
      Phase::DspLayer23::VoiceConnections::Add(v94, a5, a6, a7);
      Phase::DspLayer23::VoiceConnections::Add(v93, a2, a3, a4);
      if (v23 < v92)
      {
        v82 = v92 - v23;
        v83 = (*this + 8 * v23);
        do
        {
          v84 = *v83++;
          v85 = *(v84 + 16);
          *(*(v84 + 8) + 8 * (v81 >> 6)) |= 1 << v81;
          ++*(v85 + 2 * v81);
          --v82;
        }

        while (v82);
      }

LABEL_69:
      if ((IsVoicePlaying & 1) == 0)
      {
        return 0;
      }

      result = Phase::DspLayer23::VoicePool::IsVoicePlaying(a5, a6);
      if (result)
      {
        v86 = (*(*a5 + 64))(a5, a6, a7);
        Phase::DspLayer23::AudioConnections::Add(v86, v90);
        return 0;
      }
    }
  }

  return result;
}

uint64_t Phase::DspLayer23::VoiceEngine::FindAvailableChannelBetween(Phase::DspLayer23::VoiceEngine *this, int a2, int a3)
{
  v3 = *(*this + 24);
  if (v3 < 64)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = v3 >> 6;
  while (1)
  {
    v6 = a2 ? *(*(*(this + a2 - 1) + 8) + 8 * v4) : 0;
    v7 = (this + 8 * a2);
    v8 = a3 - a2 + 1;
    if (a2 <= a3)
    {
      do
      {
        v9 = *v7++;
        v6 |= *(*(v9 + 8) + 8 * v4);
        --v8;
      }

      while (v8);
    }

    if (v6 != -1)
    {
      break;
    }

    if (++v4 == v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return __clz(__rbit64(~v6)) + (v4 << 6);
}

uint64_t Phase::DspLayer23::VoiceEngine::FindLastChildIndex(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(*a2 + 56))(a2, a3, a4);
  v7 = *(v6 + 104);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a1;
  v9 = a1[1] - *a1;
  v10 = v9 >> 3;
  if ((v9 >> 3) < 1)
  {
LABEL_6:
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
    while (*(v8 + 8 * v11) != a2)
    {
      if (((v9 >> 3) & 0x7FFFFFFF) == ++v11)
      {
        goto LABEL_6;
      }
    }
  }

  v12 = 0;
  v13 = (v9 >> 3);
  do
  {
    if (v12 > 3)
    {
      v14 = (*(v6 + 96) + 24 * v12 - 96);
    }

    else
    {
      v14 = (v6 + 24 * v12);
    }

    if (v11 + 1 >= v10)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v16 = v11 + 1;
    while (*(v8 + 8 * v16) != v15)
    {
      if (v13 == ++v16)
      {
        goto LABEL_17;
      }
    }

    if (v16 == -1)
    {
LABEL_17:
      v16 = v11;
    }

    ++v12;
    v11 = v16;
  }

  while (v12 != v7);
  return v16;
}

int64x2_t Phase::DspLayer23::VoiceEngine::Process(int64x2_t *this)
{
  v2 = this->i64[0];
  v3 = this->i64[1];
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 152))(v4, this[4].u32[2]);
  }

  result = vaddq_s64(this[6], vdupq_n_s64(this[4].u32[2]));
  this[6] = result;
  return result;
}

uint64_t Phase::DspLayer23::VoiceEngine::GetReservedMixChannelCount(Phase::DspLayer23::VoiceEngine *this)
{
  v1 = *this;
  v2 = *(this + 1) - *this;
  if (!(v2 >> 3))
  {
    return 0;
  }

  v3 = *(*v1 + 24);
  if (v3 < 64)
  {
    result = 0;
  }

  else
  {
    LODWORD(result) = 0;
    v5 = *(*v1 + 8);
    v6 = (v3 / 64);
    do
    {
      v7 = *v5++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      result = (result + v8.i32[0]);
      --v6;
    }

    while (v6);
  }

  if ((v2 >> 3) >= 2)
  {
    v9 = (v2 >> 3) & 0x7FFFFFFF;
    v10 = 1;
    do
    {
      if (v3 < 64)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = *(*(v1 + 8 * v10 - 8) + 8);
        v13 = *(*(v1 + 8 * v10) + 8);
        v14 = (v3 / 64);
        do
        {
          v16 = *v12++;
          v15 = v16;
          v17 = *v13++;
          v18 = vcnt_s8((v17 | v15));
          v18.i16[0] = vaddlv_u8(v18);
          v11 += v18.i32[0];
          --v14;
        }

        while (v14);
      }

      if (result <= v11)
      {
        result = v11;
      }

      else
      {
        result = result;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

Phase::Controller::DVM23::VoiceGraph *Phase::Controller::DVM23::VoiceGraph::VoiceGraph(Phase::Controller::DVM23::VoiceGraph *this, int a2, int a3, const char *a4, uint64_t a5)
{
  v10 = Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::GraphNode(this, a2, a3);
  if (a5 == -1)
  {
    v11 = v10;
  }

  else
  {
    v11 = a5;
  }

  *(v10 + 56) = 0;
  *(v10 + 64) = v11;
  *(v10 + 72) = 0u;
  *(v10 + 120) = 0u;
  *v10 = &unk_284D38380;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 152) = 1065353216;
  v12 = strlen(a4);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  *(this + 183) = v12;
  v14 = this + 160;
  if (v12)
  {
    memmove(v14, a4, v12);
  }

  v14[v13] = 0;
  if (a2 >= 1)
  {
    operator new();
  }

  if (a3 >= 1)
  {
    operator new();
  }

  return this;
}

void sub_23A527B20(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v3);
  v5 = *(v1 + 12);
  if (v5)
  {
    *(v1 + 13) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 10) = v6;
    operator delete(v6);
  }

  Phase::Controller::DVM23::VoiceNode::~VoiceNode(v1);
  _Unwind_Resume(a1);
}

void Phase::Controller::DVM23::VoiceGraph::~VoiceGraph(void **this)
{
  *this = &unk_284D38380;
  Phase::Controller::DVM23::VoiceGraph::Reset(this);
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((this + 15));
  v2 = this[12];
  if (v2)
  {
    this[13] = v2;
    operator delete(v2);
  }

  v3 = this[9];
  if (v3)
  {
    this[10] = v3;
    operator delete(v3);
  }

  *this = &unk_284D38550;
  v4 = this + 4;
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = this + 1;
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

{
  Phase::Controller::DVM23::VoiceGraph::~VoiceGraph(this);

  JUMPOUT(0x23EE864A0);
}

void *Phase::Controller::DVM23::VoiceGraph::Reset(Phase::Controller::DVM23::VoiceGraph *this)
{
  for (i = *(this + 17); i; i = *i)
  {
    v3 = i[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  result = std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(this + 15);
  v5 = *(this + 9);
  v6 = *(this + 10);
  if (v5 != v6)
  {
    do
    {
      result = *v5;
      if (*v5)
      {
        result = (*(*result + 8))(result);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = *(this + 9);
  }

  *(this + 10) = v5;
  v7 = *(this + 12);
  v8 = *(this + 13);
  if (v7 != v8)
  {
    do
    {
      result = *v7;
      if (*v7)
      {
        result = (*(*result + 8))(result);
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = *(this + 12);
  }

  *(this + 13) = v7;
  return result;
}

uint64_t std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::resize(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (result != v7)
    {
      result = std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(result - 40);
    }

    a1[1] = v7;
  }

  return result;
}

uint64_t *Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveOutputConnection(uint64_t a1, signed int a2, uint64_t a3, int a4)
{
  if (a2 < 0)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  if ((-858993459 * ((*(a1 + 40) - v6) >> 3)) <= a2)
  {
    return 0;
  }

  v11 = v4;
  v12 = v5;
  v9 = a3;
  v10 = a4;
  v7 = (v6 + 40 * a2);
  result = std::__hash_table<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>::find<Phase::Controller::DVM23::VoiceNodeConnection>(v7, &v9);
  if (result)
  {
    std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase(v7, result);
    return 1;
  }

  return result;
}

uint64_t *Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveInputConnection(uint64_t a1, signed int a2, uint64_t a3, int a4)
{
  if (a2 < 0)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if ((-858993459 * ((*(a1 + 16) - v6) >> 3)) <= a2)
  {
    return 0;
  }

  v11 = v4;
  v12 = v5;
  v9 = a3;
  v10 = a4;
  v7 = (v6 + 40 * a2);
  result = std::__hash_table<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>::find<Phase::Controller::DVM23::VoiceNodeConnection>(v7, &v9);
  if (result)
  {
    std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase(v7, result);
    return 1;
  }

  return result;
}

uint64_t Phase::Controller::DVM23::VoiceGraph::RemoveConnectionFromGraphInput(Phase::Controller::DVM23::VoiceGraph *this, signed int a2, Phase::Controller::DVM23::VoiceNode *a3, int a4)
{
  if (a2 < 0 || (-858993459 * ((*(this + 2) - *(this + 1)) >> 3)) <= a2)
  {
    return 0;
  }

  v6 = *(*(this + 9) + 8 * a2);
  v7 = Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveOutputConnection(v6, 0, a3, a4);
  return v7 & Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveInputConnection(a3, a4, v6, 0);
}

uint64_t Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::AddOutputConnection(uint64_t a1, signed int a2, uint64_t a3)
{
  if (a2 < 0)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  if ((-858993459 * ((*(a1 + 40) - v3) >> 3)) <= a2)
  {
    goto LABEL_8;
  }

  v4 = 0;
  v5 = *a3;
  if (*a3 && v5 != a1)
  {
    v6 = *(a3 + 8);
    if ((v6 & 0x80000000) == 0 && v6 < (-858993459 * ((*(v5 + 16) - *(v5 + 8)) >> 3)))
    {
      std::__hash_table<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>::__emplace_unique_key_args<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::VoiceNodeConnection const&>((v3 + 40 * a2), a3);
      v4 = v7;
      return v4 & 1;
    }

LABEL_8:
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::AddInputConnection(uint64_t a1, signed int a2, uint64_t a3)
{
  if (a2 < 0)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 8);
  if ((-858993459 * ((*(a1 + 16) - v3) >> 3)) <= a2)
  {
    goto LABEL_8;
  }

  v4 = 0;
  v5 = *a3;
  if (*a3 && v5 != a1)
  {
    v6 = *(a3 + 8);
    if ((v6 & 0x80000000) == 0 && v6 < (-858993459 * ((*(v5 + 40) - *(v5 + 32)) >> 3)))
    {
      std::__hash_table<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>::__emplace_unique_key_args<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::VoiceNodeConnection const&>((v3 + 40 * a2), a3);
      v4 = v7;
      return v4 & 1;
    }

LABEL_8:
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t Phase::Controller::DVM23::VoiceGraph::RemoveNode(int8x8_t *this, Phase::Controller::DVM23::VoiceNode *a2)
{
  v2 = this[16];
  if (!*&v2)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *(a2 + 8);
    if (*&v2 <= v5)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v9 = *(*&this[15] + 8 * v7);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (!*v9)
  {
    return 0;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v2)
      {
        v11 %= *&v2;
      }
    }

    else
    {
      v11 &= *&v2 - 1;
    }

    if (v11 != v7)
    {
      return 0;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      return 0;
    }
  }

  if (*&v10[2] != v5)
  {
    goto LABEL_17;
  }

  v13 = *(a2 + 1);
  v12 = *(a2 + 2);
  if ((-858993459 * ((v12 - v13) >> 3)) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = v13 + 40 * v14;
      if (*(v15 + 24))
      {
        do
        {
          v16 = *(v15 + 16);
          v17 = *(v16 + 16);
          v18 = *(v16 + 24);
          Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveOutputConnection(v17, v18, a2, v14);
          Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveInputConnection(a2, v14, v17, v18);
        }

        while (*(v15 + 24));
        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
      }

      ++v14;
    }

    while (v14 < (-858993459 * ((v12 - v13) >> 3)));
  }

  v20 = *(a2 + 4);
  v19 = *(a2 + 5);
  if ((-858993459 * ((v19 - v20) >> 3)) >= 1)
  {
    v21 = 0;
    do
    {
      v22 = v20 + 40 * v21;
      if (*(v22 + 24))
      {
        do
        {
          v23 = *(v22 + 16);
          v24 = *(v23 + 16);
          v25 = *(v23 + 24);
          Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveInputConnection(v24, v25, a2, v21);
          Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveOutputConnection(a2, v21, v24, v25);
        }

        while (*(v22 + 24));
        v20 = *(a2 + 4);
        v19 = *(a2 + 5);
      }

      ++v21;
    }

    while (v21 < (-858993459 * ((v19 - v20) >> 3)));
  }

  v26 = this[16];
  v27 = *v10;
  v28 = v10[1];
  v29 = vcnt_s8(v26);
  v29.i16[0] = vaddlv_u8(v29);
  if (v29.u32[0] > 1uLL)
  {
    if (v28 >= *&v26)
    {
      v28 %= *&v26;
    }
  }

  else
  {
    v28 &= *&v26 - 1;
  }

  v30 = this[15];
  v31 = *(*&v30 + 8 * v28);
  do
  {
    v32 = v31;
    v31 = *v31;
  }

  while (v31 != v10);
  if (v32 == &this[17])
  {
    goto LABEL_48;
  }

  v33 = v32[1];
  if (v29.u32[0] > 1uLL)
  {
    if (v33 >= *&v26)
    {
      v33 %= *&v26;
    }
  }

  else
  {
    v33 &= *&v26 - 1;
  }

  if (v33 == v28)
  {
LABEL_50:
    if (v27)
    {
      v34 = v27[1];
      goto LABEL_52;
    }
  }

  else
  {
LABEL_48:
    if (!v27)
    {
      goto LABEL_49;
    }

    v34 = v27[1];
    if (v29.u32[0] > 1uLL)
    {
      v35 = v27[1];
      if (v34 >= *&v26)
      {
        v35 = v34 % *&v26;
      }
    }

    else
    {
      v35 = v34 & (*&v26 - 1);
    }

    if (v35 != v28)
    {
LABEL_49:
      *(*&v30 + 8 * v28) = 0;
      v27 = *v10;
      goto LABEL_50;
    }

LABEL_52:
    if (v29.u32[0] > 1uLL)
    {
      if (v34 >= *&v26)
      {
        v34 %= *&v26;
      }
    }

    else
    {
      v34 &= *&v26 - 1;
    }

    if (v34 != v28)
    {
      *(*&this[15] + 8 * v34) = v32;
      v27 = *v10;
    }
  }

  *v32 = v27;
  *v10 = 0;
  --*&this[18];
  operator delete(v10);
  *(a2 + 7) = 0;
  return 1;
}

uint64_t Phase::Controller::DVM23::VoiceGraph::AddConnection(Phase::Controller::DVM23::VoiceGraph *this, Phase::Controller::DVM23::VoiceGraph **a2, signed int a3, Phase::Controller::DVM23::VoiceGraph **a4, signed int a5)
{
  v7 = a2[7];
  if (v7 != a4[7])
  {
    return 0;
  }

  v17 = v5;
  v18 = v6;
  result = 0;
  if (a2 != a4 && v7 == this)
  {
    v15 = a4;
    v16 = a5;
    v14 = Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::AddOutputConnection(a2, a3, &v15);
    v15 = a2;
    v16 = a3;
    return v14 & Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::AddInputConnection(a4, a5, &v15);
  }

  return result;
}

uint64_t Phase::Controller::DVM23::VoiceGraph::GetVoice(Phase::Controller::DVM23::VoiceGraph *this, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4[0] = &unk_284D383E8;
  v4[1] = &v3;
  v4[2] = a2;
  v4[3] = v4;
  (*(*this + 56))(this, v4);
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice *)>::~__value_func[abi:ne200100](v4);
  return v3;
}

void sub_23A5285B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::VoiceGraph::GetGraph(Phase::Controller::DVM23::VoiceGraph *this)
{
  result = (*(*this + 80))(this);
  if (result)
  {
    v2 = result;
    if ((*(*result + 16))(result) == 0xFFFFFFFFFFFFFFCLL)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Phase::Controller::DVM23::VoiceGraph::GetNode(uint64_t this, uint64_t a2)
{
  if (*(this + 64) != a2)
  {
    v3 = (this + 136);
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      this = (*(*v3[3] + 80))(v3[3], a2);
      if (this)
      {
        return this;
      }
    }

    return 0;
  }

  return this;
}

uint64_t Phase::Controller::DVM23::VoiceGraph::OrderedVoicesHelper(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  for (i = *(*(*(*(result + 96) + 8 * a2) + 8) + 16); i; i = *i)
  {
    result = (*(*i[2] + 72))(i[2], *(i + 6), a3, a4);
  }

  return result;
}

uint64_t Phase::Controller::DVM23::VoiceGraph::AddConnectionFromGraphInput(Phase::Controller::DVM23::VoiceGraph *this, signed int a2, Phase::Controller::DVM23::VoiceGraph **a3, signed int a4)
{
  if (a2 < 0 || (-858993459 * ((*(this + 2) - *(this + 1)) >> 3)) <= a2)
  {
    return 0;
  }

  else
  {
    return Phase::Controller::DVM23::VoiceGraph::AddConnection(this, *(*(this + 9) + 8 * a2), 0, a3, a4);
  }
}

uint64_t Phase::Controller::DVM23::VoiceGraph::AddConnectionToGraphOutput(Phase::Controller::DVM23::VoiceGraph *this, signed int a2, Phase::Controller::DVM23::VoiceGraph **a3, signed int a4)
{
  if (a2 < 0 || (-858993459 * ((*(this + 5) - *(this + 4)) >> 3)) <= a2)
  {
    return 0;
  }

  else
  {
    return Phase::Controller::DVM23::VoiceGraph::AddConnection(this, a3, a4, *(*(this + 12) + 8 * a2), 0);
  }
}

uint64_t Phase::Controller::DVM23::VoiceGraph::RemovePassthroughConnection(Phase::Controller::DVM23::VoiceGraph *this, int a2, int a3)
{
  v3 = *(*(this + 9) + 8 * a2);
  v4 = *(*(this + 12) + 8 * a3);
  v5 = Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveOutputConnection(v3, 0, v4, 0);
  return v5 & Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveInputConnection(v4, 0, v3, 0);
}

uint64_t Phase::Controller::DVM23::VoiceGraph::PerHeadVoice(uint64_t result, int a2, uint64_t a3)
{
  for (i = *(*(*(*(result + 72) + 8 * a2) + 32) + 16); i; i = *i)
  {
    result = (*(*i[2] + 24))(i[2], *(i + 6), a3);
  }

  return result;
}

uint64_t Phase::Controller::DVM23::VoiceGraph::PerTailVoice(uint64_t result, int a2, uint64_t a3)
{
  for (i = *(*(*(*(result + 96) + 8 * a2) + 8) + 16); i; i = *i)
  {
    result = (*(*i[2] + 32))(i[2], *(i + 6), a3);
  }

  return result;
}

uint64_t Phase::Controller::DVM23::VoiceGraph::IsEmpty(Phase::Controller::DVM23::VoiceGraph *this)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_284D38430;
  v3[3] = v3;
  v1 = (*(*this + 64))(this, v3);
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice const*)>::~__value_func[abi:ne200100](v3);
  return v1;
}

void sub_23A5289A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t Phase::Controller::DVM23::VoiceGraph::CalculateDelayFrames(Phase::Controller::DVM23::VoiceGraph *this, unsigned int a2, Phase::Controller::DVM23::VoiceGraph *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v28[0] = 0;
  v28[1] = 0;
  v26 = 0;
  v27 = v28;
  __p = 0;
  v25 = 0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = this;
  }

  for (i = *(*(*(this + 12) + 8 * a2) + 8) + 16; ; (*(**(i + 16) + 72))(*(i + 16), *(i + 24), &__p, v5))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v19 = this;
  v20 = a2;
  v7 = __p;
  v21 = v25;
  if (__p != v25)
  {
    do
    {
      v8 = *v7;
      if ((-858993459 * ((*(*v7 + 16) - *(*v7 + 8)) >> 3)) < 1)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        do
        {
          Phase::Controller::DVM23::VoiceNode::InputVoiceConnections(v8, v9, &v29);
          v11 = v29;
          v12 = v30;
          if (v29 != v30)
          {
            do
            {
              v13 = *(v11 + 2);
              v22 = *v11;
              v23 = v13;
              v28[3] = &v22;
              v14 = std::__tree<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::__map_value_compare<std::pair<Phase::Controller::DVM23::Voice *,int>,std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::less<std::pair<Phase::Controller::DVM23::Voice *,int>>,true>,std::allocator<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>>>::__emplace_unique_key_args<std::pair<Phase::Controller::DVM23::Voice *,int>,std::piecewise_construct_t const&,std::tuple<std::pair<Phase::Controller::DVM23::Voice *,int>&&>,std::tuple<>>(&v27, &v22);
              if (v10 <= *(v14 + 48))
              {
                v10 = *(v14 + 48);
              }

              v11 += 2;
            }

            while (v11 != v12);
            v11 = v29;
          }

          if (v11)
          {
            v30 = v11;
            operator delete(v11);
          }

          ++v9;
        }

        while (v9 < (-858993459 * ((v8[2] - v8[1]) >> 3)));
      }

      if ((-858993459 * ((v8[5] - v8[4]) >> 3)) >= 1)
      {
        v15 = 0;
        do
        {
          v16 = v8[12];
          v29 = v8;
          LODWORD(v30) = v15;
          v22 = &v29;
          *(std::__tree<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::__map_value_compare<std::pair<Phase::Controller::DVM23::Voice *,int>,std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::less<std::pair<Phase::Controller::DVM23::Voice *,int>>,true>,std::allocator<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>>>::__emplace_unique_key_args<std::pair<Phase::Controller::DVM23::Voice *,int>,std::piecewise_construct_t const&,std::tuple<std::pair<Phase::Controller::DVM23::Voice *,int>&&>,std::tuple<>>(&v27, &v29) + 48) = v16 + v10;
          ++v15;
        }

        while (v15 < (-858993459 * ((v8[5] - v8[4]) >> 3)));
      }

      v7 += 8;
    }

    while (v7 != v21);
  }

  v22 = 0;
  v29 = &unk_284D38478;
  v30 = &v22;
  v31 = &v27;
  v32 = &v29;
  (*(*v19 + 32))(v19, v20, &v29);
  std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](&v29);
  v17 = v22;
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  std::__tree<Phase::SpatialCategory>::destroy(&v27, v28[0]);
  return v17;
}

void sub_23A528C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](&a22);
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<Phase::SpatialCategory>::destroy(&a17, a18);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::VoiceGraph::PerVoice(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    return 1;
  }

  do
  {
    result = (*(*v2[3] + 56))(v2[3], a2);
    v2 = *v2;
  }

  while (v2 && (result & 1) != 0);
  return result;
}

{
  v2 = *(a1 + 136);
  if (!v2)
  {
    return 1;
  }

  do
  {
    result = (*(*v2[3] + 64))(v2[3], a2);
    v2 = *v2;
  }

  while (v2 && (result & 1) != 0);
  return result;
}

void Phase::Controller::DVM23::VoiceGraph::ToGraphviz(Phase::Controller::DVM23::VoiceGraph *this@<X0>, const Phase::Controller::DVM23::VoiceGraph *a2@<X1>, _BYTE *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = xmmword_23A598360;
  v10 = malloc_type_calloc(0x100000uLL, 1uLL, 0x100004077774924uLL);
  if (a2)
  {
    Phase::StringBuffer::Write(&v9, "subgraph cluster_%p {\n", this);
  }

  else
  {
    Phase::StringBuffer::Write(&v9, "digraph VoiceGraph_Root {\n");
    Phase::StringBuffer::Write(&v9, "node [shape=record];\n");
    a2 = this;
  }

  v6 = this + 160;
  if (*(this + 183) < 0)
  {
    v6 = *v6;
  }

  Phase::StringBuffer::Write(&v9, "label=%s;\n", v6);
  for (i = *(this + 17); i; i = *i)
  {
    (*(*i[3] + 40))(__p);
    if (SHIBYTE(v12) >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    Phase::StringBuffer::Write(&v9, "%s", v8);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a2 == this)
  {
    __p[0] = &unk_284D384C0;
    __p[1] = this;
    v12 = &v9;
    v13 = __p;
    (*(*this + 64))(this, __p);
    std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice const*)>::~__value_func[abi:ne200100](__p);
  }

  Phase::StringBuffer::Write(&v9, "}\n");
  std::string::basic_string[abi:ne200100](a3, v10, *(&v9 + 1));
  free(v10);
}

void sub_23A528FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14)
{
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice const*)>::~__value_func[abi:ne200100](&a14);
  free(a13);
  _Unwind_Resume(a1);
}

_BYTE *Phase::Controller::DVM23::VoiceGraph::ToString@<X0>(Phase::Controller::DVM23::VoiceGraph *this@<X0>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = this + 160;
  if (*(this + 183) < 0)
  {
    if (!*(this + 21))
    {
LABEL_7:
      strcpy(__str, "graph");
      v4 = 5;
      return std::string::basic_string[abi:ne200100](a2, __str, v4);
    }

    v3 = *v3;
  }

  else if (!*(this + 183))
  {
    goto LABEL_7;
  }

  v4 = snprintf(__str, 0x40uLL, "(%s)graph", v3);
  return std::string::basic_string[abi:ne200100](a2, __str, v4);
}

uint64_t std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      do
      {
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 1065353216;
        v4 += 40;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>>(result, v9);
    }

    v11 = 40 * v6;
    v17 = 0;
    v18 = 40 * v6;
    *(&v19 + 1) = 0;
    v12 = 40 * v6;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 1065353216;
      v12 += 40;
    }

    while (v12 != 40 * v6 + 40 * a2);
    *&v19 = v11 + 40 * a2;
    v13 = *(result + 8);
    v14 = v11 + *result - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>,std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = *(v3 + 16);
    *(v3 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::~__split_buffer(&v17);
  }

  return result;
}

void sub_23A529204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>,std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::__hash_table(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    do
    {
      std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v6);
      v6 += 40;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__hash_table<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>::find<Phase::Controller::DVM23::VoiceNodeConnection>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = v3 - *a2 + 32 * *a2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3 - *a2 + 32 * *a2;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (result[2] == *a2 && *(result + 6) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>::__emplace_unique_key_args<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::VoiceNodeConnection const&>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 - *a2 + 32 * *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 - *a2 + 32 * *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

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
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || *(v8 + 6) != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::DVM23::VoiceNode *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::DVM23::VoiceNode *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::DVM23::VoiceNode *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::DVM23::VoiceNode *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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

__n128 std::__function::__func<Phase::Controller::DVM23::VoiceGraph::GetVoice(unsigned long long)::$_0,std::allocator<Phase::Controller::DVM23::VoiceGraph::GetVoice(unsigned long long)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D383E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<Phase::Controller::DVM23::VoiceGraph::GetVoice(unsigned long long)::$_0,std::allocator<Phase::Controller::DVM23::VoiceGraph::GetVoice(unsigned long long)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice *)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 64);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    **(a1 + 8) = *a2;
  }

  return v2 != v3;
}

uint64_t std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<Phase::Controller::DVM23::VoiceGraph::CalculateDelayFrames(int,Phase::Controller::DVM23::VoiceGraph*)::$_0,std::allocator<Phase::Controller::DVM23::VoiceGraph::CalculateDelayFrames(int,Phase::Controller::DVM23::VoiceGraph*)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D38478;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::VoiceGraph::CalculateDelayFrames(int,Phase::Controller::DVM23::VoiceGraph*)::$_0,std::allocator<Phase::Controller::DVM23::VoiceGraph::CalculateDelayFrames(int,Phase::Controller::DVM23::VoiceGraph*)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(uint64_t a1, unint64_t *a2, int *a3)
{
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v9 = *a2;
  v10 = v4;
  v11 = &v9;
  result = std::__tree<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::__map_value_compare<std::pair<Phase::Controller::DVM23::Voice *,int>,std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>,std::less<std::pair<Phase::Controller::DVM23::Voice *,int>>,true>,std::allocator<std::__value_type<std::pair<Phase::Controller::DVM23::Voice *,int>,unsigned long long>>>::__emplace_unique_key_args<std::pair<Phase::Controller::DVM23::Voice *,int>,std::piecewise_construct_t const&,std::tuple<std::pair<Phase::Controller::DVM23::Voice *,int>&&>,std::tuple<>>(v5, &v9);
  v8 = *v6;
  if (*v6 <= *(result + 48))
  {
    v8 = *(result + 48);
  }

  **(a1 + 8) = v8;
  return result;
}

__n128 std::__function::__func<Phase::Controller::DVM23::VoiceGraph::ToGraphviz(Phase::Controller::DVM23::VoiceGraph const*)::$_0,std::allocator<Phase::Controller::DVM23::VoiceGraph::ToGraphviz(Phase::Controller::DVM23::VoiceGraph const*)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D384C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::VoiceGraph::ToGraphviz(Phase::Controller::DVM23::VoiceGraph const*)::$_0,std::allocator<Phase::Controller::DVM23::VoiceGraph::ToGraphviz(Phase::Controller::DVM23::VoiceGraph const*)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice const*)>::operator()(uint64_t a1, uint64_t a2)
{
  if ((-858993459 * ((*(*a2 + 40) - *(*a2 + 32)) >> 3)) >= 1)
  {
    operator new();
  }

  return 1;
}

__n128 std::__function::__func<Phase::Controller::DVM23::VoiceGraph::ToGraphviz(Phase::Controller::DVM23::VoiceGraph const*)::$_0::operator() const(Phase::Controller::DVM23::Voice const*)::{lambda(Phase::Controller::DVM23::Voice*,int)#1},std::allocator<Phase::Controller::DVM23::VoiceGraph::ToGraphviz(Phase::Controller::DVM23::VoiceGraph const*)::$_0::operator() const(Phase::Controller::DVM23::Voice const*)::{lambda(Phase::Controller::DVM23::Voice*,int)#1}>,void ()(Phase::Controller::DVM23::Voice*,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D38508;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<Phase::Controller::DVM23::VoiceGraph::ToGraphviz(Phase::Controller::DVM23::VoiceGraph const*)::$_0::operator() const(Phase::Controller::DVM23::Voice const*)::{lambda(Phase::Controller::DVM23::Voice*,int)#1},std::allocator<Phase::Controller::DVM23::VoiceGraph::ToGraphviz(Phase::Controller::DVM23::VoiceGraph const*)::$_0::operator() const(Phase::Controller::DVM23::Voice const*)::{lambda(Phase::Controller::DVM23::Voice*,int)#1}>,void ()(Phase::Controller::DVM23::Voice*,int)>::operator()(uint64_t a1, void **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2)
  {
      ;
    }

    if (i)
    {
      v5 = *(a1 + 16);
      v6 = snprintf(__str, 0x80uLL, "voice_%p -> voice_%p;\n", **(a1 + 24), v2);
      std::string::basic_string[abi:ne200100](__p, __str, v6);
      if (v9 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      Phase::StringBuffer::Write(v5, "%s", v7);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::GraphNode(uint64_t a1, int a2, int a3)
{
  *a1 = &unk_284D38550;
  *(a1 + 8) = 0u;
  v5 = (a1 + 32);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::resize((a1 + 8), a2);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::resize(v5, a3);
  return a1;
}

void sub_23A52A344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Controller::DVM23::VoiceNode::~VoiceNode(Phase::Controller::DVM23::VoiceNode *this)
{
  *this = &unk_284D38550;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t Phase::Controller::DVM23::VoiceNode::InputVoiceConnections@<X0>(uint64_t this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v7[4] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  for (i = *(*(this + 8) + 40 * a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(i + 6);
    v7[0] = &unk_284D38570;
    v7[1] = a3;
    v7[3] = v7;
    (*(*v5 + 32))(v5, v6, v7);
    this = std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](v7);
  }

  return this;
}

void sub_23A52A4B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::VoiceNode::OutputVoiceConnections@<X0>(uint64_t this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v7[4] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  for (i = *(*(this + 32) + 40 * a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(i + 6);
    v7[0] = &unk_284D385B8;
    v7[1] = a3;
    v7[3] = v7;
    (*(*v5 + 24))(v5, v6, v7);
    this = std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](v7);
  }

  return this;
}

void sub_23A52A5B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::VoiceNode::PerInputVoiceConnection(uint64_t result, int a2, uint64_t a3)
{
  for (i = *(*(result + 8) + 40 * a2 + 16); i; i = *i)
  {
    result = (*(*i[2] + 32))(i[2], *(i + 6), a3);
  }

  return result;
}

uint64_t Phase::Controller::DVM23::VoiceNode::PerOutputVoiceConnection(uint64_t result, int a2, uint64_t a3)
{
  for (i = *(*(result + 32) + 40 * a2 + 16); i; i = *i)
  {
    result = (*(*i[2] + 24))(i[2], *(i + 6), a3);
  }

  return result;
}

uint64_t Phase::Controller::DVM23::VoiceNode::HeadVoiceConnections@<X0>(Phase::Controller::DVM23::VoiceNode *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4[0] = &unk_284D38600;
  v4[1] = a3;
  v4[3] = v4;
  (*(*this + 24))(this, a2, v4);
  return std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](v4);
}

void sub_23A52A760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::VoiceNode::TailVoiceConnections@<X0>(Phase::Controller::DVM23::VoiceNode *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4[0] = &unk_284D38648;
  v4[1] = a3;
  v4[3] = v4;
  (*(*this + 32))(this, a2, v4);
  return std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](v4);
}

void sub_23A52A834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::~GraphNode(uint64_t a1)
{
  *a1 = &unk_284D38550;
  v2 = (a1 + 8);
  v4 = (a1 + 32);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = v2;
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

{
  *a1 = &unk_284D38550;
  v2 = (a1 + 8);
  v4 = (a1 + 32);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = v2;
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return MEMORY[0x23EE864A0](a1, 0xA1C40B41E38F6);
}

void std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__func<Phase::Controller::DVM23::VoiceNode::InputVoiceConnections(int)::$_0,std::allocator<Phase::Controller::DVM23::VoiceNode::InputVoiceConnections(int)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D38570;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Phase::Controller::DVM23::VoiceNode::InputVoiceConnections(int)::$_0,std::allocator<Phase::Controller::DVM23::VoiceNode::InputVoiceConnections(int)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = *v5;
    v10 = v7 - *v5;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::VoiceConnection>>(v14);
    }

    v15 = 16 * v11;
    *v15 = v3;
    *(v15 + 8) = v4;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    v16 = *v5;
    *v5 = 0;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = v3;
    *(v7 + 8) = v4;
    v8 = v7 + 16;
  }

  *(v5 + 8) = v8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::VoiceConnection>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__func<Phase::Controller::DVM23::VoiceNode::OutputVoiceConnections(int)::$_0,std::allocator<Phase::Controller::DVM23::VoiceNode::OutputVoiceConnections(int)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D385B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Phase::Controller::DVM23::VoiceNode::OutputVoiceConnections(int)::$_0,std::allocator<Phase::Controller::DVM23::VoiceNode::OutputVoiceConnections(int)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = *v5;
    v10 = v7 - *v5;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::VoiceConnection>>(v14);
    }

    v15 = 16 * v11;
    *v15 = v3;
    *(v15 + 8) = v4;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    v16 = *v5;
    *v5 = 0;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = v3;
    *(v7 + 8) = v4;
    v8 = v7 + 16;
  }

  *(v5 + 8) = v8;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::VoiceNode::HeadVoiceConnections(int)::$_0,std::allocator<Phase::Controller::DVM23::VoiceNode::HeadVoiceConnections(int)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D38600;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Phase::Controller::DVM23::VoiceNode::HeadVoiceConnections(int)::$_0,std::allocator<Phase::Controller::DVM23::VoiceNode::HeadVoiceConnections(int)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = *v5;
    v10 = v7 - *v5;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::VoiceConnection>>(v14);
    }

    v15 = 16 * v11;
    *v15 = v3;
    *(v15 + 8) = v4;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    v16 = *v5;
    *v5 = 0;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = v3;
    *(v7 + 8) = v4;
    v8 = v7 + 16;
  }

  *(v5 + 8) = v8;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::VoiceNode::TailVoiceConnections(int)::$_0,std::allocator<Phase::Controller::DVM23::VoiceNode::TailVoiceConnections(int)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D38648;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Phase::Controller::DVM23::VoiceNode::TailVoiceConnections(int)::$_0,std::allocator<Phase::Controller::DVM23::VoiceNode::TailVoiceConnections(int)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = *v5;
    v10 = v7 - *v5;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::VoiceConnection>>(v14);
    }

    v15 = 16 * v11;
    *v15 = v3;
    *(v15 + 8) = v4;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    v16 = *v5;
    *v5 = 0;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = v3;
    *(v7 + 8) = v4;
    v8 = v7 + 16;
  }

  *(v5 + 8) = v8;
}

Phase::DspLayer23::VoicePool *Phase::DspLayer23::VoicePool::VoicePool(Phase::DspLayer23::VoicePool *this, int a2, int a3)
{
  *this = &unk_284D38690;
  Phase::DspLayer23::ChannelReserver::ChannelReserver((this + 8), a3);
  *(this + 70) = 0;
  *(this + 34) = 0u;
  *(this + 71) = a2;
  *(this + 69) = malloc_type_malloc(24 * a2, 0x10200403ED2C137uLL);
  Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Clear(this + 32);
  *(this + 36) = 0u;
  return this;
}

uint64_t Phase::DspLayer23::VoicePool::IsVoicePlaying(Phase::DspLayer23::VoicePool *this, unint64_t a2)
{
  v2 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (*v2 < a2)
  {
    v2 = v2[2];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (*v2 == a2)
  {
    v3 = v2[1];
  }

  else
  {
LABEL_7:
    v3 = -1;
  }

  return (*(*this + 200))(this, v3);
}

uint64_t Phase::DspLayer23::VoicePool::IsVoicePaused(Phase::DspLayer23::VoicePool *this, unint64_t a2)
{
  v2 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (*v2 < a2)
  {
    v2 = v2[2];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (*v2 == a2)
  {
    v3 = v2[1];
  }

  else
  {
LABEL_7:
    v3 = -1;
  }

  return (*(*this + 208))(this, v3);
}

uint64_t Phase::DspLayer23::VoicePool::IsVoiceStopped(Phase::DspLayer23::VoicePool *this, unint64_t a2)
{
  v2 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (*v2 < a2)
  {
    v2 = v2[2];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (*v2 == a2)
  {
    v3 = v2[1];
  }

  else
  {
LABEL_7:
    v3 = -1;
  }

  return (*(*this + 216))(this, v3);
}

const char *Phase::DspLayer23::VoicePool::Name(Phase::DspLayer23::VoicePool *this)
{
  v1 = (*(*this + 184))(this);
  if (v1 > 0x25)
  {
    return "Unknown KernelType";
  }

  else
  {
    return off_278B50050[v1];
  }
}

void Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Clear(uint64_t a1)
{
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  bzero(*(a1 + 520), 24 * *(a1 + 536));
  v2 = *(a1 + 520);
  *(a1 + 512) = v2;
  v3 = *(a1 + 536) - 1;
  if (*(a1 + 536) != 1)
  {
    v4 = (v2 + 16);
    v5 = 1;
    do
    {
      *v4 = v2 + 24 * v5;
      v4 += 3;
    }

    while (v3 > v5++);
  }

  *(v2 + 24 * v3 + 16) = 0;
  *(a1 + 528) = 0;
}

uint64_t Phase::Controller::VoicePoolEntry::VoicePoolEntry(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 > 0x25)
  {
    v10 = "Unknown KernelType";
  }

  else
  {
    v10 = off_278B50180[a2];
  }

  v11 = strlen(v10);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v11;
  if (v11)
  {
    memmove(a1, v10, v11);
  }

  *(a1 + v12) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 24) = a2;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v13 = *(a5 + 24);
  if (v13)
  {
    if (v13 == a5)
    {
      *(a1 + 128) = a1 + 104;
      (*(**(a5 + 24) + 24))(*(a5 + 24));
      goto LABEL_15;
    }

    v13 = (*(*v13 + 16))(v13);
  }

  *(a1 + 128) = v13;
LABEL_15:
  *(a1 + 136) = a4;
  *(a1 + 144) = a3;
  return a1;
}

void sub_23A52B4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 80);
  std::vector<Phase::Controller::VoicePoolBufferEntry>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::VoicePoolEntry::~VoicePoolEntry(void **this)
{
  free(this[17]);
  std::__function::__value_func<Phase::DspLayer23::VoicePool * ()(Phase::DspLayer23::VoiceEngine *,int)>::~__value_func[abi:ne200100]((this + 13));
  v2 = this + 10;
  std::vector<Phase::Controller::VoicePoolBufferEntry>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void Phase::Controller::VoicePoolEntry::AddBuffer(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v12 = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v14 = __PAIR64__(a5, a4);
  v8 = a1[11];
  if (v8 >= a1[12])
  {
    v10 = std::vector<Phase::Controller::VoicePoolBufferEntry>::__emplace_back_slow_path<Phase::Controller::VoicePoolBufferEntry>(a1 + 10, &v12);
    v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    a1[11] = v10;
    if (v11 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v8 = v12;
    v9 = *&__p.__r_.__value_.__l.__data_;
    *(v8 + 24) = *(&__p.__r_.__value_.__l + 2);
    *(v8 + 8) = v9;
    *(v8 + 32) = v14;
    a1[11] = v8 + 40;
  }
}

void sub_23A52B640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::VoicePoolEntry::GetIdsOfParameterOfClass(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a1 + 144);
  if (v4 >= 1)
  {
    v7 = 0;
    v8 = 0;
    for (i = 0; i < v4; ++i)
    {
      v10 = *(a1 + 136) + v7;
      if (*(v10 + 16) == a2)
      {
        v11 = *(v10 + 8);
        v12 = a3[2];
        if (v8 >= v12)
        {
          v13 = *a3;
          v14 = v8 - *a3;
          v15 = v14 >> 2;
          v16 = (v14 >> 2) + 1;
          if (v16 >> 62)
          {
            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
          }

          v17 = v12 - v13;
          if (v17 >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v18);
          }

          *(4 * v15) = v11;
          v8 = (4 * v15 + 4);
          memcpy(0, v13, v14);
          v19 = *a3;
          *a3 = 0;
          a3[1] = v8;
          a3[2] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v8 = v11;
          v8 += 4;
        }

        a3[1] = v8;
        v4 = *(a1 + 144);
      }

      v7 += 56;
    }
  }
}

void sub_23A52B7A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::VoicePoolEntry::GetBufferIds(Phase::Controller::VoicePoolEntry *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 10);
  v3 = *(this + 11);
  if (v2 != v3)
  {
    v5 = 0;
    do
    {
      v6 = a2[2];
      if (v5 >= v6)
      {
        v7 = *a2;
        v8 = v5 - *a2;
        v9 = v8 >> 3;
        v10 = (v8 >> 3) + 1;
        if (v10 >> 61)
        {
          std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__throw_length_error[abi:ne200100]();
        }

        v11 = v6 - v7;
        if (v11 >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2, v12);
        }

        *(8 * v9) = *v2;
        v5 = (8 * v9 + 8);
        memcpy(0, v7, v8);
        v13 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v5 = *v2;
        v5 += 8;
      }

      a2[1] = v5;
      v2 += 5;
    }

    while (v2 != v3);
  }
}

void sub_23A52B8D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<Phase::DspLayer23::VoicePool * ()(Phase::DspLayer23::VoiceEngine *,int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void std::vector<Phase::Controller::VoicePoolBufferEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Controller::VoicePoolBufferEntry>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}
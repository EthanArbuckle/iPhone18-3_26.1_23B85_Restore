char *sar::toStringAccessory(sar *this)
{
  v1 = this;
  bzero(sar::toStringAccessory::retStr, 0x400uLL);
  v2 = 0;
  v3 = 0;
  do
  {
    if (((v1 >> v2) & 1) != 0 && v3 <= 0x3FE)
    {
      v4 = sar::toStringAccessory::accessoryStringArray[v2];
      v5 = strlen(v4);
      memcpy(&sar::toStringAccessory::retStr[v3], v4, v5);
      v3 += strlen(v4);
    }

    ++v2;
  }

  while (v2 != 32);
  if (!v3)
  {
    return "Unknown Accessory";
  }

  result = sar::toStringAccessory::retStr;
  if (v3 <= 0x3FE)
  {
    sar::toStringAccessory::retStr[v3] = 0;
  }

  return result;
}

const char *sar::toString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown Mode";
  }

  else
  {
    return off_278CBC840[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown Region";
  }

  else
  {
    return off_278CBC868[a1];
  }
}

{
  if (a1 > 4)
  {
    return "Unknown TAS Mode";
  }

  else
  {
    return off_278CBC880[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_278CBC8A8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "Unknown HSAR Error Code";
  }

  else
  {
    return off_278CBC930[a1];
  }
}

{
  if (a1 > 3)
  {
    return "Unknown Data Action";
  }

  else
  {
    return off_278CBC950[a1];
  }
}

{
  if (a1 > 5)
  {
    return "Unknown SAR Boost Mode";
  }

  else
  {
    return off_278CBC970[a1];
  }
}

{
  if (a1 > 3)
  {
    return "Unknown SAR Limit Type";
  }

  else
  {
    return off_278CBC9A0[a1];
  }
}

uint64_t sar::toTASMode(sar *this, const char *a2)
{
  result = strncmp("Periodic Budget", this, 0xFuLL);
  if (result)
  {
    if (!strncmp("Default Budget", this, 0xEuLL))
    {
      return 1;
    }

    else if (!strncmp("Limit Budget", this, 0xCuLL))
    {
      return 2;
    }

    else if (!strncmp("Periodic Budget for Control Message", this, 0x23uLL))
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const char *sar::toString(int a1)
{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "Non-Freespace";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Freespace";
  }
}

{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "Legacy";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Dynamic";
  }
}

{
  if ((a1 + 469794816) > 0xD)
  {
    return "Unknown message type";
  }

  else
  {
    return off_278CBC8C0[a1 + 469794816];
  }
}

{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "MPE";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "SAR";
  }
}

void *AppleSARHelper::create_default_global@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x30uLL);
  *v3 = 0u;
  v3[1] = 0u;
  *(v3 + 28) = 0u;
  AppleSARHelper::init(v3);
  *a1 = v3;
  result = operator new(0x20uLL);
  *result = &unk_2852CB5A0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v3;
  a1[1] = result;
  return result;
}

void sub_240F0EC50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<AppleSARHelper>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240F0EC64(_Unwind_Exception *a1)
{
  std::vector<dispatch::callback<void({block_pointer})(sar::AppleSARMessageType,void *)>>::~vector[abi:ne200100](v1 + 1);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void AppleSARHelper::AppleSARHelper(AppleSARHelper *this)
{
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  AppleSARHelper::init(this);
}

{
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  AppleSARHelper::init(this);
}

void AppleSARHelper::init(io_connect_t *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("AppleSARService");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  *this = MatchingService;
  if (!MatchingService)
  {
    if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
    {
      qword_2810D7648 = 0;
      qword_2810D7650 = 0;
      __cxa_guard_release(&qword_2810D7640);
    }

    if (_MergedGlobals == -1)
    {
      v9 = qword_2810D7650;
      if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global);
      v9 = qword_2810D7650;
      if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }
    }

    LOWORD(v17) = 0;
    v10 = "Failed to create the service!";
    goto LABEL_16;
  }

  v5 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, this + 1);
  if (!v5)
  {
    *(this + 4) = 0;
    v11 = dispatch_queue_create("AppleSARHelperQueue", 0);
    if (!v11)
    {
      if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
      {
        qword_2810D7648 = 0;
        qword_2810D7650 = 0;
        __cxa_guard_release(&qword_2810D7640);
      }

      if (_MergedGlobals == -1)
      {
        v14 = qword_2810D7650;
        if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals, &__block_literal_global);
        v14 = qword_2810D7650;
        if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }
      }

      v17 = 136315138;
      v18 = "AppleSARSPMI";
      _os_log_error_impl(&dword_240F0E000, v14, OS_LOG_TYPE_ERROR, "Failed to create notification queue for %s", &v17, 0xCu);
      goto LABEL_28;
    }

    v12 = v11;
    v13 = IONotificationPortCreate(v2);
    *(this + 4) = v13;
    if (v13)
    {
      IONotificationPortSetDispatchQueue(v13, v12);
LABEL_27:
      dispatch_release(v12);
      goto LABEL_28;
    }

    if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
    {
      qword_2810D7648 = 0;
      qword_2810D7650 = 0;
      __cxa_guard_release(&qword_2810D7640);
    }

    if (_MergedGlobals == -1)
    {
      v15 = qword_2810D7650;
      if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global);
      v15 = qword_2810D7650;
      if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }
    }

    v17 = 136315138;
    v18 = "AppleSARSPMI";
    _os_log_error_impl(&dword_240F0E000, v15, OS_LOG_TYPE_ERROR, "Failed to creat IO notification port for %s", &v17, 0xCu);
    goto LABEL_27;
  }

  v6 = v5;
  if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
  {
    qword_2810D7648 = 0;
    qword_2810D7650 = 0;
    __cxa_guard_release(&qword_2810D7640);
  }

  if (_MergedGlobals == -1)
  {
    v7 = qword_2810D7650;
    if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v7 = qword_2810D7650;
    if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      v8 = *this;
      if (!*this)
      {
        goto LABEL_28;
      }

      goto LABEL_7;
    }
  }

  v17 = 67109120;
  LODWORD(v18) = v6;
  _os_log_error_impl(&dword_240F0E000, v7, OS_LOG_TYPE_ERROR, "Failed to get the connection (ret = %d)", &v17, 8u);
  v8 = *this;
  if (!*this)
  {
    goto LABEL_28;
  }

LABEL_7:
  if (IOObjectRelease(v8))
  {
    if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
    {
      qword_2810D7648 = 0;
      qword_2810D7650 = 0;
      __cxa_guard_release(&qword_2810D7640);
    }

    if (_MergedGlobals != -1)
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global);
      v9 = qword_2810D7650;
      if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      goto LABEL_11;
    }

    v9 = qword_2810D7650;
    if (os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      LOWORD(v17) = 0;
      v10 = "Failed to release the service!";
LABEL_16:
      _os_log_error_impl(&dword_240F0E000, v9, OS_LOG_TYPE_ERROR, v10, &v17, 2u);
    }
  }

LABEL_28:
  v16 = *MEMORY[0x277D85DE8];
}

void AppleSARHelper::~AppleSARHelper(AppleSARHelper *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    IONotificationPortDestroy(v2);
    *(this + 4) = 0;
    v3 = *(this + 10);
    if (v3)
    {
      IOObjectRelease(v3);
      *(this + 10) = 0;
    }
  }

  v4 = *(this + 1);
  if (v4 && IOServiceClose(v4))
  {
    if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
    {
      qword_2810D7648 = 0;
      qword_2810D7650 = 0;
      __cxa_guard_release(&qword_2810D7640);
    }

    if (_MergedGlobals == -1)
    {
      v5 = qword_2810D7650;
      if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

LABEL_26:
      *buf = 0;
      _os_log_error_impl(&dword_240F0E000, v5, OS_LOG_TYPE_ERROR, "Failed to close the connection!", buf, 2u);
      v6 = *this;
      if (!*this)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v5 = qword_2810D7650;
    if (os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  v6 = *this;
  if (!*this)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (!IOObjectRelease(v6))
  {
    goto LABEL_14;
  }

  if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
  {
    qword_2810D7648 = 0;
    qword_2810D7650 = 0;
    __cxa_guard_release(&qword_2810D7640);
  }

  if (_MergedGlobals == -1)
  {
    v7 = qword_2810D7650;
    if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v7 = qword_2810D7650;
    if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }
  }

  *v14 = 0;
  _os_log_error_impl(&dword_240F0E000, v7, OS_LOG_TYPE_ERROR, "Failed to release the service!", v14, 2u);
LABEL_14:
  v8 = *(this + 1);
  if (v8)
  {
    v9 = *(this + 2);
    v10 = *(this + 1);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11)
        {
          dispatch_release(v11);
        }

        v13 = *(v9 - 16);
        v9 -= 16;
        v12 = v13;
        if (v13)
        {
          _Block_release(v12);
        }
      }

      while (v9 != v8);
      v10 = *(this + 1);
    }

    *(this + 2) = v8;
    operator delete(v10);
  }
}

BOOL AppleSARHelper::getSPMIEventTrackingArray(uint64_t a1, void *outputStruct, size_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v3 = *(a1 + 4);
  if (!v3)
  {
    if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
    {
      qword_2810D7648 = 0;
      qword_2810D7650 = 0;
      __cxa_guard_release(&qword_2810D7640);
    }

    if (_MergedGlobals == -1)
    {
      v11 = qword_2810D7650;
      result = os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global);
      v11 = qword_2810D7650;
      result = os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_13;
      }
    }

    *buf = 0;
    v8 = "Connection has not been established yet!";
    v9 = v11;
    v10 = 2;
    goto LABEL_11;
  }

  v4 = IOConnectCallMethod(v3, 0xCu, 0, 0, 0, 0, 0, 0, outputStruct, &v13);
  if (!v4)
  {
    result = 1;
    goto LABEL_13;
  }

  v5 = v4;
  if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
  {
    qword_2810D7648 = 0;
    qword_2810D7650 = 0;
    __cxa_guard_release(&qword_2810D7640);
  }

  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v6 = qword_2810D7650;
    result = os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v6 = qword_2810D7650;
  result = os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_6:
    *buf = 67109120;
    v15 = v5;
    v8 = "Failed to get SPMI tracking list (ret = %d)";
    v9 = v6;
    v10 = 8;
LABEL_11:
    _os_log_error_impl(&dword_240F0E000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    result = 0;
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL AppleSARHelper::callUserClientMethod(AppleSARHelper *this, uint32_t a2, const unint64_t *a3, uint32_t a4, const void *a5, size_t a6, unint64_t *a7, unsigned int *a8, void *outputStruct, unint64_t a10)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = *(this + 1);
  if (!v10)
  {
    if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
    {
      qword_2810D7648 = 0;
      qword_2810D7650 = 0;
      __cxa_guard_release(&qword_2810D7640);
    }

    if (_MergedGlobals == -1)
    {
      v19 = qword_2810D7650;
      result = os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global);
      v19 = qword_2810D7650;
      result = os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_13;
      }
    }

    *buf = 0;
    v16 = "Connection has not been established yet!";
    v17 = v19;
    v18 = 2;
    goto LABEL_11;
  }

  v12 = IOConnectCallMethod(v10, a2, a3, a4, a5, a6, a7, a8, outputStruct, &a10);
  if (!v12)
  {
    result = 1;
    goto LABEL_13;
  }

  v13 = v12;
  if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
  {
    qword_2810D7648 = 0;
    qword_2810D7650 = 0;
    __cxa_guard_release(&qword_2810D7640);
  }

  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v14 = qword_2810D7650;
    result = os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v14 = qword_2810D7650;
  result = os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_6:
    *buf = 67109632;
    v22 = a2;
    v23 = 1024;
    v24 = a2;
    v25 = 1024;
    v26 = v13;
    v16 = "Failed to run the command for selector %d (0x%x) (ret = %d)";
    v17 = v14;
    v18 = 20;
LABEL_11:
    _os_log_error_impl(&dword_240F0E000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    result = 0;
  }

LABEL_13:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL AppleSARHelper::registerSARServiceCallback(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 4);
  if (!v2)
  {
    if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
    {
      qword_2810D7648 = 0;
      qword_2810D7650 = 0;
      __cxa_guard_release(&qword_2810D7640);
    }

    if (_MergedGlobals == -1)
    {
      v11 = qword_2810D7650;
      if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        v8 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global);
      v11 = qword_2810D7650;
      if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }
    }

    LOWORD(reference[0]) = 0;
    _os_log_error_impl(&dword_240F0E000, v11, OS_LOG_TYPE_ERROR, "Connection has not been established yet!", reference, 2u);
    goto LABEL_10;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  reference[0] = 0xAAAAAAAAAAAAAAAALL;
  v59 = v5;
  v60 = v5;
  reference[1] = AppleSARHelper::callback;
  v57 = a1;
  MachPort = IONotificationPortGetMachPort(*(a1 + 32));
  v7 = IOConnectCallAsyncScalarMethod(v2, 0x20u, MachPort, reference, 3u, 0, 0, 0, 0);
  v8 = v7 == 0;
  if (!v7)
  {
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    if (v13 < v12)
    {
      v14 = *a2;
      if (*a2)
      {
        v14 = _Block_copy(v14);
      }

      *v13 = v14;
      v15 = *(a2 + 8);
      v13[1] = v15;
      if (v15)
      {
        dispatch_retain(v15);
      }

      v16 = v13 + 2;
LABEL_59:
      *(a1 + 16) = v16;
      goto LABEL_60;
    }

    v17 = *(a1 + 8);
    v18 = v13 - v17;
    v19 = (v13 - v17) >> 4;
    if ((v19 + 1) >> 60)
    {
      std::vector<dispatch::callback<void({block_pointer})(sar::AppleSARMessageType,void *)>>::__throw_length_error[abi:ne200100]();
    }

    v20 = v12 - v17;
    v21 = v20 >> 3;
    if (v20 >> 3 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF0)
    {
      v22 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      if (v22 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = operator new(16 * v22);
      v24 = *a2;
      if (!*a2)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v23 = 0;
      v24 = *a2;
      if (!*a2)
      {
LABEL_29:
        v25 = *(a2 + 8);
        v26 = v23 + 16 * v19;
        *v26 = v24;
        *(v26 + 1) = v25;
        if (v25)
        {
          dispatch_retain(v25);
        }

        v27 = *(a1 + 8);
        v28 = *(a1 + 16);
        v29 = &v26[-(v28 - v27)];
        v30 = v28 - v27;
        if (v28 != v27)
        {
          v31 = v30 - 16;
          v32 = *(a1 + 8);
          v33 = &v26[-(v28 - v27)];
          if ((v30 - 16) < 0x110)
          {
            goto LABEL_73;
          }

          v34 = &v18[(v31 & 0xFFFFFFFFFFFFFFF0) - v30 + v23];
          v35 = v34 + 8;
          v36 = v27 + (v31 & 0xFFFFFFFFFFFFFFF0);
          v37 = (v34 + 16);
          v38 = &v18[v23 - v30 + 8] >= (v36 + 16) || v27 + 8 >= v37;
          v39 = !v38;
          v40 = v27 >= v35 || v29 >= v36 + 8;
          v32 = *(a1 + 8);
          v33 = &v26[-(v28 - v27)];
          if (!v40)
          {
            goto LABEL_73;
          }

          v32 = *(a1 + 8);
          v33 = &v26[-(v28 - v27)];
          if (v39)
          {
            goto LABEL_73;
          }

          v41 = v30 >> 4;
          v42 = (v31 >> 4) + 1;
          v43 = 16 * (v42 & 0x1FFFFFFFFFFFFFFCLL);
          v32 = v27 + v43;
          v33 = (v29 + v43);
          v44 = v23 + 16 * v19 + -16 * v41 + 32;
          v45 = (v27 + 32);
          v46 = v42 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v47 = *(v45 - 1);
            v48 = *v45;
            v49 = v45[1];
            *(v44 - 2) = *(v45 - 2);
            *(v44 - 1) = v47;
            *v44 = v48;
            *(v44 + 1) = v49;
            v44 += 64;
            *(v45 - 2) = 0uLL;
            *(v45 - 1) = 0uLL;
            *v45 = 0uLL;
            v45[1] = 0uLL;
            v45 += 4;
            v46 -= 4;
          }

          while (v46);
          if (v42 != (v42 & 0x1FFFFFFFFFFFFFFCLL))
          {
LABEL_73:
            do
            {
              *v33 = *v32;
              v33 += 16;
              *v32 = 0;
              *(v32 + 8) = 0;
              v32 += 16;
            }

            while (v32 != v28);
          }

          do
          {
            v50 = *(v27 + 8);
            if (v50)
            {
              dispatch_release(v50);
            }

            if (*v27)
            {
              _Block_release(*v27);
            }

            v27 += 16;
          }

          while (v27 != v28);
          v27 = *(a1 + 8);
        }

        v51 = v23 + 16 * v22;
        v16 = v26 + 16;
        *(a1 + 8) = v29;
        *(a1 + 16) = v26 + 16;
        *(a1 + 24) = v51;
        if (v27)
        {
          operator delete(v27);
        }

        goto LABEL_59;
      }
    }

    v24 = _Block_copy(v24);
    goto LABEL_29;
  }

  v9 = v7;
  if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
  {
    qword_2810D7648 = 0;
    qword_2810D7650 = 0;
    __cxa_guard_release(&qword_2810D7640);
  }

  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v10 = qword_2810D7650;
    if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    goto LABEL_6;
  }

  v10 = qword_2810D7650;
  if (os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    *buf = 67109120;
    v55 = v9;
    _os_log_error_impl(&dword_240F0E000, v10, OS_LOG_TYPE_ERROR, "Failed to setup callback (ret = %d)", buf, 8u);
  }

LABEL_60:
  v52 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_240F0FCB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AppleSARHelper::callback(AppleSARHelper *this, void *a2, int *a3, unint64_t *a4)
{
  if (!a2)
  {
    if (!this)
    {
      return;
    }

    if (!a3)
    {
      if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7640))
      {
        qword_2810D7648 = 0;
        qword_2810D7650 = 0;
        __cxa_guard_release(&qword_2810D7640);
      }

      if (_MergedGlobals == -1)
      {
        v4 = qword_2810D7650;
        if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals, &__block_literal_global);
        v4 = qword_2810D7650;
        if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      LOWORD(v15[0]) = 0;
      v14 = "Failed to fetch arguments!";
LABEL_36:
      _os_log_error_impl(&dword_240F0E000, v4, OS_LOG_TYPE_ERROR, v14, v15, 2u);
      return;
    }

    v6 = *(this + 1);
    v7 = *(this + 2);
    if (v6 == v7)
    {
      return;
    }

    v8 = *a3;
    while (*v6)
    {
      v9 = _Block_copy(*v6);
      v10 = *(v6 + 8);
      if (v10)
      {
        goto LABEL_13;
      }

LABEL_14:
      v11 = *(a3 + 2);
      if (v9)
      {
        v12 = _Block_copy(v9);
      }

      else
      {
        v12 = 0;
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 1174405120;
      v15[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3sar19AppleSARMessageTypeEPvEEclIJS2_S3_EEEvDpT__block_invoke;
      v15[3] = &__block_descriptor_tmp_10;
      if (v12)
      {
        v13 = _Block_copy(v12);
      }

      else
      {
        v13 = 0;
      }

      v18 = v8;
      aBlock = v13;
      v17 = v11;
      dispatch_async(v10, v15);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v12)
      {
        _Block_release(v12);
      }

      if (v10)
      {
        dispatch_release(v10);
      }

      if (v9)
      {
        _Block_release(v9);
      }

      v6 += 16;
      if (v6 == v7)
      {
        return;
      }
    }

    v9 = 0;
    v10 = *(v6 + 8);
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_13:
    dispatch_retain(v10);
    goto LABEL_14;
  }

  if ((atomic_load_explicit(&qword_2810D7640, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2810D7640))
    {
      qword_2810D7648 = 0;
      qword_2810D7650 = 0;
      __cxa_guard_release(&qword_2810D7640);
    }
  }

  if (_MergedGlobals == -1)
  {
    v4 = qword_2810D7650;
    if (!os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_35;
  }

  dispatch_once(&_MergedGlobals, &__block_literal_global);
  v4 = qword_2810D7650;
  if (os_log_type_enabled(qword_2810D7650, OS_LOG_TYPE_ERROR))
  {
LABEL_35:
    LOWORD(v15[0]) = 0;
    v14 = "Failed to process the callback!";
    goto LABEL_36;
  }
}

void **std::vector<dispatch::callback<void({block_pointer})(sar::AppleSARMessageType,void *)>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          dispatch_release(v5);
        }

        v7 = *(v3 - 2);
        v3 -= 16;
        v6 = v7;
        if (v7)
        {
          _Block_release(v6);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ___ZL16sGetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "sar.helper");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_278CBC738, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__shared_ptr_pointer<AppleSARHelper *,std::shared_ptr<AppleSARHelper>::__shared_ptr_default_delete<AppleSARHelper,AppleSARHelper>,std::allocator<AppleSARHelper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<AppleSARHelper *,std::shared_ptr<AppleSARHelper>::__shared_ptr_default_delete<AppleSARHelper,AppleSARHelper>,std::allocator<AppleSARHelper>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    AppleSARHelper::~AppleSARHelper(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<AppleSARHelper *,std::shared_ptr<AppleSARHelper>::__shared_ptr_default_delete<AppleSARHelper,AppleSARHelper>,std::allocator<AppleSARHelper>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000240F106E7)
  {
    if (((v2 & 0x8000000240F106E7 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000240F106E7))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000240F106E7 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

AppleSARHelper **std::unique_ptr<AppleSARHelper>::~unique_ptr[abi:ne200100](AppleSARHelper **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    AppleSARHelper::~AppleSARHelper(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void *__copy_helper_block_e8_32c71_ZTSN8dispatch5blockIU13block_pointerFvN3sar19AppleSARMessageTypeEPvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c71_ZTSN8dispatch5blockIU13block_pointerFvN3sar19AppleSARMessageTypeEPvEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t *GetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2810D7660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810D7660))
  {
    qword_2810D7668 = 0;
    unk_2810D7670 = 0;
    __cxa_guard_release(&qword_2810D7660);
  }

  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
  }

  return &qword_2810D7668;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}
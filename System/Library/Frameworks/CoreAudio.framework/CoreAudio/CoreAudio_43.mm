void sub_1DE5463F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInClockDevice::HasProperty(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = *a3;
  if (v7 > 1819111267)
  {
    switch(v7)
    {
      case 0x6C6D6F64:
        v21 = *(a1 + 384);
        v22 = *(v21 + 416);
        v10 = *(v21 + 424);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = *(a1 + 396);
        if (a4)
        {
          v24 = *(a4 + 240);
        }

        else
        {
          v24 = 0;
        }

        v41 = 0x676C6F626C6D6F64;
        v42 = 0;
        v38 = (*(*v22 + 544))(v22, v23, v24, &v41);
        break;
      case 0x736E756D:
        v30 = *(a1 + 384);
        v31 = *(v30 + 416);
        v10 = *(v30 + 424);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = *(a1 + 396);
        if (a4)
        {
          v33 = *(a4 + 240);
        }

        else
        {
          v33 = 0;
        }

        v41 = 0x676C6F62736E756DLL;
        v42 = 0;
        v38 = (*(*v31 + 544))(v31, v32, v33, &v41);
        break;
      case 0x6C6E616D:
        v13 = *(a1 + 384);
        v14 = *(v13 + 416);
        v10 = *(v13 + 424);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *(a1 + 396);
        if (a4)
        {
          v16 = *(a4 + 240);
        }

        else
        {
          v16 = 0;
        }

        v41 = 0x676C6F626C6E616DLL;
        v42 = 0;
        v38 = (*(*v14 + 544))(v14, v15, v16, &v41);
        break;
      default:
        goto LABEL_24;
    }

LABEL_51:
    v25 = v38;
    if (v10)
    {
      v39 = v10;
LABEL_53:
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      return v25;
    }

    return v25;
  }

  switch(v7)
  {
    case 0x6677766E:
      v17 = *(a1 + 384);
      v18 = *(v17 + 416);
      v10 = *(v17 + 424);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(a1 + 396);
      if (a4)
      {
        v20 = *(a4 + 240);
      }

      else
      {
        v20 = 0;
      }

      v41 = 0x676C6F626677766ELL;
      v42 = 0;
      v38 = (*(*v18 + 544))(v18, v19, v20, &v41);
      goto LABEL_51;
    case 0x6964656E:
      v26 = *(a1 + 384);
      v27 = *(v26 + 416);
      v10 = *(v26 + 424);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *(a1 + 396);
      if (a4)
      {
        v29 = *(a4 + 240);
      }

      else
      {
        v29 = 0;
      }

      v41 = 0x676C6F626964656ELL;
      v42 = 0;
      v38 = (*(*v27 + 544))(v27, v28, v29, &v41);
      goto LABEL_51;
    case 0x6C6D616B:
      v8 = *(a1 + 384);
      v9 = *(v8 + 416);
      v10 = *(v8 + 424);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *(a1 + 396);
      if (a4)
      {
        v12 = *(a4 + 240);
      }

      else
      {
        v12 = 0;
      }

      v41 = 0x676C6F626C6D616BLL;
      v42 = 0;
      v38 = (*(*v9 + 544))(v9, v11, v12, &v41);
      goto LABEL_51;
  }

LABEL_24:
  if (HALS_ClockDevice::HasProperty(a1, a2, a3))
  {
    return 1;
  }

  if (!(*(*(a1 + 376) + 24))(a1 + 376, v7))
  {
    return 0;
  }

  v34 = *(a1 + 384);
  v35 = *(v34 + 416);
  v36 = *(v34 + 424);
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a4)
  {
    v37 = *(a4 + 240);
  }

  else
  {
    v37 = 0;
  }

  v25 = (*(*v35 + 544))(v35, *(a1 + 396), v37, a3);
  if (v36)
  {
    v39 = v36;
    goto LABEL_53;
  }

  return v25;
}

void sub_1DE546838(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInClockDevice::Activate(HALS_PlugInClockDevice *this)
{
  v2 = this + 376;
  v3 = (*(**(*(this + 48) + 416) + 128))(*(*(this + 48) + 416), *(this + 48), this);
  *(this + 52) = v3;
  (**v3)();
  HALS_Object::Activate(this, v4);
  (*(*(this + 47) + 32))(v2);
  v7[0] = 0;
  v7[1] = 0;
  HALS_System::GetInstance(&v8, 0, v7);
  has_engine_for_device = HALS_IOContext_Manager::has_engine_for_device(*(v8 + 1744), this);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!has_engine_for_device)
  {
    v6[0] = 0;
    v6[1] = 0;
    HALS_System::GetInstance(&v8, 0, v6);
    HALS_IOContext_Manager::create_engine_for_device(*(v8 + 1744), this);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1DE5469E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN22HALS_PlugInClockDevice32HandlePlugIn_RequestConfigChangeENS_19ConfigChangePayloadEb_block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 56));
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 60));
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    kdebug_trace();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 544;
      *&buf[18] = 2080;
      *&buf[20] = v3 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --->", buf, 0x1Cu);
    }

    v54 = 0u;
    v55 = 0u;
    v8 = *(v3 + 16);
    v42 = 0x676C6F6263666762;
    LODWORD(v43) = 0;
    HALS_NotificationManager::PropertiesChanged_Sync(v8, 0, 1, &v42, v7);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v50[0] = 0;
    v50[1] = 0;
    HALS_System::GetInstance(buf, 0, v50);
    v9 = *buf;
    v10 = (*(*v3 + 208))(v3);
    v11 = v10;
    if (v10)
    {
      CFRetain(v10);
      cf = v11;
      v12 = CFGetTypeID(v11);
      if (v12 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      cf = 0;
    }

    HALS_System::GetRawDeviceListUsingClockDevice(v9, &v51, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v19 = *(v3 + 416);
    __p = 0;
    v47 = 0;
    v48 = 0;
    if (v19)
    {
      (*(*v19 + 224))(v19, &__p);
    }

    v45[0] = 0;
    v45[1] = 0;
    HALS_System::GetInstance(buf, 0, v45);
    HALS_IOContext_Manager::pause_contexts_for_device(*(*buf + 1744), v3);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    HALS_ClockDeviceState::HALS_ClockDeviceState(&v42);
    HALS_ClockDeviceState::Capture(&v42, v3, HALS_ClockDeviceState::sStandardDevicePropertiesToCapture);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 574;
      *&buf[18] = 2080;
      *&buf[20] = v3 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --- calling driver", buf, 0x1Cu);
    }

    if (v6)
    {
      kdebug_trace();
      v20 = *(v3 + 384);
      v21 = *(v20 + 416);
      v22 = *(v20 + 424);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = (*(*v21 + 88))(v21, *(v3 + 396), v4, v5);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      kdebug_trace();
      if (v23 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "HALS_PlugInClockDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 586;
        *&buf[18] = 2080;
        *&buf[20] = v3 + 120;
        v60 = 1024;
        v61 = v23;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --- driver encountered error %d", buf, 0x22u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 592;
      *&buf[18] = 2080;
      *&buf[20] = v3 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --- driver returned", buf, 0x1Cu);
    }

    HALS_ClockDeviceState::HALS_ClockDeviceState(buf);
    HALS_ClockDeviceState::Capture(v24, v3, HALS_ClockDeviceState::sStandardDevicePropertiesToCapture);
    HALS_ClockDeviceState::Compare(&v42, buf, &v54, v25);
    if (v54 == *(&v54 + 1))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 136315650;
        *&v56[4] = "HALS_PlugInClockDevice.cpp";
        *&v56[12] = 1024;
        *&v56[14] = 618;
        v57 = 2080;
        v58 = v3 + 120;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  but nothing changed", v56, 0x1Cu);
      }
    }

    else
    {
      v40 = 0x676C6F6264696666;
      LODWORD(v41) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v54, &v40, v26);
    }

    strcpy(v56, "egfcbolg");
    v56[9] = 0;
    *&v56[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(&v54, v56, v27);
    v28 = *(v3 + 416);
    if (v28)
    {
      (*(*v28 + 960))(v28);
    }

    std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*&buf[16]);
    std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(v44);
    v42 = 0;
    v43 = 0;
    HALS_System::GetInstance(buf, 0, &v42);
    HALS_IOContext_Manager::rebuild_engine_for_device(*(*buf + 1744), v3);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 641;
      *&buf[18] = 2080;
      *&buf[20] = v3 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --- sending notifications", buf, 0x1Cu);
    }

    kdebug_trace();
    v29 = *(v3 + 16);
    memset(buf, 0, 24);
    HALS_NotificationManager::GroupPropertiesChanged(1, v29, 0, &v54, buf, &__p);
    *v56 = buf;
    std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v56);
    v30 = v51;
    v31 = v52;
    if (v51 != v52)
    {
      v32 = v51;
      do
      {
        v33 = *v32;
        memset(buf, 0, 24);
        HALS_NotificationManager::GroupPropertiesChanged(1, v33, 0, &v54, buf, &__p);
        *v56 = buf;
        std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v56);
        ++v32;
      }

      while (v32 != v31);
    }

    kdebug_trace();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 656;
      *&buf[18] = 2080;
      *&buf[20] = v3 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --- restarting IO", buf, 0x1Cu);
    }

    v34 = *(v3 + 416);
    if (v34)
    {
      (*(*v34 + 240))(v34);
      (*(**(v3 + 416) + 232))(*(v3 + 416), &__p);
    }

    *v56 = 0;
    *&v56[8] = 0;
    HALS_System::GetInstance(buf, 0, v56);
    v35 = *(*buf + 1744);
    os_unfair_lock_lock(v35 + 4);
    os_unfair_lock_unlock(v35 + 4);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v40 = 0;
    v41 = 0;
    HALS_System::GetInstance(buf, 0, &v40);
    HALS_IOContext_Manager::resume_contexts_for_device(*(*buf + 1744), v3);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v39[0] = 0;
    v39[1] = 0;
    HALS_System::GetInstance(buf, 0, v39);
    HALS_System::CheckForDefaultDeviceChanges(*buf);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (__p)
    {
      v47 = __p;
      operator delete(__p);
    }

    if (v30)
    {
      operator delete(v30);
    }

    if (v54)
    {
      operator delete(v54);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 677;
      *&buf[18] = 2080;
      *&buf[20] = v3 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  <---", buf, 0x1Cu);
    }

    kdebug_trace();
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v14)
      {
        v16 = *(a1 + 60);
        *buf = 136315650;
        *&buf[4] = "HALS_PlugInClockDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 523;
        *&buf[18] = 1024;
        *&buf[20] = v16;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: Device %u is no longer valid, calling abort config change", buf, 0x18u);
      }

      if (*(a1 + 48) == 1)
      {
        v17 = *(v2 + 52);
        v18 = *(v2 + 53);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v17 + 96))(v17, *(a1 + 64), *(a1 + 32), *(a1 + 40));
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }
    }

    else if (v14)
    {
      v38 = *(a1 + 60);
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 533;
      *&buf[18] = 1024;
      *&buf[20] = v38;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: Failed to perform or abort config change request for device %u", buf, 0x18u);
    }
  }

  HALS_ObjectMap::ReleaseObject(v3, v15);
  HALS_ObjectMap::ReleaseObject(v2, v36);
  v37 = *MEMORY[0x1E69E9840];
}

void sub_1DE547490(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29)
{
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  HALS_ObjectMap::ReleaseObject(v30, a2);
  HALS_ObjectMap::ReleaseObject(v29, v33);
  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest::Manifest(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0u;
  *a1 = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  operator new();
}

void sub_1DE549A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 184);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(&a29);
  v32 = a22;
  v33 = *(a22 + 104);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    v32 = a22;
  }

  v34 = *(v32 + 80);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    v32 = a22;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>>>::~__hash_table(v32 + 32);
  a29 = a11;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void std::unordered_map<std::string,std::shared_ptr<AMCP::Graph::Node>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Graph::Node> const&>(void *a1, void *a2, uint64_t *a3)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v13 + 2, a2))
  {
    goto LABEL_17;
  }

  v16 = *a3;
  v15 = a3[1];
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = v13[6];
  v13[5] = v16;
  v13[6] = v15;
  if (v17)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1DE54A438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1DE54A6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void AMCP::Graph::Manifest::create_connection_and_intermediate_tasks(int8x8_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char **a6, uint64_t a7, uint64_t a8)
{
  v263 = *MEMORY[0x1E69E9840];
  if (*(a2 + 408) == 1)
  {
    AMCP::Graph::Graph_Wire::Connection::Connection(&__str, (a2 + 192));
  }

  else
  {
    *v242 = 0;
    v240 = 0u;
    v241 = 0u;
    v238 = 0u;
    v239 = 0u;
    v237 = 0u;
    __str_16 = 0u;
    memset(v236, 0, sizeof(v236));
    __str = 0u;
    *&v242[4] = 64;
    v244 = 0;
    v243 = 0;
    memset(v246, 0, sizeof(v246));
    v245 = 1;
  }

  v12 = a1 + 4;
  v13 = std::__string_hash<char>::operator()[abi:ne200100](&v236[1]);
  v14 = v13;
  v15 = a1[5];
  v171 = a1;
  v166 = a5;
  if (!*&v15)
  {
    goto LABEL_21;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v13;
    if (v13 >= *&v15)
    {
      v18 = v13 % *&v15;
    }
  }

  else
  {
    v18 = (*&v15 - 1) & v13;
  }

  v19 = *(*v12 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v14)
    {
      break;
    }

    if (v17 > 1)
    {
      if (v21 >= *&v15)
      {
        v21 %= *&v15;
      }
    }

    else
    {
      v21 &= *&v15 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_21;
    }

LABEL_20:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_21;
    }
  }

  if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v20 + 2, &v236[1]))
  {
    goto LABEL_20;
  }

  v22 = v20[6];
  v232 = v20[5];
  v233 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Terminal::get_description(v230, a4);
  v215 = 0u;
  v216 = 0u;
  v218 = 0u;
  v219 = 0u;
  v217 = 0;
  v220 = 0;
  v221 = 0u;
  v222 = 0u;
  v223 = 0;
  v224 = 0u;
  memset(v225, 0, sizeof(v225));
  std::string::operator=(&v215, &__str);
  *(&v216 + 1) = *(&__str_16 + 1);
  v217 = v236[0];
  std::string::operator=(&v218, &v236[1]);
  *(&v219 + 1) = v237;
  v220 = DWORD2(v237);
  v24 = *(a2 + 416);
  v23 = *(a2 + 424);
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(&v221 + 1);
  *&v221 = v24;
  *(&v221 + 1) = v23;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v27 = *(a2 + 432);
  v26 = *(a2 + 440);
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = *(&v222 + 1);
  *&v222 = v27;
  *(&v222 + 1) = v26;
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (!v221)
  {
    v100 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v100 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v28);
    }

    v102 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v101 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v101)
    {
      atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = *v102;
      std::__shared_weak_count::__release_shared[abi:ne200100](v101);
    }

    else
    {
      v103 = *v102;
    }

    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      AMCP::Terminal_Identifier_to_string(&v198, &__str);
      v134 = (v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v198 : v198.__r_.__value_.__r.__words[0];
      *v260 = 136315906;
      *&v260[4] = "Graph_Wire.cpp";
      *&v260[12] = 1024;
      *&v260[14] = 153;
      *&v260[18] = 2080;
      *&v260[20] = "not (info.m_source_clock != nullptr)";
      *&v260[28] = 2080;
      *&v260[30] = v134;
      _os_log_error_impl(&dword_1DE1F9000, v103, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing clock for wire - %s", v260, 0x26u);
      if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v198.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v190);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v254, &__str);
    if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v135 = &v254;
    }

    else
    {
      v135 = v254.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("Missing clock for wire - %s", v249, v135);
    std::logic_error::logic_error(&v193, v249);
    v193.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v198, &v193);
    v199 = 0uLL;
    v200 = 0;
    LODWORD(v201) = -1;
    v198.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v198.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v260, &v198);
    *&v260[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v260[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v260[48] = 153;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v196);
  }

  if (!v222)
  {
    v104 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v104 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v28);
    }

    v106 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v105 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v105)
    {
      atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
      v107 = *v106;
      std::__shared_weak_count::__release_shared[abi:ne200100](v105);
    }

    else
    {
      v107 = *v106;
    }

    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      AMCP::Terminal_Identifier_to_string(&v198, &v236[1]);
      v136 = (v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v198 : v198.__r_.__value_.__r.__words[0];
      *v260 = 136315906;
      *&v260[4] = "Graph_Wire.cpp";
      *&v260[12] = 1024;
      *&v260[14] = 154;
      *&v260[18] = 2080;
      *&v260[20] = "not (info.m_dest_clock != nullptr)";
      *&v260[28] = 2080;
      *&v260[30] = v136;
      _os_log_error_impl(&dword_1DE1F9000, v107, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing clock for wire - %s", v260, 0x26u);
      if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v198.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v190);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v254, &v236[1]);
    if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v137 = &v254;
    }

    else
    {
      v137 = v254.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("Missing clock for wire - %s", v249, v137);
    std::logic_error::logic_error(&v193, v249);
    v193.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v198, &v193);
    v199 = 0uLL;
    v200 = 0;
    LODWORD(v201) = -1;
    v198.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v198.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v260, &v198);
    *&v260[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v260[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v260[48] = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v196);
  }

  terminal_for_key = get_terminal_for_key(&__str, a3);
  v30 = *terminal_for_key;
  v31 = *(terminal_for_key + 16);
  v225[0] = *(terminal_for_key + 32);
  v223 = v30;
  v224 = v31;
  v32 = get_terminal_for_key(&v236[1], a3);
  v33 = *v32;
  v34 = *(v32 + 16);
  v225[5] = *(v32 + 32);
  *&v225[3] = v34;
  *&v225[1] = v33;
  v35 = *&v223.__vftable;
  v36 = *(a2 + 416);
  v37 = *(a2 + 424);
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = (*(*v36 + 152))(v36);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v35 != v39)
  {
    v108 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v108 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v38);
    }

    v110 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v109 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v109)
    {
      atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
      v111 = *v110;
      std::__shared_weak_count::__release_shared[abi:ne200100](v109);
    }

    else
    {
      v111 = *v110;
    }

    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      *v260 = 136315650;
      *&v260[4] = "Graph_Wire.cpp";
      *&v260[12] = 1024;
      *&v260[14] = 161;
      *&v260[18] = 2080;
      *&v260[20] = "not (info.m_source_format.mSampleRate == get_source_timebase()->get_sample_rate())";
      _os_log_error_impl(&dword_1DE1F9000, v111, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Unexpected sample rate for connection", v260, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v193);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Unexpected sample rate for connection", v249);
    std::logic_error::logic_error(&v196, v249);
    v196.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v198, &v196);
    v199 = 0uLL;
    v200 = 0;
    LODWORD(v201) = -1;
    v198.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v198.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v260, &v198);
    *&v260[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v260[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v260[48] = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v254);
  }

  v40 = *&v225[1];
  v41 = *(a2 + 432);
  v42 = *(a2 + 440);
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v44 = (*(*v41 + 152))(v41);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v40 != v44)
  {
    v112 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v112 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v43);
    }

    v114 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v113 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v113)
    {
      atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
      v115 = *v114;
      std::__shared_weak_count::__release_shared[abi:ne200100](v113);
    }

    else
    {
      v115 = *v114;
    }

    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      *v260 = 136315650;
      *&v260[4] = "Graph_Wire.cpp";
      *&v260[12] = 1024;
      *&v260[14] = 162;
      *&v260[18] = 2080;
      *&v260[20] = "not (info.m_dest_format.mSampleRate == get_dest_timebase()->get_sample_rate())";
      _os_log_error_impl(&dword_1DE1F9000, v115, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Unexpected sample rate for connection", v260, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v193);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Unexpected sample rate for connection", v249);
    std::logic_error::logic_error(&v196, v249);
    v196.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v198, &v196);
    v199 = 0uLL;
    v200 = 0;
    LODWORD(v201) = -1;
    v198.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v198.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v260, &v198);
    *&v260[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v260[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v260[48] = 162;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v254);
  }

  v45 = *(terminal_for_key + 104);
  if ((v45 & 0x100000000) == 0)
  {
    v116 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v116 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v43);
    }

    v118 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v117 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v117)
    {
      atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
      v119 = *v118;
      std::__shared_weak_count::__release_shared[abi:ne200100](v117);
    }

    else
    {
      v119 = *v118;
    }

    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      *v260 = 136315650;
      *&v260[4] = "Graph_Wire.cpp";
      *&v260[12] = 1024;
      *&v260[14] = 164;
      *&v260[18] = 2080;
      *&v260[20] = "not (source_terminal.get_buffer_alignment().has_value())";
      _os_log_error_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Source terminal is missing buffer alignment.", v260, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v193);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Source terminal is missing buffer alignment.", v249);
    std::logic_error::logic_error(&v196, v249);
    v196.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v198, &v196);
    v199 = 0uLL;
    v200 = 0;
    LODWORD(v201) = -1;
    v198.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v198.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v260, &v198);
    *&v260[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v260[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v260[48] = 164;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v254);
  }

  v46 = *(v32 + 104);
  if ((v46 & 0x100000000) == 0)
  {
    v120 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v120 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v43);
    }

    v122 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v121 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v121)
    {
      atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
      v123 = *v122;
      std::__shared_weak_count::__release_shared[abi:ne200100](v121);
    }

    else
    {
      v123 = *v122;
    }

    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      *v260 = 136315650;
      *&v260[4] = "Graph_Wire.cpp";
      *&v260[12] = 1024;
      *&v260[14] = 165;
      *&v260[18] = 2080;
      *&v260[20] = "not (dest_terminal.get_buffer_alignment().has_value())";
      _os_log_error_impl(&dword_1DE1F9000, v123, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Destination terminal is missing buffer alignment.", v260, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v193);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Destination terminal is missing buffer alignment.", v249);
    std::logic_error::logic_error(&v196, v249);
    v196.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v198, &v196);
    v199 = 0uLL;
    v200 = 0;
    LODWORD(v201) = -1;
    v198.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v198.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v260, &v198);
    *&v260[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v260[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v260[48] = 165;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v254);
  }

  if (v45 != v46)
  {
    v124 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v124 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v43);
    }

    v126 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v125 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v125)
    {
      atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
      v127 = *v126;
      std::__shared_weak_count::__release_shared[abi:ne200100](v125);
    }

    else
    {
      v127 = *v126;
    }

    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      *v260 = 136315650;
      *&v260[4] = "Graph_Wire.cpp";
      *&v260[12] = 1024;
      *&v260[14] = 168;
      *&v260[18] = 2080;
      *&v260[20] = "not (src_alignment == dest_alignment)";
      _os_log_error_impl(&dword_1DE1F9000, v127, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Source and dest terminals should have the same alignment.", v260, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v193);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Source and dest terminals should have the same alignment.", v249);
    std::logic_error::logic_error(&v196, v249);
    v196.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v198, &v196);
    v199 = 0uLL;
    v200 = 0;
    LODWORD(v201) = -1;
    v198.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v198.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v260, &v198);
    *&v260[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v260[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v260[48] = 168;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v254);
  }

  v228 = *(terminal_for_key + 104);
  v226 = HIDWORD(v241);
  if (*(terminal_for_key + 100))
  {
    if (*(v32 + 100))
    {
      v47 = 2;
    }

    else
    {
      v47 = 1;
    }

    v227 = v47;
  }

  else
  {
    v227 = 0;
  }

  v229 = v246[1];
  v208 = 0;
  v207 = 0u;
  v206 = 0u;
  v205 = 0u;
  v214 = 0;
  v213 = 0;
  v198.__r_.__value_.__s.__data_[0] = (v241 | HIDWORD(v241)) != 0;
  v198.__r_.__value_.__s.__data_[1] = DWORD1(v241) != 0;
  v198.__r_.__value_.__s.__data_[2] = *(&v239 + 1) != v240;
  v198.__r_.__value_.__s.__data_[3] = DWORD2(v241) == 1;
  v198.__r_.__value_.__s.__data_[4] = *&v246[3] != *&v246[5];
  v198.__r_.__value_.__s.__data_[5] = v243 != 0;
  v49 = *(a2 + 416);
  v48 = *(a2 + 424);
  if (v48)
  {
    atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v209 = v49;
  v210 = v48;
  v51 = *(a2 + 432);
  v50 = *(a2 + 440);
  if (v50)
  {
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v211 = v51;
  v212 = v50;
  v52 = *(a2 + 148);
  *&v198.__r_.__value_.__r.__words[1] = v223;
  v199 = v224;
  v200 = v225[0];
  v201 = *&v225[1];
  v202 = *&v225[3];
  v203 = v225[5];
  v204 = v52;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v205, *(&v239 + 1), v240, (v240 - *(&v239 + 1)) >> 2);
  v53 = std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v206 + 1, *&v246[3], *&v246[5], (*&v246[5] - *&v246[3]) >> 2);
  v208 = v231;
  v54 = v243;
  if (v243)
  {
    v55 = v244;
    if (v244)
    {
      atomic_fetch_add_explicit(&v244->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v53 = v214;
    v213 = v54;
    v214 = v55;
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }
  }

  v204 = *v242;
  if ((v198.__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    if (v226 || (v56 = (*(*v221 + 152))(v221), v56 != (*(*v222 + 152))(v222)))
    {
      v138 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v138 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v53);
      }

      v140 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v139 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v139)
      {
        atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
        v141 = *v140;
        std::__shared_weak_count::__release_shared[abi:ne200100](v139);
      }

      else
      {
        v141 = *v140;
      }

      if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
      {
        *v260 = 136315650;
        *&v260[4] = "Manifest.cpp";
        *&v260[12] = 1024;
        *&v260[14] = 231;
        *&v260[18] = 2080;
        *&v260[20] = "not (conversion_info.m_requires_resampler || (wire_info.m_drift_correction == Drift_Correction_Status::NoDriftCorrection && wire_info.m_source_clock->get_sample_rate() == wire_info.m_dest_clock->get_sample_rate()))";
        _os_log_error_impl(&dword_1DE1F9000, v141, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Drift correction can only be disabled for timebases with the same nominal sample rate.", v260, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v190);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Drift correction can only be disabled for timebases with the same nominal sample rate.", &v254);
      std::logic_error::logic_error(&v193, &v254);
      v193.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v256, &v193);
      *&v256.mBitsPerChannel = 0;
      *&v256.mBytesPerFrame = 0;
      v257.__r_.__value_.__r.__words[0] = 0;
      LODWORD(v257.__r_.__value_.__r.__words[1]) = -1;
      *&v256.mSampleRate = &unk_1F5991430;
      *&v256.mBytesPerPacket = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v260, &v256);
      *&v260[32] = "void AMCP::Graph::Manifest::create_connection_and_intermediate_tasks(const Graph_Wire &, Node_Map, const Terminal &, Terminal_Identifier, std::shared_ptr<Manifest_Task>, std::vector<std::shared_ptr<Manifest_Task>> &, std::shared_ptr<Manifest_Inventory>)";
      *&v260[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
      *&v260[48] = 231;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v196);
    }
  }

  if (*&v242[8])
  {
    v57 = 4;
  }

  else if (v246[0] == 1)
  {
    v57 = 3;
  }

  else if (v245 == 1)
  {
    v57 = 2;
  }

  else if (v246[2])
  {
    v57 = 1;
  }

  else
  {
    v57 = v227 < 2 || v246[1] != 0;
  }

  v196 = v223;
  *v197 = v224;
  *&v197[16] = v225[0];
  v59 = v221;
  if (*(&v221 + 1))
  {
    atomic_fetch_add_explicit((*(&v221 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (SBYTE7(__str_16) < 0)
  {
    std::string::__init_copy_ctor_external(&v193, __str, *(&__str + 1));
  }

  else
  {
    *&v193.__r_.__value_.__l.__data_ = __str;
    v193.__r_.__value_.__r.__words[2] = __str_16;
  }

  v194 = *(&__str_16 + 1);
  v195 = v236[0];
  v165 = v57;
  if (SHIBYTE(v236[3]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v236[1], v236[2]);
  }

  else
  {
    v190 = *&v236[1];
  }

  v191 = v237;
  v192 = DWORD2(v237);
  v60 = v221;
  v61 = v222;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v260, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *v260 = *(a2 + 40);
    *&v260[16] = *(a2 + 56);
  }

  *&v260[24] = *(a2 + 64);
  *&v260[32] = *(a2 + 72);
  v62 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a3, v260);
  v63 = v62;
  if ((v260[23] & 0x80000000) != 0)
  {
    operator delete(*v260);
  }

  if ((v198.__r_.__value_.__s.__data_[0] & 1) != 0 || (v198.__r_.__value_.__s.__data_[2] & 1) != 0 || (v198.__r_.__value_.__s.__data_[3] & 1) != 0 || (v198.__r_.__value_.__s.__data_[5] & 1) != 0 || (v198.__r_.__value_.__s.__data_[4] & 1) != 0 || *(*(v63 + 5) + 16) == 3 && v60 != v61)
  {
    v65 = v171[9];
    v64 = v171[10];
    if (v64)
    {
      atomic_fetch_add_explicit((*&v64 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v66 = v171[9];
  if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v181, v193.__r_.__value_.__l.__data_, v193.__r_.__value_.__l.__size_);
  }

  else
  {
    v181 = v193;
  }

  v182 = v194;
  v183 = v195;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
  }

  else
  {
    v178 = v190;
  }

  v180 = v192;
  v184 = v181;
  v185 = v194;
  memset(&v181, 0, sizeof(v181));
  v186 = v195;
  *&v187.__r_.__value_.__l.__data_ = *&v178.__r_.__value_.__l.__data_;
  v67 = v178.__r_.__value_.__r.__words[2];
  memset(&v178, 0, sizeof(v178));
  v179 = v191;
  v189 = v192;
  v187.__r_.__value_.__r.__words[2] = v67;
  v188 = v191;
  if (*(&v59 + 1))
  {
    atomic_fetch_add_explicit((*(&v59 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (*a8 == v66)
  {
    v128 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v128 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v62);
    }

    v130 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v129 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v129)
    {
      atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
      v131 = *v130;
      std::__shared_weak_count::__release_shared[abi:ne200100](v129);
    }

    else
    {
      v131 = *v130;
    }

    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      *v260 = 136315650;
      *&v260[4] = "Manifest_Inventory.cpp";
      *&v260[12] = 1024;
      *&v260[14] = 412;
      *&v260[18] = 2080;
      *&v260[20] = "not (previous_inventory.get() != this)";
      _os_log_error_impl(&dword_1DE1F9000, v131, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Bad arguments to Manifest_Inventory::request_buffer_for_terminal", v260, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v247);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Bad arguments to Manifest_Inventory::request_buffer_for_terminal", &v254);
    std::logic_error::logic_error(&v248, &v254);
    v248.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v256, &v248);
    *&v256.mBitsPerChannel = 0;
    *&v256.mBytesPerFrame = 0;
    v257.__r_.__value_.__r.__words[0] = 0;
    LODWORD(v257.__r_.__value_.__r.__words[1]) = -1;
    *&v256.mSampleRate = &unk_1F5991430;
    *&v256.mBytesPerPacket = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v260, &v256);
    *&v260[32] = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
    *&v260[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
    *&v260[48] = 412;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v255);
  }

  v167 = v227;
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v260, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
  }

  else
  {
    *v260 = v184;
  }

  *&v260[24] = v185;
  *&v260[32] = v186;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v260[40], v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v260[40] = v187;
  }

  v261 = v188;
  v262 = v189;
  if (*a8 && (v68 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>>>::find<AMCP::Wire_Identifier>((*a8 + 8), v260)) != 0)
  {
    v69 = *(v68 + 12);
    v70 = v68[13];
    if (v70)
    {
      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v256.mSampleRate = v69;
    *&v256.mFormatID = v70;
    AMCP::Graph::Manifest_Inventory::add_buffer(v66, &v256);
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }
  }

  else
  {
    v70 = 0;
    v69 = 0.0;
  }

  if ((v260[63] & 0x80000000) != 0)
  {
    operator delete(*&v260[40]);
  }

  if ((v260[23] & 0x80000000) != 0)
  {
    operator delete(*v260);
  }

  if (!v167 || v69 == 0.0)
  {
    v164 = v66;
    if (v167)
    {
      if (v167 != 1)
      {
        v86 = v66 + 3;
        while (1)
        {
          v86 = *v86;
          if (!v86)
          {
            break;
          }

          v87 = v86[12];
          if (*(v87 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v256, *(v87 + 8), *(v87 + 16));
          }

          else
          {
            v88 = *(v87 + 8);
            *&v256.mBytesPerPacket = *(v87 + 24);
            *&v256.mSampleRate = v88;
          }

          *&v256.mBytesPerFrame = *(v87 + 32);
          v256.mBitsPerChannel = *(v87 + 40);
          *v249 = &v256;
          *&v249[8] = &v256.mBytesPerFrame;
          *&v249[16] = &v256.mBitsPerChannel;
          v254.__r_.__value_.__r.__words[0] = &v184;
          v254.__r_.__value_.__l.__size_ = &v185;
          v254.__r_.__value_.__r.__words[2] = &v186;
          v89 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v249, &v254);
          v90 = v89;
          if (SHIBYTE(v256.mFramesPerPacket) < 0)
          {
            operator delete(*&v256.mSampleRate);
            if (v90)
            {
LABEL_177:
              v91 = v86[12];
              v92 = *(v91 + 304);
              v76 = *(v91 + 312);
              if (v76)
              {
                atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
                v255.__r_.__value_.__r.__words[0] = v92;
                v255.__r_.__value_.__l.__size_ = v76;
LABEL_164:
                atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
LABEL_185:
                if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v256, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
                }

                else
                {
                  *&v256.mSampleRate = *&v184.__r_.__value_.__l.__data_;
                  *&v256.mBytesPerPacket = *(&v184.__r_.__value_.__l + 2);
                }

                *&v256.mBytesPerFrame = v185;
                v256.mBitsPerChannel = v186;
                if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v257, v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
                }

                else
                {
                  v257 = v187;
                }

                v258 = v188;
                v259 = v189;
                *v249 = v196;
                *&v249[16] = *v197;
                v250 = *&v197[16];
                *&v248.__r_.__value_.__l.__data_ = v59;
                if (*(&v59 + 1))
                {
                  atomic_fetch_add_explicit((*(&v59 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                AMCP::Graph::Manifest_Inventory::request_shared_buffer_for_connection(&v254, v164, &v255, &v256, v249, v165, &v248);
              }

LABEL_184:
              *&v255.__r_.__value_.__l.__data_ = v92;
              goto LABEL_185;
            }
          }

          else if (v89)
          {
            goto LABEL_177;
          }
        }

        v92 = 0;
        goto LABEL_184;
      }

      v73 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, &v187);
      if (!v73)
      {
        v152 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v152 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v154 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v153 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v153)
        {
          atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
          v155 = *v154;
          std::__shared_weak_count::__release_shared[abi:ne200100](v153);
        }

        else
        {
          v155 = *v154;
        }

        if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
        {
          v162 = &v187;
          if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v162 = v187.__r_.__value_.__r.__words[0];
          }

          LODWORD(v256.mSampleRate) = 136315906;
          *(&v256.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v256.mFormatFlags) = 1024;
          *(&v256.mFormatFlags + 2) = 435;
          HIWORD(v256.mBytesPerPacket) = 2080;
          *&v256.mFramesPerPacket = "not (found_node != nodes.end())";
          LOWORD(v256.mChannelsPerFrame) = 2080;
          *(&v256.mChannelsPerFrame + 2) = v162;
          _os_log_error_impl(&dword_1DE1F9000, v155, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing node for connection in when building manifest: %s", &v256, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v253);
        __cxa_allocate_exception(0x40uLL);
        v163 = &v187;
        if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v163 = v187.__r_.__value_.__r.__words[0];
        }

        caulk::make_string("Missing node for connection in when building manifest: %s", &v255, v163);
        std::logic_error::logic_error(&v247, &v255);
        v247.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v249, &v247);
        v250 = 0;
        *&v249[24] = 0;
        v251 = 0;
        v252 = -1;
        *v249 = &unk_1F5991430;
        *&v249[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v256, v249);
        *&v256.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v257.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v257.__r_.__value_.__r.__words[1]) = 435;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v248);
      }

      nth_wire_ref = AMCP::Graph::Node::get_nth_wire_ref(&v256, v73[5], v188, 1u);
      v76 = *&v256.mFormatID;
      mSampleRate = v256.mSampleRate;
      if (!*&v256.mSampleRate)
      {
        v156 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v156 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(nth_wire_ref);
        }

        v158 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v157 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v157)
        {
          atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
          v159 = *v158;
          std::__shared_weak_count::__release_shared[abi:ne200100](v157);
        }

        else
        {
          v159 = *v158;
        }

        if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v256.mSampleRate) = 136315650;
          *(&v256.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v256.mFormatFlags) = 1024;
          *(&v256.mFormatFlags + 2) = 438;
          HIWORD(v256.mBytesPerPacket) = 2080;
          *&v256.mFramesPerPacket = "not ((wire_buffer) != nullptr)";
          _os_log_error_impl(&dword_1DE1F9000, v159, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", &v256, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v253);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v255);
        std::logic_error::logic_error(&v247, &v255);
        v247.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v249, &v247);
        v250 = 0;
        *&v249[24] = 0;
        v251 = 0;
        v252 = -1;
        *v249 = &unk_1F5991430;
        *&v249[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v256, v249);
        *&v256.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v257.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v257.__r_.__value_.__r.__words[1]) = 438;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v248);
      }

      v77 = (*(**&v256.mSampleRate + 80))(&v256, *&v256.mSampleRate);
      if (*&v196.__vftable != v256.mSampleRate || LODWORD(v196.__imp_.__imp_) != v256.mFormatID || *v197 != *&v256.mBytesPerPacket || *&v197[12] != *&v256.mChannelsPerFrame || (v77 = CA::Implementation::EquivalentFormatFlags(&v196, &v256, 0), (v77 & 1) == 0))
      {
        v78 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v78 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v77);
        }

        v80 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v79 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v79)
        {
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          v81 = *v80;
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }

        else
        {
          v81 = *v80;
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          AMCP::Terminal_Identifier_to_string(v249, &v187.__r_.__value_.__l.__data_);
          v142 = v249[23] >= 0 ? v249 : *v249;
          LODWORD(v256.mSampleRate) = 136315906;
          *(&v256.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v256.mFormatFlags) = 1024;
          *(&v256.mFormatFlags + 2) = 441;
          HIWORD(v256.mBytesPerPacket) = 2080;
          *&v256.mFramesPerPacket = "not (CA::StreamDescription::IsEquivalent(buffer_format, wire_buffer->get_format()))";
          LOWORD(v256.mChannelsPerFrame) = 2080;
          *(&v256.mChannelsPerFrame + 2) = v142;
          _os_log_error_impl(&dword_1DE1F9000, v81, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Container format doesnt match terminal format when building manifest: %s", &v256, 0x26u);
          if ((v249[23] & 0x80000000) != 0)
          {
            operator delete(*v249);
          }
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v177);
        __cxa_allocate_exception(0x40uLL);
        AMCP::Terminal_Identifier_to_string(&v248, &v187.__r_.__value_.__l.__data_);
        if ((v248.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v143 = &v248;
        }

        else
        {
          v143 = v248.__r_.__value_.__r.__words[0];
        }

        caulk::make_string("Container format doesnt match terminal format when building manifest: %s", &v255, v143);
        std::logic_error::logic_error(&v253, &v255);
        v253.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v249, &v253);
        v250 = 0;
        *&v249[24] = 0;
        v251 = 0;
        v252 = -1;
        *v249 = &unk_1F5991430;
        *&v249[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v256, v249);
        *&v256.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v257.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v257.__r_.__value_.__r.__words[1]) = 441;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v247);
      }
    }

    else
    {
      v82 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, &v184);
      if (!v82)
      {
        v144 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v144 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v146 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v145 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v145)
        {
          atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
          v147 = *v146;
          std::__shared_weak_count::__release_shared[abi:ne200100](v145);
        }

        else
        {
          v147 = *v146;
        }

        if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
        {
          v160 = &v184;
          if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v160 = v184.__r_.__value_.__r.__words[0];
          }

          LODWORD(v256.mSampleRate) = 136315906;
          *(&v256.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v256.mFormatFlags) = 1024;
          *(&v256.mFormatFlags + 2) = 424;
          HIWORD(v256.mBytesPerPacket) = 2080;
          *&v256.mFramesPerPacket = "not (found_node != nodes.end())";
          LOWORD(v256.mChannelsPerFrame) = 2080;
          *(&v256.mChannelsPerFrame + 2) = v160;
          _os_log_error_impl(&dword_1DE1F9000, v147, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing node for connection in when building manifest: %s", &v256, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v253);
        __cxa_allocate_exception(0x40uLL);
        v161 = &v184;
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v161 = v184.__r_.__value_.__r.__words[0];
        }

        caulk::make_string("Missing node for connection in when building manifest: %s", &v255, v161);
        std::logic_error::logic_error(&v247, &v255);
        v247.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v249, &v247);
        v250 = 0;
        *&v249[24] = 0;
        v251 = 0;
        v252 = -1;
        *v249 = &unk_1F5991430;
        *&v249[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v256, v249);
        *&v256.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v257.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v257.__r_.__value_.__r.__words[1]) = 424;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v248);
      }

      v83 = AMCP::Graph::Node::get_nth_wire_ref(&v256, v82[5], v185, 0);
      v76 = *&v256.mFormatID;
      mSampleRate = v256.mSampleRate;
      if (!*&v256.mSampleRate)
      {
        v148 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v148 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v83);
        }

        v150 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v149 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v149)
        {
          atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
          v151 = *v150;
          std::__shared_weak_count::__release_shared[abi:ne200100](v149);
        }

        else
        {
          v151 = *v150;
        }

        if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v256.mSampleRate) = 136315650;
          *(&v256.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v256.mFormatFlags) = 1024;
          *(&v256.mFormatFlags + 2) = 427;
          HIWORD(v256.mBytesPerPacket) = 2080;
          *&v256.mFramesPerPacket = "not ((wire_buffer) != nullptr)";
          _os_log_error_impl(&dword_1DE1F9000, v151, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", &v256, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v253);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v255);
        std::logic_error::logic_error(&v247, &v255);
        v247.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v249, &v247);
        v250 = 0;
        *&v249[24] = 0;
        v251 = 0;
        v252 = -1;
        *v249 = &unk_1F5991430;
        *&v249[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v256, v249);
        *&v256.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v257.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v257.__r_.__value_.__r.__words[1]) = 427;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v248);
      }

      v84 = (*(**&v256.mSampleRate + 80))(&v256, *&v256.mSampleRate);
      if (*&v196.__vftable != v256.mSampleRate || LODWORD(v196.__imp_.__imp_) != v256.mFormatID || *v197 != *&v256.mBytesPerPacket || *&v197[12] != *&v256.mChannelsPerFrame || (v84 = CA::Implementation::EquivalentFormatFlags(&v196, &v256, 0), (v84 & 1) == 0))
      {
        v96 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v96 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v84);
        }

        v98 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v97 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v97)
        {
          atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
          v99 = *v98;
          std::__shared_weak_count::__release_shared[abi:ne200100](v97);
        }

        else
        {
          v99 = *v98;
        }

        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          AMCP::Terminal_Identifier_to_string(v249, &v184.__r_.__value_.__l.__data_);
          v132 = v249[23] >= 0 ? v249 : *v249;
          LODWORD(v256.mSampleRate) = 136315906;
          *(&v256.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v256.mFormatFlags) = 1024;
          *(&v256.mFormatFlags + 2) = 430;
          HIWORD(v256.mBytesPerPacket) = 2080;
          *&v256.mFramesPerPacket = "not (CA::StreamDescription::IsEquivalent(buffer_format, wire_buffer->get_format()))";
          LOWORD(v256.mChannelsPerFrame) = 2080;
          *(&v256.mChannelsPerFrame + 2) = v132;
          _os_log_error_impl(&dword_1DE1F9000, v99, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Container format doesnt match terminal format when building manifest: %s", &v256, 0x26u);
          if ((v249[23] & 0x80000000) != 0)
          {
            operator delete(*v249);
          }
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v177);
        __cxa_allocate_exception(0x40uLL);
        AMCP::Terminal_Identifier_to_string(&v248, &v184.__r_.__value_.__l.__data_);
        if ((v248.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v133 = &v248;
        }

        else
        {
          v133 = v248.__r_.__value_.__r.__words[0];
        }

        caulk::make_string("Container format doesnt match terminal format when building manifest: %s", &v255, v133);
        std::logic_error::logic_error(&v253, &v255);
        v253.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v249, &v253);
        v250 = 0;
        *&v249[24] = 0;
        v251 = 0;
        v252 = -1;
        *v249 = &unk_1F5991430;
        *&v249[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v256, v249);
        *&v256.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v257.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v257.__r_.__value_.__r.__words[1]) = 430;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v247);
      }
    }

    *&v255.__r_.__value_.__l.__data_ = mSampleRate;
    v255.__r_.__value_.__l.__size_ = v76;
    if (v76)
    {
      goto LABEL_164;
    }

    goto LABEL_185;
  }

  if (*(&v59 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v59 + 1));
  }

  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v187.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v181.__r_.__value_.__l.__data_);
  }

  if (v70)
  {
    atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
    v71 = *(&v216 + 1);
    v72 = *(&v219 + 1);
    v175 = v69;
    v176 = v70;
    atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v71 = *(&v216 + 1);
    v72 = *(&v219 + 1);
    v175 = v69;
    v176 = 0;
  }

  AMCP::Graph::connect(*a6, v71, &v232, v72, &v175);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    v85 = v70;
  }

  else
  {
    v85 = 0;
  }

  if (*(a4 + 96) == 1 && !*(v166 + 24))
  {
    if (*(v166 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v172, *v166, *(v166 + 8));
    }

    else
    {
      v172 = *v166;
    }

    v173 = *(v166 + 24);
    v174 = *(v166 + 32);
    if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v249, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
    }

    else
    {
      *v249 = v172;
    }

    v93 = *(a4 + 16);
    *&v260[4] = *a4;
    LODWORD(v248.__r_.__value_.__l.__data_) = *&v249[16];
    *(v248.__r_.__value_.__r.__words + 3) = *&v249[19];
    memset(v249, 0, 24);
    *&v260[20] = v93;
    *&v260[36] = *(a4 + 32);
    operator new();
  }

  if (v85)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v85);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v193.__r_.__value_.__l.__data_);
  }

  if (*(&v59 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v59 + 1));
  }

  if (v214)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v214);
  }

  if (v212)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v212);
  }

  if (v210)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v210);
  }

  if (*(&v206 + 1))
  {
    *&v207 = *(&v206 + 1);
    operator delete(*(&v206 + 1));
  }

  if (v205)
  {
    *(&v205 + 1) = v205;
    operator delete(v205);
  }

  if (*(&v222 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v222 + 1));
  }

  if (*(&v221 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v221 + 1));
  }

  if (SBYTE7(v219) < 0)
  {
    operator delete(v218);
  }

  if (SBYTE7(v216) < 0)
  {
    operator delete(v215);
  }

  for (i = 64; i != 16; i -= 24)
  {
    *v260 = &v230[i];
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v260);
  }

  if (v233)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v233);
  }

  if (*&v246[3])
  {
    *&v246[5] = *&v246[3];
    operator delete(*&v246[3]);
  }

  if (v244)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v244);
  }

  if (*(&v239 + 1))
  {
    *&v240 = *(&v239 + 1);
    operator delete(*(&v239 + 1));
  }

  if (SBYTE7(v239) < 0)
  {
    operator delete(v238);
  }

  if (SHIBYTE(v236[3]) < 0)
  {
    operator delete(v236[1]);
  }

  if (SBYTE7(__str_16) < 0)
  {
    operator delete(__str);
  }

  v95 = *MEMORY[0x1E69E9840];
}

void sub_1DE54F020(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  AMCP::Wire_Identifier::~Wire_Identifier(&STACK[0x3C0]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  AMCP::Graph::Graph_Wire::Conversion_Info::~Conversion_Info(&STACK[0x4D8]);
  AMCP::Graph::Graph_Wire::Wire_Info::~Wire_Info(&STACK[0x5A0]);
  v5 = &STACK[0x6B8];
  v6 = -48;
  do
  {
    STACK[0x5A0] = v5;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x5A0]);
    v5 -= 3;
    v6 += 24;
  }

  while (v6);
  if (STACK[0x6E8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x6E8]);
  }

  AMCP::Graph::Graph_Wire::Connection::~Connection(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}

void AMCP::Graph::connect(char *a1, unint64_t a2, char **a3, unint64_t a4, void *a5)
{
  v8 = a5[1];
  v12[0] = *a5;
  v12[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Task::add_connection(a1, 1, a2, v12);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *a3;
  v10 = a5[1];
  v11[0] = *a5;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Task::add_connection(v9, 0, a4, v11);
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE54FBBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Task>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = (a1 + 48);
  v5 = -48;
  do
  {
    v6 = v4;
    std::vector<AMCP::Graph::Manifest_Task::Terminal_Connections>::__destroy_vector::operator()[abi:ne200100](&v6);
    v4 -= 3;
    v5 += 24;
  }

  while (v5);
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Task>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Graph::Manifest::get_converter_buffer(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v30 = *(a2 + 72);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *a5, *(a5 + 8));
  }

  else
  {
    v38 = *a5;
  }

  v39 = *(a5 + 24);
  v40 = *(a5 + 32);
  if (*(a5 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a5 + 40), *(a5 + 48));
  }

  else
  {
    __p = *(a5 + 40);
  }

  v31 = a3;
  v32 = a7;
  v42 = *(a5 + 64);
  v43 = *(a5 + 72);
  v14 = *a4;
  if (!*a4 || (v15 = *a6, v29 = *(a6 + 8), v16 = *(a6 + 24), v17 = *(a6 + 28), v18 = *(a6 + 32), (v19 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>>>::find<AMCP::Wire_Identifier>((v14 + 8), &v38)) == 0))
  {
LABEL_22:
    v22 = 0;
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_23;
  }

  v20 = v18;
  v22 = v19[12];
  v21 = v19[13];
  *a1 = v22;
  a1[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v15 != *(v22 + 88) || (vminv_u16(vmovn_s32(vceqq_s32(v29, *(v22 + 96)))) & 1) == 0 || v16 != *(v22 + 112) || v17 != *(v22 + 116) || v20 != *(v22 + 120))
  {
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    goto LABEL_22;
  }

  *&v34[0] = v22;
  *(&v34[0] + 1) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Inventory::add_buffer(v30, v34);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

LABEL_23:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    if (!v22)
    {
      goto LABEL_29;
    }
  }

  else if (!v22)
  {
LABEL_29:
    v23 = *(a2 + 72);
    v36[0] = 0;
    v36[1] = 0;
    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *a5, *(a5 + 8));
    }

    else
    {
      v38 = *a5;
    }

    v39 = *(a5 + 24);
    v40 = *(a5 + 32);
    if (*(a5 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a5 + 40), *(a5 + 48));
    }

    else
    {
      __p = *(a5 + 40);
    }

    v42 = *(a5 + 64);
    v43 = *(a5 + 72);
    v24 = *(a6 + 16);
    v34[0] = *a6;
    v34[1] = v24;
    v35 = *(a6 + 32);
    v25 = v32[1];
    v33[0] = *v32;
    v33[1] = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = v31[50];
    v28 = v31[51];
    v27 = v31[48];
    AMCP::Graph::Manifest_Inventory::request_shared_buffer_for_connection(&v37, v23, v36, &v38, v34, 0, v33);
  }
}

void sub_1DE550004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  AMCP::Wire_Identifier::~Wire_Identifier(&__p);
  _Unwind_Resume(a1);
}

uint64_t std::tuple<std::shared_ptr<AMCP::Graph::Node_Proc>,std::string>::~tuple(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Log>::__on_zero_shared(uint64_t a1)
{
  std::mutex::~mutex((a1 + 72));
  if (*(a1 + 56))
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 40) + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    *(a1 + 56) = 0;
    while (v2 != a1 + 40)
    {
      v5 = *(v2 + 8);
      std::__list_imp<std::pair<AMCP::Graph::Manifest_Message_Type,std::string>>::__delete_node[abi:ne200100](v2);
      v2 = v5;
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Log>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_emplace<AMCP::Graph::Manifest_Inventory>::__on_zero_shared(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 24));
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100]((a1 + 20));
  if (a1[17])
  {
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](a1 + 17);
    operator delete(a1[17]);
  }

  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[11];
  a1[11] = 0;
  if (v4)
  {
    std::default_delete<AMCP::Graph::Manifest_Counter>::operator()[abi:ne200100](v4);
  }

  v5 = a1[10];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::~__hash_table((a1 + 4));
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Inventory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Graph::Manifest::calculate_anchor_time(uint64_t a1, uint64_t a2, float *a3, int a4, uint64_t a5, int a6)
{
  v75 = *MEMORY[0x1E69E9840];
  AMCP::Graph::Manifest::get_master_timebase(&v69, *(a2 + 72), *(a2 + 80));
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v12 = *(&v69 + 1);
  *(a1 + 24) = v69;
  v69 = 0uLL;
  v13 = v12;
  switch(a4)
  {
    case 2:
      AMCP::Graph::Manifest::calculate_anchor_time_from_current_time(buf, a2, a3);
      *a1 = *buf;
      *(a1 + 16) = *&buf[16];
      *(a1 + 24) = *&buf[24];
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      sample_time = AMCP::DAL::DAL_Time::get_sample_time(a1);
      v32 = *(a1 + 24);
      v33 = *(a1 + 32);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = (*(*v32 + 136))(v32);
      v36 = v35 & (round(sample_time) < round(*&v34));
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (v36)
      {
        v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v37 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v34);
        }

        v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          v40 = *v39;
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }

        else
        {
          v40 = *v39;
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v42 = AMCP::DAL::DAL_Time::get_sample_time(a1);
          v43 = *(a1 + 24);
          v44 = *(a1 + 32);
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v45 = COERCE_DOUBLE((*(*v43 + 136))(v43));
          *buf = 136316162;
          *&buf[4] = "Manifest.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 434;
          *&buf[18] = 2080;
          *&buf[20] = "not (anchor_time.get_sample_time() >= anchor_time.get_clock()->get_anchor_time())";
          *&buf[28] = 2048;
          *&buf[30] = vcvtmd_s64_f64(v42);
          *&buf[38] = 2048;
          v71 = vcvtmd_s64_f64(v45);
          _os_log_error_impl(&dword_1DE1F9000, v40, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", buf, 0x30u);
          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
          }
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v67);
        __cxa_allocate_exception(0x40uLL);
        v46 = AMCP::DAL::DAL_Time::get_sample_time(a1);
        v47 = *(a1 + 24);
        v48 = *(a1 + 32);
        if (v48)
        {
          atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
        }

        v49 = COERCE_DOUBLE((*(*v47 + 136))(v47));
        caulk::make_string("Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", &v73, vcvtmd_s64_f64(v46), vcvtmd_s64_f64(v49));
        std::logic_error::logic_error(&v60, &v73);
        v60.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v61, &v60);
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v66 = -1;
        v61.__vftable = &unk_1F5991430;
        v62 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v61);
        *&buf[32] = "DAL::DAL_Time AMCP::Graph::Manifest::calculate_anchor_time(const Manifest_Execution_Context &, Anchor_Policy, std::variant<Sample_Time, uint64_t>) const";
        v71 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
        v72 = 434;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v59);
      }

      break;
    case 1:
      AMCP::Graph::Manifest::get_master_timebase(&v58, *(a2 + 72), *(a2 + 80));
      v25 = *(a2 + 72);
      v26 = *(a2 + 80);
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = *(v25 + 80);
      v27 = *(v25 + 88);
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      v29 = v58;
      v30 = *(&v58 + 1);
      if (*(&v58 + 1))
      {
        atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
        *buf = 2;
        *&buf[8] = 0;
        *&buf[16] = 0;
        *&buf[24] = v29;
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      else
      {
        *buf = 2;
        *&buf[8] = 0;
        *&buf[16] = 0;
        *&buf[24] = v58;
      }

      v74 = 0;
      operator new();
    case 0:
      if (a6)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      AMCP::Graph::Manifest::get_master_timebase(&v68, *(a2 + 72), *(a2 + 80));
      v14 = v68;
      v68 = 0uLL;
      *a1 = 2;
      *(a1 + 8) = a5;
      *(a1 + 16) = 0;
      *(a1 + 24) = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = AMCP::DAL::DAL_Time::get_sample_time(a1);
      v16 = *(a1 + 24);
      v17 = *(a1 + 32);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = (*(*v16 + 136))(v16);
      v20 = v19 & (round(v15) < round(*&v18));
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v20)
      {
        v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v21 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v18);
        }

        v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          v24 = *v23;
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        else
        {
          v24 = *v23;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v50 = AMCP::DAL::DAL_Time::get_sample_time(a1);
          v51 = *(a1 + 24);
          v52 = *(a1 + 32);
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = COERCE_DOUBLE((*(*v51 + 136))(v51));
          *buf = 136316162;
          *&buf[4] = "Manifest.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 418;
          *&buf[18] = 2080;
          *&buf[20] = "not (anchor_time.get_sample_time() >= anchor_time.get_clock()->get_anchor_time())";
          *&buf[28] = 2048;
          *&buf[30] = vcvtmd_s64_f64(v50);
          *&buf[38] = 2048;
          v71 = vcvtmd_s64_f64(v53);
          _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", buf, 0x30u);
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
          }
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v67);
        __cxa_allocate_exception(0x40uLL);
        v54 = AMCP::DAL::DAL_Time::get_sample_time(a1);
        v55 = *(a1 + 24);
        v56 = *(a1 + 32);
        if (v56)
        {
          atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
        }

        v57 = COERCE_DOUBLE((*(*v55 + 136))(v55));
        caulk::make_string("Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", &v73, vcvtmd_s64_f64(v54), vcvtmd_s64_f64(v57));
        std::logic_error::logic_error(&v60, &v73);
        v60.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v61, &v60);
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v66 = -1;
        v61.__vftable = &unk_1F5991430;
        v62 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v61);
        *&buf[32] = "DAL::DAL_Time AMCP::Graph::Manifest::calculate_anchor_time(const Manifest_Execution_Context &, Anchor_Policy, std::variant<Sample_Time, uint64_t>) const";
        v71 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
        v72 = 418;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v59);
      }

      break;
  }

  if ((*a1 & 0xFFFFFFFE) == 2)
  {
    AMCP::DAL::DAL_Time::get_sample_time(a1);
  }

  v41 = *MEMORY[0x1E69E9840];
}

void sub_1DE550F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  v41 = *(v39 + 32);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest::get_master_timebase(AMCP::Graph::Manifest *this, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 104);
  *this = *(a2 + 96);
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }
}

void AMCP::Graph::Manifest::calculate_anchor_time_from_current_time(AMCP::Graph::Manifest *this, const AMCP::Graph::Manifest_Execution_Context *a2, float *a3)
{
  v169 = *MEMORY[0x1E69E9840];
  AMCP::Graph::Manifest::get_master_timebase(&v151, *(a2 + 9), *(a2 + 10));
  v6 = *(a2 + 9);
  v7 = *(a2 + 10);
  v136 = a2;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(v6 + 48);
  v9 = *(v6 + 56);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = mach_absolute_time();
  v11 = v151;
  if (*(&v151 + 1))
  {
    atomic_fetch_add_explicit((*(&v151 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v137 = v7;
  *this = 1;
  *(this + 1) = 0;
  *(this + 2) = v10;
  *(this + 24) = v11;
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(this);
  v13 = *(this + 3);
  v14 = *(this + 4);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = (*(*v13 + 136))(v13);
  v17 = v16 & (round(sample_time) < round(*&v15));
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v17)
  {
    v105 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v105 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v15);
    }

    v107 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v106 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v106)
    {
      atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
      v108 = *v107;
      std::__shared_weak_count::__release_shared[abi:ne200100](v106);
    }

    else
    {
      v108 = *v107;
    }

    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      v113 = AMCP::DAL::DAL_Time::get_sample_time(this);
      v114 = *(this + 3);
      v115 = *(this + 4);
      if (v115)
      {
        atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v116 = COERCE_DOUBLE((*(*v114 + 136))(v114));
      if ((v117 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      *buf = 136316162;
      *&buf[4] = "Synchronized_Mixer_Manager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 116;
      *&buf[18] = 2080;
      *&buf[20] = "not (anchor_time.get_sample_time() >= anchor_time.get_clock()->get_anchor_time())";
      *&buf[28] = 2048;
      *&buf[30] = vcvtmd_s64_f64(v113);
      *&buf[38] = 2048;
      v166.__r_.__value_.__r.__words[0] = vcvtmd_s64_f64(v116);
      _os_log_error_impl(&dword_1DE1F9000, v108, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", buf, 0x30u);
      if (v115)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v115);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v142);
    __cxa_allocate_exception(0x40uLL);
    v118 = AMCP::DAL::DAL_Time::get_sample_time(this);
    v119 = *(this + 3);
    v120 = *(this + 4);
    if (v120)
    {
      atomic_fetch_add_explicit((v120 + 8), 1uLL, memory_order_relaxed);
    }

    v121 = COERCE_DOUBLE((*(*v119 + 136))(v119));
    if (v122)
    {
      caulk::make_string("Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", &v152, vcvtmd_s64_f64(v118), vcvtmd_s64_f64(v121));
      std::logic_error::logic_error(&v145, &v152);
      v145.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v159, &v145);
      v161 = 0;
      v162 = 0;
      v163 = 0;
      v164 = -1;
      v159.__vftable = &unk_1F5991430;
      v160 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v159);
      *&buf[32] = "DAL::DAL_Time AMCP::Graph::Synchronized_Mixer_Manager::get_anchor_time(const Timebase_Ref &) const";
      v166.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Synchronized_Mixer_Manager.cpp";
      LODWORD(v166.__r_.__value_.__r.__words[1]) = 116;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v147);
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v135 = a3;
  v18 = *(v8 + 56);
  if (v18)
  {
    while (1)
    {
      v19 = v18[5];
      v21 = *(v19 + 48);
      v20 = *(v19 + 56);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = (v151 | v21) == 0;
      if (v151)
      {
        v23 = v21 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_32;
      }

      v24 = (*(*v151 + 16))();
      v25 = (*(*v21 + 16))(v21);
      v26 = *(v24 + 23);
      if (v26 >= 0)
      {
        v27 = *(v24 + 23);
      }

      else
      {
        v27 = *(v24 + 8);
      }

      v28 = *(v25 + 23);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(v25 + 8);
      }

      if (v27 == v28)
      {
        break;
      }

      v22 = 0;
      if (v20)
      {
        goto LABEL_33;
      }

LABEL_34:
      if (v22)
      {
        v32 = v18[5];
        os_unfair_lock_lock(v32);
        AMCP::DAL::Synchronizer::_get_pending_time_range(buf, v32);
        v152 = v166;
        v153 = v167;
        v154 = v168;
        if (v168)
        {
          atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v168)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v168);
          }
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        v33 = *(v32 + 24);
        if (v33)
        {
          while (!AMCP::DAL::DAL_Time::operator<((v33 + 15), (v33 + 20)) || (v33[25] & 1) != 0)
          {
LABEL_66:
            v33 = *v33;
            if (!v33)
            {
              goto LABEL_70;
            }
          }

          v34 = v33[19];
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v159 = *(v33 + 10);
          v35 = v33[23];
          v160 = v33[22];
          v36 = v33[24];
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            *buf = v159;
            *&buf[16] = v160;
            *&buf[24] = v35;
            *&buf[32] = v36;
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            if (v34)
            {
              goto LABEL_47;
            }
          }

          else
          {
            *buf = *(v33 + 10);
            *&buf[16] = v33[22];
            *&buf[24] = v35;
            *&buf[32] = 0;
            if (v34)
            {
LABEL_47:
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }
          }

          v159 = *(v33 + 13);
          v37 = v33[29];
          v160 = v33[28];
          v161 = v37;
          v38 = v33[30];
          v162 = v38;
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((v159.__vftable & 2) == 0)
          {
            AMCP::DAL::DAL_Time_Delta::validate(&v159);
          }

          imp = v159.__imp_.__imp_;
          v40 = *&buf[24];
          if (*&buf[32])
          {
            atomic_fetch_add_explicit((*&buf[32] + 8), 1uLL, memory_order_relaxed);
          }

          LODWORD(v155) = 2;
          v156 = imp;
          v157 = 0;
          v158 = v40;
          AMCP::DAL::DAL_Time::operator+=(buf, &v155);
          if (v158.__imp_.__imp_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v158.__imp_.__imp_);
          }

          if (!AMCP::DAL::DAL_Time::operator<(buf, (v32 + 104)) && AMCP::DAL::DAL_Time::operator<(&v152, buf))
          {
            LODWORD(v152.__r_.__value_.__l.__data_) = *buf;
            *&v152.__r_.__value_.__r.__words[1] = *&buf[8];
            v42 = *&buf[24];
            v41 = *&buf[32];
            if (*&buf[32])
            {
              atomic_fetch_add_explicit((*&buf[32] + 8), 1uLL, memory_order_relaxed);
            }

            v43 = v154;
            v153 = v42;
            v154 = v41;
            if (v43)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            }
          }

          if (v162)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v162);
          }

          if (*&buf[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
          }

          goto LABEL_66;
        }

LABEL_70:
        os_unfair_lock_unlock(v32);
        v44 = AMCP::DAL::DAL_Time::operator<(this, &v152);
        v45 = !v44;
        if (v44)
        {
          v46 = &v152;
        }

        else
        {
          v46 = this;
        }

        *this = v46->__r_.__value_.__l.__data_;
        p_size = &v152.__r_.__value_.__l.__size_;
        if (!v44)
        {
          p_size = (this + 8);
        }

        *(this + 1) = *p_size;
        v48 = &v152.__r_.__value_.__s.__data_[16];
        if (!v44)
        {
          v48 = this + 16;
        }

        *(this + 2) = *v48;
        v49 = &v153;
        if (!v44)
        {
          v49 = (this + 24);
        }

        v50 = *v49;
        v51 = v154;
        v52 = *(this + 4);
        if (v45)
        {
          v53 = *(this + 4);
        }

        else
        {
          v53 = v154;
        }

        if (v53)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(this + 3) = v50;
        *(this + 4) = v53;
        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_92;
      }
    }

    if (v26 >= 0)
    {
      v30 = v24;
    }

    else
    {
      v30 = *v24;
    }

    if (v29 >= 0)
    {
      v31 = v25;
    }

    else
    {
      v31 = *v25;
    }

    v22 = memcmp(v30, v31, v27) == 0;
LABEL_32:
    if (!v20)
    {
      goto LABEL_34;
    }

LABEL_33:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    goto LABEL_34;
  }

LABEL_92:
  if ((*this & 0xFFFFFFFE) == 2)
  {
    AMCP::DAL::DAL_Time::get_sample_time(this);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v137)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v137);
  }

  v54 = AMCP::DAL::DAL_Time::get_sample_time(this);
  v55 = *(this + 3);
  v56 = *(this + 4);
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v57 = (*(*v55 + 136))(v55);
  v59 = v58 & (round(v54) < round(*&v57));
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (v59)
  {
    v109 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v109 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v57);
    }

    v111 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v110 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v110)
    {
      atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
      v112 = *v111;
      std::__shared_weak_count::__release_shared[abi:ne200100](v110);
    }

    else
    {
      v112 = *v111;
    }

    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      v123 = AMCP::DAL::DAL_Time::get_sample_time(this);
      v124 = *(this + 3);
      v125 = *(this + 4);
      if (v125)
      {
        atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v126 = COERCE_DOUBLE((*(*v124 + 136))(v124));
      *buf = 136316162;
      *&buf[4] = "Manifest.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 448;
      *&buf[18] = 2080;
      *&buf[20] = "not (anchor_time.get_sample_time() >= anchor_time.get_clock()->get_anchor_time())";
      *&buf[28] = 2048;
      *&buf[30] = vcvtmd_s64_f64(v123);
      *&buf[38] = 2048;
      v166.__r_.__value_.__r.__words[0] = vcvtmd_s64_f64(v126);
      _os_log_error_impl(&dword_1DE1F9000, v112, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", buf, 0x30u);
      if (v125)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v125);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v142);
    __cxa_allocate_exception(0x40uLL);
    v127 = AMCP::DAL::DAL_Time::get_sample_time(this);
    v128 = *(this + 3);
    v129 = *(this + 4);
    if (v129)
    {
      atomic_fetch_add_explicit((v129 + 8), 1uLL, memory_order_relaxed);
    }

    v130 = COERCE_DOUBLE((*(*v128 + 136))(v128));
    caulk::make_string("Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", &v152, vcvtmd_s64_f64(v127), vcvtmd_s64_f64(v130));
    std::logic_error::logic_error(&v145, &v152);
    v145.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v159, &v145);
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = -1;
    v159.__vftable = &unk_1F5991430;
    v160 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v159);
    *&buf[32] = "DAL::DAL_Time AMCP::Graph::Manifest::calculate_anchor_time_from_current_time(const Manifest_Execution_Context &) const";
    v166.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
    LODWORD(v166.__r_.__value_.__r.__words[1]) = 448;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v147);
  }

  if ((*this & 0xFFFFFFFE) == 2)
  {
    AMCP::DAL::DAL_Time::get_sample_time(this);
  }

  v60 = *(v136 + 9);
  v61 = *(v136 + 10);
  if (v61)
  {
    atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  buffer_alignments = AMCP::Graph::Manifest_Inventory::get_buffer_alignments(&v149, *(v60 + 24));
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v63 = v150[0];
  if (v150[0])
  {
    v64 = v150;
    do
    {
      v65 = v63;
      v66 = v64;
      v67 = *(v63 + 7);
      if (v67 >= 1)
      {
        v64 = v63;
      }

      v63 = v63[v67 < 1];
    }

    while (v63);
    if (v64 != v150)
    {
      v68 = (v67 >= 1 ? v65 : v66);
      if (v68[7] <= 1)
      {
        v69 = *(v136 + 9);
        v70 = *(v136 + 10);
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v71 = *(v69 + 24);
        if (v71)
        {
          v138 = 0;
          host_time = 0;
          v73 = 0;
          do
          {
            v74 = v71[12];
            if (*(v74 + 156) == 1)
            {
              v75 = *(v74 + 128);
              v76 = *(v74 + 136);
              if (v76)
              {
                atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v77 = (*(*v75 + 144))(v75, 1);
              if (v76)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v76);
              }

              v78 = v71[12];
              v79 = *(v78 + 128);
              v80 = *(v78 + 136);
              if (v80)
              {
                atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v81 = (*(*v79 + 136))(v79);
              v83 = v82;
              if (v80)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v80);
              }

              if ((v83 & 1) == 0)
              {
                v101 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v101 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v81);
                }

                v103 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v102 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v102)
                {
                  atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
                  v104 = *v103;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v102);
                }

                else
                {
                  v104 = *v103;
                }

                if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Manifest_Inventory.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 582;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (b.second->get_timebase()->get_anchor_time().has_value())";
                  _os_log_error_impl(&dword_1DE1F9000, v104, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Input timebase has been started but does not have an anchor time.", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string("Input timebase has been started but does not have an anchor time.", &v147);
                std::logic_error::logic_error(&v142, &v147);
                v142.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v159, &v142);
                v161 = 0;
                v162 = 0;
                v163 = 0;
                v164 = -1;
                v159.__vftable = &unk_1F5991430;
                v160 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v159);
                *&buf[32] = "DAL::DAL_Time AMCP::Graph::Manifest_Inventory::get_latest_input_anchor_time() const";
                v166.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
                LODWORD(v166.__r_.__value_.__r.__words[1]) = 582;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v145);
              }

              v84 = v71[12];
              v85 = *(v84 + 128);
              v86 = *(v84 + 136);
              if (v86)
              {
                atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v87 = COERCE_DOUBLE((*(*v85 + 136))(v85));
              if ((v88 & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              v89 = *(v71[12] + 128);
              v90 = *(v71[12] + 136);
              if (v90)
              {
                atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
              }

              *buf = 2;
              *&buf[8] = (HIDWORD(v77) + v77) + v87;
              *&buf[16] = 0;
              *&buf[24] = v89;
              if (v86)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v86);
              }

              if (host_time <= AMCP::DAL::DAL_Time::get_host_time(buf))
              {
                host_time = AMCP::DAL::DAL_Time::get_host_time(buf);
                v91 = v71[12];
                v73 = *(v91 + 128);
                v92 = *(v91 + 136);
                if (v92)
                {
                  atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v138)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v138);
                }

                v138 = v92;
              }

              buffer_alignments = *&buf[32];
              if (*&buf[32])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
              }
            }

            v71 = *v71;
          }

          while (v71);
          if (!v73 && host_time)
          {
            v131 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v131 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(buffer_alignments);
            }

            v133 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v132 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v132)
            {
              atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
              v134 = *v133;
              std::__shared_weak_count::__release_shared[abi:ne200100](v132);
            }

            else
            {
              v134 = *v133;
            }

            if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "Manifest_Inventory.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 595;
              *&buf[18] = 2080;
              *&buf[20] = "not (timebase != nullptr || latest_anchor == 0)";
              _os_log_error_impl(&dword_1DE1F9000, v134, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Did not find an input aligned timebase", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("Did not find an input aligned timebase", &v147);
            std::logic_error::logic_error(&v142, &v147);
            v142.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v159, &v142);
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = -1;
            v159.__vftable = &unk_1F5991430;
            v160 = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v159);
            *&buf[32] = "DAL::DAL_Time AMCP::Graph::Manifest_Inventory::get_latest_input_anchor_time() const";
            v166.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
            LODWORD(v166.__r_.__value_.__r.__words[1]) = 595;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v145);
          }

          v93 = v138;
          *buf = v73;
          *&buf[8] = v138;
          if (v138)
          {
            v94 = 0;
            atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
            goto LABEL_155;
          }
        }

        else
        {
          v93 = 0;
          host_time = 0;
          *buf = 0;
          *&buf[8] = 0;
        }

        v94 = 1;
LABEL_155:
        LODWORD(v155) = 1;
        v156 = 0;
        v157 = host_time;
        v158 = *buf;
        *buf = 0;
        *&buf[8] = 0;
        if ((v94 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v93);
        }

        if (v70)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v70);
        }

        AMCP::DAL::DAL_Time::translate_time(&v159, &v155, &v151);
        v95 = v151;
        if (*(&v151 + 1))
        {
          atomic_fetch_add_explicit((*(&v151 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        buf[0] = 0;
        *&buf[8] = 0;
        *&buf[16] = 0;
        *&buf[24] = v95;
        LODWORD(v166.__r_.__value_.__l.__data_) = 0;
        AMCP::Graph::Manifest_Counter::start(buf, this);
        v96 = v158;
        *&v147.__r_.__value_.__l.__data_ = v158;
        if (v158.__imp_.__imp_)
        {
          atomic_fetch_add_explicit(v158.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::DAL_Time_Delta::translate_time_delta(&v152, v135, &v147);
        if (v96.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v96.__imp_.__imp_);
          v145 = v96;
          atomic_fetch_add_explicit(v96.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
        }

        else
        {
          v145.__vftable = v96.__vftable;
          v145.__imp_.__imp_ = 0;
        }

        AMCP::Graph::Manifest_Counter::calculate_buffer_start(&v147, buf, &v145, 1, &v152, v135[10]);
        if (v96.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v96.__imp_.__imp_);
        }

        AMCP::DAL::DAL_Time::translate_time(&v145, &v147, &v151);
        if (!AMCP::DAL::DAL_Time::operator<(&v145, &v159))
        {
          goto LABEL_180;
        }

        AMCP::DAL::DAL_Time::operator-(&v139, &v145, &v159);
        v142 = v139;
        v143 = v140;
        v97 = *(&v141 + 1);
        v144 = v141;
        if (*(&v141 + 1))
        {
          atomic_fetch_add_explicit((*(&v141 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (v142.__vftable)
        {
          v143 = (v143 * 1.10000002);
          if ((v142.__vftable & 2) == 0)
          {
LABEL_173:
            if (!v97)
            {
              goto LABEL_175;
            }

            goto LABEL_174;
          }
        }

        else if ((v142.__vftable & 2) == 0)
        {
          goto LABEL_173;
        }

        *&v142.__imp_.__imp_ = *&v142.__imp_.__imp_ * 1.10000002;
        if (!v97)
        {
LABEL_175:
          boost::operators_impl::operator-(&v139, this, &v142);
          *this = v139;
          *(this + 2) = v140;
          v98 = v141;
          v141 = 0uLL;
          v99 = *(this + 4);
          *(this + 24) = v98;
          if (v99)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v99);
            if (*(&v141 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v141 + 1));
            }
          }

          if (*(&v144 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v144 + 1));
          }

LABEL_180:
          if (v146)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v146);
          }

          if (v148)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v148);
          }

          if (v154)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v154);
          }

          if (*&buf[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
          }

          if (v162)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v162);
          }

          if (v96.__imp_.__imp_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96.__imp_.__imp_);
          }

          goto LABEL_192;
        }

LABEL_174:
        std::__shared_weak_count::__release_shared[abi:ne200100](v97);
        goto LABEL_175;
      }
    }
  }

LABEL_192:
  if ((*this & 0xFFFFFFFE) == 2)
  {
    AMCP::DAL::DAL_Time::get_sample_time(this);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v150[0]);
  if (*(&v151 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v151 + 1));
  }

  v100 = *MEMORY[0x1E69E9840];
}

void sub_1DE552C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, void *a46, void *a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v63 + 32))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v63 + 32));
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5GraphL38get_earliest_start_time_across_devicesENSt3__110shared_ptrINS0_8TimebaseEEERKNS2_INS0_12Timebase_SetEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::operator()(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(&v3 + 1);
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v3;
  v5 = (*(*v3 + 184))();
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = 2;
    v16 = v5;
    v17 = 0;
    v18 = v12;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v15 = 2;
    v16 = v5;
    v17 = 0;
    v18 = v12;
  }

  AMCP::DAL::DAL_Time_Delta::translate_time_delta(v13, &v15, (a1 + 16));
  v6 = *(a1 + 8);
  if (AMCP::DAL::DAL_Time_Delta::operator<(v6, v13))
  {
    v7 = v13;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a1 + 8);
  *v8 = *v7;
  *(v8 + 8) = *(v7 + 1);
  v9 = *(v7 + 3);
  *(v8 + 16) = *(v7 + 2);
  v10 = *(v7 + 4);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v8 + 32);
  *(v8 + 24) = v9;
  *(v8 + 32) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(&v18 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE553404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F5979A78;
  a2[1] = v2;
  v3 = result[3];
  a2[2] = result[2];
  a2[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::~__func(void *a1)
{
  *a1 = &unk_1F5979A78;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::~__func(void *a1)
{
  *a1 = &unk_1F5979A78;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::Graph::Manifest::setup_processing(AMCP::Log::AMCP_Scope_Registry *a1, AMCP::DAL::DAL_Time_Delta *a2, uint64_t a3)
{
  v140 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v87 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v87 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v89 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v88 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v88)
    {
      atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
      v90 = *v89;
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    else
    {
      v90 = *v89;
    }

    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Manifest.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 490;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_processing_state == Processing_State::Idle)";
      _os_log_error_impl(&dword_1DE1F9000, v90, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v123);
    std::logic_error::logic_error(&v126, &v123);
    v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v130, &v126);
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v135 = -1;
    v130.__vftable = &unk_1F5991430;
    v131 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v130);
    v137 = "Start_Stop_Result AMCP::Graph::Manifest::setup_processing(const Manifest_Execution_Context &, const Manifest_Start_State &, const std::atomic_uint32_t &)";
    v138 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
    v139 = 490;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
  }

  v4 = a1;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v4 + 9);
  v8 = *(v7 + 96);
  v9 = *(v7 + 104);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = (v5 | v8) == 0;
  if (v5 && v8)
  {
    v11 = (*(*v5 + 16))(v5);
    v5 = (*(*v8 + 16))(v8);
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = *(v11 + 23);
    }

    else
    {
      v13 = *(v11 + 8);
    }

    v14 = *(v5 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v5 + 8);
    }

    if (v13 != v14)
    {
      v10 = 0;
      if (!v9)
      {
LABEL_23:
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        if (v10)
        {
          v18 = *(v4 + 9);
          v19 = *(v18 + 80);
          v20 = *(v18 + 88);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = *(a3 + 8);
          v22 = *(a3 + 16);
          if (v21 != v22)
          {
            v23 = (v19 + 40);
            if (v19 + 40 != a3 + 8)
            {
              v23 = std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v23, v21, v22, (v22 - v21) >> 2);
            }

            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            v122 = *(v4 + 9);
            v24 = *(v122 + 3);
            if (v24)
            {
              v25 = *(a3 + 40);
              do
              {
                v26 = v24[12];
                if (*(v26 + 148) == 2 && !*(v26 + 304))
                {
                  v27 = *(v26 + 128);
                  v28 = *(v26 + 136);
                  if (v28)
                  {
                    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                    v29 = *(v26 + 320);
                    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                    v30 = v28;
                  }

                  else
                  {
                    v30 = 0;
                    v29 = *(v26 + 320);
                  }

                  *&v31 = v27;
                  *(&v31 + 1) = v30;
                  LODWORD(v124[0]) = 2;
                  *&v124[1] = v25 + v29 + v25 + v29;
                  v124[2] = 0;
                  v125 = v31;
                  v32 = *(v26 + 152);
                  if (v32 > 2)
                  {
                    if (v32 == 3)
                    {
                      operator new();
                    }

                    if (v32 == 4)
                    {
                      v33 = *(v122 + 6);
                      if (!v33)
                      {
                        v107 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                        if ((v107 & 1) == 0)
                        {
                          AMCP::Log::AMCP_Scope_Registry::initialize(v23);
                        }

                        v109 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                        v108 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                        if (v108)
                        {
                          atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
                          v110 = *v109;
                          std::__shared_weak_count::__release_shared[abi:ne200100](v108);
                        }

                        else
                        {
                          v110 = *v109;
                        }

                        if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315650;
                          *&buf[4] = "Manifest_Buffer.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 90;
                          *&buf[18] = 2080;
                          *&buf[20] = "not (msm.operator BOOL())";
                          _os_log_error_impl(&dword_1DE1F9000, v110, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to create a synchronized mixer without a manager", buf, 0x1Cu);
                        }

                        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v128);
                        __cxa_allocate_exception(0x40uLL);
                        caulk::make_string("Attempt to create a synchronized mixer without a manager", &v129);
                        std::logic_error::logic_error(&v127, &v129);
                        v127.__vftable = (MEMORY[0x1E69E55A8] + 16);
                        std::logic_error::logic_error(&v130, &v127);
                        v132 = 0;
                        v133 = 0;
                        v134 = 0;
                        v135 = -1;
                        v130.__vftable = &unk_1F5991430;
                        v131 = &unk_1F5991458;
                        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v130);
                        v137 = "void AMCP::Graph::Manifest_Buffer::allocate(const std::shared_ptr<Synchronized_Mixer_Manager> &, DAL::Sample_Time)";
                        v138 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
                        v139 = 90;
                        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v126);
                      }

                      AMCP::Graph::Synchronized_Mixer_Manager::get_mixer(buf, v33, (v26 + 8), v26 + 88, v124);
                      v34 = *(v26 + 312);
                      *(v26 + 304) = *buf;
                      if (v34)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
                      }
                    }
                  }

                  else
                  {
                    if (v32 == 1)
                    {
                      operator new();
                    }

                    if (v32 == 2)
                    {
                      operator new();
                    }
                  }

                  if (*(&v125 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v125 + 1));
                  }

                  if (v28)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
                  }
                }

                v35 = v24[12];
                v37 = *(v4 + 12);
                v36 = *(v4 + 13);
                if (v36)
                {
                  atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
                }

                v23 = *(v35 + 336);
                *(v35 + 328) = v37;
                *(v35 + 336) = v36;
                if (v23)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
                }

                v24 = *v24;
              }

              while (v24);
            }

            v38 = *(v122 + 14);
            for (i = *(v122 + 15); v38 != i; v38 += 2)
            {
              v39 = *v38;
              v40 = (*v38)[1];
              if (v40)
              {
                v41 = std::__shared_weak_count::lock(v40);
                if (v41)
                {
                  if (*v39)
                  {
                    v42 = (*v39 + 128);
                    v43 = atomic_load(v42);
                    if ((v43 & 0x80000000) != 0)
                    {
                      v83 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                      if ((v83 & 1) == 0)
                      {
                        AMCP::Log::AMCP_Scope_Registry::initialize(v41);
                      }

                      v85 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                      v84 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                      if (v84)
                      {
                        atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
                        v86 = *v85;
                        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
                      }

                      else
                      {
                        v86 = *v85;
                      }

                      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        *&buf[4] = "Device.h";
                        *&buf[12] = 1024;
                        *&buf[14] = 80;
                        *&buf[18] = 2080;
                        *&buf[20] = "not (m_refcount >= 0)";
                        _os_log_error_impl(&dword_1DE1F9000, v86, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                      }

                      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
                      __cxa_allocate_exception(0x40uLL);
                      caulk::make_string("", &v123);
                      std::logic_error::logic_error(&v126, &v123);
                      v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
                      std::logic_error::logic_error(&v130, &v126);
                      v132 = 0;
                      v133 = 0;
                      v134 = 0;
                      v135 = -1;
                      v130.__vftable = &unk_1F5991430;
                      v131 = &unk_1F5991458;
                      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v130);
                      v137 = "void AMCP::IO_Core::Device_Node_State::add_reference()";
                      v138 = "MCP/AMCP/IO/IO_Core/Device.h";
                      v139 = 80;
                      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
                    }

                    atomic_fetch_add(v42, 1u);
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
                }
              }

              v44 = *v38;
              v45 = (*v38)[1];
              if (!v45 || (v45 = std::__shared_weak_count::lock(v45), (v46 = v45) == 0) || (v47 = *v44) == 0)
              {
                v111 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v111 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v45);
                }

                v113 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v112 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v112)
                {
                  atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
                  v114 = *v113;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v112);
                }

                else
                {
                  v114 = *v113;
                }

                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 42;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (device_state.operator BOOL())";
                  _os_log_error_impl(&dword_1DE1F9000, v114, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string("", &v123);
                std::logic_error::logic_error(&v126, &v123);
                v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v130, &v126);
                v132 = 0;
                v133 = 0;
                v134 = 0;
                v135 = -1;
                v130.__vftable = &unk_1F5991430;
                v131 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v130);
                v137 = "void AMCP::IO_Core::Device_Connection::setup_processing()";
                v138 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                v139 = 42;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
              }

              v49 = *(v47 + 96);
              v48 = *(v47 + 104);
              if (v48)
              {
                atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v48);
              }

              if (!v49)
              {
                v75 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v75 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v48);
                }

                v77 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v76 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v76)
                {
                  atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
                  v78 = *v77;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v76);
                }

                else
                {
                  v78 = *v77;
                }

                if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 43;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (device_state->get_engine())";
                  _os_log_error_impl(&dword_1DE1F9000, v78, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string("", &v123);
                std::logic_error::logic_error(&v126, &v123);
                v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v130, &v126);
                v132 = 0;
                v133 = 0;
                v134 = 0;
                v135 = -1;
                v130.__vftable = &unk_1F5991430;
                v131 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v130);
                v137 = "void AMCP::IO_Core::Device_Connection::setup_processing()";
                v138 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                v139 = 43;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
              }

              v50 = atomic_load((v47 + 128));
              if (v50 == 1)
              {
                v52 = *(v47 + 96);
                v51 = *(v47 + 104);
                if (v51)
                {
                  atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
                }

                *buf = &unk_1F5988DE0;
                *&buf[8] = v52;
                *&buf[16] = v51;
                *&buf[24] = buf;
                AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v47, buf);
                std::__function::__value_func<void ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](buf);
              }

              v53 = 0;
              *buf = 1;
              do
              {
                v54 = *&buf[v53];
                v55 = *(v47 + 8 + 40 * v54 + 16);
                if (v55)
                {
                  v56 = *(v47 + 136 + 24 * v54);
                  do
                  {
                    *(v56 + ((v55[5] >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55[5];
                    v55 = *v55;
                  }

                  while (v55);
                }

                v53 += 4;
              }

              while (v53 != 8);
              if (*(v47 + 168))
              {
                (*(**(v47 + 96) + 160))(*(v47 + 96), v47 + 160);
              }

              if (*(v47 + 144))
              {
                (*(**(v47 + 96) + 176))(*(v47 + 96), v47 + 136);
              }

              *buf = &unk_1F5988C50;
              *&buf[24] = buf;
              AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v47, buf);
              std::__function::__value_func<void ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](buf);
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              v57 = *v38;
              v58 = (*v38)[1];
              if (!v58 || (v59 = *(*(v122 + 8) + 40), v58 = std::__shared_weak_count::lock(v58), (v60 = v58) == 0) || (v61 = *v57) == 0)
              {
                v115 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v115 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v58);
                }

                v117 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v116 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v116)
                {
                  atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
                  v118 = *v117;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v116);
                }

                else
                {
                  v118 = *v117;
                }

                if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 54;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (device_state.operator BOOL())";
                  _os_log_error_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string("", &v123);
                std::logic_error::logic_error(&v126, &v123);
                v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v130, &v126);
                v132 = 0;
                v133 = 0;
                v134 = 0;
                v135 = -1;
                v130.__vftable = &unk_1F5991430;
                v131 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v130);
                v137 = "void AMCP::IO_Core::Device_Connection::begin_processing(uint32_t, const DAL::DAL_Time_Delta &)";
                v138 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                v139 = 54;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
              }

              v63 = *(v61 + 96);
              v62 = *(v61 + 104);
              if (v62)
              {
                atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v62);
              }

              if (!v63)
              {
                v79 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v79 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v62);
                }

                v81 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v80 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v80)
                {
                  atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
                  v82 = *v81;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v80);
                }

                else
                {
                  v82 = *v81;
                }

                if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 55;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (device_state->get_engine())";
                  _os_log_error_impl(&dword_1DE1F9000, v82, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string("", &v123);
                std::logic_error::logic_error(&v126, &v123);
                v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v130, &v126);
                v132 = 0;
                v133 = 0;
                v134 = 0;
                v135 = -1;
                v130.__vftable = &unk_1F5991430;
                v131 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v130);
                v137 = "void AMCP::IO_Core::Device_Connection::begin_processing(uint32_t, const DAL::DAL_Time_Delta &)";
                v138 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                v139 = 55;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
              }

              v64 = atomic_load((v61 + 128));
              if (v64 == 1)
              {
                v120 = v60;
                v65 = v4;
                v67 = *(v61 + 96);
                v66 = *(v61 + 104);
                if (v66)
                {
                  atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v68 = *(v61 + 112);
                v69 = *(v61 + 120);
                v130.__vftable = v68;
                v130.__imp_.__imp_ = v69;
                if (v69)
                {
                  atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
                }

                AMCP::DAL::DAL_Time_Delta::translate_time_delta(buf, a2, &v130);
                if ((buf[0] & 2) == 0)
                {
                  AMCP::DAL::DAL_Time_Delta::validate(buf);
                }

                (*(*v67 + 224))(v67, v59, vcvtmd_s64_f64(*&buf[8]));
                if (v137)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v137);
                }

                v4 = v65;
                if (v69)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v69);
                }

                v60 = v120;
                if (v66)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v66);
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v60);
            }

            AMCP::Graph::Manifest_Inventory::take_power_assertions(v122);
            v71 = *(v4 + 9);
            v72 = *(v71 + 80);
            v73 = *(v71 + 88);
            if (v73)
            {
              atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
            }

            if (v72[5] != v72[6])
            {
              v74 = v72[3];
              if (v74)
              {
                memset(&v123, 0, sizeof(v123));
                if (!(v74 >> 60))
                {
                  v137 = &v123;
                  std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v74);
                }

                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              v103 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v103 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(0);
              }

              v105 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v104 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v104)
              {
                atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
                v106 = *v105;
                std::__shared_weak_count::__release_shared[abi:ne200100](v104);
              }

              else
              {
                v106 = *v105;
              }

              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "Timebase_Set.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 60;
                *&buf[18] = 2080;
                *&buf[20] = "not (not m_timebases.empty())";
                _os_log_error_impl(&dword_1DE1F9000, v106, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to run an manifest with no timebases", buf, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string("Attempt to run an manifest with no timebases", &v123);
              std::logic_error::logic_error(&v126, &v123);
              v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v130, &v126);
              v132 = 0;
              v133 = 0;
              v134 = 0;
              v135 = -1;
              v130.__vftable = &unk_1F5991430;
              v131 = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v130);
              v137 = "Start_Stop_Result AMCP::Graph::Timebase_Set::start() const";
              v138 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Timebase_Set.cpp";
              v139 = 60;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
            }

            v99 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v99 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v70);
            }

            v101 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v100 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v100)
            {
              atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
              v102 = *v101;
              std::__shared_weak_count::__release_shared[abi:ne200100](v100);
            }

            else
            {
              v102 = *v101;
            }

            if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "Timebase_Set.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 59;
              *&buf[18] = 2080;
              *&buf[20] = "not (not m_state.empty())";
              _os_log_error_impl(&dword_1DE1F9000, v102, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to start a Timebase_Set with no start state", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("Attempt to start a Timebase_Set with no start state", &v123);
            std::logic_error::logic_error(&v126, &v123);
            v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v130, &v126);
            v132 = 0;
            v133 = 0;
            v134 = 0;
            v135 = -1;
            v130.__vftable = &unk_1F5991430;
            v131 = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v130);
            v137 = "Start_Stop_Result AMCP::Graph::Timebase_Set::start() const";
            v138 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Timebase_Set.cpp";
            v139 = 59;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
          }

          v95 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v95 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v5);
          }

          v97 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v96 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v96)
          {
            atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
            v98 = *v97;
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          else
          {
            v98 = *v97;
          }

          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Timebase_Set.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 51;
            *&buf[18] = 2080;
            *&buf[20] = "not (not state_snapshot.empty())";
            _os_log_error_impl(&dword_1DE1F9000, v98, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to adopt an empty state", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("Attempt to adopt an empty state", &v123);
          std::logic_error::logic_error(&v126, &v123);
          v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v130, &v126);
          v132 = 0;
          v133 = 0;
          v134 = 0;
          v135 = -1;
          v130.__vftable = &unk_1F5991430;
          v131 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v130);
          v137 = "void AMCP::Graph::Timebase_Set::adopt_state(const Play_State_Manager::State_Snapshot &)";
          v138 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Timebase_Set.cpp";
          v139 = 51;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
        }

        v91 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v91 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v5);
        }

        v93 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v92 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v92)
        {
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          v94 = *v93;
          std::__shared_weak_count::__release_shared[abi:ne200100](v92);
        }

        else
        {
          v94 = *v93;
        }

        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 494;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_same_timebase(execution_context.m_time_interval.get_clock(), m_inventory->get_master_timebase()))";
          _os_log_error_impl(&dword_1DE1F9000, v94, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Execution context is not using master timebase", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Execution context is not using master timebase", &v123);
        std::logic_error::logic_error(&v126, &v123);
        v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v130, &v126);
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v135 = -1;
        v130.__vftable = &unk_1F5991430;
        v131 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v130);
        v137 = "Start_Stop_Result AMCP::Graph::Manifest::setup_processing(const Manifest_Execution_Context &, const Manifest_Start_State &, const std::atomic_uint32_t &)";
        v138 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
        v139 = 494;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
      }

LABEL_22:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      goto LABEL_23;
    }

    if (v12 >= 0)
    {
      v16 = v11;
    }

    else
    {
      v16 = *v11;
    }

    if (v15 >= 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = *v5;
    }

    v5 = memcmp(v16, v17, v13);
    v10 = v5 == 0;
  }

  if (!v9)
  {
    goto LABEL_23;
  }

  goto LABEL_22;
}

void sub_1DE555770(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE555784(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE555794()
{
  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x1DE555ECCLL);
}

void sub_1DE5557AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45)
{
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (v45)
  {
    JUMPOUT(0x1DE555EC8);
  }

  JUMPOUT(0x1DE555ECCLL);
}

void sub_1DE555AD0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v41 - 192);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a39);
  MEMORY[0x1E12C0F00](&a30);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v40)
  {
    __cxa_free_exception(v39);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a33);
  JUMPOUT(0x1DE555EC8);
}

void sub_1DE555DB4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a27)
    {
      operator delete(a27);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v44 - 192);
    boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a42);
    MEMORY[0x1E12C0F00](&a30);
    if (a41 < 0)
    {
      operator delete(a36);
    }

    if (v42)
    {
      __cxa_free_exception(v43);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a35);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    __cxa_end_catch();
    JUMPOUT(0x1DE553E1CLL);
  }

  JUMPOUT(0x1DE555ECCLL);
}

void sub_1DE555E6C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE555ECCLL);
}

void AMCP::Graph::Manifest::get_iocontext_uid(AMCP::Graph::Manifest *this, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = a2[11];
  v3 = a2[1];
  if (v2 >= (a2[2] - v3) >> 4)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = (a2[2] - a2[1]) >> 4;
      *buf = 136316162;
      v27 = "Manifest.cpp";
      v28 = 1024;
      v29 = 815;
      v30 = 2080;
      v31 = "not (index < m_tasks.size())";
      v32 = 2048;
      *v33 = v2;
      *&v33[8] = 2048;
      v34 = v15;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Index out of bounds - index: %zu  size: %zu", buf, 0x30u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Index out of bounds - index: %zu  size: %zu", &v17, v2, (a2[2] - a2[1]) >> 4);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    *&v33[2] = "std::shared_ptr<Manifest_Task> AMCP::Graph::Manifest::get_nth(size_t) const";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
    v35 = 815;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = *(v3 + 16 * v2);
  v5 = *(v3 + 16 * v2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v4;
  if (*(v4 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(this, *(v4 + 64), *(v4 + 72));
  }

  else
  {
    v7 = *(v4 + 64);
    *(this + 2) = *(v6 + 80);
    *this = v7;
  }

  if (v5)
  {
    v8 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE556214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest::calculate_all_required_input_samples(AMCP::Graph::Manifest *this, const AMCP::Graph::Manifest_Execution_Context *a2)
{
  v129 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v4 != v3)
  {
    do
    {
      v6 = *(v4 - 16);
      v4 -= 16;
      AMCP::Graph::Manifest_Task::maybe_create_data_flow_calculator(v6);
      (*(**(v6 + 104) + 40))(*(v6 + 104), a2);
      v3 = *(this + 1);
    }

    while (v4 != v3);
    v4 = *(this + 2);
  }

  if (v4 == v3)
  {
    goto LABEL_118;
  }

  v108 = this;
  do
  {
    v7 = *(v4 - 16);
    v4 -= 16;
    v110 = v7;
    v8 = *(v7 + 1) - *v7;
    if (!v8)
    {
      continue;
    }

    v9 = 0;
    v10 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v109 = v10;
    do
    {
      v111 = v9;
      nth_connection_list = AMCP::Graph::Manifest_Task::get_nth_connection_list(v110, v9, 0);
      v13 = *nth_connection_list;
      v12 = nth_connection_list[1];
      while (v13 != v12)
      {
        v14 = *v13;
        v15 = *(*v13 + 160);
        v16 = *(*v13 + 192);
        v17 = *(*v13 + 200);
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        *buf = 2;
        *&buf[8] = v15;
        *&buf[16] = 0;
        *&buf[24] = v16;
        boost::operators_impl::operator+(&v121, v14 + 168, buf);
        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        v18 = *(v14 + 328);
        if (v18)
        {
          v19 = pthread_self();
          v20 = pthread_mach_thread_np(v19);
          v21 = *v14;
          AMCP::Graph::Manifest_Buffer::get_buffer_id(buf, v14);
          AMCP::Wire_Identifier_to_string(&__p, buf);
          AMCP::Graph::Manifest_Log::add_message(v18, 4, "%u\tManifest_Buffer(%zu)::update_producer_target_samples:  source: %s", v22, v23, v24, v25, v26, v20);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v128 < 0)
          {
            operator delete(v126);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v27 = *(v14 + 328);
          if (v27)
          {
            sample_time = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
            vcvtmd_s64_f64(AMCP::DAL::DAL_Time::get_sample_time(&v121));
            AMCP::Graph::Manifest_Log::add_message(v27, 4, "\t\tcurrent target %lld, potential target %lld", v29, v30, v31, v32, v33, vcvtmd_s64_f64(sample_time));
          }
        }

        if (AMCP::DAL::DAL_Time::operator<((v14 + 248), &v121))
        {
          *(v14 + 248) = v121;
          *(v14 + 256) = v122;
          v35 = v123;
          v34 = v124;
          if (v124)
          {
            atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v36 = *(v14 + 280);
          *(v14 + 272) = v35;
          *(v14 + 280) = v34;
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }
        }

        v37 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
        if (AMCP::DAL::DAL_Time::get_sample_time((v14 + 248)) != floor(v37))
        {
          v84 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v84 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v38);
          }

          v86 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v85 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v85)
          {
            atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
            v87 = *v86;
            std::__shared_weak_count::__release_shared[abi:ne200100](v85);
          }

          else
          {
            v87 = *v86;
          }

          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            v104 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
            v105 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
            *buf = 136316162;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 456;
            *&buf[18] = 2080;
            *&buf[20] = "not (m_producer_target_position.get_sample_time().floor().get() == m_producer_target_position.get_sample_time().get_double())";
            *&buf[28] = 2048;
            *&buf[30] = vcvtmd_s64_f64(v104);
            *&buf[38] = 2048;
            v126 = *&v105;
            _os_log_error_impl(&dword_1DE1F9000, v87, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s %lld != %f", buf, 0x30u);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v120);
          __cxa_allocate_exception(0x40uLL);
          v106 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
          v107 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
          caulk::make_string("%lld != %f", &v113, vcvtmd_s64_f64(v106), *&v107);
          std::logic_error::logic_error(&v114, &v113);
          v114.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&__p, &v114);
          v116 = 0;
          v117 = 0;
          v118 = 0;
          v119 = -1;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_producer_target_samples()";
          v126 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v127 = 456;
          std::vector<void *>::vector[abi:ne200100](&v112);
        }

        v39 = *(v14 + 272);
        v40 = *(v14 + 280);
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = *(v14 + 128);
        v41 = *(v14 + 136);
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v43 = (v39 | v42) == 0;
        if (!v39 || !v42)
        {
          goto LABEL_50;
        }

        v44 = (*(*v39 + 16))(v39);
        v39 = (*(*v42 + 16))(v42);
        v45 = *(v44 + 23);
        if (v45 >= 0)
        {
          v46 = *(v44 + 23);
        }

        else
        {
          v46 = *(v44 + 8);
        }

        v47 = *(v39 + 23);
        v48 = v47;
        if ((v47 & 0x80u) != 0)
        {
          v47 = *(v39 + 8);
        }

        if (v46 == v47)
        {
          if (v45 >= 0)
          {
            v49 = v44;
          }

          else
          {
            v49 = *v44;
          }

          if (v48 >= 0)
          {
            v50 = v39;
          }

          else
          {
            v50 = *v39;
          }

          v39 = memcmp(v49, v50, v46);
          v43 = v39 == 0;
LABEL_50:
          if (!v41)
          {
            goto LABEL_52;
          }

LABEL_51:
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          goto LABEL_52;
        }

        v43 = 0;
        if (v41)
        {
          goto LABEL_51;
        }

LABEL_52:
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (!v43)
        {
          v88 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v88 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v39);
          }

          v90 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v89 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v89)
          {
            atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
            v91 = *v90;
            std::__shared_weak_count::__release_shared[abi:ne200100](v89);
          }

          else
          {
            v91 = *v90;
          }

          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 457;
            *&buf[18] = 2080;
            *&buf[20] = "not (is_same_timebase(m_producer_target_position.get_clock(), get_timebase()))";
            _os_log_error_impl(&dword_1DE1F9000, v91, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v120);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v113);
          std::logic_error::logic_error(&v114, &v113);
          v114.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&__p, &v114);
          v116 = 0;
          v117 = 0;
          v118 = 0;
          v119 = -1;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_producer_target_samples()";
          v126 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v127 = 457;
          std::vector<void *>::vector[abi:ne200100](&v112);
        }

        v51 = *(v14 + 232);
        v52 = *(v14 + 240);
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v54 = *(v14 + 128);
        v53 = *(v14 + 136);
        if (v53)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v55 = (v51 | v54) == 0;
        if (!v51 || !v54)
        {
          goto LABEL_74;
        }

        v56 = (*(*v51 + 16))(v51);
        v51 = (*(*v54 + 16))(v54);
        v57 = *(v56 + 23);
        if (v57 >= 0)
        {
          v58 = *(v56 + 23);
        }

        else
        {
          v58 = *(v56 + 8);
        }

        v59 = *(v51 + 23);
        v60 = v59;
        if ((v59 & 0x80u) != 0)
        {
          v59 = *(v51 + 8);
        }

        if (v58 == v59)
        {
          if (v57 >= 0)
          {
            v61 = v56;
          }

          else
          {
            v61 = *v56;
          }

          if (v60 >= 0)
          {
            v62 = v51;
          }

          else
          {
            v62 = *v51;
          }

          v51 = memcmp(v61, v62, v58);
          v55 = v51 == 0;
LABEL_74:
          if (!v53)
          {
            goto LABEL_76;
          }

LABEL_75:
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          goto LABEL_76;
        }

        v55 = 0;
        if (v53)
        {
          goto LABEL_75;
        }

LABEL_76:
        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        if (!v55)
        {
          v92 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v92 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v51);
          }

          v94 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v93 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v93)
          {
            atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
            v95 = *v94;
            std::__shared_weak_count::__release_shared[abi:ne200100](v93);
          }

          else
          {
            v95 = *v94;
          }

          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 458;
            *&buf[18] = 2080;
            *&buf[20] = "not (is_same_timebase(m_producer_write_position.get_clock(), get_timebase()))";
            _os_log_error_impl(&dword_1DE1F9000, v95, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v120);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v113);
          std::logic_error::logic_error(&v114, &v113);
          v114.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&__p, &v114);
          v116 = 0;
          v117 = 0;
          v118 = 0;
          v119 = -1;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_producer_target_samples()";
          v126 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v127 = 458;
          std::vector<void *>::vector[abi:ne200100](&v112);
        }

        v63 = *(v14 + 192);
        v64 = *(v14 + 200);
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v66 = *(v14 + 128);
        v65 = *(v14 + 136);
        if (v65)
        {
          atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v67 = (v63 | v66) == 0;
        if (!v63 || !v66)
        {
          goto LABEL_98;
        }

        v68 = (*(*v63 + 16))(v63);
        v63 = (*(*v66 + 16))(v66);
        v69 = *(v68 + 23);
        if (v69 >= 0)
        {
          v70 = *(v68 + 23);
        }

        else
        {
          v70 = *(v68 + 8);
        }

        v71 = *(v63 + 23);
        v72 = v71;
        if ((v71 & 0x80u) != 0)
        {
          v71 = *(v63 + 8);
        }

        if (v70 == v71)
        {
          if (v69 >= 0)
          {
            v73 = v68;
          }

          else
          {
            v73 = *v68;
          }

          if (v72 >= 0)
          {
            v74 = v63;
          }

          else
          {
            v74 = *v63;
          }

          v63 = memcmp(v73, v74, v70);
          v67 = v63 == 0;
LABEL_98:
          if (!v65)
          {
            goto LABEL_100;
          }

LABEL_99:
          std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          goto LABEL_100;
        }

        v67 = 0;
        if (v65)
        {
          goto LABEL_99;
        }

LABEL_100:
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        if (!v67)
        {
          v96 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v96 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v63);
          }

          v98 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v97 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v97)
          {
            atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
            v99 = *v98;
            std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          }

          else
          {
            v99 = *v98;
          }

          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 459;
            *&buf[18] = 2080;
            *&buf[20] = "not (is_same_timebase(m_consumer_read_position.get_clock(), get_timebase()))";
            _os_log_error_impl(&dword_1DE1F9000, v99, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v120);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v113);
          std::logic_error::logic_error(&v114, &v113);
          v114.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&__p, &v114);
          v116 = 0;
          v117 = 0;
          v118 = 0;
          v119 = -1;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_producer_target_samples()";
          v126 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v127 = 459;
          std::vector<void *>::vector[abi:ne200100](&v112);
        }

        v75 = AMCP::DAL::DAL_Time::operator<((v14 + 248), (v14 + 168));
        if (v75)
        {
          v100 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v100 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v75);
          }

          v102 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v101 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v101)
          {
            atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
            v103 = *v102;
            std::__shared_weak_count::__release_shared[abi:ne200100](v101);
          }

          else
          {
            v103 = *v102;
          }

          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 464;
            *&buf[18] = 2080;
            *&buf[20] = "not (m_producer_target_position >= m_consumer_read_position)";
            _os_log_error_impl(&dword_1DE1F9000, v103, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v120);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v113);
          std::logic_error::logic_error(&v114, &v113);
          v114.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&__p, &v114);
          v116 = 0;
          v117 = 0;
          v118 = 0;
          v119 = -1;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_producer_target_samples()";
          v126 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v127 = 464;
          std::vector<void *>::vector[abi:ne200100](&v112);
        }

        v76 = *(v14 + 328);
        if (v76)
        {
          v77 = *(v14 + 160);
          AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
          AMCP::DAL::DAL_Time::get_sample_time((v14 + 168));
          AMCP::Graph::Manifest_Log::add_message(v76, 4, "\t\tmin required: %lf  p target: %lf  c read: %lf", v78, v79, v80, v81, v82, v77);
        }

        if (v124)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v124);
        }

        v13 += 2;
      }

      v9 = v111 + 1;
    }

    while (v111 + 1 != v109);
    v3 = *(v108 + 1);
  }

  while (v4 != v3);
LABEL_118:
  v83 = *MEMORY[0x1E69E9840];
}

void sub_1DE5578F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest::write_to_dot_file(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t *a2)
{
  v118 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v86 = a2;
    if (*(a2 + 23) < 0)
    {
      v86 = *a2;
    }

    *buf = 136315650;
    *&buf[4] = "Manifest.cpp";
    v111 = 1024;
    v112 = 992;
    v113 = 2080;
    v114 = v86;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d Manifest::writing manifest dot file to %s", buf, 0x1Cu);
  }

  v93 = 0u;
  v94 = 0u;
  v95 = 1065353216;
  v117 = 0;
  v8 = MEMORY[0x1E69E5530] + 64;
  v116 = MEMORY[0x1E69E5530] + 64;
  v9 = *(MEMORY[0x1E69E54D0] + 16);
  *buf = *(MEMORY[0x1E69E54D0] + 8);
  *&buf[*(*buf - 24)] = v9;
  v10 = &buf[*(*buf - 24)];
  std::ios_base::init(v10, &buf[8]);
  v11 = MEMORY[0x1E69E5530] + 24;
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  *buf = v11;
  v116 = v8;
  MEMORY[0x1E12C1110](&buf[8]);
  if (*(a2 + 23) < 0)
  {
    v12 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear(&buf[*(*buf - 24)], *&v115[*(*buf - 24)] | 4);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "// You can view this on http://www.webgraphviz.com\n", 51);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v13 = std::locale::use_facet(&v102, MEMORY[0x1E69E5318]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v102);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\tdigraph G {", 12);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v14 = std::locale::use_facet(&v102, MEMORY[0x1E69E5318]);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v102);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\tsize =8,8;", 13);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v15 = std::locale::use_facet(&v102, MEMORY[0x1E69E5318]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v102);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\tnode [shape=plaintext fontcolor=white]", 39);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v16 = std::locale::use_facet(&v102, MEMORY[0x1E69E5318]);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&v102);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\n\t/* write the hidden positioning graph on the left */\n\t", 56);
  if (*(a1 + 2) != *(a1 + 1))
  {
    v17 = 0;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "P", 1);
      MEMORY[0x1E12C1220](buf, v17);
      v18 = (*(a1 + 2) - *(a1 + 1)) >> 4;
      if (v17 < v18 - 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "->", 2);
        v18 = (*(a1 + 2) - *(a1 + 1)) >> 4;
      }

      ++v17;
    }

    while (v17 < v18);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, " [color=white]", 14);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v19 = std::locale::use_facet(&v102, MEMORY[0x1E69E5318]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v102);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\n\t/* write the nodes */", 23);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v20 = std::locale::use_facet(&v102, MEMORY[0x1E69E5318]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v102);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\tnode [shape=record fontname=Helvetica fontsize=8 fontcolor=black];", 67);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v21 = std::locale::use_facet(&v102, MEMORY[0x1E69E5318]);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v102);
  std::ostream::put();
  std::ostream::flush();
  v22 = *(a1 + 1);
  v87 = *(a1 + 2);
  if (v22 == v87)
  {
LABEL_141:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\tnode [shape=box,style=rounded,filled,height=.1];", 51);
    std::ios_base::getloc(&buf[*(*buf - 24)]);
    v84 = std::locale::use_facet(&v102, MEMORY[0x1E69E5318]);
    (v84->__vftable[2].~facet_0)(v84, 10);
    std::locale::~locale(&v102);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\n\t/* write the edges and buffers with clock coloring */", 55);
    std::ios_base::getloc(&buf[*(*buf - 24)]);
    v85 = std::locale::use_facet(&v102, MEMORY[0x1E69E5318]);
    (v85->__vftable[2].~facet_0)(v85, 10);
    std::locale::~locale(&v102);
    std::ostream::put();
    std::ostream::flush();
    std::string::basic_string[abi:ne200100]<0>(&v102, "black");
    std::string::basic_string[abi:ne200100]<0>(&v103, "purple");
    std::string::basic_string[abi:ne200100]<0>(v104, "blue");
    std::string::basic_string[abi:ne200100]<0>(v105, "red");
    std::string::basic_string[abi:ne200100]<0>(v106, "green");
    std::string::basic_string[abi:ne200100]<0>(v107, "gray");
    std::string::basic_string[abi:ne200100]<0>(v108, "orange");
    __p[0] = 0;
    __p[1] = 0;
    v101 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, &v102, &v109, 7uLL);
  }

  v23 = 0;
LABEL_18:
  v24 = MEMORY[0x1E12C1220](buf, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "[label=", 8);
  v25 = *v22;
  if (*(*v22 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, *(v25 + 8), *(v25 + 9));
  }

  else
  {
    v102 = *(v25 + 64);
  }

  v26 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
  size = v102.__r_.__value_.__l.__size_;
  v27 = v102.__r_.__value_.__r.__words[0];
  if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v102;
  }

  else
  {
    v29 = v102.__r_.__value_.__r.__words[0];
  }

  if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v102.__r_.__value_.__l.__size_;
  }

  if (v30 < 2)
  {
    goto LABEL_33;
  }

  v89 = v24;
  v31 = v29 + v30;
  v32 = v29;
  while (1)
  {
    v33 = memchr(v32, 45, v30 - 1);
    if (!v33)
    {
      goto LABEL_32;
    }

    if (*v33 == 15917)
    {
      break;
    }

    v32 = (v33 + 1);
    v30 = v31 - v32;
    if (v31 - v32 < 2)
    {
      goto LABEL_32;
    }
  }

LABEL_130:
  if (v33 != v31)
  {
    v24 = v89;
    if (v33 - v29 == -1 || ((std::string::replace(&v102, v33 - v29, 2uLL, "-\\>", 3uLL), v26 = HIBYTE(v102.__r_.__value_.__r.__words[2]), size = v102.__r_.__value_.__l.__size_, v27 = v102.__r_.__value_.__r.__words[0], (v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v29 = &v102) : (v29 = v102.__r_.__value_.__r.__words[0]), (v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v83 = HIBYTE(v102.__r_.__value_.__r.__words[2])) : (v83 = v102.__r_.__value_.__l.__size_), v83 < 2))
    {
LABEL_33:
      v35 = **v22;
      v34 = *(*v22 + 1);
      v88 = *(*v22 + 3);
      v90 = *(*v22 + 4);
      v109.__r_.__value_.__r.__words[2] = 0x200000000000000;
      *&v109.__r_.__value_.__l.__data_ = 0x207BuLL;
      v36 = v34 - v35;
      if (v34 != v35)
      {
        std::string::append(&v109, "{ ", 2uLL);
        v37 = 0;
        v38 = 0xCCCCCCCCCCCCCCCDLL * (v36 >> 3);
        do
        {
          AMCP::Graph::get_connection_format_string(v91, *v22, 0, v37);
          std::to_string(&v96, v37);
          v39 = std::string::insert(&v96, 0, " <source", 8uLL);
          v40 = *&v39->__r_.__value_.__l.__data_;
          v97.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
          *&v97.__r_.__value_.__l.__data_ = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          v41 = std::string::append(&v97, ">", 1uLL);
          v42 = *&v41->__r_.__value_.__l.__data_;
          v98.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
          *&v98.__r_.__value_.__l.__data_ = v42;
          v41->__r_.__value_.__l.__size_ = 0;
          v41->__r_.__value_.__r.__words[2] = 0;
          v41->__r_.__value_.__r.__words[0] = 0;
          if ((v92 & 0x80u) == 0)
          {
            v43 = v91;
          }

          else
          {
            v43 = v91[0];
          }

          if ((v92 & 0x80u) == 0)
          {
            v44 = v92;
          }

          else
          {
            v44 = v91[1];
          }

          v45 = std::string::append(&v98, v43, v44);
          v46 = *&v45->__r_.__value_.__l.__data_;
          v99.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&v99.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          v47 = std::string::append(&v99, " \\  ", 4uLL);
          v48 = *&v47->__r_.__value_.__l.__data_;
          v101 = v47->__r_.__value_.__r.__words[2];
          *__p = v48;
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          if (v101 >= 0)
          {
            v49 = __p;
          }

          else
          {
            v49 = __p[0];
          }

          if (v101 >= 0)
          {
            v50 = HIBYTE(v101);
          }

          else
          {
            v50 = __p[1];
          }

          std::string::append(&v109, v49, v50);
          if (SHIBYTE(v101) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (v38 - 1 != v37)
          {
            std::string::append(&v109, " | ", 3uLL);
          }

          if (v92 < 0)
          {
            operator delete(v91[0]);
          }

          ++v37;
        }

        while (v38 != v37);
        std::string::append(&v109, "} | ", 4uLL);
        v26 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
        size = v102.__r_.__value_.__l.__size_;
        v27 = v102.__r_.__value_.__r.__words[0];
      }

      if ((v26 & 0x80u) == 0)
      {
        v51 = &v102;
      }

      else
      {
        v51 = v27;
      }

      if ((v26 & 0x80u) == 0)
      {
        v52 = v26;
      }

      else
      {
        v52 = size;
      }

      std::string::append(&v109, v51, v52);
      if (v90 != v88)
      {
        std::string::append(&v109, " | { ", 5uLL);
        v53 = 0;
        v54 = 0xCCCCCCCCCCCCCCCDLL * ((v90 - v88) >> 3);
        do
        {
          AMCP::Graph::get_connection_format_string(v91, *v22, 1u, v53);
          std::to_string(&v96, v53);
          v55 = std::string::insert(&v96, 0, " <dest", 6uLL);
          v56 = *&v55->__r_.__value_.__l.__data_;
          v97.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
          *&v97.__r_.__value_.__l.__data_ = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          v57 = std::string::append(&v97, ">", 1uLL);
          v58 = *&v57->__r_.__value_.__l.__data_;
          v98.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
          *&v98.__r_.__value_.__l.__data_ = v58;
          v57->__r_.__value_.__l.__size_ = 0;
          v57->__r_.__value_.__r.__words[2] = 0;
          v57->__r_.__value_.__r.__words[0] = 0;
          if ((v92 & 0x80u) == 0)
          {
            v59 = v91;
          }

          else
          {
            v59 = v91[0];
          }

          if ((v92 & 0x80u) == 0)
          {
            v60 = v92;
          }

          else
          {
            v60 = v91[1];
          }

          v61 = std::string::append(&v98, v59, v60);
          v62 = *&v61->__r_.__value_.__l.__data_;
          v99.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
          *&v99.__r_.__value_.__l.__data_ = v62;
          v61->__r_.__value_.__l.__size_ = 0;
          v61->__r_.__value_.__r.__words[2] = 0;
          v61->__r_.__value_.__r.__words[0] = 0;
          v63 = std::string::append(&v99, " \\  ", 4uLL);
          v64 = *&v63->__r_.__value_.__l.__data_;
          v101 = v63->__r_.__value_.__r.__words[2];
          *__p = v64;
          v63->__r_.__value_.__l.__size_ = 0;
          v63->__r_.__value_.__r.__words[2] = 0;
          v63->__r_.__value_.__r.__words[0] = 0;
          if (v101 >= 0)
          {
            v65 = __p;
          }

          else
          {
            v65 = __p[0];
          }

          if (v101 >= 0)
          {
            v66 = HIBYTE(v101);
          }

          else
          {
            v66 = __p[1];
          }

          std::string::append(&v109, v65, v66);
          if (SHIBYTE(v101) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (v54 - 1 != v53)
          {
            std::string::append(&v109, " | ", 3uLL);
          }

          if (v92 < 0)
          {
            operator delete(v91[0]);
          }

          ++v53;
        }

        while (v54 != v53);
      }

      std::string::append(&v109, "}}", 2uLL);
      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = &v109;
      }

      else
      {
        v67 = v109.__r_.__value_.__r.__words[0];
      }

      if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v68 = v109.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v67, v68);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ];", 4);
      std::ios_base::getloc((v24 + *(*v24 - 24)));
      v69 = std::locale::use_facet(&v102, MEMORY[0x1E69E5318]);
      (v69->__vftable[2].~facet_0)(v69, 10);
      std::locale::~locale(&v102);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\t\t{rank=same P", 14);
      v70 = MEMORY[0x1E12C1220](buf, v23);
      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " ", 1);
      v72 = MEMORY[0x1E12C1220](v71, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "}; /* fix this node to the hidden node */", 41);
      std::ios_base::getloc((v72 + *(*v72 - 24)));
      v73 = std::locale::use_facet(&v102, MEMORY[0x1E69E5318]);
      (v73->__vftable[2].~facet_0)(v73, 10);
      std::locale::~locale(&v102);
      std::ostream::put();
      std::ostream::flush();
      v74 = 0x9DDFEA08EB382D69 * ((8 * (*v22 & 0x1FFFFFFF) + 8) ^ (*v22 >> 32));
      v75 = 0x9DDFEA08EB382D69 * ((*v22 >> 32) ^ (v74 >> 47) ^ v74);
      v76 = 0x9DDFEA08EB382D69 * (v75 ^ (v75 >> 47));
      if (!*(&v93 + 1))
      {
        goto LABEL_124;
      }

      v77 = vcnt_s8(*(&v93 + 8));
      v77.i16[0] = vaddlv_u8(v77);
      if (v77.u32[0] > 1uLL)
      {
        v78 = 0x9DDFEA08EB382D69 * (v75 ^ (v75 >> 47));
        if (v76 >= *(&v93 + 1))
        {
          v78 = v76 % *(&v93 + 1);
        }
      }

      else
      {
        v78 = v76 & (*(&v93 + 1) - 1);
      }

      v79 = *(v93 + 8 * v78);
      if (!v79 || (v80 = *v79) == 0)
      {
LABEL_124:
        operator new();
      }

      while (1)
      {
        v81 = v80[1];
        if (v81 == v76)
        {
          if (v80[2] == *v22)
          {
            v80[3] = v23++;
            v22 += 2;
            if (v22 == v87)
            {
              goto LABEL_141;
            }

            goto LABEL_18;
          }
        }

        else
        {
          if (v77.u32[0] > 1uLL)
          {
            if (v81 >= *(&v93 + 1))
            {
              v81 %= *(&v93 + 1);
            }
          }

          else
          {
            v81 &= *(&v93 + 1) - 1;
          }

          if (v81 != v78)
          {
            goto LABEL_124;
          }
        }

        v80 = *v80;
        if (!v80)
        {
          goto LABEL_124;
        }
      }
    }

    v31 = v29 + v83;
    v82 = v29;
    do
    {
      v33 = memchr(v82, 45, v83 - 1);
      if (!v33)
      {
        break;
      }

      if (*v33 == 15917)
      {
        goto LABEL_130;
      }

      v82 = (v33 + 1);
      v83 = v31 - v82;
    }

    while (v31 - v82 >= 2);
  }

LABEL_32:
  v24 = v89;
  goto LABEL_33;
}

void sub_1DE5596FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::locale a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, std::locale a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, std::locale a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a39);
  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(&a17);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a47);
  a47.__locale_ = &a43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a47);
  a71 = *MEMORY[0x1E69E54D0];
  *(&a71 + *(a71 - 24)) = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1E12C1120](&a72);
  std::ostream::~ostream();
  MEMORY[0x1E12C15F0](a10);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a23);
  _Unwind_Resume(a1);
}

void AMCP::Graph::get_connection_format_string(uint64_t a1, AMCP::Log::AMCP_Scope_Registry *a2, unsigned int a3, unint64_t a4)
{
  v52[2] = *MEMORY[0x1E69E9840];
  nth_connection_list = AMCP::Graph::Manifest_Task::get_nth_connection_list(a2, a4, a3);
  v41 = 0;
  v42 = 0;
  v40 = 0;
  std::vector<std::shared_ptr<AMCP::Graph::Manifest_Buffer>>::__init_with_size[abi:ne200100]<std::shared_ptr<AMCP::Graph::Manifest_Buffer>*,std::shared_ptr<AMCP::Graph::Manifest_Buffer>*>(&v40, *nth_connection_list, nth_connection_list[1], (nth_connection_list[1] - *nth_connection_list) >> 4);
  std::string::basic_string[abi:ne200100]<0>(a1, "");
  if (v41 == v40)
  {
    goto LABEL_54;
  }

  v6 = *(*v40 + 96);
  v7 = *(*v40 + 100);
  v9 = *(*v40 + 112);
  v8 = *(*v40 + 116);
  std::to_string(&v45, *(*v40 + 88));
  v10 = std::string::append(&v45, "-", 1uLL);
  v12 = *&v10->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v12;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v6 == 1819304813)
  {
    v13 = 0;
    memset(&__s, 0, sizeof(__s));
    if (v7)
    {
      v13 = 1;
      *(&__s.__r_.__value_.__s + 23) = 1;
      __s.__r_.__value_.__s.__data_[0] = 70;
    }

    if ((v7 & 5) == 4)
    {
      v14 = 83;
    }

    else
    {
      if ((v7 & 5) != 0)
      {
        goto LABEL_11;
      }

      v14 = 85;
    }

    v13 = 1;
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v14;
LABEL_11:
    if (v9)
    {
      if ((v7 & 0x20) != 0)
      {
        v20 = 1;
      }

      else
      {
        v20 = v8;
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      v21 = 8 * (v9 / v20);
      goto LABEL_17;
    }

LABEL_14:
    v21 = 0;
LABEL_17:
    std::to_string(&v49, v21);
    v22 = std::string::insert(&v49, 0, &__s, v13);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if ((v7 & 0x20) != 0)
    {
      v24 = "";
    }

    else
    {
      v24 = "I";
    }

    v25 = std::string::append(&v50, v24, (v7 & 0x20) == 0);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v44 = v25->__r_.__value_.__r.__words[2];
    *__p = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v19 = HIBYTE(v44);
    v11 = __p[1];
    goto LABEL_27;
  }

  LODWORD(v12) = bswap32(v6);
  v15 = vzip1_s8(*&v12, *&v12);
  v16.i64[0] = 0x1F0000001FLL;
  v16.i64[1] = 0x1F0000001FLL;
  v17.i64[0] = 0x5F0000005FLL;
  v17.i64[1] = 0x5F0000005FLL;
  v18 = vbsl_s8(vmovn_s32(vcgtq_u32(v17, vsraq_n_s32(v16, vshlq_n_s32(vmovl_u16(v15), 0x18uLL), 0x18uLL))), v15, 0x2E002E002E002ELL);
  v19 = 4;
  HIBYTE(v44) = 4;
  LODWORD(__p[0]) = vuzp1_s8(v18, v18).u32[0];
  BYTE4(__p[0]) = 0;
LABEL_27:
  if ((v19 & 0x80u) == 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v28 = v19;
  }

  else
  {
    v28 = v11;
  }

  v29 = std::string::append(&v46, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v47, "-", 1uLL);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__s, v8);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_s = &__s;
  }

  else
  {
    p_s = __s.__r_.__value_.__r.__words[0];
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __s.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v48, p_s, size);
  v36 = v35->__r_.__value_.__r.__words[0];
  v52[0] = v35->__r_.__value_.__l.__size_;
  *(v52 + 7) = *(&v35->__r_.__value_.__r.__words[1] + 7);
  v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v38 = v52[0];
  *a1 = v36;
  *(a1 + 8) = v38;
  *(a1 + 15) = *(v52 + 7);
  *(a1 + 23) = v37;
LABEL_54:
  __s.__r_.__value_.__r.__words[0] = &v40;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__s);
  v39 = *MEMORY[0x1E69E9840];
}

void sub_1DE559E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v51 - 121) < 0)
  {
    operator delete(*(v51 - 144));
  }

  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 89) < 0)
  {
    operator delete(*(v51 - 112));
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v50 + 23) < 0)
  {
    operator delete(*v50);
  }

  *(v51 - 112) = &a10;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100]((v51 - 112));
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<AMCP::Graph::Timebase>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<AMCP::Graph::Timebase>,std::__hash_value_type<std::shared_ptr<AMCP::Graph::Timebase>,unsigned long>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,true>,std::__unordered_map_equal<std::shared_ptr<AMCP::Graph::Timebase>,std::__hash_value_type<std::shared_ptr<AMCP::Graph::Timebase>,unsigned long>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<AMCP::Graph::Timebase>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<AMCP::Graph::Timebase>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<AMCP::Graph::Timebase> const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2)
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

void *std::__hash_table<std::__hash_value_type<AMCP::Graph::Manifest_Task *,unsigned long>,std::__unordered_map_hasher<AMCP::Graph::Manifest_Task *,std::__hash_value_type<AMCP::Graph::Manifest_Task *,unsigned long>,std::hash<AMCP::Graph::Manifest_Task *>,std::equal_to<AMCP::Graph::Manifest_Task *>,true>,std::__unordered_map_equal<AMCP::Graph::Manifest_Task *,std::__hash_value_type<AMCP::Graph::Manifest_Task *,unsigned long>,std::equal_to<AMCP::Graph::Manifest_Task *>,std::hash<AMCP::Graph::Manifest_Task *>,true>,std::allocator<std::__hash_value_type<AMCP::Graph::Manifest_Task *,unsigned long>>>::__emplace_unique_key_args<AMCP::Graph::Manifest_Task *,std::piecewise_construct_t const&,std::tuple<AMCP::Graph::Manifest_Task *&&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t AMCP::Graph::Manifest::get_overload_time_in_host_time(AMCP::Graph::Manifest *this, const AMCP::Graph::Manifest_Execution_Context *a2)
{
  v4 = *(this + 9);
  v5 = *(this + 10);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(v17, *(v4 + 64));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a2 + 10);
  if ((*a2 & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(a2);
  }

  v7 = (v6 * vcvtmd_s64_f64(*(a2 + 1)));
  AMCP::Graph::Manifest::get_master_timebase(&v10, *(this + 9), *(this + 10));
  v11 = 2;
  v12 = v7;
  v13 = 0;
  v14 = v10;
  boost::operators_impl::operator+(v15, v17, &v11);
  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
  }

  host_time = AMCP::DAL::DAL_Time::get_host_time(v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return host_time;
}

void sub_1DE55ABD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (*(v21 - 56))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v21 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE55AC10()
{
  if (!v0)
  {
    JUMPOUT(0x1DE55AC08);
  }

  JUMPOUT(0x1DE55AC00);
}

void AMCP::Graph::Manifest::end_processing(uint64_t **this, int a2, const AMCP::Graph::Manifest_Execution_Context *a3)
{
  v90 = *MEMORY[0x1E69E9840];
  if ((*this & 0xFFFFFFFE) != 2)
  {
    goto LABEL_91;
  }

  v4 = this;
  v5 = this[1];
  v6 = this[2];
  while (v5 != v6)
  {
    v7 = *v5;
    *(v7 + 88) = 0;
    v8 = *(*(v7 + 48) + 312);
    if (v8)
    {
      std::function<void ()>::operator()(v8, a2);
    }

    v5 += 2;
  }

  v9 = *(v4 + 9);
  v10 = *(v9 + 3);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = v10[12];
      v13 = *(v12 + 304);
      if (v13)
      {
        if (*(v12 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v85, *(v12 + 8), *(v12 + 16));
        }

        else
        {
          v85 = *(v12 + 8);
        }

        v86 = *(v12 + 32);
        LODWORD(v87) = *(v12 + 40);
        *buf = a2;
        *&buf[8] = *&v85.__r_.__value_.__l.__data_;
        v14 = v85.__r_.__value_.__r.__words[2];
        memset(&v85, 0, sizeof(v85));
        *&buf[24] = v14;
        v78 = v86;
        LODWORD(v79) = v87;
        v15 = (*(*v13 + 192))(v13, buf, *(v12 + 156));
        if ((buf[31] & 0x80000000) != 0)
        {
          operator delete(*&buf[8]);
        }

        v11 |= v15;
      }

      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v16 = *(v9 + 8);
  if (*v16 == 1)
  {
    v17 = *(v9 + 12);
    v18 = *(v9 + 13);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = (*(*v17 + 168))(v17);
    v20 = v19;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      if ((v20 & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_26:
      AMCP::Graph::create_cycle_info(buf, v16, a3);
      v22 = *(v9 + 14);
      v21 = *(v9 + 15);
      if (v22 != v21)
      {
        v68 = v9;
        v69 = v4;
        do
        {
          if (v11)
          {
            AMCP::IO_Core::Device_Connection::end_cycle(*v22, buf, a3);
          }

          v23 = *v22;
          v24 = (*v22)[1];
          if (v24)
          {
            v25 = v16[10];
            v26 = std::__shared_weak_count::lock(v24);
            if (v26)
            {
              v27 = v26;
              v28 = *v23;
              if (*v23)
              {
                v29 = atomic_load((v28 + 128));
                if (v29 == 1)
                {
                  v31 = *(v28 + 96);
                  v30 = *(v28 + 104);
                  if (v30)
                  {
                    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v70 = v30;
                  v32 = *(v28 + 120);
                  v73[0] = *(v28 + 112);
                  v73[1] = v32;
                  if (v32)
                  {
                    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  AMCP::DAL::DAL_Time_Delta::translate_time_delta(&v85, a3, v73);
                  if ((v85.__r_.__value_.__s.__data_[0] & 2) == 0)
                  {
                    AMCP::DAL::DAL_Time_Delta::validate(&v85);
                  }

                  (*(*v31 + 232))(v31, v25, vcvtmd_s64_f64(*&v85.__r_.__value_.__l.__size_));
                  if (v87)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v87);
                  }

                  v4 = v69;
                  if (v32)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
                  }

                  v9 = v68;
                  if (v70)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
                  }
                }

                v33 = atomic_load((v28 + 128));
                if (v33 == 1)
                {
                  v85.__r_.__value_.__r.__words[0] = &unk_1F5988D60;
                  v86 = &v85;
                  AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v28, &v85);
                  std::__function::__value_func<void ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](&v85);
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v27);
            }
          }

          v22 += 2;
        }

        while (v22 != v21);
      }

      *v16 = 0;
      for (i = *(v9 + 3); i; i = *i)
      {
        if (v11)
        {
          AMCP::Graph::Manifest_Buffer::advance(i[12]);
        }

        v35 = i[12];
        v36 = v35[37];
        if (v36)
        {
          v35[37] = v36 - 1;
        }
      }

      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (v82)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v82);
      }

      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v81);
      }

      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      goto LABEL_66;
    }

    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_66:
  v37 = *(v9 + 14);
  for (j = *(v9 + 15); v37 != j; v37 += 2)
  {
    v39 = *v37;
    v40 = (*v37)[1];
    if (v40)
    {
      v41 = std::__shared_weak_count::lock(v40);
      if (v41)
      {
        v42 = v41;
        v43 = *v39;
        if (v43)
        {
          v45 = *(v43 + 96);
          v44 = *(v43 + 104);
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
            if (!v45)
            {
              goto LABEL_92;
            }

            v45 = *(v43 + 96);
            v46 = *(v43 + 104);
            if (v46)
            {
              atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            if (!v45)
            {
LABEL_92:
              v60 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v60 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v44);
              }

              v62 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v61 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v61)
              {
                atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
                v63 = *v62;
                std::__shared_weak_count::__release_shared[abi:ne200100](v61);
              }

              else
              {
                v63 = *v62;
              }

              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "Device_Connection.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 92;
                *&buf[18] = 2080;
                *&buf[20] = "not (device_state->get_engine())";
                _os_log_error_impl(&dword_1DE1F9000, v63, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v76);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string("", &v74);
              std::logic_error::logic_error(&v75, &v74);
              v75.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v85, &v75);
              v86 = 0;
              v87 = 0;
              v88 = 0;
              v89 = -1;
              v85.__r_.__value_.__r.__words[0] = &unk_1F5991430;
              v85.__r_.__value_.__r.__words[2] = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v85);
              v78 = "void AMCP::IO_Core::Device_Connection::cleanup_processing()";
              v79 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
              v80 = 92;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
            }

            v46 = 0;
          }

          *buf = &unk_1F5988E60;
          *&buf[8] = v45;
          *&buf[16] = v46;
          *&buf[24] = buf;
          AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v43, buf);
          std::__function::__value_func<void ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](buf);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }
    }

    v47 = *v37;
    v48 = (*v37)[1];
    if (v48)
    {
      v49 = std::__shared_weak_count::lock(v48);
      if (v49)
      {
        if (*v47)
        {
          v50 = (*v47 + 128);
          v51 = atomic_load(v50);
          if (v51 <= 0)
          {
            v64 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v64 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v49);
            }

            v66 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v65 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v65)
            {
              atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
              v67 = *v66;
              std::__shared_weak_count::__release_shared[abi:ne200100](v65);
            }

            else
            {
              v67 = *v66;
            }

            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "Device.h";
              *&buf[12] = 1024;
              *&buf[14] = 81;
              *&buf[18] = 2080;
              *&buf[20] = "not (m_refcount > 0)";
              _os_log_error_impl(&dword_1DE1F9000, v67, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v76);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("", &v74);
            std::logic_error::logic_error(&v75, &v74);
            v75.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v85, &v75);
            v86 = 0;
            v87 = 0;
            v88 = 0;
            v89 = -1;
            v85.__r_.__value_.__r.__words[0] = &unk_1F5991430;
            v85.__r_.__value_.__r.__words[2] = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v85);
            v78 = "void AMCP::IO_Core::Device_Node_State::remove_reference()";
            v79 = "MCP/AMCP/IO/IO_Core/Device.h";
            v80 = 81;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
          }

          atomic_fetch_add(v50, 0xFFFFFFFF);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }
    }
  }

  AMCP::Graph::Manifest_Inventory::release_power_assertions(v9);
  *v4 = 1;
  v52 = *(v4 + 12);
  if (v52)
  {
    AMCP::Graph::Manifest::get_iocontext_uid(buf, v4);
    if (buf[23] >= 0)
    {
      v58 = buf;
    }

    else
    {
      LOBYTE(v58) = buf[0];
    }

    AMCP::Graph::Manifest_Log::add_message(v52, 1, "Manifest: %s Hardware End: %p", v53, v54, v55, v56, v57, v58);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_91:
  v59 = *MEMORY[0x1E69E9840];
}

void sub_1DE55B56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, int a41, __int16 a42, char a43, char a44)
{
  v48 = *(v46 - 128);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  AMCP::Graph::IO_Proc_Cycle_Info::~IO_Proc_Cycle_Info(&__p);
  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest::teardown_processing(AMCP::Graph::Manifest *this)
{
  if (*this == 1)
  {
    v2 = *(this + 9);
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::Graph::Timebase_Set::stop(v3);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(this + 12);
    if (v5)
    {
      AMCP::Graph::Manifest::get_iocontext_uid(__p, this);
      if (v13 >= 0)
      {
        v11 = __p;
      }

      else
      {
        LOBYTE(v11) = __p[0];
      }

      AMCP::Graph::Manifest_Log::add_message(v5, 1, "Manifest: %s Hardware Stop: %p", v6, v7, v8, v9, v10, v11);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *this = 0;
  }
}

void sub_1DE55B784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest::dump_manifest_log(std::__shared_weak_count **this)
{
  if (this)
  {
    AMCP::Graph::Manifest_Log::get_queue(this);
    std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v3, *this, this[1]);
    v2 = atomic_load(&unk_1ECDAB3F8);
    if (v2)
    {
      atomic_store(1u, byte_1ECDAB3F9);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN10applesauce8dispatch2v19sync_implIRZN4AMCP5Graph12Manifest_Log4dumpEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_14_5580;
    block[4] = &v3;
    dispatch_sync(AMCP::Graph::Manifest_Log::get_queue(void)::s_instance[0], block);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void AMCP::IO_Core::DSP::~DSP(AMCP::IO_Core::DSP *this)
{
  AMCP::IO_Core::Node::~Node(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_MetaSubDevice::HandleGroupObjectPropertiesChanged(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, AudioObjectPropertyAddress *a8, char a9, uint64_t a10, NSObject **a11)
{
  v20 = HALS_ObjectMap::CopyObjectByObjectID(a1[12]);
  if (v20)
  {
    v32 = a3;
    v21 = *a11;
    object = v21;
    if (v21)
    {
      dispatch_retain(v21);
    }

    (*(*v20 + 176))(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, &object);
    if (object)
    {
      dispatch_release(object);
    }

    if (HALS_MetaSubDevice::_GetObject(a1) && a4)
    {
      v22 = 0;
      v23 = a8;
      v24 = a4;
      do
      {
        v25 = *(a5 + 4 * v22);
        if (v25 == *(HALS_MetaSubDevice::_GetObject(a1) + 16))
        {
          v26 = v22;
        }

        else
        {
          v23 += *(a6 + 4 * v22);
          v26 = -1;
        }

        if (v26 != -1)
        {
          break;
        }

        ++v22;
      }

      while (v22 < v24);
      memset(v33, 0, sizeof(v33));
      if (v26 != -1)
      {
        v27 = *(a6 + 4 * v26);
        if (v27)
        {
          for (i = 0; i < v27; ++i)
          {
            mSelector = v23->mSelector;
            ++v23;
            if (HALS_MetaDevice::PassRealNotificationToClient(mSelector, 1))
            {
              CAPropertyAddressList::AppendUniqueItem(v33, a8, v30);
              v27 = *(a6 + 4 * v26);
            }

            ++a8;
          }

          v31 = *&v33[0];
          if (*&v33[0] != *(&v33[0] + 1))
          {
            HALS_Object::PropertiesChanged(a1, a1[4], v32, -1431655765 * ((*(&v33[0] + 1) - *&v33[0]) >> 2), *&v33[0]);
          }

          if (v31)
          {
            operator delete(v31);
          }
        }
      }
    }
  }

  HALS_ObjectMap::ReleaseObject(v20, v19);
}

void sub_1DE55BAA4(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object)
{
  if (v19)
  {
    operator delete(v19);
  }

  HALS_ObjectMap::ReleaseObject(v18, a2);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::_GetObject(HALS_MetaSubDevice *this)
{
  if ((*(this + 14) ^ (*(this + 14) >> 31)) >= 2)
  {
    boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return *(this + 8);
}

void HALS_MetaSubDevice::HandleObjectPropertiesChanged(HALS_MetaSubDevice *this, const HALS_Object *a2, uint64_t a3, uint64_t a4, AudioObjectPropertyAddress *a5)
{
  v10 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v12 = v10;
  if (v10)
  {
    (*(*v10 + 168))(v10, a2, a3, a4, a5);
    if (HALS_MetaSubDevice::_GetObject(this) == a2)
    {
      memset(v15, 0, sizeof(v15));
      if (a4)
      {
        a4 = a4;
        do
        {
          if (HALS_MetaDevice::PassRealNotificationToClient(a5->mSelector, 1))
          {
            CAPropertyAddressList::AppendUniqueItem(v15, a5, v13);
          }

          ++a5;
          --a4;
        }

        while (a4);
        v14 = *&v15[0];
        if (*&v15[0] != *(&v15[0] + 1))
        {
          HALS_Object::PropertiesChanged(this, *(this + 4), a3, -1431655765 * ((*(&v15[0] + 1) - *&v15[0]) >> 2), *&v15[0]);
        }

        if (v14)
        {
          operator delete(v14);
        }
      }
    }
  }

  HALS_ObjectMap::ReleaseObject(v12, v11);
}

void sub_1DE55BC70(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v10)
  {
    operator delete(v10);
  }

  HALS_ObjectMap::ReleaseObject(v9, a2);
  _Unwind_Resume(a1);
}

void HALS_MetaSubDevice::SetPropertyData(HALS_MetaSubDevice *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v53 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v41 = 2003332927;
LABEL_45:
    exception[2] = v41;
  }

  v16 = boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_Device *>>(this + 14);
  if (!v16)
  {
    *&buf.mSelector = &unk_1F59873D0;
    boost::throw_exception<boost::bad_get>();
  }

  if (*v16 && HALB_Info::PropertyRequiresHogMode(a3->mSelector, v17))
  {
    v18 = boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_Device *>>(this + 14);
    if (!v18)
    {
      *&buf.mSelector = &unk_1F59873D0;
      boost::throw_exception<boost::bad_get>();
    }

    v19 = atomic_load((*v18 + 160));
    v20 = a8 ? *(a8 + 60) : getpid();
    if (v19 != -1 && v19 != v20)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v41 = 560492391;
      goto LABEL_45;
    }
  }

  v22 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1685218931)
  {
    if (mSelector != 1685218913)
    {
      if (mSelector == 1685218929)
      {
        if (a4 > 3)
        {
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 0x40000000;
          v46[2] = ___ZN18HALS_MetaSubDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_15;
          v46[3] = &__block_descriptor_tmp_16_11134;
          v46[4] = this;
          v46[5] = a5;
          v24 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v24, v46);
          v25 = *(this + 4);
          if (a8)
          {
            v26 = *(a8 + 4);
          }

          else
          {
            v26 = 0;
          }

          strcpy(&buf, "qfrdbolg");
          BYTE1(buf.mElement) = 0;
          HIWORD(buf.mElement) = 0;
          HALS_Object::PropertiesChanged(this, v25, v26, 1, &buf);
          goto LABEL_41;
        }

        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubDevice.cpp";
        v51 = 1024;
        v52 = 287;
        v42 = MEMORY[0x1E69E9C10];
        v43 = "%25s:%-5d  HALS_MetaSubDevice::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationQuality";
        goto LABEL_54;
      }

LABEL_25:
      if (HALS_MetaSubDevice::_GetObject(this))
      {
        Object = HALS_MetaSubDevice::_GetObject(this);
        (*(*Object + 128))(Object, a2, a3, a4, a5, a6, a7, a8);
        goto LABEL_41;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubDevice.cpp";
        v51 = 1024;
        v52 = 298;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaSubDevice::SetPropertyData: no real device", &buf, 0x12u);
      }

      v44 = 1852797029;
LABEL_56:
      v45 = __cxa_allocate_exception(0x10uLL);
      *v45 = off_1F5991DD8;
      v45[2] = v44;
    }

    if (a4 > 3)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 0x40000000;
      v47[2] = ___ZN18HALS_MetaSubDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_13;
      v47[3] = &__block_descriptor_tmp_14_11132;
      v47[4] = this;
      v47[5] = a5;
      v32 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v32, v47);
      v33 = *(this + 4);
      if (a8)
      {
        v34 = *(a8 + 4);
      }

      else
      {
        v34 = 0;
      }

      strcpy(&buf, "afrdbolg");
      BYTE1(buf.mElement) = 0;
      HIWORD(buf.mElement) = 0;
      HALS_Object::PropertiesChanged(this, v33, v34, 1, &buf);
      goto LABEL_41;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "HALS_MetaSubDevice.cpp";
      v51 = 1024;
      v52 = 274;
      v42 = MEMORY[0x1E69E9C10];
      v43 = "%25s:%-5d  HALS_MetaSubDevice::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationAlgorithm";
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  if (mSelector == 1685218932)
  {
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubDevice.cpp";
        v51 = 1024;
        v52 = 261;
        v42 = MEMORY[0x1E69E9C10];
        v43 = "%25s:%-5d  HALS_MetaSubDevice::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensation";
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 0x40000000;
    v48[2] = ___ZN18HALS_MetaSubDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_11;
    v48[3] = &__block_descriptor_tmp_12_11130;
    v48[4] = this;
    v48[5] = a5;
    v35 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v35, v48);
    v36 = *(this + 4);
    if (a8)
    {
      v37 = *(a8 + 4);
    }

    else
    {
      v37 = 0;
    }

    strcpy(&buf, "tfrdbolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    HALS_Object::PropertiesChanged(this, v36, v37, 1, &buf);
  }

  else
  {
    if (mSelector != 2020373603)
    {
      goto LABEL_25;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubDevice.cpp";
        v51 = 1024;
        v52 = 248;
        v42 = MEMORY[0x1E69E9C10];
        v43 = "%25s:%-5d  HALS_MetaSubDevice::_SetPropertyData: bad property data size for kAudioSubDevicePropertyExtraLatency";
LABEL_54:
        _os_log_impl(&dword_1DE1F9000, v42, OS_LOG_TYPE_ERROR, v43, &buf, 0x12u);
      }

LABEL_55:
      v44 = 561211770;
      goto LABEL_56;
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 0x40000000;
    v49[2] = ___ZN18HALS_MetaSubDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
    v49[3] = &__block_descriptor_tmp_10_11128;
    v49[4] = this;
    v49[5] = a3;
    v49[6] = a5;
    v27 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v27, v49);
    v28 = *(this + 4);
    if (a8)
    {
      v29 = *(a8 + 4);
    }

    else
    {
      v29 = 0;
    }

    mScope = a3->mScope;
    buf.mSelector = 2020373603;
    *&buf.mScope = mScope;
    HALS_Object::PropertiesChanged(this, v28, v29, 1, &buf);
  }

LABEL_41:
  HALS_ObjectMap::ReleaseObject(v22, v31);
  v39 = *MEMORY[0x1E69E9840];
}

_DWORD *boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_Device *>>(int *a1)
{
  v2 = *a1;
  result = a1 + 2;
  switch(v2 ^ (v2 >> 31))
  {
    case 0:
      return result;
    case 1:
      result = 0;
      break;
    default:
      boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return result;
}

void HALS_MetaSubDevice::GetPropertyData(HALS_MetaSubDevice *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, void *a6, unsigned int a7, const void *a8, HALS_Client *a9)
{
  v35 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v24 = 2003332927;
    goto LABEL_35;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1685218931)
  {
    if (mSelector == 1685218932)
    {
      if (a4 > 3)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 0x40000000;
        v29[2] = ___ZNK18HALS_MetaSubDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_4;
        v29[3] = &__block_descriptor_tmp_5_11140;
        v29[4] = this;
        v29[5] = a6;
        v15 = (*(*this + 64))(this);
        v16 = v29;
        goto LABEL_19;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 136315394;
      v32 = "HALS_MetaSubDevice.cpp";
      v33 = 1024;
      v34 = 203;
      v25 = MEMORY[0x1E69E9C10];
      v26 = "%25s:%-5d  HALS_MetaSubDevice::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensation";
      goto LABEL_33;
    }

    if (mSelector != 2020373603)
    {
      goto LABEL_11;
    }

    if (a4 > 7)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 0x40000000;
      v30[2] = ___ZNK18HALS_MetaSubDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
      v30[3] = &__block_descriptor_tmp_3_11138;
      v30[4] = this;
      v30[5] = a6;
      v30[6] = a3;
      v17 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v17, v30);
      v18 = 8;
LABEL_20:
      *a5 = v18;
      v22 = *MEMORY[0x1E69E9840];
      return;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136315394;
    v32 = "HALS_MetaSubDevice.cpp";
    v33 = 1024;
    v34 = 194;
    v25 = MEMORY[0x1E69E9C10];
    v26 = "%25s:%-5d  HALS_MetaSubDevice::_GetPropertyData: bad property data size for kAudioSubDevicePropertyExtraLatency";
LABEL_33:
    _os_log_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x12u);
LABEL_34:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v24 = 561211770;
    goto LABEL_35;
  }

  if (mSelector == 1685218913)
  {
    if (a4 > 3)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 0x40000000;
      v28[2] = ___ZNK18HALS_MetaSubDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_6;
      v28[3] = &__block_descriptor_tmp_7_11142;
      v28[4] = this;
      v28[5] = a6;
      v15 = (*(*this + 64))(this);
      v16 = v28;
      goto LABEL_19;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136315394;
    v32 = "HALS_MetaSubDevice.cpp";
    v33 = 1024;
    v34 = 212;
    v25 = MEMORY[0x1E69E9C10];
    v26 = "%25s:%-5d  HALS_MetaSubDevice::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationAlgorithm";
    goto LABEL_33;
  }

  if (mSelector == 1685218929)
  {
    if (a4 > 3)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 0x40000000;
      v27[2] = ___ZNK18HALS_MetaSubDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_8;
      v27[3] = &__block_descriptor_tmp_9_11144;
      v27[4] = this;
      v27[5] = a6;
      v15 = (*(*this + 64))(this);
      v16 = v27;
LABEL_19:
      HALB_CommandGate::ExecuteCommand(v15, v16);
      v18 = 4;
      goto LABEL_20;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136315394;
    v32 = "HALS_MetaSubDevice.cpp";
    v33 = 1024;
    v34 = 221;
    v25 = MEMORY[0x1E69E9C10];
    v26 = "%25s:%-5d  HALS_MetaSubDevice::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationQuality";
    goto LABEL_33;
  }

LABEL_11:
  if (!HALS_MetaSubDevice::_GetObject(this))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "HALS_MetaSubDevice.cpp";
      v33 = 1024;
      v34 = 228;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaSubDevice::GetPropertyData: no real device", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v24 = 1852797029;
LABEL_35:
    exception[2] = v24;
  }

  Object = HALS_MetaSubDevice::_GetObject(this);
  v20 = *(*Object + 120);
  v21 = *MEMORY[0x1E69E9840];

  v20(Object);
}

double ___ZNK18HALS_MetaSubDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 4 * (**(a1 + 48) == 1768845428) + 88);
  result = *&a2;
  **(a1 + 40) = result;
  return result;
}

uint64_t HALS_MetaSubDevice::GetPropertyDataSize(HALS_MetaSubDevice *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 96))(a1, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v15 = 2003332927;
    goto LABEL_16;
  }

  v8 = *a3;
  if (*a3 > 1685218931)
  {
    if (v8 == 2020373603)
    {
      result = 8;
      goto LABEL_14;
    }

    v9 = 26228;
  }

  else
  {
    if (v8 == 1685218913)
    {
LABEL_8:
      result = 4;
LABEL_14:
      v13 = *MEMORY[0x1E69E9840];
      return result;
    }

    v9 = 26225;
  }

  if (v8 == (v9 | 0x64720000))
  {
    goto LABEL_8;
  }

  if (!HALS_MetaSubDevice::_GetObject(a1))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HALS_MetaSubDevice.cpp";
      v18 = 1024;
      v19 = 177;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaSubDevice::GetPropertyDataSize: no real device", &v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v15 = 1852797029;
LABEL_16:
    exception[2] = v15;
  }

  v11 = *(*HALS_MetaSubDevice::_GetObject(a1) + 112);
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t HALS_MetaSubDevice::IsPropertySettable(HALS_MetaSubDevice *a1, uint64_t a2, _DWORD *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 96))(a1) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v12 = 2003332927;
    goto LABEL_16;
  }

  if ((*a3 - 1685218913) <= 0x13 && ((1 << (*a3 - 97)) & 0x90001) != 0 || *a3 == 2020373603)
  {
    v7 = *MEMORY[0x1E69E9840];
    return 1;
  }

  if (!HALS_MetaSubDevice::_GetObject(a1))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_MetaSubDevice.cpp";
      v15 = 1024;
      v16 = 146;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaSubDevice::IsPropertySettable: no real device", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v12 = 1852797029;
LABEL_16:
    exception[2] = v12;
  }

  v9 = *(*HALS_MetaSubDevice::_GetObject(a1) + 104);
  v10 = *MEMORY[0x1E69E9840];

  return v9();
}

uint64_t HALS_MetaSubDevice::HasProperty(HALS_MetaSubDevice *a1, uint64_t a2, int *a3, uint64_t a4)
{
  result = (*(*a1 + 184))(a1, a3, a4);
  if (!result)
  {
    return result;
  }

  result = 0;
  v7 = *a3;
  if (*a3 <= 1852012898)
  {
    if (v7 > 1685218912)
    {
      if (v7 <= 1685218931)
      {
        if (v7 != 1685218913 && v7 != 1685218929)
        {
          goto LABEL_38;
        }

        return 1;
      }

      if (v7 == 1685218932)
      {
        return 1;
      }

      v8 = 1718843939;
LABEL_27:
      if (v7 == v8)
      {
        return result;
      }

      goto LABEL_38;
    }

    v9 = v7 == 1651730810 || v7 == 1651735075;
    v10 = 1684434036;
LABEL_20:
    if (v9 || v7 == v10)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (v7 <= 1919512166)
  {
    v9 = v7 == 1852012899 || v7 == 1869180523;
    v10 = 1919055206;
    goto LABEL_20;
  }

  if (v7 <= 1986425721)
  {
    if (v7 == 1919512167)
    {
      return result;
    }

    v8 = 1936092276;
    goto LABEL_27;
  }

  if (v7 == 1986425722)
  {
    return result;
  }

  if (v7 == 2020373603)
  {
    v12 = a3[1];
    return v12 == 1768845428 || v12 == 1869968496;
  }

LABEL_38:
  result = HALS_MetaSubDevice::_GetObject(a1);
  if (result)
  {
    v14 = *(*HALS_MetaSubDevice::_GetObject(a1) + 96);

    return v14();
  }

  return result;
}

unsigned int *HALS_MetaSubDevice::_Deactivate(HALS_MetaSubDevice *this)
{
  v14 = *MEMORY[0x1E69E9840];
  result = HALS_MetaSubDevice::_GetObject(this);
  if (result)
  {
    v3 = *(HALS_MetaSubDevice::_GetObject(this) + 16);
    v4 = *(this + 4);
    v5 = *(this + 14);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZN18HALS_MetaSubDevice11_DeactivateEv_block_invoke;
    v9[3] = &__block_descriptor_tmp_11148;
    v10 = v4;
    v11 = v3;
    AMCP::Utility::Dispatch_Queue::async(v5, v9);
    Object = HALS_MetaSubDevice::_GetObject(this);
    HALS_ObjectMap::ReleaseObject_LongTerm(Object, v7);
    result = (this + 56);
    switch(*(this + 14) ^ (*(this + 14) >> 31))
    {
      case 0:
        *(this + 8) = 0;
        break;
      case 1:
        v13 = 0;
        v12 = 0;
        boost::variant<HALS_Device *,HALS_ClockDevice *>::variant_assign(result, &v12);
        result = boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(0);
        break;
      case 2:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 3:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 4:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 5:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 6:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 7:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 8:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 9:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xA:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xB:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xC:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xD:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xE:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xF:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0x10:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0x11:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0x12:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0x13:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      default:
        boost::detail::variant::forced_return<HALS_Device * const*>();
    }
  }

  *(this + 2) = 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZN18HALS_MetaSubDevice11_DeactivateEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 36);
  v7[0] = 0;
  v7[1] = v6;
  v8 = 0u;
  v9 = 0u;
  HALS_NotificationManager::RemovePropertyListener(v7, v5, &qword_1DE79AFDC, a4, a5);
  HALS_Listener::~HALS_Listener(v7);
}

void sub_1DE55D4CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALS_Listener::~HALS_Listener(va);
  _Unwind_Resume(a1);
}

uint64_t boost::variant<HALS_Device *,HALS_ClockDevice *>::variant_assign(unsigned int *a1, uint64_t a2)
{
  result = *a1;
  if (result == *a2)
  {
    switch(result ^ (result >> 31))
    {
      case 0u:
      case 1u:
        *(a1 + 1) = *(a2 + 8);
        return result;
      default:
        goto LABEL_8;
    }
  }

  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
      result = boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(result);
      *(a1 + 1) = *(a2 + 8);
      *a1 = 0;
      break;
    case 1:
      result = boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(result);
      *(a1 + 1) = *(a2 + 8);
      *a1 = 1;
      break;
    default:
LABEL_8:
      boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return result;
}

uint64_t boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(uint64_t result)
{
  if ((result + 2) >= 4)
  {
    boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return result;
}

void HALS_MetaSubDevice::~HALS_MetaSubDevice(AMCP::Utility::Dispatch_Queue **this)
{
  HALS_MetaSubDevice::~HALS_MetaSubDevice(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5979C40;
  if (g_static_start_options == 1)
  {
    do
    {
      AMCP::Utility::Dispatch_Queue::flush_all_work(this[14]);
      v2 = atomic_load(this[14] + 33);
    }

    while ((v2 & 1) != 0);
  }

  v3 = this[14];
  this[14] = 0;
  if (v3)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v3);
    MEMORY[0x1E12C1730]();
  }

  CACFString::~CACFString((this + 9));
  boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(*(this + 14));

  HALS_Object::~HALS_Object(this);
}

void HALS_MetaSubDevice::_SetSubDeviceInfo(HALS_MetaSubDevice *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    CFRetain(theDict);
  }

  v6 = &unk_1F5991008;
  theDicta = theDict;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDict, @"latency-out");
  *(this + 22) = OS::CF::Number::GetValue<unsigned int>(v5, 0);
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDicta, @"latency-in");
  *(this + 23) = OS::CF::Number::GetValue<unsigned int>(v5, 0);
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDicta, @"don't pad");
  *(this + 96) = OS::CF::Number::GetValue<unsigned int>(v5, 0) == 0;
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDicta, @"drift");
  *(this + 97) = OS::CF::Number::GetValue<unsigned int>(v5, 0) != 0;
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDicta, @"drift algorithm");
  *(this + 25) = OS::CF::Number::GetValue<unsigned int>(v5, 0);
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDicta, @"drift quality");
  *(this + 26) = OS::CF::Number::GetValue<unsigned int>(v5, 64);
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::UntypedObject::~UntypedObject(&v6);
}

void HALS_MetaSubDevice::HALS_MetaSubDevice(HALS_MetaSubDevice *this, HALS_MetaDevice *a2, const __CFString *a3, const __CFDictionary *a4, HALS_Object *a5)
{
  v10 = *MEMORY[0x1E69E9840];
  HALS_Object::HALS_Object(this, 1634956642, 1634956642, a2, a5);
  *v8 = &unk_1F5979C40;
  *(v8 + 48) = *(a2 + 4);
  *(v8 + 64) = 0;
  *(v8 + 56) = 0;
  if (a3)
  {
    CFRetain(a3);
  }

  *(this + 9) = a3;
  *(this + 80) = 1;
  *(this + 11) = 0;
  *(this + 48) = 1;
  *(this + 100) = 0x4000000000;
  AMCP::Utility::Dispatch_Queue::create_concurrent_with_workloop(v9, "HALS_MetaSubDevice Concurrent Queue");
  operator new();
}

void sub_1DE55D960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN18HALS_MetaSubDevice16SetSubDeviceInfoEP11HALS_DevicePK14__CFDictionary_block_invoke(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v27 = v2;
  if (!HALS_MetaSubDevice::_GetObject(v1) || HALS_MetaSubDevice::_GetObject(v1) == v2)
  {
    v7 = 0;
  }

  else
  {
    v4 = *(HALS_MetaSubDevice::_GetObject(v1) + 16);
    v5 = *(v1 + 16);
    v6 = *(v1 + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN18HALS_MetaSubDevice17_SetSubDeviceInfoEP11HALS_DevicePK14__CFDictionary_block_invoke;
    block[3] = &__block_descriptor_tmp_34_11170;
    v25 = v5;
    v26 = v4;
    AMCP::Utility::Dispatch_Queue::async(v6, block);
    v7 = 1;
  }

  if (!HALS_MetaSubDevice::_GetObject<HALS_Device>(v1))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "HALS_MetaSubDevice.cpp";
      v30 = 1024;
      v31 = 514;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_MetaSubDevice::_SetSubDeviceInfo: Attempting to replace a clock device with a physical device", buf, 0x12u);
    }
  }

  if (HALS_MetaSubDevice::_GetObject(v1))
  {
    Object = HALS_MetaSubDevice::_GetObject(v1);
    HALS_ObjectMap::ReleaseObject_LongTerm(Object, v13);
  }

  boost::variant<HALS_Device *,HALS_ClockDevice *>::assign<HALS_Device *>(v1 + 56, &v27);
  if (v7)
  {
    v22 = 0x2A2A2A2A2A2A2A2ALL;
    v23 = -1;
    v14 = *(v1 + 16);
    v19[0] = 0;
    v19[1] = v14;
    v20 = 0u;
    v21 = 0u;
    v15 = *(HALS_MetaSubDevice::_GetObject(v1) + 16);
    buf[0] = 0;
    v32 = 0;
    HALS_NotificationManager::AddPropertyListener(v19, v15, &v22, buf);
    HALS_Listener::~HALS_Listener(v19);
  }

  v16 = HALS_MetaSubDevice::_GetObject(v1);
  HALS_ObjectMap::RetainObject(v16, v17);
  HALS_MetaSubDevice::_SetSubDeviceInfo(v1, v3);
  v18 = *MEMORY[0x1E69E9840];
}

void ___ZN18HALS_MetaSubDevice17_SetSubDeviceInfoEP11HALS_DevicePK14__CFDictionary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 36);
  v7[0] = 0;
  v7[1] = v6;
  v8 = 0u;
  v9 = 0u;
  HALS_NotificationManager::RemovePropertyListener(v7, v5, &qword_1DE79AFDC, a4, a5);
  HALS_Listener::~HALS_Listener(v7);
}

void sub_1DE55DC94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALS_Listener::~HALS_Listener(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::_GetObject<HALS_Device>(uint64_t a1)
{
  v1 = boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_Device * const>>((a1 + 56));
  if (!v1)
  {
    boost::throw_exception<boost::bad_get>();
  }

  return *v1;
}

void sub_1DE55DD04(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  std::exception::~exception(&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE55DCCCLL);
}

uint64_t boost::variant<HALS_Device *,HALS_ClockDevice *>::assign<HALS_Device *>(uint64_t result, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  switch(*result ^ (*result >> 31))
  {
    case 0:
      *(result + 8) = *a2;
      break;
    case 1:
      v4 = *a2;
      v3 = 0;
      boost::variant<HALS_Device *,HALS_ClockDevice *>::variant_assign(result, &v3);
      result = boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(0);
      break;
    default:
      boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_MetaSubDevice::CopyRealIODevice(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice16CopyRealIODeviceEv_block_invoke;
  v4[3] = &unk_1E8676A18;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55DEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZNK18HALS_MetaSubDevice16CopyRealIODeviceEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = HALS_MetaSubDevice::_CopyRealDevice<HALS_Device>(v2);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_ClockDevice * const>>((v2 + 56));
    if (!v3)
    {
      boost::throw_exception<boost::bad_get>();
    }

    v5 = *v3;
    HALS_ObjectMap::RetainObject(*v3, v4);
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }
}

void sub_1DE55DF6C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE55DF24);
}

void sub_1DE55DF98(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

_DWORD *boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_ClockDevice * const>>(int *a1)
{
  v1 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      return v1;
    case 1:
      v1 = a1 + 2;
      break;
    default:
      boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return v1;
}

uint64_t HALS_MetaSubDevice::CopyRealDeviceUID(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice17CopyRealDeviceUIDEv_block_invoke;
  v4[3] = &unk_1E8676A40;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef ___ZNK18HALS_MetaSubDevice17CopyRealDeviceUIDEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(v2 + 72);
  if (result)
  {
    result = CFRetain(result);
    v4 = *(v2 + 72);
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

void sub_1DE55E13C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::GetRealDeviceObjectID(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice21GetRealDeviceObjectIDEv_block_invoke;
  v4[3] = &unk_1E8676A68;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK18HALS_MetaSubDevice21GetRealDeviceObjectIDEv_block_invoke(uint64_t a1)
{
  result = HALS_MetaSubDevice::_GetObject(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = *(result + 16);
  return result;
}

void sub_1DE55E274(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::GetExtraLatency(HALS_MetaSubDevice *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK18HALS_MetaSubDevice15GetExtraLatencyEb_block_invoke;
  v5[3] = &unk_1E8676A90;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t HALS_MetaSubDevice::IsSynchPaddingOn(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice16IsSynchPaddingOnEv_block_invoke;
  v4[3] = &unk_1E8676AB8;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::IsDriftCorrectionOn(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice19IsDriftCorrectionOnEv_block_invoke;
  v4[3] = &unk_1E8676AE0;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::GetDriftCorrectionAlgorithm(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice27GetDriftCorrectionAlgorithmEv_block_invoke;
  v4[3] = &unk_1E8676B08;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::GetDriftCorrectionQuality(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 64;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice25GetDriftCorrectionQualityEv_block_invoke;
  v4[3] = &unk_1E8676B30;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::GetNumberStreams(HALS_MetaSubDevice *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK18HALS_MetaSubDevice16GetNumberStreamsEb_block_invoke;
  v5[3] = &unk_1E8676B58;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK18HALS_MetaSubDevice16GetNumberStreamsEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  result = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
  if (result)
  {
    v5 = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
    result = HALS_IODevice::GetNumberStreams(v5, v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE55E8A4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::CopyStreamByIndex(HALS_MetaSubDevice *this, char a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK18HALS_MetaSubDevice17CopyStreamByIndexEbj_block_invoke;
  v6[3] = &unk_1E8676B80;
  v6[4] = &v9;
  v6[5] = this;
  v8 = a2;
  v7 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t ___ZNK18HALS_MetaSubDevice17CopyStreamByIndexEbj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 52);
  v4 = *(a1 + 48);
  result = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
  if (result)
  {
    v6 = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
    result = HALS_IODevice::CopyStreamByIndex(v6, v3, v4);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE55EA10(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::GetTotalNumberChannels(HALS_MetaSubDevice *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK18HALS_MetaSubDevice22GetTotalNumberChannelsEb_block_invoke;
  v5[3] = &unk_1E8676BA8;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK18HALS_MetaSubDevice22GetTotalNumberChannelsEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  result = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
  if (result)
  {
    v5 = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
    result = HALS_Device::GetTotalNumberChannels(v5, v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE55EB70(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::GetClockDomain(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice14GetClockDomainEv_block_invoke;
  v4[3] = &unk_1E8676BD0;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55EC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK18HALS_MetaSubDevice14GetClockDomainEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (HALS_MetaSubDevice::_GetObject<HALS_Device>(v2))
  {
    v3 = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
LABEL_5:
    result = (*(*v3 + 328))(v3);
    goto LABEL_6;
  }

  result = HALS_MetaSubDevice::_GetObject<HALS_ClockDevice>(v2);
  if (result)
  {
    v3 = HALS_MetaSubDevice::_GetObject<HALS_ClockDevice>(v2);
    goto LABEL_5;
  }

LABEL_6:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE55ECFC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::_GetObject<HALS_ClockDevice>(uint64_t a1)
{
  v1 = boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_ClockDevice * const>>((a1 + 56));
  if (!v1)
  {
    boost::throw_exception<boost::bad_get>();
  }

  return *v1;
}

void sub_1DE55ED78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  std::exception::~exception(&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE55ED40);
}

void AMCP::Box::~Box(AMCP::Box *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

AMCP::Box *AMCP::Box::Box(AMCP::Box *this, AMCP::System_Context *a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Object::Object(this, a2, a3);
  *v4 = &unk_1F5979D38;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x61626F78);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "Box.cpp";
      v14 = 1024;
      v15 = 26;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_box)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}
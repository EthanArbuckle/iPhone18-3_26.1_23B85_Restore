void sub_18F646298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 56) = v13;
    operator delete(v13);
  }

  std::__function::__value_func<void ()(applesauce::xpc::dict const&)>::~__value_func[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void auoop::WorkgroupPropagator::propagate(uint64_t a1, uint64_t *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  if (kAUExtensionScope)
  {
    v4 = *kAUExtensionScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AUOOPWorkgroups.mm";
    *&buf[12] = 1024;
    *&buf[14] = 308;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: propagating workgroups.", buf, 0x12u);
  }

LABEL_8:
  applesauce::xpc::array::create(&xarray);
  applesauce::xpc::array::create(&v67);
  os_unfair_lock_lock((a1 + 40));
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v7 = *(a1 + 48);
  if (v6 > (*(a1 + 64) - v7) >> 3)
  {
    if (!(v6 >> 61))
    {
      v8 = *(a1 + 56);
      std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v6);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v10 = *a2;
  v9 = a2[1];
  v11 = MEMORY[0x1E69E9A60];
LABEL_12:
  v12 = v67;
  v13 = *(a1 + 56);
  while (v7 != v13)
  {
    v14 = *v7;
    if (v10 != v9)
    {
      v15 = *(v10 + 8);
      if (v15 < v14)
      {
LABEL_23:
        WeakRetained = objc_loadWeakRetained((v10 + 16));
        v21 = WeakRetained;
        if (WeakRetained)
        {
          mach_port_out[0] = 0;
          v22 = os_workgroup_copy_port(WeakRetained, mach_port_out);
          if (!v22)
          {
            goto LABEL_33;
          }

          if (kAUExtensionScope)
          {
            v23 = *kAUExtensionScope;
            if (!v23)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v23 = MEMORY[0x1E69E9C10];
            v24 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "AUOOPWorkgroups.mm";
            *&buf[12] = 1024;
            *&buf[14] = 323;
            v70 = 1024;
            LODWORD(v71) = v22;
            _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Copying workgroup port failed (%d)", buf, 0x18u);
          }

LABEL_33:
          *buf = *(v10 + 8);
          v25 = xpc_uint64_create(*buf);
          v26 = v25;
          if (!v25)
          {
            v26 = xpc_null_create();
          }

          v27 = xarray;
          xpc_array_append_value(xarray, v26);

          v28 = xpc_mach_send_create();
          v29 = v28;
          if (!v28)
          {
            v29 = xpc_null_create();
          }

          xpc_array_append_value(v27, v29);
          mach_port_deallocate(*v11, mach_port_out[0]);
          v30 = *(a1 + 56);
          v31 = *(a1 + 64);
          if (v30 >= v31)
          {
            v33 = *(a1 + 48);
            v34 = v30 - v33 + 1;
            if (v34 >> 61)
            {
              std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
            }

            v35 = v31 - v33;
            if (v35 >> 2 > v34)
            {
              v34 = v35 >> 2;
            }

            if (v35 >= 0x7FFFFFFFFFFFFFF8)
            {
              v36 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v36);
            }

            v37 = v7 - v33;
            v38 = v7 - v33;
            v39 = (8 * v38);
            if (!v38)
            {
              if (v37 < 1)
              {
                v46 = v37 >> 2;
                if (v7 == v33)
                {
                  v47 = 1;
                }

                else
                {
                  v47 = v46;
                }

                std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v47);
              }

              v39 = (v39 - (((v37 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
            }

            *v39 = *buf;
            memcpy(v39 + 1, v7, *(a1 + 56) - v7);
            v40 = *(a1 + 48);
            v61 = v39 + *(a1 + 56) - v7 + 8;
            *(a1 + 56) = v7;
            v41 = v7 - v40;
            v42 = v39 - (v7 - v40);
            memcpy(v42, v40, v41);
            v43 = *(a1 + 48);
            *(a1 + 48) = v42;
            *(a1 + 56) = v61;
            if (v43)
            {
              operator delete(v43);
            }

            v7 = v39;
          }

          else if (v7 == v30)
          {
            *v30 = *buf;
            *(a1 + 56) = v30 + 1;
          }

          else
          {
            if (v30 < 8)
            {
              v32 = *(a1 + 56);
            }

            else
            {
              *v30 = *(v30 - 1);
              v32 = v30 + 1;
            }

            *(a1 + 56) = v32;
            if (v30 != v7 + 1)
            {
              memmove(v7 + 1, v7, v30 - (v7 + 1));
              v32 = *(a1 + 56);
            }

            v44 = v32 <= buf || v7 > buf;
            v45 = 8;
            if (v44)
            {
              v45 = 0;
            }

            *v7 = *&buf[v45];
          }

          ++v7;
        }

        goto LABEL_68;
      }

      if (v14 >= v15)
      {
        ++v7;
LABEL_68:
        v10 += 24;
        goto LABEL_12;
      }
    }

    v16 = xpc_uint64_create(v14);
    v17 = v16;
    if (!v16)
    {
      v17 = xpc_null_create();
    }

    xpc_array_append_value(v12, v17);
    v18 = *(a1 + 56);
    v19 = v18 - (v7 + 1);
    if (v18 != v7 + 1)
    {
      memmove(v7, v7 + 1, v18 - (v7 + 1));
    }

    v13 = (v7 + v19);
    *(a1 + 56) = v7 + v19;
  }

  if (v10 != v9)
  {
    goto LABEL_23;
  }

  os_unfair_lock_unlock((a1 + 40));
  v48 = xarray;
  Class = object_getClass(xarray);
  v50 = MEMORY[0x1E69E9E50];
  if (Class == MEMORY[0x1E69E9E50] && xpc_array_get_count(v48) || object_getClass(v12) == v50 && xpc_array_get_count(v12))
  {
    if (kAUExtensionScope)
    {
      v51 = *kAUExtensionScope;
      if (!v51)
      {
LABEL_91:
        applesauce::xpc::dict::create(mach_port_out);
        applesauce::xpc::object::object(&v64, v48);
        *buf = mach_port_out;
        *&buf[8] = "add";
        applesauce::xpc::dict::object_proxy::operator=(&v65, buf, &v64);

        v56 = v64;
        v64 = 0;

        applesauce::xpc::object::object(&v62, v12);
        *buf = mach_port_out;
        *&buf[8] = "remove";
        applesauce::xpc::dict::object_proxy::operator=(&v63, buf, &v62);

        v57 = v62;
        v62 = 0;

        v58 = *(a1 + 32);
        if (!v58)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v58 + 48))(v58, mach_port_out);
        v59 = *mach_port_out;
        *mach_port_out = 0;

        goto LABEL_93;
      }
    }

    else
    {
      v51 = MEMORY[0x1E69E9C10];
      v52 = MEMORY[0x1E69E9C10];
    }

    v53 = v51;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      if (object_getClass(v48) == v50)
      {
        count = xpc_array_get_count(v48);
      }

      else
      {
        count = 0;
      }

      if (object_getClass(v12) == v50)
      {
        v55 = xpc_array_get_count(v12);
      }

      else
      {
        v55 = 0;
      }

      *buf = 136315906;
      *&buf[4] = "AUOOPWorkgroups.mm";
      *&buf[12] = 1024;
      *&buf[14] = 343;
      v70 = 2048;
      v71 = count;
      v72 = 2048;
      v73 = v55;
      _os_log_impl(&dword_18F5DF000, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: notifying workgroup listeners. Added :%zu, removed: %zu", buf, 0x26u);
    }

    goto LABEL_91;
  }

LABEL_93:

  v60 = *MEMORY[0x1E69E9840];
}

void applesauce::xpc::array::create(applesauce::xpc::array *this)
{
  v2 = xpc_array_create(0, 0);
  v5 = v2;
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  v3 = v2;
  v4 = v3;
  *this = v3;
  if (!v3 || object_getClass(v3) != MEMORY[0x1E69E9E50])
  {
    *this = xpc_null_create();
  }
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F646CB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pooledRenderer::AudioConverterOOP::Impl::setUpRendererConfig(uint64_t result, __int128 *a2, __int128 *a3, void *a4, void *a5)
{
  v7 = 0;
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = result + 24;
  v9 = *a2;
  v10 = a2[1];
  *(result + 56) = *(a2 + 4);
  *(result + 40) = v10;
  *(result + 24) = v9;
  v11 = *a3;
  v12 = a3[1];
  *(result + 112) = *(a3 + 4);
  *(result + 80) = v11;
  *(result + 96) = v12;
  v22[0] = 0x100000000;
  do
  {
    v13 = *(v22 + v7);
    v14 = (v8 + 56 * v13);
    ioPropertyDataSize = 4;
    outPropertyData = 0;
    v15 = v14[2];
    if (v15 == 1818440480 || v15 == 1935827744)
    {
      v17 = 1;
    }

    else
    {
      result = AudioFormatGetProperty(0x66766272u, 0x28u, (v8 + 56 * v13), &ioPropertyDataSize, &outPropertyData);
      if (result)
      {
        v17 = v14[4] == 0;
      }

      else
      {
        v17 = outPropertyData;
      }
    }

    v14[10] = v17;
    v18 = (*a4 + 4 * v13);
    if (!*v18)
    {
      v18 = v14 + 4;
    }

    v14[12] = *v18;
    v14[11] = *(*a5 + 4 * v13);
    v7 += 4;
  }

  while (v7 != 8);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AudioFormatProperty_FormatIsVBR(RegistryAccess *a1, unsigned int *a2)
{
  RegistryAccess::instance(a1);
  v4 = qword_1ED746318;
  os_unfair_recursive_lock_lock_with_options();
  v5 = (*(*v4 + 16))(v4, a1, 1819304813, 0, 0);
  if (v5 || (v5 = (*(*v4 + 16))(v4, 1819304813, a1, 0, 0)) != 0)
  {
    v6 = (*(*v5 + 24))(v5, a2);
  }

  else
  {
    v6 = 1718449215;
  }

  os_unfair_recursive_lock_unlock();
  return v6;
}

uint64_t acv2::CodecConverterFactory::IsVBR(acv2::CodecConverterFactory *this, unsigned int *a2)
{
  os_unfair_lock_lock(&acv2::sCodecConverterFactoryLocker);
  if (*(this + 52) == 1)
  {
    Property = 0;
    *a2 = *(this + 12);
  }

  else
  {
    outInstance = 0;
    Property = AudioComponentInstanceNew(*(this + 4), &outInstance);
    if (!Property)
    {
      v7 = 0;
      ioPropertyDataSize = 4;
      Property = AudioCodecGetProperty(outInstance, 0x76706B3Fu, &ioPropertyDataSize, &v7);
      if (!Property)
      {
        v5 = v7;
        *a2 = v7;
        *(this + 12) = v5;
        *(this + 52) = 1;
      }

      AudioComponentInstanceDispose(outInstance);
    }
  }

  os_unfair_lock_unlock(&acv2::sCodecConverterFactoryLocker);
  return Property;
}

uint64_t ACRendererSharedMemory::requiredSharedMemorySize(uint64_t a1)
{
  v1 = *(a1 + 84);
  if ((*(a1 + 68) & 0x20) == 0)
  {
    v1 = 1;
  }

  if (*(a1 + 64) == 1885564203)
  {
    v2 = (2 * *(a1 + 100)) + *(a1 + 48) + (*(a1 + 72) * *(a1 + 20) * v1) + 140;
  }

  else
  {
    v3 = *(a1 + 28);
    if ((*(a1 + 12) & 0x20) == 0)
    {
      v3 = 1;
    }

    v2 = (v3 * *(a1 + 48)) + (v1 * *(a1 + 104)) + 16;
  }

  if (v2 <= 0x1FE70)
  {
    return 131056;
  }

  else
  {
    return (1 << vcvtpd_u64_f64(log2((v2 + 416)))) - 16;
  }
}

uint64_t audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::ipc_node_base(uint64_t a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  v3 = caulk::numeric::exceptional_add<unsigned long>(a2 + 16, 16382) & 0xFFFFFFFFFFFFC001;
  v16[0] = *MEMORY[0x1E696CE30];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v3];
  v16[1] = *MEMORY[0x1E696D0D8];
  v17[0] = v4;
  v17[1] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v6 = IOSurfaceCreate(v5);
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    CFRelease(v7);
  }

  if (!*a1)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v10 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "unilaterally_billed_shared_memory.mm";
      v14 = 1024;
      v15 = 24;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d unilaterally_billed_shared_memory - error on IOSurfaceCreate", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "bad IOSurface");
  }

  IOSurfaceSetValue(*a1, *MEMORY[0x1E696CF98], @"AudioConverter Shared memory");
  if (IOSurfaceGetAllocSize(*a1) < v3 || !unilaterally_billed_shared_memory::get_raw_ptr(a1, 0))
  {
    std::terminate();
  }

  *(a1 + 8) = unilaterally_billed_shared_memory::get_raw_ptr(a1, 0);
  *(a1 + 16) = unilaterally_billed_shared_memory::get_raw_ptr(a1, 0) + 8;
  *(a1 + 24) = unilaterally_billed_shared_memory::get_raw_ptr(a1, 0x10uLL);
  *(a1 + 32) = 1;
  *(a1 + 40) = os_eventlink_create();
  *(a1 + 48) = 0;
  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F647364(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__IOSurface *>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ACRendererSharedMemory>::emplace[abi:ne200100]<std::span<unsigned char,18446744073709551615ul>,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 296) == 1)
  {
    v7 = (a1 + 216);
    std::vector<ACRendererSharedMemory::Element>::__destroy_vector::operator()[abi:ne200100](&v7);
  }

  v4 = *a2;
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 140) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 16) = v4 + 48;
  *(v4 + 192) = 224;
  *(a1 + 200) = v4 + 48;
  *(a1 + 208) = v4;
  *(a1 + 296) = 1;
  return a1;
}

uint64_t audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::ipc_resources(audioipc::eventlink_primitive *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  audioipc::eventlink_primitive::ipc_resources(a1, (a2 + 40));
  token = 0;
  v4 = MEMORY[0x1E69E9A60];
  v5 = task_create_identity_token(*MEMORY[0x1E69E9A60], &token);
  if (v5)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v6 = *gAudioConverterLog;
    v7 = *gAudioConverterLog;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "unilaterally_billed_shared_memory.mm";
      *&buf[12] = 1024;
      *&buf[14] = 94;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d unilaterally_billed_shared_memory - error on task_create_identity_token: %u", buf, 0x18u);
    }

    v15 = 0;
  }

  else
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    XPCObject = IOSurfaceCreateXPCObject(*a2);
    xpc_dictionary_set_value(v8, "surface", XPCObject);

    v10 = xpc_mach_send_create();
    xpc_dictionary_set_value(v8, "token", v10);

    mach_port_deallocate(*v4, token);
    caulk::mach::details::release_os_object(0, v11);
    v15 = v8;
    if (v8)
    {
      xpc_retain(v8);
      goto LABEL_10;
    }
  }

  v8 = 0;
  v15 = xpc_null_create();
LABEL_10:
  *buf = a1;
  *&buf[8] = "sharedMemory";
  applesauce::xpc::dict::object_proxy::operator=(&object, buf, &v15);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  result = caulk::mach::details::release_os_object(v8, v12);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F647680(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void audioipc::eventlink_primitive::ipc_resources(audioipc::eventlink_primitive *this, uint64_t *a2)
{
  applesauce::xpc::dict::create(this);
  if (!*(a2 + 2))
  {
    v4 = *a2;
    remote_port = os_eventlink_extract_remote_port();
    if (remote_port)
    {
      audioipc::log_and_throw("os_eventlink_extract_remote_port failed", remote_port);
    }

    v6 = *(a2 + 2);
  }

  v9 = xpc_mach_send_create();
  v7 = v9;
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v8[0] = this;
  v8[1] = "eventlink";
  applesauce::xpc::dict::object_proxy::operator=(&v10, v8, &v9);
}

void applesauce::xpc::dict::create(applesauce::xpc::dict *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v5 = v2;
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  v3 = v2;
  v4 = v3;
  *this = v3;
  if (!v3 || object_getClass(v3) != MEMORY[0x1E69E9E80])
  {
    *this = xpc_null_create();
  }
}

uint64_t applesauce::xpc::dict::object_proxy::operator=(void *a1, uint64_t a2, id *a3)
{
  v6 = **a2;
  applesauce::dispatch::v1::queue::operator*(v6);
  objc_claimAutoreleasedReturnValue();
  v7 = *(a2 + 8);
  v8 = *a3;
  xpc_dictionary_set_value(v6, v7, v8);

  *a1 = *a3;
  v9 = xpc_null_create();
  v10 = *a3;
  *a3 = v9;

  return MEMORY[0x1EEE66BB8]();
}

{
  v6 = **a2;
  applesauce::dispatch::v1::queue::operator*(v6);
  objc_claimAutoreleasedReturnValue();
  v7 = *(a2 + 8);
  v8 = *a3;
  applesauce::dispatch::v1::queue::operator*(*a3);
  objc_claimAutoreleasedReturnValue();
  xpc_dictionary_set_value(v6, v7, v8);

  *a1 = *a3;
  v9 = xpc_null_create();
  v10 = *a3;
  *a3 = v9;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t checkForDecoderExemption(PlatformUtilities *a1)
{
  v1 = a1;
  v53 = *MEMORY[0x1E69E9840];
  cf2 = a1;
  if (!PlatformUtilities::IsInternalBuild(a1) || (v2 = CFPreferencesCopyAppValue(@"exemptFromForcedOOPDecoder", @"com.apple.coreaudio")) == 0)
  {
    v16 = 0;
    goto LABEL_66;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 != CFArrayGetTypeID())
  {
    v16 = 0;
    goto LABEL_65;
  }

  v5.i32[0] = bswap32(v1);
  v6 = vzip1_s8(v5, v5);
  v7.i64[0] = 0x1F0000001FLL;
  v7.i64[1] = 0x1F0000001FLL;
  v8.i64[0] = 0x5F0000005FLL;
  v8.i64[1] = 0x5F0000005FLL;
  v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
  v43 = 4;
  LODWORD(v42[0]) = vuzp1_s8(v9, v9).u32[0];
  BYTE4(v42[0]) = 0;
  v10 = getprogname();
  std::string::basic_string[abi:ne200100]<0>(__p, v10);
  v11 = *MEMORY[0x1E695E480];
  if (v43 >= 0)
  {
    v12 = v42;
  }

  else
  {
    v12 = v42[0];
  }

  v39 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v12, 0x8000100u);
  if (v41 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v37[0] = &v39;
  v37[1] = &v38;
  v38 = CFStringCreateWithCString(v11, v13, 0x8000100u);
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    v16 = 0;
    goto LABEL_61;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v15);
    v18 = CFGetTypeID(ValueAtIndex);
    if (v18 == CFNumberGetTypeID() && CFEqual(ValueAtIndex, &cf2))
    {
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v29 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v42;
        if (v43 < 0)
        {
          v30 = v42[0];
        }

        *buf = 136315650;
        v46 = "AudioConverter.cpp";
        v47 = 1024;
        v48 = 730;
        v49 = 2080;
        v50 = v30;
        v31 = "%25s:%-5d Decoding from the format %s is exempted from being forced out of process.";
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v19 = CFGetTypeID(ValueAtIndex);
    if (v19 != CFStringGetTypeID())
    {
      goto LABEL_36;
    }

    if (CFEqual(ValueAtIndex, v39))
    {
      break;
    }

    if (CFEqual(ValueAtIndex, v38))
    {
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v29 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
      {
        v33 = __p;
        if (v41 < 0)
        {
          v33 = __p[0];
        }

        *buf = 136315650;
        v46 = "AudioConverter.cpp";
        v47 = 1024;
        v48 = 747;
        v49 = 2080;
        v50 = v33;
        v31 = "%25s:%-5d Decoders for the process %s is exempted from being forced out of process. mode";
LABEL_59:
        _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_DEFAULT, v31, buf, 0x1Cu);
        goto LABEL_60;
      }

      goto LABEL_60;
    }

    theArray = CFStringCreateArrayBySeparatingStrings(v11, ValueAtIndex, @"+");
    v20 = CFArrayGetCount(theArray);
    if (v20 > 1)
    {
      v21 = CFArrayGetValueAtIndex(theArray, 0);
      if (CFEqual(v21, v38))
      {
        v22 = 1;
        while (1)
        {
          v23 = CFArrayGetValueAtIndex(theArray, v22);
          v24 = CFGetTypeID(v23);
          if (v24 == CFStringGetTypeID())
          {
            if (CFEqual(v23, v39))
            {
              break;
            }
          }

          v25 = CFGetTypeID(v23);
          if (v25 == CFNumberGetTypeID())
          {
            if (CFEqual(v23, &cf2))
            {
              break;
            }
          }

          if (v20 == ++v22)
          {
            goto LABEL_35;
          }
        }

        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v26 = *gAudioConverterLog;
        if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v42;
          if (v43 < 0)
          {
            v27 = v42[0];
          }

          v28 = __p;
          if (v41 < 0)
          {
            v28 = __p[0];
          }

          *buf = 136315906;
          v46 = "AudioConverter.cpp";
          v47 = 1024;
          v48 = 767;
          v49 = 2080;
          v50 = v27;
          v51 = 2080;
          v52 = v28;
          _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Decoding from the format %s for the process %s is exempted from being forced out of process. ", buf, 0x26u);
        }

        v16 = 1;
      }
    }

LABEL_35:
    CFRelease(theArray);
LABEL_36:
    if (++v15 == Count)
    {
      goto LABEL_61;
    }
  }

  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v29 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    v32 = v42;
    if (v43 < 0)
    {
      v32 = v42[0];
    }

    *buf = 136315650;
    v46 = "AudioConverter.cpp";
    v47 = 1024;
    v48 = 739;
    v49 = 2080;
    v50 = v32;
    v31 = "%25s:%-5d Decoding from the format %s is exempted from being forced out of process. ";
    goto LABEL_59;
  }

LABEL_60:
  v16 = 1;
LABEL_61:
  applesauce::raii::v1::detail::ScopeGuard<checkForDecoderExemption::{lambda(void)#1},applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v37);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

LABEL_65:
  CFRelease(v3);
LABEL_66:
  v34 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

void sub_18F647F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, CFTypeRef *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  applesauce::raii::v1::detail::ScopeGuard<checkForDecoderExemption::{lambda(void)#1},applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&a14);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t unilaterally_billed_shared_memory::get_raw_ptr(IOSurfaceRef *this, size_t a2)
{
  if (IOSurfaceGetAllocSize(*this) > a2)
  {
    return IOSurfaceGetBaseAddress(*this) + a2;
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t std::vector<ACRendererSharedMemory::Element>::__emplace_back_slow_path<CA::StreamDescription *,unsigned int,unsigned int &,unsigned char *&,unsigned char *&>(uint64_t *a1, _OWORD **a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v7)
  {
    v7 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v9 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v9 = v7;
  }

  v34 = a1;
  if (v9)
  {
    if (v9 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v10 = 88 * v6;
  v31 = 0;
  v32 = v10;
  v33 = v10;
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = *(*a2 + 4);
  v16 = (*a2)[1];
  *v10 = **a2;
  *(v10 + 16) = v16;
  *(v10 + 32) = v15;
  *(v10 + 40) = 0;
  *(v10 + 44) = v11;
  *(v10 + 48) = v12;
  CA::AudioBuffersBase::AudioBuffersBase((v10 + 56), v10, 0);
  *(v10 + 64) = v13;
  *(v10 + 72) = v14;
  *(v10 + 80) = -1;
  *&v33 = v33 + 88;
  v18 = *a1;
  v17 = a1[1];
  v19 = v32 + *a1 - v17;
  if (*a1 != v17)
  {
    v20 = *a1;
    v21 = v32 + *a1 - v17;
    do
    {
      v22 = *v20;
      v23 = v20[1];
      v24 = v20[2];
      *(v21 + 48) = *(v20 + 12);
      *(v21 + 16) = v23;
      *(v21 + 32) = v24;
      *v21 = v22;
      v25 = *(v20 + 7);
      *(v20 + 7) = 0;
      *(v21 + 56) = v25;
      v26 = v20[4];
      *(v21 + 80) = *(v20 + 20);
      *(v21 + 64) = v26;
      v20 = (v20 + 88);
      v21 += 88;
    }

    while (v20 != v17);
    while (v18 != v17)
    {
      ExtendedAudioBufferList_Destroy(*(v18 + 7));
      v18 = (v18 + 88);
    }
  }

  v27 = *a1;
  *a1 = v19;
  v28 = a1[2];
  v30 = v33;
  *(a1 + 1) = v33;
  *&v33 = v27;
  *(&v33 + 1) = v28;
  v31 = v27;
  v32 = v27;
  std::__split_buffer<ACRendererSharedMemory::Element>::~__split_buffer(&v31);
  return v30;
}

void sub_18F6481F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ACRendererSharedMemory::Element>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<ACRendererSharedMemory::Element>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 88;
    ExtendedAudioBufferList_Destroy(*(v3 - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AudioConverterXPC_Server::instantiateSpecificAndFetchProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const AudioClassDescription *a5, uint64_t a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v53.mSampleRate = 0.0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v46, &v53, &v53.mFormatID, 2uLL);
  v12 = *(a4 + 16);
  LODWORD(v53.mSampleRate) = *(a3 + 16);
  HIDWORD(v53.mSampleRate) = v12;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v43, &v53, &v53.mFormatID, 2uLL);
  v13 = *(a3 + 16);
  *&v53.mSampleRate = *a3;
  *&v53.mBytesPerPacket = v13;
  *&v53.mBitsPerChannel = *(a3 + 32);
  v14 = *(a4 + 16);
  *&v42.mSampleRate = *a4;
  *&v42.mBytesPerPacket = v14;
  *&v42.mBitsPerChannel = *(a4 + 32);
  v15 = AudioConverterXPC_Server::instantiateSpecific(a2, &v53, &v42, a5, a6);
  v16 = v15;
  if ((v17 & 1) != 0 || !v15)
  {
    v30 = a1;
    v21 = 0;
    v52 = 0x100000000;
    v31 = v43;
    v32 = v46;
    do
    {
      v22 = *(&v52 + v21);
      if (v22)
      {
        v23 = a4;
      }

      else
      {
        v23 = a3;
      }

      v37 = 4;
      if (*(v23 + 8) == 1885564203)
      {
        v51 = 1835296371;
        v50 = &v37;
        v49 = v32 + 4 * v22;
        *&v42.mSampleRate = &v51;
        *&v42.mFormatID = &v50;
        *&v42.mBytesPerPacket = &v49;
        *&v53.mSampleRate = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
        *&v53.mFormatID = &v42;
        with_resolved(v16, &v53);
      }

      if (!*(v23 + 16))
      {
        if (v22)
        {
          v24 = 2020569203;
        }

        else
        {
          v24 = 2020175987;
        }

        v51 = v24;
        v50 = &v37;
        v49 = v31 + 4 * v22;
        *&v42.mSampleRate = &v51;
        *&v42.mFormatID = &v50;
        *&v42.mBytesPerPacket = &v49;
        *&v53.mSampleRate = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
        *&v53.mFormatID = &v42;
        with_resolved(v16, &v53);
      }

      v21 += 4;
    }

    while (v21 != 8);
    v36 = 0;
    v35 = 0uLL;
    v18 = v31;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v35, v31, v44, (v44 - v31) >> 2);
    v19 = v32;
    v33 = 0uLL;
    v34 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v33, v32, v47, (v47 - v32) >> 2);
    v25 = v36;
    v26 = v35;
    v27 = v34;
    v28 = v33;
    *v30 = v16;
    *(v30 + 8) = v26;
    *(v30 + 24) = v25;
    *(v30 + 32) = v28;
    *(v30 + 48) = v27;
    *(v30 + 56) = 1;
  }

  else
  {
    v40[0] = 0;
    v40[1] = 0;
    v41 = 0;
    v18 = v43;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v40, v43, v44, (v44 - v43) >> 2);
    __p[0] = 0;
    __p[1] = 0;
    v39 = 0;
    v19 = v46;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, v46, v47, (v47 - v46) >> 2);
    *a1 = v16;
    v20 = __p[0];
    *(a1 + 56) = 0;
    if (v20)
    {
      operator delete(v20);
    }

    if (v40[0])
    {
      operator delete(v40[0]);
    }
  }

  if (v18)
  {
    operator delete(v18);
  }

  if (v19)
  {
    operator delete(v19);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_18F6485C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AudioConverterXPC_Server::instantiateSpecific(uint64_t a1, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, const AudioClassDescription *a4, uint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = *(**(a1 + 16) + 32);
  v10 = *(v9 + 132);
  if ((v10 & 0x100000000) != 0 && (v11 = atomic_load((v9 + 128)), v11 >= v10))
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v22 = 4294967188;
    v24 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v25 = atomic_load((v9 + 128));
      *buf = 136316162;
      *&buf[4] = "RemoteAudioConverter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2048;
      *&buf[20] = a1;
      *&buf[28] = 1024;
      *&buf[30] = v10;
      *&buf[34] = 1024;
      v31 = v25;
      _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterService -> %p: The service only supports up to %u converters. Number of out-of-process converters: %u. Returning kAudio_MemFullError.", buf, 0x28u);
    }
  }

  else
  {
    v12 = (v9 + 128);
    atomic_fetch_add(v12, 1u);
    atomic_load(v12);
    v13 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v13 + 88, 0);
    if (message)
    {
      v15 = message;
      v16 = _os_log_pack_fill();
      v17 = atomic_load(v12);
      *v16 = 67109120;
      v16[1] = v17;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v15);
    }

    if (a2->mFormatID == 1735091043)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL23registerPrivateDecodersj_block_invoke;
      *&buf[24] = &__block_descriptor_tmp_7721;
      *&buf[32] = 1735091043;
      if (registerPrivateDecoders::gkRegistrationOnceToken != -1)
      {
        dispatch_once(&registerPrivateDecoders::gkRegistrationOnceToken, buf);
      }
    }

    v28 = 0;
    v18 = AudioConverterNewInternal(a2, a3, a5, a4, &v28, newAudioConverter, 0, 0);
    v19 = v28;
    *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<SetConverterAsAuxiliary(OpaqueAudioConverter *)::$_0>;
    *&buf[8] = &v29;
    with_resolved(v28, buf);
    v20 = v19 & 0xFFFFFFFF00000000;
    if (v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }

    if (v18)
    {
      v20 = 0;
    }

    v22 = v20 | v21;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v22;
}

void sub_18F6488A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t acv2::CodecDecoderFactory::BuildCodecConverterChain(uint64_t a1, uint64_t a2, uint64_t a3, CA::StreamDescription *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 52))
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v15 = 1718449215;
    v16 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CodecConverterFactory.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 160;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d wildcard for output LPCM format flags is not allowed", buf, 0x12u);
    }

    goto LABEL_83;
  }

  v7 = *(a3 + 80);
  outInstance = v7;
  v8 = *(a3 + 128);
  v9 = *(a2 + 16);
  *buf = *a2;
  *&buf[16] = v9;
  v10 = *(a2 + 48);
  *v57 = *(a2 + 32);
  *&v57[16] = v10;
  *&v57[32] = *(a2 + 64);
  v11 = *buf;
  if (*buf == 0.0)
  {
    v11 = *&v57[8];
    *buf = *&v57[8];
  }

  *&v57[8] = v11;
  v12 = v7;
  if (!v7)
  {
    v15 = AudioComponentInstanceNew(*(a1 + 32), &outInstance);
    if (v15)
    {
      goto LABEL_83;
    }

    v12 = outInstance;
    if (!outInstance)
    {
      v15 = 2003329396;
      goto LABEL_83;
    }
  }

  v13 = buf;
  if (*(a3 + 121) == 1)
  {
    memset(&inData[40], 0, 24);
    *inData = *buf;
    *&inData[8] = xmmword_18F9017F0;
    *&inData[24] = 4;
    *&inData[28] = *&buf[28];
    *&inData[32] = 32;
    if (acv2::CodecConverterFactory::CodecCanInitializeWith(v12, buf, inData, a4))
    {
      outSize.componentType = 0;
      outWritable[0] = 0;
      if (AudioCodecGetPropertyInfo(v12, 0x696D7264u, &outSize.componentType, outWritable) || !outSize.componentType)
      {
        goto LABEL_8;
      }

      v30 = *&inData[40];
      if (outSize.componentType <= *&inData[48] - *&inData[40])
      {
        if (outSize.componentType < *&inData[48] - *&inData[40])
        {
          *&inData[48] = *&inData[40] + outSize.componentType;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(&inData[40], outSize.componentType - (*&inData[48] - *&inData[40]));
        v30 = *&inData[40];
      }

      if (AudioCodecGetProperty(v12, 0x696D7264u, &outSize.componentType, v30))
      {
LABEL_8:
        v14 = 0;
        v47 = 0;
      }

      else
      {
        if (outSize.componentType <= *&inData[48] - *&inData[40])
        {
          v46 = *&inData[40];
          LODWORD(v13) = outSize.componentType >= *&inData[48] - *&inData[40] ? *&inData[48] : *&inData[40] + outSize.componentType;
        }

        else
        {
          std::vector<unsigned char>::__append(&inData[40], outSize.componentType - (*&inData[48] - *&inData[40]));
          LODWORD(v13) = *&inData[48];
          v46 = *&inData[40];
        }

        v14 = inData[0];
        v54 = *&inData[1];
        v55[0] = *&inData[17];
        *(v55 + 15) = *&inData[32];
        memset(&inData[40], 0, 24);
        v47 = 1;
      }
    }

    else
    {
      v47 = 0;
      v14 = 0;
    }

    if (*&inData[40])
    {
      *&inData[48] = *&inData[40];
      operator delete(*&inData[40]);
    }

    if (v47)
    {
      v57[8] = v14;
      *&v57[9] = v54;
      *&v57[25] = v55[0];
      *&v57[40] = *(v55 + 15);
      v17 = *(a2 + 68);
      *&v57[16] = 1819304813;
      *&v57[36] = v17;
      if (v8)
      {
        AudioUnitUninitialize(v8);
        goto LABEL_22;
      }

      outSize.componentFlagsMask = 0;
      *&outSize.componentType = *"xmuamed3lppa";
      Next = AudioComponentFindNext(0, &outSize);
      if (Next)
      {
        *outWritable = 0;
        v26 = AudioComponentInstanceNew(Next, outWritable);
        if (v26)
        {
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v27 = *gAudioConverterLog;
          if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }

          *inData = 136315650;
          *&inData[4] = "CodecConverterFactory.cpp";
          *&inData[12] = 1024;
          *&inData[14] = 74;
          *&inData[18] = 1024;
          *&inData[20] = v26;
          v28 = "%25s:%-5d Unable to instantiate spatial renderer (%u)";
          v29 = v27;
        }

        else
        {
          LODWORD(v50) = 1;
          v34 = AudioUnitSetProperty(*outWritable, 0x25u, 0, 0, &v50, 4u);
          v8 = *outWritable;
          if (!v34)
          {
            if (*outWritable)
            {
LABEL_22:
              AudioFormat_CompleteChannelLayoutWithCoordinates(a3 + 136, &v50);
              inData[0] = v14;
              *&inData[1] = v54;
              *&inData[17] = v55[0];
              *&inData[32] = *(v55 + 15);
              *&inData[8] = 1885564203;
              v18 = AudioUnitSetProperty(v8, 8u, 1u, 0, inData, 0x28u);
              if (v18)
              {
                if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_99;
                }

                outSize.componentType = 136315394;
                *&outSize.componentSubType = "CodecConverterFactory.cpp";
                LOWORD(outSize.componentFlags) = 1024;
                *(&outSize.componentFlags + 2) = 102;
                v40 = MEMORY[0x1E69E9C10];
                v41 = "%25s:%-5d  set kAudioUnitProperty_StreamFormat(kAudioUnitScope_Input, 0) on AUSM failed";
              }

              else
              {
                v18 = AudioUnitSetProperty(v8, 0xC9Fu, 0, 0, v46, v13 - v46);
                if (v18)
                {
                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_99;
                  }

                  outSize.componentType = 136315394;
                  *&outSize.componentSubType = "CodecConverterFactory.cpp";
                  LOWORD(outSize.componentFlags) = 1024;
                  *(&outSize.componentFlags + 2) = 107;
                  v40 = MEMORY[0x1E69E9C10];
                  v41 = "%25s:%-5d  set kAudioUnitProperty_SpatialMixerImmersiveRendererData on AUSM failed";
                }

                else
                {
                  v18 = AudioUnitSetProperty(v8, 8u, 2u, 0, &v57[8], 0x28u);
                  if (v18)
                  {
                    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_99;
                    }

                    outSize.componentType = 136315394;
                    *&outSize.componentSubType = "CodecConverterFactory.cpp";
                    LOWORD(outSize.componentFlags) = 1024;
                    *(&outSize.componentFlags + 2) = 111;
                    v40 = MEMORY[0x1E69E9C10];
                    v41 = "%25s:%-5d  set kAudioUnitProperty_StreamFormat(kAudioUnitScope_Output, 0) on AUSM failed";
                  }

                  else
                  {
                    v19 = v50;
                    v18 = AudioUnitSetProperty(v8, 0x13u, 2u, 0, v50, v51 - v50);
                    if (!v18)
                    {
                      v20 = *v19;
                      if (*v19 == 6946818)
                      {
                        v21 = 1;
                      }

                      else
                      {
                        v21 = 3;
                      }

                      v49 = v21;
                      v22 = AudioUnitSetProperty(v8, 0xC1Cu, 0, 0, &v49, 4u);
                      if (v22)
                      {
                        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_105;
                        }

                        outSize.componentType = 136315394;
                        *&outSize.componentSubType = "CodecConverterFactory.cpp";
                        LOWORD(outSize.componentFlags) = 1024;
                        *(&outSize.componentFlags + 2) = 124;
                        v43 = MEMORY[0x1E69E9C10];
                        v44 = "%25s:%-5d  set kAudioUnitProperty_SpatialMixerOutputType on AUSM failed";
                      }

                      else
                      {
                        if (v20 == 6946818)
                        {
                          operator new();
                        }

                        v22 = AudioUnitInitialize(v8);
                        if (!v22)
                        {
                          operator delete(v19);
                          v33 = 1;
                          goto LABEL_70;
                        }

                        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
LABEL_105:
                          exception = __cxa_allocate_exception(4uLL);
                          *exception = v22;
                          __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
                        }

                        outSize.componentType = 136315394;
                        *&outSize.componentSubType = "CodecConverterFactory.cpp";
                        LOWORD(outSize.componentFlags) = 1024;
                        *(&outSize.componentFlags + 2) = 135;
                        v43 = MEMORY[0x1E69E9C10];
                        v44 = "%25s:%-5d  set AudioUnitInitialize on AUSM failed";
                      }

                      _os_log_impl(&dword_18F5DF000, v43, OS_LOG_TYPE_ERROR, v44, &outSize, 0x12u);
                      goto LABEL_105;
                    }

                    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
LABEL_99:
                      v42 = __cxa_allocate_exception(4uLL);
                      *v42 = v18;
                      __cxa_throw(v42, MEMORY[0x1E69E5478], 0);
                    }

                    outSize.componentType = 136315394;
                    *&outSize.componentSubType = "CodecConverterFactory.cpp";
                    LOWORD(outSize.componentFlags) = 1024;
                    *(&outSize.componentFlags + 2) = 116;
                    v40 = MEMORY[0x1E69E9C10];
                    v41 = "%25s:%-5d  set kAudioUnitProperty_AudioChannelLayout(kAudioUnitScope_Output, 0) on AUSM failed";
                  }
                }
              }

              _os_log_impl(&dword_18F5DF000, v40, OS_LOG_TYPE_ERROR, v41, &outSize, 0x12u);
              goto LABEL_99;
            }

LABEL_69:
            v33 = 0;
LABEL_70:
            v36 = v47;
            if (!v46)
            {
              v36 = 0;
            }

            if (v36 == 1)
            {
              operator delete(v46);
            }

            if (v33)
            {
LABEL_75:
              if (v7 || *&v57[36])
              {
                if (*&v57[36])
                {
                  if (!*&buf[28])
                  {
                    *&buf[28] = *&v57[36];
                  }

                  v37 = *(a1 + 32);
                  operator new();
                }
              }

              else
              {
                AudioComponentInstanceDispose(outInstance);
              }

              v15 = 4294967246;
              goto LABEL_83;
            }

            goto LABEL_32;
          }

          AudioComponentInstanceDispose(*outWritable);
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v35 = *gAudioConverterLog;
          if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
          {
LABEL_68:
            v8 = 0;
            goto LABEL_69;
          }

          *inData = 136315650;
          *&inData[4] = "CodecConverterFactory.cpp";
          *&inData[12] = 1024;
          *&inData[14] = 83;
          *&inData[18] = 1024;
          *&inData[20] = v34;
          v28 = "%25s:%-5d Unable to set offline render mode of spatial renderer (%u)";
          v29 = v35;
        }

        v32 = 24;
      }

      else
      {
        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v31 = *gAudioConverterLog;
        if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        *inData = 136315394;
        *&inData[4] = "CodecConverterFactory.cpp";
        *&inData[12] = 1024;
        *&inData[14] = 67;
        v28 = "%25s:%-5d Unable to enumerate spatial renderer";
        v29 = v31;
        v32 = 18;
      }

      _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_ERROR, v28, inData, v32);
      goto LABEL_68;
    }
  }

LABEL_32:
  if (v8)
  {
    AudioUnitUninitialize(v8);
    AudioComponentInstanceDispose(v8);
  }

  *&inData[32] = *v57;
  *&inData[48] = *&v57[16];
  v53 = *&v57[32];
  *inData = *buf;
  *&inData[16] = *&buf[16];
  v23 = acv2::CodecConverterFactory::ChooseIntermediateFormat(a1, outInstance, inData, buf, &v57[8], 0, 0);
  v15 = v23;
  if (v23)
  {
    v24 = v7 != 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    AudioComponentInstanceDispose(outInstance);
    goto LABEL_83;
  }

  if (!v23)
  {
    goto LABEL_75;
  }

LABEL_83:
  v38 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_18F6497C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, _Unwind_Exception *exception_objecta, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t buf, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a35)
  {
    (*(*a35 + 8))(a35);
  }

  _Unwind_Resume(a1);
}

uint64_t acv2::CodecConverterFactory::ChooseIntermediateFormat(uint64_t a1, AudioCodec inCodec, __n128 *a3, uint64_t a4, uint64_t a5, int a6, signed int a7)
{
  v126 = *MEMORY[0x1E69E9840];
  outPropertyData = 0;
  v118 = 0;
  v119 = 0;
  outSize = 0;
  outWritable = 0;
  if (a6)
  {
    v13 = 1768305775;
  }

  else
  {
    v13 = 1868969065;
  }

  if (AudioCodecGetPropertyInfo(inCodec, v13, &outSize, &outWritable))
  {
LABEL_7:
    if (a6)
    {
      v17 = 1768320291;
    }

    else
    {
      v17 = 1868983587;
    }

    PropertyInfo = AudioCodecGetPropertyInfo(inCodec, v17, &outSize, &outWritable);
    if (PropertyInfo)
    {
      goto LABEL_211;
    }

    std::vector<CA::StreamDescription>::resize(&outPropertyData, outSize / 0x28uLL);
    PropertyInfo = AudioCodecGetProperty(inCodec, v17, &outSize, outPropertyData);
    if (PropertyInfo)
    {
      goto LABEL_211;
    }

    std::vector<CA::StreamDescription>::resize(&outPropertyData, outSize / 0x28uLL);
    v20 = outPropertyData;
    v19 = v118;
    goto LABEL_15;
  }

  std::vector<CA::StreamDescription>::resize(&outPropertyData, outSize / 0x28uLL);
  v14 = outPropertyData;
  v15 = *(a4 + 32);
  v16 = *(a4 + 16);
  *outPropertyData = *a4;
  v14[1] = v16;
  *(v14 + 4) = v15;
  if (AudioCodecGetProperty(inCodec, v13, &outSize, v14))
  {
    v118 = v14;
    goto LABEL_7;
  }

  std::vector<CA::StreamDescription>::resize(&outPropertyData, outSize / 0x28uLL);
  v20 = outPropertyData;
  if (outPropertyData == v118)
  {
    goto LABEL_7;
  }

  v19 = v118;
LABEL_15:
  v21 = a3[3];
  v114[2] = a3[2];
  v114[3] = v21;
  v114[4] = a3[4];
  v22 = a3[1];
  v114[0] = *a3;
  v114[1] = v22;
  v111 = *(a5 + 8);
  __p = 0;
  v121 = 0;
  v122 = 0;
  v110 = v19;
  if (v20 == v19)
  {
    goto LABEL_197;
  }

  v109 = inCodec;
  v23 = v111;
  if (v111 == 1885564203)
  {
    v24 = a6;
  }

  else
  {
    v24 = 1;
  }

  v25 = v20;
  v26 = a4;
  v27 = v19;
  v112 = v24;
  do
  {
    v28 = *(v25 + 2);
    v29 = *(a5 + 8);
    if (v28 == 1819304813)
    {
      v30 = v24;
    }

    else
    {
      v30 = 1;
    }

    if (v28 != v29 && v30 != 0)
    {
LABEL_73:
      *buf = 0;
      std::vector<double>::push_back[abi:ne200100](&__p, buf);
      goto LABEL_120;
    }

    v22.n128_u64[0] = *v25;
    v32 = *a5;
    v33 = *v26;
    if (*a5 == 0.0)
    {
      v32 = *v26;
    }

    if (v22.n128_f64[0] == 0.0)
    {
      *v25 = v32;
      v22.n128_f64[0] = v32;
      v34 = 0.99;
      goto LABEL_42;
    }

    if (v32 == 0.0)
    {
      goto LABEL_41;
    }

    if (v23 != 1885564203)
    {
      if (v22.n128_f64[0] < v32)
      {
        v35 = v22.n128_f64[0] * 0.5 / v32;
LABEL_40:
        v34 = v35 * 0.99;
        goto LABEL_42;
      }

      if (v22.n128_f64[0] > v32)
      {
        v35 = v32 * 0.2 / v22.n128_f64[0];
        goto LABEL_40;
      }

LABEL_41:
      v34 = 0.99;
      goto LABEL_42;
    }

    v34 = 0.99;
    if (v22.n128_f64[0] != v32)
    {
      goto LABEL_73;
    }

LABEL_42:
    v36 = *(v25 + 7);
    if (v36)
    {
      if (v36 != *(a5 + 28))
      {
        if (v23 == 1885564203)
        {
          goto LABEL_73;
        }

        v34 = v34 * 0.1;
      }
    }

    else
    {
      v36 = *(v26 + 28);
      if (!v36)
      {
        v36 = *(a5 + 28);
      }

      v37 = *(v25 + 3);
      if ((v37 & 0x20) != 0)
      {
        v38 = *(v25 + 6);
        v39 = 1;
      }

      else
      {
        v38 = (*(v25 + 8) + 7) >> 3;
        v39 = v36;
      }

      v40 = v38 * v39;
      *(v25 + 4) = v40;
      *(v25 + 5) = 1;
      *(v25 + 6) = v40;
      *(v25 + 7) = v36;
      *(v25 + 3) = v37;
    }

    v41 = *(v25 + 8);
    if (v41 >= 0)
    {
      v42 = *(v25 + 8);
    }

    else
    {
      v42 = -v41;
    }

    v43 = v42 + 7;
    v44 = *(a5 + 32);
    if (v44 >= 0)
    {
      v45 = *(a5 + 32);
    }

    else
    {
      v45 = -v44;
    }

    v46 = (v45 + 7) & 0xFFFFFFF8;
    if (a7 >= 0)
    {
      v47 = a7;
    }

    else
    {
      v47 = -a7;
    }

    a7 = (v47 + 7) & 0xFFFFFFF8;
    v48 = v43 & 0xFFFFFFF8;
    if (v48)
    {
      if (v48 != a7)
      {
        if (v48 == v46)
        {
          if (a7)
          {
            v34 = v34 * 0.9;
          }
        }

        else if (v48 >= v46)
        {
          if (v23 == 1885564203)
          {
            goto LABEL_73;
          }

          v34 = v34 * 0.99;
        }

        else
        {
          if (v23 == 1885564203)
          {
            goto LABEL_73;
          }

          if (v25[12])
          {
            v34 = v34 * (v48 / v46 * 0.7);
          }

          else
          {
            v34 = v34 * (v48 / v46 * 0.7) * 0.7;
          }
        }
      }
    }

    else if (a7)
    {
      v48 = (v47 + 7) & 0xFFFFFFF8;
    }

    else
    {
      v48 = v46;
    }

    v49 = *(v25 + 3);
    v50 = *(a5 + 12);
    if (((v50 ^ v49) & 2) == 0)
    {
      if (((v50 ^ v49) & 0x20) == 0)
      {
        goto LABEL_77;
      }

      if (v23 == 1885564203)
      {
        goto LABEL_73;
      }

LABEL_76:
      v34 = v34 * 0.11;
      goto LABEL_77;
    }

    if (v23 == 1885564203)
    {
      goto LABEL_73;
    }

    v34 = v34 * 0.11;
    if (((v50 ^ v49) & 0x20) != 0)
    {
      goto LABEL_76;
    }

LABEL_77:
    if ((v49 & 0x20) != 0)
    {
      v51 = 1;
    }

    else
    {
      v51 = v36;
    }

    v52 = v51 * v48;
    v53 = (v51 * v48) >> 3;
    *(v25 + 5) = 1;
    *(v25 + 6) = v53;
    *(v25 + 4) = v53;
    if (v28 != v29 || v22.n128_f64[0] != *a5)
    {
      goto LABEL_106;
    }

    v54 = v53 == *(a5 + 16) && *(a5 + 20) == 1;
    if (!v54 || v36 != *(a5 + 28) || v41 != v44)
    {
      goto LABEL_106;
    }

    if (v28 == 1819304813)
    {
      v55 = v49 & 0x7FFFFFFF;
      if ((v49 & 0x7FFFFFFF) == 0)
      {
        v55 = v49;
      }

      if (v52 >= 8 && v51)
      {
        v56 = 8 * (v53 / v51);
        v57 = v56 == v41;
      }

      else
      {
        v56 = 0;
        v57 = v41 == 0;
      }

      v67 = v57;
      v68 = v55 & 0xFFFFFFBF;
      if (v67)
      {
        v69 = v68 | 8;
      }

      else
      {
        v69 = v68;
      }

      v70 = v41 & 7;
      v71 = v56 == v41 && v70 == 0;
      v72 = v69 & 0xFFFFFFAF;
      if (!v71)
      {
        v72 = v69;
      }

      if (v72)
      {
        v72 &= 0xFFFFFFBB;
      }

      if ((v72 & 8) != 0 && v41 <= 8)
      {
        v72 &= 2u;
      }

      if (v36 == 1)
      {
        v72 &= ~0x20u;
      }

      if (!v72)
      {
        v72 = 0x80000000;
      }

      v74 = v50 & 0x7FFFFFFF;
      if ((v50 & 0x7FFFFFFF) == 0)
      {
        v74 = v50;
      }

      v75 = *(a5 + 24);
      if (v75)
      {
        if ((v50 & 0x20) != 0)
        {
          v76 = 1;
        }

        else
        {
          v76 = v36;
        }

        if (v76)
        {
          v76 = 8 * (v75 / v76);
          v77 = v76 == v41;
          goto LABEL_157;
        }
      }

      else
      {
        v76 = 0;
      }

      v77 = v41 == 0;
LABEL_157:
      v78 = v77;
      v79 = v74 & 0xFFFFFFBF;
      if (v78)
      {
        v79 |= 8u;
      }

      v80 = v76 == v41 && v70 == 0;
      v81 = v79 & 0xFFFFFFAF;
      if (!v80)
      {
        v81 = v79;
      }

      if (v81)
      {
        v81 &= 0xFFFFFFBB;
      }

      if ((v81 & 8) != 0 && v41 <= 8)
      {
        v81 &= 2u;
      }

      if (v36 == 1)
      {
        v83 = v81 & 0xFFFFFFDF;
      }

      else
      {
        v83 = v81;
      }

      if (!v83)
      {
        v83 = 0x80000000;
      }

      if (v72 != v83)
      {
        goto LABEL_106;
      }

LABEL_105:
      v34 = 1.0;
      goto LABEL_106;
    }

    if (v49 == v50)
    {
      goto LABEL_105;
    }

LABEL_106:
    v58 = v121;
    if (v121 >= v122)
    {
      v60 = __p;
      v61 = v121 - __p;
      v62 = (v121 - __p) >> 3;
      v63 = v62 + 1;
      if ((v62 + 1) >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v64 = v122 - __p;
      if ((v122 - __p) >> 2 > v63)
      {
        v63 = v64 >> 2;
      }

      if (v64 >= 0x7FFFFFFFFFFFFFF8)
      {
        v65 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v65);
      }

      v66 = (8 * v62);
      *v66 = v34;
      v59 = v66 + 1;
      memcpy(0, v60, v61);
      __p = 0;
      v122 = 0;
      if (v60)
      {
        operator delete(v60);
      }

      v26 = a4;
      v23 = v111;
      v27 = v110;
    }

    else
    {
      *v121 = v34;
      v59 = v58 + 1;
    }

    v121 = v59;
    v24 = v112;
LABEL_120:
    v25 += 40;
  }

  while (v25 != v27);
  if (v20 == v118)
  {
LABEL_197:
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v99 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CodecConverterFactory.cpp";
      v124 = 1024;
      v125 = 826;
      _os_log_impl(&dword_18F5DF000, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d codec did not accept any proposed uncompressed format", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 1718449215;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v84 = __p;
  v85 = v121;
  while (1)
  {
    if (v84 == v85)
    {
      v87 = v84;
    }

    else
    {
      v86 = v84 + 1;
      v87 = v84;
      if (v84 + 1 != v85)
      {
        v22.n128_f64[0] = *v84;
        v87 = v84;
        v88 = v84 + 1;
        do
        {
          v89 = *v88++;
          v90 = v89;
          if (v22.n128_f64[0] < v89)
          {
            v22.n128_f64[0] = v90;
            v87 = v86;
          }

          v86 = v88;
        }

        while (v88 != v85);
      }
    }

    v91 = v87 - v84;
    v92 = v87 - v84;
    v93 = &v20[40 * v92];
    if ((*(*a1 + 128))(a1, v109, v93, v114, v22))
    {
      break;
    }

    v84 = __p;
    v94 = __p + v91;
    v95 = (__p + v91 + 8);
    v96 = v121 - v95;
    if (v121 != v95)
    {
      memmove(v94, v95, v121 - v95);
    }

    v85 = &v94[v96];
    v121 = &v94[v96];
    v20 = outPropertyData;
    v97 = outPropertyData + 40 * v92;
    v98 = v118 - (v97 + 40);
    if (v118 != v97 + 40)
    {
      memmove(outPropertyData + 40 * v92, v97 + 40, v118 - (v97 + 40));
    }

    v118 = &v97[v98];
    if (v20 == &v97[v98])
    {
      goto LABEL_197;
    }
  }

  v101 = *v93;
  v102 = *(v93 + 1);
  *(a5 + 32) = *(v93 + 4);
  *a5 = v101;
  *(a5 + 16) = v102;
  if (v111 == 1885564203)
  {
    *(a5 + 8) = 1885564203;
  }

  if (__p)
  {
    operator delete(__p);
  }

  PropertyInfo = 0;
  v104 = *(a5 + 28);
  v103 = *(a5 + 32);
  if (v103 < 0)
  {
    v103 = -v103;
  }

  v105 = v103 + 7;
  if ((*(a5 + 12) & 0x20) != 0)
  {
    v104 = 1;
  }

  v106 = v104 * (v105 >> 3);
  *(a5 + 20) = 1;
  *(a5 + 24) = v106;
  *(a5 + 16) = v106;
LABEL_211:
  if (outPropertyData)
  {
    operator delete(outPropertyData);
  }

  v107 = *MEMORY[0x1E69E9840];
  return PropertyInfo;
}

void sub_18F64A43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    v30 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v31 = *v30;
    }

    __cxa_end_catch();
    JUMPOUT(0x18F64A3C0);
  }

  _Unwind_Resume(exception_object);
}

__n128 swix::coder<AudioStreamBasicDescription>::decode(uint64_t a1, xpc_object_t xdict, char *key)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, key, &length);
  if (length != 40 || data == 0)
  {
    *(a1 + 32) = 0;
    result.n128_u64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    result = *data;
    v7 = data[1];
    *a1 = *data;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(data + 4);
  }

  return result;
}

const void *swix::coder<std::span<AudioClassDescription const,18446744073709551615ul>>::decode(void *a1)
{
  length = 0;
  result = xpc_dictionary_get_data(a1, "classDescriptions", &length);
  if (result)
  {
    v2 = length == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  v3 = 12 * (length / 0xC);
  if (v3 != length)
  {
    std::to_string(&v13, v3);
    v4 = std::string::insert(&v13, 0, "invalid array size (", 0x14uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v14, "/", 1uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v12, length);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v12;
    }

    else
    {
      v8 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    swix::decode_message::throw_error(&v16);
  }

  return result;
}

void sub_18F64A68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t swix::xpcobj_coder<applesauce::xpc::object>::decode(void *a1, xpc_object_t xdict, char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  *a1 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a1 = result;
  return result;
}

void std::vector<CA::StreamDescription>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 40 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x666666666666666)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x333333333333333)
        {
          v10 = 0x666666666666666;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v12 = 40 * ((40 * v6 - 40) / 0x28) + 40;
    bzero(a1[1], v12);
    v11 = v4 + v12;
  }

  a1[1] = v11;
}

void std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL acv2::CodecConverterFactory::CodecCanInitializeWith(acv2::CodecConverterFactory *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, CA::StreamDescription *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  Property = AudioCodecGetProperty(this, 0x696E6974u, &ioPropertyDataSize, &outPropertyData);
  if (Property)
  {
    v10 = Property;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "CodecConverterFactory.cpp";
      v16 = 1024;
      v17 = 543;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyIsInitialized failed", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (outPropertyData)
  {
    AudioCodecUninitialize(this);
  }

  result = AudioCodecInitialize(this, a2, a3, 0, 0) == 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__optional_destruct_base<ACCodecOutputBuffer,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      *(a1 + 152) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 120);
    if (v3)
    {
      *(a1 + 128) = v3;
      operator delete(v3);
    }

    ExtendedAudioBufferList_Destroy(*(a1 + 112));
    ACAudioSpan::~ACAudioSpan((a1 + 8));
    *(a1 + 208) = 0;
  }
}

void ACCodecOutputBuffer::ACCodecOutputBuffer(ACCodecOutputBuffer *this, const AudioStreamBasicDescription *a2, unsigned int a3, int a4, int a5, int a6)
{
  *this = a3;
  *(this + 1) = a4;
  ACAudioSpan::ACAudioSpan((this + 8), a2);
  CA::AudioBuffersBase::AudioBuffersBase((this + 112), a2, a4);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (a3 && a5)
  {
    std::vector<AudioStreamPacketDescription>::__vallocate[abi:ne200100](this + 120, a3);
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  if (a3 && a6)
  {
    std::allocator<AudioStreamPacketDescription>::allocate_at_least[abi:ne200100](a3);
  }

  if ((a2->mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = 1;
  }

  else
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  CA::AudioBuffersDeprecated::Prepare(*(this + 14), mChannelsPerFrame, 0);
}

void sub_18F64AD0C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[19] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[16] = v6;
    operator delete(v6);
  }

  CA::AudioBuffersDeprecated::~AudioBuffersDeprecated((v1 + 14));
  ACAudioSpan::~ACAudioSpan((v1 + 1));
  _Unwind_Resume(a1);
}

unsigned int *CA::AudioBuffersDeprecated::Prepare(CA::AudioBuffersDeprecated *this, int a2, unsigned int a3)
{
  result = ExtendedAudioBufferList_Prepare(this, a2, a3);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_Prepare failed");
  }

  return result;
}

uint64_t pooledRenderer::AudioConverterOOP::getProperty(pooledRenderer::AudioConverterOOP *this, unsigned int a2, unsigned int *a3, const void **a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v48 = a4;
  if ((*(this + 12) & 1) != 0 || (*(this + 13) & 1) == 0)
  {
    v41[0] = 0;
    v47 = 0;
  }

  else
  {
    v36 = 2754;
    v37 = a2;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    kdebug_trace();
    v41[0] = 1;
    v42 = 2754;
    v43 = a2;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v35[0] = 0;
    v47 = 1;
    AT::ScopedTrace::~ScopedTrace(v35);
  }

  if (!a4)
  {
    v26 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v26 + 88, 16);
    if (message)
    {
      v28 = message;
      v29 = _os_log_pack_fill();
      *v29 = 67109120;
      v29[1] = a2;
      v30 = *(gAudioConverterDeferredLog + 16);
      v31 = v28;
LABEL_42:
      caulk::concurrent::messenger::enqueue(v30, v31);
    }

LABEL_43:
    SpeechCodecBundleData = 4294967246;
    goto LABEL_34;
  }

  if (!a3)
  {
    v32 = _os_log_pack_size();
    v33 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v32 + 88, 16);
    if (v33)
    {
      v34 = v33;
      *_os_log_pack_fill() = 0;
      v30 = *(gAudioConverterDeferredLog + 16);
      v31 = v34;
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (a2 == 1885955104)
  {
    if (PlatformUtilities::IsInternalBuild(this))
    {
      if (*a3 >= 4)
      {
        *a3 = 4;
        v8 = *(*(this + 11) + 16);
        v9 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v8, 1);
        SpeechCodecBundleData = v9;
        if ((v11 & 1) != 0 && v9)
        {
          v12 = v9;
          Server = AudioConverterXPC_Client::queryServer(v9);
          SpeechCodecBundleData = 0;
          if (Server <= 0x100000000)
          {
            v14 = 0;
          }

          else
          {
            v14 = Server;
          }

          v15 = 1;
          if (!v8)
          {
LABEL_32:
            if (v15)
            {
              SpeechCodecBundleData = 0;
              *a4 = v14;
            }

            goto LABEL_34;
          }
        }

        else
        {
          v15 = 0;
          v12 = 0;
          v14 = 0;
          if (!v8)
          {
            goto LABEL_32;
          }
        }

        ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v8, v12);
        goto LABEL_32;
      }

LABEL_29:
      SpeechCodecBundleData = 561211770;
      goto LABEL_34;
    }

    goto LABEL_26;
  }

  v16 = CheckProperty(a2, a4, a3);
  if (!v16)
  {
    v21 = *a3;
    if (a2 == 1970103906)
    {
      if (v21 == 4)
      {
        SpeechCodecBundleData = 0;
        *a4 = *(*(this + 11) + 208) != 0;
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    if (a2 == 1651401828)
    {
      v22 = *(this + 11);
      if (*(v22 + 208))
      {
        if (v21 != 336)
        {
          goto LABEL_29;
        }

        v23 = atomic_load((v22 + 416));
        if ((v23 & 1) == 0)
        {
          SpeechCodecBundleData = 560164718;
          goto LABEL_34;
        }

        SpeechCodecBundleData = AudioConverterPropertyClient::getSpeechCodecBundleData(*(*(this + 11) + 208), v48);
        if (SpeechCodecBundleData != 1768846202)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_26:
    PropertyMarshaller::PropertyMarshaller(v35, 0);
  }

  SpeechCodecBundleData = v16;
  v17 = _os_log_pack_size();
  v18 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v17 + 88, 16);
  if (v18)
  {
    v19 = v18;
    v20 = _os_log_pack_fill();
    *v20 = 134218496;
    *(v20 + 4) = this;
    *(v20 + 12) = 1024;
    *(v20 + 14) = a2;
    *(v20 + 18) = 1024;
    *(v20 + 20) = SpeechCodecBundleData;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v19);
  }

LABEL_34:
  if (v47 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v41);
  }

  v24 = *MEMORY[0x1E69E9840];
  return SpeechCodecBundleData;
}

void sub_18F64B4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v27)
  {
    xpc_release(*(v28 - 112));
  }

  PropertyMarshaller::~PropertyMarshaller(&a16);
  if (a27 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&a22);
  }

  _Unwind_Resume(a1);
}

BOOL TMarshaller<AudioConverterPrimeInfo>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 8;
}

uint64_t TMarshaller<AudioConverterPrimeInfo>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 8) == 8)
  {
    Marshaller::CheckDest(a1, a3, a4, 8uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t acv2::CodecConverter::SetProperty(acv2::CodecConverter *this, signed int a2, UInt32 a3, void *a4)
{
  if (HIBYTE(a2) != 94 || !acv2::CodecConverter::CodecSupportsProperty(*(this + 21), a2))
  {
    v10 = 0;
    if (a2 > 1668310370)
    {
      if (a2 <= 1886546284)
      {
        if (a2 == 1668310371)
        {
          goto LABEL_31;
        }

        if (a2 != 1684891491)
        {
          if (a2 != 1886353266)
          {
            goto LABEL_84;
          }

LABEL_31:
          if (acv2::CodecConverter::CodecSupportsProperty(*(this + 21), a2))
          {
            *(this + 176) = 0;
            return AudioCodecSetProperty(*(this + 21), a2, a3, a4);
          }

          return 1886547824;
        }

        if (*(this + 205) == 1)
        {
          acv2::CodecConverter::CheckUninitialize(this);
          v13 = *(this + 72);
          __s1[0] = *(this + 56);
          __s1[1] = v13;
          v35 = *(this + 11);
          v14 = *(this + 91);
          v10 = acv2::CodecConverter::StoreMagicCookie(this, a4, a3);
          if (v10)
          {
            return v10;
          }

          v33 = *(this + 11);
          v15 = *(this + 72);
          __s2[0] = *(this + 56);
          __s2[1] = v15;
          HIDWORD(v35) = 0;
          HIDWORD(v33) = 0;
          if (memcmp(__s1, __s2, 0x28uLL) || *(this + 91) != v14)
          {
            v25 = *(this + 20);
            acv2::AudioConverterChain::GetChainBuildSettings(cf);
          }

          if (*(this + 840) == 1)
          {
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
          }

          return 0;
        }

        return 1886547824;
      }

      if (a2 == 1886546285)
      {
        if (a3 != 8)
        {
          return 4294967246;
        }

        if (*(this + 205) == 1 && acv2::CodecConverter::CodecSupportsProperty(*(this + 21), 0x7072696Du))
        {
          v23 = *a4;
          if ((*(this + 388) & 1) == 0)
          {
            *(this + 388) = 1;
          }

          *(this + 380) = v23;
          *(this + 98) = v23;
          v24 = *(a4 + 1);
          LODWORD(cf[0]) = 0;
          HIDWORD(cf[0]) = v24;
          acv2::CodecConverter::CheckUninitialize(this);
          *(this + 176) = 0;
          AudioCodecSetProperty(*(this + 21), 0x7072696Du, 8u, cf);
          if (*(this + 840) == 1)
          {
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
          }
        }

        return 0;
      }

      if (a2 != 1935893603)
      {
        if (a2 != 1919116144)
        {
          goto LABEL_84;
        }

        if (a3 == 4)
        {
          v12 = *a4;
          *(this + 840) = *a4 != 0;
          if (v12)
          {
            acv2::CodecConverter::CheckUninitialize(this);
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
          }

          return 0;
        }

        return 561211770;
      }

      if (!acv2::CodecConverter::CodecSupportsProperty(*(this + 21), 0x5E736463u))
      {
        v10 = 0;
        goto LABEL_84;
      }

      Value = CFDictionaryGetValue(*a4, @"media kind");
      if (Value)
      {
        v17 = Value;
      }

      else
      {
        v17 = &stru_1F0340B48;
      }

      CFRetain(v17);
      cf[0] = v17;
      v18 = CFGetTypeID(v17);
      if (v18 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v19 = *(this + 27);
      if (v19)
      {
        CFRetain(*(this + 27));
        v20 = cf[0];
        if (!cf[0])
        {
          v21 = kCFCompareGreaterThan;
          goto LABEL_77;
        }
      }

      else
      {
        v20 = cf[0];
        if (!cf[0])
        {
          goto LABEL_80;
        }
      }

      CFRetain(v20);
      if (v19)
      {
        v21 = CFStringCompare(v19, v20, 0);
      }

      else
      {
        v21 = kCFCompareLessThan;
      }

      CFRelease(v20);
      if (!v19)
      {
LABEL_78:
        if (v21)
        {
          CFRetain(v17);
          v26 = applesauce::CF::StringRef::StringRef(__s1, v17);
          v27 = *(this + 27);
          *(this + 27) = *&__s1[0];
          *&__s1[0] = v27;
          applesauce::CF::StringRef::~StringRef(v26);
          v28 = 0;
          v10 = 0;
          goto LABEL_81;
        }

LABEL_80:
        *(this + 176) = 0;
        v10 = AudioCodecSetProperty(*(this + 21), 0x5E736463u, a3, a4);
        v28 = 1;
LABEL_81:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v28)
        {
          return v10;
        }

LABEL_84:
        if (acv2::CodecConverter::CodecSupportsProperty(*(this + 21), a2))
        {
          acv2::CodecConverter::CheckUninitialize(this);
          *(this + 176) = 0;
          v11 = AudioCodecSetProperty(*(this + 21), a2, a3, a4);
          if (!v11)
          {
            if (*(this + 840) == 1)
            {
              acv2::CodecConverter::CheckInitialize(this, 0, 0);
            }

            return v10;
          }
        }

        else
        {
          v10 = 1886547824;
          v29 = *(this + 90);
          if (!v29)
          {
            return v10;
          }

          LOBYTE(__s1[0]) = 0;
          LODWORD(cf[0]) = 0;
          if (AudioUnitGetPropertyInfo(*(v29 + 8), a2, 0, 0, cf, __s1))
          {
            return v10;
          }

          return AudioUnitSetProperty(*(*(this + 90) + 8), a2, 0, 0, a4, a3);
        }

        return v11;
      }

LABEL_77:
      CFRelease(v19);
      goto LABEL_78;
    }

    if (a2 <= 1651663219)
    {
      if (a2 == 1633842276)
      {
        goto LABEL_31;
      }

      if (a2 != 1634366322)
      {
        goto LABEL_84;
      }

      if (*(this + 204) != 1)
      {
        return 1886547824;
      }

      if (*(this + 208) != 1)
      {
        return 1869627199;
      }

      if (a3 == 8)
      {
        acv2::CodecConverter::CheckUninitialize(this);
        cf[0] = *a4;
        *(this + 176) = 0;
        v11 = AudioCodecSetProperty(*(this + 21), 0x636F7372u, 8u, cf);
        if (v11)
        {
          return v11;
        }

        acv2::CodecConverter::CheckInitialize(this, 0, 0);
        LODWORD(__s1[0]) = 8;
LABEL_56:
        if (!AudioCodecGetProperty(*(this + 21), 0x636F7372u, __s1, cf))
        {
          v22 = cf[0];
          *(this + 7) = cf[0];
          *(*(this + 20) + 40) = v22;
        }

        return 0;
      }
    }

    else
    {
      if (a2 != 1651663220)
      {
        if (a2 == 1667527029)
        {
          if (a3 == 4)
          {
            acv2::CodecConverter::CheckUninitialize(this);
            *(this + 176) = 0;
            v10 = AudioCodecSetProperty(*(this + 21), 0x73726371u, 4u, a4);
            if (*(this + 840) == 1)
            {
              acv2::CodecConverter::CheckInitialize(this, 0, 0);
            }

            return v10;
          }

          return 561211770;
        }

        if (a2 != 1668114275)
        {
          goto LABEL_84;
        }

        if (*(this + 204) != 1)
        {
          return 1886547824;
        }

        acv2::CodecConverter::CheckUninitialize(this);
        return acv2::CodecConverter::StoreMagicCookie(this, a4, a3);
      }

      if (*(this + 204) != 1)
      {
        return 1886547824;
      }

      if (a3 == 4)
      {
        acv2::CodecConverter::CheckUninitialize(this);
        *(this + 176) = 0;
        v11 = AudioCodecSetProperty(*(this + 21), 0x62726174u, 4u, a4);
        if (v11)
        {
          return v11;
        }

        if (*(this + 840) == 1)
        {
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
        }

        cf[0] = 0;
        LODWORD(__s1[0]) = 8;
        goto LABEL_56;
      }
    }

    return 561211770;
  }

  *(this + 176) = 0;
  v8 = *(this + 21);

  return AudioCodecSetProperty(v8, a2, a3, a4);
}

void sub_18F64BDD4(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = *v3;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F64BD74);
}

uint64_t acv2::CodecConverter::CheckUninitialize(acv2::CodecConverter **this)
{
  v10 = *MEMORY[0x1E69E9840];
  result = acv2::CodecConverter::IsInitialized(this[21]);
  if (result)
  {
    *(this + 176) = 0;
    result = AudioCodecUninitialize(this[21]);
    if (result)
    {
      v4 = result;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "CodecConverter.cpp";
        v8 = 1024;
        v9 = 1701;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioCodecUninitialize failed", &v6, 0x12u);
      }

      exception = __cxa_allocate_exception(4uLL);
      *exception = v4;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void TPODMarshaller<AudioConverterPrimeInfo>::~TPODMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

void AUProcessingBlock_DSPGraph::~AUProcessingBlock_DSPGraph(DSPGraph::Profiler **this)
{
  *this = &unk_1F03345B8;
  std::unique_ptr<DSPGraph::Profiler>::reset[abi:ne200100](this + 8, 0);
  v2 = this[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  AUProcessingBlockBase::~AUProcessingBlockBase(this);
}

{
  AUProcessingBlock_DSPGraph::~AUProcessingBlock_DSPGraph(this);

  JUMPOUT(0x193ADF220);
}

void AUProcessingBlockBase::~AUProcessingBlockBase(AUProcessingBlockBase *this)
{
  *this = &unk_1F032E690;
  AUPBUnregister(*(this + 2));
  AUProcessingBlockBase::SetName(this, 0);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

uint64_t AUPBUnregister(uint64_t a1)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v2 = +[AUPBServer sharedInstance];

  return [(AUPBServer *)v2 unregisterBlock:a1];
}

uint64_t *std::__tree<std::__value_type<unsigned int,RemoteAUHandleInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,RemoteAUHandleInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,RemoteAUHandleInfo>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

void AudioMetadataTimeline_AP::AudioMetadataTimeline_AP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *a1;
  }

  *(a1 + 1) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 2) = 0u;
  if (v2)
  {
    operator new();
  }

  __assert_rtn("AudioMetadataTimeline_AP", "AudioMetadataTimeline.cpp", 754, "mMemoryPool");
}

void sub_18F64C854(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::NonFiniteProtectionBox::uninitialize(DSPGraph::NonFiniteProtectionBox *this)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(this + 204))
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10239);
    }

    v2 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v28 = this + 32;
      if (*(this + 55) < 0)
      {
        v28 = *v28;
      }

      v29 = *(this + 204);
      *buf = 136315394;
      v35 = v28;
      v36 = 1024;
      *v37 = v29;
      _os_log_error_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_ERROR, "%s: Detected total %u audio buffers with non-finite (<NaN> or <inf>) sample during audio start/stop cycle", buf, 0x12u);
    }

    *(this + 204) = 0;
  }

  if (*(this + 205))
  {
    v3 = atomic_load(this + 780);
    if (v3)
    {
      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10239);
      }

      v4 = DSPGraph::getLog(void)::gLog;
      if (!os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v5 = this + 32;
      if (*(this + 55) < 0)
      {
        v5 = *v5;
      }

      v6 = *(this + 205);
      v7 = COERCE_FLOAT(atomic_load(this + 193));
      v8 = v7;
      v9 = COERCE_FLOAT(atomic_load(this + 194));
      *buf = 136315906;
      v35 = v5;
      v36 = 1024;
      *v37 = v6;
      *&v37[4] = 2048;
      *&v37[6] = v8;
      *&v37[14] = 2048;
      *&v37[16] = v9;
      v10 = "%s: Detected total %u audio buffers with peak over limit (%.0f dB) during audio start/stop cycle. On detection audio silenced for %.2f seconds.";
      v11 = v4;
      v12 = 38;
    }

    else
    {
      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10239);
      }

      v13 = DSPGraph::getLog(void)::gLog;
      if (!os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v31 = this + 32;
      if (*(this + 55) < 0)
      {
        v31 = *v31;
      }

      v32 = *(this + 205);
      v33 = COERCE_FLOAT(atomic_load(this + 193));
      *buf = 136315650;
      v35 = v31;
      v36 = 1024;
      *v37 = v32;
      *&v37[4] = 2048;
      *&v37[6] = v33;
      v10 = "%s: Detected total %u audio buffers with peak over limit (%.0f dB) during audio start/stop cycle. On detection audio hard clipped.";
      v11 = v13;
      v12 = 28;
    }

    _os_log_error_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_17:
    *(this + 205) = 0;
  }

  v14 = *(this + 99);
  v15 = *(this + 100);
  if (v14 != v15)
  {
    v16 = v14 + 1;
    do
    {
      v17 = *(v16 - 2);
      *__str = 0u;
      v41 = 0u;
      v18 = localtime(v16);
      if (!strftime(__str, 0x20uLL, "%Y-%m-%d %H:%M:%S", v18))
      {
        snprintf(__str, 0x20uLL, "%ld", *v16);
      }

      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10239);
      }

      v19 = DSPGraph::getLog(void)::gLog;
      if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v21 = this + 32;
        if (*(this + 55) < 0)
        {
          v21 = *(this + 4);
        }

        v22 = v16[1];
        v23 = "peak over limit";
        if (!v17)
        {
          v23 = "non-finite sample";
        }

        v24 = atomic_load(this + 207);
        *buf = 136316162;
        v35 = __str;
        v36 = 2048;
        *v37 = v22;
        *&v37[8] = 2080;
        *&v37[10] = v21;
        *&v37[18] = 2080;
        *&v37[20] = v23;
        v38 = 1024;
        v39 = v24;
        _os_log_error_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, "%s.%09ld :: %s: Detected %s in %u audio buffers", buf, 0x30u);
      }

      v20 = v16 + 2;
      v16 += 3;
    }

    while (v20 != v15);
    v14 = *(this + 99);
  }

  *(this + 100) = v14;
  v25 = *(this + 824);
  *(this + 824) = 0;
  if (v25)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10239);
    }

    v26 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v30 = this + 32;
      if (*(this + 55) < 0)
      {
        v30 = *v30;
      }

      *buf = 136315138;
      v35 = v30;
      _os_log_error_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_ERROR, "%s: NonFiniteProtectionBox event logging capacity exceeded (some descriptions dropped)", buf, 0xCu);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

OpaqueExtAudioFile *acv2::AudioConverterBase::writeCapture(acv2::AudioConverterBase *this, AudioConverterCapturer *a2, const ACAudioSpan *a3)
{
  v4 = *(a2 + 2);
  mNumberBuffers = v4->mNumberBuffers;
  if (mNumberBuffers)
  {
    v6 = *(a2 + 2);
    v7 = (mNumberBuffers + 3) & 0x1FFFFFFFCLL;
    v8 = vdupq_n_s64(mNumberBuffers - 1);
    v9 = xmmword_18F9016B0;
    v10 = xmmword_18F9016C0;
    v11 = &v4[1].mBuffers[0].mData + 1;
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v13, *v8.i8).u8[0])
      {
        *(v11 - 8) = v6;
      }

      if (vuzp1_s16(v13, *&v8).i8[2])
      {
        *(v11 - 4) = v6;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v11 = v6;
        v11[4] = v6;
      }

      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v11 += 16;
      v7 -= 4;
    }

    while (v7);
  }

  return AudioConverterCapturer::write(this, v4, *(a2 + 4), *a2);
}

void DSPGraph::DeadEndBox::~DeadEndBox(DSPGraph::DeadEndBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::TimeFreqBox::~TimeFreqBox(DSPGraph::TimeFreqBox *this)
{
  *this = &unk_1F0330718;
  v2 = (this + 776);
  std::vector<std::unique_ptr<void,int (*)(void *)>>::__destroy_vector::operator()[abi:ne200100](&v2);
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0330718;
  v2 = (this + 776);
  std::vector<std::unique_ptr<void,int (*)(void *)>>::__destroy_vector::operator()[abi:ne200100](&v2);

  DSPGraph::Box::~Box(this);
}

{
  *this = &unk_1F0330718;
  v2 = (this + 776);
  std::vector<std::unique_ptr<void,int (*)(void *)>>::__destroy_vector::operator()[abi:ne200100](&v2);

  DSPGraph::Box::~Box(this);
}

void std::vector<std::unique_ptr<void,int (*)(void *)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<void,int (*)(void *)>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void DSPGraph::SumBox::~SumBox(DSPGraph::SumBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::GainBox::~GainBox(DSPGraph::GainBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::SingleRateLPCMConverterBox::~SingleRateLPCMConverterBox(DSPGraph::SingleRateLPCMConverterBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::SRCBox::~SRCBox(DSPGraph::SRCBox *this)
{
  *this = &unk_1F0335788;
  DSPGraph::SimpleABL::free((this + 912));
  v2 = *(this + 111);
  *(this + 111) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0335788;
  DSPGraph::SimpleABL::free((this + 912));
  v2 = *(this + 111);
  *(this + 111) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));

  DSPGraph::Box::~Box(this);
}

DSPGraph::Profiler *std::unique_ptr<DSPGraph::Profiler>::reset[abi:ne200100](DSPGraph::Profiler **a1, DSPGraph::Profiler *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    DSPGraph::Profiler::~Profiler(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::vector<DSPGraph::Graph::GraphBridge>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:ne200100]<DSPGraph::Graph::GraphBridge,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void DSPGraph::NonFiniteProtectionBox::~NonFiniteProtectionBox(DSPGraph::NonFiniteProtectionBox *this)
{
  *this = &unk_1F03360E8;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03360E8;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  DSPGraph::Box::~Box(this);
}

void DSPGraph::Wire::~Wire(DSPGraph::Wire *this)
{
  *this = &unk_1F033F678;

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033F678;
}

uint64_t *std::unique_ptr<DSPGraph::Graph::profiler_t>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    boost::circular_buffer<double,std::allocator<double>>::destroy(v2);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,DSPGraph::Graph::profiler_t>,0>((v2 + 2));
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,DSPGraph::AnalyzerBuilder::Info>,0>((v2 + 2));
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

void std::vector<std::unique_ptr<DSPGraph::Subset>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<DSPGraph::Subset>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

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

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::~lf_read_synchronized_write(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a1 + 16);
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(a1 + 9) == 1)
  {
    v3 = (a1 + 40);
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

void std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 48;
        std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100]((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[9];
    if (v4)
    {
      v3[10] = v4;
      operator delete(v4);
    }

    if (*(v3 + 56) == 1)
    {
      v5 = v3[4];
      if (v5)
      {
        v3[5] = v5;
        operator delete(v5);
      }
    }

    operator delete(v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](uint64_t a1)
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

void DSPGraph::Box::~Box(DSPGraph::Box *this)
{
  *this = &unk_1F0338050;
  std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Box>>::reset[abi:ne200100](this + 92, 0);
  std::mutex::~mutex((this + 672));
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](this + 640);
  caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(this + 336);
  caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(this + 560);
  v3 = (this + 312);
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::mutex::~mutex((this + 248));
  v3 = (this + 224);
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 200);
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 176);
  std::vector<DSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = (this + 88);
  std::vector<DSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 64);
  std::vector<DSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::~lf_read_synchronized_write(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a1 + 16);
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(a1 + 9) == 1)
  {
    v3 = (a1 + 40);
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

uint64_t AUProcessingBlockBase::SetName(AUProcessingBlockBase *this, __CFString *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = &stru_1F0340B48;
  }

  *(this + 1) = v5;
  CFRetain(v5);
  v7 = 1851878757;
  return AUPBPropertiesChanged(*(this + 2), 1, &v7, 0, 0);
}

uint64_t std::__hash_table<std::unique_ptr<DSPGraph::Box>,std::hash<std::unique_ptr<DSPGraph::Box>>,std::equal_to<std::unique_ptr<DSPGraph::Box>>,std::allocator<std::unique_ptr<DSPGraph::Box>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[2];
      v2[2] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 48;
        std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100]((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unint64_t caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(unint64_t a1)
{
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  for (i = atomic_load((a1 + 24)); ; i = atomic_load((v3 + 24)))
  {
    v3 = i & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 184 == (i & 0xFFFFFFFFFFFFFFFCLL))
    {
      break;
    }

    if (*(v3 + 14) != 2)
    {
      v4 = atomic_load((v3 + 24));
      if ((v4 & 1) == 0)
      {
        caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(a1, *(v3 + 8));
      }
    }
  }

  return caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 224, i);
}

unint64_t caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal@<X0>(unint64_t result@<X0>, unint64_t a2@<X8>)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  for (i = _X2; ; i = _X2)
  {
    v11 = (_X3 - 1);
    a2 = a2 & 0xFFFFFFFF00000000 | v11;
    _X6 = _X3 <= 1 ? 0 : i;
    _X3 = _X3 | (v2 << 32);
    __asm { CASPAL          X2, X3, X6, X7, [X0] }

    if (_X2 == i)
    {
      break;
    }

    v2 = HIDWORD(_X3);
  }

  if (!v11)
  {
    if (i)
    {
      return caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(result, i);
    }
  }

  return result;
}

unint64_t caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(unint64_t a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  if (_X2)
  {
    caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(a1, _X2);
  }

  (*(*(a1 + 32) + 24))(a1 + 40);
  v9 = *(a1 + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

void DSPGraph::AUBox::~AUBox(DSPGraph::AUBox *this)
{
  *this = &unk_1F033F3E8;
  v2 = *(this + 100);
  if (v2)
  {
    *(this + 101) = v2;
    operator delete(v2);
  }

  v3 = *(this + 97);
  if (v3)
  {
    *(this + 98) = v3;
    operator delete(v3);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033F3E8;
  v2 = *(this + 100);
  if (v2)
  {
    *(this + 101) = v2;
    operator delete(v2);
  }

  v3 = *(this + 97);
  if (v3)
  {
    *(this + 98) = v3;
    operator delete(v3);
  }

  DSPGraph::Box::~Box(this);
}

void std::vector<DSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 64;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<DSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void DSPGraph::ChannelJoinerBox::~ChannelJoinerBox(DSPGraph::ChannelJoinerBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::ChannelSplitterBox::~ChannelSplitterBox(DSPGraph::ChannelSplitterBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::GraphInput::~GraphInput(void **this)
{
  *this = &unk_1F033EB78;
  if (*(this + 911) < 0)
  {
    operator delete(this[111]);
  }

  v2 = this[110];
  this[110] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 101));
  DSPGraph::SimpleABL::free((this + 101));
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033EB78;
  if (*(this + 911) < 0)
  {
    operator delete(this[111]);
  }

  v2 = this[110];
  this[110] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 101));
  DSPGraph::SimpleABL::free((this + 101));

  DSPGraph::Box::~Box(this);
}

void DSPGraph::GraphOutput::~GraphOutput(DSPGraph::GraphOutput *this)
{
  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033EE48;
  DSPGraph::SimpleABL::free((this + 808));
  DSPGraph::SimpleABL::free((this + 808));

  DSPGraph::Box::~Box(this);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,0>((v2 + 2));
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,0>(uint64_t a1)
{
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t DSPGraph::InputPort::upstreamLatencyInTicks(DSPGraph::InputPort *this)
{
  v1 = *(*((*(*this + 40))(this) + 8) + 8);
  v2 = (*(*v1 + 72))(v1);
  return DSPGraph::Box::upstreamLatencyInTicks(v1) + v2;
}

uint64_t DSPGraph::AUBox::selfLatencyInTicks(DSPGraph::AUBox *this)
{
  v8 = 0.0;
  v7 = 8;
  v2 = (*(*this + 304))(this, 12, 0, 0, &v7, &v8);
  v3 = v8;
  if (v2)
  {
    v3 = 0.0;
  }

  v4 = llround(v3 * *(*(this + 1) + 696));
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 >= 0)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t DSPGraph::GraphInput::ringBufferSampleRate(DSPGraph::GraphInput *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "out");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return **((*(*v2 + 40))(v2) + 120);
}

void sub_18F64E280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::ChannelJoinerBox::initialize(DSPGraph::ChannelJoinerBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 11);
  if (*(this + 12) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v22, "out");
    v19 = (this + 32);
    if (*(this + 55) < 0)
    {
      v19 = *v19;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v18, v19, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v2 + 40))(v2);
  v4 = *(result + 120);
  v5 = v4[3];
  if ((v5 & 0x20) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v22, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v21, "ChannelJoinerBox output format must be de-interleaved");
    DSPGraph::ThrowException(1718449215, &v23, 3369, &v22, &v21);
  }

  v6 = v4[2];
  if (v6 == 1819304813)
  {
    if ((v5 & 1) == 0 || v4[8] != 32)
    {
      goto LABEL_38;
    }
  }

  else if (v6 != 1718773105 || v4[8] != 64)
  {
LABEL_38:
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v22, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v21, "ChannelJoinerBox output format must be 32-bit floating-point PCM or 'freq'");
    DSPGraph::ThrowException(1718449215, &v23, 3372, &v22, &v21);
  }

  v7 = *(this + 8);
  v8 = *(this + 9) - v7;
  if ((v8 & 0x1FFFFFFFE0) != 0)
  {
    v9 = 0;
    v10 = 0;
    LODWORD(v11) = 0;
    v12 = v8 >> 5;
    while (1)
    {
      if (v12 <= v10)
      {
        std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v22, "in");
        v17 = (this + 32);
        if (*(this + 55) < 0)
        {
          v17 = *v17;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v16, v17, (*(this + 9) - *(this + 8)) >> 5, v10);
      }

      result = (*(*(v7 + v9) + 40))();
      v13 = *(result + 120);
      v14 = v13[3];
      if ((v14 & 0x20) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v22, "initialize");
        std::string::basic_string[abi:ne200100]<0>(&v21, "ChannelJoinerBox input format must be de-interleaved");
        DSPGraph::ThrowException(1718449215, &v23, 3380, &v22, &v21);
      }

      v15 = v13[2];
      if (v15 == 1819304813)
      {
        if ((v14 & 1) == 0 || v13[8] != 32)
        {
          goto LABEL_36;
        }

        if (v4[2] == 1718773105 && v4[8] == 64)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v15 != 1718773105 || v13[8] != 64)
        {
LABEL_36:
          std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v22, "initialize");
          std::string::basic_string[abi:ne200100]<0>(&v21, "ChannelJoinerBox input format must be 32-bit floating-point PCM or 'freq'");
          DSPGraph::ThrowException(1718449215, &v23, 3383, &v22, &v21);
        }

        if (v4[2] != 1718773105 || v4[8] != 64)
        {
LABEL_35:
          std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v22, "initialize");
          std::string::basic_string[abi:ne200100]<0>(&v21, "ChannelJoinerBox input and output formats must be compatible");
          DSPGraph::ThrowException(1718449215, &v23, 3387, &v22, &v21);
        }
      }

      v11 = (v13[7] + v11);
      ++v10;
      v7 = *(this + 8);
      v12 = (*(this + 9) - v7) >> 5;
      v9 += 32;
      if (v10 >= v12)
      {
        goto LABEL_26;
      }
    }
  }

  v11 = 0;
LABEL_26:
  if (v4[7] != v11)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v22, "initialize");
    DSPGraph::strprintf("ChannelJoinerBox channel mismatch: can't join %u input channels into %u output channels", v20, v11, v4[7]);
  }

  return result;
}

void sub_18F64E758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::initializePropertyTaps(DSPGraph::Box *this)
{
  v1 = *(this + 22);
  v2 = *(this + 23);
  while (v1 != v2)
  {
    DSPGraph::PropertyTap::initialize(v1);
    v1 = (v1 + 64);
  }
}

void DSPGraph::BufferColorist::consumeInputs(DSPGraph::BufferColorist *this, DSPGraph::Box *a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 9);
  if (v2 != v3)
  {
    v5 = *(a2 + 8);
    do
    {
      v6 = (*(*v5 + 40))(v5);
      if (!v6)
      {
        std::string::basic_string[abi:ne200100]<0>(&v34, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
        std::string::basic_string[abi:ne200100]<0>(v33, "consumeInputs");
        v29 = (a2 + 32);
        if (*(a2 + 55) < 0)
        {
          v29 = *v29;
        }

        v30 = (*(*a2 + 16))(a2);
        DSPGraph::strprintf("box %s %s input port is not connected.", v31, v29, v30);
      }

      v7 = *(v6 + 56);
      v8 = *(v7 + 104) - 1;
      *(v7 + 104) = v8;
      if (!v8)
      {
        if (*(v7 + 108))
        {
          v9 = 48;
        }

        else
        {
          v9 = 8;
        }

        v33[0] = *(v7 + 96);
        v10 = v33[0];
        if (!std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>((this + v9), v33[0]))
        {
          v34 = v33;
          v11 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + v9), v10);
          v13 = v11 + 3;
          v12 = v11[3];
          if (v12)
          {
            v11[4] = v12;
            operator delete(v12);
          }

          *v13 = 0;
          v13[1] = 0;
          v13[2] = 0;
          v10 = v33[0];
        }

        v34 = v33;
        v14 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + v9), v10);
        v15 = v14;
        v17 = v14[4];
        v16 = v14[5];
        if (v17 >= v16)
        {
          v19 = v14[3];
          v20 = (v17 - v19) >> 3;
          if ((v20 + 1) >> 61)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v21 = v16 - v19;
          v22 = v21 >> 2;
          if (v21 >> 2 <= (v20 + 1))
          {
            v22 = v20 + 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            if (!(v23 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = (8 * v20);
          *v24 = v7;
          v18 = 8 * v20 + 8;
          v25 = v14[3];
          v26 = v14[4] - v25;
          v27 = v24 - v26;
          memcpy(v24 - v26, v25, v26);
          v28 = v15[3];
          v15[3] = v27;
          v15[4] = v18;
          v15[5] = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v17 = v7;
          v18 = (v17 + 1);
        }

        v15[4] = v18;
      }

      v5 += 32;
      v2 += 32;
    }

    while (v5 != v3);
  }
}

void sub_18F64EAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *DSPGraph::BufferColorist::allocOutputs(uint64_t *this, DSPGraph::Box *a2, DSPGraph::Box *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = this;
    v6 = a2;
    do
    {
      this = (*(*v4 + 40))(v4);
      if (!this[7])
      {
        v7 = this;
        v8 = this[15];
        v9 = *(v8 + 12);
        v10 = *(v8 + 28);
        v11 = this[5];
        v16 = v10;
        if (v11 >> 31)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::overflow_error::overflow_error[abi:ne200100](exception, "numerical cast overflow: could not retain value in conversion type");
        }

        if ((v9 & 0x20) != 0)
        {
          v12 = 1;
        }

        else
        {
          v12 = 6;
        }

        if (!std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(&v5[v12], v10) || (v17 = &v16, this = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v5[v12], v10), v13 = this[4], v13 == this[3]))
        {
          operator new();
        }

        v14 = *(v13 - 8);
        this[4] = v13 - 8;
        *(v14 + 104) = v11;
        v7[7] = v14;
      }

      v4 = (v4 + 32);
      v6 = (v6 + 32);
    }

    while (v4 != a3);
  }

  return this;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
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

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void DSPGraph::Graph::getParameterList(DSPGraph::Graph *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = this + 536; ; std::vector<unsigned int>::push_back[abi:ne200100](a2, i + 4))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }
}

void sub_18F64F258(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal()
{
  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X0] }

  _X6 = _X4;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X6, X7, [X0] }

  if (_X2 != _X4)
  {
    do
    {
      _X4 = _X2;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X4, X5, [X0] }

      v13 = _X6 ^ _X2;
      _X2 = _X6;
    }

    while (v13);
  }
}

uint64_t DSPGraph::GraphOutput::numChannels(DSPGraph::GraphOutput *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "in");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, v6, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 28);
}

void sub_18F64F3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::GraphOutput::interleaved(DSPGraph::GraphOutput *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "in");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, v6, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return (*(*((*(*v2 + 40))(v2) + 120) + 12) & 0x20) == 0;
}

void sub_18F64F4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void DSPGraph::Interpreter::~Interpreter(DSPGraph::Interpreter *this)
{
  *this = &unk_1F0331570;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  *(this + 2) = &unk_1F03315A0;
  v4 = (this + 104);
  std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(this + 64);
  std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(this + 24);
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  DSPGraph::Interpreter::~Interpreter(this);

  JUMPOUT(0x193ADF220);
}

void std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 25);
        v4 -= 6;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100]((v2 + 5));
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

void acv2::PCMInterleaver::~PCMInterleaver(acv2::PCMInterleaver *this)
{
  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

uint64_t acv2::CodecEncoderFactory::BuildCodecConverterChain(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 3);
  if (v3)
  {
    v5 = *(a3 + 80);
    outInstance = v5;
    v6 = *(a3 + 88);
    v55 = *a2;
    v56 = *(a2 + 2);
    v7 = *(a2 + 4);
    v8 = *(a2 + 5);
    v9 = *(a2 + 6);
    v10 = *(a2 + 7);
    v12 = *(a2 + 8);
    v11 = *(a2 + 9);
    v54[0] = *(a2 + 5);
    *(v54 + 12) = *(a2 + 52);
    v13 = *(a2 + 17);
    if (!(v10 | v13))
    {
      v14 = 4294967246;
      goto LABEL_85;
    }

    v17 = a2[9];
    v18 = ((v12 + 7) >> 3) * v13;
    if ((v3 & 0x20) != 0)
    {
      v18 = v9;
    }

    if (!v10)
    {
      v7 = v18;
    }

    v42 = v7;
    if (v10)
    {
      v19 = v8;
    }

    else
    {
      v19 = 1;
    }

    v40 = v11;
    v41 = v19;
    if (v10)
    {
      v20 = v9;
    }

    else
    {
      v20 = v18;
    }

    v43 = v20;
    if (v10)
    {
      v21 = v10;
    }

    else
    {
      v21 = *(a2 + 17);
    }

    v45 = 0;
    v44[0] = &v45;
    v44[1] = &outInstance;
    if (v5)
    {
      if (!v13)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }

    v14 = AudioComponentInstanceNew(*(a1 + 32), &outInstance);
    if (!v14)
    {
      v5 = outInstance;
      if (outInstance)
      {
        v45 = 1;
        v11 = v40;
        if (!v13)
        {
LABEL_23:
          outWritable[0] = 0;
          *outSize = 0;
          v13 = v21;
          if (AudioCodecGetPropertyInfo(v5, 0x636D6E63u, outSize, outWritable))
          {
LABEL_41:
            v11 = v40;
            goto LABEL_42;
          }

          CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(buf, *outSize >> 2, 0);
          if (AudioCodecGetProperty(v5, 0x636D6E63u, outSize, *buf))
          {
            v22 = *buf;
          }

          else
          {
            v22 = *buf;
            if (*outSize >= 4u)
            {
              v23 = 0;
              v13 = 0;
              v24 = 0x7FFFFFFF;
              do
              {
                v25 = *(*buf + v23);
                v26 = v25 - v21;
                if ((v25 - v21) < 0)
                {
                  v26 = v21 - v25;
                }

                if (v26 < v24)
                {
                  v24 = v26;
                  v13 = *(*buf + v23);
                }

                v23 += 4;
              }

              while ((*outSize & 0xFFFFFFFC) != v23);
LABEL_40:
              free(v22);
              goto LABEL_41;
            }
          }

          v13 = v21;
          if (!v22)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

LABEL_42:
        *buf = v55;
        *&buf[8] = v56;
        *&buf[12] = v3;
        *&buf[16] = v42;
        *&buf[20] = v41;
        *&buf[24] = v43;
        *&buf[28] = v21;
        *v53 = v12;
        *&v53[4] = v11;
        *&v53[8] = v54[0];
        *&v53[20] = *(v54 + 12);
        *&v53[36] = v13;
        *&v53[40] = v17;
        if (v21 == v13 || (*&v53[16] & 0xFFFFFEFF) == 0x6D74622B)
        {
LABEL_53:
          v30 = outInstance;
          v31 = *buf;
          v32 = *&v53[8];
          if (*buf < *&v53[8])
          {
            *buf = *&v53[8];
            v31 = *&v53[8];
          }

          outPropertyData = 0;
          ioPropertyDataSize = 4;
          if (AudioCodecGetProperty(outInstance, 0x6C6D7263u, &ioPropertyDataSize, &outPropertyData) || !outPropertyData)
          {
            goto LABEL_64;
          }

          if (v32 == 0.0 && v31 == 0.0)
          {
            if (gAudioConverterDeferredLogOnce != -1)
            {
              dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
            }

            v33 = *gAudioConverterLog;
            if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_76;
            }

            *outSize = 136315394;
            *&outSize[4] = "CodecConverterFactory.cpp";
            *&outSize[12] = 1024;
            *&outSize[14] = 938;
            v34 = "%25s:%-5d neither input nor output sampling rate specified";
LABEL_75:
            _os_log_impl(&dword_18F5DF000, v33, OS_LOG_TYPE_ERROR, v34, outSize, 0x12u);
LABEL_76:
            v14 = 1718449215;
            goto LABEL_84;
          }

          *outSize = v31;
          acv2::ChooseNearestSampleRate(v30, outSize, 1);
          if (*outSize != v31)
          {
LABEL_64:
            if (v32 == 0.0)
            {
              if (v31 == 0.0)
              {
                if (gAudioConverterDeferredLogOnce != -1)
                {
                  dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
                }

                v33 = *gAudioConverterLog;
                if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_76;
                }

                *outSize = 136315394;
                *&outSize[4] = "CodecConverterFactory.cpp";
                *&outSize[12] = 1024;
                *&outSize[14] = 959;
                v34 = "%25s:%-5d neither input nor output sampling rate specified";
                goto LABEL_75;
              }

              *outWritable = v31;
              acv2::ChooseNearestSampleRate(v30, outWritable, 0);
              v35 = *outWritable;
            }

            else
            {
              *outWritable = v32;
              acv2::ChooseNearestSampleRate(v30, outWritable, 0);
              v35 = *outWritable;
              if (vabdd_f64(*outWritable, v32) > 10.0)
              {
                if (gAudioConverterDeferredLogOnce != -1)
                {
                  dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
                }

                v33 = *gAudioConverterLog;
                if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_76;
                }

                *outSize = 136315394;
                *&outSize[4] = "CodecConverterFactory.cpp";
                *&outSize[12] = 1024;
                *&outSize[14] = 971;
                v34 = "%25s:%-5d unable to select compatible encoder sample rate";
                goto LABEL_75;
              }
            }

            *buf = v35;
            *&v53[8] = v35;
          }

          *v51 = *v53;
          *&v51[16] = *&v53[16];
          *&v51[32] = *&v53[32];
          *outSize = *buf;
          *&outSize[16] = *&buf[16];
          v14 = acv2::CodecConverterFactory::ChooseIntermediateFormat(a1, outInstance, outSize, &v53[8], buf, 1, *(a3 + 60));
          if (!v14)
          {
            *&v51[8] = *buf;
            *outSize = v55;
            *&outSize[8] = v56;
            *&outSize[12] = v3;
            *&outSize[16] = v42;
            *&outSize[20] = v41;
            *&outSize[24] = v43;
            *&outSize[28] = v21;
            *v51 = v12;
            *&v51[4] = v40;
            *&v51[40] = *v53;
            *&v51[24] = *&buf[16];
            if (*v53 >= 0)
            {
              v36 = *v53;
            }

            else
            {
              v36 = -*v53;
            }

            *&v51[40] = (v36 + 7) & 0xFFFFFFF8;
            ioPropertyDataSize = 0;
            AudioFormatProperty_FormatEmploysDependentPackets(*&v53[16], &ioPropertyDataSize);
            v37 = *(a1 + 32);
            operator new();
          }

          goto LABEL_84;
        }

        if ((v3 & 0x20) != 0)
        {
          v27 = 1;
        }

        else
        {
          v27 = v21;
          if (!v21)
          {
            v28 = (v12 + 7) >> 3;
LABEL_49:
            if ((v3 & 0x20) != 0)
            {
              v29 = 1;
            }

            else
            {
              v29 = v13;
            }

            *&buf[24] = v28 * v29;
            *&buf[28] = v13;
            *&buf[16] = v28 * v29;
            *&buf[20] = 1;
            goto LABEL_53;
          }
        }

        v28 = v43 / v27;
        goto LABEL_49;
      }

      v14 = 2003329396;
    }

LABEL_84:
    applesauce::raii::v1::detail::ScopeGuard<acv2::CodecEncoderFactory::BuildCodecConverterChain(acv2::StreamDescPair const&,acv2::ChainBuildSettings const&,acv2::AudioConverterChain &,acv2::PCMConverterFactory &)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v44);
    goto LABEL_85;
  }

  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v14 = 1718449215;
  v15 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CodecConverterFactory.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 377;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d wildcard for input LPCM format flags is not allowed", buf, 0x12u);
  }

LABEL_85:
  v38 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_18F64FFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  (*(*v31 + 8))(v31);
  applesauce::raii::v1::detail::ScopeGuard<acv2::CodecEncoderFactory::BuildCodecConverterChain(acv2::StreamDescPair const&,acv2::ChainBuildSettings const&,acv2::AudioConverterChain &,acv2::PCMConverterFactory &)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&a15);
  _Unwind_Resume(a1);
}

void DSPGraph::CalculationBox::~CalculationBox(DSPGraph::CalculationBox *this)
{
  *this = &unk_1F032CF60;
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032CF60;
  DSPGraph::Box::~Box(this);
}

void acv2::ChooseNearestSampleRate(acv2 *this, OpaqueAudioComponentInstance *a2, double *a3)
{
  outSize = 0;
  outWritable = 0;
  if (a3)
  {
    v5 = 1634300786;
  }

  else
  {
    v5 = 1634694002;
  }

  v6 = *a2;
  if (!AudioCodecGetPropertyInfo(this, v5, &outSize, &outWritable))
  {
    if (outSize >= 0x10)
    {
      operator new();
    }

    if (!AudioCodecGetProperty(this, v5, &outSize, 0))
    {
      *a2 = MEMORY[0];
    }
  }
}

void sub_18F650220(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    if (*MEMORY[0x1E69E3C08])
    {
      v2 = *(result + 16);
      return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t *AUProcessingBlock_DSPGraph::AUProcessingBlock_DSPGraph(uint64_t *a1, uint64_t *a2)
{
  v4 = (*a2 + 408);
  if (*(*a2 + 431) < 0)
  {
    v4 = *v4;
    v5 = strlen(v4);
    if (!v4)
    {
      v6 = 0;
      cf = 0;
      goto LABEL_5;
    }
  }

  else
  {
    v5 = strlen((*a2 + 408));
  }

  v6 = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
  cf = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

LABEL_5:
  AUProcessingBlockBase::AUProcessingBlockBase(a1, v6);
  if (cf)
  {
    CFRelease(cf);
  }

  *a1 = &unk_1F03345B8;
  v7 = *a2;
  v8 = a2[1];
  a1[6] = *a2;
  a1[7] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = a1[6];
  }

  a1[8] = 0;
  for (i = *(v7 + 24); i; i = *i)
  {
    AUPBRegisterAU(a1[2], *(i[2] + 56));
    v10 = i[2];
    v11 = *(v10 + 312);
    v12 = *(v10 + 320);
    while (v11 != v12)
    {
      AUPBRegisterAU(a1[2], *(*v11 + 88));
      v11 += 8;
    }
  }

  AUPBPropertyChanged(a1[2], 1735554168);
  return a1;
}

void sub_18F65040C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void AUProcessingBlockBase::AUProcessingBlockBase(AUProcessingBlockBase *this, __CFString *a2)
{
  *this = &unk_1F032E690;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  AUProcessingBlockBase::SetName(this, a2);
  AUPBRegister(&gAUPBMethods, this, this + 2);
}

void sub_18F6504E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUPBRegisterAU(uint64_t a1, uint64_t a2)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v4 = +[AUPBServer sharedInstance];

  return [(AUPBServer *)v4 registerAU:a2 inBlock:a1];
}

uint64_t AUPBPropertyChanged(uint64_t a1, uint64_t a2)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  [+[AUPBServer sharedInstance](AUPBServer processingBlockRef:"processingBlockRef:propertyChanged:" propertyChanged:a1, a2];
  return 0;
}

__n128 DSPGraph::AUBox::desc@<Q0>(DSPGraph::AUBox *this@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u32[0] = *(this + 210);
  result = *(this + 824);
  *a2 = result;
  return result;
}

uint64_t *std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Graph>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::~lf_read_synchronized_write(v2 + 64);
    caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::~lf_read_synchronized_write(v2);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void DSPGraph::Interpreter::compileFile(uint64_t **a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t **a5@<X8>)
{
  v24[20] = *MEMORY[0x1E69E9840];
  __ec.__val_ = 0;
  __ec.__cat_ = std::system_category();
  memset(&v18, 0, sizeof(v18));
  v10 = (a2 - 1);
  do
  {
    v11 = v10->__r_.__value_.__s.__data_[1];
    v10 = (v10 + 1);
  }

  while (v11);
  std::string::append[abi:ne200100]<char const*,0>(&v18.__pn_, a2, v10);
  std::__fs::filesystem::__status(&v18, &__ec);
  if (buf[0] != 1 || __ec.__val_ != 0)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_8889);
    }

    v13 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, "cannot find file %s", buf, 0xCu);
    }

LABEL_22:
    *a5 = 0;
    goto LABEL_23;
  }

  std::ifstream::basic_ifstream(buf);
  v14 = v23;
  if (v23)
  {
    std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__p, *&v22[*(*buf - 24) + 24], 0);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    DSPGraph::Interpreter::compileText(p_p, a1, a3, a4, a5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_8889);
    }

    v16 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = a2;
      _os_log_error_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, "cannot open file %s", &__p, 0xCu);
    }
  }

  *buf = *MEMORY[0x1E69E54C8];
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x193ADEDD0](v22);
  std::istream::~istream();
  MEMORY[0x193ADF120](v24);
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (SHIBYTE(v18.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__pn_.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_18F650998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a25);
  MEMORY[0x193ADF120](&a72);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t DSPGraph::Interpreter::parseString(DSPGraph *a1, uint64_t a2)
{
  DSPGraph::skipspace(a1, a2);
  if ((DSPGraph::Interpreter::parseName(a1, a2) & 1) == 0)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    v4 = *a1;
    if (**a1 != 34)
    {
      return 0;
    }

    for (i = *a1; ; v4 = i)
    {
      v7 = *++i;
      v6 = v7;
      if (v7 == 34)
      {
        break;
      }

      if (v6 == 10 || v6 == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v11, "parseString");
        std::string::basic_string[abi:ne200100]<0>(&v10, "unterminated string");
        DSPGraph::ThrowException(1886548769, &v12, 427, &v11, &v10);
      }

      std::string::push_back(a2, v6);
    }

    *a1 = v4 + 2;
  }

  return 1;
}

void sub_18F650B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v11 = this;
    if ((v8 & 0x80) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, __src, v6);
    v12[v6] = 0;
    v13 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    }
  }

  else
  {
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v18 = v6;
    memcpy(__dst, __src, v6);
    *(__dst + v6) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __dst[1];
    }

    std::string::append(this, v14, v15);
    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return this;
}

void sub_18F650D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x193ADEDC0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_18F650E9C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x193ADF120](v1);
  _Unwind_Resume(a1);
}

void std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(std::string *this, void *a2, void *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  while (!a2)
  {
    v6 = 1;
    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (a3[3] == a3[4])
    {
      if ((*(*a3 + 72))(a3) == -1)
      {
        goto LABEL_17;
      }

      if (!v6)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }

LABEL_19:
    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(this, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  if (a2[3] != a2[4])
  {
    v6 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v7 = (*(*a2 + 72))(a2);
  v6 = v7 == -1;
  if (v7 == -1)
  {
    a2 = 0;
  }

  if (a3)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (!v6)
  {
    a3 = 0;
    goto LABEL_19;
  }
}

void sub_18F65104C(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

_BYTE *DSPGraph::checkASCIIEncoding(_BYTE *this, const char *a2)
{
  LOBYTE(v2) = *this;
  if (*this)
  {
    v3 = 0;
    while (1)
    {
      v4 = v2;
      if ((v2 & 0x80) != 0)
      {
        break;
      }

      v5 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60);
      if ((v5 & 0x800) != 0)
      {
        if (v2 == 127)
        {
          LOBYTE(v2) = 127;
LABEL_14:
          v6 = v3;
          v7 = v2;
LABEL_15:
          std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v9, "checkASCIIEncoding");
          caulk::make_string("failed to parse unsupported ASCII character %u at offset %u", &v8, v7, v6);
          DSPGraph::ThrowException(1886548769, &v10, 59, &v9, &v8);
        }
      }

      else if (v2 == 127 || (v5 & 0x4000) == 0)
      {
        goto LABEL_14;
      }

      v2 = this[++v3];
      if (!v2)
      {
        return this;
      }
    }

    v6 = v3;
    v7 = v2;
    if (!__maskrune(v2, 0x800uLL))
    {
      __maskrune(v4, 0x4000uLL);
    }

    goto LABEL_15;
  }

  return this;
}

void sub_18F651188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 17) < 0)
  {
    operator delete(*(v25 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Graph::Graph(DSPGraph::Graph *this)
{
  *this = &unk_1F033EA38;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 16) = 850045863;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 62) = 1065353216;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 44) = 0;
  *(this + 90) = 1065353216;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 100) = 1065353216;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 449) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 472) = 0u;
  *(this + 138) = 1065353216;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 1065353216;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 158) = 1065353216;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 168) = 1065353216;
  *(this + 91) = 0;
  *(this + 680) = 0u;
  *(this + 95) = 0;
  *(this + 96) = DSPGraph::Graph::generateSerialNumber(this);
  *(this + 101) = 0;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 204) = 1065353216;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 214) = 1065353216;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 224) = 1065353216;
  *(this + 113) = 0;
  *(this + 57) = 0u;
  *(this + 116) = 0x7F6E6F726DLL;
  *(this + 936) = 0;
  *(this + 235) = 1667327590;
  *(this + 118) = &unk_1F033EA98;
  *(this + 952) = 0u;
  *(this + 968) = 0u;
  *(this + 246) = 1065353216;
  *(this + 62) = 0u;
  *(this + 63) = 0u;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 135) = 0;
  *(this + 272) = 1065353216;
  operator new();
}

void sub_18F65148C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = v17;
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>>>::~__hash_table(v14 + 1056);
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](v14 + 1024);
  std::unique_ptr<DSPGraph::Graph::profiler_t>::reset[abi:ne200100]((v14 + 1016), 0);
  std::vector<DSPGraph::Graph::GraphBridge>::__destroy_vector::operator()[abi:ne200100](&a14);
  *(v14 + 944) = v16;
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(v18);
  a14 = a9;
  std::vector<std::unique_ptr<DSPGraph::Subset>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(v14 + 784);
  std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Graph>>::reset[abi:ne200100](v19, 0);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(v14 + 640);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(v20);
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>>>::~__hash_table(v14 + 560);
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>>>::~__hash_table(v14 + 520);
  v24 = *(v14 + 496);
  if (v24)
  {
    *(v14 + 504) = v24;
    operator delete(v24);
  }

  v25 = *v15;
  if (*v15)
  {
    *(v14 + 480) = v25;
    operator delete(v25);
  }

  if (*(v14 + 455) < 0)
  {
    operator delete(*(v14 + 432));
  }

  if (*(v14 + 431) < 0)
  {
    operator delete(*v21);
  }

  v26 = *(v14 + 304);
  if (v26)
  {
    *(v14 + 312) = v26;
    operator delete(v26);
  }

  v27 = *(v14 + 280);
  if (v27)
  {
    *(v14 + 288) = v27;
    operator delete(v27);
  }

  v28 = *(v14 + 256);
  if (v28)
  {
    *(v14 + 264) = v28;
    operator delete(v28);
  }

  std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::~__hash_table(v14 + 216);
  a14 = v14 + 192;
  std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::mutex::~mutex(a10);
  std::__hash_table<std::unique_ptr<DSPGraph::Box>,std::hash<std::unique_ptr<DSPGraph::Box>>,std::equal_to<std::unique_ptr<DSPGraph::Box>>,std::allocator<std::unique_ptr<DSPGraph::Box>>>::~__hash_table(a13);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::lf_read_synchronized_write(caulk::concurrent::details::lf_read_sync_write_impl *a1)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::lf_read_sync_write_impl(a1);
  *(result + 8) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

void DSPGraph::Preprocessor::preprocess(std::string *a1, DSPGraph::Preprocessor *a2, std::string::value_type *a3, int a4)
{
  v160 = *MEMORY[0x1E69E9840];
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v153[0] = a2;
  v153[1] = &v154;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  if (a3[23] >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  if (!v4)
  {
    goto LABEL_534;
  }

  do
  {
    v9 = a3[23];
    if ((v9 & 0x80u) == 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a3 + 1);
    }

    if (v4 >= &v10[v9])
    {
      break;
    }

    v152 = v4 + 1;
    v11 = *v4;
    if (v11 <= 0x5A)
    {
      if (v11 == 59)
      {
        v14 = v4 + 2;
        while (1)
        {
          v11 = *(v14 - 1);
          if (!*(v14 - 1))
          {
            break;
          }

          v152 = v14++;
          if (v11 == 10)
          {
            goto LABEL_64;
          }
        }

        LOBYTE(v11) = 10;
LABEL_64:
        std::string::push_back(a1, v11);
        goto LABEL_444;
      }

      if (!*v4)
      {
        break;
      }

LABEL_53:
      if (v11 == 123 && a4)
      {
        memset(&v157, 0, sizeof(v157));
        DSPGraph::Preprocessor::parseToEnd(&v152, 123, 125, &v157);
        std::string::push_back(a1, 123);
        if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v157;
        }

        else
        {
          v20 = v157.__r_.__value_.__r.__words[0];
        }

        if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v157.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v157.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, v20, size);
        std::string::push_back(a1, 125);
        if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
        {
          v22 = v157.__r_.__value_.__r.__words[0];
          goto LABEL_443;
        }

        goto LABEL_444;
      }

      goto LABEL_64;
    }

    if (v11 != 91)
    {
      if (v11 == 92)
      {
        v12 = v4 + 2;
        v152 = v4 + 2;
        v13 = v4[1];
        if (v13 <= 0x6D)
        {
          if (v4[1] > 0x61u)
          {
            if (v13 == 98)
            {
              LOBYTE(v13) = 8;
            }

            else if (v13 == 102)
            {
              LOBYTE(v13) = 12;
            }
          }

          else
          {
            if (!v4[1])
            {
              goto LABEL_445;
            }

            if (v13 == 97)
            {
              LOBYTE(v13) = 7;
            }
          }
        }

        else if (v4[1] <= 0x73u)
        {
          if (v13 == 110)
          {
            LOBYTE(v13) = 10;
          }

          else if (v13 == 114)
          {
            LOBYTE(v13) = 13;
          }
        }

        else
        {
          switch(v13)
          {
            case 'x':
              v152 = v4 + 3;
              v29 = v4[2];
              if (v29 < 0 || (v30 = *(MEMORY[0x1E69E9830] + 4 * v29 + 60), (v30 & 0x10000) == 0))
              {
                std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&__p, "preprocessor error: expected hex digit");
                DSPGraph::ThrowException(1886548769, &v157, 436, &v142, &__p);
              }

              if ((v30 & 0x9000) != 0)
              {
                v31 = 9;
              }

              else
              {
                v31 = 0;
              }

              v152 = v4 + 4;
              v32 = v4[3];
              if (v32)
              {
                if ((v32 & 0x80000000) != 0 || (v33 = *(MEMORY[0x1E69E9830] + 4 * v32 + 60), (v33 & 0x10000) == 0))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
                  std::string::basic_string[abi:ne200100]<0>(&__p, "preprocessor error: expected hex digit");
                  DSPGraph::ThrowException(1886548769, &v157, 451, &v142, &__p);
                }

                v34 = v29 + v31;
                if ((v33 & 0x1000) != 0)
                {
                  v35 = -87;
                }

                else
                {
                  v35 = -48;
                }

                if ((v33 & 0x8000) != 0)
                {
                  v35 = -55;
                }

                std::string::push_back(a1, (v32 + v35) | (16 * v34));
                goto LABEL_444;
              }

              goto LABEL_534;
            case 'v':
              LOBYTE(v13) = 11;
              break;
            case 't':
              LOBYTE(v13) = 9;
              break;
          }
        }

        std::string::push_back(a1, v13);
        goto LABEL_445;
      }

      goto LABEL_53;
    }

    memset(&__p, 0, sizeof(__p));
    DSPGraph::Preprocessor::parseToEnd(&v152, 91, 93, &__p);
    DSPGraph::Preprocessor::preprocess(&v157, a2, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v157;
    p_p = &__p;
    if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = v157.__r_.__value_.__r.__words[0];
    }

    v149 = 0;
    v150 = p_p;
    v148[0] = 0;
    v148[1] = 0;
    if (!DSPGraph::Preprocessor::parseToken(&v150, v148))
    {
      std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
      std::string::basic_string[abi:ne200100]<0>(&v147, "preprocessor error: expected macro name");
      DSPGraph::ThrowException(1886548769, &v157, 497, &v142, &v147);
    }

    if ((SHIBYTE(v149) & 0x80000000) == 0)
    {
      if (HIBYTE(v149) <= 4u)
      {
        if (HIBYTE(v149) != 1)
        {
          if (HIBYTE(v149) != 2)
          {
            if (HIBYTE(v149) != 3)
            {
              goto LABEL_355;
            }

            if ((LOWORD(v148[0]) != 25956 || BYTE2(v148[0]) != 102) && (LOWORD(v148[0]) != 25964 || BYTE2(v148[0]) != 116))
            {
              if (LOWORD(v148[0]) != 28257 || BYTE2(v148[0]) != 100)
              {
LABEL_47:
                if (LOWORD(v148[0]) != 28526 || BYTE2(v148[0]) != 116)
                {
LABEL_262:
                  if (HIBYTE(v149) != 1)
                  {
                    if (HIBYTE(v149) != 2)
                    {
                      goto LABEL_355;
                    }

                    goto LABEL_134;
                  }

                  goto LABEL_296;
                }

LABEL_328:
                memset(&v157, 0, sizeof(v157));
                if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v142, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v147, "preprocess");
                  std::string::basic_string[abi:ne200100]<0>(&v146, "preprocessor error: not: expected condition");
                  DSPGraph::ThrowException(1886548769, &v142, 628, &v147, &v146);
                }

                if (v149 >= 0)
                {
                  v96 = v148;
                }

                else
                {
                  v96 = v148[0];
                }

                if (DSPGraph::strToLong(&v157, v96, 630, "preprocess"))
                {
                  v97 = "0";
                }

                else
                {
                  v97 = "1";
                }

                std::string::append(a1, v97, 1uLL);
                goto LABEL_436;
              }

              goto LABEL_311;
            }

            v26 = v148;
LABEL_197:
            v60 = *v26;
            v61 = *(v26 + 2);
            v63 = v60 != 25964 || v61 != 116;
            if (!DSPGraph::Preprocessor::parseToken(&v150, v148))
            {
              std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v147, "preprocessor error: expected name");
              DSPGraph::ThrowException(1886548769, &v157, 506, &v142, &v147);
            }

            if (DSPGraph::Preprocessor::find(a2, v148))
            {
              if (DSPGraph::getLog(void)::onceToken != -1)
              {
                dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_9664);
              }

              v64 = DSPGraph::getLog(void)::gLog;
              if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_INFO))
              {
                if (v149 >= 0)
                {
                  v65 = v148;
                }

                else
                {
                  v65 = v148[0];
                }

                LODWORD(v157.__r_.__value_.__l.__data_) = 136315138;
                *(v157.__r_.__value_.__r.__words + 4) = v65;
                _os_log_impl(&dword_18F5DF000, v64, OS_LOG_TYPE_INFO, "Preprocessor: redefining macro '%s'", &v157, 0xCu);
              }
            }

            memset(&v157, 0, sizeof(v157));
            memset(&v142, 0, sizeof(v142));
            while (DSPGraph::Preprocessor::parseToken(&v150, &v142))
            {
              v66 = v157.__r_.__value_.__l.__size_;
              if (v157.__r_.__value_.__l.__size_ >= v157.__r_.__value_.__r.__words[2])
              {
                v68 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v157, &v142);
              }

              else
              {
                if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(v157.__r_.__value_.__l.__size_, v142.__r_.__value_.__l.__data_, v142.__r_.__value_.__l.__size_);
                }

                else
                {
                  v67 = *&v142.__r_.__value_.__l.__data_;
                  *(v157.__r_.__value_.__l.__size_ + 16) = *(&v142.__r_.__value_.__l + 2);
                  *v66 = v67;
                }

                v68 = (v66 + 24);
              }

              v157.__r_.__value_.__l.__size_ = v68;
            }

            if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v142.__r_.__value_.__l.__data_);
            }

            memset(&v142, 0, sizeof(v142));
            if (DSPGraph::Preprocessor::parseMacroBody(a2, &v150, &v142))
            {
              v69 = DSPGraph::Preprocessor::def(a2, v148);
              v141[0] = v69;
              if (!v63)
              {
                std::vector<DSPGraph::Macro const*>::push_back[abi:ne200100](&v154, v141);
              }

              v70 = v157.__r_.__value_.__l.__size_;
              v71 = v157.__r_.__value_.__r.__words[0];
              if (v157.__r_.__value_.__r.__words[0] != v157.__r_.__value_.__l.__size_)
              {
                v72 = v69[5];
                do
                {
                  if (v72 >= v69[6])
                  {
                    v72 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>((v69 + 4), v71);
                  }

                  else
                  {
                    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>((v69 + 4), v71);
                    ++v72;
                  }

                  v69[5] = v72;
                  v71 = (v71 + 24);
                }

                while (v71 != v70);
              }
            }

            else
            {
              if (v157.__r_.__value_.__l.__size_ - v157.__r_.__value_.__r.__words[0] != 24)
              {
                std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: expected macro body");
                DSPGraph::ThrowException(1886548769, &v147, 530, &v146, &v145);
              }

              v141[0] = DSPGraph::Preprocessor::def(a2, v148);
              if (!v63)
              {
                std::vector<DSPGraph::Macro const*>::push_back[abi:ne200100](&v154, v141);
              }
            }

            if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v142.__r_.__value_.__l.__data_);
            }

            v142.__r_.__value_.__r.__words[0] = &v157;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v142);
            goto LABEL_439;
          }

          if (LOWORD(v148[0]) != 29295)
          {
LABEL_134:
            if (LOWORD(v148[0]) != 15677)
            {
              goto LABEL_355;
            }

LABEL_306:
            memset(&v157, 0, sizeof(v157));
            memset(&v142, 0, sizeof(v142));
            if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 639, &v146, &v145);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v150, &v142))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 642, &v146, &v145);
            }

            v90 = DSPGraph::strToLong(&v157, "equality", 644, "preprocess");
            if (v90 == DSPGraph::strToLong(&v142, "equality", 645, "preprocess"))
            {
              v91 = "1";
            }

            else
            {
              v91 = "0";
            }

            goto LABEL_476;
          }

LABEL_265:
          v78 = 0;
          memset(&v157, 0, sizeof(v157));
          while (1)
          {
            v79 = v78;
            if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
            {
              break;
            }

            v78 = 1;
            if (!v79)
            {
              if (v149 >= 0)
              {
                v80 = v148;
              }

              else
              {
                v80 = v148[0];
              }

              v78 = DSPGraph::strToLong(&v157, v80, 598, "preprocess") != 0;
            }
          }

          if (v79)
          {
            v81 = "1";
          }

          else
          {
            v81 = "0";
          }

LABEL_321:
          std::string::append(a1, v81, 1uLL);
          if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_439;
          }

LABEL_437:
          v117 = v157.__r_.__value_.__r.__words[0];
          goto LABEL_438;
        }

        v36 = LOBYTE(v148[0]);
        if (LOBYTE(v148[0]) != 42)
        {
          if (LOBYTE(v148[0]) != 43)
          {
LABEL_297:
            if (v36 == 45)
            {
LABEL_298:
              memset(&v157, 0, sizeof(v157));
              memset(&v142, 0, sizeof(v142));
              if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
              {
                std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
                DSPGraph::ThrowException(1886548769, &v147, 654, &v146, &v145);
              }

              v85 = DSPGraph::strToLong(&v157, "subtraction", 656, "preprocess");
              if (DSPGraph::Preprocessor::parseToken(&v150, &v142))
              {
                v86 = DSPGraph::strToLong(&v142, "subtraction", 658, "preprocess");
                v87 = caulk::numeric::exceptional_sub<long>(v85, v86);
                std::to_string(&v147, v87);
                if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v88 = &v147;
                }

                else
                {
                  v88 = v147.__r_.__value_.__r.__words[0];
                }

                if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v89 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v89 = v147.__r_.__value_.__l.__size_;
                }
              }

              else
              {
                v98 = caulk::numeric::exceptional_mul<long>(v85, -1);
                std::to_string(&v147, v98);
                if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v88 = &v147;
                }

                else
                {
                  v88 = v147.__r_.__value_.__r.__words[0];
                }

                if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v89 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v89 = v147.__r_.__value_.__l.__size_;
                }
              }

              goto LABEL_432;
            }

LABEL_345:
            if (v36 != 47)
            {
              goto LABEL_355;
            }

            memset(&v157, 0, sizeof(v157));
            memset(&v142, 0, sizeof(v142));
            if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 666, &v146, &v145);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v150, &v142))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 669, &v146, &v145);
            }

            v99 = DSPGraph::strToLong(&v157, "division", 671, "preprocess");
            v100 = DSPGraph::strToLong(&v142, "division", 672, "preprocess");
            if (!v100)
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "division by zero is not allowed");
              DSPGraph::ThrowException(1886548769, &v147, 674, &v146, &v145);
            }

            std::to_string(&v147, v99 / v100);
            if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v88 = &v147;
            }

            else
            {
              v88 = v147.__r_.__value_.__r.__words[0];
            }

            if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v89 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v89 = v147.__r_.__value_.__l.__size_;
            }

LABEL_432:
            std::string::append(a1, v88, v89);
            if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v147.__r_.__value_.__l.__data_);
            }

            goto LABEL_434;
          }

          goto LABEL_192;
        }

LABEL_233:
        memset(&v157, 0, sizeof(v157));
        v73 = 1;
        while (DSPGraph::Preprocessor::parseToken(&v150, &v157))
        {
          v74 = DSPGraph::strToLong(&v157, "multiplication", 587, "preprocess");
          v73 = caulk::numeric::exceptional_mul<long>(v73, v74);
        }

        std::to_string(&v142, v73);
        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = &v142;
        }

        else
        {
          v75 = v142.__r_.__value_.__r.__words[0];
        }

        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v76 = v142.__r_.__value_.__l.__size_;
        }

        goto LABEL_469;
      }

      if (HIBYTE(v149) != 5)
      {
        if (HIBYTE(v149) != 7)
        {
          if (HIBYTE(v149) != 10)
          {
            goto LABEL_355;
          }

          if (v148[0] != 0x746E756F4374656CLL || LOWORD(v148[1]) != 29285)
          {
            goto LABEL_355;
          }

LABEL_186:
          if (DSPGraph::Preprocessor::parseToken(&v150, v148))
          {
            memset(&v157, 0, sizeof(v157));
            memset(&v142, 0, sizeof(v142));
            if (DSPGraph::Preprocessor::parseToken(&v150, &v157))
            {
              DSPGraph::strToLong(&v157, "counter start value", 554, "preprocess");
              if (DSPGraph::Preprocessor::parseToken(&v150, &v142))
              {
                DSPGraph::strToLong(&v142, "counter step", 556, "preprocess");
              }
            }

            operator new();
          }

          std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
          std::string::basic_string[abi:ne200100]<0>(&v147, "preprocessor error: expected name");
          DSPGraph::ThrowException(1886548769, &v157, 549, &v142, &v147);
        }

        if (LODWORD(v148[0]) == 1853189987 && *(v148 + 3) == 1919251566)
        {
          goto LABEL_186;
        }

        if (LODWORD(v148[0]) != 1768318308 || *(v148 + 3) != 1684369001)
        {
LABEL_355:
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, "!="))
          {
            memset(&v157, 0, sizeof(v157));
            memset(&v142, 0, sizeof(v142));
            if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 680, &v146, &v145);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v150, &v142))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 683, &v146, &v145);
            }

            v101 = DSPGraph::strToLong(&v157, "inequality", 685, "preprocess");
            if (v101 == DSPGraph::strToLong(&v142, "inequality", 686, "preprocess"))
            {
              v91 = "0";
            }

            else
            {
              v91 = "1";
            }

LABEL_476:
            std::string::append(a1, v91, 1uLL);
LABEL_434:
            if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v142.__r_.__value_.__l.__data_);
            }

            goto LABEL_436;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, "<"))
          {
            memset(&v157, 0, sizeof(v157));
            memset(&v142, 0, sizeof(v142));
            if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 695, &v146, &v145);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v150, &v142))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 698, &v146, &v145);
            }

            v102 = DSPGraph::strToLong(&v157, "less than", 700, "preprocess");
            if (v102 >= DSPGraph::strToLong(&v142, "less than", 701, "preprocess"))
            {
              v91 = "0";
            }

            else
            {
              v91 = "1";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, "<="))
          {
            memset(&v157, 0, sizeof(v157));
            memset(&v142, 0, sizeof(v142));
            if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 710, &v146, &v145);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v150, &v142))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 713, &v146, &v145);
            }

            v103 = DSPGraph::strToLong(&v157, "less than or equal", 715, "preprocess");
            if (v103 <= DSPGraph::strToLong(&v142, "less than or equal", 716, "preprocess"))
            {
              v91 = "1";
            }

            else
            {
              v91 = "0";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, ">"))
          {
            memset(&v157, 0, sizeof(v157));
            memset(&v142, 0, sizeof(v142));
            if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 725, &v146, &v145);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v150, &v142))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 728, &v146, &v145);
            }

            v104 = DSPGraph::strToLong(&v157, "greater than", 730, "preprocess");
            if (v104 <= DSPGraph::strToLong(&v142, "greater than", 731, "preprocess"))
            {
              v91 = "0";
            }

            else
            {
              v91 = "1";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, ">="))
          {
            memset(&v157, 0, sizeof(v157));
            memset(&v142, 0, sizeof(v142));
            if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 740, &v146, &v145);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v150, &v142))
            {
              std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v147, 743, &v146, &v145);
            }

            v105 = DSPGraph::strToLong(&v157, "greater than or equal", 745, "preprocess");
            if (v105 >= DSPGraph::strToLong(&v142, "greater than or equal", 746, "preprocess"))
            {
              v91 = "1";
            }

            else
            {
              v91 = "0";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, "if"))
          {
            memset(&v157, 0, sizeof(v157));
            if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
            {
              std::string::basic_string[abi:ne200100]<0>(&v142, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v147, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocessor error: if: expected condition");
              DSPGraph::ThrowException(1886548769, &v142, 755, &v147, &v146);
            }

            if (v149 >= 0)
            {
              v106 = v148;
            }

            else
            {
              v106 = v148[0];
            }

            v107 = DSPGraph::strToLong(&v157, v106, 757, "preprocess");
            memset(&v142, 0, sizeof(v142));
            if (v107)
            {
              if (!DSPGraph::Preprocessor::parseMacroBody(a2, &v150, &v142))
              {
                std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: ifdef expected thenClause");
                DSPGraph::ThrowException(1886548769, &v147, 762, &v146, &v145);
              }

              DSPGraph::Preprocessor::skipMacroBody(&v150, v109);
              DSPGraph::Preprocessor::preprocess(&v147, a2, &v142, 1);
              if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v88 = &v147;
              }

              else
              {
                v88 = v147.__r_.__value_.__r.__words[0];
              }

              if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v89 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v89 = v147.__r_.__value_.__l.__size_;
              }
            }

            else
            {
              if ((DSPGraph::Preprocessor::skipMacroBody(&v150, v108) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: ifdef expected thenClause");
                DSPGraph::ThrowException(1886548769, &v147, 768, &v146, &v145);
              }

              if (!DSPGraph::Preprocessor::parseMacroBody(a2, &v150, &v142))
              {
                goto LABEL_434;
              }

              DSPGraph::Preprocessor::preprocess(&v147, a2, &v142, 1);
              if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v88 = &v147;
              }

              else
              {
                v88 = v147.__r_.__value_.__r.__words[0];
              }

              if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v89 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v89 = v147.__r_.__value_.__l.__size_;
              }
            }

            goto LABEL_432;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, "ifdef"))
          {
            if (!DSPGraph::Preprocessor::parseToken(&v150, v148))
            {
              std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v147, "preprocessor error: expected name");
              DSPGraph::ThrowException(1886548769, &v157, 776, &v142, &v147);
            }

            memset(&v157, 0, sizeof(v157));
            if (DSPGraph::Preprocessor::find(a2, v148))
            {
              if (!DSPGraph::Preprocessor::parseMacroBody(a2, &v150, &v157))
              {
                std::string::basic_string[abi:ne200100]<0>(&v142, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v147, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v146, "preprocessor error: ifdef expected thenClause");
                DSPGraph::ThrowException(1886548769, &v142, 782, &v147, &v146);
              }

              DSPGraph::Preprocessor::skipMacroBody(&v150, v111);
              DSPGraph::Preprocessor::preprocess(&v142, a2, &v157, 1);
              if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v75 = &v142;
              }

              else
              {
                v75 = v142.__r_.__value_.__r.__words[0];
              }

              if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v76 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v76 = v142.__r_.__value_.__l.__size_;
              }

              goto LABEL_469;
            }

            if ((DSPGraph::Preprocessor::skipMacroBody(&v150, v110) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&v142, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v147, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocessor error: ifdef expected thenClause");
              DSPGraph::ThrowException(1886548769, &v142, 788, &v147, &v146);
            }

            if (DSPGraph::Preprocessor::parseMacroBody(a2, &v150, &v157))
            {
              DSPGraph::Preprocessor::preprocess(&v142, a2, &v157, 1);
              if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v75 = &v142;
              }

              else
              {
                v75 = v142.__r_.__value_.__r.__words[0];
              }

              if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v76 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v76 = v142.__r_.__value_.__l.__size_;
              }

              goto LABEL_469;
            }

LABEL_436:
            if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_439;
            }

            goto LABEL_437;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, "ifset"))
          {
            if (!DSPGraph::Preprocessor::parseToken(&v150, v148))
            {
              std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v147, "preprocessor error: expected name");
              DSPGraph::ThrowException(1886548769, &v157, 796, &v142, &v147);
            }

            memset(&v157, 0, sizeof(v157));
            v112 = DSPGraph::Preprocessor::find(a2, v148);
            if (v112)
            {
              memset(&v147, 0, sizeof(v147));
              (*(*v112 + 16))(&v142);
              if (v149 >= 0)
              {
                v114 = v148;
              }

              else
              {
                v114 = v148[0];
              }

              v115 = DSPGraph::strToLong(&v142, v114, 800, "preprocess");
              if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v142.__r_.__value_.__l.__data_);
              }

              v146.__pn_.__r_.__value_.__r.__words[0] = &v147;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v146);
              if (v115 == 1)
              {
                if (!DSPGraph::Preprocessor::parseMacroBody(a2, &v150, &v157))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v142, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v147, "preprocess");
                  std::string::basic_string[abi:ne200100]<0>(&v146, "preprocessor error: ifdef expected thenClause");
                  DSPGraph::ThrowException(1886548769, &v142, 802, &v147, &v146);
                }

                DSPGraph::Preprocessor::skipMacroBody(&v150, v116);
                DSPGraph::Preprocessor::preprocess(&v142, a2, &v157, 1);
                if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v75 = &v142;
                }

                else
                {
                  v75 = v142.__r_.__value_.__r.__words[0];
                }

                if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v76 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v76 = v142.__r_.__value_.__l.__size_;
                }

                goto LABEL_469;
              }
            }

            if ((DSPGraph::Preprocessor::skipMacroBody(&v150, v113) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&v142, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v147, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v146, "preprocessor error: ifdef expected thenClause");
              DSPGraph::ThrowException(1886548769, &v142, 808, &v147, &v146);
            }

            if (DSPGraph::Preprocessor::parseMacroBody(a2, &v150, &v157))
            {
              DSPGraph::Preprocessor::preprocess(&v142, a2, &v157, 1);
              if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v75 = &v142;
              }

              else
              {
                v75 = v142.__r_.__value_.__r.__words[0];
              }

              if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v76 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v76 = v142.__r_.__value_.__l.__size_;
              }

              goto LABEL_469;
            }

            goto LABEL_436;
          }

          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, "include"))
          {
            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, "osFeatureEnabled"))
            {
              memset(&v157, 0, sizeof(v157));
              if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
              {
                std::string::basic_string[abi:ne200100]<0>(&v142, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v147, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v146, "preprocessor error: expected feature flag domain");
                DSPGraph::ThrowException(1886548769, &v142, 868, &v147, &v146);
              }

              memset(&v142, 0, sizeof(v142));
              if (!DSPGraph::Preprocessor::parseToken(&v150, &v142))
              {
                std::string::basic_string[abi:ne200100]<0>(&v147, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v145, "preprocessor error: expected feature flag name");
                DSPGraph::ThrowException(1886548769, &v147, 873, &v146, &v145);
              }

              if (_os_feature_enabled_impl())
              {
                v91 = "1";
              }

              else
              {
                v91 = "0";
              }

              goto LABEL_476;
            }

            v120 = DSPGraph::Preprocessor::find(a2, v148);
            if (!v120)
            {
              std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              v137 = v148;
              if (v149 < 0)
              {
                v137 = v148[0];
              }

              DSPGraph::strprintf("preprocessor error: macro %s not found.", v136, v137);
            }

            v121 = v120;
            memset(&v157, 0, sizeof(v157));
            memset(&v142, 0, sizeof(v142));
            while (DSPGraph::Preprocessor::parseActualArg(a2, &v150, &v157))
            {
              std::vector<std::string>::emplace_back<std::string const&>(&v142, &v157);
            }

            (*(*v121 + 16))(&v147, v121, a2, &v142);
            if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v122 = &v147;
            }

            else
            {
              v122 = v147.__r_.__value_.__r.__words[0];
            }

            if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v123 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v123 = v147.__r_.__value_.__l.__size_;
            }

            std::string::append(a1, v122, v123);
            if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v147.__r_.__value_.__l.__data_);
            }

            v147.__r_.__value_.__r.__words[0] = &v142;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v147);
            goto LABEL_436;
          }

          memset(&v147, 0, sizeof(v147));
          if ((DSPGraph::Preprocessor::parseString(&v150, &v147) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
            std::string::basic_string[abi:ne200100]<0>(&v146, "preprocessor error: expected filename");
            DSPGraph::ThrowException(1886548769, &v157, 817, &v142, &v146);
          }

          v118 = SHIBYTE(v147.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v118 = v147.__r_.__value_.__l.__size_;
            if (v147.__r_.__value_.__l.__size_ >= 3)
            {
              v119 = v147.__r_.__value_.__r.__words[0];
              if (*v147.__r_.__value_.__l.__data_ == 34)
              {
LABEL_492:
                if (v119->__r_.__value_.__s.__data_[v118 - 1] == 34)
                {
                  std::string::erase(&v147, 0, 1uLL);
                  if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                  {
                    v125 = v147.__r_.__value_.__r.__words[0];
                    v124 = --v147.__r_.__value_.__l.__size_;
                  }

                  else
                  {
                    v124 = SHIBYTE(v147.__r_.__value_.__r.__words[2]) - 1;
                    *(&v147.__r_.__value_.__s + 23) = v124 & 0x7F;
                    v125 = &v147;
                  }

                  v125->__r_.__value_.__s.__data_[v124] = 0;
                }
              }

LABEL_497:
              v144.__val_ = 0;
              v144.__cat_ = std::system_category();
              v142.__r_.__value_.__s.__data_[0] = 0;
              v143 = 0;
              std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v146.__pn_, &v147);
              if (std::__fs::filesystem::path::__root_directory(&v146).__size_)
              {
                if (std::__fs::filesystem::is_regular_file[abi:ne200100](&v146, &v144) && !v144.__val_)
                {
                  std::ifstream::basic_ifstream(&v157, &v147);
                  if (!v159)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&v145, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                    std::string::basic_string[abi:ne200100]<0>(v141, "preprocess");
                    v139 = &v147;
                    if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v139 = v147.__r_.__value_.__r.__words[0];
                    }

                    DSPGraph::strprintf("preprocessor error: cannot open include file '%s'", v138, v139);
                  }

                  v145.__r_.__value_.__r.__words[0] = *&v158[*(v157.__r_.__value_.__r.__words[0] - 24)];
                  v141[0] = 0;
                  std::optional<std::string>::emplace[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,void>(&v142, &v145, v141);
                  std::ifstream::~ifstream(&v157);
                }
              }

              else
              {
                v129 = *(a2 + 6);
                v130 = *(a2 + 7);
                while (v129 != v130)
                {
                  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v157, v129);
                  std::__fs::filesystem::operator/[abi:ne200100](&v145, &v157, &v146);
                  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v157.__r_.__value_.__l.__data_);
                  }

                  if (std::__fs::filesystem::is_regular_file[abi:ne200100](&v145, &v144) && !v144.__val_)
                  {
                    std::ifstream::basic_ifstream(&v157);
                    if (!v159)
                    {
                      std::string::basic_string[abi:ne200100]<0>(v141, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                      std::string::basic_string[abi:ne200100]<0>(v140, "preprocess");
                      v133 = &v147;
                      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v133 = v147.__r_.__value_.__r.__words[0];
                      }

                      DSPGraph::strprintf("preprocessor error: cannot open include file '%s'", v132, v133);
                    }

                    v141[0] = *&v158[*(v157.__r_.__value_.__r.__words[0] - 24)];
                    v140[0] = 0;
                    std::optional<std::string>::emplace[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,void>(&v142, v141, v140);
                    std::ifstream::~ifstream(&v157);
                  }

                  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v145.__r_.__value_.__l.__data_);
                  }

                  ++v129;
                }
              }

              if (SHIBYTE(v146.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v146.__pn_.__r_.__value_.__l.__data_);
              }

              if ((v143 & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v146, "preprocess");
                v135 = &v147;
                if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v135 = v147.__r_.__value_.__r.__words[0];
                }

                DSPGraph::strprintf("preprocessor error: cannot find include file '%s'", v134, v135);
              }

              if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v126 = &v142;
              }

              else
              {
                v126 = v142.__r_.__value_.__r.__words[0];
              }

              std::string::basic_string[abi:ne200100]<0>(&v146, v126);
              DSPGraph::Preprocessor::preprocess(&v157, a2, &v146, 1);
              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v127 = &v157;
              }

              else
              {
                v127 = v157.__r_.__value_.__r.__words[0];
              }

              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v128 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v128 = v157.__r_.__value_.__l.__size_;
              }

              std::string::append(a1, v127, v128);
              if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v157.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v146.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v146.__pn_.__r_.__value_.__l.__data_);
              }

              if (v143 == 1 && SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v142.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_439;
              }

              v117 = v147.__r_.__value_.__r.__words[0];
LABEL_438:
              operator delete(v117);
              goto LABEL_439;
            }
          }

          else if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) > 2)
          {
            if (v147.__r_.__value_.__s.__data_[0] == 34)
            {
              v119 = &v147;
              goto LABEL_492;
            }

            goto LABEL_497;
          }

          std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
          std::string::basic_string[abi:ne200100]<0>(&v146, "preprocessor error: empty filename");
          DSPGraph::ThrowException(1886548769, &v157, 821, &v142, &v146);
        }

LABEL_181:
        if (!DSPGraph::Preprocessor::parseToken(&v150, v148))
        {
          std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
          std::string::basic_string[abi:ne200100]<0>(&v147, "preprocessor error: expected name");
          DSPGraph::ThrowException(1886548769, &v157, 567, &v142, &v147);
        }

        if (DSPGraph::Preprocessor::find(a2, v148))
        {
          v56 = "1";
        }

        else
        {
          v56 = "0";
        }

        std::string::append(a1, v56, 1uLL);
        goto LABEL_439;
      }

      if (LODWORD(v148[0]) != 1701080693 || BYTE4(v148[0]) != 102)
      {
        goto LABEL_355;
      }

      goto LABEL_151;
    }

    v23 = v148[1];
    if (v148[1] <= 4)
    {
      if (v148[1] == 1)
      {
        v57 = *v148[0];
        if (v57 == 42)
        {
          goto LABEL_233;
        }

        if (v57 == 43)
        {
LABEL_192:
          v58 = 0;
          memset(&v157, 0, sizeof(v157));
          while (DSPGraph::Preprocessor::parseToken(&v150, &v157))
          {
            v59 = DSPGraph::strToLong(&v157, "addition", 579, "preprocess");
            v58 = caulk::numeric::exceptional_add<long>(v58, v59);
          }

          std::to_string(&v142, v58);
          if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v75 = &v142;
          }

          else
          {
            v75 = v142.__r_.__value_.__r.__words[0];
          }

          if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v76 = v142.__r_.__value_.__l.__size_;
          }

LABEL_469:
          std::string::append(a1, v75, v76);
          goto LABEL_434;
        }

        if ((v149 & 0x8000000000000000) == 0)
        {
          goto LABEL_295;
        }
      }

      else
      {
        if (v148[1] != 3)
        {
LABEL_259:
          if (v23 == 2)
          {
            if (*v148[0] == 29295)
            {
              goto LABEL_265;
            }

            if ((v149 & 0x8000000000000000) == 0)
            {
              goto LABEL_262;
            }

            v23 = v148[1];
          }

          if (v23 == 3)
          {
            if (*v148[0] == 28257 && *(v148[0] + 2) == 100)
            {
LABEL_311:
              memset(&v157, 0, sizeof(v157));
              v92 = 1;
              while (1)
              {
                v93 = v92;
                if (!DSPGraph::Preprocessor::parseToken(&v150, &v157))
                {
                  break;
                }

                v92 = 0;
                if (v93)
                {
                  if (v149 >= 0)
                  {
                    v94 = v148;
                  }

                  else
                  {
                    v94 = v148[0];
                  }

                  v92 = DSPGraph::strToLong(&v157, v94, 615, "preprocess") != 0;
                }
              }

              if (v93)
              {
                v81 = "1";
              }

              else
              {
                v81 = "0";
              }

              goto LABEL_321;
            }

            if ((v149 & 0x8000000000000000) == 0)
            {
              if (HIBYTE(v149) != 1)
              {
                if (HIBYTE(v149) == 2)
                {
                  goto LABEL_134;
                }

                if (HIBYTE(v149) == 3)
                {
                  goto LABEL_47;
                }

                goto LABEL_355;
              }

LABEL_296:
              v36 = LOBYTE(v148[0]);
              goto LABEL_297;
            }
          }

          v83 = v148[1];
          if (v148[1] == 3)
          {
            if (*v148[0] == 28526 && *(v148[0] + 2) == 116)
            {
              goto LABEL_328;
            }

            v83 = v148[1];
          }

          if (v83 != 2)
          {
            goto LABEL_323;
          }

          if (*v148[0] == 15677)
          {
            goto LABEL_306;
          }

          if (v149 < 0)
          {
LABEL_323:
            if (v148[1] != 1)
            {
              goto LABEL_355;
            }

            if (*v148[0] == 45)
            {
              goto LABEL_298;
            }

            if (v149 < 0)
            {
              v95 = v148[0];
            }

            else
            {
              if (HIBYTE(v149) != 1)
              {
                goto LABEL_355;
              }

              v95 = v148;
            }

            v36 = *v95;
            goto LABEL_345;
          }

LABEL_295:
          if (HIBYTE(v149) != 1)
          {
            goto LABEL_355;
          }

          goto LABEL_296;
        }

        v26 = v148[0];
        if (*v148[0] == 25956 && *(v148[0] + 2) == 102)
        {
          goto LABEL_197;
        }

        if (*v148[0] == 25964 && *(v148[0] + 2) == 116)
        {
          goto LABEL_197;
        }
      }

LABEL_258:
      v23 = v148[1];
      goto LABEL_259;
    }

    if (v148[1] != 5)
    {
      if (v148[1] != 7)
      {
        if (v148[1] == 10)
        {
          if (*v148[0] == 0x746E756F4374656CLL && *(v148[0] + 4) == 29285)
          {
            goto LABEL_186;
          }

          goto LABEL_355;
        }

        goto LABEL_259;
      }

      if (*v148[0] == 1853189987 && *(v148[0] + 3) == 1919251566)
      {
        goto LABEL_186;
      }

      if (*v148[0] == 1768318308 && *(v148[0] + 3) == 1684369001)
      {
        goto LABEL_181;
      }

      goto LABEL_258;
    }

    if (*v148[0] != 1701080693 || *(v148[0] + 4) != 102)
    {
      goto LABEL_355;
    }

LABEL_151:
    if (!DSPGraph::Preprocessor::parseToken(&v150, v148))
    {
      std::string::basic_string[abi:ne200100]<0>(&v157, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
      std::string::basic_string[abi:ne200100]<0>(&v147, "preprocessor error: expected name");
      DSPGraph::ThrowException(1886548769, &v157, 544, &v142, &v147);
    }

    v41 = *(a2 + 1);
    if (*(a2 + 2) == v41)
    {
      v77 = 0;
      goto LABEL_256;
    }

    v42 = *(a2 + 4);
    v43 = (v41 + 8 * (v42 >> 9));
    v44 = *v43;
    v45 = *v43 + 8 * (v42 & 0x1FF);
    v46 = *(v41 + (((*(a2 + 5) + v42) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a2 + 5) + v42) & 0x1FF);
    while (1)
    {
      if (v45 == v46)
      {
        v77 = 0;
        goto LABEL_256;
      }

      v47 = *v45;
      v48 = *(*v45 + 31);
      if (v48 >= 0)
      {
        v49 = *(*v45 + 31);
      }

      else
      {
        v49 = *(*v45 + 16);
      }

      v50 = HIBYTE(v149);
      if (v149 < 0)
      {
        v50 = v148[1];
      }

      if (v49 == v50)
      {
        v51 = v48 >= 0 ? v47 + 1 : v47[1];
        v52 = v149 >= 0 ? v148 : v148[0];
        if (!memcmp(v51, v52, v49))
        {
          break;
        }
      }

LABEL_170:
      v45 += 8;
      if (v45 - v44 == 4096)
      {
        v53 = v43[1];
        ++v43;
        v44 = v53;
        v45 = v53;
      }
    }

    if ((*(*v47 + 24))(v47))
    {
      v44 = *v43;
      goto LABEL_170;
    }

    v77 = *v45;
LABEL_256:
    DSPGraph::Preprocessor::undef(a2, v77);
LABEL_439:
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v22 = __p.__r_.__value_.__r.__words[0];
LABEL_443:
      operator delete(v22);
    }

LABEL_444:
    v12 = v152;
LABEL_445:
    v4 = v12;
  }

  while (v12);
LABEL_534:
  DSPGraph::UndefineLocals::~UndefineLocals(v153);
  if (v154)
  {
    v155 = v154;
    operator delete(v154);
  }

  v131 = *MEMORY[0x1E69E9840];
}

void sub_18F65400C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  std::ifstream::~ifstream(&a75);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a36 == 1 && a35 < 0)
  {
    operator delete(a30);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (*(v75 + 23) < 0)
  {
    operator delete(*v75);
  }

  DSPGraph::UndefineLocals::~UndefineLocals(&a72);
  if (a73)
  {
    a74 = a73;
    operator delete(a73);
  }

  _Unwind_Resume(a1);
}

void DSPGraph::UndefineLocals::~UndefineLocals(DSPGraph::UndefineLocals *this)
{
  v2 = *(this + 1);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    DSPGraph::Preprocessor::undef(*this, *v3++);
  }
}

uint64_t std::deque<std::unique_ptr<DSPGraph::Macro>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        if (++v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 256;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 512;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void DSPGraph::Interpreter::parseGraphNameCommand(DSPGraph::Interpreter *this, const char **a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  if ((DSPGraph::Interpreter::parseString(a2, v7) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "parseGraphNameCommand");
    std::string::basic_string[abi:ne200100]<0>(&v4, "expected a string in 'graphName' command");
    DSPGraph::ThrowException(1886548769, &v6, 1171, &v5, &v4);
  }

  if (v8 >= 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = v7[0];
  }

  std::string::__assign_external((*(this + 1) + 408), v3);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_18F654A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void DSPGraph::Graph::addInput(uint64_t a1)
{
  if (*(a1 + 761) != 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v3, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v2, "addInput");
  std::string::basic_string[abi:ne200100]<0>(&v1, "graph is configured");
  DSPGraph::ThrowException(1667655457, &v3, 945, &v2, &v1);
}

void sub_18F654DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Graph::addOutput(uint64_t a1)
{
  if (*(a1 + 761) != 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v3, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v2, "addOutput");
  std::string::basic_string[abi:ne200100]<0>(&v1, "graph is configured");
  DSPGraph::ThrowException(1667655457, &v3, 960, &v2, &v1);
}

void sub_18F654FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_29,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_29>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for NonFiniteProtectionBox. must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1678, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for NonFiniteProtectionBox. must be 1.");
  DSPGraph::ThrowException(1701602593, &v5, 1675, &v4, &v3);
}

void sub_18F6551F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Interpreter::parseName(DSPGraph *a1, uint64_t a2)
{
  DSPGraph::skipspace(a1, a2);
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = *a1;
  v5 = **a1;
  if ((v5 & 0x80000000) != 0)
  {
    v6 = __maskrune(v5, 0x100uLL);
    v4 = *a1;
    LOBYTE(v5) = **a1;
  }

  else
  {
    v6 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x100;
  }

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 95;
  }

  v8 = v7;
  if (v7)
  {
    std::string::push_back(a2, v5);
    v11 = v4[1];
    v10 = v4 + 1;
    v9 = v11;
    if (!v11)
    {
LABEL_23:
      *a1 = v10;
      return v8;
    }

    v12 = MEMORY[0x1E69E9830];
    while (1)
    {
      v13 = v9;
      if (v9 < 0)
      {
        if (!__maskrune(v9, 0x500uLL))
        {
LABEL_21:
          if (!memchr("_-+=|./:!@#$%^&*<>?~", v13, 0x15uLL))
          {
            goto LABEL_23;
          }
        }
      }

      else if ((*(v12 + 4 * v9 + 60) & 0x500) == 0)
      {
        goto LABEL_21;
      }

      std::string::push_back(a2, v13);
      v14 = *++v10;
      v9 = v14;
      if (!v14)
      {
        goto LABEL_23;
      }
    }
  }

  return v8;
}

uint64_t DSPGraph::skipspace(DSPGraph *this, const char **a2)
{
  v3 = *this;
  v4 = MEMORY[0x1E69E9830];
  do
  {
    v5 = *v3;
    if ((v5 & 0x80000000) != 0)
    {
      result = __maskrune(*v3, 0x4000uLL);
    }

    else
    {
      result = *(v4 + 4 * v5 + 60) & 0x4000;
    }

    v7 = v5 == 10 || result == 0;
    v8 = !v7;
    if (v7)
    {
      if (v5 != 59)
      {
        return result;
      }

      v3 = *this;
      do
      {
        v9 = *v3;
        if (!*v3)
        {
          break;
        }

        *this = ++v3;
      }

      while (v9 != 10);
    }

    else
    {
      v3 = (*this + 1);
      *this = v3;
    }
  }

  while ((v8 & 1) != 0);
  return result;
}